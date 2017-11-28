import random
import sys

if (sys.argv[1] == '-h'):
    print("arguments: filename, number of elements, period, lifetime")
elif(len(sys.argv) == 5):
    filename = sys.argv[1]
    numberOfElements = int(sys.argv[2])
    period = int(sys.argv[3])
    lifetime = int(sys.argv[4])

    def createElement(create, time, index, submodule="sourceNode", type="inet.examples.wireless.dynamic.DynamicHost", parent="."):
        atTagStart = '<at t="' + str(time) + '">'
        atTagEnd = '</at>'
        if(create == True):
            createTag = '    <create-module type="' + type + '" parent="' + parent + '" submodule="' + submodule + '"/>'
        elif(create == False):
            createTag = '    <delete-module module="' + submodule + '[' + str(index) + ']' + '"/>'
        else:
            print("some kind of error")
            return 0;

        element = atTagStart + '\n' + createTag + '\n' + atTagEnd + '\n'
        return element

    # so create nth element at x time, destroy it at x+y time
    # so we need the number of elements to create, the period of creation, and the lifetime

    def createScenario(numberOfElements, period, lifetime):
        i = 0;
        scenario = "<scenario>\n"
        period = random.expovariate(1.0/period)
        while i < numberOfElements:
            scenario += createElement(True, i * period, i)
            scenario += createElement(False, i * period + lifetime, str(i))
            i += 1
        scenario += '</scenario>'
        return scenario

    with open(filename, 'w') as f:
        f.write(createScenario(numberOfElements, period, lifetime))

    # when the script is run, we need a file, the number of elements, the period, and the lifetime
else:
    print("argument error")
