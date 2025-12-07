@interface GLKEffectPropertyTexGen
- (GLKEffectPropertyTexGen)initWithMode:(int)mode coord:(int)coord;
- (void)bind;
- (void)dealloc;
- (void)initializeMasks;
- (void)setMode:(int)mode;
- (void)setModeNameString:(char *)string;
- (void)setPlane:(float *)plane;
- (void)setPlaneNameString:(char *)string;
- (void)setShaderBindings;
@end

@implementation GLKEffectPropertyTexGen

- (GLKEffectPropertyTexGen)initWithMode:(int)mode coord:(int)coord
{
  v5 = *&mode;
  v11.receiver = self;
  v11.super_class = GLKEffectPropertyTexGen;
  v6 = [(GLKEffectProperty *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->_planeLoc = -1;
    v6->_modeLoc = -1;
    v6->_plane = malloc_type_malloc(0x10uLL, 0x100004052888210uLL);
    [(GLKEffectPropertyTexGen *)v7 setMode:v5];
    v7->_coord = coord;
    v7->_planeNameString = 0;
    v7->_modeNameString = 0;
    v7->_textureIndex = 0;
    if (coord == 1)
    {
      plane = v7->_plane;
      plane[3] = 0.0;
      *(plane + 1) = 1065353216;
      goto LABEL_6;
    }

    if (!coord)
    {
      v8 = v7->_plane;
      *v8 = 1.0;
      *(v8 + 1) = 0;
      plane = v8 + 1;
LABEL_6:
      *plane = 0.0;
    }
  }

  return v7;
}

- (void)setMode:(int)mode
{
  if (self->_mode != mode || ![(GLKEffectProperty *)self masksInitialized])
  {
    self->_mode = mode;
    _normalizedNormalsMask(*(self->super._prv + 4));
    _vNormalEyeMask(*(self->super._prv + 4));
    _vPositionEyeMask(*(self->super._prv + 4));
    _useTexCoordAttribMask(*(self->super._prv + 4));
    v5 = [(GLKEffectProperty *)self dirtyUniforms]| 0x400000;

    [(GLKEffectProperty *)self setDirtyUniforms:v5];
  }
}

- (void)setPlane:(float *)plane
{
  plane = self->_plane;
  if (*plane != *plane || plane[1] != plane[1] || plane[2] != plane[2] || plane[3] != plane[3])
  {
    *plane = *plane;
    v5 = [(GLKEffectProperty *)self dirtyUniforms]| 0x800000;

    [(GLKEffectProperty *)self setDirtyUniforms:v5];
  }
}

- (void)setModeNameString:(char *)string
{
  modeNameString = self->_modeNameString;
  if (modeNameString)
  {
    free(modeNameString);
  }

  self->_modeNameString = strdup(string);
}

- (void)setPlaneNameString:(char *)string
{
  planeNameString = self->_planeNameString;
  if (planeNameString)
  {
    free(planeNameString);
  }

  self->_planeNameString = strdup(string);
}

- (void)setShaderBindings
{
  v5 = *MEMORY[0x277D85DE8];
  params = 0;
  glGetIntegerv(0x8B8Du, &params);
  snprintf(__str, 0x3FuLL, "textures[%d].texGen[%d].mode", self->_textureIndex, self->_coord);
  [(GLKEffectPropertyTexGen *)self setModeNameString:__str];
  snprintf(__str, 0x3FuLL, "textures[%d].texGen[%d].plane", self->_textureIndex, self->_coord);
  [(GLKEffectPropertyTexGen *)self setPlaneNameString:__str];
  self->_modeLoc = glGetUniformLocation(params, [(GLKEffectPropertyTexGen *)self modeNameString]);
  self->_planeLoc = glGetUniformLocation(params, [(GLKEffectPropertyTexGen *)self planeNameString]);
  [(GLKEffectPropertyTexGen *)self dirtyAllUniforms];
}

- (void)initializeMasks
{
  _normalizedNormalsMask(*(self->super._prv + 4));
  _vNormalEyeMask(*(self->super._prv + 4));
  _vPositionEyeMask(*(self->super._prv + 4));
  _useTexCoordAttribMask(*(self->super._prv + 4));

  [(GLKEffectProperty *)self setMasksInitialized:1];
}

- (void)bind
{
  if ([(GLKEffectProperty *)self dirtyUniforms])
  {
    if (([(GLKEffectProperty *)self dirtyUniforms]& 0x400000) != 0)
    {
      glUniform1i(self->_modeLoc, self->_mode);
    }

    if (([(GLKEffectProperty *)self dirtyUniforms]& 0x800000) != 0)
    {
      glUniform4fv(self->_planeLoc, 1, self->_plane);
    }

    [(GLKEffectProperty *)self setDirtyUniforms:0];
  }
}

- (void)dealloc
{
  free(self->_plane);
  modeNameString = self->_modeNameString;
  if (modeNameString)
  {
    free(modeNameString);
  }

  planeNameString = self->_planeNameString;
  if (planeNameString)
  {
    free(planeNameString);
  }

  v5.receiver = self;
  v5.super_class = GLKEffectPropertyTexGen;
  [(GLKEffectProperty *)&v5 dealloc];
}

@end