id sub_47FEF4()
{
  result = sub_47FF14();
  qword_E719F0 = result;
  return result;
}

id sub_47FF14()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0, &unk_AF87B0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_B10840;
  *(v0 + 32) = sub_AB92A0();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_AB92A0();
  *(v0 + 56) = v2;
  *(v0 + 64) = sub_AB92A0();
  *(v0 + 72) = v3;
  *(v0 + 80) = sub_AB92A0();
  *(v0 + 88) = v4;
  *(v0 + 96) = sub_AB92A0();
  *(v0 + 104) = v5;
  *(v0 + 112) = sub_AB92A0();
  *(v0 + 120) = v6;
  *(v0 + 128) = sub_AB92A0();
  *(v0 + 136) = v7;
  *(v0 + 144) = sub_AB92A0();
  *(v0 + 152) = v8;
  *(v0 + 160) = sub_AB92A0();
  *(v0 + 168) = v9;
  *(v0 + 176) = sub_AB92A0();
  *(v0 + 184) = v10;
  *(v0 + 192) = sub_AB92A0();
  *(v0 + 200) = v11;
  *(v0 + 208) = sub_AB92A0();
  *(v0 + 216) = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8E70, &unk_AF8900);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF4EC0;
  *(inited + 32) = sub_AB92A0();
  *(inited + 40) = v14;
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_AF85F0;
  *(v15 + 32) = sub_AB92A0();
  *(v15 + 40) = v16;
  *(v15 + 48) = sub_AB92A0();
  *(v15 + 56) = v17;
  isa = sub_AB9740().super.isa;
  v19 = [objc_opt_self() propertySetWithProperties:isa];

  *(inited + 48) = v19;
  sub_96EA4(inited);
  swift_setDeallocating();
  sub_12E1C(inited + 32, &unk_DE8E80, &unk_AF87C0);
  v20 = objc_allocWithZone(MPPropertySet);
  v21 = sub_AB9740().super.isa;

  sub_13C80(0, &qword_DEA550, MPPropertySet_ptr);
  v22 = sub_AB8FD0().super.isa;

  v23 = [v20 initWithProperties:v21 relationships:v22];

  v24 = sub_13C80(0, &unk_DE8EA0, MPModelPlaylist_ptr);
  v25 = sub_2BAFF8(v24);
  v26 = [v23 propertySetByCombiningWithPropertySet:v25];

  v27 = sub_10F414(v24);
  v28 = [v26 propertySetByCombiningWithPropertySet:v27];

  return v28;
}

id sub_480284()
{
  result = sub_4802A4();
  qword_E719F8 = result;
  return result;
}

id sub_4802A4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0, &unk_AF87B0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_B00DB0;
  *(v0 + 32) = sub_AB92A0();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_AB92A0();
  *(v0 + 56) = v2;
  *(v0 + 64) = sub_AB92A0();
  *(v0 + 72) = v3;
  *(v0 + 80) = sub_AB92A0();
  *(v0 + 88) = v4;
  *(v0 + 96) = sub_AB92A0();
  *(v0 + 104) = v5;
  *(v0 + 112) = sub_AB92A0();
  *(v0 + 120) = v6;
  *(v0 + 128) = sub_AB92A0();
  *(v0 + 136) = v7;
  *(v0 + 144) = sub_AB92A0();
  *(v0 + 152) = v8;
  isa = sub_AB9740().super.isa;
  v10 = [objc_opt_self() propertySetWithProperties:isa];

  v11 = sub_13C80(0, &unk_E087D0, MPModelRadioStation_ptr);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = [ObjCClassFromMetadata requiredLibraryNavigationHandlerProperties];
  v14 = [ObjCClassFromMetadata requiredStoreNavigationHandlerProperties];
  v15 = [v13 propertySetByCombiningWithPropertySet:v14];

  v16 = [v10 propertySetByCombiningWithPropertySet:v15];
  v17 = sub_10F414(v11);
  v18 = [v16 propertySetByCombiningWithPropertySet:v17];

  return v18;
}

id sub_4804C0()
{
  result = sub_4804E0();
  qword_E71A00 = result;
  return result;
}

id sub_4804E0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0, &unk_AF87B0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_B00DA0;
  *(v0 + 32) = sub_AB92A0();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_AB92A0();
  *(v0 + 56) = v2;
  *(v0 + 64) = sub_AB92A0();
  *(v0 + 72) = v3;
  *(v0 + 80) = sub_AB92A0();
  *(v0 + 88) = v4;
  *(v0 + 96) = sub_AB92A0();
  *(v0 + 104) = v5;
  *(v0 + 112) = sub_AB92A0();
  *(v0 + 120) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8E70, &unk_AF8900);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF85F0;
  *(inited + 32) = sub_AB92A0();
  *(inited + 40) = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_AF4EC0;
  *(v9 + 32) = sub_AB92A0();
  *(v9 + 40) = v10;
  isa = sub_AB9740().super.isa;
  v12 = objc_opt_self();
  v13 = [v12 propertySetWithProperties:isa];

  *(inited + 48) = v13;
  *(inited + 56) = sub_AB92A0();
  *(inited + 64) = v14;
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_AF85F0;
  *(v15 + 32) = sub_AB92A0();
  *(v15 + 40) = v16;
  *(v15 + 48) = sub_AB92A0();
  *(v15 + 56) = v17;
  v18 = sub_AB9740().super.isa;
  v19 = [v12 propertySetWithProperties:v18];

  *(inited + 72) = v19;
  sub_96EA4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E80, &unk_AF87C0);
  swift_arrayDestroy();
  v20 = objc_allocWithZone(MPPropertySet);
  v21 = sub_AB9740().super.isa;

  sub_13C80(0, &qword_DEA550, MPPropertySet_ptr);
  v22 = sub_AB8FD0().super.isa;

  v23 = [v20 initWithProperties:v21 relationships:v22];

  v24 = sub_13C80(0, &unk_DE8EB0, MPModelSong_ptr);
  v25 = sub_2BAFF8(v24);
  v26 = [v23 propertySetByCombiningWithPropertySet:v25];

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v28 = [ObjCClassFromMetadata requiredLibraryNavigationHandlerProperties];
  v29 = [ObjCClassFromMetadata requiredStoreNavigationHandlerProperties];
  v30 = [v28 propertySetByCombiningWithPropertySet:v29];

  v31 = [v26 propertySetByCombiningWithPropertySet:v30];
  v32 = sub_10F414(v24);
  v33 = [v31 propertySetByCombiningWithPropertySet:v32];

  return v33;
}

id sub_480904()
{
  result = sub_480924();
  qword_E71A08 = result;
  return result;
}

id sub_480924()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0, &unk_AF87B0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_AF8820;
  *(v0 + 32) = sub_AB92A0();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_AB92A0();
  *(v0 + 56) = v2;
  *(v0 + 64) = sub_AB92A0();
  *(v0 + 72) = v3;
  isa = sub_AB9740().super.isa;
  v5 = [objc_opt_self() propertySetWithProperties:isa];

  v6 = sub_13C80(0, &unk_DE8EC0, MPModelTVShow_ptr);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [ObjCClassFromMetadata requiredLibraryNavigationHandlerProperties];
  v9 = [ObjCClassFromMetadata requiredStoreNavigationHandlerProperties];
  v10 = [v8 propertySetByCombiningWithPropertySet:v9];

  v11 = [v5 propertySetByCombiningWithPropertySet:v10];
  v12 = sub_10F414(v6);
  v13 = [v11 propertySetByCombiningWithPropertySet:v12];

  return v13;
}

id sub_480ADC()
{
  result = sub_480AFC();
  qword_E71A10 = result;
  return result;
}

id sub_480AFC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0, &unk_AF87B0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_AF8600;
  *(v0 + 32) = sub_AB92A0();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_AB92A0();
  *(v0 + 56) = v2;
  *(v0 + 64) = sub_AB92A0();
  *(v0 + 72) = v3;
  *(v0 + 80) = sub_AB92A0();
  *(v0 + 88) = v4;
  *(v0 + 96) = sub_AB92A0();
  *(v0 + 104) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8E70, &unk_AF8900);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF85F0;
  *(inited + 32) = sub_AB92A0();
  *(inited + 40) = v7;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_AF85F0;
  *(v8 + 32) = sub_AB92A0();
  *(v8 + 40) = v9;
  *(v8 + 48) = sub_AB92A0();
  *(v8 + 56) = v10;
  v11 = swift_initStackObject();
  *(v11 + 16) = xmmword_AF4EC0;
  *(v11 + 32) = sub_AB92A0();
  *(v11 + 40) = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_AF4EC0;
  *(v13 + 32) = sub_AB92A0();
  *(v13 + 40) = v14;
  isa = sub_AB9740().super.isa;
  v16 = objc_opt_self();
  v17 = [v16 propertySetWithProperties:isa];

  *(v11 + 48) = v17;
  sub_96EA4(v11);
  swift_setDeallocating();
  sub_12E1C(v11 + 32, &unk_DE8E80, &unk_AF87C0);
  v18 = objc_allocWithZone(MPPropertySet);
  v19 = sub_AB9740().super.isa;

  sub_13C80(0, &qword_DEA550, MPPropertySet_ptr);
  v20 = sub_AB8FD0().super.isa;

  v21 = [v18 initWithProperties:v19 relationships:v20];

  *(inited + 48) = v21;
  *(inited + 56) = sub_AB92A0();
  *(inited + 64) = v22;
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_AF4EC0;
  *(v23 + 32) = sub_AB92A0();
  *(v23 + 40) = v24;
  v25 = sub_AB9740().super.isa;
  v26 = [v16 propertySetWithProperties:v25];

  *(inited + 72) = v26;
  sub_96EA4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E80, &unk_AF87C0);
  swift_arrayDestroy();
  v27 = objc_allocWithZone(MPPropertySet);
  v28 = sub_AB9740().super.isa;

  v29 = sub_AB8FD0().super.isa;

  v30 = [v27 initWithProperties:v28 relationships:v29];

  v31 = sub_13C80(0, &unk_DE9C00, MPModelTVEpisode_ptr);
  v32 = sub_2BAFF8(v31);
  v33 = [v30 propertySetByCombiningWithPropertySet:v32];

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v35 = [ObjCClassFromMetadata requiredLibraryNavigationHandlerProperties];
  v36 = [ObjCClassFromMetadata requiredStoreNavigationHandlerProperties];
  v37 = [v35 propertySetByCombiningWithPropertySet:v36];

  v38 = [v33 propertySetByCombiningWithPropertySet:v37];
  v39 = sub_10F414(v31);
  v40 = [v38 propertySetByCombiningWithPropertySet:v39];

  v41 = [ObjCClassFromMetadata requiredLibraryAddStatusObservationProperties];
  v42 = [v40 propertySetByCombiningWithPropertySet:v41];

  return v42;
}

id sub_481068()
{
  result = sub_481088();
  qword_E71A18 = result;
  return result;
}

id sub_481088()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0, &unk_AF87B0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_AF8820;
  *(v0 + 32) = sub_AB92A0();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_AB92A0();
  *(v0 + 56) = v2;
  *(v0 + 64) = sub_AB92A0();
  *(v0 + 72) = v3;
  isa = sub_AB9740().super.isa;
  v5 = [objc_opt_self() propertySetWithProperties:isa];

  v6 = sub_13C80(0, &unk_E03780, MPModelMovie_ptr);
  v7 = sub_2BAFF8(v6);
  v8 = [v5 propertySetByCombiningWithPropertySet:v7];

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = [ObjCClassFromMetadata requiredLibraryNavigationHandlerProperties];
  v11 = [ObjCClassFromMetadata requiredStoreNavigationHandlerProperties];
  v12 = [v10 propertySetByCombiningWithPropertySet:v11];

  v13 = [v8 propertySetByCombiningWithPropertySet:v12];
  v14 = sub_10F414(v6);
  v15 = [v13 propertySetByCombiningWithPropertySet:v14];

  v16 = [ObjCClassFromMetadata requiredLibraryAddStatusObservationProperties];
  v17 = [v15 propertySetByCombiningWithPropertySet:v16];

  return v17;
}

id sub_4812B8()
{
  result = sub_4812D8();
  qword_E71A20 = result;
  return result;
}

id sub_4812D8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0, &unk_AF87B0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_AF85D0;
  *(v0 + 32) = sub_AB92A0();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_AB92A0();
  *(v0 + 56) = v2;
  *(v0 + 64) = sub_AB92A0();
  *(v0 + 72) = v3;
  *(v0 + 80) = sub_AB92A0();
  *(v0 + 88) = v4;
  isa = sub_AB9740().super.isa;
  v6 = objc_opt_self();
  v7 = [v6 propertySetWithProperties:isa];

  v8 = sub_13C80(0, &qword_DED7C0, MPModelSocialPerson_ptr);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = [ObjCClassFromMetadata requiredLibraryNavigationHandlerProperties];
  v11 = [ObjCClassFromMetadata requiredStoreNavigationHandlerProperties];
  v12 = [v10 propertySetByCombiningWithPropertySet:v11];

  v13 = [v7 propertySetByCombiningWithPropertySet:v12];
  v14 = sub_10F414(v8);
  v15 = [v13 propertySetByCombiningWithPropertySet:v14];

  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_AF85F0;
  *(v16 + 32) = sub_AB92A0();
  *(v16 + 40) = v17;
  *(v16 + 48) = sub_AB92A0();
  *(v16 + 56) = v18;
  v19 = sub_AB9740().super.isa;
  v20 = [v6 propertySetWithProperties:v19];

  v21 = [v15 propertySetByCombiningWithPropertySet:v20];
  return v21;
}

id sub_481564()
{
  result = sub_481584();
  qword_E71A28 = result;
  return result;
}

id sub_481584()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0, &unk_AF87B0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_B00DA0;
  *(v0 + 32) = sub_AB92A0();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_AB92A0();
  *(v0 + 56) = v2;
  *(v0 + 64) = sub_AB92A0();
  *(v0 + 72) = v3;
  *(v0 + 80) = sub_AB92A0();
  *(v0 + 88) = v4;
  *(v0 + 96) = sub_AB92A0();
  *(v0 + 104) = v5;
  *(v0 + 112) = sub_AB92A0();
  *(v0 + 120) = v6;
  isa = sub_AB9740().super.isa;
  v8 = [objc_opt_self() propertySetWithProperties:isa];

  return v8;
}

void sub_48169C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0, &unk_AF87B0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_AF85F0;
  *(v0 + 32) = sub_AB92A0();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_AB92A0();
  *(v0 + 56) = v2;
  isa = sub_AB9740().super.isa;
  v4 = [objc_opt_self() propertySetWithProperties:isa];

  qword_E71A30 = v4;
}

uint64_t sub_48176C()
{
  sub_489D30(v0, v10);
  if (v12)
  {
    if (v12 == 1)
    {
      v8[0] = v10[0];
      v8[1] = v10[1];
      v9 = v11;
      sub_15F84(v8, v5, &unk_E00060, &qword_B094F0);
      v1 = v6;
      if (v6)
      {
        v2 = v7;
        __swift_project_boxed_opaque_existential_1(v5, v6);
        v3 = (*(v2 + 8))(v1, v2);
        __swift_destroy_boxed_opaque_existential_0(v5);
      }

      else
      {
        sub_12E1C(v5, &unk_E00060, &qword_B094F0);
        v3 = 0x746C757365526F6ELL;
      }

      sub_12E1C(v8, &unk_E00060, &qword_B094F0);
      return v3;
    }

    else
    {
      return 0x6948686372616573;
    }
  }

  else if (LOBYTE(v10[0]))
  {
    return 0x72617453646C6F63;
  }

  else
  {
    return 0x746E65636572;
  }
}

double sub_4818EC(uint64_t a1)
{
  sub_AB93F0();

  return result;
}

unint64_t sub_4819E4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_48C5DC(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_481A14(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 6579297;
  v5 = 0xE600000000000000;
  v6 = 0x686372616573;
  v7 = 0xE600000000000000;
  v8 = 0x7463656C6573;
  if (v2 != 4)
  {
    v8 = 0xD000000000000015;
    v7 = 0x8000000000B48D50;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEB00000000797265;
  v10 = 0x75516C65636E6163;
  if (v2 != 1)
  {
    v10 = 0x7865547261656C63;
    v9 = 0xE900000000000074;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_481AD4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00050, &qword_B094D0);
  __chkstk_darwin();
  v3 = &v28[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v5 = &v28[-v4];
  type metadata accessor for Search.Item(0);
  __chkstk_darwin();
  v7 = &v28[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v9 = &v28[-v8];
  type metadata accessor for Search.Event(0);
  __chkstk_darwin();
  v11 = &v28[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_487D68(v1, v11, type metadata accessor for Search.Event);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_70DF8(v11, &v29);
      v17 = *&v30[8];
      __swift_project_boxed_opaque_existential_1(&v29, *&v30[8]);
      v15 = (*(*(&v17 + 1) + 8))(v17, *(&v17 + 1));
      __swift_destroy_boxed_opaque_existential_0(&v29);
    }

    else if (EnumCaseMultiPayload == 4)
    {
      if (v11[1])
      {
        v15 = *aSearch_11;
      }

      else
      {
        *&v29 = *(v11 + 1);
        v15 = sub_ABB330();
      }
    }

    else if (*v11)
    {
      return 0x7262694C72756F59;
    }

    else
    {
      static ApplicationCapabilities.shared.getter(&v29);
      v19 = *&v30[16];

      sub_70C54(&v29);
      v20 = sub_472A84(2, v19);

      if (v20)
      {
        return 0x73754D656C707041;
      }

      else
      {
        return 0x6F69646152;
      }
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE5E8, &unk_B0EB80) + 64);
      sub_489CC8(v11, v9, type metadata accessor for Search.Item);
      sub_36B0C(v11 + v13, v5, &unk_E00050, &qword_B094D0);
      sub_487D68(v9, v7, type metadata accessor for Search.Item);
      if (swift_getEnumCaseMultiPayload())
      {
        sub_486014(v7, type metadata accessor for Search.Item);
        sub_15F84(v5, v3, &unk_E00050, &qword_B094D0);
        v14 = type metadata accessor for Search.ResultContext(0);
        if ((*(*(v14 - 8) + 48))(v3, 1, v14) == 1)
        {
          sub_12E1C(v3, &unk_E00050, &qword_B094D0);
        }

        else
        {
          v21 = Search.ResultContext.source(for:)(v9);
          sub_486014(v3, type metadata accessor for Search.ResultContext);
          if (v21 != 2)
          {
            if (v21)
            {
              sub_12E1C(v5, &unk_E00050, &qword_B094D0);
              sub_486014(v9, type metadata accessor for Search.Item);
              return 0x497972617262696CLL;
            }

            v22 = Search.Item.modelObject.getter();
            if (v22)
            {
              v23 = v22;
              v24 = [v22 innermostModelObject];

              v15 = MPModelObject.bestIdentifier(for:)(3, 2u);
              v26 = v25;

              if (v26)
              {
                sub_12E1C(v5, &unk_E00050, &qword_B094D0);
                sub_486014(v9, type metadata accessor for Search.Item);
                return v15;
              }
            }

            sub_12E1C(v5, &unk_E00050, &qword_B094D0);
            sub_486014(v9, type metadata accessor for Search.Item);

            return 0;
          }
        }

        sub_12E1C(v5, &unk_E00050, &qword_B094D0);
        sub_486014(v9, type metadata accessor for Search.Item);
        return 0;
      }

      sub_12E1C(v5, &unk_E00050, &qword_B094D0);
      sub_486014(v9, type metadata accessor for Search.Item);
      v15 = *v7;
    }

    else
    {
      v18 = v11[1];
      v29 = *v11;
      *v30 = v18;
      *&v30[9] = *(v11 + 25);
      sub_15F84(&v29, v28, &qword_DFE5D0, &qword_B094F8);
      if (v28[40] == 255)
      {
        sub_12E1C(v28, &qword_DFE5D0, &qword_B094F8);
        v15 = 0x72617453646C6F63;
      }

      else
      {
        v15 = sub_48176C();
        sub_30E4AC(v28);
      }

      sub_12E1C(&v29, &qword_DFE5D0, &qword_B094F8);
    }
  }

  else
  {
    v16 = *v11;
    if (v16 > 2)
    {
      if (v16 == 3)
      {
        return 0x686372616573;
      }

      else if (v16 == 4)
      {
        return 0x7463656C6573;
      }

      else
      {
        return 0xD000000000000015;
      }
    }

    else if (*v11)
    {
      if (v16 == 1)
      {
        return 0x75516C65636E6163;
      }

      else
      {
        return 0x7865547261656C63;
      }
    }

    else
    {
      return 6579297;
    }
  }

  return v15;
}

uint64_t sub_482220()
{
  v1 = v0;
  type metadata accessor for Search.Item(0);
  __chkstk_darwin();
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Search.Event(0);
  __chkstk_darwin();
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_487D68(v1, v5, type metadata accessor for Search.Event);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 4)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_486014(v5, type metadata accessor for Search.Event);
      return 9;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE5E8, &unk_B0EB80);
      v8 = v5[*(v7 + 48)];
      sub_489CC8(v5, v3, type metadata accessor for Search.Item);
      if (v8)
      {
        v13 = &v5[*(v7 + 64)];
        v14 = sub_ABB3C0();

        if ((v14 & 1) == 0)
        {
          if (v8 > 4)
          {
          }

          else
          {
            v15 = sub_ABB3C0();

            if ((v15 & 1) == 0)
            {
              v16 = Search.Item.modelObject.getter();
              sub_486014(v3, type metadata accessor for Search.Item);
              if (v16)
              {

                v17 = 19;
              }

              else
              {
                v17 = 11;
              }

              sub_12E1C(v13, &unk_E00050, &qword_B094D0);
              return v17;
            }
          }
        }
      }

      else
      {
        v12 = *(v7 + 64);

        v13 = &v5[v12];
      }

      sub_486014(v3, type metadata accessor for Search.Item);
      sub_12E1C(v13, &unk_E00050, &qword_B094D0);
    }

    else
    {
      sub_486014(v5, type metadata accessor for Search.Event);
    }

    return 5;
  }

  v10 = *v5;

  if (v10 == 27)
  {
    v11 = 12;
  }

  else
  {
    v11 = 5;
  }

  if (v10 == 26)
  {
    return 11;
  }

  else
  {
    return v11;
  }
}

unint64_t sub_482604()
{
  v1 = v0;
  type metadata accessor for Search.Item(0);
  __chkstk_darwin();
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Search.Event(0);
  __chkstk_darwin();
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_487D68(v1, v5, type metadata accessor for Search.Event);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_486014(v5, type metadata accessor for Search.Event);
      return 28;
    }

    else if (EnumCaseMultiPayload == 4)
    {
      v10 = *v5;
    }

    else
    {
      return 28;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE5E8, &unk_B0EB80);
      v8 = v5[*(v7 + 48)];
      v9 = *(v7 + 64);
      sub_489CC8(v5, v3, type metadata accessor for Search.Item);
      if (v8 == 5)
      {
        sub_486014(v3, type metadata accessor for Search.Item);
        sub_12E1C(&v5[v9], &unk_E00050, &qword_B094D0);
        return 44;
      }

      else if (v8)
      {
        v11 = Search.Item.modelObject.getter();
        if (v11)
        {
          v12 = v11;
          v13 = [v11 innermostModelObject];
          sub_486014(v3, type metadata accessor for Search.Item);

          swift_getObjectType();
          v14 = swift_conformsToProtocol2();

          if (v13)
          {
            v15 = v14 == 0;
          }

          else
          {
            v15 = 1;
          }

          if (v15)
          {
            v10 = 28;
          }

          else
          {
            v10 = 31;
          }

          sub_12E1C(&v5[v9], &unk_E00050, &qword_B094D0);
        }

        else
        {
          sub_486014(v3, type metadata accessor for Search.Item);
          sub_12E1C(&v5[v9], &unk_E00050, &qword_B094D0);
          return 26;
        }
      }

      else
      {
        sub_486014(v3, type metadata accessor for Search.Item);
        sub_12E1C(&v5[v9], &unk_E00050, &qword_B094D0);
        return 5;
      }
    }

    else
    {
      sub_486014(v5, type metadata accessor for Search.Event);
      return 0;
    }
  }

  else
  {
    return 0xD2C36100905uLL >> (8 * *v5);
  }

  return v10;
}

uint64_t sub_482930()
{
  type metadata accessor for Search.Event(0);
  __chkstk_darwin();
  v2 = &v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_487D68(v0, v2, type metadata accessor for Search.Event);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 4)
  {
  }

  else if (EnumCaseMultiPayload)
  {
    sub_486014(v2, type metadata accessor for Search.Event);
  }

  return 0;
}

id sub_482A2C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00050, &qword_B094D0);
  __chkstk_darwin();
  v3 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v32 - v4;
  __chkstk_darwin();
  v7 = &v32 - v6;
  type metadata accessor for Search.Item(0);
  __chkstk_darwin();
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Search.Event(0);
  __chkstk_darwin();
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_487D68(v1, v11, type metadata accessor for Search.Event);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 4)
  {
    return *(v11 + 3);
  }

  if (EnumCaseMultiPayload != 1)
  {
    v17 = type metadata accessor for Search.Event;
    v18 = v11;
LABEL_9:
    sub_486014(v18, v17);
    return 0;
  }

  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE5E8, &unk_B0EB80) + 64);
  sub_489CC8(v11, v9, type metadata accessor for Search.Item);
  sub_36B0C(&v11[v13], v7, &unk_E00050, &qword_B094D0);
  sub_15F84(v7, v5, &unk_E00050, &qword_B094D0);
  v14 = type metadata accessor for Search.ResultContext(0);
  v15 = *(*(v14 - 8) + 48);
  if (v15(v5, 1, v14) == 1)
  {
    sub_12E1C(v7, &unk_E00050, &qword_B094D0);
    sub_486014(v9, type metadata accessor for Search.Item);
    sub_12E1C(v5, &unk_E00050, &qword_B094D0);
    return 0;
  }

  v19 = Search.ResultContext.source(for:)(v9);
  sub_486014(v5, type metadata accessor for Search.ResultContext);
  if (v19 == 2)
  {
LABEL_8:
    sub_12E1C(v7, &unk_E00050, &qword_B094D0);
    v17 = type metadata accessor for Search.Item;
    v18 = v9;
    goto LABEL_9;
  }

  if (v19)
  {
    sub_12E1C(v7, &unk_E00050, &qword_B094D0);
    sub_486014(v9, type metadata accessor for Search.Item);
    return 0;
  }

  v20 = Search.Item.modelObject.getter();
  if (!v20)
  {
    goto LABEL_8;
  }

  v33 = v20;
  v21 = [v20 identifiers];
  v22 = MPIdentifierSet.bestStoreIdentifier.getter();
  if (v23)
  {
    v24 = v23;
    v25 = v22;

    sub_15F84(v7, v3, &unk_E00050, &qword_B094D0);
    if (v15(v3, 1, v14) == 1)
    {

      sub_12E1C(v7, &unk_E00050, &qword_B094D0);
      sub_486014(v9, type metadata accessor for Search.Item);
      sub_12E1C(v3, &unk_E00050, &qword_B094D0);
    }

    else
    {
      v26 = *&v3[*(v14 + 32)];

      sub_486014(v3, type metadata accessor for Search.ResultContext);
      if (v26)
      {
        if (*(v26 + 16) && (v27 = sub_2EBF88(v25, v24), (v28 & 1) != 0))
        {
          sub_9ACA0(*(v26 + 56) + 40 * v27, &v35);
        }

        else
        {
          v37 = 0;
          v35 = 0u;
          v36 = 0u;
        }

        if (*(&v36 + 1))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE680, &qword_AF7B70);
          if (swift_dynamicCast())
          {
            v29 = v34;
            if (*(v34 + 16) && (v30 = sub_2EBF88(0x73636972796CLL, 0xE600000000000000), (v31 & 1) != 0))
            {
              sub_808B0(*(v29 + 56) + 32 * v30, &v35);
              sub_12E1C(v7, &unk_E00050, &qword_B094D0);
              sub_486014(v9, type metadata accessor for Search.Item);
              swift_dynamicCast();
            }

            else
            {
              sub_12E1C(v7, &unk_E00050, &qword_B094D0);
              sub_486014(v9, type metadata accessor for Search.Item);
            }
          }

          else
          {
            sub_12E1C(v7, &unk_E00050, &qword_B094D0);
            sub_486014(v9, type metadata accessor for Search.Item);
          }

          return v33;
        }

        sub_12E1C(v7, &unk_E00050, &qword_B094D0);
        sub_486014(v9, type metadata accessor for Search.Item);
        goto LABEL_31;
      }

      sub_12E1C(v7, &unk_E00050, &qword_B094D0);
      sub_486014(v9, type metadata accessor for Search.Item);
    }

    v37 = 0;
    v35 = 0u;
    v36 = 0u;
LABEL_31:
    sub_12E1C(&v35, &qword_DF2BD0, &unk_AFDC00);
    return v33;
  }

  sub_12E1C(v7, &unk_E00050, &qword_B094D0);
  sub_486014(v9, type metadata accessor for Search.Item);

  return v33;
}

uint64_t sub_4831AC()
{
  type metadata accessor for Search.Item(0);
  __chkstk_darwin();
  v2 = &v30 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Search.Event(0);
  __chkstk_darwin();
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_487D68(v0, v4, type metadata accessor for Search.Event);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E09918, &unk_B11990);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_AF8820;
    *(inited + 32) = 25705;
    *(inited + 40) = 0xE200000000000000;
    v32 = 0x737265746C6966;
    v33 = 0xE700000000000000;
    sub_ABAD10();
    strcpy((inited + 88), "locationType");
    *(inited + 101) = 0;
    *(inited + 102) = -5120;
    v32 = 0x666C656873;
    v33 = 0xE500000000000000;
    sub_ABAD10();
    *(inited + 144) = 0xD000000000000010;
    *(inited + 152) = 0x8000000000B66470;
    v32 = 0;
    sub_ABAD10();
    v13 = sub_988FC(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEBBE8, &qword_AFA540);
    swift_arrayDestroy();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFC2B0, &qword_B077B0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_AF4EC0;
    sub_3E92E8(v13);
    *(v14 + 32) = v15;

    sub_486014(v4, type metadata accessor for Search.Event);
    return v14;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_486014(v4, type metadata accessor for Search.Event);
    return 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE5E8, &unk_B0EB80);
  v7 = v4[*(v6 + 48)];
  v8 = *(v6 + 64);
  sub_489CC8(v4, v2, type metadata accessor for Search.Item);
  v9 = Search.Item.modelObject.getter();
  if (!v9)
  {
    sub_486014(v2, type metadata accessor for Search.Item);
LABEL_18:
    sub_12E1C(&v4[v8], &unk_E00050, &qword_B094D0);
    return 0;
  }

  v10 = v9;
  v11 = [v9 innermostModelObject];

  if (v7)
  {
    v17 = sub_ABB3C0();

    if (v17)
    {
      goto LABEL_11;
    }

    sub_486014(v2, type metadata accessor for Search.Item);

    goto LABEL_18;
  }

LABEL_11:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E09918, &unk_B11990);
  v18 = swift_initStackObject();
  *(v18 + 16) = xmmword_AF85D0;
  *(v18 + 32) = 25705;
  *(v18 + 40) = 0xE200000000000000;
  v19 = MPModelObject.bestIdentifier(for:)(0, 2u);
  if (v20)
  {
    v21 = v19;
  }

  else
  {
    v21 = 0;
  }

  v22 = 0xE000000000000000;
  if (v20)
  {
    v22 = v20;
  }

  v32 = v21;
  v33 = v22;
  v31 = v11;
  sub_ABAD10();
  *(v18 + 88) = 1701667182;
  *(v18 + 96) = 0xE400000000000000;
  v23 = sub_482604();
  v32 = MetricsEvent.Click.ActionType.rawValue.getter(v23);
  v33 = v24;
  sub_ABAD10();
  strcpy((v18 + 144), "locationType");
  *(v18 + 157) = 0;
  *(v18 + 158) = -5120;
  v25 = sub_482220();
  v32 = MetricsEvent.TargetType.rawValue.getter(v25);
  v33 = v26;
  sub_ABAD10();
  *(v18 + 200) = 0xD000000000000010;
  *(v18 + 208) = 0x8000000000B66470;
  v32 = 0;
  sub_ABAD10();
  v27 = sub_988FC(v18);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEBBE8, &qword_AFA540);
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFC2B0, &qword_B077B0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_AF4EC0;
  sub_3E92E8(v27);
  *(v28 + 32) = v29;
  sub_486014(v2, type metadata accessor for Search.Item);

  sub_12E1C(&v4[v8], &unk_E00050, &qword_B094D0);
  return v28;
}

uint64_t sub_483824()
{
  v0 = sub_AB4BC0();
  __swift_allocate_value_buffer(v0, static Logger.search);
  __swift_project_value_buffer(v0, static Logger.search);
  return static Logger.music(_:)(0x686372616553, 0xE600000000000000);
}

uint64_t static Logger.search.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_DE6D48 != -1)
  {
    swift_once();
  }

  v2 = sub_AB4BC0();
  v3 = __swift_project_value_buffer(v2, static Logger.search);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void sub_48394C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *(v2 + 8);
  sub_15F84(a1, v8, &unk_E00060, &qword_B094F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00060, &qword_B094F0);
  if (swift_dynamicCast())
  {
    v6 = v7;
  }

  else
  {
    v6 = 8;
  }

  sub_4BFCDC(v6, v4, v5, a2);
}

void sub_483A84(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t, uint64_t))
{
  v6 = *v3;
  v5 = v3[1];
  v7 = [objc_opt_self() standardUserDefaults];
  a3(&_swiftEmptySetSingleton, v6, v5);
}

unint64_t sub_483B0C()
{
  result = qword_E09298;
  if (!qword_E09298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E09290, &qword_B10868);
    sub_483B90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E09298);
  }

  return result;
}

unint64_t sub_483B90()
{
  result = qword_E092A0;
  if (!qword_E092A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E092A0);
  }

  return result;
}

uint64_t sub_483C44()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

unint64_t sub_483C84()
{
  result = qword_E092A8;
  if (!qword_E092A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E092A8);
  }

  return result;
}

unint64_t sub_483CD8()
{
  result = qword_E092B8;
  if (!qword_E092B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E092B8);
  }

  return result;
}

void sub_483D2C(uint64_t *a1)
{
  v2 = *(type metadata accessor for Search.Recents.Result.Item(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_163E1C(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_483DD4(v5);
  *a1 = v3;
}

void sub_483DD4(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_ABB2B0(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for Search.Recents.Result.Item(0);
        v6 = sub_AB97D0();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for Search.Recents.Result.Item(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_484164(v8, v9, a1, v4);
      v6[2] = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_483F00(0, v2, 1, a1);
  }
}

void sub_483F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  type metadata accessor for Search.Recents.Result.Item(0);
  __chkstk_darwin();
  v31 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v23 - v9;
  __chkstk_darwin();
  v13 = &v23 - v12;
  v25 = a2;
  if (a3 != a2)
  {
    v14 = *a4;
    v15 = *(v11 + 72);
    v16 = *a4 + v15 * (a3 - 1);
    v17 = -v15;
    v18 = a1 - a3;
    v30 = v14;
    v24 = v15;
    v19 = v14 + v15 * a3;
LABEL_5:
    v28 = v16;
    v29 = a3;
    v26 = v19;
    v27 = v18;
    while (1)
    {
      sub_487D68(v19, v13, type metadata accessor for Search.Recents.Result.Item);
      sub_487D68(v16, v10, type metadata accessor for Search.Recents.Result.Item);
      v20 = sub_AB3380();
      sub_486014(v10, type metadata accessor for Search.Recents.Result.Item);
      sub_486014(v13, type metadata accessor for Search.Recents.Result.Item);
      if ((v20 & 1) == 0)
      {
LABEL_4:
        a3 = v29 + 1;
        v16 = v28 + v24;
        v18 = v27 - 1;
        v19 = v26 + v24;
        if (v29 + 1 == v25)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v30)
      {
        break;
      }

      v21 = v31;
      sub_489CC8(v19, v31, type metadata accessor for Search.Recents.Result.Item);
      swift_arrayInitWithTakeFrontToBack();
      sub_489CC8(v21, v16, type metadata accessor for Search.Recents.Result.Item);
      v16 += v17;
      v19 += v17;
      if (__CFADD__(v18++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_484164(unint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v101 = a1;
  v9 = type metadata accessor for Search.Recents.Result.Item(0);
  v109 = *(v9 - 8);
  __chkstk_darwin();
  v104 = &v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v112 = &v97 - v11;
  __chkstk_darwin();
  v113 = &v97 - v12;
  __chkstk_darwin();
  v14 = &v97 - v13;
  v111 = a3;
  v15 = a3[1];
  if (v15 < 1)
  {
    v17 = _swiftEmptyArrayStorage;
LABEL_95:
    v5 = *v101;
    if (!*v101)
    {
      goto LABEL_134;
    }

    a4 = v17;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v92 = a4;
    }

    else
    {
LABEL_128:
      v92 = sub_163DA4(a4);
    }

    v115 = v92;
    a4 = *(v92 + 2);
    if (a4 >= 2)
    {
      while (*v111)
      {
        v93 = *&v92[16 * a4];
        v94 = v92;
        v95 = *&v92[16 * a4 + 24];
        sub_484AC8(*v111 + *(v109 + 72) * v93, *v111 + *(v109 + 72) * *&v92[16 * a4 + 16], *v111 + *(v109 + 72) * v95, v5);
        if (v6)
        {
          goto LABEL_106;
        }

        if (v95 < v93)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v94 = sub_163DA4(v94);
        }

        if (a4 - 2 >= *(v94 + 2))
        {
          goto LABEL_122;
        }

        v96 = &v94[16 * a4];
        *v96 = v93;
        *(v96 + 1) = v95;
        v115 = v94;
        sub_163D18(a4 - 1);
        v92 = v115;
        a4 = *(v115 + 2);
        if (a4 <= 1)
        {
          goto LABEL_106;
        }
      }

      goto LABEL_132;
    }

LABEL_106:

    return;
  }

  v16 = 0;
  v17 = _swiftEmptyArrayStorage;
  v100 = a4;
  v114 = v9;
  while (1)
  {
    v18 = v16;
    v19 = v16 + 1;
    v105 = v17;
    if (v16 + 1 >= v15)
    {
      v15 = v16 + 1;
    }

    else
    {
      v20 = *(v109 + 72);
      v5 = *v111 + v20 * v19;
      v107 = *v111;
      v21 = v107;
      sub_487D68(v107 + v20 * v19, v14, type metadata accessor for Search.Recents.Result.Item);
      v22 = v21 + v20 * v18;
      v23 = v18;
      v24 = v113;
      sub_487D68(v22, v113, type metadata accessor for Search.Recents.Result.Item);
      LODWORD(v108) = sub_AB3380();
      sub_486014(v24, type metadata accessor for Search.Recents.Result.Item);
      sub_486014(v14, type metadata accessor for Search.Recents.Result.Item);
      v99 = v23;
      v25 = v23 + 2;
      v110 = v20;
      v26 = v107 + v20 * (v23 + 2);
      while (v15 != v25)
      {
        sub_487D68(v26, v14, type metadata accessor for Search.Recents.Result.Item);
        v27 = v113;
        sub_487D68(v5, v113, type metadata accessor for Search.Recents.Result.Item);
        v28 = sub_AB3380() & 1;
        sub_486014(v27, type metadata accessor for Search.Recents.Result.Item);
        sub_486014(v14, type metadata accessor for Search.Recents.Result.Item);
        ++v25;
        v26 += v110;
        v5 += v110;
        if ((v108 & 1) != v28)
        {
          v15 = v25 - 1;
          break;
        }
      }

      v18 = v99;
      a4 = v100;
      if (v108)
      {
        if (v15 < v99)
        {
          goto LABEL_125;
        }

        if (v99 < v15)
        {
          v98 = v6;
          v29 = v110 * (v15 - 1);
          v30 = v15;
          v31 = v15 * v110;
          v108 = v15;
          v32 = v99;
          v33 = v99;
          v34 = v99 * v110;
          do
          {
            if (v32 != --v30)
            {
              v35 = *v111;
              if (!*v111)
              {
                goto LABEL_131;
              }

              v5 = v35 + v34;
              sub_489CC8(v35 + v34, v104, type metadata accessor for Search.Recents.Result.Item);
              if (v34 < v29 || v5 >= v35 + v31)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v34 != v29)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_489CC8(v104, v35 + v29, type metadata accessor for Search.Recents.Result.Item);
            }

            ++v32;
            v29 -= v110;
            v31 -= v110;
            v34 += v110;
          }

          while (v32 < v30);
          v6 = v98;
          a4 = v100;
          v18 = v33;
          v15 = v108;
        }
      }
    }

    v36 = v111[1];
    if (v15 < v36)
    {
      if (__OFSUB__(v15, v18))
      {
        goto LABEL_124;
      }

      if (v15 - v18 < a4)
      {
        if (__OFADD__(v18, a4))
        {
          goto LABEL_126;
        }

        if ((v18 + a4) >= v36)
        {
          v37 = v111[1];
        }

        else
        {
          v37 = v18 + a4;
        }

        if (v37 < v18)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v15 != v37)
        {
          break;
        }
      }
    }

    v16 = v15;
    if (v15 < v18)
    {
      goto LABEL_123;
    }

LABEL_33:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v17 = v105;
    }

    else
    {
      v17 = sub_6A6C0(0, *(v105 + 2) + 1, 1, v105);
    }

    a4 = *(v17 + 2);
    v38 = *(v17 + 3);
    v5 = a4 + 1;
    if (a4 >= v38 >> 1)
    {
      v17 = sub_6A6C0((v38 > 1), a4 + 1, 1, v17);
    }

    *(v17 + 2) = v5;
    v39 = &v17[16 * a4];
    *(v39 + 4) = v18;
    *(v39 + 5) = v16;
    v40 = *v101;
    if (!*v101)
    {
      goto LABEL_133;
    }

    if (a4)
    {
      while (1)
      {
        v41 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v42 = *(v17 + 4);
          v43 = *(v17 + 5);
          v52 = __OFSUB__(v43, v42);
          v44 = v43 - v42;
          v45 = v52;
LABEL_52:
          if (v45)
          {
            goto LABEL_112;
          }

          v58 = &v17[16 * v5];
          v60 = *v58;
          v59 = *(v58 + 1);
          v61 = __OFSUB__(v59, v60);
          v62 = v59 - v60;
          v63 = v61;
          if (v61)
          {
            goto LABEL_115;
          }

          v64 = &v17[16 * v41 + 32];
          v66 = *v64;
          v65 = *(v64 + 1);
          v52 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v52)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v62, v67))
          {
            goto LABEL_119;
          }

          if (v62 + v67 >= v44)
          {
            if (v44 < v67)
            {
              v41 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v68 = &v17[16 * v5];
        v70 = *v68;
        v69 = *(v68 + 1);
        v52 = __OFSUB__(v69, v70);
        v62 = v69 - v70;
        v63 = v52;
LABEL_66:
        if (v63)
        {
          goto LABEL_114;
        }

        v71 = &v17[16 * v41];
        v73 = *(v71 + 4);
        v72 = *(v71 + 5);
        v52 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v52)
        {
          goto LABEL_117;
        }

        if (v74 < v62)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v41 - 1;
        if (v41 - 1 >= v5)
        {
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (!*v111)
        {
          goto LABEL_130;
        }

        v79 = v17;
        v80 = *&v17[16 * a4 + 32];
        v5 = *&v17[16 * v41 + 40];
        sub_484AC8(*v111 + *(v109 + 72) * v80, *v111 + *(v109 + 72) * *&v17[16 * v41 + 32], *v111 + *(v109 + 72) * v5, v40);
        if (v6)
        {
          goto LABEL_106;
        }

        if (v5 < v80)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v79 = sub_163DA4(v79);
        }

        if (a4 >= *(v79 + 2))
        {
          goto LABEL_109;
        }

        v81 = &v79[16 * a4];
        *(v81 + 4) = v80;
        *(v81 + 5) = v5;
        v115 = v79;
        sub_163D18(v41);
        v17 = v115;
        v5 = *(v115 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v46 = &v17[16 * v5 + 32];
      v47 = *(v46 - 64);
      v48 = *(v46 - 56);
      v52 = __OFSUB__(v48, v47);
      v49 = v48 - v47;
      if (v52)
      {
        goto LABEL_110;
      }

      v51 = *(v46 - 48);
      v50 = *(v46 - 40);
      v52 = __OFSUB__(v50, v51);
      v44 = v50 - v51;
      v45 = v52;
      if (v52)
      {
        goto LABEL_111;
      }

      v53 = &v17[16 * v5];
      v55 = *v53;
      v54 = *(v53 + 1);
      v52 = __OFSUB__(v54, v55);
      v56 = v54 - v55;
      if (v52)
      {
        goto LABEL_113;
      }

      v52 = __OFADD__(v44, v56);
      v57 = v44 + v56;
      if (v52)
      {
        goto LABEL_116;
      }

      if (v57 >= v49)
      {
        v75 = &v17[16 * v41 + 32];
        v77 = *v75;
        v76 = *(v75 + 1);
        v52 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v52)
        {
          goto LABEL_120;
        }

        if (v44 < v78)
        {
          v41 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v15 = v111[1];
    a4 = v100;
    if (v16 >= v15)
    {
      goto LABEL_95;
    }
  }

  v98 = v6;
  v82 = v15;
  v83 = v18;
  v84 = *v111;
  v85 = *(v109 + 72);
  v86 = *v111 + v85 * (v15 - 1);
  v87 = -v85;
  v99 = v83;
  v88 = v83 - v15;
  v108 = v82;
  v102 = v85;
  v103 = v37;
  v5 = v84 + v82 * v85;
LABEL_85:
  v106 = v5;
  v107 = v88;
  v110 = v86;
  while (1)
  {
    sub_487D68(v5, v14, type metadata accessor for Search.Recents.Result.Item);
    v89 = v113;
    sub_487D68(v86, v113, type metadata accessor for Search.Recents.Result.Item);
    a4 = sub_AB3380();
    sub_486014(v89, type metadata accessor for Search.Recents.Result.Item);
    sub_486014(v14, type metadata accessor for Search.Recents.Result.Item);
    if ((a4 & 1) == 0)
    {
LABEL_84:
      v16 = v103;
      v86 = v110 + v102;
      v88 = v107 - 1;
      v5 = v106 + v102;
      if (++v108 != v103)
      {
        goto LABEL_85;
      }

      v6 = v98;
      v18 = v99;
      if (v103 < v99)
      {
        goto LABEL_123;
      }

      goto LABEL_33;
    }

    if (!v84)
    {
      break;
    }

    a4 = type metadata accessor for Search.Recents.Result.Item;
    v90 = v112;
    sub_489CC8(v5, v112, type metadata accessor for Search.Recents.Result.Item);
    swift_arrayInitWithTakeFrontToBack();
    sub_489CC8(v90, v86, type metadata accessor for Search.Recents.Result.Item);
    v86 += v87;
    v5 += v87;
    if (__CFADD__(v88++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
}

void sub_484AC8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v43 = type metadata accessor for Search.Recents.Result.Item(0);
  __chkstk_darwin();
  v42 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v41 = &v33 - v9;
  v11 = *(v10 + 72);
  if (!v11)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_61;
  }

  v12 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_62;
  }

  v13 = (a2 - a1) / v11;
  v46 = a1;
  v45 = a4;
  if (v13 >= v12 / v11)
  {
    v15 = v12 / v11 * v11;
    if (a4 < a2 || a2 + v15 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v21 = a4 + v15;
    if (v15 >= 1)
    {
      v22 = -v11;
      v23 = a4 + v15;
      v37 = a1;
      v38 = a4;
      v36 = -v11;
      do
      {
        v34 = v21;
        v24 = a2;
        v25 = a2 + v22;
        v39 = v24;
        v40 = v25;
        while (1)
        {
          if (v24 <= a1)
          {
            v46 = v24;
            v44 = v34;
            goto LABEL_59;
          }

          v35 = v21;
          v27 = a3 + v22;
          v28 = v23 + v22;
          v29 = v41;
          sub_487D68(v28, v41, type metadata accessor for Search.Recents.Result.Item);
          v30 = v42;
          sub_487D68(v25, v42, type metadata accessor for Search.Recents.Result.Item);
          v31 = sub_AB3380();
          sub_486014(v30, type metadata accessor for Search.Recents.Result.Item);
          sub_486014(v29, type metadata accessor for Search.Recents.Result.Item);
          if (v31)
          {
            break;
          }

          v21 = v28;
          if (a3 < v23 || v27 >= v23)
          {
            a3 = v27;
            swift_arrayInitWithTakeFrontToBack();
            a1 = v37;
          }

          else
          {
            v32 = a3 == v23;
            a3 = v27;
            a1 = v37;
            if (!v32)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v23 = v28;
          v24 = v39;
          v26 = v28 > v38;
          v25 = v40;
          v22 = v36;
          if (!v26)
          {
            a2 = v39;
            goto LABEL_58;
          }
        }

        if (a3 < v39 || v27 >= v39)
        {
          a3 = v27;
          a2 = v40;
          swift_arrayInitWithTakeFrontToBack();
          v22 = v36;
          a1 = v37;
          v21 = v35;
        }

        else
        {
          v32 = a3 == v39;
          a3 = v27;
          a2 = v40;
          v22 = v36;
          a1 = v37;
          v21 = v35;
          if (!v32)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v23 > v38);
    }

LABEL_58:
    v46 = a2;
    v44 = v21;
  }

  else
  {
    v14 = v13 * v11;
    if (a4 < a1 || a1 + v14 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v40 = a4 + v14;
    v44 = a4 + v14;
    if (v14 >= 1 && a2 < a3)
    {
      do
      {
        v17 = a3;
        v18 = v41;
        sub_487D68(a2, v41, type metadata accessor for Search.Recents.Result.Item);
        v19 = v42;
        sub_487D68(a4, v42, type metadata accessor for Search.Recents.Result.Item);
        v20 = sub_AB3380();
        sub_486014(v19, type metadata accessor for Search.Recents.Result.Item);
        sub_486014(v18, type metadata accessor for Search.Recents.Result.Item);
        if (v20)
        {
          if (a1 < a2 || a1 >= a2 + v11)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 += v11;
            a3 = v17;
          }

          else
          {
            a3 = v17;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v11;
          }
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v11)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v17;
          }

          else
          {
            a3 = v17;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v45 = a4 + v11;
          a4 += v11;
        }

        a1 += v11;
        v46 = a1;
      }

      while (a4 < v40 && a2 < a3);
    }
  }

LABEL_59:
  sub_484FF8(&v46, &v45, &v44);
}

uint64_t sub_484FF8(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for Search.Recents.Result.Item(0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void sub_4850DC(uint64_t a1, void *a2)
{
  type metadata accessor for Search.Recents.Result.Item(0);
  __chkstk_darwin();
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = v25 - v7;
  if (a1 < 0)
  {
    goto LABEL_28;
  }

  if (a1)
  {
    v9 = a2[2];
    if (!v9)
    {
LABEL_24:

      return;
    }

    v10 = 0;
    v11 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v25[1] = a2;
    v12 = a2 + v11;
    v13 = *(v6 + 72);
    v14 = v9 - 1;
    v15 = _swiftEmptyArrayStorage;
    v16 = _swiftEmptyArrayStorage;
    v27 = v5;
    v28 = v11;
    v29 = v25 - v7;
    v26 = a1;
    while (1)
    {
      sub_487D68(v12, v8, type metadata accessor for Search.Recents.Result.Item);
      v20 = v16[2];
      if (v20 < a1)
      {
        break;
      }

      if (v10 >= v20)
      {
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
        return;
      }

      sub_487D68(v16 + v11 + v13 * v10, v5, type metadata accessor for Search.Recents.Result.Item);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v31 = v15;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_6D8F8(0, v15[2] + 1, 1);
        v5 = v27;
        v15 = v31;
      }

      v24 = v15[2];
      v23 = v15[3];
      if (v24 >= v23 >> 1)
      {
        sub_6D8F8((v23 > 1), v24 + 1, 1);
        v5 = v27;
        v15 = v31;
      }

      v15[2] = v24 + 1;
      v11 = v28;
      sub_489CC8(v5, v15 + v28 + v24 * v13, type metadata accessor for Search.Recents.Result.Item);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_163E1C(v16);
      }

      v8 = v29;
      if (v10 >= v16[2])
      {
        goto LABEL_27;
      }

      sub_48A0C8(v29, v16 + v11 + v13 * v10++);
      a1 = v26;
      if (v10 < v26)
      {
        goto LABEL_8;
      }

      if (!v14)
      {
        goto LABEL_24;
      }

      v10 = 0;
LABEL_9:
      --v14;
      v12 += v13;
    }

    v21 = swift_isUniquelyReferenced_nonNull_native();
    v30 = v16;
    if ((v21 & 1) == 0)
    {
      sub_6D8F8(0, v20 + 1, 1);
      v5 = v27;
      v16 = v30;
    }

    v18 = v16[2];
    v17 = v16[3];
    if (v18 >= v17 >> 1)
    {
      sub_6D8F8((v17 > 1), v18 + 1, 1);
      v5 = v27;
      v16 = v30;
    }

    v16[2] = v18 + 1;
    v11 = v28;
    v19 = v16 + v28 + v18 * v13;
    v8 = v29;
    sub_489CC8(v29, v19, type metadata accessor for Search.Recents.Result.Item);
LABEL_8:
    if (!v14)
    {
      goto LABEL_24;
    }

    goto LABEL_9;
  }
}

uint64_t sub_48541C@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || 1 << *(a3 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a3 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 36) == a2)
  {
    return sub_808B0(*(a3 + 56) + 32 * result, a4);
  }

LABEL_8:
  __break(1u);
  return result;
}

void _s16MusicApplication6SearchC13ConfigurationV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*a1)
  {
    if (!v5)
    {
      return;
    }

    sub_13C80(0, &qword_DFE5D8, MPMediaPickerConfiguration_ptr);
    v6 = v5;
    v7 = v4;
    v8 = sub_ABA790();

    if ((v8 & 1) == 0)
    {
      return;
    }
  }

  else if (v5)
  {
    return;
  }

  sub_13C80(0, &qword_DFA720, NSObject_ptr);
  if ((sub_ABA790() & 1) != 0 && *(a1 + 16) == *(a2 + 16))
  {
    v9 = *(a1 + 64);
    v10 = *(a2 + 64);

    sub_4C9E88(v9, v10);
  }
}

uint64_t _s16MusicApplication6SearchC21ResultSnapshotRequestV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*a1)
  {
    if (!v5)
    {
      goto LABEL_23;
    }

    sub_13C80(0, &qword_DFE5D8, MPMediaPickerConfiguration_ptr);
    v6 = v5;
    v7 = v4;
    v8 = sub_ABA790();

    if ((v8 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  else if (v5)
  {
    goto LABEL_23;
  }

  sub_13C80(0, &qword_DFA720, NSObject_ptr);
  if ((sub_ABA790() & 1) == 0)
  {
    goto LABEL_23;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    goto LABEL_23;
  }

  sub_4C9E88(*(a1 + 64), *(a2 + 64));
  if ((v9 & 1) == 0)
  {
    goto LABEL_23;
  }

  if (*(a1 + 80))
  {
    v10 = 0x7972617262696CLL;
  }

  else
  {
    v10 = 0x676F6C61746163;
  }

  if (*(a2 + 80))
  {
    v11 = 0x7972617262696CLL;
  }

  else
  {
    v11 = 0x676F6C61746163;
  }

  if (v10 == v11)
  {
    swift_bridgeObjectRelease_n();
    goto LABEL_18;
  }

  v12 = sub_ABB3C0();
  swift_bridgeObjectRelease_n();
  if (v12)
  {
LABEL_18:
    if ((*(a1 + 88) != *(a2 + 88) || *(a1 + 96) != *(a2 + 96)) && (sub_ABB3C0() & 1) == 0)
    {
      goto LABEL_23;
    }

    if (*(a1 + 104))
    {
      if (!*(a2 + 104))
      {
        goto LABEL_23;
      }
    }

    else if (*(a2 + 104))
    {
      goto LABEL_23;
    }

    sub_15F84(a1 + 112, v24, &unk_E00060, &qword_B094F0);
    v15 = v25;
    if (v25)
    {
      v16 = v26;
      __swift_project_boxed_opaque_existential_1(v24, v25);
      v17 = (*(v16 + 8))(v15, v16);
      v15 = v18;
      __swift_destroy_boxed_opaque_existential_0(v24);
    }

    else
    {
      sub_12E1C(v24, &unk_E00060, &qword_B094F0);
      v17 = 0;
    }

    sub_15F84(a2 + 112, v24, &unk_E00060, &qword_B094F0);
    v19 = v25;
    if (v25)
    {
      v20 = v26;
      __swift_project_boxed_opaque_existential_1(v24, v25);
      v21 = (*(v20 + 8))(v19, v20);
      v23 = v22;
      __swift_destroy_boxed_opaque_existential_0(v24);
      if (v15)
      {
        if (v23)
        {
          if (v17 == v21 && v15 == v23)
          {

            v13 = 1;
          }

          else
          {
            v13 = sub_ABB3C0();
          }

          goto LABEL_41;
        }

        goto LABEL_36;
      }

      if (v23)
      {
        v13 = 0;
        goto LABEL_41;
      }
    }

    else
    {
      sub_12E1C(v24, &unk_E00060, &qword_B094F0);
      if (v15)
      {
LABEL_36:
        v13 = 0;
LABEL_41:

        return v13 & 1;
      }
    }

    v13 = 1;
    return v13 & 1;
  }

LABEL_23:
  v13 = 0;
  return v13 & 1;
}

uint64_t _s16MusicApplication6SearchC31RecentlySearchedSnapshotRequestV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*a1)
  {
    if (!v5)
    {
      return 0;
    }

    sub_13C80(0, &qword_DFE5D8, MPMediaPickerConfiguration_ptr);
    v6 = v5;
    v7 = v4;
    v8 = sub_ABA790();

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  sub_13C80(0, &qword_DFA720, NSObject_ptr);
  if ((sub_ABA790() & 1) != 0 && *(a1 + 16) == *(a2 + 16))
  {
    sub_4C9E88(*(a1 + 64), *(a2 + 64));
    if (v9)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t _s16MusicApplication6SearchC4ItemO21__derived_enum_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v36 = type metadata accessor for Search.Recents.Result.Item(0);
  __chkstk_darwin();
  v37 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00040, &unk_AFA530);
  __chkstk_darwin();
  v6 = &v36 - v5;
  type metadata accessor for Search.Item(0);
  __chkstk_darwin();
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v36 - v9;
  __chkstk_darwin();
  v12 = (&v36 - v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E09970, &qword_B119C8);
  __chkstk_darwin();
  v14 = &v36 - v13;
  v16 = (&v36 + *(v15 + 56) - v13);
  sub_487D68(a1, &v36 - v13, type metadata accessor for Search.Item);
  sub_487D68(a2, v16, type metadata accessor for Search.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_487D68(v14, v12, type metadata accessor for Search.Item);
    v21 = *v12;
    v20 = v12[1];
    v23 = v12[2];
    v22 = v12[3];
    if (swift_getEnumCaseMultiPayload())
    {

LABEL_16:
      sub_12E1C(v14, &qword_E09970, &qword_B119C8);
LABEL_19:
      v19 = 0;
      return v19 & 1;
    }

    v32 = v16[2];
    v31 = v16[3];
    v33 = v21 == *v16 && v20 == v16[1];
    if (v33 || (sub_ABB3C0() & 1) != 0)
    {
      if (v23 == v32 && v22 == v31)
      {

        goto LABEL_33;
      }

      v35 = sub_ABB3C0();

      if (v35)
      {
        goto LABEL_33;
      }
    }

    else
    {
    }

LABEL_18:
    sub_486014(v14, type metadata accessor for Search.Item);
    goto LABEL_19;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_487D68(v14, v8, type metadata accessor for Search.Item);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      sub_486014(v8, type metadata accessor for Search.Recents.Result.Item);
      goto LABEL_16;
    }

    v24 = v37;
    sub_489CC8(v16, v37, type metadata accessor for Search.Recents.Result.Item);
    v25 = sub_13C80(0, &qword_DEDE20, MPModelObject_ptr);
    if (static SnapshotIdentifier.== infix(_:_:)(v8, v24, v25) & 1) != 0 && (sub_AB33E0())
    {
      if (v26 = *(v36 + 24), v27 = *&v8[v26], v28 = *&v8[v26 + 8], v29 = (v24 + v26), v27 == *v29) && v28 == v29[1] || (sub_ABB3C0())
      {
        sub_486014(v24, type metadata accessor for Search.Recents.Result.Item);
        sub_486014(v8, type metadata accessor for Search.Recents.Result.Item);
LABEL_33:
        sub_486014(v14, type metadata accessor for Search.Item);
        v19 = 1;
        return v19 & 1;
      }
    }

    sub_486014(v24, type metadata accessor for Search.Recents.Result.Item);
    sub_486014(v8, type metadata accessor for Search.Recents.Result.Item);
    goto LABEL_18;
  }

  sub_487D68(v14, v10, type metadata accessor for Search.Item);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_12E1C(v10, &unk_E00040, &unk_AFA530);
    goto LABEL_16;
  }

  sub_36B0C(v16, v6, &unk_E00040, &unk_AFA530);
  v18 = sub_13C80(0, &qword_DEDE20, MPModelObject_ptr);
  v19 = static SnapshotIdentifier.== infix(_:_:)(v10, v6, v18);
  sub_12E1C(v6, &unk_E00040, &unk_AFA530);
  sub_12E1C(v10, &unk_E00040, &unk_AFA530);
  sub_486014(v14, type metadata accessor for Search.Item);
  return v19 & 1;
}

uint64_t sub_485F14(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_485F94()
{

  return swift_deallocObject();
}

uint64_t sub_486014(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_486074()
{
  result = qword_E092C8;
  if (!qword_E092C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E092C8);
  }

  return result;
}

uint64_t sub_4860C8(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*a1)
  {
    if (!v5)
    {
      return 0;
    }

    sub_13C80(0, &qword_DFE5D8, MPMediaPickerConfiguration_ptr);
    v6 = v5;
    v7 = v4;
    v8 = sub_ABA790();

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  sub_13C80(0, &qword_DFA720, NSObject_ptr);
  if ((sub_ABA790() & 1) != 0 && *(a1 + 16) == *(a2 + 16))
  {
    sub_4C9E88(*(a1 + 64), *(a2 + 64));
    if (v9)
    {
      v10 = *(a1 + 80);
      v11 = *(a2 + 80);
      if (v10)
      {
        if (v11)
        {

          v12 = sub_4740B4(v10, v11);

          if (v12)
          {
            return 1;
          }
        }
      }

      else if (!v11)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_4861E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3 < 0)
  {
    v12 = 0x7972617262696CLL;
  }

  else
  {
    v12 = 0x676F6C61746163;
  }

  if (a6 < 0)
  {
    v13 = 0x7972617262696CLL;
  }

  else
  {
    v13 = 0x676F6C61746163;
  }

  if (v12 == v13)
  {
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v14 = sub_ABB3C0();
    swift_bridgeObjectRelease_n();
    v15 = 0;
    if ((v14 & 1) == 0)
    {
      return v15 & 1;
    }
  }

  v16 = a3 & 0x7FFFFFFFFFFFFFFFLL;

  v17 = a3 < 0;
  if (a3 < 0)
  {
    v18 = &_s7LibraryVN;
  }

  else
  {
    v18 = &_s7CatalogVN;
  }

  if (v17)
  {
    v19 = &off_D17228;
  }

  else
  {
    v19 = &off_D00048;
  }

  v34 = v18;
  v35 = v19;
  v31 = a1;
  v32 = a2;
  v33 = v16;
  __swift_project_boxed_opaque_existential_1(&v31, v18);
  v20 = (v19[1])(v18, v19);
  v22 = v21;
  __swift_destroy_boxed_opaque_existential_0(&v31);
  v23 = a6 & 0x7FFFFFFFFFFFFFFFLL;

  v24 = a6 < 0;
  if (a6 < 0)
  {
    v25 = &off_D17228;
  }

  else
  {
    v25 = &off_D00048;
  }

  v35 = v25;
  if (v24)
  {
    v26 = &_s7LibraryVN;
  }

  else
  {
    v26 = &_s7CatalogVN;
  }

  v31 = a4;
  v32 = a5;
  v33 = v23;
  v34 = v26;
  __swift_project_boxed_opaque_existential_1(&v31, v26);
  v27 = (v25[1])(v26, v25);
  v29 = v28;
  __swift_destroy_boxed_opaque_existential_0(&v31);
  if (v20 == v27 && v22 == v29)
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_ABB3C0();
  }

  return v15 & 1;
}

_BYTE *sub_486410(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  __chkstk_darwin();
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v48 = &v36 - v9;
  v37 = v10;
  __chkstk_darwin();
  v12 = &v36 - v11;
  if (sub_AB9800())
  {
    sub_ABAD60();
    v13 = sub_ABAD50();
  }

  else
  {
    v13 = &_swiftEmptySetSingleton;
  }

  v41 = sub_AB9860();
  if (!v41)
  {
    return v13;
  }

  v14 = 0;
  v46 = (v6 + 16);
  v47 = v13 + 56;
  v43 = v6 + 32;
  v45 = (v6 + 8);
  v38 = v6;
  v39 = a1;
  v40 = v12;
  while (1)
  {
    v15 = sub_AB97E0();
    sub_AB9790();
    if (v15)
    {
      v16 = *(v6 + 16);
      v16(v12, (a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14), a2);
      v17 = __OFADD__(v14, 1);
      v18 = v14 + 1;
      if (v17)
      {
        goto LABEL_20;
      }
    }

    else
    {
      result = sub_ABAE10();
      if (v37 != 8)
      {
        goto LABEL_23;
      }

      v49 = result;
      v16 = *v46;
      (*v46)(v12, &v49, a2);
      swift_unknownObjectRelease();
      v17 = __OFADD__(v14, 1);
      v18 = v14 + 1;
      if (v17)
      {
LABEL_20:
        __break(1u);
        return v13;
      }
    }

    v44 = v18;
    v42 = *(v6 + 32);
    v42(v48, v12, a2);
    v19 = sub_AB90D0();
    v20 = v13;
    v21 = -1 << v13[32];
    v22 = v19 & ~v21;
    v23 = v22 >> 6;
    v24 = *&v47[8 * (v22 >> 6)];
    v25 = 1 << v22;
    v26 = *(v6 + 72);
    if (((1 << v22) & v24) != 0)
    {
      v27 = ~v21;
      do
      {
        v16(v8, (v20[6] + v26 * v22), a2);
        v28 = a3;
        v29 = sub_AB91C0();
        v30 = *v45;
        (*v45)(v8, a2);
        if (v29)
        {
          v30(v48, a2);
          a3 = v28;
          v6 = v38;
          a1 = v39;
          v13 = v20;
          goto LABEL_7;
        }

        v22 = (v22 + 1) & v27;
        v23 = v22 >> 6;
        v24 = *&v47[8 * (v22 >> 6)];
        v25 = 1 << v22;
        a3 = v28;
      }

      while (((1 << v22) & v24) != 0);
      v6 = v38;
      a1 = v39;
    }

    v31 = v48;
    *&v47[8 * v23] = v25 | v24;
    v32 = v20[6] + v26 * v22;
    v13 = v20;
    result = (v42)(v32, v31, a2);
    v34 = v20[2];
    v17 = __OFADD__(v34, 1);
    v35 = v34 + 1;
    if (v17)
    {
      break;
    }

    v20[2] = v35;
LABEL_7:
    v12 = v40;
    v14 = v44;
    if (v44 == v41)
    {
      return v13;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

void sub_4867CC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = a1;
    v33 = _swiftEmptyArrayStorage;
    sub_6D7C0(0, v3, 0);
    v5 = _swiftEmptyArrayStorage;
    v28 = v4 + 56;
    v6 = sub_ABABC0();
    v7 = 0;
    v29 = *(v4 + 36);
    v25 = v4 + 64;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v4 + 32))
    {
      v10 = v6 >> 6;
      if ((*(v28 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_24;
      }

      if (v29 != *(v4 + 36))
      {
        goto LABEL_25;
      }

      v27 = v7;
      v11 = v4;
      v30 = *(*(v4 + 48) + v6);
      sub_4773AC(&v30, a2, &v31);
      if (v2)
      {
        goto LABEL_29;
      }

      v12 = v31;
      v13 = v32;
      v33 = v5;
      v15 = v5[2];
      v14 = v5[3];
      if (v15 >= v14 >> 1)
      {
        v24 = v31;
        sub_6D7C0((v14 > 1), v15 + 1, 1);
        v12 = v24;
        v5 = v33;
      }

      v5[2] = v15 + 1;
      v16 = &v5[3 * v15];
      *(v16 + 2) = v12;
      v16[6] = v13;
      v8 = 1 << *(v11 + 32);
      if (v6 >= v8)
      {
        goto LABEL_26;
      }

      v17 = *(v28 + 8 * v10);
      if ((v17 & (1 << v6)) == 0)
      {
        goto LABEL_27;
      }

      v4 = v11;
      if (v29 != *(v11 + 36))
      {
        goto LABEL_28;
      }

      v18 = v17 & (-2 << (v6 & 0x3F));
      if (v18)
      {
        v8 = __clz(__rbit64(v18)) | v6 & 0x7FFFFFFFFFFFFFC0;
        v9 = v27;
      }

      else
      {
        v19 = v10 << 6;
        v20 = v10 + 1;
        v21 = (v25 + 8 * v10);
        while (v20 < (v8 + 63) >> 6)
        {
          v23 = *v21++;
          v22 = v23;
          v19 += 64;
          ++v20;
          if (v23)
          {
            sub_E1798(v6, v29, 0);
            v8 = __clz(__rbit64(v22)) + v19;
            goto LABEL_21;
          }
        }

        sub_E1798(v6, v29, 0);
LABEL_21:
        v9 = v27;
      }

      v7 = v9 + 1;
      v6 = v8;
      v2 = 0;
      if (v7 == v3)
      {
        return;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:

    __break(1u);
  }
}

uint64_t sub_486A50(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  sub_ABB5C0();
  sub_ABB5D0(0);
  v2 = sub_ABB610() & ~(-1 << *(a1 + 32));
  return (*(a1 + ((v2 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v2) & 1;
}

void sub_486AD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_AB2B00();
  swift_allocObject();
  sub_AB2AF0();
  *&v16 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E098F8, &unk_B11980);
  sub_48BBDC(&qword_E09900, &qword_E09908, &protocol conformance descriptor for Search.Recents.Item<A>, &protocol conformance descriptor for <> Set<A>);
  v7 = sub_AB2AE0();
  v9 = v8;

  if (!v3)
  {
    LOBYTE(v18) = 1;
    v10 = sub_35BCD8();
    v11 = sub_36A48();
    NSUserDefaults.subscript.getter(&v16);
    if (v17)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E098E8, &qword_B11978);
      if (swift_dynamicCast())
      {
        v12 = v18;
LABEL_7:
        sub_90090(v7, v9);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v16 = v12;
        sub_94300(v7, v9, a2, a3, isUniquelyReferenced_nonNull_native);
        v14 = v16;
        v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E098E8, &qword_B11978);
        *&v16 = v14;
        LOBYTE(v18) = 1;
        NSUserDefaults.subscript.setter(&v16, &v18, &_s9SearchKeyON, v10, v11, v15);
        sub_466B8(v7, v9);
        return;
      }
    }

    else
    {
      sub_12E1C(&v16, &unk_DE8E40, &unk_AF8050);
    }

    v12 = sub_98EDC(_swiftEmptyArrayStorage);
    goto LABEL_7;
  }
}

void sub_486D08(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, char *a5, unint64_t a6, void *a7)
{
  v112 = a7;
  v117 = a3;
  v118 = a4;
  type metadata accessor for MetricsEvent.Page(0);
  __chkstk_darwin();
  v12 = (&v98 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0, &qword_AFC930);
  __chkstk_darwin();
  v116 = &v98 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v98 - v14;
  __chkstk_darwin();
  v17 = &v98 - v16;
  __chkstk_darwin();
  v114 = &v98 - v18;
  __chkstk_darwin();
  v115 = &v98 - v19;
  type metadata accessor for MetricsEvent.Click(0);
  __chkstk_darwin();
  v113 = &v98 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v22 = &v98 - v21;
  type metadata accessor for Search.Event(0);
  __chkstk_darwin();
  v24 = &v98 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_487D68(a1, v24, type metadata accessor for Search.Event);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v31 = *a2;
    v32 = a2[1];
    v33 = a2[2];
    v34 = a2[3];
    v35 = type metadata accessor for MetricsPageProperties(0);
    sub_15F84(a2 + *(v35 + 24), v17, &unk_DF2AE0, &qword_AFC930);
    MetricsEvent.Page.init(pageIdentifier:pageType:pageURL:pageDetails:searchTerm:pageDisplayType:extRefUrl:attenuationAvailable:)(v31, v32, v33, v34, v17, *(a2 + *(v35 + 28)), v117, v118, v12, 1, 0, 0, 2);

    v36 = MetricsReportingController.shared.unsafeMutableAddressor();
    v37 = *(&stru_68.reloff + (swift_isaMask & **v36));
    v38 = *v36;
    v37(v12, 0, 0, 0, 0, 0);
    sub_486014(v12, type metadata accessor for MetricsEvent.Page);

LABEL_68:
    sub_486014(v24, type metadata accessor for Search.Event);
    return;
  }

  if (EnumCaseMultiPayload == 4)
  {

    v26 = *MetricsReportingController.shared.unsafeMutableAddressor();
    if (a5 == &dword_0 + 1)
    {
      v27 = 0;
    }

    else
    {
      v27 = a5;
    }

    if (a5 == &dword_0 + 1)
    {
      v28 = 0;
    }

    else
    {
      v28 = a6;
    }

    v120 = v27;
    v29 = v26;
    sub_489C80(a5, a6);
    v30 = sub_4831AC();
    if (v30)
    {
      if (v27)
      {
        sub_198A4(v30);
      }

      else
      {
        v120 = v30;
      }
    }

    v44 = sub_481AD4();
    v113 = v45;
    LODWORD(v111) = sub_482220();
    v110 = sub_482604();
    v46 = sub_AB31C0();
    v47 = *(*(v46 - 8) + 56);
    v47(v115, 1, 1, v46);
    v109 = v120;

    sub_482930();
    v108 = v48;
    v49 = sub_482A2C();
    v106 = v51;
    v107 = v50;
    v105 = v52;
    v53 = a2[1];
    v104 = *a2;
    v54 = a2[3];
    v102 = a2[2];
    v116 = v54;
    v47(v114, 1, 1, v46);
    v103 = v53;
    if (!v28)
    {
      v28 = v112;
      if (!v112)
      {

        v55 = v116;

        v63 = v109;

        v58 = 0;
        goto LABEL_63;
      }
    }

    v55 = v116;
    if (v28 >> 62)
    {
      v56 = sub_ABB060();
      if (v56)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v56 = *(&dword_10 + (v28 & 0xFFFFFFFFFFFFFF8));
      if (v56)
      {
LABEL_28:
        v119 = _swiftEmptyArrayStorage;

        sub_6D410(0, v56 & ~(v56 >> 63), 0);
        if ((v56 & 0x8000000000000000) == 0)
        {
          v100 = v49;
          v101 = v44;
          v112 = v29;
          v58 = v119;
          if ((v28 & 0xC000000000000001) != 0)
          {
            for (i = 0; i != v56; ++i)
            {
              v60 = *(sub_35FC58(i, v28, v57) + OBJC_IVAR____TtC11MusicJSCore12JSImpression_fields);

              swift_unknownObjectRelease();
              v119 = v58;
              v62 = v58[2];
              v61 = v58[3];
              if (v62 >= v61 >> 1)
              {
                sub_6D410((v61 > 1), v62 + 1, 1);
                v58 = v119;
              }

              v58[2] = v62 + 1;
              v58[v62 + 4] = v60;
            }

            v63 = v109;

            v29 = v112;
            v49 = v100;
            v44 = v101;
          }

          else
          {
            v84 = 32;
            do
            {
              v85 = *(*(v28 + v84) + OBJC_IVAR____TtC11MusicJSCore12JSImpression_fields);
              v119 = v58;
              v86 = v58[2];
              v87 = v58[3];

              if (v86 >= v87 >> 1)
              {
                sub_6D410((v87 > 1), v86 + 1, 1);
                v58 = v119;
              }

              v58[2] = v86 + 1;
              v58[v86 + 4] = v85;
              v84 += 8;
              --v56;
            }

            while (v56);
            v63 = v109;

            v29 = v112;
            v49 = v100;
            v44 = v101;
            v55 = v116;
          }

          goto LABEL_63;
        }

        __break(1u);
        goto LABEL_70;
      }
    }

    v63 = v109;

    v58 = _swiftEmptyArrayStorage;
LABEL_63:
    *(&v96 + 1) = v107;
    *&v96 = v49;
    MetricsEvent.Click.init(targetIdentifier:targetType:actionType:actionURL:locations:actionContext:actionDetails:pageIdentifier:pageType:pageURL:pageDetails:pageDisplayType:attenuationAvailable:snapshotImpressions:searchTerm:)(v44, v113, v111, v110, v115, v63, 0, v108, v22, v96, v106, v105, v104, v103, v102, v55, v114, 0, 1, 2, v58, v117, v118);
    v93 = *(&stru_68.reserved2 + (swift_isaMask & *v29));

    v93(v22, 0, 0);
    sub_486014(v22, type metadata accessor for MetricsEvent.Click);

    return;
  }

  v115 = v15;
  v39 = *MetricsReportingController.shared.unsafeMutableAddressor();
  if (a5 == &dword_0 + 1)
  {
    v40 = 0;
  }

  else
  {
    v40 = a5;
  }

  if (a5 == &dword_0 + 1)
  {
    v41 = 0;
  }

  else
  {
    v41 = a6;
  }

  v120 = v40;
  sub_489C80(a5, a6);
  v42 = v39;
  v43 = sub_4831AC();
  if (v43)
  {
    if (v40)
    {
      sub_198A4(v43);
    }

    else
    {
      v120 = v43;
    }
  }

  v64 = sub_481AD4();
  v111 = v65;
  v110 = sub_482220();
  LODWORD(v109) = sub_482604();
  v66 = sub_AB31C0();
  v67 = *(*(v66 - 8) + 56);
  v67(v115, 1, 1, v66);
  v114 = v120;

  sub_482930();
  v108 = v68;
  v69 = sub_482A2C();
  v106 = v71;
  v107 = v70;
  v105 = v72;
  v73 = a2[1];
  v104 = *a2;
  v74 = a2[2];
  v75 = a2[3];
  v102 = v74;
  v67(v116, 1, 1, v66);
  v103 = v73;
  if (!v41)
  {
    v41 = v112;
    if (!v112)
    {

      v79 = 0;
      v92 = v117;
      v76 = v115;
LABEL_67:
      v94 = v113;
      *(&v97 + 1) = v107;
      *&v97 = v69;
      MetricsEvent.Click.init(targetIdentifier:targetType:actionType:actionURL:locations:actionContext:actionDetails:pageIdentifier:pageType:pageURL:pageDetails:pageDisplayType:attenuationAvailable:snapshotImpressions:searchTerm:)(v64, v111, v110, v109, v76, v114, 0, v108, v113, v97, v106, v105, v104, v103, v102, v75, v116, 0, 1, 2, v79, v92, v118);
      v95 = *&stru_B8.sectname[swift_isaMask & *v42];

      v95(v94, 0, 0, 0, 0, 0);
      sub_486014(v94, type metadata accessor for MetricsEvent.Click);

      goto LABEL_68;
    }
  }

  v76 = v115;
  if (!(v41 >> 62))
  {
    v77 = *(&dword_10 + (v41 & 0xFFFFFFFFFFFFFF8));
    if (v77)
    {
      goto LABEL_41;
    }

LABEL_65:

    v79 = _swiftEmptyArrayStorage;
LABEL_66:
    v92 = v117;
    goto LABEL_67;
  }

  v77 = sub_ABB060();
  if (!v77)
  {
    goto LABEL_65;
  }

LABEL_41:
  v119 = _swiftEmptyArrayStorage;

  v112 = v75;

  sub_6D410(0, v77 & ~(v77 >> 63), 0);
  if ((v77 & 0x8000000000000000) == 0)
  {
    v99 = v69;
    v100 = v64;
    v101 = v42;
    v79 = v119;
    if ((v41 & 0xC000000000000001) != 0)
    {
      for (j = 0; j != v77; ++j)
      {
        v81 = *(sub_35FC58(j, v41, v78) + OBJC_IVAR____TtC11MusicJSCore12JSImpression_fields);

        swift_unknownObjectRelease();
        v119 = v79;
        v83 = v79[2];
        v82 = v79[3];
        if (v83 >= v82 >> 1)
        {
          sub_6D410((v82 > 1), v83 + 1, 1);
          v79 = v119;
        }

        v79[2] = v83 + 1;
        v79[v83 + 4] = v81;
      }
    }

    else
    {
      v88 = 32;
      do
      {
        v89 = *(*(v41 + v88) + OBJC_IVAR____TtC11MusicJSCore12JSImpression_fields);
        v119 = v79;
        v91 = v79[2];
        v90 = v79[3];

        if (v91 >= v90 >> 1)
        {
          sub_6D410((v90 > 1), v91 + 1, 1);
          v79 = v119;
        }

        v79[2] = v91 + 1;
        v79[v91 + 4] = v89;
        v88 += 8;
        --v77;
      }

      while (v77);

      v76 = v115;
    }

    v64 = v100;
    v42 = v101;
    v69 = v99;
    v75 = v112;
    goto LABEL_66;
  }

LABEL_70:
  __break(1u);
}

double sub_4878E4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void, void, void), uint64_t a5)
{
  v10 = *(a2 + 88);
  v9 = *(a2 + 96);
  v11 = *(a2 + 104);
  v13 = *(a2 + 8);
  v12 = *(a2 + 16);
  sub_15F84(a2 + 24, &v33, &qword_DF4F58, &unk_B0EB60);
  v29[0] = v10;
  v29[1] = v9;
  v30 = v11;
  v31 = v13;
  v32 = v12;
  sub_1D3210(v29, v27);

  v14 = v13;
  RequestResponse.Controller.request.setter(v27);
  sub_30E3FC(a2, v27);
  sub_30E3FC(v27, v26);
  v15 = swift_allocObject();
  v16 = v27[7];
  *(v15 + 120) = v27[6];
  *(v15 + 136) = v16;
  *(v15 + 152) = v27[8];
  v17 = v27[3];
  *(v15 + 56) = v27[2];
  *(v15 + 72) = v17;
  v18 = v27[5];
  *(v15 + 88) = v27[4];
  *(v15 + 104) = v18;
  v19 = v27[1];
  *(v15 + 24) = v27[0];
  *(v15 + 16) = a3;
  v20 = v28;
  *(v15 + 40) = v19;
  *(v15 + 168) = v20;
  *(v15 + 176) = a4;
  *(v15 + 184) = a5;
  swift_retain_n();
  swift_retain_n();
  RequestResponse.Controller.revision.getter();
  v21 = RequestResponse.Revision.isValid.getter();

  if (v21)
  {
    v22 = RequestResponse.Controller.revision.getter();
    sub_47A910(a1, v22, a3, v26, a4, a5);

    sub_30E458(v26);
  }

  else
  {

    sub_30E458(v26);

    v23 = swift_allocObject();
    *(v23 + 16) = sub_489DC0;
    *(v23 + 24) = v15;

    RequestResponse.Controller.setNeedsReload(_:)(sub_489DD0, v23);
  }

  sub_489DF8(v29);

  return result;
}

double sub_487B1C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void, void, void), uint64_t a5)
{
  v10 = *(a2 + 88);
  v9 = *(a2 + 96);
  v11 = *(a2 + 104);
  v13 = *(a2 + 8);
  v12 = *(a2 + 16);
  sub_15F84(a2 + 24, &v33, &qword_DF4F58, &unk_B0EB60);
  v29[0] = v10;
  v29[1] = v9;
  v30 = v11;
  v31 = v13;
  v32 = v12;
  sub_489E6C(v29, v27);

  v14 = v13;
  RequestResponse.Controller.request.setter(v27);
  sub_30E3FC(a2, v27);
  sub_30E3FC(v27, v26);
  v15 = swift_allocObject();
  v16 = v27[7];
  *(v15 + 120) = v27[6];
  *(v15 + 136) = v16;
  *(v15 + 152) = v27[8];
  v17 = v27[3];
  *(v15 + 56) = v27[2];
  *(v15 + 72) = v17;
  v18 = v27[5];
  *(v15 + 88) = v27[4];
  *(v15 + 104) = v18;
  v19 = v27[1];
  *(v15 + 24) = v27[0];
  *(v15 + 16) = a3;
  v20 = v28;
  *(v15 + 40) = v19;
  *(v15 + 168) = v20;
  *(v15 + 176) = a4;
  *(v15 + 184) = a5;
  swift_retain_n();
  swift_retain_n();
  RequestResponse.Controller.revision.getter();
  v21 = RequestResponse.Revision.isValid.getter();

  if (v21)
  {
    v22 = RequestResponse.Controller.revision.getter();
    sub_47A32C(a1, v22, a3, v26, a4, a5);

    sub_30E458(v26);
  }

  else
  {

    sub_30E458(v26);

    v23 = swift_allocObject();
    *(v23 + 16) = sub_489F50;
    *(v23 + 24) = v15;

    RequestResponse.Controller.setNeedsReload(_:)(sub_48C62C, v23);
  }

  sub_489F60(v29);

  return result;
}

uint64_t sub_487D54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((~a3 & 0xF000000000000007) != 0)
  {
    return sub_2BB90(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_487D68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_487DE8()
{
  result = qword_E092D0;
  if (!qword_E092D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E092D0);
  }

  return result;
}

unint64_t sub_487E54()
{
  result = qword_E092E0;
  if (!qword_E092E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E092E0);
  }

  return result;
}

unint64_t sub_487EAC()
{
  result = qword_E092F0;
  if (!qword_E092F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E092F0);
  }

  return result;
}

unint64_t sub_487F04()
{
  result = qword_E092F8;
  if (!qword_E092F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E092F8);
  }

  return result;
}

unint64_t sub_487F5C()
{
  result = qword_E09300;
  if (!qword_E09300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E09300);
  }

  return result;
}

unint64_t sub_487FB4()
{
  result = qword_E09308;
  if (!qword_E09308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E09308);
  }

  return result;
}

unint64_t sub_488050(uint64_t a1)
{
  result = sub_488078();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_488078()
{
  result = qword_E09348;
  if (!qword_E09348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E09348);
  }

  return result;
}

unint64_t sub_4880CC(uint64_t a1)
{
  result = sub_4880F4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_4880F4()
{
  result = qword_E09380;
  if (!qword_E09380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E09380);
  }

  return result;
}

double sub_4881AC@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + 64);

  return result;
}

uint64_t sub_4881CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_48828C(uint64_t a1)
{
  sub_488794(319, &unk_E09550, &qword_DEDE20, MPModelObject_ptr, type metadata accessor for SnapshotIdentifier);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Search.Recents.Result.Item(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_48835C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFFF0, &unk_B02810);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_488448(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFFF0, &unk_B02810);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

void sub_488510(uint64_t a1)
{
  sub_488678(319);
  if (v1 <= 0x3F)
  {
    sub_48C430(319, &qword_DF0B70, &type metadata for String);
    if (v2 <= 0x3F)
    {
      sub_48C430(319, &qword_E095F0, &type metadata for SearchRequestVariant);
      if (v3 <= 0x3F)
      {
        sub_48C430(319, &qword_E095F8, &type metadata for Search.ResultContext.ScopingContext);
        if (v4 <= 0x3F)
        {
          sub_488730(319);
          if (v5 <= 0x3F)
          {
            sub_488794(319, &qword_E09608, &qword_E09610, ICURLPerformanceMetrics_ptr, &type metadata accessor for Optional);
            if (v6 <= 0x3F)
            {
              sub_48C430(319, &unk_E09618, &type metadata for Search.ResultContext.Sourcing);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_488678(uint64_t a1)
{
  if (!qword_E095E8)
  {
    type metadata accessor for Search.Item(255);
    sub_1D30D0();
    sub_485F14(&qword_DF4FB0, type metadata accessor for Search.Item, &protocol conformance descriptor for Search.Item);
    v1 = sub_AB5120();
    if (!v2)
    {
      atomic_store(v1, &qword_E095E8);
    }
  }
}

void sub_488730(uint64_t a1)
{
  if (!qword_E09600)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_E00000, &qword_B05300);
    v1 = sub_ABA9C0();
    if (!v2)
    {
      atomic_store(v1, &qword_E09600);
    }
  }
}

void sub_488794(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_13C80(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_16MusicApplication17SearchResultScope_pSg_0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_488834(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
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

uint64_t sub_48887C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 152) = 1;
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

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_488900(uint64_t a1)
{
  result = sub_13C80(319, &unk_DE8180, MPIdentifierSet_ptr);
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = sub_AB3430();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_4889B0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_AB3430();
  v9 = *(v8 - 8);
  v10 = *(v6 + 80);
  v11 = *(v6 + 64);
  v12 = *(v9 + 80);
  if (v7 <= *(v9 + 84))
  {
    v13 = *(v9 + 84);
  }

  else
  {
    v13 = v7;
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v14)
  {
    goto LABEL_31;
  }

  v15 = ((v11 + v12 + ((v10 + 8) & ~v10)) & ~v12) + *(*(v8 - 8) + 64);
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v19 = ((a2 - v14 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v19))
    {
      v17 = *(a1 + v15);
      if (!v17)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 > 0xFF)
    {
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 < 2)
    {
LABEL_31:
      if ((v13 & 0x80000000) != 0)
      {
        v24 = (a1 + v10 + 8) & ~v10;
        if (v7 == v14)
        {
          v25 = *(v6 + 48);

          return v25(v24, v7, v5);
        }

        else
        {
          v26 = *(v9 + 48);
          v27 = (v24 + v11 + v12) & ~v12;

          return v26(v27);
        }
      }

      else
      {
        v23 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v23) = -1;
        }

        return (v23 + 1);
      }
    }
  }

  v17 = *(a1 + v15);
  if (!*(a1 + v15))
  {
    goto LABEL_31;
  }

LABEL_18:
  v20 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v20 = 0;
  }

  if (v15)
  {
    if (v15 <= 3)
    {
      v21 = v15;
    }

    else
    {
      v21 = 4;
    }

    if (v21 > 2)
    {
      if (v21 == 3)
      {
        v22 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v22 = *a1;
      }
    }

    else if (v21 == 1)
    {
      v22 = *a1;
    }

    else
    {
      v22 = *a1;
    }
  }

  else
  {
    v22 = 0;
  }

  return v14 + (v22 | v20) + 1;
}

void sub_488C58(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v29 = v8;
  v9 = *(v8 + 84);
  v10 = sub_AB3430();
  v11 = *(v10 - 8);
  v12 = *(v8 + 80);
  v13 = *(v8 + 64);
  v14 = *(v11 + 80);
  if (v9 <= *(v11 + 84))
  {
    v15 = *(v11 + 84);
  }

  else
  {
    v15 = v9;
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v15;
  }

  v17 = ((v13 + v14 + ((v12 + 8) & ~v12)) & ~v14) + *(*(v10 - 8) + 64);
  if (a3 <= v16)
  {
    v18 = 0;
  }

  else if (v17 <= 3)
  {
    v21 = ((a3 - v16 + ~(-1 << (8 * v17))) >> (8 * v17)) + 1;
    if (HIWORD(v21))
    {
      v18 = 4;
    }

    else
    {
      if (v21 < 0x100)
      {
        v22 = 1;
      }

      else
      {
        v22 = 2;
      }

      if (v21 >= 2)
      {
        v18 = v22;
      }

      else
      {
        v18 = 0;
      }
    }
  }

  else
  {
    v18 = 1;
  }

  if (v16 < a2)
  {
    v19 = ~v16 + a2;
    if (v17 < 4)
    {
      v20 = (v19 >> (8 * v17)) + 1;
      if (v17)
      {
        v23 = v19 & ~(-1 << (8 * v17));
        bzero(a1, v17);
        if (v17 != 3)
        {
          if (v17 == 2)
          {
            *a1 = v23;
            if (v18 > 1)
            {
LABEL_54:
              if (v18 == 2)
              {
                *&a1[v17] = v20;
              }

              else
              {
                *&a1[v17] = v20;
              }

              return;
            }
          }

          else
          {
            *a1 = v19;
            if (v18 > 1)
            {
              goto LABEL_54;
            }
          }

          goto LABEL_51;
        }

        *a1 = v23;
        a1[2] = BYTE2(v23);
      }

      if (v18 > 1)
      {
        goto LABEL_54;
      }
    }

    else
    {
      bzero(a1, v17);
      *a1 = v19;
      v20 = 1;
      if (v18 > 1)
      {
        goto LABEL_54;
      }
    }

LABEL_51:
    if (v18)
    {
      a1[v17] = v20;
    }

    return;
  }

  if (v18 > 1)
  {
    if (v18 != 2)
    {
      *&a1[v17] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *&a1[v17] = 0;
  }

  else if (v18)
  {
    a1[v17] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    return;
  }

LABEL_34:
  if ((v15 & 0x80000000) != 0)
  {
    v25 = &a1[v12 + 8] & ~v12;
    if (v9 == v16)
    {
      v26 = *(v29 + 56);

      v26(v25, a2, v9, v7);
    }

    else
    {
      v27 = *(v11 + 56);
      v28 = (v25 + v13 + v14) & ~v14;

      v27(v28, a2);
    }
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v24 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v24 = (a2 - 1);
    }

    *a1 = v24;
  }
}

uint64_t sub_488FB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00040, &unk_AFA530);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_AB3430();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_4890E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00040, &unk_AFA530);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_AB3430();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_489200(uint64_t a1)
{
  sub_488794(319, &unk_E09550, &qword_DEDE20, MPModelObject_ptr, type metadata accessor for SnapshotIdentifier);
  if (v1 <= 0x3F)
  {
    sub_AB3430();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_4892D0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3F && *(a1 + 24))
  {
    return (*a1 + 63);
  }

  v3 = (((*(a1 + 16) >> 57) >> 5) & 1 | (2 * ((*(a1 + 16) >> 57) & 0x18 | *(a1 + 16) & 7))) ^ 0x3F;
  if (v3 >= 0x3E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_489328(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3E)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 63;
    if (a3 >= 0x3F)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3F)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x1F | (32 * (-a2 & 0x3F));
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = (v3 | (v3 << 57)) & 0x7000000000000007;
    }
  }

  return result;
}

uint64_t sub_4893C0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 24))
  {
    return (*a1 + 127);
  }

  v3 = (((*(a1 + 16) >> 57) >> 6) | (2 * ((*(a1 + 16) >> 57) & 0x38 | *(a1 + 16) & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_48941C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Search.SnapshotError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v2 = a2 + 2;
  if (a2 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 2;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 2;
  v9 = v7 - 2;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_489544(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 2)
  {
    return v1 - 1;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_489558(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t sub_489578(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_4895C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_489668()
{
  result = qword_E09878;
  if (!qword_E09878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E09878);
  }

  return result;
}

unint64_t sub_4896C0()
{
  result = qword_E09880;
  if (!qword_E09880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E09880);
  }

  return result;
}

unint64_t sub_489718()
{
  result = qword_E09888;
  if (!qword_E09888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E09888);
  }

  return result;
}

unint64_t sub_48976C(uint64_t a1)
{
  result = sub_489794();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_489794()
{
  result = qword_E098C0;
  if (!qword_E098C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E098C0);
  }

  return result;
}

unint64_t sub_489824()
{
  result = qword_E098C8;
  if (!qword_E098C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E098C8);
  }

  return result;
}

void sub_4898B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_AB2B00();
  swift_allocObject();
  sub_AB2AF0();
  *&v16 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E098D0, &unk_B11968);
  sub_489AE8(&qword_E098D8, &qword_E098E0, &protocol conformance descriptor for Search.Recents.Item<A>, &protocol conformance descriptor for <> Set<A>);
  v7 = sub_AB2AE0();
  v9 = v8;

  if (!v3)
  {
    LOBYTE(v18) = 1;
    v10 = sub_35BCD8();
    v11 = sub_36A48();
    NSUserDefaults.subscript.getter(&v16);
    if (v17)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E098E8, &qword_B11978);
      if (swift_dynamicCast())
      {
        v12 = v18;
LABEL_7:
        sub_90090(v7, v9);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v16 = v12;
        sub_94300(v7, v9, a2, a3, isUniquelyReferenced_nonNull_native);
        v14 = v16;
        v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E098E8, &qword_B11978);
        *&v16 = v14;
        LOBYTE(v18) = 1;
        NSUserDefaults.subscript.setter(&v16, &v18, &_s9SearchKeyON, v10, v11, v15);
        sub_466B8(v7, v9);
        return;
      }
    }

    else
    {
      sub_12E1C(&v16, &unk_DE8E40, &unk_AF8050);
    }

    v12 = sub_98EDC(_swiftEmptyArrayStorage);
    goto LABEL_7;
  }
}

uint64_t sub_489AE8(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E098D0, &unk_B11968);
    sub_36A00(a2, &unk_DFEF20, &qword_AFA570, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_489B80()
{
  result = qword_E098F0;
  if (!qword_E098F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E098F0);
  }

  return result;
}

unint64_t sub_489BD4()
{
  result = qword_E09910;
  if (!qword_E09910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E09910);
  }

  return result;
}

uint64_t sub_489C28()
{

  return swift_deallocObject();
}

double sub_489C80(uint64_t a1, uint64_t a2)
{
  if (a1 != 1)
  {
  }

  return result;
}

uint64_t sub_489CC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_489D68()
{
  result = qword_E09930;
  if (!qword_E09930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E09930);
  }

  return result;
}

uint64_t objectdestroy_150Tm()
{

  if (*(v0 + 72))
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 48));
  }

  if (*(v0 + 160))
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 136));
  }

  return swift_deallocObject();
}

uint64_t sub_489FB4()
{

  return swift_deallocObject();
}

uint64_t sub_48A010()
{

  return swift_deallocObject();
}

double block_copy_helper_148(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t objectdestroy_156Tm()
{

  return swift_deallocObject();
}

uint64_t sub_48A0C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Search.Recents.Result.Item(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_48A12C(uint64_t a1, uint64_t a2)
{
  v44 = a1;
  v4 = sub_ABAE50();
  v43 = *(v4 - 8);
  __chkstk_darwin();
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v37 - v7;
  __chkstk_darwin();
  v10 = &v37 - v9;
  __chkstk_darwin();
  v12 = &v37 - v11;
  LOBYTE(v47) = 1;
  sub_35BCD8();
  sub_36A48();
  NSUserDefaults.subscript.getter(&v45);
  if (!v46)
  {
    sub_12E1C(&v45, &unk_DE8E40, &unk_AF8050);
    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E098E8, &qword_B11978);
  if (swift_dynamicCast())
  {
    v13 = v47;
    if (v47[2])
    {
      v14 = sub_2EBF88(v44, a2);
      if (v15)
      {
        v39 = a2;
        v16 = (v13[7] + 16 * v14);
        v18 = *v16;
        v17 = v16[1];
        v41 = v13;
        v42 = v17;
        sub_AB2AD0();
        swift_allocObject();
        sub_90090(v18, v17);
        sub_AB2AC0();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E098D0, &unk_B11968);
        sub_489AE8(&qword_E09960, &qword_E09968, &protocol conformance descriptor for Search.Recents.Item<A>, &protocol conformance descriptor for <> Set<A>);
        v40 = v18;
        v19 = v42;
        sub_AB2AB0();
        if (!v2)
        {

          sub_466B8(v40, v19);

          return;
        }

        *&v45 = v2;
        swift_errorRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF3F90, &unk_AF98B0);
        if (!swift_dynamicCast())
        {

          swift_willThrow();
          sub_466B8(v40, v42);

          return;
        }

        v20 = v43;
        (*(v43 + 32))(v10, v12, v4);
        if (qword_DE6D48 != -1)
        {
          swift_once();
        }

        v21 = sub_AB4BC0();
        __swift_project_value_buffer(v21, static Logger.search);
        v22 = v20;
        v23 = *(v20 + 16);
        v23(v8, v10, v4);
        v24 = sub_AB4BA0();
        v25 = sub_AB9F30();
        v38 = v24;
        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          v37 = swift_slowAlloc();
          v47 = v37;
          *v26 = 136315138;
          v23(v6, v8, v4);
          v27 = sub_AB9350();
          v29 = v28;
          v30 = *(v22 + 8);
          v30(v8, v4);
          v31 = sub_425E68(v27, v29, &v47);

          *(v26 + 4) = v31;
          v32 = v25;
          v33 = v38;
          _os_log_impl(&dword_0, v38, v32, "Error decoding recently searched items from user defaults: %s", v26, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v37);
        }

        else
        {
          v30 = *(v20 + 8);
          v30(v8, v4);
        }

        v34 = v42;
        v35 = v40;
        v36 = [objc_opt_self() standardUserDefaults];
        sub_4898B8(&_swiftEmptySetSingleton, v44, v39);

        v30(v10, v4);

        sub_466B8(v35, v34);
      }
    }
  }
}

void sub_48A764(uint64_t a1, uint64_t a2)
{
  v44 = a1;
  v4 = sub_ABAE50();
  v43 = *(v4 - 8);
  __chkstk_darwin();
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v37 - v7;
  __chkstk_darwin();
  v10 = &v37 - v9;
  __chkstk_darwin();
  v12 = &v37 - v11;
  LOBYTE(v47) = 1;
  sub_35BCD8();
  sub_36A48();
  NSUserDefaults.subscript.getter(&v45);
  if (!v46)
  {
    sub_12E1C(&v45, &unk_DE8E40, &unk_AF8050);
    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E098E8, &qword_B11978);
  if (swift_dynamicCast())
  {
    v13 = v47;
    if (v47[2])
    {
      v14 = sub_2EBF88(v44, a2);
      if (v15)
      {
        v39 = a2;
        v16 = (v13[7] + 16 * v14);
        v18 = *v16;
        v17 = v16[1];
        v41 = v13;
        v42 = v17;
        sub_AB2AD0();
        swift_allocObject();
        sub_90090(v18, v17);
        sub_AB2AC0();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E098F8, &unk_B11980);
        sub_48BBDC(&qword_E09948, &qword_E09950, &protocol conformance descriptor for Search.Recents.Item<A>, &protocol conformance descriptor for <> Set<A>);
        v40 = v18;
        v19 = v42;
        sub_AB2AB0();
        if (!v2)
        {

          sub_466B8(v40, v19);

          return;
        }

        *&v45 = v2;
        swift_errorRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF3F90, &unk_AF98B0);
        if (!swift_dynamicCast())
        {

          swift_willThrow();
          sub_466B8(v40, v42);

          return;
        }

        v20 = v43;
        (*(v43 + 32))(v10, v12, v4);
        if (qword_DE6D48 != -1)
        {
          swift_once();
        }

        v21 = sub_AB4BC0();
        __swift_project_value_buffer(v21, static Logger.search);
        v22 = v20;
        v23 = *(v20 + 16);
        v23(v8, v10, v4);
        v24 = sub_AB4BA0();
        v25 = sub_AB9F30();
        v38 = v24;
        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          v37 = swift_slowAlloc();
          v47 = v37;
          *v26 = 136315138;
          v23(v6, v8, v4);
          v27 = sub_AB9350();
          v29 = v28;
          v30 = *(v22 + 8);
          v30(v8, v4);
          v31 = sub_425E68(v27, v29, &v47);

          *(v26 + 4) = v31;
          v32 = v25;
          v33 = v38;
          _os_log_impl(&dword_0, v38, v32, "Error decoding recently searched items from user defaults: %s", v26, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v37);
        }

        else
        {
          v30 = *(v20 + 8);
          v30(v8, v4);
        }

        v34 = v42;
        v35 = v40;
        v36 = [objc_opt_self() standardUserDefaults];
        sub_486AD8(&_swiftEmptySetSingleton, v44, v39);

        v30(v10, v4);

        sub_466B8(v35, v34);
      }
    }
  }
}

uint64_t objectdestroy_177Tm()
{

  return swift_deallocObject();
}

void sub_48AE48(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, NSObject *a6, uint64_t a7, uint64_t a8)
{
  v72 = a7;
  v73 = a8;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E09958, &qword_B119C0);
  __chkstk_darwin();
  v70 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v69 = &v56 - v15;
  v16 = type metadata accessor for Search.Recents.Result.Item(0);
  v67 = *(v16 - 8);
  v68 = v16;
  __chkstk_darwin();
  v18 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v77 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF3F90, &unk_AF98B0);
    swift_willThrowTypedImpl();
LABEL_24:
    dispatch_group_leave(a6);
    return;
  }

  v60 = a2;
  v19 = *(a1 + 16);
  v20 = _swiftEmptyArrayStorage;
  if (!v19)
  {
LABEL_23:
    __chkstk_darwin();
    *(&v56 - 8) = v53;
    *(&v56 - 7) = v20;
    *(&v56 - 6) = v54;
    *(&v56 - 5) = a1;
    *(&v56 - 4) = v60;
    *(&v56 - 3) = v55;
    *(&v56 - 2) = a4;
    *(&v56 - 1) = a5;
    UnfairLock.locked<A>(_:)(sub_48C680);

    goto LABEL_24;
  }

  v57 = a4;
  v58 = a5;
  v59 = a6;
  v77 = _swiftEmptyArrayStorage;
  sub_6D8F8(0, v19, 0);
  v20 = v77;
  v21 = a1 + 64;
  v22 = sub_ABABC0();
  v23 = 0;
  v24 = *(a1 + 36);
  v61 = a1 + 72;
  v62 = v19;
  v63 = v24;
  v64 = a1 + 64;
  v65 = a1;
  v66 = v18;
  while ((v22 & 0x8000000000000000) == 0 && v22 < 1 << *(a1 + 32))
  {
    if ((*(v21 + 8 * (v22 >> 6)) & (1 << v22)) == 0)
    {
      goto LABEL_26;
    }

    if (v24 != *(a1 + 36))
    {
      goto LABEL_27;
    }

    v75 = 1 << v22;
    v76 = v22 >> 6;
    v74 = v23;
    v26 = v71;
    v27 = *(v71 + 48);
    v28 = *(a1 + 48);
    v29 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFEF20, &qword_AFA570) - 8);
    v30 = v20;
    v31 = v69;
    sub_15F84(v28 + *(*v29 + 72) * v22, v69, &unk_DFEF20, &qword_AFA570);
    v32 = *(a1 + 56);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00040, &unk_AFA530);
    sub_15F84(v32 + *(*(v33 - 8) + 72) * v22, v31 + v27, &unk_E00040, &unk_AFA530);
    v34 = v70;
    sub_36B0C(v31, v70, &unk_DFEF20, &qword_AFA570);
    v35 = *(v26 + 48);
    v36 = v66;
    v37 = v31 + v27;
    v20 = v30;
    sub_36B0C(v37, v34 + v35, &unk_E00040, &unk_AFA530);
    sub_15F84(v34 + v35, v36, &unk_E00040, &unk_AFA530);
    v38 = v29[12];
    v39 = v68;
    v40 = *(v68 + 20);
    v41 = sub_AB3430();
    (*(*(v41 - 8) + 16))(v36 + v40, v34 + v38, v41);
    v42 = (v36 + *(v39 + 24));
    v43 = v73;
    *v42 = v72;
    v42[1] = v43;

    sub_12E1C(v34, &qword_E09958, &qword_B119C0);
    v77 = v20;
    v45 = v20[2];
    v44 = v20[3];
    if (v45 >= v44 >> 1)
    {
      sub_6D8F8((v44 > 1), v45 + 1, 1);
      v20 = v77;
    }

    v20[2] = v45 + 1;
    sub_489CC8(v36, v20 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v45, type metadata accessor for Search.Recents.Result.Item);
    a1 = v65;
    v25 = 1 << *(v65 + 32);
    if (v22 >= v25)
    {
      goto LABEL_28;
    }

    v21 = v64;
    v46 = *(v64 + 8 * v76);
    if ((v46 & v75) == 0)
    {
      goto LABEL_29;
    }

    LODWORD(v24) = v63;
    if (v63 != *(v65 + 36))
    {
      goto LABEL_30;
    }

    v47 = v46 & (-2 << (v22 & 0x3F));
    if (v47)
    {
      v25 = __clz(__rbit64(v47)) | v22 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v48 = v76 << 6;
      v49 = v76 + 1;
      v50 = (v61 + 8 * v76);
      while (v49 < (v25 + 63) >> 6)
      {
        v52 = *v50++;
        v51 = v52;
        v48 += 64;
        ++v49;
        if (v52)
        {
          sub_E1798(v22, v63, 0);
          v25 = __clz(__rbit64(v51)) + v48;
          goto LABEL_6;
        }
      }

      sub_E1798(v22, v63, 0);
    }

LABEL_6:
    v23 = v74 + 1;
    v22 = v25;
    if (v74 + 1 == v62)
    {
      a5 = v58;
      a6 = v59;
      a4 = v57;
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
}

void sub_48B3E8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, NSObject *a6, uint64_t a7, uint64_t a8)
{
  v72 = a7;
  v73 = a8;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E09940, &unk_B119B0);
  __chkstk_darwin();
  v70 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v69 = &v56 - v15;
  v16 = type metadata accessor for Search.Recents.Result.Item(0);
  v67 = *(v16 - 8);
  v68 = v16;
  __chkstk_darwin();
  v18 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v77 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF3F90, &unk_AF98B0);
    swift_willThrowTypedImpl();
LABEL_24:
    dispatch_group_leave(a6);
    return;
  }

  v60 = a2;
  v19 = *(a1 + 16);
  v20 = _swiftEmptyArrayStorage;
  if (!v19)
  {
LABEL_23:
    __chkstk_darwin();
    *(&v56 - 8) = v53;
    *(&v56 - 7) = v20;
    *(&v56 - 6) = v54;
    *(&v56 - 5) = a1;
    *(&v56 - 4) = v60;
    *(&v56 - 3) = v55;
    *(&v56 - 2) = a4;
    *(&v56 - 1) = a5;
    UnfairLock.locked<A>(_:)(sub_48B988);

    goto LABEL_24;
  }

  v57 = a4;
  v58 = a5;
  v59 = a6;
  v77 = _swiftEmptyArrayStorage;
  sub_6D8F8(0, v19, 0);
  v20 = v77;
  v21 = a1 + 64;
  v22 = sub_ABABC0();
  v23 = 0;
  v24 = *(a1 + 36);
  v61 = a1 + 72;
  v62 = v19;
  v63 = v24;
  v64 = a1 + 64;
  v65 = a1;
  v66 = v18;
  while ((v22 & 0x8000000000000000) == 0 && v22 < 1 << *(a1 + 32))
  {
    if ((*(v21 + 8 * (v22 >> 6)) & (1 << v22)) == 0)
    {
      goto LABEL_26;
    }

    if (v24 != *(a1 + 36))
    {
      goto LABEL_27;
    }

    v75 = 1 << v22;
    v76 = v22 >> 6;
    v74 = v23;
    v26 = v71;
    v27 = *(v71 + 48);
    v28 = *(a1 + 48);
    v29 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFEEE0, &qword_AF7AF0) - 8);
    v30 = v20;
    v31 = v69;
    sub_15F84(v28 + *(*v29 + 72) * v22, v69, &unk_DFEEE0, &qword_AF7AF0);
    v32 = *(a1 + 56);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00040, &unk_AFA530);
    sub_15F84(v32 + *(*(v33 - 8) + 72) * v22, v31 + v27, &unk_E00040, &unk_AFA530);
    v34 = v70;
    sub_36B0C(v31, v70, &unk_DFEEE0, &qword_AF7AF0);
    v35 = *(v26 + 48);
    v36 = v66;
    v37 = v31 + v27;
    v20 = v30;
    sub_36B0C(v37, v34 + v35, &unk_E00040, &unk_AFA530);
    sub_15F84(v34 + v35, v36, &unk_E00040, &unk_AFA530);
    v38 = v29[12];
    v39 = v68;
    v40 = *(v68 + 20);
    v41 = sub_AB3430();
    (*(*(v41 - 8) + 16))(v36 + v40, v34 + v38, v41);
    v42 = (v36 + *(v39 + 24));
    v43 = v73;
    *v42 = v72;
    v42[1] = v43;

    sub_12E1C(v34, &qword_E09940, &unk_B119B0);
    v77 = v20;
    v45 = v20[2];
    v44 = v20[3];
    if (v45 >= v44 >> 1)
    {
      sub_6D8F8((v44 > 1), v45 + 1, 1);
      v20 = v77;
    }

    v20[2] = v45 + 1;
    sub_489CC8(v36, v20 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v45, type metadata accessor for Search.Recents.Result.Item);
    a1 = v65;
    v25 = 1 << *(v65 + 32);
    if (v22 >= v25)
    {
      goto LABEL_28;
    }

    v21 = v64;
    v46 = *(v64 + 8 * v76);
    if ((v46 & v75) == 0)
    {
      goto LABEL_29;
    }

    LODWORD(v24) = v63;
    if (v63 != *(v65 + 36))
    {
      goto LABEL_30;
    }

    v47 = v46 & (-2 << (v22 & 0x3F));
    if (v47)
    {
      v25 = __clz(__rbit64(v47)) | v22 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v48 = v76 << 6;
      v49 = v76 + 1;
      v50 = (v61 + 8 * v76);
      while (v49 < (v25 + 63) >> 6)
      {
        v52 = *v50++;
        v51 = v52;
        v48 += 64;
        ++v49;
        if (v52)
        {
          sub_E1798(v22, v63, 0);
          v25 = __clz(__rbit64(v51)) + v48;
          goto LABEL_6;
        }
      }

      sub_E1798(v22, v63, 0);
    }

LABEL_6:
    v23 = v74 + 1;
    v22 = v25;
    if (v74 + 1 == v62)
    {
      a5 = v58;
      a6 = v59;
      a4 = v57;
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
}

void sub_48B9A0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v42 = a1;
  v43 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v44 = v8;
  v45 = 0;
  v46 = v11 & v9;
  v47 = a2;
  v48 = a3;

  sub_1B62F4(&v37);
  v12 = v38;
  if (!v38)
  {
LABEL_18:
    sub_1D4508(v42);

    return;
  }

  while (1)
  {
    v15 = v37;
    v34 = v39;
    v35 = v40;
    v36 = v41;
    v16 = *a5;
    v17 = sub_2EBF88(v37, v12);
    v19 = *(v16 + 16);
    v20 = (v18 & 1) == 0;
    v21 = __OFADD__(v19, v20);
    v22 = v19 + v20;
    if (v21)
    {
      break;
    }

    v23 = v18;
    if (*(v16 + 24) < v22)
    {
      sub_32A910(v22, a4 & 1);
      v17 = sub_2EBF88(v15, v12);
      if ((v23 & 1) != (v24 & 1))
      {
        goto LABEL_21;
      }

LABEL_13:
      if (v23)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }

    if (a4)
    {
      goto LABEL_13;
    }

    v32 = v17;
    sub_332E78();
    v17 = v32;
    if (v23)
    {
LABEL_6:
      v13 = *a5;
      v14 = 40 * v17;
      sub_9ACA0(*(*a5 + 56) + 40 * v17, v33);
      sub_8085C(&v34);

      sub_9AD68(v33, *(v13 + 56) + v14);
      goto LABEL_7;
    }

LABEL_14:
    v25 = *a5;
    *(*a5 + 8 * (v17 >> 6) + 64) |= 1 << v17;
    v26 = (v25[6] + 16 * v17);
    *v26 = v15;
    v26[1] = v12;
    v27 = v25[7] + 40 * v17;
    v28 = v34;
    v29 = v35;
    *(v27 + 32) = v36;
    *v27 = v28;
    *(v27 + 16) = v29;
    v30 = v25[2];
    v21 = __OFADD__(v30, 1);
    v31 = v30 + 1;
    if (v21)
    {
      goto LABEL_20;
    }

    v25[2] = v31;
LABEL_7:
    sub_1B62F4(&v37);
    v12 = v38;
    a4 = 1;
    if (!v38)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  sub_ABB4C0();
  __break(1u);
}

uint64_t sub_48BBDC(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E098F8, &unk_B11980);
    sub_36A00(a2, &unk_DFEEE0, &qword_AF7AF0, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_48BCC4(uint64_t a1)
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    if (qword_DE6CE8 != -1)
    {
      swift_once();
    }

    v1 = qword_E719D8;
LABEL_45:

    return v1;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    if (qword_DE6CF0 != -1)
    {
      swift_once();
    }

    v1 = qword_E719E0;
    goto LABEL_45;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    if (qword_DE6CF8 != -1)
    {
      swift_once();
    }

    v1 = qword_E719E8;
    goto LABEL_45;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    if (qword_DE6D28 != -1)
    {
      swift_once();
    }

    v1 = qword_E71A18;
    goto LABEL_45;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    if (qword_DE6D00 != -1)
    {
      swift_once();
    }

    v1 = qword_E719F0;
    goto LABEL_45;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    if (qword_DE6D20 != -1)
    {
      swift_once();
    }

    v1 = qword_E71A10;
    goto LABEL_45;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    if (qword_DE6D18 != -1)
    {
      swift_once();
    }

    v1 = qword_E71A08;
    goto LABEL_45;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    if (qword_DE6D08 != -1)
    {
      swift_once();
    }

    v1 = qword_E719F8;
    goto LABEL_45;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    if (qword_DE6D10 != -1)
    {
      swift_once();
    }

    v1 = qword_E71A00;
    goto LABEL_45;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    if (qword_DE6D40 != -1)
    {
      swift_once();
    }

    v1 = qword_E71A30;
    goto LABEL_45;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    if (qword_DE6CE0 != -1)
    {
      swift_once();
    }

    v1 = qword_E719D0;
    goto LABEL_45;
  }

  v3 = [objc_opt_self() emptyPropertySet];

  return v3;
}

uint64_t sub_48C0F0(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 2;
  }

  if (a1 == 0xD000000000000025 && 0x8000000000B66510 == a2 || (sub_ABB3C0() & 1) != 0)
  {

    return 0;
  }

  if (a1 == 0xD000000000000025 && 0x8000000000B664E0 == a2)
  {

    return 1;
  }

  v5 = sub_ABB3C0();

  if (v5)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t get_enum_tag_for_layout_string_16MusicApplication6SearchC4PageO(uint64_t a1)
{
  if ((*(a1 + 40) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 40) & 3;
  }
}

uint64_t sub_48C228(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_48C264(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_48C2B0(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

void sub_48C2E8(uint64_t a1)
{
  sub_48C3A8(319);
  if (v1 <= 0x3F)
  {
    sub_48C430(319, &qword_E09A00, &type metadata for Search.Page);
    if (v2 <= 0x3F)
    {
      sub_48C47C();
      if (v3 <= 0x3F)
      {
        sub_48C4E0(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_48C3A8(uint64_t a1)
{
  if (!qword_E099F8)
  {
    type metadata accessor for Search.Item(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_E00050, &qword_B094D0);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_E099F8);
    }
  }
}

void sub_48C430(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_ABA9C0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_48C47C()
{
  result = qword_E09A08;
  if (!qword_E09A08)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_E09A08);
  }

  return result;
}

void sub_48C4E0(uint64_t a1)
{
  if (!qword_E09A10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_DF1320, &unk_AFF5E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_DEE6F0, &unk_AF8970);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_E09A10);
    }
  }
}

unint64_t sub_48C588()
{
  result = qword_E09A40;
  if (!qword_E09A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E09A40);
  }

  return result;
}

unint64_t sub_48C5DC(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_CF1A50;
  v6._object = a2;
  v4 = sub_ABB140(v3, v6);

  if (v4 >= 6)
  {
    return 6;
  }

  else
  {
    return v4;
  }
}

void sub_48C6A0(void (*a1)(uint64_t, double), uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_AB7CC0();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = (&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  sub_60044();

  *v10 = sub_ABA150();
  (*(v8 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v7);
  v12 = sub_AB7CF0();
  v13 = (*(v8 + 8))(v10, v7);
  if (v12)
  {
    if (v3[3] & 1) != 0 || (v3[5])
    {
      BagProvider.shared.unsafeMutableAddressor();
      v14 = swift_allocObject();
      v14[2] = sub_48D3B0;
      v14[3] = v11;
      v14[4] = v3;
      v14[5] = v6;

      BagProvider.getBag(completion:)(sub_48D3DC, v14);
    }

    else
    {
      a1(v13, v3[4]);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_48C8C4(void (*a1)(uint64_t, double), uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_AB7CC0();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = (&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  sub_60044();

  *v10 = sub_ABA150();
  (*(v8 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v7);
  v12 = sub_AB7CF0();
  v13 = (*(v8 + 8))(v10, v7);
  if (v12)
  {
    if (v3[3] & 1) != 0 || (v3[5])
    {
      BagProvider.shared.unsafeMutableAddressor();
      v14 = swift_allocObject();
      v14[2] = sub_48D458;
      v14[3] = v11;
      v14[4] = v3;
      v14[5] = v6;

      BagProvider.getBag(completion:)(sub_48D4C4, v14);
    }

    else
    {
      a1(v13, v3[2]);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_48CAE8(void (*a1)(uint64_t, double, double), uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_AB7CC0();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = (&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_60044();
  *v10 = sub_ABA150();
  (*(v8 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v7);
  v11 = sub_AB7CF0();
  v12 = (*(v8 + 8))(v10, v7);
  if (v11)
  {
    if (v3[3] & 1) != 0 || (v3[5])
    {
      BagProvider.shared.unsafeMutableAddressor();
      v13 = swift_allocObject();
      v13[2] = a1;
      v13[3] = a2;
      v13[4] = v3;
      v13[5] = v6;

      BagProvider.getBag(completion:)(sub_48D4C4, v13);
    }

    else
    {
      a1(v12, v3[2], v3[4]);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_48CCF0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a5;
  v9 = sub_AB7C10();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_AB7C50();
  v13 = *(v23 - 8);
  __chkstk_darwin();
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_60044();
  v22 = sub_ABA150();
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = a3;
  v16[5] = a4;
  v16[6] = v21;
  aBlock[4] = sub_48D430;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B5EB4;
  aBlock[3] = &block_descriptor_149;
  v17 = _Block_copy(aBlock);
  v18 = a1;

  sub_AB7C30();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_8FFF0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30, &qword_AF8920);
  sub_D1010();
  sub_ABABB0();
  v19 = v22;
  sub_ABA160();
  (*(v10 + 8))(v12, v9);
  (*(v13 + 8))(v15, v23);
  _Block_release(v17);
}

void sub_48CFA0(void *a1, void (*a2)(double, double), uint64_t a3, uint64_t a4)
{
  v7 = sub_AB9260();
  v8 = [a1 dictionaryForBagKey:v7];

  if (!v8)
  {
    goto LABEL_14;
  }

  v9 = sub_AB8FF0();

  sub_ABAD10();
  if (*(v9 + 16) && (v10 = sub_2EC004(v20), (v11 & 1) != 0))
  {
    sub_808B0(*(v9 + 56) + 32 * v10, v21);
    sub_8085C(v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED830, &unk_AFD670);
    if (swift_dynamicCast())
    {
      sub_ABAD10();
      if (MEMORY[0x6973736572706D79])
      {
        v12 = sub_2EC004(v20);
        if (v13)
        {
          sub_808B0(MEMORY[0x6973736572706DA1] + 32 * v12, v21);
          sub_8085C(v20);
          if ((swift_dynamicCast() & 1) == 0)
          {
LABEL_20:

            goto LABEL_13;
          }

          sub_ABAD10();
          if (MEMORY[0x6973736572706D79])
          {
            v14 = sub_2EC004(v20);
            if (v15)
            {
              sub_808B0(MEMORY[0x6973736572706DA1] + 32 * v14, v21);
              sub_8085C(v20);
              if (swift_dynamicCast())
              {
                *(a4 + 16) = 0xD000000000000011;
                *(a4 + 24) = 0;
                *(a4 + 32) = 0xD000000000000012;
                *(a4 + 40) = 0;
                (a2)(-2.31584178e77);

                return;
              }

              goto LABEL_20;
            }
          }
        }
      }

      sub_8085C(v20);
      goto LABEL_20;
    }
  }

  else
  {
    sub_8085C(v20);
  }

LABEL_13:

LABEL_14:
  if (qword_DE6888 != -1)
  {
    swift_once();
  }

  v16 = sub_AB4BC0();
  __swift_project_value_buffer(v16, qword_E70EB0);
  v17 = sub_AB4BA0();
  v18 = sub_AB9F30();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_0, v17, v18, "Error serializing impression keys from bag.  Returning default values.", v19, 2u);
  }

  a2(1000.0, 0.5);
}

uint64_t sub_48D378()
{

  return swift_deallocObject();
}

uint64_t sub_48D3E8()
{

  return swift_deallocObject();
}

double block_copy_helper_149(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t objectdestroy_3Tm()
{

  return swift_deallocObject();
}

void sub_48D4FC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = sub_AB3820();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 32);
  sub_AB3790();
  swift_unknownObjectRetain();
  v13 = a3;
  v12(a2, v11, a4);
  swift_unknownObjectRelease();
  (*(v9 + 8))(v11, v8);
}

void sub_48D644(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v8 = sub_AB3820();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 32);
  sub_AB3790();
  v13 = a2;
  v14 = a3;
  v12(v11, v14, a4);

  (*(v9 + 8))(v11, v8);
}

BOOL sub_48D83C(uint64_t *a1, unint64_t *a2)
{
  v2 = *a2;
  if (!*a1)
  {
    return !v2;
  }

  if (*a1 == 1)
  {
    return v2 == 1;
  }

  if (v2 < 2)
  {
    return 0;
  }

  sub_13C80(0, &qword_DFA720, NSObject_ptr);
  return sub_ABA790() & 1;
}

uint64_t sub_48D8C4(uint64_t a1)
{
  sub_AB35C0();
  __chkstk_darwin();
  sub_AB9250();
  __chkstk_darwin();
  sub_AB91E0();
  sub_AB3550();
  return sub_AB9320();
}

double sub_48DA20@<D0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_AB35C0();
  __chkstk_darwin();
  sub_AB9250();
  __chkstk_darwin();
  v6 = *(v5 + 16);
  v36 = *v5;
  v37 = v6;
  v7 = *(v5 + 48);
  v30 = *(v5 + 32);
  v31 = v7;
  v32 = *(v5 + 64);
  v33 = *(v5 + 80);
  if (a2 == 1)
  {
    sub_576EC(v5, v34);
    sub_12E1C(&v36, &unk_DEE6F0, &unk_AF8970);
    sub_AB91E0();
    sub_AB3550();
    v8 = 0;
    v9 = 0;
  }

  else
  {
    sub_576EC(v5, v34);
    sub_AB91E0();
    sub_AB3550();
    v8 = sub_AB9320();
    v9 = v10;
    sub_12E1C(&v36, &unk_DEE6F0, &unk_AF8970);
    static ApplicationCapabilities.shared.getter(v34);
    sub_70C54(v34);
    if (v35 != 2)
    {
      sub_ABB3C0();
    }

    sub_AB91E0();
    sub_AB3550();
  }

  v11 = sub_AB9320();
  v13 = v12;
  sub_12E1C(&v37, &unk_DEE6F0, &unk_AF8970);
  *&v19 = v8;
  *(&v19 + 1) = v9;
  *&v20 = v11;
  *(&v20 + 1) = v13;
  v21 = v30;
  v22 = v31;
  v23 = v32;
  v24 = v33;
  v25[0] = v8;
  v25[1] = v9;
  v25[2] = v11;
  v25[3] = v13;
  v29 = v33;
  v28 = v32;
  v27 = v31;
  v26 = v30;
  sub_576EC(&v19, &v18);
  sub_57748(v25);
  v14 = v22;
  v15 = v23;
  *(a3 + 32) = v21;
  *(a3 + 48) = v14;
  *(a3 + 64) = v15;
  *(a3 + 80) = v24;
  result = *&v19;
  v17 = v20;
  *a3 = v19;
  *(a3 + 16) = v17;
  return result;
}

char *sub_48DDCC(char *a1, char a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  sub_AB35C0();
  __chkstk_darwin();
  sub_AB9250();
  __chkstk_darwin();
  *&v6[qword_E09B28] = 0;
  *&v6[qword_E09B30] = 0;
  *&v6[qword_E09B48] = 0;
  v6[qword_E09B50] = 0;
  *&v6[qword_E09B58] = 0;
  v11 = qword_E09B60;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF1330, &qword_AF9120);
  (*(*(v12 - 8) + 56))(&v6[v11], 1, 1, v12);
  *&v6[qword_E09B68] = 0;
  *&v6[qword_E09B70] = 0;
  *&v6[qword_E09B78] = _swiftEmptyArrayStorage;
  v13 = &v6[qword_E09B80];
  *v13 = 0;
  *(v13 + 1) = 0;
  v13[16] = 1;
  *&v6[qword_E09B88] = 0;
  *&v6[qword_E09B90] = 0;
  v6[qword_E09B98] = 0;
  v14 = &v6[qword_E09B38];
  *v14 = a1;
  v14[8] = a2 & 1;
  *&v6[qword_E09B40] = a5;
  type metadata accessor for SortOptionsController();
  swift_allocObject();
  v15 = a5;
  if (a1 == &dword_0 + 1)
  {
    v16 = &off_CEFD70;
  }

  else
  {
    sub_31828(a1);
    v16 = &off_CEFD48;
  }

  *&v6[qword_E09B20] = sub_225174(v16, 0, 0);
  v29.receiver = v6;
  v29.super_class = type metadata accessor for PlaylistsViewController(0);
  v17 = objc_msgSendSuper2(&v29, "init");
  v18 = v17;
  if (!a4)
  {
    sub_AB91E0();
    sub_AB3550();
    sub_AB9320();
  }

  v19 = sub_AB9260();

  [v17 setTitle:v19];

  v20 = [v17 navigationItem];
  [v20 _setSupportsTwoLineLargeTitles:1];

  sub_31828(a1);
  v21 = sub_AB9260();
  sub_31838(a1);

  [v17 setPlayActivityFeatureName:v21];

  v22 = objc_opt_self();
  v23 = [v22 currentDevice];
  v24 = [v23 userInterfaceIdiom];

  if (!v24)
  {
    v25 = sub_AB9260();
    [v17 setRestorationIdentifier:v25];
  }

  v26 = [v22 currentDevice];
  v27 = [v26 userInterfaceIdiom];

  if (!v27)
  {
    _s16MusicApplication16RestorationClassCMa_3();
    [v17 setRestorationClass:swift_getObjCClassFromMetadata()];
  }

  sub_31838(a1);
  return v17;
}

void sub_48E298(void *a1)
{
  v12.receiver = v1;
  v12.super_class = type metadata accessor for PlaylistsViewController(0);
  objc_msgSendSuper2(&v12, "encodeRestorableStateWithCoder:", a1);
  v3 = [v1 title];
  v4 = sub_AB9260();
  [a1 encodeObject:v3 forKey:v4];

  v5 = *&v1[qword_E09B38];
  if (v5 >= 2)
  {
    v6 = type metadata accessor for CodableModelIdentity();
    v7 = objc_allocWithZone(v6);
    *&v7[OBJC_IVAR____TtC16MusicApplication20CodableModelIdentity_model] = v5;
    sub_31828(v5);
    v11.receiver = v7;
    v11.super_class = v6;
    v8 = v5;
    v9 = objc_msgSendSuper2(&v11, "init");
    v10 = sub_AB9260();
    [a1 encodeObject:v9 forKey:{v10, v11.receiver, v11.super_class}];

    sub_31838(v5);
  }
}

void sub_48E3F4(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_48E298(v4);
}

void sub_48E45C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0, &unk_AF87B0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_B00DB0;
  *(v0 + 32) = sub_AB92A0();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_AB92A0();
  *(v0 + 56) = v2;
  *(v0 + 64) = sub_AB92A0();
  *(v0 + 72) = v3;
  *(v0 + 80) = sub_AB92A0();
  *(v0 + 88) = v4;
  *(v0 + 96) = sub_AB92A0();
  *(v0 + 104) = v5;
  *(v0 + 112) = sub_AB92A0();
  *(v0 + 120) = v6;
  *(v0 + 128) = sub_AB92A0();
  *(v0 + 136) = v7;
  *(v0 + 144) = sub_AB92A0();
  *(v0 + 152) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8E70, &unk_AF8900);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF4EC0;
  v10 = MPModelRelationshipPlaylistCurator;
  *(inited + 32) = sub_AB92A0();
  *(inited + 40) = v11;
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_AF4EC0;
  *(v12 + 32) = sub_AB92A0();
  *(v12 + 40) = v13;
  v14 = v10;
  isa = sub_AB9740().super.isa;
  v16 = [objc_opt_self() propertySetWithProperties:isa];

  *(inited + 48) = v16;
  sub_96EA4(inited);
  swift_setDeallocating();
  sub_12E1C(inited + 32, &unk_DE8E80, &unk_AF87C0);
  v17 = objc_allocWithZone(MPPropertySet);
  v18 = sub_AB9740().super.isa;

  sub_13C80(0, &qword_DEA550, MPPropertySet_ptr);
  v19 = sub_AB8FD0().super.isa;

  v20 = [v17 initWithProperties:v18 relationships:v19];

  qword_E71A50 = v20;
}

_BYTE *sub_48E708()
{
  v1 = qword_E09B28;
  v2 = *(v0 + qword_E09B28);
  if (v2)
  {
    v3 = *(v0 + qword_E09B28);
  }

  else
  {
    v4 = *(v0 + qword_E09B38);
    objc_allocWithZone(type metadata accessor for LibraryFilterOptionsController());
    if (v4 == 1)
    {
      v5 = 6;
    }

    else
    {
      v5 = 8;
    }

    v6 = v0;
    v7 = sub_4F4944(v5);
    v8 = *(v0 + v1);
    *(v6 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

uint64_t sub_48E79C()
{
  v1 = qword_E09B30;
  if (*&v0[qword_E09B30])
  {
    v2 = *&v0[qword_E09B30];
  }

  else
  {
    v3 = *&v0[qword_E09B38];
    sub_31828(v3);
    v4 = sub_48D8C4(v3);
    v6 = v5;
    sub_31838(v3);
    type metadata accessor for LibrarySearchController();
    swift_allocObject();
    v7 = v0;
    v2 = sub_4309D4(v4, v6);

    *&v0[v1] = v2;
  }

  return v2;
}

void sub_48E870()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF7930, &unk_B03B30);
  __chkstk_darwin();
  v3 = v59 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v72 = v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = v59 - v5;
  __chkstk_darwin();
  v73 = v59 - v7;
  __chkstk_darwin();
  v9 = v59 - v8;
  __chkstk_darwin();
  v11 = v59 - v10;
  v12 = sub_AB3820();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  *&v18 = __chkstk_darwin().n128_u64[0];
  if (v0[qword_E09B50] == 1)
  {
    v19 = *&v0[qword_E09B48];
    if (v19)
    {
      *&v0[qword_E09B48] = 0;
      v20 = *&v0[qword_DFE2F0];
      if (!v20)
      {

        (*(v13 + 56))(v11, 1, 1, v12);
LABEL_11:
        sub_12E1C(v11, &unk_DE8E20, &qword_AF7990);
        return;
      }

      v69 = v59 - v16;
      v70 = v17;
      v67 = v3;
      v71 = v13;
      v21 = [v20 results];
      if (v21)
      {
        v22 = v21;
        v68 = v19;
        v23 = [v19 identifiers];
        v24 = [v22 indexPathForItemWithIdentifiersIntersectingSet:v23];

        if (v24)
        {
          sub_AB3790();

          v25 = v71;
          v26 = *(v71 + 56);
          v27 = v9;
          v28 = 0;
        }

        else
        {
          v25 = v71;
          v26 = *(v71 + 56);
          v27 = v9;
          v28 = 1;
        }

        v66 = v26;
        v26(v27, v28, 1, v12);
        sub_36B0C(v9, v11, &unk_DE8E20, &qword_AF7990);
        v30 = v25 + 6;
        v29 = v25[6];
        if (v29(v11, 1, v12) == 1)
        {

          goto LABEL_11;
        }

        v65 = v29;
        v31 = v69;
        v60 = v25[4];
        v61 = v25 + 4;
        v60(v69, v11, v12);
        v33 = v25 + 2;
        v32 = v25[2];
        v32(v70, v31, v12);
        [v0 loadViewIfNeeded];
        v34 = *&v0[qword_DFE2F8];
        if (v34)
        {
          v64 = v32;
          v62 = qword_DFE2F8;
          v35 = v34;
          v36 = [v35 indexPathsForSelectedItems];
          v63 = v30;
          if (v36)
          {
            v59[1] = v33;
            v37 = v36;
            v38 = sub_AB9760();

            if (*(v38 + 16))
            {
              v39 = v38 + ((*(v71 + 80) + 32) & ~*(v71 + 80));
              v40 = v73;
              v41 = v64;
              v59[0] = v38;
              v64(v73, v39, v12);
              v42 = v66;
              v66(v40, 0, 1, v12);

              v41(v6, v70, v12);
            }

            else
            {
              v40 = v73;
              v42 = v66;
              v66(v73, 1, 1, v12);

              v64(v6, v70, v12);
            }
          }

          else
          {

            v40 = v73;
            v42 = v66;
            v66(v73, 1, 1, v12);
            v64(v6, v70, v12);
          }

          v42(v6, 0, 1, v12);
          v43 = *(v1 + 48);
          v44 = v67;
          sub_15F84(v40, v67, &unk_DE8E20, &qword_AF7990);
          sub_15F84(v6, v44 + v43, &unk_DE8E20, &qword_AF7990);
          v45 = v65;
          if (v65(v44, 1, v12) == 1)
          {
            sub_12E1C(v6, &unk_DE8E20, &qword_AF7990);
            sub_12E1C(v40, &unk_DE8E20, &qword_AF7990);
            v46 = v45(v44 + v43, 1, v12);
            v47 = v44;
            v48 = v71;
            if (v46 == 1)
            {
              sub_12E1C(v44, &unk_DE8E20, &qword_AF7990);
LABEL_28:

              v58 = *(v48 + 8);
              v58(v70, v12);
              v58(v69, v12);
              return;
            }
          }

          else
          {
            v49 = v72;
            sub_15F84(v44, v72, &unk_DE8E20, &qword_AF7990);
            v50 = v45(v44 + v43, 1, v12);
            v47 = v44;
            v48 = v71;
            if (v50 != 1)
            {
              v60(v15, (v44 + v43), v12);
              sub_497890(&qword_DF7940, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
              v56 = sub_AB91C0();
              v57 = *(v48 + 8);
              v57(v15, v12);
              sub_12E1C(v6, &unk_DE8E20, &qword_AF7990);
              sub_12E1C(v73, &unk_DE8E20, &qword_AF7990);
              v57(v72, v12);
              sub_12E1C(v44, &unk_DE8E20, &qword_AF7990);
              if (v56)
              {
                goto LABEL_28;
              }

              goto LABEL_25;
            }

            sub_12E1C(v6, &unk_DE8E20, &qword_AF7990);
            sub_12E1C(v73, &unk_DE8E20, &qword_AF7990);
            (*(v48 + 8))(v49, v12);
          }

          sub_12E1C(v47, &unk_DF7930, &unk_B03B30);
LABEL_25:
          [v0 loadViewIfNeeded];
          v51 = *&v0[v62];
          if (v51)
          {
            v52 = v51;
            v53 = v70;
            isa = sub_AB3770().super.isa;
            [v52 selectItemAtIndexPath:isa animated:0 scrollPosition:0];

            v55 = *(v48 + 8);
            v55(v53, v12);
            v55(v69, v12);

            return;
          }

          goto LABEL_32;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
LABEL_32:
      __break(1u);
    }
  }
}

void sub_48F140()
{
  v16.receiver = v0;
  v16.super_class = type metadata accessor for PlaylistsViewController(0);
  objc_msgSendSuper2(&v16, "viewDidLoad");
  v1 = *&v0[qword_E09B20];
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = v1[8];
  v4 = v1[9];
  v1[8] = sub_497F9C;
  v1[9] = v2;

  sub_17654(v3, v4);

  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = v1[6];
  v7 = v1[7];
  v1[6] = sub_141790;
  v1[7] = v5;

  sub_17654(v6, v7);

  v8 = sub_48E79C();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = *(v8 + 88);
  v11 = *(v8 + 96);
  *(v8 + 88) = sub_49805C;
  *(v8 + 96) = v9;

  sub_17654(v10, v11);

  v12 = [v0 navigationItem];
  v13 = [v12 rightBarButtonItems];
  if (v13)
  {
    v14 = v13;
    sub_13C80(0, &unk_DF12E0, UIBarButtonItem_ptr);
    v15 = sub_AB9760();

    v12 = v14;
  }

  else
  {
    v15 = _swiftEmptyArrayStorage;
  }

  *&v0[qword_E09B78] = v15;

  sub_494A24(0);
}

void sub_48F344(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_4923B0();
  }
}

void sub_48F398(void *a1)
{
  v1 = a1;
  sub_48F140();
}

void sub_48F3E0(void *a1, uint64_t a2, uint64_t a3)
{
  v6.receiver = a1;
  v6.super_class = type metadata accessor for PlaylistsViewController(0);
  v4 = v6.receiver;
  objc_msgSendSuper2(&v6, "viewWillAppear:", a3);
  if (v4[qword_DFE2A0] == 1)
  {
    [v4 loadViewIfNeeded];
    v5 = *&v4[qword_E09B48];
    *&v4[qword_E09B48] = 0;

    sub_48E870();
  }
}

void sub_48F484(char a1)
{
  type metadata accessor for MetricsEvent.Page(0);
  __chkstk_darwin();
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PlaylistsViewController(0);
  v9.receiver = v1;
  v9.super_class = v5;
  objc_msgSendSuper2(&v9, "viewDidAppear:", a1 & 1);
  v6 = *&v1[qword_E09B38];
  if (v6 == 1)
  {
    v7 = *MetricsReportingController.shared.unsafeMutableAddressor();
    v8 = MetricsEvent.Page.libraryMadeForYou.unsafeMutableAddressor();
  }

  else
  {
    if (v6)
    {
      return;
    }

    v7 = *MetricsReportingController.shared.unsafeMutableAddressor();
    v8 = MetricsEvent.Page.libraryPlaylistsList.unsafeMutableAddressor();
  }

  sub_497ED4(v8, v4, type metadata accessor for MetricsEvent.Page);
  (*(&stru_68.reloff + (swift_isaMask & *v7)))(v4, 0, 0, 0, 0, 0);
  sub_497F3C(v4, type metadata accessor for MetricsEvent.Page);
}

void sub_48F5E4(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_48F484(a3);
}

void sub_48F638(void *a1, uint64_t a2, uint64_t a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for PlaylistsViewController(0);
  v4 = v5.receiver;
  objc_msgSendSuper2(&v5, "viewWillDisappear:", a3);
  if (*&v4[qword_E09B38] == 1)
  {
    sub_4933E8();
  }
}

void sub_48F6B4(void *a1)
{
  v8.receiver = v1;
  v8.super_class = type metadata accessor for PlaylistsViewController(0);
  objc_msgSendSuper2(&v8, "traitCollectionDidChange:", a1);
  if ([v1 isViewLoaded])
  {
    if (a1)
    {
      v3 = [a1 horizontalSizeClass];
    }

    else
    {
      v3 = 0;
    }

    v4 = [v1 traitCollection];
    v5 = [v4 horizontalSizeClass];

    if (!a1 || v3 != v5)
    {
      [v1 loadViewIfNeeded];
      v6 = *&v1[qword_DFE2F8];
      if (v6)
      {
        v7 = [v6 collectionViewLayout];
        sub_492904(v7);

        sub_494A24(0);
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void sub_48F7C4(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_48F6B4(a3);
}

double sub_48F830(void *a1)
{
  sub_3B316C(a1);
  [a1 setAlwaysBounceHorizontal:0];
  [a1 setShowsHorizontalScrollIndicator:0];
  v2 = type metadata accessor for PlayIntentControlsReusableView();
  v3 = sub_AB92A0();
  v5 = v4;
  v6 = static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:ofKind:reuseIdentifier:)(v2, v3, v5, v6, v7);

  v8 = type metadata accessor for AlbumCell(0);
  v9 = static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:reuseIdentifier:)(v8, v9, v10);

  v11 = sub_13C80(0, &unk_DF0CF0, UICollectionViewListCell_ptr);
  v12 = static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:reuseIdentifier:)(v11, v12, v13);

  return result;
}

void sub_48F974()
{
  v1 = v0;
  *(v0 + qword_E09B50) = 1;
  sub_48E870();
  sub_493D58();
  v2 = qword_DFE2F0;
  v3 = *(v0 + qword_DFE2F0);
  if (v3)
  {
    LOBYTE(v3) = [v3 isEmpty];
  }

  sub_3E2E84(v3);

  v4 = sub_48E79C();
  v5 = *(v1 + v2);
  if (v5 && ([v5 isEmpty] & 1) == 0)
  {
    v12 = *(v4 + 64);
    *(v4 + 64) = 1;
    if (v12)
    {
      goto LABEL_11;
    }

LABEL_10:
    sub_430320();
    goto LABEL_11;
  }

  v6 = (*(*(v1 + qword_E09B30) + 120) + OBJC_IVAR____TtCC16MusicApplication23LibrarySearchControllerP33_74DC0E8E86C2700EAF59346E7D7979E311BarDelegate_text);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6 & 0xFFFFFFFFFFFFLL;
    if ((v7 & 0x2000000000000000) != 0)
    {
      v9 = HIBYTE(v7) & 0xF;
    }

    else
    {
      v9 = v8;
    }

    v10 = v9 != 0;
    v11 = *(v4 + 64);
    *(v4 + 64) = v10;
    if (v11 == v10)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v13 = *(v4 + 64);
  *(v4 + 64) = 0;
  if (v13)
  {
    goto LABEL_10;
  }

LABEL_11:

  sub_4964C8();
}

char *sub_48FA90(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  object = v4;
  sub_AB35C0();
  __chkstk_darwin();
  sub_AB9250();
  __chkstk_darwin();
  sub_AB9230();
  __chkstk_darwin();
  if (sub_AB92A0() == a2 && v9 == a3)
  {
    goto LABEL_7;
  }

  v11 = sub_ABB3C0();

  if ((v11 & 1) == 0)
  {
    sub_ABAD90(66);
    v50._countAndFlagsBits = 0xD000000000000026;
    v50._object = 0x8000000000B58540;
    sub_AB94A0(v50);
    v51._countAndFlagsBits = a2;
    v51._object = a3;
    sub_AB94A0(v51);
    v52._object = 0x8000000000B58570;
    v52._countAndFlagsBits = 0xD000000000000018;
    sub_AB94A0(v52);
    sub_AB3820();
    sub_497890(&qword_DF9260, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
    v53._countAndFlagsBits = sub_ABB330();
    object = v53._object;
    sub_AB94A0(v53);

    sub_ABAFD0();
    __break(1u);
LABEL_7:
  }

  v12 = type metadata accessor for PlayIntentControlsReusableView();
  v13 = static UICollectionReusableView.reuseIdentifier.getter();
  v15 = UICollectionView.dequeue<A>(_:ofKind:for:reuseIdentifier:)(v12, a2, a3, a4, v13, v14, v12);

  v16 = *&object[direct field offset for BrowseCollectionViewController.textDrawingCache];
  *&v15[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_textDrawingCache] = v16;
  swift_retain_n();

  v17 = *&v15[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_textStackView];
  v18 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
  swift_beginAccess();
  v19 = *(v17 + v18);
  *(v17 + v18) = v16;
  swift_retain_n();
  sub_2E6210(v19);

  sub_AB9220();
  v54._countAndFlagsBits = 0;
  v54._object = 0xE000000000000000;
  sub_AB9210(v54);
  v20 = qword_E09B88;
  sub_AB91F0();
  v55._countAndFlagsBits = 0x73696C79616C5020;
  v55._object = 0xEC00000029732874;
  sub_AB9210(v55);
  sub_AB9240();
  sub_AB3550();
  v21 = sub_AB9320();
  v22 = &v15[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_title];
  *v22 = v21;
  v22[1] = v23;

  sub_413638();
  v24 = [object traitCollection];
  v25 = UITraitCollection.isMediaPicker.getter(v24);

  v26 = 1;
  if (!v25 && *&object[qword_E09B38] > 1uLL)
  {
    v26 = *&object[v20] == 0;
  }

  v15[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_shouldHide] = v26;
  [v15 setHidden:?];
  v27 = v15[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_isBottomHairlineHidden];
  v15[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_isBottomHairlineHidden] = 1;
  if ((v27 & 1) == 0)
  {
    [*&v15[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_bottomHairlineView] setHidden:1];
  }

  v28 = v15[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_isTopHairlineHidden];
  v15[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_isTopHairlineHidden] = 1;
  if ((v28 & 1) == 0)
  {
    [*&v15[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_topHairlineView] setHidden:1];
  }

  v29 = [object traitCollection];
  v30 = [v29 horizontalSizeClass];

  if (v30 == &dword_0 + 2 || (v31 = *&object[qword_DFE290]) != 0 && *(v31 + 32) == 1)
  {
    v32 = v15[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_trailingHairlineAlignment];
    v15[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_trailingHairlineAlignment] = 1;
    if (v32)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v49 = v15[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_trailingHairlineAlignment];
  v15[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_trailingHairlineAlignment] = 0;
  if (v49 == 1)
  {
LABEL_19:
    [v15 setNeedsLayout];
  }

LABEL_20:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEA940, &qword_AF8F90);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_AF4EC0;
  *(v33 + 32) = 0;
  v34 = [object traitCollection];
  v35 = [v34 horizontalSizeClass];

  if (v35 == &dword_0 + 2)
  {
    v33 = sub_6B7E4(&dword_0 + 1, 2, 1, v33);
    *(v33 + 16) = 2;
    *(v33 + 33) = 1;
  }

  v36 = *&v15[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_userInterfaceComponents];
  *&v15[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_userInterfaceComponents] = v33;
  if ((sub_12D0A4(v33, v36) & 1) == 0)
  {
    sub_413EB8();
    [v15 setNeedsLayout];
  }

  v37 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v38 = swift_allocObject();
  *(v38 + 16) = v37;
  *(v38 + 24) = v15;
  v39 = swift_allocObject();
  *(v39 + 16) = sub_497218;
  *(v39 + 24) = v38;
  v40 = &v15[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_playHandler];
  v41 = *&v15[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_playHandler];
  v42 = *&v15[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_playHandler + 8];
  *v40 = sub_140E00;
  v40[1] = v39;
  v43 = v15;

  sub_17654(v41, v42);
  sub_413EB8();
  [v43 setNeedsLayout];

  v44 = swift_allocObject();
  *(v44 + 16) = sub_497218;
  *(v44 + 24) = v38;
  v45 = &v43[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_shuffleHandler];
  v46 = *&v43[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_shuffleHandler];
  v47 = *&v43[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_shuffleHandler + 8];
  *v45 = sub_140E2C;
  v45[1] = v44;

  sub_17654(v46, v47);
  sub_413EB8();
  [v43 setNeedsLayout];

  return v43;
}

void sub_49024C(uint64_t a1, uint64_t a2, void *a3)
{
  v65 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE9D30, &unk_AF79A0);
  __chkstk_darwin();
  v64 = &v62 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510, "\b]\r");
  __chkstk_darwin();
  v6 = &v62 - v5;
  v7 = type metadata accessor for PlaybackIntentDescriptor(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  __chkstk_darwin();
  v11 = &v62 - v10;
  __chkstk_darwin();
  v13 = &v62 - v12;
  __chkstk_darwin();
  v66 = &v62 - v14;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v16 = Strong;
  sub_495EF4(v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {

    sub_12E1C(v6, &unk_DEA510, "\b]\r");
    return;
  }

  v17 = v6;
  v18 = v66;
  sub_28E998(v17, v66, type metadata accessor for PlaybackIntentDescriptor);
  v19 = v16;
  [a3 bounds];
  v77[0] = a3;
  v77[1] = v20;
  v77[2] = v21;
  v77[3] = v22;
  v77[4] = v23;
  v78 = 0;
  PresentationSource.Position.init(source:permittedArrowDirections:)(v77, 15, v69);
  v73[0] = v69[0];
  v73[1] = v69[1];
  v74 = v70;
  v75 = v71;
  v76 = v72;
  v24 = v19;
  v25 = a3;
  v63 = v24;
  PresentationSource.init(viewController:position:)(v24, v73, v68);
  if (qword_DE6838 != -1)
  {
    swift_once();
  }

  sub_497ED4(v18, v13, type metadata accessor for PlaybackIntentDescriptor);
  v26 = v11;
  sub_497ED4(v13, v11, type metadata accessor for PlaybackIntentDescriptor);
  v27 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_497ED4(v13, v27, type metadata accessor for PlaybackIntentDescriptor);
  v28 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v29 = swift_allocObject();
  sub_28E998(v13, v29 + v28, type metadata accessor for PlaybackIntentDescriptor);
  v30 = v65;
  *(v29 + ((v9 + v28 + 7) & 0xFFFFFFFFFFFFFFF8)) = v65;
  sub_10AC20(0);
  v32 = v31;
  sub_10CB1C(0, 0, v31);
  v34 = v33;
  ExplicitRestrictionsController.shared.unsafeMutableAddressor();

  ExplicitRestrictionsController.explicitContentIsAllowed.getter();

  if (v34)
  {
    goto LABEL_7;
  }

  if (v32 > 4)
  {
    if (v32 <= 6)
    {
      if (v32 != 5)
      {
        v60 = swift_allocObject();
        swift_unknownObjectWeakInit();
        sub_15F28(v68, v67);
        v61 = swift_allocObject();
        v61[2] = v60;
        v61[3] = 0;
        sub_17704(v67, (v61 + 4));
        v61[16] = sub_21B5C4;
        v61[17] = v29;

        sub_10DB34(sub_111AA8, v61);

        goto LABEL_8;
      }

      v58 = sub_10FB2C(0, 0);
      v59 = v58;
      goto LABEL_29;
    }

    switch(v32)
    {
      case 7:
LABEL_33:
        sub_1101F4(0, v68);
        goto LABEL_8;
      case 8:
        v54 = sub_AB9990();
        v55 = v64;
        (*(*(v54 - 8) + 56))(v64, 1, 1, v54);
        sub_15F28(v68, v67);
        sub_AB9940();
        v56 = sub_AB9930();
        v57 = swift_allocObject();
        *(v57 + 16) = v56;
        *(v57 + 24) = &protocol witness table for MainActor;
        sub_17704(v67, v57 + 32);
        sub_DBDC8(0, 0, v55, &unk_AF79B0, v57);

        goto LABEL_8;
      case 9:
        sub_10FFD8();
        goto LABEL_8;
    }

LABEL_35:
    sub_497F3C(v27, type metadata accessor for PlaybackIntentDescriptor);
    sub_497F3C(v26, type metadata accessor for PlaybackIntentDescriptor);
    v67[0] = v32;
    sub_ABB450();
    __break(1u);
    return;
  }

  if (v32 > 1)
  {
    if (v32 == 2)
    {
      sub_10F978();
      goto LABEL_8;
    }

    if (v32 == 3)
    {
      v53 = static Alert.cellularRestrictedAlert(model:)(v67, 0);
    }

    else
    {
      v53 = static Alert.networkUnavailableAlert(model:traitCollection:)(v67, 0, 0);
    }

    v59 = Alert.uiAlertController.getter(v53);
    sub_111904(v67);
    v58 = v59;
LABEL_29:
    PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v58, 1, 1, 0, 0);
    UIViewController.dismiss(after:)(480.0);

    goto LABEL_9;
  }

  if (v32)
  {
    if (v32 == 1)
    {
      goto LABEL_33;
    }

    goto LABEL_35;
  }

LABEL_7:
  v41 = PlaybackIntentDescriptor.intent.getter(v40, v35, v36, v37, v38, v39);
  [v41 setShuffleMode:v30];

  v48 = PlaybackIntentDescriptor.intent.getter(v47, v42, v43, v44, v45, v46);
  [v48 setRepeatMode:0];

  sub_37D3DC(0);
LABEL_8:

LABEL_9:
  sub_497F3C(v27, type metadata accessor for PlaybackIntentDescriptor);
  sub_497F3C(v26, type metadata accessor for PlaybackIntentDescriptor);
  v49 = v63;
  v50 = [v63 navigationItem];

  v51 = [v50 searchController];
  if (v51)
  {
    v52 = v51;

    v50 = [v52 searchBar];
    [v50 resignFirstResponder];
  }

  sub_1611C(v68);
  sub_497F3C(v66, type metadata accessor for PlaybackIntentDescriptor);
}

char *sub_490AB0(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = sub_AB3820();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_AB92A0();
  v15 = v14;
  sub_AB3790();
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a1;
  v20 = sub_48FA90(v16, v13, v15, v12);

  (*(v10 + 8))(v12, v9);

  return v20;
}

char *sub_490C10(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0A420, &qword_B11D58);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v97 = v85 - v10;
  v98 = sub_AB3820();
  v11 = *(v98 - 8);
  *&v12 = __chkstk_darwin().n128_u64[0];
  v99 = v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v2 view];
  if (result)
  {
    v15 = result;
    [result music_inheritedLayoutInsets];

    result = [v3 view];
    if (result)
    {
      v16 = result;
      [result effectiveUserInterfaceLayoutDirection];

      sub_AB9E90();
      v17 = v98;
      v18 = v99;
      (*(v11 + 16))(v99, a2, v98);
      v19 = *&v3[qword_DFE2F0];
      if (v19)
      {
        v20 = v19;
        v21 = [v20 results];
        if (v21)
        {
          v22 = v21;
          v95 = v7;
          v96 = a1;

          v23 = v99;
          isa = sub_AB3770().super.isa;
          v25 = [v22 itemAtIndexPath:isa];

          v26 = v25;
          if (v25)
          {
            objc_opt_self();
            v27 = swift_dynamicCastObjCClass();
            if (v27)
            {
              v28 = v27;
              v29 = *&v3[qword_E09B38];
              v30 = v3[qword_E09B38 + 8];
              sub_31828(v29);
              v92 = v26;
              if (v30)
              {
                v88 = sub_1506B4();
                v89 = v31;
LABEL_18:
                sub_31838(v29);
                goto LABEL_21;
              }

              v36 = [v28 curator];
              if (v36)
              {
                v37 = v36;
                v38 = [v36 name];
                if (v38)
                {
                  v39 = v38;
                  v88 = sub_AB92A0();
                  v89 = v40;

                  goto LABEL_18;
                }
              }

              sub_31838(v29);
              v88 = 0;
              v89 = 0;
LABEL_21:
              v41 = static Artwork.Placeholder.playlist(ofType:)([v28 type], &v105);
              v90 = *(&v105 + 1);
              v42 = v107;
              v93 = v105;
              v94 = v106;
              v43 = v108;
              v87 = v109;
              v44 = [v3 traitCollection];
              v45 = [v44 horizontalSizeClass];

              v91 = v42;
              if (v45 == &dword_0 + 1)
              {
                v46 = v99;
                v35 = sub_3B36A4(v99);
                __chkstk_darwin();
                v47 = v88;
                v85[-4] = v28;
                v85[-3] = v47;
                v85[-2] = v89;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0A428, &unk_B11D60);
                sub_497084();
                sub_AB6780();

                sub_AB6AD0();
                v48 = v97;
                sub_AB6770();
                v49 = v95[1];
                v49(v9, v6);
                sub_AB6AF0();
                *(&v114 + 1) = v6;
                *&v115 = sub_36A00(&qword_E0A448, &qword_E0A420, &qword_B11D58, &protocol conformance descriptor for UIHostingConfiguration<A, B>);
                __swift_allocate_boxed_opaque_existential_0(&v113);
                sub_AB6770();
                v49(v48, v6);
                sub_ABA2B0();
                swift_unknownObjectRelease();
                v103[0] = v93;
                sub_12E1C(v103, &unk_DFDE40, &qword_B0C640);
                v100[0] = v90;
                sub_12E1C(v100, &unk_DFDE40, &qword_B0C640);
                v104[0] = v94;
                sub_12E1C(v104, &unk_E00030, &unk_AF98E0);

                (*(v11 + 8))(v46, v98);
              }

              else
              {
                v97 = v43;
                v50 = v94;
                v51 = sub_3B34DC(v99);
                v52 = [v28 name];
                v86 = v28;
                if (v52)
                {
                  v53 = v52;
                  v54 = sub_AB92A0();
                  v56 = v55;
                }

                else
                {
                  v54 = 0;
                  v56 = 0xE000000000000000;
                }

                v57 = &v51[OBJC_IVAR____TtC16MusicApplication9AlbumCell_title];
                swift_beginAccess();
                v58 = *v57;
                v59 = v57[1];
                *v57 = v54;
                v57[1] = v56;
                sub_1AE488(v58, v59);

                if (v89)
                {
                  v60 = v88;
                }

                else
                {
                  v60 = 0;
                }

                if (v89)
                {
                  v61 = v89;
                }

                else
                {
                  v61 = 0xE000000000000000;
                }

                v62 = &v51[OBJC_IVAR____TtC16MusicApplication9AlbumCell_artistName];
                swift_beginAccess();
                v63 = *v62;
                v64 = v62[1];
                *v62 = v60;
                v62[1] = v61;
                sub_1AE788(v63, v64);

                v65 = v93;
                v111 = v90;
                v112 = v93;
                v66 = v90;
                v110 = v50;
                v67 = &v51[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkPlaceholder];
                swift_beginAccess();
                v68 = *v67;
                v95 = *(v67 + 1);
                v96 = v68;
                v69 = *(v67 + 2);
                v88 = *(v67 + 3);
                v89 = v69;
                v70 = *(v67 + 4);
                v85[0] = *(v67 + 5);
                v85[1] = v70;
                sub_15F84(&v112, &v113, &unk_DFDE40, &qword_B0C640);
                sub_15F84(&v111, &v113, &unk_DFDE40, &qword_B0C640);
                sub_15F84(&v110, &v113, &unk_E00030, &unk_AF98E0);
                v71 = v91;
                v72 = v91;
                sub_15F84(&v112, &v113, &unk_DFDE40, &qword_B0C640);
                sub_15F84(&v111, &v113, &unk_DFDE40, &qword_B0C640);
                sub_15F84(&v110, &v113, &unk_E00030, &unk_AF98E0);
                *v67 = v65;
                *(v67 + 1) = v66;
                v73 = v66;
                v74 = v94;
                *(v67 + 2) = v94;
                *(v67 + 3) = v71;
                v75 = v97;
                v76 = v87;
                *(v67 + 4) = v97;
                *(v67 + 5) = v76;
                v77 = v72;
                v35 = v51;
                sub_2F1C8(v96, v95, v89, v88);
                v78 = *&v35[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent];
                v79 = *(v78 + 168);
                v113 = *(v78 + 152);
                v114 = v79;
                v115 = *(v78 + 184);
                *(v78 + 152) = v93;
                *(v78 + 160) = v73;
                *(v78 + 168) = v74;
                *(v78 + 176) = v71;
                *(v78 + 184) = v75;
                *(v78 + 192) = v76;
                sub_15F84(&v112, v103, &unk_DFDE40, &qword_B0C640);
                sub_15F84(&v111, v103, &unk_DFDE40, &qword_B0C640);
                sub_15F84(&v110, v103, &unk_E00030, &unk_AF98E0);
                v80 = v77;
                sub_15F84(&v112, v103, &unk_DFDE40, &qword_B0C640);
                sub_15F84(&v111, v103, &unk_DFDE40, &qword_B0C640);
                sub_15F84(&v110, v103, &unk_E00030, &unk_AF98E0);
                v81 = v80;
                sub_75948(&v113);
                sub_12E1C(&v113, &unk_DF8690, &unk_AF9900);
                sub_12E1C(&v112, &unk_DFDE40, &qword_B0C640);
                sub_12E1C(&v111, &unk_DFDE40, &qword_B0C640);
                sub_12E1C(&v110, &unk_E00030, &unk_AF98E0);

                sub_12E1C(&v112, &unk_DFDE40, &qword_B0C640);
                sub_12E1C(&v111, &unk_DFDE40, &qword_B0C640);
                sub_12E1C(&v110, &unk_E00030, &unk_AF98E0);

                v103[3] = sub_13C80(0, &unk_DE8EA0, MPModelPlaylist_ptr);
                v103[4] = &off_D17A48;
                v103[0] = v86;
                sub_15F84(v103, v100, &unk_DE9C60, &unk_AF8940);
                v82 = v101;
                if (v101)
                {
                  v83 = v102;
                  __swift_project_boxed_opaque_existential_1(v100, v101);
                  swift_unknownObjectRetain();
                  v84 = sub_4CAA30(&off_CEFDE8, v82, v83);
                  __swift_destroy_boxed_opaque_existential_0(v100);
                }

                else
                {
                  swift_unknownObjectRetain();
                  sub_12E1C(v100, &unk_DE9C60, &unk_AF8940);
                  v84 = _swiftEmptyArrayStorage;
                }

                sub_1783C8(v84);
                swift_unknownObjectRelease();

                sub_12E1C(&v112, &unk_DFDE40, &qword_B0C640);
                sub_12E1C(&v111, &unk_DFDE40, &qword_B0C640);
                sub_12E1C(&v110, &unk_E00030, &unk_AF98E0);

                (*(v11 + 8))(v99, v98);
                sub_12E1C(v103, &unk_DE9C60, &unk_AF8940);
              }

              return v35;
            }

            swift_unknownObjectRelease();
            (*(v11 + 8))(v99, v98);
          }

          else
          {
            (*(v11 + 8))(v23, v98);
          }
        }

        else
        {
          (*(v11 + 8))(v99, v98);
        }
      }

      else
      {
        (*(v11 + 8))(v18, v17);
      }

      v32 = sub_13C80(0, &unk_DF0CF0, UICollectionViewListCell_ptr);
      v33 = static UICollectionReusableView.reuseIdentifier.getter();
      v35 = UICollectionView.dequeue<A>(_:forItemAt:reuseIdentifier:)(v32, a2, v33, v34, v32);

      return v35;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_49176C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v30 = a2;
  v32 = a4;
  v31 = sub_AB6CD0();
  v6 = *(v31 - 8);
  __chkstk_darwin();
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MediumPlaylistCell(0);
  *&v10 = __chkstk_darwin().n128_u64[0];
  v12 = (&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = [a1 name];
  if (v13)
  {
    v14 = v13;
    v29 = sub_AB92A0();
    v16 = v15;
  }

  else
  {
    v29 = 0;
    v16 = 0;
  }

  v17 = MPModelPlaylist.preferredArtworkCatalog.getter();
  v18 = v9[7];
  MPModelPlaylistType.variant.getter([a1 type], v12 + v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF8F20, &qword_B045D0);
  (*(*(v19 - 8) + 56))(v12 + v18, 0, 11, v19);
  v20 = [a1 isFavorite];
  v21 = sub_AB74D0();
  v22 = sub_AB6B70();
  v23 = v30;
  *v12 = v29;
  v12[1] = v16;
  v12[2] = v23;
  v12[3] = a3;
  v12[4] = v17;
  v24 = v12 + v9[8];
  *v24 = 0;
  *(v24 + 1) = 0;
  v24[16] = 1;
  *(v12 + v9[9]) = v21;
  *(v12 + v9[10]) = v22;
  *(v12 + v9[11]) = 1;
  *(v12 + v9[12]) = 0;
  *(v12 + v9[13]) = v20;
  *(v12 + v9[14]) = 0;
  v33 = 0x4020000000000000;
  (*(v6 + 104))(v8, enum case for Font.TextStyle.largeTitle(_:), v31);
  sub_8150C();
  sub_AB58E0();
  v25 = v9[16];
  *(v12 + v25) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEB8A0, &qword_AF9B80);
  swift_storeEnumTagMultiPayload();
  __chkstk_darwin();
  *(&v28 - 2) = a1;
  v26 = sub_497890(&qword_E0A438, type metadata accessor for MediumPlaylistCell, &unk_AF9954);
  View.placeholderStyle(_:)(sub_497198, (&v28 - 4), v9, v26);
  return sub_497F3C(v12, type metadata accessor for MediumPlaylistCell);
}

uint64_t sub_491ADC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [a1 type];
  if (v3 == &dword_8 + 1 || v3 == &dword_0 + 3)
  {
    v5 = ArtworkImage.Placeholder.View.Style.accentuated.unsafeMutableAddressor();
    sub_497ED4(v5, a2, type metadata accessor for ArtworkImage.Placeholder.View.Style);
    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a2, v6, 1, v7);
}

char *sub_491B8C(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v11 = a3;
  v12 = a4;
  v13 = a1;
  v14 = sub_490C10(v11, v10);

  (*(v8 + 8))(v10, v7);

  return v14;
}

void sub_491CB4(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3B38B0(a1, a2, a3);
  (*(v8 + 16))(v10, a3, v7);
  v11 = *(v3 + qword_DFE2F0);
  if (!v11)
  {
    goto LABEL_9;
  }

  v12 = v11;
  v13 = [v12 results];
  if (!v13)
  {
    (*(v8 + 8))(v10, v7);

    return;
  }

  v14 = v13;

  isa = sub_AB3770().super.isa;
  v16 = [v14 itemAtIndexPath:isa];

  if (!v16)
  {
    goto LABEL_9;
  }

  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    swift_unknownObjectRelease();
LABEL_9:
    (*(v8 + 8))(v10, v7);
    return;
  }

  v17 = MPModelPlaylist.preferredArtworkCatalog.getter();
  type metadata accessor for HorizontalLockupCollectionViewCell(0);
  v18 = swift_dynamicCastClass();
  if (v18)
  {
    v19 = v18;
    v20 = *(&stru_1F8.flags + (swift_isaMask & *v18));
    v21 = v17;
    v20(v17);
    v22 = *(v19 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_wantsMediaPickerAddButton);
    *(v19 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_wantsMediaPickerAddButton) = 0;
    sub_203DB8(v22);

LABEL_13:
    (*(v8 + 8))(v10, v7);
    swift_unknownObjectRelease();
    return;
  }

  type metadata accessor for VerticalLockupCollectionViewCell(0);
  v23 = swift_dynamicCastClass();
  if (v23)
  {
    (*(&stru_108.reloff + (swift_isaMask & *v23)))(v17);
    goto LABEL_13;
  }

  (*(v8 + 8))(v10, v7);
  swift_unknownObjectRelease();
}

void sub_491FA8(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = sub_AB3820();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a1;
  sub_491CB4(v13, v14, v12);

  (*(v10 + 8))(v12, v9);
}

void sub_4920CC(void *a1, uint64_t a2)
{
  sub_3B41F4(a1, a2);
  isa = sub_AB3770().super.isa;
  [a1 deselectItemAtIndexPath:isa animated:1];

  sub_494F20();
}

void sub_49213C(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v11 = a3;
  v12 = a4;
  v13 = a1;
  sub_3B41F4(v11, v10);
  isa = sub_AB3770().super.isa;
  [v11 deselectItemAtIndexPath:isa animated:1];

  sub_494F20();
  (*(v8 + 8))(v10, v7);
}

uint64_t sub_492284(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v8 = sub_AB3820();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v12 = a3;
  v13 = a4;
  swift_unknownObjectRetain();
  v14 = a1;
  LOBYTE(a1) = sub_497B80(v12, v11);

  swift_unknownObjectRelease();
  (*(v9 + 8))(v11, v8);

  return a1 & 1;
}

void sub_4923B0()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MPModelLibraryRequest) init];
  sub_13C80(0, &qword_DE9C10, MPModelPlaylistEntry_ptr);
  v3 = static MPModelPlaylistEntry.defaultMusicKind.getter();
  v4 = [v0 traitCollection];
  rawValue = UITraitCollection.legacyLibraryFilter.getter().rawValue;

  if ((rawValue & 2) != 0 || (v6 = [v1 traitCollection], v7 = UITraitCollection.isMediaPicker.getter(v6), v6, v7))
  {
    v8 = 4;
  }

  else
  {
    v8 = 0;
  }

  v9 = *&v1[qword_E09B38];
  if (v9 == &dword_0 + 1)
  {
    v10 = 64;
  }

  else
  {
    sub_31828(*&v1[qword_E09B38]);
    v10 = static MPModelPlaylistVariants.playlistsAndFolders.getter();
  }

  v11 = (*(sub_48E79C() + 120) + OBJC_IVAR____TtCC16MusicApplication23LibrarySearchControllerP33_74DC0E8E86C2700EAF59346E7D7979E311BarDelegate_text);
  v12 = v11[1];
  if (v12)
  {
    v13 = *v11;

    v14 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v14 = v13 & 0xFFFFFFFFFFFFLL;
    }

    if (v14)
    {

      if (v9 < 2)
      {
        v10 &= ~8uLL;
      }
    }

    else
    {
    }
  }

  else
  {
  }

  v15 = objc_opt_self();
  v16 = v2;
  v17 = [v15 kindWithVariants:v10 playlistEntryKind:v3 options:v8];
  [v16 setItemKind:v17];

  v18 = sub_AB9260();
  [v16 setLabel:v18];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0, &unk_AF87B0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_AF4EC0;
  *(v19 + 32) = sub_AB92A0();
  *(v19 + 40) = v20;
  isa = sub_AB9740().super.isa;
  v22 = [objc_opt_self() propertySetWithProperties:isa];

  [v16 setSectionProperties:v22];
  if (qword_DE6D50 != -1)
  {
    swift_once();
  }

  [v16 setItemProperties:qword_E71A50];
  sub_13C80(0, &unk_DFDE50, NSSortDescriptor_ptr);

  v23 = sub_AB9740().super.isa;

  [v16 setItemSortDescriptors:v23];

  v24 = sub_48E708();
  v25 = v24;
  if (v24[OBJC_IVAR____TtC16MusicApplication30LibraryFilterOptionsController_filterOption])
  {
    v26 = v24[OBJC_IVAR____TtC16MusicApplication30LibraryFilterOptionsController_contentType];

    v27 = qword_B11E98[v26];
  }

  else
  {
    v27 = *MPMediaLibraryFilteringOptions.none.unsafeMutableAddressor();
  }

  [v16 setFilteringOptions:v27];
  sub_495CA0(v16, 1);
  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v30[4] = sub_497848;
  v30[5] = v28;
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 1107296256;
  v30[2] = sub_151E0;
  v30[3] = &block_descriptor_158_0;
  v29 = _Block_copy(v30);

  [v16 performWithResponseHandler:v29];

  _Block_release(v29);
  sub_31838(v9);
}

double sub_49283C(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    *(v7 + 24) = a1;
    v8 = a1;
    v9 = v6;
    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_15C864, v7);
  }

  return result;
}

void sub_492904(void *a1)
{
  v2 = v1;
  v4 = [v1 traitCollection];
  v5 = v4;
  v6 = &v1[qword_E09B80];
  *v6 = 0;
  *(v6 + 1) = 0;
  v6[16] = 1;
  v7 = qword_DFE2F8;
  if (!*&v1[qword_DFE2F8])
  {
    v11 = a1;
    goto LABEL_13;
  }

  if ([v4 horizontalSizeClass] == &dword_0 + 1)
  {
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {
      [v1 loadViewIfNeeded];
      v8 = *&v1[v7];
      if (!v8)
      {
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v9 = v8;
      v10 = sub_49414C();
      goto LABEL_10;
    }
  }

  else
  {
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {
      [v1 loadViewIfNeeded];
      v12 = *&v1[v7];
      if (!v12)
      {
LABEL_23:
        __break(1u);
        return;
      }

      v13 = objc_allocWithZone(UICollectionViewFlowLayout);
      v9 = v12;
      v10 = [v13 init];
LABEL_10:
      v14 = v10;
      [v9 setCollectionViewLayout:v10];
    }
  }

  [v2 loadViewIfNeeded];
  v15 = *&v2[v7];
  if (!v15)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v11 = [v15 collectionViewLayout];
LABEL_13:
  v16 = v11;
  sub_13C80(0, &qword_E0A450, UICollectionViewLayout_ptr);
  v20 = v16;
  LOBYTE(v16) = sub_ABA790();

  if ((v16 & 1) == 0)
  {
    [v2 loadViewIfNeeded];
    v19 = *&v2[v7];
    if (v19)
    {
      v18 = v19;
      [v18 reloadData];
      goto LABEL_17;
    }

    goto LABEL_21;
  }

  [swift_getObjCClassFromObject() invalidationContextClass];
  swift_getObjCClassMetadata();
  sub_13C80(0, &unk_DFED50, UICollectionViewLayoutInvalidationContext_ptr);
  swift_dynamicCastMetatypeUnconditional();
  v17 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v20 invalidateLayoutWithContext:v17];
  v18 = v20;
  v20 = v17;
LABEL_17:
}

double sub_492BAC(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = sub_AB3820();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a1;
  v17 = sub_495B60();

  (*(v10 + 8))(v12, v9);
  return v17;
}

void sub_492CE0(void *a1)
{
  v1 = a1;
  v2 = [v1 view];
  if (v2)
  {
    v3 = v2;
    [v2 music_inheritedLayoutInsets];
  }

  else
  {
    __break(1u);
  }
}

double sub_492D60(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  sub_497D90(v6);
  v10 = v9;

  return v10;
}

uint64_t sub_492DD0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    v4 = *(v2 + qword_DFE2F0);
    if (v4 && (v5 = [v4 results]) != 0 && (v6 = v5, v7 = objc_msgSend(v5, "numberOfSections"), v6, v7 >= 1) && sub_497570(0) >= 1)
    {
      sub_AB37C0();
      v8 = 0;
    }

    else
    {
      v8 = 1;
    }

    v9 = sub_AB3820();
    v10 = *(*(v9 - 8) + 56);

    return v10(a2, v8, 1, v9);
  }

  else
  {
    __break(1u);
  }

  return result;
}

Class sub_492EC0(void *a1, uint64_t a2, void *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v6 = &v15 - v5;
  v7 = a3;
  v8 = a1;
  sub_492DD0(a3, v6);

  v9 = sub_AB3820();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 48))(v6, 1, v9);
  v12 = 0;
  if (v11 != 1)
  {
    isa = sub_AB3770().super.isa;
    (*(v10 + 8))(v6, v9);
    v12 = isa;
  }

  return v12;
}

void *sub_493000()
{
  v1 = qword_E09B58;
  if (*&v0[qword_E09B58])
  {
    v2 = *&v0[qword_E09B58];
LABEL_5:

    return v2;
  }

  result = [v0 loadViewIfNeeded];
  v4 = *&v0[qword_DFE2F8];
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0A388, &qword_B11CC0);
    swift_allocObject();
    v2 = sub_2BF850(v0, v4, 1, 0);
    *&v0[v1] = v2;

    goto LABEL_5;
  }

  __break(1u);
  return result;
}

double sub_4930CC@<D0>(char *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0, &qword_AFC930);
  __chkstk_darwin();
  v4 = &v16[-v3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0A418, &qword_B11D50);
  __chkstk_darwin();
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v8 = &v16[-v7];
  v9 = qword_E09B60;
  swift_beginAccess();
  sub_15F84(v1 + v9, v8, &qword_E0A418, &qword_B11D50);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF1330, &qword_AF9120);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) == 1)
  {
    sub_12E1C(v8, &qword_E0A418, &qword_B11D50);
    if (*(v1 + qword_E09B38) == 1)
    {
      v12 = sub_AB31C0();
      (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
      MetricsPageProperties.init(pageIdentifier:pageType:pageURL:pageDetails:extRefUrl:)(0x59726F466564614DLL, 0xEA0000000000756FLL, 0x7972617262694CLL, 0xE700000000000000, v4, 0, 0, 0, a1);
      v13 = 0;
    }

    else
    {
      v13 = 1;
    }

    v15 = type metadata accessor for MetricsPageProperties(0);
    (*(*(v15 - 8) + 56))(a1, v13, 1, v15);
    sub_15F84(a1, v6, &unk_DF1330, &qword_AF9120);
    (*(v11 + 56))(v6, 0, 1, v10);
    swift_beginAccess();
    sub_4977D8(v6, v1 + v9);
    swift_endAccess();
  }

  else
  {
    sub_36B0C(v8, a1, &unk_DF1330, &qword_AF9120);
  }

  return result;
}

void sub_4933E8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF1330, &qword_AF9120);
  __chkstk_darwin();
  v3 = &v29[-v2 - 8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v5 = &v29[-v4 - 8];
  v6 = sub_AB3430();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v29[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  if (*(v1 + qword_E09B38) == 1)
  {
    v28 = v3;
    sub_493000();
    v31 = 0;
    memset(v30, 0, sizeof(v30));
    sub_AB3420();
    sub_15F84(v30, v29, &qword_DF2BD0, &unk_AFDC00);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF2BD0, &unk_AFDC00);
    v10 = sub_AB3820();
    v11 = swift_dynamicCast();
    (*(*(v10 - 8) + 56))(v5, v11 ^ 1u, 1, v10);
    v12 = sub_2CBD5C(2u, v9, v5);
    (*(v7 + 8))(v9, v6);
    sub_12E1C(v30, &qword_DF2BD0, &unk_AFDC00);
    sub_12E1C(v5, &unk_DE8E20, &qword_AF7990);

    if (!v12)
    {
LABEL_20:

      sub_2E4810(v27);

      return;
    }

    if (v12 >> 62)
    {
      v13 = sub_ABB060();
      if (v13)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v13 = *(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8));
      if (v13)
      {
LABEL_5:
        *&v30[0] = _swiftEmptyArrayStorage;
        sub_6D410(0, v13 & ~(v13 >> 63), 0);
        if (v13 < 0)
        {
          __break(1u);
          return;
        }

        v15 = *&v30[0];
        if ((v12 & 0xC000000000000001) != 0)
        {
          for (i = 0; i != v13; ++i)
          {
            v17 = *(sub_35FC58(i, v12, v14) + OBJC_IVAR____TtC11MusicJSCore12JSImpression_fields);

            swift_unknownObjectRelease();
            *&v30[0] = v15;
            v19 = v15[2];
            v18 = v15[3];
            if (v19 >= v18 >> 1)
            {
              sub_6D410((v18 > 1), v19 + 1, 1);
              v15 = *&v30[0];
            }

            v15[2] = v19 + 1;
            v15[v19 + 4] = v17;
          }
        }

        else
        {
          v20 = (v12 + 32);
          do
          {
            v21 = *(*v20 + OBJC_IVAR____TtC11MusicJSCore12JSImpression_fields);
            *&v30[0] = v15;
            v23 = v15[2];
            v22 = v15[3];

            if (v23 >= v22 >> 1)
            {
              sub_6D410((v22 > 1), v23 + 1, 1);
              v15 = *&v30[0];
            }

            v15[2] = v23 + 1;
            v15[v23 + 4] = v21;
            ++v20;
            --v13;
          }

          while (v13);
        }

        goto LABEL_19;
      }
    }

    v15 = _swiftEmptyArrayStorage;
LABEL_19:
    v24 = *MetricsReportingController.shared.unsafeMutableAddressor();
    v25 = v28;
    v26 = sub_4930CC(v28);
    (*(&stru_68.flags + (swift_isaMask & *v24)))(v15, v25, 0, 0, 0, 0, 0, v26);
    sub_12E1C(v25, &unk_DF1330, &qword_AF9120);

    goto LABEL_20;
  }
}

void sub_49388C(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_AB3820();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin();
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, a1, v5, v7);
  v10 = *&v2[qword_DFE2F0];
  if (!v10)
  {
    goto LABEL_11;
  }

  v11 = v10;
  v12 = [v11 results];
  if (!v12)
  {
    (*(v6 + 8))(v9, v5);

    goto LABEL_12;
  }

  v13 = v12;
  v14 = v2;

  isa = sub_AB3770().super.isa;
  v16 = [v13 itemAtIndexPath:isa];

  if (!v16)
  {
LABEL_11:
    (*(v6 + 8))(v9, v5);
    goto LABEL_12;
  }

  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  if (!v17)
  {
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  v18 = v17;
  [v14 loadViewIfNeeded];
  v19 = *&v14[qword_DFE2F8];
  if (v19)
  {
    v20 = v19;
    v21 = UICollectionView.globalIndex(for:)();
    v23 = v22;

    if ((v23 & 1) == 0)
    {
      v35 = v21;
      sub_27A160(v18, &v72);
      v75 = v73;
      v76 = v72;
      v70 = v72;
      v71 = v73;
      v28 = v74;
      v29 = sub_279AC8(v74);
      HIDWORD(v34) = v28;
      if (v29 == 0x497972617262696CLL && v30 == 0xEB000000006D6574)
      {
        v31 = 0;
      }

      else
      {
        v31 = sub_ABB3C0() ^ 1;
      }

      sub_15F84(&v76, &v77, &unk_DEE6F0, &unk_AF8970);
      sub_15F84(&v75, &v77, &unk_DEE6F0, &unk_AF8970);

      (*(v6 + 8))(v9, v5);
      sub_28D048(&v72);
      v36 = v70;
      v37 = v71;
      v32 = v35;
      *&v38 = 3;
      *(&v38 + 1) = v35;
      LOWORD(v39[0]) = 512;
      v33 = BYTE4(v34);
      BYTE2(v39[0]) = BYTE4(v34);
      *(v39 + 3) = v68;
      BYTE7(v39[0]) = v69;
      *(v39 + 8) = 0u;
      *(&v39[1] + 8) = 0u;
      *(&v39[2] + 8) = 0u;
      *(&v39[3] + 8) = 0u;
      *(&v39[4] + 1) = 0;
      LOBYTE(v40[0]) = v31 & 1;
      *(v40 + 1) = *v67;
      DWORD1(v40[0]) = *&v67[3];
      *(&v40[0] + 1) = 0;
      *&v40[1] = 0;
      BYTE8(v40[1]) = 2;
      sub_465F4(&v36, &v77);
      swift_unknownObjectRelease();
      v41[0] = v70;
      v41[1] = v71;
      v42 = 3;
      v43 = v32;
      v44 = 512;
      v45 = v33;
      v46 = v68;
      v47 = v69;
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      v52 = 0;
      v53 = v31 & 1;
      *v54 = *v67;
      *&v54[3] = *&v67[3];
      v55 = 0;
      v56 = 0;
      v57 = 2;
      sub_46650(v41);
      v64 = v39[3];
      v65 = v39[4];
      v66[0] = v40[0];
      *(v66 + 9) = *(v40 + 9);
      v60 = v38;
      v61 = v39[0];
      v62 = v39[1];
      v63 = v39[2];
      v58 = v36;
      v59 = v37;
      UIScreen.Dimensions.size.getter();
      v83 = v64;
      v84 = v65;
      v85[0] = v66[0];
      *(v85 + 9) = *(v66 + 9);
      v79 = v60;
      v80 = v61;
      v81 = v62;
      v82 = v63;
      v77 = v58;
      v78 = v59;
      goto LABEL_13;
    }

    (*(v6 + 8))(v9, v5);
    swift_unknownObjectRelease();
LABEL_12:
    sub_465CC(&v77);
LABEL_13:
    v24 = v84;
    a2[6] = v83;
    a2[7] = v24;
    a2[8] = v85[0];
    *(a2 + 137) = *(v85 + 9);
    v25 = v80;
    a2[2] = v79;
    a2[3] = v25;
    v26 = v82;
    a2[4] = v81;
    a2[5] = v26;
    v27 = v78;
    *a2 = v77;
    a2[1] = v27;
    return;
  }

  __break(1u);
}

void *sub_493D58()
{
  v1 = qword_E09B68;
  if (*&v0[qword_E09B68])
  {
    v2 = *&v0[qword_E09B68];
  }

  else
  {
    v2 = sub_493DC0(v0);
    *&v0[v1] = v2;
  }

  return v2;
}

void *sub_493DC0(void *a1)
{
  result = [a1 view];
  if (result)
  {
    v2 = result;
    type metadata accessor for LibraryNoContentStateController();
    swift_allocObject();
    v3 = sub_3E2914(v2);
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v5 = v3[6];
    v6 = v3[7];
    v3[6] = sub_9D2B0;
    v3[7] = v4;

    sub_17654(v5, v6);

    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v8 = v3[27];
    v9 = v3[28];
    v3[27] = sub_497568;
    v3[28] = v7;

    sub_17654(v8, v9);

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_493EFC(uint64_t a1@<X1>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_7;
  }

  v6 = Strong;
  v7 = sub_48E79C();

  v8 = (*(v7 + 120) + OBJC_IVAR____TtCC16MusicApplication23LibrarySearchControllerP33_74DC0E8E86C2700EAF59346E7D7979E311BarDelegate_text);
  v9 = v8[1];
  if (!v9)
  {

LABEL_7:
    v12 = 0;
    goto LABEL_8;
  }

  v10 = *v8;

  v11 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v11 = v10 & 0xFFFFFFFFFFFFLL;
  }

  v12 = v11 != 0;
LABEL_8:
  swift_beginAccess();
  v13 = swift_unknownObjectWeakLoadStrong();
  if (v13 && (v14 = v13, v15 = sub_48E708(), v14, sub_4F4414(v12, v33), v15, *(&v33[0] + 1) != 1))
  {
    v18 = v35;
    v16 = v36;
    v17 = v34;
    v25 = v33[2];
    v24 = v33[3];
    v26 = v33[1];
    v27 = v33[0];
  }

  else
  {
    if (v12)
    {
      if (qword_DE6BD0 != -1)
      {
        swift_once();
      }

      v40 = xmmword_E717A8;
      v41 = xmmword_E717B8;
      v38 = xmmword_E71788;
      v39 = xmmword_E71798;
      v37 = xmmword_E71778;
      v16 = qword_E717C8;
      v42 = qword_E717C8;
      v18 = *(&xmmword_E717B8 + 1);
      v17 = xmmword_E717B8;
      v30 = xmmword_E71798;
      v31 = xmmword_E717A8;
      v28 = xmmword_E71778;
      v29 = xmmword_E71788;
      v19 = &v37;
      v20 = &v32;
      goto LABEL_18;
    }

    swift_beginAccess();
    v21 = swift_unknownObjectWeakLoadStrong();
    if (!v21)
    {
      v18 = *(a1 + 72);
      v16 = *(a1 + 80);
      v17 = *(a1 + 64);
      v30 = *(a1 + 32);
      v31 = *(a1 + 48);
      v28 = *a1;
      v29 = *(a1 + 16);
      v20 = &v37;
      v19 = a1;
LABEL_18:
      sub_576EC(v19, v20);
      v27 = v28;
      v26 = v29;
      v25 = v30;
      v24 = v31;
      goto LABEL_19;
    }

    v22 = *(v21 + qword_E09B38);
    v23 = v21;
    sub_31828(v22);

    sub_48DA20(v22, &v37);
    sub_31838(v22);
    v18 = *(&v41 + 1);
    v16 = v42;
    v17 = v41;
    v25 = v39;
    v24 = v40;
    v27 = v37;
    v26 = v38;
  }

LABEL_19:
  *a3 = v27;
  *(a3 + 16) = v26;
  *(a3 + 32) = v25;
  *(a3 + 48) = v24;
  *(a3 + 64) = v17;
  *(a3 + 72) = v18;
  *(a3 + 80) = v16;
}

id sub_49414C()
{
  v1 = qword_E09B70;
  v2 = *(v0 + qword_E09B70);
  if (v2)
  {
    v3 = *(v0 + qword_E09B70);
  }

  else
  {
    v4 = sub_4941B0(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_4941B0(uint64_t a1)
{
  v18[1] = a1;
  v18[0] = sub_AB52B0();
  v1 = *(v18[0] - 8);
  __chkstk_darwin();
  v3 = v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_AB5170();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_AB5290();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB5320();
  v12 = swift_allocBox();
  (*(v9 + 104))(v11, enum case for UICollectionLayoutListConfiguration.Appearance.plain(_:), v8);
  sub_AB52C0();
  (*(v5 + 104))(v7, enum case for UIListSeparatorConfiguration.Visibility.hidden(_:), v4);
  v13 = sub_AB5270();
  sub_AB5130();
  v13(aBlock, 0);
  (*(v1 + 104))(v3, enum case for UICollectionLayoutListConfiguration.HeaderMode.supplementary(_:), v18[0]);
  sub_AB52E0();
  sub_AB5300();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_AB5310();
  v14 = objc_allocWithZone(UICollectionViewCompositionalLayout);
  aBlock[4] = sub_497560;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_496F34;
  aBlock[3] = &block_descriptor_152_0;
  v15 = _Block_copy(aBlock);

  v16 = [v14 initWithSectionProvider:v15];
  _Block_release(v15);

  return v16;
}

void sub_49452C(uint64_t a1@<X1>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [v6 view];
    if (v7)
    {
      v8 = v7;
      [v7 music_inheritedLayoutInsets];

      v9 = [v6 view];
      if (v9)
      {
        v10 = v9;
        [v9 effectiveUserInterfaceLayoutDirection];

        sub_AB9E90();
        v12 = [v6 traitCollection];

        v13 = [v12 preferredContentSizeCategory];
        sub_ABA320();

        v14 = sub_AB5180();
        (*(*(v14 - 8) + 16))(a3, a1, v14);
        sub_AB5140();
        sub_AB5160();

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    v11 = sub_AB5180();
    (*(*(v11 - 8) + 16))(a3, a1, v11);
  }
}

void *sub_49476C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = sub_AB5320();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_projectBox();
  sub_13C80(0, &qword_DF0D20, NSCollectionLayoutSection_ptr);
  swift_beginAccess();
  (*(v6 + 16))(v8, v9, v5);
  v10 = sub_ABA400();
  (*(v6 + 8))(v8, v5);
  v11 = [a2 traitCollection];
  LOBYTE(a2) = UITraitCollection.isMediaPicker.getter(v11);

  if (a2)
  {
    sub_13C80(0, &qword_DF9290, NSCollectionLayoutBoundarySupplementaryItem_ptr);
    isa = sub_AB9740().super.isa;
    [v10 setBoundarySupplementaryItems:isa];
  }

  else if (!a1)
  {
    v13 = [v10 boundarySupplementaryItems];
    sub_13C80(0, &qword_DF9290, NSCollectionLayoutBoundarySupplementaryItem_ptr);
    v14 = sub_AB9760();
    v15 = v14;
    if (v14 >> 62)
    {
      goto LABEL_16;
    }

    for (i = *(&dword_10 + (v14 & 0xFFFFFFFFFFFFFF8)); i; i = sub_ABB060())
    {
      v17 = 0;
      while (1)
      {
        if ((v15 & 0xC000000000000001) != 0)
        {
          v18 = sub_361458(v17, v15);
        }

        else
        {
          if (v17 >= *(&dword_10 + (v15 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_15;
          }

          v18 = *(v15 + 8 * v17 + 32);
        }

        v19 = v18;
        v20 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        [v18 setPinToVisibleBounds:0];

        ++v17;
        if (v20 == i)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      ;
    }

LABEL_17:
  }

  return v10;
}

void sub_494A24(char a1)
{
  v2 = v1;
  v4 = [v1 traitCollection];
  v19 = *&v1[qword_E09B78];

  v5 = sub_48E708();
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = &v5[OBJC_IVAR____TtC16MusicApplication30LibraryFilterOptionsController_filterOptionDidChange];
  v8 = *&v5[OBJC_IVAR____TtC16MusicApplication30LibraryFilterOptionsController_filterOptionDidChange];
  v9 = *&v5[OBJC_IVAR____TtC16MusicApplication30LibraryFilterOptionsController_filterOptionDidChange + 8];
  *v7 = sub_49750C;
  v7[1] = v6;

  sub_17654(v8, v9);

  v10 = *&v2[qword_E09B20];
  v11 = *&v2[qword_E09B28];
  v12 = sub_4F46B0();
  sub_13C80(0, &qword_DF1D50, UIMenu_ptr);
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = v10;

  v15 = static UIMenu.lazy(title:image:options:cached:childrenProvider:)(0, 0, 0, (&dword_0 + 1), 0, sub_14176C, v14);

  UIBarButtonItem.primaryActionKind.setter(v15, 1);

  v16 = *&v11[OBJC_IVAR____TtC16MusicApplication30LibraryFilterOptionsController____lazy_storage___filterBarButtonItem];
  sub_AB9730();
  if (*(&dword_10 + (v19 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v19 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_AB97A0();
  }

  sub_AB97F0();
  v17 = [v2 navigationItem];
  sub_13C80(0, &unk_DF12E0, UIBarButtonItem_ptr);
  isa = sub_AB9740().super.isa;

  [v17 setRightBarButtonItems:isa animated:a1 & 1];
}

void sub_494CF0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_4923B0();
  }
}

void sub_494D44()
{
  v1 = v0;
  [v0 loadViewIfNeeded];
  v2 = *&v0[qword_DFE2F8];
  if (v2)
  {
    v3 = v2;
    [v3 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v12 = [v0 traitCollection];
    v13 = sub_45B2C4(v12, v5, v7, v9, v11);

    [v3 music_inheritedLayoutInsets];
    v16.origin.x = v5;
    v16.origin.y = v7;
    v16.size.width = v9;
    v16.size.height = v11;
    Width = CGRectGetWidth(v16);
    sub_471A4();
    sub_AB38F0();
    v14 = [v1 traitCollection];
    [v14 displayScale];

    v17.origin.x = v5;
    v17.origin.y = v7;
    v17.size.width = v9;
    v17.size.height = v11;
    CGRectGetWidth(v17);
    if (!__OFSUB__(v13, 1))
    {
      sub_AB3A00();

      return;
    }

    __break(1u);
  }

  __break(1u);
}