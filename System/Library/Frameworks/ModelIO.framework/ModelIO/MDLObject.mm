@interface MDLObject
- (MDLAxisAlignedBoundingBox)boundingBoxAtTime:(SEL)time;
- (MDLObject)init;
- (MDLObject)objectAtPath:(NSString *)path;
- (MDLObject)parent;
- (NSArray)components;
- (NSString)path;
- (id)componentConformingToProtocol:(Protocol *)protocol;
- (id)description;
- (id)objectForKeyedSubscript:(Protocol *)key;
- (id)recursiveDescription;
- (void)addChild:(MDLObject *)child;
- (void)enumerateChildObjectsOfClass:(Class)objectClass root:(MDLObject *)root usingBlock:(void *)block stopPointer:(BOOL *)stopPointer;
- (void)setComponent:(id)component forProtocol:(Protocol *)protocol;
@end

@implementation MDLObject

- (MDLObject)init
{
  v30.receiver = self;
  v30.super_class = MDLObject;
  v9 = [(MDLObject *)&v30 init];
  if (v9)
  {
    v14 = dword_280BC3A40++;
    v15 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v2, @"Obj%d", v4, v10, v11, v12, v13, v5, v6, v7, v8, v14);
    name = v9->name;
    v9->name = v15;
  }

  v17 = objc_msgSend_children(v9, v2, v3, v4, v10, v11, v12, v13, v5, v6, v7, v8);

  if (!v17)
  {
    v18 = objc_opt_new();
    objc_msgSend_setChildren_(v9, v19, v18, v20, v25, v26, v27, v28, v21, v22, v23, v24);
  }

  return v9;
}

- (void)setComponent:(id)component forProtocol:(Protocol *)protocol
{
  v19 = component;
  v11 = protocol;
  components = self->_components;
  if (!components)
  {
    v17 = objc_opt_new();
    v18 = self->_components;
    self->_components = v17;

    components = self->_components;
  }

  objc_msgSend_setObject_forKey_(components, v6, v19, v11, v12, v13, v14, v15, v7, v8, v9, v10);
}

- (id)componentConformingToProtocol:(Protocol *)protocol
{
  v12 = objc_msgSend_objectForKey_(self->_components, a2, protocol, v3, v8, v9, v10, v11, v4, v5, v6, v7);

  return v12;
}

- (id)objectForKeyedSubscript:(Protocol *)key
{
  v12 = objc_msgSend_componentConformingToProtocol_(self, a2, key, v3, v8, v9, v10, v11, v4, v5, v6, v7);

  return v12;
}

- (NSArray)components
{
  v12 = objc_msgSend_objectEnumerator(self->_components, a2, v2, v3, v8, v9, v10, v11, v4, v5, v6, v7);
  v24 = objc_msgSend_allObjects(v12, v13, v14, v15, v20, v21, v22, v23, v16, v17, v18, v19);

  return v24;
}

- (MDLObject)parent
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);

  return WeakRetained;
}

- (NSString)path
{
  v96 = *MEMORY[0x277D85DE8];
  name = self->name;
  if (!name)
  {
    v13 = dword_280BC3A40++;
    v14 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"Obj%d", v2, v7, v8, v9, v10, v3, v4, v5, v6, v13);
    v15 = self->name;
    self->name = v14;

    name = self->name;
  }

  v90 = 0;
  v91 = 0;
  v92 = 0;
  v16 = objc_msgSend_cStringUsingEncoding_(name, a2, 4, v2, v7, v8, v9, v10, v3, v4, v5, v6);
  sub_239E552A0(v87, v16);
  sub_239F5D2FC(v87, &__p);
  v17 = v91;
  if (v91 >= v92)
  {
    v19 = 0xAAAAAAAAAAAAAAABLL * ((v91 - v90) >> 3);
    v20 = v19 + 1;
    if (v19 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_239E797B4();
    }

    if (0x5555555555555556 * ((v92 - v90) >> 3) > v20)
    {
      v20 = 0x5555555555555556 * ((v92 - v90) >> 3);
    }

    if (0xAAAAAAAAAAAAAAABLL * ((v92 - v90) >> 3) >= 0x555555555555555)
    {
      v21 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v21 = v20;
    }

    v95 = &v90;
    if (v21)
    {
      sub_239F5E650(&v90, v21);
    }

    v22 = 8 * ((v91 - v90) >> 3);
    v23 = *&__p.__r_.__value_.__l.__data_;
    *(v22 + 16) = *(&__p.__r_.__value_.__l + 2);
    *v22 = v23;
    memset(&__p, 0, sizeof(__p));
    v24 = (24 * v19 + 24);
    v25 = (24 * v19 - (v91 - v90));
    memcpy((v22 - (v91 - v90)), v90, v91 - v90);
    v26 = v90;
    v27 = v92;
    v90 = v25;
    v91 = v24;
    v92 = 0;
    v93.__r_.__value_.__r.__words[0] = v26;
    v93.__r_.__value_.__r.__words[2] = v26;
    v94 = v27;
    v93.__r_.__value_.__l.__size_ = v26;
    sub_239F5E6A8(&v93);
    v91 = v24;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v18 = *&__p.__r_.__value_.__l.__data_;
    *(v91 + 2) = *(&__p.__r_.__value_.__l + 2);
    *v17 = v18;
    memset(&__p, 0, sizeof(__p));
    v91 = v17 + 24;
  }

  if (v88 < 0)
  {
    operator delete(v87[0]);
  }

  WeakRetained = objc_loadWeakRetained(&self->_parent);
  if (WeakRetained)
  {
    do
    {
      memset(&__p, 0, sizeof(__p));
      v40 = objc_msgSend_name(WeakRetained, v28, v29, v30, v36, v37, v38, v39, v31, v32, v33, v34);
      v41 = v40;
      v52 = objc_msgSend_cStringUsingEncoding_(v40, v42, 4, v43, v48, v49, v50, v51, v44, v45, v46, v47);
      sub_239E552A0(&__p, v52);

      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      if (!size)
      {
        bzero(&v93, 0x400uLL);
        v54 = dword_27DF912C8++;
        sprintf(&v93, "mdl%d", v54);
        MEMORY[0x23EE7FFA0](&__p, &v93);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          objc_msgSend_stringWithCString_encoding_(MEMORY[0x277CCACA8], v55, &__p, 4, v60, v61, v62, v63, v56, v57, v58, v59);
        }

        else
        {
          objc_msgSend_stringWithCString_encoding_(MEMORY[0x277CCACA8], v55, __p.__r_.__value_.__l.__data_, 4, v60, v61, v62, v63, v56, v57, v58, v59);
        }
        v64 = ;
        objc_msgSend_setName_(WeakRetained, v65, v64, v66, v71, v72, v73, v74, v67, v68, v69, v70);
      }

      sub_239F5D2FC(&__p, &v93);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      __p = v93;
      v75 = v91;
      if (v91 >= v92)
      {
        v77 = sub_239F5E73C(&v90, &__p);
      }

      else
      {
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          sub_239E5BAE0(v91, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
        }

        else
        {
          v76 = *&__p.__r_.__value_.__l.__data_;
          *(v91 + 2) = *(&__p.__r_.__value_.__l + 2);
          *v75 = v76;
        }

        v77 = v75 + 24;
      }

      v91 = v77;
      v78 = objc_loadWeakRetained(WeakRetained + 1);

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      WeakRetained = v78;
    }

    while (v78);
  }

  memset(&v93, 0, sizeof(v93));
  v79 = v91;
  while (v79 != v90)
  {
    std::string::append(&v93, "/");
    v81 = *(v79 - 3);
    v79 -= 24;
    v80 = v81;
    v82 = v79[23];
    if (v82 >= 0)
    {
      v83 = v79;
    }

    else
    {
      v83 = v80;
    }

    if (v82 >= 0)
    {
      v84 = v79[23];
    }

    else
    {
      v84 = *(v79 + 1);
    }

    std::string::append(&v93, v83, v84);
  }

  if ((v93.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    objc_msgSend_stringWithCString_encoding_(MEMORY[0x277CCACA8], v28, &v93, 4, v36, v37, v38, v39, v31, v32, v33, v34);
  }

  else
  {
    objc_msgSend_stringWithCString_encoding_(MEMORY[0x277CCACA8], v28, v93.__r_.__value_.__l.__data_, 4, v36, v37, v38, v39, v31, v32, v33, v34);
  }
  v85 = ;
  if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v93.__r_.__value_.__l.__data_);
  }

  v93.__r_.__value_.__r.__words[0] = &v90;
  sub_239EBD408(&v93);

  return v85;
}

- (void)enumerateChildObjectsOfClass:(Class)objectClass root:(MDLObject *)root usingBlock:(void *)block stopPointer:(BOOL *)stopPointer
{
  v55 = *MEMORY[0x277D85DE8];
  v16 = block;
  v53 = 0;
  if (stopPointer)
  {
    v20 = stopPointer;
  }

  else
  {
    v20 = &v53;
  }

  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v21 = objc_msgSend_children(root, v9, v10, v11, 0, v17, v18, v19, v12, v13, v14, v15, 0);
  v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v49, v54, v26, v27, v28, v29, 16, v23, v24, v25);
  if (v30)
  {
    v31 = *v50;
LABEL_6:
    v32 = 0;
    while (1)
    {
      if (*v50 != v31)
      {
        objc_enumerationMutation(v21);
      }

      v33 = *(*(&v49 + 1) + 8 * v32);
      if (objc_opt_isKindOfClass())
      {
        v16[2](v16, v33, v20);
      }

      if (*v20)
      {
        break;
      }

      objc_msgSend_enumerateChildObjectsOfClass_root_usingBlock_stopPointer_(v33, v34, objectClass, v33, v37, v38, v39, v40, v16, v20, v35, v36);
      if (*v20)
      {
        break;
      }

      if (v30 == ++v32)
      {
        v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v41, &v49, v54, v45, v46, v47, v48, 16, v42, v43, v44);
        if (v30)
        {
          goto LABEL_6;
        }

        break;
      }
    }
  }
}

- (MDLObject)objectAtPath:(NSString *)path
{
  v108 = *MEMORY[0x277D85DE8];
  v4 = path;
  v101 = v4;
  if (v4 && objc_msgSend_length(v4, v5, v6, v7, v12, v13, v14, v15, v8, v9, v10, v11))
  {
    v26 = objc_msgSend_componentsSeparatedByString_(v101, v16, @"/", v17, v22, v23, v24, v25, v18, v19, v20, v21);
    v38 = v26;
    if (v26 && objc_msgSend_count(v26, v27, v28, v29, v34, v35, v36, v37, v30, v31, v32, v33))
    {
      selfCopy = self;
      v50 = 0;
      while (1)
      {
        v105 = 0u;
        v106 = 0u;
        v103 = 0u;
        v104 = 0u;
        v102 = selfCopy;
        v51 = objc_msgSend_children(selfCopy, v40, v41, v42, 0, v47, v48, v49, v43, v44, v45, v46, v101);
        v66 = objc_msgSend_countByEnumeratingWithState_objects_count_(v51, v52, &v103, v107, v56, v57, v58, v59, 16, v53, v54, v55);
        if (!v66)
        {
          break;
        }

        v71 = *v104;
LABEL_8:
        v72 = 0;
        while (1)
        {
          if (*v104 != v71)
          {
            objc_enumerationMutation(v51);
          }

          v73 = *(*(&v103 + 1) + 8 * v72);
          v74 = objc_msgSend_objectAtIndexedSubscript_(v38, v60, v50, v61, v67, v68, v69, v70, v62, v63, v64, v65);
          v86 = objc_msgSend_name(v73, v75, v76, v77, v82, v83, v84, v85, v78, v79, v80, v81);
          isEqualToString = objc_msgSend_isEqualToString_(v74, v87, v86, v88, v93, v94, v95, v96, v89, v90, v91, v92);

          if (isEqualToString)
          {
            break;
          }

          if (v66 == ++v72)
          {
            v66 = objc_msgSend_countByEnumeratingWithState_objects_count_(v51, v60, &v103, v107, v67, v68, v69, v70, 16, v63, v64, v65);
            if (v66)
            {
              goto LABEL_8;
            }

            goto LABEL_20;
          }
        }

        v99 = objc_msgSend_count(v38, v60, v98, v61, v67, v68, v69, v70, v62, v63, v64, v65) - 1;
        v66 = v73;
        if (v99 == v50)
        {
          break;
        }

        ++v50;
        selfCopy = v66;
        if (!v66)
        {
          goto LABEL_21;
        }
      }

LABEL_20:
    }

    else
    {
      v66 = 0;
    }

LABEL_21:
  }

  else
  {
    v66 = 0;
  }

  return v66;
}

- (void)addChild:(MDLObject *)child
{
  v59 = child;
  if (v59)
  {
    v15 = objc_msgSend_children(self, v4, v5, v6, v11, v12, v13, v14, v7, v8, v9, v10);

    if (!v15)
    {
      v27 = objc_opt_new();
      objc_msgSend_setChildren_(self, v28, v27, v29, v34, v35, v36, v37, v30, v31, v32, v33);
    }

    v38 = objc_msgSend_children(self, v16, v17, v18, v23, v24, v25, v26, v19, v20, v21, v22);
    objc_msgSend_addObject_(v38, v39, v59, v40, v45, v46, v47, v48, v41, v42, v43, v44);

    objc_msgSend_setParent_(v59, v49, self, v50, v55, v56, v57, v58, v51, v52, v53, v54);
  }
}

- (id)description
{
  selfCopy = self;
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = objc_opt_class();
  v16 = objc_msgSend_name(self, v5, v6, v7, v12, v13, v14, v15, v8, v9, v10, v11);
  v28 = objc_msgSend_children(selfCopy, v17, v18, v19, v24, v25, v26, v27, v20, v21, v22, v23);
  v40 = objc_msgSend_count(v28, v29, v30, v31, v36, v37, v38, v39, v32, v33, v34, v35);
  v51 = objc_msgSend_initWithFormat_(v3, v41, @"<<%@: 0x%lx>, Name: %@, Children: %d>", v42, v47, v48, v49, v50, v43, v44, v45, v46, v4, &selfCopy, v16, v40);

  return v51;
}

- (id)recursiveDescription
{
  v13 = objc_msgSend_string(MEMORY[0x277CCAB68], a2, v2, v3, v8, v9, v10, v11, v4, v5, v6, v7);
  objc_msgSend_appendFormat_(v13, v14, @"%@\n", v15, v20, v21, v22, v23, v16, v17, v18, v19, self);
  for (i = 0; ; ++i)
  {
    v36 = objc_msgSend_children(self, v24, v25, v26, v31, v32, v33, v34, v27, v28, v29, v30);
    v48 = objc_msgSend_count(v36, v37, v38, v39, v44, v45, v46, v47, v40, v41, v42, v43);

    if (i >= v48)
    {
      break;
    }

    v60 = objc_msgSend_children(self, v49, v50, v51, v56, v57, v58, v59, v52, v53, v54, v55);
    v71 = objc_msgSend_objectAtIndexedSubscript_(v60, v61, i, v62, v67, v68, v69, v70, v63, v64, v65, v66);
    v83 = objc_msgSend_recursiveDescription(v71, v72, v73, v74, v79, v80, v81, v82, v75, v76, v77, v78);

    v95 = objc_msgSend_children(self, v84, v85, v86, v91, v92, v93, v94, v87, v88, v89, v90);
    v107 = objc_msgSend_count(v95, v96, v97, v98, v103, v104, v105, v106, v99, v100, v101, v102);
    v108 = @"    ";
    if (i < v107 - 1)
    {
      v108 = @" |  ";
    }

    v109 = v108;

    v127 = objc_msgSend_componentsSeparatedByString_(v83, v110, @"\n", v111, v116, v117, v118, v119, v112, v113, v114, v115);
    v132 = 0;
    v133 = 0;
    while (1)
    {
      v144 = v133;
      if (objc_msgSend_count(v127, v120, v121, v122, v128, v129, v130, v131, v123, v124, v125, v126) <= v133)
      {
        break;
      }

      v145 = objc_msgSend_objectAtIndexedSubscript_(v127, v134, v133, v135, v140, v141, v142, v143, v136, v137, v138, v139);
      v157 = objc_msgSend_length(v145, v146, v147, v148, v153, v154, v155, v156, v149, v150, v151, v152);

      if (!v157)
      {
        break;
      }

      v174 = objc_msgSend_objectAtIndexedSubscript_(v127, v158, v144, v159, v164, v165, v166, v167, v160, v161, v162, v163);
      if (v132)
      {
        objc_msgSend_appendFormat_(v13, v168, @"%@%@\n", v169, v175, v176, v177, v178, v170, v171, v172, v173, v109, v174);
      }

      else
      {
      }

      v133 = v144 + 1;
      v132 = 1;
    }
  }

  return v13;
}

- (MDLAxisAlignedBoundingBox)boundingBoxAtTime:(SEL)time
{
  v4 = *(MEMORY[0x277D860B8] + 16);
  v8[0] = *MEMORY[0x277D860B8];
  v8[1] = v4;
  v5 = *(MEMORY[0x277D860B8] + 48);
  v8[2] = *(MEMORY[0x277D860B8] + 32);
  v8[3] = v5;
  sub_239F5E204(self, v8, &v7);
  return result;
}

@end