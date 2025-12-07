@interface SDOFRenderingDiagnostics
- (SDOFRenderingDiagnostics)init;
- (id)createDiagnosticsDictionary;
- (id)dictFromFace:(id *)face;
- (id)dictFromFaces:(id *)faces numFaces:(int)numFaces;
- (void)addDetectedFaces:(id *)faces numFaces:(int)numFaces;
@end

@implementation SDOFRenderingDiagnostics

- (SDOFRenderingDiagnostics)init
{
  v6.receiver = self;
  v6.super_class = SDOFRenderingDiagnostics;
  v2 = [(SDOFRenderingDiagnostics *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x29EDB8E00]);
    diagDict = v2->_diagDict;
    v2->_diagDict = v3;
  }

  return v2;
}

- (id)createDiagnosticsDictionary
{
  v4 = objc_msgSend_copy(self->_diagDict, a2, v2, v3);

  return v4;
}

- (void)addDetectedFaces:(id *)faces numFaces:(int)numFaces
{
  if (faces)
  {
    v6 = objc_msgSend_dictFromFaces_numFaces_(self, a2, faces, *&numFaces);
    objc_msgSend_setObject_forKeyedSubscript_(self->_diagDict, v5, v6, @"FD");
  }
}

- (id)dictFromFaces:(id *)faces numFaces:(int)numFaces
{
  if (!faces)
  {
    sub_295EB868C();
LABEL_11:
    v9 = 0;
    goto LABEL_7;
  }

  v4 = *&numFaces;
  facesCopy = faces;
  v9 = objc_msgSend_dictionary(MEMORY[0x29EDB8E00], a2, faces, *&numFaces);
  if (v9)
  {
    v10 = objc_msgSend_numberWithInt_(MEMORY[0x29EDBA070], v7, v4, v8);
    objc_msgSend_setObject_forKeyedSubscript_(v9, v11, v10, @"numFaces");

    if (v4 < 1)
    {
      goto LABEL_7;
    }

    v14 = 0;
    while (1)
    {
      v15 = objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], v12, @"face%d", v13, v14);
      if (!v15)
      {
        break;
      }

      v18 = v15;
      var1 = facesCopy->var1;
      v24[0] = facesCopy->var0;
      v24[1] = var1;
      var3 = facesCopy->var3;
      v24[2] = facesCopy->var2;
      v24[3] = var3;
      v21 = objc_msgSend_dictFromFace_(self, v16, v24, v17);
      objc_msgSend_setObject_forKeyedSubscript_(v9, v22, v21, v18);

      ++v14;
      ++facesCopy;
      if (v4 == v14)
      {
        goto LABEL_7;
      }
    }

    sub_295EB85CC(v9);
    goto LABEL_11;
  }

  sub_295EB8634();
LABEL_7:

  return v9;
}

- (id)dictFromFace:(id *)face
{
  v5 = objc_msgSend_dictionary(MEMORY[0x29EDB8E00], a2, face, v3);
  if (v5)
  {
    DictionaryRepresentation = CGPointCreateDictionaryRepresentation(face->var1);
    objc_msgSend_setObject_forKeyedSubscript_(v5, v7, DictionaryRepresentation, @"leftEye");

    v8 = CGPointCreateDictionaryRepresentation(face->var2);
    objc_msgSend_setObject_forKeyedSubscript_(v5, v9, v8, @"rightEye");

    v10 = CGPointCreateDictionaryRepresentation(face->var0);
    objc_msgSend_setObject_forKeyedSubscript_(v5, v11, v10, @"nose");
  }

  else
  {
    sub_295EB86E4();
  }

  return v5;
}

@end