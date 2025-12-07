@interface AnalogDialView
+ (id)richCircularLevelSubdialForDevice:(id)device andComplicationFamily:(int64_t)family;
- (AnalogDialView)initWithDialDiameter:(double)diameter;
- (CGSize)intrinsicContentSize;
- (void)addTicksWithCount:(unint64_t)count moduloGroups:(id)groups sizes:(id)sizes roundedCorners:(id)corners;
- (void)applyTickColor:(id)color toGroupIndex:(unint64_t)index;
- (void)applyTickColor:(id)color toModulo:(unint64_t)modulo;
- (void)layoutSubviews;
@end

@implementation AnalogDialView

+ (id)richCircularLevelSubdialForDevice:(id)device andComplicationFamily:(int64_t)family
{
  v42[2] = *MEMORY[0x277D85DE8];
  sub_23BD2F7BC(self, device);
  if (family == 12)
  {
    v6 = &xmmword_27E1C4BC0;
  }

  else
  {
    if (family != 10)
    {
      v5 = NCLogForCategory(1uLL);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_23BD65900(family, v5);
      }
    }

    v6 = &xmmword_27E1C4B90;
  }

  v7 = *v6;
  v8 = *(v6 + 8);
  v40 = *(v6 + 24);
  v41 = v8;
  v9 = [AnalogDialView alloc];
  v12 = objc_msgSend_initWithDialDiameter_(v9, v10, v11, v7);
  v39 = v41;
  v14 = objc_msgSend_valueWithBytes_objCType_(MEMORY[0x277CCAE60], v13, &v39, "{CGSize=dd}");
  v42[0] = v14;
  v38 = v40;
  v16 = objc_msgSend_valueWithBytes_objCType_(MEMORY[0x277CCAE60], v15, &v38, "{CGSize=dd}");
  v42[1] = v16;
  v18 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v17, v42, 2);
  objc_msgSend_addTicksWithCount_moduloGroups_sizes_roundedCorners_(v12, v19, 40, &unk_284E8B0B8, v18, &unk_284E8B0D0);

  v22 = objc_msgSend_tickGroups(v12, v20, v21);
  v25 = objc_msgSend_count(v22, v23, v24);

  if (v25 >= 2)
  {
    v28 = 1;
    do
    {
      v29 = objc_msgSend_colorWithWhite_alpha_(MEMORY[0x277D75348], v26, v27, 1.0, 0.600000024);
      objc_msgSend_applyTickColor_toGroupIndex_(v12, v30, v29, v28);

      ++v28;
      v33 = objc_msgSend_tickGroups(v12, v31, v32);
      v36 = objc_msgSend_count(v33, v34, v35);
    }

    while (v28 < v36);
  }

  return v12;
}

- (AnalogDialView)initWithDialDiameter:(double)diameter
{
  v5.receiver = self;
  v5.super_class = AnalogDialView;
  result = [(AnalogDialView *)&v5 initWithFrame:0.0, 0.0, diameter, diameter];
  if (result)
  {
    result->_dialDiameter = diameter;
  }

  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = AnalogDialView;
  [(AnalogDialView *)&v4 layoutSubviews];
  objc_msgSend_insertSubview_atIndex_(self, v3, self->_tickContainer, 0);
}

- (CGSize)intrinsicContentSize
{
  dialDiameter = self->_dialDiameter;
  v3 = dialDiameter;
  result.height = v3;
  result.width = dialDiameter;
  return result;
}

- (void)addTicksWithCount:(unint64_t)count moduloGroups:(id)groups sizes:(id)sizes roundedCorners:(id)corners
{
  v150 = *MEMORY[0x277D85DE8];
  groupsCopy = groups;
  sizesCopy = sizes;
  cornersCopy = corners;
  v145 = 0u;
  v146 = 0u;
  v147 = 0u;
  v148 = 0u;
  selfCopy = self;
  v13 = self->_tickGroups;
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v145, v149, 16);
  if (v15)
  {
    v18 = v15;
    v19 = *v146;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v146 != v19)
        {
          objc_enumerationMutation(v13);
        }

        objc_msgSend_removeFromSuperview(*(*(&v145 + 1) + 8 * i), v16, v17);
      }

      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v16, &v145, v149, 16);
    }

    while (v18);
  }

  v21 = selfCopy;
  objc_msgSend_removeFromSuperview(selfCopy->_tickContainer, v22, v23);
  v24 = objc_alloc(MEMORY[0x277D75D18]);
  objc_msgSend_bounds(selfCopy, v25, v26);
  v29 = objc_msgSend_initWithFrame_(v24, v27, v28);
  tickContainer = selfCopy->_tickContainer;
  selfCopy->_tickContainer = v29;

  objc_msgSend_addSubview_(v21, v31, v21->_tickContainer);
  objc_storeStrong(&selfCopy->_moduloGroups, groups);
  v32 = objc_opt_new();
  if (objc_msgSend_count(groupsCopy, v33, v34))
  {
    v36 = 0;
    do
    {
      v37 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v35, v36);
      v39 = objc_msgSend_objectAtIndexedSubscript_(groupsCopy, v38, v36);
      objc_msgSend_setObject_forKeyedSubscript_(v32, v40, v37, v39);

      ++v36;
    }

    while (v36 < objc_msgSend_count(groupsCopy, v41, v42));
  }

  v138 = v32;
  objc_storeStrong(&selfCopy->_moduloToGroup, v32);
  dialDiameter = selfCopy->_dialDiameter;
  v140 = objc_opt_new();
  if (objc_msgSend_count(groupsCopy, v44, v45))
  {
    v47 = 0;
    v48 = dialDiameter * 0.5;
    v50 = -(dialDiameter * 0.5);
    v139 = cornersCopy;
    do
    {
      v51 = objc_msgSend_objectAtIndexedSubscript_(groupsCopy, v46, v47);
      v54 = objc_msgSend_unsignedIntegerValue(v51, v52, v53);

      v56 = objc_msgSend_objectAtIndexedSubscript_(sizesCopy, v55, v47);
      objc_msgSend_CGSizeValue(v56, v57, v58);
      v60 = v59;
      v62 = v61;

      if (cornersCopy)
      {
        v65 = objc_msgSend_objectAtIndexedSubscript_(cornersCopy, v63, v47);
        v68 = objc_msgSend_BOOLValue(v65, v66, v67) ^ 1;
      }

      else
      {
        v68 = 1;
      }

      v69 = objc_msgSend_layer(MEMORY[0x277CD9ED0], v63, v64);
      objc_msgSend_setBounds_(v69, v70, v71, 0.0, 0.0, v21->_dialDiameter, v21->_dialDiameter);
      v74 = objc_msgSend_currentDevice(MEMORY[0x277CBBAE8], v72, v73);
      objc_msgSend_screenScale(v74, v75, v76);
      objc_msgSend_setContentsScale_(v69, v77, v78);

      if (count)
      {
        v81 = 0;
        if (v60 >= v62)
        {
          v82 = v62;
        }

        else
        {
          v82 = v60;
        }

        v83 = v82 * 0.5;
        if (v68)
        {
          v84 = 0.0;
        }

        else
        {
          v84 = v83;
        }

        do
        {
          if (!(v81 % v54))
          {
            if (v47)
            {
              v85 = 0;
              while (1)
              {
                v86 = objc_msgSend_objectAtIndexedSubscript_(groupsCopy, v79, v85);
                v89 = v81 % objc_msgSend_unsignedIntegerValue(v86, v87, v88);

                if (!v89)
                {
                  break;
                }

                if (v47 == ++v85)
                {
                  goto LABEL_28;
                }
              }
            }

            else
            {
LABEL_28:
              v49 = 6.28318531 / count;
              v90 = objc_msgSend_layer(MEMORY[0x277CD9ED0], v79, v80);
              objc_msgSend_setFrame_(v90, v91, v92, 0.0, 0.0, v60, v62);
              objc_msgSend_setAnchorPoint_(v90, v93, v94, 0.5, 0.0);
              objc_msgSend_setCornerRadius_(v90, v95, v96, v84);
              v97 = __sincos_stret(v49 * v81);
              objc_msgSend_setPosition_(v90, v98, v99, v48 + v48 * v97.__sinval, v48 + v50 * v97.__cosval);
              v102 = objc_msgSend_whiteColor(MEMORY[0x277D75348], v100, v101);
              v103 = v102;
              v106 = objc_msgSend_CGColor(v103, v104, v105);
              objc_msgSend_setBackgroundColor_(v90, v107, v106);

              CGAffineTransformMakeRotation(&v144, v49 * v81);
              v143 = v144;
              objc_msgSend_setAffineTransform_(v90, v108, &v143);
              objc_msgSend_addSublayer_(v69, v109, v90);
            }
          }

          ++v81;
        }

        while (v81 != count);
      }

      objc_msgSend_bounds(v69, v79, v80);
      v151.width = v110;
      v151.height = v111;
      UIGraphicsBeginImageContextWithOptions(v151, 0, 0.0);
      CurrentContext = UIGraphicsGetCurrentContext();
      objc_msgSend_renderInContext_(v69, v113, CurrentContext);
      v114 = UIGraphicsGetImageFromCurrentImageContext();
      UIGraphicsEndImageContext();
      v115 = objc_alloc(MEMORY[0x277D755E8]);
      v117 = objc_msgSend_imageWithRenderingMode_(v114, v116, 2);
      v119 = objc_msgSend_initWithImage_(v115, v118, v117);

      v21 = selfCopy;
      objc_msgSend_bounds(selfCopy, v120, v121);
      objc_msgSend_setFrame_(v119, v122, v123);
      v126 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D75348], v124, v125, 1.0, 0.333333343, 0.0313725509, 1.0);
      objc_msgSend_setTintColor_(v119, v127, v126);

      if (qword_27E1C4C08 != -1)
      {
        sub_23BD6598C();
      }

      v128 = qword_27E1C4C00;
      v131 = objc_msgSend_layer(v119, v129, v130);
      objc_msgSend_setActions_(v131, v132, v128);

      objc_msgSend_addObject_(v140, v133, v119);
      objc_msgSend_addSubview_(selfCopy->_tickContainer, v134, v119);

      ++v47;
      cornersCopy = v139;
    }

    while (v47 < objc_msgSend_count(groupsCopy, v135, v136));
  }

  tickGroups = v21->_tickGroups;
  v21->_tickGroups = v140;
}

- (void)applyTickColor:(id)color toModulo:(unint64_t)modulo
{
  moduloToGroup = self->_moduloToGroup;
  v7 = MEMORY[0x277CCABB0];
  colorCopy = color;
  v9 = objc_msgSend_numberWithUnsignedInteger_(v7, v8, modulo);
  v11 = objc_msgSend_objectForKeyedSubscript_(moduloToGroup, v10, v9);
  v14 = objc_msgSend_unsignedIntegerValue(v11, v12, v13);

  objc_msgSend_applyTickColor_toGroupIndex_(self, v15, colorCopy, v14);
}

- (void)applyTickColor:(id)color toGroupIndex:(unint64_t)index
{
  tickGroups = self->_tickGroups;
  colorCopy = color;
  v9 = objc_msgSend_objectAtIndexedSubscript_(tickGroups, v7, index);
  objc_msgSend_setTintColor_(v9, v8, colorCopy);
}

@end