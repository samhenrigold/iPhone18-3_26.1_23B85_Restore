void sub_24A505828(float a1, float a2, float a3, float a4, uint64_t a5, uint64_t a6, int a7, float32x2_t *a8, float32x2_t *a9, float *a10, float *a11)
{
  v18 = (a1 * 3.1416) / 180.0;
  v19 = (a2 * 3.1416) / 180.0;
  v23 = (a3 + 0.2) + ((a3 - (a3 + 0.2)) * a4);
  v20 = vmul_n_f32(__sincosf_stret(v18 + v19), v23);
  v21 = __sincosf_stret(v18 - v19);
  *a8 = v20;
  *a9 = vmul_n_f32(v21, v23);
  if (a7)
  {
    v22 = 180.5;
  }

  else
  {
    v22 = a2;
  }

  *a10 = (a1 * -3.1416) / 180.0;
  *a11 = v22;
}

void sub_24A50592C()
{
  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = *(arguments_buffer + 56);
  v3 = *(arguments_buffer + 64);
  v2 = *(arguments_buffer + 72);
  v4 = *(arguments_buffer + 80);
  v5 = **(arguments_buffer + 16);
  v6 = **(arguments_buffer + 24);
  v7 = **(arguments_buffer + 48);
  v8 = (v5 * 3.1416) / 180.0;
  v9 = (v6 * 3.1416) / 180.0;
  v13 = (**(arguments_buffer + 32) + 0.2) + ((**(arguments_buffer + 32) - (**(arguments_buffer + 32) + 0.2)) * **(arguments_buffer + 40));
  v10 = vmul_n_f32(__sincosf_stret(v8 + v9), v13);
  v11 = __sincosf_stret(v8 - v9);
  *v1 = v10;
  *v3 = vmul_n_f32(v11, v13);
  if (v7)
  {
    v12 = 180.5;
  }

  else
  {
    v12 = v6;
  }

  *v2 = (v5 * -3.1416) / 180.0;
  *v4 = v12;
}

uint64_t sub_24A505A40()
{
  result = vfx_script_get_arguments_buffer();
  v1 = *(result + 24);
  v2 = **(result + 16);
  *v1 = v2;
  v1[1] = v2;
  return result;
}

void sub_24A505A64(uint64_t a1, float a2, float a3, float a4, float a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, float *a14, _DWORD *a15, _DWORD *a16, float *a17, float *a18, float *a19, _DWORD *a20, _DWORD *a21)
{
  vfx_script_clock_delta_time();
  if (fabsf(a3) > 0.00000011921)
  {
    v29 = 1.0 / a3;
  }

  else
  {
    v29 = 0.0;
  }

  v30 = v29 * v28;
  v31 = -(v29 * v28);
  if (a7)
  {
    v31 = v30;
  }

  v32 = fminf(fmaxf(v31 + a2, 0.0), 1.0);
  vfx_script_texture_sample1d();
  v46 = v33;
  vfx_script_texture_sample1d();
  v45 = v34;
  vfx_script_clock_delta_time();
  v36 = v29 * v35;
  v37 = -(v29 * v35);
  if (a10)
  {
    v37 = v36;
  }

  v38 = fminf(fmaxf(v37 + a4, 0.0), 1.0);
  if (v38 >= 0.5)
  {
    v39 = (((v38 * -2.0) + 4.0) * v38) + -1.0;
  }

  else
  {
    v39 = (v38 * v38) + (v38 * v38);
  }

  vfx_script_clock_delta_time();
  v41 = v40 + v40;
  if (a11)
  {
    v41 = -v41;
  }

  v42 = fminf(fmaxf(v41 + a5, 0.0), 1.0);
  vfx_script_texture_sample1d();
  v47 = v43;
  vfx_script_texture_sample1d();
  *a14 = v32;
  *a15 = v46;
  *a16 = v45;
  *a17 = v39;
  *a18 = v38;
  *a19 = v42;
  *a20 = v47;
  *a21 = v44;
}

void sub_24A505C44(uint64_t a1)
{
  arguments_buffer = vfx_script_get_arguments_buffer();
  v2 = *(arguments_buffer + 104);
  v3 = *(arguments_buffer + 112);
  v34 = *(arguments_buffer + 120);
  v33 = *(arguments_buffer + 128);
  v32 = *(arguments_buffer + 136);
  v31 = *(arguments_buffer + 144);
  v35 = *(arguments_buffer + 152);
  v36 = *(arguments_buffer + 160);
  v4 = **(arguments_buffer + 16);
  v5 = **(arguments_buffer + 24);
  v6 = **(arguments_buffer + 32);
  v7 = **(arguments_buffer + 56);
  v8 = **(arguments_buffer + 64);
  v9 = **(arguments_buffer + 72);
  v10 = **(arguments_buffer + 80);
  vfx_script_clock_delta_time();
  if (fabsf(v5) > 0.00000011921)
  {
    v12 = 1.0 / v5;
  }

  else
  {
    v12 = 0.0;
  }

  v13 = v12 * v11;
  v14 = -(v12 * v11);
  if (v6)
  {
    v14 = v13;
  }

  v15 = fminf(fmaxf(v4 + v14, 0.0), 1.0);
  vfx_script_texture_sample1d();
  v30 = v16;
  vfx_script_texture_sample1d();
  v29 = v17;
  vfx_script_clock_delta_time();
  v19 = v12 * v18;
  v20 = -(v12 * v18);
  if (v7)
  {
    v20 = v19;
  }

  v21 = fminf(fmaxf(v8 + v20, 0.0), 1.0);
  if (v21 >= 0.5)
  {
    v22 = (((v21 * -2.0) + 4.0) * v21) + -1.0;
  }

  else
  {
    v22 = (v21 * v21) + (v21 * v21);
  }

  vfx_script_clock_delta_time();
  v24 = v23 + v23;
  if (v10)
  {
    v24 = -v24;
  }

  v25 = fminf(fmaxf(v9 + v24, 0.0), 1.0);
  vfx_script_texture_sample1d();
  v28 = v26;
  vfx_script_texture_sample1d();
  *v2 = v15;
  *v3 = v30;
  *v34 = v29;
  *v33 = v22;
  *v32 = v21;
  *v31 = v25;
  *v35 = v28;
  *v36 = v27;
}

uint64_t sub_24A505E30()
{
  result = vfx_script_get_arguments_buffer();
  v1 = *(result + 24);
  v2 = **(result + 16);
  *v1 = v2;
  v1[1] = v2;
  return result;
}

double sub_24A505E54(float a1, float a2, float a3, float a4, uint64_t a5, uint64_t a6, int a7, __float2 *a8, float32x2_t *a9, float32x2_t *a10, float *a11, float *a12)
{
  v22 = (a1 * 3.1416) / 180.0;
  v23 = __sincosf_stret(v22);
  v24 = (a2 * 3.1416) / 180.0;
  v29 = (a3 + 0.06) + ((a3 - (a3 + 0.06)) * a4);
  v25 = vmul_n_f32(__sincosf_stret(v22 + v24), v29);
  v26 = vmul_n_f32(__sincosf_stret(v22 - v24), v29);
  v27 = 180.5;
  if (!a7)
  {
    v27 = a2;
  }

  *a9 = v25;
  *a10 = v26;
  *a11 = (a1 * -3.1416) / 180.0;
  *a12 = v27;
  result = *&v23;
  *a8 = v23;
  return result;
}

double sub_24A505F74()
{
  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = *(arguments_buffer + 56);
  v2 = *(arguments_buffer + 64);
  v3 = *(arguments_buffer + 72);
  v4 = *(arguments_buffer + 80);
  v5 = *(arguments_buffer + 88);
  v6 = **(arguments_buffer + 16);
  v7 = **(arguments_buffer + 24);
  v8 = **(arguments_buffer + 32);
  v9 = **(arguments_buffer + 40);
  v10 = **(arguments_buffer + 48);
  v11 = (v6 * 3.1416) / 180.0;
  v12 = __sincosf_stret(v11);
  v13 = (v7 * 3.1416) / 180.0;
  v18 = (v8 + 0.06) + ((v8 - (v8 + 0.06)) * v9);
  v14 = vmul_n_f32(__sincosf_stret(v11 + v13), v18);
  v15 = vmul_n_f32(__sincosf_stret(v11 - v13), v18);
  v16 = 180.5;
  if (!v10)
  {
    v16 = v7;
  }

  *v2 = v14;
  *v3 = v15;
  *v4 = (v6 * -3.1416) / 180.0;
  *v5 = v16;
  result = *&v12;
  *v1 = v12;
  return result;
}

__n128 initializeBufferWithCopyOfBuffer for FMR1InsetLabelStyle(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for FMR1InsetLabelStyle(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for FMR1InsetLabelStyle(uint64_t result, int a2, int a3)
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

__n128 sub_24A506188(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for FMPFSKSceneStyle(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for FMPFSKSceneStyle(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
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

  *(result + 24) = v3;
  return result;
}

void sub_24A506238()
{
  [v0 nativeBounds];
  Height = CGRectGetHeight(v6);
  if (qword_27EF4E990 != -1)
  {
    swift_once();
  }

  v2 = sub_24A62E314();
  sub_24A506EB8(v2, qword_27EF5C0E8);
  v3 = sub_24A62E2F4();
  v4 = sub_24A62EF64();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = Height;
    _os_log_impl(&dword_24A503000, v3, v4, "🧭 FMPFVideoScaling screen height: %f", v5, 0xCu);
    MEMORY[0x24C21BBE0](v5, -1, -1);
  }
}

uint64_t sub_24A506420(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x24C21A7E0](a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_24A506474(uint64_t a1, uint64_t a2)
{
  v3 = sub_24A62EED4();
  *a2 = 0;
  *(a2 + 8) = 1;
  return v3 & 1;
}

uint64_t sub_24A5064CC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24A62EEE4();
  *a1 = result;
  return result;
}

uint64_t sub_24A506514(uint64_t a1, id *a2)
{
  result = sub_24A62EBF4();
  *a2 = 0;
  return result;
}

uint64_t sub_24A50658C(uint64_t a1, id *a2)
{
  v3 = sub_24A62EC04();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_24A50660C@<X0>(uint64_t *a1@<X8>)
{
  sub_24A62EC14();
  v2 = sub_24A62EBE4();

  *a1 = v2;
  return result;
}

void *sub_24A506650@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

BOOL sub_24A506674(void *a1, uint64_t *a2)
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

uint64_t sub_24A506708@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24A62EC14();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_24A506734(uint64_t a1)
{
  sub_24A5069F8(&qword_27EF4F210, type metadata accessor for TextStyle, &unk_24A632F20);
  sub_24A5069F8(&qword_27EF4F218, type metadata accessor for TextStyle, &unk_24A632EC0);

  return sub_24A62F4A4();
}

uint64_t sub_24A5067F0(uint64_t a1)
{
  sub_24A5069F8(&qword_27EF4F200, _s3__C3KeyVMa_0, &unk_24A6337AC);
  sub_24A5069F8(&qword_27EF4F208, _s3__C3KeyVMa_0, &unk_24A633060);

  return sub_24A62F4A4();
}

uint64_t sub_24A5068AC(uint64_t a1)
{
  sub_24A5069F8(&qword_27EF4F050, type metadata accessor for UIBackgroundTaskIdentifier, &unk_24A632A88);
  sub_24A5069F8(&qword_27EF4F058, type metadata accessor for UIBackgroundTaskIdentifier, &unk_24A632A28);
  return sub_24A62F4A4();
}

uint64_t sub_24A5069F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24A506A88(uint64_t a1)
{
  sub_24A5069F8(&qword_27EF4F1C0, type metadata accessor for Key, &unk_24A63376C);
  sub_24A5069F8(&qword_27EF4F1C8, type metadata accessor for Key, &unk_24A633570);

  return sub_24A62F4A4();
}

uint64_t sub_24A506B44(uint64_t a1)
{
  sub_24A5069F8(&qword_27EF4F1F0, type metadata accessor for CHHapticEngineOptionKey, &unk_24A633208);
  sub_24A5069F8(&qword_27EF4F1F8, type metadata accessor for CHHapticEngineOptionKey, &unk_24A6331B0);

  return sub_24A62F4A4();
}

uint64_t sub_24A506C00(uint64_t a1)
{
  sub_24A5069F8(&qword_27EF4F1E0, type metadata accessor for CHHapticPowerUsage, &unk_24A633348);
  sub_24A5069F8(&qword_27EF4F1E8, type metadata accessor for CHHapticPowerUsage, &unk_24A6332F0);

  return sub_24A62F4A4();
}

uint64_t sub_24A506CBC(uint64_t a1)
{
  sub_24A5069F8(&qword_27EF4F1D0, type metadata accessor for CHHapticUsageCategory, &unk_24A633488);
  sub_24A5069F8(&qword_27EF4F1D8, type metadata accessor for CHHapticUsageCategory, &unk_24A633430);

  return sub_24A62F4A4();
}

uint64_t sub_24A506D78@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_24A62EBE4();

  *a2 = v3;
  return result;
}

uint64_t sub_24A506DC0(uint64_t a1)
{
  sub_24A5069F8(&qword_27EF4F1B0, type metadata accessor for VFXWorldLoaderOption, &unk_24A633728);
  sub_24A5069F8(&qword_27EF4F1B8, type metadata accessor for VFXWorldLoaderOption, &unk_24A63367C);

  return sub_24A62F4A4();
}

uint64_t sub_24A506EB8(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_24A506EF0()
{
  v0 = sub_24A62EC14();
  v1 = MEMORY[0x24C21A600](v0);

  return v1;
}

uint64_t sub_24A506F2C(uint64_t a1)
{
  sub_24A62EC14();
  sub_24A62EC74();
}

uint64_t sub_24A506F80(uint64_t a1)
{
  sub_24A62EC14();
  sub_24A62F714();
  sub_24A62EC74();
  v1 = sub_24A62F754();

  return v1;
}

uint64_t sub_24A506FF4(void *a1, uint64_t *a2)
{
  v2 = sub_24A62EC14();
  v4 = v3;
  if (v2 == sub_24A62EC14() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_24A62F634();
  }

  return v7 & 1;
}

uint64_t sub_24A50709C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24A5070BC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

__n128 sub_24A5071FC(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_24A50726C(uint64_t a1, int a2)
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

uint64_t sub_24A50728C(uint64_t result, int a2, int a3)
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

void sub_24A5072CC(uint64_t a1, unint64_t *a2, uint64_t a3)
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

void sub_24A50795C()
{
  v0 = objc_opt_self();
  v1 = *MEMORY[0x277D74418];
  v2 = sub_24A62EBE4();
  v3 = [v0 systemFontOfSize:v2 weight:68.0 design:v1];

  if (v3)
  {
    v4 = sub_24A62EBE4();
    v5 = [v0 systemFontOfSize:v4 weight:20.0 design:v1];

    if (v5)
    {
      v6 = [objc_opt_self() labelColor];
      *&xmmword_27EF5C070 = v3;
      *(&xmmword_27EF5C070 + 1) = v5;
      qword_27EF5C080 = v6;
      unk_27EF5C088 = xmmword_24A633800;
      qword_27EF5C098 = 0x3FE0000000000000;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_24A507A8C()
{
  v1 = OBJC_IVAR____TtC11FMFindingUI16FMBTDistanceView_distanceLabel;
  type metadata accessor for FMR1InsetLabel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v0[v1] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v3 = OBJC_IVAR____TtC11FMFindingUI16FMBTDistanceView_bottomRowVerticalStackView;
  *&v0[v3] = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  v4 = OBJC_IVAR____TtC11FMFindingUI16FMBTDistanceView_bottomRowStackView;
  *&v0[v4] = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  v5 = OBJC_IVAR____TtC11FMFindingUI16FMBTDistanceView_hintLabel;
  *&v0[v5] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v6 = OBJC_IVAR____TtC11FMFindingUI16FMBTDistanceView_connectingActivityViewContainer;
  *&v0[v6] = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v7 = OBJC_IVAR____TtC11FMFindingUI16FMBTDistanceView_connectingActivityView;
  *&v0[v7] = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle_];
  v8 = OBJC_IVAR____TtC11FMFindingUI16FMBTDistanceView_style;
  if (qword_27EF4E980 != -1)
  {
    swift_once();
  }

  v9 = &v0[v8];
  v10 = xmmword_27EF5C070;
  v11 = qword_27EF5C080;
  v12 = qword_27EF5C098;
  v13 = unk_27EF5C088;
  *v9 = xmmword_27EF5C070;
  *(v9 + 2) = v11;
  *(v9 + 24) = v13;
  *(v9 + 5) = v12;
  v19.receiver = v0;
  v19.super_class = type metadata accessor for FMBTDistanceView();
  v14 = v10;
  v15 = *(&v10 + 1);
  v16 = v11;
  v17 = objc_msgSendSuper2(&v19, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_24A507C8C();

  return v17;
}

void sub_24A507C8C()
{
  [v0 setOverrideUserInterfaceStyle_];
  v1 = &property descriptor for FMFindingViewController.dismissedHandler;
  [v0 setAxis_];
  sub_24A508FA4(&qword_27EF50790, &qword_24A6338D0);
  inited = swift_initStackObject();
  v34 = xmmword_24A633810;
  *(inited + 16) = xmmword_24A633810;
  v3 = *&v0[OBJC_IVAR____TtC11FMFindingUI16FMBTDistanceView_distanceLabel];
  *(inited + 32) = v3;
  v4 = *&v0[OBJC_IVAR____TtC11FMFindingUI16FMBTDistanceView_hintLabel];
  *(inited + 40) = v4;
  v5 = inited & 0xC000000000000001;
  v6 = inited & 0xFFFFFFFFFFFFFF8;
  v36 = v3;
  v35 = v4;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_16;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_14;
  }

  for (i = v36; ; i = MEMORY[0x24C21ACB0](0, inited))
  {
    v8 = i;
    [i setNumberOfLines_];
    [v8 setTranslatesAutoresizingMaskIntoConstraints_];

    if (v5)
    {
      v9 = MEMORY[0x24C21ACB0](1, inited);
    }

    else
    {
      if (*(v6 + 16) < 2uLL)
      {
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v9 = *(inited + 40);
    }

    v10 = v9;
    [v9 setNumberOfLines_];
    [v10 setTranslatesAutoresizingMaskIntoConstraints_];

    swift_setDeallocating();
    swift_arrayDestroy();
    v11 = *&v0[OBJC_IVAR____TtC11FMFindingUI16FMBTDistanceView_bottomRowStackView];
    [v11 v1[144]];
    [v11 setAlignment_];
    v5 = &v0[OBJC_IVAR____TtC11FMFindingUI16FMBTDistanceView_style];
    [v11 setSpacing_];
    v12 = *&v0[OBJC_IVAR____TtC11FMFindingUI16FMBTDistanceView_bottomRowVerticalStackView];
    [v12 v1[144]];
    [v12 setAlignment_];
    [v12 setSpacing_];
    v13 = *&v0[OBJC_IVAR____TtC11FMFindingUI16FMBTDistanceView_connectingActivityView];
    v14 = [objc_opt_self() whiteColor];
    [v13 setColor_];

    [v13 startAnimating];
    [v13 setTranslatesAutoresizingMaskIntoConstraints_];
    inited = *&v0[OBJC_IVAR____TtC11FMFindingUI16FMBTDistanceView_connectingActivityViewContainer];
    [inited addSubview_];
    [inited setTranslatesAutoresizingMaskIntoConstraints_];
    [inited setHidden_];
    [v11 addArrangedSubview_];
    [v11 addArrangedSubview_];
    v15 = swift_initStackObject();
    *(v15 + 16) = v34;
    *(v15 + 32) = v36;
    v1 = (v15 + 32);
    *(v15 + 40) = v11;
    v6 = v15 & 0xC000000000000001;
    v16 = v11;
    if ((v15 & 0xC000000000000001) != 0)
    {
      v17 = MEMORY[0x24C21ACB0](0, v15);
    }

    else
    {
      if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v17 = v36;
    }

    v18 = v17;
    [v12 addArrangedSubview_];

    if (v6)
    {
      break;
    }

    if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v19 = *(v15 + 40);
      goto LABEL_13;
    }

LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  v19 = MEMORY[0x24C21ACB0](1, v15);
LABEL_13:
  v20 = v19;
  [v12 addArrangedSubview_];

  swift_setDeallocating();
  swift_arrayDestroy();
  [v0 addArrangedSubview_];
  [v36 setFont_];
  [v36 setTextColor_];
  [v35 setFont_];
  v21 = objc_opt_self();
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_24A633820;
  v23 = [inited centerXAnchor];
  v24 = [v13 centerXAnchor];
  v25 = [v23 constraintEqualToAnchor_];

  *(v22 + 32) = v25;
  v26 = [inited centerYAnchor];
  v27 = [v13 centerYAnchor];
  v28 = [v26 constraintEqualToAnchor_];

  *(v22 + 40) = v28;
  v29 = [inited widthAnchor];
  v30 = [v29 constraintEqualToConstant_];

  *(v22 + 48) = v30;
  v31 = [inited heightAnchor];
  v32 = [v31 constraintEqualToConstant_];

  *(v22 + 56) = v32;
  sub_24A509158();
  v33 = sub_24A62ED54();

  [v21 activateConstraints_];
}

void sub_24A508250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_opt_self();
  v10 = *&v4[OBJC_IVAR____TtC11FMFindingUI16FMBTDistanceView_style + 40];
  sub_24A508AE4(a2, v20);
  v11 = swift_allocObject();
  v12 = *(a1 + 32);
  *(v11 + 72) = *(a1 + 48);
  v13 = *(a1 + 80);
  *(v11 + 88) = *(a1 + 64);
  *(v11 + 104) = v13;
  v14 = *(a1 + 16);
  *(v11 + 24) = *a1;
  *(v11 + 40) = v14;
  *(v11 + 16) = v4;
  *(v11 + 117) = *(a1 + 93);
  *(v11 + 56) = v12;
  *(v11 + 128) = a3;
  *(v11 + 136) = a4;
  sub_24A508CA0(v20, v11 + 144);
  aBlock[4] = sub_24A508CB8;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A5A8458;
  aBlock[3] = &unk_285D9FDC8;
  v15 = _Block_copy(aBlock);
  v16 = v4;
  sub_24A508CE4(a1, v18);

  v18[4] = nullsub_1;
  v18[5] = 0;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 1107296256;
  v18[2] = sub_24A5A1470;
  v18[3] = &unk_285D9FDF0;
  v17 = _Block_copy(v18);
  [v9 transitionWithView:v16 duration:5242880 options:v15 animations:v17 completion:v10];
  _Block_release(v17);
  _Block_release(v15);
}

id sub_24A508444(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = *(a1 + OBJC_IVAR____TtC11FMFindingUI16FMBTDistanceView_distanceLabel);
  if ((*(a2 + 24) | 0x2000000u) >> 25 == 3)
  {
    v11 = 0;
  }

  else
  {
    sub_24A508D40();
    v11 = sub_24A62EBE4();
  }

  [v10 setText_];

  v12 = *(a1 + OBJC_IVAR____TtC11FMFindingUI16FMBTDistanceView_hintLabel);
  v13 = sub_24A508868();
  [v12 setTextColor_];

  if (a4)
  {

    sub_24A5D2200(0xD000000000000016, 0x800000024A63D1B0);
    sub_24A508FA4(&qword_27EF50530, qword_24A636270);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_24A633830;
    *(v14 + 56) = MEMORY[0x277D837D0];
    *(v14 + 64) = sub_24A508FEC();
    *(v14 + 32) = a3;
    *(v14 + 40) = a4;
    sub_24A62EC24();

LABEL_6:
    v15 = sub_24A62EBE4();

    goto LABEL_9;
  }

  v16 = *(a2 + 24);
  if ((v16 | 0x2000000) >> 25 != 3)
  {
    v41 = v16 | (*(a2 + 100) << 32);
    v44 = a2[2];
    v45 = a2[3];
    v46 = a2[4];
    v47 = a2[5];
    v42 = *a2;
    v43 = a2[1];
    LOWORD(v48) = v41;
    BYTE2(v48) = BYTE2(v41);
    sub_24A508E80((v41 >> 24), a5);
    goto LABEL_6;
  }

  v15 = 0;
LABEL_9:
  [v12 setText_];

  v17 = [v10 text];
  v18 = &property descriptor for FMFindingViewController.dismissedHandler;
  if (!v17)
  {
    if ([v10 isHidden])
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  v19 = v17;
  v20 = sub_24A62EC14();
  v22 = v21;

  if ((v22 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v22) & 0xF;
  }

  else
  {
    v23 = v20 & 0xFFFFFFFFFFFFLL;
  }

  v18 = &property descriptor for FMFindingViewController.dismissedHandler;
  if ([v10 &selRef_constraintEqualToConstant_] != (v23 == 0))
  {
    if (v23)
    {
      v24 = 0;
      v25 = 1.0;
LABEL_18:
      [v10 setAlpha_];
      [v10 v18[139]];
      goto LABEL_19;
    }

LABEL_17:
    v25 = 0.0;
    v24 = 1;
    goto LABEL_18;
  }

LABEL_19:
  v26 = [v12 text];
  if (v26)
  {
    v27 = v26;
    v28 = sub_24A62EC14();
    v30 = v29;

    v31 = HIBYTE(v30) & 0xF;
    if ((v30 & 0x2000000000000000) == 0)
    {
      v31 = v28 & 0xFFFFFFFFFFFFLL;
    }

    v32 = v31 == 0;
  }

  else
  {
    v32 = 1;
  }

  v33 = *(a1 + OBJC_IVAR____TtC11FMFindingUI16FMBTDistanceView_bottomRowStackView);
  if (v32 != [v33 isHidden])
  {
    v34 = 1.0;
    if (v32)
    {
      v34 = 0.0;
    }

    [v33 setAlpha_];
    [v33 v18[139]];
  }

  v35 = *(a1 + OBJC_IVAR____TtC11FMFindingUI16FMBTDistanceView_connectingActivityViewContainer);
  result = [v35 isHidden];
  if ((a4 == 0) != result)
  {
    v37 = a4 == 0;
    v38 = a4 == 0;
    v39 = 1.0;
    if (v37)
    {
      v39 = 0.0;
    }

    [v35 setAlpha_];
    v40 = v18[139];

    return [v35 v40];
  }

  return result;
}

id sub_24A508868()
{
  v1 = *(v0 + 96);
  if ((v1 | 0x2000000) >> 25 == 3)
  {
    v2 = &selRef_clearColor;
  }

  else
  {
    v2 = off_278FE4EC8[((v1 | (*(v0 + 100) << 32)) << 40) >> 56];
  }

  v3 = [objc_opt_self() *v2];

  return v3;
}

id sub_24A508918()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMBTDistanceView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

__n128 sub_24A508A2C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_24A508A40(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24A508A88(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24A508AE4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_24A508B48()
{
  v1 = *(v0 + 120);
  if ((v1 | 0x2000000u) >> 25 != 3)
  {
    sub_24A508BE4(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), v1, SBYTE2(v1));
  }

  sub_24A508C54((v0 + 144));

  return MEMORY[0x2821FE8E8](v0, 184, 7);
}

void sub_24A508BE4(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int16 a13, char a14)
{
  if (a14 == 4)
  {
    sub_24A508C10(a1, a2, a3, a4);
  }
}

void sub_24A508C10(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (a3 != 1)
  {
  }
}

uint64_t sub_24A508C54(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_24A508CA0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_24A508CCC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A508D40()
{
  sub_24A62F384();

  strcpy(v12, "BT_DIRECTION_");
  HIWORD(v12[1]) = -4864;
  v1 = 0xE300000000000000;
  v2 = 5390662;
  v3 = *(v0 + 98);
  v4 = 0xE400000000000000;
  v5 = 1163019592;
  v6 = 0xE500000000000000;
  v7 = 0x444E554F46;
  if (v3 != 3)
  {
    v7 = 0x4E574F4E4B4E55;
    v6 = 0xE700000000000000;
  }

  if (v3 != 2)
  {
    v5 = v7;
    v4 = v6;
  }

  if (*(v0 + 98))
  {
    v2 = 1380009294;
    v1 = 0xE400000000000000;
  }

  if (*(v0 + 98) <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = v5;
  }

  if (*(v0 + 98) <= 1u)
  {
    v9 = v1;
  }

  else
  {
    v9 = v4;
  }

  MEMORY[0x24C21A5D0](v8, v9);

  MEMORY[0x24C21A5D0](0x315F544E49485FLL, 0xE700000000000000);
  v10 = sub_24A5D2200(v12[0], v12[1]);

  return v10;
}

uint64_t sub_24A508E80(uint64_t a1, void *a2)
{
  v4 = 0x4953414552434544;
  if (a1 == 1)
  {
    v5 = v2;
    v4 = 0x4953414552434E49;
    goto LABEL_5;
  }

  if (a1 == 2)
  {
    v5 = v2;
LABEL_5:

    MEMORY[0x24C21A5D0](v4, 0xEA0000000000474ELL);
    swift_bridgeObjectRelease_n();
    v7 = 95;
    v6 = 0xE100000000000000;
    v2 = v5;
    goto LABEL_7;
  }

  v7 = 0;
  v6 = 0xE000000000000000;
LABEL_7:
  if (*(v2 + 98) == 1)
  {
    v14 = sub_24A509040();
    v15 = v8;
    MEMORY[0x24C21A5D0](v7, v6);

    v9 = v14;
    v10 = v15;
  }

  else
  {

    v9 = sub_24A509040();
    v10 = v11;
  }

  v12 = sub_24A604220(v9, v10, a2);

  return v12;
}

uint64_t sub_24A508FA4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_24A508FEC()
{
  result = qword_27EF50230;
  if (!qword_27EF50230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF50230);
  }

  return result;
}

uint64_t sub_24A509040()
{
  sub_24A62F384();

  strcpy(v11, "BT_DIRECTION_");
  HIWORD(v11[1]) = -4864;
  v1 = 0xE300000000000000;
  v2 = 5390662;
  v3 = *(v0 + 98);
  v4 = 0xE400000000000000;
  v5 = 1163019592;
  v6 = 0xE500000000000000;
  v7 = 0x444E554F46;
  if (v3 != 3)
  {
    v7 = 0x4E574F4E4B4E55;
    v6 = 0xE700000000000000;
  }

  if (v3 != 2)
  {
    v5 = v7;
    v4 = v6;
  }

  if (*(v0 + 98))
  {
    v2 = 1380009294;
    v1 = 0xE400000000000000;
  }

  if (*(v0 + 98) <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = v5;
  }

  if (*(v0 + 98) <= 1u)
  {
    v9 = v1;
  }

  else
  {
    v9 = v4;
  }

  MEMORY[0x24C21A5D0](v8, v9);

  MEMORY[0x24C21A5D0](0x325F544E49485FLL, 0xE700000000000000);
  return v11[0];
}

unint64_t sub_24A509158()
{
  result = qword_27EF4F378;
  if (!qword_27EF4F378)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EF4F378);
  }

  return result;
}

void sub_24A5091A4()
{
  v1 = OBJC_IVAR____TtC11FMFindingUI16FMBTDistanceView_distanceLabel;
  type metadata accessor for FMR1InsetLabel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v0 + v1) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v3 = OBJC_IVAR____TtC11FMFindingUI16FMBTDistanceView_bottomRowVerticalStackView;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  v4 = OBJC_IVAR____TtC11FMFindingUI16FMBTDistanceView_bottomRowStackView;
  *(v0 + v4) = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  v5 = OBJC_IVAR____TtC11FMFindingUI16FMBTDistanceView_hintLabel;
  *(v0 + v5) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v6 = OBJC_IVAR____TtC11FMFindingUI16FMBTDistanceView_connectingActivityViewContainer;
  *(v0 + v6) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v7 = OBJC_IVAR____TtC11FMFindingUI16FMBTDistanceView_connectingActivityView;
  *(v0 + v7) = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle_];
  v8 = OBJC_IVAR____TtC11FMFindingUI16FMBTDistanceView_style;
  if (qword_27EF4E980 != -1)
  {
    swift_once();
  }

  v9 = v0 + v8;
  v10 = qword_27EF5C080;
  v11 = qword_27EF5C098;
  v12 = unk_27EF5C088;
  *v9 = xmmword_27EF5C070;
  *(v9 + 16) = v10;
  *(v9 + 24) = v12;
  *(v9 + 40) = v11;
  sub_24A62F444();
  __break(1u);
}

uint64_t sub_24A509348()
{
  sub_24A62F714();
  MEMORY[0x24C21B040](0);
  return sub_24A62F754();
}

uint64_t sub_24A5093B4(uint64_t a1)
{
  sub_24A62F714();
  MEMORY[0x24C21B040](0);
  return sub_24A62F754();
}

id sub_24A509448(uint64_t a1, char *a2)
{
  v26 = sub_24A62E214();
  v5 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a2;
  v9 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    HIDWORD(v23) = *a2;
    v25 = v2;
    v31 = MEMORY[0x277D84F90];
    sub_24A58D888(0, v9, 0);
    v10 = v31;
    v24 = a1;
    v11 = a1 + 32;
    v12 = (v5 + 8);
    do
    {
      sub_24A508AE4(v11, v28);
      v13 = v29;
      v14 = v30;
      sub_24A50A204(v28, v29);
      (*(v14 + 16))(v13, v14);
      v15 = sub_24A62E1C4();
      v17 = v16;
      (*v12)(v7, v26);
      sub_24A508C54(v28);
      v31 = v10;
      v19 = *(v10 + 16);
      v18 = *(v10 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_24A58D888((v18 > 1), v19 + 1, 1);
        v10 = v31;
      }

      *(v10 + 16) = v19 + 1;
      v20 = v10 + 16 * v19;
      *(v20 + 32) = v15;
      *(v20 + 40) = v17;
      v11 += 40;
      --v9;
    }

    while (v9);
    a1 = v24;
    v2 = v25;
    v8 = BYTE4(v23);
  }

  *&v2[OBJC_IVAR____TtC11FMFindingUI19FMConnectionManager_identifiers] = v10;
  *&v2[OBJC_IVAR____TtC11FMFindingUI19FMConnectionManager_findables] = a1;
  v2[OBJC_IVAR____TtC11FMFindingUI19FMConnectionManager_connectionContext] = v8;
  v21 = type metadata accessor for FMConnectionManager();
  v27.receiver = v2;
  v27.super_class = v21;
  return objc_msgSendSuper2(&v27, sel_init);
}

id FMConnectionManager.__deallocating_deinit()
{
  (*((*MEMORY[0x277D85000] & *v0) + 0x98))();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMConnectionManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_24A5097AC()
{
  if (qword_27EF4E990 != -1)
  {
    swift_once();
  }

  v0 = sub_24A62E314();
  sub_24A506EB8(v0, qword_27EF5C0E8);
  v1 = sub_24A62EF44();
  log = sub_24A62E2F4();
  if (os_log_type_enabled(log, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_24A509BA8(0xD000000000000047, 0x800000024A63D270, &v5);
    _os_log_impl(&dword_24A503000, log, v1, "%s", v2, 0xCu);
    sub_24A508C54(v3);
    MEMORY[0x24C21BBE0](v3, -1, -1);
    MEMORY[0x24C21BBE0](v2, -1, -1);
  }
}

void sub_24A5098F0()
{
  if (qword_27EF4E990 != -1)
  {
    swift_once();
  }

  v0 = sub_24A62E314();
  sub_24A506EB8(v0, qword_27EF5C0E8);
  v1 = sub_24A62EF44();
  log = sub_24A62E2F4();
  if (os_log_type_enabled(log, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_24A509BA8(0xD00000000000004ALL, 0x800000024A63D2C0, &v5);
    _os_log_impl(&dword_24A503000, log, v1, "%s", v2, 0xCu);
    sub_24A508C54(v3);
    MEMORY[0x24C21BBE0](v3, -1, -1);
    MEMORY[0x24C21BBE0](v2, -1, -1);
  }
}

id FMConnectionManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_24A509AC8(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

_BYTE **sub_24A509B14(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_24A509B4C(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_24A509BA8(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_24A509BA8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_24A509D28(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_24A50A248(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_24A508C54(v11);
  return v7;
}

unint64_t sub_24A509D28(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_24A509E34(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_24A62F3D4();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_24A509E34(uint64_t a1, unint64_t a2)
{
  v3 = sub_24A509E80(a1, a2);
  sub_24A509FB0(&unk_285D9E908);
  return v3;
}

void *sub_24A509E80(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_24A50A09C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_24A62F3D4();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_24A62ECC4();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_24A50A09C(v10, 0);
        result = sub_24A62F374();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_24A509FB0(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_24A50A110(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_24A50A09C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  sub_24A508FA4(&qword_27EF4F398, &qword_24A633918);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_24A50A110(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_24A508FA4(&qword_27EF4F398, &qword_24A633918);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void *sub_24A50A204(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_24A50A248(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t getEnumTagSinglePayload for FMConnectionManagerError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for FMConnectionManagerError(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_24A50A394()
{
  result = qword_27EF4F3A0;
  if (!qword_27EF4F3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF4F3A0);
  }

  return result;
}

id sub_24A50A480(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11FMFindingUI30FMFindingGenericPartPickerView_effectBackground;
  v4 = [objc_opt_self() effectWithStyle_];
  v5 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];

  *&v1[v3] = v5;
  v6 = OBJC_IVAR____TtC11FMFindingUI30FMFindingGenericPartPickerView_titleLabel;
  *&v1[v6] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v7 = OBJC_IVAR____TtC11FMFindingUI30FMFindingGenericPartPickerView_containerStackView;
  *&v1[v7] = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  v8 = OBJC_IVAR____TtC11FMFindingUI30FMFindingGenericPartPickerView_iconView;
  *&v1[v8] = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v9 = &v1[OBJC_IVAR____TtC11FMFindingUI30FMFindingGenericPartPickerView_style];
  sub_24A50D0EC(v22);
  v10 = v22[3];
  *(v9 + 2) = v22[2];
  *(v9 + 3) = v10;
  *(v9 + 8) = v23;
  v11 = v22[1];
  *v9 = v22[0];
  *(v9 + 1) = v11;
  v12 = &v1[OBJC_IVAR____TtC11FMFindingUI30FMFindingGenericPartPickerView_value];
  *(v12 + 32) = 0;
  *v12 = 0u;
  *(v12 + 16) = 0u;
  *&v1[OBJC_IVAR____TtC11FMFindingUI30FMFindingGenericPartPickerView_findables] = a1;
  if (*(a1 + 16))
  {
    sub_24A508AE4(a1 + 32, v20);
  }

  else
  {
    v21 = 0;
    memset(v20, 0, sizeof(v20));
  }

  swift_beginAccess();
  sub_24A50D1D4(v20, v12);
  swift_endAccess();
  v19.receiver = v1;
  v19.super_class = type metadata accessor for FMFindingGenericPartPickerView();
  v13 = objc_msgSendSuper2(&v19, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_24A50A82C();
  sub_24A50A988();
  sub_24A50A6DC(v14);
  v15 = [v13 contextMenuInteraction];
  if (v15)
  {
    v16 = v15;
    [v13 setShowsMenuAsPrimaryAction_];
    v17 = v16;
    [v13 addInteraction_];
  }

  return v13;
}

void sub_24A50A6DC(double a1)
{
  LODWORD(a1) = 1148846080;
  [v1 setContentHuggingPriority:0 forAxis:a1];
  v2 = *&v1[OBJC_IVAR____TtC11FMFindingUI30FMFindingGenericPartPickerView_titleLabel];
  v3 = sub_24A50AFF0();
  [v2 setAttributedText_];

  v4 = *&v1[OBJC_IVAR____TtC11FMFindingUI30FMFindingGenericPartPickerView_iconView];
  v5 = sub_24A62EBE4();
  v6 = [objc_opt_self() systemImageNamed_];

  if (v6)
  {
    v7 = [objc_opt_self() whiteColor];
    v8 = [v6 imageWithTintColor:v7 renderingMode:1];
  }

  else
  {
    v8 = 0;
  }

  [v4 setImage_];
}

id sub_24A50A82C()
{
  [v0 addSubview_];
  v1 = *&v0[OBJC_IVAR____TtC11FMFindingUI30FMFindingGenericPartPickerView_containerStackView];
  [v0 addSubview_];
  v2 = [v0 layer];
  [v2 setMasksToBounds_];

  v3 = [v0 layer];
  v4 = &v0[OBJC_IVAR____TtC11FMFindingUI30FMFindingGenericPartPickerView_style];
  [v3 setCornerRadius_];

  [v1 setAxis_];
  [v1 setSpacing_];
  [v1 setLayoutMarginsRelativeArrangement_];
  [v1 setLayoutMargins_];
  [v1 addArrangedSubview_];
  v5 = *&v0[OBJC_IVAR____TtC11FMFindingUI30FMFindingGenericPartPickerView_iconView];

  return [v1 addArrangedSubview_];
}

void sub_24A50A988()
{
  v1 = v0;
  sub_24A508FA4(&qword_27EF50790, &qword_24A6338D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24A633820;
  v3 = *&v0[OBJC_IVAR____TtC11FMFindingUI30FMFindingGenericPartPickerView_effectBackground];
  *(inited + 32) = v3;
  v4 = *&v0[OBJC_IVAR____TtC11FMFindingUI30FMFindingGenericPartPickerView_titleLabel];
  *(inited + 40) = v4;
  v5 = *&v0[OBJC_IVAR____TtC11FMFindingUI30FMFindingGenericPartPickerView_containerStackView];
  *(inited + 48) = v5;
  v6 = *&v0[OBJC_IVAR____TtC11FMFindingUI30FMFindingGenericPartPickerView_iconView];
  *(inited + 56) = v6;
  v7 = inited & 0xC000000000000001;
  v8 = v3;
  v9 = v4;
  v10 = v5;
  v53 = v6;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_15;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_14;
  }

  for (i = v8; ; i = MEMORY[0x24C21ACB0](0, inited))
  {
    v12 = i;
    [i setTranslatesAutoresizingMaskIntoConstraints_];

    if (v7)
    {
      v13 = MEMORY[0x24C21ACB0](1, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_14;
      }

      v13 = *(inited + 40);
    }

    v14 = v13;
    [v13 setTranslatesAutoresizingMaskIntoConstraints_];

    if (v7)
    {
      v15 = MEMORY[0x24C21ACB0](2, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
      {
        goto LABEL_14;
      }

      v15 = *(inited + 48);
    }

    v16 = v15;
    [v15 setTranslatesAutoresizingMaskIntoConstraints_];

    if (v7)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4uLL)
    {
      v17 = *(inited + 56);
      goto LABEL_13;
    }

LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

  v17 = MEMORY[0x24C21ACB0](3, inited);
LABEL_13:
  v18 = v17;
  [v17 setTranslatesAutoresizingMaskIntoConstraints_];

  swift_setDeallocating();
  swift_arrayDestroy();
  v52 = objc_opt_self();
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_24A633820;
  v20 = [v10 leadingAnchor];
  v21 = [v1 &selRef_initWithFrame_ + 1];
  v22 = [v20 constraintEqualToAnchor_];

  *(v19 + 32) = v22;
  v23 = [v10 trailingAnchor];
  v24 = [v1 &selRef_sharedApplication + 4];
  v25 = [v23 constraintEqualToAnchor_];

  *(v19 + 40) = v25;
  v26 = [v10 topAnchor];
  v27 = [v1 &selRef_description];
  v28 = [v26 constraintEqualToAnchor_];

  *(v19 + 48) = v28;
  v29 = [v10 bottomAnchor];
  v30 = [v1 bottomAnchor];
  v31 = [v29 constraintEqualToAnchor_];

  *(v19 + 56) = v31;
  sub_24A50D7EC(0, &qword_27EF4F378, 0x277CCAAD0);
  v32 = sub_24A62ED54();

  [v52 activateConstraints_];

  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_24A633820;
  v34 = [v8 leadingAnchor];
  v35 = [v1 leadingAnchor];
  v36 = [v34 constraintEqualToAnchor_];

  *(v33 + 32) = v36;
  v37 = [v8 trailingAnchor];
  v38 = [v1 trailingAnchor];
  v39 = [v37 constraintEqualToAnchor_];

  *(v33 + 40) = v39;
  v40 = [v8 topAnchor];
  v41 = [v1 topAnchor];
  v42 = [v40 constraintEqualToAnchor_];

  *(v33 + 48) = v42;
  v43 = [v8 bottomAnchor];
  v44 = [v1 bottomAnchor];
  v45 = [v43 constraintEqualToAnchor_];

  *(v33 + 56) = v45;
  v46 = sub_24A62ED54();

  [v52 activateConstraints_];

  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_24A6339F0;
  v48 = [v53 heightAnchor];
  v49 = [v53 widthAnchor];
  v50 = [v48 constraintEqualToAnchor_];

  *(v47 + 32) = v50;
  v51 = sub_24A62ED54();

  [v52 activateConstraints_];
}

id sub_24A50AFF0()
{
  v86 = sub_24A62E214();
  v1 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v71 = &v69 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_24A508FA4(&unk_27EF52480, &unk_24A633B20);
  MEMORY[0x28223BE20](v79);
  *&v85 = &v69 - v3;
  v4 = sub_24A508FA4(&unk_27EF4FEE0, &qword_24A6369F0);
  MEMORY[0x28223BE20](v4 - 8);
  v78 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v82 = &v69 - v7;
  MEMORY[0x28223BE20](v8);
  v10 = &v69 - v9;
  v69 = [objc_allocWithZone(MEMORY[0x277CCAB48]) init];
  v11 = *&v0[OBJC_IVAR____TtC11FMFindingUI30FMFindingGenericPartPickerView_findables];
  v12 = *(v11 + 16);
  v80 = v0;
  v77 = OBJC_IVAR____TtC11FMFindingUI30FMFindingGenericPartPickerView_value;
  swift_beginAccess();
  v81 = v11;
  v76 = v12;
  if (v12)
  {
    v13 = 0;
    result = (v11 + 32);
    v83 = (v1 + 56);
    v70 = (v1 + 32);
    v73 = (v1 + 8);
    v74 = (v1 + 48);
    v75 = v10;
    while (1)
    {
      if (v13 >= *(v11 + 16))
      {
        __break(1u);
        return result;
      }

      v84 = result;
      sub_24A508AE4(result, v90);
      v18 = v91;
      v17 = v92;
      sub_24A50A204(v90, v91);
      (*(v17 + 16))(v18, v17);
      v19 = *v83;
      (*v83)(v10, 0, 1, v86);
      sub_24A50D63C(&v80[v77], v87, &unk_27EF522E0, qword_24A637660);
      v20 = v88;
      if (v88)
      {
        v21 = v89;
        v22 = sub_24A50A204(v87, v88);
        v23 = *(v20 - 8);
        v24 = MEMORY[0x28223BE20](v22);
        v26 = &v69 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v23 + 16))(v26, v24);
        sub_24A50D6A4(v87, &unk_27EF522E0, qword_24A637660);
        v27 = *(v21 + 16);
        v28 = v21;
        v29 = v82;
        v27(v20, v28);
        (*(v23 + 8))(v26, v20);
        v19(v29, 0, 1, v86);
      }

      else
      {
        sub_24A50D6A4(v87, &unk_27EF522E0, qword_24A637660);
        v29 = v82;
        v19(v82, 1, 1, v86);
      }

      v30 = v79[12];
      v31 = v75;
      v32 = v85;
      sub_24A50D63C(v75, v85, &unk_27EF4FEE0, &qword_24A6369F0);
      sub_24A50D63C(v29, v32 + v30, &unk_27EF4FEE0, &qword_24A6369F0);
      v33 = *v74;
      if ((*v74)(v32, 1, v86) == 1)
      {
        break;
      }

      v15 = v31;
      v34 = v85;
      sub_24A50D63C(v85, v78, &unk_27EF4FEE0, &qword_24A6369F0);
      if (v33(v34 + v30, 1, v86) == 1)
      {
        sub_24A50D6A4(v29, &unk_27EF4FEE0, &qword_24A6369F0);
        sub_24A50D6A4(v15, &unk_27EF4FEE0, &qword_24A6369F0);
        (*v73)(v78, v86);
        v11 = v81;
LABEL_4:
        sub_24A50D6A4(v85, &unk_27EF52480, &unk_24A633B20);
        sub_24A508C54(v90);
        goto LABEL_5;
      }

      v35 = v71;
      v36 = v85;
      v37 = v86;
      (*v70)(v71, v85 + v30, v86);
      sub_24A50D73C(&qword_27EF501E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v38 = v78;
      v72 = sub_24A62EBD4();
      v39 = *v73;
      (*v73)(v35, v37);
      sub_24A50D6A4(v82, &unk_27EF4FEE0, &qword_24A6369F0);
      sub_24A50D6A4(v15, &unk_27EF4FEE0, &qword_24A6369F0);
      v39(v38, v37);
      sub_24A50D6A4(v36, &unk_27EF4FEE0, &qword_24A6369F0);
      sub_24A508C54(v90);
      v11 = v81;
      if (v72)
      {
        goto LABEL_16;
      }

LABEL_5:
      ++v13;
      result = (v84 + 40);
      v10 = v15;
      if (v76 == v13)
      {
        goto LABEL_15;
      }
    }

    sub_24A50D6A4(v29, &unk_27EF4FEE0, &qword_24A6369F0);
    v15 = v31;
    sub_24A50D6A4(v31, &unk_27EF4FEE0, &qword_24A6369F0);
    v16 = v33(v85 + v30, 1, v86);
    v11 = v81;
    if (v16 == 1)
    {
      sub_24A50D6A4(v85, &unk_27EF4FEE0, &qword_24A6369F0);
      sub_24A508C54(v90);
      goto LABEL_16;
    }

    goto LABEL_4;
  }

LABEL_15:
  v13 = 0;
LABEL_16:
  v87[0] = v13 + 1;
  v90[0] = sub_24A62F614();
  v90[1] = v40;
  MEMORY[0x24C21A5D0](32, 0xE100000000000000);
  v78 = v90[0];
  v86 = sub_24A508FA4(&qword_27EF4F408, &qword_24A633B30);
  inited = swift_initStackObject();
  v85 = xmmword_24A633A00;
  *(inited + 16) = xmmword_24A633A00;
  v42 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v43 = *&v80[OBJC_IVAR____TtC11FMFindingUI30FMFindingGenericPartPickerView_style];
  v44 = &v80[OBJC_IVAR____TtC11FMFindingUI30FMFindingGenericPartPickerView_style];
  v84 = &v80[OBJC_IVAR____TtC11FMFindingUI30FMFindingGenericPartPickerView_style];
  v45 = sub_24A508FA4(&qword_27EF4F410, &qword_24A633B38);
  v83 = v45;
  *(inited + 40) = v43;
  v46 = *MEMORY[0x277D740C0];
  *(inited + 64) = v45;
  *(inited + 72) = v46;
  v47 = *(v44 + 6);
  v82 = sub_24A50D7EC(0, &qword_27EF4F418, 0x277D75348);
  *(inited + 104) = v82;
  *(inited + 80) = v47;
  v48 = v43;
  v49 = v46;
  v50 = v42;
  v51 = v48;
  v80 = v49;
  v52 = v47;
  v79 = v50;
  sub_24A59C378(inited);
  swift_setDeallocating();
  sub_24A508FA4(&qword_27EF4F420, qword_24A633B40);
  swift_arrayDestroy();
  v53 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v54 = sub_24A62EBE4();

  _s3__C3KeyVMa_0(0);
  sub_24A50D73C(&qword_27EF4F200, _s3__C3KeyVMa_0, &unk_24A6337AC);
  v55 = sub_24A62EB74();

  v56 = [v53 initWithString:v54 attributes:v55];

  sub_24A5D2200(0xD00000000000001ELL, 0x800000024A63D4E0);
  sub_24A508FA4(&qword_27EF50530, qword_24A636270);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_24A633830;
  v58 = sub_24A62EEB4();
  *(v57 + 56) = sub_24A50D7EC(0, &qword_27EF4F428, 0x277CCABB0);
  *(v57 + 64) = sub_24A50D784();
  *(v57 + 32) = v58;
  sub_24A62EC24();

  v59 = swift_initStackObject();
  *(v59 + 16) = v85;
  *(v59 + 32) = v79;
  *(v59 + 40) = v43;
  v60 = v82;
  v61 = v80;
  *(v59 + 64) = v83;
  *(v59 + 72) = v61;
  v62 = *(v84 + 56);
  *(v59 + 104) = v60;
  *(v59 + 80) = v62;
  v63 = v62;
  sub_24A59C378(v59);
  swift_setDeallocating();
  swift_arrayDestroy();
  v64 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v65 = sub_24A62EBE4();

  v66 = sub_24A62EB74();

  v67 = [v64 initWithString:v65 attributes:v66];

  v68 = v69;
  [v69 appendAttributedString_];
  [v68 appendAttributedString_];

  return v68;
}

id sub_24A50BAA0()
{
  v1 = *&v0[OBJC_IVAR____TtC11FMFindingUI30FMFindingGenericPartPickerView_titleLabel];
  v2 = sub_24A50AFF0();
  [v1 setAttributedText_];

  result = [v0 contextMenuInteraction];
  if (result)
  {
    v4 = result;
    v5 = swift_allocObject();
    *(v5 + 16) = v0;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_24A50D330;
    *(v6 + 24) = v5;
    v10[4] = sub_24A50D714;
    v10[5] = v6;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 1107296256;
    v10[2] = sub_24A50BC40;
    v10[3] = &unk_285DA0058;
    v7 = _Block_copy(v10);
    v8 = v0;

    [v4 updateVisibleMenuWithBlock_];

    _Block_release(v7);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  return result;
}

id sub_24A50BC40(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = v2();

  return v4;
}

uint64_t sub_24A50BC94()
{
  v53 = sub_24A508FA4(&unk_27EF52480, &unk_24A633B20);
  MEMORY[0x28223BE20](v53);
  v2 = &v44 - v1;
  v3 = sub_24A508FA4(&unk_27EF4FEE0, &qword_24A6369F0);
  MEMORY[0x28223BE20](v3 - 8);
  v52 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v64 = &v44 - v6;
  MEMORY[0x28223BE20](v7);
  v9 = &v44 - v8;
  v10 = sub_24A62E214();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v56 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = swift_allocObject();
  *(v54 + 16) = v0;
  v13 = *&v0[OBJC_IVAR____TtC11FMFindingUI30FMFindingGenericPartPickerView_findables];
  v14 = *(v13 + 16);
  if (v14)
  {
    v71 = MEMORY[0x277D84F90];
    v15 = v0;
    sub_24A62F404();
    v50 = sub_24A50D7EC(0, &qword_27EF4F3F8, 0x277D750C8);
    v51 = v15;
    v49 = OBJC_IVAR____TtC11FMFindingUI30FMFindingGenericPartPickerView_value;
    swift_beginAccess();
    v16 = v13 + 32;
    v58 = (v11 + 8);
    v47 = (v11 + 56);
    v45 = (v11 + 32);
    v46 = v9;
    v48 = (v11 + 48);
    while (1)
    {
      v62 = v16;
      v63 = v14;
      sub_24A508AE4(v16, v68);
      v17 = v69;
      v18 = v70;
      sub_24A50A204(v68, v69);
      v19 = (*(v18 + 8))(v17, v18);
      v60 = v20;
      v61 = v19;
      v21 = v69;
      v22 = v70;
      sub_24A50A204(v68, v69);
      v23 = v56;
      (*(v22 + 16))(v21, v22);
      sub_24A62E1C4();
      v57 = *v58;
      v57(v23, v10);
      v59 = sub_24A62EBE4();

      v24 = v69;
      v25 = v70;
      sub_24A50A204(v68, v69);
      (*(v25 + 16))(v24, v25);
      v26 = *v47;
      (*v47)(v9, 0, 1, v10);
      sub_24A50D63C(&v51[v49], v65, &unk_27EF522E0, qword_24A637660);
      v27 = v66;
      if (v66)
      {
        v28 = v67;
        v29 = sub_24A50A204(v65, v66);
        v55 = &v44;
        v30 = v64;
        v31 = v2;
        v32 = *(v27 - 8);
        v33 = MEMORY[0x28223BE20](v29);
        v35 = &v44 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v32 + 16))(v35, v33);
        sub_24A50D6A4(v65, &unk_27EF522E0, qword_24A637660);
        (*(v28 + 16))(v27, v28);
        (*(v32 + 8))(v35, v27);
        v2 = v31;
        v26(v30, 0, 1, v10);
        v9 = v46;
      }

      else
      {
        sub_24A50D6A4(v65, &unk_27EF522E0, qword_24A637660);
        v26(v64, 1, 1, v10);
      }

      v36 = *(v53 + 48);
      sub_24A50D63C(v9, v2, &unk_27EF4FEE0, &qword_24A6369F0);
      sub_24A50D63C(v64, &v2[v36], &unk_27EF4FEE0, &qword_24A6369F0);
      v37 = *v48;
      if ((*v48)(v2, 1, v10) == 1)
      {
        sub_24A50D6A4(v64, &unk_27EF4FEE0, &qword_24A6369F0);
        sub_24A50D6A4(v9, &unk_27EF4FEE0, &qword_24A6369F0);
        if (v37(&v2[v36], 1, v10) == 1)
        {
          sub_24A50D6A4(v2, &unk_27EF4FEE0, &qword_24A6369F0);
          goto LABEL_5;
        }
      }

      else
      {
        sub_24A50D63C(v2, v52, &unk_27EF4FEE0, &qword_24A6369F0);
        if (v37(&v2[v36], 1, v10) != 1)
        {
          v38 = v56;
          (*v45)(v56, &v2[v36], v10);
          sub_24A50D73C(&qword_27EF501E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
          v39 = v52;
          sub_24A62EBD4();
          v40 = v57;
          v57(v38, v10);
          sub_24A50D6A4(v64, &unk_27EF4FEE0, &qword_24A6369F0);
          sub_24A50D6A4(v9, &unk_27EF4FEE0, &qword_24A6369F0);
          v40(v39, v10);
          sub_24A50D6A4(v2, &unk_27EF4FEE0, &qword_24A6369F0);
          goto LABEL_5;
        }

        sub_24A50D6A4(v64, &unk_27EF4FEE0, &qword_24A6369F0);
        sub_24A50D6A4(v9, &unk_27EF4FEE0, &qword_24A6369F0);
        v57(v52, v10);
      }

      sub_24A50D6A4(v2, &unk_27EF52480, &unk_24A633B20);
LABEL_5:

      sub_24A62F184();
      sub_24A508C54(v68);
      sub_24A62F3E4();
      sub_24A62F414();
      sub_24A62F424();
      sub_24A62F3F4();
      v16 = v62 + 40;
      v14 = v63 - 1;
      if (v63 == 1)
      {
        if (!(v71 >> 62))
        {
          goto LABEL_15;
        }

LABEL_18:
        sub_24A50D7EC(0, &qword_27EF4F3E8, 0x277D75720);

        sub_24A62F454();

        goto LABEL_16;
      }
    }
  }

  v43 = v0;
  if (MEMORY[0x277D84F90] >> 62)
  {
    goto LABEL_18;
  }

LABEL_15:

  sub_24A62F644();
  sub_24A50D7EC(0, &qword_27EF4F3E8, 0x277D75720);
LABEL_16:

  sub_24A50D7EC(0, &qword_27EF4F400, 0x277D75710);
  v41 = sub_24A62F114();

  return v41;
}

void sub_24A50C5E4(void *a1, char *a2)
{
  v27 = a1;
  v26 = sub_24A62E214();
  MEMORY[0x28223BE20](v26);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a2;
  v6 = *&a2[OBJC_IVAR____TtC11FMFindingUI30FMFindingGenericPartPickerView_findables];
  v25 = *(v6 + 16);
  if (v25)
  {
    v7 = 0;
    v8 = v6 + 32;
    v9 = (v3 + 8);
    while (v7 < *(v6 + 16))
    {
      sub_24A508AE4(v8, &v29);
      v10 = v30;
      v11 = v31;
      sub_24A50A204(&v29, v30);
      (*(v11 + 16))(v10, v11);
      v12 = sub_24A62E1C4();
      v14 = v13;
      (*v9)(v5, v26);
      v15 = [v27 identifier];
      v16 = sub_24A62EC14();
      v18 = v17;

      if (v12 == v16 && v14 == v18)
      {

LABEL_12:
        sub_24A508CA0(&v29, v28);
        sub_24A508CA0(v28, &v29);
        sub_24A508AE4(&v29, v28);
        v21 = OBJC_IVAR____TtC11FMFindingUI30FMFindingGenericPartPickerView_value;
        v22 = v24;
        swift_beginAccess();
        sub_24A50D244(v28, &v22[v21]);
        swift_endAccess();
        sub_24A50BAA0();
        sub_24A50D6A4(v28, &unk_27EF522E0, qword_24A637660);
        [v22 sendActionsForControlEvents_];
        sub_24A508C54(&v29);
        return;
      }

      v20 = sub_24A62F634();

      if (v20)
      {
        goto LABEL_12;
      }

      ++v7;
      sub_24A508C54(&v29);
      v8 += 40;
      if (v25 == v7)
      {
        return;
      }
    }

    __break(1u);
  }
}

id sub_24A50C8A0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for FMFindingGenericPartPickerView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_24A50C9B0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11FMFindingUI30FMFindingGenericPartPickerView_value;
  swift_beginAccess();
  return sub_24A50D63C(v1 + v3, a1, &unk_27EF522E0, qword_24A637660);
}

uint64_t sub_24A50CA18(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11FMFindingUI30FMFindingGenericPartPickerView_value;
  swift_beginAccess();
  sub_24A50D244(a1, v1 + v3);
  swift_endAccess();
  sub_24A50BAA0();
  return sub_24A50D6A4(a1, &unk_27EF522E0, qword_24A637660);
}

id sub_24A50CB44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    v10 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = 0;
    goto LABEL_6;
  }

  v18 = a2;
  v19 = a3;
  v14 = MEMORY[0x277D85DD0];
  v15 = 1107296256;
  v16 = sub_24A50CE4C;
  v17 = &unk_285D9FFB8;
  v10 = _Block_copy(&v14);

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v18 = a4;
  v19 = a5;
  v14 = MEMORY[0x277D85DD0];
  v15 = 1107296256;
  v16 = sub_24A50CE9C;
  v17 = &unk_285D9FF90;
  v11 = _Block_copy(&v14);

LABEL_6:
  v12 = [swift_getObjCClassFromMetadata() configurationWithIdentifier:a1 previewProvider:v10 actionProvider:v11];
  sub_24A50D354(a4, a5);
  sub_24A50D354(a2, a3);
  swift_unknownObjectRelease();
  _Block_release(v11);
  _Block_release(v10);
  return v12;
}

__n128 sub_24A50CD80(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_24A50CDA4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24A50CDEC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_24A50CE4C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  return v3;
}

id sub_24A50CE9C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_24A50D7EC(0, &qword_27EF4F3E8, 0x277D75720);
  v3 = sub_24A62ED64();

  v4 = v2(v3);

  return v4;
}

uint64_t sub_24A50CF2C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 < 2)
  {
    return 0;
  }

  for (i = a1 + 32; ; i += 40)
  {
    sub_24A508AE4(i, v19);
    sub_24A508AE4(v19, &v12);
    sub_24A508FA4(&unk_27EF501B0, &unk_24A633B00);
    sub_24A508FA4(&unk_27EF4FF20, &unk_24A635E40);
    if (!swift_dynamicCast())
    {
      break;
    }

    sub_24A508CA0(v10, v16);
    v3 = v17;
    v4 = v18;
    sub_24A50A204(v16, v17);
    (*(v4 + 24))(&v12, v3, v4);
    sub_24A508C54(v19);
    v5 = v13;
    if (!v13 || (v7 = v14, v6 = v15, v8 = v12, , sub_24A50D2B4(v8, v5, v7, v6), !v6))
    {
      sub_24A508C54(v16);
      return type metadata accessor for FMFindingGenericPartPickerView();
    }

    sub_24A508C54(v16);
    if (!--v1)
    {
      return type metadata accessor for FMFindingSymbolBasedPartPickerView();
    }
  }

  v11 = 0;
  memset(v10, 0, sizeof(v10));
  sub_24A508C54(v19);
  sub_24A50D6A4(v10, &unk_27EF50520, &unk_24A633B10);
  return type metadata accessor for FMFindingGenericPartPickerView();
}

double sub_24A50D0EC@<D0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() _preferredFontForTextStyle_variant_];
  v3 = objc_opt_self();
  v4 = [v3 whiteColor];
  v5 = [v3 whiteColor];
  v6 = [v5 colorWithAlphaComponent_];

  *a1 = v2;
  result = 6.0;
  *(a1 + 8) = xmmword_24A633A10;
  *(a1 + 24) = xmmword_24A633A10;
  *(a1 + 40) = 0x4024000000000000;
  *(a1 + 48) = v4;
  *(a1 + 56) = v6;
  *(a1 + 64) = 0x4028000000000000;
  return result;
}

uint64_t sub_24A50D1D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A508FA4(&unk_27EF522E0, qword_24A637660);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A50D244(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A508FA4(&unk_27EF522E0, qword_24A637660);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_24A50D2B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

uint64_t sub_24A50D2F8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A50D354(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_24A50D364(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_24A50D37C()
{
  v1 = OBJC_IVAR____TtC11FMFindingUI30FMFindingGenericPartPickerView_effectBackground;
  v2 = [objc_opt_self() effectWithStyle_];
  v3 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];

  *(v0 + v1) = v3;
  v4 = OBJC_IVAR____TtC11FMFindingUI30FMFindingGenericPartPickerView_titleLabel;
  *(v0 + v4) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v5 = OBJC_IVAR____TtC11FMFindingUI30FMFindingGenericPartPickerView_containerStackView;
  *(v0 + v5) = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  v6 = OBJC_IVAR____TtC11FMFindingUI30FMFindingGenericPartPickerView_iconView;
  *(v0 + v6) = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v7 = v0 + OBJC_IVAR____TtC11FMFindingUI30FMFindingGenericPartPickerView_style;
  sub_24A50D0EC(v11);
  v8 = v11[3];
  *(v7 + 32) = v11[2];
  *(v7 + 48) = v8;
  *(v7 + 64) = v12;
  v9 = v11[1];
  *v7 = v11[0];
  *(v7 + 16) = v9;
  v10 = v0 + OBJC_IVAR____TtC11FMFindingUI30FMFindingGenericPartPickerView_value;
  *(v10 + 32) = 0;
  *v10 = 0u;
  *(v10 + 16) = 0u;
  sub_24A62F444();
  __break(1u);
}

id sub_24A50D4E8()
{
  v1 = [objc_opt_self() defaultStyle];
  [v0 frame];
  v2 = CGRectGetMinY(v6) + *&v0[OBJC_IVAR____TtC11FMFindingUI30FMFindingGenericPartPickerView_style + 64];
  [v0 frame];
  [v1 setPreferredEdgeInsets_];
  sub_24A508FA4(&qword_27EF50790, &qword_24A6338D0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_24A6339F0;
  *(v3 + 32) = [objc_opt_self() effectWithStyle_];
  sub_24A50D7EC(0, &qword_27EF4F3F0, 0x277D75D58);
  v4 = sub_24A62ED54();

  [v1 setPreferredBackgroundEffects_];

  return v1;
}

uint64_t sub_24A50D63C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_24A508FA4(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_24A50D6A4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_24A508FA4(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_24A50D73C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24A50D784()
{
  result = qword_27EF4F430;
  if (!qword_27EF4F430)
  {
    sub_24A50D7EC(255, &qword_27EF4F428, 0x277CCABB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF4F430);
  }

  return result;
}

uint64_t sub_24A50D7EC(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_24A50D878(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_24A50D8D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_24A50D954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_24A62E9C4();
  v37 = v7;
  v38 = v6;
  type metadata accessor for VFXManager(0);
  sub_24A50E0A8(&qword_27EF4F438, type metadata accessor for VFXManager, &protocol conformance descriptor for VFXManager);
  v36 = sub_24A62E474();
  v9 = v8;
  type metadata accessor for PFAnimationCoordinator(0);
  sub_24A50E0A8(&qword_27EF4F440, type metadata accessor for PFAnimationCoordinator, &unk_24A635090);
  v10 = sub_24A62E474();
  v12 = v11;
  v13 = objc_opt_self();
  v14 = [v13 mainScreen];
  [v14 bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v55.origin.x = v16;
  v55.origin.y = v18;
  v55.size.width = v20;
  v55.size.height = v22;
  CGRectGetWidth(v55);
  v23 = [v13 mainScreen];
  [v23 bounds];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;

  v56.origin.x = v25;
  v56.origin.y = v27;
  v56.size.width = v29;
  v56.size.height = v31;
  CGRectGetHeight(v56);
  sub_24A62E9C4();
  sub_24A62E434();
  v32 = sub_24A62E424();
  LOBYTE(v14) = sub_24A62E684();
  v33 = swift_allocObject();
  v33[2] = a1;
  v33[3] = a2;
  v33[4] = a3;
  v33[5] = a4;
  *&v42 = v38;
  *(&v42 + 1) = v37;
  *&v43 = v36;
  *(&v43 + 1) = v9;
  *&v44 = v10;
  *(&v44 + 1) = v12;
  *&v52 = v32;
  BYTE8(v52) = v14;
  *&v53 = sub_24A50E0F4;
  *(&v53 + 1) = v33;
  v54 = 0uLL;
  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    swift_retain_n();
    sub_24A62E354();

    v34 = swift_allocObject();
    v34[2] = a1;
    v34[3] = a2;
    v34[4] = a3;
    v34[5] = a4;

    sub_24A508FA4(&qword_27EF4F448, &qword_24A633C60);
    sub_24A50E154();
    sub_24A50E3A4();
    sub_24A62E7F4();

    v41[10] = v52;
    v41[11] = v53;
    v41[12] = v54;
    v41[6] = v48;
    v41[7] = v49;
    v41[8] = v50;
    v41[9] = v51;
    v41[2] = v44;
    v41[3] = v45;
    v41[4] = v46;
    v41[5] = v47;
    v41[0] = v42;
    v41[1] = v43;
    return sub_24A50E3F8(v41);
  }

  else
  {

    result = sub_24A62E454();
    __break(1u);
  }

  return result;
}

uint64_t sub_24A50DD84(uint64_t a1, uint64_t a2)
{
  if (a1)
  {

    sub_24A5833C4(0);
  }

  else
  {
    type metadata accessor for VFXManager(0);
    sub_24A50E0A8(&qword_27EF4F438, type metadata accessor for VFXManager, &protocol conformance descriptor for VFXManager);
    result = sub_24A62E454();
    __break(1u);
  }

  return result;
}

void sub_24A50DE20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_27EF4E9A8 != -1)
  {
    swift_once();
  }

  v4 = sub_24A62E314();
  sub_24A506EB8(v4, qword_27EF5C130);

  oslog = sub_24A62E2F4();
  v5 = sub_24A62EF34();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    if (a1)
    {
      v8 = v7;
      swift_getKeyPath();
      swift_getKeyPath();

      sub_24A62E354();

      v9 = sub_24A62EC44();
      v11 = sub_24A509BA8(v9, v10, &v13);

      *(v6 + 4) = v11;
      _os_log_impl(&dword_24A503000, oslog, v5, "PFContentView: VFX State Updated: %s", v6, 0xCu);
      sub_24A508C54(v8);
      MEMORY[0x24C21BBE0](v8, -1, -1);
      MEMORY[0x24C21BBE0](v6, -1, -1);
    }

    else
    {
      type metadata accessor for VFXManager(0);
      sub_24A50E0A8(&qword_27EF4F438, type metadata accessor for VFXManager, &protocol conformance descriptor for VFXManager);
      sub_24A62E454();
      __break(1u);
    }
  }

  else
  {
  }
}

uint64_t sub_24A50E0A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24A50E108()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

unint64_t sub_24A50E154()
{
  result = qword_27EF4F450;
  if (!qword_27EF4F450)
  {
    sub_24A50E1E0(&qword_27EF4F448, &qword_24A633C60);
    sub_24A50E228();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF4F450);
  }

  return result;
}

uint64_t sub_24A50E1E0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_24A50E228()
{
  result = qword_27EF4F458;
  if (!qword_27EF4F458)
  {
    sub_24A50E1E0(&qword_27EF4F460, &qword_24A633C68);
    sub_24A50E2B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF4F458);
  }

  return result;
}

unint64_t sub_24A50E2B4()
{
  result = qword_27EF4F468;
  if (!qword_27EF4F468)
  {
    sub_24A50E1E0(&qword_27EF4F470, &qword_24A633C70);
    sub_24A50E340();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF4F468);
  }

  return result;
}

unint64_t sub_24A50E340()
{
  result = qword_27EF4F478;
  if (!qword_27EF4F478)
  {
    sub_24A50E1E0(&qword_27EF4F480, &qword_24A633C78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF4F478);
  }

  return result;
}

unint64_t sub_24A50E3A4()
{
  result = qword_27EF4F488;
  if (!qword_27EF4F488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF4F488);
  }

  return result;
}

uint64_t sub_24A50E3F8(uint64_t a1)
{
  v2 = sub_24A508FA4(&qword_27EF4F448, &qword_24A633C60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24A50E460()
{
  sub_24A50E1E0(&qword_27EF4F448, &qword_24A633C60);
  sub_24A50E154();
  sub_24A50E3A4();
  return swift_getOpaqueTypeConformance2();
}

id sub_24A50E56C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_opt_self();
  v6 = a1;
  v7 = [v5 sharedInstance];
  v8 = [v7 isInternalBuild];

  if (v8)
  {
    v9 = sub_24A62EBE4();
    v10 = [v6 BOOLForKey_];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void sub_24A50E644(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_opt_self();
  v10 = a1;
  v7 = [v6 sharedInstance];
  [v7 isInternalBuild];

  v8 = sub_24A62EDB4();
  v9 = sub_24A62EBE4();
  [v10 setValue:v8 forKey:v9];
}

id sub_24A50E720(void *a1)
{
  v2 = objc_opt_self();
  v3 = a1;
  v4 = [v2 sharedInstance];
  v5 = [v4 isInternalBuild];

  if (v5)
  {
    v6 = sub_24A62EBE4();
    v7 = [v3 BOOLForKey_];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_24A50E7E0(void *a1, uint64_t a2, int a3)
{
  v4 = objc_opt_self();
  v8 = a1;
  v5 = [v4 sharedInstance];
  [v5 isInternalBuild];

  v6 = sub_24A62EDB4();
  v7 = sub_24A62EBE4();
  [v8 setValue:v6 forKey:v7];
}

id sub_24A50E924(void *a1)
{
  v1 = a1;
  v2 = sub_24A50E958();

  return v2;
}

id sub_24A50E958()
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 isInternalBuild];

  if (qword_27EF4EA10 != -1)
  {
    swift_once();
  }

  v3 = xmmword_27EF5C240;
  if (v2)
  {
    v4 = sub_24A62EBE4();
    v5 = [v0 valueForKey_];

    if (v5)
    {
      sub_24A62F234();
      swift_unknownObjectRelease();
      sub_24A50EC28(v8);
      v6 = sub_24A62EBE4();
      v3 = [v0 integerForKey_];
    }

    else
    {
      memset(v8, 0, sizeof(v8));
      sub_24A50EC28(v8);
    }
  }

  return v3;
}

void sub_24A50EAB8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_opt_self();
  v5 = a1;
  v6 = [v4 sharedInstance];
  [v6 isInternalBuild];

  if (qword_27EF4EA10 != -1)
  {
    swift_once();
  }

  v7 = sub_24A62EEB4();
  v8 = sub_24A62EBE4();
  [v5 setValue:v7 forKey:v8];
}

void sub_24A50EBD8()
{
  v0 = sub_24A62EBE4();
  v1 = MGGetBoolAnswer();

  byte_27EF5C0A0 = v1;
}

uint64_t sub_24A50EC28(uint64_t a1)
{
  v2 = sub_24A508FA4(&unk_27EF50780, &qword_24A638470);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *FindingViewController.init(session:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for FMFindingViewState(0);
  MEMORY[0x28223BE20](v4 - 8);
  v72 = (&v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_24A508FA4(&unk_27EF52410, &qword_24A633C90);
  MEMORY[0x28223BE20](v6 - 8);
  v73 = &v68 - v7;
  v8 = type metadata accessor for FMFindingSessionState(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v68 - v12;
  v14 = &v1[OBJC_IVAR____TtC11FMFindingUI21FindingViewController_contentViewController];
  *v14 = 0;
  v14[1] = 0;
  v15 = OBJC_IVAR____TtC11FMFindingUI21FindingViewController_sleepPreventer;
  type metadata accessor for FMFindingSleepPreventer();
  *&v2[v15] = swift_initStaticObject();
  v2[OBJC_IVAR____TtC11FMFindingUI21FindingViewController_errorAlertIsShown] = 0;
  *&v2[OBJC_IVAR____TtC11FMFindingUI21FindingViewController_errorAlertCount] = 0;
  *&v2[OBJC_IVAR____TtC11FMFindingUI21FindingViewController_minAcceptableARLightIntensity] = 0x407F400000000000;
  *&v2[OBJC_IVAR____TtC11FMFindingUI21FindingViewController_insufficientFeaturesARTrackingErrorCount] = 0;
  *&v2[OBJC_IVAR____TtC11FMFindingUI21FindingViewController_updateTorchPeriodicCount] = 0;
  *&v2[OBJC_IVAR____TtC11FMFindingUI21FindingViewController_maxErrorAlertCount] = 3;
  v2[OBJC_IVAR____TtC11FMFindingUI21FindingViewController_isSoundPlaying] = 2;
  v16 = &v2[OBJC_IVAR____TtC11FMFindingUI21FindingViewController_playSoundHandler];
  *v16 = 0;
  v16[1] = 0;
  v17 = &v2[OBJC_IVAR____TtC11FMFindingUI21FindingViewController_willAppearHandler];
  *v17 = 0;
  v17[1] = 0;
  v18 = &v2[OBJC_IVAR____TtC11FMFindingUI21FindingViewController_willDisappearHandler];
  *v18 = 0;
  v18[1] = 0;
  v19 = &v2[OBJC_IVAR____TtC11FMFindingUI21FindingViewController_dismissedHandler];
  *v19 = 0;
  v19[1] = 0;
  v20 = &v2[OBJC_IVAR____TtC11FMFindingUI21FindingViewController_flashLightHandler];
  *v20 = 0;
  v20[1] = 0;
  *&v2[OBJC_IVAR____TtC11FMFindingUI21FindingViewController_session] = a1;
  v21 = OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_state;
  swift_beginAccess();
  v75 = v21;
  sub_24A518CB8(a1 + v21, v13, type metadata accessor for FMFindingSessionState);
  type metadata accessor for FMFindingStateTransitionCoordinator(0);
  swift_allocObject();

  v71 = v13;
  *&v2[OBJC_IVAR____TtC11FMFindingUI21FindingViewController_stateTransitionCoordinator] = sub_24A6099C0(v13);
  v22 = OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_findingType;
  v23 = *(a1 + OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_findingType);
  v24 = (v23 >> 13) & 3;
  if (!v24)
  {
    goto LABEL_4;
  }

  if (v24 == 1)
  {
    LOBYTE(v24) = 2;
LABEL_4:
    v25 = v75;
    goto LABEL_8;
  }

  v25 = v75;
  if ((v23 & 0x80000000) != 0)
  {
    LOBYTE(v24) = (v23 & 1) == 0;
  }

  else
  {
    LOBYTE(v24) = 2;
  }

LABEL_8:
  sub_24A518CB8(a1 + v25, v10, type metadata accessor for FMFindingSessionState);
  v26 = *(v10 + 1);
  if (*(v26 + 16) && (v27 = sub_24A515AC8(&v10[*(v8 + 36)]), (v28 & 1) != 0))
  {
    sub_24A508AE4(*(v26 + 56) + 40 * v27, &v78);
    sub_24A508CA0(&v78, v76);
    sub_24A518A04(v10, type metadata accessor for FMFindingSessionState);
    LOBYTE(v78) = v24;
    v29 = objc_allocWithZone(type metadata accessor for FMR1InstructionsController());
    *&v2[OBJC_IVAR____TtC11FMFindingUI21FindingViewController_instructionsController] = sub_24A5FF084(v76, &v78);
    v30 = type metadata accessor for FindingViewController();
    v77.receiver = v2;
    v77.super_class = v30;
    v31 = objc_msgSendSuper2(&v77, sel_initWithNibName_bundle_, 0, 0);
    v32 = OBJC_IVAR____TtC11FMFindingUI21FindingViewController_instructionsController;
    *(*&v31[OBJC_IVAR____TtC11FMFindingUI21FindingViewController_instructionsController] + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_delegate + 8) = &off_285DA02D8;
    swift_unknownObjectWeakAssign();
    v33 = OBJC_IVAR____TtC11FMFindingUI21FindingViewController_stateTransitionCoordinator;
    *(*&v31[OBJC_IVAR____TtC11FMFindingUI21FindingViewController_session] + OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_delegate + 8) = &off_285DAB1A0;
    swift_unknownObjectWeakAssign();
    *(*&v31[v33] + OBJC_IVAR____TtC11FMFindingUI35FMFindingStateTransitionCoordinator_delegate + 8) = &off_285DA02B0;
    swift_unknownObjectWeakAssign();
    if ((*(a1 + v22) & 0x6000) != 0)
    {
      sub_24A515B88();
      swift_allocError();
      swift_willThrow();
    }

    else
    {
      v68 = v32;
      v70 = v22;
      type metadata accessor for ActionsManager();
      v34 = swift_allocObject();
      swift_defaultActor_initialize();
      *(v34 + 112) = MEMORY[0x277D84F98];
      v35 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v36 = sub_24A62EE24();
      v37 = *(*(v36 - 8) + 56);
      v38 = v73;
      v37(v73, 1, 1, v36);
      v39 = v37;
      v40 = swift_allocObject();
      *(v40 + 16) = 0;
      *(v40 + 24) = 0;
      *(v40 + 32) = v34;
      *(v40 + 40) = 3;
      *(v40 + 48) = sub_24A515C14;
      *(v40 + 56) = v35;

      sub_24A51556C(0, 0, v38, &unk_24A633C98, v40);

      v41 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v69 = a1;
      v39(v38, 1, 1, v36);
      v42 = v39;
      v43 = swift_allocObject();
      *(v43 + 16) = 0;
      *(v43 + 24) = 0;
      *(v43 + 32) = v34;
      *(v43 + 40) = 2;
      *(v43 + 48) = sub_24A515D24;
      *(v43 + 56) = v41;

      sub_24A51556C(0, 0, v38, &unk_24A633CA0, v43);

      v44 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v39(v38, 1, 1, v36);
      v45 = swift_allocObject();
      *(v45 + 16) = 0;
      *(v45 + 24) = 0;
      *(v45 + 32) = v34;
      *(v45 + 40) = 0;
      *(v45 + 48) = sub_24A515D5C;
      *(v45 + 56) = v44;

      sub_24A51556C(0, 0, v38, &unk_24A633CA8, v45);

      v46 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v47 = v69;
      v42(v38, 1, 1, v36);
      v48 = swift_allocObject();
      *(v48 + 16) = 0;
      *(v48 + 24) = 0;
      *(v48 + 32) = v34;
      *(v48 + 40) = 1;
      *(v48 + 48) = sub_24A515F50;
      *(v48 + 56) = v46;

      sub_24A51556C(0, 0, v38, &unk_24A633CB0, v48);

      v81 = *(v47 + v70);
      sub_24A60F2CC(&v78);
      v49 = v79;
      v50 = v80;
      sub_24A50A204(&v78, v79);
      (*(v50 + 40))(v76, v49, v50);
      v51 = type metadata accessor for PrecisionVFXViewController(0);
      v52 = objc_allocWithZone(v51);

      v53 = v74;
      v54 = sub_24A52399C(&v81, v76, 0, v34);
      if (v53)
      {

        sub_24A508C54(&v78);
      }

      else
      {
        v55 = v54;
        sub_24A508C54(&v78);
        v56 = &v31[OBJC_IVAR____TtC11FMFindingUI21FindingViewController_contentViewController];
        v57 = *&v31[OBJC_IVAR____TtC11FMFindingUI21FindingViewController_contentViewController];
        *v56 = v55;
        v56[1] = &off_285DA1540;

        v58 = *v56;
        if (*v56)
        {
          v59 = v71;
          sub_24A518CB8(v47 + v75, v71, type metadata accessor for FMFindingSessionState);
          v60 = v58;
          v61 = sub_24A5ABC04();
          v63 = v62;
          sub_24A518A04(v59, type metadata accessor for FMFindingSessionState);
          off_285DA1568(v61, v63, v51);
        }

        else
        {

          v59 = v71;
        }

        v64 = *&v31[v68];
        sub_24A518CB8(v47 + v75, v59, type metadata accessor for FMFindingSessionState);
        v65 = v64;
        v66 = v72;
        sub_24A626F08(v59, 10, v72);
        sub_24A5FD8E0(v66);

        sub_24A518A04(v66, type metadata accessor for FMFindingViewState);
      }
    }

    return v31;
  }

  else
  {
    result = sub_24A62F444();
    __break(1u);
  }

  return result;
}

void sub_24A50F9B8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    aBlock[4] = sub_24A519228;
    aBlock[5] = a1;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A5A8458;
    aBlock[3] = &unk_285DA0CB0;
    v4 = _Block_copy(aBlock);

    [v3 dismissViewControllerAnimated:1 completion:v4];
    _Block_release(v4);
  }
}

void sub_24A50FAA8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_24A598DB4();
    v3 = &v2[OBJC_IVAR____TtC11FMFindingUI21FindingViewController_dismissedHandler];
    swift_beginAccess();
    v4 = *v3;
    if (*v3)
    {
      v5 = *(v3 + 1);

      v4(v6);

      sub_24A50D354(v4, v5);
    }

    else
    {
    }
  }
}

uint64_t sub_24A50FB60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24A62EA94();
  v16 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_24A62EAD4();
  v9 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A50D7EC(0, &qword_27EF4F9C0, 0x277D85C78);
  v12 = sub_24A62F014();
  aBlock[4] = a2;
  aBlock[5] = a1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A5A8458;
  aBlock[3] = a3;
  v13 = _Block_copy(aBlock);

  sub_24A62EAB4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_24A519230(&qword_27EF4F970, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
  sub_24A518A6C(&qword_27EF4F980, &unk_27EF50510, &unk_24A633E30, MEMORY[0x277D83970]);
  sub_24A62F254();
  MEMORY[0x24C21A950](0, v11, v8, v13);
  _Block_release(v13);

  (*(v16 + 8))(v8, v6);
  return (*(v9 + 8))(v11, v15);
}

void sub_24A50FE34(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong + OBJC_IVAR____TtC11FMFindingUI21FindingViewController_playSoundHandler;
    v3 = Strong;
    swift_beginAccess();
    v4 = *v2;
    v5 = *(v2 + 8);
    sub_24A5173CC(v4, v5);

    if (v4)
    {
      v4(1, 0, 0, 0);
      sub_24A50D354(v4, v5);
    }
  }
}

void sub_24A50FEE4(uint64_t a1, char a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = Strong + OBJC_IVAR____TtC11FMFindingUI21FindingViewController_flashLightHandler;
    swift_beginAccess();
    v8 = *v7;
    if (*v7)
    {
      v9 = *(v7 + 8);

      v10 = v8(a2 & 1);
      v12 = v11;
      sub_24A50D354(v8, v9);
      v13 = *&v6[OBJC_IVAR____TtC11FMFindingUI21FindingViewController_contentViewController];
      if (v12)
      {
        if (!v13)
        {
          sub_24A51909C(v10, 1);
          goto LABEL_10;
        }

        v14 = v13;
        sub_24A526D74(a3 & 1);
        sub_24A51909C(v10, 1);
        goto LABEL_8;
      }

      if (v13)
      {
        v14 = v13;
        sub_24A526D74(a2 & 1);
LABEL_8:
      }
    }

LABEL_10:
  }
}

id FindingViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

uint64_t sub_24A5100E8()
{
  v0 = sub_24A62F784();
  v2 = sub_24A516B88(6, v0, v1);
  v4 = v3;
  v6 = v5;
  v8 = v7;

  v9 = MEMORY[0x24C21A580](v2, v4, v6, v8);
  v11 = v10;

  MEMORY[0x24C21A5D0](v9, v11);

  MEMORY[0x24C21A5D0](30768, 0xE200000000000000);

  MEMORY[0x24C21A5D0](62, 0xE100000000000000);
  v12 = sub_24A62EC24();

  return v12;
}

id FindingViewController.__deallocating_deinit()
{
  v1 = v0;
  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v2 = sub_24A62E314();
  sub_24A506EB8(v2, qword_27EF5C118);
  v3 = sub_24A62E2F4();
  v4 = sub_24A62EF64();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_24A503000, v3, v4, "FindingViewController deinit", v5, 2u);
    MEMORY[0x24C21BBE0](v5, -1, -1);
  }

  v7.receiver = v1;
  v7.super_class = type metadata accessor for FindingViewController();
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

void sub_24A510414()
{
  v40.receiver = v0;
  v40.super_class = type metadata accessor for FindingViewController();
  objc_msgSendSuper2(&v40, sel_viewDidLoad);
  v1 = *&v0[OBJC_IVAR____TtC11FMFindingUI21FindingViewController_contentViewController];
  if (v1)
  {
    v2 = v1;
    [v0 addChildViewController_];
    v3 = [v0 view];
    if (v3)
    {
      v4 = v3;
      v5 = [v2 view];
      if (v5)
      {
        v6 = v5;
        [v4 addSubview_];

        [v2 didMoveToParentViewController_];
        v7 = [v2 view];
        if (v7)
        {
          v8 = v7;
          [v7 setTranslatesAutoresizingMaskIntoConstraints_];

          sub_24A508FA4(&qword_27EF50790, &qword_24A6338D0);
          v9 = swift_allocObject();
          *(v9 + 16) = xmmword_24A633820;
          v10 = [v2 view];
          if (v10)
          {
            v11 = v10;
            v12 = [v10 topAnchor];

            v13 = [v0 view];
            if (v13)
            {
              v14 = v13;
              v15 = [v13 topAnchor];

              v16 = [v12 constraintEqualToAnchor_];
              *(v9 + 32) = v16;
              v17 = [v2 view];
              if (v17)
              {
                v18 = v17;
                v19 = [v17 bottomAnchor];

                v20 = [v0 view];
                if (v20)
                {
                  v21 = v20;
                  v22 = [v20 bottomAnchor];

                  v23 = [v19 constraintEqualToAnchor_];
                  *(v9 + 40) = v23;
                  v24 = [v2 view];
                  if (v24)
                  {
                    v25 = v24;
                    v26 = [v24 leadingAnchor];

                    v27 = [v0 view];
                    if (v27)
                    {
                      v28 = v27;
                      v29 = [v27 leadingAnchor];

                      v30 = [v26 constraintEqualToAnchor_];
                      *(v9 + 48) = v30;
                      v31 = [v2 view];
                      if (v31)
                      {
                        v32 = v31;
                        v33 = [v31 trailingAnchor];

                        v34 = [v0 view];
                        if (v34)
                        {
                          v35 = v34;
                          v36 = objc_opt_self();
                          v37 = [v35 trailingAnchor];

                          v38 = [v33 constraintEqualToAnchor_];
                          *(v9 + 56) = v38;
                          sub_24A50D7EC(0, &qword_27EF4F378, 0x277CCAAD0);
                          v39 = sub_24A62ED54();

                          [v36 activateConstraints_];

                          return;
                        }

LABEL_25:
                        __break(1u);
                        return;
                      }

LABEL_24:
                      __break(1u);
                      goto LABEL_25;
                    }

LABEL_23:
                    __break(1u);
                    goto LABEL_24;
                  }

LABEL_22:
                  __break(1u);
                  goto LABEL_23;
                }

LABEL_21:
                __break(1u);
                goto LABEL_22;
              }

LABEL_20:
              __break(1u);
              goto LABEL_21;
            }

LABEL_19:
            __break(1u);
            goto LABEL_20;
          }

LABEL_18:
          __break(1u);
          goto LABEL_19;
        }

LABEL_17:
        __break(1u);
        goto LABEL_18;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_17;
  }
}

id sub_24A510890(char a1)
{
  v2 = v1;
  result = [v1 view];
  if (result)
  {
    v5 = result;
    [result layoutSubviews];

    sub_24A60FBF0();
    sub_24A510984();
    sub_24A598770();
    v6 = &v2[OBJC_IVAR____TtC11FMFindingUI21FindingViewController_willAppearHandler];
    swift_beginAccess();
    v7 = *v6;
    if (*v6)
    {
      v8 = *(v6 + 1);

      v7(v9);
      sub_24A50D354(v7, v8);
    }

    v10.receiver = v2;
    v10.super_class = type metadata accessor for FindingViewController();
    return objc_msgSendSuper2(&v10, sel_viewWillAppear_, a1 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_24A510984()
{
  v1 = *(*&v0[OBJC_IVAR____TtC11FMFindingUI21FindingViewController_session] + OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_arSession);
  if (!v1)
  {
    return;
  }

  v2 = objc_allocWithZone(type metadata accessor for FMPFARTrackingConfiguration());
  v3 = v1;
  v4 = [v2 init];
  [v4 setLightEstimationEnabled_];
  [v4 setDisableFrontCamera_];
  v5 = [objc_opt_self() standardUserDefaults];
  v6 = [objc_opt_self() sharedInstance];
  v7 = [v6 isInternalBuild];

  if (!v7)
  {

    goto LABEL_7;
  }

  v8 = sub_24A62EBE4();
  v9 = [v5 BOOLForKey_];

  if ((v9 & 1) == 0)
  {
LABEL_7:
    v16 = v4;
    goto LABEL_8;
  }

  v10 = [objc_allocWithZone(MEMORY[0x277CE5340]) initWithBaseConfiguration:v4 fileURL:0];

  sub_24A508FA4(&qword_27EF50530, qword_24A636270);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_24A633830;
  *(v11 + 56) = type metadata accessor for FindingViewController();
  *(v11 + 64) = sub_24A519230(&qword_27EF4F690, v12, type metadata accessor for FindingViewController, MEMORY[0x277D85388]);
  *(v11 + 32) = v0;
  sub_24A50D7EC(0, &qword_27EF51E90, 0x277D86200);
  v17 = v10;
  v13 = v0;
  v14 = sub_24A62F1A4();
  v15 = sub_24A62EF64();
  sub_24A62E2D4("🧭 FindingViewController%@: Starting ARKit recording", 54, 0, &dword_24A503000, v14, v15, v11);

  [v17 startRecording];
  v16 = v17;
LABEL_8:
  v18 = v16;
  [v3 runWithConfiguration_options_];
}

id sub_24A510CB4(char a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC11FMFindingUI21FindingViewController_willDisappearHandler];
  swift_beginAccess();
  v5 = *v4;
  if (*v4)
  {
    v6 = *(v4 + 1);

    v5(v7);
    sub_24A50D354(v5, v6);
  }

  sub_24A60FDA0();
  sub_24A510D64();
  v9.receiver = v2;
  v9.super_class = type metadata accessor for FindingViewController();
  return objc_msgSendSuper2(&v9, sel_viewWillDisappear_, a1 & 1);
}

void sub_24A510D64()
{
  v1 = *(*&v0[OBJC_IVAR____TtC11FMFindingUI21FindingViewController_session] + OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_arSession);
  if (v1)
  {
    v2 = v1;
    v3 = [v2 configuration];
    if (v3)
    {
      v4 = v3;
      objc_opt_self();
      v5 = swift_dynamicCastObjCClass();
      if (v5)
      {
        v6 = v5;
        sub_24A508FA4(&qword_27EF50530, qword_24A636270);
        v7 = swift_allocObject();
        *(v7 + 16) = xmmword_24A633830;
        *(v7 + 56) = type metadata accessor for FindingViewController();
        *(v7 + 64) = sub_24A519230(&qword_27EF4F690, v8, type metadata accessor for FindingViewController, MEMORY[0x277D85388]);
        *(v7 + 32) = v0;
        sub_24A50D7EC(0, &qword_27EF51E90, 0x277D86200);
        v9 = v0;
        v10 = sub_24A62F1A4();
        v11 = sub_24A62EF64();
        sub_24A62E2D4("🧭 FindingViewController%@: Finishing ARKit recording", 55, 0, &dword_24A503000, v10, v11, v7);

        v12 = swift_allocObject();
        *(v12 + 16) = v9;
        v15[4] = sub_24A519094;
        v15[5] = v12;
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 1107296256;
        v15[2] = sub_24A5F4428;
        v15[3] = &unk_285DA0BE8;
        v13 = _Block_copy(v15);
        v14 = v9;

        [v6 finishRecordingWithHandler_];
        _Block_release(v13);
      }
    }

    [v2 pause];
  }
}

uint64_t sub_24A5110D0()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1)
  {
    return 2;
  }

  else
  {
    return 26;
  }
}

void sub_24A51113C(uint64_t a1, char *a2)
{
  v3 = v2;
  v87 = a1;
  v5 = type metadata accessor for FMFindingViewState(0);
  MEMORY[0x28223BE20](v5);
  v7 = (&v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for FindingEstimate(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v89 = OBJC_IVAR____TtC11FMFindingUI21FindingViewController_contentViewController;
  v11 = *(v2 + OBJC_IVAR____TtC11FMFindingUI21FindingViewController_contentViewController);
  if (v11)
  {
    v12 = &a2[v5[6]];
    v88 = v3;
    v13 = *v12;
    v14 = *(v12 + 1);
    v86 = v10;
    v15 = off_285DA1568;
    type metadata accessor for PrecisionVFXViewController(0);
    v16 = v11;
    v17 = v14;
    v3 = v88;
    v15(v13, v17);
    v18 = v86;

    v19 = *(v3 + v89);
    if (v19)
    {
      v20 = &a2[v5[8]];
      *(&v92[4] + 13) = *(v20 + 93);
      v21 = *(v20 + 5);
      v92[3] = *(v20 + 4);
      v92[4] = v21;
      v22 = *(v20 + 1);
      v91 = *v20;
      v92[0] = v22;
      v23 = *(v20 + 3);
      v92[1] = *(v20 + 2);
      v92[2] = v23;
      v24 = &v19[OBJC_IVAR____TtC11FMFindingUI26PrecisionVFXViewController_connectivityState];
      v25 = *&v19[OBJC_IVAR____TtC11FMFindingUI26PrecisionVFXViewController_connectivityState];
      v26 = *&v19[OBJC_IVAR____TtC11FMFindingUI26PrecisionVFXViewController_connectivityState + 32];
      v94 = *&v19[OBJC_IVAR____TtC11FMFindingUI26PrecisionVFXViewController_connectivityState + 16];
      v95 = v26;
      v93 = v25;
      v27 = *&v19[OBJC_IVAR____TtC11FMFindingUI26PrecisionVFXViewController_connectivityState + 48];
      v28 = *&v19[OBJC_IVAR____TtC11FMFindingUI26PrecisionVFXViewController_connectivityState + 64];
      v29 = *&v19[OBJC_IVAR____TtC11FMFindingUI26PrecisionVFXViewController_connectivityState + 80];
      *(v98 + 13) = *&v19[OBJC_IVAR____TtC11FMFindingUI26PrecisionVFXViewController_connectivityState + 93];
      v97 = v28;
      v98[0] = v29;
      v96 = v27;
      memmove(&v19[OBJC_IVAR____TtC11FMFindingUI26PrecisionVFXViewController_connectivityState], v20, 0x65uLL);
      v30 = v19;
      sub_24A508CE4(&v91, v99);
      sub_24A517ABC(&v93);
      v31 = OBJC_IVAR____TtC11FMFindingUI26PrecisionVFXViewController_estimate;
      swift_beginAccess();
      sub_24A518CB8(&v30[v31], v18, type metadata accessor for FindingEstimate);
      v33 = *(v24 + 1);
      v32 = *(v24 + 2);
      v99[0] = *v24;
      v99[1] = v33;
      v99[2] = v32;
      v35 = *(v24 + 4);
      v34 = *(v24 + 5);
      v36 = *(v24 + 3);
      *&v100[13] = *(v24 + 93);
      v99[4] = v35;
      *v100 = v34;
      v99[3] = v36;
      sub_24A508CE4(v99, v90);
      sub_24A524D30(v18, v99);
      sub_24A517ABC(v99);

      v3 = v88;
      sub_24A518A04(v18, type metadata accessor for FindingEstimate);
    }
  }

  v37 = *a2;
  v38 = v5[5];
  v39 = sub_24A62E214();
  (*(*(v39 - 8) + 16))(v7 + v38, &a2[v38], v39);
  v40 = &a2[v5[6]];
  v42 = *v40;
  v41 = *(v40 + 1);
  LOBYTE(v40) = a2[v5[7]];
  v43 = &a2[v5[8]];
  *(v98 + 13) = *(v43 + 93);
  v44 = *(v43 + 3);
  v45 = *(v43 + 5);
  v97 = *(v43 + 4);
  v46 = v97;
  v98[0] = v45;
  v47 = *(v43 + 1);
  v48 = *(v43 + 3);
  v95 = *(v43 + 2);
  v49 = v95;
  v96 = v48;
  v50 = *(v43 + 1);
  v51 = a2[v5[10]];
  v52 = a2[v5[11]];
  v53 = v5[13];
  v54 = a2[v5[12]];
  v93 = *v43;
  v55 = v93;
  v94 = v50;
  v56 = v5[14];
  v57 = (v7 + v5[15]);
  *v57 = 0;
  v57[1] = 0;
  *v7 = v37;
  v58 = (v7 + v5[6]);
  *v58 = v42;
  v58[1] = v41;
  *(v7 + v5[7]) = v40;
  v59 = v7 + v5[8];
  v60 = *(v43 + 5);
  *(v59 + 4) = v46;
  *(v59 + 5) = v60;
  LOBYTE(v42) = a2[v53];
  LOBYTE(v53) = a2[v56];
  *v59 = v55;
  *(v59 + 1) = v47;
  *(v59 + 93) = *(v43 + 93);
  *(v59 + 2) = v49;
  *(v59 + 3) = v44;
  *(v7 + v5[9]) = 4;
  *(v7 + v5[10]) = v51;
  *(v7 + v5[11]) = v52;
  *(v7 + v5[12]) = v54;
  *(v7 + v5[13]) = v42;
  *(v7 + v5[14]) = v53;

  sub_24A508CE4(&v93, &v91);
  sub_24A5FD8E0(v7);
  sub_24A518A04(v7, type metadata accessor for FMFindingViewState);
  v61 = *(v43 + 24);
  if ((v61 & 0xFC000000 | 0x2000000) == 0x6000000)
  {
    v62 = 0;
    v63 = 1;
    v64 = v89;
    v65 = *(v3 + v89);
    if (!v65)
    {
      goto LABEL_21;
    }

LABEL_13:
    v71 = v65;
    v72 = sub_24A5270B8();

    goto LABEL_22;
  }

  v66 = v61 | (v43[100] << 32);
  v64 = v89;
  if ((v66 & 0xFF0000) == 0x40000)
  {
    v67 = *(v43 + 2);
    if (v67 == 1)
    {
      v91 = *v43;
      v63 = 1;
      *(&v92[1] + 8) = *(v43 + 40);
      *(&v92[2] + 8) = *(v43 + 56);
      *(&v92[3] + 8) = *(v43 + 72);
      v68 = *(v43 + 11);
      *&v92[0] = 1;
      *(&v92[4] + 1) = v68;
      *(v92 + 8) = *(v43 + 24);
      LODWORD(v92[5]) = v66;
      BYTE4(v92[5]) = BYTE4(v66);
      sub_24A50D63C(&v91, v90, &qword_27EF4F670, &qword_24A634D70);
      v62 = 0;
      v65 = *(v3 + v64);
      if (!v65)
      {
        goto LABEL_21;
      }

      goto LABEL_13;
    }

    v91 = *v43;
    *(&v92[1] + 8) = *(v43 + 40);
    *(&v92[2] + 8) = *(v43 + 56);
    *(&v92[3] + 8) = *(v43 + 72);
    v69 = *(v43 + 11);
    *&v92[0] = v67;
    *(&v92[4] + 1) = v69;
    *(v92 + 8) = *(v43 + 24);
    LOWORD(v92[5]) = v66;
    sub_24A51A858();
    if ((v70 & 0xFF00000000) != 0x200000000)
    {
      v63 = 0;
      v73 = *a2;
      if (v73)
      {
        v74 = v70;
      }

      else
      {
        v74 = 1;
      }

      if (v73 >> 14 <= 2)
      {
        v75 = v70;
      }

      else
      {
        v75 = v74;
      }

      v62 = v75;
      v65 = *(v3 + v64);
      if (!v65)
      {
        goto LABEL_21;
      }

      goto LABEL_13;
    }
  }

  v62 = 0;
  v63 = 1;
  v65 = *(v3 + v64);
  if (v65)
  {
    goto LABEL_13;
  }

LABEL_21:
  v72 = 0;
LABEL_22:
  v90[0] = v63;
  v76 = sub_24A5FDD70(v62 | (v63 << 32), 0, v72 & 1);
  if (v76)
  {
    v77 = v76;
    v78 = [v76 string];

    v79 = sub_24A62EC14();
    v81 = v80;

    v82 = *(v3 + v64);
    if (!v82)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  v79 = 0;
  v81 = 0;
  v82 = *(v3 + v64);
  if (v82)
  {
LABEL_24:
    v83 = v82;
    sub_24A527248(v79, v81);
  }

LABEL_25:

  v84 = *(v3 + v64);
  if (v84)
  {
    v85 = v84;
    sub_24A5275E8(v87, a2);
  }
}

void sub_24A51176C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24A62E214();
  v174 = *(v4 - 8);
  v175 = v4;
  MEMORY[0x28223BE20](v4);
  v171 = &v166 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v172 = &v166 - v7;
  MEMORY[0x28223BE20](v8);
  v170 = &v166 - v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v166 - v11;
  MEMORY[0x28223BE20](v13);
  v169 = &v166 - v14;
  MEMORY[0x28223BE20](v15);
  v173 = &v166 - v16;
  v17 = type metadata accessor for FMFindingSession.Error(0);
  MEMORY[0x28223BE20](v17);
  v176 = (&v166 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v19);
  v21 = &v166 - v20;
  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v22 = sub_24A62E314();
  sub_24A506EB8(v22, qword_27EF5C118);
  sub_24A518CB8(a1, v21, type metadata accessor for FMFindingSession.Error);
  v23 = sub_24A62E2F4();
  v24 = sub_24A62EF64();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v168 = v1;
    v26 = v25;
    v27 = swift_slowAlloc();
    aBlock = v27;
    *v26 = 136315138;
    sub_24A519230(&qword_27EF4F668, 255, type metadata accessor for FMFindingSession.Error, &unk_24A63C080);
    v28 = sub_24A62F6A4();
    v167 = a1;
    v29 = v12;
    v31 = v30;
    sub_24A518A04(v21, type metadata accessor for FMFindingSession.Error);
    v32 = sub_24A509BA8(v28, v31, &aBlock);
    v12 = v29;
    a1 = v167;

    *(v26 + 4) = v32;
    _os_log_impl(&dword_24A503000, v23, v24, "🧭 FindingViewController: Encountered error: %s.", v26, 0xCu);
    sub_24A508C54(v27);
    MEMORY[0x24C21BBE0](v27, -1, -1);
    v33 = v26;
    v2 = v168;
    MEMORY[0x24C21BBE0](v33, -1, -1);
  }

  else
  {

    sub_24A518A04(v21, type metadata accessor for FMFindingSession.Error);
  }

  v34 = a1;
  v35 = v176;
  sub_24A518CB8(v34, v176, type metadata accessor for FMFindingSession.Error);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload == 5)
      {
        return;
      }

      v73 = sub_24A62E2F4();
      v74 = sub_24A62EF64();
      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        *v75 = 0;
        _os_log_impl(&dword_24A503000, v73, v74, "🧭 FindingViewController: Showing low battery alert.", v75, 2u);
        MEMORY[0x24C21BBE0](v75, -1, -1);
      }

      sub_24A5D2200(0xD000000000000014, 0x800000024A63DCF0);
      sub_24A5D2200(0xD000000000000026, 0x800000024A63DD10);
      v76 = swift_allocObject();
      *(v76 + 16) = v2;
      v77 = *&v2[OBJC_IVAR____TtC11FMFindingUI21FindingViewController_errorAlertCount];
      if (v77 < 3)
      {
        *&v2[OBJC_IVAR____TtC11FMFindingUI21FindingViewController_errorAlertCount] = v77 + 1;
        v78 = v2;
        v79 = sub_24A62EBE4();

        v80 = sub_24A62EBE4();

        v67 = [objc_opt_self() alertControllerWithTitle:v79 message:v80 preferredStyle:1];

        sub_24A5D2200(0xD00000000000001ELL, 0x800000024A63DBD0);
        v81 = swift_allocObject();
        v81[2] = v78;
        v81[3] = sub_24A517D34;
        v81[4] = v76;
        v69 = v78;

        v70 = sub_24A62EBE4();

        v182 = sub_24A5193D0;
        v183 = v81;
        aBlock = MEMORY[0x277D85DD0];
        v179 = 1107296256;
        v180 = sub_24A5BE9EC;
        v181 = &unk_285DA0738;
        v71 = _Block_copy(&aBlock);

        v72 = [objc_opt_self() actionWithTitle:v70 style:0 handler:v71];
        goto LABEL_36;
      }

      v143 = v2;

      v148 = swift_allocObject();
      *(v148 + 16) = v143;
      v182 = sub_24A519370;
      v183 = v148;
      aBlock = MEMORY[0x277D85DD0];
      v179 = 1107296256;
      v145 = &unk_285DA06E8;
    }

    else if (EnumCaseMultiPayload == 7)
    {
      v97 = sub_24A62E2F4();
      v98 = sub_24A62EF64();
      if (os_log_type_enabled(v97, v98))
      {
        v99 = swift_slowAlloc();
        *v99 = 0;
        _os_log_impl(&dword_24A503000, v97, v98, "🧭 FindingViewController: Showing switch to precise finding required error alert.", v99, 2u);
        MEMORY[0x24C21BBE0](v99, -1, -1);
      }

      sub_24A5D2200(0xD00000000000002ALL, 0x800000024A63DC90);
      sub_24A5D2200(0xD00000000000002CLL, 0x800000024A63DCC0);
      v100 = swift_allocObject();
      *(v100 + 16) = v2;
      v101 = *&v2[OBJC_IVAR____TtC11FMFindingUI21FindingViewController_errorAlertCount];
      if (v101 < 3)
      {
        *&v2[OBJC_IVAR____TtC11FMFindingUI21FindingViewController_errorAlertCount] = v101 + 1;
        v102 = v2;
        v103 = sub_24A62EBE4();

        v104 = sub_24A62EBE4();

        v67 = [objc_opt_self() alertControllerWithTitle:v103 message:v104 preferredStyle:1];

        sub_24A5D2200(0xD00000000000001ELL, 0x800000024A63DBD0);
        v105 = swift_allocObject();
        v105[2] = v102;
        v105[3] = sub_24A517CD4;
        v105[4] = v100;
        v69 = v102;

        v70 = sub_24A62EBE4();

        v182 = sub_24A5193D0;
        v183 = v105;
        aBlock = MEMORY[0x277D85DD0];
        v179 = 1107296256;
        v180 = sub_24A5BE9EC;
        v181 = &unk_285DA0670;
        v71 = _Block_copy(&aBlock);

        v72 = [objc_opt_self() actionWithTitle:v70 style:0 handler:v71];
        goto LABEL_36;
      }

      v143 = v2;

      v144 = swift_allocObject();
      *(v144 + 16) = v143;
      v182 = sub_24A517D14;
      v183 = v144;
      aBlock = MEMORY[0x277D85DD0];
      v179 = 1107296256;
      v145 = &unk_285DA0620;
    }

    else if (EnumCaseMultiPayload == 8)
    {
      v59 = sub_24A62E2F4();
      v60 = sub_24A62EF64();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        *v61 = 0;
        _os_log_impl(&dword_24A503000, v59, v60, "🧭 FindingViewController: Showing person no longer friend.", v61, 2u);
        MEMORY[0x24C21BBE0](v61, -1, -1);
      }

      sub_24A5D22F4(0xD000000000000019, 0x800000024A63DC10);
      sub_24A5D22F4(0xD00000000000001BLL, 0x800000024A63DC30);
      v62 = swift_allocObject();
      *(v62 + 16) = v2;
      v63 = *&v2[OBJC_IVAR____TtC11FMFindingUI21FindingViewController_errorAlertCount];
      if (v63 < 3)
      {
        *&v2[OBJC_IVAR____TtC11FMFindingUI21FindingViewController_errorAlertCount] = v63 + 1;
        v64 = v2;
        v65 = sub_24A62EBE4();

        v66 = sub_24A62EBE4();

        v67 = [objc_opt_self() alertControllerWithTitle:v65 message:v66 preferredStyle:1];

        sub_24A5D2200(0xD00000000000001ELL, 0x800000024A63DBD0);
        v68 = swift_allocObject();
        v68[2] = v64;
        v68[3] = sub_24A517C1C;
        v68[4] = v62;
        v69 = v64;

        v70 = sub_24A62EBE4();

        v182 = sub_24A5193D0;
        v183 = v68;
        aBlock = MEMORY[0x277D85DD0];
        v179 = 1107296256;
        v180 = sub_24A5BE9EC;
        v181 = &unk_285DA04E0;
        v71 = _Block_copy(&aBlock);

        v72 = [objc_opt_self() actionWithTitle:v70 style:0 handler:v71];
LABEL_36:
        v122 = v72;
        _Block_release(v71);

        [v67 addAction_];
        v69[OBJC_IVAR____TtC11FMFindingUI21FindingViewController_errorAlertIsShown] = 1;
        [v69 presentViewController:v67 animated:1 completion:0];

LABEL_48:

        return;
      }

      v143 = v2;

      v146 = swift_allocObject();
      *(v146 + 16) = v143;
      v182 = sub_24A519370;
      v183 = v146;
      aBlock = MEMORY[0x277D85DD0];
      v179 = 1107296256;
      v145 = &unk_285DA0490;
    }

    else
    {
      sub_24A5D2200(0xD00000000000001ELL, 0x800000024A63DB80);
      sub_24A5D2200(0xD000000000000020, 0x800000024A63DBA0);
      v116 = swift_allocObject();
      *(v116 + 16) = v2;
      v117 = *&v2[OBJC_IVAR____TtC11FMFindingUI21FindingViewController_errorAlertCount];
      if (v117 < 3)
      {
        *&v2[OBJC_IVAR____TtC11FMFindingUI21FindingViewController_errorAlertCount] = v117 + 1;
        v118 = v2;
        v119 = sub_24A62EBE4();

        v120 = sub_24A62EBE4();

        v67 = [objc_opt_self() alertControllerWithTitle:v119 message:v120 preferredStyle:1];

        sub_24A5D2200(0xD00000000000001ELL, 0x800000024A63DBD0);
        v121 = swift_allocObject();
        v121[2] = v118;
        v121[3] = sub_24A517BC0;
        v121[4] = v116;
        v69 = v118;

        v70 = sub_24A62EBE4();

        v182 = sub_24A517C18;
        v183 = v121;
        aBlock = MEMORY[0x277D85DD0];
        v179 = 1107296256;
        v180 = sub_24A5BE9EC;
        v181 = &unk_285DA0418;
        v71 = _Block_copy(&aBlock);

        v72 = [objc_opt_self() actionWithTitle:v70 style:0 handler:v71];
        goto LABEL_36;
      }

      v143 = v2;

      v147 = swift_allocObject();
      *(v147 + 16) = v143;
      v182 = sub_24A519370;
      v183 = v147;
      aBlock = MEMORY[0x277D85DD0];
      v179 = 1107296256;
      v145 = &unk_285DA03C8;
    }

    v180 = sub_24A5A8458;
    v181 = v145;
    v149 = _Block_copy(&aBlock);
    v150 = v143;

    [v150 dismissViewControllerAnimated:1 completion:v149];
    _Block_release(v149);

    goto LABEL_48;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v123 = v2;
      v124 = v173;
      v125 = v174;
      v126 = v175;
      (*(v174 + 32))(v173, v35, v175);
      v127 = v169;
      (*(v125 + 16))(v169, v124, v126);
      v128 = sub_24A62E2F4();
      v129 = sub_24A62EF64();
      if (os_log_type_enabled(v128, v129))
      {
        v130 = v127;
        v131 = swift_slowAlloc();
        v132 = swift_slowAlloc();
        aBlock = v132;
        *v131 = 136315138;
        sub_24A519230(&qword_27EF4F660, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v133 = v175;
        v134 = sub_24A62F614();
        v136 = v135;
        v137 = v130;
        v138 = *(v174 + 8);
        v138(v137, v133);
        v139 = sub_24A509BA8(v134, v136, &aBlock);

        *(v131 + 4) = v139;
        _os_log_impl(&dword_24A503000, v128, v129, "🧭 FindingViewController: Showing item in use alert for %s.", v131, 0xCu);
        sub_24A508C54(v132);
        MEMORY[0x24C21BBE0](v132, -1, -1);
        MEMORY[0x24C21BBE0](v131, -1, -1);
      }

      else
      {

        v138 = *(v174 + 8);
        v138(v127, v175);
      }

      sub_24A5D2200(0xD00000000000001BLL, 0x800000024A63DC50);
      sub_24A5D2200(0xD00000000000001DLL, 0x800000024A63DC70);
      v151 = swift_allocObject();
      *(v151 + 16) = v123;
      v152 = *&v123[OBJC_IVAR____TtC11FMFindingUI21FindingViewController_errorAlertCount];
      if (v152 >= 3)
      {
        v162 = v123;

        v163 = swift_allocObject();
        *(v163 + 16) = v162;
        v182 = sub_24A519370;
        v183 = v163;
        aBlock = MEMORY[0x277D85DD0];
        v179 = 1107296256;
        v180 = sub_24A5A8458;
        v181 = &unk_285DA0558;
        v164 = _Block_copy(&aBlock);
        v165 = v162;

        [v165 dismissViewControllerAnimated:1 completion:v164];
        _Block_release(v164);
      }

      else
      {
        *&v123[OBJC_IVAR____TtC11FMFindingUI21FindingViewController_errorAlertCount] = v152 + 1;
        v153 = v123;
        v154 = sub_24A62EBE4();

        v155 = sub_24A62EBE4();

        v156 = [objc_opt_self() alertControllerWithTitle:v154 message:v155 preferredStyle:1];

        sub_24A5D2200(0xD00000000000001ELL, 0x800000024A63DBD0);
        v157 = swift_allocObject();
        v157[2] = v153;
        v157[3] = sub_24A517C5C;
        v157[4] = v151;
        v158 = v153;

        v159 = sub_24A62EBE4();

        v182 = sub_24A5193D0;
        v183 = v157;
        aBlock = MEMORY[0x277D85DD0];
        v179 = 1107296256;
        v180 = sub_24A5BE9EC;
        v181 = &unk_285DA05A8;
        v160 = _Block_copy(&aBlock);

        v161 = [objc_opt_self() actionWithTitle:v159 style:0 handler:v160];
        _Block_release(v160);

        [v156 addAction_];
        v158[OBJC_IVAR____TtC11FMFindingUI21FindingViewController_errorAlertIsShown] = 1;
        [v158 presentViewController:v156 animated:1 completion:0];
      }

      v138(v173, v175);
    }

    else
    {
      sub_24A518A04(v35, type metadata accessor for FMFindingSession.Error);
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      v83 = v174;
      v82 = v175;
      (*(v174 + 32))(v12, v35, v175);
      v84 = v170;
      (*(v83 + 16))(v170, v12, v82);
      v85 = v12;
      v86 = sub_24A62E2F4();
      v87 = sub_24A62EF64();
      if (os_log_type_enabled(v86, v87))
      {
        v88 = swift_slowAlloc();
        v89 = swift_slowAlloc();
        aBlock = v89;
        *v88 = 136315138;
        sub_24A519230(&qword_27EF4F660, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v90 = v175;
        v91 = sub_24A62F614();
        v93 = v92;
        v94 = v84;
        v95 = *(v174 + 8);
        v95(v94, v90);
        v96 = sub_24A509BA8(v91, v93, &aBlock);

        *(v88 + 4) = v96;
        _os_log_impl(&dword_24A503000, v86, v87, "🧭 FindingViewController: localizer state error for %s.", v88, 0xCu);
        sub_24A508C54(v89);
        MEMORY[0x24C21BBE0](v89, -1, -1);
        MEMORY[0x24C21BBE0](v88, -1, -1);

        v95(v85, v90);
        return;
      }

      v140 = v175;
      v141 = *(v174 + 8);
      v141(v84, v175);
      v142 = v12;
      goto LABEL_42;
    }

    if (EnumCaseMultiPayload == 3)
    {
      v37 = *(v35 + *(sub_24A508FA4(&qword_27EF4F658, &unk_24A633E10) + 48));
      v38 = v174;
      v39 = v172;
      v40 = v35;
      v41 = v175;
      (*(v174 + 32))(v172, v40, v175);
      v42 = v171;
      (*(v38 + 16))(v171, v39, v41);
      v43 = v37;
      v44 = sub_24A62E2F4();
      v45 = sub_24A62EF64();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        aBlock = v47;
        *v46 = 136315394;
        sub_24A519230(&qword_27EF4F660, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v48 = v175;
        v49 = sub_24A62F614();
        v50 = v42;
        v52 = v51;
        v53 = *(v174 + 8);
        v53(v50, v48);
        v54 = sub_24A509BA8(v49, v52, &aBlock);

        *(v46 + 4) = v54;
        *(v46 + 12) = 2080;
        v177 = v37;
        v55 = v37;
        sub_24A508FA4(&qword_27EF4F9B0, qword_24A6389A0);
        v56 = sub_24A62EC44();
        v58 = sub_24A509BA8(v56, v57, &aBlock);

        *(v46 + 14) = v58;
        _os_log_impl(&dword_24A503000, v44, v45, "🧭 FindingViewController: precision finding config error for %s: %s.", v46, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C21BBE0](v47, -1, -1);
        MEMORY[0x24C21BBE0](v46, -1, -1);

        v53(v172, v48);
        return;
      }

      v140 = v175;
      v141 = *(v174 + 8);
      v141(v42, v175);
      v142 = v39;
LABEL_42:
      v141(v142, v140);
      return;
    }

    v106 = *v35;
    v107 = *v35;
    v108 = sub_24A62E2F4();
    v109 = sub_24A62EF64();

    if (os_log_type_enabled(v108, v109))
    {
      v110 = swift_slowAlloc();
      v111 = swift_slowAlloc();
      v177 = v106;
      aBlock = v111;
      *v110 = 136315138;
      v112 = v106;
      sub_24A508FA4(&qword_27EF4F9B0, qword_24A6389A0);
      v113 = sub_24A62EC44();
      v115 = sub_24A509BA8(v113, v114, &aBlock);

      *(v110 + 4) = v115;
      _os_log_impl(&dword_24A503000, v108, v109, "🧭 FindingViewController: precision finding AR error: %s.", v110, 0xCu);
      sub_24A508C54(v111);
      MEMORY[0x24C21BBE0](v111, -1, -1);
      MEMORY[0x24C21BBE0](v110, -1, -1);
    }

    else
    {
    }
  }
}

void sub_24A513258(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  v10[4] = a3;
  v10[5] = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_24A5A8458;
  v10[3] = a4;
  v8 = _Block_copy(v10);
  v9 = a1;

  [v9 dismissViewControllerAnimated:1 completion:v8];
  _Block_release(v8);
}

uint64_t sub_24A513324(uint64_t a1)
{
  sub_24A598DB4();
  v2 = a1 + OBJC_IVAR____TtC11FMFindingUI21FindingViewController_dismissedHandler;
  result = swift_beginAccess();
  v4 = *v2;
  if (*v2)
  {
    v5 = *(v2 + 8);

    v4(v6);
    return sub_24A50D354(v4, v5);
  }

  return result;
}

void sub_24A5133AC(char a1)
{
  v3 = OBJC_IVAR____TtC11FMFindingUI21FindingViewController_isSoundPlaying;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4 == 2 || (v4 & 1) == 0)
  {
    if (a1 != 2 && (a1 & 1) != 0)
    {
      if (qword_27EF4E9A0 != -1)
      {
        swift_once();
      }

      v10 = sub_24A62E314();
      sub_24A506EB8(v10, qword_27EF5C118);
      v6 = sub_24A62E2F4();
      v7 = sub_24A62EF64();
      if (!os_log_type_enabled(v6, v7))
      {
        goto LABEL_16;
      }

      v8 = swift_slowAlloc();
      *v8 = 0;
      v9 = "🧭 FindingViewController: Done playing ranging sound";
      goto LABEL_15;
    }
  }

  else if (a1 == 2 || (a1 & 1) == 0)
  {
    if (qword_27EF4E9A0 != -1)
    {
      swift_once();
    }

    v5 = sub_24A62E314();
    sub_24A506EB8(v5, qword_27EF5C118);
    v6 = sub_24A62E2F4();
    v7 = sub_24A62EF64();
    if (!os_log_type_enabled(v6, v7))
    {
      goto LABEL_16;
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = "🧭 FindingViewController: Now playing ranging sound";
LABEL_15:
    _os_log_impl(&dword_24A503000, v6, v7, v9, v8, 2u);
    MEMORY[0x24C21BBE0](v8, -1, -1);
LABEL_16:
  }
}

uint64_t sub_24A51356C()
{
  v1 = OBJC_IVAR____TtC11FMFindingUI21FindingViewController_isSoundPlaying;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_24A5135B0(char a1)
{
  v3 = OBJC_IVAR____TtC11FMFindingUI21FindingViewController_isSoundPlaying;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  sub_24A5133AC(v4);
}

void (*sub_24A513608(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11FMFindingUI21FindingViewController_isSoundPlaying;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_24A51369C;
}

void sub_24A51369C(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 24);
  v2 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v5 = *(v3 + v2);
  *(v3 + v2) = v4;
  sub_24A5133AC(v5);

  free(v1);
}

uint64_t sub_24A5136E4@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC11FMFindingUI21FindingViewController_playSoundHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_24A517E5C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_24A5173CC(v4, v5);
}

uint64_t sub_24A513784(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_24A517E50;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC11FMFindingUI21FindingViewController_playSoundHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_24A5173CC(v3, v4);
  return sub_24A50D354(v8, v9);
}

uint64_t sub_24A5138EC@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC11FMFindingUI21FindingViewController_willAppearHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_24A5193D4;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_24A5173CC(v4, v5);
}

uint64_t sub_24A51398C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_24A519364;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC11FMFindingUI21FindingViewController_willAppearHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_24A5173CC(v3, v4);
  return sub_24A50D354(v8, v9);
}

uint64_t sub_24A513AF4@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC11FMFindingUI21FindingViewController_willDisappearHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_24A5193D4;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_24A5173CC(v4, v5);
}

uint64_t sub_24A513B94(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_24A519364;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC11FMFindingUI21FindingViewController_willDisappearHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_24A5173CC(v3, v4);
  return sub_24A50D354(v8, v9);
}

uint64_t sub_24A513CFC@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC11FMFindingUI21FindingViewController_dismissedHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_24A517E48;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_24A5173CC(v4, v5);
}

uint64_t sub_24A513D9C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_24A517E40;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC11FMFindingUI21FindingViewController_dismissedHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_24A5173CC(v3, v4);
  return sub_24A50D354(v8, v9);
}

uint64_t sub_24A513F08@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC11FMFindingUI21FindingViewController_flashLightHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_24A517E38;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_24A5173CC(v4, v5);
}

uint64_t sub_24A513FA8(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_24A517E30;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC11FMFindingUI21FindingViewController_flashLightHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_24A5173CC(v3, v4);
  return sub_24A50D354(v8, v9);
}

uint64_t sub_24A514090(void *a1, void (*a2)(void, void))
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = *v4;
  a2(*v4, v4[1]);
  return v5;
}

uint64_t sub_24A514118(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9, v10);
}

id FindingViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_24A62EBE4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

uint64_t (*sub_24A5142B4(uint64_t **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_24A513608(v2);
  return sub_24A514324;
}

void sub_24A514324(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_24A5144EC(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void, void))
{
  v6 = (v4 + *a3);
  swift_beginAccess();
  v7 = *v6;
  a4(*v6, v6[1]);
  return v7;
}

uint64_t sub_24A514574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(uint64_t, uint64_t))
{
  v10 = (v6 + *a5);
  swift_beginAccess();
  v11 = *v10;
  v12 = v10[1];
  *v10 = a1;
  v10[1] = a2;
  return a6(v11, v12);
}

void sub_24A5145F8(uint64_t a1)
{
  v1 = [objc_opt_self() defaultDeviceWithMediaType_];
  if (v1)
  {
    v2 = v1;
    if ([v1 hasTorch])
    {
      v3 = [v2 isTorchAvailable];
      v4 = [v2 torchMode];
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v6 = Strong;
        sub_24A51470C(v3, v4 == 1);
      }

      goto LABEL_8;
    }
  }

  swift_beginAccess();
  v7 = swift_unknownObjectWeakLoadStrong();
  if (!v7)
  {
    return;
  }

  v2 = v7;
  sub_24A51470C(0, 0);
LABEL_8:
}

uint64_t sub_24A51470C(char a1, char a2)
{
  v4 = sub_24A62EA94();
  v16 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_24A62EAD4();
  v7 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A50D7EC(0, &qword_27EF4F9C0, 0x277D85C78);
  v10 = sub_24A62F014();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 17) = a2;
  *(v12 + 24) = v11;
  aBlock[4] = sub_24A518AB4;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A5A8458;
  aBlock[3] = &unk_285DA0AD0;
  v13 = _Block_copy(aBlock);

  sub_24A62EAB4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_24A519230(&qword_27EF4F970, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
  sub_24A518A6C(&qword_27EF4F980, &unk_27EF50510, &unk_24A633E30, MEMORY[0x277D83970]);
  sub_24A62F254();
  MEMORY[0x24C21A950](0, v9, v6, v13);
  _Block_release(v13);

  (*(v16 + 8))(v6, v4);
  return (*(v7 + 8))(v9, v15);
}

uint64_t sub_24A514A50(uint64_t a1, uint64_t a2)
{
  v18 = a2;
  v3 = sub_24A62EA94();
  v21 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24A62EAD4();
  v19 = *(v6 - 8);
  v20 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24A62EAA4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A50D7EC(0, &qword_27EF4F9C0, 0x277D85C78);
  (*(v10 + 104))(v12, *MEMORY[0x277D851C8], v9);
  v13 = sub_24A62F054();
  (*(v10 + 8))(v12, v9);
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = a1;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A5A8458;
  aBlock[3] = v18;
  v15 = _Block_copy(aBlock);

  sub_24A62EAB4();
  v22 = MEMORY[0x277D84F90];
  sub_24A519230(&qword_27EF4F970, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
  sub_24A518A6C(&qword_27EF4F980, &unk_27EF50510, &unk_24A633E30, MEMORY[0x277D83970]);
  sub_24A62F254();
  MEMORY[0x24C21A950](0, v8, v5, v15);
  _Block_release(v15);

  (*(v21 + 8))(v5, v3);
  (*(v19 + 8))(v8, v20);
}

void sub_24A514E0C(uint64_t a1)
{
  v1 = [objc_opt_self() defaultDeviceWithMediaType_];
  if (v1)
  {
    v2 = v1;
    if ([v1 hasTorch] && objc_msgSend(v2, sel_isTorchAvailable))
    {
      v3 = [v2 torchMode];
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v5 = Strong;
        sub_24A51470C(2, v3 == 1);
      }

      goto LABEL_9;
    }
  }

  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (!v6)
  {
    return;
  }

  v2 = v6;
  sub_24A51470C(0, 0);
LABEL_9:
}

void sub_24A514F20(char a1, char a2, uint64_t a3)
{
  if (a1 == 2)
  {
    if (qword_27EF4E9A0 != -1)
    {
      swift_once();
    }

    v4 = sub_24A62E314();
    sub_24A506EB8(v4, qword_27EF5C118);
    v5 = sub_24A62E2F4();
    v6 = sub_24A62EF64();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v44[0] = v8;
      *v7 = 136315138;
      if (a2)
      {
        v9 = 28271;
      }

      else
      {
        v9 = 6710895;
      }

      if (a2)
      {
        v10 = 0xE200000000000000;
      }

      else
      {
        v10 = 0xE300000000000000;
      }

      v11 = sub_24A509BA8(v9, v10, v44);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_24A503000, v5, v6, "🧭 FindingViewCtrl: Updated torch button (light is %s)", v7, 0xCu);
      sub_24A508C54(v8);
      MEMORY[0x24C21BBE0](v8, -1, -1);
      MEMORY[0x24C21BBE0](v7, -1, -1);
    }

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v13 = *(Strong + OBJC_IVAR____TtC11FMFindingUI21FindingViewController_contentViewController);
      v14 = Strong;
      v15 = v13;

      if (v13)
      {
        sub_24A526D74(a2 & 1);
LABEL_42:
      }
    }
  }

  else if (a1)
  {
    if (qword_27EF4E9A0 != -1)
    {
      swift_once();
    }

    v16 = sub_24A62E314();
    sub_24A506EB8(v16, qword_27EF5C118);
    v17 = sub_24A62E2F4();
    v18 = sub_24A62EF64();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v44[0] = v20;
      *v19 = 136315138;
      if (a2)
      {
        v21 = 28271;
      }

      else
      {
        v21 = 6710895;
      }

      if (a2)
      {
        v22 = 0xE200000000000000;
      }

      else
      {
        v22 = 0xE300000000000000;
      }

      v23 = sub_24A509BA8(v21, v22, v44);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_24A503000, v17, v18, "🧭 FindingViewCtrl: Updated torch button (light is %s)", v19, 0xCu);
      sub_24A508C54(v20);
      MEMORY[0x24C21BBE0](v20, -1, -1);
      MEMORY[0x24C21BBE0](v19, -1, -1);
    }

    swift_beginAccess();
    v24 = swift_unknownObjectWeakLoadStrong();
    if (v24)
    {
      v25 = *(v24 + OBJC_IVAR____TtC11FMFindingUI21FindingViewController_contentViewController);
      v26 = v24;
      v27 = v25;

      if (v25)
      {
        sub_24A526D74(a2 & 1);
      }
    }

    swift_beginAccess();
    v28 = swift_unknownObjectWeakLoadStrong();
    if (v28)
    {
      v29 = *(v28 + OBJC_IVAR____TtC11FMFindingUI21FindingViewController_contentViewController);
      v30 = v28;
      v15 = v29;

      if (v29)
      {
        v31 = off_285DA1590;
        type metadata accessor for PrecisionVFXViewController(0);
        v31(1);
        goto LABEL_42;
      }
    }
  }

  else
  {
    if (qword_27EF4E9A0 != -1)
    {
      swift_once();
    }

    v32 = sub_24A62E314();
    sub_24A506EB8(v32, qword_27EF5C118);
    v33 = sub_24A62E2F4();
    v34 = sub_24A62EF64();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_24A503000, v33, v34, "🧭 FindingViewCtrl: Torch is not available at the moment", v35, 2u);
      MEMORY[0x24C21BBE0](v35, -1, -1);
    }

    swift_beginAccess();
    v36 = swift_unknownObjectWeakLoadStrong();
    if (v36)
    {
      v37 = *(v36 + OBJC_IVAR____TtC11FMFindingUI21FindingViewController_contentViewController);
      v38 = v36;
      v39 = v37;

      if (v37)
      {
        sub_24A526D74(0);
      }
    }

    swift_beginAccess();
    v40 = swift_unknownObjectWeakLoadStrong();
    if (v40)
    {
      v41 = *(v40 + OBJC_IVAR____TtC11FMFindingUI21FindingViewController_contentViewController);
      v42 = v40;
      v15 = v41;

      if (v41)
      {
        v43 = off_285DA1590;
        type metadata accessor for PrecisionVFXViewController(0);
        v43(0);
        goto LABEL_42;
      }
    }
  }
}

void sub_24A515440(uint64_t a1, void *a2)
{
  sub_24A508FA4(&qword_27EF50530, qword_24A636270);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_24A633830;
  *(v3 + 56) = type metadata accessor for FindingViewController();
  *(v3 + 64) = sub_24A519230(&qword_27EF4F690, v4, type metadata accessor for FindingViewController, MEMORY[0x277D85388]);
  *(v3 + 32) = a2;
  sub_24A50D7EC(0, &qword_27EF51E90, 0x277D86200);
  v5 = a2;
  v7 = sub_24A62F1A4();
  v6 = sub_24A62EF64();
  sub_24A62E2D4("🧭 FindingViewController%@: Finished ARKit debug recording", 60, 0, &dword_24A503000, v7, v6, v3);
}

uint64_t sub_24A51556C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_24A508FA4(&unk_27EF52410, &qword_24A633C90);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_24A50D63C(a3, v25 - v10, &unk_27EF52410, &qword_24A633C90);
  v12 = sub_24A62EE24();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_24A50D6A4(v11, &unk_27EF52410, &qword_24A633C90);
  }

  else
  {
    sub_24A62EE14();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_24A62EDC4();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_24A62EC54() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_24A50D6A4(a3, &unk_27EF52410, &qword_24A633C90);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_24A50D6A4(a3, &unk_27EF52410, &qword_24A633C90);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_24A51586C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24A515964;

  return v6(a1);
}

uint64_t sub_24A515964()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_24A515A5C(__int128 *a1)
{
  sub_24A62F714();
  sub_24A576E74(v4);
  v2 = sub_24A62F754();

  return sub_24A516178(a1, v2);
}

unint64_t sub_24A515AC8(uint64_t a1)
{
  sub_24A62E214();
  sub_24A519230(&qword_27EF52310, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v2 = sub_24A62EBB4();

  return sub_24A5166D0(a1, v2);
}

unint64_t sub_24A515B88()
{
  result = qword_27EF4F638;
  if (!qword_27EF4F638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF4F638);
  }

  return result;
}

uint64_t sub_24A515BDC()
{
  MEMORY[0x24C21BCD0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A515C4C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 40);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_24A51935C;

  return sub_24A51D1DC(a1, v4, v5, v6, v9, v7, v8);
}

uint64_t sub_24A515D84(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 40);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_24A515E5C;

  return sub_24A51D1DC(a1, v4, v5, v6, v9, v7, v8);
}

uint64_t sub_24A515E5C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_24A515F74()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

unint64_t sub_24A515FC0(uint64_t a1)
{
  sub_24A62EC14();
  sub_24A62F714();
  sub_24A62EC74();
  v2 = sub_24A62F754();

  return sub_24A516A84(a1, v2);
}

unint64_t sub_24A516050(uint64_t a1, uint64_t a2)
{
  sub_24A62F714();
  sub_24A62EC74();
  v4 = sub_24A62F754();

  return sub_24A516894(a1, a2, v4);
}

unint64_t sub_24A5160C8(uint64_t a1)
{
  v1 = a1;
  sub_24A62F714();
  MEMORY[0x24C21B040](v1);
  v2 = sub_24A62F754();

  return sub_24A51694C(v1, v2);
}

unint64_t sub_24A516134(uint64_t a1)
{
  v2 = sub_24A62F324();

  return sub_24A5169BC(a1, v2);
}

unint64_t sub_24A516178(__int128 *a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      v6 = *(v2 + 48) + 104 * v4;
      v7 = *(v6 + 32);
      v8 = *v6;
      v73 = *(v6 + 16);
      v10 = *(v6 + 64);
      v9 = *(v6 + 80);
      v11 = *(v6 + 48);
      *&v77[13] = *(v6 + 93);
      v72 = v8;
      v74 = v7;
      v75 = v11;
      v76 = v10;
      *v77 = v9;
      v12 = v73;
      v13 = *&v77[16] | (v77[20] << 32);
      v14 = (((*&v77[16] & 0xFF000000) - 0x4000000) >> 24);
      if (v14 > 1)
      {
        if (v14 == 2)
        {
          if ((a1[6] & 0xFE000000) == 0x6000000)
          {
            return v4;
          }

          goto LABEL_4;
        }

        if (v14 == 3)
        {
          goto LABEL_4;
        }
      }

      else
      {
        if (!(((*&v77[16] & 0xFF000000) - 0x4000000) >> 24))
        {
          if (*(a1 + 99) << 24 == 0x4000000)
          {
            return v4;
          }

          goto LABEL_4;
        }

        if (v14 == 1)
        {
          if (*(a1 + 99) << 24 == 83886080)
          {
            return v4;
          }

          goto LABEL_4;
        }
      }

      v15 = *(a1 + 24);
      if ((v15 | 0x2000000) >> 25 != 3)
      {
        v16 = v15 | (*(a1 + 100) << 32);
        v17 = BYTE2(v15);
        if (v77[18] <= 1u)
        {
          if (v77[18])
          {
            if (v17 != 1)
            {
              goto LABEL_4;
            }
          }

          else if (v17)
          {
            goto LABEL_4;
          }
        }

        else if (v77[18] == 2)
        {
          if (v17 != 2)
          {
            goto LABEL_4;
          }
        }

        else if (v77[18] == 3)
        {
          if (v17 != 3)
          {
            goto LABEL_4;
          }
        }

        else
        {
          if (v17 != 4)
          {
            goto LABEL_4;
          }

          v18 = *(a1 + 2);
          v71 = *v6;
          v19 = *(v6 + 40);
          v20 = *(v6 + 72);
          v68 = *(v6 + 56);
          v69 = v20;
          v70 = *(v6 + 88);
          v66 = *(v6 + 24);
          v67 = v19;
          *&v65[6] = *a1;
          v31 = v4;
          if (v73 == 1)
          {
            if (v18 != 1)
            {
              goto LABEL_39;
            }

            v41 = v71;
            v42 = 1;
            v44 = v67;
            v45 = v68;
            v46 = v69;
            v47 = v70;
            v43 = v66;
            v48 = *&v77[16];
            v29 = a1;
            sub_24A508CE4(&v72, &v49);
            sub_24A508CE4(v29, &v49);
            sub_24A50D6A4(&v41, &qword_27EF4F650, &unk_24A633E00);
            a1 = v29;
            v4 = v31;
          }

          else
          {
            v40 = *v6;
            v21 = *(v6 + 40);
            v22 = *(v6 + 72);
            v37 = *(v6 + 56);
            v38 = v22;
            v39 = *(v6 + 88);
            v35 = *(v6 + 24);
            v36 = v21;
            if (v18 == 1)
            {
LABEL_39:
              v49 = v71;
              v50 = v73;
              v52 = v67;
              v53 = v68;
              v54 = v69;
              v55 = v70;
              v51 = v66;
              v56 = *&v77[16];
              *&v57[14] = *&v65[14];
              *v57 = *v65;
              v58 = v18;
              v23 = *(a1 + 24);
              v63 = *(a1 + 11);
              v24 = *(a1 + 72);
              v61 = *(a1 + 56);
              v62 = v24;
              v25 = *(a1 + 40);
              v59 = v23;
              v60 = v25;
              v64 = v16;
              v26 = a1;
              sub_24A508CE4(&v72, &v41);
              sub_24A508CE4(v26, &v41);
              sub_24A50D6A4(&v49, &qword_27EF4F648, &qword_24A633DF8);
              a1 = v26;
              v4 = v31;
              goto LABEL_4;
            }

            v32 = *a1;
            *v33 = v18;
            *&v33[8] = *(a1 + 24);
            *&v33[24] = *(a1 + 40);
            *&v33[72] = *(a1 + 11);
            *&v33[56] = *(a1 + 72);
            *&v33[40] = *(a1 + 56);
            v34 = v16;
            v86[0] = v32;
            v86[1] = *v33;
            v87 = v16;
            v86[4] = *&v33[48];
            v86[5] = *&v33[64];
            v86[2] = *&v33[16];
            v86[3] = *&v33[32];
            v78 = v40;
            v80 = v35;
            v84 = v39;
            v83 = v38;
            v82 = v37;
            v81 = v36;
            v79 = v73;
            v85 = *&v77[16];
            v30 = a1;
            sub_24A508CE4(&v72, &v49);
            sub_24A508CE4(&v72, &v49);
            sub_24A508CE4(v30, &v49);
            v28 = sub_24A51B4E4(&v78, v86);
            sub_24A517ABC(&v72);
            sub_24A50D6A4(&v32, &qword_27EF4F650, &unk_24A633E00);
            v41 = v71;
            v42 = v12;
            v44 = v67;
            v45 = v68;
            v46 = v69;
            v47 = v70;
            v43 = v66;
            v48 = v13;
            sub_24A50D6A4(&v41, &qword_27EF4F650, &unk_24A633E00);
            a1 = v30;
            v4 = v31;
            if ((v28 & 1) == 0)
            {
              goto LABEL_4;
            }
          }
        }

        if (((v16 ^ v13) & 0xFF000000) == 0)
        {
          if (HIDWORD(v13) == 3)
          {
            if (BYTE4(v16) == 3)
            {
              return v4;
            }
          }

          else if (BYTE4(v16) != 3)
          {
            if (HIDWORD(v13) == 2)
            {
              if (BYTE4(v16) == 2)
              {
                return v4;
              }
            }

            else if (BYTE4(v16) != 2 && ((BYTE4(v16) ^ HIDWORD(v13)) & 1) == 0)
            {
              return v4;
            }
          }
        }
      }

LABEL_4:
      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_24A5166D0(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_24A62E214();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4, v6);
      sub_24A519230(&qword_27EF501E0, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v16 = sub_24A62EBD4();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_24A516894(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_24A62F634())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_24A51694C(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_24A5169BC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_24A517B10(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x24C21AC50](v9, a1);
      sub_24A517B6C(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_24A516A84(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_24A62EC14();
      v8 = v7;
      if (v6 == sub_24A62EC14() && v8 == v9)
      {
        break;
      }

      v11 = sub_24A62F634();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_24A516B88(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return MEMORY[0x2821FBFB0]();
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = sub_24A62EC94();
  if (v5)
  {
    v4 = 15;
  }

  if (4 * v3 < v4 >> 14)
  {
    goto LABEL_12;
  }

  return MEMORY[0x2821FBFB0]();
}

void sub_24A516C44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + OBJC_IVAR____TtC11FMFindingUI21FindingViewController_contentViewController);
  if (v5)
  {
    v19[0] = a4;
    v19[1] = a1;
    v19[2] = a2;

    v6 = v5;

    v7 = 0;
    v8 = MEMORY[0x277D84F90];
LABEL_3:
    v9 = &v19[2 * v7];
    while (++v7 != 3)
    {
      v10 = v9 + 2;
      v11 = *v9;
      v9 += 2;
      if (v11)
      {
        v12 = *(v10 - 3);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_24A617710(0, *(v8 + 2) + 1, 1, v8);
        }

        v14 = *(v8 + 2);
        v13 = *(v8 + 3);
        if (v14 >= v13 >> 1)
        {
          v8 = sub_24A617710((v13 > 1), v14 + 1, 1, v8);
        }

        *(v8 + 2) = v14 + 1;
        v15 = &v8[16 * v14];
        *(v15 + 4) = v12;
        *(v15 + 5) = v11;
        goto LABEL_3;
      }
    }

    sub_24A508FA4(&qword_27EF4F678, &qword_24A633E20);
    swift_arrayDestroy();
    sub_24A508FA4(&qword_27EF4F680, &qword_24A633E28);
    sub_24A518A6C(&qword_27EF4F688, &qword_27EF4F680, &qword_24A633E28, MEMORY[0x277D83958]);
    v16 = sub_24A62EBC4();
    v18 = v17;

    sub_24A527234(v16, v18);
  }
}

void sub_24A516E1C(char *a1, uint64_t a2)
{
  v5 = sub_24A62EA94();
  v32 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24A62EAD4();
  v30 = *(v8 - 8);
  v31 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FMFindingViewState(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  if ([objc_opt_self() isMainThread])
  {

    sub_24A51113C(a2, a1);
  }

  else
  {
    sub_24A50D7EC(0, &qword_27EF4F9C0, 0x277D85C78);
    v28 = v5;
    v18 = v2;
    v29 = sub_24A62F014();
    sub_24A518CB8(a2, v17, type metadata accessor for FMFindingViewState);
    sub_24A518CB8(a1, v14, type metadata accessor for FMFindingViewState);
    v19 = *(v12 + 80);
    v20 = (v19 + 24) & ~v19;
    v21 = (v13 + v19 + v20) & ~v19;
    v22 = swift_allocObject();
    *(v22 + 16) = v18;
    sub_24A518F38(v17, v22 + v20, type metadata accessor for FMFindingViewState);
    sub_24A518F38(v14, v22 + v21, type metadata accessor for FMFindingViewState);
    aBlock[4] = sub_24A518FA0;
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A5A8458;
    aBlock[3] = &unk_285DA0B98;
    v23 = _Block_copy(aBlock);
    v24 = v18;

    sub_24A62EAB4();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_24A519230(&qword_27EF4F970, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
    sub_24A518A6C(&qword_27EF4F980, &unk_27EF50510, &unk_24A633E30, MEMORY[0x277D83970]);
    v25 = v28;
    sub_24A62F254();
    v26 = v29;
    MEMORY[0x24C21A950](0, v10, v7, v23);
    _Block_release(v23);

    (*(v32 + 8))(v7, v25);
    (*(v30 + 8))(v10, v31);
  }
}

void _s11FMFindingUI21FindingViewControllerC5coderACSgSo7NSCoderC_tcfc_0()
{
  v1 = (v0 + OBJC_IVAR____TtC11FMFindingUI21FindingViewController_contentViewController);
  *v1 = 0;
  v1[1] = 0;
  v2 = OBJC_IVAR____TtC11FMFindingUI21FindingViewController_sleepPreventer;
  type metadata accessor for FMFindingSleepPreventer();
  *(v0 + v2) = swift_initStaticObject();
  *(v0 + OBJC_IVAR____TtC11FMFindingUI21FindingViewController_errorAlertIsShown) = 0;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI21FindingViewController_errorAlertCount) = 0;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI21FindingViewController_minAcceptableARLightIntensity) = 0x407F400000000000;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI21FindingViewController_insufficientFeaturesARTrackingErrorCount) = 0;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI21FindingViewController_updateTorchPeriodicCount) = 0;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI21FindingViewController_maxErrorAlertCount) = 3;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI21FindingViewController_isSoundPlaying) = 2;
  v3 = (v0 + OBJC_IVAR____TtC11FMFindingUI21FindingViewController_playSoundHandler);
  *v3 = 0;
  v3[1] = 0;
  v4 = (v0 + OBJC_IVAR____TtC11FMFindingUI21FindingViewController_willAppearHandler);
  *v4 = 0;
  v4[1] = 0;
  v5 = (v0 + OBJC_IVAR____TtC11FMFindingUI21FindingViewController_willDisappearHandler);
  *v5 = 0;
  v5[1] = 0;
  v6 = (v0 + OBJC_IVAR____TtC11FMFindingUI21FindingViewController_dismissedHandler);
  *v6 = 0;
  v6[1] = 0;
  v7 = (v0 + OBJC_IVAR____TtC11FMFindingUI21FindingViewController_flashLightHandler);
  *v7 = 0;
  v7[1] = 0;
  sub_24A62F444();
  __break(1u);
}

uint64_t sub_24A5173CC(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_24A5173DC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11FMFindingUI21FindingViewController_isSoundPlaying;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

void sub_24A517434(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11FMFindingUI21FindingViewController_isSoundPlaying;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  sub_24A5133AC(v5);
}

uint64_t sub_24A51751C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 96);
  v4 = *(a1 + 100);
  v5 = *(a3 + 48);
  v6 = *(a1 + 16);
  v10[0] = *a1;
  v10[1] = v6;
  v7 = *(a1 + 48);
  v10[2] = *(a1 + 32);
  v10[3] = v7;
  v8 = *(a1 + 80);
  v10[4] = *(a1 + 64);
  v10[5] = v8;
  v12 = v4;
  v11 = v3;
  return v5(v10, a2);
}

unint64_t sub_24A517A68()
{
  result = qword_27EF4F640;
  if (!qword_27EF4F640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF4F640);
  }

  return result;
}

uint64_t sub_24A517C00(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A517C9C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A517D74()
{
  if (*(v0 + 24))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24A517DBC()
{
  v1 = *(v0 + 24);
  *(*(v0 + 16) + OBJC_IVAR____TtC11FMFindingUI21FindingViewController_errorAlertIsShown) = 0;
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_24A517DF8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_24A517E64(uint64_t a1)
{
  v3 = sub_24A62EA94();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24A62EAD4();
  v22 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FMFindingSession.Error(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  if ([objc_opt_self() isMainThread])
  {

    sub_24A51176C(a1);
  }

  else
  {
    sub_24A50D7EC(0, &qword_27EF4F9C0, 0x277D85C78);
    v21 = v7;
    v13 = v1;
    v20 = sub_24A62F014();
    sub_24A518CB8(a1, &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FMFindingSession.Error);
    v14 = (*(v11 + 80) + 24) & ~*(v11 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = v13;
    sub_24A518F38(&v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for FMFindingSession.Error);
    aBlock[4] = sub_24A518C54;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A5A8458;
    aBlock[3] = &unk_285DA0B48;
    v16 = _Block_copy(aBlock);
    v17 = v13;

    sub_24A62EAB4();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_24A519230(&qword_27EF4F970, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
    sub_24A518A6C(&qword_27EF4F980, &unk_27EF50510, &unk_24A633E30, MEMORY[0x277D83970]);
    sub_24A62F254();
    v18 = v20;
    MEMORY[0x24C21A950](0, v9, v6, v16);
    _Block_release(v16);

    (*(v4 + 8))(v6, v3);
    (*(v22 + 8))(v9, v21);
  }
}

void sub_24A518270(uint64_t a1)
{
  v3 = type metadata accessor for FindingEstimate(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v18[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v6);
  v8 = &v18[-v7 - 8];
  v9 = *(v1 + OBJC_IVAR____TtC11FMFindingUI21FindingViewController_contentViewController);
  if (v9)
  {
    sub_24A518CB8(a1, &v18[-v7 - 8], type metadata accessor for FindingEstimate);
    v10 = OBJC_IVAR____TtC11FMFindingUI26PrecisionVFXViewController_estimate;
    swift_beginAccess();
    v11 = v9;
    sub_24A519030(v8, v9 + v10);
    swift_endAccess();
    sub_24A518CB8(v9 + v10, v5, type metadata accessor for FindingEstimate);
    v13 = *&v11[OBJC_IVAR____TtC11FMFindingUI26PrecisionVFXViewController_connectivityState + 16];
    v12 = *&v11[OBJC_IVAR____TtC11FMFindingUI26PrecisionVFXViewController_connectivityState + 32];
    v19[0] = *&v11[OBJC_IVAR____TtC11FMFindingUI26PrecisionVFXViewController_connectivityState];
    v19[1] = v13;
    v19[2] = v12;
    v15 = *&v11[OBJC_IVAR____TtC11FMFindingUI26PrecisionVFXViewController_connectivityState + 64];
    v14 = *&v11[OBJC_IVAR____TtC11FMFindingUI26PrecisionVFXViewController_connectivityState + 80];
    v16 = *&v11[OBJC_IVAR____TtC11FMFindingUI26PrecisionVFXViewController_connectivityState + 48];
    *(v20 + 13) = *&v11[OBJC_IVAR____TtC11FMFindingUI26PrecisionVFXViewController_connectivityState + 93];
    v19[4] = v15;
    v20[0] = v14;
    v19[3] = v16;
    sub_24A508CE4(v19, v18);
    sub_24A524D30(v5, v19);
    sub_24A517ABC(v19);

    sub_24A518A04(v5, type metadata accessor for FindingEstimate);
    sub_24A518A04(v8, type metadata accessor for FindingEstimate);
  }
}

id sub_24A518418(void *a1)
{
  v2 = type metadata accessor for FMFindingSessionState(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FMFindingViewState(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = (&v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_24A62F124();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v45 - v13;
  v15 = sub_24A62F134();
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v19 = MEMORY[0x28223BE20](v18).n128_u64[0];
  v21 = &v45 - v20;
  v22 = [a1 camera];
  sub_24A62F144();

  sub_24A518CB8(v21, v17, MEMORY[0x277D82DB0]);
  result = (*(v9 + 48))(v17, 2, v8);
  if (result)
  {
    if (result != 1)
    {
      v24 = OBJC_IVAR____TtC11FMFindingUI21FindingViewController_updateTorchPeriodicCount;
      v25 = v45;
      v26 = *(v45 + OBJC_IVAR____TtC11FMFindingUI21FindingViewController_updateTorchPeriodicCount);
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (!v27)
      {
        *(v45 + OBJC_IVAR____TtC11FMFindingUI21FindingViewController_updateTorchPeriodicCount) = v28;
        if (__ROR8__(0xEEEEEEEEEEEEEEEFLL * v28 + 0x888888888888888, 1) <= 0x888888888888888uLL)
        {
          *(v25 + v24) = 0;
          sub_24A514A50(sub_24A518A64, &unk_285DA0A80);
        }

        return sub_24A518A04(v21, MEMORY[0x277D82DB0]);
      }

      __break(1u);
LABEL_28:
      __break(1u);
      return result;
    }

    return sub_24A518A04(v21, MEMORY[0x277D82DB0]);
  }

  (*(v9 + 32))(v14, v17, v8);
  v29 = *(v45 + OBJC_IVAR____TtC11FMFindingUI21FindingViewController_session);
  v30 = OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_state;
  swift_beginAccess();
  sub_24A518CB8(v29 + v30, v4, type metadata accessor for FMFindingSessionState);
  sub_24A626F08(v4, 10, v7);
  v31 = sub_24A62715C();
  if (v31 <= 1)
  {
    if (!v31)
    {

      goto LABEL_13;
    }
  }

  else if (v31 != 2 && v31 != 3)
  {
    goto LABEL_13;
  }

  v32 = sub_24A62F634();

  if ((v32 & 1) == 0)
  {
LABEL_22:
    sub_24A518A04(v7, type metadata accessor for FMFindingViewState);
    (*(v9 + 8))(v14, v8);
    return sub_24A518A04(v21, MEMORY[0x277D82DB0]);
  }

LABEL_13:
  (*(v9 + 16))(v11, v14, v8);
  v33 = (*(v9 + 88))(v11, v8);
  if (v33 == *MEMORY[0x277D82D90] || v33 == *MEMORY[0x277D82DA0])
  {
    goto LABEL_22;
  }

  if (v33 == *MEMORY[0x277D82DA8])
  {
    v34 = [a1 lightEstimate];
    if (v34)
    {
      v35 = v34;
      result = [v34 ambientIntensity];
      v36 = v45;
      if (v37 <= 500.0)
      {
        v38 = *(v45 + OBJC_IVAR____TtC11FMFindingUI21FindingViewController_insufficientFeaturesARTrackingErrorCount);
        v27 = __OFADD__(v38, 1);
        v39 = v38 + 1;
        if (v27)
        {
          goto LABEL_28;
        }

        *(v45 + OBJC_IVAR____TtC11FMFindingUI21FindingViewController_insufficientFeaturesARTrackingErrorCount) = v39;
        if (v39 >= 2)
        {
          v40 = *(v36 + OBJC_IVAR____TtC11FMFindingUI21FindingViewController_instructionsController);
          v41 = *(v40 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_inState);
          *(v40 + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_inState) = 6;
          sub_24A5FFD04(v41);
          sub_24A514A50(sub_24A518AC4, &unk_285DA0AF8);
        }
      }
    }

    goto LABEL_22;
  }

  v42 = *MEMORY[0x277D82D98];
  v43 = v33;
  sub_24A518A04(v7, type metadata accessor for FMFindingViewState);
  v44 = *(v9 + 8);
  v44(v14, v8);
  result = sub_24A518A04(v21, MEMORY[0x277D82DB0]);
  if (v43 != v42)
  {
    return (v44)(v11, v8);
  }

  return result;
}

uint64_t sub_24A518A04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24A518A6C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_24A50E1E0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24A518ACC()
{
  v1 = *(type metadata accessor for FMFindingSession.Error(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  v5 = (v0 + v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      goto LABEL_9;
    }

    if (EnumCaseMultiPayload != 1)
    {
      goto LABEL_12;
    }

LABEL_8:
    v7 = sub_24A62E214();
    (*(*(v7 - 8) + 8))(v0 + v3, v7);
    goto LABEL_12;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      goto LABEL_8;
    case 3:
      v9 = sub_24A62E214();
      (*(*(v9 - 8) + 8))(v0 + v3, v9);
      v8 = *(v5 + *(sub_24A508FA4(&qword_27EF4F658, &unk_24A633E10) + 48));
      goto LABEL_11;
    case 4:
LABEL_9:
      v8 = *v5;
LABEL_11:

      break;
  }

LABEL_12:

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24A518CB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24A518D20()
{
  v1 = type metadata accessor for FMFindingViewState(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = (v2 + 24) & ~v2;
  v5 = (v3 + v2 + v4) & ~v2;

  v6 = v0 + v4;
  v7 = *(v1 + 20);
  v8 = sub_24A62E214();
  v9 = *(*(v8 - 8) + 8);
  v9(v6 + v7, v8);

  v10 = v6 + *(v1 + 32);
  v11 = *(v10 + 96);
  if ((v11 | 0x2000000u) >> 25 != 3)
  {
    sub_24A508BE4(*v10, *(v10 + 8), *(v10 + 16), *(v10 + 24), *(v10 + 32), *(v10 + 40), *(v10 + 48), *(v10 + 56), *(v10 + 64), *(v10 + 72), *(v10 + 80), *(v10 + 88), v11, SBYTE2(v11));
  }

  v9(v0 + v5 + *(v1 + 20), v8);

  v12 = v0 + v5 + *(v1 + 32);
  v13 = *(v12 + 96);
  if ((v13 | 0x2000000u) >> 25 != 3)
  {
    sub_24A508BE4(*v12, *(v12 + 8), *(v12 + 16), *(v12 + 24), *(v12 + 32), *(v12 + 40), *(v12 + 48), *(v12 + 56), *(v12 + 64), *(v12 + 72), *(v12 + 80), *(v12 + 88), v13, SBYTE2(v13));
  }

  return MEMORY[0x2821FE8E8](v0, v5 + v3, v2 | 7);
}

uint64_t sub_24A518F38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_24A518FA0()
{
  v1 = *(type metadata accessor for FMFindingViewState(0) - 8);
  v2 = *(v1 + 80);
  sub_24A51113C(v0 + ((v2 + 24) & ~v2), (v0 + ((*(v1 + 64) + v2 + ((v2 + 24) & ~v2)) & ~v2)));
}

uint64_t sub_24A519030(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FindingEstimate(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_24A51909C(id a1, char a2)
{
  if (a2)
  {
  }
}

uint64_t sub_24A5190B0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24A51935C;

  return sub_24A51586C(a1, v4);
}

uint64_t sub_24A519168(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24A515E5C;

  return sub_24A51586C(a1, v4);
}

uint64_t sub_24A519230(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 sub_24A5193E8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 48);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_24A519414(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 98))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_24A519470(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 98) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 98) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_24A51950C(int a1)
{
  if (a1 <= 63)
  {
    if (a1 > 7)
    {
      switch(a1)
      {
        case 8:
          return 1952867692;
        case 16:
          return 0x7468676972;
        case 32:
          return 0x646E69686562;
        default:
          return 0x6E776F6E6B6E75;
      }
    }

    else
    {
      if (a1 == 1)
      {
        return 0x6E776F6E6B6E75;
      }

      if (a1 != 2)
      {
        if (a1 == 4)
        {
          return 0x6461656861;
        }

        return 0x6E776F6E6B6E75;
      }

      return 0x746E6F7266;
    }
  }

  else if (a1 <= 511)
  {
    switch(a1)
    {
      case 64:
        return 0x42724F65766F6261;
      case 128:
        return 0x65766F6261;
      case 256:
        return 0x776F6C6562;
      default:
        return 0x6E776F6E6B6E75;
    }
  }

  else if (a1 > 2047)
  {
    if (a1 != 2048)
    {
      if (a1 == 4096)
      {
        return 0x79627261656ELL;
      }

      return 0x6E776F6E6B6E75;
    }

    return 0x65736F6C63;
  }

  else
  {
    if (a1 != 512)
    {
      if (a1 == 1024)
      {
        return 1918985582;
      }

      return 0x6E776F6E6B6E75;
    }

    return 7496038;
  }
}

BOOL sub_24A5196F4(_DWORD *a1, int *a2)
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

_DWORD *sub_24A519724@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 4) = v3 == 0;
  return result;
}

int *sub_24A519750@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 4) = v5 == 0;
  return result;
}

_DWORD *sub_24A51983C@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_24A51986C@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = sub_24A51B710(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_24A5198F8()
{
  if (*v0)
  {
    return 0x656C706F6570;
  }

  else
  {
    return 0x746C7561666564;
  }
}

uint64_t sub_24A519930@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746C7561666564 && a2 == 0xE700000000000000;
  if (v6 || (sub_24A62F634() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656C706F6570 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24A62F634();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_24A519A14(uint64_t a1)
{
  v2 = sub_24A51CA4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A519A50(uint64_t a1)
{
  v2 = sub_24A51CA4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A519A8C(void *a1, int a2)
{
  v18 = a2;
  v3 = sub_24A508FA4(&qword_27EF4F710, &qword_24A634298);
  v16 = *(v3 - 8);
  v17 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v15 - v4;
  v15 = sub_24A508FA4(&qword_27EF4F718, &qword_24A6342A0);
  v6 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v8 = &v15 - v7;
  v9 = sub_24A508FA4(&qword_27EF4F720, &qword_24A6342A8);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v15 - v11;
  sub_24A50A204(a1, a1[3]);
  sub_24A51CA4C();
  sub_24A62F774();
  v13 = (v10 + 8);
  if (v18)
  {
    v20 = 1;
    sub_24A51CAA0();
    sub_24A62F564();
    (*(v16 + 8))(v5, v17);
  }

  else
  {
    v19 = 0;
    sub_24A51CAF4();
    sub_24A62F564();
    (*(v6 + 8))(v8, v15);
  }

  return (*v13)(v12, v9);
}

unint64_t sub_24A519D48(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0xD000000000000012;
    v7 = 0xD000000000000010;
    if (a1 != 10)
    {
      v7 = 0x6C6F687365726874;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0xD000000000000012;
    v9 = 0x65766F62417369;
    if (a1 != 7)
    {
      v9 = 0x776F6C65427369;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x736944746E616C73;
    v2 = 0x616542564F466E69;
    v3 = 0x564F466E497369;
    if (a1 != 4)
    {
      v3 = 0x636165526E497369;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x676E6972616562;
    if (a1 != 1)
    {
      v4 = 0x4264696C61567369;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_24A519F04(uint64_t a1)
{
  v2 = sub_24A51CAF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A519F40(uint64_t a1)
{
  v2 = sub_24A51CAF4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A519F7C@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_24A519FB8(uint64_t a1)
{
  v2 = sub_24A51CAA0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A519FF4(uint64_t a1)
{
  v2 = sub_24A51CAA0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t _s11FMFindingUI0A4TypeO9hashValueSivg_0()
{
  v1 = *v0;
  sub_24A62F714();
  MEMORY[0x24C21B040](v1);
  return sub_24A62F754();
}

uint64_t sub_24A51A078(uint64_t a1)
{
  v2 = *v1;
  sub_24A62F714();
  MEMORY[0x24C21B040](v2);
  return sub_24A62F754();
}

uint64_t sub_24A51A0D8@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_24A51B748(a2);
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

unint64_t sub_24A51A10C()
{
  result = qword_27EF4F698;
  if (!qword_27EF4F698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF4F698);
  }

  return result;
}

uint64_t sub_24A51A160(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_24A519D48(*a1);
  v5 = v4;
  if (v3 == sub_24A519D48(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24A62F634();
  }

  return v8 & 1;
}

uint64_t sub_24A51A1E8()
{
  v1 = *v0;
  sub_24A62F714();
  sub_24A519D48(v1);
  sub_24A62EC74();

  return sub_24A62F754();
}

uint64_t sub_24A51A24C(uint64_t a1)
{
  sub_24A519D48(*v1);
  sub_24A62EC74();
}

uint64_t sub_24A51A2A0(uint64_t a1)
{
  v2 = *v1;
  sub_24A62F714();
  sub_24A519D48(v2);
  sub_24A62EC74();

  return sub_24A62F754();
}

unint64_t sub_24A51A300@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24A51BB84(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_24A51A330@<X0>(unint64_t *a1@<X8>)
{
  result = sub_24A519D48(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_24A51A378@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24A51BB84(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24A51A3AC(uint64_t a1)
{
  v2 = sub_24A51C86C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A51A3E8(uint64_t a1)
{
  v2 = sub_24A51C86C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A51A424(void *a1)
{
  v3 = v1;
  v5 = sub_24A508FA4(&qword_27EF4F6F0, &qword_24A634288);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  sub_24A50A204(a1, a1[3]);
  sub_24A51C86C();
  sub_24A62F774();
  v12 = *v3;
  v13 = *(v3 + 8);
  v11 = 0;
  sub_24A508FA4(&qword_27EF4F6F8, &qword_24A634290);
  sub_24A51C97C();
  sub_24A62F5D4();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    sub_24A62F5A4();
    LOBYTE(v12) = 2;
    sub_24A62F594();
    LOBYTE(v12) = 3;
    sub_24A62F5A4();
    LOBYTE(v12) = 4;
    sub_24A62F594();
    LOBYTE(v12) = 5;
    sub_24A62F594();
    LOBYTE(v12) = 6;
    sub_24A62F5A4();
    LOBYTE(v12) = 7;
    sub_24A62F594();
    LOBYTE(v12) = 8;
    sub_24A62F594();
    LOBYTE(v12) = 9;
    sub_24A62F594();
    LOBYTE(v12) = 10;
    sub_24A62F5A4();
    LOBYTE(v12) = *(v3 + 97);
    v11 = 11;
    sub_24A51C9F8();
    sub_24A62F5D4();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24A51A740()
{
  sub_24A508FA4(&qword_27EF50530, qword_24A636270);
  v1 = swift_allocObject();
  v2 = v1;
  *(v1 + 16) = xmmword_24A633E60;
  v3 = *v0;
  v4 = *(v0 + 8);
  v5 = MEMORY[0x277D839F8];
  v6 = MEMORY[0x277D83A80];
  *(v1 + 56) = MEMORY[0x277D839F8];
  *(v1 + 64) = v6;
  v7 = -1.0;
  if (v4)
  {
    v3 = -1.0;
  }

  *(v1 + 32) = v3;
  if (*(v0 + 40))
  {
    v7 = *(v0 + 32);
  }

  *(v1 + 96) = v5;
  *(v1 + 104) = v6;
  *(v1 + 72) = v7;
  v8 = *(v0 + 56);
  v9 = sub_24A508FEC();
  v10 = 1702195828;
  if (v8)
  {
    v11 = 1702195828;
  }

  else
  {
    v11 = 0x65736C6166;
  }

  if (v8)
  {
    v12 = 0xE400000000000000;
  }

  else
  {
    v12 = 0xE500000000000000;
  }

  v13 = MEMORY[0x277D837D0];
  v2[17] = MEMORY[0x277D837D0];
  v2[18] = v9;
  v2[14] = v11;
  v2[15] = v12;
  if (*(v0 + 57))
  {
    v14 = 0xE400000000000000;
  }

  else
  {
    v10 = 0x65736C6166;
    v14 = 0xE500000000000000;
  }

  v2[22] = v13;
  v2[23] = v9;
  v2[19] = v10;
  v2[20] = v14;

  return sub_24A62EC24();
}

uint64_t sub_24A51A858()
{
  if (*(v0 + 8))
  {
    return 0;
  }

  v2 = *v0;
  if (*(v0 + 97))
  {
    if (v2 < 0.0)
    {
      v2 = 0.0;
      if ((*(v0 + 56) & 1) == 0 && (*(v0 + 57) & 1) == 0)
      {
        v3 = *(v0 + 32);
        v4 = *(v0 + 48);
        if (v3 < -v4 && v4 + -180.0 >= v3 && v4 < v3)
        {
          if (v3 >= 180.0 - v4)
          {
            v2 = 0.0;
          }

          else
          {
            v2 = 0.0;
          }
        }
      }
    }
  }

  else if (*(v0 + 56))
  {
    if (v2 < 0.0)
    {
      v2 = 0.0;
    }
  }

  else if (v2 < 0.0)
  {
    v2 = 0.0;
  }

  return *&v2;
}

uint64_t sub_24A51AA70()
{
  if (*(v0 + 8))
  {
    return 0;
  }

  v2 = *v0;
  if (*(v0 + 97))
  {
    v3 = 3.45599309;
  }

  else
  {
    if (qword_27EF4EA90 != -1)
    {
      swift_once();
    }

    v4 = *&qword_27EF5C768;
    if (qword_27EF4EAB0 != -1)
    {
      v8 = qword_27EF5C768;
      swift_once();
      v4 = *&v8;
    }

    v3 = v4 * *&qword_27EF5C788;
  }

  v5 = (v2 - v3) / vabdd_f64(1.2192, v3);
  v6 = 1.0 - fmin(v5, 1.0);
  if (v5 < 0.0)
  {
    v7 = 1.0;
  }

  else
  {
    v7 = v6;
  }

  return *&v7;
}

uint64_t sub_24A51AB70(char a1)
{
  if (*(v1 + 8))
  {
    return 2;
  }

  v3 = *v1;
  if (*(v1 + 97) == 1)
  {
    v4 = v3 >= 2.3622;
    if (a1)
    {
      v5 = 2.267712;
    }

    else
    {
      v5 = 3.45599309;
    }
  }

  else
  {
    if (qword_27EF4EA90 != -1)
    {
      v9 = a1;
      swift_once();
      a1 = v9;
    }

    v6 = *&qword_27EF5C768;
    if (qword_27EF4EAB0 != -1)
    {
      v10 = a1;
      v11 = qword_27EF5C768;
      swift_once();
      v6 = *&v11;
      a1 = v10;
    }

    v4 = v6 * 1.25 <= v3;
    if (a1)
    {
      v7 = 1.2;
    }

    else
    {
      v7 = *&qword_27EF5C788;
    }

    v5 = v6 * v7;
  }

  if (v4)
  {
    v8 = 256;
  }

  else
  {
    v8 = 0;
  }

  if (v3 >= v5)
  {
    return v8;
  }

  else
  {
    return v8 + 1;
  }
}

uint64_t sub_24A51ACB4@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, unsigned __int8 a4@<W3>, uint64_t a5@<X8>)
{
  if ((a2 & 1) == 0)
  {
    v6 = *(v5 + 56);
    v7 = *(v5 + 57);
LABEL_6:
    v8 = 0;
    v9 = *&result;
    if ((a3 & 0x100000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  result = *v5;
  v6 = *(v5 + 56);
  v7 = *(v5 + 57);
  if ((*(v5 + 8) & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = 1;
  v9 = 0.0;
  if ((a3 & 0x100000000) != 0)
  {
LABEL_4:
    v10 = 1.79769313e308;
    goto LABEL_8;
  }

LABEL_7:
  v10 = *&a3 / 3.14159265 * -180.0;
LABEL_8:
  v11 = a4;
  v12 = *(v5 + 97);
  if (v8)
  {
    v13 = 0;
    goto LABEL_23;
  }

  v14 = *&result;
  if ((v7 & 1) == 0)
  {
    if (*(v5 + 97))
    {
      v15 = 1.8898;
      goto LABEL_22;
    }

    if (qword_27EF4EA90 != -1)
    {
      v45 = v6;
      v41 = a5;
      v43 = result;
      v31 = a3;
      v29 = v9;
      v39 = *(v5 + 97);
      v37 = v10;
      v35 = v8;
      v27 = a4;
      v33 = result;
      swift_once();
      v14 = *&v33;
      v11 = v27;
      v8 = v35;
      v10 = v37;
      v12 = v39;
      v9 = v29;
      v6 = v45;
      a3 = v31;
      a5 = v41;
      result = v43;
    }

    v16 = qword_27EF5C768;
LABEL_21:
    v15 = *&v16;
    goto LABEL_22;
  }

  if ((*(v5 + 97) & 1) == 0)
  {
    if (qword_27EF4EA98 != -1)
    {
      v44 = v6;
      v40 = a5;
      v42 = result;
      v30 = a3;
      v28 = v9;
      v38 = *(v5 + 97);
      v36 = v10;
      v34 = v8;
      v26 = a4;
      v32 = result;
      swift_once();
      v14 = *&v32;
      v11 = v26;
      v8 = v34;
      v10 = v36;
      v12 = v38;
      v9 = v28;
      v6 = v44;
      a3 = v30;
      a5 = v40;
      result = v42;
    }

    v16 = qword_27EF5C770;
    goto LABEL_21;
  }

  v15 = 1.9842;
LABEL_22:
  v17 = v14;
  v13 = v15 > v17;
LABEL_23:
  v46 = v8;
  if (v11 == 2)
  {
    v18 = 1;
  }

  else
  {
    if (v11 == 5)
    {
      v18 = *(v5 + 72);
      v19 = *(v5 + 73);
      v20 = *(v5 + 74);
      goto LABEL_29;
    }

    v18 = v11 == 4;
  }

  v19 = v11 - 3 < 2;
  v20 = v11 < 2;
LABEL_29:
  v21 = (v9 + -1.0) / 9.0;
  v22 = fmin(v21, 1.0);
  v23 = v21 < 0.0;
  v24 = 0.0;
  if (!v23)
  {
    v24 = v22;
  }

  v25 = v24 * 45.0 + (1.0 - v24) * 20.0;
  *a5 = *&result;
  if (v6)
  {
    v25 = v25 * 1.1;
  }

  *(a5 + 8) = v46;
  *(a5 + 16) = 0;
  *(a5 + 24) = 0;
  *(a5 + 32) = v10;
  *(a5 + 40) = (a3 & 0x100000000) == 0;
  *(a5 + 48) = v25;
  *(a5 + 56) = fabs(v10) <= v25;
  *(a5 + 57) = v13;
  *(a5 + 64) = v9;
  *(a5 + 72) = v18;
  *(a5 + 73) = v19;
  *(a5 + 74) = v20;
  *(a5 + 80) = 0;
  *(a5 + 88) = 0;
  *(a5 + 96) = 1;
  *(a5 + 97) = v12;
  return result;
}

uint64_t sub_24A51AF98(uint64_t a1)
{
  v2 = v1;
  if (*(v1 + 8) == 1)
  {
    sub_24A62F734();
    v3 = *(v1 + 2);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_9:
    sub_24A62F734();
    v5 = *(v1 + 3);
    if (v5)
    {
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  v7 = *v1;
  sub_24A62F734();
  if ((*&v7 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0.0;
  }

  MEMORY[0x24C21B060](*&v8);
  v3 = *(v1 + 2);
  if (!v3)
  {
    goto LABEL_9;
  }

LABEL_3:
  sub_24A62F734();
  v4 = v3;
  sub_24A62F174();

  v5 = *(v2 + 3);
  if (v5)
  {
LABEL_4:
    sub_24A62F734();
    v6 = v5;
    sub_24A62F174();

    goto LABEL_11;
  }

LABEL_10:
  sub_24A62F734();
LABEL_11:
  v9 = v2[4];
  if (v9 == 0.0)
  {
    v9 = 0.0;
  }

  MEMORY[0x24C21B060](*&v9);
  sub_24A62F734();
  v10 = v2[6];
  if (v10 == 0.0)
  {
    v10 = 0.0;
  }

  MEMORY[0x24C21B060](*&v10);
  sub_24A62F734();
  sub_24A62F734();
  v11 = v2[8];
  if (v11 == 0.0)
  {
    v11 = 0.0;
  }

  MEMORY[0x24C21B060](*&v11);
  sub_24A62F734();
  sub_24A62F734();
  sub_24A62F734();
  v12 = v2[10];
  if (v12 == 0.0)
  {
    v12 = 0.0;
  }

  MEMORY[0x24C21B060](*&v12);
  if (*(v2 + 96) == 1)
  {
    sub_24A62F734();
  }

  else
  {
    v13 = *(v2 + 11);
    sub_24A62F734();
    MEMORY[0x24C21B040](v13);
  }

  return MEMORY[0x24C21B040](*(v2 + 97));
}

uint64_t sub_24A51B15C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v2;
  v12 = *(a1 + 96);
  v3 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v3;
  v4 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v4;
  v5 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v5;
  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  v8 = *(a2 + 64);
  v9 = *(a2 + 80);
  v14 = *(a2 + 96);
  v13[4] = v8;
  v13[5] = v9;
  v13[2] = v6;
  v13[3] = v7;
  return sub_24A51B4E4(v11, v13) & 1;
}

uint64_t sub_24A51B1C8()
{
  sub_24A62F714();
  sub_24A51AF98(v1);
  return sub_24A62F754();
}

uint64_t sub_24A51B20C(uint64_t a1)
{
  sub_24A62F714();
  sub_24A51AF98(v2);
  return sub_24A62F754();
}

__n128 sub_24A51B248@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_24A51C314(a2, v7);
  if (!v2)
  {
    v5 = v7[5];
    *(a1 + 64) = v7[4];
    *(a1 + 80) = v5;
    *(a1 + 96) = v8;
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
    result = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = result;
  }

  return result;
}

unint64_t sub_24A51B2C8()
{
  result = qword_27EF4F6A0;
  if (!qword_27EF4F6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF4F6A0);
  }

  return result;
}

unint64_t sub_24A51B320()
{
  result = qword_27EF4F6A8;
  if (!qword_27EF4F6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF4F6A8);
  }

  return result;
}

unint64_t sub_24A51B378()
{
  result = qword_27EF4F6B0;
  if (!qword_27EF4F6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF4F6B0);
  }

  return result;
}

unint64_t sub_24A51B3D0()
{
  result = qword_27EF4F6B8;
  if (!qword_27EF4F6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF4F6B8);
  }

  return result;
}

unint64_t sub_24A51B428()
{
  result = qword_27EF4F6C0;
  if (!qword_27EF4F6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF4F6C0);
  }

  return result;
}

uint64_t sub_24A51B47C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24A51B4B0()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24A51B4E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v4)
  {
    if (!v5)
    {
      goto LABEL_34;
    }

    v6 = a1;
    v7 = a2;
    sub_24A50D7EC(0, &qword_27EF4F6D0, 0x277D43C60);
    v8 = v5;
    v9 = v4;
    v10 = sub_24A62F164();

    a1 = v6;
    a2 = v7;
    if ((v10 & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  else if (v5)
  {
    goto LABEL_34;
  }

  v11 = *(a1 + 24);
  v12 = *(a2 + 24);
  if (v11)
  {
    if (!v12)
    {
      goto LABEL_34;
    }

    v13 = a1;
    v14 = a2;
    sub_24A50D7EC(0, &qword_27EF4F6C8, 0x277D43C58);
    v15 = v12;
    v16 = v11;
    v17 = sub_24A62F164();

    a1 = v13;
    a2 = v14;
    if ((v17 & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  else if (v12)
  {
    goto LABEL_34;
  }

  if (*(a1 + 32) == *(a2 + 32) && ((*(a1 + 40) ^ *(a2 + 40)) & 1) == 0 && *(a1 + 48) == *(a2 + 48) && ((*(a1 + 56) ^ *(a2 + 56)) & 1) == 0 && ((*(a1 + 57) ^ *(a2 + 57)) & 1) == 0 && *(a1 + 64) == *(a2 + 64) && ((*(a1 + 72) ^ *(a2 + 72)) & 1) == 0 && ((*(a1 + 73) ^ *(a2 + 73)) & 1) == 0 && ((*(a1 + 74) ^ *(a2 + 74)) & 1) == 0 && *(a1 + 80) == *(a2 + 80))
  {
    v18 = *(a2 + 96);
    if (*(a1 + 96))
    {
      if (!*(a2 + 96))
      {
        return v18 & 1;
      }
    }

    else
    {
      if (*(a1 + 88) != *(a2 + 88))
      {
        v18 = 1;
      }

      if (v18)
      {
        goto LABEL_34;
      }
    }

    v18 = *(a1 + 97) ^ *(a2 + 97) ^ 1;
    return v18 & 1;
  }

LABEL_34:
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_24A51B710(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_24A51B748(void *a1)
{
  v24 = sub_24A508FA4(&qword_27EF4F740, &qword_24A6342B0);
  v22 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v3 = v20 - v2;
  v4 = sub_24A508FA4(&qword_27EF4F748, &qword_24A6342B8);
  v23 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = v20 - v5;
  v7 = sub_24A508FA4(&qword_27EF4F750, &unk_24A6342C0);
  v25 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v20 - v8;
  sub_24A50A204(a1, a1[3]);
  sub_24A51CA4C();
  v10 = v26;
  sub_24A62F764();
  if (v10)
  {
    return sub_24A508C54(a1);
  }

  v21 = v4;
  v26 = a1;
  v12 = v23;
  v11 = v24;
  v13 = v9;
  v14 = sub_24A62F554();
  if (*(v14 + 16) != 1)
  {
    v16 = sub_24A62F3C4();
    swift_allocError();
    v18 = v17;
    sub_24A508FA4(&qword_27EF4F758, &qword_24A638F00);
    *v18 = &type metadata for Threshold;
    sub_24A62F4D4();
    sub_24A62F3B4();
    (*(*(v16 - 8) + 104))(v18, *MEMORY[0x277D84160], v16);
    swift_willThrow();
    (*(v25 + 8))(v13, v7);
    swift_unknownObjectRelease();
    a1 = v26;
    return sub_24A508C54(a1);
  }

  v20[1] = v14;
  v27 = *(v14 + 32);
  if (v27)
  {
    v29 = 1;
    sub_24A51CAA0();
    sub_24A62F4C4();
    v15 = v25;
    (*(v22 + 8))(v3, v11);
  }

  else
  {
    v28 = 0;
    sub_24A51CAF4();
    sub_24A62F4C4();
    v15 = v25;
    (*(v12 + 8))(v6, v21);
  }

  (*(v15 + 8))(v9, v7);
  swift_unknownObjectRelease();
  sub_24A508C54(v26);
  return v27;
}

unint64_t sub_24A51BB84(uint64_t a1, uint64_t a2)
{
  v2 = sub_24A62F4B4();

  if (v2 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v2;
  }
}

double sub_24A51BBD0@<D0>(double a1@<X0>, char a2@<W1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  if (a2)
  {
    if (*(a5 + 16) == 1)
    {
      v12 = 0.0;
      v13 = 1;
    }

    else
    {
      v12 = *a5;
      v13 = *(a5 + 8);
    }
  }

  else
  {
    v12 = a1;
    v13 = 0;
  }

  v14 = *(a5 + 56);
  v15 = *(a5 + 57);
  v16 = a3;
  v17 = *(a5 + 74);
  v71 = v13;
  if (a3)
  {
    v18 = *(a5 + 16);
    if (a4)
    {
      goto LABEL_8;
    }

LABEL_17:
    if (v18 == 1)
    {
      v19 = 0;
      if (v13)
      {
        v70 = 1;
        v21 = v12;
LABEL_25:
        sub_24A51C2AC(a5);
        v23 = 0;
        v24 = 0;
        v25 = 0;
        v26 = 0;
LABEL_72:
        v27 = 0.0;
        v28 = 1.79769313e308;
        v29 = 0.0;
        goto LABEL_73;
      }

      v21 = v12;
      v30 = v12;
      v70 = 1;
      goto LABEL_34;
    }

    v70 = v14;
    v19 = *(a5 + 24);
    v22 = v19;
    v13 = v71;
    if (v16)
    {
      goto LABEL_21;
    }

LABEL_24:
    v21 = v12;
    if (v13)
    {
      goto LABEL_25;
    }

    v30 = v12;
    if ((v15 & 1) == 0)
    {
      if (a6)
      {
        v31 = a4;
        v32 = a3;
        v33 = 1.88976;
LABEL_71:
        sub_24A51C2AC(a5);

        v24 = 0;
        v25 = 0;
        v26 = 0;
        v23 = v33 >= v30;
        goto LABEL_72;
      }

      v43 = a6;
      v60 = qword_27EF4EA90;
      v32 = a3;
      v31 = a4;
      if (v60 != -1)
      {
        swift_once();
      }

      v33 = *&qword_27EF5C768;
      goto LABEL_70;
    }

LABEL_34:
    if (a6)
    {
      v31 = a4;
      v32 = a3;
      v33 = 1.984248;
      goto LABEL_71;
    }

    v43 = a6;
    v44 = qword_27EF4EA98;
    v32 = a3;
    v31 = a4;
    if (v44 != -1)
    {
      swift_once();
    }

    v33 = *&qword_27EF5C770;
LABEL_70:
    a6 = v43;
    v21 = v12;
    goto LABEL_71;
  }

  v16 = *(a5 + 16);
  if (v16 == 1)
  {
    v16 = 0;
    v18 = *(a5 + 16);
    if (!a4)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v20 = v16;
    v13 = v71;
    v18 = *(a5 + 16);
    if (!a4)
    {
      goto LABEL_17;
    }
  }

LABEL_8:
  if (v18 != 1)
  {
    v70 = v14;
    v19 = a4;
    if (v16)
    {
      goto LABEL_21;
    }

    goto LABEL_24;
  }

  v17 = 1;
  v15 = 1;
  v70 = 1;
  v19 = a4;
  if (!v16)
  {
    goto LABEL_24;
  }

LABEL_21:
  if (!v19)
  {
    goto LABEL_24;
  }

  if (v13)
  {
    sub_24A51C2AC(a5);
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0.0;
    v28 = 1.79769313e308;
    v29 = 0.0;
    v21 = v12;
    goto LABEL_73;
  }

  v27 = v12;
  v69 = a6;
  if (a6)
  {
    v34 = qword_27EF4EAB8;
    v35 = a3;
    v36 = a4;
    v37 = v16;
    v38 = v19;
    v39 = 2.5;
    if (v34 != -1)
    {
      swift_once();
    }

    v40 = &qword_27EF5C790;
    v41 = 1.9842;
    v42 = 1.8898;
  }

  else
  {
    v45 = qword_27EF4EA90;
    v46 = a3;
    v47 = a4;
    v48 = v16;
    v49 = v19;
    if (v45 != -1)
    {
      swift_once();
    }

    v50 = *&qword_27EF5C768;
    if (qword_27EF4EA98 != -1)
    {
      swift_once();
    }

    v51 = *&qword_27EF5C770;
    if (qword_27EF4EAA0 != -1)
    {
      swift_once();
    }

    v42 = v50;
    v41 = v51;
    v39 = *&qword_27EF5C778;
    if (qword_27EF4EAA8 != -1)
    {
      swift_once();
    }

    v40 = &qword_27EF5C780;
  }

  v52 = *v40;
  v53 = calculateBearingAngleHorizontalDistanceAndVerticalDistance();
  v68 = v54;
  v55 = *&v54;
  if (v27 >= *(&v53 + 1))
  {
    v27 = *(&v53 + 1);
  }

  if (v15)
  {
    v23 = v27 < v41;
  }

  else
  {
    v23 = v27 < v42;
  }

  v29 = *&v54;
  if ([v16 verticalState] != 1)
  {
    if ([v16 verticalState] == 2)
    {
      v29 = v55;
    }

    else
    {
      v29 = 0.0;
    }
  }

  v56 = [v16 verticalState];
  v57 = fabsf(v55);
  if (!v56)
  {
    v57 = 0.0;
  }

  v58 = v57 < v39;
  if (v17)
  {
    v58 = v57 < v52;
  }

  if (v58)
  {

    sub_24A51C2AC(a5);
    v24 = 0;
    if ((v68 & 0x100000000) == 0)
    {
      v28 = 1.79769313e308;
      v25 = 0;
      v26 = 0;
      a6 = v69;
      v21 = v12;
      goto LABEL_73;
    }

    v25 = 0;
    v26 = 0;
    a6 = v69;
    v21 = v12;
  }

  else
  {
    v59 = [v16 verticalState];

    sub_24A51C2AC(a5);
    if (v59 == 2)
    {
      v26 = v55 >= 0.0;
      v25 = v55 < 0.0;
      a6 = v69;
      v21 = v12;
      if ((v68 & 0x100000000) == 0)
      {
        v24 = 0;
        v28 = 1.79769313e308;
        goto LABEL_73;
      }
    }

    else
    {
      v25 = 1;
      a6 = v69;
      v21 = v12;
      if ((v68 & 0x100000000) == 0)
      {
        v24 = 0;
        v28 = 1.79769313e308;
        v26 = 1;
        goto LABEL_73;
      }

      v26 = 1;
    }
  }

  v28 = v67 / 3.14159265 * -180.0;
  v24 = 1;
LABEL_73:
  v61 = (v27 + -1.0) / 9.0;
  v62 = fmin(v61, 1.0);
  v63 = v61 < 0.0;
  v64 = 0.0;
  if (!v63)
  {
    v64 = v62;
  }

  v65 = v64 * 45.0 + (1.0 - v64) * 20.0;
  *a7 = v21;
  if (v70)
  {
    v65 = v65 * 1.1;
  }

  *(a7 + 8) = v71 & 1;
  *(a7 + 16) = v16;
  *(a7 + 24) = v19;
  *(a7 + 32) = v28;
  *(a7 + 40) = v24;
  *(a7 + 48) = v65;
  *(a7 + 56) = fabs(v28) <= v65;
  *(a7 + 57) = v23;
  *(a7 + 64) = v27;
  *(a7 + 72) = v26;
  *(a7 + 73) = v25;
  *(a7 + 74) = !v26 && !v25;
  result = v29;
  *(a7 + 80) = v29;
  *(a7 + 88) = 0;
  *(a7 + 96) = 1;
  *(a7 + 97) = a6 & 1;
  return result;
}

uint64_t sub_24A51C2AC(uint64_t a1)
{
  v2 = sub_24A508FA4(&qword_27EF4F650, &unk_24A633E00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24A51C314@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_24A508FA4(&qword_27EF4F6D8, &qword_24A634280);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v32 - v7;
  sub_24A50A204(a1, a1[3]);
  sub_24A51C86C();
  sub_24A62F764();
  if (v2)
  {
    return sub_24A508C54(a1);
  }

  LOBYTE(v47) = 0;
  sub_24A62F514();
  v10 = v9;
  v67 = 0;
  LOBYTE(v47) = 1;
  sub_24A62F514();
  v12 = v11;
  LOBYTE(v47) = 2;
  v13 = sub_24A62F504();
  LOBYTE(v47) = 3;
  sub_24A62F514();
  v15 = v14;
  LOBYTE(v47) = 4;
  v16 = sub_24A62F504();
  LOBYTE(v47) = 5;
  v39 = sub_24A62F504();
  LOBYTE(v47) = 6;
  sub_24A62F514();
  v18 = v17;
  LOBYTE(v47) = 7;
  v38 = sub_24A62F504();
  LOBYTE(v47) = 8;
  v37 = sub_24A62F504();
  LOBYTE(v47) = 9;
  v36 = sub_24A62F504();
  LOBYTE(v47) = 10;
  sub_24A62F514();
  v20 = v19;
  v66 = 1;
  v64 = 11;
  sub_24A51C8C0();
  sub_24A62F544();
  v35 = v13 & 1;
  v16 &= 1u;
  v21 = v39 & 1;
  v34 = v39 & 1;
  v33 = v38 & 1;
  v37 &= 1u;
  v22 = v36 & 1;
  v38 = v36 & 1;
  (*(v6 + 8))(v8, v5);
  *&v40 = v10;
  v39 = v67;
  BYTE8(v40) = v67;
  v41 = 0uLL;
  *&v42 = v12;
  v23 = v35;
  BYTE8(v42) = v35;
  *&v43 = v15;
  BYTE8(v43) = v16;
  BYTE9(v43) = v21;
  *&v44 = v18;
  v24 = v33;
  BYTE8(v44) = v33;
  v25 = v37;
  BYTE9(v44) = v37;
  BYTE10(v44) = v22;
  v45 = v20;
  v26 = v66;
  LOBYTE(v46) = v66;
  HIBYTE(v46) = v65;
  v27 = v65;
  sub_24A51C914(&v40, &v47);
  sub_24A508C54(a1);
  v47 = v10;
  v48 = v39;
  v49 = 0;
  v50 = 0;
  v51 = v12;
  v52 = v23;
  v53 = v15;
  v54 = v16;
  v55 = v34;
  v56 = v18;
  v57 = v24;
  v58 = v25;
  v59 = v38;
  v60 = v20;
  v61 = 0;
  v62 = v26;
  v63 = v27;
  result = sub_24A51C94C(&v47);
  v29 = v45;
  *(a2 + 64) = v44;
  *(a2 + 80) = v29;
  *(a2 + 96) = v46;
  v30 = v41;
  *a2 = v40;
  *(a2 + 16) = v30;
  v31 = v43;
  *(a2 + 32) = v42;
  *(a2 + 48) = v31;
  return result;
}

unint64_t sub_24A51C86C()
{
  result = qword_27EF4F6E0;
  if (!qword_27EF4F6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF4F6E0);
  }

  return result;
}

unint64_t sub_24A51C8C0()
{
  result = qword_27EF4F6E8;
  if (!qword_27EF4F6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF4F6E8);
  }

  return result;
}

unint64_t sub_24A51C97C()
{
  result = qword_27EF4F700;
  if (!qword_27EF4F700)
  {
    sub_24A50E1E0(&qword_27EF4F6F8, &qword_24A634290);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF4F700);
  }

  return result;
}

unint64_t sub_24A51C9F8()
{
  result = qword_27EF4F708;
  if (!qword_27EF4F708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF4F708);
  }

  return result;
}

unint64_t sub_24A51CA4C()
{
  result = qword_27EF4F728;
  if (!qword_27EF4F728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF4F728);
  }

  return result;
}

unint64_t sub_24A51CAA0()
{
  result = qword_27EF4F730;
  if (!qword_27EF4F730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF4F730);
  }

  return result;
}

unint64_t sub_24A51CAF4()
{
  result = qword_27EF4F738;
  if (!qword_27EF4F738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF4F738);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FindingModel(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}