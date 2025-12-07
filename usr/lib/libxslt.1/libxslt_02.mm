uint64_t xsltPreCompEvalToBoolean(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 160);
  v4 = *(v3 + 8);
  v5 = *(v3 + 88);
  v6 = *(v3 + 80);
  *(v3 + 8) = a2;
  v7 = *(a3 + 304);
  *(v3 + 80) = *(a3 + 312);
  *(v3 + 88) = *(a3 + 320);
  v8 = *(v3 + 104);
  result = xmlXPathCompiledEvalToBoolean(v7, v3);
  *(v3 + 8) = v4;
  *(v3 + 104) = v8;
  *(v3 + 88) = v5;
  *(v3 + 80) = v6;
  return result;
}

void xsltIf(xsltTransformContextPtr ctxt, xmlNodePtr node, xmlNodePtr inst, xsltElemPreCompPtr comp)
{
  if (ctxt && node && inst)
  {
    if (comp && *&comp[4].type && comp[7].inst)
    {
      traceCode = ctxt->traceCode;
      if (traceCode && (*(traceCode + 1) & 8) != 0)
      {
        xsltGenericDebug(xsltGenericDebugContext, "xsltIf: test %s\n", *&comp[4].type);
      }

      localRVT = ctxt->localRVT;
      v10 = xsltPreCompEvalToBoolean(ctxt, node, comp);
      if (localRVT != ctxt->localRVT)
      {
        xsltReleaseLocalRVTs(ctxt, localRVT);
      }

      v11 = ctxt->traceCode;
      if (v11 && (*(v11 + 1) & 8) != 0)
      {
        xsltGenericDebug(xsltGenericDebugContext, "xsltIf: test evaluate to %d\n", v10);
      }

      if (v10 == 1)
      {
        children = inst->children;

        xsltApplySequenceConstructor(ctxt, node, children, 0);
      }

      else if (v10 == -1)
      {
        ctxt->state = XSLT_STATE_STOPPED;
      }
    }

    else
    {

      xsltTransformError(ctxt, 0, inst, "Internal error in xsltIf(): The XSLT 'if' instruction was not compiled.\n");
    }
  }
}

void xsltReleaseLocalRVTs(xsltTransformContext *a1, uint64_t *a2)
{
  localRVT = a1->localRVT;
  if (localRVT)
  {
    v3 = localRVT == a2;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    a1->localRVT = a2;
    while (1)
    {
      v6 = localRVT[1];
      if (!*localRVT)
      {
        goto LABEL_19;
      }

      v7 = linkedOnOrAfterFall2023OSVersions(a1, a2);
      v8 = *localRVT;
      v9 = v7 ? *(v8 + 72) : *(v8 + 160);
      if (v9 == 3)
      {
        break;
      }

      if (v9 == 2)
      {
        v10 = xsltRegisterLocalRVT(a1, v8);
        v12 = linkedOnOrAfterFall2023OSVersions(v10, v11);
        v13 = *localRVT;
        if (v12)
        {
          *(v13 + 72) = 2;
        }

        else
        {
          *(v13 + 160) = 2;
        }

        goto LABEL_19;
      }

      if (v9 != 1)
      {
        v14 = *__xmlGenericError();
        v15 = __xmlGenericErrorContext();
        v14(*v15, "xsltReleaseLocalRVTs: Unexpected RVT flag %p\n", v9);
        goto LABEL_19;
      }

      xsltReleaseRVTList(a1, localRVT);
LABEL_20:
      if (v6)
      {
        v16 = v6 == a2;
      }

      else
      {
        v16 = 1;
      }

      localRVT = v6;
      if (v16)
      {
        return;
      }
    }

    xsltRegisterPersistRVT(a1, v8);
LABEL_19:
    free(localRVT);
    goto LABEL_20;
  }
}

void xsltForEach(xsltTransformContextPtr ctxt, xmlNodePtr node, xmlNodePtr inst, xsltElemPreCompPtr comp)
{
  v39 = *MEMORY[0x29EDCA608];
  if (!ctxt || !node || !inst)
  {
    v22 = xsltGenericError;
    v23 = xsltGenericErrorContext;

    v22(v23, "xsltForEach(): Bad arguments.\n");
    return;
  }

  if (!comp)
  {
    v24 = "Internal error in xsltForEach(): The XSLT 'for-each' instruction was not compiled.\n";
    goto LABEL_40;
  }

  if (!comp[4].inst || !comp[7].inst)
  {
    v24 = "Internal error in xsltForEach(): The selecting expression of the XSLT 'for-each' instruction was not compiled correctly.\n";
LABEL_40:

    xsltTransformError(ctxt, 0, inst, v24);
    return;
  }

  xpathCtxt = ctxt->xpathCtxt;
  traceCode = ctxt->traceCode;
  if (traceCode && (*(traceCode + 1) & 0x10) != 0)
  {
    xsltGenericDebug(xsltGenericDebugContext, "xsltForEach: select %s\n", comp[4].inst);
  }

  nodeList = ctxt->nodeList;
  v30 = *&ctxt->document;
  currentTemplateRule = ctxt->currentTemplateRule;
  ctxt->currentTemplateRule = 0;
  doc = xpathCtxt->doc;
  v13 = *&xpathCtxt->contextSize;
  v14 = xsltPreCompEval(ctxt, node, comp);
  if (v14)
  {
    v15 = v14;
    if (v14->type == XPATH_NODESET)
    {
      nodesetval = v14->nodesetval;
      if (nodesetval && nodesetval->nodeNr >= 1)
      {
        v17 = ctxt->traceCode;
        if (v17 && (*(v17 + 1) & 0x10) != 0)
        {
          xsltGenericDebug(xsltGenericDebugContext, "xsltForEach: select evaluates to %d nodes\n", nodesetval->nodeNr);
        }

        ctxt->nodeList = nodesetval;
        children = inst->children;
        if (children)
        {
          if (children->type == XML_ELEMENT_NODE)
          {
            ns = children->ns;
            if (ns)
            {
              if (xmlStrEqual(ns->href, "http://www.w3.org/1999/XSL/Transform") && xmlStrEqual(children->name, "sort"))
              {
                v37 = 0u;
                v38 = 0u;
                v35 = 0u;
                v36 = 0u;
                v33 = 0u;
                v34 = 0u;
                v32 = 0u;
                sorts = children;
                if (xslDebugStatus)
                {
                  xslHandleDebugger(children, node, 0, ctxt);
                }

                children = children->next;
                if (children)
                {
                  v20 = 1;
                  do
                  {
                    if (children->type != XML_ELEMENT_NODE)
                    {
                      break;
                    }

                    v21 = children->ns;
                    if (!v21 || !xmlStrEqual(v21->href, "http://www.w3.org/1999/XSL/Transform") || !xmlStrEqual(children->name, "sort"))
                    {
                      break;
                    }

                    if (v20 == 15)
                    {
                      xsltTransformError(ctxt, 0, children, "The number of xsl:sort instructions exceeds the maximum (%d) allowed by this processor.\n", 15);
                      goto LABEL_55;
                    }

                    *(&sorts + v20) = children;
                    if (xslDebugStatus)
                    {
                      xslHandleDebugger(children, node, 0, ctxt);
                    }

                    children = children->next;
                    ++v20;
                  }

                  while (children);
                }

                else
                {
                  LODWORD(v20) = 1;
                }

                xsltDoSortFunction(ctxt, &sorts, v20);
              }
            }
          }
        }

        nodeNr = nodesetval->nodeNr;
        xpathCtxt->contextSize = nodesetval->nodeNr;
        if (nodeNr >= 1)
        {
          v27 = 0;
          do
          {
            v28 = nodesetval->nodeTab[v27];
            ctxt->node = v28;
            if (v28->type != XML_NAMESPACE_DECL)
            {
              v29 = v28->doc;
              if (v29)
              {
                xpathCtxt->doc = v29;
              }
            }

            xpathCtxt->proximityPosition = ++v27;
            xsltApplySequenceConstructor(ctxt, v28, children, 0);
          }

          while (v27 < nodesetval->nodeNr);
        }
      }
    }

    else
    {
      xsltTransformError(ctxt, 0, inst, "The 'select' expression does not evaluate to a node set.\n");
      v25 = ctxt->traceCode;
      if (v25 && (*(v25 + 1) & 0x10) != 0)
      {
        xsltGenericDebug(xsltGenericDebugContext, "xsltForEach: select didn't evaluate to a node list\n");
      }
    }

LABEL_55:
    xmlXPathFreeObject(v15);
  }

  else
  {
    xsltTransformError(ctxt, 0, inst, "Failed to evaluate the 'select' expression.\n");
    ctxt->state = XSLT_STATE_STOPPED;
  }

  ctxt->nodeList = nodeList;
  *&ctxt->document = v30;
  ctxt->currentTemplateRule = currentTemplateRule;
  xpathCtxt->doc = doc;
  *&xpathCtxt->contextSize = v13;
}

void xsltApplyStripSpaces(xsltTransformContextPtr ctxt, xmlNodePtr node)
{
  if (node)
  {
    v4 = 0;
    children = node;
    while (1)
    {
      v6 = children;
      type = children->type;
      v8 = type > 0xD;
      v9 = (1 << type) & 0x239E;
      if (!v8 && v9 != 0)
      {
        if (v6->children)
        {
          if (xsltFindElemSpaceHandling(ctxt, v6))
          {
            for (i = v6->children; i; i = i->next)
            {
              while (i->type == XML_TEXT_NODE && xsltIsBlank(i->content))
              {
                next = i->next;
                xmlUnlinkNode(i);
                xmlFreeNode(i);
                ++v4;
                i = next;
                if (!next)
                {
                  goto LABEL_15;
                }
              }
            }
          }
        }
      }

LABEL_15:
      if (node->type == XML_ENTITY_REF_NODE)
      {
        xsltApplyStripSpaces(ctxt, node->children);
      }

      children = v6->children;
      if (!children || v6->type == XML_ENTITY_REF_NODE)
      {
        while (1)
        {
          children = v6->next;
          if (children)
          {
            break;
          }

          v6 = v6->parent;
          if (v6)
          {
            v13 = v6 == node;
          }

          else
          {
            v13 = 1;
          }

          if (v13)
          {
            goto LABEL_27;
          }
        }
      }
    }
  }

  v4 = 0;
LABEL_27:
  traceCode = ctxt->traceCode;
  if (traceCode)
  {
    if ((*(traceCode + 1) & 0x20) != 0)
    {
      xsltGenericDebug(xsltGenericDebugContext, "xsltApplyStripSpaces: removed %d ignorable blank node\n", v4);
    }
  }
}

void *xsltCleanupSourceDoc(uint64_t a1)
{
  v2 = a1;
  do
  {
LABEL_2:
    v3 = v2;
    xsltClearSourceNodeFlags(v2, 15);
    result = xsltGetPSVIPtr(v3);
    if (result)
    {
      *result = 0;
    }

    v5 = *(v3 + 8);
    if (v5 == 1)
    {
      for (i = *(v3 + 88); i; i = *(i + 48))
      {
        *(i + 80) &= 0x87FFFFFF;
        *(i + 88) = 0;
      }
    }

    if (v5 == 5)
    {
      break;
    }

    v2 = *(v3 + 24);
  }

  while (v2);
  do
  {
    v2 = *(v3 + 48);
    if (v2)
    {
      goto LABEL_2;
    }

    v3 = *(v3 + 40);
  }

  while (v3 != a1);
  return result;
}

htmlDocPtr xsltApplyStylesheetInternal(xsltStylesheetPtr a1, xmlDoc *a2, const char **a3, const char *a4, FILE *a5, xsltTransformContext *a6)
{
  xsltInitGlobals();
  v12 = 0;
  if (!a1 || !a2)
  {
    return v12;
  }

  if (!a1->internalized)
  {
    xsltGenericDebug(xsltGenericDebugContext, "Stylesheet was not fully internalized !\n");
  }

  intSubset = a2->intSubset;
  if (intSubset)
  {
    next = intSubset->next;
    prev = intSubset->prev;
    p_next = &intSubset->next;
    if (next)
    {
      next->prev = prev;
    }

    if (prev)
    {
      prev->next = next;
    }

    if (a2->children == intSubset)
    {
      a2->children = *p_next;
    }

    if (a2->last == intSubset)
    {
      a2->last = prev;
    }

    *p_next = 0;
    intSubset->prev = 0;
  }

  RootElement = xmlDocGetRootElement(a2);
  if (RootElement && (RootElement->content & 0x8000000000000000) == 0 && !xslDebugStatus)
  {
    xmlXPathOrderDocElems(a2);
  }

  v18 = a6;
  if (!a6)
  {
    v18 = xsltNewTransformContext(a1, a2);
    if (!v18)
    {
      return 0;
    }
  }

  v18->initialContextNode = a2;
  v18->initialContextDoc = a2;
  if (a5)
  {
    v18->profile = 1;
  }

  v18->outputFile = a4;
  dict = v18->dict;
  if (dict)
  {
    mode = v18->mode;
    if (mode)
    {
      v18->mode = xmlDictLookup(dict, mode, -1);
    }

    modeURI = v18->modeURI;
    if (modeURI)
    {
      v18->modeURI = xmlDictLookup(v18->dict, modeURI, -1);
    }
  }

  Import = a1;
  do
  {
    method = Import->method;
    if (method)
    {
      break;
    }

    Import = xsltNextImport(Import);
  }

  while (Import);
  v74 = a4;
  v24 = a1;
  do
  {
    doctypePublic = v24->doctypePublic;
    if (doctypePublic)
    {
      break;
    }

    v24 = xsltNextImport(v24);
  }

  while (v24);
  output = a5;
  v26 = a1;
  do
  {
    doctypeSystem = v26->doctypeSystem;
    if (doctypeSystem)
    {
      break;
    }

    v26 = xsltNextImport(v26);
  }

  while (v26);
  v75 = a6;
  v28 = a1;
  do
  {
    version = v28->version;
    if (version)
    {
      break;
    }

    v28 = xsltNextImport(v28);
  }

  while (v28);
  v30 = a1;
  do
  {
    encoding = v30->encoding;
    if (encoding)
    {
      break;
    }

    v30 = xsltNextImport(v30);
  }

  while (v30);
  if (!method || xmlStrEqual(method, "xml"))
  {
    v18->type = XSLT_OUTPUT_XML;
    goto LABEL_46;
  }

  if (xmlStrEqual(method, "html"))
  {
    v18->type = XSLT_OUTPUT_HTML;
    if (!(doctypePublic | doctypeSystem))
    {
      if (!version)
      {
        v59 = htmlNewDoc(0, 0);
        if (!v59)
        {
          goto LABEL_121;
        }

        v12 = v59;
        v60 = xmlGetIntSubset(v59);
        if (v60)
        {
          v61 = v60;
          xmlUnlinkNode(v60);
          xmlFreeDtd(v61);
        }

        doctypePublic = 0;
        doctypeSystem = 0;
        v12->intSubset = 0;
        v12->extSubset = 0;
        goto LABEL_48;
      }

      v38 = off_29F27B070;
      v39 = 10;
      while (xmlStrcasecmp(version, *(v38 - 2)))
      {
        v38 += 3;
        if (!--v39)
        {
          doctypePublic = 0;
          doctypeSystem = 0;
          goto LABEL_118;
        }
      }

      doctypePublic = *(v38 - 1);
      doctypeSystem = *v38;
    }

LABEL_118:
    v12 = htmlNewDoc(doctypeSystem, doctypePublic);
    if (!v12)
    {
      goto LABEL_121;
    }

LABEL_48:
    v33 = v18->dict;
    v12->dict = v33;
    xmlDictReference(v33);
    xsltGenericDebug(xsltGenericDebugContext, "reusing transformation dict for output\n");
    v12->charset = 1;
    if (encoding)
    {
      v12->encoding = xmlStrdup(encoding);
    }

    variables = a1->variables;
    v18->node = a2;
    v18->output = v12;
    xpathCtxt = v18->xpathCtxt;
    *&xpathCtxt->contextSize = 0x100000001;
    xpathCtxt->node = 0;
    if (xsltNeedElemSpaceHandling(v18))
    {
      v36 = xmlDocGetRootElement(a2);
      xsltApplyStripSpaces(v18, v36);
    }

    if (!v18->globalVars)
    {
      v18->globalVars = xmlHashCreate(20);
    }

    if (a3)
    {
      xsltEvalUserParams(v18, a3);
    }

    v18->hasTemplKeyPatterns = 0;
    style = v18->style;
    if (v18->style)
    {
      while (!style->keyMatch)
      {
        style = xsltNextImport(style);
        if (!style)
        {
          goto LABEL_69;
        }
      }

      v18->hasTemplKeyPatterns = 1;
LABEL_69:
      v40 = v18->style;
      for (v18->nbKeys = 0; v40; v40 = xsltNextImport(v40))
      {
        keys = v40->keys;
        if (keys)
        {
          nbKeys = v18->nbKeys;
          do
          {
            ++nbKeys;
            keys = *keys;
          }

          while (keys);
          v18->nbKeys = nbKeys;
        }
      }
    }

    else
    {
      v18->nbKeys = 0;
    }

    xsltEvalGlobalVariables(v18);
    xsltReleaseLocalRVTs(v18, 0);
    v18->insert = v12;
    v18->varsBase = v18->varsNr - 1;
    xsltProcessOneNode(v18, v18->node, 0);
    xsltLocalVariablePop(v18, 0, -2);
    xsltShutdownCtxtExts(v18);
    xsltCleanupTemplates(a1);
    v43 = a1->variables;
    if (v43 == variables)
    {
      variables = a1->variables;
      if (!v43)
      {
        goto LABEL_83;
      }
    }

    else
    {
      v44 = a1->variables;
      do
      {
        v45 = &v44->next;
        v44 = v44->next;
      }

      while (v44 != variables);
      *v45 = 0;
      xsltFreeStackElemList(v43);
      a1->variables = variables;
      if (!variables)
      {
        goto LABEL_83;
      }
    }

    do
    {
      if (variables->computed)
      {
        value = variables->value;
        if (value)
        {
          xmlXPathFreeObject(value);
          variables->value = 0;
          variables->computed = 0;
        }
      }

      variables = variables->next;
    }

    while (variables);
LABEL_83:
    v47 = xmlDocGetRootElement(v12);
    if (!v47)
    {
      goto LABEL_145;
    }

    v48 = v47;
    ns = v47->ns;
    if (!ns || (prefix = ns->prefix) == 0 || (name = xmlDictQLookup(v18->dict, prefix, v47->name)) == 0)
    {
      name = v48->name;
    }

    if (!method && !v48->ns && !xmlStrcasecmp(v48->name, "html"))
    {
      children = v12->children;
      if (children && children != v48)
      {
        do
        {
          type = children->type;
          if (type == XML_TEXT_NODE)
          {
            if (!xmlIsBlankNode(children))
            {
              break;
            }
          }

          else if (type == XML_ELEMENT_NODE)
          {
            break;
          }

          children = children->next;
          if (children)
          {
            v54 = children == v48;
          }

          else
          {
            v54 = 1;
          }
        }

        while (!v54);
      }

      if (children == v48)
      {
        v18->type = XSLT_OUTPUT_HTML;
        v12->type = XML_HTML_DOCUMENT_NODE;
        if (doctypePublic | doctypeSystem)
        {
          v55 = v12;
          v56 = name;
          v57 = doctypePublic;
          v58 = doctypeSystem;
        }

        else
        {
          if (!version)
          {
            goto LABEL_132;
          }

          v62 = off_29F27B070;
          v63 = 10;
          while (xmlStrcasecmp(version, *(v62 - 2)))
          {
            v62 += 3;
            if (!--v63)
            {
              v57 = 0;
              v58 = 0;
              goto LABEL_129;
            }
          }

          v57 = *(v62 - 1);
          v58 = *v62;
LABEL_129:
          if (!(v57 | v58))
          {
            goto LABEL_132;
          }

          v55 = v12;
          v56 = name;
        }

        v12->intSubset = xmlCreateIntSubset(v55, v56, v57, v58);
      }
    }

LABEL_132:
    if (v18->type == XSLT_OUTPUT_XML)
    {
      v64 = a1;
      do
      {
        v65 = v64->doctypePublic;
        if (v65)
        {
          break;
        }

        v64 = xsltNextImport(v64);
      }

      while (v64);
      while (1)
      {
        v66 = a1->doctypeSystem;
        if (v66)
        {
          break;
        }

        a1 = xsltNextImport(a1);
        if (!a1)
        {
          if (!v65)
          {
            goto LABEL_145;
          }

          break;
        }
      }

      v67 = v12->children;
      last = v12->last;
      v12->last = 0;
      v12->children = 0;
      v12->intSubset = xmlCreateIntSubset(v12, name, v65, v66);
      v69 = v12->children;
      if (v69)
      {
        v69->next = v67;
        v67->prev = v69;
      }

      else
      {
        v12->children = v67;
      }

      v12->last = last;
    }

LABEL_145:
    xmlXPathFreeNodeSet(v18->nodeList);
    v71 = output;
    if (output)
    {
      xsltSaveProfiling(v18, output);
    }

    if (v18->state)
    {
      xmlFreeDoc(v12);
      v12 = 0;
    }

    else if (v74)
    {
      v70 = xsltCheckWrite(v18->sec, v18, v74);
      if (v70)
      {
        if ((v70 & 0x80000000) != 0)
        {
          xsltTransformError(v18, 0, 0, "xsltApplyStylesheet: saving to %s may not be possible\n");
        }
      }

      else
      {
        xsltTransformError(v18, 0, 0, "xsltApplyStylesheet: forbidden to save to %s\n");
      }
    }

    if (linkedOnOrAfterFall2023OSVersions(v70, v71) && v18->sourceDocDirty)
    {
      xsltCleanupSourceDoc(a2);
    }

    if (!v75)
    {
      goto LABEL_153;
    }

    return v12;
  }

  if (xmlStrEqual(method, "xhtml"))
  {
    xsltTransformError(v18, 0, a2, "xsltApplyStylesheetInternal: unsupported method xhtml, using html\n");
    v18->type = XSLT_OUTPUT_HTML;
    v32 = htmlNewDoc(doctypeSystem, doctypePublic);
    if (v32)
    {
      goto LABEL_47;
    }

    goto LABEL_121;
  }

  if (!xmlStrEqual(method, "text"))
  {
    xsltTransformError(v18, 0, a2, "xsltApplyStylesheetInternal: unsupported method (%s)\n", method);
    goto LABEL_121;
  }

  v18->type = XSLT_OUTPUT_TEXT;
LABEL_46:
  v32 = xmlNewDoc(a1->version);
  if (v32)
  {
LABEL_47:
    v12 = v32;
    goto LABEL_48;
  }

LABEL_121:
  v12 = 0;
  if (!v75)
  {
LABEL_153:
    xsltFreeTransformContext(v18);
  }

  return v12;
}

int xsltRunStylesheetUser(xsltStylesheetPtr style, xmlDocPtr doc, const char **params, const char *output, xmlSAXHandlerPtr SAX, xmlOutputBufferPtr IObuf, FILE *profile, xsltTransformContextPtr userCtxt)
{
  if (!output && !SAX && !IObuf || SAX && IObuf)
  {
    return -1;
  }

  if (SAX)
  {
    xsltGenericError(xsltGenericErrorContext, "Unimplemented block at %s:%d\n", "/Library/Caches/com.apple.xbs/Sources/libxslt/libxslt/libxslt/transform.c", 6365);
    return -1;
  }

  v14 = xsltApplyStylesheetInternal(style, doc, params, output, profile, userCtxt);
  if (!v14)
  {
    xsltTransformError(0, 0, doc, "xsltRunStylesheet : run failed\n");
    return -1;
  }

  v15 = v14;
  if (IObuf)
  {
    v16 = xsltSaveResultTo(IObuf, v14, style);
  }

  else
  {
    v16 = xsltSaveResultToFilename(output, v14, style, 0);
  }

  v12 = v16;
  xmlFreeDoc(v15);
  return v12;
}

xmlNodePtr xsltDebuggerStartSequenceConstructor(xsltTransformContext *a1, xmlNode *a2, xmlNodePtr source, xsltTemplatePtr templ, int *a5)
{
  if (!a1->debugStatus)
  {
    return 0;
  }

  if (!templ)
  {
    v10 = source;
    v9 = xslAddCall(0, source);
    *a5 = v9;
    if ((a1->debugStatus & 0xFFFFFFFE) != 8)
    {
      if (v10)
      {
        xslHandleDebugger(v10, a2, 0, a1);
        return v10;
      }

      inst = a1->inst;
      if (inst)
      {
        xslHandleDebugger(inst, a2, 0, a1);
        return a1->inst;
      }

      return 0;
    }

    goto LABEL_6;
  }

  v9 = xslAddCall(templ, templ->elem);
  *a5 = v9;
  if ((a1->debugStatus & 0xFFFFFFFE) == 8)
  {
LABEL_6:
    if (v9)
    {
      xslDropCall();
    }

    return 0;
  }

  xslHandleDebugger(templ->elem, a2, templ, a1);
  return templ->elem;
}

uint64_t xsltApplyFallbacks(uint64_t a1, xmlNode *a2, uint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = *(a3 + 24);
  if (!v3)
  {
    return 0;
  }

  v6 = 0;
  do
  {
    if (*(v3 + 8) == 1)
    {
      v7 = *(v3 + 72);
      if (v7)
      {
        if (xmlStrEqual(*(v7 + 16), "http://www.w3.org/1999/XSL/Transform") && xmlStrEqual(*(v3 + 16), "fallback"))
        {
          v6 = (v6 + 1);
          xsltApplySequenceConstructor(a1, a2, *(v3 + 24), 0);
        }
      }
    }

    v3 = *(v3 + 48);
  }

  while (v3);
  return v6;
}

xmlNsPtr xsltCopyNamespaceListInternal(xmlNsPtr result, uint64_t *a2)
{
  v3 = 0;
  if (result->type == XML_ELEMENT_NODE)
  {
    v4 = result;
  }

  else
  {
    v4 = 0;
  }

  while (*(a2 + 2) == 18)
  {
    if (v4)
    {
      if ((ns = v4->ns) != 0 && xmlStrEqual(ns->prefix, a2[3]) && xmlStrEqual(v4->ns->href, a2[2]) || (v6 = xmlSearchNs(v4->doc, v4, a2[3])) != 0 && xmlStrEqual(v6->href, a2[2]))
      {
LABEL_14:
        result = v3;
        goto LABEL_15;
      }
    }

    result = xmlNewNs(v4, a2[2], a2[3]);
    if (v3)
    {
      if (!result)
      {
        goto LABEL_14;
      }

      v3->next = result;
    }

LABEL_15:
    a2 = *a2;
    v3 = result;
    if (!a2)
    {
      return result;
    }
  }

  return result;
}

void xsltCopyAttrListNoOverwrite(xsltTransformContextPtr ctxt, xmlNodePtr cur, xmlNodePtr node, uint64_t a4)
{
  if (a4)
  {
    v4 = a4;
    SpecialNamespace = 0;
    v9 = 0;
    while (1)
    {
      v10 = *(v4 + 72);
      if (v10 != v9)
      {
        if (v10)
        {
          SpecialNamespace = xsltGetSpecialNamespace(ctxt, cur, *(v10 + 16), *(v10 + 24), node);
          v9 = v10;
          if (!SpecialNamespace)
          {
            return;
          }
        }

        else
        {
          v9 = 0;
          SpecialNamespace = 0;
        }
      }

      v11 = *(v4 + 24);
      if (!v11)
      {
        break;
      }

      if (*(v11 + 8) == 3 && !*(v11 + 48))
      {
        v14 = *(v4 + 16);
        v17 = *(v11 + 80);
        v15 = node;
        v16 = SpecialNamespace;
LABEL_15:
        if (!xmlNewNsProp(v15, v16, v14, v17))
        {
          return;
        }

        goto LABEL_16;
      }

      String = xmlNodeListGetString(*(v4 + 64), v11, 1);
      v13 = xmlNewNsProp(node, SpecialNamespace, *(v4 + 16), String);
      free(String);
      if (!v13)
      {
        return;
      }

LABEL_16:
      v4 = *(v4 + 48);
      if (!v4)
      {
        return;
      }
    }

    v14 = *(v4 + 16);
    v15 = node;
    v16 = SpecialNamespace;
    v17 = 0;
    goto LABEL_15;
  }
}

xmlDocPtr xsltCreateRVT(xsltTransformContextPtr ctxt)
{
  if (!ctxt)
  {
    return 0;
  }

  cache = ctxt->cache;
  p_private = &cache->RVT->_private;
  if (cache->RVT)
  {
    v4 = *p_private;
    cache->RVT = p_private[1];
    free(p_private);
    v5 = ctxt->cache;
    nbRVT = v5->nbRVT;
    v7 = __OFSUB__(nbRVT, 1);
    v8 = nbRVT - 1;
    if (v8 < 0 == v7)
    {
      v5->nbRVT = v8;
    }
  }

  else
  {
    v4 = xmlNewDoc(0);
    if (v4)
    {
      dict = ctxt->dict;
      v4->dict = dict;
      xmlDictReference(dict);
      v4->name = xmlStrdup(" fake node libxslt");
      v4->doc = v4;
      v4->parent = 0;
    }
  }

  return v4;
}

int xsltRegisterTmpRVT(xsltTransformContextPtr ctxt, xmlDocPtr RVT)
{
  result = -1;
  if (ctxt && RVT)
  {
    v5 = xsltRVTListCreate();
    if (v5)
    {
      v7 = v5;
      if (linkedOnOrAfterFall2023OSVersions(v5, v6))
      {
        RVT->compression = 1;
        *v7 = RVT;
      }

      else
      {
        RVT->psvi = 1;
      }

      result = 0;
      contextVariable = ctxt->contextVariable;
      if (contextVariable)
      {
        p_tmpRVT = (contextVariable + 64);
      }

      else
      {
        p_tmpRVT = &ctxt->tmpRVT;
      }

      v7[1] = *p_tmpRVT;
      *p_tmpRVT = v7;
    }

    else
    {
      return -1;
    }
  }

  return result;
}

void *xsltRVTListCreate()
{
  v0 = malloc_type_malloc(0x10uLL, 0x20040A4A59CD2uLL);
  v1 = v0;
  if (v0)
  {
    *v0 = 0;
    v0[1] = 0;
  }

  else
  {
    xsltTransformError(0, 0, 0, "xsltRVTListCreate: malloc failed\n");
  }

  return v1;
}

int xsltRegisterLocalRVT(xsltTransformContextPtr ctxt, xmlDocPtr RVT)
{
  result = -1;
  if (ctxt && RVT)
  {
    v5 = xsltRVTListCreate();
    if (v5)
    {
      v7 = v5;
      if (linkedOnOrAfterFall2023OSVersions(v5, v6))
      {
        RVT->compression = 1;
      }

      else
      {
        RVT->psvi = 1;
      }

      *v7 = RVT;
      contextVariable = ctxt->contextVariable;
      if (contextVariable && (contextVariable[88] & 2) != 0)
      {
        p_localRVT = (contextVariable + 64);
      }

      else
      {
        p_localRVT = &ctxt->localRVT;
      }

      result = 0;
      v7[1] = *p_localRVT;
      *p_localRVT = v7;
    }

    else
    {
      return -1;
    }
  }

  return result;
}

int xsltExtensionInstructionResultFinalize(xsltTransformContextPtr ctxt)
{
  v1 = *__xmlGenericError();
  v2 = __xmlGenericErrorContext();
  v1(*v2, "xsltExtensionInstructionResultFinalize is unsupported in this release of libxslt.\n");
  return -1;
}

int xsltFlagRVTs(xsltTransformContextPtr ctxt, xmlXPathObjectPtr obj, intptr_t val)
{
  v4 = 0xFFFFFFFFLL;
  if (!ctxt || !obj)
  {
    return v4;
  }

  if ((obj->type | 8) != 9 || (nodesetval = obj->nodesetval) == 0 || nodesetval->nodeNr < 1)
  {
LABEL_34:
    LODWORD(v4) = 0;
    return v4;
  }

  v7 = val;
  v8 = 0;
  v9 = val;
  while (1)
  {
    v10 = nodesetval->nodeTab[v8];
    if (v10->type == XML_NAMESPACE_DECL)
    {
      v10 = v10->_private;
      if (!v10 || v10->type != XML_ELEMENT_NODE)
      {
        xsltTransformError(ctxt, 0, ctxt->inst, "Internal error in xsltFlagRVTs(): Cannot retrieve the doc of a namespace node.\n");
        goto LABEL_38;
      }
    }

    doc = v10->doc;
    if (!doc)
    {
      xsltTransformError(ctxt, 0, ctxt->inst, "Internal error in xsltFlagRVTs(): Cannot retrieve the doc of a node.\n");
      goto LABEL_38;
    }

    v4 = linkedOnOrAfterFall2023OSVersions(v4, obj);
    v12 = v4 ? doc->compression : LODWORD(doc->psvi);
    name = doc->name;
    if (name)
    {
      if (*name == 32 && v12 != 3)
      {
        break;
      }
    }

LABEL_33:
    ++v8;
    nodesetval = obj->nodesetval;
    if (v8 >= nodesetval->nodeNr)
    {
      goto LABEL_34;
    }
  }

  traceCode = ctxt->traceCode;
  if (traceCode && (*(traceCode + 2) & 1) != 0)
  {
    xsltGenericDebug(xsltGenericDebugContext, "Flagging RVT %p: %d -> %d\n", doc, v12, v9);
  }

  if (v7 != 3)
  {
    if (v7 == 2)
    {
      v4 = linkedOnOrAfterFall2023OSVersions(v4, obj);
      v16 = 2;
      if (!v4)
      {
        goto LABEL_32;
      }
    }

    else
    {
      if (v7 != 1 || v12 != 2)
      {
        goto LABEL_33;
      }

      v4 = linkedOnOrAfterFall2023OSVersions(v4, obj);
      v16 = 1;
      if (!v4)
      {
LABEL_32:
        doc->psvi = v16;
        goto LABEL_33;
      }
    }

    goto LABEL_29;
  }

  if (v12 == 1)
  {
    v4 = linkedOnOrAfterFall2023OSVersions(v4, obj);
    v16 = 3;
    if (!v4)
    {
      goto LABEL_32;
    }

LABEL_29:
    doc->compression = v16;
    goto LABEL_33;
  }

  v17 = *__xmlGenericError();
  v18 = __xmlGenericErrorContext();
  v19 = (v17)(*v18, "xsltFlagRVTs: Invalid transition %d => GLOBAL\n", v12);
  if (linkedOnOrAfterFall2023OSVersions(v19, v20))
  {
    doc->compression = 3;
  }

  else
  {
    doc->psvi = 3;
  }

LABEL_38:
  LODWORD(v4) = -1;
  return v4;
}

void xsltReleaseRVT(xsltTransformContextPtr ctxt, xmlDocPtr RVT)
{
  if (RVT)
  {
    v4 = xsltRVTListCreate();
    if (v4)
    {
      *v4 = &RVT->_private;

      xsltReleaseRVTList(ctxt, v4);
    }

    else
    {
      if (RVT->_private)
      {
        xsltFreeDocumentKeys(RVT->_private);
        free(RVT->_private);
      }

      xmlFreeDoc(RVT);
    }
  }
}

void xsltReleaseRVTList(uint64_t a1, void ***a2)
{
  if (a2)
  {
    if (a1 && *(*(a1 + 424) + 8) <= 39)
    {
      v4 = *a2;
      v5 = **a2;
      if (v5)
      {
        xsltFreeDocumentKeys(v5);
        free(**a2);
        v4 = *a2;
        **a2 = 0;
      }

      v6 = v4[3];
      if (v6)
      {
        xmlFreeNodeList(v6);
        v4 = *a2;
        v4[3] = 0;
        v4[4] = 0;
      }

      v7 = v4[15];
      if (v7)
      {
        xmlFreeIDTable(v7);
        v4 = *a2;
        (*a2)[15] = 0;
      }

      v8 = v4[16];
      if (v8)
      {
        xmlFreeRefTable(v8);
        (*a2)[16] = 0;
      }

      v9 = linkedOnOrAfterFall2023OSVersions(v8, a2);
      v10 = *a2;
      if (v9)
      {
        *(v10 + 18) = 0;
      }

      else
      {
        v10[20] = 0;
      }

      v12 = *(a1 + 424);
      a2[1] = *v12;
      *v12 = a2;
      ++*(v12 + 8);
    }

    else
    {
      v11 = *a2;
      if (**a2)
      {
        xsltFreeDocumentKeys(**a2);
        free(**a2);
        v11 = *a2;
      }

      xmlFreeDoc(v11);

      free(a2);
    }
  }
}

int xsltRegisterPersistRVT(xsltTransformContextPtr ctxt, xmlDocPtr RVT)
{
  result = -1;
  if (ctxt && RVT)
  {
    v5 = xsltRVTListCreate();
    if (v5)
    {
      v7 = v5;
      if (linkedOnOrAfterFall2023OSVersions(v5, v6))
      {
        RVT->compression = 3;
      }

      else
      {
        RVT->psvi = 3;
      }

      result = 0;
      persistRVT = ctxt->persistRVT;
      *v7 = RVT;
      v7[1] = persistRVT;
      ctxt->persistRVT = v7;
    }

    else
    {
      return -1;
    }
  }

  return result;
}

void xsltFreeRVTs(xsltTransformContextPtr ctxt)
{
  if (ctxt)
  {
    localRVT = ctxt->localRVT;
    if (localRVT)
    {
      do
      {
        v3 = localRVT->_private;
        v4 = *&localRVT->type;
        if (*localRVT->_private)
        {
          xsltFreeDocumentKeys(*localRVT->_private);
          free(*localRVT->_private);
          v3 = localRVT->_private;
        }

        xmlFreeDoc(v3);
        free(localRVT);
        localRVT = v4;
      }

      while (v4);
    }

    ctxt->localRVT = 0;
    tmpRVT = ctxt->tmpRVT;
    if (tmpRVT)
    {
      do
      {
        v6 = tmpRVT->_private;
        v7 = *&tmpRVT->type;
        if (*tmpRVT->_private)
        {
          xsltFreeDocumentKeys(*tmpRVT->_private);
          free(*tmpRVT->_private);
          v6 = tmpRVT->_private;
        }

        xmlFreeDoc(v6);
        free(tmpRVT);
        tmpRVT = v7;
      }

      while (v7);
    }

    ctxt->tmpRVT = 0;
    persistRVT = ctxt->persistRVT;
    if (persistRVT)
    {
      do
      {
        v9 = persistRVT->_private;
        v10 = *&persistRVT->type;
        if (*persistRVT->_private)
        {
          xsltFreeDocumentKeys(*persistRVT->_private);
          free(*persistRVT->_private);
          v9 = persistRVT->_private;
        }

        xmlFreeDoc(v9);
        free(persistRVT);
        persistRVT = v10;
      }

      while (v10);
    }

    ctxt->persistRVT = 0;
  }
}

void xsltFreeStackElemList(xsltStackElemPtr elem)
{
  if (elem)
  {
    do
    {
      next = elem->next;
      xsltFreeStackElem(elem, v1);
      elem = next;
    }

    while (next);
  }
}

void xsltFreeStackElem(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return;
  }

  v3 = *(a1 + 7);
  if (v3)
  {
    xmlXPathFreeObject(v3);
  }

  v4 = *(a1 + 10);
  if (!v4)
  {
    goto LABEL_23;
  }

  v5 = *(a1 + 8);
  if (!v5)
  {
    goto LABEL_20;
  }

  do
  {
    v6 = *v5;
    *(a1 + 8) = v5[1];
    if (!v6)
    {
      goto LABEL_17;
    }

    v7 = linkedOnOrAfterFall2023OSVersions(v3, a2);
    v8 = *v5;
    if (v7)
    {
      v9 = *(v8 + 72);
    }

    else
    {
      v9 = *(v8 + 160);
    }

    if (v9 == 2)
    {
      v10 = xsltRegisterLocalRVT(*(a1 + 10), v8);
      v12 = linkedOnOrAfterFall2023OSVersions(v10, v11);
      v13 = *v5;
      if (v12)
      {
        *(v13 + 72) = 2;
      }

      else
      {
        *(v13 + 160) = 2;
      }

LABEL_17:
      free(v5);
      goto LABEL_18;
    }

    if (v9 == 1)
    {
      xsltReleaseRVTList(*(a1 + 10), v5);
    }

    else
    {
      v14 = *__xmlGenericError();
      v15 = __xmlGenericErrorContext();
      v3 = (v14)(*v15, "xsltFreeStackElem: Unexpected RVT flag %d\n", v9);
    }

LABEL_18:
    v5 = *(a1 + 8);
  }

  while (v5);
  v4 = *(a1 + 10);
  if (v4)
  {
LABEL_20:
    if (*(*(v4 + 424) + 24) <= 49)
    {
      *(a1 + 4) = 0u;
      *(a1 + 5) = 0u;
      *(a1 + 2) = 0u;
      *(a1 + 3) = 0u;
      *a1 = 0u;
      *(a1 + 1) = 0u;
      *(a1 + 10) = v4;
      v16 = *(v4 + 424);
      *a1 = *(v16 + 16);
      *(v16 + 16) = a1;
      ++*(v16 + 24);
      return;
    }
  }

LABEL_23:

  free(a1);
}

uint64_t xsltAddStackElem(uint64_t a1, void *a2)
{
  result = 0xFFFFFFFFLL;
  if (!a1)
  {
    return result;
  }

  v4 = a2;
  if (!a2)
  {
    return result;
  }

  v5 = "malloc failed !\n";
  while (1)
  {
    v6 = *(a1 + 52);
    if (v6)
    {
      v7 = *(a1 + 56);
    }

    else
    {
      *(a1 + 52) = 10;
      v7 = malloc_type_malloc(0x50uLL, 0x2004093837F09uLL);
      *(a1 + 56) = v7;
      if (!v7)
      {
        goto LABEL_14;
      }

      v6 = *(a1 + 52);
    }

    v8 = *(a1 + 48);
    if (v8 >= v6)
    {
      break;
    }

LABEL_11:
    *(a1 + 48) = v8 + 1;
    v7[v8] = v4;
    *(a1 + 40) = v4;
    v4 = *v4;
    if (!v4)
    {
      return 0;
    }
  }

  v9 = 2 * v6;
  *(a1 + 52) = v9;
  v7 = malloc_type_realloc(v7, 8 * v9, 0x2004093837F09uLL);
  *(a1 + 56) = v7;
  if (v7)
  {
    v8 = *(a1 + 48);
    goto LABEL_11;
  }

  v5 = "realloc failed !\n";
LABEL_14:
  v10 = *__xmlGenericError();
  v11 = __xmlGenericErrorContext();
  v10(*v11, v5);
  return 0xFFFFFFFFLL;
}

int xsltEvalGlobalVariables(xsltTransformContextPtr ctxt)
{
  if (!ctxt)
  {
    return -1;
  }

  if (!ctxt->document)
  {
    return -1;
  }

  traceCode = ctxt->traceCode;
  if (traceCode && (*(traceCode + 2) & 1) != 0)
  {
    xsltGenericDebug(xsltGenericDebugContext, "Registering global variables\n");
  }

  for (i = ctxt->style; i; i = xsltNextImport(i))
  {
    variables = i->variables;
    doc = i->doc;
    if (doc)
    {
      URL = doc->URL;
      if (URL)
      {
        v7 = ctxt->traceCode;
        if (v7)
        {
          if (*(v7 + 2))
          {
            xsltGenericDebug(xsltGenericDebugContext, "Registering global variables from %s\n", URL);
          }
        }
      }
    }

    for (; variables; variables = variables->next)
    {
      v8 = xmlHashLookup2(ctxt->globalVars, variables->name, variables->nameURI);
      if (v8)
      {
        comp = variables->comp;
        if (comp)
        {
          if (comp->type == XSLT_FUNC_VARIABLE)
          {
            inst = comp->inst;
            if (inst)
            {
              v11 = v8[1];
              if (v11)
              {
                v12 = *(v11 + 24);
                if (v12)
                {
                  if (inst->doc == *(v12 + 64))
                  {
                    xsltTransformError(ctxt, i, inst, "Global variable %s already defined\n", variables->name);
                    ++i->errors;
                  }
                }
              }
            }
          }
        }
      }

      else
      {
        v13 = malloc_type_malloc(0x60uLL, 0x10700405DC409EAuLL);
        v14 = v13;
        if (v13)
        {
          v13[4] = 0u;
          v13[5] = 0u;
          v13[2] = 0u;
          v13[3] = 0u;
          *v13 = 0u;
          v13[1] = 0u;
          *(v13 + 10) = variables->context;
          name = variables->name;
          *(v13 + 3) = name;
          v16 = *&variables->nameURI;
          v13[2] = v16;
          *(v13 + 6) = variables->tree;
          *(v13 + 1) = variables->comp;
          nameURI = v16;
        }

        else
        {
          xsltTransformError(0, 0, 0, "xsltCopyStackElem : malloc failed\n");
          name = variables->name;
          nameURI = variables->nameURI;
        }

        xmlHashAddEntry2(ctxt->globalVars, name, nameURI, v14);
      }
    }
  }

  xmlHashScan(ctxt->globalVars, xsltEvalGlobalVariableWrapper, ctxt);
  return 0;
}

int xsltEvalUserParams(xsltTransformContextPtr ctxt, const char **params)
{
  if (!params)
  {
    return 0;
  }

  for (i = (params + 1); ; i += 2)
  {
    v4 = *(i - 1);
    if (!v4)
    {
      break;
    }

    v5 = *i;
    if (xsltProcessUserParamInternal(ctxt, v4, v5, 1))
    {
      return -1;
    }
  }

  return 0;
}

int xsltQuoteUserParams(xsltTransformContextPtr ctxt, const char **params)
{
  if (!params)
  {
    return 0;
  }

  for (i = (params + 1); ; i += 2)
  {
    v4 = *(i - 1);
    if (!v4)
    {
      break;
    }

    v5 = *i;
    if (xsltProcessUserParamInternal(ctxt, v4, v5, 0))
    {
      return -1;
    }
  }

  return 0;
}

uint64_t xsltProcessUserParamInternal(xsltTransformContextPtr ctxt, xmlChar *name, const xmlChar *a3, int a4)
{
  if (!ctxt)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = name;
  result = 0;
  if (!name || !a3)
  {
    return result;
  }

  prefix = 0;
  style = ctxt->style;
  traceCode = ctxt->traceCode;
  if (traceCode && (*(traceCode + 2) & 1) != 0)
  {
    xsltGenericDebug(xsltGenericDebugContext, "Evaluating user parameter %s=%s\n", name, a3);
  }

  v11 = *v4;
  if (v11 == 123)
  {
    v12 = v4 + 1;
    for (i = -1; ; ++i)
    {
      if (!v11)
      {
        xsltTransformError(ctxt, style, 0, "user param : malformed parameter name : %s\n", v4);
        href = 0;
        goto LABEL_22;
      }

      if (v11 == 125)
      {
        break;
      }

      v14 = *v12++;
      LOBYTE(v11) = v14;
    }

    href = xmlDictLookup(ctxt->dict, v4 + 1, i);
    v4 = xmlDictLookup(ctxt->dict, v12, -1);
    if (v4)
    {
      goto LABEL_22;
    }

    return 0xFFFFFFFFLL;
  }

  v4 = xsltSplitQName(ctxt->dict, v4, &prefix);
  if (!prefix)
  {
    goto LABEL_21;
  }

  doc = style->doc;
  RootElement = xmlDocGetRootElement(doc);
  v17 = xmlSearchNs(doc, RootElement, prefix);
  if (!v17)
  {
    xsltTransformError(ctxt, style, 0, "user param : no namespace bound to prefix %s\n", prefix);
LABEL_21:
    href = 0;
    if (!v4)
    {
      return 0xFFFFFFFFLL;
    }

    goto LABEL_22;
  }

  href = v17->href;
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

LABEL_22:
  if (xmlHashLookup2(ctxt->globalVars, v4, href))
  {
    xsltTransformError(ctxt, style, 0, "Global parameter %s already defined\n", v4);
  }

  if (ctxt->globalVars)
  {
    if (style)
    {
      goto LABEL_26;
    }
  }

  else
  {
    ctxt->globalVars = xmlHashCreate(20);
    if (style)
    {
LABEL_26:
      while (1)
      {
        variables = ctxt->style->variables;
        if (variables)
        {
          break;
        }

LABEL_32:
        style = xsltNextImport(style);
        if (!style)
        {
          goto LABEL_35;
        }
      }

      while (1)
      {
        comp = variables->comp;
        if (comp)
        {
          if (comp->type == XSLT_FUNC_VARIABLE && xmlStrEqual(variables->name, v4) && xmlStrEqual(variables->nameURI, href))
          {
            return 0;
          }
        }

        variables = variables->next;
        if (!variables)
        {
          goto LABEL_32;
        }
      }
    }
  }

LABEL_35:
  v21 = ctxt->style;
  if (a4)
  {
    v22 = xmlXPathCtxtCompile(ctxt->xpathCtxt, a3);
    if (!v22 || (v23 = v22, xpathCtxt = ctxt->xpathCtxt, namespaces = xpathCtxt->namespaces, v36 = v21, nsNr = xpathCtxt->nsNr, initialContextNode = ctxt->initialContextNode, initialContextDoc = ctxt->initialContextDoc, xpathCtxt->namespaces = 0, xpathCtxt->nsNr = 0, v29 = *&xpathCtxt->contextSize, *&xpathCtxt->contextSize = 0x100000001, v35 = *&xpathCtxt->doc, xpathCtxt->doc = initialContextDoc, xpathCtxt->node = initialContextNode, v30 = xmlXPathCompiledEval(v22, xpathCtxt), *&xpathCtxt->doc = v35, *&xpathCtxt->contextSize = v29, xpathCtxt->namespaces = namespaces, xpathCtxt->nsNr = nsNr, v21 = v36, xmlXPathFreeCompExpr(v23), !v30))
    {
      xsltTransformError(ctxt, v21, 0, "Evaluating user parameter %s failed\n", v4);
      ctxt->state = XSLT_STATE_STOPPED;
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    v30 = 0;
  }

  if (xsltGenericDebugContext == *MEMORY[0x29EDCA620] || xsltGenericDebugContext == *MEMORY[0x29EDCA610])
  {
    xmlXPathDebugDumpObject(xsltGenericDebugContext, v30, 0);
  }

  v32 = xsltNewStackElem(0);
  v33 = v32;
  if (v32)
  {
    *(v32 + 3) = v4;
    *(v32 + 5) = xmlDictLookup(ctxt->dict, a3, -1);
    if (href)
    {
      *(v33 + 4) = xmlDictLookup(ctxt->dict, href, -1);
    }

    *(v33 + 6) = 0;
    *(v33 + 4) = 1;
    if (!a4)
    {
      v30 = xmlXPathNewString(a3);
    }

    *(v33 + 7) = v30;
  }

  result = xmlHashAddEntry2(ctxt->globalVars, v4, href, v33);
  if (result)
  {
    xsltFreeStackElem(v33, v34);
    xsltTransformError(ctxt, v21, 0, "Global parameter %s already defined\n", v4);
    return 0;
  }

  return result;
}

xmlXPathObjectPtr xsltVariableLookup(xsltTransformContextPtr ctxt, const xmlChar *name, const xmlChar *ns_uri)
{
  if (!ctxt)
  {
    return 0;
  }

  v6 = xsltStackLookup(ctxt, name, ns_uri);
  if (v6)
  {
    v7 = v6;
    if (*(v6 + 4))
    {
      v8 = v6[7];
      if (v8)
      {
LABEL_5:

        return xmlXPathObjectCopy(v8);
      }
    }

    else
    {
      traceCode = ctxt->traceCode;
      if (traceCode && (*(traceCode + 2) & 1) != 0)
      {
        xsltGenericDebug(xsltGenericDebugContext, "uncomputed variable %s\n", name);
      }

      v8 = xsltEvalVariable(ctxt, v7, 0);
      *(v7 + 56) = v8;
      *(v7 + 16) = 1;
      if (v8)
      {
        goto LABEL_5;
      }
    }

    v11 = ctxt->traceCode;
    if (v11 && (*(v11 + 2) & 1) != 0)
    {
      xsltGenericDebug(xsltGenericDebugContext, "variable not found %s\n", name);
    }

    return 0;
  }

  return xsltGlobalVariableLookup(ctxt, name, ns_uri);
}

void *xsltStackLookup(uint64_t a1, const xmlChar *a2, const xmlChar *a3)
{
  if (!a2)
  {
    return 0;
  }

  v4 = *(a1 + 48);
  if (!v4)
  {
    return 0;
  }

  v6 = *(a1 + 64);
  if (v4 <= v6)
  {
LABEL_9:
    v8 = xmlDictLookup(*(a1 + 368), a2, -1);
    if (a3)
    {
      v9 = xmlDictLookup(*(a1 + 368), a3, -1);
    }

    else
    {
      v9 = 0;
    }

    v10 = *(a1 + 48);
    v11 = *(a1 + 64);
    if (v10 > v11)
    {
      while (1)
      {
        result = *(*(a1 + 56) - 8 + 8 * v10);
        if (result)
        {
          break;
        }

LABEL_18:
        result = 0;
        if (--v10 <= v11)
        {
          return result;
        }
      }

      while (result[3] != v8 || result[4] != v9)
      {
        result = *result;
        if (!result)
        {
          goto LABEL_18;
        }
      }

      return result;
    }

    return 0;
  }

  while (1)
  {
    result = *(*(a1 + 56) - 8 + 8 * v4);
    if (result)
    {
      break;
    }

LABEL_8:
    if (--v4 <= v6)
    {
      goto LABEL_9;
    }
  }

  while (result[3] != a2 || result[4] != a3)
  {
    result = *result;
    if (!result)
    {
      goto LABEL_8;
    }
  }

  return result;
}

xmlXPathObjectPtr xsltGlobalVariableLookup(xsltTransformContext *a1, const xmlChar *a2, const xmlChar *a3)
{
  if (!a1->xpathCtxt)
  {
    return 0;
  }

  globalVars = a1->globalVars;
  if (!globalVars)
  {
    return 0;
  }

  v6 = xmlHashLookup2(globalVars, a2, a3);
  if (!v6)
  {
    traceCode = a1->traceCode;
    if (traceCode && (*(traceCode + 2) & 1) != 0)
    {
      xsltGenericDebug(xsltGenericDebugContext, "global variable not found %s\n", a2);
    }

    return 0;
  }

  if (!*(v6 + 4))
  {
    if (*(v6 + 3) != " var/param being computed")
    {
      v7 = xsltEvalGlobalVariable(v6, a1);
      goto LABEL_11;
    }

    xsltTransformError(a1, 0, *(*(v6 + 1) + 24), "Recursive definition of %s\n", a2);
    return 0;
  }

  v7 = *(v6 + 7);
LABEL_11:

  return xmlXPathObjectCopy(v7);
}

xmlXPathObject *xsltEvalVariable(xsltTransformContextPtr ctxt, uint64_t a2, uint64_t a3)
{
  inst = ctxt->inst;
  traceCode = ctxt->traceCode;
  if (traceCode && (*(traceCode + 2) & 1) != 0)
  {
    xsltGenericDebug(xsltGenericDebugContext, "Evaluating variable '%s'\n", *(a2 + 24));
  }

  v8 = *(a2 + 40);
  if (!v8)
  {
    if (*(a2 + 48))
    {
      contextVariable = ctxt->contextVariable;
      RVT = xsltCreateRVT(ctxt);
      if (RVT)
      {
        v21 = RVT;
        v22 = xsltRVTListCreate();
        if (v22)
        {
          *v22 = v21;
          *(a2 + 64) = v22;
          if (linkedOnOrAfterFall2023OSVersions(v22, v23))
          {
            v21->compression = 1;
          }

          else
          {
            v21->psvi = 1;
          }

          ctxt->contextVariable = a2;
          node = ctxt->node;
          v28 = *(a2 + 48);
          v32 = *&ctxt->output;
          ctxt->output = v21;
          ctxt->insert = v21;
          xsltApplyOneTemplate(ctxt, node, v28, 0, 0);
          ctxt->contextVariable = contextVariable;
          *&ctxt->output = v32;
          v29 = xmlXPathNewValueTree(v21);
          if (v29)
          {
            v25 = v29;
            v29->BOOLval = 0;
          }

          else
          {
            v25 = xmlXPathNewCString(&unk_2999B6B5E);
          }

          goto LABEL_35;
        }
      }

      v25 = 0;
    }

    else
    {
      v25 = xmlXPathNewCString(&unk_2999B6B5E);
    }

LABEL_38:
    ctxt->inst = inst;
    return v25;
  }

  xpathCtxt = ctxt->xpathCtxt;
  v10 = ctxt->contextVariable;
  if (a3 && (v11 = *(a3 + 304)) != 0 || (v11 = xmlXPathCtxtCompile(ctxt->xpathCtxt, v8)) != 0)
  {
    v31 = *&xpathCtxt->doc;
    v12 = *&xpathCtxt->contextSize;
    namespaces = xpathCtxt->namespaces;
    nsNr = xpathCtxt->nsNr;
    v15 = ctxt->node;
    xpathCtxt->node = v15;
    if (v15->type != XML_NAMESPACE_DECL)
    {
      doc = v15->doc;
      if (doc)
      {
        xpathCtxt->doc = doc;
      }
    }

    if (a3)
    {
      v17 = *(a3 + 312);
      v18 = *(a3 + 320);
    }

    else
    {
      v17 = 0;
      v18 = 0;
    }

    xpathCtxt->namespaces = v17;
    xpathCtxt->nsNr = v18;
    ctxt->contextVariable = a2;
    *(a2 + 88) |= 2u;
    v24 = xmlXPathCompiledEval(v11, xpathCtxt);
    v25 = v24;
    *(a2 + 88) ^= 2u;
    ctxt->contextVariable = v10;
    *&xpathCtxt->doc = v31;
    *&xpathCtxt->contextSize = v12;
    xpathCtxt->namespaces = namespaces;
    xpathCtxt->nsNr = nsNr;
    if (a3)
    {
      if (*(a3 + 304))
      {
        if (!v24)
        {
          goto LABEL_29;
        }
      }

      else
      {
        xmlXPathFreeCompExpr(v11);
        if (!v25)
        {
LABEL_29:
          v26 = *(a3 + 24);
          goto LABEL_30;
        }
      }
    }

    else
    {
      xmlXPathFreeCompExpr(v11);
      if (!v25)
      {
        v26 = 0;
LABEL_30:
        xsltTransformError(ctxt, 0, v26, "Failed to evaluate the expression of variable '%s'.\n", *(a2 + 24));
        v25 = 0;
        ctxt->state = XSLT_STATE_STOPPED;
        goto LABEL_38;
      }
    }

LABEL_35:
    if (xsltGenericDebugContext == *MEMORY[0x29EDCA620] || xsltGenericDebugContext == *MEMORY[0x29EDCA610])
    {
      xmlXPathDebugDumpObject(xsltGenericDebugContext, v25, 0);
    }

    goto LABEL_38;
  }

  return 0;
}

xsltStackElemPtr xsltParseStylesheetCallerParam(xsltTransformContextPtr ctxt, xmlNodePtr cur)
{
  if (!ctxt)
  {
    return 0;
  }

  v2 = cur;
  if (!cur || cur->type != XML_ELEMENT_NODE)
  {
    return 0;
  }

  psvi = cur->psvi;
  if (!psvi)
  {
    xsltTransformError(ctxt, 0, cur, "Internal error in xsltParseStylesheetCallerParam(): The XSLT 'with-param' instruction was not compiled.\n");
    return 0;
  }

  if (!psvi[15])
  {
    xsltTransformError(ctxt, 0, cur, "Internal error in xsltParseStylesheetCallerParam(): XSLT 'with-param': The attribute 'name' was not compiled.\n");
    return 0;
  }

  traceCode = ctxt->traceCode;
  if (traceCode && (*(traceCode + 2) & 1) != 0)
  {
    xsltGenericDebug(xsltGenericDebugContext, "Handling xsl:with-param %s\n", psvi[15]);
  }

  if (psvi[23])
  {
    v6 = ctxt->traceCode;
    if (v6 && (*(v6 + 2) & 1) != 0)
    {
      xsltGenericDebug(xsltGenericDebugContext, "        select %s\n", psvi[23]);
    }
  }

  else
  {
    v2 = v2->children;
  }

  return xsltBuildVariable(ctxt, psvi, v2);
}

void *xsltBuildVariable(xsltTransformContext *a1, uint64_t a2, uint64_t a3)
{
  traceCode = a1->traceCode;
  if (!traceCode)
  {
    goto LABEL_11;
  }

  if (*(traceCode + 2))
  {
    xsltGenericDebug(xsltGenericDebugContext, "Building variable %s", *(a2 + 120));
    traceCode = a1->traceCode;
  }

  if (!*(a2 + 184))
  {
    goto LABEL_8;
  }

  if (!traceCode)
  {
    goto LABEL_11;
  }

  if (*(traceCode + 2))
  {
    xsltGenericDebug(xsltGenericDebugContext, " select %s", *(a2 + 184));
    traceCode = a1->traceCode;
LABEL_8:
    if (!traceCode)
    {
      goto LABEL_11;
    }
  }

  if (*(traceCode + 2))
  {
    xsltGenericDebug(xsltGenericDebugContext, "\n");
  }

LABEL_11:
  v7 = xsltNewStackElem(a1);
  v8 = v7;
  if (v7)
  {
    v7[1] = a2;
    v9 = *(a2 + 184);
    v10 = *(a2 + 136);
    v7[3] = *(a2 + 120);
    v7[4] = v10;
    v7[5] = v9;
    v7[6] = a3;
    v7[7] = xsltEvalVariable(a1, v7, a2);
    *(v8 + 4) = 1;
  }

  return v8;
}

void xsltParseGlobalVariable(xsltStylesheetPtr style, xmlNodePtr cur)
{
  if (!style || !cur || cur->type != XML_ELEMENT_NODE)
  {
    return;
  }

  xsltStylePreCompute(style, cur);
  psvi = cur->psvi;
  if (psvi)
  {
    v5 = psvi[15];
    if (v5)
    {
      if (cur->children)
      {
        xsltParseTemplateContent(style, cur);
        v5 = psvi[15];
      }

      xsltGenericDebug(xsltGenericDebugContext, "Registering global variable %s\n", v5);
      v6 = psvi[15];
      v7 = psvi[17];
      v8 = psvi[23];
      children = cur->children;

      xsltRegisterGlobalVariable(style, v6, v7, v8, children, psvi);
      return;
    }

    v10 = "xsl:variable : missing name attribute\n";
  }

  else
  {
    v10 = "xsl:variable : compilation failed\n";
  }

  xsltTransformError(0, style, cur, v10);
}

void xsltRegisterGlobalVariable(xsltStylesheet *a1, const xmlChar *a2, const xmlChar *a3, const xmlChar *a4, xmlNode *a5, uint64_t a6)
{
  if (a2)
  {
    if (*(a6 + 8) == 19)
    {
      xsltGenericDebug(xsltGenericDebugContext, "Defining global param %s\n");
    }

    else
    {
      xsltGenericDebug(xsltGenericDebugContext, "Defining global variable %s\n");
    }

    v12 = xsltNewStackElem(0);
    if (v12)
    {
      v13 = v12;
      v12->comp = a6;
      v12->name = xmlDictLookup(a1->dict, a2, -1);
      v13->select = xmlDictLookup(a1->dict, a4, -1);
      if (a3)
      {
        v13->nameURI = xmlDictLookup(a1->dict, a3, -1);
      }

      v13->tree = a5;
      p_variables = &a1->variables;
      variables = a1->variables;
      if (variables)
      {
        do
        {
          p_variables = &variables->next;
          if (v13->comp->type == XSLT_FUNC_VARIABLE && variables->comp->type == XSLT_FUNC_VARIABLE)
          {
            if (xmlStrEqual(v13->name, variables->name))
            {
              nameURI = v13->nameURI;
              v17 = p_variables[4];
              if (nameURI == v17 || xmlStrEqual(nameURI, v17))
              {
                xsltTransformError(0, a1, *(a6 + 24), "redefinition of global variable %s\n", v13->name);
                ++a1->errors;
              }
            }
          }

          variables = *p_variables;
        }

        while (*p_variables);
      }

      v13->next = 0;
      *p_variables = v13;
    }
  }
}

void xsltParseGlobalParam(xsltStylesheetPtr style, xmlNodePtr cur)
{
  if (!style || !cur || cur->type != XML_ELEMENT_NODE)
  {
    return;
  }

  xsltStylePreCompute(style, cur);
  psvi = cur->psvi;
  if (psvi)
  {
    v5 = psvi[15];
    if (v5)
    {
      if (cur->children)
      {
        xsltParseTemplateContent(style, cur);
        v5 = psvi[15];
      }

      xsltGenericDebug(xsltGenericDebugContext, "Registering global param %s\n", v5);
      v6 = psvi[15];
      v7 = psvi[17];
      v8 = psvi[23];
      children = cur->children;

      xsltRegisterGlobalVariable(style, v6, v7, v8, children, psvi);
      return;
    }

    v10 = "xsl:param : missing name attribute\n";
  }

  else
  {
    v10 = "xsl:param : compilation failed\n";
  }

  xsltTransformError(0, style, cur, v10);
}

void xsltParseStylesheetVariable(xsltTransformContextPtr ctxt, xmlNodePtr cur)
{
  if (!ctxt || !cur || cur->type != XML_ELEMENT_NODE)
  {
    return;
  }

  psvi = cur->psvi;
  if (psvi)
  {
    if (psvi[15])
    {
      traceCode = ctxt->traceCode;
      if (traceCode && (*(traceCode + 2) & 1) != 0)
      {
        xsltGenericDebug(xsltGenericDebugContext, "Registering variable '%s'\n", psvi[15]);
      }

      children = cur->children;

      xsltRegisterVariable(ctxt, psvi, children, 0);
      return;
    }

    v7 = "Internal error in xsltParseStylesheetVariable(): The attribute 'name' was not compiled.\n";
  }

  else
  {
    v7 = "Internal error in xsltParseStylesheetVariable(): The XSLT 'variable' instruction was not compiled.\n";
  }

  xsltTransformError(ctxt, 0, cur, v7);
}

void xsltRegisterVariable(xsltTransformContext *a1, uint64_t a2, uint64_t a3, int a4)
{
  v7 = *(a2 + 120);
  if (!v7)
  {
    if (a4)
    {
LABEL_13:
      traceCode = a1->traceCode;
      if (traceCode)
      {
        if (*(traceCode + 2))
        {
          xsltGenericDebug(xsltGenericDebugContext, "param %s defined by caller\n", *(a2 + 120));
        }
      }

      return;
    }

LABEL_20:
    xsltTransformError(a1, 0, *(a2 + 24), "XSLT-variable: Redefinition of variable '%s'.\n");
    return;
  }

  v9 = xsltStackLookup(a1, v7, *(a2 + 136));
  if (v9)
  {
    v10 = v9[1];
    v11 = 1;
    if (v10)
    {
      v12 = *(v10 + 8);
      v11 = v12 == 19 ? 2 : 1;
      if (v12 == 18)
      {
        v11 = 3;
      }
    }

    if (a4)
    {
      if (v11 <= 2)
      {
        xsltTransformError(a1, 0, *(a2 + 24), "XSLT-param: Redefinition of parameter '%s'.\n");
        return;
      }

      goto LABEL_13;
    }

    if (v11 != 3)
    {
      goto LABEL_20;
    }
  }

  v14 = xsltBuildVariable(a1, a2, a3);

  xsltAddStackElem(a1, v14);
}

void xsltParseStylesheetParam(xsltTransformContextPtr ctxt, xmlNodePtr cur)
{
  if (ctxt && cur && cur->type == XML_ELEMENT_NODE)
  {
    psvi = cur->psvi;
    if (psvi && psvi[15])
    {
      traceCode = ctxt->traceCode;
      if (traceCode && (*(traceCode + 2) & 1) != 0)
      {
        xsltGenericDebug(xsltGenericDebugContext, "Registering param %s\n", psvi[15]);
      }

      children = cur->children;

      xsltRegisterVariable(ctxt, psvi, children, 1);
    }

    else
    {

      xsltTransformError(ctxt, 0, cur, "Internal error in xsltParseStylesheetParam(): The XSLT 'param' declaration was not compiled correctly.\n");
    }
  }
}

xmlXPathObjectPtr xsltXPathVariableLookup(void *ctxt, const xmlChar *name, const xmlChar *ns_uri)
{
  v3 = 0;
  if (!ctxt)
  {
    return v3;
  }

  v4 = name;
  if (!name)
  {
    return v3;
  }

  v7 = *(ctxt + 44);
  if (v7 && (*(v7 + 2) & 1) != 0)
  {
    xsltGenericDebug(xsltGenericDebugContext, "Lookup variable '%s'\n", name);
  }

  v8 = *(ctxt + 12);
  if (!v8)
  {
    goto LABEL_23;
  }

  v9 = *(ctxt + 16);
  if (v8 <= v9)
  {
LABEL_11:
    v11 = xmlDictLookup(*(ctxt + 46), v4, -1);
    if (ns_uri)
    {
      v12 = xmlDictLookup(*(ctxt + 46), ns_uri, -1);
    }

    else
    {
      v12 = 0;
    }

    if (v11 != v4 || v12 != ns_uri)
    {
      v14 = *(ctxt + 12);
      v15 = *(ctxt + 16);
      if (v14 > v15)
      {
        while (1)
        {
          v10 = *(*(ctxt + 7) - 8 + 8 * v14);
          if (*(v10 + 24) == v11 && *(v10 + 32) == v12)
          {
            break;
          }

          if (--v14 <= v15)
          {
            goto LABEL_22;
          }
        }

        v4 = v11;
        goto LABEL_38;
      }
    }

LABEL_22:
    ns_uri = v12;
    v4 = v11;
LABEL_23:
    if (*(ctxt + 22))
    {
      v16 = xsltGlobalVariableLookup(ctxt, v4, ns_uri);
      v17 = *(ctxt + 44);
      if (v16)
      {
        v3 = v16;
        if (v17)
        {
          if (*(v17 + 2))
          {
            xsltGenericDebug(xsltGenericDebugContext, "found variable '%s'\n", v4);
          }
        }

        return v3;
      }
    }

    else
    {
      v17 = *(ctxt + 44);
    }

    if (v17 && (*(v17 + 2) & 1) != 0)
    {
      xsltGenericDebug(xsltGenericDebugContext, "variable not found '%s'\n", v4);
    }

    v18 = *(ctxt + 23);
    if (ns_uri)
    {
      xsltTransformError(ctxt, 0, v18, "Variable '{%s}%s' has not been declared.\n");
    }

    else
    {
      xsltTransformError(ctxt, 0, v18, "Variable '%s' has not been declared.\n");
    }

    return 0;
  }

  while (1)
  {
    v10 = *(*(ctxt + 7) - 8 + 8 * v8);
    if (*(v10 + 24) == v4 && *(v10 + 32) == ns_uri)
    {
      break;
    }

    if (--v8 <= v9)
    {
      goto LABEL_11;
    }
  }

LABEL_38:
  if (*(v10 + 16))
  {
    v20 = *(v10 + 56);
    if (!v20)
    {
      return 0;
    }
  }

  else
  {
    v21 = *(ctxt + 44);
    if (v21 && (*(v21 + 2) & 1) != 0)
    {
      xsltGenericDebug(xsltGenericDebugContext, "uncomputed variable '%s'\n", v4);
    }

    v20 = xsltEvalVariable(ctxt, v10, 0);
    *(v10 + 56) = v20;
    *(v10 + 16) = 1;
    if (!v20)
    {
      return 0;
    }
  }

  return xmlXPathObjectCopy(v20);
}

xmlXPathObject *xsltEvalGlobalVariable(uint64_t a1, xsltTransformContextPtr ctxt)
{
  v2 = 0;
  if (a1 && ctxt)
  {
    if (*(a1 + 16))
    {
      return *(a1 + 56);
    }

    traceCode = ctxt->traceCode;
    if (traceCode && (*(traceCode + 2) & 1) != 0)
    {
      xsltGenericDebug(xsltGenericDebugContext, "Evaluating global variable %s\n", *(a1 + 24));
    }

    if (ctxt->debugStatus)
    {
      v6 = *(a1 + 8);
      if (v6)
      {
        v7 = *(v6 + 24);
        if (v7)
        {
          xslHandleDebugger(v7, 0, 0, ctxt);
        }
      }
    }

    inst = ctxt->inst;
    v9 = *(a1 + 8);
    v10 = *(a1 + 24);
    *(a1 + 24) = " var/param being computed";
    v11 = *(a1 + 40);
    if (v11)
    {
      xpathCtxt = ctxt->xpathCtxt;
      if (v9)
      {
        v13 = *(v9 + 304);
        if (!v13)
        {
          v13 = xmlXPathCtxtCompile(ctxt->xpathCtxt, v11);
          if (!v13)
          {
            goto LABEL_39;
          }
        }

        v14 = *(v9 + 24);
        goto LABEL_23;
      }

      v22 = xmlXPathCtxtCompile(ctxt->xpathCtxt, v11);
      if (v22)
      {
        v13 = v22;
        v14 = 0;
LABEL_23:
        ctxt->inst = v14;
        v32 = *&xpathCtxt->doc;
        v23 = *&xpathCtxt->contextSize;
        namespaces = xpathCtxt->namespaces;
        nsNr = xpathCtxt->nsNr;
        initialContextNode = ctxt->initialContextNode;
        xpathCtxt->doc = ctxt->initialContextDoc;
        xpathCtxt->node = initialContextNode;
        *&xpathCtxt->contextSize = 0x100000001;
        if (v9)
        {
          v27 = *(v9 + 312);
          v28 = *(v9 + 320);
        }

        else
        {
          v27 = 0;
          v28 = 0;
        }

        xpathCtxt->namespaces = v27;
        xpathCtxt->nsNr = v28;
        v2 = xmlXPathCompiledEval(v13, xpathCtxt);
        *&xpathCtxt->doc = v32;
        *&xpathCtxt->contextSize = v23;
        xpathCtxt->namespaces = namespaces;
        xpathCtxt->nsNr = nsNr;
        if (v9)
        {
          if (!*(v9 + 304))
          {
            xmlXPathFreeCompExpr(v13);
          }

          if (!v2)
          {
            v29 = *(v9 + 24);
LABEL_38:
            xsltTransformError(ctxt, 0, v29, "Evaluating global variable %s failed\n", *(a1 + 24));
            ctxt->state = XSLT_STATE_STOPPED;
            goto LABEL_39;
          }
        }

        else
        {
          xmlXPathFreeCompExpr(v13);
          if (!v2)
          {
            v29 = 0;
            goto LABEL_38;
          }
        }

        xsltFlagRVTs(ctxt, v2, 3);
        if (xsltGenericDebugContext == *MEMORY[0x29EDCA620] || xsltGenericDebugContext == *MEMORY[0x29EDCA610])
        {
          xmlXPathDebugDumpObject(xsltGenericDebugContext, v2, 0);
        }

        *(a1 + 24) = v10;
        ctxt->inst = inst;
LABEL_45:
        *(a1 + 56) = v2;
        *(a1 + 16) = 1;
        return v2;
      }

LABEL_39:
      v2 = 0;
      *(a1 + 24) = v10;
      ctxt->inst = inst;
      return v2;
    }

    if (*(a1 + 48))
    {
      RVT = xsltCreateRVT(ctxt);
      if (!RVT)
      {
        goto LABEL_39;
      }

      v16 = RVT;
      xsltRegisterPersistRVT(ctxt, RVT);
      v17 = ctxt->xpathCtxt;
      doc = v17->doc;
      v17->doc = ctxt->initialContextDoc;
      node = ctxt->node;
      v20 = *(a1 + 48);
      v31 = *&ctxt->output;
      ctxt->output = v16;
      ctxt->insert = v16;
      xsltApplyOneTemplate(ctxt, node, v20, 0, 0);
      ctxt->xpathCtxt->doc = doc;
      *&ctxt->output = v31;
      v21 = xmlXPathNewValueTree(v16);
      if (v21)
      {
        v2 = v21;
        v21->BOOLval = 0;
      }

      else
      {
        v2 = xmlXPathNewCString(&unk_2999B6B5E);
      }

      if (xsltGenericDebugContext == *MEMORY[0x29EDCA620] || xsltGenericDebugContext == *MEMORY[0x29EDCA610])
      {
        xmlXPathDebugDumpObject(xsltGenericDebugContext, v2, 0);
      }
    }

    else
    {
      v2 = xmlXPathNewCString(&unk_2999B6B5E);
    }

    *(a1 + 24) = v10;
    ctxt->inst = inst;
    if (!v2)
    {
      return v2;
    }

    goto LABEL_45;
  }

  return v2;
}

_OWORD *xsltNewStackElem(uint64_t a1)
{
  if (a1 && (v2 = *(a1 + 424), (result = *(v2 + 16)) != 0))
  {
    *(v2 + 16) = *result;
    *result = 0;
    --*(v2 + 24);
  }

  else
  {
    result = malloc_type_malloc(0x60uLL, 0x10700405DC409EAuLL);
    if (result)
    {
      result[4] = 0u;
      result[5] = 0u;
      result[2] = 0u;
      result[3] = 0u;
      *result = 0u;
      result[1] = 0u;
      *(result + 10) = a1;
    }

    else
    {
      xsltTransformError(0, 0, 0, "xsltNewStackElem : malloc failed\n");
      return 0;
    }
  }

  return result;
}

void xsltInit(void)
{
  if ((initialized & 1) == 0)
  {
    initialized = 1;
    xsltRegisterAllExtras();
  }
}

int xsltIsBlank(xmlChar *str)
{
  if (!str)
  {
    return 1;
  }

  while (1)
  {
    v1 = *str;
    if (v1 > 0x20)
    {
      break;
    }

    if (((1 << v1) & 0x100002600) == 0)
    {
      return !*str;
    }

    ++str;
  }

  return 0;
}

xsltDecimalFormatPtr xsltDecimalFormatGetByName(xsltStylesheetPtr style, xmlChar *name)
{
  v2 = style;
  if (!name)
  {
    return style->decimalFormat;
  }

  if (!style)
  {
    return 0;
  }

  while (1)
  {
    next = v2->decimalFormat->next;
    if (next)
    {
      break;
    }

LABEL_8:
    style = xsltNextImport(v2);
    v2 = style;
    if (!style)
    {
      return 0;
    }
  }

  while (1)
  {
    style = linkedOnOrAfterFall2022OSVersions(style, name);
    if (!style || !next->nsUri)
    {
      style = xmlStrEqual(name, next->name);
      if (style)
      {
        return next;
      }
    }

    next = next->next;
    if (!next)
    {
      goto LABEL_8;
    }
  }
}

xsltDecimalFormatPtr xsltDecimalFormatGetByQName(xsltStylesheetPtr style, const xmlChar *nsUri, const xmlChar *name)
{
  v3 = style;
  if (!name)
  {
    return style->decimalFormat;
  }

  if (!style)
  {
    return 0;
  }

  while (1)
  {
    next = v3->decimalFormat->next;
    if (next)
    {
      break;
    }

LABEL_8:
    style = xsltNextImport(v3);
    v3 = style;
    if (!style)
    {
      return 0;
    }
  }

  while (1)
  {
    if (!linkedOnOrAfterFall2022OSVersions(style, nsUri) || (style = xmlStrEqual(nsUri, next->nsUri), style))
    {
      style = xmlStrEqual(name, next->name);
      if (style)
      {
        return next;
      }
    }

    next = next->next;
    if (!next)
    {
      goto LABEL_8;
    }
  }
}

char *xsltNewStylesheetInternal(uint64_t a1)
{
  v2 = malloc_type_malloc(0x1A8uLL, 0x10F0040629D04BDuLL);
  v3 = v2;
  if (!v2)
  {
    xsltTransformError(0, 0, 0, "xsltNewStylesheet : malloc failed\n");
    return v3;
  }

  *(v2 + 248) = 0u;
  *(v2 + 232) = 0u;
  *(v2 + 216) = 0u;
  *(v2 + 200) = 0u;
  *(v2 + 184) = 0u;
  *(v2 + 168) = 0u;
  *(v2 + 152) = 0u;
  *(v2 + 136) = 0u;
  *(v2 + 120) = 0u;
  *(v2 + 104) = 0u;
  *(v2 + 88) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  *(v2 + 8) = 0u;
  *(v2 + 392) = 0u;
  *(v2 + 408) = 0u;
  *(v2 + 360) = 0u;
  *(v2 + 376) = 0u;
  *(v2 + 328) = 0u;
  *(v2 + 344) = 0u;
  *(v2 + 296) = 0u;
  *(v2 + 312) = 0u;
  *(v2 + 264) = 0u;
  *(v2 + 280) = 0u;
  *v2 = a1;
  *(v2 + 56) = -1;
  *(v2 + 60) = -1;
  *(v2 + 29) = xsltNewDecimalFormat(0, 0);
  *(v3 + 66) = -1;
  *(v3 + 36) = 0;
  *(v3 + 41) = 0;
  *(v3 + 84) = 0;
  *(v3 + 38) = 0;
  *(v3 + 39) = 0;
  *(v3 + 380) = 1;
  *(v3 + 100) = 0;
  *(v3 + 44) = xmlDictCreate();
  xsltGenericDebug(xsltGenericDebugContext, "creating dictionary for stylesheet\n");
  if (a1)
  {
    *(v3 + 49) = *(a1 + 392);
    goto LABEL_8;
  }

  *(v3 + 49) = v3;
  if (linkedOnOrAfterFall2022OSVersions(v4, v5))
  {
    v6 = xmlXPathNewContext(0);
    *(v3 + 52) = v6;
    if (v6)
    {
      if (xmlXPathContextSetCache(v6, 1, -1, 0) != -1)
      {
        goto LABEL_8;
      }
    }

    else
    {
      xsltTransformError(0, 0, 0, "xsltNewStylesheet: xmlXPathNewContext failed\n");
    }

    xsltFreeStylesheet(v3);
    return 0;
  }

LABEL_8:
  if ((initialized & 1) == 0)
  {
    initialized = 1;
    xsltRegisterAllExtras();
  }

  return v3;
}

int xsltAllocateExtra(xsltStylesheetPtr style)
{
  extrasNr = style->extrasNr;
  style->extrasNr = extrasNr + 1;
  return extrasNr;
}

int xsltAllocateExtraCtxt(xsltTransformContextPtr ctxt)
{
  extrasNr = ctxt->extrasNr;
  extrasMax = ctxt->extrasMax;
  if (extrasNr < extrasMax)
  {
LABEL_2:
    result = ctxt->extrasNr;
    ctxt->extrasNr = result + 1;
    return result;
  }

  if (extrasNr)
  {
    v5 = extrasMax + 100;
    ctxt->extrasMax = v5;
    v6 = malloc_type_realloc(ctxt->extras, 24 * v5, 0x10820403FFA2F7DuLL);
    if (v6)
    {
      ctxt->extras = v6;
      v7 = ctxt->extrasNr;
      if (v7 < ctxt->extrasMax)
      {
        v8 = v7;
        do
        {
          v9 = &ctxt->extras[v8];
          ++v7;
          v9->info = 0;
          v9->deallocate = 0;
          v9->val.ptr = 0;
          ++v8;
        }

        while (v7 < ctxt->extrasMax);
      }

      goto LABEL_2;
    }
  }

  else
  {
    ctxt->extrasMax = 20;
    v10 = malloc_type_malloc(0x1E0uLL, 0x10820403FFA2F7DuLL);
    ctxt->extras = v10;
    if (v10)
    {
      if (ctxt->extrasMax >= 1)
      {
        v11 = 0;
        v12 = 0;
        do
        {
          v13 = &ctxt->extras[v11];
          ++v12;
          v13->info = 0;
          v13->deallocate = 0;
          v13->val.ptr = 0;
          ++v11;
        }

        while (v12 < ctxt->extrasMax);
      }

      goto LABEL_2;
    }
  }

  xsltTransformError(ctxt, 0, 0, "xsltAllocateExtraCtxt: out of memory\n");
  return 0;
}

void xsltFreeStylesheet(xsltStylesheetPtr style)
{
  if (style)
  {
    if (!style->parent)
    {
      doc = style->doc;
      if (doc)
      {
        xmlDocGetRootElement(doc);
      }
    }

    xsltFreeKeys(style);
    xsltFreeExts(style);
    xsltFreeTemplateHashes(style);
    decimalFormat = style->decimalFormat;
    if (decimalFormat)
    {
      do
      {
        next = decimalFormat->next;
        digit = decimalFormat->digit;
        if (digit)
        {
          free(digit);
        }

        patternSeparator = decimalFormat->patternSeparator;
        if (patternSeparator)
        {
          free(patternSeparator);
        }

        decimalPoint = decimalFormat->decimalPoint;
        if (decimalPoint)
        {
          free(decimalPoint);
        }

        grouping = decimalFormat->grouping;
        if (grouping)
        {
          free(grouping);
        }

        percent = decimalFormat->percent;
        if (percent)
        {
          free(percent);
        }

        permille = decimalFormat->permille;
        if (permille)
        {
          free(permille);
        }

        zeroDigit = decimalFormat->zeroDigit;
        if (zeroDigit)
        {
          free(zeroDigit);
        }

        minusSign = decimalFormat->minusSign;
        if (minusSign)
        {
          free(minusSign);
        }

        infinity = decimalFormat->infinity;
        if (infinity)
        {
          free(infinity);
        }

        noNumber = decimalFormat->noNumber;
        if (noNumber)
        {
          free(noNumber);
        }

        name = decimalFormat->name;
        if (name)
        {
          free(name);
        }

        free(decimalFormat);
        decimalFormat = next;
      }

      while (next);
    }

    templates = style->templates;
    if (templates)
    {
      do
      {
        v17 = templates->next;
        match = templates->match;
        if (match)
        {
          free(match);
        }

        inheritedNs = templates->inheritedNs;
        if (inheritedNs)
        {
          free(inheritedNs);
        }

        templCalledTab = templates->templCalledTab;
        if (templCalledTab)
        {
          free(templCalledTab);
        }

        templCountTab = templates->templCountTab;
        if (templCountTab)
        {
          free(templCountTab);
        }

        *&templates->position = -1;
        *&v22 = -1;
        *(&v22 + 1) = -1;
        *&templates->params = v22;
        *&templates->templCalledTab = v22;
        *&templates->inheritedNsNr = v22;
        *&templates->nbCalls = v22;
        *&templates->mode = v22;
        *&templates->content = v22;
        *&templates->match = v22;
        *&templates->name = v22;
        *&templates->next = v22;
        free(templates);
        templates = v17;
      }

      while (v17);
    }

    xsltFreeAttributeSetsHashes(style);
    xsltFreeNamespaceAliasHashes(style);
    xsltFreeStylePreComps(style);
    xsltFreeStyleDocuments(style);
    xsltShutdownExts(style);
    variables = style->variables;
    if (variables)
    {
      xsltFreeStackElemList(variables);
    }

    cdataSection = style->cdataSection;
    if (cdataSection)
    {
      xmlHashFree(cdataSection, 0);
    }

    stripSpaces = style->stripSpaces;
    if (stripSpaces)
    {
      xmlHashFree(stripSpaces, 0);
    }

    nsHash = style->nsHash;
    if (nsHash)
    {
      xmlHashFree(nsHash, 0);
    }

    exclPrefixTab = style->exclPrefixTab;
    if (exclPrefixTab)
    {
      free(exclPrefixTab);
    }

    method = style->method;
    if (method)
    {
      free(method);
    }

    methodURI = style->methodURI;
    if (methodURI)
    {
      free(methodURI);
    }

    version = style->version;
    if (version)
    {
      free(version);
    }

    encoding = style->encoding;
    if (encoding)
    {
      free(encoding);
    }

    doctypePublic = style->doctypePublic;
    if (doctypePublic)
    {
      free(doctypePublic);
    }

    doctypeSystem = style->doctypeSystem;
    if (doctypeSystem)
    {
      free(doctypeSystem);
    }

    mediaType = style->mediaType;
    if (mediaType)
    {
      free(mediaType);
    }

    attVTs = style->attVTs;
    if (attVTs)
    {
      xsltFreeAVTList(attVTs);
    }

    imports = style->imports;
    if (imports)
    {
      do
      {
        v37 = imports->next;
        xsltFreeStylesheet(imports);
        imports = v37;
      }

      while (v37);
    }

    v38 = style->doc;
    if (v38)
    {
      xmlFreeDoc(v38);
    }

    xsltGenericDebug(xsltGenericDebugContext, "freeing dictionary from stylesheet\n");
    xmlDictFree(style->dict);
    if (linkedOnOrAfterFall2022OSVersions(v39, v40))
    {
      xpathCtxt = style->xpathCtxt;
      if (xpathCtxt)
      {
        xmlXPathFreeContext(xpathCtxt);
      }
    }

    style->xpathCtxt = -1;
    *&v42 = -1;
    *(&v42 + 1) = -1;
    *&style->literal_result = v42;
    *&style->forwards_compatible = v42;
    *&style->dict = v42;
    *&style->defaultAlias = v42;
    *&style->_private = v42;
    *&style->extrasNr = v42;
    *&style->warnings = v42;
    *&style->exclPrefixTab = v42;
    *&style->doctypeSystem = v42;
    *&style->mediaType = v42;
    *&style->omitXmlDeclaration = v42;
    *&style->standalone = v42;
    *&style->method = v42;
    *&style->version = v42;
    *&style->attributeSets = v42;
    *&style->nsDefs = v42;
    *&style->textMatch = v42;
    *&style->commentMatch = v42;
    *&style->keyMatch = v42;
    *&style->attrMatch = v42;
    *&style->variables = v42;
    *&style->templatesHash = v42;
    *&style->doc = v42;
    *&style->stripAll = v42;
    *&style->parent = v42;
    *&style->imports = v42;

    free(style);
  }
}

void xsltParseStylesheetOutput(xsltStylesheetPtr style, xmlNodePtr cur)
{
  if (style && cur && cur->type == XML_ELEMENT_NODE)
  {
    NsProp = xmlGetNsProp(cur, "version", 0);
    if (NsProp)
    {
      v5 = NsProp;
      version = style->version;
      if (version)
      {
        free(version);
      }

      style->version = v5;
    }

    v7 = xmlGetNsProp(cur, "encoding", 0);
    if (v7)
    {
      v8 = v7;
      encoding = style->encoding;
      if (encoding)
      {
        free(encoding);
      }

      style->encoding = v8;
    }

    value = 0;
    name = xmlGetNsProp(cur, "method", 0);
    if (name)
    {
      method = style->method;
      if (method)
      {
        free(method);
      }

      style->method = 0;
      methodURI = style->methodURI;
      if (methodURI)
      {
        free(methodURI);
      }

      style->methodURI = 0;
      QNameURI = xsltGetQNameURI(cur, &name);
      if (name)
      {
        if (QNameURI)
        {
          style->method = name;
          style->methodURI = xmlStrdup(QNameURI);
        }

        else if (xmlStrEqual(name, "xml") || xmlStrEqual(name, "html") || xmlStrEqual(name, "text"))
        {
          style->method = name;
        }

        else
        {
          xsltTransformError(0, style, cur, "invalid value for method: %s\n", name);
          ++style->warnings;
          free(name);
        }
      }

      else
      {
        ++style->errors;
      }
    }

    v13 = xmlGetNsProp(cur, "doctype-system", 0);
    name = v13;
    if (v13)
    {
      if (style->doctypeSystem)
      {
        free(style->doctypeSystem);
        v13 = name;
      }

      style->doctypeSystem = v13;
    }

    v14 = xmlGetNsProp(cur, "doctype-public", 0);
    name = v14;
    if (v14)
    {
      if (style->doctypePublic)
      {
        free(style->doctypePublic);
        v14 = name;
      }

      style->doctypePublic = v14;
    }

    v15 = xmlGetNsProp(cur, "standalone", 0);
    name = v15;
    if (v15)
    {
      if (xmlStrEqual(v15, "yes"))
      {
        style->standalone = 1;
      }

      else if (xmlStrEqual(name, "no"))
      {
        style->standalone = 0;
      }

      else
      {
        xsltTransformError(0, style, cur, "invalid value for standalone: %s\n", name);
        ++style->errors;
      }

      free(name);
    }

    v16 = xmlGetNsProp(cur, "indent", 0);
    name = v16;
    if (v16)
    {
      if (xmlStrEqual(v16, "yes"))
      {
        style->indent = 1;
      }

      else if (xmlStrEqual(name, "no"))
      {
        style->indent = 0;
      }

      else
      {
        xsltTransformError(0, style, cur, "invalid value for indent: %s\n", name);
        ++style->errors;
      }

      free(name);
    }

    v17 = xmlGetNsProp(cur, "omit-xml-declaration", 0);
    name = v17;
    if (v17)
    {
      if (xmlStrEqual(v17, "yes"))
      {
        style->omitXmlDeclaration = 1;
      }

      else if (xmlStrEqual(name, "no"))
      {
        style->omitXmlDeclaration = 0;
      }

      else
      {
        xsltTransformError(0, style, cur, "invalid value for omit-xml-declaration: %s\n", name);
        ++style->errors;
      }

      free(name);
    }

    v18 = xmlGetNsProp(cur, "cdata-section-elements", 0);
    if (v18)
    {
      v19 = v18;
      if (!style->cdataSection)
      {
        v20 = xmlHashCreate(10);
        style->cdataSection = v20;
        if (!v20)
        {
          return;
        }
      }

      value = v19;
      v21 = *v19;
      if (*v19)
      {
        v22 = v19;
        while (1)
        {
          if (v21 > 0x20)
          {
            goto LABEL_63;
          }

          if (((1 << v21) & 0x100002600) != 0)
          {
            value = v22 + 1;
            v21 = *++v22;
          }

          else
          {
            if (!v21)
            {
              break;
            }

LABEL_63:
            v23 = 0;
            while (v21 > 0x20 || ((1 << v21) & 0x100002601) == 0)
            {
              v21 = v22[++v23];
            }

            if (v23 >= 0x7FFFFFFF)
            {
              v24 = 0x7FFFFFFF;
            }

            else
            {
              v24 = v23;
            }

            v25 = xmlStrndup(v22, v24);
            value = v25;
            if (v25)
            {
              xsltGenericDebug(xsltGenericDebugContext, "add cdata section output element %s\n", v25);
              if (xmlValidateQName(value, 0))
              {
                xsltTransformError(0, style, cur, "Attribute 'cdata-section-elements': The value '%s' is not a valid QName.\n", value);
                free(value);
              }

              else
              {
                v26 = xsltGetQNameURI(cur, &value);
                if (value)
                {
                  href = v26;
                  if (!v26)
                  {
                    v28 = xmlSearchNs(style->doc, cur, 0);
                    if (v28)
                    {
                      href = v28->href;
                    }

                    else
                    {
                      href = 0;
                    }
                  }

                  xmlHashAddEntry2(style->cdataSection, value, href, "cdata");
                  free(value);
                  goto LABEL_81;
                }

                xsltTransformError(0, style, cur, "Attribute 'cdata-section-elements': Not a valid QName.\n");
              }

              ++style->errors;
            }

LABEL_81:
            v22 += v23;
            value = v22;
            v21 = *v22;
            if (!*v22)
            {
              break;
            }
          }
        }
      }

      free(v19);
    }

    v29 = xmlGetNsProp(cur, "media-type", 0);
    name = v29;
    if (v29)
    {
      if (style->mediaType)
      {
        free(style->mediaType);
        v29 = name;
      }

      style->mediaType = v29;
    }

    children = cur->children;
    if (children)
    {
      xsltParseContentError(style, children);
    }
  }
}

void xsltParseContentError(xsltStylesheet *a1, uint64_t a2)
{
  if (*(a2 + 8) == 1 && (v4 = *(a2 + 72)) != 0 && xmlStrEqual(*(v4 + 16), "http://www.w3.org/1999/XSL/Transform"))
  {
    xsltTransformError(0, a1, a2, "The XSLT-element '%s' is not allowed at this position.\n");
  }

  else
  {
    xsltTransformError(0, a1, a2, "The element '%s' is not allowed at this position.\n");
  }

  ++a1->errors;
}

void xsltParseTemplateContent(xsltStylesheetPtr style, xmlNodePtr templ)
{
  if (!style)
  {
    return;
  }

  if (!templ)
  {
    return;
  }

  if (templ->type == XML_NAMESPACE_DECL)
  {
    return;
  }

  children = templ->children;
  if (!children)
  {
    return;
  }

  v5 = 0;
  v6 = "text";
  v7 = &xsltGenericDebug;
  while (1)
  {
LABEL_6:
    v8 = children;
    if (v5)
    {
      xmlUnlinkNode(v5);
      xmlFreeNode(v5);
    }

    if (v8->type != XML_ELEMENT_NODE || (v9 = v8->ns) == 0 || !xmlStrEqual(v9->href, "http://www.w3.org/1999/XSL/Transform"))
    {
      ns = v8->ns;
      if (ns && style->nsDefs && xsltCheckExtPrefix(style, ns->prefix))
      {
        xsltStylePreCompute(style, v8);
      }

      else if (v8->type == XML_ELEMENT_NODE)
      {
        if (!v8->ns)
        {
          defaultAlias = style->defaultAlias;
          if (defaultAlias)
          {
            v8->ns = xmlSearchNsByHref(v8->doc, v8, defaultAlias);
          }
        }

        for (i = v8->properties; i; i = i->next)
        {
          xsltCompileAttr(style, i);
        }
      }

      goto LABEL_28;
    }

    xsltStylePreCompute(style, v8);
    if (xmlStrEqual(v8->name, v6))
    {
      break;
    }

LABEL_28:
    children = v8->children;
    if (!children)
    {
      v5 = 0;
      goto LABEL_32;
    }

    v5 = 0;
    if (children->type == XML_ENTITY_DECL)
    {
      goto LABEL_32;
    }
  }

  v10 = v8->children;
  v5 = v8;
  if (!v10)
  {
    goto LABEL_32;
  }

  v11 = v6;
  NsProp = xmlGetNsProp(v8, "disable-output-escaping", 0);
  if (NsProp)
  {
    v13 = NsProp;
    v14 = v7;
    (*v7)(xsltGenericDebugContext, "Disable escaping: %s\n", v10->content);
    v15 = xmlStrEqual(v13, "yes");
    v16 = v15 == 0;
    if (!v15 && !xmlStrEqual(v13, "no"))
    {
      xsltTransformError(0, style, v8, "xsl:text: disable-output-escaping allows only yes or no\n");
      ++style->warnings;
    }

    free(v13);
  }

  else
  {
    v14 = v7;
    v16 = 1;
  }

  v21 = MEMORY[0x29EDC97C0];
  do
  {
    type = v10->type;
    if (type - 3 >= 2)
    {
      if (type != XML_COMMENT_NODE)
      {
        xsltTransformError(0, style, v8, "xsltParseTemplateContent: xslt:text content problem\n");
        ++style->errors;
        v5 = v8;
        v7 = v14;
        v6 = v11;
        goto LABEL_32;
      }
    }

    else
    {
      v23 = type == XML_CDATA_SECTION_NODE || v16;
      if ((v23 & 1) == 0)
      {
        v10->name = v21;
      }
    }

    v10 = v10->next;
  }

  while (v10);
  v24 = v8->children;
  v5 = v8;
  v7 = v14;
  v6 = v11;
  if (v24)
  {
    do
    {
      if (style->internalized)
      {
        content = v24->content;
        if (content)
        {
          if (!xmlDictOwns(style->dict, content))
          {
            dict = v24->doc->dict;
            if (dict)
            {
              v26 = xmlDictLookup(dict, v24->content, -1);
              if (v26 != v24->content)
              {
                v27 = v26;
                xmlNodeSetContent(v24, 0);
                v24->content = v27;
              }
            }
          }
        }
      }

      next = v24->next;
      xmlUnlinkNode(v24);
      xmlAddPrevSibling(v8, v24);
      v24 = next;
    }

    while (next);
    v5 = v8;
  }

  do
  {
LABEL_32:
    children = v8->next;
    if (children)
    {
      goto LABEL_6;
    }

    v8 = v8->parent;
    if (v8)
    {
      v20 = v8 == templ;
    }

    else
    {
      v20 = 1;
    }
  }

  while (!v20);
  if (v5)
  {
    (*v7)(xsltGenericDebugContext, "xsltParseTemplateContent: removing text\n");
    xmlUnlinkNode(v5);
    xmlFreeNode(v5);
  }

  v30 = templ->children;
  if (v30)
  {
    while (1)
    {
      if (v30->type == XML_ELEMENT_NODE)
      {
        v31 = v30->ns;
        if (v31)
        {
          if (xmlStrEqual(v31->href, "http://www.w3.org/1999/XSL/Transform") && !xmlStrEqual(v30->name, "param"))
          {
            break;
          }
        }
      }

      v30 = v30->next;
      if (!v30)
      {
        return;
      }
    }

    do
    {
      if (v30->type != XML_ELEMENT_NODE)
      {
        break;
      }

      v32 = v30->ns;
      if (!v32)
      {
        break;
      }

      if (!xmlStrEqual(v32->href, "http://www.w3.org/1999/XSL/Transform"))
      {
        break;
      }

      if (!xmlStrEqual(v30->name, "param"))
      {
        break;
      }

      xsltTransformError(0, style, v30, "xsltParseTemplateContent: ignoring misplaced param element\n");
      ++style->warnings;
      v33 = v30->next;
      xmlUnlinkNode(v30);
      xmlFreeNode(v30);
      v30 = v33;
    }

    while (v33);
  }
}

xsltStylesheetPtr xsltParseStylesheetProcess(xsltStylesheetPtr ret, xmlDocPtr doc)
{
  xsltInitGlobals();
  result = 0;
  if (!ret || !doc)
  {
    return result;
  }

  RootElement = xmlDocGetRootElement(doc);
  if (!RootElement)
  {
    xsltTransformError(0, ret, doc, "xsltParseStylesheetProcess : empty stylesheet\n");
    return 0;
  }

  v6 = RootElement;
  if (RootElement->type == XML_ELEMENT_NODE && (ns = RootElement->ns) != 0 && xmlStrEqual(ns->href, "http://www.w3.org/1999/XSL/Transform") && (xmlStrEqual(*(v6 + 16), "stylesheet") || xmlStrEqual(*(v6 + 16), "transform")))
  {
    xsltGenericDebug(xsltGenericDebugContext, "xsltParseStylesheetProcess : found stylesheet\n");
    ret->literal_result = 0;
    xsltParseStylesheetExcludePrefix(ret, v6, 1);
    xsltParseStylesheetExtPrefix(ret, v6, 1);
  }

  else
  {
    xsltParseStylesheetExcludePrefix(ret, v6, 0);
    xsltParseStylesheetExtPrefix(ret, v6, 0);
    ret->literal_result = 1;
  }

  if (!ret->nopreproc)
  {
    xsltPreprocessStylesheet(ret, v6);
  }

  if (!ret->literal_result)
  {
    if (*(v6 + 8) != 1)
    {
      return ret;
    }

    NsProp = xmlGetNsProp(v6, "version", 0);
    if (NsProp)
    {
      v12 = NsProp;
      if (!xmlStrEqual(NsProp, "1.0") && !xmlStrEqual(v12, "1.1"))
      {
        xsltTransformError(0, ret, v6, "xsl:version: only 1.1 features are supported\n");
        ret->forwards_compatible = 1;
        ++ret->warnings;
      }

      free(v12);
    }

    else
    {
      xsltTransformError(0, ret, v6, "xsl:version is missing: document may not be a stylesheet\n");
      ++ret->warnings;
    }

    v13 = *(v6 + 24);
    if (!v13)
    {
LABEL_44:
      LODWORD(v18) = 0;
LABEL_45:
      xsltGenericDebug(xsltGenericDebugContext, "parsed %d templates\n", v18);
      return ret;
    }

    while (1)
    {
      v14 = *(v13 + 8);
      if (v14 != 1)
      {
        break;
      }

      v17 = *(v13 + 72);
      if (!v17 || !xmlStrEqual(*(v17 + 16), "http://www.w3.org/1999/XSL/Transform") || !xmlStrEqual(*(v13 + 16), "import"))
      {
        goto LABEL_48;
      }

      if (xsltParseStylesheetImport(ret, v13))
      {
        ++ret->errors;
      }

LABEL_43:
      v13 = *(v13 + 48);
      if (!v13)
      {
        goto LABEL_44;
      }
    }

    if (v14 == 3)
    {
      v15 = *(v13 + 80);
      if (!v15)
      {
        goto LABEL_43;
      }

      while (1)
      {
        v16 = *v15;
        if (v16 > 0x20)
        {
          goto LABEL_48;
        }

        if (((1 << v16) & 0x100002600) == 0)
        {
          break;
        }

        ++v15;
      }

      if (!*v15)
      {
        goto LABEL_43;
      }
    }

LABEL_48:
    v18 = 0;
    while (1)
    {
      v19 = *(v13 + 8);
      if (v19 == 1)
      {
        break;
      }

      if (v19 != 3)
      {
        goto LABEL_67;
      }

      if (*(v13 + 80))
      {
        for (i = *(v13 + 80); ; ++i)
        {
          v21 = *i;
          if (v21 > 0x20)
          {
            break;
          }

          if (((1 << v21) & 0x100002600) == 0)
          {
            if (!*i)
            {
              goto LABEL_65;
            }

            break;
          }
        }

        xsltTransformError(0, ret, v13, "misplaced text node: '%s'\n");
        goto LABEL_64;
      }

LABEL_65:
      v13 = *(v13 + 48);
      if (!v13)
      {
        goto LABEL_45;
      }
    }

    v22 = *(v13 + 72);
    if (!v22)
    {
      xsltGenericError(xsltGenericErrorContext, "Found a top-level element %s with null namespace URI\n", *(v13 + 16));
LABEL_64:
      ++ret->errors;
      goto LABEL_65;
    }

    if (!xmlStrEqual(*(v22 + 16), "http://www.w3.org/1999/XSL/Transform"))
    {
      v23 = xsltExtModuleTopLevelLookup(*(v13 + 16), *(*(v13 + 72) + 16));
      if (v23)
      {
        (v23)(ret, v13);
      }

      xsltGenericDebug(xsltGenericDebugContext, "xsltParseStylesheetTop : found foreign element %s\n", *(v13 + 16));
      goto LABEL_65;
    }

LABEL_67:
    if (xmlStrEqual(*(v13 + 16), "import"))
    {
      xsltTransformError(0, ret, v13, "xsltParseStylesheetTop: ignoring misplaced import element\n", v43);
      goto LABEL_64;
    }

    if (xmlStrEqual(*(v13 + 16), "include"))
    {
      if (!xsltParseStylesheetInclude(ret, v13))
      {
        goto LABEL_65;
      }

      goto LABEL_64;
    }

    if (xmlStrEqual(*(v13 + 16), "strip-space"))
    {
      if (*(v13 + 8) != 1)
      {
        goto LABEL_65;
      }

      v24 = xmlGetNsProp(v13, "elements", 0);
      if (!v24)
      {
        xsltTransformError(0, ret, v13, "xsltParseStylesheetStripSpace: missing elements attribute\n");
LABEL_130:
        ++ret->warnings;
        goto LABEL_65;
      }

      v25 = v24;
      cur = v24;
      if (!ret->stripSpaces)
      {
        v26 = xmlHashCreate(10);
        v25 = cur;
        ret->stripSpaces = v26;
        if (!v26)
        {
          goto LABEL_65;
        }
      }

      v46 = v18;
      str1 = v25;
      v27 = *v25;
      if (!*v25)
      {
LABEL_96:
        free(cur);
        v33 = *(v13 + 24);
        v18 = v46;
        if (!v33)
        {
          goto LABEL_65;
        }

LABEL_123:
        xsltParseContentError(ret, v33);
        goto LABEL_65;
      }

      v28 = cur;
      while (1)
      {
        if (v27 <= 0x20)
        {
          if (((1 << v27) & 0x100002600) != 0)
          {
            str1 = v28 + 1;
            v27 = *++v28;
            continue;
          }

          if (!v27)
          {
            goto LABEL_96;
          }
        }

        v29 = 0;
        while (v27 > 0x20 || ((1 << v27) & 0x100002601) == 0)
        {
          v27 = v28[++v29];
        }

        if (v29 >= 0x7FFFFFFF)
        {
          v30 = 0x7FFFFFFF;
        }

        else
        {
          v30 = v29;
        }

        v31 = xmlStrndup(v28, v30);
        str1 = v31;
        if (v31)
        {
          xsltGenericDebug(xsltGenericDebugContext, "add stripped space element %s\n", v31);
          if (xmlStrEqual(str1, "*"))
          {
            ret->stripAll = 1;
          }

          else
          {
            QNameURI = xsltGetQNameURI(v13, &str1);
            xmlHashAddEntry2(ret->stripSpaces, str1, QNameURI, "strip");
          }

          free(str1);
        }

        v28 += v29;
        str1 = v28;
        v27 = *v28;
        if (!*v28)
        {
          goto LABEL_96;
        }
      }
    }

    if (!xmlStrEqual(*(v13 + 16), "preserve-space"))
    {
      if (xmlStrEqual(*(v13 + 16), "output"))
      {
        xsltParseStylesheetOutput(ret, v13);
        goto LABEL_65;
      }

      if (xmlStrEqual(*(v13 + 16), "key"))
      {
        xsltParseStylesheetKey(ret, v13);
        goto LABEL_65;
      }

      if (xmlStrEqual(*(v13 + 16), "decimal-format"))
      {
        xsltParseStylesheetDecimalFormat(ret, v13);
        goto LABEL_65;
      }

      if (xmlStrEqual(*(v13 + 16), "attribute-set"))
      {
        xsltParseStylesheetAttributeSet(ret, v13);
        goto LABEL_65;
      }

      if (xmlStrEqual(*(v13 + 16), "variable"))
      {
        xsltParseGlobalVariable(ret, v13);
        goto LABEL_65;
      }

      if (xmlStrEqual(*(v13 + 16), "param"))
      {
        xsltParseGlobalParam(ret, v13);
        goto LABEL_65;
      }

      if (xmlStrEqual(*(v13 + 16), "template"))
      {
        v18 = (v18 + 1);
        xsltParseStylesheetTemplate(ret, v13);
        goto LABEL_65;
      }

      if (xmlStrEqual(*(v13 + 16), "namespace-alias"))
      {
        xsltNamespaceAlias(ret, v13);
        goto LABEL_65;
      }

      if (ret->forwards_compatible)
      {
        goto LABEL_65;
      }

      xsltTransformError(0, ret, v13, "xsltParseStylesheetTop: unknown %s element\n");
      goto LABEL_64;
    }

    if (*(v13 + 8) != 1)
    {
      goto LABEL_65;
    }

    v34 = xmlGetNsProp(v13, "elements", 0);
    if (!v34)
    {
      xsltTransformError(0, ret, v13, "xsltParseStylesheetPreserveSpace: missing elements attribute\n");
      goto LABEL_130;
    }

    v35 = v34;
    cura = v34;
    if (!ret->stripSpaces)
    {
      v36 = xmlHashCreate(10);
      v35 = cura;
      ret->stripSpaces = v36;
      if (!v36)
      {
        goto LABEL_65;
      }
    }

    str1 = v35;
    v37 = *v35;
    if (!*v35)
    {
LABEL_122:
      free(cura);
      v33 = *(v13 + 24);
      if (v33)
      {
        goto LABEL_123;
      }

      goto LABEL_65;
    }

    v38 = cura;
    v47 = v18;
    while (1)
    {
      while (v37 > 0x20)
      {
LABEL_109:
        v39 = 0;
        while (v37 > 0x20 || ((1 << v37) & 0x100002601) == 0)
        {
          v37 = v38[++v39];
        }

        if (v39 >= 0x7FFFFFFF)
        {
          v40 = 0x7FFFFFFF;
        }

        else
        {
          v40 = v39;
        }

        v41 = xmlStrndup(v38, v40);
        str1 = v41;
        if (v41)
        {
          xsltGenericDebug(xsltGenericDebugContext, "add preserved space element %s\n", v41);
          if (xmlStrEqual(str1, "*"))
          {
            ret->stripAll = -1;
          }

          else
          {
            v42 = xsltGetQNameURI(v13, &str1);
            xmlHashAddEntry2(ret->stripSpaces, str1, v42, "preserve");
          }

          free(str1);
        }

        v38 += v39;
        str1 = v38;
        v37 = *v38;
        v18 = v47;
        if (!*v38)
        {
          goto LABEL_122;
        }
      }

      if (((1 << v37) & 0x100002600) == 0)
      {
        if (!v37)
        {
          goto LABEL_122;
        }

        goto LABEL_109;
      }

      str1 = v38 + 1;
      v37 = *++v38;
    }
  }

  v8 = xmlGetNsProp(v6, "version", "http://www.w3.org/1999/XSL/Transform");
  if (!v8)
  {
    xsltTransformError(0, ret, v6, "xsltParseStylesheetProcess : document is not a stylesheet\n");
    return 0;
  }

  v9 = v8;
  xsltGenericDebug(xsltGenericDebugContext, "xsltParseStylesheetProcess : document is stylesheet\n");
  if (!xmlStrEqual(v9, "1.0") && !xmlStrEqual(v9, "1.1"))
  {
    xsltTransformError(0, ret, v6, "xsl:version: only 1.1 features are supported\n");
    ret->forwards_compatible = 1;
    ++ret->warnings;
  }

  free(v9);
  result = xsltNewTemplate();
  if (result)
  {
    v10 = result;
    result->parent = ret->templates;
    ret->templates = result;
    result->imports = xmlStrdup("/");
    xsltParseTemplateContent(ret, doc);
    v10->elem = doc;
    v10->content = doc->children;
    xsltAddTemplate(ret, v10, 0, 0);
    ret->literal_result = 1;
    return ret;
  }

  return result;
}

uint64_t xsltParseStylesheetExcludePrefix(xsltStylesheet *a1, xmlNode *node, int a3)
{
  if (node->type != XML_ELEMENT_NODE)
  {
    return 0;
  }

  if (a3)
  {
    v5 = node;
    v6 = 0;
  }

  else
  {
    v6 = "http://www.w3.org/1999/XSL/Transform";
    v5 = node;
  }

  NsProp = xmlGetNsProp(v5, "exclude-result-prefixes", v6);
  v8 = NsProp;
  if (!NsProp)
  {
    return 0;
  }

  v9 = *NsProp;
  if (*NsProp)
  {
    v10 = 0;
    v11 = NsProp;
    while (1)
    {
      if (v9 > 0x20)
      {
        goto LABEL_12;
      }

      if (((1 << v9) & 0x100002600) != 0)
      {
        v12 = *++v11;
        v9 = v12;
      }

      else
      {
        if (!v9)
        {
          goto LABEL_47;
        }

LABEL_12:
        v13 = 0;
        while (v9 > 0x20 || ((1 << v9) & 0x100002601) == 0)
        {
          v9 = v11[++v13];
        }

        if (v13 >= 0x7FFFFFFF)
        {
          v14 = 0x7FFFFFFF;
        }

        else
        {
          v14 = v13;
        }

        v15 = xmlStrndup(v11, v14);
        if (!v15)
        {
          goto LABEL_43;
        }

        v16 = v15;
        v30 = v15;
        if (xmlStrEqual(v15, "#default"))
        {
          v17 = 0;
        }

        else
        {
          v17 = v16;
        }

        v18 = xmlSearchNs(a1->doc, node, v17);
        if (v18)
        {
          v19 = xmlDictLookup(a1->dict, v18->href, -1);
          if (v19)
          {
            v20 = v19;
            LODWORD(exclPrefixNr) = a1->exclPrefixNr;
            if (exclPrefixNr < 1)
            {
LABEL_29:
              exclPrefixMax = a1->exclPrefixMax;
              if (exclPrefixNr < exclPrefixMax)
              {
                exclPrefixTab = a1->exclPrefixTab;
                goto LABEL_37;
              }

              if (exclPrefixMax <= 0)
              {
                v26 = 4;
              }

              else
              {
                v26 = 2 * exclPrefixMax;
              }

              exclPrefixTab = malloc_type_realloc(a1->exclPrefixTab, 8 * v26, 0x10040436913F5uLL);
              if (exclPrefixTab)
              {
                a1->exclPrefixTab = exclPrefixTab;
                a1->exclPrefixMax = v26;
                LODWORD(exclPrefixNr) = a1->exclPrefixNr;
LABEL_37:
                v25 = v30;
                exclPrefixTab[exclPrefixNr] = v20;
                a1->exclPrefix = v20;
                a1->exclPrefixNr = exclPrefixNr + 1;
                if ((exclPrefixNr & 0x80000000) == 0)
                {
                  xsltGenericDebug(xsltGenericDebugContext, "exclude result prefix %s\n", v30);
                  v25 = v30;
                  v10 = (v10 + 1);
                }

                goto LABEL_42;
              }

              v27 = *__xmlGenericError();
              v28 = __xmlGenericErrorContext();
              v27(*v28, "realloc failed !\n");
            }

            else
            {
              v22 = 0;
              while (!xmlStrEqual(a1->exclPrefixTab[v22], v20))
              {
                ++v22;
                exclPrefixNr = a1->exclPrefixNr;
                if (v22 >= exclPrefixNr)
                {
                  goto LABEL_29;
                }
              }
            }
          }

          v25 = v30;
        }

        else
        {
          xsltTransformError(0, a1, node, "xsl:exclude-result-prefixes : undefined namespace %s\n", v16);
          v25 = v16;
          ++a1->warnings;
        }

LABEL_42:
        free(v25);
LABEL_43:
        v11 += v13;
        v9 = *v11;
        if (!*v11)
        {
          goto LABEL_47;
        }
      }
    }
  }

  v10 = 0;
LABEL_47:
  free(v8);
  return v10;
}

void xsltParseStylesheetExtPrefix(xsltStylesheet *a1, xmlNode *node, int a3)
{
  if (node->type == XML_ELEMENT_NODE)
  {
    if (a3)
    {
      v5 = node;
      v6 = 0;
    }

    else
    {
      v6 = "http://www.w3.org/1999/XSL/Transform";
      v5 = node;
    }

    NsProp = xmlGetNsProp(v5, "extension-element-prefixes", v6);
    if (NsProp)
    {
      cur = NsProp;
      v8 = *NsProp;
      if (*NsProp)
      {
        for (i = NsProp; ; ++i)
        {
          while (v8 > 0x20)
          {
LABEL_12:
            v11 = 0;
            while (v8 > 0x20 || ((1 << v8) & 0x100002601) == 0)
            {
              v8 = i[++v11];
            }

            if (v11 >= 0x7FFFFFFF)
            {
              v12 = 0x7FFFFFFF;
            }

            else
            {
              v12 = v11;
            }

            v13 = xmlStrndup(i, v12);
            if (v13)
            {
              v14 = v13;
              if (xmlStrEqual(v13, "#default"))
              {
                v15 = 0;
              }

              else
              {
                v15 = v14;
              }

              v16 = xmlSearchNs(a1->doc, node, v15);
              if (v16)
              {
                xsltGenericDebug(xsltGenericDebugContext, "add extension prefix %s\n", v14);
                xsltRegisterExtPrefix(a1, v14, v16->href);
              }

              else
              {
                xsltTransformError(0, a1, node, "xsl:extension-element-prefix : undefined namespace %s\n", v14);
                ++a1->warnings;
              }

              free(v14);
            }

            i += v11;
            v8 = *i;
            if (!*i)
            {
              goto LABEL_28;
            }
          }

          if (((1 << v8) & 0x100002600) == 0)
          {
            if (!v8)
            {
              break;
            }

            goto LABEL_12;
          }

          v10 = i[1];
          v8 = v10;
        }
      }

LABEL_28:

      free(cur);
    }
  }
}

void xsltPreprocessStylesheet(xsltStylesheet *a1, uint64_t a2)
{
  if (!a2)
  {
    return;
  }

  v2 = a2;
  v4 = *(a2 + 64);
  if (v4 && (dict = a1->dict) != 0 && *(v4 + 152) == dict)
  {
    v6 = 0;
    v36 = 1;
  }

  else
  {
    v36 = 0;
    a1->internalized = 0;
    v6 = 1;
  }

  if (*(a2 + 8) != 1 || (v7 = *(a2 + 72)) == 0 || !xmlStrEqual(*(v7 + 16), "http://www.w3.org/1999/XSL/Transform") || (v8 = v2, !xmlStrEqual(*(v2 + 16), "stylesheet")))
  {
    v8 = 0;
  }

  v9 = 0;
  v37 = v8;
  v38 = v6;
LABEL_12:
  while (2)
  {
    v10 = v2;
    if (v9)
    {
      xmlUnlinkNode(v9);
      xmlFreeNode(v9);
    }

    v11 = *(v2 + 8);
    if (v11 == 4)
    {
      v9 = 0;
      goto LABEL_78;
    }

    if (v11 == 3)
    {
      v18 = *(v2 + 80);
      if (v18)
      {
        for (i = *(v2 + 80); ; ++i)
        {
          v20 = *i;
          if (v20 > 0x20)
          {
            goto LABEL_68;
          }

          if (((1 << v20) & 0x100002600) == 0)
          {
            break;
          }
        }

        if (*i)
        {
LABEL_68:
          if (v36 && !xmlDictOwns(a1->dict, v18))
          {
            v35 = xmlDictLookup(a1->dict, *(v2 + 80), -1);
            xmlNodeSetContent(v10, 0);
            v9 = 0;
            *(v10 + 80) = v35;
          }

          else
          {
            v9 = 0;
          }

          goto LABEL_72;
        }
      }

      if (xmlNodeGetSpacePreserve(*(v2 + 40)) == 1)
      {
        v9 = 0;
      }

      else
      {
        v9 = v2;
      }

      goto LABEL_72;
    }

    v9 = v2;
    if (v11 != 1)
    {
      goto LABEL_79;
    }

    if ((v6 & 1) == 0)
    {
      v12 = *(v2 + 88);
      if (v12)
      {
        do
        {
          v13 = *(v12 + 24);
          if (v13)
          {
            if (*(v13 + 8) == 3)
            {
              v14 = *(v13 + 80);
              if (v14)
              {
                if (!xmlDictOwns(a1->dict, v14))
                {
                  v15 = xmlDictLookup(a1->dict, *(v13 + 80), -1);
                  if (v15 != *(v13 + 80))
                  {
                    v16 = v15;
                    xmlNodeSetContent(v13, 0);
                    *(v13 + 80) = v16;
                  }
                }
              }
            }
          }

          v12 = *(v12 + 48);
        }

        while (v12);
        if (*(v10 + 8) != 1)
        {
          goto LABEL_37;
        }
      }
    }

    v17 = *(v10 + 72);
    if (v17 && xmlStrEqual(*(v17 + 16), "http://www.w3.org/1999/XSL/Transform"))
    {
      if (xmlStrEqual(*(v10 + 16), "text"))
      {
LABEL_63:
        v9 = 0;
        goto LABEL_79;
      }

      v39 = 0;
    }

    else
    {
LABEL_37:
      v39 = xsltParseStylesheetExcludePrefix(a1, v10, 0);
    }

    v21 = *(v10 + 96);
    if (!v21)
    {
      goto LABEL_55;
    }

    if (a1->exclPrefixNr < 1)
    {
      goto LABEL_55;
    }

    RootElement = xmlDocGetRootElement(*(v10 + 64));
    if (!RootElement)
    {
      goto LABEL_55;
    }

    v23 = RootElement;
    if (RootElement == v10)
    {
      goto LABEL_55;
    }

    v24 = 0;
    do
    {
      while (1)
      {
        v25 = v21;
        v21 = v21->next;
        exclPrefixNr = a1->exclPrefixNr;
        if (exclPrefixNr >= 1)
        {
          break;
        }

LABEL_49:
        v24 = v25;
        if (!v21)
        {
          goto LABEL_55;
        }
      }

      v27 = 0;
      while (!v25->prefix)
      {
LABEL_48:
        if (++v27 >= exclPrefixNr)
        {
          goto LABEL_49;
        }
      }

      if (!xmlStrEqual(v25->href, a1->exclPrefixTab[v27]))
      {
        exclPrefixNr = a1->exclPrefixNr;
        goto LABEL_48;
      }

      if (v24)
      {
        p_next = &v24->next;
      }

      else
      {
        p_next = (v10 + 96);
      }

      *p_next = v25->next;
      v25->next = v23->nsDef;
      v23->nsDef = v25;
    }

    while (v21);
LABEL_55:
    if (v39 >= 1)
    {
      xsltPreprocessStylesheet(a1, *(v10 + 24));
      v29 = a1->exclPrefixNr;
      v30 = v39 + 1;
      v6 = v38;
      v8 = v37;
      do
      {
        v31 = v29 - 1;
        if (v29 >= 1)
        {
          a1->exclPrefixNr = v31;
          exclPrefixTab = a1->exclPrefixTab;
          if (v29 == 1)
          {
            v33 = 0;
          }

          else
          {
            v33 = exclPrefixTab[v29 - 2];
          }

          a1->exclPrefix = v33;
          exclPrefixTab[v31] = 0;
          v29 = v31;
        }

        --v30;
      }

      while (v30 > 1);
      goto LABEL_63;
    }

    v9 = 0;
    v6 = v38;
    v8 = v37;
LABEL_72:
    if (*(v10 + 8) != 1 || !v8 || (v34 = *(v10 + 72)) == 0 || *(v10 + 40) != v8 || xmlStrEqual(*(v34 + 16), "http://www.w3.org/1999/XSL/Transform") || xsltCheckExtURI(a1, *(*(v10 + 72) + 16)))
    {
LABEL_78:
      v2 = *(v10 + 24);
      if (!v2)
      {
        goto LABEL_79;
      }

      continue;
    }

    break;
  }

  do
  {
LABEL_79:
    v2 = *(v10 + 48);
    if (v2)
    {
      goto LABEL_12;
    }

    v10 = *(v10 + 40);
  }

  while (v10 && v10 != a1->doc);
  if (v9)
  {
    xsltGenericDebug(xsltGenericDebugContext, "xsltPreprocessStylesheet: removing ignorable blank node\n");
    xmlUnlinkNode(v9);

    xmlFreeNode(v9);
  }
}

void *xsltNewTemplate()
{
  v0 = malloc_type_malloc(0x98uLL, 0x10F004047B85E54uLL);
  v1 = v0;
  if (v0)
  {
    v0[18] = 0;
    *(v0 + 7) = 0u;
    *(v0 + 8) = 0u;
    *(v0 + 5) = 0u;
    *(v0 + 6) = 0u;
    *(v0 + 3) = 0u;
    *(v0 + 4) = 0u;
    *(v0 + 1) = 0u;
    *(v0 + 2) = 0u;
    *v0 = 0u;
    *(v0 + 6) = -885235267;
  }

  else
  {
    xsltTransformError(0, 0, 0, "xsltNewTemplate : malloc failed\n");
  }

  return v1;
}

xsltStylesheetPtr xsltParseStylesheetImportedDoc(xmlDocPtr doc, xsltStylesheetPtr style)
{
  if (!doc)
  {
    return 0;
  }

  v3 = xsltNewStylesheetInternal(style);
  v4 = v3;
  if (v3 && xsltParseStylesheetUser(v3, doc))
  {
    xsltFreeStylesheet(v4);
    return 0;
  }

  return v4;
}

int xsltParseStylesheetUser(xsltStylesheetPtr style, xmlDocPtr doc)
{
  result = -1;
  if (style && doc)
  {
    if (doc->dict)
    {
      xmlDictFree(style->dict);
      style->dict = doc->dict;
      xsltGenericDebug(xsltGenericDebugContext, "reusing dictionary from %s for stylesheet\n", doc->URL);
      xmlDictReference(style->dict);
    }

    RootElement = xmlDocGetRootElement(style->doc);
    if (RootElement)
    {
      while (1)
      {
        v6 = RootElement;
        if (RootElement->type == XML_ELEMENT_NODE)
        {
          nsDef = RootElement->nsDef;
          if (nsDef)
          {
            break;
          }
        }

LABEL_17:
        RootElement = v6->children;
        if (!RootElement || RootElement->type == XML_ENTITY_DECL)
        {
          while (1)
          {
            RootElement = v6->next;
            if (RootElement)
            {
              break;
            }

            v6 = v6->parent;
            if (!v6 || v6 == style->doc)
            {
              goto LABEL_24;
            }
          }
        }
      }

      while (1)
      {
        prefix = nsDef->prefix;
        if (prefix)
        {
          nsHash = style->nsHash;
          if (!nsHash)
          {
            nsHash = xmlHashCreate(10);
            style->nsHash = nsHash;
            if (!nsHash)
            {
              xsltTransformError(0, style, v6, "xsltGatherNamespaces: failed to create hash table\n");
              ++style->errors;
              break;
            }

            prefix = nsDef->prefix;
          }

          v10 = xmlHashLookup(nsHash, prefix);
          if (v10)
          {
            if (!xmlStrEqual(v10, nsDef->href))
            {
              xsltTransformError(0, style, v6, "Namespaces prefix %s used for multiple namespaces\n", nsDef->prefix);
              ++style->warnings;
            }
          }

          else
          {
            xmlHashUpdateEntry(style->nsHash, nsDef->prefix, nsDef->href, 0);
            xsltGenericDebug(xsltGenericDebugContext, "Added namespace: %s mapped to %s\n", nsDef->prefix, nsDef->href);
          }
        }

        nsDef = nsDef->next;
        if (!nsDef)
        {
          goto LABEL_17;
        }
      }
    }

LABEL_24:
    style->doc = doc;
    if (!xsltParseStylesheetProcess(style, doc))
    {
      style->doc = 0;
      return -1;
    }

    if (style->errors)
    {
      style->doc = 0;
      if (!style->parent)
      {
        xmlDocGetRootElement(doc);
      }

      return -1;
    }

    if (!style->parent)
    {
      xsltResolveStylesheetAttributeSet(style);
    }

    return 0;
  }

  return result;
}

xsltStylesheetPtr xsltParseStylesheetDoc(xmlDocPtr doc)
{
  xsltInitGlobals();

  return xsltParseStylesheetImportedDoc(doc, 0);
}

xsltStylesheetPtr xsltParseStylesheetFile(const xmlChar *filename)
{
  xsltInitGlobals();
  if (filename)
  {
    xsltGenericDebug(xsltGenericDebugContext, "xsltParseStylesheetFile : parse %s\n", filename);
    DefaultSecurityPrefs = xsltGetDefaultSecurityPrefs();
    if (DefaultSecurityPrefs && (v3 = xsltCheckRead(DefaultSecurityPrefs, 0, filename), v3 <= 0))
    {
      if (!v3)
      {
        xsltTransformError(0, 0, 0, "xsltParseStylesheetFile: read rights for %s denied\n");
      }
    }

    else
    {
      v4 = xsltDocDefaultLoader(filename, 0, 16398, 0, XSLT_LOAD_START);
      if (v4)
      {
        v5 = v4;
        xsltInitGlobals();
        result = xsltParseStylesheetImportedDoc(v5, 0);
        if (result)
        {
          return result;
        }

        xmlFreeDoc(v5);
      }

      else
      {
        xsltTransformError(0, 0, 0, "xsltParseStylesheetFile : cannot parse %s\n");
      }
    }
  }

  return 0;
}

xsltStylesheetPtr xsltLoadStylesheetPI(xmlDocPtr doc)
{
  xsltInitGlobals();
  if (!doc)
  {
    return 0;
  }

  children = doc->children;
  if (!children)
  {
    return 0;
  }

  while (1)
  {
    type = children->type;
    if (type != XML_PI_NODE)
    {
      if (type == XML_ELEMENT_NODE)
      {
        return 0;
      }

      goto LABEL_86;
    }

    if (xmlStrEqual(children->name, "xml-stylesheet"))
    {
      content = children->content;
      if (content)
      {
        LODWORD(v5) = *content;
        if (*content)
        {
          v6 = 0;
          v7 = 0;
          while (1)
          {
LABEL_10:
            while (v5 <= 0x20 && ((1 << v5) & 0x100002600) != 0)
            {
              v8 = *++content;
              LODWORD(v5) = v8;
            }

            if (v5 == 104)
            {
              break;
            }

            if (v5 != 116 || content[1] != 121 || content[2] != 112 || content[3] != 101)
            {
              goto LABEL_29;
            }

            v9 = content + 5;
            for (content += 4; ; ++content)
            {
              v5 = *content;
              if (v5 > 0x3D)
              {
                break;
              }

              if (((1 << v5) & 0x100002600) == 0)
              {
                if (v5 != 61)
                {
                  break;
                }

                v14 = content[1];
                if (v14 != 34 && v14 != 39)
                {
                  LODWORD(v5) = *++content;
                  break;
                }

                v15 = -1;
                do
                {
                  v16 = *++v9;
                  LODWORD(v5) = v16;
                  ++v15;
                  if (v16)
                  {
                    v17 = v5 == v14;
                  }

                  else
                  {
                    v17 = 1;
                  }
                }

                while (!v17);
                if (v5 != v14)
                {
                  goto LABEL_54;
                }

                if (v15 >= 0x7FFFFFFF)
                {
                  v19 = 0x7FFFFFFF;
                }

                else
                {
                  v19 = v15;
                }

                v20 = xmlStrndup(content + 2, v19);
                v38 = *v9 != 0;
                if (*v9)
                {
                  content = v9 + 1;
                }

                else
                {
                  content = v9;
                }

                if (!v20)
                {
                  goto LABEL_86;
                }

                str1 = v20;
                if (xmlStrcasecmp(v20, "text/xml") && xmlStrcasecmp(str1, "text/xsl"))
                {
                  free(str1);
                  goto LABEL_81;
                }

                free(str1);
                LODWORD(v5) = v9[v38];
                v6 = 1;
                if (v9[v38])
                {
                  goto LABEL_10;
                }

                goto LABEL_82;
              }

              ++v9;
            }

LABEL_58:
            if (!v5)
            {
              goto LABEL_81;
            }
          }

          if (content[1] == 114 && content[2] == 101 && content[3] == 102)
          {
            v9 = content + 5;
            for (content += 4; ; ++content)
            {
              v5 = *content;
              if (v5 > 0x3D)
              {
                break;
              }

              if (((1 << v5) & 0x100002600) == 0)
              {
                if (v5 == 61)
                {
                  LODWORD(v5) = content[1];
                  if (v5 == 34 || v5 == 39)
                  {
                    v10 = -1;
                    do
                    {
                      v12 = *++v9;
                      v11 = v12;
                      ++v10;
                      if (v12)
                      {
                        v13 = v11 == v5;
                      }

                      else
                      {
                        v13 = 1;
                      }
                    }

                    while (!v13);
                    if (v11 == v5)
                    {
                      if (!v7)
                      {
                        if (v10 >= 0x7FFFFFFF)
                        {
                          v18 = 0x7FFFFFFF;
                        }

                        else
                        {
                          v18 = v10;
                        }

                        v7 = xmlStrndup(content + 2, v18);
                        LODWORD(v5) = *v9;
                      }

                      if (v5)
                      {
                        content = v9 + 1;
                      }

                      else
                      {
                        content = v9;
                      }

                      LODWORD(v5) = *content;
                    }

                    else
                    {
                      LODWORD(v5) = v11;
LABEL_54:
                      content = v9;
                    }
                  }

                  else
                  {
                    ++content;
                  }
                }

                goto LABEL_58;
              }

              ++v9;
            }

            goto LABEL_58;
          }

LABEL_29:
          while (1)
          {
            if (v5 <= 0x20)
            {
              if (((1 << v5) & 0x100002600) != 0)
              {
                goto LABEL_10;
              }

              if (!v5)
              {
                break;
              }
            }

            LODWORD(v5) = *++content;
          }

LABEL_81:
          if (!v6)
          {
            if (v7)
            {
              free(v7);
            }

            goto LABEL_86;
          }

LABEL_82:
          if (v7)
          {
            break;
          }
        }
      }
    }

LABEL_86:
    children = children->next;
    if (!children)
    {
      return 0;
    }
  }

  xsltGenericDebug(xsltGenericDebugContext, "xsltLoadStylesheetPI : found PI href=%s\n", v7);
  v23 = xmlParseURI(v7);
  if (!v23)
  {
    xsltTransformError(0, 0, children, "xml-stylesheet : href %s is not valid\n", v7);
    free(v7);
    return 0;
  }

  v24 = v23;
  if (!v23->fragment || v23->scheme || v23->opaque || v23->authority || v23->server || v23->user || v23->path || v23->query)
  {
    Base = xmlNodeGetBase(doc, doc);
    v26 = xmlBuildURI(v7, Base);
    if (v26)
    {
      xsltGenericDebug(xsltGenericDebugContext, "xsltLoadStylesheetPI : fetching %s\n", v26);
      ID = xsltParseStylesheetFile(v26);
      free(v26);
    }

    else
    {
      xsltGenericDebug(xsltGenericDebugContext, "xsltLoadStylesheetPI : fetching %s\n", v7);
      ID = xsltParseStylesheetFile(v7);
    }

    if (Base)
    {
      free(Base);
    }
  }

  else
  {
    xsltGenericDebug(xsltGenericDebugContext, "xsltLoadStylesheetPI : Reference to ID %s\n", v7);
    fragment = v24->fragment;
    v29 = *fragment;
    v28 = (fragment + 1);
    if (v29 == 35)
    {
      v30 = v28;
    }

    else
    {
      v30 = v24->fragment;
    }

    ID = xmlGetID(doc, v30);
    if (ID)
    {
      xsltGenericDebug(xsltGenericDebugContext, "creating new document from %s for embedded stylesheet\n", doc->URL);
      stripSpaces = ID->stripSpaces;
      v32 = xmlNewDoc(0);
      if (v32)
      {
        v33 = v32;
        dict = doc->dict;
        v33->dict = dict;
        xmlDictReference(dict);
        xsltGenericDebug(xsltGenericDebugContext, "reusing dictionary from %s for embedded stylesheet\n", doc->URL);
        v35 = xmlDocCopyNode(stripSpaces, v33, 1);
        v36 = xmlNodeGetBase(doc, stripSpaces->parent);
        v33->URL = v36;
        xsltGenericDebug(xsltGenericDebugContext, "set base URI for embedded stylesheet as %s\n", v36);
        while (1)
        {
          stripSpaces = stripSpaces->parent;
          if (stripSpaces == doc)
          {
            break;
          }

          for (i = stripSpaces->ns; i; i = i->next)
          {
            xmlNewNs(v35, i->href, i->prefix);
          }
        }

        xmlAddChild(v33, v35);
        xsltInitGlobals();
        ID = xsltParseStylesheetImportedDoc(v33, 0);
        if (!ID)
        {
          xmlFreeDoc(v33);
        }
      }

      else
      {
        ID = 0;
      }
    }

    else
    {
      xsltTransformError(0, 0, children, "xml-stylesheet : no ID %s found\n", v24->fragment);
    }
  }

  xmlFreeURI(v24);
  free(v7);
  return ID;
}

void *xsltNewDecimalFormat(uint64_t a1, uint64_t a2)
{
  v4 = malloc_type_malloc(0x68uLL, 0x700406D37F76BuLL);
  v6 = v4;
  if (v4)
  {
    *v4 = 0;
    if (linkedOnOrAfterFall2022OSVersions(v4, v5))
    {
      v6[12] = a1;
    }

    v6[1] = a2;
    v6[2] = xmlStrdup("#");
    v6[3] = xmlStrdup(";");
    v6[7] = xmlStrdup(".");
    v6[8] = xmlStrdup(",");
    v6[9] = xmlStrdup("%");
    v6[10] = xmlStrdup(xsltNewDecimalFormat_permille);
    v6[11] = xmlStrdup("0");
    v6[4] = xmlStrdup("-");
    v6[5] = xmlStrdup("Infinity");
    v6[6] = xmlStrdup("NaN");
  }

  return v6;
}

void xsltParseStylesheetKey(xsltStylesheet *a1, xmlNode *node)
{
  if (node->type == XML_ELEMENT_NODE)
  {
    name[7] = v2;
    name[8] = v3;
    name[0] = xmlGetNsProp(node, "name", 0);
    if (name[0])
    {
      QNameURI = xsltGetQNameURI(node, name);
      v7 = name[0];
      if (name[0])
      {
        if (QNameURI)
        {
          v8 = xmlStrdup(QNameURI);
        }

        else
        {
          v8 = 0;
        }

        xsltGenericDebug(xsltGenericDebugContext, "xsltParseStylesheetKey: name %s\n", v7);
        NsProp = xmlGetNsProp(node, "match", 0);
        if (NsProp)
        {
          v10 = NsProp;
          v11 = xmlGetNsProp(node, "use", 0);
          if (v11)
          {
            v12 = v11;
            xsltAddKey(a1, v7, v8, v10, v11, node);
            free(v12);
          }

          else
          {
            xsltTransformError(0, a1, node, "xsl:key : error missing use\n");
            ++a1->errors;
          }

          free(v10);
        }

        else
        {
          xsltTransformError(0, a1, node, "xsl:key : error missing match\n");
          ++a1->errors;
        }

        free(v7);
        if (v8)
        {
          free(v8);
        }

        goto LABEL_17;
      }
    }

    else
    {
      xsltTransformError(0, a1, node, "xsl:key : error missing name\n");
    }

    ++a1->errors;
LABEL_17:
    children = node->children;
    if (children)
    {
      xsltParseContentError(a1, children);
    }
  }
}

void xsltParseStylesheetDecimalFormat(xsltStylesheet *a1, xmlNode *node)
{
  if (node->type != XML_ELEMENT_NODE)
  {
    return;
  }

  decimalFormat = a1->decimalFormat;
  NsProp = xmlGetNsProp(node, "name", 0);
  name = NsProp;
  if (NsProp)
  {
    v6 = NsProp;
    if (xmlValidateQName(NsProp, 0))
    {
      xsltTransformError(0, a1, node, "xsl:decimal-format: Invalid QName '%s'.\n", v6);
      ++a1->warnings;

      free(v6);
      return;
    }

    QNameURI = xsltGetQNameURI(node, &name);
    if (!name)
    {
      ++a1->warnings;
      return;
    }

    v8 = QNameURI;
    if (xsltDecimalFormatGetByQName(a1, QNameURI, name))
    {
      xsltTransformError(0, a1, node, "xsltParseStylestyleDecimalFormat: %s already exists\n", name);
      ++a1->warnings;
LABEL_10:
      free(name);
      return;
    }

    v9 = xsltNewDecimalFormat(v8, name);
    if (!v9)
    {
      xsltTransformError(0, a1, node, "xsltParseStylestyleDecimalFormat: failed creating new decimal-format\n");
      ++a1->errors;
      goto LABEL_10;
    }

    decimalFormat = v9;
    v10 = a1->decimalFormat;
    do
    {
      p_next = &v10->next;
      v10 = v10->next;
    }

    while (v10);
    *p_next = v9;
  }

  v12 = xmlGetNsProp(node, "decimal-separator", 0);
  name = v12;
  if (v12)
  {
    if (decimalFormat->decimalPoint)
    {
      free(decimalFormat->decimalPoint);
      v12 = name;
    }

    decimalFormat->decimalPoint = v12;
  }

  v13 = xmlGetNsProp(node, "grouping-separator", 0);
  name = v13;
  if (v13)
  {
    if (decimalFormat->grouping)
    {
      free(decimalFormat->grouping);
      v13 = name;
    }

    decimalFormat->grouping = v13;
  }

  v14 = xmlGetNsProp(node, "infinity", 0);
  name = v14;
  if (v14)
  {
    if (decimalFormat->infinity)
    {
      free(decimalFormat->infinity);
      v14 = name;
    }

    decimalFormat->infinity = v14;
  }

  v15 = xmlGetNsProp(node, "minus-sign", 0);
  name = v15;
  if (v15)
  {
    if (decimalFormat->minusSign)
    {
      free(decimalFormat->minusSign);
      v15 = name;
    }

    decimalFormat->minusSign = v15;
  }

  v16 = xmlGetNsProp(node, "NaN", 0);
  name = v16;
  if (v16)
  {
    if (decimalFormat->noNumber)
    {
      free(decimalFormat->noNumber);
      v16 = name;
    }

    decimalFormat->noNumber = v16;
  }

  v17 = xmlGetNsProp(node, "percent", 0);
  name = v17;
  if (v17)
  {
    if (decimalFormat->percent)
    {
      free(decimalFormat->percent);
      v17 = name;
    }

    decimalFormat->percent = v17;
  }

  v18 = xmlGetNsProp(node, "per-mille", 0);
  name = v18;
  if (v18)
  {
    if (decimalFormat->permille)
    {
      free(decimalFormat->permille);
      v18 = name;
    }

    decimalFormat->permille = v18;
  }

  v19 = xmlGetNsProp(node, "zero-digit", 0);
  name = v19;
  if (v19)
  {
    if (decimalFormat->zeroDigit)
    {
      free(decimalFormat->zeroDigit);
      v19 = name;
    }

    decimalFormat->zeroDigit = v19;
  }

  v20 = xmlGetNsProp(node, "digit", 0);
  name = v20;
  if (v20)
  {
    if (decimalFormat->digit)
    {
      free(decimalFormat->digit);
      v20 = name;
    }

    decimalFormat->digit = v20;
  }

  v21 = xmlGetNsProp(node, "pattern-separator", 0);
  name = v21;
  if (v21)
  {
    if (decimalFormat->patternSeparator)
    {
      free(decimalFormat->patternSeparator);
      v21 = name;
    }

    decimalFormat->patternSeparator = v21;
  }

  children = node->children;
  if (children)
  {
    xsltParseContentError(a1, children);
  }
}

void xsltParseStylesheetTemplate(xsltStylesheet *a1, uint64_t a2)
{
  if (*(a2 + 8) != 1)
  {
    return;
  }

  name[11] = v2;
  name[12] = v3;
  v4 = a2;
  v6 = xsltNewTemplate();
  if (!v6)
  {
    return;
  }

  v7 = v6;
  name[0] = 0;
  templates = a1->templates;
  a1->templates = v6;
  v6->next = templates;
  v6->style = a1;
  if (v6->inheritedNsNr || v6->inheritedNs)
  {
    goto LABEL_35;
  }

  LODWORD(v9) = 0;
  v10 = 0;
  v11 = 10;
  v32 = v4;
  v12 = v4;
  while (1)
  {
    if (v12->type == XML_ELEMENT_NODE)
    {
      nsDef = v12->nsDef;
      if (nsDef)
      {
        break;
      }
    }

LABEL_29:
    v12 = v12->parent;
    if (!v12)
    {
      v4 = v32;
      if (v9)
      {
        xsltGenericDebug(xsltGenericDebugContext, "template has %d inherited namespaces\n", v9);
        v7->inheritedNsNr = v9;
        v7->inheritedNs = v10;
      }

      goto LABEL_35;
    }
  }

  while (1)
  {
    if (xmlStrEqual(nsDef->href, "http://www.w3.org/1999/XSL/Transform"))
    {
      goto LABEL_9;
    }

    prefix = nsDef->prefix;
    if (prefix)
    {
      if (xsltCheckExtPrefix(a1, prefix))
      {
        goto LABEL_9;
      }
    }

    if (a1->exclPrefixNr >= 1)
    {
      v15 = 0;
      while (!xmlStrEqual(nsDef->href, a1->exclPrefixTab[v15]))
      {
        if (++v15 >= a1->exclPrefixNr)
        {
          goto LABEL_17;
        }
      }

      goto LABEL_9;
    }

LABEL_17:
    if (!v10)
    {
      v16 = malloc_type_malloc(8 * v11 + 8, 0x2004093837F09uLL);
      if (!v16)
      {
        v21 = *__xmlGenericError();
        v22 = *__xmlGenericErrorContext();
        v23 = "xsltGetInheritedNsList : out of memory!\n";
        goto LABEL_34;
      }

      v10 = v16;
      v16[v9] = 0;
    }

    if (v9 >= 1)
    {
      v17 = 0;
      do
      {
        v18 = nsDef->prefix;
        v19 = v10[v17]->prefix;
        if (v18 == v19 || xmlStrEqual(v18, v19))
        {
          goto LABEL_9;
        }

        ++v17;
      }

      while (v9 != v17);
    }

    if (v9 >= v11)
    {
      break;
    }

LABEL_28:
    v10[v9] = nsDef;
    v9 = v9 + 1;
    v10[v9] = 0;
LABEL_9:
    nsDef = nsDef->next;
    if (!nsDef)
    {
      goto LABEL_29;
    }
  }

  v20 = malloc_type_realloc(v10, 8 * ((2 * v11) | 1), 0x2004093837F09uLL);
  if (v20)
  {
    v10 = v20;
    v11 *= 2;
    goto LABEL_28;
  }

  v21 = *__xmlGenericError();
  v22 = *__xmlGenericErrorContext();
  v23 = "xsltGetInheritedNsList : realloc failed!\n";
LABEL_34:
  v21(v22, v23);
  v4 = v32;
LABEL_35:
  name[0] = xmlGetNsProp(v4, "mode", 0);
  if (name[0])
  {
    QNameURI = xsltGetQNameURI(v4, name);
    v25 = name[0];
    if (name[0])
    {
      if (QNameURI)
      {
        v26 = xmlStrdup(QNameURI);
      }

      else
      {
        v26 = 0;
      }

      v7->mode = xmlDictLookup(a1->dict, v25, -1);
      v7->modeURI = xmlDictLookup(a1->dict, v26, -1);
      xsltGenericDebug(xsltGenericDebugContext, "xsltParseStylesheetTemplate: mode %s\n", v25);
      free(v25);
      if (v26)
      {
        free(v26);
      }

      goto LABEL_42;
    }

LABEL_52:
    ++a1->errors;
  }

  else
  {
LABEL_42:
    NsProp = xmlGetNsProp(v4, "match", 0);
    name[0] = NsProp;
    if (NsProp)
    {
      if (v7->match)
      {
        free(v7->match);
        NsProp = name[0];
      }

      v7->match = NsProp;
    }

    v28 = xmlGetNsProp(v4, "priority", 0);
    name[0] = v28;
    if (v28)
    {
      v29 = xmlXPathStringEvalNumber(v28);
      v7->priority = v29;
      free(name[0]);
    }

    name[0] = xmlGetNsProp(v4, "name", 0);
    if (name[0])
    {
      v30 = xsltGetQNameURI(v4, name);
      if (!name[0])
      {
        goto LABEL_52;
      }

      if (xmlValidateNCName(name[0], 0))
      {
        xsltTransformError(0, a1, v4, "xsl:template : error invalid name '%s'\n", name[0]);
        ++a1->errors;
        free(name[0]);
        return;
      }

      v7->name = xmlDictLookup(a1->dict, name[0], -1);
      free(name[0]);
      name[0] = 0;
      if (v30)
      {
        v31 = xmlDictLookup(a1->dict, v30, -1);
      }

      else
      {
        v31 = 0;
      }

      v7->nameURI = v31;
    }

    xsltParseTemplateContent(a1, v4);
    v7->content = v4->children;
    v7->elem = v4;
    xsltAddTemplate(a1, v7, v7->mode, v7->modeURI);
  }
}

xsltLocale xsltNewLocale(xsltLocale langName)
{
  v13 = *MEMORY[0x29EDCA608];
  if (!langName)
  {
    return langName;
  }

  v1 = 0;
  *v12 = 0;
  *&v12[8] = 0;
  *&v12[15] = 0;
  while (1)
  {
    v2 = *(langName + v1);
    if ((v2 & 0xFFFFFFDF) - 65 > 0x19)
    {
      break;
    }

    v12[v1++] = v2 | 0x20;
    if (v1 == 8)
    {
      v3 = &v12[v1];
      v4 = langName + v1;
      LODWORD(v1) = 8;
      goto LABEL_8;
    }
  }

  if (!v1)
  {
    return 0;
  }

  v3 = &v12[v1];
  v4 = langName + v1;
LABEL_8:
  if (*v4)
  {
    if (*v4 == 45)
    {
      v5 = 0;
      *v3 = 95;
      v6 = v3 + 1;
      v7 = v4 + 1;
      while (1)
      {
        v8 = *v7 & 0xDF;
        if ((v8 - 65) > 0x19)
        {
          break;
        }

        *v6++ = v8;
        ++v5;
        ++v7;
        if (v5 == 8)
        {
          goto LABEL_15;
        }
      }

      if (!v5)
      {
        return 0;
      }

LABEL_15:
      if (!*v7)
      {
        strcpy(v6, ".utf8");
        langName = newlocale(1, v12, 0);
        if (langName)
        {
          return langName;
        }

        v3 = &v12[v1];
        goto LABEL_18;
      }
    }

    return 0;
  }

LABEL_18:
  strcpy(v3, ".utf8");
  langName = newlocale(1, v12, 0);
  if (langName)
  {
    return langName;
  }

  if (v1 != 2)
  {
    return 0;
  }

  langName = 0;
  switch(v12[0])
  {
    case 'a':
      langName = 0;
      if (v12[1] > 0x6Du)
      {
        switch(v12[1])
        {
          case 'n':
            goto LABEL_118;
          case 'r':
            v9 = "AE";
            goto LABEL_154;
          case 'z':
            v9 = "AZ";
            goto LABEL_154;
        }
      }

      else
      {
        v9 = "ET";
        switch(v12[1])
        {
          case 'a':
            goto LABEL_154;
          case 'f':
            goto LABEL_47;
          case 'm':
            goto LABEL_154;
        }
      }

      return langName;
    case 'b':
      langName = 0;
      if (v12[1] <= 0x6Du)
      {
        if (v12[1] == 101)
        {
          v9 = "BY";
          goto LABEL_154;
        }

        if (v12[1] == 103)
        {
          v9 = "BG";
          goto LABEL_154;
        }
      }

      else
      {
        switch(v12[1])
        {
          case 'n':
            v9 = "BD";
            goto LABEL_154;
          case 'r':
            goto LABEL_113;
          case 's':
            v9 = "BA";
            goto LABEL_154;
        }
      }

      return langName;
    case 'c':
      if (v12[1] == 97)
      {
        goto LABEL_118;
      }

      if (v12[1] == 121)
      {
        goto LABEL_110;
      }

      if (v12[1] != 115)
      {
        return 0;
      }

      v9 = "CZ";
      goto LABEL_154;
    case 'd':
      v9 = "DE";
      if (v12[1] != 101)
      {
        v9 = 0;
      }

      if (v12[1] != 97)
      {
        goto LABEL_105;
      }

      v9 = "DK";
      goto LABEL_154;
    case 'e':
      if (v12[1] == 108)
      {
        v9 = "GR";
        goto LABEL_154;
      }

      if ((v12[1] & 0xFE) == 0x6E)
      {
        v9 = "US";
        goto LABEL_154;
      }

      if (v12[1] - 115 >= 3)
      {
        return 0;
      }

      v10 = (v12[1] - 115);
      v11 = off_29F27B150;
LABEL_140:
      v9 = v11[v10];
      goto LABEL_154;
    case 'f':
      langName = 0;
      if (v12[1] > 0x6Eu)
      {
        if (v12[1] == 111)
        {
          v9 = "FO";
        }

        else
        {
          if (v12[1] != 114)
          {
            return langName;
          }

LABEL_113:
          v9 = "FR";
        }
      }

      else if (v12[1] == 97)
      {
        v9 = "IR";
      }

      else
      {
        if (v12[1] != 105)
        {
          return langName;
        }

        v9 = "FI";
      }

      goto LABEL_154;
    case 'g':
      switch(v12[1])
      {
        case 'a':
          v9 = "IE";
          goto LABEL_154;
        case 'v':
          goto LABEL_110;
        case 'l':
LABEL_118:
          v9 = "ES";
          goto LABEL_154;
      }

      return 0;
    case 'h':
      langName = 0;
      if (v12[1] <= 0x71u)
      {
        if (v12[1] == 101)
        {
          goto LABEL_126;
        }

        if (v12[1] == 105)
        {
LABEL_109:
          v9 = "IN";
          goto LABEL_154;
        }

        return langName;
      }

      if (v12[1] == 114)
      {
        v9 = "HT";
      }

      else
      {
        if (v12[1] != 117)
        {
          return langName;
        }

        v9 = "HU";
      }

      goto LABEL_154;
    case 'i':
      langName = 0;
      if (v12[1] > 0x73u)
      {
        if (v12[1] == 116)
        {
          v9 = "IT";
        }

        else
        {
          if (v12[1] != 119)
          {
            return langName;
          }

LABEL_126:
          v9 = "IL";
        }
      }

      else if (v12[1] == 100)
      {
        v9 = "ID";
      }

      else
      {
        if (v12[1] != 115)
        {
          return langName;
        }

        v9 = "IS";
      }

      goto LABEL_154;
    case 'j':
      if (v12[1] != 97)
      {
        return 0;
      }

      v9 = "JP";
      goto LABEL_154;
    case 'k':
      switch(v12[1])
      {
        case 'l':
          v9 = "GL";
          break;
        case 'w':
LABEL_110:
          v9 = "GB";
          break;
        case 'o':
          v9 = "KR";
          break;
        default:
          return 0;
      }

      goto LABEL_154;
    case 'l':
      v9 = "LV";
      if (v12[1] != 118)
      {
        v9 = 0;
      }

      if (v12[1] != 116)
      {
        goto LABEL_105;
      }

      v9 = "LT";
      goto LABEL_154;
    case 'm':
      if (v12[1] - 107 >= 0xA || ((0x38Bu >> (v12[1] - 107)) & 1) == 0)
      {
        return 0;
      }

      v10 = (v12[1] - 107);
      v11 = off_29F27B168;
      goto LABEL_140;
    case 'n':
      langName = 0;
      v9 = "NO";
      if (v12[1] <= 0x6Du)
      {
        switch(v12[1])
        {
          case 'b':
            goto LABEL_154;
          case 'e':
            v9 = "NP";
            break;
          case 'l':
            v9 = "NL";
            break;
          default:
            return langName;
        }

        goto LABEL_154;
      }

      if (v12[1] - 110 < 2)
      {
        goto LABEL_154;
      }

      return langName;
    case 'o':
      if (v12[1] != 109)
      {
        return 0;
      }

      v9 = "ET";
      goto LABEL_154;
    case 'p':
      switch(v12[1])
      {
        case 'a':
          goto LABEL_109;
        case 't':
          v9 = "PT";
          break;
        case 'l':
          v9 = "PL";
          break;
        default:
          return 0;
      }

      goto LABEL_154;
    case 'r':
      v9 = "RU";
      if (v12[1] != 117)
      {
        v9 = 0;
      }

      if (v12[1] != 111)
      {
        goto LABEL_105;
      }

      v9 = "RO";
      goto LABEL_154;
    case 's':
      if (v12[1] - 101 >= 0x12 || ((0x294C9u >> (v12[1] - 101)) & 1) == 0)
      {
        return 0;
      }

      v10 = (v12[1] - 101);
      v11 = off_29F27B1B8;
      goto LABEL_140;
    case 't':
      if ((v12[1] & 0xFB) == 0x61)
      {
        goto LABEL_109;
      }

      langName = 0;
      if (v12[1] > 0x71u)
      {
        if (v12[1] == 114)
        {
          v9 = "TR";
        }

        else
        {
          if (v12[1] != 116)
          {
            return langName;
          }

          v9 = "RU";
        }
      }

      else if (v12[1] == 104)
      {
        v9 = "TH";
      }

      else
      {
        if (v12[1] != 105)
        {
          return langName;
        }

        v9 = "ER";
      }

      goto LABEL_154;
    case 'u':
      v9 = "PK";
      if (v12[1] != 114)
      {
        v9 = 0;
      }

      if (v12[1] != 107)
      {
        goto LABEL_105;
      }

      v9 = "UA";
      goto LABEL_154;
    case 'v':
      if (v12[1] != 105)
      {
        return 0;
      }

      v9 = "VN";
      goto LABEL_154;
    case 'w':
      if (v12[1] != 97)
      {
        return 0;
      }

      v9 = "BE";
      goto LABEL_154;
    case 'x':
      if (v12[1] != 104)
      {
        return 0;
      }

LABEL_47:
      v9 = "ZA";
      goto LABEL_154;
    case 'z':
      v9 = "ZA";
      if (v12[1] != 117)
      {
        v9 = 0;
      }

      if (v12[1] == 104)
      {
        v9 = "CN";
      }

      else
      {
LABEL_105:
        if (!v9)
        {
          return 0;
        }
      }

LABEL_154:
      v12[2] = 95;
      *&v12[3] = *v9;
      strcpy(&v12[5], ".utf8");
      langName = newlocale(1, v12, 0);
      break;
    default:
      return langName;
  }

  return langName;
}

void xsltFreeLocale(xsltLocale locale)
{
  if (locale)
  {
    freelocale(locale);
  }
}

xsltLocaleChar *__cdecl xsltStrxfrm(xsltLocale locale, const xmlChar *string)
{
  v4 = strxfrm_l(0, string, 0, locale) + 1;
  v5 = malloc_type_malloc(v4, 0x100004077774924uLL);
  v6 = v5;
  if (v5)
  {
    if (strxfrm_l(v5, string, v4, locale) >= v4)
    {
      xsltTransformError(0, 0, 0, "xsltStrxfrm : strxfrm failed\n");
      free(v6);
      return 0;
    }
  }

  else
  {
    xsltTransformError(0, 0, 0, "xsltStrxfrm : out of memory error\n");
  }

  return v6;
}

uint64_t linkedOnOrAfterFall2022OSVersions(uint64_t a1, uint64_t a2)
{
  if (linkedOnOrAfterFall2022OSVersions_once != -1)
  {
    linkedOnOrAfterFall2022OSVersions_cold_1();
  }

  return linkedOnOrAfterFall2022OSVersions_result;
}

uint64_t __linkedOnOrAfterFall2022OSVersions_block_invoke()
{
  result = dyld_program_minos_at_least();
  linkedOnOrAfterFall2022OSVersions_result = result;
  return result;
}

uint64_t linkedOnOrAfterFall2023OSVersions(uint64_t a1, uint64_t a2)
{
  if (linkedOnOrAfterFall2023OSVersions_once != -1)
  {
    linkedOnOrAfterFall2023OSVersions_cold_1();
  }

  return linkedOnOrAfterFall2023OSVersions_result;
}

uint64_t __linkedOnOrAfterFall2023OSVersions_block_invoke()
{
  result = dyld_program_minos_at_least();
  linkedOnOrAfterFall2023OSVersions_result = result;
  return result;
}

const xmlChar *__cdecl xsltGetCNsProp(xsltStylesheetPtr style, xmlNodePtr node, const xmlChar *name, const xmlChar *nameSpace)
{
  if (!style || !node || !style->dict)
  {
    return 0;
  }

  if (!nameSpace)
  {

    return xmlGetProp(node, name);
  }

  type = node->type;
  if (type == XML_NAMESPACE_DECL)
  {
    return 0;
  }

  if (type != XML_ELEMENT_NODE || (properties = node->properties) == 0)
  {
LABEL_20:
    doc = node->doc;
    if (doc)
    {
      intSubset = doc->intSubset;
      if (intSubset)
      {
        DtdAttrDesc = xmlGetDtdAttrDesc(intSubset, node->name, name);
        if (DtdAttrDesc || (extSubset = doc->extSubset) != 0 && (DtdAttrDesc = xmlGetDtdAttrDesc(extSubset, node->name, name)) != 0)
        {
          v16 = DtdAttrDesc;
          prefix = DtdAttrDesc->prefix;
          if (prefix)
          {
            v18 = xmlSearchNs(doc, node, prefix);
            if (v18)
            {
              if (xmlStrEqual(v18->href, nameSpace))
              {
                dict = style->dict;
                defaultValue = v16->defaultValue;
                v21 = -1;
                goto LABEL_33;
              }
            }
          }
        }
      }
    }

    return 0;
  }

  while (1)
  {
    if (!xmlStrEqual(properties->name, name))
    {
      goto LABEL_11;
    }

    ns = properties->ns;
    if (!ns)
    {
      break;
    }

LABEL_10:
    if (xmlStrEqual(ns->href, nameSpace))
    {
      goto LABEL_30;
    }

LABEL_11:
    properties = properties->next;
    if (!properties)
    {
      goto LABEL_20;
    }
  }

  v11 = node->ns;
  if (!v11)
  {
    goto LABEL_11;
  }

  if (!xmlStrEqual(v11->href, nameSpace))
  {
    ns = properties->ns;
    if (!ns)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_30:
  String = xmlNodeListGetString(node->doc, properties->children, 1);
  dict = style->dict;
  if (String)
  {
    v24 = xmlDictLookup(dict, String, -1);
    free(String);
    return v24;
  }

  defaultValue = &unk_2999B6B5E;
  v21 = 0;
LABEL_33:

  return xmlDictLookup(dict, defaultValue, v21);
}

xmlChar *__cdecl xsltGetNsProp(xmlChar *node, const xmlChar *name, const xmlChar *nameSpace)
{
  if (!node)
  {
    return node;
  }

  v5 = node;
  if (!nameSpace)
  {

    return xmlGetProp(node, name);
  }

  v6 = *(node + 2);
  if (v6 == 18)
  {
    return 0;
  }

  if (v6 != 1 || (v7 = *(node + 11)) == 0)
  {
LABEL_18:
    doc = v5->doc;
    if (doc)
    {
      node = doc->intSubset;
      if (!node)
      {
        return node;
      }

      node = xmlGetDtdAttrDesc(node, v5->name, name);
      if (!node)
      {
        node = doc->extSubset;
        if (!node)
        {
          return node;
        }

        node = xmlGetDtdAttrDesc(node, v5->name, name);
        if (!node)
        {
          return node;
        }
      }

      v11 = node;
      v12 = *(node + 13);
      if (v12)
      {
        node = xmlSearchNs(doc, v5, v12);
        if (!node)
        {
          return node;
        }

        if (xmlStrEqual(*(node + 2), nameSpace))
        {
          v13 = *(v11 + 11);
          goto LABEL_32;
        }
      }
    }

    return 0;
  }

  while (1)
  {
    if (!xmlStrEqual(*(v7 + 16), name))
    {
      goto LABEL_9;
    }

    v8 = *(v7 + 72);
    if (!v8)
    {
      break;
    }

LABEL_8:
    if (xmlStrEqual(*(v8 + 16), nameSpace))
    {
      goto LABEL_30;
    }

LABEL_9:
    v7 = *(v7 + 48);
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  ns = v5->ns;
  if (!ns)
  {
    goto LABEL_9;
  }

  if (!xmlStrEqual(ns->href, nameSpace))
  {
    v8 = *(v7 + 72);
    if (!v8)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_30:
  node = xmlNodeListGetString(v5->doc, *(v7 + 24), 1);
  if (!node)
  {
    v13 = &unk_2999B6B5E;
LABEL_32:

    return xmlStrdup(v13);
  }

  return node;
}

int xsltGetUTF8Char(const unsigned __int8 *utf, int *len)
{
  if (!utf || !len)
  {
    if (!len)
    {
      return -1;
    }

LABEL_7:
    *len = 0;
    return -1;
  }

  v2 = *len;
  if (*len < 1)
  {
    goto LABEL_7;
  }

  v3 = *utf;
  if (*utf < 0)
  {
    if (v2 != 1 && (utf[1] & 0xC0) == 0x80)
    {
      if ((~v3 & 0xE0) != 0)
      {
        *len = 2;
        return utf[1] & 0x3F | ((*utf & 0x1F) << 6);
      }

      if (v2 >= 3 && (utf[2] & 0xC0) == 0x80)
      {
        if ((~v3 & 0xF0) != 0)
        {
          *len = 3;
          v5 = ((*utf & 0xF) << 12) | ((utf[1] & 0x3F) << 6);
          v6 = utf[2];
          return v5 & 0xFFFFFFC0 | v6 & 0x3F;
        }

        if (v2 != 3 && (v3 & 0xF8) == 0xF0 && (utf[3] & 0xC0) == 0x80)
        {
          *len = 4;
          v5 = ((*utf & 7) << 18) | ((utf[1] & 0x3F) << 12) | ((utf[2] & 0x3F) << 6);
          v6 = utf[3];
          return v5 & 0xFFFFFFC0 | v6 & 0x3F;
        }
      }
    }

    goto LABEL_7;
  }

  *len = 1;
  return v3;
}

void xsltMessage(xsltTransformContextPtr ctxt, xmlNodePtr node, xmlNodePtr inst)
{
  if (ctxt && inst)
  {
    p_errctx = &ctxt->errctx;
    if (ctxt->error)
    {
      error = ctxt->error;
    }

    else
    {
      p_errctx = &xsltGenericErrorContext;
      error = xsltGenericError;
    }

    v8 = *p_errctx;
    NsProp = xmlGetNsProp(inst, "terminate", 0);
    if (NsProp)
    {
      v10 = NsProp;
      v11 = xmlStrEqual(NsProp, "yes");
      v12 = v11 == 0;
      if (!v11 && !xmlStrEqual(v10, "no"))
      {
        xsltTransformError(ctxt, 0, inst, "xsl:message : terminate expecting 'yes' or 'no'\n");
      }

      free(v10);
    }

    else
    {
      v12 = 1;
    }

    v13 = xsltEvalTemplateString(ctxt, node, inst);
    if (v13)
    {
      v14 = v13;
      v15 = xmlStrlen(v13);
      error(v8, "%s", v14);
      if (v15 >= 1 && v14[v15 - 1] != 10)
      {
        error(v8, "\n");
      }

      free(v14);
    }

    if (!v12)
    {
      ctxt->state = XSLT_STATE_STOPPED;
    }
  }
}

void xsltTransformError(xsltTransformContextPtr ctxt, xsltStylesheetPtr style, xmlNodePtr node, const char *msg, ...)
{
  va_start(va, msg);
  error = xsltGenericError;
  errctx = xsltGenericErrorContext;
  if (ctxt)
  {
    if (ctxt->state == XSLT_STATE_OK)
    {
      ctxt->state = XSLT_STATE_ERROR;
    }

    if (ctxt->error)
    {
      errctx = ctxt->errctx;
      error = ctxt->error;
    }

    if (!node)
    {
      node = ctxt->inst;
    }
  }

  xsltPrintErrorContext(ctxt, style, node);
  v7 = malloc_type_malloc(0x96uLL, 0x100004077774924uLL);
  if (v7)
  {
    LODWORD(v8) = 150;
    while (1)
    {
      v9 = v7;
      if (v8 > 63999)
      {
        break;
      }

      v10 = vsnprintf(v7, v8, msg, va);
      if ((v10 & 0x80000000) == 0 && v10 < v8)
      {
        break;
      }

      if (v10 >= 0)
      {
        v11 = v10 + 1;
      }

      else
      {
        v11 = 100;
      }

      v8 = (v11 + v8);
      v7 = malloc_type_realloc(v9, v8, 0x100004077774924uLL);
      if (!v7)
      {
        goto LABEL_19;
      }
    }

    error(errctx, "%s", v9);
LABEL_19:
    free(v9);
  }
}

uint64_t xsltGenericErrorDefaultFunc(uint64_t a1, const char *a2, ...)
{
  va_start(va, a2);
  if (!xsltGenericErrorContext)
  {
    xsltGenericErrorContext = *MEMORY[0x29EDCA610];
  }

  return vfprintf(xsltGenericErrorContext, a2, va);
}

void xsltSetGenericErrorFunc(void *ctx, xmlGenericErrorFunc handler)
{
  xsltGenericErrorContext = ctx;
  if (handler)
  {
    v2 = handler;
  }

  else
  {
    v2 = xsltGenericErrorDefaultFunc;
  }

  xsltGenericError = v2;
}

uint64_t xsltGenericDebugDefaultFunc(uint64_t a1, const char *a2, ...)
{
  va_start(va, a2);
  if (xsltGenericDebugContext)
  {
    return vfprintf(xsltGenericDebugContext, a2, va);
  }

  return result;
}

void xsltSetGenericDebugFunc(void *ctx, xmlGenericErrorFunc handler)
{
  xsltGenericDebugContext = ctx;
  if (handler)
  {
    v2 = handler;
  }

  else
  {
    v2 = xsltGenericDebugDefaultFunc;
  }

  xsltGenericDebug = v2;
}

void xsltPrintErrorContext(xsltTransformContextPtr ctxt, xsltStylesheetPtr style, xmlNodePtr node)
{
  inst = node;
  error = xsltGenericError;
  errctx = xsltGenericErrorContext;
  if (ctxt)
  {
    if (ctxt->state == XSLT_STATE_OK)
    {
      ctxt->state = XSLT_STATE_ERROR;
    }

    if (ctxt->error)
    {
      errctx = ctxt->errctx;
      error = ctxt->error;
    }

    if (node)
    {
      goto LABEL_9;
    }

    inst = ctxt->inst;
  }

  if (!inst)
  {
    LineNo = 0;
    name = 0;
    v7 = 0;
    goto LABEL_15;
  }

LABEL_9:
  if ((inst->type | 4) == 0xD)
  {
    LineNo = 0;
    v7 = 0;
    name = inst[1].name;
  }

  else
  {
    LineNo = xmlGetLineNo(inst);
    name = &inst->doc->_private;
    if (name)
    {
      name = name[17];
    }

    v7 = inst->name;
  }

LABEL_15:
  if (name)
  {
    v9 = LineNo == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = !v9;
  if (v9 || !v7)
  {
    if (name && v7)
    {
      v11 = "%s: file %s element %s\n";
    }

    else if (v10)
    {
      v11 = "%s: file %s line %ld\n";
    }

    else if (name)
    {
      v11 = "%s: file %s\n";
    }

    else if (v7)
    {
      v11 = "%s: element %s\n";
    }

    else
    {
      v11 = "%s\n";
    }
  }

  else
  {
    v11 = "%s: file %s line %ld element %s\n";
  }

  error(errctx, v11);
}

const xmlChar *__cdecl xsltSplitQName(xmlDictPtr dict, const xmlChar *name, const xmlChar **prefix)
{
  *prefix = 0;
  if (!dict)
  {
    return 0;
  }

  v3 = name;
  if (!name)
  {
    return 0;
  }

  v4 = dict;
  v5 = *name;
  if (v5 != 58)
  {
    v7 = 1;
    if (*name)
    {
      while (v5 != 58)
      {
        v5 = name[v7++];
        if (!v5)
        {
          goto LABEL_11;
        }
      }

      *prefix = xmlDictLookup(dict, name, v7 - 1);
      name = &v3[v7];
      dict = v4;
    }
  }

LABEL_11:

  return xmlDictLookup(dict, name, -1);
}

const xmlChar *__cdecl xsltGetQNameURI(xmlNodePtr node, xmlChar **name)
{
  if (!name)
  {
    return 0;
  }

  v3 = *name;
  if (!*name)
  {
    return 0;
  }

  v4 = *v3;
  if (!*v3)
  {
    return 0;
  }

  if (!node)
  {
    xsltGenericError(xsltGenericErrorContext, "QName: no element for namespace lookup %s\n", *name);
    free(v3);
    result = 0;
    *name = 0;
    return result;
  }

  if (v4 == 58)
  {
    return 0;
  }

  v6 = (v3 + 1);
  v7 = *v3;
  if (!*v3)
  {
    return 0;
  }

  while (v7 != 58)
  {
    v8 = *v6++;
    v7 = v8;
    if (!v8)
    {
      return 0;
    }
  }

  if (v4 == 120 && v3[1] == 109 && v3[2] == 108 && v3[3] == 58)
  {
    if (v3[4])
    {
      *name = xmlStrdup(v3 + 4);
      free(v3);
      return "http://www.w3.org/XML/1998/namespace";
    }

    return 0;
  }

  *(v6 - 1) = 0;
  v9 = xmlSearchNs(node->doc, node, v3);
  if (!v9)
  {
    xsltGenericError(xsltGenericErrorContext, "%s:%s : no namespace bound to prefix %s\n", v3, v6, v3);
    *name = 0;
    free(v3);
    return 0;
  }

  v10 = v9;
  *name = xmlStrdup(v6);
  free(v3);
  return v10->href;
}

const xmlChar *__cdecl xsltGetQNameURI2(xsltStylesheetPtr style, xmlNodePtr node, const xmlChar **name)
{
  if (!name)
  {
    return 0;
  }

  v4 = *name;
  if (*name && *v4)
  {
    if (!node)
    {
      xsltGenericError(xsltGenericErrorContext, "QName: no element for namespace lookup %s\n", *name);
      result = 0;
      *name = 0;
      return result;
    }

    v7 = 1;
    v8 = *v4;
    if (*v4)
    {
      while (v8 != 58)
      {
        v8 = v4[v7++];
        if (!v8)
        {
          return 0;
        }
      }

      if (*v4 == 120 && v4[1] == 109 && v4[2] == 108 && v4[3] == 58)
      {
        v11 = v4[4];
        v10 = v4 + 4;
        if (v11)
        {
          *name = xmlDictLookup(style->dict, v10, -1);
          return "http://www.w3.org/XML/1998/namespace";
        }
      }

      else
      {
        v12 = xmlStrndup(*name, v7 - 1);
        v13 = xmlSearchNs(node->doc, node, v12);
        if (v13)
        {
          v14 = v13;
          *name = xmlDictLookup(style->dict, &(*name)[v7], -1);
          free(v12);
          return v14->href;
        }

        if (style)
        {
          xsltTransformError(0, style, node, "No namespace bound to prefix '%s'.\n", v12);
          ++style->errors;
        }

        else
        {
          xsltGenericError(xsltGenericErrorContext, "%s : no namespace bound to prefix %s\n", *name, v12);
        }

        *name = 0;
        free(v12);
      }
    }
  }

  return 0;
}

void xsltDocumentSortFunction(xmlNodeSetPtr list)
{
  if (list)
  {
    nodeNr = list->nodeNr;
    if (nodeNr >= 2)
    {
      v3 = 0;
      v4 = 1;
      do
      {
        v5 = v3++;
        v6 = v4;
        do
        {
          if (xmlXPathCmpNodes(list->nodeTab[v5], list->nodeTab[v6]) == -1)
          {
            nodeTab = list->nodeTab;
            v8 = nodeTab[v5];
            nodeTab[v5] = nodeTab[v6];
            list->nodeTab[v6] = v8;
          }

          ++v6;
        }

        while (nodeNr != v6);
        ++v4;
      }

      while (v3 != nodeNr - 1);
    }
  }
}

void *xsltComputeSortResultInternal(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 104);
  if (!v3)
  {
    xsltGenericError(xsltGenericErrorContext, "xsl:sort : compilation failed\n", a3);
    return 0;
  }

  if (!*(v3 + 184))
  {
    return 0;
  }

  if (!*(v3 + 304))
  {
    return 0;
  }

  v5 = *(a1 + 136);
  if (!v5)
  {
    return 0;
  }

  v6 = *v5;
  if (v6 < 2)
  {
    return 0;
  }

  v7 = a3;
  v9 = malloc_type_malloc(8 * v6, 0x2004093837F09uLL);
  if (!v9)
  {
    xsltGenericError(xsltGenericErrorContext, "xsltComputeSortResult: memory allocation failure\n");
    return v9;
  }

  v10 = 0;
  v11 = *(a1 + 160);
  v28 = *(v11 + 8);
  v29 = *(a1 + 184);
  v12 = *(v11 + 104);
  v27 = *(v11 + 88);
  v26 = *(v11 + 80);
  v30 = v7;
  do
  {
    *(a1 + 184) = a2;
    v13 = *(a1 + 160);
    v14 = v10 + 1;
    v13->contextSize = v6;
    v13->proximityPosition = v10 + 1;
    v15 = *(*(v5 + 1) + 8 * v10);
    *(a1 + 128) = v15;
    v13->node = v15;
    v16 = *(v3 + 304);
    v13->namespaces = *(v3 + 312);
    v13->nsNr = *(v3 + 320);
    v17 = xmlXPathCompiledEval(v16, v13);
    if (!v17)
    {
      *(a1 + 168) = 2;
      goto LABEL_22;
    }

    v18 = v17;
    if (v17->type != XPATH_STRING)
    {
      v18 = xmlXPathConvertString(v17);
    }

    if (*(v3 + 44))
    {
      v19 = xmlXPathConvertNumber(v18);
      v18 = v19;
      v20 = *(v3 + 44);
      v19->index = v10;
      if (v20)
      {
        if (v19->type == XPATH_NUMBER)
        {
          goto LABEL_21;
        }

        goto LABEL_22;
      }
    }

    else
    {
      v18->index = v10;
    }

    if (v18->type == XPATH_STRING)
    {
      if (v7)
      {
        v21 = *(v3 + 80);
        if (v21)
        {
          stringval = v18->stringval;
          v18->stringval = xsltStrxfrm(v21, stringval);
          v23 = stringval;
          v7 = v30;
          free(v23);
        }
      }

LABEL_21:
      v9[v10] = v18;
      goto LABEL_23;
    }

LABEL_22:
    v9[v10] = 0;
LABEL_23:
    ++v10;
  }

  while (v6 != v14);
  v24 = *(a1 + 160);
  *(a1 + 184) = v29;
  *(v24 + 8) = v28;
  *(v24 + 104) = v12;
  *(v24 + 88) = v27;
  *(v24 + 80) = v26;
  return v9;
}

void xsltDefaultSortFunction(xsltTransformContextPtr ctxt, xmlNodePtr *sorts, int nbsorts)
{
  v82 = *MEMORY[0x29EDCA608];
  memset(v79, 0, 60);
  memset(v78, 0, 60);
  if (!ctxt)
  {
    return;
  }

  if (!sorts)
  {
    return;
  }

  v3 = nbsorts;
  if ((nbsorts - 15) < 0xFFFFFFF2)
  {
    return;
  }

  if (!*sorts)
  {
    return;
  }

  if (!(*sorts)->psvi)
  {
    return;
  }

  nodeList = ctxt->nodeList;
  if (!nodeList || nodeList->nodeNr < 2)
  {
    return;
  }

  v73 = ctxt->nodeList;
  v5 = 0;
  v67 = nbsorts;
  memset(v80, 0, 60);
  do
  {
    v6 = sorts[v5];
    psvi = v6->psvi;
    *(v80 + v5) = 0;
    if (!*(psvi + 4))
    {
      if (*(psvi + 10))
      {
        v8 = xsltEvalAttrValueTemplate(ctxt, v6, "data-type", 0);
        *(psvi + 4) = v8;
        if (v8)
        {
          *(v80 + v5) = 1;
          if (!xmlStrEqual(v8, "text"))
          {
            if (xmlStrEqual(*(psvi + 4), "number"))
            {
              v9 = 1;
              goto LABEL_27;
            }

            xsltTransformError(ctxt, 0, sorts[v5], "xsltDoSortFunction: no support for data-type = %s\n", *(psvi + 4));
          }

          v9 = 0;
LABEL_27:
          *(psvi + 11) = v9;
        }
      }
    }

    *(v79 + v5) = 0;
    if (!*(psvi + 6))
    {
      if (*(psvi + 14))
      {
        v10 = xsltEvalAttrValueTemplate(ctxt, sorts[v5], "order", 0);
        *(psvi + 6) = v10;
        if (v10)
        {
          *(v79 + v5) = 1;
          if (!xmlStrEqual(v10, "ascending"))
          {
            if (xmlStrEqual(*(psvi + 6), "descending"))
            {
              v11 = 1;
              goto LABEL_30;
            }

            xsltTransformError(ctxt, 0, sorts[v5], "xsltDoSortFunction: invalid value %s for order\n", *(psvi + 6));
          }

          v11 = 0;
LABEL_30:
          *(psvi + 15) = v11;
        }
      }
    }

    *(v78 + v5) = 0;
    if (!*(psvi + 8))
    {
      if (*(psvi + 18))
      {
        v12 = xsltEvalAttrValueTemplate(ctxt, sorts[v5], "lang", 0);
        if (v12)
        {
          v13 = v12;
          *(v78 + v5) = 1;
          *(psvi + 10) = xsltNewLocale(v12);
          free(v13);
        }
      }
    }

    ++v5;
  }

  while (v67 != v5);
  memset(v81, 0, sizeof(v81));
  v14 = v73;
  nodeNr = v73->nodeNr;
  v15 = xsltComputeSortResultInternal(ctxt, *sorts, 1);
  *v81 = v15;
  memset(&v81[8], 0, 112);
  if (v15 && nodeNr >= 2)
  {
    v16 = v15;
    v17 = (*sorts)->psvi;
    v74 = (sorts + 1);
    v75 = v17[15];
    v76 = v17[11];
    v18 = nodeNr;
    v71 = v3;
    do
    {
      v66 = v18;
      v19 = v18 >> 1;
      if ((v18 >> 1) < nodeNr)
      {
        v20 = v18 >> 1;
        do
        {
          v72 = v20;
          if (v16[v20])
          {
            v21 = v20 - v19;
            if (((v20 - v19) & 0x80000000) == 0)
            {
              do
              {
                v22 = v16[v21];
                v23 = v21;
                if (v22)
                {
                  if (v76)
                  {
                    IsNaN = xmlXPathIsNaN(*(v22 + 24));
                    v25 = v23 + v19;
                    v26 = xmlXPathIsNaN(*(v16[v25] + 24));
                    if (IsNaN)
                    {
                      if (v26)
                      {
                        v27 = 0;
                      }

                      else
                      {
                        v27 = -1;
                      }
                    }

                    else if (v26)
                    {
                      v27 = 1;
                    }

                    else
                    {
                      v30 = *(v16[v23] + 24);
                      v31 = *(v16[v25] + 24);
                      if (v30 > v31)
                      {
                        v32 = 1;
                      }

                      else
                      {
                        v32 = -1;
                      }

                      if (v30 == v31)
                      {
                        v27 = 0;
                      }

                      else
                      {
                        v27 = v32;
                      }
                    }
                  }

                  else
                  {
                    v28 = *(v17 + 10);
                    v29 = v16[v21 + v19];
                    if (v28)
                    {
                      v27 = xsltLocaleStrcmp(v28, *(v22 + 32), *(v29 + 32));
                    }

                    else
                    {
                      v27 = xmlStrcmp(*(v22 + 32), *(v29 + 32));
                    }
                  }

                  if (v75)
                  {
                    v33 = -v27;
                  }

                  else
                  {
                    v33 = v27;
                  }

                  if (!v33)
                  {
                    v77 = v23 + v19;
                    if (v3 >= 2)
                    {
                      v34 = &v81[8];
                      v35 = *v74;
                      v36 = v67 - 2;
                      v37 = sorts + 2;
                      if (*v74)
                      {
                        while (1)
                        {
                          v17 = *(v35 + 104);
                          if (!v17)
                          {
                            break;
                          }

                          v38 = v17[15];
                          v39 = v17[11];
                          v40 = *v34;
                          if (!*v34)
                          {
                            v40 = xsltComputeSortResultInternal(ctxt, v35, 1);
                            *v34 = v40;
                            if (!v40)
                            {
                              v14 = v73;
                              break;
                            }
                          }

                          v41 = v40[v23];
                          v42 = v40[v77];
                          if (v41)
                          {
                            if (!v42)
                            {
                              v3 = v71;
                              v14 = v73;
                              goto LABEL_105;
                            }

                            if (v39)
                            {
                              v43 = xmlXPathIsNaN(*(v41 + 24));
                              v44 = xmlXPathIsNaN(*(v40[v77] + 24));
                              if (v43)
                              {
                                if (v44)
                                {
                                  v45 = 0;
                                }

                                else
                                {
                                  v45 = -1;
                                }
                              }

                              else if (v44)
                              {
                                v45 = 1;
                              }

                              else
                              {
                                v47 = *(v40[v23] + 24);
                                v48 = *(v40[v77] + 24);
                                if (v47 > v48)
                                {
                                  v49 = 1;
                                }

                                else
                                {
                                  v49 = -1;
                                }

                                if (v47 == v48)
                                {
                                  v45 = 0;
                                }

                                else
                                {
                                  v45 = v49;
                                }
                              }
                            }

                            else
                            {
                              v46 = *(v17 + 10);
                              if (v46)
                              {
                                v45 = xsltLocaleStrcmp(v46, *(v41 + 32), *(v42 + 32));
                              }

                              else
                              {
                                v45 = xmlStrcmp(*(v41 + 32), *(v42 + 32));
                              }
                            }

                            if (v38)
                            {
                              v33 = -v45;
                            }

                            else
                            {
                              v33 = v45;
                            }

                            v14 = v73;
                            if (v33)
                            {
                              goto LABEL_95;
                            }
                          }

                          else
                          {
                            v14 = v73;
                            if (v42)
                            {
                              v3 = v71;
                              goto LABEL_97;
                            }
                          }

                          if (v36)
                          {
                            v50 = *v37++;
                            v35 = v50;
                            --v36;
                            ++v34;
                            if (v50)
                            {
                              continue;
                            }
                          }

                          break;
                        }
                      }
                    }

                    v33 = *(v16[v23] + 48) > *(v16[v77] + 48);
LABEL_95:
                    v3 = v71;
                  }

                  if (v33 < 1)
                  {
                    break;
                  }
                }

LABEL_97:
                v51 = v16[v23];
                v52 = v23 + v19;
                v16[v23] = v16[(v23 + v19)];
                v16[v52] = v51;
                nodeTab = v14->nodeTab;
                v54 = nodeTab[v23];
                nodeTab[v23] = nodeTab[(v23 + v19)];
                v14->nodeTab[v52] = v54;
                if (v3 >= 2)
                {
                  v55 = v67 - 1;
                  v56 = &v81[8];
                  v57 = sorts + 1;
                  do
                  {
                    if (!*v57)
                    {
                      break;
                    }

                    v58 = *v56;
                    if (!*v56)
                    {
                      break;
                    }

                    v59 = *(v58 + 8 * v23);
                    *(v58 + 8 * v23) = *(v58 + 8 * v52);
                    *(v58 + 8 * v52) = v59;
                    ++v56;
                    ++v57;
                    --v55;
                  }

                  while (v55);
                }

                v21 = v23 - v19;
              }

              while ((v23 - v19) >= 0);
            }
          }

LABEL_105:
          v20 = v72 + 1;
        }

        while (nodeNr > v72 + 1);
      }

      v18 = v19;
    }

    while (v66 > 3);
  }

  v60 = 0;
  do
  {
    v61 = sorts[v60]->psvi;
    if (*(v80 + v60) == 1)
    {
      free(v61[4]);
      v61[4] = 0;
    }

    if (*(v79 + v60) == 1)
    {
      free(v61[6]);
      v61[6] = 0;
    }

    if (*(v78 + v60) == 1)
    {
      xsltFreeLocale(v61[10]);
      v61[10] = 0;
    }

    v62 = *&v81[8 * v60];
    if (v62)
    {
      if (nodeNr >= 1)
      {
        v63 = nodeNr;
        v64 = *&v81[8 * v60];
        do
        {
          v65 = *v64++;
          xmlXPathFreeObject(v65);
          --v63;
        }

        while (v63);
      }

      free(v62);
    }

    ++v60;
  }

  while (v60 != v67);
}

void xsltDoSortFunction(xsltTransformContextPtr ctxt, xmlNodePtr *sorts, int nbsorts)
{
  sortfunc = ctxt->sortfunc;
  if (sortfunc || (sortfunc = xsltSortFunction) != 0)
  {
    sortfunc();
  }
}

void xsltSetSortFunc(xsltSortFunc handler)
{
  if (handler)
  {
    v1 = handler;
  }

  else
  {
    v1 = xsltDefaultSortFunction;
  }

  xsltSortFunction = v1;
}

int xsltSetCtxtParseOptions(xsltTransformContextPtr ctxt, int options)
{
  if (!ctxt)
  {
    return -1;
  }

  if (ctxt->xinclude)
  {
    result = ctxt->parserOptions | 0x400;
  }

  else
  {
    result = ctxt->parserOptions;
  }

  ctxt->parserOptions = options;
  ctxt->xinclude = (options >> 10) & 1;
  return result;
}

int xsltSaveResultTo(xmlOutputBufferPtr buf, xmlDocPtr result, xsltStylesheetPtr style)
{
  v4 = -1;
  if (buf)
  {
    if (result)
    {
      v6 = style;
      if (style)
      {
        children = result->children;
        if (!children || children->type == XML_DTD_NODE && !children->next)
        {
          return 0;
        }

        if (style->methodURI)
        {
          method = style->method;
          if (!method || !xmlStrEqual(method, "xhtml"))
          {
            xsltGenericError(xsltGenericErrorContext, "xsltSaveResultTo : unknown output method\n");
            return -1;
          }
        }

        written = buf->written;
        Import = v6;
        do
        {
          v11 = Import->method;
          if (v11)
          {
            break;
          }

          Import = xsltNextImport(Import);
        }

        while (Import);
        v12 = v6;
        do
        {
          encoding = v12->encoding;
          if (encoding)
          {
            break;
          }

          v12 = xsltNextImport(v12);
        }

        while (v12);
        v14 = v6;
        do
        {
          indent = v14->indent;
          if (indent != -1)
          {
            break;
          }

          v14 = xsltNextImport(v14);
        }

        while (v14);
        if (!v11)
        {
          v16 = v6;
          if (result->type != XML_HTML_DOCUMENT_NODE)
          {
            goto LABEL_50;
          }

          v11 = "html";
        }

        if (xmlStrEqual(v11, "html"))
        {
          if (encoding)
          {
            v17 = encoding;
          }

          else
          {
            v17 = "UTF-8";
          }

          htmlSetMetaEncoding(result, v17);
          if (indent == -1)
          {
            v18 = 1;
          }

          else
          {
            v18 = indent;
          }

          htmlDocContentDumpFormatOutput(buf, result, encoding, v18);
LABEL_80:
          xmlOutputBufferFlush(buf);
          return buf->written - written;
        }

        if (xmlStrEqual(v11, "xhtml"))
        {
          if (encoding)
          {
            v19 = encoding;
          }

          else
          {
            v19 = "UTF-8";
          }

          htmlSetMetaEncoding(result, v19);
          htmlDocContentDumpOutput(buf, result, encoding);
          goto LABEL_80;
        }

        v20 = xmlStrEqual(v11, "text");
        v16 = v6;
        if (v20)
        {
          next = result->children;
          if (next)
          {
            while (1)
            {
              do
              {
                v22 = next;
                if (next->type == XML_TEXT_NODE)
                {
                  xmlOutputBufferWriteString(buf, next->content);
                }

                next = v22->children;
                if (!next)
                {
                  break;
                }

                type = next->type;
                v24 = type > 0x11;
                v25 = (1 << type) & 0x20060;
              }

              while (v24 || v25 == 0);
              while (1)
              {
                next = v22->next;
                if (next)
                {
                  break;
                }

                v22 = v22->parent;
                if (!v22 || v22 == v6->doc)
                {
                  goto LABEL_80;
                }
              }
            }
          }

          goto LABEL_80;
        }

LABEL_50:
        while (1)
        {
          omitXmlDeclaration = v16->omitXmlDeclaration;
          if (omitXmlDeclaration != -1)
          {
            break;
          }

          v16 = xsltNextImport(v16);
          if (!v16)
          {
            v28 = 0;
            goto LABEL_54;
          }
        }

        v28 = omitXmlDeclaration == 1;
        do
        {
LABEL_54:
          standalone = v6->standalone;
          if (standalone != -1)
          {
            break;
          }

          v6 = xsltNextImport(v6);
        }

        while (v6);
        if (v28)
        {
LABEL_69:
          v32 = result->children;
          if (v32)
          {
            result->children = 0;
            v33 = v32;
            do
            {
              while (1)
              {
                xmlNodeDumpOutput(buf, result, v33, 0, indent == 1, encoding);
                if (indent)
                {
                  break;
                }

                v33 = v33->next;
                if (!v33)
                {
                  goto LABEL_79;
                }
              }

              v34 = v33->type;
              if (v34 == XML_DTD_NODE || v34 == XML_COMMENT_NODE && v33->next)
              {
                xmlOutputBufferWriteString(buf, "\n");
              }

              v33 = v33->next;
            }

            while (v33);
            xmlOutputBufferWriteString(buf, "\n");
LABEL_79:
            result->children = v32;
          }

          goto LABEL_80;
        }

        xmlOutputBufferWriteString(buf, "<?xml version=");
        if (result->version)
        {
          v30 = "";
          xmlOutputBufferWriteString(buf, "");
          xmlOutputBufferWriteString(buf, result->version);
        }

        else
        {
          v30 = "1.0";
        }

        xmlOutputBufferWriteString(buf, v30);
        if (encoding)
        {
          goto LABEL_62;
        }

        encoding = result->encoding;
        if (encoding)
        {
          goto LABEL_62;
        }

        charset = result->charset;
        if (charset == XML_CHAR_ENCODING_UTF8)
        {
          encoding = 0;
        }

        else
        {
          encoding = xmlGetCharEncodingName(charset);
          if (encoding)
          {
LABEL_62:
            xmlOutputBufferWriteString(buf, " encoding=");
            xmlOutputBufferWriteString(buf, "");
            xmlOutputBufferWriteString(buf, encoding);
            xmlOutputBufferWriteString(buf, "");
          }
        }

        if (standalone)
        {
          if (standalone != 1)
          {
LABEL_68:
            xmlOutputBufferWriteString(buf, "?>\n");
            goto LABEL_69;
          }

          v31 = " standalone=yes";
        }

        else
        {
          v31 = " standalone=no";
        }

        xmlOutputBufferWriteString(buf, v31);
        goto LABEL_68;
      }
    }
  }

  return v4;
}

int xsltSaveResultToFilename(const char *URI, xmlDocPtr result, xsltStylesheetPtr style, int compression)
{
  v5 = -1;
  if (URI && result && style)
  {
    if (result->children)
    {
      Import = style;
      while (!Import->encoding)
      {
        Import = xsltNextImport(Import);
        if (!Import)
        {
          goto LABEL_14;
        }
      }

      CharEncodingHandler = xmlFindCharEncodingHandler(Import->encoding);
      if (!CharEncodingHandler)
      {
LABEL_14:
        v12 = 0;
        goto LABEL_15;
      }

      v11 = CharEncodingHandler;
      if (xmlStrEqual(CharEncodingHandler->name, "UTF-8"))
      {
        v12 = 0;
      }

      else
      {
        v12 = v11;
      }

LABEL_15:
      Filename = xmlOutputBufferCreateFilename(URI, v12, compression);
      if (Filename)
      {
        v14 = Filename;
        xsltSaveResultTo(Filename, result, style);

        return xmlOutputBufferClose(v14);
      }

      else
      {
        return -1;
      }
    }

    else
    {
      return 0;
    }
  }

  return v5;
}

int xsltSaveResultToFile(FILE *file, xmlDocPtr result, xsltStylesheetPtr style)
{
  v4 = -1;
  if (file && result && style)
  {
    if (result->children)
    {
      Import = style;
      while (!Import->encoding)
      {
        Import = xsltNextImport(Import);
        if (!Import)
        {
          goto LABEL_14;
        }
      }

      CharEncodingHandler = xmlFindCharEncodingHandler(Import->encoding);
      if (!CharEncodingHandler)
      {
LABEL_14:
        v10 = 0;
        goto LABEL_15;
      }

      v9 = CharEncodingHandler;
      if (xmlStrEqual(CharEncodingHandler->name, "UTF-8"))
      {
        v10 = 0;
      }

      else
      {
        v10 = v9;
      }

LABEL_15:
      v11 = xmlOutputBufferCreateFile(file, v10);
      if (v11)
      {
        v12 = v11;
        xsltSaveResultTo(v11, result, style);

        return xmlOutputBufferClose(v12);
      }

      else
      {
        return -1;
      }
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

int xsltSaveResultToFd(int fd, xmlDocPtr result, xsltStylesheetPtr style)
{
  v4 = -1;
  if ((fd & 0x80000000) == 0 && result && style)
  {
    if (result->children)
    {
      Import = style;
      while (!Import->encoding)
      {
        Import = xsltNextImport(Import);
        if (!Import)
        {
          goto LABEL_14;
        }
      }

      CharEncodingHandler = xmlFindCharEncodingHandler(Import->encoding);
      if (!CharEncodingHandler)
      {
LABEL_14:
        v10 = 0;
        goto LABEL_15;
      }

      v9 = CharEncodingHandler;
      if (xmlStrEqual(CharEncodingHandler->name, "UTF-8"))
      {
        v10 = 0;
      }

      else
      {
        v10 = v9;
      }

LABEL_15:
      v11 = xmlOutputBufferCreateFd(fd, v10);
      if (v11)
      {
        v12 = v11;
        xsltSaveResultTo(v11, result, style);

        return xmlOutputBufferClose(v12);
      }

      else
      {
        return -1;
      }
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

int xsltSaveResultToString(xmlChar **doc_txt_ptr, int *doc_txt_len, xmlDocPtr result, xsltStylesheetPtr style)
{
  *doc_txt_ptr = 0;
  *doc_txt_len = 0;
  if (!result->children)
  {
    return 0;
  }

  if (style)
  {
    Import = style;
    while (!Import->encoding)
    {
      Import = xsltNextImport(Import);
      if (!Import)
      {
        goto LABEL_13;
      }
    }

    Import = xmlFindCharEncodingHandler(Import->encoding);
    if (Import)
    {
      v10 = Import;
      if (xmlStrEqual(Import->parent, "UTF-8"))
      {
        Import = 0;
      }

      else
      {
        Import = v10;
      }
    }
  }

  else
  {
    Import = 0;
  }

LABEL_13:
  v11 = xmlAllocOutputBuffer(Import);
  if (!v11)
  {
    return -1;
  }

  v12 = v11;
  xsltSaveResultTo(v11, result, style);
  p_conv = &v12->conv;
  conv = v12->conv;
  if (!conv)
  {
    p_conv = &v12->buffer;
    conv = v12->buffer;
  }

  v15 = xmlBufUse(conv);
  v16 = 0x7FFFFFFF;
  if (v15 < 0x7FFFFFFF)
  {
    v16 = v15;
  }

  *doc_txt_len = v16;
  v17 = xmlBufContent(*p_conv);
  *doc_txt_ptr = xmlStrndup(v17, *doc_txt_len);
  xmlOutputBufferClose(v12);
  return 0;
}

uint64_t xsltGetSourceNodeFlags(uint64_t a1)
{
  result = 0;
  v3 = *(a1 + 8);
  if (v3 <= 0xD)
  {
    if (((1 << v3) & 0x19A) != 0)
    {
      return *(a1 + 114) >> 12;
    }

    else if (((1 << v3) & 0x2200) != 0)
    {
      return (*(a1 + 172) >> 27);
    }

    else if (v3 == 2)
    {
      return *(a1 + 80) >> 27;
    }
  }

  return result;
}

uint64_t xsltSetSourceNodeFlags(uint64_t a1, uint64_t a2, int a3)
{
  if (*(a2 + 64) == *(a1 + 416))
  {
    *(a1 + 488) = 1;
  }

  v3 = *(a2 + 8);
  result = 0xFFFFFFFFLL;
  if (v3 <= 0xD)
  {
    if (((1 << v3) & 0x19A) != 0)
    {
      result = 0;
      *(a2 + 114) |= a3 << 12;
    }

    else if (((1 << v3) & 0x2200) != 0)
    {
      result = 0;
      *(a2 + 172) |= a3 << 27;
    }

    else if (v3 == 2)
    {
      result = 0;
      *(a2 + 80) |= a3 << 27;
    }
  }

  return result;
}

uint64_t xsltClearSourceNodeFlags(uint64_t a1, int a2)
{
  v3 = *(a1 + 8);
  result = 0xFFFFFFFFLL;
  if (v3 <= 0xD)
  {
    if (((1 << v3) & 0x19A) != 0)
    {
      result = 0;
      *(a1 + 114) &= ~(a2 << 12);
    }

    else if (((1 << v3) & 0x2200) != 0)
    {
      result = 0;
      *(a1 + 172) &= ~(a2 << 27);
    }

    else if (v3 == 2)
    {
      result = 0;
      *(a1 + 80) &= ~(a2 << 27);
    }
  }

  return result;
}

uint64_t xsltGetPSVIPtr(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 > 0xD)
  {
    return 0;
  }

  v2 = 1 << v1;
  v3 = v1 == 2;
  v4 = a1 + 88;
  if (!v3)
  {
    v4 = 0;
  }

  if ((v2 & 0x2200) != 0)
  {
    v4 = a1 + 160;
  }

  if ((v2 & 0x19A) != 0)
  {
    return a1 + 104;
  }

  else
  {
    return v4;
  }
}

uint64_t xsltTimestamp(void)
{
  if (calibration < 0)
  {
    clock_gettime(_CLOCK_MONOTONIC, &xsltTimestamp_startup);
    calibration = 0;
    v1 = 999;
    do
    {
      xsltTimestamp();
      --v1;
    }

    while (v1);
    calibration = xsltTimestamp() / 1000;
    clock_gettime(_CLOCK_MONOTONIC, &xsltTimestamp_startup);
    return 0;
  }

  else
  {
    v2.tv_sec = 0;
    v2.tv_nsec = 0;
    clock_gettime(_CLOCK_MONOTONIC, &v2);
    return 100000 * (v2.tv_sec - xsltTimestamp_startup) - calibration + (v2.tv_nsec - unk_2A14C2890) / 10000;
  }
}

void xsltSaveProfiling(xsltTransformContextPtr ctxt, FILE *output)
{
  v81 = *MEMORY[0x29EDCA608];
  if (ctxt)
  {
    v2 = output;
    if (output)
    {
      if (ctxt->profile)
      {
        v4 = malloc_type_malloc(0x13880uLL, 0x2004093837F09uLL);
        if (v4)
        {
          v5 = v4;
          style = ctxt->style;
          __stream = v2;
          if (ctxt->style)
          {
            v7 = 0;
            do
            {
              templates = style->templates;
              if (templates)
              {
                v9 = v7 <= 9999;
              }

              else
              {
                v9 = 0;
              }

              if (v9)
              {
                do
                {
                  if (templates->nbCalls >= 1)
                  {
                    *&v5[8 * v7++] = templates;
                  }

                  templates = templates->next;
                  if (templates)
                  {
                    v10 = v7 < 10000;
                  }

                  else
                  {
                    v10 = 0;
                  }
                }

                while (v10);
              }

              style = xsltNextImport(style);
            }

            while (style);
            v11 = v7;
            if (v7 > 1)
            {
              v12 = 0;
              v13 = v5 + 8;
              v14 = v7 - 1;
              do
              {
                v15 = v12++;
                v16 = *&v5[8 * v15];
                v17 = v14;
                v18 = v13;
                do
                {
                  v19 = *v18;
                  if (*(v16 + 104) <= *(*v18 + 104))
                  {
                    *v18 = v16;
                    *&v5[8 * v15] = v19;
                    v16 = v19;
                  }

                  v18 += 8;
                  --v17;
                }

                while (v17);
                v13 += 8;
                --v14;
              }

              while (v12 != v7 - 1);
            }

            fprintf(v2, "%6s%20s%20s%10s  Calls Tot 100us Avg\n\n", "number", "match", "name", "mode");
            if (v7 >= 1)
            {
              v20 = 0;
              v21 = 0;
              v22 = 0;
              while (1)
              {
                v23 = *&v5[8 * v20];
                fprintf(v2, "%5d ", v20);
                v24 = *(v23 + 16);
                if (v24)
                {
                  if (xmlStrlen(v24) >= 21)
                  {
                    fprintf(__stream, "%s\n%26s");
                    goto LABEL_34;
                  }

                  v25 = __stream;
                }

                else
                {
                  v25 = v2;
                }

                fprintf(v25, "%20s");
LABEL_34:
                v26 = *(v23 + 32);
                if (v26 && xmlStrlen(v26) >= 21)
                {
                  fprintf(__stream, "%s\n%46s");
                }

                else
                {
                  fprintf(__stream, "%20s");
                }

                v27 = *(v23 + 48);
                if (v27 && xmlStrlen(v27) >= 11)
                {
                  v2 = __stream;
                  fprintf(__stream, "%s\n%56s");
                }

                else
                {
                  v2 = __stream;
                  fprintf(__stream, "%10s");
                }

                fprintf(v2, " %6d", *(v23 + 96));
                fprintf(v2, " %6ld %6ld\n", *(v23 + 104), *(v23 + 104) / *(v23 + 96));
                v22 += *(v23 + 96);
                v21 += *(v23 + 104);
                if (v11 == ++v20)
                {
                  v28 = 1;
                  goto LABEL_46;
                }
              }
            }

            v28 = 0;
            v22 = 0;
            v21 = 0;
          }

          else
          {
            fprintf(v2, "%6s%20s%20s%10s  Calls Tot 100us Avg\n\n", "number", "match", "name", "mode");
            v28 = 0;
            LODWORD(v11) = 0;
            v22 = 0;
            v21 = 0;
          }

LABEL_46:
          v63 = v21;
          fprintf(v2, "\n%30s%26s %6d %6ld\n", "Total", &unk_2999B6B5E, v22, v21);
          v29 = malloc_type_malloc(4 * v11 + 4, 0x100004052888210uLL);
          if (v29)
          {
            v30 = v29;
            if (v28)
            {
              v31 = 0;
              v32 = v11;
              v33 = v63;
              do
              {
                v34 = 0;
                v35 = 0;
                v36 = *&v5[8 * v31];
                v29[v31] = 0;
                do
                {
                  v37 = *&v5[8 * v35];
                  v38 = *(v37 + 120);
                  if (v38 >= 1)
                  {
                    v39 = 0;
                    v40 = *(v37 + 128);
                    do
                    {
                      if (*(v40 + 8 * v39) == v36)
                      {
                        v34 += *(v37 + 104);
                        v29[v31] = v34;
                        v38 = *(v37 + 120);
                      }

                      ++v39;
                    }

                    while (v39 < v38);
                  }

                  ++v35;
                }

                while (v35 != v32);
                ++v31;
              }

              while (v31 != v32);
              v29[v32] = 0;
              fprintf(v2, "\nindex %% time    self  children    called     name\n");
              if (v28)
              {
                v41 = 0;
                do
                {
                  *v78 = 0;
                  v79 = 0;
                  v80 = 0;
                  *v75 = 0;
                  v76 = 0;
                  v77 = 0;
                  *__str = 0;
                  v73 = 0;
                  v74 = 0;
                  *v69 = 0;
                  v70 = 0;
                  v71 = 0;
                  *v66 = 0;
                  v67 = 0;
                  v68 = 0;
                  v64 = v41;
                  v42 = *&v5[8 * v41];
                  if (*(v42 + 120) >= 1)
                  {
                    v43 = 0;
                    do
                    {
                      v44 = 0;
                      v45 = *(*(v42 + 128) + 8 * v43);
                      while (*&v5[8 * v44] != v45)
                      {
                        if (v32 == ++v44)
                        {
                          LODWORD(v44) = v32;
                          break;
                        }
                      }

                      v46 = v33;
                      if (v45)
                      {
                        v46 = *(v45 + 104);
                      }

                      snprintf(__str, 0x14uLL, "%8.3f", (v46 / 100000.0));
                      snprintf(v69, 0x14uLL, "%8.3f", (v30[v44] / 100000.0));
                      snprintf(v66, 0x14uLL, "%6d/%d", *(*(v42 + 136) + 4 * v43), *(v42 + 96));
                      if (v45)
                      {
                        v47 = *(v45 + 32);
                        if (!v47)
                        {
                          pretty_templ_match(v45);
                          v47 = pretty_templ_match_dst;
                        }
                      }

                      else
                      {
                        v47 = "-";
                      }

                      fprintf(v2, "             %-8s %-8s %-12s     %s [%d]\n", __str, v69, v66, v47, v44);
                      ++v43;
                    }

                    while (v43 < *(v42 + 120));
                  }

                  snprintf(v78, 0x14uLL, "[%d]", v64);
                  snprintf(v75, 0x14uLL, "%6.2f", *(v42 + 104) * 100.0 / v63);
                  snprintf(__str, 0x14uLL, "%8.3f", (*(v42 + 104) / 100000.0));
                  snprintf(v69, 0x14uLL, "%8.3f", (v30[v64] / 100000.0));
                  v48 = *(v42 + 96);
                  v49 = *(v42 + 32);
                  if (!v49)
                  {
                    pretty_templ_match(v42);
                    v49 = pretty_templ_match_dst;
                  }

                  fprintf(v2, "%-5s %-6s %-8s %-8s %6d     %s [%d]\n", v78, v75, __str, v69, v48, v49, v64);
                  v50 = 0;
                  v51 = 0;
                  do
                  {
                    v52 = *&v5[8 * v50];
                    v53 = *(v52 + 120);
                    if (v53 >= 1)
                    {
                      for (i = 0; i != v53; ++i)
                      {
                        if (*(*(v52 + 128) + 8 * i) == v42)
                        {
                          v51 += *(*(v52 + 136) + 4 * i);
                        }
                      }
                    }

                    ++v50;
                  }

                  while (v50 != v32);
                  v55 = 0;
                  do
                  {
                    v56 = *&v5[8 * v55];
                    v57 = *(v56 + 120);
                    if (v57 >= 1)
                    {
                      for (j = 0; j < v57; ++j)
                      {
                        if (*(*(v56 + 128) + 8 * j) == v42)
                        {
                          snprintf(__str, 0x14uLL, "%8.3f", (*(v56 + 104) / 100000.0));
                          snprintf(v69, 0x14uLL, "%8.3f", (v30[v55] / 100000.0));
                          snprintf(v66, 0x14uLL, "%6d/%d", *(*(v56 + 136) + 4 * j), v51);
                          v59 = *(v56 + 32);
                          if (!v59)
                          {
                            pretty_templ_match(v56);
                            v59 = pretty_templ_match_dst;
                          }

                          fprintf(__stream, "             %-8s %-8s %-12s     %s [%d]\n", __str, v69, v66, v59, v55);
                          v57 = *(v56 + 120);
                        }
                      }
                    }

                    ++v55;
                  }

                  while (v55 != v32);
                  v2 = __stream;
                  fwrite("-----------------------------------------------\n", 0x30uLL, 1uLL, __stream);
                  v33 = v63;
                  v41 = v64 + 1;
                }

                while (v64 + 1 != v32);
                fwrite("\f\nIndex by function name\n", 0x19uLL, 1uLL, __stream);
                v60 = 0;
                do
                {
                  v61 = *&v5[8 * v60];
                  v62 = v61[4];
                  if (!v62)
                  {
                    pretty_templ_match(*&v5[8 * v60]);
                    v62 = pretty_templ_match_dst;
                  }

                  fprintf(__stream, "[%d] %s (%s:%d)\n", v60++, v62, *(*(v61[1] + 32) + 136), *(v61[9] + 112));
                }

                while (v32 != v60);
                goto LABEL_98;
              }
            }

            else
            {
              *v29 = 0;
              fprintf(v2, "\nindex %% time    self  children    called     name\n");
            }

            fwrite("\f\nIndex by function name\n", 0x19uLL, 1uLL, v2);
LABEL_98:
            fwrite("\f\n", 2uLL, 1uLL, __stream);
            free(v30);
            free(v5);
          }
        }
      }
    }
  }
}

uint64_t pretty_templ_match(uint64_t result)
{
  v1 = 0;
  LODWORD(v2) = 0;
  v3 = *(result + 16);
  v4 = 998;
  v5 = 1u;
  while (*(v3 + v2))
  {
    v2 = v2;
    do
    {
      v6 = *(v3 + v2++);
    }

    while (v6 == 32);
    pretty_templ_match_dst[v1++] = v6;
    ++v5;
    --v4;
    if (v1 == 1000)
    {
      goto LABEL_16;
    }
  }

  if (v1 <= 0x3E5 && *(result + 48))
  {
    pretty_templ_match_dst[v1] = 91;
    v7 = *(result + 48);
    v8 = *v7;
    if (*v7)
    {
      v9 = v7 + 1;
      v10 = v4 - 1;
      LODWORD(v1) = 998;
      while (1)
      {
        pretty_templ_match_dst[v5] = v8;
        if (!v10)
        {
          break;
        }

        ++v5;
        v11 = *v9++;
        v8 = v11;
        --v10;
        if (!v11)
        {
          LODWORD(v1) = v5 - 1;
          goto LABEL_15;
        }
      }

      LODWORD(v5) = 0x3E7u;
    }

LABEL_15:
    LODWORD(v1) = v1 + 2;
    pretty_templ_match_dst[v5] = 93;
  }

LABEL_16:
  pretty_templ_match_dst[v1] = 0;
  return result;
}

xmlDocPtr xsltGetProfileInformation(xmlDocPtr ctxt)
{
  v31 = *MEMORY[0x29EDCA608];
  if (ctxt)
  {
    v1 = ctxt;
    if (LODWORD(ctxt[1].last))
    {
      ctxt = malloc_type_malloc(0x13880uLL, 0x2004093837F09uLL);
      if (ctxt)
      {
        v2 = ctxt;
        v30 = 0;
        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        *__str = 0u;
        v25 = 0u;
        Import = v1->_private;
        if (v1->_private)
        {
          v4 = 0;
          do
          {
            templates = Import->templates;
            if (templates)
            {
              v6 = v4 <= 9999;
            }

            else
            {
              v6 = 0;
            }

            if (v6)
            {
              do
              {
                if (templates->nbCalls >= 1)
                {
                  *(&v2->_private + v4++) = templates;
                }

                templates = templates->next;
                if (templates)
                {
                  v7 = v4 < 10000;
                }

                else
                {
                  v7 = 0;
                }
              }

              while (v7);
            }

            Import = xsltNextImport(Import);
          }

          while (Import);
          if (v4 > 1)
          {
            v8 = 0;
            p_type = &v2->type;
            v10 = v4 - 1;
            do
            {
              v11 = v8++;
              v12 = *(&v2->_private + v11);
              v13 = v10;
              v14 = p_type;
              do
              {
                v15 = *v14;
                if (*(v12 + 104) <= *(*v14 + 104))
                {
                  *v14 = v12;
                  *(&v2->_private + v11) = v15;
                  v12 = v15;
                }

                v14 += 2;
                --v13;
              }

              while (v13);
              p_type += 2;
              --v10;
            }

            while (v8 != v4 - 1);
          }
        }

        else
        {
          v4 = 0;
        }

        v16 = xmlNewDoc("1.0");
        v17 = xmlNewDocNode(v16, 0, "profile", 0);
        v23 = v16;
        xmlDocSetRootElement(v16, v17);
        if (v4 >= 1)
        {
          v18 = v4;
          v19 = 1;
          v20 = v2;
          do
          {
            v21 = xmlNewChild(v17, 0, "template", 0);
            snprintf(__str, 0x64uLL, "%d", v19);
            xmlSetProp(v21, "rank", __str);
            xmlSetProp(v21, "match", *(v20->_private + 2));
            xmlSetProp(v21, "name", *(v20->_private + 4));
            xmlSetProp(v21, "mode", *(v20->_private + 6));
            snprintf(__str, 0x64uLL, "%d", *(v20->_private + 24));
            xmlSetProp(v21, "calls", __str);
            snprintf(__str, 0x64uLL, "%ld", *(v20->_private + 13));
            xmlSetProp(v21, "time", __str);
            v22 = v20->_private;
            v20 = (v20 + 8);
            snprintf(__str, 0x64uLL, "%ld", *(v22 + 13) / v22[24]);
            xmlSetProp(v21, "average", __str);
            ++v19;
            --v18;
          }

          while (v18);
        }

        free(v2);
        return v23;
      }
    }

    else
    {
      return 0;
    }
  }

  return ctxt;
}

xmlXPathCompExprPtr xsltXPathCompileFlags(xsltStylesheetPtr style, const xmlChar *str, int flags)
{
  if (!style)
  {
    v8 = xmlXPathNewContext(0);
    if (v8)
    {
      xpathCtxt = v8;
      v8->flags = flags;
      v9 = xmlXPathCtxtCompile(v8, str);
LABEL_11:
      xmlXPathFreeContext(xpathCtxt);
      return v9;
    }

    return 0;
  }

  if (linkedOnOrAfterFall2022OSVersions_once != -1)
  {
    linkedOnOrAfterFall2022OSVersions_cold_1();
  }

  v6 = linkedOnOrAfterFall2022OSVersions_result;
  if (linkedOnOrAfterFall2022OSVersions_result != 1)
  {
    xpathCtxt = xmlXPathNewContext(style->doc);
    if (xpathCtxt)
    {
      goto LABEL_10;
    }

    return 0;
  }

  xpathCtxt = style->principal->xpathCtxt;
  if (!xpathCtxt)
  {
    return 0;
  }

LABEL_10:
  xpathCtxt->dict = style->dict;
  xpathCtxt->flags = flags;
  v9 = xmlXPathCtxtCompile(xpathCtxt, str);
  if ((v6 & 1) == 0)
  {
    goto LABEL_11;
  }

  return v9;
}

int xsltSetDebuggerCallbacks(int no, void *block)
{
  result = -1;
  if (no == 3)
  {
    if (block)
    {
      result = 0;
      v4 = *(block + 1);
      xsltDebuggerCurrentCallbacks_0 = *block;
      xsltDebuggerCurrentCallbacks_1 = v4;
      xsltDebuggerCurrentCallbacks_2 = *(block + 2);
    }
  }

  return result;
}

void xslHandleDebugger(xmlNodePtr cur, xmlNodePtr node, xsltTemplatePtr templ, xsltTransformContextPtr ctxt)
{
  if (xsltDebuggerCurrentCallbacks_0)
  {
    xsltDebuggerCurrentCallbacks_0(cur, node, templ, ctxt);
  }
}

int xslAddCall(xsltTemplatePtr templ, xmlNodePtr source)
{
  if (xsltDebuggerCurrentCallbacks_1)
  {
    return xsltDebuggerCurrentCallbacks_1(templ, source);
  }

  else
  {
    return 0;
  }
}

void xslDropCall(void)
{
  if (xsltDebuggerCurrentCallbacks_2)
  {
    xsltDebuggerCurrentCallbacks_2();
  }
}