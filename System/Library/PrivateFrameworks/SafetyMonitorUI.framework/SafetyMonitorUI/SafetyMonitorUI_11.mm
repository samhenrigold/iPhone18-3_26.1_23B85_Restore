uint64_t sub_264744D68(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for SafetyCacheMapView.Annotation(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF766A8, &unk_26478AA80);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v21 - v12;
  v14 = type metadata accessor for SafetyMonitorUINavigationPathItem(0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264757764(v2, v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF762F8, &qword_264789EC0);
  v18 = (*(*(v17 - 8) + 48))(v16, 3, v17);
  if (v18 > 1)
  {
    if (v18 == 2)
    {
      v19 = 1;
    }

    else
    {
      v19 = 3;
    }

    return MEMORY[0x26673FC80](v19);
  }

  if (v18)
  {
    v19 = 0;
    return MEMORY[0x26673FC80](v19);
  }

  sub_26460E7E4(v16, v13, &qword_27FF766A8, &unk_26478AA80);
  MEMORY[0x26673FC80](2);
  sub_2647577C8(v13, v11);
  if ((*(v5 + 48))(v11, 1, v4) == 1)
  {
    sub_264785F64();
  }

  else
  {
    sub_2646F5518(v11, v7);
    sub_264785F64();
    sub_2646E9AF0(a1);
    sub_264757838(v7, type metadata accessor for SafetyCacheMapView.Annotation);
  }

  return sub_26460CD50(v13, &qword_27FF766A8, &unk_26478AA80);
}

uint64_t sub_26474500C()
{
  sub_264785F44();
  sub_264744D68(v1);
  return sub_264785F94();
}

uint64_t sub_264745050(uint64_t a1)
{
  sub_264785F44();
  sub_264744D68(v2);
  return sub_264785F94();
}

uint64_t static Color.transcriptBackgroundColor.getter()
{
  v0 = sub_264785154();
  MEMORY[0x28223BE20](v0);
  (*(v2 + 104))(&v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CE0EE0]);
  sub_264785224();
  v3 = sub_2647851F4();

  return v3;
}

uint64_t sub_264745194()
{
  sub_2647851D4();
  v0 = sub_2647851F4();

  qword_27FF792D8 = v0;
  return result;
}

uint64_t sub_2647451FC()
{
  v0 = sub_264785714();
  v1 = [objc_opt_self() bundleWithIdentifier_];

  result = sub_264785234();
  qword_27FF792E0 = result;
  return result;
}

uint64_t sub_264745294()
{
  v0 = sub_264785714();
  v1 = [objc_opt_self() bundleWithIdentifier_];

  result = sub_264785234();
  qword_27FF792E8 = result;
  return result;
}

uint64_t sub_264745354()
{
  v0 = objc_allocWithZone(MEMORY[0x277D75348]);
  v3[4] = sub_264745DC4;
  v3[5] = 0;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 1107296256;
  v3[2] = sub_26474DD7C;
  v3[3] = &block_descriptor_152_0;
  v1 = _Block_copy(v3);
  [v0 initWithDynamicProvider_];
  _Block_release(v1);

  result = sub_264785134();
  qword_27FF792F0 = result;
  return result;
}

uint64_t sub_264745468()
{
  v0 = sub_264785714();
  v1 = [objc_opt_self() bundleWithIdentifier_];

  result = sub_264785234();
  qword_27FF792F8 = result;
  return result;
}

uint64_t sub_264745528()
{
  if (qword_27FF753E8 != -1)
  {
    swift_once();
  }

  v0 = qword_27FF79330;
  result = sub_264785134();
  qword_27FF79300 = result;
  return result;
}

uint64_t sub_2647455A8()
{
  v0 = objc_allocWithZone(MEMORY[0x277D75348]);
  v4[4] = sub_264745B0C;
  v4[5] = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 1107296256;
  v4[2] = sub_26474DD7C;
  v4[3] = &block_descriptor_149_0;
  v1 = _Block_copy(v4);
  [v0 initWithDynamicProvider_];
  _Block_release(v1);

  sub_264785134();
  v2 = sub_2647851F4();

  qword_27FF79308 = v2;
  return result;
}

uint64_t sub_2647456DC(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

id sub_26474575C(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(MEMORY[0x277D75348]);
  v8[4] = a1;
  v8[5] = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_26474DD7C;
  v8[3] = a2;
  v5 = _Block_copy(v8);
  v6 = [v4 initWithDynamicProvider_];
  _Block_release(v5);

  return v6;
}

id sub_264745818()
{
  result = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.121568627 green:0.105882353 blue:0.0392156863 alpha:1.0];
  qword_27FF79310 = result;
  return result;
}

id sub_26474586C()
{
  result = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.980392157 green:0.964705882 blue:0.858823529 alpha:1.0];
  qword_27FF79318 = result;
  return result;
}

id sub_2647458BC()
{
  result = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
  qword_27FF79320 = result;
  return result;
}

id sub_264745900()
{
  result = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.321568627 green:0.145098039 blue:0.0 alpha:1.0];
  qword_27FF79328 = result;
  return result;
}

id sub_26474594C()
{
  result = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.321568627 green:0.145098039 blue:0.0 alpha:1.0];
  qword_27FF79330 = result;
  return result;
}

void sub_2647459BC()
{
  v0 = [objc_opt_self() systemBackgroundColor];
  v1 = [v0 colorWithAlphaComponent_];

  qword_27FF79338 = v1;
}

id sub_264745A4C()
{
  result = [objc_opt_self() clearColor];
  qword_27FF79340 = result;
  return result;
}

id sub_264745AAC(void *a1, void **a2, uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = *a2;
  }

  else
  {
    swift_once();
    v4 = *a2;
  }

  return v4;
}

id sub_264745B0C(void *a1)
{
  if ([a1 userInterfaceStyle] == 2)
  {
    if (qword_27FF753C8 != -1)
    {
      swift_once();
    }

    v1 = &qword_27FF79310;
  }

  else
  {
    if (qword_27FF753D0 != -1)
    {
      swift_once();
    }

    v1 = &qword_27FF79318;
  }

  v2 = *v1;

  return v2;
}

Class sub_264745BBC(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = [v2 secondarySystemFillColor];
  v4 = [v3 resolvedColorWithTraitCollection_];

  v5 = [v2 systemBackgroundColor];
  v6 = [v5 resolvedColorWithTraitCollection_];

  isa = UIColor.blending(with:)(v4).super.isa;
  return isa;
}

UIColor __swiftcall UIColor.blending(with:)(UIColor with)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v10 = 0.0;
  v11[0] = 0.0;
  v8 = 0.0;
  v9 = 0.0;
  [v1 getRed:v11 green:&v10 blue:&v9 alpha:&v8];
  v6 = 0.0;
  v7 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  [(objc_class *)with.super.isa getRed:&v7 green:&v6 blue:&v5 alpha:&v4];
  return [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:v7 * v4 + v11[0] * v8 * (1.0 - v4) green:v4 * v6 + (1.0 - v4) * (v8 * v10) blue:v4 * v5 + (1.0 - v4) * (v8 * v9) alpha:v4 + v8 * (1.0 - v4)];
}

id sub_264745DC4(void *a1)
{
  if ([a1 userInterfaceStyle] == 2)
  {
    if (qword_27FF753D8 != -1)
    {
      swift_once();
    }

    v1 = &qword_27FF79320;
  }

  else
  {
    if (qword_27FF753E0 != -1)
    {
      swift_once();
    }

    v1 = &qword_27FF79328;
  }

  v2 = *v1;

  return v2;
}

uint64_t static SafetyMonitorUIUtilities.batteryIcon.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_264785274();
  v3 = sub_2647851E4();
  result = swift_getKeyPath();
  *a1 = v2;
  a1[1] = result;
  a1[2] = v3;
  return result;
}

uint64_t static SafetyMonitorUIUtilities.connectivityIcon.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_264785274();
  v3 = sub_264785144();
  result = swift_getKeyPath();
  *a1 = v2;
  a1[1] = result;
  a1[2] = v3;
  return result;
}

uint64_t static SafetyMonitorUIUtilities.locationIcon.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_264785274();
  v3 = sub_2647851B4();
  result = swift_getKeyPath();
  *a1 = v2;
  a1[1] = result;
  a1[2] = v3;
  return result;
}

uint64_t sub_2647467A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76378, &unk_264789F90);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v18 - v11;
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  sub_264611394(a1, a2);
  sub_264785334();
  v14 = *(v7 + 16);
  v14(v10, v12, v6);
  *a3 = 0;
  *(a3 + 8) = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77330, &qword_264791A60);
  v14((a3 + *(v15 + 48)), v10, v6);
  v16 = *(v7 + 8);
  v16(v12, v6);
  return (v16)(v10, v6);
}

uint64_t (*sub_264746980(uint64_t (*result)(void)))(void)
{
  if (result)
  {
    return result();
  }

  return result;
}

uint64_t sub_2647469B0@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FF75180 != -1)
  {
    swift_once();
  }

  sub_264613FC4();

  v2 = sub_264784E44();
  v4 = v3;
  v6 = v5;
  v7 = sub_264784E14();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  sub_26460ECC4(v2, v4, v6 & 1);

  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v13;
  return result;
}

uint64_t static SafetyMonitorUIUtilities.receiverDetailTitleText(for:displayName:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v73 = a2;
  v74 = a3;
  v75 = sub_264783E24();
  v6 = *(v75 - 8);
  v7 = MEMORY[0x28223BE20](v75);
  v9 = v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v72 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v72 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = v72 - v16;
  v18 = sub_264783B94();
  MEMORY[0x28223BE20](v18 - 8);
  v20 = v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_264785704();
  MEMORY[0x28223BE20](v21 - 8);
  v22 = sub_2647856E4();
  MEMORY[0x28223BE20](v22 - 8);
  if (!a1)
  {
    sub_264783DE4();
    v29 = sub_264783E14();
    v30 = sub_2647859D4();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v33 = v6;
      v34 = swift_slowAlloc();
      v76[0] = v34;
      *v31 = 136315650;
      v77 = v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79348, &unk_264791230);
      v35 = sub_264785764();
      v37 = sub_2646DF234(v35, v36, v76);

      *(v31 + 4) = v37;
      *(v31 + 12) = 2080;
      *(v31 + 14) = sub_2646DF234(0xD000000000000029, 0x800000026479A530, v76);
      *(v31 + 22) = 2112;
      *(v31 + 24) = 0;
      *v32 = 0;
      _os_log_impl(&dword_264605000, v29, v30, "%s,%s: Invalid Session Status, %@", v31, 0x20u);
      sub_26460CD50(v32, &qword_27FF779D0, &qword_26478A9A0);
      MEMORY[0x266740650](v32, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x266740650](v34, -1, -1);
      MEMORY[0x266740650](v31, -1, -1);

      (*(v33 + 8))(v9, v75);
    }

    else
    {

      (*(v6 + 8))(v9, v75);
    }

    return 0;
  }

  v72[0] = v6;
  v72[1] = v20;
  v23 = [a1 sessionType];
  v24 = [a1 sessionState];
  v25 = [a1 triggerType];
  v26 = [a1 isSOSTrigger];
  if ((v24 - 3) >= 3 && v24 != 9)
  {
    if (v24 == 2)
    {
      if (v23 != 4 && v23 != 2 && v23 != 1)
      {
        sub_264783DE4();
        v59 = sub_264783E14();
        v60 = sub_2647859D4();
        if (os_log_type_enabled(v59, v60))
        {
          v61 = swift_slowAlloc();
          v62 = swift_slowAlloc();
          v76[0] = v62;
          *v61 = 136315650;
          v77 = v4;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79348, &unk_264791230);
          v63 = sub_264785764();
          v65 = sub_2646DF234(v63, v64, v76);

          *(v61 + 4) = v65;
          *(v61 + 12) = 2080;
          *(v61 + 14) = sub_2646DF234(0xD000000000000029, 0x800000026479A530, v76);
          *(v61 + 22) = 2080;
          v66 = [objc_opt_self() sessionTypeToString_];
          v67 = sub_264785724();
          v69 = v68;

          v70 = sub_2646DF234(v67, v69, v76);

          *(v61 + 24) = v70;
          _os_log_impl(&dword_264605000, v59, v60, "%s,%s: Unknown session type, %s", v61, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x266740650](v62, -1, -1);
          MEMORY[0x266740650](v61, -1, -1);
        }

        (*(v72[0] + 8))(v17, v75);
        sub_2647856D4();
        sub_2647856C4();
        sub_2647856B4();
        sub_2647856C4();
        sub_2647856F4();
        sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v28 = [objc_opt_self() bundleForClass_];
        goto LABEL_34;
      }

      goto LABEL_8;
    }

    sub_264783DE4();
    v39 = sub_264783E14();
    v40 = sub_2647859D4();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v76[0] = v42;
      *v41 = 136315650;
      v77 = v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79348, &unk_264791230);
      v43 = sub_264785764();
      v45 = sub_2646DF234(v43, v44, v76);

      *(v41 + 4) = v45;
      *(v41 + 12) = 2080;
      *(v41 + 14) = sub_2646DF234(0xD000000000000029, 0x800000026479A530, v76);
      *(v41 + 22) = 2048;
      *(v41 + 24) = v24;
      _os_log_impl(&dword_264605000, v39, v40, "%s,%s: Unknown session state, %ld", v41, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x266740650](v42, -1, -1);
      MEMORY[0x266740650](v41, -1, -1);
    }

    (*(v72[0] + 8))(v12, v75);
    return 0;
  }

  if ((v25 - 10) <= 4 || v26)
  {
    sub_264785694();
    sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
    v38 = swift_getObjCClassFromMetadata();
    v28 = [objc_opt_self() bundleForClass_];
    goto LABEL_34;
  }

  if (v23 == 4 || v23 == 2 || v23 == 1)
  {
LABEL_8:
    sub_2647856D4();
    sub_2647856C4();
    sub_2647856B4();
    sub_2647856C4();
    sub_2647856F4();
    sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
    v27 = swift_getObjCClassFromMetadata();
    v28 = [objc_opt_self() bundleForClass_];
LABEL_34:
    v28;
    sub_264783B84();
    return sub_264785754();
  }

  sub_264783DE4();
  v47 = sub_264783E14();
  v48 = sub_2647859D4();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v76[0] = v50;
    *v49 = 136315650;
    v77 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79348, &unk_264791230);
    v51 = sub_264785764();
    v53 = sub_2646DF234(v51, v52, v76);

    *(v49 + 4) = v53;
    *(v49 + 12) = 2080;
    *(v49 + 14) = sub_2646DF234(0xD000000000000029, 0x800000026479A530, v76);
    *(v49 + 22) = 2080;
    v54 = [objc_opt_self() sessionTypeToString_];
    v55 = sub_264785724();
    v57 = v56;

    v58 = sub_2646DF234(v55, v57, v76);

    *(v49 + 24) = v58;
    _os_log_impl(&dword_264605000, v47, v48, "%s,%s: Unknown session type, %s", v49, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v50, -1, -1);
    MEMORY[0x266740650](v49, -1, -1);
  }

  (*(v72[0] + 8))(v15, v75);
  v76[0] = v73;
  v76[1] = v74;

  MEMORY[0x26673F4D0](0x636F4C20739980E2, 0xAD00006E6F697461);
  return v76[0];
}

uint64_t static SafetyMonitorUIUtilities.receiverDetailBodyText(for:displayName:isMainSourceWatch:)(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v81 = a3;
  v80 = a2;
  v5 = sub_2647856E4();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_264783E24();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v75 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v75 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v75 - v17;
  v19 = sub_264783B94();
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_264785704();
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v75 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v76 = v7;
    v77 = v6;
    v78 = v24;
    v79 = v21;
    v25 = [a1 sessionType];
    v26 = [a1 sessionState];
    v27 = [a1 triggerType];
    v28 = [a1 isSOSTrigger];
    if ((v26 - 3) >= 3 && v26 != 9)
    {
      if (v26 == 2)
      {
        if (v25 == 4 || v25 == 2 || v25 == 1)
        {
          sub_264785694();
          sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          v58 = [objc_opt_self() bundleForClass_];
          goto LABEL_33;
        }

        sub_264783DE4();
        v61 = sub_264783E14();
        v62 = sub_2647859D4();
        if (os_log_type_enabled(v61, v62))
        {
          v63 = swift_slowAlloc();
          v64 = swift_slowAlloc();
          *v63 = 136315650;
          v83 = v82;
          v84 = v64;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79348, &unk_264791230);
          v65 = sub_264785764();
          v67 = sub_2646DF234(v65, v66, &v84);

          *(v63 + 4) = v67;
          *(v63 + 12) = 2080;
          *(v63 + 14) = sub_2646DF234(0xD00000000000003ALL, 0x800000026479A710, &v84);
          *(v63 + 22) = 2080;
          v68 = [objc_opt_self() sessionTypeToString_];
          v69 = sub_264785724();
          v71 = v70;

          v72 = sub_2646DF234(v69, v71, &v84);

          *(v63 + 24) = v72;
          _os_log_impl(&dword_264605000, v61, v62, "%s,%s: Unknown session type, %s", v63, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x266740650](v64, -1, -1);
          MEMORY[0x266740650](v63, -1, -1);
        }

        (*(v76 + 8))(v18, v77);
        sub_2647856D4();
        sub_2647856C4();
        sub_2647856B4();
        sub_2647856C4();
        sub_2647856F4();
        sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
        v73 = swift_getObjCClassFromMetadata();
        [objc_opt_self() bundleForClass_];
        sub_264783B84();
        return sub_264785754();
      }

      sub_264783DE4();
      v40 = sub_264783E14();
      v41 = sub_2647859D4();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        *v42 = 136315650;
        v83 = v82;
        v84 = v43;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79348, &unk_264791230);
        v44 = sub_264785764();
        v46 = sub_2646DF234(v44, v45, &v84);

        *(v42 + 4) = v46;
        *(v42 + 12) = 2080;
        *(v42 + 14) = sub_2646DF234(0xD00000000000003ALL, 0x800000026479A710, &v84);
        *(v42 + 22) = 2048;
        *(v42 + 24) = v26;
        _os_log_impl(&dword_264605000, v40, v41, "%s,%s: Unknown session state, %ld", v42, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x266740650](v43, -1, -1);
        MEMORY[0x266740650](v42, -1, -1);
      }

      (*(v76 + 8))(v13, v77);
      return 0;
    }

    result = 0;
    if (v27 <= 11)
    {
      if (v27 == 10)
      {
        return result;
      }

      if (v27 != 11)
      {
        goto LABEL_24;
      }
    }

    else
    {
      if (v27 == 12)
      {
        return result;
      }

      if (v27 != 13)
      {
        if (v27 == 14)
        {
          return result;
        }

LABEL_24:
        v49 = v77;
        if (!v28)
        {
          if (v25 == 2)
          {
            sub_2647856D4();
            sub_2647856C4();
            sub_2647856B4();
            sub_2647856C4();
            sub_2647856F4();
            sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
            v57 = swift_getObjCClassFromMetadata();
            v58 = [objc_opt_self() bundleForClass_];
LABEL_33:
            v60 = v58;
            sub_264783B84();
            return sub_264785754();
          }

          sub_2647856D4();
          sub_2647856C4();
          sub_2647856B4();
          sub_2647856C4();
          sub_2647856F4();
          sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
          v74 = swift_getObjCClassFromMetadata();
          [objc_opt_self() bundleForClass_];
          sub_264783B84();
          return sub_264785754();
        }

        sub_264783DE4();
        v50 = sub_264783E14();
        v51 = sub_2647859D4();
        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          v53 = swift_slowAlloc();
          *v52 = 136315650;
          v83 = v82;
          v84 = v53;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79348, &unk_264791230);
          v54 = sub_264785764();
          v56 = sub_2646DF234(v54, v55, &v84);

          *(v52 + 4) = v56;
          *(v52 + 12) = 2080;
          *(v52 + 14) = sub_2646DF234(0xD00000000000003ALL, 0x800000026479A710, &v84);
          *(v52 + 22) = 2048;
          *(v52 + 24) = v27;
          _os_log_impl(&dword_264605000, v50, v51, "%s,%s: Unknown SOS trigger type, %lu", v52, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x266740650](v53, -1, -1);
          MEMORY[0x266740650](v52, -1, -1);
        }

        (*(v76 + 8))(v16, v49);
        return 0;
      }
    }

    sub_264785694();
    sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
    v47 = swift_getObjCClassFromMetadata();
    v48 = [objc_opt_self() bundleForClass_];
    sub_264783B84();
    return sub_264785744();
  }

  sub_264783DE4();
  v30 = sub_264783E14();
  v31 = sub_2647859D4();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = v7;
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v33 = 136315650;
    v83 = v82;
    v84 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79348, &unk_264791230);
    v36 = sub_264785764();
    v38 = v6;
    v39 = sub_2646DF234(v36, v37, &v84);

    *(v33 + 4) = v39;
    *(v33 + 12) = 2080;
    *(v33 + 14) = sub_2646DF234(0xD00000000000003ALL, 0x800000026479A710, &v84);
    *(v33 + 22) = 2112;
    *(v33 + 24) = 0;
    *v34 = 0;
    _os_log_impl(&dword_264605000, v30, v31, "%s,%s: Invalid Session Status, %@", v33, 0x20u);
    sub_26460CD50(v34, &qword_27FF779D0, &qword_26478A9A0);
    MEMORY[0x266740650](v34, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x266740650](v35, -1, -1);
    MEMORY[0x266740650](v33, -1, -1);

    (*(v32 + 8))(v10, v38);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }

  return 0;
}

uint64_t static SafetyMonitorUIUtilities.receiverCacheDetailTitleText(for:displayName:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_264783E24();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v24[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v24[-v9];
  v11 = sub_264783B94();
  MEMORY[0x28223BE20](v11 - 8);
  v12 = sub_264785704();
  MEMORY[0x28223BE20](v12 - 8);
  sub_2647856E4();
  v13 = MEMORY[0x28223BE20](a1);
  if (v13)
  {
    v14 = [v13 sessionType];
    if (v14 == 4 || v14 == 2 || v14 == 1)
    {
      sub_2647856D4();
      sub_2647856C4();
      sub_2647856B4();
      sub_2647856C4();
      sub_2647856F4();
      sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v19 = [objc_opt_self() bundleForClass_];
      sub_264783B84();
      return sub_264785754();
    }

    sub_264783DE4();
    v21 = sub_264783E14();
    v22 = sub_2647859D4();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_264605000, v21, v22, "Invalid session type when determining receiver cache detail title text!", v23, 2u);
      MEMORY[0x266740650](v23, -1, -1);
    }

    (*(v5 + 8))(v10, v4);
  }

  else
  {
    sub_264783DE4();
    v15 = sub_264783E14();
    v16 = sub_2647859D4();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_264605000, v15, v16, "Missing session type when determining receiver cache detail title text!", v17, 2u);
      MEMORY[0x266740650](v17, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
  }

  return 0;
}

uint64_t static SafetyMonitorUIUtilities.receiverCacheDetailBodyText(for:displayName:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_264783E24();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2647856E4();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = sub_264783B94();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = sub_264785704();
  MEMORY[0x28223BE20](v10 - 8);
  if (a1)
  {
    v11 = [a1 sessionType];
    if (v11 == 4 || v11 == 2)
    {
      sub_2647856D4();
      sub_2647856C4();
      sub_2647856B4();
      sub_2647856C4();
      sub_2647856F4();
      sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v13 = [objc_opt_self() bundleForClass_];
      goto LABEL_7;
    }

    if (v11 == 1)
    {
      sub_264785694();
      sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
      v12 = swift_getObjCClassFromMetadata();
      v13 = [objc_opt_self() bundleForClass_];
LABEL_7:
      v15 = v13;
      sub_264783B84();
      return sub_264785754();
    }

    v17 = [a1 sessionType];
    sub_264783DE4();
    v18 = sub_264783E14();
    v19 = sub_2647859D4();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 134217984;
      *(v20 + 4) = v17;
      _os_log_impl(&dword_264605000, v18, v19, "Unsupported session type: %lu", v20, 0xCu);
      MEMORY[0x266740650](v20, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
  }

  return 0;
}

uint64_t static SafetyMonitorUIUtilities.initiatorSessionInfoTitleString(with:)(uint64_t a1)
{
  v1 = sub_264783E24();
  v2 = *(v1 - 8);
  v181 = v1;
  v182 = v2;
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v161[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = MEMORY[0x28223BE20](v3);
  v173 = &v161[-v7];
  v8 = MEMORY[0x28223BE20](v6);
  v177 = &v161[-v9];
  v10 = MEMORY[0x28223BE20](v8);
  v170 = &v161[-v11];
  MEMORY[0x28223BE20](v10);
  v169 = &v161[-v12];
  v13 = sub_2647856E4();
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v172 = &v161[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x28223BE20](v14);
  v174 = &v161[-v17];
  v18 = MEMORY[0x28223BE20](v16);
  v171 = &v161[-v19];
  v20 = MEMORY[0x28223BE20](v18);
  v168 = &v161[-v21];
  v22 = MEMORY[0x28223BE20](v20);
  v23 = MEMORY[0x28223BE20](v22);
  MEMORY[0x28223BE20](v23);
  v175 = &v161[-v24];
  v176 = sub_264783AF4();
  v179 = *(v176 - 8);
  v25 = MEMORY[0x28223BE20](v176);
  v27 = &v161[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v161[-v29];
  v31 = MEMORY[0x28223BE20](v28);
  v178 = &v161[-v32];
  v33 = MEMORY[0x28223BE20](v31);
  v166 = &v161[-v34];
  MEMORY[0x28223BE20](v33);
  v167 = &v161[-v35];
  v36 = sub_264783B94();
  MEMORY[0x28223BE20](v36 - 8);
  v38 = &v161[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v39 = sub_264785704();
  MEMORY[0x28223BE20](v39 - 8);
  v41 = &v161[-((v40 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(v184);

  v42 = v184[0];
  if (!v184[0])
  {
    goto LABEL_6;
  }

  v43 = [v184[0] configuration];
  if (!v43)
  {

LABEL_6:
    sub_264783DF4();

    v49 = sub_264783E14();
    v50 = sub_2647859D4();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = 7104878;
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *v52 = 136315907;
      v183 = v180;
      v184[0] = v53;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79348, &unk_264791230);
      v54 = sub_264785764();
      v56 = sub_2646DF234(v54, v55, v184);

      *(v52 + 4) = v56;
      *(v52 + 12) = 2080;
      *(v52 + 14) = sub_2646DF234(0xD000000000000026, 0x800000026479AF00, v184);
      *(v52 + 22) = 2085;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_264783ED4(&v183);

      v57 = v183;
      if (v183)
      {
        v58 = [v183 debugDescription];

        v59 = sub_264785724();
        v61 = v60;

        v51 = 7104878;
      }

      else
      {
        v61 = 0xE300000000000000;
        v59 = 7104878;
      }

      v93 = sub_2646DF234(v59, v61, v184);

      *(v52 + 24) = v93;
      *(v52 + 32) = 2085;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_264783ED4(&v183);

      v94 = v183;
      if (v183 && (v95 = [v183 configuration], v94, v95))
      {
        v96 = [v95 debugDescription];

        v51 = sub_264785724();
        v98 = v97;
      }

      else
      {
        v98 = 0xE300000000000000;
      }

      v99 = sub_2646DF234(v51, v98, v184);

      *(v52 + 34) = v99;
      _os_log_impl(&dword_264605000, v49, v50, "%s,%s: Invalid Session State, sessionState, %{sensitive}s, activeConfig, %{sensitive}s", v52, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x266740650](v53, -1, -1);
      MEMORY[0x266740650](v52, -1, -1);
    }

    (*(v182 + 8))(v5, v181);
    return 0;
  }

  v163 = v41;
  v164 = v38;
  v44 = v43;
  v45 = v42;
  v46 = [v42 configuration];
  if (v46)
  {
    v47 = v46;
    v48 = [v46 conversation];

    v162 = [v48 isGroup];
  }

  else
  {
    v162 = 0;
  }

  v62 = [v45 configuration];
  v165 = v44;
  if (v62)
  {
    v63 = v62;
    v64 = [v62 conversation];
  }

  else
  {
    v64 = 0;
  }

  sub_264783D04();
  MEMORY[0x26673DA20](v64);
  v66 = v65;

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(v184);

  v67 = v184[0];
  if (!v184[0])
  {
    goto LABEL_17;
  }

  if (![v184[0] unsupportedDeviceSeparationState])
  {

LABEL_17:
    v71 = [v45 sessionState];
    if (v71 > 0xE)
    {
      goto LABEL_59;
    }

    if (((1 << v71) & 0x4380) != 0)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_264783ED4(v184);

      v72 = v184[0];
      v73 = v165;
      if (v184[0])
      {
        v74 = [v184[0] cacheReleaseDate];

        sub_264783AC4();
        v75 = v178;
        v76 = v179;
        v77 = v30;
        v78 = v176;
        (*(v179 + 32))(v178, v77, v176);
        sub_264783AD4();
        v79 = sub_264783A74();
        v82 = *(v76 + 8);
        v80 = v76 + 8;
        v81 = v82;
        v82(v27, v78);
        if (v79)
        {
          v83 = v75;
          v84 = sub_264783A64();
          v85 = [v84 relativeTimeString];

          sub_264785724();
          if (v162)
          {
            sub_2647856D4();
            if (v66)
            {
              sub_2647856C4();
              sub_2647856B4();
            }

            sub_2647856C4();
            sub_2647856B4();

            sub_2647856C4();
            sub_2647856F4();
            sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
            ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
            v87 = [objc_opt_self() bundleForClass_];
            sub_264783B84();
            v70 = sub_264785744();

            v81(v178, v78);
          }

          else
          {
            sub_2647856D4();
            v179 = v80;
            sub_2647856C4();
            sub_2647856B4();

            sub_2647856C4();
            sub_2647856B4();

            sub_2647856C4();
            sub_2647856F4();
            sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
            v120 = swift_getObjCClassFromMetadata();
            v121 = [objc_opt_self() bundleForClass_];
            sub_264783B84();
            v70 = sub_264785744();

            v81(v83, v78);
          }

          return v70;
        }

        v81(v75, v78);
        v73 = v165;
      }

      v105 = v177;
      sub_264783DF4();
      v106 = sub_264783E14();
      v107 = sub_2647859D4();
      if (os_log_type_enabled(v106, v107))
      {
        v108 = swift_slowAlloc();
        v109 = swift_slowAlloc();
        v184[0] = v109;
        *v108 = 136315138;
        *(v108 + 4) = sub_2646DF234(0xD000000000000026, 0x800000026479AF00, v184);
        _os_log_impl(&dword_264605000, v106, v107, "%s: Unexpected anomaly without valid cache release date", v108, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v109);
        MEMORY[0x266740650](v109, -1, -1);
        MEMORY[0x266740650](v108, -1, -1);
      }

      (*(v182 + 8))(v105, v181);
      if (v162)
      {
        if (v66)
        {
          sub_2647856D4();
          sub_2647856C4();
          sub_2647856B4();

          sub_2647856C4();
          sub_2647856F4();
        }

        else
        {
          sub_264785694();
        }

        sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
        v110 = swift_getObjCClassFromMetadata();
        v111 = [objc_opt_self() bundleForClass_];
        sub_264783B84();
      }

      else
      {
        sub_2647856D4();
        sub_2647856C4();
        sub_2647856B4();

        sub_2647856C4();
        sub_2647856F4();
        sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
        v112 = swift_getObjCClassFromMetadata();
        v113 = [objc_opt_self() bundleForClass_];
        sub_264783B84();
      }

      v70 = sub_264785744();

      goto LABEL_73;
    }

    if (((1 << v71) & 0x1010) != 0)
    {
      v88 = [v45 monitorContext];
      if (v88)
      {
        v89 = v88;
        v90 = [v88 triggerCategory];

        if ((v90 - 10) <= 4)
        {

          sub_264785694();
          sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
          v91 = swift_getObjCClassFromMetadata();
          [objc_opt_self() bundleForClass_];
          sub_264783B84();
LABEL_29:
          v92 = sub_264785754();
LABEL_30:
          v70 = v92;

LABEL_73:
          return v70;
        }
      }

      v102 = v165;
      if (v162)
      {
        if (v66)
        {
          goto LABEL_45;
        }

        goto LABEL_91;
      }

LABEL_70:
      sub_2647856D4();
      sub_2647856C4();
      sub_2647856B4();

      sub_2647856C4();
      sub_2647856F4();
      sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
      v122 = swift_getObjCClassFromMetadata();
      v123 = [objc_opt_self() bundleForClass_];
      sub_264783B84();
      goto LABEL_72;
    }

    if (v71 != 2)
    {
LABEL_59:

      v114 = v173;
      sub_264783DF4();
      v115 = v45;
      v116 = sub_264783E14();
      v117 = sub_2647859D4();
      if (os_log_type_enabled(v116, v117))
      {
        v118 = swift_slowAlloc();
        v119 = swift_slowAlloc();
        v184[0] = v119;
        *v118 = 136315394;
        *(v118 + 4) = sub_2646DF234(0xD000000000000026, 0x800000026479AF00, v184);
        *(v118 + 12) = 2048;
        *(v118 + 14) = [v115 sessionState];

        _os_log_impl(&dword_264605000, v116, v117, "%s: Invalid state, %lu", v118, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v119);
        MEMORY[0x266740650](v119, -1, -1);
        MEMORY[0x266740650](v118, -1, -1);
      }

      else
      {
      }

      (*(v182 + 8))(v114, v181);

      return 0;
    }

    v101 = [v165 sessionType];
    if (v101 <= 2)
    {
      if (v101 == 1)
      {

        swift_getKeyPath();
        swift_getKeyPath();
        sub_264783ED4(v184);

        v135 = v184[0];
        if (v184[0])
        {
          v136 = [v184[0] configuration];

          if (v136)
          {
            v137 = [v136 time];

            if (v137)
            {
              v138 = [v137 timeBound];

              v139 = v166;
              sub_264783AC4();

              v140 = v179;
              v141 = v167;
              v142 = v176;
              (*(v179 + 32))(v167, v139, v176);
              sub_2647856D4();
              sub_2647856C4();
              v143 = sub_264783A64();
              v144 = [v143 absoluteTimeString:0 preposition:2 capitalized:0];

              sub_264785724();
              sub_2647856B4();

              sub_2647856C4();
              sub_2647856F4();
              sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
              v145 = swift_getObjCClassFromMetadata();
              v146 = [objc_opt_self() bundleForClass_];
              sub_264783B84();
              v70 = sub_264785754();

              (*(v140 + 8))(v141, v142);
              return v70;
            }
          }
        }

        v147 = v169;
        sub_264783DF4();
        v148 = sub_264783E14();
        v149 = sub_2647859D4();
        if (os_log_type_enabled(v148, v149))
        {
          v150 = swift_slowAlloc();
          v151 = swift_slowAlloc();
          *v150 = 136315394;
          v183 = v180;
          v184[0] = v151;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79348, &unk_264791230);
          v152 = sub_264785764();
          v154 = sub_2646DF234(v152, v153, v184);

          *(v150 + 4) = v154;
          *(v150 + 12) = 2080;
          *(v150 + 14) = sub_2646DF234(0xD000000000000026, 0x800000026479AF00, v184);
          _os_log_impl(&dword_264605000, v148, v149, "%s,%s: missing duration end date", v150, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x266740650](v151, -1, -1);
          MEMORY[0x266740650](v150, -1, -1);
        }

        (*(v182 + 8))(v147, v181);
        sub_264785694();
        sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
        v155 = swift_getObjCClassFromMetadata();
        [objc_opt_self() bundleForClass_];
        sub_264783B84();
        goto LABEL_29;
      }

      if (v101 == 2)
      {
        if (v162)
        {
          v102 = v165;
          if (v66)
          {
LABEL_45:
            sub_2647856D4();
            sub_2647856C4();
            sub_2647856B4();

            sub_2647856C4();
            sub_2647856F4();
LABEL_46:
            sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
            v103 = swift_getObjCClassFromMetadata();
            v104 = [objc_opt_self() bundleForClass_];
            sub_264783B84();
LABEL_72:
            v70 = sub_264785744();

            goto LABEL_73;
          }

LABEL_91:
          sub_264785694();
          goto LABEL_46;
        }

LABEL_89:
        sub_2647856D4();
        sub_2647856C4();
        sub_2647856B4();

        sub_2647856C4();
        sub_2647856F4();
        sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
        v156 = swift_getObjCClassFromMetadata();
        v157 = [objc_opt_self() bundleForClass_];
        sub_264783B84();
        v92 = sub_264785744();
        goto LABEL_30;
      }

      goto LABEL_76;
    }

    if (v101 == 3)
    {
      if (!v162)
      {
        sub_2647856D4();
        sub_2647856C4();
        sub_2647856B4();

        sub_2647856C4();
        sub_2647856F4();
        sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
        v158 = swift_getObjCClassFromMetadata();
        [objc_opt_self() bundleForClass_];
        sub_264783B84();
        goto LABEL_29;
      }

      v102 = v165;
      if (v66)
      {
        goto LABEL_70;
      }
    }

    else
    {
      if (v101 != 4)
      {
LABEL_76:

        v124 = v170;
        sub_264783DF4();
        v125 = v165;
        v126 = sub_264783E14();
        v127 = sub_2647859D4();

        if (os_log_type_enabled(v126, v127))
        {
          v128 = swift_slowAlloc();
          v129 = swift_slowAlloc();
          v184[0] = v129;
          *v128 = 136315394;
          *(v128 + 4) = sub_2646DF234(0xD000000000000026, 0x800000026479AF00, v184);
          *(v128 + 12) = 2080;
          v130 = [objc_opt_self() sessionTypeToString_];
          v131 = sub_264785724();
          v133 = v132;

          v134 = sub_2646DF234(v131, v133, v184);

          *(v128 + 14) = v134;
          _os_log_impl(&dword_264605000, v126, v127, "%s: Unknown session type, %s", v128, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x266740650](v129, -1, -1);
          MEMORY[0x266740650](v128, -1, -1);
        }

        (*(v182 + 8))(v124, v181);
        return 0;
      }

      if (!v162)
      {
        goto LABEL_89;
      }

      v102 = v165;
      if (v66)
      {
        goto LABEL_70;
      }
    }

    sub_264785694();
    sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
    v159 = swift_getObjCClassFromMetadata();
    v160 = [objc_opt_self() bundleForClass_];
    sub_264783B84();
    goto LABEL_72;
  }

  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  v68 = swift_getObjCClassFromMetadata();
  v69 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  v70 = sub_264785754();

  return v70;
}

uint64_t static SafetyMonitorUIUtilities.initiatorActiveSessionDetailMessage(with:)(uint64_t a1)
{
  v2 = v1;
  v3 = sub_264783E24();
  v91 = *(v3 - 8);
  v92 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v83[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v83[-v8];
  MEMORY[0x28223BE20](v7);
  v87 = &v83[-v10];
  v11 = sub_264783B94();
  MEMORY[0x28223BE20](v11 - 8);
  v89 = &v83[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_264785704();
  MEMORY[0x28223BE20](v13 - 8);
  v88 = &v83[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_2647856E4();
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v17 = MEMORY[0x28223BE20](v16);
  v18 = MEMORY[0x28223BE20](v17);
  MEMORY[0x28223BE20](v18);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v94);

  v19 = v94;
  if (!v94)
  {
    goto LABEL_6;
  }

  v20 = [v94 configuration];
  if (!v20)
  {

LABEL_6:
    sub_264783DF4();

    v24 = sub_264783E14();
    v25 = sub_2647859D4();

    if (os_log_type_enabled(v24, v25))
    {
      LODWORD(v89) = v25;
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      v93 = v2;
      v94 = v90;
      *v26 = 136315907;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79348, &unk_264791230);
      v28 = sub_264785764();
      v30 = sub_2646DF234(v28, v29, &v94);

      *(v26 + 4) = v30;
      *(v26 + 12) = 2080;
      *(v26 + 14) = sub_2646DF234(0xD00000000000002ALL, 0x800000026479BAB0, &v94);
      *(v26 + 22) = 2117;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_264783ED4(&v93);

      v31 = v93;
      *(v26 + 24) = v93;
      *v27 = v31;
      *(v26 + 32) = 2117;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_264783ED4(&v93);

      v32 = v93;
      if (v93)
      {
        v33 = [v93 configuration];

        v34 = v33;
      }

      else
      {
        v33 = 0;
        v34 = 0;
      }

      *(v26 + 34) = v33;
      v27[1] = v34;
      _os_log_impl(&dword_264605000, v24, v89, "%s,%s: Invalid Session State, sessionState, %{sensitive}@, activeConfig, %{sensitive}@", v26, 0x2Au);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF779D0, &qword_26478A9A0);
      swift_arrayDestroy();
      MEMORY[0x266740650](v27, -1, -1);
      v47 = v90;
      swift_arrayDestroy();
      MEMORY[0x266740650](v47, -1, -1);
      MEMORY[0x266740650](v26, -1, -1);
    }

    (*(v91 + 8))(v6, v92);
    return 0;
  }

  v86 = v20;
  v21 = [v19 configuration];
  v90 = v19;
  if (v21)
  {
    v22 = v21;
    v23 = [v21 conversation];

    v84 = [v23 isGroup];
    v19 = v90;
  }

  else
  {
    v84 = 0;
  }

  v35 = [v19 configuration];
  if (v35)
  {
    v36 = v35;
    v37 = [v35 conversation];
  }

  else
  {
    v37 = 0;
  }

  sub_264783D04();
  v85 = MEMORY[0x26673DA20](v37);
  v39 = v38;

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v94);

  v40 = v94;
  if (v94)
  {
    if ([v94 unsupportedDeviceSeparationState])
    {
      if (v84)
      {
        v41 = v90;
        if (v39)
        {
          sub_2647856D4();
          sub_2647856C4();
          sub_2647856B4();

          sub_2647856C4();
          sub_2647856F4();
          sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          v43 = [objc_opt_self() bundleForClass_];
          sub_264783B84();
          v44 = sub_264785744();
        }

        else
        {
          sub_264785694();
          sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
          v67 = swift_getObjCClassFromMetadata();
          v68 = [objc_opt_self() bundleForClass_];
          sub_264783B84();
          v44 = sub_264785754();
        }

        v57 = v44;

        goto LABEL_60;
      }

      sub_2647856D4();
      sub_2647856C4();
      sub_2647856B4();

      sub_2647856C4();
      sub_2647856F4();
      sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
      v55 = swift_getObjCClassFromMetadata();
      v56 = [objc_opt_self() bundleForClass_];
      sub_264783B84();
      v57 = sub_264785754();

LABEL_43:
      return v57;
    }
  }

  v45 = [v90 sessionState];
  if (v45 <= 6)
  {
    if (v45 != 2)
    {
      if (v45 == 4)
      {

        v49 = v90;
        v50 = [v90 monitorContext];
        if (v50)
        {
          v51 = v50;
          [v50 triggerCategory];
        }

        sub_264785694();
        sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
        v71 = swift_getObjCClassFromMetadata();
        v72 = [objc_opt_self() bundleForClass_];
        sub_264783B84();
        v57 = sub_264785744();

        return v57;
      }

LABEL_35:

      sub_264783DF4();
      v58 = v90;
      v59 = sub_264783E14();
      v60 = sub_2647859D4();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v94 = v62;
        *v61 = 136315394;
        *(v61 + 4) = sub_2646DF234(0xD00000000000002ALL, 0x800000026479BAB0, &v94);
        *(v61 + 12) = 2048;
        *(v61 + 14) = [v58 sessionState];

        _os_log_impl(&dword_264605000, v59, v60, "%s: Invalid state, %lu", v61, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v62);
        MEMORY[0x266740650](v62, -1, -1);
        MEMORY[0x266740650](v61, -1, -1);
      }

      else
      {
      }

      (*(v91 + 8))(v9, v92);
      return 0;
    }

    v63 = [v86 sessionType];
    if (v63 > 2)
    {
      v64 = v87;
      if (v63 != 3)
      {
        if (v63 != 4)
        {
          goto LABEL_63;
        }

        v69 = v86;
LABEL_56:

        return 0;
      }
    }

    else
    {
      v64 = v87;
      if (v63 == 1)
      {
        if (v84)
        {
          v41 = v90;
          if (v39)
          {
            goto LABEL_33;
          }

          goto LABEL_58;
        }

LABEL_41:
        sub_2647856D4();
        sub_2647856C4();
        sub_2647856B4();

        sub_2647856C4();
        sub_2647856F4();
        sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
        v65 = swift_getObjCClassFromMetadata();
        [objc_opt_self() bundleForClass_];
        sub_264783B84();
        goto LABEL_42;
      }

      if (v63 != 2)
      {
LABEL_63:

        sub_264783DF4();
        v73 = v86;
        v74 = sub_264783E14();
        v75 = sub_2647859D4();

        if (os_log_type_enabled(v74, v75))
        {
          v76 = swift_slowAlloc();
          v77 = swift_slowAlloc();
          v94 = v77;
          *v76 = 136315394;
          *(v76 + 4) = sub_2646DF234(0xD00000000000002ALL, 0x800000026479BAB0, &v94);
          *(v76 + 12) = 2080;
          v78 = [objc_opt_self() sessionTypeToString_];
          v79 = sub_264785724();
          v81 = v80;

          v82 = sub_2646DF234(v79, v81, &v94);

          *(v76 + 14) = v82;
          _os_log_impl(&dword_264605000, v74, v75, "%s: Unknown session type, %s", v76, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x266740650](v77, -1, -1);
          MEMORY[0x266740650](v76, -1, -1);
        }

        else
        {
        }

        (*(v91 + 8))(v64, v92);
        return 0;
      }
    }

    v69 = v90;
    goto LABEL_56;
  }

  if ((v45 - 7) < 2)
  {
    if (v84)
    {
      v41 = v90;
      if (v39)
      {
LABEL_33:
        sub_2647856D4();
        sub_2647856C4();
        sub_2647856B4();

        sub_2647856C4();
        sub_2647856F4();
        sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
        v52 = swift_getObjCClassFromMetadata();
        v53 = [objc_opt_self() bundleForClass_];
        sub_264783B84();
        v54 = sub_264785744();
LABEL_59:
        v57 = v54;

LABEL_60:
        return v57;
      }

LABEL_58:
      sub_264785694();
      sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
      v70 = swift_getObjCClassFromMetadata();
      [objc_opt_self() bundleForClass_];
      sub_264783B84();
      v54 = sub_264785754();
      goto LABEL_59;
    }

    goto LABEL_41;
  }

  if (v45 != 9)
  {
    if (v45 == 14)
    {

      sub_264785694();
      sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
      v46 = swift_getObjCClassFromMetadata();
      [objc_opt_self() bundleForClass_];
      sub_264783B84();
LABEL_42:
      v57 = sub_264785754();

      goto LABEL_43;
    }

    goto LABEL_35;
  }

  if (qword_27FF75268 != -1)
  {
    swift_once();
  }

  v66 = qword_27FF79088;

  return v66;
}

uint64_t static SafetyMonitorUIUtilities.ETAIconFor(_:)@<X0>(uint64_t a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF793B0, &qword_264791358);
  MEMORY[0x28223BE20](v3);
  v5 = &v21[-1] - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF793B8, &qword_264791360);
  MEMORY[0x28223BE20](v6);
  v8 = &v21[-1] - v7;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(v21);

  v9 = v21[0];
  if (v21[0] && (v10 = [v21[0] sessionType], v9, v10 == 2))
  {
    v11 = sub_264785274();
    v12 = sub_264784CC4();
    KeyPath = swift_getKeyPath();
    v21[0] = v11;
    v21[1] = KeyPath;
    v21[2] = v12;
    sub_264784D14();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF765B0, &unk_2647908C0);
    v20 = a2;
    sub_26466D5C8();
    sub_264784EA4();

    v14 = swift_getKeyPath();
    v15 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF793D0, &unk_2647913B0) + 36)];
    *v15 = v14;
    v15[8] = 1;
    v16 = sub_2647851D4();
    v17 = swift_getKeyPath();
    v18 = &v8[*(v6 + 36)];
    *v18 = v17;
    v18[1] = v16;
    sub_264756C94(v8, v5);
    swift_storeEnumTagMultiPayload();
    sub_264756A8C();
    sub_264784874();
    return sub_264756D04(v8);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_264756A8C();
    return sub_264784874();
  }
}

uint64_t static SafetyMonitorUIUtilities.ETAForExpandedView(_:)@<X0>(uint64_t a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756B8, &qword_26478AC90);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  *&v79 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  *&v80 = &v75 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v75 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v75 - v11;
  v13 = sub_264783AF4();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v75 - v18;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v92);

  v20 = v92;
  if (v92)
  {
    v21 = [v92 estimatedEndDate];

    v81 = v19;
    v77 = v17;
    if (v21)
    {
      sub_264783AC4();

      v22 = 0;
    }

    else
    {
      v22 = 1;
    }

    v23 = v14[7];
    v23(v10, v22, 1, v13);
    sub_26460E7E4(v10, v12, &qword_27FF756B8, &qword_26478AC90);
    v24 = v14[6];
    if (v24(v12, 1, v13) == 1)
    {
      goto LABEL_7;
    }

    v76 = v14;
    v75 = v14[4];
    v75(v81, v12, v13);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(&v92);

    v32 = v92;
    v78 = v13;
    if (v92)
    {
      v33 = [v92 coarseEstimatedEndDate];

      if (v33)
      {
        v34 = v79;
        sub_264783AC4();

        v35 = 0;
        v36 = v80;
      }

      else
      {
        v35 = 1;
        v36 = v80;
        v34 = v79;
      }

      v37 = v78;
      v23(v34, v35, 1, v78);
      sub_26460E7E4(v34, v36, &qword_27FF756B8, &qword_26478AC90);
      if (v24(v36, 1, v37) != 1)
      {
        v75(v77, v36, v78);
        *&v80 = sub_2647845C4();
        *&v92 = _s15SafetyMonitorUI0aB11UIUtilitiesC10presentETA3forSS10Foundation4DateV_tFZ_0();
        *(&v92 + 1) = v56;
        sub_264613FC4();
        v57 = sub_264784E44();
        v59 = v58;
        v61 = v60;
        sub_264784CC4();
        v62 = sub_264784E24();
        v64 = v63;
        v66 = v65;

        sub_26460ECC4(v57, v59, v61 & 1);

        sub_264785214();
        v67 = sub_264784DE4();
        v69 = v68;
        v71 = v70;
        v73 = v72;

        sub_26460ECC4(v62, v64, v66 & 1);

        v102 = 1;
        v100 = v71 & 1;
        v98 = 0;
        v82 = v80;
        v83 = 0;
        v84 = 1;
        *v85 = *v101;
        *&v85[3] = *&v101[3];
        v86 = v67;
        v87 = v69;
        v88 = v71 & 1;
        *v89 = *v99;
        *&v89[3] = *&v99[3];
        v90 = v73;
        v91 = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF793D8, &unk_264791428);
        sub_26460CDF0(&qword_27FF793E0, &qword_27FF793D8, &unk_264791428, MEMORY[0x277CE1138]);
        sub_264784874();
        v79 = v93;
        v80 = v92;
        v26 = v94;
        v27 = v95;
        v28 = v96;
        v74 = v76[1];
        v30 = v97;
        v74(v77, v78);
        result = (v74)(v81, v78);
        goto LABEL_16;
      }
    }

    else
    {
      v36 = v80;
      v23(v80, 1, 1, v13);
    }

    sub_26460CD50(v36, &qword_27FF756B8, &qword_26478AC90);
    *&v80 = sub_2647845C4();
    *&v92 = _s15SafetyMonitorUI0aB11UIUtilitiesC10presentETA3forSS10Foundation4DateV_tFZ_0();
    *(&v92 + 1) = v38;
    sub_264613FC4();
    v39 = sub_264784E44();
    v41 = v40;
    v43 = v42;
    sub_264784CC4();
    v44 = sub_264784E24();
    v46 = v45;
    v48 = v47;

    sub_26460ECC4(v39, v41, v43 & 1);

    sub_264785214();
    v49 = sub_264784DE4();
    v51 = v50;
    v53 = v52;
    v55 = v54;

    sub_26460ECC4(v44, v46, v48 & 1);

    v102 = 1;
    v100 = v53 & 1;
    v98 = 1;
    v82 = v80;
    v83 = 0;
    v84 = 1;
    *v85 = *v101;
    *&v85[3] = *&v101[3];
    v86 = v49;
    v87 = v51;
    v88 = v53 & 1;
    *v89 = *v99;
    *&v89[3] = *&v99[3];
    v90 = v55;
    v91 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF793D8, &unk_264791428);
    sub_26460CDF0(&qword_27FF793E0, &qword_27FF793D8, &unk_264791428, MEMORY[0x277CE1138]);
    sub_264784874();
    v79 = v93;
    v80 = v92;
    v26 = v94;
    v27 = v95;
    v28 = v96;
    v30 = v97;
    result = (v76[1])(v81, v78);
LABEL_16:
    v29 = v80;
    v31 = v79;
    goto LABEL_17;
  }

  (v14[7])(v12, 1, 1, v13);
LABEL_7:
  result = sub_26460CD50(v12, &qword_27FF756B8, &qword_26478AC90);
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0uLL;
  v30 = -1;
  v31 = 0uLL;
LABEL_17:
  *a2 = v29;
  *(a2 + 16) = v31;
  *(a2 + 32) = v26;
  *(a2 + 40) = v27;
  *(a2 + 48) = v28;
  *(a2 + 56) = v30;
  return result;
}

SafetyMonitorUI::CheckInControllerDismissalReason_optional __swiftcall CheckInControllerDismissalReason.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_264785E14();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t CheckInControllerDismissalReason.rawValue.getter()
{
  v1 = 0x69446C61756E616DLL;
  v2 = 0x5364657472617473;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0x6D7369446F747561;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_26474DA2C()
{
  sub_264785F44();
  sub_264785794();

  return sub_264785F94();
}

uint64_t sub_26474DB14(uint64_t a1)
{
  sub_264785794();
}

uint64_t sub_26474DBE8(uint64_t a1)
{
  sub_264785F44();
  sub_264785794();

  return sub_264785F94();
}

void sub_26474DCD8(unint64_t *a1@<X8>)
{
  v2 = 0xED00007373696D73;
  v3 = 0x69446C61756E616DLL;
  v4 = 0xEE006E6F69737365;
  v5 = 0x5364657472617473;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000010;
    v4 = 0x8000000264793170;
  }

  if (*v1)
  {
    v3 = 0x6D7369446F747561;
    v2 = 0xEB00000000737369;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

id sub_26474DD7C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

uint64_t sub_26474DDE4(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_264785C14();
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    v3 = sub_2646A1DB8(v2, 0);

    v1 = sub_2646C5C70(&v5, (v3 + 32), v2, v1);
    sub_26467A824(v5);
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = v1[2];
    if (!v2)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return v3;
}

void sub_26474DE94(uint64_t *a1, SEL *a2)
{
  v4 = a1[1];
  v5 = sub_264785E34();
  if (v5 < v4)
  {
    if (v4 >= -1)
    {
      v6 = v5;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_264659B70(0, &qword_27FF75E80, 0x277D4AB28);
        v8 = sub_264785834();
        *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = v7;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFF8;
      v10[0] = ((v8 & 0xFFFFFFFFFFFFFF8) + 32);
      v10[1] = v7;
      sub_26474E0B0(v10, v11, a1, v6, a2);
      *(v9 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    sub_26474DFB4(0, v4, 1, a1, a2);
  }
}

void sub_26474DFB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, SEL *a5)
{
  if (a3 != a2)
  {
    v6 = a3;
    v7 = *a4;
    v8 = *a4 + 8 * a3 - 8;
    v9 = a1 - a3;
LABEL_5:
    v10 = *(v7 + 8 * v6);
    v11 = v9;
    v12 = v8;
    while (1)
    {
      v13 = *v12;
      v14 = v10;
      v15 = v13;
      [v14 *a5];
      v17 = v16;
      [v15 *a5];
      v19 = v18;

      if (v19 >= v17)
      {
LABEL_4:
        ++v6;
        v8 += 8;
        --v9;
        if (v6 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v7)
      {
        break;
      }

      v20 = *v12;
      v10 = *(v12 + 8);
      *v12 = v10;
      *(v12 + 8) = v20;
      v12 -= 8;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_26474E0B0(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4, SEL *a5)
{
  v7 = v5;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_88:
    v11 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_121:
      v10 = sub_2646F47DC(v10);
    }

    v101 = v7;
    v102 = *(v10 + 2);
    if (v102 >= 2)
    {
      while (*a3)
      {
        v7 = v102 - 1;
        v103 = *&v10[16 * v102];
        v104 = *&v10[16 * v102 + 24];
        sub_26474E730((*a3 + 8 * v103), (*a3 + 8 * *&v10[16 * v102 + 16]), (*a3 + 8 * v104), v11, a5);
        if (v101)
        {
          goto LABEL_98;
        }

        if (v104 < v103)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_2646F47DC(v10);
        }

        if (v102 - 2 >= *(v10 + 2))
        {
          goto LABEL_115;
        }

        v105 = &v10[16 * v102];
        *v105 = v103;
        *(v105 + 1) = v104;
        sub_2646F4750(v102 - 1);
        v102 = *(v10 + 2);
        if (v102 <= 1)
        {
          goto LABEL_98;
        }
      }

      goto LABEL_125;
    }

LABEL_98:

    return;
  }

  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    v11 = v9;
    v12 = v9 + 1;
    if (v9 + 1 < v8)
    {
      v107 = v7;
      v13 = *(*a3 + 8 * v12);
      v7 = 8 * v9;
      v14 = v9;
      v15 = (*a3 + 8 * v9);
      v17 = *v15;
      v16 = v15 + 2;
      v18 = v13;
      v19 = v17;
      [v18 *a5];
      v21 = v20;
      [v19 *a5];
      v23 = v22;

      v24 = v14 + 2;
      while (v8 != v24)
      {
        v25 = *(v16 - 1);
        v26 = *v16;
        v27 = v25;
        [v26 *a5];
        v29 = v28;
        [v27 *a5];
        v31 = v30;

        ++v24;
        ++v16;
        if (v23 < v21 == v31 >= v29)
        {
          v8 = (v24 - 1);
          break;
        }
      }

      v11 = v14;
      if (v23 < v21)
      {
        if (v8 < v14)
        {
          goto LABEL_118;
        }

        if (v14 < v8)
        {
          v32 = 8 * v8 - 8;
          v33 = v8;
          v34 = v14;
          do
          {
            if (v34 != --v33)
            {
              v36 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v35 = *(v36 + v7);
              *(v36 + v7) = *(v36 + v32);
              *(v36 + v32) = v35;
            }

            v34 = (v34 + 1);
            v32 -= 8;
            v7 += 8;
          }

          while (v34 < v33);
        }
      }

      v12 = v8;
      v7 = v107;
    }

    v37 = a3[1];
    if (v12 < v37)
    {
      if (__OFSUB__(v12, v11))
      {
        goto LABEL_117;
      }

      if (v12 - v11 < a4)
      {
        if (__OFADD__(v11, a4))
        {
          goto LABEL_119;
        }

        if (v11 + a4 >= v37)
        {
          v38 = a3[1];
        }

        else
        {
          v38 = v11 + a4;
        }

        if (v38 < v11)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v12 != v38)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v12 < v11)
    {
      goto LABEL_116;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_2646F48D4(0, *(v10 + 2) + 1, 1, v10);
    }

    v56 = *(v10 + 2);
    v55 = *(v10 + 3);
    v57 = v56 + 1;
    if (v56 >= v55 >> 1)
    {
      v10 = sub_2646F48D4((v55 > 1), v56 + 1, 1, v10);
    }

    *(v10 + 2) = v57;
    v58 = &v10[16 * v56];
    *(v58 + 4) = v11;
    *(v58 + 5) = v12;
    v59 = *a1;
    if (!*a1)
    {
      goto LABEL_126;
    }

    v113 = v12;
    if (v56)
    {
      while (1)
      {
        v60 = v57 - 1;
        if (v57 >= 4)
        {
          break;
        }

        if (v57 == 3)
        {
          v61 = *(v10 + 4);
          v62 = *(v10 + 5);
          v71 = __OFSUB__(v62, v61);
          v63 = v62 - v61;
          v64 = v71;
LABEL_57:
          if (v64)
          {
            goto LABEL_105;
          }

          v77 = &v10[16 * v57];
          v79 = *v77;
          v78 = *(v77 + 1);
          v80 = __OFSUB__(v78, v79);
          v81 = v78 - v79;
          v82 = v80;
          if (v80)
          {
            goto LABEL_108;
          }

          v83 = &v10[16 * v60 + 32];
          v85 = *v83;
          v84 = *(v83 + 1);
          v71 = __OFSUB__(v84, v85);
          v86 = v84 - v85;
          if (v71)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v81, v86))
          {
            goto LABEL_112;
          }

          if (v81 + v86 >= v63)
          {
            if (v63 < v86)
            {
              v60 = v57 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v87 = &v10[16 * v57];
        v89 = *v87;
        v88 = *(v87 + 1);
        v71 = __OFSUB__(v88, v89);
        v81 = v88 - v89;
        v82 = v71;
LABEL_71:
        if (v82)
        {
          goto LABEL_107;
        }

        v90 = &v10[16 * v60];
        v92 = *(v90 + 4);
        v91 = *(v90 + 5);
        v71 = __OFSUB__(v91, v92);
        v93 = v91 - v92;
        if (v71)
        {
          goto LABEL_110;
        }

        if (v93 < v81)
        {
          goto LABEL_3;
        }

LABEL_78:
        v98 = v60 - 1;
        if (v60 - 1 >= v57)
        {
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
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
          goto LABEL_120;
        }

        if (!*a3)
        {
          goto LABEL_123;
        }

        v99 = *&v10[16 * v98 + 32];
        v11 = *&v10[16 * v60 + 40];
        sub_26474E730((*a3 + 8 * v99), (*a3 + 8 * *&v10[16 * v60 + 32]), (*a3 + 8 * v11), v59, a5);
        if (v7)
        {
          goto LABEL_98;
        }

        if (v11 < v99)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_2646F47DC(v10);
        }

        if (v98 >= *(v10 + 2))
        {
          goto LABEL_102;
        }

        v100 = &v10[16 * v98];
        *(v100 + 4) = v99;
        *(v100 + 5) = v11;
        sub_2646F4750(v60);
        v57 = *(v10 + 2);
        if (v57 <= 1)
        {
          goto LABEL_3;
        }
      }

      v65 = &v10[16 * v57 + 32];
      v66 = *(v65 - 64);
      v67 = *(v65 - 56);
      v71 = __OFSUB__(v67, v66);
      v68 = v67 - v66;
      if (v71)
      {
        goto LABEL_103;
      }

      v70 = *(v65 - 48);
      v69 = *(v65 - 40);
      v71 = __OFSUB__(v69, v70);
      v63 = v69 - v70;
      v64 = v71;
      if (v71)
      {
        goto LABEL_104;
      }

      v72 = &v10[16 * v57];
      v74 = *v72;
      v73 = *(v72 + 1);
      v71 = __OFSUB__(v73, v74);
      v75 = v73 - v74;
      if (v71)
      {
        goto LABEL_106;
      }

      v71 = __OFADD__(v63, v75);
      v76 = v63 + v75;
      if (v71)
      {
        goto LABEL_109;
      }

      if (v76 >= v68)
      {
        v94 = &v10[16 * v60 + 32];
        v96 = *v94;
        v95 = *(v94 + 1);
        v71 = __OFSUB__(v95, v96);
        v97 = v95 - v96;
        if (v71)
        {
          goto LABEL_113;
        }

        if (v63 < v97)
        {
          v60 = v57 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v9 = v113;
    v8 = a3[1];
    if (v113 >= v8)
    {
      goto LABEL_88;
    }
  }

  v108 = v7;
  v39 = v11;
  v40 = *a3;
  v41 = *a3 + 8 * v12 - 8;
  v109 = v39;
  v42 = v39 - v12;
  v111 = v38;
LABEL_30:
  v112 = v12;
  v43 = *(v40 + 8 * v12);
  v44 = v42;
  v45 = v41;
  while (1)
  {
    v46 = *v45;
    v47 = v43;
    v48 = v46;
    [v47 *a5];
    v50 = v49;
    [v48 *a5];
    v52 = v51;

    if (v52 >= v50)
    {
LABEL_29:
      v12 = v112 + 1;
      v41 += 8;
      --v42;
      if (v112 + 1 != v111)
      {
        goto LABEL_30;
      }

      v12 = v111;
      v7 = v108;
      v11 = v109;
      goto LABEL_37;
    }

    if (!v40)
    {
      break;
    }

    v53 = *v45;
    v43 = *(v45 + 8);
    *v45 = v43;
    *(v45 + 8) = v53;
    v45 -= 8;
    if (__CFADD__(v44++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
}

uint64_t sub_26474E730(void **__dst, id *__src, char *a3, void **a4, SEL *a5)
{
  v5 = a4;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 >= v12 >> 3)
  {
    if (a4 != __src || &__src[v13] <= a4)
    {
      v26 = a3;
      memmove(a4, __src, 8 * v13);
      a3 = v26;
    }

    v15 = &v5[v13];
    if (v11 >= 8 && v6 > v7)
    {
      v43 = v7;
      v44 = v5;
LABEL_26:
      v27 = v6 - 1;
      v28 = a3 - 8;
      v29 = v15;
      v30 = v15;
      do
      {
        v31 = v28;
        v32 = (v28 + 8);
        v33 = *--v30;
        v34 = v27;
        v35 = *v27;
        v36 = v33;
        v37 = v35;
        [v36 *a5];
        v39 = v38;
        [v37 *a5];
        v41 = v40;

        if (v41 < v39)
        {
          a3 = v31;
          if (v32 != v6)
          {
            *v31 = *v34;
          }

          v5 = v44;
          v15 = v29;
          if (v29 <= v44 || (v6 = v34, v34 <= v43))
          {
            v6 = v34;
            goto LABEL_37;
          }

          goto LABEL_26;
        }

        if (v32 != v29)
        {
          *v31 = *v30;
        }

        v28 = v31 - 8;
        v29 = v30;
        v5 = v44;
        v27 = v34;
      }

      while (v30 > v44);
      v15 = v30;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      v14 = a3;
      memmove(a4, __dst, 8 * v10);
      a3 = v14;
    }

    v15 = &v5[v10];
    if (v8 >= 8 && v6 < a3)
    {
      while (1)
      {
        v16 = a3;
        v17 = *v5;
        v18 = *v6;
        v19 = v17;
        [v18 *a5];
        v21 = v20;
        [v19 *a5];
        v23 = v22;

        if (v23 >= v21)
        {
          break;
        }

        v24 = v6;
        v25 = v7 == v6++;
        if (!v25)
        {
          goto LABEL_16;
        }

LABEL_17:
        ++v7;
        if (v5 < v15)
        {
          a3 = v16;
          if (v6 < v16)
          {
            continue;
          }
        }

        goto LABEL_19;
      }

      v24 = v5;
      v25 = v7 == v5++;
      if (v25)
      {
        goto LABEL_17;
      }

LABEL_16:
      *v7 = *v24;
      goto LABEL_17;
    }

LABEL_19:
    v6 = v7;
  }

LABEL_37:
  if (v6 != v5 || v6 >= (v5 + ((v15 - v5 + (v15 - v5 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v5, 8 * (v15 - v5));
  }

  return 1;
}

uint64_t sub_26474EA14@<X0>(_BYTE *a1@<X8>)
{
  result = sub_264784484();
  *a1 = result;
  return result;
}

unint64_t sub_26474EA68(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = sub_264785C14();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  v5 = sub_2646A1DB8(v3, 0);
  sub_26474EAFC(v5 + 32, v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_26474EAFC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_264785C14();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_264785C14();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_26460CDF0(&qword_27FF794C8, &qword_27FF794C0, &qword_264791A68, MEMORY[0x277D83988]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF794C0, &qword_264791A68);
            v9 = sub_26474ECB0(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_264659B70(0, &qword_27FF75E80, 0x277D4AB28);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_26474ECB0(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x26673FA30](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_26474ED30;
  }

  __break(1u);
  return result;
}

uint64_t sub_26474ED38@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, _OWORD *a4@<X8>)
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
    v4 = *(*(a3 + 56) + 16 * result);
    *a4 = v4;
    return sub_26465944C(v4, *(&v4 + 1));
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_26474ED94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SafetyCacheMapView.Annotation(0);
  v29 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v28 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF766A8, &unk_26478AA80);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v28 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77FD0, &qword_26478F3A8);
  MEMORY[0x28223BE20](v9);
  v11 = &v28 - v10;
  v12 = type metadata accessor for SafetyMonitorUINavigationPathItem(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF794A0, &qword_264791A40);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v28 - v17;
  v19 = *(v16 + 56);
  sub_264757764(a1, &v28 - v17);
  sub_264757764(a2, &v18[v19]);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF762F8, &qword_264789EC0);
  v21 = *(*(v20 - 8) + 48);
  v22 = v21(v18, 3, v20);
  if (v22 > 1)
  {
    if (v22 == 2)
    {
      if (v21(&v18[v19], 3, v20) != 2)
      {
        goto LABEL_12;
      }
    }

    else if (v21(&v18[v19], 3, v20) != 3)
    {
      goto LABEL_12;
    }

LABEL_11:
    sub_264757838(v18, type metadata accessor for SafetyMonitorUINavigationPathItem);
    return 1;
  }

  if (v22)
  {
    if (v21(&v18[v19], 3, v20) != 1)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  sub_264757764(v18, v14);
  if (!v21(&v18[v19], 3, v20))
  {
    v24 = *(v9 + 48);
    sub_26460E7E4(v14, v11, &qword_27FF766A8, &unk_26478AA80);
    sub_26460E7E4(&v18[v19], &v11[v24], &qword_27FF766A8, &unk_26478AA80);
    v25 = *(v29 + 48);
    if (v25(v11, 1, v4) == 1)
    {
      if (v25(&v11[v24], 1, v4) == 1)
      {
        sub_26460CD50(v11, &qword_27FF766A8, &unk_26478AA80);
        goto LABEL_11;
      }
    }

    else
    {
      sub_2647577C8(v11, v8);
      if (v25(&v11[v24], 1, v4) != 1)
      {
        v26 = v28;
        sub_2646F5518(&v11[v24], v28);
        v27 = sub_2646F526C(v8, v26);
        sub_264757838(v26, type metadata accessor for SafetyCacheMapView.Annotation);
        sub_264757838(v8, type metadata accessor for SafetyCacheMapView.Annotation);
        sub_26460CD50(v11, &qword_27FF766A8, &unk_26478AA80);
        if (v27)
        {
          goto LABEL_11;
        }

LABEL_20:
        sub_264757838(v18, type metadata accessor for SafetyMonitorUINavigationPathItem);
        return 0;
      }

      sub_264757838(v8, type metadata accessor for SafetyCacheMapView.Annotation);
    }

    sub_26460CD50(v11, &qword_27FF77FD0, &qword_26478F3A8);
    goto LABEL_20;
  }

  sub_26460CD50(v14, &qword_27FF766A8, &unk_26478AA80);
LABEL_12:
  sub_26460CD50(v18, &qword_27FF794A0, &qword_264791A40);
  return 0;
}

uint64_t _s15SafetyMonitorUI0aB11UIUtilitiesC35initiatorRemoveExtraTimeButtonTitle4withSSSd_tFZ_0(double a1)
{
  v2 = sub_264783B94();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_264785704();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_264785E64();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2647856E4();
  MEMORY[0x28223BE20](v8 - 8);
  sub_2647856D4();
  sub_2647856C4();
  v9 = [objc_opt_self() hourMinuteShortTimeIntervalFormatter];
  (*(v5 + 104))(v7, *MEMORY[0x277D84680], v4);
  v10 = sub_26473BF14(v7, 60.0, a1);
  (*(v5 + 8))(v7, v4);
  v11 = [v9 stringFromTimeInterval_];

  if (v11)
  {
    sub_264785724();
  }

  sub_2647856B4();

  sub_2647856C4();
  sub_2647856F4();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  return sub_264785754();
}

uint64_t sub_26474F59C()
{
  v0 = sub_264783B94();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_264785704();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_2647856E4();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_26462B210();
  if (v3)
  {
    v4 = v3;
    v5 = [v3 isGroup];
  }

  else
  {
    v5 = 0;
  }

  sub_264783D04();
  v6 = sub_26462B210();
  MEMORY[0x26673DA20]();
  v8 = v7;

  if (!v5)
  {
    if (v8)
    {
      goto LABEL_6;
    }

LABEL_10:
    sub_264785694();
    goto LABEL_7;
  }

  if (!v8)
  {
    goto LABEL_10;
  }

LABEL_6:
  sub_2647856D4();
  sub_2647856C4();
  sub_2647856B4();

  sub_2647856C4();
  sub_2647856F4();
LABEL_7:
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  return sub_264785744();
}

uint64_t _s15SafetyMonitorUI0aB11UIUtilitiesC17cityAddressFormat3forSSSgSo9MKMapItemCSg_tFZ_0(void *a1)
{
  v2 = sub_264783E24();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v49 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v49 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v49 - v13;
  if (!a1)
  {
    sub_264783DF4();
    v26 = sub_264783E14();
    v27 = sub_2647859B4();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v52 = v30;
      *v28 = 136315394;
      *(v28 + 4) = sub_2646DF234(0xD000000000000017, 0x800000026479F8A0, &v52);
      *(v28 + 12) = 2112;
      *(v28 + 14) = 0;
      *v29 = 0;
      _os_log_impl(&dword_264605000, v26, v27, "%s, Map Item not available, %@", v28, 0x16u);
      sub_26460CD50(v29, &qword_27FF779D0, &qword_26478A9A0);
      MEMORY[0x266740650](v29, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x266740650](v30, -1, -1);
      MEMORY[0x266740650](v28, -1, -1);
    }

    v31 = *(v3 + 8);
    v32 = v6;
    goto LABEL_18;
  }

  v15 = a1;
  v16 = [v15 _geoMapItem];
  if (!v16)
  {
    sub_264783DF4();
    v33 = v15;
    v34 = sub_264783E14();
    v35 = sub_2647859B4();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v52 = v38;
      *v36 = 136315394;
      *(v36 + 4) = sub_2646DF234(0xD000000000000017, 0x800000026479F8A0, &v52);
      *(v36 + 12) = 2112;
      *(v36 + 14) = v33;
      *v37 = a1;
      v39 = v33;
      _os_log_impl(&dword_264605000, v34, v35, "%s, geoMapItem not available for Map Item, %@", v36, 0x16u);
      sub_26460CD50(v37, &qword_27FF779D0, &qword_26478A9A0);
      MEMORY[0x266740650](v37, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v38);
      MEMORY[0x266740650](v38, -1, -1);
      MEMORY[0x266740650](v36, -1, -1);
    }

    else
    {
    }

    v31 = *(v3 + 8);
    v32 = v9;
    goto LABEL_18;
  }

  v17 = [v16 addressObject];
  if (!v17)
  {
LABEL_15:
    sub_264783DF4();
    v40 = v15;
    v41 = sub_264783E14();
    v42 = sub_2647859B4();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v51 = v2;
      v45 = v44;
      v46 = swift_slowAlloc();
      v52 = v46;
      *v43 = 136315394;
      *(v43 + 4) = sub_2646DF234(0xD000000000000017, 0x800000026479F8A0, &v52);
      *(v43 + 12) = 2112;
      *(v43 + 14) = v40;
      *v45 = a1;
      v47 = v40;
      _os_log_impl(&dword_264605000, v41, v42, "%s, city not available for Map Item, %@", v43, 0x16u);
      sub_26460CD50(v45, &qword_27FF779D0, &qword_26478A9A0);
      MEMORY[0x266740650](v45, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v46);
      MEMORY[0x266740650](v46, -1, -1);
      MEMORY[0x266740650](v43, -1, -1);

      swift_unknownObjectRelease();
      (*(v3 + 8))(v12, v51);
      return 0;
    }

    swift_unknownObjectRelease();
    v31 = *(v3 + 8);
    v32 = v12;
LABEL_18:
    v31(v32, v2);
    return 0;
  }

  v18 = v17;
  v19 = [v17 cityDisplayNameWithFallback_];
  if (!v19)
  {

    goto LABEL_15;
  }

  v20 = v19;
  v50 = sub_264785724();

  sub_264783DF4();
  v21 = sub_264783E14();
  v22 = sub_2647859B4();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v51 = v2;
    v24 = v23;
    v25 = swift_slowAlloc();
    v52 = v25;
    *v24 = 136315138;
    *(v24 + 4) = sub_2646DF234(0xD000000000000017, 0x800000026479F8A0, &v52);
    _os_log_impl(&dword_264605000, v21, v22, "%s, city available", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x266740650](v25, -1, -1);
    MEMORY[0x266740650](v24, -1, -1);

    swift_unknownObjectRelease();
    (*(v3 + 8))(v14, v51);
  }

  else
  {

    swift_unknownObjectRelease();
    (*(v3 + 8))(v14, v2);
  }

  return v50;
}

uint64_t _s15SafetyMonitorUI0aB11UIUtilitiesC29fullThoroughfareAddressFormat3forSSSgSo9MKMapItemCSg_tFZ_0(void *a1)
{
  v2 = sub_264783E24();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v65 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v65 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v65 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v65 - v16;
  if (!a1)
  {
    sub_264783DF4();
    v33 = sub_264783E14();
    v34 = sub_2647859B4();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v68 = v37;
      *v35 = 136315394;
      *(v35 + 4) = sub_2646DF234(0xD000000000000023, 0x800000026479F870, &v68);
      *(v35 + 12) = 2112;
      *(v35 + 14) = 0;
      *v36 = 0;
      _os_log_impl(&dword_264605000, v33, v34, "%s, Map Item not available, %@", v35, 0x16u);
      sub_26460CD50(v36, &qword_27FF779D0, &qword_26478A9A0);
      MEMORY[0x266740650](v36, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v37);
      MEMORY[0x266740650](v37, -1, -1);
      MEMORY[0x266740650](v35, -1, -1);
    }

    v38 = *(v3 + 8);
    v39 = v6;
    goto LABEL_26;
  }

  v18 = a1;
  v19 = [v18 _geoMapItem];
  if (!v19)
  {
    sub_264783DF4();
    v40 = v18;
    v41 = sub_264783E14();
    v42 = sub_2647859B4();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v68 = v45;
      *v43 = 136315394;
      *(v43 + 4) = sub_2646DF234(0xD000000000000023, 0x800000026479F870, &v68);
      *(v43 + 12) = 2112;
      *(v43 + 14) = v40;
      *v44 = a1;
      v46 = v40;
      _os_log_impl(&dword_264605000, v41, v42, "%s, geoMapItem not available for Map Item, %@", v43, 0x16u);
      sub_26460CD50(v44, &qword_27FF779D0, &qword_26478A9A0);
      MEMORY[0x266740650](v44, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v45);
      MEMORY[0x266740650](v45, -1, -1);
      MEMORY[0x266740650](v43, -1, -1);
    }

    else
    {
    }

    v38 = *(v3 + 8);
    v39 = v9;
    goto LABEL_26;
  }

  v20 = v19;
  v21 = [v19 geoAddress];
  if (v21)
  {
    v22 = v21;
    v23 = [v21 structuredAddress];
    if (v23)
    {
      v24 = v23;
      v25 = [v23 fullThoroughfare];
      if (v25)
      {
        v67 = v2;
        v26 = v25;
        v27 = sub_264785724();
        v65 = v28;
        v66 = v27;

        sub_264783DF4();
        v29 = sub_264783E14();
        v30 = sub_2647859B4();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          v32 = swift_slowAlloc();
          v68 = v32;
          *v31 = 136315138;
          *(v31 + 4) = sub_2646DF234(0xD000000000000023, 0x800000026479F870, &v68);
          _os_log_impl(&dword_264605000, v29, v30, "%s, fullThoroughfare available", v31, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v32);
          MEMORY[0x266740650](v32, -1, -1);
          MEMORY[0x266740650](v31, -1, -1);

          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
        }

        (*(v3 + 8))(v17, v67);
        return v66;
      }
    }

    else
    {
      v24 = v22;
    }
  }

  v47 = [v20 addressObject];
  if (!v47)
  {
LABEL_23:
    sub_264783DF4();
    v56 = v18;
    v57 = sub_264783E14();
    v58 = sub_2647859B4();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v67 = v2;
      v61 = v60;
      v62 = swift_slowAlloc();
      v68 = v62;
      *v59 = 136315394;
      *(v59 + 4) = sub_2646DF234(0xD000000000000023, 0x800000026479F870, &v68);
      *(v59 + 12) = 2112;
      *(v59 + 14) = v56;
      *v61 = a1;
      v63 = v56;
      _os_log_impl(&dword_264605000, v57, v58, "%s, fullThoroughfare and short address not available for Map Item, %@", v59, 0x16u);
      sub_26460CD50(v61, &qword_27FF779D0, &qword_26478A9A0);
      MEMORY[0x266740650](v61, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v62);
      MEMORY[0x266740650](v62, -1, -1);
      MEMORY[0x266740650](v59, -1, -1);

      swift_unknownObjectRelease();
      (*(v3 + 8))(v12, v67);
      return 0;
    }

    swift_unknownObjectRelease();
    v38 = *(v3 + 8);
    v39 = v12;
LABEL_26:
    v38(v39, v2);
    return 0;
  }

  v48 = v47;
  v49 = [v47 shortAddress];
  if (!v49)
  {

    goto LABEL_23;
  }

  v50 = v49;
  v66 = sub_264785724();

  sub_264783DF4();
  v51 = sub_264783E14();
  v52 = sub_2647859B4();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v67 = v2;
    v54 = v53;
    v55 = swift_slowAlloc();
    v68 = v55;
    *v54 = 136315138;
    *(v54 + 4) = sub_2646DF234(0xD000000000000023, 0x800000026479F870, &v68);
    _os_log_impl(&dword_264605000, v51, v52, "%s, fullThoroughfare not available, short address available", v54, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v55);
    MEMORY[0x266740650](v55, -1, -1);
    MEMORY[0x266740650](v54, -1, -1);

    swift_unknownObjectRelease();
    (*(v3 + 8))(v15, v67);
  }

  else
  {

    swift_unknownObjectRelease();
    (*(v3 + 8))(v15, v2);
  }

  return v66;
}

uint64_t _s15SafetyMonitorUI0aB11UIUtilitiesC31formatAddressForDestinationType011destinationI07address04userI0SSSo09SMSessionhI0V_SSAA04UserI0OtFZ_0(uint64_t a1, uint64_t a2, unint64_t a3, char *a4)
{
  v7 = sub_264783E24();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_264783B94();
  MEMORY[0x28223BE20](v11 - 8);
  v12 = sub_264785704();
  MEMORY[0x28223BE20](v12 - 8);
  v13 = sub_2647856E4();
  MEMORY[0x28223BE20](v13 - 8);
  if (a1 == 3 || a1 == 2 || a1 == 1)
  {
    sub_2647856D4();
    sub_2647856C4();
    sub_2647856B4();
    sub_2647856C4();
    sub_2647856F4();
    sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v15 = [objc_opt_self() bundleForClass_];
    sub_264783B84();
    return sub_264785744();
  }

  else
  {
    sub_264783DF4();

    v16 = sub_264783E14();
    v17 = sub_2647859D4();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v22 = v19;
      *v18 = 136315650;
      *(v18 + 4) = sub_2646DF234(0xD000000000000042, 0x800000026479F600, &v22);
      *(v18 + 12) = 2048;
      *(v18 + 14) = a1;
      *(v18 + 22) = 2080;
      *(v18 + 24) = sub_2646DF234(a2, a3, &v22);
      _os_log_impl(&dword_264605000, v16, v17, "%s, Invalid destination type, %lu, with address, %s", v18, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x266740650](v19, -1, -1);
      MEMORY[0x266740650](v18, -1, -1);
    }

    (*(v8 + 8))(v10, v7);
    return 0;
  }
}

uint64_t _s15SafetyMonitorUI0aB11UIUtilitiesC10presentETA3forSS10Foundation4DateV_tFZ_0()
{
  v0 = sub_264783B94();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_264785704();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_264783AF4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2647856E4();
  MEMORY[0x28223BE20](v6 - 8);
  sub_2647856D4();
  sub_2647856C4();
  v7 = sub_264783A64();
  v8 = [v7 roundedTime];

  sub_264783AC4();
  v9 = sub_264783A64();
  v10 = [v9 absoluteTimeString:0 preposition:1 capitalized:1];

  sub_264785724();
  (*(v3 + 8))(v5, v2);
  sub_2647856B4();

  sub_2647856C4();
  sub_2647856F4();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  return sub_264785744();
}

uint64_t _s15SafetyMonitorUI0aB11UIUtilitiesC17fullAddressFormat3forSSSgSo9MKMapItemCSg_tFZ_0(void *a1)
{
  v2 = sub_264783E24();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v49 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v49 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v49 - v13;
  if (!a1)
  {
    sub_264783DF4();
    v26 = sub_264783E14();
    v27 = sub_2647859B4();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v52 = v30;
      *v28 = 136315394;
      *(v28 + 4) = sub_2646DF234(0xD000000000000017, 0x800000026479F060, &v52);
      *(v28 + 12) = 2112;
      *(v28 + 14) = 0;
      *v29 = 0;
      _os_log_impl(&dword_264605000, v26, v27, "%s, Map Item not available, %@", v28, 0x16u);
      sub_26460CD50(v29, &qword_27FF779D0, &qword_26478A9A0);
      MEMORY[0x266740650](v29, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x266740650](v30, -1, -1);
      MEMORY[0x266740650](v28, -1, -1);
    }

    v31 = *(v3 + 8);
    v32 = v6;
    goto LABEL_18;
  }

  v15 = a1;
  v16 = [v15 _geoMapItem];
  if (!v16)
  {
    sub_264783DF4();
    v33 = v15;
    v34 = sub_264783E14();
    v35 = sub_2647859B4();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v52 = v38;
      *v36 = 136315394;
      *(v36 + 4) = sub_2646DF234(0xD000000000000017, 0x800000026479F060, &v52);
      *(v36 + 12) = 2112;
      *(v36 + 14) = v33;
      *v37 = a1;
      v39 = v33;
      _os_log_impl(&dword_264605000, v34, v35, "%s, geoMapItem not available for Map Item, %@", v36, 0x16u);
      sub_26460CD50(v37, &qword_27FF779D0, &qword_26478A9A0);
      MEMORY[0x266740650](v37, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v38);
      MEMORY[0x266740650](v38, -1, -1);
      MEMORY[0x266740650](v36, -1, -1);
    }

    else
    {
    }

    v31 = *(v3 + 8);
    v32 = v9;
    goto LABEL_18;
  }

  v17 = [v16 addressObject];
  if (!v17)
  {
LABEL_15:
    sub_264783DF4();
    v40 = v15;
    v41 = sub_264783E14();
    v42 = sub_2647859B4();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v51 = v2;
      v45 = v44;
      v46 = swift_slowAlloc();
      v52 = v46;
      *v43 = 136315394;
      *(v43 + 4) = sub_2646DF234(0xD000000000000017, 0x800000026479F060, &v52);
      *(v43 + 12) = 2112;
      *(v43 + 14) = v40;
      *v45 = a1;
      v47 = v40;
      _os_log_impl(&dword_264605000, v41, v42, "%s, fullAddressWithMultiline not available for Map Item, %@", v43, 0x16u);
      sub_26460CD50(v45, &qword_27FF779D0, &qword_26478A9A0);
      MEMORY[0x266740650](v45, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v46);
      MEMORY[0x266740650](v46, -1, -1);
      MEMORY[0x266740650](v43, -1, -1);

      swift_unknownObjectRelease();
      (*(v3 + 8))(v12, v51);
      return 0;
    }

    swift_unknownObjectRelease();
    v31 = *(v3 + 8);
    v32 = v12;
LABEL_18:
    v31(v32, v2);
    return 0;
  }

  v18 = v17;
  v19 = [v17 fullAddressNoCurrentCountryWithMultiline_];
  if (!v19)
  {

    goto LABEL_15;
  }

  v20 = v19;
  v50 = sub_264785724();

  sub_264783DF4();
  v21 = sub_264783E14();
  v22 = sub_2647859B4();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v51 = v2;
    v24 = v23;
    v25 = swift_slowAlloc();
    v52 = v25;
    *v24 = 136315138;
    *(v24 + 4) = sub_2646DF234(0xD000000000000017, 0x800000026479F060, &v52);
    _os_log_impl(&dword_264605000, v21, v22, "%s, fullAddressWithMultiline available", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x266740650](v25, -1, -1);
    MEMORY[0x266740650](v24, -1, -1);

    swift_unknownObjectRelease();
    (*(v3 + 8))(v14, v51);
  }

  else
  {

    swift_unknownObjectRelease();
    (*(v3 + 8))(v14, v2);
  }

  return v50;
}

void _s15SafetyMonitorUI0aB11UIUtilitiesC18shortAddressFormat3forSSSgAA31LocationSearchRowCompletionItemVSg_tFZ_0(uint64_t a1)
{
  v2 = sub_264783E24();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v81 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v81 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v81 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v81 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v81 - v19;
  v21 = *(a1 + 24);
  if (!v21)
  {
    sub_264783DF4();
    v40 = sub_264783E14();
    v41 = sub_2647859B4();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = v2;
      v43 = v3;
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v88 = v45;
      *v44 = 136315138;
      *(v44 + 4) = sub_2646DF234(0xD000000000000018, 0x800000026479EFD0, &v88);
      _os_log_impl(&dword_264605000, v40, v41, "%s, completionItem not available", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v45);
      MEMORY[0x266740650](v45, -1, -1);
      MEMORY[0x266740650](v44, -1, -1);

      (*(v43 + 8))(v6, v42);
    }

    else
    {

      (*(v3 + 8))(v6, v2);
    }

    return;
  }

  v87 = v2;
  v22 = *a1;
  v23 = *(a1 + 8);
  v24 = *(a1 + 16);
  if (v23)
  {
    v25 = v23;
    v26 = v24;
    v27 = v25;
    v86 = v26;
    sub_264757908(v22, v23, v26, v21);
    v28 = [v27 _geoMapItem];
    if (v28)
    {
      v29 = [v28 addressObject];
      if (v29)
      {
        v30 = v29;
        v31 = [v29 shortAddress];
        if (v31)
        {
          v85 = v3;
          v32 = v31;
          v84 = sub_264785724();
          v34 = v33;

          sub_264783DF4();

          v35 = sub_264783E14();
          v36 = sub_2647859B4();
          v83 = v34;

          v82 = v35;
          if (os_log_type_enabled(v35, v36))
          {
            v37 = swift_slowAlloc();
            v81 = swift_slowAlloc();
            v88 = v81;
            *v37 = 136315394;
            *(v37 + 4) = sub_2646DF234(0xD000000000000018, 0x800000026479EFD0, &v88);
            *(v37 + 12) = 2080;
            *(v37 + 14) = sub_2646DF234(v84, v83, &v88);
            v38 = v82;
            _os_log_impl(&dword_264605000, v82, v36, "%s, short address, %s", v37, 0x16u);
            v39 = v81;
            swift_arrayDestroy();
            MEMORY[0x266740650](v39, -1, -1);
            MEMORY[0x266740650](v37, -1, -1);
            swift_unknownObjectRelease();

            sub_2646A2318(v22, v23, v86, v21);
          }

          else
          {

            swift_unknownObjectRelease();
            sub_2646A2318(v22, v23, v86, v21);
          }

          (*(v85 + 8))(v20, v87);
          return;
        }
      }

      swift_unknownObjectRelease();

      sub_264783DF4();
      v75 = sub_264783E14();
      v76 = sub_2647859B4();
      if (os_log_type_enabled(v75, v76))
      {
        v77 = v3;
        v78 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        v88 = v79;
        *v78 = 136315138;
        *(v78 + 4) = sub_2646DF234(0xD000000000000018, 0x800000026479EFD0, &v88);
        _os_log_impl(&dword_264605000, v75, v76, "%s, short address not available for completionItem", v78, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v79);
        MEMORY[0x266740650](v79, -1, -1);
        MEMORY[0x266740650](v78, -1, -1);

        sub_2646A2318(v22, v23, v86, v21);
        (*(v77 + 8))(v9, v87);
        return;
      }

      sub_2646A2318(v22, v23, v86, v21);

      v73 = *(v3 + 8);
      v74 = v9;
    }

    else
    {
      sub_264783DF4();
      v60 = v27;
      v61 = sub_264783E14();
      v62 = sub_2647859B4();

      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v85 = v3;
        v65 = v64;
        v66 = swift_slowAlloc();
        v88 = v66;
        *v63 = 136315394;
        *(v63 + 4) = sub_2646DF234(0xD000000000000018, 0x800000026479EFD0, &v88);
        *(v63 + 12) = 2112;
        *(v63 + 14) = v60;
        *v65 = v23;
        v67 = v60;
        _os_log_impl(&dword_264605000, v61, v62, "%s, geoMapItem not available for Map Item, %@", v63, 0x16u);
        sub_26460CD50(v65, &qword_27FF779D0, &qword_26478A9A0);
        MEMORY[0x266740650](v65, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v66);
        MEMORY[0x266740650](v66, -1, -1);
        MEMORY[0x266740650](v63, -1, -1);

        sub_2646A2318(v22, v23, v86, v21);
        (*(v85 + 8))(v18, v87);
        return;
      }

      sub_2646A2318(v22, v23, v86, v21);

      v73 = *(v3 + 8);
      v74 = v18;
    }

LABEL_31:
    v73(v74, v87);
    return;
  }

  if (!v22)
  {

    sub_264783DF4();
    v68 = sub_264783E14();
    v69 = sub_2647859E4();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = v3;
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v88 = v72;
      *v71 = 136315138;
      *(v71 + 4) = sub_2646DF234(0xD000000000000018, 0x800000026479EFD0, &v88);
      _os_log_impl(&dword_264605000, v68, v69, "%s, searchCompletion not available", v71, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v72);
      MEMORY[0x266740650](v72, -1, -1);
      MEMORY[0x266740650](v71, -1, -1);

      sub_2646A2318(0, 0, v24, v21);
      (*(v70 + 8))(v12, v87);
      return;
    }

    sub_2646A2318(0, 0, v24, v21);

    v73 = *(v3 + 8);
    v74 = v12;
    goto LABEL_31;
  }

  sub_264757908(v22, 0, v24, v21);
  v46 = v22;
  v47 = [v46 mapItem];
  if (!v47)
  {
    __break(1u);
    goto LABEL_36;
  }

  v48 = v47;
  v49 = [v47 _geoMapItem];

  if (!v49)
  {
LABEL_36:
    __break(1u);
    return;
  }

  v50 = [v49 addressObject];
  swift_unknownObjectRelease();
  if (!v50)
  {
LABEL_33:
    v80 = [v46 subtitle];
    sub_264785724();

    sub_2646A2318(v22, 0, v24, v21);
    return;
  }

  v51 = [v50 shortAddress];
  if (!v51)
  {

    goto LABEL_33;
  }

  v85 = v3;
  v86 = v24;
  v52 = v51;
  v84 = sub_264785724();
  v54 = v53;

  sub_264783DF4();

  v55 = sub_264783E14();
  v56 = sub_2647859B4();
  v57 = v54;

  if (os_log_type_enabled(v55, v56))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v88 = v59;
    *v58 = 136315394;
    *(v58 + 4) = sub_2646DF234(0xD000000000000018, 0x800000026479EFD0, &v88);
    *(v58 + 12) = 2080;
    *(v58 + 14) = sub_2646DF234(v84, v57, &v88);
    _os_log_impl(&dword_264605000, v55, v56, "%s, short address, %s", v58, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v59, -1, -1);
    MEMORY[0x266740650](v58, -1, -1);

    sub_2646A2318(v22, 0, v86, v21);
  }

  else
  {
    sub_2646A2318(v22, 0, v86, v21);
  }

  (*(v85 + 8))(v15, v87);
}

uint64_t _s15SafetyMonitorUI0aB11UIUtilitiesC11timerString8userTypeSSAA04UserH0O_tFZ_0(char *a1)
{
  v1 = sub_264783B94();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_264785704();
  MEMORY[0x28223BE20](v2 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  return sub_264785744();
}

uint64_t _s15SafetyMonitorUI0aB11UIUtilitiesC28transcriptWorkoutStartString8userTypeSSAA04UserJ0O_tFZ_0(char *a1)
{
  v1 = sub_264783B94();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_264785704();
  MEMORY[0x28223BE20](v2 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  return sub_264785744();
}

uint64_t _s15SafetyMonitorUI0aB11UIUtilitiesC23transcriptStartedString8userTypeSSAA04UserI0O_tFZ_0(char *a1)
{
  v1 = sub_264783B94();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_264785704();
  MEMORY[0x28223BE20](v2 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  return sub_264785744();
}

uint64_t _s15SafetyMonitorUI0aB11UIUtilitiesC30transcriptOfflinePrimaryString8userTypeSSAA04UserJ0O_tFZ_0(char *a1)
{
  v1 = sub_264783B94();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_264785704();
  MEMORY[0x28223BE20](v2 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  return sub_264785744();
}

uint64_t _s15SafetyMonitorUI0aB11UIUtilitiesC37transcriptCacheReleaseSecondaryString8userTypeSSAA04UserK0O_tFZ_0(char *a1)
{
  v1 = sub_264783B94();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_264785704();
  MEMORY[0x28223BE20](v2 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  return sub_264785744();
}

uint64_t _s15SafetyMonitorUI0aB11UIUtilitiesC33transcriptSOSTriggerPrimaryString8userTypeSSAA04UserJ0O_tFZ_0(char *a1)
{
  v1 = sub_264783B94();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_264785704();
  MEMORY[0x28223BE20](v2 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  return sub_264785744();
}

uint64_t _s15SafetyMonitorUI0aB11UIUtilitiesC38transcriptDestinationTypePrimaryString04userG0SSAA04UserG0O_tFZ_0(char *a1)
{
  v1 = sub_264783B94();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_264785704();
  MEMORY[0x28223BE20](v2 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  return sub_264785744();
}

uint64_t _s15SafetyMonitorUI0aB11UIUtilitiesC35transcriptDurationTypePrimaryString04userG0SSAA04UserG0O_tFZ_0(char *a1)
{
  v1 = sub_264783B94();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_264785704();
  MEMORY[0x28223BE20](v2 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  return sub_264785744();
}

uint64_t _s15SafetyMonitorUI0aB11UIUtilitiesC34transcriptWorkoutTypePrimaryString04userG0SSAA04UserG0O_tFZ_0(char *a1)
{
  v1 = sub_264783B94();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_264785704();
  MEMORY[0x28223BE20](v2 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  return sub_264785744();
}

uint64_t _s15SafetyMonitorUI0aB11UIUtilitiesC49formatSafeArrivalTranscriptTextForDestinationType011destinationL07address04userL0SSSo09SMSessionkL0V_SSSgAA04UserL0OtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  v8 = sub_2647856E4();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = sub_264783E24();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_264783B94();
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_264785704();
  MEMORY[0x28223BE20](v16 - 8);
  isa_low = LOBYTE(a4->isa);
  if (a1 <= 2)
  {
    if (a1 == 1 || a1 == 2)
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  if (a1 == 3)
  {
LABEL_13:
    sub_264785694();
    sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v30 = [objc_opt_self() bundleForClass_];
    sub_264783B84();
    return sub_264785744();
  }

  if (a1 != 4)
  {
LABEL_9:
    v35 = a2;
    v36 = isa_low;
    sub_264783DF4();
    v20 = sub_264783E14();
    v21 = sub_2647859D4();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v34 = v15;
      v23 = v22;
      v24 = swift_slowAlloc();
      v33 = a3;
      v25 = v24;
      v37 = v24;
      *v23 = 136315394;
      *(v23 + 4) = sub_2646DF234(0xD000000000000054, 0x800000026479EAE0, &v37);
      *(v23 + 12) = 2048;
      *(v23 + 14) = a1;
      _os_log_impl(&dword_264605000, v20, v21, "%s, Invalid destination type, %lu", v23, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v25);
      v26 = v25;
      a3 = v33;
      MEMORY[0x266740650](v26, -1, -1);
      MEMORY[0x266740650](v23, -1, -1);
    }

    (*(v10 + 8))(v12, v9);
    if (!a3)
    {
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  if (!a3)
  {
LABEL_12:
    sub_264785694();
    sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
    v27 = swift_getObjCClassFromMetadata();
    v28 = [objc_opt_self() bundleForClass_];
    sub_264783B84();
    return sub_264785744();
  }

LABEL_8:
  sub_2647856D4();
  sub_2647856C4();
  sub_2647856B4();
  sub_2647856C4();
  sub_2647856F4();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  v18 = swift_getObjCClassFromMetadata();
  v19 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  return sub_264785744();
}

uint64_t _s15SafetyMonitorUI0aB11UIUtilitiesC21transcriptEndedString8userTypeSSAA04UserI0O_tFZ_0(char *a1)
{
  v1 = sub_264783B94();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_264785704();
  MEMORY[0x28223BE20](v2 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  return sub_264785744();
}

uint64_t _s15SafetyMonitorUI0aB11UIUtilitiesC28transcriptWorkoutEndedString8userTypeSSAA04UserJ0O_tFZ_0(char *a1)
{
  v1 = sub_264783B94();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_264785704();
  MEMORY[0x28223BE20](v2 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  return sub_264785744();
}

unint64_t sub_264753D24()
{
  result = qword_27FF79358;
  if (!qword_27FF79358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF79350, &qword_264791248);
    sub_26460CDF0(&qword_27FF76B98, &qword_27FF76BA0, &qword_264791250, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF79358);
  }

  return result;
}

unint64_t sub_264753DDC()
{
  result = qword_27FF79370;
  if (!qword_27FF79370)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF79360, &qword_264791258);
    sub_264753D24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF79370);
  }

  return result;
}

uint64_t sub_264753E60(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_264753EB0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = a4 & 1;
  if (a5)
  {
    return a7(a1, a2, a3, v7);
  }

  else
  {
    return a6(a1, a2, a3, v7);
  }
}

uint64_t _s15SafetyMonitorUI0aB11UIUtilitiesC20descriptionStringFor_12originDeviceSSAA17MapAnnotationTypeO_SSSgtFZ_0(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_264783E24();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_264783B94();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = sub_264785704();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = sub_2647856E4();
  MEMORY[0x28223BE20](v11 - 8);
  if (*a1 > 2u)
  {
    if (*a1 - 4 < 2)
    {
      return 0;
    }

    if (a3)
    {
      sub_2647856D4();
      sub_2647856C4();
      sub_2647856B4();
      sub_2647856C4();
      sub_2647856F4();
      sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v13 = [objc_opt_self() bundleForClass_];
    }

    else
    {
      sub_264783DE4();
      v18 = sub_264783E14();
      v19 = sub_2647859D4();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_264605000, v18, v19, "Missing origin device for most recent annotation", v20, 2u);
        MEMORY[0x266740650](v20, -1, -1);
      }

      (*(v6 + 8))(v8, v5);
      sub_264785694();
      sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
      v21 = swift_getObjCClassFromMetadata();
      v13 = [objc_opt_self() bundleForClass_];
    }
  }

  else
  {
    if (!*a1)
    {
      sub_264785694();
      sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
      v15 = swift_getObjCClassFromMetadata();
      v16 = [objc_opt_self() bundleForClass_];
      sub_264783B84();
      return sub_264785744();
    }

    sub_264785694();
    sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
    v12 = swift_getObjCClassFromMetadata();
    v13 = [objc_opt_self() bundleForClass_];
  }

  v22 = v13;
  sub_264783B84();
  return sub_264785754();
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_264754404()
{
  result = qword_27FF79388;
  if (!qword_27FF79388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF79380, &unk_2647912E0);
    sub_2647544BC();
    sub_26460CDF0(&qword_27FF76B10, &qword_27FF75948, &qword_26478B640, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF79388);
  }

  return result;
}

unint64_t sub_2647544BC()
{
  result = qword_27FF79390;
  if (!qword_27FF79390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF782E8, &unk_26478FB80);
    sub_264754574();
    sub_26460CDF0(&qword_27FF793A8, &qword_27FF782F0, &unk_2647912F0, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF79390);
  }

  return result;
}

unint64_t sub_264754574()
{
  result = qword_27FF79398;
  if (!qword_27FF79398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF793A0, &qword_264791300);
    sub_264706360();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF79398);
  }

  return result;
}

uint64_t sub_264754600()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t _s15SafetyMonitorUI0aB11UIUtilitiesC37initiatorCancelConfirmationAlertTitle4withSSAA16SessionViewModelC_tFZ_0(uint64_t a1)
{
  v1 = sub_264783E24();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FF75028 != -1)
  {
    swift_once();
  }

  v5 = qword_27FF78C10;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_264783ED4(&v14);

  v6 = v14;
  if (v14)
  {
    v7 = [v14 sessionState];

    if (v7 == 4)
    {

      if (qword_27FF75030 != -1)
      {
        swift_once();
      }

      v5 = qword_27FF78C20;
    }
  }

  else
  {
    sub_264783DF4();
    v8 = sub_264783E14();
    v9 = sub_2647859D4();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v14 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_2646DF234(0xD00000000000002CLL, 0x800000026479CD00, &v14);
      _os_log_impl(&dword_264605000, v8, v9, "Invalid Session State in %s!", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x266740650](v11, -1, -1);
      MEMORY[0x266740650](v10, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
  }

  return v5;
}

uint64_t _s15SafetyMonitorUI0aB11UIUtilitiesC032initiatorCancelConfirmationAlertF11ButtonTitle4withSSAA16SessionViewModelC_tFZ_0(uint64_t a1)
{
  v1 = sub_264783E24();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FF75018 != -1)
  {
    swift_once();
  }

  v5 = qword_27FF78BF0;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_264783ED4(&v14);

  v6 = v14;
  if (v14)
  {
    v7 = [v14 sessionState];

    if (v7 == 4)
    {

      if (qword_27FF75058 != -1)
      {
        swift_once();
      }

      v5 = qword_27FF78C70;
    }
  }

  else
  {
    sub_264783DF4();
    v8 = sub_264783E14();
    v9 = sub_2647859D4();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v14 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_2646DF234(0xD000000000000038, 0x800000026479CCC0, &v14);
      _os_log_impl(&dword_264605000, v8, v9, "Invalid Session State in %s!", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x266740650](v11, -1, -1);
      MEMORY[0x266740650](v10, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
  }

  return v5;
}

uint64_t _s15SafetyMonitorUI0aB11UIUtilitiesC036initiatorCancelConfirmationAlertDontF11ButtonTitle4withSSAA16SessionViewModelC_tFZ_0(uint64_t a1)
{
  v1 = sub_264783E24();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FF75020 != -1)
  {
    swift_once();
  }

  v5 = qword_27FF78C00;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_264783ED4(&v14);

  v6 = v14;
  if (v14)
  {
    v7 = [v14 sessionState];

    if (v7 == 4)
    {

      if (qword_27FF75060 != -1)
      {
        swift_once();
      }

      v5 = qword_27FF78C80;
    }
  }

  else
  {
    sub_264783DF4();
    v8 = sub_264783E14();
    v9 = sub_2647859D4();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v14 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_2646DF234(0xD00000000000003CLL, 0x800000026479CC80, &v14);
      _os_log_impl(&dword_264605000, v8, v9, "Invalid Session State in %s!", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x266740650](v11, -1, -1);
      MEMORY[0x266740650](v10, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
  }

  return v5;
}

uint64_t _s15SafetyMonitorUI0aB11UIUtilitiesC34initiatorCancelConfirmationMessage4withSSAA16SessionViewModelC_tFZ_0(uint64_t a1)
{
  v1 = sub_264783E24();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v35[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_264783B94();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_264785704();
  MEMORY[0x28223BE20](v6 - 8);
  v37 = &v35[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_2647856E4();
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  MEMORY[0x28223BE20](v10);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v38);

  v11 = v38;
  if (v38)
  {
    v12 = [v38 configuration];
    if (v12)
    {

      v13 = [v11 configuration];
      if (v13)
      {
        v14 = v13;
        v15 = [v13 conversation];

        v36 = [v15 isGroup];
      }

      else
      {
        v36 = 0;
      }

      v21 = [v11 configuration];
      if (v21)
      {
        v22 = v21;
        v23 = [v21 conversation];
      }

      else
      {
        v23 = 0;
      }

      sub_264783D04();
      MEMORY[0x26673DA20](v23);
      v25 = v24;

      if (v36)
      {
        if (v25)
        {

          sub_2647856D4();
          sub_2647856C4();
          sub_2647856B4();

          sub_2647856C4();
          sub_2647856F4();
        }

        else
        {
          sub_264785694();
        }

        sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        [objc_opt_self() bundleForClass_];
        sub_264783B84();
      }

      else
      {
        sub_2647856D4();
        sub_2647856C4();

        sub_2647856B4();

        sub_2647856C4();
        sub_2647856F4();
        sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
        v27 = swift_getObjCClassFromMetadata();
        [objc_opt_self() bundleForClass_];
        sub_264783B84();
      }

      v28 = sub_264785744();
      if ([v11 sessionState] != 4)
      {

        return v28;
      }

      if (v36)
      {
        if (v25)
        {
          sub_2647856D4();
          sub_2647856C4();
          sub_2647856B4();

          sub_2647856C4();
          sub_2647856F4();
          sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
          v29 = swift_getObjCClassFromMetadata();
          v30 = [objc_opt_self() bundleForClass_];
          sub_264783B84();
          v31 = sub_264785744();
LABEL_27:
          v34 = v31;

          return v34;
        }

        sub_264785694();
        sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
        v33 = swift_getObjCClassFromMetadata();
        [objc_opt_self() bundleForClass_];
        sub_264783B84();
      }

      else
      {
        sub_2647856D4();
        sub_2647856C4();
        sub_2647856B4();

        sub_2647856C4();
        sub_2647856F4();
        sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
        v32 = swift_getObjCClassFromMetadata();
        [objc_opt_self() bundleForClass_];
        sub_264783B84();
      }

      v31 = sub_264785754();
      goto LABEL_27;
    }
  }

  sub_264783DF4();
  v16 = sub_264783E14();
  v17 = sub_2647859D4();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v38 = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_2646DF234(0xD000000000000029, 0x800000026479CB10, &v38);
    _os_log_impl(&dword_264605000, v16, v17, "Invalid Session State in %s!", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x266740650](v19, -1, -1);
    MEMORY[0x266740650](v18, -1, -1);
  }

  (*(v2 + 8))(v4, v1);
  return 0;
}

uint64_t _s15SafetyMonitorUI0aB11UIUtilitiesC24initiatorDisclosureLabel4withSSAA16SessionViewModelC_tFZ_0(uint64_t a1)
{
  v1 = sub_264783E24();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_264783B94();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_264785704();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_2647856E4();
  v8 = MEMORY[0x28223BE20](v7 - 8);
  MEMORY[0x28223BE20](v8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v30);

  v9 = v30;
  if (v30)
  {
    v10 = [v30 configuration];
    if (v10)
    {

      v11 = [v9 configuration];
      if (v11)
      {
        v12 = v11;
        v13 = [v11 conversation];

        v14 = [v13 isGroup];
      }

      else
      {
        v14 = 0;
      }

      v20 = [v9 configuration];
      if (v20)
      {
        v21 = v20;
        v22 = [v20 conversation];
      }

      else
      {
        v22 = 0;
      }

      sub_264783D04();
      v23 = MEMORY[0x26673DA20](v22);
      v25 = v24;

      if (v14)
      {
        if (v25)
        {
          sub_2647856D4();
          sub_2647856C4();
          v30 = v23;
          v31 = v25;
          sub_264613FC4();
          sub_264785B64();

          sub_2647856B4();

          sub_2647856C4();
          sub_2647856F4();
        }

        else
        {
          sub_264785694();
        }

        sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        [objc_opt_self() bundleForClass_];
        sub_264783B84();
      }

      else
      {
        sub_2647856D4();
        sub_2647856C4();
        if (v25)
        {
          v30 = v23;
          v31 = v25;
          sub_264613FC4();
          sub_264785B64();
        }

        sub_2647856B4();

        sub_2647856C4();
        sub_2647856F4();
        sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
        v27 = swift_getObjCClassFromMetadata();
        [objc_opt_self() bundleForClass_];
        sub_264783B84();
      }

      v28 = sub_264785754();

      return v28;
    }
  }

  sub_264783DF4();
  v15 = sub_264783E14();
  v16 = sub_2647859D4();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v30 = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_2646DF234(0xD00000000000001FLL, 0x800000026479C9C0, &v30);
    _os_log_impl(&dword_264605000, v15, v16, "Invalid Session State in %s!", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x266740650](v18, -1, -1);
    MEMORY[0x266740650](v17, -1, -1);
  }

  (*(v2 + 8))(v4, v1);
  return 0;
}

uint64_t _s15SafetyMonitorUI0aB11UIUtilitiesC31initiatorEndSessionButtonString4withSSAA0G9ViewModelC_tFZ_0(uint64_t a1)
{
  v1 = sub_264783E24();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_264783B94();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_264785704();
  MEMORY[0x28223BE20](v6 - 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v19);

  v7 = v19;
  if (v19)
  {
    sub_264785694();
    sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v9 = objc_opt_self();
    v10 = [v9 bundleForClass_];
    sub_264783B84();
    v11 = sub_264785754();
    if ([v7 sessionState] == 4)
    {

      sub_264785694();
      v12 = [v9 bundleForClass_];
      sub_264783B84();
      v11 = sub_264785754();
    }
  }

  else
  {
    sub_264783DF4();
    v13 = sub_264783E14();
    v14 = sub_2647859D4();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v19 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_2646DF234(0xD000000000000026, 0x800000026479C970, &v19);
      _os_log_impl(&dword_264605000, v13, v14, "Invalid Session State in %s!", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x266740650](v16, -1, -1);
      MEMORY[0x266740650](v15, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
    return 0;
  }

  return v11;
}

uint64_t _s15SafetyMonitorUI0aB11UIUtilitiesC34initiatorExtendSessionButtonString4withSSAA0G9ViewModelC_tFZ_0(uint64_t a1)
{
  v1 = sub_264783E24();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_264783B94();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_264785704();
  MEMORY[0x28223BE20](v6 - 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v22);

  v7 = v22;
  if (!v22)
  {
    goto LABEL_10;
  }

  v8 = [v22 configuration];
  if (!v8)
  {

LABEL_10:
    sub_264783DF4();
    v12 = sub_264783E14();
    v13 = sub_2647859D4();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v22 = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_2646DF234(0xD000000000000029, 0x800000026479C920, &v22);
      _os_log_impl(&dword_264605000, v12, v13, "Invalid Session State in %s!", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x266740650](v15, -1, -1);
      MEMORY[0x266740650](v14, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
    return 0;
  }

  v9 = v8;
  v10 = [v8 sessionType];
  if (v10 == 1)
  {
    if (qword_27FF75250 != -1)
    {
      swift_once();
    }

    v11 = &qword_27FF79058;
    goto LABEL_19;
  }

  if (v10 == 2)
  {
    if (qword_27FF75248 != -1)
    {
      swift_once();
    }

    v11 = &qword_27FF79048;
    goto LABEL_19;
  }

  if (v10 == 4)
  {
    if (qword_27FF75258 != -1)
    {
      swift_once();
    }

    v11 = &qword_27FF79068;
LABEL_19:
    v17 = *v11;

    return v17;
  }

  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v19 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  v20 = sub_264785754();

  return v20;
}

uint64_t _s15SafetyMonitorUI0aB11UIUtilitiesC32initiatorWarningFooterTextString4withSSSgAA16SessionViewModelC_tFZ_0(uint64_t a1)
{
  v1 = sub_264783E24();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v18);

  v5 = v18;
  if (v18)
  {
    if ([v18 userDisabledConnectivity])
    {
      if (swift_getKeyPath(), swift_getKeyPath(), sub_264783ED4(&v18), , , (v6 = v18) != 0) && (v7 = [v18 isMonitoringState], v6, (v7) || (swift_getKeyPath(), swift_getKeyPath(), sub_264783ED4(&v18), , , (v8 = v18) != 0) && (v9 = objc_msgSend(v18, sel_isAnomalyState), v8, v9))
      {
        if (SessionViewModel.sessionType.getter() == 2)
        {
          if (qword_27FF75328 != -1)
          {
            swift_once();
          }

          v10 = &qword_27FF79208;
        }

        else
        {
          if (qword_27FF75330 != -1)
          {
            swift_once();
          }

          v10 = &qword_27FF79218;
        }

LABEL_23:
        v15 = *v10;

        return v15;
      }
    }

    if ([v5 separatedLPMConnectivityWarningState])
    {
      if (qword_27FF75338 != -1)
      {
        swift_once();
      }

      v10 = &qword_27FF79228;
      goto LABEL_23;
    }
  }

  else
  {
    sub_264783DF4();
    v11 = sub_264783E14();
    v12 = sub_2647859D4();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v18 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_2646DF234(0xD000000000000027, 0x800000026479C8F0, &v18);
      _os_log_impl(&dword_264605000, v11, v12, "Invalid Session State in %s!", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x266740650](v14, -1, -1);
      MEMORY[0x266740650](v13, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
  }

  return 0;
}

unint64_t sub_264756A8C()
{
  result = qword_27FF793C0;
  if (!qword_27FF793C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF793B8, &qword_264791360);
    sub_264756B44();
    sub_26460CDF0(&qword_27FF76B98, &qword_27FF76BA0, &qword_264791250, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF793C0);
  }

  return result;
}

unint64_t sub_264756B44()
{
  result = qword_27FF793C8;
  if (!qword_27FF793C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF793D0, &unk_2647913B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF765B0, &unk_2647908C0);
    sub_26466D5C8();
    swift_getOpaqueTypeConformance2();
    sub_26460CDF0(&qword_27FF77D70, &qword_27FF77D78, &unk_264792F00, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF793C8);
  }

  return result;
}

uint64_t sub_264756C40@<X0>(_BYTE *a1@<X8>)
{
  result = sub_264784484();
  *a1 = result;
  return result;
}

uint64_t sub_264756C94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF793B8, &qword_264791360);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_264756D04(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF793B8, &qword_264791360);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_264756D70()
{
  result = qword_27FF793E8;
  if (!qword_27FF793E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF793E8);
  }

  return result;
}

unint64_t sub_264756DD4()
{
  result = qword_27FF793F0;
  if (!qword_27FF793F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF793F0);
  }

  return result;
}

unint64_t sub_264756E70()
{
  result = qword_27FF79408;
  if (!qword_27FF79408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF79408);
  }

  return result;
}

uint64_t sub_264757008(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF79410, &qword_264791938);
  sub_264784264();
  sub_26460CDF0(&qword_27FF79418, &qword_27FF79410, &qword_264791938, MEMORY[0x277CE0328]);
  return swift_getWitnessTable();
}

unint64_t sub_2647570BC()
{
  result = qword_27FF79420;
  if (!qword_27FF79420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF77320, &qword_264791240);
    sub_264757148();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF79420);
  }

  return result;
}

unint64_t sub_264757148()
{
  result = qword_27FF79428;
  if (!qword_27FF79428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF77338, &qword_26478CA90);
    sub_26460CDF0(&qword_27FF79430, &qword_27FF79438, &unk_264791940, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF79428);
  }

  return result;
}

uint64_t sub_264757288(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_264757310()
{
  result = qword_27FF79450;
  if (!qword_27FF79450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF79458, &qword_264791958);
    sub_264757394();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF79450);
  }

  return result;
}

unint64_t sub_264757394()
{
  result = qword_27FF79460;
  if (!qword_27FF79460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF79468, &unk_264791960);
    sub_26460CDF0(&qword_27FF793E0, &qword_27FF793D8, &unk_264791428, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF79460);
  }

  return result;
}

uint64_t sub_264757458(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF762F8, &qword_264789EC0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 4)
  {
    return v5 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2647574E4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 3);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF762F8, &qword_264789EC0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t type metadata accessor for SafetyMonitorUINavigationPathItem(uint64_t a1)
{
  result = qword_27FF79470;
  if (!qword_27FF79470)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2647575C0(uint64_t a1)
{
  sub_264757618();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_264757618()
{
  if (!qword_27FF79480)
  {
    sub_264757660(0);
    if (!v1)
    {
      atomic_store(v0, &qword_27FF79480);
    }
  }
}

void sub_264757660(uint64_t a1)
{
  if (!qword_27FF79488)
  {
    type metadata accessor for SafetyCacheMapView.Annotation(255);
    v1 = sub_264785B44();
    if (!v2)
    {
      atomic_store(v1, &qword_27FF79488);
    }
  }
}

uint64_t sub_264757720(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SafetyMonitorUINavigationPathItem(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_264757764(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SafetyMonitorUINavigationPathItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2647577C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF766A8, &unk_26478AA80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_264757838(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_264757898()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2647578D8()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

id sub_264757908(id result, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v5 = result;
    v4 = a2;

    return v5;
  }

  return result;
}

void *ExampleDataList.init(isInSettings:)@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF759A8, &qword_264788590);
  swift_storeEnumTagMultiPayload();
  v4 = type metadata accessor for ExampleDataList(0);
  v5 = a2 + *(v4 + 20);
  result = sub_2647852E4();
  *v5 = v7;
  *(v5 + 1) = v8;
  *(a2 + *(v4 + 24)) = a1;
  return result;
}

uint64_t sub_264757A50@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_264784574();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF759A8, &qword_264788590);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_26460CCE8(v2, &v14 - v9, &qword_27FF759A8, &qword_264788590);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_264783F74();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_2647859E4();
    v13 = sub_264784BE4();
    sub_264783DA4();

    sub_264784564();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_264757C50@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF795B0, &qword_264791CA8);
  v2 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v4 = &v28 - v3;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF795B8, &qword_264791CB0);
  MEMORY[0x28223BE20](v29);
  v6 = &v28 - v5;
  v7 = sub_264783B94();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_264785704();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF795C0, &qword_264791CB8);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v28 - v11;
  v13 = type metadata accessor for ExampleDataList(0);
  v28 = &v28;
  v14 = *(v1 + *(v13 + 24));
  v32 = v1;
  if (v14 == 1)
  {
    sub_264785694();
    sub_26460EC78();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v16 = [objc_opt_self() bundleForClass_];
    sub_264783B84();
    v37 = sub_264785754();
    v38 = v17;
    sub_264613FC4();
    v37 = sub_264784E44();
    v38 = v18;
    v39 = v19 & 1;
    v40 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79610, &qword_264791CE8);
    v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF79600, &qword_264791CE0);
    v22 = sub_264784594();
    v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF795E8, &unk_264791CD0);
    v24 = sub_26460CDF0(&qword_27FF795F0, &qword_27FF795E8, &unk_264791CD0, MEMORY[0x277CDF038]);
    v33 = v23;
    v34 = v24;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v33 = v21;
    v34 = v22;
    v35 = OpaqueTypeConformance2;
    v36 = MEMORY[0x277CDDDA0];
    swift_getOpaqueTypeConformance2();
    sub_264785474();
    (*(v10 + 16))(v6, v12, v9);
    swift_storeEnumTagMultiPayload();
    sub_26475B8CC();
    sub_26475BA30();
    sub_264784874();
    return (*(v10 + 8))(v12, v9);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF795C8, &qword_264791CC0);
    sub_26475B6D4(&qword_27FF795D0, &qword_27FF795C8, &qword_264791CC0, sub_26475B784);
    sub_264785464();
    v27 = v31;
    (*(v2 + 16))(v6, v4, v31);
    swift_storeEnumTagMultiPayload();
    sub_26475B8CC();
    sub_26475BA30();
    sub_264784874();
    return (*(v2 + 8))(v4, v27);
  }
}

uint64_t sub_2647581C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = sub_264784594();
  v4 = *(v3 - 8);
  v27 = v3;
  v28 = v4;
  MEMORY[0x28223BE20](v3);
  v26 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_264783B94();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_264785704();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF795E8, &unk_264791CD0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79600, &qword_264791CE0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v26 - v14;
  sub_264785694();
  sub_26460EC78();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  v34 = sub_264785754();
  v35 = v18;
  v19 = (a1 + *(type metadata accessor for ExampleDataList(0) + 20));
  v20 = *v19;
  v21 = *(v19 + 1);
  v32 = v20;
  v33 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B08, &qword_264791CA0);
  sub_264785314();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79618, &qword_264791CF0);
  sub_26475BAF4();
  sub_26460CDF0(&qword_27FF79628, &qword_27FF79618, &qword_264791CF0, MEMORY[0x277CE14C0]);
  sub_264613FC4();
  sub_2647853B4();
  v22 = sub_26460CDF0(&qword_27FF795F0, &qword_27FF795E8, &unk_264791CD0, MEMORY[0x277CDF038]);
  sub_264784F04();
  (*(v9 + 8))(v11, v8);
  v23 = v26;
  sub_264784584();
  v30 = v8;
  v31 = v22;
  swift_getOpaqueTypeConformance2();
  v24 = v27;
  sub_264784EF4();
  (*(v28 + 8))(v23, v24);
  return (*(v13 + 8))(v15, v12);
}

double sub_264758674@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = sub_2647848D4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_264783B94();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_264785704();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF795E8, &unk_264791CD0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - v11;
  sub_264785694();
  sub_26460EC78();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  v28 = sub_264785754();
  v29 = v15;
  v16 = (a1 + *(type metadata accessor for ExampleDataList(0) + 20));
  v17 = *v16;
  v18 = *(v16 + 1);
  v26 = v17;
  v27 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B08, &qword_264791CA0);
  sub_264785314();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79618, &qword_264791CF0);
  sub_26475BAF4();
  sub_26460CDF0(&qword_27FF79628, &qword_27FF79618, &qword_264791CF0, MEMORY[0x277CE14C0]);
  sub_264613FC4();
  sub_2647853B4();
  sub_2647848C4();
  sub_26460CDF0(&qword_27FF795F0, &qword_27FF795E8, &unk_264791CD0, MEMORY[0x277CDF038]);
  v19 = v24;
  sub_264784EF4();
  (*(v4 + 8))(v6, v3);
  (*(v10 + 8))(v12, v9);
  v25 = sub_2647851A4();
  v20 = sub_2647853C4();
  *(v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF795E0, &qword_264791CC8) + 36)) = v20;
  v21 = v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF795C8, &qword_264791CC0) + 36);
  *(v21 + 32) = 0;
  result = 0.0;
  *v21 = 0u;
  *(v21 + 16) = 0u;
  return result;
}

uint64_t sub_264758AB0@<X0>(char *a1@<X8>)
{
  v34 = a1;
  v1 = sub_264783B94();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_264785704();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79630, &qword_264791CF8);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v33 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v33 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v33 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v33 - v13;
  sub_264785694();
  sub_26460EC78();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = objc_opt_self();
  v17 = [v16 bundleForClass_];
  sub_264783B84();
  v35 = sub_264785754();
  v36 = v18;
  sub_264613FC4();
  *v14 = sub_264784E44();
  *(v14 + 1) = v19;
  v14[16] = v20 & 1;
  *(v14 + 3) = v21;
  *(v14 + 16) = 258;
  sub_264785694();
  v22 = [v16 bundleForClass_];
  sub_264783B84();
  v35 = sub_264785754();
  v36 = v23;
  *v12 = sub_264784E44();
  *(v12 + 1) = v24;
  v12[16] = v25 & 1;
  *(v12 + 3) = v26;
  *(v12 + 16) = 257;
  v27 = *(v4 + 16);
  v27(v9, v14, v3);
  v28 = v33;
  v27(v33, v12, v3);
  v29 = v34;
  v27(v34, v9, v3);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79638, &qword_264791D00);
  v27(&v29[*(v30 + 48)], v28, v3);
  v31 = *(v4 + 8);
  v31(v12, v3);
  v31(v14, v3);
  v31(v28, v3);
  return (v31)(v9, v3);
}

uint64_t ExampleDataList.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v48 = a1;
  v3 = sub_2647845E4();
  v46 = *(v3 - 8);
  v47 = v3;
  MEMORY[0x28223BE20](v3);
  v45 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_264784954();
  v6 = *(v5 - 8);
  v42 = v5;
  v43 = v6;
  MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF794D0, &qword_264791AA8);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v37 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF794D8, &qword_264791AB0);
  v38 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v37 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF794E0, &qword_264791AB8);
  v16 = *(v15 - 8);
  v40 = v15;
  v41 = v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v37 - v17;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF794E8, &qword_264791AC0);
  MEMORY[0x28223BE20](v44);
  v20 = &v37 - v19;
  v49 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF794F0, &qword_264791AC8);
  sub_26460CDF0(&qword_27FF794F8, &qword_27FF794F0, &qword_264791AC8, MEMORY[0x277CE14C0]);
  sub_264784DA4();
  v21 = sub_26460CDF0(&qword_27FF79500, &qword_27FF794D0, &qword_264791AA8, MEMORY[0x277CDE5A0]);
  sub_264785044();
  (*(v9 + 8))(v11, v8);
  v22 = v39;
  sub_264784944();
  v50 = v8;
  v51 = v21;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v24 = MEMORY[0x277CDE0D0];
  v25 = v42;
  sub_264785124();
  (*(v43 + 8))(v22, v25);
  (*(v38 + 8))(v14, v12);
  sub_264784C44();
  v50 = v12;
  v51 = v25;
  v52 = OpaqueTypeConformance2;
  v53 = v24;
  swift_getOpaqueTypeConformance2();
  v26 = v40;
  sub_264784EE4();
  (*(v41 + 8))(v18, v26);
  v27 = v45;
  sub_2647845D4();
  v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79508, &qword_264791AD0) + 36);
  v29 = v46;
  v30 = v47;
  (*(v46 + 16))(&v20[v28], v27, v47);
  v31 = v29;
  v32 = *(v29 + 56);
  v32(&v20[v28], 0, 1, v30);
  KeyPath = swift_getKeyPath();
  v34 = &v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79510, &qword_264791B08) + 36)];
  v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75A28, &qword_264788780) + 28);
  (*(v31 + 32))(v34 + v35, v27, v30);
  v32(v34 + v35, 0, 1, v30);
  *v34 = KeyPath;
  *&v20[*(v44 + 36)] = 256;
  sub_26475AD84();
  sub_264785004();
  return sub_26460CD50(v20, &qword_27FF794E8, &qword_264791AC0);
}

uint64_t sub_2647594A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v49 = sub_264783F74();
  v3 = *(v49 - 8);
  v4 = MEMORY[0x28223BE20](v49);
  v46 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v43 - v6;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79548, &qword_264791C48);
  v53 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v44 = &v43 - v8;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79550, &qword_264791C50) - 8;
  v9 = MEMORY[0x28223BE20](v50);
  v52 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v47 = &v43 - v12;
  MEMORY[0x28223BE20](v11);
  v57 = &v43 - v13;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79558, &qword_264791C58);
  v58 = *(v48 - 8);
  v14 = MEMORY[0x28223BE20](v48);
  v45 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v43 = &v43 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79560, &qword_264791C60);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v56 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v55 = &v43 - v20;
  sub_264757C50(&v43 - v20);
  v60 = a1;
  sub_26475A08C(a1, v61);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79568, &qword_264791C68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79570, &qword_264791C70);
  sub_26475B57C(&qword_27FF79578, &qword_27FF79568, &qword_264791C68);
  sub_26475B6D4(&qword_27FF79580, &qword_27FF79570, &qword_264791C70, sub_26475B4F0);
  sub_264785444();
  v59 = a1;
  sub_26475A318(v61);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79598, &unk_264791C88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76058, &qword_26478C060);
  sub_26460CDF0(&qword_27FF795A0, &qword_27FF79598, &unk_264791C88, MEMORY[0x277CE14C0]);
  sub_26475B57C(&qword_27FF76050, &qword_27FF76058, &qword_26478C060);
  v21 = v44;
  sub_264785474();
  sub_264757A50(v7);
  v22 = v46;
  v23 = v49;
  (*(v3 + 104))(v46, *MEMORY[0x277CDF3D0], v49);
  v24 = sub_264783F64();
  v25 = *(v3 + 8);
  v25(v22, v23);
  v25(v7, v23);
  v26 = objc_opt_self();
  v27 = &selRef_systemGroupedBackgroundColor;
  if ((v24 & 1) == 0)
  {
    v27 = &selRef_tertiarySystemBackgroundColor;
  }

  v28 = [v26 *v27];
  v61[0] = sub_264785134();
  v29 = sub_2647853C4();
  v30 = v47;
  (*(v53 + 32))(v47, v21, v51);
  *(v30 + *(v50 + 44)) = v29;
  v31 = v57;
  sub_26475B5EC(v30, v57);
  v32 = v56;
  sub_26475B65C(v55, v56);
  v33 = *(v58 + 16);
  v34 = v45;
  v35 = v43;
  v36 = v48;
  v33(v45, v43, v48);
  v37 = v52;
  sub_26460CCE8(v31, v52, &qword_27FF79550, &qword_264791C50);
  v38 = v32;
  v39 = v54;
  sub_26475B65C(v38, v54);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF795A8, &qword_264791C98);
  v33((v39 + *(v40 + 48)), v34, v36);
  sub_26460CCE8(v37, v39 + *(v40 + 64), &qword_27FF79550, &qword_264791C50);
  sub_26460CD50(v57, &qword_27FF79550, &qword_264791C50);
  v41 = *(v58 + 8);
  v41(v35, v36);
  sub_26460CD50(v55, &qword_27FF79560, &qword_264791C60);
  sub_26460CD50(v37, &qword_27FF79550, &qword_264791C50);
  v41(v34, v36);
  return sub_26460CD50(v56, &qword_27FF79560, &qword_264791C60);
}

double sub_264759C04@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_264785284();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for ImageProvider();
  sub_264759E14();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [objc_opt_self() bundleForClass_];
  v8 = sub_264785714();
  v9 = [objc_opt_self() imageNamed:v8 inBundle:v7 withConfiguration:0];

  if (!v9)
  {
    [objc_allocWithZone(MEMORY[0x277D755B8]) init];
  }

  sub_264785254();
  (*(v3 + 104))(v5, *MEMORY[0x277CE0FE0], v2);
  v10 = sub_2647852C4();

  (*(v3 + 8))(v5, v2);
  *a1 = v10;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  return result;
}

uint64_t sub_264759E14()
{
  v1 = sub_264783F74();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v20[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v3);
  v7 = &v20[-v6];
  v8 = (v0 + *(type metadata accessor for ExampleDataList(0) + 20));
  v9 = *v8;
  v10 = *(v8 + 1);
  LOBYTE(v22) = v9;
  v23 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B08, &qword_264791CA0);
  sub_2647852F4();
  v11 = 0x746144206C6C7546;
  if (v21 == 2)
  {
    v11 = 0x20646574696D694CLL;
  }

  v12 = 0xE900000000000061;
  if (v21 == 2)
  {
    v12 = 0xEC00000061746144;
  }

  v22 = v11;
  v23 = v12;
  sub_264757A50(v7);
  v13 = *(v2 + 104);
  v13(v5, *MEMORY[0x277CDF3D0], v1);
  v14 = sub_264783F64();
  v15 = *(v2 + 8);
  v15(v5, v1);
  v15(v7, v1);
  if (v14)
  {
    v16 = 0x746867694C2DLL;
    v17 = 0xE600000000000000;
LABEL_9:
    MEMORY[0x26673F4D0](v16, v17);
    return v22;
  }

  sub_264757A50(v7);
  v13(v5, *MEMORY[0x277CDF3C0], v1);
  v18 = sub_264783F64();
  v15(v5, v1);
  v15(v7, v1);
  if (v18)
  {
    v16 = 0x6B7261442DLL;
    v17 = 0xE500000000000000;
    goto LABEL_9;
  }

  return v22;
}

double sub_26475A08C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_264783B94();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_264785704();
  MEMORY[0x28223BE20](v5 - 8);
  if (*(a1 + *(type metadata accessor for ExampleDataList(0) + 24)) == 1)
  {
    sub_264785694();
    sub_26460EC78();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v7 = [objc_opt_self() bundleForClass_];
    sub_264783B84();
    *&v10 = sub_264785754();
    *(&v10 + 1) = v8;
    sub_264613FC4();
    sub_264784E44();
  }

  sub_264784874();
  result = *&v10;
  *a2 = v10;
  *(a2 + 16) = v11;
  *(a2 + 32) = v12;
  return result;
}

void *sub_26475A264@<X0>(_BYTE *a2@<X8>)
{
  type metadata accessor for ExampleDataList(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B08, &qword_264791CA0);
  sub_2647852F4();
  result = sub_2647852F4();
  *a2 = 0;
  a2[1] = v4;
  a2[2] = 1;
  a2[3] = v4;
  return result;
}

double sub_26475A318@<D0>(uint64_t a2@<X8>)
{
  v3 = sub_264783B94();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_264785704();
  MEMORY[0x28223BE20](v4 - 8);
  type metadata accessor for ExampleDataList(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B08, &qword_264791CA0);
  sub_2647852F4();
  sub_264785694();
  sub_26460EC78();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  *&v9 = sub_264785754();
  *(&v9 + 1) = v7;
  sub_264613FC4();
  sub_264784E44();
  sub_264784874();
  result = *&v9;
  *a2 = v9;
  *(a2 + 16) = v10;
  *(a2 + 32) = v11;
  return result;
}

uint64_t sub_26475A5CC@<X0>(__int16 a1@<W0>, uint64_t a2@<X8>)
{
  v4 = a1 & 1;
  v5 = sub_264785274();
  v6 = sub_264784CD4();
  KeyPath = swift_getKeyPath();
  v8 = sub_264784714();
  sub_26475A864(a1 & 0xFF01, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v19, __src, 0x120uLL);
  sub_26460CCE8(__dst, v15, &qword_27FF75A88, &qword_2647888E0);
  sub_26460CD50(v19, &qword_27FF75A88, &qword_2647888E0);
  memcpy(&v17[7], __dst, 0x120uLL);
  if (v4)
  {
    v9 = 0;
    v13 = 0;
  }

  else
  {
    v9 = sub_264785264();
    v13 = sub_2647849C4();
  }

  v12 = sub_264785274();
  v10 = sub_2647849C4();
  v14[0] = v8;
  v14[1] = 0;
  LOBYTE(v14[2]) = 1;
  memcpy(&v14[2] + 1, v17, 0x127uLL);
  memcpy(v15, v14, sizeof(v15));

  sub_26460CCE8(v14, __src, &qword_27FF75A90, &qword_2647888E8);
  *a2 = v5;
  *(a2 + 8) = KeyPath;
  *(a2 + 16) = v6;
  memcpy((a2 + 24), v15, 0x138uLL);
  *(a2 + 336) = v9;
  *(a2 + 344) = v13;
  *(a2 + 352) = v12;
  *(a2 + 360) = v10;

  *__src = v8;
  *&__src[8] = 0;
  __src[16] = 1;
  memcpy(&__src[17], v17, 0x127uLL);
  sub_26460CD50(__src, &qword_27FF75A90, &qword_2647888E8);
}

uint64_t sub_26475A864@<X0>(__int16 a1@<W0>, void *a2@<X8>)
{
  v2 = a1;
  v3 = HIBYTE(a1);
  sub_264691ADC(a1 & 1);
  sub_264613FC4();
  v4 = sub_264784E44();
  v28 = v5;
  v29 = v4;
  v7 = v6;
  v30 = v8;
  sub_264785514();
  sub_264784314();
  v27 = v7 & 1;
  v91 = v7 & 1;
  HIDWORD(v69) = sub_264691C6C(v3, v2 & 1) >> 32;
  v70 = v9;
  v10 = sub_264784E44();
  v12 = v11;
  v14 = v13;
  LODWORD(v69) = sub_2647849C4();
  v15 = sub_264784DF4();
  v17 = v16;
  v19 = v18;
  sub_26460ECC4(v10, v12, v14 & 1);

  sub_264784D74();
  v20 = sub_264784E24();
  v22 = v21;
  LOBYTE(v10) = v23;
  v26 = v24;

  sub_26460ECC4(v15, v17, v19 & 1);

  sub_264785514();
  sub_264784314();
  *&v40 = v29;
  *(&v40 + 1) = v28;
  LOBYTE(v41) = v27;
  *(&v41 + 1) = *v90;
  DWORD1(v41) = *&v90[3];
  *(&v41 + 1) = v30;
  v46 = v87;
  v47 = v88;
  v48 = v89;
  v42 = v83;
  v43 = v84;
  v44 = v85;
  v45 = v86;
  __src[6] = v87;
  __src[7] = v88;
  __src[2] = v83;
  __src[3] = v84;
  __src[4] = v85;
  __src[5] = v86;
  __src[0] = v40;
  __src[1] = v41;
  *&v49 = v20;
  *(&v49 + 1) = v22;
  LOBYTE(v50) = v10 & 1;
  *(&v50 + 1) = *v81;
  DWORD1(v50) = *&v81[3];
  *(&v50 + 1) = v26;
  v55 = v37;
  v56 = v38;
  v57 = v39;
  v51 = v33;
  v52 = v34;
  v53 = v35;
  v54 = v36;
  __src[12] = v34;
  __src[13] = v35;
  __src[10] = v50;
  __src[11] = v33;
  __src[14] = v36;
  __src[15] = v37;
  __src[16] = v38;
  __src[17] = v39;
  v82 = v10 & 1;
  __src[8] = v89;
  __src[9] = v49;
  memcpy(a2, __src, 0x120uLL);
  v58[0] = v20;
  v58[1] = v22;
  v59 = v10 & 1;
  *v60 = *v81;
  *&v60[3] = *&v81[3];
  v61 = v26;
  v66 = v37;
  v67 = v38;
  v68 = v39;
  v62 = v33;
  v63 = v34;
  v64 = v35;
  v65 = v36;
  sub_26460CCE8(&v40, &v69, &qword_27FF75AA0, &qword_2647888F0);
  sub_26460CCE8(&v49, &v69, &qword_27FF75AA0, &qword_2647888F0);
  sub_26460CD50(v58, &qword_27FF75AA0, &qword_2647888F0);
  v69 = v29;
  v70 = v28;
  v71 = v27;
  *v72 = *v90;
  *&v72[3] = *&v90[3];
  v73 = v30;
  v78 = v87;
  v79 = v88;
  v80 = v89;
  v74 = v83;
  v75 = v84;
  v76 = v85;
  v77 = v86;
  return sub_26460CD50(&v69, &qword_27FF75AA0, &qword_2647888F0);
}

void *sub_26475AC40@<X0>(uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = sub_2647845C4();
  v12 = 1;
  sub_26475A5CC(v4 | (v5 << 8), __src);
  memcpy(__dst, __src, 0x16CuLL);
  memcpy(v14, __src, 0x16CuLL);
  sub_26460CCE8(__dst, &v9, &qword_27FF79540, &qword_264791C08);
  sub_26460CD50(v14, &qword_27FF79540, &qword_264791C08);
  memcpy(&v11[7], __dst, 0x16CuLL);
  v7 = v12;
  *a2 = v6;
  *(a2 + 8) = 0;
  *(a2 + 16) = v7;
  return memcpy((a2 + 17), v11, 0x173uLL);
}

uint64_t type metadata accessor for ExampleDataList(uint64_t a1)
{
  result = qword_27FF79530;
  if (!qword_27FF79530)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_26475AD84()
{
  result = qword_27FF79518;
  if (!qword_27FF79518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF794E8, &qword_264791AC0);
    sub_26475AE10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF79518);
  }

  return result;
}

unint64_t sub_26475AE10()
{
  result = qword_27FF79520;
  if (!qword_27FF79520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF79510, &qword_264791B08);
    sub_26475AEC8();
    sub_26460CDF0(&qword_27FF75A58, &qword_27FF75A28, &qword_264788780, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF79520);
  }

  return result;
}

unint64_t sub_26475AEC8()
{
  result = qword_27FF79528;
  if (!qword_27FF79528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF79508, &qword_264791AD0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF794E0, &qword_264791AB8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF794D8, &qword_264791AB0);
    sub_264784954();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF794D0, &qword_264791AA8);
    sub_26460CDF0(&qword_27FF79500, &qword_27FF794D0, &qword_264791AA8, MEMORY[0x277CDE5A0]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_26460CDF0(&qword_27FF75A48, &qword_27FF75A50, &qword_264788788, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF79528);
  }

  return result;
}

uint64_t sub_26475B0C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75960, &unk_264790C60);
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

uint64_t sub_26475B1AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75960, &unk_264790C60);
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

void sub_26475B274(uint64_t a1)
{
  sub_26460EA3C(319);
  if (v1 <= 0x3F)
  {
    sub_264613DD8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_26475B300()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF794E8, &qword_264791AC0);
  sub_26475AD84();
  return swift_getOpaqueTypeConformance2();
}

uint64_t getEnumTagSinglePayload for ExampleDataListRow(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
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

_WORD *storeEnumTagSinglePayload for ExampleDataListRow(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_26475B4F0()
{
  result = qword_27FF79588;
  if (!qword_27FF79588)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF79590, &unk_264791C78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF79588);
  }

  return result;
}

uint64_t sub_26475B57C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_26475B5EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79550, &qword_264791C50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26475B65C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79560, &qword_264791C60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26475B6D4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_26460CDF0(&qword_27FF76038, &qword_27FF76040, &unk_264789B80, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26475B784()
{
  result = qword_27FF795D8;
  if (!qword_27FF795D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF795E0, &qword_264791CC8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF795E8, &unk_264791CD0);
    sub_2647848D4();
    sub_26460CDF0(&qword_27FF795F0, &qword_27FF795E8, &unk_264791CD0, MEMORY[0x277CDF038]);
    swift_getOpaqueTypeConformance2();
    sub_26460CDF0(&qword_27FF75AF0, &qword_27FF75AF8, &qword_264788928, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF795D8);
  }

  return result;
}

unint64_t sub_26475B8CC()
{
  result = qword_27FF795F8;
  if (!qword_27FF795F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF795C0, &qword_264791CB8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF79600, &qword_264791CE0);
    sub_264784594();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF795E8, &unk_264791CD0);
    sub_26460CDF0(&qword_27FF795F0, &qword_27FF795E8, &unk_264791CD0, MEMORY[0x277CDF038]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF795F8);
  }

  return result;
}

unint64_t sub_26475BA30()
{
  result = qword_27FF79608;
  if (!qword_27FF79608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF795B0, &qword_264791CA8);
    sub_26475B6D4(&qword_27FF795D0, &qword_27FF795C8, &qword_264791CC0, sub_26475B784);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF79608);
  }

  return result;
}

unint64_t sub_26475BAF4()
{
  result = qword_27FF79620;
  if (!qword_27FF79620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF79620);
  }

  return result;
}

SafetyMonitorUI::PayloadType_optional __swiftcall PayloadType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_264785E14();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t PayloadType.isWorkout.getter()
{
  v1 = *v0;
  if (v1 == 2)
  {
    goto LABEL_6;
  }

  v2 = sub_264785E84();

  if ((v2 & 1) == 0)
  {
    if (v1 <= 1)
    {
      v3 = sub_264785E84();
LABEL_7:

      return v3 & 1;
    }

LABEL_6:
    v3 = 1;
    goto LABEL_7;
  }

  v3 = 1;
  return v3 & 1;
}

uint64_t static PayloadType.isWorkout(payloadString:)(uint64_t a1, uint64_t a2)
{

  v2 = sub_264785E14();

  if (v2 > 3)
  {
    v3 = 0;
  }

  else
  {
    v3 = PayloadType.isWorkout.getter();
  }

  return v3 & 1;
}

unint64_t PayloadType.rawValue.getter()
{
  v1 = 0xD000000000000030;
  v2 = 0xD000000000000039;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000043;
  }

  if (!*v0)
  {
    v1 = 0xD00000000000003BLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_26475BE44()
{
  sub_264785F44();
  sub_264785794();

  return sub_264785F94();
}

uint64_t sub_26475BF00(uint64_t a1)
{
  sub_264785794();
}

uint64_t sub_26475BFA8(uint64_t a1)
{
  sub_264785F44();
  sub_264785794();

  return sub_264785F94();
}

void sub_26475C06C(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000030;
  v3 = "yMonitorMessages";
  v4 = 0xD000000000000039;
  if (*v1 != 2)
  {
    v4 = 0xD000000000000043;
    v3 = "yMonitorMessages.Workouts";
  }

  if (*v1)
  {
    v5 = "yMonitorMessages.NewMessage";
  }

  else
  {
    v2 = 0xD00000000000003BLL;
    v5 = "eRoutine-1\n";
  }

  if (*v1 <= 1u)
  {
    v6 = v5;
  }

  else
  {
    v2 = v4;
    v6 = v3;
  }

  *a1 = v2;
  a1[1] = v6 | 0x8000000000000000;
}

unint64_t sub_26475C0EC()
{
  result = qword_27FF79650;
  if (!qword_27FF79650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF79650);
  }

  return result;
}

uint64_t sub_26475C150(void *a1)
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_264785714();
  v4 = [v2 BOOLForKey_];

  if ((v4 & 1) == 0)
  {
    [a1 countDownDuration];
    if (v5 < 300.0)
    {
      [a1 setCountDownDuration_];
    }
  }

  [a1 countDownDuration];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF772F0, &qword_26478C998);
  sub_2647853E4();
}

id sub_26475C340()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TimePicker.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_26475C3F0()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D753E8]) init];
  [v0 setDatePickerMode_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79668, &qword_264791EF8);
  sub_264784AB4();
  [v0 addTarget:v2 action:sel_changed_ forControlEvents:4096];

  [v0 setMinuteInterval_];
  return v0;
}

id sub_26475C4A0(void *a1)
{
  v3 = v1[1];
  v4 = v1[2];
  v7[1] = *v1;
  v7[2] = v3;
  v7[3] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF772F0, &qword_26478C998);
  MEMORY[0x26673F100](v7, v5);
  return [a1 setCountDownDuration_];
}

void *sub_26475C50C@<X0>(void *a1@<X8>)
{
  v3 = v1[1];
  v4 = v1[2];
  v15 = *v1;
  v16 = v3;
  v17 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF772F0, &qword_26478C998);
  sub_2647853F4();
  v5 = v13;
  v6 = v14;
  v7 = type metadata accessor for TimePicker.Coordinator();
  v8 = objc_allocWithZone(v7);
  v9 = &v8[OBJC_IVAR____TtCV15SafetyMonitorUI10TimePicker11Coordinator_countDownDuration];
  *v9 = v12;
  *(v9 + 1) = v5;
  *(v9 + 2) = v6;
  v11.receiver = v8;
  v11.super_class = v7;
  result = objc_msgSendSuper2(&v11, sel_init);
  *a1 = result;
  return result;
}

uint64_t sub_26475C5B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26475C6A4();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_26475C618(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26475C6A4();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_26475C67C(uint64_t a1)
{
  sub_26475C6A4();
  sub_264784834();
  __break(1u);
}

unint64_t sub_26475C6A4()
{
  result = qword_27FF79660;
  if (!qword_27FF79660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF79660);
  }

  return result;
}

uint64_t InitiatorSessionDetailsView.init(sessionViewModel:handlerManager:safetyCacheViewModel:showCachePersistence:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, int a4@<W3>, char *a5@<X8>)
{
  LODWORD(v169) = a4;
  v157 = a3;
  v166 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756A0, &qword_264787DA0);
  v164 = *(v7 - 8);
  v165 = v7;
  MEMORY[0x28223BE20](v7);
  v151 = &v130 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756A8, &qword_264787DA8);
  v149 = *(v9 - 8);
  v150 = v9;
  MEMORY[0x28223BE20](v9);
  v148 = &v130 - v10;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756B0, &unk_264787DB0);
  v161 = *(v168 - 8);
  MEMORY[0x28223BE20](v168);
  v146 = &v130 - v11;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756B8, &qword_26478AC90);
  v12 = MEMORY[0x28223BE20](v163);
  v133 = &v130 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v131 = &v130 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v132 = &v130 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v162 = &v130 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v172 = &v130 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v171 = &v130 - v23;
  MEMORY[0x28223BE20](v22);
  v170 = &v130 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756C8, &qword_264791F00);
  v159 = *(v25 - 8);
  v160 = v25;
  MEMORY[0x28223BE20](v25);
  v158 = (&v130 - v26);
  v145 = type metadata accessor for SafetyCacheMapViewModel.AnnotationInfo(0);
  v27 = MEMORY[0x28223BE20](v145);
  v142 = &v130 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v143 = &v130 - v29;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756D0, &unk_264787DD0);
  v141 = *(v167 - 1);
  MEMORY[0x28223BE20](v167);
  v139 = &v130 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756C0, &unk_264787DC0);
  v153 = *(v31 - 8);
  v154 = v31;
  MEMORY[0x28223BE20](v31);
  v33 = &v130 - v32;
  v34 = type metadata accessor for InitiatorSessionDetailsView(0);
  v35 = v34[6];
  *&a5[v35] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75688, &unk_264789EA0);
  swift_storeEnumTagMultiPayload();
  v36 = &a5[v34[7]];
  LOBYTE(v186[0]) = 0;
  sub_2647852E4();
  v37 = *(&v187 + 1);
  *v36 = v187;
  *(v36 + 1) = v37;
  v38 = &a5[v34[8]];
  *&v186[0] = MEMORY[0x277D84F90];
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756E0, &qword_264787DE0);
  sub_2647852E4();
  v39 = v187;
  *v38 = v187;
  v40 = &a5[v34[11]];
  *v40 = 0xD00000000000001CLL;
  *(v40 + 1) = 0x800000026479FBF0;
  type metadata accessor for SessionViewModel(0);
  sub_264770ADC(&qword_27FF75DC0, type metadata accessor for SessionViewModel, &protocol conformance descriptor for SessionViewModel);
  v144 = v39;

  v140 = *(&v39 + 1);

  *a5 = sub_264784174();
  *(a5 + 1) = v41;
  type metadata accessor for SafetyCacheViewModel(0);
  sub_264770ADC(&qword_27FF756E8, type metadata accessor for SafetyCacheViewModel, &protocol conformance descriptor for SafetyCacheViewModel);
  v42 = v157;
  *(a5 + 2) = sub_264784174();
  *(a5 + 3) = v43;
  *&a5[v34[13]] = v166;
  v156 = v34;
  v157 = a5;
  a5[v34[12]] = v169;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(v186);

  v189 = v186[2];
  v190 = v186[3];
  v191 = v186[4];
  v192 = v186[5];
  v187 = v186[0];
  v188 = v186[1];
  swift_beginAccess();
  v152 = v33;
  sub_264783EA4();
  swift_endAccess();
  swift_beginAccess();
  v166 = a1;
  v44 = *(a1 + 48);
  swift_getKeyPath();
  swift_getKeyPath();
  v138 = v44;
  v45 = v44;
  v155 = v42;
  sub_264783ED4(v185);

  v46 = v185[0];
  if (v185[0])
  {
    v47 = [v185[0] initiatorHandle];

    v48 = [v47 primaryHandle];
    v49 = sub_264785724();
    v136 = v50;
    v137 = v49;
  }

  else
  {
    v136 = 0;
    v137 = 0;
  }

  if (qword_27FF75008 != -1)
  {
    swift_once();
  }

  v135 = qword_27FF807E8;
  v169 = type metadata accessor for SafetyCacheMapViewModel(0);
  v51 = objc_allocWithZone(v169);
  *&v51[OBJC_IVAR____TtC15SafetyMonitorUI23SafetyCacheMapViewModel_locationDegreeBuffer] = 0x3F847AE147AE147BLL;
  v52 = OBJC_IVAR____TtC15SafetyMonitorUI23SafetyCacheMapViewModel__annotations;
  v185[0] = MEMORY[0x277D84F90];
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756F0, &qword_264787DE8);
  v53 = v139;
  sub_264783E94();
  v54 = v141;
  (*(v141 + 32))(&v51[v52], v53, v167);
  v55 = OBJC_IVAR____TtC15SafetyMonitorUI23SafetyCacheMapViewModel__annotationInfo;
  v56 = type metadata accessor for SafetyCacheMapViewModel.AnnotationInfo.LocationInfo(0);
  v57 = *(*(v56 - 8) + 56);
  v58 = v143;
  v57(v143, 1, 1, v56);
  v59 = v145;
  v57(&v58[*(v145 + 20)], 1, 1, v56);
  v57(&v58[*(v59 + 24)], 1, 1, v56);
  v57(&v58[*(v59 + 28)], 1, 1, v56);
  sub_26476E76C(v58, v142, type metadata accessor for SafetyCacheMapViewModel.AnnotationInfo);
  v60 = v158;
  sub_264783E94();
  sub_26476E7D4(v58, type metadata accessor for SafetyCacheMapViewModel.AnnotationInfo);
  (*(v159 + 32))(&v51[v55], v60, v160);
  v61 = &v51[OBJC_IVAR____TtC15SafetyMonitorUI23SafetyCacheMapViewModel_destinationLocation];
  *v61 = 0;
  *(v61 + 1) = 0;
  v61[16] = 1;
  v62 = &v51[OBJC_IVAR____TtC15SafetyMonitorUI23SafetyCacheMapViewModel_safetyCache];
  memset(v185, 0, 96);
  *v62 = 0u;
  *(v62 + 1) = 0u;
  *(v62 + 2) = 0u;
  *(v62 + 3) = 0u;
  *(v62 + 4) = 0u;
  *(v62 + 5) = 0u;
  sub_26460CD50(v185, &qword_27FF756F8, &qword_264787DF0);
  swift_beginAccess();
  (*(v54 + 8))(&v51[v52], v167);
  v174 = MEMORY[0x277D84F90];
  sub_264783E94();
  swift_endAccess();
  v63 = v137;
  *&v51[OBJC_IVAR____TtC15SafetyMonitorUI23SafetyCacheMapViewModel_contact] = v138;
  v64 = &v51[OBJC_IVAR____TtC15SafetyMonitorUI23SafetyCacheMapViewModel_handle];
  v65 = v135;
  v66 = v136;
  *v64 = v63;
  *(v64 + 1) = v66;
  *&v51[OBJC_IVAR____TtC15SafetyMonitorUI23SafetyCacheMapViewModel_geocoder] = v65;
  v184.receiver = v51;
  v184.super_class = v169;

  v143 = objc_msgSendSuper2(&v184, sel_init);
  v182 = v144;
  v183 = v140;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF761D8, &qword_264789DF0);
  sub_2647852F4();

  v144 = v181;
  v145 = SessionViewModel.sessionType.getter();
  v67 = sub_264783AF4();
  v68 = *(v67 - 8);
  v69 = *(v68 + 56);
  v167 = v69;
  v70 = v68 + 56;
  v69(v170, 1, 1, v67);
  v160 = v67;
  v69(v171, 1, 1, v67);
  v159 = v70;
  v158 = type metadata accessor for SafetyCacheDetailViewModel(0);
  v71 = objc_allocWithZone(v158);
  v72 = &v71[OBJC_IVAR____TtC15SafetyMonitorUI26SafetyCacheDetailViewModel__safetyCache];
  v179 = 0u;
  v180 = 0u;
  v177 = 0u;
  v178 = 0u;
  v175 = 0u;
  v176 = 0u;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756F8, &qword_264787DF0);
  v74 = v146;
  v141 = v73;
  sub_264783E94();
  v75 = *(v161 + 4);
  v142 = v72;
  v75(v72, v74, v168);
  v76 = OBJC_IVAR____TtC15SafetyMonitorUI26SafetyCacheDetailViewModel__startLocationInfoViewModel;
  *&v175 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756D8, &qword_26478F7B0);
  v77 = v148;
  sub_264783E94();
  v78 = v150;
  v79 = *(v149 + 4);
  v79(&v71[v76], v77, v150);
  v80 = OBJC_IVAR____TtC15SafetyMonitorUI26SafetyCacheDetailViewModel__destinationInfoViewModel;
  *&v175 = 0;
  sub_264783E94();
  v79(&v71[v80], v77, v78);
  v81 = &v71[OBJC_IVAR____TtC15SafetyMonitorUI26SafetyCacheDetailViewModel__sessionStartTime];
  v82 = v172;
  v167(v172, 1, 1, v67);
  v83 = v162;
  sub_26460CCE8(v82, v162, &qword_27FF756B8, &qword_26478AC90);
  v84 = v151;
  sub_264783E94();
  sub_26460CD50(v82, &qword_27FF756B8, &qword_26478AC90);
  v85 = v165;
  v86 = *(v164 + 32);
  v149 = v81;
  v86(v81, v84, v165);
  v87 = &v71[OBJC_IVAR____TtC15SafetyMonitorUI26SafetyCacheDetailViewModel__sessionEndTime];
  v167(v82, 1, 1, v160);
  sub_26460CCE8(v82, v83, &qword_27FF756B8, &qword_26478AC90);
  sub_264783E94();
  sub_26460CD50(v82, &qword_27FF756B8, &qword_26478AC90);
  v150 = v87;
  v86(v87, v84, v85);
  v88 = &v71[OBJC_IVAR____TtC15SafetyMonitorUI26SafetyCacheDetailViewModel_routeIconSize];
  *v88 = 0;
  *(v88 + 1) = 0;
  v89 = &v71[OBJC_IVAR____TtC15SafetyMonitorUI26SafetyCacheDetailViewModel_callFunctionProvider];
  *v89 = 0u;
  *(v89 + 1) = 0u;
  *(v89 + 4) = 0;
  v90 = v71;
  *&v71[OBJC_IVAR____TtC15SafetyMonitorUI26SafetyCacheDetailViewModel_contact] = 0;
  if (MEMORY[0x277D84F90] >> 62 && sub_264785C14())
  {
    v91 = sub_26476D298(MEMORY[0x277D84F90]);
  }

  else
  {
    v91 = MEMORY[0x277D84FA0];
  }

  *&v71[OBJC_IVAR____TtC15SafetyMonitorUI26SafetyCacheDetailViewModel_sinkSet] = v91;
  v92 = v142;
  swift_beginAccess();
  (*(v161 + 1))(v92, v168);
  v177 = v189;
  v178 = v190;
  v179 = v191;
  v180 = v192;
  v175 = v187;
  v176 = v188;
  sub_264783E94();
  swift_endAccess();
  v93 = &v71[OBJC_IVAR____TtC15SafetyMonitorUI26SafetyCacheDetailViewModel__cacheMapViewModel];
  swift_beginAccess();
  v94 = sub_264770ADC(&qword_27FF75700, type metadata accessor for SafetyCacheMapViewModel, &unk_26478D5D0);
  v161 = v143;
  v168 = v94;
  *v93 = sub_264784174();
  v93[1] = v95;
  swift_endAccess();
  swift_beginAccess();
  v174 = v144;
  sub_264783E94();
  swift_endAccess();
  v140 = v90;
  v90[OBJC_IVAR____TtC15SafetyMonitorUI26SafetyCacheDetailViewModel_isTransparencyMode] = 1;
  *&v90[OBJC_IVAR____TtC15SafetyMonitorUI26SafetyCacheDetailViewModel_sessionType] = v145;
  v96 = v172;
  sub_26460CCE8(v170, v172, &qword_27FF756B8, &qword_26478AC90);
  v97 = v149;
  swift_beginAccess();
  v98 = v165;
  v99 = *(v164 + 8);
  v99(v97, v165);
  v100 = v162;
  sub_26460CCE8(v96, v162, &qword_27FF756B8, &qword_26478AC90);
  sub_264783E94();
  sub_26460CD50(v96, &qword_27FF756B8, &qword_26478AC90);
  swift_endAccess();
  sub_26460CCE8(v171, v96, &qword_27FF756B8, &qword_26478AC90);
  v101 = v150;
  swift_beginAccess();
  v99(v101, v98);
  sub_26460CCE8(v96, v100, &qword_27FF756B8, &qword_26478AC90);
  sub_264783E94();
  sub_26460CD50(v96, &qword_27FF756B8, &qword_26478AC90);
  swift_endAccess();
  v173.receiver = v140;
  v173.super_class = v158;
  v102 = objc_msgSendSuper2(&v173, sel_init);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_26460CDF0(&qword_27FF75708, &qword_27FF756C0, &unk_264787DC0, MEMORY[0x277CBCEC8]);
  v103 = v102;
  v104 = v154;
  v105 = v152;
  sub_264783F14();

  swift_beginAccess();
  sub_264783E34();
  swift_endAccess();

  sub_26460CD50(v171, &qword_27FF756B8, &qword_26478AC90);
  sub_26460CD50(v170, &qword_27FF756B8, &qword_26478AC90);
  (*(v153 + 8))(v105, v104);
  if (SessionViewModel.sessionType.getter() == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(&v175);

    v106 = v175;
    if (v175 && (v107 = [v175 configuration], v106, v107))
    {
      v108 = [v107 sessionStartDate];

      if (v108)
      {
        v109 = v131;
        sub_264783AC4();

        v110 = 0;
      }

      else
      {
        v110 = 1;
        v109 = v131;
      }

      v111 = v132;
      v167(v109, v110, 1, v160);
      sub_26460E7E4(v109, v111, &qword_27FF756B8, &qword_26478AC90);
    }

    else
    {
      v111 = v132;
      v167(v132, 1, 1, v160);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_26460CCE8(v111, v172, &qword_27FF756B8, &qword_26478AC90);
    v171 = v103;
    sub_264783EE4();
    sub_26460CD50(v111, &qword_27FF756B8, &qword_26478AC90);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(&v175);

    v112 = v175;
    if (v175 && (v113 = [v175 configuration], v112, v113))
    {
      v114 = [v113 time];

      v115 = v133;
      if (v114)
      {
        v116 = [v114 timeBound];

        sub_264783AC4();
        v117 = 0;
      }

      else
      {
        v117 = 1;
      }
    }

    else
    {
      v117 = 1;
      v115 = v133;
    }

    v167(v115, v117, 1, v160);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_26460CCE8(v115, v172, &qword_27FF756B8, &qword_26478AC90);
    v118 = v171;
    sub_264783EE4();
    sub_26460CD50(v115, &qword_27FF756B8, &qword_26478AC90);
  }

  v119 = swift_allocObject();
  *(v119 + 16) = v103;
  v121 = v156;
  v120 = v157;
  v122 = &v157[v156[9]];
  *v122 = sub_26476D074;
  *(v122 + 1) = v119;
  v122[16] = 0;
  v123 = &v103[OBJC_IVAR____TtC15SafetyMonitorUI26SafetyCacheDetailViewModel__cacheMapViewModel];
  swift_beginAccess();
  v124 = &v120[v121[10]];
  v125 = v123[1];
  v126 = sub_264784174();
  v128 = v127;

  *v124 = v126;
  v124[1] = v128;
  return result;
}

uint64_t type metadata accessor for InitiatorSessionDetailsView(uint64_t a1)
{
  result = qword_27FF796F8;
  if (!qword_27FF796F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26475DD74(void **a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;

  sub_264783EE4();
  return sub_26461E5B0();
}

void sub_26475DE08(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;
  sub_264783ED4(&v7);

  v5 = v7;
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = v2;
  v6 = v4;
  v3;
  sub_264783EE4();
  sub_26466FB44(v5);
}

uint64_t sub_26475DEF8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_264784574();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75688, &unk_264789EA0);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for InitiatorSessionDetailsView(0);
  sub_26460CCE8(v1 + *(v10 + 24), v9, &qword_27FF75688, &unk_264789EA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_2647840D4();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_2647859E4();
    v13 = sub_264784BE4();
    sub_264783DA4();

    sub_264784564();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t InitiatorSessionDetailsView.body.getter()
{
  type metadata accessor for InitiatorSessionDetailsView(0);
  type metadata accessor for SafetyCacheDetailViewModel(0);
  sub_264770ADC(&qword_27FF781E0, type metadata accessor for SafetyCacheDetailViewModel, &protocol conformance descriptor for SafetyCacheDetailViewModel);
  v0 = sub_264783FB4();
  swift_getKeyPath();
  sub_264784194();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756E0, &qword_264787DE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79670, &qword_2647920C8);
  sub_26460CDF0(&qword_27FF761E8, &qword_27FF756E0, &qword_264787DE0, MEMORY[0x277D83960]);
  sub_26460CDF0(&qword_27FF761F0, &qword_27FF756E0, &qword_264787DE0, MEMORY[0x277D83980]);
  sub_26460CDF0(&qword_27FF761F8, &qword_27FF756E0, &qword_264787DE0, MEMORY[0x277D83990]);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF79678, &qword_2647920D0);
  sub_26476D53C();
  swift_getOpaqueTypeConformance2();
  sub_264770ADC(&qword_27FF76278, type metadata accessor for SafetyMonitorUINavigationPathItem, &unk_2647919F4);
  return sub_264784274();
}

uint64_t sub_26475E37C@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v4);

  *a2 = v4;
  return result;
}

uint64_t sub_26475E3FC(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_264783EE4();
}

uint64_t sub_26475E474@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v90 = a1;
  v85 = a2;
  v3 = type metadata accessor for InitiatorSessionDetailsView(0);
  v4 = v3 - 8;
  v84 = *(v3 - 8);
  v88 = *(v84 + 8);
  MEMORY[0x28223BE20](v3);
  v83 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_264784954();
  v80 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF796B8, &qword_264792110);
  v71 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v69 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF796B0, &qword_264792108);
  v13 = *(v12 - 8);
  v72 = v12;
  v73 = v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v69 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF796A8, &qword_2647920F8);
  v17 = *(v16 - 8);
  v75 = v16;
  v76 = v17;
  MEMORY[0x28223BE20](v16);
  v86 = (&v69 - v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79698, &qword_2647920E8);
  v20 = *(v19 - 8);
  v77 = v19;
  v78 = v20;
  MEMORY[0x28223BE20](v19);
  v74 = &v69 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79688, &qword_2647920D8);
  v23 = *(v22 - 8);
  v81 = v22;
  v82 = v23;
  MEMORY[0x28223BE20](v22);
  v87 = &v69 - v24;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79678, &qword_2647920D0);
  MEMORY[0x28223BE20](v89);
  v79 = &v69 - v25;
  v94 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79720, &unk_2647921A8);
  v70 = MEMORY[0x277CE14C0];
  sub_26460CDF0(&qword_27FF79728, &qword_27FF79720, &unk_2647921A8, MEMORY[0x277CE14C0]);
  sub_264784DA4();
  sub_264784944();
  v26 = sub_26460CDF0(&qword_27FF796C0, &qword_27FF796B8, &qword_264792110, MEMORY[0x277CDE5A0]);
  v27 = MEMORY[0x277CDE0D0];
  sub_264785124();
  (*(v80 + 8))(v8, v6);
  (*(v71 + 8))(v11, v9);
  sub_264784C44();
  *&v98 = v9;
  *(&v98 + 1) = v6;
  *&v99 = v26;
  *(&v99 + 1) = v27;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v29 = v72;
  sub_264784EE4();
  (*(v73 + 8))(v15, v29);
  v30 = v90;
  v80 = *(v90 + 8);
  v31 = _s15SafetyMonitorUI0aB11UIUtilitiesC37initiatorCancelConfirmationAlertTitle4withSSAA16SessionViewModelC_tFZ_0(v80);
  v73 = v32;
  *&v95[0] = v31;
  *(&v95[0] + 1) = v32;
  v33 = v30 + *(v4 + 36);
  v34 = *v33;
  v35 = *(v33 + 8);
  v96 = v34;
  v97 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF762E0, &qword_26478C6E0);
  sub_264785314();
  v93 = v30;
  v92 = v30;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76348, &qword_264792100);
  *&v98 = v29;
  *(&v98 + 1) = OpaqueTypeConformance2;
  v37 = swift_getOpaqueTypeConformance2();
  v38 = sub_264613FC4();
  v39 = sub_26460CDF0(&qword_27FF76368, &qword_27FF76348, &qword_264792100, v70);
  v40 = v75;
  v41 = v74;
  v42 = v86;
  sub_2647850A4();

  (*(v76 + 8))(v42, v40);
  v43 = v90;
  v91 = v90;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF796A0, &qword_2647920F0);
  *&v98 = v40;
  *(&v98 + 1) = MEMORY[0x277D837D0];
  *&v99 = v36;
  *(&v99 + 1) = MEMORY[0x277CE0BD8];
  *&v100 = v37;
  *(&v100 + 1) = v38;
  *&v101 = v39;
  *(&v101 + 1) = MEMORY[0x277CE0BC8];
  v44 = swift_getOpaqueTypeConformance2();
  v45 = sub_26460CDF0(&qword_27FF796C8, &qword_27FF796A0, &qword_2647920F0, MEMORY[0x277CDDF68]);
  v46 = v77;
  sub_2647850E4();
  v47 = v41;
  v48 = v46;
  (*(v78 + 8))(v47, v46);
  type metadata accessor for SafetyMonitorUINavigationPathItem(0);
  v86 = type metadata accessor for InitiatorSessionDetailsView;
  v49 = v83;
  sub_26476E76C(v43, v83, type metadata accessor for InitiatorSessionDetailsView);
  v50 = (*(v84 + 80) + 16) & ~*(v84 + 80);
  v51 = swift_allocObject();
  v84 = type metadata accessor for InitiatorSessionDetailsView;
  sub_26476E704(v49, v51 + v50, type metadata accessor for InitiatorSessionDetailsView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79690, &qword_2647920E0);
  *&v98 = v48;
  *(&v98 + 1) = v76;
  *&v99 = v44;
  *(&v99 + 1) = v45;
  swift_getOpaqueTypeConformance2();
  sub_264770ADC(&qword_27FF76278, type metadata accessor for SafetyMonitorUINavigationPathItem, &unk_2647919F4);
  sub_26476D8C4();
  v52 = v81;
  v53 = v79;
  v54 = v87;
  sub_264785014();

  v55 = v50;
  (*(v82 + 8))(v54, v52);
  v56 = v90;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(v95);

  v57 = v56;

  v100 = v95[2];
  v101 = v95[3];
  v102 = v95[4];
  v103 = v95[5];
  v98 = v95[0];
  v99 = v95[1];
  sub_26476E76C(v56, v49, v86);
  v58 = swift_allocObject();
  sub_26476E704(v49, v58 + v55, v84);
  v59 = (v53 + *(v89 + 36));
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF782A0, &qword_264792120);
  sub_2647858C4();
  v61 = (v59 + *(v60 + 40));
  v62 = v101;
  v61[2] = v100;
  v61[3] = v62;
  v63 = v103;
  v61[4] = v102;
  v61[5] = v63;
  v64 = v99;
  *v61 = v98;
  v61[1] = v64;
  *v59 = &unk_2647921C0;
  v59[1] = v58;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(v95);

  v65 = *&v95[0];
  if (*&v95[0])
  {
    v66 = [*&v95[0] isActiveState];
  }

  else
  {
    v66 = 0;
  }

  LOBYTE(v95[0]) = v66;
  sub_26476E76C(v57, v49, type metadata accessor for InitiatorSessionDetailsView);
  v67 = swift_allocObject();
  sub_26476E704(v49, v67 + v55, type metadata accessor for InitiatorSessionDetailsView);
  sub_26476D53C();
  sub_2647850F4();

  return sub_26460CD50(v53, &qword_27FF79678, &qword_2647920D0);
}

uint64_t sub_26475F054@<X0>(char *a1@<X8>)
{
  v32 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79778, &qword_2647922E8);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v31 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v30 = &v27 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79780, &qword_2647922F0);
  MEMORY[0x28223BE20](v5);
  v7 = &v27 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79788, &qword_2647922F8);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - v10;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79790, &qword_264792300);
  v27 = *(v29 - 8);
  v12 = v27;
  v13 = MEMORY[0x28223BE20](v29);
  v28 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v27 - v15;
  sub_26475F440();
  sub_264784044();
  v17 = sub_26476E884();
  sub_264784F64();
  sub_26460CD50(v7, &qword_27FF79780, &qword_2647922F0);
  sub_264784054();
  v33 = v5;
  v34 = v17;
  swift_getOpaqueTypeConformance2();
  sub_264784F64();
  (*(v9 + 8))(v11, v8);
  v18 = v30;
  sub_26475F89C(v30);
  v19 = *(v12 + 16);
  v21 = v28;
  v20 = v29;
  v19(v28, v16, v29);
  v22 = v31;
  sub_26460CCE8(v18, v31, &qword_27FF79778, &qword_2647922E8);
  v23 = v32;
  v19(v32, v21, v20);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79800, &qword_264792340);
  sub_26460CCE8(v22, &v23[*(v24 + 48)], &qword_27FF79778, &qword_2647922E8);
  sub_26460CD50(v18, &qword_27FF79778, &qword_2647922E8);
  v25 = *(v27 + 8);
  v25(v16, v20);
  sub_26460CD50(v22, &qword_27FF79778, &qword_2647922E8);
  return (v25)(v21, v20);
}

uint64_t sub_26475F440()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79A88, &qword_2647925A8);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v24 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79A90, &qword_2647925B0);
  MEMORY[0x28223BE20](v5);
  v7 = &v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF797A8, &qword_264792308);
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - v9;
  if (*(v0 + *(type metadata accessor for InitiatorSessionDetailsView(0) + 48)))
  {
    sub_2647636A0(v4);
    (*(v2 + 16))(v7, v4, v1);
    swift_storeEnumTagMultiPayload();
    sub_26460CDF0(&qword_27FF797A0, &qword_27FF797A8, &qword_264792308, MEMORY[0x277CE14C0]);
    v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF797B0, &qword_264792310);
    v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF797B8, &qword_264792318);
    v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF797C0, &qword_264792320);
    v14 = sub_26476EA14();
    v24 = v13;
    v25 = v14;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v24 = v12;
    v25 = OpaqueTypeConformance2;
    v16 = swift_getOpaqueTypeConformance2();
    v24 = v11;
    v25 = MEMORY[0x277CE0F78];
    v26 = v16;
    v27 = MEMORY[0x277CE0F60];
    swift_getOpaqueTypeConformance2();
    sub_264784874();
    return (*(v2 + 8))(v4, v1);
  }

  else
  {
    sub_26476309C(v10);
    sub_26460CCE8(v10, v7, &qword_27FF797A8, &qword_264792308);
    swift_storeEnumTagMultiPayload();
    sub_26460CDF0(&qword_27FF797A0, &qword_27FF797A8, &qword_264792308, MEMORY[0x277CE14C0]);
    v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF797B0, &qword_264792310);
    v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF797B8, &qword_264792318);
    v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF797C0, &qword_264792320);
    v21 = sub_26476EA14();
    v24 = v20;
    v25 = v21;
    v22 = swift_getOpaqueTypeConformance2();
    v24 = v19;
    v25 = v22;
    v23 = swift_getOpaqueTypeConformance2();
    v24 = v18;
    v25 = MEMORY[0x277CE0F78];
    v26 = v23;
    v27 = MEMORY[0x277CE0F60];
    swift_getOpaqueTypeConformance2();
    sub_264784874();
    return sub_26460CD50(v10, &qword_27FF797A8, &qword_264792308);
  }
}

uint64_t sub_26475F89C@<X0>(uint64_t a1@<X8>)
{
  v76 = a1;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79808, &qword_264792348);
  MEMORY[0x28223BE20](v69);
  v70 = &v49 - v2;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79810, &qword_264792350);
  MEMORY[0x28223BE20](v55);
  v58 = &v49 - v3;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79818, &qword_264792358);
  MEMORY[0x28223BE20](v66);
  v61 = &v49 - v4;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79820, &qword_264792360);
  MEMORY[0x28223BE20](v57);
  v51 = &v49 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79828, &qword_264792368);
  v7 = MEMORY[0x28223BE20](v6);
  v50 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v49 - v9;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79830, &qword_264792370);
  MEMORY[0x28223BE20](v59);
  v52 = &v49 - v11;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79838, &qword_264792378);
  MEMORY[0x28223BE20](v62);
  v64 = &v49 - v12;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79840, &qword_264792380);
  MEMORY[0x28223BE20](v53);
  v56 = &v49 - v13;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79848, &qword_264792388);
  MEMORY[0x28223BE20](v63);
  v60 = &v49 - v14;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79850, &qword_264792390);
  MEMORY[0x28223BE20](v54);
  v16 = &v49 - v15;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79858, &qword_264792398);
  MEMORY[0x28223BE20](v67);
  v65 = &v49 - v17;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79860, &qword_2647923A0);
  MEMORY[0x28223BE20](v74);
  v68 = &v49 - v18;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79868, &qword_2647923A8);
  MEMORY[0x28223BE20](v71);
  v20 = &v49 - v19;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79870, &qword_2647923B0);
  MEMORY[0x28223BE20](v73);
  v22 = &v49 - v21;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79878, &qword_2647923B8);
  v23 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v72 = &v49 - v24;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(v77);

  v25 = v77[0];
  if (v77[0])
  {
    if ([v77[0] sessionState] == 4 || *(v1 + *(type metadata accessor for InitiatorSessionDetailsView(0) + 48)) == 1)
    {
      sub_264767708(v22);
      sub_26460CCE8(v22, v20, &qword_27FF79870, &qword_2647923B0);
      swift_storeEnumTagMultiPayload();
      sub_26476EE60();
      sub_26476EFF0();
      v26 = v72;
      sub_264784874();

      sub_26460CD50(v22, &qword_27FF79870, &qword_2647923B0);
LABEL_19:
      v28 = v76;
      sub_26460E7E4(v26, v76, &qword_27FF79878, &qword_2647923B8);
      v27 = 0;
      return (*(v23 + 56))(v28, v27, 1, v75);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(v77);

    v29 = v77[0];
    if (!v77[0] || (v30 = [v77[0] configuration], v29, !v30))
    {
      swift_storeEnumTagMultiPayload();
      sub_26476EC3C();
      v36 = v68;
      sub_264784874();
      v26 = v72;
LABEL_18:
      sub_26460CCE8(v36, v20, &qword_27FF79860, &qword_2647923A0);
      swift_storeEnumTagMultiPayload();
      sub_26476EE60();
      sub_26476EFF0();
      sub_264784874();

      sub_26460CD50(v36, &qword_27FF79860, &qword_2647923A0);
      goto LABEL_19;
    }

    v31 = [v30 sessionType];

    if (v31 == 1)
    {
      v61 = &v49;
      MEMORY[0x28223BE20](v32);
      *(&v49 - 2) = v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF798E8, &qword_2647923D0);
      v42 = MEMORY[0x277CE14C0];
      sub_26460CDF0(&qword_27FF798F0, &qword_27FF798E8, &qword_2647923D0, MEMORY[0x277CE14C0]);
      sub_264785464();
      v43 = &v10[*(v6 + 36)];
      v43[32] = 0;
      *v43 = 0u;
      *(v43 + 1) = 0u;
      v44 = v50;
      sub_26460CCE8(v10, v50, &qword_27FF79828, &qword_264792368);
      v45 = v52;
      sub_26460CCE8(v44, v52, &qword_27FF79828, &qword_264792368);
      sub_26460CD50(v10, &qword_27FF79828, &qword_264792368);
      sub_26460CD50(v44, &qword_27FF79828, &qword_264792368);
      sub_26460CCE8(v45, v56, &qword_27FF79830, &qword_264792370);
      swift_storeEnumTagMultiPayload();
      sub_26460CDF0(&qword_27FF79890, &qword_27FF79850, &qword_264792390, v42);
      sub_26460CDF0(&qword_27FF79898, &qword_27FF79830, &qword_264792370, v42);
      v46 = v60;
      sub_264784874();
      sub_26460CCE8(v46, v64, &qword_27FF79848, &qword_264792388);
      swift_storeEnumTagMultiPayload();
      sub_26476ECC8();
      sub_26476EDA8();
      v33 = v65;
      sub_264784874();
      sub_26460CD50(v46, &qword_27FF79848, &qword_264792388);
      v39 = v45;
      v40 = &qword_27FF79830;
      v41 = &qword_264792370;
    }

    else if (v31 == 4)
    {
      v37 = v51;
      sub_264767EEC(v51);
      sub_26460CCE8(v37, v58, &qword_27FF79820, &qword_264792360);
      swift_storeEnumTagMultiPayload();
      sub_26460CDF0(&qword_27FF798A8, &qword_27FF79820, &qword_264792360, MEMORY[0x277CE14C0]);
      v38 = v61;
      sub_264784874();
      sub_26460CCE8(v38, v64, &qword_27FF79818, &qword_264792358);
      swift_storeEnumTagMultiPayload();
      sub_26476ECC8();
      sub_26476EDA8();
      v33 = v65;
      sub_264784874();
      sub_26460CD50(v38, &qword_27FF79818, &qword_264792358);
      v39 = v37;
      v40 = &qword_27FF79820;
      v41 = &qword_264792360;
    }

    else
    {
      v33 = v65;
      if (v31 == 2)
      {
        sub_264767BE0(v16);
        sub_26460CCE8(v16, v56, &qword_27FF79850, &qword_264792390);
        swift_storeEnumTagMultiPayload();
        v34 = MEMORY[0x277CE14C0];
        sub_26460CDF0(&qword_27FF79890, &qword_27FF79850, &qword_264792390, MEMORY[0x277CE14C0]);
        sub_26460CDF0(&qword_27FF79898, &qword_27FF79830, &qword_264792370, v34);
        v35 = v60;
        sub_264784874();
        sub_26460CCE8(v35, v64, &qword_27FF79848, &qword_264792388);
        swift_storeEnumTagMultiPayload();
        sub_26476ECC8();
        sub_26476EDA8();
        sub_264784874();
        sub_26460CD50(v35, &qword_27FF79848, &qword_264792388);
        sub_26460CD50(v16, &qword_27FF79850, &qword_264792390);
LABEL_17:
        v36 = v68;
        v26 = v72;
        sub_26460CCE8(v33, v70, &qword_27FF79858, &qword_264792398);
        swift_storeEnumTagMultiPayload();
        sub_26476EC3C();
        sub_264784874();
        sub_26460CD50(v33, &qword_27FF79858, &qword_264792398);
        goto LABEL_18;
      }

      swift_storeEnumTagMultiPayload();
      sub_26460CDF0(&qword_27FF798A8, &qword_27FF79820, &qword_264792360, MEMORY[0x277CE14C0]);
      v47 = v61;
      sub_264784874();
      sub_26460CCE8(v47, v64, &qword_27FF79818, &qword_264792358);
      swift_storeEnumTagMultiPayload();
      sub_26476ECC8();
      sub_26476EDA8();
      sub_264784874();
      v39 = v47;
      v40 = &qword_27FF79818;
      v41 = &qword_264792358;
    }

    sub_26460CD50(v39, v40, v41);
    goto LABEL_17;
  }

  v27 = 1;
  v28 = v76;
  return (*(v23 + 56))(v28, v27, 1, v75);
}

uint64_t sub_264760710@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v38 = a2;
  v3 = type metadata accessor for InitiatorSessionDetailsView(0);
  v35 = *(v3 - 8);
  v4 = *(v35 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76370, &unk_2647922D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v33 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76378, &unk_264789F90);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v37 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v36 = &v33 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v34 = &v33 - v15;
  MEMORY[0x28223BE20](v14);
  v33 = &v33 - v16;
  v17 = *(a1 + 8);
  v39 = _s15SafetyMonitorUI0aB11UIUtilitiesC032initiatorCancelConfirmationAlertF11ButtonTitle4withSSAA16SessionViewModelC_tFZ_0(v17);
  v40 = v18;
  v19 = sub_264783F44();
  v20 = *(*(v19 - 8) + 56);
  v20(v7, 1, 1, v19);
  sub_26476E76C(a1, &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for InitiatorSessionDetailsView);
  v21 = (*(v35 + 80) + 16) & ~*(v35 + 80);
  v22 = swift_allocObject();
  sub_26476E704(&v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21, type metadata accessor for InitiatorSessionDetailsView);
  sub_264613FC4();
  v23 = v33;
  sub_264785364();
  v39 = _s15SafetyMonitorUI0aB11UIUtilitiesC036initiatorCancelConfirmationAlertDontF11ButtonTitle4withSSAA16SessionViewModelC_tFZ_0(v17);
  v40 = v24;
  sub_264783F24();
  v20(v7, 0, 1, v19);
  v25 = v34;
  sub_264785364();
  v26 = *(v9 + 16);
  v27 = v36;
  v26(v36, v23, v8);
  v28 = v37;
  v26(v37, v25, v8);
  v29 = v38;
  v26(v38, v27, v8);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76380, &qword_2647922E0);
  v26(&v29[*(v30 + 48)], v28, v8);
  v31 = *(v9 + 8);
  v31(v25, v8);
  v31(v23, v8);
  v31(v28, v8);
  return (v31)(v27, v8);
}

uint64_t sub_264760B50(uint64_t a1)
{
  v2 = sub_264783E24();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v22 - v7;
  v9 = *(a1 + *(type metadata accessor for InitiatorSessionDetailsView(0) + 52));
  swift_beginAccess();
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = *(v9 + 24);

    sub_264783DF4();
    v12 = sub_264783E14();
    v13 = sub_2647859B4();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v22 = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_2646DF234(2036625250, 0xE400000000000000, &v22);
      _os_log_impl(&dword_264605000, v12, v13, "endSessionHandler present in %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x266740650](v15, -1, -1);
      MEMORY[0x266740650](v14, -1, -1);
    }

    v16 = (*(v3 + 8))(v8, v2);
    v10(v16);
    return sub_26460C9A0(v10, v11);
  }

  else
  {
    sub_264783DF4();
    v18 = sub_264783E14();
    v19 = sub_2647859D4();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_2646DF234(2036625250, 0xE400000000000000, &v22);
      _os_log_impl(&dword_264605000, v18, v19, "Missing initiatorEndSessionHandler in  %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x266740650](v21, -1, -1);
      MEMORY[0x266740650](v20, -1, -1);
    }

    return (*(v3 + 8))(v6, v2);
  }
}

uint64_t sub_264760E38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  _s15SafetyMonitorUI0aB11UIUtilitiesC34initiatorCancelConfirmationMessage4withSSAA16SessionViewModelC_tFZ_0(*(a1 + 8));
  sub_264613FC4();
  result = sub_264784E44();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_264760E94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79740, &qword_264792228);
  MEMORY[0x28223BE20](v3);
  v5 = v38 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79748, &qword_264792230);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v41 = v38 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79750, &qword_264792238);
  v40 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v39 = v38 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79758, &unk_264792240);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v42 = v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v38 - v14;
  v16 = sub_264784934();
  MEMORY[0x28223BE20](v16 - 8);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77070, &qword_26478C3A8);
  v45 = *(v17 - 8);
  v46 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = v38 - v18;
  sub_2647848F4();
  v47 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77078, &unk_26478C3B0);
  sub_2646A25E4();
  v43 = v19;
  sub_264783FE4();
  if (*(a1 + *(type metadata accessor for InitiatorSessionDetailsView(0) + 48)) == 1)
  {
    v20 = sub_264784924();
    v38[1] = v38;
    MEMORY[0x28223BE20](v20);
    v38[-2] = a1;
    v21 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79768, &qword_264792250);
    v22 = v9;
    v23 = v6;
    sub_26460CDF0(&qword_27FF79770, &qword_27FF79768, &qword_264792250, MEMORY[0x277CE1138]);
    v24 = v39;
    sub_264783FE4();
    v25 = sub_26460CDF0(&qword_27FF79760, &qword_27FF79750, &qword_264792238, MEMORY[0x277CDD7A8]);
    v26 = v41;
    v27 = v22;
    MEMORY[0x26673E690](v24, v22, v25);
    v28 = v42;
    (*(v21 + 16))(v42, v26, v23);
    (*(v21 + 56))(v28, 0, 1, v23);
    v48 = v27;
    v49 = v25;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    MEMORY[0x26673E6C0](v28, v23, OpaqueTypeConformance2);
    sub_26460CD50(v28, &qword_27FF79758, &unk_264792240);
    (*(v21 + 8))(v26, v23);
    (*(v40 + 8))(v24, v27);
  }

  else
  {
    v30 = v42;
    (*(v7 + 56))(v42, 1, 1, v6);
    v31 = sub_26460CDF0(&qword_27FF79760, &qword_27FF79750, &qword_264792238, MEMORY[0x277CDD7A8]);
    v48 = v9;
    v49 = v31;
    v32 = swift_getOpaqueTypeConformance2();
    MEMORY[0x26673E6C0](v30, v6, v32);
    sub_26460CD50(v30, &qword_27FF79758, &unk_264792240);
  }

  v33 = *(v3 + 48);
  v35 = v45;
  v34 = v46;
  v36 = v43;
  (*(v45 + 16))(v5, v43, v46);
  sub_26460CCE8(v15, &v5[v33], &qword_27FF79758, &unk_264792240);
  sub_264784754();
  sub_26460CD50(v15, &qword_27FF79758, &unk_264792240);
  return (*(v35 + 8))(v36, v34);
}

uint64_t sub_2647614EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for InitiatorSessionDetailsView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = sub_264783F44();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76330, &qword_264789F30);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v19 - v12;
  sub_264783F24();
  sub_26476E76C(a1, &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for InitiatorSessionDetailsView);
  v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v15 = swift_allocObject();
  sub_26476E704(&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for InitiatorSessionDetailsView);
  MEMORY[0x26673F080](v9, sub_26476E84C, v15);
  sub_26460CDF0(&qword_27FF76328, &qword_27FF76330, &qword_264789F30, MEMORY[0x277CDF028]);
  sub_264785034();
  (*(v11 + 8))(v13, v10);
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77078, &unk_26478C3B0);
  v18 = (a2 + *(result + 36));
  *v18 = KeyPath;
  v18[1] = 0;
  return result;
}

uint64_t sub_26476179C(uint64_t a1)
{
  v16 = sub_264784574();
  v2 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75688, &unk_264789EA0);
  MEMORY[0x28223BE20](v5);
  v7 = &v15 - v6;
  v8 = sub_2647840D4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for InitiatorSessionDetailsView(0);
  sub_26460CCE8(a1 + *(v12 + 24), v7, &qword_27FF75688, &unk_264789EA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    sub_2647859E4();
    v13 = sub_264784BE4();
    sub_264783DA4();

    sub_264784564();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v16);
  }

  sub_2647840C4();
  return (*(v9 + 8))(v11, v8);
}

__n128 sub_264761A24@<Q0>(uint64_t a2@<X8>)
{
  v3 = sub_2647845C4();
  sub_264761A98(&v8);
  v4 = v8;
  v5 = v11;
  result = v9;
  v7 = v10;
  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = v4;
  *(a2 + 32) = result;
  *(a2 + 48) = v7;
  *(a2 + 64) = v5;
  return result;
}

uint64_t sub_264761A98@<X0>(uint64_t *a2@<X8>)
{
  v42 = a2;
  v2 = sub_264783B94();
  MEMORY[0x28223BE20](v2 - 8);
  *&v40 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_264785704();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_2647856E4();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756B8, &qword_26478AC90);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (&v39 - v7);
  v9 = sub_264783AF4();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v39 - v14;
  v41 = sub_264785274();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(v8);

  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_26460CD50(v8, &qword_27FF756B8, &qword_26478AC90);
LABEL_6:
    sub_264785694();
    sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v27 = [objc_opt_self() bundleForClass_];
    sub_264783B84();
    *&v48 = sub_264785754();
    *(&v48 + 1) = v28;
    sub_264613FC4();
    v43 = sub_264784E44();
    v44 = v30;
    v45 = v29 & 1;
    v46 = v31;
    v47 = 1;
    sub_264784874();
    goto LABEL_7;
  }

  (*(v10 + 32))(v15, v8, v9);
  sub_264783AD4();
  v16 = sub_264783A74();
  v17 = *(v10 + 8);
  v17(v13, v9);
  if ((v16 & 1) == 0)
  {
    v17(v15, v9);
    goto LABEL_6;
  }

  sub_2647856D4();
  sub_2647856C4();
  v18 = sub_264783A64();
  v19 = [v18 relativeTimeString];

  sub_264785724();
  sub_2647856B4();

  sub_2647856C4();
  sub_2647856F4();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  v20 = swift_getObjCClassFromMetadata();
  v21 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  *&v48 = sub_264785754();
  *(&v48 + 1) = v22;
  sub_264613FC4();
  v43 = sub_264784E44();
  v44 = v23;
  v45 = v24 & 1;
  v46 = v25;
  v47 = 0;
  sub_264784874();
  v17(v15, v9);
LABEL_7:
  v32 = v48;
  v33 = v49;
  v34 = v50;
  v39 = v48;
  v40 = v49;
  v35 = v42;
  *v42 = v41;
  *(v35 + 1) = v32;
  *(v35 + 3) = v33;
  *(v35 + 40) = v34;

  v36 = v39;
  v37 = v40;
  sub_2647253C0(v39, *(&v39 + 1), v40, *(&v40 + 1));
  sub_2647253FC(v36, *(&v36 + 1), v37, *(&v37 + 1));
}

uint64_t sub_264762094@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v80 = a2;
  v87 = a3;
  v84 = type metadata accessor for SelectionPreservingSafetyCacheMapContentView(0);
  MEMORY[0x28223BE20](v84);
  v78 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for SafetyCacheMapView.Annotation(0);
  v85 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v79 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79730, &qword_264792210);
  MEMORY[0x28223BE20](v86);
  v7 = &v68 - v6;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79738, &unk_264792218);
  MEMORY[0x28223BE20](v82);
  v83 = &v68 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF796E0, &qword_264792118);
  MEMORY[0x28223BE20](v9);
  v11 = &v68 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF766A8, &unk_26478AA80);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v68 - v16;
  v18 = type metadata accessor for PushingSafetyCacheMapContentView(0);
  MEMORY[0x28223BE20](v18);
  v20 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for SafetyMonitorUINavigationPathItem(0);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v24 = &v68 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = a1;
  v27 = &v68 - v26;
  sub_26476E76C(v25, &v68 - v26, type metadata accessor for SafetyMonitorUINavigationPathItem);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF762F8, &qword_264789EC0);
  if ((*(*(v28 - 8) + 48))(v27, 3, v28))
  {
    swift_storeEnumTagMultiPayload();
    sub_26476D950();
    sub_264784874();
  }

  else
  {
    v70 = v15;
    v71 = v17;
    v72 = v12;
    v69 = v20;
    v29 = v79;
    v74 = v18;
    v75 = v11;
    v76 = v9;
    v77 = v7;
    v73 = v27;
    sub_26476E76C(v27, v24, type metadata accessor for SafetyMonitorUINavigationPathItem);
    v30 = v81;
    if ((*(v85 + 48))(v24, 1, v81) == 1)
    {
      type metadata accessor for InitiatorSessionDetailsView(0);
      type metadata accessor for SafetyCacheDetailViewModel(0);
      sub_264770ADC(&qword_27FF781E0, type metadata accessor for SafetyCacheDetailViewModel, &protocol conformance descriptor for SafetyCacheDetailViewModel);
      v31 = sub_264783FA4();
      v32 = &v31[OBJC_IVAR____TtC15SafetyMonitorUI26SafetyCacheDetailViewModel__cacheMapViewModel];
      swift_beginAccess();
      v80 = v32[1];

      v33 = sub_264783FA4();
      v34 = v71;
      (*(v85 + 56))(v71, 1, 1, v30);
      sub_26460CCE8(v34, v70, &qword_27FF766A8, &unk_26478AA80);
      v35 = v69;
      sub_2647852E4();
      sub_26460CD50(v34, &qword_27FF766A8, &unk_26478AA80);
      v36 = v74;
      v37 = &v35[*(v74 + 20)];
      v88 = 0u;
      v89 = 0u;
      v90 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF766B8, &qword_26478F190);
      sub_2647852E4();
      v38 = v93;
      v39 = v94;
      v40 = v92;
      *v37 = v91;
      *(v37 + 1) = v40;
      v37[32] = v38;
      *(v37 + 5) = v39;
      v41 = &v35[*(v36 + 24)];
      type metadata accessor for SafetyCacheMapViewModel(0);
      sub_264770ADC(&qword_27FF75700, type metadata accessor for SafetyCacheMapViewModel, &unk_26478D5D0);
      *v41 = sub_264784174();
      v41[1] = v42;
      *&v35[*(v36 + 28)] = v33;
      sub_26476E76C(v35, v83, type metadata accessor for PushingSafetyCacheMapContentView);
      swift_storeEnumTagMultiPayload();
      sub_264770ADC(&qword_27FF796E8, type metadata accessor for PushingSafetyCacheMapContentView, &unk_26478AB04);
      sub_264770ADC(&qword_27FF796F0, type metadata accessor for SelectionPreservingSafetyCacheMapContentView, &unk_26478AAB4);
      v43 = v75;
      sub_264784874();
      sub_26460CCE8(v43, v77, &qword_27FF796E0, &qword_264792118);
      swift_storeEnumTagMultiPayload();
      sub_26476D950();
      sub_264784874();
      sub_26460CD50(v43, &qword_27FF796E0, &qword_264792118);
      v44 = type metadata accessor for PushingSafetyCacheMapContentView;
      v45 = v35;
    }

    else
    {
      v46 = v29;
      sub_26476E704(v24, v29, type metadata accessor for SafetyCacheMapView.Annotation);
      type metadata accessor for InitiatorSessionDetailsView(0);
      v47 = v80;
      type metadata accessor for SafetyCacheDetailViewModel(0);
      sub_264770ADC(&qword_27FF781E0, type metadata accessor for SafetyCacheDetailViewModel, &protocol conformance descriptor for SafetyCacheDetailViewModel);
      v48 = sub_264783FA4();
      v49 = &v48[OBJC_IVAR____TtC15SafetyMonitorUI26SafetyCacheDetailViewModel__cacheMapViewModel];
      swift_beginAccess();
      v69 = v49[1];

      v80 = *(v47 + 3);
      v50 = sub_264783FA4();
      v51 = v84;
      v52 = v78;
      sub_26476E76C(v46, &v78[*(v84 + 36)], type metadata accessor for SafetyCacheMapView.Annotation);
      v53 = v71;
      (*(v85 + 56))(v71, 1, 1, v30);
      sub_26460CCE8(v53, v70, &qword_27FF766A8, &unk_26478AA80);
      sub_2647852E4();
      sub_26460CD50(v53, &qword_27FF766A8, &unk_26478AA80);
      v54 = v52 + v51[5];
      v88 = 0u;
      v89 = 0u;
      v90 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF766B8, &qword_26478F190);
      sub_2647852E4();
      v55 = v93;
      v56 = v94;
      v57 = v92;
      *v54 = v91;
      *(v54 + 16) = v57;
      *(v54 + 32) = v55;
      *(v54 + 40) = v56;
      v58 = v51[8];
      v59 = (v52 + v51[6]);
      type metadata accessor for SafetyCacheMapViewModel(0);
      sub_264770ADC(&qword_27FF75700, type metadata accessor for SafetyCacheMapViewModel, &unk_26478D5D0);
      v60 = v69;
      *v59 = sub_264784174();
      v59[1] = v61;
      v62 = (v52 + v51[7]);
      type metadata accessor for SafetyCacheViewModel(0);
      sub_264770ADC(&qword_27FF756E8, type metadata accessor for SafetyCacheViewModel, &protocol conformance descriptor for SafetyCacheViewModel);
      v63 = sub_264784174();
      v65 = v64;

      *v62 = v63;
      v62[1] = v65;
      *(v52 + v58) = v50;
      sub_26476E76C(v52, v83, type metadata accessor for SelectionPreservingSafetyCacheMapContentView);
      swift_storeEnumTagMultiPayload();
      sub_264770ADC(&qword_27FF796E8, type metadata accessor for PushingSafetyCacheMapContentView, &unk_26478AB04);
      sub_264770ADC(&qword_27FF796F0, type metadata accessor for SelectionPreservingSafetyCacheMapContentView, &unk_26478AAB4);
      v66 = v75;
      sub_264784874();
      sub_26460CCE8(v66, v77, &qword_27FF796E0, &qword_264792118);
      swift_storeEnumTagMultiPayload();
      sub_26476D950();
      sub_264784874();
      sub_26460CD50(v66, &qword_27FF796E0, &qword_264792118);
      sub_26476E7D4(v52, type metadata accessor for SelectionPreservingSafetyCacheMapContentView);
      v44 = type metadata accessor for SafetyCacheMapView.Annotation;
      v45 = v46;
    }

    sub_26476E7D4(v45, v44);
    v27 = v73;
  }

  return sub_26476E7D4(v27, type metadata accessor for SafetyMonitorUINavigationPathItem);
}

uint64_t sub_264762D24(uint64_t a1)
{
  *(v1 + 304) = a1;
  sub_2647858B4();
  *(v1 + 312) = sub_2647858A4();
  v3 = sub_264785874();

  return MEMORY[0x2822009F8](sub_264762DBC, v3, v2);
}

uint64_t sub_264762DBC()
{

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4((v0 + 112));

  v1 = *(v0 + 160);
  *(v0 + 48) = *(v0 + 144);
  *(v0 + 64) = v1;
  v2 = *(v0 + 192);
  *(v0 + 80) = *(v0 + 176);
  *(v0 + 96) = v2;
  v3 = *(v0 + 128);
  *(v0 + 16) = *(v0 + 112);
  *(v0 + 32) = v3;
  if (*(v0 + 32))
  {
    type metadata accessor for InitiatorSessionDetailsView(0);
    type metadata accessor for SafetyCacheDetailViewModel(0);
    sub_264770ADC(&qword_27FF781E0, type metadata accessor for SafetyCacheDetailViewModel, &protocol conformance descriptor for SafetyCacheDetailViewModel);
    v4 = sub_264783FA4();
    swift_getKeyPath();
    swift_getKeyPath();
    v5 = *(v0 + 64);
    *(v0 + 144) = *(v0 + 48);
    *(v0 + 160) = v5;
    v6 = *(v0 + 96);
    *(v0 + 176) = *(v0 + 80);
    *(v0 + 192) = v6;
    v7 = *(v0 + 32);
    *(v0 + 112) = *(v0 + 16);
    *(v0 + 128) = v7;
    sub_26460CCE8(v0 + 16, v0 + 208, &qword_27FF756F8, &qword_264787DF0);
    v8 = v4;
    sub_264783EE4();
    sub_2646F6B34();
    sub_26460CD50(v0 + 16, &qword_27FF756F8, &qword_264787DF0);
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_264762F9C(unsigned __int8 *a1, char *a2, uint64_t a3)
{
  v6 = sub_2647840D4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = *a2;
  result = type metadata accessor for InitiatorSessionDetailsView(0);
  if ((*(a3 + *(result + 48)) & 1) == 0 && v10 && (v11 & 1) == 0)
  {
    sub_26475DEF8(v9);
    sub_2647840C4();
    return (*(v7 + 8))(v9, v6);
  }

  return result;
}

uint64_t sub_26476309C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v52 = a1;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79B00, &qword_2647926C8);
  MEMORY[0x28223BE20](v49);
  v4 = &v43 - v3;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79B08, &qword_2647926D0) - 8;
  v5 = MEMORY[0x28223BE20](v50);
  v51 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v48 = &v43 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79B10, &qword_2647926D8);
  MEMORY[0x28223BE20](v8);
  v10 = &v43 - v9;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79B18, &qword_2647926E0);
  v11 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v13 = &v43 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79B20, &qword_2647926E8);
  v15 = v14 - 8;
  MEMORY[0x28223BE20](v14);
  v17 = &v43 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79B28, &qword_2647926F0);
  v19 = v18 - 8;
  v20 = MEMORY[0x28223BE20](v18);
  v47 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v43 - v23;
  MEMORY[0x28223BE20](v22);
  v44 = &v43 - v25;
  *v10 = sub_264784714();
  *(v10 + 1) = 0;
  v10[16] = 0;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79B30, &qword_2647926F8);
  sub_264763D48(v2, &v10[*(v26 + 44)]);
  v27 = &v10[*(v8 + 36)];
  v27[32] = 0;
  *v27 = 0u;
  *(v27 + 1) = 0u;
  sub_264784034();
  sub_26476FDB8();
  sub_264784F64();
  sub_26460CD50(v10, &qword_27FF79B10, &qword_2647926D8);
  sub_264785504();
  sub_264784314();
  (*(v11 + 32))(v17, v13, v46);
  v28 = &v17[*(v15 + 44)];
  v29 = v59;
  *(v28 + 4) = v58;
  *(v28 + 5) = v29;
  *(v28 + 6) = v60;
  v30 = v55;
  *v28 = v54;
  *(v28 + 1) = v30;
  v31 = v57;
  *(v28 + 2) = v56;
  *(v28 + 3) = v31;
  v53 = sub_2647851A4();
  v32 = sub_2647853C4();
  sub_26460E7E4(v17, v24, &qword_27FF79B20, &qword_2647926E8);
  *&v24[*(v19 + 44)] = v32;
  v33 = v24;
  v34 = v44;
  sub_26460E7E4(v33, v44, &qword_27FF79B28, &qword_2647926F0);
  *v4 = sub_264784714();
  *(v4 + 1) = 0;
  v4[16] = 0;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79B50, &qword_264792708);
  sub_2647659E0(v45, &v4[*(v35 + 44)]);
  v36 = &v4[*(v49 + 36)];
  v36[32] = 0;
  *v36 = 0u;
  *(v36 + 1) = 0u;
  sub_264784034();
  sub_26476FE9C();
  v37 = v48;
  sub_264784F64();
  sub_26460CD50(v4, &qword_27FF79B00, &qword_2647926C8);
  v53 = sub_2647851A4();
  *(v37 + *(v50 + 44)) = sub_2647853C4();
  v38 = v47;
  sub_26460CCE8(v34, v47, &qword_27FF79B28, &qword_2647926F0);
  v39 = v51;
  sub_26460CCE8(v37, v51, &qword_27FF79B08, &qword_2647926D0);
  v40 = v52;
  sub_26460CCE8(v38, v52, &qword_27FF79B28, &qword_2647926F0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79B70, &unk_264792718);
  sub_26460CCE8(v39, v40 + *(v41 + 48), &qword_27FF79B08, &qword_2647926D0);
  sub_26460CD50(v37, &qword_27FF79B08, &qword_2647926D0);
  sub_26460CD50(v34, &qword_27FF79B28, &qword_2647926F0);
  sub_26460CD50(v39, &qword_27FF79B08, &qword_2647926D0);
  return sub_26460CD50(v38, &qword_27FF79B28, &qword_2647926F0);
}

uint64_t sub_2647636A0@<X0>(uint64_t a1@<X8>)
{
  v47 = a1;
  *&v44 = sub_2647845A4();
  v43 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v2 = &v40 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF797F8, &qword_264792338);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v40 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF797E8, &qword_264792330);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v40 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF797D8, &qword_264792328);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v40 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF797C0, &qword_264792320);
  MEMORY[0x28223BE20](v14);
  v16 = &v40 - v15;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF797B8, &qword_264792318);
  v42 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v18 = &v40 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF797B0, &qword_264792310);
  v20 = *(v19 - 8);
  v45 = v19;
  v46 = v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v40 - v21;
  *v5 = sub_264784714();
  *(v5 + 1) = 0;
  v5[16] = 0;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79A98, &unk_2647925B8);
  sub_264766800(v40, &v5[*(v23 + 44)]);
  sub_264785504();
  sub_264784314();
  sub_26460E7E4(v5, v9, &qword_27FF797F8, &qword_264792338);
  v24 = &v9[*(v7 + 44)];
  v25 = v56;
  *(v24 + 4) = v55;
  *(v24 + 5) = v25;
  *(v24 + 6) = v57;
  v26 = v52;
  *v24 = v51;
  *(v24 + 1) = v26;
  v27 = v54;
  *(v24 + 2) = v53;
  *(v24 + 3) = v27;
  sub_26460E7E4(v9, v13, &qword_27FF797E8, &qword_264792330);
  v28 = &v13[*(v11 + 44)];
  v28[32] = 0;
  *v28 = 0u;
  *(v28 + 1) = 0u;
  v49 = sub_2647851A4();
  v29 = sub_2647853C4();
  sub_26460E7E4(v13, v16, &qword_27FF797D8, &qword_264792328);
  *&v16[*(v14 + 36)] = v29;
  v30 = v43;
  v31 = v44;
  (*(v43 + 104))(v2, *MEMORY[0x277CDDDC0], v44);
  v32 = sub_26476EA14();
  sub_264785084();
  (*(v30 + 8))(v2, v31);
  sub_26460CD50(v16, &qword_27FF797C0, &qword_264792320);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76B70, &qword_26478C010);
  sub_264784304();
  v33 = swift_allocObject();
  v44 = xmmword_2647889E0;
  *(v33 + 16) = xmmword_2647889E0;
  sub_2647842E4();
  v49 = v14;
  v50 = v32;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v35 = v41;
  MEMORY[0x26673ECD0](1, v33, v41, OpaqueTypeConformance2);

  (*(v42 + 8))(v18, v35);
  v48 = sub_2647851E4();
  v36 = swift_allocObject();
  *(v36 + 16) = v44;
  sub_2647842E4();
  v49 = v35;
  v50 = OpaqueTypeConformance2;
  v37 = swift_getOpaqueTypeConformance2();
  v38 = v45;
  MEMORY[0x26673ECE0](&v48, v36, v45, MEMORY[0x277CE0F78], v37, MEMORY[0x277CE0F60]);

  return (*(v46 + 8))(v22, v38);
}

uint64_t sub_264763D48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v165 = a1;
  v163 = a2;
  v140 = sub_264784B04();
  v139 = *(v140 - 8);
  MEMORY[0x28223BE20](v140);
  v138 = &v132 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79C00, &qword_264792818);
  v134 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v133 = &v132 - v4;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79C08, &qword_264792820);
  MEMORY[0x28223BE20](v136);
  v137 = &v132 - v5;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79C10, &qword_264792828);
  v160 = *(v161 - 8);
  MEMORY[0x28223BE20](v161);
  v141 = &v132 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79C18, &qword_264792830);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v162 = &v132 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v168 = &v132 - v10;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79AE0, &unk_2647926B0);
  MEMORY[0x28223BE20](v142);
  v147 = &v132 - v11;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79AA8, &qword_2647925D0);
  MEMORY[0x28223BE20](v145);
  v146 = &v132 - v12;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79C20, &qword_264792838);
  v155 = *(v154 - 8);
  v13 = MEMORY[0x28223BE20](v154);
  v144 = &v132 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v143 = &v132 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79C28, &qword_264792840);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v159 = &v132 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v170 = &v132 - v19;
  v20 = type metadata accessor for InitiatorSessionDetailsView(0);
  v153 = *(v20 - 8);
  v21 = *(v153 + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v164 = &v132 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_264783AF4();
  MEMORY[0x28223BE20](v22 - 8);
  v149 = &v132 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = sub_264784A44();
  v151 = *(v152 - 8);
  v24 = MEMORY[0x28223BE20](v152);
  v150 = &v132 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v148 = &v132 - v26;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79C30, &qword_264792848);
  v157 = *(v158 - 8);
  v27 = MEMORY[0x28223BE20](v158);
  v156 = &v132 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v169 = &v132 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79AC0, &qword_2647925F0);
  v31 = v30 - 8;
  v32 = MEMORY[0x28223BE20](v30);
  v167 = &v132 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v35 = &v132 - v34;
  v36 = *(a1 + 8);
  v37 = SessionViewModel.activeSessionRecipientContacts.getter();
  v38 = SessionViewModel.activeSessionGroupID.getter();
  v40 = v39;
  v41 = SessionViewModel.badgeImageName()();
  v42 = SessionViewModel.badgeImageColor()();
  v43 = sub_2647845B4();
  *&v171 = v37;
  *(&v171 + 1) = 0x4052000000000000;
  v172 = v41;
  *&v173 = 0x403E000000000000;
  *(&v173 + 1) = v42;
  *&v174 = v43;
  BYTE8(v174) = 0;
  *&v175 = v38;
  *(&v175 + 1) = v40;
  v176 = 0;
  sub_26476FAFC();
  sub_264785034();
  v177[3] = v174;
  v177[4] = v175;
  v178 = v176;
  v177[0] = v171;
  v177[1] = v172;
  v177[2] = v173;
  sub_26476FB50(v177);
  LOBYTE(v42) = sub_264784C54();
  sub_264783F54();
  v44 = *(v31 + 44);
  v166 = v35;
  v45 = &v35[v44];
  v46 = v164;
  *v45 = v42;
  *(v45 + 1) = v47;
  *(v45 + 2) = v48;
  *(v45 + 3) = v49;
  *(v45 + 4) = v50;
  v45[40] = 0;
  sub_264783AE4();
  v51 = v148;
  sub_264784A34();
  sub_26476E76C(v165, v46, type metadata accessor for InitiatorSessionDetailsView);
  v52 = *(v153 + 80);
  v53 = (v52 + 16) & ~v52;
  v149 = v21;
  v54 = swift_allocObject();
  sub_26476E704(v46, v54 + v53, type metadata accessor for InitiatorSessionDetailsView);
  v55 = v151;
  v56 = v152;
  (*(v151 + 16))(v150, v51, v152);
  v57 = swift_allocObject();
  *(v57 + 16) = sub_264770350;
  *(v57 + 24) = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79C38, &qword_264792850);
  sub_264770ADC(&qword_27FF78B40, MEMORY[0x277CE06F0], MEMORY[0x277CE06E8]);
  sub_264770478();
  sub_264784024();
  (*(v55 + 8))(v51, v56);
  type metadata accessor for SafetyMonitorUIUtilities();
  v153 = v36;
  v58 = static SafetyMonitorUIUtilities.initiatorActiveSessionDetailMessage(with:)(v36);
  v60 = 1;
  if (v59)
  {
    *&v171 = v58;
    *(&v171 + 1) = v59;
    v152 = v58;
    sub_264613FC4();

    v61 = sub_264784E44();
    v63 = v62;
    v64 = (v52 + 16) & ~v52;
    *&v171 = v61;
    *(&v171 + 1) = v62;
    v66 = v65 & 1;
    LOBYTE(v172.value._countAndFlagsBits) = v65 & 1;
    v172.value._object = v67;
    v68 = v147;
    sub_264785034();
    sub_26460ECC4(v61, v63, v66);
    v53 = v64;

    KeyPath = swift_getKeyPath();
    v70 = v68 + *(v142 + 36);
    *v70 = KeyPath;
    *(v70 + 8) = 1;
    v71 = sub_264784C54();

    sub_264783F54();
    v73 = v72;
    v75 = v74;
    v77 = v76;
    v79 = v78;
    v80 = v146;
    sub_26460E7E4(v68, v146, &qword_27FF79AE0, &unk_2647926B0);
    v81 = v80 + *(v145 + 36);
    *v81 = v71;
    *(v81 + 8) = v73;
    *(v81 + 16) = v75;
    *(v81 + 24) = v77;
    *(v81 + 32) = v79;
    *(v81 + 40) = 0;
    v82 = v144;
    sub_26460E7E4(v80, v144, &qword_27FF79AA8, &qword_2647925D0);
    v83 = v154;
    *(v82 + *(v154 + 36)) = 256;
    v84 = v82;
    v85 = v143;
    sub_26460E7E4(v84, v143, &qword_27FF79C20, &qword_264792838);
    sub_26460E7E4(v85, v170, &qword_27FF79C20, &qword_264792838);
    v60 = 0;
    v86 = v83;
  }

  else
  {
    v86 = v154;
  }

  (*(v155 + 56))(v170, v60, 1, v86);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v171);

  v87 = v171;
  if (v171 && (v88 = [v171 sessionState], v87, v88 == 7) || (swift_getKeyPath(), swift_getKeyPath(), sub_264783ED4(&v171), , , (v89 = v171) != 0) && (v90 = objc_msgSend(v171, sel_sessionState), v89, v90 == 14))
  {
    v91 = v165;
    v92 = v164;
    sub_26476E76C(v165, v164, type metadata accessor for InitiatorSessionDetailsView);
    v93 = swift_allocObject();
    v94 = sub_26476E704(v92, v93 + v53, type metadata accessor for InitiatorSessionDetailsView);
    MEMORY[0x28223BE20](v94);
    *(&v132 - 2) = v91;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79C60, &qword_264792860);
    sub_2647708B0();
    v95 = v133;
    sub_264785334();
    sub_26460CDF0(&qword_27FF79C90, &qword_27FF79C00, &qword_264792818, MEMORY[0x277CDF028]);
    v96 = v137;
    v97 = v135;
    sub_264785034();
    (*(v134 + 8))(v95, v97);
    v98 = v138;
    sub_264784AF4();
    sub_2647709F4();
    sub_264770ADC(&qword_27FF76C18, MEMORY[0x277CDE400], MEMORY[0x277CDE3E8]);
    v99 = v141;
    v100 = v140;
    sub_264784EC4();
    (*(v139 + 8))(v98, v100);
    sub_26460CD50(v96, &qword_27FF79C08, &qword_264792820);
    v101 = (v99 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79CA0, &qword_264792878) + 36));
    v102 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76C20, &qword_26478B740) + 28);
    v103 = *MEMORY[0x277CDF420];
    v104 = sub_264783F84();
    (*(*(v104 - 8) + 104))(v101 + v102, v103, v104);
    *v101 = swift_getKeyPath();
    LOBYTE(v103) = sub_264784C54();
    sub_264783F54();
    v106 = v105;
    v108 = v107;
    v110 = v109;
    v112 = v111;
    v113 = v99 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79CA8, &qword_264792880) + 36);
    *v113 = v103;
    *(v113 + 8) = v106;
    *(v113 + 16) = v108;
    *(v113 + 24) = v110;
    *(v113 + 32) = v112;
    *(v113 + 40) = 0;
    v114 = sub_264785174();
    v115 = v161;
    *(v99 + *(v161 + 36)) = v114;
    v116 = v168;
    sub_26460E7E4(v99, v168, &qword_27FF79C10, &qword_264792828);
    v117 = 0;
  }

  else
  {
    v117 = 1;
    v116 = v168;
    v115 = v161;
  }

  (*(v160 + 56))(v116, v117, 1, v115);
  v118 = v167;
  sub_26460CCE8(v166, v167, &qword_27FF79AC0, &qword_2647925F0);
  v119 = v157;
  v120 = *(v157 + 16);
  v121 = v156;
  v122 = v158;
  v120(v156, v169, v158);
  v123 = v159;
  sub_26460CCE8(v170, v159, &qword_27FF79C28, &qword_264792840);
  v124 = v116;
  v125 = v162;
  sub_26460CCE8(v124, v162, &qword_27FF79C18, &qword_264792830);
  v126 = v118;
  v127 = v163;
  sub_26460CCE8(v126, v163, &qword_27FF79AC0, &qword_2647925F0);
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79C58, &qword_264792858);
  v120((v127 + v128[12]), v121, v122);
  sub_26460CCE8(v123, v127 + v128[16], &qword_27FF79C28, &qword_264792840);
  v129 = v127 + v128[20];
  *v129 = 0x4032000000000000;
  *(v129 + 8) = 0;
  sub_26460CCE8(v125, v127 + v128[24], &qword_27FF79C18, &qword_264792830);
  sub_26460CD50(v168, &qword_27FF79C18, &qword_264792830);
  sub_26460CD50(v170, &qword_27FF79C28, &qword_264792840);
  v130 = *(v119 + 8);
  v130(v169, v122);
  sub_26460CD50(v166, &qword_27FF79AC0, &qword_2647925F0);
  sub_26460CD50(v125, &qword_27FF79C18, &qword_264792830);
  sub_26460CD50(v123, &qword_27FF79C28, &qword_264792840);
  v130(v121, v122);
  return sub_26460CD50(v167, &qword_27FF79AC0, &qword_2647925F0);
}

uint64_t sub_2647650CC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76C90, &qword_2647925E0);
  MEMORY[0x28223BE20](v4);
  v6 = &v29 - v5;
  type metadata accessor for SafetyMonitorUIUtilities();
  v29 = static SafetyMonitorUIUtilities.initiatorSessionInfoTitleString(with:)(*(a1 + 8));
  v30 = v7;
  sub_264613FC4();
  v8 = sub_264784E44();
  v10 = v9;
  v29 = v8;
  v30 = v9;
  v12 = v11 & 1;
  v31 = v11 & 1;
  v32 = v13;
  sub_264785034();
  sub_26460ECC4(v8, v10, v12);

  v14 = sub_264784CD4();
  KeyPath = swift_getKeyPath();
  v16 = &v6[*(v4 + 36)];
  *v16 = KeyPath;
  v16[1] = v14;
  sub_26476FBAC();
  sub_264785094();
  sub_26460CD50(v6, &qword_27FF76C90, &qword_2647925E0);
  v17 = swift_getKeyPath();
  v18 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79AD8, &qword_264792660) + 36);
  *v18 = v17;
  *(v18 + 8) = 1;
  LOBYTE(v17) = sub_264784C54();
  sub_264783F54();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79AB8, &qword_2647925E8) + 36);
  *v27 = v17;
  *(v27 + 8) = v20;
  *(v27 + 16) = v22;
  *(v27 + 24) = v24;
  *(v27 + 32) = v26;
  *(v27 + 40) = 0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79C38, &qword_264792850);
  *(a2 + *(result + 36)) = 256;
  return result;
}

uint64_t sub_264765310(uint64_t a1)
{
  v2 = sub_264783E24();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v22 - v7;
  sub_264783DF4();
  v9 = sub_264783E14();
  v10 = sub_2647859F4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_264605000, v9, v10, "User requested session extension", v11, 2u);
    MEMORY[0x266740650](v11, -1, -1);
  }

  v12 = *(v3 + 8);
  v12(v8, v2);
  v13 = *(a1 + *(type metadata accessor for InitiatorSessionDetailsView(0) + 52));
  swift_beginAccess();
  v14 = *(v13 + 48);
  if (v14)
  {
    v15 = *(v13 + 56);

    v14(v16);
    return sub_26460C9A0(v14, v15);
  }

  else
  {
    sub_264783DF4();
    v18 = sub_264783E14();
    v19 = sub_2647859D4();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_2646DF234(0xD000000000000014, 0x80000002647A0070, &v22);
      _os_log_impl(&dword_264605000, v18, v19, "Missing safeResponseToTriggerPrompt in %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x266740650](v21, -1, -1);
      MEMORY[0x266740650](v20, -1, -1);
    }

    return (v12)(v6, v2);
  }
}

uint64_t sub_2647655A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79CB0, &qword_264792888);
  MEMORY[0x28223BE20](v3);
  v5 = v37 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79C88, &qword_264792870);
  MEMORY[0x28223BE20](v6);
  v8 = v37 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF79C78, &qword_264792868);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v37 - v13;
  v15 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v39);

  if (v39 == 1)
  {
    sub_264784014();
    sub_264783B54();
    sub_264785504();
    sub_264784314();
    sub_26460E7E4(v8, v12, &qword_27FF79C88, &qword_264792870);
    v16 = &v12[*(v9 + 36)];
    v17 = v44;
    *(v16 + 4) = v43;
    *(v16 + 5) = v17;
    *(v16 + 6) = v45;
    v18 = v40;
    *v16 = v39;
    *(v16 + 1) = v18;
    v19 = v42;
    *(v16 + 2) = v41;
    *(v16 + 3) = v19;
    sub_26460E7E4(v12, v14, &qword_27FF79C78, &qword_264792868);
    sub_26460CCE8(v14, v5, &qword_27FF79C78, &qword_264792868);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75AA0, &qword_2647888F0);
    sub_26477093C();
    sub_26465D720();
    sub_264784874();
    return sub_26460CD50(v14, &qword_27FF79C78, &qword_264792868);
  }

  else
  {
    *&v39 = _s15SafetyMonitorUI0aB11UIUtilitiesC34initiatorExtendSessionButtonString4withSSAA0G9ViewModelC_tFZ_0(v15);
    *(&v39 + 1) = v21;
    sub_264613FC4();
    v22 = sub_264784E44();
    v24 = v23;
    v26 = v25;
    v27 = sub_264784E14();
    v29 = v28;
    v31 = v30;
    v37[0] = v3;
    v33 = v32;
    sub_26460ECC4(v22, v24, v26 & 1);

    sub_264785504();
    sub_264784314();
    v38 = v31 & 1;
    *v5 = v27;
    *(v5 + 1) = v29;
    v5[16] = v31 & 1;
    *(v5 + 3) = v33;
    v34 = v44;
    *(v5 + 6) = v43;
    *(v5 + 7) = v34;
    *(v5 + 8) = v45;
    v35 = v40;
    *(v5 + 2) = v39;
    *(v5 + 3) = v35;
    v36 = v42;
    *(v5 + 4) = v41;
    *(v5 + 5) = v36;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75AA0, &qword_2647888F0);
    sub_26477093C();
    sub_26465D720();
    return sub_264784874();
  }
}