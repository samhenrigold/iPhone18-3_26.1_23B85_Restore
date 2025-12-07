_OWORD *xmlRelaxNGParsePattern(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 72) || *(a2 + 8) != 1)
  {
    goto LABEL_266;
  }

  v4 = xmlStrEqual(*(a2 + 16), "element");
  v5 = *(a2 + 72);
  if (v4)
  {
    if (xmlStrEqual(*(v5 + 16), "http://relaxng.org/ns/structure/1.0"))
    {

      return xmlRelaxNGParseElement(a1, a2);
    }

    v5 = *(a2 + 72);
  }

  if (!v5 || *(a2 + 8) != 1)
  {
    goto LABEL_266;
  }

  v7 = xmlStrEqual(*(a2 + 16), "attribute");
  v8 = *(a2 + 72);
  if (v7)
  {
    if (xmlStrEqual(*(v8 + 16), "http://relaxng.org/ns/structure/1.0"))
    {
      v9 = xmlRelaxNGNewDefine(a1, a2);
      v10 = v9;
      if (!v9)
      {
        return v10;
      }

      *v9 = 9;
      *(v9 + 7) = *(a1 + 88);
      v11 = *(a2 + 24);
      if (v11)
      {
        v12 = *(a1 + 64);
        *(a1 + 64) = v12 | 1;
        if (!xmlRelaxNGParseNameClass(a1, v11, v9) || (v11 = *(v11 + 48)) != 0)
        {
          v13 = xmlRelaxNGParsePattern(a1, v11);
          if (v13)
          {
            v14 = *v13 + 1;
            if (v14 <= 0x15)
            {
              v15 = 1 << v14;
              if ((v15 & 0x1FFF76) != 0)
              {
                *(v10 + 6) = v13;
                *(v13 + 7) = v10;
              }

              else
              {
                if ((v15 & 0x200088) != 0)
                {
                  v28 = "attribute has invalid content\n";
                  v29 = a1;
                  v30 = a2;
                  v31 = 1003;
                }

                else
                {
                  v28 = "RNG Internal error, noop found in attribute\n";
                  v29 = a1;
                  v30 = a2;
                  v31 = 1005;
                }

                xmlRngPErr(v29, v30, v31, v28, 0, 0);
              }
            }
          }

          if (*(v11 + 48))
          {
            xmlRngPErr(a1, a2, 1002, "attribute has multiple children\n", 0, 0);
          }
        }

        *(a1 + 64) = v12;
        return v10;
      }

      v19 = "xmlRelaxNGParseattribute: attribute has no children\n";
      v20 = a1;
      v21 = a2;
      v22 = 1004;
      goto LABEL_33;
    }

    v8 = *(a2 + 72);
  }

  if (!v8 || *(a2 + 8) != 1)
  {
    goto LABEL_266;
  }

  v16 = xmlStrEqual(*(a2 + 16), "empty");
  v17 = *(a2 + 72);
  if (v16)
  {
    if (xmlStrEqual(*(v17 + 16), "http://relaxng.org/ns/structure/1.0"))
    {
      v18 = xmlRelaxNGNewDefine(a1, a2);
      v10 = v18;
      if (!v18)
      {
        return v10;
      }

      *v18 = 0;
      if (!*(a2 + 24))
      {
        return v10;
      }

      v19 = "empty: had a child node\n";
      v20 = a1;
      v21 = a2;
      v22 = 1025;
      goto LABEL_33;
    }

    v17 = *(a2 + 72);
  }

  if (!v17 || *(a2 + 8) != 1)
  {
    goto LABEL_266;
  }

  v25 = xmlStrEqual(*(a2 + 16), "text");
  v26 = *(a2 + 72);
  if (v25)
  {
    if (xmlStrEqual(*(v26 + 16), "http://relaxng.org/ns/structure/1.0"))
    {
      v27 = xmlRelaxNGNewDefine(a1, a2);
      v10 = v27;
      if (!v27)
      {
        return v10;
      }

      *v27 = 3;
      if (!*(a2 + 24))
      {
        return v10;
      }

      v19 = "text: had a child node\n";
      v20 = a1;
      v21 = a2;
      v22 = 1109;
      goto LABEL_33;
    }

    v26 = *(a2 + 72);
  }

  if (!v26 || *(a2 + 8) != 1)
  {
    goto LABEL_266;
  }

  v32 = xmlStrEqual(*(a2 + 16), "zeroOrMore");
  v33 = *(a2 + 72);
  if (v32)
  {
    if (xmlStrEqual(*(v33 + 16), "http://relaxng.org/ns/structure/1.0"))
    {
      v10 = xmlRelaxNGNewDefine(a1, a2);
      if (!v10)
      {
        return v10;
      }

      v34 = 15;
LABEL_53:
      *v10 = v34;
      v35 = *(a2 + 24);
      if (v35)
      {
        v36 = a1;
        v37 = 1;
LABEL_55:
        v38 = xmlRelaxNGParsePatterns(v36, v35, v37);
LABEL_56:
        *(v10 + 6) = v38;
        return v10;
      }

      goto LABEL_82;
    }

    v33 = *(a2 + 72);
  }

  if (!v33 || *(a2 + 8) != 1)
  {
    goto LABEL_266;
  }

  v39 = xmlStrEqual(*(a2 + 16), "oneOrMore");
  v40 = *(a2 + 72);
  if (v39)
  {
    if (xmlStrEqual(*(v40 + 16), "http://relaxng.org/ns/structure/1.0"))
    {
      v10 = xmlRelaxNGNewDefine(a1, a2);
      if (!v10)
      {
        return v10;
      }

      v34 = 16;
      goto LABEL_53;
    }

    v40 = *(a2 + 72);
  }

  if (!v40 || *(a2 + 8) != 1)
  {
    goto LABEL_266;
  }

  v41 = xmlStrEqual(*(a2 + 16), "optional");
  v42 = *(a2 + 72);
  if (v41)
  {
    if (xmlStrEqual(*(v42 + 16), "http://relaxng.org/ns/structure/1.0"))
    {
      v10 = xmlRelaxNGNewDefine(a1, a2);
      if (!v10)
      {
        return v10;
      }

      v34 = 14;
      goto LABEL_53;
    }

    v42 = *(a2 + 72);
  }

  if (!v42 || *(a2 + 8) != 1)
  {
    goto LABEL_266;
  }

  v43 = xmlStrEqual(*(a2 + 16), "choice");
  v44 = *(a2 + 72);
  if (v43)
  {
    if (xmlStrEqual(*(v44 + 16), "http://relaxng.org/ns/structure/1.0"))
    {
      v10 = xmlRelaxNGNewDefine(a1, a2);
      if (!v10)
      {
        return v10;
      }

      v45 = 17;
LABEL_80:
      *v10 = v45;
      v35 = *(a2 + 24);
      if (v35)
      {
        v36 = a1;
        v37 = 0;
        goto LABEL_55;
      }

LABEL_82:
      name = *(a2 + 16);
      v19 = "Element %s is empty\n";
      v20 = a1;
      v21 = a2;
      v22 = 1023;
      goto LABEL_34;
    }

    v44 = *(a2 + 72);
  }

  if (!v44 || *(a2 + 8) != 1)
  {
    goto LABEL_266;
  }

  v46 = xmlStrEqual(*(a2 + 16), "group");
  v47 = *(a2 + 72);
  if (v46)
  {
    if (xmlStrEqual(*(v47 + 16), "http://relaxng.org/ns/structure/1.0"))
    {
      v10 = xmlRelaxNGNewDefine(a1, a2);
      if (!v10)
      {
        return v10;
      }

      v45 = 18;
      goto LABEL_80;
    }

    v47 = *(a2 + 72);
  }

  if (!v47 || *(a2 + 8) != 1)
  {
    goto LABEL_266;
  }

  v48 = xmlStrEqual(*(a2 + 16), "ref");
  v49 = *(a2 + 72);
  if (v48)
  {
    if (xmlStrEqual(*(v49 + 16), "http://relaxng.org/ns/structure/1.0"))
    {
      v50 = xmlRelaxNGNewDefine(a1, a2);
      v10 = v50;
      if (!v50)
      {
        return v10;
      }

      *v50 = 11;
      Prop = xmlGetProp(a2, "name");
      *(v10 + 2) = Prop;
      if (Prop)
      {
        xmlRelaxNGNormExtSpace(Prop);
        if (!xmlValidateNCName(*(v10 + 2), 0))
        {
LABEL_119:
          if (*(a2 + 24))
          {
            xmlRngPErr(a1, a2, 1103, "ref is not empty\n", 0, 0);
          }

          v65 = *(*(a1 + 48) + 56);
          if (v65 || (v65 = xmlHashCreate(10), (*(*(a1 + 48) + 56) = v65) != 0))
          {
            if ((xmlHashAddEntry(v65, *(v10 + 2), v10) & 0x80000000) == 0)
            {
              return v10;
            }

            v66 = xmlHashLookup(*(*(a1 + 48) + 56), *(v10 + 2));
            if (v66)
            {
LABEL_125:
              *(v10 + 11) = v66[11];
              v66[11] = v10;
              return v10;
            }

            v80 = *(v10 + 2);
            if (v80)
            {
              v76 = "Error refs definitions '%s'\n";
            }

            else
            {
              v76 = "Error refs definitions\n";
            }

            v77 = a1;
            v78 = a2;
            v79 = 1098;
            goto LABEL_267;
          }

          v76 = "Could not create references hash\n";
          v77 = a1;
          v78 = a2;
          v79 = 1098;
          goto LABEL_145;
        }

        v52 = *(v10 + 2);
        v53 = "ref name '%s' is not an NCName\n";
        v54 = a1;
        v55 = a2;
        v56 = 1100;
      }

      else
      {
        v53 = "ref has no name\n";
        v54 = a1;
        v55 = a2;
        v56 = 1102;
        v52 = 0;
      }

      xmlRngPErr(v54, v55, v56, v53, v52, 0);
      goto LABEL_119;
    }

    v49 = *(a2 + 72);
  }

  if (!v49 || *(a2 + 8) != 1)
  {
    goto LABEL_266;
  }

  v57 = xmlStrEqual(*(a2 + 16), "data");
  v58 = *(a2 + 72);
  if (v57)
  {
    if (xmlStrEqual(*(v58 + 16), "http://relaxng.org/ns/structure/1.0"))
    {
      v59 = xmlGetProp(a2, "type");
      if (v59)
      {
        v60 = v59;
        xmlRelaxNGNormExtSpace(v59);
        if (xmlValidateNCName(v60, 0))
        {
          xmlRngPErr(a1, a2, 1112, "data type '%s' is not an NCName\n", v60, 0);
        }

        v61 = xmlRelaxNGGetDataTypeLibrary(a2);
        if (!v61)
        {
          v61 = xmlStrdup("http://relaxng.org/ns/structure/1.0");
        }

        v62 = xmlRelaxNGNewDefine(a1, a2);
        v10 = v62;
        if (!v62)
        {
          free(v61);
          free(v60);
          return v10;
        }

        *v62 = 5;
        *(v62 + 2) = v60;
        *(v62 + 3) = v61;
        v63 = xmlHashLookup(xmlRelaxNGRegisteredTypes, v61);
        if (!v63)
        {
          xmlRngPErr(a1, a2, 1116, "Use of unregistered type library '%s'\n", v61, 0);
          *(v10 + 5) = 0;
          goto LABEL_160;
        }

        *(v10 + 5) = v63;
        v64 = v63[2];
        if (v64)
        {
          if (v64(v63[1], *(v10 + 2)) == 1)
          {
            if (xmlStrEqual(v61, "http://www.w3.org/2001/XMLSchema-datatypes") && (xmlStrEqual(*(v10 + 2), "IDREF") || xmlStrEqual(*(v10 + 2), "IDREFS")))
            {
              *(a1 + 224) = 1;
            }

LABEL_160:
            v89 = *(a2 + 24);
            if (v89)
            {
              v90 = 0;
              while (xmlStrEqual(v89->name, "param"))
              {
                if (xmlStrEqual(v61, "http://relaxng.org/ns/structure/1.0"))
                {
                  xmlRngPErr(a1, a2, 1058, "Type library '%s' does not allow type parameters\n", v61, 0);
                  while (1)
                  {
                    v89 = v89->next;
                    if (!v89)
                    {
                      return v10;
                    }

                    if (!xmlStrEqual(v89->name, "param"))
                    {
                      goto LABEL_175;
                    }
                  }
                }

                v91 = xmlRelaxNGNewDefine(a1, a2);
                if (v91)
                {
                  v92 = v91;
                  *v91 = 6;
                  v93 = xmlGetProp(v89, "name");
                  *(v92 + 2) = v93;
                  if (!v93)
                  {
                    xmlRngPErr(a1, a2, 1059, "param has no name\n", 0, 0);
                  }

                  *(v92 + 4) = xmlNodeGetContent(v89);
                  v94 = v90 + 4;
                  if (!v90)
                  {
                    v94 = v10 + 9;
                  }

                  *v94 = v92;
                  v90 = v92;
                }

                v89 = v89->next;
LABEL_175:
                if (!v89)
                {
                  return v10;
                }
              }

              if (!xmlStrEqual(v89->name, "except"))
              {
                goto LABEL_224;
              }

              v97 = xmlRelaxNGNewDefine(a1, a2);
              if (v97)
              {
                *v97 = 2;
                children = v89->children;
                *(v10 + 6) = v97;
                if (children)
                {
                  v99 = 0;
                  v100 = v97 + 3;
                  do
                  {
                    v101 = xmlRelaxNGParsePattern(a1, children);
                    if (v101)
                    {
                      v102 = v99 + 4;
                      if (!v99)
                      {
                        v102 = v100;
                      }

                      *v102 = v101;
                      v99 = v101;
                    }

                    children = *(children + 48);
                  }

                  while (children);
                }

                else
                {
                  xmlRngPErr(a1, v89, 1030, "except has no content\n", 0, 0);
                }

                v89 = v89->next;
                if (v89)
                {
LABEL_224:
                  name = v89->name;
                  v19 = "Element data has unexpected content %s\n";
                  v20 = a1;
                  v21 = v89;
                  v22 = 1009;
                  goto LABEL_34;
                }
              }
            }

            return v10;
          }

          v87 = *(v10 + 2);
          v83 = "Error type '%s' is not exported by type library '%s'\n";
          v84 = a1;
          v85 = a2;
          v86 = 1111;
          v88 = v61;
        }

        else
        {
          v83 = "Internal error with type library '%s': no 'have'\n";
          v84 = a1;
          v85 = a2;
          v86 = 1026;
          v87 = v61;
          v88 = 0;
        }

        xmlRngPErr(v84, v85, v86, v83, v87, v88);
        goto LABEL_160;
      }

      v76 = "data has no type\n";
      v77 = a1;
      v78 = a2;
      v79 = 1110;
LABEL_145:
      v80 = 0;
LABEL_267:
      xmlRngPErr(v77, v78, v79, v76, v80, 0);
      return 0;
    }

    v58 = *(a2 + 72);
  }

  if (!v58 || *(a2 + 8) != 1)
  {
    goto LABEL_266;
  }

  v67 = xmlStrEqual(*(a2 + 16), "value");
  v68 = *(a2 + 72);
  if (v67)
  {
    if (xmlStrEqual(*(v68 + 16), "http://relaxng.org/ns/structure/1.0"))
    {
      v69 = xmlRelaxNGNewDefine(a1, a2);
      v10 = v69;
      if (!v69)
      {
        return v10;
      }

      *v69 = 7;
      v70 = xmlGetProp(a2, "type");
      v71 = v70;
      if (v70)
      {
        xmlRelaxNGNormExtSpace(v70);
        if (xmlValidateNCName(v71, 0))
        {
          xmlRngPErr(a1, a2, 1112, "value type '%s' is not an NCName\n", v71, 0);
        }

        v72 = xmlRelaxNGGetDataTypeLibrary(a2);
        if (!v72)
        {
          v72 = xmlStrdup("http://relaxng.org/ns/structure/1.0");
        }

        *(v10 + 2) = v71;
        *(v10 + 3) = v72;
        v73 = xmlHashLookup(xmlRelaxNGRegisteredTypes, v72);
        v71 = v73;
        if (!v73)
        {
          xmlRngPErr(a1, a2, 1116, "Use of unregistered type library '%s'\n", v72, 0);
          v75 = 0;
          *(v10 + 5) = 0;
          goto LABEL_200;
        }

        *(v10 + 5) = v73;
        v74 = *(v73 + 2);
        if (v74)
        {
          if (v74(*(v73 + 1), *(v10 + 2)) == 1)
          {
            v75 = 1;
            goto LABEL_200;
          }

          v107 = *(v10 + 2);
          v103 = "Error type '%s' is not exported by type library '%s'\n";
          v104 = a1;
          v105 = a2;
          v106 = 1111;
          v108 = v72;
        }

        else
        {
          v103 = "Internal error with type library '%s': no 'have'\n";
          v104 = a1;
          v105 = a2;
          v106 = 1026;
          v107 = v72;
          v108 = 0;
        }

        xmlRngPErr(v104, v105, v106, v103, v107, v108);
      }

      v75 = 0;
LABEL_200:
      v109 = *(a2 + 24);
      if (!v109)
      {
        *(v10 + 4) = xmlStrdup("");
        return v10;
      }

      if ((*(v109 + 8) - 3) > 1 || *(v109 + 48))
      {
        v19 = "Expecting a single text value for <value>content\n";
        v20 = a1;
        v21 = a2;
        v22 = 1108;
      }

      else
      {
        Content = xmlNodeGetContent(a2);
        *(v10 + 4) = Content;
        if (Content)
        {
          if (!v71)
          {
            return v10;
          }

          v111 = *(v71 + 3);
          v112 = v75 ^ 1;
          if (!v111)
          {
            v112 = 1;
          }

          if (v112)
          {
            return v10;
          }

          v137 = 0;
          if (v111(*(v71 + 1), *(v10 + 2), Content, &v137, a2) == 1)
          {
            if (v137)
            {
              *(v10 + 9) = v137;
            }

            return v10;
          }

          name = *(v10 + 4);
          v24 = *(v10 + 2);
          v19 = "Value '%s' is not acceptable for type '%s'\n";
          v20 = a1;
          v21 = a2;
          v22 = 1051;
          goto LABEL_35;
        }

        v19 = "Element <value> has no content\n";
        v20 = a1;
        v21 = a2;
        v22 = 1120;
      }

      goto LABEL_33;
    }

    v68 = *(a2 + 72);
  }

  if (!v68 || *(a2 + 8) != 1)
  {
    goto LABEL_266;
  }

  v81 = xmlStrEqual(*(a2 + 16), "list");
  v82 = *(a2 + 72);
  if (v81)
  {
    if (xmlStrEqual(*(v82 + 16), "http://relaxng.org/ns/structure/1.0"))
    {
      v10 = xmlRelaxNGNewDefine(a1, a2);
      if (!v10)
      {
        return v10;
      }

      v45 = 8;
      goto LABEL_80;
    }

    v82 = *(a2 + 72);
  }

  if (!v82 || *(a2 + 8) != 1)
  {
    goto LABEL_266;
  }

  v95 = xmlStrEqual(*(a2 + 16), "interleave");
  v96 = *(a2 + 72);
  if (v95)
  {
    if (xmlStrEqual(*(v96 + 16), "http://relaxng.org/ns/structure/1.0"))
    {

      return xmlRelaxNGParseInterleave(a1, a2);
    }

    v96 = *(a2 + 72);
  }

  if (!v96 || *(a2 + 8) != 1)
  {
    goto LABEL_266;
  }

  v113 = xmlStrEqual(*(a2 + 16), "externalRef");
  v114 = *(a2 + 72);
  if (!v113)
  {
LABEL_227:
    if (v114 && *(a2 + 8) == 1)
    {
      v115 = xmlStrEqual(*(a2 + 16), "notAllowed");
      v116 = *(a2 + 72);
      if (v115)
      {
        if (xmlStrEqual(*(v116 + 16), "http://relaxng.org/ns/structure/1.0"))
        {
          v117 = xmlRelaxNGNewDefine(a1, a2);
          v10 = v117;
          if (!v117)
          {
            return v10;
          }

          *v117 = 1;
          if (!*(a2 + 24))
          {
            return v10;
          }

          v19 = "xmlRelaxNGParse: notAllowed element is not empty\n";
          v20 = a1;
          v21 = a2;
          v22 = 1055;
LABEL_33:
          name = 0;
LABEL_34:
          v24 = 0;
LABEL_35:
          xmlRngPErr(v20, v21, v22, v19, name, v24);
          return v10;
        }

        v116 = *(a2 + 72);
      }

      if (v116 && *(a2 + 8) == 1)
      {
        v118 = xmlStrEqual(*(a2 + 16), "grammar");
        v119 = *(a2 + 72);
        if (v118)
        {
          if (xmlStrEqual(*(v119 + 16), "http://relaxng.org/ns/structure/1.0"))
          {
            v120 = *(a1 + 48);
            v136 = *(a1 + 48);
            *(a1 + 56) = v136;
            v121 = xmlRelaxNGParseGrammar(a1, *(a2 + 24));
            if (v120)
            {
              *(a1 + 48) = v136;
            }

            if (v121)
            {
              return v121[3];
            }

            return 0;
          }

          v119 = *(a2 + 72);
        }

        if (v119 && *(a2 + 8) == 1)
        {
          v122 = xmlStrEqual(*(a2 + 16), "parentRef");
          v123 = *(a2 + 72);
          if (v122)
          {
            if (xmlStrEqual(*(v123 + 16), "http://relaxng.org/ns/structure/1.0"))
            {
              if (!*(a1 + 56))
              {
                v76 = "Use of parentRef without a parent grammar\n";
                v77 = a1;
                v78 = a2;
                v79 = 1063;
                goto LABEL_145;
              }

              v124 = xmlRelaxNGNewDefine(a1, a2);
              v10 = v124;
              if (!v124)
              {
                return v10;
              }

              *v124 = 13;
              v125 = xmlGetProp(a2, "name");
              *(v10 + 2) = v125;
              if (v125)
              {
                xmlRelaxNGNormExtSpace(v125);
                if (!xmlValidateNCName(*(v10 + 2), 0))
                {
LABEL_273:
                  if (*(a2 + 24))
                  {
                    xmlRngPErr(a1, a2, 1064, "parentRef is not empty\n", 0, 0);
                  }

                  v134 = *(*(a1 + 56) + 56);
                  if (v134 || (v134 = xmlHashCreate(10), (*(*(a1 + 56) + 56) = v134) != 0))
                  {
                    v135 = *(v10 + 2);
                    if (!v135 || (xmlHashAddEntry(v134, v135, v10) & 0x80000000) == 0)
                    {
                      return v10;
                    }

                    v66 = xmlHashLookup(*(*(a1 + 56) + 56), *(v10 + 2));
                    if (v66)
                    {
                      goto LABEL_125;
                    }

                    v80 = *(v10 + 2);
                    v76 = "Internal error parentRef definitions '%s'\n";
                    v77 = a1;
                    v78 = a2;
                    v79 = 1060;
                    goto LABEL_267;
                  }

                  v76 = "Could not create references hash\n";
                  v77 = a1;
                  v78 = a2;
                  v79 = 1060;
                  goto LABEL_145;
                }

                v126 = *(v10 + 2);
                v127 = "parentRef name '%s' is not an NCName\n";
                v128 = a1;
                v129 = a2;
                v130 = 1061;
              }

              else
              {
                v127 = "parentRef has no name\n";
                v128 = a1;
                v129 = a2;
                v130 = 1062;
                v126 = 0;
              }

              xmlRngPErr(v128, v129, v130, v127, v126, 0);
              goto LABEL_273;
            }

            v123 = *(a2 + 72);
          }

          if (v123 && *(a2 + 8) == 1 && xmlStrEqual(*(a2 + 16), "mixed") && xmlStrEqual(*(*(a2 + 72) + 16), "http://relaxng.org/ns/structure/1.0"))
          {
            if (*(a2 + 24))
            {
              v131 = xmlRelaxNGParseInterleave(a1, a2);
              v10 = v131;
              if (!v131)
              {
                return v10;
              }

              v132 = v131[6];
              if (v132)
              {
                if (*(v132 + 64))
                {
                  v133 = xmlRelaxNGNewDefine(a1, a2);
                  if (v133)
                  {
                    *v133 = 18;
                    *(v133 + 6) = *(v10 + 6);
                    *(v10 + 6) = v133;
                  }
                }
              }

              v38 = xmlRelaxNGNewDefine(a1, a2);
              if (!v38)
              {
                return v10;
              }

              *v38 = 3;
              v38[8] = *(v10 + 6);
              goto LABEL_56;
            }

            v76 = "Mixed is empty\n";
            v77 = a1;
            v78 = a2;
            v79 = 1023;
            goto LABEL_145;
          }
        }
      }
    }

LABEL_266:
    v80 = *(a2 + 16);
    v76 = "Unexpected node %s is not a pattern\n";
    v77 = a1;
    v78 = a2;
    v79 = 1115;
    goto LABEL_267;
  }

  if (!xmlStrEqual(*(v114 + 16), "http://relaxng.org/ns/structure/1.0"))
  {
    v114 = *(a2 + 72);
    goto LABEL_227;
  }

  return xmlRelaxNGProcessExternalRef(a1, a2);
}

_OWORD *xmlRelaxNGParseNameClass(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a2 + 72))
  {
    goto LABEL_82;
  }

  v6 = a3;
  if (*(a2 + 8) == 1)
  {
    v7 = xmlStrEqual(*(a2 + 16), "name");
    v8 = *(a2 + 72);
    if (v7)
    {
      if (xmlStrEqual(*(v8 + 16), "http://relaxng.org/ns/structure/1.0"))
      {
LABEL_5:
        v6 = a3;
        if (*a3 != 4)
        {
          v6 = a3;
          if (*a3 != 9)
          {
            v9 = xmlRelaxNGNewDefine(a1, a2);
            v6 = v9;
            if (!v9)
            {
              return v6;
            }

            *(v9 + 7) = a3;
            if (*(a1 + 64))
            {
              v10 = 9;
            }

            else
            {
              v10 = 4;
            }

            *v9 = v10;
          }
        }

        goto LABEL_22;
      }

      v8 = *(a2 + 72);
    }

    if (!v8)
    {
      goto LABEL_82;
    }

    v6 = a3;
    if (*(a2 + 8) == 1)
    {
      v11 = xmlStrEqual(*(a2 + 16), "anyName");
      v12 = *(a2 + 72);
      if (v11)
      {
        if (xmlStrEqual(*(v12 + 16), "http://relaxng.org/ns/structure/1.0"))
        {
          goto LABEL_5;
        }

        v12 = *(a2 + 72);
      }

      if (!v12)
      {
        goto LABEL_82;
      }

      v6 = a3;
      if (*(a2 + 8) == 1)
      {
        v6 = a3;
        if (xmlStrEqual(*(a2 + 16), "nsName"))
        {
          v6 = a3;
          if (xmlStrEqual(*(*(a2 + 72) + 16), "http://relaxng.org/ns/structure/1.0"))
          {
            goto LABEL_5;
          }
        }
      }
    }
  }

LABEL_22:
  if (!*(a2 + 72) || *(a2 + 8) != 1)
  {
    goto LABEL_82;
  }

  v13 = xmlStrEqual(*(a2 + 16), "name");
  v14 = *(a2 + 72);
  if (!v13)
  {
    goto LABEL_30;
  }

  if (!xmlStrEqual(*(v14 + 16), "http://relaxng.org/ns/structure/1.0"))
  {
    v14 = *(a2 + 72);
LABEL_30:
    if (v14 && *(a2 + 8) == 1)
    {
      v22 = xmlStrEqual(*(a2 + 16), "anyName");
      v23 = *(a2 + 72);
      if (v22)
      {
        if (xmlStrEqual(*(v23 + 16), "http://relaxng.org/ns/structure/1.0"))
        {
          *(v6 + 16) = 0;
          *(v6 + 24) = 0;
LABEL_35:
          v24 = *(a2 + 24);
          if (v24)
          {
            *(v6 + 80) = xmlRelaxNGParseExceptNameClass(a1, v24, *a3 == 9);
          }

          goto LABEL_49;
        }

        v23 = *(a2 + 72);
      }

      if (v23 && *(a2 + 8) == 1)
      {
        v34 = xmlStrEqual(*(a2 + 16), "nsName");
        v35 = *(a2 + 72);
        if (v34)
        {
          if (xmlStrEqual(*(v35 + 16), "http://relaxng.org/ns/structure/1.0"))
          {
            *(v6 + 16) = 0;
            Prop = xmlGetProp(a2, "ns");
            *(v6 + 24) = Prop;
            if (!Prop)
            {
              xmlRngPErr(a1, a2, 1057, "nsName has no ns attribute\n", 0, 0);
            }

            if (*(a1 + 64))
            {
              v37 = *(v6 + 24);
              if (v37)
              {
                if (xmlStrEqual(v37, "http://www.w3.org/2000/xmlns"))
                {
                  xmlRngPErr(a1, a2, 1122, "Attribute with namespace '%s' is not allowed\n", *(v6 + 24), 0);
                }
              }
            }

            goto LABEL_35;
          }

          v35 = *(a2 + 72);
        }

        if (v35 && *(a2 + 8) == 1 && xmlStrEqual(*(a2 + 16), "choice") && xmlStrEqual(*(*(a2 + 72) + 16), "http://relaxng.org/ns/structure/1.0"))
        {
          v6 = a3;
          if (*a3 != 17)
          {
            v38 = xmlRelaxNGNewDefine(a1, a2);
            v6 = v38;
            if (!v38)
            {
              return v6;
            }

            *(v38 + 7) = a3;
            *v38 = 17;
          }

          v39 = *(a2 + 24);
          if (!v39)
          {
            v27 = "Element choice is empty\n";
            v28 = a1;
            v29 = a2;
            v30 = 1007;
            v31 = 0;
            goto LABEL_48;
          }

          v40 = 0;
          while (1)
          {
            v41 = xmlRelaxNGParseNameClass(a1, v39, v6);
            if (!v41)
            {
              break;
            }

            if (v40)
            {
              if (v41 == v6)
              {
                break;
              }

              *(v40 + 8) = v41;
            }

LABEL_80:
            v39 = *(v39 + 48);
            v40 = v41;
            if (!v39)
            {
              goto LABEL_49;
            }
          }

          v41 = v40;
          goto LABEL_80;
        }
      }
    }

LABEL_82:
    xmlRngPErr(a1, a2, 1006, "expecting name, anyName, nsName or choice : got %s\n", *(a2 + 16), 0);
    return 0;
  }

  Content = xmlNodeGetContent(a2);
  xmlRelaxNGNormExtSpace(Content);
  if (xmlValidateNCName(Content, 0))
  {
    v16 = *(a2 + 40);
    if (v16)
    {
      v17 = *(v16 + 16);
      v18 = "Element %s name '%s' is not an NCName\n";
      v19 = a1;
      v20 = a2;
      v21 = Content;
    }

    else
    {
      v18 = "name '%s' is not an NCName\n";
      v19 = a1;
      v20 = a2;
      v17 = Content;
      v21 = 0;
    }

    xmlRngPErr(v19, v20, 1019, v18, v17, v21);
  }

  *(v6 + 16) = Content;
  v25 = xmlGetProp(a2, "ns");
  v26 = v25;
  *(v6 + 24) = v25;
  if ((*(a1 + 64) & 1) != 0 && v25 && xmlStrEqual(v25, "http://www.w3.org/2000/xmlns"))
  {
    xmlRngPErr(a1, a2, 1122, "Attribute with namespace '%s' is not allowed\n", v26, 0);
  }

  if ((*(a1 + 64) & 1) == 0 || !v26 || *v26 || !xmlStrEqual(*(v6 + 16), "xmlns"))
  {
    goto LABEL_49;
  }

  v27 = "Attribute with QName 'xmlns' is not allowed\n";
  v28 = a1;
  v29 = a2;
  v30 = 1121;
  v31 = v26;
LABEL_48:
  xmlRngPErr(v28, v29, v30, v27, v31, 0);
LABEL_49:
  if (v6 != a3)
  {
    v32 = *(a3 + 80);
    if (v32)
    {
      do
      {
        v33 = v32;
        v32 = *(v32 + 64);
      }

      while (v32);
      *(v33 + 64) = v6;
    }

    else
    {
      *(a3 + 80) = v6;
    }
  }

  return v6;
}

_OWORD *xmlRelaxNGParseExceptNameClass(uint64_t a1, uint64_t a2, int a3)
{
  if (!*(a2 + 72) || *(a2 + 8) != 1 || !xmlStrEqual(*(a2 + 16), "except") || !xmlStrEqual(*(*(a2 + 72) + 16), "http://relaxng.org/ns/structure/1.0"))
  {
    v14 = "Expecting an except node\n";
    v15 = a1;
    v16 = a2;
    v17 = 1028;
LABEL_21:
    xmlRngPErr(v15, v16, v17, v14, 0, 0);
    return 0;
  }

  if (*(a2 + 48))
  {
    xmlRngPErr(a1, a2, 1029, "exceptNameClass allows only a single except node\n", 0, 0);
  }

  if (!*(a2 + 24))
  {
    v14 = "except has no content\n";
    v15 = a1;
    v16 = a2;
    v17 = 1027;
    goto LABEL_21;
  }

  v6 = xmlRelaxNGNewDefine(a1, a2);
  v7 = v6;
  if (v6)
  {
    *v6 = 2;
    v8 = *(a2 + 24);
    if (v8)
    {
      v9 = 0;
      if (a3)
      {
        v10 = 9;
      }

      else
      {
        v10 = 4;
      }

      do
      {
        v11 = xmlRelaxNGNewDefine(a1, v8);
        if (!v11)
        {
          break;
        }

        v12 = v11;
        *v11 = v10;
        if (xmlRelaxNGParseNameClass(a1, v8, v11))
        {
          v13 = v9 + 4;
          if (!v9)
          {
            v13 = v7 + 3;
          }

          *v13 = v12;
          v9 = v12;
        }

        v8 = *(v8 + 48);
      }

      while (v8);
    }
  }

  return v7;
}

void *xmlRelaxNGParseInterleave(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = xmlRelaxNGNewDefine(a1, a2);
  v5 = v4;
  if (v4)
  {
    *v4 = 19;
    if (*(a1 + 104) || (v6 = xmlHashCreate(10), (*(a1 + 104) = v6) != 0))
    {
      *__str = 0u;
      v14 = 0u;
      v7 = *(a1 + 96);
      *(a1 + 96) = v7 + 1;
      snprintf(__str, 0x20uLL, "interleave%d", v7);
      if (xmlHashAddEntry(*(a1 + 104), __str, v5) < 0)
      {
        xmlRngPErr(a1, a2, 1045, "Failed to add %s to hash table\n", __str, 0);
      }
    }

    else
    {
      xmlRngPErrMemory(a1, "create interleaves\n");
    }

    v8 = *(a2 + 24);
    if (v8)
    {
      v9 = 0;
      while (1)
      {
        if (*(v8 + 72) && *(v8 + 8) == 1 && xmlStrEqual(*(v8 + 16), "element") && xmlStrEqual(*(*(v8 + 72) + 16), "http://relaxng.org/ns/structure/1.0"))
        {
          v10 = xmlRelaxNGParseElement(a1, v8);
          if (v10)
          {
            goto LABEL_16;
          }
        }

        else
        {
          v10 = xmlRelaxNGParsePattern(a1, v8);
          if (v10)
          {
LABEL_16:
            *(v10 + 7) = v5;
            v11 = v9 + 4;
            if (!v9)
            {
              v11 = v5 + 6;
            }

            *v11 = v10;
            v9 = v10;
          }
        }

        v8 = *(v8 + 48);
        if (!v8)
        {
          return v5;
        }
      }
    }

    xmlRngPErr(a1, a2, 1048, "Element interleave is empty\n", 0, 0);
  }

  return v5;
}

_OWORD *xmlRelaxNGProcessExternalRef(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 104);
  if (!v2)
  {
    return 0;
  }

  v3 = a2;
  v5 = xmlRelaxNGNewDefine(a1, a2);
  v6 = v5;
  if (v5)
  {
    *v5 = 12;
    if (*(v2 + 24))
    {
LABEL_4:
      *(v6 + 6) = *(v2 + 24);
      return v6;
    }

    RootElement = xmlDocGetRootElement(*(v2 + 16));
    if (RootElement)
    {
      v8 = RootElement;
      Prop = xmlGetProp(RootElement, "ns");
      v10 = Prop == 0;
      if (!Prop)
      {
        while (1)
        {
          if (*(v3 + 8) != 1)
          {
LABEL_14:
            v10 = 0;
            goto LABEL_15;
          }

          v12 = xmlGetProp(v3, "ns");
          if (v12)
          {
            break;
          }

          v3 = *(v3 + 40);
          if (!v3)
          {
            goto LABEL_14;
          }
        }

        Prop = v12;
        xmlSetProp(v8, "ns", v12);
      }

      free(Prop);
LABEL_15:
      v13 = *(a1 + 64);
      *(a1 + 64) = v13 | 0x80;
      v14 = xmlRelaxNGParseDocument(a1, v8);
      *(v2 + 32) = v14;
      *(a1 + 64) = v13;
      if (v14)
      {
        v15 = *(v14 + 1);
        if (v15)
        {
          *(v2 + 24) = *(v15 + 24);
          v16 = *(v15 + 56);
          if (v16)
          {
            v17 = *(a1 + 48);
            if (v17)
            {
              if (!*(v17 + 56))
              {
                v18 = xmlHashCreate(10);
                *(*(a1 + 48) + 56) = v18;
                if (!v18)
                {
                  xmlRngPErr(a1, 0, 1098, "Could not create references hash\n", 0, 0);
                  if (!v10)
                  {
                    goto LABEL_4;
                  }

                  goto LABEL_24;
                }

                v16 = *(v15 + 56);
              }

              xmlHashScan(v16, xmlRelaxNGParseImportRef, a1);
            }
          }
        }
      }

      if (!v10)
      {
        goto LABEL_4;
      }

LABEL_24:
      xmlUnsetProp(v8, "ns");
      goto LABEL_4;
    }

    xmlRngPErr(a1, v3, 1031, "xmlRelaxNGParse: %s is empty\n", *(a1 + 128), 0);
    return 0;
  }

  return v6;
}

xmlChar *xmlRelaxNGGetDataTypeLibrary(uint64_t a1)
{
  v1 = a1;
  if (!*(a1 + 72) || *(a1 + 8) != 1)
  {
    goto LABEL_11;
  }

  v2 = xmlStrEqual(*(a1 + 16), "data");
  v3 = *(v1 + 72);
  if (v2)
  {
    if (xmlStrEqual(*(v3 + 16), "http://relaxng.org/ns/structure/1.0"))
    {
      goto LABEL_10;
    }

    v3 = *(v1 + 72);
  }

  if (!v3 || *(v1 + 8) != 1 || !xmlStrEqual(*(v1 + 16), "value") || !xmlStrEqual(*(*(v1 + 72) + 16), "http://relaxng.org/ns/structure/1.0"))
  {
    goto LABEL_11;
  }

LABEL_10:
  while (1)
  {
    Prop = xmlGetProp(v1, "datatypeLibrary");
    if (Prop)
    {
      break;
    }

LABEL_11:
    v1 = *(v1 + 40);
    if (!v1 || *(v1 + 8) != 1)
    {
      return 0;
    }
  }

  v5 = Prop;
  if (!*Prop)
  {
    v7 = 0;
    goto LABEL_18;
  }

  v6 = xmlURIEscapeStr(Prop, ":/#?");
  if (v6)
  {
    v7 = v6;
LABEL_18:
    free(v5);
    return v7;
  }

  return v5;
}

xmlError *xmlRelaxNGParseImportRef(void *userdata, uint64_t a2, xmlChar *name)
{
  *(userdata + 49) |= 0x100u;
  result = xmlHashAddEntry(*(*(a2 + 48) + 56), name, userdata);
  if ((result & 0x80000000) != 0)
  {
    result = xmlHashLookup(*(*(a2 + 48) + 56), *(userdata + 2));
    if (result)
    {
      *(userdata + 11) = *&result[1].domain;
      *&result[1].domain = userdata;
    }

    else
    {
      v6 = *(userdata + 2);
      if (v6)
      {
        v7 = "Error refs definitions '%s'\n";
      }

      else
      {
        v7 = "Error refs definitions\n";
      }

      return xmlRngPErr(a2, 0, 1098, v7, v6, 0);
    }
  }

  return result;
}

uint64_t xmlRelaxNGTryUnlink(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    *(a3 + 64) = *(a1 + 64);
  }

  else if (a2)
  {
    if (a2[6] == a1)
    {
      a3 = 0;
      a2[6] = *(a1 + 64);
    }

    else if (a2[9] == a1)
    {
      a3 = 0;
      a2[9] = *(a1 + 64);
    }

    else
    {
      a3 = 0;
      if (a2[10] == a1)
      {
        a2[10] = *(a1 + 64);
      }
    }
  }

  else
  {
    *a1 = -1;
    return a1;
  }

  return a3;
}

uint64_t xmlRelaxNGGenerateAttributes(uint64_t a1, _DWORD *a2)
{
  if (*(a1 + 68))
  {
    return 0xFFFFFFFFLL;
  }

  result = 1;
  if (a2)
  {
    v3 = a2;
    while (1)
    {
      while (1)
      {
        v4 = v3;
        v5 = *v3;
        if (v5 - 10 < 0xA)
        {
          break;
        }

        v7 = v5 > 8;
        v8 = (1 << v5) & 0x1F9;
        if (!v7 && v8 != 0)
        {
          return 0;
        }

LABEL_16:
        if (v4 == a2)
        {
          return 1;
        }

        while (1)
        {
          v3 = *(v4 + 8);
          if (v3)
          {
            break;
          }

          v4 = *(v4 + 7);
          if (v4)
          {
            v10 = v4 == a2;
          }

          else
          {
            v10 = 1;
          }

          if (v10)
          {
            return 1;
          }
        }
      }

      v3 = *(v4 + 6);
      if (!v3)
      {
        goto LABEL_16;
      }

      v6 = *(v4 + 6);
      do
      {
        *(v6 + 56) = v4;
        v6 = *(v6 + 64);
      }

      while (v6);
    }
  }

  return result;
}

void xmlRelaxNGCheckGroupAttrs(uint64_t a1, uint64_t a2)
{
  v2 = *a2 == 18 || *a2 == 4;
  if (v2 && (*(a2 + 98) & 0x20) == 0 && !*(a1 + 68))
  {
    v5 = *(a2 + 72);
    if (v5)
    {
      v6 = 0;
      do
      {
        ++v6;
        v5 = *(v5 + 64);
      }

      while (v5);
    }

    else
    {
      v6 = 0;
    }

    for (i = *(a2 + 48); i; i = *(i + 64))
    {
      ++v6;
    }

    v8 = malloc_type_malloc(8 * v6, 0x80040B8603338uLL);
    if (v8)
    {
      v9 = v8;
      v10 = v6;
      v11 = *(a2 + 72);
      if (v11)
      {
        v12 = 0;
        do
        {
          v9[v12++] = xmlRelaxNGGetElements(a1, v11, 1);
          v11 = *(v11 + 64);
        }

        while (v11);
        v13 = v12;
      }

      else
      {
        v13 = 0;
      }

      v14 = *(a2 + 48);
      if (v14)
      {
        v15 = &v9[v13];
        do
        {
          *v15++ = xmlRelaxNGGetElements(a1, v14, 1);
          v14 = *(v14 + 64);
        }

        while (v14);
      }

      if (v10)
      {
        for (j = 0; j != v10; ++j)
        {
          if (v9[j])
          {
            v17 = j == 0;
          }

          else
          {
            v17 = 1;
          }

          if (!v17)
          {
            v18 = 0;
            do
            {
              v19 = v9[v18];
              if (v19 && !xmlRelaxNGCompareElemDefLists(v9[j], v19))
              {
                xmlRngPErr(a1, *(a2 + 8), 1040, "Attributes conflicts in group\n", 0, 0);
              }

              ++v18;
            }

            while (j != v18);
          }
        }

        v20 = v9;
        do
        {
          if (*v20)
          {
            free(*v20);
          }

          ++v20;
          --v10;
        }

        while (v10);
      }

      free(v9);
      *(a2 + 98) |= 0x20u;
    }

    else
    {

      xmlRngPErrMemory(a1, "building group\n");
    }
  }
}

void *xmlRelaxNGGetElements(uint64_t a1, _DWORD *a2, int a3)
{
  if (*(a1 + 68))
  {
    v3 = 1;
  }

  else
  {
    v3 = a2 == 0;
  }

  if (v3)
  {
    return 0;
  }

  v7 = 0;
  LODWORD(v8) = 0;
  v9 = 0;
  v10 = a2;
  while (1)
  {
    v11 = v10;
    v12 = *v10;
    if (a3 == 2)
    {
      break;
    }

    if (a3 == 1)
    {
      if (v12 == 9)
      {
        goto LABEL_22;
      }
    }

    else if (!a3 && v12 - 3 < 2)
    {
      goto LABEL_22;
    }

LABEL_13:
    if (v12 - 10 <= 9 && (v10 = *(v11 + 6)) != 0)
    {
      v13 = *(v11 + 6);
      do
      {
        *(v13 + 56) = v11;
        v13 = *(v13 + 64);
      }

      while (v13);
    }

    else
    {
LABEL_29:
      if (v11 == a2)
      {
        return v9;
      }

      while (1)
      {
        v10 = *(v11 + 8);
        if (v10)
        {
          break;
        }

        v11 = *(v11 + 7);
        if (v11)
        {
          v16 = v11 == a2;
        }

        else
        {
          v16 = 1;
        }

        if (v16)
        {
          return v9;
        }
      }
    }
  }

  if (v12 > 8 || ((1 << v12) & 0x1B8) == 0)
  {
    goto LABEL_13;
  }

LABEL_22:
  if (!v9)
  {
    v9 = malloc_type_malloc(0x58uLL, 0x2004093837F09uLL);
    if (!v9)
    {
      xmlRngPErrMemory(a1, "getting element list\n");
      return v9;
    }

    v7 = 10;
    goto LABEL_28;
  }

  if (v7 > v8)
  {
LABEL_28:
    v9[v8] = v11;
    v8 = v8 + 1;
    v9[v8] = 0;
    goto LABEL_29;
  }

  v15 = malloc_type_realloc(v9, 8 * ((2 * v7) | 1), 0x2004093837F09uLL);
  if (v15)
  {
    v7 *= 2;
    v9 = v15;
    goto LABEL_28;
  }

  xmlRngPErrMemory(a1, "getting element list\n");
  free(v9);
  return 0;
}

uint64_t xmlRelaxNGCompareElemDefLists(void *a1, uint64_t *a2)
{
  result = 1;
  if (a1)
  {
    if (a2)
    {
      if (*a1)
      {
        v5 = *a2;
        if (*a2)
        {
          while (1)
          {
            v6 = a2 + 1;
            if (v5)
            {
              break;
            }

LABEL_8:
            v8 = a1[1];
            ++a1;
            if (!v8)
            {
              return 1;
            }

            v5 = *a2;
          }

          while (1)
          {
            result = xmlRelaxNGCompareNameClasses(*a1, v5);
            if (!result)
            {
              break;
            }

            v7 = *v6++;
            v5 = v7;
            if (!v7)
            {
              goto LABEL_8;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t xmlRelaxNGCompareNameClasses(void *a1, void *a2)
{
  v34 = 0;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v27 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  memset(v14, 0, sizeof(v14));
  DWORD2(v15) = 9;
  v4 = *a1;
  if (*a1 <= 3)
  {
    if (v4 != 2)
    {
      if (v4 == 3)
      {
        return *a2 != 3;
      }

      goto LABEL_9;
    }

    if (xmlRelaxNGCompareNameClasses(a1[6], a2))
    {
      return 0;
    }

    goto LABEL_21;
  }

  if (v4 != 9 && v4 != 4)
  {
LABEL_9:
    v6 = *__xmlGenericError();
    v7 = *__xmlGenericErrorContext();
    v6(v7, "Unimplemented block at %s:%d\n", "/Library/Caches/com.apple.xbs/Sources/libxml2/libxml2/relaxng.c", 3855);
    return 0;
  }

  if (*a2 == 3)
  {
    return 1;
  }

  v8 = "\x01";
  v9 = a1[3];
  if (a1[2])
  {
    v8 = a1[2];
  }

  *&v28 = v8;
  if (v9 && *v9)
  {
    *(&v31 + 1) = &v24;
    *&v25 = v9;
  }

  else
  {
    *(&v31 + 1) = 0;
  }

  if (!xmlRelaxNGElementMatch(v14, a2, &v27) || (result = a1[10]) != 0 && (result = xmlRelaxNGCompareNameClasses(result, a2), result))
  {
LABEL_21:
    if (*a2 != 9 && *a2 != 4)
    {
      v12 = *__xmlGenericError();
      v13 = *__xmlGenericErrorContext();
      v12(v13, "Unimplemented block at %s:%d\n", "/Library/Caches/com.apple.xbs/Sources/libxml2/libxml2/relaxng.c", 3886);
      return 0;
    }

    v11 = a2[2];
    v10 = a2[3];
    if (!v11)
    {
      v11 = "\x01";
    }

    *&v28 = v11;
    *(&v31 + 1) = &v24;
    if (v10)
    {
      if (*v10)
      {
        *&v25 = v10;
      }

      else
      {
        *(&v31 + 1) = 0;
      }
    }

    else
    {
      *&v25 = "\x01";
    }

    if (xmlRelaxNGElementMatch(v14, a1, &v27))
    {
      result = a2[10];
      if (result)
      {
        return xmlRelaxNGCompareNameClasses(result, a1);
      }

      return result;
    }

    return 1;
  }

  return result;
}

uint64_t xmlRelaxNGElementMatch(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2[2];
  if (v6 && !xmlStrEqual(*(a3 + 16), v6))
  {
    v9 = a2[2];
    v10 = *(a3 + 16);
    v11 = a1;
    v12 = 13;
    goto LABEL_23;
  }

  v7 = a2[3];
  if (!v7)
  {
    if (!*(a3 + 72))
    {
      goto LABEL_16;
    }

    v9 = a2[2];
    if (!v9)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v8 = *(a3 + 72);
  if (!*v7)
  {
    if (!v8)
    {
      goto LABEL_16;
    }

    v9 = a2[2];
    if (!v9)
    {
      v9 = *(a3 + 16);
    }

LABEL_15:
    v11 = a1;
    v12 = 19;
LABEL_22:
    v10 = 0;
    goto LABEL_23;
  }

  if (!v8)
  {
    v9 = *(a3 + 16);
    v11 = a1;
    v12 = 15;
    goto LABEL_22;
  }

  if (!xmlStrEqual(*(v8 + 16), v7))
  {
    v9 = *(a3 + 16);
    v10 = a2[3];
    v11 = a1;
    v12 = 17;
LABEL_23:
    xmlRelaxNGAddValidError(v11, v12, v9, v10, 0);
    return 0;
  }

LABEL_16:
  v13 = a2[10];
  if (!v13)
  {
    return 1;
  }

  if (*v13 == 17)
  {
    if (a1)
    {
      v14 = *(a1 + 56);
      *(a1 + 56) = v14 | 1;
    }

    else
    {
      v14 = 0;
    }

    v20 = *(v13 + 80);
    if (!v20)
    {
LABEL_41:
      if (!a1)
      {
        return 0;
      }

      if (*(a1 + 80) >= 1)
      {
        xmlRelaxNGPopErrors(a1, 0);
      }

      goto LABEL_48;
    }

    while (1)
    {
      v21 = xmlRelaxNGElementMatch(a1, v20, a3);
      if (v21 == 1)
      {
        goto LABEL_33;
      }

      if (v21 < 0)
      {
LABEL_44:
        if (a1)
        {
          *(a1 + 56) = v14;
        }

        return 0xFFFFFFFFLL;
      }

      v20 = v20[8];
      if (!v20)
      {
        goto LABEL_41;
      }
    }
  }

  if (*v13 == 2)
  {
    if (a1)
    {
      v14 = *(a1 + 56);
      *(a1 + 56) = v14 | 1;
    }

    else
    {
      v14 = 0;
    }

    v18 = *(v13 + 48);
    if (v18)
    {
      while (1)
      {
        v19 = xmlRelaxNGElementMatch(a1, v18, a3);
        if (v19 == 1)
        {
          break;
        }

        if (v19 < 0)
        {
          goto LABEL_44;
        }

        v18 = v18[8];
        if (!v18)
        {
          goto LABEL_33;
        }
      }

      if (!a1)
      {
        return 0;
      }

LABEL_48:
      result = 0;
      *(a1 + 56) = v14;
      return result;
    }

LABEL_33:
    if (a1)
    {
      *(a1 + 56) = v14;
    }

    return 1;
  }

  v16 = *__xmlGenericError();
  v17 = __xmlGenericErrorContext();
  v16(*v17, "Unimplemented block at %s:%d\n", "/Library/Caches/com.apple.xbs/Sources/libxml2/libxml2/relaxng.c", 9768);
  return 0xFFFFFFFFLL;
}

void xmlRelaxNGDumpValidError(uint64_t a1)
{
  if (*(a1 + 80) >= 1)
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = *(a1 + 88) + 40 * v3;
      if (v4 <= 4)
      {
        if (v3)
        {
          v6 = 0;
          while (1)
          {
            v7 = *(a1 + 88);
            if (*v5 == *(v7 + v6) && *(v5 + 8) == *(v7 + v6 + 8) && xmlStrEqual(*(v5 + 24), *(v7 + v6 + 24)) && xmlStrEqual(*(v5 + 32), *(v7 + v6 + 32)))
            {
              break;
            }

            v6 += 40;
            if (v2 == v6)
            {
              goto LABEL_11;
            }
          }
        }

        else
        {
LABEL_11:
          xmlRelaxNGShowValidError(a1, *v5, *(v5 + 8), *(v5 + 16), *(v5 + 24), *(v5 + 32));
          ++v4;
        }
      }

      if (*(v5 + 4))
      {
        v8 = *(v5 + 24);
        if (v8)
        {
          free(v8);
        }

        *(v5 + 24) = 0;
        v9 = *(v5 + 32);
        if (v9)
        {
          free(v9);
        }

        *(v5 + 32) = 0;
        *(v5 + 4) = 0;
      }

      ++v3;
      v2 += 40;
    }

    while (v3 < *(a1 + 80));
  }

  *(a1 + 80) = 0;
}

void xmlRelaxNGPopErrors(uint64_t a1, int a2)
{
  v4 = *(a1 + 80);
  if (v4 > a2)
  {
    v5 = a2;
    v6 = 40 * a2;
    do
    {
      v7 = *(a1 + 88);
      v8 = v7 + v6;
      if (*(v7 + v6 + 4))
      {
        v9 = *(v8 + 24);
        if (v9)
        {
          free(v9);
        }

        *(v8 + 24) = 0;
        v10 = v7 + v6;
        v11 = *(v10 + 32);
        if (v11)
        {
          free(v11);
        }

        *(v10 + 32) = 0;
        *(v8 + 4) = 0;
        v4 = *(a1 + 80);
      }

      ++v5;
      v6 += 40;
    }

    while (v5 < v4);
  }

  *(a1 + 80) = a2;
  if (a2 <= 0)
  {
    *(a1 + 72) = 0;
  }
}

void xmlRelaxNGShowValidError(uint64_t a1, int a2, uint64_t a3, uint64_t a4, const xmlChar *a5, xmlChar *a6)
{
  v22 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 56) & 8) == 0)
  {
    bzero(v21, 0x3E6uLL);
    __str = 0;
    switch(a2)
    {
      case 0:
        return;
      case 1:
        v12 = "out of memory\n";
        goto LABEL_41;
      case 2:
        snprintf(&__str, 0x3E8uLL, "failed to validate type %s\n");
        goto LABEL_37;
      case 3:
        snprintf(&__str, 0x3E8uLL, "Type %s doesn't allow value '%s'\n");
        goto LABEL_37;
      case 4:
        snprintf(&__str, 0x3E8uLL, "ID %s redefined\n");
        goto LABEL_37;
      case 5:
        snprintf(&__str, 0x3E8uLL, "failed to compare type %s\n");
        goto LABEL_37;
      case 6:
        v12 = "Internal error: no state\n";
        goto LABEL_41;
      case 7:
        v12 = "Internal error: no define\n";
        goto LABEL_41;
      case 8:
        snprintf(&__str, 0x3E8uLL, "Extra data in list: %s\n");
        goto LABEL_37;
      case 10:
        v12 = "Internal: interleave block has no data\n";
        goto LABEL_41;
      case 11:
        v12 = "Invalid sequence in interleave\n";
        goto LABEL_41;
      case 12:
        snprintf(&__str, 0x3E8uLL, "Extra element %s in interleave\n");
        goto LABEL_37;
      case 13:
        snprintf(&__str, 0x3E8uLL, "Expecting element %s, got %s\n");
        goto LABEL_37;
      case 15:
        snprintf(&__str, 0x3E8uLL, "Expecting a namespace for element %s\n");
        goto LABEL_37;
      case 17:
        snprintf(&__str, 0x3E8uLL, "Element %s has wrong namespace: expecting %s\n");
        goto LABEL_37;
      case 19:
        snprintf(&__str, 0x3E8uLL, "Expecting no namespace for element %s\n");
        goto LABEL_37;
      case 21:
        snprintf(&__str, 0x3E8uLL, "Expecting element %s to be empty\n");
        goto LABEL_37;
      case 22:
        snprintf(&__str, 0x3E8uLL, "Expecting an element %s, got nothing\n");
        goto LABEL_37;
      case 23:
        v12 = "Expecting an element got text\n";
        goto LABEL_41;
      case 24:
        snprintf(&__str, 0x3E8uLL, "Element %s failed to validate attributes\n");
        goto LABEL_37;
      case 25:
        snprintf(&__str, 0x3E8uLL, "Element %s failed to validate content\n");
        goto LABEL_37;
      case 26:
        snprintf(&__str, 0x3E8uLL, "Element %s has extra content: %s\n");
        goto LABEL_37;
      case 27:
        snprintf(&__str, 0x3E8uLL, "Invalid attribute %s for element %s\n");
        goto LABEL_37;
      case 28:
        snprintf(&__str, 0x3E8uLL, "Datatype element %s has child elements\n");
        goto LABEL_37;
      case 29:
        snprintf(&__str, 0x3E8uLL, "Value element %s has child elements\n");
        goto LABEL_37;
      case 30:
        snprintf(&__str, 0x3E8uLL, "List element %s has child elements\n");
        goto LABEL_37;
      case 31:
        snprintf(&__str, 0x3E8uLL, "Error validating datatype %s\n");
        goto LABEL_37;
      case 32:
        snprintf(&__str, 0x3E8uLL, "Error validating value %s\n");
        goto LABEL_37;
      case 33:
        v12 = "Error validating list\n";
        goto LABEL_41;
      case 34:
        v12 = "No top grammar defined\n";
        goto LABEL_41;
      case 35:
        v12 = "Extra data in the document\n";
        goto LABEL_41;
      case 36:
        snprintf(&__str, 0x3E8uLL, "Datatype element %s contains no data\n");
        goto LABEL_37;
      case 37:
        snprintf(&__str, 0x3E8uLL, "Internal error: %s\n");
        goto LABEL_37;
      case 38:
        snprintf(&__str, 0x3E8uLL, "Did not expect element %s there\n");
        goto LABEL_37;
      case 39:
        snprintf(&__str, 0x3E8uLL, "Did not expect text in element %s content\n");
LABEL_37:
        if (!__str)
        {
          snprintf(&__str, 0x3E8uLL, "Unknown error code %d\n", a2);
        }

        v21[998] = 0;
        v19 = xmlCharStrdup(&__str);
        v13 = xmlEscapeFormatString(&v19);
        break;
      default:
        v12 = "Unknown error !\n";
LABEL_41:
        v13 = xmlCharStrdup(v12);
        break;
    }

    v14 = v13;
    if (v13)
    {
      if (!*(a1 + 68))
      {
        *(a1 + 68) = a2;
      }

      if (a4)
      {
        v15 = a4;
      }

      else
      {
        v15 = a3;
      }

      v16 = *(a1 + 24);
      if (v16)
      {
        v17 = 0;
      }

      else
      {
        v17 = *(a1 + 8);
      }

      v18 = *a1;
      ++*(a1 + 32);
      __xmlRaiseError(v16, v17, v18, 0, v15, 0x13u, a2, 2, 0, 0, a5, a6, 0, 0, 0, v14, a5);
      free(v14);
    }
  }
}

uint64_t xmlRelaxNGIsNullable(uint64_t a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = *(a1 + 98);
  if (v2)
  {
    return 1;
  }

  if ((v2 & 2) != 0)
  {
    return 0;
  }

  v3 = *a1;
  result = 0xFFFFFFFFLL;
  if (v3 > 9)
  {
    if (v3 > 0x14)
    {
      return result;
    }

    if (((1 << v3) & 0x13C00) != 0)
    {
LABEL_13:
      result = xmlRelaxNGIsNullable(*(a1 + 48));
      goto LABEL_14;
    }

    if (((1 << v3) & 0x1C0000) == 0)
    {
      if (v3 != 17)
      {
        return result;
      }

      v7 = *(a1 + 48);
      if (!v7)
      {
        goto LABEL_31;
      }

      while (1)
      {
        result = xmlRelaxNGIsNullable(v7);
        if (result)
        {
          goto LABEL_14;
        }

        v7 = *(v7 + 64);
        if (!v7)
        {
          goto LABEL_31;
        }
      }
    }

    v6 = *(a1 + 48);
    if (v6)
    {
      while (1)
      {
        result = xmlRelaxNGIsNullable(v6);
        if (result != 1)
        {
          break;
        }

        v6 = *(v6 + 64);
        if (!v6)
        {
          return result;
        }
      }

LABEL_14:
      if (result)
      {
        if (result != 1)
        {
          return result;
        }

        v2 = *(a1 + 98);
        goto LABEL_20;
      }

LABEL_31:
      result = 0;
      v5 = *(a1 + 98) | 2;
      goto LABEL_32;
    }

    return 1;
  }

  if (v3 <= 2)
  {
    if ((v3 - 1) < 2)
    {
      goto LABEL_31;
    }

    if (v3 != -1)
    {
      if (v3)
      {
        return result;
      }

      goto LABEL_20;
    }

    goto LABEL_13;
  }

  if ((v3 - 4) < 6)
  {
    goto LABEL_31;
  }

  if (v3 == 3)
  {
LABEL_20:
    v5 = v2 | 1;
    result = 1;
LABEL_32:
    *(a1 + 98) = v5;
  }

  return result;
}

uint64_t xmlRelaxNGIsCompilable(uint64_t a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = *a1;
  v3 = *(a1 + 98);
  if (*a1 == 4)
  {
    if ((v3 & 0xC0) == 0)
    {
      v6 = *(a1 + 48);
      if (v6)
      {
        while (1)
        {
          v7 = xmlRelaxNGIsCompilable(v6);
          if (v7 != 1)
          {
            break;
          }

          v6 = *(v6 + 64);
          if (!v6)
          {
            if ((*(a1 + 98) & 0x80) != 0)
            {
              v8 = 128;
            }

            else
            {
              v8 = 64;
            }

            goto LABEL_28;
          }
        }

        if (v7)
        {
          goto LABEL_4;
        }

        v8 = *(a1 + 98) & 0xFF3F | 0x80;
LABEL_28:
        *(a1 + 98) = v8;
      }
    }

LABEL_4:
    if (!*(a1 + 80))
    {
      return *(a1 + 16) != 0;
    }

    return 0;
  }

  if ((v3 & 0x40) != 0)
  {
    return 1;
  }

  if ((v3 & 0x80) != 0)
  {
    return 0;
  }

  result = 0xFFFFFFFFLL;
  if (v2 <= 2)
  {
    if ((v2 - 1) < 2)
    {
      goto LABEL_43;
    }

    if (v2 != -1)
    {
      if (v2)
      {
        return result;
      }

LABEL_45:
      *(a1 + 98) = v3 | 0x40;
      return 1;
    }

    result = xmlRelaxNGIsCompilable(*(a1 + 48));
LABEL_40:
    if (result != 1)
    {
      if (result)
      {
        return result;
      }

      v3 = *(a1 + 98);
      goto LABEL_43;
    }

LABEL_44:
    v3 = *(a1 + 98);
    goto LABEL_45;
  }

  if (v2 > 0x14)
  {
    goto LABEL_37;
  }

  if (((1 << v2) & 0x17C400) != 0)
  {
    v9 = *(a1 + 48);
    if (!v9)
    {
      return result;
    }

    while (1)
    {
      result = xmlRelaxNGIsCompilable(v9);
      if (result != 1)
      {
        goto LABEL_40;
      }

      v9 = *(v9 + 64);
      if (!v9)
      {
        goto LABEL_44;
      }
    }
  }

  if (((1 << v2) & 0x803E0) != 0)
  {
LABEL_43:
    result = 0;
    *(a1 + 98) = v3 | 0x80;
    return result;
  }

  if (((1 << v2) & 0x3800) != 0)
  {
    if (*(a1 + 96) == -20)
    {
      return 1;
    }

    *(a1 + 96) = -20;
    v5 = *(a1 + 48);
    if (!v5)
    {
      return result;
    }

    while (1)
    {
      result = xmlRelaxNGIsCompilable(v5);
      if (result != 1)
      {
        goto LABEL_40;
      }

      v5 = *(v5 + 64);
      if (!v5)
      {
        goto LABEL_44;
      }
    }
  }

LABEL_37:
  if (v2 == 3)
  {
    goto LABEL_45;
  }

  return result;
}

uint64_t xmlRelaxNGCompile(uint64_t a1, int *a2)
{
  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = a2;
  while (2)
  {
    switch(*v2)
    {
      case -1:
        v2 = *(v2 + 6);
        if (!v2)
        {
          return 0xFFFFFFFFLL;
        }

        continue;
      case 0:
        v13 = *(a1 + 232);
        v14 = *(a1 + 240);
        goto LABEL_52;
      case 1:
      case 2:
      case 5:
      case 6:
      case 7:
      case 8:
      case 9:
      case 19:
        fprintf(*MEMORY[0x1E69E9848], "RNG internal error trying to compile %s\n", off_1E82C5DB8[*v2 - 1]);
        return 0;
      case 3:
        v18 = xmlAutomataNewEpsilon(*(a1 + 232), *(a1 + 240), 0);
        *(a1 + 240) = v18;
        xmlRelaxNGCompile(a1, *(v2 + 6));
        xmlAutomataNewTransition(*(a1 + 232), *(a1 + 240), *(a1 + 240), "#text", 0);
        goto LABEL_46;
      case 4:
        v23 = *(a1 + 232);
        if (v23)
        {
          v24 = *(v2 + 2);
          if (v24)
          {
            *(a1 + 240) = xmlAutomataNewTransition2(v23, *(a1 + 240), 0, v24, *(v2 + 3), v2);
          }
        }

        if ((*(v2 + 49) & 0x40) == 0)
        {
          v25 = *(a1 + 232);
LABEL_48:
          result = xmlRelaxNGTryCompile(a1, v2);
          *(a1 + 232) = v25;
          return result;
        }

        v25 = *(a1 + 232);
        if (*(v2 + 48) == -25)
        {
          goto LABEL_48;
        }

        v29 = *(a1 + 240);
        *(v2 + 48) = -25;
        v30 = *(v2 + 6);
        v31 = xmlNewAutomata();
        *(a1 + 232) = v31;
        if (!v31)
        {
          return 0xFFFFFFFFLL;
        }

        xmlAutomataSetFlags(v31, 1);
        InitState = xmlAutomataGetInitState(*(a1 + 232));
        *(a1 + 240) = InitState;
        if (v30)
        {
          do
          {
            xmlRelaxNGCompile(a1, v30);
            v30 = *(v30 + 64);
          }

          while (v30);
          v33 = *(a1 + 240);
        }

        else
        {
          v33 = InitState;
        }

        xmlAutomataSetFinalState(*(a1 + 232), v33);
        v34 = xmlAutomataCompile(*(a1 + 232));
        *(v2 + 13) = v34;
        if (!xmlRegexpIsDeterminist(v34))
        {
          xmlRegFreeRegexp(*(v2 + 13));
          *(v2 + 13) = 0;
        }

        xmlFreeAutomata(*(a1 + 232));
        result = 0;
        *(a1 + 232) = v25;
        *(a1 + 240) = v29;
        return result;
      case 10:
      case 11:
      case 12:
      case 13:
      case 18:
        v5 = *(v2 + 6);
        if (!v5)
        {
          return 0;
        }

        while (1)
        {
          result = xmlRelaxNGCompile(a1, v5);
          if (result)
          {
            break;
          }

          v5 = *(v5 + 64);
          if (!v5)
          {
            return 0;
          }
        }

        return result;
      case 14:
        v15 = *(a1 + 240);
        v16 = *(v2 + 6);
        v17 = v15;
        if (v16)
        {
          do
          {
            xmlRelaxNGCompile(a1, v16);
            v16 = *(v16 + 64);
          }

          while (v16);
          v17 = *(a1 + 240);
        }

        xmlAutomataNewEpsilon(*(a1 + 232), v15, v17);
        return 0;
      case 15:
        v18 = xmlAutomataNewEpsilon(*(a1 + 232), *(a1 + 240), 0);
        *(a1 + 240) = v18;
        v26 = *(v2 + 6);
        v27 = v18;
        if (v26)
        {
          do
          {
            xmlRelaxNGCompile(a1, v26);
            v26 = *(v26 + 64);
          }

          while (v26);
          v27 = *(a1 + 240);
        }

        xmlAutomataNewEpsilon(*(a1 + 232), v27, v18);
LABEL_46:
        v13 = *(a1 + 232);
        v14 = v18;
        goto LABEL_52;
      case 16:
        v6 = *(v2 + 6);
        if (!v6)
        {
          v8 = *(a1 + 240);
LABEL_50:
          v9 = v8;
          goto LABEL_51;
        }

        do
        {
          xmlRelaxNGCompile(a1, v6);
          v6 = *(v6 + 64);
        }

        while (v6);
        v7 = *(v2 + 6);
        v8 = *(a1 + 240);
        if (!v7)
        {
          goto LABEL_50;
        }

        do
        {
          xmlRelaxNGCompile(a1, v7);
          v7 = *(v7 + 64);
        }

        while (v7);
        v9 = *(a1 + 240);
LABEL_51:
        xmlAutomataNewEpsilon(*(a1 + 232), v9, v8);
        v13 = *(a1 + 232);
        v14 = v8;
LABEL_52:
        v28 = xmlAutomataNewEpsilon(v13, v14, 0);
        result = 0;
        *(a1 + 240) = v28;
        return result;
      case 17:
        v10 = *(v2 + 6);
        if (v10)
        {
          v11 = 0;
          v12 = *(a1 + 240);
          do
          {
            *(a1 + 240) = v12;
            result = xmlRelaxNGCompile(a1, v10);
            if (result)
            {
              goto LABEL_55;
            }

            if (v11)
            {
              xmlAutomataNewEpsilon(*(a1 + 232), *(a1 + 240), v11);
            }

            else
            {
              v11 = *(a1 + 240);
            }

            v10 = *(v10 + 64);
          }

          while (v10);
        }

        else
        {
          v11 = 0;
        }

        result = 0;
LABEL_55:
        *(a1 + 240) = v11;
        return result;
      case 20:
        if (xmlRelaxNGIsCompilable(v2) != 1 || *(v2 + 48) == -25)
        {
          return 0;
        }

        v35 = *(a1 + 232);
        *(v2 + 48) = -25;
        v19 = *(v2 + 6);
        v20 = xmlNewAutomata();
        *(a1 + 232) = v20;
        if (!v20)
        {
          return 0xFFFFFFFFLL;
        }

        xmlAutomataSetFlags(v20, 1);
        v21 = xmlAutomataGetInitState(*(a1 + 232));
        *(a1 + 240) = v21;
        if (v19)
        {
          do
          {
            xmlRelaxNGCompile(a1, v19);
            v19 = *(v19 + 64);
          }

          while (v19);
          v22 = *(a1 + 240);
        }

        else
        {
          v22 = v21;
        }

        xmlAutomataSetFinalState(*(a1 + 232), v22);
        if (xmlAutomataIsDeterminist(*(a1 + 232)))
        {
          *(v2 + 13) = xmlAutomataCompile(*(a1 + 232));
        }

        xmlFreeAutomata(*(a1 + 232));
        result = 0;
        *(a1 + 232) = v35;
        return result;
      default:
        return 0;
    }
  }
}

FILE *xmlRelaxNGDumpDefine(FILE *result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    switch(*a2)
    {
      case 0xFFFFFFFF:
        for (i = *(a2 + 48); i; i = *(i + 64))
        {
          result = xmlRelaxNGDumpDefine(v3, i);
        }

        return result;
      case 0:
        v9 = "<empty/>\n";
        goto LABEL_45;
      case 1:
        v9 = "<notAllowed/>\n";
        goto LABEL_49;
      case 2:
      case 6:
      case 0x14:
        v4 = *__xmlGenericError();
        v5 = *__xmlGenericErrorContext();
        return (v4)(v5, "Unimplemented block at %s:%d\n", "/Library/Caches/com.apple.xbs/Sources/libxml2/libxml2/relaxng.c", 7849);
      case 3:
        v9 = "<text/>\n";
        goto LABEL_63;
      case 4:
        fwrite("<element>\n", 0xAuLL, 1uLL, result);
        if (*(a2 + 16))
        {
          fwrite("<name", 5uLL, 1uLL, v3);
          if (*(a2 + 24))
          {
            fprintf(v3, " ns=%s", *(a2 + 24));
          }

          fprintf(v3, ">%s</name>\n", *(a2 + 16));
        }

        for (j = *(a2 + 72); j; j = *(j + 64))
        {
          xmlRelaxNGDumpDefine(v3, j);
        }

        for (k = *(a2 + 48); k; k = *(k + 64))
        {
          xmlRelaxNGDumpDefine(v3, k);
        }

        v9 = "</element>\n";
        v10 = 11;
        goto LABEL_68;
      case 5:
      case 7:
        v6 = *__xmlGenericError();
        v7 = *__xmlGenericErrorContext();
        return (v6)(v7, "Unimplemented block at %s:%d\n", "/Library/Caches/com.apple.xbs/Sources/libxml2/libxml2/relaxng.c", 7845);
      case 8:
        fwrite("<list>\n", 7uLL, 1uLL, result);
        for (m = *(a2 + 48); m; m = *(m + 64))
        {
          xmlRelaxNGDumpDefine(v3, m);
        }

        v9 = "</list>\n";
LABEL_63:
        v10 = 8;
        goto LABEL_68;
      case 9:
        fwrite("<attribute>\n", 0xCuLL, 1uLL, result);
        for (n = *(a2 + 48); n; n = *(n + 64))
        {
          xmlRelaxNGDumpDefine(v3, n);
        }

        v9 = "</attribute>\n";
        goto LABEL_58;
      case 0xA:
        fwrite("<define", 7uLL, 1uLL, result);
        if (*(a2 + 16))
        {
          fprintf(v3, " name=%s", *(a2 + 16));
        }

        fwrite(">\n", 2uLL, 1uLL, v3);
        for (ii = *(a2 + 48); ii; ii = *(ii + 64))
        {
          xmlRelaxNGDumpDefine(v3, ii);
        }

        v9 = "</define>\n";
        goto LABEL_67;
      case 0xB:
        fwrite("<ref", 4uLL, 1uLL, result);
        if (*(a2 + 16))
        {
          fprintf(v3, " name=%s", *(a2 + 16));
        }

        fwrite(">\n", 2uLL, 1uLL, v3);
        for (jj = *(a2 + 48); jj; jj = *(jj + 64))
        {
          xmlRelaxNGDumpDefine(v3, jj);
        }

        v9 = "</ref>\n";
        v10 = 7;
        goto LABEL_68;
      case 0xC:
        fwrite("<externalRef>", 0xDuLL, 1uLL, result);
        for (kk = *(a2 + 48); kk; kk = *(kk + 64))
        {
          xmlRelaxNGDumpDefine(v3, kk);
        }

        v9 = "</externalRef>\n";
        v10 = 15;
        goto LABEL_68;
      case 0xD:
        fwrite("<parentRef", 0xAuLL, 1uLL, result);
        if (*(a2 + 16))
        {
          fprintf(v3, " name=%s", *(a2 + 16));
        }

        fwrite(">\n", 2uLL, 1uLL, v3);
        for (mm = *(a2 + 48); mm; mm = *(mm + 64))
        {
          xmlRelaxNGDumpDefine(v3, mm);
        }

        v9 = "</parentRef>\n";
        goto LABEL_58;
      case 0xE:
        fwrite("<optional>\n", 0xBuLL, 1uLL, result);
        for (nn = *(a2 + 48); nn; nn = *(nn + 64))
        {
          xmlRelaxNGDumpDefine(v3, nn);
        }

        v9 = "</optional>\n";
        v10 = 12;
        goto LABEL_68;
      case 0xF:
        fwrite("<zeroOrMore>\n", 0xDuLL, 1uLL, result);
        for (i1 = *(a2 + 48); i1; i1 = *(i1 + 64))
        {
          xmlRelaxNGDumpDefine(v3, i1);
        }

        v9 = "</zeroOrMore>\n";
        goto LABEL_49;
      case 0x10:
        fwrite("<oneOrMore>\n", 0xCuLL, 1uLL, result);
        for (i2 = *(a2 + 48); i2; i2 = *(i2 + 64))
        {
          xmlRelaxNGDumpDefine(v3, i2);
        }

        v9 = "</oneOrMore>\n";
LABEL_58:
        v10 = 13;
        goto LABEL_68;
      case 0x11:
        fwrite("<choice>\n", 9uLL, 1uLL, result);
        for (i3 = *(a2 + 48); i3; i3 = *(i3 + 64))
        {
          xmlRelaxNGDumpDefine(v3, i3);
        }

        v9 = "</choice>\n";
LABEL_67:
        v10 = 10;
        goto LABEL_68;
      case 0x12:
        fwrite("<group>\n", 8uLL, 1uLL, result);
        for (i4 = *(a2 + 48); i4; i4 = *(i4 + 64))
        {
          xmlRelaxNGDumpDefine(v3, i4);
        }

        v9 = "</group>\n";
LABEL_45:
        v10 = 9;
        goto LABEL_68;
      case 0x13:
        fwrite("<interleave>\n", 0xDuLL, 1uLL, result);
        for (i5 = *(a2 + 48); i5; i5 = *(i5 + 64))
        {
          xmlRelaxNGDumpDefine(v3, i5);
        }

        v9 = "</interleave>\n";
LABEL_49:
        v10 = 14;
LABEL_68:

        result = fwrite(v9, v10, 1uLL, v3);
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t xmlRelaxNGValidateAttributeList(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a2;
  v4 = 0;
  v5 = 0;
  v6 = a2;
  do
  {
    if (*v6 == 9)
    {
      if (xmlRelaxNGValidateAttribute(a1, v6))
      {
        v5 = 0xFFFFFFFFLL;
      }

      else
      {
        v5 = v5;
      }
    }

    else
    {
      v4 = 1;
    }

    v6 = *(v6 + 64);
  }

  while (v6);
  if (v4)
  {
    do
    {
      if (*v2 != 9)
      {
        if (!*(a1 + 96) && !*(a1 + 104))
        {
          xmlRelaxNGAddValidError(a1, 6, 0, 0, 0);
          return 0xFFFFFFFFLL;
        }

        v7 = xmlRelaxNGValidateDefinition(a1);
        if (v7 < 0)
        {
          v5 = 0xFFFFFFFFLL;
        }

        else
        {
          v5 = v5;
        }

        if (v7 == -1)
        {
          return v5;
        }
      }

      v2 = *(v2 + 64);
    }

    while (v2);
  }

  return v5;
}

uint64_t xmlRelaxNGValidateElementEnd(uint64_t a1, int a2)
{
  v4 = *(a1 + 96);
  v5 = *(v4 + 8);
  if (v5 && (v6 = xmlRelaxNGSkipIgnored(a1, v5), (*(v4 + 8) = v6) != 0))
  {
    if (a2)
    {
      xmlRelaxNGAddValidError(a1, 26, *(*v4 + 16), *(v6 + 16), 0);
    }

    return 0xFFFFFFFFLL;
  }

  else
  {
    v8 = *(v4 + 16);
    if (v8 < 1)
    {
      return 0;
    }

    else
    {
      v9 = *(v4 + 48);
      v7 = 0xFFFFFFFFLL;
      while (!*v9)
      {
        v7 = (v7 - 1);
        v9 += 8;
        if (!--v8)
        {
          return 0;
        }
      }

      if (a2)
      {
        xmlRelaxNGAddValidError(a1, 27, *(*v9 + 16), *(*v4 + 16), 0);
      }
    }
  }

  return v7;
}

uint64_t xmlRelaxNGLogBestError(uint64_t result)
{
  v1 = *(result + 104);
  if (v1)
  {
    v2 = *v1;
    if (v2 >= 1)
    {
      v3 = 0;
      v4 = *(v1 + 1);
      v5 = -1;
      v6 = 1000000;
      do
      {
        v7 = *(v4 + 8 * v3);
        if (v7)
        {
          if (*(v7 + 8))
          {
            if (v5 == -1 || v6 > 100000)
            {
              v5 = v3;
              v6 = 100000;
            }
          }

          else
          {
            v10 = *(v7 + 24);
            if (v5 == -1 || v6 > v10)
            {
              v5 = v3;
              v6 = v10;
            }
          }
        }

        ++v3;
      }

      while (v2 != v3);
      if (v5 < v2)
      {
        *(result + 96) = *(v4 + 8 * v5);
        return xmlRelaxNGValidateElementEnd(result, 1);
      }
    }
  }

  return result;
}

uint64_t xmlRelaxNGValidateAttribute(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 96);
  if (*(v2 + 24) < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = *(v2 + 16);
  if (*(a2 + 16))
  {
    if (v5 >= 1)
    {
      for (i = 0; i < *(v2 + 16); ++i)
      {
        v7 = *(*(v2 + 48) + 8 * i);
        if (!v7 || !xmlStrEqual(*(a2 + 16), *(v7 + 16)))
        {
          goto LABEL_13;
        }

        v8 = *(a2 + 24);
        if (v8 && *v8)
        {
          v9 = *(v7 + 72);
          if (!v9)
          {
            goto LABEL_13;
          }
        }

        else
        {
          v9 = *(v7 + 72);
          if (!v9)
          {
            goto LABEL_23;
          }
        }

        if (xmlStrEqual(v8, *(v9 + 16)))
        {
LABEL_23:
          String = xmlNodeListGetString(*(v7 + 64), *(v7 + 24), 1);
          v15 = *(a1 + 96);
          v16 = v15[4];
          v17 = v15[1];
          v15[1] = v7;
          v15[4] = String;
          v15[5] = 0;
          v18 = *(a2 + 48);
          if (v18)
          {
            do
            {
              v12 = xmlRelaxNGValidateValue(a1, v18);
              if (v12)
              {
                break;
              }

              v18 = *(v18 + 64);
            }

            while (v18);
            goto LABEL_30;
          }

LABEL_31:
          v12 = 0;
          v20 = String;
          goto LABEL_32;
        }

LABEL_13:
        v2 = *(a1 + 96);
      }
    }

    return 0xFFFFFFFFLL;
  }

  if (v5 < 1)
  {
    return 0xFFFFFFFFLL;
  }

  i = 0;
  while (1)
  {
    v10 = *(v2 + 48);
    v11 = *(v10 + 8 * i);
    if (v11)
    {
      break;
    }

LABEL_20:
    if (++i >= *(v2 + 16))
    {
      return 0xFFFFFFFFLL;
    }
  }

  if (xmlRelaxNGAttributeMatch(a2, *(v10 + 8 * i)) != 1)
  {
    v2 = *(a1 + 96);
    goto LABEL_20;
  }

  String = xmlNodeListGetString(*(v11 + 64), *(v11 + 24), 1);
  v15 = *(a1 + 96);
  v16 = v15[4];
  v17 = v15[1];
  v15[1] = v11;
  v15[4] = String;
  v19 = *(a2 + 48);
  if (!v19)
  {
    goto LABEL_31;
  }

  do
  {
    v12 = xmlRelaxNGValidateValue(a1, v19);
    if (v12)
    {
      break;
    }

    v19 = *(v19 + 64);
  }

  while (v19);
LABEL_30:
  v15 = *(a1 + 96);
  v20 = v15[4];
LABEL_32:
  if (v20)
  {
    v21 = v20;
  }

  else
  {
    v21 = String;
  }

  if (v21)
  {
    free(v21);
    v15 = *(a1 + 96);
  }

  v15[4] = v16;
  v15[1] = v17;
  if (!v12)
  {
    v12 = 0;
    *(v15[6] + 8 * i) = 0;
    --*(*(a1 + 96) + 24);
  }

  return v12;
}

uint64_t xmlRelaxNGAttributeMatch(void *a1, uint64_t a2)
{
  v4 = a1[2];
  if (v4)
  {
    result = xmlStrEqual(v4, *(a2 + 16));
    if (!result)
    {
      return result;
    }
  }

  v6 = a1[3];
  if (v6)
  {
    v7 = *(a2 + 72);
    if (*v6)
    {
      if (!v7)
      {
        return 0;
      }

      result = xmlStrEqual(v6, *(v7 + 16));
      if (!result)
      {
        return result;
      }
    }

    else if (v7)
    {
      return 0;
    }
  }

  v8 = a1[10];
  if (!v8)
  {
    return 1;
  }

  if (*v8 != 17)
  {
    if (*v8 == 2)
    {
      v9 = *(v8 + 48);
      if (v9)
      {
        while (xmlRelaxNGAttributeMatch(v9, a2) != 1)
        {
          v9 = v9[8];
          result = 1;
          if (!v9)
          {
            return result;
          }
        }

        return 0;
      }
    }

    else
    {
      v11 = *__xmlGenericError();
      v12 = __xmlGenericErrorContext();
      v11(*v12, "Unimplemented block at %s:%d\n", "/Library/Caches/com.apple.xbs/Sources/libxml2/libxml2/relaxng.c", 9117);
    }

    return 1;
  }

  v10 = *(v8 + 80);
  if (!v10)
  {
    return 0;
  }

  do
  {
    result = xmlRelaxNGAttributeMatch(v10, a2);
    if (result == 1)
    {
      break;
    }

    result = 0;
    v10 = v10[8];
  }

  while (v10);
  return result;
}

uint64_t xmlRelaxNGValidateValue(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  while (2)
  {
    v4 = *(a1 + 96);
    v5 = *(v4 + 32);
    switch(*a2)
    {
      case 0:
        if (!v5)
        {
          return 0;
        }

        v19 = *v5;
        if (!*v5)
        {
          return 0;
        }

        for (i = v5 + 1; ; ++i)
        {
          if (v19 > 0x20)
          {
            return 0xFFFFFFFFLL;
          }

          if (((1 << v19) & 0x100002600) == 0)
          {
            break;
          }

          v21 = *i;
          v19 = v21;
        }

        if (!v19)
        {
          return 0;
        }

        return 0xFFFFFFFFLL;
      case 2:
        v18 = *(a2 + 48);
        if (!v18)
        {
          return 0;
        }

        while (xmlRelaxNGValidateValue(v3, v18))
        {
          v17 = 0;
          v18 = *(v18 + 64);
          if (!v18)
          {
            return v17;
          }
        }

        return 0xFFFFFFFFLL;
      case 3:
        return 0;
      case 5:
        v17 = xmlRelaxNGValidateDatatype(a1, *(v4 + 32), a2, *(v4 + 8));
        if (!v17)
        {
          xmlRelaxNGNextValue(v3);
        }

        return v17;
      case 7:
        if (xmlStrEqual(*(v4 + 32), *(a2 + 32)))
        {
          goto LABEL_38;
        }

        v7 = *(a2 + 16);
        if (!v7)
        {
          v48 = xmlRelaxNGNormalize(v3, *(a2 + 32));
          v49 = xmlRelaxNGNormalize(v3, v5);
          v50 = v49;
          if (v48 && v49)
          {
            v51 = xmlStrEqual(v48, v49) != 0;
          }

          else
          {
            v51 = 0;
            v52 = 0;
            if (!v48)
            {
              goto LABEL_100;
            }
          }

          free(v48);
          v52 = v51;
LABEL_100:
          if (v50)
          {
            free(v50);
          }

          if (!v52)
          {
            return 0xFFFFFFFFLL;
          }

          goto LABEL_38;
        }

        v44 = *(a2 + 40);
        if (v44)
        {
          v45 = *(v44 + 32);
          if (v45)
          {
            v46 = v45(*(v44 + 8), *(a2 + 16), *(a2 + 32), *(a2 + 8), *(a2 + 72), v5, **(v3 + 96));
            if ((v46 & 0x80000000) == 0)
            {
              if (v46 != 1)
              {
                return 0xFFFFFFFFLL;
              }

LABEL_38:
              xmlRelaxNGNextValue(v3);
              return 0;
            }

            v7 = *(a2 + 16);
          }
        }

        a1 = v3;
        v6 = 5;
LABEL_6:
        xmlRelaxNGAddValidError(a1, v6, v7, 0, 0);
        return 0xFFFFFFFFLL;
      case 8:
        v22 = *(a2 + 48);
        v23 = *(v4 + 40);
        v24 = xmlStrdup(*(v4 + 32));
        if (!v24)
        {
          v24 = xmlStrdup("");
          if (!v24)
          {
            a1 = v3;
            v6 = 6;
LABEL_5:
            v7 = 0;
            goto LABEL_6;
          }
        }

        v25 = v24;
        v26 = v24;
        break;
      case 0xA:
      case 0x12:
        v8 = *(a2 + 48);
        if (!v8)
        {
          return 0;
        }

        while (!xmlRelaxNGValidateValue(v3, v8))
        {
          v8 = *(v8 + 64);
          if (!v8)
          {
            return 0;
          }
        }

        return 0xFFFFFFFFLL;
      case 0xB:
      case 0xD:
        a2 = *(a2 + 48);
        if (a2)
        {
          continue;
        }

        v6 = 7;
        goto LABEL_5;
      case 0xE:
        if (!v5 || !*v5)
        {
          return 0;
        }

        v32 = *(a1 + 56);
        *(a1 + 56) = v32 | 1;
        v33 = xmlRelaxNGValidateValue(a1, *(a2 + 48));
        *(v3 + 56) = v32;
        if (v33)
        {
          *(*(v3 + 96) + 32) = v5;
        }

        goto LABEL_78;
      case 0xF:
        goto LABEL_15;
      case 0x10:
        v9 = *(a2 + 48);
        if (!v9)
        {
          goto LABEL_15;
        }

        do
        {
          v10 = xmlRelaxNGValidateValue(v3, v9);
          if (v10)
          {
            return v10;
          }

          v9 = *(v9 + 64);
        }

        while (v9);
        v4 = *(v3 + 96);
        v5 = *(v4 + 32);
LABEL_15:
        if (!v5 || !*v5)
        {
          return 0;
        }

        v11 = 0;
        v12 = *(v3 + 56);
        *(v3 + 56) = v12 | 1;
        do
        {
          if (v11 == v5)
          {
            break;
          }

          v11 = v5;
          if (v5 == *(v4 + 40))
          {
            break;
          }

          v13 = *(a2 + 48);
          if (v13)
          {
            while (!xmlRelaxNGValidateValue(v3, v13))
            {
              v13 = *(v13 + 64);
              if (!v13)
              {
                v4 = *(v3 + 96);
                goto LABEL_24;
              }
            }

            *(*(v3 + 96) + 32) = v11;
            break;
          }

LABEL_24:
          v5 = *(v4 + 32);
        }

        while (v5);
        *(v3 + 56) = v12;
        goto LABEL_78;
      case 0x11:
        v14 = *(a2 + 48);
        v15 = *(a1 + 56);
        *(a1 + 56) = v15 | 1;
        if (!v14)
        {
          goto LABEL_75;
        }

        while (1)
        {
          v16 = xmlRelaxNGValidateValue(v3, v14);
          if (!v16)
          {
            break;
          }

          *(*(v3 + 96) + 32) = v5;
          v14 = *(v14 + 64);
          if (!v14)
          {
            v17 = v16;
            *(v3 + 56) = v15;
            if ((v15 & 1) == 0)
            {
              xmlRelaxNGDumpValidError(v3);
            }

            return v17;
          }
        }

LABEL_75:
        *(v3 + 56) = v15;
LABEL_78:
        if (*(v3 + 80) >= 1)
        {
          xmlRelaxNGPopErrors(v3, 0);
        }

        return 0;
      default:
        v34 = *__xmlGenericError();
        v35 = __xmlGenericErrorContext();
        v34(*v35, "Unimplemented block at %s:%d\n", "/Library/Caches/com.apple.xbs/Sources/libxml2/libxml2/relaxng.c", 9029);
        return 0xFFFFFFFFLL;
    }

    break;
  }

  while (1)
  {
    v27 = *v26;
    if (v27 > 0x20)
    {
      goto LABEL_57;
    }

    if (((1 << v27) & 0x100002600) != 0)
    {
      do
      {
        *v26++ = 0;
        v28 = *v26;
        v29 = v28 > 0x20;
        v30 = (1 << v28) & 0x100002600;
        v31 = v29 || v30 == 0;
      }

      while (!v31);
    }

    else
    {
      if (!*v26)
      {
        v36 = *(v3 + 96);
        *(v36 + 40) = v26;
        v37 = v24;
        do
        {
          v31 = v37 == v26;
          v39 = *v37++;
          v38 = v39;
        }

        while (!v31 && !v38);
        v40 = v37 - 1;
        *(v36 + 32) = v37 - 1;
        if (v22)
        {
          do
          {
            v41 = *(v3 + 96);
            if (*(v41 + 32) == *(v41 + 40))
            {
              *(v41 + 32) = 0;
            }

            v42 = xmlRelaxNGValidateValue(v3, v22);
            if (v42)
            {
              v17 = v42;
              goto LABEL_93;
            }

            v22 = *(v22 + 64);
          }

          while (v22);
          v36 = *(v3 + 96);
          v40 = *(v36 + 32);
          if (v40)
          {
            goto LABEL_73;
          }

LABEL_91:
          v17 = 0;
        }

        else
        {
LABEL_73:
          if (v40 == *(v36 + 40))
          {
            goto LABEL_91;
          }

          xmlRelaxNGAddValidError(v3, 8, v40, 0, 0);
          v17 = 0xFFFFFFFFLL;
        }

LABEL_93:
        free(v25);
        v47 = *(v3 + 96);
        *(v47 + 32) = v5;
        *(v47 + 40) = v23;
        return v17;
      }

LABEL_57:
      ++v26;
    }
  }
}

uint64_t xmlRelaxNGNextValue(uint64_t result)
{
  v1 = *(result + 96);
  v4 = *(v1 + 32);
  v2 = (v1 + 32);
  v3 = v4;
  if (v4 && (v5 = *(*(result + 96) + 40)) != 0)
  {
    v6 = (v3 - 1);
      ;
    }

    while (1)
    {
      if (v6 == v5)
      {
        *v2 = 0;
        return result;
      }

      if (*v6)
      {
        break;
      }

      ++v6;
    }

    *v2 = v6;
  }

  else
  {
    *v2 = 0;
    v2[1] = 0;
  }

  return result;
}

uint64_t xmlRelaxNGValidateDatatype(uint64_t a1, xmlChar *a2, uint64_t a3, uint64_t a4)
{
  v25 = 0;
  if (!a3)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = *(a3 + 40);
  if (!v5)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = v5[3];
  if (!v7 || ((v10 = *(a3 + 72)) == 0 || *v10 != 6 ? (v11 = v5[1], v12 = *(a3 + 16), v14 = a2, v13 = 0) : (v11 = v5[1], v12 = *(a3 + 16), v13 = &v25, v14 = a2), v15 = v7(v11, v12, v14, v13, a4), v15 < 0))
  {
    xmlRelaxNGAddValidError(a1, 2, *(a3 + 16), 0, 0);
    if (v25)
    {
      v17 = v5[6];
      if (v17)
      {
        v17(v5[1]);
      }
    }

    return 0xFFFFFFFFLL;
  }

  if (v15 == 1)
  {
    v19 = *(a3 + 72);
    if (v19)
    {
      while (*v19 == 6)
      {
        v20 = v5[5];
        if (v20)
        {
          if (v20(v5[1], *(a3 + 16), *(v19 + 16), *(v19 + 32), a2, v25))
          {
            v16 = 0xFFFFFFFFLL;
          }

          else
          {
            v16 = 0;
          }

          if (v16)
          {
LABEL_27:
            if (v16)
            {
              goto LABEL_32;
            }

            break;
          }
        }

        else
        {
          v16 = 0;
        }

        v19 = *(v19 + 64);
        if (!v19)
        {
          goto LABEL_27;
        }
      }
    }

    v21 = *(a3 + 48);
    if (v21)
    {
      v22 = *(a1 + 96);
      v24 = *(v22 + 32);
      *(v22 + 32) = a2;
      *(v22 + 40) = 0;
      v16 = xmlRelaxNGValidateValue(a1, v21);
      *(*(a1 + 96) + 32) = v24;
    }

    else
    {
      v16 = 0;
    }
  }

  else if (v15 == 2)
  {
    xmlRelaxNGAddValidError(a1, 4, a2, 0, 1);
    v16 = 2;
  }

  else
  {
    xmlRelaxNGAddValidError(a1, 3, *(a3 + 16), a2, 1);
    v16 = 0xFFFFFFFFLL;
  }

LABEL_32:
  if (v25)
  {
    v23 = v5[6];
    if (v23)
    {
      v23(v5[1]);
    }
  }

  return v16;
}

uint64_t xmlRelaxNGSkipIgnored(uint64_t a1, uint64_t a2)
{
  for (; a2; a2 = *(a2 + 48))
  {
    v2 = *(a2 + 8);
    if (v2 > 0x14)
    {
      break;
    }

    v3 = 1 << v2;
    if ((v3 & 0x180180) == 0)
    {
      if ((v3 & 0x18) == 0)
      {
        return a2;
      }

      if ((*(a1 + 56) & 4) == 0)
      {
        v4 = *(a2 + 80);
        if (v4)
        {
          while (1)
          {
            v5 = *v4;
            if (v5 > 0x20)
            {
              return a2;
            }

            if (((1 << v5) & 0x100002600) == 0)
            {
              if (!*v4)
              {
                break;
              }

              return a2;
            }

            ++v4;
          }
        }
      }
    }
  }

  return a2;
}

void *xmlRelaxNGNewStates(uint64_t a1, int a2)
{
  v3 = *(a1 + 128);
  if (!v3 || (v4 = *(a1 + 120), v5 = __OFSUB__(v4, 1), v6 = v4 - 1, (v6 < 0) ^ v5))
  {
    if (a2 <= 16)
    {
      v8 = 16;
    }

    else
    {
      v8 = a2;
    }

    v9 = malloc_type_malloc(8 * (v8 - 1) + 16, 0x108004057E67DB5uLL);
    v7 = v9;
    if (v9)
    {
      *v9 = 0;
      v9[1] = v8;
      v10 = malloc_type_malloc(8 * v8, 0x2004093837F09uLL);
      v7[1] = v10;
      if (!v10)
      {
        xmlRngVErrMemory(a1, "allocating states\n");
        free(v7);
        return 0;
      }
    }

    else
    {
      xmlRngVErrMemory(a1, "allocating states\n");
    }
  }

  else
  {
    *(a1 + 120) = v6;
    v7 = *(v3 + 8 * v6);
    *v7 = 0;
  }

  return v7;
}

uint64_t xmlRelaxNGValidateState(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (a2)
  {
    v5 = (a1 + 96);
    v4 = *(a1 + 96);
    if (v4)
    {
      v6 = *(v4 + 1);
    }

    else
    {
      v6 = 0;
    }

    v7 = 0;
    ++*(a1 + 60);
    switch(*a2)
    {
      case 0xFFFFFFFF:
      case 0xB:
      case 0xC:
      case 0xD:
      case 0x14:
        goto LABEL_7;
      case 1:
        goto LABEL_250;
      case 2:
      case 6:
        v9 = *__xmlGenericError();
        v10 = __xmlGenericErrorContext();
        v9(*v10, "Unimplemented block at %s:%d\n", "/Library/Caches/com.apple.xbs/Sources/libxml2/libxml2/relaxng.c", 10628);
        goto LABEL_250;
      case 3:
        for (; v6; v6 = *(v6 + 48))
        {
          v29 = *(v6 + 8);
          v30 = v29 > 8;
          v31 = (1 << v29) & 0x198;
          if (v30 || v31 == 0)
          {
            break;
          }
        }

        v7 = 0;
        *(v4 + 1) = v6;
        goto LABEL_251;
      case 4:
        v7 = *(a1 + 80);
        v19 = xmlRelaxNGSkipIgnored(a1, v6);
        if (v19)
        {
          v20 = v19;
          if (*(v19 + 8) == 1)
          {
            if (*(v19 + 104) != a2)
            {
              if (xmlRelaxNGElementMatch(v2, a2, v19) > 0)
              {
                v21 = *(v2 + 80);
                if (v21)
                {
                  if (v21 > v7)
                  {
                    xmlRelaxNGPopErrors(v2, v7);
                  }

                  while (1)
                  {
                    v23 = *(v2 + 72);
                    if (!v23)
                    {
                      break;
                    }

                    v22 = *v23;
                    if (*v23 == 13)
                    {
                      if (xmlStrEqual(v23[4], *(v20 + 16)))
                      {
                        goto LABEL_41;
                      }

                      v23 = *(v2 + 72);
                      v22 = *v23;
                    }

                    if (v22 == 19)
                    {
                      if (xmlStrEqual(v23[3], *(v20 + 16)))
                      {
                        goto LABEL_41;
                      }

                      v22 = **(v2 + 72);
                    }

                    if ((v22 & 0xFFFFFFFE) != 0x16)
                    {
                      break;
                    }

LABEL_41:
                    xmlRelaxNGValidErrorPop(v2);
                  }
                }

                v24 = *(v2 + 56);
                if ((v24 & 4) != 0)
                {
                  *(v2 + 56) = v24 - 4;
                }

                v25 = *(v2 + 80);
                v26 = xmlRelaxNGNewValidState(v2, v20);
                if (v26)
                {
                  v27 = *v5;
                  *v5 = v26;
                  v28 = *(a2 + 72);
                  if (v28 && xmlRelaxNGValidateAttributeList(v2, v28))
                  {
                    xmlRelaxNGAddValidError(v2, 24, *(v20 + 16), 0, 0);
                    v7 = 0xFFFFFFFFLL;
                  }

                  else
                  {
                    v7 = 0;
                  }

                  if (*(a2 + 104))
                  {
                    v204 = v24;
                    v165 = v27;
                    v166 = v25;
                    v201 = *(v2 + 96);
                    v167 = xmlRelaxNGNewValidState(v2, v20);
                    *(v2 + 96) = v167;
                    *(v2 + 104) = 0;
                    v168 = xmlRelaxNGValidateCompiledContent(v2, *(a2 + 104), v167[1]);
                    v169 = *(*(v2 + 96) + 8);
                    *(v2 + 96) = v201;
                    xmlRelaxNGFreeValidState(v2, v167);
                    if (v168)
                    {
                      v7 = 0xFFFFFFFFLL;
                    }

                    else
                    {
                      v7 = v7;
                    }

                    v170 = *(v2 + 104);
                    if (v170)
                    {
                      v25 = v166;
                      v27 = v165;
                      v24 = v204;
                      if (*v170 < 1)
                      {
LABEL_326:
                        *(v2 + 56) |= 1u;
                        xmlRelaxNGLogBestError(v2);
                        v173 = 1;
                      }

                      else
                      {
                        v171 = 0;
                        while (1)
                        {
                          v172 = *(*(v170 + 1) + 8 * v171);
                          *(v2 + 96) = v172;
                          *(v172 + 8) = v169;
                          if (!xmlRelaxNGValidateElementEnd(v2, 0))
                          {
                            break;
                          }

                          ++v171;
                          v170 = *(v2 + 104);
                          if (v171 >= *v170)
                          {
                            goto LABEL_326;
                          }
                        }

                        v173 = 0;
                      }

                      v182 = *(v2 + 104);
                      if (*v182 >= 1)
                      {
                        v183 = 0;
                        do
                        {
                          xmlRelaxNGFreeValidState(v2, *(*(v182 + 1) + 8 * v183++));
                          v182 = *(v2 + 104);
                        }

                        while (v183 < *v182);
                      }

                      goto LABEL_383;
                    }

                    v181 = *v5;
                    if (*v5)
                    {
                      *(v181 + 1) = v169;
                    }

                    v25 = v166;
                    if (v7)
                    {
                      v7 = 0xFFFFFFFFLL;
                      v27 = v165;
                      v24 = v204;
LABEL_378:
                      xmlRelaxNGFreeValidState(v2, v181);
                      goto LABEL_388;
                    }

                    v27 = v165;
                    v24 = v204;
                  }

                  else
                  {
                    v175 = *(a2 + 48);
                    if (v175 && xmlRelaxNGValidateDefinitionList(v2, v175))
                    {
                      if (*v5)
                      {
                        xmlRelaxNGAddValidError(v2, 25, *(v20 + 16), 0, 0);
                      }

                      else
                      {
                        *(v2 + 96) = v27;
                        xmlRelaxNGAddValidError(v2, 25, *(v20 + 16), 0, 0);
                        *(v2 + 96) = 0;
                      }

                      v7 = 0xFFFFFFFFLL;
                    }

                    v185 = *(v2 + 104);
                    if (v185)
                    {
                      if (*v185 < 1)
                      {
LABEL_374:
                        *(v2 + 56) |= 1u;
                        xmlRelaxNGLogBestError(v2);
                        v173 = 1;
                      }

                      else
                      {
                        v186 = 0;
                        while (1)
                        {
                          *(v2 + 96) = *(*(v185 + 1) + 8 * v186);
                          if (!xmlRelaxNGValidateElementEnd(v2, 0))
                          {
                            break;
                          }

                          ++v186;
                          v185 = *(v2 + 104);
                          if (v186 >= *v185)
                          {
                            goto LABEL_374;
                          }
                        }

                        v173 = 0;
                      }

                      v182 = *(v2 + 104);
                      if (*v182 >= 1)
                      {
                        v187 = 0;
                        do
                        {
                          xmlRelaxNGFreeValidState(v2, *(*(v182 + 1) + 8 * v187));
                          *(*(*(v2 + 104) + 8) + 8 * v187++) = 0;
                          v182 = *(v2 + 104);
                        }

                        while (v187 < *v182);
                      }

LABEL_383:
                      xmlRelaxNGFreeStates(v2, v182);
                      *(v2 + 104) = 0;
                      if (v7)
                      {
                        v188 = 0;
                      }

                      else
                      {
                        v188 = v173;
                      }

                      if (v188)
                      {
                        v189 = 0;
                        v7 = 0xFFFFFFFFLL;
LABEL_391:
                        *(v2 + 56) = v24;
                        *(v2 + 96) = v27;
                        if (v27)
                        {
                          *(v27 + 1) = xmlRelaxNGSkipIgnored(v2, *(v20 + 48));
                        }

                        if ((v189 & 1) == 0)
                        {
                          if (v24)
                          {
                            goto LABEL_251;
                          }

                          xmlRelaxNGDumpValidError(v2);
                          goto LABEL_232;
                        }

                        if (*(v2 + 80) <= v25)
                        {
LABEL_232:
                          v7 = 0;
LABEL_251:
                          --*(v2 + 60);
                          return v7;
                        }

                        v121 = v2;
                        v122 = v25;
LABEL_231:
                        xmlRelaxNGPopErrors(v121, v122);
                        goto LABEL_232;
                      }

LABEL_388:
                      if (v7)
                      {
                        v189 = 0;
                      }

                      else
                      {
                        *(v20 + 104) = a2;
                        v189 = 1;
                      }

                      goto LABEL_391;
                    }

                    v181 = *v5;
                    if (v7)
                    {
                      v7 = 0xFFFFFFFFLL;
                      goto LABEL_378;
                    }
                  }

                  v7 = xmlRelaxNGValidateElementEnd(v2, 1);
                  goto LABEL_378;
                }
              }

              goto LABEL_207;
            }

            *(v4 + 1) = xmlRelaxNGSkipIgnored(v2, *(v19 + 48));
            if (!v7)
            {
              goto LABEL_251;
            }

            v130 = *(v2 + 72);
            if (!v130)
            {
              goto LABEL_232;
            }

            while (1)
            {
              v131 = *v130;
              if (*v130 == 13)
              {
                if (xmlStrEqual(v130[4], *(v20 + 16)))
                {
                  goto LABEL_246;
                }

                v130 = *(v2 + 72);
                v131 = *v130;
              }

              if (v131 != 19)
              {
                goto LABEL_245;
              }

              if (!xmlStrEqual(v130[3], *(v20 + 16)))
              {
                v131 = **(v2 + 72);
LABEL_245:
                if ((v131 & 0xFFFFFFFE) != 0x16)
                {
                  goto LABEL_232;
                }
              }

LABEL_246:
              xmlRelaxNGValidErrorPop(v2);
              v7 = 0;
              v130 = *(v2 + 72);
              if (!v130)
              {
                goto LABEL_251;
              }
            }
          }

          v95 = v2;
          v96 = 23;
          v94 = 0;
        }

        else
        {
          v94 = *(a2 + 16);
          v95 = v2;
          v96 = 22;
        }

        xmlRelaxNGAddValidError(v95, v96, v94, 0, 0);
LABEL_207:
        if ((*(v2 + 56) & 1) == 0)
        {
          xmlRelaxNGDumpValidError(v2);
        }

LABEL_250:
        v7 = 0xFFFFFFFFLL;
        goto LABEL_251;
      case 5:
        if (!v6)
        {
          goto LABEL_63;
        }

        v33 = 0;
        v34 = v6;
        do
        {
          v35 = *(v34 + 8);
          if ((v35 - 3) >= 2)
          {
            if (v35 == 1)
            {
              v124 = *(*(v6 + 40) + 16);
              v125 = v2;
              v126 = 28;
              goto LABEL_225;
            }
          }

          else
          {
            v33 = xmlStrcat(v33, *(v34 + 80));
          }

          v34 = *(v34 + 48);
        }

        while (v34);
        if (!v33)
        {
LABEL_63:
          v33 = xmlStrdup("");
          if (!v33)
          {
            goto LABEL_153;
          }
        }

        v36 = xmlRelaxNGValidateDatatype(v2, v33, a2, *(*(v2 + 96) + 8));
        v7 = v36;
        if (!v36)
        {
          v53 = *v5;
          goto LABEL_216;
        }

        if (v36 != -1)
        {
          goto LABEL_217;
        }

        v37 = *(a2 + 16);
        v38 = v2;
        v39 = 31;
        goto LABEL_214;
      case 7:
        if (!v6)
        {
          goto LABEL_89;
        }

        v33 = 0;
        v48 = v6;
        do
        {
          v49 = *(v48 + 8);
          if ((v49 - 3) >= 2)
          {
            if (v49 == 1)
            {
              v124 = *(*(v6 + 40) + 16);
              v125 = v2;
              v126 = 29;
              goto LABEL_225;
            }
          }

          else
          {
            v33 = xmlStrcat(v33, *(v48 + 80));
          }

          v48 = *(v48 + 48);
        }

        while (v48);
        if (!v33)
        {
LABEL_89:
          v33 = xmlStrdup("");
          if (!v33)
          {
            goto LABEL_153;
          }
        }

        v50 = *(v2 + 96);
        v51 = *(v50 + 32);
        *(v50 + 32) = v33;
        v52 = xmlRelaxNGValidateValue(v2, a2);
        v7 = v52;
        v53 = *(v2 + 96);
        *(v53 + 4) = v51;
        if (!v52)
        {
LABEL_216:
          *(v53 + 1) = 0;
          goto LABEL_217;
        }

        if (v52 != -1)
        {
          goto LABEL_217;
        }

        v37 = *(a2 + 16);
        v38 = v2;
        v39 = 32;
        goto LABEL_214;
      case 8:
        if (!v6)
        {
          goto LABEL_100;
        }

        v33 = 0;
        v54 = v6;
        do
        {
          v55 = *(v54 + 8);
          if ((v55 - 3) >= 2)
          {
            if (v55 == 1)
            {
              v124 = *(*(v6 + 40) + 16);
              v125 = v2;
              v126 = 30;
LABEL_225:
              xmlRelaxNGAddValidError(v125, v126, v124, 0, 0);
              if (v33)
              {
                free(v33);
              }

              goto LABEL_250;
            }
          }

          else
          {
            v33 = xmlStrcat(v33, *(v54 + 80));
          }

          v54 = *(v54 + 48);
        }

        while (v54);
        if (!v33)
        {
LABEL_100:
          v33 = xmlStrdup("");
          if (!v33)
          {
LABEL_153:
            xmlRngVErrMemory(v2, "validating\n");
            goto LABEL_250;
          }
        }

        v56 = xmlStrlen(v33);
        v57 = *(v2 + 96);
        v203 = *(v57 + 32);
        *(v57 + 32) = v33;
        *(v57 + 40) = &v33[v56];
        v58 = xmlRelaxNGValidateValue(v2, a2);
        v7 = v58;
        v59 = *(v2 + 96);
        *(v59 + 32) = v203;
        if (v58 == -1)
        {
          v38 = v2;
          v39 = 33;
          v37 = 0;
LABEL_214:
          xmlRelaxNGAddValidError(v38, v39, v37, 0, 0);
        }

        else if (!v58 && v6)
        {
          *(v59 + 8) = *(v6 + 48);
        }

LABEL_217:
        v123 = v33;
LABEL_218:
        free(v123);
        goto LABEL_251;
      case 9:
        v8 = xmlRelaxNGValidateAttribute(a1, a2);
        goto LABEL_72;
      case 0xA:
      case 0x12:
        v8 = xmlRelaxNGValidateDefinitionList(a1, *(a2 + 48));
        goto LABEL_72;
      case 0xE:
        v40 = *(a1 + 80);
        v41 = *(a1 + 56);
        *(a1 + 56) = v41 | 1;
        v42 = xmlRelaxNGCopyValidState(a1, v4);
        if (xmlRelaxNGValidateDefinitionList(v2, *(a2 + 48)))
        {
          if (*v5)
          {
            xmlRelaxNGFreeValidState(v2, *v5);
          }

          *(v2 + 96) = v42;
        }

        else
        {
          v97 = *(v2 + 104);
          if (v97)
          {
            xmlRelaxNGAddStates(v2, v97, v42);
          }

          else
          {
            v127 = xmlRelaxNGNewStates(v2, 1);
            *(v2 + 104) = v127;
            if (!v127)
            {
              xmlRelaxNGFreeValidState(v2, v42);
              *(v2 + 56) = v41;
              if (*(v2 + 80) > v40)
              {
                xmlRelaxNGPopErrors(v2, v40);
              }

              goto LABEL_250;
            }

            xmlRelaxNGAddStates(v2, v127, v42);
            xmlRelaxNGAddStates(v2, *(v2 + 104), *(v2 + 96));
            *(v2 + 96) = 0;
          }
        }

        *(v2 + 56) = v41;
        if (*(v2 + 80) <= v40)
        {
          goto LABEL_232;
        }

        v121 = v2;
        v122 = v40;
        goto LABEL_231;
      case 0xF:
        goto LABEL_108;
      case 0x10:
        v60 = *(a1 + 80);
        if (xmlRelaxNGValidateDefinitionList(a1, *(a2 + 48)))
        {
          goto LABEL_250;
        }

        if (*(v2 + 80) > v60)
        {
          xmlRelaxNGPopErrors(v2, v60);
        }

LABEL_108:
        v61 = xmlRelaxNGNewStates(v2, 1);
        if (!v61)
        {
          goto LABEL_250;
        }

        v62 = v61;
        if (*v5)
        {
          v63 = xmlRelaxNGCopyValidState(v2, *v5);
          xmlRelaxNGAddStates(v2, v62, v63);
        }

        else
        {
          v100 = *(v2 + 104);
          if (*v100 >= 1)
          {
            v101 = 0;
            do
            {
              v102 = xmlRelaxNGCopyValidState(v2, *(*(v100 + 1) + 8 * v101));
              xmlRelaxNGAddStates(v2, v62, v102);
              ++v101;
              v100 = *(v2 + 104);
            }

            while (v101 < *v100);
          }
        }

        v103 = 0;
        v104 = *(v2 + 56);
        *(v2 + 56) = v104 | 1;
        while (2)
        {
          v105 = *(v2 + 104);
          if (v105)
          {
            if (*v105 < 1)
            {
              goto LABEL_256;
            }

            v106 = 0;
            v107 = 0;
            v108 = *v62;
            do
            {
              *(v2 + 96) = *(*(v105 + 1) + 8 * v106);
              *(v2 + 104) = 0;
              v109 = xmlRelaxNGValidateDefinitionList(v2, *(a2 + 48));
              v110 = *(v2 + 96);
              if (v109)
              {
                if (v110)
                {
                  xmlRelaxNGFreeValidState(v2, *(v2 + 96));
                  *(v2 + 96) = 0;
                }
              }

              else if (v110)
              {
                v111 = xmlRelaxNGAddStates(v2, v62, v110);
                *(v2 + 96) = 0;
                if (v111 == 1)
                {
                  v107 = 1;
                }
              }

              else
              {
                v112 = *(v2 + 104);
                if (v112)
                {
                  if (*v112 >= 1)
                  {
                    v113 = 0;
                    do
                    {
                      if (xmlRelaxNGAddStates(v2, v62, *(*(v112 + 1) + 8 * v113)) == 1)
                      {
                        v107 = 1;
                      }

                      ++v113;
                      v112 = *(v2 + 104);
                    }

                    while (v113 < *v112);
                  }

                  xmlRelaxNGFreeStates(v2, v112);
                  *(v2 + 104) = 0;
                }
              }

              ++v106;
            }

            while (v106 < *v105);
            v103 = v105;
            if (!v107)
            {
LABEL_256:
              xmlRelaxNGFreeStates(v2, v105);
              goto LABEL_257;
            }

LABEL_197:
            v118 = *v62 - v108;
            if (v118 == 1)
            {
              *(v2 + 96) = xmlRelaxNGCopyValidState(v2, *(*(v62 + 1) + 8 * v108));
              continue;
            }

            if (v103 || (xmlRelaxNGNewStates(v2, v118), (v103 = *(v2 + 104)) != 0))
            {
              *v103 = 0;
              if (v108 < *v62)
              {
                v119 = v108;
                do
                {
                  v120 = xmlRelaxNGCopyValidState(v2, *(*(v62 + 1) + 8 * v119));
                  xmlRelaxNGAddStates(v2, v103, v120);
                  ++v119;
                }

                while (v119 < *v62);
              }

              *(v2 + 104) = v103;
              continue;
            }

LABEL_257:
            v7 = 0;
            *(v2 + 104) = v62;
            *(v2 + 56) = v104;
            goto LABEL_251;
          }

          break;
        }

        if (xmlRelaxNGValidateDefinitionList(v2, *(a2 + 48)))
        {
          xmlRelaxNGFreeValidState(v2, *(v2 + 96));
          *(v2 + 96) = 0;
        }

        else
        {
          v108 = *v62;
          if (*v5)
          {
            v114 = xmlRelaxNGAddStates(v2, v62, *v5);
            *(v2 + 96) = 0;
            if (v114 == 1)
            {
              goto LABEL_197;
            }
          }

          else
          {
            v115 = *(v2 + 104);
            if (v115)
            {
              if (*v115 < 1)
              {
                v117 = 0;
              }

              else
              {
                v116 = 0;
                v117 = 0;
                do
                {
                  if (xmlRelaxNGAddStates(v2, v62, *(*(v115 + 1) + 8 * v116)) == 1)
                  {
                    v117 = 1;
                  }

                  ++v116;
                  v115 = *(v2 + 104);
                }

                while (v116 < *v115);
              }

              if (v103)
              {
                xmlRelaxNGFreeStates(v2, v115);
              }

              else
              {
                v103 = v115;
              }

              *(v2 + 104) = 0;
              v105 = v103;
              if (!v117)
              {
                goto LABEL_256;
              }

              goto LABEL_197;
            }
          }
        }

        v105 = v103;
        if (!v103)
        {
          goto LABEL_257;
        }

        goto LABEL_256;
      case 0x11:
        v11 = xmlRelaxNGSkipIgnored(a1, v6);
        v12 = *(v2 + 80);
        if ((*(a2 + 98) & 0x10) != 0)
        {
          v64 = *(a2 + 40);
          if (v64)
          {
            v65 = v11;
            if (v11)
            {
              v66 = *(v11 + 8);
              if ((v66 - 3) >= 2)
              {
                if (v66 != 1)
                {
LABEL_248:
                  v99 = *(v65 + 16);
                  a1 = v2;
                  v98 = 38;
                  goto LABEL_249;
                }

                v128 = *(v11 + 72);
                v129 = *(v11 + 16);
                if (v128)
                {
                  if (xmlHashLookup2(*(a2 + 40), v129, *(v128 + 16)))
                  {
                    goto LABEL_7;
                  }

                  v180 = *(*(v65 + 72) + 16);
                  v129 = "#any";
                  v179 = v64;
                }

                else
                {
                  v179 = *(a2 + 40);
                  v180 = 0;
                }

                if (xmlHashLookup2(v179, v129, v180))
                {
                  goto LABEL_7;
                }

                v67 = "#any";
              }

              else
              {
                v67 = "#text";
              }

              if (!xmlHashLookup2(v64, v67, 0))
              {
                goto LABEL_248;
              }

LABEL_7:
              v8 = xmlRelaxNGValidateDefinition(v2);
LABEL_72:
              v7 = v8;
              goto LABEL_251;
            }
          }
        }

        v13 = *(a2 + 48);
        v14 = *(v2 + 56);
        *(v2 + 56) = v14 | 1;
        v15 = (v2 + 104);
        if (v13)
        {
          v16 = 0;
          do
          {
            v4 = xmlRelaxNGCopyValidState(v2, v4);
            v7 = xmlRelaxNGValidateDefinition(v2);
            if (v7)
            {
              xmlRelaxNGFreeValidState(v2, *(v2 + 96));
            }

            else
            {
              if (!v16)
              {
                v16 = xmlRelaxNGNewStates(v2, 1);
              }

              if (*v5)
              {
                xmlRelaxNGAddStates(v2, v16, *v5);
              }

              else
              {
                v17 = *v15;
                if (*v15)
                {
                  if (*v17 >= 1)
                  {
                    v18 = 0;
                    do
                    {
                      xmlRelaxNGAddStates(v2, v16, *(*(v17 + 1) + 8 * v18++));
                      v17 = *(v2 + 104);
                    }

                    while (v18 < *v17);
                  }

                  xmlRelaxNGFreeStates(v2, v17);
                  *(v2 + 104) = 0;
                }
              }
            }

            *v5 = v4;
            v13 = *(v13 + 64);
          }

          while (v13);
          if (!v16)
          {
            *(v2 + 104) = 0;
            *(v2 + 56) = v14;
            if (v7)
            {
              if ((v14 & 1) == 0)
              {
                xmlRelaxNGDumpValidError(v2);
              }

              goto LABEL_251;
            }

            goto LABEL_211;
          }

          xmlRelaxNGFreeValidState(v2, v4);
          *(v2 + 104) = v16;
        }

        else
        {
          v5 = (v2 + 104);
        }

        *v5 = 0;
        *(v2 + 56) = v14;
LABEL_211:
        if (*(v2 + 80) <= v12)
        {
          goto LABEL_232;
        }

        v121 = v2;
        v122 = v12;
        goto LABEL_231;
      case 0x13:
        v43 = *(a2 + 40);
        if (!v43)
        {
          v98 = 10;
          v99 = 0;
LABEL_249:
          xmlRelaxNGAddValidError(a1, v98, v99, 0, 0);
          goto LABEL_250;
        }

        v44 = *(a1 + 80);
        v45 = *v43;
        v46 = *(a1 + 56);
        v202 = *(a2 + 40);
        if ((*(a2 + 98) & 8) != 0)
        {
          *(a1 + 56) = v46 | 4;
          if (v45 == 2)
          {
            if (v4)
            {
              *(v4 + 1) = xmlRelaxNGSkipIgnored(a1, *(v4 + 1));
            }

            v7 = xmlRelaxNGValidateDefinition(v2);
            if (!v7 && *v5)
            {
              v47 = *v5;
              *(v47 + 1) = xmlRelaxNGSkipIgnored(v2, *(v47 + 1));
            }

            *(v2 + 56) = v46;
            goto LABEL_251;
          }
        }

        v68 = malloc_type_malloc(8 * v45, 0x2004093837F09uLL);
        if (!v68)
        {
          goto LABEL_153;
        }

        v69 = v68;
        bzero(v68, 8 * v45);
        v70 = malloc_type_malloc(8 * v45, 0x2004093837F09uLL);
        if (!v70)
        {
          goto LABEL_153;
        }

        v199 = v45;
        v71 = v45;
        v197 = v70;
        bzero(v70, 8 * v45);
        v72 = *(v2 + 96);
        v73 = xmlRelaxNGSkipIgnored(v2, *(v72 + 1));
        v192 = v73;
        if (!v73)
        {
          v74 = 0;
          v196 = 0;
LABEL_259:
          if (v71 < 1)
          {
            v134 = 0;
            v136 = v72;
            v138 = v197;
LABEL_311:
            if (v72)
            {
              v164 = v74;
              xmlRelaxNGFreeValidState(v2, v72);
              *(v2 + 96) = v136;
              *(v136 + 1) = v164;
              if (v134)
              {
                goto LABEL_334;
              }
            }

            else
            {
              *v5 = v136;
              *(v136 + 1) = v74;
              if (v134)
              {
                goto LABEL_334;
              }
            }

            goto LABEL_328;
          }

          v191 = v46;
          v133 = v44;
          v198 = 0;
          v134 = 1;
          v190 = v74;
          v135 = v74;
          v136 = v72;
          v137 = 0;
          v138 = v197;
          v194 = v133;
          v193 = v69;
LABEL_261:
          v139 = xmlRelaxNGCopyValidState(v2, v136);
          *(v2 + 96) = v139;
          if (!v139)
          {
            *v5 = v136;
            *(v136 + 1) = v190;
            v44 = v133;
            v46 = v191;
            goto LABEL_334;
          }

          v140 = *&v138[8 * v137];
          if (v140)
          {
            v198 = *(v140 + 48);
            *(v140 + 48) = 0;
          }

          v200 = v137;
          v139[1] = v69[v137];
          v141 = xmlRelaxNGValidateDefinition(v2);
          v72 = *(v2 + 96);
          if (v141)
          {
LABEL_309:
            v74 = v190;
            v44 = v133;
            v46 = v191;
            goto LABEL_311;
          }

          if (v72)
          {
            v135 = xmlRelaxNGSkipIgnored(v2, *(v72 + 1));
            xmlRelaxNGFreeValidState(v2, v136);
            v136 = *(v2 + 96);
            *(v2 + 96) = 0;
            if (!v135)
            {
              goto LABEL_305;
            }

            v142 = *(a2 + 56);
            if (*v142 == 10)
            {
              if (xmlStrEqual(*(v142 + 16), "open-name-class"))
              {
                goto LABEL_305;
              }
            }

            xmlRelaxNGAddValidError(v2, 12, *(v135 + 16), 0, 0);
            v174 = 0;
            *(v2 + 96) = v136;
            v7 = 0xFFFFFFFFLL;
            v176 = v192;
            v177 = v196;
            v44 = v133;
            goto LABEL_366;
          }

          v143 = *(v2 + 104);
          if (!v143)
          {
            *v5 = v136;
            *(v136 + 1) = v190;
            v44 = v133;
            v46 = v191;
            if (v134)
            {
LABEL_334:
              xmlRelaxNGAddValidError(v2, 11, 0, 0, 0);
              v174 = 0;
              v7 = 0xFFFFFFFFLL;
              goto LABEL_335;
            }

LABEL_328:
            v7 = 0;
            v174 = 1;
LABEL_335:
            v176 = v192;
            v177 = v196;
            goto LABEL_336;
          }

          v144 = *v143;
          if (v144 <= 0)
          {
            xmlRelaxNGFreeStates(v2, v143);
            *(v2 + 104) = 0;
LABEL_361:
            if (v135)
            {
              v184 = *(v135 + 16);
            }

            else
            {
              v184 = "noname";
            }

            xmlRelaxNGAddValidError(v2, 12, v184, 0, 0);
            v44 = v133;
            v174 = 0;
            *v5 = v136;
            v7 = 0xFFFFFFFFLL;
            v176 = v192;
            v177 = v196;
LABEL_366:
            v46 = v191;
LABEL_336:
            *(v2 + 56) = v46;
            if (v177 && v177 != v176)
            {
              do
              {
                v178 = *(v177 + 56);
                if (!v178)
                {
                  break;
                }

                *(v178 + 48) = v177;
                v177 = v178;
              }

              while (v178 != v176);
            }

            if (v174 && *(v2 + 80) > v44)
            {
              xmlRelaxNGPopErrors(v2, v44);
            }

            free(v69);
            v123 = v138;
            goto LABEL_218;
          }

          v195 = v136;
          v145 = 0;
          v146 = 0;
          v147 = v143[1];
          v148 = -1;
          v149 = -1;
          while (1)
          {
            v150 = v147[v145];
            v151 = xmlRelaxNGSkipIgnored(v2, *(v150 + 8));
            if (v151)
            {
              if (v146)
              {
                v146 = 1;
              }

              else
              {
                v155 = *(v150 + 24);
                if (v148 == -1)
                {
                  v146 = 0;
                  v149 = v145;
                  v148 = *(v150 + 24);
                }

                else
                {
                  v146 = 0;
                  if (v155 <= v148)
                  {
                    v149 = v145;
                  }

                  if (v155 < v148)
                  {
                    v148 = *(v150 + 24);
                  }
                }
              }
            }

            else
            {
              v152 = *(v150 + 24);
              if (v146)
              {
                v153 = v149;
              }

              else
              {
                v153 = v145;
              }

              if (v146)
              {
                v154 = v148;
              }

              else
              {
                v154 = *(v150 + 24);
              }

              if (v152 <= v154)
              {
                v149 = v145;
              }

              else
              {
                v149 = v153;
              }

              if (v152 >= v154)
              {
                v148 = v154;
              }

              else
              {
                v148 = *(v150 + 24);
              }

              v146 = 1;
              if (!v148)
              {
LABEL_298:
                v135 = v151;
                xmlRelaxNGFreeValidState(v2, v195);
                v156 = *(v2 + 104);
                v157 = *(v156 + 1);
                if (v149 == -1)
                {
                  v161 = v157 + 8 * *v156;
                  v158 = *(v161 - 8);
                  *(v161 - 8) = 0;
                  v159 = *(v2 + 104);
                  v160 = *v159 - 1;
                  *v159 = v160;
                }

                else
                {
                  v158 = *(v157 + 8 * v149);
                  *(v157 + 8 * v149) = 0;
                  v159 = *(v2 + 104);
                  v160 = *v159;
                }

                v133 = v194;
                v138 = v197;
                v69 = v193;
                if (v160 >= 1)
                {
                  v162 = 0;
                  do
                  {
                    xmlRelaxNGFreeValidState(v2, *(*(v159 + 1) + 8 * v162++));
                    v159 = *(v2 + 104);
                  }

                  while (v162 < *v159);
                }

                xmlRelaxNGFreeStates(v2, v159);
                *(v2 + 104) = 0;
                v136 = v158;
                if (!v146)
                {
                  goto LABEL_361;
                }

LABEL_305:
                v163 = *&v138[8 * v200];
                if (v163)
                {
                  *(v163 + 48) = v198;
                }

                v137 = v200 + 1;
                v134 = v200 + 1 < v199;
                if (v200 + 1 == v199)
                {
                  v72 = *v5;
                  goto LABEL_309;
                }

                goto LABEL_261;
              }
            }

            if (v144 == ++v145)
            {
              goto LABEL_298;
            }
          }
        }

        v196 = 0;
        v74 = v73;
        v75 = v202;
        break;
      default:
        goto LABEL_251;
    }

    while (1)
    {
      *(*v5 + 1) = v74;
      v76 = *(v75 + 8);
      v77 = v74;
      if (!v76 || (*(v75 + 16) & 1) == 0)
      {
        if (v71 < 1)
        {
          LODWORD(v78) = 0;
        }

        else
        {
          v78 = 0;
          while (1)
          {
            v79 = *(*(v75 + 24) + 8 * v78);
            if (v79)
            {
              v80 = xmlRelaxNGNodeMatchesList(v74, *(v79 + 8));
              v74 = v77;
              v75 = v202;
              if (v80)
              {
                break;
              }
            }

            if (v71 == ++v78)
            {
              goto LABEL_253;
            }
          }
        }

        goto LABEL_137;
      }

      v81 = *(v74 + 8);
      if ((v81 - 3) < 2)
      {
        v82 = "#text";
        goto LABEL_131;
      }

      if (v81 != 1)
      {
        goto LABEL_253;
      }

      v91 = *(v74 + 72);
      v92 = *(v74 + 16);
      if (v91)
      {
        v83 = xmlHashLookup2(v76, v92, *(v91 + 16));
        v84 = v202;
        v74 = v77;
        if (v83)
        {
          goto LABEL_132;
        }

        v76 = *(v202 + 8);
        v93 = *(*(v77 + 72) + 16);
        v92 = "#any";
      }

      else
      {
        v93 = 0;
      }

      v83 = xmlHashLookup2(v76, v92, v93);
      v84 = v202;
      v74 = v77;
      if (!v83)
      {
        v76 = *(v202 + 8);
        v82 = "#any";
LABEL_131:
        v83 = xmlHashLookup2(v76, v82, 0);
        v84 = v202;
        v74 = v77;
        if (!v83)
        {
          goto LABEL_253;
        }
      }

LABEL_132:
      LODWORD(v78) = v83 - 1;
      if ((*(v84 + 16) & 2) != 0)
      {
        v85 = xmlRelaxNGNodeMatchesList(v74, *(*(*(v84 + 24) + 8 * v78) + 8));
        v74 = v77;
        if (!v85)
        {
          LODWORD(v78) = v71;
        }
      }

LABEL_137:
      if (v78 < v199)
      {
        v86 = *&v197[8 * v78];
        v87 = v86 ? (v86 + 48) : &v69[v78];
        *v87 = v74;
        *&v197[8 * v78] = v74;
        v88 = *(v74 + 48);
        v89 = v88 ? *(v74 + 48) : v74;
        v196 = v89;
        v90 = xmlRelaxNGSkipIgnored(v2, v88);
        v75 = v202;
        v74 = v90;
        if (v90)
        {
          continue;
        }
      }

LABEL_253:
      v72 = *v5;
      goto LABEL_259;
    }
  }

  xmlRelaxNGAddValidError(a1, 7, 0, 0, 0);
  return 0xFFFFFFFFLL;
}

uint64_t xmlRelaxNGAddStates(uint64_t a1, int *a2, void *a3)
{
  result = 0xFFFFFFFFLL;
  if (a2 && a3)
  {
    v7 = *a2;
    v8 = a2[1];
    if (*a2 >= v8)
    {
      v9 = malloc_type_realloc(*(a2 + 1), 16 * v8, 0x2004093837F09uLL);
      if (!v9)
      {
        xmlRngVErrMemory(a1, "adding states\n");
        return 0xFFFFFFFFLL;
      }

      *(a2 + 1) = v9;
      a2[1] = 2 * v8;
      v7 = *a2;
    }

    if (v7 > 0)
    {
      v10 = 0;
      while (1)
      {
        v11 = *(*(a2 + 1) + 8 * v10);
        if (v11)
        {
          if (v11 == a3)
          {
            goto LABEL_24;
          }

          if (*a3 == *v11 && a3[1] == *(v11 + 8) && *(a3 + 6) == *(v11 + 24))
          {
            v12 = *(a3 + 4);
            if (v12 == *(v11 + 16) && a3[5] == *(v11 + 40))
            {
              v13 = a3[4];
              v14 = *(v11 + 32);
              if (v13 != v14)
              {
                if (!xmlStrEqual(v13, v14))
                {
                  goto LABEL_15;
                }

                v12 = *(a3 + 4);
              }

              if (v12 < 1)
              {
LABEL_24:
                xmlRelaxNGFreeValidState(a1, a3);
                return 0;
              }

              v15 = a3[6];
              v16 = *(v11 + 48);
              while (*v15 == *v16)
              {
                ++v16;
                ++v15;
                if (!--v12)
                {
                  goto LABEL_24;
                }
              }
            }
          }
        }

LABEL_15:
        ++v10;
        v7 = *a2;
        if (v10 >= *a2)
        {
          v17 = v7;
          goto LABEL_26;
        }
      }
    }

    v17 = v7;
LABEL_26:
    v18 = *(a2 + 1);
    *a2 = v7 + 1;
    *(v18 + 8 * v17) = a3;
    return 1;
  }

  return result;
}

void xmlRelaxNGValidErrorPop(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (v1 <= 0)
  {
    *(a1 + 72) = 0;
  }

  else
  {
    v2 = *(a1 + 88);
    v3 = v2 + 40 * v1 - 80;
    v4 = v1 - 1;
    *(a1 + 80) = v4;
    if (!v4)
    {
      v3 = 0;
    }

    *(a1 + 72) = v3;
    v5 = v2 + 40 * v4;
    if (*(v5 + 4))
    {
      v6 = *(v5 + 24);
      if (v6)
      {
        free(v6);
      }

      *(v5 + 24) = 0;
      v7 = *(v5 + 32);
      if (v7)
      {
        free(v7);
      }

      *(v5 + 32) = 0;
      *(v5 + 4) = 0;
    }
  }
}

uint64_t xmlRelaxNGValidateCompiledContent(_DWORD *data, xmlRegexpPtr comp, uint64_t a3)
{
  if (!comp)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = data[46];
  v6 = xmlRegNewExecCtxt(comp, xmlRelaxNGValidateCompiledCallback, data);
  data[46] = 0;
  if (!a3)
  {
    goto LABEL_17;
  }

  while (1)
  {
    *(*(data + 12) + 8) = a3;
    v7 = *(a3 + 8);
    if ((v7 - 3) < 2)
    {
      if (!xmlIsBlankNode(a3) && xmlRegExecPushString(v6, "#text", data) < 0)
      {
        a3 = *(a3 + 40);
        v11 = 39;
        goto LABEL_16;
      }

      goto LABEL_12;
    }

    if (v7 != 1)
    {
      goto LABEL_12;
    }

    v8 = *(a3 + 72);
    v9 = *(a3 + 16);
    if (!v8)
    {
      break;
    }

    if (xmlRegExecPushString2(v6, v9, *(v8 + 16), data) < 0)
    {
      goto LABEL_15;
    }

LABEL_12:
    a3 = *(a3 + 48);
    if (!a3)
    {
      goto LABEL_17;
    }
  }

  if ((xmlRegExecPushString(v6, v9, data) & 0x80000000) == 0)
  {
    goto LABEL_12;
  }

LABEL_15:
  v11 = 38;
LABEL_16:
  xmlRelaxNGAddValidError(data, v11, *(a3 + 16), 0, 0);
LABEL_17:
  v12 = xmlRegExecPushString(v6, 0, 0);
  if (v12 == 1)
  {
    *(*(data + 12) + 8) = 0;
    xmlRegFreeExecCtxt(v6);
    result = data[46];
  }

  else
  {
    if (!v12)
    {
      xmlRelaxNGAddValidError(data, 22, "", 0, 0);
      if ((data[14] & 1) == 0)
      {
        xmlRelaxNGDumpValidError(data);
      }
    }

    xmlRegFreeExecCtxt(v6);
    result = 0xFFFFFFFFLL;
  }

  data[46] = v5;
  return result;
}

uint64_t xmlRelaxNGValidateDefinitionList(char *a1, uint64_t a2)
{
  v2 = a1;
  if (a2)
  {
    v3 = a2;
    LODWORD(v4) = 0;
    while (*(v2 + 12) || *(v2 + 13))
    {
      v5 = xmlRelaxNGValidateDefinition(v2);
      if (v5 < 0)
      {
        v4 = 0xFFFFFFFFLL;
      }

      else
      {
        v4 = v4;
      }

      if (v5 != -1)
      {
        v3 = *(v3 + 64);
        if (v3)
        {
          continue;
        }
      }

      return v4;
    }

    a1 = v2;
    v7 = 6;
    v6 = 0;
  }

  else
  {
    v6 = "NULL definition list";
    v7 = 37;
  }

  xmlRelaxNGAddValidError(a1, v7, v6, 0, 0);
  return 0xFFFFFFFFLL;
}

void *xmlRelaxNGCopyValidState(uint64_t a1, __int128 *a2)
{
  if (!a2)
  {
    return 0;
  }

  v4 = *(a1 + 112);
  if (v4 && (v5 = *v4 - 1, *v4 >= 1))
  {
    *v4 = v5;
    v6 = *(*(v4 + 8) + 8 * v5);
  }

  else
  {
    v7 = malloc_type_malloc(0x38uLL, 0x10B004079B1E1FAuLL);
    v6 = v7;
    if (!v7)
    {
      xmlRngVErrMemory(a1, "allocating states\n");
      return v6;
    }

    v7[6] = 0;
    *(v7 + 1) = 0u;
    *(v7 + 2) = 0u;
    *v7 = 0u;
  }

  v8 = v6[6];
  v9 = *(v6 + 5);
  v11 = a2[1];
  v10 = a2[2];
  v12 = *a2;
  v6[6] = *(a2 + 6);
  *(v6 + 1) = v11;
  *(v6 + 2) = v10;
  *v6 = v12;
  v6[6] = v8;
  *(v6 + 5) = v9;
  v13 = *(a2 + 4);
  if (v13 >= 1)
  {
    if (v8)
    {
      if (v9 >= v13)
      {
LABEL_15:
        memcpy(v8, *(a2 + 6), 8 * *(a2 + 4));
        return v6;
      }

      v8 = malloc_type_realloc(v8, 8 * *(a2 + 5), 0x2004093837F09uLL);
      if (v8)
      {
        *(v6 + 5) = *(a2 + 5);
        v6[6] = v8;
        goto LABEL_15;
      }
    }

    else
    {
      v14 = *(a2 + 5);
      *(v6 + 5) = v14;
      v8 = malloc_type_malloc(8 * v14, 0x2004093837F09uLL);
      v6[6] = v8;
      if (v8)
      {
        goto LABEL_15;
      }
    }

    xmlRngVErrMemory(a1, "allocating states\n");
    *(v6 + 4) = 0;
  }

  return v6;
}

void xmlRelaxNGValidateCompiledCallback(uint64_t a1, const char *a2, _DWORD *a3, uint64_t a4)
{
  if (!a4)
  {
    fprintf(*MEMORY[0x1E69E9848], "callback on %s missing context\n", a2);
    return;
  }

  if (a3)
  {
    if (*a3 == 4)
    {
      v5 = xmlRelaxNGValidateDefinition(a4);
      if (v5)
      {
        *(a4 + 184) = v5;
      }

      return;
    }

    fprintf(*MEMORY[0x1E69E9848], "callback on %s define is not element\n");
  }

  else
  {
    if (*a2 == 35)
    {
      return;
    }

    fprintf(*MEMORY[0x1E69E9848], "callback on %s missing define\n");
  }

  if (!*(a4 + 68))
  {
    *(a4 + 68) = 37;
  }
}

uint64_t xmlRelaxNGNodeMatchesList(uint64_t a1, void **a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = *a2;
  if (!v3)
  {
    return 0;
  }

  for (i = a2 + 1; ; ++i)
  {
    v6 = *(a1 + 8);
    if (v6 == 1)
    {
      if (*v3 == 4)
      {
        result = xmlRelaxNGElementMatch(0, v3, a1);
        if (result == 1)
        {
          return result;
        }
      }

      goto LABEL_11;
    }

    if ((v6 - 3) <= 1)
    {
      v8 = *v3 - 3;
      if (v8 < 6 && ((0x35u >> v8) & 1) != 0)
      {
        break;
      }
    }

LABEL_11:
    v9 = *i;
    v3 = v9;
    if (!v9)
    {
      return 0;
    }
  }

  return 1;
}

const xmlChar *__cdecl xmlSAX2GetSystemId(const xmlChar *ctx)
{
  if (ctx)
  {
    v1 = *(ctx + 7);
    if (v1)
    {
      return *(v1 + 8);
    }

    else
    {
      return 0;
    }
  }

  return ctx;
}

int xmlSAX2GetLineNumber(void *ctx)
{
  if (ctx)
  {
    v1 = *(ctx + 7);
    if (v1)
    {
      LODWORD(ctx) = *(v1 + 52);
    }

    else
    {
      LODWORD(ctx) = 0;
    }
  }

  return ctx;
}

int xmlSAX2GetColumnNumber(void *ctx)
{
  if (ctx)
  {
    v1 = *(ctx + 7);
    if (v1)
    {
      LODWORD(ctx) = *(v1 + 56);
    }

    else
    {
      LODWORD(ctx) = 0;
    }
  }

  return ctx;
}

int xmlSAX2IsStandalone(void *ctx)
{
  if (ctx)
  {
    v1 = *(ctx + 2);
    if (v1)
    {
      LODWORD(ctx) = *(v1 + 76) == 1;
    }

    else
    {
      LODWORD(ctx) = 0;
    }
  }

  return ctx;
}

int xmlSAX2HasInternalSubset(void *ctx)
{
  if (ctx)
  {
    v1 = *(ctx + 2);
    if (v1)
    {
      LODWORD(ctx) = *(v1 + 80) != 0;
    }

    else
    {
      LODWORD(ctx) = 0;
    }
  }

  return ctx;
}

int xmlSAX2HasExternalSubset(void *ctx)
{
  if (ctx)
  {
    v1 = *(ctx + 2);
    if (v1)
    {
      LODWORD(ctx) = *(v1 + 88) != 0;
    }

    else
    {
      LODWORD(ctx) = 0;
    }
  }

  return ctx;
}

void xmlSAX2InternalSubset(void *ctx, const xmlChar *name, const xmlChar *ExternalID, const xmlChar *SystemID)
{
  if (ctx)
  {
    v5 = *(ctx + 2);
    if (v5)
    {
      IntSubset = xmlGetIntSubset(v5);
      if (IntSubset)
      {
        if (*(ctx + 13))
        {
          return;
        }

        v10 = IntSubset;
        xmlUnlinkNode(IntSubset);
        xmlFreeDtd(v10);
        v11 = *(ctx + 2);
        v11->intSubset = 0;
      }

      else
      {
        v11 = *(ctx + 2);
      }

      v12 = xmlCreateIntSubset(v11, name, ExternalID, SystemID);
      *(*(ctx + 2) + 80) = v12;
      if (!v12)
      {

        xmlSAX2ErrMemory(ctx, "xmlSAX2InternalSubset");
      }
    }
  }
}

xmlError *xmlSAX2ErrMemory(uint64_t *a1, const char *a2)
{
  *(a1 + 34) = 2;
  v3 = *a1;
  if (*a1 && *(v3 + 216) == -554844497)
  {
    v4 = *(v3 + 248);
  }

  else
  {
    v4 = 0;
  }

  result = __xmlRaiseError(v4, a1[21], a1[20], a1, 0, 1u, 2, 2, 0, 0, "out of memory\n", 0, 0, 0, 0, a2, "out of memory\n");
  *(a1 + 34) = 2;
  *(a1 + 68) = -1;
  *(a1 + 83) = 1;
  return result;
}

void xmlSAX2ExternalSubset(void *ctx, const xmlChar *name, const xmlChar *ExternalID, const xmlChar *SystemID)
{
  if (ctx && ExternalID | SystemID && (*(ctx + 39) || *(ctx + 108)))
  {
    if (*(ctx + 6))
    {
      if (*(ctx + 2))
      {
        if (*ctx)
        {
          v8 = *(*ctx + 32);
          if (v8)
          {
            v9 = v8(*(ctx + 1), ExternalID, SystemID);
            if (v9)
            {
              v10 = v9;
              xmlNewDtd(*(ctx + 2), name, ExternalID, SystemID);
              v11 = *(ctx + 7);
              v12 = *(ctx + 8);
              v13 = *(ctx + 9);
              v14 = *(ctx + 102);
              v15 = *(ctx + 5);
              *(ctx + 5) = 0;
              v16 = malloc_type_malloc(0x28uLL, 0x2004093837F09uLL);
              *(ctx + 9) = v16;
              if (v16)
              {
                *(ctx + 8) = 0x500000000;
                *(ctx + 7) = 0;
                if ((xmlPushInput(ctx, v10) & 0x80000000) == 0)
                {
                  v17 = *(ctx + 7);
                  if (*(v17 + 48) >= 4)
                  {
                    v18 = xmlDetectCharEncoding(*(v17 + 32), 4);
                    xmlSwitchEncoding(ctx, v18);
                  }

                  if (!*(v10 + 8))
                  {
                    *(v10 + 8) = xmlCanonicPath(SystemID);
                  }

                  *(v10 + 52) = 0x100000001;
                  v19 = *(*(ctx + 7) + 32);
                  *(v10 + 24) = v19;
                  *(v10 + 32) = v19;
                  *(v10 + 72) = 0;
                  xmlParseExternalSubset(ctx, ExternalID, SystemID);
                  if (*(ctx + 16) >= 2)
                  {
                    do
                    {
                      xmlPopInput(ctx);
                    }

                    while (*(ctx + 16) > 1);
                  }
                }
              }

              else
              {
                xmlSAX2ErrMemory(ctx, "xmlSAX2ExternalSubset");
              }

              xmlFreeInputStream(v10);
              free(*(ctx + 9));
              *(ctx + 7) = v11;
              *(ctx + 8) = v12;
              *(ctx + 9) = v13;
              *(ctx + 102) = v14;
              v20 = *(ctx + 5);
              if (!v20)
              {
                goto LABEL_25;
              }

              v21 = *(ctx + 57);
              if (v21)
              {
                if (xmlDictOwns(v21, v20))
                {
LABEL_25:
                  *(ctx + 5) = v15;
                  return;
                }

                v20 = *(ctx + 5);
              }

              free(v20);
              goto LABEL_25;
            }
          }
        }
      }
    }
  }
}

xmlParserInputPtr xmlSAX2ResolveEntity(void *ctx, const xmlChar *publicId, const xmlChar *systemId)
{
  ExternalEntity = ctx;
  if (ctx)
  {
    v6 = *(ctx + 7);
    if (!v6 || (v7 = *(v6 + 8)) == 0)
    {
      v7 = *(ctx + 35);
    }

    if (xmlStrlen(systemId) > 2000 || xmlStrlen(v7) >= 2001)
    {
      xmlFatalErrMsg_0(ExternalEntity, 91, "URI too long", 0);
      return 0;
    }

    v9 = xmlBuildURI(systemId, v7);
    if (!v9)
    {
      xmlSAX2ErrMemory(&ExternalEntity->domain, "xmlSAX2ResolveEntity");
      return 0;
    }

    v10 = v9;
    if (xmlStrlen(v9) < 2001)
    {
      ExternalEntity = xmlLoadExternalEntity(v10, publicId, ExternalEntity);
    }

    else
    {
      xmlFatalErrMsg_0(ExternalEntity, 91, "URI too long", 0);
      ExternalEntity = 0;
    }

    free(v10);
  }

  return ExternalEntity;
}

xmlError *xmlFatalErrMsg_0(xmlError *result, int a2, const char *a3, const xmlChar *a4)
{
  v4 = result;
  if (!result[3].int2 || LODWORD(result[3].message) != -1)
  {
    LODWORD(result[1].str2) = a2;
    result = __xmlRaiseError(0, 0, 0, result, 0, 1u, a2, 3, 0, 0, a4, 0, 0, 0, 0, a3, a4);
    LODWORD(v4->file) = 0;
    v4[1].int1 = 0;
    if (!LODWORD(v4[5].message))
    {
      v4[3].int2 = 1;
    }
  }

  return result;
}

xmlEntityPtr xmlSAX2GetEntity(void *ctx, const xmlChar *name)
{
  if (!ctx)
  {
    return 0;
  }

  if (!*(ctx + 84))
  {
    PredefinedEntity = xmlGetPredefinedEntity(name);
    if (PredefinedEntity)
    {
      return PredefinedEntity;
    }
  }

  v4 = *(ctx + 2);
  if (v4 && v4->standalone == 1)
  {
    if (*(ctx + 84) == 2)
    {
      v4->standalone = 0;
      result = xmlGetDocEntity(v4, name);
      *(*(ctx + 2) + 76) = 1;
      return result;
    }

    PredefinedEntity = xmlGetDocEntity(v4, name);
    if (!PredefinedEntity)
    {
      v8 = *(ctx + 2);
      v8->standalone = 0;
      DocEntity = xmlGetDocEntity(v8, name);
      if (DocEntity)
      {
        xmlFatalErrMsg_0(ctx, 103, "Entity(%s) document marked standalone but requires external subset\n", name);
      }

      *(*(ctx + 2) + 76) = 1;
      return DocEntity;
    }

    return PredefinedEntity;
  }

  return xmlGetDocEntity(v4, name);
}

xmlEntityPtr xmlSAX2GetParameterEntity(xmlEntityPtr ctx, const xmlChar *name)
{
  if (ctx)
  {
    return xmlGetParameterEntity(ctx->name, name);
  }

  return ctx;
}

void xmlSAX2EntityDecl(void *ctx, const xmlChar *name, int type, const xmlChar *publicId, const xmlChar *systemId, xmlChar *content)
{
  if (ctx)
  {
    v9 = *(ctx + 84);
    if (v9 == 2)
    {
      v13 = xmlAddDtdEntity(*(ctx + 2), name, type, publicId, systemId, content);
      if (v13)
      {
        if (systemId)
        {
          v14 = v13;
          if (!v13->URI)
          {
            v15 = *(ctx + 7);
            if (!v15 || (v16 = *(v15 + 8)) == 0)
            {
              v16 = *(ctx + 35);
            }

            v17 = xmlBuildURI(systemId, v16);
            if (v17)
            {
              v18 = v17;
              if (xmlStrlen(v17) < 2001)
              {
                v14->URI = v18;
              }

              else
              {
                xmlFatalErrMsg_0(ctx, 91, "URI too long", name);

                free(v18);
              }
            }

            else
            {

              xmlSAX2ErrMemory(ctx, "xmlSAX2EntityDecl");
            }
          }
        }
      }

      else if (*(ctx + 105))
      {
        if (*ctx)
        {
          v19 = *(*ctx + 168);
          if (v19)
          {
            v19(*(ctx + 1), "Entity(%s) already defined in the external subset\n", name);
          }
        }
      }
    }

    else if (v9 == 1)
    {
      v10 = xmlAddDocEntity(*(ctx + 2), name, type, publicId, systemId, content);
      if (v10)
      {
        if (systemId && !v10->URI)
        {
          v11 = *(ctx + 7);
          if (!v11 || (v12 = *(v11 + 8)) == 0)
          {
            v12 = *(ctx + 35);
          }

          v10->URI = xmlBuildURI(systemId, v12);
        }
      }

      else if (*(ctx + 105) && (!*(ctx + 83) || *(ctx + 68) != -1))
      {
        *(ctx + 34) = 107;
        __xmlRaiseError(0, 0, 0, ctx, 0, 1u, 107, 1, 0, 0, name, 0, 0, 0, 0, "Entity(%s) already defined in the internal subset\n", name);
      }
    }

    else
    {

      xmlFatalErrMsg_0(ctx, 104, "SAX.xmlSAX2EntityDecl(%s) called while not in subset\n", name);
    }
  }
}

void xmlSAX2AttributeDecl(void *ctx, const xmlChar *elem, const xmlChar *fullname, int type, int def, const xmlChar *defaultValue, xmlEnumerationPtr tree)
{
  prefix = 0;
  if (ctx && *(ctx + 2))
  {
    v14 = xmlStrEqual(fullname, "xml:id");
    if (type != 2 && v14)
    {
      v15 = *(ctx + 38);
      xmlErrValid(ctx, 540, "xml:id : attribute type should be ID\n", 0, 0);
      *(ctx + 38) = v15;
    }

    v16 = xmlSplitQName(ctx, fullname, &prefix);
    *(ctx + 56) = 1;
    v17 = *(ctx + 84);
    if (v17 == 2)
    {
      v18 = *(*(ctx + 2) + 88);
    }

    else
    {
      if (v17 != 1)
      {
        xmlFatalErrMsg_0(ctx, 1, "SAX.xmlSAX2AttributeDecl(%s) called while not in subset\n", v16);
        free(v16);
        xmlFreeEnumeration(tree);
        return;
      }

      v18 = *(*(ctx + 2) + 80);
    }

    v19 = xmlAddAttributeDecl((ctx + 160), v18, elem, v16, prefix, type, def, defaultValue, tree);
    if (!*(ctx + 56))
    {
      *(ctx + 38) = 0;
    }

    if (v19)
    {
      if (*(ctx + 39))
      {
        if (*(ctx + 6))
        {
          v20 = *(ctx + 2);
          if (v20->intSubset)
          {
            *(ctx + 38) &= xmlValidateAttributeDecl((ctx + 160), v20, v19);
          }
        }
      }
    }

    if (prefix)
    {
      free(prefix);
    }

    if (v16)
    {
      free(v16);
    }
  }
}

xmlError *xmlErrValid(xmlError *result, int a2, const char *a3, const xmlChar *a4, xmlChar *a5)
{
  v5 = result;
  if (!result[3].int2 || LODWORD(result[3].message) != -1)
  {
    LODWORD(result[1].str2) = a2;
    v6 = *&result->domain;
    if (*&result->domain && *(v6 + 216) == -554844497)
    {
      v7 = *(v6 + 248);
    }

    else
    {
      v7 = 0;
    }

    result = __xmlRaiseError(v7, v5[1].node, v5[1].ctxt, v5, 0, 4u, a2, 2, 0, 0, a4, a5, 0, 0, 0, a3, a4);
    v5[1].int1 = 0;
  }

  return result;
}

void xmlSAX2ElementDecl(void *ctx, const xmlChar *name, int type, xmlElementContentPtr content)
{
  if (!ctx)
  {
    return;
  }

  v5 = *(ctx + 2);
  if (!v5)
  {
    return;
  }

  v6 = *(ctx + 84);
  if (v6 == 1)
  {
    v7 = 80;
    goto LABEL_7;
  }

  if (v6 == 2)
  {
    v7 = 88;
LABEL_7:
    v8 = xmlAddElementDecl((ctx + 160), *(v5 + v7), name, type, content);
    if (!v8)
    {
      *(ctx + 38) = 0;
    }

    if (*(ctx + 39))
    {
      if (*(ctx + 6))
      {
        v9 = *(ctx + 2);
        if (v9)
        {
          if (v9->intSubset)
          {
            *(ctx + 38) &= xmlValidateElementDecl((ctx + 160), v9, v8);
          }
        }
      }
    }

    return;
  }

  xmlFatalErrMsg_0(ctx, 1, "SAX.xmlSAX2ElementDecl(%s) called while not in subset\n", name);
}

void xmlSAX2NotationDecl(void *ctx, const xmlChar *name, const xmlChar *publicId, const xmlChar *systemId)
{
  if (!ctx)
  {
    return;
  }

  v5 = *(ctx + 2);
  if (!v5)
  {
    return;
  }

  if (!(publicId | systemId))
  {
    v6 = "SAX.xmlSAX2NotationDecl(%s) externalID or PublicID missing\n";
LABEL_17:

    xmlFatalErrMsg_0(ctx, 105, v6, name);
    return;
  }

  v7 = *(ctx + 84);
  if (v7 == 1)
  {
    v8 = 80;
  }

  else
  {
    if (v7 != 2)
    {
      v6 = "SAX.xmlSAX2NotationDecl(%s) called while not in subset\n";
      goto LABEL_17;
    }

    v8 = 88;
  }

  v9 = xmlAddNotationDecl((ctx + 160), *(v5 + v8), name, publicId, systemId);
  if (!v9)
  {
    *(ctx + 38) = 0;
  }

  if (*(ctx + 39))
  {
    if (*(ctx + 6))
    {
      v10 = *(ctx + 2);
      if (v10->intSubset)
      {
        *(ctx + 38) &= xmlValidateNotationDecl((ctx + 160), v10, v9);
      }
    }
  }
}

void xmlSAX2UnparsedEntityDecl(void *ctx, const xmlChar *name, const xmlChar *publicId, const xmlChar *systemId, const xmlChar *notationName)
{
  if (!ctx)
  {
    return;
  }

  v7 = *(ctx + 84);
  if (v7 != 2)
  {
    if (v7 != 1)
    {

      xmlFatalErrMsg_0(ctx, 1, "SAX.xmlSAX2UnparsedEntityDecl(%s) called while not in subset\n", name);
      return;
    }

    v8 = xmlAddDocEntity(*(ctx + 2), name, 3, publicId, systemId, notationName);
    if (!v8)
    {
      if (*(ctx + 105))
      {
        if (*ctx)
        {
          v9 = *(*ctx + 168);
          if (v9)
          {
            v10 = *(ctx + 1);
            v11 = "Entity(%s) already defined in the internal subset\n";
LABEL_23:
            v9(v10, v11);
            return;
          }
        }
      }

      return;
    }

LABEL_10:
    if (systemId && !v8->URI)
    {
      v12 = *(ctx + 7);
      if (!v12 || (v13 = *(v12 + 8)) == 0)
      {
        v13 = *(ctx + 35);
      }

      v8->URI = xmlBuildURI(systemId, v13);
    }

    return;
  }

  v8 = xmlAddDtdEntity(*(ctx + 2), name, 3, publicId, systemId, notationName);
  if (v8)
  {
    goto LABEL_10;
  }

  if (*(ctx + 105))
  {
    if (*ctx)
    {
      v9 = *(*ctx + 168);
      if (v9)
      {
        v10 = *(ctx + 1);
        v11 = "Entity(%s) already defined in the external subset\n";
        goto LABEL_23;
      }
    }
  }
}

void xmlSAX2AttributeInternal(xmlParserCtxt *ctxt, xmlChar *name, xmlChar *a3, const xmlChar *a4)
{
  prefix = 0;
  if (ctxt->html)
  {
    v8 = xmlStrdup(name);
    prefix = 0;
    if (!v8)
    {
LABEL_16:
      xmlSAX2ErrMemory(ctxt, "xmlSAX2StartElement");
      goto LABEL_102;
    }
  }

  else
  {
    v9 = xmlSplitQName(ctxt, name, &prefix);
    if (!v9)
    {
      goto LABEL_16;
    }

    v8 = v9;
    if (!*v9)
    {
      if (xmlStrEqual(prefix, "xmlns"))
      {
        xmlNsErrMsg(ctxt, 35, "invalid namespace declaration '%s'\n", name, 0);
      }

      else
      {
        xmlNsWarnMsg(ctxt, 106, "Avoid attribute ending with ':' like '%s'\n", name, 0);
      }

      if (prefix)
      {
        free(prefix);
      }

      prefix = 0;
      free(v8);
      v8 = xmlStrdup(name);
      if (!v8)
      {
        goto LABEL_16;
      }
    }
  }

  if (!a3 && ctxt->html && htmlIsBooleanAttr(name))
  {
    a3 = xmlStrdup(name);
    v10 = a3;
  }

  else
  {
    ctxt->vctxt.valid = 1;
    v11 = xmlValidCtxtNormalizeAttributeValue(&ctxt->vctxt, ctxt->myDoc, ctxt->node, name, a3);
    v10 = v11;
    if (ctxt->vctxt.valid != 1)
    {
      ctxt->valid = 0;
    }

    if (v11)
    {
      a3 = v11;
    }
  }

  html = ctxt->html;
  if (!html && !prefix)
  {
    if (*v8 == 120 && v8[1] == 109 && v8[2] == 108 && v8[3] == 110 && v8[4] == 115 && !v8[5])
    {
      v13 = a3;
      if (ctxt->replaceEntities || (++ctxt->depth, v13 = xmlStringDecodeEntities(ctxt, a3, 1, 0, 0, 0), --ctxt->depth, v13))
      {
        if (*v13)
        {
          v14 = xmlParseURI(v13);
          if (v14)
          {
            v15 = v14;
            if (!v14->scheme)
            {
              if (ctxt->sax)
              {
                warning = ctxt->sax->warning;
                if (warning)
                {
                  warning(ctxt->userData, "xmlns: URI %s is not absolute\n", v13);
                }
              }
            }

            xmlFreeURI(v15);
          }

          else if (ctxt->sax)
          {
            v38 = ctxt->sax->warning;
            if (v38)
            {
              v38(ctxt->userData, "xmlns: %s not a valid URI\n", v13);
            }
          }
        }

        v16 = xmlNewNs(ctxt->node, v13, 0);
        if (v16)
        {
          if (ctxt->validate)
          {
            if (ctxt->wellFormed)
            {
              myDoc = ctxt->myDoc;
              if (myDoc)
              {
                if (myDoc->intSubset)
                {
                  v18 = v16;
                  node = ctxt->node;
                  p_vctxt = &ctxt->vctxt;
                  v21 = a4;
                  v22 = v13;
LABEL_129:
                  ctxt->valid &= xmlValidateOneNamespace(p_vctxt, myDoc, node, v21, v18, v22);
                  goto LABEL_130;
                }
              }
            }
          }
        }

        goto LABEL_130;
      }

      xmlSAX2ErrMemory(ctxt, "xmlSAX2StartElement");
LABEL_120:
      free(v8);
      v13 = v10;
      if (!v10)
      {
        return;
      }

LABEL_103:
      free(v13);
      return;
    }

    goto LABEL_68;
  }

  if (html || !prefix)
  {
    if (!prefix)
    {
LABEL_68:
      v25 = 0;
      goto LABEL_70;
    }

LABEL_60:
    v25 = xmlSearchNs(ctxt->myDoc, ctxt->node, prefix);
    if (v25)
    {
      properties = ctxt->node->properties;
      if (properties)
      {
        while (1)
        {
          if (properties->ns)
          {
            if (xmlStrEqual(v8, properties->name))
            {
              ns = properties->ns;
              if (v25 == ns || xmlStrEqual(v25->href, ns->href))
              {
                break;
              }
            }
          }

          properties = properties->next;
          if (!properties)
          {
            goto LABEL_70;
          }
        }

        xmlNsErrMsg(ctxt, 42, "Attribute %s in %s redefined\n", v8, v25->href);
        ctxt->wellFormed = 0;
        if (!ctxt->recovery)
        {
          ctxt->disableSAX = 1;
        }

        v33 = v8;
        goto LABEL_97;
      }
    }

    else
    {
      xmlNsErrMsg(ctxt, 201, "Namespace prefix %s of attribute %s is not defined\n", prefix, v8);
    }

LABEL_70:
    v28 = xmlNewNsPropEatName(ctxt->node, v25, v8, 0);
    if (v28)
    {
      if (ctxt->replaceEntities || ctxt->html)
      {
        if (a3)
        {
          v29 = xmlNewDocText(ctxt->myDoc, a3);
          v28->children = v29;
          v28->last = v29;
          if (v29)
          {
            v29->parent = v28;
          }
        }
      }

      else
      {
        NodeList = xmlStringGetNodeList(ctxt->myDoc, a3);
        v28->children = NodeList;
        if (NodeList)
        {
          do
          {
            v31 = NodeList;
            NodeList->parent = v28;
            NodeList = NodeList->next;
          }

          while (NodeList);
          v28->last = v31;
        }
      }
    }

    if (ctxt->html || !ctxt->validate || !ctxt->wellFormed || (v32 = ctxt->myDoc) == 0 || !v32->intSubset)
    {
      if ((ctxt->loadsubset & 8) != 0)
      {
        goto LABEL_100;
      }

      if (ctxt->replaceEntities)
      {
        if (ctxt->inSubset)
        {
          goto LABEL_100;
        }
      }

      else if (ctxt->external == 2)
      {
        goto LABEL_100;
      }

      if (xmlStrEqual(name, "xml:id"))
      {
        if (xmlValidateNCName(a3, 1))
        {
          xmlErrValid(ctxt, 539, "xml:id : attribute value %s is not an NCName\n", a3, 0);
        }
      }

      else if (!xmlIsID(ctxt->myDoc, ctxt->node, v28))
      {
        if (xmlIsRef(ctxt->myDoc, ctxt->node, v28))
        {
          xmlAddRef(&ctxt->vctxt, ctxt->myDoc, a3, v28);
        }

        goto LABEL_100;
      }

      xmlAddID(&ctxt->vctxt, ctxt->myDoc, a3, v28);
LABEL_100:
      if (v10)
      {
        free(v10);
      }

LABEL_102:
      v13 = prefix;
      if (!prefix)
      {
        return;
      }

      goto LABEL_103;
    }

    if (ctxt->replaceEntities)
    {
LABEL_89:
      ctxt->valid &= xmlValidateOneAttribute(&ctxt->vctxt, v32, ctxt->node, v28, a3);
      goto LABEL_100;
    }

    ++ctxt->depth;
    v34 = xmlStringDecodeEntities(ctxt, a3, 1, 0, 0, 0);
    --ctxt->depth;
    if (!v34)
    {
      v32 = ctxt->myDoc;
      goto LABEL_89;
    }

    v35 = v34;
    v36 = xmlValidNormalizeAttributeValue(ctxt->myDoc, ctxt->node, name, v34);
    if (v36)
    {
      v37 = v36;
      free(v35);
      v35 = v37;
    }

    ctxt->valid &= xmlValidateOneAttribute(&ctxt->vctxt, ctxt->myDoc, ctxt->node, v28, v35);
    v33 = v35;
LABEL_97:
    free(v33);
    goto LABEL_100;
  }

  if (*prefix != 120 || prefix[1] != 109 || prefix[2] != 108 || prefix[3] != 110 || prefix[4] != 115 || prefix[5])
  {
    goto LABEL_60;
  }

  v13 = a3;
  if (!ctxt->replaceEntities)
  {
    ++ctxt->depth;
    v13 = xmlStringDecodeEntities(ctxt, a3, 1, 0, 0, 0);
    --ctxt->depth;
    if (!v13)
    {
      xmlSAX2ErrMemory(ctxt, "xmlSAX2StartElement");
      free(prefix);
      goto LABEL_120;
    }
  }

  if (!*v13)
  {
    xmlNsErrMsg(ctxt, 204, "Empty namespace name for prefix %s\n", v8, 0);
  }

  if (ctxt->pedantic && *v13)
  {
    v23 = xmlParseURI(v13);
    if (v23)
    {
      v24 = v23;
      if (!v23->scheme)
      {
        xmlNsWarnMsg(ctxt, 100, "xmlns:%s: URI %s is not absolute\n", v8, a3);
      }

      xmlFreeURI(v24);
    }

    else
    {
      xmlNsWarnMsg(ctxt, 99, "xmlns:%s: %s not a valid URI\n", v8, a3);
    }
  }

  v40 = xmlNewNs(ctxt->node, v13, v8);
  free(prefix);
  if (v40)
  {
    if (ctxt->validate)
    {
      if (ctxt->wellFormed)
      {
        myDoc = ctxt->myDoc;
        if (myDoc)
        {
          if (myDoc->intSubset)
          {
            node = ctxt->node;
            p_vctxt = &ctxt->vctxt;
            v21 = a4;
            v18 = v40;
            v22 = a3;
            goto LABEL_129;
          }
        }
      }
    }
  }

LABEL_130:
  free(v8);
  if (v10)
  {
    free(v10);
  }

  if (v13 != a3)
  {
    goto LABEL_103;
  }
}

xmlError *xmlNsWarnMsg(xmlError *result, int a2, const char *a3, const xmlChar *a4, xmlChar *a5)
{
  if (!result[3].int2 || LODWORD(result[3].message) != -1)
  {
    LODWORD(result[1].str2) = a2;
    return __xmlRaiseError(0, 0, 0, result, 0, 3u, a2, 1, 0, 0, a4, a5, 0, 0, 0, a3, a4);
  }

  return result;
}

void xmlSAX2Reference(void *ctx, const xmlChar *name)
{
  if (ctx)
  {
    v3 = *(ctx + 2);
    v4 = *name == 35 ? xmlNewCharRef(v3, name) : xmlNewReference(v3, name);
    v5 = v4;
    if (!xmlAddChild(*(ctx + 10), v4))
    {

      xmlFreeNode(v5);
    }
  }
}

void xmlSAX2ProcessingInstruction(void *ctx, const xmlChar *target, const xmlChar *data)
{
  if (!ctx)
  {
    return;
  }

  v4 = *(ctx + 10);
  v5 = xmlNewDocPI(*(ctx + 2), target, data);
  if (!v5)
  {
    return;
  }

  v6 = v5;
  if (*(ctx + 109))
  {
    v7 = *(ctx + 7);
    if (v7)
    {
      v8 = *(v7 + 52);
      if (v8 >= 0xFFFF)
      {
        LOWORD(v8) = -1;
      }

      v5->line = v8;
    }
  }

  v9 = *(ctx + 84);
  if (v9 == 2)
  {
    v10 = *(*(ctx + 2) + 88);
    goto LABEL_19;
  }

  if (v9 == 1)
  {
    v10 = *(*(ctx + 2) + 80);
    goto LABEL_19;
  }

  if (!v4)
  {
    v10 = *(ctx + 2);
    goto LABEL_19;
  }

  v10 = v4;
  if (*(v4 + 8) == 1)
  {
LABEL_19:

    xmlAddChild(v10, v6);
    return;
  }

  xmlAddSibling(v4, v6);
}

void xmlSAX2Comment(void *ctx, const xmlChar *value)
{
  if (!ctx)
  {
    return;
  }

  v3 = *(ctx + 10);
  v4 = xmlNewDocComment(*(ctx + 2), value);
  if (!v4)
  {
    return;
  }

  v5 = v4;
  if (*(ctx + 109))
  {
    v6 = *(ctx + 7);
    if (v6)
    {
      v7 = *(v6 + 52);
      if (v7 >= 0xFFFF)
      {
        LOWORD(v7) = -1;
      }

      v4->line = v7;
    }
  }

  v8 = *(ctx + 84);
  if (v8 == 2)
  {
    v9 = *(*(ctx + 2) + 88);
    goto LABEL_19;
  }

  if (v8 == 1)
  {
    v9 = *(*(ctx + 2) + 80);
    goto LABEL_19;
  }

  if (!v3)
  {
    v9 = *(ctx + 2);
    goto LABEL_19;
  }

  v9 = v3;
  if (*(v3 + 8) == 1)
  {
LABEL_19:

    xmlAddChild(v9, v5);
    return;
  }

  xmlAddSibling(v3, v5);
}

int xmlSAXDefaultVersion(int version)
{
  if ((version - 3) < 0xFFFFFFFE)
  {
    return -1;
  }

  result = xmlSAX2DefaultVersionValue;
  xmlSAX2DefaultVersionValue = version;
  return result;
}

void xmlSAX2InitDefaultSAXHandler(xmlSAXHandler *hdlr, int warning)
{
  if (hdlr && !hdlr->initialized)
  {
    xmlSAXVersion(hdlr, xmlSAX2DefaultVersionValue);
    if (warning)
    {
      v4 = xmlParserWarning;
    }

    else
    {
      v4 = 0;
    }

    hdlr->warning = v4;
  }
}

void xmlSAX2InitDocbDefaultSAXHandler(xmlSAXHandler *hdlr)
{
  if (hdlr)
  {
    if (!hdlr->initialized)
    {
      hdlr->internalSubset = xmlSAX2InternalSubset;
      hdlr->externalSubset = 0;
      hdlr->isStandalone = xmlSAX2IsStandalone;
      hdlr->hasInternalSubset = xmlSAX2HasInternalSubset;
      hdlr->hasExternalSubset = xmlSAX2HasExternalSubset;
      hdlr->resolveEntity = xmlSAX2ResolveEntity;
      hdlr->getEntity = xmlSAX2GetEntity;
      hdlr->entityDecl = xmlSAX2EntityDecl;
      *&hdlr->notationDecl = 0u;
      *&hdlr->elementDecl = 0u;
      hdlr->setDocumentLocator = xmlSAX2SetDocumentLocator;
      hdlr->startDocument = xmlSAX2StartDocument;
      hdlr->endDocument = xmlSAX2EndDocument;
      hdlr->startElement = xmlSAX2StartElement;
      hdlr->endElement = xmlSAX2EndElement;
      hdlr->reference = xmlSAX2Reference;
      hdlr->characters = xmlSAX2Characters;
      hdlr->getParameterEntity = 0;
      hdlr->cdataBlock = 0;
      hdlr->ignorableWhitespace = xmlSAX2IgnorableWhitespace;
      hdlr->processingInstruction = 0;
      hdlr->comment = xmlSAX2Comment;
      hdlr->warning = xmlParserWarning;
      hdlr->error = xmlParserError;
      hdlr->fatalError = xmlParserError;
      hdlr->initialized = 1;
    }
  }
}

void docbDefaultSAXHandlerInit(void)
{
  v0 = __docbDefaultSAXHandler();

  xmlSAX2InitDocbDefaultSAXHandler(v0);
}

xmlError *xmlNsErrMsg(xmlError *result, int a2, const char *a3, const xmlChar *a4, xmlChar *a5)
{
  if (!result[3].int2 || LODWORD(result[3].message) != -1)
  {
    LODWORD(result[1].str2) = a2;
    return __xmlRaiseError(0, 0, 0, result, 0, 3u, a2, 2, 0, 0, a4, a5, 0, 0, 0, a3, a4);
  }

  return result;
}

xmlChar *xmlSAX2DecodeAttrEntities(xmlParserCtxtPtr ctxt, const xmlChar *a2, unint64_t a3)
{
  v4 = a2;
  while (v4 < a3)
  {
    v5 = *v4++;
    if (v5 == 38)
    {
      ++ctxt->depth;
      result = xmlStringLenDecodeEntities(ctxt, a2, a3 - a2, 1, 0, 0, 0);
      --ctxt->depth;
      return result;
    }
  }

  return 0;
}

void xmlSchematronFree(xmlSchematronPtr schema)
{
  if (schema)
  {
    v2 = *(schema + 2);
    if (v2 && !*(schema + 2))
    {
      xmlFreeDoc(v2);
    }

    v3 = *(schema + 11);
    if (v3)
    {
      free(v3);
    }

    v4 = *(schema + 9);
    if (v4)
    {
      do
      {
        v5 = *v4;
        v6 = v4[4];
        if (v6)
        {
          do
          {
            v7 = *v6;
            v8 = v6[3];
            if (v8)
            {
              free(v8);
            }

            v9 = v6[4];
            if (v9)
            {
              xmlXPathFreeCompExpr(v9);
            }

            v10 = v6[5];
            if (v10)
            {
              free(v10);
            }

            free(v6);
            v6 = v7;
          }

          while (v7);
        }

        v11 = v4[3];
        if (v11)
        {
          free(v11);
        }

        v12 = v4[5];
        if (v12)
        {
          xmlFreePattern(v12);
        }

        v13 = v4[6];
        if (v13)
        {
          free(v13);
        }

        free(v4);
        v4 = v5;
      }

      while (v5);
    }

    v14 = *(schema + 8);
    if (v14)
    {
      do
      {
        v15 = *v14;
        v16 = v14[2];
        if (v16)
        {
          free(v16);
        }

        free(v14);
        v14 = v15;
      }

      while (v15);
    }

    xmlDictFree(*(schema + 5));

    free(schema);
  }
}

xmlSchematronParserCtxtPtr xmlSchematronNewParserCtxt(const char *URL)
{
  if (!URL)
  {
    return 0;
  }

  v2 = malloc_type_malloc(0x90uLL, 0x10F0040B9406136uLL);
  v3 = v2;
  if (!v2)
  {
    __xmlSimpleError(0x10u, 2, 0, 0, "allocating schema parser context");
    return v3;
  }

  v2[8] = 0u;
  *(v2 + 116) = 0u;
  *(v2 + 100) = 0u;
  *(v2 + 84) = 0u;
  *(v2 + 68) = 0u;
  *(v2 + 52) = 0u;
  *(v2 + 36) = 0u;
  *(v2 + 20) = 0u;
  *(v2 + 4) = 0u;
  *v2 = 1;
  v4 = xmlDictCreate();
  *(v3 + 6) = v4;
  *(v3 + 1) = xmlDictLookup(v4, URL, -1);
  *(v3 + 13) = 0;
  v5 = xmlXPathNewContext(0);
  *(v3 + 8) = v5;
  if (!v5)
  {
    __xmlSimpleError(0x10u, 2, 0, 0, "allocating schema parser XPath context");
    xmlSchematronFreeParserCtxt(v3);
    return 0;
  }

  v5->flags = 1;
  return v3;
}

void xmlSchematronFreeParserCtxt(xmlSchematronParserCtxtPtr ctxt)
{
  if (ctxt)
  {
    v2 = *(ctxt + 2);
    if (v2 && !*(ctxt + 6))
    {
      xmlFreeDoc(v2);
    }

    v3 = *(ctxt + 8);
    if (v3)
    {
      xmlXPathFreeContext(v3);
    }

    v4 = *(ctxt + 11);
    if (v4)
    {
      free(v4);
    }

    xmlDictFree(*(ctxt + 6));

    free(ctxt);
  }
}

xmlSchematronParserCtxtPtr xmlSchematronNewMemParserCtxt(const char *buffer, int size)
{
  v2 = 0;
  if (buffer && size >= 1)
  {
    v5 = malloc_type_malloc(0x90uLL, 0x10F0040B9406136uLL);
    v2 = v5;
    if (v5)
    {
      v5[7] = 0u;
      v5[8] = 0u;
      v5[5] = 0u;
      v5[6] = 0u;
      v5[3] = 0u;
      v5[4] = 0u;
      v5[1] = 0u;
      v5[2] = 0u;
      *v5 = 0u;
      *(v5 + 4) = buffer;
      *(v5 + 10) = size;
      *(v5 + 6) = xmlDictCreate();
      v6 = xmlXPathNewContext(0);
      *(v2 + 8) = v6;
      if (!v6)
      {
        __xmlSimpleError(0x10u, 2, 0, 0, "allocating schema parser XPath context");
        xmlSchematronFreeParserCtxt(v2);
        return 0;
      }
    }

    else
    {
      __xmlSimpleError(0x10u, 2, 0, 0, "allocating schema parser context");
    }
  }

  return v2;
}

xmlSchematronParserCtxtPtr xmlSchematronNewDocParserCtxt(xmlDocPtr doc)
{
  if (!doc)
  {
    return 0;
  }

  v2 = malloc_type_malloc(0x90uLL, 0x10F0040B9406136uLL);
  v3 = v2;
  if (!v2)
  {
    __xmlSimpleError(0x10u, 2, 0, 0, "allocating schema parser context");
    return v3;
  }

  *(v2 + 7) = 0u;
  *(v2 + 8) = 0u;
  *(v2 + 5) = 0u;
  *(v2 + 6) = 0u;
  *(v2 + 3) = 0u;
  *(v2 + 4) = 0u;
  *(v2 + 1) = 0u;
  *(v2 + 2) = 0u;
  *v2 = 0u;
  *(v2 + 2) = doc;
  *(v2 + 6) = xmlDictCreate();
  *(v3 + 6) = 1;
  v4 = xmlXPathNewContext(doc);
  *(v3 + 8) = v4;
  if (!v4)
  {
    __xmlSimpleError(0x10u, 2, 0, 0, "allocating schema parser XPath context");
    xmlSchematronFreeParserCtxt(v3);
    return 0;
  }

  return v3;
}

xmlSchematronPtr xmlSchematronParse(xmlSchematronParserCtxtPtr ctxt)
{
  if (!ctxt)
  {
    return 0;
  }

  *(ctxt + 14) = 0;
  v2 = *(ctxt + 1);
  if (v2)
  {
    File = xmlReadFile(v2, 0, 2);
    if (File)
    {
      v4 = File;
      v5 = 0;
LABEL_8:
      v9 = 1;
      goto LABEL_9;
    }

    v17 = *(ctxt + 1);
    v18 = "xmlSchematronParse: could not load '%s'.\n";
    v19 = ctxt;
    v20 = 1757;
    goto LABEL_40;
  }

  v6 = *(ctxt + 4);
  if (v6)
  {
    Memory = xmlReadMemory(v6, *(ctxt + 10), 0, 0, 2);
    if (Memory)
    {
      v4 = Memory;
      Memory->URL = xmlStrdup("in_memory_buffer");
      v8 = xmlDictLookup(*(ctxt + 6), "in_memory_buffer", -1);
      v5 = 0;
      *(ctxt + 1) = v8;
      goto LABEL_8;
    }

    v18 = "xmlSchematronParse: could not parse.\n";
    v19 = ctxt;
    v20 = 1766;
    goto LABEL_39;
  }

  v4 = *(ctxt + 2);
  if (!v4)
  {
    v18 = "xmlSchematronParse: could not parse.\n";
    v19 = ctxt;
    v20 = 1758;
LABEL_39:
    v17 = 0;
LABEL_40:
    xmlSchematronPErr(v19, 0, v20, v18, v17);
    return 0;
  }

  v9 = 0;
  v5 = 1;
LABEL_9:
  *(ctxt + 6) = v5;
  RootElement = xmlDocGetRootElement(v4);
  if (!RootElement)
  {
    xmlSchematronPErr(ctxt, v4, 1759, "The schema has no document element.\n", 0);
    if (v9)
    {
      xmlFreeDoc(v4);
    }

    return 0;
  }

  v11 = RootElement;
  if (RootElement->type != XML_ELEMENT_NODE || !RootElement->ns || !xmlStrEqual(RootElement->name, "schema") || !xmlStrEqual(*(*(v11 + 72) + 16), "http://purl.oclc.org/dsdl/schematron") && !xmlStrEqual(*(*(v11 + 72) + 16), "http://www.ascc.net/xml/schematron"))
  {
    xmlSchematronPErr(ctxt, v11, 1759, "The XML document '%s' is not a XML schematron document", *(ctxt + 1));
    v13 = 0;
    goto LABEL_26;
  }

  v12 = malloc_type_malloc(0x60uLL, 0x10F004073DB652CuLL);
  v13 = v12;
  if (!v12)
  {
    ++*(ctxt + 14);
    __xmlSimpleError(0x10u, 2, 0, 0, "allocating schema");
    goto LABEL_26;
  }

  v12[4] = 0u;
  v12[5] = 0u;
  v12[2] = 0u;
  v12[3] = 0u;
  *v12 = 0u;
  v12[1] = 0u;
  v14 = *(ctxt + 6);
  *(v13 + 5) = v14;
  xmlDictReference(v14);
  *(ctxt + 9) = v13;
  v15 = *(v11 + 24);
  if (!v15)
  {
    goto LABEL_22;
  }

  while (1)
  {
    if (*(v15 + 8) == 1)
    {
      v16 = *(v15 + 72);
      if (v16)
      {
        if (xmlStrEqual(*(v16 + 16), "http://purl.oclc.org/dsdl/schematron") || xmlStrEqual(*(*(v15 + 72) + 16), "http://www.ascc.net/xml/schematron"))
        {
          break;
        }
      }
    }

    v15 = *(v15 + 48);
    if (!v15)
    {
      goto LABEL_22;
    }
  }

  if (*(v15 + 8) == 1 && *(v15 + 72) && xmlStrEqual(*(v15 + 16), "title") && (xmlStrEqual(*(*(v15 + 72) + 16), "http://purl.oclc.org/dsdl/schematron") || xmlStrEqual(*(*(v15 + 72) + 16), "http://www.ascc.net/xml/schematron")))
  {
    Content = xmlNodeGetContent(v15);
    if (Content)
    {
      v23 = Content;
      *(v13 + 6) = xmlDictLookup(*(v13 + 5), Content, -1);
      free(v23);
    }

    v15 = *(v15 + 48);
    if (!v15)
    {
      goto LABEL_22;
    }

    while (1)
    {
      if (*(v15 + 8) == 1)
      {
        v24 = *(v15 + 72);
        if (v24)
        {
          if (xmlStrEqual(*(v24 + 16), "http://purl.oclc.org/dsdl/schematron") || xmlStrEqual(*(*(v15 + 72) + 16), "http://www.ascc.net/xml/schematron"))
          {
            break;
          }
        }
      }

      v15 = *(v15 + 48);
      if (!v15)
      {
        goto LABEL_22;
      }
    }
  }

  while (*(v15 + 8) == 1)
  {
    if (!*(v15 + 72) || !xmlStrEqual(*(v15 + 16), "ns") || !xmlStrEqual(*(*(v15 + 72) + 16), "http://purl.oclc.org/dsdl/schematron") && !xmlStrEqual(*(*(v15 + 72) + 16), "http://www.ascc.net/xml/schematron"))
    {
      break;
    }

    NoNsProp = xmlGetNoNsProp(v15, "prefix");
    v26 = xmlGetNoNsProp(v15, "uri");
    v27 = v26;
    if (!v26 || !*v26)
    {
      xmlSchematronPErr(ctxt, v15, 1759, "ns element has no uri", 0);
    }

    if (!NoNsProp || !*NoNsProp)
    {
      xmlSchematronPErr(ctxt, v15, 1759, "ns element has no prefix", 0);
    }

    if (!NoNsProp || !v27)
    {
      if (!v27)
      {
        goto LABEL_84;
      }

      goto LABEL_83;
    }

    xmlXPathRegisterNs(*(ctxt + 8), NoNsProp, v27);
    v28 = *(ctxt + 11);
    if (v28)
    {
      v29 = *(ctxt + 21);
      if (*(ctxt + 20) + 2 >= v29)
      {
        v30 = malloc_type_realloc(v28, 32 * v29, 0x50040EE9192B6uLL);
        if (!v30)
        {
          goto LABEL_81;
        }

        *(ctxt + 11) = v30;
        *(ctxt + 21) *= 2;
      }
    }

    else
    {
      *(ctxt + 21) = 10;
      v31 = malloc_type_malloc(0xA0uLL, 0x50040EE9192B6uLL);
      *(ctxt + 11) = v31;
      if (!v31)
      {
LABEL_81:
        __xmlSimpleError(0x10u, 2, 0, 0, "allocating parser namespaces");
        goto LABEL_82;
      }

      *(ctxt + 20) = 0;
    }

    *(*(ctxt + 11) + 16 * *(ctxt + 20)) = xmlDictLookup(*(ctxt + 6), v27, -1);
    v32 = xmlDictLookup(*(ctxt + 6), NoNsProp, -1);
    v33 = *(ctxt + 20);
    *(*(ctxt + 11) + 8 * ((2 * v33) | 1)) = v32;
    *(ctxt + 20) = v33 + 1;
    *(*(ctxt + 11) + 16 * (v33 + 1)) = 0;
    *(*(ctxt + 11) + 16 * (v33 + 1) + 8) = 0;
LABEL_82:
    ++*(v13 + 14);
LABEL_83:
    free(v27);
LABEL_84:
    if (NoNsProp)
    {
      free(NoNsProp);
    }

    while (1)
    {
      v15 = *(v15 + 48);
      if (!v15)
      {
        goto LABEL_22;
      }

      if (*(v15 + 8) == 1)
      {
        v34 = *(v15 + 72);
        if (v34)
        {
          if (xmlStrEqual(*(v34 + 16), "http://purl.oclc.org/dsdl/schematron") || xmlStrEqual(*(*(v15 + 72) + 16), "http://www.ascc.net/xml/schematron"))
          {
            break;
          }
        }
      }
    }
  }

LABEL_92:
  if (*(v15 + 8) != 1 || !*(v15 + 72) || !xmlStrEqual(*(v15 + 16), "pattern") || !xmlStrEqual(*(*(v15 + 72) + 16), "http://purl.oclc.org/dsdl/schematron") && !xmlStrEqual(*(*(v15 + 72) + 16), "http://www.ascc.net/xml/schematron"))
  {
    xmlSchematronPErr(ctxt, v15, 1759, "Expecting a pattern element instead of %s", *(v15 + 16));
    goto LABEL_112;
  }

  v35 = xmlGetNoNsProp(v15, "id");
  if (!v35)
  {
    v35 = xmlGetNoNsProp(v15, "name");
  }

  if (!v35 || (v36 = *(ctxt + 9)) == 0)
  {
    if (!v35)
    {
      goto LABEL_122;
    }

    goto LABEL_121;
  }

  v37 = malloc_type_malloc(0x18uLL, 0x3004039D06D92uLL);
  if (!v37)
  {
    ++*(ctxt + 14);
    __xmlSimpleError(0x10u, 2, v15, 0, "allocating schema pattern");
LABEL_121:
    free(v35);
    goto LABEL_122;
  }

  v37[1] = 0;
  v72 = v37 + 1;
  v37[2] = v35;
  *v37 = 0;
  v40 = *(v36 + 64);
  v39 = (v36 + 64);
  for (i = v40; i; i = *i)
  {
    v39 = i;
  }

  *v39 = v37;
  v41 = *(v15 + 24);
  if (!v41)
  {
    goto LABEL_110;
  }

  while (1)
  {
    if (*(v41 + 8) == 1)
    {
      v42 = *(v41 + 72);
      if (v42)
      {
        if (xmlStrEqual(*(v42 + 16), "http://purl.oclc.org/dsdl/schematron") || xmlStrEqual(*(*(v41 + 72) + 16), "http://www.ascc.net/xml/schematron"))
        {
          break;
        }
      }
    }

    v41 = *(v41 + 48);
    if (!v41)
    {
      goto LABEL_110;
    }
  }

  v71 = 0;
LABEL_124:
  if (*(v41 + 8) != 1 || !*(v41 + 72) || !xmlStrEqual(*(v41 + 16), "rule") || !xmlStrEqual(*(*(v41 + 72) + 16), "http://purl.oclc.org/dsdl/schematron") && !xmlStrEqual(*(*(v41 + 72) + 16), "http://www.ascc.net/xml/schematron"))
  {
    xmlSchematronPErr(ctxt, v41, 1759, "Expecting a rule element instead of %s", *(v41 + 16));
    goto LABEL_149;
  }

  pattern = xmlGetNoNsProp(v41, "context");
  if (!pattern)
  {
    v53 = ctxt;
    v54 = v41;
    v55 = "rule has no context attribute";
    goto LABEL_156;
  }

  if (!*pattern)
  {
    xmlSchematronPErr(ctxt, v41, 1759, "rule has an empty context attribute", 0);
    goto LABEL_159;
  }

  if (!*(ctxt + 9))
  {
LABEL_159:
    free(pattern);
    goto LABEL_160;
  }

  v44 = *(ctxt + 9);
  v66 = xmlPatterncompile(pattern, *(ctxt + 6), 1, *(ctxt + 11));
  if (!v66)
  {
    xmlSchematronPErr(ctxt, v41, 1759, "Failed to compile context expression %s", pattern);
  }

  v68 = malloc_type_malloc(0x38uLL, 0x300405D29F4A9uLL);
  if (!v68)
  {
    ++*(ctxt + 14);
    __xmlSimpleError(0x10u, 2, v41, 0, "allocating schema rule");
    goto LABEL_159;
  }

  *(v68 + 8) = 0u;
  *(v68 + 24) = 0u;
  *(v68 + 2) = v41;
  *(v68 + 3) = pattern;
  *(v68 + 5) = v66;
  *(v68 + 6) = 0;
  *v68 = 0;
  v47 = *(v44 + 72);
  v46 = (v44 + 72);
  for (j = v47; j; j = *j)
  {
    v46 = j;
  }

  *v46 = v68;
  *(v68 + 1) = 0;
  v48 = v72;
  v49 = *v72;
  if (*v72)
  {
    do
    {
      v50 = v49;
      v49 = *(v49 + 8);
    }

    while (v49);
    v48 = (v50 + 8);
  }

  *v48 = v68;
  if (!*(v41 + 24))
  {
LABEL_147:
    v53 = ctxt;
    v54 = v41;
    v55 = "rule has no assert nor report element";
LABEL_156:
    xmlSchematronPErr(v53, v54, 1759, v55, 0);
    goto LABEL_160;
  }

  v51 = *(v41 + 24);
  while (1)
  {
    if (*(v51 + 8) == 1)
    {
      v52 = *(v51 + 72);
      if (v52)
      {
        if (xmlStrEqual(*(v52 + 16), "http://purl.oclc.org/dsdl/schematron") || xmlStrEqual(*(*(v51 + 72) + 16), "http://www.ascc.net/xml/schematron"))
        {
          break;
        }
      }
    }

    v51 = *(v51 + 48);
    if (!v51)
    {
      goto LABEL_147;
    }
  }

  patterna = 0;
  while (1)
  {
    if (*(v51 + 8) != 1)
    {
LABEL_180:
      v60 = v51;
      v61 = *(v51 + 16);
      v62 = ctxt;
      v63 = "Expecting an assert or a report element instead of %s";
LABEL_181:
      xmlSchematronPErr(v62, v60, 1759, v63, v61);
      goto LABEL_182;
    }

    if (*(v51 + 72) && xmlStrEqual(*(v51 + 16), "assert") && (xmlStrEqual(*(*(v51 + 72) + 16), "http://purl.oclc.org/dsdl/schematron") || xmlStrEqual(*(*(v51 + 72) + 16), "http://www.ascc.net/xml/schematron")))
    {
      ++patterna;
      v67 = xmlGetNoNsProp(v51, "test");
      if (!v67)
      {
        goto LABEL_190;
      }

      if (*v67)
      {
        v65 = v51;
        v57 = xmlNodeGetContent(v51);
        v58 = ctxt;
        v59 = 1;
        goto LABEL_178;
      }
    }

    else
    {
      if (*(v51 + 8) != 1 || !*(v51 + 72) || !xmlStrEqual(*(v51 + 16), "report") || !xmlStrEqual(*(*(v51 + 72) + 16), "http://purl.oclc.org/dsdl/schematron") && !xmlStrEqual(*(*(v51 + 72) + 16), "http://www.ascc.net/xml/schematron"))
      {
        goto LABEL_180;
      }

      ++patterna;
      v67 = xmlGetNoNsProp(v51, "test");
      if (!v67)
      {
LABEL_190:
        v62 = ctxt;
        v60 = v51;
        v63 = "assert has no test attribute";
        v61 = 0;
        goto LABEL_181;
      }

      if (*v67)
      {
        v65 = v51;
        v57 = xmlNodeGetContent(v51);
        v58 = ctxt;
        v59 = 2;
LABEL_178:
        if (xmlSchematronAddTest(v58, v59, v68, v65, v67, v57))
        {
          goto LABEL_182;
        }

        goto LABEL_192;
      }
    }

    xmlSchematronPErr(ctxt, v51, 1759, "assert has an empty test attribute", 0);
LABEL_192:
    free(v67);
LABEL_182:
    if (!*(v51 + 48))
    {
      break;
    }

    v51 = *(v51 + 48);
    while (1)
    {
      if (*(v51 + 8) == 1)
      {
        v64 = *(v51 + 72);
        if (v64)
        {
          if (xmlStrEqual(*(v64 + 16), "http://purl.oclc.org/dsdl/schematron") || xmlStrEqual(*(*(v51 + 72) + 16), "http://www.ascc.net/xml/schematron"))
          {
            break;
          }
        }
      }

      v51 = *(v51 + 48);
      if (!v51)
      {
        goto LABEL_193;
      }
    }
  }

LABEL_193:
  if (!patterna)
  {
    goto LABEL_147;
  }

LABEL_160:
  ++v71;
LABEL_149:
  while (1)
  {
    v41 = *(v41 + 48);
    if (!v41)
    {
      break;
    }

    if (*(v41 + 8) == 1)
    {
      v56 = *(v41 + 72);
      if (v56)
      {
        if (xmlStrEqual(*(v56 + 16), "http://purl.oclc.org/dsdl/schematron") || xmlStrEqual(*(*(v41 + 72) + 16), "http://www.ascc.net/xml/schematron"))
        {
          goto LABEL_124;
        }
      }
    }
  }

  if (!v71)
  {
LABEL_110:
    xmlSchematronPErr(ctxt, v15, 1759, "Pattern has no rule element", 0);
  }

LABEL_122:
  ++*(v13 + 15);
LABEL_112:
  while (1)
  {
    v15 = *(v15 + 48);
    if (!v15)
    {
      break;
    }

    if (*(v15 + 8) == 1)
    {
      v43 = *(v15 + 72);
      if (v43)
      {
        if (xmlStrEqual(*(v43 + 16), "http://purl.oclc.org/dsdl/schematron") || xmlStrEqual(*(*(v15 + 72) + 16), "http://www.ascc.net/xml/schematron"))
        {
          goto LABEL_92;
        }
      }
    }
  }

LABEL_22:
  if (*(v13 + 15))
  {
    *(v13 + 2) = v4;
    if ((v9 & 1) == 0)
    {
      *(v13 + 2) = 1;
    }

    goto LABEL_29;
  }

  xmlSchematronPErr(ctxt, v11, 1759, "The schematron document '%s' has no pattern", *(ctxt + 1));
LABEL_26:
  if (v9)
  {
    xmlFreeDoc(v4);
  }

  if (v13)
  {
LABEL_29:
    if (*(ctxt + 14))
    {
      xmlSchematronFree(v13);
      return 0;
    }

    *(v13 + 11) = *(ctxt + 11);
    *(v13 + 20) = *(ctxt + 20);
    *(ctxt + 11) = 0;
  }

  return v13;
}

void xmlSchematronSetValidStructuredErrors(xmlSchematronValidCtxtPtr ctxt, xmlStructuredErrorFunc serror, void *ctx)
{
  if (ctxt)
  {
    *(ctxt + 12) = 0;
    *(ctxt + 13) = serror;
    *(ctxt + 10) = ctx;
    *(ctxt + 11) = 0;
  }
}

xmlSchematronValidCtxtPtr xmlSchematronNewValidCtxt(xmlSchematronPtr schema, int options)
{
  v4 = malloc_type_malloc(0x70uLL, 0x10A0040EAD6294DuLL);
  v5 = v4;
  if (v4)
  {
    *(v4 + 20) = 0u;
    v4[6] = 0u;
    *(v4 + 84) = 0u;
    *(v4 + 68) = 0u;
    *(v4 + 52) = 0u;
    *(v4 + 36) = 0u;
    *(v4 + 4) = 0u;
    *v4 = 2;
    *(v4 + 3) = schema;
    v6 = xmlXPathNewContext(0);
    *(v5 + 4) = v6;
    *(v5 + 1) = options;
    if (v6)
    {
      if (*(schema + 20) >= 1)
      {
        v7 = 0;
        v8 = 0;
        do
        {
          v9 = *(schema + 11);
          v10 = *(v9 + v7);
          if (!v10)
          {
            break;
          }

          v11 = *(v9 + v7 + 8);
          if (!v11)
          {
            break;
          }

          xmlXPathRegisterNs(*(v5 + 4), v11, v10);
          ++v8;
          v7 += 16;
        }

        while (v8 < *(schema + 20));
      }
    }

    else
    {
      __xmlSimpleError(0x10u, 2, 0, 0, "allocating schema parser XPath context");
      xmlSchematronFreeValidCtxt(v5);
      return 0;
    }
  }

  else
  {
    __xmlSimpleError(0x11u, 2, 0, 0, "allocating validation context");
  }

  return v5;
}

void xmlSchematronFreeValidCtxt(xmlSchematronValidCtxtPtr ctxt)
{
  if (ctxt)
  {
    v2 = *(ctxt + 4);
    if (v2)
    {
      xmlXPathFreeContext(v2);
    }

    v3 = *(ctxt + 1);
    if (v3)
    {
      xmlDictFree(v3);
    }

    free(ctxt);
  }
}

int xmlSchematronValidateDoc(xmlSchematronValidCtxtPtr ctxt, xmlDocPtr instance)
{
  v21 = *MEMORY[0x1E69E9840];
  if (!ctxt)
  {
    return -1;
  }

  v3 = *(ctxt + 3);
  if (!v3)
  {
    return -1;
  }

  result = -1;
  if (instance && *(v3 + 72))
  {
    *(ctxt + 4) = 0;
    RootElement = xmlDocGetRootElement(instance);
    if (RootElement)
    {
      Node = RootElement;
      v8 = *(ctxt + 1);
      if (!v8 || (v8 & 1) != 0)
      {
        do
        {
          for (i = *(*(ctxt + 3) + 72); i; i = *i)
          {
            if (xmlPatternMatch(i[5], Node) == 1)
            {
              for (j = i[4]; j; j = *j)
              {
                xmlSchematronRunTest(ctxt, j, instance, Node, i[5]);
              }
            }
          }

          Node = xmlSchematronNextNode(Node);
        }

        while (Node);
      }

      else
      {
        for (k = *(*(ctxt + 3) + 64); k; k = *k)
        {
          v10 = *(ctxt + 1);
          if ((v10 & 9) == 0)
          {
            if ((v10 & 4) != 0)
            {
              v11 = *__xmlGenericError();
              v12 = __xmlGenericErrorContext();
              v11(*v12, "Unimplemented block at %s:%d\n", "/Library/Caches/com.apple.xbs/Sources/libxml2/libxml2/schematron.c", 1460);
            }

            else
            {
              bzero(__str, 0x3E8uLL);
              if (*(k + 16))
              {
                snprintf(__str, 0x3E7uLL, "Pattern: %s\n", *(k + 16));
                fputs(__str, *MEMORY[0x1E69E9848]);
              }
            }
          }

          v13 = Node;
          do
          {
            for (m = *(k + 8); m; m = *(m + 8))
            {
              if (xmlPatternMatch(*(m + 40), v13) == 1)
              {
                for (n = *(m + 32); n; n = *n)
                {
                  xmlSchematronRunTest(ctxt, n, instance, v13, k);
                }
              }
            }

            v13 = xmlSchematronNextNode(v13);
          }

          while (v13);
        }
      }

      return *(ctxt + 4);
    }

    else
    {
      v18 = *__xmlGenericError();
      v19 = __xmlGenericErrorContext();
      v18(*v19, "Unimplemented block at %s:%d\n", "/Library/Caches/com.apple.xbs/Sources/libxml2/libxml2/schematron.c", 1684);
      ++*(ctxt + 4);
      return 1;
    }
  }

  return result;
}

void xmlSchematronRunTest(uint64_t a1, uint64_t a2, xmlDoc *a3, xmlNode *a4, uint64_t a5)
{
  v50 = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 32);
  v9->doc = a3;
  v9->node = a4;
  v10 = xmlXPathCompiledEval(*(a2 + 32), v9);
  if (v10)
  {
    v11 = v10;
    type = v10->type;
    if (v10->type > XPATH_NUMBER)
    {
      if ((type - 5) >= 4)
      {
        if (type != 4)
        {
          if (type != 9)
          {
LABEL_28:
            xmlXPathFreeObject(v11);
            goto LABEL_29;
          }

          goto LABEL_21;
        }

        stringval = v10->stringval;
        if (stringval && *stringval)
        {
          goto LABEL_28;
        }
      }

LABEL_8:
      xmlXPathFreeObject(v11);
      goto LABEL_9;
    }

    if (type <= 1)
    {
      if (type)
      {
        if (type != 1)
        {
          goto LABEL_28;
        }

LABEL_21:
        p_nodeNr = &v10->nodesetval->nodeNr;
        if (p_nodeNr && *p_nodeNr)
        {
          goto LABEL_28;
        }

        goto LABEL_8;
      }

      goto LABEL_8;
    }

    if (type != 2)
    {
      if (type != 3 || !xmlXPathIsNaN(v10->floatval) && v11->floatval != 0.0)
      {
        goto LABEL_28;
      }

      goto LABEL_8;
    }

    BOOLval = v10->BOOLval;
    xmlXPathFreeObject(v10);
    if (BOOLval)
    {
LABEL_29:
      v13 = *(a2 + 8);
      if (v13 == 2)
      {
        ++*(a1 + 16);
      }

      v16 = 1;
LABEL_32:
      v15 = (a1 + 4);
      v14 = *(a1 + 4);
      if ((v14 & 5) == 1)
      {
        if (v13 == 2)
        {
          return;
        }

        goto LABEL_36;
      }

LABEL_35:
      if ((v14 & 4) != 0)
      {
        v40 = *__xmlGenericError();
        v41 = __xmlGenericErrorContext();
        v40(*v41, "Unimplemented block at %s:%d\n", "/Library/Caches/com.apple.xbs/Sources/libxml2/libxml2/schematron.c", 1383);
        return;
      }

LABEL_36:
      bzero(__str, 0x3E8uLL);
      if (v13 == v16)
      {
        return;
      }

      goto LABEL_37;
    }
  }

LABEL_9:
  v13 = *(a2 + 8);
  if (v13 != 1)
  {
    v16 = 2;
    goto LABEL_32;
  }

  v15 = (a1 + 4);
  v14 = *(a1 + 4);
  ++*(a1 + 16);
  if ((v14 & 5) != 1)
  {
    v13 = 1;
    v16 = 2;
    goto LABEL_35;
  }

  bzero(__str, 0x3E8uLL);
LABEL_37:
  LineNo = xmlGetLineNo(a4);
  NodePath = xmlGetNodePath(a4);
  if (!NodePath)
  {
    NodePath = a4->name;
  }

  v22 = *(a2 + 16);
  if (!v22 || (v23 = *(v22 + 24)) == 0)
  {
LABEL_82:
    if (*(a2 + 8) == 1)
    {
      v42 = "node failed assert";
    }

    else
    {
      v42 = "node failed report";
    }

    v24 = xmlStrdup(v42);
    goto LABEL_86;
  }

  v24 = 0;
  do
  {
    v25 = *(v23 + 8);
    if (v25 == 1)
    {
      if (!*(v23 + 72) || !xmlStrEqual(*(v23 + 16), "name") || !xmlStrEqual(*(*(v23 + 72) + 16), "http://purl.oclc.org/dsdl/schematron") && !xmlStrEqual(*(*(v23 + 72) + 16), "http://www.ascc.net/xml/schematron"))
      {
        goto LABEL_49;
      }

      v48 = a5;
      NoNsProp = xmlGetNoNsProp(v23, "path");
      v28 = a4;
      if (NoNsProp)
      {
        v29 = *(a1 + 32);
        v29->doc = a4->doc;
        v29->node = a4;
        v47 = NoNsProp;
        v30 = xmlXPathEval(NoNsProp, v29);
        if (v30)
        {
          if (v30->type == XPATH_NODESET && (nodesetval = v30->nodesetval) != 0 && nodesetval->nodeNr >= 1)
          {
            v28 = *nodesetval->nodeTab;
          }

          else
          {
            v28 = 0;
          }

          xmlXPathFreeObject(v30);
        }

        else
        {
          v28 = 0;
        }

        if (!v28)
        {
          v28 = a4;
        }

        free(v47);
      }

      ns = v28->ns;
      if (ns)
      {
        prefix = ns->prefix;
        if (prefix)
        {
          v34 = xmlStrcat(v24, prefix);
          v24 = xmlStrcat(v34, ":");
        }
      }

      p_name = &v28->name;
      a5 = v48;
    }

    else
    {
      if ((v25 - 3) > 1)
      {
        goto LABEL_49;
      }

      p_name = (v23 + 80);
    }

    v35 = xmlStrcat(v24, *p_name);
    v24 = v35;
    if (v35)
    {
      v36 = xmlStrlen(v35);
      if (v36 >= 1)
      {
        v37 = v24[v36 - 1];
        if (v37 <= 0x20 && ((1 << v37) & 0x100002600) != 0)
        {
          v39 = v36;
          while (v37 <= 0x20u && ((1 << v37) & 0x100002600) != 0)
          {
            if (v39 == 1)
            {
              LODWORD(v39) = 0;
              break;
            }

            LOBYTE(v37) = v24[v39-- - 2];
          }

          v24[v39] = 32;
          v24[v39 + 1] = 0;
        }
      }
    }

LABEL_49:
    v23 = *(v23 + 48);
  }

  while (v23);
  if (!v24)
  {
    goto LABEL_82;
  }

LABEL_86:
  snprintf(__str, 0x3E7uLL, "%s line %ld: %s\n", NodePath, LineNo, v24);
  if ((*v15 & 8) != 0)
  {
    v43 = *(a1 + 104);
    if (v43)
    {
      v44 = 0;
    }

    else
    {
      v44 = *(a1 + 88);
    }

    if (*(a2 + 8) == 1)
    {
      v45 = 4000;
    }

    else
    {
      v45 = 4001;
    }

    if (a5)
    {
      v46 = *(a5 + 16);
    }

    else
    {
      v46 = 0;
    }

    __xmlRaiseError(v43, v44, *(a1 + 80), 0, a4, 0x1Cu, v45, 2, 0, LineNo, v46, NodePath, v24, 0, 0, "%s", __str);
  }

  else
  {
    fputs(__str, *MEMORY[0x1E69E9848]);
  }

  free(v24);
  if (NodePath)
  {
    if (NodePath != a4->name)
    {
      free(NodePath);
    }
  }
}

uint64_t xmlSchematronNextNode(uint64_t a1)
{
  v1 = a1;
  result = *(a1 + 24);
  if (result)
  {
    v3 = *(result + 8);
    if (v3 != 17)
    {
      if (v3 != 14)
      {
        return result;
      }

      v1 = result;
    }
  }

  v4 = *(v1 + 48);
  result = v1;
  if (!v4)
  {
    goto LABEL_15;
  }

  while (1)
  {
    result = v4;
    v5 = *(v4 + 8);
    if (v5 != 17 && v5 != 14)
    {
      break;
    }

    v4 = *(v4 + 48);
    if (!v4)
    {
LABEL_15:
      while (1)
      {
        result = *(result + 40);
        if (!result)
        {
          break;
        }

        if (*(result + 8) == 9)
        {
          return 0;
        }

        if (*(result + 48))
        {
          return *(result + 48);
        }
      }

      return result;
    }
  }

  return result;
}