uint64_t sub_265898320()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_265898358@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2658B6948();
  *a1 = result;
  return result;
}

uint64_t sub_2658983C4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2658983FC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800286F0, &qword_2658B94F0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800286E8, &qword_2658B94E8);
  sub_2658AFAD0(&qword_280028720, &qword_2800286E8, &qword_2658B94E8, MEMORY[0x277CDE5A0]);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2658984D0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_265898508@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2658B6988();
  *a1 = result;
  return result;
}

uint64_t sub_265898568(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800287D0, &qword_2658B9608);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2658985D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800287D0, &qword_2658B9608);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_265898650()
{
  MEMORY[0x266763050](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2658986B4@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x266762280]();
  *a1 = result;
  return result;
}

uint64_t sub_26589870C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2658987A4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2658987DC()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

void sub_26589897C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void unknownWiredDeviceStatusChanged(uint64_t a1, void *a2)
{
  [a2 reloadSpecifiers];
  v8 = [a2 audioSettingsManager];
  v3 = [v8 getPreferenceFor:*MEMORY[0x277CEFAB0]];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v5 = [a2 audioSettingsManager];
    v6 = [v5 getPreferenceFor:*MEMORY[0x277CEFAE0]];
    v7 = [v6 count];

    if (v7)
    {
      return;
    }

    v8 = [MEMORY[0x277CC1E80] defaultWorkspace];
    v4 = [MEMORY[0x277CBEBC0] URLWithString:@"prefs:root=Sounds&path=HEADPHONE_LEVEL_LIMIT_SETTING"];
    [v8 openSensitiveURL:v4 withOptions:0];
  }
}

void sub_26589FE4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2658A265C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 104));
  _Unwind_Resume(a1);
}

id _SHSCTClient(uint64_t a1)
{
  if (_SHSCTClient_onceToken != -1)
  {
    _SHSCTClient_cold_1();
  }

  v2 = _SHSCTClient_coreTelephonyClient;

  return v2;
}

id SHS_BundleForSoundsAndHapticsSettingsFramework(uint64_t a1)
{
  if (SHS_BundleForSoundsAndHapticsSettingsFramework_onceToken != -1)
  {
    SHS_BundleForSoundsAndHapticsSettingsFramework_cold_1();
  }

  v2 = SHS_BundleForSoundsAndHapticsSettingsFramework__soundsAndHapticsSettingsFrameworkBundle;

  return v2;
}

id SHS_LocalizedStringForSounds(void *a1)
{
  v1 = a1;
  v2 = SHS_BundleForSoundsAndHapticsSettingsFramework(v1);
  v3 = [v2 localizedStringForKey:v1 value:0 table:@"Sounds"];

  return v3;
}

id SHSLogForCategory(unint64_t a1)
{
  if (a1 >= 2)
  {
    SHSLogForCategory_cold_2();
  }

  if (SHSLogForCategory_loggingToken != -1)
  {
    SHSLogForCategory_cold_1();
  }

  v2 = SHSLogForCategory_logObjects[a1];

  return v2;
}

uint64_t __SHSLogForCategory_block_invoke()
{
  v0 = os_log_create("com.apple.settings.SoundsAndHaptics", "Base");
  v1 = SHSLogForCategory_logObjects[0];
  SHSLogForCategory_logObjects[0] = v0;

  qword_280B195C8 = os_log_create("com.apple.settings.SoundsAndHaptics", "Volume");

  return MEMORY[0x2821F96F8]();
}

id sub_2658ABD5C()
{
  result = [objc_allocWithZone(type metadata accessor for HeadphoneAudioNotificationModel(0)) init];
  static HeadphoneAudioNotificationModel.shared = result;
  return result;
}

uint64_t *HeadphoneAudioNotificationModel.shared.unsafeMutableAddressor()
{
  if (qword_280028508 != -1)
  {
    swift_once();
  }

  return &static HeadphoneAudioNotificationModel.shared;
}

id static HeadphoneAudioNotificationModel.shared.getter()
{
  if (qword_280028508 != -1)
  {
    swift_once();
  }

  v1 = static HeadphoneAudioNotificationModel.shared;

  return v1;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

Swift::Void __swiftcall HeadphoneAudioNotificationModel.setData(_:)(Swift::OpaquePointer a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280028520, &qword_2658B92E0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v43 - v4;
  v6 = sub_2658B6598();
  v63 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2658B65A8();
  v10 = *(v9 - 8);
  v60 = v9;
  v61 = v10;
  v11 = MEMORY[0x28223BE20](v9);
  v59 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v58 = &v43 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280028528, &qword_2658B8FD0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v43 - v15;
  v17 = sub_2658B65D8();
  MEMORY[0x28223BE20](v17);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a1._rawValue + 2);
  if (v21)
  {
    v56 = v8;
    v57 = v5;
    v53 = v6;
    v54 = v3;
    v55 = v2;
    v22 = a1._rawValue + 32;
    v23 = (v18 + 56);
    v24 = (v18 + 48);
    v25 = (v18 + 32);
    v26 = (v18 + 8);
    ++v61;
    v51 = (v18 + 16);
    v52 = (v63 + 1);
    v63 = MEMORY[0x277D84F90];
    while (1)
    {
      v27 = *v22;
      if (!*(*v22 + 16))
      {
        goto LABEL_4;
      }

      v28 = sub_2658ACABC(1702125924, 0xE400000000000000);
      if ((v29 & 1) == 0)
      {
        break;
      }

      sub_2658ACBE8(*(v27 + 56) + 32 * v28, &v66);
      v30 = swift_dynamicCast();
      (*v23)(v16, v30 ^ 1u, 1, v17);
      if ((*v24)(v16, 1, v17) == 1)
      {

        goto LABEL_5;
      }

      (*v25)(v20, v16, v17);
      if (!*(v27 + 16))
      {
        goto LABEL_22;
      }

      v31 = sub_2658ACABC(0x746E756F63, 0xE500000000000000);
      if ((v32 & 1) == 0)
      {
        goto LABEL_22;
      }

      sub_2658ACBE8(*(v27 + 56) + 32 * v31, &v66);
      if ((swift_dynamicCast() & 1) == 0)
      {
        (*v26)(v20, v17);

        goto LABEL_6;
      }

      if (*(v27 + 16) && (v50 = v64, v33 = sub_2658ACABC(1668506980, 0xE400000000000000), (v34 & 1) != 0))
      {
        sub_2658ACBE8(*(v27 + 56) + 32 * v33, &v66);

        if (swift_dynamicCast())
        {
          v49 = v64;
          v48 = v65;
          MEMORY[0x266761DD0]();
          sub_2658B6588();
          sub_2658B6578();
          (*v52)(v56, v53);
          v47 = *v61;
          v47(v59, v60);
          sub_2658ACC44(&qword_280028540, MEMORY[0x277CC9428], MEMORY[0x277CC9420]);
          sub_2658B65C8();
          v47(v58, v60);
          v47 = v67;
          v64 = v66;
          v65 = v67;

          MEMORY[0x266762740](58, 0xE100000000000000);

          v47 = v64;
          v46 = v65;
          v45 = v55[12];
          v35 = v57;
          v44 = &v57[v55[16]];
          v43 = &v57[v55[20]];
          (*v51)(v57, v20, v17);
          *(v35 + v45) = v50;
          v36 = v44;
          v37 = v46;
          *v44 = v47;
          *(v36 + 1) = v37;
          v38 = v43;
          v39 = v48;
          *v43 = v49;
          *(v38 + 1) = v39;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v63 = sub_2658ACC8C(0, v63[2] + 1, 1, v63);
          }

          v41 = v63[2];
          v40 = v63[3];
          v50 = (v41 + 1);
          if (v41 >= v40 >> 1)
          {
            v63 = sub_2658ACC8C((v40 > 1), v41 + 1, 1, v63);
          }

          (*v26)(v20, v17);
          v42 = v63;
          v63[2] = v50;
          sub_2658ACE7C(v57, v42 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v41);
          goto LABEL_6;
        }
      }

      else
      {
LABEL_22:
      }

      (*v26)(v20, v17);
LABEL_6:
      v22 += 8;
      if (!--v21)
      {
        goto LABEL_26;
      }
    }

LABEL_4:
    (*v23)(v16, 1, 1, v17);
LABEL_5:
    sub_2658ACB34(v16);
    goto LABEL_6;
  }

  v63 = MEMORY[0x277D84F90];
LABEL_26:
  swift_getKeyPath();
  swift_getKeyPath();
  v66 = v63;
  v62;
  sub_2658B6878();
  type metadata accessor for HeadphoneAudioNotificationModel(0);
  sub_2658ACC44(&qword_280028538, type metadata accessor for HeadphoneAudioNotificationModel, &protocol conformance descriptor for HeadphoneAudioNotificationModel);
  sub_2658B6838();
  sub_2658B6848();
}

uint64_t sub_2658AC840()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2658B6868();

  return v1;
}

uint64_t sub_2658AC8B4@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2658B6868();

  *a2 = v4;
  return result;
}

uint64_t sub_2658AC934(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_2658B6878();
}

id HeadphoneAudioNotificationModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HeadphoneAudioNotificationModel(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2658ACA5C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for HeadphoneAudioNotificationModel(0);
  result = sub_2658B6838();
  *a2 = result;
  return result;
}

unint64_t sub_2658ACABC(uint64_t a1, uint64_t a2)
{
  sub_2658B6F48();
  sub_2658B6E58();
  v4 = sub_2658B6F68();

  return sub_2658AD040(a1, a2, v4);
}

uint64_t sub_2658ACB34(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280028528, &qword_2658B8FD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for HeadphoneAudioNotificationModel(uint64_t a1)
{
  result = qword_280028548;
  if (!qword_280028548)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2658ACBE8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2658ACC44(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_2658ACC8C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280028570, &unk_2658B90B0);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280028520, &qword_2658B92E0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280028520, &qword_2658B92E0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_2658ACE7C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280028520, &qword_2658B92E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2658ACF00(uint64_t a1)
{
  sub_2658ACF90(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_2658ACF90(uint64_t a1)
{
  if (!qword_280028558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280028518, &unk_2658B8FC0);
    v1 = sub_2658B6888();
    if (!v2)
    {
      atomic_store(v1, &qword_280028558);
    }
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_2658AD040(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_2658B6F28())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t static HeadphoneNotificationChartFactory.create()()
{
  if (qword_280028508 != -1)
  {
    swift_once();
  }

  v0 = static HeadphoneAudioNotificationModel.shared;
  type metadata accessor for HeadphoneAudioNotificationModel(0);
  sub_2658AF0E8(&qword_280028538, type metadata accessor for HeadphoneAudioNotificationModel, &protocol conformance descriptor for HeadphoneAudioNotificationModel);
  v1 = v0;
  sub_2658B68C8();
  v2 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280028578, &unk_2658B90D0));
  return sub_2658B6A58();
}

id HeadphoneNotificationChartFactory.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HeadphoneNotificationChartFactory.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HeadphoneNotificationChartFactory();
  return objc_msgSendSuper2(&v2, sel_init);
}

id HeadphoneNotificationChartFactory.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HeadphoneNotificationChartFactory();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2658AD3DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2658AD424(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_2658AD48C@<Q0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v45 = a1;
  v52 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280028580, &qword_2658B91A0);
  v47 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = v43 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280028588, &qword_2658B91A8);
  v9 = *(v8 - 8);
  v48 = v8;
  v49 = v9;
  MEMORY[0x28223BE20](v8);
  v11 = v43 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280028590, &qword_2658B91B0);
  v13 = *(v12 - 8);
  v50 = v12;
  v51 = v13;
  MEMORY[0x28223BE20](v12);
  v46 = v43 - v14;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2658B6868();

  v59 = v55;
  v43[4] = swift_getKeyPath();
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  v44 = a2;
  v43[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280028518, &unk_2658B8FC0);
  v43[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280028598, &qword_2658B9228);
  v43[1] = sub_2658AFAD0(&qword_2800285A0, &qword_280028518, &unk_2658B8FC0, MEMORY[0x277D83980]);
  v43[0] = sub_2658AF0E8(&qword_2800285A8, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800285B0, &qword_2658B9230);
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800285B8, &qword_2658B9238);
  v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800285C0, &qword_2658B9240);
  v55 = sub_2658B6808();
  v56 = MEMORY[0x277CBB400];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v20 = sub_2658AEFA4();
  v21 = MEMORY[0x277D837D0];
  v55 = v18;
  v56 = MEMORY[0x277D837D0];
  v57 = OpaqueTypeConformance2;
  v58 = v20;
  v22 = swift_getOpaqueTypeConformance2();
  v55 = v17;
  v56 = v21;
  v57 = v22;
  v58 = v20;
  v23 = swift_getOpaqueTypeConformance2();
  v55 = v16;
  v56 = MEMORY[0x277CE0BD8];
  v57 = v23;
  v58 = MEMORY[0x277CE0BC8];
  swift_getOpaqueTypeConformance2();
  sub_2658B67E8();
  v24 = sub_2658AFAD0(&qword_2800285D0, &qword_280028580, &qword_2658B91A0, MEMORY[0x277CBB3F8]);
  sub_2658B6B68();
  (*(v47 + 8))(v7, v5);
  v53 = v45;
  v54 = v44;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800285D8, &qword_2658B9248);
  v55 = v5;
  v56 = v24;
  v26 = swift_getOpaqueTypeConformance2();
  v27 = sub_2658AFAD0(&qword_2800285E0, &qword_2800285D8, &qword_2658B9248, MEMORY[0x277CBB460]);
  v28 = v46;
  v29 = v48;
  sub_2658B6B58();
  (*(v49 + 8))(v11, v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800285E8, &qword_2658B9250);
  v55 = v29;
  v56 = v25;
  v57 = v26;
  v58 = v27;
  swift_getOpaqueTypeConformance2();
  sub_2658AF000();
  v30 = v52;
  v31 = v50;
  sub_2658B6B78();
  (*(v51 + 8))(v28, v31);
  v32 = sub_2658B6C38();
  KeyPath = swift_getKeyPath();
  v34 = (v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280028610, &qword_2658B9290) + 36));
  *v34 = KeyPath;
  v34[1] = v32;
  v35 = sub_2658B6C78();
  LOBYTE(KeyPath) = sub_2658B6AA8();
  v36 = v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280028618, &qword_2658B9298) + 36);
  *v36 = v35;
  *(v36 + 8) = KeyPath;
  LOBYTE(v35) = sub_2658B6AA8();
  v37 = v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280028620, &qword_2658B92A0) + 36);
  *v37 = v35;
  *(v37 + 8) = xmmword_2658B90C0;
  __asm { FMOV            V0.2D, #9.0 }

  *(v37 + 24) = result;
  *(v37 + 40) = 0;
  return result;
}

uint64_t sub_2658ADB64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v71 = a2;
  v72 = a3;
  v56 = a1;
  v74 = a4;
  v75 = sub_2658B6798();
  v73 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v70 = v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2658B6A08();
  v68 = *(v5 - 8);
  v69 = v5;
  MEMORY[0x28223BE20](v5);
  v66 = v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280028660, &qword_2658B92D0);
  MEMORY[0x28223BE20](v7 - 8);
  v60 = v53 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280028638, &qword_2658B92B8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v53 - v10;
  v12 = sub_2658B6648();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280028668, &qword_2658B92D8);
  MEMORY[0x28223BE20](v16 - 8);
  v53[1] = v53 - v17;
  v58 = sub_2658B6808();
  v59 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v19 = v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800285C0, &qword_2658B9240);
  v62 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v54 = v53 - v20;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800285B8, &qword_2658B9238);
  v64 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v55 = v53 - v21;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800285B0, &qword_2658B9230);
  v67 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v57 = v53 - v22;
  sub_2658B69F8();
  (*(v13 + 104))(v15, *MEMORY[0x277CC9998], v12);
  v23 = sub_2658B6658();
  (*(*(v23 - 8) + 56))(v11, 1, 1, v23);
  v24 = v56;
  sub_2658B6738();

  sub_2658AF3B4(v11);
  (*(v13 + 8))(v15, v12);
  sub_2658B69F8();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280028520, &qword_2658B92E0);
  v79 = *(v24 + v25[12]);
  sub_2658B6748();

  sub_2658B65D8();
  sub_2658B67F8();
  v27 = v68;
  v26 = v69;
  v28 = v66;
  (*(v68 + 104))(v66, *MEMORY[0x277CE0118], v69);
  v29 = MEMORY[0x277CBB400];
  v30 = v54;
  v31 = v58;
  sub_2658B66B8();
  (*(v27 + 8))(v28, v26);
  (*(v59 + 8))(v19, v31);
  v32 = v24;
  v33 = (v24 + v25[20]);
  v35 = *v33;
  v34 = v33[1];
  v79 = v35;
  v80 = v34;
  v83 = v31;
  v84 = v29;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v37 = sub_2658AEFA4();
  v38 = MEMORY[0x277D837D0];
  v39 = v55;
  v40 = v61;
  sub_2658B66D8();
  (*(v62 + 8))(v30, v40);
  v41 = (v32 + v25[16]);
  v42 = v32;
  v44 = *v41;
  v43 = v41[1];
  v83 = v44;
  v84 = v43;
  v79 = v40;
  v80 = v38;
  v81 = OpaqueTypeConformance2;
  v82 = v37;
  v45 = swift_getOpaqueTypeConformance2();
  v46 = v57;
  v47 = v63;
  sub_2658B66C8();
  v48 = v39;
  v49 = v47;
  (*(v64 + 8))(v48, v47);
  v50 = v70;
  sub_2658B6788();
  v76 = v42;
  v77 = v71;
  v78 = v72;
  sub_2658B6D78();
  v79 = v49;
  v80 = v38;
  v81 = v45;
  v82 = v37;
  swift_getOpaqueTypeConformance2();
  v51 = v65;
  sub_2658B66A8();
  (*(v73 + 8))(v50, v75);
  return (*(v67 + 8))(v46, v51);
}

uint64_t sub_2658AE4BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2658B6618();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280028670, &qword_2658B92E8);
  MEMORY[0x28223BE20](v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280028520, &qword_2658B92E0);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = v29 - v8;
  sub_2658AF67C(a1, v29 - v8);
  v10 = *&v9[*(v7 + 56)];

  v29[3] = v10;
  sub_2658B65F8();
  sub_2658AF6EC();
  sub_2658B6518();
  sub_2658AFAD0(&qword_280028680, &qword_280028670, &qword_2658B92E8, MEMORY[0x277CC8CE8]);
  v11 = sub_2658B6B28();
  v13 = v12;
  v15 = v14;
  v16 = sub_2658B65D8();
  (*(*(v16 - 8) + 8))(v9, v16);
  v17 = [objc_opt_self() tertiaryLabelColor];
  sub_2658B6C98();
  v18 = sub_2658B6B08();
  v20 = v19;
  LOBYTE(v7) = v21;

  sub_2658AF740(v11, v13, v15 & 1);

  sub_2658B6AE8();
  v22 = sub_2658B6B18();
  v24 = v23;
  LOBYTE(v9) = v25;
  v27 = v26;

  sub_2658AF740(v18, v20, v7 & 1);

  *a2 = v22;
  *(a2 + 8) = v24;
  *(a2 + 16) = v9 & 1;
  *(a2 + 24) = v27;
  return result;
}

uint64_t sub_2658AE7A8(uint64_t a1, void *a2)
{
  v4 = sub_2658B6768();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_2658B66F8();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280028638, &qword_2658B92B8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v20 - v7;
  v9 = sub_2658B6648();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2658B6718();
  MEMORY[0x28223BE20](v13 - 8);
  (*(v10 + 104))(v12, *MEMORY[0x277CC9998], v9);
  v14 = sub_2658B6658();
  (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  sub_2658B6708();
  sub_2658AF3B4(v8);
  (*(v10 + 8))(v12, v9);
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  v16 = a2;
  sub_2658B66E8();
  sub_2658B6758();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280028640, &qword_2658B92C0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280028648, &qword_2658B92C8);
  v18 = sub_2658AFAD0(&qword_280028650, &qword_280028648, &qword_2658B92C8, MEMORY[0x277CBB338]);
  v20[0] = v17;
  v20[1] = v18;
  swift_getOpaqueTypeConformance2();
  return sub_2658B6828();
}

uint64_t sub_2658AEB14()
{
  v0 = sub_2658B67B8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_2658B67D8();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280028648, &qword_2658B92C8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v7 - v4;
  v7[1] = sub_2658AF424();
  sub_2658B67C8();
  sub_2658B67A8();
  sub_2658AF61C();
  sub_2658B6728();
  sub_2658B6AE8();
  sub_2658B6AC8();
  sub_2658B6AD8();

  sub_2658AFAD0(&qword_280028650, &qword_280028648, &qword_2658B92C8, MEMORY[0x277CBB338]);
  sub_2658B6818();

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_2658AED68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2658B69D8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2658B6D68();
  v10 = v9;
  v11 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800285E8, &qword_2658B9250) + 36);
  sub_2658B6D38();
  v12 = [objc_opt_self() separatorColor];
  v13 = sub_2658B6C98();
  KeyPath = swift_getKeyPath();
  v15 = (v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280028628, &qword_2658B92A8) + 36));
  *v15 = KeyPath;
  v15[1] = v13;
  sub_2658B69C8();
  sub_2658B6938();
  (*(v5 + 8))(v7, v4);
  sub_2658B6D78();
  sub_2658B68A8();
  v16 = (v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280028630, &qword_2658B92B0) + 36));
  v17 = v21[1];
  *v16 = v21[0];
  v16[1] = v17;
  v16[2] = v21[2];
  v18 = (v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280028608, &qword_2658B9258) + 36));
  *v18 = v8;
  v18[1] = v10;
  v19 = sub_2658B6778();
  return (*(*(v19 - 8) + 16))(a2, a1, v19);
}

unint64_t sub_2658AEFA4()
{
  result = qword_2800285C8;
  if (!qword_2800285C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800285C8);
  }

  return result;
}

unint64_t sub_2658AF000()
{
  result = qword_2800285F0;
  if (!qword_2800285F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800285E8, &qword_2658B9250);
    sub_2658AF0E8(&qword_2800285F8, MEMORY[0x277CBB360], MEMORY[0x277CBB358]);
    sub_2658AFAD0(&qword_280028600, &qword_280028608, &qword_2658B9258, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800285F0);
  }

  return result;
}

uint64_t sub_2658AF0E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2658AF130(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = sub_2658B65B8();
  v5 = [v3 stringFromDate_];

  v6 = sub_2658B6E38();
  v8 = v7;

  *a1 = v6;
  a1[1] = v8;
}

uint64_t sub_2658AF270()
{
  sub_2658B6F48();
  sub_2658B6EE8();
  return sub_2658B6F68();
}

uint64_t sub_2658AF2D8(uint64_t a1)
{
  sub_2658B6F48();
  sub_2658B6EE8();
  return sub_2658B6F68();
}

uint64_t sub_2658AF35C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2658B6948();
  *a1 = result;
  return result;
}

uint64_t sub_2658AF3B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280028638, &qword_2658B92B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_2658AF424()
{
  v0 = sub_2658B6658();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2658B6618();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  sub_2658B65F8();
  v9 = sub_2658B65E8();
  (*(v5 + 8))(v7, v4);
  [v8 setLocale_];

  sub_2658B6638();
  v10 = sub_2658B6628();
  (*(v1 + 8))(v3, v0);
  [v8 setCalendar_];

  v11 = sub_2658B6E28();
  [v8 setLocalizedDateFormatFromTemplate_];

  return v8;
}

unint64_t sub_2658AF61C()
{
  result = qword_280028658;
  if (!qword_280028658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280028658);
  }

  return result;
}

uint64_t sub_2658AF67C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280028520, &qword_2658B92E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2658AF6EC()
{
  result = qword_280028678;
  if (!qword_280028678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280028678);
  }

  return result;
}

uint64_t sub_2658AF740(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_2658AF760()
{
  result = qword_280028688;
  if (!qword_280028688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280028620, &qword_2658B92A0);
    sub_2658AF7EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280028688);
  }

  return result;
}

unint64_t sub_2658AF7EC()
{
  result = qword_280028690;
  if (!qword_280028690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280028618, &qword_2658B9298);
    sub_2658AF8A4();
    sub_2658AFAD0(&qword_2800286B0, &qword_2800286B8, &qword_2658B9338, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280028690);
  }

  return result;
}

unint64_t sub_2658AF8A4()
{
  result = qword_280028698;
  if (!qword_280028698)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280028610, &qword_2658B9290);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280028590, &qword_2658B91B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800285E8, &qword_2658B9250);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280028588, &qword_2658B91A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800285D8, &qword_2658B9248);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280028580, &qword_2658B91A0);
    sub_2658AFAD0(&qword_2800285D0, &qword_280028580, &qword_2658B91A0, MEMORY[0x277CBB3F8]);
    swift_getOpaqueTypeConformance2();
    sub_2658AFAD0(&qword_2800285E0, &qword_2800285D8, &qword_2658B9248, MEMORY[0x277CBB460]);
    swift_getOpaqueTypeConformance2();
    sub_2658AF000();
    swift_getOpaqueTypeConformance2();
    sub_2658AFAD0(&qword_2800286A0, &qword_2800286A8, &qword_2658B9330, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280028698);
  }

  return result;
}

uint64_t sub_2658AFAD0(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2658AFB1C()
{
  result = qword_2800286C0;
  if (!qword_2800286C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800286C0);
  }

  return result;
}

unint64_t sub_2658AFB74()
{
  result = qword_2800286C8;
  if (!qword_2800286C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800286C8);
  }

  return result;
}

unint64_t sub_2658AFBCC()
{
  result = qword_2800286D0;
  if (!qword_2800286D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800286D0);
  }

  return result;
}

unint64_t sub_2658AFC24()
{
  result = qword_2800286D8;
  if (!qword_2800286D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800286D8);
  }

  return result;
}

unint64_t sub_2658AFC78()
{
  result = qword_2800286E0;
  if (!qword_2800286E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800286E0);
  }

  return result;
}

uint64_t sub_2658AFCF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800286E8, &qword_2658B94E8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800286F0, &qword_2658B94F0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v21 - v11;
  v21[4] = a1;
  v21[5] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800286F8, &qword_2658B94F8);
  sub_2658B03F8();
  sub_2658B6AF8();
  v13 = sub_2658AFAD0(&qword_280028720, &qword_2800286E8, &qword_2658B94E8, MEMORY[0x277CDE5A0]);
  sub_2658B6B88();
  (*(v6 + 8))(v8, v5);
  sub_2658B69F8();
  if (qword_280028510 != -1)
  {
    swift_once();
  }

  v14 = qword_280028988;
  v15 = sub_2658B6B38();
  v17 = v16;
  v19 = v18;
  v21[7] = v5;
  v21[8] = v13;
  swift_getOpaqueTypeConformance2();
  sub_2658B6BF8();
  sub_2658AF740(v15, v17, v19 & 1);

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_2658B0014(uint64_t a1, uint64_t a2)
{
  v2 = sub_2658B6618();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_2658B6E18();
  MEMORY[0x28223BE20](v3 - 8);
  sub_2658B6E08();
  if (qword_280028510 != -1)
  {
    swift_once();
  }

  v4 = qword_280028988;
  sub_2658B6608();
  sub_2658B6E48();
  sub_2658AEFA4();
  sub_2658B6B48();
  sub_2658B2718();
  sub_2658B6B48();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280028710, &qword_2658B9500);
  sub_2658B0488();
  return sub_2658B6D58();
}

uint64_t sub_2658B023C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280028728, &qword_2658B9530);
  sub_2658AFAD0(&qword_280028730, &qword_280028728, &qword_2658B9530, MEMORY[0x277D83980]);
  sub_2658B050C();
  return sub_2658B6D48();
}

uint64_t sub_2658B0350@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  type metadata accessor for SHSHapticsOptionsViewModel();
  sub_2658B1698(&qword_280028738, type metadata accessor for SHSHapticsOptionsViewModel, &unk_2658B9884);

  result = sub_2658B68C8();
  *a3 = result;
  a3[1] = v6;
  a3[2] = v4;
  return result;
}

unint64_t sub_2658B03F8()
{
  result = qword_280028700;
  if (!qword_280028700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800286F8, &qword_2658B94F8);
    sub_2658B0488();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280028700);
  }

  return result;
}

unint64_t sub_2658B0488()
{
  result = qword_280028708;
  if (!qword_280028708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280028710, &qword_2658B9500);
    sub_2658B050C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280028708);
  }

  return result;
}

unint64_t sub_2658B050C()
{
  result = qword_280028718;
  if (!qword_280028718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280028718);
  }

  return result;
}

uint64_t sub_2658B0560@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v33 = a4;
  v34 = a3;
  v30 = sub_2658B6A48();
  v32 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v31 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2658B6908();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280028740, &qword_2658B95C8);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v27 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280028748, &qword_2658B95D0);
  v28 = *(v15 - 8);
  v29 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  v18 = swift_allocObject();
  v18[2] = a1;
  v18[3] = a2;
  v19 = v34;
  v18[4] = v34;
  v35 = a1;
  v36 = a2;
  v37 = v19;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280028750, &qword_2658B95D8);
  sub_2658B11DC();
  sub_2658B6D08();
  sub_2658B68F8();
  v20 = sub_2658AFAD0(&qword_280028780, &qword_280028740, &qword_2658B95C8, MEMORY[0x277CDF028]);
  v21 = sub_2658B1698(&qword_280028788, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  sub_2658B6BC8();
  (*(v8 + 8))(v10, v7);
  (*(v12 + 8))(v14, v11);
  if (*(a2 + 16) == v34)
  {
    v22 = v31;
    sub_2658B6A18();
    v23 = v30;
  }

  else
  {
    v38 = MEMORY[0x277D84F90];
    sub_2658B1698(&qword_280028790, MEMORY[0x277CE01F0], MEMORY[0x277CE0200]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280028798, &qword_2658B95F0);
    sub_2658AFAD0(&qword_2800287A0, &qword_280028798, &qword_2658B95F0, MEMORY[0x277D83970]);
    v24 = v30;
    v22 = v31;
    sub_2658B6F08();
    v23 = v24;
  }

  v38 = v11;
  v39 = v7;
  v40 = v20;
  v41 = v21;
  swift_getOpaqueTypeConformance2();
  v25 = v29;
  sub_2658B6C18();
  (*(v32 + 8))(v22, v23);
  return (*(v28 + 8))(v17, v25);
}

void sub_2658B0A40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 16) != a3)
  {
    type metadata accessor for SHSHapticsOptionsViewModel();
    sub_2658B1698(&qword_280028738, type metadata accessor for SHSHapticsOptionsViewModel, &unk_2658B9884);
    sub_2658B6838();
    sub_2658B6848();

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong hapticsOptionsDidChange_];
      swift_unknownObjectRelease();
    }
  }

  *(a2 + 16) = a3;
}

uint64_t sub_2658B0B04@<X0>(uint64_t a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800287A8, &qword_2658B95F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800287B0, &qword_2658B9600);
  sub_2658AFAD0(&qword_2800287B8, &qword_2800287A8, &qword_2658B95F8, MEMORY[0x277CE1138]);
  sub_2658B12D4();
  sub_2658B6CC8();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280028750, &qword_2658B95D8);
  *(a4 + *(result + 36)) = 0;
  return result;
}

__n128 sub_2658B0C18@<Q0>(uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = sub_2658B69E8();
  sub_2658B0CB0(a3, &v12);
  v7 = v13;
  v8 = v14;
  v9 = v15;
  v10 = v16;
  result = v12;
  *a4 = v6;
  *(a4 + 8) = 0;
  *(a4 + 16) = 1;
  *(a4 + 24) = result;
  *(a4 + 40) = v7;
  *(a4 + 48) = v8;
  *(a4 + 56) = v9;
  *(a4 + 64) = v10;
  return result;
}

uint64_t sub_2658B0CB0@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  if (a1 > 1)
  {
    if (a1 == 2 || a1 == 3)
    {
      goto LABEL_9;
    }

LABEL_14:
    result = sub_2658B6F38();
    __break(1u);
    return result;
  }

  if (a1 && a1 != 1)
  {
    goto LABEL_14;
  }

LABEL_9:
  sub_2658B69F8();
  if (qword_280028510 != -1)
  {
    swift_once();
  }

  v3 = qword_280028988;
  v4 = sub_2658B6B38();
  v6 = v5;
  *a2 = v4;
  *(a2 + 8) = v5;
  v8 = v7 & 1;
  *(a2 + 16) = v7 & 1;
  *(a2 + 24) = v9;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  sub_2658B150C(v4, v5, v7 & 1);

  sub_2658AF740(v4, v6, v8);
}

uint64_t sub_2658B0E84@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800287F8, &qword_2658B9628);
  MEMORY[0x28223BE20](v6);
  v8 = (v19 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800287D0, &qword_2658B9608);
  MEMORY[0x28223BE20](v9);
  v11 = v19 - v10;
  if (*(a1 + 16) == a2)
  {
    v12 = sub_2658B6CA8();
    v13 = sub_2658B6AE8();
    KeyPath = swift_getKeyPath();
    v19[1] = v12;
    v19[2] = KeyPath;
    v19[3] = v13;
    sub_2658B6AB8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800287D8, &qword_2658B9610);
    v19[0] = a3;
    sub_2658B1454();
    sub_2658B6BB8();

    v15 = sub_2658B6C58();
    v16 = swift_getKeyPath();
    v17 = &v11[*(v9 + 36)];
    *v17 = v16;
    v17[1] = v15;
    sub_265898568(v11, v8);
    swift_storeEnumTagMultiPayload();
    sub_2658B1360();
    sub_2658B6A68();
    return sub_2658985D8(v11);
  }

  else
  {
    *v8 = sub_2658B6CB8();
    swift_storeEnumTagMultiPayload();
    sub_2658B1360();
    return sub_2658B6A68();
  }
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_2658B1110(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2658B1158(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2658B11DC()
{
  result = qword_280028758;
  if (!qword_280028758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280028750, &qword_2658B95D8);
    sub_2658AFAD0(&qword_280028760, &qword_280028768, &qword_2658B95E0, MEMORY[0x277CDEFF0]);
    sub_2658AFAD0(&qword_280028770, &qword_280028778, &qword_2658B95E8, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280028758);
  }

  return result;
}

unint64_t sub_2658B12D4()
{
  result = qword_2800287C0;
  if (!qword_2800287C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800287B0, &qword_2658B9600);
    sub_2658B1360();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800287C0);
  }

  return result;
}

unint64_t sub_2658B1360()
{
  result = qword_2800287C8;
  if (!qword_2800287C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800287D0, &qword_2658B9608);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800287D8, &qword_2658B9610);
    sub_2658B1454();
    swift_getOpaqueTypeConformance2();
    sub_2658AFAD0(&qword_2800286A0, &qword_2800286A8, &qword_2658B9330, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800287C8);
  }

  return result;
}

unint64_t sub_2658B1454()
{
  result = qword_2800287E0;
  if (!qword_2800287E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800287D8, &qword_2658B9610);
    sub_2658AFAD0(&qword_2800287E8, &qword_2800287F0, &unk_2658B9618, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800287E0);
  }

  return result;
}

uint64_t sub_2658B150C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_2658B151C()
{
  result = qword_280028800;
  if (!qword_280028800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280028808, &unk_2658B9690);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280028740, &qword_2658B95C8);
    sub_2658B6908();
    sub_2658AFAD0(&qword_280028780, &qword_280028740, &qword_2658B95C8, MEMORY[0x277CDF028]);
    sub_2658B1698(&qword_280028788, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
    swift_getOpaqueTypeConformance2();
    sub_2658B1698(&qword_280028810, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280028800);
  }

  return result;
}

uint64_t sub_2658B1698(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *static SHSViewControllerFactory.createHapticsOptionsViewController(_:delegate:)(uint64_t a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(type metadata accessor for SHSHapticsOptionsViewController()) init];
  *&v3[OBJC_IVAR____TtC24SoundsAndHapticsSettings31SHSHapticsOptionsViewController_selectedOption] = a1;
  swift_unknownObjectWeakAssign();
  return v3;
}

id SHSViewControllerFactory.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SHSViewControllerFactory.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SHSViewControllerFactory();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t sub_2658B18EC()
{
  v1 = OBJC_IVAR____TtC24SoundsAndHapticsSettings31SHSHapticsOptionsViewController____lazy_storage___hapticsOptionsViewModel;
  if (*(v0 + OBJC_IVAR____TtC24SoundsAndHapticsSettings31SHSHapticsOptionsViewController____lazy_storage___hapticsOptionsViewModel))
  {
    v2 = *(v0 + OBJC_IVAR____TtC24SoundsAndHapticsSettings31SHSHapticsOptionsViewController____lazy_storage___hapticsOptionsViewModel);
  }

  else
  {
    v3 = *(v0 + OBJC_IVAR____TtC24SoundsAndHapticsSettings31SHSHapticsOptionsViewController_selectedOption);
    swift_unknownObjectWeakLoadStrong();
    type metadata accessor for SHSHapticsOptionsViewModel();
    v2 = swift_allocObject();
    *(v2 + 16) = 0;
    swift_unknownObjectWeakInit();
    *(v2 + 16) = v3;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    *(v0 + v1) = v2;
  }

  return v2;
}

Swift::Void __swiftcall SHSHapticsOptionsViewController.viewDidLoad()()
{
  v1 = v0;
  v17.receiver = v0;
  v17.super_class = type metadata accessor for SHSHapticsOptionsViewController();
  objc_msgSendSuper2(&v17, sel_viewDidLoad);
  sub_2658B18EC();
  type metadata accessor for SHSHapticsOptionsViewModel();
  sub_2658B1B54();
  v15 = sub_2658B68C8();
  v16 = v2;
  v3 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280028828, &qword_2658B96B0));
  v4 = sub_2658B6A58();
  v5 = [v4 view];
  if (!v5)
  {
    v6 = v4;
    goto LABEL_6;
  }

  v6 = v5;
  v7 = [v1 view];
  if (v7)
  {
    v8 = v7;
    [v7 addSubview_];

    v9 = [v1 view];
    if (v9)
    {
      v10 = v9;
      [v9 bounds];
      v12 = v11;
      v14 = v13;

      [v6 setFrame_];
      [v6 setAutoresizingMask_];
      [v1 addChildViewController_];
      [v4 didMoveToParentViewController_];

LABEL_6:
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

unint64_t sub_2658B1B54()
{
  result = qword_280028738;
  if (!qword_280028738)
  {
    type metadata accessor for SHSHapticsOptionsViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280028738);
  }

  return result;
}

Swift::Void __swiftcall SHSHapticsOptionsViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280028830, &qword_2658B96B8);
  MEMORY[0x28223BE20](v3 - 8);
  v44 = &v36 - v4;
  v46 = sub_2658B6DF8();
  v43 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v42 = (&v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_2658B6528();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_2658B6618();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = sub_2658B6E18();
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v38 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = sub_2658B6538();
  v40 = *(v14 - 8);
  v41 = v14;
  v15 = MEMORY[0x28223BE20](v14);
  v45 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v36 - v17;
  v19 = type metadata accessor for SHSHapticsOptionsViewController();
  v37 = v1;
  v47.receiver = v1;
  v47.super_class = v19;
  objc_msgSendSuper2(&v47, sel_viewDidAppear_, a1);
  sub_2658B6E08();
  sub_2658B6608();
  *v9 = v19;
  v20 = *MEMORY[0x277CC9120];
  v21 = *(v7 + 104);
  v39 = v6;
  v21(v9, v20, v6);
  v36 = v18;
  sub_2658B6548();
  v22 = MobileGestalt_get_current_device();
  if (v22)
  {
    v23 = v22;
    MobileGestalt_get_deviceSupportsClosedLoopHaptics();

    sub_2658B6E08();
    v24 = v44;
    sub_2658B6608();
    *v9 = v19;
    v21(v9, v20, v39);
    v25 = v45;
    sub_2658B6548();
    v27 = v42;
    v26 = v43;
    *v42 = 0xD00000000000001CLL;
    v27[1] = 0x80000002658BC490;
    (*(v26 + 104))(v27, *MEMORY[0x277D4D788], v46);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280028838, &unk_2658B96C0);
    v28 = v40;
    v29 = (*(v40 + 80) + 32) & ~*(v40 + 80);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_2658B96A0;
    v31 = v41;
    (*(v28 + 16))(v30 + v29, v25, v41);
    sub_2658B6558();
    v32 = sub_2658B6568();
    v33 = *(v32 - 8);
    if ((*(v33 + 48))(v24, 1, v32) != 1)
    {
      v34 = v36;
      sub_2658B6EA8();

      (*(v26 + 8))(v27, v46);
      v35 = *(v28 + 8);
      v35(v45, v31);
      v35(v34, v31);
      (*(v33 + 8))(v24, v32);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id SHSHapticsOptionsViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_2658B6E28();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id SHSHapticsOptionsViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC24SoundsAndHapticsSettings31SHSHapticsOptionsViewController_selectedOption] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC24SoundsAndHapticsSettings31SHSHapticsOptionsViewController____lazy_storage___hapticsOptionsViewModel] = 0;
  if (a2)
  {
    v6 = sub_2658B6E28();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = v3;
  v9.super_class = type metadata accessor for SHSHapticsOptionsViewController();
  v7 = objc_msgSendSuper2(&v9, sel_initWithNibName_bundle_, v6, a3);

  return v7;
}

id SHSHapticsOptionsViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SHSHapticsOptionsViewController.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC24SoundsAndHapticsSettings31SHSHapticsOptionsViewController_selectedOption] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC24SoundsAndHapticsSettings31SHSHapticsOptionsViewController____lazy_storage___hapticsOptionsViewModel] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SHSHapticsOptionsViewController();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_2658B24D8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t SHSHapticsOption.title.getter(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 == 2 || a1 == 3)
    {
      return sub_2658B69F8();
    }
  }

  else if (!a1 || a1 == 1)
  {
    return sub_2658B69F8();
  }

  result = sub_2658B6F38();
  __break(1u);
  return result;
}

void sub_2658B2674()
{
  v0 = sub_2658B6E28();
  v1 = v0;

  if (!v1)
  {
    sub_2658B6E38();
    v1 = sub_2658B6E28();
  }

  v2 = [objc_allocWithZone(MEMORY[0x277CCA8D8]) initWithPath_];

  if (v2)
  {
    qword_280028988 = v2;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2658B2718()
{
  v1 = sub_2658B6618();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_2658B6E18();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v13 - v7;
  v9 = *(v0 + 16);
  if (v9 <= 1)
  {
    if (!v9 || v9 == 1)
    {
      goto LABEL_9;
    }

LABEL_12:
    v13[1] = *(v0 + 16);
    result = sub_2658B6F38();
    __break(1u);
    return result;
  }

  if (v9 != 2 && v9 != 3)
  {
    goto LABEL_12;
  }

LABEL_9:
  sub_2658B6E08();
  (*(v3 + 16))(v6, v8, v2);
  if (qword_280028510 != -1)
  {
    swift_once();
  }

  v10 = qword_280028988;
  sub_2658B6608();
  v11 = sub_2658B6E48();
  (*(v3 + 8))(v8, v2);
  return v11;
}

uint64_t sub_2658B2998()
{
  sub_2658B255C(v0 + 24);

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_2658B29D0@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for SHSHapticsOptionsViewModel();
  result = sub_2658B6838();
  *a3 = result;
  return result;
}

uint64_t sub_2658B2A40()
{
  v1 = *v0;
  sub_2658B6F48();
  MEMORY[0x266762830](v1);
  return sub_2658B6F68();
}

uint64_t sub_2658B2AB4(uint64_t a1)
{
  v2 = *v1;
  sub_2658B6F48();
  MEMORY[0x266762830](v2);
  return sub_2658B6F68();
}

unint64_t sub_2658B2AF8@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2658B2B3C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t sub_2658B2B3C(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

unint64_t sub_2658B2B50()
{
  result = qword_280028848;
  if (!qword_280028848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280028848);
  }

  return result;
}

unint64_t sub_2658B2BA8()
{
  result = qword_280028850;
  if (!qword_280028850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280028728, &qword_2658B9530);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280028850);
  }

  return result;
}

void SHSSilentModeTableCell.refreshCellContents(with:)(void *a1)
{
  if (a1)
  {
    v2 = v1;
    v3 = a1;
    v4 = [v3 identifier];
    [v2 setAccessibilityIdentifier_];

    [v2 setType_];
    [v2 setTag_];
    [v2 setSelectionStyle_];
    [v2 setAccessoryType_];
    v5 = OBJC_IVAR____TtC24SoundsAndHapticsSettings22SHSSilentModeTableCell_toggleContentViewModel;
    if (*&v2[OBJC_IVAR____TtC24SoundsAndHapticsSettings22SHSSilentModeTableCell_toggleContentViewModel])
    {
      [objc_opt_self() areAnimationsEnabled];
      swift_allocObject();
      v6 = swift_unknownObjectWeakInit();
      MEMORY[0x28223BE20](v6);
      v11[0] = 0;
      sub_2658B6898();
      sub_2658B68E8();
    }

    else
    {
      type metadata accessor for SHSSilentModeTableCellContentViewModel(0);
      v7 = swift_allocObject();
      v8 = v3;
      sub_2658B6688();
      *(v7 + 24) = v8;
      v9 = v8;
      LOBYTE(v8) = sub_2658B4DB8();

      *(v7 + 16) = v8 & 1;
      *&v2[v5] = v7;

      MEMORY[0x28223BE20](v10);
      v11[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280028868, &unk_2658B98E0);
      v11[4] = sub_2658AFAD0(&qword_280028870, &qword_280028868, &unk_2658B98E0, MEMORY[0x277CDE1C0]);
      __swift_allocate_boxed_opaque_existential_1(v11);
      sub_2658B4F88();
      sub_2658B6A78();
      MEMORY[0x266762770](v11);
    }
  }
}

uint64_t type metadata accessor for SHSSilentModeTableCellContentViewModel(uint64_t a1)
{
  result = qword_280028880;
  if (!qword_280028880)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_2658B2F78@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (*(result + OBJC_IVAR____TtC24SoundsAndHapticsSettings22SHSSilentModeTableCell_toggleContentViewModel))
  {
    type metadata accessor for SHSSilentModeTableCellContentViewModel(0);

    result = sub_2658B6CD8();
    *a2 = v3;
    a2[1] = v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2658B2FEC(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC24SoundsAndHapticsSettings22SHSSilentModeTableCell_toggleContentViewModel);
    if (v5)
    {
      v6 = *(v5 + 24);
      sub_2658B5AC4(0, &qword_280028920, 0x277D3FAD8);

      v7 = a2;
      v8 = v6;
      v9 = sub_2658B6ED8();

      if (v9)
      {
        sub_2658B501C(v7);
      }

      else
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x28223BE20](KeyPath);
        sub_2658B5C04(&qword_2800288D0, type metadata accessor for SHSSilentModeTableCellContentViewModel, &unk_2658B99B4);
        sub_2658B6668();
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_2658B31B0(void *a1)
{
  v3 = *(v1 + 24);
  sub_2658B5AC4(0, &qword_280028920, 0x277D3FAD8);
  v4 = v3;
  v5 = sub_2658B6ED8();

  if (v5)
  {

    sub_2658B501C(a1);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2658B5C04(&qword_2800288D0, type metadata accessor for SHSSilentModeTableCellContentViewModel, &unk_2658B99B4);
    sub_2658B6668();
  }
}

Swift::Void __swiftcall SHSSilentModeTableCell.prepareForReuse()()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for SHSSilentModeTableCell();
  objc_msgSendSuper2(&v1, sel_prepareForReuse);
  *&v0[OBJC_IVAR____TtC24SoundsAndHapticsSettings22SHSSilentModeTableCell_toggleContentViewModel] = 0;
}

id SHSSilentModeTableCell.__allocating_init(style:reuseIdentifier:specifier:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  if (a3)
  {
    v8 = sub_2658B6E28();
  }

  else
  {
    v8 = 0;
  }

  v9 = [objc_allocWithZone(v5) initWithStyle:a1 reuseIdentifier:v8 specifier:a4];

  return v9;
}

id SHSSilentModeTableCell.init(style:reuseIdentifier:specifier:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *&v4[OBJC_IVAR____TtC24SoundsAndHapticsSettings22SHSSilentModeTableCell_toggleContentViewModel] = 0;
  if (a3)
  {
    v7 = sub_2658B6E28();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v4;
  v10.super_class = type metadata accessor for SHSSilentModeTableCell();
  v8 = objc_msgSendSuper2(&v10, sel_initWithStyle_reuseIdentifier_specifier_, a1, v7, a4);

  if (v8)
  {
  }

  return v8;
}

id SHSSilentModeTableCell.__allocating_init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a3)
  {
    v6 = sub_2658B6E28();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithStyle:a1 reuseIdentifier:v6];

  return v7;
}

id SHSSilentModeTableCell.init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC24SoundsAndHapticsSettings22SHSSilentModeTableCell_toggleContentViewModel] = 0;
  if (a3)
  {
    v5 = sub_2658B6E28();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for SHSSilentModeTableCell();
  v6 = objc_msgSendSuper2(&v8, sel_initWithStyle_reuseIdentifier_, a1, v5);

  return v6;
}

id SHSSilentModeTableCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SHSSilentModeTableCell.init(coder:)(void *a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC24SoundsAndHapticsSettings22SHSSilentModeTableCell_toggleContentViewModel] = 0;
  v6.receiver = v2;
  v6.super_class = type metadata accessor for SHSSilentModeTableCell();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id SHSSilentModeTableCell.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for SHSSilentModeTableCell();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id sub_2658B3914@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v60 = a3;
  v61 = sub_2658B6A48();
  v59 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v58 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2658B6A98();
  v75 = *(v6 - 8);
  v76 = v6;
  MEMORY[0x28223BE20](v6);
  v74 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2658B6DB8();
  v72 = *(v8 - 8);
  v73 = v8;
  MEMORY[0x28223BE20](v8);
  v69 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2658B6D98();
  v11 = *(v10 - 8);
  v70 = v10;
  v71 = v11;
  MEMORY[0x28223BE20](v10);
  v68 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_2658B6C48();
  v63 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280028890, &qword_2658B9A20);
  MEMORY[0x28223BE20](v66);
  v16 = &v52 - v15;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280028898, &qword_2658B9A28);
  MEMORY[0x28223BE20](v62 - 8);
  v67 = &v52 - v17;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800288A0, &qword_2658B9A30);
  v54 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v65 = &v52 - v18;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800288A8, &qword_2658B9A38);
  v19 = MEMORY[0x28223BE20](v57);
  v53 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v56 = &v52 - v21;
  v80 = a1;
  v81 = a2;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800288B0, &qword_2658B9A40);
  sub_2658B6CF8();
  v23 = v82;
  v22 = v83;
  v24 = v84;
  swift_getKeyPath();
  v82 = v23;
  v83 = v22;
  v84 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800288B8, &qword_2658B9A70);
  sub_2658B6D28();

  v78 = a1;
  v79 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800288C0, &qword_2658B9A78);
  sub_2658AFAD0(&qword_2800288C8, &qword_2800288C0, &qword_2658B9A78, MEMORY[0x277CDEFF0]);
  v25 = v16;
  sub_2658B6D18();
  (*(v63 + 104))(v14, *MEMORY[0x277CE0EE0], v64);
  v26 = sub_2658B6C88();
  KeyPath = swift_getKeyPath();
  v82 = v26;
  v28 = sub_2658B68B8();
  v29 = (v25 + *(v66 + 36));
  *v29 = KeyPath;
  v29[1] = v28;
  v82 = a1;
  v83 = a2;
  sub_2658B6CE8();
  v30 = v80;
  swift_getKeyPath();
  v82 = v30;
  sub_2658B5C04(&qword_2800288D0, type metadata accessor for SHSSilentModeTableCellContentViewModel, &unk_2658B99B4);
  sub_2658B6678();

  LOBYTE(v26) = *(v30 + 16);

  LOBYTE(v82) = v26;
  v31 = swift_allocObject();
  *(v31 + 16) = a1;
  *(v31 + 24) = a2;
  sub_2658B56D0();
  v32 = a1;

  v33 = a2;

  v34 = v67;
  sub_2658B6C28();

  sub_2658B58BC(v25, &qword_280028890, &qword_2658B9A20);
  v35 = v68;
  sub_2658B6D88();
  v36 = v69;
  sub_2658B6DA8();
  v37 = v62;
  v38 = (v34 + *(v62 + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280028900, &qword_2658B9AC0);
  sub_2658B5C04(&qword_280028908, MEMORY[0x277CE1598], MEMORY[0x277CE1590]);
  v39 = v70;
  sub_2658B6918();
  (*(v72 + 8))(v36, v73);
  (*(v71 + 8))(v35, v39);
  *v38 = swift_getKeyPath();
  v40 = v74;
  sub_2658B6A88();
  v41 = sub_2658B57B4();
  v42 = v65;
  sub_2658B6C08();
  (*(v75 + 8))(v40, v76);
  sub_2658B58BC(v34, &qword_280028898, &qword_2658B9A28);
  v82 = v32;
  v83 = v33;
  sub_2658B6CE8();
  v43 = v80;
  swift_getKeyPath();
  v82 = v43;
  sub_2658B6678();

  result = [*(v43 + 24) identifier];
  if (result)
  {
    v45 = result;
    sub_2658B6E38();

    v82 = v37;
    v83 = v41;
    swift_getOpaqueTypeConformance2();
    v46 = v53;
    v47 = v55;
    sub_2658B6BD8();

    (*(v54 + 8))(v42, v47);
    v48 = v58;
    sub_2658B6A38();
    v49 = v56;
    sub_2658B68D8();
    v50 = *(v59 + 8);
    v51 = v61;
    v50(v48, v61);
    sub_2658B58BC(v46, &qword_2800288A8, &qword_2658B9A38);
    sub_2658B6A28();
    sub_2658B68D8();
    v50(v48, v51);
    return sub_2658B58BC(v49, &qword_2800288A8, &qword_2658B9A38);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2658B43A0()
{
  swift_getKeyPath();
  sub_2658B5C04(&qword_2800288D0, type metadata accessor for SHSSilentModeTableCellContentViewModel, &unk_2658B99B4);
  sub_2658B6678();

  return *(v0 + 16);
}

uint64_t sub_2658B4440@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2658B5C04(&qword_2800288D0, type metadata accessor for SHSSilentModeTableCellContentViewModel, &unk_2658B99B4);
  sub_2658B6678();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_2658B44E8(uint64_t result)
{
  if (*(v1 + 16) == (result & 1))
  {
    *(v1 + 16) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2658B5C04(&qword_2800288D0, type metadata accessor for SHSSilentModeTableCellContentViewModel, &unk_2658B99B4);
    sub_2658B6668();
  }

  return result;
}

uint64_t sub_2658B45F8(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280028948, &qword_2658B9B28);
  sub_2658B599C();
  return sub_2658B6CC8();
}

id sub_2658B4694@<X0>(uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800288B0, &qword_2658B9A40);
  sub_2658B6CE8();
  swift_getKeyPath();
  sub_2658B5C04(&qword_2800288D0, type metadata accessor for SHSSilentModeTableCellContentViewModel, &unk_2658B99B4);
  sub_2658B6678();

  result = [*(v9 + 24) name];
  if (result)
  {
    v5 = result;
    sub_2658B6E38();

    sub_2658AEFA4();
    result = sub_2658B6B48();
    *a3 = result;
    *(a3 + 8) = v6;
    *(a3 + 16) = v7 & 1;
    *(a3 + 24) = v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2658B47C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v16 = a3;
  v5 = sub_2658B6C48();
  v14 = *(v5 - 8);
  v15 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1;
  v19 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800288B0, &qword_2658B9A40);
  sub_2658B6CE8();
  v8 = v17;
  swift_getKeyPath();
  v18 = v8;
  sub_2658B5C04(&qword_2800288D0, type metadata accessor for SHSSilentModeTableCellContentViewModel, &unk_2658B99B4);
  sub_2658B6678();

  v9 = sub_2658B6CA8();
  v18 = a1;
  v19 = a2;
  sub_2658B6CE8();
  v10 = v17;
  swift_getKeyPath();
  v18 = v10;
  sub_2658B6678();

  v11 = *(v10 + 16);

  if (v11 == 1)
  {
    (*(v14 + 104))(v7, *MEMORY[0x277CE0EE0], v15);
    result = sub_2658B6C88();
  }

  else
  {
    result = sub_2658B6C68();
  }

  v13 = v16;
  *v16 = v9;
  v13[1] = result;
  return result;
}

uint64_t sub_2658B4A38(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v4 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800288B0, &qword_2658B9A40);
  sub_2658B6CE8();
  sub_2658B4A98(v4);
}

uint64_t sub_2658B4A98(char a1)
{
  v2 = sub_2658B6DC8();
  v14 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2658B6DE8();
  v5 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2658B5AC4(0, &qword_280028928, 0x277D85C78);
  v8 = sub_2658B6EB8();
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = a1;
  aBlock[4] = sub_2658B5968;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2658B53B0;
  aBlock[3] = &block_descriptor;
  v11 = _Block_copy(aBlock);

  sub_2658B6DD8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_2658B5C04(&qword_280028930, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280028938, &qword_2658B9B20);
  sub_2658AFAD0(&qword_280028940, &qword_280028938, &qword_2658B9B20, MEMORY[0x277D83970]);
  sub_2658B6F08();
  MEMORY[0x2667627A0](0, v7, v4, v11);
  _Block_release(v11);

  (*(v14 + 8))(v4, v2);
  return (*(v5 + 8))(v7, v13);
}

unint64_t sub_2658B4DB8()
{
  if ([v0 performGetter])
  {
    sub_2658B6EF8();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  sub_2658B5A54(v6, &v4);
  if (!*(&v5 + 1))
  {
    sub_2658B58BC(&v4, &qword_280028968, &qword_2658B9B38);
LABEL_8:
    sub_2658B5A54(v6, &v4);
    if (*(&v5 + 1))
    {
      sub_2658B5AC4(0, &qword_280028970, 0x277CCACA8);
      if (swift_dynamicCast())
      {
        v1 = [v3 BOOLValue];

        goto LABEL_13;
      }
    }

    else
    {
      sub_2658B58BC(&v4, &qword_280028968, &qword_2658B9B38);
    }

    v1 = 0;
    goto LABEL_13;
  }

  if (!swift_dynamicCast())
  {
    goto LABEL_8;
  }

  v1 = v3;
LABEL_13:
  sub_2658B58BC(v6, &qword_280028968, &qword_2658B9B38);
  return v1;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_2658B4F88()
{
  result = qword_280028878;
  if (!qword_280028878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280028878);
  }

  return result;
}

void sub_2658B501C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2658B4DB8() & 1;
  if (v4 == *(v2 + 16))
  {
    *(v2 + 16) = v4;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2658B5C04(&qword_2800288D0, type metadata accessor for SHSSilentModeTableCellContentViewModel, &unk_2658B99B4);
    sub_2658B6668();
  }

  v6 = *(v2 + 24);
  *(v2 + 24) = a1;
}

id sub_2658B5148()
{
  swift_getKeyPath();
  sub_2658B5C04(&qword_2800288D0, type metadata accessor for SHSSilentModeTableCellContentViewModel, &unk_2658B99B4);
  sub_2658B6678();

  v1 = *(v0 + 24);

  return v1;
}

id sub_2658B51F8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2658B5C04(&qword_2800288D0, type metadata accessor for SHSSilentModeTableCellContentViewModel, &unk_2658B99B4);
  sub_2658B6678();

  v4 = *(v3 + 24);
  *a2 = v4;

  return v4;
}

void sub_2658B52B0(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    swift_getKeyPath();
    sub_2658B5C04(&qword_2800288D0, type metadata accessor for SHSSilentModeTableCellContentViewModel, &unk_2658B99B4);
    sub_2658B6678();

    v4 = *(v3 + 24);

    v5 = sub_2658B6E88();
    [v4 performSetterWithValue_];
  }
}

uint64_t sub_2658B53B0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_2658B53F4()
{
  v1 = OBJC_IVAR____TtC24SoundsAndHapticsSettingsP33_0556572A3F538935E22F6FDC453FEDF438SHSSilentModeTableCellContentViewModel___observationRegistrar;
  v2 = sub_2658B6698();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_2658B54A0(uint64_t a1)
{
  result = sub_2658B6698();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2658B5548(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_2658B5590(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2658B5600(uint64_t a1)
{
  v2 = sub_2658B6928();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_2658B6978();
}

unint64_t sub_2658B56D0()
{
  result = qword_2800288D8;
  if (!qword_2800288D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280028890, &qword_2658B9A20);
    sub_2658AFAD0(&qword_2800288E0, &qword_2800288E8, &qword_2658B9AB0, MEMORY[0x277CDF068]);
    sub_2658AFAD0(&qword_2800288F0, &qword_2800288F8, &qword_2658B9AB8, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800288D8);
  }

  return result;
}

unint64_t sub_2658B57B4()
{
  result = qword_280028910;
  if (!qword_280028910)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280028898, &qword_2658B9A28);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280028890, &qword_2658B9A20);
    sub_2658B56D0();
    swift_getOpaqueTypeConformance2();
    sub_2658AFAD0(&qword_280028918, &qword_280028900, &qword_2658B9AC0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280028910);
  }

  return result;
}

uint64_t sub_2658B58BC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_2658B599C()
{
  result = qword_280028950;
  if (!qword_280028950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280028948, &qword_2658B9B28);
    sub_2658AFAD0(&qword_280028958, &qword_280028960, &qword_2658B9B30, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280028950);
  }

  return result;
}

uint64_t sub_2658B5A54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280028968, &qword_2658B9B38);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2658B5AC4(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t sub_2658B5B0C()
{
  result = qword_280028978;
  if (!qword_280028978)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800288A8, &qword_2658B9A38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280028898, &qword_2658B9A28);
    sub_2658B57B4();
    swift_getOpaqueTypeConformance2();
    sub_2658B5C04(&qword_280028810, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280028978);
  }

  return result;
}

uint64_t sub_2658B5C04(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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