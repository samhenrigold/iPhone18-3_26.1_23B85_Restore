uint64_t sub_26634C428(void *a1, uint64_t a2, uint64_t a3)
{
  v65 = a1;
  v71 = sub_2664DFE08();
  v64 = *(v71 - 8);
  v5 = *(v64 + 64);
  v6 = MEMORY[0x28223BE20](v71);
  v56 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v72 = &v52 - v7;
  v68 = sub_2664DE438();
  v8 = *(v68 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v68);
  v62 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v52 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v52 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v52 - v17;
  sub_2664DE428();
  if (qword_280F91468 != -1)
  {
    swift_once();
  }

  v19 = sub_26632958C(1011);
  v20 = *(v8 + 16);
  v63 = v18;
  v21 = v68;
  v59 = v20;
  v60 = v8 + 16;
  v20(v16, v18, v68);
  v22 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v70 = *(v8 + 80);
  v23 = swift_allocObject();
  v24 = v8;
  v25 = v23;
  v23[2] = v19;
  v23[3] = a2;
  v23[4] = a3;
  v66 = v24;
  v26 = *(v24 + 32);
  v58 = v24 + 32;
  v57 = v26;
  v26(v23 + v22, v16, v21);
  v61 = v19;

  sub_2664DE428();
  v69 = v13;
  if (qword_280F912D0 != -1)
  {
    swift_once();
  }

  v55 = ~v70;
  v75 = &type metadata for SiriRemembersEntityProvider;
  v76 = &off_2877EB680;
  v74[0] = swift_allocObject();
  sub_26634CBCC(&qword_280F91D20, v74[0] + 16);
  v27 = swift_allocObject();
  *(v27 + 16) = sub_26634CB44;
  *(v27 + 24) = v25;
  v67 = v27;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072CD0, &qword_2664E69B8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072CD8, &unk_2664E69C0);
  v53 = sub_2664E0318();
  v52 = v28;
  v54 = v25;
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  v29 = qword_280F91D48;
  v30 = v72;
  sub_2664DFDE8();
  v31 = v64;
  v32 = v56;
  v33 = v71;
  (*(v64 + 16))(v56, v30, v71);
  v34 = (*(v31 + 80) + 33) & ~*(v31 + 80);
  v35 = (v5 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  *(v36 + 16) = "appSelectionSignalsSignal";
  *(v36 + 24) = 25;
  *(v36 + 32) = 2;
  (*(v31 + 32))(v36 + v34, v32, v33);
  v37 = (v36 + v35);
  v38 = v67;
  *v37 = sub_26634CC28;
  v37[1] = v38;

  v39 = sub_2664E0848();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724D8, &unk_2664E3920);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_2664E36F0;
  *(v40 + 56) = MEMORY[0x277D837D0];
  *(v40 + 64) = sub_2662C4094();
  v41 = v52;
  *(v40 + 32) = v53;
  *(v40 + 40) = v41;
  sub_2664DFDC8(v39, &dword_26629C000, v29, "appSelectionSignalsSignal", 25, 2, v30, "name=%{signpost.telemetry:string1,public}@ enableTelemetry=YES ", 63, 2, v40);

  v42 = swift_allocObject();
  *(v42 + 16) = sub_2662DE3C4;
  *(v42 + 24) = v36;
  v43 = swift_allocObject();
  *(v43 + 16) = sub_2662DE46C;
  *(v43 + 24) = v42;
  __swift_project_boxed_opaque_existential_1(v74, v75);
  v44 = v62;
  v45 = v68;
  v59(v62, v69, v68);
  v46 = (v70 + 16) & v55;
  v47 = v46 + v9;
  v48 = swift_allocObject();
  v57(v48 + v46, v44, v45);
  *(v48 + v47) = 0;
  v49 = v48 + (v47 & 0xFFFFFFFFFFFFFFF8);
  *(v49 + 8) = sub_26634CC58;
  *(v49 + 16) = v43;

  sub_266370CDC(v65, 0, sub_26634CC60, v48);

  (*(v31 + 8))(v72, v71);
  v50 = *(v66 + 8);
  v50(v69, v45);
  v50(v63, v45);
  return __swift_destroy_boxed_opaque_existential_1Tm(v74);
}

uint64_t sub_26634CB44(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_2664DE438() - 8);
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2 + ((*(v5 + 80) + 40) & ~*(v5 + 80));

  return sub_26634AF58(a1, a2, v6, v7, v8, v9);
}

uint64_t sub_26634CC60(uint64_t a1)
{
  v3 = *(sub_2664DE438() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(v1 + v5);
  v7 = v1 + (v5 & 0xFFFFFFFFFFFFFFF8);
  v8 = *(v7 + 8);
  v9 = *(v7 + 16);

  return sub_26634BC6C(a1, v1 + v4, v6, v8, v9);
}

uint64_t sub_26634CD00(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072CE0, &qword_2664E69D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_26634CD68()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v1 = sub_2664E02A8();
  [v0 setName_];

  qword_280F914A0 = v0;
}

uint64_t sub_26634CDF4()
{
  v0 = sub_2664E0788();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2664E00B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2664E0098();
  sub_2664E0768();
  v8 = _s16SiriAudioSupport14DispatchQueuesV5queue_3qos10attributesSo012OS_dispatch_F0CSS_0D00D3QoSVAhIE10AttributesVtFZ_0(0xD00000000000001DLL, 0x80000002664F5160, v7, v3);
  (*(v1 + 8))(v3, v0);
  result = (*(v5 + 8))(v7, v4);
  qword_280072CF0 = v8;
  return result;
}

uint64_t sub_26634CF8C()
{
  v0 = sub_2664E0018();
  __swift_allocate_value_buffer(v0, qword_280072CF8);
  *__swift_project_value_buffer(v0, qword_280072CF8) = 60;
  v1 = *(*(v0 - 8) + 104);

  return v1();
}

uint64_t static SiriEnvironmentWrapper.isSystemApertureEnabled()()
{
  v2 = byte_280072D10;
  if (byte_280072D10 == 2)
  {
    v2 = [objc_opt_self() isSystemApertureAvailable];
  }

  return v2 & 1;
}

uint64_t static SiriEnvironmentWrapper.mockSystemAperture(value:)(char a1)
{
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_280F914F0);
  swift_beginAccess();
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_2664DFE18();
  v8 = sub_2664E06D8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_26629C000, v7, v8, "SiriEnvironmentWrapper#mockSystemAperture This should only be called in unit tests.", v9, 2u);
    MEMORY[0x266784AD0](v9, -1, -1);
  }

  result = (*(v3 + 8))(v5, v2);
  byte_280072D10 = a1 & 1;
  return result;
}

uint64_t static SiriEnvironmentWrapper.resetSystemApertureMockedValue()()
{
  v0 = sub_2664DFE38();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v4 = __swift_project_value_buffer(v0, qword_280F914F0);
  swift_beginAccess();
  (*(v1 + 16))(v3, v4, v0);
  v5 = sub_2664DFE18();
  v6 = sub_2664E06D8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_26629C000, v5, v6, "SiriEnvironmentWrapper#mockSystemAperture This should only happen in unit tests.", v7, 2u);
    MEMORY[0x266784AD0](v7, -1, -1);
  }

  result = (*(v1 + 8))(v3, v0);
  byte_280072D10 = 2;
  return result;
}

id sub_26634D3CC(uint64_t a1, unint64_t a2)
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_280F914F0);
  swift_beginAccess();
  (*(v5 + 16))(v7, v8, v4);

  v9 = sub_2664DFE18();
  v10 = sub_2664E06E8();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v14 = v12;
    *v11 = 136446210;
    *(v11 + 4) = sub_2662A320C(a1, a2, &v14);
    _os_log_impl(&dword_26629C000, v9, v10, "SiriEnvironmentWrapper#retrieve Removing old context with refId: %{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x266784AD0](v12, -1, -1);
    MEMORY[0x266784AD0](v11, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  return _s16SiriAudioSupport0A18EnvironmentWrapperV6remove5refIdySSSg_tFZ_0(a1, a2);
}

uint64_t static SiriEnvironmentWrapper.store()()
{
  static SiriEnvironmentWrapper.retrieve()();
}

uint64_t sub_26634D618(uint64_t a1, __int16 a2)
{
  PlaybackItem.Scheme.rawValue.getter();
  sub_2664E0368();

  sub_2664E0368();
}

uint64_t sub_26634D78C(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_26634D800(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_2662A320C(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

char *sub_26634D85C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072D28, &qword_2664E6A28);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

_BYTE **sub_26634D950(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

unint64_t sub_26634D960(uint64_t a1)
{
  sub_2664DE4A8();
  sub_2662A3D78(&qword_280072C08, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v2 = sub_2664E0258();

  return sub_26634DDF8(a1, v2);
}

unint64_t sub_26634D9F8(uint64_t a1)
{
  v2 = sub_2664E0A98();

  return sub_26634DFB8(a1, v2);
}

unint64_t sub_26634DA3C(uint64_t a1)
{
  v1 = a1;
  sub_2664E0E68();
  MEMORY[0x266783E90](v1);
  v2 = sub_2664E0EB8();

  return sub_26634E080(v1, v2);
}

unint64_t sub_26634DAA8(uint64_t a1)
{
  sub_2664E0E68();
  type metadata accessor for CFString(0);
  sub_2662A3D78(&qword_2800729F8, type metadata accessor for CFString, &unk_2664E3068);
  sub_2664DF658();
  v2 = sub_2664E0EB8();

  return sub_26634E0F0(a1, v2);
}

unint64_t sub_26634DB5C(uint64_t a1)
{
  v1 = a1;
  sub_2664E0E68();
  sub_2664E0368();

  v2 = sub_2664E0EB8();

  return sub_26634E1FC(v1, v2);
}

unint64_t sub_26634DC1C(uint64_t a1)
{
  v1 = a1;
  sub_2664E0E68();
  sub_26634D618(v4, v1);
  v2 = sub_2664E0EB8();

  return sub_26634E374(v1, v2);
}

unint64_t sub_26634DD28(uint64_t a1)
{
  sub_2664E0E68();
  sub_2664E0E88();
  if (a1)
  {
    type metadata accessor for CFString(0);
    sub_2662A3D78(&qword_2800729F8, type metadata accessor for CFString, &unk_2664E3068);
    sub_2664DF658();
  }

  v2 = sub_2664E0EB8();

  return sub_26634EBD0(a1, v2);
}

unint64_t sub_26634DDF8(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_2664DE4A8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_2662A3D78(&qword_280072D20, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v15 = sub_2664E0298();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_26634DFB8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_266350228(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x266783AC0](v9, a1);
      sub_266350284(v9);
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

unint64_t sub_26634E080(unsigned __int8 a1, uint64_t a2)
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

unint64_t sub_26634E0F0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_2662A3D78(&qword_2800729F8, type metadata accessor for CFString, &unk_2664E3068);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_2664DF648();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_26634E1FC(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v13 = ~v3;
    while (1)
    {
      v5 = 0xD000000000000026;
      v6 = 0xD00000000000001DLL;
      if (*(*(v2 + 48) + v4) == 1)
      {
        v7 = "mandPrepareForSetQueue";
      }

      else
      {
        v6 = 0xD000000000000018;
        v7 = "MRMediaRemoteCommandSendQueue";
      }

      v8 = *(*(v2 + 48) + v4) ? v6 : 0xD000000000000026;
      v9 = *(*(v2 + 48) + v4) ? v7 : "led";
      if (a1)
      {
        v5 = a1 == 1 ? 0xD00000000000001DLL : 0xD000000000000018;
        v10 = a1 == 1 ? "mandPrepareForSetQueue" : "MRMediaRemoteCommandSendQueue";
      }

      else
      {
        v10 = "led";
      }

      if (v8 == v5 && (v9 | 0x8000000000000000) == (v10 | 0x8000000000000000))
      {
        break;
      }

      v11 = sub_2664E0D88();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v13;
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

unint64_t sub_26634E374(__int16 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v27 = ~v3;
    while (1)
    {
      v7 = (*(v2 + 48) + 2 * v4);
      v8 = v7[1];
      v9 = 0xEB000000006F6964;
      v10 = 0x6172706D61732D78;
      switch(*v7)
      {
        case 1:
          v10 = 0x6C70706D61732D78;
          v9 = 0xEE007473696C7961;
          break;
        case 2:
          v10 = 0xD000000000000016;
          v9 = 0x80000002664F1710;
          break;
        case 3:
          v10 = 0x656D706D61732D78;
          v9 = 0xED00006D65746964;
          break;
        case 4:
          v10 = 0xD000000000000014;
          v9 = 0x80000002664F1740;
          break;
        case 5:
          v10 = 0xD000000000000017;
          v9 = 0x80000002664F1760;
          break;
        case 6:
          v10 = 0xD000000000000018;
          v9 = 0x80000002664F1780;
          break;
        case 7:
          v10 = 0xD00000000000001FLL;
          v9 = 0x80000002664F17A0;
          break;
        case 8:
          v10 = 0xD000000000000017;
          v9 = 0x80000002664F17C0;
          break;
        case 9:
          v10 = 0xD000000000000016;
          v9 = 0x80000002664F17E0;
          break;
        case 0xA:
          v10 = 0x2D616964656D2D78;
          v9 = 0xEF7972617262696CLL;
          break;
        case 0xB:
          v10 = 0x6574616572632D78;
          v9 = 0xEF6E6F6974617473;
          break;
        case 0xC:
          v10 = 0xD000000000000011;
          v9 = 0x80000002664F1820;
          break;
        case 0xD:
          v10 = 0xD00000000000001ALL;
          v9 = 0x80000002664F1840;
          break;
        case 0xE:
          v10 = 0xD00000000000001ALL;
          v9 = 0x80000002664F1860;
          break;
        case 0xF:
          v9 = 0xE700000000000000;
          v10 = 0x6E776F6E6B6E75;
          break;
        default:
          break;
      }

      v11 = 0x6172706D61732D78;
      v12 = 0xEB000000006F6964;
      switch(a1)
      {
        case 1:
          v12 = 0xEE007473696C7961;
          if (v10 == 0x6C70706D61732D78)
          {
            goto LABEL_50;
          }

          goto LABEL_53;
        case 2:
          v12 = 0x80000002664F1710;
          if (v10 != 0xD000000000000016)
          {
            goto LABEL_53;
          }

          goto LABEL_50;
        case 3:
          v12 = 0xED00006D65746964;
          if (v10 != 0x656D706D61732D78)
          {
            goto LABEL_53;
          }

          goto LABEL_50;
        case 4:
          v12 = 0x80000002664F1740;
          if (v10 != 0xD000000000000014)
          {
            goto LABEL_53;
          }

          goto LABEL_50;
        case 5:
          v12 = 0x80000002664F1760;
          if (v10 != 0xD000000000000017)
          {
            goto LABEL_53;
          }

          goto LABEL_50;
        case 6:
          v12 = 0x80000002664F1780;
          if (v10 != 0xD000000000000018)
          {
            goto LABEL_53;
          }

          goto LABEL_50;
        case 7:
          v12 = 0x80000002664F17A0;
          if (v10 != 0xD00000000000001FLL)
          {
            goto LABEL_53;
          }

          goto LABEL_50;
        case 8:
          v12 = 0x80000002664F17C0;
          if (v10 != 0xD000000000000017)
          {
            goto LABEL_53;
          }

          goto LABEL_50;
        case 9:
          v12 = 0x80000002664F17E0;
          if (v10 != 0xD000000000000016)
          {
            goto LABEL_53;
          }

          goto LABEL_50;
        case 10:
          v11 = 0x2D616964656D2D78;
          v12 = 0xEF7972617262696CLL;
          goto LABEL_49;
        case 11:
          v12 = 0xEF6E6F6974617473;
          if (v10 != 0x6574616572632D78)
          {
            goto LABEL_53;
          }

          goto LABEL_50;
        case 12:
          v12 = 0x80000002664F1820;
          if (v10 != 0xD000000000000011)
          {
            goto LABEL_53;
          }

          goto LABEL_50;
        case 13:
          v12 = 0x80000002664F1840;
          if (v10 != 0xD00000000000001ALL)
          {
            goto LABEL_53;
          }

          goto LABEL_50;
        case 14:
          v12 = 0x80000002664F1860;
          if (v10 != 0xD00000000000001ALL)
          {
            goto LABEL_53;
          }

          goto LABEL_50;
        case 15:
          v12 = 0xE700000000000000;
          if (v10 != 0x6E776F6E6B6E75)
          {
            goto LABEL_53;
          }

          goto LABEL_50;
        default:
LABEL_49:
          if (v10 != v11)
          {
            goto LABEL_53;
          }

LABEL_50:
          if (v9 == v12)
          {
          }

          else
          {
LABEL_53:
            v13 = sub_2664E0D88();

            if ((v13 & 1) == 0)
            {
              goto LABEL_4;
            }
          }

          if (v8 > 3)
          {
            if (v8 > 5)
            {
              if (v8 == 6)
              {
                v15 = 0x62696C656C6F6877;
                v14 = 0xEC00000079726172;
              }

              else
              {
                v14 = 0xE700000000000000;
                v15 = 0x6E776F6E6B6E75;
              }
            }

            else if (v8 == 4)
            {
              v14 = 0xE400000000000000;
              v15 = 1684630645;
            }

            else
            {
              v15 = 0x6867696C746F7073;
              v14 = 0xE900000000000074;
            }
          }

          else if (v8 > 1)
          {
            if (v8 == 2)
            {
              v15 = 0x72657669746C756DLL;
              v14 = 0xEA00000000006573;
            }

            else
            {
              v14 = 0xE500000000000000;
              v15 = 0x65726F7473;
            }
          }

          else if (v8)
          {
            v14 = 0xE800000000000000;
            v15 = 0x636E797369726973;
          }

          else
          {
            v14 = 0xE600000000000000;
            v15 = 0x656369766564;
          }

          v16 = 0x62696C656C6F6877;
          if (HIBYTE(a1) != 6)
          {
            v16 = 0x6E776F6E6B6E75;
          }

          v17 = 0xEC00000079726172;
          if (HIBYTE(a1) != 6)
          {
            v17 = 0xE700000000000000;
          }

          v18 = 0x6867696C746F7073;
          if (HIBYTE(a1) == 4)
          {
            v18 = 1684630645;
          }

          v19 = 0xE900000000000074;
          if (HIBYTE(a1) == 4)
          {
            v19 = 0xE400000000000000;
          }

          if (HIBYTE(a1) <= 5u)
          {
            v16 = v18;
            v17 = v19;
          }

          v20 = 0x72657669746C756DLL;
          if (HIBYTE(a1) != 2)
          {
            v20 = 0x65726F7473;
          }

          v21 = 0xEA00000000006573;
          if (HIBYTE(a1) != 2)
          {
            v21 = 0xE500000000000000;
          }

          v22 = 0x636E797369726973;
          if (!HIBYTE(a1))
          {
            v22 = 0x656369766564;
          }

          v23 = 0xE600000000000000;
          if (HIBYTE(a1))
          {
            v23 = 0xE800000000000000;
          }

          if (HIBYTE(a1) <= 1u)
          {
            v20 = v22;
            v21 = v23;
          }

          if (HIBYTE(a1) <= 3u)
          {
            v24 = v20;
          }

          else
          {
            v24 = v16;
          }

          if (HIBYTE(a1) <= 3u)
          {
            v25 = v21;
          }

          else
          {
            v25 = v17;
          }

          if (v15 == v24 && v14 == v25)
          {

            return v4;
          }

          v6 = sub_2664E0D88();

          if (v6)
          {
            return v4;
          }

LABEL_4:
          v4 = (v4 + 1) & v27;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

unint64_t sub_26634EB04(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a2 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    sub_2662C1744(0, a3, a4);
    do
    {
      v8 = *(*(v4 + 48) + 8 * v6);
      v9 = sub_2664E0918();

      if (v9)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_26634EBD0(uint64_t a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = v2;
    v8 = ~v4;
    do
    {
      v9 = *(*(v6 + 48) + 8 * v5);
      if (v9)
      {
        if (a1)
        {
          type metadata accessor for CFString(0);
          sub_2662A3D78(&qword_2800729F8, type metadata accessor for CFString, &unk_2664E3068);
          v10 = v9;
          v11 = sub_2664DF648();

          if (v11)
          {
            return v5;
          }
        }
      }

      else if (!a1)
      {
        return v5;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_26634ECF0(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_26634ED9C(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2662A3E98(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_2664538FC();
      v11 = v19;
      goto LABEL_8;
    }

    sub_26644FFAC(v16, a4 & 1);
    v11 = sub_2662A3E98(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_2664E0DD8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + (v11 << 6);

    return sub_2663502D8(a1, v22);
  }

  else
  {
    sub_2664535A0(v11, a2, a3, a1, v21);
  }
}

_OWORD *sub_26634EEE0(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2662A3E98(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_266453AC4();
      v11 = v19;
      goto LABEL_8;
    }

    sub_266450328(v16, a4 & 1);
    v11 = sub_2662A3E98(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_2664E0DD8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);

    return sub_266318804(a1, v22);
  }

  else
  {
    sub_2664535F8(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_26634F084(uint64_t a1, uint64_t a2, char a3, double a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_2662A3E98(a1, a2);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = result;
      sub_266453E30();
      result = v19;
      goto LABEL_8;
    }

    sub_2664508BC(v16, a3 & 1);
    result = sub_2662A3E98(a1, a2);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_14:
      result = sub_2664E0DD8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * result) = a4;
  }

  else
  {
    sub_26645367C(result, a1, a2, v21, a4);
  }

  return result;
}

uint64_t sub_26634F1AC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_2662A3E98(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = result;
      sub_26645410C();
      result = v19;
      goto LABEL_8;
    }

    sub_266450E14(v16, a4 & 1);
    result = sub_2662A3E98(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_14:
      result = sub_2664E0DD8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * result) = a1;
  }

  else
  {
    sub_2662A39CC(result, a2, a3, a1, v21);
  }

  return result;
}

uint64_t sub_26634F35C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_2662A3E98(a3, a4);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = v12[3];
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      sub_26645429C();
      v13 = v21;
      goto LABEL_8;
    }

    sub_2664510DC(v18, a5 & 1);
    v13 = sub_2662A3E98(a3, a4);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_16:
      result = sub_2664E0DD8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  else
  {
    sub_2664536C4(v13, a3, a4, a1, a2, v23);
  }
}

uint64_t sub_26634F52C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void), void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = v7;
  v16 = *v7;
  v17 = sub_2662A3E98(a2, a3);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_16;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a4 & 1) == 0)
  {
    if (v24 >= v22 && (a4 & 1) == 0)
    {
      v25 = v17;
      a5();
      v17 = v25;
      goto LABEL_8;
    }

    a6(v22, a4 & 1);
    v17 = sub_2662A3E98(a2, a3);
    if ((v23 & 1) != (v26 & 1))
    {
LABEL_16:
      sub_2664E0DD8();
      __break(1u);
      return MEMORY[0x2821F96F8]();
    }
  }

LABEL_8:
  v27 = *v11;
  if (v23)
  {
    *(*(v27 + 56) + 8 * v17) = a1;

    return MEMORY[0x2821F96F8]();
  }

  a7(v17, a2, a3, a1, v27);
}

_OWORD *sub_26634F694(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_26634DAA8(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_266454598();
      v8 = v16;
      goto LABEL_8;
    }

    sub_266451660(v13, a3 & 1);
    v8 = sub_26634DAA8(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for CFString(0);
      result = sub_2664E0DD8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = (v18[7] + 32 * v8);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);

    return sub_266318804(a1, v19);
  }

  else
  {
    sub_266453714(v8, a2, a1, v18);

    return a2;
  }
}

unint64_t sub_26634F7D4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_26634DB5C(a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_266454718();
      v11 = v19;
      goto LABEL_8;
    }

    sub_266451940(v16, a4 & 1);
    v11 = sub_26634DB5C(a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_2664E0DD8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 16 * v11);
    *v22 = a1;
    v22[1] = a2;
  }

  else
  {

    return sub_26645377C(v11, a3, a1, a2, v21);
  }
}

uint64_t sub_26634F94C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void), void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = v7;
  v16 = *v7;
  v17 = sub_2662A3E98(a2, a3);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_16;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a4 & 1) == 0)
  {
    if (v24 >= v22 && (a4 & 1) == 0)
    {
      v25 = v17;
      a5();
      v17 = v25;
      goto LABEL_8;
    }

    a6(v22, a4 & 1);
    v17 = sub_2662A3E98(a2, a3);
    if ((v23 & 1) != (v26 & 1))
    {
LABEL_16:
      result = sub_2664E0DD8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v27 = *v11;
  if (v23)
  {
    *(*(v27 + 56) + 8 * v17) = a1;
  }

  else
  {
    a7(v17, a2, a3, a1, v27);
  }
}

uint64_t sub_26634FAB8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2662A3E98(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_2664549F4();
      v11 = v19;
      goto LABEL_8;
    }

    sub_266451EFC(v16, a4 & 1);
    v11 = sub_2662A3E98(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_2664E0DD8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_2662A39CC(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_26634FC54(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(void), uint64_t (*a7)(void), void (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = v8;
  v16 = *v8;
  v18 = sub_2662A3E98(a2, a3);
  v19 = *(v16 + 16);
  v20 = (v17 & 1) == 0;
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
    goto LABEL_17;
  }

  v22 = v17;
  v23 = *(v16 + 24);
  if (v23 < v21 || (a4 & 1) == 0)
  {
    if (v23 >= v21 && (a4 & 1) == 0)
    {
      a5();
      goto LABEL_7;
    }

    a6();
    v32 = sub_2662A3E98(a2, a3);
    if ((v22 & 1) == (v33 & 1))
    {
      v18 = v32;
      v24 = *v11;
      if (v22)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_2664E0DD8();
    __break(1u);
    return result;
  }

LABEL_7:
  v24 = *v11;
  if (v22)
  {
LABEL_8:
    v25 = *(v24 + 56);
    v26 = a7(0);
    v27 = *(v26 - 8);
    v28 = *(v27 + 40);
    v29 = v26;
    v30 = v25 + *(v27 + 72) * v18;

    return v28(v30, a1, v29);
  }

LABEL_13:
  a8(v18, a2, a3, a1, v24);
}

unint64_t sub_26634FE10(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_2662AEB4C(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_266454F94();
      v9 = v17;
      goto LABEL_8;
    }

    sub_26645284C(v14, a3 & 1);
    v9 = sub_2662AEB4C(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = sub_2664E0DD8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * v9) = a1;
  }

  else
  {

    return sub_266453890(v9, a2, a1, v19);
  }
}

id _s16SiriAudioSupport0A18EnvironmentWrapperV6remove5refIdySSSg_tFZ_0(uint64_t a1, unint64_t a2)
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v9 = __swift_project_value_buffer(v4, qword_280F914F0);
    swift_beginAccess();
    (*(v5 + 16))(v8, v9, v4);

    v10 = sub_2664DFE18();
    v11 = sub_2664E06C8();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v15[0] = v13;
      *v12 = 136446210;
      *(v12 + 4) = sub_2662A320C(a1, a2, v15);
      _os_log_impl(&dword_26629C000, v10, v11, "SiriEnvironmentWrapper#remove Removing SiriEnvironment for current request, refId: %{public}s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x266784AD0](v13, -1, -1);
      MEMORY[0x266784AD0](v12, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    if (qword_280F91498 != -1)
    {
      swift_once();
    }

    v14 = qword_280F914A0;
    [qword_280F914A0 lock];
    if (qword_280F914B0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    sub_266407910(a1, a2);
    swift_endAccess();

    return [v14 unlock];
  }

  return result;
}

id sub_2663503CC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000015 && 0x80000002664F1EB0 == a2;
  if (v3 || (sub_2664E0D88() & 1) != 0)
  {
    v6 = [objc_opt_self() featureValueWithDouble_];
    return v6;
  }

  if (a1 == 0x3365707974 && a2 == 0xE500000000000000 || (sub_2664E0D88() & 1) != 0)
  {
    v6 = [objc_opt_self() featureValueWithDouble_];
    return v6;
  }

  if (a1 == 0x31325F7176 && a2 == 0xE500000000000000 || (sub_2664E0D88() & 1) != 0)
  {
    v6 = [objc_opt_self() featureValueWithDouble_];
    return v6;
  }

  if (a1 == 0xD000000000000014 && 0x80000002664F0ED0 == a2 || (sub_2664E0D88() & 1) != 0)
  {
    v6 = [objc_opt_self() featureValueWithDouble_];
    return v6;
  }

  if (a1 == 0xD000000000000022 && 0x80000002664F1ED0 == a2 || (sub_2664E0D88() & 1) != 0)
  {
    v6 = [objc_opt_self() featureValueWithDouble_];
    return v6;
  }

  if (a1 == 0xD000000000000016 && 0x80000002664F0EB0 == a2 || (sub_2664E0D88() & 1) != 0)
  {
    v6 = [objc_opt_self() featureValueWithDouble_];
    return v6;
  }

  if (a1 == 0x343165707974 && a2 == 0xE600000000000000 || (sub_2664E0D88() & 1) != 0)
  {
    v6 = [objc_opt_self() featureValueWithDouble_];
    return v6;
  }

  if (a1 == 0x383165707974 && a2 == 0xE600000000000000 || (sub_2664E0D88() & 1) != 0)
  {
    v6 = [objc_opt_self() featureValueWithDouble_];
    return v6;
  }

  if (a1 == 0x303165707974 && a2 == 0xE600000000000000 || (sub_2664E0D88() & 1) != 0)
  {
    v6 = [objc_opt_self() featureValueWithDouble_];
    return v6;
  }

  if (a1 == 0x373165707974 && a2 == 0xE600000000000000 || (sub_2664E0D88() & 1) != 0)
  {
    v6 = [objc_opt_self() featureValueWithDouble_];
    return v6;
  }

  if (a1 == 0xD000000000000023 && 0x80000002664F1F00 == a2 || (sub_2664E0D88() & 1) != 0)
  {
    v6 = [objc_opt_self() featureValueWithDouble_];
    return v6;
  }

  if (a1 == 0x5F74726F70707573 && a2 == 0xEC00000067616C66 || (sub_2664E0D88() & 1) != 0)
  {
    v6 = [objc_opt_self() featureValueWithDouble_];
    return v6;
  }

  if (a1 == 0xD000000000000014 && 0x80000002664F0E30 == a2 || (sub_2664E0D88() & 1) != 0)
  {
    v6 = [objc_opt_self() featureValueWithDouble_];
    return v6;
  }

  if (a1 == 0xD000000000000020 && 0x80000002664F1F30 == a2 || (sub_2664E0D88() & 1) != 0)
  {
    v6 = [objc_opt_self() featureValueWithDouble_];
    return v6;
  }

  if (a1 == 0xD000000000000014 && 0x80000002664F0E50 == a2 || (sub_2664E0D88() & 1) != 0)
  {
    v6 = [objc_opt_self() featureValueWithDouble_];
    return v6;
  }

  if (a1 == 0xD00000000000001DLL && 0x80000002664F1F60 == a2 || (sub_2664E0D88() & 1) != 0)
  {

    v8 = sub_2664E02A8();

    v9 = [objc_opt_self() featureValueWithString_];

    return v9;
  }

  else
  {
    if (a1 == 0xD000000000000017 && 0x80000002664F0E70 == a2 || (sub_2664E0D88() & 1) != 0)
    {
      v6 = [objc_opt_self() featureValueWithDouble_];
      return v6;
    }

    if (a1 == 0x3065707974 && a2 == 0xE500000000000000 || (sub_2664E0D88() & 1) != 0)
    {
      v6 = [objc_opt_self() featureValueWithDouble_];
      return v6;
    }

    if (a1 == 0x3265707974 && a2 == 0xE500000000000000 || (sub_2664E0D88() & 1) != 0)
    {
      v6 = [objc_opt_self() featureValueWithDouble_];
      return v6;
    }

    if (a1 == 0x5F6E726F63696E75 && a2 == 0xEC00000067616C66 || (sub_2664E0D88() & 1) != 0)
    {
      v6 = [objc_opt_self() featureValueWithDouble_];
      return v6;
    }

    if (a1 == 0xD00000000000001ELL && 0x80000002664F1F80 == a2 || (sub_2664E0D88() & 1) != 0)
    {
      v6 = [objc_opt_self() featureValueWithDouble_];
      return v6;
    }

    if (a1 == 0xD000000000000017 && 0x80000002664F1FA0 == a2 || (sub_2664E0D88() & 1) != 0)
    {
      v6 = [objc_opt_self() featureValueWithDouble_];
      return v6;
    }

    if (a1 == 0xD000000000000019 && 0x80000002664F1FC0 == a2 || (sub_2664E0D88() & 1) != 0)
    {
      v6 = [objc_opt_self() featureValueWithDouble_];
      return v6;
    }

    if (a1 == 0xD000000000000016 && 0x80000002664F1FE0 == a2 || (sub_2664E0D88() & 1) != 0)
    {
      v6 = [objc_opt_self() featureValueWithDouble_];
      return v6;
    }

    if (a1 == 0x3565707974 && a2 == 0xE500000000000000 || (sub_2664E0D88() & 1) != 0)
    {
      v6 = [objc_opt_self() featureValueWithDouble_];
      return v6;
    }

    if (a1 == 0xD000000000000019 && 0x80000002664F0E90 == a2 || (sub_2664E0D88() & 1) != 0)
    {
      v6 = [objc_opt_self() featureValueWithDouble_];
      return v6;
    }

    if (a1 == 0x363165707974 && a2 == 0xE600000000000000 || (sub_2664E0D88() & 1) != 0)
    {
      v6 = [objc_opt_self() featureValueWithDouble_];
      return v6;
    }

    if (a1 == 0x3465707974 && a2 == 0xE500000000000000 || (sub_2664E0D88() & 1) != 0)
    {
      v6 = [objc_opt_self() featureValueWithDouble_];
      return v6;
    }

    if (a1 == 0x3665707974 && a2 == 0xE500000000000000 || (sub_2664E0D88() & 1) != 0)
    {
      v6 = [objc_opt_self() featureValueWithDouble_];
      return v6;
    }

    if (a1 == 0x3165707974 && a2 == 0xE500000000000000 || (sub_2664E0D88() & 1) != 0)
    {
      v6 = [objc_opt_self() featureValueWithDouble_];
      return v6;
    }

    if (a1 == 0xD00000000000001ALL && 0x80000002664F2000 == a2 || (sub_2664E0D88() & 1) != 0)
    {
      v6 = [objc_opt_self() featureValueWithDouble_];
      return v6;
    }

    if (a1 == 0xD00000000000001CLL && 0x80000002664F2020 == a2 || (sub_2664E0D88() & 1) != 0)
    {
      v6 = [objc_opt_self() featureValueWithDouble_];
      return v6;
    }

    if (a1 == 0xD000000000000017 && 0x80000002664F2040 == a2 || (sub_2664E0D88() & 1) != 0)
    {
      v6 = [objc_opt_self() featureValueWithDouble_];
      return v6;
    }

    return 0;
  }
}

uint64_t sub_266351148()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2663511A4()
{
  if (*(v0 + 40))
  {
    v1 = *(v0 + 40);
  }

  else
  {
    swift_unownedRetainStrong();
    swift_unownedRetain();
    swift_unownedRetain();

    sub_26635122C(v0);
    v1 = v2;
    swift_unownedRelease();
    swift_unownedRelease();
    *(v0 + 40) = v1;
  }

  return v1;
}

void sub_26635122C(uint64_t a1)
{
  v1 = *(swift_unownedRetainStrong() + 16);
  swift_unknownObjectRetain();

  v2 = sub_2664E02A8();
  v3 = [v1 featureValueForName_];

  if (v3)
  {
    swift_unknownObjectRelease();
    v4 = [v3 dictionaryValue];

    sub_266319BF4();
    v5 = sub_2664E01C8();

    sub_266351324(v5);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_266351324(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072D38, qword_2664E6BF0);
    v2 = sub_2664E0C98();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v12 = __clz(__rbit64(v5)) | (v9 << 6);
    sub_266350228(*(a1 + 48) + 40 * v12, v29);
    v31 = *(*(a1 + 56) + 8 * v12);
    v25 = v29[0];
    v26 = v29[1];
    v27 = v30;
    v13 = v31;
    swift_dynamicCast();
    v23 = 0;
    v24 = 1;
    result = MEMORY[0x266783600](v13, &v23);
    if (v24)
    {
      goto LABEL_28;
    }

    v14 = v23;

    v15 = v28;
    result = sub_2664E0E58();
    v16 = -1 << *(v2 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v7 + 8 * (v17 >> 6))) == 0)
    {
      v19 = 0;
      v20 = (63 - v16) >> 6;
      while (++v18 != v20 || (v19 & 1) == 0)
      {
        v21 = v18 == v20;
        if (v18 == v20)
        {
          v18 = 0;
        }

        v19 |= v21;
        v22 = *(v7 + 8 * v18);
        if (v22 != -1)
        {
          v10 = __clz(__rbit64(~v22)) + (v18 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_27;
    }

    v10 = __clz(__rbit64((-1 << v17) & ~*(v7 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    *(*(v2 + 48) + 8 * v10) = v15;
    *(*(v2 + 56) + 8 * v10) = v14;
    ++*(v2 + 16);
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v9;
    if (v5)
    {
      v9 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_266351688()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_2663516EC(unint64_t a1, uint64_t a2)
{
  v23[1] = *MEMORY[0x277D85DE8];
  v5 = a1 >> 62;
  if (a1 >> 62)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072D30, &qword_2664E6BE8);
    sub_2664E0C58();
  }

  else
  {

    sub_2664E0D98();
  }

  v6 = objc_allocWithZone(MEMORY[0x277CBFEB0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072D30, &qword_2664E6BE8);
  v7 = sub_2664E0488();

  v8 = [v6 initWithFeatureProviderArray_];

  v9 = *(v2 + 16);
  v23[0] = 0;
  v10 = [v9 predictionsFromBatch:v8 options:a2 error:v23];
  v11 = v23[0];
  if (v10)
  {
    v12 = v10;
    v23[0] = MEMORY[0x277D84F90];
    if (v5)
    {
      v13 = sub_2664E0A68();
    }

    else
    {
      v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v15 = v11;
    sub_2663519BC(v13);
    v16 = [v12 count];
    if ((v16 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    v17 = v16;
    if (v16)
    {
      v18 = 0;
      do
      {
        v19 = [v12 featuresAtIndex_];
        type metadata accessor for PlayMediaAppSelectionOutput();
        v20 = swift_allocObject();
        *(v20 + 32) = 1;
        *(v20 + 40) = 0;
        *(v20 + 16) = v19;
        *(v20 + 24) = 0;
        swift_unknownObjectRetain();

        MEMORY[0x266783490](v21);
        if (*((v23[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v22 = *((v23[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_2664E04C8();
        }

        ++v18;
        sub_2664E0518();

        swift_unknownObjectRelease();
      }

      while (v17 != v18);
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v14 = v23[0];
    sub_2664DE1A8();

    swift_willThrow();
  }
}

uint64_t sub_2663519BC(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
LABEL_8:
    sub_2664E0A68();
LABEL_9:
    result = sub_2664E0B68();
    v3 = result;
    goto LABEL_10;
  }

  if (a1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_9;
  }

LABEL_10:
  *v1 = v3;
  return result;
}

uint64_t dispatch thunk of SiriAudioSessionManaging.currentSessionID(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_266351BD4;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_266351BD4(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t sub_266351D08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a2;
  v27 = a1;
  v4 = sub_2664DFE08();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - v9;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072D40, &qword_2664E6D78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072D48, &qword_2664E6D80);
  v11 = sub_2664E0318();
  v24 = v12;
  v25 = v11;
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  v13 = qword_280F91D48;
  sub_2664DFDE8();
  (*(v5 + 16))(v8, v10, v4);
  v14 = (*(v5 + 80) + 33) & ~*(v5 + 80);
  v15 = (v6 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  *(v16 + 16) = "appSelectionSignalsSignal";
  *(v16 + 24) = 25;
  *(v16 + 32) = 2;
  (*(v5 + 32))(v16 + v14, v8, v4);
  v17 = (v16 + v15);
  *v17 = v26;
  v17[1] = a3;

  v18 = sub_2664E0848();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724D8, &unk_2664E3920);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_2664E36F0;
  *(v19 + 56) = MEMORY[0x277D837D0];
  *(v19 + 64) = sub_2662C4094();
  v20 = v24;
  *(v19 + 32) = v25;
  *(v19 + 40) = v20;
  sub_2664DFDC8(v18, &dword_26629C000, v13, "appSelectionSignalsSignal", 25, 2, v10, "name=%{signpost.telemetry:string1,public}@ enableTelemetry=YES ", 63, 2, v19);

  v21 = swift_allocObject();
  *(v21 + 16) = sub_266352A18;
  *(v21 + 24) = v16;

  sub_26635202C(sub_266352AC0, v21, v27);

  return (*(v5 + 8))(v10, v4);
}

uint64_t sub_26635202C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = a1;
  v32 = a2;
  v4 = sub_2664DE438();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v29 - v9;
  v11 = sub_2664DFE38();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F91468 != -1)
  {
    swift_once();
  }

  v30 = sub_26632958C(1016);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v11, qword_280F914F0);
  swift_beginAccess();
  (*(v12 + 16))(v14, v15, v11);
  v16 = sub_2664DFE18();
  v17 = sub_2664E06E8();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v29 = v8;
    v19 = v10;
    v20 = a3;
    v21 = v4;
    v22 = v18;
    *v18 = 0;
    _os_log_impl(&dword_26629C000, v16, v17, "NowPlayingStateSignal#signal", v18, 2u);
    v23 = v22;
    v4 = v21;
    a3 = v20;
    v10 = v19;
    v8 = v29;
    MEMORY[0x266784AD0](v23, -1, -1);
  }

  (*(v12 + 8))(v14, v11);
  v24 = swift_allocObject();
  v25 = v31;
  v24[2] = v30;
  v24[3] = v25;
  v24[4] = v32;

  sub_2664DE428();
  (*(v5 + 16))(v8, v10, v4);
  v26 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = sub_266352BC8;
  *(v27 + 24) = v24;
  (*(v5 + 32))(v27 + v26, v8, v4);

  sub_266352C88(a3, sub_266352C14, v27);

  return (*(v5 + 8))(v10, v4);
}

uint64_t sub_2663523F4(int a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  v7 = sub_2664DE438();
  v25 = *(v7 - 8);
  v26 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2664DFE38();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v10, qword_280F914F0);
  swift_beginAccess();
  (*(v11 + 16))(v13, v14, v10);
  v15 = sub_2664DFE18();
  v16 = sub_2664E06E8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v24[1] = a4;
    v18 = a2;
    v19 = v17;
    *v17 = 0;
    _os_log_impl(&dword_26629C000, v15, v16, "NowPlayingStateSignal#signal got playbackState", v17, 2u);
    v20 = v19;
    a2 = v18;
    MEMORY[0x266784AD0](v20, -1, -1);
  }

  (*(v11 + 8))(v13, v10);
  sub_2664DE428();
  sub_2664DE388();
  v22 = v21;
  (*(v25 + 8))(v9, v26);
  v27[3] = &type metadata for NowPlayingStateSignal;
  v27[4] = &off_2877EA5C0;
  LODWORD(v27[0]) = a1;
  v27[1] = v22;
  a2(v27);
  return __swift_destroy_boxed_opaque_existential_1Tm(v27);
}

uint64_t sub_2663526B8()
{
  v0 = sub_2662C3A68(&unk_2877E17E0);
  result = sub_2662C1834(&unk_2877E1800);
  qword_280F91C68 = v0;
  return result;
}

uint64_t sub_2663526F8(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_280F914F0);
  swift_beginAccess();
  (*(v5 + 16))(v7, v8, v4);
  v9 = sub_2664DFE18();
  v10 = sub_2664E06C8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67109120;
    *(v11 + 4) = a1;
    _os_log_impl(&dword_26629C000, v9, v10, "NowPlayingAppSignal#NowPlayingStateClient#nowPlayingState as: %u", v11, 8u);
    MEMORY[0x266784AD0](v11, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  return a2(a1);
}

uint64_t sub_2663528D4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t getEnumTagSinglePayload for NowPlayingStateSignal(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for NowPlayingStateSignal(uint64_t result, int a2, int a3)
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

uint64_t sub_2663529B0()
{
  if (qword_280F8FD88 != -1)
  {
    swift_once();
  }
}

uint64_t sub_266352A18()
{
  sub_2664DFE08();

  return sub_2662C4878();
}

unint64_t sub_266352AC8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073600, &unk_2664E37B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2664E36F0;
  *(inited + 32) = 0x6979616C50776F6ELL;
  *(inited + 40) = 0xEF6574617453676ELL;
  v1 = sub_2664E0D48();
  MEMORY[0x2667833B0](v1);

  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = 0x6574617473;
  *(inited + 56) = 0xE500000000000000;
  v2 = sub_2663854AC(inited);
  swift_setDeallocating();
  sub_266352EF4(inited + 32);
  return v2;
}

uint64_t sub_266352BC8(uint64_t a1)
{
  v2 = *(v1 + 24);
  if (*(v1 + 16))
  {
    v3 = a1;
    sub_26636B8D0();
    a1 = v3;
  }

  return v2(a1);
}

uint64_t sub_266352C14(int a1)
{
  v3 = *(sub_2664DE438() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_2663523F4(a1, v4, v5, v6);
}

void sub_266352C88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2664DFE38();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &aBlock[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v5, qword_280F914F0);
  swift_beginAccess();
  (*(v6 + 16))(v8, v9, v5);
  v10 = sub_2664DFE18();
  v11 = sub_2664E06C8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_26629C000, v10, v11, "NowPlayingAppSignal#NowPlayingStateClient#nowPlayingState...", v12, 2u);
    MEMORY[0x266784AD0](v12, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  aBlock[4] = sub_266352EEC;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2663528D4;
  aBlock[3] = &block_descriptor_14;
  v14 = _Block_copy(aBlock);

  MRMediaRemoteGetNowPlayingApplicationPlaybackState();
  _Block_release(v14);
}

uint64_t sub_266352EF4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800734F0, &unk_2664E3660);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t LibraryProvider.init(mediaLibrary:cloudController:favoriteEntityProvider:musicPlayerController:playlistQuery:songQuery:albumQuery:)@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = a1;
  sub_2662A5550(a2, (a9 + 1));
  sub_2662A5550(a3, (a9 + 6));
  a9[11] = a4;
  a9[12] = a5;
  a9[13] = a6;
  a9[14] = a7;
  a9[15] = a8;
  a9[16] = a10;
  a9[17] = a11;
  v19 = objc_allocWithZone(MEMORY[0x277CDD348]);
  v20 = a1;
  v21 = a4;

  v22 = [v19 init];
  if (qword_280F8F800 != -1)
  {
    swift_once();
  }

  v23 = qword_280F8F808;
  v28[3] = type metadata accessor for MultiUserConnectionProvider();
  v28[4] = &protocol witness table for MultiUserConnectionProvider;
  v28[0] = v23;
  type metadata accessor for AccountProvider();
  v24 = swift_allocObject();

  v25 = sub_266360778(v22, v28, v24);

  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  result = __swift_destroy_boxed_opaque_existential_1Tm(a2);
  a9[18] = v25;
  return result;
}

uint64_t LibraryProvider.library(with:completion:)(uint64_t a1, unint64_t a2, char *a3, unint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  v63 = a5;
  v58 = a3;
  v57 = a1;
  v9 = sub_2664DFE38();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v61 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v59 = &v57 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v57 - v15;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v9, qword_280F914F0);
  swift_beginAccess();
  v18 = *(v10 + 16);
  v65 = v9;
  v18(v16, v17, v9);
  v19 = sub_2664DFE18();
  v20 = sub_2664E06E8();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v60 = a2;
    v22 = a4;
    v23 = a6;
    v24 = v21;
    *v21 = 0;
    _os_log_impl(&dword_26629C000, v19, v20, "LibraryProvider#library...", v21, 2u);
    v25 = v24;
    a6 = v23;
    a4 = v22;
    a2 = v60;
    MEMORY[0x266784AD0](v25, -1, -1);
  }

  v26 = *(v10 + 8);
  v27 = v65;
  v62 = v10 + 8;
  v26(v16, v65);
  if (a2 != 1 && a2 | a4)
  {
    v33 = v59;
    v18(v59, v17, v27);

    v34 = sub_2664DFE18();
    v35 = a2;
    v36 = sub_2664E06E8();

    v37 = os_log_type_enabled(v34, v36);
    v60 = a2;
    if (v37)
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *&v67[0] = v39;
      *v38 = 136315394;
      if (v35)
      {
        v40 = v57;
      }

      else
      {
        v40 = 0;
      }

      v41 = a6;
      if (v35)
      {
        v42 = v35;
      }

      else
      {
        v42 = 0xE000000000000000;
      }

      v43 = sub_2662A320C(v40, v42, v67);

      *(v38 + 4) = v43;
      *(v38 + 12) = 2080;
      if (a4)
      {
        v44 = v58;
      }

      else
      {
        v44 = 0;
      }

      if (a4)
      {
        v45 = a4;
      }

      else
      {
        v45 = 0xE000000000000000;
      }

      v46 = sub_2662A320C(v44, v45, v67);
      a6 = v41;

      *(v38 + 14) = v46;
      _os_log_impl(&dword_26629C000, v34, v36, "LibraryProvider#library using multiuser identity for library, requestSharedUserID: %s,  sharedUserIdFromPlayableMusicAccount: %s", v38, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v39, -1, -1);
      MEMORY[0x266784AD0](v38, -1, -1);

      v47 = v59;
      v48 = v65;
    }

    else
    {

      v47 = v33;
      v48 = v27;
    }

    v26(v47, v48);
    sub_2663608CC(v64, v67);
    v49 = swift_allocObject();
    *(v49 + 16) = v63;
    *(v49 + 24) = a6;
    v50 = v67[7];
    *(v49 + 128) = v67[6];
    *(v49 + 144) = v50;
    *(v49 + 160) = v67[8];
    *(v49 + 176) = v68;
    v51 = v67[3];
    *(v49 + 64) = v67[2];
    *(v49 + 80) = v51;
    v52 = v67[5];
    *(v49 + 96) = v67[4];
    *(v49 + 112) = v52;
    v53 = v67[1];
    *(v49 + 32) = v67[0];
    *(v49 + 48) = v53;
    v54 = objc_opt_self();

    v55 = [v54 currentDeviceInfo];
    v56 = [v55 supportsMultipleITunesAccounts];

    if (v56)
    {
      sub_26633393C(v57, v60, v58, a4, sub_266360904, v49);
    }

    else
    {
      if (qword_280071AD0 != -1)
      {
        swift_once();
      }

      v66[0] = 0x755F656C676E6973;
      v66[1] = 0xEB00000000726573;
      (*(*off_280072BE8 + 160))(v66, sub_266333820, 0, 0, 1, sub_266360904, v49);
    }
  }

  else
  {
    v28 = v61;
    v18(v61, v17, v27);
    v29 = sub_2664DFE18();
    v30 = sub_2664E06E8();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_26629C000, v29, v30, "LibraryProvider#library no sharedUserIdInfo found, using default library", v31, 2u);
      MEMORY[0x266784AD0](v31, -1, -1);
    }

    v26(v28, v65);
    return v63(*v64);
  }
}

void sub_2663537E0(void **a1, void (*a2)(void *), uint64_t a3, void **a4)
{
  v8 = sub_2664DFE38();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v46 - v15;
  MEMORY[0x28223BE20](v14);
  v19 = &v46 - v18;
  v20 = *a1;
  if (*a1 >= 2)
  {
    v46 = a4;
    v47 = v17;
    v49 = a3;
    v50 = a2;
    v25 = qword_280F914E8;
    v26 = v20;
    if (v25 != -1)
    {
      swift_once();
    }

    v27 = __swift_project_value_buffer(v8, qword_280F914F0);
    swift_beginAccess();
    v48 = *(v9 + 16);
    v48(v16, v27, v8);
    v28 = sub_2664DFE18();
    v29 = sub_2664E06E8();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = v26;
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_26629C000, v28, v29, "LibraryProvider#library resolved user identity, building library", v31, 2u);
      v32 = v31;
      v26 = v30;
      MEMORY[0x266784AD0](v32, -1, -1);
    }

    v33 = *(v9 + 8);
    v33(v16, v8);
    v34 = [objc_opt_self() deviceMediaLibraryWithUserIdentity_];
    if (v34)
    {
      v35 = v34;
      v48(v12, v27, v8);
      v36 = sub_2664DFE18();
      v37 = sub_2664E06E8();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = v26;
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_26629C000, v36, v37, "LibraryProvider#library resolved library with identity", v39, 2u);
        v40 = v39;
        v26 = v38;
        MEMORY[0x266784AD0](v40, -1, -1);
      }

      v33(v12, v8);
      v50(v35);
    }

    else
    {
      v48(v47, v27, v8);
      v41 = sub_2664DFE18();
      v42 = sub_2664E06D8();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = v26;
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&dword_26629C000, v41, v42, "LibraryProvider#library unexpected error resolving library with identity", v44, 2u);
        v45 = v44;
        v26 = v43;
        MEMORY[0x266784AD0](v45, -1, -1);
      }

      v33(v47, v8);
      v50(*v46);
    }
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v21 = __swift_project_value_buffer(v8, qword_280F914F0);
    swift_beginAccess();
    (*(v9 + 16))(v19, v21, v8);
    v22 = sub_2664DFE18();
    v23 = sub_2664E06D8();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_26629C000, v22, v23, "LibraryProvider#library unexpected error resolving library", v24, 2u);
      MEMORY[0x266784AD0](v24, -1, -1);
    }

    (*(v9 + 8))(v19, v8);
    a2(*a4);
  }
}

uint64_t sub_266353CE8(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2664DFE38();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v12 = a1[1];
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v8, qword_280F914F0);
  swift_beginAccess();
  (*(v9 + 16))(v11, v14, v8);
  v15 = sub_2664DFE18();
  v16 = sub_2664E06E8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v30 = v13;
    v18 = v12;
    v19 = a3;
    v20 = a4;
    v21 = a2;
    v22 = v17;
    *v17 = 0;
    _os_log_impl(&dword_26629C000, v15, v16, "LibraryProvider#cloudController using multiuser identity for cloud controller", v17, 2u);
    v23 = v22;
    a2 = v21;
    a4 = v20;
    a3 = v19;
    v12 = v18;
    v13 = v30;
    MEMORY[0x266784AD0](v23, -1, -1);
  }

  (*(v9 + 8))(v11, v8);
  v33[0] = v13;
  v33[1] = v12;
  sub_2663608CC(a4, v31);
  v24 = swift_allocObject();
  *(v24 + 16) = a2;
  *(v24 + 24) = a3;
  v25 = v31[7];
  *(v24 + 128) = v31[6];
  *(v24 + 144) = v25;
  *(v24 + 160) = v31[8];
  *(v24 + 176) = v32;
  v26 = v31[3];
  *(v24 + 64) = v31[2];
  *(v24 + 80) = v26;
  v27 = v31[5];
  *(v24 + 96) = v31[4];
  *(v24 + 112) = v27;
  v28 = v31[1];
  *(v24 + 32) = v31[0];
  *(v24 + 48) = v28;

  sub_266411148(v33, sub_266367300);
}

uint64_t sub_266353F84(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v7 = sub_2664DFE38();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v23 - v12;
  sub_2662A7224(a1, &v23, &qword_280072D50, &unk_2664E6F18);
  if (v24)
  {
    sub_2662A8618(&v23, v25);
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v14 = __swift_project_value_buffer(v7, qword_280F914F0);
    swift_beginAccess();
    (*(v8 + 16))(v11, v14, v7);
    v15 = sub_2664DFE18();
    v16 = sub_2664E06E8();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_26629C000, v15, v16, "LibraryProvider#cloudController resolved mpCloudController with identity", v17, 2u);
      MEMORY[0x266784AD0](v17, -1, -1);
    }

    (*(v8 + 8))(v11, v7);
    a2(v25);
    return __swift_destroy_boxed_opaque_existential_1Tm(v25);
  }

  else
  {
    sub_2662A9238(&v23, &qword_280072D50, &unk_2664E6F18);
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v19 = __swift_project_value_buffer(v7, qword_280F914F0);
    swift_beginAccess();
    (*(v8 + 16))(v13, v19, v7);
    v20 = sub_2664DFE18();
    v21 = sub_2664E06D8();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_26629C000, v20, v21, "LibraryProvider#cloudController unexpected error resolving user identity", v22, 2u);
      MEMORY[0x266784AD0](v22, -1, -1);
    }

    (*(v8 + 8))(v13, v7);
    return a2(a4 + 8);
  }
}

uint64_t LibraryProvider.mediaQuery(with:for:shouldAllowNonLibraryContent:completion:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, int a6, void (*a7)(void), uint64_t a8)
{
  *(&v66 + 1) = a2;
  v69 = a7;
  v70 = a8;
  v64 = a6;
  *&v66 = a4;
  v62 = a1;
  v63 = a3;
  v9 = sub_2664DFE38();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v68 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v65 = &v60 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v61 = &v60 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v60 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v60 = &v60 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v60 - v22;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v24 = __swift_project_value_buffer(v9, qword_280F914F0);
  swift_beginAccess();
  v25 = v24;
  v71 = *(v10 + 16);
  v71(v23, v24, v9);
  v26 = sub_2664DFE18();
  v27 = sub_2664E06E8();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_26629C000, v26, v27, "LibraryProvider#mediaQuery...", v28, 2u);
    MEMORY[0x266784AD0](v28, -1, -1);
  }

  v29 = *(v10 + 8);
  v29(v23, v9);
  v30 = swift_allocObject();
  if (a5 == 6)
  {
    v44 = v61;
    v71(v61, v25, v9);
    v45 = sub_2664DFE18();
    v46 = sub_2664E06E8();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_26629C000, v45, v46, "LibraryProvider#mediaQuery playlist", v47, 2u);
      MEMORY[0x266784AD0](v47, -1, -1);
    }

    v48 = (v29)(v44, v9);
    v36 = v67;
    v43 = v67[12](v48);
    goto LABEL_17;
  }

  if (a5 == 1)
  {
    v71(v19, v25, v9);
    v39 = sub_2664DFE18();
    v40 = sub_2664E06E8();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_26629C000, v39, v40, "LibraryProvider#mediaQuery album", v41, 2u);
      MEMORY[0x266784AD0](v41, -1, -1);
    }

    v42 = (v29)(v19, v9);
    v36 = v67;
    v43 = v67[16](v42);
LABEL_17:
    *(v30 + 16) = v43;
    v38 = v68;
    goto LABEL_21;
  }

  if (a5)
  {
    v71(v65, v25, v9);
    v49 = sub_2664DFE18();
    v50 = sub_2664E06E8();
    v51 = os_log_type_enabled(v49, v50);
    v38 = v68;
    if (v51)
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_26629C000, v49, v50, "LibraryProvider#mediaQuery default, empty", v52, 2u);
      MEMORY[0x266784AD0](v52, -1, -1);
    }

    v29(v65, v9);
    *(v30 + 16) = [objc_allocWithZone(MEMORY[0x277CD5E38]) init];
    v36 = v67;
  }

  else
  {
    v31 = v60;
    v71(v60, v25, v9);
    v32 = sub_2664DFE18();
    v33 = sub_2664E06E8();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 67109120;
      *(v34 + 4) = v64 & 1;
      _os_log_impl(&dword_26629C000, v32, v33, "LibraryProvider#mediaQuery title, shouldAllowNonLibraryContent: %{BOOL}d", v34, 8u);
      MEMORY[0x266784AD0](v34, -1, -1);
    }

    v35 = (v29)(v31, v9);
    v36 = v67;
    v37 = v67[14](v35);
    *(v30 + 16) = v37;
    [v37 setShouldIncludeNonLibraryEntities_];
    [v37 setIgnoreSystemFilterPredicates_];
    v38 = v68;
  }

LABEL_21:
  v53 = *(&v66 + 1);
  if (*(&v66 + 1) == 1 || v66 == 0)
  {
    v71(v38, v25, v9);
    v54 = sub_2664DFE18();
    v55 = sub_2664E06E8();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_26629C000, v54, v55, "LibraryProvider#mediaQuery no sharedUserIdInfo found, using default library for media query", v56, 2u);
      MEMORY[0x266784AD0](v56, -1, -1);
    }

    v29(v38, v9);
    v57 = *(v30 + 16);
    v69();
  }

  else
  {

    v58 = v70;

    sub_266362AB4(v62, v53, v63, v66, v36, v30, v69, v58);
  }

  sub_266354A00(v30);
}

uint64_t sub_266354A00(uint64_t a1)
{
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_280F914F0);
  swift_beginAccess();
  (*(v3 + 16))(v5, v6, v2);

  v7 = sub_2664DFE18();
  v8 = sub_2664E06E8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136446210;
    swift_beginAccess();
    v11 = [*(a1 + 16) description];
    v12 = sub_2664E02C8();
    v14 = v13;

    v15 = sub_2662A320C(v12, v14, &v18);

    *(v9 + 4) = v15;
    _os_log_impl(&dword_26629C000, v7, v8, "LocalPlaybackHelper#getResultQuery returning query: %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x266784AD0](v10, -1, -1);
    MEMORY[0x266784AD0](v9, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

void sub_266354C5C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  [*(a2 + 16) setMediaLibrary_];
  swift_beginAccess();
  v6 = *(a2 + 16);
  a3();
}

MPMediaItem_optional __swiftcall LibraryProvider.nowPlayingItem()()
{
  v1 = [*(v0 + 88) nowPlayingItem];

  v2 = v1;
  result.value.super.super.isa = v2;
  result.is_nil = v3;
  return result;
}

uint64_t LibraryProvider.existsInLibrary(with:sharedUserIdInfo:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, uint64_t (*a7)(void), uint64_t a8)
{
  v9 = v8;
  v76 = a7;
  v77 = a8;
  v78 = a6;
  v82 = a3;
  v83 = a5;
  v80 = a4;
  v81 = a1;
  v87 = a2;
  v10 = sub_2664DFE38();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v75 = &v70 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v73 = &v70 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v79 = &v70 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v70 - v21;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v23 = __swift_project_value_buffer(v10, qword_280F914F0);
  swift_beginAccess();
  v24 = *(v11 + 16);
  v85 = v11 + 16;
  v86 = v23;
  v84 = v24;
  v24(v22, v23, v10);
  v25 = sub_2664DFE18();
  v26 = sub_2664E06E8();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_26629C000, v25, v26, "LibraryProvider#existsInLibrary...", v27, 2u);
    MEMORY[0x266784AD0](v27, -1, -1);
  }

  v28 = *(v11 + 8);
  v28(v22, v10);
  if (v87)
  {
    v74 = v28;
    v72 = v11 + 8;
    sub_2663608CC(v9, v89);
    sub_2663608CC(v89, v88);
    v29 = swift_allocObject();
    v30 = v89[7];
    *(v29 + 112) = v89[6];
    *(v29 + 128) = v30;
    *(v29 + 144) = v89[8];
    v31 = v90;
    v32 = v89[3];
    *(v29 + 48) = v89[2];
    *(v29 + 64) = v32;
    v33 = v89[5];
    *(v29 + 80) = v89[4];
    *(v29 + 96) = v33;
    v34 = v89[1];
    *(v29 + 16) = v89[0];
    *(v29 + 32) = v34;
    v36 = v82;
    v35 = v83;
    *(v29 + 160) = v31;
    *(v29 + 168) = v36;
    v38 = v80;
    v37 = v81;
    *(v29 + 176) = v80;
    *(v29 + 184) = v35;
    v39 = v78;
    *(v29 + 192) = v78;
    *(v29 + 200) = v37;
    v40 = v87;
    *(v29 + 208) = v87;
    v71 = sub_2664E02C8();
    v42 = v41;
    v43 = swift_allocObject();
    v43[2] = sub_266365000;
    v43[3] = v29;
    v43[4] = v37;
    v43[5] = v40;
    v44 = v77;
    v43[6] = v76;
    v43[7] = v44;
    swift_bridgeObjectRetain_n();
    v70 = v10;
    v84(v79, v86, v10);
    swift_bridgeObjectRetain_n();
    v76 = v42;
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    sub_266365048(v82, v38, v83, v39);

    v45 = sub_2664DFE18();
    v46 = sub_2664E06E8();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_26629C000, v45, v46, "LibraryProvider#mediaQuery...", v47, 2u);
      MEMORY[0x266784AD0](v47, -1, -1);
    }

    v48 = v70;
    v49 = v74;
    v74(v79, v70);
    v50 = v73;
    v84(v73, v86, v48);
    v51 = sub_2664DFE18();
    v52 = sub_2664E06E8();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 67109120;
      _os_log_impl(&dword_26629C000, v51, v52, "LibraryProvider#mediaQuery title, shouldAllowNonLibraryContent: %{BOOL}d", v53, 8u);
      MEMORY[0x266784AD0](v53, -1, -1);
    }

    v54 = swift_allocObject();
    v55 = v49(v50, v48);
    v56 = (v88[14])(v55);
    *(v54 + 16) = v56;
    [v56 setShouldIncludeNonLibraryEntities_];
    [v56 setIgnoreSystemFilterPredicates_];
    v57 = v80;
    if (v80 != 1 && v80 | v78)
    {
      v68 = v87;

      v69 = v76;

      sub_266360910(v82, v57, v83, v78, v88, v54, v81, v68, v71, v69, 0, sub_266365038, v43);
    }

    else
    {
      v84(v75, v86, v48);
      v58 = sub_2664DFE18();
      v59 = sub_2664E06E8();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        *v60 = 0;
        _os_log_impl(&dword_26629C000, v58, v59, "LibraryProvider#mediaQuery no sharedUserIdInfo found, using default library for media query", v60, 2u);
        MEMORY[0x266784AD0](v60, -1, -1);
      }

      v74(v75, v48);
      v61 = *(v54 + 16);
      sub_2663555CC(v61, v81, v87, v71, v76, 0, sub_266365038, v43);
    }

    sub_266354A00(v54);

    swift_bridgeObjectRelease_n();

    swift_bridgeObjectRelease_n();
    return sub_266365090(v88);
  }

  else
  {
    v84(v14, v86, v10);
    v62 = sub_2664DFE18();
    v63 = sub_2664E06D8();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = v28;
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&dword_26629C000, v62, v63, "LibraryProvider#existsInLibrary Incoming identifier is nil, returning false", v65, 2u);
      v66 = v65;
      v28 = v64;
      MEMORY[0x266784AD0](v66, -1, -1);
    }

    v28(v14, v10);
    return v76(0);
  }
}

uint64_t sub_2663554FC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(_BOOL8), uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, char *a9, uint64_t a10, uint64_t a11, uint64_t a12)
{

  sub_266364848(a7, a8, a9, a10, a1, 0, a6, a11, a12, a2, a3, a1, a4, a5);
}

uint64_t sub_2663555CC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t (*a7)(_BOOL8), uint64_t a8)
{
  v67 = a8;
  v68 = a7;
  v62 = a6;
  v13 = sub_2664DFE38();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v66 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v59 - v17;
  v69[1] = a2;
  v69[2] = a3;

  v19 = sub_2664E0DB8();
  v63 = a4;
  v65 = a5;
  v20 = sub_2664E02A8();
  v21 = [objc_opt_self() predicateWithValue:v19 forProperty:v20];
  swift_unknownObjectRelease();

  [a1 addFilterPredicate_];
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v22 = __swift_project_value_buffer(v13, qword_280F914F0);
  swift_beginAccess();
  v64 = *(v14 + 16);
  v64(v18, v22, v13);
  v23 = a1;
  v24 = v18;
  v25 = sub_2664DFE18();
  v26 = sub_2664E06E8();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v61 = v13;
    v28 = v27;
    v29 = swift_slowAlloc();
    v60 = v22;
    v30 = v29;
    v69[0] = v29;
    *v28 = 136446210;
    v31 = [v23 description];
    v32 = sub_2664E02C8();
    v59 = v24;
    v33 = v14;
    v35 = v34;

    v36 = sub_2662A320C(v32, v35, v69);

    *(v28 + 4) = v36;
    _os_log_impl(&dword_26629C000, v25, v26, "LibraryProvider#existsInLibrary existsByQuery using query: %{public}s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    v37 = v30;
    v22 = v60;
    MEMORY[0x266784AD0](v37, -1, -1);
    v38 = v28;
    v13 = v61;
    MEMORY[0x266784AD0](v38, -1, -1);

    v39 = *(v33 + 8);
    v39(v59, v13);
  }

  else
  {

    v39 = *(v14 + 8);
    v39(v24, v13);
  }

  v40 = v66;
  v41 = [v23 items];
  v42 = v65;
  if (v41 && ((v43 = v41, sub_2662C1744(0, &qword_280072D58, 0x277CD5DE0), v44 = sub_2664E04A8(), v43, v44 >> 62) ? (v45 = sub_2664E0A68()) : (v45 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10)), , v45))
  {
    v46 = 1;
  }

  else
  {
    v47 = [v23 collections];
    if (v47)
    {
      v48 = v47;
      sub_2662C1744(0, &qword_280072D70, 0x277CD5DF0);
      v49 = sub_2664E04A8();

      if (v49 >> 62)
      {
        v50 = sub_2664E0A68();
      }

      else
      {
        v50 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v46 = v50 != 0;
    }

    else
    {
      v46 = 0;
    }
  }

  v64(v40, v22, v13);

  v51 = sub_2664DFE18();
  v52 = sub_2664E06E8();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = v40;
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v69[0] = v55;
    *v54 = 134349570;
    v56 = v63;
    *(v54 + 4) = v62;
    *(v54 + 12) = 2080;
    *(v54 + 14) = sub_2662A320C(v56, v42, v69);
    *(v54 + 22) = 1026;
    *(v54 + 24) = v46;
    _os_log_impl(&dword_26629C000, v51, v52, "LibraryProvider#existsInLibrary MPMediaGrouping %{public}ld and property %s exists: %{BOOL,public}d", v54, 0x1Cu);
    __swift_destroy_boxed_opaque_existential_1Tm(v55);
    MEMORY[0x266784AD0](v55, -1, -1);
    MEMORY[0x266784AD0](v54, -1, -1);

    v57 = v53;
  }

  else
  {

    v57 = v40;
  }

  v39(v57, v13);
  return v68(v46);
}

uint64_t sub_266355B74(int a1, void (*a2)(void, uint64_t, uint64_t, uint64_t (*)(), uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v25 = a4;
  v26 = a6;
  v27 = a1;
  v11 = sub_2664DFE38();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v11, qword_280F914F0);
  swift_beginAccess();
  (*(v12 + 16))(v14, v15, v11);
  v16 = sub_2664DFE18();
  v17 = sub_2664E06E8();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 67240192;
    *(v18 + 4) = v27 & 1;
    _os_log_impl(&dword_26629C000, v16, v17, "LibraryProvider#existsInLibrary by MPMediaItemPropertyStoreID (title) %{BOOL,public}d", v18, 8u);
    MEMORY[0x266784AD0](v18, -1, -1);
  }

  (*(v12 + 8))(v14, v11);
  v19 = sub_2664E02C8();
  v21 = v20;
  v22 = swift_allocObject();
  *(v22 + 16) = a2;
  *(v22 + 24) = a3;
  *(v22 + 32) = v27 & 1;
  v23 = v26;
  *(v22 + 40) = v25;
  *(v22 + 48) = a5;
  *(v22 + 56) = v23;
  *(v22 + 64) = a7;

  a2(0, v19, v21, sub_26636750C, v22);
}

uint64_t sub_266355DF8(int a1, void (*a2)(void, void, void, void, void), uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v35 = a5;
  v34 = a4;
  v36 = a1;
  v13 = sub_2664DFE38();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v13, qword_280F914F0);
  swift_beginAccess();
  (*(v14 + 16))(v16, v17, v13);
  v18 = sub_2664DFE18();
  v19 = sub_2664E06E8();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v33 = a3;
    v21 = a6;
    v22 = a8;
    v23 = a2;
    v24 = a7;
    v25 = v20;
    *v20 = 67240192;
    *(v20 + 4) = v36 & 1;
    _os_log_impl(&dword_26629C000, v18, v19, "LibraryProvider#existsInLibrary by MPMediaItemPropertySubscriptionStoreItemID (title) %{BOOL,public}d", v20, 8u);
    v26 = v25;
    a7 = v24;
    a2 = v23;
    a8 = v22;
    a6 = v21;
    a3 = v33;
    MEMORY[0x266784AD0](v26, -1, -1);
  }

  (*(v14 + 8))(v16, v13);
  v27 = sub_2664E02C8();
  v29 = v28;
  v30 = swift_allocObject();
  *(v30 + 16) = a2;
  *(v30 + 24) = a3;
  *(v30 + 32) = v34 & 1;
  *(v30 + 33) = v36 & 1;
  *(v30 + 40) = v35;
  *(v30 + 48) = a6;
  *(v30 + 56) = a7;
  *(v30 + 64) = a8;

  a2(1, v27, v29, sub_266367520, v30);
}

uint64_t sub_2663560B8(int a1, void (*a2)(void, void, void, void, void), uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v37 = a4;
  v38 = a5;
  v39 = a1;
  v14 = sub_2664DFE38();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v36 = a9;
  v18 = __swift_project_value_buffer(v14, qword_280F914F0);
  swift_beginAccess();
  (*(v15 + 16))(v17, v18, v14);
  v19 = sub_2664DFE18();
  v20 = sub_2664E06E8();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v35 = a6;
    v22 = a3;
    v23 = a7;
    v24 = a2;
    v25 = a8;
    v26 = v21;
    *v21 = 67240192;
    *(v21 + 4) = v39 & 1;
    _os_log_impl(&dword_26629C000, v19, v20, "LibraryProvider#existsInLibrary by MPMediaItemPropertyStorePlaylistID (album) %{BOOL,public}d", v21, 8u);
    v27 = v26;
    a8 = v25;
    a2 = v24;
    a7 = v23;
    a3 = v22;
    a6 = v35;
    MEMORY[0x266784AD0](v27, -1, -1);
  }

  (*(v15 + 8))(v17, v14);
  v28 = sub_2664E02C8();
  v30 = v29;
  v31 = swift_allocObject();
  *(v31 + 16) = a2;
  *(v31 + 24) = a3;
  *(v31 + 32) = v37 & 1;
  *(v31 + 33) = v38 & 1;
  *(v31 + 34) = v39 & 1;
  *(v31 + 40) = a6;
  *(v31 + 48) = a7;
  v32 = v36;
  *(v31 + 56) = a8;
  *(v31 + 64) = v32;

  a2(1, v28, v30, sub_2663675A0, v31);
}

id sub_266356388(char a1, void (*a2)(void, uint64_t, uint64_t, uint64_t (*)(), uint64_t), uint64_t a3, char a4, char a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v30 = a7;
  v31 = a3;
  v29 = a6;
  v32 = a2;
  v14 = sub_2664DFE38();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v14, qword_280F914F0);
  swift_beginAccess();
  (*(v15 + 16))(v17, v18, v14);
  v19 = sub_2664DFE18();
  v20 = sub_2664E06E8();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 67240192;
    *(v21 + 4) = a1 & 1;
    _os_log_impl(&dword_26629C000, v19, v20, "LibraryProvider#existsInLibrary by MPMediaItemPropertyStoreCloudAlbumID (album) %{BOOL,public}d", v21, 8u);
    MEMORY[0x266784AD0](v21, -1, -1);
  }

  (*(v15 + 8))(v17, v14);
  result = [objc_opt_self() representativePersistentIDPropertyForGroupingType_];
  if (result)
  {
    v23 = result;
    v24 = sub_2664E02C8();
    v26 = v25;

    v27 = swift_allocObject();
    *(v27 + 16) = a4 & 1;
    *(v27 + 17) = a5 & 1;
    *(v27 + 18) = v29 & 1;
    *(v27 + 19) = a1 & 1;
    *(v27 + 24) = v30;
    *(v27 + 32) = a8;
    *(v27 + 40) = a9;
    *(v27 + 48) = a10;

    v32(0, v24, v26, sub_26636761C, v27);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_266356644(int a1, int a2, int a3, int a4, int a5, uint64_t a6, unint64_t a7, uint64_t (*a8)(void), uint64_t a9)
{
  v42 = a8;
  v36 = a6;
  v39 = a4;
  v40 = a5;
  v37 = a2;
  v38 = a3;
  v43 = a1;
  v10 = sub_2664DFE38();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v34 - v15;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v41 = a9;
  v17 = __swift_project_value_buffer(v10, qword_280F914F0);
  swift_beginAccess();
  v18 = *(v11 + 16);
  v18(v16, v17, v10);
  v19 = sub_2664DFE18();
  v20 = sub_2664E06E8();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v35 = v14;
    v22 = a7;
    v23 = v21;
    *v21 = 67240192;
    *(v21 + 4) = v43 & 1;
    _os_log_impl(&dword_26629C000, v19, v20, "LibraryProvider#existsInLibrary by representativePersistentIDProperty for .title %{BOOL,public}d", v21, 8u);
    v24 = v23;
    a7 = v22;
    v14 = v35;
    MEMORY[0x266784AD0](v24, -1, -1);
  }

  v25 = *(v11 + 8);
  v25(v16, v10);
  v26 = v37 | v38 | v39 | v40 | v43;
  v18(v14, v17, v10);

  v27 = sub_2664DFE18();
  v28 = sub_2664E06E8();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v31 = a7;
    v32 = v30;
    v44 = v30;
    *v29 = 136446466;
    *(v29 + 4) = sub_2662A320C(v36, v31, &v44);
    *(v29 + 12) = 1026;
    *(v29 + 14) = v26 & 1;
    _os_log_impl(&dword_26629C000, v27, v28, "LibraryProvider#existsInLibrary Incoming identifier: %{public}s, exists: %{BOOL,public}d", v29, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v32);
    MEMORY[0x266784AD0](v32, -1, -1);
    MEMORY[0x266784AD0](v29, -1, -1);
  }

  v25(v14, v10);
  return v42(v26 & 1);
}

uint64_t LibraryProvider.addToLibrary(identifier:sharedUserIdInfo:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, char *a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v39 = a6;
  v31 = a7;
  v32 = a8;
  v36 = a4;
  v37 = a5;
  v34 = a2;
  v35 = a3;
  v33 = a1;
  v40 = sub_2664DFE08();
  v8 = *(v40 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v40);
  v11 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v30 - v12;
  v14 = sub_2664DFE38();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v14, qword_280F914F0);
  swift_beginAccess();
  (*(v15 + 16))(v17, v18, v14);
  v19 = sub_2664DFE18();
  v20 = sub_2664E06E8();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_26629C000, v19, v20, "LibraryProvider#addToLibrary...", v21, 2u);
    MEMORY[0x266784AD0](v21, -1, -1);
  }

  (*(v15 + 8))(v17, v14);
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  v22 = qword_280F91D48;
  sub_2664DFDE8();
  v23 = v40;
  (*(v8 + 16))(v11, v13, v40);
  v24 = (*(v8 + 80) + 33) & ~*(v8 + 80);
  v25 = (v9 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  *(v26 + 16) = "libraryProviderAddToLibrary";
  *(v26 + 24) = 27;
  *(v26 + 32) = 2;
  (*(v8 + 32))(v26 + v24, v11, v23);
  v27 = (v26 + v25);
  v28 = v32;
  *v27 = v31;
  v27[1] = v28;

  sub_2664E0848();
  sub_2664DFDD8();

  sub_266366848(v33, v34, v38, v35, v36, v37, v39, sub_2663650C0, v26);

  return (*(v8 + 8))(v13, v23);
}

void sub_266356D50(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v21 = a1;
  v22 = a2;
  v10 = sub_2664DFE38();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v10, qword_280F914F0);
  swift_beginAccess();
  (*(v11 + 16))(v13, v14, v10);
  v15 = sub_2664DFE18();
  v16 = sub_2664E06C8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_26629C000, v15, v16, "LibraryProvider#addToLibrary received library, adding item...", v17, 2u);
    MEMORY[0x266784AD0](v17, -1, -1);
  }

  (*(v11 + 8))(v13, v10);
  v18 = swift_allocObject();
  v18[2] = a3;
  v18[3] = a4;
  v18[4] = a5;
  v18[5] = a6;
  aBlock[4] = sub_2663674EC;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2663576BC;
  aBlock[3] = &block_descriptor_15;
  v19 = _Block_copy(aBlock);

  [v21 addStoreItem:v22 andAddTracksToCloudLibrary:1 withCompletion:v19];
  _Block_release(v19);
}

uint64_t sub_266356FD4(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, void (*a5)(void **), uint64_t a6)
{
  v62 = a3;
  v10 = sub_2664DFE38();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v54 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v54 - v18;
  if (a2)
  {
    v60 = a6;
    v61 = a5;
    swift_getErrorValue();
    sub_266369588(v63, v67);
    v58 = v67[0];
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v20 = __swift_project_value_buffer(v10, qword_280F914F0);
    swift_beginAccess();
    v56 = *(v11 + 16);
    v57 = v20;
    v56(v17, v20, v10);
    v21 = a2;

    v22 = a2;
    v23 = sub_2664DFE18();
    v24 = sub_2664E06D8();

    v25 = os_log_type_enabled(v23, v24);
    v59 = v14;
    if (v25)
    {
      v26 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v64 = v55;
      *v26 = 136315906;
      *(v26 + 4) = sub_2662A320C(v62, a4, &v64);
      v62 = v11;
      *(v26 + 12) = 2082;
      swift_getErrorValue();
      v27 = sub_2664E0DE8();
      v29 = sub_2662A320C(v27, v28, &v64);

      *(v26 + 14) = v29;
      *(v26 + 22) = 2082;
      v30 = sub_2664DE198();
      v31 = [v30 domain];

      v32 = sub_2664E02C8();
      v34 = v33;

      v35 = sub_2662A320C(v32, v34, &v64);

      *(v26 + 24) = v35;
      *(v26 + 32) = 2050;
      v36 = sub_2664DE198();
      v37 = [v36 code];

      *(v26 + 34) = v37;
      v11 = v62;

      _os_log_impl(&dword_26629C000, v23, v24, "LibraryProvider#addToLibrary Error while adding item (identifier=%s) to library: %{public}s %{public}s %{public}ld", v26, 0x2Au);
      v38 = v55;
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v38, -1, -1);
      v39 = v26;
      v14 = v59;
      MEMORY[0x266784AD0](v39, -1, -1);
    }

    else
    {
    }

    v46 = *(v11 + 8);
    v46(v17, v10);
    v56(v14, v57, v10);
    v47 = sub_2664DFE18();
    v48 = sub_2664E06B8();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v64 = v50;
      *v49 = 134218498;
      *(v49 + 4) = 8;
      *(v49 + 12) = 2048;
      v51 = v58;
      *(v49 + 14) = qword_2664E6F50[v58 ^ 0x80];
      *(v49 + 22) = 2080;
      *(v49 + 24) = sub_2662A320C(0xD000000000000015, 0x80000002664F5820, &v64);
      _os_log_impl(&dword_26629C000, v47, v48, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v49, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v50);
      MEMORY[0x266784AD0](v50, -1, -1);
      MEMORY[0x266784AD0](v49, -1, -1);

      v46(v59, v10);
      v52 = v61;
    }

    else
    {

      v46(v14, v10);
      v52 = v61;
      v51 = v58;
    }

    v64 = (v51 | 0x800);
    v65 = 0xD000000000000015;
    v66 = 0x80000002664F5820;
    v52(&v64);
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v40 = __swift_project_value_buffer(v10, qword_280F914F0);
    swift_beginAccess();
    (*(v11 + 16))(v19, v40, v10);

    v41 = sub_2664DFE18();
    v42 = sub_2664E06E8();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = v11;
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v64 = v45;
      *v44 = 136315138;
      *(v44 + 4) = sub_2662A320C(v62, a4, &v64);
      _os_log_impl(&dword_26629C000, v41, v42, "LibraryProvider#addToLibrary The item with identifier=%s was added to library successfully.", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v45);
      MEMORY[0x266784AD0](v45, -1, -1);
      MEMORY[0x266784AD0](v44, -1, -1);

      (*(v43 + 8))(v19, v10);
    }

    else
    {

      (*(v11 + 8))(v19, v10);
    }

    v64 = 0;
    v65 = 0;
    v66 = 0;
    return (a5)(&v64);
  }
}

uint64_t sub_2663576BC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_2664E04A8();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

uint64_t LibraryProvider.searchForPlaylist(by:sharedUserIdInfo:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v39 = a8;
  v37 = a7;
  v38 = a2;
  v36 = a1;
  v14 = sub_2664DFE38();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v14, qword_280F914F0);
  swift_beginAccess();
  (*(v15 + 16))(v17, v18, v14);
  v19 = sub_2664DFE18();
  v20 = sub_2664E06E8();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v35 = a3;
    v22 = a4;
    v23 = v9;
    v24 = a5;
    v25 = a6;
    v26 = v21;
    *v21 = 0;
    _os_log_impl(&dword_26629C000, v19, v20, "LibraryProvider#searchForPlaylist...", v21, 2u);
    v27 = v26;
    a6 = v25;
    a5 = v24;
    v9 = v23;
    a4 = v22;
    a3 = v35;
    MEMORY[0x266784AD0](v27, -1, -1);
  }

  (*(v15 + 8))(v17, v14);
  sub_2663608CC(v9, v40);
  v28 = swift_allocObject();
  *(v28 + 16) = v36;
  v29 = v37;
  *(v28 + 24) = v38;
  *(v28 + 32) = v29;
  *(v28 + 40) = v39;
  v30 = v40[7];
  *(v28 + 144) = v40[6];
  *(v28 + 160) = v30;
  *(v28 + 176) = v40[8];
  *(v28 + 192) = v41;
  v31 = v40[3];
  *(v28 + 80) = v40[2];
  *(v28 + 96) = v31;
  v32 = v40[5];
  *(v28 + 112) = v40[4];
  *(v28 + 128) = v32;
  v33 = v40[1];
  *(v28 + 48) = v40[0];
  *(v28 + 64) = v33;

  LibraryProvider.mediaQuery(with:for:shouldAllowNonLibraryContent:completion:)(a3, a4, a5, a6, 6, 0, sub_266367008, v28);
}

void sub_266357A50(void *a1, uint64_t a2, unint64_t a3, void (*a4)(void *), uint64_t a5, uint64_t a6)
{
  v103 = a6;
  v108 = a5;
  v109 = a4;
  v111 = a1;
  v8 = sub_2664DFE38();
  v117 = *(v8 - 1);
  v9 = MEMORY[0x28223BE20](v8);
  v113 = &v98 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v98 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v104 = &v98 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v102 = &v98 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v98 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v112 = &v98 - v22;
  MEMORY[0x28223BE20](v21);
  v24 = &v98 - v23;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v105 = v20;
  v106 = v13;
  v114 = a2;
  v25 = __swift_project_value_buffer(v8, qword_280F914F0);
  swift_beginAccess();
  v26 = *(v117 + 16);
  v27 = v25;
  v115 = v117 + 16;
  v116 = v26;
  v26(v24, v25, v8);

  v28 = sub_2664DFE18();
  v29 = sub_2664E06E8();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = v8;
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v118[0] = v32;
    *v31 = 136315138;
    v33 = v114;
    *(v31 + 4) = sub_2662A320C(v114, a3, v118);
    _os_log_impl(&dword_26629C000, v28, v29, "LibraryProvider#searchForPlaylist Do the query to find local playlists whose title contain the search keyword %s...", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v32);
    MEMORY[0x266784AD0](v32, -1, -1);
    v34 = v31;
    v8 = v30;
    MEMORY[0x266784AD0](v34, -1, -1);

    v35 = *(v117 + 8);
    v35(v24, v30);
  }

  else
  {

    v35 = *(v117 + 8);
    v35(v24, v8);
    v33 = v114;
  }

  v36 = *MEMORY[0x277CD5930];
  v118[0] = v33;
  v118[1] = a3;
  v107 = a3;

  v37 = v36;
  v38 = sub_2664E0DB8();
  v39 = [objc_opt_self() predicateWithValue:v38 forProperty:v37 comparisonType:1];
  swift_unknownObjectRelease();

  v40 = v111;
  v110 = v39;
  [v111 addFilterPredicate_];
  v41 = v112;
  v42 = v27;
  v116(v112, v27, v8);
  v43 = v40;
  v44 = sub_2664DFE18();
  v45 = sub_2664E06E8();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v111 = v8;
    v47 = v46;
    v48 = swift_slowAlloc();
    v118[0] = v48;
    *v47 = 136446210;
    v49 = v35;
    v50 = [v43 description];
    v51 = sub_2664E02C8();
    v101 = v43;
    v100 = v42;
    v52 = v41;
    v53 = v51;
    v55 = v54;

    v35 = v49;
    v56 = sub_2662A320C(v53, v55, v118);

    *(v47 + 4) = v56;
    _os_log_impl(&dword_26629C000, v44, v45, "LibraryProvider#searchForPlaylist localPlaylistsQuery query: %{public}s", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v48);
    MEMORY[0x266784AD0](v48, -1, -1);
    v57 = v47;
    v8 = v111;
    MEMORY[0x266784AD0](v57, -1, -1);

    v58 = v52;
    v42 = v100;
    v43 = v101;
    v49(v58, v8);
  }

  else
  {

    v35(v41, v8);
  }

  v59 = v113;
  v60 = [v43 collections];
  if (!v60)
  {
    goto LABEL_34;
  }

  v61 = v60;
  sub_2662C1744(0, &qword_280072D70, 0x277CD5DF0);
  v62 = sub_2664E04A8();

  if (!(v62 >> 62))
  {
    if (*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
    {
      goto LABEL_12;
    }

    goto LABEL_33;
  }

  if (sub_2664E0A68() < 1)
  {
LABEL_33:

LABEL_34:
    v116(v59, v42, v8);
    v95 = sub_2664DFE18();
    v96 = sub_2664E06D8();
    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      *v97 = 0;
      _os_log_impl(&dword_26629C000, v95, v96, "LibraryProvider#searchForPlaylist No playlists were returned from the query.", v97, 2u);
      MEMORY[0x266784AD0](v97, -1, -1);
    }

    v35(v59, v8);
    goto LABEL_37;
  }

LABEL_12:
  v99 = v35;
  if ((v62 & 0xC000000000000001) != 0)
  {
    v63 = MEMORY[0x266783B70](0, v62);
  }

  else
  {
    if (!*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v63 = *(v62 + 32);
  }

  v64 = v63;

  objc_opt_self();
  v65 = swift_dynamicCastObjCClass();
  if (!v65 || (v66 = v65, (v67 = [v65 name]) == 0))
  {

    v87 = v106;
    v116(v106, v42, v8);
    v88 = sub_2664DFE18();
    v89 = sub_2664E06D8();
    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      *v90 = 0;
      _os_log_impl(&dword_26629C000, v88, v89, "LibraryProvider#searchForPlaylist Cast MPMediaItemCollection to MPMediaPlaylist failed.", v90, 2u);
      MEMORY[0x266784AD0](v90, -1, -1);
    }

    v99(v87, v8);
LABEL_37:
    v109(0);
    v64 = v110;
LABEL_38:

    return;
  }

  v68 = v67;
  v115 = sub_2664E02C8();
  v70 = v69;

  v71 = v105;
  v116(v105, v42, v8);
  v72 = v107;

  v73 = sub_2664DFE18();
  v74 = sub_2664E06E8();

  if (os_log_type_enabled(v73, v74))
  {
    v75 = swift_slowAlloc();
    v111 = v8;
    v76 = v75;
    v77 = swift_slowAlloc();
    v118[0] = v77;
    *v76 = 136315394;
    *(v76 + 4) = sub_2662A320C(v115, v70, v118);
    *(v76 + 12) = 2080;
    *(v76 + 14) = sub_2662A320C(v114, v107, v118);
    _os_log_impl(&dword_26629C000, v73, v74, "LibraryProvider#searchForPlaylist Found one playlist title=%s contains the keyword=%s, performing string distance check..", v76, 0x16u);
    swift_arrayDestroy();
    v78 = v77;
    v72 = v107;
    MEMORY[0x266784AD0](v78, -1, -1);
    v79 = v76;
    v8 = v111;
    MEMORY[0x266784AD0](v79, -1, -1);
  }

  v99(v71, v8);
  v80 = v115;
  v81 = sub_2664E0378() * 0.34;
  if (COERCE_INT(fabs(v81)) > 2139095039)
  {
    goto LABEL_41;
  }

  if (v81 <= -9.2234e18)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v81 < 9.2234e18)
  {
    v82 = sub_2663585E0(v81, v80, v70, v114, v72);

    if (v82)
    {
      v116(v104, v42, v8);
      v83 = v64;
      v84 = sub_2664DFE18();
      v85 = sub_2664E06E8();
      if (os_log_type_enabled(v84, v85))
      {
        v86 = swift_slowAlloc();
        *v86 = 0;
        _os_log_impl(&dword_26629C000, v84, v85, "LibraryProvider#searchForPlaylist passed distance check", v86, 2u);
        MEMORY[0x266784AD0](v86, -1, -1);
      }

      v99(v104, v8);
      v64 = v83;
      v109(v66);
    }

    else
    {
      v91 = v102;
      v116(v102, v42, v8);
      v92 = sub_2664DFE18();
      v93 = sub_2664E06D8();
      if (os_log_type_enabled(v92, v93))
      {
        v94 = swift_slowAlloc();
        *v94 = 0;
        _os_log_impl(&dword_26629C000, v92, v93, "LibraryProvider#searchForPlaylist failed distance check", v94, 2u);
        MEMORY[0x266784AD0](v94, -1, -1);
      }

      v99(v91, v8);
      v109(0);
    }

    goto LABEL_38;
  }

LABEL_43:
  __break(1u);
}

uint64_t sub_2663585E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v33 = a1;
  v9 = sub_2664DFE38();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v34 = a4;
  v13 = __swift_project_value_buffer(v9, qword_280F914F0);
  swift_beginAccess();
  (*(v10 + 16))(v12, v13, v9);
  swift_bridgeObjectRetain_n();

  v14 = sub_2664DFE18();
  v15 = sub_2664E06E8();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v29 = a5;
    v32 = a2;
    v17 = v16;
    *v16 = 134349568;
    v39 = v32;
    v40 = a3;
    v37 = 32;
    v38 = 0xE100000000000000;
    v35 = 0;
    v36 = 0xE000000000000000;
    sub_2662D2EBC();
    v30 = v15;
    v31 = v9;
    sub_2664E0998();
    v18 = sub_2664E0378();

    *(v17 + 1) = v18;

    *(v17 + 6) = 2050;
    v19 = v29;
    v39 = v34;
    v40 = v29;
    v37 = 32;
    v38 = 0xE100000000000000;
    v35 = 0;
    v36 = 0xE000000000000000;
    v9 = v31;
    sub_2664E0998();
    v20 = sub_2664E0378();

    *(v17 + 14) = v20;

    *(v17 + 11) = 2050;
    *(v17 + 3) = v33;
    _os_log_impl(&dword_26629C000, v14, v30, "LibraryProvider#isStringDistanceSmallerThan first len: %{public}ld, second len: %{public}ld, threshold: %{public}ld", v17, 0x20u);
    v21 = v17;
    a2 = v32;
    MEMORY[0x266784AD0](v21, -1, -1);

    v22 = v19;
  }

  else
  {

    swift_bridgeObjectRelease_n();
    v22 = a5;
  }

  (*(v10 + 8))(v12, v9);
  v39 = a2;
  v40 = a3;
  v37 = 32;
  v38 = 0xE100000000000000;
  v35 = 0;
  v36 = 0xE000000000000000;
  sub_2662D2EBC();
  sub_2664E0998();
  v23 = sub_2664E0378();

  v39 = v34;
  v40 = v22;
  v37 = 32;
  v38 = 0xE100000000000000;
  v35 = 0;
  v36 = 0xE000000000000000;
  sub_2664E0998();
  v24 = sub_2664E0378();

  v26 = v23 - v24;
  if (__OFSUB__(v23, v24))
  {
    __break(1u);
  }

  else
  {
    if ((v26 & 0x8000000000000000) == 0)
    {
      return v26 <= v33;
    }

    v27 = __OFSUB__(0, v26);
    v26 = v24 - v23;
    if (!v27)
    {
      return v26 <= v33;
    }
  }

  __break(1u);
  return result;
}

uint64_t LibraryProvider.searchForPlaylist(with:sharedUserIdInfo:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, void (*a7)(uint64_t, unint64_t, void *), uint64_t a8)
{
  v9 = v8;
  v30 = a7;
  v31 = a3;
  v32 = a4;
  v33 = a5;
  v14 = sub_2664DFE38();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v14, qword_280F914F0);
  swift_beginAccess();
  (*(v15 + 16))(v17, v18, v14);
  v19 = sub_2664DFE18();
  v20 = sub_2664E06E8();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v29 = a2;
    v22 = a8;
    v23 = a1;
    v24 = a6;
    v25 = v9;
    v26 = v21;
    *v21 = 0;
    _os_log_impl(&dword_26629C000, v19, v20, "LibraryProvider#searchForPlaylistWithIdentifier...", v21, 2u);
    v27 = v26;
    v9 = v25;
    a6 = v24;
    a1 = v23;
    a8 = v22;
    a2 = v29;
    MEMORY[0x266784AD0](v27, -1, -1);
  }

  (*(v15 + 8))(v17, v14);

  sub_266365168(v31, v32, v33, a6, 6, 0, v9, a1, a2, v30, a8);
}

void sub_266358C74(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, unint64_t, void *), uint64_t a5)
{
  v85 = a5;
  v86 = a4;
  v91 = sub_2664DFE38();
  v8 = *(v91 - 8);
  v9 = MEMORY[0x28223BE20](v91);
  v87 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v84 = &v81 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v81 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v81 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v81 - v19;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v83 = v15;
  v21 = v91;
  v22 = __swift_project_value_buffer(v91, qword_280F914F0);
  swift_beginAccess();
  v89 = *(v8 + 16);
  v90 = v8 + 16;
  v89(v20, v22, v21);
  v23 = sub_2664DFE18();
  v24 = sub_2664E06E8();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = v22;
    v26 = v8;
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_26629C000, v23, v24, "LibraryProvider#searchForPlaylistWithIdentifier Do the query to find local playlists with specified identifier...", v27, 2u);
    v28 = v27;
    v8 = v26;
    v22 = v25;
    MEMORY[0x266784AD0](v28, -1, -1);
  }

  v31 = *(v8 + 8);
  v30 = (v8 + 8);
  v29 = v31;
  v32 = v91;
  v31(v20, v91);
  v33 = *MEMORY[0x277CD5908];
  v92[0] = a2;
  v92[1] = a3;

  v34 = v33;
  v35 = sub_2664E0DB8();
  v36 = [objc_opt_self() predicateWithValue:v35 forProperty:v34 comparisonType:0];
  swift_unknownObjectRelease();

  v88 = v36;
  [a1 addFilterPredicate_];
  v37 = v18;
  v89(v18, v22, v32);
  v38 = a1;
  v39 = sub_2664DFE18();
  v40 = sub_2664E06E8();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v92[0] = v82;
    *v41 = 136446210;
    v42 = v29;
    v43 = v30;
    v44 = [v38 description];
    v45 = sub_2664E02C8();
    v81 = v37;
    v46 = v45;
    v47 = v22;
    v49 = v48;

    v30 = v43;
    v29 = v42;
    v50 = sub_2662A320C(v46, v49, v92);
    v22 = v47;
    v51 = v38;
    v52 = v91;

    *(v41 + 4) = v50;
    _os_log_impl(&dword_26629C000, v39, v40, "LibraryProvider#searchForPlaylistWithIdentifier localPlaylistsQuery query: %{public}s", v41, 0xCu);
    v53 = v82;
    __swift_destroy_boxed_opaque_existential_1Tm(v82);
    MEMORY[0x266784AD0](v53, -1, -1);
    MEMORY[0x266784AD0](v41, -1, -1);

    v54 = v52;
    v38 = v51;
    v42(v81, v54);
  }

  else
  {

    v29(v18, v91);
  }

  v55 = v87;
  v56 = [v38 collections];
  if (!v56)
  {
    goto LABEL_24;
  }

  v57 = v56;
  sub_2662C1744(0, &qword_280072D70, 0x277CD5DF0);
  v58 = sub_2664E04A8();

  if (!(v58 >> 62))
  {
    if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

  if (sub_2664E0A68() < 1)
  {
LABEL_23:

LABEL_24:
    v89(v55, v22, v91);
    v78 = sub_2664DFE18();
    v79 = sub_2664E06D8();
    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      *v80 = 0;
      _os_log_impl(&dword_26629C000, v78, v79, "LibraryProvider#searchForPlaylist No playlists were returned from the query.", v80, 2u);
      MEMORY[0x266784AD0](v80, -1, -1);
    }

    v77 = v55;
    goto LABEL_27;
  }

LABEL_11:
  if ((v58 & 0xC000000000000001) != 0)
  {
    v59 = MEMORY[0x266783B70](0, v58);
LABEL_14:
    v60 = v59;

    objc_opt_self();
    v61 = swift_dynamicCastObjCClass();
    if (v61)
    {
      v62 = v61;
      v63 = [v61 name];
      if (v63)
      {
        v87 = v30;
        v64 = v63;
        v65 = sub_2664E02C8();
        v67 = v66;

        v68 = v83;
        v89(v83, v22, v91);

        v69 = sub_2664DFE18();
        v70 = sub_2664E06E8();

        if (os_log_type_enabled(v69, v70))
        {
          v71 = swift_slowAlloc();
          v72 = swift_slowAlloc();
          v92[0] = v72;
          *v71 = 136315138;
          *(v71 + 4) = sub_2662A320C(v65, v67, v92);
          _os_log_impl(&dword_26629C000, v69, v70, "LibraryProvider#searchForPlaylist Found one playlist title=%s with the specified identifier", v71, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v72);
          MEMORY[0x266784AD0](v72, -1, -1);
          MEMORY[0x266784AD0](v71, -1, -1);
        }

        v29(v68, v91);
        v73 = v60;
        v86(v65, v67, v62);

        v88 = v73;
        goto LABEL_28;
      }
    }

    v89(v84, v22, v91);
    v74 = sub_2664DFE18();
    v75 = sub_2664E06D8();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      *v76 = 0;
      _os_log_impl(&dword_26629C000, v74, v75, "LibraryProvider#searchForPlaylistWithIdentifier Cast MPMediaItemCollection to MPMediaPlaylist failed.", v76, 2u);
      MEMORY[0x266784AD0](v76, -1, -1);
    }

    v77 = v84;
LABEL_27:
    v29(v77, v91);
    v86(0, 0, 0);
LABEL_28:

    return;
  }

  if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v59 = *(v58 + 32);
    goto LABEL_14;
  }

  __break(1u);
}

uint64_t LibraryProvider.addToPlaylist(adamID:to:sharedUserIdInfo:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  v47 = a8;
  v46 = a7;
  v45 = a6;
  v43 = a5;
  v44 = a3;
  v15 = sub_2664DFE38();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v42 = a10;
  v41 = a9;
  v19 = __swift_project_value_buffer(v15, qword_280F914F0);
  swift_beginAccess();
  (*(v16 + 16))(v18, v19, v15);

  v20 = sub_2664DFE18();
  v21 = sub_2664E06E8();

  v22 = os_log_type_enabled(v20, v21);
  v48 = a4;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v40 = v11;
    v25 = v24;
    *&v49[0] = v24;
    *v23 = 136315394;
    *(v23 + 4) = sub_2662A320C(a1, a2, v49);
    *(v23 + 12) = 2080;
    v26 = v44;
    *(v23 + 14) = sub_2662A320C(v44, v48, v49);
    _os_log_impl(&dword_26629C000, v20, v21, "LibraryProvider#addToPlaylist (adamId) Starting add the item with identifier %s to playlist %s.", v23, 0x16u);
    swift_arrayDestroy();
    v27 = v25;
    v11 = v40;
    MEMORY[0x266784AD0](v27, -1, -1);
    MEMORY[0x266784AD0](v23, -1, -1);

    (*(v16 + 8))(v18, v15);
  }

  else
  {

    (*(v16 + 8))(v18, v15);
    v26 = v44;
  }

  sub_2663608CC(v11, v49);
  v28 = swift_allocObject();
  v29 = v42;
  *(v28 + 16) = v41;
  *(v28 + 24) = v29;
  *(v28 + 32) = a1;
  *(v28 + 40) = a2;
  v30 = v49[7];
  *(v28 + 144) = v49[6];
  *(v28 + 160) = v30;
  *(v28 + 176) = v49[8];
  v31 = v50;
  v32 = v49[3];
  *(v28 + 80) = v49[2];
  *(v28 + 96) = v32;
  v33 = v49[5];
  *(v28 + 112) = v49[4];
  *(v28 + 128) = v33;
  v34 = v49[1];
  *(v28 + 48) = v49[0];
  *(v28 + 64) = v34;
  v35 = v43;
  *(v28 + 192) = v31;
  *(v28 + 200) = v35;
  v36 = v45;
  v37 = v46;
  *(v28 + 208) = v45;
  *(v28 + 216) = v37;
  v38 = v47;
  *(v28 + 224) = v47;

  sub_266365048(v35, v36, v37, v38);
  LibraryProvider.searchForPlaylist(by:sharedUserIdInfo:completion:)(v26, v48, v35, v36, v37, v38, sub_266367018, v28);
}

unsigned __int8 *sub_266359884(void *a1, void (*a2)(uint64_t, uint64_t, __int128 *), void *a3, uint64_t a4, unint64_t a5, void *a6, uint64_t a7, void *a8, char *a9, char *a10)
{
  v110 = a7;
  v111 = a8;
  v112 = a6;
  v113 = a2;
  v14 = sub_2664DFE38();
  v114 = *(v14 - 8);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v107 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v107 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v107 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v107 - v26;
  result = MEMORY[0x28223BE20](v25);
  v31 = &v107 - v30;
  if (!a1)
  {
    v112 = a3;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v40 = __swift_project_value_buffer(v14, qword_280F914F0);
    swift_beginAccess();
    v41 = v114;
    v42 = *(v114 + 16);
    v42(v31, v40, v14);
    v43 = sub_2664DFE18();
    v44 = sub_2664E06D8();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_26629C000, v43, v44, "LibraryProvider#addToPlaylist (adamId) Empty playlistCandidate.", v45, 2u);
      MEMORY[0x266784AD0](v45, -1, -1);
    }

    v46 = v14;
    v47 = *(v41 + 8);
    v47(v31, v46);
    v42(v17, v40, v46);
    v48 = sub_2664DFE18();
    v49 = sub_2664E06B8();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *&v117 = v51;
      *v50 = 134218498;
      *(v50 + 4) = 8;
      *(v50 + 12) = 2048;
      *(v50 + 14) = 45;
      *(v50 + 22) = 2080;
      *(v50 + 24) = sub_2662A320C(0xD000000000000022, 0x80000002664F5760, &v117);
      _os_log_impl(&dword_26629C000, v48, v49, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v50, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v51);
      MEMORY[0x266784AD0](v51, -1, -1);
      MEMORY[0x266784AD0](v50, -1, -1);
    }

    v47(v17, v46);
    v117 = xmmword_2664E6DC0;
    *&v118 = 0x80000002664F5760;
    v113(0, 0, &v117);
  }

  v32 = HIBYTE(a5) & 0xF;
  v33 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v34 = HIBYTE(a5) & 0xF;
  }

  else
  {
    v34 = a4 & 0xFFFFFFFFFFFFLL;
  }

  v109 = v29;
  if (!v34)
  {
    v82 = a1;
    goto LABEL_71;
  }

  if ((a5 & 0x1000000000000000) == 0)
  {
    if ((a5 & 0x2000000000000000) != 0)
    {
      *&v119 = a4;
      *(&v119 + 1) = a5 & 0xFFFFFFFFFFFFFFLL;
      if (a4 == 43)
      {
        if (v32)
        {
          if (--v32)
          {
            v36 = 0;
            v58 = &v119 + 1;
            while (1)
            {
              v59 = *v58 - 48;
              if (v59 > 9)
              {
                break;
              }

              v60 = 10 * v36;
              if ((v36 * 10) >> 64 != (10 * v36) >> 63)
              {
                break;
              }

              v36 = v60 + v59;
              if (__OFADD__(v60, v59))
              {
                break;
              }

              ++v58;
              if (!--v32)
              {
                goto LABEL_70;
              }
            }
          }

          goto LABEL_69;
        }

LABEL_107:
        __break(1u);
        return result;
      }

      if (a4 != 45)
      {
        if (v32)
        {
          v36 = 0;
          v63 = &v119;
          while (1)
          {
            v64 = *v63 - 48;
            if (v64 > 9)
            {
              break;
            }

            v65 = 10 * v36;
            if ((v36 * 10) >> 64 != (10 * v36) >> 63)
            {
              break;
            }

            v36 = v65 + v64;
            if (__OFADD__(v65, v64))
            {
              break;
            }

            v63 = (v63 + 1);
            if (!--v32)
            {
              goto LABEL_70;
            }
          }
        }

        goto LABEL_69;
      }

      if (v32)
      {
        if (--v32)
        {
          v36 = 0;
          v52 = &v119 + 1;
          while (1)
          {
            v53 = *v52 - 48;
            if (v53 > 9)
            {
              break;
            }

            v54 = 10 * v36;
            if ((v36 * 10) >> 64 != (10 * v36) >> 63)
            {
              break;
            }

            v36 = v54 - v53;
            if (__OFSUB__(v54, v53))
            {
              break;
            }

            ++v52;
            if (!--v32)
            {
              goto LABEL_70;
            }
          }
        }

        goto LABEL_69;
      }
    }

    else
    {
      if ((a4 & 0x1000000000000000) != 0)
      {
        result = ((a5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        result = sub_2664E0B78();
      }

      v35 = *result;
      if (v35 == 43)
      {
        if (v33 >= 1)
        {
          v32 = v33 - 1;
          if (v33 != 1)
          {
            v36 = 0;
            if (result)
            {
              v55 = result + 1;
              while (1)
              {
                v56 = *v55 - 48;
                if (v56 > 9)
                {
                  goto LABEL_69;
                }

                v57 = 10 * v36;
                if ((v36 * 10) >> 64 != (10 * v36) >> 63)
                {
                  goto LABEL_69;
                }

                v36 = v57 + v56;
                if (__OFADD__(v57, v56))
                {
                  goto LABEL_69;
                }

                ++v55;
                if (!--v32)
                {
                  goto LABEL_70;
                }
              }
            }

            goto LABEL_61;
          }

          goto LABEL_69;
        }

        goto LABEL_106;
      }

      if (v35 != 45)
      {
        if (v33)
        {
          v36 = 0;
          if (result)
          {
            while (1)
            {
              v61 = *result - 48;
              if (v61 > 9)
              {
                goto LABEL_69;
              }

              v62 = 10 * v36;
              if ((v36 * 10) >> 64 != (10 * v36) >> 63)
              {
                goto LABEL_69;
              }

              v36 = v62 + v61;
              if (__OFADD__(v62, v61))
              {
                goto LABEL_69;
              }

              ++result;
              if (!--v33)
              {
                goto LABEL_61;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_69:
        v36 = 0;
        LOBYTE(v32) = 1;
LABEL_70:
        LOBYTE(v117) = v32;
        v66 = v32;
        v67 = a1;
        if (v66)
        {
LABEL_71:
          v111 = a1;
          v112 = a3;
          if (qword_280F914E8 != -1)
          {
            swift_once();
          }

          v68 = __swift_project_value_buffer(v14, qword_280F914F0);
          swift_beginAccess();
          v69 = v14;
          v70 = v114;
          v71 = *(v114 + 16);
          v72 = v69;
          v71(v27, v68);
          v73 = sub_2664DFE18();
          v74 = sub_2664E06D8();
          if (os_log_type_enabled(v73, v74))
          {
            v75 = swift_slowAlloc();
            *v75 = 0;
            _os_log_impl(&dword_26629C000, v73, v74, "LibraryProvider#addToPlaylist (adamId) Error converting identifier from String to Int64", v75, 2u);
            v70 = v114;
            MEMORY[0x266784AD0](v75, -1, -1);
          }

          v76 = *(v70 + 8);
          v76(v27, v72);
          v77 = v109;
          (v71)(v109, v68, v72);
          v78 = sub_2664DFE18();
          v79 = sub_2664E06B8();
          if (os_log_type_enabled(v78, v79))
          {
            v80 = swift_slowAlloc();
            v81 = swift_slowAlloc();
            *&v117 = v81;
            *v80 = 134218498;
            *(v80 + 4) = 8;
            *(v80 + 12) = 2048;
            *(v80 + 14) = 22;
            *(v80 + 22) = 2080;
            *(v80 + 24) = sub_2662A320C(0xD000000000000023, 0x80000002664F5790, &v117);
            _os_log_impl(&dword_26629C000, v78, v79, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v80, 0x20u);
            __swift_destroy_boxed_opaque_existential_1Tm(v81);
            MEMORY[0x266784AD0](v81, -1, -1);
            MEMORY[0x266784AD0](v80, -1, -1);
          }

          v76(v77, v72);
          v117 = xmmword_2664E6DB0;
          *&v118 = 0x80000002664F5790;
          v113(0, 0, &v117);
        }

        goto LABEL_81;
      }

      if (v33 >= 1)
      {
        v32 = v33 - 1;
        if (v33 != 1)
        {
          v36 = 0;
          if (result)
          {
            v37 = result + 1;
            while (1)
            {
              v38 = *v37 - 48;
              if (v38 > 9)
              {
                goto LABEL_69;
              }

              v39 = 10 * v36;
              if ((v36 * 10) >> 64 != (10 * v36) >> 63)
              {
                goto LABEL_69;
              }

              v36 = v39 - v38;
              if (__OFSUB__(v39, v38))
              {
                goto LABEL_69;
              }

              ++v37;
              if (!--v32)
              {
                goto LABEL_70;
              }
            }
          }

LABEL_61:
          LOBYTE(v32) = 0;
          goto LABEL_70;
        }

        goto LABEL_69;
      }

      __break(1u);
    }

    __break(1u);
LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

  v83 = a1;

  v36 = sub_26640687C();
  v85 = v84;

  if (v85)
  {
    goto LABEL_71;
  }

LABEL_81:
  if ([a1 isFavoriteSongsPlaylist])
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v86 = __swift_project_value_buffer(v14, qword_280F914F0);
    swift_beginAccess();
    v87 = v114;
    (*(v114 + 16))(v24, v86, v14);
    v88 = sub_2664DFE18();
    v89 = sub_2664E06B8();
    if (os_log_type_enabled(v88, v89))
    {
      v90 = v14;
      v91 = a1;
      v92 = swift_slowAlloc();
      *v92 = 0;
      _os_log_impl(&dword_26629C000, v88, v89, "LibraryProvider#addToPlaylist (adamId) target playlist is Favorite Songs playlist. Marking as favorite", v92, 2u);
      v93 = v92;
      a1 = v91;
      v14 = v90;
      MEMORY[0x266784AD0](v93, -1, -1);
    }

    (*(v87 + 8))(v24, v14);
    v94 = sub_26631C99C(v36, 1, 0, 0, 0);
    v95 = v112[9];
    v96 = v112[10];
    __swift_project_boxed_opaque_existential_1(v112 + 6, v95);
    (*(v96 + 8))(v94, 0, 2, v95, v96);
    if ([a1 valueForProperty_])
    {
      sub_2664E09E8();
      swift_unknownObjectRelease();
    }

    else
    {
      v117 = 0u;
      v118 = 0u;
    }

    v102 = v113;
    v119 = v117;
    v120 = v118;
    if (*(&v118 + 1))
    {
      v103 = swift_dynamicCast();
      v104 = v103 == 0;
      if (v103)
      {
        v105 = v115;
      }

      else
      {
        v105 = 0;
      }

      if (v104)
      {
        v106 = 0;
      }

      else
      {
        v106 = v116;
      }
    }

    else
    {
      sub_2662A9238(&v119, &unk_280074250, &unk_2664E3680);
      v105 = 0;
      v106 = 0;
    }

    v119 = 0uLL;
    *&v120 = 0;
    v102(v105, v106, &v119);
  }

  v108 = a9;
  v109 = a10;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v97 = __swift_project_value_buffer(v14, qword_280F914F0);
  swift_beginAccess();
  (*(v114 + 16))(v21, v97, v14);
  v98 = sub_2664DFE18();
  v99 = sub_2664E06E8();
  if (os_log_type_enabled(v98, v99))
  {
    v100 = swift_slowAlloc();
    *v100 = 0;
    _os_log_impl(&dword_26629C000, v98, v99, "LibraryProvider#addToPlaylist (adamId) getting controller...", v100, 2u);
    MEMORY[0x266784AD0](v100, -1, -1);
  }

  (*(v114 + 8))(v21, v14);
  v101 = a1;

  sub_2663639A8(v110, v111, v108, v109, v112, v36, v101, a4, a5, v113, a3);
}

uint64_t sub_26635A544(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = a4;
  v28 = a6;
  v29 = a2;
  v11 = sub_2664DFE38();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v11, qword_280F914F0);
  swift_beginAccess();
  (*(v12 + 16))(v14, v15, v11);
  v16 = sub_2664DFE18();
  v17 = sub_2664E06E8();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_26629C000, v16, v17, "LibraryProvider#addToPlaylist (adamId) retrieved controller, adding item...", v18, 2u);
    MEMORY[0x266784AD0](v18, -1, -1);
  }

  (*(v12 + 8))(v14, v11);
  v19 = a1[3];
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v19);
  v21 = [a3 persistentID];
  v22 = swift_allocObject();
  v23 = v28;
  v22[2] = v27;
  v22[3] = a5;
  v22[4] = a3;
  v22[5] = v23;
  v22[6] = a7;
  v24 = *(v20 + 8);

  v25 = a3;

  v24(v29, v21, sub_266367664, v22, v19, v20);
}

uint64_t sub_26635A7B8(void *a1, uint64_t a2, unint64_t a3, void *a4, void (*a5)(uint64_t, uint64_t, __int128 *), uint64_t a6)
{
  v12 = sub_2664DFE38();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v82 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v73 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v73 - v19;
  if (a1)
  {
    v74 = a2;
    v77 = a4;
    v80 = a6;
    v81 = a5;
    swift_getErrorValue();
    sub_266369588(v83, &v88);
    v21 = v88;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v22 = __swift_project_value_buffer(v12, qword_280F914F0);
    swift_beginAccess();
    v23 = *(v13 + 16);
    v76 = v22;
    v75 = v23;
    v23(v18, v22, v12);
    v24 = a1;
    v25 = a1;

    v26 = sub_2664DFE18();
    v27 = sub_2664E06D8();

    v28 = os_log_type_enabled(v26, v27);
    v79 = v13;
    v78 = v21;
    if (v28)
    {
      v29 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      *&v88 = v73;
      *v29 = 136315906;
      *(v29 + 4) = sub_2662A320C(v74, a3, &v88);
      *(v29 + 12) = 2080;
      swift_getErrorValue();
      v30 = sub_2664E0DE8();
      v32 = sub_2662A320C(v30, v31, &v88);

      *(v29 + 14) = v32;
      *(v29 + 22) = 2080;
      v33 = sub_2664DE198();
      v34 = [v33 domain];

      v35 = sub_2664E02C8();
      v37 = v36;

      v38 = sub_2662A320C(v35, v37, &v88);
      v13 = v79;

      *(v29 + 24) = v38;
      *(v29 + 32) = 2048;
      v39 = sub_2664DE198();
      v40 = [v39 code];

      *(v29 + 34) = v40;
      _os_log_impl(&dword_26629C000, v26, v27, "LibraryProvider#addToPlaylist (adamId) Error while adding item (identifier=%s) to playlist: description=%s domain=%s code=%ld", v29, 0x2Au);
      v41 = v73;
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v41, -1, -1);
      MEMORY[0x266784AD0](v29, -1, -1);
    }

    else
    {
    }

    v53 = *(v13 + 8);
    v53(v18, v12);
    v54 = v82;
    if ([v77 valueForProperty_])
    {
      sub_2664E09E8();
      swift_unknownObjectRelease();
    }

    else
    {
      v86 = 0u;
      v87 = 0u;
    }

    v88 = v86;
    v89 = v87;
    if (*(&v87 + 1))
    {
      v55 = swift_dynamicCast();
      if (v55)
      {
        v56 = v84;
      }

      else
      {
        v56 = 0;
      }

      if (v55)
      {
        v57 = v85;
      }

      else
      {
        v57 = 0;
      }
    }

    else
    {
      sub_2662A9238(&v88, &unk_280074250, &unk_2664E3680);
      v56 = 0;
      v57 = 0;
    }

    v75(v54, v76, v12);
    v58 = sub_2664DFE18();
    v59 = sub_2664E06B8();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      *&v88 = v61;
      *v60 = 134218498;
      *(v60 + 4) = 8;
      *(v60 + 12) = 2048;
      v62 = v78;
      *(v60 + 14) = qword_2664E6F50[v78 ^ 0x80];
      *(v60 + 22) = 2080;
      *(v60 + 24) = sub_2662A320C(0xD00000000000001DLL, 0x80000002664F57C0, &v88);
      _os_log_impl(&dword_26629C000, v58, v59, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v60, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v61);
      MEMORY[0x266784AD0](v61, -1, -1);
      MEMORY[0x266784AD0](v60, -1, -1);

      v53(v82, v12);
    }

    else
    {

      v53(v54, v12);
      v62 = v78;
    }

    *&v88 = v62 | 0x800;
    *(&v88 + 1) = 0xD00000000000001DLL;
    *&v89 = 0x80000002664F57C0;
    v81(v56, v57, &v88);
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v42 = __swift_project_value_buffer(v12, qword_280F914F0);
    swift_beginAccess();
    (*(v13 + 16))(v20, v42, v12);
    v43 = a4;
    v44 = sub_2664DFE18();
    v45 = sub_2664E06E8();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      *&v86 = v81;
      v82 = v46;
      *v46 = 136315138;
      v47 = [v43 name];
      if (v47)
      {
        LODWORD(v80) = v45;
        v48 = a5;
        v49 = v47;
        v50 = sub_2664E02C8();
        v52 = v51;

        a5 = v48;
        LOBYTE(v45) = v80;
      }

      else
      {
        v50 = 0;
        v52 = 0;
      }

      *&v88 = v50;
      *(&v88 + 1) = v52;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
      v63 = sub_2664E0318();
      v65 = sub_2662A320C(v63, v64, &v86);

      v66 = v82;
      *(v82 + 4) = v65;
      _os_log_impl(&dword_26629C000, v44, v45, "LibraryProvider#addToPlaylist (adamId) Successfully added item into playlist %s", v66, 0xCu);
      v67 = v81;
      __swift_destroy_boxed_opaque_existential_1Tm(v81);
      MEMORY[0x266784AD0](v67, -1, -1);
      MEMORY[0x266784AD0](v66, -1, -1);
    }

    (*(v13 + 8))(v20, v12);
    if ([v43 valueForProperty_])
    {
      sub_2664E09E8();
      swift_unknownObjectRelease();
    }

    else
    {
      v86 = 0u;
      v87 = 0u;
    }

    v88 = v86;
    v89 = v87;
    if (*(&v87 + 1))
    {
      v68 = swift_dynamicCast();
      v69 = v68 == 0;
      if (v68)
      {
        v70 = v84;
      }

      else
      {
        v70 = 0;
      }

      if (v69)
      {
        v71 = 0;
      }

      else
      {
        v71 = v85;
      }
    }

    else
    {
      sub_2662A9238(&v88, &unk_280074250, &unk_2664E3680);
      v70 = 0;
      v71 = 0;
    }

    v88 = 0uLL;
    *&v89 = 0;
    a5(v70, v71, &v88);
  }
}

uint64_t LibraryProvider.addToPlaylist(ulid:item:to:sharedUserIdInfo:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char *a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = v11;
  v49 = a4;
  v48 = a3;
  v47 = a2;
  v46 = a1;
  v17 = sub_2664DFE38();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v44 = a11;
  v43 = a10;
  v45 = a9;
  v21 = __swift_project_value_buffer(v17, qword_280F914F0);
  swift_beginAccess();
  (*(v18 + 16))(v20, v21, v17);
  v22 = sub_2664DFE18();
  v23 = sub_2664E06E8();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v42 = a5;
    v25 = a6;
    v26 = a7;
    v27 = a8;
    v28 = v12;
    v29 = v24;
    *v24 = 0;
    _os_log_impl(&dword_26629C000, v22, v23, "LibraryProvider#addToPlaylist (ulid)...", v24, 2u);
    v30 = v29;
    v12 = v28;
    a8 = v27;
    a7 = v26;
    a6 = v25;
    a5 = v42;
    MEMORY[0x266784AD0](v30, -1, -1);
  }

  (*(v18 + 8))(v20, v17);
  sub_2663608CC(v12, v50);
  v31 = swift_allocObject();
  v32 = v50[7];
  *(v31 + 152) = v50[6];
  *(v31 + 168) = v32;
  *(v31 + 184) = v50[8];
  v33 = v50[3];
  *(v31 + 88) = v50[2];
  *(v31 + 104) = v33;
  v34 = v50[5];
  *(v31 + 120) = v50[4];
  *(v31 + 136) = v34;
  v35 = v50[1];
  *(v31 + 56) = v50[0];
  *(v31 + 16) = v43;
  v36 = v46;
  *(v31 + 24) = v44;
  *(v31 + 32) = v36;
  v37 = v48;
  *(v31 + 40) = v47;
  *(v31 + 48) = v37;
  v38 = v51;
  *(v31 + 72) = v35;
  *(v31 + 200) = v38;
  *(v31 + 208) = a6;
  *(v31 + 216) = a7;
  *(v31 + 224) = a8;
  v39 = v45;
  *(v31 + 232) = v45;

  sub_266365048(a6, a7, a8, v39);
  LibraryProvider.searchForPlaylist(by:sharedUserIdInfo:completion:)(v49, a5, a6, a7, a8, v39, sub_266367050, v31);
}

void sub_26635B470(void *a1, void (*a2)(void), uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v70 = a6;
  v71 = a4;
  v72 = a2;
  v16 = sub_2664DFE38();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v64 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v64 - v24;
  if (a1)
  {
    v68 = a8;
    v69 = a7;
    v26 = qword_280F914E8;
    v65 = a1;
    if (v26 != -1)
    {
      swift_once();
    }

    v27 = a11;
    v67 = a10;
    v66 = a9;
    v28 = __swift_project_value_buffer(v16, qword_280F914F0);
    swift_beginAccess();
    (*(v17 + 16))(v23, v28, v16);

    v29 = sub_2664DFE18();
    v30 = sub_2664E06E8();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v64 = a11;
      v33 = a3;
      v34 = v32;
      *&v73[0] = v32;
      *v31 = 136315138;
      v35 = v71;
      *(v31 + 4) = sub_2662A320C(v71, a5, v73);
      _os_log_impl(&dword_26629C000, v29, v30, "LibraryProvider#addToPlaylist (ulid) Building query to find item with ulid %s...", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v34);
      v36 = v34;
      a3 = v33;
      v27 = v64;
      MEMORY[0x266784AD0](v36, -1, -1);
      MEMORY[0x266784AD0](v31, -1, -1);

      (*(v17 + 8))(v23, v16);
    }

    else
    {

      (*(v17 + 8))(v23, v16);
      v35 = v71;
    }

    v49 = sub_26637C354(v70);
    if (v50)
    {
      v51 = 0;
    }

    else
    {
      v51 = v49;
    }

    sub_2663608CC(v69, v73);
    v52 = swift_allocObject();
    v53 = v73[7];
    *(v52 + 152) = v73[6];
    *(v52 + 168) = v53;
    *(v52 + 184) = v73[8];
    v54 = v73[3];
    *(v52 + 88) = v73[2];
    *(v52 + 104) = v54;
    v55 = v73[5];
    *(v52 + 120) = v73[4];
    *(v52 + 136) = v55;
    v56 = v73[1];
    *(v52 + 56) = v73[0];
    *(v52 + 16) = v35;
    *(v52 + 24) = a5;
    v57 = v72;
    *(v52 + 32) = v51;
    *(v52 + 40) = v57;
    *(v52 + 48) = a3;
    v58 = v74;
    *(v52 + 72) = v56;
    v59 = v68;
    *(v52 + 200) = v58;
    *(v52 + 208) = v59;
    v60 = v66;
    v61 = v67;
    *(v52 + 216) = v66;
    *(v52 + 224) = v61;
    v62 = v65;
    *(v52 + 232) = v27;
    *(v52 + 240) = v62;
    v63 = v62;

    sub_266365048(v59, v60, v61, v27);
    LibraryProvider.mediaQuery(with:for:shouldAllowNonLibraryContent:completion:)(v59, v60, v61, v27, v51, 1, sub_266367360, v52);
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v37 = __swift_project_value_buffer(v16, qword_280F914F0);
    swift_beginAccess();
    v38 = *(v17 + 16);
    v38(v25, v37, v16);
    v39 = sub_2664DFE18();
    v40 = sub_2664E06D8();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v71 = a3;
      v42 = v41;
      *v41 = 0;
      _os_log_impl(&dword_26629C000, v39, v40, "LibraryProvider#addToPlaylist (ulid) Empty playlistCandidate.", v41, 2u);
      MEMORY[0x266784AD0](v42, -1, -1);
    }

    v43 = *(v17 + 8);
    v43(v25, v16);
    v38(v20, v37, v16);
    v44 = sub_2664DFE18();
    v45 = sub_2664E06B8();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = v43;
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *&v75 = v48;
      *v47 = 134218498;
      *(v47 + 4) = 8;
      *(v47 + 12) = 2048;
      *(v47 + 14) = 45;
      *(v47 + 22) = 2080;
      *(v47 + 24) = sub_2662A320C(0xD000000000000020, 0x80000002664F56F0, &v75);
      _os_log_impl(&dword_26629C000, v44, v45, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v47, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v48);
      MEMORY[0x266784AD0](v48, -1, -1);
      MEMORY[0x266784AD0](v47, -1, -1);

      v46(v20, v16);
    }

    else
    {

      v43(v20, v16);
    }

    v75 = xmmword_2664E6DD0;
    v76 = 0x80000002664F56F0;
    v72(&v75);
  }
}

void sub_26635BB2C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(__int128 *), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, uint64_t a11, void *a12)
{
  v102 = a8;
  v103 = a7;
  v107 = a5;
  v17 = sub_2664DFE38();
  v113 = *(v17 - 8);
  v18 = MEMORY[0x28223BE20](v17);
  v109 = &v100 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v108 = &v100 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v101 = &v100 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v100 = &v100 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v104 = &v100 - v27;
  MEMORY[0x28223BE20](v26);
  v29 = &v100 - v28;
  v30 = MEMORY[0x277D837D0];
  v116[3] = MEMORY[0x277D837D0];
  v116[0] = a2;
  v116[1] = a3;
  v31 = objc_opt_self();

  v32 = [v31 ULIDPropertyForGroupingType_];
  if (!v32)
  {
    goto LABEL_42;
  }

  v33 = v32;
  v34 = __swift_project_boxed_opaque_existential_1(v116, v30);
  v35 = *(v30 - 8);
  MEMORY[0x28223BE20](v34);
  v37 = &v100 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v35 + 16))(v37);
  v38 = sub_2664E0D78();
  (*(v35 + 8))(v37, v30);
  __swift_destroy_boxed_opaque_existential_1Tm(v116);
  v39 = [objc_opt_self() predicateWithValue:v38 forProperty:v33];
  swift_unknownObjectRelease();

  [a1 addFilterPredicate_];
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v40 = __swift_project_value_buffer(v17, qword_280F914F0);
  swift_beginAccess();
  v41 = v113;
  v42 = *(v113 + 16);
  v110 = v40;
  v111 = v42;
  v112 = v113 + 16;
  v42(v29, v40, v17);
  v43 = a1;
  v44 = sub_2664DFE18();
  v45 = v17;
  v46 = sub_2664E06E8();

  v47 = os_log_type_enabled(v44, v46);
  v105 = v39;
  v106 = a6;
  if (v47)
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    *&v114 = v49;
    *v48 = 136446210;
    v50 = [v43 description];
    v51 = sub_2664E02C8();
    v53 = v52;

    v54 = sub_2662A320C(v51, v53, &v114);

    *(v48 + 4) = v54;
    _os_log_impl(&dword_26629C000, v44, v46, "LibraryProvider#addToPlaylist (ulid) built query: %{public}s", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v49);
    v55 = v49;
    v41 = v113;
    MEMORY[0x266784AD0](v55, -1, -1);
    MEMORY[0x266784AD0](v48, -1, -1);
  }

  v56 = *(v41 + 8);
  v56(v29, v45);
  v57 = v45;
  v58 = [v43 collections];
  v59 = v109;
  v60 = v110;
  v61 = v108;
  if (!v58)
  {
    goto LABEL_31;
  }

  v62 = v58;
  sub_2662C1744(0, &qword_280072D70, 0x277CD5DF0);
  v63 = sub_2664E04A8();

  if (!(v63 >> 62))
  {
    if (*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
    {
      goto LABEL_9;
    }

    goto LABEL_30;
  }

  if (sub_2664E0A68() < 1)
  {
LABEL_30:

LABEL_31:
    v111(v61, v60, v57);
    v93 = sub_2664DFE18();
    v94 = sub_2664E06D8();
    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      *v95 = 0;
      _os_log_impl(&dword_26629C000, v93, v94, "LibraryProvider#addToPlaylist (ulid) No item were found.", v95, 2u);
      MEMORY[0x266784AD0](v95, -1, -1);
    }

    v56(v61, v57);
    v111(v59, v60, v57);
    v96 = sub_2664DFE18();
    v97 = sub_2664E06B8();
    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      *&v114 = v99;
      *v98 = 134218498;
      *(v98 + 4) = 8;
      *(v98 + 12) = 2048;
      *(v98 + 14) = 18;
      *(v98 + 22) = 2080;
      *(v98 + 24) = sub_2662A320C(0xD000000000000011, 0x80000002664F5720, &v114);
      _os_log_impl(&dword_26629C000, v96, v97, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v98, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v99);
      MEMORY[0x266784AD0](v99, -1, -1);
      MEMORY[0x266784AD0](v98, -1, -1);
    }

    v56(v59, v57);
    v114 = xmmword_2664E6DF0;
    v115 = 0x80000002664F5720;
    v107(&v114);

    goto LABEL_36;
  }

LABEL_9:
  if ((v63 & 0xC000000000000001) != 0)
  {
    v64 = MEMORY[0x266783B70](0, v63);
  }

  else
  {
    if (!*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_40:
      v82 = v57;
      v83 = MEMORY[0x266783B70](0, v63);
      goto LABEL_26;
    }

    v64 = *(v63 + 32);
  }

  v65 = v64;
  v66 = [v64 items];

  sub_2662C1744(0, &qword_280072D58, 0x277CD5DE0);
  v67 = sub_2664E04A8();

  if (v67 >> 62)
  {
    v68 = sub_2664E0A68();
  }

  else
  {
    v68 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v68 < 1)
  {

    v70 = v100;
    v111(v100, v60, v57);
    v71 = sub_2664DFE18();
    v72 = sub_2664E06D8();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      *v73 = 0;
      _os_log_impl(&dword_26629C000, v71, v72, "LibraryProvider#addToPlaylist (ulid) Result MPMediaCollection has no items.", v73, 2u);
      MEMORY[0x266784AD0](v73, -1, -1);
    }

    v56(v70, v57);
    v74 = v101;
    v111(v101, v60, v57);
    v75 = sub_2664DFE18();
    v76 = sub_2664E06B8();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      *&v114 = v78;
      *v77 = 134218498;
      *(v77 + 4) = 8;
      *(v77 + 12) = 2048;
      *(v77 + 14) = 15;
      *(v77 + 22) = 2080;
      *(v77 + 24) = sub_2662A320C(0x5F736D6574496F4ELL, 0xEC00000044494C55, &v114);
      _os_log_impl(&dword_26629C000, v75, v76, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v77, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v78);
      MEMORY[0x266784AD0](v78, -1, -1);
      MEMORY[0x266784AD0](v77, -1, -1);
    }

    v56(v74, v57);
    v79 = v105;
    v114 = xmmword_2664E6DE0;
    v115 = 0xEC00000044494C55;
    v107(&v114);

LABEL_36:

    return;
  }

  if ((v63 & 0xC000000000000001) != 0)
  {
    v69 = MEMORY[0x266783B70](0, v63);
  }

  else
  {
    v69 = *(v63 + 32);
  }

  v80 = v69;

  v81 = [v80 items];

  v63 = sub_2664E04A8();
  if ((v63 & 0xC000000000000001) != 0)
  {
    goto LABEL_40;
  }

  if (!*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_42:
    __break(1u);
    return;
  }

  v82 = v57;
  v83 = *(v63 + 32);
LABEL_26:
  v84 = v83;

  v85 = v104;
  v111(v104, v110, v82);
  v86 = sub_2664DFE18();
  v87 = sub_2664E06E8();
  if (os_log_type_enabled(v86, v87))
  {
    v88 = swift_slowAlloc();
    *v88 = 0;
    _os_log_impl(&dword_26629C000, v86, v87, "LibraryProvider#addToPlaylist (ulid) getting controller...", v88, 2u);
    v89 = v88;
    v85 = v104;
    MEMORY[0x266784AD0](v89, -1, -1);
  }

  v56(v85, v82);
  v90 = v84;
  v91 = v106;

  v92 = a12;
  sub_266363FB8(v102, a9, a10, a11, v103, v90, v107, v91, v92);
}

uint64_t sub_26635C6B8(void *a1, void *a2, void (*a3)(void), uint64_t a4, void *a5)
{
  v42 = a1;
  v43 = a5;
  v46 = a3;
  v47 = a4;
  v45 = a2;
  v5 = sub_2664DFE38();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v44 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v41 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v41 - v12;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v5, qword_280F914F0);
  swift_beginAccess();
  v15 = *(v6 + 16);
  v15(v13, v14, v5);
  v16 = sub_2664DFE18();
  v17 = sub_2664E06E8();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_26629C000, v16, v17, "LibraryProvider#addToPlaylist (ulid) received controller, adding...", v18, 2u);
    MEMORY[0x266784AD0](v18, -1, -1);
  }

  v19 = *(v6 + 8);
  v19(v13, v5);
  if ([v45 valueForProperty_])
  {
    sub_2664E09E8();
    swift_unknownObjectRelease();
  }

  else
  {
    v49 = 0u;
    v50 = 0u;
  }

  v51 = v49;
  v52 = v50;
  if (*(&v50 + 1))
  {
    if (swift_dynamicCast())
    {
      v20 = v48;
      v21 = v42[3];
      v22 = v42[4];
      __swift_project_boxed_opaque_existential_1(v42, v21);
      v23 = v43;
      v24 = [v43 persistentID];
      v25 = swift_allocObject();
      v26 = v46;
      v25[2] = v20;
      v25[3] = v26;
      v25[4] = v47;
      v25[5] = v23;
      v27 = *(v22 + 16);

      v28 = v23;
      v27(v20, v24, sub_2663673B0, v25, v21, v22);
    }
  }

  else
  {
    sub_2662A9238(&v51, &unk_280074250, &unk_2664E3680);
  }

  v15(v11, v14, v5);
  v30 = sub_2664DFE18();
  v31 = sub_2664E06D8();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_26629C000, v30, v31, "LibraryProvider#addToPlaylist (ulid) Cast value to UInt64 failed.", v32, 2u);
    MEMORY[0x266784AD0](v32, -1, -1);
  }

  v19(v11, v5);
  v33 = v44;
  v15(v44, v14, v5);
  v34 = sub_2664DFE18();
  v35 = v19;
  v36 = sub_2664E06B8();
  if (os_log_type_enabled(v34, v36))
  {
    v37 = swift_slowAlloc();
    v38 = v33;
    v39 = swift_slowAlloc();
    *&v51 = v39;
    *v37 = 134218498;
    *(v37 + 4) = 8;
    *(v37 + 12) = 2048;
    *(v37 + 14) = 22;
    *(v37 + 22) = 2080;
    *(v37 + 24) = sub_2662A320C(0x494C555F74736143, 0xE900000000000044, &v51);
    _os_log_impl(&dword_26629C000, v34, v36, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v37, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v39);
    MEMORY[0x266784AD0](v39, -1, -1);
    MEMORY[0x266784AD0](v37, -1, -1);

    v40 = v38;
  }

  else
  {

    v40 = v33;
  }

  v35(v40, v5);
  v51 = xmmword_2664E6E00;
  *&v52 = 0xE900000000000044;
  v46(&v51);
}

uint64_t sub_26635CBF4(void *a1, uint64_t a2, void (*a3)(void **), uint64_t a4, void *a5)
{
  v72 = a3;
  v9 = sub_2664DFE38();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v64[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v64[-v15];
  MEMORY[0x28223BE20](v14);
  v18 = &v64[-v17];
  if (a1)
  {
    v68 = a2;
    v71 = a4;
    swift_getErrorValue();
    sub_266369588(v73, v78);
    v19 = v78[0];
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v20 = __swift_project_value_buffer(v9, qword_280F914F0);
    swift_beginAccess();
    v69 = *(v10 + 16);
    v69(v16, v20, v9);
    v21 = a1;
    v22 = a1;
    v23 = sub_2664DFE18();
    v24 = sub_2664E06D8();
    v25 = os_log_type_enabled(v23, v24);
    v70 = v19;
    if (v25)
    {
      v26 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v75 = v66;
      *v26 = 134218754;
      *(v26 + 4) = v68;
      v67 = v20;
      *(v26 + 12) = 2080;
      swift_getErrorValue();
      v65 = v24;
      v27 = sub_2664E0DE8();
      v29 = sub_2662A320C(v27, v28, &v75);
      v68 = v9;
      v30 = v13;
      v31 = v10;
      v32 = v29;

      *(v26 + 14) = v32;
      *(v26 + 22) = 2080;
      v33 = sub_2664DE198();
      v34 = [v33 domain];

      v35 = sub_2664E02C8();
      v37 = v36;

      v10 = v31;
      v13 = v30;
      v9 = v68;
      v38 = sub_2662A320C(v35, v37, &v75);

      *(v26 + 24) = v38;
      *(v26 + 32) = 2048;
      v39 = sub_2664DE198();
      v40 = [v39 code];

      *(v26 + 34) = v40;
      v20 = v67;

      _os_log_impl(&dword_26629C000, v23, v65, "LibraryProvider#addToPlaylist (ulid) Error while adding item (sagaID=%llu) to playlist: description=%s domain=%s code=%ld", v26, 0x2Au);
      v41 = v66;
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v41, -1, -1);
      MEMORY[0x266784AD0](v26, -1, -1);
    }

    else
    {
    }

    v53 = *(v10 + 8);
    v53(v16, v9);
    v69(v13, v20, v9);
    v54 = sub_2664DFE18();
    v55 = sub_2664E06B8();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = v13;
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v75 = v58;
      *v57 = 134218498;
      *(v57 + 4) = 8;
      *(v57 + 12) = 2048;
      v59 = v70;
      *(v57 + 14) = qword_2664E6F50[v70 ^ 0x80];
      *(v57 + 22) = 2080;
      *(v57 + 24) = sub_2662A320C(0xD00000000000001BLL, 0x80000002664F5740, &v75);
      _os_log_impl(&dword_26629C000, v54, v55, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v57, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v58);
      MEMORY[0x266784AD0](v58, -1, -1);
      MEMORY[0x266784AD0](v57, -1, -1);

      v53(v56, v9);
    }

    else
    {

      v53(v13, v9);
      v59 = v70;
    }

    v75 = (v59 | 0x800);
    v76 = 0xD00000000000001BLL;
    v77 = 0x80000002664F5740;
    v72(&v75);
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v42 = __swift_project_value_buffer(v9, qword_280F914F0);
    swift_beginAccess();
    (*(v10 + 16))(v18, v42, v9);
    v43 = a5;
    v44 = sub_2664DFE18();
    v45 = sub_2664E06E8();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v74 = v47;
      *v46 = 136315138;
      v48 = [v43 name];
      if (v48)
      {
        v71 = v46;
        v49 = v48;
        v50 = sub_2664E02C8();
        v52 = v51;

        v46 = v71;
      }

      else
      {
        v50 = 0;
        v52 = 0;
      }

      v75 = v50;
      v76 = v52;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
      v61 = sub_2664E0318();
      v63 = sub_2662A320C(v61, v62, &v74);

      *(v46 + 4) = v63;
      _os_log_impl(&dword_26629C000, v44, v45, "LibraryProvider#addToPlaylist (ulid) Successfully added item into playlist %s", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v47);
      MEMORY[0x266784AD0](v47, -1, -1);
      MEMORY[0x266784AD0](v46, -1, -1);
    }

    (*(v10 + 8))(v18, v9);
    v75 = 0;
    v76 = 0;
    v77 = 0;
    return (v72)(&v75);
  }
}

void sub_26635D398(void *a1, void (*a2)(__int128 *), uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t *a7, uint64_t a8, uint64_t a9, char *a10, uint64_t a11)
{
  v73 = a8;
  v74 = a5;
  v75 = a7;
  v76 = a2;
  v77 = a3;
  v14 = sub_2664DFE38();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v68 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v68 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v68 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v68 - v28;
  if (!a1)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v44 = __swift_project_value_buffer(v14, qword_280F914F0);
    swift_beginAccess();
    v45 = *(v15 + 16);
    v45(v29, v44, v14);
    v46 = sub_2664DFE18();
    v47 = sub_2664E06D8();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_26629C000, v46, v47, "LibraryProvider#addToPlaylist (siriSyncID) Empty playlistCandidate.", v48, 2u);
      MEMORY[0x266784AD0](v48, -1, -1);
    }

    v49 = *(v15 + 8);
    v49(v29, v14);
    v45(v18, v44, v14);
    v50 = sub_2664DFE18();
    v51 = sub_2664E06B8();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *&v78 = v53;
      *v52 = 134218498;
      *(v52 + 4) = 8;
      *(v52 + 12) = 2048;
      *(v52 + 14) = 45;
      *(v52 + 22) = 2080;
      *(v52 + 24) = sub_2662A320C(0xD000000000000026, 0x80000002664F5660, &v78);
      _os_log_impl(&dword_26629C000, v50, v51, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v52, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v53);
      MEMORY[0x266784AD0](v53, -1, -1);
      MEMORY[0x266784AD0](v52, -1, -1);
    }

    v49(v18, v14);
    v78 = xmmword_2664E6E20;
    v79 = 0x80000002664F5660;
    v76(&v78);
    goto LABEL_17;
  }

  v30 = a1;
  v31 = sub_26637C354(a4);
  if (v32)
  {
    v72 = v30;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v33 = __swift_project_value_buffer(v14, qword_280F914F0);
    swift_beginAccess();
    v34 = *(v15 + 16);
    v34(v27, v33, v14);
    v35 = sub_2664DFE18();
    v36 = sub_2664E06D8();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_26629C000, v35, v36, "LocalPlaybackHandler#addToPlaylist (siriSyncID) Failed to get grouping for scheme", v37, 2u);
      MEMORY[0x266784AD0](v37, -1, -1);
    }

    v38 = *(v15 + 8);
    v38(v27, v14);
    v34(v21, v33, v14);
    v39 = sub_2664DFE18();
    v40 = sub_2664E06B8();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *&v78 = v42;
      *v41 = 134218498;
      *(v41 + 4) = 8;
      *(v41 + 12) = 2048;
      *(v41 + 14) = 11;
      *(v41 + 22) = 2080;
      *(v41 + 24) = sub_2662A320C(0xD000000000000015, 0x80000002664F5690, &v78);
      _os_log_impl(&dword_26629C000, v39, v40, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v41, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v42);
      MEMORY[0x266784AD0](v42, -1, -1);
      MEMORY[0x266784AD0](v41, -1, -1);
    }

    v38(v21, v14);
    v43 = v72;
    v78 = xmmword_2664E6E10;
    v79 = 0x80000002664F5690;
    v76(&v78);

LABEL_17:

    return;
  }

  v54 = v31;
  v55 = a11;
  v70 = a9;
  v71 = a10;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v56 = __swift_project_value_buffer(v14, qword_280F914F0);
  swift_beginAccess();
  (*(v15 + 16))(v24, v56, v14);

  v57 = sub_2664DFE18();
  v58 = sub_2664E06E8();

  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v69 = a11;
    v60 = v59;
    v61 = swift_slowAlloc();
    v72 = v30;
    v62 = v61;
    *&v78 = v61;
    *v60 = 136315394;
    v63 = v74;
    *(v60 + 4) = sub_2662A320C(v74, a6, &v78);
    *(v60 + 12) = 2048;
    *(v60 + 14) = v54;
    _os_log_impl(&dword_26629C000, v57, v58, "LibraryProvider#addToPlaylist (siriSyncID) Building query to find item with siriSyncID %s grouping %ld...", v60, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v62);
    v64 = v62;
    v30 = v72;
    MEMORY[0x266784AD0](v64, -1, -1);
    v65 = v60;
    v55 = v69;
    MEMORY[0x266784AD0](v65, -1, -1);

    (*(v15 + 8))(v24, v14);
  }

  else
  {

    (*(v15 + 8))(v24, v14);
    v63 = v74;
  }

  v66 = v30;

  v67 = v77;

  sub_2663658E0(v73, v70, v71, v55, v54, 1, v75, v63, a6, v76, v67, v54, v66);
}

void sub_26635DBA4(void *a1, uint64_t a2, void *a3, void (*a4)(__int128 *), uint64_t a5, uint64_t a6, void *a7)
{
  v122 = a7;
  v130 = a5;
  v12 = sub_2664DFE38();
  v13 = *(v12 - 8);
  v131 = v12;
  v132 = v13;
  v14 = MEMORY[0x28223BE20](v12);
  v128 = &v120 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v120 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v125 = &v120 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v123 = &v120 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v124 = &v120 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v126 = &v120 - v26;
  MEMORY[0x28223BE20](v25);
  v28 = &v120 - v27;
  v29 = [a1 mediaLibrary];
  if (!v29)
  {
    __break(1u);
    return;
  }

  v30 = v29;
  v31._countAndFlagsBits = a2;
  v31._object = a3;
  v137 = MPMediaLibrary.persistentID(fromSiriSyncID:)(v31);
  value = v137.value;
  is_nil = v137.is_nil;

  v129 = a4;
  if (is_nil)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v34 = v131;
    v35 = __swift_project_value_buffer(v131, qword_280F914F0);
    swift_beginAccess();
    v36 = v132;
    v37 = *(v132 + 16);
    v37(v18, v35, v34);

    v38 = sub_2664DFE18();
    v39 = sub_2664E06D8();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *&v135 = v41;
      *v40 = 136315138;
      *(v40 + 4) = sub_2662A320C(a2, a3, &v135);
      _os_log_impl(&dword_26629C000, v38, v39, "LibraryProvider#addToPlaylist (siriSyncID) received nil persistentID when converting siriSyncID: %s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v41);
      v42 = v41;
      v34 = v131;
      MEMORY[0x266784AD0](v42, -1, -1);
      v43 = v40;
      v36 = v132;
      MEMORY[0x266784AD0](v43, -1, -1);
    }

    v44 = *(v36 + 8);
    v44(v18, v34);
    v45 = v128;
    v37(v128, v35, v34);
    v46 = sub_2664DFE18();
    v47 = sub_2664E06B8();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *&v135 = v49;
      *v48 = 134218498;
      *(v48 + 4) = 8;
      *(v48 + 12) = 2048;
      *(v48 + 14) = 18;
      *(v48 + 22) = 2080;
      *(v48 + 24) = sub_2662A320C(0xD000000000000015, 0x80000002664F56B0, &v135);
      _os_log_impl(&dword_26629C000, v46, v47, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v48, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v49);
      MEMORY[0x266784AD0](v49, -1, -1);
      MEMORY[0x266784AD0](v48, -1, -1);
    }

    v44(v45, v34);
    v135 = xmmword_2664E6E40;
    v136 = 0x80000002664F56B0;
    v129(&v135);
LABEL_38:

    return;
  }

  v50 = MEMORY[0x277D84D38];
  v134[3] = MEMORY[0x277D84D38];
  v134[0] = value;
  v51 = [objc_opt_self() persistentIDPropertyForGroupingType_];
  if (!v51)
  {
    sub_2664E02C8();
    v51 = sub_2664E02A8();
  }

  v52 = __swift_project_boxed_opaque_existential_1(v134, v50);
  v53 = *(v50 - 8);
  MEMORY[0x28223BE20](v52);
  v55 = &v120 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v53 + 16))(v55);
  v56 = sub_2664E0D78();
  (*(v53 + 8))(v55, v50);
  __swift_destroy_boxed_opaque_existential_1Tm(v134);
  v57 = [objc_opt_self() predicateWithValue:v56 forProperty:v51];
  swift_unknownObjectRelease();

  v121 = v57;
  [a1 addFilterPredicate_];
  v58 = v131;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v59 = __swift_project_value_buffer(v58, qword_280F914F0);
  swift_beginAccess();
  v60 = v132;
  v127 = *(v132 + 16);
  v128 = v59;
  v127(v28, v59, v58);
  v61 = a1;
  v62 = sub_2664DFE18();
  v63 = sub_2664E06E8();

  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    *&v135 = v65;
    *v64 = 136446210;
    v66 = [v61 description];
    v67 = sub_2664E02C8();
    v69 = v68;

    v70 = v67;
    v60 = v132;
    v71 = sub_2662A320C(v70, v69, &v135);
    v58 = v131;

    *(v64 + 4) = v71;
    _os_log_impl(&dword_26629C000, v62, v63, "LibraryProvider#addToPlaylist (siriSyncID) query: %{public}s", v64, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v65);
    MEMORY[0x266784AD0](v65, -1, -1);
    MEMORY[0x266784AD0](v64, -1, -1);
  }

  v72 = *(v60 + 8);
  v72(v28, v58);
  v73 = v126;
  v127(v126, v128, v58);
  v74 = v61;
  v75 = sub_2664DFE18();
  v76 = sub_2664E06E8();

  if (os_log_type_enabled(v75, v76))
  {
    v120 = v72;
    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    *&v135 = v78;
    *v77 = 136315394;
    v79 = [v74 items];
    if (v79)
    {
      v80 = v79;
      sub_2662C1744(0, &qword_280072D58, 0x277CD5DE0);
      v81 = sub_2664E04A8();
    }

    else
    {
      v81 = 0;
    }

    v133 = v81;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072D60, &qword_2664E6F28);
    v84 = sub_2664E0318();
    v86 = sub_2662A320C(v84, v85, &v135);

    *(v77 + 4) = v86;
    *(v77 + 12) = 2080;
    v87 = [v74 collections];
    if (v87)
    {
      v88 = v87;
      sub_2662C1744(0, &qword_280072D70, 0x277CD5DF0);
      v89 = sub_2664E04A8();
    }

    else
    {
      v89 = 0;
    }

    v133 = v89;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072D68, &unk_2664E6F30);
    v90 = sub_2664E0318();
    v92 = sub_2662A320C(v90, v91, &v135);

    *(v77 + 14) = v92;
    _os_log_impl(&dword_26629C000, v75, v76, "LibraryProvider#addToPlaylist (siriSyncID) queryItems: %s queryCollections: %s...", v77, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v78, -1, -1);
    MEMORY[0x266784AD0](v77, -1, -1);

    v58 = v131;
    v82 = v126;
    v83 = v131;
    v72 = v120;
  }

  else
  {

    v82 = v73;
    v83 = v58;
  }

  v72(v82, v83);
  v93 = [v74 items];
  v94 = v125;
  if (!v93)
  {
LABEL_33:
    v109 = v123;
    v127(v123, v128, v58);
    v110 = sub_2664DFE18();
    v111 = sub_2664E06D8();
    if (os_log_type_enabled(v110, v111))
    {
      v112 = swift_slowAlloc();
      *v112 = 0;
      _os_log_impl(&dword_26629C000, v110, v111, "LibraryProvider#addToPlaylist (siriSyncID) No item were found.", v112, 2u);
      MEMORY[0x266784AD0](v112, -1, -1);
    }

    v72(v109, v58);
    v127(v94, v128, v58);
    v113 = sub_2664DFE18();
    v114 = sub_2664E06B8();
    if (os_log_type_enabled(v113, v114))
    {
      v115 = swift_slowAlloc();
      v116 = swift_slowAlloc();
      *&v135 = v116;
      *v115 = 134218498;
      *(v115 + 4) = 8;
      *(v115 + 12) = 2048;
      *(v115 + 14) = 18;
      *(v115 + 22) = 2080;
      *(v115 + 24) = sub_2662A320C(0xD000000000000017, 0x80000002664F56D0, &v135);
      _os_log_impl(&dword_26629C000, v113, v114, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v115, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v116);
      MEMORY[0x266784AD0](v116, -1, -1);
      MEMORY[0x266784AD0](v115, -1, -1);
    }

    v72(v94, v58);
    v135 = xmmword_2664E6E30;
    v136 = 0x80000002664F56D0;
    v129(&v135);

    goto LABEL_38;
  }

  v95 = v93;
  sub_2662C1744(0, &qword_280072D58, 0x277CD5DE0);
  v96 = sub_2664E04A8();
  if (v96 >> 62)
  {
    v97 = sub_2664E0A68();
  }

  else
  {
    v97 = *((v96 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v98 = v124;

  if (v97 < 1)
  {

    goto LABEL_33;
  }

  v127(v98, v128, v58);
  v99 = v122;
  v100 = sub_2664DFE18();
  v101 = sub_2664E06E8();

  if (os_log_type_enabled(v100, v101))
  {
    v120 = v72;
    v102 = swift_slowAlloc();
    v103 = swift_slowAlloc();
    v133 = v103;
    *v102 = 136315138;
    v104 = [v99 name];
    if (v104)
    {
      v105 = v104;
      v106 = sub_2664E02C8();
      v108 = v107;
    }

    else
    {
      v106 = 0;
      v108 = 0;
    }

    *&v135 = v106;
    *(&v135 + 1) = v108;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
    v117 = sub_2664E0318();
    v119 = sub_2662A320C(v117, v118, &v133);

    *(v102 + 4) = v119;
    _os_log_impl(&dword_26629C000, v100, v101, "LibraryProvider#addToPlaylist (siriSyncID) Successfully added item(s) into playlist %s", v102, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v103);
    MEMORY[0x266784AD0](v103, -1, -1);
    MEMORY[0x266784AD0](v102, -1, -1);

    v120(v98, v131);
  }

  else
  {

    v72(v98, v58);
  }

  [v99 addMediaItems:v95 completionHandler:0];

  v135 = 0uLL;
  v136 = 0;
  v129(&v135);
}

uint64_t sub_26635EA44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char *a8, uint64_t a9, uint64_t a10, uint64_t a11, const char *a12, uint64_t a13, uint64_t a14)
{
  v15 = v14;
  v53 = a4;
  v51 = a3;
  v52 = a2;
  v50 = a1;
  v54 = a14;
  v48 = a13;
  v20 = sub_2664DFE38();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v47 = a11;
  v46 = a10;
  v49 = a9;
  v24 = __swift_project_value_buffer(v20, qword_280F914F0);
  swift_beginAccess();
  (*(v21 + 16))(v23, v24, v20);
  v25 = sub_2664DFE18();
  v26 = sub_2664E06E8();
  if (os_log_type_enabled(v25, v26))
  {
    v44 = a12;
    v27 = swift_slowAlloc();
    v45 = a5;
    v28 = a6;
    v29 = a7;
    v30 = a8;
    v31 = v15;
    v32 = v27;
    *v27 = 0;
    _os_log_impl(&dword_26629C000, v25, v26, v44, v27, 2u);
    v33 = v32;
    v15 = v31;
    a8 = v30;
    a7 = v29;
    a6 = v28;
    a5 = v45;
    MEMORY[0x266784AD0](v33, -1, -1);
  }

  (*(v21 + 8))(v23, v20);
  sub_2663608CC(v15, v55);
  v34 = swift_allocObject();
  v35 = v55[7];
  *(v34 + 152) = v55[6];
  *(v34 + 168) = v35;
  *(v34 + 184) = v55[8];
  v36 = v55[3];
  *(v34 + 88) = v55[2];
  *(v34 + 104) = v36;
  v37 = v55[5];
  *(v34 + 120) = v55[4];
  *(v34 + 136) = v37;
  v38 = v55[1];
  *(v34 + 56) = v55[0];
  *(v34 + 16) = v46;
  v39 = v51;
  *(v34 + 24) = v47;
  *(v34 + 32) = v39;
  v40 = v52;
  *(v34 + 40) = v50;
  *(v34 + 48) = v40;
  v41 = v56;
  *(v34 + 72) = v38;
  *(v34 + 200) = v41;
  *(v34 + 208) = a6;
  *(v34 + 216) = a7;
  *(v34 + 224) = a8;
  v42 = v49;
  *(v34 + 232) = v49;

  sub_266365048(a6, a7, a8, v42);
  LibraryProvider.searchForPlaylist(by:sharedUserIdInfo:completion:)(v53, a5, a6, a7, a8, v42, v54, v34);
}

void sub_26635EDC0(void *a1, void (*a2)(__int128 *), uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9, char *a10, uint64_t a11)
{
  v73 = a8;
  v74 = a5;
  v75 = a7;
  v76 = a2;
  v77 = a3;
  v14 = sub_2664DFE38();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v68 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v68 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v68 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v68 - v28;
  if (!a1)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v44 = __swift_project_value_buffer(v14, qword_280F914F0);
    swift_beginAccess();
    v45 = *(v15 + 16);
    v45(v29, v44, v14);
    v46 = sub_2664DFE18();
    v47 = sub_2664E06D8();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_26629C000, v46, v47, "LibraryProvider#addToPlaylist (deviceID) Empty playlistCandidate.", v48, 2u);
      MEMORY[0x266784AD0](v48, -1, -1);
    }

    v49 = *(v15 + 8);
    v49(v29, v14);
    v45(v18, v44, v14);
    v50 = sub_2664DFE18();
    v51 = sub_2664E06B8();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *&v78 = v53;
      *v52 = 134218498;
      *(v52 + 4) = 8;
      *(v52 + 12) = 2048;
      *(v52 + 14) = 45;
      *(v52 + 22) = 2080;
      *(v52 + 24) = sub_2662A320C(0xD000000000000024, 0x80000002664F55F0, &v78);
      _os_log_impl(&dword_26629C000, v50, v51, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v52, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v53);
      MEMORY[0x266784AD0](v53, -1, -1);
      MEMORY[0x266784AD0](v52, -1, -1);
    }

    v49(v18, v14);
    v78 = xmmword_2664E6E60;
    v79 = 0x80000002664F55F0;
    v76(&v78);
    goto LABEL_17;
  }

  v30 = a1;
  v31 = sub_26637C354(a4);
  if (v32)
  {
    v72 = v30;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v33 = __swift_project_value_buffer(v14, qword_280F914F0);
    swift_beginAccess();
    v34 = *(v15 + 16);
    v34(v27, v33, v14);
    v35 = sub_2664DFE18();
    v36 = sub_2664E06D8();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_26629C000, v35, v36, "LocalPlaybackHandler#addToPlaylist (deviceID) Failed to get grouping for scheme", v37, 2u);
      MEMORY[0x266784AD0](v37, -1, -1);
    }

    v38 = *(v15 + 8);
    v38(v27, v14);
    v34(v21, v33, v14);
    v39 = sub_2664DFE18();
    v40 = sub_2664E06B8();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *&v78 = v42;
      *v41 = 134218498;
      *(v41 + 4) = 8;
      *(v41 + 12) = 2048;
      *(v41 + 14) = 11;
      *(v41 + 22) = 2080;
      *(v41 + 24) = sub_2662A320C(0xD000000000000013, 0x80000002664F5620, &v78);
      _os_log_impl(&dword_26629C000, v39, v40, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v41, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v42);
      MEMORY[0x266784AD0](v42, -1, -1);
      MEMORY[0x266784AD0](v41, -1, -1);
    }

    v38(v21, v14);
    v43 = v72;
    v78 = xmmword_2664E6E50;
    v79 = 0x80000002664F5620;
    v76(&v78);

LABEL_17:

    return;
  }

  v54 = v31;
  v55 = a11;
  v70 = a9;
  v71 = a10;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v56 = __swift_project_value_buffer(v14, qword_280F914F0);
  swift_beginAccess();
  (*(v15 + 16))(v24, v56, v14);

  v57 = sub_2664DFE18();
  v58 = sub_2664E06E8();

  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v69 = a11;
    v60 = v59;
    v61 = swift_slowAlloc();
    v72 = v30;
    v62 = v61;
    *&v78 = v61;
    *v60 = 136315394;
    v63 = v74;
    *(v60 + 4) = sub_2662A320C(v74, a6, &v78);
    *(v60 + 12) = 2048;
    *(v60 + 14) = v54;
    _os_log_impl(&dword_26629C000, v57, v58, "LibraryProvider#addToPlaylist (deviceID) Building query to find item with deviceID %s grouping %ld...", v60, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v62);
    v64 = v62;
    v30 = v72;
    MEMORY[0x266784AD0](v64, -1, -1);
    v65 = v60;
    v55 = v69;
    MEMORY[0x266784AD0](v65, -1, -1);

    (*(v15 + 8))(v24, v14);
  }

  else
  {

    (*(v15 + 8))(v24, v14);
    v63 = v74;
  }

  v66 = v30;

  v67 = v77;

  sub_266366098(v73, v70, v71, v55, v54, 1, v75, v63, a6, v54, v76, v67, v66);
}

void sub_26635F5CC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(__int128 *), uint64_t a6, void *a7)
{
  v99 = a7;
  v105 = a6;
  v106 = a5;
  v11 = sub_2664DFE38();
  v108 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v99 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v103 = &v99 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v99 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v107 = &v99 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v99 - v22;
  v24 = MEMORY[0x277D837D0];
  v115[3] = MEMORY[0x277D837D0];
  v115[0] = a2;
  v115[1] = a3;
  v25 = objc_opt_self();

  v26 = [v25 persistentIDPropertyForGroupingType_];
  if (!v26)
  {
    sub_2664E02C8();
    v26 = sub_2664E02A8();
  }

  v101 = v19;
  v104 = v14;
  v27 = __swift_project_boxed_opaque_existential_1(v115, v24);
  v28 = *(v24 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = &v99 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v28 + 16))(v30);
  v31 = sub_2664E0D78();
  (*(v28 + 8))(v30, v24);
  __swift_destroy_boxed_opaque_existential_1Tm(v115);
  v32 = [objc_opt_self() predicateWithValue:v31 forProperty:v26];
  swift_unknownObjectRelease();

  [a1 addFilterPredicate_];
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v33 = __swift_project_value_buffer(v11, qword_280F914F0);
  swift_beginAccess();
  v34 = v108;
  v35 = *(v108 + 16);
  v110 = v108 + 16;
  v111 = v33;
  v109 = v35;
  v35(v23, v33, v11);
  v36 = a1;
  v37 = sub_2664DFE18();
  v38 = sub_2664E06E8();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v100 = v32;
    v41 = v11;
    v42 = v40;
    *&v113 = v40;
    *v39 = 136446210;
    v43 = [v36 description];
    v44 = sub_2664E02C8();
    v46 = v45;

    v34 = v108;
    v47 = sub_2662A320C(v44, v46, &v113);

    *(v39 + 4) = v47;
    _os_log_impl(&dword_26629C000, v37, v38, "LibraryProvider#addToPlaylist (deviceID) query: %{public}s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v42);
    v48 = v42;
    v11 = v41;
    v32 = v100;
    MEMORY[0x266784AD0](v48, -1, -1);
    MEMORY[0x266784AD0](v39, -1, -1);
  }

  v49 = *(v34 + 8);
  v49(v23, v11);
  v50 = v107;
  v109(v107, v111, v11);
  v51 = v36;
  v52 = sub_2664DFE18();
  v53 = sub_2664E06E8();

  if (os_log_type_enabled(v52, v53))
  {
    v100 = v11;
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    *&v113 = v55;
    *v54 = 136315394;
    v56 = [v51 &selRef_stringValue];
    v102 = v49;
    if (v56)
    {
      v57 = v56;
      sub_2662C1744(0, &qword_280072D58, 0x277CD5DE0);
      v58 = sub_2664E04A8();
    }

    else
    {
      v58 = 0;
    }

    v112 = v58;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072D60, &qword_2664E6F28);
    v59 = sub_2664E0318();
    v61 = sub_2662A320C(v59, v60, &v113);

    *(v54 + 4) = v61;
    *(v54 + 12) = 2080;
    v62 = [v51 collections];
    if (v62)
    {
      v63 = v62;
      sub_2662C1744(0, &qword_280072D70, 0x277CD5DF0);
      v64 = sub_2664E04A8();
    }

    else
    {
      v64 = 0;
    }

    v112 = v64;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072D68, &unk_2664E6F30);
    v65 = sub_2664E0318();
    v67 = sub_2662A320C(v65, v66, &v113);

    *(v54 + 14) = v67;
    _os_log_impl(&dword_26629C000, v52, v53, "LibraryProvider#addToPlaylist (deviceID) queryItems: %s queryCollections: %s...", v54, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v55, -1, -1);
    MEMORY[0x266784AD0](v54, -1, -1);

    v11 = v100;
    v49 = v102;
    v102(v107, v100);
  }

  else
  {

    v49(v50, v11);
  }

  v68 = [v51 items];
  v69 = v103;
  v70 = v104;
  if (v68)
  {
    v71 = v68;
    sub_2662C1744(0, &qword_280072D58, 0x277CD5DE0);
    v72 = sub_2664E04A8();
    if (v72 >> 62)
    {
      v73 = sub_2664E0A68();
    }

    else
    {
      v73 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v73 >= 1)
    {
      v102 = v49;
      v74 = v101;
      v109(v101, v111, v11);
      v75 = v99;
      v76 = sub_2664DFE18();
      v77 = sub_2664E06E8();

      if (os_log_type_enabled(v76, v77))
      {
        v100 = v32;
        v78 = v11;
        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v112 = v80;
        *v79 = 136315138;
        v81 = [v75 name];
        if (v81)
        {
          v82 = v81;
          v83 = sub_2664E02C8();
          v85 = v84;
        }

        else
        {
          v83 = 0;
          v85 = 0;
        }

        *&v113 = v83;
        *(&v113 + 1) = v85;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
        v96 = sub_2664E0318();
        v98 = sub_2662A320C(v96, v97, &v112);

        *(v79 + 4) = v98;
        _os_log_impl(&dword_26629C000, v76, v77, "LibraryProvider#addToPlaylist (deviceID) Successfully added item(s) into playlist %s", v79, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v80);
        MEMORY[0x266784AD0](v80, -1, -1);
        MEMORY[0x266784AD0](v79, -1, -1);

        v102(v101, v78);
        v32 = v100;
      }

      else
      {

        v102(v74, v11);
      }

      [v75 addMediaItems:v71 completionHandler:0];

      v113 = 0uLL;
      v114 = 0;
      v106(&v113);

      return;
    }
  }

  v109(v69, v111, v11);
  v86 = sub_2664DFE18();
  v87 = sub_2664E06D8();
  if (os_log_type_enabled(v86, v87))
  {
    v88 = v49;
    v89 = swift_slowAlloc();
    *v89 = 0;
    _os_log_impl(&dword_26629C000, v86, v87, "LibraryProvider#addToPlaylist (deviceID) No item were found.", v89, 2u);
    v90 = v89;
    v49 = v88;
    MEMORY[0x266784AD0](v90, -1, -1);
  }

  v49(v69, v11);
  v109(v70, v111, v11);
  v91 = sub_2664DFE18();
  v92 = v49;
  v93 = sub_2664E06B8();
  if (os_log_type_enabled(v91, v93))
  {
    v94 = swift_slowAlloc();
    v95 = swift_slowAlloc();
    *&v113 = v95;
    *v94 = 134218498;
    *(v94 + 4) = 8;
    *(v94 + 12) = 2048;
    *(v94 + 14) = 18;
    *(v94 + 22) = 2080;
    *(v94 + 24) = sub_2662A320C(0xD000000000000015, 0x80000002664F5640, &v113);
    _os_log_impl(&dword_26629C000, v91, v93, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v94, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v95);
    MEMORY[0x266784AD0](v95, -1, -1);
    MEMORY[0x266784AD0](v94, -1, -1);
  }

  v92(v70, v11);
  v113 = xmmword_2664E6E40;
  v114 = 0x80000002664F5640;
  v106(&v113);
}

uint64_t LibraryProvider.isCloudLibrarySyncOn(sharedUserIdInfo:completion:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  v7 = v6;
  v27 = a1;
  v28 = a2;
  v12 = sub_2664DFE38();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v12, qword_280F914F0);
  swift_beginAccess();
  (*(v13 + 16))(v15, v16, v12);
  v17 = sub_2664DFE18();
  v18 = sub_2664E06E8();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v26 = a3;
    v20 = a4;
    v21 = a5;
    v22 = v7;
    v23 = v19;
    *v19 = 0;
    _os_log_impl(&dword_26629C000, v17, v18, "LibraryProvider#isCloudLibrarySyncOn...", v19, 2u);
    v24 = v23;
    v7 = v22;
    a5 = v21;
    a4 = v20;
    a3 = v26;
    MEMORY[0x266784AD0](v24, -1, -1);
  }

  (*(v13 + 8))(v15, v12);

  sub_266364430(v27, v28, a3, a4, v7, a5, a6);
}

uint64_t sub_266360334(void *a1, uint64_t (*a2)(void), uint64_t a3)
{
  v24[1] = a3;
  v25 = a2;
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v24[0] = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = v24 - v8;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v4, qword_280F914F0);
  swift_beginAccess();
  v11 = *(v5 + 16);
  v11(v9, v10, v4);
  v12 = sub_2664DFE18();
  v13 = sub_2664E06E8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_26629C000, v12, v13, "LibraryProvider#isCloudLibrarySyncOn retrieved controller", v14, 2u);
    MEMORY[0x266784AD0](v14, -1, -1);
  }

  v15 = *(v5 + 8);
  v15(v9, v4);
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  v18 = (*(v17 + 24))(v16, v17);
  v19 = v24[0];
  v11(v24[0], v10, v4);
  v20 = sub_2664DFE18();
  v21 = sub_2664E06E8();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 67240192;
    *(v22 + 4) = v18 & 1;
    _os_log_impl(&dword_26629C000, v20, v21, "LibraryProvider#isCloudLibrarySyncOn cloud library on? %{BOOL,public}d", v22, 8u);
    MEMORY[0x266784AD0](v22, -1, -1);
  }

  v15(v19, v4);
  return v25(v18 & 1);
}

id sub_266360610()
{
  v1 = [*(v0 + 88) nowPlayingItem];

  return v1;
}

uint64_t sub_2663606A4(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(__int128 *))
{
  v7 = *(a1 + 2);
  v9 = *a1;
  v10 = v7;
  sub_2664E0838();
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  sub_2664DFDD8();
  return a6(&v9);
}

uint64_t sub_266360778(void *a1, uint64_t a2, uint64_t a3)
{
  v13[3] = &type metadata for AccountStoreProvider;
  v13[4] = &protocol witness table for AccountStoreProvider;
  *(a3 + 16) = a1;
  sub_2662A7224(a2, a3 + 24, &qword_280072BF8, &unk_2664E6F40);
  sub_2662A5550(v13, a3 + 64);
  v6 = objc_opt_self();
  v7 = a1;
  v8 = [v6 defaultCenter];
  v9 = *MEMORY[0x277D7F8C8];
  v10 = objc_opt_self();

  v11 = [v10 defaultIdentityStore];
  [v8 addObserver:a3 selector:sel_handleActiveAccountDidChangeNotificationWithNotification_ name:v9 object:v11];

  sub_2662A9238(a2, &qword_280072BF8, &unk_2664E6F40);
  __swift_destroy_boxed_opaque_existential_1Tm(v13);
  return a3;
}

void sub_266360910(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t (*a12)(_BOOL8), uint64_t a13)
{
  v85 = a5;
  *(&v88 + 1) = a4;
  v73 = a3;
  *&v88 = a2;
  v72 = a1;
  v83 = sub_2664DFE38();
  v89 = *(v83 - 8);
  v16 = MEMORY[0x28223BE20](v83);
  v75 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v74 = &v71 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v71 - v20;
  v22 = swift_allocObject();
  v79 = a7;
  v22[2] = a7;
  v22[3] = a8;
  v76 = a9;
  v22[4] = a9;
  v22[5] = a10;
  v77 = a11;
  v22[6] = a11;
  v22[7] = a12;
  v78 = a12;
  v22[8] = a13;
  v23 = swift_allocObject();
  v23[2] = a6;
  v23[3] = sub_2663674F8;
  v86 = v23;
  v23[4] = v22;
  v24 = qword_280F914E8;
  v82 = a8;

  v80 = a10;

  v81 = a13;

  v87 = a6;

  v84 = v22;

  if (v24 != -1)
  {
    swift_once();
  }

  v25 = v83;
  v26 = __swift_project_value_buffer(v83, qword_280F914F0);
  swift_beginAccess();
  v27 = v89;
  v28 = *(v89 + 16);
  v28(v21, v26, v25);
  v29 = v21;
  v30 = sub_2664DFE18();
  v31 = sub_2664E06E8();
  v32 = v25;
  if (os_log_type_enabled(v30, v31))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_26629C000, v30, v31, "LibraryProvider#library...", v33, 2u);
    MEMORY[0x266784AD0](v33, -1, -1);
  }

  v34 = *(v27 + 8);
  v89 = v27 + 8;
  v34(v29, v25);
  v35 = *(&v88 + 1);
  v36 = v88;
  if (v88 == 1 || v88 == 0)
  {
    v37 = v75;
    v38 = v26;
    v39 = v32;
    v28(v75, v38, v32);
    v40 = sub_2664DFE18();
    v41 = sub_2664E06E8();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_26629C000, v40, v41, "LibraryProvider#library no sharedUserIdInfo found, using default library", v42, 2u);
      MEMORY[0x266784AD0](v42, -1, -1);
    }

    v34(v37, v39);
    v43 = *v85;
    v44 = v87;
    swift_beginAccess();
    v45 = *(v44 + 16);
    v46 = v82;

    v47 = v80;

    v48 = v81;

    [v45 setMediaLibrary_];
    swift_beginAccess();
    v49 = *(v44 + 16);
    sub_2663555CC(v49, v79, v46, v76, v47, v77, v78, v48);
  }

  else
  {
    v50 = v74;
    v28(v74, v26, v25);

    v51 = sub_2664DFE18();
    v52 = sub_2664E06E8();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = v35;
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *&v90[0] = v55;
      *v54 = 136315394;
      if (v36)
      {
        v56 = v72;
      }

      else
      {
        v56 = 0;
      }

      if (!v36)
      {
        v36 = 0xE000000000000000;
      }

      v57 = sub_2662A320C(v56, v36, v90);

      *(v54 + 4) = v57;
      *(v54 + 12) = 2080;
      if (v53)
      {
        v58 = v73;
      }

      else
      {
        v58 = 0;
      }

      if (v53)
      {
        v59 = v53;
      }

      else
      {
        v59 = 0xE000000000000000;
      }

      v60 = sub_2662A320C(v58, v59, v90);

      *(v54 + 14) = v60;
      _os_log_impl(&dword_26629C000, v51, v52, "LibraryProvider#library using multiuser identity for library, requestSharedUserID: %s,  sharedUserIdFromPlayableMusicAccount: %s", v54, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v55, -1, -1);
      MEMORY[0x266784AD0](v54, -1, -1);

      v61 = v74;
    }

    else
    {

      v61 = v50;
    }

    v34(v61, v25);
    sub_2663608CC(v85, v90);
    v62 = swift_allocObject();
    v63 = v86;
    *(v62 + 16) = sub_266367660;
    *(v62 + 24) = v63;
    v64 = v90[7];
    *(v62 + 128) = v90[6];
    *(v62 + 144) = v64;
    *(v62 + 160) = v90[8];
    *(v62 + 176) = v91;
    v65 = v90[3];
    *(v62 + 64) = v90[2];
    *(v62 + 80) = v65;
    v66 = v90[5];
    *(v62 + 96) = v90[4];
    *(v62 + 112) = v66;
    v67 = v90[1];
    *(v62 + 32) = v90[0];
    *(v62 + 48) = v67;
    v68 = objc_opt_self();

    v69 = [v68 currentDeviceInfo];
    v70 = [v69 supportsMultipleITunesAccounts];

    if (v70)
    {
      sub_26633393C(v72, v88, v73, *(&v88 + 1), sub_266367658, v62);
    }

    else
    {
      if (qword_280071AD0 != -1)
      {
        swift_once();
      }

      v92[0] = 0x755F656C676E6973;
      v92[1] = 0xEB00000000726573;
      (*(*off_280072BE8 + 160))(v92, sub_266333820, 0, 0, 1, sub_266367658, v62);
    }
  }
}

void sub_2663611BC(uint64_t a1, unint64_t a2, char *a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(uint64_t, unint64_t, void *), uint64_t a10)
{
  v75 = a5;
  v73 = a4;
  v67 = a3;
  v79 = a2;
  v66 = a1;
  v13 = sub_2664DFE38();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v68 = &v66 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v66 - v20;
  v22 = swift_allocObject();
  v70 = a7;
  v22[2] = a7;
  v22[3] = a8;
  v69 = a9;
  v22[4] = a9;
  v22[5] = a10;
  v23 = swift_allocObject();
  v23[2] = a6;
  v23[3] = sub_26636742C;
  v77 = v23;
  v23[4] = v22;
  v24 = qword_280F914E8;
  v72 = a8;

  v71 = a10;

  v78 = a6;

  v76 = v22;

  if (v24 != -1)
  {
    swift_once();
  }

  v25 = __swift_project_value_buffer(v13, qword_280F914F0);
  swift_beginAccess();
  v26 = v14;
  v27 = *(v14 + 16);
  v27(v21, v25, v13);
  v28 = sub_2664DFE18();
  v29 = sub_2664E06E8();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_26629C000, v28, v29, "LibraryProvider#library...", v30, 2u);
    MEMORY[0x266784AD0](v30, -1, -1);
  }

  v31 = *(v26 + 8);
  v74 = v26 + 8;
  v31(v21, v13);
  v32 = v79;
  if (v79 != 1 && v79 | v73)
  {
    v42 = v68;
    v27(v68, v25, v13);
    v43 = v73;

    v44 = sub_2664DFE18();
    v45 = sub_2664E06E8();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *&v80[0] = v47;
      *v46 = 136315394;
      v48 = v32 == 0;
      v49 = v32;
      if (v32)
      {
        v50 = v66;
      }

      else
      {
        v50 = 0;
      }

      if (v48)
      {
        v51 = 0xE000000000000000;
      }

      else
      {
        v51 = v49;
      }

      v52 = sub_2662A320C(v50, v51, v80);

      *(v46 + 4) = v52;
      *(v46 + 12) = 2080;
      if (v43)
      {
        v53 = v67;
      }

      else
      {
        v53 = 0;
      }

      if (v43)
      {
        v54 = v43;
      }

      else
      {
        v54 = 0xE000000000000000;
      }

      v55 = sub_2662A320C(v53, v54, v80);

      *(v46 + 14) = v55;
      _os_log_impl(&dword_26629C000, v44, v45, "LibraryProvider#library using multiuser identity for library, requestSharedUserID: %s,  sharedUserIdFromPlayableMusicAccount: %s", v46, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v47, -1, -1);
      MEMORY[0x266784AD0](v46, -1, -1);

      v56 = v68;
    }

    else
    {

      v56 = v42;
    }

    v31(v56, v13);
    v57 = v77;
    sub_2663608CC(v75, v80);
    v58 = swift_allocObject();
    *(v58 + 16) = sub_266367660;
    *(v58 + 24) = v57;
    v59 = v80[7];
    *(v58 + 128) = v80[6];
    *(v58 + 144) = v59;
    *(v58 + 160) = v80[8];
    *(v58 + 176) = v81;
    v60 = v80[3];
    *(v58 + 64) = v80[2];
    *(v58 + 80) = v60;
    v61 = v80[5];
    *(v58 + 96) = v80[4];
    *(v58 + 112) = v61;
    v62 = v80[1];
    *(v58 + 32) = v80[0];
    *(v58 + 48) = v62;
    v63 = objc_opt_self();

    v64 = [v63 currentDeviceInfo];
    v65 = [v64 supportsMultipleITunesAccounts];

    if (v65)
    {
      sub_26633393C(v66, v79, v67, v43, sub_266367658, v58);
    }

    else
    {
      if (qword_280071AD0 != -1)
      {
        swift_once();
      }

      v82[0] = 0x755F656C676E6973;
      v82[1] = 0xEB00000000726573;
      (*(*off_280072BE8 + 160))(v82, sub_266333820, 0, 0, 1, sub_266367658, v58);
    }
  }

  else
  {
    v27(v17, v25, v13);
    v33 = sub_2664DFE18();
    v34 = sub_2664E06E8();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_26629C000, v33, v34, "LibraryProvider#library no sharedUserIdInfo found, using default library", v35, 2u);
      MEMORY[0x266784AD0](v35, -1, -1);
    }

    v31(v17, v13);
    v36 = *v75;
    v37 = v78;
    swift_beginAccess();
    v38 = *(v37 + 16);
    v39 = v72;

    v40 = v71;

    [v38 setMediaLibrary_];
    swift_beginAccess();
    v41 = *(v37 + 16);
    sub_266358C74(v41, v70, v39, v69, v40);
  }
}

void sub_2663619D4(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, void *a8, void (*a9)(__int128 *), uint64_t a10, uint64_t a11, void *a12)
{
  v79 = a5;
  *(&v82 + 1) = a4;
  v69 = a3;
  *&v82 = a2;
  v68 = a1;
  v15 = sub_2664DFE38();
  v83 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15);
  v72 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v70 = &v67 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v67 - v20;
  v22 = swift_allocObject();
  v75 = a7;
  v22[2] = a7;
  v22[3] = a8;
  v73 = a9;
  v22[4] = a9;
  v22[5] = a10;
  v74 = a11;
  v22[6] = a11;
  v22[7] = a12;
  v23 = swift_allocObject();
  v23[2] = a6;
  v23[3] = sub_266367330;
  v80 = v23;
  v23[4] = v22;
  v24 = qword_280F914E8;
  v77 = a8;

  v76 = a10;

  v71 = a12;
  v81 = a6;

  v78 = v22;

  if (v24 != -1)
  {
    swift_once();
  }

  v25 = __swift_project_value_buffer(v15, qword_280F914F0);
  swift_beginAccess();
  v26 = v83;
  v27 = *(v83 + 16);
  v27(v21, v25, v15);
  v28 = sub_2664DFE18();
  v29 = sub_2664E06E8();
  v30 = v15;
  if (os_log_type_enabled(v28, v29))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_26629C000, v28, v29, "LibraryProvider#library...", v31, 2u);
    MEMORY[0x266784AD0](v31, -1, -1);
  }

  v32 = *(v26 + 8);
  v83 = v26 + 8;
  v32(v21, v15);
  v33 = *(&v82 + 1);
  v34 = v82;
  if (v82 == 1 || v82 == 0)
  {
    v35 = v72;
    v27(v72, v25, v30);
    v36 = sub_2664DFE18();
    v37 = sub_2664E06E8();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_26629C000, v36, v37, "LibraryProvider#library no sharedUserIdInfo found, using default library", v38, 2u);
      MEMORY[0x266784AD0](v38, -1, -1);
    }

    v32(v35, v30);
    v39 = *v79;
    v40 = v81;
    swift_beginAccess();
    v41 = *(v40 + 16);
    v42 = v77;

    v43 = v76;

    v44 = v71;
    [v41 setMediaLibrary_];
    swift_beginAccess();
    v45 = *(v40 + 16);
    sub_26635DBA4(v45, v75, v42, v73, v43, v74, v44);
  }

  else
  {
    v46 = v70;
    v27(v70, v25, v15);

    v47 = sub_2664DFE18();
    v48 = sub_2664E06E8();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = v33;
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *&v84[0] = v51;
      *v50 = 136315394;
      if (v34)
      {
        v52 = v68;
      }

      else
      {
        v52 = 0;
      }

      if (!v34)
      {
        v34 = 0xE000000000000000;
      }

      v53 = sub_2662A320C(v52, v34, v84);

      *(v50 + 4) = v53;
      *(v50 + 12) = 2080;
      if (v49)
      {
        v54 = v69;
      }

      else
      {
        v54 = 0;
      }

      if (v49)
      {
        v55 = v49;
      }

      else
      {
        v55 = 0xE000000000000000;
      }

      v56 = sub_2662A320C(v54, v55, v84);

      *(v50 + 14) = v56;
      _os_log_impl(&dword_26629C000, v47, v48, "LibraryProvider#library using multiuser identity for library, requestSharedUserID: %s,  sharedUserIdFromPlayableMusicAccount: %s", v50, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v51, -1, -1);
      MEMORY[0x266784AD0](v50, -1, -1);

      v57 = v70;
    }

    else
    {

      v57 = v46;
    }

    v32(v57, v15);
    v58 = v80;
    sub_2663608CC(v79, v84);
    v59 = swift_allocObject();
    *(v59 + 16) = sub_266367660;
    *(v59 + 24) = v58;
    v60 = v84[7];
    *(v59 + 128) = v84[6];
    *(v59 + 144) = v60;
    *(v59 + 160) = v84[8];
    *(v59 + 176) = v85;
    v61 = v84[3];
    *(v59 + 64) = v84[2];
    *(v59 + 80) = v61;
    v62 = v84[5];
    *(v59 + 96) = v84[4];
    *(v59 + 112) = v62;
    v63 = v84[1];
    *(v59 + 32) = v84[0];
    *(v59 + 48) = v63;
    v64 = objc_opt_self();

    v65 = [v64 currentDeviceInfo];
    v66 = [v65 supportsMultipleITunesAccounts];

    if (v66)
    {
      sub_26633393C(v68, v82, v69, *(&v82 + 1), sub_266367658, v59);
    }

    else
    {
      if (qword_280071AD0 != -1)
      {
        swift_once();
      }

      v86[0] = 0x755F656C676E6973;
      v86[1] = 0xEB00000000726573;
      (*(*off_280072BE8 + 160))(v86, sub_266333820, 0, 0, 1, sub_266367658, v59);
    }
  }
}

void sub_266362244(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(__int128 *), uint64_t a11, void *a12)
{
  v79 = a5;
  *(&v82 + 1) = a4;
  v69 = a3;
  *&v82 = a2;
  v68 = a1;
  v15 = sub_2664DFE38();
  v83 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15);
  v72 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v70 = &v67 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v67 - v20;
  v22 = swift_allocObject();
  v75 = a7;
  v22[2] = a7;
  v22[3] = a8;
  v73 = a9;
  v22[4] = a9;
  v22[5] = a10;
  v74 = a10;
  v22[6] = a11;
  v22[7] = a12;
  v23 = swift_allocObject();
  v23[2] = a6;
  v23[3] = sub_26636730C;
  v80 = v23;
  v23[4] = v22;
  v24 = qword_280F914E8;
  v77 = a8;

  v76 = a11;

  v71 = a12;
  v81 = a6;

  v78 = v22;

  if (v24 != -1)
  {
    swift_once();
  }

  v25 = __swift_project_value_buffer(v15, qword_280F914F0);
  swift_beginAccess();
  v26 = v83;
  v27 = *(v83 + 16);
  v27(v21, v25, v15);
  v28 = sub_2664DFE18();
  v29 = sub_2664E06E8();
  v30 = v15;
  if (os_log_type_enabled(v28, v29))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_26629C000, v28, v29, "LibraryProvider#library...", v31, 2u);
    MEMORY[0x266784AD0](v31, -1, -1);
  }

  v32 = *(v26 + 8);
  v83 = v26 + 8;
  v32(v21, v15);
  v33 = *(&v82 + 1);
  v34 = v82;
  if (v82 == 1 || v82 == 0)
  {
    v35 = v72;
    v27(v72, v25, v30);
    v36 = sub_2664DFE18();
    v37 = sub_2664E06E8();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_26629C000, v36, v37, "LibraryProvider#library no sharedUserIdInfo found, using default library", v38, 2u);
      MEMORY[0x266784AD0](v38, -1, -1);
    }

    v32(v35, v30);
    v39 = *v79;
    v40 = v81;
    swift_beginAccess();
    v41 = *(v40 + 16);
    v42 = v77;

    v43 = v76;

    v44 = v71;
    [v41 setMediaLibrary_];
    swift_beginAccess();
    v45 = *(v40 + 16);
    sub_26635F5CC(v45, v75, v42, v73, v74, v43, v44);
  }

  else
  {
    v46 = v70;
    v27(v70, v25, v15);

    v47 = sub_2664DFE18();
    v48 = sub_2664E06E8();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = v33;
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *&v84[0] = v51;
      *v50 = 136315394;
      if (v34)
      {
        v52 = v68;
      }

      else
      {
        v52 = 0;
      }

      if (!v34)
      {
        v34 = 0xE000000000000000;
      }

      v53 = sub_2662A320C(v52, v34, v84);

      *(v50 + 4) = v53;
      *(v50 + 12) = 2080;
      if (v49)
      {
        v54 = v69;
      }

      else
      {
        v54 = 0;
      }

      if (v49)
      {
        v55 = v49;
      }

      else
      {
        v55 = 0xE000000000000000;
      }

      v56 = sub_2662A320C(v54, v55, v84);

      *(v50 + 14) = v56;
      _os_log_impl(&dword_26629C000, v47, v48, "LibraryProvider#library using multiuser identity for library, requestSharedUserID: %s,  sharedUserIdFromPlayableMusicAccount: %s", v50, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v51, -1, -1);
      MEMORY[0x266784AD0](v50, -1, -1);

      v57 = v70;
    }

    else
    {

      v57 = v46;
    }

    v32(v57, v15);
    v58 = v80;
    sub_2663608CC(v79, v84);
    v59 = swift_allocObject();
    *(v59 + 16) = sub_266367324;
    *(v59 + 24) = v58;
    v60 = v84[7];
    *(v59 + 128) = v84[6];
    *(v59 + 144) = v60;
    *(v59 + 160) = v84[8];
    *(v59 + 176) = v85;
    v61 = v84[3];
    *(v59 + 64) = v84[2];
    *(v59 + 80) = v61;
    v62 = v84[5];
    *(v59 + 96) = v84[4];
    *(v59 + 112) = v62;
    v63 = v84[1];
    *(v59 + 32) = v84[0];
    *(v59 + 48) = v63;
    v64 = objc_opt_self();

    v65 = [v64 currentDeviceInfo];
    v66 = [v65 supportsMultipleITunesAccounts];

    if (v66)
    {
      sub_26633393C(v68, v82, v69, *(&v82 + 1), sub_266367658, v59);
    }

    else
    {
      if (qword_280071AD0 != -1)
      {
        swift_once();
      }

      v86[0] = 0x755F656C676E6973;
      v86[1] = 0xEB00000000726573;
      (*(*off_280072BE8 + 160))(v86, sub_266333820, 0, 0, 1, sub_266367658, v59);
    }
  }
}

void sub_266362AB4(uint64_t a1, unint64_t a2, char *a3, unint64_t a4, void *a5, uint64_t a6, void (*a7)(void), uint64_t a8)
{
  v71 = a3;
  v70 = a1;
  v14 = sub_2664DFE38();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v73 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v72 = &v67 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v67 - v20;
  v22 = swift_allocObject();
  v22[2] = a6;
  v22[3] = a7;
  v76 = a7;
  v22[4] = a8;
  v23 = qword_280F914E8;
  v74 = a6;

  v75 = a8;

  if (v23 != -1)
  {
    swift_once();
  }

  v24 = __swift_project_value_buffer(v14, qword_280F914F0);
  swift_beginAccess();
  v78 = v15;
  v25 = *(v15 + 16);
  v77 = v14;
  v25(v21, v24, v14);
  v26 = sub_2664DFE18();
  v27 = sub_2664E06E8();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v69 = a5;
    v29 = a2;
    v30 = a4;
    v31 = v22;
    v32 = v28;
    *v28 = 0;
    _os_log_impl(&dword_26629C000, v26, v27, "LibraryProvider#library...", v28, 2u);
    v33 = v32;
    v22 = v31;
    a4 = v30;
    a2 = v29;
    a5 = v69;
    MEMORY[0x266784AD0](v33, -1, -1);
  }

  v34 = *(v78 + 8);
  v35 = v77;
  v78 += 8;
  v34(v21, v77);
  if (a2 != 1 && a2 | a4)
  {
    v44 = v72;
    v25(v72, v24, v35);

    v45 = sub_2664DFE18();
    v46 = sub_2664E06E8();

    v47 = os_log_type_enabled(v45, v46);
    v68 = a2;
    if (v47)
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v69 = a5;
      v50 = v49;
      *&v79[0] = v49;
      *v48 = 136315394;
      if (a2)
      {
        v51 = v70;
      }

      else
      {
        v51 = 0;
      }

      if (!a2)
      {
        a2 = 0xE000000000000000;
      }

      v52 = sub_2662A320C(v51, a2, v79);

      *(v48 + 4) = v52;
      *(v48 + 12) = 2080;
      if (a4)
      {
        v53 = v71;
      }

      else
      {
        v53 = 0;
      }

      if (a4)
      {
        v54 = a4;
      }

      else
      {
        v54 = 0xE000000000000000;
      }

      v55 = sub_2662A320C(v53, v54, v79);

      *(v48 + 14) = v55;
      _os_log_impl(&dword_26629C000, v45, v46, "LibraryProvider#library using multiuser identity for library, requestSharedUserID: %s,  sharedUserIdFromPlayableMusicAccount: %s", v48, 0x16u);
      swift_arrayDestroy();
      v56 = v50;
      a5 = v69;
      MEMORY[0x266784AD0](v56, -1, -1);
      MEMORY[0x266784AD0](v48, -1, -1);

      v57 = v72;
      v58 = v77;
    }

    else
    {

      v57 = v44;
      v58 = v35;
    }

    v34(v57, v58);
    sub_2663608CC(a5, v79);
    v59 = swift_allocObject();
    *(v59 + 16) = sub_266367660;
    *(v59 + 24) = v22;
    v60 = v79[7];
    *(v59 + 128) = v79[6];
    *(v59 + 144) = v60;
    *(v59 + 160) = v79[8];
    *(v59 + 176) = v80;
    v61 = v79[3];
    *(v59 + 64) = v79[2];
    *(v59 + 80) = v61;
    v62 = v79[5];
    *(v59 + 96) = v79[4];
    *(v59 + 112) = v62;
    v63 = v79[1];
    *(v59 + 32) = v79[0];
    *(v59 + 48) = v63;
    v64 = objc_opt_self();

    v65 = [v64 currentDeviceInfo];
    v66 = [v65 supportsMultipleITunesAccounts];

    if (v66)
    {
      sub_26633393C(v70, v68, v71, a4, sub_266367658, v59);
    }

    else
    {
      if (qword_280071AD0 != -1)
      {
        swift_once();
      }

      v81[0] = 0x755F656C676E6973;
      v81[1] = 0xEB00000000726573;
      (*(*off_280072BE8 + 160))(v81, sub_266333820, 0, 0, 1, sub_266367658, v59);
    }
  }

  else
  {
    v36 = v73;
    v25(v73, v24, v35);
    v37 = sub_2664DFE18();
    v38 = sub_2664E06E8();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_26629C000, v37, v38, "LibraryProvider#library no sharedUserIdInfo found, using default library", v39, 2u);
      v40 = v39;
      v35 = v77;
      MEMORY[0x266784AD0](v40, -1, -1);
    }

    v34(v36, v35);
    v41 = *a5;
    v42 = v74;
    swift_beginAccess();
    [*(v42 + 16) setMediaLibrary_];
    swift_beginAccess();
    v43 = *(v42 + 16);
    v76();
  }
}

uint64_t sub_266363244(uint64_t a1, unint64_t a2, char *a3, unint64_t a4, void **a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v76 = a5;
  v69 = a3;
  v68 = a1;
  v15 = sub_2664DFE38();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v70 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v67 = &v64 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v64 - v21;
  v23 = swift_allocObject();
  v73 = a6;
  v23[2] = a6;
  v23[3] = a7;
  v74 = a7;
  v23[4] = a8;
  v23[5] = a9;
  v71 = a9;
  v77 = v23;
  v23[6] = a10;
  v24 = qword_280F914E8;
  v75 = a8;

  v72 = a10;

  if (v24 != -1)
  {
    swift_once();
  }

  v25 = __swift_project_value_buffer(v15, qword_280F914F0);
  swift_beginAccess();
  v26 = *(v16 + 16);
  v78 = v15;
  (v26)(v22, v25, v15);
  v27 = sub_2664DFE18();
  v28 = sub_2664E06E8();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = a2;
    v30 = a4;
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_26629C000, v27, v28, "LibraryProvider#library...", v31, 2u);
    v32 = v31;
    a4 = v30;
    a2 = v29;
    MEMORY[0x266784AD0](v32, -1, -1);
  }

  v33 = *(v16 + 8);
  v34 = v78;
  v33(v22, v78);
  if (a2 != 1 && a2 | a4)
  {
    v39 = v67;
    v26();

    v40 = sub_2664DFE18();
    v41 = sub_2664E06E8();

    v42 = os_log_type_enabled(v40, v41);
    v66 = a4;
    v65 = a2;
    if (v42)
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      LODWORD(v75) = v41;
      v45 = v44;
      *&v80[0] = v44;
      *v43 = 136315394;
      if (a2)
      {
        v46 = v68;
      }

      else
      {
        v46 = 0;
      }

      if (a2)
      {
        v47 = a2;
      }

      else
      {
        v47 = 0xE000000000000000;
      }

      v48 = sub_2662A320C(v46, v47, v80);

      *(v43 + 4) = v48;
      *(v43 + 12) = 2080;
      if (a4)
      {
        v49 = v69;
      }

      else
      {
        v49 = 0;
      }

      if (a4)
      {
        v50 = a4;
      }

      else
      {
        v50 = 0xE000000000000000;
      }

      v51 = sub_2662A320C(v49, v50, v80);

      *(v43 + 14) = v51;
      _os_log_impl(&dword_26629C000, v40, v75, "LibraryProvider#library using multiuser identity for library, requestSharedUserID: %s,  sharedUserIdFromPlayableMusicAccount: %s", v43, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v45, -1, -1);
      MEMORY[0x266784AD0](v43, -1, -1);

      v52 = v39;
      v53 = v78;
    }

    else
    {

      v52 = v39;
      v53 = v34;
    }

    v33(v52, v53);
    v54 = v77;
    sub_2663608CC(v76, v80);
    v55 = swift_allocObject();
    *(v55 + 16) = sub_26636747C;
    *(v55 + 24) = v54;
    v56 = v80[7];
    *(v55 + 128) = v80[6];
    *(v55 + 144) = v56;
    *(v55 + 160) = v80[8];
    *(v55 + 176) = v81;
    v57 = v80[3];
    *(v55 + 64) = v80[2];
    *(v55 + 80) = v57;
    v58 = v80[5];
    *(v55 + 96) = v80[4];
    *(v55 + 112) = v58;
    v59 = v80[1];
    *(v55 + 32) = v80[0];
    *(v55 + 48) = v59;
    v60 = objc_opt_self();

    v61 = [v60 currentDeviceInfo];
    v62 = [v61 supportsMultipleITunesAccounts];

    if (v62)
    {
      sub_26633393C(v68, v65, v69, v66, sub_266367658, v55);
    }

    else
    {
      if (qword_280071AD0 != -1)
      {
        swift_once();
      }

      v79[0] = 0x755F656C676E6973;
      v79[1] = 0xEB00000000726573;
      (*(*off_280072BE8 + 160))(v79, sub_266333820, 0, 0, 1, sub_266367658, v55);
    }
  }

  else
  {
    v35 = v70;
    (v26)(v70, v25, v34);
    v36 = sub_2664DFE18();
    v37 = sub_2664E06E8();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_26629C000, v36, v37, "LibraryProvider#library no sharedUserIdInfo found, using default library", v38, 2u);
      MEMORY[0x266784AD0](v38, -1, -1);
    }

    v33(v35, v78);
    sub_266356D50(*v76, v73, v74, v75, v71, v72);
  }
}

uint64_t sub_2663639A8(uint64_t a1, uint64_t a2, char *a3, unint64_t a4, void *a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v62 = a5;
  v54 = a4;
  v53 = a3;
  v63 = a2;
  v52 = a1;
  v14 = sub_2664DFE38();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v55 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v51 - v18;
  v20 = swift_allocObject();
  v61 = a6;
  v20[2] = a6;
  v20[3] = a7;
  v58 = a8;
  v20[4] = a8;
  v20[5] = a9;
  v57 = a10;
  v20[6] = a10;
  v20[7] = a11;
  v21 = qword_280F914E8;
  v56 = a7;
  v59 = a9;

  v60 = a11;

  if (v21 != -1)
  {
    swift_once();
  }

  v22 = __swift_project_value_buffer(v14, qword_280F914F0);
  swift_beginAccess();
  v23 = *(v15 + 16);
  v23(v19, v22, v14);
  v24 = sub_2664DFE18();
  v25 = sub_2664E06E8();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_26629C000, v24, v25, "LibraryProvider#cloudController...", v26, 2u);
    MEMORY[0x266784AD0](v26, -1, -1);
  }

  v27 = *(v15 + 8);
  v27(v19, v14);
  v28 = v63;
  if (v63 != 1 && v63 | v54)
  {
    sub_2663608CC(v62, v65);
    v42 = swift_allocObject();
    *(v42 + 16) = sub_2663673BC;
    *(v42 + 24) = v20;
    v43 = v65[7];
    *(v42 + 128) = v65[6];
    *(v42 + 144) = v43;
    *(v42 + 160) = v65[8];
    *(v42 + 176) = v66;
    v44 = v65[3];
    *(v42 + 64) = v65[2];
    *(v42 + 80) = v44;
    v45 = v65[5];
    *(v42 + 96) = v65[4];
    *(v42 + 112) = v45;
    v46 = v65[1];
    *(v42 + 32) = v65[0];
    *(v42 + 48) = v46;
    v47 = objc_opt_self();

    v48 = [v47 currentDeviceInfo];
    v49 = [v48 supportsMultipleITunesAccounts];

    if (v49)
    {
      sub_26633393C(v52, v28, v53, v54, sub_26636765C, v42);
    }

    else
    {
      if (qword_280071AD0 != -1)
      {
        swift_once();
      }

      v64[0] = 0x755F656C676E6973;
      v64[1] = 0xEB00000000726573;
      (*(*off_280072BE8 + 160))(v64, sub_266333820, 0, 0, 1, sub_26636765C, v42);
    }
  }

  else
  {
    v63 = v20;
    v29 = v55;
    v23(v55, v22, v14);
    v30 = sub_2664DFE18();
    v31 = sub_2664E06E8();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_26629C000, v30, v31, "LibraryProvider#addToPlaylist (adamId) retrieved controller, adding item...", v32, 2u);
      MEMORY[0x266784AD0](v32, -1, -1);
    }

    v27(v29, v14);
    v33 = v62[4];
    v34 = v62[5];
    __swift_project_boxed_opaque_existential_1(v62 + 1, v33);
    v35 = v56;
    v36 = [v56 persistentID];
    v37 = swift_allocObject();
    v38 = v59;
    v37[2] = v58;
    v37[3] = v38;
    v39 = v57;
    v37[4] = v35;
    v37[5] = v39;
    v37[6] = v60;
    v40 = *(v34 + 8);
    v41 = v35;

    v40(v61, v36, sub_2663673CC, v37, v33, v34);
  }
}

uint64_t sub_266363FB8(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, void *a6, void (*a7)(void), uint64_t a8, void *a9)
{
  v46 = a5;
  v44 = a3;
  v47 = a2;
  v43 = a1;
  v13 = sub_2664DFE38();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  v17[2] = a6;
  v17[3] = a7;
  v17[4] = a8;
  v17[5] = a9;
  v18 = qword_280F914E8;
  v19 = a6;

  v45 = a9;
  if (v18 != -1)
  {
    swift_once();
  }

  v20 = __swift_project_value_buffer(v13, qword_280F914F0);
  swift_beginAccess();
  (*(v14 + 16))(v16, v20, v13);
  v21 = sub_2664DFE18();
  v22 = sub_2664E06E8();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v42 = v17;
    v24 = a8;
    v25 = a7;
    v26 = v19;
    v27 = a4;
    v28 = v23;
    *v23 = 0;
    _os_log_impl(&dword_26629C000, v21, v22, "LibraryProvider#cloudController...", v23, 2u);
    v29 = v28;
    a4 = v27;
    v19 = v26;
    a7 = v25;
    a8 = v24;
    v17 = v42;
    MEMORY[0x266784AD0](v29, -1, -1);
  }

  (*(v14 + 8))(v16, v13);
  v30 = v47;
  if (v47 != 1 && v47 | a4)
  {
    v31 = a4;
    sub_2663608CC(v46, v49);
    v32 = swift_allocObject();
    *(v32 + 16) = sub_2663673A4;
    *(v32 + 24) = v17;
    v33 = v49[7];
    *(v32 + 128) = v49[6];
    *(v32 + 144) = v33;
    *(v32 + 160) = v49[8];
    *(v32 + 176) = v50;
    v34 = v49[3];
    *(v32 + 64) = v49[2];
    *(v32 + 80) = v34;
    v35 = v49[5];
    *(v32 + 96) = v49[4];
    *(v32 + 112) = v35;
    v36 = v49[1];
    *(v32 + 32) = v49[0];
    *(v32 + 48) = v36;
    v37 = objc_opt_self();

    v38 = [v37 currentDeviceInfo];
    v39 = [v38 supportsMultipleITunesAccounts];

    if (v39)
    {
      sub_26633393C(v43, v30, v44, v31, sub_26636765C, v32);
    }

    else
    {
      if (qword_280071AD0 != -1)
      {
        swift_once();
      }

      v48[0] = 0x755F656C676E6973;
      v48[1] = 0xEB00000000726573;
      (*(*off_280072BE8 + 160))(v48, sub_266333820, 0, 0, 1, sub_26636765C, v32);
    }
  }

  else
  {
    sub_26635C6B8((v46 + 8), v19, a7, a8, v45);
  }
}

uint64_t sub_266364430(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void), uint64_t a7)
{
  *&v33 = a4;
  v32 = a3;
  *(&v33 + 1) = a2;
  v31 = a1;
  v10 = sub_2664DFE38();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  *(v14 + 16) = a6;
  *(v14 + 24) = a7;
  v15 = qword_280F914E8;

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v10, qword_280F914F0);
  swift_beginAccess();
  (*(v11 + 16))(v13, v16, v10);
  v17 = sub_2664DFE18();
  v18 = sub_2664E06E8();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_26629C000, v17, v18, "LibraryProvider#cloudController...", v19, 2u);
    MEMORY[0x266784AD0](v19, -1, -1);
  }

  (*(v11 + 8))(v13, v10);
  v20 = *(&v33 + 1);
  if (*(&v33 + 1) == 1 || v33 == 0)
  {
    sub_266360334((a5 + 8), a6, a7);
  }

  else
  {
    sub_2663608CC(a5, v35);
    v21 = swift_allocObject();
    *(v21 + 16) = sub_266367274;
    *(v21 + 24) = v14;
    v22 = v35[7];
    *(v21 + 128) = v35[6];
    *(v21 + 144) = v22;
    *(v21 + 160) = v35[8];
    *(v21 + 176) = v36;
    v23 = v35[3];
    *(v21 + 64) = v35[2];
    *(v21 + 80) = v23;
    v24 = v35[5];
    *(v21 + 96) = v35[4];
    *(v21 + 112) = v24;
    v25 = v35[1];
    *(v21 + 32) = v35[0];
    *(v21 + 48) = v25;
    v26 = objc_opt_self();

    v27 = [v26 currentDeviceInfo];
    v28 = [v27 supportsMultipleITunesAccounts];

    if (v28)
    {
      sub_26633393C(v31, v20, v32, v33, sub_2663672F4, v21);
    }

    else
    {
      if (qword_280071AD0 != -1)
      {
        swift_once();
      }

      v34[0] = 0x755F656C676E6973;
      v34[1] = 0xEB00000000726573;
      (*(*off_280072BE8 + 160))(v34, sub_266333820, 0, 0, 1, sub_2663672F4, v21);
    }
  }
}

uint64_t sub_266364848(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, int a6, uint64_t *a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11, uint64_t a12, uint64_t (*a13)(_BOOL8), uint64_t a14)
{
  v78 = a7;
  v79 = a8;
  v74 = a6;
  v75 = a4;
  v72 = a1;
  v73 = a3;
  v77 = a2;
  v15 = sub_2664DFE38();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v83 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v71 = &v69 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v70 = &v69 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v69 = &v69 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v69 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v69 - v28;
  v30 = qword_280F914E8;
  v80 = a9;

  v82 = a11;

  v81 = a14;

  if (v30 != -1)
  {
    swift_once();
  }

  v31 = __swift_project_value_buffer(v15, qword_280F914F0);
  swift_beginAccess();
  v76 = *(v16 + 16);
  v76(v29, v31, v15);
  v32 = sub_2664DFE18();
  v33 = sub_2664E06E8();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = v27;
    v35 = v31;
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_26629C000, v32, v33, "LibraryProvider#mediaQuery...", v36, 2u);
    v37 = v36;
    v31 = v35;
    v27 = v34;
    MEMORY[0x266784AD0](v37, -1, -1);
  }

  v84 = *(v16 + 8);
  v84(v29, v15);
  v38 = swift_allocObject();
  if (a5 == 6)
  {
    v51 = v70;
    v39 = v76;
    v76(v70, v31, v15);
    v52 = sub_2664DFE18();
    v53 = sub_2664E06E8();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_26629C000, v52, v53, "LibraryProvider#mediaQuery playlist", v54, 2u);
      MEMORY[0x266784AD0](v54, -1, -1);
    }

    v55 = (v84)(v51, v15);
    v50 = (v78[12])(v55);
    goto LABEL_20;
  }

  v39 = v76;
  if (a5 == 1)
  {
    v45 = v69;
    v76(v69, v31, v15);
    v46 = sub_2664DFE18();
    v47 = sub_2664E06E8();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_26629C000, v46, v47, "LibraryProvider#mediaQuery album", v48, 2u);
      MEMORY[0x266784AD0](v48, -1, -1);
    }

    v49 = (v84)(v45, v15);
    v50 = (v78[16])(v49);
    goto LABEL_20;
  }

  if (a5)
  {
    v56 = v71;
    v76(v71, v31, v15);
    v57 = sub_2664DFE18();
    v58 = sub_2664E06E8();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_26629C000, v57, v58, "LibraryProvider#mediaQuery default, empty", v59, 2u);
      MEMORY[0x266784AD0](v59, -1, -1);
    }

    v84(v56, v15);
    v50 = [objc_allocWithZone(MEMORY[0x277CD5E38]) init];
LABEL_20:
    *(v38 + 16) = v50;
    goto LABEL_21;
  }

  v76(v27, v31, v15);
  v40 = sub_2664DFE18();
  v41 = sub_2664E06E8();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 67109120;
    *(v42 + 4) = v74 & 1;
    _os_log_impl(&dword_26629C000, v40, v41, "LibraryProvider#mediaQuery title, shouldAllowNonLibraryContent: %{BOOL}d", v42, 8u);
    MEMORY[0x266784AD0](v42, -1, -1);
  }

  v43 = (v84)(v27, v15);
  v44 = (v78[14])(v43);
  *(v38 + 16) = v44;
  [v44 setShouldIncludeNonLibraryEntities_];
  [v44 setIgnoreSystemFilterPredicates_];
LABEL_21:
  v60 = v77;
  if (v77 != 1 && v77 | v75)
  {
    v65 = v80;

    v66 = v82;

    v67 = v81;

    sub_266360910(v72, v60, v73, v75, v78, v38, v79, v65, a10, v66, a12, a13, v67);
  }

  else
  {
    v39(v83, v31, v15);
    v61 = sub_2664DFE18();
    v62 = sub_2664E06E8();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&dword_26629C000, v61, v62, "LibraryProvider#mediaQuery no sharedUserIdInfo found, using default library for media query", v63, 2u);
      MEMORY[0x266784AD0](v63, -1, -1);
    }

    v84(v83, v15);
    v64 = *(v38 + 16);
    sub_2663555CC(v64, v79, v80, a10, v82, a12, a13, v81);
  }

  sub_266354A00(v38);
}