@interface POSOAPDocument
+ (id)definition;
- (id)XMLStringWithOptions:(unint64_t)options;
- (void)_XMLAttributeStringWithPrefix:(id)prefix name:(id)name value:(id)value options:(unint64_t)options appendingToString:(id)string;
- (void)_XMLAttributesStringWithComplexType:(id)type options:(unint64_t)options appendingToString:(id)string;
- (void)_XMLQualifiedNameForNamespace:(id)namespace elementName:(id)name options:(unint64_t)options appendingToString:(id)string;
- (void)_XMLStringWithComplexType:(id)type options:(unint64_t)options appendingToString:(id)string;
- (void)_XMLStringWithOptions:(unint64_t)options appendingToString:(id)string;
@end

@implementation POSOAPDocument

+ (id)definition
{
  v2 = objc_opt_new();
  [v2 addElementWithName:@"Envelope" namespaceURI:@"http://www.w3.org/2003/05/soap-envelope" type:objc_opt_class()];

  return v2;
}

- (id)XMLStringWithOptions:(unint64_t)options
{
  string = [MEMORY[0x277CCAB68] string];
  [(POSOAPDocument *)self _XMLStringWithOptions:options appendingToString:string];

  return string;
}

- (void)_XMLQualifiedNameForNamespace:(id)namespace elementName:(id)name options:(unint64_t)options appendingToString:(id)string
{
  nameCopy = name;
  stringCopy = string;
  v9 = [POXSNamespaces prefixForNamespaceURI:namespace];
  if ([v9 length])
  {
    [stringCopy appendString:v9];
    [stringCopy appendString:@":"];
  }

  [stringCopy appendString:nameCopy];
}

- (void)_XMLAttributeStringWithPrefix:(id)prefix name:(id)name value:(id)value options:(unint64_t)options appendingToString:(id)string
{
  prefixCopy = prefix;
  nameCopy = name;
  stringCopy = string;
  valueCopy = value;
  [stringCopy appendString:@" "];
  if ([prefixCopy length])
  {
    [stringCopy appendString:prefixCopy];
    if (![nameCopy length])
    {
      goto LABEL_6;
    }

    [stringCopy appendString:@":"];
  }

  else if (![nameCopy length])
  {
    goto LABEL_6;
  }

  [stringCopy appendString:nameCopy];
LABEL_6:
  [stringCopy appendString:@"="];
  [stringCopy appendString:valueCopy];

  [stringCopy appendString:@""];
}

- (void)_XMLAttributesStringWithComplexType:(id)type options:(unint64_t)options appendingToString:(id)string
{
  v44 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  stringCopy = string;
  [POXSDefinitions definitionForType:objc_opt_class()];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v33 = v41 = 0u;
  obj = [v33 attributes];
  v7 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
  v31 = typeCopy;
  if (v7)
  {
    v8 = v7;
    v9 = *v39;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v39 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v38 + 1) + 8 * i);
        v12 = [typeCopy valueForKey:{v11, stringCopy}];
        if (v12)
        {
          v13 = [v33 isSpecifiedKeyForAttributeName:v11];
          if (!v13 || ([typeCopy valueForKey:v13], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "BOOLValue"), v14, v15))
          {
            v16 = +[POXSDefinitions definitionForType:](POXSDefinitions, "definitionForType:", [v33 typeForName:v11]);
            v17 = [v33 namespaceForAttributeName:v11];
            v18 = [v16 stringFromValue:v12];
            if (v18)
            {
              v19 = [POXSNamespaces prefixForNamespaceURI:v17];
              [(POSOAPDocument *)self _XMLAttributeStringWithPrefix:v19 name:v11 value:v18 options:options appendingToString:stringCopy];

              typeCopy = v31;
            }
          }
        }
      }

      v8 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v8);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  namespaces = [v33 namespaces];
  v21 = [namespaces countByEnumeratingWithState:&v34 objects:v42 count:16];
  v22 = stringCopy;
  if (v21)
  {
    v23 = v21;
    v24 = *v35;
    do
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v35 != v24)
        {
          objc_enumerationMutation(namespaces);
        }

        v26 = *(*(&v34 + 1) + 8 * j);
        stringCopy = [POXSNamespaces prefixForNamespaceURI:v26, stringCopy];
        [(POSOAPDocument *)self _XMLAttributeStringWithPrefix:@"xmlns" name:stringCopy value:v26 options:options appendingToString:v22];
      }

      v23 = [namespaces countByEnumeratingWithState:&v34 objects:v42 count:16];
    }

    while (v23);
  }
}

- (void)_XMLStringWithComplexType:(id)type options:(unint64_t)options appendingToString:(id)string
{
  v120 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  stringCopy = string;
  v10 = [POXSDefinitions definitionForType:objc_opt_class()];
  v114 = 0u;
  v115 = 0u;
  v116 = 0u;
  v117 = 0u;
  obj = [v10 elements];
  v97 = [obj countByEnumeratingWithState:&v114 objects:v119 count:16];
  if (v97)
  {
    v96 = *v115;
    v91 = typeCopy;
    v92 = v10;
    selfCopy = self;
    do
    {
      v11 = 0;
      do
      {
        if (*v115 != v96)
        {
          objc_enumerationMutation(obj);
        }

        v99 = v11;
        v12 = *(*(&v114 + 1) + 8 * v11);
        elementName = [v12 elementName];
        v14 = [typeCopy valueForKey:elementName];

        v100 = v14;
        if (v14)
        {
          v108 = v12;
          elementName2 = [v12 elementName];
          v16 = [v10 typeForName:elementName2];
          v104 = [POXSDefinitions definitionForType:v16];
          v98 = elementName2;
          v17 = [v10 isSpecifiedKeyForElementName:elementName2];
          if (v17 && ([typeCopy valueForKey:v17], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "BOOLValue"), v18, !v19))
          {
            v31 = v104;
          }

          else
          {
            v95 = v17;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              objc_opt_class();
              isKindOfClass = objc_opt_isKindOfClass();
              if (isKindOfClass)
              {
                v20 = v100;
                v21 = v108;
                if ([v10 flattenMultiValueElementWithName:v98])
                {
                  v93 = 0;
                }

                else
                {
                  [stringCopy appendString:@"<"];
                  namespaceURI = [v108 namespaceURI];
                  elementName3 = [v108 elementName];
                  [(POSOAPDocument *)self _XMLQualifiedNameForNamespace:namespaceURI elementName:elementName3 options:options appendingToString:stringCopy];

                  [stringCopy appendString:@">"];
                  v93 = 1;
                }
              }

              else
              {
                v93 = 0;
                v20 = v100;
                v21 = v108;
              }

              v112 = 0u;
              v113 = 0u;
              v110 = 0u;
              v111 = 0u;
              v105 = v20;
              v109 = [v105 countByEnumeratingWithState:&v110 objects:v118 count:16];
              if (!v109)
              {
                goto LABEL_49;
              }

              v106 = *v111;
              while (1)
              {
                for (i = 0; i != v109; ++i)
                {
                  if (*v111 != v106)
                  {
                    objc_enumerationMutation(v105);
                  }

                  v41 = *(*(&v110 + 1) + 8 * i);
                  v42 = v21;
                  v43 = objc_opt_class();
                  if (isKindOfClass)
                  {
                    v44 = [v104 elementForValue:v41];

                    elementName4 = [v44 elementName];
                    v46 = [v104 typeForName:elementName4];

                    v42 = v44;
                  }

                  else
                  {
                    v46 = v43;
                  }

                  [stringCopy appendString:@"<"];
                  namespaceURI2 = [v42 namespaceURI];
                  elementName5 = [v42 elementName];
                  [(POSOAPDocument *)self _XMLQualifiedNameForNamespace:namespaceURI2 elementName:elementName5 options:options appendingToString:stringCopy];

                  v49 = [POXSDefinitions definitionForType:v46];
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v52 = stringCopy;
                      if (v41)
                      {
                        [stringCopy appendString:@">"];
                        v53 = [v49 stringFromValue:v41];
                        [stringCopy appendString:v53];

LABEL_38:
                        [stringCopy appendString:@"</"];
                        namespaceURI3 = [v42 namespaceURI];
                        elementName6 = [v42 elementName];
                        [(POSOAPDocument *)self _XMLQualifiedNameForNamespace:namespaceURI3 elementName:elementName6 options:options appendingToString:stringCopy];

                        v52 = stringCopy;
                        v56 = @">";
                      }

                      else
                      {
                        v56 = @"/>";
                      }

                      [v52 appendString:v56];
                      goto LABEL_47;
                    }

LABEL_43:
                    [stringCopy appendString:@"/>"];
                    goto LABEL_47;
                  }

                  [(POSOAPDocument *)self _XMLAttributesStringWithComplexType:v41 options:options appendingToString:stringCopy];
                  elements = [v49 elements];
                  v51 = [elements count];

                  if (v51)
                  {
                    [stringCopy appendString:@">"];
                    [(POSOAPDocument *)self _XMLStringWithComplexType:v41 options:options appendingToString:stringCopy];
                    goto LABEL_38;
                  }

                  contentPropertyName = [v49 contentPropertyName];

                  if (!contentPropertyName)
                  {
                    goto LABEL_43;
                  }

                  v58 = [POXSDefinitions definitionForType:v46];
                  contentPropertyName2 = [v58 contentPropertyName];
                  v103 = v58;
                  v60 = [v58 typeForName:contentPropertyName2];
                  v61 = [v41 valueForKey:contentPropertyName2];
                  v62 = [POXSDefinitions definitionForType:v60];
                  v63 = [v62 stringFromValue:v61];
                  if (v63)
                  {
                    [stringCopy appendString:@">"];
                    [stringCopy appendString:v63];
                    [stringCopy appendString:@"</"];
                    namespaceURI4 = [v42 namespaceURI];
                    [v42 elementName];
                    v101 = contentPropertyName2;
                    v65 = v62;
                    v66 = v61;
                    v68 = v67 = options;
                    [(POSOAPDocument *)selfCopy _XMLQualifiedNameForNamespace:namespaceURI4 elementName:v68 options:v67 appendingToString:stringCopy];

                    options = v67;
                    v61 = v66;
                    v62 = v65;
                    contentPropertyName2 = v101;

                    self = selfCopy;
                    v69 = @">";
                  }

                  else
                  {
                    v69 = @"/>";
                  }

                  [stringCopy appendString:v69];

LABEL_47:
                  v21 = v108;
                }

                v109 = [v105 countByEnumeratingWithState:&v110 objects:v118 count:16];
                if (!v109)
                {
LABEL_49:

                  if (v93)
                  {
                    [stringCopy appendString:@"</"];
                    namespaceURI5 = [v21 namespaceURI];
                    elementName7 = [v21 elementName];
                    [(POSOAPDocument *)self _XMLQualifiedNameForNamespace:namespaceURI5 elementName:elementName7 options:options appendingToString:stringCopy];

                    [stringCopy appendString:@">"];
                  }

                  v31 = v104;
                  typeCopy = v91;
                  goto LABEL_52;
                }
              }
            }

            objc_opt_class();
            v22 = v104;
            if (objc_opt_isKindOfClass())
            {
              [stringCopy appendString:@"<"];
              namespaceURI6 = [v108 namespaceURI];
              elementName8 = [v108 elementName];
              [(POSOAPDocument *)self _XMLQualifiedNameForNamespace:namespaceURI6 elementName:elementName8 options:options appendingToString:stringCopy];

              [(POSOAPDocument *)self _XMLAttributesStringWithComplexType:v100 options:options appendingToString:stringCopy];
              elements2 = [v104 elements];
              v26 = [elements2 count];

              if (v26)
              {
                [stringCopy appendString:@">"];
                [(POSOAPDocument *)self _XMLStringWithComplexType:v100 options:options appendingToString:stringCopy];
                [stringCopy appendString:@"</"];
                namespaceURI7 = [v108 namespaceURI];
                elementName9 = [v108 elementName];
                [(POSOAPDocument *)self _XMLQualifiedNameForNamespace:namespaceURI7 elementName:elementName9 options:options appendingToString:stringCopy];

                v29 = stringCopy;
                v30 = @">";
              }

              else
              {
                contentPropertyName3 = [v104 contentPropertyName];

                if (contentPropertyName3)
                {
                  contentPropertyName4 = [v104 contentPropertyName];
                  v80 = [v104 typeForName:contentPropertyName4];
                  v81 = [v100 valueForKey:contentPropertyName4];
                  v82 = [POXSDefinitions definitionForType:v80];
                  v83 = [v82 stringFromValue:v81];
                  typeCopy = v91;
                  if (v83)
                  {
                    [stringCopy appendString:@">"];
                    [stringCopy appendString:v83];
                    [stringCopy appendString:@"</"];
                    namespaceURI8 = [v108 namespaceURI];
                    elementName10 = [v108 elementName];
                    [(POSOAPDocument *)selfCopy _XMLQualifiedNameForNamespace:namespaceURI8 elementName:elementName10 options:options appendingToString:stringCopy];

                    v22 = v104;
                    v86 = @">";
                  }

                  else
                  {
                    v86 = @"/>";
                  }

                  [stringCopy appendString:v86];

                  v31 = v22;
                  goto LABEL_52;
                }

                v29 = stringCopy;
                v30 = @"/>";
              }

              [v29 appendString:v30];
              v31 = v104;
              v17 = v95;
              typeCopy = v91;
              goto LABEL_54;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v32 = [v104 elementForValue:v100];
              namespaceURI9 = [v32 namespaceURI];
              elementName11 = [v32 elementName];
              [stringCopy appendString:@"<"];
              [(POSOAPDocument *)self _XMLQualifiedNameForNamespace:namespaceURI9 elementName:elementName11 options:options appendingToString:stringCopy];
              [(POSOAPDocument *)self _XMLAttributesStringWithComplexType:v100 options:options appendingToString:stringCopy];
              v31 = +[POXSDefinitions definitionForType:](POXSDefinitions, "definitionForType:", [v32 type]);

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                elements3 = [v31 elements];
                v36 = [elements3 count];

                if (v36)
                {
                  [stringCopy appendString:@">"];
                  v37 = selfCopy;
                  [(POSOAPDocument *)selfCopy _XMLStringWithComplexType:v100 options:options appendingToString:stringCopy];
                  goto LABEL_66;
                }
              }

              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && ([v31 stringFromValue:v100], (v87 = objc_claimAutoreleasedReturnValue()) != 0))
              {
                v88 = v87;
                [stringCopy appendString:@">"];
                [stringCopy appendString:v88];

                v37 = selfCopy;
LABEL_66:
                [stringCopy appendString:@"</"];
                [(POSOAPDocument *)v37 _XMLQualifiedNameForNamespace:namespaceURI9 elementName:elementName11 options:options appendingToString:stringCopy];
                v89 = @">";
              }

              else
              {
                v89 = @"/>";
              }

              [stringCopy appendString:v89];

              v10 = v92;
            }

            else
            {
              v72 = [POXSDefinitions definitionForType:v16];
              v73 = [v72 stringFromValue:v100];
              if (v73)
              {
                [stringCopy appendString:@"<"];
                namespaceURI10 = [v108 namespaceURI];
                elementName12 = [v108 elementName];
                [(POSOAPDocument *)self _XMLQualifiedNameForNamespace:namespaceURI10 elementName:elementName12 options:options appendingToString:stringCopy];

                [stringCopy appendString:@">"];
                [stringCopy appendString:v73];
                [stringCopy appendString:@"</"];
                namespaceURI11 = [v108 namespaceURI];
                elementName13 = [v108 elementName];
                [(POSOAPDocument *)self _XMLQualifiedNameForNamespace:namespaceURI11 elementName:elementName13 options:options appendingToString:stringCopy];

                [stringCopy appendString:@">"];
              }

              v31 = v104;
LABEL_52:
              v10 = v92;
            }

            v17 = v95;
          }

LABEL_54:

          self = selfCopy;
        }

        v11 = v99 + 1;
      }

      while (v99 + 1 != v97);
      v90 = [obj countByEnumeratingWithState:&v114 objects:v119 count:16];
      v97 = v90;
    }

    while (v90);
  }
}

- (void)_XMLStringWithOptions:(unint64_t)options appendingToString:(id)string
{
  stringCopy = string;
  v7 = stringCopy;
  v8 = stringCopy;
  if ((options & 1) == 0)
  {
    [stringCopy appendString:@"<?xml version=1.0 encoding=utf-8?>"];
    v7 = v8;
  }

  [(POSOAPDocument *)self _XMLStringWithComplexType:self options:options appendingToString:v7];
}

@end