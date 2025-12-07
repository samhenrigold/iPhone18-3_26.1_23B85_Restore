uint64_t xmlSchemaPGetBoolNodeValue(uint64_t a1, xmlNode *cur)
{
  Content = xmlNodeGetContent(cur);
  if (!xmlStrEqual(Content, "true"))
  {
    if (!xmlStrEqual(Content, "false"))
    {
      if (xmlStrEqual(Content, "1"))
      {
        goto LABEL_2;
      }

      if (!xmlStrEqual(Content, "0"))
      {
        BuiltInType = xmlSchemaGetBuiltInType(XML_SCHEMAS_BOOLEAN);
        xmlSchemaPSimpleTypeErr(a1, 1714, cur, BuiltInType, 0, Content, 0, 0);
      }
    }

    v5 = 0;
    if (!Content)
    {
      return v5;
    }

    goto LABEL_3;
  }

LABEL_2:
  v5 = 1;
  if (Content)
  {
LABEL_3:
    free(Content);
  }

  return v5;
}

void *xmlSchemaParseModelGroup(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  if (!a3)
  {
    return 0;
  }

  v6 = a4;
  v10 = xmlSchemaAddModelGroup(a1, a2, a4, a3);
  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  if (!a5)
  {
    v18 = *(a3 + 88);
    if (!v18)
    {
LABEL_14:
      v64 = 0x100000001;
      v20 = v11;
LABEL_25:
      PropNode = xmlSchemaGetPropNode(a3, "id");
      if (PropNode)
      {
        xmlSchemaPValAttrNodeID(a1, PropNode);
      }

      v67 = 0;
      v26 = *(a3 + 24);
      v63 = v11;
      if (!v26)
      {
        goto LABEL_143;
      }

      if (v26->ns && xmlStrEqual(v26->name, "annotation") && xmlStrEqual(v26->ns->href, "http://www.w3.org/2001/XMLSchema"))
      {
        v11[1] = xmlSchemaParseAnnotation(a1, v26, 1);
        v26 = v26->next;
      }

      if (v6 == 8)
      {
        if (v26)
        {
          v27 = 0;
          v65 = 0;
          while (v26->ns && xmlStrEqual(v26->name, "element") && xmlStrEqual(v26->ns->href, "http://www.w3.org/2001/XMLSchema"))
          {
            v28 = xmlSchemaParseElement(a1, a2, v26, &v67, 0);
            if (v28)
            {
              v29 = v28;
              v30 = v65;
              if (v67)
              {
                v30 = v65 + 1;
              }

              v65 = v30;
              if (SLODWORD(v28->last) >= 2)
              {
                xmlSchemaPCustomErrExt(a1, 3091, 0, v26, "Invalid value for minOccurs (must be 0 or 1)", 0, 0, 0);
                LODWORD(v29->last) = 1;
              }

              if (SHIDWORD(v29->last) >= 2)
              {
                xmlSchemaPCustomErrExt(a1, 3091, 0, v26, "Invalid value for maxOccurs (must be 0 or 1)", 0, 0, 0);
                HIDWORD(v29->last) = 1;
              }

              p_name = &v27->name;
              if (!v27)
              {
                p_name = (v63 + 24);
              }

              *p_name = v29;
              v27 = v29;
            }

            v26 = v26->next;
            if (!v26)
            {
              goto LABEL_147;
            }
          }

          v58 = "(annotation?, (annotation?, element*)";
          goto LABEL_146;
        }

LABEL_143:
        v65 = 0;
        goto LABEL_147;
      }

      if (!v26)
      {
        goto LABEL_143;
      }

      v32 = 0;
      v33 = 0;
      v65 = 0;
      v34 = v11 + 3;
      while (1)
      {
        if (!v26->ns || (!xmlStrEqual(v26->name, "element") || !xmlStrEqual(v26->ns->href, "http://www.w3.org/2001/XMLSchema")) && (!v26->ns || (!xmlStrEqual(v26->name, "group") || !xmlStrEqual(v26->ns->href, "http://www.w3.org/2001/XMLSchema")) && (!v26->ns || (!xmlStrEqual(v26->name, "any") || !xmlStrEqual(v26->ns->href, "http://www.w3.org/2001/XMLSchema")) && (!v26->ns || (!xmlStrEqual(v26->name, "choice") || !xmlStrEqual(v26->ns->href, "http://www.w3.org/2001/XMLSchema")) && (!v26->ns || !xmlStrEqual(v26->name, "sequence") || !xmlStrEqual(v26->ns->href, "http://www.w3.org/2001/XMLSchema"))))))
        {
          v58 = "(annotation?, (element | group | choice | sequence | any)*)";
LABEL_146:
          xmlSchemaPContentErr(a1, 3033, a3, v26, 0, v58);
          goto LABEL_147;
        }

        if (v26->ns)
        {
          if (xmlStrEqual(v26->name, "element") && xmlStrEqual(v26->ns->href, "http://www.w3.org/2001/XMLSchema"))
          {
            v35 = xmlSchemaParseElement(a1, a2, v26, &v67, 0);
            v33 = v35;
            if (v35)
            {
              v36 = v67 == 0;
            }

            else
            {
              v36 = 1;
            }

            v37 = v65;
            if (!v36)
            {
              v37 = v65 + 1;
            }

            v65 = v37;
            if (!v35)
            {
              goto LABEL_126;
            }

            goto LABEL_123;
          }

          if (v26->ns)
          {
            if (xmlStrEqual(v26->name, "group") && xmlStrEqual(v26->ns->href, "http://www.w3.org/2001/XMLSchema"))
            {
              v38 = xmlSchemaParseModelGroupDefRef(a1, a2, v26);
              v33 = v38;
              v39 = v65;
              if (v38)
              {
                v39 = v65 + 1;
              }

              v65 = v39;
              if (*(a1 + 188))
              {
                v40 = *(a1 + 216);
                if (v40)
                {
                  if (v38 && **(v40 + 8) == 17)
                  {
                    v41 = v38[3];
                    if (!v41)
                    {
                      goto LABEL_123;
                    }

                    v42 = *(v40 + 32);
                    if (*(v41 + 24) != v42)
                    {
                      goto LABEL_123;
                    }

                    v43 = *(v40 + 40);
                    if (*(v41 + 32) != v43)
                    {
                      goto LABEL_123;
                    }

                    if (*(a1 + 224))
                    {
                      v66 = 0;
                      v44 = xmlSchemaFormatQName(&v66, v43, v42);
                      xmlSchemaCustomErr4(a1, 0xC09u, v26, 0, "The redefining model group definition '%s' must not contain more than one reference to the redefined definition", v44, 0, 0, 0);
                    }

                    else
                    {
                      if (*(v38 + 8) == 1 && *(v38 + 9) == 1)
                      {
                        goto LABEL_141;
                      }

                      v66 = 0;
                      v57 = xmlSchemaFormatQName(&v66, v43, v42);
                      xmlSchemaCustomErr4(a1, 0xC09u, v26, 0, "The redefining model group definition '%s' must not contain a reference to the redefined definition with a maxOccurs/minOccurs other than 1", v57, 0, 0, 0);
                    }

                    if (v66)
                    {
                      free(v66);
                    }

                    v33 = 0;
LABEL_141:
                    *(*(a1 + 216) + 16) = v33;
                    ++*(a1 + 224);
                    if (!v33)
                    {
                      goto LABEL_126;
                    }

LABEL_123:
                    v55 = (v32 + 16);
                    if (!v32)
                    {
                      v55 = v34;
                    }

                    *v55 = v33;
                    v32 = v33;
                    goto LABEL_126;
                  }
                }
              }

              goto LABEL_122;
            }

            if (v26->ns)
            {
              if (xmlStrEqual(v26->name, "any") && xmlStrEqual(v26->ns->href, "http://www.w3.org/2001/XMLSchema"))
              {
                properties = v26->properties;
                if (properties)
                {
                  while (1)
                  {
                    v46 = *(properties + 72);
                    if (!v46)
                    {
                      break;
                    }

                    if (xmlStrEqual(*(v46 + 16), "http://www.w3.org/2001/XMLSchema"))
                    {
                      goto LABEL_97;
                    }

LABEL_103:
                    properties = *(properties + 48);
                    if (!properties)
                    {
                      goto LABEL_104;
                    }
                  }

                  if (xmlStrEqual(*(properties + 16), "id") || xmlStrEqual(*(properties + 16), "minOccurs") || xmlStrEqual(*(properties + 16), "maxOccurs") || xmlStrEqual(*(properties + 16), "namespace") || xmlStrEqual(*(properties + 16), "processContents"))
                  {
                    goto LABEL_103;
                  }

LABEL_97:
                  xmlSchemaPIllegalAttrErr(a1, properties);
                  goto LABEL_103;
                }

LABEL_104:
                v47 = xmlSchemaGetPropNode(v26, "id");
                if (v47)
                {
                  xmlSchemaPValAttrNodeID(a1, v47);
                }

                MaxOccurs = xmlGetMaxOccurs(a1, v26, 0, 0x40000000, "(xs:nonNegativeInteger | unbounded)");
                HIDWORD(v62) = xmlGetMinOccurs(a1, v26, -1, "xs:nonNegativeInteger");
                xmlSchemaPCheckParticleCorrect_2(a1, v26, SHIDWORD(v62), MaxOccurs);
                v49 = xmlSchemaAddWildcard(a1, a2, 2, v26);
                if (v49)
                {
                  LODWORD(v62) = MaxOccurs;
                  v60 = v49;
                  xmlSchemaParseWildcardNs(a1, v49, v26);
                  children = v26->children;
                  if (children)
                  {
                    if (*(children + 72) && xmlStrEqual(*(children + 16), "annotation") && xmlStrEqual(*(*(children + 72) + 16), "http://www.w3.org/2001/XMLSchema"))
                    {
                      v61 = xmlSchemaParseAnnotation(a1, children, 1);
                      children = *(children + 48);
                      if (!children)
                      {
                        goto LABEL_131;
                      }
                    }

                    else
                    {
                      v61 = 0;
                    }

                    xmlSchemaPContentErr(a1, 3033, v26, children, 0, "(annotation?)");
                  }

                  else
                  {
                    v61 = 0;
                  }

LABEL_131:
                  if (v62)
                  {
                    v56 = xmlSchemaAddParticle(a1, v26, SHIDWORD(v62), v62);
                    v33 = v56;
                    if (v56)
                    {
                      v56[1] = v61;
                      v56[3] = v60;
                      goto LABEL_123;
                    }

                    goto LABEL_126;
                  }
                }

                v33 = 0;
                goto LABEL_126;
              }

              if (v26->ns)
              {
                if (xmlStrEqual(v26->name, "choice") && xmlStrEqual(v26->ns->href, "http://www.w3.org/2001/XMLSchema"))
                {
                  v51 = a1;
                  v52 = a2;
                  v53 = v26;
                  v54 = 7;
LABEL_121:
                  v33 = xmlSchemaParseModelGroup(v51, v52, v53, v54, 1);
                  goto LABEL_122;
                }

                if (v26->ns && xmlStrEqual(v26->name, "sequence") && xmlStrEqual(v26->ns->href, "http://www.w3.org/2001/XMLSchema"))
                {
                  v51 = a1;
                  v52 = a2;
                  v53 = v26;
                  v54 = 6;
                  goto LABEL_121;
                }
              }
            }
          }
        }

LABEL_122:
        if (v33)
        {
          goto LABEL_123;
        }

LABEL_126:
        v26 = v26->next;
        if (!v26)
        {
LABEL_147:
          if (v64)
          {
            if (v65 && (xmlSchemaAddItemSize((*(a1 + 48) + 40), 10, v63) & 0x80000000) != 0)
            {
              ++*(a1 + 36);
              __xmlSimpleError(0x10u, 2, 0, 0, 0);
            }

            return v20;
          }

          return 0;
        }
      }
    }

    while (1)
    {
      v19 = *(v18 + 72);
      if (!v19)
      {
        break;
      }

      if (xmlStrEqual(*(v19 + 16), "http://www.w3.org/2001/XMLSchema"))
      {
        goto LABEL_9;
      }

LABEL_10:
      v18 = *(v18 + 48);
      if (!v18)
      {
        goto LABEL_14;
      }
    }

    if (xmlStrEqual(*(v18 + 16), "id"))
    {
      goto LABEL_10;
    }

LABEL_9:
    xmlSchemaPIllegalAttrErr(a1, v18);
    goto LABEL_10;
  }

  if (v6 == 8)
  {
    MinOccurs = xmlGetMinOccurs(a1, a3, 1, "(0 | 1)");
    v13 = "1";
    v14 = a1;
    v15 = a3;
    v16 = 1;
    v17 = 1;
  }

  else
  {
    MinOccurs = xmlGetMinOccurs(a1, a3, -1, "xs:nonNegativeInteger");
    v13 = "(xs:nonNegativeInteger | unbounded)";
    v14 = a1;
    v15 = a3;
    v16 = 0;
    v17 = 0x40000000;
  }

  v21 = xmlGetMaxOccurs(v14, v15, v16, v17, v13);
  xmlSchemaPCheckParticleCorrect_2(a1, a3, MinOccurs, v21);
  v22 = xmlSchemaAddParticle(a1, a3, MinOccurs, v21);
  v20 = v22;
  if (v22)
  {
    v64 = __PAIR64__(MinOccurs, v21);
    v22[3] = v11;
    v23 = *(a3 + 88);
    if (v23)
    {
      while (1)
      {
        v24 = *(v23 + 72);
        if (!v24)
        {
          break;
        }

        if (xmlStrEqual(*(v24 + 16), "http://www.w3.org/2001/XMLSchema"))
        {
          goto LABEL_20;
        }

LABEL_24:
        v23 = *(v23 + 48);
        if (!v23)
        {
          goto LABEL_25;
        }
      }

      if (xmlStrEqual(*(v23 + 16), "id") || xmlStrEqual(*(v23 + 16), "maxOccurs") || xmlStrEqual(*(v23 + 16), "minOccurs"))
      {
        goto LABEL_24;
      }

LABEL_20:
      xmlSchemaPIllegalAttrErr(a1, v23);
      goto LABEL_24;
    }

    goto LABEL_25;
  }

  return v20;
}

void *xmlSchemaParseModelGroupDefRef(xmlError *a1, uint64_t a2, uint64_t a3)
{
  str2 = 0;
  v19 = 0;
  if (!a3)
  {
    return 0;
  }

  PropNode = xmlSchemaGetPropNode(a3, "ref");
  if (!PropNode)
  {
    xmlSchemaPMissingAttrErr(a1, a3, "ref");
    return 0;
  }

  v7 = PropNode;
  NodeContent = xmlSchemaGetNodeContent(a1, PropNode);
  if (xmlSchemaPValAttrNodeQNameValue(a1, a2, v7, NodeContent, &str2, &v19))
  {
    return 0;
  }

  v9 = str2;
  xmlSchemaCheckReference(a1, a3, v7, str2);
  MinOccurs = xmlGetMinOccurs(a1, a3, -1, "xs:nonNegativeInteger");
  MaxOccurs = xmlGetMaxOccurs(a1, a3, 0, 0x40000000, "(xs:nonNegativeInteger | unbounded)");
  v12 = *(a3 + 88);
  if (v12)
  {
    while (1)
    {
      v13 = *(v12 + 72);
      if (!v13)
      {
        break;
      }

      if (xmlStrEqual(*(v13 + 16), "http://www.w3.org/2001/XMLSchema"))
      {
        goto LABEL_7;
      }

LABEL_12:
      v12 = *(v12 + 48);
      if (!v12)
      {
        goto LABEL_13;
      }
    }

    if (xmlStrEqual(*(v12 + 16), "ref") || xmlStrEqual(*(v12 + 16), "id") || xmlStrEqual(*(v12 + 16), "minOccurs") || xmlStrEqual(*(v12 + 16), "maxOccurs"))
    {
      goto LABEL_12;
    }

LABEL_7:
    xmlSchemaPIllegalAttrErr(a1, v12);
    goto LABEL_12;
  }

LABEL_13:
  v14 = xmlSchemaGetPropNode(a3, "id");
  if (v14)
  {
    xmlSchemaPValAttrNodeID(a1, v14);
  }

  result = xmlSchemaAddParticle(a1, a3, MinOccurs, MaxOccurs);
  if (result)
  {
    v16 = result;
    result[3] = xmlSchemaNewQNameRef(a1, 17, v19, v9);
    xmlSchemaPCheckParticleCorrect_2(a1, a3, MinOccurs, MaxOccurs);
    v17 = *(a3 + 24);
    if (v17)
    {
      if (!*(v17 + 72) || !xmlStrEqual(*(v17 + 16), "annotation") || !xmlStrEqual(*(*(v17 + 72) + 16), "http://www.w3.org/2001/XMLSchema") || (*(v16 + 8) = xmlSchemaParseAnnotation(a1, v17, 1), (v17 = *(v17 + 48)) != 0))
      {
        xmlSchemaPContentErr(a1, 3033, a3, v17, 0, "(annotation?)");
      }
    }

    if (MinOccurs | MaxOccurs)
    {
      return v16;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t xmlSchemaParseLocalAttributes(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t **a4, int a5, _DWORD *a6)
{
  v6 = *a3;
  if (!*a3)
  {
    return 0;
  }

  v9 = "attributeGroup";
  v10 = "name";
  while (1)
  {
    if (*(v6 + 72))
    {
      v11 = xmlStrEqual(*(v6 + 16), "attribute");
      v6 = *a3;
      if (v11)
      {
        if (xmlStrEqual(*(*(v6 + 72) + 16), "http://www.w3.org/2001/XMLSchema"))
        {
          goto LABEL_11;
        }

        v6 = *a3;
      }

      if (!v6)
      {
        return 0;
      }
    }

    if (!*(v6 + 72))
    {
      return 0;
    }

    result = xmlStrEqual(*(v6 + 16), v9);
    if (!result)
    {
      return result;
    }

    result = xmlStrEqual(*(*(*a3 + 72) + 16), "http://www.w3.org/2001/XMLSchema");
    if (!result)
    {
      return result;
    }

LABEL_11:
    v13 = *a3;
    if (!*a3)
    {
      goto LABEL_160;
    }

    if (!*(v13 + 72))
    {
      v89 = 0;
      str2 = 0;
      goto LABEL_63;
    }

    v14 = xmlStrEqual(*(v13 + 16), "attribute");
    v13 = *a3;
    if (!v14)
    {
      break;
    }

    v15 = xmlStrEqual(*(*(v13 + 72) + 16), "http://www.w3.org/2001/XMLSchema");
    v13 = *a3;
    if (!v15)
    {
      break;
    }

    v16 = *a4;
    v89 = 0;
    v87 = 0;
    str2 = 0;
    if (!v13)
    {
      goto LABEL_159;
    }

    PropNode = xmlSchemaGetPropNode(v13, "ref");
    if (PropNode)
    {
      NodeContent = xmlSchemaGetNodeContent(a1, PropNode);
      if (xmlSchemaPValAttrNodeQNameValue(a1, a2, PropNode, NodeContent, &str2, &v87) || xmlSchemaCheckReference(a1, v13, PropNode, str2))
      {
        goto LABEL_159;
      }
    }

    v79 = *(a1 + 36);
    v19 = *(v13 + 88);
    if (!v19)
    {
      v78 = 0;
      str1 = 0;
      v80 = 0;
      v81 = 2;
      v29 = 1;
      goto LABEL_96;
    }

    v77 = 0;
    v78 = 0;
    str1 = 0;
    v80 = 0;
    v81 = 2;
    do
    {
      ns = v19->ns;
      if (ns)
      {
        if (!xmlStrEqual(ns->href, "http://www.w3.org/2001/XMLSchema"))
        {
          goto LABEL_56;
        }

LABEL_23:
        xmlSchemaPIllegalAttrErr(a1, v19);
        goto LABEL_56;
      }

      name = v19->name;
      if (PropNode)
      {
        if (xmlStrEqual(name, "id"))
        {
          goto LABEL_26;
        }

        if (xmlStrEqual(v19->name, "ref"))
        {
          goto LABEL_56;
        }
      }

      else
      {
        if (xmlStrEqual(name, v10))
        {
          goto LABEL_56;
        }

        if (xmlStrEqual(v19->name, "id"))
        {
LABEL_26:
          xmlSchemaPValAttrNodeID(a1, v19);
          goto LABEL_56;
        }

        if (xmlStrEqual(v19->name, "type"))
        {
          v22 = xmlSchemaGetNodeContent(a1, v19);
          xmlSchemaPValAttrNodeQNameValue(a1, a2, v19, v22, &str2, &v87);
          goto LABEL_56;
        }

        if (xmlStrEqual(v19->name, "form"))
        {
          v23 = v16;
          v24 = v10;
          v28 = xmlSchemaGetNodeContent(a1, v19);
          if (xmlStrEqual(v28, "qualified"))
          {
            str1 = *(a1 + 200);
          }

          else if (!xmlStrEqual(v28, "unqualified"))
          {
            xmlSchemaPSimpleTypeErr(a1, 3037, v19, 0, "(qualified | unqualified)", v28, 0, 0);
          }

          v77 = 1;
          goto LABEL_55;
        }
      }

      if (xmlStrEqual(v19->name, "use"))
      {
        v23 = v16;
        v24 = v10;
        v25 = xmlSchemaGetNodeContent(a1, v19);
        if (xmlStrEqual(v25, "optional"))
        {
          v26 = 2;
        }

        else
        {
          if (xmlStrEqual(v25, "prohibited"))
          {
            v81 = 0;
            goto LABEL_55;
          }

          if (!xmlStrEqual(v25, "required"))
          {
            xmlSchemaPSimpleTypeErr(a1, 1774, v19, 0, "(optional | prohibited | required)", v25, 0, 0);
            goto LABEL_55;
          }

          v26 = 1;
        }

        v81 = v26;
LABEL_55:
        v10 = v24;
        v16 = v23;
        goto LABEL_56;
      }

      if (xmlStrEqual(v19->name, "default"))
      {
        if (v78)
        {
          goto LABEL_46;
        }

        v78 = xmlSchemaGetNodeContent(a1, v19);
        v27 = 1;
      }

      else
      {
        if (!xmlStrEqual(v19->name, "fixed"))
        {
          goto LABEL_23;
        }

        if (v78)
        {
LABEL_46:
          xmlSchemaPMutualExclAttrErr(a1, 3051, 0, v19);
          goto LABEL_56;
        }

        v78 = xmlSchemaGetNodeContent(a1, v19);
        v27 = 2;
      }

      v80 = v27;
LABEL_56:
      v19 = v19->next;
    }

    while (v19);
    v29 = v77 == 0;
    if (v80 == 1 && v81 != 2)
    {
      xmlSchemaPSimpleTypeErr(a1, 3052, v13, 0, "(optional | prohibited | required)", 0, "The value of the attribute 'use' must be 'optional' if the attribute 'default' is present", 0);
      v80 = 1;
    }

LABEL_96:
    if (v79 != *(a1 + 36))
    {
      goto LABEL_159;
    }

    if (!PropNode)
    {
      if (v29 && (*(a2 + 48) & 2) != 0)
      {
        str1 = *(a1 + 200);
      }

      if (xmlStrEqual(str1, "http://www.w3.org/2001/XMLSchema-instance"))
      {
        xmlSchemaCustomErr4(a1, 0xBF1u, v13, 0, "The target namespace must not match '%s'", "http://www.w3.org/2001/XMLSchema-instance", 0, 0, 0);
      }

      v53 = xmlSchemaGetPropNode(v13, v10);
      if (!v53)
      {
        xmlSchemaPMissingAttrErr(a1, v13, v10);
        goto LABEL_159;
      }

      v54 = v53;
      BuiltInType = xmlSchemaGetBuiltInType(XML_SCHEMAS_NCNAME);
      if (xmlSchemaPValAttrNode(a1, v54, BuiltInType, &v89))
      {
        goto LABEL_159;
      }

      if (xmlStrEqual(v89, "xmlns"))
      {
        v56 = xmlSchemaGetBuiltInType(XML_SCHEMAS_NCNAME);
        xmlSchemaPSimpleTypeErr(a1, 3056, v54, v56, 0, 0, "The value of the attribute must not match 'xmlns'", 0);
        goto LABEL_159;
      }

      if (v81)
      {
        v59 = xmlSchemaAddAttributeUse(a1, v13);
        if (!v59)
        {
          goto LABEL_159;
        }

        v44 = v59;
        v59[12] = v81;
        v60 = xmlSchemaAddAttribute(a1, v89, str1, v13, 0);
        if (!v60)
        {
          goto LABEL_159;
        }

        if (v87)
        {
          v61 = str2;
          v60[6] = v87;
          v60[7] = v61;
        }

        *(v44 + 24) = v60;
        if (v78)
        {
          v60[11] = v78;
          if (v80 == 2)
          {
            v48 = v60 + 15;
            v49 = 512;
LABEL_107:
            *v48 |= v49;
          }
        }

LABEL_108:
        v50 = *(v13 + 24);
        if (v50)
        {
          if (v50->ns && xmlStrEqual(v50->name, "annotation") && xmlStrEqual(v50->ns->href, "http://www.w3.org/2001/XMLSchema"))
          {
            *(v44 + 8) = xmlSchemaParseAnnotation(a1, v50, 1);
            v50 = v50->next;
          }

          if (PropNode)
          {
            if (v50)
            {
              v9 = "attributeGroup";
              if (v50->ns && xmlStrEqual(v50->name, "simpleType") && xmlStrEqual(v50->ns->href, "http://www.w3.org/2001/XMLSchema"))
              {
                v51 = a1;
                v52 = 3054;
              }

              else
              {
                v51 = a1;
                v52 = 3033;
              }

              v72 = v13;
              v73 = v50;
              v74 = "(annotation?)";
              goto LABEL_183;
            }
          }

          else if (v50)
          {
            v9 = "attributeGroup";
            if (v50->ns && xmlStrEqual(v50->name, "simpleType") && xmlStrEqual(v50->ns->href, "http://www.w3.org/2001/XMLSchema"))
            {
              if (*(*(v44 + 24) + 48))
              {
                xmlSchemaPContentErr(a1, 3055, v13, v50, "The attribute 'type' and the <simpleType> child are mutually exclusive", 0);
              }

              else
              {
                *(*(v44 + 24) + 96) = xmlSchemaParseSimpleType(a1, a2, v50, 0);
              }

              v50 = v50->next;
              if (!v50)
              {
                goto LABEL_90;
              }
            }

            v51 = a1;
            v52 = 3033;
            v72 = v13;
            v73 = v50;
            v74 = "(annotation?, simpleType?)";
LABEL_183:
            xmlSchemaPContentErr(v51, v52, v72, v73, 0, v74);
            goto LABEL_90;
          }
        }

LABEL_175:
        v9 = "attributeGroup";
        goto LABEL_90;
      }

LABEL_148:
      v62 = *(v13 + 24);
      if (v62)
      {
        if (!*(v62 + 72) || !xmlStrEqual(*(v62 + 16), "annotation") || !xmlStrEqual(*(*(v62 + 72) + 16), "http://www.w3.org/2001/XMLSchema") || (xmlSchemaParseAnnotation(a1, v62, 0), (v62 = *(v62 + 48)) != 0))
        {
          xmlSchemaPContentErr(a1, 3033, v13, v62, 0, "(annotation?)");
        }
      }

      if (a5 == 13)
      {
        v63 = a1;
        v64 = v13;
        v65 = "Skipping attribute use prohibition, since it is pointless when extending a type";
      }

      else
      {
        if (a5 != 16)
        {
          if (!PropNode)
          {
            v87 = v89;
            str2 = str1;
          }

          if (v16)
          {
            v66 = *(v16 + 2);
            if (v66 >= 1)
            {
              v67 = *v16;
              while (1)
              {
                v68 = *v67;
                if (**v67 == 2001 && v87 == v68[2] && str2 == v68[3])
                {
                  break;
                }

                ++v67;
                if (!--v66)
                {
                  goto LABEL_171;
                }
              }

              v86 = 0;
              v75 = xmlSchemaFormatQName(&v86, str2, v87);
              xmlSchemaCustomWarning(a1, 0xC0Eu, v13, "Skipping duplicate attribute use prohibition '%s'", v75, 0, 0);
              if (v86)
              {
                free(v86);
              }

              goto LABEL_159;
            }
          }

LABEL_171:
          v69 = xmlSchemaAddAttributeUseProhib(a1);
          if (!v69)
          {
            goto LABEL_159;
          }

          v44 = v69;
          v71 = v87;
          v70 = str2;
          v69[1] = v13;
          v69[2] = v71;
          v69[3] = v70;
          if (PropNode && (xmlSchemaAddItemSize((*(a1 + 48) + 40), 10, v69) & 0x80000000) != 0)
          {
            ++*(a1 + 36);
            __xmlSimpleError(0x10u, 2, 0, 0, 0);
          }

          goto LABEL_175;
        }

        v63 = a1;
        v64 = v13;
        v65 = "Skipping attribute use prohibition, since it is pointless inside an <attributeGroup>";
      }

      xmlSchemaCustomWarning(v63, 0xC0Eu, v64, v65, 0, 0, 0);
      goto LABEL_159;
    }

    if (!v81)
    {
      goto LABEL_148;
    }

    v46 = xmlSchemaAddAttributeUse(a1, v13);
    if (v46)
    {
      v44 = v46;
      if ((xmlSchemaAddItemSize((*(a1 + 48) + 40), 10, v46) & 0x80000000) != 0)
      {
        ++*(a1 + 36);
        __xmlSimpleError(0x10u, 2, 0, 0, 0);
      }

      *(v44 + 48) = v81;
      v47 = xmlSchemaNewQNameRef(a1, 15, v87, str2);
      if (v47)
      {
        *(v44 + 24) = v47;
        if (v78)
        {
          *(v44 + 56) = v78;
        }

        if (v80 == 2)
        {
          v48 = (v44 + 32);
          v49 = 1;
          goto LABEL_107;
        }

        goto LABEL_108;
      }
    }

LABEL_159:
    v9 = "attributeGroup";
LABEL_160:
    v6 = *(*a3 + 48);
    *a3 = v6;
    if (!v6)
    {
      return 0;
    }
  }

  v89 = 0;
  str2 = 0;
  if (!v13)
  {
    goto LABEL_160;
  }

LABEL_63:
  v30 = v10;
  v31 = xmlSchemaGetPropNode(v13, "ref");
  if (!v31)
  {
    xmlSchemaPMissingAttrErr(a1, v13, "ref");
    goto LABEL_160;
  }

  v32 = v31;
  v33 = xmlSchemaGetNodeContent(a1, v31);
  xmlSchemaPValAttrNodeQNameValue(a1, a2, v32, v33, &v89, &str2);
  v34 = v89;
  v35 = xmlSchemaCheckReference(a1, v13, v32, v89);
  v10 = v30;
  if (v35)
  {
    goto LABEL_160;
  }

  v36 = v9;
  v37 = *(v13 + 88);
  if (v37)
  {
    while (2)
    {
      v38 = *(v37 + 72);
      if (v38)
      {
        if (xmlStrEqual(*(v38 + 16), "http://www.w3.org/2001/XMLSchema"))
        {
          goto LABEL_68;
        }
      }

      else if (!xmlStrEqual(*(v37 + 16), "ref") && !xmlStrEqual(*(v37 + 16), "id"))
      {
LABEL_68:
        xmlSchemaPIllegalAttrErr(a1, v37);
      }

      v37 = *(v37 + 48);
      if (!v37)
      {
        break;
      }

      continue;
    }
  }

  v39 = xmlSchemaGetPropNode(v13, "id");
  if (v39)
  {
    xmlSchemaPValAttrNodeID(a1, v39);
  }

  v40 = *(v13 + 24);
  if (v40)
  {
    if (!*(v40 + 72) || !xmlStrEqual(*(v40 + 16), "annotation") || !xmlStrEqual(*(*(v40 + 72) + 16), "http://www.w3.org/2001/XMLSchema") || (xmlSchemaParseAnnotation(a1, v40, 0), (v40 = *(v40 + 48)) != 0))
    {
      xmlSchemaPContentErr(a1, 3033, v13, v40, 0, "(annotation?)");
    }
  }

  if (*(a1 + 188) && (v41 = *(a1 + 216)) != 0 && **(v41 + 8) == 16 && (v42 = str2, str2 == *(v41 + 32)) && v34 == *(v41 + 40))
  {
    v9 = v36;
    if (*(a1 + 224))
    {
      v87 = 0;
      v57 = xmlSchemaFormatQName(&v87, v34, str2);
      xmlSchemaCustomErr4(a1, 0xC09u, v13, 0, "The redefining attribute group definition '%s' must not contain more than one reference to the redefined definition", v57, 0, 0, 0);
      v10 = v30;
      if (v87)
      {
        free(v87);
      }

      goto LABEL_160;
    }

    *(a1 + 224) = 1;
    v58 = xmlSchemaNewQNameRef(a1, 16, v42, v34);
    v10 = v30;
    if (!v58)
    {
      goto LABEL_160;
    }

    v44 = v58;
    v58[5] = v13;
    *(*(a1 + 216) + 16) = v58;
  }

  else
  {
    v43 = xmlSchemaNewQNameRef(a1, 16, str2, v34);
    v9 = v36;
    v10 = v30;
    if (!v43)
    {
      goto LABEL_160;
    }

    v44 = v43;
    v43[5] = v13;
    if ((xmlSchemaAddItemSize((*(a1 + 48) + 40), 10, v43) & 0x80000000) != 0)
    {
      ++*(a1 + 36);
      __xmlSimpleError(0x10u, 2, 0, 0, 0);
    }
  }

  if (a6)
  {
    *a6 = 1;
  }

LABEL_90:
  v45 = *a4;
  if (!*a4)
  {
    v45 = xmlSchemaItemListCreate();
    *a4 = v45;
    if (!v45)
    {
      return 0xFFFFFFFFLL;
    }
  }

  result = xmlSchemaItemListAddSize(v45, 2, v44);
  if (result != -1)
  {
    goto LABEL_160;
  }

  return result;
}

void *xmlSchemaParseAnyAttribute(xmlError *a1, uint64_t a2, xmlNode *a3)
{
  if (!a3)
  {
    return 0;
  }

  v5 = xmlSchemaAddWildcard(a1, a2, 21, a3);
  if (v5)
  {
    properties = a3->properties;
    if (properties)
    {
      while (1)
      {
        ns = properties->ns;
        if (!ns)
        {
          break;
        }

        if (xmlStrEqual(ns->href, "http://www.w3.org/2001/XMLSchema"))
        {
          goto LABEL_6;
        }

LABEL_10:
        properties = properties->next;
        if (!properties)
        {
          goto LABEL_11;
        }
      }

      if (xmlStrEqual(properties->name, "id") || xmlStrEqual(properties->name, "namespace") || xmlStrEqual(properties->name, "processContents"))
      {
        goto LABEL_10;
      }

LABEL_6:
      xmlSchemaPIllegalAttrErr(a1, properties);
      goto LABEL_10;
    }

LABEL_11:
    PropNode = xmlSchemaGetPropNode(a3, "id");
    if (PropNode)
    {
      xmlSchemaPValAttrNodeID(a1, PropNode);
    }

    if (xmlSchemaParseWildcardNs(a1, v5, a3))
    {
      return 0;
    }

    children = a3->children;
    if (children)
    {
      if (!children->ns || !xmlStrEqual(children->name, "annotation") || !xmlStrEqual(children->ns->href, "http://www.w3.org/2001/XMLSchema") || (v5[2] = xmlSchemaParseAnnotation(a1, children, 1), (children = children->next) != 0))
      {
        xmlSchemaPContentErr(a1, 3033, a3, children, 0, "(annotation?)");
      }
    }
  }

  return v5;
}

_OWORD *xmlSchemaAddRedef(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = malloc_type_malloc(0x38uLL, 0x70040989CC7FAuLL);
  v11 = v10;
  if (v10)
  {
    *v10 = 0u;
    v10[1] = 0u;
    *(v10 + 1) = a3;
    *(v10 + 5) = a5;
    *(v10 + 6) = a2;
    *(v10 + 4) = a4;
    v12 = *(a1 + 48);
    v13 = (v12 + 56);
    if (*(v12 + 56))
    {
      v13 = *(v12 + 64);
    }

    *v13 = v10;
    *(v12 + 64) = v10;
  }

  else
  {
    if (a1)
    {
      ++*(a1 + 36);
    }

    __xmlSimpleError(0x10u, 2, 0, 0, "allocating redefinition info");
  }

  return v11;
}

uint64_t xmlSchemaAddItemSize(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  if (!v6)
  {
    v6 = xmlSchemaItemListCreate();
    *a1 = v6;
    if (!v6)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return xmlSchemaItemListAddSize(v6, a2, a3);
}

void xmlSchemaAddAnnotation(uint64_t a1, uint64_t a2)
{
  if (!a1 || !a2)
  {
    return;
  }

  v2 = *a1;
  if (*a1 <= 20)
  {
    if (v2 > 13)
    {
      if (v2 <= 15)
      {
        if (v2 != 14)
        {
          v3 = *(a1 + 64);
          if (!v3)
          {
            *(a1 + 64) = a2;
            return;
          }

          goto LABEL_27;
        }
      }

      else if (v2 != 16)
      {
        if (v2 == 17)
        {
          goto LABEL_18;
        }

        if (v2 == 18)
        {
          goto LABEL_26;
        }

        goto LABEL_32;
      }
    }

    else
    {
      if ((v2 - 6) < 3)
      {
        goto LABEL_18;
      }

      if ((v2 - 4) >= 2)
      {
        if (v2 == 2)
        {
          goto LABEL_26;
        }

        goto LABEL_32;
      }
    }

    v3 = *(a1 + 48);
    if (!v3)
    {
      *(a1 + 48) = a2;
      return;
    }

    goto LABEL_27;
  }

  if ((v2 - 1000) >= 0xC)
  {
    if ((v2 - 22) < 4)
    {
LABEL_18:
      v3 = *(a1 + 8);
      if (!v3)
      {
        *(a1 + 8) = a2;
        return;
      }

      goto LABEL_27;
    }

    if (v2 == 21)
    {
LABEL_26:
      v3 = *(a1 + 16);
      if (!v3)
      {
        *(a1 + 16) = a2;
        return;
      }

      goto LABEL_27;
    }

LABEL_32:
    xmlSchemaPCustomErrExt(0, 3069, 0, 0, "Internal error: xmlSchemaAddAnnotation, The item is not a annotated schema component", 0, 0, 0);
    return;
  }

  v3 = *(a1 + 32);
  if (!v3)
  {
    *(a1 + 32) = a2;
    return;
  }

LABEL_27:
  if (*v3)
  {
    v3 = *v3;
  }

  *v3 = a2;
}

void xmlSchemaParseRestriction(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v73 = 0;
  v8 = *(a1 + 160);
  *(v8 + 88) |= 4u;
  v9 = *(a3 + 88);
  if (v9)
  {
    while (1)
    {
      v10 = *(v9 + 72);
      if (!v10)
      {
        break;
      }

      if (xmlStrEqual(*(v10 + 16), "http://www.w3.org/2001/XMLSchema"))
      {
        goto LABEL_4;
      }

LABEL_7:
      v9 = *(v9 + 48);
      if (!v9)
      {
        goto LABEL_8;
      }
    }

    if (xmlStrEqual(*(v9 + 16), "id") || xmlStrEqual(*(v9 + 16), "base"))
    {
      goto LABEL_7;
    }

LABEL_4:
    xmlSchemaPIllegalAttrErr(a1, v9);
    goto LABEL_7;
  }

LABEL_8:
  PropNode = xmlSchemaGetPropNode(a3, "id");
  if (PropNode)
  {
    xmlSchemaPValAttrNodeID(a1, PropNode);
  }

  if (!xmlSchemaPValAttrQName(a1, a2, a3, "base", (v8 + 104), (v8 + 96)))
  {
    v14 = *(v8 + 96);
    if (!v14 && *v8 == 5)
    {
      goto LABEL_52;
    }

    if (!*(a1 + 188) || (*(v8 + 88) & 8) == 0)
    {
      goto LABEL_11;
    }

    if (!v14)
    {
LABEL_52:
      xmlSchemaPMissingAttrErr(a1, a3, "base");
      goto LABEL_11;
    }

    if (!xmlStrEqual(v14, *(v8 + 16)) || !xmlStrEqual(*(v8 + 104), *(v8 + 208)))
    {
      v71 = 0;
      v72 = 0;
      xmlSchemaFormatQName(&v72, *(v8 + 104), *(v8 + 96));
      xmlSchemaFormatQName(&v71, *(v8 + 208), *(v8 + 16));
      xmlSchemaPCustomErrExt(a1, 3081, 0, a3, "This is a redefinition, but the QName value '%s' of the 'base' attribute does not match the type's designation '%s'", v69, v70);
      if (v72)
      {
        free(v72);
      }

      if (v71)
      {
        free(v71);
      }

      *(v8 + 96) = 0;
      *(v8 + 104) = 0;
    }
  }

LABEL_11:
  v12 = *(a3 + 24);
  v73 = v12;
  if (v12 && v12->ns && xmlStrEqual(v12->name, "annotation") && xmlStrEqual(v12->ns->href, "http://www.w3.org/2001/XMLSchema"))
  {
    v13 = xmlSchemaParseAnnotation(a1, v12, 1);
    xmlSchemaAddAnnotation(v8, v13);
    v12 = v12->next;
    v73 = v12;
  }

  if (a4 == 10)
  {
    if (!v12 || !v12->ns)
    {
      goto LABEL_201;
    }

    v15 = xmlStrEqual(v12->name, "all");
    ns = v12->ns;
    if (v15)
    {
      if (xmlStrEqual(ns->href, "http://www.w3.org/2001/XMLSchema"))
      {
        v17 = a1;
        v18 = a2;
        v19 = v12;
        v20 = 8;
LABEL_199:
        v67 = xmlSchemaParseModelGroup(v17, v18, v19, v20, 1);
        goto LABEL_200;
      }

      ns = v12->ns;
    }

    if (!ns)
    {
      goto LABEL_201;
    }

    v22 = xmlStrEqual(v12->name, "choice");
    v23 = v12->ns;
    if (v22)
    {
      if (xmlStrEqual(v23->href, "http://www.w3.org/2001/XMLSchema"))
      {
        v17 = a1;
        v18 = a2;
        v19 = v12;
        v20 = 7;
        goto LABEL_199;
      }

      v23 = v12->ns;
    }

    if (!v23)
    {
      goto LABEL_201;
    }

    v65 = xmlStrEqual(v12->name, "sequence");
    v66 = v12->ns;
    if (v65)
    {
      if (xmlStrEqual(v66->href, "http://www.w3.org/2001/XMLSchema"))
      {
        v17 = a1;
        v18 = a2;
        v19 = v12;
        v20 = 6;
        goto LABEL_199;
      }

      v66 = v12->ns;
    }

    if (!v66 || !xmlStrEqual(v12->name, "group") || !xmlStrEqual(v12->ns->href, "http://www.w3.org/2001/XMLSchema"))
    {
      goto LABEL_201;
    }

    v67 = xmlSchemaParseModelGroupDefRef(a1, a2, v12);
LABEL_200:
    *(v8 + 56) = v67;
    v12 = v12->next;
    v73 = v12;
    goto LABEL_201;
  }

  if (a4 == 4)
  {
    if (!v12 || !v12->ns || !xmlStrEqual(v12->name, "simpleType") || !xmlStrEqual(v12->ns->href, "http://www.w3.org/2001/XMLSchema"))
    {
      if (!*(v8 + 96))
      {
        xmlSchemaPContentErr(a1, 3005, a3, v12, "Either the attribute 'base' or a <simpleType> child must be present", 0);
      }

LABEL_60:
      if (v12)
      {
LABEL_61:
        v24 = 0;
        do
        {
          if (!v12->ns)
          {
            break;
          }

          v25 = xmlStrEqual(v12->name, "minInclusive");
          v26 = v12->ns;
          if (v25)
          {
            if (xmlStrEqual(v26->href, "http://www.w3.org/2001/XMLSchema"))
            {
              goto LABEL_109;
            }

            v26 = v12->ns;
          }

          if (!v26)
          {
            break;
          }

          v27 = xmlStrEqual(v12->name, "minExclusive");
          v28 = v12->ns;
          if (v27)
          {
            if (xmlStrEqual(v28->href, "http://www.w3.org/2001/XMLSchema"))
            {
              goto LABEL_109;
            }

            v28 = v12->ns;
          }

          if (!v28)
          {
            break;
          }

          v29 = xmlStrEqual(v12->name, "maxInclusive");
          v30 = v12->ns;
          if (v29)
          {
            if (xmlStrEqual(v30->href, "http://www.w3.org/2001/XMLSchema"))
            {
              goto LABEL_109;
            }

            v30 = v12->ns;
          }

          if (!v30)
          {
            break;
          }

          v31 = xmlStrEqual(v12->name, "maxExclusive");
          v32 = v12->ns;
          if (v31)
          {
            if (xmlStrEqual(v32->href, "http://www.w3.org/2001/XMLSchema"))
            {
              goto LABEL_109;
            }

            v32 = v12->ns;
          }

          if (!v32)
          {
            break;
          }

          v33 = xmlStrEqual(v12->name, "totalDigits");
          v34 = v12->ns;
          if (v33)
          {
            if (xmlStrEqual(v34->href, "http://www.w3.org/2001/XMLSchema"))
            {
              goto LABEL_109;
            }

            v34 = v12->ns;
          }

          if (!v34)
          {
            break;
          }

          v35 = xmlStrEqual(v12->name, "fractionDigits");
          v36 = v12->ns;
          if (v35)
          {
            if (xmlStrEqual(v36->href, "http://www.w3.org/2001/XMLSchema"))
            {
              goto LABEL_109;
            }

            v36 = v12->ns;
          }

          if (!v36)
          {
            break;
          }

          v37 = xmlStrEqual(v12->name, "pattern");
          v38 = v12->ns;
          if (v37)
          {
            if (xmlStrEqual(v38->href, "http://www.w3.org/2001/XMLSchema"))
            {
              goto LABEL_109;
            }

            v38 = v12->ns;
          }

          if (!v38)
          {
            break;
          }

          v39 = xmlStrEqual(v12->name, "enumeration");
          v40 = v12->ns;
          if (v39)
          {
            if (xmlStrEqual(v40->href, "http://www.w3.org/2001/XMLSchema"))
            {
              goto LABEL_109;
            }

            v40 = v12->ns;
          }

          if (!v40)
          {
            break;
          }

          v41 = xmlStrEqual(v12->name, "whiteSpace");
          v42 = v12->ns;
          if (v41)
          {
            if (xmlStrEqual(v42->href, "http://www.w3.org/2001/XMLSchema"))
            {
              goto LABEL_109;
            }

            v42 = v12->ns;
          }

          if (!v42)
          {
            break;
          }

          v43 = xmlStrEqual(v12->name, "length");
          v44 = v12->ns;
          if (v43)
          {
            if (xmlStrEqual(v44->href, "http://www.w3.org/2001/XMLSchema"))
            {
              goto LABEL_109;
            }

            v44 = v12->ns;
          }

          if (!v44)
          {
            break;
          }

          v45 = xmlStrEqual(v12->name, "maxLength");
          v46 = v12->ns;
          if (v45)
          {
            if (xmlStrEqual(v46->href, "http://www.w3.org/2001/XMLSchema"))
            {
              goto LABEL_109;
            }

            v46 = v12->ns;
          }

          if (!v46 || !xmlStrEqual(v12->name, "minLength") || !xmlStrEqual(v12->ns->href, "http://www.w3.org/2001/XMLSchema"))
          {
            break;
          }

LABEL_109:
          v47 = malloc_type_malloc(0x48uLL, 0x1070040FC6FB3EFuLL);
          if (!v47)
          {
            if (a1)
            {
              ++*(a1 + 36);
            }

            __xmlSimpleError(0x10u, 2, v12, 0, "allocating facet");
            goto LABEL_180;
          }

          v48 = v47;
          v47->regexp = 0;
          *&v47->annot = 0u;
          *&v47->fixed = 0u;
          *&v47->type = 0u;
          *&v47->value = 0u;
          v47->node = v12;
          Prop = xmlSchemaGetProp(a1, v12, "value");
          if (Prop)
          {
            if (v12->ns)
            {
              v50 = Prop;
              if (xmlStrEqual(v12->name, "minInclusive") && xmlStrEqual(v12->ns->href, "http://www.w3.org/2001/XMLSchema"))
              {
                v51 = 1000;
LABEL_163:
                v48->type = v51;
                v57 = xmlSchemaGetPropNode(v12, "id");
                if (v57)
                {
                  xmlSchemaPValAttrNodeID(a1, v57);
                }

                v48->value = v50;
                if ((v48->type & 0xFFFFFFFE) != 0x3EE)
                {
                  v58 = xmlSchemaGetProp(a1, v12, "fixed");
                  if (v58)
                  {
                    if (xmlStrEqual(v58, "true"))
                    {
                      v48->fixed = 1;
                    }
                  }
                }

                children = v12->children;
                if (children)
                {
                  if (!*(children + 72) || !xmlStrEqual(*(children + 16), "annotation") || !xmlStrEqual(*(*(children + 72) + 16), "http://www.w3.org/2001/XMLSchema") || (v48->annot = xmlSchemaParseAnnotation(a1, children, 1), (children = *(children + 48)) != 0))
                  {
                    xmlSchemaPErr(a1, children, 1740, "Facet %s has unexpected child content\n", v12->name, 0);
                  }
                }

                p_next = &v24->next;
                if (!v24)
                {
                  p_next = (v8 + 120);
                }

                *p_next = v48;
                v48->next = 0;
                v24 = v48;
                goto LABEL_180;
              }

              if (v12->ns)
              {
                if (xmlStrEqual(v12->name, "minExclusive") && xmlStrEqual(v12->ns->href, "http://www.w3.org/2001/XMLSchema"))
                {
                  v51 = 1001;
                  goto LABEL_163;
                }

                if (v12->ns)
                {
                  if (xmlStrEqual(v12->name, "maxInclusive") && xmlStrEqual(v12->ns->href, "http://www.w3.org/2001/XMLSchema"))
                  {
                    v51 = 1002;
                    goto LABEL_163;
                  }

                  if (v12->ns)
                  {
                    if (xmlStrEqual(v12->name, "maxExclusive") && xmlStrEqual(v12->ns->href, "http://www.w3.org/2001/XMLSchema"))
                    {
                      v51 = 1003;
                      goto LABEL_163;
                    }

                    if (v12->ns)
                    {
                      if (xmlStrEqual(v12->name, "totalDigits") && xmlStrEqual(v12->ns->href, "http://www.w3.org/2001/XMLSchema"))
                      {
                        v51 = 1004;
                        goto LABEL_163;
                      }

                      if (v12->ns)
                      {
                        if (xmlStrEqual(v12->name, "fractionDigits") && xmlStrEqual(v12->ns->href, "http://www.w3.org/2001/XMLSchema"))
                        {
                          v51 = 1005;
                          goto LABEL_163;
                        }

                        if (v12->ns)
                        {
                          if (xmlStrEqual(v12->name, "pattern") && xmlStrEqual(v12->ns->href, "http://www.w3.org/2001/XMLSchema"))
                          {
                            v51 = 1006;
                            goto LABEL_163;
                          }

                          if (v12->ns)
                          {
                            if (xmlStrEqual(v12->name, "enumeration") && xmlStrEqual(v12->ns->href, "http://www.w3.org/2001/XMLSchema"))
                            {
                              v51 = 1007;
                              goto LABEL_163;
                            }

                            if (v12->ns)
                            {
                              if (xmlStrEqual(v12->name, "whiteSpace") && xmlStrEqual(v12->ns->href, "http://www.w3.org/2001/XMLSchema"))
                              {
                                v51 = 1008;
                                goto LABEL_163;
                              }

                              if (v12->ns)
                              {
                                if (xmlStrEqual(v12->name, "length") && xmlStrEqual(v12->ns->href, "http://www.w3.org/2001/XMLSchema"))
                                {
                                  v51 = 1009;
                                  goto LABEL_163;
                                }

                                if (v12->ns)
                                {
                                  if (xmlStrEqual(v12->name, "maxLength") && xmlStrEqual(v12->ns->href, "http://www.w3.org/2001/XMLSchema"))
                                  {
                                    v51 = 1010;
                                    goto LABEL_163;
                                  }

                                  if (v12->ns && xmlStrEqual(v12->name, "minLength") && xmlStrEqual(v12->ns->href, "http://www.w3.org/2001/XMLSchema"))
                                  {
                                    v51 = 1011;
                                    goto LABEL_163;
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }

            name = v12->name;
            v53 = a1;
            v54 = v12;
            v55 = 1741;
            v56 = "Unknown facet type %s\n";
          }

          else
          {
            name = v12->name;
            v53 = a1;
            v54 = v12;
            v55 = 1708;
            v56 = "Facet %s has no value\n";
          }

          xmlSchemaPErr(v53, v54, v55, v56, name, 0);
          xmlSchemaFreeFacet(v48);
LABEL_180:
          v12 = v12->next;
        }

        while (v12);
      }

      v73 = v12;
      v61 = *(v8 + 120);
      if (v61)
      {
        v62 = 0;
        while (1)
        {
          v63 = malloc_type_malloc(0x10uLL, 0x20040A4A59CD2uLL);
          if (!v63)
          {
            break;
          }

          *v63 = 0;
          v63[1] = v61;
          if (v62)
          {
            v64 = v62;
          }

          else
          {
            v64 = (v8 + 176);
          }

          *v64 = v63;
          v61 = *(v61 + 8);
          v62 = v63;
          if (!v61)
          {
            goto LABEL_201;
          }
        }

        if (a1)
        {
          ++*(a1 + 36);
        }

        __xmlSimpleError(0x10u, 2, 0, 0, "allocating a facet link");
        return;
      }

LABEL_201:
      if (*v8 == 5)
      {
        if (xmlSchemaParseLocalAttributes(a1, a2, &v73, (v8 + 216), 12, 0) == -1)
        {
          return;
        }

        v12 = v73;
        if (!v73)
        {
          return;
        }

        if (!v73->ns || !xmlStrEqual(v73->name, "anyAttribute") || !xmlStrEqual(v12->ns->href, "http://www.w3.org/2001/XMLSchema"))
        {
          goto LABEL_209;
        }

        *(v8 + 152) = xmlSchemaParseAnyAttribute(a1, a2, v12);
        v12 = v12->next;
      }

      if (!v12)
      {
        return;
      }

LABEL_209:
      if (a4 == 9)
      {
        v68 = "(annotation?, (simpleType?, (minExclusive | minInclusive | maxExclusive | maxInclusive | totalDigits | fractionDigits | length | minLength | maxLength | enumeration | whiteSpace | pattern)*)?, ((attribute | attributeGroup)*, anyAttribute?))";
      }

      else if (a4 == 10)
      {
        v68 = "annotation?, (group | all | choice | sequence)?, ((attribute | attributeGroup)*, anyAttribute?))";
      }

      else
      {
        v68 = "(annotation?, (simpleType?, (minExclusive | minInclusive | maxExclusive | maxInclusive | totalDigits | fractionDigits | length | minLength | maxLength | enumeration | whiteSpace | pattern)*))";
      }

      xmlSchemaPContentErr(a1, 3033, a3, v12, 0, v68);
      return;
    }

    if (*(v8 + 96))
    {
      xmlSchemaPContentErr(a1, 3005, a3, v12, "The attribute 'base' and the <simpleType> child are mutually exclusive", 0);
    }

    else
    {
      *(v8 + 112) = xmlSchemaParseSimpleType(a1, a2, v12, 0);
    }

LABEL_59:
    v12 = v12->next;
    v73 = v12;
    goto LABEL_60;
  }

  if (a4 != 9 || !v12)
  {
    if (a4 != 9)
    {
      goto LABEL_201;
    }

    goto LABEL_60;
  }

  if (!v12->ns || !xmlStrEqual(v12->name, "simpleType") || !xmlStrEqual(v12->ns->href, "http://www.w3.org/2001/XMLSchema"))
  {
    goto LABEL_61;
  }

  v21 = xmlSchemaParseSimpleType(a1, a2, v12, 0);
  *(v8 + 192) = v21;
  if (v21)
  {
    goto LABEL_59;
  }
}

void xmlSchemaParseExtension(xmlError *a1, uint64_t a2, uint64_t a3, int a4)
{
  ctxt = a1[1].ctxt;
  *(ctxt + 88) |= 2u;
  v9 = *(a3 + 88);
  if (v9)
  {
    while (1)
    {
      v10 = *(v9 + 72);
      if (!v10)
      {
        break;
      }

      if (xmlStrEqual(*(v10 + 16), "http://www.w3.org/2001/XMLSchema"))
      {
        goto LABEL_4;
      }

LABEL_7:
      v9 = *(v9 + 48);
      if (!v9)
      {
        goto LABEL_8;
      }
    }

    if (xmlStrEqual(*(v9 + 16), "id") || xmlStrEqual(*(v9 + 16), "base"))
    {
      goto LABEL_7;
    }

LABEL_4:
    xmlSchemaPIllegalAttrErr(a1, v9);
    goto LABEL_7;
  }

LABEL_8:
  PropNode = xmlSchemaGetPropNode(a3, "id");
  if (PropNode)
  {
    xmlSchemaPValAttrNodeID(a1, PropNode);
  }

  if (!xmlSchemaPValAttrQName(a1, a2, a3, "base", (ctxt + 104), (ctxt + 96)) && !*(ctxt + 96))
  {
    xmlSchemaPMissingAttrErr(a1, a3, "base");
  }

  v12 = *(a3 + 24);
  v29 = v12;
  if (v12)
  {
    if (*(v12 + 72) && xmlStrEqual(*(v12 + 16), "annotation") && xmlStrEqual(*(*(v12 + 72) + 16), "http://www.w3.org/2001/XMLSchema"))
    {
      v13 = xmlSchemaParseAnnotation(a1, v12, 1);
      xmlSchemaAddAnnotation(ctxt, v13);
      v12 = *(v12 + 48);
      v29 = v12;
    }

    v14 = a4 == 10;
    v15 = a4 == 10;
    if (!v14)
    {
LABEL_37:
      if (!v12)
      {
        return;
      }

LABEL_45:
      if (xmlSchemaParseLocalAttributes(a1, a2, &v29, (ctxt + 216), 13, 0) == -1)
      {
        return;
      }

      v27 = v29;
      if (!v29)
      {
        return;
      }

      if (v29->ns && xmlStrEqual(v29->name, "anyAttribute") && xmlStrEqual(v27->ns->href, "http://www.w3.org/2001/XMLSchema"))
      {
        *(a1[1].ctxt + 19) = xmlSchemaParseAnyAttribute(a1, a2, v27);
        v27 = v27->next;
        if (!v27)
        {
          return;
        }

        if (!v15)
        {
          goto LABEL_52;
        }
      }

      else if (!v15)
      {
LABEL_52:
        v28 = "(annotation?, ((attribute | attributeGroup)*, anyAttribute?))";
LABEL_56:

        xmlSchemaPContentErr(a1, 3033, a3, v27, 0, v28);
        return;
      }

      v28 = "(annotation?, ((group | all | choice | sequence)?, ((attribute | attributeGroup)*, anyAttribute?)))";
      goto LABEL_56;
    }

    if (!v12)
    {
      return;
    }

    if (*(v12 + 72))
    {
      v16 = xmlStrEqual(*(v12 + 16), "all");
      v17 = *(v12 + 72);
      if (v16)
      {
        if (xmlStrEqual(*(v17 + 16), "http://www.w3.org/2001/XMLSchema"))
        {
          v18 = a1;
          v19 = a2;
          v20 = v12;
          v21 = 8;
LABEL_35:
          v26 = xmlSchemaParseModelGroup(v18, v19, v20, v21, 1);
LABEL_36:
          *(ctxt + 56) = v26;
          v12 = *(v12 + 48);
          v29 = v12;
          goto LABEL_37;
        }

        v17 = *(v12 + 72);
      }

      if (v17)
      {
        v22 = xmlStrEqual(*(v12 + 16), "choice");
        v23 = *(v12 + 72);
        if (v22)
        {
          if (xmlStrEqual(*(v23 + 16), "http://www.w3.org/2001/XMLSchema"))
          {
            v18 = a1;
            v19 = a2;
            v20 = v12;
            v21 = 7;
            goto LABEL_35;
          }

          v23 = *(v12 + 72);
        }

        if (v23)
        {
          v24 = xmlStrEqual(*(v12 + 16), "sequence");
          v25 = *(v12 + 72);
          if (v24)
          {
            if (xmlStrEqual(*(v25 + 16), "http://www.w3.org/2001/XMLSchema"))
            {
              v18 = a1;
              v19 = a2;
              v20 = v12;
              v21 = 6;
              goto LABEL_35;
            }

            v25 = *(v12 + 72);
          }

          if (v25 && xmlStrEqual(*(v12 + 16), "group") && xmlStrEqual(*(*(v12 + 72) + 16), "http://www.w3.org/2001/XMLSchema"))
          {
            v26 = xmlSchemaParseModelGroupDefRef(a1, a2, v12);
            goto LABEL_36;
          }
        }
      }
    }

    v15 = 1;
    goto LABEL_45;
  }
}

xmlNode *xmlSchemaPValAttrQName(uint64_t a1, uint64_t a2, uint64_t a3, xmlChar *str2, const xmlChar **a5, const xmlChar **a6)
{
  result = xmlSchemaGetPropNode(a3, str2);
  if (result)
  {
    v11 = result;
    NodeContent = xmlSchemaGetNodeContent(a1, result);

    return xmlSchemaPValAttrNodeQNameValue(a1, a2, v11, NodeContent, a5, a6);
  }

  else
  {
    *a6 = 0;
    *a5 = 0;
  }

  return result;
}

uint64_t xmlSchemaPValAttrNodeQNameValue(uint64_t a1, uint64_t a2, uint64_t a3, xmlChar *value, const xmlChar **a5, const xmlChar **a6)
{
  *a5 = 0;
  *a6 = 0;
  v12 = xmlValidateQName(value, 1);
  if (v12 < 1)
  {
    if (v12 < 0)
    {
      return 0xFFFFFFFFLL;
    }

    len = 0;
    if (strchr(value, 58))
    {
      v15 = xmlSplitQName3(value, &len);
      *a6 = v15;
      *a6 = xmlDictLookup(*(a1 + 152), v15, -1);
      v16 = xmlDictLookup(*(a1 + 152), value, len);
      v17 = xmlSearchNs(*(a3 + 64), *(a3 + 40), v16);
      if (v17)
      {
        v18 = xmlDictLookup(*(a1 + 152), v17->href, -1);
        result = 0;
        *a5 = v18;
        return result;
      }

      BuiltInType = xmlSchemaGetBuiltInType(XML_SCHEMAS_QNAME);
      xmlSchemaPSimpleTypeErr(a1, 3037, a3, BuiltInType, 0, value, "The value '%s' of simple type 'xs:QName' has no corresponding namespace declaration in scope", value);
      return *(a1 + 32);
    }

    v19 = xmlSearchNs(*(a3 + 64), *(a3 + 40), 0);
    if (v19 && (href = v19->href) != 0 && *href)
    {
      v21 = xmlDictLookup(*(a1 + 152), href, -1);
    }

    else
    {
      if ((*(a2 + 49) & 2) == 0)
      {
LABEL_17:
        v22 = xmlDictLookup(*(a1 + 152), value, -1);
        result = 0;
        *a6 = v22;
        return result;
      }

      v21 = *(a1 + 200);
    }

    *a5 = v21;
    goto LABEL_17;
  }

  v13 = xmlSchemaGetBuiltInType(XML_SCHEMAS_QNAME);
  xmlSchemaPSimpleTypeErr(a1, 3037, a3, v13, 0, value, 0, 0);
  *a6 = value;
  return *(a1 + 32);
}

xmlError *xmlSchemaPErr2(uint64_t a1, uint64_t a2, uint64_t a3, int a4, const char *a5, const xmlChar *a6, xmlChar *a7)
{
  if (a3)
  {
    a2 = a3;
  }

  return xmlSchemaPErr(a1, a2, a4, a5, a6, a7);
}

xmlChar *xmlGetBooleanProp(uint64_t a1, xmlNode *a2, xmlChar *a3)
{
  result = xmlSchemaGetProp(a1, a2, a3);
  if (result)
  {
    v7 = result;
    if (xmlStrEqual(result, "true"))
    {
      return 1;
    }

    if (!xmlStrEqual(v7, "false"))
    {
      if (xmlStrEqual(v7, "1"))
      {
        return 1;
      }

      if (!xmlStrEqual(v7, "0"))
      {
        PropNode = xmlSchemaGetPropNode(a2, a3);
        BuiltInType = xmlSchemaGetBuiltInType(XML_SCHEMAS_BOOLEAN);
        xmlSchemaPSimpleTypeErr(a1, 1714, PropNode, BuiltInType, 0, v7, 0, 0);
      }
    }

    return 0;
  }

  return result;
}

void *xmlSchemaAddModelGroup(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v4 = 0;
  if (a1 && a2)
  {
    v8 = malloc_type_malloc(0x28uLL, 0x1020040E2DCC865uLL);
    v4 = v8;
    if (!v8)
    {
      ++*(a1 + 36);
      v9 = "allocating model group component";
      goto LABEL_9;
    }

    *(v8 + 12) = 0;
    *(v8 + 4) = 0;
    *(v8 + 7) = 0;
    *(v8 + 20) = 0;
    *v8 = a3;
    *(v8 + 4) = a4;
    if ((xmlSchemaAddItemSize((*(*(a1 + 48) + 32) + 72), 10, v8) & 0x80000000) != 0)
    {
      ++*(a1 + 36);
      __xmlSimpleError(0x10u, 2, 0, 0, 0);
      free(v4);
      return 0;
    }

    if ((a3 & 0xFFFFFFFE) == 6 && (xmlSchemaAddItemSize((*(a1 + 48) + 40), 10, v4) & 0x80000000) != 0)
    {
      ++*(a1 + 36);
      v9 = 0;
LABEL_9:
      __xmlSimpleError(0x10u, 2, 0, 0, v9);
    }
  }

  return v4;
}

uint64_t xmlGetMinOccurs(uint64_t a1, uint64_t a2, int a3, const char *a4)
{
  PropNode = xmlSchemaGetPropNode(a2, "minOccurs");
  if (PropNode)
  {
    v8 = PropNode;
    NodeContent = xmlSchemaGetNodeContent(a1, PropNode);
    for (i = NodeContent; ; ++i)
    {
      v11 = *i;
      if (v11 > 0x20)
      {
        break;
      }

      if (((1 << v11) & 0x100002600) == 0)
      {
        if (!*i)
        {
          goto LABEL_7;
        }

        break;
      }
    }

    if (v11 - 48 > 9)
    {
      result = 0;
    }

    else
    {
      LODWORD(result) = 0;
      do
      {
        v13 = -2147483601 - v11;
        v14 = v11 + 10 * result - 48;
        if (10 * result > v13)
        {
          v14 = 0x7FFFFFFF;
        }

        if (result <= 214748364)
        {
          result = v14;
        }

        else
        {
          result = 0x7FFFFFFFLL;
        }

        v15 = *++i;
        v11 = v15;
      }

      while (v15 - 48 < 0xA);
    }

    v16 = (i + 1);
    while (v11 <= 0x20)
    {
      if (((1 << v11) & 0x100002600) == 0)
      {
        if (v11 || (result & 0x80000000) != 0 || a3 != -1 && result > a3)
        {
          break;
        }

        return result;
      }

      v17 = *v16++;
      v11 = v17;
    }

LABEL_7:
    xmlSchemaPSimpleTypeErr(a1, 3037, v8, 0, a4, NodeContent, 0, 0);
  }

  return 1;
}

uint64_t xmlGetMaxOccurs(uint64_t a1, uint64_t a2, int a3, int a4, const char *a5)
{
  PropNode = xmlSchemaGetPropNode(a2, "maxOccurs");
  if (PropNode)
  {
    v10 = PropNode;
    NodeContent = xmlSchemaGetNodeContent(a1, PropNode);
    if (xmlStrEqual(NodeContent, "unbounded"))
    {
      result = 0x40000000;
      if (a4 == 0x40000000)
      {
        return result;
      }
    }

    else
    {
      for (i = NodeContent; ; ++i)
      {
        v14 = *i;
        if (v14 > 0x20)
        {
          break;
        }

        if (((1 << v14) & 0x100002600) == 0)
        {
          if (!*i)
          {
            goto LABEL_10;
          }

          break;
        }
      }

      if (v14 - 48 > 9)
      {
        result = 0;
      }

      else
      {
        LODWORD(result) = 0;
        do
        {
          v15 = -2147483601 - v14;
          v16 = v14 + 10 * result - 48;
          if (10 * result > v15)
          {
            v16 = 0x7FFFFFFF;
          }

          if (result <= 214748364)
          {
            result = v16;
          }

          else
          {
            result = 0x7FFFFFFFLL;
          }

          v17 = *++i;
          v14 = v17;
        }

        while (v17 - 48 < 0xA);
      }

      v18 = (i + 1);
      while (v14 <= 0x20)
      {
        if (((1 << v14) & 0x100002600) == 0)
        {
          if (!v14 && result >= a3 && result <= a4)
          {
            return result;
          }

          break;
        }

        v19 = *v18++;
        v14 = v19;
      }
    }

LABEL_10:
    xmlSchemaPSimpleTypeErr(a1, 3037, v10, 0, a5, NodeContent, 0, 0);
  }

  return 1;
}

void xmlSchemaPCheckParticleCorrect_2(uint64_t result, uint64_t a2, int a3, int a4)
{
  if (a4 != 0x40000000 && (a4 | a3) != 0)
  {
    if (a4 <= 0)
    {
      PropNode = xmlSchemaGetPropNode(a2, "maxOccurs");
      v7 = result;
      v8 = 3044;
    }

    else
    {
      if (a3 <= a4)
      {
        return;
      }

      PropNode = xmlSchemaGetPropNode(a2, "minOccurs");
      v7 = result;
      v8 = 3043;
    }

    xmlSchemaPCustomAttrErr(v7, v8, PropNode);
  }
}

void *xmlSchemaAddParticle(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if (!a1)
  {
    return 0;
  }

  v8 = malloc_type_malloc(0x30uLL, 0x1020040EC2530C8uLL);
  v9 = v8;
  if (!v8)
  {
    ++*(a1 + 36);
    __xmlSimpleError(0x10u, 2, 0, 0, "allocating particle component");
    return v9;
  }

  *v8 = 25;
  *(v8 + 5) = a2;
  v8[8] = a3;
  v8[9] = a4;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = 0;
  if ((xmlSchemaAddItemSize((*(*(a1 + 48) + 32) + 72), 10, v8) & 0x80000000) != 0)
  {
    ++*(a1 + 36);
    __xmlSimpleError(0x10u, 2, 0, 0, 0);
    free(v9);
    return 0;
  }

  return v9;
}

void xmlSchemaPCustomAttrErr(uint64_t a1, int a2, uint64_t a3)
{
  v6 = 0;
  xmlSchemaFormatItemForReport(&v6, 0, *(a3 + 40));
  xmlSchemaPErrExt(a1, a3, a2, "%s, attribute '%s': %s.\n", v6);
  if (v6)
  {
    free(v6);
  }
}

void *xmlSchemaAddWildcard(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v4 = 0;
  if (a1 && a2)
  {
    v8 = malloc_type_malloc(0x48uLL, 0x1070040CB5E18C6uLL);
    v4 = v8;
    if (v8)
    {
      *(v8 + 20) = 0u;
      *(v8 + 17) = 0;
      *(v8 + 52) = 0u;
      *(v8 + 36) = 0u;
      *(v8 + 4) = 0u;
      *v8 = a3;
      *(v8 + 3) = a4;
      if ((xmlSchemaAddItemSize((*(*(a1 + 48) + 32) + 72), 10, v8) & 0x80000000) != 0)
      {
        ++*(a1 + 36);
        __xmlSimpleError(0x10u, 2, 0, 0, 0);
        free(v4);
        return 0;
      }
    }

    else
    {
      ++*(a1 + 36);
      __xmlSimpleError(0x10u, 2, 0, 0, "adding wildcard");
    }
  }

  return v4;
}

uint64_t xmlSchemaParseWildcardNs(uint64_t a1, uint64_t a2, xmlNode *node)
{
  Prop = xmlSchemaGetProp(a1, node, "processContents");
  if (Prop && (v7 = Prop, !xmlStrEqual(Prop, "strict")))
  {
    if (xmlStrEqual(v7, "skip"))
    {
      v8 = 0;
      v9 = 1;
      goto LABEL_5;
    }

    if (xmlStrEqual(v7, "lax"))
    {
      v8 = 0;
      v9 = 2;
      goto LABEL_5;
    }

    v8 = 3037;
    xmlSchemaPSimpleTypeErr(a1, 3037, node, 0, "(strict | skip | lax)", v7, 0, 0);
  }

  else
  {
    v8 = 0;
  }

  v9 = 3;
LABEL_5:
  *(a2 + 40) = v9;
  PropNode = xmlSchemaGetPropNode(node, "namespace");
  NodeContent = xmlSchemaGetNodeContent(a1, PropNode);
  if (PropNode && (v12 = NodeContent, !xmlStrEqual(NodeContent, "##any")))
  {
    if (xmlStrEqual(v12, "##other"))
    {
      v14 = xmlSchemaNewWildcardNsConstraint(a1);
      *(a2 + 56) = v14;
      if (v14)
      {
        v14[1] = *(a1 + 200);
      }

      else
      {
        return 0xFFFFFFFFLL;
      }
    }

    else
    {
      v23 = 0;
      v24 = (a2 + 48);
      do
      {
        while (1)
        {
          v15 = *v12;
          if (v15 > 0x20 || ((1 << v15) & 0x100002600) == 0)
          {
            break;
          }

          ++v12;
        }

        v17 = 0;
        while (v15 > 0x20u || ((1 << v15) & 0x100002601) == 0)
        {
          LOBYTE(v15) = v12[++v17];
        }

        if (!v17)
        {
          break;
        }

        v18 = xmlStrndup(v12, v17);
        if (xmlStrEqual(v18, "##other") || xmlStrEqual(v18, "##any"))
        {
          v8 = 1792;
          xmlSchemaPSimpleTypeErr(a1, 1792, PropNode, 0, "((##any | ##other) | List of (xs:anyURI | (##targetNamespace | ##local)))", v18, 0, 0);
        }

        else
        {
          if (xmlStrEqual(v18, "##targetNamespace"))
          {
            v19 = *(a1 + 200);
          }

          else if (xmlStrEqual(v18, "##local"))
          {
            v19 = 0;
          }

          else
          {
            BuiltInType = xmlSchemaGetBuiltInType(XML_SCHEMAS_ANYURI);
            xmlSchemaPValAttrNodeValue(a1, PropNode, v18, BuiltInType);
            v19 = xmlDictLookup(*(a1 + 152), v18, -1);
          }

          v21 = (a2 + 48);
          while (1)
          {
            v21 = *v21;
            if (!v21)
            {
              break;
            }

            if (v19 == v21[1])
            {
              goto LABEL_30;
            }
          }

          v22 = xmlSchemaNewWildcardNsConstraint(a1);
          if (!v22)
          {
            free(v18);
            return 0xFFFFFFFFLL;
          }

          *v22 = 0;
          v22[1] = v19;
          if (*v24)
          {
            if (v23)
            {
              *v23 = v22;
            }

            v23 = v22;
          }

          else
          {
            *v24 = v22;
            v23 = v22;
          }
        }

LABEL_30:
        v12 += v17;
        free(v18);
      }

      while (*v12);
    }
  }

  else
  {
    *(a2 + 44) = 1;
  }

  return v8;
}

void *xmlSchemaNewWildcardNsConstraint(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x700404252BEB2uLL);
  v3 = v2;
  if (v2)
  {
    *v2 = 0;
    v2[1] = 0;
  }

  else
  {
    if (a1)
    {
      ++*(a1 + 36);
    }

    __xmlSimpleError(0x10u, 2, 0, 0, "creating wildcard namespace constraint");
  }

  return v3;
}

uint64_t xmlSchemaCheckReference(xmlError *a1, uint64_t a2, uint64_t a3, xmlChar *str2)
{
  if (xmlStrEqual(a1[2].file, str2) || xmlStrEqual("http://www.w3.org/2001/XMLSchema", str2))
  {
    return 0;
  }

  v10 = *(*(a1->str2 + 4) + 40);
  if (v10)
  {
    while (*(v10 + 2) > 1u || !xmlStrEqual(str2, v10[2]))
    {
      v10 = *v10;
      if (!v10)
      {
        goto LABEL_9;
      }
    }

    return 0;
  }

LABEL_9:
  if (a3)
  {
    v11 = a3;
  }

  else
  {
    v11 = a2;
  }

  if (str2)
  {
    v8 = 3004;
    xmlSchemaCustomErr4(a1, 0xBBCu, v11, 0, "References from this schema to components in the namespace '%s' are not allowed, since not indicated by an import statement", str2, 0, 0, 0);
  }

  else
  {
    v8 = 3004;
    xmlSchemaCustomErr4(a1, 0xBBCu, v11, 0, "References from this schema to components in no namespace are not allowed, since not indicated by an import statement", 0, 0, 0, 0);
  }

  return v8;
}

void *xmlSchemaNewQNameRef(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v8 = malloc_type_malloc(0x30uLL, 0x10700402C13C43AuLL);
  if (!v8)
  {
    if (a1)
    {
      ++*(a1 + 36);
    }

    __xmlSimpleError(0x10u, 2, 0, 0, "allocating QName reference item");
    return 0;
  }

  v9 = v8;
  *(v8 + 4) = a4;
  *(v8 + 5) = 0;
  *v8 = 2000;
  *(v8 + 3) = a3;
  *(v8 + 1) = 0;
  v8[4] = a2;
  if ((xmlSchemaAddItemSize((*(*(a1 + 48) + 32) + 72), 10, v8) & 0x80000000) != 0)
  {
    ++*(a1 + 36);
    __xmlSimpleError(0x10u, 2, 0, 0, 0);
    free(v9);
    return 0;
  }

  return v9;
}

void xmlSchemaPMutualExclAttrErr(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v7 = 0;
  xmlSchemaFormatItemForReport(&v7, a3, *(a4 + 40));
  xmlSchemaPErrExt(a1, a4, a2, "%s: The attributes '%s' and '%s' are mutually exclusive.\n", v7);
  if (v7)
  {
    free(v7);
  }
}

void *xmlSchemaAddAttributeUse(uint64_t a1, uint64_t a2)
{
  v4 = malloc_type_malloc(0x48uLL, 0x107004031BF07FDuLL);
  if (!v4)
  {
    if (a1)
    {
      ++*(a1 + 36);
    }

    __xmlSimpleError(0x10u, 2, 0, 0, "allocating attribute");
    return 0;
  }

  v5 = v4;
  *(v4 + 36) = 0u;
  *(v4 + 17) = 0;
  *(v4 + 52) = 0u;
  *(v4 + 20) = 0u;
  *(v4 + 4) = 0u;
  *v4 = 26;
  *(v4 + 5) = a2;
  if ((xmlSchemaAddItemSize((*(*(a1 + 48) + 32) + 72), 10, v4) & 0x80000000) != 0)
  {
    ++*(a1 + 36);
    __xmlSimpleError(0x10u, 2, 0, 0, 0);
    free(v5);
    return 0;
  }

  return v5;
}

void *xmlSchemaAddAttribute(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v10 = malloc_type_malloc(0x98uLL, 0x10700407EC41536uLL);
  if (!v10)
  {
    if (a1)
    {
      ++*(a1 + 36);
    }

    __xmlSimpleError(0x10u, 2, 0, 0, "allocating attribute");
    return 0;
  }

  v11 = v10;
  *(v10 + 100) = 0u;
  *(v10 + 20) = 0u;
  *(v10 + 4) = 0u;
  *(v10 + 116) = 0u;
  *(v10 + 37) = 0;
  *(v10 + 132) = 0u;
  *(v10 + 84) = 0u;
  *(v10 + 68) = 0u;
  *(v10 + 52) = 0u;
  *(v10 + 36) = 0u;
  *v10 = 15;
  *(v10 + 2) = a2;
  *(v10 + 13) = a4;
  *(v10 + 14) = a3;
  v12 = *(*(a1 + 48) + 32);
  if (a5)
  {
    v13 = (v12 + 64);
    v14 = 5;
  }

  else
  {
    v13 = (v12 + 72);
    v14 = 10;
  }

  if ((xmlSchemaAddItemSize(v13, v14, v11) & 0x80000000) != 0)
  {
    ++*(a1 + 36);
    __xmlSimpleError(0x10u, 2, 0, 0, 0);
    free(v11);
    return 0;
  }

  if ((xmlSchemaAddItemSize((*(a1 + 48) + 40), 10, v11) & 0x80000000) != 0)
  {
    ++*(a1 + 36);
    __xmlSimpleError(0x10u, 2, 0, 0, 0);
  }

  return v11;
}

void *xmlSchemaAddAttributeUseProhib(uint64_t a1)
{
  v2 = malloc_type_malloc(0x28uLL, 0x1070040FEECF9D1uLL);
  if (!v2)
  {
    if (a1)
    {
      ++*(a1 + 36);
    }

    __xmlSimpleError(0x10u, 2, 0, 0, "allocating attribute use prohibition");
    return 0;
  }

  v3 = v2;
  *(v2 + 9) = 0;
  *(v2 + 20) = 0u;
  *(v2 + 4) = 0u;
  *v2 = 2001;
  if ((xmlSchemaAddItemSize((*(*(a1 + 48) + 32) + 72), 10, v2) & 0x80000000) != 0)
  {
    ++*(a1 + 36);
    __xmlSimpleError(0x10u, 2, 0, 0, 0);
    free(v3);
    return 0;
  }

  return v3;
}

void xmlSchemaParseUnion(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 160);
  *(v6 + 88) |= 0x80u;
  v28 = v6;
  *(v6 + 112) = xmlSchemaGetBuiltInType(XML_SCHEMAS_ANYSIMPLETYPE);
  v7 = *(a3 + 88);
  if (v7)
  {
    while (1)
    {
      v8 = *(v7 + 72);
      if (!v8)
      {
        break;
      }

      if (xmlStrEqual(*(v8 + 16), "http://www.w3.org/2001/XMLSchema"))
      {
        goto LABEL_4;
      }

LABEL_7:
      v7 = *(v7 + 48);
      if (!v7)
      {
        goto LABEL_8;
      }
    }

    if (xmlStrEqual(*(v7 + 16), "id") || xmlStrEqual(*(v7 + 16), "memberTypes"))
    {
      goto LABEL_7;
    }

LABEL_4:
    xmlSchemaPIllegalAttrErr(a1, v7);
    goto LABEL_7;
  }

LABEL_8:
  PropNode = xmlSchemaGetPropNode(a3, "id");
  if (PropNode)
  {
    xmlSchemaPValAttrNodeID(a1, PropNode);
  }

  v10 = xmlSchemaGetPropNode(a3, "memberTypes");
  if (v10)
  {
    v30 = 0;
    v31 = 0;
    NodeContent = xmlSchemaGetNodeContent(a1, v10);
    *(v6 + 96) = NodeContent;
    v29 = 0;
    do
    {
      while (1)
      {
        v12 = *NodeContent;
        if (v12 > 0x20 || ((1 << v12) & 0x100002600) == 0)
        {
          break;
        }

        ++NodeContent;
      }

      v14 = 0;
      while (v12 > 0x20u || ((1 << v12) & 0x100002601) == 0)
      {
        LOBYTE(v12) = NodeContent[++v14];
      }

      if (!v14)
      {
        break;
      }

      v15 = xmlStrndup(NodeContent, v14);
      if (xmlSchemaPValAttrNodeQNameValue(a1, a2, v10, v15, &v30, &v31))
      {
        if (v15)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v16 = v10;
        v17 = a2;
        v18 = malloc_type_malloc(0x10uLL, 0x20040A4A59CD2uLL);
        if (!v18)
        {
          if (a1)
          {
            ++*(a1 + 36);
          }

          __xmlSimpleError(0x10u, 2, 0, 0, "xmlSchemaParseUnion, allocating a type link");
          return;
        }

        v19 = v18;
        *v18 = 0;
        v18[1] = 0;
        v20 = xmlSchemaNewQNameRef(a1, 4, v31, v30);
        if (!v20)
        {
          if (a1)
          {
            ++*(a1 + 36);
          }

          __xmlSimpleError(0x10u, 2, 0, 0, "xmlSchemaParseUnion, allocating a type item");
          free(v19);
          if (v15)
          {
            free(v15);
          }

          return;
        }

        v19[1] = v20;
        v21 = v29;
        if (!v29)
        {
          v21 = (v6 + 168);
        }

        *v21 = v19;
        v29 = v19;
        a2 = v17;
        v10 = v16;
        if (v15)
        {
LABEL_24:
          free(v15);
        }
      }

      NodeContent += v14;
    }

    while (*NodeContent);
  }

  v22 = *(a3 + 24);
  if (v22)
  {
    if (!v22->ns || !xmlStrEqual(v22->name, "annotation") || !xmlStrEqual(v22->ns->href, "http://www.w3.org/2001/XMLSchema") || (v23 = xmlSchemaParseAnnotation(a1, v22, 1), xmlSchemaAddAnnotation(v6, v23), (v22 = v22->next) != 0))
    {
      if (v22->ns && xmlStrEqual(v22->name, "simpleType") && xmlStrEqual(v22->ns->href, "http://www.w3.org/2001/XMLSchema"))
      {
        v24 = 0;
        v25 = (v6 + 56);
        while (v22->ns && xmlStrEqual(v22->name, "simpleType") && xmlStrEqual(v22->ns->href, "http://www.w3.org/2001/XMLSchema"))
        {
          v26 = xmlSchemaParseSimpleType(a1, a2, v22, 0);
          if (v26)
          {
            v27 = (v24 + 8);
            if (!v24)
            {
              v27 = v25;
            }

            *v27 = v26;
            *(v26 + 8) = 0;
            v24 = v26;
          }

          v22 = v22->next;
          if (!v22)
          {
            goto LABEL_52;
          }
        }
      }

      xmlSchemaPContentErr(a1, 3033, a3, v22, 0, "(annotation?, simpleType*)");
    }
  }

LABEL_52:
  if (!v10 && !*(v28 + 56))
  {

    xmlSchemaPCustomErrExt(a1, 3007, 0, a3, "Either the attribute 'memberTypes' or at least one <simpleType> child must be present", 0, 0, 0);
  }
}

void *xmlSchemaParseIDCSelectorAndField(xmlError *a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = *(a3 + 88);
  if (v8)
  {
    while (1)
    {
      v9 = *(v8 + 72);
      if (!v9)
      {
        break;
      }

      if (xmlStrEqual(*(v9 + 16), "http://www.w3.org/2001/XMLSchema"))
      {
        goto LABEL_4;
      }

LABEL_7:
      v8 = *(v8 + 48);
      if (!v8)
      {
        goto LABEL_8;
      }
    }

    if (xmlStrEqual(*(v8 + 16), "id") || xmlStrEqual(*(v8 + 16), "xpath"))
    {
      goto LABEL_7;
    }

LABEL_4:
    xmlSchemaPIllegalAttrErr(a1, v8);
    goto LABEL_7;
  }

LABEL_8:
  v10 = malloc_type_malloc(0x28uLL, 0x10F00407EC66000uLL);
  v11 = v10;
  if (v10)
  {
    v10[4] = 0;
    *v10 = 0u;
    *(v10 + 1) = 0u;
    PropNode = xmlSchemaGetPropNode(a3, "xpath");
    if (PropNode)
    {
      v13 = PropNode;
      NodeContent = xmlSchemaGetNodeContent(a1, PropNode);
      v11[3] = NodeContent;
      if (NodeContent)
      {
        NsList = xmlGetNsList(*(v13 + 64), *(v13 + 40));
        if (NsList)
        {
          v16 = NsList;
          if (*NsList)
          {
            v17 = 0;
              ;
            }
          }

          else
          {
            LODWORD(v17) = 0;
          }

          v20 = malloc_type_malloc(8 * ((2 * (v17 & 0x3FFFFFFF)) | 1), 0x50040EE9192B6uLL);
          if (!v20)
          {
            if (a1)
            {
              ++*(&a1->line + 1);
            }

            __xmlSimpleError(0x10u, 2, 0, 0, "allocating a namespace array");
            free(v16);
            xmlSchemaPErr(a1, v13, 3069, "Internal error: xmlSchemaParseIDCSelectorAndField, validating the XPath expression of a IDC selector.\n", 0, 0);
            goto LABEL_38;
          }

          v19 = v20;
          if (v17)
          {
            v21 = v17;
            v22 = v20 + 8;
            v23 = v16;
            do
            {
              *(v22 - 1) = (*v23)->href;
              v24 = *v23++;
              *v22 = *(v24 + 24);
              v22 += 2;
              --v21;
            }

            while (v21);
          }

          *&v20[8 * (2 * v17)] = 0;
          free(v16);
        }

        else
        {
          v19 = 0;
        }

        if (a4)
        {
          v25 = 4;
        }

        else
        {
          v25 = 2;
        }

        v26 = xmlPatterncompile(v11[3], 0, v25, v19);
        v11[4] = v26;
        if (v19)
        {
          free(v19);
          v26 = v11[4];
        }

        if (!v26)
        {
          xmlSchemaPCustomErrExt(a1, 3037, 0, v13, "The XPath expression '%s' could not be compiled", v11[3]);
        }
      }

      else
      {
        xmlSchemaPCustomErrExt(a1, 3037, 0, v13, "The XPath expression of the selector is not valid");
      }
    }

    else
    {
      xmlSchemaPMissingAttrErr(a1, a3, "name");
    }

LABEL_38:
    v27 = xmlSchemaGetPropNode(a3, "id");
    if (v27)
    {
      xmlSchemaPValAttrNodeID(a1, v27);
    }

    v28 = *(a3 + 24);
    if (v28)
    {
      if (!*(v28 + 72) || !xmlStrEqual(*(v28 + 16), "annotation") || !xmlStrEqual(*(*(v28 + 72) + 16), "http://www.w3.org/2001/XMLSchema") || (v29 = xmlSchemaParseAnnotation(a1, v28, 1), xmlSchemaAddAnnotation(a2, v29), (v28 = *(v28 + 48)) != 0))
      {
        xmlSchemaPContentErr(a1, 3033, a3, v28, 0, "(annotation?)");
      }
    }

    return v11;
  }

  if (a1)
  {
    ++*(&a1->line + 1);
  }

  __xmlSimpleError(0x10u, 2, 0, 0, "allocating a 'selector' of an identity-constraint definition");
  return v11;
}

uint64_t xmlSchemaAddComponents(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *(a2 + 4);
  if ((v3 & 2) != 0)
  {
    return 0;
  }

  *(a2 + 4) = v3 | 2;
  v5 = *(a2 + 64);
  if (*(v5 + 8) >= 1)
  {
    v6 = 0;
    while (1)
    {
      v7 = *(*v5 + 8 * v6);
      v8 = *v7;
      if (*v7 > 16)
      {
        if ((v8 - 22) >= 3)
        {
          if (v8 == 17)
          {
            if ((*(v7 + 56) & 2) != 0)
            {
              goto LABEL_48;
            }

            v9 = *(v7 + 32);
            v16 = *(a2 + 80);
            if (*a2 > 1u)
            {
              v16 = *(v16 + 80);
            }

            v11 = (v16 + 112);
          }

          else
          {
            if (v8 != 18)
            {
              goto LABEL_47;
            }

            v9 = *(v7 + 8);
            v13 = *(a2 + 80);
            if (*a2 > 1u)
            {
              v13 = *(v13 + 80);
            }

            v11 = (v13 + 88);
          }
        }

        else
        {
          v9 = *(v7 + 32);
          v12 = *(a2 + 80);
          if (*a2 > 1u)
          {
            v12 = *(v12 + 80);
          }

          v11 = (v12 + 144);
        }

        goto LABEL_37;
      }

      if (v8 <= 14)
      {
        if ((v8 - 4) >= 2)
        {
          if (v8 != 14)
          {
LABEL_47:
            xmlSchemaInternalErr2(a1, "xmlSchemaAddComponents", "Unexpected global component type", 0);
            goto LABEL_48;
          }

          v9 = *(v7 + 16);
          v11 = (*(a2 + 80) + 80);
          if (*a2 >= 2u)
          {
            v11 = (*v11 + 80);
          }
        }

        else
        {
          if ((*(v7 + 91) & 0x40) != 0)
          {
            goto LABEL_48;
          }

          v9 = *(v7 + 16);
          v10 = *(a2 + 80);
          if (*a2 > 1u)
          {
            v10 = *(v10 + 80);
          }

          v11 = (v10 + 56);
        }

        goto LABEL_37;
      }

      if (v8 == 15)
      {
        break;
      }

      if (v8 != 16)
      {
        goto LABEL_47;
      }

      if ((*(v7 + 72) & 8) == 0)
      {
        v9 = *(v7 + 16);
        v14 = *(a2 + 80);
        if (*a2 > 1u)
        {
          v14 = *(v14 + 80);
        }

        v11 = (v14 + 72);
LABEL_37:
        Dict = *v11;
        if (!*v11)
        {
          Dict = xmlHashCreateDict(10, *(a1 + 152));
          *v11 = Dict;
          if (!Dict)
          {
            xmlSchemaInternalErr2(a1, "xmlSchemaAddComponents", "failed to create a component hash table", 0);
            return 0xFFFFFFFFLL;
          }
        }

        if (xmlHashAddEntry(Dict, v9, v7))
        {
          v24 = 0;
          ComponentNode = xmlSchemaGetComponentNode(v7);
          if (*v7 == 1)
          {
            if (*(v7 + 160) == 45)
            {
              v19 = "complex type definition";
            }

            else
            {
              v19 = "simple type definition";
            }
          }

          else
          {
            v19 = xmlSchemaItemTypeToStr(*v7);
          }

          ComponentQName = xmlSchemaGetComponentQName(&v24, v7);
          xmlSchemaCustomErr4(a1, 0x6E1u, ComponentNode, v7, "A global %s '%s' does already exist", v19, ComponentQName, 0, 0);
          if (v24)
          {
            free(v24);
          }
        }
      }

LABEL_48:
      ++v6;
      v5 = *(a2 + 64);
      if (v6 >= *(v5 + 8))
      {
        goto LABEL_49;
      }
    }

    v9 = *(v7 + 16);
    v15 = *(a2 + 80);
    if (*a2 > 1u)
    {
      v15 = *(v15 + 80);
    }

    v11 = (v15 + 64);
    goto LABEL_37;
  }

LABEL_49:
  v21 = *(a2 + 40);
  if (!v21)
  {
    return 0;
  }

  while (1)
  {
    v22 = v21[3];
    if (v22)
    {
      if ((*(v22 + 4) & 2) == 0)
      {
        result = xmlSchemaAddComponents(a1, v22);
        if (result == -1)
        {
          break;
        }
      }
    }

    v21 = *v21;
    if (!v21)
    {
      return 0;
    }
  }

  return result;
}

xmlSchemaTypePtr xmlSchemaResolveElementReferences(xmlSchemaTypePtr result, uint64_t a2)
{
  if (!result)
  {
    return result;
  }

  v2 = result;
  flags = result->flags;
  if ((flags & 0x100) != 0)
  {
    return result;
  }

  result->flags = flags | 0x100;
  if (!result->subtypes)
  {
    baseNs = result->baseNs;
    if (baseNs)
    {
      Type = xmlSchemaGetType(*(a2 + 64), baseNs, result->baseType);
      if (Type)
      {
        v2->subtypes = Type;
      }

      else
      {
        xmlSchemaPResCompAttrErr(a2, v2, v2->node, "type", v2->baseNs, v2->baseType, 1, "type definition");
      }
    }
  }

  facets = v2->facets;
  if (!facets)
  {
    goto LABEL_13;
  }

  Elem = xmlSchemaGetElem(*(a2 + 64), facets, v2->redef);
  if (!Elem)
  {
    xmlSchemaPResCompAttrErr(a2, v2, 0, "substitutionGroup", v2->facets, v2->redef, 14, 0);
LABEL_13:
    result = v2->subtypes;
    goto LABEL_14;
  }

  v7 = Elem;
  result = xmlSchemaResolveElementReferences(Elem, a2);
  v2->attributeWildcard = v7;
  if (v2->subtypes)
  {
    return result;
  }

  result = v7->negNsSet;
  if (result)
  {
    goto LABEL_18;
  }

  result = xmlSchemaGetBuiltInType(XML_SCHEMAS_ANYTYPE);
  v2->subtypes = result;
LABEL_14:
  if (!result && !v2->baseNs && !v2->facets)
  {
    result = xmlSchemaGetBuiltInType(XML_SCHEMAS_ANYTYPE);
LABEL_18:
    v2->subtypes = result;
  }

  return result;
}

uint64_t xmlSchemaAttributeGroupExpandRefs(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 112);
  if (!v2)
  {
    return 0;
  }

  v3 = *(a2 + 72);
  if (v3)
  {
    return 0;
  }

  *(a2 + 72) = v3 | 1;
  if (xmlSchemaExpandAttributeGroupRefs(a1, a2, (a2 + 80), v2, 0) == -1)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t xmlSchemaFixupSimpleTypeStageOne(xmlError *a1, uint64_t a2)
{
  if (*a2 != 4)
  {
    return 0;
  }

  v3 = *(a2 + 88);
  if ((v3 & 0x20000000) != 0)
  {
    return 0;
  }

  *(a2 + 88) = v3 | 0x20000000;
  if ((v3 & 0x40) != 0)
  {
    if (*(a2 + 56))
    {
      return 0;
    }

    v8 = "list type has no item-type assigned";
    goto LABEL_21;
  }

  if ((v3 & 0x80) != 0)
  {
    if (*(a2 + 168))
    {
      return 0;
    }

    v8 = "union type has no member-types assigned";
    goto LABEL_21;
  }

  v4 = *(a2 + 112);
  if (!v4)
  {
    v8 = "type has no base-type assigned";
LABEL_21:
    xmlSchemaInternalErr2(a1, "xmlSchemaFixupSimpleTypeStageOne", v8, 0);
    return 0xFFFFFFFFLL;
  }

  if (*v4 != 1 && (*(v4 + 91) & 0x20) == 0)
  {
    result = xmlSchemaFixupSimpleTypeStageOne(a1, v4);
    if (result == -1)
    {
      return result;
    }

    v4 = *(a2 + 112);
  }

  v6 = *(v4 + 88);
  if ((v6 & 0x100) != 0)
  {
    result = 0;
    v7 = *(a2 + 88) | 0x100;
    goto LABEL_24;
  }

  if ((v6 & 0x40) == 0)
  {
    if ((v6 & 0x80) != 0)
    {
      result = 0;
      v7 = *(a2 + 88) | 0x80;
LABEL_24:
      *(a2 + 88) = v7;
      return result;
    }

    return 0;
  }

  result = 0;
  *(a2 + 88) |= 0x40u;
  *(a2 + 56) = *(v4 + 56);
  return result;
}

uint64_t xmlSchemaFixupSimpleTypeStageTwo(xmlError *ctxt, int *typeDecl, uint64_t a3, uint64_t i)
{
  if (*typeDecl != 4)
  {
    return 0xFFFFFFFFLL;
  }

  v71[11] = v4;
  v71[12] = v5;
  v7 = typeDecl[22];
  if ((v7 & 0x400000) != 0)
  {
    return 0;
  }

  v9 = *(&ctxt->line + 1);
  typeDecl[22] = v7 | 0x400000;
  typeDecl[23] = 4;
  v10 = *(typeDecl + 14);
  if (!v10)
  {
    v27 = "xmlSchemaFixupSimpleTypeStageTwo";
    v28 = "missing baseType";
LABEL_32:
    xmlSchemaInternalErr2(ctxt, v27, v28, 0);
    return 0xFFFFFFFFLL;
  }

  if (*v10 != 1 && (*(v10 + 90) & 0x40) == 0)
  {
    xmlSchemaTypeFixup(v10, ctxt);
  }

  v11 = typeDecl + 42;
  v12 = *(typeDecl + 21);
  if (v12)
  {
    while (1)
    {
      v13 = v12[1];
      if (*v13 != 1 && (*(v13 + 90) & 0x40) == 0)
      {
        xmlSchemaTypeFixup(v13, ctxt);
        v13 = v12[1];
      }

      if ((*(v13 + 88) & 0x80) != 0)
      {
        while (1)
        {
          if (*v13 != 4)
          {
            goto LABEL_20;
          }

          v14 = *(v13 + 168);
          if (v14)
          {
            break;
          }

          v13 = *(v13 + 112);
          if (!v13)
          {
            goto LABEL_20;
          }
        }

        v12[1] = *(v14 + 8);
        v15 = *v14;
        if (*v14)
        {
          break;
        }
      }

LABEL_20:
      v12 = *v12;
      if (!v12)
      {
        goto LABEL_21;
      }
    }

    v16 = *v12;
    v17 = v12;
    while (1)
    {
      v18 = malloc_type_malloc(0x10uLL, 0x20040A4A59CD2uLL);
      if (!v18)
      {
        break;
      }

      v18[1] = v15[1];
      *v17 = v18;
      *v18 = v16;
      v15 = *v15;
      v17 = v18;
      if (!v15)
      {
        goto LABEL_20;
      }
    }

    if (ctxt)
    {
      ++*(&ctxt->line + 1);
    }

    __xmlSimpleError(0x10u, 2, 0, 0, "allocating a type link");
    return 0xFFFFFFFFLL;
  }

LABEL_21:
  v19 = *(typeDecl + 14);
  v71[0] = 0;
  if (!v19)
  {
    v29 = "No base type existent";
LABEL_38:
    xmlSchemaPCustomErrExt(ctxt, 3008, typeDecl, 0, v29, 0, 0, 0);
    goto LABEL_39;
  }

  v20 = *v19;
  if (*v19 != 4 && (v20 != 1 || v19[40] == 45))
  {
    ComponentQName = xmlSchemaGetComponentQName(v71, v19);
    v22 = "The base type '%s' is not a simple type";
LABEL_26:
    v23 = ctxt;
    v24 = 3008;
    goto LABEL_27;
  }

  v30 = typeDecl[22];
  if ((v30 & 0xC0) != 0 && (v30 & 4) == 0 && v20 != 4 && (v20 != 1 || v19[40] != 46))
  {
    ComponentQName = xmlSchemaGetComponentQName(v71, v19);
    v22 = "A type, derived by list or union, must have the simple ur-type definition as base type, not '%s'";
    goto LABEL_26;
  }

  if ((v30 & 0x1C0) == 0)
  {
    v29 = "The variety is absent";
    goto LABEL_38;
  }

  v31 = v19[22];
  if ((v31 & 0x400) != 0)
  {
    v35 = xmlSchemaGetComponentQName(v71, v19);
    xmlSchemaPCustomErrExt(ctxt, 3010, typeDecl, 0, "The 'final' of its base type '%s' must not contain 'restriction'", v35);
    goto LABEL_28;
  }

  v71[0] = 0;
  if (*typeDecl != 4)
  {
    v27 = "xmlSchemaCheckCOSSTRestricts";
    v28 = "given type is not a user-derived simpleType";
    goto LABEL_32;
  }

  if ((v30 & 0x100) != 0)
  {
    if ((v31 & 0x100) == 0)
    {
      v36 = xmlSchemaGetComponentQName(v71, v19);
      xmlSchemaPCustomErrExt(ctxt, 3011, typeDecl, 0, "The base type '%s' is not an atomic simple type", v36);
      goto LABEL_28;
    }

    v38 = *(typeDecl + 15);
    if (v38)
    {
      v28 = "failed to get primitive type";
      v39 = typeDecl;
      while (v39[40] != 46 && (*(v39 + 89) & 0x40) == 0)
      {
        v39 = *(v39 + 14);
        if (!v39)
        {
          goto LABEL_77;
        }
      }

      v40 = 0;
      do
      {
        while (!xmlSchemaIsBuiltInTypeFacet(v39, *v38))
        {
          xmlSchemaPIllegalFacetAtomicErr(ctxt, typeDecl, v39, v38);
          v38 = *(v38 + 8);
          v40 = 1;
          if (!v38)
          {
            goto LABEL_39;
          }
        }

        v38 = *(v38 + 8);
      }

      while (v38);
      if (v40)
      {
        goto LABEL_39;
      }
    }

    goto LABEL_85;
  }

  if ((v30 & 0x40) != 0)
  {
    v37 = *(typeDecl + 7);
    if (!v37)
    {
LABEL_71:
      v28 = "failed to evaluate the item type";
LABEL_77:
      v27 = "xmlSchemaCheckCOSSTRestricts";
      goto LABEL_32;
    }

    if (*v37 == 4)
    {
      if ((*(v37 + 90) & 0x40) == 0)
      {
        xmlSchemaTypeFixup(*(typeDecl + 7), ctxt);
      }
    }

    else if (*v37 != 1 || *(v37 + 160) == 45)
    {
      goto LABEL_71;
    }

    v44 = *(v37 + 88);
    if ((v44 & 0x180) != 0)
    {
      if ((v44 & 0x80) == 0)
      {
LABEL_104:
        v45 = *(typeDecl + 14);
        if (*v45 != 1 || *(v45 + 160) != 46)
        {
          v48 = *(v45 + 88);
          if ((v48 & 0x40) == 0)
          {
            v49 = xmlSchemaGetComponentQName(v71, v45);
            xmlSchemaPCustomErrExt(ctxt, 3018, typeDecl, 0, "The base type '%s' must be a list type", v49);
            goto LABEL_28;
          }

          if ((v48 & 0x400) != 0)
          {
            v60 = xmlSchemaGetComponentQName(v71, v45);
            xmlSchemaPCustomErrExt(ctxt, 3019, typeDecl, 0, "The 'final' of the base type '%s' must not contain 'restriction'", v60);
            goto LABEL_28;
          }

          v57 = *(v45 + 56);
          if (v57 && (*v57 == 4 || *v57 == 1 && v57[40] != 45))
          {
            if (v37 != v57 && xmlSchemaCheckCOSSTDerivedOK(ctxt, v37, v57, 0))
            {
              v69 = 0;
              v70 = 0;
              v62 = xmlSchemaGetComponentQName(v71, v37);
              v63 = xmlSchemaGetComponentQName(&v70, v57);
              v64 = xmlSchemaGetComponentQName(&v69, *(typeDecl + 14));
              xmlSchemaPCustomErrExt(ctxt, 3020, typeDecl, 0, "The item type '%s' is not validly derived from the item type '%s' of the base type '%s'", v62, v63, v64);
              goto LABEL_155;
            }

            v68 = *(typeDecl + 15);
            if (v68)
            {
              v56 = 0;
              do
              {
                while ((*v68 - 1006) > 5)
                {
                  xmlSchemaPIllegalFacetListUnionErr(ctxt, 3021, typeDecl, v68);
                  v68 = *(v68 + 8);
                  v56 = 1;
                  if (!v68)
                  {
                    goto LABEL_39;
                  }
                }

                v68 = *(v68 + 8);
              }

              while (v68);
LABEL_168:
              if (v56)
              {
                goto LABEL_39;
              }
            }

            goto LABEL_85;
          }

          v28 = "failed to eval the item type of a base type";
          goto LABEL_77;
        }

        if ((v44 & 0x800) != 0)
        {
          v61 = xmlSchemaGetComponentQName(v71, v37);
          xmlSchemaPCustomErrExt(ctxt, 3016, typeDecl, 0, "The final of its item type '%s' must not contain 'list'", v61);
          goto LABEL_28;
        }

        for (i = *(typeDecl + 15); i; i = *(i + 8))
        {
          if (*i != 1008)
          {
            xmlSchemaPIllegalFacetListUnionErr(ctxt, 3017, typeDecl, i);
            goto LABEL_39;
          }
        }

LABEL_85:
        result = xmlSchemaCheckFacetValues(typeDecl, ctxt, a3, i);
        if (result != -1)
        {
          if (result)
          {
            goto LABEL_39;
          }

          if (!*(typeDecl + 22) && !*(*(typeDecl + 14) + 176) || (result = xmlSchemaDeriveAndValidateFacets(ctxt, typeDecl), result != -1))
          {
            result = xmlSchemaTypeFixupWhitespace(typeDecl);
            if (result != -1)
            {
              if (!result)
              {
                xmlSchemaTypeFixupOptimFacets(typeDecl);
              }

              goto LABEL_39;
            }
          }
        }

        return result;
      }

      v50 = (v37 + 168);
      do
      {
        v50 = *v50;
        if (!v50)
        {
          goto LABEL_104;
        }

        v51 = v50[1];
      }

      while ((*(v51 + 89) & 1) != 0);
      ComponentQName = xmlSchemaGetComponentQName(v71, v51);
      v22 = "The item type is a union type, but the member type '%s' of this item type is not atomic";
    }

    else
    {
      ComponentQName = xmlSchemaGetComponentQName(v71, v37);
      v22 = "The item type '%s' does not have a variety of atomic or union";
    }

    v23 = ctxt;
    v24 = 3015;
LABEL_27:
    xmlSchemaPCustomErrExt(v23, v24, typeDecl, 0, v22, ComponentQName, 0, 0);
LABEL_28:
    v25 = v71[0];
    if (!v71[0])
    {
      goto LABEL_39;
    }

LABEL_29:
    free(v25);
    goto LABEL_39;
  }

  if ((v30 & 0x80) == 0)
  {
    goto LABEL_85;
  }

  v32 = typeDecl + 42;
  while (1)
  {
    v32 = *v32;
    if (!v32)
    {
      break;
    }

    v33 = *(v32 + 1);
    if (*v33 != 1 && (*(v33 + 90) & 0x40) == 0)
    {
      xmlSchemaTypeFixup(*(v32 + 1), ctxt);
      v33 = *(v32 + 1);
    }

    if ((*(v33 + 88) & 0x140) == 0)
    {
      v34 = xmlSchemaGetComponentQName(v71, v33);
      xmlSchemaPCustomErrExt(ctxt, 3023, typeDecl, 0, "The member type '%s' is neither an atomic, nor a list type", v34);
      goto LABEL_28;
    }
  }

  v41 = *(typeDecl + 14);
  if (*(v41 + 160) == 46)
  {
    v42 = *v11;
    if (*v11)
    {
      while (1)
      {
        v43 = v42[1];
        if (v43)
        {
          if ((*(v43 + 89) & 0x10) != 0)
          {
            break;
          }
        }

        v42 = *v42;
        if (!v42)
        {
          goto LABEL_98;
        }
      }

      v59 = xmlSchemaGetComponentQName(v71, v43);
      xmlSchemaPCustomErrExt(ctxt, 3024, typeDecl, 0, "The 'final' of member type '%s' contains 'union'", v59);
      goto LABEL_28;
    }

LABEL_98:
    if (*(typeDecl + 22))
    {
      xmlSchemaPCustomErrExt(ctxt, 3025, typeDecl, 0, "No facets allowed", 0, 0, 0);
      goto LABEL_39;
    }

    goto LABEL_85;
  }

  v46 = *(v41 + 88);
  if ((v46 & 0x80) == 0)
  {
    v47 = xmlSchemaGetComponentQName(v71, v41);
    xmlSchemaPCustomErrExt(ctxt, 3027, typeDecl, 0, "The base type '%s' is not a union type", v47);
    goto LABEL_28;
  }

  if ((v46 & 0x400) != 0)
  {
    v58 = xmlSchemaGetComponentQName(v71, v41);
    xmlSchemaPCustomErrExt(ctxt, 3026, typeDecl, 0, "The 'final' of its base type '%s' must not contain 'restriction'", v58);
    goto LABEL_28;
  }

  v52 = *v11;
  if (!*v11)
  {
LABEL_133:
    v55 = *(typeDecl + 15);
    if (v55)
    {
      v56 = 0;
      do
      {
        while ((*v55 & 0xFFFFFFFE) == 0x3EE)
        {
          v55 = *(v55 + 8);
          if (!v55)
          {
            goto LABEL_168;
          }
        }

        xmlSchemaPIllegalFacetListUnionErr(ctxt, 3029, typeDecl, v55);
        v55 = *(v55 + 8);
        v56 = 1;
      }

      while (v55);
      goto LABEL_39;
    }

    goto LABEL_85;
  }

  do
  {
    if (*v41 != 4)
    {
      break;
    }

    v53 = *(v41 + 168);
    if (v53)
    {
      goto LABEL_127;
    }

    v41 = *(v41 + 112);
  }

  while (v41);
  v53 = 0;
  while (1)
  {
LABEL_127:
    if (!v53)
    {
      xmlSchemaInternalErr2(ctxt, "xmlSchemaCheckCOSSTRestricts", "different number of member types in base", 0);
      goto LABEL_132;
    }

    v54 = v52[1];
    a3 = v53[1];
    if (v54 != a3)
    {
      if (xmlSchemaCheckCOSSTDerivedOK(ctxt, v54, a3, 0))
      {
        break;
      }
    }

    v53 = *v53;
LABEL_132:
    v52 = *v52;
    if (!v52)
    {
      goto LABEL_133;
    }
  }

  v69 = 0;
  v70 = 0;
  v65 = xmlSchemaGetComponentQName(v71, v52[1]);
  v66 = xmlSchemaGetComponentQName(&v70, v53[1]);
  v67 = xmlSchemaGetComponentQName(&v69, *(typeDecl + 14));
  xmlSchemaPCustomErrExt(ctxt, 3028, typeDecl, 0, "The member type %s is not validly derived from its corresponding member type %s of the base type %s", v65, v66, v67);
LABEL_155:
  if (v71[0])
  {
    free(v71[0]);
  }

  if (v70)
  {
    free(v70);
  }

  v25 = v69;
  if (v69)
  {
    goto LABEL_29;
  }

LABEL_39:
  if (v9 == *(&ctxt->line + 1))
  {
    return 0;
  }

  else
  {
    return ctxt->line;
  }
}

void xmlSchemaCheckAttrPropsCorrect(xmlError *a1, uint64_t a2)
{
  v2 = *(a2 + 96);
  if (v2)
  {
    v4 = *(a2 + 88);
    if (v4)
    {
      v6 = *(a2 + 96);
      do
      {
        if (*v6 == 5)
        {
          break;
        }

        v7 = *(v6 + 160);
        if (v7 == 45)
        {
          break;
        }

        if (*v6 == 1)
        {
          if (v7 == 23)
          {
            xmlSchemaCustomErr4(a1, 0xC12u, 0, a2, "Value constraints are not allowed if the type definition is or is derived from xs:ID", 0, 0, 0, 0);
            return;
          }

          if (v7 == 46)
          {
            break;
          }
        }

        v6 = *(v6 + 56);
      }

      while (v6);
      v8 = xmlSchemaVCheckCVCSimpleType(a1, *(a2 + 104), v2, v4, (a2 + 136), 1u, 1, 0);
      if (v8)
      {
        if (v8 < 0)
        {

          xmlSchemaInternalErr2(a1, "xmlSchemaCheckAttrPropsCorrect", "calling xmlSchemaVCheckCVCSimpleType()", 0);
        }

        else
        {
          xmlSchemaCustomErr4(a1, 0xC07u, 0, a2, "The value of the value constraint is not valid", 0, 0, 0, 0);
        }
      }
    }
  }
}

void xmlSchemaCheckAttrUsePropsCorrect(xmlError *a1, uint64_t a2)
{
  if (!a2)
  {
    return;
  }

  v3 = *(a2 + 56);
  if (!v3)
  {
    return;
  }

  v4 = *(a2 + 24);
  if (!v4 || *v4 != 15)
  {
    return;
  }

  v5 = a1;
  if (*(v4 + 88) && (*(v4 + 121) & 2) != 0 && (*(a2 + 32) & 1) == 0)
  {
    v6 = "The attribute declaration has a 'fixed' value constraint , thus the attribute use must also have a 'fixed' value constraint";
    v7 = a2;
    v8 = 0;
LABEL_26:

    xmlSchemaPCustomErrExt(a1, 3078, v7, 0, v6, v8, 0, 0);
    return;
  }

  v9 = (a2 + 64);
  if (!*(a2 + 64) || (v10 = *(v4 + 96)) == 0)
  {
LABEL_22:
    v14 = *(v4 + 136);
    if (!v14 || (*(v4 + 120) & 1) != 0 || xmlSchemaAreValuesEqual(*v9, v14))
    {
      return;
    }

    v8 = *(*(a2 + 24) + 88);
    v6 = "The 'fixed' value constraint of the attribute use must match the attribute declaration's value constraint '%s'";
    a1 = v5;
    v7 = a2;
    goto LABEL_26;
  }

  v11 = *(v4 + 96);
  do
  {
    if (*v11 == 5)
    {
      break;
    }

    v12 = *(v11 + 160);
    if (v12 == 45)
    {
      break;
    }

    if (*v11 == 1)
    {
      if (v12 == 23)
      {
        xmlSchemaCustomErr4(a1, 0xC11u, 0, a2, "Value constraints are not allowed if the type definition is or is derived from xs:ID", 0, 0, 0, 0);
        return;
      }

      if (v12 == 46)
      {
        break;
      }
    }

    v11 = *(v11 + 56);
  }

  while (v11);
  v13 = xmlSchemaVCheckCVCSimpleType(a1, *(a2 + 40), v10, v3, (a2 + 64), 1u, 1, 0);
  if (!v13)
  {
    v4 = *(a2 + 24);
    goto LABEL_22;
  }

  if (v13 < 0)
  {

    xmlSchemaInternalErr2(v5, "xmlSchemaCheckAttrUsePropsCorrect", "calling xmlSchemaVCheckCVCSimpleType()", 0);
  }

  else
  {
    xmlSchemaCustomErr4(v5, 0xC11u, 0, a2, "The value of the value constraint is not valid", 0, 0, 0, 0);
  }
}

xmlError *xmlSchemaCheckAGPropsCorrect(xmlError *result, uint64_t a2)
{
  v2 = *(a2 + 112);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3 >= 2)
    {
      v5 = result;
      v6 = 0;
      v7 = v3 - 2;
      v8 = v3 - 1;
      do
      {
        v9 = v3--;
        v10 = *(*v2 + 8 * v3);
        if (v3)
        {
          v11 = *(v10 + 24);
          v12 = *v2 + 8 * v7;
          v13 = v8;
          while (1)
          {
            v14 = *(*v12 + 24);
            if (*(v11 + 16) == *(v14 + 16) && *(v11 + 112) == *(v14 + 112))
            {
              break;
            }

            --v13;
            v12 -= 8;
            if (v13 <= 0)
            {
              goto LABEL_9;
            }
          }

          v21 = 0;
          v17 = *(a2 + 64);
          ComponentDesignation = xmlSchemaGetComponentDesignation(&v21, v10);
          xmlSchemaCustomErr4(v5, 0xC0Fu, v17, a2, "Duplicate %s", ComponentDesignation, 0, 0, 0);
          if (v21)
          {
            free(v21);
          }

          result = xmlSchemaItemListRemove(v2, v3);
          if (result == -1)
          {
            return result;
          }
        }

        else
        {
LABEL_9:
          for (i = *(*(v10 + 24) + 96); i; i = *(i + 56))
          {
            if (*i == 5)
            {
              break;
            }

            v16 = *(i + 160);
            if (v16 == 45)
            {
              break;
            }

            if (*i == 1)
            {
              if (v16 == 23)
              {
                if (!v6)
                {
                  goto LABEL_25;
                }

                v21 = 0;
                v19 = *(a2 + 64);
                v20 = xmlSchemaGetComponentDesignation(&v21, v10);
                xmlSchemaCustomErr4(v5, 0xC0Fu, v19, a2, "There must not exist more than one attribute declaration of type 'xs:ID' (or derived from 'xs:ID'). The %s violates this constraint", v20, 0, 0, 0);
                if (v21)
                {
                  free(v21);
                }

                result = xmlSchemaItemListRemove(v2, v3);
                if (result != -1)
                {
LABEL_25:
                  v6 = 1;
                  break;
                }

                return result;
              }

              if (v16 == 46)
              {
                break;
              }
            }
          }
        }

        --v7;
        --v8;
      }

      while (v9 > 1);
    }
  }

  return result;
}

uint64_t xmlSchemaCheckSRCRedefineSecond(uint64_t result)
{
  v1 = *(*(result + 48) + 56);
  if (v1)
  {
    v2 = result;
    do
    {
      v3 = v1[3];
      if (v3)
      {
        v4 = v1[1];
        if ((*v4 - 4) >= 2)
        {
          if (*v4 == 16)
          {
            result = xmlSchemaCheckDerivationOKRestriction2to4(v2, 1, v4, v3, *(v4 + 112), *(v3 + 112), *(v4 + 80), *(v3 + 80));
            if (result == -1)
            {
              return result;
            }
          }
        }

        else
        {
          *(v3 + 16) = 0;
        }
      }

      v1 = *v1;
    }

    while (v1);
  }

  return result;
}

uint64_t xmlSchemaFixupComplexType(uint64_t a1, uint64_t a2)
{
  if (*a2 == 1)
  {
    return 0;
  }

  v97[11] = v2;
  v97[12] = v3;
  v6 = *(a2 + 88);
  if ((v6 & 0x400000) != 0)
  {
    return 0;
  }

  v8 = *(a1 + 36);
  v9 = *(a2 + 112);
  *(a2 + 88) = v6 | 0x400000;
  if (!v9)
  {
    v13 = "xmlSchemaFixupComplexType";
    v14 = "missing baseType";
LABEL_19:
    xmlSchemaInternalErr2(a1, v13, v14, 0);
    goto LABEL_20;
  }

  if (*v9 != 1 && (*(v9 + 90) & 0x40) == 0)
  {
    xmlSchemaTypeFixup(v9, a1);
  }

  if ((*(v9 + 90) & 0x80) != 0)
  {
    return 0;
  }

  v10 = *(a2 + 112);
  v11 = *(a2 + 92);
  if ((v11 | 2) != 6)
  {
    if (*v10 == 5 || *(v10 + 160) == 45)
    {
      goto LABEL_40;
    }

    v97[0] = 0;
    v15 = *(a2 + 72);
    v16 = xmlSchemaFormatQName(v97, *(v10 + 208), *(v10 + 16));
    xmlSchemaPCustomErrExt(a1, 3076, a2, v15, "If using <complexContent>, the base type is expected to be a complex type. The base type '%s' is a simple type", v16);
LABEL_34:
    if (v97[0])
    {
      free(v97[0]);
    }

    goto LABEL_36;
  }

  if (*v10 == 4 || *v10 == 1 && *(v10 + 160) != 45)
  {
    if ((*(a2 + 88) & 2) != 0)
    {
      goto LABEL_40;
    }

    v97[0] = 0;
    v17 = xmlSchemaFormatQName(v97, *(v10 + 208), *(v10 + 16));
    v18 = "If using <simpleContent> and <restriction>, the base type must be a complex type. The base type '%s' is a simple type";
    goto LABEL_26;
  }

  v12 = *(v10 + 92);
  if (v12 == 3)
  {
    if ((*(a2 + 88) & 4) == 0)
    {
      v21 = "If <simpleContent> and <extension> is used, the base type must be a simple type. The base type '%s' is a complex type";
LABEL_32:
      v97[0] = 0;
      v17 = xmlSchemaFormatQName(v97, *(v10 + 208), *(v10 + 16));
      v19 = a1;
      v20 = a2;
      v18 = v21;
      goto LABEL_33;
    }

    if (!xmlSchemaIsParticleEmptiable(*(v10 + 56)))
    {
      v21 = "If <simpleContent> and <restriction> is used, the base type must be a simple type or a complex type with mixed content and particle emptiable. The base type '%s' is none of those";
      goto LABEL_32;
    }

    if (*(a2 + 192))
    {
      goto LABEL_40;
    }

    v97[0] = 0;
    v17 = xmlSchemaFormatQName(v97, *(v10 + 208), *(v10 + 16));
    v18 = "A <simpleType> is expected among the children of <restriction>, if <simpleContent> is used and the base type '%s' is a complex type";
LABEL_26:
    v19 = a1;
    v20 = a2;
LABEL_33:
    xmlSchemaPCustomErrExt(v19, 3076, v20, 0, v18, v17, 0, 0);
    goto LABEL_34;
  }

  if (v12 != 4 && v12 != 6)
  {
    if ((*(a2 + 88) & 4) != 0)
    {
      v21 = "If <simpleContent> and <restriction> is used, the base type must be a simple type or a complex type with mixed content and particle emptiable. The base type '%s' is none of those";
    }

    else
    {
      v21 = "If <simpleContent> and <extension> is used, the base type must be a simple type. The base type '%s' is a complex type";
    }

    goto LABEL_32;
  }

  if (!*(v10 + 192))
  {
    xmlSchemaPCustomErrExt(a1, 3069, a2, 0, "Internal error: xmlSchemaCheckSRCCT, '%s', base type has no content type", *(a2 + 16));
LABEL_20:
    *(a2 + 88) |= 0x800000u;
    return 0xFFFFFFFFLL;
  }

LABEL_40:
  if (v11 == 4)
  {
    v22 = *v9;
    if (*v9 != 5 && *(v9 + 160) != 45)
    {
LABEL_52:
      if (v22 != 4 && (v22 != 1 || *(v9 + 160) == 45) || (*(a2 + 88) & 2) == 0)
      {
        xmlSchemaPCustomErrExt(a1, 3069, a2, 0, "Internal error: xmlSchemaTypeFixup, complex type '%s' with <simpleContent>: unhandled derivation case", *(a2 + 16));
        goto LABEL_20;
      }

      *(a2 + 192) = v9;
      goto LABEL_110;
    }

    v23 = *(v9 + 192);
    if (!v23 || (*(a2 + 88) & 4) == 0)
    {
      if (v22 == 5 || *(v9 + 160) == 45)
      {
        if (*(v9 + 92) == 3 && (*(a2 + 88) & 4) != 0)
        {
          v42 = *(a2 + 192);
          if (!v42 || !*(v42 + 112))
          {
            xmlSchemaPCustomErrExt(a1, 3069, a2, 0, "Internal error: xmlSchemaTypeFixup, complex type '%s': the <simpleContent><restriction> is missing a <simpleType> child, but was not caught by xmlSchemaCheckSRCCT()", *(a2 + 16));
            goto LABEL_20;
          }

          goto LABEL_110;
        }

        if ((v22 == 5 || *(v9 + 160) == 45) && (*(a2 + 88) & 2) != 0)
        {
          if (!v23)
          {
            xmlSchemaPCustomErrExt(a1, 3069, a2, 0, "Internal error: xmlSchemaTypeFixup, complex type '%s': the <extension>ed base type is a complex type with no simple content type", *(a2 + 16));
            goto LABEL_20;
          }

          *(a2 + 192) = v23;
          goto LABEL_110;
        }
      }

      goto LABEL_52;
    }

    v29 = *(a2 + 192);
    if (v29)
    {
      *(a2 + 192) = 0;
      v23 = v29;
    }

    v30 = xmlSchemaAddType(a1, *(a1 + 64), 4, 0, *(a2 + 208), *(a2 + 72), 0);
    if (!v30)
    {
      goto LABEL_20;
    }

    v31 = v30;
    *v30 = 4;
    *(v30 + 14) = v23;
    *(v30 + 15) = *(a2 + 120);
    *(a2 + 120) = 0;
    *(v30 + 22) = *(a2 + 176);
    *(a2 + 176) = 0;
    *(a2 + 192) = v30;
    if (*v23 != 1 && (*(v23 + 90) & 0x40) == 0)
    {
      xmlSchemaTypeFixup(v23, a1);
    }

    if (xmlSchemaFixupSimpleTypeStageOne(a1, v31) == -1)
    {
      goto LABEL_20;
    }

    v32 = xmlSchemaFixupSimpleTypeStageTwo(a1, v31);
    if (v32 == -1)
    {
      goto LABEL_20;
    }

    if (!v32)
    {
      goto LABEL_110;
    }

LABEL_36:
    *(a2 + 88) |= 0x800000u;
    return *(a1 + 32);
  }

  v24 = *(a2 + 56);
  if (!v24)
  {
    v28 = *(a2 + 88);
    if (v28)
    {
LABEL_81:
      v33 = xmlSchemaAddParticle(a1, *(a2 + 72), 1, 1);
      if (!v33)
      {
        goto LABEL_20;
      }

      v24 = v33;
      v34 = xmlSchemaAddModelGroup(a1, *(a1 + 64), 6, *(a2 + 72));
      v24[3] = v34;
      if (!v34)
      {
        goto LABEL_20;
      }

      *(a2 + 56) = v24;
      goto LABEL_84;
    }

LABEL_69:
    *(a2 + 92) = 1;
    if ((v28 & 4) == 0)
    {
      *(a2 + 92) = *(v9 + 92);
      *(a2 + 56) = *(v9 + 56);
      *(a2 + 192) = *(v9 + 192);
    }

    goto LABEL_110;
  }

  if (*v24 != 25 || ((v25 = v24[3], v26 = *v25, *v25 != 6) ? (v27 = v26 == 8) : (v27 = 1), !v27 && (v26 != 7 || *(v24 + 8)) || *(v25 + 3)))
  {
    v35 = 0;
    goto LABEL_88;
  }

  v28 = *(a2 + 88);
  if ((v28 & 1) == 0)
  {
    goto LABEL_69;
  }

  if (v26 != 6)
  {
    goto LABEL_81;
  }

LABEL_84:
  v35 = 1;
LABEL_88:
  *(a2 + 92) = 2;
  v36 = *(a2 + 88);
  if ((v36 & 4) != 0 || *(v9 + 92) == 1)
  {
    if (v36)
    {
      *(a2 + 92) = 3;
    }
  }

  else
  {
    if (v36)
    {
      *(a2 + 92) = 3;
    }

    v37 = v24[3];
    if (v37 && *v37 == 8)
    {
      ComponentNode = xmlSchemaGetComponentNode(a2);
      xmlSchemaCustomErr4(a1, 0xC13u, ComponentNode, 0, "The type has an 'all' model group in its {content type} and thus cannot be derived from a non-empty type, since this would produce a 'sequence' model group containing the 'all' model group; 'all' model groups are not allowed to appear inside other model groups", 0, 0, 0, 0);
      goto LABEL_110;
    }

    v39 = *(v9 + 56);
    if (!v39)
    {
      goto LABEL_109;
    }

    v40 = *(v39 + 24);
    if (v40 && *v40 == 8)
    {
      v41 = xmlSchemaGetComponentNode(a2);
      xmlSchemaCustomErr4(a1, 0xC13u, v41, 0, "A type cannot be derived by extension from a type which has an 'all' model group in its {content type}, since this would produce a 'sequence' model group containing the 'all' model group; 'all' model groups are not allowed to appear inside other model groups", 0, 0, 0, 0);
      goto LABEL_110;
    }

    if ((v35 & 1) == 0)
    {
      v74 = xmlSchemaAddParticle(a1, *(a2 + 72), 1, 1);
      if (!v74)
      {
        goto LABEL_20;
      }

      v75 = v74;
      v76 = xmlSchemaAddModelGroup(a1, *(a1 + 64), 6, *(a2 + 72));
      v75[3] = v76;
      if (!v76)
      {
        goto LABEL_20;
      }

      *(a2 + 56) = v75;
      v77 = xmlSchemaAddParticle(a1, *(a2 + 72), *(*(v9 + 56) + 32), *(*(v9 + 56) + 36));
      *(v75[3] + 24) = v77;
      if (!v77)
      {
        goto LABEL_20;
      }

      v78 = *(*(v9 + 56) + 24);
      v77[2] = v24;
      v77[3] = v78;
    }

    else
    {
LABEL_109:
      *(v37 + 24) = v39;
    }
  }

LABEL_110:
  v43 = *(a2 + 112);
  if (!v43)
  {
    v13 = "xmlSchemaFixupTypeAttributeUses";
    v14 = "no base type";
    goto LABEL_19;
  }

  v96 = v8;
  if (*v43 != 1 && (*(v43 + 90) & 0x40) == 0 && xmlSchemaTypeFixup(v43, a1) == -1)
  {
    goto LABEL_20;
  }

  v44 = *(a2 + 216);
  v45 = *(v43 + 216);
  if (!v44)
  {
    goto LABEL_117;
  }

  if ((*(a2 + 88) & 4) == 0)
  {
    if (xmlSchemaExpandAttributeGroupRefs(a1, a2, (a2 + 152), *(a2 + 216), 0) != -1)
    {
LABEL_117:
      v46 = 0;
      goto LABEL_123;
    }

    goto LABEL_134;
  }

  if (xmlSchemaExpandAttributeGroupRefs(a1, a2, (a2 + 152), *(a2 + 216), *(a1 + 232)) == -1)
  {
LABEL_134:
    v13 = "xmlSchemaFixupTypeAttributeUses";
    v14 = "failed to expand attributes";
    goto LABEL_19;
  }

  if (*(*(a1 + 232) + 8))
  {
    v46 = *(a1 + 232);
  }

  else
  {
    v46 = 0;
  }

LABEL_123:
  if (!v45)
  {
    goto LABEL_153;
  }

  if ((*(a2 + 88) & 4) != 0)
  {
    if (v44)
    {
      v51 = *(v44 + 2);
    }

    else
    {
      v51 = 0;
    }

    v52 = *(v45 + 8);
    if (v52 >= 1)
    {
      for (i = 0; i < v52; ++i)
      {
        v54 = *(*v45 + 8 * i);
        if (v46 && (v55 = *(v46 + 2), v55 >= 1))
        {
          v56 = *v46;
          v57 = *(v54 + 24);
          while (*(v57 + 16) != *(*v56 + 16) || *(v57 + 112) != *(*v56 + 24))
          {
            v56 += 8;
            if (!--v55)
            {
              goto LABEL_144;
            }
          }
        }

        else
        {
LABEL_144:
          if (v51 < 1)
          {
LABEL_149:
            if (!v44)
            {
              v44 = xmlSchemaItemListCreate();
              *(a2 + 216) = v44;
              if (!v44)
              {
                goto LABEL_20;
              }
            }

            xmlSchemaItemListAddSize(v44, 2, v54);
            v52 = *(v45 + 8);
          }

          else
          {
            v58 = *v44;
            v59 = *(v54 + 24);
            v60 = v51;
            while (1)
            {
              v61 = *(*v58 + 24);
              if (*(v59 + 16) == *(v61 + 16) && *(v59 + 112) == *(v61 + 112))
              {
                break;
              }

              v58 += 8;
              if (!--v60)
              {
                goto LABEL_149;
              }
            }
          }
        }
      }
    }

LABEL_153:
    if (!v44)
    {
      goto LABEL_156;
    }

    goto LABEL_154;
  }

  v47 = *(v45 + 8);
  if (v47 < 1)
  {
    goto LABEL_153;
  }

  for (j = 0; j < v47; ++j)
  {
    v49 = *(*v45 + 8 * j);
    if (!v44)
    {
      v50 = xmlSchemaItemListCreate();
      *(a2 + 216) = v50;
      if (!v50)
      {
        goto LABEL_20;
      }

      v44 = v50;
      v47 = *(v45 + 8);
    }

    xmlSchemaItemListAddSize(v44, v47, v49);
    v47 = *(v45 + 8);
  }

LABEL_154:
  if (!*(v44 + 2))
  {
    xmlSchemaItemListFree(v44);
    *(a2 + 216) = 0;
  }

LABEL_156:
  if ((*(a2 + 88) & 2) == 0)
  {
    goto LABEL_258;
  }

  v62 = *(v43 + 152);
  if (!v62)
  {
    goto LABEL_258;
  }

  v63 = *(a2 + 152);
  if (!v63)
  {
    *(a2 + 152) = v62;
    goto LABEL_258;
  }

  v64 = *(v63 + 44);
  if (v64 != *(v62 + 44))
  {
    if (v64)
    {
      goto LABEL_258;
    }

    *(v63 + 44) = 1;
    v71 = *(v63 + 48);
    if (!v71)
    {
      goto LABEL_178;
    }

    do
    {
      v72 = *v71;
      free(v71);
      v71 = v72;
    }

    while (v72);
    goto LABEL_177;
  }

  v65 = *(v63 + 48);
  v66 = *(v62 + 48);
  if ((v65 == 0) != (v66 != 0))
  {
    v67 = *(v63 + 56);
    v68 = *(v62 + 56);
    if ((v67 == 0) != (v68 != 0) && (!v67 || *(v67 + 8) == *(v68 + 8)))
    {
      if (!v65)
      {
        goto LABEL_258;
      }

      v86 = *(v63 + 48);
LABEL_216:
      v87 = (v62 + 48);
      while (1)
      {
        v87 = *v87;
        if (!v87)
        {
          break;
        }

        if (v86[1] == v87[1])
        {
          v86 = *v86;
          if (v86)
          {
            goto LABEL_216;
          }

          goto LABEL_258;
        }
      }
    }
  }

  if (v65 && v66)
  {
    do
    {
      v69 = v65;
      while (v66[1] != v69[1])
      {
        v69 = *v69;
        if (!v69)
        {
          v70 = xmlSchemaNewWildcardNsConstraint(a1);
          if (!v70)
          {
            goto LABEL_20;
          }

          v70[1] = v66[1];
          *v70 = *(v63 + 48);
          *(v63 + 48) = v70;
          break;
        }
      }

      v66 = *v66;
    }

    while (v66);
    goto LABEL_258;
  }

  v73 = *(v63 + 56);
  v79 = *(v62 + 56);
  if (!v73)
  {
    goto LABEL_264;
  }

  v80 = v73[1];
  if (v79 && v80 != *(v79 + 8))
  {
LABEL_190:
    v73[1] = 0;
    goto LABEL_258;
  }

  if (!v66 || !v80)
  {
LABEL_264:
    if (v79 && v65 && *(v79 + 8))
    {
      goto LABEL_198;
    }

    if (v73 && v66 && !v73[1])
    {
      if (v65)
      {
        v85 = *(v63 + 48);
      }

      else
      {
        v85 = *(v62 + 48);
      }

      goto LABEL_224;
    }

    if (!v79)
    {
      goto LABEL_258;
    }

    if (!v65)
    {
      goto LABEL_258;
    }

    v88 = *(v79 + 8);
    v85 = *(v63 + 48);
    if (v88)
    {
      goto LABEL_258;
    }

LABEL_224:
    while (v85[1])
    {
      v85 = *v85;
      if (!v85)
      {
        if (v73)
        {
          goto LABEL_258;
        }

        if (v65)
        {
          do
          {
            v89 = *v65;
            free(v65);
            v65 = v89;
          }

          while (v89);
          *(v63 + 48) = 0;
        }

        goto LABEL_242;
      }
    }

    *(v63 + 44) = 1;
    if (!v65)
    {
      goto LABEL_179;
    }

    do
    {
      v92 = *v65;
      free(v65);
      v65 = v92;
    }

    while (v92);
LABEL_177:
    *(v63 + 48) = 0;
LABEL_178:
    v73 = *(v63 + 56);
    goto LABEL_179;
  }

  v81 = *(v63 + 56);
  if (v65)
  {
LABEL_198:
    v81 = *(v62 + 56);
    v66 = *(v63 + 48);
  }

  v82 = 0;
  v83 = 0;
  while (1)
  {
    v84 = v66[1];
    if (v84)
    {
      if (v84 == *(v81 + 8))
      {
        v83 = 1;
      }
    }

    else
    {
      v82 = 1;
    }

    if (v83 && v82)
    {
      break;
    }

    v66 = *v66;
    if (!v66)
    {
      goto LABEL_231;
    }
  }

  v83 = 1;
  v82 = 1;
LABEL_231:
  if (v83 && v82)
  {
    *(v63 + 44) = 1;
    if (!v65)
    {
LABEL_179:
      if (v73)
      {
        free(v73);
        *(v63 + 56) = 0;
      }

      goto LABEL_258;
    }

    do
    {
      v90 = *v65;
      free(v65);
      v65 = v90;
    }

    while (v90);
    goto LABEL_177;
  }

  if (v83 && !v82)
  {
    if (v65)
    {
      do
      {
        v91 = *v65;
        free(v65);
        v65 = v91;
      }

      while (v91);
      *(v63 + 48) = 0;
      v73 = *(v63 + 56);
    }

    if (!v73)
    {
LABEL_242:
      v73 = xmlSchemaNewWildcardNsConstraint(a1);
      *(v63 + 56) = v73;
      if (!v73)
      {
        goto LABEL_20;
      }
    }

    goto LABEL_190;
  }

  if (v83 || !v82)
  {
    if (!v73 && !v83 && !v82)
    {
      if (v65)
      {
        do
        {
          v93 = *v65;
          free(v65);
          v65 = v93;
        }

        while (v93);
        *(v63 + 48) = 0;
      }

      v94 = xmlSchemaNewWildcardNsConstraint(a1);
      *(v63 + 56) = v94;
      if (!v94)
      {
        goto LABEL_20;
      }

      v94[1] = *(*(v62 + 56) + 8);
    }
  }

  else
  {
    xmlSchemaPErr(a1, *(v63 + 24), 1794, "The union of the wildcard is not expressible.\n", 0, 0);
  }

LABEL_258:
  v95 = xmlSchemaCheckCTComponent(a1, a2);
  if (v95 == -1)
  {
    goto LABEL_20;
  }

  if (v95)
  {
    goto LABEL_36;
  }

  if (v96 != *(a1 + 36))
  {
    return *(a1 + 32);
  }

  return 0;
}

void xmlSchemaCheckElementDeclComponent(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return;
  }

  v3 = *(a1 + 88);
  if ((v3 & 0x40000) != 0)
  {
    return;
  }

  *(a1 + 88) = v3 | 0x40000;
  v5 = *(a1 + 56);
  v6 = *(a1 + 152);
  if (v6)
  {
    xmlSchemaCheckElementDeclComponent(*(a1 + 152), a2);
    if ((*(a1 + 88) & 2) != 0)
    {
      v7 = 0;
    }

    else
    {
      v7 = 3046;
      xmlSchemaPCustomErrExt(a2, 3046, a1, 0, "Only global element declarations can have a substitution group affiliation", 0, 0, 0);
    }

    v8 = v6;
    if (v6 == a1 || *(v6 + 152) && (v8 = xmlSchemaCheckSubstGroupCircular(v6, v6)) != 0)
    {
      v45 = 0;
      v46 = 0;
      xmlSchemaGetComponentQName(&v46, v8);
      xmlSchemaGetComponentQName(&v45, v6);
      xmlSchemaPCustomErrExt(a2, 3049, v8, 0, "The element declaration '%s' defines a circular substitution group to element declaration '%s'", v43, v44);
      if (v46)
      {
        free(v46);
      }

      if (v45)
      {
        free(v45);
      }

      v7 = 3049;
    }

    if (v5 != *(*(a1 + 152) + 56) && xmlSchemaCheckCOSDerivedOK(a2, v5, *(v6 + 56), (*(v6 + 88) >> 14) & 2 | HIWORD(*(v6 + 88)) & 1u))
    {
      v45 = 0;
      v46 = 0;
      v44 = 0;
      xmlSchemaGetComponentQName(&v46, v5);
      xmlSchemaGetComponentQName(&v45, v6);
      xmlSchemaGetComponentQName(&v44, *(v6 + 56));
      xmlSchemaPCustomErrExt(a2, 3047, a1, 0, "The type definition '%s' was either rejected by the substitution group affiliation '%s', or not validly derived from its type definition '%s'", v43, v44, v45);
      if (v46)
      {
        free(v46);
      }

      if (v45)
      {
        free(v45);
      }

      if (v44)
      {
        free(v44);
      }

      v7 = 3047;
    }
  }

  else
  {
    v7 = 0;
  }

  if (!*(a1 + 144))
  {
    goto LABEL_58;
  }

  v9 = *v5;
  if (*v5 == 5)
  {
    goto LABEL_113;
  }

  if (v9 == 4 || v9 == 1 && *(v5 + 160) != 45)
  {
    v10 = v5;
    do
    {
      if (*v10 == 5)
      {
        break;
      }

      v11 = *(v10 + 160);
      if (v11 == 45)
      {
        break;
      }

      if (*v10 == 1)
      {
        if (v11 == 23)
        {
          goto LABEL_40;
        }

        if (v11 == 46)
        {
          break;
        }
      }

      v10 = *(v10 + 56);
    }

    while (v10);
  }

  if (*(v5 + 160) == 45)
  {
LABEL_113:
    if ((*(v5 + 92) | 2) == 6 && xmlSchemaIsDerivedFromBuiltInType(*(v5 + 192)))
    {
LABEL_40:
      v12 = "The type definition (or type definition's content type) is or is derived from ID; value constraints are not allowed in conjunction with such a type definition";
      v13 = a2;
      v14 = 3048;
      v15 = a1;
      v16 = 0;
LABEL_105:

      xmlSchemaPCustomErrExt(v13, v14, v15, v16, v12, 0, 0, 0);
      return;
    }
  }

  v17 = *(a1 + 72);
  if (v17)
  {
    if ((*(a1 + 88) & 8) != 0)
    {
      v18 = "fixed";
    }

    else
    {
      v18 = "default";
    }

    v19 = xmlHasProp(v17, v18);
  }

  else
  {
    v19 = 0;
  }

  v20 = *(a1 + 144);
  v21 = *v5;
  if (*v5 == 5 || *(v5 + 160) == 45)
  {
    v22 = *(v5 + 92);
    if (v22 != 6 && v22 != 4 && (v22 != 3 || !xmlSchemaIsParticleEmptiable(*(v5 + 56))))
    {
      v16 = *(v5 + 72);
      v12 = "For a string to be a valid default, the type definition must be a simple type or a complex type with mixed content and a particle emptiable";
      v13 = a2;
      v14 = 3059;
      v15 = v5;
      goto LABEL_105;
    }
  }

  if (v21 != 4 && (v21 != 1 || *(v5 + 160) == 45))
  {
    if ((*(v5 + 92) | 2) == 6)
    {
      v23 = *(v5 + 192);
      v24 = (a1 + 184);
      v25 = a2;
      v26 = v19;
      goto LABEL_61;
    }

LABEL_58:
    if (v7)
    {
      return;
    }

    goto LABEL_63;
  }

  v24 = (a1 + 184);
  v25 = a2;
  v26 = v19;
  v23 = v5;
LABEL_61:
  v27 = xmlSchemaVCheckCVCSimpleType(v25, v26, v23, v20, v24, 1u, 1, 0);
  if ((v27 & 0x80000000) == 0)
  {
    if (v27 | v7)
    {
      return;
    }

LABEL_63:
    v28 = *(a1 + 152);
    if (!v28 || (*(a1 + 88) & 0x10) != 0)
    {
      return;
    }

    while (1)
    {
      v29 = *(v28 + 88);
      if ((v29 & 0x2000) != 0)
      {
        goto LABEL_102;
      }

      v30 = *(v28 + 56);
      v31 = *(a1 + 56);
      if (v30 != v31)
      {
        v32 = 0;
        if (v31)
        {
          v33 = *(a1 + 56);
          do
          {
            v34 = *(v33 + 88);
            if ((((v32 & 0x80000) == 0) & (v34 >> 1)) != 0)
            {
              v32 |= 0x40000u;
            }

            if ((((v32 & 0x80000) == 0) & (v34 >> 2)) != 0)
            {
              v32 |= 0x80000u;
            }

            v33 = *(v33 + 112);
          }

          while (v33 && v33 != v30);
        }

        v35 = (v29 << 7) & 0xC0000;
        do
        {
          v31 = *(v31 + 112);
          if (!v31 || *v31 != 5 && *(v31 + 160) != 45)
          {
            break;
          }

          v36 = *(v31 + 88);
          if ((((v35 & 0x40000) == 0) & (v36 >> 18)) != 0)
          {
            v35 |= 0x40000u;
          }

          if ((((v35 & 0x80000) == 0) & (v36 >> 19)) != 0)
          {
            v35 |= 0x80000u;
          }
        }

        while (v31 != v30);
        if (v35 && ((v35 & 0x40000) != 0 && (v32 & 0x40000) != 0 || (v35 & 0x80000) != 0 && (v32 & 0x80000) != 0))
        {
          goto LABEL_102;
        }
      }

      v37 = *(*(a2 + 48) + 48);
      if (v37)
      {
        v38 = xmlHashLookup2(v37, *(v28 + 16), *(v28 + 96));
        if (v38)
        {
          goto LABEL_91;
        }

        if (*(*(a2 + 48) + 48))
        {
          goto LABEL_94;
        }
      }

      Dict = xmlHashCreateDict(10, *(a2 + 152));
      *(*(a2 + 48) + 48) = Dict;
      if (Dict)
      {
LABEL_94:
        v40 = malloc_type_malloc(0x10uLL, 0x20040A4A59CD2uLL);
        if (v40)
        {
          v38 = v40;
          *v40 = v28;
          v40[1] = 0;
          v41 = xmlSchemaItemListCreate();
          v38[1] = v41;
          if (v41)
          {
            if (!xmlHashAddEntry2(*(*(a2 + 48) + 48), *(v28 + 16), *(v28 + 96), v38))
            {
LABEL_91:
              xmlSchemaItemListAddSize(v38[1], 20, a1);
              goto LABEL_100;
            }

            xmlSchemaInternalErr2(a2, "xmlSchemaSubstGroupAdd", "failed to add a new substitution container", 0);
          }

          xmlSchemaSubstGroupFree(v38);
        }

        else
        {
          __xmlSimpleError(0x10u, 2, 0, 0, "allocating a substitution group container");
        }
      }

LABEL_100:
      v42 = *(v28 + 88);
      if ((v42 & 0x20000) == 0)
      {
        *(v28 + 88) = v42 | 0x20000;
      }

LABEL_102:
      v28 = *(v28 + 152);
      if (!v28)
      {
        return;
      }
    }
  }

  xmlSchemaInternalErr2(a2, "xmlSchemaParseCheckCOSValidDefault", "calling xmlSchemaVCheckCVCSimpleType()", 0);

  xmlSchemaInternalErr2(a2, "xmlSchemaElemCheckValConstr", "failed to validate the value constraint of an element declaration", 0);
}

void xmlSchemaBuildContentModel(uint64_t a1, uint64_t a2)
{
  if (*a1 == 5 && !*(a1 + 200) && (*(a1 + 92) & 0xFFFFFFFE) == 2)
  {
    *(a2 + 120) = 0;
    v4 = xmlNewAutomata();
    *(a2 + 120) = v4;
    if (v4)
    {
      *(a2 + 144) = xmlAutomataGetInitState(v4);
      xmlSchemaBuildAContentModel(a2, *(a1 + 56));
      xmlAutomataSetFinalState(*(a2 + 120), *(a2 + 144));
      v5 = xmlAutomataCompile(*(a2 + 120));
      *(a1 + 200) = v5;
      if (v5)
      {
        if (xmlRegexpIsDeterminist(v5) != 1)
        {
          xmlSchemaPCustomErrExt(a2, 3070, a1, *(a1 + 72), "The content model is not determinist", 0, 0, 0);
        }
      }

      else
      {
        xmlSchemaPCustomErrExt(a2, 3069, a1, *(a1 + 72), "Failed to compile the content model", 0, 0, 0);
      }

      *(a2 + 144) = 0;
      xmlFreeAutomata(*(a2 + 120));
      *(a2 + 120) = 0;
    }

    else
    {
      v6 = *__xmlGenericError();
      v7 = __xmlGenericErrorContext();
      v6(*v7, "Cannot create automata for complex type %s\n", *(a1 + 16));
    }
  }
}

void *xmlSchemaFindRedefCompInGraph(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = 0;
  if (a1 && a3)
  {
    v9 = *(a1 + 64);
    if (v9)
    {
      v10 = *(v9 + 8);
      if (v10 >= 1)
      {
        v11 = *v9;
        do
        {
          result = *v11;
          if (**v11 == a2)
          {
            if ((a2 - 4) < 2)
            {
              if (result[2] == a3)
              {
                v12 = result[26];
                goto LABEL_16;
              }
            }

            else if (a2 == 16)
            {
              if (result[2] == a3)
              {
                v12 = result[13];
LABEL_16:
                if (v12 == a4)
                {
                  return result;
                }
              }
            }

            else
            {
              if (a2 != 17)
              {
                return 0;
              }

              if (result[4] == a3)
              {
                v12 = result[5];
                goto LABEL_16;
              }
            }
          }

          ++v11;
          --v10;
        }

        while (v10);
      }
    }

    v13 = *(a1 + 40);
    if (v13)
    {
      *(a1 + 4) |= 1u;
      while (1)
      {
        v14 = v13[3];
        if (v14)
        {
          if ((*(v14 + 4) & 1) == 0)
          {
            result = xmlSchemaFindRedefCompInGraph(v14, a2, a3, a4);
            if (result)
            {
              break;
            }
          }
        }

        v13 = *v13;
        if (!v13)
        {
          result = 0;
          *(a1 + 4) ^= 1u;
          return result;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *xmlSchemaGetType(uint64_t a1, const xmlChar *a2, xmlChar *str1)
{
  if (!a2)
  {
    return 0;
  }

  if (str1 && xmlStrEqual(str1, "http://www.w3.org/2001/XMLSchema"))
  {
    result = xmlSchemaGetPredefinedType(a2, str1);
    if (!a1 || result)
    {
      return result;
    }
  }

  else if (!a1)
  {
    return 0;
  }

  if (xmlStrEqual(str1, *(a1 + 8)))
  {
    result = xmlHashLookup(*(a1 + 56), a2);
    if (result)
    {
      return result;
    }
  }

  if (xmlHashSize(*(a1 + 96)) < 2)
  {
    return 0;
  }

  if (str1)
  {
    v7 = str1;
  }

  else
  {
    v7 = "##";
  }

  result = xmlHashLookup(*(a1 + 96), v7);
  if (result)
  {
    v8 = *(result[10] + 56);

    return xmlHashLookup(v8, a2);
  }

  return result;
}

void xmlSchemaPResCompAttrErr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, xmlChar *a5, const xmlChar *a6, int a7, uint64_t a8)
{
  v15 = 0;
  v16 = 0;
  xmlSchemaFormatItemForReport(&v16, a2, a3);
  if (!a8)
  {
    xmlSchemaItemTypeToStr(a7);
  }

  v14 = v16;
  xmlSchemaFormatQName(&v15, a6, a5);
  xmlSchemaPErrExt(a1, a3, 3004, "%s, attribute '%s': The QName value '%s' does not resolve to a(n) %s.\n", v14);
  if (v16)
  {
    free(v16);
    v16 = 0;
  }

  if (v15)
  {
    free(v15);
  }
}

void *xmlSchemaGetElem(uint64_t a1, const xmlChar *a2, xmlChar *str1)
{
  result = 0;
  if (a1)
  {
    if (a2)
    {
      if (!xmlStrEqual(str1, *(a1 + 8)) || (result = xmlHashLookup(*(a1 + 80), a2)) == 0)
      {
        if (xmlHashSize(*(a1 + 96)) < 2)
        {
          return 0;
        }

        else
        {
          if (str1)
          {
            v7 = str1;
          }

          else
          {
            v7 = "##";
          }

          result = xmlHashLookup(*(a1 + 96), v7);
          if (result)
          {
            v8 = *(result[10] + 80);

            return xmlHashLookup(v8, a2);
          }
        }
      }
    }
  }

  return result;
}

void *xmlSchemaGetNamedComponent(uint64_t a1, int a2, const xmlChar *a3, xmlChar *str1)
{
  if (a2 != 14)
  {
    if (a2 == 17)
    {
      result = 0;
      if (!a1)
      {
        return result;
      }

      if (!a3)
      {
        return result;
      }

      if (xmlStrEqual(str1, *(a1 + 8)))
      {
        result = xmlHashLookup(*(a1 + 112), a3);
        if (result)
        {
          return result;
        }
      }

      if (xmlHashSize(*(a1 + 96)) >= 2)
      {
        if (str1)
        {
          v8 = str1;
        }

        else
        {
          v8 = "##";
        }

        result = xmlHashLookup(*(a1 + 96), v8);
        if (result)
        {
          v9 = *(result[10] + 112);

          return xmlHashLookup(v9, a3);
        }

        return result;
      }
    }

    else
    {
      v10 = *__xmlGenericError();
      v11 = __xmlGenericErrorContext();
      v10(*v11, "Unimplemented block at %s:%d\n", "/Library/Caches/com.apple.xbs/Sources/libxml2/libxml2/xmlschemas.c", 5068);
    }

    return 0;
  }

  return xmlSchemaGetElem(a1, a3, str1);
}

void *xmlSchemaGetAttributeDecl(uint64_t a1, const xmlChar *a2, xmlChar *str1)
{
  result = 0;
  if (a1)
  {
    if (a2)
    {
      if (!xmlStrEqual(str1, *(a1 + 8)) || (result = xmlHashLookup(*(a1 + 64), a2)) == 0)
      {
        if (xmlHashSize(*(a1 + 96)) < 2)
        {
          return 0;
        }

        else
        {
          if (str1)
          {
            v7 = str1;
          }

          else
          {
            v7 = "##";
          }

          result = xmlHashLookup(*(a1 + 96), v7);
          if (result)
          {
            v8 = *(result[10] + 64);

            return xmlHashLookup(v8, a2);
          }
        }
      }
    }
  }

  return result;
}

uint64_t xmlSchemaCheckTypeDefCircularInternal(uint64_t a1, int *a2, int **a3)
{
  v3 = a3;
  if (!a3)
  {
    return v3;
  }

  if (*a3 != 1)
  {
    if (a2 == a3)
    {
      ComponentNode = xmlSchemaGetComponentNode(a2);
      v3 = 3009;
      xmlSchemaPCustomErrExt(a1, 3009, a2, ComponentNode, "The definition is circular", 0, 0, 0);
      return v3;
    }

    v6 = *(a3 + 22);
    if ((v6 & 0x10000) == 0)
    {
      *(a3 + 22) = v6 | 0x10000;
      result = xmlSchemaCheckTypeDefCircularInternal(a1, a2, a3[14]);
      *(v3 + 88) ^= 0x10000u;
      return result;
    }
  }

  return 0;
}

uint64_t xmlSchemaGetCircModelGrDefRef(uint64_t a1, uint64_t a2)
{
  for (i = a2; i; i = *(i + 16))
  {
    v4 = *(i + 24);
    if (v4)
    {
      if ((*v4 - 6) >= 3)
      {
        if (*v4 == 17)
        {
          if (v4 == a1)
          {
            return i;
          }

          v6 = *(v4 + 56);
          if ((v6 & 1) == 0)
          {
            v7 = *(v4 + 24);
            if (v7)
            {
              *(v4 + 56) = v6 | 1;
              CircModelGrDefRef = xmlSchemaGetCircModelGrDefRef(a1, *(v7 + 24));
              *(v4 + 56) ^= 1u;
              if (CircModelGrDefRef)
              {
                return CircModelGrDefRef;
              }
            }
          }
        }
      }

      else
      {
        CircModelGrDefRef = xmlSchemaGetCircModelGrDefRef(a1, *(v4 + 24));
        if (CircModelGrDefRef)
        {
          return CircModelGrDefRef;
        }
      }
    }
  }

  return i;
}

uint64_t xmlSchemaCheckAttrGroupCircularRecur(uint64_t a1, uint64_t *a2)
{
  v2 = *(a2 + 2);
  if (v2 < 1)
  {
    return 0;
  }

  v5 = 0;
  v6 = *a2;
  do
  {
    result = *(v6 + 8 * v5);
    if (*result == 2000 && *(result + 16) == 16)
    {
      v8 = *(result + 8);
      if (v8)
      {
        if (v8 == a1)
        {
          return result;
        }

        v9 = *(v8 + 72);
        if ((v9 & 4) == 0 && (v9 & 0x10) != 0)
        {
          v10 = *(v8 + 112);
          if (v10)
          {
            *(v8 + 72) = v9 | 4;
            result = xmlSchemaCheckAttrGroupCircularRecur(a1, v10);
            *(v8 + 72) ^= 4u;
            if (result)
            {
              return result;
            }

            v6 = *a2;
            v2 = *(a2 + 2);
          }
        }
      }
    }

    ++v5;
  }

  while (v5 < v2);
  return 0;
}

uint64_t xmlSchemaExpandAttributeGroupRefs(uint64_t a1, int *a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v8 = a1;
  v9 = *a3 != 0;
  if (a5)
  {
    *(a5 + 8) = 0;
  }

  v10 = *(a4 + 2);
  if (v10 < 1)
  {
LABEL_102:
    if (!a5)
    {
      return 0;
    }

    result = 0;
    if (v10)
    {
      v55 = *(a5 + 8);
      if (v55 >= 1)
      {
        while (1)
        {
          v56 = v55--;
          v57 = *(a4 + 2);
          if (v57 >= 1)
          {
            v58 = *(*a5 + 8 * v55);
            v59 = *a4;
            v60 = v58[2];
            while (1)
            {
              v61 = *(*v59 + 24);
              if (v60 == *(v61 + 16))
              {
                v62 = v58[3];
                if (v62 == *(v61 + 112))
                {
                  break;
                }
              }

              v59 += 8;
              if (!--v57)
              {
                goto LABEL_114;
              }
            }

            v67 = 0;
            v63 = v58[1];
            v64 = xmlSchemaFormatQName(&v67, v62, v60);
            xmlSchemaCustomWarning(v8, 0xC0Eu, v63, "Skipping pointless attribute use prohibition '%s', since a corresponding attribute use exists already in the type definition", v64, 0, 0);
            if (v67)
            {
              free(v67);
            }

            result = xmlSchemaItemListRemove(a5, v55);
            if (result == -1)
            {
              break;
            }
          }

LABEL_114:
          if (v56 <= 1)
          {
            return 0;
          }
        }
      }
    }

    return result;
  }

  v11 = 0;
  while (1)
  {
    v12 = *(*a4 + 8 * v11);
    if (*v12 == 2000)
    {
      if (*(v12 + 16) != 16)
      {
        goto LABEL_100;
      }

      v14 = *(v12 + 8);
      if (!v14)
      {
        return 0xFFFFFFFFLL;
      }

      if ((*(v14 + 72) & 1) == 0)
      {
        result = xmlSchemaAttributeGroupExpandRefs(a1, v14);
        if (result == -1)
        {
          return result;
        }
      }

      v15 = *(v14 + 80);
      if (!v15)
      {
        goto LABEL_85;
      }

      v16 = *a3;
      if (!*a3)
      {
        *a3 = v15;
        goto LABEL_85;
      }

      if (!v9)
      {
        v17 = *(a1 + 64);
        ComponentNode = xmlSchemaGetComponentNode(a2);
        v19 = xmlSchemaAddWildcard(a1, v17, 21, ComponentNode);
        if (!v19)
        {
          return 0xFFFFFFFFLL;
        }

        v16 = v19;
        result = xmlSchemaCloneWildcardNsConstraints(a1, v19, *a3);
        if (result == -1)
        {
          return result;
        }

        *(v16 + 40) = *(*a3 + 40);
        *a3 = v16;
        v15 = *(v14 + 80);
      }

      v20 = *(v16 + 44);
      v21 = *(v15 + 44);
      if (v20 == v21)
      {
        v22 = *(v16 + 48);
        if ((v22 == 0) == (*(v15 + 48) != 0))
        {
          goto LABEL_36;
        }

        v23 = *(v16 + 56);
        v24 = *(v15 + 56);
        if ((v23 == 0) == (v24 != 0) || v23 && *(v23 + 8) != *(v24 + 8))
        {
          goto LABEL_36;
        }

        if (!v22)
        {
          goto LABEL_84;
        }

LABEL_26:
        v25 = (v15 + 48);
        while (1)
        {
          v25 = *v25;
          if (!v25)
          {
            break;
          }

          if (v22[1] == v25[1])
          {
            v22 = *v22;
            v9 = 1;
            if (v22)
            {
              goto LABEL_26;
            }

            goto LABEL_85;
          }
        }
      }

      if (v20 && v20 != v21)
      {
        result = xmlSchemaCloneWildcardNsConstraints(a1, v16, v15);
        if (result == -1)
        {
          return result;
        }

        goto LABEL_84;
      }

LABEL_36:
      v26 = *(v16 + 56);
      if (v26 && *(v15 + 48))
      {
        v27 = (v16 + 48);
        if (!*(v16 + 48))
        {
          v30 = *(v26 + 8);
          result = xmlSchemaCloneWildcardNsConstraints(a1, v16, v15);
          if (result == -1)
          {
            return result;
          }

LABEL_59:
          v37 = 0;
          v38 = v27;
          while (1)
          {
            v38 = *v38;
            if (!v38)
            {
              break;
            }

            v39 = v37;
            v37 = v38;
            if (!v38[1])
            {
              if (!v39)
              {
                v39 = v27;
              }

              *v39 = *v38;
              free(v38);
              break;
            }
          }

          if (v30)
          {
            v40 = 0;
            v41 = v27;
            while (1)
            {
              v41 = *v41;
              if (!v41)
              {
                break;
              }

              v42 = v40;
              v40 = v41;
              if (v41[1] == v30)
              {
                if (!v42)
                {
                  v42 = v27;
                }

                *v42 = *v41;
                free(v41);
                goto LABEL_84;
              }
            }
          }

          goto LABEL_84;
        }

        v28 = *(v15 + 56);
LABEL_42:
        v30 = *(v28 + 8);
        goto LABEL_59;
      }

      v28 = *(v15 + 56);
      v27 = (v16 + 48);
      v29 = *(v16 + 48);
      if (!v28)
      {
        if (v29)
        {
          v32 = *(v15 + 48);
          v31 = (v15 + 48);
          if (v32)
          {
            v33 = 0;
            while (2)
            {
              if (v33)
              {
                v34 = v33;
              }

              else
              {
                v34 = v27;
              }

              v33 = v29;
LABEL_50:
              v35 = v31;
              do
              {
                v35 = *v35;
                if (!v35)
                {
                  v36 = *v33;
                  *v34 = *v33;
                  free(v33);
                  v9 = 1;
                  v33 = v36;
                  if (v36)
                  {
                    goto LABEL_50;
                  }

                  goto LABEL_85;
                }
              }

              while (v33[1] != v35[1]);
              v29 = *v33;
              v9 = 1;
              if (*v33)
              {
                continue;
              }

              goto LABEL_85;
            }
          }
        }

        goto LABEL_84;
      }

      if (v29)
      {
        goto LABEL_42;
      }

      if (v26)
      {
        v43 = *(v26 + 8);
        v44 = *(v28 + 8);
        if (v43)
        {
          v45 = v43 == v44;
        }

        else
        {
          v45 = 1;
        }

        if (!v45 && v44 != 0)
        {
          xmlSchemaPErr(a1, *(v16 + 24), 1793, "The intersection of the wildcard is not expressible.\n", 0, 0);
          goto LABEL_84;
        }

        v9 = 1;
        if (!v43 && v44)
        {
          *(v26 + 8) = v44;
        }

LABEL_85:
        v47 = *(v14 + 112);
        if (v47 && (v48 = *(v47 + 8)) != 0)
        {
          v49 = v11;
          *(*a4 + 8 * v11) = **v47;
          if (v48 >= 2)
          {
            LODWORD(v50) = *(a4 + 2);
            v51 = 1;
            while (1)
            {
              v52 = *(*v47 + 8 * v51);
              if (*(a4 + 3) <= v50)
              {
                if ((xmlSchemaItemListGrow(a4, 20) & 0x80000000) != 0)
                {
                  __xmlSimpleError(0x10u, 2, 0, 0, "growing item list");
                  return 0xFFFFFFFFLL;
                }

                LODWORD(v50) = *(a4 + 2);
              }

              ++v49;
              v53 = v50;
              v50 = v50;
              if (v49 >= v50)
              {
                v54 = *a4;
                LODWORD(v50) = v50 + 1;
                *(a4 + 2) = v50;
                *(v54 + 8 * v53) = v52;
              }

              else
              {
                do
                {
                  *(*a4 + 8 * v50) = *(*a4 + 8 * v50 - 8);
                  --v50;
                }

                while (v50 > v49);
                *(*a4 + 8 * v49) = v52;
                LODWORD(v50) = v53 + 1;
                *(a4 + 2) = v53 + 1;
              }

              if (++v51 >= *(v47 + 8))
              {
                v11 = v49;
                goto LABEL_100;
              }
            }
          }
        }

        else
        {
          result = xmlSchemaItemListRemove(a4, v11);
          if (result == -1)
          {
            return result;
          }

          --v11;
        }

        goto LABEL_100;
      }

LABEL_84:
      v9 = 1;
      goto LABEL_85;
    }

    if (*v12 == 2001)
    {
      break;
    }

LABEL_100:
    ++v11;
    v10 = *(a4 + 2);
    if (v11 >= v10)
    {
      v8 = a1;
      goto LABEL_102;
    }
  }

  if (!a5)
  {
    xmlSchemaInternalErr2(a1, "xmlSchemaExpandAttributeGroupRefs", "unexpected attr prohibition found", 0);
    return 0xFFFFFFFFLL;
  }

  result = xmlSchemaItemListRemove(a4, v11);
  if (result != -1)
  {
    --v11;
    xmlSchemaItemListAddSize(a5, 2, v12);
    goto LABEL_100;
  }

  return result;
}

uint64_t xmlSchemaItemListRemove(uint64_t a1, int a2)
{
  v3 = *a1;
  if (v3 && (v4 = *(a1 + 8), v4 > a2))
  {
    if (v4 == 1)
    {
      free(v3);
      result = 0;
      *a1 = 0;
      *(a1 + 8) = 0;
    }

    else
    {
      v6 = v4 - 1;
      if (v6 == a2)
      {
        result = 0;
        *(a1 + 8) = a2;
      }

      else
      {
        if (v6 > a2)
        {
          v7 = a2;
          do
          {
            *(*a1 + 8 * v7) = *(*a1 + 8 * v7 + 8);
            ++v7;
          }

          while (v6 != v7);
        }

        result = 0;
        *(a1 + 8) = v6;
      }
    }
  }

  else
  {
    __xmlSimpleError(0x10u, 2, 0, 0, "Internal error: xmlSchemaItemListRemove, index error.\n");
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t xmlSchemaCloneWildcardNsConstraints(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 0xFFFFFFFFLL;
  if (a2 && a3)
  {
    *(a2 + 44) = *(a3 + 44);
    v7 = *(a3 + 48);
    if (v7)
    {
      v8 = 0;
      do
      {
        v9 = xmlSchemaNewWildcardNsConstraint(a1);
        if (!v9)
        {
          return 0xFFFFFFFFLL;
        }

        v9[1] = v7[1];
        if (v8)
        {
          v10 = v8;
        }

        else
        {
          v10 = (a2 + 48);
        }

        *v10 = v9;
        v7 = *v7;
        v8 = v9;
      }

      while (v7);
    }

    v11 = *(a2 + 56);
    if (v11)
    {
      do
      {
        v12 = *v11;
        free(v11);
        v11 = v12;
      }

      while (v12);
    }

    if (*(a3 + 56))
    {
      v13 = xmlSchemaNewWildcardNsConstraint(a1);
      *(a2 + 56) = v13;
      if (v13)
      {
        v14 = v13;
        result = 0;
        v14[1] = *(*(a3 + 56) + 8);
        return result;
      }

      return 0xFFFFFFFFLL;
    }

    result = 0;
    *(a2 + 56) = 0;
  }

  return result;
}

uint64_t xmlSchemaCheckUnionTypeDefCircularRecur(uint64_t a1, int *a2, void *a3)
{
  if (a3)
  {
    v3 = a3;
    do
    {
      v6 = v3[1];
      if (v6)
      {
        while (*v6 != 1)
        {
          if (v6 == a2)
          {
            v11 = 3003;
            xmlSchemaPCustomErrExt(a1, 3003, a2, 0, "The union type definition is circular", 0, 0, 0);
            return v11;
          }

          v7 = *(v6 + 88);
          if ((v7 & 0x10080) == 0x80)
          {
            *(v6 + 88) = v7 | 0x10000;
            v8 = v6;
            do
            {
              if (*v8 != 4)
              {
                break;
              }

              v9 = *(v8 + 168);
              if (v9)
              {
                goto LABEL_12;
              }

              v8 = *(v8 + 112);
            }

            while (v8);
            v9 = 0;
LABEL_12:
            v10 = xmlSchemaCheckUnionTypeDefCircularRecur(a1, a2, v9);
            *(v6 + 88) ^= 0x10000u;
            if (v10)
            {
              return v10;
            }
          }

          v6 = *(v6 + 112);
          if (!v6)
          {
            break;
          }
        }
      }

      v3 = *v3;
    }

    while (v3);
  }

  return 0;
}

uint64_t xmlSchemaTypeFixup(uint64_t typeDecl, xmlError *a2)
{
  if (!typeDecl)
  {
    return typeDecl;
  }

  if (a2->domain != 1)
  {
    xmlSchemaInternalErr2(a2, "xmlSchemaTypeFixup", "this function needs a parser context", 0);
    return 0xFFFFFFFFLL;
  }

  v3 = *typeDecl;
  if (*typeDecl == 1 || (*(typeDecl + 90) & 0x40) != 0)
  {
    return 0;
  }

  if (v3 != 4)
  {
    if (v3 == 5)
    {

      return xmlSchemaFixupComplexType(a2, typeDecl);
    }

    return 0;
  }

  return xmlSchemaFixupSimpleTypeStageTwo(a2, typeDecl);
}

uint64_t xmlSchemaCheckFacetValues(xmlSchemaTypePtr typeDecl, _DWORD *ctxt, uint64_t a3, const xmlChar *a4)
{
  facets = typeDecl->facets;
  if (!facets)
  {
    return 0;
  }

  v7 = ctxt[9];
  if (!*(ctxt + 22))
  {
    v9 = xmlSchemaNewValidCtxt(0);
    *(ctxt + 22) = v9;
    if (!v9)
    {
      xmlSchemaPErr(ctxt, 0, 3069, "Internal error: xmlSchemaCreateVCtxtOnPCtxt, failed to create a temp. validation context.\n", 0, 0);
      return 0xFFFFFFFFLL;
    }

    v11 = *(ctxt + 2);
    v10 = *(ctxt + 3);
    v12 = *(ctxt + 1);
    *(v9 + 2) = v11;
    *(v9 + 3) = v10;
    v13 = (v9 + 16);
    v14 = *(v9 + 20);
    if (v14)
    {
      v15 = *(v9 + 20);
      do
      {
        v15[2] = v11;
        v15[3] = v10;
        v15[1] = v12;
        v16 = v15[22];
        if (!v16)
        {
          break;
        }

        v16[2] = v11;
        v16[3] = v10;
        v16[1] = v12;
        v15 = v16[20];
      }

      while (v15);
      v17 = *(ctxt + 1);
      v18 = *(ctxt + 5);
      *(v9 + 4) = v18;
      *v13 = 0;
      *(v9 + 3) = 0;
      *(v9 + 1) = v17;
      do
      {
        v14[5] = v18;
        v14[1] = v17;
        v19 = v14[22];
        if (!v19)
        {
          break;
        }

        v19[3] = 0;
        v19[4] = v18;
        v19[1] = v17;
        v19[2] = 0;
        v14 = v19[20];
      }

      while (v14);
    }

    else
    {
      *(v9 + 4) = *(ctxt + 5);
      *v13 = 0;
      *(v9 + 3) = 0;
      *(v9 + 1) = v12;
    }
  }

  *(*(ctxt + 22) + 40) = *(ctxt + 8);
  while (1)
  {
    result = xmlSchemaCheckFacet(facets, typeDecl, ctxt, a4);
    if (result == -1)
    {
      break;
    }

    facets = facets->next;
    if (!facets)
    {
      *(*(ctxt + 22) + 40) = 0;
      if (v7 == ctxt[9])
      {
        return 0;
      }

      return ctxt[8];
    }
  }

  return result;
}

uint64_t xmlSchemaDeriveAndValidateFacets(xmlError *a1, uint64_t a2)
{
  v4 = *(a2 + 176);
  v2 = (a2 + 176);
  v3 = v4;
  v5 = *(v2 - 8);
  if (!v4)
  {
    if (!*(v5 + 176))
    {
      return 0;
    }

    v99 = 0;
    goto LABEL_57;
  }

  v6 = v3;
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6);
  v99 = v7;
  if (!v3)
  {
LABEL_57:
    v16 = 0;
    v15 = 0;
    v14 = 0;
    v13 = 0;
    v12 = 0;
    v11 = 0;
    v10 = 0;
    v9 = 0;
    v8 = 0;
    goto LABEL_58;
  }

  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  do
  {
    v17 = v3[1];
    v18 = *v17;
    if (*v17 == 1009)
    {
      v19 = v3[1];
    }

    else
    {
      v19 = v16;
    }

    if (v18 == 1010)
    {
      v19 = v16;
      v20 = v3[1];
    }

    else
    {
      v20 = v13;
    }

    if (v18 == 1011)
    {
      v19 = v16;
      v20 = v13;
      v21 = v3[1];
    }

    else
    {
      v21 = v12;
    }

    if (v18 == 1005)
    {
      v22 = v3[1];
    }

    else
    {
      v22 = v14;
    }

    if (v18 == 1004)
    {
      v23 = v3[1];
    }

    else
    {
      v23 = v15;
    }

    if (v18 == 1004)
    {
      v22 = v14;
    }

    if (v18 > 1008)
    {
      v23 = v15;
      v22 = v14;
    }

    else
    {
      v19 = v16;
    }

    if (v18 <= 1008)
    {
      v20 = v13;
      v21 = v12;
    }

    if (v18 == 1003)
    {
      v24 = v3[1];
    }

    else
    {
      v24 = v8;
    }

    if (v18 == 1002)
    {
      v25 = v3[1];
    }

    else
    {
      v25 = v10;
    }

    if (v18 == 1002)
    {
      v24 = v8;
    }

    if (v18 == 1001)
    {
      v26 = v3[1];
    }

    else
    {
      v26 = v9;
    }

    if (v18 == 1000)
    {
      v26 = v9;
    }

    else
    {
      v17 = v11;
    }

    if (v18 <= 1001)
    {
      v25 = v10;
    }

    else
    {
      v17 = v11;
    }

    if (v18 <= 1001)
    {
      v24 = v8;
    }

    else
    {
      v26 = v9;
    }

    if (v18 <= 1003)
    {
      v11 = v17;
    }

    else
    {
      v16 = v19;
      v15 = v23;
      v14 = v22;
      v13 = v20;
      v12 = v21;
    }

    if (v18 <= 1003)
    {
      v10 = v25;
      v9 = v26;
      v8 = v24;
    }

    v3 = *v3;
  }

  while (v3);
LABEL_58:
  v105 = v11;
  v106 = v10;
  v103 = v9;
  v104 = v8;
  v100 = v2;
  v101 = v15;
  v97 = *(v2 - 8);
  v98 = v14;
  v27 = *(v5 + 176);
  if (v27)
  {
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    do
    {
      v37 = v27[1];
      v38 = *v37;
      if (*v37 == 1009)
      {
        v39 = v27[1];
      }

      else
      {
        v39 = v36;
      }

      if (v38 == 1010)
      {
        v39 = v36;
        v40 = v27[1];
      }

      else
      {
        v40 = v33;
      }

      if (v38 == 1011)
      {
        v39 = v36;
        v40 = v33;
        v41 = v27[1];
      }

      else
      {
        v41 = v32;
      }

      if (v38 == 1005)
      {
        v42 = v27[1];
      }

      else
      {
        v42 = v34;
      }

      if (v38 == 1004)
      {
        v43 = v27[1];
      }

      else
      {
        v43 = v35;
      }

      if (v38 == 1004)
      {
        v42 = v34;
      }

      if (v38 > 1008)
      {
        v43 = v35;
        v42 = v34;
      }

      else
      {
        v39 = v36;
      }

      if (v38 <= 1008)
      {
        v40 = v33;
        v41 = v32;
      }

      if (v38 == 1003)
      {
        v44 = v27[1];
      }

      else
      {
        v44 = v28;
      }

      if (v38 == 1002)
      {
        v45 = v27[1];
      }

      else
      {
        v45 = v30;
      }

      if (v38 == 1002)
      {
        v44 = v28;
      }

      if (v38 == 1001)
      {
        v46 = v27[1];
      }

      else
      {
        v46 = v29;
      }

      if (v38 == 1000)
      {
        v46 = v29;
      }

      else
      {
        v37 = v31;
      }

      if (v38 <= 1001)
      {
        v45 = v30;
      }

      else
      {
        v37 = v31;
      }

      if (v38 <= 1001)
      {
        v44 = v28;
      }

      else
      {
        v46 = v29;
      }

      if (v38 <= 1003)
      {
        v31 = v37;
      }

      else
      {
        v36 = v39;
        v35 = v43;
        v34 = v42;
        v33 = v40;
        v32 = v41;
      }

      if (v38 <= 1003)
      {
        v30 = v45;
        v29 = v46;
        v28 = v44;
      }

      v27 = *v27;
    }

    while (v27);
  }

  else
  {
    v36 = 0;
    v35 = 0;
    v34 = 0;
    v33 = 0;
    v32 = 0;
    v31 = 0;
    v30 = 0;
    v29 = 0;
    v28 = 0;
  }

  v102 = v35;
  v108 = v34;
  if (v16 && v12 | v13)
  {
    xmlSchemaPCustomErrExt(a1, 1717, v16, *(v16 + 40), "It is an error for both 'length' and either of 'minLength' or 'maxLength' to be specified on the same type definition", 0, 0, 0);
    v34 = v108;
  }

  if (v106 && v104)
  {
    v95 = *(v106 + 40);
    v93 = xmlSchemaFacetTypeToString(*v106);
    xmlSchemaFacetTypeToString(*v104);
    xmlSchemaPCustomErrExt(a1, 1717, v106, v95, "It is an error for both '%s' and '%s' to be specified on the same type definition", v93, v95);
    v34 = v108;
  }

  if (v105 && v103)
  {
    v96 = *(v105 + 5);
    v94 = xmlSchemaFacetTypeToString(*v105);
    xmlSchemaFacetTypeToString(*v103);
    xmlSchemaPCustomErrExt(a1, 1717, v105, v96, "It is an error for both '%s' and '%s' to be specified on the same type definition", v94, v96);
    v34 = v108;
  }

  if (v16 && v36)
  {
    v47 = xmlSchemaCompareValues(*(v16 + 56), *(v36 + 56));
    if (v47 == -2)
    {
      goto LABEL_296;
    }

    v34 = v108;
    if (v47)
    {
      xmlSchemaDeriveFacetErr(a1, v16, v36, 0, 0, 1);
      v34 = v108;
      if (*(v36 + 48))
      {
        xmlSchemaPCustomErrExt(a1, 1717, v16, *(v16 + 40), "The base type's facet is 'fixed', thus the value must not differ", 0, 0, 0);
        v34 = v108;
      }
    }
  }

  if (v12 && v32)
  {
    v48 = xmlSchemaCompareValues(*(v12 + 56), *(v32 + 56));
    if (v48 == -2)
    {
      goto LABEL_296;
    }

    v34 = v108;
    if (v48)
    {
      if (v48 == -1)
      {
        xmlSchemaDeriveFacetErr(a1, v12, v32, 1, 1, 1);
        v34 = v108;
      }

      if (*(v32 + 48))
      {
        xmlSchemaPCustomErrExt(a1, 1717, v12, *(v12 + 40), "The base type's facet is 'fixed', thus the value must not differ", 0, 0, 0);
        v34 = v108;
      }
    }
  }

  if (v13 && v33)
  {
    v49 = xmlSchemaCompareValues(*(v13 + 56), *(v33 + 56));
    if (v49 == -2)
    {
      goto LABEL_296;
    }

    v34 = v108;
    if (v49)
    {
      if (v49 == 1)
      {
        xmlSchemaDeriveFacetErr(a1, v13, v33, -1, 1, 1);
        v34 = v108;
      }

      if (*(v33 + 48))
      {
        xmlSchemaPCustomErrExt(a1, 1717, v13, *(v13 + 40), "The base type's facet is 'fixed', thus the value must not differ", 0, 0, 0);
        v34 = v108;
      }
    }
  }

  if (!v16)
  {
    v16 = v36;
  }

  if (v16)
  {
    if (v12)
    {
      v50 = v12;
    }

    else
    {
      v50 = v32;
    }

    if (v50)
    {
      v51 = xmlSchemaCompareValues(*(v16 + 56), *(v50 + 56));
      if (v51 == -2)
      {
        goto LABEL_296;
      }

      v34 = v108;
      if (v51 == -1)
      {
        xmlSchemaDeriveFacetErr(a1, v16, v50, 1, 1, 0);
        v34 = v108;
      }
    }

    if (v13)
    {
      v33 = v13;
    }

    if (v33)
    {
      v52 = xmlSchemaCompareValues(*(v16 + 56), *(v33 + 56));
      if (v52 == -2)
      {
        goto LABEL_296;
      }

      v34 = v108;
      if (v52 == 1)
      {
        xmlSchemaDeriveFacetErr(a1, v16, v33, -1, 1, 0);
        v34 = v108;
      }
    }
  }

  v53 = v106;
  if (v106)
  {
    if (v105)
    {
      v54 = xmlSchemaCompareValues(*(v106 + 56), *(v105 + 7));
      if (v54 == -2)
      {
        goto LABEL_296;
      }

      v53 = v106;
      if (v54 == -1)
      {
        xmlSchemaDeriveFacetErr(a1, v106, v105, 1, 1, 0);
      }
    }

    if (v30)
    {
      v55 = xmlSchemaCompareValues(*(v53 + 56), *(v30 + 56));
      if (v55 == -2)
      {
        goto LABEL_296;
      }

      v53 = v106;
      if (v55)
      {
        if (v55 == 1)
        {
          xmlSchemaDeriveFacetErr(a1, v106, v30, -1, 1, 1);
        }

        if (*(v30 + 48))
        {
          xmlSchemaPCustomErrExt(a1, 1717, v106, *(v106 + 40), "The base type's facet is 'fixed', thus the value must not differ", 0, 0, 0);
        }
      }
    }

    if (v28)
    {
      v56 = xmlSchemaCompareValues(*(v53 + 56), *(v28 + 56));
      if (v56 == -2)
      {
        goto LABEL_296;
      }

      v53 = v106;
      if (v56 != -1)
      {
        xmlSchemaDeriveFacetErr(a1, v106, v28, -1, 0, 1);
      }
    }

    if (v31)
    {
      v57 = xmlSchemaCompareValues(*(v53 + 56), *(v31 + 7));
      if (v57 == -2)
      {
        goto LABEL_296;
      }

      v53 = v106;
      if (v57 == -1)
      {
        xmlSchemaDeriveFacetErr(a1, v106, v31, 1, 1, 1);
      }
    }

    v34 = v108;
    if (v29)
    {
      v58 = xmlSchemaCompareValues(*(v53 + 56), *(v29 + 56));
      if (v58 == -2)
      {
        goto LABEL_296;
      }

      v34 = v108;
      v53 = v106;
      if (v58 != 1)
      {
        xmlSchemaDeriveFacetErr(a1, v106, v29, 1, 0, 1);
        v34 = v108;
      }
    }
  }

  v59 = v104;
  if (v104)
  {
    if (v103)
    {
      v60 = xmlSchemaCompareValues(*(v104 + 56), *(v103 + 56));
      if (v60 == -2)
      {
        goto LABEL_296;
      }

      v34 = v108;
      v59 = v104;
      if (v60 == -1)
      {
        xmlSchemaDeriveFacetErr(a1, v104, v103, 1, 1, 0);
        v34 = v108;
      }
    }

    if (v28)
    {
      v61 = xmlSchemaCompareValues(*(v59 + 56), *(v28 + 56));
      if (v61 == -2)
      {
        goto LABEL_296;
      }

      v34 = v108;
      v59 = v104;
      if (v61)
      {
        if (v61 == 1)
        {
          xmlSchemaDeriveFacetErr(a1, v104, v28, -1, 1, 1);
          v34 = v108;
        }

        if (*(v28 + 48))
        {
          xmlSchemaPCustomErrExt(a1, 1717, v104, *(v104 + 40), "The base type's facet is 'fixed', thus the value must not differ", 0, 0, 0);
          v34 = v108;
        }
      }
    }

    if (v30)
    {
      v62 = xmlSchemaCompareValues(*(v59 + 56), *(v30 + 56));
      if (v62 == -2)
      {
        goto LABEL_296;
      }

      v34 = v108;
      v59 = v104;
      if (v62 == 1)
      {
        xmlSchemaDeriveFacetErr(a1, v104, v30, -1, 1, 1);
        v34 = v108;
      }
    }

    if (v31)
    {
      v63 = xmlSchemaCompareValues(*(v59 + 56), *(v31 + 7));
      if (v63 == -2)
      {
        goto LABEL_296;
      }

      v34 = v108;
      v59 = v104;
      if (v63 != 1)
      {
        xmlSchemaDeriveFacetErr(a1, v104, v31, 1, 0, 1);
        v34 = v108;
      }
    }

    v53 = v106;
    if (v29)
    {
      v64 = xmlSchemaCompareValues(*(v59 + 56), *(v29 + 56));
      if (v64 == -2)
      {
        goto LABEL_296;
      }

      v34 = v108;
      v59 = v104;
      v53 = v106;
      if (v64 != 1)
      {
        xmlSchemaDeriveFacetErr(a1, v104, v29, 1, 0, 1);
        v34 = v108;
      }
    }
  }

  v65 = v103;
  if (v103)
  {
    if (v53)
    {
      v66 = xmlSchemaCompareValues(*(v103 + 56), *(v53 + 56));
      if (v66 == -2)
      {
        goto LABEL_296;
      }

      v34 = v108;
      v65 = v103;
      if (v66 != -1)
      {
        xmlSchemaDeriveFacetErr(a1, v103, v106, -1, 0, 0);
        v34 = v108;
      }
    }

    if (v29)
    {
      v67 = xmlSchemaCompareValues(*(v65 + 56), *(v29 + 56));
      if (v67 == -2)
      {
        goto LABEL_296;
      }

      v34 = v108;
      v65 = v103;
      if (v67)
      {
        if (v67 == -1)
        {
          xmlSchemaDeriveFacetErr(a1, v103, v29, 1, 1, 1);
          v34 = v108;
        }

        if (*(v29 + 48))
        {
          xmlSchemaPCustomErrExt(a1, 1717, v103, *(v103 + 40), "The base type's facet is 'fixed', thus the value must not differ", 0, 0, 0);
          v34 = v108;
        }
      }
    }

    if (v30)
    {
      v68 = xmlSchemaCompareValues(*(v65 + 56), *(v30 + 56));
      if (v68 == -2)
      {
        goto LABEL_296;
      }

      v34 = v108;
      v65 = v103;
      if (v68 == 1)
      {
        xmlSchemaDeriveFacetErr(a1, v103, v30, -1, 1, 1);
        v34 = v108;
      }
    }

    if (v31)
    {
      v69 = xmlSchemaCompareValues(*(v65 + 56), *(v31 + 7));
      if (v69 == -2)
      {
        goto LABEL_296;
      }

      v34 = v108;
      v65 = v103;
      if (v69 == -1)
      {
        xmlSchemaDeriveFacetErr(a1, v103, v31, 1, 1, 1);
        v34 = v108;
      }
    }

    v59 = v104;
    if (v28)
    {
      v70 = xmlSchemaCompareValues(*(v65 + 56), *(v28 + 56));
      if (v70 == -2)
      {
        goto LABEL_296;
      }

      v34 = v108;
      v59 = v104;
      if (v70 != -1)
      {
        xmlSchemaDeriveFacetErr(a1, v103, v28, -1, 0, 1);
        v34 = v108;
      }
    }
  }

  v71 = v105;
  if (v105)
  {
    if (v59)
    {
      v72 = xmlSchemaCompareValues(*(v105 + 7), *(v59 + 56));
      if (v72 == -2)
      {
        goto LABEL_296;
      }

      v71 = v105;
      v34 = v108;
      if (v72 != -1)
      {
        xmlSchemaDeriveFacetErr(a1, v105, v104, -1, 0, 0);
        v34 = v108;
      }
    }

    if (v31)
    {
      v73 = xmlSchemaCompareValues(*(v71 + 7), *(v31 + 7));
      if (v73 == -2)
      {
        goto LABEL_296;
      }

      v71 = v105;
      v34 = v108;
      if (v73)
      {
        if (v73 == -1)
        {
          xmlSchemaDeriveFacetErr(a1, v105, v31, 1, 1, 1);
          v34 = v108;
        }

        if (v31[12])
        {
          xmlSchemaPCustomErrExt(a1, 1717, v105, *(v105 + 5), "The base type's facet is 'fixed', thus the value must not differ", 0, 0, 0);
          v34 = v108;
        }
      }
    }

    if (v30)
    {
      v74 = xmlSchemaCompareValues(*(v71 + 7), *(v30 + 56));
      if (v74 == -2)
      {
        goto LABEL_296;
      }

      v71 = v105;
      v34 = v108;
      if (v74 == 1)
      {
        xmlSchemaDeriveFacetErr(a1, v105, v30, -1, 1, 1);
        v34 = v108;
      }
    }

    if (v29)
    {
      v75 = xmlSchemaCompareValues(*(v71 + 7), *(v29 + 56));
      if (v75 == -2)
      {
        goto LABEL_296;
      }

      v71 = v105;
      v34 = v108;
      if (v75 != 1)
      {
        xmlSchemaDeriveFacetErr(a1, v105, v29, 1, 0, 1);
        v34 = v108;
      }
    }

    if (v28)
    {
      v76 = xmlSchemaCompareValues(*(v71 + 7), *(v28 + 56));
      if (v76 == -2)
      {
        goto LABEL_296;
      }

      v34 = v108;
      if (v76 != -1)
      {
        xmlSchemaDeriveFacetErr(a1, v105, v28, -1, 0, 1);
        v34 = v108;
      }
    }
  }

  v78 = v101;
  v77 = v102;
  if (v101 && v102)
  {
    v79 = xmlSchemaCompareValues(*(v101 + 56), *(v102 + 56));
    if (v79 == -2)
    {
      goto LABEL_296;
    }

    v78 = v101;
    v77 = v102;
    v34 = v108;
    if (v79)
    {
      if (v79 == 1)
      {
        xmlSchemaDeriveFacetErr(a1, v101, v102, -1, 1, 1);
        v77 = v102;
        v34 = v108;
      }

      if (*(v77 + 48))
      {
        xmlSchemaPCustomErrExt(a1, 1717, v101, *(v101 + 40), "The base type's facet is 'fixed', thus the value must not differ", 0, 0, 0);
        v77 = v102;
        v34 = v108;
      }
    }
  }

  v81 = v99;
  v80 = v100;
  v82 = v98;
  if (v98 && v34)
  {
    v83 = xmlSchemaCompareValues(*(v98 + 56), *(v34 + 7));
    if (v83 == -2)
    {
      goto LABEL_296;
    }

    v81 = v99;
    v80 = v100;
    v82 = v98;
    v78 = v101;
    v77 = v102;
    v34 = v108;
    if (v83)
    {
      if (v83 == 1)
      {
        xmlSchemaDeriveFacetErr(a1, v98, v108, -1, 1, 1);
        v77 = v102;
        v34 = v108;
      }

      if (v34[12])
      {
        xmlSchemaPCustomErrExt(a1, 1717, v98, *(v98 + 40), "The base type's facet is 'fixed', thus the value must not differ", 0, 0, 0);
        v77 = v102;
        v34 = v108;
      }
    }
  }

  if (!v78)
  {
    v78 = v77;
  }

  if (!v82)
  {
    v82 = v34;
  }

  if (v78 && v82)
  {
    v84 = xmlSchemaCompareValues(*(v82 + 7), *(v78 + 56));
    if (v84 != -2)
    {
      v81 = v99;
      v80 = v100;
      if (v84 == 1)
      {
        xmlSchemaDeriveFacetErr(a1, v82, v78, -1, 1, 0);
      }

      goto LABEL_278;
    }

LABEL_296:
    xmlSchemaInternalErr2(a1, "xmlSchemaDeriveAndValidateFacets", "an error occurred", 0);
    return 0xFFFFFFFFLL;
  }

LABEL_278:
  v85 = *(v97 + 176);
  if (v85)
  {
    while (1)
    {
      v86 = v85[1];
      v87 = *v86;
      if ((*v86 & 0xFFFFFFFE) != 0x3EE)
      {
        break;
      }

LABEL_294:
      result = 0;
      v85 = *v85;
      if (!v85)
      {
        return result;
      }
    }

    v88 = v80;
    while (1)
    {
      v88 = *v88;
      if (!v88)
      {
        break;
      }

      v89 = v88[1];
      if (*v89 == v87)
      {
        if (v87 == 1008)
        {
          if (*(v89 + 52) < v86[13])
          {
            xmlSchemaPCustomErrExt(a1, 1717, v89, *(v89 + 40), "The 'whitespace' value has to be equal to or stronger than the 'whitespace' value of the base type", 0, 0, 0);
          }

          if (v86[12])
          {
            if (*(v89 + 52) != v86[13])
            {
              xmlSchemaPCustomErrExt(a1, 1717, v89, *(v89 + 40), "The base type's facet is 'fixed', thus the value must not differ", 0, 0, 0);
            }
          }
        }

        goto LABEL_294;
      }
    }

    v90 = malloc_type_malloc(0x10uLL, 0x20040A4A59CD2uLL);
    if (v90)
    {
      v91 = v85[1];
      *v90 = 0;
      v90[1] = v91;
      if (v81)
      {
        *v81 = v90;
      }

      else
      {
        *v80 = v90;
      }

      v81 = v90;
      goto LABEL_294;
    }

    if (a1)
    {
      ++*(&a1->line + 1);
    }

    __xmlSimpleError(0x10u, 2, 0, 0, "deriving facets, creating a facet link");
    return 0xFFFFFFFFLL;
  }

  return 0;
}

uint64_t xmlSchemaTypeFixupWhitespace(uint64_t a1)
{
  v1 = *(a1 + 88);
  if ((v1 & 0x40) != 0)
  {
LABEL_14:
    v6 = 0x4000000;
  }

  else
  {
    if ((v1 & 0x80) != 0)
    {
      return 0;
    }

    v2 = *(a1 + 176);
    if (v2)
    {
      while (1)
      {
        v3 = v2[1];
        if (*v3 == 1008)
        {
          break;
        }

        v2 = *v2;
        if (!v2)
        {
          goto LABEL_6;
        }
      }

      v9 = v3[13] - 1;
      if (v9 >= 3)
      {
        return 0xFFFFFFFFLL;
      }

      v6 = *&a0123456789abcd_0[4 * v9 + 16];
      goto LABEL_15;
    }

LABEL_6:
    v4 = a1;
    do
    {
      v4 = *(v4 + 112);
      if (v4)
      {
        v5 = *(v4 + 160);
        if (v5 != 45)
        {
          continue;
        }
      }

      return 0;
    }

    while (*v4 != 1);
    if (v5 == 46)
    {
LABEL_13:
      v6 = 0x1000000;
      goto LABEL_15;
    }

    if (v5 != 2)
    {
      if (v5 != 1)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    v6 = 0x2000000;
  }

LABEL_15:
  v7 = 0;
  *(a1 + 88) = v1 | v6;
  return v7;
}

uint64_t xmlSchemaTypeFixupOptimFacets(uint64_t result)
{
  v1 = *(result + 120);
  v2 = *(*(result + 112) + 88);
  v3 = (v2 >> 27) & 1;
  v4 = (v2 >> 21) & ((16 * v2) >> 31);
  for (i = (v2 >> 28) & ((16 * v2) >> 31); v1; v1 = *(v1 + 1))
  {
    v6 = *v1;
    if (*v1 == 1006)
    {
      v7 = 1;
    }

    else
    {
      v7 = i;
    }

    if (v6 == 1007)
    {
      v8 = 1;
    }

    else
    {
      v8 = v4;
    }

    if (v6 == 1007)
    {
      v7 = 1;
    }

    if (v6 != 1008)
    {
      v4 = v8;
      i = v7;
      v3 = 1;
    }
  }

  if (i)
  {
    *(result + 88) |= 0x10000000u;
  }

  if (v4)
  {
    v10 = *(result + 88);
    result += 88;
    v9 = v10;
    *result = v10 | 0x200000;
    if (v3)
    {
LABEL_17:
      *result = v9 | 0x8200000;
    }
  }

  else if (v3)
  {
    v11 = result + 88;
    v9 = *(result + 88);
    *(result + 88) = v9 | 0x8000000;
    if ((v9 & 0x100) != 0)
    {
      while (1)
      {
        v12 = *(result + 160);
        if (v12 == 46)
        {
          break;
        }

        if ((*(result + 89) & 0x40) != 0)
        {
          if (v12 == 1)
          {
            return result;
          }

          result = v11;
          goto LABEL_17;
        }

        result = *(result + 112);
      }
    }
  }

  return result;
}

void xmlSchemaPIllegalFacetAtomicErr(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v10 = 0;
  v11 = 0;
  xmlSchemaFormatItemForReport(&v11, a2, *(a2 + 72));
  v8 = *(a2 + 72);
  v9 = v11;
  xmlSchemaFacetTypeToString(*a4);
  xmlSchemaFormatItemForReport(&v10, a3, 0);
  xmlSchemaPErrExt(a1, v8, 3013, "%s: The facet '%s' is not allowed on types derived from the type %s.\n", v9);
  if (v11)
  {
    free(v11);
    v11 = 0;
  }

  if (v10)
  {
    free(v10);
  }
}

void xmlSchemaPIllegalFacetListUnionErr(uint64_t a1, int a2, uint64_t a3, int *a4)
{
  v11 = 0;
  xmlSchemaFormatItemForReport(&v11, a3, *(a3 + 72));
  v8 = *(a3 + 72);
  v9 = v11;
  v10 = xmlSchemaFacetTypeToString(*a4);
  xmlSchemaPErr(a1, v8, a2, "%s: The facet '%s' is not allowed.\n", v9, v10);
  if (v11)
  {
    free(v11);
  }
}

uint64_t xmlSchemaCheckCOSSTDerivedOK(xmlSchemaParserCtxt *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == a3)
  {
    return 0;
  }

  if (*a2 == 1 || (*(a2 + 90) & 0x40) != 0 || (result = xmlSchemaTypeFixup(a2, a1), result != -1))
  {
    if (*a3 == 1 || (*(a3 + 90) & 0x40) != 0 || (result = xmlSchemaTypeFixup(a3, a1), result != -1))
    {
      if (a4)
      {
        return 3031;
      }

      v9 = *(a2 + 112);
      if (v9 && (*(v9 + 89) & 4) != 0)
      {
        return 3031;
      }

      else
      {
        if (v9 == a3)
        {
          return 0;
        }

        if (*v9 == 1 && *(v9 + 160) == 45 || (result = xmlSchemaCheckCOSSTDerivedOK(a1, v9, a3, a4), result))
        {
          if (*a3 == 1 && *(a3 + 160) == 46 && (*(a2 + 88) & 0xC0) != 0)
          {
            return 0;
          }

          if ((*(a3 + 88) & 0x80) != 0)
          {
            v10 = (a3 + 168);
            while (1)
            {
              v10 = *v10;
              if (!v10)
              {
                break;
              }

              v11 = v10[1];
              if (*v11 != 1 && (*(v11 + 90) & 0x40) == 0)
              {
                result = xmlSchemaTypeFixup(v10[1], a1);
                if (result == -1)
                {
                  return result;
                }

                v11 = v10[1];
              }

              v12 = xmlSchemaCheckCOSSTDerivedOK(a1, a2, v11, a4);
              result = 0;
              if (!v12)
              {
                return result;
              }
            }
          }

          return 3032;
        }
      }
    }
  }

  return result;
}

void xmlSchemaDeriveFacetErr(uint64_t a1, int *a2, int *a3, int a4, int a5, int a6)
{
  v12 = xmlStrdup("'");
  v13 = xmlSchemaFacetTypeToString(*a2);
  v14 = xmlStrcat(v12, v13);
  v15 = xmlStrcat(v14, "' has to be");
  if (a4 == 1)
  {
    v16 = " greater than";
  }

  else
  {
    if (!a4)
    {
      v15 = xmlStrcat(v15, " equal to");
    }

    v16 = " less than";
  }

  v17 = xmlStrcat(v15, v16);
  if (a5)
  {
    v17 = xmlStrcat(v17, " or equal to");
  }

  v18 = xmlStrcat(v17, " '");
  v19 = xmlSchemaFacetTypeToString(*a3);
  v20 = xmlStrcat(v18, v19);
  if (a6)
  {
    v21 = "' of the base type";
  }

  else
  {
    v21 = "'";
  }

  v22 = xmlStrcat(v20, v21);
  xmlSchemaPCustomErrExt(a1, 1717, a2, 0, v22, 0, 0, 0);
  if (v22)
  {

    free(v22);
  }
}

uint64_t xmlSchemaIsDerivedFromBuiltInType(uint64_t result)
{
  for (; result; result = *(result + 56))
  {
    if (*result == 5)
    {
      return 0;
    }

    v1 = *(result + 160);
    if (v1 == 45)
    {
      return 0;
    }

    if (*result == 1)
    {
      if (v1 == 23)
      {
        return 1;
      }

      if (v1 == 46)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t xmlSchemaAreValuesEqual(xmlSchemaValPtr val, xmlSchemaVal *a2)
{
  while (1)
  {
    if (!val)
    {
      return 0;
    }

    ValType = xmlSchemaGetValType(val);
    BuiltInType = xmlSchemaGetBuiltInType(ValType);
    v6 = xmlSchemaGetValType(a2);
    for (i = xmlSchemaGetBuiltInType(v6); BuiltInType; BuiltInType = BuiltInType->baseType)
    {
      if (BuiltInType->builtInType == 46)
      {
        break;
      }

      if ((BuiltInType->flags & 0x4000) != 0)
      {
        break;
      }
    }

    for (; i; i = i->baseType)
    {
      if (i->builtInType == 46)
      {
        break;
      }

      if ((i->flags & 0x4000) != 0)
      {
        break;
      }
    }

    if (BuiltInType != i)
    {
      return 0;
    }

    v8 = BuiltInType->builtInType;
    if (v8 != 1 && (v8 != 46 || BuiltInType->type != XML_SCHEMA_TYPE_BASIC))
    {
      break;
    }

    AsString = xmlSchemaValueGetAsString(val);
    v12 = xmlSchemaValueGetAsString(a2);
    result = xmlStrEqual(AsString, v12);
    if (!result)
    {
      return result;
    }

LABEL_19:
    val = xmlSchemaValueGetNext(val);
    Next = xmlSchemaValueGetNext(a2);
    a2 = Next;
    if (!val)
    {
      return Next == 0;
    }

    if (!Next)
    {
      return 0;
    }
  }

  v10 = xmlSchemaCompareValuesWhtsp(val, XML_SCHEMA_WHITESPACE_PRESERVE, a2, XML_SCHEMA_WHITESPACE_PRESERVE);
  if (!v10)
  {
    goto LABEL_19;
  }

  if (v10 == -2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t xmlSchemaCheckDerivationOKRestriction2to4(char *a1, int a2, int *a3, int *a4, int *a5, uint64_t **a6, uint64_t a7, uint64_t a8)
{
  v13 = a1;
  if (a5 && a5[2] >= 1)
  {
    v14 = 0;
    if (a2)
    {
      v15 = "redefined";
    }

    else
    {
      v15 = "base";
    }

    do
    {
      v16 = *(*a5 + 8 * v14);
      if (a6 && (v17 = *(a6 + 2), v17 >= 1))
      {
        v18 = *a6;
        v19 = *(v16 + 24);
        while (1)
        {
          v20 = *v18;
          v21 = *(*v18 + 24);
          if (v19[2] == v21[2] && v19[14] == v21[14])
          {
            break;
          }

          ++v18;
          if (!--v17)
          {
            goto LABEL_12;
          }
        }

        if (*(v16 + 48) != 2 || *(v20 + 48) != 1)
        {
          if (!xmlSchemaCheckCOSSTDerivedOK(v13, v19[12], v21[12], 0))
          {
            goto LABEL_17;
          }

          v63 = 0;
          v64 = 0;
          v62 = 0;
          ComponentNode = xmlSchemaGetComponentNode(a3);
          ComponentDesignation = xmlSchemaGetComponentDesignation(&v64, *(*(v16 + 24) + 96));
          v27 = xmlSchemaGetComponentDesignation(&v63, *(*(v20 + 24) + 96));
          v28 = xmlSchemaGetComponentDesignation(&v62, a4);
          xmlSchemaPAttrUseErr4(v13, 0x6FDu, ComponentNode, a3, v16, "The attribute declaration's %s is not validly derived from the corresponding %s of the attribute declaration in the %s %s", ComponentDesignation, v27, v15, v28);
          if (v64)
          {
            free(v64);
          }

          if (v63)
          {
            free(v63);
          }

          v24 = v62;
          v13 = a1;
          if (!v62)
          {
            goto LABEL_17;
          }

LABEL_16:
          free(v24);
          goto LABEL_17;
        }

        v64 = 0;
        v25 = xmlSchemaGetComponentNode(a3);
        v26 = xmlSchemaGetComponentDesignation(&v64, a4);
        xmlSchemaPAttrUseErr4(v13, 0x6FCu, v25, a3, v16, "The 'optional' attribute use is inconsistent with the corresponding 'required' attribute use of the %s %s", v15, v26, 0, 0);
      }

      else
      {
LABEL_12:
        if (a8 && !xmlSchemaCheckCVCWildcardNamespace(a8, *(*(v16 + 24) + 112)))
        {
          goto LABEL_17;
        }

        v64 = 0;
        v22 = xmlSchemaGetComponentNode(a3);
        v23 = xmlSchemaGetComponentDesignation(&v64, a4);
        xmlSchemaPAttrUseErr4(v13, 0x6FEu, v22, a3, v16, "Neither a matching attribute use, nor a matching wildcard exists in the %s %s", v15, v23, 0, 0);
      }

      v24 = v64;
      if (v64)
      {
        goto LABEL_16;
      }

LABEL_17:
      ++v14;
    }

    while (v14 < a5[2]);
  }

  if (a6)
  {
    v29 = *(a6 + 2);
    if (v29 >= 1)
    {
      v30 = 0;
      if (a2)
      {
        v31 = "redefined";
      }

      else
      {
        v31 = "base";
      }

      do
      {
        v32 = (*a6)[v30];
        if (*(v32 + 48) == 1)
        {
          if (a5 && (v33 = a5[2], v33 >= 1))
          {
            v34 = *a5;
            v35 = *(v32 + 24);
            while (1)
            {
              v36 = *(*v34 + 24);
              if (*(v36 + 16) == *(v35 + 16) && *(v36 + 112) == *(v35 + 112))
              {
                break;
              }

              v34 += 8;
              if (!--v33)
              {
                goto LABEL_41;
              }
            }
          }

          else
          {
LABEL_41:
            v63 = 0;
            v64 = 0;
            v37 = xmlSchemaGetComponentDesignation(&v64, v32);
            v38 = xmlSchemaGetComponentDesignation(&v63, a4);
            xmlSchemaCustomErr4(v13, 0x6FFu, 0, a3, "A matching attribute use for the 'required' %s of the %s %s is missing", v37, v31, v38, 0);
            if (v64)
            {
              free(v64);
            }

            if (v63)
            {
              free(v63);
            }

            v29 = *(a6 + 2);
          }
        }

        ++v30;
      }

      while (v30 < v29);
    }
  }

  if (!a7)
  {
    return 0;
  }

  if (!a8)
  {
    v64 = 0;
    if (*a3 == 1)
    {
      if (a3[40] == 45)
      {
        v42 = "complex type definition";
      }

      else
      {
        v42 = "simple type definition";
      }
    }

    else
    {
      v42 = xmlSchemaItemTypeToStr(*a3);
    }

    if (a2)
    {
      v49 = "redefined";
    }

    else
    {
      v49 = "base";
    }

    if (*a4 == 1)
    {
      if (a4[40] == 45)
      {
        v50 = "complex type definition";
      }

      else
      {
        v50 = "simple type definition";
      }
    }

    else
    {
      v50 = xmlSchemaItemTypeToStr(*a4);
    }

    ComponentQName = xmlSchemaGetComponentQName(&v64, a4);
    xmlSchemaCustomErr4(v13, 0x705u, 0, a3, "The %s has an attribute wildcard, but the %s %s '%s' does not have one", v42, v49, v50, ComponentQName);
    goto LABEL_102;
  }

  if (!*(a8 + 44))
  {
    v43 = *(a7 + 56);
    if (!v43 || (v44 = *(a8 + 56)) == 0 || *(v43 + 8) != *(v44 + 8))
    {
      v45 = *(a7 + 48);
      if (v45)
      {
        if (*(a8 + 48))
        {
LABEL_66:
          v46 = (a8 + 48);
          while (1)
          {
            v46 = *v46;
            if (!v46)
            {
              break;
            }

            if (v45[1] == v46[1])
            {
              v45 = *v45;
              if (v45)
              {
                goto LABEL_66;
              }

              goto LABEL_50;
            }
          }
        }

        else
        {
          v51 = *(a8 + 56);
          if (v51)
          {
            v52 = *(v51 + 8);
            while (v45[1] != v52)
            {
              v45 = *v45;
              if (!v45)
              {
                goto LABEL_50;
              }
            }
          }
        }
      }

      v64 = 0;
      if (a2)
      {
        v53 = "redefined";
      }

      else
      {
        v53 = "base";
      }

      if (*a4 == 1)
      {
        if (a4[40] == 45)
        {
          v54 = "complex type definition";
        }

        else
        {
          v54 = "simple type definition";
        }
      }

      else
      {
        v54 = xmlSchemaItemTypeToStr(*a4);
      }

      v55 = xmlSchemaGetComponentQName(&v64, a4);
      xmlSchemaCustomErr4(v13, 0x706u, 0, a3, "The attribute wildcard is not a valid subset of the wildcard in the %s %s '%s'", v53, v54, v55, 0);
      goto LABEL_102;
    }
  }

LABEL_50:
  v39 = *a4;
  if (*a4 != 1)
  {
    if (*(a7 + 40) < *(a8 + 40))
    {
      v64 = 0;
      if (a2)
      {
        v40 = "redefined";
      }

      else
      {
        v40 = "base";
      }

      v41 = xmlSchemaItemTypeToStr(v39);
      goto LABEL_76;
    }

    return 0;
  }

  if (a4[40] == 45 || *(a7 + 40) >= *(a8 + 40))
  {
    return 0;
  }

  v64 = 0;
  if (a2)
  {
    v40 = "redefined";
  }

  else
  {
    v40 = "base";
  }

  v41 = "simple type definition";
LABEL_76:
  v47 = xmlSchemaGetComponentQName(&v64, a4);
  xmlSchemaCustomErr4(v13, 0x707u, 0, a4, "The {process contents} of the attribute wildcard is weaker than the one in the %s %s '%s'", v40, v41, v47, 0);
LABEL_102:
  if (v64)
  {
    free(v64);
  }

  return *(v13 + 8);
}

void xmlSchemaPAttrUseErr4(xmlError *a1, unsigned __int32 a2, uint64_t a3, uint64_t a4, uint64_t a5, const xmlChar *a6, const xmlChar *a7, xmlChar *a8, xmlChar *a9, uint64_t a10, ...)
{
  cur = 0;
  v21 = 0;
  xmlSchemaFormatItemForReport(&cur, a4, 0);
  v17 = xmlStrcat(cur, ", ");
  cur = v17;
  v18 = xmlSchemaFormatItemForReport(&v21, a5, 0);
  v19 = xmlStrcat(v17, v18);
  cur = v19;
  if (v21)
  {
    free(v21);
    v21 = 0;
    v19 = cur;
  }

  cur = xmlStrcat(v19, ": ");
  cur = xmlStrcat(cur, a6);
  cur = xmlStrcat(cur, ".\n");
  xmlSchemaErr4Line(a1, 2, a2, a3, 0, cur, a7, a8, a9, a10);
  free(cur);
}

uint64_t xmlSchemaCheckCVCWildcardNamespace(uint64_t a1, xmlChar *str2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(a1 + 44))
  {
    return 0;
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    while (!xmlStrEqual(v4[1], str2))
    {
      v4 = *v4;
      if (!v4)
      {
        return 1;
      }
    }

    return 0;
  }

  else
  {
    if (!str2)
    {
      return 1;
    }

    v5 = *(a1 + 56);
    if (!v5)
    {
      return 1;
    }

    result = xmlStrEqual(*(v5 + 8), str2);
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t xmlSchemaCheckCTComponent(xmlError *a1, uint64_t a2)
{
  v4 = *(a2 + 112);
  if (!v4 || *v4 != 4 && (*v4 != 1 || v4[40] == 45) || (*(a2 + 88) & 2) != 0)
  {
    v6 = *(a2 + 216);
    if (v6)
    {
      v7 = *(v6 + 8);
      if (v7 >= 2)
      {
        v8 = 0;
        v9 = v7 - 2;
        v10 = v7 - 1;
        do
        {
          v11 = v7--;
          v12 = *(*v6 + 8 * v7);
          if (v7)
          {
            v13 = *(v12 + 24);
            v14 = *v6 + 8 * v9;
            v15 = v10;
            while (1)
            {
              v16 = *(*v14 + 24);
              if (v13[2] == *(v16 + 16) && v13[14] == *(v16 + 112))
              {
                break;
              }

              --v15;
              v14 -= 8;
              if (v15 <= 0)
              {
                goto LABEL_16;
              }
            }

            v35 = 0;
            ComponentDesignation = xmlSchemaGetComponentDesignation(&v35, v12);
            xmlSchemaCustomErr4(a1, 0xC0Fu, 0, a2, "Duplicate %s", ComponentDesignation, 0, 0, 0);
            if (v35)
            {
              free(v35);
            }

            if (xmlSchemaItemListRemove(v6, v7) == -1)
            {
              return 0xFFFFFFFFLL;
            }
          }

          else
          {
            v13 = *(v12 + 24);
LABEL_16:
            for (i = v13[12]; i; i = *(i + 56))
            {
              if (*i == 5)
              {
                break;
              }

              v18 = *(i + 160);
              if (v18 == 45)
              {
                break;
              }

              if (*i == 1)
              {
                if (v18 == 23)
                {
                  if (!v8)
                  {
                    goto LABEL_32;
                  }

                  v35 = 0;
                  v20 = xmlSchemaGetComponentDesignation(&v35, v12);
                  xmlSchemaCustomErr4(a1, 0xC0Fu, 0, a2, "There must not exist more than one attribute declaration of type 'xs:ID' (or derived from 'xs:ID'). The %s violates this constraint", v20, 0, 0, 0);
                  if (v35)
                  {
                    free(v35);
                  }

                  if (xmlSchemaItemListRemove(v6, v7) != -1)
                  {
LABEL_32:
                    v8 = 1;
                    break;
                  }

                  return 0xFFFFFFFFLL;
                }

                if (v18 == 46)
                {
                  break;
                }
              }
            }
          }

          --v9;
          --v10;
        }

        while (v11 > 1);
      }
    }

    v21 = *(a2 + 112);
    v22 = *v21;
    if ((*(a2 + 88) & 2) == 0)
    {
      if (v22 != 5 && v21[40] != 45)
      {
        xmlSchemaCustomErr4(a1, 0x6FBu, *(a2 + 72), a2, "The base type must be a complex type", 0, 0, 0, 0);
        return a1->line;
      }

      if ((*(v21 + 89) & 4) != 0)
      {
        xmlSchemaCustomErr4(a1, 0x6FBu, *(a2 + 72), a2, "The 'final' of the base type definition contains 'restriction'", 0, 0, 0, 0);
        return a1->line;
      }

      if (xmlSchemaCheckDerivationOKRestriction2to4(a1, 0, a2, *(a2 + 112), *(a2 + 216), *(v21 + 27), *(a2 + 152), *(v21 + 19)) == -1)
      {
        return 0xFFFFFFFFLL;
      }

      if (v21[40] == 45)
      {
        return 0;
      }

      v23 = *(a2 + 92);
      if (v23 <= 2)
      {
        if (v23 == 1)
        {
          v32 = v21[23];
          if ((v32 - 2) >= 2)
          {
            if (v32 == 1)
            {
              return 0;
            }
          }

          else if (xmlSchemaIsParticleEmptiable(*(v21 + 7)))
          {
            return 0;
          }

          xmlSchemaPCustomErrExt(a1, 1787, a2, 0, "The content type of the base type must be either empty or 'mixed' (or 'elements-only') and an emptiable particle", 0, 0, 0);
          return a1->line;
        }

        if (v23 == 2)
        {
          return 0;
        }
      }

      else
      {
        if (v23 == 3)
        {
          if (v21[23] == 3)
          {
            return 0;
          }

          xmlSchemaPCustomErrExt(a1, 1787, a2, 0, "If the content type is 'mixed', then the content type of the base type must also be 'mixed'", 0, 0, 0);
          return a1->line;
        }

        if (v23 == 6 || v23 == 4)
        {
          v24 = v21[23];
          if (v24 == 3)
          {
            if (xmlSchemaIsParticleEmptiable(*(v21 + 7)))
            {
              return 0;
            }
          }

          else if (v24 == 6 || v24 == 4)
          {
            v25 = xmlSchemaCheckCOSSTDerivedOK(a1, *(a2 + 192), *(v21 + 24), 0);
            if (v25)
            {
              v34 = 0;
              v35 = 0;
              if (v25 != -1)
              {
                v26 = xmlSchemaGetComponentDesignation(&v35, *(a2 + 192));
                v27 = xmlSchemaGetComponentDesignation(&v34, *(v21 + 24));
                xmlSchemaCustomErr4(a1, 0x6FBu, 0, a2, "The {content type} %s is not validly derived from the base type's {content type} %s", v26, v27, 0, 0);
                if (v35)
                {
                  free(v35);
                }

                if (v34)
                {
                  free(v34);
                }

                return a1->line;
              }

              return 0xFFFFFFFFLL;
            }

            return 0;
          }

          xmlSchemaPCustomErrExt(a1, 1787, a2, 0, "The content type of the base type must be either a simple type or 'mixed' and an emptiable particle", 0, 0, 0);
          return a1->line;
        }
      }

      xmlSchemaPCustomErrExt(a1, 1787, a2, 0, "The type is not a valid restriction of its base type", 0, 0, 0);
      return a1->line;
    }

    if (v22 == 5 || v21[40] == 45)
    {
      if ((*(v21 + 89) & 2) == 0)
      {
        v28 = *(a2 + 192);
        if (v28 && v28 == *(v21 + 24))
        {
          return 0;
        }

        v29 = *(a2 + 92);
        if (v29 == 1 && v21[23] == 1)
        {
          return 0;
        }

        if (*(a2 + 56))
        {
          v30 = v21[23];
          if (v30 == 1)
          {
            return 0;
          }

          v31 = "The content type of both, the type and its base type, must either 'mixed' or 'element-only'";
          if ((v29 & 0xFFFFFFFE) == 2 && v29 == v30)
          {
            return 0;
          }
        }

        else
        {
          v31 = "The content type must specify a particle";
        }

LABEL_73:
        v5 = 3063;
        xmlSchemaPCustomErrExt(a1, 3063, a2, 0, v31, 0, 0, 0);
        return v5;
      }
    }

    else
    {
      if (*(a2 + 192) != v21)
      {
        v31 = "The content type must be the simple base type";
        goto LABEL_73;
      }

      if ((*(v21 + 89) & 2) == 0)
      {
        return 0;
      }
    }

    v31 = "The 'final' of the base type definition contains 'extension'";
    goto LABEL_73;
  }

  v5 = 3076;
  xmlSchemaCustomErr4(a1, 0xC04u, 0, a2, "If the base type is a simple type, the derivation method must be 'extension'", 0, 0, 0, 0);
  return v5;
}