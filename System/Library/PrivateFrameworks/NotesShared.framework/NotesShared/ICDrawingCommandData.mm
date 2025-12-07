@interface ICDrawingCommandData
- ($0CEE44BE5CDCEEF763AA42CAC61E9EDC)baseValues;
- ($0CEE44BE5CDCEEF763AA42CAC61E9EDC)readPointFromArchive:(SEL)archive deltaFrom:(const void *)from;
- ($1AB5FA073B851C12C2339EC22442E995)parameters;
- ($1AB5FA073B851C12C2339EC22442E995)version1Parameters;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualDrawingCommandData:(id)data;
- (CGPoint)clipNormal;
- (CGPoint)clipOrigin;
- (CGRect)bounds;
- (ICDrawingCommandData)init;
- (ICDrawingCommandData)initWithArchive:(const void *)archive version:(unsigned int)version sortedUUIDs:(id)ds;
- (ICDrawingCommandID)commandID;
- (id).cxx_construct;
- (id)description;
- (unint64_t)hash;
- (unsigned)savePoint:(id *)point deltaFrom:(id *)from toArchive:(void *)archive;
- (unsigned)saveToArchive:(void *)archive sortedUUIDs:(id)ds withPathData:(BOOL)data isHidden:(BOOL)hidden;
- (void)dealloc;
- (void)invalidateBounds;
- (void)setBaseValues:(id *)values;
- (void)setCommandID:(ICDrawingCommandID *)d;
@end

@implementation ICDrawingCommandData

- (ICDrawingCommandData)init
{
  v4.receiver = self;
  v4.super_class = ICDrawingCommandData;
  result = [(ICDrawingCommandData *)&v4 init];
  if (result)
  {
    v3 = *MEMORY[0x277CBF398];
    result->_cachedBounds.size = *(MEMORY[0x277CBF398] + 16);
    result->_cachedBounds.origin = v3;
  }

  return result;
}

- (void)dealloc
{
  CGColorRelease(self->_color);
  self->_color = 0;
  v3.receiver = self;
  v3.super_class = ICDrawingCommandData;
  [(ICDrawingCommandData *)&v3 dealloc];
}

- (BOOL)isEqualDrawingCommandData:(id)data
{
  dataCopy = data;
  objc_msgSend_commandID(self);
  if (dataCopy)
  {
    objc_msgSend_commandID(dataCopy);
    v5 = v8;
  }

  else
  {
    v5 = 0;
    v9 = 0;
    v10 = 0;
  }

  if (v11 == v5 && v13 == v10)
  {
    v6 = [v12 isEqual:v9];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(ICDrawingCommandData *)self isEqualDrawingCommandData:equalCopy];

  return v5;
}

- (unint64_t)hash
{
  objc_msgSend_commandID(self, a2);
  v3 = v10;
  objc_msgSend_commandID(self);
  v4 = v9;
  objc_msgSend_commandID(self);
  v5 = [v7 hash];

  return v5 ^ v3 ^ (v4 << 16);
}

- (void)invalidateBounds
{
  v2 = *MEMORY[0x277CBF398];
  self->_cachedBounds.size = *(MEMORY[0x277CBF398] + 16);
  self->_cachedBounds.origin = v2;
}

- (CGRect)bounds
{
  if (CGRectIsNull(self->_cachedBounds))
  {
    v3 = *MEMORY[0x277CBF398];
    v4 = *(MEMORY[0x277CBF398] + 8);
    v5 = *(MEMORY[0x277CBF398] + 16);
    v6 = *(MEMORY[0x277CBF398] + 24);
    begin = self->_points.__begin_;
    for (i = self->_points.__end_; begin != i; begin = (begin + 64))
    {
      if (*(begin + 6) >= 1.0)
      {
        v9 = *(begin + 6);
      }

      else
      {
        v9 = 1.0;
      }

      v10 = (*(begin + 2) + *(begin + 5)) * v9;
      v12.origin.x = *begin - v10 + -2.0;
      v12.origin.y = *(begin + 1) - v10 + -2.0;
      v12.size.width = v10 * 2.0 + 4.0;
      v12.size.height = v12.size.width;
      *&v3 = CGRectUnion(*&v3, v12);
    }

    result = CGRectIntegral(*&v3);
    self->_cachedBounds = result;
  }

  else
  {
    return self->_cachedBounds;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ %p type=%ld points=%ld>", v5, self, self->_type, (self->_points.__end_ - self->_points.__begin_) >> 6];

  return v6;
}

- ($0CEE44BE5CDCEEF763AA42CAC61E9EDC)baseValues
{
  v3 = *&self[2].var5;
  retstr->var0 = *&self[2].var3;
  *&retstr->var1 = v3;
  v4 = *&self[3].var1;
  *&retstr->var3 = self[3].var0;
  *&retstr->var5 = v4;
  return self;
}

- (void)setBaseValues:(id *)values
{
  var0 = values->var0;
  v4 = *&values->var1;
  v5 = *&values->var5;
  *&self->_baseValues.azimuth = *&values->var3;
  *&self->_baseValues.aspectRatio = v5;
  self->_baseValues.point = var0;
  *&self->_baseValues.radius = v4;
}

- ($1AB5FA073B851C12C2339EC22442E995)parameters
{
  baseAlpha = self->_parameters.baseAlpha;
  blendAlpha = self->_parameters.blendAlpha;
  targetMultiple = self->_parameters.targetMultiple;
  result.var2 = targetMultiple;
  result.var1 = blendAlpha;
  result.var0 = baseAlpha;
  return result;
}

- (CGPoint)clipOrigin
{
  x = self->_clipOrigin.x;
  y = self->_clipOrigin.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)clipNormal
{
  x = self->_clipNormal.x;
  y = self->_clipNormal.y;
  result.y = y;
  result.x = x;
  return result;
}

- (ICDrawingCommandID)commandID
{
  retstr->clock = self->_commandID.clock;
  result = self->_commandID.replicaUUID;
  retstr->replicaUUID = result;
  retstr->subclock = self->_commandID.subclock;
  return result;
}

- (void)setCommandID:(ICDrawingCommandID *)d
{
  self->_commandID.clock = d->clock;
  objc_storeStrong(&self->_commandID.replicaUUID, d->replicaUUID);
  self->_commandID.subclock = d->subclock;
  replicaUUID = d->replicaUUID;
}

- (id).cxx_construct
{
  *(self + 5) = 0;
  *(self + 6) = 0;
  *(self + 7) = 0;
  *(self + 18) = 0;
  return self;
}

- (ICDrawingCommandData)initWithArchive:(const void *)archive version:(unsigned int)version sortedUUIDs:(id)ds
{
  dsCopy = ds;
  v8 = [(ICDrawingCommandData *)self init];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_65;
  }

  v10 = [(ICDrawingCommandData *)v8 setType:*(archive + 32)];
  v11 = *(archive + 5);
  if (!v11)
  {
    v11 = *(drawing::Command::default_instance(v10) + 40);
  }

  v12 = [dsCopy objectAtIndexedSubscript:{*(v11 + 48), 0}];
  v13 = v12;
  v14 = *(archive + 5);
  if (v14)
  {
    v15 = *(v14 + 40);
  }

  else
  {
    v16 = drawing::Command::default_instance(v12);
    v14 = *(archive + 5);
    v15 = *(*(v16 + 5) + 40);
    if (!v14)
    {
      v14 = *(drawing::Command::default_instance(v16) + 40);
    }
  }

  v17 = *(v14 + 44);
  v68 = v15;
  v61 = v13;
  v69 = v61;
  v70 = v17;
  v18 = [(ICDrawingCommandData *)v9 setCommandID:&v68];
  if ((*(archive + 32) & 4) != 0)
  {
    v23 = *(archive + 6);
    if (v23)
    {
      v20 = v23[10];
      v21 = v23[11];
    }

    else
    {
      v25 = drawing::Command::default_instance(v18);
      v23 = *(archive + 6);
      v20 = *(*(v25 + 6) + 40);
      if (v23)
      {
        v24 = v23[12];
        v21 = v23[11];
        goto LABEL_15;
      }

      v59 = drawing::Command::default_instance(v25);
      v23 = *(archive + 6);
      v21 = *(*(v59 + 6) + 44);
      if (!v23)
      {
        v60 = drawing::Command::default_instance(v59);
        v23 = *(archive + 6);
        v24 = *(*(v60 + 6) + 48);
        if (!v23)
        {
          v23 = *(drawing::Command::default_instance(v60) + 48);
        }

        goto LABEL_15;
      }
    }

    v24 = v23[12];
LABEL_15:
    v22 = v24;
    v19 = v23[13];
    goto LABEL_16;
  }

  v19 = 1.0;
  v20 = 0.0;
  v21 = 0.0;
  v22 = 0.0;
LABEL_16:
  v26 = [(ICDrawingCommandData *)v9 setColor:CGColorCreateRGBA(v20, v21, v22, v19)];
  v27 = *(archive + 8);
  if ((v27 & 8) != 0)
  {
    if (!*(archive + 7))
    {
      drawing::Command::default_instance(v26);
    }

    objc_msgSend_readPointFromArchive_deltaFrom_(v9);
    v63 = v67[0];
    v64 = v67[1];
    v65 = v67[2];
    v66 = v67[3];
    v26 = [(ICDrawingCommandData *)v9 setBaseValues:&v63];
    v27 = *(archive + 8);
  }

  if ((v27 & 0x200) != 0)
  {
    v29 = *(archive + 15);
    if (!v29)
    {
      v29 = *(drawing::Command::default_instance(v26) + 120);
    }

    v30 = *(v29 + 32);
    v31 = 0.0;
    v32 = 0.0;
    if (v30)
    {
      v32 = *(v29 + 40);
    }

    if ((v30 & 2) != 0)
    {
      v31 = *(v29 + 44);
    }

    v33 = 0.0;
    if ((v30 & 4) != 0)
    {
      v33 = *(v29 + 48);
    }

    v28 = [(ICDrawingCommandData *)v9 setParameters:v32, v31, v33];
  }

  else
  {
    [(ICDrawingCommandData *)v9 version1Parameters];
    v28 = [(ICDrawingCommandData *)v9 setParameters:?];
  }

  if ((*(archive + 32) & 0x80) != 0)
  {
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    if (!*(archive + 13))
    {
      drawing::Command::default_instance(v28);
    }

    objc_msgSend_baseValues(v9);
    PointFromArchive_deltaFrom = objc_msgSend_readPointFromArchive_deltaFrom_(v9);
    if (!*(archive + 14))
    {
      drawing::Command::default_instance(PointFromArchive_deltaFrom);
    }

    objc_msgSend_baseValues(v9);
    objc_msgSend_readPointFromArchive_deltaFrom_(v9);
    [(ICDrawingCommandData *)v9 setIsClipped:1];
    [(ICDrawingCommandData *)v9 setClipOrigin:v63];
    [(ICDrawingCommandData *)v9 setClipNormal:0];
  }

  points = [(ICDrawingCommandData *)v9 points];
  v36 = *(archive + 18);
  if (v36)
  {
    v37 = points;
    std::vector<ICDrawingOutputPoint>::reserve(points, v36);
    v38 = *(archive + 18);
    if (v38)
    {
      for (i = 0; i != v38; ++i)
      {
        google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<drawing::Point>::TypeHandler>(archive + 64, i);
        v65 = 0u;
        v66 = 0u;
        v63 = 0u;
        v64 = 0u;
        objc_msgSend_baseValues(v9);
        points = objc_msgSend_readPointFromArchive_deltaFrom_(v9);
        v40 = *(v37 + 8);
        if (!version && i && *&v63 == *(v40 - 8) && *(&v63 + 1) == *(v40 - 7))
        {
          continue;
        }

        v42 = *(v37 + 16);
        if (v40 >= v42)
        {
          v47 = (v40 - *v37) >> 6;
          v48 = v47 + 1;
          if ((v47 + 1) >> 58)
          {
            std::vector<std::pair<minIdPathData,TopoSubstring *>>::__throw_length_error[abi:ne200100]();
          }

          v49 = v42 - *v37;
          if (v49 >> 5 > v48)
          {
            v48 = v49 >> 5;
          }

          if (v49 >= 0x7FFFFFFFFFFFFFC0)
          {
            v50 = 0x3FFFFFFFFFFFFFFLL;
          }

          else
          {
            v50 = v48;
          }

          if (v50)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<ICDrawingOutputPoint>>(v37, v50);
          }

          v51 = (v47 << 6);
          v52 = v63;
          v53 = v64;
          v54 = v66;
          v51[2] = v65;
          v51[3] = v54;
          *v51 = v52;
          v51[1] = v53;
          v46 = (v47 << 6) + 64;
          v55 = *(v37 + 8) - *v37;
          v56 = (v47 << 6) - v55;
          memcpy(v51 - v55, *v37, v55);
          points = *v37;
          *v37 = v56;
          *(v37 + 8) = v46;
          *(v37 + 16) = 0;
          if (points)
          {
            operator delete(points);
          }
        }

        else
        {
          v43 = v63;
          v44 = v64;
          v45 = v66;
          *(v40 + 2) = v65;
          *(v40 + 3) = v45;
          *v40 = v43;
          *(v40 + 1) = v44;
          v46 = (v40 + 8);
        }

        *(v37 + 8) = v46;
      }
    }
  }

  if ((*(archive + 32) & 0x40) != 0)
  {
    v57 = *(archive + 12);
    if (!v57)
    {
      v57 = *(drawing::Command::default_instance(points) + 96);
    }

    drawing::Rectangle::Rectangle(&v63, v57);
    v9->_cachedBounds.origin = vcvtq_f64_f32(*(&v65 + 8));
    v9->_cachedBounds.size = vcvtq_f64_f32(*&v66);
    drawing::Rectangle::~Rectangle(&v63);
  }

LABEL_65:
  return v9;
}

- ($1AB5FA073B851C12C2339EC22442E995)version1Parameters
{
  type = [(ICDrawingCommandData *)self type];
  if (type > 3)
  {
    v3 = 0.0;
    v4 = 0.97;
  }

  else
  {
    v3 = dbl_2150C0FD0[type];
    v4 = dbl_2150C0FF0[type];
  }

  v5 = 0.0;
  result.var2 = v5;
  result.var1 = v3;
  result.var0 = v4;
  return result;
}

- ($0CEE44BE5CDCEEF763AA42CAC61E9EDC)readPointFromArchive:(SEL)archive deltaFrom:(const void *)from
{
  v5 = *(from + 8);
  v6 = vdup_n_s32(v5);
  v7 = vceqz_s32(vand_s8(v6, 0x800000004));
  v8.i64[0] = v7.i32[0];
  v8.i64[1] = v7.i32[1];
  v9 = *&a5->var3;
  v10 = vbslq_s8(v8, *&a5->var1, vcvtq_f64_f32(*(from + 48)));
  v11 = vceqz_s32(vand_s8(v6, 0x200000001));
  v8.i64[0] = v11.i32[0];
  v8.i64[1] = v11.i32[1];
  retstr->var0 = vbicq_s8(vcvtq_f64_f32(*(from + 40)), v8);
  *&retstr->var1 = v10;
  v12 = vceqz_s32(vand_s8(v6, 0x2000000010));
  v8.i64[0] = v12.i32[0];
  v8.i64[1] = v12.i32[1];
  *&retstr->var3 = vbslq_s8(v8, v9, vcvtq_f64_f32(*(from + 56)));
  var5 = *(from + 16);
  if ((v5 & 0x40) == 0)
  {
    var5 = a5->var5;
  }

  retstr->var5 = var5;
  retstr->var6 = 0.0;
  return self;
}

- (unsigned)savePoint:(id *)point deltaFrom:(id *)from toArchive:(void *)archive
{
  if (point->var0.x != 0.0)
  {
    x = point->var0.x;
    *(archive + 8) |= 1u;
    *(archive + 10) = x;
  }

  y = point->var0.y;
  if (y != 0.0)
  {
    v7 = y;
    *(archive + 8) |= 2u;
    *(archive + 11) = v7;
  }

  var1 = point->var1;
  if (var1 != from->var1)
  {
    v9 = var1;
    *(archive + 8) |= 4u;
    *(archive + 12) = v9;
  }

  var2 = point->var2;
  if (var2 != from->var2)
  {
    v11 = var2;
    *(archive + 8) |= 8u;
    *(archive + 13) = v11;
  }

  var3 = point->var3;
  if (var3 != from->var3)
  {
    v13 = var3;
    *(archive + 8) |= 0x10u;
    *(archive + 14) = v13;
  }

  var4 = point->var4;
  if (var4 != from->var4)
  {
    v15 = var4;
    *(archive + 8) |= 0x20u;
    *(archive + 15) = v15;
  }

  var5 = point->var5;
  if (var5 == from->var5)
  {
    return 1;
  }

  v17 = var5;
  *(archive + 8) |= 0x40u;
  *(archive + 16) = v17;
  return 4;
}

- (unsigned)saveToArchive:(void *)archive sortedUUIDs:(id)ds withPathData:(BOOL)data isHidden:(BOOL)hidden
{
  dataCopy = data;
  dsCopy = ds;
  type = [(ICDrawingCommandData *)self type];
  *(archive + 8) |= 2u;
  *(archive + 32) = type;
  ColorSpace = CGColorGetColorSpace([(ICDrawingCommandData *)self color]);
  if (CGColorSpaceGetModel(ColorSpace) == kCGColorSpaceModelRGB)
  {
    Components = CGColorGetComponents([(ICDrawingCommandData *)self color]);
    *(archive + 8) |= 4u;
    v14 = *(archive + 6);
    if (!v14)
    {
      operator new();
    }

    v14[4].i32[0] |= 1u;
    *(archive + 8) |= 4u;
    v14[4].i32[0] |= 2u;
    v14[5] = vcvt_f32_f64(*Components);
    *(archive + 8) |= 4u;
    v15 = Components[1].f64[0];
    v14[4].i32[0] |= 4u;
    v14[6].f32[0] = v15;
    *(archive + 8) |= 4u;
    Alpha = CGColorGetAlpha([(ICDrawingCommandData *)self color]);
    v14[4].i32[0] |= 8u;
    v14[6].f32[1] = Alpha;
  }

  *(archive + 8) |= 1u;
  v17 = *(archive + 5);
  if (!v17)
  {
    operator new();
  }

  objc_msgSend_commandID(self);
  v18 = v73;
  *(v17 + 32) |= 1u;
  *(v17 + 40) = v18;

  *(archive + 8) |= 1u;
  v19 = *(archive + 5);
  if (!v19)
  {
    operator new();
  }

  objc_msgSend_commandID(self);
  v20 = v75;
  *(v19 + 32) |= 2u;
  *(v19 + 44) = v20;

  objc_msgSend_commandID(self);
  v21 = [dsCopy indexOfObject:v74];

  *(archive + 8) |= 1u;
  v22 = *(archive + 5);
  if (!v22)
  {
    operator new();
  }

  *(v22 + 32) |= 4u;
  *(v22 + 48) = v21;
  if (hidden)
  {
    v23 = 1;
  }

  else
  {
    if (dataCopy)
    {
      points = [(ICDrawingCommandData *)self points];
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve(archive + 16, (points[1] - *points) >> 6);
      v25 = points[1] - *points;
      if ((v25 & 0x3FFFFFFFC0) != 0)
      {
        v26 = 0;
        v27 = (v25 >> 6);
        do
        {
          v28 = *(archive + 19);
          v29 = *(archive + 18);
          if (v29 >= v28)
          {
            if (v28 == *(archive + 20))
            {
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve(archive + 16, v28 + 1);
            }

            google::protobuf::internal::GenericTypeHandler<drawing::Point>::New();
          }

          v30 = *(archive + 8);
          *(archive + 18) = v29 + 1;
          v31 = *(v30 + 8 * v29);
          v32 = *points;
          objc_msgSend_baseValues(self);
          [(ICDrawingCommandData *)self savePoint:v32 + v26 deltaFrom:&v73 toArchive:v31];
          v26 += 64;
          --v27;
        }

        while (v27);
      }

      objc_msgSend_baseValues(self);
      *(archive + 8) |= 8u;
      v33 = *(archive + 7);
      if (!v33)
      {
        operator new();
      }

      v34 = [(ICDrawingCommandData *)self savePoint:&v73 deltaFrom:&ICDrawingOutputPointDefault toArchive:v33];
      if (v34 <= 1)
      {
        v23 = 1;
      }

      else
      {
        v23 = v34;
      }

      if ([(ICDrawingCommandData *)self isClipped])
      {
        *(archive + 8) |= 0x80u;
        v35 = *(archive + 13);
        if (!v35)
        {
          operator new();
        }

        [(ICDrawingCommandData *)self clipOrigin];
        *&v36 = v36;
        *(v35 + 32) |= 1u;
        *(v35 + 40) = LODWORD(v36);
        *(archive + 8) |= 0x80u;
        v37 = *(archive + 13);
        if (!v37)
        {
          operator new();
        }

        [(ICDrawingCommandData *)self clipOrigin];
        v39 = v38;
        *(v37 + 32) |= 2u;
        *(v37 + 44) = v39;
        *(archive + 8) |= 0x100u;
        v40 = *(archive + 14);
        if (!v40)
        {
          operator new();
        }

        [(ICDrawingCommandData *)self clipNormal];
        *&v41 = v41;
        *(v40 + 32) |= 1u;
        *(v40 + 40) = LODWORD(v41);
        *(archive + 8) |= 0x100u;
        v42 = *(archive + 14);
        if (!v42)
        {
          operator new();
        }

        [(ICDrawingCommandData *)self clipNormal];
        v44 = v43;
        *(v42 + 32) |= 2u;
        *(v42 + 44) = v44;
      }
    }

    else
    {
      v23 = 1;
    }

    [(ICDrawingCommandData *)self bounds];
    x = v76.origin.x;
    y = v76.origin.y;
    width = v76.size.width;
    height = v76.size.height;
    if (!CGRectIsNull(v76))
    {
      *(archive + 8) |= 0x40u;
      v49 = *(archive + 12);
      if (!v49)
      {
        operator new();
      }

      v50 = x;
      v51 = *(v49 + 32);
      v52 = y;
      *(v49 + 40) = v50;
      *(v49 + 44) = v52;
      v53 = width;
      v54 = height;
      *(v49 + 32) = v51 | 0xF;
      *(v49 + 48) = v53;
      *(v49 + 52) = v54;
    }

    objc_msgSend_baseValues(self);
    *(archive + 8) |= 8u;
    v55 = *(archive + 7);
    if (!v55)
    {
      operator new();
    }

    [(ICDrawingCommandData *)self savePoint:&v73 deltaFrom:&ICDrawingOutputPointDefault toArchive:v55];
    [(ICDrawingCommandData *)self version1Parameters];
    v57 = v56;
    v59 = v58;
    [(ICDrawingCommandData *)self parameters];
    if (vabdd_f64(v60, v57) >= 0.00999999978 || ([(ICDrawingCommandData *)self parameters], vabdd_f64(v61, v59) >= 0.00999999978) || ([(ICDrawingCommandData *)self parameters], v62 > 0.0))
    {
      *(archive + 8) |= 0x200u;
      v63 = *(archive + 15);
      if (!v63)
      {
        operator new();
      }

      [(ICDrawingCommandData *)self parameters];
      *&v64 = v64;
      *(v63 + 32) |= 1u;
      *(v63 + 40) = LODWORD(v64);
      [(ICDrawingCommandData *)self parameters];
      v66 = v65;
      *(v63 + 32) |= 2u;
      *(v63 + 44) = v66;
      [(ICDrawingCommandData *)self parameters];
      if (v67 <= 0.0)
      {
        v70 = v23 > 2;
        v71 = 2;
      }

      else
      {
        [(ICDrawingCommandData *)self parameters];
        v69 = v68;
        *(v63 + 32) |= 4u;
        *(v63 + 48) = v69;
        v70 = v23 > 3;
        v71 = 3;
      }

      if (!v70)
      {
        v23 = v71;
      }
    }
  }

  return v23;
}

@end