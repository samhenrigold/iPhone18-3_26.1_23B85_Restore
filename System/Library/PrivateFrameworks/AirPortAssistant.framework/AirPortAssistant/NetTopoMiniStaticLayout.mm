@interface NetTopoMiniStaticLayout
- (CGImage)imageForDeviceSpec:(id)spec wantSmall:(BOOL)small forContentsScale:(double)scale;
- (NetTopoMiniStaticLayout)initWithContainerLayer:(id)layer andOptions:(int)options;
- (void)createLayoutForDevices:(id)devices;
- (void)dealloc;
- (void)destroyDeviceLayers;
- (void)performLayout;
- (void)setContainerLayer:(id)layer;
- (void)setOwningView:(id)view;
@end

@implementation NetTopoMiniStaticLayout

- (NetTopoMiniStaticLayout)initWithContainerLayer:(id)layer andOptions:(int)options
{
  v4 = *&options;
  v10.receiver = self;
  v10.super_class = NetTopoMiniStaticLayout;
  v6 = [(NetTopoMiniStaticLayout *)&v10 init];
  if (v6)
  {
    if (dword_27E383068 <= 800 && (dword_27E383068 != -1 || sub_23EB74AC8(&dword_27E383068, 0x320u)))
    {
      sub_23EB75374(&dword_27E383068, "[NetTopoMiniStaticLayout initWithContainerLayer:andOptions:]", 800, "containerLayer = %@, options = %d\n", layer, v4);
    }

    v6->_containerLayer = layer;
    v6->_layoutOptions = v4;
    objc_msgSend_setMasksToBounds_(layer, v7, 1, v8);
    v6->_topoDeviceLayers = objc_alloc_init(MEMORY[0x277CBEB18]);
    v6->_connectionLayers = objc_alloc_init(MEMORY[0x277CBEB18]);
  }

  return v6;
}

- (void)destroyDeviceLayers
{
  v35 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_count(self->_topoDeviceLayers, a2, v2, v3))
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    topoDeviceLayers = self->_topoDeviceLayers;
    v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(topoDeviceLayers, v5, &v29, v34, 16);
    if (v9)
    {
      v13 = v9;
      v14 = *v30;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v30 != v14)
          {
            objc_enumerationMutation(topoDeviceLayers);
          }

          objc_msgSend_removeFromSuperlayer(*(*(&v29 + 1) + 8 * i), v10, v11, v12);
        }

        v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(topoDeviceLayers, v10, &v29, v34, 16);
      }

      while (v13);
    }

    objc_msgSend_removeAllObjects(self->_topoDeviceLayers, v10, v11, v12);
  }

  if (objc_msgSend_count(self->_connectionLayers, v5, v6, v7))
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    connectionLayers = self->_connectionLayers;
    v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(connectionLayers, v16, &v25, v33, 16);
    if (v18)
    {
      v22 = v18;
      v23 = *v26;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v26 != v23)
          {
            objc_enumerationMutation(connectionLayers);
          }

          objc_msgSend_removeFromSuperlayer(*(*(&v25 + 1) + 8 * j), v19, v20, v21);
        }

        v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(connectionLayers, v19, &v25, v33, 16);
      }

      while (v22);
    }

    objc_msgSend_removeAllObjects(self->_connectionLayers, v19, v20, v21);
  }
}

- (void)dealloc
{
  objc_msgSend_destroyDeviceLayers(self, a2, v2, v3);

  v5.receiver = self;
  v5.super_class = NetTopoMiniStaticLayout;
  [(NetTopoMiniStaticLayout *)&v5 dealloc];
}

- (void)setContainerLayer:(id)layer
{
  if (self->_containerLayer != layer)
  {
    if (dword_27E383068 <= 800 && (dword_27E383068 != -1 || sub_23EB74AC8(&dword_27E383068, 0x320u)))
    {
      sub_23EB75374(&dword_27E383068, "[NetTopoMiniStaticLayout setContainerLayer:]", 800, "containerLayer = %@\n", layer);
    }

    objc_msgSend_destroyDeviceLayers(self, a2, layer, v3);
    layerCopy = layer;

    self->_containerLayer = layer;
  }
}

- (void)setOwningView:(id)view
{
  if (self->_owningView != view)
  {
    if (dword_27E383068 <= 800 && (dword_27E383068 != -1 || sub_23EB74AC8(&dword_27E383068, 0x320u)))
    {
      sub_23EB75374(&dword_27E383068, "[NetTopoMiniStaticLayout setOwningView:]", 800, "owningView = %@\n", view);
    }

    viewCopy = view;

    self->_owningView = view;
  }
}

- (CGImage)imageForDeviceSpec:(id)spec wantSmall:(BOOL)small forContentsScale:(double)scale
{
  smallCopy = small;
  v9 = objc_msgSend_objectForKey_(spec, a2, off_27E3830A8[0], small);
  if (!objc_msgSend_isEqualToString_(v9, v10, off_27E3830B0[0], v11))
  {
    return 0;
  }

  v15 = objc_msgSend_layoutOptions(self, v12, v13, v14);
  v18 = objc_msgSend_objectForKey_(spec, v16, off_27E3830B8[0], v17);
  v22 = objc_msgSend_unsignedIntegerValue(v18, v19, v20, v21);
  v25 = objc_msgSend_objectForKey_(spec, v23, off_27E3830C0[0], v24);
  v29 = objc_msgSend_unsignedIntegerValue(v25, v26, v27, v28);
  v31 = objc_msgSend_imageForBaseStationWithProductID_subProductID_deviceKind_small_cropped_threeDee_(ImageStore, v30, v22, 0, v29, 0, v15 & 1, 0);
  v34 = objc_msgSend_cgImageFromImage_forContentsScale_(ImageStore, v32, v31, v33, scale);
  v35 = v34;
  if (smallCopy)
  {
    v35 = sub_23EBFD790(v34, 75.0);
    v36 = v35;
  }

  return v35;
}

- (void)performLayout
{
  v183 = *MEMORY[0x277D85DE8];
  if (dword_27E383068 <= 800 && (dword_27E383068 != -1 || sub_23EB74AC8(&dword_27E383068, 0x320u)))
  {
    sub_23EB75374(&dword_27E383068, "[NetTopoMiniStaticLayout performLayout]", 800, "self = %@\n", self);
  }

  v5 = objc_msgSend_layoutOptions(self, a2, v2, v3);
  v9 = v5;
  if ((v5 & 2) != 0)
  {
    v10 = 28.0;
  }

  else
  {
    v10 = 35.0;
  }

  if ((v5 & 2) != 0)
  {
    v11 = 66.6666667;
  }

  else
  {
    v11 = 100.0;
  }

  if ((v5 & 2) != 0)
  {
    v12 = 5.0;
  }

  else
  {
    v12 = 10.0;
  }

  if (objc_msgSend_layoutOptions(self, v6, v7, v8))
  {
    v178 = 0u;
    v179 = 0u;
    v176 = 0u;
    v177 = 0u;
    topoDeviceLayers = self->_topoDeviceLayers;
    v47 = objc_msgSend_countByEnumeratingWithState_objects_count_(topoDeviceLayers, v13, &v176, v182, 16);
    if (v47)
    {
      v50 = v47;
      v51 = 0;
      v52 = *v177;
      v53 = dbl_23EC22120[(v9 & 2) == 0];
      do
      {
        for (i = 0; i != v50; ++i)
        {
          if (*v177 != v52)
          {
            objc_enumerationMutation(topoDeviceLayers);
          }

          v55 = *(*(&v176 + 1) + 8 * i);
          v56 = objc_msgSend_containerLayer(self, v16, v48, v49);
          objc_msgSend_frame(v56, v57, v58, v59);
          v61 = v60;
          v65 = objc_msgSend_containerLayer(self, v62, v63, v64);
          objc_msgSend_bounds(v65, v66, v67, v68);
          v70 = (v69 - v61) * 0.5;
          v71 = v53 * v51;
          objc_msgSend_setFrame_(v55, v72, v73, v74, floorf(v70), floorf(v71), v61, v11);
          ++v51;
        }

        v50 = objc_msgSend_countByEnumeratingWithState_objects_count_(topoDeviceLayers, v16, &v176, v182, 16);
      }

      while (v50);
    }
  }

  else if ((objc_msgSend_layoutOptions(self, v13, v14, v15) & 1) == 0)
  {
    v19 = objc_msgSend_count(self->_topoDeviceLayers, v16, v17, v18);
    v23 = objc_msgSend_containerLayer(self, v20, v21, v22);
    objc_msgSend_bounds(v23, v24, v25, v26);
    Width = CGRectGetWidth(v184);
    v34 = 0.0;
    if ((objc_msgSend_layoutOptions(self, v28, v29, v30) & 8) == 0)
    {
      v35 = objc_msgSend_layoutOptions(self, v31, v32, v33);
      v39 = objc_msgSend_containerLayer(self, v36, v37, v38);
      objc_msgSend_bounds(v39, v40, v41, v42);
      v44 = v43 - v11;
      if ((v35 & 4) != 0)
      {
        v34 = v44 + -7.0;
      }

      else
      {
        v45 = v44 * 0.5;
        v34 = floorf(v45);
      }
    }

    v174 = 0u;
    v175 = 0u;
    v172 = 0u;
    v173 = 0u;
    v75 = self->_topoDeviceLayers;
    v76 = objc_msgSend_countByEnumeratingWithState_objects_count_(v75, v31, &v172, v181, 16);
    if (v76)
    {
      v79 = v76;
      v80 = 0;
      v81 = (Width + -20.0 - (v19 - 1) * v12) / v19;
      v82 = floorf(v81);
      v83 = *v173;
      v84 = v12 + v82;
      do
      {
        for (j = 0; j != v79; ++j)
        {
          if (*v173 != v83)
          {
            objc_enumerationMutation(v75);
          }

          v86 = *(*(&v172 + 1) + 8 * j);
          v87 = objc_msgSend_containerLayer(self, v16, v77, v78);
          objc_msgSend_bounds(v87, v88, v89, v90);
          v92 = v91;
          v93 = v84 * v80;
          v94 = floorf(v93) + 10.0;
          v98 = objc_msgSend_containerLayer(self, v95, v96, v97);
          objc_msgSend_bounds(v98, v99, v100, v101);
          v103 = v102 - v92 - v34;
          objc_msgSend_setFrame_(v86, v104, v105, v106, v94, floorf(v103), v82, v92);
          objc_msgSend_setLabelPinnedHeight_(v86, v107, v108, v109, v10);
          objc_msgSend_setBoundsSizeConstraint_(v86, v110, v111, v112, v82, v92);
          ++v80;
        }

        v79 = objc_msgSend_countByEnumeratingWithState_objects_count_(v75, v16, &v172, v181, 16);
      }

      while (v79);
    }
  }

  v170 = 0u;
  v171 = 0u;
  v168 = 0u;
  v169 = 0u;
  connectionLayers = self->_connectionLayers;
  v114 = objc_msgSend_countByEnumeratingWithState_objects_count_(connectionLayers, v16, &v168, v180, 16);
  if (v114)
  {
    v118 = v114;
    v119 = *v169;
    do
    {
      for (k = 0; k != v118; ++k)
      {
        if (*v169 != v119)
        {
          objc_enumerationMutation(connectionLayers);
        }

        v121 = *(*(&v168 + 1) + 8 * k);
        if (objc_msgSend_layoutOptions(self, v115, v116, v117))
        {
          objc_msgSend_setUpstreamDeviceSpatialRelationship_(v121, v122, 4, v123);
          v146 = objc_msgSend_parent(v121, v143, v144, v145);
          v131 = 0.0;
          v150 = 0.0;
          v133 = 0.0;
          if (v146)
          {
            objc_msgSend_getConnectionAttachmentLocations(v146, v147, v148, v149);
            v133 = v166;
            v150 = v167;
          }

          v151 = objc_msgSend_childAtIndex_(v121, v147, 0, v149);
          v138 = 0.0;
          if (v151)
          {
            objc_msgSend_getConnectionAttachmentLocations(v151, v152, v153, v154);
            v138 = v164;
            v131 = v165;
          }

          v132 = v150;
          v139 = 2;
          objc_msgSend_setFrame_(v121, v152, v153, v154, v133, v150, 24.0, v131 - v150);
        }

        else
        {
          objc_msgSend_setUpstreamDeviceSpatialRelationship_(v121, v122, 1, v123);
          v127 = objc_msgSend_parent(v121, v124, v125, v126);
          v131 = 0.0;
          v132 = 0.0;
          v133 = 0.0;
          if (v127)
          {
            objc_msgSend_getConnectionAttachmentLocations(v127, v128, v129, v130);
            v133 = v162;
            v132 = v163;
          }

          v134 = objc_msgSend_childAtIndex_(v121, v128, 0, v130);
          v138 = 0.0;
          if (v134)
          {
            objc_msgSend_getConnectionAttachmentLocations(v134, v135, v136, v137);
            v138 = v160;
            v131 = v161;
          }

          v139 = 3;
          objc_msgSend_setFrame_(v121, v135, v136, v137, v133, v132 + -12.0, v138 - v133, 24.0);
        }

        objc_msgSend_setUpstreamConnectionPoint_(v121, v140, v141, v142, v133, v132);
        objc_msgSend_setUpstreamConnectionSide_(v121, v155, v139, v156);
        objc_msgSend_setDownstreamConnectionPoint_(v121, v157, v158, v159, v138, v131);
      }

      v118 = objc_msgSend_countByEnumeratingWithState_objects_count_(connectionLayers, v115, &v168, v180, 16);
    }

    while (v118);
  }
}

- (void)createLayoutForDevices:(id)devices
{
  v115 = *MEMORY[0x277D85DE8];
  if (dword_27E383068 <= 800 && (dword_27E383068 != -1 || sub_23EB74AC8(&dword_27E383068, 0x320u)))
  {
    sub_23EB75374(&dword_27E383068, "[NetTopoMiniStaticLayout createLayoutForDevices:]", 800, "self = %@\n", self);
  }

  v5 = objc_msgSend_layoutOptions(self, a2, devices, v3);
  objc_msgSend_setTopoDevicesDescriptor_(self, v6, devices, v7);
  objc_msgSend_destroyDeviceLayers(self, v8, v9, v10);
  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(devices, v11, &v110, v114, 16);
  if (v12)
  {
    v16 = v12;
    v17 = 0;
    v18 = (v5 >> 1) & 1;
    v109 = *v111;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v111 != v109)
        {
          objc_enumerationMutation(devices);
        }

        v20 = *(*(&v110 + 1) + 8 * i);
        v21 = [NetTopoAirPortDeviceLayer alloc];
        v25 = objc_msgSend_owningView(self, v22, v23, v24);
        v27 = objc_msgSend_initWithUIStyle_andOwningView_(v21, v26, 1, v25);
        objc_msgSend_contentsScale(v27, v28, v29, v30);
        v32 = objc_msgSend_imageForDeviceSpec_wantSmall_forContentsScale_(self, v31, v20, v18);
        objc_msgSend_setObjectImage_(v27, v33, v32, v34);
        objc_msgSend_setSmallSize_(v27, v35, v18, v36);
        objc_msgSend_setSelectable_(v27, v37, 0, v38);
        v41 = objc_msgSend_objectForKey_(v20, v39, off_27E3830C8[0], v40);
        v44 = objc_msgSend_objectForKey_(v20, v42, off_27E3830D0[0], v43);
        if (objc_msgSend_length(v41, v45, v46, v47))
        {
          objc_msgSend_setLabel_(v27, v48, v41, v50);
        }

        if (objc_msgSend_length(v44, v48, v49, v50))
        {
          if (objc_msgSend_length(v41, v51, v52, v53))
          {
            objc_msgSend_setSecondaryLabel_(v27, v54, v44, v55);
          }

          else
          {
            objc_msgSend_setLabel_(v27, v54, v44, v55);
          }
        }

        v56 = objc_msgSend_containerLayer(self, v51, v52, v53);
        objc_msgSend_addSublayer_(v56, v57, v27, v58);
        objc_msgSend_setNeedsDisplay(v27, v59, v60, v61);
        objc_msgSend_addObject_(self->_topoDeviceLayers, v62, v27, v63);
        v66 = objc_msgSend_objectForKey_(v20, v64, off_27E3830D8[0], v65);
        if (v66 && v17)
        {
          v69 = v66;
          if (objc_msgSend_isEqualToString_(v66, v67, off_27E3830E8[0], v68))
          {
            v72 = 1;
          }

          else if (objc_msgSend_isEqualToString_(v69, v70, off_27E3830F0, v71))
          {
            v72 = 3;
          }

          else
          {
            v72 = 2;
          }

          v73 = [NetTopoDeviceConnectionLayer alloc];
          v77 = objc_msgSend_owningView(self, v74, v75, v76);
          v79 = objc_msgSend_initWithUIStyle_andOwningView_(v73, v78, 1, v77);
          objc_msgSend_setSmallSize_(v79, v80, v18, v81);
          objc_msgSend_setSelectable_(v79, v82, 0, v83);
          objc_msgSend_setConnectionMediumFallback_(v79, v84, v72, v85);
          if (objc_msgSend_isEqualToString_(v69, v86, off_27E3830F0, v87))
          {
            objc_msgSend_setConnectionStyle_(v79, v88, 5, v89);
          }

          else
          {
            objc_msgSend_setConnectionStyle_(v79, v88, 1, v89);
          }

          v93 = objc_msgSend_containerLayer(self, v90, v91, v92);
          objc_msgSend_addSublayer_(v93, v94, v79, v95);
          objc_msgSend_setNeedsDisplay(v79, v96, v97, v98);
          v101 = objc_msgSend_objectAtIndex_(self->_topoDeviceLayers, v99, v17 - 1, v100);
          objc_msgSend_setParent_(v79, v102, v101, v103);
          objc_msgSend_addChild_(v79, v104, v27, v105);
          objc_msgSend_addObject_(self->_connectionLayers, v106, v79, v107);
        }

        ++v17;
      }

      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(devices, v67, &v110, v114, 16);
    }

    while (v16);
  }

  objc_msgSend_performLayout(self, v13, v14, v15);
}

@end