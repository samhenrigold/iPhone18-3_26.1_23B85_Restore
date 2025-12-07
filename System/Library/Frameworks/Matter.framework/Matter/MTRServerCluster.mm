@interface MTRServerCluster
+ (id)newDescriptorCluster;
- (BOOL)addAttribute:(id)attribute;
- (BOOL)addToEndpoint:(unsigned __int16)endpoint;
- (BOOL)associateWithController:(id)controller;
- (MTRServerCluster)initWithClusterID:(id)d revision:(id)revision;
- (NSArray)acceptedCommands;
- (NSArray)accessGrants;
- (NSArray)attributes;
- (NSArray)generatedCommands;
- (NSArray)matterAccessGrants;
- (Span<const)matterAttributeMetadata;
- (id).cxx_construct;
- (id)description;
- (unsigned)matterAcceptedCommands;
- (unsigned)matterGeneratedCommands;
- (unsigned)parentEndpoint;
- (void)addAccessGrant:(id)grant;
- (void)invalidate;
- (void)registerMatterCluster;
- (void)removeAccessGrant:(id)grant;
- (void)setAcceptedCommands:(id)commands;
- (void)setGeneratedCommands:(id)commands;
- (void)unregisterMatterCluster;
@end

@implementation MTRServerCluster

- (MTRServerCluster)initWithClusterID:(id)d revision:(id)revision
{
  v20 = *MEMORY[0x277D85DE8];
  dCopy = d;
  revisionCopy = revision;
  unsignedLongLongValue = [dCopy unsignedLongLongValue];
  v9 = unsignedLongLongValue;
  if (HIDWORD(unsignedLongLongValue))
  {
    v11 = sub_2393D9044(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v19 = v9;
      _os_log_impl(&dword_238DAE000, v11, OS_LOG_TYPE_ERROR, "MTRServerCluster provided too-large cluster ID: 0x%llx", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1, "MTRServerCluster provided too-large cluster ID: 0x%llx", v9);
    }

    goto LABEL_24;
  }

  if (unsignedLongLongValue > 0xFFF4FFFF)
  {
    goto LABEL_20;
  }

  if (unsignedLongLongValue >= 0x8000)
  {
    if (unsignedLongLongValue >= 0x10000 && (unsignedLongLongValue + 1024) < 0x3FFu)
    {
      goto LABEL_15;
    }

LABEL_20:
    v14 = sub_2393D9044(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v19) = v9;
      _os_log_impl(&dword_238DAE000, v14, OS_LOG_TYPE_ERROR, "MTRServerCluster provided invalid cluster ID: 0x%x", buf, 8u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1, "MTRServerCluster provided invalid cluster ID: 0x%x", v9);
    }

    goto LABEL_24;
  }

  if (unsignedLongLongValue == 29)
  {
    v10 = sub_2393D9044(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_ERROR, "Should be using newDescriptorCluster to initialize an MTRServerCluster for Descriptor", buf, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1, "Should be using newDescriptorCluster to initialize an MTRServerCluster for Descriptor");
    }

    goto LABEL_24;
  }

LABEL_15:
  unsignedLongLongValue2 = [revisionCopy unsignedLongLongValue];
  if ((unsignedLongLongValue2 - 0x10000) > 0xFFFFFFFFFFFF0000)
  {
    v17 = [MEMORY[0x277CBEB98] set];
    self = sub_238DC4C2C(self, dCopy, revisionCopy, v17, MEMORY[0x277CBEBF8]);

    selfCopy = self;
    goto LABEL_25;
  }

  v13 = sub_2393D9044(0);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    v19 = unsignedLongLongValue2;
    _os_log_impl(&dword_238DAE000, v13, OS_LOG_TYPE_ERROR, "MTRServerCluster provided invalid cluster revision: 0x%llx", buf, 0xCu);
  }

  if (sub_2393D5398(1u))
  {
    sub_2393D5320(0, 1, "MTRServerCluster provided invalid cluster revision: 0x%llx", unsignedLongLongValue2);
  }

LABEL_24:
  selfCopy = 0;
LABEL_25:

  return selfCopy;
}

+ (id)newDescriptorCluster
{
  v2 = [MTRServerCluster alloc];
  v3 = [MEMORY[0x277CBEB98] set];
  v4 = sub_238DC4C2C(v2, &unk_284C3E3C0, &unk_284C3E3D8, v3, MEMORY[0x277CBEBF8]);

  return v4;
}

- (void)addAccessGrant:(id)grant
{
  grantCopy = grant;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableSet *)self->_accessGrants addObject:grantCopy];
  sub_238DC4F8C(self);
  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeAccessGrant:(id)grant
{
  grantCopy = grant;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableSet *)self->_accessGrants removeObject:grantCopy];
  sub_238DC4F8C(self);
  os_unfair_lock_unlock(&self->_lock);
}

- (NSArray)matterAccessGrants
{
  os_unfair_lock_lock(&self->_lock);
  allObjects = [(NSSet *)self->_matterAccessGrants allObjects];
  os_unfair_lock_unlock(&self->_lock);

  return allObjects;
}

- (BOOL)addAttribute:(id)attribute
{
  v36 = *MEMORY[0x277D85DE8];
  attributeCopy = attribute;
  os_unfair_lock_lock(&self->_lock);
  WeakRetained = objc_loadWeakRetained(&self->_deviceController);
  if (WeakRetained)
  {
    v6 = sub_2393D9044(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      unsignedLongLongValue = [(NSNumber *)self->_clusterID unsignedLongLongValue];
      *buf = 134217984;
      v33 = unsignedLongLongValue;
      _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_ERROR, "Cannot add attribute on cluster %llx which is already in use", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1, "Cannot add attribute on cluster %llx which is already in use", [(NSNumber *)self->_clusterID unsignedLongLongValue]);
    }
  }

  else
  {
    attributeID = [attributeCopy attributeID];
    unsignedLongLongValue2 = [attributeID unsignedLongLongValue];

    if (unsignedLongLongValue2 - 65528 <= 5 && ((1 << (unsignedLongLongValue2 + 8)) & 0x2B) != 0)
    {
      v10 = sub_2393D9044(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        unsignedLongLongValue3 = [(NSNumber *)self->_clusterID unsignedLongLongValue];
        *buf = 134218240;
        v33 = unsignedLongLongValue2;
        v34 = 2048;
        v35 = unsignedLongLongValue3;
        _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_ERROR, "Cannot add global attribute %llx on cluster %llx", buf, 0x16u);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(0, 1, "Cannot add global attribute %llx on cluster %llx", unsignedLongLongValue2, [(NSNumber *)self->_clusterID unsignedLongLongValue]);
      }
    }

    else
    {
      v14 = [(NSNumber *)self->_clusterID isEqual:&unk_284C3E3C0];
      if (unsignedLongLongValue2 < 4)
      {
        v15 = v14;
      }

      else
      {
        v15 = 0;
      }

      if (v15 == 1)
      {
        v16 = sub_2393D9044(0);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 134217984;
          v33 = unsignedLongLongValue2;
          _os_log_impl(&dword_238DAE000, v16, OS_LOG_TYPE_ERROR, "Cannot add attribute with id %llx on descriptor cluster", buf, 0xCu);
        }

        if (sub_2393D5398(1u))
        {
          sub_2393D5320(0, 1, "Cannot add attribute with id %llx on descriptor cluster", unsignedLongLongValue2);
        }
      }

      else
      {
        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        obj = self->_attributes;
        v17 = [(NSMutableArray *)obj countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v17)
        {
          v18 = *v28;
          while (2)
          {
            for (i = 0; i != v17; ++i)
            {
              if (*v28 != v18)
              {
                objc_enumerationMutation(obj);
              }

              attributeID2 = [*(*(&v27 + 1) + 8 * i) attributeID];
              v21 = [attributeID2 unsignedLongLongValue] == unsignedLongLongValue2;

              if (v21)
              {
                v24 = sub_2393D9044(0);
                if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
                {
                  unsignedLongLongValue4 = [(NSNumber *)self->_clusterID unsignedLongLongValue];
                  *buf = 134218240;
                  v33 = unsignedLongLongValue2;
                  v34 = 2048;
                  v35 = unsignedLongLongValue4;
                  _os_log_impl(&dword_238DAE000, v24, OS_LOG_TYPE_ERROR, "Cannot add second attribute with ID %llx on cluster %llx", buf, 0x16u);
                }

                if (sub_2393D5398(1u))
                {
                  sub_2393D5320(0, 1, "Cannot add second attribute with ID %llx on cluster %llx", unsignedLongLongValue2, [(NSNumber *)self->_clusterID unsignedLongLongValue]);
                }

                goto LABEL_12;
              }
            }

            v17 = [(NSMutableArray *)obj countByEnumeratingWithState:&v27 objects:v31 count:16];
            if (v17)
            {
              continue;
            }

            break;
          }
        }

        parentEndpoint = self->_parentEndpoint;
        unsignedLongLongValue5 = [(NSNumber *)self->_clusterID unsignedLongLongValue];
        *buf = parentEndpoint;
        LODWORD(v33) = unsignedLongLongValue5;
        if ([attributeCopy addToCluster:buf])
        {
          [(NSMutableArray *)self->_attributes addObject:attributeCopy];
          v12 = 1;
          goto LABEL_13;
        }
      }
    }
  }

LABEL_12:
  v12 = 0;
LABEL_13:

  os_unfair_lock_unlock(&self->_lock);
  return v12;
}

- (BOOL)associateWithController:(id)controller
{
  v98 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  os_unfair_lock_lock(&self->_lock);
  WeakRetained = objc_loadWeakRetained(&self->_deviceController);
  if (!WeakRetained)
  {
    v91 = 0u;
    v92 = 0u;
    v89 = 0u;
    v90 = 0u;
    uniqueIdentifier3 = self->_attributes;
    v10 = [(NSMutableArray *)uniqueIdentifier3 countByEnumeratingWithState:&v89 objects:v97 count:16];
    if (v10)
    {
      v11 = *v90;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v90 != v11)
          {
            objc_enumerationMutation(uniqueIdentifier3);
          }

          if (([*(*(&v89 + 1) + 8 * i) associateWithController:controllerCopy] & 1) == 0)
          {
            goto LABEL_6;
          }
        }

        v10 = [(NSMutableArray *)uniqueIdentifier3 countByEnumeratingWithState:&v89 objects:v97 count:16];
      }

      while (v10);
    }

    v13 = [(NSMutableSet *)self->_accessGrants copy];
    matterAccessGrants = self->_matterAccessGrants;
    self->_matterAccessGrants = v13;

    v15 = [(NSMutableArray *)self->_attributes count];
    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    v16 = self->_attributes;
    v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v85 objects:v96 count:16];
    if (v17)
    {
      v18 = *v86;
      while (2)
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v86 != v18)
          {
            objc_enumerationMutation(v16);
          }

          attributeID = [*(*(&v85 + 1) + 8 * j) attributeID];
          v21 = [attributeID isEqual:&unk_284C3E3F0];

          if (v21)
          {
            v83 = 0;
            goto LABEL_25;
          }
        }

        v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v85 objects:v96 count:16];
        if (v17)
        {
          continue;
        }

        break;
      }
    }

    v83 = 1;
LABEL_25:

    v22 = [(NSNumber *)self->_clusterID isEqual:&unk_284C3E3C0];
    v23 = v15 + v83;
    if (v22)
    {
      v23 += 4;
    }

    v24 = v23 + 1;
    if ((v23 + 1) > 0xFFFE)
    {
      v42 = sub_2393D9044(0);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        v43 = [(NSNumber *)self->_clusterID unsignedLongLongValue]>> 16;
        unsignedLongLongValue = [(NSNumber *)self->_clusterID unsignedLongLongValue];
        buf[0] = 134218496;
        *&buf[1] = v24;
        v94 = 1024;
        *v95 = v43;
        *&v95[4] = 1024;
        *&v95[6] = unsignedLongLongValue;
        _os_log_impl(&dword_238DAE000, v42, OS_LOG_TYPE_ERROR, "Unable to have %llu attributes in a single cluster (clusterID: 0x%04X_%04X)", buf, 0x18u);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(0, 1, "Unable to have %llu attributes in a single cluster (clusterID: 0x%04X_%04X)", v24, [(NSNumber *)self->_clusterID unsignedLongLongValue]>> 16, [(NSNumber *)self->_clusterID unsignedLongLongValue]);
      }

      goto LABEL_47;
    }

    v82 = v22;
    for (k = 0; k < [(NSMutableArray *)self->_attributes count]; ++k)
    {
      v26 = [(NSMutableArray *)self->_attributes objectAtIndexedSubscript:k];
      attributeID2 = [v26 attributeID];
      unsignedLongLongValue2 = [attributeID2 unsignedLongLongValue];
      end = self->_matterAttributeMetadata.__end_;
      cap = self->_matterAttributeMetadata.__cap_;
      if (end >= cap)
      {
        begin = self->_matterAttributeMetadata.__begin_;
        v33 = (end - begin) >> 4;
        v34 = v33 + 1;
        if ((v33 + 1) >> 60)
        {
          sub_238DBAEA8();
        }

        v35 = cap - begin;
        if (v35 >> 3 > v34)
        {
          v34 = v35 >> 3;
        }

        if (v35 >= 0x7FFFFFFFFFFFFFF0)
        {
          v36 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v36 = v34;
        }

        if (v36)
        {
          sub_238DC72DC(&self->_matterAttributeMetadata, v36);
        }

        v37 = (16 * v33);
        *v37 = 0;
        *(v37 + 2) = unsignedLongLongValue2;
        *(v37 + 3) = 810024960;
        v31 = (16 * v33 + 16);
        v38 = self->_matterAttributeMetadata.__begin_;
        v39 = (self->_matterAttributeMetadata.__end_ - v38);
        v40 = (v37 - v39);
        memcpy((v37 - v39), v38, v39);
        v41 = self->_matterAttributeMetadata.__begin_;
        self->_matterAttributeMetadata.__begin_ = v40;
        self->_matterAttributeMetadata.__end_ = v31;
        self->_matterAttributeMetadata.__cap_ = 0;
        if (v41)
        {
          operator delete(v41);
        }
      }

      else
      {
        *end = 0;
        v31 = (end + 16);
        *(end + 2) = unsignedLongLongValue2;
        *(end + 3) = 810024960;
      }

      self->_matterAttributeMetadata.__end_ = v31;
    }

    v46 = self->_matterAttributeMetadata.__end_;
    if (v83)
    {
      v47 = self->_matterAttributeMetadata.__cap_;
      if (v46 >= v47)
      {
        v48 = self->_matterAttributeMetadata.__begin_;
        v49 = (v46 - v48) >> 4;
        if ((v49 + 1) >> 60)
        {
          sub_238DBAEA8();
        }

        v50 = v47 - v48;
        v51 = v50 >> 3;
        if (v50 >> 3 <= (v49 + 1))
        {
          v51 = v49 + 1;
        }

        if (v50 >= 0x7FFFFFFFFFFFFFF0)
        {
          v52 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v52 = v51;
        }

        if (v52)
        {
          sub_238DC72DC(&self->_matterAttributeMetadata, v52);
        }

        v53 = 16 * v49;
        *v53 = 0;
        *(v53 + 8) = 0x301B00040000FFFCLL;
        v46 = (16 * v49 + 16);
        v54 = self->_matterAttributeMetadata.__begin_;
        v55 = (self->_matterAttributeMetadata.__end_ - v54);
        v56 = (16 * v49 - v55);
        memcpy(v56, v54, v55);
        v57 = self->_matterAttributeMetadata.__begin_;
        self->_matterAttributeMetadata.__begin_ = v56;
        self->_matterAttributeMetadata.__end_ = v46;
        self->_matterAttributeMetadata.__cap_ = 0;
        if (v57)
        {
          operator delete(v57);
        }
      }

      else
      {
        *v46 = 0;
        *(v46 + 1) = 0x301B00040000FFFCLL;
        v46 = (v46 + 16);
      }

      self->_matterAttributeMetadata.__end_ = v46;
      if (!v82)
      {
LABEL_78:
        v70 = self->_matterAttributeMetadata.__cap_;
        if (v46 >= v70)
        {
          v72 = self->_matterAttributeMetadata.__begin_;
          v73 = (v46 - v72) >> 4;
          if ((v73 + 1) >> 60)
          {
            sub_238DBAEA8();
          }

          v74 = v70 - v72;
          v75 = v74 >> 3;
          if (v74 >> 3 <= (v73 + 1))
          {
            v75 = v73 + 1;
          }

          if (v74 >= 0x7FFFFFFFFFFFFFF0)
          {
            v76 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v76 = v75;
          }

          if (v76)
          {
            sub_238DC72DC(&self->_matterAttributeMetadata, v76);
          }

          v77 = 16 * v73;
          *v77 = 0;
          *(v77 + 8) = 0x302100020000FFFDLL;
          v71 = (16 * v73 + 16);
          v78 = self->_matterAttributeMetadata.__begin_;
          v79 = (self->_matterAttributeMetadata.__end_ - v78);
          v80 = (16 * v73 - v79);
          memcpy((v77 - v79), v78, v79);
          v81 = self->_matterAttributeMetadata.__begin_;
          self->_matterAttributeMetadata.__begin_ = v80;
          self->_matterAttributeMetadata.__end_ = v71;
          self->_matterAttributeMetadata.__cap_ = 0;
          if (v81)
          {
            operator delete(v81);
          }
        }

        else
        {
          *v46 = 0;
          *(v46 + 1) = 0x302100020000FFFDLL;
          v71 = (v46 + 16);
        }

        self->_matterAttributeMetadata.__end_ = v71;
        [(NSNumber *)self->_clusterID unsignedLongLongValue];
        operator new();
      }
    }

    else if (!v82)
    {
      goto LABEL_78;
    }

    for (m = 0; m != 4; ++m)
    {
      v59 = self->_matterAttributeMetadata.__cap_;
      if (v46 >= v59)
      {
        v60 = self->_matterAttributeMetadata.__begin_;
        v61 = (v46 - v60) >> 4;
        if ((v61 + 1) >> 60)
        {
          sub_238DBAEA8();
        }

        v62 = v59 - v60;
        v63 = v62 >> 3;
        if (v62 >> 3 <= (v61 + 1))
        {
          v63 = v61 + 1;
        }

        if (v62 >= 0x7FFFFFFFFFFFFFF0)
        {
          v64 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v64 = v63;
        }

        if (v64)
        {
          sub_238DC72DC(&self->_matterAttributeMetadata, v64);
        }

        v65 = (16 * v61);
        *v65 = xmmword_23958D868[m];
        v46 = (16 * v61 + 16);
        v66 = self->_matterAttributeMetadata.__begin_;
        v67 = (self->_matterAttributeMetadata.__end_ - v66);
        v68 = (16 * v61 - v67);
        memcpy((v65 - v67), v66, v67);
        v69 = self->_matterAttributeMetadata.__begin_;
        self->_matterAttributeMetadata.__begin_ = v68;
        self->_matterAttributeMetadata.__end_ = v46;
        self->_matterAttributeMetadata.__cap_ = 0;
        if (v69)
        {
          operator delete(v69);
        }
      }

      else
      {
        *v46 = xmmword_23958D868[m];
        v46 = (v46 + 16);
      }

      self->_matterAttributeMetadata.__end_ = v46;
    }

    goto LABEL_78;
  }

  v5 = sub_2393D9044(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    uniqueIdentifier = [controllerCopy uniqueIdentifier];
    uniqueIdentifier2 = [WeakRetained uniqueIdentifier];
    buf[0] = 138412546;
    *&buf[1] = uniqueIdentifier;
    v94 = 2112;
    *v95 = uniqueIdentifier2;
    _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_ERROR, "Cannot associate MTRServerCluster with controller %@; already associated with controller %@", buf, 0x16u);
  }

  if (sub_2393D5398(1u))
  {
    uniqueIdentifier3 = [controllerCopy uniqueIdentifier];
    uniqueIdentifier4 = [WeakRetained uniqueIdentifier];
    sub_2393D5320(0, 1, "Cannot associate MTRServerCluster with controller %@; already associated with controller %@", uniqueIdentifier3, uniqueIdentifier4);

LABEL_6:
  }

LABEL_47:

  os_unfair_lock_unlock(&self->_lock);
  return 0;
}

- (void)invalidate
{
  v17 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_attributes;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = *v13;
    do
    {
      v6 = 0;
      do
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v12 + 1) + 8 * v6++) invalidate];
      }

      while (v4 != v6);
      v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  v7 = [MEMORY[0x277CBEB98] set];
  matterAccessGrants = self->_matterAccessGrants;
  self->_matterAccessGrants = v7;

  ptr = self->_attributeAccessInterface.__ptr_;
  self->_matterAttributeMetadata.__end_ = self->_matterAttributeMetadata.__begin_;
  self->_attributeAccessInterface.__ptr_ = 0;
  if (ptr)
  {
    (*(*ptr + 8))(ptr);
  }

  v10 = self->_matterAcceptedCommandList.__ptr_;
  self->_matterAcceptedCommandList.__ptr_ = 0;
  if (v10)
  {
    MEMORY[0x23EE77B40](v10, 0x1000C8052888210);
  }

  v11 = self->_matterGeneratedCommandList.__ptr_;
  self->_matterGeneratedCommandList.__ptr_ = 0;
  if (v11)
  {
    MEMORY[0x23EE77B40](v11, 0x1000C8052888210);
  }

  objc_storeWeak(&self->_deviceController, 0);
  os_unfair_lock_unlock(&self->_lock);
}

- (void)registerMatterCluster
{
  v13 = *MEMORY[0x277D85DE8];
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/ServerEndpoint/MTRServerCluster.mm", 378);
  os_unfair_lock_lock(&self->_lock);
  v5 = sub_2393C4890(v3, v4);
  if (!sub_2393C49D4(v5, self->_attributeAccessInterface.__ptr_))
  {
    v6 = sub_2393D9044(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      parentEndpoint = self->_parentEndpoint;
      unsignedLongLongValue = [(NSNumber *)self->_clusterID unsignedLongLongValue];
      *buf = 67109376;
      v10 = parentEndpoint;
      v11 = 2048;
      v12 = unsignedLongLongValue;
      _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_ERROR, "Could not register AttributeAccessInterface for endpoint %u, cluster 0x%llx", buf, 0x12u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1, "Could not register AttributeAccessInterface for endpoint %u, cluster 0x%llx", self->_parentEndpoint, [(NSNumber *)self->_clusterID unsignedLongLongValue]);
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)unregisterMatterCluster
{
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/ServerEndpoint/MTRServerCluster.mm", 392);
  os_unfair_lock_lock(&self->_lock);
  if (self->_attributeAccessInterface.__ptr_)
  {
    v5 = sub_2393C4890(v3, v4);
    sub_2393C48C8(v5, self->_attributeAccessInterface.__ptr_);
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (NSArray)accessGrants
{
  os_unfair_lock_lock(&self->_lock);
  allObjects = [(NSMutableSet *)self->_accessGrants allObjects];
  os_unfair_lock_unlock(&self->_lock);

  return allObjects;
}

- (NSArray)attributes
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableArray *)self->_attributes copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (BOOL)addToEndpoint:(unsigned __int16)endpoint
{
  endpointCopy = endpoint;
  v30 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  parentEndpoint = self->_parentEndpoint;
  if (parentEndpoint == 0xFFFF)
  {
    self->_parentEndpoint = endpointCopy;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = self->_attributes;
    v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v11)
    {
      v12 = *v18;
      do
      {
        v13 = 0;
        do
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v17 + 1) + 8 * v13);
          unsignedLongLongValue = [(NSNumber *)self->_clusterID unsignedLongLongValue];
          *buf = endpointCopy;
          v23 = unsignedLongLongValue;
          [v14 updateParentCluster:buf];
          ++v13;
        }

        while (v11 != v13);
        v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v11);
    }
  }

  else
  {
    v6 = sub_2393D9044(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [(NSNumber *)self->_clusterID unsignedLongLongValue]>> 16;
      unsignedLongLongValue2 = [(NSNumber *)self->_clusterID unsignedLongLongValue];
      v9 = self->_parentEndpoint;
      *buf = 67109888;
      v23 = v7;
      v24 = 1024;
      v25 = unsignedLongLongValue2;
      v26 = 1024;
      v27 = endpointCopy;
      v28 = 1024;
      v29 = v9;
      _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_ERROR, "Cannot add cluster 0x%04X_%04X to endpoint %u; already added to endpoint %u", buf, 0x1Au);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1, "Cannot add cluster 0x%04X_%04X to endpoint %u; already added to endpoint %u", [(NSNumber *)self->_clusterID unsignedLongLongValue]>> 16, [(NSNumber *)self->_clusterID unsignedLongLongValue], endpointCopy, self->_parentEndpoint);
    }
  }

  os_unfair_lock_unlock(&self->_lock);
  return parentEndpoint == 0xFFFF;
}

- (unsigned)parentEndpoint
{
  os_unfair_lock_lock(&self->_lock);
  parentEndpoint = self->_parentEndpoint;
  os_unfair_lock_unlock(&self->_lock);
  return parentEndpoint;
}

- (Span<const)matterAttributeMetadata
{
  os_unfair_lock_lock(&self->_lock);
  sub_238DB9BD8(v5, self->_matterAttributeMetadata.__begin_, (self->_matterAttributeMetadata.__end_ - self->_matterAttributeMetadata.__begin_) >> 4);
  os_unfair_lock_unlock(&self->_lock);
  v3 = v5[0];
  v4 = v5[1];
  result.var1 = v4;
  result.var0 = v3;
  return result;
}

- (void)setAcceptedCommands:(id)commands
{
  commandsCopy = commands;
  os_unfair_lock_lock(&self->_lock);
  v4 = [commandsCopy copy];
  acceptedCommands = self->_acceptedCommands;
  self->_acceptedCommands = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSArray)acceptedCommands
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSArray *)self->_acceptedCommands copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setGeneratedCommands:(id)commands
{
  commandsCopy = commands;
  os_unfair_lock_lock(&self->_lock);
  v4 = [commandsCopy copy];
  generatedCommands = self->_generatedCommands;
  self->_generatedCommands = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSArray)generatedCommands
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSArray *)self->_generatedCommands copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (unsigned)matterAcceptedCommands
{
  os_unfair_lock_lock(&self->_lock);
  ptr = self->_matterAcceptedCommandList.__ptr_;
  os_unfair_lock_unlock(&self->_lock);
  return ptr;
}

- (unsigned)matterGeneratedCommands
{
  os_unfair_lock_lock(&self->_lock);
  ptr = self->_matterGeneratedCommandList.__ptr_;
  os_unfair_lock_unlock(&self->_lock);
  return ptr;
}

- (id)description
{
  os_unfair_lock_lock(&self->_lock);
  v3 = sub_23952B10C(self);
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id).cxx_construct
{
  *(self + 3) = 0u;
  *(self + 4) = 0u;
  *(self + 2) = 0u;
  return self;
}

@end