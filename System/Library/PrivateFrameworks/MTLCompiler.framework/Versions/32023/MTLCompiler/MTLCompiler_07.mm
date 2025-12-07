uint64_t AirReflection::Node::node_as_VertexValueType(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 532527) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::VertexValueType::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.VertexValueType", 0x1Du);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LODWORD(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LODWORD(v5) = *(a1 + v5);
    }
  }

  data = v5;
  CC_SHA256_Update(c, &data, 4u);
  v6 = (a1 - *a1);
  if (*v6 < 7u)
  {
    LODWORD(v7) = 0;
  }

  else
  {
    v7 = v6[3];
    if (v7)
    {
      LODWORD(v7) = *(a1 + v7);
    }
  }

  data = v7;
  CC_SHA256_Update(c, &data, 4u);
  v8 = (a1 - *a1);
  if (*v8 >= 9u && (v9 = v8[4]) != 0)
  {
    v10 = (a1 + v9 + *(a1 + v9));
    data = *v10;
    CC_SHA256_Update(c, &data, 4u);
    v11 = *v10;
    if (v11)
    {
      v12 = (v10 + 1);
      do
      {
        CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
        v13 = *v12++;
        data = v13;
        CC_SHA256_Update(c, &data, 4u);
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    data = 0;
    CC_SHA256_Update(c, &data, 4u);
  }

  v14 = (a1 - *a1);
  if (*v14 >= 0xBu && (v15 = v14[5]) != 0)
  {
    v16 = v15;
    CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
    data = *(a1 + v16);
  }

  else
  {
    data = 0;
  }

  return CC_SHA256_Update(c, &data, 4u);
}

uint64_t AirReflection::Node::node_as_DepthStencilStateType(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 532528) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::DepthStencilStateType::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.DepthStencilStateType", 0x23u);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LODWORD(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LODWORD(v5) = *(a1 + v5);
    }
  }

  data = v5;
  CC_SHA256_Update(c, &data, 4u);
  v6 = (a1 - *a1);
  if (*v6 < 7u)
  {
    LODWORD(v7) = 0;
  }

  else
  {
    v7 = v6[3];
    if (v7)
    {
      LODWORD(v7) = *(a1 + v7);
    }
  }

  data = v7;
  CC_SHA256_Update(c, &data, 4u);
  v8 = (a1 - *a1);
  if (*v8 >= 9u && (v9 = v8[4]) != 0)
  {
    v10 = (a1 + v9 + *(a1 + v9));
    data = *v10;
    result = CC_SHA256_Update(c, &data, 4u);
    v12 = *v10;
    if (v12)
    {
      v13 = (v10 + 1);
      do
      {
        CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
        v14 = *v13++;
        data = v14;
        result = CC_SHA256_Update(c, &data, 4u);
        --v12;
      }

      while (v12);
    }
  }

  else
  {
    data = 0;
    return CC_SHA256_Update(c, &data, 4u);
  }

  return result;
}

uint64_t AirReflection::Node::node_as_FunctionHandleType(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 532529) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::FunctionHandleType::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.FunctionHandleType", 0x20u);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LODWORD(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LODWORD(v5) = *(a1 + v5);
    }
  }

  data = v5;
  CC_SHA256_Update(c, &data, 4u);
  v6 = (a1 - *a1);
  if (*v6 < 7u)
  {
    LODWORD(v7) = 0;
  }

  else
  {
    v7 = v6[3];
    if (v7)
    {
      LODWORD(v7) = *(a1 + v7);
    }
  }

  data = v7;
  CC_SHA256_Update(c, &data, 4u);
  v8 = (a1 - *a1);
  if (*v8 >= 9u && (v9 = v8[4]) != 0)
  {
    v10 = (a1 + v9 + *(a1 + v9));
    data = *v10;
    result = CC_SHA256_Update(c, &data, 4u);
    v12 = *v10;
    if (v12)
    {
      v13 = (v10 + 1);
      do
      {
        CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
        v14 = *v13++;
        data = v14;
        result = CC_SHA256_Update(c, &data, 4u);
        --v12;
      }

      while (v12);
    }
  }

  else
  {
    data = 0;
    return CC_SHA256_Update(c, &data, 4u);
  }

  return result;
}

uint64_t AirReflection::Node::node_as_IntersectionFunctionHandleType(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 532530) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::IntersectionFunctionHandleType::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.IntersectionFunctionHandleType", 0x2Cu);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LODWORD(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LODWORD(v5) = *(a1 + v5);
    }
  }

  data = v5;
  CC_SHA256_Update(c, &data, 4u);
  v6 = (a1 - *a1);
  if (*v6 < 7u)
  {
    LODWORD(v7) = 0;
  }

  else
  {
    v7 = v6[3];
    if (v7)
    {
      LODWORD(v7) = *(a1 + v7);
    }
  }

  data = v7;
  CC_SHA256_Update(c, &data, 4u);
  v8 = (a1 - *a1);
  if (*v8 >= 9u && (v9 = v8[4]) != 0)
  {
    v10 = (a1 + v9 + *(a1 + v9));
    data = *v10;
    CC_SHA256_Update(c, &data, 4u);
    v11 = *v10;
    if (v11)
    {
      v12 = (v10 + 1);
      do
      {
        CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
        v13 = *v12++;
        data = v13;
        CC_SHA256_Update(c, &data, 4u);
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    data = 0;
    CC_SHA256_Update(c, &data, 4u);
  }

  v14 = (a1 - *a1);
  if (*v14 < 0xBu)
  {
    LOBYTE(v15) = 0;
  }

  else
  {
    v15 = v14[5];
    if (v15)
    {
      LOBYTE(v15) = *(a1 + v15) != 0;
    }
  }

  LOBYTE(data) = v15;
  CC_SHA256_Update(c, &data, 1u);
  v16 = (a1 - *a1);
  if (*v16 < 0xDu)
  {
    LOBYTE(v17) = 0;
  }

  else
  {
    v17 = v16[6];
    if (v17)
    {
      LOBYTE(v17) = *(a1 + v17) != 0;
    }
  }

  LOBYTE(data) = v17;
  CC_SHA256_Update(c, &data, 1u);
  v18 = (a1 - *a1);
  if (*v18 < 0xFu)
  {
    LODWORD(v19) = 0;
  }

  else
  {
    v19 = v18[7];
    if (v19)
    {
      LODWORD(v19) = *(a1 + v19);
    }
  }

  data = v19;
  CC_SHA256_Update(c, &data, 4u);
  v20 = (a1 - *a1);
  if (*v20 < 0x11u)
  {
    LOBYTE(v21) = 0;
  }

  else
  {
    v21 = v20[8];
    if (v21)
    {
      LOBYTE(v21) = *(a1 + v21) != 0;
    }
  }

  LOBYTE(data) = v21;
  CC_SHA256_Update(c, &data, 1u);
  v22 = (a1 - *a1);
  if (*v22 < 0x13u)
  {
    LOBYTE(v23) = 0;
  }

  else
  {
    v23 = v22[9];
    if (v23)
    {
      LOBYTE(v23) = *(a1 + v23) != 0;
    }
  }

  LOBYTE(data) = v23;
  CC_SHA256_Update(c, &data, 1u);
  v24 = (a1 - *a1);
  if (*v24 < 0x15u)
  {
    LOBYTE(v25) = 0;
  }

  else
  {
    v25 = v24[10];
    if (v25)
    {
      LOBYTE(v25) = *(a1 + v25) != 0;
    }
  }

  LOBYTE(data) = v25;
  CC_SHA256_Update(c, &data, 1u);
  v26 = (a1 - *a1);
  if (*v26 < 0x17u)
  {
    LOBYTE(v27) = 0;
  }

  else
  {
    v27 = v26[11];
    if (v27)
    {
      LOBYTE(v27) = *(a1 + v27) != 0;
    }
  }

  LOBYTE(data) = v27;
  CC_SHA256_Update(c, &data, 1u);
  v28 = (a1 - *a1);
  if (*v28 < 0x19u)
  {
    LOBYTE(v29) = 0;
  }

  else
  {
    v29 = v28[12];
    if (v29)
    {
      LOBYTE(v29) = *(a1 + v29) != 0;
    }
  }

  LOBYTE(data) = v29;
  CC_SHA256_Update(c, &data, 1u);
  v30 = (a1 - *a1);
  if (*v30 < 0x1Bu)
  {
    LOBYTE(v31) = 0;
  }

  else
  {
    v31 = v30[13];
    if (v31)
    {
      LOBYTE(v31) = *(a1 + v31) != 0;
    }
  }

  LOBYTE(data) = v31;
  CC_SHA256_Update(c, &data, 1u);
  v32 = (a1 - *a1);
  if (*v32 < 0x1Du)
  {
    LOBYTE(v33) = 0;
  }

  else
  {
    v33 = v32[14];
    if (v33)
    {
      LOBYTE(v33) = *(a1 + v33) != 0;
    }
  }

  LOBYTE(data) = v33;
  return CC_SHA256_Update(c, &data, 1u);
}

uint64_t AirReflection::Node::node_as_ExtentsType(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 532531) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::ExtentsType::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.ExtentsType", 0x19u);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LODWORD(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LODWORD(v5) = *(a1 + v5);
    }
  }

  LODWORD(data) = v5;
  CC_SHA256_Update(c, &data, 4u);
  v6 = (a1 - *a1);
  if (*v6 < 7u)
  {
    LODWORD(v7) = 0;
  }

  else
  {
    v7 = v6[3];
    if (v7)
    {
      LODWORD(v7) = *(a1 + v7);
    }
  }

  LODWORD(data) = v7;
  CC_SHA256_Update(c, &data, 4u);
  v8 = (a1 - *a1);
  if (*v8 >= 9u && (v9 = v8[4]) != 0)
  {
    v10 = (a1 + v9 + *(a1 + v9));
    LODWORD(data) = *v10;
    CC_SHA256_Update(c, &data, 4u);
    v11 = *v10;
    if (v11)
    {
      v12 = v10 + 1;
      do
      {
        CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
        v13 = *v12++;
        LODWORD(data) = v13;
        CC_SHA256_Update(c, &data, 4u);
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    LODWORD(data) = 0;
    CC_SHA256_Update(c, &data, 4u);
  }

  v14 = (a1 - *a1);
  if (*v14 >= 0xBu && (v15 = v14[5]) != 0)
  {
    v16 = v15;
    CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
    LODWORD(data) = *(a1 + v16);
  }

  else
  {
    LODWORD(data) = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v17 = (a1 - *a1);
  if (*v17 >= 0xDu && (v18 = v17[6]) != 0)
  {
    v19 = (a1 + v18 + *(a1 + v18));
    LODWORD(data) = *v19;
    result = CC_SHA256_Update(c, &data, 4u);
    v21 = *v19;
    if (v21)
    {
      v22 = (v19 + 1);
      do
      {
        v23 = *v22++;
        data = v23;
        result = CC_SHA256_Update(c, &data, 8u);
        --v21;
      }

      while (v21);
    }
  }

  else
  {
    LODWORD(data) = 0;
    return CC_SHA256_Update(c, &data, 4u);
  }

  return result;
}

uint64_t AirReflection::Node::node_as_TensorType(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 532532) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::TensorType::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.TensorType", 0x18u);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LODWORD(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LODWORD(v5) = *(a1 + v5);
    }
  }

  data = v5;
  CC_SHA256_Update(c, &data, 4u);
  v6 = (a1 - *a1);
  if (*v6 < 7u)
  {
    LODWORD(v7) = 0;
  }

  else
  {
    v7 = v6[3];
    if (v7)
    {
      LODWORD(v7) = *(a1 + v7);
    }
  }

  data = v7;
  CC_SHA256_Update(c, &data, 4u);
  v8 = (a1 - *a1);
  if (*v8 >= 9u && (v9 = v8[4]) != 0)
  {
    v10 = (a1 + v9 + *(a1 + v9));
    data = *v10;
    CC_SHA256_Update(c, &data, 4u);
    v11 = *v10;
    if (v11)
    {
      v12 = (v10 + 1);
      do
      {
        CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
        v13 = *v12++;
        data = v13;
        CC_SHA256_Update(c, &data, 4u);
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    data = 0;
    CC_SHA256_Update(c, &data, 4u);
  }

  v14 = (a1 - *a1);
  if (*v14 >= 0xBu && (v15 = v14[5]) != 0)
  {
    v16 = v15;
    CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
    data = *(a1 + v16);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v17 = (a1 - *a1);
  if (*v17 >= 0xDu && (v18 = v17[6]) != 0)
  {
    v19 = v18;
    CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
    data = *(a1 + v19);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v20 = (a1 - *a1);
  if (*v20 < 0xFu)
  {
    LODWORD(v21) = 0;
  }

  else
  {
    v21 = v20[7];
    if (v21)
    {
      LODWORD(v21) = *(a1 + v21);
    }
  }

  data = v21;
  return CC_SHA256_Update(c, &data, 4u);
}

uint64_t AirReflection::Node::node_as_AddressSpaceTypeQual(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 5 || !v1[2])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 7 && *(this + v1[2]) == 536576)
  {
    v3 = v1[3];
    if (v1[3])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t AirReflection::AddressSpaceTypeQual::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.AddressSpaceTypeQual", 0x22u);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LODWORD(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LODWORD(v5) = *(a1 + v5);
    }
  }

  data = v5;
  return CC_SHA256_Update(c, &data, 4u);
}

uint64_t AirReflection::Node::node_as_ClipDistanceAttr(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 5 || !v1[2])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 7 && *(this + v1[2]) == 540672)
  {
    v3 = v1[3];
    if (v1[3])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t AirReflection::Node::node_as_FunctionConstantPredicateAttr(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 540673) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::FunctionConstantPredicateAttr::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.FunctionConstantPredicateAttr", 0x2Bu);
  v4 = (a1 - *a1);
  if (*v4 >= 5u && (v5 = v4[2]) != 0)
  {

    return AirReflection::BoolValue::HashImpl(a1 + v5, c);
  }

  else
  {
    data = 0;
    return CC_SHA256_Update(c, &data, 4u);
  }
}

uint64_t AirReflection::Node::node_as_LocationIndexAttr(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 540674) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::LocationIndexAttr::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.LocationIndexAttr", 0x1Fu);
  v4 = (a1 - *a1);
  if (*v4 >= 5u && (v5 = v4[2]) != 0)
  {
    v6 = v5;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v6);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v7 = (a1 - *a1);
  if (*v7 >= 7u && (v8 = v7[3]) != 0)
  {
    v9 = v8;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v9);
  }

  else
  {
    data = 0;
  }

  return CC_SHA256_Update(c, &data, 4u);
}

uint64_t AirReflection::Node::node_as_PointSizeAttr(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 540675) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Node::node_as_PositionAttr(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 540676) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Node::node_as_PrimitiveCulledAttr(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 540677) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Node::node_as_PrimitiveIDAttr(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 540678) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Node::node_as_RenderTargetAttr(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 540679) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::RenderTargetAttr::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.RenderTargetAttr", 0x1Eu);
  v4 = (a1 - *a1);
  if (*v4 >= 5u && (v5 = v4[2]) != 0)
  {
    v6 = v5;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    v9 = *(a1 + v6);
    p_data = &v9;
  }

  else
  {
    data = 0;
    p_data = &data;
  }

  return CC_SHA256_Update(c, p_data, 4u);
}

uint64_t AirReflection::Node::node_as_RenderTargetArrayIndexAttr(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 540680) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Node::node_as_ViewportArrayIndexAttr(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 540681) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Node::node_as_UserAttr(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 540682) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::UserAttr::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.UserAttr", 0x16u);
  v4 = (a1 - *a1);
  if (*v4 >= 5u && (v5 = v4[2]) != 0)
  {
    v6 = (a1 + v5);
    v7 = *v6;
    v8 = *(v6 + v7);

    return CC_SHA256_Update(c, v6 + v7 + 4, v8);
  }

  else
  {
    data = 0;
    return CC_SHA256_Update(c, &data, 4u);
  }
}

uint64_t AirReflection::Node::node_as_InvariantAttr(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 540683) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Node::node_as_SharedAttr(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 540684) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Node::node_as_MeshEmulationValueGroup(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 5 || !v1[2])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 7 && *(this + v1[2]) == 544768)
  {
    v3 = v1[3];
    if (v1[3])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t AirReflection::MeshEmulation::ValueGroup::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.MeshEmulation.ValueGroup", 0x26u);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LODWORD(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LODWORD(v5) = *(a1 + v5);
    }
  }

  data = v5;
  CC_SHA256_Update(c, &data, 4u);
  v6 = (a1 - *a1);
  if (*v6 < 7u)
  {
    LODWORD(v7) = 0;
  }

  else
  {
    v7 = v6[3];
    if (v7)
    {
      LODWORD(v7) = *(a1 + v7);
    }
  }

  data = v7;
  CC_SHA256_Update(c, &data, 4u);
  v8 = (a1 - *a1);
  if (*v8 < 9u)
  {
    LODWORD(v9) = 0;
  }

  else
  {
    v9 = v8[4];
    if (v9)
    {
      LODWORD(v9) = *(a1 + v9);
    }
  }

  data = v9;
  CC_SHA256_Update(c, &data, 4u);
  v10 = (a1 - *a1);
  if (*v10 >= 0xBu && (v11 = v10[5]) != 0)
  {
    v12 = v11;
    CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
    data = *(a1 + v12);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v13 = (a1 - *a1);
  if (*v13 < 0xDu)
  {
    LODWORD(v14) = 0;
  }

  else
  {
    v14 = v13[6];
    if (v14)
    {
      LODWORD(v14) = *(a1 + v14);
    }
  }

  data = v14;
  return CC_SHA256_Update(c, &data, 4u);
}

uint64_t AirReflection::Node::node_as_MeshEmulationBlock(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 544769) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::MeshEmulation::Block::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.MeshEmulation.Block", 0x21u);
  v4 = (a1 - *a1);
  if (*v4 >= 5u && (v5 = v4[2]) != 0)
  {
    v6 = (a1 + v5 + *(a1 + v5));
    data = *v6;
    result = CC_SHA256_Update(c, &data, 4u);
    v8 = *v6;
    if (v8)
    {
      v9 = (v6 + 1);
      do
      {
        CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
        v10 = *v9++;
        v12 = v10;
        result = CC_SHA256_Update(c, &v12, 4u);
        --v8;
      }

      while (v8);
    }
  }

  else
  {
    v13 = 0;
    return CC_SHA256_Update(c, &v13, 4u);
  }

  return result;
}

uint64_t AirReflection::Node::node_as_MeshEmulationMeshLayout(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 544770) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::MeshEmulation::MeshLayout::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.MeshEmulation.MeshLayout", 0x26u);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LODWORD(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LODWORD(v5) = *(a1 + v5);
    }
  }

  data = v5;
  CC_SHA256_Update(c, &data, 4u);
  v6 = (a1 - *a1);
  if (*v6 < 7u)
  {
    LODWORD(v7) = 0;
  }

  else
  {
    v7 = v6[3];
    if (v7)
    {
      LODWORD(v7) = *(a1 + v7);
    }
  }

  data = v7;
  CC_SHA256_Update(c, &data, 4u);
  v8 = (a1 - *a1);
  if (*v8 < 9u)
  {
    LODWORD(v9) = 0;
  }

  else
  {
    v9 = v8[4];
    if (v9)
    {
      LODWORD(v9) = *(a1 + v9);
    }
  }

  data = v9;
  CC_SHA256_Update(c, &data, 4u);
  v10 = (a1 - *a1);
  if (*v10 < 0xBu)
  {
    LODWORD(v11) = 0;
  }

  else
  {
    v11 = v10[5];
    if (v11)
    {
      LODWORD(v11) = *(a1 + v11);
    }
  }

  data = v11;
  CC_SHA256_Update(c, &data, 4u);
  v12 = (a1 - *a1);
  if (*v12 >= 0xDu && (v13 = v12[6]) != 0)
  {
    v14 = v13;
    CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
    data = *(a1 + v14);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v15 = (a1 - *a1);
  if (*v15 >= 0xFu && (v16 = v15[7]) != 0)
  {
    v17 = v16;
    CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
    data = *(a1 + v17);
  }

  else
  {
    data = 0;
  }

  return CC_SHA256_Update(c, &data, 4u);
}

uint64_t AirReflection::Node::node_as_MeshEmulationMeshKernel(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 544771) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::MeshEmulation::MeshKernel::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.MeshEmulation.MeshKernel", 0x26u);
  v4 = (a1 - *a1);
  if (*v4 >= 5u && (v5 = v4[2]) != 0)
  {
    v6 = (a1 + v5);
    v7 = *v6;
    p_data = (v6 + v7 + 4);
    v9 = *(v6 + v7);
    v10 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v10 = c;
    v9 = 4;
  }

  CC_SHA256_Update(v10, p_data, v9);
  v11 = (a1 - *a1);
  if (*v11 < 7u)
  {
    LODWORD(v12) = 0;
  }

  else
  {
    v12 = v11[3];
    if (v12)
    {
      LODWORD(v12) = *(a1 + v12);
    }
  }

  data = v12;
  CC_SHA256_Update(c, &data, 4u);
  v13 = (a1 - *a1);
  if (*v13 >= 9u && (v14 = v13[4]) != 0)
  {
    v15 = v14;
    CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
    data = *(a1 + v15);
  }

  else
  {
    data = 0;
  }

  return CC_SHA256_Update(c, &data, 4u);
}

uint64_t AirReflection::Node::node_as_MeshEmulationMeshVertex(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 544772) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::MeshEmulation::MeshVertex::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.MeshEmulation.MeshVertex", 0x26u);
  v4 = (a1 - *a1);
  if (*v4 >= 5u && (v5 = v4[2]) != 0)
  {
    v6 = (a1 + v5);
    v7 = *v6;
    p_data = (v6 + v7 + 4);
    v9 = *(v6 + v7);
    v10 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v10 = c;
    v9 = 4;
  }

  CC_SHA256_Update(v10, p_data, v9);
  v11 = (a1 - *a1);
  if (*v11 < 7u)
  {
    LODWORD(v12) = 0;
  }

  else
  {
    v12 = v11[3];
    if (v12)
    {
      LODWORD(v12) = *(a1 + v12);
    }
  }

  data = v12;
  CC_SHA256_Update(c, &data, 4u);
  v13 = (a1 - *a1);
  if (*v13 >= 9u && (v14 = v13[4]) != 0)
  {
    v15 = v14;
    CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
    data = *(a1 + v15);
  }

  else
  {
    data = 0;
  }

  return CC_SHA256_Update(c, &data, 4u);
}

uint64_t AirReflection::Node::node_as_MeshEmulationObjectKernel(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 544773) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::MeshEmulation::ObjectKernel::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.MeshEmulation.ObjectKernel", 0x28u);
  v4 = (a1 - *a1);
  if (*v4 >= 5u && (v5 = v4[2]) != 0)
  {
    v6 = (a1 + v5);
    v7 = *v6;
    p_data = (v6 + v7 + 4);
    v9 = *(v6 + v7);
    v10 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v10 = c;
    v9 = 4;
  }

  CC_SHA256_Update(v10, p_data, v9);
  v11 = (a1 - *a1);
  if (*v11 < 7u)
  {
    LODWORD(v12) = 0;
  }

  else
  {
    v12 = v11[3];
    if (v12)
    {
      LODWORD(v12) = *(a1 + v12);
    }
  }

  data = v12;
  CC_SHA256_Update(c, &data, 4u);
  v13 = (a1 - *a1);
  if (*v13 >= 9u && (v14 = v13[4]) != 0)
  {
    v15 = v14;
    CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
    data = *(a1 + v15);
  }

  else
  {
    data = 0;
  }

  return CC_SHA256_Update(c, &data, 4u);
}

uint64_t AirReflection::Node::node_as_MeshEmulationFragmentAnalysisResult(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 544774) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::MeshEmulation::FragmentAnalysisResult::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.MeshEmulation.FragmentAnalysisResult", 0x32u);
  v4 = (a1 - *a1);
  if (*v4 >= 5u && (v5 = v4[2]) != 0)
  {
    v6 = (a1 + v5);
    v7 = *v6;
    p_data = (v6 + v7 + 4);
    v9 = *(v6 + v7);
    v10 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v10 = c;
    v9 = 4;
  }

  CC_SHA256_Update(v10, p_data, v9);
  v11 = (a1 - *a1);
  if (*v11 >= 7u && (v12 = v11[3]) != 0)
  {
    v13 = (a1 + v12 + *(a1 + v12));
    v20 = *v13;
    result = CC_SHA256_Update(c, &v20, 4u);
    v15 = *v13;
    if (v15)
    {
      v16 = v13 + 1;
      v17 = v13 + 1;
      do
      {
        v18 = *v17++;
        result = CC_SHA256_Update(c, v16 + v18 + 4, *(v16 + v18));
        v16 = v17;
        --v15;
      }

      while (v15);
    }
  }

  else
  {
    v21 = 0;
    return CC_SHA256_Update(c, &v21, 4u);
  }

  return result;
}

uint64_t AirReflection::StitchingInfo::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.StitchingInfo", 0x1Bu);
  v4 = (a1 - *a1);
  if (*v4 >= 5u && (v5 = v4[2]) != 0)
  {
    v6 = v5;
    CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
    data = *(a1 + v6);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v7 = (a1 - *a1);
  if (*v7 >= 7u && (v8 = v7[3]) != 0)
  {
    v9 = (a1 + v8 + *(a1 + v8));
    data = *v9;
    result = CC_SHA256_Update(c, &data, 4u);
    v11 = *v9;
    if (v11)
    {
      v12 = (v9 + 1);
      do
      {
        CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
        v13 = *v12++;
        data = v13;
        result = CC_SHA256_Update(c, &data, 4u);
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    data = 0;
    return CC_SHA256_Update(c, &data, 4u);
  }

  return result;
}

uint64_t AirReflection::StructTypeInfoField::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.StructTypeInfoField", 0x21u);
  v4 = (a1 - *a1);
  if (*v4 >= 5u && (v5 = v4[2]) != 0)
  {
    v6 = v5;
    CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
    data = *(a1 + v6);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v7 = (a1 - *a1);
  if (*v7 < 7u)
  {
    LODWORD(v8) = 0;
  }

  else
  {
    v8 = v7[3];
    if (v8)
    {
      LODWORD(v8) = *(a1 + v8);
    }
  }

  data = v8;
  CC_SHA256_Update(c, &data, 4u);
  v9 = (a1 - *a1);
  if (*v9 < 9u)
  {
    LODWORD(v10) = 0;
  }

  else
  {
    v10 = v9[4];
    if (v10)
    {
      LODWORD(v10) = *(a1 + v10);
    }
  }

  data = v10;
  CC_SHA256_Update(c, &data, 4u);
  v11 = (a1 - *a1);
  if (*v11 < 0xBu)
  {
    LODWORD(v12) = 0;
  }

  else
  {
    v12 = v11[5];
    if (v12)
    {
      LODWORD(v12) = *(a1 + v12);
    }
  }

  data = v12;
  CC_SHA256_Update(c, &data, 4u);
  v13 = (a1 - *a1);
  if (*v13 >= 0xDu && (v14 = v13[6]) != 0)
  {
    v15 = (a1 + v14);
    v16 = *v15;
    p_data = (v15 + v16 + 4);
    v18 = *(v15 + v16);
    v19 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v19 = c;
    v18 = 4;
  }

  CC_SHA256_Update(v19, p_data, v18);
  v20 = (a1 - *a1);
  if (*v20 >= 0xFu && (v21 = v20[7]) != 0)
  {
    v22 = (a1 + v21);
    v23 = *v22;
    v24 = (v22 + v23 + 4);
    v25 = *(v22 + v23);
    v26 = c;
  }

  else
  {
    data = 0;
    v24 = &data;
    v26 = c;
    v25 = 4;
  }

  CC_SHA256_Update(v26, v24, v25);
  v27 = (a1 - *a1);
  if (*v27 >= 0x11u && (v28 = v27[8]) != 0)
  {
    v29 = (a1 + v28);
    v30 = *v29;
    v31 = (v29 + v30 + 4);
    v32 = *(v29 + v30);
    v33 = c;
  }

  else
  {
    data = 0;
    v31 = &data;
    v33 = c;
    v32 = 4;
  }

  CC_SHA256_Update(v33, v31, v32);
  v34 = (a1 - *a1);
  if (*v34 >= 0x13u && (v35 = v34[9]) != 0)
  {
    v36 = v35;
    CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
    data = *(a1 + v36);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v37 = (a1 - *a1);
  if (*v37 >= 0x15u && (v38 = v37[10]) != 0)
  {
    v39 = v38;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v39);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v40 = (a1 - *a1);
  if (*v40 >= 0x17u && (v41 = v40[11]) != 0)
  {
    v42 = v41;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v42);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v43 = (a1 - *a1);
  if (*v43 >= 0x19u && (v44 = v43[12]) != 0)
  {
    v45 = v44;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v45);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v46 = (a1 - *a1);
  if (*v46 >= 0x1Bu && (v47 = v46[13]) != 0)
  {
    v48 = v47;
    CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
    data = *(a1 + v48);
  }

  else
  {
    data = 0;
  }

  return CC_SHA256_Update(c, &data, 4u);
}

uint64_t AirReflection::BitfieldInfo::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.BitfieldInfo", 0x1Au);
  data = *a1;
  CC_SHA256_Update(c, &data, 4u);
  v6 = a1[1];
  CC_SHA256_Update(c, &v6, 4u);
  v7 = a1[2];
  return CC_SHA256_Update(c, &v7, 4u);
}

uint64_t AirReflection::BoolValue::HashImpl(_BYTE *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.BoolValue", 0x17u);
  data = *a1 != 0;
  return CC_SHA256_Update(c, &data, 1u);
}

uint64_t *std::vector<unsigned char>::vector[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<signed char>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_257A27A94(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **std::__hash_table<std::__hash_value_type<CompilerOutputType,CompilerOutputBlock>,std::__unordered_map_hasher<CompilerOutputType,std::__hash_value_type<CompilerOutputType,CompilerOutputBlock>,std::hash<CompilerOutputType>,std::equal_to<CompilerOutputType>,true>,std::__unordered_map_equal<CompilerOutputType,std::__hash_value_type<CompilerOutputType,CompilerOutputBlock>,std::equal_to<CompilerOutputType>,std::hash<CompilerOutputType>,true>,std::allocator<std::__hash_value_type<CompilerOutputType,CompilerOutputBlock>>>::__emplace_unique_key_args<CompilerOutputType,CompilerOutputType&,CompilerOutputBlock>(void *a1, char *a2, _BYTE *a3, _OWORD *a4)
{
  v4 = *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (*&v5 <= v4)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (*(v9 + 16) != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

llvm::Value *MTLAddVertexFetchingToModulePass::convertAttributeToType(uint64_t a1, llvm::Type **a2, uint64_t a3, uint64_t a4, int a5, llvm::Value *ShuffleVector, unsigned int a7, int a8)
{
  v142 = *MEMORY[0x277D85DE8];
  v8 = &(&vertexFormats)[2 * a7];
  v9 = *(v8 + 5);
  if (!*(v8 + 5))
  {
    return 0;
  }

  v16 = *(a4 + 8);
  if (v16 == 16)
  {
    v17 = **(a4 + 16);
    v18 = *(v17 + 24);
LABEL_8:
    v19 = *(v17 + 32);
    goto LABEL_10;
  }

  v18 = a4;
  if ((v16 & 0xFE) == 0x12)
  {
    v18 = **(a4 + 16);
  }

  if (v16 == 18)
  {
    v17 = a4;
    goto LABEL_8;
  }

  v19 = 1;
LABEL_10:
  v20 = *(v8 + 3);
  v133 = v19;
  if (v19 >= v9)
  {
    v19 = *(v8 + 5);
  }

  v21 = v18;
  v132 = v19;
  if (v19 != 1)
  {
    v21 = vectorTypeGet(v18, v19);
  }

  v128 = a2;
  if (v20 > 0xF)
  {
    goto LABEL_27;
  }

  if (((1 << v20) & 0xF000) != 0)
  {
    goto LABEL_33;
  }

  if (((1 << v20) & 0x30) == 0)
  {
    if (((1 << v20) & 0x300) != 0)
    {
      v22 = *ShuffleVector;
      if (!*ShuffleVector || *(v22 + 8) != 18 || *(v22 + 32) != 4)
      {
        v23 = *a2;
        v24 = a3;
        v25 = ShuffleVector;
        v26 = v21;
        v27 = 4;
LABEL_26:
        v30 = expandVector(v23, v24, v25, v27);
        v21 = v26;
        ShuffleVector = v30;
        goto LABEL_33;
      }

      goto LABEL_33;
    }

LABEL_27:
    v31 = *ShuffleVector;
    v32 = 1;
    v126 = v21;
    if (*ShuffleVector && *(v31 + 8) == 18)
    {
      v32 = *(v31 + 32);
    }

    if (v132 < v32)
    {
      ShuffleVector = MTLFrameworkPass::truncateVector(*a2, a3, ShuffleVector, v132);
    }

    v21 = v126;
    goto LABEL_33;
  }

  if ((*(*ShuffleVector + 8) & 0xFE) != 0x12)
  {
    v23 = *a2;
    v24 = a3;
    v25 = ShuffleVector;
    v26 = v21;
    v27 = 2;
    goto LABEL_26;
  }

  if (*(*ShuffleVector + 32) == 3)
  {
    v28 = v21;
    v29 = llvm::UndefValue::get();
    v138[0] = xmmword_257A6DD80;
    v141 = 257;
    ShuffleVector = llvm::IRBuilderBase::CreateShuffleVector(a3, ShuffleVector, v29, v138, 4, __str);
    v21 = v28;
  }

LABEL_33:
  v33 = *(a3 + 64);
  v34 = v18[8];
  if (!v18[8])
  {
    goto LABEL_36;
  }

  if (v34 == 13)
  {
    v36 = *ShuffleVector;
    v37 = 1;
    v38 = v21;
    if (*ShuffleVector && *(v36 + 8) == 18)
    {
      v37 = *(v36 + 32);
    }

    if (v132 < v37)
    {
      ShuffleVector = MTLFrameworkPass::truncateVector(*(a3 + 64), a3, ShuffleVector, v132);
    }

    if (v20 > 6)
    {
      if (v20 <= 8)
      {
        v39 = v133;
        if (v20 != 7)
        {
          if ((*(a1 + 8) & 1) == 0)
          {
            goto LABEL_136;
          }

LABEL_104:
          v139 = 257;
          SExtOrTrunc = llvm::IRBuilderBase::CreateSExtOrTrunc(a3, ShuffleVector, v38, v138);
          goto LABEL_158;
        }
      }

      else
      {
        v39 = v133;
        if (v20 != 11)
        {
          if (v20 == 10)
          {
LABEL_133:
            if ((a5 & 1) == 0 && (*(a1 + 8) & 1) == 0)
            {
              MTLCompilerErrorObject::setFormattedErrorMessage(*a1, "Cannot convert attribute from %s to an unsigned integer type", *v8);
              return 0;
            }

            goto LABEL_104;
          }

          if (v20 != 9 || (*(a1 + 8) & 1) == 0)
          {
            goto LABEL_136;
          }

LABEL_72:
          v139 = 257;
          SExtOrTrunc = llvm::IRBuilderBase::CreateZExtOrTrunc(a3, ShuffleVector, v38, v138);
          goto LABEL_158;
        }
      }
    }

    else
    {
      if (v20 <= 2)
      {
        v39 = v133;
        if (v20 < 2)
        {
          if (*(a1 + 8) == 1)
          {
            if (v18 == llvm::Type::getInt32Ty(v33, a2) || v18 == llvm::Type::getInt16Ty(v33, v40) || v18 == llvm::Type::getInt1Ty(v33, v41))
            {
              if (v132 < 2)
              {
                snprintf(__str, 0x40uLL, "air.convert.%s.%s.f.%s");
              }

              else
              {
                snprintf(__str, 0x40uLL, "air.convert.%s.v%d%s.f.v%d%s");
              }

              SExtOrTrunc = callUnpackFunction(v128, a3, __str, v38, ShuffleVector);
              goto LABEL_158;
            }

            MTLCompilerErrorObject::setFormattedErrorMessage(*a1, "Cannot convert attribute from %s to int%d or uint%d", *v8, v133, v133);
            return 0;
          }

LABEL_136:
          MTLCompilerErrorObject::setFormattedErrorMessage(*a1, "Cannot convert attribute from %s to int%d or uint%d", *v8, v39, v39);
          return 0;
        }

        if (v20 != 2)
        {
          goto LABEL_136;
        }

        goto LABEL_133;
      }

      v39 = v133;
      if (v20 != 3)
      {
        if (v20 != 6)
        {
          goto LABEL_136;
        }

        goto LABEL_133;
      }
    }

    if (a5 && (*(a1 + 8) & 1) == 0)
    {
      MTLCompilerErrorObject::setFormattedErrorMessage(*a1, "Cannot convert attribute from %s to a signed integer type", *v8);
      return 0;
    }

    goto LABEL_72;
  }

  if (v34 != 2)
  {
    MTLCompilerErrorObject::setErrorMessage(*a1, "Unsupported attribute type");
    return 0;
  }

LABEL_36:
  if (v20 > 5)
  {
    if (v20 <= 0xF)
    {
      if (((1 << v20) & 0xC00) != 0)
      {
        if ((*(a1 + 8) & 1) == 0)
        {
          if (v34 == 2)
          {
            v90 = "float";
          }

          else
          {
            v90 = "half";
          }

          goto LABEL_142;
        }

        v68 = v21;
        if (v132 < 2)
        {
          snprintf(__str, 0x40uLL, "air.convert.f.%s.%c.i32");
        }

        else
        {
          snprintf(__str, 0x40uLL, "air.convert.f.v%d%s.%c.v%di32");
        }

        goto LABEL_138;
      }

      if (((1 << v20) & 0x3000) != 0)
      {
        if (v18[8])
        {
          v69 = "f32";
        }

        else
        {
          v69 = "f16";
        }

        v70 = 115;
        if (v20 == 13)
        {
          v70 = 117;
        }

        snprintf(__str, 0x40uLL, "air.unpack.%cnorm.rgb10a2.v4%s", v70, v69);
        v71 = vectorTypeGet(v18, 4u);
        v72 = callUnpackFunction(v128, a3, __str, v71, ShuffleVector);
        SExtOrTrunc = MTLFrameworkPass::truncateVector(v33, a3, v72, v132);
        goto LABEL_158;
      }

      if (((1 << v20) & 0xC000) != 0)
      {
        if (v18[8])
        {
          v42 = "f32";
        }

        else
        {
          v42 = "f16";
        }

        v43 = "rgb9e5";
        if (v20 == 14)
        {
          v43 = "rg11b10f";
        }

        snprintf(__str, 0x40uLL, "air.unpack.unorm.%s.v3%s", v43, v42);
        v44 = vectorTypeGet(v18, 3u);
        v45 = callUnpackFunction(v128, a3, __str, v44, ShuffleVector);
        SExtOrTrunc = MTLFrameworkPass::truncateVector(v33, a3, v45, v132);
        goto LABEL_158;
      }
    }

    if ((v20 - 6) >= 2)
    {
      if ((v20 - 8) < 2)
      {
        Int32Ty = llvm::Type::getInt32Ty(*(a3 + 64), a2);
        v139 = 257;
        Cast = llvm::IRBuilderBase::CreateCast(a3, 49, ShuffleVector, Int32Ty, v138);
        v48 = "air.unpack.snorm4x8.v4f16";
        if (v20 == 9)
        {
          v48 = "air.unpack.unorm4x8.v4f16";
        }

        v49 = "air.unpack.unorm4x8.v4f32";
        if (v20 != 9)
        {
          v49 = "air.unpack.snorm4x8.v4f32";
        }

        if (v18[8])
        {
          v50 = v49;
        }

        else
        {
          v50 = v48;
        }

        v51 = vectorTypeGet(v18, 4u);
        v52 = callUnpackFunction(v128, a3, v50, v51, Cast);
        if (a7 == 42)
        {
          v136 = xmmword_257A6DDA0;
          v139 = 257;
          v52 = llvm::IRBuilderBase::CreateShuffleVector(a3, v52, v52, &v136, 4, v138);
        }

        SExtOrTrunc = MTLFrameworkPass::truncateVector(v33, a3, v52, v132);
        goto LABEL_158;
      }

LABEL_147:
      if (v34 == 2)
      {
        v90 = "float";
      }

      else
      {
        v90 = "half";
      }

LABEL_142:
      MTLCompilerErrorObject::setFormattedErrorMessage(*a1, "Cannot convert attribute from %s to %s%d", *v8, v90, v133);
      return 0;
    }

    v68 = v21;
    if (v132 < 2)
    {
      snprintf(__str, 0x40uLL, "air.convert.f.%s.%c.i8");
    }

    else
    {
      snprintf(__str, 0x40uLL, "air.convert.f.v%d%s.%c.v%di8");
    }

LABEL_138:
    SExtOrTrunc = callUnpackFunction(v128, a3, __str, v68, ShuffleVector);
    goto LABEL_158;
  }

  if (v20 > 3)
  {
    if (a8)
    {
      v53 = "air.unpack.snorm2x16.v2f16";
      if (v20 == 5)
      {
        v53 = "air.unpack.unorm2x16.v2f16";
        v54 = "air.unpack.unorm2x16.v2f32";
      }

      else
      {
        v54 = "air.unpack.snorm2x16.v2f32";
      }

      if (v18[8])
      {
        v55 = v54;
      }

      else
      {
        v55 = v53;
      }

      v56 = ShuffleVector;
      if (v9 >= 3)
      {
        v56 = MTLFrameworkPass::truncateVector(*(a3 + 64), a3, ShuffleVector, 2);
      }

      v57 = llvm::Type::getInt32Ty(v33, a2);
      v139 = 257;
      v58 = llvm::IRBuilderBase::CreateCast(a3, 49, v56, v57, v138);
      v59 = vectorTypeGet(v18, 2u);
      v60 = callUnpackFunction(v128, a3, v55, v59, v58);
      if (v9 > 2)
      {
        v134 = 0x300000002;
        v139 = 257;
        v61 = llvm::IRBuilderBase::CreateShuffleVector(a3, ShuffleVector, ShuffleVector, &v134, 2, v138);
        v63 = llvm::Type::getInt32Ty(v33, v62);
        v139 = 257;
        v64 = llvm::IRBuilderBase::CreateCast(a3, 49, v61, v63, v138);
        v65 = vectorTypeGet(v18, 2u);
        v66 = callUnpackFunction(v128, a3, v55, v65, v64);
        v136 = xmmword_257A6DD80;
        v139 = 257;
        v60 = llvm::IRBuilderBase::CreateShuffleVector(a3, v60, v66, &v136, v9, v138);
      }

      SExtOrTrunc = MTLFrameworkPass::truncateVector(v33, a3, v60, v132);
    }

    else
    {
      v73 = 2;
      if (v9 <= 2)
      {
        v74 = 2;
      }

      else
      {
        v74 = 4;
      }

      if (v9 > 2)
      {
        v73 = 4;
      }

      v75 = 115;
      if (v20 == 5)
      {
        v75 = 117;
      }

      snprintf(__str, 0x40uLL, "air.convert.f.v%df32.%c.v%di16", v73, v75, v73);
      llvm::Type::getFloatTy(*(a3 + 64), v76);
      llvm::ConstantFP::get();
      v139 = 257;
      VectorSplat = llvm::IRBuilderBase::CreateVectorSplat();
      FloatTy = llvm::Type::getFloatTy(*(a3 + 64), v78);
      v80 = vectorTypeGet(FloatTy, v74);
      v81 = callUnpackFunction(v128, a3, __str, v80, ShuffleVector);
      v82 = *(a3 + 96);
      v83 = *(a3 + 88);
      v125 = *(a3 + 100);
      v127 = *(a3 + 101);
      v130 = *(a3 + 102);
      *(a3 + 96) = -1;
      v139 = 257;
      FDiv = llvm::IRBuilderBase::CreateFDiv(a3, v81, VectorSplat, v138, 0);
      if (v20 == 4)
      {
        snprintf(__str, 0x40uLL, "air.fmax.v%df32", v74);
        llvm::Type::getFloatTy(*(a3 + 64), v85);
        v86 = v132;
        llvm::ConstantFP::get();
        v139 = 257;
        v87 = llvm::IRBuilderBase::CreateVectorSplat();
        *&v138[0] = FDiv;
        *(&v138[0] + 1) = v87;
        v88 = vectorTypeGet(v18, v74);
        FDiv = MTLFrameworkPass::callFunction(v128, a3, __str, v88, v138, 2, 0);
      }

      else
      {
        v86 = v132;
      }

      if (!v18[8])
      {
        snprintf(__str, 0x40uLL, "air.convert.f.v%df16.f.v%df32", v74, v74);
        v91 = vectorTypeGet(v18, v74);
        FDiv = callUnpackFunction(v128, a3, __str, v91, FDiv);
      }

      *(a3 + 96) = v82;
      *(a3 + 88) = v83;
      *(a3 + 100) = v125;
      *(a3 + 101) = v127;
      *(a3 + 102) = v130;
      SExtOrTrunc = MTLFrameworkPass::truncateVector(v33, a3, FDiv, v86);
    }

    goto LABEL_158;
  }

  if ((v20 - 2) < 2)
  {
    v67 = v21;
    if (v132 < 2)
    {
      snprintf(__str, 0x40uLL, "air.convert.f.%s.%c.i16");
    }

    else
    {
      snprintf(__str, 0x40uLL, "air.convert.f.v%d%s.%c.v%di16");
    }

    SExtOrTrunc = callUnpackFunction(v128, a3, __str, v67, ShuffleVector);
    goto LABEL_158;
  }

  if (v20)
  {
    if (v20 == 1)
    {
      if (v34 != 2)
      {
LABEL_159:
        v89 = v133;
        goto LABEL_160;
      }

      v139 = 257;
      SExtOrTrunc = llvm::IRBuilderBase::CreateFPExt(a3, ShuffleVector, v21, v138);
LABEL_158:
      ShuffleVector = SExtOrTrunc;
      goto LABEL_159;
    }

    goto LABEL_147;
  }

  v89 = v133;
  if (!v18[8])
  {
    v139 = 257;
    SExtOrTrunc = llvm::IRBuilderBase::CreateFPTrunc(a3, ShuffleVector, v21, v138);
    goto LABEL_158;
  }

LABEL_160:
  v93 = a4;
  if (v89 > v9)
  {
    if (v132 == 1)
    {
      v94 = 0;
      v136 = 0u;
      v137 = 0u;
      v95 = 8 * v89;
      do
      {
        if (v18[8] == 13)
        {
          v96 = llvm::ConstantInt::get();
        }

        else
        {
          v96 = llvm::ConstantFP::get();
        }

        *(&v136 + v94) = v96;
        v94 += 8;
      }

      while (v95 != v94);
      v97 = llvm::ConstantVector::get();
      llvm::Type::getInt32Ty(v33, v98);
      v99 = llvm::ConstantInt::get();
      v139 = 257;
      InsertElement = llvm::IRBuilderBase::CreateInsertElement(a3, v97, ShuffleVector, v99, v138, v100);
    }

    else
    {
      v102 = 0;
      v136 = 0u;
      v137 = 0u;
      if (v132 <= 1)
      {
        v103 = 1;
      }

      else
      {
        v103 = v132;
      }

      v104 = 8 * v103;
      do
      {
        if (v18[8] == 13)
        {
          v105 = llvm::ConstantInt::get();
        }

        else
        {
          v105 = llvm::ConstantFP::get();
        }

        *(&v136 + v102) = v105;
        v102 += 8;
      }

      while (v104 != v102);
      v106 = llvm::ConstantVector::get();
      v107 = vdupq_n_s64(v133 - 1);
      v108 = &v135;
      v109 = xmmword_257A6DA10;
      v110 = xmmword_257A6D000;
      v111 = 3;
      v112 = vdupq_n_s64(4uLL);
      do
      {
        v113 = vmovn_s64(vcgeq_u64(v107, v110));
        if (vuzp1_s16(v113, *v107.i8).u8[0])
        {
          v114 = v111 - 3;
          if (v111 - 3 >= v9)
          {
            v114 = v132 + 1;
          }

          *(v108 - 2) = v114;
        }

        if (vuzp1_s16(v113, *&v107).i8[2])
        {
          v115 = v111 - 2;
          if (v111 - 2 >= v9)
          {
            v115 = v132 + 1;
          }

          *(v108 - 1) = v115;
        }

        v116 = vmovn_s64(vcgeq_u64(v107, v109));
        if (vuzp1_s16(*&v107, v116).i32[1])
        {
          v117 = v111 - 1;
          if (v111 - 1 >= v9)
          {
            v117 = v132 + 1;
          }

          *v108 = v117;
        }

        if (vuzp1_s16(*&v107, v116).i8[6])
        {
          if (v111 == 3)
          {
            v118 = v132;
          }

          else
          {
            v118 = v132 + 1;
          }

          if (v111 < v9)
          {
            v118 = v111;
          }

          v108[1] = v118;
        }

        v109 = vaddq_s64(v109, v112);
        v110 = vaddq_s64(v110, v112);
        v111 += 4;
        v108 += 4;
      }

      while (v111 - ((v133 + 3) & 0xFFFFFFFC) != 3);
      v139 = 257;
      InsertElement = llvm::IRBuilderBase::CreateShuffleVector(a3, ShuffleVector, v106, &v134, v133, v138);
    }

    ShuffleVector = InsertElement;
    v93 = a4;
  }

  if (*(v93 + 8) != 16)
  {
    return ShuffleVector;
  }

  InsertValue = llvm::UndefValue::get();
  if (v133)
  {
    for (i = 0; i != v133; ++i)
    {
      llvm::Type::getInt32Ty(v33, v119);
      v121 = llvm::ConstantInt::get();
      v139 = 257;
      Element = llvm::IRBuilderBase::CreateExtractElement(a3, ShuffleVector, v121, v138, v122);
      LODWORD(v136) = 0;
      DWORD1(v136) = i;
      v139 = 257;
      InsertValue = llvm::IRBuilderBase::CreateInsertValue(a3, InsertValue, Element, &v136, 2, v138);
    }
  }

  return InsertValue;
}

void sub_257A28D88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, char a15, __int16 a16, char a17, uint64_t a18, char a19)
{
  *(v19 + 96) = v21;
  *(v19 + 88) = v20;
  *(v19 + 100) = a15;
  *(v19 + 101) = a17;
  *(v19 + 102) = a19;
  _Unwind_Resume(a1);
}

llvm::Value *expandVector(llvm::Type *a1, unsigned int **a2, llvm::Value *a3, unsigned int a4)
{
  v5 = a3;
  v22 = *MEMORY[0x277D85DE8];
  v8 = *a3;
  v9 = *(*a3 + 8);
  if (*a3)
  {
    v10 = v9 == 18;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v11 = *(v8 + 8);
  }

  else
  {
    v11 = 1;
  }

  if (v11 < a4)
  {
    if ((v9 & 0xFE) == 0x12)
    {
      v12 = llvm::UndefValue::get();
      v21 = xmmword_257A6DD80;
      v20 = 257;
      return llvm::IRBuilderBase::CreateShuffleVector(a2, v5, v12, &v21, a4, v19);
    }

    else
    {
      vectorTypeGet(v8, a4);
      v14 = llvm::UndefValue::get();
      llvm::Type::getInt32Ty(a1, v15);
      v16 = llvm::ConstantInt::get();
      v20 = 257;
      return llvm::IRBuilderBase::CreateInsertElement(a2, v14, v5, v16, v19, v17);
    }
  }

  return v5;
}

uint64_t llvm::IRBuilderBase::CreateFPTrunc(llvm::IRBuilderBase *this, llvm::Value *a2, llvm::Type *a3, const llvm::Twine *a4)
{
  if (*(this + 100) == 1)
  {
    return llvm::IRBuilderBase::CreateConstrainedFPCast();
  }

  return llvm::IRBuilderBase::CreateCast(this, 45, a2, a3, a4);
}

uint64_t llvm::IRBuilderBase::CreateFPExt(llvm::IRBuilderBase *this, llvm::Value *a2, llvm::Type *a3, const llvm::Twine *a4)
{
  if (*(this + 100) == 1)
  {
    return llvm::IRBuilderBase::CreateConstrainedFPCast();
  }

  return llvm::IRBuilderBase::CreateCast(this, 46, a2, a3, a4);
}

uint64_t callUnpackFunction(uint64_t a1, uint64_t a2, char *__s, uint64_t a4, void *a5)
{
  v17[2] = *MEMORY[0x277D85DE8];
  v17[0] = a5;
  if (__s)
  {
    strlen(__s);
  }

  Function = llvm::Module::getFunction();
  if (Function)
  {
    v10 = Function;
  }

  else
  {
    v17[1] = *a5;
    v11 = 1;
    v12 = llvm::FunctionType::get();
    HIBYTE(v16) = 1;
    if (*__s)
    {
      v15[0] = __s;
      v11 = 3;
    }

    LOBYTE(v16) = v11;
    v10 = llvm::Function::Create(v12, 0, v15, a1);
    llvm::Function::addFnAttr();
    llvm::Function::addFnAttr();
    if (!v10)
    {
      v13 = 0;
      goto LABEL_9;
    }
  }

  v13 = *(v10 + 24);
LABEL_9:
  v16 = 257;
  result = llvm::IRBuilderBase::CreateCall(a2, v13, v10, v17, 1, v15, 0);
  *(result + 18) = *(result + 18) & 0xFFFC | 1;
  return result;
}

uint64_t llvm::IRBuilderBase::CreateFDiv(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a1 + 100) == 1)
  {
    return llvm::IRBuilderBase::CreateConstrainedFPBinOp();
  }

  result = llvm::IRBuilderBase::foldConstant(a1, 21, a2, a3, a4);
  if (!result)
  {
    v9 = llvm::BinaryOperator::Create();
    v10 = llvm::IRBuilderBase::setFPAttrs(a1, v9, a5, *(a1 + 96));
    return llvm::IRBuilderBase::Insert<llvm::CastInst>(a1, v10, a4);
  }

  return result;
}

llvm::Type **llvm::IRBuilderBase::CreateZExtOrTrunc(llvm::IRBuilderBase *this, llvm::Type **a2, llvm::Type *a3, const llvm::Twine *a4)
{
  ScalarSizeInBits = llvm::Type::getScalarSizeInBits(*a2);
  v9 = llvm::Type::getScalarSizeInBits(a3);
  if (ScalarSizeInBits >= v9)
  {
    if (ScalarSizeInBits <= v9)
    {
      return a2;
    }

    v10 = 38;
  }

  else
  {
    v10 = 39;
  }

  return llvm::IRBuilderBase::CreateCast(this, v10, a2, a3, a4);
}

llvm::Type **llvm::IRBuilderBase::CreateSExtOrTrunc(llvm::IRBuilderBase *this, llvm::Type **a2, llvm::Type *a3, const llvm::Twine *a4)
{
  ScalarSizeInBits = llvm::Type::getScalarSizeInBits(*a2);
  v9 = llvm::Type::getScalarSizeInBits(a3);
  if (ScalarSizeInBits >= v9)
  {
    if (ScalarSizeInBits <= v9)
    {
      return a2;
    }

    v10 = 38;
  }

  else
  {
    v10 = 40;
  }

  return llvm::IRBuilderBase::CreateCast(this, v10, a2, a3, a4);
}

uint64_t getRequiredBuiltIns(uint64_t result, _BYTE *a2, int a3, unsigned int a4, BOOL *a5, _BYTE *a6, int a7)
{
  v7 = *result;
  v8 = *(*result + 5);
  if (a3 > 3)
  {
    if (a3 > 5)
    {
      if (a3 == 6)
      {
LABEL_7:
        LOBYTE(v8) = 2;
        goto LABEL_26;
      }

      if (a3 != 7)
      {
        if (a3 == 8)
        {
          *a2 = 1;
          goto LABEL_7;
        }

LABEL_16:
        abort();
      }

      *a2 = 1;
LABEL_24:
      if (v8 <= 1)
      {
        LOBYTE(v8) = 1;
      }

      goto LABEL_26;
    }

    if (a3 != 4)
    {
      goto LABEL_24;
    }

    v7[3] = 1;
    *a5 = a7 != 0;
    v7 = a6;
    goto LABEL_20;
  }

  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v7[1] = 1;
      if (a4 < 2)
      {
        goto LABEL_21;
      }

      v7 = (*result + 2);
    }

    else
    {
      v7 += 3;
    }

LABEL_20:
    *v7 = 1;
    goto LABEL_21;
  }

  if (a3)
  {
    if (a3 != 1)
    {
      goto LABEL_16;
    }

    goto LABEL_20;
  }

LABEL_21:
  if (!v8)
  {
    return result;
  }

  v7 = *result;
LABEL_26:
  v7[5] = v8;
  *(*result + 6) = v8;
  *(*result + 7) = v8;
  return result;
}

llvm::Value *loadPackedVector(unsigned int **a1, uint64_t *a2, uint64_t a3, unsigned int a4)
{
  v30 = *MEMORY[0x277D85DE8];
  v8 = **(a3 + 16);
  v9 = *(v8 + 32);
  v10 = **(v8 + 16);
  ScalarSizeInBits = llvm::Type::getScalarSizeInBits(v10);
  vectorTypeGet(v10, v9);
  InsertElement = llvm::UndefValue::get();
  llvm::Type::getInt32Ty(*a3, v13);
  if (v9)
  {
    v14 = 0;
    v15 = v9;
    LODWORD(v16) = (ScalarSizeInBits + 7) >> 3;
    if (v16 >= a4)
    {
      v16 = a4;
    }

    else
    {
      v16 = v16;
    }

    v17 = __clz(v16) ^ 0x13F;
    if (v16)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    do
    {
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v27 = llvm::ConstantInt::get();
      v28 = llvm::ConstantInt::get();
      v29 = llvm::ConstantInt::get();
      v26 = 257;
      v19 = llvm::IRBuilderBase::CreateGEP(a1, a3, a2, &v27, 3, v25);
      v20 = *(v19 + 72);
      v26 = 257;
      AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad(a1, v20, v19, v18, 0, v25);
      v22 = llvm::ConstantInt::get();
      v26 = 257;
      InsertElement = llvm::IRBuilderBase::CreateInsertElement(a1, InsertElement, AlignedLoad, v22, v25, v23);
      ++v14;
    }

    while (v15 != v14);
  }

  return InsertElement;
}

llvm::ArrayType *getTypeFromVertexAttribFormat(llvm::Type *this, llvm::LLVMContext *a2, void *a3, void *a4, int a5)
{
  switch(a2)
  {
    case 1:
    case 4:
    case 7:
    case 10:
      *a3 = 2;
      *a4 = 1;
      result = llvm::Type::getInt8Ty(this, a2);
      if (a5)
      {
        goto LABEL_38;
      }

      goto LABEL_39;
    case 2:
    case 5:
    case 8:
    case 11:
      *a3 = 3;
      *a4 = 1;
      result = llvm::Type::getInt8Ty(this, a2);
      if (!a5)
      {
        goto LABEL_39;
      }

      goto LABEL_20;
    case 3:
    case 6:
    case 9:
    case 12:
    case 42:
      *a3 = 4;
      *a4 = 1;
      result = llvm::Type::getInt8Ty(this, a2);
      goto LABEL_39;
    case 13:
    case 16:
    case 19:
    case 22:
      *a3 = 4;
      *a4 = 2;
      result = llvm::Type::getInt16Ty(this, a2);
      goto LABEL_38;
    case 14:
    case 17:
    case 20:
    case 23:
      *a3 = 6;
      *a4 = 2;
      result = llvm::Type::getInt16Ty(this, a2);
      if (!a5)
      {
        goto LABEL_39;
      }

      goto LABEL_20;
    case 15:
    case 18:
    case 21:
    case 24:
      *a3 = 8;
      *a4 = 2;
      result = llvm::Type::getInt16Ty(this, a2);
      goto LABEL_39;
    case 25:
      *a3 = 4;
      *a4 = 2;
      result = llvm::Type::getHalfTy(this, a2);
      goto LABEL_38;
    case 26:
      *a3 = 6;
      *a4 = 2;
      result = llvm::Type::getHalfTy(this, a2);
      FloatTy = result;
      if (a5)
      {
        goto LABEL_30;
      }

      goto LABEL_39;
    case 27:
      *a3 = 8;
      *a4 = 2;
      result = llvm::Type::getHalfTy(this, a2);
      goto LABEL_39;
    case 28:
      *a3 = 4;
      *a4 = 4;

      return llvm::Type::getFloatTy(this, a2);
    case 29:
      *a3 = 8;
      *a4 = 4;
      result = llvm::Type::getFloatTy(this, a2);
      goto LABEL_38;
    case 30:
      *a3 = 12;
      *a4 = 4;
      FloatTy = llvm::Type::getFloatTy(this, a2);
LABEL_30:

      return getUnpackedVectorType(this, FloatTy, 3uLL);
    case 31:
      *a3 = 16;
      *a4 = 4;
      result = llvm::Type::getFloatTy(this, a2);
      goto LABEL_39;
    case 32:
    case 36:
    case 40:
    case 41:
    case 43:
    case 44:
    case 54:
    case 55:
      *a3 = 4;
      *a4 = 4;

      return llvm::Type::getInt32Ty(this, a2);
    case 33:
    case 37:
      *a3 = 8;
      *a4 = 4;
      result = llvm::Type::getInt32Ty(this, a2);
      goto LABEL_38;
    case 34:
    case 38:
      *a3 = 12;
      *a4 = 4;
      result = llvm::Type::getInt32Ty(this, a2);
LABEL_20:
      llvm::ArrayType::get(result, 3);
      return llvm::StructType::get();
    case 35:
    case 39:
      *a3 = 16;
      *a4 = 4;
      result = llvm::Type::getInt32Ty(this, a2);
      goto LABEL_39;
    case 45:
    case 46:
    case 47:
    case 48:
      *a3 = 1;
      *a4 = 1;
      result = llvm::Type::getInt8Ty(this, a2);
      if (a5)
      {
        return result;
      }

LABEL_39:
      v9 = 4;
      goto LABEL_40;
    case 49:
    case 50:
    case 51:
    case 52:
      *a3 = 2;
      *a4 = 2;
      result = llvm::Type::getInt16Ty(this, a2);
      if ((a5 & 1) == 0)
      {
        goto LABEL_38;
      }

      return result;
    case 53:
      *a3 = 2;
      *a4 = 2;
      result = llvm::Type::getHalfTy(this, a2);
      if (a5)
      {
        return result;
      }

LABEL_38:
      v9 = 2;
LABEL_40:

      return vectorTypeGet(result, v9);
    default:
      result = 0;
      *a3 = 0;
      *a4 = 0;
      return result;
  }
}

uint64_t updateMTLGLFragmentInputList(int a1, uint64_t a2)
{
  v2 = a2;
  if (a1)
  {
    return (4 * (MTLDataTypeGetVectorDataType((a2 >> 5) & 0x3F, ((a2 >> 11) & 3) + 1) & 0x3F)) | ((a2 & 0x1F) << 8) | 0xFFFF8000;
  }

  return v2;
}

uint64_t MTLAddVertexFetchingToModulePass::expandVertexOutputWithFragmentInput(uint64_t a1, llvm::Type *a2, uint64_t a3, uint64_t a4, uint64_t *a5, void *a6, unsigned __int16 *a7, uint64_t *a8, unsigned __int8 a9)
{
  v9 = a7;
  v84 = *MEMORY[0x277D85DE8];
  if (a7)
  {
    LODWORD(v13) = *a7;
  }

  else
  {
    v13 = (a6[1] - *a6) >> 5;
  }

  v14 = v13;
  if (!v13)
  {
    return a3;
  }

  v15 = 0;
  v71 = a7 + 1;
  v79 = 0u;
  v80 = 0u;
  v81 = 1065353216;
  do
  {
    while (!v9)
    {
      v19 = *a6 + 32 * v15;
      v20 = *(v19 + 16);
      if (v20 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v21 = *(v19 + 8);
      if (v20 >= 0x17)
      {
        operator new();
      }

      BYTE7(v83) = *(v19 + 16);
      if (v20)
      {
        memmove(&__dst, v21, v20);
      }

      v9 = a7;
      *(&__dst + v20) = 0;
      v22 = *(v19 + 24);
      v77[0] = &__dst;
      *(std::__hash_table<std::__hash_value_type<std::string,MTLCompilerDataType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MTLCompilerDataType>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v79, &__dst, &std::piecewise_construct, v77, __p) + 10) = v22;
      if (SBYTE7(v83) < 0)
      {
        operator delete(__dst);
      }

      if (++v15 == v14)
      {
        v24 = *(a4 + 8);
        goto LABEL_41;
      }
    }

    updated = updateMTLGLFragmentInputList(a9, v71[v15]);
    v17 = updated >> 2;
    if ((updated & 3) != 0)
    {
      if ((updated & 3) != 1)
      {
        abort();
      }

      __dst = 0uLL;
      *&v83 = 0;
      v18 = (updated >> 8) & 0x1F;
      if (v18 == 3)
      {
        std::string::basic_string[abi:ne200100]<0>(v77, "user(sec_front_color)");
        if (SBYTE7(v83) < 0)
        {
          operator delete(__dst);
        }

        __dst = *v77;
        *&v83 = v78;
        v77[0] = &__dst;
        *(std::__hash_table<std::__hash_value_type<std::string,MTLCompilerDataType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MTLCompilerDataType>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v79, &__dst, &std::piecewise_construct, v77, __p) + 10) = v17;
        std::string::basic_string[abi:ne200100]<0>(v77, "user(sec_back_color)");
        if (SBYTE7(v83) < 0)
        {
          operator delete(__dst);
        }
      }

      else
      {
        if (v18 != 2)
        {
LABEL_36:
          if ((SBYTE7(v83) & 0x80000000) == 0)
          {
            goto LABEL_39;
          }

          v23 = __dst;
          goto LABEL_38;
        }

        std::string::basic_string[abi:ne200100]<0>(v77, "user(front_color)");
        if (SBYTE7(v83) < 0)
        {
          operator delete(__dst);
        }

        __dst = *v77;
        *&v83 = v78;
        v77[0] = &__dst;
        *(std::__hash_table<std::__hash_value_type<std::string,MTLCompilerDataType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MTLCompilerDataType>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v79, &__dst, &std::piecewise_construct, v77, __p) + 10) = v17;
        std::string::basic_string[abi:ne200100]<0>(v77, "user(back_color)");
        if (SBYTE7(v83) < 0)
        {
          operator delete(__dst);
        }
      }

      __dst = *v77;
      *&v83 = v78;
      v77[0] = &__dst;
      *(std::__hash_table<std::__hash_value_type<std::string,MTLCompilerDataType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MTLCompilerDataType>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v79, &__dst, &std::piecewise_construct, v77, __p) + 10) = v17;
      goto LABEL_36;
    }

    __dst = 0u;
    v83 = 0u;
    if ((updated & 0xB800) == 0x800)
    {
      snprintf(&__dst, 0x1FuLL, "user(tex_coord%u)");
    }

    else
    {
      snprintf(&__dst, 0x1FuLL, "user(slot%u)");
    }

    std::string::basic_string[abi:ne200100]<0>(v77, &__dst);
    __p[0] = v77;
    *(std::__hash_table<std::__hash_value_type<std::string,MTLCompilerDataType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MTLCompilerDataType>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v79, v77, &std::piecewise_construct, __p, &v75) + 10) = v17;
    if (SHIBYTE(v78) < 0)
    {
      v23 = v77[0];
LABEL_38:
      operator delete(v23);
    }

LABEL_39:
    ++v15;
  }

  while (v15 != v14);
  v24 = *(a4 + 8);
  std::vector<MTLAddVertexFetchingToModulePass::ModifiedOutput>::resize(a8, v24);
LABEL_41:
  std::vector<llvm::Type *>::vector[abi:ne200100](v77, v24);
  v25 = a2;
  if (!v24)
  {
    v44 = v80;
    if (!v80)
    {
      goto LABEL_132;
    }

    goto LABEL_76;
  }

  v26 = 0;
  v72 = 0;
  while (2)
  {
    v27 = *a8;
    v28 = *(a4 - 8 * *(a4 + 8) + 8 * v26);
    String = llvm::MDString::getString(*(v28 - 8 * *(v28 + 8)));
    v31 = a3;
    if (*(a3 + 8) == 16)
    {
      v31 = *(*(a3 + 16) + 8 * v26);
    }

    if (v30 == 17)
    {
      v32 = *String == 0x747265762E726961 && *(String + 8) == 0x757074756F5F7865;
      if (v32 && *(String + 16) == 116)
      {
        v35 = llvm::MDString::getString(*(v28 - 8 * *(v28 + 8) + 8));
        if (v35)
        {
          v36 = v34;
          if (v34 > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          if (v34 >= 0x17)
          {
            operator new();
          }

          BYTE7(v83) = v34;
          if (v34)
          {
            memmove(&__dst, v35, v34);
          }

          v25 = a2;
          *(&__dst + v36) = 0;
        }

        else
        {
          __dst = 0uLL;
          *&v83 = 0;
          v25 = a2;
        }

        v37 = std::__hash_table<std::__hash_value_type<std::string,MTLCompilerDataType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MTLCompilerDataType>>>::find<std::string>(&v79, &__dst);
        v38 = v37;
        if (SBYTE7(v83) < 0)
        {
          operator delete(__dst);
          if (!v38)
          {
            goto LABEL_71;
          }
        }

        else if (!v37)
        {
          goto LABEL_71;
        }

        if (v9)
        {
          v39 = *(v38 + 10);
          ComponentType = MTLDataTypeGetComponentType(v39);
          ComponentCount = MTLDataTypeGetComponentCount(v39);
          v42 = ComponentCount;
          LLVMVectorType = MTLFrameworkPass::getLLVMVectorType(a2, ComponentType, ComponentCount);
          if (LLVMVectorType != v31)
          {
            *(v27 + 2 * v26) = *(v27 + 2 * v26) & 0xFC00 | (2 * (ComponentType & 0x3F)) & 0x7F | ((v42 & 7) << 7) | 1;
            v72 = 1;
            v31 = LLVMVectorType;
          }
        }

        std::__hash_table<std::__hash_value_type<std::string,MTLCompilerDataType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MTLCompilerDataType>>>::erase(&v79, v38);
        v25 = a2;
      }
    }

LABEL_71:
    *(v77[0] + v26++) = v31;
    if (v24 != v26)
    {
      continue;
    }

    break;
  }

  v44 = v80;
  if (!v80)
  {
    if ((v72 & 1) == 0)
    {
      goto LABEL_132;
    }

    goto LABEL_82;
  }

  do
  {
LABEL_76:
    if (*(v44 + 39) < 0)
    {
      std::string::__init_copy_ctor_external(&__dst, v44[2], v44[3]);
    }

    else
    {
      __dst = *(v44 + 1);
      *&v83 = v44[4];
    }

    v45 = *(v44 + 10);
    DWORD2(v83) = v45;
    v46 = MTLDataTypeGetComponentType(v45);
    v47 = MTLDataTypeGetComponentCount(v45);
    __p[0] = MTLFrameworkPass::getLLVMVectorType(v25, v46, v47);
    std::vector<llvm::CallGraphNode *>::push_back[abi:ne200100](v77, __p);
    if (SBYTE7(v83) < 0)
    {
      operator delete(__dst);
    }

    v44 = *v44;
  }

  while (v44);
LABEL_82:
  v73 = v77[1] - v77[0];
  std::vector<llvm::Metadata *>::vector[abi:ne200100](__p, (v77[1] - v77[0]) >> 3);
  if (v24)
  {
    for (i = 0; i != v24; ++i)
    {
      Impl = *(a4 - 8 * *(a4 + 8) + 8 * i);
      if (v9)
      {
        v50 = *(*a8 + 2 * i);
        if (v50)
        {
          v51 = *(Impl + 8);
          std::vector<llvm::Metadata *>::vector[abi:ne200100](&__dst, v51);
          if (v51)
          {
            for (j = 0; j < v51; ++j)
            {
              v53 = *(Impl - 8 * *(Impl + 8) + 8 * j);
              if (!*v53)
              {
                v54 = llvm::MDString::getString(*(Impl - 8 * *(Impl + 8) + 8 * j));
                if (v55 == 17)
                {
                  v56 = *v54 == 0x5F6772612E726961 && *(v54 + 8) == 0x6D616E5F65707974;
                  if (v56 && *(v54 + 16) == 101)
                  {
                    *(__dst + 8 * j++) = v53;
                    if (j < v51)
                    {
                      ShaderTypeName = MTLDataTypeGetShaderTypeName((v50 >> 1) & 0x3F, (v50 >> 7) & 7);
                      if (ShaderTypeName)
                      {
                        strlen(ShaderTypeName);
                      }

                      v53 = llvm::MDString::get();
                    }
                  }
                }
              }

              *(__dst + 8 * j) = v53;
            }
          }

          v25 = a2;
          Impl = llvm::MDTuple::getImpl();
          v9 = a7;
          if (__dst)
          {
            *(&__dst + 1) = __dst;
            operator delete(__dst);
          }
        }
      }

      *(__p[0] + i) = Impl;
    }
  }

  for (k = v80; k; LODWORD(v24) = v24 + 1)
  {
    if (*(k + 39) < 0)
    {
      std::string::__init_copy_ctor_external(&__dst, k[2], k[3]);
    }

    else
    {
      __dst = *(k + 1);
      *&v83 = k[4];
    }

    v60 = *(k + 10);
    DWORD2(v83) = v60;
    if (SBYTE7(v83) < 0)
    {
      std::string::__init_copy_ctor_external(&v75, __dst, *(&__dst + 1));
    }

    else
    {
      *&v75.__r_.__value_.__l.__data_ = __dst;
      v75.__r_.__value_.__r.__words[2] = v83;
    }

    v61 = MTLDataTypeGetComponentType(v60);
    v62 = MTLDataTypeGetComponentCount(v60);
    if (v61 == 3 || v61 == 16)
    {
      v64 = 1;
    }

    else
    {
      v64 = 2;
    }

    if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v65 = &v75;
    }

    else
    {
      v65 = v75.__r_.__value_.__r.__words[0];
    }

    VertexOutputMetadata = MTLFrameworkPass::createVertexOutputMetadata(v25, v65, v61, v62, 1, v64, -1, 0);
    *(__p[0] + v24) = VertexOutputMetadata;
    if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v75.__r_.__value_.__l.__data_);
    }

    if (SBYTE7(v83) < 0)
    {
      operator delete(__dst);
    }

    k = *k;
  }

  *a5 = llvm::MDTuple::getImpl();
  if (v73 == 8)
  {
    a3 = *v77[0];
  }

  else
  {
    a3 = llvm::StructType::get();
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

LABEL_132:
  if (v77[0])
  {
    v77[1] = v77[0];
    operator delete(v77[0]);
  }

  std::__hash_table<std::__hash_value_type<std::string,MTLCompilerDataType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MTLCompilerDataType>>>::~__hash_table(&v79);
  return a3;
}

void std::vector<MTLAddVertexFetchingToModulePass::ModifiedOutput>::resize(void *result, unint64_t a2)
{
  v2 = (result[1] - *result) >> 1;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      result[1] = *result + 2 * a2;
    }
  }

  else
  {
    std::vector<MTLAddVertexFetchingToModulePass::ModifiedOutput>::__append(result, a2 - v2);
  }
}

llvm::Value *MTLAddVertexFetchingToModulePass::convertVertexShaderOutput(int a1, llvm::Type **a2, llvm::Value *a3, llvm::Constant *this, llvm::Instruction *a5, uint64_t *a6)
{
  v7 = a5;
  if (*(this + 8) == 16)
  {
    NullValue = llvm::Constant::getNullValue(this, a2);
    if (v7)
    {
LABEL_3:
      v12 = 0;
      v13 = *a3;
      while (1)
      {
        Value = a3;
        if (*(v13 + 8) == 16)
        {
          v28 = v12;
          v27 = 257;
          Value = llvm::IRBuilderBase::CreateExtractValue(a2, a3, &v28, 1, v26);
        }

        v15 = *a6;
        if (v7 != (a6[1] - *a6) >> 1)
        {
          goto LABEL_36;
        }

        v16 = *(v15 + 2 * v12);
        if ((v16 & 1) == 0)
        {
          goto LABEL_36;
        }

        v17 = *Value;
        v18 = 1;
        if (*Value && *(v17 + 8) == 18)
        {
          v18 = *(v17 + 32);
        }

        v19 = a2[8];
        v20 = (v16 >> 7) & 7;
        if (v18 <= v20)
        {
          if (v18 >= v20)
          {
            goto LABEL_16;
          }

          v21 = expandVector(v19, a2, Value, v20);
        }

        else
        {
          v21 = MTLFrameworkPass::truncateVector(v19, a2, Value, v20);
        }

        Value = v21;
LABEL_16:
        v22 = this;
        if (*(this + 8) == 16)
        {
          v22 = *(*(this + 2) + 8 * v12);
        }

        if (*Value == v22)
        {
          goto LABEL_36;
        }

        v23 = (*(v15 + 2 * v12) >> 1) & 0x3F;
        if (v23 <= 0x20)
        {
          switch(v23)
          {
            case 3u:
              v27 = 257;
              FPExt = llvm::IRBuilderBase::CreateFPExt(a2, Value, v22, v26);
              break;
            case 0x10u:
              v27 = 257;
              FPExt = llvm::IRBuilderBase::CreateFPTrunc(a2, Value, v22, v26);
              break;
            case 0x1Du:
              v27 = 257;
              FPExt = llvm::IRBuilderBase::CreateSExtOrBitCast(a2, Value, v22, v26, a5);
              break;
            default:
              goto LABEL_43;
          }

          goto LABEL_35;
        }

        if (((*(v15 + 2 * v12) >> 1) & 0x3Fu) > 0x28)
        {
          if (v23 != 41)
          {
            if (v23 != 53)
            {
LABEL_43:
              abort();
            }

            goto LABEL_36;
          }
        }

        else
        {
          if (v23 == 33)
          {
            v27 = 257;
            FPExt = llvm::IRBuilderBase::CreateZExtOrBitCast(a2, Value, v22, v26, a5);
            goto LABEL_35;
          }

          if (v23 != 37)
          {
            goto LABEL_43;
          }
        }

        v27 = 257;
        FPExt = llvm::IRBuilderBase::CreateCast(a2, 38, Value, v22, v26);
LABEL_35:
        Value = FPExt;
LABEL_36:
        if (*(this + 8) == 16)
        {
          v28 = v12;
          v27 = 257;
          Value = llvm::IRBuilderBase::CreateInsertValue(a2, NullValue, Value, &v28, 1, v26);
        }

        ++v12;
        NullValue = Value;
        if (v7 == v12)
        {
          return Value;
        }
      }
    }
  }

  else
  {
    NullValue = 0;
    if (a5)
    {
      goto LABEL_3;
    }
  }

  return NullValue;
}

llvm::Type **llvm::IRBuilderBase::CreateSExtOrBitCast(unsigned int **this, llvm::Type **a2, llvm::Type *a3, const llvm::Twine *a4, llvm::Instruction *a5)
{
  if (*a2 == a3)
  {
    return a2;
  }

  if (*(a2 + 16) > 0x14u)
  {
    SExtOrBitCast = llvm::CastInst::CreateSExtOrBitCast();
    return llvm::IRBuilderBase::Insert<llvm::CastInst>(this, SExtOrBitCast, a4);
  }

  a2 = (*(*this[9] + 296))(this[9]);
  if (a2)
  {
    v7 = *(a2 + 16) >= 0x1Cu;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    return a2;
  }

  return llvm::IRBuilderBase::Insert<llvm::CastInst>(this, a2, a4);
}

llvm::Type **llvm::IRBuilderBase::CreateZExtOrBitCast(unsigned int **this, llvm::Type **a2, llvm::Type *a3, const llvm::Twine *a4, llvm::Instruction *a5)
{
  if (*a2 == a3)
  {
    return a2;
  }

  if (*(a2 + 16) > 0x14u)
  {
    ZExtOrBitCast = llvm::CastInst::CreateZExtOrBitCast();
    return llvm::IRBuilderBase::Insert<llvm::CastInst>(this, ZExtOrBitCast, a4);
  }

  a2 = (*(*this[9] + 288))(this[9]);
  if (a2)
  {
    v7 = *(a2 + 16) >= 0x1Cu;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    return a2;
  }

  return llvm::IRBuilderBase::Insert<llvm::CastInst>(this, a2, a4);
}

llvm::Module *MTLAddVertexFetchingToModulePass::addVertexFetchingToModule(MTLCompilerErrorObject **a1, llvm::Type **this, int a3, unsigned __int16 *a4, unsigned __int16 *a5, int a6, unsigned __int8 a7, int a8, char a9, char a10, unsigned int a11, void *a12)
{
  v236[39] = *MEMORY[0x277D85DE8];
  v174 = *this;
  *&__p = "air.vertex";
  LOWORD(v224) = 259;
  v170 = this;
  NamedMetadata = llvm::Module::getNamedMetadata(this, &__p);
  if (NamedMetadata)
  {
    v151 = 0;
  }

  else
  {
    *&__p = "air.kernel";
    LOWORD(v224) = 259;
    NamedMetadata = llvm::Module::getNamedMetadata(v170, &__p);
    v151 = NamedMetadata != 0;
  }

  Operand = llvm::NamedMDNode::getOperand(NamedMetadata);
  v165 = Operand;
  v15 = (Operand - 8 * *(Operand + 8));
  v159 = *(*v15 + 128);
  if (((a11 >> 7) & 1) == 0 || (a11 & 4) == 0 || v151 || a12[1] == *a12)
  {
    v152 = 0;
  }

  else
  {
    v16 = **(*(v159 + 3) + 16);
    v17 = v15[1];
    __p = 0uLL;
    *&v223 = 0;
    *&v213 = 0;
    v152 = MTLAddVertexFetchingToModulePass::expandVertexOutputWithFragmentInput(Operand, v174, v16, v17, &v213, a12, 0, &__p, a7) != v16;
    if (__p)
    {
      *(&__p + 1) = __p;
      operator delete(__p);
    }
  }

  v18 = 0;
  v163 = 0;
  v19 = 0;
  if (a4)
  {
    v167 = 0;
    if (a3)
    {
      v163 = a4 + a4[2];
      v167 = a4 + a4[3];
      v20 = a4[1];
      v18 = (v20 >> 6) & 0x1F;
      v19 = v20 >> 11;
      if (v20 >= 0x800)
      {
        if (v18)
        {
          goto LABEL_22;
        }
      }
    }
  }

  else
  {
    v167 = 0;
  }

  v155 = v18;
  v21 = *(*(v165 - 8 * *(v165 + 8) + 16) + 8);
  if (*(v159 + 9))
  {
    llvm::Function::BuildLazyArguments(v159);
  }

  if (v21 >= 1)
  {
    DataLayout = llvm::Module::getDataLayout(v170);
    llvm::DataLayout::DataLayout(&__p, DataLayout);
    MTLArgumentData::MTLArgumentData(&v213);
  }

  v18 = v155;
  if (!v152)
  {
    return v170;
  }

LABEL_22:
  v156 = v18;
  v23 = 0;
  if (v19)
  {
    v24 = v19;
    v25 = v167;
    do
    {
      v26 = *v25;
      v25 += 2;
      v27 = v26 & 0x1F;
      if (v27 > v23)
      {
        v23 = v27;
      }

      --v24;
    }

    while (v24);
  }

  v164 = v19;
  LODWORD(__p) = 0;
  std::vector<int>::vector[abi:ne200100](__b, (v23 + 1), &__p);
  v28 = __b[0];
  memset(__b[0], 255, 4 * v23 + 4);
  if (v19)
  {
    v29 = 0;
    v30 = v19;
    v31 = v167;
    v32 = v156;
    do
    {
      v33 = *v31;
      v31 += 2;
      v28[v33 & 0x1F] = v29++;
    }

    while (v19 != v29);
  }

  else
  {
    v30 = 0;
    v32 = v156;
  }

  LOBYTE(__p) = 0;
  std::vector<unsigned char>::vector[abi:ne200100](v211, v30, &__p);
  LOBYTE(__p) = 0;
  std::vector<unsigned char>::vector[abi:ne200100](v210, v30, &__p);
  LODWORD(__p) = 0;
  std::vector<int>::vector[abi:ne200100](v209, v30, &__p);
  if (v19)
  {
    memset(v209[0], 255, 4 * v30);
  }

  std::vector<llvm::MDNode *>::vector[abi:ne200100](v208, v30);
  std::vector<llvm::Type *>::vector[abi:ne200100](v207, v30);
  LODWORD(__p) = 0;
  std::vector<unsigned int>::vector[abi:ne200100](v206, v30, &__p);
  memset(v205, 0, sizeof(v205));
  std::vector<BOOL>::reserve(v205, *(v159 + 12));
  v203 = 0;
  __src = 0;
  v204 = 0;
  v200 = 0;
  v199 = 0;
  v201 = 0;
  v197 = 0;
  v196 = 0;
  v198 = 0;
  if (((a3 ^ 1) & (a11 >> 7)) == 1)
  {
    v34 = *(v159 + 12);
  }

  else
  {
    v34 = v32;
  }

  std::vector<MTLOpaqueObject *>::reserve(&v199, v34);
  std::vector<MTLOpaqueObject *>::reserve(&v196, (v201 - v199) >> 3);
  v194 = 0;
  v193 = 0;
  v35 = v32;
  v195 = 0;
  std::vector<MTLOpaqueObject *>::reserve(&v193, v32);
  if (v19)
  {
    v36 = 0;
    v37 = -1;
    v38 = v167;
    do
    {
      v39 = *v38;
      v38 += 2;
      v40 = v39 >> 10;
      if (v39 >> 10 == 43)
      {
        v41 = v36;
      }

      else
      {
        v41 = v37;
      }

      if (v40 != 44)
      {
        v37 = v41;
      }

      ++v36;
    }

    while (v30 != v36);
  }

  v191 = 0;
  v190 = 0;
  v192 = 0;
  std::vector<BuiltInInfo>::reserve(&v190, 0xAuLL);
  LOBYTE(__p) = -1;
  std::vector<signed char>::vector[abi:ne200100](v189, 10, &__p);
  std::vector<unsigned int>::vector[abi:ne200100](v188, *(v159 + 12));
  MTLFrameworkPass::getArgumentMetadataIndices(*(v165 - 8 * *(v165 + 8) + 16), v188);
  v42 = *(v159 + 12);
  if (*(v159 + 9))
  {
    llvm::Function::BuildLazyArguments(v159);
  }

  v172 = v30;
  v160 = v32;
  if (v42 < 1)
  {
    v162 = 0;
    v51 = v163;
    v52 = v19;
  }

  else
  {
    v43 = 0;
    v162 = 0;
    v173 = 0;
    v168 = *(v159 + 3);
    v44 = *(v159 + 11);
    v166 = v42 & 0x7FFFFFFF;
    do
    {
      v216.__r_.__value_.__r.__words[0] = *(*(v168 + 16) + 8 * (v43 + 1));
      v171 = v43 + 1;
      if (*(v188[0] + v43) != -1)
      {
        v45 = llvm::Module::getDataLayout(v170);
        llvm::DataLayout::DataLayout(&__p, v45);
        MTLArgumentData::MTLArgumentData(&v213);
      }

      LOBYTE(__p) = 0;
      std::vector<BOOL>::push_back(v205, &__p);
      v46 = v173 - v162;
      v47 = 0xAAAAAAAAAAAAAAABLL * ((v173 - v162) >> 2);
      v48 = v47 + 1;
      if (v47 + 1 > 0x1555555555555555)
      {
        std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
      }

      if (0x5555555555555556 * (-v162 >> 2) > v48)
      {
        v48 = 0x5555555555555556 * (-v162 >> 2);
      }

      if (0xAAAAAAAAAAAAAAABLL * (-v162 >> 2) >= 0xAAAAAAAAAAAAAAALL)
      {
        v49 = 0x1555555555555555;
      }

      else
      {
        v49 = v48;
      }

      if (v49)
      {
        if (v49 <= 0x1555555555555555)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v50 = 4 * ((v173 - v162) >> 2);
      *v50 = 0;
      *(v50 + 1) = 11;
      *(v50 + 4) = -1;
      *(v50 + 8) = 0;
      v173 = v50 + 12;
      memcpy((12 * v47 + 12 * (v46 / -12)), v162, v46);
      if (v162)
      {
        operator delete(v162);
      }

      v162 = 12 * v47 + 12 * (v46 / -12);
      v51 = v163;
      v44 += 40;
      ++v43;
      v52 = v164;
    }

    while (v171 != v166);
  }

  v161 = a11 & 0x20000;
  if (v156)
  {
    v53 = 0;
    v54 = v51 + 8;
    v55 = v35;
    do
    {
      if (!v161 && *v54 != -1 && (*v54 & 3) != 0)
      {
        MTLCompilerErrorObject::setErrorMessage(*a1, "Buffer stride is not a multiple of 4 bytes.");
        v170 = 0;
        goto LABEL_235;
      }

      if ((*(v54 - 1) & 0x1F) > v53)
      {
        v53 = *(v54 - 1) & 0x1F;
      }

      v54 += 2;
      --v55;
    }

    while (v55);
  }

  else
  {
    v53 = 0;
  }

  LODWORD(__p) = 0;
  std::vector<int>::vector[abi:ne200100](v187, (v53 + 1), &__p);
  v57 = v187[0];
  memset(v187[0], 255, 4 * v53 + 4);
  if (v156)
  {
    v58 = 0;
    v59 = v51;
    do
    {
      v60 = *v59;
      v59 += 4;
      v57[v60 & 0x1F] = v58++;
    }

    while (v35 != v58);
  }

  memset(v186, 0, sizeof(v186));
  std::vector<std::vector<unsigned int>>::resize(v186, v35);
  if (!v52)
  {
LABEL_140:
    LODWORD(__p) = 0;
    std::vector<int>::vector[abi:ne200100](&v185, v160, &__p);
    memset(v183, 0, sizeof(v183));
    v184 = 1065353216;
    LOBYTE(__p) = 0;
    std::vector<unsigned char>::vector[abi:ne200100](&v182, 10, &__p);
    v181 = 0;
    v180 = 0;
    v177 = 0u;
    v178 = 0u;
    v179 = 1065353216;
    if (v156)
    {
      v84 = 0;
      v85 = (v163 + 8);
      v86 = 8;
      do
      {
        v87 = *(v186[0] + v86 - 8);
        v88 = *(v186[0] + v86);
        *&v213 = 0;
        if (v88 == v87)
        {
          *(v185 + v84) = -1;
        }

        else
        {
          if (*v85 == -1)
          {
            if (v161)
            {
              Int8Ty = llvm::Type::getInt8Ty(v174, v83);
            }

            else
            {
              Int8Ty = llvm::Type::getFloatTy(v174, v83);
            }

            v90 = 1;
          }

          else if (v161)
          {
            Int8Ty = llvm::Type::getInt8Ty(v174, v83);
            v90 = *v85;
          }

          else
          {
            Int8Ty = llvm::Type::getFloatTy(v174, v83);
            v90 = *v85 >> 2;
          }

          v217[0] = llvm::ArrayType::get(Int8Ty, v90);
          *&v223 = 0;
          __p = 0uLL;
          std::vector<llvm::Type *>::__init_with_size[abi:ne200100]<llvm::Type * const*,llvm::Type * const*>(&__p, v217, &v217[1], 1uLL);
          *&v213 = llvm::StructType::get();
          v217[0] = llvm::PointerType::get();
          v91 = (v200 - v199) >> 3;
          *(v185 + v84) = v91;
          LODWORD(v216.__r_.__value_.__l.__data_) = v91;
          std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(v183, &v216, &v216);
          std::vector<llvm::CallGraphNode *>::push_back[abi:ne200100](&v199, v217);
          std::vector<llvm::CallGraphNode *>::push_back[abi:ne200100](&v196, &v213);
          getRequiredBuiltIns(&v182, &v180, *(v85 - 2) >> 5, *(v85 - 1), &v181 + 1, &v181, a8);
          MTLFrameworkPass::appendBufferMetadata(v174, &v193, *(v85 - 1) & 0x1F, 1);
          if (__p)
          {
            *(&__p + 1) = __p;
            operator delete(__p);
          }
        }

        v85 += 2;
        v86 += 24;
        v84 += 4;
      }

      while (4 * v160 != v84);
    }

    *&v92 = -1;
    *(&v92 + 1) = -1;
    v220 = v92;
    v221 = v92;
    v218 = v92;
    v219 = v92;
    *v217 = v92;
    Int32Ty = llvm::Type::getInt32Ty(v174, v83);
    llvm::Type::getInt64Ty(v174, v93);
    MTLFrameworkPass::addRequiredBuiltInsToBuiltInList(&v190, v189, &v182);
    v96 = v190;
    v97 = v191;
    v98 = v174;
    if (v190 != v191)
    {
      do
      {
        *&__p = MTLFrameworkPass::getLLVMVectorType(v98, *(v96 + 1), v96[1]);
        v99 = MTLFrameworkPass::addBuiltInParameter(v98, MTLFrameworkPass::vertexFetchbuiltInAIRString[*v96], &v199, &v193, __p, *(v96 + 1), v96[1]);
        if (v200 - v199 != v197 - v196)
        {
          std::vector<llvm::CallGraphNode *>::push_back[abi:ne200100](&v196, &__p);
        }

        v217[*v96] = v99;
        LODWORD(v213) = v99;
        v94 = std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(v183, &v213, &v213);
        v96 += 8;
        v98 = v174;
      }

      while (v96 != v97);
    }

    if ((v181 & 0x100) != 0)
    {
      *&__p = 0;
      v100 = Int32Ty;
      if (a8 == 2)
      {
        Int32PtrTy = llvm::Type::getInt32PtrTy(v174, 1);
        v104 = 33;
        Int16Ty = Int32Ty;
      }

      else
      {
        if (a8 != 1)
        {
          goto LABEL_275;
        }

        Int32PtrTy = llvm::Type::getInt16PtrTy(v174, 1);
        Int16Ty = llvm::Type::getInt16Ty(v174, v102);
        v104 = 41;
      }

      *&__p = Int16Ty;
      v105 = MTLFrameworkPass::addBuiltInParameter(v174, "air.control_point_index_buffer", &v199, &v193, Int32PtrTy, v104, 1);
      if (v200 - v199 != v197 - v196)
      {
        std::vector<llvm::CallGraphNode *>::push_back[abi:ne200100](&v196, &__p);
      }

      LODWORD(v213) = v105;
      v94 = std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(v183, &v213, &v213);
    }

    else
    {
      v100 = Int32Ty;
    }

    if (v180 == 1)
    {
      __p = 0uLL;
      *&v223 = 0;
      std::vector<MTLOpaqueObject *>::reserve(&__p, 1uLL);
      v107 = v100;
      if ((a4[1] & 1) == 0)
      {
        v107 = llvm::Type::getInt16Ty(v174, v106);
      }

      *&v213 = v107;
      v216.__r_.__value_.__r.__words[0] = llvm::PointerType::get();
      LODWORD(v176.__r_.__value_.__l.__data_) = (v200 - v199) >> 3;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(v183, &v176, &v176);
      std::vector<llvm::CallGraphNode *>::push_back[abi:ne200100](&v199, &v216);
      std::vector<llvm::CallGraphNode *>::push_back[abi:ne200100](&v196, &v213);
      MTLFrameworkPass::appendBufferMetadata(v174, &v193, (a4[1] >> 1) & 0x1F, 1);
      v94 = __p;
      if (__p)
      {
        *(&__p + 1) = __p;
        operator delete(__p);
      }

      if (!v156)
      {
LABEL_218:
        v154 = **(*(v159 + 3) + 16);
        Impl = 0;
        memset(&v176, 0, sizeof(v176));
        if (a6)
        {
          llvm::Type::getVoidTy(v174, v95);
          Impl = llvm::MDTuple::getImpl();
        }

        else if (a5)
        {
          v139 = *(v165 - 8 * *(v165 + 8) + 8);
          __p = 0uLL;
          *&v223 = 0;
          MTLAddVertexFetchingToModulePass::expandVertexOutputWithFragmentInput(v94, v174, v154, v139, &Impl, &__p, a5, &v176, a7);
        }

        v140 = llvm::FunctionType::get();
        *&__p = "air.vertexFetchFunction";
        LOWORD(v224) = 259;
        v141 = llvm::Function::Create(v140, 0, &__p, v170);
        *&__p = &v223;
        *(&__p + 1) = 0x200000000;
        v226 = v174;
        v227 = &v235;
        v228 = v236;
        v229 = 0;
        v230 = 0;
        v231 = 512;
        v232 = 7;
        v225 = 0uLL;
        v234 = 0;
        v233 = 0;
        v235 = MEMORY[0x277D821C8] + 16;
        v236[0] = MEMORY[0x277D82210] + 16;
        createDebugInfoForWrapperFunction(v174, &__p, v141, v159);
        if (!v151)
        {
          v143 = v190;
          v144 = v191;
          if (v190 != v191)
          {
            while (1)
            {
              v145 = *(v143 + 1);
              if (v145 > 0x29)
              {
                break;
              }

              if (((1 << v145) & 0x10008) == 0)
              {
                if (((1 << v145) & 0x2020000000) == 0 && ((1 << v145) & 0x20200000000) == 0)
                {
                  break;
                }

                llvm::Function::addParamAttr();
              }

              v143 += 8;
              if (v143 == v144)
              {
                goto LABEL_230;
              }
            }

LABEL_275:
            abort();
          }

LABEL_230:
          for (i = v178; i; i = *i)
          {
            llvm::Function::addParamAttr();
          }
        }

        *&v213 = "Body";
        LOWORD(v215) = 259;
        llvm::BasicBlock::Create(v174, &v213, v141, 0, v142);
      }
    }

    else if (!v156)
    {
      goto LABEL_218;
    }

    v108 = v160;
    v109 = v163;
    do
    {
      if (*(v109 + 1) == -1)
      {
        v110 = v200;
        v111 = v199;
        *&__p = *v109 & 0x1F;
        *&v213 = &__p;
        std::__hash_table<std::__hash_value_type<unsigned long,unsigned long>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned long>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long &&>,std::tuple<>>(&v177, &__p, &std::piecewise_construct, &v213)[3] = (v110 - v111) >> 3;
        Int64Ty = llvm::Type::getInt64Ty(v174, v112);
        v115 = v200;
        if (v200 >= v201)
        {
          v117 = (v200 - v199) >> 3;
          if ((v117 + 1) >> 61)
          {
            std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
          }

          v118 = (v201 - v199) >> 2;
          if (v118 <= v117 + 1)
          {
            v118 = v117 + 1;
          }

          if (v201 - v199 >= 0x7FFFFFFFFFFFFFF8)
          {
            v119 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v119 = v118;
          }

          if (v119)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<llvm::Type *>>(&v199, v119);
          }

          v120 = (8 * v117);
          *v120 = Int64Ty;
          v116 = 8 * v117 + 8;
          v121 = v120 - (v200 - v199);
          memcpy(v121, v199, v200 - v199);
          v122 = v199;
          v199 = v121;
          v200 = v116;
          v201 = 0;
          if (v122)
          {
            operator delete(v122);
          }
        }

        else
        {
          *v200 = Int64Ty;
          v116 = (v115 + 8);
        }

        v200 = v116;
        v123 = llvm::Type::getInt64Ty(v174, v114);
        v125 = v197;
        if (v197 >= v198)
        {
          v127 = (v197 - v196) >> 3;
          if ((v127 + 1) >> 61)
          {
            std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
          }

          v128 = (v198 - v196) >> 2;
          if (v128 <= v127 + 1)
          {
            v128 = v127 + 1;
          }

          if (v198 - v196 >= 0x7FFFFFFFFFFFFFF8)
          {
            v129 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v129 = v128;
          }

          if (v129)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<llvm::Type *>>(&v196, v129);
          }

          v130 = (8 * v127);
          *v130 = v123;
          v126 = 8 * v127 + 8;
          v131 = v130 - (v197 - v196);
          memcpy(v131, v196, v197 - v196);
          v132 = v196;
          v196 = v131;
          v197 = v126;
          v198 = 0;
          if (v132)
          {
            operator delete(v132);
          }
        }

        else
        {
          *v197 = v123;
          v126 = (v125 + 8);
        }

        v197 = v126;
        v226 = 0;
        v225 = 0u;
        v224 = 0u;
        v223 = 0u;
        __p = 0u;
        llvm::Type::getInt32Ty(v174, v124);
        llvm::ConstantInt::get();
        *&__p = llvm::ValueAsMetadata::get();
        *(&__p + 1) = llvm::MDString::get();
        *&v223 = llvm::MDString::get();
        llvm::Type::getInt32Ty(v174, v133);
        llvm::ConstantInt::get();
        *(&v223 + 1) = llvm::ValueAsMetadata::get();
        llvm::Type::getInt32Ty(v174, v134);
        llvm::ConstantInt::get();
        *&v224 = llvm::ValueAsMetadata::get();
        *(&v224 + 1) = llvm::MDString::get();
        *&v225 = llvm::MDString::get();
        *(&v225 + 1) = llvm::MDString::get();
        std::string::basic_string[abi:ne200100]<0>(&v216, "stride");
        std::to_string(&v176, *v109 & 0x1F);
        if ((v176.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v135 = &v176;
        }

        else
        {
          v135 = v176.__r_.__value_.__r.__words[0];
        }

        if ((v176.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v176.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v176.__r_.__value_.__l.__size_;
        }

        v137 = std::string::append(&v216, v135, size);
        v138 = *&v137->__r_.__value_.__l.__data_;
        v214 = v137->__r_.__value_.__r.__words[2];
        v213 = v138;
        v137->__r_.__value_.__l.__size_ = 0;
        v137->__r_.__value_.__r.__words[2] = 0;
        v137->__r_.__value_.__r.__words[0] = 0;
        v226 = llvm::MDString::get();
        if (SHIBYTE(v214) < 0)
        {
          operator delete(v213);
        }

        if (SHIBYTE(v176.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v176.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v216.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v216.__r_.__value_.__l.__data_);
        }

        *&v213 = llvm::MDTuple::getImpl();
        std::vector<llvm::CallGraphNode *>::push_back[abi:ne200100](&v193, &v213);
      }

      v109 += 16;
      --v108;
    }

    while (v108);
    goto LABEL_218;
  }

  v61 = 0;
  v62 = "Attribute %d incompatible with MTLStepFunctionPerVertex.";
  while (!*(v211[0] + v61))
  {
LABEL_139:
    if (++v61 == v172)
    {
      goto LABEL_140;
    }
  }

  v63 = &v167[8 * v61];
  v64 = (*v63 >> 5) & 0x1F;
  if (v64 > v53 || *(v187[0] + v64) == -1)
  {
    MTLCompilerErrorObject::setFormattedErrorMessage(*a1, "Attribute %d refers to a buffer index %d that is not valid.", *v63 & 0x1F, v64);
    goto LABEL_164;
  }

  String = llvm::MDString::getString(*(*(v208[0] + v61) - 8 * *(*(v208[0] + v61) + 8) + 8));
  v67 = v66;
  v68 = *v63;
  v69 = *(v187[0] + ((v68 >> 5) & 0x1F));
  v70 = *&v163[16 * v69] >> 5;
  if (v70 <= 2)
  {
    if (v70 == 1)
    {
      switch(v66)
      {
        case 0xDuLL:
          v76 = "air.vertex_id";
          break;
        case 0xFuLL:
          v76 = "air.instance_id";
          break;
        case 0x10uLL:
          if (*String != 0x747265762E726961 || String[1] != 0x7475706E695F7865)
          {
            goto LABEL_270;
          }

          goto LABEL_134;
        default:
          goto LABEL_270;
      }

      if (memcmp(String, v76, v67))
      {
        goto LABEL_270;
      }
    }

    goto LABEL_134;
  }

  if (v70 - 5 < 4)
  {
    goto LABEL_134;
  }

  if (v70 != 3)
  {
    if (v70 != 4)
    {
      goto LABEL_275;
    }

    if (v66 != 29 || (*String == 0x637461702E726961 ? (v71 = String[1] == 0x6F72746E6F635F68) : (v71 = 0), v71 ? (v72 = String[2] == 0x5F746E696F705F6CLL) : (v72 = 0), v72 ? (v73 = *(String + 21) == 0x7475706E695F746ELL) : (v73 = 0), !v73))
    {
      MTLCompilerErrorObject::setFormattedErrorMessage(*a1, "Attribute %d incompatible with MTLStepFunctionPerPatchControlPoint.", v66);
      goto LABEL_164;
    }

    goto LABEL_134;
  }

  if (v66 != 29)
  {
    if (v66 != 15)
    {
      goto LABEL_269;
    }

    if (*String != 0x637461702E726961 || *(String + 7) != 0x7475706E695F6863)
    {
      goto LABEL_269;
    }

    goto LABEL_134;
  }

  v77 = *String == 0x637461702E726961 && String[1] == 0x6F72746E6F635F68;
  v78 = v77 && String[2] == 0x5F746E696F705F6CLL;
  if (v78 && *(String + 21) == 0x7475706E695F746ELL)
  {
LABEL_134:
    v80 = (v186[0] + 24 * v69);
    v81.__i_ = v80->__begin_;
    end = v80->__end_;
    if (v80->__begin_ != end)
    {
      while (*(v63 + 1) > *&v167[8 * *v81.__i_ + 4])
      {
        if (++v81.__i_ == end)
        {
          v81.__i_ = v80->__end_;
          break;
        }
      }
    }

    LODWORD(__p) = v61;
    std::vector<unsigned int>::insert(v80, v81, &__p);
    goto LABEL_139;
  }

LABEL_269:
  v62 = "Attribute %d incompatible with MTLStepFunctionPerPatch.";
LABEL_270:
  MTLCompilerErrorObject::setFormattedErrorMessage(*a1, v62, v67, v68 & 0x1F);
LABEL_164:
  v170 = 0;
  *&__p = v186;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (v187[0])
  {
    v187[1] = v187[0];
    operator delete(v187[0]);
  }

LABEL_235:
  if (v188[0])
  {
    v188[1] = v188[0];
    operator delete(v188[0]);
  }

  if (v189[0])
  {
    v189[1] = v189[0];
    operator delete(v189[0]);
  }

  if (v190)
  {
    v191 = v190;
    operator delete(v190);
  }

  if (v193)
  {
    v194 = v193;
    operator delete(v193);
  }

  if (v196)
  {
    v197 = v196;
    operator delete(v196);
  }

  if (v199)
  {
    v200 = v199;
    operator delete(v199);
  }

  if (__src)
  {
    v203 = __src;
    operator delete(__src);
  }

  if (v162)
  {
    operator delete(v162);
  }

  if (v205[0])
  {
    operator delete(v205[0]);
  }

  if (v206[0])
  {
    v206[1] = v206[0];
    operator delete(v206[0]);
  }

  if (v207[0])
  {
    v207[1] = v207[0];
    operator delete(v207[0]);
  }

  if (v208[0])
  {
    v208[1] = v208[0];
    operator delete(v208[0]);
  }

  if (v209[0])
  {
    v209[1] = v209[0];
    operator delete(v209[0]);
  }

  if (v210[0])
  {
    v210[1] = v210[0];
    operator delete(v210[0]);
  }

  if (v211[0])
  {
    v211[1] = v211[0];
    operator delete(v211[0]);
  }

  if (__b[0])
  {
    __b[1] = __b[0];
    operator delete(__b[0]);
  }

  return v170;
}

void sub_257A2E11C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42)
{
  llvm::DenseMap<llvm::Metadata *,std::vector<MTLStructMemberInfo> *,llvm::DenseMapInfo<llvm::Metadata *,void>,llvm::detail::DenseMapPair<llvm::Metadata *,std::vector<MTLStructMemberInfo> *>>::~DenseMap(&STACK[0x2E0], a2, a3, a4);
  MTLArgumentData::~MTLArgumentData(&STACK[0x4C0]);
  MEMORY[0x259C6A2B0](&STACK[0x730]);
  v43 = STACK[0x358];
  if (STACK[0x358])
  {
    STACK[0x360] = v43;
    operator delete(v43);
  }

  v44 = STACK[0x370];
  if (STACK[0x370])
  {
    STACK[0x378] = v44;
    operator delete(v44);
  }

  v45 = STACK[0x388];
  if (STACK[0x388])
  {
    STACK[0x390] = v45;
    operator delete(v45);
  }

  v46 = STACK[0x3A0];
  if (STACK[0x3A0])
  {
    STACK[0x3A8] = v46;
    operator delete(v46);
  }

  v47 = STACK[0x3B8];
  if (STACK[0x3B8])
  {
    STACK[0x3C0] = v47;
    operator delete(v47);
  }

  v48 = STACK[0x3D0];
  if (STACK[0x3D0])
  {
    STACK[0x3D8] = v48;
    operator delete(v48);
  }

  v49 = STACK[0x3E8];
  if (STACK[0x3E8])
  {
    STACK[0x3F0] = v49;
    operator delete(v49);
  }

  if (a42)
  {
    operator delete(a42);
  }

  if (STACK[0x400])
  {
    operator delete(STACK[0x400]);
  }

  v50 = STACK[0x418];
  if (STACK[0x418])
  {
    STACK[0x420] = v50;
    operator delete(v50);
  }

  v51 = STACK[0x430];
  if (STACK[0x430])
  {
    STACK[0x438] = v51;
    operator delete(v51);
  }

  v52 = STACK[0x448];
  if (STACK[0x448])
  {
    STACK[0x450] = v52;
    operator delete(v52);
  }

  v53 = STACK[0x460];
  if (STACK[0x460])
  {
    STACK[0x468] = v53;
    operator delete(v53);
  }

  v54 = STACK[0x478];
  if (STACK[0x478])
  {
    STACK[0x480] = v54;
    operator delete(v54);
  }

  v55 = STACK[0x490];
  if (STACK[0x490])
  {
    STACK[0x498] = v55;
    operator delete(v55);
  }

  v56 = STACK[0x4A8];
  if (STACK[0x4A8])
  {
    STACK[0x4B0] = v56;
    operator delete(v56);
  }

  _Unwind_Resume(a1);
}

void std::vector<std::vector<unsigned int>>::resize(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    std::vector<std::vector<unsigned int>>::__append(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 24 * a2;
    if (v3 != v7)
    {
      v8 = a1[1];
      do
      {
        v10 = *(v8 - 24);
        v8 -= 24;
        v9 = v10;
        if (v10)
        {
          *(v3 - 16) = v9;
          operator delete(v9);
        }

        v3 = v8;
      }

      while (v8 != v7);
    }

    a1[1] = v7;
  }
}

std::vector<unsigned int>::iterator std::vector<unsigned int>::insert(std::vector<unsigned int> *this, std::vector<unsigned int>::const_iterator __position, std::vector<unsigned int>::value_type *__x)
{
  i = __position.__i_;
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (end >= value)
  {
    begin = this->__begin_;
    v11 = end - this->__begin_ + 1;
    if (v11 >> 62)
    {
      std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
    }

    v12 = __position.__i_ - begin;
    v13 = value - begin;
    if (v13 >> 1 > v11)
    {
      v11 = v13 >> 1;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v14 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 2;
    v27 = this;
    if (v14)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(this, v14);
    }

    v24 = 0;
    v25 = 4 * v15;
    v26 = (4 * v15);
    std::__split_buffer<unsigned int>::emplace_back<unsigned int>(&v24, __x);
    v16.__i_ = v25;
    memcpy(v26, i, this->__end_ - i);
    v17 = this->__begin_;
    v18 = v25;
    *&v26 = v26 + this->__end_ - i;
    this->__end_ = i;
    v19 = i - v17;
    v20 = (v18 - (i - v17));
    memcpy(v20, v17, v19);
    v21 = this->__begin_;
    this->__begin_ = v20;
    v22 = this->__end_cap_.__value_;
    *&this->__end_ = v26;
    *&v26 = v21;
    *(&v26 + 1) = v22;
    v24 = v21;
    v25 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__position.__i_ == end)
  {
    *end = *__x;
    this->__end_ = end + 1;
  }

  else
  {
    v8 = __position.__i_ + 1;
    if (end < 4)
    {
      v9 = this->__end_;
    }

    else
    {
      *end = *(end - 1);
      v9 = end + 1;
    }

    this->__end_ = v9;
    if (end != v8)
    {
      memmove((__position.__i_ + 1), __position.__i_, end - v8);
    }

    *i = *__x;
  }

  return i;
}

void sub_257A2E938(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t callTypedFunction(uint64_t a1, uint64_t a2, llvm::FunctionType *a3)
{
  Function = llvm::Module::getFunction();
  if (Function)
  {
    v6 = Function;
  }

  else
  {
    v7 = llvm::FunctionType::get();
    v10[0] = "air.get_num_patch_control_points";
    v11 = 259;
    v6 = llvm::Function::Create(v7, 0, v10, a1);
    if (!v6)
    {
      v8 = 0;
      goto LABEL_5;
    }
  }

  v8 = *(v6 + 24);
LABEL_5:
  v11 = 257;
  return llvm::IRBuilderBase::CreateCall(a2, v8, v6, 0, 0, v10, 0);
}

llvm::ConstantInt **fetchAttributeGEPIndexList@<X0>(uint64_t a1@<X0>, llvm::LLVMContext *a2@<X1>, llvm::Value **a3@<X8>)
{
  v74 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v10 = *(a1 + 72);
  v9 = *(a1 + 80);
  v11 = *(a1 + 88);
  v65 = *(*(a1 + 40) + 4);
  v12 = **(a1 + 40) >> 5;
  llvm::Type::getInt32Ty(*a1, a2);
  Int64Ty = llvm::Type::getInt64Ty(v5, v13);
  if (v12 > 2)
  {
    v62 = v11;
    v63 = v4;
    if ((v12 - 5) < 4)
    {
      v23 = v8;
      Element = *(v8 + 8 * v7[5]);
      v64 = *(v23 + 8 * v7[6]);
      v25 = *(v23 + 8 * v7[7]);
      v60 = v9;
      v61 = Int64Ty;
      if ((*(*Element + 8) & 0xFE) == 0x12)
      {
        llvm::Type::getInt32Ty(v5, v15);
        v26 = llvm::ConstantInt::get();
        v70 = 257;
        Element = llvm::IRBuilderBase::CreateExtractElement(v6, Element, v26, v69, v27);
      }

      if ((*(*v64 + 8) & 0xFE) == 0x12)
      {
        llvm::Type::getInt32Ty(v5, v15);
        v28 = llvm::ConstantInt::get();
        v70 = 257;
        v29 = v6;
        v64 = llvm::IRBuilderBase::CreateExtractElement(v6, v64, v28, v69, v30);
      }

      else
      {
        v29 = v6;
      }

      if ((*(*v25 + 8) & 0xFE) == 0x12)
      {
        llvm::Type::getInt32Ty(v5, v15);
        v33 = llvm::ConstantInt::get();
        v70 = 257;
        v25 = llvm::IRBuilderBase::CreateExtractElement(v29, v25, v33, v69, v34);
      }

      v35 = v25;
      if (v65 < 2)
      {
        UDiv = Element;
      }

      else
      {
        v36 = llvm::ConstantInt::get();
        v70 = 257;
        UDiv = llvm::IRBuilderBase::CreateUDiv(v29, Element, v36, v69, 0);
      }

      Function = llvm::Module::getFunction();
      if (!Function)
      {
        Int32Ty = llvm::Type::getInt32Ty(v5, v38);
        v72 = Int32Ty;
        v40 = llvm::FunctionType::get();
        v69[0] = "air.min.u.i32";
        v70 = 259;
        Function = llvm::Function::Create(v40, 0, v69, v63);
      }

      v41 = llvm::ConstantInt::get();
      v70 = 257;
      Sub = llvm::IRBuilderBase::CreateSub(v29, v35, v41, v69, 0, 0);
      Int32Ty = UDiv;
      v72 = Sub;
      if (Function)
      {
        v43 = *(Function + 24);
      }

      else
      {
        v43 = 0;
      }

      v70 = 257;
      AlignedLoad = llvm::IRBuilderBase::CreateCall(v29, v43, Function, &Int32Ty, 2, v69, 0);
      if ((v12 - 7) <= 1)
      {
        v45 = *(v23 + 8 * v60);
        v70 = 257;
        Int32Ty = llvm::IRBuilderBase::CreateCast(v29, 39, AlignedLoad, v61, v69);
        v70 = 257;
        v46 = llvm::IRBuilderBase::CreateGEP(v29, v62, v45, &Int32Ty, 1, v69);
        v47 = *(v46 + 72);
        v70 = 257;
        AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad(v29, v47, v46, 0, 0, v69);
      }

      v48 = *v64;
      if (*AlignedLoad != *v64)
      {
        v70 = 257;
        AlignedLoad = llvm::IRBuilderBase::CreateCast(v29, 39, AlignedLoad, v48, v69);
      }

      v70 = 257;
      v20 = v69;
      v21 = v29;
      v19 = AlignedLoad;
      v22 = v64;
      goto LABEL_33;
    }

    if (v12 != 3)
    {
      if (v12 == 4)
      {
        goto LABEL_37;
      }

LABEL_16:
      abort();
    }

    v32 = v7[3];
LABEL_36:
    v10 = *(v8 + 8 * v32);
    goto LABEL_37;
  }

  if (!v12)
  {
    Add = llvm::ConstantInt::get();
LABEL_34:
    v10 = Add;
    goto LABEL_37;
  }

  if (v12 == 1)
  {
    v32 = *v7;
    goto LABEL_36;
  }

  if (v12 != 2)
  {
    goto LABEL_16;
  }

  v10 = *(v8 + 8 * v7[1]);
  v15 = v65;
  if (v65 >= 2)
  {
    v16 = *(v8 + 8 * v7[2]);
    v17 = llvm::ConstantInt::get();
    v70 = 257;
    v18 = llvm::IRBuilderBase::CreateSub(v6, v10, v16, v69, 0, 0);
    v73 = 257;
    v19 = llvm::IRBuilderBase::CreateUDiv(v6, v18, v17, &Int32Ty, 0);
    v68 = 257;
    v20 = &v67;
    v21 = v6;
    v22 = v16;
LABEL_33:
    Add = llvm::IRBuilderBase::CreateAdd(v21, v19, v22, v20, 0, 0);
    goto LABEL_34;
  }

LABEL_37:
  v49 = *(a1 + 16);
  v50 = llvm::Type::getInt64Ty(*a1, v15);
  v70 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(v49, 39, v10, v50, v69);
  *a3 = Cast;
  llvm::Type::getInt32Ty(*a1, v52);
  a3[1] = llvm::ConstantInt::get();
  llvm::Type::getInt64Ty(*a1, v53);
  result = llvm::ConstantInt::get();
  a3[2] = result;
  if (*(*(a1 + 40) + 8) == -1)
  {
    v55 = *(*(a1 + 56) + 8 * *(a1 + 96));
    if (v55)
    {
      v56 = *(a1 + 16);
      v70 = 257;
      result = llvm::IRBuilderBase::CreateMul(v56, v55, Cast, v69, 0, 0);
      v57 = result;
      if ((*(a1 + 104) & 1) == 0)
      {
        v58 = *(a1 + 16);
        v70 = 257;
        v59 = llvm::ConstantInt::get();
        result = llvm::IRBuilderBase::CreateLShr(v58, v57, v59, v69, 0);
        v57 = result;
      }

      *a3 = v57;
    }
  }

  return result;
}

uint64_t llvm::IRBuilderBase::foldConstant(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = 0;
  if (*(a3 + 16) >= 0x15u)
  {
    a3 = 0;
  }

  if (*(a4 + 16) >= 0x15u)
  {
    a4 = 0;
  }

  if (a3)
  {
    v6 = a4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    return v5;
  }

  v5 = (*(**(a1 + 72) + 184))(*(a1 + 72), a2);
  if (!v5 || *(v5 + 16) < 0x1Cu)
  {
    return v5;
  }

  return llvm::IRBuilderBase::Insert<llvm::CastInst>(a1, v5, a5);
}

void *std::__hash_table<std::__hash_value_type<unsigned long,unsigned long>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned long>>>::find<unsigned long>(void *a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (result[2] == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

void **std::__hash_table<std::__hash_value_type<std::string,MTLCompilerDataType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MTLCompilerDataType>>>::~__hash_table(void **a1)
{
  std::__hash_table<std::__hash_value_type<std::string,MTLCompilerDataType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MTLCompilerDataType>>>::__deallocate_node(a1, a1[2]);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,MTLCompilerDataType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MTLCompilerDataType>>>::__deallocate_node(int a1, void **__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

const void **std::__hash_table<std::__hash_value_type<std::string,MTLCompilerDataType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MTLCompilerDataType>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v8 = v7;
  v9 = a1[1];
  if (!*&v9)
  {
    goto LABEL_18;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  if (v10.u32[0] > 1uLL)
  {
    v12 = v7;
    if (v7 >= *&v9)
    {
      v12 = v7 % *&v9;
    }
  }

  else
  {
    v12 = (*&v9 - 1) & v7;
  }

  v13 = *(*a1 + 8 * v12);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<std::string,MTLCompilerDataType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MTLCompilerDataType>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  while (1)
  {
    v15 = v14[1];
    if (v15 == v8)
    {
      break;
    }

    if (v11 > 1)
    {
      if (v15 >= *&v9)
      {
        v15 %= *&v9;
      }
    }

    else
    {
      v15 &= *&v9 - 1;
    }

    if (v15 != v12)
    {
      goto LABEL_18;
    }

LABEL_17:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v14 + 2, a2))
  {
    goto LABEL_17;
  }

  return v14;
}

void sub_257A2F3F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,MTLCompilerDataType>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_257A2F4BC(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,MTLCompilerDataType>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

unint64_t std::__string_hash<char>::operator()[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v3 = v2;
  }

  return std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](&v5, a2, v3);
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 > 0x40)
    {
      v4 = *(a2 + a3 - 48);
      v5 = *(a2 + a3 - 40);
      v6 = *(a2 + a3 - 24);
      v7 = *(a2 + a3 - 56);
      v8 = *(a2 + a3 - 16);
      v9 = *(a2 + a3 - 8);
      v10 = v7 + v8;
      v11 = 0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))));
      v12 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
      v13 = *(a2 + a3 - 64) + a3;
      v14 = v13 + v7 + v4;
      v15 = __ROR8__(v14, 44) + v13;
      v16 = __ROR8__(v5 + v13 + v12, 21);
      v17 = v14 + v5;
      v18 = v15 + v16;
      v19 = v10 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
      v20 = v19 + v6 + v8;
      v21 = v20 + v9;
      v22 = __ROR8__(v20, 44) + v19 + __ROR8__(v19 + v5 + v9, 21);
      v24 = *a2;
      v23 = a2 + 4;
      v25 = v24 - 0x4B6D499041670D8DLL * v5;
      v26 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v27 = *(v23 - 3);
        v28 = v25 + v17 + v10 + v27;
        v29 = v23[2];
        v30 = v23[3];
        v31 = v23[1];
        v10 = v31 + v17 - 0x4B6D499041670D8DLL * __ROR8__(v10 + v18 + v29, 42);
        v32 = v12 + v21;
        v33 = *(v23 - 2);
        v34 = *(v23 - 1);
        v35 = *(v23 - 4) - 0x4B6D499041670D8DLL * v18;
        v36 = v35 + v21 + v34;
        v37 = v35 + v27 + v33;
        v17 = v37 + v34;
        v38 = __ROR8__(v37, 44) + v35;
        v39 = (0xB492B66FBE98F273 * __ROR8__(v28, 37)) ^ v22;
        v25 = 0xB492B66FBE98F273 * __ROR8__(v32, 33);
        v18 = v38 + __ROR8__(v36 + v39, 21);
        v40 = v25 + v22 + *v23;
        v21 = v40 + v31 + v29 + v30;
        v22 = __ROR8__(v40 + v31 + v29, 44) + v40 + __ROR8__(v10 + v33 + v40 + v30, 21);
        v23 += 8;
        v12 = v39;
        v26 += 64;
      }

      while (v26);
      v41 = v39 - 0x4B6D499041670D8DLL * (v10 ^ (v10 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) ^ ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) >> 47));
      v42 = v25 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) ^ ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) >> 47));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) ^ ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) >> 47));
    }

    else
    {
      return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](a2, a3);
    }
  }

  else if (a3 > 0x10)
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](a2, a3);
  }

  else
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](a2, a3);
  }
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](_DWORD *a1, unint64_t a2)
{
  if (a2 < 9)
  {
    if (a2 < 4)
    {
      result = 0x9AE16A3B2F90404FLL;
      if (a2)
      {
        v8 = (0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8)));
        return 0x9AE16A3B2F90404FLL * (v8 ^ (v8 >> 47));
      }
    }

    else
    {
      v6 = *(a1 + a2 - 4);
      v7 = 0x9DDFEA08EB382D69 * (((8 * *a1) + a2) ^ v6);
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 47));
    }
  }

  else
  {
    v3 = *(a1 + a2 - 8);
    v4 = __ROR8__(v3 + a2, a2);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) >> 47))) ^ v3;
  }

  return result;
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = 0xB492B66FBE98F273 * *a1;
  v4 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v3 - v2, 43);
  v5 = v3 + a2 + __ROR8__(v2 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v4 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = *(a1 + a2 - 16);
  v3 = *a1 - 0x3C5A37A36834CED9 * (v2 + a2);
  v5 = a1[2];
  v4 = a1[3];
  v6 = __ROR8__(v3 + v4, 52);
  v7 = v3 + a1[1];
  v8 = __ROR8__(v7, 7);
  v9 = v7 + v5;
  v10 = *(a1 + a2 - 32) + v5;
  v11 = v8 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v2 + a2), 37) + v6 + __ROR8__(v9, 31);
  v12 = *(a1 + a2 - 24) + v10 + v2;
  v13 = 0xC3A5C85C97CB3127 * (v12 + *(a1 + a2 - 8) + v4 + v11) - 0x651E95C4D06FBFB1 * (v9 + v4 + __ROR8__(v10, 37) + __ROR8__(*(a1 + a2 - 24) + v10, 7) + __ROR8__(*(a1 + a2 - 8) + v4 + v10, 52) + __ROR8__(v12, 31));
  return 0x9AE16A3B2F90404FLL * ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) ^ ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) >> 47));
}

BOOL std::equal_to<std::string>::operator()[abi:ne200100](uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a2 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = a2[1];
  }

  v5 = *(a3 + 23);
  v6 = v5;
  if (v5 < 0)
  {
    v5 = a3[1];
  }

  if (v3 != v5)
  {
    return 0;
  }

  if (v4 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  return memcmp(v7, v8, v3) == 0;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,MTLCompilerDataType>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 39) < 0)
    {
      operator delete(__p[2]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void std::vector<MTLAddVertexFetchingToModulePass::ModifiedOutput>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 1)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 2 * a2);
      v5 += 2 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    if ((a2 + (v6 >> 1)) < 0)
    {
      std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
    }

    v7 = v4 - *a1;
    if (v7 <= a2 + (v6 >> 1))
    {
      v8 = a2 + (v6 >> 1);
    }

    else
    {
      v8 = v7;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v9 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<MTLAddVertexFetchingToModulePass::ModifiedOutput>>(a1, v9);
    }

    v10 = (2 * (v6 >> 1));
    bzero(v10, 2 * a2);
    v11 = &v10[2 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<MTLAddVertexFetchingToModulePass::ModifiedOutput>>(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

const void **std::__hash_table<std::__hash_value_type<std::string,MTLCompilerDataType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MTLCompilerDataType>>>::find<std::string>(void *a1, uint64_t *a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v12 == v6)
    {
      if (std::equal_to<std::string>::operator()[abi:ne200100](a1, i + 2, a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,MTLCompilerDataType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MTLCompilerDataType>>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<std::__hash_value_type<std::string,MTLCompilerDataType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MTLCompilerDataType>>>::remove(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,MTLCompilerDataType>,void *>>>::operator()[abi:ne200100](&v6, v3);
  }

  return v2;
}

void *std::__hash_table<std::__hash_value_type<std::string,MTLCompilerDataType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MTLCompilerDataType>>>::remove@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  v6 = *(*result + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 == result + 2)
  {
    goto LABEL_18;
  }

  v8 = v7[1];
  if (v5.u32[0] > 1uLL)
  {
    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }
  }

  else
  {
    v8 &= *&v3 - 1;
  }

  if (v8 != v4)
  {
LABEL_18:
    if (!*a2)
    {
      goto LABEL_19;
    }

    v9 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v4)
    {
LABEL_19:
      *(*result + 8 * v4) = 0;
    }
  }

  v10 = *a2;
  if (*a2)
  {
    v11 = *(v10 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v11 >= *&v3)
      {
        v11 %= *&v3;
      }
    }

    else
    {
      v11 &= *&v3 - 1;
    }

    if (v11 != v4)
    {
      *(*result + 8 * v11) = v7;
      v10 = *a2;
    }
  }

  *v7 = v10;
  *a2 = 0;
  --result[3];
  *a3 = a2;
  *(a3 + 8) = result;
  *(a3 + 16) = 1;
  *(a3 + 17) = 0;
  *(a3 + 20) = 0;
  return result;
}

uint64_t *std::vector<int>::vector[abi:ne200100](uint64_t *a1, unint64_t a2, int *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<unsigned int>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_257A2FF2C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<llvm::MDNode *>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<llvm::Type *>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_257A2FFA4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::vector<unsigned int>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::vector<unsigned int>>::clear[abi:ne200100](uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 24);
      v4 -= 24;
      v5 = v6;
      if (v6)
      {
        *(v2 - 16) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

void std::vector<std::vector<unsigned int>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    v18[4] = a1;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<unsigned int>>>(a1, v9);
    }

    v11 = 24 * v6;
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v13;
    v17 = *(a1 + 16);
    *(a1 + 16) = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    std::__split_buffer<std::vector<unsigned int>>::~__split_buffer(v18);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<unsigned int>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::vector<unsigned int>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::vector<unsigned int>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<unsigned int>>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    v5 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }
}

void std::__split_buffer<unsigned int>::emplace_back<unsigned int>(unint64_t *a1, _DWORD *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 1;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(a1[4], v11);
    }

    v7 = ((v6 >> 2) + 1) / -2;
    v8 = ((v6 >> 2) + 1) / 2;
    v9 = &v5[-4 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-4 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[4 * v7];
  }

  *v4 = *a2;
  a1[2] = (v4 + 4);
}

uint64_t *std::vector<llvm::Type *>::__init_with_size[abi:ne200100]<llvm::Type * const*,llvm::Type * const*>(uint64_t *result, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<llvm::Type *>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_257A30420(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(void *a1, unsigned int *a2, _DWORD *a3)
{
  v3 = *a2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_18;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = *a2;
    if (*&v4 <= v3)
    {
      v6 = v3 % v4.i32[0];
    }
  }

  else
  {
    v6 = (v4.i32[0] - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_18;
    }

LABEL_17:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_18;
    }
  }

  if (*(v8 + 4) != v3)
  {
    goto LABEL_17;
  }

  return v8;
}

void *std::__hash_table<std::__hash_value_type<unsigned long,unsigned long>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned long>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long &&>,std::tuple<>>(void *a1, unint64_t *a2, uint64_t a3, void **a4)
{
  v4 = *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

uint64_t *std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::find<unsigned int>(void *a1, unsigned int *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v2 <= v3)
    {
      v5 = v3 % v2.i32[0];
    }
  }

  else
  {
    v5 = (v2.i32[0] - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (*(result + 4) == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t *std::vector<unsigned long>::vector[abi:ne200100](uint64_t *a1, unint64_t a2, uint64_t *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<unsigned long>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_257A30A0C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned long>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, a2);
  }

  std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<SmallVertexPartialLoad>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t MTLVertexOutputLinkingPass::vertexOutputLinking(char ***a1, llvm::Module *a2, void *a3, uint64_t a4, unsigned int a5, uint64_t a6, unsigned int a7, unsigned int a8, unsigned int a9, unsigned int a10, int a11, int a12)
{
  if (!MTLFrameworkPass::checkFragmentRenderTargetArrayIndex(a1, a11, a12))
  {
    return 0;
  }

  if (a5 <= 1)
  {
    v18 = 1;
  }

  else
  {
    v18 = a5;
  }

  __p.__r_.__value_.__s.__data_[0] = 0;
  std::vector<BOOL>::vector(&v51, v18, &__p);
  __p.__r_.__value_.__r.__words[0] = "air.vertex";
  v50 = 259;
  NamedMetadata = llvm::Module::getNamedMetadata(a2, &__p);
  Operand = llvm::NamedMDNode::getOperand(NamedMetadata);
  v21 = (Operand - 8 * *(Operand + 8));
  v22 = v21[1];
  v23 = *(v22 + 8);
  if (v23)
  {
    v24 = 0;
    v45 = *a2;
    v25 = **(*(*(*v21 + 128) + 24) + 16);
    do
    {
      v26 = *(v22 - 8 * *(v22 + 8) + 8 * v24);
      String = llvm::MDString::getString(*(v26 - 8 * *(v26 + 8)));
      if (v28 > 16)
      {
        if (v28 == 29)
        {
          if (!memcmp(String, "air.render_target_array_index", 0x1DuLL))
          {
            dataTypeFromMetadata(1u, v26);
          }
        }

        else if (v28 == 17)
        {
          if (*String == 0x747265762E726961 && String[1] == 0x757074756F5F7865 && *(String + 16) == 116)
          {
            LODWORD(__p.__r_.__value_.__l.__data_) = 0;
            MatchingFragmentInput = MTLFrameworkPass::findMatchingFragmentInput(a1, &__p, v25, v24, v26, a3, a4);
            if (MatchingFragmentInput == 1)
            {
              data = __p.__r_.__value_.__l.__data_;
              *(v51 + ((LODWORD(__p.__r_.__value_.__l.__data_) >> 3) & 0x1FFFFFF8)) |= 1 << __p.__r_.__value_.__s.__data_[0];
            }

            else
            {
              if (MatchingFragmentInput == 2)
              {
                goto LABEL_64;
              }

              data = -1;
            }

            MTLFrameworkPass::addLocationToMetadata(v45, v22, v24, data);
          }

          else if (!memcmp(String, "air.clip_distance", 0x11uLL))
          {
            if (*(v25 + 8) == 16 && (v31 = *(*(v25 + 16) + 8 * v24)) != 0 && *(v31 + 8) == 17)
            {
              v32 = *(v31 + 32);
              v33 = (v32 + 3) >> 2;
            }

            else
            {
              LODWORD(v32) = 1;
              LODWORD(v33) = 1;
            }

            a7 += v33;
            a8 += v32;
          }
        }
      }

      else if (v28 == 12)
      {
        if (!memcmp(String, "air.position", 0xCuLL))
        {
          ++a7;
          a8 += 4;
        }
      }

      else if (v28 == 14 && !memcmp(String, "air.point_size", 0xEuLL))
      {
        ++a7;
        ++a8;
      }

      ++v24;
    }

    while (v23 != v24);
  }

  if (a5)
  {
    v36 = 0;
    v37 = 8;
    while (((*(v51 + ((v36 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v36) & 1) != 0)
    {
      ++v36;
      v37 += 32;
      if (a5 == v36)
      {
        goto LABEL_42;
      }
    }

    v41 = *(*a3 + v37);
    if (v41)
    {
      v42 = *(*a3 + v37 + 8);
      if (v42 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v42 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v48) = *(*a3 + v37 + 8);
      if (v42)
      {
        memmove(__dst, v41, v42);
      }

      *(__dst + v42) = 0;
    }

    else
    {
      __dst[0] = 0;
      __dst[1] = 0;
      v48 = 0;
    }

    MTLFrameworkPass::attribute_name(__dst, &__p);
    if (SHIBYTE(v48) < 0)
    {
      operator delete(__dst[0]);
    }

    p_p = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    MTLCompilerErrorObject::setFormattedErrorMessage(*a1, "Link failed: fragment input %s was not found in vertex shader outputs", p_p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
LABEL_42:
    v38 = a9;
    if (a7 <= a9)
    {
      v38 = a10;
      if (a8 <= a10)
      {
        v40 = 1;
        goto LABEL_65;
      }

      v39 = "varying components";
      a7 = a8;
    }

    else
    {
      v39 = "varyings";
    }

    MTLCompilerErrorObject::setFormattedErrorMessage(*a1, "Link failed: number of shader %s (%u) exceeds limit (%u). Note that on macOS the following attributes count towards the limit: [[position]], [[clip_distance]], [[point_size]], [[point_coord]], and, when read in the fragment shader, [[viewport_array_index]] & [[render_target_array_index]].", v39, a7, v38);
  }

LABEL_64:
  v40 = 0;
LABEL_65:
  if (v51)
  {
    operator delete(v51);
  }

  return v40;
}

void sub_257A30ED4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTLCheckPixelFormatValidPass::getArgumentTypeName(uint64_t a1, uint64_t a2, const char **a3)
{
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = 0;
    while (1)
    {
      v7 = *(a2 - 8 * *(a2 + 8) + 8 * v6);
      if (v7)
      {
        if (!*v7)
        {
          String = llvm::MDString::getString(v7);
          if (v9 == 17)
          {
            v10 = *String == 0x5F6772612E726961 && *(String + 8) == 0x6D616E5F65707974;
            if (v10 && *(String + 16) == 101)
            {
              break;
            }
          }
        }
      }

      if (v5 == ++v6)
      {
        LODWORD(v6) = v5;
        break;
      }
    }

    v12 = v6 + 1;
  }

  else
  {
    v12 = 1;
  }

  if (v12 >= v5)
  {
    return 0;
  }

  v13 = llvm::MDString::getString(*(a2 - 8 * *(a2 + 8) + 8 * v12));
  v15 = v14;
  v16 = strlen(v13);
  result = dataTypeFromString(v13, v16);
  *a3 = v13;
  a3[1] = v15;
  return result;
}

uint64_t MTLCheckPixelFormatValidPass::pixelColorFormatValid(MTLCompilerErrorObject **a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  if (!a2)
  {
    if (a5)
    {
      return 1;
    }

    MTLCompilerErrorObject::setErrorMessage(*a1, "Shaders reads from a color attachment whose pixel format is MTLPixelFormatInvalid");
    return 0;
  }

  v31 = 0;
  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  __src = 0;
  __len = 0;
  InfoForDevice = MTLPixelFormatGetInfoForDevice();
  if (!MTLCheckPixelFormatValidPass::getArgumentTypeName(InfoForDevice, a4, &__src))
  {
    v14 = *(a3 + 8);
    LOBYTE(v15) = *(a3 + 8);
    if ((*(a3 + 8) & 0xFE) == 0x12)
    {
      v15 = *(**(a3 + 16) + 8);
    }

    if ((v15 | 2) == 2)
    {
      if ((BYTE10(v28) & 3) != 0)
      {
        goto LABEL_20;
      }

      v16 = "Floating point fragment input cannot be read from a %s color attachment";
      v17 = *a1;
      v18 = "Floating point fragment output cannot be written to a %s color attachment";
    }

    else
    {
      if ((BYTE10(v28) & 3) == 0)
      {
        goto LABEL_20;
      }

      v16 = "Integer fragment input cannot be read from a %s color attachment";
      v17 = *a1;
      v18 = "Integer fragment output cannot be written to a %s color attachment";
    }

    if (a5)
    {
      MTLCompilerErrorObject::setFormattedErrorMessage(v17, v18, v28);
    }

    else
    {
      MTLCompilerErrorObject::setFormattedErrorMessage(v17, v16, v28);
    }

    return 0;
  }

  ComponentType = MTLDataTypeGetComponentType();
  if (ComponentType > 0x29)
  {
    goto LABEL_53;
  }

  if (((1 << ComponentType) & 0x10008) != 0)
  {
    v12 = 196608;
    goto LABEL_18;
  }

  if (((1 << ComponentType) & 0x2020000000) != 0)
  {
    v12 = 1310720;
    goto LABEL_18;
  }

  if (((1 << ComponentType) & 0x20200000000) == 0)
  {
LABEL_53:
    abort();
  }

  v12 = 2621440;
LABEL_18:
  if ((DWORD2(v28) & v12) == 0)
  {
    if (a5)
    {
      v20 = "output";
    }

    else
    {
      v20 = "input";
    }

    v21 = *a1;
    if (__src)
    {
      v22 = __len;
      if (__len >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (__len >= 0x17)
      {
        operator new();
      }

      HIBYTE(v25) = __len;
      if (__len)
      {
        memmove(__dst, __src, __len);
      }

      *(__dst + v22) = 0;
      v23 = __dst;
      if (v25 < 0)
      {
        v23 = __dst[0];
      }
    }

    else
    {
      __dst[0] = 0;
      __dst[1] = 0;
      v23 = __dst;
      v25 = 0;
    }

    MTLCompilerErrorObject::setFormattedErrorMessage(v21, "%s of type %s is not compatible with a %s color attachment.", v20, v23, v28);
    if (SHIBYTE(v25) < 0)
    {
      operator delete(__dst[0]);
    }

    return 0;
  }

  v14 = *(a3 + 8);
LABEL_20:
  if (v14 == 18)
  {
    v19 = *(a3 + 32);
  }

  else
  {
    v19 = 1;
  }

  if (a2 == 1 && a5 && v19 <= 3)
  {
    MTLCompilerErrorObject::setFormattedErrorMessage(*a1, "fragment shader color output requires 4 outputs for pixel format (%s)");
    return 0;
  }

  result = 1;
  if (a5 && v19 < v30)
  {
    MTLCompilerErrorObject::setFormattedErrorMessage(*a1, "fragment shader color output does not have enough components for the pixel format (%s)");
    return 0;
  }

  return result;
}

void sub_257A31350(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTLCheckPixelFormatValidPass::formatIsValid(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v13 = *(a2 - 8 * *(a2 + 8) + 8 * a3);
  *a7 = 0;
  String = llvm::MDString::getString(*(v13 - 8 * *(v13 + 8) + 8 * (a8 ^ 1u)));
  if (v15 == 9)
  {
    v23 = *String == 0x747065642E726961 && *(String + 8) == 104;
    if (!v23 || (*(a1 + 8) & 1) != 0)
    {
      return 1;
    }

    MTLPixelFormatGetInfoForDevice();
    MTLCompilerErrorObject::setErrorMessage(*a1, "depthAttachmentPixelFormat is not valid and shader writes to depth");
  }

  else
  {
    if (v15 != 17)
    {
      return 1;
    }

    v16 = *String == 0x646E65722E726961 && *(String + 8) == 0x65677261745F7265;
    if (!v16 || *(String + 16) != 116)
    {
      return 1;
    }

    *a7 = 1;
    v18 = v13 - 8 * *(v13 + 8);
    v19 = 16;
    if (a8)
    {
      v19 = 8;
    }

    v20 = *(*(v18 + v19) + 128);
    if (*(v20 + 16) == 16)
    {
      v21 = (v20 + 24);
      if (*(v20 + 32) >= 0x41u)
      {
        v21 = *v21;
      }

      v22 = *v21;
    }

    else
    {
      v22 = -1;
    }

    v24 = *(a5 + 8 * v22);
    *(a7 + 2) = v22;
    if (a8)
    {
      v25 = *(*(v18 + 16) + 128);
      if (*(v25 + 16) == 16)
      {
        v26 = (v25 + 24);
        if (*(v25 + 32) >= 0x41u)
        {
          v26 = *v26;
        }

        v27 = *v26;
      }

      else
      {
        v27 = -1;
      }

      *(a7 + 4) = v27;
    }

    if (MTLCheckPixelFormatValidPass::pixelColorFormatValid(a1, v24, a4, v13, a8))
    {
      return 1;
    }
  }

  return 0;
}

uint64_t MTLCheckPixelFormatValidPass::checkPixelFormatValid(char ***a1, llvm::Module *this, uint64_t a3, unsigned __int16 *a4)
{
  v45 = *MEMORY[0x277D85DE8];
  *&v42[0] = "air.fragment";
  LOWORD(v43) = 259;
  NamedMetadata = llvm::Module::getNamedMetadata(this, v42);
  Operand = llvm::NamedMDNode::getOperand(NamedMetadata);
  v9 = (Operand - 8 * *(Operand + 8));
  v10 = v9[1];
  v11 = *(*v9 + 128);
  v12 = **(*(v11 + 3) + 16);
  v13 = *(v10 + 8);
  v40 = 0;
  v43 = 0u;
  v44 = 0u;
  memset(v42, 0, sizeof(v42));
  v14 = *(a3 + 8);
  if (*(a3 + 8))
  {
    do
    {
      v15 = *a4++;
      *(v42 + (v15 & 0xF)) = v15 >> 4;
      --v14;
    }

    while (v14);
  }

  if (v13)
  {
    v38 = v11;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    while (1)
    {
      v19 = v12;
      if (*(v12 + 8) == 16)
      {
        v19 = *(*(v12 + 16) + 8 * v16);
      }

      result = MTLCheckPixelFormatValidPass::formatIsValid(a1, v10, v16, v19, v42, a3, &v41, 1);
      if (!result)
      {
        break;
      }

      if (v41 == 1)
      {
        v21 = 1 << SBYTE2(v41);
        if (WORD2(v41))
        {
          v17 |= v21;
        }

        else
        {
          v18 |= v21;
        }
      }

      if (v13 == ++v16)
      {
        v40 = v17;
        v11 = v38;
        goto LABEL_15;
      }
    }
  }

  else
  {
    v18 = 0;
LABEL_15:
    v22 = 0;
    v41 = v18;
    v23 = *(a3 + 8);
    v24 = BYTE2(v23);
    v25 = BYTE1(v23);
    while (2)
    {
      v26 = 0;
      v27 = 1;
      v28 = &v41;
      do
      {
        v29 = v27;
        if (v27)
        {
          v30 = v25;
        }

        else
        {
          v30 = v24;
        }

        if (((1 << v22) & v30) != 0 && (*v28 & (1 << v22)) == 0)
        {
          MTLCompilerErrorObject::setFormattedErrorMessage(*a1, "Fragment shader does not write to render target color(0), index(%u) that is required for blending", v26);
          return 0;
        }

        v27 = 0;
        v26 = 1;
        v28 = &v40;
      }

      while ((v29 & 1) != 0);
      if (++v22 != 8)
      {
        continue;
      }

      break;
    }

    v31 = *(Operand - 8 * *(Operand + 8) + 16);
    if (*(v11 + 9))
    {
      llvm::Function::BuildLazyArguments(v11);
    }

    if (v31 && (v32 = *(v31 + 8)) != 0)
    {
      v33 = 0;
      v34 = *(v11 + 11);
      v35 = v32 - 1;
      do
      {
        v36 = *v34;
        v34 += 5;
        result = MTLCheckPixelFormatValidPass::formatIsValid(a1, v31, v33, v36, v42, a3, v39, 0);
        if (result)
        {
          v37 = v35 == v33;
        }

        else
        {
          v37 = 1;
        }

        ++v33;
      }

      while (!v37);
    }

    else
    {
      return 1;
    }
  }

  return result;
}

llvm::Value *MTLFrameworkPass::truncateVector(llvm::Type *this, llvm::LLVMContext *a2, llvm::Value *a3, int a4)
{
  ShuffleVector = a3;
  if (*a3)
  {
    v5 = *(*a3 + 8) == 18;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v7 = *(*a3 + 32);
    if (v7 != 1 && v7 != a4)
    {
      if (a4 == 1)
      {
        llvm::Type::getInt32Ty(this, a2);
        v11 = llvm::ConstantInt::get();
        v19 = 257;
        return llvm::IRBuilderBase::CreateExtractElement(a2, ShuffleVector, v11, v18, v12);
      }

      else
      {
        std::vector<llvm::Constant *>::vector[abi:ne200100](__p, a4);
        if (a4 >= 1)
        {
          v14 = 0;
          do
          {
            llvm::Type::getInt32Ty(this, v13);
            *(__p[0] + v14++) = llvm::ConstantInt::get();
          }

          while (a4 != v14);
        }

        v15 = llvm::ConstantVector::get();
        v19 = 257;
        ShuffleVector = llvm::IRBuilderBase::CreateShuffleVector(a2, ShuffleVector, ShuffleVector, v15, v18);
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }
      }
    }
  }

  return ShuffleVector;
}

void sub_257A3191C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MTLFrameworkPass::addLocationToMetadata(llvm::Type *a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = *(a2 - 8 * *(a2 + 8) + 8 * a3);
  v6 = *(v5 + 8);
  std::vector<llvm::Metadata *>::vector[abi:ne200100](__p, v6 + 2);
  if (v6 < 1)
  {
    goto LABEL_32;
  }

  v7 = 0;
  v8 = 0;
  LODWORD(v9) = 0;
  do
  {
    while (1)
    {
      v10 = v5 - 8 * *(v5 + 8);
      v11 = v9;
      *(__p[0] + v9) = *(v10 + 8 * v7);
      v9 = v9 + 1;
      if (!v7 || (v8 & 1) != 0)
      {
        break;
      }

      v12 = *(v10 + 8 * (v7 - 1));
      if (*v12)
      {
        goto LABEL_6;
      }

      String = llvm::MDString::getString(v12);
      if (v14 == 17)
      {
        if (*String != 0x747265762E726961 || *(String + 8) != 0x757074756F5F7865 || *(String + 16) != 116)
        {
LABEL_6:
          v8 = 0;
          break;
        }
      }

      else
      {
        if (v14 != 18)
        {
          goto LABEL_6;
        }

        v15 = *String == 0x676172662E726961 && *(String + 8) == 0x706E695F746E656DLL;
        if (!v15 || *(String + 16) != 29813)
        {
          goto LABEL_6;
        }
      }

      *(__p[0] + v9) = llvm::MDString::get();
      llvm::Type::getInt32Ty(a1, v19);
      llvm::ConstantInt::get();
      LODWORD(v9) = v11 + 3;
      *(__p[0] + v11 + 2) = llvm::ValueAsMetadata::get();
      ++v7;
      v8 = 1;
      if (v7 == v6)
      {
        goto LABEL_31;
      }
    }

    ++v7;
  }

  while (v7 != v6);
  if ((v8 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_31:
  llvm::MDTuple::getImpl();
  llvm::MDNode::replaceOperandWith();
LABEL_32:
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_257A31B38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTLFrameworkPass::createVertexOutputMetadata(llvm::Type *a1, const char *a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v26 = *MEMORY[0x277D85DE8];
  v22[0] = llvm::MDString::get();
  if (a2)
  {
    strlen(a2);
  }

  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  v22[1] = llvm::MDString::get();
  if (a8)
  {
    *&v23 = llvm::MDString::get();
    llvm::Type::getInt32Ty(a1, v15);
    llvm::ConstantInt::get();
    *(&v23 + 1) = llvm::ValueAsMetadata::get();
    v16 = 4;
    if (!a3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v16 = 2;
    if (!a3)
    {
      goto LABEL_10;
    }
  }

  ShaderTypeName = MTLDataTypeGetShaderTypeName(a3, a4);
  v18 = v16 | 1;
  v22[v16] = llvm::MDString::get();
  if (ShaderTypeName)
  {
    strlen(ShaderTypeName);
  }

  v16 += 2;
  v22[v18] = llvm::MDString::get();
LABEL_10:
  if ((a5 - 1) > 3)
  {
    v19 = &unk_257A6F51A;
  }

  else
  {
    v19 = off_27984E5A0[a5 - 1];
  }

  strlen(v19);
  v22[v16] = llvm::MDString::get();
  if ((a6 - 1) > 2)
  {
    v20 = &unk_257A6F51A;
  }

  else
  {
    v20 = off_27984E5C0[a6 - 1];
  }

  strlen(v20);
  v22[v16 + 1] = llvm::MDString::get();
  return llvm::MDTuple::getImpl();
}

char *MTLFrameworkPass::samplingStringFromQualifier(MTLFrameworkPass *this)
{
  if ((this - 1) > 3)
  {
    return &unk_257A6F51A;
  }

  else
  {
    return off_27984E5A0[this - 1];
  }
}

char *MTLFrameworkPass::interpolationStringFromQualifier(MTLFrameworkPass *this)
{
  if ((this - 1) > 2)
  {
    return &unk_257A6F51A;
  }

  else
  {
    return off_27984E5C0[this - 1];
  }
}

void *MTLFrameworkPass::getArgumentMetadataIndices(uint64_t a1, uint64_t a2)
{
  result = memset(*a2, 255, *(a2 + 8) - *a2);
  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = 0;
    v7 = *a2;
    v8 = a1;
    do
    {
      v9 = *(v8 - 8 * *(a1 + 8));
      v10 = *(*(v9 - 8 * *(v9 + 8)) + 128);
      v11 = (v10 + 24);
      if (*(v10 + 32) >= 0x41u)
      {
        v11 = *v11;
      }

      v7[*v11] = v6++;
      v8 += 8;
    }

    while (v5 != v6);
  }

  return result;
}

uint64_t MTLFrameworkPass::extractVaryingInfoFromMetadata(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v5 = a3;
  *(a1 + 8) = llvm::MDString::getString(*(a2 - 8 * *(a2 + 8) + 8 * a3));
  *(a1 + 16) = v8;
  v9 = *(a2 + 8);
  for (i = v5 + 1; i < v9; v5 = i++)
  {
    v11 = *(a2 - 8 * *(a2 + 8) + 8 * i);
    if (!*v11)
    {
      String = llvm::MDString::getString(v11);
      v14 = String;
      if (v13 <= 14)
      {
        switch(v13)
        {
          case 8:
            if (!memcmp(String, "air.flat", 8uLL))
            {
              v18 = *(a1 + 28) & 0xF9 | 4;
              goto LABEL_35;
            }

            break;
          case 10:
            if (!memcmp(String, "air.center", 0xAuLL))
            {
              v18 = *(a1 + 28) & 0xC7 | 8;
              goto LABEL_35;
            }

            if (!memcmp(v14, "air.sample", 0xAuLL))
            {
              v18 = *(a1 + 28) & 0xC7 | 0x18;
              goto LABEL_35;
            }

            break;
          case 12:
            if (*String == 0x5F6772612E726961 && String[2] == 1701667182)
            {
              i = v5 + 2;
            }

            else if (!memcmp(String, "air.centroid", 0xCuLL))
            {
              v18 = *(a1 + 28) & 0xC7 | 0x10;
LABEL_35:
              *(a1 + 28) = v18;
            }

            break;
        }
      }

      else if (v13 > 17)
      {
        if (v13 != 18)
        {
          if (v13 != 26 || memcmp(String, "air.interpolation_function", 0x1AuLL))
          {
            continue;
          }

          v18 = *(a1 + 28) & 0xC7 | 0x20;
          goto LABEL_35;
        }

        if (!memcmp(String, "air.no_perspective", 0x12uLL))
        {
          v18 = *(a1 + 28) | 6;
          goto LABEL_35;
        }
      }

      else
      {
        if (v13 != 15)
        {
          if (v13 == 17 && !memcmp(String, "air.arg_type_name", 0x11uLL))
          {
            i = v5 + 2;
            v15 = llvm::MDString::getString(*(a2 - 8 * *(a2 + 8) + 8 * (v5 + 2)));
            v16 = strlen(v15);
            *(a1 + 24) = dataTypeFromString(v15, v16);
          }

          continue;
        }

        if (!memcmp(String, "air.perspective", 0xFuLL))
        {
          v18 = *(a1 + 28) & 0xF9 | 2;
          goto LABEL_35;
        }
      }
    }
  }

  result = *(a1 + 24);
  if (result)
  {
    v20 = *(a1 + 28);
    goto LABEL_53;
  }

  v21 = *(a4 + 8);
  v22 = 1;
  if (a4 && *(a4 + 8) == 18)
  {
    v22 = *(a4 + 32);
    v21 = *(*(a4 + 24) + 8);
  }

  if (v21 == 13)
  {
    v24 = v21 >> 8;
    switch(v24)
    {
      case 8u:
        v23 = 45;
        goto LABEL_46;
      case 0x20u:
        v23 = 29;
        goto LABEL_46;
      case 0x10u:
        v23 = 37;
        goto LABEL_46;
    }

    goto LABEL_51;
  }

  if (v21 == 2)
  {
    v23 = 3;
    goto LABEL_46;
  }

  if (v21)
  {
LABEL_51:
    result = 0;
    goto LABEL_52;
  }

  v23 = 16;
LABEL_46:
  result = MTLDataTypeGetVectorDataType(v23, v22);
  *(a1 + 24) = result;
LABEL_52:
  v20 = *(a1 + 28) | 0x40;
  *(a1 + 28) = v20;
LABEL_53:
  v25 = v20 & 0x38;
  v26 = v20 & 6;
  if (v25)
  {
    v27 = v26 == 0;
  }

  else
  {
    v27 = 1;
  }

  if (v27)
  {
    result = MTLDataTypeGetComponentType(result);
    v28 = *(a1 + 28);
    if ((v28 & 0x38) == 0)
    {
      v28 |= 8u;
      *(a1 + 28) = v28;
    }

    if (result == 16 || result == 3)
    {
      if ((v28 & 6) != 0)
      {
        return result;
      }

      v29 = 2;
    }

    else
    {
      if ((v28 & 6) != 0)
      {
        return result;
      }

      v29 = 4;
    }

    *(a1 + 28) = v28 | v29;
  }

  return result;
}

void MTLFrameworkPass::attribute_name(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  __idx = 0;
  v4 = std::string::find(a1, "generated(", 0, 0xAuLL);
  if (v4 == -1)
  {
    if (*(a1 + 23) < 0)
    {
      v6 = *a1;
      v7 = *(a1 + 8);

      std::string::__init_copy_ctor_external(a2, v6, v7);
    }

    else
    {
      *&a2->__r_.__value_.__l.__data_ = *a1;
      a2->__r_.__value_.__r.__words[2] = *(a1 + 16);
    }
  }

  else
  {
    std::string::basic_string(&__str, a1, v4 + 10, 0xFFFFFFFFFFFFFFFFLL, &v10);
    v5 = std::stoi(&__str, &__idx, 10);
    std::string::basic_string(a2, &__str, __idx, v5, &v10);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }
}

void sub_257A322D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTLFrameworkPass::findMatchingFragmentInput(char ***a1, _DWORD *a2, uint64_t a3, unsigned int a4, uint64_t a5, void *a6, uint64_t a7)
{
  v9 = a3;
  if (*(a3 + 8) == 16)
  {
    v9 = *(*(a3 + 16) + 8 * a4);
  }

  v21 = 0;
  memset(v22, 0, 21);
  MTLFrameworkPass::extractVaryingInfoFromMetadata(&v21, a5, 1u, v9);
  llvm::StringRef::str(v22, &__p);
  v12 = std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::find<std::string>(a7, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (a7 + 8 == v12)
  {
    return 0;
  }

  v13 = *(v12 + 56);
  *a2 = v13;
  v14 = *a6 + 32 * v13;
  v15 = *(v14 + 24);
  if ((BYTE4(v22[2]) & 0x40) != 0)
  {
    LODWORD(v15) = MTLDataTypeGetSignedType(v15);
  }

  if (LODWORD(v22[2]) == v15)
  {
    return 1;
  }

  llvm::StringRef::str((v14 + 8), v18);
  MTLFrameworkPass::attribute_name(v18, &__p);
  if (v19 < 0)
  {
    operator delete(v18[0]);
  }

  p_p = &__p;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  MTLCompilerErrorObject::setFormattedErrorMessage(*a1, "Link failed: The type of fragment input %s does not match the type of the corresponding vertex shader output", p_p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return 2;
}

void sub_257A32444(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTLFrameworkPass::checkFragmentRenderTargetArrayIndex(MTLCompilerErrorObject **a1, int a2, int a3)
{
  if (!a3)
  {
    return 1;
  }

  if (a2)
  {
    if (a2 == a3)
    {
      return 1;
    }

    v4 = "Link failed: the render_target_array_index has a different type in the fragment shader and the vertex shader";
  }

  else
  {
    v4 = "Link failed: fragment shader is reading the render_target_array_index but the vertex shader does not write it";
  }

  MTLCompilerErrorObject::setErrorMessage(*a1, v4);
  return 0;
}

void MTLFrameworkPass::appendBufferMetadata(llvm::Type *a1, llvm::LLVMContext *a2, unsigned int a3, int a4)
{
  v8[11] = *MEMORY[0x277D85DE8];
  llvm::Type::getInt32Ty(a1, a2);
  llvm::ConstantInt::get();
  v8[1] = llvm::ValueAsMetadata::get();
  v8[2] = llvm::MDString::get();
  v8[3] = llvm::MDString::get();
  llvm::Type::getInt32Ty(a1, v6);
  llvm::ConstantInt::get();
  v8[4] = llvm::ValueAsMetadata::get();
  llvm::Type::getInt32Ty(a1, v7);
  llvm::ConstantInt::get();
  v8[5] = llvm::ValueAsMetadata::get();
  v8[6] = llvm::MDString::get();
  v8[7] = llvm::MDString::get();
  v8[8] = llvm::MDString::get();
  v8[9] = llvm::MDString::get();
  v8[10] = llvm::MDString::get();
  v8[0] = llvm::MDTuple::getImpl();
  std::vector<llvm::CallGraphNode *>::push_back[abi:ne200100](a2, v8);
}

void MTLFrameworkPass::addRequiredBuiltInsToBuiltInList(char **a1, void *a2, uint64_t *a3)
{
  v4 = *a3;
  v3 = a3[1];
  if (v3 != *a3)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = (v4 + v9);
      v11 = *(v4 + v9);
      if (*(v4 + v9))
      {
        if (v9 >= 0xAu)
        {
          abort();
        }

        v12 = *(*a2 + (v8 >> 56));
        v13 = dword_257A6DDB0[v9 & 0xF];
        v14 = *a1;
        if (v12 == -1)
        {
          *(*a2 + (v8 >> 56)) = (*(a1 + 2) - v14) >> 3;
          v19 = a1[1];
          v18 = a1[2];
          if (v19 >= v18)
          {
            v21 = (v19 - *a1) >> 3;
            if ((v21 + 1) >> 61)
            {
              std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
            }

            v22 = v18 - *a1;
            v23 = v22 >> 2;
            if (v22 >> 2 <= (v21 + 1))
            {
              v23 = v21 + 1;
            }

            if (v22 >= 0x7FFFFFFFFFFFFFF8)
            {
              v24 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v24 = v23;
            }

            if (v24)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<BuiltInInfo>>(a1, v24);
            }

            v25 = (8 * v21);
            *v25 = (v11 << 8) | (v13 << 32) | v9 & 0xF;
            v20 = 8 * v21 + 8;
            v26 = a1[1] - *a1;
            v27 = v25 - v26;
            memcpy(v25 - v26, *a1, v26);
            v28 = *a1;
            *a1 = v27;
            a1[1] = v20;
            a1[2] = 0;
            if (v28)
            {
              operator delete(v28);
            }
          }

          else
          {
            *v19 = (v11 << 8) | (v13 << 32) | v9 & 0xF;
            v20 = (v19 + 1);
          }

          a1[1] = v20;
          v4 = *a3;
          v3 = a3[1];
        }

        else
        {
          v15 = &v14[8 * v12];
          v17 = v15[1];
          v16 = v15 + 1;
          if (v17 >= v11)
          {
            v10 = v16;
          }

          *v16 = *v10;
          *(v16 + 3) = v13;
        }
      }

      ++v9;
      v8 += 0x100000000000000;
    }

    while (v9 < v3 - v4);
  }
}

uint64_t MTLFrameworkPass::getLLVMVectorType(llvm::Type *a1, llvm::LLVMContext *a2, unsigned int a3)
{
  if (a2 <= 32)
  {
    switch(a2)
    {
      case 3:
        result = llvm::Type::getFloatTy(a1, a2);
        break;
      case 0x10:
        result = llvm::Type::getHalfTy(a1, a2);
        break;
      case 0x1D:
        goto LABEL_9;
      default:
        goto LABEL_21;
    }
  }

  else
  {
    if (a2 <= 40)
    {
      if (a2 != 33)
      {
        if (a2 != 37)
        {
LABEL_21:
          abort();
        }

        goto LABEL_13;
      }

LABEL_9:
      result = llvm::Type::getInt32Ty(a1, a2);
      goto LABEL_16;
    }

    if (a2 == 41)
    {
LABEL_13:
      result = llvm::Type::getInt16Ty(a1, a2);
      goto LABEL_16;
    }

    if (a2 != 53)
    {
      goto LABEL_21;
    }

    result = llvm::Type::getInt1Ty(a1, a2);
  }

LABEL_16:
  if (a3 >= 2)
  {

    return llvm::VectorType::get();
  }

  return result;
}

uint64_t MTLFrameworkPass::addBuiltInParameter(llvm::Type *this, char *a2, uint64_t *a3, uint64_t *a4, uint64_t a5, int a6, int a7)
{
  v7 = a7;
  v8 = a6;
  v14 = *a3;
  v15 = a3[1];
  if (v15 == *a3)
  {
    v17 = 0;
    v19 = a3[1];
  }

  else
  {
    v17 = 0;
    v18 = 1;
    do
    {
      if (*(v14 + 8 * v17) == a5)
      {
        String = llvm::MDString::getString(*(*(*a4 + 8 * v17) - 8 * *(*(*a4 + 8 * v17) + 8) + 8));
        v22 = a2;
        if (a2)
        {
          v23 = String;
          v24 = strlen(a2);
          if (v22 == v24 && (!v24 || !memcmp(v23, a2, v24)))
          {
            return v17;
          }
        }

        else if (!a2)
        {
          return v17;
        }
      }

      v17 = v18;
      v14 = *a3;
      v19 = a3[1];
    }

    while ((v19 - *a3) >> 3 > v18++);
    v17 = (v19 - *a3) >> 3;
    v15 = *a3;
    v7 = a7;
    v8 = a6;
  }

  v25 = a3[2];
  if (v19 >= v25)
  {
    v26 = v25 - v15;
    v27 = v26 >> 2;
    if (v26 >> 2 <= (v17 + 1))
    {
      v27 = v17 + 1;
    }

    if (v26 >= 0x7FFFFFFFFFFFFFF8)
    {
      v28 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v28 = v27;
    }

    std::__allocate_at_least[abi:ne200100]<std::allocator<llvm::Type *>>(a3, v28);
  }

  *v19 = a5;
  a3[1] = (v19 + 1);
  __p = 0;
  v37 = 0;
  v38 = 0;
  llvm::Type::getInt32Ty(this, a2);
  llvm::ConstantInt::get();
  Impl = llvm::ValueAsMetadata::get();
  std::vector<llvm::CallGraphNode *>::push_back[abi:ne200100](&__p, &Impl);
  Impl = llvm::MDString::get(this, a2, v29);
  std::vector<llvm::CallGraphNode *>::push_back[abi:ne200100](&__p, &Impl);
  if (v8)
  {
    Impl = llvm::MDString::get();
    std::vector<llvm::CallGraphNode *>::push_back[abi:ne200100](&__p, &Impl);
    ComponentType = MTLDataTypeGetComponentType(v8);
    ShaderTypeName = MTLDataTypeGetShaderTypeName(ComponentType, v7);
    Impl = llvm::MDString::get(this, ShaderTypeName, v32);
    std::vector<llvm::CallGraphNode *>::push_back[abi:ne200100](&__p, &Impl);
  }

  Impl = llvm::MDTuple::getImpl();
  std::vector<llvm::CallGraphNode *>::push_back[abi:ne200100](a4, &Impl);
  if (__p)
  {
    v37 = __p;
    operator delete(__p);
  }

  return v17;
}

void sub_257A32B5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTLFrameworkPass::callFunction(uint64_t a1, uint64_t a2, char *__s, uint64_t a4, uint64_t **a5, uint64_t a6, uint64_t a7)
{
  if (__s)
  {
    strlen(__s);
  }

  Function = llvm::Module::getFunction();
  if (!Function)
  {
    __p = 0;
    v31 = 0;
    v32 = 0;
    if (a6)
    {
      v27 = a5;
      v14 = 0;
      v15 = 8 * a6;
      do
      {
        v16 = **a5;
        if (v14 >= v32)
        {
          v17 = (v14 - __p) >> 3;
          if ((v17 + 1) >> 61)
          {
            std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
          }

          v18 = (v32 - __p) >> 2;
          if (v18 <= v17 + 1)
          {
            v18 = v17 + 1;
          }

          if (v32 - __p >= 0x7FFFFFFFFFFFFFF8)
          {
            v19 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v19 = v18;
          }

          if (v19)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<llvm::Type *>>(&__p, v19);
          }

          v20 = (8 * v17);
          *v20 = v16;
          v14 = (8 * v17 + 8);
          v21 = v20 - (v31 - __p);
          memcpy(v21, __p, v31 - __p);
          v22 = __p;
          __p = v21;
          v31 = v14;
          v32 = 0;
          if (v22)
          {
            operator delete(v22);
          }
        }

        else
        {
          *v14 = v16;
          v14 += 8;
        }

        v31 = v14;
        ++a5;
        v15 -= 8;
      }

      while (v15);
      a5 = v27;
    }

    v23 = llvm::FunctionType::get();
    v24 = 1;
    HIBYTE(v29) = 1;
    if (*__s)
    {
      v28[0] = __s;
      v24 = 3;
    }

    LOBYTE(v29) = v24;
    Function = llvm::Function::Create(v23, 0, v28, a1);
    *(Function + 112) = a7;
    if (__p)
    {
      v31 = __p;
      operator delete(__p);
    }
  }

  v25 = *(Function + 24);
  v29 = 257;
  return llvm::IRBuilderBase::CreateCall(a2, v25, Function, a5, a6, v28, 0);
}

void sub_257A32D7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::find<std::string>(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v4 = *(a2 + 23);
  v5 = v4 >= 0 ? *(a2 + 23) : *(a2 + 8);
  v6 = v4 >= 0 ? a2 : *a2;
  v7 = a1 + 8;
  do
  {
    v8 = *(v3 + 55);
    if (v8 >= 0)
    {
      v9 = *(v3 + 55);
    }

    else
    {
      v9 = *(v3 + 40);
    }

    if (v8 >= 0)
    {
      v10 = (v3 + 32);
    }

    else
    {
      v10 = *(v3 + 32);
    }

    if (v5 >= v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = v5;
    }

    v12 = memcmp(v10, v6, v11);
    v13 = v9 < v5;
    if (v12)
    {
      v13 = v12 < 0;
    }

    v14 = !v13;
    if (v13)
    {
      v15 = 8;
    }

    else
    {
      v15 = 0;
    }

    if (v14)
    {
      v7 = v3;
    }

    v3 = *(v3 + v15);
  }

  while (v3);
  if (v7 == v2)
  {
    return v2;
  }

  v16 = *(v7 + 55);
  v17 = v16 >= 0 ? *(v7 + 55) : *(v7 + 40);
  v18 = v16 >= 0 ? (v7 + 32) : *(v7 + 32);
  v19 = v17 >= v5 ? v5 : v17;
  v20 = memcmp(v6, v18, v19);
  v21 = v5 < v17;
  if (v20)
  {
    v21 = v20 < 0;
  }

  if (v21)
  {
    return v2;
  }

  return v7;
}

uint64_t MTLIRBuilder::initTypeCache(MTLIRBuilder *this, llvm::LLVMContext *a2)
{
  *(this + 17) = llvm::Type::getInt64Ty(a2, a2);
  *(this + 18) = llvm::Type::getInt32Ty(a2, v4);
  *(this + 19) = llvm::Type::getInt16Ty(a2, v5);
  *(this + 20) = llvm::Type::getInt8Ty(a2, v6);
  *(this + 21) = llvm::Type::getInt1Ty(a2, v7);
  result = llvm::Type::getInt8PtrTy(a2, 0);
  *(this + 22) = result;
  return result;
}

llvm::Instruction *MTLIRBuilder::CreateNSWFoldMul(MTLIRBuilder *this, llvm::Value *a2, llvm::Value *a3, const llvm::Twine *a4)
{
  v4 = *(a2 + 16);
  v5 = v4 == 16;
  if (v4 == 16)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  if (v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = a2;
  }

  if (a3)
  {
    v8 = *(a3 + 16) == 16;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    v9 = a3;
  }

  else
  {
    v9 = v6;
  }

  if (v8)
  {
    v10 = v7;
  }

  else
  {
    v10 = a3;
  }

  if (v10)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    return llvm::IRBuilderBase::CreateMul(this, a2, a3, a4, 0, 1);
  }

  if (*(v9 + 8) > 0x40u)
  {
    v12 = **(v9 + 3);
    if (v12)
    {
LABEL_22:
      if (v12 == 1)
      {
        return v10;
      }

      return llvm::IRBuilderBase::CreateMul(this, a2, a3, a4, 0, 1);
    }
  }

  else
  {
    v12 = *(v9 + 3);
    if (v12)
    {
      goto LABEL_22;
    }
  }

  return llvm::ConstantInt::get();
}

llvm::Value *MTLIRBuilder::CreateNSWFoldAdd(MTLIRBuilder *this, llvm::Value *a2, llvm::Value *a3, const llvm::Twine *a4)
{
  v4 = *(a2 + 16);
  v5 = v4 == 16;
  if (v4 == 16)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  if (v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = a2;
  }

  if (a3)
  {
    v8 = *(a3 + 16) == 16;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    v9 = a3;
  }

  else
  {
    v9 = v6;
  }

  if (v8)
  {
    v10 = v7;
  }

  else
  {
    v10 = a3;
  }

  if (v10)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    return llvm::IRBuilderBase::CreateAdd(this, a2, a3, a4, 0, 1);
  }

  v12 = (v9 + 24);
  if (*(v9 + 8) >= 0x41u)
  {
    v12 = *v12;
  }

  if (*v12)
  {
    return llvm::IRBuilderBase::CreateAdd(this, a2, a3, a4, 0, 1);
  }

  else
  {
    return v10;
  }
}

uint64_t MTLIRBuilder::CreateAtomicFetchAdd(MTLIRBuilder *this, llvm::Type **PointerCast, llvm::Value *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = *(*(*(this + 6) + 56) + 40);
  v7 = (this + 144);
  v17[0] = llvm::PointerType::get();
  v8 = getOrInsertFunction<char const(&)[28],llvm::Type *&,llvm::PointerType *,llvm::Type *&,llvm::Type *&,llvm::Type *&,llvm::Type *&>(v6, "air.atomic.global.add.u.i32", v7, v17, v7, v7, v7, v7 + 3);
  v9 = *PointerCast;
  if (v9 != llvm::PointerType::get())
  {
    v10 = llvm::PointerType::get();
    LOWORD(v18) = 257;
    PointerCast = llvm::IRBuilderBase::CreatePointerCast(this, PointerCast, v10, v17, v11);
  }

  if (v8)
  {
    v12 = *(v8 + 24);
  }

  else
  {
    v12 = 0;
  }

  v17[0] = PointerCast;
  v17[1] = a3;
  v17[2] = llvm::ConstantInt::get();
  v17[3] = llvm::ConstantInt::get();
  v18 = llvm::ConstantInt::get();
  v16 = 257;
  v13 = llvm::IRBuilderBase::CreateCall(this, v12, v8, v17, 5, v15, 0);
  *(v13 + 18) = *(v13 + 18) & 0xFFFC | 1;
  llvm::Value::getContext(v13);
  *(v13 + 64) = llvm::AttributeList::addAttributeAtIndex();
  llvm::Value::getContext(v13);
  *(v13 + 64) = llvm::AttributeList::addAttributeAtIndex();
  return v13;
}

uint64_t getOrInsertFunction<char const(&)[28],llvm::Type *&,llvm::PointerType *,llvm::Type *&,llvm::Type *&,llvm::Type *&,llvm::Type *&>(uint64_t a1, char *__s, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v16 = strlen(__s);
  llvm::Module::getOrInsertFunction<llvm::PointerType *,llvm::Type *,llvm::Type *,llvm::Type *,llvm::Type *>(a1, __s, v16, 0, *a3, *a4, *a5, *a6, *a7, *a8);
  result = v17;
  if (*(v17 + 16) == 5)
  {
    return *(v17 - 32 * (*(v17 + 20) & 0x7FFFFFF));
  }

  return result;
}

llvm::Type **llvm::IRBuilderBase::CreatePointerCast(unsigned int **this, llvm::Type **a2, llvm::Type *a3, const llvm::Twine *a4, llvm::Instruction *a5)
{
  if (*a2 == a3)
  {
    return a2;
  }

  if (*(a2 + 16) > 0x14u)
  {
    PointerCast = llvm::CastInst::CreatePointerCast();
    return llvm::IRBuilderBase::Insert<llvm::CastInst>(this, PointerCast, a4);
  }

  a2 = (*(*this[9] + 232))(this[9]);
  if (a2)
  {
    v7 = *(a2 + 16) >= 0x1Cu;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    return a2;
  }

  return llvm::IRBuilderBase::Insert<llvm::CastInst>(this, a2, a4);
}

uint64_t MTLIRBuilder::CreateAtomicFetchOr(MTLIRBuilder *this, llvm::Value *a2, llvm::Value *a3)
{
  v15[5] = *MEMORY[0x277D85DE8];
  v6 = *(*(*(this + 6) + 56) + 40);
  v7 = (this + 144);
  v15[0] = llvm::PointerType::get();
  v8 = getOrInsertFunction<char const(&)[28],llvm::Type *&,llvm::PointerType *,llvm::Type *&,llvm::Type *&,llvm::Type *&,llvm::Type *&>(v6, "air.atomic.global.or.s.i32", v7, v15, v7, v7, v7, v7 + 3);
  v9 = v8;
  if (v8)
  {
    v10 = *(v8 + 24);
  }

  else
  {
    v10 = 0;
  }

  v15[0] = a2;
  v15[1] = a3;
  v15[2] = llvm::ConstantInt::get();
  v15[3] = llvm::ConstantInt::get();
  v15[4] = llvm::ConstantInt::get();
  v14 = 257;
  v11 = llvm::IRBuilderBase::CreateCall(this, v10, v9, v15, 5, v13, 0);
  *(v11 + 18) = *(v11 + 18) & 0xFFFC | 1;
  llvm::Value::getContext(v11);
  *(v11 + 64) = llvm::AttributeList::addAttributeAtIndex();
  llvm::Value::getContext(v11);
  *(v11 + 64) = llvm::AttributeList::addAttributeAtIndex();
  return v11;
}

uint64_t MTLIRBuilder::CreateClamp(MTLIRBuilder *this, llvm::Value *a2, llvm::Value *a3, llvm::Value *a4)
{
  v14[3] = *MEMORY[0x277D85DE8];
  v8 = getOrInsertFunction<char const(&)[16],llvm::Type *&,llvm::Type *&,llvm::Type *&,llvm::Type *&>(*(*(*(this + 6) + 56) + 40), "air.clamp.u.i64", this + 17, this + 17, this + 17, this + 17);
  if (v8)
  {
    v9 = *(v8 + 24);
  }

  else
  {
    v9 = 0;
  }

  v14[0] = a2;
  v14[1] = a3;
  v14[2] = a4;
  v13 = 257;
  v10 = llvm::IRBuilderBase::CreateCall(this, v9, v8, v14, 3, v12, 0);
  *(v10 + 18) = *(v10 + 18) & 0xFFFC | 1;
  llvm::Value::getContext(v10);
  *(v10 + 64) = llvm::AttributeList::addAttributeAtIndex();
  llvm::Value::getContext(v10);
  *(v10 + 64) = llvm::AttributeList::addAttributeAtIndex();
  return v10;
}

uint64_t getOrInsertFunction<char const(&)[16],llvm::Type *&,llvm::Type *&,llvm::Type *&,llvm::Type *&>(uint64_t a1, char *__s, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v12 = strlen(__s);
  llvm::Module::getOrInsertFunction<llvm::Type *,llvm::Type *,llvm::Type *>(a1, __s, v12, 0, *a3, *a4, *a5, *a6);
  result = v13;
  if (*(v13 + 16) == 5)
  {
    return *(v13 - 32 * (*(v13 + 20) & 0x7FFFFFF));
  }

  return result;
}

llvm::Value *MTLIRBuilder::CreateAddSat(MTLIRBuilder *this, llvm::Value *a2, llvm::Value *a3)
{
  v4 = a2;
  v32 = *MEMORY[0x277D85DE8];
  v6 = *(*(*(this + 6) + 56) + 40);
  llvm::Type::getInt32Ty(*v6, a2);
  Function = llvm::Module::getFunction();
  if (!Function)
  {
    v8 = llvm::FunctionType::get();
    v31 = 261;
    v30[0] = "air.add_sat.u.i32";
    v30[1] = 17;
    Function = llvm::Function::Create(v8, 0, v30, v6);
    llvm::Function::addFnAttr();
    llvm::Function::addFnAttr();
    llvm::Function::addFnAttr();
    llvm::Function::addFnAttr();
  }

  llvm::Module::getDataLayout(v6);
  v9 = *(v4 + 16);
  v10 = *(a3 + 16);
  if (!v4 || (v11 = v4, v9 != 16))
  {
    if (v9 >= 0x1C && (v12 = llvm::ConstantFoldInstruction()) != 0)
    {
      if (*(v12 + 16) == 16)
      {
        v11 = v12;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  v13 = a3;
  if (v10 == 16)
  {
    goto LABEL_17;
  }

  if (*(a3 + 16) >= 0x1Cu)
  {
    v14 = llvm::ConstantFoldInstruction();
    if (v14)
    {
      if (*(v14 + 16) == 16)
      {
        v13 = v14;
      }

      else
      {
        v13 = 0;
      }

LABEL_17:
      if (v11 && v13)
      {
        return llvm::ConstantInt::get();
      }

      if (v11)
      {
        goto LABEL_23;
      }

      if (v13)
      {
        if (llvm::Constant::isZeroValue(v13))
        {
          return v4;
        }

        if (v4 && *(v4 + 16) == 84)
        {
          v21 = *(v4 - 4);
          if (!v21 || *(v21 + 16) || *(v21 + 24) != *(v4 + 9))
          {
            v21 = 0;
          }

          if (v21 == Function)
          {
            v22 = (v4 - 32 * (*(v4 + 5) & 0x7FFFFFF));
            v23 = *v22;
            v24 = v22[4];
            if (*(*v22 + 16) == 16)
            {
              v25 = *v22;
            }

            else
            {
              v25 = 0;
            }

            if (*(v24 + 16) == 16)
            {
              v26 = v22[4];
            }

            else
            {
              v26 = 0;
            }

            if (v25)
            {
              v26 = v25;
            }

            if (v26)
            {
              a3 = llvm::ConstantInt::get();
              if (v25)
              {
                v4 = v24;
              }

              else
              {
                v4 = v23;
              }
            }
          }
        }
      }

      goto LABEL_64;
    }
  }

  if (v11)
  {
LABEL_23:
    if (llvm::Constant::isZeroValue(v11))
    {
      return a3;
    }

    if (*(a3 + 16) == 84)
    {
      v15 = *(a3 - 4);
      if (!v15 || *(v15 + 16) || *(v15 + 24) != *(a3 + 9))
      {
        v15 = 0;
      }

      if (v15 == Function)
      {
        v16 = (a3 - 32 * (*(a3 + 5) & 0x7FFFFFF));
        v17 = *v16;
        v18 = v16[4];
        if (*(*v16 + 16) == 16)
        {
          v19 = *v16;
        }

        else
        {
          v19 = 0;
        }

        if (*(v18 + 16) == 16)
        {
          v20 = v16[4];
        }

        else
        {
          v20 = 0;
        }

        if (v19)
        {
          v20 = v19;
        }

        if (v20)
        {
          v4 = llvm::ConstantInt::get();
          if (v19)
          {
            a3 = v18;
          }

          else
          {
            a3 = v17;
          }
        }
      }
    }
  }

LABEL_64:
  if (Function)
  {
    v27 = *(Function + 24);
  }

  else
  {
    v27 = 0;
  }

  v29[0] = v4;
  v29[1] = a3;
  v31 = 257;
  v4 = llvm::IRBuilderBase::CreateCall(this, v27, Function, v29, 2, v30, 0);
  *(v4 + 9) = *(v4 + 9) & 0xFFFC | 1;
  llvm::Value::getContext(v4);
  *(v4 + 8) = llvm::AttributeList::addAttributeAtIndex();
  llvm::Value::getContext(v4);
  *(v4 + 8) = llvm::AttributeList::addAttributeAtIndex();
  return v4;
}

uint64_t MTLIRBuilder::CreateBadAccessCall(llvm::Constant **this, llvm::Value *a2, llvm::Value *a3, llvm::Value *a4, llvm::Value *a5, llvm::Value *a6, llvm::Value *a7, llvm::Value *a8, llvm::Value *a9, llvm::Value *a10)
{
  NullValue = a10;
  v25[9] = *MEMORY[0x277D85DE8];
  if (!a10)
  {
    NullValue = llvm::Constant::getNullValue(this[18], a2);
  }

  inserted = MTLIRBuilder::getOrInsertBadAccessFunction(this, *(*(this[6] + 7) + 40));
  if (inserted)
  {
    v20 = *(inserted + 24);
  }

  else
  {
    v20 = 0;
  }

  v25[0] = a2;
  v25[1] = a3;
  v25[2] = a4;
  v25[3] = a5;
  v25[4] = a6;
  v25[5] = a7;
  v25[6] = a8;
  v25[7] = a9;
  v25[8] = NullValue;
  v24 = 257;
  v21 = llvm::IRBuilderBase::CreateCall(this, v20, inserted, v25, 9, v23, 0);
  llvm::Value::getContext(v21);
  *(v21 + 8) = llvm::AttributeList::addAttributeAtIndex();
  llvm::Value::getContext(v21);
  result = llvm::AttributeList::addAttributeAtIndex();
  *(v21 + 8) = result;
  return result;
}

uint64_t MTLIRBuilder::getOrInsertBadAccessFunction(llvm::Type **this, llvm::Module *a2)
{
  VoidTy = llvm::Type::getVoidTy(this[8], a2);
  v7 = llvm::PointerType::get();
  v6 = llvm::PointerType::get();
  v4 = getOrInsertFunction<char const(&)[16],llvm::Type *,llvm::PointerType *,llvm::PointerType *,llvm::Type *&,llvm::Type *&,llvm::Type *&,llvm::Type *&,llvm::Type *&,llvm::Type *&,llvm::Type *&>(a2, "mtl.bad_access", &VoidTy, &v7, &v6, this + 22, this + 17, this + 17, this + 19, this + 19, this + 18, this + 18);
  llvm::GlobalObject::setSection();
  return v4;
}

uint64_t MTLIRBuilder::CreateIsNullTextureCall(MTLIRBuilder *this, llvm::Value **a2)
{
  BitOrPointerCast = a2;
  v42[1] = *MEMORY[0x277D85DE8];
  Name = llvm::Value::getName(a2[3]);
  v6 = 12;
  if (v5 < 0xC)
  {
    v6 = v5;
  }

  v41.n128_u64[0] = v6 + Name;
  v41.n128_u64[1] = v5 - v6;
  llvm::StringRef::split(&v41, 1, v38);
  v7 = v38[0].n128_u64[1];
  if (v38[0].n128_u64[1] >= 5)
  {
    if (!(*(v38[0].n128_u64[0] + v38[0].n128_u64[1] - 5) ^ 0x6172675F | *(v38[0].n128_u64[0] + v38[0].n128_u64[1] - 1) ^ 0x64))
    {
      v7 = v38[0].n128_u64[1] - 5;
    }

    if (v7 >= 0xA)
    {
      v17 = v38[0].n128_u64[0] + v7;
      if (*(v38[0].n128_u64[0] + v7 - 10) == 0x5F65727574786574 && *(v38[0].n128_u64[0] + v7 - 2) == 25649)
      {
        v16 = "struct._texture_1d_t";
        v15 = "air.is_null_texture_1d";
        goto LABEL_104;
      }

      if (v7 >= 0x10)
      {
        if (*(v17 - 16) == 0x5F65727574786574 && *(v17 - 8) == 0x79617272615F6431)
        {
          v16 = "struct._texture_1d_array_t";
          v15 = "air.is_null_texture_1d_array";
          goto LABEL_104;
        }

        if (*(v17 - 10) != 0x5F65727574786574 || *(v17 - 2) != 25650)
        {
          if (*(v17 - 16) == 0x5F65727574786574 && *(v17 - 8) == 0x79617272615F6432)
          {
            v16 = "struct._texture_2d_array_t";
            v15 = "air.is_null_texture_2d_array";
            goto LABEL_104;
          }

          goto LABEL_65;
        }
      }

      else if (*(v17 - 10) != 0x5F65727574786574 || *(v17 - 2) != 25650)
      {
        if (v7 < 0xD)
        {
          if (v7 != 12 || (*v38[0].n128_u64[0] == 0x5F65727574786574 ? (v20 = *(v38[0].n128_u64[0] + 8) == 1700951395) : (v20 = 0), !v20))
          {
LABEL_89:
            v30 = *(v17 - 10);
            v31 = *(v17 - 2);
            if (v30 == 0x5F65727574786574 && v31 == 25651)
            {
              v16 = "struct._texture_3d_t";
              v15 = "air.is_null_texture_3d";
              goto LABEL_104;
            }

            goto LABEL_7;
          }

          goto LABEL_100;
        }

LABEL_65:
        if (*(v17 - 13) == 0x5F65727574786574 && *(v17 - 8) == 0x736D5F64325F6572)
        {
          v16 = "struct._texture_2d_ms_t";
          v15 = "air.is_null_texture_2d_ms";
          goto LABEL_104;
        }

        if (v7 >= 0x13)
        {
          v25 = *(v17 - 19) == 0x5F65727574786574 && *(v17 - 11) == 0x72615F736D5F6432;
          if (v25 && *(v17 - 8) == 0x79617272615F736DLL)
          {
            v16 = "struct._texture_2d_ms_array_t";
            v15 = "air.is_null_texture_2d_ms_array";
            goto LABEL_104;
          }
        }

        if (*(v17 - 12) != 0x5F65727574786574 || *(v17 - 4) != 1700951395)
        {
          if (v7 >= 0x12)
          {
            v28 = *(v17 - 18) == 0x5F65727574786574 && *(v17 - 10) == 0x7272615F65627563;
            if (v28 && *(v17 - 2) == 31073)
            {
              v16 = "struct._texture_cube_array_t";
              v15 = "air.is_null_texture_cube_array";
              goto LABEL_104;
            }
          }

          goto LABEL_89;
        }

LABEL_100:
        v16 = "struct._texture_cube_t";
        v15 = "air.is_null_texture_cube";
        goto LABEL_104;
      }

      v16 = "struct._texture_2d_t";
      v15 = "air.is_null_texture_2d";
      goto LABEL_104;
    }
  }

LABEL_7:
  v8 = v38[0].n128_u64[0] + v7;
  if (*(v38[0].n128_u64[0] + v7 - 8) == 0x64325F6874706564)
  {
    v16 = "struct._depth_2d_t";
    v15 = "air.is_null_depth_2d";
  }

  else if (v7 >= 0xE && (*(v8 - 14) == 0x64325F6874706564 ? (v9 = *(v8 - 8) == 0x79617272615F6432) : (v9 = 0), v9))
  {
    v16 = "struct._depth_2d_array_t";
    v15 = "air.is_null_depth_2d_array";
  }

  else if (*(v8 - 10) == 0x75635F6874706564 && *(v8 - 2) == 25954)
  {
    v16 = "struct._depth_cube_t";
    v15 = "air.is_null_depth_cube";
  }

  else if (v7 >= 0x10 && (*(v8 - 16) == 0x75635F6874706564 ? (v11 = *(v8 - 8) == 0x79617272615F6562) : (v11 = 0), v11))
  {
    v16 = "struct._depth_cube_array_t";
    v15 = "air.is_null_depth_cube_array";
  }

  else if (*(v8 - 11) == 0x64325F6874706564 && *(v8 - 8) == 0x736D5F64325F6874)
  {
    v16 = "struct._depth_2d_ms_t";
    v15 = "air.is_null_depth_2d_ms";
  }

  else
  {
    v13 = *(v8 - 17) ^ 0x64325F6874706564 | *(v8 - 9) ^ 0x617272615F736D5FLL | *(v8 - 1) ^ 0x79;
    v14 = v13 == 0;
    if (v13)
    {
      v15 = "air.is_null_texture_buffer_1d";
    }

    else
    {
      v15 = "air.is_null_depth_2d_ms_array";
    }

    if (v14)
    {
      v16 = "struct._depth_2d_ms_array_t";
    }

    else
    {
      v16 = "struct._texture_buffer_1d_t";
    }
  }

LABEL_104:
  v41.n128_u64[0] = v15;
  llvm::Value::getContext(BitOrPointerCast);
  strlen(v16);
  if (!llvm::StructType::getTypeByName())
  {
    llvm::Value::getContext(BitOrPointerCast);
    strlen(v16);
    llvm::StructType::create();
  }

  v40 = llvm::PointerType::get();
  v33 = getOrInsertFunction<char const*&,llvm::Type *&,llvm::Type *&>(*(*(*(this + 6) + 56) + 40), &v41, this + 21, &v40);
  if ((llvm::Function::hasFnAttribute() & 1) == 0)
  {
    llvm::Function::addFnAttr();
    llvm::Function::addFnAttr();
    llvm::Function::addFnAttr();
  }

  v34 = *(v33 + 24);
  v35 = *(*(v34 + 16) + 8);
  if (v35 != *BitOrPointerCast)
  {
    v39 = 257;
    BitOrPointerCast = llvm::IRBuilderBase::CreateBitOrPointerCast(this, BitOrPointerCast, v35, v38);
    v34 = *(v33 + 24);
  }

  v42[0] = BitOrPointerCast;
  v39 = 257;
  v36 = llvm::IRBuilderBase::CreateCall(this, v34, v33, v42, 1, v38, 0);
  *(v36 + 18) = *(v36 + 18) & 0xFFFC | 1;
  llvm::Value::getContext(v36);
  *(v36 + 64) = llvm::AttributeList::addAttributeAtIndex();
  llvm::Value::getContext(v36);
  *(v36 + 64) = llvm::AttributeList::addAttributeAtIndex();
  llvm::Value::getContext(v36);
  *(v36 + 64) = llvm::AttributeList::addAttributeAtIndex();
  return v36;
}

__n128 llvm::StringRef::split@<Q0>(__n128 *a1@<X0>, uint64_t a3@<X2>, __n128 *a4@<X8>)
{
  v7 = llvm::StringRef::find();
  if (v7 == -1)
  {
    a4[1].n128_u64[0] = 0;
    a4[1].n128_u64[1] = 0;
    result = *a1;
    *a4 = *a1;
  }

  else
  {
    v10 = a1->n128_u64[0];
    v9 = a1->n128_u64[1];
    if (v9 >= v7)
    {
      v11 = v7;
    }

    else
    {
      v11 = a1->n128_u64[1];
    }

    v12 = v7 + a3;
    if (v9 < v7 + a3)
    {
      v12 = a1->n128_u64[1];
    }

    a4->n128_u64[0] = v10;
    a4->n128_u64[1] = v11;
    a4[1].n128_u64[0] = v10 + v12;
    a4[1].n128_u64[1] = v9 - v12;
  }

  return result;
}

uint64_t getOrInsertFunction<char const*&,llvm::Type *&,llvm::Type *&>(uint64_t a1, const char **a2, uint64_t *a3, uint64_t *a4)
{
  v7 = *a2;
  if (*a2)
  {
    v8 = strlen(*a2);
  }

  else
  {
    v8 = 0;
  }

  llvm::Module::getOrInsertFunction<llvm::Type *>(a1, v7, v8, 0, *a3, *a4);
  result = v9;
  if (*(v9 + 16) == 5)
  {
    return *(v9 - 32 * (*(v9 + 20) & 0x7FFFFFF));
  }

  return result;
}

uint64_t MTLIRBuilder::CreateBadTextureCall(llvm::Constant **this, llvm::Value *a2, llvm::Value *a3, llvm::Value *a4, llvm::Value *a5, llvm::Value *a6, llvm::Value *a7, llvm::Value *a8, llvm::Value *a9, llvm::Value *a10)
{
  NullValue = a10;
  v25[9] = *MEMORY[0x277D85DE8];
  if (!a10)
  {
    NullValue = llvm::Constant::getNullValue(this[18], a2);
  }

  inserted = MTLIRBuilder::getOrInsertBadTextureFunction(this, *(*(this[6] + 7) + 40));
  v25[0] = a2;
  v25[1] = a3;
  v25[2] = a4;
  v25[3] = a5;
  v25[4] = a6;
  v25[5] = a7;
  v25[6] = a8;
  v25[7] = a9;
  v25[8] = NullValue;
  if (inserted)
  {
    v20 = *(inserted + 24);
  }

  else
  {
    v20 = 0;
  }

  v24 = 257;
  v21 = llvm::IRBuilderBase::CreateCall(this, v20, inserted, v25, 9, v23, 0);
  llvm::Value::getContext(v21);
  *(v21 + 8) = llvm::AttributeList::addAttributeAtIndex();
  llvm::Value::getContext(v21);
  result = llvm::AttributeList::addAttributeAtIndex();
  *(v21 + 8) = result;
  return result;
}

uint64_t MTLIRBuilder::getOrInsertBadTextureFunction(llvm::Type **this, llvm::Module *a2)
{
  VoidTy = llvm::Type::getVoidTy(this[8], a2);
  v7 = llvm::PointerType::get();
  v6 = llvm::PointerType::get();
  v4 = getOrInsertFunction<char const(&)[16],llvm::Type *,llvm::PointerType *,llvm::PointerType *,llvm::Type *&,llvm::Type *&,llvm::Type *&,llvm::Type *&,llvm::Type *&,llvm::Type *&,llvm::Type *&>(a2, "mtl.bad_texture", &VoidTy, &v7, &v6, this + 22, this + 17, this + 18, this + 18, this + 20, this + 20, this + 18);
  llvm::GlobalObject::setSection();
  return v4;
}

uint64_t MTLIRBuilder::getOrInsertTrapFunction(llvm::Type **this, llvm::Module *a2)
{
  Function = llvm::Module::getFunction();
  if (!Function)
  {
    VoidTy = llvm::Type::getVoidTy(this[8], v4);
    v8 = llvm::PointerType::get();
    v7 = llvm::PointerType::get();
    Function = getOrInsertFunction<char const(&)[16],llvm::Type *,llvm::PointerType *,llvm::PointerType *,llvm::Type *&,llvm::Type *&,llvm::Type *&,llvm::Type *&>(a2, "mtl.report_trap", &VoidTy, &v8, &v7, this + 22, this + 17, this + 18, this + 18);
    if (Function)
    {
      llvm::GlobalObject::setSection();
    }
  }

  return Function;
}

uint64_t getOrInsertFunction<char const(&)[16],llvm::Type *,llvm::PointerType *,llvm::PointerType *,llvm::Type *&,llvm::Type *&,llvm::Type *&,llvm::Type *&>(uint64_t a1, char *__s, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, void *a7, void *a8, uint64_t *a9)
{
  v17 = strlen(__s);
  *(&v20 + 1) = *a8;
  *&v20 = *a7;
  llvm::Module::getOrInsertFunction<llvm::PointerType *,llvm::PointerType *,llvm::Type *,llvm::Type *,llvm::Type *,llvm::Type *>(a1, __s, v17, 0, *a3, *a4, *a5, *a6, v20, *a9);
  result = v18;
  if (*(v18 + 16) == 5)
  {
    return *(v18 - 32 * (*(v18 + 20) & 0x7FFFFFF));
  }

  return result;
}

uint64_t MTLIRBuilder::CreateTrapCall(llvm::Type **this, llvm::Value *a2, llvm::Value *a3, llvm::Value *a4, llvm::Value *a5, unsigned int a6, unsigned int a7)
{
  v18[6] = *MEMORY[0x277D85DE8];
  inserted = MTLIRBuilder::getOrInsertTrapFunction(this, *(*(this[6] + 7) + 40));
  v13 = inserted;
  if (inserted)
  {
    v14 = *(inserted + 24);
  }

  else
  {
    v14 = 0;
  }

  v18[0] = a2;
  v18[1] = a3;
  v18[2] = a4;
  v18[3] = a5;
  v18[4] = llvm::ConstantInt::get();
  v18[5] = llvm::ConstantInt::get();
  v17[16] = 257;
  v15 = llvm::IRBuilderBase::CreateCall(this, v14, v13, v18, 6, v17, 0);
  llvm::Value::getContext(v15);
  *(v15 + 64) = llvm::AttributeList::addAttributeAtIndex();
  llvm::Value::getContext(v15);
  result = llvm::AttributeList::addAttributeAtIndex();
  *(v15 + 64) = result;
  *(v15 + 18) = *(v15 + 18) & 0xFFFC | 1;
  return result;
}

uint64_t MTLIRBuilder::CreateStackOverflowCall(llvm::ConstantInt **this, llvm::Value *a2, llvm::Value *a3, llvm::Value *a4, llvm::Value *a5, unsigned int a6, llvm::Value *a7)
{
  v19[6] = *MEMORY[0x277D85DE8];
  inserted = MTLIRBuilder::getOrInsertStackOverflowFunction(this, *(*(this[6] + 7) + 40));
  v14 = inserted;
  if (inserted)
  {
    v15 = *(inserted + 24);
  }

  else
  {
    v15 = 0;
  }

  v19[0] = a2;
  v19[1] = a3;
  v19[2] = a4;
  v19[3] = a5;
  v19[4] = llvm::ConstantInt::get();
  v19[5] = a7;
  v18[16] = 257;
  v16 = llvm::IRBuilderBase::CreateCall(this, v15, v14, v19, 6, v18, 0);
  llvm::Value::getContext(v16);
  *(v16 + 64) = llvm::AttributeList::addAttributeAtIndex();
  llvm::Value::getContext(v16);
  result = llvm::AttributeList::addAttributeAtIndex();
  *(v16 + 64) = result;
  *(v16 + 18) = *(v16 + 18) & 0xFFFC | 1;
  return result;
}