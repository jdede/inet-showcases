
# coding: utf-8

# In[32]:


import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import pivottablejs as pj
get_ipython().run_line_magic('matplotlib', 'inline')


# In[3]:


manet = pd.read_csv('manet.csv')


# In[42]:


dt = manet[(manet.module=='ManetprotocolsShowcaseMoreNodes.destination.app[0]') | (manet.type=='itervar')]
dt = dt[(dt.type=='scalar') | (dt.type=='itervar')]
dt = dt.assign(qname = dt.attrname.combine_first(dt.module + '.' + dt.name))
dt.value = dt.value.combine_first(dt.attrvalue.astype('float64'))


# In[45]:


dw = dt.pivot('run', columns='qname', values='value')


# In[46]:


dw


# In[47]:


pj.pivot_ui(dw)


# In[48]:


pj.pivot_ui(dw)


# In[68]:


dp = dw.pivot_table(columns='helloInterval', index='routeLifetime', values='ManetprotocolsShowcaseMoreNodes.destination.app[0].rcvdPk:count')
dp


# In[66]:


dp.plot.line()


# In[72]:


from mpl_toolkits.mplot3d import Axes3D
from matplotlib import cm
fig = plt.figure()
ax = Axes3D(fig)
surf = ax.plot_trisurf(dw.helloInterval, dw.routeLifetime, dw['ManetprotocolsShowcaseMoreNodes.destination.app[0].rcvdPk:count'], cmap=cm.jet, linewidth=0.1)

