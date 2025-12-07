@interface PAEKeyerCbCrSetup
- (BOOL)isEqualTo:(id)to;
- (PAEKeyerCbCrSetup)init;
- (PAEKeyerCbCrSetup)initWithCoder:(id)coder;
- (Vec2f)polarToCartesian:(Vec2f)cartesian;
- (id)interpolateBetween:(id)between withWeight:(float)weight;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)interpPieWithWeight:(float)weight currentDirectionCorrection:(float)correction nextDirectionCorrection:(float)directionCorrection interpolatedCenter:(Vec2f)center currentCenter:(Vec2f)currentCenter currentPolar:(const Vec2f *)polar nextCenter:(Vec2f)nextCenter nextPolar:(const Vec2f *)self0 interpolationType:(int)self1 interpolatedPie:(void *)self2;
- (void)offsetPie:(Vec2f *)pie offsetDegrees:(float)degrees;
- (void)pieToPolarForPie:(void *)pie polar:(Vec2f *)polar;
- (void)pieToPolarForPie:(void *)pie softPie:(void *)softPie tolPolar:(Vec2f *)polar softPolar:(Vec2f *)softPolar;
- (void)setSoftPieX:(id)x indice:(int)indice;
- (void)setSoftPieY:(id)y indice:(int)indice;
- (void)setTolPieX:(id)x indice:(int)indice;
- (void)setTolPieY:(id)y indice:(int)indice;
@end

@implementation PAEKeyerCbCrSetup

- (PAEKeyerCbCrSetup)init
{
  self->_initialized = 1;
  v3.receiver = self;
  v3.super_class = PAEKeyerCbCrSetup;
  if ([(PAEKeyerCbCrSetup *)&v3 init])
  {
    operator new();
  }

  return 0;
}

- (PAEKeyerCbCrSetup)initWithCoder:(id)coder
{
  v10 = *MEMORY[0x277D85DE8];
  self->_initialized = 1;
  v9.receiver = self;
  v9.super_class = PAEKeyerCbCrSetup;
  v4 = [(PAEKeyerCbCrSetup *)&v9 init];
  if (v4)
  {
    -[PAEKeyerCbCrSetup setTolPieX:indice:](v4, "setTolPieX:indice:", [coder decodeObjectOfClass:objc_opt_class() forKey:@"TolPieX_CORNER_L"], 0);
    -[PAEKeyerCbCrSetup setTolPieX:indice:](v4, "setTolPieX:indice:", [coder decodeObjectOfClass:objc_opt_class() forKey:@"TolPieX_CORNER_M"], 1);
    -[PAEKeyerCbCrSetup setTolPieX:indice:](v4, "setTolPieX:indice:", [coder decodeObjectOfClass:objc_opt_class() forKey:@"TolPieX_CORNER_R"], 2);
    -[PAEKeyerCbCrSetup setTolPieX:indice:](v4, "setTolPieX:indice:", [coder decodeObjectOfClass:objc_opt_class() forKey:@"TolPieX_CORNER_LL"], 3);
    -[PAEKeyerCbCrSetup setTolPieX:indice:](v4, "setTolPieX:indice:", [coder decodeObjectOfClass:objc_opt_class() forKey:@"TolPieX_CORNER_RR"], 4);
    -[PAEKeyerCbCrSetup setTolPieY:indice:](v4, "setTolPieY:indice:", [coder decodeObjectOfClass:objc_opt_class() forKey:@"TolPieY_CORNER_L"], 0);
    -[PAEKeyerCbCrSetup setTolPieY:indice:](v4, "setTolPieY:indice:", [coder decodeObjectOfClass:objc_opt_class() forKey:@"TolPieY_CORNER_M"], 1);
    -[PAEKeyerCbCrSetup setTolPieY:indice:](v4, "setTolPieY:indice:", [coder decodeObjectOfClass:objc_opt_class() forKey:@"TolPieY_CORNER_R"], 2);
    -[PAEKeyerCbCrSetup setTolPieY:indice:](v4, "setTolPieY:indice:", [coder decodeObjectOfClass:objc_opt_class() forKey:@"TolPieY_CORNER_LL"], 3);
    -[PAEKeyerCbCrSetup setTolPieY:indice:](v4, "setTolPieY:indice:", [coder decodeObjectOfClass:objc_opt_class() forKey:@"TolPieY_CORNER_RR"], 4);
    -[PAEKeyerCbCrSetup setSoftPieX:indice:](v4, "setSoftPieX:indice:", [coder decodeObjectOfClass:objc_opt_class() forKey:@"SoftPieX_CORNER_L"], 0);
    -[PAEKeyerCbCrSetup setSoftPieX:indice:](v4, "setSoftPieX:indice:", [coder decodeObjectOfClass:objc_opt_class() forKey:@"SoftPieX_CORNER_M"], 1);
    -[PAEKeyerCbCrSetup setSoftPieX:indice:](v4, "setSoftPieX:indice:", [coder decodeObjectOfClass:objc_opt_class() forKey:@"SoftPieX_CORNER_R"], 2);
    -[PAEKeyerCbCrSetup setSoftPieX:indice:](v4, "setSoftPieX:indice:", [coder decodeObjectOfClass:objc_opt_class() forKey:@"SoftPieX_CORNER_LL"], 3);
    -[PAEKeyerCbCrSetup setSoftPieX:indice:](v4, "setSoftPieX:indice:", [coder decodeObjectOfClass:objc_opt_class() forKey:@"SoftPieX_CORNER_RR"], 4);
    -[PAEKeyerCbCrSetup setSoftPieY:indice:](v4, "setSoftPieY:indice:", [coder decodeObjectOfClass:objc_opt_class() forKey:@"SoftPieY_CORNER_L"], 0);
    -[PAEKeyerCbCrSetup setSoftPieY:indice:](v4, "setSoftPieY:indice:", [coder decodeObjectOfClass:objc_opt_class() forKey:@"SoftPieY_CORNER_M"], 1);
    -[PAEKeyerCbCrSetup setSoftPieY:indice:](v4, "setSoftPieY:indice:", [coder decodeObjectOfClass:objc_opt_class() forKey:@"SoftPieY_CORNER_R"], 2);
    -[PAEKeyerCbCrSetup setSoftPieY:indice:](v4, "setSoftPieY:indice:", [coder decodeObjectOfClass:objc_opt_class() forKey:@"SoftPieY_CORNER_LL"], 3);
    -[PAEKeyerCbCrSetup setSoftPieY:indice:](v4, "setSoftPieY:indice:", [coder decodeObjectOfClass:objc_opt_class() forKey:@"SoftPieY_CORNER_RR"], 4);
    v5 = MEMORY[0x277CBEB98];
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v4->_splineVertex = [coder decodeObjectOfClasses:objc_msgSend(v5 forKey:{"setWithObjects:", v6, v7, objc_opt_class(), 0), @"SplineVertex"}];
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  keyer2DSatSpline = self->_keyer2DSatSpline;
  if (keyer2DSatSpline)
  {
    v4 = *keyer2DSatSpline;
    if (*keyer2DSatSpline)
    {
      keyer2DSatSpline[1] = v4;
      operator delete(v4);
    }

    MEMORY[0x2666E9F00](keyer2DSatSpline, 0x1020C407A026B33);
  }

  keyer2DTolPie = self->_keyer2DTolPie;
  if (keyer2DTolPie)
  {
    (*(*keyer2DTolPie + 8))(keyer2DTolPie, a2);
  }

  keyer2DSoftPie = self->_keyer2DSoftPie;
  if (keyer2DSoftPie)
  {
    (*(*keyer2DSoftPie + 8))(keyer2DSoftPie, a2);
  }

  v7 = 0x1FFFFFFFFFFFFFFBLL;
  do
  {

    ++v7;
  }

  while (v7 * 8);

  v8.receiver = self;
  v8.super_class = PAEKeyerCbCrSetup;
  [(PAEKeyerCbCrSetup *)&v8 dealloc];
}

- (void)encodeWithCoder:(id)coder
{
  v6 = 0;
  for (i = 0; i != 5; ++i)
  {
    LODWORD(v3) = *(*(self->_keyer2DTolPie + 6) + v6);
    -[PAEKeyerCbCrSetup setTolPieX:indice:](self, "setTolPieX:indice:", [MEMORY[0x277CCABB0] numberWithFloat:v3], i);
    LODWORD(v8) = *(*(self->_keyer2DTolPie + 6) + v6 + 4);
    -[PAEKeyerCbCrSetup setTolPieY:indice:](self, "setTolPieY:indice:", [MEMORY[0x277CCABB0] numberWithFloat:v8], i);
    LODWORD(v9) = *(*(self->_keyer2DSoftPie + 6) + v6);
    -[PAEKeyerCbCrSetup setSoftPieX:indice:](self, "setSoftPieX:indice:", [MEMORY[0x277CCABB0] numberWithFloat:v9], i);
    LODWORD(v10) = *(*(self->_keyer2DSoftPie + 6) + v6 + 4);
    -[PAEKeyerCbCrSetup setSoftPieY:indice:](self, "setSoftPieY:indice:", [MEMORY[0x277CCABB0] numberWithFloat:v10], i);
    v6 += 8;
  }

  self->_splineVertex = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (((*(self->_keyer2DSatSpline + 1) - *self->_keyer2DSatSpline) >> 5) >= 1)
  {
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = objc_alloc_init(PAEKeyerOMVertex);
      v14 = (*self->_keyer2DSatSpline + v11);
      LODWORD(v15) = *v14;
      -[PAEKeyerOMVertex setLx:](v13, "setLx:", [MEMORY[0x277CCABB0] numberWithFloat:v15]);
      LODWORD(v16) = v14[2];
      -[PAEKeyerOMVertex setMx:](v13, "setMx:", [MEMORY[0x277CCABB0] numberWithFloat:v16]);
      LODWORD(v17) = v14[4];
      -[PAEKeyerOMVertex setRx:](v13, "setRx:", [MEMORY[0x277CCABB0] numberWithFloat:v17]);
      LODWORD(v18) = v14[6];
      -[PAEKeyerOMVertex setBx:](v13, "setBx:", [MEMORY[0x277CCABB0] numberWithFloat:v18]);
      LODWORD(v19) = v14[1];
      -[PAEKeyerOMVertex setLy:](v13, "setLy:", [MEMORY[0x277CCABB0] numberWithFloat:v19]);
      LODWORD(v20) = v14[3];
      -[PAEKeyerOMVertex setMy:](v13, "setMy:", [MEMORY[0x277CCABB0] numberWithFloat:v20]);
      LODWORD(v21) = v14[5];
      -[PAEKeyerOMVertex setRy:](v13, "setRy:", [MEMORY[0x277CCABB0] numberWithFloat:v21]);
      LODWORD(v22) = v14[7];
      -[PAEKeyerOMVertex setBy:](v13, "setBy:", [MEMORY[0x277CCABB0] numberWithFloat:v22]);
      [(NSMutableArray *)self->_splineVertex addObject:v13];

      ++v12;
      v11 += 32;
    }

    while (v12 < ((*(self->_keyer2DSatSpline + 1) - *self->_keyer2DSatSpline) >> 5));
  }

  [coder encodeObject:self->_tolPieX[0] forKey:@"TolPieX_CORNER_L"];
  [coder encodeObject:self->_tolPieX[1] forKey:@"TolPieX_CORNER_M"];
  [coder encodeObject:self->_tolPieX[2] forKey:@"TolPieX_CORNER_R"];
  [coder encodeObject:self->_tolPieX[3] forKey:@"TolPieX_CORNER_LL"];
  [coder encodeObject:self->_tolPieX[4] forKey:@"TolPieX_CORNER_RR"];
  [coder encodeObject:self->_tolPieY[0] forKey:@"TolPieY_CORNER_L"];
  [coder encodeObject:self->_tolPieY[1] forKey:@"TolPieY_CORNER_M"];
  [coder encodeObject:self->_tolPieY[2] forKey:@"TolPieY_CORNER_R"];
  [coder encodeObject:self->_tolPieY[3] forKey:@"TolPieY_CORNER_LL"];
  [coder encodeObject:self->_tolPieY[4] forKey:@"TolPieY_CORNER_RR"];
  [coder encodeObject:self->_softPieX[0] forKey:@"SoftPieX_CORNER_L"];
  [coder encodeObject:self->_softPieX[1] forKey:@"SoftPieX_CORNER_M"];
  [coder encodeObject:self->_softPieX[2] forKey:@"SoftPieX_CORNER_R"];
  [coder encodeObject:self->_softPieX[3] forKey:@"SoftPieX_CORNER_LL"];
  [coder encodeObject:self->_softPieX[4] forKey:@"SoftPieX_CORNER_RR"];
  [coder encodeObject:self->_softPieY[0] forKey:@"SoftPieY_CORNER_L"];
  [coder encodeObject:self->_softPieY[1] forKey:@"SoftPieY_CORNER_M"];
  [coder encodeObject:self->_softPieY[2] forKey:@"SoftPieY_CORNER_R"];
  [coder encodeObject:self->_softPieY[3] forKey:@"SoftPieY_CORNER_LL"];
  [coder encodeObject:self->_softPieY[4] forKey:@"SoftPieY_CORNER_RR"];
  splineVertex = self->_splineVertex;

  [coder encodeObject:splineVertex forKey:@"SplineVertex"];
}

- (void)setTolPieX:(id)x indice:(int)indice
{
  xCopy = x;
  v8 = (&self->super.isa + indice);

  v8[1] = x;
}

- (void)setSoftPieX:(id)x indice:(int)indice
{
  xCopy = x;
  v8 = (&self->super.isa + indice);

  v8[11] = x;
}

- (void)setTolPieY:(id)y indice:(int)indice
{
  yCopy = y;
  v8 = (&self->super.isa + indice);

  v8[6] = y;
}

- (void)setSoftPieY:(id)y indice:(int)indice
{
  yCopy = y;
  v8 = (&self->super.isa + indice);

  v8[16] = y;
}

- (Vec2f)polarToCartesian:(Vec2f)cartesian
{
  v5 = v4;
  v6 = *v3;
  v7 = __sincosf_stret(v3[1]);
  v8 = v6 * v7.__cosval;
  v9 = v6 * v7.__sinval;
  *v5 = v6 * v7.__cosval;
  v5[1] = v6 * v7.__sinval;
  result.var0[1] = v8;
  result.var0[0] = v9;
  return result;
}

- (void)interpPieWithWeight:(float)weight currentDirectionCorrection:(float)correction nextDirectionCorrection:(float)directionCorrection interpolatedCenter:(Vec2f)center currentCenter:(Vec2f)currentCenter currentPolar:(const Vec2f *)polar nextCenter:(Vec2f)nextCenter nextPolar:(const Vec2f *)self0 interpolationType:(int)self1 interpolatedPie:(void *)self2
{
  v14 = v13;
  v15 = v12;
  v16 = *&type;
  polarCopy2 = polar;
  v23 = 0;
  v25 = v13 == 1 && weight > 0.5;
  v26 = v13 != 2 || weight > 0.5;
  v50 = weight + weight;
  v27 = (weight + -0.5) + (weight + -0.5);
  v28 = !v26;
  v51 = v25 | v28;
  HIDWORD(v29) = 1075388923;
  v49 = 6.28318531;
  v30 = -3;
  do
  {
    if (v23 == 8)
    {
      v31 = *(v15 + 8);
      v32 = *(v15 + 12);
      if (v14 == 2)
      {
        v33 = 0;
        v34 = *(v15 + 12);
        *&v29 = v27;
        if (weight <= 0.5)
        {
          v46 = polarCopy2->var0[1];
          v57[0] = 0;
          *&v57[1] = v46;
          if (self)
          {
            objc_msgSend_polarToCartesian_(self, a2, v57, *&v49);
            goto LABEL_42;
          }

LABEL_53:
          v29 = 0.0;
          goto LABEL_54;
        }
      }

      else
      {
        v33 = *(v16 + 8);
        v34 = *(v16 + 12);
        if (v14 == 1)
        {
          v31 = 0.0;
          v32 = *(v16 + 12);
          *&v29 = v50;
          if (weight > 0.5)
          {
            v35 = polarCopy2->var0[1];
            v58[0] = 0;
            *&v58[1] = v35;
            if (self)
            {
              objc_msgSend_polarToCartesian_(self, a2, v58, *&v49);
LABEL_42:
              v29 = *v59;
LABEL_54:
              *(*(*&nextCenter + 48) + 8) = v29;
              goto LABEL_55;
            }

            goto LABEL_53;
          }
        }

        else
        {
          *&v29 = weight;
        }
      }

      v47 = vabds_f32(v32, v34);
      v48 = v47 >= 3.14159265;
      if (v32 >= v34)
      {
        v48 = v47 < 3.14159265;
      }

      if (v48)
      {
        if (v32 < v34)
        {
          v32 = v32 + v49;
        }
      }

      else if (v34 < v32)
      {
        v34 = v34 + v49;
      }

      *&v56 = COERCE_DOUBLE(__PAIR64__(LODWORD(v34), v33));
      v54 = v31;
      v55 = v32;
      [(PAEKeyerCbCrSetup *)self interpVec2f:&v56 left:&v54 right:v59 interpolated:v29, *&v49];
      if (self)
      {
        objc_msgSend_polarToCartesian_(self);
        v29 = *&v56;
        goto LABEL_54;
      }

      goto LABEL_53;
    }

    v37 = *(v15 + v23);
    v36 = *(v15 + v23 + 4);
    v39 = *(v16 + v23);
    v38 = *(v16 + v23 + 4);
    if (v14 == 1)
    {
      if (weight <= 0.5 || v30 > 1)
      {
        goto LABEL_32;
      }

      v38 = *(v16 + 16 * (v23 != 24) + 4);
      v39 = 0.0;
      *&v29 = v27;
    }

    else
    {
      if (v14 != 2 || (weight <= 0.5 ? (v41 = v30 > 1) : (v41 = 1), v41))
      {
LABEL_32:
        *&v29 = weight;
        goto LABEL_33;
      }

      v36 = *(v15 + 16 * (v23 != 24) + 4);
      v37 = 0.0;
      *&v29 = v50;
    }

LABEL_33:
    v42 = nextPolar->var0[1] - v38;
    v43 = *(pie + 1);
    v44 = *pie - v37;
    *&v56 = nextPolar->var0[0] - v39;
    *(&v56 + 1) = v42 - correction;
    v54 = v44;
    v55 = (v43 - v36) - directionCorrection;
    [(PAEKeyerCbCrSetup *)self interpVec2f:&v56 left:&v54 right:v59 interpolated:v29];
    polarCopy2 = polar;
    if (v30 <= 1 && (v51 & 1) != 0)
    {
      v56 = *(*(*&nextCenter + 48) + 16 * (v23 != 24));
      [(PAEKeyerCbCrSetup *)self toPolar:&v56 polar:&v54];
    }

    if (self)
    {
      objc_msgSend_polarToCartesian_(self);
      LODWORD(v29) = v56;
    }

    else
    {
      *&v56 = 0.0;
      v29 = 0.0;
    }

    v45 = (*(*&nextCenter + 48) + v23);
    *v45 = LODWORD(v29);
    v45[1] = HIDWORD(v56);
LABEL_55:
    ++v30;
    v23 += 8;
  }

  while (v23 != 40);
}

- (void)pieToPolarForPie:(void *)pie polar:(Vec2f *)polar
{
  v7 = 0;
  polarCopy = polar;
  do
  {
    v9 = (*(pie + 6) + v7);
    v13[0] = *v9;
    v13[1] = v9[1];
    [(PAEKeyerCbCrSetup *)self toPolar:v13 polar:polarCopy++];
    v7 += 8;
  }

  while (v7 != 40);
  v10 = polar[2].var0[1];
  if (polar->var0[1] > v10)
  {
    v11 = v10 + 6.28318531;
    polar[2].var0[1] = v11;
    v12 = polar[4].var0[1] + 6.28318531;
    polar[4].var0[1] = v12;
  }
}

- (void)pieToPolarForPie:(void *)pie softPie:(void *)softPie tolPolar:(Vec2f *)polar softPolar:(Vec2f *)softPolar
{
  [(PAEKeyerCbCrSetup *)self pieToPolarForPie:pie polar:polar];

  [(PAEKeyerCbCrSetup *)self pieToPolarForPie:softPie polar:softPolar];
}

- (void)offsetPie:(Vec2f *)pie offsetDegrees:(float)degrees
{
  for (i = 1; i != 11; i += 2)
  {
    pie->var0[i] = pie->var0[i] + degrees;
  }
}

- (id)interpolateBetween:(id)between withWeight:(float)weight
{
  v38 = *&weight;
  v56 = *MEMORY[0x277D85DE8];
  v6 = objc_alloc_init(PAEKeyerCbCrSetup);
  [(PAEKeyerCbCrSetup *)self pieToPolarForPie:self->_keyer2DTolPie softPie:self->_keyer2DSoftPie tolPolar:&v52 softPolar:v48];
  [(PAEKeyerCbCrSetup *)self pieToPolarForPie:*(between + 23) softPie:*(between + 24) tolPolar:v51 softPolar:v45];
  v8 = v54;
  v9 = v52;
  v10 = v53 + ((v55 - v53) * 0.5);
  v12 = *&v51[4];
  v11 = *&v51[5];
  v14 = *v51;
  v13 = *&v51[1];
  *&v15 = v50;
  if (v49 < v10 && v50 < v10)
  {
    LODWORD(v7) = 1086918619;
    goto LABEL_11;
  }

  if (v49 > v10 && v50 > v10)
  {
    LODWORD(v7) = -1060565029;
LABEL_11:
    [(PAEKeyerCbCrSetup *)self offsetPie:v48 offsetDegrees:v7, v15];
  }

  v18 = v13 + ((v11 - v13) * 0.5);
  *&v15 = v47;
  if (v46 < v18 && v47 < v18)
  {
    LODWORD(v7) = 1086918619;
    goto LABEL_22;
  }

  if (v46 > v18 && v47 > v18)
  {
    LODWORD(v7) = -1060565029;
LABEL_22:
    [(PAEKeyerCbCrSetup *)self offsetPie:v45 offsetDegrees:v7, v15];
  }

  v21 = v9 + ((v8 - v9) * 0.5);
  v22 = vabds_f32(v18, v10);
  if (v18 >= v10)
  {
    v23 = v22 < 3.14159265;
  }

  else
  {
    v23 = v22 >= 3.14159265;
  }

  if (v23)
  {
    v24 = 0;
    if (v18 < v10)
    {
      v18 = v18 + 6.28318531;
      v25 = 1086918619;
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    v25 = 0;
    if (v10 >= v18)
    {
      v24 = 0;
    }

    else
    {
      v10 = v10 + 6.28318531;
      v24 = 1086918619;
    }
  }

  v43.var0[0] = v21;
  v43.var0[1] = v10;
  v41 = v14 + ((v12 - v14) * 0.5);
  v42 = v18;
  [(PAEKeyerCbCrSetup *)self interpVec2f:&v43 left:&v41 right:&v44 interpolated:v38];
  if (OMPie::isQuadActive((self->_keyer2DTolPie + 8)) || !OMPie::isQuadActive((*(between + 23) + 8)))
  {
    if (OMPie::isQuadActive((*(between + 23) + 8)))
    {
      v28 = 0;
    }

    else if (OMPie::isQuadActive((self->_keyer2DTolPie + 8)))
    {
      v28 = 2;
    }

    else
    {
      v28 = 0;
    }
  }

  else
  {
    v28 = 1;
  }

  v43 = v44;
  v41 = v21;
  v42 = v10;
  v39 = v14 + ((v12 - v14) * 0.5);
  v40 = v18;
  LODWORD(v26) = v24;
  LODWORD(v27) = v25;
  [(PAEKeyerCbCrSetup *)self interpPieWithWeight:&v43 currentDirectionCorrection:&v41 nextDirectionCorrection:&v52 interpolatedCenter:&v39 currentCenter:v51 currentPolar:v28 nextCenter:v38 nextPolar:v26 interpolationType:v27 interpolatedPie:v6->_keyer2DTolPie];
  if (OMPie::isQuadActive((self->_keyer2DSoftPie + 8)) || !OMPie::isQuadActive((*(between + 24) + 8)))
  {
    if (OMPie::isQuadActive((*(between + 24) + 8)))
    {
      v31 = 0;
    }

    else if (OMPie::isQuadActive((self->_keyer2DSoftPie + 8)))
    {
      v31 = 2;
    }

    else
    {
      v31 = 0;
    }
  }

  else
  {
    v31 = 1;
  }

  v43 = v44;
  v41 = v21;
  v42 = v10;
  v39 = v14 + ((v12 - v14) * 0.5);
  v40 = v18;
  LODWORD(v29) = v24;
  LODWORD(v30) = v25;
  [(PAEKeyerCbCrSetup *)self interpPieWithWeight:&v43 currentDirectionCorrection:&v41 nextDirectionCorrection:v48 interpolatedCenter:&v39 currentCenter:v45 currentPolar:v31 nextCenter:v38 nextPolar:v29 interpolationType:v30 interpolatedPie:v6->_keyer2DSoftPie];
  keyer2DSatSpline = v6->_keyer2DSatSpline;
  keyer2DSatSpline[33] = 1;
  *(keyer2DSatSpline + 6) = 0;
  *(keyer2DSatSpline + 1) = *keyer2DSatSpline;
  v33 = *self->_keyer2DSatSpline;
  if (((*(self->_keyer2DSatSpline + 1) - v33) >> 5) >= 1)
  {
    v34 = 0;
    v35 = 24;
    do
    {
      v36 = v6->_keyer2DSatSpline;
      v43 = vadd_f32(vmul_n_f32(*(v33 + v35), 1.0 - *&v38), vmul_n_f32(*(**(between + 22) + v35), *&v38));
      OMSpline::addVertexAtEnd(v36, &v43);
      ++v34;
      v33 = *self->_keyer2DSatSpline;
      v35 += 32;
    }

    while (v34 < ((*(self->_keyer2DSatSpline + 1) - v33) >> 5));
  }

  return v6;
}

- (BOOL)isEqualTo:(id)to
{
  v3 = *(self->_keyer2DTolPie + 6);
  v4 = *(*(to + 23) + 48);
  for (i = 4; i != 44; i += 8)
  {
    if (*(v3 + i - 4) == *(v4 + i - 4) && *(v3 + i) == *(v4 + i))
    {
      v6 = *(self->_keyer2DSoftPie + 6);
      v7 = *(*(to + 24) + 48);
      if (*(v6 + i - 4) == *(v7 + i - 4) && *(v6 + i) == *(v7 + i))
      {
        continue;
      }
    }

    LOBYTE(v14) = 0;
    return v14;
  }

  keyer2DSatSpline = self->_keyer2DSatSpline;
  v9 = *keyer2DSatSpline;
  v10 = keyer2DSatSpline[1] - *keyer2DSatSpline;
  if ((v10 >> 5) < 1)
  {
    LOBYTE(v14) = 1;
  }

  else
  {
    v11 = ((v10 >> 5) & 0x7FFFFFFF) - 1;
    v12 = (v9 + 28);
    v13 = (**(to + 22) + 28);
    do
    {
      v14 = *v12 == *v13 && *(v12 - 1) == *(v13 - 1);
      v16 = v11-- != 0;
      if (!v14)
      {
        break;
      }

      v12 += 8;
      v13 += 8;
    }

    while (v16);
  }

  return v14;
}

@end