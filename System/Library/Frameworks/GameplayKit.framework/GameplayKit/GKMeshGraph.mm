@interface GKMeshGraph
+ (GKMeshGraph)graphWithBufferRadius:(float)bufferRadius minCoordinate:(vector_float2)min maxCoordinate:(vector_float2)max;
+ (GKMeshGraph)graphWithBufferRadius:(float)bufferRadius minCoordinate:(vector_float2)min maxCoordinate:(vector_float2)max nodeClass:(Class)nodeClass;
- (GKMeshGraph)initWithBufferRadius:(float)bufferRadius minCoordinate:(vector_float2)min maxCoordinate:(vector_float2)max;
- (GKMeshGraph)initWithBufferRadius:(float)bufferRadius minCoordinate:(vector_float2)min maxCoordinate:(vector_float2)max nodeClass:(Class)nodeClass;
- (GKMeshGraph)initWithCoder:(id)coder;
- (GKMeshGraphTriangulationMode)triangulationMode;
- (void)addObstacles:(NSArray *)obstacles;
- (void)connectNodeUsingObstacles:(id)node;
- (void)encodeWithCoder:(id)coder;
- (void)removeObstacles:(NSArray *)obstacles;
- (void)setTriangulationMode:(GKMeshGraphTriangulationMode)triangulationMode;
@end

@implementation GKMeshGraph

- (void)setTriangulationMode:(GKMeshGraphTriangulationMode)triangulationMode
{
  cMeshGraph = self->_cMeshGraph;
  cMeshGraph[657] = (triangulationMode & 2) != 0;
  cMeshGraph[656] = triangulationMode & 1;
  cMeshGraph[658] = (triangulationMode & 4) != 0;
}

- (GKMeshGraphTriangulationMode)triangulationMode
{
  cMeshGraph = self->_cMeshGraph;
  v3 = 2;
  if (!cMeshGraph[657])
  {
    v3 = 0;
  }

  v4 = v3 | cMeshGraph[656];
  if (cMeshGraph[658])
  {
    return v4 | 4;
  }

  else
  {
    return v4;
  }
}

+ (GKMeshGraph)graphWithBufferRadius:(float)bufferRadius minCoordinate:(vector_float2)min maxCoordinate:(vector_float2)max nodeClass:(Class)nodeClass
{
  v10 = [self alloc];
  *&v11 = bufferRadius;
  v12 = [v10 initWithBufferRadius:nodeClass minCoordinate:v11 maxCoordinate:*&min nodeClass:*&max];

  return v12;
}

- (GKMeshGraph)initWithBufferRadius:(float)bufferRadius minCoordinate:(vector_float2)min maxCoordinate:(vector_float2)max nodeClass:(Class)nodeClass
{
  v16.receiver = self;
  v16.super_class = GKMeshGraph;
  v10 = [(GKGraph *)&v16 init];
  v11 = v10;
  if (v10)
  {
    v10->_nodeClass = nodeClass;
    array = [MEMORY[0x277CBEB18] array];
    sourceObstacles = v11->_sourceObstacles;
    v11->_sourceObstacles = array;

    cMeshGraph = v11->_cMeshGraph;
    cMeshGraph[84].f32[0] = fmaxf(bufferRadius, 0.0);
    cMeshGraph[85] = min;
    *(v11->_cMeshGraph + 86) = max;
  }

  return v11;
}

+ (GKMeshGraph)graphWithBufferRadius:(float)bufferRadius minCoordinate:(vector_float2)min maxCoordinate:(vector_float2)max
{
  v9 = objc_opt_class();
  *&v10 = bufferRadius;

  return [self graphWithBufferRadius:v9 minCoordinate:v10 maxCoordinate:*&min nodeClass:*&max];
}

- (GKMeshGraph)initWithBufferRadius:(float)bufferRadius minCoordinate:(vector_float2)min maxCoordinate:(vector_float2)max
{
  v9 = objc_opt_class();
  *&v10 = bufferRadius;
  return [(GKMeshGraph *)self initWithBufferRadius:v9 minCoordinate:v10 maxCoordinate:*&min nodeClass:*&max];
}

- (void)addObstacles:(NSArray *)obstacles
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = obstacles;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        if (([(NSMutableArray *)self->_sourceObstacles containsObject:v8, v9]& 1) == 0)
        {
          [(NSMutableArray *)self->_sourceObstacles addObject:v8];
          GKCMeshGraph::AddObstacle(self->_cMeshGraph, [v8 cPolygonObstacle]);
        }
      }

      v5 = [(NSArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)removeObstacles:(NSArray *)obstacles
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = obstacles;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        if ([(NSMutableArray *)self->_sourceObstacles containsObject:v8, v9])
        {
          [(NSMutableArray *)self->_sourceObstacles removeObject:v8];
          GKCMeshGraph::RemoveObstacle(self->_cMeshGraph, [v8 cPolygonObstacle]);
        }
      }

      v5 = [(NSArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)connectNodeUsingObstacles:(id)node
{
  v4 = node;
  GKCMeshGraph::ConnectNodeUsingObstacles(self->_cMeshGraph, [v4 cGraphNode2D]);
}

- (GKMeshGraph)initWithCoder:(id)coder
{
  v59[11] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v57.receiver = self;
  v57.super_class = GKMeshGraph;
  v43 = coderCopy;
  v5 = [(GKGraph *)&v57 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v59[0] = objc_opt_class();
    v59[1] = objc_opt_class();
    v59[2] = objc_opt_class();
    v59[3] = objc_opt_class();
    v59[4] = objc_opt_class();
    v59[5] = objc_opt_class();
    v59[6] = objc_opt_class();
    v59[7] = objc_opt_class();
    v59[8] = objc_opt_class();
    v59[9] = objc_opt_class();
    v59[10] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:11];
    [v6 addObjectsFromArray:v7];

    allowedClasses = [coderCopy allowedClasses];
    [v6 unionSet:allowedClasses];

    obj = [coderCopy decodeObjectOfClasses:v6 forKey:@"_sourceObstacles"];
    v42 = [coderCopy decodeObjectOfClasses:v6 forKey:@"extrudedObstacles"];
    [coderCopy decodeFloatForKey:@"bufferRadius"];
    v10 = v9;
    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"class"];
    v5->_nodeClass = NSClassFromString(v11);

    *(v5->_cMeshGraph + 168) = fmaxf(v10, 0.0);
    objc_storeStrong(&v5->_sourceObstacles, obj);
    [coderCopy decodeFloatForKey:@"minX"];
    v48 = v12;
    [coderCopy decodeFloatForKey:@"minY"];
    *(v5->_cMeshGraph + 85) = __PAIR64__(v13, v48);
    [coderCopy decodeFloatForKey:@"maxX"];
    v49 = v14;
    [coderCopy decodeFloatForKey:@"maxY"];
    *(v5->_cMeshGraph + 86) = __PAIR64__(v15, v49);
    std::vector<GKPolygonObstacle * {__strong}>::reserve(v5->_cMeshGraph + 53, [v42 count]);
    cMeshGraph = v5->_cMeshGraph;
    v17 = [v42 count];
    if (v17 > (cMeshGraph[52] - cMeshGraph[50]) >> 3)
    {
      if (!(v17 >> 61))
      {
        operator new();
      }

      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE20__throw_length_errorB8ne200100Ev();
    }

    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v18 = v42;
    v19 = [v18 countByEnumeratingWithState:&v52 objects:v58 count:16];
    if (v19)
    {
      v20 = *v53;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v53 != v20)
          {
            objc_enumerationMutation(v18);
          }

          v22 = *(*(&v52 + 1) + 8 * i);
          v56 = v22;
          v23 = v5->_cMeshGraph;
          v24 = *(v23 + 54);
          if (v24 >= *(v23 + 55))
          {
            v25 = std::vector<NSObject * {__strong}>::__emplace_back_slow_path<NSObject * const {__strong}&>(v23 + 53, &v56);
          }

          else
          {
            *v24 = v22;
            v25 = v24 + 1;
          }

          *(v23 + 54) = v25;
          v26 = v5->_cMeshGraph;
          cPolygonObstacle = [v56 cPolygonObstacle];
          std::vector<GKCPolygonObstacle *>::push_back[abi:ne200100](v26 + 400, &cPolygonObstacle);
        }

        v19 = [v18 countByEnumeratingWithState:&v52 objects:v58 count:16];
      }

      while (v19);
    }

    v27 = [obj count];
    if (v27 >= 1)
    {
      v28 = 0;
      v44 = v27 & 0x7FFFFFFF;
      v45 = v6;
      do
      {
        v50 = [obj objectAtIndexedSubscript:v28];
        v47 = [v18 objectAtIndexedSubscript:v28];
        cPolygonObstacle2 = [v47 cPolygonObstacle];
        v30 = v5->_cMeshGraph;
        cPolygonObstacle3 = [v50 cPolygonObstacle];
        v32 = v30[57];
        if (!v32)
        {
LABEL_23:
          operator new();
        }

        while (1)
        {
          while (1)
          {
            v33 = v32;
            v34 = v32[4];
            if (cPolygonObstacle3 >= v34)
            {
              break;
            }

            v32 = *v33;
            if (!*v33)
            {
              goto LABEL_23;
            }
          }

          if (v34 >= cPolygonObstacle3)
          {
            break;
          }

          v32 = v33[1];
          if (!v32)
          {
            goto LABEL_23;
          }
        }

        v33[5] = cPolygonObstacle2;
        cPolygonObstacle4 = [v50 cPolygonObstacle];
        v36 = v5->_cMeshGraph;
        cPolygonObstacle5 = [v47 cPolygonObstacle];
        v38 = v36[60];
        if (!v38)
        {
LABEL_30:
          operator new();
        }

        while (1)
        {
          while (1)
          {
            v39 = v38;
            v40 = v38[4];
            if (cPolygonObstacle5 >= v40)
            {
              break;
            }

            v38 = *v39;
            if (!*v39)
            {
              goto LABEL_30;
            }
          }

          if (v40 >= cPolygonObstacle5)
          {
            break;
          }

          v38 = v39[1];
          if (!v38)
          {
            goto LABEL_30;
          }
        }

        v39[5] = cPolygonObstacle4;

        v6 = v45;
        ++v28;
      }

      while (v28 != v44);
    }

    coderCopy = v43;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = GKMeshGraph;
  [(GKGraph *)&v9 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_sourceObstacles forKey:@"_sourceObstacles"];
  v5 = [MEMORY[0x277CBEB18] arrayWithObjects:? count:?];
  [coderCopy encodeObject:v5 forKey:@"extrudedObstacles"];
  [(GKMeshGraph *)self bufferRadius];
  [coderCopy encodeFloat:@"bufferRadius" forKey:?];
  [coderCopy encodeFloat:@"minX" forKey:*(self->_cMeshGraph + 85)];
  LODWORD(v6) = *(self->_cMeshGraph + 171);
  [coderCopy encodeFloat:@"minY" forKey:v6];
  [coderCopy encodeFloat:@"maxX" forKey:*(self->_cMeshGraph + 86)];
  LODWORD(v7) = *(self->_cMeshGraph + 173);
  [coderCopy encodeFloat:@"maxY" forKey:v7];
  v8 = NSStringFromClass([(GKMeshGraph *)self nodeClass]);
  [coderCopy encodeObject:v8 forKey:@"class"];
}

@end