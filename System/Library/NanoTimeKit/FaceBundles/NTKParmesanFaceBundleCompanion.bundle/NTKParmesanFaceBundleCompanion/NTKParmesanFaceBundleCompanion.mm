uint64_t _s6LayoutV4RectOwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s6LayoutV4RectOwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

uint64_t sub_23BF0EBE4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23BF0EC04(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

BOOL sub_23BF0EC7C(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_23BF0ED08@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_23BF0ED60@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23BFFA300();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_23BF0ED8C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23BF0EDD4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_23BF0EE1C()
{
  v1 = sub_23BF4A264(&qword_27E1E0528, &qword_23C001D48);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_23BF0EEF4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23BF0EF2C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_23BF0EF70()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23BF0EFB0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_23BF0EFF8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23BF0F040()
{
  MEMORY[0x23EEC4EA0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23BF0F0A4()
{
  MEMORY[0x23EEC4EA0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23BF0F0DC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23BF0F114()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23BF0F14C()
{
  v1 = sub_23BF4A264(&qword_27E1E0958, &qword_23C002158);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_23BF0F1E0()
{
  v1 = sub_23BF4A264(&qword_27E1E0950, &qword_23C002150);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_23BF0F2B0()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23BF0F318()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23BF0F354()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23BF0F394()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_23BF0F3F4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23BF0F44C()
{
  MEMORY[0x23EEC4EA0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23BF0F4A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23BF4A264(&qword_27E1E0F10, &qword_23C0034F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BF0F518@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23BFF9920();
  *a1 = result;
  return result;
}

uint64_t sub_23BF0F5E4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23BFF9870();
  *a1 = result;
  return result;
}

uint64_t sub_23BF0F63C()
{
  sub_23BF4A2D0(&qword_27E1E0EE0, &qword_23C0034D8);
  sub_23BF4BE40(&qword_27E1E0EE8, &qword_27E1E0EE0, &qword_23C0034D8, MEMORY[0x277CDF7D8]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_23BF0F7E0()
{
  MEMORY[0x23EEC4EA0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23BF0F87C()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_23BF0F8CC()
{

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_23BF0F91C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23BF0F96C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

id sub_23BF0FA40(id result, void *a2)
{
  if (result)
  {
    v2 = result;

    return a2;
  }

  return result;
}

uint64_t sub_23BF0FA80()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23BF0FAC8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23BF0FB0C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23BFF98C0();
  *a1 = result;
  return result;
}

uint64_t sub_23BF0FB88@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23BFF98E0();
  *a1 = result;
  return result;
}

uint64_t sub_23BF0FBE0@<X0>(uint64_t a1@<X8>)
{
  result = sub_23BFF9900();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

double sub_23BF0FC70(unint64_t *a1)
{
  v1 = *a1;
  sub_23BFA9F9C(*a1);
  return sub_23BFB13AC(v1);
}

double sub_23BF0FCD4(_OWORD *a1)
{
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;
  v4[0] = a1[2];
  *(v4 + 9) = *(a1 + 41);
  *&result = sub_23BFB09F4(v3).n128_u64[0];
  return result;
}

uint64_t sub_23BF0FE38(uint64_t a1, uint64_t a2)
{
  v4 = sub_23BF4A264(&qword_27E1E2150, &qword_23C007160);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_23BF0FF28(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_23BFB3D74(v1, v2);
}

uint64_t sub_23BF0FF80()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23BF0FFB8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23BF10000()
{
  MEMORY[0x23EEC4EA0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23BF1004C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23BF10084()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23BF100BC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23BF100FC()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23BF10220()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23BF1025C()
{
  MEMORY[0x23EEC4EA0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23BF10294()
{
  v1 = sub_23BF4A264(&qword_27E1E2858, &qword_23C008CE8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_23BF10328()
{

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_23BF10388()
{
  MEMORY[0x23EEC4EA0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23BF103C0()
{
  MEMORY[0x23EEC4EA0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23BF103F8()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_23BF10430()
{

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

void sub_23BF10498(void *a1, void *a2)
{
  if (a1)
  {
  }
}

void sub_23BF10C44(uint64_t a1, void *a2, uint64_t a3)
{
  v11 = a2;
  v7 = objc_msgSend_rows(*(a1 + 32), v5, v6);
  v9 = objc_msgSend_objectAtIndexedSubscript_(v7, v8, a3);

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_msgSend__setContentForCell_withEditOption_(*(a1 + 32), v10, v9, v11);
  }
}

void sub_23BF119B4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v7 = objc_msgSend_delegate(v3, v5, v6);
  objc_msgSend_hideLoadingIndicator(v7, v8, v9);

  v13 = objc_msgSend_face(*(a1 + 32), v10, v11);
  objc_msgSend_setResourceDirectory_(v13, v12, v4);
}

void sub_23BF11A38(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v7 = objc_msgSend_face(v2, v4, v5);
  objc_msgSend_setResourceDirectory_(v7, v6, v3);
}

void sub_23BF11A98(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v8 = objc_msgSend_photosCount(*(*(a1 + 32) + 168), v4, v5);
  v9 = *(a1 + 32);
  if (v8)
  {
    v10 = v3;
  }

  else
  {
    v11 = v9[19];
    v10 = v3;
    if (v11)
    {
      v10 = v11;

      v14 = objc_msgSend_logObject(NTKParmesanFaceBundle, v12, v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 138412290;
        v18 = v10;
        _os_log_impl(&dword_23BF0C000, v14, OS_LOG_TYPE_DEFAULT, "setSelectedOptions: empty editor; resetting the resource directory back to the saved gallery version (%@)", &v17, 0xCu);
      }

      v9 = *(a1 + 32);
    }
  }

  v15 = objc_msgSend_face(v9, v6, v7);
  objc_msgSend_setResourceDirectory_(v15, v16, v10);
}

void sub_23BF11BC4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v7 = objc_msgSend_face(v2, v4, v5);
  objc_msgSend_setResourceDirectory_(v7, v6, v3);
}

void sub_23BF11C24(uint64_t a1, double a2, const char *a3, uint64_t a4)
{
  v7 = objc_msgSend_delegate(*(a1 + 32), a3, a4);
  objc_msgSend_showLoadingIndicatorWithProgress_(v7, v5, v6, a2);
}

void sub_23BF11C78(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v7 = objc_msgSend_delegate(v3, v5, v6);
  objc_msgSend_hideLoadingIndicator(v7, v8, v9);

  v13 = objc_msgSend_face(*(a1 + 32), v10, v11);
  objc_msgSend_setResourceDirectory_(v13, v12, v4);
}

uint64_t sub_23BF12254(uint64_t a1, const char *a2, uint64_t a3)
{
  *(*(a1 + 32) + 136) = 1;
  v6 = objc_msgSend_actionRow(*(a1 + 32), a2, a3);
  if (v6)
  {
    v7 = objc_msgSend_rows(*(a1 + 32), v4, v5);
    v10 = objc_msgSend_actionRow(*(a1 + 32), v8, v9);
    v12 = objc_msgSend_indexOfObject_(v7, v11, v10);
  }

  else
  {
    v12 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v15 = objc_msgSend_collection(*(a1 + 32), v13, v14);
  v18 = objc_msgSend_options(v15, v16, v17);
  v20 = objc_msgSend_indexOfObject_(v18, v19, *(a1 + 40));

  if (v12 == 0x7FFFFFFFFFFFFFFFLL || v20 < v12)
  {
    v22 = v20;
  }

  else
  {
    v22 = v20 + 1;
  }

  v23 = *(a1 + 32);

  return MEMORY[0x2821F9670](v23, sel_didSelectRow_, v22);
}

void sub_23BF125C0(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a2;
  HasPhotos = objc_msgSend__manualEditorHasPhotos(*(a1 + 32), v4, v5);
  v9 = *(a1 + 32);
  if (HasPhotos)
  {
    v10 = v3;
  }

  else
  {
    v11 = v9[19];
    v10 = v3;
    if (v11)
    {
      v10 = v11;

      v14 = objc_msgSend_logObject(NTKParmesanFaceBundle, v12, v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v31 = 138412290;
        v32 = v10;
        _os_log_impl(&dword_23BF0C000, v14, OS_LOG_TYPE_DEFAULT, "_setPhotos: empty editor; resetting the resource directory back to the saved gallery version (%@)", &v31, 0xCu);
      }

      v9 = *(a1 + 32);
    }
  }

  v15 = objc_msgSend_face(v9, v6, v7);
  objc_msgSend_setResourceDirectory_(v15, v16, v10);

  v19 = objc_msgSend_logObject(NTKParmesanFaceBundle, v17, v18);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v22 = objc_msgSend_face(*(a1 + 32), v20, v21);
    v25 = objc_msgSend_resourceDirectory(v22, v23, v24);
    v31 = 138412290;
    v32 = v25;
    _os_log_impl(&dword_23BF0C000, v19, OS_LOG_TYPE_DEFAULT, "updated preview directory for custom face to %@", &v31, 0xCu);
  }

  v28 = objc_msgSend_delegate(*(a1 + 32), v26, v27);
  objc_msgSend_hideLoadingIndicator(v28, v29, v30);
}

void sub_23BF12A74(uint64_t a1, double a2, const char *a3, uint64_t a4)
{
  v7 = objc_msgSend_delegate(*(a1 + 32), a3, a4);
  objc_msgSend_showLoadingIndicatorWithProgress_(v7, v5, v6, a2);
}

void sub_23BF12AC8(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v6 = objc_msgSend_delegate(*(a1 + 32), v4, v5);
  objc_msgSend_hideLoadingIndicator(v6, v7, v8);

  if (v3)
  {
    objc_msgSend__updateSection(*(a1 + 32), v9, v10);
    v13 = objc_msgSend_face(*(a1 + 32), v11, v12);
    objc_msgSend_setResourceDirectory_(v13, v14, v3);

    v17 = objc_msgSend_logObject(NTKParmesanFaceBundle, v15, v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v20 = objc_msgSend_face(*(a1 + 32), v18, v19);
      v23 = objc_msgSend_resourceDirectory(v20, v21, v22);
      v25 = 138412290;
      v26 = v23;
      _os_log_impl(&dword_23BF0C000, v17, OS_LOG_TYPE_DEFAULT, "finalizeWithProgress:completion: new face resource directory is %@", &v25, 0xCu);
    }
  }

  v24 = *(a1 + 40);
  if (v24)
  {
    (*(v24 + 16))();
  }
}

uint64_t sub_23BF13150(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v7 = objc_msgSend_delegate(v3, v5, v6);
  objc_msgSend_hideLoadingIndicator(v7, v8, v9);

  v12 = objc_msgSend_face(*(a1 + 32), v10, v11);
  objc_msgSend_setResourceDirectory_(v12, v13, v4);

  v16 = *(a1 + 32);

  return objc_msgSend__updateSection(v16, v14, v15);
}

void sub_23BF131D0(uint64_t a1, double a2, const char *a3, uint64_t a4)
{
  v7 = objc_msgSend_delegate(*(a1 + 32), a3, a4);
  objc_msgSend_showLoadingIndicatorWithProgress_(v7, v5, v6, a2);
}

uint64_t sub_23BF13224(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v7 = objc_msgSend_delegate(v3, v5, v6);
  objc_msgSend_hideLoadingIndicator(v7, v8, v9);

  v12 = objc_msgSend_face(*(a1 + 32), v10, v11);
  objc_msgSend_setResourceDirectory_(v12, v13, v4);

  v16 = *(a1 + 32);

  return objc_msgSend__updateSection(v16, v14, v15);
}

void sub_23BF14AB4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_23BF14AD0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = WeakRetained;
  if (v5)
  {
    objc_msgSend_setInitialPreviewState_(WeakRetained, v8, 3);
    objc_msgSend__setPreview_animated_(v9, v10, v5, 0);
  }

  else
  {
    objc_msgSend_setInitialPreviewState_(WeakRetained, v8, 2);
    v11 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_23BFF6BC0(v6, v11);
    }
  }
}

uint64_t sub_23BF15E04(uint64_t a1, const char *a2)
{
  v2 = 0.2;
  if (!*(a1 + 48))
  {
    v2 = 0.0;
  }

  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_23BF15EA0;
  v4[3] = &unk_278BA69D8;
  v4[4] = *(a1 + 32);
  v4[5] = *(a1 + 40);
  return objc_msgSend_animateWithDuration_animations_(MEMORY[0x277D75D18], a2, v4, v2);
}

uint64_t sub_23BF160E4(uint64_t a1, const char *a2)
{
  if (a2)
  {
    return objc_msgSend__setCropValidationState_animated_(*(a1 + 32), a2, 2, *(a1 + 40));
  }

  else
  {
    return objc_msgSend__setCropValidationState_animated_(*(a1 + 32), a2, 1, *(a1 + 40));
  }
}

void sub_23BF1637C(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = objc_msgSend_delegate(*(a1 + 32), a2, a3);
  objc_msgSend_ParmesanPreviewViewControllerWantsToCancel_(v5, v4, *(a1 + 32));
}

void sub_23BF165D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23BF165F4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = objc_msgSend_view(WeakRetained, v5, v6);
    objc_msgSend_setUserInteractionEnabled_(v8, v9, 0);

    v10 = v7[149];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_23BF166EC;
    v12[3] = &unk_278BA69B0;
    objc_copyWeak(&v13, (a1 + 32));
    objc_msgSend_Parmesan_resetCropWithCompletion_(v10, v11, v12);
    objc_destroyWeak(&v13);
  }
}

void sub_23BF166EC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v10 = objc_msgSend_view(WeakRetained, v8, v9);
  objc_msgSend_setUserInteractionEnabled_(v10, v11, 1);

  if (v5)
  {
    objc_msgSend__setPreview_animated_(WeakRetained, v12, v5, 0);
  }

  else
  {
    v13 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_23BFF6C38(v6, v13);
    }
  }
}

uint64_t sub_23BF168A0(uint64_t a1, const char *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_firstObject(a3, a2, a3);
  v7 = objc_msgSend_objectEnumerator(v4, v5, v6);
  v10 = objc_msgSend_nextObject(v7, v8, v9);

  v11 = _NTKLoggingObjectForDomain();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);
  if (v10)
  {
    if (v12)
    {
      v15 = objc_msgSend_localIdentifier(v10, v13, v14);
      v18 = 138412290;
      v19 = v15;
      _os_log_impl(&dword_23BF0C000, v11, OS_LOG_TYPE_INFO, "Chnage Photo: selected photo = %@", &v18, 0xCu);
    }

    objc_msgSend__didSelectPhotoForChangePhoto_(*(a1 + 32), v16, v10);
  }

  else
  {
    if (v12)
    {
      LOWORD(v18) = 0;
      _os_log_impl(&dword_23BF0C000, v11, OS_LOG_TYPE_INFO, "Chnage Photo: No photo selected", &v18, 2u);
    }
  }

  return 0;
}

void sub_23BF16A94(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = _NTKLoggingObjectForDomain();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_23BFF6CB0(a1, v6, v8);
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v11 = objc_msgSend_localIdentifier(*(a1 + 32), v9, v10);
      v13 = 138412290;
      v14 = v11;
      _os_log_impl(&dword_23BF0C000, v8, OS_LOG_TYPE_INFO, "Received new preview for id = %@, updating…", &v13, 0xCu);
    }

    objc_msgSend__setPreview_animated_(*(a1 + 40), v12, v5, 1);
  }
}

void sub_23BF17C04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23BF17C1C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v7 = objc_msgSend__itemForIdentifier_(*(a1 + 32), v6, v5);
  v9 = objc_msgSend_objectAtIndexedSubscript_(*(*(a1 + 32) + 48), v8, a3);
  v12 = objc_msgSend_identifier(v9, v10, v11);
  isEqualToString = objc_msgSend_isEqualToString_(v12, v13, v5);

  if ((isEqualToString & 1) == 0)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  if (v7)
  {
    objc_msgSend_addObject_(*(a1 + 40), v15, v7);
  }

  else
  {
    v17 = objc_msgSend_logObject(NTKParmesanFaceBundle, v15, v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_23BFF6E14();
    }
  }
}

void sub_23BF1888C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_23BF188B0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23BF188C8(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = a2;
  if (a2)
  {
    v5 = *(a1 + 56);
  }

  else
  {
    v5 = *(*(*(a1 + 48) + 8) + 40);
    if (v5)
    {
      v6 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], a2, a3);
      objc_msgSend_removeItemAtPath_error_(v6, v7, *(*(*(a1 + 48) + 8) + 40), 0);

      v8 = *(*(a1 + 48) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = 0;

      v5 = 0;
    }
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23BF189E0;
  block[3] = &unk_278BA6AF0;
  v10 = *(a1 + 32);
  v16 = v3;
  block[4] = v10;
  v15 = v5;
  v12 = *(a1 + 40);
  v11 = v12;
  v14 = v12;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void sub_23BF189E0(uint64_t a1, const char *a2)
{
  *(*(a1 + 32) + 56) = *(a1 + 64);
  objc_msgSend_setState_(*(a1 + 32), a2, *(a1 + 56));
  objc_msgSend_setGalleryPreviewResourceDirectory_(*(a1 + 32), v3, *(*(*(a1 + 48) + 8) + 40));
  v4 = *(a1 + 40);
  v7 = objc_msgSend_galleryPreviewResourceDirectory(*(a1 + 32), v5, v6);
  (*(v4 + 16))(v4, v7);
}

void sub_23BF18A74(void *a1)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v2 = NTKPhotosCreateResourceDirectory();
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (*(*(a1[6] + 8) + 40))
  {
    v7 = objc_msgSend_firstObject(*(a1[4] + 48), v5, v6);
    v9 = v7;
    if (v7)
    {
      v10 = a1[4];
      v14[0] = v7;
      v11 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v8, v14, 1);
      objc_msgSend__writeItems_toResourceDirectory_(v10, v12, v11, *(*(a1[6] + 8) + 40));
    }

    (*(a1[5] + 16))();
  }

  else
  {
    v13 = *(a1[5] + 16);

    v13();
  }
}

void sub_23BF18E04(uint64_t a1)
{
  v2 = NTKPhotosCreateResourceDirectory();
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_23BF18F24;
  aBlock[3] = &unk_278BA6BB8;
  v3 = v2;
  v4 = *(a1 + 32);
  v12 = v3;
  v13 = v4;
  v14 = *(a1 + 48);
  v6 = _Block_copy(aBlock);
  if (v3)
  {
    v7 = objc_msgSend__writeItems_toResourceDirectory_(*(a1 + 32), v5, *(a1 + 40), v3);
    v8 = objc_opt_new();
    v9 = *(a1 + 32);
    v10 = *(v9 + 48);
    *(v9 + 48) = v8;

    *(*(a1 + 32) + 56) = 0;
  }

  else
  {
    v7 = 0;
  }

  v6[2](v6, v7);
}

void sub_23BF18F24(uint64_t a1, char a2)
{
  v4 = *(a1 + 32);
  v7 = v4;
  if (a2)
  {
    v8 = 1;
  }

  else
  {
    if (v4)
    {
      v9 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v5, v6);
      objc_msgSend_removeItemAtPath_error_(v9, v10, v7, 0);

      v7 = 0;
    }

    v8 = 0;
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_23BF19028;
  v13[3] = &unk_278BA6B90;
  v16 = v8;
  v11 = *(a1 + 48);
  v13[4] = *(a1 + 40);
  v14 = v7;
  v15 = v11;
  v12 = v7;
  dispatch_async(MEMORY[0x277D85CD0], v13);
}

uint64_t sub_23BF19028(uint64_t a1, const char *a2)
{
  objc_msgSend_setState_(*(a1 + 32), a2, *(a1 + 56));
  objc_msgSend_setResourceDirectory_(*(a1 + 32), v3, *(a1 + 40));
  v4 = *(*(a1 + 48) + 16);

  return v4();
}

uint64_t NTKMaxParmesanPhotos()
{
  if (NTKPeerDeviceHandlesWideLoads())
  {
    return 24;
  }

  else
  {
    return 6;
  }
}

NTKParmesanImageAnalysis *NTKParmesanAnalyzeImage(void *a1, double a2, double a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v209 = *MEMORY[0x277D85DE8];
  v13 = a1;
  v14 = objc_alloc_init(NTKParmesanImageAnalysis);
  if (!v13)
  {
    goto LABEL_18;
  }

  v15 = v13;
  v18 = objc_msgSend_CGImage(v15, v16, v17);
  Width = CGImageGetWidth(v18);
  Height = CGImageGetHeight(v18);
  if (!v18)
  {
    goto LABEL_18;
  }

  if (Width < 2)
  {
    goto LABEL_18;
  }

  if (Height < 2)
  {
    goto LABEL_18;
  }

  v21 = a2;
  if (a2 < 2)
  {
    goto LABEL_18;
  }

  v22 = a3;
  if (a3 < 2)
  {
    goto LABEL_18;
  }

  v211.size.width = a2 + -1.0;
  v211.size.height = a3 + -1.0;
  v211.origin.x = 1.0;
  v211.origin.y = 1.0;
  v214.origin.x = a4;
  v214.origin.y = a5;
  v214.size.width = a6;
  v214.size.height = a7;
  v212 = CGRectIntersection(v211, v214);
  v23 = v212.size.width;
  v24 = v212.size.height;
  v25 = v212.size.width < 2 || v23 > v21;
  _CF = !v25 && v24 >= 2;
  if (!_CF || v24 > v22)
  {
    goto LABEL_18;
  }

  x = v212.origin.x;
  y = v212.origin.y;
  v31 = malloc_type_malloc(4 * v21 * v22, 0x100004052888210uLL);
  if (!v31)
  {
    goto LABEL_18;
  }

  v32 = v31;
  bzero(v31, 4 * v21 * v22);
  v33 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF4B8]);
  v34 = CGBitmapContextCreate(v32, a2, a3, 8uLL, 4 * v21, v33, 1u);
  CGColorSpaceRelease(v33);
  v213.size.width = v21;
  v213.size.height = v22;
  v213.origin.x = 0.0;
  v213.origin.y = 0.0;
  CGContextDrawImage(v34, v213, v18);
  CGContextRelease(v34);
  v207 = 0u;
  v208 = 0u;
  v205 = 0u;
  v206 = 0u;
  v203 = 0u;
  v204 = 0u;
  v201 = 0u;
  v202 = 0u;
  v199 = 0u;
  v200 = 0u;
  v197 = 0u;
  v198 = 0u;
  v195 = 0u;
  v196 = 0u;
  v193 = 0u;
  v194 = 0u;
  v191 = 0u;
  v192 = 0u;
  v189 = 0u;
  v190 = 0u;
  v187 = 0u;
  v188 = 0u;
  v185 = 0u;
  v186 = 0u;
  v183 = 0u;
  v184 = 0u;
  v181 = 0u;
  v182 = 0u;
  v179 = 0u;
  v180 = 0u;
  v157 = x;
  v175 = v23 - 1 + x;
  v177 = 0u;
  v178 = 0u;
  v35 = __CFADD__(v23 - 1, x);
  v36 = y;
  v155 = v24 - 1 + y;
  if (__CFADD__(v24 - 1, y) || v35)
  {
    free(v32);
    v37 = 0;
    v45 = 0.0;
    v46 = 0.0;
    v47 = 0.0;
LABEL_47:
    v86 = v37;
    v87 = 1.0 / v37;
    v88 = v45 * v87;
    v160 = v179;
    v162 = v181;
    v134 = v180;
    v135 = v182;
    v163 = v183;
    v136 = v184;
    v137 = v178;
    v164 = v185;
    v165 = v177;
    v138 = v186;
    v139 = v188;
    v167 = v187;
    v168 = v189;
    v140 = v190;
    v142 = v192;
    v169 = v191;
    v171 = v193;
    v144 = v194;
    v146 = v196;
    v172 = v195;
    v173 = v197;
    v148 = v198;
    v150 = v200;
    v174 = v199;
    v176 = v201;
    v89 = v46 * v87;
    v90 = v47 * v87;
    v152 = v202;
    v154 = v205;
    v131 = v206;
    v156 = v207;
    v158 = v203;
    v132 = v208;
    v133 = v204;
    CLKUIConvertToRGBfFromSRGBf_fast();
    v93 = v89 > sub_23BF1A49C(v91) || v90 > 0.19;
    v94 = 1;
    if (v88 <= 0.4 && (v89 > 0.7 || v90 > 0.19 || v90 <= 0.07))
    {
      v95 = vdupq_n_s32(0x3C23D70Au);
      __asm { FMOV            V1.4S, #1.0 }

      v97 = vandq_s8(_Q1, vcgtq_f32(v137, v95));
      v98 = vbslq_s8(vcgtq_f32(v134, v95), vaddq_f32(v97, _Q1), v97);
      v99 = vbslq_s8(vcgtq_f32(v135, v95), vaddq_f32(v98, _Q1), v98);
      v100 = vbslq_s8(vcgtq_f32(v136, v95), vaddq_f32(v99, _Q1), v99);
      v101 = vbslq_s8(vcgtq_f32(v138, v95), vaddq_f32(v100, _Q1), v100);
      v102 = vbslq_s8(vcgtq_f32(v139, v95), vaddq_f32(v101, _Q1), v101);
      v103 = vbslq_s8(vcgtq_f32(v140, v95), vaddq_f32(v102, _Q1), v102);
      v104 = vbslq_s8(vcgtq_f32(v142, v95), vaddq_f32(v103, _Q1), v103);
      v105 = vbslq_s8(vcgtq_f32(v144, v95), vaddq_f32(v104, _Q1), v104);
      v106 = vbslq_s8(vcgtq_f32(v146, v95), vaddq_f32(v105, _Q1), v105);
      v107 = vbslq_s8(vcgtq_f32(v148, v95), vaddq_f32(v106, _Q1), v106);
      v108 = vbslq_s8(vcgtq_f32(v150, v95), vaddq_f32(v107, _Q1), v107);
      v109 = vbslq_s8(vcgtq_f32(v152, v95), vaddq_f32(v108, _Q1), v108);
      v110 = vbslq_s8(vcgtq_f32(v133, v95), vaddq_f32(v109, _Q1), v109);
      v111 = vbslq_s8(vcgtq_f32(v131, v95), vaddq_f32(v110, _Q1), v110);
      v112 = vandq_s8(_Q1, vcgtq_f32(v165, v95));
      v113 = vbslq_s8(vcgtq_f32(v160, v95), vaddq_f32(v112, _Q1), v112);
      v114 = vbslq_s8(vcgtq_f32(v162, v95), vaddq_f32(v113, _Q1), v113);
      v115 = vbslq_s8(vcgtq_f32(v163, v95), vaddq_f32(v114, _Q1), v114);
      v116 = vbslq_s8(vcgtq_f32(v164, v95), vaddq_f32(v115, _Q1), v115);
      v117 = vbslq_s8(vcgtq_f32(v167, v95), vaddq_f32(v116, _Q1), v116);
      v118 = vbslq_s8(vcgtq_f32(v168, v95), vaddq_f32(v117, _Q1), v117);
      v119 = vbslq_s8(vcgtq_f32(v169, v95), vaddq_f32(v118, _Q1), v118);
      v120 = vbslq_s8(vcgtq_f32(v171, v95), vaddq_f32(v119, _Q1), v119);
      v121 = vbslq_s8(vcgtq_f32(v172, v95), vaddq_f32(v120, _Q1), v120);
      v122 = vbslq_s8(vcgtq_f32(v173, v95), vaddq_f32(v121, _Q1), v121);
      v123 = vbslq_s8(vcgtq_f32(v174, v95), vaddq_f32(v122, _Q1), v122);
      v124 = vbslq_s8(vcgtq_f32(v176, v95), vaddq_f32(v123, _Q1), v123);
      v125 = vbslq_s8(vcgtq_f32(v158, v95), vaddq_f32(v124, _Q1), v124);
      v126 = vbslq_s8(vcgtq_f32(v154, v95), vaddq_f32(v125, _Q1), v125);
      v127 = vaddq_f32(vbslq_s8(vcgtq_f32(v132, v95), vaddq_f32(v111, _Q1), v111), vbslq_s8(vcgtq_f32(v156, v95), vaddq_f32(v126, _Q1), v126));
      v94 = (v89 > 0.7 || v90 > 0.19) & ((vaddv_f32(*&vpaddq_f32(v127, v127)) / v86) > 0.11);
    }

    objc_msgSend_setBright_(v14, v92, (v89 > 0.7) | (v90 > 0.19), *&v131, *&v132, *&v133);
    objc_msgSend_setBrightForVibrant_(v14, v128, (v89 > 0.7) | (v90 > 0.19));
    objc_msgSend_setBrightForGlass_(v14, v129, v93);
    objc_msgSend_setComplexBackground_(v14, v130, v94 & 1);
    goto LABEL_18;
  }

  v141 = v13;
  v143 = v14;
  v37 = 0;
  v38 = v36 * v21;
  v39 = 4 * v21;
  v151 = v39 + 8;
  v149 = 4 * (1 - v21) + 4;
  v147 = 4 - v39;
  v145 = 4 * ~v21 + 4;
  __asm { FMOV            V0.2S, #1.0 }

  v170 = -_D0;
  __asm { FMOV            V0.2S, #-1.0 }

  v166 = -_D0;
  v45 = 0.0;
  v46 = 0.0;
  v47 = 0.0;
  v153 = v21;
  do
  {
    v161 = v36;
    v159 = v38;
    v48 = 4 * v38;
    v49 = v151 + v48;
    v50 = v149 + v48;
    v51 = v147 + v48;
    v52 = v145 + v48;
    v53 = v157;
    do
    {
      v78 = v37;
      v79 = &v32[v48];
      CLKUIConvertToRGBfFromSRGBf_fast();
      v82 = fmaxf(fmaxf(*v80.i32, *&v80.i32[1]), v81);
      v83 = fminf(fminf(*v80.i32, *&v80.i32[1]), v81);
      v84 = v82 + v83;
      v85 = (v82 + v83) * 0.5;
      if (v82 > v83)
      {
        v54 = v82 - v83;
        v55 = 2.0 - v84;
        if (v85 <= 0.5)
        {
          v55 = v84;
        }

        v56 = v54 / v55;
        v57 = ((*v80.i32 - *&v80.i32[1]) / v54) + 4.0;
        if (*&v80.i32[1] == v82)
        {
          v57 = ((v81 - *v80.i32) / v54) + 2.0;
        }

        v58 = (*&v80.i32[1] - v81) / v54;
        v59 = 0.0;
        if (*&v80.i32[1] < v81)
        {
          v59 = 6.0;
        }

        v60 = v58 + v59;
        if (*v80.i32 == v82)
        {
          v61 = v60;
        }

        else
        {
          v61 = v57;
        }

        v62 = ((v61 * 21.333) + 0.5) & 0x7F;
      }

      else
      {
        v62 = 0;
        v56 = 0.0;
      }

      v63 = vmul_f32(vcvt_f32_u32(vand_s8(vshl_u32(vdup_n_s32(*&v32[v52]), 0xFFFFFFF0FFFFFFF8), 0xFF000000FFLL)), 0x3994720A3B37CF28);
      *v80.i32 = -((v63.f32[0] + (*&v32[v52] * 0.00083373)) + v63.f32[1]);
      v64 = vmul_f32(vcvt_f32_u32(vand_s8(vshl_u32(vdup_n_s32(*&v32[v51]), 0xFFFFFFF0FFFFFFF8), 0xFF000000FFLL)), 0x3994720A3B37CF28);
      v65 = vmla_n_f32(vdup_lane_s32(v80, 0), 0xC000000000000000, (v64.f32[0] + (*&v32[v51] * 0.00083373)) + v64.f32[1]);
      v66 = vmul_f32(vcvt_f32_u32(vand_s8(vshl_u32(vdup_n_s32(*&v32[v50]), 0xFFFFFFF0FFFFFFF8), 0xFF000000FFLL)), 0x3994720A3B37CF28);
      v67 = vmla_n_f32(v65, *&v170, (v66.f32[0] + (*&v32[v50] * 0.00083373)) + v66.f32[1]);
      v68 = vmul_f32(vcvt_f32_u32(vand_s8(vshl_u32(vdup_n_s32(*v79), 0xFFFFFFF0FFFFFFF8), 0xFF000000FFLL)), 0x3994720A3B37CF28);
      v69 = vmla_n_f32(v67, 3221225472, (v68.f32[0] + (*v79 * 0.00083373)) + v68.f32[1]);
      v70 = vmul_f32(vcvt_f32_u32(vand_s8(vshl_u32(vdup_n_s32(v79[2]), 0xFFFFFFF0FFFFFFF8), 0xFF000000FFLL)), 0x3994720A3B37CF28);
      v71 = vmul_f32(vcvt_f32_u32(vand_s8(vshl_u32(vdup_n_s32(*&v32[v49 - 8]), 0xFFFFFFF0FFFFFFF8), 0xFF000000FFLL)), 0x3994720A3B37CF28);
      v72 = vmla_n_f32(vmla_n_f32(v69, 0x40000000, (v70.f32[0] + (v79[2] * 0.00083373)) + v70.f32[1]), *&v166, (v71.f32[0] + (*&v32[v49 - 8] * 0.00083373)) + v71.f32[1]);
      v73 = vmul_f32(vcvt_f32_u32(vand_s8(vshl_u32(vdup_n_s32(*&v32[v49 - 4]), 0xFFFFFFF0FFFFFFF8), 0xFF000000FFLL)), 0x3994720A3B37CF28);
      v74 = vmla_n_f32(v72, 0x4000000000000000, (v73.f32[0] + (*&v32[v49 - 4] * 0.00083373)) + v73.f32[1]);
      v75 = vmul_f32(vcvt_f32_u32(vand_s8(vshl_u32(vdup_n_s32(*&v32[v49]), 0xFFFFFFF0FFFFFFF8), 0xFF000000FFLL)), 0x3994720A3B37CF28);
      *v75.i32 = (*v75.i32 + (*&v32[v49] * 0.00083373)) + *&v75.i32[1];
      v76 = vadd_f32(vdup_lane_s32(v75, 0), v74);
      v45 = sqrtf(vaddv_f32(vmul_f32(v76, v76))) + v45;
      v46 = v85 + v46;
      v177.f32[v62] = v177.f32[v62] + v56;
      v77 = v47 + (sqrtf((v84 * 3.3333) + -5.6667) * ((v84 * 3.3333) + -5.6667));
      ++v53;
      v49 += 4;
      v50 += 4;
      v51 += 4;
      if (v85 > 0.85)
      {
        v47 = v77;
      }

      v52 += 4;
      v48 += 4;
      v37 = v78 + 1;
    }

    while (v53 <= v175);
    v36 = v161 + 1;
    v38 = v159 + v153;
  }

  while (v161 + 1 <= v155);
  free(v32);
  v14 = v143;
  v13 = v141;
  if (v78 >= -1)
  {
    goto LABEL_47;
  }

LABEL_18:

  return v14;
}

id NTKParmesanGenerateGradient(double a1, double a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a1 == *MEMORY[0x277CBF3A8] && a2 == *(MEMORY[0x277CBF3A8] + 8))
  {
    a1 = 1.0;
    a2 = 1.0;
  }

  UIGraphicsBeginImageContextWithOptions(*&a1, 0, 0.0);
  CurrentContext = UIGraphicsGetCurrentContext();
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v15[0] = xmmword_23C001038;
  v15[1] = unk_23C001048;
  v15[2] = xmmword_23C001058;
  v15[3] = unk_23C001068;
  *locations = xmmword_23C001020;
  v12 = CGGradientCreateWithColorComponents(DeviceRGB, v15, locations, 2uLL);
  v19.x = a3;
  v19.y = a4;
  v20.x = a5;
  v20.y = a6;
  CGContextDrawLinearGradient(CurrentContext, v12, v19, v20, 3u);
  v13 = UIGraphicsGetImageFromCurrentImageContext();
  CGGradientRelease(v12);
  CGColorSpaceRelease(DeviceRGB);
  UIGraphicsEndImageContext();

  return v13;
}

uint64_t sub_23BF1B2C8(uint64_t a1, void *a2, CGFloat a3, CGFloat a4, uint64_t a5)
{
  objc_msgSend_bounds(a2, a2, a5);
  v11.x = a3;
  v11.y = a4;
  result = CGRectContainsPoint(v12, v11);
  if (result)
  {
    return objc_msgSend_containsPoint_(*(a1 + 32), v9, v10, a3, a4) ^ 1;
  }

  return result;
}

void sub_23BF1C008(uint64_t a1, void *a2)
{
  v2 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_23BF1C094;
  v5[3] = &unk_278BA6C60;
  v6 = v2;
  v3 = v2;
  objc_msgSend_enumerateComplicationSlotsWithBlock_(v3, v4, v5);
}

void sub_23BF1C684(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v6 = objc_msgSend_logObject(NTKParmesanFaceBundle, v4, v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v12 = 138412290;
    v13 = v7;
    _os_log_impl(&dword_23BF0C000, v6, OS_LOG_TYPE_DEFAULT, "transcodeAssetsWithIdentifiers: transcoding to %@ DONE", &v12, 0xCu);
  }

  if (v3)
  {
    objc_msgSend_count(*(a1 + 40), v8, v9);
    objc_msgSend_count(v3, v10, v11);
  }

  (*(*(a1 + 48) + 16))();
}

void sub_23BF1CBB0(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = objc_msgSend_faceView(*(a1 + 32), a2, a3);
  v6 = *MEMORY[0x277D2BF00];
  v26 = objc_msgSend_complicationLayoutforSlot_(v5, v7, *MEMORY[0x277D2BF00]);

  v8 = *(a1 + 32);
  v10 = objc_msgSend__parmesanSlotForSlot_(v8, v9, v6);
  objc_msgSend_bounds(*(a1 + 40), v11, v12);
  objc_msgSend_configureComplicationLayout_forParmesanSlot_withBounds_forState_(v8, v13, v26, v10, a2);
  v16 = objc_msgSend_faceView(*(a1 + 32), v14, v15);
  v17 = *MEMORY[0x277D2BED0];
  v19 = objc_msgSend_complicationLayoutforSlot_(v16, v18, *MEMORY[0x277D2BED0]);

  v20 = *(a1 + 32);
  v22 = objc_msgSend__parmesanSlotForSlot_(v20, v21, v17);
  objc_msgSend_bounds(*(a1 + 40), v23, v24);
  objc_msgSend_configureComplicationLayout_forParmesanSlot_withBounds_forState_(v20, v25, v19, v22, a2);
}

void sub_23BF1D5AC(void *a1@<X1>, _OWORD *a2@<X8>)
{
  v8 = a1;
  os_unfair_lock_lock(&unk_27E1E30D0);
  if (qword_27E1E30D8)
  {
    v5 = qword_27E1E30D8 == v8;
  }

  else
  {
    v5 = 0;
  }

  if (!v5 || objc_msgSend_version(v8, v3, v4) != qword_27E1E30E0)
  {
    qword_27E1E30D8 = v8;
    qword_27E1E30E0 = objc_msgSend_version(v8, v3, v4);
    sub_23BF1D694(v8, v9);
    xmmword_27E1E30A0 = v9[2];
    unk_27E1E30B0 = v9[3];
    xmmword_27E1E30C0 = v9[4];
    xmmword_27E1E3080 = v9[0];
    *algn_27E1E3090 = v9[1];
  }

  v6 = unk_27E1E30B0;
  a2[2] = xmmword_27E1E30A0;
  a2[3] = v6;
  a2[4] = xmmword_27E1E30C0;
  v7 = *algn_27E1E3090;
  *a2 = xmmword_27E1E3080;
  a2[1] = v7;
  os_unfair_lock_unlock(&unk_27E1E30D0);
}

void sub_23BF1D694(const char *a1@<X1>, uint64_t a2@<X8>)
{
  v107[3] = *MEMORY[0x277D85DE8];
  *(a2 + 40) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 8) = 0u;
  v3 = objc_msgSend_metricsWithDevice_identitySizeClass_(MEMORY[0x277CBBAF8], a1, a1, 2);
  *a2 = 0x3FF8000000000000;
  v106[0] = &unk_284ED42D8;
  v106[1] = &unk_284ED42F0;
  v107[0] = &unk_284ED4728;
  v107[1] = &unk_284ED4738;
  v106[2] = &unk_284ED4308;
  v107[2] = &unk_284ED4748;
  v5 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v4, v107, v106, 3);
  objc_msgSend_scaledValue_withOverrides_(v3, v6, v5, 73.0);
  *(a2 + 56) = v7;

  v104[0] = &unk_284ED4308;
  v104[1] = &unk_284ED4320;
  v105[0] = &unk_284ED4758;
  v105[1] = &unk_284ED4768;
  v104[2] = &unk_284ED4338;
  v104[3] = &unk_284ED4350;
  v105[2] = &unk_284ED4758;
  v105[3] = &unk_284ED4768;
  v104[4] = &unk_284ED4368;
  v104[5] = &unk_284ED4380;
  v105[4] = &unk_284ED4758;
  v105[5] = &unk_284ED4758;
  v104[6] = &unk_284ED4398;
  v105[6] = &unk_284ED4758;
  v9 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v8, v105, v104, 7);
  objc_msgSend_scaledValue_withOverrides_(v3, v10, v9, 10.5);
  *(a2 + 64) = v11;

  v102[0] = &unk_284ED4308;
  v102[1] = &unk_284ED4320;
  v103[0] = &unk_284ED4778;
  v103[1] = &unk_284ED4778;
  v102[2] = &unk_284ED4338;
  v102[3] = &unk_284ED4350;
  v103[2] = &unk_284ED4778;
  v103[3] = &unk_284ED4778;
  v102[4] = &unk_284ED4368;
  v102[5] = &unk_284ED4380;
  v103[4] = &unk_284ED4778;
  v103[5] = &unk_284ED4778;
  v102[6] = &unk_284ED4398;
  v103[6] = &unk_284ED4778;
  v13 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v12, v103, v102, 7);
  v14 = v3;
  objc_msgSend_scaledValue_withOverrides_(v3, v15, v13, 0.0);
  *(a2 + 72) = v16;

  v100[0] = &unk_284ED4308;
  v95 = xmmword_23C001090;
  v72 = objc_msgSend_valueWithBytes_objCType_(MEMORY[0x277CCAE60], v17, &v95, "{CGSize=dd}");
  v101[0] = v72;
  v100[1] = &unk_284ED4320;
  v94 = xmmword_23C0010A0;
  v70 = objc_msgSend_valueWithBytes_objCType_(MEMORY[0x277CCAE60], v18, &v94, "{CGSize=dd}");
  v101[1] = v70;
  v100[2] = &unk_284ED4338;
  v93 = xmmword_23C0010B0;
  v20 = objc_msgSend_valueWithBytes_objCType_(MEMORY[0x277CCAE60], v19, &v93, "{CGSize=dd}");
  v101[2] = v20;
  v100[3] = &unk_284ED4350;
  v92 = xmmword_23C0010C0;
  v22 = objc_msgSend_valueWithBytes_objCType_(MEMORY[0x277CCAE60], v21, &v92, "{CGSize=dd}");
  v101[3] = v22;
  v100[4] = &unk_284ED4368;
  v91 = xmmword_23C0010D0;
  v24 = objc_msgSend_valueWithBytes_objCType_(MEMORY[0x277CCAE60], v23, &v91, "{CGSize=dd}");
  v101[4] = v24;
  v100[5] = &unk_284ED4380;
  v90 = xmmword_23C0010D0;
  v26 = objc_msgSend_valueWithBytes_objCType_(MEMORY[0x277CCAE60], v25, &v90, "{CGSize=dd}");
  v101[5] = v26;
  v100[6] = &unk_284ED4398;
  v89 = xmmword_23C0010D0;
  v28 = objc_msgSend_valueWithBytes_objCType_(MEMORY[0x277CCAE60], v27, &v89, "{CGSize=dd}");
  v101[6] = v28;
  v30 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v29, v101, v100, 7);
  v74 = v14;
  objc_msgSend_scaledSize_withOverrides_(v14, v31, v30, 13.5, 19.5);
  *(a2 + 8) = v32;
  *(a2 + 16) = v33;

  v98[0] = &unk_284ED4308;
  v88 = xmmword_23C001090;
  v73 = objc_msgSend_valueWithBytes_objCType_(MEMORY[0x277CCAE60], v34, &v88, "{CGSize=dd}");
  v99[0] = v73;
  v98[1] = &unk_284ED4320;
  v87 = xmmword_23C0010A0;
  v71 = objc_msgSend_valueWithBytes_objCType_(MEMORY[0x277CCAE60], v35, &v87, "{CGSize=dd}");
  v99[1] = v71;
  v98[2] = &unk_284ED4338;
  v86 = xmmword_23C0010B0;
  v37 = objc_msgSend_valueWithBytes_objCType_(MEMORY[0x277CCAE60], v36, &v86, "{CGSize=dd}");
  v99[2] = v37;
  v98[3] = &unk_284ED4350;
  v85 = xmmword_23C0010C0;
  v39 = objc_msgSend_valueWithBytes_objCType_(MEMORY[0x277CCAE60], v38, &v85, "{CGSize=dd}");
  v99[3] = v39;
  v98[4] = &unk_284ED4368;
  v84 = xmmword_23C0010D0;
  v41 = objc_msgSend_valueWithBytes_objCType_(MEMORY[0x277CCAE60], v40, &v84, "{CGSize=dd}");
  v99[4] = v41;
  v98[5] = &unk_284ED4380;
  v83 = xmmword_23C0010D0;
  v43 = objc_msgSend_valueWithBytes_objCType_(MEMORY[0x277CCAE60], v42, &v83, "{CGSize=dd}");
  v99[5] = v43;
  v98[6] = &unk_284ED4398;
  v82 = xmmword_23C0010D0;
  v45 = objc_msgSend_valueWithBytes_objCType_(MEMORY[0x277CCAE60], v44, &v82, "{CGSize=dd}");
  v99[6] = v45;
  v47 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v46, v99, v98, 7);
  objc_msgSend_scaledSize_withOverrides_(v14, v48, v47, 7.0, 14.5);
  *(a2 + 24) = v49;
  *(a2 + 32) = v50;

  v96[0] = &unk_284ED4308;
  v81 = xmmword_23C001090;
  v52 = objc_msgSend_valueWithBytes_objCType_(MEMORY[0x277CCAE60], v51, &v81, "{CGSize=dd}");
  v97[0] = v52;
  v96[1] = &unk_284ED4320;
  v80 = xmmword_23C0010A0;
  v54 = objc_msgSend_valueWithBytes_objCType_(MEMORY[0x277CCAE60], v53, &v80, "{CGSize=dd}");
  v97[1] = v54;
  v96[2] = &unk_284ED4338;
  v79 = xmmword_23C0010B0;
  v56 = objc_msgSend_valueWithBytes_objCType_(MEMORY[0x277CCAE60], v55, &v79, "{CGSize=dd}");
  v97[2] = v56;
  v96[3] = &unk_284ED4350;
  v78 = xmmword_23C0010C0;
  v58 = objc_msgSend_valueWithBytes_objCType_(MEMORY[0x277CCAE60], v57, &v78, "{CGSize=dd}");
  v97[3] = v58;
  v96[4] = &unk_284ED4368;
  v77 = xmmword_23C0010D0;
  v60 = objc_msgSend_valueWithBytes_objCType_(MEMORY[0x277CCAE60], v59, &v77, "{CGSize=dd}");
  v97[4] = v60;
  v96[5] = &unk_284ED4380;
  v76 = xmmword_23C0010D0;
  v62 = objc_msgSend_valueWithBytes_objCType_(MEMORY[0x277CCAE60], v61, &v76, "{CGSize=dd}");
  v97[5] = v62;
  v96[6] = &unk_284ED4398;
  v75 = xmmword_23C0010D0;
  v64 = objc_msgSend_valueWithBytes_objCType_(MEMORY[0x277CCAE60], v63, &v75, "{CGSize=dd}");
  v97[6] = v64;
  v66 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v65, v97, v96, 7);
  objc_msgSend_scaledSize_withOverrides_(v74, v67, v66, 7.0, 14.5);
  *(a2 + 40) = v68;
  *(a2 + 48) = v69;
}

BOOL sub_23BF1E980(uint64_t a1, void *a2)
{
  v2 = a2;
  v5 = objc_msgSend_curationPlacements(v2, v3, v4);
  v7 = objc_msgSend_predicateWithBlock_(MEMORY[0x277CCAC30], v6, &unk_284EBA5A8);
  v9 = objc_msgSend_filteredArrayUsingPredicate_(v5, v8, v7);

  objc_msgSend_setCurationPlacements_(v2, v10, v9);
  objc_msgSend_setHasFilteredPlacements_(v2, v11, 1);

  v14 = objc_msgSend_count(v9, v12, v13) != 0;
  return v14;
}

BOOL sub_23BF1EA24(uint64_t a1, void *a2, uint64_t a3)
{
  if (!a2)
  {
    return 1;
  }

  objc_msgSend_placement(a2, a2, a3);
  return v4 != 4000;
}

void sub_23BF1EE50(uint64_t a1, void *a2, unint64_t a3)
{
  v111[3] = *MEMORY[0x277D85DE8];
  v7 = a2;
  if ((*(a1 + 88) & 1) == 0)
  {
    if (objc_msgSend_count(*(a1 + 32), v5, v6) > a3)
    {
      v10 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), v8, a3);
      v13 = objc_msgSend_unsignedIntValue(v10, v11, v12);
      v15 = objc_msgSend_optionWithTime_device_(NTKParmesanTimeEditOption, v14, v13, *(a1 + 40));

      objc_msgSend_selectOption_forCustomEditMode_slot_(v7, v16, v15, 14, 0);
    }

    if (objc_msgSend_count(*(a1 + 48), v8, v9) > a3)
    {
      v19 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 48), v17, a3);
      v22 = objc_msgSend_unsignedIntValue(v19, v20, v21);
      v24 = objc_msgSend_optionWithTypeface_device_(NTKParmesanTypefaceEditOption, v23, v22, *(a1 + 40));

      objc_msgSend_selectOption_forCustomEditMode_slot_(v7, v25, v24, 13, 0);
    }

    if (objc_msgSend_count(*(a1 + 56), v17, v18) > a3)
    {
      v28 = MEMORY[0x277D2C090];
      v29 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 56), v26, a3);
      v32 = objc_msgSend_unsignedIntValue(v29, v30, v31);
      v34 = objc_msgSend_optionWithNumeral_forDevice_(v28, v33, v32, *(a1 + 40));

      objc_msgSend_selectOption_forCustomEditMode_slot_(v7, v35, v34, 19, 0);
    }

    if (objc_msgSend_count(*(a1 + 64), v26, v27) > a3)
    {
      v38 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 64), v36, a3);
      v41 = objc_msgSend_unsignedIntValue(v38, v39, v40);
      v43 = objc_msgSend_optionWithStyle_device_(NTKParmesanStyleEditOption, v42, v41, *(a1 + 40));

      objc_msgSend_selectOption_forCustomEditMode_slot_(v7, v44, v43, 15, 0);
    }

    if (objc_msgSend_count(*(a1 + 72), v36, v37) > a3)
    {
      v46 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 72), v45, a3);
      v93 = MEMORY[0x277D85DD0];
      v94 = 3221225472;
      v95 = sub_23BF1F650;
      v96 = &unk_278BA6D48;
      v97 = v7;
      objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v46, v47, &v93);
    }

    objc_msgSend__setFaceGalleryComplicationTypesForSlots_(v7, v45, MEMORY[0x277CBEC10], v93, v94, v95, v96);
    objc_msgSend_setHasFilteredPlacements_(v7, v48, 1);
  }

  if (a3 > 3)
  {
    if (a3 > 5)
    {
      if (a3 == 6 || a3 == 8)
      {
        v77 = *MEMORY[0x277D2BED0];
        v98[0] = *MEMORY[0x277D2BF00];
        v98[1] = v77;
        v99[0] = &unk_284ED4110;
        v99[1] = &unk_284ED4128;
        v52 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v5, v99, v98, 2);
        objc_msgSend__setFaceGalleryComplicationTypesForSlots_(v7, v78, v52);
LABEL_50:

        goto LABEL_51;
      }

      goto LABEL_51;
    }

    if (a3 == 4)
    {
      v52 = objc_msgSend_placementWithWatchOS12Group_zOrder_(MEMORY[0x277D2C020], v5, 16, 4000);
      v103[0] = v52;
      v54 = objc_msgSend_placementWithWatchOS12Group_zOrder_(MEMORY[0x277D2C020], v84, 10, 4000);
      v103[1] = v54;
      v56 = objc_msgSend_placementWithWatchOS12Group_zOrder_(MEMORY[0x277D2C020], v85, 1, 4000);
      v103[2] = v56;
      v64 = objc_msgSend_placementWithWatchOS12Group_zOrder_(MEMORY[0x277D2C020], v86, 2, 4000);
      v103[3] = v64;
      objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v87, v103, 4);
    }

    else
    {
      if (objc_msgSend_isRunningNapiliGMOrLater(*(a1 + 40), v5, v6))
      {
        v101 = *MEMORY[0x277D2BF00];
        v102 = &unk_284ED40F8;
        v59 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v58, &v102, &v101, 1);
        objc_msgSend__setFaceGalleryComplicationTypesForSlots_(v7, v60, v59);
      }

      v52 = objc_msgSend_placementWithWatchOS12Group_zOrder_(MEMORY[0x277D2C020], v58, 10, 4000);
      v100[0] = v52;
      v54 = objc_msgSend_placementWithWatchOS12Group_zOrder_(MEMORY[0x277D2C020], v61, 16, 4000);
      v100[1] = v54;
      v56 = objc_msgSend_placementWithWatchOS12Group_zOrder_(MEMORY[0x277D2C020], v62, 1, 4000);
      v100[2] = v56;
      v64 = objc_msgSend_placementWithWatchOS12Group_zOrder_(MEMORY[0x277D2C020], v63, 2, 4000);
      v100[3] = v64;
      objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v65, v100, 4);
    }
    v73 = ;
    objc_msgSend_setCurationPlacements_(v7, v88, v73);
LABEL_46:

LABEL_49:
    goto LABEL_50;
  }

  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v52 = objc_msgSend_placementWithWatchOS12Group_zOrder_(MEMORY[0x277D2C020], v5, 10, 4000);
      v107[0] = v52;
      v54 = objc_msgSend_placementWithWatchOS12Group_zOrder_(MEMORY[0x277D2C020], v89, 1, 4000);
      v107[1] = v54;
      v56 = objc_msgSend_placementWithWatchOS12Group_zOrder_(MEMORY[0x277D2C020], v90, 2, 4000);
      v107[2] = v56;
      objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v91, v107, 3);
      v64 = LABEL_48:;
      objc_msgSend_setCurationPlacements_(v7, v92, v64);
      goto LABEL_49;
    }

    if ((objc_msgSend_isRunningNapiliGMOrLater(*(a1 + 40), v5, v6) & 1) == 0)
    {
      v105 = *MEMORY[0x277D2BF00];
      v106 = &unk_284ED40E0;
      v67 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v66, &v106, &v105, 1);
      objc_msgSend__setFaceGalleryComplicationTypesForSlots_(v7, v68, v67);
    }

    v52 = objc_msgSend_placementWithWatchOS12Group_zOrder_(MEMORY[0x277D2C020], v66, 13, 4000);
    v104[0] = v52;
    if (*(a1 + 88))
    {
      objc_msgSend_placementWithWatchOS12Group_zOrder_(MEMORY[0x277D2C020], v69, 10, 7000);
    }

    else
    {
      objc_msgSend_placementWithWatchOS12Group_zOrder_(MEMORY[0x277D2C020], v69, 10, 4000);
    }
    v54 = ;
    v104[1] = v54;
    v56 = objc_msgSend_placementWithWatchOS12Group_zOrder_(MEMORY[0x277D2C020], v70, 16, 4000);
    v104[2] = v56;
    v64 = objc_msgSend_placementWithWatchOS12Group_zOrder_(MEMORY[0x277D2C020], v71, 1, 4000);
    v104[3] = v64;
    v73 = objc_msgSend_placementWithWatchOS12Group_zOrder_(MEMORY[0x277D2C020], v72, 2, 4000);
    v104[4] = v73;
    v75 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v74, v104, 5);
    objc_msgSend_setCurationPlacements_(v7, v76, v75);

    goto LABEL_46;
  }

  if (!a3)
  {
    v79 = 4000;
    if (*(a1 + 88))
    {
      objc_msgSend_placementWithWatchOS12Group_zOrder_(MEMORY[0x277D2C020], v5, 10, 8000);
    }

    else
    {
      objc_msgSend_placementWithWatchOS12Group_zOrder_(MEMORY[0x277D2C020], v5, 10, 4000);
    }
    v52 = ;
    v111[0] = v52;
    v81 = MEMORY[0x277D2C020];
    if (*(a1 + 88) == 1)
    {
      v79 = objc_msgSend__newFacesGroupZOrderForDevice_(*(a1 + 80), v80, *(a1 + 40));
    }

    v54 = objc_msgSend_placementWithWatchOS12Group_zOrder_(v81, v80, 1, v79);
    v111[1] = v54;
    v56 = objc_msgSend_placementWithWatchOS12Group_zOrder_(MEMORY[0x277D2C020], v82, 2, 4000);
    v111[2] = v56;
    objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v83, v111, 3);
    goto LABEL_48;
  }

  if (a3 == 1)
  {
    if ((objc_msgSend_isRunningNapiliGMOrLater(*(a1 + 40), v5, v6) & 1) == 0)
    {
      v109 = *MEMORY[0x277D2BED0];
      v110 = &unk_284ED40C8;
      v50 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v49, &v110, &v109, 1);
      objc_msgSend__setFaceGalleryComplicationTypesForSlots_(v7, v51, v50);
    }

    if (*(a1 + 88))
    {
      objc_msgSend_placementWithWatchOS12Group_zOrder_(MEMORY[0x277D2C020], v49, 10, 9000);
    }

    else
    {
      objc_msgSend_placementWithWatchOS12Group_zOrder_(MEMORY[0x277D2C020], v49, 10, 4000);
    }
    v52 = ;
    v108[0] = v52;
    v54 = objc_msgSend_placementWithWatchOS12Group_zOrder_(MEMORY[0x277D2C020], v53, 1, 4000);
    v108[1] = v54;
    v56 = objc_msgSend_placementWithWatchOS12Group_zOrder_(MEMORY[0x277D2C020], v55, 2, 4000);
    v108[2] = v56;
    objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v57, v108, 3);
    goto LABEL_48;
  }

LABEL_51:
}

void sub_23BF1F650(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x277D2C0B0];
  v6 = a2;
  v9 = objc_msgSend_pigmentNamed_(v5, v7, a3);
  objc_msgSend_selectOption_forCustomEditMode_slot_(*(a1 + 32), v8, v9, 10, v6);
}

void sub_23BF1FD54(uint64_t a1, void *a2)
{
  v2 = *MEMORY[0x277D2BF00];
  v5 = a2;
  objc_msgSend_setComplication_forSlot_(v5, v3, 0, v2);
  objc_msgSend_setComplication_forSlot_(v5, v4, 0, *MEMORY[0x277D2BED0]);
}

void sub_23BF202E0(uint64_t a1, void *a2)
{
  v3 = *MEMORY[0x277D2BF00];
  v4 = a2;
  objc_msgSend_setComplication_forSlot_(v4, v5, 0, v3);
  objc_msgSend_setComplication_forSlot_(v4, v6, 0, *MEMORY[0x277D2BED0]);
  v7 = *(a1 + 32);
  v10 = objc_msgSend_placeholderCustomDataKey(NTKParmesanGalleryPlaceholderDataSource, v8, v9);
  objc_msgSend_setCustomData_forKey_(v4, v11, v7, v10);

  v15 = objc_msgSend_optionWithContent_device_(NTKParmesanContentEditOption, v12, 2, *(a1 + 40));
  objc_msgSend_selectOption_forCustomEditMode_slot_(v4, v13, v15, 12, 0);
  objc_msgSend_applyToFace_forDevice_(*(a1 + 48), v14, v4, *(a1 + 40));
}

id sub_23BF20668(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_modificationDate(a1, a2, a3);
  if (!v4)
  {
    v4 = objc_msgSend_creationDate(a1, v5, v6);
    if (!v4)
    {
      v4 = objc_msgSend_distantPast(MEMORY[0x277CBEAA8], v7, v8);
    }
  }

  return v4;
}

id sub_23BF206C4(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CD98A0]);
  objc_msgSend_setVersion_(v2, v3, 0);
  objc_msgSend_setDeliveryMode_(v2, v4, 1);
  objc_msgSend_setNetworkAccessAllowed_(v2, v5, 1);
  objc_msgSend_setSynchronous_(v2, v6, 1);
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_23BF20830;
  v18 = sub_23BF20840;
  v19 = 0;
  v9 = objc_msgSend_defaultManager(MEMORY[0x277CD9898], v7, v8);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_23BF20848;
  v13[3] = &unk_278BA6DE8;
  v13[4] = a1;
  v13[5] = &v14;
  objc_msgSend_requestImageDataAndOrientationForAsset_options_resultHandler_(v9, v10, a1, v2, v13);

  v11 = v15[5];
  _Block_object_dispose(&v14, 8);

  return v11;
}

void sub_23BF20818(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_23BF20830(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23BF20848(uint64_t a1, void *a2, uint64_t a3, const char *a4, void *a5)
{
  v8 = a2;
  v10 = objc_msgSend_objectForKeyedSubscript_(a5, v9, *MEMORY[0x277CD9BF8]);
  v13 = objc_msgSend_logObject(NTKParmesanFaceBundle, v11, v12);
  v14 = v13;
  if (v10)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_23BFF71E4();
    }
  }

  else
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      sub_23BFF7270(a1, v8, v14);
    }

    v17 = objc_msgSend_logObject(NTKParmesanFaceBundle, v15, v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      sub_23BFF7364(a1, a4, v17);
    }

    v18 = *(*(a1 + 40) + 8);
    v19 = v8;
    v14 = *(v18 + 40);
    *(v18 + 40) = v19;
  }
}

uint64_t sub_23BF20A44(void *a1)
{
  if (!a1)
  {
    return 1;
  }

  v1 = a1;
  v4 = objc_msgSend_pixelWidth(v1, v2, v3);
  v7 = objc_msgSend_pixelHeight(v1, v5, v6);

  if ((v7 * v4) <= 0xE4E1C0)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

void sub_23BF20EEC(uint64_t a1, void *a2)
{
  objc_storeStrong((*(a1 + 32) + 48), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 40));
}

intptr_t sub_23BF20F48(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = objc_msgSend_firstObject(a2, a2, a3);
  v5 = *(a1 + 32);
  v6 = *(v5 + 56);
  *(v5 + 56) = v4;

  v7 = *(a1 + 40);

  return dispatch_semaphore_signal(v7);
}

void sub_23BF21DFC(void *a1, char a2, void *a3)
{
  v5 = a3;
  v8 = v5;
  if (a2)
  {
    v9 = a1[6];
  }

  else
  {
    if (v5)
    {
      v10 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v6, v7);
      objc_msgSend_removeItemAtPath_error_(v10, v11, v8, 0);

      v8 = 0;
    }

    v9 = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23BF21F00;
  block[3] = &unk_278BA6E60;
  v18 = a2;
  v17 = v9;
  v12 = a1[5];
  block[4] = a1[4];
  v15 = v8;
  v16 = v12;
  v13 = v8;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void sub_23BF21F00(uint64_t a1, const char *a2)
{
  *(*(a1 + 32) + 80) = *(a1 + 64);
  objc_msgSend_setState_(*(a1 + 32), a2, *(a1 + 56));
  objc_msgSend_setGalleryPreviewResourceDirectory_(*(a1 + 32), v3, *(a1 + 40));
  v4 = *(a1 + 48);
  v7 = objc_msgSend_galleryPreviewResourceDirectory(*(a1 + 32), v5, v6);
  (*(v4 + 16))(v4, v7);
}

void sub_23BF21F8C(uint64_t a1)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v4 = NTKPhotosCreateResourceDirectory();
  if (v4 && (objc_msgSend_orderList(*(a1 + 32), v2, v3), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend_firstObject(v5, v6, v7), v8 = objc_claimAutoreleasedReturnValue(), v8, v5, v8))
  {
    v11 = *(a1 + 32);
    v12 = objc_msgSend_orderList(v11, v9, v10);
    v15 = objc_msgSend_firstObject(v12, v13, v14);
    v22[0] = v15;
    v17 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v16, v22, 1);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = sub_23BF22120;
    v19[3] = &unk_278BA6ED0;
    v21 = *(a1 + 40);
    v20 = v4;
    objc_msgSend__copyOrTranscodeAssetWithIds_to_shouldPurgeOriginalData_progress_completion_(v11, v18, v17, v20, 0, &unk_284EBA5E8, v19);
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_23BF22120(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    NTKPhotosWriteImageListWithVersion();
  }

  (*(*(a1 + 40) + 16))();
}

void sub_23BF22460(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = objc_msgSend_resourceDirectory(*(a1 + 32), a2, a3);
  (*(v3 + 16))(v3, v4);
}

void sub_23BF224BC(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v8 = v5;
  if (a2)
  {
    v9 = 1;
  }

  else
  {
    if (v5)
    {
      v10 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v6, v7);
      objc_msgSend_removeItemAtPath_error_(v10, v11, v8, 0);

      v8 = 0;
    }

    v9 = 0;
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_23BF225BC;
  v14[3] = &unk_278BA6B90;
  v17 = v9;
  v12 = *(a1 + 40);
  v14[4] = *(a1 + 32);
  v15 = v8;
  v16 = v12;
  v13 = v8;
  dispatch_async(MEMORY[0x277D85CD0], v14);
}

uint64_t sub_23BF225BC(uint64_t a1, const char *a2)
{
  objc_msgSend_setState_(*(a1 + 32), a2, *(a1 + 56));
  objc_msgSend_setResourceDirectory_(*(a1 + 32), v3, *(a1 + 40));
  v4 = *(*(a1 + 48) + 16);

  return v4();
}

void sub_23BF2260C(uint64_t a1)
{
  v4 = NTKPhotosCreateResourceDirectory();
  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = objc_msgSend_orderList(v5, v2, v3);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_23BF22764;
    v14[3] = &unk_278BA6F70;
    v15 = *(a1 + 48);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = sub_23BF22810;
    v10[3] = &unk_278BA6F98;
    v13 = *(a1 + 40);
    v7 = v4;
    v8 = *(a1 + 32);
    v11 = v7;
    v12 = v8;
    objc_msgSend__copyOrTranscodeAssetWithIds_to_shouldPurgeOriginalData_progress_completion_(v5, v9, v6, v7, 1, v14, v10);
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_23BF22764(uint64_t a1, double a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_23BF227F8;
  v3[3] = &unk_278BA6F48;
  v4 = *(a1 + 32);
  v5 = a2;
  dispatch_async(MEMORY[0x277D85CD0], v3);
}

void sub_23BF22810(uint64_t a1, void *a2)
{
  v5 = a2;
  if (v5 && (NTKPhotosWriteImageListWithVersion() & 1) != 0)
  {
    objc_msgSend__reinitializeWithImageList_andResourceDirectory_(*(a1 + 40), v3, v5, *(a1 + 32));
    v4 = *(*(a1 + 48) + 16);
  }

  else
  {
    v4 = *(*(a1 + 48) + 16);
  }

  v4();
}

void sub_23BF239B8(uint64_t a1, void *a2, void *a3, double a4, double a5, double a6, double a7)
{
  v13 = a2;
  v14 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23BF23AB8;
  block[3] = &unk_278BA6FE8;
  v15 = *(a1 + 32);
  v20 = v14;
  v21 = v15;
  v19 = v13;
  v22 = a4;
  v23 = a5;
  v24 = a6;
  v25 = a7;
  v16 = v14;
  v17 = v13;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void sub_23BF23AD8(int a1, id a2)
{
  if (a2)
  {
    v2 = a2;
    v5 = objc_msgSend_CGImage(v2, v3, v4);
    CGImageGetWidth(v5);
    v6 = v2;
    v9 = objc_msgSend_CGImage(v6, v7, v8);

    CGImageGetHeight(v9);
  }
}

void sub_23BF23B5C(uint64_t a1, void *a2)
{
  v11 = a2;
  if (v11)
  {
    v3 = objc_alloc(MEMORY[0x277D755B8]);
    v5 = objc_msgSend_initWithData_(v3, v4, v11);
    v8 = objc_msgSend_timeLayout(*(a1 + 32), v6, v7);
    objc_msgSend_crop(*(a1 + 32), v9, v10);
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    (*(*(a1 + 40) + 16))(*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24));
  }
}

void sub_23BF23C28(uint64_t a1, void *a2)
{
  v13 = a2;
  if (v13)
  {
    v5 = *(*(a1 + 32) + 56);
    v6 = objc_msgSend_asset(*(a1 + 40), v3, v4);
    v9 = objc_msgSend_localIdentifier(v6, v7, v8);
    objc_msgSend_setObject_forKey_(v5, v10, v13, v9);
  }

  v12 = *(a1 + 48);
  v11 = *(a1 + 56);
  (*(*(a1 + 64) + 16))();
  (*(v11 + 16))(v11, v13, v12);
}

void sub_23BF23E48(uint64_t a1, const char *a2, uint64_t a3)
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_logObject(NTKParmesanFaceBundle, a2, a3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 48);
    *buf = 134217984;
    v37 = v5;
    _os_log_impl(&dword_23BF0C000, v4, OS_LOG_TYPE_DEFAULT, "previewOfLibraryPhotoAtIndex:%ld", buf, 0xCu);
  }

  v8 = *(a1 + 48);
  if ((v8 & 0x8000000000000000) != 0 || v8 >= objc_msgSend_count(*(*(a1 + 32) + 88), v6, v7))
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_23BF24144;
    block[3] = &unk_278BA6B68;
    v35 = *(a1 + 40);
    dispatch_async(MEMORY[0x277D85CD0], block);
    v11 = v35;
  }

  else if (objc_msgSend__ensureUserOverrideSessionIsLoadedForPhotoAtIndex_(*(a1 + 32), v9, *(a1 + 48)))
  {
    v11 = objc_msgSend_objectAtIndexedSubscript_(*(*(a1 + 32) + 88), v10, *(a1 + 48));
    v12 = *(a1 + 32);
    v13 = v12[8];
    v16 = objc_msgSend_device(v12, v14, v15);
    v18 = objc_msgSend_objectForKeyedSubscript_(*(*(a1 + 32) + 48), v17, v11);
    v21 = objc_msgSend_subsampleFactor(v18, v19, v20);
    v23 = objc_msgSend_previewModelForDevice_subsampleFactor_(v13, v22, v16, v21);

    v26 = objc_msgSend_logObject(NTKParmesanFaceBundle, v24, v25);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      sub_23BFF7838((a1 + 48), v23, v26);
    }

    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = sub_23BF24174;
    v29[3] = &unk_278BA6EF8;
    v27 = *(a1 + 40);
    v30 = v23;
    v31 = v27;
    v28 = v23;
    dispatch_async(MEMORY[0x277D85CD0], v29);
  }

  else
  {
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = sub_23BF2415C;
    v32[3] = &unk_278BA6B68;
    v33 = *(a1 + 40);
    dispatch_async(MEMORY[0x277D85CD0], v32);
    v11 = v33;
  }
}

void sub_23BF2424C(uint64_t a1)
{
  v101 = *MEMORY[0x277D85DE8];
  v2 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    *buf = 134217984;
    v100 = v3;
    _os_log_impl(&dword_23BF0C000, v2, OS_LOG_TYPE_DEFAULT, "resetCropOfPhotoAtIndex:%ld", buf, 0xCu);
  }

  v6 = *(a1 + 48);
  if ((v6 & 0x8000000000000000) != 0 || v6 >= objc_msgSend_count(*(*(a1 + 32) + 88), v4, v5))
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_23BF24738;
    block[3] = &unk_278BA6B68;
    v97 = *(a1 + 40);
    dispatch_async(MEMORY[0x277D85CD0], block);
    v9 = v97;
  }

  else if (objc_msgSend__ensureUserOverrideSessionIsLoadedForPhotoAtIndex_(*(a1 + 32), v7, *(a1 + 48)))
  {
    v9 = objc_msgSend_objectAtIndexedSubscript_(*(*(a1 + 32) + 88), v8, *(a1 + 48));
    v11 = objc_msgSend_objectForKeyedSubscript_(*(*(a1 + 32) + 48), v10, v9);
    v14 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v12, v13);
    objc_msgSend_setUserOverrides_(v11, v15, v14);

    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v18 = objc_msgSend_asset(v11, v16, v17);
    v21 = objc_msgSend_layouts(v18, v19, v20);

    v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v90, v98, 16);
    if (v23)
    {
      v26 = v23;
      v27 = *v91;
      while (2)
      {
        v28 = 0;
        do
        {
          if (*v91 != v27)
          {
            objc_enumerationMutation(v21);
          }

          v29 = *(*(&v90 + 1) + 8 * v28);
          v30 = objc_msgSend_asset(v11, v24, v25);
          v33 = objc_msgSend_layouts(v30, v31, v32);
          v35 = objc_msgSend_objectForKeyedSubscript_(v33, v34, v29);

          LOBYTE(v30) = objc_msgSend_userEdited(v35, v36, v37);
          if (v30)
          {

            objc_msgSend_setAsset_(v11, v39, 0);
            goto LABEL_19;
          }

          ++v28;
        }

        while (v26 != v28);
        v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v24, &v90, v98, 16);
        if (v26)
        {
          continue;
        }

        break;
      }
    }

LABEL_19:
    objc_msgSend_setCanRevert_(*(*(a1 + 32) + 64), v38, 0);
    v40 = objc_alloc_init(NTKParmesanLayoutUserOverride);
    v43 = objc_msgSend_originalAsset(v11, v41, v42);
    v46 = objc_msgSend_preferredLayout(v43, v44, v45);
    v49 = objc_msgSend_originalCrop(v46, v47, v48);
    objc_msgSend_cgRect(v49, v50, v51);
    objc_msgSend_setCrop_(v40, v52, v53);

    v56 = objc_msgSend_originalAsset(v11, v54, v55);
    v59 = objc_msgSend_preferredLayout(v56, v57, v58);
    v62 = objc_msgSend_timeLayout(v59, v60, v61);
    objc_msgSend_setTimeLayout_(v40, v63, v62);

    v66 = objc_msgSend_originalAsset(v11, v64, v65);
    v69 = objc_msgSend_preferredLayout(v66, v67, v68);
    v72 = objc_msgSend_mask(v69, v70, v71);
    objc_msgSend_setUseDepthEffect_(v40, v73, v72 != 0);

    objc_msgSend_setCurrentOverride_(*(*(a1 + 32) + 64), v74, v40);
    v75 = *(a1 + 32);
    v76 = v75[8];
    v79 = objc_msgSend_device(v75, v77, v78);
    v82 = objc_msgSend_subsampleFactor(v11, v80, v81);
    v84 = objc_msgSend_previewModelForDevice_subsampleFactor_(v76, v83, v79, v82);

    v87[0] = MEMORY[0x277D85DD0];
    v87[1] = 3221225472;
    v87[2] = sub_23BF24768;
    v87[3] = &unk_278BA6EF8;
    v85 = *(a1 + 40);
    v88 = v84;
    v89 = v85;
    v86 = v84;
    dispatch_async(MEMORY[0x277D85CD0], v87);
  }

  else
  {
    v94[0] = MEMORY[0x277D85DD0];
    v94[1] = 3221225472;
    v94[2] = sub_23BF24750;
    v94[3] = &unk_278BA6B68;
    v95 = *(a1 + 40);
    dispatch_async(MEMORY[0x277D85CD0], v94);
    v9 = v95;
  }
}

void sub_23BF254C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23BF254E4(uint64_t a1, void *a2, uint64_t a3)
{
  v163 = *MEMORY[0x277D85DE8];
  v146 = a2;
  v5 = objc_msgSend_objectForKeyedSubscript_(*(*(a1 + 32) + 48), v4, v146);
  objc_msgSend__generateOverrideLayersForEditedAsset_dstDir_(*(a1 + 32), v6, v5, *(a1 + 40));
  v9 = objc_msgSend_count(*(a1 + 48), v7, v8);
  (*(*(a1 + 56) + 16))((a3 + 1) / v9);
  v12 = objc_msgSend_asset(v5, v10, v11);

  if (v12 || (objc_msgSend_addOriginalAssetAndMaskData(v5, v13, v14) & 1) != 0)
  {
    v148 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v13, v14);
    v154 = 0u;
    v155 = 0u;
    v152 = 0u;
    v153 = 0u;
    obj = objc_msgSend_allTimeScales(NTKParmesanTimeLayout, v15, v16);
    v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v17, &v152, v162, 16);
    if (v20)
    {
      v147 = 0;
      v150 = *v153;
LABEL_5:
      v21 = 0;
      while (1)
      {
        if (*v153 != v150)
        {
          objc_enumerationMutation(obj);
        }

        v22 = objc_msgSend_intValue(*(*(&v152 + 1) + 8 * v21), v18, v19);
        v25 = objc_msgSend_userOverrides(v5, v23, v24);
        v26 = v22;
        v28 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v27, v22);
        v30 = objc_msgSend_objectForKeyedSubscript_(v25, v29, v28);

        if (v30)
        {
          break;
        }

        v42 = objc_msgSend_asset(v5, v31, v32);
        v43 = v42 == 0;

        if (v43)
        {
          v58 = objc_msgSend_originalAsset(v5, v44, v45);
          v59 = v58 == 0;

          if (v59)
          {
            v33 = objc_msgSend_logObject(NTKParmesanFaceBundle, v60, v61);
            if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
            {
              sub_23BFF7B04(v5, v26, v33);
            }

            goto LABEL_54;
          }

          v62 = objc_msgSend_originalAsset(v5, v60, v61);
          v64 = objc_msgSend_layoutForScale_(v62, v63, v26);
          v33 = objc_msgSend_copy(v64, v65, v66);

          v69 = objc_msgSend_originalAsset(v5, v67, v68);
          v39 = objc_msgSend_resourceDirectory(v69, v70, v71);

          v72 = MEMORY[0x277CCACA8];
          v73 = v39;
          v76 = objc_msgSend_fileSystemRepresentation(v39, v74, v75);
          v78 = objc_msgSend_stringWithFormat_(v72, v77, @"%s", v76);
          v80 = objc_msgSend_linkFromSrcDirectory_toDstDirectory_(v33, v79, v78, *(a1 + 40));
          v83 = objc_msgSend_logObject(NTKParmesanFaceBundle, v81, v82);
          v84 = v83;
          if ((v80 & 1) == 0)
          {
            if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
            {
              v142 = objc_msgSend_asset(v5, v100, v101);
              v145 = objc_msgSend_localIdentifier(v142, v143, v144);
              *buf = 138412802;
              v157 = v145;
              v158 = 2048;
              v159 = v26;
              v160 = 2112;
              v161 = v33;
              _os_log_error_impl(&dword_23BF0C000, v84, OS_LOG_TYPE_ERROR, "Failed to save asset: %@ scale: %ld layout: %@", buf, 0x20u);
            }

            goto LABEL_54;
          }

          if (os_log_type_enabled(v83, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134218242;
            v157 = v26;
            v158 = 2112;
            v159 = v33;
            _os_log_debug_impl(&dword_23BF0C000, v84, OS_LOG_TYPE_DEBUG, "  layout for %ld (new): %@", buf, 0x16u);
          }

          goto LABEL_23;
        }

        v46 = objc_msgSend_asset(v5, v44, v45);
        v48 = objc_msgSend_layoutForScale_(v46, v47, v26);
        v33 = objc_msgSend_copy(v48, v49, v50);

        v53 = objc_msgSend_resourceDirectory(*(a1 + 32), v51, v52);
        LOBYTE(v46) = objc_msgSend_linkFromSrcDirectory_toDstDirectory_(v33, v54, v53, *(a1 + 40));

        v57 = objc_msgSend_logObject(NTKParmesanFaceBundle, v55, v56);
        v39 = v57;
        if ((v46 & 1) == 0)
        {
          if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
          {
            v138 = objc_msgSend_asset(v5, v95, v96);
            v141 = objc_msgSend_localIdentifier(v138, v139, v140);
            *buf = 138412802;
            v157 = v141;
            v158 = 2048;
            v159 = v26;
            v160 = 2112;
            v161 = v33;
            _os_log_error_impl(&dword_23BF0C000, v39, OS_LOG_TYPE_ERROR, "Failed to save asset: %@ scale: %ld layout: %@", buf, 0x20u);
          }

          goto LABEL_54;
        }

        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134218242;
          v157 = v26;
          v158 = 2112;
          v159 = v33;
          v40 = v39;
          v41 = "  layout for %ld (current): %@";
LABEL_17:
          _os_log_debug_impl(&dword_23BF0C000, v40, OS_LOG_TYPE_DEBUG, v41, buf, 0x16u);
        }

LABEL_23:

        if (v33)
        {
          v87 = objc_msgSend_timeLayout(v33, v85, v86);
          objc_msgSend_setObject_forKeyedSubscript_(v148, v88, v33, v87);
        }

        else
        {
          v87 = objc_msgSend_logObject(NTKParmesanFaceBundle, v85, v86);
          if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v157 = "[NTKCParmesanPhotosEditor _copyOrTranscodeAssetWithIds:to:shouldPurgeOriginalData:progress:completion:]_block_invoke";
            v158 = 2048;
            v159 = v26;
            _os_log_error_impl(&dword_23BF0C000, v87, OS_LOG_TYPE_ERROR, "%s: No layout found for time scale: %ld", buf, 0x16u);
          }
        }

        if (v20 == ++v21)
        {
          v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v18, &v152, v162, 16);
          if (v20)
          {
            goto LABEL_5;
          }

          goto LABEL_31;
        }
      }

      v33 = objc_msgSend__makeLayoutForEditedAsset_userOverride_(*(a1 + 32), v31, v5, v30);
      if (objc_msgSend_lastEditedUserOverride(v5, v34, v35) == v26)
      {
        v38 = objc_msgSend_timeLayout(v33, v36, v37);

        v147 = v38;
      }

      v39 = objc_msgSend_logObject(NTKParmesanFaceBundle, v36, v37);
      if (!os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_23;
      }

      *buf = 134218242;
      v157 = v26;
      v158 = 2112;
      v159 = v33;
      v40 = v39;
      v41 = "  layout for %ld (override): %@";
      goto LABEL_17;
    }

    v147 = 0;
LABEL_31:

    v91 = objc_msgSend_asset(v5, v89, v90);
    v94 = v91;
    if (v91)
    {
      obj = v91;
    }

    else
    {
      obj = objc_msgSend_originalAsset(v5, v92, v93);
    }

    v33 = objc_msgSend_fileURLWithPath_(MEMORY[0x277CBEBC0], v102, *(a1 + 40));
    if (v147)
    {
      v105 = v147;
    }

    else
    {
      v105 = objc_msgSend_preferredTimeLayout(obj, v103, v104);
    }

    v107 = v105;
    v108 = objc_msgSend_objectForKeyedSubscript_(v148, v106, v105);
    v109 = v108 == 0;

    if (v109)
    {
      v112 = objc_msgSend_logObject(NTKParmesanFaceBundle, v110, v111);
      if (os_log_type_enabled(v112, OS_LOG_TYPE_ERROR))
      {
        sub_23BFF7BDC();
      }
    }

    v113 = [NTKParmesanAsset alloc];
    v116 = objc_msgSend_localIdentifier(obj, v114, v115);
    v119 = objc_msgSend_modificationDate(obj, v117, v118);
    objc_msgSend_presentationSize(obj, v120, v121);
    v123 = v122;
    v125 = v124;
    v128 = objc_msgSend_videoInfo(obj, v126, v127);
    v131 = objc_msgSend_accessibilityDescription(obj, v129, v130);
    v133 = objc_msgSend_initWithLocalIdentifier_modificationDate_presentationSize_videoInfo_resourceDirectory_preferredTimeLayout_layouts_accessibilityDescription_(v113, v132, v116, v119, v128, v33, v107, v148, v123, v125, v131);

    if (*(a1 + 72) == 1)
    {
      objc_msgSend_purgeOriginalAssetAndMaskData(v5, v134, v135);
    }

    v136 = objc_msgSend_asDictionary(v133, v134, v135);
    objc_msgSend_addObject_(*(*(*(a1 + 64) + 8) + 40), v137, v136);

LABEL_54:
    v98 = v148;
  }

  else
  {
    v97 = objc_msgSend_logObject(NTKParmesanFaceBundle, v13, v14);
    v98 = v97;
    if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
    {
      sub_23BFF7A50(v5, v97, v99);
      v98 = v97;
    }
  }
}

const char *sub_23BF2672C(unint64_t a1)
{
  if (a1 > 8)
  {
    return "HM";
  }

  else
  {
    return off_278BA70F0[a1];
  }
}

void sub_23BF26814(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_23BF26854(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void sub_23BF26870(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x20u);
}

void sub_23BF28648(uint64_t a1)
{
  v1 = objc_alloc(*(a1 + 32));
  v4 = objc_msgSend__init(v1, v2, v3);
  v5 = qword_27E1E30E8;
  qword_27E1E30E8 = v4;
}

void sub_23BF2882C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23BF28848(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = objc_msgSend_logObject(NTKParmesanFaceBundle, v1, v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = objc_opt_class();
      v6 = *MEMORY[0x277D3B3C8];
      v10 = 138412546;
      v11 = v5;
      v12 = 2080;
      v13 = v6;
      v7 = v5;
      _os_log_impl(&dword_23BF0C000, v4, OS_LOG_TYPE_DEFAULT, "%@: got notification %s", &v10, 0x16u);
    }

    WeakRetained[8] = 0;
    objc_msgSend__queue_notifyObserversShuffleUpdated(WeakRetained, v8, v9);
  }
}

void sub_23BF28AB4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(v8 + 32);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_23BF28B90;
  v12[3] = &unk_278BA71D8;
  v13 = v6;
  v14 = v5;
  v15 = v8;
  v16 = v7;
  v10 = v5;
  v11 = v6;
  dispatch_async(v9, v12);
}

void sub_23BF28B90(uint64_t a1, const char *a2, uint64_t a3)
{
  v28 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32) || (v6 = *(a1 + 40)) == 0)
  {
    v4 = objc_msgSend_logObject(NTKParmesanFaceBundle, a2, a3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_23BFF7F8C();
    }

    v5 = *(a1 + 56);
    if (v5)
    {
      (*(v5 + 16))();
    }
  }

  else
  {
    v26[0] = 0;
    v26[1] = v26;
    v26[2] = 0x2020000000;
    v26[3] = 0;
    if (objc_msgSend_count(v6, a2, a3))
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      obj = *(a1 + 40);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, &v22, v27, 16);
      if (v8)
      {
        v9 = *v23;
        do
        {
          v10 = 0;
          do
          {
            if (*v23 != v9)
            {
              objc_enumerationMutation(obj);
            }

            v11 = *(*(&v22 + 1) + 8 * v10);
            v12 = *(a1 + 40);
            v13 = *(a1 + 48);
            v18[0] = MEMORY[0x277D85DD0];
            v18[1] = 3221225472;
            v18[2] = sub_23BF28E0C;
            v18[3] = &unk_278BA71B0;
            v18[4] = v13;
            v18[5] = v11;
            v21 = v26;
            v19 = v12;
            v20 = *(a1 + 56);
            objc_msgSend__queue_createResourceDirectoryForShuffle_completion_(v13, v14, v11, v18);

            ++v10;
          }

          while (v8 != v10);
          v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v15, &v22, v27, 16);
        }

        while (v8);
      }
    }

    else
    {
      objc_storeStrong((*(a1 + 48) + 16), *(a1 + 40));
      *(*(a1 + 48) + 8) = 1;
      v16 = *(a1 + 56);
      if (v16)
      {
        (*(v16 + 16))();
      }
    }

    _Block_object_dispose(v26, 8);
  }
}

void sub_23BF28DE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23BF28E0C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23BF28F0C;
  block[3] = &unk_278BA7188;
  v11 = v5;
  v12 = v6;
  v13 = *(a1 + 32);
  v16 = *(a1 + 64);
  v14 = *(a1 + 48);
  v15 = *(a1 + 56);
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, block);
}

uint64_t (**sub_23BF28F0C(uint64_t a1, const char *a2, uint64_t a3))(void)
{
  v4 = *(a1 + 32);
  if (v4 && !*(a1 + 40))
  {
    v8 = *(*(a1 + 48) + 24);
    v9 = objc_msgSend_uuidString(*(a1 + 56), a2, a3);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v10, v4, v9);
  }

  else
  {
    v5 = objc_msgSend_logObject(NTKParmesanFaceBundle, a2, a3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_23BFF7FF8();
    }
  }

  v11 = ++*(*(*(a1 + 80) + 8) + 24);
  result = objc_msgSend_count(*(a1 + 64), v6, v7);
  if (v11 == result)
  {
    objc_storeStrong((*(a1 + 48) + 16), *(a1 + 64));
    *(*(a1 + 48) + 8) = 1;
    result = *(a1 + 72);
    if (result)
    {
      return result[2]();
    }
  }

  return result;
}

void sub_23BF29318(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    objc_msgSend_enumerateObjectsUsingBlock_(WeakRetained[5], v2, &unk_284EBA628);
    WeakRetained = v3;
  }
}

void sub_23BF295B8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 32);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_23BF296DC;
  v12[3] = &unk_278BA7298;
  v13 = *(a1 + 40);
  v14 = v5;
  v15 = v6;
  v19 = *(a1 + 64);
  v8 = *(a1 + 48);
  v9 = *(a1 + 32);
  v16 = v8;
  v17 = v9;
  v20 = *(a1 + 72);
  v18 = *(a1 + 56);
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, v12);
}

void sub_23BF296DC(uint64_t a1, const char *a2, uint64_t a3)
{
  v65 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_logObject(NTKParmesanFaceBundle, a2, a3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138412290;
    v62 = v5;
    _os_log_impl(&dword_23BF0C000, v4, OS_LOG_TYPE_DEFAULT, "_queue_createResourceDirectoryForShuffle: creating directory for shuffle at path %@", buf, 0xCu);
  }

  v7 = *(a1 + 40);
  if (!v7 || *(a1 + 48))
  {
    (*(*(a1 + 80) + 16))();
    return;
  }

  if (!objc_msgSend_count(v7, v6, 0))
  {
    v43 = objc_msgSend_logObject(NTKParmesanFaceBundle, v8, v9);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      sub_23BFF8108();
    }

    v10 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v44, @"com.apple.parmesan.galleryShuffle", 1, 0);
    (*(*(a1 + 80) + 16))();
    goto LABEL_36;
  }

  v10 = objc_msgSend__pickAssetFromShuffle_(*(a1 + 64), v8, *(a1 + 40));
  v13 = objc_msgSend_logObject(NTKParmesanFaceBundle, v11, v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a1 + 56);
    *buf = 138412546;
    v62 = v10;
    v63 = 2112;
    v64 = v14;
    _os_log_impl(&dword_23BF0C000, v13, OS_LOG_TYPE_DEFAULT, "_queue_createResourceDirectoryForShuffle: selected asset %@ for shuffle %@", buf, 0x16u);
  }

  if (*(a1 + 88) != 1)
  {
LABEL_28:
    if (objc_msgSend__createResourceDirectoryForShuffle_asset_at_(*(a1 + 64), v15, *(a1 + 56), v10, *(a1 + 32)))
    {
      v17 = 0;
    }

    else
    {
      v17 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v57, @"com.apple.parmesan.galleryShuffle", 2, 0);
    }

    (*(*(a1 + 80) + 16))();
    goto LABEL_35;
  }

  v16 = (a1 + 32);
  v17 = objc_msgSend_readerForResourceDirectory_(NTKParmesanAssetReader, v15, *(a1 + 32));
  if (!objc_msgSend_count(v17, v18, v19))
  {
LABEL_21:
    v45 = objc_msgSend_logObject(NTKParmesanFaceBundle, v20, v21);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      v46 = *v16;
      *buf = 138412290;
      v62 = v46;
      _os_log_impl(&dword_23BF0C000, v45, OS_LOG_TYPE_DEFAULT, "_queue_createResourceDirectoryForShuffle: clearing resource directory at path %@", buf, 0xCu);
    }

    v47 = *(a1 + 72);
    v48 = *(a1 + 32);
    v60 = 0;
    v50 = objc_msgSend_removeItemAtPath_error_(v47, v49, v48, &v60);
    v51 = v60;
    v54 = objc_msgSend_logObject(NTKParmesanFaceBundle, v52, v53);
    v55 = v54;
    if (v51 || (v50 & 1) == 0)
    {
      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        sub_23BFF8080();
      }

      v59 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v58, @"com.apple.parmesan.galleryShuffle", 3, 0);
      (*(*(a1 + 80) + 16))();

      goto LABEL_35;
    }

    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      v56 = *v16;
      *buf = 138412290;
      v62 = v56;
      _os_log_impl(&dword_23BF0C000, v55, OS_LOG_TYPE_DEFAULT, "_queue_createResourceDirectoryForShuffle: cleared resource directory at path %@", buf, 0xCu);
    }

    goto LABEL_28;
  }

  v22 = objc_msgSend_firstObject(v17, v20, v21);
  v25 = objc_msgSend_localIdentifier(v10, v23, v24);
  v28 = objc_msgSend_localIdentifier(v22, v26, v27);
  if ((objc_msgSend_isEqualToString_(v25, v29, v28) & 1) == 0)
  {

    goto LABEL_20;
  }

  v32 = objc_msgSend_modificationDate(v10, v30, v31);
  v35 = objc_msgSend_modificationDate(v22, v33, v34);
  objc_msgSend_timeIntervalSinceDate_(v32, v36, v35);
  v38 = v37;

  if (v38 >= 2.0)
  {
LABEL_20:

    goto LABEL_21;
  }

  v41 = objc_msgSend_logObject(NTKParmesanFaceBundle, v39, v40);
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    v42 = *v16;
    *buf = 138412546;
    v62 = v42;
    v63 = 2112;
    v64 = v10;
    _os_log_impl(&dword_23BF0C000, v41, OS_LOG_TYPE_DEFAULT, "_queue_createResourceDirectoryForShuffle: early return; path %@ already contains asset %@", buf, 0x16u);
  }

  (*(*(a1 + 80) + 16))();
LABEL_35:

LABEL_36:
}

void sub_23BF29C0C()
{
  v3 = NTKCacheDirectory();
  v1 = objc_msgSend_stringByAppendingPathComponent_(v3, v0, @"PhotosFaceSuggestedShuffles");
  v2 = qword_27E1E30F8;
  qword_27E1E30F8 = v1;
}

void sub_23BF2A6A8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

uint64_t sub_23BF2A780(uint64_t a1, double a2, double a3)
{
  memset(&v5, 0, sizeof(v5));
  NTKImagePresentationTransform();
  CGAffineTransformInvert(&v5, &v4);
  v4 = v5;
  return NTKImagePresentationSize();
}

uint64_t sub_23BF2A7F4(uint64_t a1, double a2, double a3)
{
  v5 = NTKCGImagePropertyOrientationToUIImageOrientation();

  return sub_23BF2A780(v5, a2, a3);
}

void sub_23BF2A834(CGImage *a1, uint64_t a2, uint64_t a3, void *a4, int *a5, int *a6, int *a7)
{
  Width = CGImageGetWidth(a1);
  Height = CGImageGetHeight(a1);
  sub_23BF2A780(a2, Width, Height);
  sub_23BF2A780(a3, v12, v13);
  v15 = v14;
  v17 = v16;
  v18 = v14;
  v35 = v14;
  v19 = v16;
  ColorSpace = CGImageGetColorSpace(a1);
  NumberOfComponents = CGColorSpaceGetNumberOfComponents(ColorSpace);
  v22 = 8 * NumberOfComponents + 14;
  if ((NumberOfComponents & 0x10000000) == 0)
  {
    v22 = (8 * NumberOfComponents) | 7;
  }

  v23 = (v22 >> 3) * v18;
  memset(&v46, 0, sizeof(v46));
  NTKImagePresentationTransform();
  v44 = 0u;
  v45 = 0u;
  v43 = 0u;
  NTKImagePresentationTransform();
  memset(&v42, 0, sizeof(v42));
  memset(&t1, 0, sizeof(t1));
  CGAffineTransformInvert(&t2, &t1);
  t1 = v46;
  CGAffineTransformConcat(&v42, &t1, &t2);
  v25 = objc_msgSend_dataWithLength_(MEMORY[0x277CBEB28], v24, v23 * v19);
  v26 = v25;
  v29 = objc_msgSend_mutableBytes(v26, v27, v28);
  BitsPerComponent = CGImageGetBitsPerComponent(a1);
  v31 = CGImageGetColorSpace(a1);
  AlphaInfo = CGImageGetAlphaInfo(a1);
  v33 = CGBitmapContextCreate(v29, v18, v19, BitsPerComponent, v23, v31, AlphaInfo);
  t2 = v42;
  sub_23BF2AA64(v33, a1, &t2, 0, MEMORY[0x277CBF2C0], v15, v17);
  CGContextRelease(v33);
  v34 = v25;
  *a4 = v25;
  *a5 = v35;
  *a6 = v19;
  *a7 = v23;
}

void sub_23BF2AA64(CGContext *a1, CGImage *a2, _OWORD *a3, CGImage *a4, _OWORD *a5, CGFloat a6, CGFloat a7)
{
  CGContextSaveGState(a1);
  if (a4)
  {
    v14 = a5[1];
    *&v17.a = *a5;
    *&v17.c = v14;
    *&v17.tx = a5[2];
    memset(&v18, 0, sizeof(v18));
    sub_23BF2AC34(a4, &v17, &v18);
    v16 = v18;
    memset(&v17, 0, sizeof(v17));
    CGAffineTransformInvert(&v17, &v16);
    v16 = v18;
    CGContextConcatCTM(a1, &v16);
    v16 = v17;
    v19.origin.x = 0.0;
    v19.origin.y = 0.0;
    v19.size.width = a6;
    v19.size.height = a7;
    v20 = CGRectApplyAffineTransform(v19, &v16);
    CGContextClipToMask(a1, v20, a4);
    v16 = v17;
    CGContextConcatCTM(a1, &v16);
  }

  v15 = a3[1];
  *&v17.a = *a3;
  *&v17.c = v15;
  *&v17.tx = a3[2];
  memset(&v18, 0, sizeof(v18));
  sub_23BF2AC34(a2, &v17, &v18);
  v16 = v18;
  memset(&v17, 0, sizeof(v17));
  CGAffineTransformInvert(&v17, &v16);
  v16 = v18;
  CGContextConcatCTM(a1, &v16);
  v16 = v17;
  v21.origin.x = 0.0;
  v21.origin.y = 0.0;
  v21.size.width = a6;
  v21.size.height = a7;
  v22 = CGRectApplyAffineTransform(v21, &v16);
  CGContextDrawImage(a1, v22, a2);
  CGContextRestoreGState(a1);
}

CGFloat sub_23BF2AC34@<D0>(CGImage *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  Height = CGImageGetHeight(a1);
  v6 = MEMORY[0x277CBF2C0];
  v7 = *MEMORY[0x277CBF2C0];
  v8 = *(MEMORY[0x277CBF2C0] + 16);
  *a3 = *MEMORY[0x277CBF2C0];
  *(a3 + 16) = v8;
  v9 = *(v6 + 32);
  *(a3 + 32) = v9;
  *&t1.a = v7;
  *&t1.c = v8;
  *&t1.tx = v9;
  t2.b = 0.0;
  t2.c = 0.0;
  t2.a = 1.0;
  *&t2.d = xmmword_23C001120;
  t2.ty = Height;
  CGAffineTransformConcat(a3, &t1, &t2);
  v10 = *(a3 + 16);
  *&t2.a = *a3;
  *&t2.c = v10;
  *&t2.tx = *(a3 + 32);
  v11 = a2[1];
  *&v16.a = *a2;
  *&v16.c = v11;
  *&v16.tx = a2[2];
  CGAffineTransformConcat(&t1, &t2, &v16);
  v12 = *&t1.c;
  *a3 = *&t1.a;
  *(a3 + 16) = v12;
  *(a3 + 32) = *&t1.tx;
  v13 = *(a3 + 16);
  *&t2.a = *a3;
  *&t2.c = v13;
  *&t2.tx = *(a3 + 32);
  v16.b = 0.0;
  v16.c = 0.0;
  v16.a = 1.0;
  *&v16.d = xmmword_23C001120;
  v16.ty = Height;
  CGAffineTransformConcat(&t1, &t2, &v16);
  v14 = *&t1.c;
  *a3 = *&t1.a;
  *(a3 + 16) = v14;
  result = t1.tx;
  *(a3 + 32) = *&t1.tx;
  return result;
}

CGImageRef sub_23BF2AD4C(CGImage *a1, uint64_t a2, CGImage *a3, uint64_t a4)
{
  CGImageGetWidth(a1);
  CGImageGetHeight(a1);
  NTKCGImagePropertyOrientationToUIImageOrientation();
  NTKImagePresentationTransform();
  NTKImagePresentationSize();
  v7 = rint(v6);
  v9 = rint(v8);
  ColorSpace = CGImageGetColorSpace(a1);
  v11 = CGColorSpaceGetNumberOfComponents(ColorSpace) & 0x1FFFFFFFFFFFFFFFLL;
  v14 = objc_msgSend_mutableBytes(0, v12, v13);
  v15 = CGBitmapContextCreate(v14, v7, v9, 8uLL, v7 + v7 * v11, ColorSpace, 1u);
  CGImageGetWidth(a3);
  CGImageGetHeight(a3);
  NTKCGImagePropertyOrientationToUIImageOrientation();
  NTKImagePresentationTransform();
  memset(v19, 0, sizeof(v19));
  memset(v18, 0, sizeof(v18));
  sub_23BF2AA64(v15, a1, v19, a3, v18, v7, v9);
  Image = CGBitmapContextCreateImage(v15);
  CGContextRelease(v15);
  return Image;
}

id sub_23BF2AEF0(CGImage *a1, uint64_t a2, CGImage *a3, uint64_t a4)
{
  v4 = sub_23BF2AD4C(a1, a2, a3, a4);
  v5 = MEMORY[0x277D755B8];
  v6 = NTKCGImagePropertyOrientationToUIImageOrientation();
  v8 = objc_msgSend_imageWithCGImage_scale_orientation_(v5, v7, v4, v6, 1.0);
  CGImageRelease(v4);

  return v8;
}

uint64_t sub_23BF2AF68(const __CFData *a1)
{
  v1 = CGImageSourceCreateWithData(a1, 0);
  if (!v1)
  {
    return 1;
  }

  v2 = v1;
  v3 = CGImageSourceCopyPropertiesAtIndex(v1, 0, 0);
  v4 = 1;
  if (v3)
  {
    v5 = v3;
    Value = CFDictionaryGetValue(v3, *MEMORY[0x277CD3410]);
    valuePtr = 1;
    if (Value)
    {
      if (CFNumberGetValue(Value, kCFNumberIntType, &valuePtr))
      {
        v4 = valuePtr;
      }

      else
      {
        v4 = 1;
      }
    }

    CFRelease(v5);
  }

  CFRelease(v2);
  v9 = objc_msgSend_logObject(NTKParmesanFaceBundle, v7, v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_23BFF8260(v4, v9);
  }

  return v4;
}

CGImageRef sub_23BF2B03C(const __CFData *a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v1 = CGImageSourceCreateWithData(a1, 0);
  if (!v1)
  {
    return 0;
  }

  v3 = v1;
  v7 = *MEMORY[0x277CD3618];
  v8[0] = MEMORY[0x277CBEC28];
  v4 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v2, v8, &v7, 1);
  ImageAtIndex = CGImageSourceCreateImageAtIndex(v3, 0, v4);
  CFRelease(v3);

  return ImageAtIndex;
}

CGImageDestination *sub_23BF2B10C(void *a1, double a2)
{
  v32[3] = *MEMORY[0x277D85DE8];
  v3 = a1;
  v6 = objc_msgSend_data(MEMORY[0x277CBEB28], v4, v5);
  v9 = objc_msgSend_identifier(*MEMORY[0x277CE1D90], v7, v8);
  v10 = CGImageDestinationCreateWithData(v6, v9, 1uLL, 0);

  if (v10)
  {
    objc_msgSend_imageOrientation(v3, v11, v12);
    v13 = NTKUIImageOrientationToCGImagePropertyOrientation();
    v14 = *MEMORY[0x277CD2D78];
    v32[0] = MEMORY[0x277CBEC38];
    v15 = *MEMORY[0x277CD3410];
    v31[0] = v14;
    v31[1] = v15;
    v17 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v16, v13);
    v32[1] = v17;
    v31[2] = *MEMORY[0x277CD2D48];
    v20 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v18, v19, a2);
    v32[2] = v20;
    v22 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v21, v32, v31, 3);

    v23 = v3;
    v26 = objc_msgSend_CGImage(v23, v24, v25);
    CGImageDestinationAddImage(v10, v26, v22);
    CGImageDestinationFinalize(v10);
    CFRelease(v10);
    if (objc_msgSend_length(v6, v27, v28))
    {
      v29 = v6;
    }

    else
    {
      v29 = 0;
    }

    v10 = v29;
  }

  return v10;
}

id kParmesanColorSlots(uint64_t a1, const char *a2)
{
  v4[2] = *MEMORY[0x277D85DE8];
  v4[0] = @"style-color";
  v4[1] = @"time-color";
  v2 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v4, 2);

  return v2;
}

void sub_23BF2C1E0(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, a3);
  v5 = qword_27E1E3110;
  qword_27E1E3110 = v4;

  v6 = MEMORY[0x277CCABB0];
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 24);
  *(v7 + 24) = v8 + 1;
  v10 = objc_msgSend_numberWithInteger_(v6, v9, v8);
  v11 = qword_27E1E3110;
  v2168 = *MEMORY[0x277D2C240];
  v2177 = *MEMORY[0x277D2C1B0];
  v13 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v12, *MEMORY[0x277D2C240]);
  objc_msgSend_setObject_forKeyedSubscript_(v11, v14, v10, v13);

  v15 = MEMORY[0x277CCABB0];
  v16 = *(*(a1 + 32) + 8);
  v17 = *(v16 + 24);
  *(v16 + 24) = v17 + 1;
  v19 = objc_msgSend_numberWithInteger_(v15, v18, v17);
  v20 = qword_27E1E3110;
  v21 = *MEMORY[0x277D2C248];
  v22 = *MEMORY[0x277D2C6B0];
  v2165 = *MEMORY[0x277D2C248];
  v2218 = *MEMORY[0x277D2C6B0];
  v24 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v23, *MEMORY[0x277D2C248], *MEMORY[0x277D2C6B0]);
  objc_msgSend_setObject_forKeyedSubscript_(v20, v25, v19, v24);

  v26 = MEMORY[0x277CCABB0];
  v27 = *(*(a1 + 32) + 8);
  v28 = *(v27 + 24);
  *(v27 + 24) = v28 + 1;
  v30 = objc_msgSend_numberWithInteger_(v26, v29, v28);
  v31 = qword_27E1E3110;
  v2188 = *MEMORY[0x277D2C6B8];
  v33 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v32, v22);
  objc_msgSend_setObject_forKeyedSubscript_(v31, v34, v30, v33);

  v35 = MEMORY[0x277CCABB0];
  v36 = *(*(a1 + 32) + 8);
  v37 = *(v36 + 24);
  *(v36 + 24) = v37 + 1;
  v39 = objc_msgSend_numberWithInteger_(v35, v38, v37);
  v40 = qword_27E1E3110;
  v2213 = *MEMORY[0x277D2C230];
  v42 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v41, v21);
  objc_msgSend_setObject_forKeyedSubscript_(v40, v43, v39, v42);

  v44 = MEMORY[0x277CCABB0];
  v45 = *(*(a1 + 32) + 8);
  v46 = *(v45 + 24);
  *(v45 + 24) = v46 + 1;
  v48 = objc_msgSend_numberWithInteger_(v44, v47, v46);
  v49 = qword_27E1E3110;
  v2154 = *MEMORY[0x277D2C4D8];
  v2162 = *MEMORY[0x277D2C1A8];
  v51 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v50, *MEMORY[0x277D2C4D8]);
  objc_msgSend_setObject_forKeyedSubscript_(v49, v52, v48, v51);

  v53 = MEMORY[0x277CCABB0];
  v54 = *(*(a1 + 32) + 8);
  v55 = *(v54 + 24);
  *(v54 + 24) = v55 + 1;
  v57 = objc_msgSend_numberWithInteger_(v53, v56, v55);
  v58 = qword_27E1E3110;
  v2156 = *MEMORY[0x277D2C1E8];
  v2204 = *MEMORY[0x277D2C1F0];
  v60 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v59, *MEMORY[0x277D2C1E8]);
  objc_msgSend_setObject_forKeyedSubscript_(v58, v61, v57, v60);

  v62 = MEMORY[0x277CCABB0];
  v63 = *(*(a1 + 32) + 8);
  v64 = *(v63 + 24);
  *(v63 + 24) = v64 + 1;
  v66 = objc_msgSend_numberWithInteger_(v62, v65, v64);
  v67 = qword_27E1E3110;
  v68 = *MEMORY[0x277D2C190];
  v2191 = *MEMORY[0x277D2C228];
  v2148 = *MEMORY[0x277D2C190];
  v70 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v69, *MEMORY[0x277D2C190]);
  objc_msgSend_setObject_forKeyedSubscript_(v67, v71, v66, v70);

  v72 = MEMORY[0x277CCABB0];
  v73 = *(*(a1 + 32) + 8);
  v74 = *(v73 + 24);
  *(v73 + 24) = v74 + 1;
  v76 = objc_msgSend_numberWithInteger_(v72, v75, v74);
  v77 = qword_27E1E3110;
  v2208 = *MEMORY[0x277D2C1D8];
  v2194 = *MEMORY[0x277D2C4A0];
  v79 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v78, *MEMORY[0x277D2C1D8]);
  objc_msgSend_setObject_forKeyedSubscript_(v77, v80, v76, v79);

  v81 = MEMORY[0x277CCABB0];
  v82 = *(*(a1 + 32) + 8);
  v83 = *(v82 + 24);
  *(v82 + 24) = v83 + 1;
  v85 = objc_msgSend_numberWithInteger_(v81, v84, v83);
  v86 = qword_27E1E3110;
  v2171 = *MEMORY[0x277D2C548];
  v87 = *MEMORY[0x277D2C660];
  v2181 = *MEMORY[0x277D2C660];
  v89 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v88, *MEMORY[0x277D2C548], *MEMORY[0x277D2C660]);
  objc_msgSend_setObject_forKeyedSubscript_(v86, v90, v85, v89);

  v91 = MEMORY[0x277CCABB0];
  v92 = *(*(a1 + 32) + 8);
  v93 = *(v92 + 24);
  *(v92 + 24) = v93 + 1;
  v95 = objc_msgSend_numberWithInteger_(v91, v94, v93);
  v96 = qword_27E1E3110;
  v2152 = *MEMORY[0x277D2C490];
  v2199 = *MEMORY[0x277D2C668];
  v98 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v97, *MEMORY[0x277D2C490]);
  objc_msgSend_setObject_forKeyedSubscript_(v96, v99, v95, v98);

  v100 = MEMORY[0x277CCABB0];
  v101 = *(*(a1 + 32) + 8);
  v102 = *(v101 + 24);
  *(v101 + 24) = v102 + 1;
  v104 = objc_msgSend_numberWithInteger_(v100, v103, v102);
  v105 = qword_27E1E3110;
  v107 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v106, v68, v87);
  objc_msgSend_setObject_forKeyedSubscript_(v105, v108, v104, v107);

  v109 = MEMORY[0x277CCABB0];
  v110 = *(*(a1 + 32) + 8);
  v111 = *(v110 + 24);
  *(v110 + 24) = v111 + 1;
  v113 = objc_msgSend_numberWithInteger_(v109, v112, v111);
  v114 = qword_27E1E3110;
  v2150 = *MEMORY[0x277D2C498];
  v2160 = *MEMORY[0x277D2C538];
  v116 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v115, *MEMORY[0x277D2C498]);
  objc_msgSend_setObject_forKeyedSubscript_(v114, v117, v113, v116);

  v118 = MEMORY[0x277CCABB0];
  v119 = *(*(a1 + 32) + 8);
  v120 = *(v119 + 24);
  *(v119 + 24) = v120 + 1;
  v122 = objc_msgSend_numberWithInteger_(v118, v121, v120);
  v123 = qword_27E1E3110;
  v124 = *MEMORY[0x277D2C270];
  v2142 = *MEMORY[0x277D2C278];
  v2223 = *MEMORY[0x277D2C270];
  v126 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v125, *MEMORY[0x277D2C270]);
  objc_msgSend_setObject_forKeyedSubscript_(v123, v127, v122, v126);

  v128 = MEMORY[0x277CCABB0];
  v129 = *(*(a1 + 32) + 8);
  v130 = *(v129 + 24);
  *(v129 + 24) = v130 + 1;
  v132 = objc_msgSend_numberWithInteger_(v128, v131, v130);
  v133 = qword_27E1E3110;
  v2140 = *MEMORY[0x277D2C260];
  v2197 = *MEMORY[0x277D2C268];
  v135 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v134, *MEMORY[0x277D2C260]);
  objc_msgSend_setObject_forKeyedSubscript_(v133, v136, v132, v135);

  v137 = MEMORY[0x277CCABB0];
  v138 = *(*(a1 + 32) + 8);
  v139 = *(v138 + 24);
  *(v138 + 24) = v139 + 1;
  v141 = objc_msgSend_numberWithInteger_(v137, v140, v139);
  v142 = qword_27E1E3110;
  v143 = *MEMORY[0x277D2C280];
  v145 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v144, *MEMORY[0x277D2C280], v124);
  objc_msgSend_setObject_forKeyedSubscript_(v142, v146, v141, v145);

  v147 = MEMORY[0x277CCABB0];
  v148 = *(*(a1 + 32) + 8);
  v149 = *(v148 + 24);
  *(v148 + 24) = v149 + 1;
  v151 = objc_msgSend_numberWithInteger_(v147, v150, v149);
  v152 = qword_27E1E3110;
  v153 = *MEMORY[0x277D2C688];
  v155 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v154, v2194);
  objc_msgSend_setObject_forKeyedSubscript_(v152, v156, v151, v155);

  v157 = MEMORY[0x277CCABB0];
  v158 = *(*(a1 + 32) + 8);
  v159 = *(v158 + 24);
  *(v158 + 24) = v159 + 1;
  v161 = objc_msgSend_numberWithInteger_(v157, v160, v159);
  v162 = qword_27E1E3110;
  v2146 = *MEMORY[0x277D2C578];
  v2184 = *MEMORY[0x277D2C558];
  v164 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v163, *MEMORY[0x277D2C578]);
  objc_msgSend_setObject_forKeyedSubscript_(v162, v165, v161, v164);

  v166 = MEMORY[0x277CCABB0];
  v167 = *(*(a1 + 32) + 8);
  v168 = *(v167 + 24);
  *(v167 + 24) = v168 + 1;
  v170 = objc_msgSend_numberWithInteger_(v166, v169, v168);
  v171 = qword_27E1E3110;
  v2144 = *MEMORY[0x277D2C570];
  v172 = v153;
  v2174 = v153;
  v174 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v173, v153);
  objc_msgSend_setObject_forKeyedSubscript_(v171, v175, v170, v174);

  v176 = MEMORY[0x277CCABB0];
  v177 = *(*(a1 + 32) + 8);
  v178 = *(v177 + 24);
  *(v177 + 24) = v178 + 1;
  v180 = objc_msgSend_numberWithInteger_(v176, v179, v178);
  v181 = qword_27E1E3110;
  v2158 = *MEMORY[0x277D2C210];
  v182 = *MEMORY[0x277D2C680];
  v184 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v183, *MEMORY[0x277D2C210], *MEMORY[0x277D2C680]);
  objc_msgSend_setObject_forKeyedSubscript_(v181, v185, v180, v184);

  v186 = MEMORY[0x277CCABB0];
  v187 = *(*(a1 + 32) + 8);
  v188 = *(v187 + 24);
  *(v187 + 24) = v188 + 1;
  v190 = objc_msgSend_numberWithInteger_(v186, v189, v188);
  v191 = qword_27E1E3110;
  v192 = *MEMORY[0x277D2C540];
  v194 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v193, v172);
  objc_msgSend_setObject_forKeyedSubscript_(v191, v195, v190, v194);

  v196 = MEMORY[0x277CCABB0];
  v197 = *(*(a1 + 32) + 8);
  v198 = *(v197 + 24);
  *(v197 + 24) = v198 + 1;
  v200 = objc_msgSend_numberWithInteger_(v196, v199, v198);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v201, v200, *MEMORY[0x277D2C478]);

  v202 = MEMORY[0x277CCABB0];
  v203 = *(*(a1 + 32) + 8);
  v204 = *(v203 + 24);
  *(v203 + 24) = v204 + 1;
  v206 = objc_msgSend_numberWithInteger_(v202, v205, v204);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v207, v206, *MEMORY[0x277D2C480]);

  v208 = MEMORY[0x277CCABB0];
  v209 = *(*(a1 + 32) + 8);
  v210 = *(v209 + 24);
  *(v209 + 24) = v210 + 1;
  v212 = objc_msgSend_numberWithInteger_(v208, v211, v210);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v213, v212, *MEMORY[0x277D2C488]);

  ++*(*(*(a1 + 32) + 8) + 24);
  v214 = MEMORY[0x277CCABB0];
  v215 = *(*(a1 + 32) + 8);
  v216 = *(v215 + 24);
  *(v215 + 24) = v216 + 1;
  v218 = objc_msgSend_numberWithInteger_(v214, v217, v216);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v219, v218, v143);

  v220 = MEMORY[0x277CCABB0];
  v221 = *(*(a1 + 32) + 8);
  v222 = *(v221 + 24);
  *(v221 + 24) = v222 + 1;
  v224 = objc_msgSend_numberWithInteger_(v220, v223, v222);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v225, v224, v2197);

  v226 = MEMORY[0x277CCABB0];
  v227 = *(*(a1 + 32) + 8);
  v228 = *(v227 + 24);
  *(v227 + 24) = v228 + 1;
  v230 = objc_msgSend_numberWithInteger_(v226, v229, v228);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v231, v230, v2140);

  v232 = MEMORY[0x277CCABB0];
  v233 = *(*(a1 + 32) + 8);
  v234 = *(v233 + 24);
  *(v233 + 24) = v234 + 1;
  v236 = objc_msgSend_numberWithInteger_(v232, v235, v234);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v237, v236, v2223);

  v238 = MEMORY[0x277CCABB0];
  v239 = *(*(a1 + 32) + 8);
  v240 = *(v239 + 24);
  *(v239 + 24) = v240 + 1;
  v242 = objc_msgSend_numberWithInteger_(v238, v241, v240);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v243, v242, v2142);

  v244 = MEMORY[0x277CCABB0];
  v245 = *(*(a1 + 32) + 8);
  v246 = *(v245 + 24);
  *(v245 + 24) = v246 + 1;
  v248 = objc_msgSend_numberWithInteger_(v244, v247, v246);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v249, v248, *MEMORY[0x277D2C288]);

  ++*(*(*(a1 + 32) + 8) + 24);
  v250 = MEMORY[0x277CCABB0];
  v251 = *(*(a1 + 32) + 8);
  v252 = *(v251 + 24);
  *(v251 + 24) = v252 + 1;
  v254 = objc_msgSend_numberWithInteger_(v250, v253, v252);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v255, v254, *MEMORY[0x277D2C258]);

  v256 = MEMORY[0x277CCABB0];
  v257 = *(*(a1 + 32) + 8);
  v258 = *(v257 + 24);
  *(v257 + 24) = v258 + 1;
  v260 = objc_msgSend_numberWithInteger_(v256, v259, v258);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v261, v260, *MEMORY[0x277D2C560]);

  v262 = MEMORY[0x277CCABB0];
  v263 = *(*(a1 + 32) + 8);
  v264 = *(v263 + 24);
  *(v263 + 24) = v264 + 1;
  v266 = objc_msgSend_numberWithInteger_(v262, v265, v264);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v267, v266, v182);

  v268 = MEMORY[0x277CCABB0];
  v269 = *(*(a1 + 32) + 8);
  v270 = *(v269 + 24);
  *(v269 + 24) = v270 + 1;
  v272 = objc_msgSend_numberWithInteger_(v268, v271, v270);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v273, v272, *MEMORY[0x277D2C678]);

  v274 = MEMORY[0x277CCABB0];
  v275 = *(*(a1 + 32) + 8);
  v276 = *(v275 + 24);
  *(v275 + 24) = v276 + 1;
  v278 = objc_msgSend_numberWithInteger_(v274, v277, v276);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v279, v278, *MEMORY[0x277D2C568]);

  v280 = MEMORY[0x277CCABB0];
  v281 = *(*(a1 + 32) + 8);
  v282 = *(v281 + 24);
  *(v281 + 24) = v282 + 1;
  v284 = objc_msgSend_numberWithInteger_(v280, v283, v282);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v285, v284, v2146);

  v286 = MEMORY[0x277CCABB0];
  v287 = *(*(a1 + 32) + 8);
  v288 = *(v287 + 24);
  *(v287 + 24) = v288 + 1;
  v290 = objc_msgSend_numberWithInteger_(v286, v289, v288);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v291, v290, v2144);

  v292 = MEMORY[0x277CCABB0];
  v293 = *(*(a1 + 32) + 8);
  v294 = *(v293 + 24);
  *(v293 + 24) = v294 + 1;
  v296 = objc_msgSend_numberWithInteger_(v292, v295, v294);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v297, v296, v2184);

  v298 = MEMORY[0x277CCABB0];
  v299 = *(*(a1 + 32) + 8);
  v300 = *(v299 + 24);
  *(v299 + 24) = v300 + 1;
  v302 = objc_msgSend_numberWithInteger_(v298, v301, v300);
  v2185 = *MEMORY[0x277D2C4B0];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v303, v302);

  v304 = MEMORY[0x277CCABB0];
  v305 = *(*(a1 + 32) + 8);
  v306 = *(v305 + 24);
  *(v305 + 24) = v306 + 1;
  v308 = objc_msgSend_numberWithInteger_(v304, v307, v306);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v309, v308, *MEMORY[0x277D2C198]);

  v310 = MEMORY[0x277CCABB0];
  v311 = *(*(a1 + 32) + 8);
  v312 = *(v311 + 24);
  *(v311 + 24) = v312 + 1;
  v314 = objc_msgSend_numberWithInteger_(v310, v313, v312);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v315, v314, v2148);

  v316 = MEMORY[0x277CCABB0];
  v317 = *(*(a1 + 32) + 8);
  v318 = *(v317 + 24);
  *(v317 + 24) = v318 + 1;
  v320 = objc_msgSend_numberWithInteger_(v316, v319, v318);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v321, v320, v2168);

  v322 = MEMORY[0x277CCABB0];
  v323 = *(*(a1 + 32) + 8);
  v324 = *(v323 + 24);
  *(v323 + 24) = v324 + 1;
  v326 = objc_msgSend_numberWithInteger_(v322, v325, v324);
  v2169 = *MEMORY[0x277D2C4B8];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v327, v326);

  v328 = MEMORY[0x277CCABB0];
  v329 = *(*(a1 + 32) + 8);
  v330 = *(v329 + 24);
  *(v329 + 24) = v330 + 1;
  v332 = objc_msgSend_numberWithInteger_(v328, v331, v330);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v333, v332, *MEMORY[0x277D2C508]);

  v334 = MEMORY[0x277CCABB0];
  v335 = *(*(a1 + 32) + 8);
  v336 = *(v335 + 24);
  *(v335 + 24) = v336 + 1;
  v338 = objc_msgSend_numberWithInteger_(v334, v337, v336);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v339, v338, *MEMORY[0x277D2C528]);

  v340 = MEMORY[0x277CCABB0];
  v341 = *(*(a1 + 32) + 8);
  v342 = *(v341 + 24);
  *(v341 + 24) = v342 + 1;
  v344 = objc_msgSend_numberWithInteger_(v340, v343, v342);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v345, v344, v2150);

  v346 = MEMORY[0x277CCABB0];
  v347 = *(*(a1 + 32) + 8);
  v348 = *(v347 + 24);
  *(v347 + 24) = v348 + 1;
  v350 = objc_msgSend_numberWithInteger_(v346, v349, v348);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v351, v350, *MEMORY[0x277D2C6A0]);

  v352 = MEMORY[0x277CCABB0];
  v353 = *(*(a1 + 32) + 8);
  v354 = *(v353 + 24);
  *(v353 + 24) = v354 + 1;
  v356 = objc_msgSend_numberWithInteger_(v352, v355, v354);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v357, v356, v2165);

  v358 = MEMORY[0x277CCABB0];
  v359 = *(*(a1 + 32) + 8);
  v360 = *(v359 + 24);
  *(v359 + 24) = v360 + 1;
  v362 = objc_msgSend_numberWithInteger_(v358, v361, v360);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v363, v362, v2154);

  v364 = MEMORY[0x277CCABB0];
  v365 = *(*(a1 + 32) + 8);
  v366 = *(v365 + 24);
  *(v365 + 24) = v366 + 1;
  v368 = objc_msgSend_numberWithInteger_(v364, v367, v366);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v369, v368, *MEMORY[0x277D2C648]);

  v370 = MEMORY[0x277CCABB0];
  v371 = *(*(a1 + 32) + 8);
  v372 = *(v371 + 24);
  *(v371 + 24) = v372 + 1;
  v374 = objc_msgSend_numberWithInteger_(v370, v373, v372);
  v2166 = *MEMORY[0x277D2C650];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v375, v374);

  v376 = MEMORY[0x277CCABB0];
  v377 = *(*(a1 + 32) + 8);
  v378 = *(v377 + 24);
  *(v377 + 24) = v378 + 1;
  v380 = objc_msgSend_numberWithInteger_(v376, v379, v378);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v381, v380, *MEMORY[0x277D2C500]);

  v382 = MEMORY[0x277CCABB0];
  v383 = *(*(a1 + 32) + 8);
  v384 = *(v383 + 24);
  *(v383 + 24) = v384 + 1;
  v386 = objc_msgSend_numberWithInteger_(v382, v385, v384);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v387, v386, v2156);

  v388 = MEMORY[0x277CCABB0];
  v389 = *(*(a1 + 32) + 8);
  v390 = *(v389 + 24);
  *(v389 + 24) = v390 + 1;
  v392 = objc_msgSend_numberWithInteger_(v388, v391, v390);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v393, v392, v2152);

  v394 = MEMORY[0x277CCABB0];
  v395 = *(*(a1 + 32) + 8);
  v396 = *(v395 + 24);
  *(v395 + 24) = v396 + 1;
  v398 = objc_msgSend_numberWithInteger_(v394, v397, v396);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v399, v398, *MEMORY[0x277D2C530]);

  v400 = MEMORY[0x277CCABB0];
  v401 = *(*(a1 + 32) + 8);
  v402 = *(v401 + 24);
  *(v401 + 24) = v402 + 1;
  v404 = objc_msgSend_numberWithInteger_(v400, v403, v402);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v405, v404, *MEMORY[0x277D2C4C8]);

  v406 = MEMORY[0x277CCABB0];
  v407 = *(*(a1 + 32) + 8);
  v408 = *(v407 + 24);
  *(v407 + 24) = v408 + 1;
  v410 = objc_msgSend_numberWithInteger_(v406, v409, v408);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v411, v410, v2218);

  v412 = MEMORY[0x277CCABB0];
  v413 = *(*(a1 + 32) + 8);
  v414 = *(v413 + 24);
  *(v413 + 24) = v414 + 1;
  v416 = objc_msgSend_numberWithInteger_(v412, v415, v414);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v417, v416, *MEMORY[0x277D2C670]);

  v418 = MEMORY[0x277CCABB0];
  v419 = *(*(a1 + 32) + 8);
  v420 = *(v419 + 24);
  *(v419 + 24) = v420 + 1;
  v422 = objc_msgSend_numberWithInteger_(v418, v421, v420);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v423, v422, v2162);

  v424 = MEMORY[0x277CCABB0];
  v425 = *(*(a1 + 32) + 8);
  v426 = *(v425 + 24);
  *(v425 + 24) = v426 + 1;
  v428 = objc_msgSend_numberWithInteger_(v424, v427, v426);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v429, v428, *MEMORY[0x277D2C180]);

  v430 = MEMORY[0x277CCABB0];
  v431 = *(*(a1 + 32) + 8);
  v432 = *(v431 + 24);
  *(v431 + 24) = v432 + 1;
  v434 = objc_msgSend_numberWithInteger_(v430, v433, v432);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v435, v434, *MEMORY[0x277D2C550]);

  v436 = MEMORY[0x277CCABB0];
  v437 = *(*(a1 + 32) + 8);
  v438 = *(v437 + 24);
  *(v437 + 24) = v438 + 1;
  v440 = objc_msgSend_numberWithInteger_(v436, v439, v438);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v441, v440, *MEMORY[0x277D2C470]);

  v442 = MEMORY[0x277CCABB0];
  v443 = *(*(a1 + 32) + 8);
  v444 = *(v443 + 24);
  *(v443 + 24) = v444 + 1;
  v446 = objc_msgSend_numberWithInteger_(v442, v445, v444);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v447, v446, *MEMORY[0x277D2C4D0]);

  v448 = MEMORY[0x277CCABB0];
  v449 = *(*(a1 + 32) + 8);
  v450 = *(v449 + 24);
  *(v449 + 24) = v450 + 1;
  v452 = objc_msgSend_numberWithInteger_(v448, v451, v450);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v453, v452, *MEMORY[0x277D2C510]);

  v454 = MEMORY[0x277CCABB0];
  v455 = *(*(a1 + 32) + 8);
  v456 = *(v455 + 24);
  *(v455 + 24) = v456 + 1;
  v458 = objc_msgSend_numberWithInteger_(v454, v457, v456);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v459, v458, *MEMORY[0x277D2C520]);

  v460 = MEMORY[0x277CCABB0];
  v461 = *(*(a1 + 32) + 8);
  v462 = *(v461 + 24);
  *(v461 + 24) = v462 + 1;
  v464 = objc_msgSend_numberWithInteger_(v460, v463, v462);
  v2163 = *MEMORY[0x277D2C640];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v465, v464);

  v466 = MEMORY[0x277CCABB0];
  v467 = *(*(a1 + 32) + 8);
  v468 = *(v467 + 24);
  *(v467 + 24) = v468 + 1;
  v470 = objc_msgSend_numberWithInteger_(v466, v469, v468);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v471, v470, *MEMORY[0x277D2C4E0]);

  v472 = MEMORY[0x277CCABB0];
  v473 = *(*(a1 + 32) + 8);
  v474 = *(v473 + 24);
  *(v473 + 24) = v474 + 1;
  v476 = objc_msgSend_numberWithInteger_(v472, v475, v474);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v477, v476, v2191);

  v478 = MEMORY[0x277CCABB0];
  v479 = *(*(a1 + 32) + 8);
  v480 = *(v479 + 24);
  *(v479 + 24) = v480 + 1;
  v482 = objc_msgSend_numberWithInteger_(v478, v481, v480);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v483, v482, v2160);

  v484 = MEMORY[0x277CCABB0];
  v485 = *(*(a1 + 32) + 8);
  v486 = *(v485 + 24);
  *(v485 + 24) = v486 + 1;
  v488 = objc_msgSend_numberWithInteger_(v484, v487, v486);
  v2192 = *MEMORY[0x277D2C6A8];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v489, v488);

  v490 = MEMORY[0x277CCABB0];
  v491 = *(*(a1 + 32) + 8);
  v492 = *(v491 + 24);
  *(v491 + 24) = v492 + 1;
  v494 = objc_msgSend_numberWithInteger_(v490, v493, v492);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v495, v494, *MEMORY[0x277D2C1D0]);

  v496 = MEMORY[0x277CCABB0];
  v497 = *(*(a1 + 32) + 8);
  v498 = *(v497 + 24);
  *(v497 + 24) = v498 + 1;
  v500 = objc_msgSend_numberWithInteger_(v496, v499, v498);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v501, v500, v2213);

  v502 = MEMORY[0x277CCABB0];
  v503 = *(*(a1 + 32) + 8);
  v504 = *(v503 + 24);
  *(v503 + 24) = v504 + 1;
  v506 = objc_msgSend_numberWithInteger_(v502, v505, v504);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v507, v506, *MEMORY[0x277D2C690]);

  v508 = MEMORY[0x277CCABB0];
  v509 = *(*(a1 + 32) + 8);
  v510 = *(v509 + 24);
  *(v509 + 24) = v510 + 1;
  v512 = objc_msgSend_numberWithInteger_(v508, v511, v510);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v513, v512, v2158);

  v514 = MEMORY[0x277CCABB0];
  v515 = *(*(a1 + 32) + 8);
  v516 = *(v515 + 24);
  *(v515 + 24) = v516 + 1;
  v518 = objc_msgSend_numberWithInteger_(v514, v517, v516);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v519, v518, v2199);

  v520 = MEMORY[0x277CCABB0];
  v521 = *(*(a1 + 32) + 8);
  v522 = *(v521 + 24);
  *(v521 + 24) = v522 + 1;
  v524 = objc_msgSend_numberWithInteger_(v520, v523, v522);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v525, v524, *MEMORY[0x277D2C4F8]);

  v526 = MEMORY[0x277CCABB0];
  v527 = *(*(a1 + 32) + 8);
  v528 = *(v527 + 24);
  *(v527 + 24) = v528 + 1;
  v530 = objc_msgSend_numberWithInteger_(v526, v529, v528);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v531, v530, *MEMORY[0x277D2C188]);

  v532 = MEMORY[0x277CCABB0];
  v533 = *(*(a1 + 32) + 8);
  v534 = *(v533 + 24);
  *(v533 + 24) = v534 + 1;
  v536 = objc_msgSend_numberWithInteger_(v532, v535, v534);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v537, v536, *MEMORY[0x277D2C1C8]);

  v538 = MEMORY[0x277CCABB0];
  v539 = *(*(a1 + 32) + 8);
  v540 = *(v539 + 24);
  *(v539 + 24) = v540 + 1;
  v542 = objc_msgSend_numberWithInteger_(v538, v541, v540);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v543, v542, *MEMORY[0x277D2C518]);

  v544 = MEMORY[0x277CCABB0];
  v545 = *(*(a1 + 32) + 8);
  v546 = *(v545 + 24);
  *(v545 + 24) = v546 + 1;
  v548 = objc_msgSend_numberWithInteger_(v544, v547, v546);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v549, v548, *MEMORY[0x277D2C218]);

  v550 = MEMORY[0x277CCABB0];
  v551 = *(*(a1 + 32) + 8);
  v552 = *(v551 + 24);
  *(v551 + 24) = v552 + 1;
  v554 = objc_msgSend_numberWithInteger_(v550, v553, v552);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v555, v554, *MEMORY[0x277D2C4A8]);

  v556 = MEMORY[0x277CCABB0];
  v557 = *(*(a1 + 32) + 8);
  v558 = *(v557 + 24);
  *(v557 + 24) = v558 + 1;
  v560 = objc_msgSend_numberWithInteger_(v556, v559, v558);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v561, v560, *MEMORY[0x277D2C208]);

  v562 = MEMORY[0x277CCABB0];
  v563 = *(*(a1 + 32) + 8);
  v564 = *(v563 + 24);
  *(v563 + 24) = v564 + 1;
  v566 = objc_msgSend_numberWithInteger_(v562, v565, v564);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v567, v566, *MEMORY[0x277D2C220]);

  v568 = MEMORY[0x277CCABB0];
  v569 = *(*(a1 + 32) + 8);
  v570 = *(v569 + 24);
  *(v569 + 24) = v570 + 1;
  v572 = objc_msgSend_numberWithInteger_(v568, v571, v570);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v573, v572, *MEMORY[0x277D2C178]);

  v574 = MEMORY[0x277CCABB0];
  v575 = *(*(a1 + 32) + 8);
  v576 = *(v575 + 24);
  *(v575 + 24) = v576 + 1;
  v578 = objc_msgSend_numberWithInteger_(v574, v577, v576);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v579, v578, v2204);

  v580 = MEMORY[0x277CCABB0];
  v581 = *(*(a1 + 32) + 8);
  v582 = *(v581 + 24);
  *(v581 + 24) = v582 + 1;
  v584 = objc_msgSend_numberWithInteger_(v580, v583, v582);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v585, v584, *MEMORY[0x277D2C4C0]);

  v586 = MEMORY[0x277CCABB0];
  v587 = *(*(a1 + 32) + 8);
  v588 = *(v587 + 24);
  *(v587 + 24) = v588 + 1;
  v590 = objc_msgSend_numberWithInteger_(v586, v589, v588);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v591, v590, v2177);

  v592 = MEMORY[0x277CCABB0];
  v593 = *(*(a1 + 32) + 8);
  v594 = *(v593 + 24);
  *(v593 + 24) = v594 + 1;
  v596 = objc_msgSend_numberWithInteger_(v592, v595, v594);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v597, v596, v192);

  v598 = MEMORY[0x277CCABB0];
  v599 = *(*(a1 + 32) + 8);
  v600 = *(v599 + 24);
  *(v599 + 24) = v600 + 1;
  v602 = objc_msgSend_numberWithInteger_(v598, v601, v600);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v603, v602, v2194);

  v604 = MEMORY[0x277CCABB0];
  v605 = *(*(a1 + 32) + 8);
  v606 = *(v605 + 24);
  *(v605 + 24) = v606 + 1;
  v608 = objc_msgSend_numberWithInteger_(v604, v607, v606);
  v609 = *MEMORY[0x277D2C1E0];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v610, v608, *MEMORY[0x277D2C1E0]);

  v611 = MEMORY[0x277CCABB0];
  v612 = *(*(a1 + 32) + 8);
  v613 = *(v612 + 24);
  *(v612 + 24) = v613 + 1;
  v615 = objc_msgSend_numberWithInteger_(v611, v614, v613);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v616, v615, v2171);

  v617 = MEMORY[0x277CCABB0];
  v618 = *(*(a1 + 32) + 8);
  v619 = *(v618 + 24);
  *(v618 + 24) = v619 + 1;
  v621 = objc_msgSend_numberWithInteger_(v617, v620, v619);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v622, v621, *MEMORY[0x277D2C658]);

  v623 = MEMORY[0x277CCABB0];
  v624 = *(*(a1 + 32) + 8);
  v625 = *(v624 + 24);
  *(v624 + 24) = v625 + 1;
  v627 = objc_msgSend_numberWithInteger_(v623, v626, v625);
  v2178 = *MEMORY[0x277D2C698];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v628, v627);

  v629 = MEMORY[0x277CCABB0];
  v630 = *(*(a1 + 32) + 8);
  v631 = *(v630 + 24);
  *(v630 + 24) = v631 + 1;
  v633 = objc_msgSend_numberWithInteger_(v629, v632, v631);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v634, v633, *MEMORY[0x277D2C6C0]);

  v635 = MEMORY[0x277CCABB0];
  v636 = *(*(a1 + 32) + 8);
  v637 = *(v636 + 24);
  *(v636 + 24) = v637 + 1;
  v639 = objc_msgSend_numberWithInteger_(v635, v638, v637);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v640, v639, *MEMORY[0x277D2C1F8]);

  v641 = MEMORY[0x277CCABB0];
  v642 = *(*(a1 + 32) + 8);
  v643 = *(v642 + 24);
  *(v642 + 24) = v643 + 1;
  v645 = objc_msgSend_numberWithInteger_(v641, v644, v643);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v646, v645, *MEMORY[0x277D2C4E8]);

  v647 = MEMORY[0x277CCABB0];
  v648 = *(*(a1 + 32) + 8);
  v649 = *(v648 + 24);
  *(v648 + 24) = v649 + 1;
  v651 = objc_msgSend_numberWithInteger_(v647, v650, v649);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v652, v651, *MEMORY[0x277D2C638]);

  v653 = MEMORY[0x277CCABB0];
  v654 = *(*(a1 + 32) + 8);
  v655 = *(v654 + 24);
  *(v654 + 24) = v655 + 1;
  v657 = objc_msgSend_numberWithInteger_(v653, v656, v655);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v658, v657, *MEMORY[0x277D2C238]);

  v659 = MEMORY[0x277CCABB0];
  v660 = *(*(a1 + 32) + 8);
  v661 = *(v660 + 24);
  *(v660 + 24) = v661 + 1;
  v663 = objc_msgSend_numberWithInteger_(v659, v662, v661);
  v664 = *MEMORY[0x277D2C1B8];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v665, v663, *MEMORY[0x277D2C1B8]);

  v666 = MEMORY[0x277CCABB0];
  v667 = *(*(a1 + 32) + 8);
  v668 = *(v667 + 24);
  *(v667 + 24) = v668 + 1;
  v670 = objc_msgSend_numberWithInteger_(v666, v669, v668);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v671, v670, *MEMORY[0x277D2C1A0]);

  v672 = MEMORY[0x277CCABB0];
  v673 = *(*(a1 + 32) + 8);
  v674 = *(v673 + 24);
  *(v673 + 24) = v674 + 1;
  v676 = objc_msgSend_numberWithInteger_(v672, v675, v674);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v677, v676, *MEMORY[0x277D2C170]);

  v678 = MEMORY[0x277CCABB0];
  v679 = *(*(a1 + 32) + 8);
  v680 = *(v679 + 24);
  *(v679 + 24) = v680 + 1;
  v682 = objc_msgSend_numberWithInteger_(v678, v681, v680);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v683, v682, *MEMORY[0x277D2C200]);

  v684 = MEMORY[0x277CCABB0];
  v685 = *(*(a1 + 32) + 8);
  v686 = *(v685 + 24);
  *(v685 + 24) = v686 + 1;
  v688 = objc_msgSend_numberWithInteger_(v684, v687, v686);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v689, v688, *MEMORY[0x277D2C4F0]);

  v690 = MEMORY[0x277CCABB0];
  v691 = *(*(a1 + 32) + 8);
  v692 = *(v691 + 24);
  *(v691 + 24) = v692 + 1;
  v694 = objc_msgSend_numberWithInteger_(v690, v693, v692);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v695, v694, *MEMORY[0x277D2C1C0]);

  v696 = MEMORY[0x277CCABB0];
  v697 = *(*(a1 + 32) + 8);
  v698 = *(v697 + 24);
  *(v697 + 24) = v698 + 1;
  v700 = objc_msgSend_numberWithInteger_(v696, v699, v698);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v701, v700, v2181);

  v702 = MEMORY[0x277CCABB0];
  v703 = *(*(a1 + 32) + 8);
  v704 = *(v703 + 24);
  *(v703 + 24) = v704 + 1;
  v706 = objc_msgSend_numberWithInteger_(v702, v705, v704);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v707, v706, v2208);

  v708 = MEMORY[0x277CCABB0];
  v709 = *(*(a1 + 32) + 8);
  v710 = *(v709 + 24);
  *(v709 + 24) = v710 + 1;
  v712 = objc_msgSend_numberWithInteger_(v708, v711, v710);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v713, v712, v2188);

  v714 = MEMORY[0x277CCABB0];
  v715 = *(*(a1 + 32) + 8);
  v716 = *(v715 + 24);
  *(v715 + 24) = v716 + 1;
  v718 = objc_msgSend_numberWithInteger_(v714, v717, v716);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v719, v718, *MEMORY[0x277D2C250]);

  v720 = MEMORY[0x277CCABB0];
  v721 = *(*(a1 + 32) + 8);
  v722 = *(v721 + 24);
  *(v721 + 24) = v722 + 1;
  v724 = objc_msgSend_numberWithInteger_(v720, v723, v722);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v725, v724, v2174);

  v726 = MEMORY[0x277CCABB0];
  v727 = *(*(a1 + 32) + 8);
  v728 = *(v727 + 24);
  *(v727 + 24) = v728 + 1;
  v730 = objc_msgSend_numberWithInteger_(v726, v729, v728);
  v731 = qword_27E1E3110;
  v733 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v732, v2150, *MEMORY[0x277D2C2D0]);
  objc_msgSend_setObject_forKeyedSubscript_(v731, v734, v730, v733);

  v735 = MEMORY[0x277CCABB0];
  v736 = *(*(a1 + 32) + 8);
  v737 = *(v736 + 24);
  *(v736 + 24) = v737 + 1;
  v739 = objc_msgSend_numberWithInteger_(v735, v738, v737);
  v740 = qword_27E1E3110;
  v742 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v741, v609, v664);
  objc_msgSend_setObject_forKeyedSubscript_(v740, v743, v739, v742);

  v744 = MEMORY[0x277CCABB0];
  v745 = *(*(a1 + 32) + 8);
  v746 = *(v745 + 24);
  *(v745 + 24) = v746 + 1;
  v748 = objc_msgSend_numberWithInteger_(v744, v747, v746);
  v749 = qword_27E1E3110;
  v751 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v750, v2223, *MEMORY[0x277D2C2A8]);
  objc_msgSend_setObject_forKeyedSubscript_(v749, v752, v748, v751);

  v753 = MEMORY[0x277CCABB0];
  v754 = *(*(a1 + 32) + 8);
  v755 = *(v754 + 24);
  *(v754 + 24) = v755 + 1;
  v757 = objc_msgSend_numberWithInteger_(v753, v756, v755);
  v758 = qword_27E1E3110;
  v759 = *MEMORY[0x277D2C290];
  v761 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v760, *MEMORY[0x277D2C290], *MEMORY[0x277D2C298]);
  objc_msgSend_setObject_forKeyedSubscript_(v758, v762, v757, v761);

  v763 = MEMORY[0x277CCABB0];
  v764 = *(*(a1 + 32) + 8);
  v765 = *(v764 + 24);
  *(v764 + 24) = v765 + 1;
  v767 = objc_msgSend_numberWithInteger_(v763, v766, v765);
  v768 = qword_27E1E3110;
  v769 = *MEMORY[0x277D2C2C0];
  v770 = *MEMORY[0x277D2C2B0];
  v772 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v771, *MEMORY[0x277D2C2C0], *MEMORY[0x277D2C2B0]);
  objc_msgSend_setObject_forKeyedSubscript_(v768, v773, v767, v772);

  v774 = MEMORY[0x277CCABB0];
  v775 = *(*(a1 + 32) + 8);
  v776 = *(v775 + 24);
  *(v775 + 24) = v776 + 1;
  v778 = objc_msgSend_numberWithInteger_(v774, v777, v776);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v779, v778, *MEMORY[0x277D2C2B8]);

  v780 = MEMORY[0x277CCABB0];
  v781 = *(*(a1 + 32) + 8);
  v782 = *(v781 + 24);
  *(v781 + 24) = v782 + 1;
  v784 = objc_msgSend_numberWithInteger_(v780, v783, v782);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v785, v784, *MEMORY[0x277D2C2A0]);

  v786 = MEMORY[0x277CCABB0];
  v787 = *(*(a1 + 32) + 8);
  v788 = *(v787 + 24);
  *(v787 + 24) = v788 + 1;
  v790 = objc_msgSend_numberWithInteger_(v786, v789, v788);
  v2195 = *MEMORY[0x277D2C2C8];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v791, v790);

  v792 = MEMORY[0x277CCABB0];
  v793 = *(*(a1 + 32) + 8);
  v794 = *(v793 + 24);
  *(v793 + 24) = v794 + 1;
  v796 = objc_msgSend_numberWithInteger_(v792, v795, v794);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v797, v796, v769);

  v798 = MEMORY[0x277CCABB0];
  v799 = *(*(a1 + 32) + 8);
  v800 = *(v799 + 24);
  *(v799 + 24) = v800 + 1;
  v802 = objc_msgSend_numberWithInteger_(v798, v801, v800);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v803, v802, v759);

  v804 = MEMORY[0x277CCABB0];
  v805 = *(*(a1 + 32) + 8);
  v806 = *(v805 + 24);
  *(v805 + 24) = v806 + 1;
  v808 = objc_msgSend_numberWithInteger_(v804, v807, v806);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v809, v808, v770);

  v810 = MEMORY[0x277CCABB0];
  v811 = *(*(a1 + 32) + 8);
  v812 = *(v811 + 24);
  *(v811 + 24) = v812 + 1;
  v814 = objc_msgSend_numberWithInteger_(v810, v813, v812);
  v2189 = *MEMORY[0x277D2C580];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v815, v814);

  v816 = MEMORY[0x277CCABB0];
  v817 = *(*(a1 + 32) + 8);
  v818 = *(v817 + 24);
  *(v817 + 24) = v818 + 1;
  v820 = objc_msgSend_numberWithInteger_(v816, v819, v818);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v821, v820, *MEMORY[0x277D2C588]);

  v822 = MEMORY[0x277CCABB0];
  v823 = *(*(a1 + 32) + 8);
  v824 = *(v823 + 24);
  *(v823 + 24) = v824 + 1;
  v826 = objc_msgSend_numberWithInteger_(v822, v825, v824);
  v827 = *MEMORY[0x277D2C590];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v828, v826, *MEMORY[0x277D2C590]);

  v829 = MEMORY[0x277CCABB0];
  v830 = *(*(a1 + 32) + 8);
  v831 = *(v830 + 24);
  *(v830 + 24) = v831 + 1;
  v833 = objc_msgSend_numberWithInteger_(v829, v832, v831);
  v834 = *MEMORY[0x277D2C5B0];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v835, v833, *MEMORY[0x277D2C5B0]);

  v836 = MEMORY[0x277CCABB0];
  v837 = *(*(a1 + 32) + 8);
  v838 = *(v837 + 24);
  *(v837 + 24) = v838 + 1;
  v840 = objc_msgSend_numberWithInteger_(v836, v839, v838);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v841, v840, *MEMORY[0x277D2C5B8]);

  v842 = MEMORY[0x277CCABB0];
  v843 = *(*(a1 + 32) + 8);
  v844 = *(v843 + 24);
  *(v843 + 24) = v844 + 1;
  v846 = objc_msgSend_numberWithInteger_(v842, v845, v844);
  v847 = qword_27E1E3110;
  v849 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v848, v2197, v2169);
  objc_msgSend_setObject_forKeyedSubscript_(v847, v850, v846, v849);

  v851 = MEMORY[0x277CCABB0];
  v852 = *(*(a1 + 32) + 8);
  v853 = *(v852 + 24);
  *(v852 + 24) = v853 + 1;
  v855 = objc_msgSend_numberWithInteger_(v851, v854, v853);
  v856 = qword_27E1E3110;
  v858 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v857, *MEMORY[0x277D2C598], *MEMORY[0x277D2C5A0]);
  objc_msgSend_setObject_forKeyedSubscript_(v856, v859, v855, v858);

  v860 = MEMORY[0x277CCABB0];
  v861 = *(*(a1 + 32) + 8);
  v862 = *(v861 + 24);
  *(v861 + 24) = v862 + 1;
  v864 = objc_msgSend_numberWithInteger_(v860, v863, v862);
  v865 = qword_27E1E3110;
  v867 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v866, *MEMORY[0x277D2C5A8], v2166);
  objc_msgSend_setObject_forKeyedSubscript_(v865, v868, v864, v867);

  v869 = MEMORY[0x277CCABB0];
  v870 = *(*(a1 + 32) + 8);
  v871 = *(v870 + 24);
  *(v870 + 24) = v871 + 1;
  v873 = objc_msgSend_numberWithInteger_(v869, v872, v871);
  v874 = qword_27E1E3110;
  v876 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v875, v2199, v827);
  objc_msgSend_setObject_forKeyedSubscript_(v874, v877, v873, v876);

  v878 = MEMORY[0x277CCABB0];
  v879 = *(*(a1 + 32) + 8);
  v880 = *(v879 + 24);
  *(v879 + 24) = v880 + 1;
  v882 = objc_msgSend_numberWithInteger_(v878, v881, v880);
  v883 = qword_27E1E3110;
  v885 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v884, v834, v2178);
  objc_msgSend_setObject_forKeyedSubscript_(v883, v886, v882, v885);

  v887 = MEMORY[0x277CCABB0];
  v888 = *(*(a1 + 32) + 8);
  v889 = *(v888 + 24);
  *(v888 + 24) = v889 + 1;
  v891 = objc_msgSend_numberWithInteger_(v887, v890, v889);
  v892 = *MEMORY[0x277D2C2E8];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v893, v891, *MEMORY[0x277D2C2E8]);

  v894 = MEMORY[0x277CCABB0];
  v895 = *(*(a1 + 32) + 8);
  v896 = *(v895 + 24);
  *(v895 + 24) = v896 + 1;
  v898 = objc_msgSend_numberWithInteger_(v894, v897, v896);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v899, v898, *MEMORY[0x277D2C300]);

  v900 = MEMORY[0x277CCABB0];
  v901 = *(*(a1 + 32) + 8);
  v902 = *(v901 + 24);
  *(v901 + 24) = v902 + 1;
  v904 = objc_msgSend_numberWithInteger_(v900, v903, v902);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v905, v904, *MEMORY[0x277D2C2D8]);

  v906 = MEMORY[0x277CCABB0];
  v907 = *(*(a1 + 32) + 8);
  v908 = *(v907 + 24);
  *(v907 + 24) = v908 + 1;
  v910 = objc_msgSend_numberWithInteger_(v906, v909, v908);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v911, v910, *MEMORY[0x277D2C2F0]);

  v912 = MEMORY[0x277CCABB0];
  v913 = *(*(a1 + 32) + 8);
  v914 = *(v913 + 24);
  *(v913 + 24) = v914 + 1;
  v916 = objc_msgSend_numberWithInteger_(v912, v915, v914);
  v917 = *MEMORY[0x277D2C2F8];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v918, v916, *MEMORY[0x277D2C2F8]);

  v919 = MEMORY[0x277CCABB0];
  v920 = *(*(a1 + 32) + 8);
  v921 = *(v920 + 24);
  *(v920 + 24) = v921 + 1;
  v923 = objc_msgSend_numberWithInteger_(v919, v922, v921);
  v924 = *MEMORY[0x277D2C308];
  v2200 = *MEMORY[0x277D2C308];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v925, v923, *MEMORY[0x277D2C308]);

  v926 = MEMORY[0x277CCABB0];
  v927 = *(*(a1 + 32) + 8);
  v928 = *(v927 + 24);
  *(v927 + 24) = v928 + 1;
  v930 = objc_msgSend_numberWithInteger_(v926, v929, v928);
  v931 = qword_27E1E3110;
  v933 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v932, v892, v2223);
  objc_msgSend_setObject_forKeyedSubscript_(v931, v934, v930, v933);

  v935 = MEMORY[0x277CCABB0];
  v936 = *(*(a1 + 32) + 8);
  v937 = *(v936 + 24);
  *(v936 + 24) = v937 + 1;
  v939 = objc_msgSend_numberWithInteger_(v935, v938, v937);
  v940 = qword_27E1E3110;
  v942 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v941, v2204, v834);
  objc_msgSend_setObject_forKeyedSubscript_(v940, v943, v939, v942);

  v944 = MEMORY[0x277CCABB0];
  v945 = *(*(a1 + 32) + 8);
  v946 = *(v945 + 24);
  *(v945 + 24) = v946 + 1;
  v948 = objc_msgSend_numberWithInteger_(v944, v947, v946);
  v949 = qword_27E1E3110;
  v951 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v950, v2195, v924);
  objc_msgSend_setObject_forKeyedSubscript_(v949, v952, v948, v951);

  v953 = MEMORY[0x277CCABB0];
  v954 = *(*(a1 + 32) + 8);
  v955 = *(v954 + 24);
  *(v954 + 24) = v955 + 1;
  v957 = objc_msgSend_numberWithInteger_(v953, v956, v955);
  v958 = qword_27E1E3110;
  v960 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v959, v2195, v2163);
  objc_msgSend_setObject_forKeyedSubscript_(v958, v961, v957, v960);

  v962 = MEMORY[0x277CCABB0];
  v963 = *(*(a1 + 32) + 8);
  v964 = *(v963 + 24);
  *(v963 + 24) = v964 + 1;
  v966 = objc_msgSend_numberWithInteger_(v962, v965, v964);
  v967 = qword_27E1E3110;
  v969 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v968, v2195, v2208);
  objc_msgSend_setObject_forKeyedSubscript_(v967, v970, v966, v969);

  v971 = MEMORY[0x277CCABB0];
  v972 = *(*(a1 + 32) + 8);
  v973 = *(v972 + 24);
  *(v972 + 24) = v973 + 1;
  v975 = objc_msgSend_numberWithInteger_(v971, v974, v973);
  v976 = qword_27E1E3110;
  v978 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v977, v917, v2185);
  objc_msgSend_setObject_forKeyedSubscript_(v976, v979, v975, v978);

  v980 = MEMORY[0x277CCABB0];
  v981 = *(*(a1 + 32) + 8);
  v982 = *(v981 + 24);
  *(v981 + 24) = v982 + 1;
  v984 = objc_msgSend_numberWithInteger_(v980, v983, v982);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v985, v984, *MEMORY[0x277D2C5C8]);

  v986 = MEMORY[0x277CCABB0];
  v987 = *(*(a1 + 32) + 8);
  v988 = *(v987 + 24);
  *(v987 + 24) = v988 + 1;
  v990 = objc_msgSend_numberWithInteger_(v986, v989, v988);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v991, v990, *MEMORY[0x277D2C5C0]);

  v992 = MEMORY[0x277CCABB0];
  v993 = *(*(a1 + 32) + 8);
  v994 = *(v993 + 24);
  *(v993 + 24) = v994 + 1;
  v996 = objc_msgSend_numberWithInteger_(v992, v995, v994);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v997, v996, *MEMORY[0x277D2C5D0]);

  v998 = MEMORY[0x277CCABB0];
  v999 = *(*(a1 + 32) + 8);
  v1000 = *(v999 + 24);
  *(v999 + 24) = v1000 + 1;
  v1002 = objc_msgSend_numberWithInteger_(v998, v1001, v1000);
  v2224 = *MEMORY[0x277D2C330];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1003, v1002);

  v1004 = MEMORY[0x277CCABB0];
  v1005 = *(*(a1 + 32) + 8);
  v1006 = *(v1005 + 24);
  *(v1005 + 24) = v1006 + 1;
  v1008 = objc_msgSend_numberWithInteger_(v1004, v1007, v1006);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1009, v1008, *MEMORY[0x277D2C348]);

  v1010 = MEMORY[0x277CCABB0];
  v1011 = *(*(a1 + 32) + 8);
  v1012 = *(v1011 + 24);
  *(v1011 + 24) = v1012 + 1;
  v1014 = objc_msgSend_numberWithInteger_(v1010, v1013, v1012);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1015, v1014, *MEMORY[0x277D2C310]);

  v1016 = MEMORY[0x277CCABB0];
  v1017 = *(*(a1 + 32) + 8);
  v1018 = *(v1017 + 24);
  *(v1017 + 24) = v1018 + 1;
  v1020 = objc_msgSend_numberWithInteger_(v1016, v1019, v1018);
  v2209 = *MEMORY[0x277D2C338];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1021, v1020);

  v1022 = MEMORY[0x277CCABB0];
  v1023 = *(*(a1 + 32) + 8);
  v1024 = *(v1023 + 24);
  *(v1023 + 24) = v1024 + 1;
  v1026 = objc_msgSend_numberWithInteger_(v1022, v1025, v1024);
  v1027 = *MEMORY[0x277D2C358];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1028, v1026, *MEMORY[0x277D2C358]);

  v1029 = MEMORY[0x277CCABB0];
  v1030 = *(*(a1 + 32) + 8);
  v1031 = *(v1030 + 24);
  *(v1030 + 24) = v1031 + 1;
  v1033 = objc_msgSend_numberWithInteger_(v1029, v1032, v1031);
  v1034 = *MEMORY[0x277D2C340];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1035, v1033, *MEMORY[0x277D2C340]);

  v1036 = MEMORY[0x277CCABB0];
  v1037 = *(*(a1 + 32) + 8);
  v1038 = *(v1037 + 24);
  *(v1037 + 24) = v1038 + 1;
  v1040 = objc_msgSend_numberWithInteger_(v1036, v1039, v1038);
  v1041 = *MEMORY[0x277D2C318];
  v2179 = *MEMORY[0x277D2C318];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1042, v1040, *MEMORY[0x277D2C318]);

  v1043 = MEMORY[0x277CCABB0];
  v1044 = *(*(a1 + 32) + 8);
  v1045 = *(v1044 + 24);
  *(v1044 + 24) = v1045 + 1;
  v1047 = objc_msgSend_numberWithInteger_(v1043, v1046, v1045);
  v1048 = *MEMORY[0x277D2C320];
  v2182 = *MEMORY[0x277D2C320];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1049, v1047, *MEMORY[0x277D2C320]);

  v1050 = MEMORY[0x277CCABB0];
  v1051 = *(*(a1 + 32) + 8);
  v1052 = *(v1051 + 24);
  *(v1051 + 24) = v1052 + 1;
  v1054 = objc_msgSend_numberWithInteger_(v1050, v1053, v1052);
  v2186 = *MEMORY[0x277D2C350];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1055, v1054);

  v1056 = MEMORY[0x277CCABB0];
  v1057 = *(*(a1 + 32) + 8);
  v1058 = *(v1057 + 24);
  *(v1057 + 24) = v1058 + 1;
  v1060 = objc_msgSend_numberWithInteger_(v1056, v1059, v1058);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1061, v1060, v2213);

  v1062 = MEMORY[0x277CCABB0];
  v1063 = *(*(a1 + 32) + 8);
  v1064 = *(v1063 + 24);
  *(v1063 + 24) = v1064 + 1;
  v1066 = objc_msgSend_numberWithInteger_(v1062, v1065, v1064);
  v1067 = qword_27E1E3110;
  v1069 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v1068, v2224, v1048);
  objc_msgSend_setObject_forKeyedSubscript_(v1067, v1070, v1066, v1069);

  v1071 = MEMORY[0x277CCABB0];
  v1072 = *(*(a1 + 32) + 8);
  v1073 = *(v1072 + 24);
  *(v1072 + 24) = v1073 + 1;
  v1075 = objc_msgSend_numberWithInteger_(v1071, v1074, v1073);
  v1076 = qword_27E1E3110;
  v1078 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v1077, v1041, *MEMORY[0x277D2C168]);
  objc_msgSend_setObject_forKeyedSubscript_(v1076, v1079, v1075, v1078);

  v1080 = MEMORY[0x277CCABB0];
  v1081 = *(*(a1 + 32) + 8);
  v1082 = *(v1081 + 24);
  *(v1081 + 24) = v1082 + 1;
  v1084 = objc_msgSend_numberWithInteger_(v1080, v1083, v1082);
  v1085 = qword_27E1E3110;
  v1087 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v1086, v1027, v2209);
  objc_msgSend_setObject_forKeyedSubscript_(v1085, v1088, v1084, v1087);

  v1089 = MEMORY[0x277CCABB0];
  v1090 = *(*(a1 + 32) + 8);
  v1091 = *(v1090 + 24);
  *(v1090 + 24) = v1091 + 1;
  v1093 = objc_msgSend_numberWithInteger_(v1089, v1092, v1091);
  v1094 = qword_27E1E3110;
  v1096 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v1095, v2195, v1034);
  objc_msgSend_setObject_forKeyedSubscript_(v1094, v1097, v1093, v1096);

  v1098 = MEMORY[0x277CCABB0];
  v1099 = *(*(a1 + 32) + 8);
  v1100 = *(v1099 + 24);
  *(v1099 + 24) = v1100 + 1;
  v1102 = objc_msgSend_numberWithInteger_(v1098, v1101, v1100);
  v1103 = qword_27E1E3110;
  v1105 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v1104, v2195, v1027);
  objc_msgSend_setObject_forKeyedSubscript_(v1103, v1106, v1102, v1105);

  v1107 = MEMORY[0x277CCABB0];
  v1108 = *(*(a1 + 32) + 8);
  v1109 = *(v1108 + 24);
  *(v1108 + 24) = v1109 + 1;
  v1111 = objc_msgSend_numberWithInteger_(v1107, v1110, v1109);
  v1112 = qword_27E1E3110;
  v1114 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v1113, v1034, v1027);
  objc_msgSend_setObject_forKeyedSubscript_(v1112, v1115, v1111, v1114);

  v1116 = MEMORY[0x277CCABB0];
  v1117 = *(*(a1 + 32) + 8);
  v1118 = *(v1117 + 24);
  *(v1117 + 24) = v1118 + 1;
  v1120 = objc_msgSend_numberWithInteger_(v1116, v1119, v1118);
  v2196 = *MEMORY[0x277D2C5D8];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1121, v1120);

  v1122 = MEMORY[0x277CCABB0];
  v1123 = *(*(a1 + 32) + 8);
  v1124 = *(v1123 + 24);
  *(v1123 + 24) = v1124 + 1;
  v1126 = objc_msgSend_numberWithInteger_(v1122, v1125, v1124);
  v2198 = *MEMORY[0x277D2C600];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1127, v1126);

  v1128 = MEMORY[0x277CCABB0];
  v1129 = *(*(a1 + 32) + 8);
  v1130 = *(v1129 + 24);
  *(v1129 + 24) = v1130 + 1;
  v1132 = objc_msgSend_numberWithInteger_(v1128, v1131, v1130);
  v2205 = *MEMORY[0x277D2C5F8];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1133, v1132);

  v1134 = MEMORY[0x277CCABB0];
  v1135 = *(*(a1 + 32) + 8);
  v1136 = *(v1135 + 24);
  *(v1135 + 24) = v1136 + 1;
  v1138 = objc_msgSend_numberWithInteger_(v1134, v1137, v1136);
  v2210 = *MEMORY[0x277D2C5E0];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1139, v1138);

  v1140 = MEMORY[0x277CCABB0];
  v1141 = *(*(a1 + 32) + 8);
  v1142 = *(v1141 + 24);
  *(v1141 + 24) = v1142 + 1;
  v1144 = objc_msgSend_numberWithInteger_(v1140, v1143, v1142);
  v2214 = *MEMORY[0x277D2C5E8];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1145, v1144);

  v1146 = MEMORY[0x277CCABB0];
  v1147 = *(*(a1 + 32) + 8);
  v1148 = *(v1147 + 24);
  *(v1147 + 24) = v1148 + 1;
  v1150 = objc_msgSend_numberWithInteger_(v1146, v1149, v1148);
  v2225 = *MEMORY[0x277D2C5F0];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1151, v1150);

  v1152 = MEMORY[0x277CCABB0];
  v1153 = *(*(a1 + 32) + 8);
  v1154 = *(v1153 + 24);
  *(v1153 + 24) = v1154 + 1;
  v1156 = objc_msgSend_numberWithInteger_(v1152, v1155, v1154);
  v1157 = *MEMORY[0x277D2C748];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1158, v1156, *MEMORY[0x277D2C748]);

  v1159 = MEMORY[0x277CCABB0];
  v1160 = *(*(a1 + 32) + 8);
  v1161 = *(v1160 + 24);
  *(v1160 + 24) = v1161 + 1;
  v1163 = objc_msgSend_numberWithInteger_(v1159, v1162, v1161);
  v1164 = *MEMORY[0x277D2C728];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1165, v1163, *MEMORY[0x277D2C728]);

  v1166 = MEMORY[0x277CCABB0];
  v1167 = *(*(a1 + 32) + 8);
  v1168 = *(v1167 + 24);
  *(v1167 + 24) = v1168 + 1;
  v1170 = objc_msgSend_numberWithInteger_(v1166, v1169, v1168);
  v1171 = *MEMORY[0x277D2C700];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1172, v1170, *MEMORY[0x277D2C700]);

  v1173 = MEMORY[0x277CCABB0];
  v1174 = *(*(a1 + 32) + 8);
  v1175 = *(v1174 + 24);
  *(v1174 + 24) = v1175 + 1;
  v1177 = objc_msgSend_numberWithInteger_(v1173, v1176, v1175);
  v2141 = *MEMORY[0x277D2C760];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1178, v1177);

  v1179 = MEMORY[0x277CCABB0];
  v1180 = *(*(a1 + 32) + 8);
  v1181 = *(v1180 + 24);
  *(v1180 + 24) = v1181 + 1;
  v1183 = objc_msgSend_numberWithInteger_(v1179, v1182, v1181);
  v2143 = *MEMORY[0x277D2C718];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1184, v1183);

  v1185 = MEMORY[0x277CCABB0];
  v1186 = *(*(a1 + 32) + 8);
  v1187 = *(v1186 + 24);
  *(v1186 + 24) = v1187 + 1;
  v1189 = objc_msgSend_numberWithInteger_(v1185, v1188, v1187);
  v2145 = *MEMORY[0x277D2C6F8];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1190, v1189);

  v1191 = MEMORY[0x277CCABB0];
  v1192 = *(*(a1 + 32) + 8);
  v1193 = *(v1192 + 24);
  *(v1192 + 24) = v1193 + 1;
  v1195 = objc_msgSend_numberWithInteger_(v1191, v1194, v1193);
  v2147 = *MEMORY[0x277D2C6E8];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1196, v1195);

  v1197 = MEMORY[0x277CCABB0];
  v1198 = *(*(a1 + 32) + 8);
  v1199 = *(v1198 + 24);
  *(v1198 + 24) = v1199 + 1;
  v1201 = objc_msgSend_numberWithInteger_(v1197, v1200, v1199);
  v2149 = *MEMORY[0x277D2C6F0];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1202, v1201);

  v1203 = MEMORY[0x277CCABB0];
  v1204 = *(*(a1 + 32) + 8);
  v1205 = *(v1204 + 24);
  *(v1204 + 24) = v1205 + 1;
  v1207 = objc_msgSend_numberWithInteger_(v1203, v1206, v1205);
  v2151 = *MEMORY[0x277D2C6D0];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1208, v1207);

  v1209 = MEMORY[0x277CCABB0];
  v1210 = *(*(a1 + 32) + 8);
  v1211 = *(v1210 + 24);
  *(v1210 + 24) = v1211 + 1;
  v1213 = objc_msgSend_numberWithInteger_(v1209, v1212, v1211);
  v2153 = *MEMORY[0x277D2C720];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1214, v1213);

  v1215 = MEMORY[0x277CCABB0];
  v1216 = *(*(a1 + 32) + 8);
  v1217 = *(v1216 + 24);
  *(v1216 + 24) = v1217 + 1;
  v1219 = objc_msgSend_numberWithInteger_(v1215, v1218, v1217);
  v2155 = *MEMORY[0x277D2C740];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1220, v1219);

  v1221 = MEMORY[0x277CCABB0];
  v1222 = *(*(a1 + 32) + 8);
  v1223 = *(v1222 + 24);
  *(v1222 + 24) = v1223 + 1;
  v1225 = objc_msgSend_numberWithInteger_(v1221, v1224, v1223);
  v2157 = *MEMORY[0x277D2C710];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1226, v1225);

  v1227 = MEMORY[0x277CCABB0];
  v1228 = *(*(a1 + 32) + 8);
  v1229 = *(v1228 + 24);
  *(v1228 + 24) = v1229 + 1;
  v1231 = objc_msgSend_numberWithInteger_(v1227, v1230, v1229);
  v2159 = *MEMORY[0x277D2C708];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1232, v1231);

  v1233 = MEMORY[0x277CCABB0];
  v1234 = *(*(a1 + 32) + 8);
  v1235 = *(v1234 + 24);
  *(v1234 + 24) = v1235 + 1;
  v1237 = objc_msgSend_numberWithInteger_(v1233, v1236, v1235);
  v2161 = *MEMORY[0x277D2C730];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1238, v1237);

  v1239 = MEMORY[0x277CCABB0];
  v1240 = *(*(a1 + 32) + 8);
  v1241 = *(v1240 + 24);
  *(v1240 + 24) = v1241 + 1;
  v1243 = objc_msgSend_numberWithInteger_(v1239, v1242, v1241);
  v2164 = *MEMORY[0x277D2C738];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1244, v1243);

  v1245 = MEMORY[0x277CCABB0];
  v1246 = *(*(a1 + 32) + 8);
  v1247 = *(v1246 + 24);
  *(v1246 + 24) = v1247 + 1;
  v1249 = objc_msgSend_numberWithInteger_(v1245, v1248, v1247);
  v2167 = *MEMORY[0x277D2C750];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1250, v1249);

  v1251 = MEMORY[0x277CCABB0];
  v1252 = *(*(a1 + 32) + 8);
  v1253 = *(v1252 + 24);
  *(v1252 + 24) = v1253 + 1;
  v1255 = objc_msgSend_numberWithInteger_(v1251, v1254, v1253);
  v2170 = *MEMORY[0x277D2C758];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1256, v1255);

  v1257 = MEMORY[0x277CCABB0];
  v1258 = *(*(a1 + 32) + 8);
  v1259 = *(v1258 + 24);
  *(v1258 + 24) = v1259 + 1;
  v1261 = objc_msgSend_numberWithInteger_(v1257, v1260, v1259);
  v2172 = *MEMORY[0x277D2C6D8];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1262, v1261);

  v1263 = MEMORY[0x277CCABB0];
  v1264 = *(*(a1 + 32) + 8);
  v1265 = *(v1264 + 24);
  *(v1264 + 24) = v1265 + 1;
  v1267 = objc_msgSend_numberWithInteger_(v1263, v1266, v1265);
  v2175 = *MEMORY[0x277D2C6E0];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1268, v1267);

  v1269 = MEMORY[0x277CCABB0];
  v1270 = *(*(a1 + 32) + 8);
  v1271 = *(v1270 + 24);
  *(v1270 + 24) = v1271 + 1;
  v1273 = objc_msgSend_numberWithInteger_(v1269, v1272, v1271);
  v1274 = qword_27E1E3110;
  v1276 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v1275, v1157);
  objc_msgSend_setObject_forKeyedSubscript_(v1274, v1277, v1273, v1276);

  v1278 = MEMORY[0x277CCABB0];
  v1279 = *(*(a1 + 32) + 8);
  v1280 = *(v1279 + 24);
  *(v1279 + 24) = v1280 + 1;
  v1282 = objc_msgSend_numberWithInteger_(v1278, v1281, v1280);
  v1283 = qword_27E1E3110;
  v1285 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v1284, v1164, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v1283, v1286, v1282, v1285);

  v1287 = MEMORY[0x277CCABB0];
  v1288 = *(*(a1 + 32) + 8);
  v1289 = *(v1288 + 24);
  *(v1288 + 24) = v1289 + 1;
  v1291 = objc_msgSend_numberWithInteger_(v1287, v1290, v1289);
  v1292 = qword_27E1E3110;
  v1294 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v1293, v1171, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v1292, v1295, v1291, v1294);

  v1296 = MEMORY[0x277CCABB0];
  v1297 = *(*(a1 + 32) + 8);
  v1298 = *(v1297 + 24);
  *(v1297 + 24) = v1298 + 1;
  v1300 = objc_msgSend_numberWithInteger_(v1296, v1299, v1298);
  v1301 = qword_27E1E3110;
  v1303 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v1302, v2141, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v1301, v1304, v1300, v1303);

  v1305 = MEMORY[0x277CCABB0];
  v1306 = *(*(a1 + 32) + 8);
  v1307 = *(v1306 + 24);
  *(v1306 + 24) = v1307 + 1;
  v1309 = objc_msgSend_numberWithInteger_(v1305, v1308, v1307);
  v1310 = qword_27E1E3110;
  v1312 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v1311, v2143, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v1310, v1313, v1309, v1312);

  v1314 = MEMORY[0x277CCABB0];
  v1315 = *(*(a1 + 32) + 8);
  v1316 = *(v1315 + 24);
  *(v1315 + 24) = v1316 + 1;
  v1318 = objc_msgSend_numberWithInteger_(v1314, v1317, v1316);
  v1319 = qword_27E1E3110;
  v1321 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v1320, v2145, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v1319, v1322, v1318, v1321);

  v1323 = MEMORY[0x277CCABB0];
  v1324 = *(*(a1 + 32) + 8);
  v1325 = *(v1324 + 24);
  *(v1324 + 24) = v1325 + 1;
  v1327 = objc_msgSend_numberWithInteger_(v1323, v1326, v1325);
  v1328 = qword_27E1E3110;
  v1330 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v1329, v2147, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v1328, v1331, v1327, v1330);

  v1332 = MEMORY[0x277CCABB0];
  v1333 = *(*(a1 + 32) + 8);
  v1334 = *(v1333 + 24);
  *(v1333 + 24) = v1334 + 1;
  v1336 = objc_msgSend_numberWithInteger_(v1332, v1335, v1334);
  v1337 = qword_27E1E3110;
  v1339 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v1338, v2149, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v1337, v1340, v1336, v1339);

  v1341 = MEMORY[0x277CCABB0];
  v1342 = *(*(a1 + 32) + 8);
  v1343 = *(v1342 + 24);
  *(v1342 + 24) = v1343 + 1;
  v1345 = objc_msgSend_numberWithInteger_(v1341, v1344, v1343);
  v1346 = qword_27E1E3110;
  v1348 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v1347, v2151, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v1346, v1349, v1345, v1348);

  v1350 = MEMORY[0x277CCABB0];
  v1351 = *(*(a1 + 32) + 8);
  v1352 = *(v1351 + 24);
  *(v1351 + 24) = v1352 + 1;
  v1354 = objc_msgSend_numberWithInteger_(v1350, v1353, v1352);
  v1355 = qword_27E1E3110;
  v1357 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v1356, v2153, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v1355, v1358, v1354, v1357);

  v1359 = MEMORY[0x277CCABB0];
  v1360 = *(*(a1 + 32) + 8);
  v1361 = *(v1360 + 24);
  *(v1360 + 24) = v1361 + 1;
  v1363 = objc_msgSend_numberWithInteger_(v1359, v1362, v1361);
  v1364 = qword_27E1E3110;
  v1366 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v1365, v2155, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v1364, v1367, v1363, v1366);

  v1368 = MEMORY[0x277CCABB0];
  v1369 = *(*(a1 + 32) + 8);
  v1370 = *(v1369 + 24);
  *(v1369 + 24) = v1370 + 1;
  v1372 = objc_msgSend_numberWithInteger_(v1368, v1371, v1370);
  v1373 = qword_27E1E3110;
  v1375 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v1374, v2157, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v1373, v1376, v1372, v1375);

  v1377 = MEMORY[0x277CCABB0];
  v1378 = *(*(a1 + 32) + 8);
  v1379 = *(v1378 + 24);
  *(v1378 + 24) = v1379 + 1;
  v1381 = objc_msgSend_numberWithInteger_(v1377, v1380, v1379);
  v1382 = qword_27E1E3110;
  v1384 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v1383, v2159, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v1382, v1385, v1381, v1384);

  v1386 = MEMORY[0x277CCABB0];
  v1387 = *(*(a1 + 32) + 8);
  v1388 = *(v1387 + 24);
  *(v1387 + 24) = v1388 + 1;
  v1390 = objc_msgSend_numberWithInteger_(v1386, v1389, v1388);
  v1391 = qword_27E1E3110;
  v1393 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v1392, v2161, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v1391, v1394, v1390, v1393);

  v1395 = MEMORY[0x277CCABB0];
  v1396 = *(*(a1 + 32) + 8);
  v1397 = *(v1396 + 24);
  *(v1396 + 24) = v1397 + 1;
  v1399 = objc_msgSend_numberWithInteger_(v1395, v1398, v1397);
  v1400 = qword_27E1E3110;
  v1402 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v1401, v2164, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v1400, v1403, v1399, v1402);

  v1404 = MEMORY[0x277CCABB0];
  v1405 = *(*(a1 + 32) + 8);
  v1406 = *(v1405 + 24);
  *(v1405 + 24) = v1406 + 1;
  v1408 = objc_msgSend_numberWithInteger_(v1404, v1407, v1406);
  v1409 = qword_27E1E3110;
  v1411 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v1410, v2167, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v1409, v1412, v1408, v1411);

  v1413 = MEMORY[0x277CCABB0];
  v1414 = *(*(a1 + 32) + 8);
  v1415 = *(v1414 + 24);
  *(v1414 + 24) = v1415 + 1;
  v1417 = objc_msgSend_numberWithInteger_(v1413, v1416, v1415);
  v1418 = qword_27E1E3110;
  v1420 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v1419, v2170, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v1418, v1421, v1417, v1420);

  v1422 = MEMORY[0x277CCABB0];
  v1423 = *(*(a1 + 32) + 8);
  v1424 = *(v1423 + 24);
  *(v1423 + 24) = v1424 + 1;
  v1426 = objc_msgSend_numberWithInteger_(v1422, v1425, v1424);
  v1427 = qword_27E1E3110;
  v1429 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v1428, v2172, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v1427, v1430, v1426, v1429);

  v1431 = MEMORY[0x277CCABB0];
  v1432 = *(*(a1 + 32) + 8);
  v1433 = *(v1432 + 24);
  *(v1432 + 24) = v1433 + 1;
  v1435 = objc_msgSend_numberWithInteger_(v1431, v1434, v1433);
  v1436 = qword_27E1E3110;
  v1438 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v1437, v2175, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v1436, v1439, v1435, v1438);

  v1440 = MEMORY[0x277CCABB0];
  v1441 = *(*(a1 + 32) + 8);
  v1442 = *(v1441 + 24);
  *(v1441 + 24) = v1442 + 1;
  v1444 = objc_msgSend_numberWithInteger_(v1440, v1443, v1442);
  v1445 = qword_27E1E3110;
  v1447 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v1446, v2189, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v1445, v1448, v1444, v1447);

  v1449 = MEMORY[0x277CCABB0];
  v1450 = *(*(a1 + 32) + 8);
  v1451 = *(v1450 + 24);
  *(v1450 + 24) = v1451 + 1;
  v1453 = objc_msgSend_numberWithInteger_(v1449, v1452, v1451);
  v1454 = qword_27E1E3110;
  v1456 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v1455, v2179, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v1454, v1457, v1453, v1456);

  v1458 = MEMORY[0x277CCABB0];
  v1459 = *(*(a1 + 32) + 8);
  v1460 = *(v1459 + 24);
  *(v1459 + 24) = v1460 + 1;
  v1462 = objc_msgSend_numberWithInteger_(v1458, v1461, v1460);
  v1463 = qword_27E1E3110;
  v1465 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v1464, v2182, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v1463, v1466, v1462, v1465);

  v1467 = MEMORY[0x277CCABB0];
  v1468 = *(*(a1 + 32) + 8);
  v1469 = *(v1468 + 24);
  *(v1468 + 24) = v1469 + 1;
  v1471 = objc_msgSend_numberWithInteger_(v1467, v1470, v1469);
  v1472 = qword_27E1E3110;
  v1474 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v1473, v2186, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v1472, v1475, v1471, v1474);

  v1476 = MEMORY[0x277CCABB0];
  v1477 = *(*(a1 + 32) + 8);
  v1478 = *(v1477 + 24);
  *(v1477 + 24) = v1478 + 1;
  v1480 = objc_msgSend_numberWithInteger_(v1476, v1479, v1478);
  v1481 = qword_27E1E3110;
  v1483 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v1482, v2200, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v1481, v1484, v1480, v1483);

  v1485 = MEMORY[0x277CCABB0];
  v1486 = *(*(a1 + 32) + 8);
  v1487 = *(v1486 + 24);
  *(v1486 + 24) = v1487 + 1;
  v1489 = objc_msgSend_numberWithInteger_(v1485, v1488, v1487);
  v1490 = qword_27E1E3110;
  v1492 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v1491, v2218, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v1490, v1493, v1489, v1492);

  v1494 = MEMORY[0x277CCABB0];
  v1495 = *(*(a1 + 32) + 8);
  v1496 = *(v1495 + 24);
  *(v1495 + 24) = v1496 + 1;
  v1498 = objc_msgSend_numberWithInteger_(v1494, v1497, v1496);
  v1499 = qword_27E1E3110;
  v1501 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v1500, v2192, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v1499, v1502, v1498, v1501);

  v1503 = MEMORY[0x277CCABB0];
  v1504 = *(*(a1 + 32) + 8);
  v1505 = *(v1504 + 24);
  *(v1504 + 24) = v1505 + 1;
  v1507 = objc_msgSend_numberWithInteger_(v1503, v1506, v1505);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1508, v1507, *MEMORY[0x277D2C3E0]);

  v1509 = MEMORY[0x277CCABB0];
  v1510 = *(*(a1 + 32) + 8);
  v1511 = *(v1510 + 24);
  *(v1510 + 24) = v1511 + 1;
  v1513 = objc_msgSend_numberWithInteger_(v1509, v1512, v1511);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1514, v1513, *MEMORY[0x277D2C3D8]);

  v1515 = MEMORY[0x277CCABB0];
  v1516 = *(*(a1 + 32) + 8);
  v1517 = *(v1516 + 24);
  *(v1516 + 24) = v1517 + 1;
  v1519 = objc_msgSend_numberWithInteger_(v1515, v1518, v1517);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1520, v1519, *MEMORY[0x277D2C3C0]);

  v1521 = MEMORY[0x277CCABB0];
  v1522 = *(*(a1 + 32) + 8);
  v1523 = *(v1522 + 24);
  *(v1522 + 24) = v1523 + 1;
  v1525 = objc_msgSend_numberWithInteger_(v1521, v1524, v1523);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1526, v1525, *MEMORY[0x277D2C388]);

  v1527 = MEMORY[0x277CCABB0];
  v1528 = *(*(a1 + 32) + 8);
  v1529 = *(v1528 + 24);
  *(v1528 + 24) = v1529 + 1;
  v1531 = objc_msgSend_numberWithInteger_(v1527, v1530, v1529);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1532, v1531, *MEMORY[0x277D2C3E8]);

  v1533 = MEMORY[0x277CCABB0];
  v1534 = *(*(a1 + 32) + 8);
  v1535 = *(v1534 + 24);
  *(v1534 + 24) = v1535 + 1;
  v1537 = objc_msgSend_numberWithInteger_(v1533, v1536, v1535);
  v2187 = *MEMORY[0x277D2C3A8];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1538, v1537);

  v1539 = MEMORY[0x277CCABB0];
  v1540 = *(*(a1 + 32) + 8);
  v1541 = *(v1540 + 24);
  *(v1540 + 24) = v1541 + 1;
  v1543 = objc_msgSend_numberWithInteger_(v1539, v1542, v1541);
  v2219 = *MEMORY[0x277D2C3D0];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1544, v1543);

  v1545 = MEMORY[0x277CCABB0];
  v1546 = *(*(a1 + 32) + 8);
  v1547 = *(v1546 + 24);
  *(v1546 + 24) = v1547 + 1;
  v1549 = objc_msgSend_numberWithInteger_(v1545, v1548, v1547);
  v2201 = *MEMORY[0x277D2C380];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1550, v1549);

  v1551 = MEMORY[0x277CCABB0];
  v1552 = *(*(a1 + 32) + 8);
  v1553 = *(v1552 + 24);
  *(v1552 + 24) = v1553 + 1;
  v1555 = objc_msgSend_numberWithInteger_(v1551, v1554, v1553);
  v2176 = *MEMORY[0x277D2C3B0];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1556, v1555);

  v1557 = MEMORY[0x277CCABB0];
  v1558 = *(*(a1 + 32) + 8);
  v1559 = *(v1558 + 24);
  *(v1558 + 24) = v1559 + 1;
  v1561 = objc_msgSend_numberWithInteger_(v1557, v1560, v1559);
  v2180 = *MEMORY[0x277D2C3F0];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1562, v1561);

  v1563 = MEMORY[0x277CCABB0];
  v1564 = *(*(a1 + 32) + 8);
  v1565 = *(v1564 + 24);
  *(v1564 + 24) = v1565 + 1;
  v1567 = objc_msgSend_numberWithInteger_(v1563, v1566, v1565);
  v2190 = *MEMORY[0x277D2C400];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1568, v1567);

  v1569 = MEMORY[0x277CCABB0];
  v1570 = *(*(a1 + 32) + 8);
  v1571 = *(v1570 + 24);
  *(v1570 + 24) = v1571 + 1;
  v1573 = objc_msgSend_numberWithInteger_(v1569, v1572, v1571);
  v2173 = *MEMORY[0x277D2C368];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1574, v1573);

  v1575 = MEMORY[0x277CCABB0];
  v1576 = *(*(a1 + 32) + 8);
  v1577 = *(v1576 + 24);
  *(v1576 + 24) = v1577 + 1;
  v1579 = objc_msgSend_numberWithInteger_(v1575, v1578, v1577);
  v2193 = *MEMORY[0x277D2C3B8];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1580, v1579);

  v1581 = MEMORY[0x277CCABB0];
  v1582 = *(*(a1 + 32) + 8);
  v1583 = *(v1582 + 24);
  *(v1582 + 24) = v1583 + 1;
  v1585 = objc_msgSend_numberWithInteger_(v1581, v1584, v1583);
  v2183 = *MEMORY[0x277D2C3A0];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1586, v1585);

  v1587 = MEMORY[0x277CCABB0];
  v1588 = *(*(a1 + 32) + 8);
  v1589 = *(v1588 + 24);
  *(v1588 + 24) = v1589 + 1;
  v1591 = objc_msgSend_numberWithInteger_(v1587, v1590, v1589);
  v1592 = *MEMORY[0x277D2C360];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1593, v1591, *MEMORY[0x277D2C360]);

  v1594 = MEMORY[0x277CCABB0];
  v1595 = *(*(a1 + 32) + 8);
  v1596 = *(v1595 + 24);
  *(v1595 + 24) = v1596 + 1;
  v1598 = objc_msgSend_numberWithInteger_(v1594, v1597, v1596);
  v1599 = *MEMORY[0x277D2C378];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1600, v1598, *MEMORY[0x277D2C378]);

  v1601 = MEMORY[0x277CCABB0];
  v1602 = *(*(a1 + 32) + 8);
  v1603 = *(v1602 + 24);
  *(v1602 + 24) = v1603 + 1;
  v1605 = objc_msgSend_numberWithInteger_(v1601, v1604, v1603);
  v1606 = qword_27E1E3110;
  v1608 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v1607, v2196, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v1606, v1609, v1605, v1608);

  v1610 = MEMORY[0x277CCABB0];
  v1611 = *(*(a1 + 32) + 8);
  v1612 = *(v1611 + 24);
  *(v1611 + 24) = v1612 + 1;
  v1614 = objc_msgSend_numberWithInteger_(v1610, v1613, v1612);
  v1615 = qword_27E1E3110;
  v1617 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v1616, v2198, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v1615, v1618, v1614, v1617);

  v1619 = MEMORY[0x277CCABB0];
  v1620 = *(*(a1 + 32) + 8);
  v1621 = *(v1620 + 24);
  *(v1620 + 24) = v1621 + 1;
  v1623 = objc_msgSend_numberWithInteger_(v1619, v1622, v1621);
  v1624 = qword_27E1E3110;
  v1626 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v1625, v2205, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v1624, v1627, v1623, v1626);

  v1628 = MEMORY[0x277CCABB0];
  v1629 = *(*(a1 + 32) + 8);
  v1630 = *(v1629 + 24);
  *(v1629 + 24) = v1630 + 1;
  v1632 = objc_msgSend_numberWithInteger_(v1628, v1631, v1630);
  v1633 = qword_27E1E3110;
  v1635 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v1634, v2210, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v1633, v1636, v1632, v1635);

  v1637 = MEMORY[0x277CCABB0];
  v1638 = *(*(a1 + 32) + 8);
  v1639 = *(v1638 + 24);
  *(v1638 + 24) = v1639 + 1;
  v1641 = objc_msgSend_numberWithInteger_(v1637, v1640, v1639);
  v1642 = qword_27E1E3110;
  v1644 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v1643, v2214, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v1642, v1645, v1641, v1644);

  v1646 = MEMORY[0x277CCABB0];
  v1647 = *(*(a1 + 32) + 8);
  v1648 = *(v1647 + 24);
  *(v1647 + 24) = v1648 + 1;
  v1650 = objc_msgSend_numberWithInteger_(v1646, v1649, v1648);
  v1651 = qword_27E1E3110;
  v1653 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v1652, v2225, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v1651, v1654, v1650, v1653);

  v1655 = MEMORY[0x277CCABB0];
  v1656 = *(*(a1 + 32) + 8);
  v1657 = *(v1656 + 24);
  *(v1656 + 24) = v1657 + 1;
  v1659 = objc_msgSend_numberWithInteger_(v1655, v1658, v1657);
  v1660 = qword_27E1E3110;
  v1662 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v1661, v1599, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v1660, v1663, v1659, v1662);

  v1664 = MEMORY[0x277CCABB0];
  v1665 = *(*(a1 + 32) + 8);
  v1666 = *(v1665 + 24);
  *(v1665 + 24) = v1666 + 1;
  v1668 = objc_msgSend_numberWithInteger_(v1664, v1667, v1666);
  v1669 = qword_27E1E3110;
  v1671 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v1670, v2176, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v1669, v1672, v1668, v1671);

  v1673 = MEMORY[0x277CCABB0];
  v1674 = *(*(a1 + 32) + 8);
  v1675 = *(v1674 + 24);
  *(v1674 + 24) = v1675 + 1;
  v1677 = objc_msgSend_numberWithInteger_(v1673, v1676, v1675);
  v1678 = qword_27E1E3110;
  v1680 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v1679, v2180, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v1678, v1681, v1677, v1680);

  v1682 = MEMORY[0x277CCABB0];
  v1683 = *(*(a1 + 32) + 8);
  v1684 = *(v1683 + 24);
  *(v1683 + 24) = v1684 + 1;
  v1686 = objc_msgSend_numberWithInteger_(v1682, v1685, v1684);
  v1687 = qword_27E1E3110;
  v1689 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v1688, v2173, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v1687, v1690, v1686, v1689);

  v1691 = MEMORY[0x277CCABB0];
  v1692 = *(*(a1 + 32) + 8);
  v1693 = *(v1692 + 24);
  *(v1692 + 24) = v1693 + 1;
  v1695 = objc_msgSend_numberWithInteger_(v1691, v1694, v1693);
  v1696 = qword_27E1E3110;
  v1698 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v1697, v2187, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v1696, v1699, v1695, v1698);

  v1700 = MEMORY[0x277CCABB0];
  v1701 = *(*(a1 + 32) + 8);
  v1702 = *(v1701 + 24);
  *(v1701 + 24) = v1702 + 1;
  v1704 = objc_msgSend_numberWithInteger_(v1700, v1703, v1702);
  v1705 = qword_27E1E3110;
  v1707 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v1706, v1592, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v1705, v1708, v1704, v1707);

  v1709 = MEMORY[0x277CCABB0];
  v1710 = *(*(a1 + 32) + 8);
  v1711 = *(v1710 + 24);
  *(v1710 + 24) = v1711 + 1;
  v1713 = objc_msgSend_numberWithInteger_(v1709, v1712, v1711);
  v1714 = qword_27E1E3110;
  v1716 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v1715, v2183, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v1714, v1717, v1713, v1716);

  v1718 = MEMORY[0x277CCABB0];
  v1719 = *(*(a1 + 32) + 8);
  v1720 = *(v1719 + 24);
  *(v1719 + 24) = v1720 + 1;
  v1722 = objc_msgSend_numberWithInteger_(v1718, v1721, v1720);
  v1723 = qword_27E1E3110;
  v1725 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v1724, v2201, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v1723, v1726, v1722, v1725);

  v1727 = MEMORY[0x277CCABB0];
  v1728 = *(*(a1 + 32) + 8);
  v1729 = *(v1728 + 24);
  *(v1728 + 24) = v1729 + 1;
  v1731 = objc_msgSend_numberWithInteger_(v1727, v1730, v1729);
  v1732 = qword_27E1E3110;
  v1734 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v1733, v2190, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v1732, v1735, v1731, v1734);

  v1736 = MEMORY[0x277CCABB0];
  v1737 = *(*(a1 + 32) + 8);
  v1738 = *(v1737 + 24);
  *(v1737 + 24) = v1738 + 1;
  v1740 = objc_msgSend_numberWithInteger_(v1736, v1739, v1738);
  v1741 = qword_27E1E3110;
  v1743 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v1742, v2219, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v1741, v1744, v1740, v1743);

  v1745 = MEMORY[0x277CCABB0];
  v1746 = *(*(a1 + 32) + 8);
  v1747 = *(v1746 + 24);
  *(v1746 + 24) = v1747 + 1;
  v1749 = objc_msgSend_numberWithInteger_(v1745, v1748, v1747);
  v1750 = qword_27E1E3110;
  v1752 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v1751, v2193, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v1750, v1753, v1749, v1752);

  v1754 = MEMORY[0x277CCABB0];
  v1755 = *(*(a1 + 32) + 8);
  v1756 = *(v1755 + 24);
  *(v1755 + 24) = v1756 + 1;
  v1758 = objc_msgSend_numberWithInteger_(v1754, v1757, v1756);
  v1759 = *MEMORY[0x277D2C618];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1760, v1758, *MEMORY[0x277D2C618]);

  v1761 = MEMORY[0x277CCABB0];
  v1762 = *(*(a1 + 32) + 8);
  v1763 = *(v1762 + 24);
  *(v1762 + 24) = v1763 + 1;
  v1765 = objc_msgSend_numberWithInteger_(v1761, v1764, v1763);
  v1766 = *MEMORY[0x277D2C630];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1767, v1765, *MEMORY[0x277D2C630]);

  v1768 = MEMORY[0x277CCABB0];
  v1769 = *(*(a1 + 32) + 8);
  v1770 = *(v1769 + 24);
  *(v1769 + 24) = v1770 + 1;
  v1772 = objc_msgSend_numberWithInteger_(v1768, v1771, v1770);
  v1773 = *MEMORY[0x277D2C608];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1774, v1772, *MEMORY[0x277D2C608]);

  v1775 = MEMORY[0x277CCABB0];
  v1776 = *(*(a1 + 32) + 8);
  v1777 = *(v1776 + 24);
  *(v1776 + 24) = v1777 + 1;
  v1779 = objc_msgSend_numberWithInteger_(v1775, v1778, v1777);
  v2215 = *MEMORY[0x277D2C620];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1780, v1779);

  v1781 = MEMORY[0x277CCABB0];
  v1782 = *(*(a1 + 32) + 8);
  v1783 = *(v1782 + 24);
  *(v1782 + 24) = v1783 + 1;
  v1785 = objc_msgSend_numberWithInteger_(v1781, v1784, v1783);
  v2220 = *MEMORY[0x277D2C610];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1786, v1785);

  v1787 = MEMORY[0x277CCABB0];
  v1788 = *(*(a1 + 32) + 8);
  v1789 = *(v1788 + 24);
  *(v1788 + 24) = v1789 + 1;
  v1791 = objc_msgSend_numberWithInteger_(v1787, v1790, v1789);
  v2226 = *MEMORY[0x277D2C628];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1792, v1791);

  v1793 = MEMORY[0x277CCABB0];
  v1794 = *(*(a1 + 32) + 8);
  v1795 = *(v1794 + 24);
  *(v1794 + 24) = v1795 + 1;
  v1797 = objc_msgSend_numberWithInteger_(v1793, v1796, v1795);
  v1798 = qword_27E1E3110;
  v1800 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v1799, v1759, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v1798, v1801, v1797, v1800);

  v1802 = MEMORY[0x277CCABB0];
  v1803 = *(*(a1 + 32) + 8);
  v1804 = *(v1803 + 24);
  *(v1803 + 24) = v1804 + 1;
  v1806 = objc_msgSend_numberWithInteger_(v1802, v1805, v1804);
  v1807 = qword_27E1E3110;
  v1809 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v1808, v1766, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v1807, v1810, v1806, v1809);

  v1811 = MEMORY[0x277CCABB0];
  v1812 = *(*(a1 + 32) + 8);
  v1813 = *(v1812 + 24);
  *(v1812 + 24) = v1813 + 1;
  v1815 = objc_msgSend_numberWithInteger_(v1811, v1814, v1813);
  v1816 = qword_27E1E3110;
  v1818 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v1817, v1773, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v1816, v1819, v1815, v1818);

  v1820 = MEMORY[0x277CCABB0];
  v1821 = *(*(a1 + 32) + 8);
  v1822 = *(v1821 + 24);
  *(v1821 + 24) = v1822 + 1;
  v1824 = objc_msgSend_numberWithInteger_(v1820, v1823, v1822);
  v1825 = qword_27E1E3110;
  v1827 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v1826, v2215, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v1825, v1828, v1824, v1827);

  v1829 = MEMORY[0x277CCABB0];
  v1830 = *(*(a1 + 32) + 8);
  v1831 = *(v1830 + 24);
  *(v1830 + 24) = v1831 + 1;
  v1833 = objc_msgSend_numberWithInteger_(v1829, v1832, v1831);
  v1834 = qword_27E1E3110;
  v1836 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v1835, v2220, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v1834, v1837, v1833, v1836);

  v1838 = MEMORY[0x277CCABB0];
  v1839 = *(*(a1 + 32) + 8);
  v1840 = *(v1839 + 24);
  *(v1839 + 24) = v1840 + 1;
  v1842 = objc_msgSend_numberWithInteger_(v1838, v1841, v1840);
  v1843 = qword_27E1E3110;
  v1845 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v1844, v2226, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v1843, v1846, v1842, v1845);

  v1847 = MEMORY[0x277CCABB0];
  v1848 = *(*(a1 + 32) + 8);
  v1849 = *(v1848 + 24);
  *(v1848 + 24) = v1849 + 1;
  v1851 = objc_msgSend_numberWithInteger_(v1847, v1850, v1849);
  v1852 = *MEMORY[0x277D2C448];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1853, v1851, *MEMORY[0x277D2C448]);

  v1854 = MEMORY[0x277CCABB0];
  v1855 = *(*(a1 + 32) + 8);
  v1856 = *(v1855 + 24);
  *(v1855 + 24) = v1856 + 1;
  v1858 = objc_msgSend_numberWithInteger_(v1854, v1857, v1856);
  v1859 = *MEMORY[0x277D2C408];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1860, v1858, *MEMORY[0x277D2C408]);

  v1861 = MEMORY[0x277CCABB0];
  v1862 = *(*(a1 + 32) + 8);
  v1863 = *(v1862 + 24);
  *(v1862 + 24) = v1863 + 1;
  v1865 = objc_msgSend_numberWithInteger_(v1861, v1864, v1863);
  v1866 = *MEMORY[0x277D2C450];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1867, v1865, *MEMORY[0x277D2C450]);

  v1868 = MEMORY[0x277CCABB0];
  v1869 = *(*(a1 + 32) + 8);
  v1870 = *(v1869 + 24);
  *(v1869 + 24) = v1870 + 1;
  v1872 = objc_msgSend_numberWithInteger_(v1868, v1871, v1870);
  v2202 = *MEMORY[0x277D2C420];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1873, v1872);

  v1874 = MEMORY[0x277CCABB0];
  v1875 = *(*(a1 + 32) + 8);
  v1876 = *(v1875 + 24);
  *(v1875 + 24) = v1876 + 1;
  v1878 = objc_msgSend_numberWithInteger_(v1874, v1877, v1876);
  v2206 = *MEMORY[0x277D2C468];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1879, v1878);

  v1880 = MEMORY[0x277CCABB0];
  v1881 = *(*(a1 + 32) + 8);
  v1882 = *(v1881 + 24);
  *(v1881 + 24) = v1882 + 1;
  v1884 = objc_msgSend_numberWithInteger_(v1880, v1883, v1882);
  v2211 = *MEMORY[0x277D2C418];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1885, v1884);

  v1886 = MEMORY[0x277CCABB0];
  v1887 = *(*(a1 + 32) + 8);
  v1888 = *(v1887 + 24);
  *(v1887 + 24) = v1888 + 1;
  v1890 = objc_msgSend_numberWithInteger_(v1886, v1889, v1888);
  v2216 = *MEMORY[0x277D2C438];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1891, v1890);

  v1892 = MEMORY[0x277CCABB0];
  v1893 = *(*(a1 + 32) + 8);
  v1894 = *(v1893 + 24);
  *(v1893 + 24) = v1894 + 1;
  v1896 = objc_msgSend_numberWithInteger_(v1892, v1895, v1894);
  v2221 = *MEMORY[0x277D2C458];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1897, v1896);

  v1898 = MEMORY[0x277CCABB0];
  v1899 = *(*(a1 + 32) + 8);
  v1900 = *(v1899 + 24);
  *(v1899 + 24) = v1900 + 1;
  v1902 = objc_msgSend_numberWithInteger_(v1898, v1901, v1900);
  v2227 = *MEMORY[0x277D2C430];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1903, v1902);

  v1904 = MEMORY[0x277CCABB0];
  v1905 = *(*(a1 + 32) + 8);
  v1906 = *(v1905 + 24);
  *(v1905 + 24) = v1906 + 1;
  v1908 = objc_msgSend_numberWithInteger_(v1904, v1907, v1906);
  v1909 = qword_27E1E3110;
  v1911 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v1910, v1852, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v1909, v1912, v1908, v1911);

  v1913 = MEMORY[0x277CCABB0];
  v1914 = *(*(a1 + 32) + 8);
  v1915 = *(v1914 + 24);
  *(v1914 + 24) = v1915 + 1;
  v1917 = objc_msgSend_numberWithInteger_(v1913, v1916, v1915);
  v1918 = qword_27E1E3110;
  v1920 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v1919, v1859, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v1918, v1921, v1917, v1920);

  v1922 = MEMORY[0x277CCABB0];
  v1923 = *(*(a1 + 32) + 8);
  v1924 = *(v1923 + 24);
  *(v1923 + 24) = v1924 + 1;
  v1926 = objc_msgSend_numberWithInteger_(v1922, v1925, v1924);
  v1927 = qword_27E1E3110;
  v1929 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v1928, v1866, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v1927, v1930, v1926, v1929);

  v1931 = MEMORY[0x277CCABB0];
  v1932 = *(*(a1 + 32) + 8);
  v1933 = *(v1932 + 24);
  *(v1932 + 24) = v1933 + 1;
  v1935 = objc_msgSend_numberWithInteger_(v1931, v1934, v1933);
  v1936 = qword_27E1E3110;
  v1938 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v1937, v2202, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v1936, v1939, v1935, v1938);

  v1940 = MEMORY[0x277CCABB0];
  v1941 = *(*(a1 + 32) + 8);
  v1942 = *(v1941 + 24);
  *(v1941 + 24) = v1942 + 1;
  v1944 = objc_msgSend_numberWithInteger_(v1940, v1943, v1942);
  v1945 = qword_27E1E3110;
  v1947 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v1946, v2206, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v1945, v1948, v1944, v1947);

  v1949 = MEMORY[0x277CCABB0];
  v1950 = *(*(a1 + 32) + 8);
  v1951 = *(v1950 + 24);
  *(v1950 + 24) = v1951 + 1;
  v1953 = objc_msgSend_numberWithInteger_(v1949, v1952, v1951);
  v1954 = qword_27E1E3110;
  v1956 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v1955, v2211, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v1954, v1957, v1953, v1956);

  v1958 = MEMORY[0x277CCABB0];
  v1959 = *(*(a1 + 32) + 8);
  v1960 = *(v1959 + 24);
  *(v1959 + 24) = v1960 + 1;
  v1962 = objc_msgSend_numberWithInteger_(v1958, v1961, v1960);
  v1963 = qword_27E1E3110;
  v1965 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v1964, v2216, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v1963, v1966, v1962, v1965);

  v1967 = MEMORY[0x277CCABB0];
  v1968 = *(*(a1 + 32) + 8);
  v1969 = *(v1968 + 24);
  *(v1968 + 24) = v1969 + 1;
  v1971 = objc_msgSend_numberWithInteger_(v1967, v1970, v1969);
  v1972 = qword_27E1E3110;
  v1974 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v1973, v2221, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v1972, v1975, v1971, v1974);

  v1976 = MEMORY[0x277CCABB0];
  v1977 = *(*(a1 + 32) + 8);
  v1978 = *(v1977 + 24);
  *(v1977 + 24) = v1978 + 1;
  v1980 = objc_msgSend_numberWithInteger_(v1976, v1979, v1978);
  v1981 = qword_27E1E3110;
  v1983 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v1982, v2227, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v1981, v1984, v1980, v1983);

  v1985 = MEMORY[0x277CCABB0];
  v1986 = *(*(a1 + 32) + 8);
  v1987 = *(v1986 + 24);
  *(v1986 + 24) = v1987 + 1;
  v1989 = objc_msgSend_numberWithInteger_(v1985, v1988, v1987);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1990, v1989, *MEMORY[0x277D2C768]);

  v1991 = MEMORY[0x277CCABB0];
  v1992 = *(*(a1 + 32) + 8);
  v1993 = *(v1992 + 24);
  *(v1992 + 24) = v1993 + 1;
  v1995 = objc_msgSend_numberWithInteger_(v1991, v1994, v1993);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v1996, v1995, *MEMORY[0x277D2C2E0]);

  v1997 = MEMORY[0x277CCABB0];
  v1998 = *(*(a1 + 32) + 8);
  v1999 = *(v1998 + 24);
  *(v1998 + 24) = v1999 + 1;
  v2001 = objc_msgSend_numberWithInteger_(v1997, v2000, v1999);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v2002, v2001, *MEMORY[0x277D2C328]);

  v2003 = MEMORY[0x277CCABB0];
  v2004 = *(*(a1 + 32) + 8);
  v2005 = *(v2004 + 24);
  *(v2004 + 24) = v2005 + 1;
  v2007 = objc_msgSend_numberWithInteger_(v2003, v2006, v2005);
  v2008 = *MEMORY[0x277D2C398];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v2009, v2007, *MEMORY[0x277D2C398]);

  v2010 = MEMORY[0x277CCABB0];
  v2011 = *(*(a1 + 32) + 8);
  v2012 = *(v2011 + 24);
  *(v2011 + 24) = v2012 + 1;
  v2014 = objc_msgSend_numberWithInteger_(v2010, v2013, v2012);
  v2015 = *MEMORY[0x277D2C3C8];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v2016, v2014, *MEMORY[0x277D2C3C8]);

  v2017 = MEMORY[0x277CCABB0];
  v2018 = *(*(a1 + 32) + 8);
  v2019 = *(v2018 + 24);
  *(v2018 + 24) = v2019 + 1;
  v2021 = objc_msgSend_numberWithInteger_(v2017, v2020, v2019);
  v2022 = *MEMORY[0x277D2C370];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v2023, v2021, *MEMORY[0x277D2C370]);

  v2024 = MEMORY[0x277CCABB0];
  v2025 = *(*(a1 + 32) + 8);
  v2026 = *(v2025 + 24);
  *(v2025 + 24) = v2026 + 1;
  v2028 = objc_msgSend_numberWithInteger_(v2024, v2027, v2026);
  v2203 = *MEMORY[0x277D2C3F8];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v2029, v2028);

  v2030 = MEMORY[0x277CCABB0];
  v2031 = *(*(a1 + 32) + 8);
  v2032 = *(v2031 + 24);
  *(v2031 + 24) = v2032 + 1;
  v2034 = objc_msgSend_numberWithInteger_(v2030, v2033, v2032);
  v2207 = *MEMORY[0x277D2C390];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v2035, v2034);

  v2036 = MEMORY[0x277CCABB0];
  v2037 = *(*(a1 + 32) + 8);
  v2038 = *(v2037 + 24);
  *(v2037 + 24) = v2038 + 1;
  v2040 = objc_msgSend_numberWithInteger_(v2036, v2039, v2038);
  v2212 = *MEMORY[0x277D2C440];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v2041, v2040);

  v2042 = MEMORY[0x277CCABB0];
  v2043 = *(*(a1 + 32) + 8);
  v2044 = *(v2043 + 24);
  *(v2043 + 24) = v2044 + 1;
  v2046 = objc_msgSend_numberWithInteger_(v2042, v2045, v2044);
  v2217 = *MEMORY[0x277D2C428];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v2047, v2046);

  v2048 = MEMORY[0x277CCABB0];
  v2049 = *(*(a1 + 32) + 8);
  v2050 = *(v2049 + 24);
  *(v2049 + 24) = v2050 + 1;
  v2052 = objc_msgSend_numberWithInteger_(v2048, v2051, v2050);
  v2228 = *MEMORY[0x277D2C410];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v2053, v2052);

  v2054 = MEMORY[0x277CCABB0];
  v2055 = *(*(a1 + 32) + 8);
  v2056 = *(v2055 + 24);
  *(v2055 + 24) = v2056 + 1;
  v2058 = objc_msgSend_numberWithInteger_(v2054, v2057, v2056);
  v2222 = *MEMORY[0x277D2C460];
  objc_msgSend_setObject_forKeyedSubscript_(qword_27E1E3110, v2059, v2058);

  v2060 = MEMORY[0x277CCABB0];
  v2061 = *(*(a1 + 32) + 8);
  v2062 = *(v2061 + 24);
  *(v2061 + 24) = v2062 + 1;
  v2064 = objc_msgSend_numberWithInteger_(v2060, v2063, v2062);
  v2065 = qword_27E1E3110;
  v2067 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v2066, v2008, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v2065, v2068, v2064, v2067);

  v2069 = MEMORY[0x277CCABB0];
  v2070 = *(*(a1 + 32) + 8);
  v2071 = *(v2070 + 24);
  *(v2070 + 24) = v2071 + 1;
  v2073 = objc_msgSend_numberWithInteger_(v2069, v2072, v2071);
  v2074 = qword_27E1E3110;
  v2076 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v2075, v2015, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v2074, v2077, v2073, v2076);

  v2078 = MEMORY[0x277CCABB0];
  v2079 = *(*(a1 + 32) + 8);
  v2080 = *(v2079 + 24);
  *(v2079 + 24) = v2080 + 1;
  v2082 = objc_msgSend_numberWithInteger_(v2078, v2081, v2080);
  v2083 = qword_27E1E3110;
  v2085 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v2084, v2022, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v2083, v2086, v2082, v2085);

  v2087 = MEMORY[0x277CCABB0];
  v2088 = *(*(a1 + 32) + 8);
  v2089 = *(v2088 + 24);
  *(v2088 + 24) = v2089 + 1;
  v2091 = objc_msgSend_numberWithInteger_(v2087, v2090, v2089);
  v2092 = qword_27E1E3110;
  v2094 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v2093, v2203, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v2092, v2095, v2091, v2094);

  v2096 = MEMORY[0x277CCABB0];
  v2097 = *(*(a1 + 32) + 8);
  v2098 = *(v2097 + 24);
  *(v2097 + 24) = v2098 + 1;
  v2100 = objc_msgSend_numberWithInteger_(v2096, v2099, v2098);
  v2101 = qword_27E1E3110;
  v2103 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v2102, v2207, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v2101, v2104, v2100, v2103);

  v2105 = MEMORY[0x277CCABB0];
  v2106 = *(*(a1 + 32) + 8);
  v2107 = *(v2106 + 24);
  *(v2106 + 24) = v2107 + 1;
  v2109 = objc_msgSend_numberWithInteger_(v2105, v2108, v2107);
  v2110 = qword_27E1E3110;
  v2112 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v2111, v2212, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v2110, v2113, v2109, v2112);

  v2114 = MEMORY[0x277CCABB0];
  v2115 = *(*(a1 + 32) + 8);
  v2116 = *(v2115 + 24);
  *(v2115 + 24) = v2116 + 1;
  v2118 = objc_msgSend_numberWithInteger_(v2114, v2117, v2116);
  v2119 = qword_27E1E3110;
  v2121 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v2120, v2217, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v2119, v2122, v2118, v2121);

  v2123 = MEMORY[0x277CCABB0];
  v2124 = *(*(a1 + 32) + 8);
  v2125 = *(v2124 + 24);
  *(v2124 + 24) = v2125 + 1;
  v2127 = objc_msgSend_numberWithInteger_(v2123, v2126, v2125);
  v2128 = qword_27E1E3110;
  v2130 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v2129, v2228, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v2128, v2131, v2127, v2130);

  v2132 = MEMORY[0x277CCABB0];
  v2133 = *(*(a1 + 32) + 8);
  v2134 = *(v2133 + 24);
  *(v2133 + 24) = v2134 + 1;
  v2229 = objc_msgSend_numberWithInteger_(v2132, v2135, v2134);
  v2136 = qword_27E1E3110;
  v2138 = objc_msgSend_duotoneNameWithName_otherName_(MEMORY[0x277D2C0B0], v2137, v2222, @"duotone");
  objc_msgSend_setObject_forKeyedSubscript_(v2136, v2139, v2229, v2138);
}

uint64_t sub_23BF31B24(void *a1, const char *a2, uint64_t a3)
{
  objc_msgSend_transitionFraction(a1, a2, a3);
  if (v6 >= 0.5)
  {
    objc_msgSend_toPalette(a1, v4, v5);
  }

  else
  {
    objc_msgSend_fromPalette(a1, v4, v5);
  }
  v7 = ;
  isGlassOption = objc_msgSend_isGlassOption(v7, v8, v9);

  return isGlassOption;
}

void sub_23BF31B80(void *a1, const char *a2, uint64_t a3)
{
  if (objc_msgSend_isGlassEnabled(_TtC30NTKParmesanFaceBundleCompanion23DigitalTimeViewFeatures, a2, a3))
  {
    v6 = objc_msgSend_fromPalette(a1, v4, v5);
    objc_msgSend_frostAmount(v6, v7, v8);
    v11 = objc_msgSend_toPalette(a1, v9, v10);
    objc_msgSend_frostAmount(v11, v12, v13);
    objc_msgSend_transitionFraction(a1, v14, v15);
    sub_23BFF9200();
  }
}

uint64_t sub_23BF31C20(void *a1, const char *a2, uint64_t a3)
{
  objc_msgSend_transitionFraction(a1, a2, a3);
  if (v6 >= 0.5)
  {
    objc_msgSend_toPalette(a1, v4, v5);
  }

  else
  {
    objc_msgSend_fromPalette(a1, v4, v5);
  }
  v7 = ;
  isVibrantOption = objc_msgSend_isVibrantOption(v7, v8, v9);

  return isVibrantOption;
}

uint64_t sub_23BF31C7C(void *a1, const char *a2, uint64_t a3)
{
  objc_msgSend_transitionFraction(a1, a2, a3);
  if (v6 >= 0.5)
  {
    objc_msgSend_toPalette(a1, v4, v5);
  }

  else
  {
    objc_msgSend_fromPalette(a1, v4, v5);
  }
  v7 = ;
  isPlainOption = objc_msgSend_isPlainOption(v7, v8, v9);

  return isPlainOption;
}

uint64_t sub_23BF31CD8(void *a1, const char *a2, uint64_t a3)
{
  objc_msgSend_transitionFraction(a1, a2, a3);
  if (v6 >= 0.5)
  {
    objc_msgSend_toPalette(a1, v4, v5);
  }

  else
  {
    objc_msgSend_fromPalette(a1, v4, v5);
  }
  v7 = ;
  isTritoneOption = objc_msgSend_isTritoneOption(v7, v8, v9);

  return isTritoneOption;
}

id sub_23BF31FBC(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_sharedPhotoLibrary(MEMORY[0x277CD9948], a2, a3);
  v5 = objc_alloc(MEMORY[0x277CD9D68]);
  v7 = objc_msgSend_initWithPhotoLibrary_(v5, v6, v4);
  objc_msgSend_setSelection_(v7, v8, 0);
  v11 = objc_msgSend_imagesFilter(MEMORY[0x277CD9D70], v9, v10);
  objc_msgSend_setFilter_(v7, v12, v11);

  objc_msgSend_setSelectionLimit_(v7, v13, a3);
  v16 = objc_msgSend_watchWallpaperSuggestionGroup(MEMORY[0x277CD9D80], v14, v15);
  objc_msgSend_set_suggestionGroup_(v7, v17, v16);

  objc_msgSend_setDisabledCapabilities_(v7, v18, 18);
  objc_msgSend__setDisabledPrivateCapabilities_(v7, v19, 3);

  return v7;
}

void sub_23BF32A38(uint64_t a1, const char *a2)
{
  v2 = objc_msgSend_fontDescriptorForSectName_uniqueCacheIdentifier_fromMachO_(MEMORY[0x277D2C050], a2, @"__Soft", @"Parmesan", &dword_23BF0C000);
  v3 = qword_27E1E3118;
  qword_27E1E3118 = v2;
}

void sub_23BF32B38(uint64_t a1, const char *a2)
{
  v2 = objc_msgSend_fontDescriptorForSectName_uniqueCacheIdentifier_fromMachO_(MEMORY[0x277D2C050], a2, @"__NewYork", @"Parmesan", &dword_23BF0C000);
  v3 = qword_27E1E3128;
  qword_27E1E3128 = v2;
}

void sub_23BF32C38(uint64_t a1, const char *a2)
{
  v2 = objc_msgSend_fontDescriptorForSectName_uniqueCacheIdentifier_fromMachO_(MEMORY[0x277D2C050], a2, @"__NYSoft", @"Parmesan", &dword_23BF0C000);
  v3 = qword_27E1E3138;
  qword_27E1E3138 = v2;
}

void sub_23BF32D48(uint64_t a1, const char *a2)
{
  v2 = objc_msgSend_fontDescriptorForSectName_uniqueCacheIdentifier_fromMachO_(MEMORY[0x277D2C050], a2, @"__Tokyo", @"Parmesan", &dword_23BF0C000);
  v3 = qword_27E1E3148;
  qword_27E1E3148 = v2;
}

void sub_23BF32EA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_23BF32EC0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23BF32ED8(uint64_t a1, id a2, void *a3)
{
  v5 = *(*(*(a1 + 32) + 8) + 40);
  v6 = MEMORY[0x277CCABB0];
  v7 = a2;
  v8 = a3;
  objc_msgSend_UTF8String(a2, v9, v10);
  v11 = TextToFourCharCode();
  v14 = objc_msgSend_numberWithUnsignedInt_(v6, v12, v11);
  objc_msgSend_setObject_forKey_(v5, v13, v8, v14);
}

void sub_23BF33728(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_23BF3374C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23BF33764(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23BF33804;
  block[3] = &unk_278BA7458;
  v1 = *(a1 + 56);
  block[4] = *(a1 + 32);
  v6 = v1;
  v3 = *(a1 + 40);
  v2 = v3;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void sub_23BF33804(uint64_t a1, const char *a2)
{
  objc_msgSend_setState_(*(a1 + 32), a2, *(a1 + 56));
  objc_msgSend_setGalleryPreviewResourceDirectory_(*(a1 + 32), v3, *(*(*(a1 + 48) + 8) + 40));
  v4 = *(a1 + 40);
  v7 = objc_msgSend_galleryPreviewResourceDirectory(*(a1 + 32), v5, v6);
  (*(v4 + 16))(v4, v7);
}

void sub_23BF33884(uint64_t a1)
{
  v1 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_23BF33924;
  v5[3] = &unk_278BA74A8;
  v5[4] = v1;
  v4 = *(a1 + 40);
  v2 = v4;
  v6 = v4;
  objc_msgSend__createResourceDirectoryForSinglePHAssetWithPreviewOnly_completion_(v1, v3, 1, v5);
}

void sub_23BF33924(uint64_t a1, void *a2)
{
  v5 = a2;
  if (!v5)
  {
    v6 = objc_msgSend_logObject(NTKParmesanFaceBundle, v3, v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_23BFF84D0();
    }
  }

  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v9 = v5;

  (*(*(a1 + 40) + 16))(*(a1 + 40), v9 != 0);
}

void sub_23BF33F2C(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = objc_msgSend_resourceDirectory(*(a1 + 32), a2, a3);
  (*(v3 + 16))(v3, v4);
}

void sub_23BF33F88(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23BF34088;
  block[3] = &unk_278BA6B68;
  v7 = *(a1 + 40);
  dispatch_async(MEMORY[0x277D85CD0], block);
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_23BF3409C;
  v4[3] = &unk_278BA6988;
  v4[4] = v2;
  v5 = *(a1 + 48);
  objc_msgSend__createResourceDirectoryForSinglePHAssetWithPreviewOnly_completion_(v2, v3, 0, v4);
}

void sub_23BF3409C(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23BF3414C;
  block[3] = &unk_278BA74F8;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v4;
  v10 = v5;
  v6 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void sub_23BF3414C(uint64_t a1, const char *a2, uint64_t a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = objc_msgSend_logObject(NTKParmesanFaceBundle, a2, a3);
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      v14 = 136315394;
      v15 = "[NTKCParmesanAlbumEditor finalizeWithProgress:completion:]_block_invoke";
      v16 = 2112;
      v17 = v7;
      _os_log_impl(&dword_23BF0C000, v6, OS_LOG_TYPE_INFO, "%s: Editor finished finalizing with resource directory: %@", &v14, 0x16u);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_23BFF85E0();
  }

  objc_msgSend_setResourceDirectory_(*(a1 + 40), v8, *(a1 + 32));
  objc_msgSend_setState_(*(a1 + 40), v9, 1);
  v10 = *(a1 + 48);
  v13 = objc_msgSend_resourceDirectory(*(a1 + 40), v11, v12);
  (*(v10 + 16))(v10, v13);
}

void sub_23BF345B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23BF345D4(uint64_t a1, void *a2, uint64_t a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_firstObject(a2, a2, a3);
  v7 = objc_opt_new();
  if (v4)
  {
    v8 = objc_msgSend_asDictionary(v4, v5, v6);
    objc_msgSend_addObject_(v7, v9, v8);
  }

  v10 = objc_msgSend_uuidString(*(a1 + 32), v5, v6);

  if (!v10)
  {
    v13 = objc_msgSend_UUID(MEMORY[0x277CCAD78], v11, v12);
    v16 = objc_msgSend_UUIDString(v13, v14, v15);

    v19 = objc_msgSend_logObject(NTKParmesanFaceBundle, v17, v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v22 = objc_msgSend_shuffleSelection(*(a1 + 32), v20, v21);
      v30 = 138412546;
      v31 = v22;
      v32 = 2112;
      v33 = v16;
      _os_log_impl(&dword_23BF0C000, v19, OS_LOG_TYPE_DEFAULT, "_createResourceDirectoryForSinglePHAssetWithPreviewOnly: creating new uuid for %@ ==> %@", &v30, 0x16u);
    }

    objc_msgSend_setUuidString_(*(a1 + 32), v23, v16);
  }

  if ((objc_msgSend__writeImageList_version_toDirectory_(*(a1 + 32), v11, v7, 2, *(*(*(a1 + 48) + 8) + 40)) & 1) == 0)
  {
    v26 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v24, v25);
    objc_msgSend_removeItemAtPath_error_(v26, v27, *(*(*(a1 + 48) + 8) + 40), 0);

    v28 = *(*(a1 + 48) + 8);
    v29 = *(v28 + 40);
    *(v28 + 40) = 0;
  }

  (*(*(a1 + 40) + 16))();
}

uint64_t sub_23BF35F2C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = MEMORY[0x277D2C108];
  v5 = *(a1 + 32);
  v6 = objc_msgSend_device(*(a1 + 40), a2, a3);
  v8 = objc_msgSend_renderSwatchForView_size_device_key_method_(v4, v7, v5, v6, *(a1 + 48), *(a1 + 80), *(a1 + 64), *(a1 + 72));

  v9 = *(*(a1 + 56) + 16);

  return v9();
}

void sub_23BF38498(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, id location, ...)
{
  va_start(va, location);
  objc_destroyWeak(&a29);
  objc_destroyWeak(&a41);
  objc_destroyWeak(&location);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v42 - 240), 8);
  _Block_object_dispose((v42 - 208), 8);
  _Block_object_dispose((v42 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_23BF3851C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

BOOL sub_23BF38534(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v8 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v6, v7);
  v15 = 0;
  objc_msgSend_copyItemAtPath_toPath_error_(v8, v9, v4, v5, &v15);
  v10 = v15;

  if (v10)
  {
    v13 = objc_msgSend_logObject(NTKParmesanFaceBundle, v11, v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v17 = "[NTKParmesanFace _createDynamicContentDirectoryFromReader:]_block_invoke";
      v18 = 2112;
      v19 = v4;
      v20 = 2112;
      v21 = v5;
      v22 = 2112;
      v23 = v10;
      _os_log_error_impl(&dword_23BF0C000, v13, OS_LOG_TYPE_ERROR, "%s: cannot copy %@ to %@, error == %@", buf, 0x2Au);
    }
  }

  return v10 == 0;
}

void sub_23BF38674(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23BF38794;
  block[3] = &unk_278BA7608;
  objc_copyWeak(&v20, (a1 + 88));
  v17 = *(a1 + 56);
  v18 = *(a1 + 72);
  v13 = v6;
  v14 = v5;
  v15 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 80);
  v16 = v8;
  v19 = v9;
  v10 = v5;
  v11 = v6;
  dispatch_async(v7, block);

  objc_destroyWeak(&v20);
}

void sub_23BF38794(uint64_t a1)
{
  v117 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 96));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if (*(*(*(a1 + 64) + 8) + 24) == 1)
    {
      v6 = objc_msgSend_logObject(NTKParmesanFaceBundle, v3, v4);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v110 = "[NTKParmesanFace _createDynamicContentDirectoryFromReader:]_block_invoke_2";
        v7 = "%s: Canceled: No more update processing";
LABEL_12:
        _os_log_impl(&dword_23BF0C000, v6, OS_LOG_TYPE_DEFAULT, v7, buf, 0xCu);
        goto LABEL_13;
      }

      goto LABEL_13;
    }

    if ((*(*(*(a1 + 72) + 8) + 24) & 1) == 0)
    {
      v6 = objc_msgSend_logObject(NTKParmesanFaceBundle, v3, v4);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v110 = "[NTKParmesanFace _createDynamicContentDirectoryFromReader:]_block_invoke";
        v7 = "%s: Previous failure: No more update processing";
        goto LABEL_12;
      }

LABEL_13:

      goto LABEL_43;
    }

    v90 = WeakRetained;
    ++*(*(*(a1 + 80) + 8) + 24);
    v8 = *(a1 + 32);
    v9 = objc_msgSend_logObject(NTKParmesanFaceBundle, v3, v4);
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      if (v10)
      {
        v13 = objc_msgSend_count(*(a1 + 40), v11, v12);
        v14 = *(*(*(a1 + 80) + 8) + 24);
        v15 = *(a1 + 32);
        *buf = 136315906;
        v110 = "[NTKParmesanFace _createDynamicContentDirectoryFromReader:]_block_invoke";
        v111 = 2048;
        v112 = v13;
        v113 = 1024;
        v114 = v14;
        v115 = 2112;
        v116 = v15;
        _os_log_impl(&dword_23BF0C000, v9, OS_LOG_TYPE_DEFAULT, "%s: Error: received %lu assets, %d so far, error == %@", buf, 0x26u);
      }

      *(*(*(a1 + 72) + 8) + 24) = 0;
    }

    else
    {
      if (v10)
      {
        v16 = objc_msgSend_count(*(a1 + 40), v11, v12);
        v17 = *(*(*(a1 + 80) + 8) + 24);
        *buf = 136315650;
        v110 = "[NTKParmesanFace _createDynamicContentDirectoryFromReader:]_block_invoke";
        v111 = 2048;
        v112 = v16;
        v113 = 1024;
        v114 = v17;
        _os_log_impl(&dword_23BF0C000, v9, OS_LOG_TYPE_DEFAULT, "%s: Received %lu assets, %d so far", buf, 0x1Cu);
      }

      v105 = 0u;
      v106 = 0u;
      v103 = 0u;
      v104 = 0u;
      obj = *(a1 + 40);
      v93 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v18, &v103, v108, 16);
      if (v93)
      {
        v92 = *v104;
        do
        {
          for (i = 0; i != v93; ++i)
          {
            if (*v104 != v92)
            {
              objc_enumerationMutation(obj);
            }

            v22 = *(*(&v103 + 1) + 8 * i);
            v23 = MEMORY[0x277CCACA8];
            v24 = objc_msgSend_resourceDirectory(v22, v19, v20);
            v25 = v24;
            v28 = objc_msgSend_fileSystemRepresentation(v25, v26, v27);
            v30 = objc_msgSend_stringWithCString_encoding_(v23, v29, v28, 4);

            v101 = 0u;
            v102 = 0u;
            v99 = 0u;
            v100 = 0u;
            v98 = v22;
            v31 = v22;
            v32 = v30;
            v35 = objc_msgSend_layouts(v31, v33, v34);
            v38 = objc_msgSend_allKeys(v35, v36, v37);

            v95 = v38;
            v97 = objc_msgSend_countByEnumeratingWithState_objects_count_(v38, v39, &v99, v107, 16);
            if (!v97)
            {
              goto LABEL_36;
            }

            v96 = *v100;
            v94 = i;
            while (2)
            {
              for (j = 0; j != v97; ++j)
              {
                if (*v100 != v96)
                {
                  objc_enumerationMutation(v95);
                }

                v43 = *(*(&v99 + 1) + 8 * j);
                v44 = objc_msgSend_layouts(v98, v40, v41);
                v46 = objc_msgSend_objectForKeyedSubscript_(v44, v45, v43);

                v49 = objc_msgSend_baseImageName(v46, v47, v48);
                v51 = objc_msgSend_stringByAppendingPathComponent_(v32, v50, v49);

                v52 = *(a1 + 48);
                v55 = objc_msgSend_baseImageName(v46, v53, v54);
                v57 = objc_msgSend_stringByAppendingPathComponent_(v52, v56, v55);

                if (((*(*(a1 + 56) + 16))() & 1) == 0)
                {
                  *(*(*(a1 + 72) + 8) + 24) = 0;
LABEL_35:

                  i = v94;
                  goto LABEL_36;
                }

                v60 = objc_msgSend_mask(v46, v58, v59);
                v63 = objc_msgSend_imageName(v60, v61, v62);

                if (v63)
                {
                  v66 = objc_msgSend_mask(v46, v64, v65);
                  v69 = objc_msgSend_imageName(v66, v67, v68);
                  v70 = v32;
                  v72 = objc_msgSend_stringByAppendingPathComponent_(v32, v71, v69);

                  v73 = *(a1 + 48);
                  v76 = objc_msgSend_mask(v46, v74, v75);
                  v79 = objc_msgSend_imageName(v76, v77, v78);
                  v81 = objc_msgSend_stringByAppendingPathComponent_(v73, v80, v79);

                  if (!(*(*(a1 + 56) + 16))())
                  {
                    *(*(*(a1 + 72) + 8) + 24) = 0;

                    v32 = v70;
                    goto LABEL_35;
                  }

                  v32 = v70;
                }
              }

              i = v94;
              v97 = objc_msgSend_countByEnumeratingWithState_objects_count_(v95, v40, &v99, v107, 16);
              if (v97)
              {
                continue;
              }

              break;
            }

LABEL_36:

            if ((*(*(*(a1 + 72) + 8) + 24) & 1) == 0)
            {

              goto LABEL_41;
            }

            v83 = objc_msgSend_fileURLWithPath_(MEMORY[0x277CBEBC0], v82, *(a1 + 48));
            objc_msgSend_setResourceDirectory_(v98, v84, v83);

            v85 = *(*(*(a1 + 88) + 8) + 40);
            v88 = objc_msgSend_asDictionary(v98, v86, v87);
            objc_msgSend_addObject_(v85, v89, v88);
          }

          v93 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v19, &v103, v108, 16);
        }

        while (v93);
      }

LABEL_41:
    }

    v5 = v90;
  }

LABEL_43:
}

void sub_23BF38DE4(uint64_t a1)
{
  v2 = *(a1 + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23BF38EBC;
  block[3] = &unk_278BA7658;
  objc_copyWeak(&v11, (a1 + 88));
  v8 = *(a1 + 56);
  v9 = *(a1 + 72);
  v6 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 80);
  v7 = v3;
  v10 = v4;
  dispatch_async(v2, block);

  objc_destroyWeak(&v11);
}

void sub_23BF38EBC(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  if (WeakRetained)
  {
    if (*(*(*(a1 + 48) + 8) + 24) == 1)
    {
      v5 = objc_msgSend_logObject(NTKParmesanFaceBundle, v2, v3);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 136315138;
        v22 = "[NTKParmesanFace _createDynamicContentDirectoryFromReader:]_block_invoke_2";
        v6 = "%s: Canceled: Skip completion processing";
LABEL_15:
        _os_log_impl(&dword_23BF0C000, v5, OS_LOG_TYPE_DEFAULT, v6, &v21, 0xCu);
      }
    }

    else
    {
      if (*(*(*(a1 + 56) + 8) + 24))
      {
        v5 = objc_opt_new();
        v8 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v7, 2);
        objc_msgSend_setObject_forKeyedSubscript_(v5, v9, v8, kParmesanReaderVersionKey);

        objc_msgSend_setObject_forKeyedSubscript_(v5, v10, *(*(*(a1 + 64) + 8) + 40), kParmesanReaderImageListKey);
        v12 = objc_msgSend_stringByAppendingPathComponent_(*(a1 + 32), v11, kParmesanReaderImagelistFileName);
        if ((objc_msgSend_writeToFile_atomically_(v5, v13, v12, 0) & 1) == 0)
        {
          v16 = objc_msgSend_logObject(NTKParmesanFaceBundle, v14, v15);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            sub_23BFF8A64(v12, v16);
          }

          *(*(*(a1 + 56) + 8) + 24) = 0;
        }

        dispatch_semaphore_signal(*(a1 + 40));
        v19 = objc_msgSend_logObject(NTKParmesanFaceBundle, v17, v18);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = *(*(*(a1 + 72) + 8) + 24);
          v21 = 136315394;
          v22 = "[NTKParmesanFace _createDynamicContentDirectoryFromReader:]_block_invoke";
          v23 = 1024;
          v24 = v20;
          _os_log_impl(&dword_23BF0C000, v19, OS_LOG_TYPE_DEFAULT, "%s: Received everything! %d", &v21, 0x12u);
        }

        goto LABEL_16;
      }

      v5 = objc_msgSend_logObject(NTKParmesanFaceBundle, v2, v3);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 136315138;
        v22 = "[NTKParmesanFace _createDynamicContentDirectoryFromReader:]_block_invoke";
        v6 = "%s: Previous failure: Skip completion processing";
        goto LABEL_15;
      }
    }

LABEL_16:
  }
}

void sub_23BF39168(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23BF391DC;
  block[3] = &unk_278BA73C0;
  v1 = *(a1 + 32);
  block[4] = *(a1 + 40);
  dispatch_async(v1, block);
}

char *sub_23BF397B8()
{
  if ([*(v0 + 16) hasPeople])
  {
    v1 = sub_23BF6163C(0, 1, 1, MEMORY[0x277D84F90]);
    v3 = *(v1 + 2);
    v2 = *(v1 + 3);
    if (v3 >= v2 >> 1)
    {
      v1 = sub_23BF6163C((v2 > 1), v3 + 1, 1, v1);
    }

    *(v1 + 2) = v3 + 1;
    *&v1[8 * v3 + 32] = 1;
  }

  else
  {
    v1 = MEMORY[0x277D84F90];
  }

  if ([*(v0 + 16) hasPets])
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_23BF6163C(0, *(v1 + 2) + 1, 1, v1);
    }

    v5 = *(v1 + 2);
    v4 = *(v1 + 3);
    if (v5 >= v4 >> 1)
    {
      v1 = sub_23BF6163C((v4 > 1), v5 + 1, 1, v1);
    }

    *(v1 + 2) = v5 + 1;
    *&v1[8 * v5 + 32] = 2;
  }

  if ([*(v0 + 16) hasNature])
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_23BF6163C(0, *(v1 + 2) + 1, 1, v1);
    }

    v7 = *(v1 + 2);
    v6 = *(v1 + 3);
    if (v7 >= v6 >> 1)
    {
      v1 = sub_23BF6163C((v6 > 1), v7 + 1, 1, v1);
    }

    *(v1 + 2) = v7 + 1;
    *&v1[8 * v7 + 32] = 3;
  }

  if ([*(v0 + 16) hasCityscape])
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_23BF6163C(0, *(v1 + 2) + 1, 1, v1);
    }

    v9 = *(v1 + 2);
    v8 = *(v1 + 3);
    if (v9 >= v8 >> 1)
    {
      v1 = sub_23BF6163C((v8 > 1), v9 + 1, 1, v1);
    }

    *(v1 + 2) = v9 + 1;
    *&v1[8 * v9 + 32] = 4;
  }

  return v1;
}

uint64_t sub_23BF399DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, char a7, uint64_t a8)
{
  *(v8 + 40) = v12;
  *(v8 + 48) = v13;
  *(v8 + 146) = a7;
  *(v8 + 145) = a6;
  *(v8 + 144) = a5;
  *(v8 + 24) = a4;
  *(v8 + 32) = a8;
  v9 = sub_23BFF8DE0();
  *(v8 + 56) = v9;
  *(v8 + 64) = *(v9 - 8);
  *(v8 + 72) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23BF39AB4, 0, 0);
}

uint64_t sub_23BF39AB4()
{
  sub_23BFF8F70();
  swift_allocObject();
  *(v0 + 80) = sub_23BFF8F60();

  v2 = sub_23BFBAD88(v1);
  *(v0 + 88) = v2;

  v3 = swift_task_alloc();
  *(v0 + 96) = v3;
  *v3 = v0;
  v3[1] = sub_23BF39BA0;
  v4 = *(v0 + 146);
  v5 = *(v0 + 145);
  v6 = *(v0 + 144);

  return MEMORY[0x28219B6B8](v2, v6, v5, v4);
}

uint64_t sub_23BF39BA0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 104) = a1;
  *(v3 + 112) = v1;

  if (v1)
  {
    v4 = sub_23BF3A098;
  }

  else
  {

    v4 = sub_23BF39CC4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_23BF39CC4()
{
  v1 = MEMORY[0x277D84F90];
  v0[2] = MEMORY[0x277D84F90];
  v2 = v0 + 2;
  v3 = v0[13];
  v4 = *(v3 + 16);
  if (v4)
  {
    v33 = v0 + 2;
    v5 = v0[8];
    sub_23BFCE138(0, v4, 0);
    v6 = *(v5 + 16);
    v5 += 16;
    v7 = v3 + ((*(v5 + 64) + 32) & ~*(v5 + 64));
    v34 = *(v5 + 56);
    v35 = v6;
    v8 = (v5 - 8);
    do
    {
      v9 = v0[9];
      v10 = v0;
      v11 = v0[7];
      v35(v9, v7, v11);
      v12 = sub_23BFF8DB0();
      v14 = v13;
      (*v8)(v9, v11);
      v16 = *(v1 + 16);
      v15 = *(v1 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_23BFCE138((v15 > 1), v16 + 1, 1);
      }

      *(v1 + 16) = v16 + 1;
      v17 = v1 + 16 * v16;
      *(v17 + 32) = v12;
      *(v17 + 40) = v14;
      v7 += v34;
      --v4;
      v0 = v10;
    }

    while (v4);
    v2 = v33;
  }

  v18 = objc_opt_self();
  v19 = sub_23BFFA450();

  v20 = [v18 fetchAssetsWithUUIDs:v19 options:0];
  v0[15] = v20;

  if (!v20)
  {
    goto LABEL_23;
  }

  v24 = v0[4];

  v21 = [v20 count];
  if (v21 >= v24)
  {
    v25 = v24;
  }

  else
  {
    v25 = v21;
  }

  if ((v25 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    return MEMORY[0x2822009F8](v21, v22, v23);
  }

  if (v25)
  {
    for (i = 0; i != v25; i = (i + 1))
    {
      v27 = [v20 objectAtIndex_];
      MEMORY[0x23EEC3100]();
      if (*((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_23BFFA480();
      }

      sub_23BFFA4A0();
    }

    v28 = *v2;
  }

  else
  {
    v28 = MEMORY[0x277D84F90];
  }

  v0[16] = v28;
  sub_23BFFA520();
  v0[17] = sub_23BFFA510();
  v29 = sub_23BFFA4C0();
  v31 = v30;
  v21 = sub_23BF39FA0;
  v22 = v29;
  v23 = v31;

  return MEMORY[0x2822009F8](v21, v22, v23);
}

uint64_t sub_23BF39FA0()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 40);

  v2(v1);

  return MEMORY[0x2822009F8](sub_23BF3A028, 0, 0);
}

uint64_t sub_23BF3A028()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23BF3A098()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23BF3A110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a7;
  v8[7] = a8;
  v8[4] = a5;
  v8[5] = a6;
  v8[3] = a4;
  v9 = sub_23BFF8DE0();
  v8[8] = v9;
  v8[9] = *(v9 - 8);
  v8[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23BF3A1D8, 0, 0);
}

uint64_t sub_23BF3A1D8()
{
  sub_23BFF8F70();
  swift_allocObject();
  v0[11] = sub_23BFF8F60();
  v1 = swift_task_alloc();
  v0[12] = v1;
  *v1 = v0;
  v1[1] = sub_23BF3A294;
  v3 = v0[3];
  v2 = v0[4];

  return MEMORY[0x28219B6A8](v3, v2);
}

uint64_t sub_23BF3A294(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 104) = a1;
  *(v3 + 112) = v1;

  if (v1)
  {
    v4 = sub_23BF3A784;
  }

  else
  {

    v4 = sub_23BF3A3B0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_23BF3A3B0()
{
  v1 = MEMORY[0x277D84F90];
  v0[2] = MEMORY[0x277D84F90];
  v2 = v0 + 2;
  v3 = v0[13];
  v4 = *(v3 + 16);
  if (v4)
  {
    v33 = v0 + 2;
    v5 = v0[9];
    sub_23BFCE138(0, v4, 0);
    v6 = *(v5 + 16);
    v5 += 16;
    v7 = v3 + ((*(v5 + 64) + 32) & ~*(v5 + 64));
    v34 = *(v5 + 56);
    v35 = v6;
    v8 = (v5 - 8);
    do
    {
      v9 = v0[10];
      v10 = v0;
      v11 = v0[8];
      v35(v9, v7, v11);
      v12 = sub_23BFF8DB0();
      v14 = v13;
      (*v8)(v9, v11);
      v16 = *(v1 + 16);
      v15 = *(v1 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_23BFCE138((v15 > 1), v16 + 1, 1);
      }

      *(v1 + 16) = v16 + 1;
      v17 = v1 + 16 * v16;
      *(v17 + 32) = v12;
      *(v17 + 40) = v14;
      v7 += v34;
      --v4;
      v0 = v10;
    }

    while (v4);
    v2 = v33;
  }

  v18 = objc_opt_self();
  v19 = sub_23BFFA450();

  v20 = [v18 fetchAssetsWithUUIDs:v19 options:0];
  v0[15] = v20;

  if (!v20)
  {
    goto LABEL_23;
  }

  v24 = v0[5];

  v21 = [v20 count];
  if (v21 >= v24)
  {
    v25 = v24;
  }

  else
  {
    v25 = v21;
  }

  if ((v25 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    return MEMORY[0x2822009F8](v21, v22, v23);
  }

  if (v25)
  {
    for (i = 0; i != v25; i = (i + 1))
    {
      v27 = [v20 objectAtIndex_];
      MEMORY[0x23EEC3100]();
      if (*((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_23BFFA480();
      }

      sub_23BFFA4A0();
    }

    v28 = *v2;
  }

  else
  {
    v28 = MEMORY[0x277D84F90];
  }

  v0[16] = v28;
  sub_23BFFA520();
  v0[17] = sub_23BFFA510();
  v29 = sub_23BFFA4C0();
  v31 = v30;
  v21 = sub_23BF3A68C;
  v22 = v29;
  v23 = v31;

  return MEMORY[0x2822009F8](v21, v22, v23);
}

uint64_t sub_23BF3A68C()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 48);

  v2(v1);

  return MEMORY[0x2822009F8](sub_23BF3A714, 0, 0);
}

uint64_t sub_23BF3A714()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23BF3A784()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23BF3A7F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  v7 = sub_23BFF8DE0();
  v6[6] = v7;
  v6[7] = *(v7 - 8);
  v6[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23BF3A8B4, 0, 0);
}

uint64_t sub_23BF3A8B4()
{
  sub_23BFF8F70();
  swift_allocObject();
  *(v0 + 72) = sub_23BFF8F60();
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_23BF3A968;

  return MEMORY[0x28219B6B0]();
}

uint64_t sub_23BF3A968(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 88) = a1;
  *(v3 + 96) = v1;

  if (v1)
  {
    v4 = sub_23BF3AE50;
  }

  else
  {

    v4 = sub_23BF3AA84;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_23BF3AA84()
{
  v1 = MEMORY[0x277D84F90];
  v0[2] = MEMORY[0x277D84F90];
  v2 = v0 + 2;
  v3 = v0[11];
  v4 = *(v3 + 16);
  if (v4)
  {
    v33 = v0 + 2;
    v5 = v0[7];
    sub_23BFCE138(0, v4, 0);
    v6 = *(v5 + 16);
    v5 += 16;
    v7 = v3 + ((*(v5 + 64) + 32) & ~*(v5 + 64));
    v34 = *(v5 + 56);
    v35 = v6;
    v8 = (v5 - 8);
    do
    {
      v9 = v0[8];
      v10 = v0;
      v11 = v0[6];
      v35(v9, v7, v11);
      v12 = sub_23BFF8DB0();
      v14 = v13;
      (*v8)(v9, v11);
      v16 = *(v1 + 16);
      v15 = *(v1 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_23BFCE138((v15 > 1), v16 + 1, 1);
      }

      *(v1 + 16) = v16 + 1;
      v17 = v1 + 16 * v16;
      *(v17 + 32) = v12;
      *(v17 + 40) = v14;
      v7 += v34;
      --v4;
      v0 = v10;
    }

    while (v4);
    v2 = v33;
  }

  v18 = objc_opt_self();
  v19 = sub_23BFFA450();

  v20 = [v18 fetchAssetsWithUUIDs:v19 options:0];
  v0[13] = v20;

  if (!v20)
  {
    goto LABEL_23;
  }

  v24 = v0[3];

  v21 = [v20 count];
  if (v21 >= v24)
  {
    v25 = v24;
  }

  else
  {
    v25 = v21;
  }

  if ((v25 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    return MEMORY[0x2822009F8](v21, v22, v23);
  }

  if (v25)
  {
    for (i = 0; i != v25; i = (i + 1))
    {
      v27 = [v20 objectAtIndex_];
      MEMORY[0x23EEC3100]();
      if (*((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_23BFFA480();
      }

      sub_23BFFA4A0();
    }

    v28 = *v2;
  }

  else
  {
    v28 = MEMORY[0x277D84F90];
  }

  v0[14] = v28;
  sub_23BFFA520();
  v0[15] = sub_23BFFA510();
  v29 = sub_23BFFA4C0();
  v31 = v30;
  v21 = sub_23BF3AD60;
  v22 = v29;
  v23 = v31;

  return MEMORY[0x2822009F8](v21, v22, v23);
}

uint64_t sub_23BF3AD60()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 32);

  v2(v1);

  return MEMORY[0x2822009F8](sub_23BF3ADE8, 0, 0);
}

uint64_t sub_23BF3ADE8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23BF3AE50()
{

  sub_23BFFA520();
  *(v0 + 128) = sub_23BFFA510();
  v2 = sub_23BFFA4C0();

  return MEMORY[0x2822009F8](sub_23BF3AEEC, v2, v1);
}

uint64_t sub_23BF3AEEC()
{
  v1 = *(v0 + 32);

  v1(MEMORY[0x277D84F90]);

  return MEMORY[0x2822009F8](sub_23BF3AF68, 0, 0);
}

uint64_t sub_23BF3AF68()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23BF3AFD0()
{

  return swift_deallocClassInstance();
}

__n128 _s6LayoutV4RectOwcp(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 sub_23BF3B0DC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_23BF3B158(uint64_t a1, id *a2)
{
  result = sub_23BFFA2E0();
  *a2 = 0;
  return result;
}

uint64_t sub_23BF3B1D0(uint64_t a1, id *a2)
{
  v3 = sub_23BFFA2F0();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_23BF3B250@<X0>(uint64_t *a2@<X8>)
{
  sub_23BFFA300();
  v3 = sub_23BFFA2C0();

  *a2 = v3;
  return result;
}

uint64_t sub_23BF3B294()
{
  v0 = sub_23BFFA300();
  v1 = MEMORY[0x23EEC30B0](v0);

  return v1;
}

uint64_t sub_23BF3B2D0(uint64_t a1)
{
  sub_23BFFA300();
  sub_23BFFA3A0();
}

uint64_t sub_23BF3B324(uint64_t a1)
{
  sub_23BFFA300();
  sub_23BFFAD90();
  sub_23BFFA3A0();
  v1 = sub_23BFFADF0();

  return v1;
}

uint64_t sub_23BF3B398()
{
  v1 = *v0;
  sub_23BFFAD90();
  MEMORY[0x23EEC3A60](v1);
  return sub_23BFFADF0();
}

uint64_t sub_23BF3B3E0(uint64_t a1)
{
  v2 = *v1;
  sub_23BFFAD90();
  MEMORY[0x23EEC3A60](v2);
  return sub_23BFFADF0();
}

uint64_t sub_23BF3B46C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23BF3B544(void *a1, uint64_t *a2)
{
  v2 = sub_23BFFA300();
  v4 = v3;
  if (v2 == sub_23BFFA300() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_23BFFACC0();
  }

  return v7 & 1;
}

uint64_t sub_23BF3B5CC(uint64_t a1)
{
  v2 = sub_23BF3B46C(&qword_27E1E01D8, type metadata accessor for InfoKey, &unk_23C001A9C);
  v3 = sub_23BF3B46C(&qword_27E1E01E0, type metadata accessor for InfoKey, &unk_23C001A3C);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_23BF3B688(uint64_t a1)
{
  v2 = sub_23BF3B46C(&qword_27E1E0108, type metadata accessor for Key, &unk_23C0016B8);
  v3 = sub_23BF3B46C(&qword_27E1E0110, type metadata accessor for Key, &unk_23C001658);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_23BF3B81C@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_23BFFA2C0();

  *a2 = v3;
  return result;
}

uint64_t sub_23BF3B864(uint64_t a1)
{
  v2 = sub_23BF3B46C(&qword_27E1E01E8, type metadata accessor for OpenExternalURLOptionsKey, &unk_23C001B2C);
  v3 = sub_23BF3B46C(&unk_27E1E01F0, type metadata accessor for OpenExternalURLOptionsKey, &unk_23C0018F0);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

void sub_23BF3B998(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_23BF3BC04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_23BF4A264(&qword_27E1E0510, &qword_23C001D30);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_23BF4B33C(a3, v22 - v9, &qword_27E1E0510, &qword_23C001D30);
  v11 = sub_23BFFA540();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_23BF4B2D4(v10, &qword_27E1E0510, &qword_23C001D30);
  }

  else
  {
    sub_23BFFA530();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_23BFFA4C0();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_23BFFA380() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_23BF4B2D4(a3, &qword_27E1E0510, &qword_23C001D30);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_23BF4B2D4(a3, &qword_27E1E0510, &qword_23C001D30);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

id sub_23BF3BEB0()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v1 = [objc_opt_self() preferredFontForTextStyle_];
  [v0 setFont_];

  v2 = [objc_opt_self() whiteColor];
  [v0 setTextColor_];

  [v0 setAccessibilityTraits_];
  return v0;
}

char *sub_23BF3BF8C(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion23WatchFacePreviewsHeader_label;
  v10 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v11 = [objc_opt_self() preferredFontForTextStyle_];
  [v10 setFont_];

  v12 = [objc_opt_self() whiteColor];
  [v10 setTextColor_];

  [v10 setAccessibilityTraits_];
  *&v4[v9] = v10;
  v18.receiver = v4;
  v18.super_class = type metadata accessor for WatchFacePreviewsHeader();
  v13 = objc_msgSendSuper2(&v18, sel_initWithFrame_, a1, a2, a3, a4);
  v14 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion23WatchFacePreviewsHeader_label;
  v15 = *&v13[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion23WatchFacePreviewsHeader_label];
  v16 = v13;
  [v16 addSubview_];
  [*&v13[v14] constrainToSuperviewWithEdges:15 insets:0 useLayoutMargins:{*MEMORY[0x277D75060], *(MEMORY[0x277D75060] + 8), *(MEMORY[0x277D75060] + 16), *(MEMORY[0x277D75060] + 24)}];
  [*&v13[v14] setTextAlignment_];

  return v16;
}

id sub_23BF3C1D0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for WatchFacePreviewsHeader();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_23BF3C24C()
{
  v1 = *v0;
  sub_23BFFAD90();
  MEMORY[0x23EEC3A60](v1);
  return sub_23BFFADF0();
}

uint64_t sub_23BF3C2C0(uint64_t a1)
{
  v2 = *v1;
  sub_23BFFAD90();
  MEMORY[0x23EEC3A60](v2);
  return sub_23BFFADF0();
}

uint64_t sub_23BF3C304()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_23BFFAD90();
  if (v2)
  {
    v1 = qword_23C001E58[v1];
  }

  else
  {
    MEMORY[0x23EEC3A60](1);
  }

  MEMORY[0x23EEC3A60](v1);
  return sub_23BFFADF0();
}

uint64_t sub_23BF3C370()
{
  v1 = *v0;
  if (v0[1])
  {
    v1 = qword_23C001E58[v1];
  }

  else
  {
    MEMORY[0x23EEC3A60](1);
  }

  return MEMORY[0x23EEC3A60](v1);
}

uint64_t sub_23BF3C3C0(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_23BFFAD90();
  if (v3)
  {
    v2 = qword_23C001E58[v2];
  }

  else
  {
    MEMORY[0x23EEC3A60](1);
  }

  MEMORY[0x23EEC3A60](v2);
  return sub_23BFFADF0();
}

BOOL sub_23BF3C428(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8) != 1)
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return v2 == v3;
    }

    return 0;
  }

  if (v2)
  {
    if (v2 != 1)
    {
      if (v3 > 1)
      {
        v7 = *(a2 + 8);
      }

      else
      {
        v7 = 0;
      }

      return v7 == 1;
    }

    v4 = v3 == 1;
  }

  else
  {
    v4 = v3 == 0;
  }

  if (v4)
  {
    v6 = *(a2 + 8);
  }

  else
  {
    v6 = 0;
  }

  return (v6 & 1) != 0;
}

uint64_t sub_23BF3C4D0()
{
  v1 = OBJC_IVAR___NTKParmesanShuffleSelectionViewController____lazy_storage___previewStackViewModel;
  if (*(v0 + OBJC_IVAR___NTKParmesanShuffleSelectionViewController____lazy_storage___previewStackViewModel))
  {
    v2 = *(v0 + OBJC_IVAR___NTKParmesanShuffleSelectionViewController____lazy_storage___previewStackViewModel);
  }

  else
  {
    v2 = sub_23BF3C538(v0);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_23BF3C538(uint64_t a1)
{
  v13 = *MEMORY[0x277D3B3C0];
  v14 = *(MEMORY[0x277D3B3C0] + 8);
  v12 = *(a1 + OBJC_IVAR___NTKParmesanShuffleSelectionViewController_facePreviewSize);
  v11 = *(a1 + OBJC_IVAR___NTKParmesanShuffleSelectionViewController_facePreviewSize + 8);
  v1 = objc_opt_self();
  v2 = [v1 currentDevice];
  v3 = v2;
  if (v2)
  {
    [v2 screenBounds];
    Height = CGRectGetHeight(v15);
    [v3 screenCornerRadius];
  }

  else
  {
    [v1 screenBoundsForSizeClass_];
    Height = CGRectGetHeight(v16);
    [v1 screenCornerRadiusForSizeClass_];
  }

  v6 = v5 * (v14 / Height);
  type metadata accessor for ParmesanStackViewModel(0);
  v7 = swift_allocObject();
  *(v7 + 56) = 1;
  *(v7 + 64) = MEMORY[0x277D84F90];
  sub_23BFF91D0();

  *&v8 = v12;
  *(&v8 + 1) = v11;
  *&v9 = v13;
  *(&v9 + 1) = v14;
  *(v7 + 16) = v8;
  *(v7 + 32) = v9;
  *(v7 + 48) = v6;
  return v7;
}

uint64_t sub_23BF3C688()
{
  v1 = OBJC_IVAR___NTKParmesanShuffleSelectionViewController____lazy_storage___hasDaily;
  v2 = *(v0 + OBJC_IVAR___NTKParmesanShuffleSelectionViewController____lazy_storage___hasDaily);
  if (v2 == 2)
  {
    v3 = [objc_opt_self() currentDevice];
    if (v3)
    {
      v4 = v3;
      LOBYTE(v2) = [v3 isRunningNapiliGMOrLater];
    }

    else
    {
      LOBYTE(v2) = 1;
    }

    *(v0 + v1) = v2;
  }

  return v2 & 1;
}

id sub_23BF3C70C()
{
  v1 = OBJC_IVAR___NTKParmesanShuffleSelectionViewController____lazy_storage___peopleDataSource;
  v2 = *(v0 + OBJC_IVAR___NTKParmesanShuffleSelectionViewController____lazy_storage___peopleDataSource);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___NTKParmesanShuffleSelectionViewController____lazy_storage___peopleDataSource);
  }

  else
  {
    v4 = [objc_opt_self() sharedPhotoLibrary];
    v5 = [objc_allocWithZone(MEMORY[0x277D3CC50]) initWithPhotoLibrary_];

    [v5 addChangeObserver_];
    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

__n128 sub_23BF3C7CC@<Q0>(uint64_t a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR___NTKParmesanShuffleSelectionViewController____lazy_storage___trayConfiguration);
  v4 = *(v1 + OBJC_IVAR___NTKParmesanShuffleSelectionViewController____lazy_storage___trayConfiguration + 16);
  v23 = *(v1 + OBJC_IVAR___NTKParmesanShuffleSelectionViewController____lazy_storage___trayConfiguration);
  v24 = v4;
  v5 = *(v1 + OBJC_IVAR___NTKParmesanShuffleSelectionViewController____lazy_storage___trayConfiguration + 48);
  v25 = *(v1 + OBJC_IVAR___NTKParmesanShuffleSelectionViewController____lazy_storage___trayConfiguration + 32);
  v26 = v5;
  v6 = *(&v23 + 1);
  if (*(&v23 + 1))
  {
    v7 = *(&v26 + 1);
    v8 = v26;
    v16 = v24;
    v17 = v25;
    v9 = v23;
  }

  else
  {
    sub_23BF3C8F4(&v19);
    v6 = *(&v19 + 1);
    v9 = v19;
    v7 = *(&v22 + 1);
    v8 = v22;
    v10 = v3[1];
    v18[0] = *v3;
    v18[1] = v10;
    v11 = v3[3];
    v18[2] = v3[2];
    v18[3] = v11;
    v12 = v20;
    v13 = v20;
    *v3 = v19;
    v3[1] = v13;
    v14 = v22;
    v16 = v12;
    v17 = v21;
    v3[2] = v21;
    v3[3] = v14;

    sub_23BF4B270(v17, *(&v17 + 1));
    sub_23BF4B270(v8, v7);
    sub_23BF4B2D4(v18, &qword_27E1E05D8, &unk_23C001E30);
  }

  sub_23BF4B33C(&v23, v18, &qword_27E1E05D8, &unk_23C001E30);
  *a1 = v9;
  *(a1 + 8) = v6;
  result = v16;
  *(a1 + 16) = v16;
  *(a1 + 32) = v17;
  *(a1 + 48) = v8;
  *(a1 + 56) = v7;
  return result;
}

uint64_t sub_23BF3C8F4@<X0>(uint64_t *a2@<X8>)
{
  sub_23BF4BDF0(0, &qword_27E1E0930, off_278BA5488);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = sub_23BFFA2C0();
  v5 = sub_23BFFA2C0();
  v6 = [ObjCClassFromMetadata localizedStringForKey:v4 comment:v5];

  v7 = sub_23BFFA300();
  v9 = v8;

  v10 = sub_23BFFA2C0();
  v11 = sub_23BFFA2C0();
  v12 = [ObjCClassFromMetadata localizedStringForKey:v10 comment:v11];

  v13 = sub_23BFFA300();
  v15 = v14;

  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  result = swift_unknownObjectWeakInit();
  *a2 = v7;
  a2[1] = v9;
  a2[2] = v13;
  a2[3] = v15;
  a2[4] = sub_23BF4B3A4;
  a2[5] = v16;
  a2[6] = sub_23BF4B3D4;
  a2[7] = v17;
  return result;
}

void sub_23BF3CAC8(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    a2();
  }
}

char *sub_23BF3CB24(void *a1, void *a2, char a3)
{
  *&v3[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_sectionTopBottomContentInsets] = 0x4018000000000000;
  v7 = MEMORY[0x277D84F90];
  *&v3[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_sections] = MEMORY[0x277D84F90];
  v8 = OBJC_IVAR___NTKParmesanShuffleSelectionViewController_suggestionsDataSource;
  type metadata accessor for ParmesanShuffleSuggestionsDataSource();
  v9 = swift_allocObject();
  v10 = [objc_opt_self() sharedPhotoLibrary];
  v11 = [objc_allocWithZone(MEMORY[0x277D3B3A0]) initWithPhotoLibrary_];

  *&v3[v8] = v9;
  *(v9 + 16) = v11;
  *&v3[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_collectionView] = 0;
  *&v3[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_selectedTypeface] = 2;
  *&v3[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_selectedNumeralsOption] = 0;
  *&v3[OBJC_IVAR___NTKParmesanShuffleSelectionViewController____lazy_storage___previewStackViewModel] = 0;
  v12 = *MEMORY[0x277D3B3C0];
  v13 = *(MEMORY[0x277D3B3C0] + 8);
  v14 = [objc_opt_self() mainScreen];
  [v14 bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v49.origin.x = v16;
  v49.origin.y = v18;
  v49.size.width = v20;
  v49.size.height = v22;
  v23 = CGRectGetHeight(v49) * 0.2;
  v24 = v12 / v13 * v23;
  if (v13 < v23)
  {
    v24 = v12;
    v23 = v13;
  }

  v25 = &v3[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_facePreviewSize];
  *v25 = v24;
  v25[1] = v23;
  *&v3[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_availableSuggestionTypes] = v7;
  v3[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_loadedInitialSelection] = 0;
  *&v3[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_selectedSuggestionsTypes] = v7;
  *&v3[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_selectedPersonIdentifiers] = 0;
  v26 = &v3[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_selectedCollection];
  *v26 = 0;
  v26[1] = 0;
  v3[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_selectedDaily] = 0;
  v3[OBJC_IVAR___NTKParmesanShuffleSelectionViewController____lazy_storage___hasDaily] = 2;
  *&v3[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_loadingAssetSelection] = 0;
  *&v3[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_loadingPersonIdentifiers] = 0;
  v27 = &v3[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_loadingCollectionIdentifier];
  *v27 = 0;
  v27[1] = 0;
  v3[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_loadingDaily] = 0;
  *&v3[OBJC_IVAR___NTKParmesanShuffleSelectionViewController____lazy_storage___peopleDataSource] = 0;
  *&v3[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_vipPeopleIdentifiers] = 0;
  *&v3[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_nonVipPeopleIdentifiers] = 0;
  *&v3[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_diffableDataSource] = 0;
  *&v3[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_selectionDebouncetimer] = 0;
  v28 = OBJC_IVAR___NTKParmesanShuffleSelectionViewController_floatingButtonTray;
  *&v3[v28] = [objc_allocWithZone(type metadata accessor for ParmesanButtonTray()) initWithFrame_];
  v29 = &v3[OBJC_IVAR___NTKParmesanShuffleSelectionViewController____lazy_storage___trayConfiguration];
  v29[2] = 0u;
  v29[3] = 0u;
  *v29 = 0u;
  v29[1] = 0u;
  result = NTKNewUniqueTeporaryResourceDirectory();
  if (result)
  {
    v31 = result;
    v32 = sub_23BFFA300();
    v34 = v33;

    v35 = &v3[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_resourceDirectory];
    *v35 = v32;
    v35[1] = v34;
    swift_unknownObjectWeakInit();
    *&v3[OBJC_IVAR___NTKParmesanShuffleSelectionBaseViewController_editor] = a1;
    *&v3[OBJC_IVAR___NTKParmesanShuffleSelectionBaseViewController_face] = a2;
    v3[OBJC_IVAR___NTKParmesanShuffleSelectionBaseViewController_inGallery] = a3 & 1;
    v48.receiver = v3;
    v48.super_class = type metadata accessor for ParmesanShuffleSelectionBaseViewController();
    v36 = a1;
    v37 = a2;
    v38 = objc_msgSendSuper2(&v48, sel_initWithNibName_bundle_, 0, 0);
    v39 = [v37 selectedOptionForCustomEditMode:19 slot:{0, v48.receiver, v48.super_class}];
    if (v39)
    {
      v40 = v39;
      type metadata accessor for ParmesanNumeralsEditOption();
      v41 = swift_dynamicCastClass();
      if (v41)
      {
        v42 = [v41 numeralOption];

        *&v38[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_selectedNumeralsOption] = v42;
      }

      else
      {
      }
    }

    v43 = [v37 selectedOptionForCustomEditMode:13 slot:0];
    if (v43)
    {
      v44 = v43;
      type metadata accessor for ParmesanTypefaceEditOption();
      v45 = swift_dynamicCastClass();
      if (!v45)
      {

        goto LABEL_16;
      }

      v46 = [v45 _value];

      v47 = v46 == 1;
      if (v46 == 2)
      {
        v47 = 2;
      }

      *&v38[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_selectedTypeface] = v47;
    }

    else
    {
    }

    v44 = v38;
LABEL_16:

    return v38;
  }

  __break(1u);
  return result;
}

double sub_23BF3D038()
{

  swift_unknownObjectRelease();
  v1 = *(v0 + OBJC_IVAR___NTKParmesanShuffleSelectionViewController____lazy_storage___trayConfiguration);
  v2 = *(v0 + OBJC_IVAR___NTKParmesanShuffleSelectionViewController____lazy_storage___trayConfiguration + 8);
  v3 = *(v0 + OBJC_IVAR___NTKParmesanShuffleSelectionViewController____lazy_storage___trayConfiguration + 16);
  v4 = *(v0 + OBJC_IVAR___NTKParmesanShuffleSelectionViewController____lazy_storage___trayConfiguration + 24);
  v5 = *(v0 + OBJC_IVAR___NTKParmesanShuffleSelectionViewController____lazy_storage___trayConfiguration + 32);
  v6 = *(v0 + OBJC_IVAR___NTKParmesanShuffleSelectionViewController____lazy_storage___trayConfiguration + 40);
  v7 = *(v0 + OBJC_IVAR___NTKParmesanShuffleSelectionViewController____lazy_storage___trayConfiguration + 48);
  v8 = *(v0 + OBJC_IVAR___NTKParmesanShuffleSelectionViewController____lazy_storage___trayConfiguration + 56);

  return sub_23BF4A1A0(v1, v2, v3, v4, v5, v6, v7, v8);
}

id sub_23BF3D1A4()
{
  v9[1] = *MEMORY[0x277D85DE8];
  v1 = [objc_opt_self() defaultManager];

  v2 = sub_23BFFA2C0();

  v9[0] = 0;
  v3 = [v1 removeItemAtPath:v2 error:v9];

  if (v3)
  {
    v4 = v9[0];
  }

  else
  {
    v5 = v9[0];
    v6 = sub_23BFF8BC0();

    swift_willThrow();
  }

  v8.receiver = v0;
  v8.super_class = type metadata accessor for ParmesanShuffleSelectionViewController();
  return objc_msgSendSuper2(&v8, sel_dealloc);
}

void sub_23BF3D468(uint64_t a1)
{
  v2 = v1;
  v85.receiver = v1;
  v85.super_class = type metadata accessor for ParmesanShuffleSelectionViewController();
  objc_msgSendSuper2(&v85, sel_loadView);
  v3 = sub_23BF3E1E8(0);
  v4 = [objc_allocWithZone(MEMORY[0x277D752A0]) initWithFrame:v3 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

  v5 = OBJC_IVAR___NTKParmesanShuffleSelectionViewController_collectionView;
  v6 = *&v2[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_collectionView];
  *&v2[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_collectionView] = v4;

  v7 = [v2 view];
  if (!v7)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (!*&v2[v5])
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v8 = v7;
  [v7 addSubview_];

  v9 = *&v2[v5];
  if (!v9)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v10 = *MEMORY[0x277D75060];
  v11 = *(MEMORY[0x277D75060] + 8);
  v12 = *(MEMORY[0x277D75060] + 16);
  v13 = *(MEMORY[0x277D75060] + 24);
  [v9 constrainToSuperviewWithEdges:15 insets:0 useLayoutMargins:{*MEMORY[0x277D75060], v11, v12, v13}];
  v14 = *&v2[v5];
  if (!v14)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = objc_allocWithZone(sub_23BF4A264(&unk_27E1E0600, &qword_23C001E40));
  v16 = v14;
  v17 = sub_23BFF9540();
  v18 = OBJC_IVAR___NTKParmesanShuffleSelectionViewController_diffableDataSource;
  v19 = *&v2[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_diffableDataSource];
  *&v2[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_diffableDataSource] = v17;
  v20 = v17;

  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_23BFF9550();

  v21 = *&v2[v5];
  if (!v21)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  [v21 setDataSource_];
  v22 = *&v2[v5];
  if (!v22)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  [v22 setDelegate_];
  v23 = *&v2[v5];
  if (!v23)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  [v23 setAllowsMultipleSelection_];
  v24 = *&v2[v5];
  if (!v24)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  sub_23BF4BDF0(0, &qword_27E1E2860, 0x277D752A8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v26 = v24;
  v27 = NSStringFromClass(ObjCClassFromMetadata);
  sub_23BFFA300();

  v28 = sub_23BFFA2C0();

  [v26 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v28];

  v29 = *&v2[v5];
  if (!v29)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  type metadata accessor for ParmesanListCell();
  v30 = swift_getObjCClassFromMetadata();
  v31 = v29;
  v32 = NSStringFromClass(v30);
  sub_23BFFA300();

  v33 = sub_23BFFA2C0();

  [v31 registerClass:v30 forCellWithReuseIdentifier:v33];

  v34 = *&v2[v5];
  if (!v34)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  type metadata accessor for WatchFacePreviewsHeader();
  v35 = swift_getObjCClassFromMetadata();
  v36 = v34;
  v37 = sub_23BFFA2C0();
  v38 = sub_23BFFA2C0();
  [v36 registerClass:v35 forSupplementaryViewOfKind:v37 withReuseIdentifier:v38];

  v39 = *&v2[v5];
  if (!v39)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  type metadata accessor for ParmesanButtonTrayReusableView();
  v40 = swift_getObjCClassFromMetadata();
  v41 = v39;
  v42 = sub_23BFFA2C0();
  v43 = sub_23BFFA2C0();
  [v41 registerClass:v40 forSupplementaryViewOfKind:v42 withReuseIdentifier:v43];

  v44 = [v2 view];
  if (!v44)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v45 = v44;
  v46 = OBJC_IVAR___NTKParmesanShuffleSelectionViewController_floatingButtonTray;
  [v44 addSubview_];

  [*&v2[v46] setHidden_];
  v47 = *&v2[v46];
  sub_23BF3C7CC(&v86);
  v48 = *&v47[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion18ParmesanButtonTray_container];
  v91[0] = v86;
  v49 = v86;
  v50 = v87;
  v90 = v87;
  v51 = &v48[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion29ParmesanButtonTrayContentView_configuration];
  v52 = *&v48[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion29ParmesanButtonTrayContentView_configuration];
  v53 = *&v48[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion29ParmesanButtonTrayContentView_configuration + 16];
  v54 = *&v48[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion29ParmesanButtonTrayContentView_configuration + 48];
  v84[2] = *&v48[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion29ParmesanButtonTrayContentView_configuration + 32];
  v84[3] = v54;
  v55 = v88;
  v56 = v89;
  v84[0] = v52;
  v84[1] = v53;
  v57 = v89;
  *(v51 + 2) = v88;
  *(v51 + 3) = v57;
  *v51 = v49;
  *(v51 + 1) = v50;
  v58 = v48;
  sub_23BF4B214(v91, v83);
  sub_23BF4B270(v56, *(&v56 + 1));
  sub_23BF4B270(v55, *(&v55 + 1));
  sub_23BF4B33C(&v90, v83, &qword_27E1E05D0, &unk_23C0023D0);
  sub_23BF4B2D4(v84, &qword_27E1E05D8, &unk_23C001E30);
  sub_23BF89EF4(&v86);

  sub_23BF4B280(v91);
  sub_23BF4B2D4(&v90, &qword_27E1E05D0, &unk_23C0023D0);
  sub_23BF4A21C(v55, *(&v55 + 1));
  sub_23BF4A21C(v56, *(&v56 + 1));
  [*&v2[v46] constrainToSuperviewWithEdges:14 insets:0 useLayoutMargins:{v10, v11, v12, v13}];
  sub_23BF4A264(&qword_27E1E05E0, &qword_23C002120);
  v59 = swift_allocObject();
  v60 = *&v2[v46];
  *(v59 + 16) = xmmword_23C001B90;
  v61 = [*(v60 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion18ParmesanButtonTray_buttonLayoutGuide) leadingAnchor];
  v62 = [v2 view];
  if (!v62)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v63 = v62;
  v64 = [v62 layoutMarginsGuide];

  v65 = [v64 leadingAnchor];
  v66 = [v61 constraintEqualToAnchor_];

  v67 = *&v2[v46];
  *(v59 + 32) = v66;
  v68 = [*(v67 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion18ParmesanButtonTray_buttonLayoutGuide) trailingAnchor];
  v69 = [v2 view];
  if (!v69)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v70 = v69;
  v71 = [v69 layoutMarginsGuide];

  v72 = [v71 trailingAnchor];
  v73 = [v68 constraintEqualToAnchor_];

  v74 = *&v2[v46];
  *(v59 + 40) = v73;
  v75 = [*(v74 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion18ParmesanButtonTray_buttonLayoutGuide) bottomAnchor];
  v76 = [v2 view];
  if (v76)
  {
    v77 = v76;
    v78 = objc_opt_self();
    v79 = [v77 safeAreaLayoutGuide];

    v80 = [v79 bottomAnchor];
    v81 = [v75 constraintEqualToAnchor_];

    *(v59 + 48) = v81;
    sub_23BF4BDF0(0, &qword_27E1E0610, 0x277CCAAD0);
    v82 = sub_23BFFA450();

    [v78 activateConstraints_];

    return;
  }

LABEL_31:
  __break(1u);
}

char *sub_23BF3DD08(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4)
{
  v5 = *a3;
  v6 = *(a3 + 8);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    if (!v6)
    {
      v9 = sub_23BF3FEE0(v5, a2);
LABEL_7:
      v10 = v9;

      return v10;
    }

    if (v5)
    {
      if (v5 == 1)
      {
        sub_23BF40E3C(a2);
      }

      else
      {
        if ((sub_23BF3C688() & 1) == 0)
        {

          return 0;
        }

        sub_23BF41694(a2);
      }

      goto LABEL_7;
    }

    v11 = *&result[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_collectionView];
    if (v11)
    {
      sub_23BF4BDF0(0, &qword_27E1E2860, 0x277D752A8);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v13 = v11;
      v14 = NSStringFromClass(ObjCClassFromMetadata);
      sub_23BFFA300();

      v15 = sub_23BFFA2C0();

      v16 = sub_23BFF8DF0();
      v17 = [v13 dequeueReusableCellWithReuseIdentifier:v15 forIndexPath:v16];

      sub_23BF3C4D0();
      v18[3] = sub_23BF4A264(&qword_27E1E0618, &unk_23C001E48);
      v18[4] = sub_23BF4BE40(&qword_27E1E0620, &qword_27E1E0618, &unk_23C001E48, MEMORY[0x277CDE1C0]);
      sub_23BF4AD24(v18);
      sub_23BF4BE88();
      sub_23BFF9AF0();
      MEMORY[0x23EEC3420](v18);

      return v17;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_23BF3DF3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v8 = Strong;
  v9 = sub_23BF3EB34(a2, a3);

  return v9;
}

id sub_23BF3E00C(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v8.receiver = v2;
  v8.super_class = type metadata accessor for ParmesanShuffleSelectionViewController();
  objc_msgSendSuper2(&v8, sel_viewWillAppear_, v3 & 1);
  sub_23BF42B40();
  if ([*(*&v2[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_suggestionsDataSource] + 16) hasSuggestions])
  {
    sub_23BF41E90();
  }

  if (*&v2[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_vipPeopleIdentifiers] && *&v2[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_nonVipPeopleIdentifiers])
  {

    sub_23BF4A030(v4);
  }

  else
  {
    v5 = sub_23BF3C70C();
    sub_23BF4959C(v5);
  }

  v6 = sub_23BF3C70C();
  [v6 startBackgroundFetch];

  return [*(*(*&v2[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_floatingButtonTray] + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion18ParmesanButtonTray_container) + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion29ParmesanButtonTrayContentView_primaryButton) setEnabled_];
}

id sub_23BF3E1E8(char a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D752C0]) init];
  v3 = objc_opt_self();
  v4 = [v3 fractionalWidthDimension_];
  v5 = [v3 estimatedDimension_];
  v6 = objc_opt_self();
  v7 = [v6 sizeWithWidthDimension:v4 heightDimension:v5];

  v8 = sub_23BFFA2C0();
  v9 = objc_opt_self();
  v10 = [v9 boundarySupplementaryItemWithLayoutSize:v7 elementKind:v8 alignment:1];

  sub_23BF4A264(&qword_27E1E05E0, &qword_23C002120);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_23C001BA0;
  *(v11 + 32) = v10;
  v27 = v11;
  v12 = v10;
  if (a1)
  {
    v13 = [v3 fractionalWidthDimension_];
    v14 = [v3 estimatedDimension_];
    v15 = [v6 sizeWithWidthDimension:v13 heightDimension:v14];

    v16 = v15;
    v17 = sub_23BFFA2C0();
    v18 = [v9 boundarySupplementaryItemWithLayoutSize:v16 elementKind:v17 alignment:5 absoluteOffset:{0.0, 12.0}];

    [v18 setExtendsBoundary_];
    v19 = v18;
    MEMORY[0x23EEC3100]();
    if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_23BFFA480();
    }

    sub_23BFFA4A0();
  }

  sub_23BF4BDF0(0, &qword_27E1E05E8, 0x277CFB830);
  v20 = sub_23BFFA450();

  [v2 setBoundarySupplementaryItems_];

  [v2 setScrollDirection_];
  [v2 setInterSectionSpacing_];
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = objc_allocWithZone(MEMORY[0x277D752B8]);
  aBlock[4] = sub_23BF4B334;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23BF4A124;
  aBlock[3] = &unk_284EBF2F0;
  v23 = _Block_copy(aBlock);

  v24 = [v22 initWithSectionProvider:v23 configuration:v2];

  _Block_release(v23);

  return v24;
}

char *sub_23BF3E60C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_23BFF9640();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23BFF9660();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v7, *MEMORY[0x277D74D50], v4, v10);
  sub_23BFF9650();
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    sub_23BF4BDF0(0, &qword_27E1E05F0, 0x277CFB868);
    v16 = sub_23BFFA7D0();
LABEL_9:
    (*(v9 + 8))(v12, v8);
    return v16;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v14 = result;
    v15 = *&result[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_sections];
    if (*(v15 + 16) > a1)
    {
      if (*(v15 + a1 + 32))
      {
        sub_23BF4BDF0(0, &qword_27E1E05F0, 0x277CFB868);
        v16 = sub_23BFFA7D0();
        [v16 contentInsets];
        [v16 setContentInsets_];
      }

      else
      {
        v17 = objc_opt_self();
        v18 = [v17 fractionalWidthDimension_];
        v19 = &v14[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_facePreviewSize];
        v20 = [v17 absoluteDimension_];
        v21 = [objc_opt_self() sizeWithWidthDimension:v18 heightDimension:v20];

        v22 = objc_opt_self();
        v35 = v21;
        v23 = [v22 itemWithLayoutSize_];
        v24 = objc_opt_self();
        sub_23BF4A264(&qword_27E1E05E0, &qword_23C002120);
        v25 = swift_allocObject();
        *(v25 + 16) = xmmword_23C001BA0;
        *(v25 + 32) = v23;
        sub_23BF4BDF0(0, &qword_27E1E05F8, 0x277CFB860);
        v37 = v8;
        v36 = v23;
        v26 = sub_23BFFA450();

        v27 = [v24 verticalGroupWithLayoutSize:v21 subitems:v26];

        v28 = objc_opt_self();
        v29 = v27;
        v30 = [v28 fixedSpacing_];
        v31 = [v28 fixedSpacing_];
        v32 = [v28 fixedSpacing_];
        v33 = [v28 fixedSpacing_];
        v34 = [objc_opt_self() spacingForLeading:v30 top:v31 trailing:v32 bottom:v33];

        v8 = v37;
        [v29 setEdgeSpacing_];

        v16 = [objc_opt_self() sectionWithGroup_];
      }

      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23BF3EB34(uint64_t result, uint64_t a2)
{
  if (result == 0xD00000000000001ALL && 0x800000023C00C420 == a2 || (result = sub_23BFFACC0(), (result & 1) != 0))
  {
    v3 = *(v2 + OBJC_IVAR___NTKParmesanShuffleSelectionViewController_collectionView);
    if (v3)
    {
      v4 = v3;
      v5 = sub_23BFFA2C0();
      v6 = sub_23BFFA2C0();
      v7 = sub_23BFF8DF0();
      v8 = [v4 dequeueReusableSupplementaryViewOfKind:v5 withReuseIdentifier:v6 forIndexPath:v7];

      type metadata accessor for WatchFacePreviewsHeader();
      v9 = swift_dynamicCastClassUnconditional();
      v10 = *(v9 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion23WatchFacePreviewsHeader_label);
      sub_23BF4BDF0(0, &qword_27E1E0930, off_278BA5488);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v12 = v10;
      v13 = sub_23BFFA2C0();
      v14 = sub_23BFFA2C0();
      v15 = [ObjCClassFromMetadata localizedStringForKey:v13 comment:v14];

      if (!v15)
      {
        sub_23BFFA300();
        v15 = sub_23BFFA2C0();
      }

      [v12 setText_];

      return v9;
    }

    __break(1u);
  }

  else
  {
    v16 = *(v2 + OBJC_IVAR___NTKParmesanShuffleSelectionViewController_collectionView);
    if (v16)
    {
      v17 = v16;
      v18 = sub_23BFFA2C0();
      v19 = sub_23BFFA2C0();
      v20 = sub_23BFF8DF0();
      v21 = [v17 dequeueReusableSupplementaryViewOfKind:v18 withReuseIdentifier:v19 forIndexPath:v20];

      type metadata accessor for ParmesanButtonTrayReusableView();
      v9 = swift_dynamicCastClassUnconditional();
      sub_23BF3C7CC(&v34);
      v22 = *(v9 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion30ParmesanButtonTrayReusableView_tray);
      v38 = v35;
      v39 = v34;
      v23 = v34;
      v24 = v35;
      v25 = (v22 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion29ParmesanButtonTrayContentView_configuration);
      v26 = *(v22 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion29ParmesanButtonTrayContentView_configuration);
      v27 = *(v22 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion29ParmesanButtonTrayContentView_configuration + 16);
      v28 = *(v22 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion29ParmesanButtonTrayContentView_configuration + 48);
      v33[2] = *(v22 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion29ParmesanButtonTrayContentView_configuration + 32);
      v33[3] = v28;
      v29 = v36;
      v30 = v37;
      v33[0] = v26;
      v33[1] = v27;
      v31 = v37;
      v25[2] = v36;
      v25[3] = v31;
      *v25 = v23;
      v25[1] = v24;
      sub_23BF4B214(&v39, v32);
      sub_23BF4B33C(&v38, v32, &qword_27E1E05D0, &unk_23C0023D0);
      sub_23BF4B270(v29, *(&v29 + 1));
      sub_23BF4B270(v30, *(&v30 + 1));
      sub_23BF4B2D4(v33, &qword_27E1E05D8, &unk_23C001E30);
      sub_23BF89EF4(&v34);
      sub_23BF4B280(&v39);
      sub_23BF4B2D4(&v38, &qword_27E1E05D0, &unk_23C0023D0);
      sub_23BF4A21C(v29, *(&v29 + 1));
      sub_23BF4A21C(v30, *(&v30 + 1));
      return v9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23BF3EF24(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v8 = sub_23BFF8E50();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23BFF8E00();
  v12 = a3;
  v13 = a1;
  LOBYTE(a5) = a5(v11);

  (*(v9 + 8))(v11, v8);
  return a5 & 1;
}

uint64_t sub_23BF3F064(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(char *))
{
  v8 = sub_23BFF8E50();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23BFF8E00();
  v12 = a3;
  v13 = a1;
  a5(v11);

  return (*(v9 + 8))(v11, v8);
}

void sub_23BF3F16C()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_selectedCollection];
  v3 = *&v0[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_selectedCollection + 8];
  if (!v3)
  {
    v14 = OBJC_IVAR___NTKParmesanShuffleSelectionViewController_selectedSuggestionsTypes;
    swift_beginAccess();
    v15 = *&v1[v14];
    v16 = *(v15 + 16);
    if (!v16)
    {
      v20 = type metadata accessor for ParmesanShuffleSelection();
      v21 = objc_allocWithZone(v20);
      *&v21[OBJC_IVAR___NTKParmesanShuffleSelection_shuffleTypes] = 0;
      *&v21[OBJC_IVAR___NTKParmesanShuffleSelection_personIdentifiers] = 0;
      v22 = &v21[OBJC_IVAR___NTKParmesanShuffleSelection_collectionIdentifier];
      *v22 = 0;
      v22[1] = 0;
      *&v21[OBJC_IVAR___NTKParmesanShuffleSelection_manualSelection] = 0;
      v21[OBJC_IVAR___NTKParmesanShuffleSelection_isDaily] = 1;
      v62.receiver = v21;
      v62.super_class = v20;
      v23 = objc_msgSendSuper2(&v62, sel_init);
LABEL_17:
      v8 = v23;
      goto LABEL_18;
    }

    v17 = *&v1[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_selectedPersonIdentifiers];
    if (!v17)
    {
LABEL_16:
      v26 = *&v1[v14];
      v27 = type metadata accessor for ParmesanShuffleSelection();
      v28 = objc_allocWithZone(v27);
      *&v28[OBJC_IVAR___NTKParmesanShuffleSelection_shuffleTypes] = v26;
      *&v28[OBJC_IVAR___NTKParmesanShuffleSelection_personIdentifiers] = v17;
      v29 = &v28[OBJC_IVAR___NTKParmesanShuffleSelection_collectionIdentifier];
      *v29 = 0;
      v29[1] = 0;
      *&v28[OBJC_IVAR___NTKParmesanShuffleSelection_manualSelection] = 0;
      v28[OBJC_IVAR___NTKParmesanShuffleSelection_isDaily] = 0;
      v60.receiver = v28;
      v60.super_class = v27;

      v23 = objc_msgSendSuper2(&v60, sel_init);
      goto LABEL_17;
    }

    if (*&v1[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_vipPeopleIdentifiers] && *&v1[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_nonVipPeopleIdentifiers])
    {
      v61 = *&v1[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_vipPeopleIdentifiers];

      sub_23BF4A030(v18);
      v19 = sub_23BFD9274(v17, v61);

      if (v19)
      {
LABEL_9:

        v17 = 0;
        goto LABEL_16;
      }

      v15 = *&v1[v14];
      v16 = *(v15 + 16);
    }

    else
    {
    }

    v24 = (v15 + 32);
    while (v16)
    {
      v25 = *v24++;
      --v16;
      if (v25 == 1)
      {
        goto LABEL_16;
      }
    }

    goto LABEL_9;
  }

  v4 = *v2;
  v5 = type metadata accessor for ParmesanShuffleSelection();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR___NTKParmesanShuffleSelection_shuffleTypes] = 0;
  *&v6[OBJC_IVAR___NTKParmesanShuffleSelection_personIdentifiers] = 0;
  v7 = &v6[OBJC_IVAR___NTKParmesanShuffleSelection_collectionIdentifier];
  *v7 = v4;
  v7[1] = v3;
  *&v6[OBJC_IVAR___NTKParmesanShuffleSelection_manualSelection] = 0;
  v6[OBJC_IVAR___NTKParmesanShuffleSelection_isDaily] = 0;
  v59.receiver = v6;
  v59.super_class = v5;
  swift_bridgeObjectRetain_n();
  v8 = objc_msgSendSuper2(&v59, sel_init);
  v9 = *&v1[OBJC_IVAR___NTKParmesanShuffleSelectionBaseViewController_editor];
  v10 = sub_23BFFA2C0();

  v11 = [v9 titleForCollectionWithIdentifier_];

  if (v11)
  {
    sub_23BFFA300();
    v13 = v12;

    goto LABEL_19;
  }

LABEL_18:
  v13 = 0;
LABEL_19:
  v30 = sub_23BF3C4D0();
  swift_getKeyPath();
  v61 = v30;
  sub_23BF4B1CC(&qword_27E1E0540, 255, type metadata accessor for ParmesanStackViewModel, &unk_23C004558);
  sub_23BFF91C0();

  v31 = *(v30 + 64);

  v32 = *(v31 + 16);

  if (v32)
  {
    v33 = *&v1[OBJC_IVAR___NTKParmesanShuffleSelectionViewController____lazy_storage___previewStackViewModel];
    swift_getKeyPath();
    v61 = v33;

    sub_23BFF91C0();

    v34 = *(v33 + 64);

    if (v32 >> 1 < *(v34 + 16))
    {
      v35 = v34 + 80 * (v32 >> 1);
      v36 = *(v35 + 88);
      v37 = *(v35 + 48);
      v38 = v36;

      v39 = *&v1[OBJC_IVAR___NTKParmesanShuffleSelectionBaseViewController_editor];
      v40 = sub_23BFFA2C0();

      if (v13)
      {
        v41 = sub_23BFFA2C0();
      }

      else
      {
        v41 = 0;
      }

      [v39 setShuffleSelection:v8 withKeyAssetIdentifier:v40 albumName:v41];

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong shuffleSelectionViewController:v1 didFinishWithSelection:v8];

        swift_unknownObjectRelease();
      }

      else
      {
      }

      return;
    }

    __break(1u);
    goto LABEL_38;
  }

  if (qword_27E1DFDC0 != -1)
  {
LABEL_38:
    swift_once();
  }

  v42 = sub_23BFF92B0();
  sub_23BF4A22C(v42, qword_27E1EB510);
  v43 = sub_23BFF9290();
  v44 = sub_23BFFA650();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&dword_23BF0C000, v43, v44, "Failed to get keyAsset, cannot create shuffle", v45, 2u);
    MEMORY[0x23EEC4DF0](v45, -1, -1);
  }

  sub_23BF4BDF0(0, &qword_27E1E0930, off_278BA5488);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v47 = sub_23BFFA2C0();
  v48 = sub_23BFFA2C0();
  v49 = [ObjCClassFromMetadata localizedStringForKey:v47 comment:v48];

  if (!v49)
  {
    sub_23BFFA300();
    v49 = sub_23BFFA2C0();
  }

  v50 = sub_23BFFA2C0();
  v51 = sub_23BFFA2C0();
  v52 = [ObjCClassFromMetadata localizedStringForKey:v50 comment:v51];

  if (!v52)
  {
    sub_23BFFA300();
    v52 = sub_23BFFA2C0();
  }

  v53 = [objc_opt_self() alertControllerWithTitle:v49 message:v52 preferredStyle:1];

  v54 = sub_23BFFA2C0();
  v55 = sub_23BFFA2C0();
  v56 = [ObjCClassFromMetadata localizedStringForKey:v54 comment:v55];

  if (!v56)
  {
    sub_23BFFA300();
    v56 = sub_23BFFA2C0();
  }

  v57 = [objc_opt_self() actionWithTitle:v56 style:0 handler:0];

  [v53 addAction_];
  [v1 presentViewController:v53 animated:1 completion:0];
}