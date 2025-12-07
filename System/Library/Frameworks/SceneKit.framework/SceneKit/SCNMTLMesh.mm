@interface SCNMTLMesh
- (id)description;
- (uint64_t)bufferForAttribute:(uint64_t)attribute;
- (uint64_t)buffers;
- (uint64_t)elements;
- (uint64_t)setMutabilityTimestamp:(uint64_t)result;
- (uint64_t)setVerticesCount:(uint64_t)result;
- (uint64_t)setVolatileOffset:(uint64_t)result;
- (uint64_t)setVolatileSize:(uint64_t)result;
- (uint64_t)setVolatileStride:(uint64_t)result;
- (uint64_t)vertexDescriptorHash;
- (uint64_t)verticesCount;
- (uint64_t)volatileBuffer;
- (uint64_t)volatileOffset;
- (uint64_t)volatileStride;
- (void)buildTessellationVertexDescriptorIfNeeded;
- (void)dealloc;
- (void)setBuffers:(void *)buffers;
- (void)setElements:(void *)elements;
- (void)setVertexDescriptor:(void *)result;
- (void)setVolatileBuffer:(void *)buffer;
- (void)tessellationVertexDescriptor;
- (void)tessellationVertexDescriptorHash;
@end

@implementation SCNMTLMesh

- (void)buildTessellationVertexDescriptorIfNeeded
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_vertexDescriptor";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, self, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (id)description
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"<SCNMTLMesh: %p\n", self];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  buffers = self->_buffers;
  v5 = [(NSArray *)buffers countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v24;
    do
    {
      v9 = 0;
      v10 = v7;
      do
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(buffers);
        }

        v7 = (v10 + 1);
        [v3 appendFormat:@"\tbuffer[%d] : %@\n", v10, *(*(&v23 + 1) + 8 * v9++)];
        v10 = v7;
      }

      while (v6 != v9);
      v6 = [(NSArray *)buffers countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v6);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  elements = self->_elements;
  v12 = [(NSArray *)elements countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v15 = *v20;
    do
    {
      v16 = 0;
      v17 = v14;
      do
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(elements);
        }

        v14 = (v17 + 1);
        [v3 appendFormat:@"\telement[%d] : %@\n", v17, *(*(&v19 + 1) + 8 * v16++)];
        v17 = v14;
      }

      while (v13 != v16);
      v13 = [(NSArray *)elements countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v13);
  }

  [v3 appendString:@">"];
  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SCNMTLMesh;
  [(SCNMTLMesh *)&v3 dealloc];
}

- (void)setVertexDescriptor:(void *)result
{
  if (result)
  {
    v3 = result;
    v4 = result[2];
    if (v4 != a2)
    {

      v3[2] = [a2 copy];
      result = [a2 hash];
      v3[4] = result;
    }
  }

  return result;
}

- (uint64_t)vertexDescriptorHash
{
  if (result)
  {
    v2 = result;
    if (!*(result + 16))
    {
      v3 = scn_default_log(result, a2);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
      {
        LODWORD(v10) = 136315138;
        *(&v10 + 4) = "_vertexDescriptor";
        OUTLINED_FUNCTION_4_2(&dword_21BEF7000, v4, v5, "Assertion '%s' failed. Null argument", v6, v7, v8, v9, v10, DWORD2(v10));
      }
    }

    return *(v2 + 32);
  }

  return result;
}

- (void)tessellationVertexDescriptor
{
  if (result)
  {
    v1 = result;
    [result buildTessellationVertexDescriptorIfNeeded];
    return v1[3];
  }

  return result;
}

- (void)tessellationVertexDescriptorHash
{
  if (result)
  {
    v1 = result;
    [result buildTessellationVertexDescriptorIfNeeded];
    return v1[5];
  }

  return result;
}

- (uint64_t)bufferForAttribute:(uint64_t)attribute
{
  if (!attribute)
  {
    return 0;
  }

  v3 = [objc_msgSend(objc_msgSend(*(attribute + 16) "attributes")];
  v4 = v3 - 18;
  if (v3 < 18)
  {
    return 0;
  }

  v5 = *(attribute + 48);

  return [v5 objectAtIndexedSubscript:v4];
}

- (uint64_t)buffers
{
  if (result)
  {
    return *(result + 48);
  }

  return result;
}

- (void)setBuffers:(void *)buffers
{
  if (buffers)
  {
    objc_setProperty_nonatomic_copy(buffers, newValue, newValue, 48);
  }
}

- (uint64_t)elements
{
  if (result)
  {
    return *(result + 56);
  }

  return result;
}

- (void)setElements:(void *)elements
{
  if (elements)
  {
    objc_setProperty_nonatomic_copy(elements, newValue, newValue, 56);
  }
}

- (uint64_t)volatileBuffer
{
  if (result)
  {
    return *(result + 72);
  }

  return result;
}

- (void)setVolatileBuffer:(void *)buffer
{
  if (buffer)
  {
    objc_setProperty_nonatomic(buffer, newValue, newValue, 72);
  }
}

- (uint64_t)volatileOffset
{
  if (result)
  {
    return *(result + 80);
  }

  return result;
}

- (uint64_t)setVolatileOffset:(uint64_t)result
{
  if (result)
  {
    *(result + 80) = a2;
  }

  return result;
}

- (uint64_t)volatileStride
{
  if (result)
  {
    return *(result + 88);
  }

  return result;
}

- (uint64_t)setVolatileStride:(uint64_t)result
{
  if (result)
  {
    *(result + 88) = a2;
  }

  return result;
}

- (uint64_t)setVolatileSize:(uint64_t)result
{
  if (result)
  {
    *(result + 96) = a2;
  }

  return result;
}

- (uint64_t)verticesCount
{
  if (result)
  {
    return *(result + 104);
  }

  return result;
}

- (uint64_t)setVerticesCount:(uint64_t)result
{
  if (result)
  {
    *(result + 104) = a2;
  }

  return result;
}

- (uint64_t)setMutabilityTimestamp:(uint64_t)result
{
  if (result)
  {
    *(result + 8) = a2;
  }

  return result;
}

@end