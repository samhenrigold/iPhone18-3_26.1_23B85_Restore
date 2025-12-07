@interface TMLMethodCall
- (TMLMethodCall)callWithArguments:(id)arguments;
- (TMLMethodCall)initWithMethodDescriptor:(id)descriptor forClass:(Class)class;
- (id)_callWithArguments:(id)arguments;
@end

@implementation TMLMethodCall

- (TMLMethodCall)initWithMethodDescriptor:(id)descriptor forClass:(Class)class
{
  v52[1] = *MEMORY[0x277D85DE8];
  descriptorCopy = descriptor;
  v50.receiver = self;
  v50.super_class = TMLMethodCall;
  v8 = [(TMLMethodCall *)&v50 init];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_38;
  }

  objc_storeStrong(&v8->_methodDescriptor, descriptor);
  methodSelector = [descriptorCopy methodSelector];
  if ([methodSelector hasPrefix:@"+"])
  {
    v9->_classSelector = 1;
    v11 = [methodSelector substringFromIndex:1];

    methodSelector = v11;
  }

  v12 = NSSelectorFromString(methodSelector);
  if (!v12)
  {
    v16 = 0;
    v15 = 0;
    p_classSelector = &v9->_classSelector;
    classSelector = v9->_classSelector;
    v9->_selector = 0;
    if (classSelector)
    {
      goto LABEL_10;
    }

LABEL_11:
    v18 = [(objc_class *)class instanceMethodSignatureForSelector:v16];
    goto LABEL_12;
  }

  p_classSelector = &v9->_classSelector;
  v13 = v9->_classSelector;
  v9->_selector = v12;
  if (!v13)
  {
    v16 = v12;
    goto LABEL_11;
  }

  v15 = v12;
LABEL_10:
  v18 = [(objc_class *)class methodSignatureForSelector:v15];
LABEL_12:
  v19 = v18;
  v20 = objc_alloc(MEMORY[0x277CCAB68]);
  if (v19)
  {
    v21 = [v20 initWithCString:objc_msgSend(v19 encoding:{"methodReturnType"), 1}];
    numberOfArguments = [v19 numberOfArguments];
    if (numberOfArguments >= 3)
    {
      classCopy = class;
      v24 = methodSelector;
      for (i = 2; i != numberOfArguments; ++i)
      {
        [v21 appendFormat:@"%s", objc_msgSend(v19, "getArgumentTypeAtIndex:", i)];
      }

      methodSelector = v24;
      class = classCopy;
    }
  }

  else
  {
    v21 = [v20 initWithString:@"optional"];
    numberOfArguments = 0;
  }

  if (qword_2806D9220 != -1)
  {
    sub_26F201640();
  }

  v26 = [qword_2806D9218 objectForKeyedSubscript:v21];
  block = v9->_block;
  v9->_block = v26;

  if (!v9->_block)
  {
    if (numberOfArguments >= 0xB)
    {
      v41 = MEMORY[0x277CBEAD8];
      v42 = MEMORY[0x277CCACA8];
      methodSelector2 = [descriptorCopy methodSelector];
      v44 = [(objc_class *)class description];
      v45 = [v42 stringWithFormat:@"Unsupported number of arguments for method %@ in class %@", methodSelector2, v44];
      v51 = @"method";
      v52[0] = descriptorCopy;
      v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:&v51 count:1];
      v47 = [v41 exceptionWithName:@"TMLRuntimeException" reason:v45 userInfo:v46];
      v48 = v47;

      objc_exception_throw(v47);
    }

    v28 = [MEMORY[0x277CBEAE8] invocationWithMethodSignature:v19];
    invocation = v9->_invocation;
    v9->_invocation = v28;

    if (v9->_selector)
    {
      selector = v9->_selector;
    }

    else
    {
      selector = 0;
    }

    [(NSInvocation *)v9->_invocation setSelector:selector];
    if (*p_classSelector)
    {
      [(NSInvocation *)v9->_invocation setTarget:class];
    }
  }

  if (numberOfArguments >= 3)
  {
    v49 = methodSelector;
    v31 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:numberOfArguments - 2];
    for (j = 2; j != numberOfArguments; ++j)
    {
      parameters = [descriptorCopy parameters];
      v34 = [parameters objectAtIndexedSubscript:j - 2];
      type = [v34 type];

      if (type == 3)
      {
        v36 = [v19 getArgumentTypeAtIndex:j];
        if (*v36 == 100)
        {
          if (v36[1])
          {
            type = 3;
          }

          else
          {
            type = 4;
          }
        }

        else
        {
          type = 3;
        }
      }

      v37 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
      [v31 addObject:v37];
    }

    v38 = [v31 copy];
    argTypes = v9->_argTypes;
    v9->_argTypes = v38;

    methodSelector = v49;
  }

LABEL_38:
  return v9;
}

- (TMLMethodCall)callWithArguments:(id)arguments
{
  v4 = [(TMLMethodCall *)self _callWithArguments:arguments];
  v5 = [[TMLValue alloc] initWithValue:v4 valueType:[(TMLMethodDescriptor *)self->_methodDescriptor returnType]];

  return v5;
}

- (id)_callWithArguments:(id)arguments
{
  v3 = MEMORY[0x28223BE20](self, a2, arguments);
  v157[1] = *MEMORY[0x277D85DE8];
  v5 = v4;
  v6 = [v5 count];
  parameters = [*(v3 + 8) parameters];
  v8 = [parameters count] + 1;

  if (v6 != v8)
  {
    v96 = MEMORY[0x277CBEAD8];
    v97 = MEMORY[0x277CCACA8];
    methodSelector = [*(v3 + 8) methodSelector];
    if (*(v3 + 16))
    {
      v99 = *(v3 + 16);
    }

    else
    {
      v99 = 0;
    }

    v100 = NSStringFromSelector(v99);
    v100 = [v97 stringWithFormat:@"Argument count mismatch for method %@ with selector %@", methodSelector, v100];
    v102 = *(v3 + 8);
    v156 = @"method";
    v157[0] = v102;
    v103 = MEMORY[0x277CBEAC0];
    v104 = v157;
    v105 = &v156;
LABEL_100:
    v109 = [v103 dictionaryWithObjects:v104 forKeys:v105 count:1];
    v110 = [v96 exceptionWithName:@"TMLRuntimeException" reason:v100 userInfo:v109];
    v111 = v110;

    objc_exception_throw(v110);
  }

  firstObject = [v5 firstObject];
  v10 = [v5 count];
  if (v10 >= 2)
  {
    v11 = v10;
    for (i = 1; i != v11; ++i)
    {
      v13 = [v5 objectAtIndexedSubscript:i];
      v14 = [*(v3 + 48) objectAtIndexedSubscript:i - 1];
      null = +[TMLJSEnvironment normalizeValue:toType:](TMLJSEnvironment, "normalizeValue:toType:", v13, [v14 unsignedIntegerValue]);

      if (!null)
      {
        null = [MEMORY[0x277CBEB68] null];
      }

      if (v13 != null)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v16 = [v5 mutableCopy];

          v5 = v16;
        }

        [v5 replaceObjectAtIndex:i withObject:null];
      }
    }

    if (*(v3 + 40))
    {
      v117 = (v3 + 40);
      v118 = v3;
      v112 = firstObject;
      v116 = v5;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v154 = 0u;
      v155 = 0u;
      v152 = 0u;
      v153 = 0u;
      v22 = v11 - 1;
      v151 = 0u;
      v143 = 0u;
      v23 = v138;
      v24 = v145;
      v142 = 0u;
      v141 = 0u;
      v25 = v146;
      v140 = 0u;
      v139 = 0u;
      v115 = v22;
      while (1)
      {
        v119 = v23;
        v26 = [*(v118 + 48) objectAtIndexedSubscript:v21];
        unsignedIntegerValue = [v26 unsignedIntegerValue];

        switch(unsignedIntegerValue)
        {
          case 2:
            v59 = [v116 objectAtIndexedSubscript:v21 + 1];
            *(&v150[14] + v21) = [v59 BOOLValue];

            v37 = *v117;
            v38 = &v150[14] + v21;
            goto LABEL_37;
          case 3:
            v57 = [v116 objectAtIndexedSubscript:v21 + 1];
            [v57 floatValue];
            v55 = v22;
            *(&v150[9] + v21 + 1) = v58;

            v37 = *v117;
            v38 = &v150[9] + v17 + 4;
            goto LABEL_36;
          case 4:
            v53 = [v116 objectAtIndexedSubscript:v21 + 1];
            [v53 doubleValue];
            v55 = v22;
            v56 = v150;
            v150[v21] = v62;
            goto LABEL_35;
          case 5:
            v53 = [v116 objectAtIndexedSubscript:v21 + 1];
            unsignedIntegerValue2 = [v53 unsignedIntegerValue];
            v55 = v22;
            v56 = &v148;
            goto LABEL_34;
          case 6:
            v53 = [v116 objectAtIndexedSubscript:v21 + 1];
            unsignedIntegerValue2 = [v53 integerValue];
            v55 = v22;
            v56 = &v149;
            goto LABEL_34;
          case 7:
            v53 = [v116 objectAtIndexedSubscript:v21 + 1];
            unsignedIntegerValue2 = [v53 unsignedLongLongValue];
            v55 = v22;
            v56 = &v147;
LABEL_34:
            v56[v21] = unsignedIntegerValue2;
LABEL_35:

            v37 = *v117;
            v38 = &v56[v20 / 8];
LABEL_36:
            v22 = v55;
            goto LABEL_37;
          case 8:
            v44 = &v146[v19 + 1056];
            v45 = [v116 objectAtIndexedSubscript:v21 + 1];
            [v45 CGSizeValue];
            goto LABEL_43;
          case 9:
            v44 = &v146[v18 + 768];
            v45 = [v116 objectAtIndexedSubscript:v21 + 1];
            [v45 CGRectValue];
            goto LABEL_41;
          case 10:
            v44 = &v146[v19 + 576];
            v45 = [v116 objectAtIndexedSubscript:v21 + 1];
            [v45 CGPointValue];
            goto LABEL_43;
          case 11:
            v60 = [v116 objectAtIndexedSubscript:v21 + 1];
            v61 = v60;
            if (v60)
            {
              objc_msgSend_CGAffineTransformValue(v60);
            }

            else
            {
              v129 = 0u;
              v130 = 0u;
              v128 = 0u;
            }

            v43 = v119;
            v67 = v129;
            *v25 = v128;
            v25[1] = v67;
            v25[2] = v130;

            v68 = *v117;
            v69 = v21 + 2;
            v70 = v25;
            goto LABEL_54;
          case 12:
            v64 = [v116 objectAtIndexedSubscript:v21 + 1];
            v65 = v64;
            if (v64)
            {
              objc_msgSend_CATransform3DValue(v64);
            }

            else
            {
              v134 = 0u;
              v135 = 0u;
              v132 = 0u;
              v133 = 0u;
              v130 = 0u;
              v131 = 0u;
              v128 = 0u;
              v129 = 0u;
            }

            v43 = v119;
            v71 = v133;
            v72 = &v145[v19];
            v72[4] = v132;
            v72[5] = v71;
            v73 = v135;
            v72[6] = v134;
            v72[7] = v73;
            v74 = v129;
            *v72 = v128;
            v72[1] = v74;
            v75 = v131;
            v72[2] = v130;
            v72[3] = v75;

            v68 = *v117;
            v69 = v21 + 2;
            v70 = v24;
LABEL_54:
            [v68 setArgument:v70 atIndex:v69];
            goto LABEL_47;
          case 13:
            v44 = &v144[v18 + 512];
            v45 = [v116 objectAtIndexedSubscript:v21 + 1];
            [v45 UIEdgeInsetsValue];
            goto LABEL_41;
          case 14:
            v44 = &v144[v19];
            v45 = [v116 objectAtIndexedSubscript:v21 + 1];
            *v44 = [v45 rangeValue];
            *(v44 + 1) = v46;
            goto LABEL_44;
          case 15:
            v66 = [v116 objectAtIndexedSubscript:v21 + 1];
            *(&v140 + v21) = v66;

            v37 = *v117;
            v38 = &v140 + v20;
            v22 = v115;
            goto LABEL_37;
          case 16:
          case 17:
          case 18:
          case 19:
          case 20:
          case 21:
          case 22:
          case 23:
          case 24:
          case 25:
            v28 = v19;
            v29 = v18;
            v30 = v17;
            v31 = [v116 objectAtIndexedSubscript:v21 + 1];
            v32 = *(&v152 + v21);
            *(&v152 + v21) = v31;

            v33 = *(&v152 + v21);
            null2 = [MEMORY[0x277CBEB68] null];

            if (v33 == null2)
            {
              v35 = *(&v152 + v21);
              *(&v152 + v21) = 0;
            }

            [*v117 setArgument:&v152 + v20 atIndex:v21 + 2];
            v17 = v30;
            v18 = v29;
            v19 = v28;
            v22 = v115;
            goto LABEL_46;
          case 27:
            v40 = [v116 objectAtIndexedSubscript:v21 + 1];
            objCType = [v40 objCType];

            methodSignature = [*v117 methodSignature];
            v113 = [methodSignature getArgumentTypeAtIndex:v21 + 2];

            if (strcmp(objCType, v113))
            {
              v96 = MEMORY[0x277CBEAD8];
              v106 = MEMORY[0x277CCACA8];
              methodSelector = [*(v118 + 8) methodSelector];
              if (*(v118 + 16))
              {
                v107 = *(v118 + 16);
              }

              else
              {
                v107 = 0;
              }

              v100 = NSStringFromSelector(v107);
              v100 = [v106 stringWithFormat:@"Struct argument type mismatch for method %@ with selector %@", methodSelector, v100];
              v108 = *(v118 + 8);
              v136 = @"method";
              v137 = v108;
              v103 = MEMORY[0x277CBEAC0];
              v104 = &v137;
              v105 = &v136;
              goto LABEL_100;
            }

            v42 = [v116 objectAtIndexedSubscript:v21 + 1];
            v43 = v119;
            [v42 getValue:v119];

            [*v117 setArgument:v119 atIndex:v21 + 2];
            v22 = v115;
LABEL_47:
            ++v21;
            v20 += 8;
            v19 += 16;
            v23 = v43 + 64;
            v24 += 8;
            v25 += 3;
            v18 += 32;
            v17 += 4;
            if (v22 == v21)
            {
              v5 = v116;
              v78 = v117;
              firstObject = v112;
              v3 = v118;
              goto LABEL_61;
            }

            break;
          case 28:
            v128 = 0uLL;
            v39 = [v116 objectAtIndexedSubscript:v21 + 1];
            [v39 getValue:&v128];

            *&v146[v19 + 416] = v128;
            v37 = *v117;
            v38 = &v146[v19 + 416];
            goto LABEL_37;
          case 29:
            v44 = &v138[v19 + 544];
            v45 = [v116 objectAtIndexedSubscript:v21 + 1];
            [v45 UIOffsetValue];
LABEL_43:
            *v44 = v51;
            *(v44 + 1) = v52;
            goto LABEL_44;
          case 30:
            v44 = &v144[v18 + 192];
            v45 = [v116 objectAtIndexedSubscript:v21 + 1];
            [v45 directionalEdgeInsetsValue];
LABEL_41:
            *v44 = v47;
            *(v44 + 1) = v48;
            *(v44 + 2) = v49;
            *(v44 + 3) = v50;
LABEL_44:

            v37 = *v117;
            v63 = v21 + 2;
            v38 = v44;
            goto LABEL_45;
          default:
            v36 = *(&v152 + v21);
            *(&v152 + v21) = 0;

            v37 = *v117;
            v38 = &v152 + v20;
LABEL_37:
            v63 = v21 + 2;
LABEL_45:
            [v37 setArgument:v38 atIndex:v63];
LABEL_46:
            v43 = v119;
            goto LABEL_47;
        }
      }
    }

    goto LABEL_57;
  }

  v78 = (v3 + 40);
  if (!*(v3 + 40))
  {
LABEL_57:
    if (*(v3 + 24) == 1)
    {
      v76 = objc_opt_class();

      firstObject = v76;
    }

    if (*(v3 + 16))
    {
      v77 = *(v3 + 16);
    }

    else
    {
      v77 = 0;
    }

    v81 = (*(*(v3 + 32) + 16))(*(v3 + 32), firstObject, v77, v5);
    goto LABEL_72;
  }

  v154 = 0u;
  v155 = 0u;
  v152 = 0u;
  v153 = 0u;
  v151 = 0u;
  v143 = 0u;
  v142 = 0u;
  v141 = 0u;
  v140 = 0u;
  v139 = 0u;
LABEL_61:
  v79 = *(v3 + 40);
  if (*(v3 + 24))
  {
    [v79 invoke];
  }

  else
  {
    [v79 invokeWithTarget:firstObject];
  }

  returnType = [*(v3 + 8) returnType];
  v81 = 0;
  switch(returnType)
  {
    case 2:
      LOBYTE(v128) = 0;
      [*v78 getReturnValue:&v128];
      v82 = [MEMORY[0x277CCABB0] numberWithBool:v128];
      goto LABEL_66;
    case 3:
      LODWORD(v128) = 0;
      [*v78 getReturnValue:&v128];
      LODWORD(v89) = v128;
      v82 = [MEMORY[0x277CCABB0] numberWithFloat:v89];
      goto LABEL_66;
    case 4:
      *&v128 = 0;
      [*v78 getReturnValue:&v128];
      v82 = [MEMORY[0x277CCABB0] numberWithDouble:*&v128];
      goto LABEL_66;
    case 5:
      *&v128 = 0;
      [*v78 getReturnValue:&v128];
      v82 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v128];
      goto LABEL_66;
    case 6:
      *&v128 = 0;
      [*v78 getReturnValue:&v128];
      v82 = [MEMORY[0x277CCABB0] numberWithInteger:v128];
      goto LABEL_66;
    case 7:
      *&v128 = 0;
      [*v78 getReturnValue:&v128];
      v82 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v128];
      goto LABEL_66;
    case 8:
      v128 = *MEMORY[0x277CBF3A8];
      [*v78 getReturnValue:&v128];
      v82 = [MEMORY[0x277CCAE60] valueWithCGSize:v128];
      goto LABEL_66;
    case 9:
      v88 = *(MEMORY[0x277CBF3A0] + 16);
      v128 = *MEMORY[0x277CBF3A0];
      v129 = v88;
      [*v78 getReturnValue:&v128];
      v82 = [MEMORY[0x277CCAE60] valueWithCGRect:{v128, v129}];
      goto LABEL_66;
    case 10:
      v128 = *MEMORY[0x277CBF348];
      [*v78 getReturnValue:&v128];
      v82 = [MEMORY[0x277CCAE60] valueWithCGPoint:v128];
      goto LABEL_66;
    case 11:
      v90 = *(MEMORY[0x277CBF2C0] + 16);
      v128 = *MEMORY[0x277CBF2C0];
      v129 = v90;
      v130 = *(MEMORY[0x277CBF2C0] + 32);
      [*v78 getReturnValue:&v128];
      v120 = v128;
      v121 = v129;
      v122 = v130;
      v82 = [MEMORY[0x277CCAE60] valueWithCGAffineTransform:&v120];
      goto LABEL_66;
    case 12:
      v91 = *(MEMORY[0x277CD9DE8] + 80);
      v132 = *(MEMORY[0x277CD9DE8] + 64);
      v133 = v91;
      v92 = *(MEMORY[0x277CD9DE8] + 112);
      v134 = *(MEMORY[0x277CD9DE8] + 96);
      v135 = v92;
      v93 = *(MEMORY[0x277CD9DE8] + 16);
      v128 = *MEMORY[0x277CD9DE8];
      v129 = v93;
      v94 = *(MEMORY[0x277CD9DE8] + 48);
      v130 = *(MEMORY[0x277CD9DE8] + 32);
      v131 = v94;
      [*v78 getReturnValue:&v128];
      v124 = v132;
      v125 = v133;
      v126 = v134;
      v127 = v135;
      v120 = v128;
      v121 = v129;
      v122 = v130;
      v123 = v131;
      v82 = [MEMORY[0x277CCAE60] valueWithCATransform3D:&v120];
      goto LABEL_66;
    case 13:
      v87 = *(MEMORY[0x277D768C8] + 16);
      v128 = *MEMORY[0x277D768C8];
      v129 = v87;
      [*v78 getReturnValue:&v128];
      v82 = [MEMORY[0x277CCAE60] valueWithUIEdgeInsets:{v128, v129}];
      goto LABEL_66;
    case 14:
      v128 = xmmword_26F208C20;
      [*v78 getReturnValue:&v128];
      v82 = [MEMORY[0x277CCAE60] valueWithRange:v128];
      goto LABEL_66;
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
    case 25:
      *&v128 = 0;
      [*v78 getReturnValue:&v128];
      v82 = v128;
      goto LABEL_66;
    case 27:
      v130 = 0u;
      v131 = 0u;
      v128 = 0u;
      v129 = 0u;
      [*v78 getReturnValue:&v128];
      methodSignature2 = [*v78 methodSignature];
      methodReturnType = [methodSignature2 methodReturnType];

      v82 = [MEMORY[0x277CCAE60] valueWithBytes:&v128 objCType:methodReturnType];
      goto LABEL_66;
    case 28:
      v128 = 0uLL;
      [*v78 getReturnValue:&v128];
      v82 = [MEMORY[0x277CCAE60] value:&v128 withObjCType:"{CGVector=dd}"];
      goto LABEL_66;
    case 29:
      v128 = *MEMORY[0x277D76DA8];
      [*v78 getReturnValue:&v128];
      v82 = [MEMORY[0x277CCAE60] valueWithUIOffset:v128];
      goto LABEL_66;
    case 30:
      v95 = *(MEMORY[0x277D75060] + 16);
      v128 = *MEMORY[0x277D75060];
      v129 = v95;
      [*v78 getReturnValue:&v128];
      v82 = [MEMORY[0x277CCAE60] valueWithDirectionalEdgeInsets:{v128, v129}];
LABEL_66:
      v81 = v82;
      break;
    default:
      break;
  }

  for (j = 72; j != -8; j -= 8)
  {
  }

LABEL_72:

  return v81;
}

@end