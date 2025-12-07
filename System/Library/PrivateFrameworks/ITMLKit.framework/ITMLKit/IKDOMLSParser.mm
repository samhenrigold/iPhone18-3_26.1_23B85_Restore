@interface IKDOMLSParser
+ (id)_dataFromInput:(id)input;
- (id)parse:(id)parse;
- (id)parseWithContext:(id)context :(id)a4 :(int64_t)a5;
@end

@implementation IKDOMLSParser

- (id)parse:(id)parse
{
  parseCopy = parse;
  stringData = [parseCopy stringData];
  if (stringData)
  {
  }

  else
  {
    byteStream = [parseCopy byteStream];

    if (!byteStream)
    {
      v10 = @"Input not specified";
      goto LABEL_8;
    }
  }

  v7 = [IKDOMDocument alloc];
  appContext = [(IKJSObject *)self appContext];
  v15 = 0;
  byteStream = [(IKDOMDocument *)v7 initWithAppContext:appContext input:parseCopy error:&v15];
  v9 = v15;

  if (v9)
  {
    v10 = [v9 description];
  }

  else
  {
    v10 = 0;
  }

LABEL_8:
  if ([(__CFString *)v10 length])
  {
    appContext2 = [(IKJSObject *)self appContext];
    appContext3 = [(IKJSObject *)self appContext];
    v13 = [IKDOMLSException exceptionWithAppContext:appContext3 code:81];
    [appContext2 setException:v13 withErrorMessage:v10];
  }

  return byteStream;
}

- (id)parseWithContext:(id)context :(id)a4 :(int64_t)a5
{
  v65 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v9 = a4;
  parentNode = [v9 parentNode];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  objc_opt_class();
  v12 = objc_opt_isKindOfClass();
  if (!v9)
  {
    goto LABEL_10;
  }

  v13 = v12;
  if (![v9 nodePtr])
  {
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v14 = a5 != 2;
  }

  else
  {
    objc_opt_class();
    v35 = objc_opt_isKindOfClass();
    v14 = a5 != 2;
    if ((v35 & 1) == 0)
    {
LABEL_10:
      appContext = [(IKJSObject *)self appContext];
      appContext2 = [(IKJSObject *)self appContext];
      v17 = [IKDOMException exceptionWithAppContext:appContext2 code:3];
      v18 = MEMORY[0x277CCACA8];
      nodeName = [v9 nodeName];
      v20 = [v18 stringWithFormat:@"Invalid action: %ld on node: %@", a5, nodeName];
      [appContext setException:v17 withErrorMessage:v20];

      v21 = 0;
      goto LABEL_11;
    }
  }

  if ((v14 & isKindOfClass & 1) != 0 || (a5 - 3) <= 0xFFFFFFFFFFFFFFFDLL && v13 & 1 | (parentNode == 0))
  {
    goto LABEL_10;
  }

  v23 = [objc_opt_class() _dataFromInput:contextCopy];
  if (v23)
  {
    v24 = v23;
    ownerDocument = [v9 ownerDocument];
    nodePtr = [ownerDocument nodePtr];
    lst = 0;
    v27 = xmlNewDocNode(nodePtr, 0, "fake", 0);
    xmlSetGenericErrorFunc(*MEMORY[0x277D85DF8], MEMORY[0x277D85E30]);
    node = v27;
    if (xmlParseInNodeContext(v27, [v24 bytes], objc_msgSend(v24, "length"), 4096, &lst) == XML_ERR_INVALID_CHAR)
    {
      stringData = [contextCopy stringData];

      if (stringData)
      {
        stringData2 = [contextCopy stringData];
        ik_stringByTrimmingControlChars = [stringData2 ik_stringByTrimmingControlChars];
        [ik_stringByTrimmingControlChars dataUsingEncoding:4];
        v31 = v56 = ownerDocument;

        xmlParseInNodeContext(node, [v31 bytes], objc_msgSend(v31, "length"), 4096, &lst);
        v24 = v31;
        ownerDocument = v56;
      }
    }

    xmlSetGenericErrorFunc(0, 0);
    if (xmlGetLastError())
    {
      appContext3 = [(IKJSObject *)self appContext];
      appContext4 = [(IKJSObject *)self appContext];
      v34 = [IKDOMLSException exceptionWithAppContext:appContext4 code:81];
      [appContext3 setException:v34 withErrorMessage:@"XML parse failure"];
      v21 = 0;
LABEL_56:

      xmlSetTreeDoc(node, 0);
      xmlFreeNode(node);

      goto LABEL_57;
    }

    v57 = ownerDocument;
    for (i = xmlNewDocFragment(nodePtr); ; xmlAddChild(i, v40))
    {
      v40 = lst;
      if (!lst)
      {
        break;
      }

      lst = lst->next;
      xmlUnlinkNode(v40);
    }

    IKXMLStripSpaces(i);
    appContext5 = [(IKJSObject *)self appContext];
    v55 = [IKDOMNode nodeWithAppContext:appContext5 nodePtr:i];

    if (i->children)
    {
      appContext6 = [(IKJSObject *)self appContext];
      v21 = [IKDOMNode nodeWithAppContext:appContext6 nodePtr:i->children];
    }

    else
    {
      v21 = 0;
    }

    if ((a5 - 1) >= 2)
    {
      v43 = parentNode;
    }

    else
    {
      v43 = v9;
    }

    appContext4 = v43;
    v34 = 0;
    if (a5 <= 2)
    {
      if (a5 != 1)
      {
        v44 = a5 == 2;
        appContext3 = v55;
        if (v44)
        {
          v61 = 0u;
          v62 = 0u;
          v59 = 0u;
          v60 = 0u;
          childNodesAsArray = [v9 childNodesAsArray];
          v48 = [childNodesAsArray countByEnumeratingWithState:&v59 objects:v64 count:16];
          if (v48)
          {
            v49 = v48;
            v50 = *v60;
            do
            {
              for (j = 0; j != v49; ++j)
              {
                if (*v60 != v50)
                {
                  objc_enumerationMutation(childNodesAsArray);
                }

                v52 = [appContext4 performDOMOperation:2 newNode:0 refNode:*(*(&v59 + 1) + 8 * j)];
              }

              v49 = [childNodesAsArray countByEnumeratingWithState:&v59 objects:v64 count:16];
            }

            while (v49);
          }

          appContext3 = v55;
          v34 = [appContext4 performDOMOperation:0 newNode:v55 refNode:0];
          ownerDocument = v57;
        }

        goto LABEL_55;
      }

      v45 = v9;
      v46 = 0;
      appContext3 = v55;
      v53 = v55;
      v54 = 0;
      goto LABEL_54;
    }

    if (a5 == 3)
    {
      v45 = parentNode;
      v46 = 1;
    }

    else
    {
      if (a5 != 4)
      {
        v44 = a5 == 5;
        appContext3 = v55;
        if (!v44)
        {
          goto LABEL_55;
        }

        v45 = parentNode;
        v46 = 2;
        goto LABEL_52;
      }

      v45 = parentNode;
      v46 = 0;
    }

    appContext3 = v55;
LABEL_52:
    v53 = appContext3;
    v54 = v9;
LABEL_54:
    v34 = [v45 performDOMOperation:v46 newNode:v53 refNode:v54];
LABEL_55:
    [appContext4 childrenUpdatedWithUpdatedChildNodes:v34 notify:1];
    goto LABEL_56;
  }

  appContext7 = [(IKJSObject *)self appContext];
  appContext8 = [(IKJSObject *)self appContext];
  v38 = [IKDOMLSException exceptionWithAppContext:appContext8 code:81];
  [appContext7 setException:v38 withErrorMessage:@"Input not specified"];

  v21 = 0;
  v24 = 0;
LABEL_57:

LABEL_11:

  return v21;
}

+ (id)_dataFromInput:(id)input
{
  inputCopy = input;
  byteStream = [inputCopy byteStream];

  if (byteStream)
  {
    byteStream2 = [inputCopy byteStream];
  }

  else
  {
    byteStream2 = [inputCopy stringData];

    if (byteStream2)
    {
      stringData = [inputCopy stringData];
      byteStream2 = [stringData dataUsingEncoding:4];
    }
  }

  return byteStream2;
}

@end