@interface MDLMesh(SCNModelIO)
+ (id)meshWithSCNGeometry:()SCNModelIO bufferAllocator:;
@end

@implementation MDLMesh(SCNModelIO)

+ (id)meshWithSCNGeometry:()SCNModelIO bufferAllocator:
{
  v126 = *MEMORY[0x277D85DE8];
  if (([a3 isMemberOfClass:objc_opt_class()] & 1) == 0)
  {
    +[SCNTransaction flush];
  }

  v66 = a3;
  {
    +[MDLMesh(SCNModelIO) meshWithSCNGeometry:bufferAllocator:]::defaultAllocator = objc_opt_new();
  }

  v6 = +[MDLMesh(SCNModelIO) meshWithSCNGeometry:bufferAllocator:]::defaultAllocator;
  if (a4)
  {
    v6 = a4;
  }

  v87 = v6;
  v120 = 0;
  v119 = 0;
  v121 = 0;
  v117 = 0;
  v116 = 0;
  v118 = 0;
  v114 = 0;
  v113 = 0;
  v115 = 0;
  v110 = 0;
  v111 = 0;
  v112 = 0;
  v7 = [objc_msgSend(a3 "geometrySourceChannels")];
  if (v7)
  {
    v8 = 0;
    vectorCount = 0;
    while (1)
    {
      if (v8 >= [objc_msgSend_geometrySources(a3) count] || v8 >= v7)
      {
        if (v120 == v119)
        {
          goto LABEL_25;
        }

        goto LABEL_27;
      }

      v9 = [objc_msgSend_geometrySources(a3) objectAtIndexedSubscript:v8];
      LODWORD(v109.__begin_) = [objc_msgSend(objc_msgSend(a3 "geometrySourceChannels")];
      if (objc_msgSend_isEqualToString_([v9 semantic]))
      {
        v10 = &v119;
      }

      else if (objc_msgSend_isEqualToString_([v9 semantic]))
      {
        v10 = &v116;
      }

      else if (objc_msgSend_isEqualToString_([v9 semantic]))
      {
        v10 = &v113;
      }

      else
      {
        if (!objc_msgSend_isEqualToString_([v9 semantic]))
        {
          goto LABEL_19;
        }

        v10 = &v110;
      }

      std::vector<int>::push_back[abi:nn200100](v10, &v109);
LABEL_19:
      if (!(LODWORD(v109.__begin_) | vectorCount))
      {
        vectorCount = [v9 vectorCount];
      }

      ++v8;
    }
  }

  v11 = [objc_msgSend_geometrySources(a3) indexOfObjectPassingTest:&__block_literal_global_6];
  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_25:
    v12 = 0;
    goto LABEL_118;
  }

  LODWORD(v109.__begin_) = v11;
  std::vector<int>::push_back[abi:nn200100](&v119, &v109);
  vectorCount = 0;
LABEL_27:
  v13 = objc_alloc_init(MEMORY[0x277CD7B90]);
  v88 = objc_opt_new();
  v14 = [a3 geometrySourcesForSemantic:@"kGeometrySourceSemanticVertex"];
  v84 = [objc_msgSend(v14 objectAtIndexedSubscript:{0), "vectorCount"}];
  memset(&v109, 0, sizeof(v109));
  *&v106[8] = 0;
  v107 = 0;
  v108 = 0;
  *v106 = [objc_msgSend(objc_msgSend(a3 "geometryElements")];
  v67 = uniqueIndexBufferWithSCNGeometryElements([a3 geometryElements], vectorCount, &v109, &v106[4], v106);
  v15 = [v67 count];
  if (v15)
  {
    v84 = vectorCount + (((v107 - *&v106[4]) >> 2) / (*v106 + 1));
    v85 = ((v107 - *&v106[4]) >> 2) / (*v106 + 1);
  }

  else
  {
    LODWORD(v85) = 0;
  }

  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  v16 = [v14 countByEnumeratingWithState:&v102 objects:v125 count:16];
  v89 = v15;
  selfCopy = self;
  if (!v16)
  {
    v18 = 0;
    goto LABEL_46;
  }

  v17 = 0;
  v18 = 0;
  v19 = *MEMORY[0x277CD7AB0];
  v80 = *v103;
  v75 = *v106;
  do
  {
    for (i = 0; i != v16; ++i)
    {
      if (*v103 != v80)
      {
        objc_enumerationMutation(v14);
      }

      v21 = *(*(&v102 + 1) + 8 * i);
      v22 = v19;
      if (v17)
      {
        v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"blendShape%d", v17];
      }

      [objc_msgSend(objc_msgSend(v13 "attributes")];
      [objc_msgSend(objc_msgSend(v13 "attributes")];
      [objc_msgSend(objc_msgSend(v13 "attributes")];
      if (v89)
      {
        v23 = [v87 newBuffer:12 * v84 type:1];
        remapVertexAttributeBuffer(v21, *(v119 + v17), &v109, &v106[4], v75, vectorCount, v85, [objc_msgSend(v23 "map")]);
        [objc_msgSend(objc_msgSend(v13 "attributes")];
        [objc_msgSend(objc_msgSend(v13 "layouts")];
      }

      else
      {
        if ([v21 vectorCount] != v84)
        {
          continue;
        }

        [objc_msgSend(objc_msgSend(v13 "attributes")];
        [objc_msgSend(objc_msgSend(v13 "layouts")];
        v23 = [v87 newBufferWithData:objc_msgSend(v21 type:{"data"), 1}];
      }

      [v88 addObject:v23];

      ++v18;
      v17 = (v17 + 1);
    }

    v16 = [v14 countByEnumeratingWithState:&v102 objects:v125 count:16];
  }

  while (v16);
LABEL_46:
  v24 = [v66 geometrySourcesForSemantic:@"kGeometrySourceSemanticNormal"];
  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  v25 = [v24 countByEnumeratingWithState:&v98 objects:v124 count:16];
  if (v25)
  {
    obj = v24;
    v26 = 0;
    v81 = *v99;
    v27 = *MEMORY[0x277CD7AA0];
    v76 = *v106;
    do
    {
      for (j = 0; j != v25; ++j)
      {
        if (*v99 != v81)
        {
          objc_enumerationMutation(obj);
        }

        v29 = *(*(&v98 + 1) + 8 * j);
        v30 = v27;
        if (v26)
        {
          v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"normal%d", v26];
        }

        [objc_msgSend(objc_msgSend(v13 "attributes")];
        [objc_msgSend(objc_msgSend(v13 "attributes")];
        [objc_msgSend(objc_msgSend(v13 "attributes")];
        if (v89)
        {
          v31 = [v87 newBuffer:12 * v84 type:1];
          remapVertexAttributeBuffer(v29, *(v116 + v26), &v109, &v106[4], v76, vectorCount, v85, [objc_msgSend(v31 "map")]);
          [objc_msgSend(objc_msgSend(v13 "attributes")];
          [objc_msgSend(objc_msgSend(v13 "layouts")];
        }

        else
        {
          if ([v29 vectorCount] != v84)
          {
            continue;
          }

          [objc_msgSend(objc_msgSend(v13 "attributes")];
          [objc_msgSend(objc_msgSend(v13 "layouts")];
          v31 = [v87 newBufferWithData:objc_msgSend(v29 type:{"data"), 1}];
        }

        [v88 addObject:v31];

        ++v18;
        v26 = (v26 + 1);
      }

      v25 = [obj countByEnumeratingWithState:&v98 objects:v124 count:16];
    }

    while (v25);
  }

  if ([v66 firstMaterial] && ((objc_msgSend(objc_msgSend(objc_msgSend(v66, "firstMaterial"), "multiply"), "contents"), objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_msgSend(objc_msgSend(objc_msgSend(v66, "firstMaterial"), "multiply"), "contents"), objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0)))
  {
    v78 = [objc_msgSend(objc_msgSend(v66 "firstMaterial")];
  }

  else
  {
    v78 = -1;
  }

  if ([v66 firstMaterial] && ((objc_msgSend(objc_msgSend(objc_msgSend(v66, "firstMaterial"), "selfIllumination"), "contents"), objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_msgSend(objc_msgSend(objc_msgSend(v66, "firstMaterial"), "selfIllumination"), "contents"), objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0)))
  {
    v77 = [objc_msgSend(objc_msgSend(v66 "firstMaterial")];
  }

  else
  {
    v77 = -1;
  }

  v32 = [v66 geometrySourcesForSemantic:@"kGeometrySourceSemanticTexcoord"];
  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  v33 = [v32 countByEnumeratingWithState:&v94 objects:v123 count:16];
  if (!v33)
  {
    v35 = v18;
    goto LABEL_94;
  }

  v34 = 0;
  obja = *v95;
  v72 = *MEMORY[0x277CD7AC0];
  v71 = *MEMORY[0x277CD7A68];
  v70 = *MEMORY[0x277CD7A98];
  v69 = *v106;
  v35 = v18;
  while (2)
  {
    v82 = v33;
    v36 = 0;
    while (2)
    {
      if (*v95 != obja)
      {
        objc_enumerationMutation(v32);
      }

      v37 = *(*(&v94 + 1) + 8 * v36);
      v38 = v72;
      if (v34)
      {
        v38 = [MEMORY[0x277CCACA8] stringWithFormat:@"textureCoordinate%d", v34];
      }

      v39 = v71;
      if (v78 != v34)
      {
        v39 = v38;
      }

      if (v77 == v34)
      {
        v40 = v70;
      }

      else
      {
        v40 = v39;
      }

      [objc_msgSend(objc_msgSend(v13 "attributes")];
      [objc_msgSend(objc_msgSend(v13 "attributes")];
      [objc_msgSend(objc_msgSend(v13 "attributes")];
      if (v89)
      {
        v41 = [v87 newBuffer:8 * v84 type:1];
        remapVertexAttributeBuffer(v37, *(v113 + v34), &v109, &v106[4], v69, vectorCount, v85, [objc_msgSend(v41 "map")]);
        [objc_msgSend(objc_msgSend(v13 "attributes")];
        v42 = [objc_msgSend(objc_msgSend(v13 "layouts")];
LABEL_86:
        if ((C3DWasLinkedBeforeMajorOSYear2018(v42, v43) & 1) == 0 && [objc_msgSend(v41 "map")])
        {
          v44 = [objc_msgSend(v13 "attributes")];
          flip_UVs([v44 format], objc_msgSend(objc_msgSend(v41, "map"), "bytes"), objc_msgSend(v44, "offset"), objc_msgSend(objc_msgSend(objc_msgSend(v13, "layouts"), "objectAtIndexedSubscript:", objc_msgSend(v44, "bufferIndex")), "stride"), v84);
        }

        [v88 addObject:v41];

        ++v35;
        v34 = (v34 + 1);
      }

      else if ([v37 vectorCount] == v84)
      {
        [objc_msgSend(objc_msgSend(v13 "attributes")];
        [objc_msgSend(objc_msgSend(v13 "layouts")];
        v42 = [v87 newBufferWithData:objc_msgSend(v37 type:{"data"), 1}];
        v41 = v42;
        goto LABEL_86;
      }

      if (v82 != ++v36)
      {
        continue;
      }

      break;
    }

    v33 = [v32 countByEnumeratingWithState:&v94 objects:v123 count:16];
    if (v33)
    {
      continue;
    }

    break;
  }

LABEL_94:
  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  v79 = [v66 geometrySourcesForSemantic:@"kGeometrySourceSemanticColor"];
  v45 = [v79 countByEnumeratingWithState:&v90 objects:v122 count:16];
  if (v45)
  {
    LODWORD(v46) = 0;
    v47 = *v91;
    v48 = *MEMORY[0x277CD7A80];
    v83 = *v106;
    LODWORD(v49) = v35;
    do
    {
      v50 = 0;
      v46 = v46;
      v49 = v49;
      do
      {
        if (*v91 != v47)
        {
          objc_enumerationMutation(v79);
        }

        v51 = *(*(&v90 + 1) + 8 * v50);
        v52 = v48;
        if (v46)
        {
          v52 = [MEMORY[0x277CCACA8] stringWithFormat:@"color%d", v46];
        }

        [objc_msgSend(objc_msgSend(v13 "attributes")];
        [objc_msgSend(objc_msgSend(v13 "attributes")];
        [objc_msgSend(objc_msgSend(v13 "attributes")];
        if (v89)
        {
          v53 = [v87 newBuffer:objc_msgSend(v51 type:{"dataStride") * v84, 1}];
          remapVertexAttributeBuffer(v51, *(v110 + v46), &v109, &v106[4], v83, vectorCount, v85, [objc_msgSend(v53 "map")]);
          [objc_msgSend(objc_msgSend(v13 "attributes")];
          [objc_msgSend(objc_msgSend(v13 "layouts")];
        }

        else
        {
          [objc_msgSend(objc_msgSend(v13 "attributes")];
          [objc_msgSend(objc_msgSend(v13 "layouts")];
          v53 = [v87 newBufferWithData:objc_msgSend(v51 type:{"data"), 1}];
        }

        [v88 addObject:v53];

        ++v49;
        ++v46;
        ++v50;
      }

      while (v45 != v50);
      v45 = [v79 countByEnumeratingWithState:&v90 objects:v122 count:16];
    }

    while (v45);
  }

  v109.__end_ = v109.__begin_;
  v107 = *&v106[4];
  v54 = objc_opt_new();
  geometryElementCount = [v66 geometryElementCount];
  v56 = [objc_msgSend(v66 "materials")];
  if (geometryElementCount)
  {
    v57 = v56;
    for (k = 0; k != geometryElementCount; ++k)
    {
      v59 = [v66 geometryElementAtIndex:k];
      if (v89)
      {
        v60 = [MEMORY[0x277CD7B48] submeshWithUniquedIndexData:objc_msgSend(v67 andSCNGeometryElement:"objectAtIndexedSubscript:" bufferAllocator:{k), v59, a4}];
      }

      else
      {
        v60 = [MEMORY[0x277CD7B48] submeshWithSCNGeometryElement:v59 bufferAllocator:a4 positionSourceChannel:*v119];
      }

      v61 = v60;
      [v54 addObject:v60];
      if (v57)
      {
        v62 = [objc_msgSend(v66 "materials")];
        [v61 setMaterial:{objc_msgSend(MEMORY[0x277CD7AF0], "materialWithSCNMaterial:", v62)}];
      }
    }
  }

  v63 = [[selfCopy alloc] initWithVertexBuffers:v88 vertexCount:v84 descriptor:v13 submeshes:v54];

  [v63 setName:{objc_msgSend(v66, "name")}];
  objc_setAssociatedObject(v63, @"SCNSceneKitAssociatedObject", v66, 0x301);
  v12 = v63;
  if (*&v106[4])
  {
    v107 = *&v106[4];
    operator delete(*&v106[4]);
  }

  if (v109.__begin_)
  {
    v109.__end_ = v109.__begin_;
    operator delete(v109.__begin_);
  }

LABEL_118:
  if (v110)
  {
    v111 = v110;
    operator delete(v110);
  }

  if (v113)
  {
    v114 = v113;
    operator delete(v113);
  }

  if (v116)
  {
    v117 = v116;
    operator delete(v116);
  }

  if (v119)
  {
    v120 = v119;
    operator delete(v119);
  }

  return v12;
}

@end