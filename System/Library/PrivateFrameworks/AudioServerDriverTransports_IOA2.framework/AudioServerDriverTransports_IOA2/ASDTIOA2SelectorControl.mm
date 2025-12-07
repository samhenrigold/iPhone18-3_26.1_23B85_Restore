@interface ASDTIOA2SelectorControl
- (ASDTIOA2Device)ioa2Device;
- (ASDTIOA2SelectorControl)initWithIOA2Device:(id)device userClientID:(unsigned int)d isSettable:(BOOL)settable forElement:(unsigned int)element inScope:(unsigned int)scope objectClassID:(unsigned int)iD dictionary:(id)dictionary;
- (BOOL)doSetValues:(const unsigned int *)values withCount:(unint64_t)count;
- (BOOL)setSelectedValues:(const unsigned int *)values withCount:(unint64_t)count;
- (BOOL)synchronizeWithRegistryDictionary:(id)dictionary;
- (NSArray)propertySelectorInfo;
- (void)dealloc;
- (void)pushValue:(unsigned int)value;
- (void)pushValues:(id)values;
@end

@implementation ASDTIOA2SelectorControl

- (ASDTIOA2SelectorControl)initWithIOA2Device:(id)device userClientID:(unsigned int)d isSettable:(BOOL)settable forElement:(unsigned int)element inScope:(unsigned int)scope objectClassID:(unsigned int)iD dictionary:(id)dictionary
{
  v9 = *&iD;
  v10 = *&scope;
  v11 = *&element;
  settableCopy = settable;
  deviceCopy = device;
  plugin = [deviceCopy plugin];
  v19.receiver = self;
  v19.super_class = ASDTIOA2SelectorControl;
  v17 = [(ASDSelectorControl *)&v19 initWithIsSettable:settableCopy forElement:v11 inScope:v10 withPlugin:plugin andObjectClassID:v9];

  if (v17)
  {
    objc_storeWeak(&v17->_ioa2Device, deviceCopy);
    v17->_userClientID = d;
  }

  return v17;
}

- (void)dealloc
{
  [(ASDControl *)self asdtRemoveControlProperties];
  v3.receiver = self;
  v3.super_class = ASDTIOA2SelectorControl;
  [(ASDTIOA2SelectorControl *)&v3 dealloc];
}

- (NSArray)propertySelectorInfo
{
  v13[3] = *MEMORY[0x277D85DE8];
  v11[0] = @"selector";
  v11[1] = @"dataType";
  v12[0] = &unk_285357930;
  v12[1] = &unk_285357948;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v13[0] = v2;
  v9[0] = @"selector";
  v9[1] = @"dataType";
  v10[0] = &unk_285357960;
  v10[1] = &unk_285357948;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];
  v13[1] = v3;
  v7[0] = @"selector";
  v7[1] = @"dataType";
  v8[0] = &unk_285357978;
  v8[1] = &unk_285357990;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];
  v13[2] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:3];

  return v5;
}

- (BOOL)synchronizeWithRegistryDictionary:(id)dictionary
{
  v93[1] = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  std::recursive_mutex::lock(&self->_lock);
  selfCopy = self;
  if (!dictionaryCopy)
  {
    v53 = 0;
    v11 = ASDTIOA2LogType(v5, v6);
    v54 = 0;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2416BA000, v11, OS_LOG_TYPE_DEFAULT, "Error: Couldn't synchronize with registry", buf, 2u);
    }

LABEL_70:

    dictionaryCopy = v53;
    self = selfCopy;
    goto LABEL_71;
  }

  v7 = [dictionaryCopy objectForKeyedSubscript:@"property selectors"];
  v8 = [(ASDControl *)self asdtAddControlProperties:v7];

  if (v8)
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:@"multi-selector"];
    v53 = dictionaryCopy;
    self->_multiSelector = [v9 BOOLValue];

    v54 = dictionaryCopy != 0;
    if (self->_multiSelector)
    {
      v10 = [dictionaryCopy objectForKeyedSubscript:@"value"];
    }

    else
    {
      v12 = [dictionaryCopy objectForKeyedSubscript:@"value"];
      v93[0] = v12;
      v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v93 count:1];

      v10 = v13;
    }

    values = [(ASDSelectorControl *)self values];
    v56 = v10;
    v52 = [dictionaryCopy objectForKeyedSubscript:@"selectors"];
    v58 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v52, "count")}];
    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    obj = v52;
    v14 = [obj countByEnumeratingWithState:&v82 objects:v92 count:16];
    if (v14)
    {
      v15 = *v83;
      v57 = *v83;
      do
      {
        v61 = v14;
        for (i = 0; i != v61; ++i)
        {
          if (*v83 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v82 + 1) + 8 * i);
          v18 = [v17 objectForKeyedSubscript:@"value"];
          v19 = [v17 objectForKeyedSubscript:@"name"];
          v20 = [v17 objectForKeyedSubscript:@"kind"];
          unsignedIntValue = [v18 unsignedIntValue];
          if (unsignedIntValue)
          {
            v22 = v19 == 0;
          }

          else
          {
            v22 = 1;
          }

          if (!v22)
          {
            if ([values count])
            {
              v80 = 0uLL;
              v81 = 0uLL;
              v78 = 0uLL;
              v79 = 0uLL;
              v23 = values;
              selected = [v23 countByEnumeratingWithState:&v78 objects:v91 count:16];
              if (selected)
              {
                v25 = *v79;
                while (2)
                {
                  for (j = 0; j != selected; ++j)
                  {
                    if (*v79 != v25)
                    {
                      objc_enumerationMutation(v23);
                    }

                    v27 = *(*(&v78 + 1) + 8 * j);
                    if ([v27 value] == unsignedIntValue)
                    {
                      v15 = v57;
                      selected = [v27 selected];
                      goto LABEL_39;
                    }
                  }

                  selected = [v23 countByEnumeratingWithState:&v78 objects:v91 count:16];
                  if (selected)
                  {
                    continue;
                  }

                  break;
                }

                v15 = v57;
              }
            }

            else
            {
              v76 = 0uLL;
              v77 = 0uLL;
              v74 = 0uLL;
              v75 = 0uLL;
              v23 = v56;
              selected = [v23 countByEnumeratingWithState:&v74 objects:v90 count:16];
              if (selected)
              {
                v28 = *v75;
                while (2)
                {
                  for (k = 0; k != selected; ++k)
                  {
                    if (*v75 != v28)
                    {
                      objc_enumerationMutation(v23);
                    }

                    if ([*(*(&v74 + 1) + 8 * k) unsignedIntValue] == unsignedIntValue)
                    {
                      selected = 1;
                      goto LABEL_39;
                    }
                  }

                  selected = [v23 countByEnumeratingWithState:&v74 objects:v90 count:16];
                  if (selected)
                  {
                    continue;
                  }

                  break;
                }
              }
            }

LABEL_39:

            v30 = [MEMORY[0x277CEFB70] withValue:unsignedIntValue name:v19 andKind:objc_msgSend(v20 selected:{"unsignedIntValue"), selected}];
            [v58 addObject:v30];
          }
        }

        v14 = [obj countByEnumeratingWithState:&v82 objects:v92 count:16];
      }

      while (v14);
    }

    v31 = selfCopy;
    v32 = [v58 count];
    if (v32 == [values count])
    {
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      v33 = v58;
      v34 = [v33 countByEnumeratingWithState:&v70 objects:v89 count:16];
      if (v34)
      {
        v35 = 0;
        v36 = *v71;
        while (2)
        {
          for (m = 0; m != v34; ++m)
          {
            if (*v71 != v36)
            {
              objc_enumerationMutation(v33);
            }

            v38 = *(*(&v70 + 1) + 8 * m);
            if (v35 >= [values count] || (objc_msgSend(values, "objectAtIndexedSubscript:", v35), v39 = objc_claimAutoreleasedReturnValue(), v40 = objc_msgSend(v39, "value"), v41 = v40 == objc_msgSend(v38, "value"), v39, !v41))
            {

              v31 = selfCopy;
              goto LABEL_54;
            }

            ++v35;
          }

          v34 = [v33 countByEnumeratingWithState:&v70 objects:v89 count:16];
          if (v34)
          {
            continue;
          }

          break;
        }
      }

      v42 = selfCopy;
    }

    else
    {
LABEL_54:
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v43 = values;
      v44 = [v43 countByEnumeratingWithState:&v66 objects:v88 count:16];
      if (v44)
      {
        v45 = *v67;
        do
        {
          for (n = 0; n != v44; ++n)
          {
            if (*v67 != v45)
            {
              objc_enumerationMutation(v43);
            }

            [(ASDSelectorControl *)v31 removeValue:*(*(&v66 + 1) + 8 * n)];
          }

          v44 = [v43 countByEnumeratingWithState:&v66 objects:v88 count:16];
        }

        while (v44);
      }

      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v47 = v58;
      v48 = [v47 countByEnumeratingWithState:&v62 objects:v87 count:16];
      if (v48)
      {
        v49 = *v63;
        do
        {
          for (ii = 0; ii != v48; ++ii)
          {
            if (*v63 != v49)
            {
              objc_enumerationMutation(v47);
            }

            [(ASDSelectorControl *)selfCopy addValue:*(*(&v62 + 1) + 8 * ii)];
          }

          v48 = [v47 countByEnumeratingWithState:&v62 objects:v87 count:16];
        }

        while (v48);
      }

      v42 = selfCopy;
      [(ASDControl *)selfCopy asdtSendControlPropertyChangeNotificationAtIndex:1];
    }

    [(ASDTIOA2SelectorControl *)v42 pushValues:v56];

    v11 = v56;
    goto LABEL_70;
  }

  v54 = 0;
LABEL_71:
  std::recursive_mutex::unlock(&self->_lock);

  return v54;
}

- (BOOL)doSetValues:(const unsigned int *)values withCount:(unint64_t)count
{
  v40 = *MEMORY[0x277D85DE8];
  std::recursive_mutex::lock(&self->_lock);
  v27.receiver = self;
  v27.super_class = ASDTIOA2SelectorControl;
  if ([(ASDSelectorControl *)&v27 setSelectedValues:values withCount:count])
  {
    v7 = NSStringFromSelector(sel_selectedValue);
    [(ASDTIOA2SelectorControl *)self willChangeValueForKey:v7];

    [(ASDControl *)self asdtSendControlPropertyChangeNotificationAtIndex:0];
    v8 = NSStringFromSelector(sel_selectedValue);
    [(ASDTIOA2SelectorControl *)self didChangeValueForKey:v8];

    if (self->_multiSelector)
    {
      v11 = ASDTIOA2LogType(v9, v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        WeakRetained = objc_loadWeakRetained(&self->_ioa2Device);
        deviceUID = [WeakRetained deviceUID];
        if ([(ASDTIOA2SelectorControl *)self objectClass]>> 29 && [(ASDTIOA2SelectorControl *)self objectClass]>> 24 <= 0x7E)
        {
          v14 = [(ASDTIOA2SelectorControl *)self objectClass]>> 24;
        }

        else
        {
          v14 = 32;
        }

        if (([(ASDTIOA2SelectorControl *)self objectClass]& 0xE00000) != 0 && ([(ASDTIOA2SelectorControl *)self objectClass]>> 16) <= 0x7Eu)
        {
          v18 = ([(ASDTIOA2SelectorControl *)self objectClass]>> 16);
        }

        else
        {
          v18 = 32;
        }

        if (([(ASDTIOA2SelectorControl *)self objectClass]& 0xE000) != 0 && ([(ASDTIOA2SelectorControl *)self objectClass]>> 8) <= 0x7Eu)
        {
          v20 = ([(ASDTIOA2SelectorControl *)self objectClass]>> 8);
        }

        else
        {
          v20 = 32;
        }

        if (([(ASDTIOA2SelectorControl *)self objectClass]& 0xE0) != 0 && [(ASDTIOA2SelectorControl *)self objectClass]<= 0x7Eu)
        {
          objectClass = [(ASDTIOA2SelectorControl *)self objectClass];
        }

        else
        {
          objectClass = 32;
        }

        values = [(ASDSelectorControl *)self values];
        *buf = 138413570;
        v29 = deviceUID;
        v30 = 1024;
        v31 = v14;
        v32 = 1024;
        v33 = v18;
        v34 = 1024;
        v35 = v20;
        v36 = 1024;
        v37 = objectClass;
        v38 = 2112;
        v39 = values;
        _os_log_impl(&dword_2416BA000, v11, OS_LOG_TYPE_DEFAULT, "%@: Control '%c%c%c%c' changed to: %@", buf, 0x2Eu);
      }
    }

    else
    {
      v11 = ASDTIOA2LogType(v9, v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v15 = objc_loadWeakRetained(&self->_ioa2Device);
        deviceUID2 = [v15 deviceUID];
        if ([(ASDTIOA2SelectorControl *)self objectClass]>> 29 && [(ASDTIOA2SelectorControl *)self objectClass]>> 24 <= 0x7E)
        {
          v17 = [(ASDTIOA2SelectorControl *)self objectClass]>> 24;
        }

        else
        {
          v17 = 32;
        }

        if (([(ASDTIOA2SelectorControl *)self objectClass]& 0xE00000) != 0 && ([(ASDTIOA2SelectorControl *)self objectClass]>> 16) <= 0x7Eu)
        {
          v19 = ([(ASDTIOA2SelectorControl *)self objectClass]>> 16);
        }

        else
        {
          v19 = 32;
        }

        if (([(ASDTIOA2SelectorControl *)self objectClass]& 0xE000) != 0 && ([(ASDTIOA2SelectorControl *)self objectClass]>> 8) <= 0x7Eu)
        {
          v21 = ([(ASDTIOA2SelectorControl *)self objectClass]>> 8);
        }

        else
        {
          v21 = 32;
        }

        if (([(ASDTIOA2SelectorControl *)self objectClass]& 0xE0) != 0 && [(ASDTIOA2SelectorControl *)self objectClass]<= 0x7Eu)
        {
          objectClass2 = [(ASDTIOA2SelectorControl *)self objectClass];
        }

        else
        {
          objectClass2 = 32;
        }

        selectedValue = [(ASDSelectorControl *)self selectedValue];
        *buf = 138413570;
        v29 = deviceUID2;
        v30 = 1024;
        v31 = v17;
        v32 = 1024;
        v33 = v19;
        v34 = 1024;
        v35 = v21;
        v36 = 1024;
        v37 = objectClass2;
        v38 = 1024;
        LODWORD(v39) = selectedValue;
        _os_log_impl(&dword_2416BA000, v11, OS_LOG_TYPE_DEFAULT, "%@: Control '%c%c%c%c' changed to: %u", buf, 0x2Au);
      }
    }
  }

  std::recursive_mutex::unlock(&self->_lock);
  return 1;
}

- (BOOL)setSelectedValues:(const unsigned int *)values withCount:(unint64_t)count
{
  v48 = *MEMORY[0x277D85DE8];
  values = [(ASDSelectorControl *)self values];
  v8 = [values count];

  if (v8 <= 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = v8;
  }

  v33 = v9;
  v10 = std::vector<unsigned int>::vector[abi:ne200100](__p, v9);
  if (self->_multiSelector)
  {
    if (v9 < count)
    {
      v12 = ASDTIOA2LogType(v10, v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        WeakRetained = objc_loadWeakRetained(&self->_ioa2Device);
        deviceUID = [WeakRetained deviceUID];
        if ([(ASDTIOA2SelectorControl *)self objectClass]>> 29 && [(ASDTIOA2SelectorControl *)self objectClass]>> 24 <= 0x7E)
        {
          v22 = [(ASDTIOA2SelectorControl *)self objectClass]>> 24;
        }

        else
        {
          v22 = 32;
        }

        if (([(ASDTIOA2SelectorControl *)self objectClass]& 0xE00000) != 0 && ([(ASDTIOA2SelectorControl *)self objectClass]>> 16) <= 0x7Eu)
        {
          v26 = ([(ASDTIOA2SelectorControl *)self objectClass]>> 16);
        }

        else
        {
          v26 = 32;
        }

        if (([(ASDTIOA2SelectorControl *)self objectClass]& 0xE000) != 0 && ([(ASDTIOA2SelectorControl *)self objectClass]>> 8) <= 0x7Eu)
        {
          v28 = ([(ASDTIOA2SelectorControl *)self objectClass]>> 8);
        }

        else
        {
          v28 = 32;
        }

        if (([(ASDTIOA2SelectorControl *)self objectClass]& 0xE0) != 0 && [(ASDTIOA2SelectorControl *)self objectClass]<= 0x7Eu)
        {
          objectClass = [(ASDTIOA2SelectorControl *)self objectClass];
        }

        else
        {
          objectClass = 32;
        }

        *buf = 138413826;
        v35 = deviceUID;
        v36 = 1024;
        v37 = v22;
        v38 = 1024;
        v39 = v26;
        v40 = 1024;
        v41 = v28;
        v42 = 1024;
        v43 = objectClass;
        v44 = 2048;
        countCopy2 = count;
        v46 = 2048;
        v47 = v9;
        _os_log_error_impl(&dword_2416BA000, v12, OS_LOG_TYPE_ERROR, "%@: selector control '%c%c%c%c': bad number of items: %zu (max %zu)", buf, 0x38u);
      }

      goto LABEL_15;
    }

    v15 = objc_loadWeakRetained(&self->_ioa2Device);
    v16 = [v15 _setControlValues:values withCount:count resultValues:__p[0] count:&v33 forControl:self->_userClientID];

    if (v16)
    {
LABEL_12:
      v17 = [ASDTIOA2SelectorControl doSetValues:"doSetValues:withCount:" withCount:?];
      goto LABEL_16;
    }
  }

  else
  {
    if (count != 1)
    {
      v18 = ASDTIOA2LogType(v10, v11);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v23 = objc_loadWeakRetained(&self->_ioa2Device);
        deviceUID2 = [v23 deviceUID];
        if ([(ASDTIOA2SelectorControl *)self objectClass]>> 29 && [(ASDTIOA2SelectorControl *)self objectClass]>> 24 <= 0x7E)
        {
          v25 = [(ASDTIOA2SelectorControl *)self objectClass]>> 24;
        }

        else
        {
          v25 = 32;
        }

        if (([(ASDTIOA2SelectorControl *)self objectClass]& 0xE00000) != 0 && ([(ASDTIOA2SelectorControl *)self objectClass]>> 16) <= 0x7Eu)
        {
          v27 = ([(ASDTIOA2SelectorControl *)self objectClass]>> 16);
        }

        else
        {
          v27 = 32;
        }

        if (([(ASDTIOA2SelectorControl *)self objectClass]& 0xE000) != 0 && ([(ASDTIOA2SelectorControl *)self objectClass]>> 8) <= 0x7Eu)
        {
          v29 = ([(ASDTIOA2SelectorControl *)self objectClass]>> 8);
        }

        else
        {
          v29 = 32;
        }

        if (([(ASDTIOA2SelectorControl *)self objectClass]& 0xE0) != 0 && [(ASDTIOA2SelectorControl *)self objectClass]<= 0x7Eu)
        {
          objectClass2 = [(ASDTIOA2SelectorControl *)self objectClass];
        }

        else
        {
          objectClass2 = 32;
        }

        *buf = 138413570;
        v35 = deviceUID2;
        v36 = 1024;
        v37 = v25;
        v38 = 1024;
        v39 = v27;
        v40 = 1024;
        v41 = v29;
        v42 = 1024;
        v43 = objectClass2;
        v44 = 2048;
        countCopy2 = count;
        _os_log_error_impl(&dword_2416BA000, v18, OS_LOG_TYPE_ERROR, "%@: selector control '%c%c%c%c': bad number of items: %zu (require 1)", buf, 0x2Eu);
      }

      goto LABEL_15;
    }

    *buf = *values;
    v13 = objc_loadWeakRetained(&self->_ioa2Device);
    v14 = [v13 _setControlValue:buf forControl:self->_userClientID];

    if (v14)
    {
      *__p[0] = *buf;
      goto LABEL_12;
    }
  }

LABEL_15:
  v17 = 0;
LABEL_16:
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v17;
}

- (void)pushValue:(unsigned int)value
{
  v8[1] = *MEMORY[0x277D85DE8];
  if (!value || self->_multiSelector)
  {
    WeakRetained = objc_loadWeakRetained(&self->_ioa2Device);
    v7 = [WeakRetained _controlDictionaryForControl:self->_userClientID];

    v5 = [v7 objectForKeyedSubscript:@"value"];
  }

  else
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:?];
    v8[0] = v4;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  }

  [(ASDTIOA2SelectorControl *)self pushValues:v5];
}

- (void)pushValues:(id)values
{
  v18 = *MEMORY[0x277D85DE8];
  valuesCopy = values;
  std::vector<unsigned int>::vector[abi:ne200100](__p, [valuesCopy count]);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = valuesCopy;
  v6 = 0;
  v7 = [v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v7)
  {
    v8 = *v13;
    do
    {
      v9 = 0;
      v10 = v6;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        unsignedIntValue = [*(*(&v12 + 1) + 8 * v9) unsignedIntValue];
        v6 = v10 + 1;
        *(__p[0] + v10) = unsignedIntValue;
        ++v9;
        ++v10;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v7);
  }

  [(ASDTIOA2SelectorControl *)self doSetValues:__p[0] withCount:v6];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

- (ASDTIOA2Device)ioa2Device
{
  WeakRetained = objc_loadWeakRetained(&self->_ioa2Device);

  return WeakRetained;
}

@end