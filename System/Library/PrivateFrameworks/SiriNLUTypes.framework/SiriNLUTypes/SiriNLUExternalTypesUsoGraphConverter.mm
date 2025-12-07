@interface SiriNLUExternalTypesUsoGraphConverter
+ (id)convertFromGraphEdge:(id)edge;
+ (id)convertFromGraphEdges:(id)edges;
+ (id)convertFromUsoEntityIdentifier:(id)identifier;
+ (id)convertFromUsoEntityIdentifiers:(id)identifiers;
+ (id)convertFromUsoGraph:(id)graph;
+ (id)convertFromUsoGraphs:(id)graphs;
+ (id)convertFromUsoNode:(id)node;
+ (id)convertFromUsoNodes:(id)nodes;
+ (id)convertFromUtteranceAlignment:(id)alignment;
+ (id)convertFromUtteranceAlignments:(id)alignments;
+ (id)convertFromUtteranceSpan:(id)span;
+ (id)convertFromUtteranceSpans:(id)spans;
@end

@implementation SiriNLUExternalTypesUsoGraphConverter

+ (id)convertFromUsoNode:(id)node
{
  v25 = *MEMORY[0x1E69E9840];
  nodeCopy = node;
  if (nodeCopy)
  {
    v4 = objc_alloc_init(SIRINLUEXTERNALUsoNode);
    entityLabel = [nodeCopy entityLabel];
    [(SIRINLUEXTERNALUsoNode *)v4 setEntityLabel:entityLabel];

    integerPayload = [nodeCopy integerPayload];
    v7 = [SiriNLUExternalTypesConverter convertFromNumber:integerPayload];
    [(SIRINLUEXTERNALUsoNode *)v4 setIntegerPayload:v7];

    stringPayload = [nodeCopy stringPayload];
    v9 = [SiriNLUExternalTypesConverter convertFromString:stringPayload];
    [(SIRINLUEXTERNALUsoNode *)v4 setStringPayload:v9];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    normalizedStringPayloads = [nodeCopy normalizedStringPayloads];
    v11 = [normalizedStringPayloads countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v21;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v21 != v13)
          {
            objc_enumerationMutation(normalizedStringPayloads);
          }

          [(SIRINLUEXTERNALUsoNode *)v4 addNormalizedStringPayloads:*(*(&v20 + 1) + 8 * i)];
        }

        v12 = [normalizedStringPayloads countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v12);
    }

    verbLabel = [nodeCopy verbLabel];
    [(SIRINLUEXTERNALUsoNode *)v4 setVerbLabel:verbLabel];

    -[SIRINLUEXTERNALUsoNode setUsoElementId:](v4, "setUsoElementId:", [nodeCopy usoElementId]);
    usoVerbId = [nodeCopy usoVerbId];

    if (usoVerbId)
    {
      v17 = objc_alloc_init(SIRICOMMONUInt32Value);
      usoVerbId2 = [nodeCopy usoVerbId];
      -[SIRICOMMONUInt32Value setValue:](v17, "setValue:", [usoVerbId2 intValue]);

      [(SIRINLUEXTERNALUsoNode *)v4 setUsoVerbElementId:v17];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)convertFromUsoNodes:(id)nodes
{
  v18 = *MEMORY[0x1E69E9840];
  nodesCopy = nodes;
  if (nodesCopy)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = nodesCopy;
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [self convertFromUsoNode:{*(*(&v13 + 1) + 8 * i), v13}];
          [v5 addObject:v11];
        }

        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)convertFromGraphEdges:(id)edges
{
  v18 = *MEMORY[0x1E69E9840];
  edgesCopy = edges;
  if (edgesCopy)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = edgesCopy;
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [self convertFromGraphEdge:{*(*(&v13 + 1) + 8 * i), v13}];
          [v5 addObject:v11];
        }

        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)convertFromGraphEdge:(id)edge
{
  if (edge)
  {
    edgeCopy = edge;
    v4 = objc_alloc_init(SIRINLUEXTERNALUsoEdge);
    -[SIRINLUEXTERNALUsoEdge setFromIndex:](v4, "setFromIndex:", [edgeCopy fromVertex]);
    -[SIRINLUEXTERNALUsoEdge setToIndex:](v4, "setToIndex:", [edgeCopy toVertex]);
    v5 = objc_alloc_init(SIRINLUEXTERNALUsoLabel);
    edgeLabel = [edgeCopy edgeLabel];
    [(SIRINLUEXTERNALUsoLabel *)v5 setValue:edgeLabel];

    v7 = objc_alloc_init(SIRINLUEXTERNALUsoEdgeLabel);
    -[SIRINLUEXTERNALUsoEdgeLabel setUsoElementId:](v7, "setUsoElementId:", [edgeCopy usoElementId]);
    enumeration = [edgeCopy enumeration];

    [(SIRINLUEXTERNALUsoEdgeLabel *)v7 setEnumeration:enumeration];
    [(SIRINLUEXTERNALUsoEdgeLabel *)v7 setBaseEdgeLabel:v5];
    [(SIRINLUEXTERNALUsoEdge *)v4 setLabel:v7];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)convertFromUtteranceSpans:(id)spans
{
  v18 = *MEMORY[0x1E69E9840];
  spansCopy = spans;
  if (spansCopy)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = spansCopy;
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [self convertFromUtteranceSpan:{*(*(&v13 + 1) + 8 * i), v13}];
          [v5 addObject:v11];
        }

        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)convertFromUsoEntityIdentifiers:(id)identifiers
{
  v18 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  if (identifiersCopy)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = identifiersCopy;
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [self convertFromUsoEntityIdentifier:{*(*(&v13 + 1) + 8 * i), v13}];
          [v5 addObject:v11];
        }

        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)convertFromUsoEntityIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v4 = objc_alloc_init(SIRINLUEXTERNALUsoEntityIdentifier);
    appBundleId = [identifierCopy appBundleId];
    [(SIRINLUEXTERNALUsoEntityIdentifier *)v4 setBackingAppBundleId:appBundleId];

    namespaceString = [identifierCopy namespaceString];
    v7 = [SiriNLUExternalTypesConverter convertFromString:namespaceString];
    [(SIRINLUEXTERNALUsoEntityIdentifier *)v4 setNamespaceA:v7];

    -[SIRINLUEXTERNALUsoEntityIdentifier setNodeIndex:](v4, "setNodeIndex:", [identifierCopy nodeIndex]);
    value = [identifierCopy value];
    [(SIRINLUEXTERNALUsoEntityIdentifier *)v4 setValue:value];

    probability = [identifierCopy probability];

    if (probability)
    {
      v10 = objc_alloc_init(SIRICOMMONDoubleValue);
      [(SIRINLUEXTERNALUsoEntityIdentifier *)v4 setProbability:v10];

      probability2 = [identifierCopy probability];
      [probability2 doubleValue];
      v13 = v12;
      probability3 = [(SIRINLUEXTERNALUsoEntityIdentifier *)v4 probability];
      [probability3 setValue:v13];
    }

    sourceComponent = [identifierCopy sourceComponent];

    if (sourceComponent)
    {
      sourceComponent2 = [identifierCopy sourceComponent];
      -[SIRINLUEXTERNALUsoEntityIdentifier setSourceComponent:](v4, "setSourceComponent:", [sourceComponent2 intValue]);
    }

    groupIndex = [identifierCopy groupIndex];

    if (groupIndex)
    {
      groupIndex2 = [identifierCopy groupIndex];
      -[SIRINLUEXTERNALUsoEntityIdentifier setGroupIndex:](v4, "setGroupIndex:", [groupIndex2 unsignedIntValue]);
    }

    interpretationGroup = [identifierCopy interpretationGroup];

    if (interpretationGroup)
    {
      interpretationGroup2 = [identifierCopy interpretationGroup];
      -[SIRINLUEXTERNALUsoEntityIdentifier setInterpretationGroup:](v4, "setInterpretationGroup:", [interpretationGroup2 unsignedIntValue]);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)convertFromUtteranceSpan:(id)span
{
  if (span)
  {
    spanCopy = span;
    v4 = objc_alloc_init(SIRINLUEXTERNALUtteranceSpan);
    -[SIRINLUEXTERNALUtteranceSpan setEndIndex:](v4, "setEndIndex:", [spanCopy endIndex]);
    -[SIRINLUEXTERNALUtteranceSpan setStartIndex:](v4, "setStartIndex:", [spanCopy startIndex]);
    -[SIRINLUEXTERNALUtteranceSpan setStartUnicodeScalarIndex:](v4, "setStartUnicodeScalarIndex:", [spanCopy startUnicodeScalarIndex]);
    -[SIRINLUEXTERNALUtteranceSpan setEndUnicodeScalarIndex:](v4, "setEndUnicodeScalarIndex:", [spanCopy endUnicodeScalarIndex]);
    -[SIRINLUEXTERNALUtteranceSpan setStartMilliSeconds:](v4, "setStartMilliSeconds:", [spanCopy startMilliSeconds]);
    endMilliSeconds = [spanCopy endMilliSeconds];

    [(SIRINLUEXTERNALUtteranceSpan *)v4 setEndMilliSeconds:endMilliSeconds];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)convertFromUtteranceAlignments:(id)alignments
{
  v18 = *MEMORY[0x1E69E9840];
  alignmentsCopy = alignments;
  if (alignmentsCopy)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = alignmentsCopy;
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [self convertFromUtteranceAlignment:{*(*(&v13 + 1) + 8 * i), v13}];
          [v5 addObject:v11];
        }

        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)convertFromUtteranceAlignment:(id)alignment
{
  if (alignment)
  {
    alignmentCopy = alignment;
    v5 = objc_alloc_init(SIRINLUEXTERNALUtteranceAlignment);
    spans = [alignmentCopy spans];
    v7 = [self convertFromUtteranceSpans:spans];
    [(SIRINLUEXTERNALUtteranceAlignment *)v5 setSpans:v7];

    -[SIRINLUEXTERNALUtteranceAlignment setAsrHypothesisIndex:](v5, "setAsrHypothesisIndex:", [alignmentCopy asrHypothesisIndex]);
    nodeIndex = [alignmentCopy nodeIndex];

    [(SIRINLUEXTERNALUtteranceAlignment *)v5 setNodeIndex:nodeIndex];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)convertFromUsoGraphs:(id)graphs
{
  v18 = *MEMORY[0x1E69E9840];
  graphsCopy = graphs;
  if (graphsCopy)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = graphsCopy;
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [self convertFromUsoGraph:{*(*(&v13 + 1) + 8 * i), v13}];
          [v5 addObject:v11];
        }

        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)convertFromUsoGraph:(id)graph
{
  if (graph)
  {
    graphCopy = graph;
    v5 = objc_alloc_init(SIRINLUEXTERNALUsoGraph);
    nodes = [graphCopy nodes];
    v7 = [self convertFromUsoNodes:nodes];
    [(SIRINLUEXTERNALUsoGraph *)v5 setNodes:v7];

    edges = [graphCopy edges];
    v9 = [self convertFromGraphEdges:edges];
    [(SIRINLUEXTERNALUsoGraph *)v5 setEdges:v9];

    alignments = [graphCopy alignments];
    v11 = [self convertFromUtteranceAlignments:alignments];
    [(SIRINLUEXTERNALUsoGraph *)v5 setAlignments:v11];

    identifiers = [graphCopy identifiers];

    v13 = [self convertFromUsoEntityIdentifiers:identifiers];
    [(SIRINLUEXTERNALUsoGraph *)v5 setIdentifiers:v13];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end