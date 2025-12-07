uint64_t sub_1BD4313C0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v22 - v7;
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  if (a2)
  {
    sub_1BE04A9F4();
    v11 = sub_1BE04AA64();
    (*(*(v11 - 8) + 56))(v8, 0, 1, v11);
  }

  else
  {
    v12 = sub_1BE04AA64();
    (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
  }

  sub_1BE048964();
  v13 = a3;
  v10(v8, a3);
  v9, v14, v15, v16, v17, v18, v19, v20;

  return sub_1BD0DE53C(v8, &unk_1EBD3CF70, &qword_1BE0BA000);
}

void sub_1BD431514(int a1, int a2, id a3, void (*a4)(id, uint64_t))
{
  if (a3)
  {
    v6 = a3;
    v7 = sub_1BE04A844();
    v8 = [objc_opt_self() errorWithUnderlyingError:v7 defaultSeverity:4];

    v9 = v8;
    a4(v8, 1);
  }

  else
  {
    a4(0, 0);
  }
}

void sub_1BD4315EC(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_1BE048964();
  v17 = a3;
  v9 = a4;
  v8(a2, a3, a4);
  v7, v10, v11, v12, v13, v14, v15, v16;
}

void sub_1BD431770(uint64_t a1, void *a2, void *a3)
{
  v73 = sub_1BE04D214();
  v71 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v7 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45EE0, &qword_1BE0D5F50);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v69 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45EE8, &qword_1BE0D5F58);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v69 - v12;
  v14 = sub_1BE04AA64();
  v74 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v72 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  v16[2] = a2;
  v16[3] = a3;
  v17 = a2;
  v18 = a3;
  v70 = a1;
  sub_1BD42EB14(v10);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45EF0, &unk_1BE0D5F60);
  if ((*(*(v19 - 8) + 48))(v10, 1, v19) == 1)
  {
    sub_1BD0DE53C(v10, &qword_1EBD45EE0, &qword_1BE0D5F50);
    sub_1BE04D0C4();
    v20 = sub_1BE04D204();
    v21 = sub_1BE052C34();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1BD026000, v20, v21, "Failed to create verification url", v22, 2u);
      MEMORY[0x1BFB45F20](v22, -1, -1);
    }

    (*(v71 + 8))(v7, v73);
    v23 = [objc_opt_self() errorWithSeverity_];
    v24 = &v17[OBJC_IVAR____TtC9PassKitUI47ProvisioningVerificationUniversalURLFlowSection_delegate];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v32 = *(v24 + 1);
      ObjectType = swift_getObjectType();
      aBlock = 0u;
      v76 = 0u;
      LOBYTE(v77) = 2;
      sub_1BD865A00(v17, &off_1F3B97738, &aBlock, ObjectType, v32);
      swift_unknownObjectRelease();
      sub_1BD0DE53C(&aBlock, &unk_1EBD3F510, &unk_1BE0B9B30);
    }

    v16, v25, v26, v27, v28, v29, v30, v31;
  }

  else
  {
    v34 = &v10[*(v19 + 48)];
    v35 = *v34;
    v36 = *(v34 + 1);
    v37 = &v13[*(v11 + 48)];
    v38 = *(v74 + 32);
    v38(v13, v10, v14);
    *v37 = v35;
    *(v37 + 1) = v36;
    v39 = *&v13[*(v11 + 48) + 8];
    v40 = v72;
    v38(v72, v13, v14);
    v41 = *(v70 + OBJC_IVAR____TtC9PassKitUI44ProvisioningVerificationURLPerformController_authSession);
    [v41 setPresentationWindow_];
    v42 = sub_1BE04A9C4();
    v43 = sub_1BE052404();
    v39, v44, v45, v46, v47, v48, v49, v50;
    v51 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v52 = swift_allocObject();
    v52[2] = v51;
    v52[3] = sub_1BD431D08;
    v52[4] = v16;
    v77 = sub_1BD431D14;
    v78 = v52;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v76 = sub_1BD4313C0;
    *(&v76 + 1) = &block_descriptor_93;
    v53 = _Block_copy(&aBlock);
    v54 = v78;
    sub_1BE048964();
    v54, v55, v56, v57, v58, v59, v60, v61;
    [v41 performAuthenticationWithURL:v42 callbackScheme:v43 completion:v53];
    _Block_release(v53);

    (*(v74 + 8))(v40, v14);
    v16, v62, v63, v64, v65, v66, v67, v68;
  }
}

uint64_t sub_1BD431D2C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1BD431D7C(id a1, char a2)
{
  if (a2)
  {
  }
}

void sub_1BD431D88(uint64_t a1, char *a2)
{
  v77 = sub_1BE04D214();
  v4 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v6 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45EE0, &qword_1BE0D5F50);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v75 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45EE8, &qword_1BE0D5F58);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v75 - v11;
  v13 = sub_1BE04AA64();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = a2;
  sub_1BE048964();
  sub_1BD42EB14(v9);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45EF0, &unk_1BE0D5F60);
  if ((*(*(v17 - 8) + 48))(v9, 1, v17) == 1)
  {
    sub_1BD0DE53C(v9, &qword_1EBD45EE0, &qword_1BE0D5F50);
    sub_1BE04D0C4();
    v18 = sub_1BE04D204();
    v19 = sub_1BE052C34();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1BD026000, v18, v19, "Failed to create verification url", v20, 2u);
      MEMORY[0x1BFB45F20](v20, -1, -1);
    }

    (*(v4 + 8))(v6, v77);
    v21 = [objc_opt_self() errorWithSeverity_];
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v30 = Strong;
      sub_1BD37FE84(1u);
      if ([v21 severity] == 1)
      {
        sub_1BD37FE84(0);
      }

      else
      {
        sub_1BD37F80C(v21);
      }

      v78, v31, v32, v33, v34, v35, v36, v37;
    }

    else
    {
      v78, v23, v24, v25, v26, v27, v28, v29;
    }
  }

  else
  {
    v38 = &v9[*(v17 + 48)];
    v39 = *v38;
    v40 = *(v38 + 1);
    v41 = &v12[*(v10 + 48)];
    v76 = v14;
    v77 = a1;
    v42 = v13;
    v43 = *(v14 + 32);
    v44 = v42;
    v43(v12, v9);
    *v41 = v39;
    *(v41 + 1) = v40;
    v45 = *&v12[*(v10 + 48) + 8];
    (v43)(v16, v12, v44);
    v46 = *(v77 + OBJC_IVAR____TtC9PassKitUI44ProvisioningVerificationURLPerformController_authSession);
    [v46 setPresentationWindow_];
    v47 = sub_1BE04A9C4();
    v48 = sub_1BE052404();
    v45, v49, v50, v51, v52, v53, v54, v55;
    v56 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v57 = swift_allocObject();
    v57[2] = v56;
    v57[3] = sub_1BD4322EC;
    v58 = v78;
    v57[4] = v78;
    aBlock[4] = sub_1BD432304;
    v80 = v57;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD4313C0;
    aBlock[3] = &block_descriptor_27;
    v59 = _Block_copy(aBlock);
    v60 = v80;
    sub_1BE048964();
    v60, v61, v62, v63, v64, v65, v66, v67;
    [v46 performAuthenticationWithURL:v47 callbackScheme:v48 completion:v59];
    _Block_release(v59);

    (*(v76 + 8))(v16, v44);
    v58, v68, v69, v70, v71, v72, v73, v74;
  }
}

uint64_t type metadata accessor for ShippingMethodSheet(uint64_t a1)
{
  result = qword_1EBD45F00;
  if (!qword_1EBD45F00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD432388(uint64_t a1)
{
  type metadata accessor for PKPaymentAuthorizationFundingMode(319);
  if (v1 <= 0x3F)
  {
    sub_1BD1030A8();
    if (v2 <= 0x3F)
    {
      sub_1BD3596B8(319);
      if (v3 <= 0x3F)
      {
        sub_1BD3EC194(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1BD432478@<X0>(uint64_t a1@<X8>)
{
  v22[1] = a1;
  v2 = type metadata accessor for ShippingMethodSheet(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = sub_1BD4326A8();
  v7 = v6;
  v8 = *(v1 + 248);
  v9 = *(v1 + 256);
  sub_1BD433C04(v1, v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  sub_1BD433C68(v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  *&v29 = sub_1BD433CCC;
  *(&v29 + 1) = v11;
  *&v30 = v5;
  *(&v30 + 1) = v7;
  *&v31 = v8;
  *(&v31 + 1) = v9;
  v32 = 0u;
  v33 = 0u;
  v34 = 0;
  v35[0] = sub_1BD433CCC;
  v35[1] = v11;
  v35[2] = v5;
  v35[3] = v7;
  v35[4] = v8;
  v35[5] = v9;
  v36 = 0u;
  v37 = 0u;
  v38 = 0;
  sub_1BE048964();
  sub_1BD069084(&v29, v39);
  sub_1BD0690F4(v35);
  v25 = v31;
  v26 = v32;
  v27 = v33;
  v28 = v34;
  v23 = v29;
  v24 = v30;
  sub_1BE052434();
  v13 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45F10, &unk_1BE0D5FF0);
  sub_1BD0DE4F4(&qword_1EBD45F18, &qword_1EBD45F10, &unk_1BE0D5FF0, &unk_1BE0E6430);
  sub_1BE050DE4();
  v13, v14, v15, v16, v17, v18, v19, v20;
  v39[2] = v25;
  v39[3] = v26;
  v39[4] = v27;
  v40 = v28;
  v39[0] = v23;
  v39[1] = v24;
  return sub_1BD0690F4(v39);
}

id sub_1BD4326A8()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v17 - v6;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - v9;
  if ((*(v0 + 208) & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    (*(v2 + 104))(&v17 - v9, *MEMORY[0x1E69B8068], v1, v10);
    result = PKPassKitBundle();
    if (result)
    {
      v13 = result;
      v14 = sub_1BE04B6F4();
LABEL_9:

      (*(v2 + 8))(v11, v1);
      return v14;
    }

    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v15 = *MEMORY[0x1E69B8068];
  v16 = *(v2 + 104);
  if (*(v0 + 264) == 1)
  {
    v16(v7, v15, v1, v10);
    result = PKPassKitBundle();
    if (result)
    {
      v13 = result;
      v14 = sub_1BE04B6F4();
      v11 = v7;
      goto LABEL_9;
    }

    goto LABEL_11;
  }

  v16(v4, v15, v1, v10);
  result = PKPassKitBundle();
  if (result)
  {
    v13 = result;
    v14 = sub_1BE04B6F4();
    v11 = v4;
    goto LABEL_9;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1BD432928@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD393E8, &qword_1BE0B8680);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v22[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45F20, &qword_1BE0D6000);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v22[-v9];
  v23 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45F28, &qword_1BE0D6008);
  sub_1BD433F18(&qword_1EBD45F30, &qword_1EBD45F28, &qword_1BE0D6008, sub_1BD433D70);
  sub_1BE0504A4();
  type metadata accessor for ShippingMethodSheet(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45120, &unk_1BE0B8540);
  sub_1BE0516C4();
  type metadata accessor for MultiHyperLinkDetailSheet(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD394A0, &qword_1BE0B86F0);
  sub_1BD0DE4F4(&qword_1EBD45F88, &qword_1EBD45F20, &qword_1BE0D6000, MEMORY[0x1E697CCF0]);
  sub_1BD434610(&qword_1EBD451C0, type metadata accessor for MultiHyperLinkDetailSheet, &unk_1BE10751C);
  sub_1BD10CC54();
  sub_1BE050F74();
  sub_1BD0DE53C(v6, &qword_1EBD393E8, &qword_1BE0B8680);
  (*(v8 + 8))(v10, v7);
  sub_1BE051CD4();
  sub_1BE04EE54();
  v11 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45F90, &qword_1BE0D6040) + 36));
  v12 = v29;
  v11[4] = v28;
  v11[5] = v12;
  v11[6] = v30;
  v13 = v25;
  *v11 = v24;
  v11[1] = v13;
  v14 = v27;
  v11[2] = v26;
  v11[3] = v14;
  v15 = sub_1BE051274();
  v16 = sub_1BE0501D4();
  v17 = sub_1BE051CD4();
  v19 = v18;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45F98, &qword_1BE0D6048);
  v21 = a2 + *(result + 36);
  *v21 = v15;
  *(v21 + 8) = v16;
  *(v21 + 16) = v17;
  *(v21 + 24) = v19;
  return result;
}

void *sub_1BD432CC0@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45FA0, qword_1BE0D6050);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v33 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45F40, &qword_1BE0D6010);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v1[3];
  v69[2] = v1[2];
  v69[3] = v9;
  v10 = v1[5];
  v69[4] = v1[4];
  v69[5] = v10;
  v11 = v1[1];
  v69[0] = *v1;
  v69[1] = v11;
  if (*&v69[0])
  {
    v35 = a1;
    v51 = *(v1 + 40);
    v52 = *(v1 + 56);
    v53 = *(v1 + 72);
    v12 = *(v1 + 11);
    v48 = *&v69[0];
    v54 = v12;
    v49 = *(v1 + 8);
    v50 = *(v1 + 24);
    v13 = v1[1];
    v55 = *v1;
    v56 = v13;
    v14 = v1[2];
    v15 = v1[3];
    v16 = v1[5];
    v59 = v1[4];
    v60 = v16;
    v57 = v14;
    v58 = v15;
    v17 = v1[6];
    v18 = v1[7];
    v19 = v1[9];
    v63 = v1[8];
    v64 = v19;
    v61 = v17;
    v62 = v18;
    v20 = v1[10];
    v21 = v1[11];
    v22 = v1[13];
    v67 = v1[12];
    v68 = v22;
    v65 = v20;
    v66 = v21;
    v23 = v1[3];
    v47[2] = v1[2];
    v47[3] = v23;
    v24 = v1[5];
    v47[4] = v1[4];
    v47[5] = v24;
    v25 = v1[1];
    v47[0] = *v1;
    v47[1] = v25;
    v34 = v33 - v8;
    sub_1BD433FCC(v47, v44);
    *&v44[0] = sub_1BD83AAF4();
    *(&v44[0] + 1) = v26;
    sub_1BD0DDEBC();
    v40 = sub_1BE0506C4();
    v41 = v27;
    v42 = v28 & 1;
    v43 = v29;
    sub_1BD4330A8(v44);
    v33[1] = v33;
    v36 = v44[0];
    v37 = v44[1];
    v38 = v45;
    v39 = v46;
    MEMORY[0x1EEE9AC00](v30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45F50, &qword_1BE0D6018);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45F70, &qword_1BE0D6030);
    sub_1BD433E34();
    v33[0] = v3;
    sub_1BD433F18(&qword_1EBD45F68, &qword_1EBD45F70, &qword_1BE0D6030, sub_1BD433F9C);
    v31 = v34;
    sub_1BE051A34();
    (*(v7 + 16))(v5, v31, v6);
    swift_storeEnumTagMultiPayload();
    sub_1BD433D70();
    sub_1BE04F9A4();
    sub_1BD0DE53C(v69, &qword_1EBD45FA8, &unk_1BE1002F0);
    return (*(v7 + 8))(v31, v6);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_1BD433D70();
    return sub_1BE04F9A4();
  }
}

void sub_1BD4330A8(uint64_t a1@<X8>)
{
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 224);
  if (!v8)
  {
    v44 = 0u;
    v45 = 0u;
    LOBYTE(v46) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39E98, &qword_1BE0B9A30);
    sub_1BD12E194();
    sub_1BE04F9A4();
    v44 = v47;
    v45 = v48;
    v46 = v49;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45F80, &qword_1BE0D6038);
    sub_1BD433F9C();
LABEL_9:
    sub_1BE04F9A4();
    v24 = v47;
    v25 = v48;
    v26 = v49;
    v27 = v50;
LABEL_13:
    *a1 = v24;
    *(a1 + 16) = v25;
    *(a1 + 32) = v26;
    *(a1 + 33) = v27;
    return;
  }

  if (v8 != 2)
  {
    v44 = 0u;
    v45 = 0u;
    v46 = 256;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45F80, &qword_1BE0D6038);
    sub_1BD433F9C();
    goto LABEL_9;
  }

  v9 = *(v1 + 272);
  v43 = a1;
  if (!v9)
  {
LABEL_11:
    v17 = 0;
    v19 = 0;
    v23 = 0;
    v22 = 0;
    goto LABEL_12;
  }

  v10 = v5;
  v11 = v9;
  if ([v11 type] != 1)
  {

    goto LABEL_11;
  }

  (*(v4 + 104))(v7, *MEMORY[0x1E69B8078], v10);
  v12 = PKPassKitBundle();
  if (v12)
  {
    v13 = v12;
    v14 = sub_1BE04B6F4();
    v16 = v15;

    (*(v4 + 8))(v7, v10);
    *&v47 = v14;
    *(&v47 + 1) = v16;
    sub_1BD0DDEBC();
    v17 = sub_1BE0506C4();
    v19 = v18;
    LOBYTE(v14) = v20;
    v22 = v21;

    v23 = v14 & 1;
    sub_1BD0D7F18(v17, v19, v14 & 1);
    sub_1BE048C84();
LABEL_12:
    *&v44 = v17;
    *(&v44 + 1) = v19;
    *&v45 = v23;
    *(&v45 + 1) = v22;
    LOBYTE(v46) = 0;
    sub_1BD1969AC(v17, v19, v23, v22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39E98, &qword_1BE0B9A30);
    sub_1BD12E194();
    sub_1BE04F9A4();
    v28 = v47;
    v29 = v48;
    v30 = v49;
    v44 = v47;
    v45 = v48;
    v46 = v49;
    sub_1BD434510(v47, *(&v47 + 1), v48, *(&v48 + 1), v49);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45F80, &qword_1BE0D6038);
    sub_1BD433F9C();
    sub_1BE04F9A4();
    sub_1BD1969F0(v17, v19, v23, v22, v31, v32, v33, v34);
    sub_1BD43451C(v28, *(&v28 + 1), v29, *(&v29 + 1), v30, v35, v36, v37);
    sub_1BD1969F0(v17, v19, v23, v22, v38, v39, v40, v41);
    v24 = v47;
    v25 = v48;
    v26 = v49;
    v27 = v50;
    a1 = v43;
    goto LABEL_13;
  }

  __break(1u);
}

__n128 sub_1BD4334C8@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ShippingMethodSheet(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = *a1;
  v10 = a1[1];
  v11 = *(*a1 + 16);
  KeyPath = swift_getKeyPath();
  sub_1BD433C04(a2, &v36[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v13 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v14 = swift_allocObject();
  v14[2] = v9;
  v14[3] = v10;
  sub_1BD433C68(&v36[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], v14 + v13);
  v41[0] = 0;
  v41[1] = v11;
  v37 = v41;
  v38 = KeyPath;
  v39 = sub_1BD434030;
  v40 = v14;
  sub_1BE048C84();
  v15 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45FB0, &unk_1BE0D6080);
  sub_1BD4341A0();
  sub_1BE0504E4();
  v14, v16, v17, v18, v19, v20, v21, v22;
  KeyPath, v23, v24, v25, v26, v27, v28, v29;
  v30 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45F50, &qword_1BE0D6018) + 36));
  __asm { FMOV            V0.2D, #16.0 }

  *v30 = result;
  v30[1] = result;
  v30[2].n128_u8[0] = 0;
  return result;
}

void sub_1BD433688(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = type metadata accessor for ShippingMethodSheet(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = *a1;
  if ((*a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v12 >= *(a2 + 16))
  {
LABEL_12:
    __break(1u);
    return;
  }

  v13 = a2 + 88 * v12;
  v14 = *(v13 + 80);
  v50 = *(v13 + 64);
  v51 = v14;
  v52 = *(v13 + 96);
  v53 = *(v13 + 112);
  v15 = *(v13 + 48);
  v48 = *(v13 + 32);
  v49 = v15;
  v54 = *(v13 + 88);
  v16 = v48;
  sub_1BD0E5E8C(0, &qword_1EBD3E3F0, 0x1E69E58C0);
  sub_1BD40F770(&v48, v47);
  v17 = v16;
  v18 = sub_1BE053074();

  v19 = *(a4 + 264);
  sub_1BD433C04(a4, &v39[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v20 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v21 = swift_allocObject();
  sub_1BD433C68(&v39[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)], v21 + v20);
  v22 = v21 + ((v11 + v20 + 7) & 0xFFFFFFFFFFFFFFF8);
  v23 = v51;
  *(v22 + 32) = v50;
  *(v22 + 48) = v23;
  *(v22 + 64) = v52;
  *(v22 + 80) = v53;
  v24 = v49;
  *v22 = v48;
  *(v22 + 16) = v24;
  KeyPath = swift_getKeyPath();
  v40 = 0;
  v39[0] = 1;
  v43 = v50;
  v44 = v51;
  v45 = v52;
  v46 = v53;
  v41 = v48;
  v42 = v49;
  sub_1BD40F770(&v48, v47);
  sub_1BD40F770(&v48, v47);
  v26 = [v17 label];
  v27 = sub_1BE052434();
  v29 = v28;

  sub_1BD1BCE40(&v54, v47);
  sub_1BD40F7CC(&v48);
  v31 = *(&v54 + 1);
  v30 = v54;
  if (v19 != 1 || !*(&v54 + 1))
  {
    goto LABEL_9;
  }

  v32 = HIBYTE(*(&v54 + 1)) & 0xFLL;
  if ((*(&v54 + 1) & 0x2000000000000000) == 0)
  {
    v32 = v54 & 0xFFFFFFFFFFFFLL;
  }

  if (v32)
  {
    v33 = v29;
    v29 = *(&v54 + 1);
    v34 = v54;
    v30 = v27;
    v31 = v33;
  }

  else
  {
LABEL_9:
    v34 = v27;
  }

  v35 = v40;
  v36 = v39[0];
  v37 = v44;
  *(a5 + 32) = v43;
  *(a5 + 48) = v37;
  *(a5 + 64) = v45;
  *(a5 + 80) = v46;
  v38 = v42;
  *a5 = v41;
  *(a5 + 16) = v38;
  *(a5 + 88) = v18 & 1;
  *(a5 + 96) = sub_1BD434488;
  *(a5 + 104) = v21;
  *(a5 + 112) = v34;
  *(a5 + 120) = v29;
  *(a5 + 128) = v30;
  *(a5 + 136) = v31;
  *(a5 + 144) = KeyPath;
  *(a5 + 152) = v35;
  *(a5 + 160) = 0;
  *(a5 + 168) = v36;
}

void sub_1BD433988(id *a1)
{
  v2 = v1;
  v4 = sub_1BE04D214();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04D084();
  sub_1BD40F770(a1, v41);
  v8 = sub_1BE04D204();
  v9 = sub_1BE052C54();
  sub_1BD40F7CC(a1);
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v40 = v2;
    v11 = v10;
    v12 = swift_slowAlloc();
    v41[0] = v12;
    *v11 = 136315138;
    v13 = [*a1 description];
    v14 = sub_1BE052434();
    v39 = v4;
    v16 = v15;

    v17 = sub_1BD123690(v14, v16, v41);
    v16, v18, v19, v20, v21, v22, v23, v24;
    *(v11 + 4) = v17;
    _os_log_impl(&dword_1BD026000, v8, v9, "Selected shipping method: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12, v25, v26, v27, v28, v29, v30, v31);
    MEMORY[0x1BFB45F20](v12, -1, -1);
    v32 = v11;
    v2 = v40;
    MEMORY[0x1BFB45F20](v32, -1, -1);

    (*(v5 + 8))(v7, v39);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  v33 = *a1;
  if (*v2)
  {
    v34 = *(v2 + 8);
    sub_1BD0E5E8C(0, &qword_1EBD45FC8, 0x1E69B9298);
    v35 = v34;
    v36 = v33;
    v37 = sub_1BE053074();

    if (v37)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v35 = 0;
  }

  (*(v2 + 232))(v33);
LABEL_9:
}

uint64_t sub_1BD433C04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShippingMethodSheet(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD433C68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShippingMethodSheet(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD433CCC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ShippingMethodSheet(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1BD432928(v4, a1);
}

unint64_t sub_1BD433D70()
{
  result = qword_1EBD45F38;
  if (!qword_1EBD45F38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45F40, &qword_1BE0D6010);
    sub_1BD433E34();
    sub_1BD433F18(&qword_1EBD45F68, &qword_1EBD45F70, &qword_1BE0D6030, sub_1BD433F9C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD45F38);
  }

  return result;
}

unint64_t sub_1BD433E34()
{
  result = qword_1EBD45F48;
  if (!qword_1EBD45F48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45F50, &qword_1BE0D6018);
    sub_1BD0DE4F4(&qword_1EBD45F58, &qword_1EBD45F60, &unk_1BE0D6020, MEMORY[0x1E697CD20]);
    sub_1BD0DE4F4(&unk_1EBD3FB30, &qword_1EBD397A8, &qword_1BE0B8CD0, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD45F48);
  }

  return result;
}

uint64_t sub_1BD433F18(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

void sub_1BD434030(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ShippingMethodSheet(0) - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  sub_1BD433688(a1, v6, v7, a2);
}

uint64_t sub_1BD4340B4(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  sub_1BE048964();
  sub_1BE048964();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40D08, &unk_1BE0E76B0);
  sub_1BD2D5394();
  sub_1BD434224();
  return sub_1BE0519C4();
}

unint64_t sub_1BD4341A0()
{
  result = qword_1EBD45FB8;
  if (!qword_1EBD45FB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45FB0, &unk_1BE0D6080);
    sub_1BD434224();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD45FB8);
  }

  return result;
}

unint64_t sub_1BD434224()
{
  result = qword_1EBD45FC0;
  if (!qword_1EBD45FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD45FC0);
  }

  return result;
}

__n128 sub_1BD434278@<Q0>(uint64_t *a1@<X0>, void (*a2)(__n128 *__return_ptr, uint64_t *)@<X1>, uint64_t a3@<X8>)
{
  v20 = *a1;
  a2(&v10, &v20);
  v29 = v18;
  v30[0] = v19[0];
  *(v30 + 9) = *(v19 + 9);
  v25 = v14;
  v26 = v15;
  v27 = v16;
  v28 = v17;
  v21 = v10;
  v22 = v11;
  v23 = v12;
  v24 = v13;
  v31[7] = v17;
  v31[8] = v18;
  v32[0] = v19[0];
  *(v32 + 9) = *(v19 + 9);
  v31[4] = v14;
  v31[5] = v15;
  v31[6] = v16;
  v31[0] = v10;
  v31[1] = v11;
  v31[2] = v12;
  v31[3] = v13;
  sub_1BD4343D8(&v21, &v9);
  sub_1BD434434(v31);
  v4 = v30[0];
  *(a3 + 128) = v29;
  *(a3 + 144) = v4;
  *(a3 + 153) = *(v30 + 9);
  v5 = v26;
  *(a3 + 64) = v25;
  *(a3 + 80) = v5;
  v6 = v28;
  *(a3 + 96) = v27;
  *(a3 + 112) = v6;
  v7 = v22;
  *a3 = v21;
  *(a3 + 16) = v7;
  result = v24;
  *(a3 + 32) = v23;
  *(a3 + 48) = result;
  return result;
}

uint64_t sub_1BD434510(uint64_t result, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
    return sub_1BD1969AC(result, a2, a3, a4);
  }

  return result;
}

void sub_1BD43451C(void *result, char *a2, char a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  if ((a5 & 1) == 0)
  {
    sub_1BD1969F0(result, a2, a3, a4, a5, a6, a7, a8);
  }
}

unint64_t sub_1BD434528()
{
  result = qword_1EBD45FD0;
  if (!qword_1EBD45FD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45FD8, &unk_1BE0D60C8);
    sub_1BD0DE4F4(&qword_1EBD45F18, &qword_1EBD45F10, &unk_1BE0D5FF0, &unk_1BE0E6430);
    sub_1BD434610(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD45FD0);
  }

  return result;
}

uint64_t sub_1BD434610(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BD4346C4()
{
  v0 = sub_1BE04B0F4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1BE04A874();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE0523D4();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1BE04A884();
  __swift_allocate_value_buffer(v6, qword_1EBDAB088);
  __swift_project_value_buffer(v6, qword_1EBDAB088);
  sub_1BE052354();
  if (qword_1EBD36CF8 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EBDAB400);
  (*(v2 + 16))(v4, v7, v1);
  sub_1BE04B0A4();
  return sub_1BE04A894();
}

uint64_t sub_1BD4348D8(uint64_t a1)
{
  v1[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  v1[3] = swift_task_alloc();
  v2 = sub_1BE04AA64();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v3 = sub_1BE04A3B4();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();
  v4 = sub_1BE04CFC4();
  v1[10] = v4;
  v1[11] = *(v4 - 8);
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v5 = sub_1BE04CFE4();
  v1[14] = v5;
  v1[15] = *(v5 - 8);
  v1[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD434AF0, 0, 0);
}

uint64_t sub_1BD434AF0(uint64_t a1)
{
  sub_1BE04B684();
  sub_1BE04CFB4();
  v2 = sub_1BE04CFD4();
  v3 = sub_1BE052E34();
  if (sub_1BE053494())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = sub_1BE04CFA4();
    _os_signpost_emit_with_name_impl(&dword_1BD026000, v2, v3, v5, "perform:ShowExpiredPassesIntent", "", v4, 2u);
    MEMORY[0x1BFB45F20](v4, -1, -1);
  }

  v7 = v1[15];
  v6 = v1[16];
  v9 = v1[13];
  v8 = v1[14];
  v11 = v1[11];
  v10 = v1[12];
  v12 = v1[10];

  (*(v11 + 16))(v10, v9, v12);
  sub_1BE04D024();
  swift_allocObject();
  v1[17] = sub_1BE04D014();
  (*(v11 + 8))(v9, v12);
  (*(v7 + 8))(v6, v8);
  v13 = [objc_opt_self() sharedInstance];
  v1[18] = v13;
  if (!v13)
  {
    goto LABEL_8;
  }

  v14 = v13;
  if (![v13 hasPassesInExpiredSection])
  {

LABEL_8:
    sub_1BD135218();
    swift_allocError();
    *v22 = 7;
    swift_willThrow();
    goto LABEL_9;
  }

  v15 = v1[4];
  v16 = v1[5];
  v17 = v1[3];
  sub_1BE04A3A4();
  sub_1BE052434();
  sub_1BE04A394();
  v18 = sub_1BE052434();
  MEMORY[0x1BFB37400](v18);
  sub_1BE04A364();
  if ((*(v16 + 48))(v17, 1, v15) == 1)
  {
    v20 = v1[8];
    v19 = v1[9];
    v21 = v1[7];
    sub_1BD226BBC(v1[3]);
    sub_1BE0484F4();
    sub_1BD1351C0();
    swift_allocError();
    sub_1BE0484E4();
    swift_willThrow();

    (*(v20 + 8))(v19, v21);
LABEL_9:
    v23 = v1[17];
    sub_1BD4351C4(v23);
    v23, v24, v25, v26, v27, v28, v29, v30;

    v31 = v1[1];

    return v31();
  }

  (*(v1[5] + 32))(v1[6], v1[3], v1[4]);
  v33 = swift_task_alloc();
  v1[19] = v33;
  *v33 = v1;
  v33[1] = sub_1BD434EC4;
  v34 = v1[6];

  return sub_1BD0D7A54(v34);
}

uint64_t sub_1BD434EC4(char a1)
{
  *(*v1 + 160) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1BD434FC4, 0, 0);
}

uint64_t sub_1BD434FC4(uint64_t a1)
{
  if (*(v1 + 160) == 1)
  {
    v2 = *(v1 + 136);
    v3 = *(v1 + 144);
    v4 = *(v1 + 64);
    v5 = *(v1 + 72);
    v7 = *(v1 + 48);
    v6 = *(v1 + 56);
    v9 = *(v1 + 32);
    v8 = *(v1 + 40);
    sub_1BE048774();

    (*(v8 + 8))(v7, v9);
    (*(v4 + 8))(v5, v6);
    sub_1BD4351C4(v2);
    v2, v10, v11, v12, v13, v14, v15, v16;
  }

  else
  {
    v18 = *(v1 + 144);
    v20 = *(v1 + 64);
    v19 = *(v1 + 72);
    v22 = *(v1 + 48);
    v21 = *(v1 + 56);
    v23 = *(v1 + 32);
    v24 = *(v1 + 40);
    sub_1BE0484F4();
    sub_1BD1351C0();
    swift_allocError();
    sub_1BE0484E4();
    swift_willThrow();

    (*(v24 + 8))(v22, v23);
    (*(v20 + 8))(v19, v21);
    v25 = *(v1 + 136);
    sub_1BD4351C4(v25);
    v25, v26, v27, v28, v29, v30, v31, v32;
  }

  v17 = *(v1 + 8);

  return v17();
}

uint64_t sub_1BD4351C4(void *a1)
{
  v2 = sub_1BE04CFF4();
  v27 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v25[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = sub_1BE04CFC4();
  v5 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v7 = &v25[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1BE04CFE4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BE04B684();
  v12 = sub_1BE04CFD4();
  sub_1BE04D004();
  v26 = sub_1BE052E24();
  if (sub_1BE053494())
  {
    sub_1BE048964();
    sub_1BE04D034();
    a1, v13, v14, v15, v16, v17, v18, v19;
    v20 = v27;
    if ((*(v27 + 88))(v4, v2) == *MEMORY[0x1E69E93E8])
    {
      v21 = "[Error] Interval already ended";
    }

    else
    {
      (*(v20 + 8))(v4, v2);
      v21 = "";
    }

    v22 = swift_slowAlloc();
    *v22 = 0;
    v23 = sub_1BE04CFA4();
    _os_signpost_emit_with_name_impl(&dword_1BD026000, v12, v26, v23, "perform:ShowExpiredPassesIntent", v21, v22, 2u);
    MEMORY[0x1BFB45F20](v22, -1, -1);
  }

  (*(v5 + 8))(v7, v28);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1BD4354B0@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBD36C00 != -1)
  {
    swift_once();
  }

  v2 = sub_1BE04A884();
  v3 = __swift_project_value_buffer(v2, qword_1EBDAB088);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1BD435558(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BD0F985C;

  return sub_1BD4348D8(a1);
}

uint64_t sub_1BD4355F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BD435638(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_1BD4356B4@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v99 = a1;
  v100 = a2;
  v2 = sub_1BE04FB94();
  v97 = *(v2 - 8);
  v98 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v96 = v92 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46008, &qword_1BE0D62D0);
  v94 = *(v4 - 8);
  v95 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v93 = v92 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46010, &qword_1BE0D62D8);
  v102 = *(v6 - 8);
  v103 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v101 = v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v114 = v92 - v9;
  v10 = sub_1BE050474();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BE04BD74();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v108 = v92 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = v92 - v19;
  v21 = *(v15 + 104);
  LODWORD(v107) = *MEMORY[0x1E69B80D8];
  v115 = v22;
  v106 = v21;
  v21(v92 - v19, v18);
  result = PKPassKitBundle();
  if (result)
  {
    v24 = result;
    v25 = sub_1BE04B6F4();
    v27 = v26;

    v104 = *(v15 + 8);
    KeyPath = v15 + 8;
    v104(v20, v115);
    v134 = v25;
    v135 = v27;
    v92[1] = sub_1BD0DDEBC();
    v28 = sub_1BE0506C4();
    v30 = v29;
    LOBYTE(v27) = v31;
    v33 = v32;
    (*(v11 + 104))(v13, *MEMORY[0x1E6980EE8], v10);
    sub_1BE0503A4();
    v34 = sub_1BE050284();
    (*(v11 + 8))(v13, v10);
    v35 = sub_1BE0505F4();
    v111 = v36;
    v112 = v35;
    v38 = v37;
    v113 = v39;
    v34, v36, v37, v39, v40, v41, v42, v43;
    sub_1BD0DDF10(v28, v30, (v27 & 1), v44, v45, v46, v47, v48);
    v33, v49, v50, v51, v52, v53, v54, v55;
    v56 = sub_1BE0501C4();
    v109 = v38 & 1;
    v110 = v56;
    v164 = v38 & 1;
    v161 = 1;
    v57 = v108;
    v106(v108, v107, v115);
    result = PKPassKitBundle();
    if (result)
    {
      v58 = result;
      v59 = sub_1BE04B6F4();
      v61 = v60;

      v104(v57, v115);
      v134 = v59;
      v135 = v61;
      v62 = sub_1BE0506C4();
      v106 = v63;
      v107 = v62;
      LOBYTE(v59) = v64;
      v115 = v65;
      KeyPath = swift_getKeyPath();
      v66 = sub_1BE0501C4();
      LODWORD(v108) = v66;
      LODWORD(v104) = v59 & 1;
      v160 = v59 & 1;
      v156 = 1;
      MEMORY[0x1EEE9AC00](v66);
      v92[-2] = v99;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46018, &qword_1BE0D6310);
      sub_1BD0DE4F4(&qword_1EBD46020, &qword_1EBD46018, &qword_1BE0D6310, MEMORY[0x1E6981F48]);
      v67 = v93;
      sub_1BE0504E4();
      v68 = v96;
      sub_1BE04FB84();
      sub_1BD0DE4F4(&qword_1EBD46028, &qword_1EBD46008, &qword_1BE0D62D0, MEMORY[0x1E697CD20]);
      v69 = v114;
      v70 = v95;
      v71 = v98;
      sub_1BE051144();
      (*(v97 + 8))(v68, v71);
      (*(v94 + 8))(v67, v70);
      sub_1BD436F3C(v121);
      v73 = v101;
      v72 = v102;
      v74 = *(v102 + 16);
      v75 = v103;
      v74(v101, v69, v103);
      v118 = v121[2];
      v119 = v121[3];
      v120[0] = v122[0];
      *(v120 + 9) = *(v122 + 9);
      v116 = v121[0];
      v117 = v121[1];
      *&v123 = v112;
      *(&v123 + 1) = v111;
      LOBYTE(v124) = v109;
      DWORD1(v124) = *&v163[3];
      *(&v124 + 1) = *v163;
      *(&v124 + 1) = v113;
      LOBYTE(v125[0]) = v110;
      DWORD1(v125[0]) = *&v162[3];
      *(v125 + 1) = *v162;
      *(&v125[1] + 8) = 0u;
      *(v125 + 8) = 0u;
      BYTE8(v125[2]) = 1;
      v76 = v123;
      v77 = v124;
      v78 = v100;
      *(v100 + 57) = *(&v125[1] + 9);
      v79 = v125[1];
      v78[2] = v125[0];
      v78[3] = v79;
      *v78 = v76;
      v78[1] = v77;
      *&v126 = v107;
      *(&v126 + 1) = v106;
      LOBYTE(v127) = v104;
      DWORD1(v127) = *&v159[3];
      *(&v127 + 1) = *v159;
      *(&v127 + 1) = v115;
      *&v128 = KeyPath;
      BYTE8(v128) = 1;
      HIDWORD(v128) = *&v158[3];
      *(&v128 + 9) = *v158;
      LOBYTE(v129[0]) = v108;
      DWORD1(v129[0]) = *&v157[3];
      *(v129 + 1) = *v157;
      *(&v129[1] + 8) = 0u;
      *(v129 + 8) = 0u;
      BYTE8(v129[2]) = 1;
      v80 = v127;
      v78[5] = v126;
      v78[6] = v80;
      v81 = v128;
      v82 = v129[0];
      v83 = v129[1];
      *(v78 + 153) = *(&v129[1] + 9);
      v78[8] = v82;
      v78[9] = v83;
      v78[7] = v81;
      v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46030, &qword_1BE0D6318);
      v74(v78 + *(v84 + 64), v73, v75);
      v85 = (v78 + *(v84 + 80));
      v86 = *(v120 + 9);
      *(v131 + 9) = *(v120 + 9);
      v87 = v119;
      v130[2] = v118;
      v130[3] = v119;
      v88 = v120[0];
      v131[0] = v120[0];
      v89 = v116;
      v90 = v117;
      v130[0] = v116;
      v130[1] = v117;
      v85[2] = v118;
      v85[3] = v87;
      v85[4] = v88;
      *(v85 + 73) = v86;
      *v85 = v89;
      v85[1] = v90;
      sub_1BD0DE19C(&v123, &v134, &unk_1EBD3DF90, &qword_1BE0C2E90);
      sub_1BD0DE19C(&v126, &v134, &qword_1EBD43170, &qword_1BE1054E0);
      sub_1BD0DE19C(v130, &v134, &qword_1EBD46038, &unk_1BE0D6320);
      v91 = *(v72 + 8);
      v91(v114, v75);
      v132[2] = v118;
      v132[3] = v119;
      v133[0] = v120[0];
      *(v133 + 9) = *(v120 + 9);
      v132[0] = v116;
      v132[1] = v117;
      sub_1BD0DE53C(v132, &qword_1EBD46038, &unk_1BE0D6320);
      v91(v73, v75);
      v134 = v107;
      v135 = v106;
      v136 = v104;
      *v137 = *v159;
      *&v137[3] = *&v159[3];
      v138 = v115;
      v139 = KeyPath;
      v140 = 1;
      *v141 = *v158;
      *&v141[3] = *&v158[3];
      v142 = v108;
      *&v143[3] = *&v157[3];
      *v143 = *v157;
      v145 = 0u;
      v144 = 0u;
      v146 = 1;
      sub_1BD0DE53C(&v134, &qword_1EBD43170, &qword_1BE1054E0);
      v147[0] = v112;
      v147[1] = v111;
      v148 = v109;
      *v149 = *v163;
      *&v149[3] = *&v163[3];
      v150 = v113;
      v151 = v110;
      *v152 = *v162;
      *&v152[3] = *&v162[3];
      v153 = 0u;
      v154 = 0u;
      v155 = 1;
      return sub_1BD0DE53C(v147, &unk_1EBD3DF90, &qword_1BE0C2E90);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1BD4360C8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46050, &qword_1BE0D6340);
  v62 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v59 = &v56 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46058, &qword_1BE0D6348);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v63 = &v56 - v10;
  v11 = sub_1BE04BD74();
  v66 = *(v11 - 8);
  v67 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v60 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v56 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46060, &qword_1BE0D6350);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v56 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46068, &qword_1BE0D6358);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24.n128_f64[0] = MEMORY[0x1EEE9AC00](v23);
  v26 = &v56 - v25;
  v64 = a1;
  v65 = &v56 - v25;
  v27 = *a1;
  if (!v27)
  {
    goto LABEL_8;
  }

  if (v27 >> 62)
  {
    if (sub_1BE053704())
    {
      goto LABEL_4;
    }

LABEL_8:
    (*(v17 + 56))(v26, 1, 1, v16, v24);
    v39 = v64[1];
    if (!v39)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  if (!*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

LABEL_4:
  v56 = v22;
  v57 = v8;
  v61 = v4;
  v58 = a2;
  v29 = v66;
  v28 = v67;
  (*(v66 + 104))(v15, *MEMORY[0x1E69B80D8], v67, v24);
  result = PKPassKitBundle();
  if (!result)
  {
    __break(1u);
    goto LABEL_18;
  }

  v31 = result;
  v32 = sub_1BE04B6F4();
  v34 = v33;

  (*(v29 + 8))(v15, v28);
  v68 = v32;
  v69 = v34;
  sub_1BD0DDEBC();
  v68 = sub_1BE0506C4();
  v69 = v35;
  v70 = v36 & 1;
  v71 = v37;
  MEMORY[0x1EEE9AC00](v68);
  *(&v56 - 2) = v27;
  v38 = v64;
  *(&v56 - 1) = v64;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46090, qword_1BE0D6370);
  sub_1BD438078();
  sub_1BE051A24();
  v26 = v65;
  (*(v17 + 32))(v65, v19, v16);
  (*(v17 + 56))(v26, 0, 1, v16);
  v8 = v57;
  a2 = v58;
  v4 = v61;
  v22 = v56;
  v39 = v38[1];
  if (!v39)
  {
LABEL_6:
    v40 = 1;
    v41 = v62;
    v42 = v63;
LABEL_16:
    (*(v41 + 56))(v42, v40, 1, v4);
    sub_1BD069604(v26, v22);
    sub_1BD0DE19C(v42, v8, &qword_1EBD46058, &qword_1BE0D6348);
    sub_1BD069604(v22, a2);
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46070, &qword_1BE0D6360);
    sub_1BD0DE19C(v8, a2 + *(v55 + 48), &qword_1EBD46058, &qword_1BE0D6348);
    sub_1BD0DE53C(v42, &qword_1EBD46058, &qword_1BE0D6348);
    sub_1BD069674(v26);
    sub_1BD0DE53C(v8, &qword_1EBD46058, &qword_1BE0D6348);
    return sub_1BD069674(v22);
  }

LABEL_9:
  if (!(v39 >> 62))
  {
    v43 = v66;
    v44 = v67;
    if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_11;
    }

LABEL_14:
    v40 = 1;
    v41 = v62;
    v42 = v63;
    goto LABEL_15;
  }

  v54 = sub_1BE053704();
  v43 = v66;
  v44 = v67;
  if (!v54)
  {
    goto LABEL_14;
  }

LABEL_11:
  v61 = v4;
  v45 = v60;
  (*(v43 + 104))(v60, *MEMORY[0x1E69B80D8], v44);
  result = PKPassKitBundle();
  if (result)
  {
    v46 = result;
    v47 = sub_1BE04B6F4();
    v49 = v48;

    (*(v43 + 8))(v45, v44);
    v68 = v47;
    v69 = v49;
    sub_1BD0DDEBC();
    v68 = sub_1BE0506C4();
    v69 = v50;
    v70 = v51 & 1;
    v71 = v52;
    MEMORY[0x1EEE9AC00](v68);
    *(&v56 - 2) = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46078, &qword_1BE0D6368);
    sub_1BD437F98();
    v53 = v59;
    sub_1BE051A24();
    v41 = v62;
    v42 = v63;
    v4 = v61;
    (*(v62 + 32))(v63, v53, v61);
    v40 = 0;
LABEL_15:
    v26 = v65;
    goto LABEL_16;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1BD436808(uint64_t a1, _OWORD *a2)
{
  v8[8] = a1;
  swift_getKeyPath();
  v3 = swift_allocObject();
  v4 = a2[1];
  v3[1] = *a2;
  v3[2] = v4;
  v5 = a2[3];
  v3[3] = a2[2];
  v3[4] = v5;
  sub_1BE048C84();
  sub_1BD300E80(a2, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45FF0, &qword_1BE0D62B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD460A0, &unk_1BE0D63E0);
  sub_1BD0DE4F4(&qword_1EBD460A8, &qword_1EBD45FF0, &qword_1BE0D62B8, MEMORY[0x1E69E6338]);
  sub_1BD2D5FE4();
  v6 = sub_1BD43801C();
  v8[0] = &type metadata for listRow;
  v8[1] = v6;
  swift_getOpaqueTypeConformance2();
  return sub_1BE0519C4();
}

void sub_1BD436978(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 identifier];
  v4 = sub_1BE052434();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

void sub_1BD4369D0(void **a1, _OWORD *a2)
{
  v3 = *a1;
  v25[0] = a2[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46048, &unk_1BE0D6330);
  sub_1BE0516A4();
  v4 = v26;
  *&v25[0] = v3;
  v24[2] = v25;
  v5 = sub_1BD30114C(sub_1BD438430, v24, v26);
  v4, v6, v7, v8, v9, v10, v11, v12;
  LOBYTE(v4) = v5 & 1;
  LOBYTE(v26) = v5 & 1;
  v27 = v3;
  v13 = swift_allocObject();
  *(v13 + 16) = v4;
  v14 = a2[1];
  *(v13 + 24) = *a2;
  *(v13 + 40) = v14;
  v15 = a2[3];
  *(v13 + 56) = a2[2];
  *(v13 + 72) = v15;
  *(v13 + 88) = v3;
  v16 = v3;
  sub_1BD300E80(a2, v25);
  sub_1BD43801C();
  sub_1BE0509D4();

  v13, v17, v18, v19, v20, v21, v22, v23;
}

uint64_t sub_1BD436B18(char a1, uint64_t a2, void *a3)
{
  v5 = *(a2 + 32);
  v4 = *(a2 + 40);
  if (a1)
  {
    v23[0] = *(a2 + 32);
    v28 = v4;
    v24 = v5;
    v25 = v4;
    sub_1BD0DE19C(v23, &v27, &qword_1EBD45FF0, &qword_1BE0D62B8);
    sub_1BD0DE19C(&v28, &v27, &qword_1EBD460B0, &qword_1BE0D63F0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46048, &unk_1BE0D6330);
    sub_1BE0516A4();
    v13 = v27;
    v24 = MEMORY[0x1E69E7CC0];
    if (v27 >> 62)
    {
      goto LABEL_20;
    }

    for (i = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BE053704())
    {
      v21 = v5;
      v22 = v4;
      v4 = 0;
      while (1)
      {
        if ((v13 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x1BFB40900](v4, v13);
        }

        else
        {
          if (v4 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_19;
          }

          v15 = *(v13 + 8 * v4 + 32);
        }

        v5 = v15;
        v16 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          break;
        }

        sub_1BD437F44();
        if (sub_1BE053074())
        {
        }

        else
        {
          sub_1BE0538C4();
          sub_1BE0538F4();
          sub_1BE053904();
          sub_1BE0538D4();
        }

        ++v4;
        if (v16 == i)
        {
          v19 = v24;
          v5 = v21;
          v4 = v22;
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      ;
    }

    v19 = MEMORY[0x1E69E7CC0];
LABEL_22:
    v13, v6, v7, v8, v9, v10, v11, v12;
    v24 = v5;
    v25 = v4;
    v27 = v19;
    sub_1BE0516B4();
    sub_1BD0DE53C(v23, &qword_1EBD45FF0, &qword_1BE0D62B8);
    v18 = &v28;
  }

  else
  {
    v27 = *(a2 + 40);
    v28 = v5;
    v24 = v5;
    v25 = v4;
    sub_1BD0DE19C(&v28, v23, &qword_1EBD45FF0, &qword_1BE0D62B8);
    sub_1BD0DE19C(&v27, v23, &qword_1EBD460B0, &qword_1BE0D63F0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46048, &unk_1BE0D6330);
    sub_1BE0516A4();
    v17 = a3;
    MEMORY[0x1BFB3F7A0]();
    if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BE052774();
    }

    sub_1BE0527C4();
    v23[0] = v5;
    v23[1] = v4;
    sub_1BE0516B4();
    sub_1BD0DE53C(&v28, &qword_1EBD45FF0, &qword_1BE0D62B8);
    v18 = &v27;
  }

  return sub_1BD0DE53C(v18, &qword_1EBD460B0, &qword_1BE0D63F0);
}

uint64_t sub_1BD436E38(uint64_t a1)
{
  swift_getKeyPath();
  sub_1BE048C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45FF0, &qword_1BE0D62B8);
  sub_1BD0DE4F4(&qword_1EBD460A8, &qword_1EBD45FF0, &qword_1BE0D62B8, MEMORY[0x1E69E6338]);
  sub_1BD2D5FE4();
  sub_1BD43801C();
  return sub_1BE0519C4();
}

id sub_1BD436F28@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *a2 = 2;
  *(a2 + 8) = v2;
  return v2;
}

id sub_1BD436F3C@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v76[0]) = 1;
  v8 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46040 &qword_1BE10F6E0))];
  LOBYTE(v81) = 1;
  v75[0] = 1;
  v9 = &v8[qword_1EBD56240];
  v10 = *&v8[qword_1EBD56240];
  v11 = *&v8[qword_1EBD56240 + 8];
  *v9 = 0;
  *(v9 + 1) = 0;
  sub_1BD0D4744(v10, v11, v12, v13, v14, v15, v16, v17);
  v18 = &v8[qword_1EBD56248];
  v19 = *&v8[qword_1EBD56248];
  v20 = *&v8[qword_1EBD56248 + 8];
  *v18 = 0;
  *(v18 + 1) = 0;
  sub_1BD0D4744(v19, v20, v21, v22, v23, v24, v25, v26);
  HIDWORD(v72) = v81;
  v73 = LOBYTE(v76[0]);
  v74 = v75[0];
  (*(v5 + 104))(v7, *MEMORY[0x1E69B80D8], v4);
  result = PKPassKitBundle();
  if (result)
  {
    v28 = result;
    v29 = sub_1BE04B6F4();
    v31 = v30;

    (*(v5 + 8))(v7, v4);
    0, v32, v33, v34, v35, v36, v37, v38;
    v81 = v2[2];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46048, &unk_1BE0D6330);
    sub_1BE0516A4();
    v46 = v76[0];
    if (v76[0] >> 62)
    {
      v71 = v76[0];
      v47 = sub_1BE053704();
      v46 = v71;
    }

    else
    {
      v47 = *((v76[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v46, v39, v40, v41, v42, v43, v44, v45;
    if (v47)
    {
      v81 = v2[3];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
      sub_1BE0516A4();
      v48 = LOBYTE(v76[0]) ^ 1;
    }

    else
    {
      v48 = 0;
    }

    v49 = v48 & 1;
    v50 = swift_allocObject();
    v51 = v2[3];
    *(v50 + 3) = v2[2];
    *(v50 + 4) = v51;
    v52 = v2[1];
    *(v50 + 1) = *v2;
    *(v50 + 2) = v52;
    v53 = &v8[qword_1EBD56240];
    v54 = *&v8[qword_1EBD56240];
    v55 = *&v8[qword_1EBD56240 + 8];
    *v53 = sub_1BD437F20;
    v53[1] = v50;
    sub_1BD300E80(v2, &v81);
    sub_1BD0D4744(v54, v55, v56, v57, v58, v59, v60, v61);
    v81 = v2[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
    sub_1BE0516A4();
    v62 = v76[0];
    v76[0] = v8;
    v76[1] = 0;
    v64 = BYTE4(v72);
    v63 = v73;
    LOBYTE(v77) = BYTE4(v72);
    BYTE1(v77) = v62;
    *(&v77 + 2) = v102;
    WORD3(v77) = v103;
    *(&v77 + 1) = v29;
    *&v78 = v31;
    BYTE8(v78) = v49;
    v65 = v101[0];
    *(&v78 + 9) = v101[0];
    HIDWORD(v78) = *(v101 + 3);
    v79 = 0uLL;
    *&v80[0] = 0;
    BYTE8(v80[0]) = v73;
    BYTE9(v80[0]) = 1;
    HIWORD(v80[0]) = v100;
    *(v80 + 10) = v99;
    *&v80[1] = 0;
    v66 = v74;
    BYTE8(v80[1]) = v74;
    v67 = v77;
    *a1 = v8;
    a1[1] = v67;
    v68 = v78;
    v69 = v79;
    v70 = v80[0];
    *(a1 + 73) = *(v80 + 9);
    a1[3] = v69;
    a1[4] = v70;
    a1[2] = v68;
    v81 = v8;
    v82 = v64;
    v83 = v62;
    v85 = v103;
    v84 = v102;
    v86 = v29;
    v87 = v31;
    v88 = v49;
    *&v89[3] = *(v101 + 3);
    *v89 = v65;
    v90 = 0;
    v91 = 0;
    v92 = 0;
    v93 = v63;
    v94 = 1;
    v96 = v100;
    v95 = v99;
    v97 = 0;
    v98 = v66;
    sub_1BD0DE19C(v76, v75, &qword_1EBD46038, &unk_1BE0D6320);
    return sub_1BD0DE53C(&v81, &qword_1EBD46038, &unk_1BE0D6320);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BD437364(void *a1)
{
  v28 = a1;
  v1 = *a1;
  if (*a1)
  {
    v30 = MEMORY[0x1E69E7CC0];
    if (v1 >> 62)
    {
      goto LABEL_18;
    }

    for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BE053704())
    {
      v3 = 0;
      v27 = v1 & 0xC000000000000001;
      while (1)
      {
        if (v27)
        {
          v4 = MEMORY[0x1BFB40900](v3, v1);
        }

        else
        {
          if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_17;
          }

          v4 = *(v1 + 8 * v3 + 32);
        }

        v5 = v4;
        v6 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          break;
        }

        v31 = *(v28 + 2);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46048, &unk_1BE0D6330);
        v7 = sub_1BE0516A4();
        v8 = v29;
        *&v31 = v5;
        MEMORY[0x1EEE9AC00](v7);
        v26[2] = &v31;
        v9 = sub_1BD30114C(sub_1BD437F28, v26, v8);
        v8, v10, v11, v12, v13, v14, v15, v16;
        if (v9)
        {
          sub_1BE0538C4();
          sub_1BE0538F4();
          sub_1BE053904();
          sub_1BE0538D4();
        }

        else
        {
        }

        ++v3;
        if (v6 == i)
        {
          v17 = v30;
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      ;
    }

    v17 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v17 = 0;
  }

LABEL_20:
  v18 = v28;
  v31 = *(v28 + 3);
  LOBYTE(v30) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516B4();
  (v18[2])(v17);
  v17, v19, v20, v21, v22, v23, v24, v25;
}

uint64_t sub_1BD437574@<X0>(uint64_t a2@<X8>)
{
  v4 = v2[1];
  v12 = *v2;
  v13 = v4;
  v5 = v2[3];
  v14 = v2[2];
  v15 = v5;
  *a2 = sub_1BE04F7B4();
  *(a2 + 8) = 0x4030000000000000;
  *(a2 + 16) = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45FF8, &qword_1BE0D62C0);
  sub_1BD4356B4(&v12, (a2 + *(v6 + 44)));
  v7 = [objc_opt_self() secondarySystemBackgroundColor];
  v8 = sub_1BE0511C4();
  v9 = sub_1BE0501D4();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46000, &qword_1BE0D62C8);
  v11 = a2 + *(result + 36);
  *v11 = v8;
  *(v11 + 8) = v9;
  return result;
}

id sub_1BD43763C@<X0>(int a1@<W0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v79 = a2;
  v3 = a1;
  v5 = a1;
  v78 = sub_1BE04F6E4();
  v77 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v76 = &v67[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1BE051584();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v67[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD460D8, &qword_1BE0D6488);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v75 = &v67[-v12];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD460E0, &qword_1BE0D6490);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v74 = &v67[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16);
  v73 = &v67[-v17];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD460E8, &qword_1BE0D6498);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v67[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v67[-v22];
  v80 = a3;
  if (v5 == 2)
  {
    v25 = v79;
    (*(v14 + 56))(&v67[-v22], 1, 1, v13, v23);
  }

  else
  {
    v70 = v14;
    v71 = v13;
    v72 = v3;
    v68 = v3 & 1;
    v26 = sub_1BE051574();
    (*(v8 + 104))(v10, *MEMORY[0x1E6981630], v7);
    v69 = sub_1BE0515E4();
    v26, v27, v28, v29, v30, v31, v32, v33;
    (*(v8 + 8))(v10, v7);
    sub_1BE051CD4();
    sub_1BE04E5E4();
    v34 = v91;
    v35 = v92;
    v36 = v93;
    v37 = v94;
    v38 = v95;
    v39 = v96;
    if (v68)
    {
      v40 = sub_1BE0511D4();
    }

    else
    {
      v40 = sub_1BE0513E4();
    }

    v41 = v40;
    KeyPath = swift_getKeyPath();
    v90 = v35;
    v89 = v37;
    v43 = sub_1BE051D84();
    *&v83 = v69;
    *(&v83 + 1) = v34;
    LOBYTE(v84) = v35;
    *(&v84 + 1) = v36;
    LOBYTE(v85) = v37;
    LOBYTE(v3) = v72;
    *(&v85 + 1) = v38;
    *&v86 = v39;
    *(&v86 + 1) = KeyPath;
    *&v87 = v41;
    *(&v87 + 1) = v43;
    v88 = v72 & 1;
    if (v72)
    {
      v44 = v76;
      sub_1BE04F6B4();
      v25 = v79;
      v45 = v78;
    }

    else
    {
      *&v81[0] = MEMORY[0x1E69E7CC0];
      sub_1BD438320();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E640, &qword_1BE0C8100);
      sub_1BD0DE4F4(&qword_1EBD3E648, &qword_1EBD3E640, &qword_1BE0C8100, MEMORY[0x1E69E6328]);
      v44 = v76;
      v45 = v78;
      sub_1BE053664();
      v25 = v79;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD460F8, &qword_1BE0D64E0);
    sub_1BD438378();
    v46 = v75;
    sub_1BE050DA4();
    (*(v77 + 8))(v44, v45);
    v81[2] = v85;
    v81[3] = v86;
    v81[4] = v87;
    v82 = v88;
    v81[0] = v83;
    v81[1] = v84;
    sub_1BD0DE53C(v81, &qword_1EBD460F8, &qword_1BE0D64E0);
    v47 = sub_1BE0501C4();
    sub_1BE04E1F4();
    v49 = v48;
    v51 = v50;
    v53 = v52;
    v55 = v54;
    v56 = v46;
    v57 = v74;
    sub_1BD0DE204(v56, v74, &qword_1EBD460D8, &qword_1BE0D6488);
    v58 = v71;
    v59 = &v57[*(v71 + 36)];
    *v59 = v47;
    *(v59 + 1) = v49;
    *(v59 + 2) = v51;
    *(v59 + 3) = v53;
    *(v59 + 4) = v55;
    v59[40] = 0;
    v60 = v57;
    v61 = v73;
    sub_1BD0DE204(v60, v73, &qword_1EBD460E0, &qword_1BE0D6490);
    sub_1BD0DE204(v61, v24, &qword_1EBD460E0, &qword_1BE0D6490);
    (*(v70 + 56))(v24, 0, 1, v58);
  }

  result = [v25 descriptor];
  v63 = v80;
  if (result)
  {
    v64 = result;
    sub_1BD0DE19C(v24, v20, &qword_1EBD460E8, &qword_1BE0D6498);
    sub_1BD0DE19C(v20, v63, &qword_1EBD460E8, &qword_1BE0D6498);
    v65 = v63 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD460F0, &qword_1BE0D64A0) + 48);
    *v65 = v64;
    *(v65 + 8) = v3 == 2;
    v66 = v64;
    sub_1BD0DE53C(v24, &qword_1EBD460E8, &qword_1BE0D6498);

    return sub_1BD0DE53C(v20, &qword_1EBD460E8, &qword_1BE0D6498);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD437DF0@<X0>(uint64_t a2@<X8>)
{
  v4 = *(v2 + 1);
  v5 = *v2;
  *a2 = sub_1BE04F504();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD460D0, &qword_1BE0D6480);
  return sub_1BD43763C(v5, v4, a2 + *(v6 + 44));
}

uint64_t sub_1BD437E54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_1BE048C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45FF0, &qword_1BE0D62B8);
  sub_1BE051694();
  result = sub_1BE051694();
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  *(a5 + 32) = v11;
  *(a5 + 40) = v12;
  *(a5 + 48) = v11;
  *(a5 + 56) = v12;
  return result;
}

unint64_t sub_1BD437F44()
{
  result = qword_1EBD41880;
  if (!qword_1EBD41880)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD41880);
  }

  return result;
}

unint64_t sub_1BD437F98()
{
  result = qword_1EBD46080;
  if (!qword_1EBD46080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46078, &qword_1BE0D6368);
    sub_1BD43801C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD46080);
  }

  return result;
}

unint64_t sub_1BD43801C()
{
  result = qword_1EBD46088;
  if (!qword_1EBD46088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD46088);
  }

  return result;
}

unint64_t sub_1BD438078()
{
  result = qword_1EBD46098;
  if (!qword_1EBD46098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46090, qword_1BE0D6370);
    sub_1BD43801C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD46098);
  }

  return result;
}

uint64_t objectdestroyTm_41(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v8[2], a2, a3, a4, a5, a6, a7, a8;
  v8[3], v9, v10, v11, v12, v13, v14, v15;
  v8[5], v16, v17, v18, v19, v20, v21, v22;
  v8[6], v23, v24, v25, v26, v27, v28, v29;
  v8[7], v30, v31, v32, v33, v34, v35, v36;
  v8[9], v37, v38, v39, v40, v41, v42, v43;

  return swift_deallocObject();
}

unint64_t sub_1BD438220()
{
  result = qword_1EBD460B8;
  if (!qword_1EBD460B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46000, &qword_1BE0D62C8);
    sub_1BD0DE4F4(&qword_1EBD460C0, &qword_1EBD460C8, &unk_1BE0D6420, MEMORY[0x1E6981870]);
    sub_1BD0DE4F4(&qword_1EBD36710, &qword_1EBD491B0, &unk_1BE0B7C80, MEMORY[0x1E6980468]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD460B8);
  }

  return result;
}

unint64_t sub_1BD438320()
{
  result = qword_1EBD3E638;
  if (!qword_1EBD3E638)
  {
    sub_1BE04F6E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E638);
  }

  return result;
}

unint64_t sub_1BD438378()
{
  result = qword_1EBD46100;
  if (!qword_1EBD46100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD460F8, &qword_1BE0D64E0);
    sub_1BD1A3358();
    sub_1BD0DE4F4(&unk_1EBD36780, &unk_1EBD51F60, &qword_1BE0C3580, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD46100);
  }

  return result;
}

void sub_1BD43844C(double a1, double a2, double a3, double a4)
{
  v8 = a3;
  if (a3 < a2)
  {
    v9 = log10(a2);
    v10 = __exp10(floor(v9));
    v8 = v10 * ceil(a2 / v10);
    if ((v8 - a1) / v8 < a4)
    {
      v8 = fmax(v10, 100.0) + v8;
    }
  }

  v11 = -a3;
  if (-a3 > a1)
  {
    v12 = fabs(a1);
    v13 = log10(v12);
    v14 = __exp10(floor(v13));
    v15 = v14 * ceil(v12 / v14);
    v11 = fmax(v14, 100.0) + v15;
    if ((v15 + a2) / v15 >= a4)
    {
      v11 = v15;
    }

    if (a1 < 0.0)
    {
      v11 = -v11;
      if (v8 <= 0.0)
      {
        goto LABEL_27;
      }

      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (a1 < 0.0)
  {
LABEL_11:
    if (v8 <= 0.0)
    {
      goto LABEL_27;
    }

LABEL_12:
    if (v11 < 0.0)
    {
      v16 = fabs(v11);
      if (v16 <= v8 / 3.0)
      {
        v11 = v8 / -3.0;
      }

      else if (v8 <= v16 / 3.0)
      {
        v8 = v16 / 3.0;
      }

      else if (v16 >= v8)
      {
        v8 = -v11;
      }

      else
      {
        v11 = -v8;
      }
    }

    goto LABEL_27;
  }

  v11 = 0.0;
  if (a3 >= a1)
  {
    goto LABEL_27;
  }

  v17 = log10(a2 - a1);
  v18 = fmax(__exp10(floor(v17)), 10.0);
  v8 = v18 * ceil(a2 / v18);
  v11 = v18 * ceil(a1 / v18) - v18;
  if (v11 < 0.0)
  {
    v11 = 0.0;
    goto LABEL_27;
  }

  if (v11 > a1)
  {
    v11 = 0.0;
  }

  if (v8 > 0.0)
  {
    goto LABEL_12;
  }

LABEL_27:
  if (v11 > v8)
  {
    __break(1u);
  }
}

char *sub_1BD43860C(uint64_t a1, double a2, double a3)
{
  sub_1BD43844C(a2, a3, 10.0, 0.1);
  v13 = v12;
  v15 = v14;
  v16 = v14 - v12;
  if (v16 > 0.0)
  {
    v15 = v16 / a1;
  }

  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = sub_1BD1D8F84(0, 1, 1, MEMORY[0x1E69E7CC0], v7, v8, v9, v10);
    v4 = *(v6 + 2);
    v11 = *(v6 + 3);
    v3 = v4 + 1;
    if (v4 < v11 >> 1)
    {
      goto LABEL_5;
    }
  }

  v6 = sub_1BD1D8F84((v11 > 1), v3, 1, v6, v7, v8, v9, v10);
LABEL_5:
  *(v6 + 2) = v3;
  *&v6[8 * v4 + 32] = v13 + v15 * 0.0;
  if (a1)
  {
    v17 = v4 + 5;
    v18 = 1;
    do
    {
      v19 = *(v6 + 3);
      if (v17 - 4 >= v19 >> 1)
      {
        v6 = sub_1BD1D8F84((v19 > 1), v17 - 3, 1, v6, v7, v8, v9, v10);
      }

      *(v6 + 2) = v17 - 3;
      *&v6[8 * v17++] = v13 + v15 * v18++;
      --a1;
    }

    while (a1);
  }

  return v6;
}

BOOL sub_1BD438738(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  do
  {
    v4 = v2;
    if (v3 == v2)
    {
      break;
    }

    sub_1BE04AFE4();
    ++v2;
    sub_1BD441624(&unk_1EBD36A30, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
  }

  while ((sub_1BE052334() & 1) == 0);
  return v3 != v4;
}

uint64_t sub_1BD438844@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v13 = v1;
  sub_1BD441624(&qword_1EBD461C8, _s9ViewModelCMa_1, &unk_1BE0D66B4);
  sub_1BE04B594();
  KeyPath, v4, v5, v6, v7, v8, v9, v10;
  v11 = OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionDetailView9ViewModel__transactionDetails;
  swift_beginAccess();
  return sub_1BD0DE19C(v13 + v11, a1, &qword_1EBD461C0, &qword_1BE0D66D0);
}

uint64_t sub_1BD43891C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionDetailView9ViewModel__transactionDetails;
  swift_beginAccess();
  sub_1BD442090(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_1BD438988()
{
  KeyPath = swift_getKeyPath();
  sub_1BD441624(&qword_1EBD461C8, _s9ViewModelCMa_1, &unk_1BE0D66B4);
  sub_1BE04B594();
  KeyPath, v1, v2, v3, v4, v5, v6, v7;
  return sub_1BE048964();
}

void sub_1BD438A34(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionDetailView9ViewModel__offersViewModel);
  *(a1 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionDetailView9ViewModel__offersViewModel) = a2;
  sub_1BE048964();
  v2, v3, v4, v5, v6, v7, v8, v9;
}

uint64_t sub_1BD438A78()
{
  KeyPath = swift_getKeyPath();
  sub_1BD441624(&qword_1EBD461C8, _s9ViewModelCMa_1, &unk_1BE0D66B4);
  sub_1BE04B594();
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  v9 = *(v0 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionDetailView9ViewModel__onTransactionDeleted);
  sub_1BD0D44B8(v9, *(v0 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionDetailView9ViewModel__onTransactionDeleted + 8));
  return v9;
}

uint64_t sub_1BD438B38@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD441624(&qword_1EBD461C8, _s9ViewModelCMa_1, &unk_1BE0D66B4);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v12 = *(v3 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionDetailView9ViewModel__onTransactionDeleted);
  v13 = *(v3 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionDetailView9ViewModel__onTransactionDeleted + 8);
  if (v12)
  {
    v14 = swift_allocObject();
    *(v14 + 16) = v12;
    *(v14 + 24) = v13;
    v15 = sub_1BD1839E8;
  }

  else
  {
    v15 = 0;
    v14 = 0;
  }

  *a2 = v15;
  a2[1] = v14;
  return sub_1BD0D44B8(v12, v13);
}

void sub_1BD438C30(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1)
  {
    v4 = swift_allocObject();
    v4[2] = v2;
    v4[3] = v3;
    v5 = sub_1BD1839E0;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1BD0D44B8(v2, v3);
  sub_1BD441624(&qword_1EBD461C8, _s9ViewModelCMa_1, &unk_1BE0D66B4);
  sub_1BE04B584();
  sub_1BD0D4744(v5, v4, v7, v8, v9, v10, v11, v12);
  KeyPath, v13, v14, v15, v16, v17, v18, v19;
}

uint64_t sub_1BD438D8C()
{
  KeyPath = swift_getKeyPath();
  sub_1BD441624(&qword_1EBD461C8, _s9ViewModelCMa_1, &unk_1BE0D66B4);
  sub_1BE04B594();
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  return *(v0 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionDetailView9ViewModel__actualExcludedFromSpendingSummaryValue);
}

void sub_1BD438E34(int a1)
{
  v2 = *(v1 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionDetailView9ViewModel__actualExcludedFromSpendingSummaryValue);
  if (v2 != 2)
  {
    if (a1 != 2 && ((v2 ^ a1) & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1BD441624(&qword_1EBD461C8, _s9ViewModelCMa_1, &unk_1BE0D66B4);
    sub_1BE04B584();
    KeyPath, v4, v5, v6, v7, v8, v9, v10;
    return;
  }

  if (a1 != 2)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionDetailView9ViewModel__actualExcludedFromSpendingSummaryValue) = a1;
}

uint64_t sub_1BD438F70(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v36 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46160, &qword_1BE0FBA00);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v37 = &v34 - v6;
  v7 = type metadata accessor for TransactionContext(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD461C0, &qword_1BE0D66D0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v34 - v12;
  v14 = OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionDetailView9ViewModel__transactionDetails;
  v15 = _s23TransactionDetailsModelVMa(0);
  v35 = *(*(v15 - 8) + 56);
  v35(v3 + v14, 1, 1, v15);
  *(v3 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionDetailView9ViewModel__offersViewModel) = 0;
  v16 = (v3 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionDetailView9ViewModel__onTransactionDeleted);
  *v16 = 0;
  v16[1] = 0;
  *(v3 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionDetailView9ViewModel__actualExcludedFromSpendingSummaryValue) = 2;
  sub_1BE04B5C4();
  v17 = OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionDetailView9ViewModel_transactionContext;
  sub_1BD442100(a1, v3 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionDetailView9ViewModel_transactionContext);
  (*(v8 + 56))(v3 + v17, 0, 1, v7);
  v18 = OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionDetailView9ViewModel_historyToken;
  v19 = sub_1BE048F54();
  v20 = *(v19 - 8);
  v21 = v36;
  (*(v20 + 16))(v3 + v18, v36, v19);
  (*(v20 + 56))(v3 + v18, 0, 1, v19);
  v22 = a1;
  sub_1BD442100(a1, v10);
  v23 = sub_1BE049D24();
  v24 = v37;
  (*(*(v23 - 8) + 56))(v37, 1, 1, v23);
  sub_1BD439370(v10, v24, v13);
  v35(v13, 0, 1, v15);
  KeyPath = swift_getKeyPath();
  v38 = v3;
  v39 = v13;
  v40 = v3;
  sub_1BD441624(&qword_1EBD461C8, _s9ViewModelCMa_1, &unk_1BE0D66B4);
  sub_1BE04B584();
  KeyPath, v26, v27, v28, v29, v30, v31, v32;
  (*(v20 + 8))(v21, v19);
  sub_1BD442180(v22);
  sub_1BD0DE53C(v13, &qword_1EBD461C0, &qword_1BE0D66D0);
  return v3;
}

void sub_1BD439370(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v105 = a2;
  v5 = sub_1BE049B04();
  v103 = *(v5 - 8);
  v104 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v100 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_1BE049904();
  v97 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v95 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46160, &qword_1BE0FBA00);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v107 = &v84 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F7C0, &unk_1BE0D6570);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v106 = &v84 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BCA0, &qword_1BE0BD3E0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v114 = &v84 - v13;
  v14 = sub_1BE049B44();
  v101 = *(v14 - 8);
  v102 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v117 = &v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_1BE04A974();
  v96 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v116 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_1BE0493F4();
  v93 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v115 = &v84 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD461D0, &unk_1BE0D6700);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v113 = &v84 - v19;
  v20 = sub_1BE04AB24();
  v111 = *(v20 - 8);
  v112 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v84 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1BE04AB54();
  v109 = *(v23 - 8);
  v110 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v84 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_1BE04AF64();
  v26 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v28 = &v84 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1BE049A94();
  v30 = MEMORY[0x1EEE9AC00](v29);
  v32 = &v84 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = v33;
  v34 = *(v33 + 16);
  v90 = v35;
  v34(v32, a1, v30);
  sub_1BE049974();
  sub_1BE04AB14();
  v36 = type metadata accessor for TransactionContext(0);
  v118 = a1;
  if (sub_1BE049164())
  {
    sub_1BE04AB14();
  }

  else
  {
    sub_1BE04AB04();
  }

  v92 = sub_1BE04AF24();
  v91 = v37;
  (*(v111 + 8))(v22, v112);
  (v109[1])(v25, v110);
  (*(v26 + 8))(v28, v108);
  v108 = v118 + *(v36 + 28);
  sub_1BD736290(v108);
  v39 = v38;
  v40 = sub_1BE049174();
  v42 = v41;
  v43 = sub_1BE049574();
  v110 = v44;
  v111 = v43;
  v45 = v113;
  sub_1BE049A54();
  v46 = sub_1BE04A054();
  v47 = *(v46 - 8);
  v48 = (*(v47 + 48))(v45, 1, v46);
  v112 = v42;
  if (v48 == 1)
  {
    sub_1BD0DE53C(v45, &qword_1EBD461D0, &unk_1BE0D6700);
    v109 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v109 = sub_1BD44166C(v40, v42);
    (*(v47 + 8))(v45, v46);
  }

  v113 = v40;
  sub_1BE0499A4();
  sub_1BD7271C4();
  sub_1BE0499E4();
  v49 = sub_1BE052404();
  v50 = PKMerchantFormattedDisplayName();

  if (v50)
  {
    v39, v51, v52, v53, v54, v55, v56, v57;
    v88 = sub_1BE052434();
    v87 = v58;

    v86 = sub_1BE049964();
    sub_1BE0499F4();
    v59 = _s23TransactionDetailsModelVMa(0);
    sub_1BE049A14();
    v60 = v106;
    sub_1BD0DE19C(v108, v106, &qword_1EBD3F7C0, &unk_1BE0D6570);
    v61 = v105;
    v62 = v107;
    sub_1BD0DE19C(v105, v107, &qword_1EBD46160, &qword_1BE0FBA00);
    v63 = v95;
    sub_1BE049A34();
    v108 = sub_1BD441A80();
    v85 = v64;
    (*(v97 + 8))(v63, v99);
    v65 = v100;
    sub_1BE0499D4();
    sub_1BE049AB4();
    (*(v103 + 8))(v65, v104);
    v66 = v118;
    LODWORD(v104) = sub_1BD736680();
    sub_1BD0DE53C(v61, &qword_1EBD46160, &qword_1BE0FBA00);
    sub_1BD442180(v66);
    (*(v89 + 8))(v32, v90);
    v68 = v59[11];
    v67 = v59[12];
    v69 = v93;
    v70 = v94;
    (*(v93 + 56))(&a3[v67], 1, 1, v94);
    v71 = v59[15];
    v72 = sub_1BE0491B4();
    (*(*(v72 - 8) + 56))(&a3[v71], 1, 1, v72);
    v73 = v59[19];
    v74 = sub_1BE049D24();
    (*(*(v74 - 8) + 56))(&a3[v73], 1, 1, v74);
    v75 = v110;
    *a3 = v111;
    *(a3 + 1) = v75;
    *(a3 + 2) = v109;
    (*(v69 + 32))(&a3[v59[6]], v115, v70);
    (*(v96 + 32))(&a3[v59[7]], v116, v98);
    (*(v101 + 32))(&a3[v59[8]], v117, v102);
    v76 = &a3[v59[10]];
    v77 = v91;
    *v76 = v92;
    *(v76 + 1) = v77;
    v78 = &a3[v59[9]];
    v79 = v87;
    *v78 = v88;
    *(v78 + 1) = v79;
    *&a3[v68] = v86;
    sub_1BD2C7C4C(v114, &a3[v67], &qword_1EBD3BCA0, &qword_1BE0BD3E0);
    v80 = &a3[v59[14]];
    v81 = v112;
    *v80 = v113;
    *(v80 + 1) = v81;
    sub_1BD2C7C4C(v60, &a3[v71], &qword_1EBD3F7C0, &unk_1BE0D6570);
    sub_1BD2C7C4C(v62, &a3[v73], &qword_1EBD46160, &qword_1BE0FBA00);
    v82 = &a3[v59[16]];
    v83 = v85;
    *v82 = v108;
    *(v82 + 1) = v83;
    a3[v59[17]] = v104 & 1;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BD439EEC()
{
  v1[4] = v0;
  v2 = sub_1BE04D214();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F790, &qword_1BE0D6710);
  v1[8] = swift_task_alloc();
  v3 = type metadata accessor for TransactionContext(0);
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  sub_1BE0528A4();
  v1[13] = sub_1BE052894();
  v5 = sub_1BE052844();
  v1[14] = v5;
  v1[15] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1BD43A080, v5, v4);
}

uint64_t sub_1BD43A080()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = *(v0 + 64);
  sub_1BD0DE19C(*(v0 + 32) + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionDetailView9ViewModel_transactionContext, v3, &qword_1EBD3F790, &qword_1BE0D6710);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v11 = *(v0 + 64);
    *(v0 + 104), v4, v5, v6, v7, v8, v9, v10;
    sub_1BD0DE53C(v11, &qword_1EBD3F790, &qword_1BE0D6710);
    sub_1BE04D114();
    v12 = sub_1BE04D204();
    v13 = sub_1BE052C54();
    v14 = os_log_type_enabled(v12, v13);
    v16 = *(v0 + 48);
    v15 = *(v0 + 56);
    v17 = *(v0 + 40);
    if (v14)
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1BD026000, v12, v13, "Missing properties, could not load transactions", v18, 2u);
      MEMORY[0x1BFB45F20](v18, -1, -1);
    }

    (*(v16 + 8))(v15, v17);

    v19 = *(v0 + 8);

    return v19();
  }

  else
  {
    v21 = *(v0 + 88);
    v22 = *(v0 + 96);
    v23 = *(v0 + 32);
    sub_1BD4423F4(*(v0 + 64), v22, type metadata accessor for TransactionContext);
    sub_1BD442100(v22, v21);
    type metadata accessor for FinanceKitTransactionOffersView.ViewModel(0);
    swift_allocObject();
    v24 = sub_1BD5C1270(v21);
    KeyPath = swift_getKeyPath();
    v26 = swift_task_alloc();
    *(v26 + 16) = v23;
    *(v26 + 24) = v24;
    *(v0 + 16) = v23;
    sub_1BD441624(&qword_1EBD461C8, _s9ViewModelCMa_1, &unk_1BE0D66B4);
    sub_1BE04B584();
    v24, v27, v28, v29, v30, v31, v32, v33;
    KeyPath, v34, v35, v36, v37, v38, v39, v40;

    v41 = swift_getKeyPath();
    *(v0 + 24) = v23;
    sub_1BE04B594();
    v41, v42, v43, v44, v45, v46, v47, v48;
    v49 = *(v23 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionDetailView9ViewModel__offersViewModel);
    *(v0 + 128) = v49;
    if (v49)
    {
      sub_1BE048964();
      v50 = swift_task_alloc();
      *(v0 + 136) = v50;
      *v50 = v0;
      v50[1] = sub_1BD43A484;

      return sub_1BD5C136C();
    }

    else
    {
      v51 = swift_task_alloc();
      *(v0 + 152) = v51;
      *v51 = v0;
      v51[1] = sub_1BD43A5FC;

      return sub_1BD43A918();
    }
  }
}

uint64_t sub_1BD43A484()
{
  v2 = *v1;
  *(v2 + 144) = v0;

  if (v0)
  {
    *(v2 + 128), v3, v4, v5, v6, v7, v8, v9;
    v10 = *(v2 + 112);
    v11 = *(v2 + 120);

    return MEMORY[0x1EEE6DFA0](sub_1BD43A7D0, v10, v11);
  }

  else
  {
    *(v2 + 128), v3, v4, v5, v6, v7, v8, v9;
    v12 = swift_task_alloc();
    *(v2 + 152) = v12;
    *v12 = v2;
    v12[1] = sub_1BD43A5FC;

    return sub_1BD43A918();
  }
}

uint64_t sub_1BD43A5FC()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  v3 = *(v2 + 120);
  v4 = *(v2 + 112);
  if (v0)
  {
    v5 = sub_1BD43A874;
  }

  else
  {
    v5 = sub_1BD43A738;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1BD43A738(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 96);
  *(v8 + 104), a2, a3, a4, a5, a6, a7, a8;
  sub_1BD442180(v9);

  v10 = *(v8 + 8);

  return v10();
}

uint64_t sub_1BD43A7D0(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 96);
  *(v8 + 104), a2, a3, a4, a5, a6, a7, a8;
  sub_1BD442180(v9);

  v10 = *(v8 + 8);

  return v10();
}

uint64_t sub_1BD43A874(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 96);
  *(v8 + 104), a2, a3, a4, a5, a6, a7, a8;
  sub_1BD442180(v9);

  v10 = *(v8 + 8);

  return v10();
}

uint64_t sub_1BD43A918()
{
  v1[5] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD461E0, &qword_1BE0D6728);
  v1[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46160, &qword_1BE0FBA00);
  v1[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F7C0, &unk_1BE0D6570);
  v1[8] = swift_task_alloc();
  v2 = sub_1BE049184();
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();
  v3 = sub_1BE0495A4();
  v1[12] = v3;
  v1[13] = *(v3 - 8);
  v1[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD461C0, &qword_1BE0D66D0);
  v1[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD461E8, &qword_1BE0D6730);
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v4 = sub_1BE049A94();
  v1[20] = v4;
  v1[21] = *(v4 - 8);
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F7D8, &qword_1BE0F4280);
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v5 = sub_1BE04AFE4();
  v1[26] = v5;
  v1[27] = *(v5 - 8);
  v1[28] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F7B0, &unk_1BE0D6750);
  v1[29] = v6;
  v1[30] = *(v6 - 8);
  v1[31] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F7E0, &unk_1BE0E8DC0);
  v1[32] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39980, &qword_1BE0BF3C0);
  v1[33] = swift_task_alloc();
  v7 = sub_1BE049E74();
  v1[34] = v7;
  v1[35] = *(v7 - 8);
  v1[36] = swift_task_alloc();
  v8 = sub_1BE04D214();
  v1[37] = v8;
  v1[38] = *(v8 - 8);
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F790, &qword_1BE0D6710);
  v1[43] = swift_task_alloc();
  v9 = type metadata accessor for TransactionContext(0);
  v1[44] = v9;
  v1[45] = *(v9 - 8);
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v1[48] = sub_1BE0528A4();
  v1[49] = sub_1BE052894();
  v11 = sub_1BE052844();
  v1[50] = v11;
  v1[51] = v10;

  return MEMORY[0x1EEE6DFA0](sub_1BD43AF04, v11, v10);
}

uint64_t sub_1BD43AF04()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 360);
  v3 = *(v0 + 344);
  sub_1BD0DE19C(*(v0 + 40) + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionDetailView9ViewModel_transactionContext, v3, &qword_1EBD3F790, &qword_1BE0D6710);
  v4 = (*(v2 + 48))(v3, 1, v1);
  v12 = *(v0 + 344);
  if (v4 == 1)
  {
    *(v0 + 392), v5, v6, v7, v8, v9, v10, v11;
    sub_1BD0DE53C(v12, &qword_1EBD3F790, &qword_1BE0D6710);
    sub_1BE04D114();
    v13 = sub_1BE04D204();
    v14 = sub_1BE052C54();
    v15 = os_log_type_enabled(v13, v14);
    v17 = *(v0 + 304);
    v16 = *(v0 + 312);
    v18 = *(v0 + 296);
    if (v15)
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1BD026000, v13, v14, "Missing properties, could not observe transactions", v19, 2u);
      MEMORY[0x1BFB45F20](v19, -1, -1);
    }

    (*(v17 + 8))(v16, v18);

    v20 = *(v0 + 8);

    return v20();
  }

  else
  {
    sub_1BD4423F4(*(v0 + 344), *(v0 + 376), type metadata accessor for TransactionContext);
    v22 = swift_task_alloc();
    *(v0 + 416) = v22;
    *v22 = v0;
    v22[1] = sub_1BD43B264;
    v23 = *(v0 + 376);

    return sub_1BD43E308(v23);
  }
}

uint64_t sub_1BD43B264()
{
  v1 = *v0;

  v2 = *(v1 + 408);
  v3 = *(v1 + 400);

  return MEMORY[0x1EEE6DFA0](sub_1BD43B384, v3, v2);
}

uint64_t sub_1BD43B384()
{
  sub_1BD43D5E0();
  sub_1BE04D114();
  v1 = sub_1BE04D204();
  v2 = sub_1BE052C54();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1BD026000, v1, v2, "Observing transactions", v3, 2u);
    MEMORY[0x1BFB45F20](v3, -1, -1);
  }

  v4 = *(v0 + 352);
  v5 = *(v0 + 336);
  v6 = *(v0 + 296);
  v7 = *(v0 + 304);
  v8 = *(v0 + 264);
  v9 = *(v0 + 208);
  v10 = *(v0 + 216);

  v11 = *(v7 + 8);
  *(v0 + 424) = v11;
  v11(v5, v6);
  sub_1BE0490F4();
  v12 = sub_1BE0490B4();
  *(v0 + 512) = *(v4 + 20);
  sub_1BE049584();
  (*(v10 + 56))(v8, 0, 1, v9);
  v13 = sub_1BE048FD4();
  sub_1BD0DE53C(*(v0 + 264), &qword_1EBD39980, &qword_1BE0BF3C0);
  v12, v14, v15, v16, v17, v18, v19, v20;
  sub_1BE049E64();
  v13, v21, v22, v23, v24, v25, v26, v27;
  v28 = OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionDetailView9ViewModel__onTransactionDeleted;
  *(v0 + 432) = OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionDetailView9ViewModel___observationRegistrar;
  *(v0 + 440) = v28;
  *(v0 + 448) = sub_1BE052894();
  v29 = sub_1BD441624(&qword_1EBD3F7E8, MEMORY[0x1E6967C80], MEMORY[0x1E6967C88]);
  v30 = swift_task_alloc();
  *(v0 + 456) = v30;
  *v30 = v0;
  v30[1] = sub_1BD43B7B4;
  v31 = *(v0 + 272);
  v32 = *(v0 + 256);

  return MEMORY[0x1EEE6D8C8](v32, v31, v29);
}

uint64_t sub_1BD43B7B4()
{
  v2 = *v1;
  *(*v1 + 464) = v0;

  v3 = *(v2 + 448);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_1BE052844();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_1BD43C0A0;
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_1BE052844();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_1BD43B94C;
  }

  return MEMORY[0x1EEE6DFA0](v7, v4, v6);
}

uint64_t sub_1BD43B94C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 448), a2, a3, a4, a5, a6, a7, a8;
  v9 = *(v8 + 400);
  v10 = *(v8 + 408);

  return MEMORY[0x1EEE6DFA0](sub_1BD43B9B0, v9, v10);
}

uint64_t sub_1BD43B9B0()
{
  v1 = v0[32];
  v2 = v0[29];
  v3 = v0[30];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[49];
    v5 = v0[47];
    (*(v0[35] + 8))(v0[36], v0[34]);
    v4, v6, v7, v8, v9, v10, v11, v12;
    sub_1BD442180(v5);

    v13 = v0[1];

    return v13();
  }

  else
  {
    v16 = v0[27];
    v15 = v0[28];
    v17 = v0[26];
    (*(v3 + 32))(v0[31], v1, v2);
    v18 = sub_1BE0490C4();
    sub_1BE049A14();
    v19 = sub_1BD438738(v15, v18);
    v18, v20, v21, v22, v23, v24, v25, v26;
    (*(v16 + 8))(v15, v17);
    if (v19)
    {
      sub_1BE04D114();
      v27 = sub_1BE04D204();
      v28 = sub_1BE052C54();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_1BD026000, v27, v28, "Transaction deleted", v29, 2u);
        MEMORY[0x1BFB45F20](v29, -1, -1);
      }

      v30 = v0[55];
      v31 = v0[53];
      v32 = v0[41];
      v33 = v0[37];
      v34 = v0[5];

      v31(v32, v33);
      KeyPath = swift_getKeyPath();
      v0[4] = v34;
      sub_1BD441624(&qword_1EBD461C8, _s9ViewModelCMa_1, &unk_1BE0D66B4);
      sub_1BE04B594();
      KeyPath, v36, v37, v38, v39, v40, v41, v42;
      v43 = *(v34 + v30);
      if (v43)
      {
        v44 = *(v0[5] + v0[55] + 8);
        v45 = sub_1BE048964();
        v43(v45);
        sub_1BD0D4744(v43, v44, v46, v47, v48, v49, v50, v51);
      }
    }

    v52 = v0[47];
    v54 = v0[24];
    v53 = v0[25];
    v55 = v0[20];
    v56 = v0[21];
    v57 = sub_1BE0490D4();
    *(swift_task_alloc() + 16) = v52;
    sub_1BD1CED84(sub_1BD44245C, v57, v53);
    v57, v58, v59, v60, v61, v62, v63, v64;

    sub_1BD0DE19C(v53, v54, &qword_1EBD3F7D8, &qword_1BE0F4280);
    if ((*(v56 + 48))(v54, 1, v55) == 1)
    {
      v66 = v0[30];
      v65 = v0[31];
      v67 = v0[29];
      v68 = v0[24];
      sub_1BD0DE53C(v0[25], &qword_1EBD3F7D8, &qword_1BE0F4280);
      (*(v66 + 8))(v65, v67);
      sub_1BD0DE53C(v68, &qword_1EBD3F7D8, &qword_1BE0F4280);
      v0[56] = sub_1BE052894();
      v69 = sub_1BD441624(&qword_1EBD3F7E8, MEMORY[0x1E6967C80], MEMORY[0x1E6967C88]);
      v70 = swift_task_alloc();
      v0[57] = v70;
      *v70 = v0;
      v70[1] = sub_1BD43B7B4;
      v71 = v0[34];
      v72 = v0[32];

      return MEMORY[0x1EEE6D8C8](v72, v71, v69);
    }

    else
    {
      v73 = v0[23];
      v74 = v0[24];
      v75 = v0[20];
      v76 = v0[21];
      v77 = *(v76 + 32);
      v0[59] = v77;
      v0[60] = (v76 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
      v77(v73, v74, v75);
      sub_1BE04D114();
      v78 = sub_1BE04D204();
      v79 = sub_1BE052C54();
      if (os_log_type_enabled(v78, v79))
      {
        v80 = swift_slowAlloc();
        *v80 = 0;
        _os_log_impl(&dword_1BD026000, v78, v79, "Transaction updated, updating view", v80, 2u);
        MEMORY[0x1BFB45F20](v80, -1, -1);
      }

      v81 = v0[53];
      v82 = v0[40];
      v83 = v0[37];
      v84 = v0[19];

      v81(v82, v83);
      v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD461F0, &qword_1BE0D6738);
      v0[61] = v85;
      v86 = *(v85 + 48);
      v87 = *(v85 + 64);
      v88 = swift_task_alloc();
      v0[62] = v88;
      *v88 = v0;
      v88[1] = sub_1BD43C324;
      v89 = v0[47];
      v90 = v0[19];

      return sub_1BD43ED44(v90, v84 + v86, v84 + v87, v89);
    }
  }
}

uint64_t sub_1BD43C0A0()
{
  v1 = v0[56];
  v0[2] = v0[58];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0, &qword_1BE0BFD10);
  swift_willThrowTypedImpl();
  v1, v2, v3, v4, v5, v6, v7, v8;
  v9 = v0[50];
  v10 = v0[51];

  return MEMORY[0x1EEE6DFA0](sub_1BD43C13C, v9, v10);
}

uint64_t sub_1BD43C13C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v10 = *(v8 + 280);
  v9 = *(v8 + 288);
  v11 = *(v8 + 272);
  *(v8 + 392), a2, a3, a4, a5, a6, a7, a8;
  (*(v10 + 8))(v9, v11);
  sub_1BD442180(*(v8 + 376));

  v12 = *(v8 + 8);

  return v12();
}

uint64_t sub_1BD43C324()
{
  v2 = *v1;
  *(*v1 + 504) = v0;

  if (v0)
  {

    v3 = *(v2 + 400);
    v4 = *(v2 + 408);
    v5 = sub_1BD43CC80;
  }

  else
  {
    v3 = *(v2 + 400);
    v4 = *(v2 + 408);
    v5 = sub_1BD43C44C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1BD43C44C()
{
  v1 = *(v0 + 488);
  v2 = *(v0 + 376);
  v84 = *(v0 + 352);
  v3 = *(v0 + 176);
  v4 = *(v0 + 160);
  v5 = *(v0 + 168);
  v6 = *(v0 + 152);
  v86 = *(v0 + 144);
  v7 = *(v0 + 104);
  v72 = *(v0 + 184);
  v74 = *(v0 + 96);
  v8 = *(v0 + 80);
  v80 = *(v0 + 88);
  v82 = *(v0 + 512);
  v76 = *(v0 + 112);
  v78 = *(v0 + 72);
  v9 = *(v1 - 8);
  (*(v9 + 56))(v6, 0, 1, v1);
  (*(v5 + 16))(v3, v72, v4);
  (*(v7 + 16))(v76, v2 + v82, v74);
  (*(v8 + 16))(v80, v2 + *(v84 + 24), v78);
  sub_1BD0DE19C(v6, v86, &qword_1EBD461E8, &qword_1BE0D6730);
  v85 = *(v9 + 48);
  if (v85(v86, 1, v1) == 1)
  {
    v10 = *(v0 + 64);
    sub_1BD0DE53C(*(v0 + 144), &qword_1EBD461E8, &qword_1BE0D6730);
    v11 = sub_1BE0491B4();
    (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  }

  else
  {
    v12 = *(v0 + 488);
    v13 = *(v0 + 144);
    v14 = *(v12 + 48);
    v15 = *(v12 + 64);
    sub_1BD0DE204(v13, *(v0 + 64), &qword_1EBD3F7C0, &unk_1BE0D6570);
    sub_1BD0DE53C(v13 + v15, &qword_1EBD46160, &qword_1BE0FBA00);
    sub_1BD0DE53C(v13 + v14, &qword_1EBD461E0, &qword_1BE0D6728);
  }

  v71 = *(v0 + 472);
  v16 = *(v0 + 368);
  v17 = *(v0 + 352);
  v18 = *(v0 + 176);
  v19 = *(v0 + 160);
  v81 = *(v0 + 152);
  v83 = *(v0 + 488);
  v20 = *(v0 + 104);
  v21 = *(v0 + 112);
  v22 = *(v0 + 96);
  v23 = *(v0 + 80);
  v73 = *(v0 + 72);
  v75 = *(v0 + 88);
  v77 = *(v0 + 64);
  v79 = *(v0 + 136);
  v24 = v17[8];
  v25 = sub_1BE049E04();
  (*(*(v25 - 8) + 56))(v16 + v24, 1, 1, v25);
  v71(v16, v18, v19);
  (*(v20 + 32))(v16 + v17[5], v21, v22);
  (*(v23 + 32))(v16 + v17[6], v75, v73);
  sub_1BD0DE204(v77, v16 + v17[7], &qword_1EBD3F7C0, &unk_1BE0D6570);
  sub_1BD0DE19C(v81, v79, &qword_1EBD461E8, &qword_1BE0D6730);
  if (v85(v79, 1, v83) == 1)
  {
    v26 = *(v0 + 56);
    sub_1BD0DE53C(*(v0 + 136), &qword_1EBD461E8, &qword_1BE0D6730);
    v27 = sub_1BE049D24();
    (*(*(v27 - 8) + 56))(v26, 1, 1, v27);
  }

  else
  {
    v28 = *(v0 + 488);
    v29 = *(v0 + 136);
    v30 = *(v28 + 48);
    sub_1BD0DE204(v29 + *(v28 + 64), *(v0 + 56), &qword_1EBD46160, &qword_1BE0FBA00);
    sub_1BD0DE53C(v29 + v30, &qword_1EBD461E0, &qword_1BE0D6728);
    sub_1BD0DE53C(v29, &qword_1EBD3F7C0, &unk_1BE0D6570);
  }

  v31 = *(v0 + 120);
  v32 = *(v0 + 40);
  sub_1BD439370(*(v0 + 368), *(v0 + 56), v31);
  v33 = _s23TransactionDetailsModelVMa(0);
  (*(*(v33 - 8) + 56))(v31, 0, 1, v33);
  KeyPath = swift_getKeyPath();
  v35 = swift_task_alloc();
  *(v35 + 16) = v32;
  *(v35 + 24) = v31;
  *(v0 + 24) = v32;
  sub_1BD441624(&qword_1EBD461C8, _s9ViewModelCMa_1, &unk_1BE0D66B4);
  sub_1BE04B584();
  KeyPath, v36, v37, v38, v39, v40, v41, v42;

  sub_1BD0DE53C(v31, &qword_1EBD461C0, &qword_1BE0D66D0);
  if (sub_1BD43FB1C(v43))
  {
    v44 = *(v0 + 488);
    v45 = *(v0 + 128);
    sub_1BD0DE19C(*(v0 + 152), v45, &qword_1EBD461E8, &qword_1BE0D6730);
    if (v85(v45, 1, v44) == 1)
    {
      v46 = *(v0 + 128);
      v47 = &qword_1EBD461E8;
      v48 = &qword_1BE0D6730;
    }

    else
    {
      v49 = *(v0 + 488);
      v50 = *(v0 + 128);
      v51 = *(v0 + 48);
      v52 = *(v49 + 64);
      sub_1BD0DE204(v50 + *(v49 + 48), v51, &qword_1EBD461E0, &qword_1BE0D6728);
      v53 = sub_1BE049C64();
      v54 = *(v53 - 8);
      v55 = (*(v54 + 48))(v51, 1, v53);
      v56 = *(v0 + 128);
      v57 = *(v0 + 48);
      if (v55 != 1)
      {
        v58 = sub_1BE049C54();
        (*(v54 + 8))(v57, v53);
        sub_1BD0DE53C(v50 + v52, &qword_1EBD46160, &qword_1BE0FBA00);
        sub_1BD0DE53C(v56, &qword_1EBD3F7C0, &unk_1BE0D6570);
        goto LABEL_14;
      }

      sub_1BD0DE53C(v50 + v52, &qword_1EBD46160, &qword_1BE0FBA00);
      sub_1BD0DE53C(v56, &qword_1EBD3F7C0, &unk_1BE0D6570);
      v47 = &qword_1EBD461E0;
      v48 = &qword_1BE0D6728;
      v46 = v57;
    }

    sub_1BD0DE53C(v46, v47, v48);
    v58 = 0;
LABEL_14:
    sub_1BD438E34(v58 & 1);
  }

  v60 = *(v0 + 240);
  v59 = *(v0 + 248);
  v61 = *(v0 + 232);
  v62 = *(v0 + 200);
  v63 = *(v0 + 184);
  v64 = *(v0 + 160);
  v65 = *(v0 + 168);
  sub_1BD0DE53C(*(v0 + 152), &qword_1EBD461E8, &qword_1BE0D6730);
  (*(v65 + 8))(v63, v64);
  sub_1BD0DE53C(v62, &qword_1EBD3F7D8, &qword_1BE0F4280);
  (*(v60 + 8))(v59, v61);
  *(v0 + 448) = sub_1BE052894();
  v66 = sub_1BD441624(&qword_1EBD3F7E8, MEMORY[0x1E6967C80], MEMORY[0x1E6967C88]);
  v67 = swift_task_alloc();
  *(v0 + 456) = v67;
  *v67 = v0;
  v67[1] = sub_1BD43B7B4;
  v68 = *(v0 + 272);
  v69 = *(v0 + 256);

  return MEMORY[0x1EEE6D8C8](v69, v68, v66);
}

uint64_t sub_1BD43CC80()
{
  v1 = *(v0 + 488);
  v2 = *(v0 + 376);
  v82 = *(v0 + 512);
  v84 = *(v0 + 352);
  v3 = *(v0 + 176);
  v4 = *(v0 + 160);
  v5 = *(v0 + 168);
  v6 = *(v0 + 152);
  v86 = *(v0 + 144);
  v7 = *(v0 + 104);
  v72 = *(v0 + 184);
  v74 = *(v0 + 96);
  v80 = *(v0 + 88);
  v8 = *(v0 + 80);
  v76 = *(v0 + 112);
  v78 = *(v0 + 72);
  v9 = *(v1 - 8);
  (*(v9 + 56))(v6, 1, 1, v1);
  (*(v5 + 16))(v3, v72, v4);
  (*(v7 + 16))(v76, v2 + v82, v74);
  (*(v8 + 16))(v80, v2 + *(v84 + 24), v78);
  sub_1BD0DE19C(v6, v86, &qword_1EBD461E8, &qword_1BE0D6730);
  v85 = *(v9 + 48);
  if (v85(v86, 1, v1) == 1)
  {
    v10 = *(v0 + 64);
    sub_1BD0DE53C(*(v0 + 144), &qword_1EBD461E8, &qword_1BE0D6730);
    v11 = sub_1BE0491B4();
    (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  }

  else
  {
    v12 = *(v0 + 488);
    v13 = *(v0 + 144);
    v14 = *(v12 + 48);
    v15 = *(v12 + 64);
    sub_1BD0DE204(v13, *(v0 + 64), &qword_1EBD3F7C0, &unk_1BE0D6570);
    sub_1BD0DE53C(v13 + v15, &qword_1EBD46160, &qword_1BE0FBA00);
    sub_1BD0DE53C(v13 + v14, &qword_1EBD461E0, &qword_1BE0D6728);
  }

  v71 = *(v0 + 472);
  v16 = *(v0 + 368);
  v17 = *(v0 + 352);
  v18 = *(v0 + 176);
  v19 = *(v0 + 160);
  v81 = *(v0 + 152);
  v83 = *(v0 + 488);
  v20 = *(v0 + 104);
  v21 = *(v0 + 112);
  v22 = *(v0 + 96);
  v23 = *(v0 + 80);
  v73 = *(v0 + 72);
  v75 = *(v0 + 88);
  v77 = *(v0 + 64);
  v79 = *(v0 + 136);
  v24 = v17[8];
  v25 = sub_1BE049E04();
  (*(*(v25 - 8) + 56))(v16 + v24, 1, 1, v25);
  v71(v16, v18, v19);
  (*(v20 + 32))(v16 + v17[5], v21, v22);
  (*(v23 + 32))(v16 + v17[6], v75, v73);
  sub_1BD0DE204(v77, v16 + v17[7], &qword_1EBD3F7C0, &unk_1BE0D6570);
  sub_1BD0DE19C(v81, v79, &qword_1EBD461E8, &qword_1BE0D6730);
  if (v85(v79, 1, v83) == 1)
  {
    v26 = *(v0 + 56);
    sub_1BD0DE53C(*(v0 + 136), &qword_1EBD461E8, &qword_1BE0D6730);
    v27 = sub_1BE049D24();
    (*(*(v27 - 8) + 56))(v26, 1, 1, v27);
  }

  else
  {
    v28 = *(v0 + 488);
    v29 = *(v0 + 136);
    v30 = *(v28 + 48);
    sub_1BD0DE204(v29 + *(v28 + 64), *(v0 + 56), &qword_1EBD46160, &qword_1BE0FBA00);
    sub_1BD0DE53C(v29 + v30, &qword_1EBD461E0, &qword_1BE0D6728);
    sub_1BD0DE53C(v29, &qword_1EBD3F7C0, &unk_1BE0D6570);
  }

  v31 = *(v0 + 120);
  v32 = *(v0 + 40);
  sub_1BD439370(*(v0 + 368), *(v0 + 56), v31);
  v33 = _s23TransactionDetailsModelVMa(0);
  (*(*(v33 - 8) + 56))(v31, 0, 1, v33);
  KeyPath = swift_getKeyPath();
  v35 = swift_task_alloc();
  *(v35 + 16) = v32;
  *(v35 + 24) = v31;
  *(v0 + 24) = v32;
  sub_1BD441624(&qword_1EBD461C8, _s9ViewModelCMa_1, &unk_1BE0D66B4);
  sub_1BE04B584();
  KeyPath, v36, v37, v38, v39, v40, v41, v42;

  sub_1BD0DE53C(v31, &qword_1EBD461C0, &qword_1BE0D66D0);
  if (sub_1BD43FB1C(v43))
  {
    v44 = *(v0 + 488);
    v45 = *(v0 + 128);
    sub_1BD0DE19C(*(v0 + 152), v45, &qword_1EBD461E8, &qword_1BE0D6730);
    if (v85(v45, 1, v44) == 1)
    {
      v46 = *(v0 + 128);
      v47 = &qword_1EBD461E8;
      v48 = &qword_1BE0D6730;
    }

    else
    {
      v49 = *(v0 + 488);
      v50 = *(v0 + 128);
      v51 = *(v0 + 48);
      v52 = *(v49 + 64);
      sub_1BD0DE204(v50 + *(v49 + 48), v51, &qword_1EBD461E0, &qword_1BE0D6728);
      v53 = sub_1BE049C64();
      v54 = *(v53 - 8);
      v55 = (*(v54 + 48))(v51, 1, v53);
      v56 = *(v0 + 128);
      v57 = *(v0 + 48);
      if (v55 != 1)
      {
        v58 = sub_1BE049C54();
        (*(v54 + 8))(v57, v53);
        sub_1BD0DE53C(v50 + v52, &qword_1EBD46160, &qword_1BE0FBA00);
        sub_1BD0DE53C(v56, &qword_1EBD3F7C0, &unk_1BE0D6570);
        goto LABEL_14;
      }

      sub_1BD0DE53C(v50 + v52, &qword_1EBD46160, &qword_1BE0FBA00);
      sub_1BD0DE53C(v56, &qword_1EBD3F7C0, &unk_1BE0D6570);
      v47 = &qword_1EBD461E0;
      v48 = &qword_1BE0D6728;
      v46 = v57;
    }

    sub_1BD0DE53C(v46, v47, v48);
    v58 = 0;
LABEL_14:
    sub_1BD438E34(v58 & 1);
  }

  v60 = *(v0 + 240);
  v59 = *(v0 + 248);
  v61 = *(v0 + 232);
  v62 = *(v0 + 200);
  v63 = *(v0 + 184);
  v64 = *(v0 + 160);
  v65 = *(v0 + 168);
  sub_1BD0DE53C(*(v0 + 152), &qword_1EBD461E8, &qword_1BE0D6730);
  (*(v65 + 8))(v63, v64);
  sub_1BD0DE53C(v62, &qword_1EBD3F7D8, &qword_1BE0F4280);
  (*(v60 + 8))(v59, v61);
  *(v0 + 448) = sub_1BE052894();
  v66 = sub_1BD441624(&qword_1EBD3F7E8, MEMORY[0x1E6967C80], MEMORY[0x1E6967C88]);
  v67 = swift_task_alloc();
  *(v0 + 456) = v67;
  *v67 = v0;
  v67[1] = sub_1BD43B7B4;
  v68 = *(v0 + 272);
  v69 = *(v0 + 256);

  return MEMORY[0x1EEE6D8C8](v69, v68, v66);
}

uint64_t sub_1BD43D4AC()
{
  v0 = sub_1BE04AFE4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v10 - v5;
  sub_1BE049A14();
  sub_1BE049A14();
  v7 = _s9PassKitUI28NearbyPeerPaymentButtonsViewC6ActionV2eeoiySbAE_AEtFZ_0();
  v8 = *(v1 + 8);
  v8(v3, v0);
  v8(v6, v0);
  return v7 & 1;
}

uint64_t sub_1BD43D5E0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580, &unk_1BE0B9000);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v40 = &v37 - v3;
  v4 = sub_1BE049A94();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F790, &qword_1BE0D6710);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v37 - v9;
  v11 = sub_1BE04AFE4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v38 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v37 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v37 - v18;
  v39 = v1;
  sub_1BD0DE19C(v1 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionDetailView9ViewModel_transactionContext, v10, &qword_1EBD3F790, &qword_1BE0D6710);
  v20 = type metadata accessor for TransactionContext(0);
  if ((*(*(v20 - 8) + 48))(v10, 1, v20) == 1)
  {
    return sub_1BD0DE53C(v10, &qword_1EBD3F790, &qword_1BE0D6710);
  }

  (*(v5 + 16))(v7, v10, v4);
  sub_1BD442180(v10);
  sub_1BE049A14();
  (*(v5 + 8))(v7, v4);
  v37 = *(v12 + 32);
  v37(v19, v16, v11);
  v22 = sub_1BE0528D4();
  (*(*(v22 - 8) + 56))(v40, 1, 1, v22);
  v23 = v38;
  (*(v12 + 16))(v38, v19, v11);
  sub_1BE0528A4();
  v24 = v39;
  sub_1BE048964();
  v25 = sub_1BE052894();
  v26 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v27 = swift_allocObject();
  v28 = MEMORY[0x1E69E85E0];
  *(v27 + 2) = v25;
  *(v27 + 3) = v28;
  v37(&v27[v26], v23, v11);
  *&v27[(v13 + v26 + 7) & 0xFFFFFFFFFFFFFFF8] = v24;
  v29 = sub_1BDA543A4(0, 0, v40, &unk_1BE0D6748, v27);
  v29, v30, v31, v32, v33, v34, v35, v36;
  return (*(v12 + 8))(v19, v11);
}

uint64_t sub_1BD43DA10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F790, &qword_1BE0D6710);
  v5[4] = swift_task_alloc();
  v6 = type metadata accessor for TransactionContext(0);
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  v7 = sub_1BE049454();
  v5[8] = v7;
  v5[9] = *(v7 - 8);
  v5[10] = swift_task_alloc();
  sub_1BE0528A4();
  v5[11] = sub_1BE052894();
  v9 = sub_1BE052844();
  v5[12] = v9;
  v5[13] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1BD43DB98, v9, v8);
}

uint64_t sub_1BD43DB98()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = v0[2];
  sub_1BE0490F4();
  v0[14] = sub_1BE0490B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C910, &qword_1BE0BF5D0);
  v5 = sub_1BE04AFE4();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  v0[15] = v8;
  *(v8 + 16) = xmmword_1BE0B69E0;
  (*(v6 + 16))(v8 + v7, v4, v5);
  (*(v2 + 104))(v1, *MEMORY[0x1E69677B8], v3);
  v9 = swift_task_alloc();
  v0[16] = v9;
  *v9 = v0;
  v9[1] = sub_1BD43DD4C;
  v10 = v0[10];

  return MEMORY[0x1EEDC1538](v8, v10);
}

uint64_t sub_1BD43DD4C(char a1)
{
  v4 = *v2;
  *(v4 + 136) = v1;

  v5 = *(v4 + 120);
  v6 = *(v4 + 112);
  v7 = *(v4 + 80);
  v8 = *(v4 + 72);
  v9 = *(v4 + 64);
  if (v1)
  {
    (*(v8 + 8))(v7, v9);
    v5, v10, v11, v12, v13, v14, v15, v16;
    v6, v17, v18, v19, v20, v21, v22, v23;
    v24 = *(v4 + 96);
    v25 = *(v4 + 104);
    v26 = sub_1BD43E27C;
  }

  else
  {
    *(v4 + 152) = a1 & 1;
    (*(v8 + 8))(v7, v9);
    v5, v27, v28, v29, v30, v31, v32, v33;
    v6, v34, v35, v36, v37, v38, v39, v40;
    v24 = *(v4 + 96);
    v25 = *(v4 + 104);
    v26 = sub_1BD43DF28;
  }

  return MEMORY[0x1EEE6DFA0](v26, v24, v25);
}

uint64_t sub_1BD43DF28(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  if (*(v8 + 152) != 1)
  {
    *(v8 + 88), a2, a3, a4, a5, a6, a7, a8;
    goto LABEL_5;
  }

  v9 = *(v8 + 40);
  v10 = *(v8 + 48);
  v11 = *(v8 + 32);
  sub_1BD0DE19C(*(v8 + 24) + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionDetailView9ViewModel_transactionContext, v11, &qword_1EBD3F790, &qword_1BE0D6710);
  v12 = (*(v10 + 48))(v11, 1, v9);
  v20 = *(v8 + 32);
  if (v12 == 1)
  {
    *(v8 + 88), v13, v14, v15, v16, v17, v18, v19;
    sub_1BD0DE53C(v20, &qword_1EBD3F790, &qword_1BE0D6710);
LABEL_5:

    v21 = *(v8 + 8);

    return v21();
  }

  sub_1BD4423F4(*(v8 + 32), *(v8 + 56), type metadata accessor for TransactionContext);
  v23 = swift_task_alloc();
  *(v8 + 144) = v23;
  *v23 = v8;
  v23[1] = sub_1BD43E0CC;
  v24 = *(v8 + 56);

  return sub_1BD43E308(v24);
}

uint64_t sub_1BD43E0CC()
{
  v1 = *v0;

  v2 = *(v1 + 104);
  v3 = *(v1 + 96);

  return MEMORY[0x1EEE6DFA0](sub_1BD43E1EC, v3, v2);
}

uint64_t sub_1BD43E1EC(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 56);
  *(v8 + 88), a2, a3, a4, a5, a6, a7, a8;
  sub_1BD442180(v9);

  v10 = *(v8 + 8);

  return v10();
}

uint64_t sub_1BD43E27C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 88), a2, a3, a4, a5, a6, a7, a8;

  v9 = *(v8 + 8);

  return v9();
}

uint64_t sub_1BD43E308(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD461E0, &qword_1BE0D6728);
  v2[5] = swift_task_alloc();
  v2[6] = type metadata accessor for TransactionContext(0);
  v2[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD461C0, &qword_1BE0D66D0);
  v2[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD461E8, &qword_1BE0D6730);
  v4 = swift_task_alloc();
  v2[9] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD461F0, &qword_1BE0D6738);
  v2[10] = v5;
  v2[11] = *(v5 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = sub_1BE0528A4();
  v2[16] = sub_1BE052894();
  v6 = *(v5 + 48);
  v7 = *(v5 + 64);
  v8 = swift_task_alloc();
  v2[17] = v8;
  *v8 = v2;
  v8[1] = sub_1BD43E53C;

  return sub_1BD43ED44(v4, v4 + v6, v4 + v7, a1);
}

uint64_t sub_1BD43E53C()
{
  *(*v1 + 144) = v0;

  if (v0)
  {

    v2 = sub_1BE052844();
    v4 = v3;
    v5 = sub_1BD43EC4C;
  }

  else
  {
    v2 = sub_1BE052844();
    v4 = v6;
    v5 = sub_1BD43E6C0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v2, v4);
}

uint64_t sub_1BD43E6C0(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 104);
  v10 = *(v8 + 112);
  v11 = *(v8 + 80);
  v12 = *(v8 + 88);
  v13 = *(v8 + 72);
  v50 = *(v8 + 64);
  v14 = *(v8 + 48);
  v15 = *(v8 + 56);
  v16 = *(v8 + 24);
  v51 = *(v8 + 32);
  *(v8 + 128), a2, a3, a4, a5, a6, a7, a8;
  (*(v12 + 56))(v13, 0, 1, v11);
  sub_1BD0DE204(v13, v10, &unk_1EBD461F0, &qword_1BE0D6738);
  v17 = sub_1BE049A94();
  (*(*(v17 - 8) + 16))(v15, v16, v17);
  v18 = v14[5];
  v19 = sub_1BE0495A4();
  (*(*(v19 - 8) + 16))(v15 + v18, v16 + v18, v19);
  v20 = v14[6];
  v21 = sub_1BE049184();
  (*(*(v21 - 8) + 16))(v15 + v20, v16 + v20, v21);
  sub_1BD0DE19C(v10, v9, &unk_1EBD461F0, &qword_1BE0D6738);
  v22 = *(v11 + 48);
  v23 = *(v11 + 64);
  v24 = v14[8];
  v25 = sub_1BE049E04();
  (*(*(v25 - 8) + 56))(v15 + v24, 1, 1, v25);
  sub_1BD0DE204(v9, v15 + v14[7], &qword_1EBD3F7C0, &unk_1BE0D6570);
  sub_1BD0DE53C(v9 + v23, &qword_1EBD46160, &qword_1BE0FBA00);
  sub_1BD0DE53C(v9 + v22, &qword_1EBD461E0, &qword_1BE0D6728);
  sub_1BD0DE19C(v10, v9, &unk_1EBD461F0, &qword_1BE0D6738);
  v26 = *(v11 + 48);
  sub_1BD439370(v15, v9 + *(v11 + 64), v50);
  sub_1BD0DE53C(v9 + v26, &qword_1EBD461E0, &qword_1BE0D6728);
  sub_1BD0DE53C(v9, &qword_1EBD3F7C0, &unk_1BE0D6570);
  v27 = _s23TransactionDetailsModelVMa(0);
  (*(*(v27 - 8) + 56))(v50, 0, 1, v27);
  KeyPath = swift_getKeyPath();
  v29 = swift_task_alloc();
  *(v29 + 16) = v51;
  *(v29 + 24) = v50;
  *(v8 + 16) = v51;
  sub_1BD441624(&qword_1EBD461C8, _s9ViewModelCMa_1, &unk_1BE0D66B4);
  sub_1BE04B584();
  KeyPath, v30, v31, v32, v33, v34, v35, v36;

  sub_1BD0DE53C(v50, &qword_1EBD461C0, &qword_1BE0D66D0);
  if (sub_1BD43FB1C(v37))
  {
    v38 = *(v8 + 96);
    v39 = *(v8 + 80);
    v40 = *(v8 + 40);
    sub_1BD0DE19C(*(v8 + 112), v38, &unk_1EBD461F0, &qword_1BE0D6738);
    v41 = *(v39 + 64);
    sub_1BD0DE204(v38 + *(v39 + 48), v40, &qword_1EBD461E0, &qword_1BE0D6728);
    v42 = sub_1BE049C64();
    v43 = *(v42 - 8);
    v44 = (*(v43 + 48))(v40, 1, v42);
    v45 = *(v8 + 96);
    v46 = *(v8 + 40);
    if (v44 == 1)
    {
      sub_1BD0DE53C(v38 + v41, &qword_1EBD46160, &qword_1BE0FBA00);
      sub_1BD0DE53C(v45, &qword_1EBD3F7C0, &unk_1BE0D6570);
      sub_1BD0DE53C(v46, &qword_1EBD461E0, &qword_1BE0D6728);
      v47 = 0;
    }

    else
    {
      v47 = sub_1BE049C54();
      (*(v43 + 8))(v46, v42);
      sub_1BD0DE53C(v38 + v41, &qword_1EBD46160, &qword_1BE0FBA00);
      sub_1BD0DE53C(v45, &qword_1EBD3F7C0, &unk_1BE0D6570);
    }

    sub_1BD438E34(v47 & 1);
  }

  sub_1BD0DE53C(*(v8 + 112), &unk_1EBD461F0, &qword_1BE0D6738);

  v48 = *(v8 + 8);

  return v48();
}

uint64_t sub_1BD43EC4C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 80);
  v10 = *(v8 + 88);
  v11 = *(v8 + 72);
  *(v8 + 128), a2, a3, a4, a5, a6, a7, a8;
  (*(v10 + 56))(v11, 1, 1, v9);
  sub_1BD0DE53C(v11, &qword_1EBD461E8, &qword_1BE0D6730);

  v12 = *(v8 + 8);

  return v12();
}

uint64_t sub_1BD43ED44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46160, &qword_1BE0FBA00);
  v4[6] = swift_task_alloc();
  v5 = sub_1BE049D24();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  v6 = sub_1BE049C64();
  v4[10] = v6;
  v4[11] = *(v6 - 8);
  v4[12] = swift_task_alloc();
  v7 = sub_1BE0491B4();
  v4[13] = v7;
  v4[14] = *(v7 - 8);
  v4[15] = swift_task_alloc();
  v8 = sub_1BE049204();
  v4[16] = v8;
  v4[17] = *(v8 - 8);
  v4[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD461E0, &qword_1BE0D6728);
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F7C0, &unk_1BE0D6570);
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v9 = sub_1BE04AFE4();
  v4[23] = v9;
  v4[24] = *(v9 - 8);
  v4[25] = swift_task_alloc();
  sub_1BE0528A4();
  v4[26] = sub_1BE052894();
  v11 = sub_1BE052844();
  v4[27] = v11;
  v4[28] = v10;

  return MEMORY[0x1EEE6DFA0](sub_1BD43F06C, v11, v10);
}

uint64_t sub_1BD43F06C()
{
  sub_1BE0490F4();
  v0[29] = sub_1BE0490B4();
  sub_1BE049A14();
  v1 = swift_task_alloc();
  v0[30] = v1;
  *v1 = v0;
  v1[1] = sub_1BD43F13C;
  v2 = v0[25];

  return MEMORY[0x1EEDC1500](v2);
}

uint64_t sub_1BD43F13C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 232);
  v6 = *(*v2 + 200);
  v7 = *(*v2 + 192);
  v8 = *(*v2 + 184);
  *(v4 + 248) = a1;
  *(v4 + 256) = v1;

  (*(v7 + 8))(v6, v8);
  v5, v9, v10, v11, v12, v13, v14, v15;
  v16 = *(v3 + 224);
  v17 = *(v3 + 216);
  if (v1)
  {
    v18 = sub_1BD43FA28;
  }

  else
  {
    v18 = sub_1BD43F300;
  }

  return MEMORY[0x1EEE6DFA0](v18, v17, v16);
}

uint64_t sub_1BD43F300(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v100 = *(v8 + 248);
  v9 = *(v8 + 176);
  v10 = *(v8 + 160);
  v11 = *(v8 + 104);
  v12 = *(v8 + 112);
  v13 = *(v8 + 80);
  v14 = *(v8 + 88);
  v15 = *(v8 + 56);
  v16 = *(v8 + 64);
  v17 = *(v8 + 32);
  *(v8 + 208), a2, a3, a4, a5, a6, a7, a8;
  v87 = *(v12 + 56);
  v87(v9, 1, 1, v11);
  v83 = *(v14 + 56);
  v83(v10, 1, 1, v13);
  v79 = *(v16 + 56);
  v79(v17, 1, 1, v15);
  v25 = *(v100 + 16);
  v26 = *(v8 + 248);
  if (v25)
  {
    v27 = *(v8 + 136);
    v28 = *(v27 + 16);
    v27 += 16;
    v99 = v28;
    v29 = &v26[(*(v27 + 64) + 32) & ~*(v27 + 64)];
    v95 = (v27 + 72);
    v82 = (v27 - 8);
    v94 = (v27 + 80);
    v30 = *(v8 + 64);
    v31 = (v30 + 32);
    v32 = *(v8 + 88);
    v81 = (v30 + 48);
    v78 = (v30 + 8);
    v92 = (v32 + 32);
    v86 = (v32 + 48);
    v33 = *(v8 + 112);
    v98 = *(v27 + 56);
    v97 = *MEMORY[0x1E69676F8];
    v91 = *MEMORY[0x1E6967700];
    v80 = (v32 + 8);
    v96 = (v33 + 32);
    v90 = (v33 + 48);
    v34 = &qword_1EBD3F7C0;
    v85 = (v33 + 8);
    v84 = *MEMORY[0x1E6967708];
    v93 = v31;
    while (1)
    {
      v36 = v34;
      v37 = *(v8 + 144);
      v38 = *(v8 + 128);
      v99(v37, v29, v38);
      v39 = (*v95)(v37, v38);
      if (v39 == v97)
      {
        v41 = *(v8 + 168);
        v40 = *(v8 + 176);
        v42 = *(v8 + 144);
        v43 = *(v8 + 120);
        v44 = *(v8 + 104);
        (*v94)(v42, *(v8 + 128));
        v45 = *v96;
        (*v96)(v43, v42, v44);
        v46 = v40;
        v34 = v36;
        sub_1BD0DE19C(v46, v41, v36, &unk_1BE0D6570);
        if ((*v90)(v41, 1, v44) == 1)
        {
          v48 = *(v8 + 168);
          v47 = *(v8 + 176);
          v49 = *(v8 + 120);
          v50 = *(v8 + 104);
          sub_1BD0DE53C(v47, v36, &unk_1BE0D6570);
          v51 = v48;
          v34 = v36;
          sub_1BD0DE53C(v51, v36, &unk_1BE0D6570);
          v45(v47, v49, v50);
          v87(v47, 0, 1, v50);
        }

        else
        {
          v61 = *(v8 + 168);
          (*v85)(*(v8 + 120), *(v8 + 104));
          sub_1BD0DE53C(v61, v36, &unk_1BE0D6570);
        }

        v31 = v93;
        goto LABEL_6;
      }

      if (v39 == v91)
      {
        v53 = *(v8 + 152);
        v52 = *(v8 + 160);
        v54 = *(v8 + 144);
        v55 = *(v8 + 96);
        v56 = *(v8 + 80);
        (*v94)(v54, *(v8 + 128));
        v88 = *v92;
        (*v92)(v55, v54, v56);
        sub_1BD0DE19C(v52, v53, &qword_1EBD461E0, &qword_1BE0D6728);
        if ((*v86)(v53, 1, v56) == 1)
        {
          v58 = *(v8 + 152);
          v57 = *(v8 + 160);
          v59 = *(v8 + 96);
          v60 = *(v8 + 80);
          sub_1BD0DE53C(v57, &qword_1EBD461E0, &qword_1BE0D6728);
          sub_1BD0DE53C(v58, &qword_1EBD461E0, &qword_1BE0D6728);
          v88(v57, v59, v60);
          v83(v57, 0, 1, v60);
        }

        else
        {
          v35 = *(v8 + 152);
          (*v80)(*(v8 + 96), *(v8 + 80));
          sub_1BD0DE53C(v35, &qword_1EBD461E0, &qword_1BE0D6728);
        }

        v31 = v93;
      }

      else
      {
        v62 = *(v8 + 144);
        v63 = *(v8 + 128);
        if (v39 == v84)
        {
          v64 = *(v8 + 72);
          v65 = v31;
          v67 = *(v8 + 48);
          v66 = *(v8 + 56);
          v68 = *(v8 + 32);
          (*v94)(*(v8 + 144), v63);
          v89 = *v65;
          (*v65)(v64, v62, v66);
          sub_1BD0DE19C(v68, v67, &qword_1EBD46160, &qword_1BE0FBA00);
          v69 = (*v81)(v67, 1, v66);
          v70 = *(v8 + 72);
          v71 = *(v8 + 48);
          v72 = *(v8 + 56);
          if (v69 == 1)
          {
            v73 = *(v8 + 32);
            sub_1BD0DE53C(v73, &qword_1EBD46160, &qword_1BE0FBA00);
            sub_1BD0DE53C(v71, &qword_1EBD46160, &qword_1BE0FBA00);
            v31 = v93;
            v89(v73, v70, v72);
            v79(v73, 0, 1, v72);
            v34 = v36;
          }

          else
          {
            (*v78)(*(v8 + 72), *(v8 + 56));
            sub_1BD0DE53C(v71, &qword_1EBD46160, &qword_1BE0FBA00);
            v34 = v36;
            v31 = v93;
          }

          goto LABEL_6;
        }

        (*v82)(*(v8 + 144), v63);
      }

      v34 = v36;
LABEL_6:
      v29 += v98;
      if (!--v25)
      {
        v26 = *(v8 + 248);
        break;
      }
    }
  }

  v26, v18, v19, v20, v21, v22, v23, v24;
  v74 = *(v8 + 160);
  v75 = *(v8 + 24);
  sub_1BD0DE204(*(v8 + 176), *(v8 + 16), &qword_1EBD3F7C0, &unk_1BE0D6570);
  sub_1BD0DE204(v74, v75, &qword_1EBD461E0, &qword_1BE0D6728);

  v76 = *(v8 + 8);

  return v76();
}

uint64_t sub_1BD43FA28(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 208), a2, a3, a4, a5, a6, a7, a8;

  v9 = *(v8 + 8);

  return v9();
}

uint64_t sub_1BD43FB1C(double a1)
{
  v1 = sub_1BE049834();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v66 - v6;
  v8 = sub_1BE049904();
  v73 = *(v8 - 8);
  v74 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v72 = &v66 - v12;
  v13 = sub_1BE049B44();
  v77 = *(v13 - 8);
  v78 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v76 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v75 = &v66 - v16;
  v81 = sub_1BE049184();
  v79 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v18 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v80 = &v66 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F790, &qword_1BE0D6710);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v66 - v25;
  v27 = sub_1BE049A94();
  v83 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v66 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v82 = &v66 - v31;
  result = PKBankConnectExcludeFromSpendingSummariesAndHighlights();
  if (result)
  {
    v68 = v7;
    v69 = v4;
    v70 = v2;
    v71 = v1;
    v33 = OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionDetailView9ViewModel_transactionContext;
    sub_1BD0DE19C(v84 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionDetailView9ViewModel_transactionContext, v26, &qword_1EBD3F790, &qword_1BE0D6710);
    v34 = type metadata accessor for TransactionContext(0);
    v35 = *(*(v34 - 8) + 48);
    if (v35(v26, 1, v34) == 1)
    {
      v36 = v26;
    }

    else
    {
      v67 = v10;
      v37 = v83;
      (*(v83 + 16))(v29, v26, v27);
      v38 = v26;
      v39 = v37;
      sub_1BD442180(v38);
      v40 = *(v37 + 32);
      v41 = v82;
      v42 = v29;
      v43 = v27;
      v40(v82, v42, v27);
      sub_1BD0DE19C(v84 + v33, v23, &qword_1EBD3F790, &qword_1BE0D6710);
      if (v35(v23, 1, v34) != 1)
      {
        v44 = v79;
        v45 = v81;
        (*(v79 + 16))(v18, &v23[*(v34 + 24)], v81);
        sub_1BD442180(v23);
        v46 = v80;
        (*(v44 + 32))(v80, v18, v45);
        if (sub_1BE049134())
        {
          v47 = v75;
          sub_1BE0499E4();
          v49 = v76;
          v48 = v77;
          v50 = v78;
          (*(v77 + 104))(v76, *MEMORY[0x1E6967B18], v78);
          sub_1BD441624(&qword_1EBD3F7A8, MEMORY[0x1E6967B20], MEMORY[0x1E6967B40]);
          sub_1BE0526E4();
          sub_1BE0526E4();
          v51 = *(v48 + 8);
          v51(v49, v50);
          v51(v47, v50);
          if (v90 != v89)
          {
            v52 = v72;
            sub_1BE049A34();
            v54 = v73;
            v53 = v74;
            v55 = v67;
            (*(v73 + 104))(v67, *MEMORY[0x1E6967980], v74);
            sub_1BD441624(&qword_1EBD461D8, MEMORY[0x1E6967988], MEMORY[0x1E69679A0]);
            sub_1BE0526E4();
            sub_1BE0526E4();
            v56 = *(v54 + 8);
            v56(v55, v53);
            v57 = v52;
            v41 = v82;
            v56(v57, v53);
            if (v88 != v87)
            {
              v58 = v43;
              v59 = v68;
              sub_1BE049984();
              v61 = v69;
              v60 = v70;
              v62 = v41;
              v63 = v44;
              v64 = v71;
              (*(v70 + 104))(v69, *MEMORY[0x1E69678D0], v71);
              sub_1BD441624(&qword_1EBD3F7C8, MEMORY[0x1E69678D8], MEMORY[0x1E69678F0]);
              sub_1BE0526E4();
              sub_1BE0526E4();
              v65 = *(v60 + 8);
              v65(v61, v64);
              v65(v59, v64);
              (*(v63 + 8))(v80, v81);
              (*(v83 + 8))(v62, v58);
              return v86 != v85;
            }
          }

          (*(v44 + 8))(v80, v81);
          (*(v83 + 8))(v41, v43);
        }

        else
        {
          (*(v44 + 8))(v46, v45);
          (*(v39 + 8))(v41, v27);
        }

        return 0;
      }

      (*(v39 + 8))(v41, v27);
      v36 = v23;
    }

    sub_1BD0DE53C(v36, &qword_1EBD3F790, &qword_1BE0D6710);
    return 0;
  }

  return result;
}

void sub_1BD4403E4(int a1)
{
  v41 = a1;
  v2 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580, &unk_1BE0B9000);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v40 = &v38 - v4;
  v5 = sub_1BE049A94();
  v39 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F790, &qword_1BE0D6710);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v38 - v9;
  v11 = sub_1BE04AFE4();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v38 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v38 - v19;
  if (v2 != 2)
  {
    v38 = v18;
    sub_1BD0DE19C(v1 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionDetailView9ViewModel_transactionContext, v10, &qword_1EBD3F790, &qword_1BE0D6710);
    v21 = type metadata accessor for TransactionContext(0);
    if ((*(*(v21 - 8) + 48))(v10, 1, v21) == 1)
    {
      sub_1BD0DE53C(v10, &qword_1EBD3F790, &qword_1BE0D6710);
    }

    else
    {
      v22 = v39;
      (*(v39 + 16))(v7, v10, v5);
      sub_1BD442180(v10);
      sub_1BE049A14();
      (*(v22 + 8))(v7, v5);
      v23 = v38;
      v39 = *(v38 + 32);
      (v39)(v20, v16, v11);
      v24 = sub_1BE0528D4();
      v25 = v40;
      (*(*(v24 - 8) + 56))(v40, 1, 1, v24);
      (*(v23 + 16))(v13, v20, v11);
      sub_1BE0528A4();
      v26 = sub_1BE052894();
      v27 = (*(v23 + 80) + 33) & ~*(v23 + 80);
      v28 = swift_allocObject();
      v29 = MEMORY[0x1E69E85E0];
      *(v28 + 16) = v26;
      *(v28 + 24) = v29;
      *(v28 + 32) = v41 & 1;
      (v39)(v28 + v27, v13, v11);
      v30 = sub_1BDA543A4(0, 0, v25, &unk_1BE0D6720, v28);
      v30, v31, v32, v33, v34, v35, v36, v37;
      (*(v23 + 8))(v20, v11);
    }
  }
}

uint64_t sub_1BD440818(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 16) = a5;
  *(v5 + 72) = a4;
  sub_1BE0528A4();
  *(v5 + 24) = sub_1BE052894();
  v7 = sub_1BE052844();
  *(v5 + 32) = v7;
  *(v5 + 40) = v6;

  return MEMORY[0x1EEE6DFA0](sub_1BD4408B4, v7, v6);
}

uint64_t sub_1BD4408B4()
{
  sub_1BE0490F4();
  *(v0 + 48) = sub_1BE0490B4();
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_1BD440968;
  v2 = *(v0 + 16);
  v3 = *(v0 + 72);

  return MEMORY[0x1EEDC1550](v3, v2);
}

uint64_t sub_1BD440968()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v10 = *(v2 + 32);
    v11 = *(v2 + 40);
    v12 = sub_1BD440AE8;
  }

  else
  {
    *(v2 + 48), v3, v4, v5, v6, v7, v8, v9;
    v10 = *(v2 + 32);
    v11 = *(v2 + 40);
    v12 = sub_1BD440A84;
  }

  return MEMORY[0x1EEE6DFA0](v12, v10, v11);
}

uint64_t sub_1BD440A84(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;
  v9 = *(v8 + 8);

  return v9();
}

uint64_t sub_1BD440AE8(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 24);
  *(v8 + 48), a2, a3, a4, a5, a6, a7, a8;
  v9, v10, v11, v12, v13, v14, v15, v16;
  v17 = *(v8 + 8);

  return v17();
}

uint64_t sub_1BD440B58()
{
  sub_1BD0DE53C(v0 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionDetailView9ViewModel__transactionDetails, &qword_1EBD461C0, &qword_1BE0D66D0);
  *(v0 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionDetailView9ViewModel__offersViewModel), v1, v2, v3, v4, v5, v6, v7;
  sub_1BD0D4744(*(v0 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionDetailView9ViewModel__onTransactionDeleted), *(v0 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionDetailView9ViewModel__onTransactionDeleted + 8), v8, v9, v10, v11, v12, v13);
  sub_1BD0DE53C(v0 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionDetailView9ViewModel_transactionContext, &qword_1EBD3F790, &qword_1BE0D6710);
  sub_1BD0DE53C(v0 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionDetailView9ViewModel_historyToken, &qword_1EBD3F788, &unk_1BE0E2970);
  v14 = OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionDetailView9ViewModel___observationRegistrar;
  v15 = sub_1BE04B5D4();
  (*(*(v15 - 8) + 8))(v0 + v14, v15);

  return swift_deallocClassInstance();
}

void sub_1BD440CA0(uint64_t a1)
{
  sub_1BD440EAC(319, &qword_1EBD46158, _s23TransactionDetailsModelVMa, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1BD440EAC(319, &qword_1EBD3F760, type metadata accessor for TransactionContext, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1BD440EAC(319, &qword_1EBD3F768, MEMORY[0x1E69675F8], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1BE04B5D4();
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1BD440EAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1BD440F38(uint64_t a1)
{
  sub_1BD440EAC(319, &qword_1EBD46178, _s23TransactionDetailsModelV6ActionVMa, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1BE0493F4();
    if (v2 <= 0x3F)
    {
      sub_1BE04A974();
      if (v3 <= 0x3F)
      {
        sub_1BE049B44();
        if (v4 <= 0x3F)
        {
          sub_1BD440EAC(319, &qword_1EBD46180, sub_1BD4411B4, MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            sub_1BD440EAC(319, &qword_1EBD44DB8, MEMORY[0x1E6967790], MEMORY[0x1E69E6720]);
            if (v6 <= 0x3F)
            {
              sub_1BE04AFE4();
              if (v7 <= 0x3F)
              {
                sub_1BD440EAC(319, &qword_1EBD46190, MEMORY[0x1E69676D0], MEMORY[0x1E69E6720]);
                if (v8 <= 0x3F)
                {
                  sub_1BE049B04();
                  if (v9 <= 0x3F)
                  {
                    sub_1BD440EAC(319, &qword_1EBD46198, MEMORY[0x1E6967C00], MEMORY[0x1E69E6720]);
                    if (v10 <= 0x3F)
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
    }
  }
}

unint64_t sub_1BD4411B4()
{
  result = qword_1EBD46188;
  if (!qword_1EBD46188)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD46188);
  }

  return result;
}

uint64_t sub_1BD441228(uint64_t a1)
{
  result = sub_1BE04AA64();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1BD4412C0()
{
  result = qword_1EBD461B0;
  if (!qword_1EBD461B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD461B0);
  }

  return result;
}

uint64_t sub_1BD441314()
{
  sub_1BE053D04();
  sub_1BE052524();
  sub_1BE04AA64();
  sub_1BD441624(&qword_1EBD44E50, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  sub_1BE052294();
  MEMORY[0x1BFB40DA0](0);
  return sub_1BE053D64();
}

uint64_t sub_1BD4413C8(uint64_t a1)
{
  sub_1BE052524();
  sub_1BE04AA64();
  sub_1BD441624(&qword_1EBD44E50, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  sub_1BE052294();
  return MEMORY[0x1BFB40DA0](0);
}

uint64_t sub_1BD441460(uint64_t a1)
{
  sub_1BE053D04();
  sub_1BE052524();
  sub_1BE04AA64();
  sub_1BD441624(&qword_1EBD44E50, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  sub_1BE052294();
  MEMORY[0x1BFB40DA0](0);
  return sub_1BE053D64();
}

uint64_t sub_1BD441510(uint64_t *a1, void *a2, uint64_t a3)
{
  v3 = *a1 == *a2 && a1[1] == a2[1];
  if (!v3 && (sub_1BE053B84() & 1) == 0)
  {
    return 0;
  }

  return sub_1BE04A9E4();
}

uint64_t sub_1BD441624(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_1BD44166C(uint64_t a1, uint64_t a2)
{
  v32 = a1;
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = _s23TransactionDetailsModelV6ActionVMa(0);
  v33 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v8 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v30 - v10;
  v12 = sub_1BE04AA64();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04A044();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1BD0DE53C(v11, &unk_1EBD3CF70, &qword_1BE0BA000);
    return MEMORY[0x1E69E7CC0];
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    (*(v4 + 104))(v6, *MEMORY[0x1E69B80D8], v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1BE0B69E0;
    *(v17 + 56) = MEMORY[0x1E69E6158];
    *(v17 + 64) = sub_1BD110550();
    *(v17 + 32) = v32;
    *(v17 + 40) = a2;
    sub_1BE048C84();
    v18 = sub_1BE04B714();
    v20 = v19;
    v17, v19, v21, v22, v23, v24, v25, v26;
    (*(v4 + 8))(v6, v3);
    (*(v13 + 16))(v8 + *(v31 + 20), v15, v12);
    *v8 = v18;
    v8[1] = v20;
    v16 = sub_1BD1D9088(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v28 = v16[2];
    v27 = v16[3];
    if (v28 >= v27 >> 1)
    {
      v16 = sub_1BD1D9088((v27 > 1), v28 + 1, 1, v16);
    }

    (*(v13 + 8))(v15, v12);
    v16[2] = v28 + 1;
    sub_1BD4423F4(v8, v16 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v28, _s23TransactionDetailsModelV6ActionVMa);
  }

  return v16;
}

id sub_1BD441A80()
{
  v1 = v0;
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v39 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v38 = &v38 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v38 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v38 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v38 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v38 - v17;
  v19 = sub_1BE049904();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v23, v1, v19, v21);
  v24 = (*(v20 + 88))(v23, v19);
  if (v24 == *MEMORY[0x1E6967960])
  {
    (*(v3 + 104))(v18, *MEMORY[0x1E69B8050], v2);
    result = PKPassKitBundle();
    if (result)
    {
      v26 = result;
      v27 = sub_1BE04B6F4();

      (*(v3 + 8))(v18, v2);
      return v27;
    }

    __break(1u);
    goto LABEL_22;
  }

  if (v24 == *MEMORY[0x1E6967968])
  {
    (*(v3 + 104))(v15, *MEMORY[0x1E69B8050], v2);
    result = PKPassKitBundle();
    if (!result)
    {
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v28 = result;
    v29 = v2;
    v27 = sub_1BE04B6F4();

    v30 = *(v3 + 8);
    v31 = v15;
LABEL_17:
    v30(v31, v29);
    return v27;
  }

  if (v24 == *MEMORY[0x1E6967978])
  {
    (*(v3 + 104))(v12, *MEMORY[0x1E69B8050], v2);
    result = PKPassKitBundle();
    if (!result)
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v32 = result;
    v29 = v2;
    v27 = sub_1BE04B6F4();

    v30 = *(v3 + 8);
    v31 = v12;
    goto LABEL_17;
  }

  if (v24 == *MEMORY[0x1E6967970])
  {
    (*(v3 + 104))(v9, *MEMORY[0x1E69B8050], v2);
    result = PKPassKitBundle();
    if (!result)
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v33 = result;
    v29 = v2;
    goto LABEL_16;
  }

  v34 = *MEMORY[0x1E69B8050];
  v35 = *(v3 + 104);
  if (v24 == *MEMORY[0x1E6967980])
  {
    v9 = v38;
    v35(v38, v34, v2);
    result = PKPassKitBundle();
    if (!result)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v33 = result;
    v29 = v2;
LABEL_16:
    v27 = sub_1BE04B6F4();

    v30 = *(v3 + 8);
    v31 = v9;
    goto LABEL_17;
  }

  v36 = v39;
  v35(v39, v34, v2);
  result = PKPassKitBundle();
  if (result)
  {
    v37 = result;
    v27 = sub_1BE04B6F4();

    (*(v3 + 8))(v36, v2);
    (*(v20 + 8))(v23, v19);
    return v27;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1BD44201C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 52);
  v5 = sub_1BE04AFE4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1BD442090(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD461C0, &qword_1BE0D66D0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD442100(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TransactionContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD442180(uint64_t a1)
{
  v2 = type metadata accessor for TransactionContext(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD4421DC(uint64_t a1)
{
  v4 = *(sub_1BE04AFE4() - 8);
  v5 = (*(v4 + 80) + 33) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1BD126968;

  return sub_1BD440818(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1BD4422D4(uint64_t a1)
{
  v4 = *(sub_1BE04AFE4() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1BD0F985C;

  return sub_1BD43DA10(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1BD4423F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1BD44247C()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = (v0[2] + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionDetailView9ViewModel__onTransactionDeleted);
  v4 = *v3;
  v5 = v3[1];
  *v3 = v1;
  v3[1] = v2;
  sub_1BD0D44B8(v1, v2);
  sub_1BD0D4744(v4, v5, v6, v7, v8, v9, v10, v11);
}

void sub_1BD4424D4()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionDetailView9ViewModel__offersViewModel);
  *(v1 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionDetailView9ViewModel__offersViewModel) = *(v0 + 24);
  sub_1BE048964();
  v2, v3, v4, v5, v6, v7, v8, v9;
}

uint64_t sub_1BD44261C(uint64_t (*a1)(uint64_t))
{
  v3 = sub_1BE04B944();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [*(v1 + OBJC_IVAR____TtC9PassKitUI36ProvisioningCarKeyInvitationFlowItem_credential) invitation];
  if (v8)
  {
    v9 = v8;
    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (!v10)
    {
      goto LABEL_8;
    }

    v11 = [v10 partnerIdentifier];
    if (!v11)
    {
      sub_1BE052434();
      v13 = v12;
      v11 = sub_1BE052404();
      v13, v14, v15, v16, v17, v18, v19, v20;
    }

    v21 = PKManufacturerIdentifierFromCredentialRoutingInformation();

    if (v21)
    {
      sub_1BE052434();
      v23 = v22;

      sub_1BE04BB94();
      v24 = sub_1BE04B934();
      (*(v4 + 8))(v7, v3);
      if ([v24 respondsToSelector_])
      {
        v32 = sub_1BE052404();
        aBlock[4] = PKEdgeInsetsMake;
        v50 = 0;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1BD03E30C;
        aBlock[3] = &block_descriptor_94;
        v33 = _Block_copy(aBlock);
        v50, v34, v35, v36, v37, v38, v39, v40;
        [v24 carKeyPreWarmForManufacturer:v32 completion:v33];
        _Block_release(v33);
        v23, v41, v42, v43, v44, v45, v46, v47;
        swift_unknownObjectRelease();
      }

      else
      {
        v23, v25, v26, v27, v28, v29, v30, v31;

        swift_unknownObjectRelease();
      }
    }

    else
    {
LABEL_8:
    }
  }

  return a1(1);
}

uint64_t sub_1BD4428BC()
{
  v44 = *MEMORY[0x1E69E9840];
  v1 = sub_1BE04BAC4();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + OBJC_IVAR____TtC9PassKitUI36ProvisioningCarKeyInvitationFlowItem_credential);
  v7 = [v6 invitation];
  if (v7)
  {
    v8 = v7;
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      v10 = v9;
      v11 = *(v0 + OBJC_IVAR____TtC9PassKitUI36ProvisioningCarKeyInvitationFlowItem_context);
      v12 = v0;
      sub_1BE04BC34();
      v13 = sub_1BE04B9A4();
      (*(v2 + 8))(v5, v1);
      v14 = [objc_allocWithZone(PKCarKeyInvitationViewController) initWithContext:v13 invitation:v10 delegate:v12];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46290, &qword_1BE0CC120);
      v15 = sub_1BE04C384();
      v16 = *(v15 - 8);
      v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1BE0B69E0;
      *(v18 + v17) = v6;
      (*(v16 + 104))(v18 + v17, *MEMORY[0x1E69B82A8], v15);
      sub_1BE04C3D4();
      swift_allocObject();
      v19 = v6;
      v20 = sub_1BE04C394();
      v21 = type metadata accessor for PKProvisioningFieldsUIRendererObjWrapper();
      v22 = objc_allocWithZone(v21);
      swift_unknownObjectWeakInit();
      v40 = v14;
      swift_unknownObjectWeakAssign();
      v42.receiver = v22;
      v42.super_class = v21;
      v23 = v14;
      v24 = objc_msgSendSuper2(&v42, sel_init);
      key[0] = 0;
      objc_setAssociatedObject(v23, key, v24, 1);
      v25 = type metadata accessor for CarKeyProvisioningUICoordinator();
      v26 = objc_allocWithZone(v25);
      *&v26[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_delegate + 8] = 0;
      swift_unknownObjectWeakInit();
      swift_unknownObjectWeakInit();
      v27 = &v26[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_renderer];
      *&v26[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_renderer + 8] = 0;
      swift_unknownObjectWeakInit();
      *&v26[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_credentialIndex] = 0;
      *&v26[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_composer] = 0;
      *&v26[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_fieldsModel] = 0;
      *&v26[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_provisioningError] = 0;
      *&v26[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_provisionedPasses] = 0;
      v26[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_queuedPendingProvisioning] = 0;
      *&v26[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_idleTimerAssertion] = 0;
      *&v26[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_context] = v11;
      *&v26[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_configuration] = v20;
      swift_beginAccess();
      swift_unknownObjectWeakAssign();
      swift_beginAccess();
      *(v27 + 1) = &off_1F3BC1D90;
      swift_unknownObjectWeakAssign();
      v41.receiver = v26;
      v41.super_class = v25;
      sub_1BE048964();
      sub_1BE048964();
      v28 = objc_msgSendSuper2(&v41, sel_init);
      v20, v29, v30, v31, v32, v33, v34, v35;

      v36 = &v28[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_delegate];
      swift_beginAccess();
      *(v36 + 1) = &off_1F3BA70C8;
      swift_unknownObjectWeakAssign();
      v37 = *(v12 + OBJC_IVAR____TtC9PassKitUI36ProvisioningCarKeyInvitationFlowItem_coordinator);
      *(v12 + OBJC_IVAR____TtC9PassKitUI36ProvisioningCarKeyInvitationFlowItem_coordinator) = v28;

      return v40;
    }
  }

  return 2;
}

uint64_t sub_1BD442D7C()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI36ProvisioningCarKeyInvitationFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD442DB8(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI36ProvisioningCarKeyInvitationFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void sub_1BD442FB8(void *a1, char a2)
{
  v3 = v2;
  if (a2)
  {
    v5 = v3 + OBJC_IVAR____TtC9PassKitUI36ProvisioningCarKeyInvitationFlowItem_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v6 = *(v5 + 8);
      ObjectType = swift_getObjectType();
      v49[0] = a1;
      v50 = 1;
      v8 = a1;
      sub_1BD865A00(v3, &off_1F3BA70D8, v49, ObjectType, v6);
      swift_unknownObjectRelease();
LABEL_8:
      sub_1BD12FF7C(v49);
      return;
    }

    return;
  }

  v9 = [*(v3 + OBJC_IVAR____TtC9PassKitUI36ProvisioningCarKeyInvitationFlowItem_credential) invitation];
  if (!v9)
  {
LABEL_12:
    sub_1BE053994();
    __break(1u);
    return;
  }

  v10 = v9;
  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (!v11)
  {

    goto LABEL_12;
  }

  v12 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD38570, &unk_1BE0B6A50);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1BE0B6CA0;
  v14 = *(v3 + OBJC_IVAR____TtC9PassKitUI36ProvisioningCarKeyInvitationFlowItem_context);
  v15 = type metadata accessor for ProvisioningCarInvitationActivationFlowItem();
  v16 = objc_allocWithZone(v15);
  *&v16[OBJC_IVAR____TtC9PassKitUI43ProvisioningCarInvitationActivationFlowItem_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v17 = &v16[OBJC_IVAR____TtC9PassKitUI43ProvisioningCarInvitationActivationFlowItem_identifier];
  *v17 = 0xD00000000000001FLL;
  *(v17 + 1) = 0x80000001BE129B30;
  *&v16[OBJC_IVAR____TtC9PassKitUI43ProvisioningCarInvitationActivationFlowItem_context] = v14;
  *&v16[OBJC_IVAR____TtC9PassKitUI43ProvisioningCarInvitationActivationFlowItem_provisionedPasses] = a1;
  *&v16[OBJC_IVAR____TtC9PassKitUI43ProvisioningCarInvitationActivationFlowItem_invitation] = v12;
  v48.receiver = v16;
  v48.super_class = v15;
  swift_retain_n();
  v18 = a1;
  v19 = v10;
  *(v13 + 32) = objc_msgSendSuper2(&v48, sel_init);
  *(v13 + 40) = &off_1F3B9FE30;
  objc_allocWithZone(type metadata accessor for ProvisioningPassIngestionSection());
  v20 = v18;
  v21 = sub_1BD989980(v14, v20);
  v14, v22, v23, v24, v25, v26, v27, v28;

  *(v13 + 48) = v21;
  *(v13 + 56) = &off_1F3BC8F80;
  type metadata accessor for UIStaticFlowSection();
  v29 = swift_allocObject();
  *(v29 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v29 + 40) = 0xD000000000000013;
  *(v29 + 48) = 0x80000001BE11E190;
  *(v29 + 56) = v13;
  *(v29 + 32) = 514;
  v30 = v3 + OBJC_IVAR____TtC9PassKitUI36ProvisioningCarKeyInvitationFlowItem_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v38 = *(v30 + 8);
    v39 = swift_getObjectType();
    v40 = sub_1BE04BD44();
    v49[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40E70, &unk_1BE0D6840);
    v49[0] = v40;
    v50 = 0;
    (*(v38 + 8))(v3, &off_1F3BA70D8, v49, v29, &off_1F3B98C00, v39, v38);
    v29, v41, v42, v43, v44, v45, v46, v47;
    swift_unknownObjectRelease();

    goto LABEL_8;
  }

  v29, v31, v32, v33, v34, v35, v36, v37;
}

uint64_t sub_1BD443350(unint64_t a1)
{
  v1 = a1;
  v24 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
    goto LABEL_30;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BE053704())
  {
    v3 = 0;
    v4 = v1 & 0xC000000000000001;
    v5 = v1 & 0xFFFFFFFFFFFFFF8;
    v6 = &selRef_recurringPaymentMemo;
    v23 = v1;
    while (1)
    {
      if (v4)
      {
        v7 = MEMORY[0x1BFB40900](v3, v1);
      }

      else
      {
        if (v3 >= *(v5 + 16))
        {
          goto LABEL_29;
        }

        v7 = *(v1 + 8 * v3 + 32);
      }

      v8 = v7;
      v9 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v10 = [v7 v6[161]];
      if (v10)
      {
        v11 = v10;
        v12 = [v10 status];

        if (v12 > 1)
        {
          if ((v12 - 4) < 2)
          {
            goto LABEL_23;
          }
        }

        else if (v12 == 1)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v13 = [v8 purchasedProductCredential];
        if (!v13)
        {
          goto LABEL_23;
        }

        v14 = v13;
        v15 = [v13 purchase];
        if (!v15)
        {

          goto LABEL_7;
        }

        v16 = i;
        v17 = v5;
        v18 = v4;
        v19 = v6;
        v20 = v15;
        v21 = [v15 state];

        if (v21 > 1)
        {
          v6 = v19;
          if (v21 == 2)
          {
            goto LABEL_25;
          }

          v4 = v18;
          v5 = v17;
          i = v16;
          v1 = v23;
        }

        else
        {
          v6 = v19;
          if (!v21)
          {
LABEL_25:

            v4 = v18;
            v5 = v17;
            i = v16;
            v1 = v23;
            goto LABEL_7;
          }

          v4 = v18;
          v5 = v17;
          i = v16;
          v1 = v23;
          if (v21 == 1)
          {
LABEL_23:
            sub_1BE0538C4();
            sub_1BE0538F4();
            sub_1BE053904();
            sub_1BE0538D4();
            goto LABEL_7;
          }
        }
      }

LABEL_7:
      ++v3;
      if (v9 == i)
      {
        return v24;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

void sub_1BD4435E4(void *a1, void *a2, uint64_t a3)
{
  v7 = sub_1BE04B944();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v184 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BE04D214();
  v185 = *(v11 - 8);
  v186 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v184 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v184 - v15;
  v189 = [objc_allocWithZone(sub_1BE04C114()) init];
  v190 = a3;
  v187 = a1;
  v188 = v3;
  if (!a2)
  {
    if (!a3)
    {
      v18 = MEMORY[0x1E69E7CC0];
      v72 = 1;
      goto LABEL_48;
    }

    v52 = sub_1BE048C84();
    v53 = sub_1BD443350(v52);
    a3, v54, v55, v56, v57, v58, v59, v60;
    if (v53 >> 62)
    {
      if (sub_1BE053704())
      {
        goto LABEL_7;
      }
    }

    else if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_7:
      sub_1BE04BB94();
      v61 = sub_1BE04B8E4();
      (*(v8 + 8))(v10, v7);
      v18 = sub_1BE04C0E4();

      sub_1BE048C84();
LABEL_17:
      v62 = v190;
      sub_1BE04D0F4();
      sub_1BE048C84();
      sub_1BE048C84();
      v73 = sub_1BE04D204();
      v74 = sub_1BE052C54();
      v18, v75, v76, v77, v78, v79, v80, v81;
      if (os_log_type_enabled(v73, v74))
      {
        v82 = v18;
        v83 = swift_slowAlloc();
        v91 = swift_slowAlloc();
        v191 = v91;
        *v83 = 134218242;
        if (v53 >> 62)
        {
          v92 = sub_1BE053704();
        }

        else
        {
          v92 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v53, v84, v85, v86, v87, v88, v89, v90;
        *(v83 + 4) = v92;
        v53, v93, v94, v95, v96, v97, v98, v99;
        *(v83 + 12) = 2080;
        v100 = sub_1BE04BDF4();
        v101 = MEMORY[0x1BFB3F7F0](v82, v100);
        v103 = v102;
        v104 = sub_1BD123690(v101, v102, &v191);
        v103, v105, v106, v107, v108, v109, v110, v111;
        *(v83 + 14) = v104;
        _os_log_impl(&dword_1BD026000, v73, v74, "Found requirements for %ld credentials: %s", v83, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v91, v112, v113, v114, v115, v116, v117, v118);
        MEMORY[0x1BFB45F20](v91, -1, -1);
        v119 = v83;
        v18 = v82;
        MEMORY[0x1BFB45F20](v119, -1, -1);
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      (v185[1])(v13, v186);
      goto LABEL_24;
    }

    v18 = MEMORY[0x1E69E7CC0];
    goto LABEL_17;
  }

  v17 = a2;
  v18 = sub_1BE04C0F4();
  sub_1BE048C84();
  sub_1BE04D0F4();
  v19 = v17;
  v20 = sub_1BE04D204();
  v21 = sub_1BE052C54();

  v18, v22, v23, v24, v25, v26, v27, v28;
  if (os_log_type_enabled(v20, v21))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v184 = swift_slowAlloc();
    v191 = v184;
    *v29 = 136315394;
    v31 = sub_1BE04BDF4();
    v32 = MEMORY[0x1BFB3F7F0](v18, v31);
    v34 = v33;
    v35 = sub_1BD123690(v32, v33, &v191);
    v34, v36, v37, v38, v39, v40, v41, v42;
    *(v29 + 4) = v35;
    *(v29 + 12) = 2112;
    *(v29 + 14) = v19;
    *v30 = a2;
    v43 = v19;
    _os_log_impl(&dword_1BD026000, v20, v21, "Found requirements: %s \n\nfor product: %@", v29, 0x16u);
    sub_1BD1E236C(v30);
    MEMORY[0x1BFB45F20](v30, -1, -1);
    v44 = v184;
    __swift_destroy_boxed_opaque_existential_0(v184, v45, v46, v47, v48, v49, v50, v51);
    MEMORY[0x1BFB45F20](v44, -1, -1);
    MEMORY[0x1BFB45F20](v29, -1, -1);
  }

  else
  {
  }

  (v185[1])(v16, v186);
  v62 = v190;
  sub_1BE048C84();
  v63 = [v19 configuration];
  if (v63)
  {
    v64 = v63;
    a3 = [v63 featureIdentifier];

    if (a3)
    {
      v72 = 0;
LABEL_47:
      v62, v65, v66, v67, v68, v69, v70, v71;
      goto LABEL_48;
    }

    if (!v62)
    {
      a3 = 0;
      v72 = 1;
LABEL_48:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD38570, &unk_1BE0B6A50);
      v152 = swift_allocObject();
      *(v152 + 16) = xmmword_1BE0B98D0;
      v153 = objc_allocWithZone(type metadata accessor for ProvisioningHSA2FlowItem());
      v154 = v187;
      sub_1BE048964();
      sub_1BE048C84();
      v155 = sub_1BD893F64(v154, v18, a3, v72);
      v154, v156, v157, v158, v159, v160, v161, v162;
      *(v152 + 32) = v155;
      *(v152 + 40) = &off_1F3BC20B8;
      v163 = objc_allocWithZone(type metadata accessor for ProvisioningPasscodeUpgradeFlowSection());
      v164 = sub_1BE048964();
      v165 = sub_1BD25D5A8(v164, v18, 0);
      v154, v166, v167, v168, v169, v170, v171, v172;
      *(v152 + 48) = v165;
      *(v152 + 56) = &off_1F3B99F60;
      v173 = objc_allocWithZone(type metadata accessor for ProvisioningManateeSetupFlowItem());
      v174 = sub_1BE048964();
      v175 = sub_1BD68F128(v174, v18, a3, v72);
      v154, v176, v177, v178, v179, v180, v181, v182;
      *(v152 + 64) = v175;
      *(v152 + 72) = &off_1F3BB44C8;
      v183 = v188;
      *(v188 + 24) = 0;
      swift_unknownObjectWeakInit();
      *(v183 + 32) = 514;

      *(v183 + 40) = 0xD000000000000017;
      *(v183 + 48) = 0x80000001BE129BC0;
      *(v183 + 56) = v152;
      *(v183 + 32) = 514;
      return;
    }

LABEL_24:
    if (v62 >> 62)
    {
      goto LABEL_45;
    }

    for (i = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BE053704())
    {
      v121 = v62 & 0xC000000000000001;
      v185 = v18;
      v186 = v62 & 0xFFFFFFFFFFFFFF8;
      sub_1BE048C84();
      v122 = 0;
      a3 = 0;
      v72 = 1;
      v18 = &selRef__updateDisplayForFieldTypeDate_;
      while (1)
      {
        if (v121)
        {
          v123 = MEMORY[0x1BFB40900](v122, v62);
        }

        else
        {
          if (v122 >= *(v186 + 16))
          {
            goto LABEL_44;
          }

          v123 = *(v62 + 8 * v122 + 32);
        }

        v124 = v123;
        v125 = v122 + 1;
        if (__OFADD__(v122, 1))
        {
          break;
        }

        v126 = [v123 accountCredential];
        if (v126)
        {
          v127 = v126;
          v128 = [v126 account];

          if (!v128)
          {
            __break(1u);
            goto LABEL_50;
          }

          v129 = [v128 feature];

          v62 = v190;
          if (v129)
          {

            v62, v145, v146, v147, v148, v149, v150, v151;
            v72 = 0;
            a3 = v129;
            goto LABEL_42;
          }
        }

        if ([v124 isAppleBalanceCredential])
        {

          v62, v138, v139, v140, v141, v142, v143, v144;
          v72 = 0;
          a3 = 4;
          goto LABEL_42;
        }

        v130 = [v124 isPeerPaymentCredential];

        if (v130)
        {
          a3 = 1;
        }

        v72 &= v130 ^ 1;
        ++v122;
        if (v125 == i)
        {
          v62, v131, v132, v133, v134, v135, v136, v137;
LABEL_42:
          v18 = v185;
          goto LABEL_47;
        }
      }

      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      ;
    }

    a3 = 0;
    v72 = 1;
    goto LABEL_47;
  }

LABEL_50:
  __break(1u);
}

char *sub_1BD443E20(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC9PassKitUI50PKDashboardFinanceKitTransactionCollectionViewCell_transactionView;
  *&v4[v9] = [objc_allocWithZone(PKPaymentTransactionView) init];
  *&v4[OBJC_IVAR____TtC9PassKitUI50PKDashboardFinanceKitTransactionCollectionViewCell_iconTask] = 0;
  v10 = OBJC_IVAR____TtC9PassKitUI50PKDashboardFinanceKitTransactionCollectionViewCell_currentTransactionID;
  v11 = sub_1BE04AFE4();
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  v16.receiver = v4;
  v16.super_class = type metadata accessor for PKDashboardFinanceKitTransactionCollectionViewCell(0);
  v12 = objc_msgSendSuper2(&v16, sel_initWithFrame_, a1, a2, a3, a4);
  v13 = [v12 contentView];
  [v13 addSubview_];

  v14 = [v12 contentView];
  [v14 setClipsToBounds_];

  return v12;
}

uint64_t sub_1BD44408C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39980, &qword_1BE0BF3C0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v26 - v2;
  v4 = type metadata accessor for PKDashboardFinanceKitTransactionCollectionViewCell(0);
  v27.receiver = v0;
  v27.super_class = v4;
  objc_msgSendSuper2(&v27, sel_prepareForReuse);
  v5 = *&v0[OBJC_IVAR____TtC9PassKitUI50PKDashboardFinanceKitTransactionCollectionViewCell_transactionView];
  [v5 setPrimaryColor_];
  [v5 setSecondaryColor_];
  [v5 setPrimaryString_];
  [v5 setSecondaryString_];
  [v5 setTertiaryString_];
  [v5 setTransactionValueAttributedText_];
  [v5 setBadgeString_];
  [v5 setShowsAvatarView_];
  [v5 setShowsDisclosureView_];
  [v5 setPrimaryImage_];
  [v5 setSecondaryBadgeSymbol_];
  [v5 setSecondaryBadgeSymbolConfiguration_];
  v13 = OBJC_IVAR____TtC9PassKitUI50PKDashboardFinanceKitTransactionCollectionViewCell_iconTask;
  v14 = *&v0[OBJC_IVAR____TtC9PassKitUI50PKDashboardFinanceKitTransactionCollectionViewCell_iconTask];
  if (v14)
  {
    sub_1BE048964();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0, &qword_1BE0BFD10);
    sub_1BE052944();
    v14, v15, v16, v17, v18, v19, v20, v21;
    v22 = *&v0[v13];
  }

  else
  {
    v22 = 0;
  }

  *&v0[v13] = 0;
  v22, v6, v7, v8, v9, v10, v11, v12;
  v23 = sub_1BE04AFE4();
  (*(*(v23 - 8) + 56))(v3, 1, 1, v23);
  v24 = OBJC_IVAR____TtC9PassKitUI50PKDashboardFinanceKitTransactionCollectionViewCell_currentTransactionID;
  swift_beginAccess();
  sub_1BD12651C(v3, &v0[v24]);
  return swift_endAccess();
}

uint64_t type metadata accessor for PKDashboardFinanceKitTransactionCollectionViewCell(uint64_t a1)
{
  result = qword_1EBD462B0;
  if (!qword_1EBD462B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD444474(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580, &unk_1BE0B9000);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v45 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39980, &qword_1BE0BF3C0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v45 - v8;
  v10 = sub_1BE04AFE4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v47 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v45 - v14;
  sub_1BD444834(a1 + OBJC_IVAR____TtC9PassKitUI36PKDashboardFinanceKitTransactionItem_transaction, a1 + OBJC_IVAR____TtC9PassKitUI36PKDashboardFinanceKitTransactionItem_institution);
  sub_1BE049A14();
  v16 = *(v11 + 16);
  v16(v9, v15, v10);
  (*(v11 + 56))(v9, 0, 1, v10);
  v17 = OBJC_IVAR____TtC9PassKitUI50PKDashboardFinanceKitTransactionCollectionViewCell_currentTransactionID;
  swift_beginAccess();
  sub_1BD12651C(v9, &v2[v17]);
  swift_endAccess();
  v18 = v2;
  v46 = OBJC_IVAR____TtC9PassKitUI50PKDashboardFinanceKitTransactionCollectionViewCell_iconTask;
  v19 = *&v2[OBJC_IVAR____TtC9PassKitUI50PKDashboardFinanceKitTransactionCollectionViewCell_iconTask];
  if (v19)
  {
    sub_1BE048964();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0, &qword_1BE0BFD10);
    sub_1BE052944();
    v19, v20, v21, v22, v23, v24, v25, v26;
  }

  v27 = sub_1BE0528D4();
  (*(*(v27 - 8) + 56))(v6, 1, 1, v27);
  v28 = v47;
  v16(v47, v15, v10);
  sub_1BE0528A4();
  v29 = v18;
  v30 = sub_1BE052894();
  v31 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v45 = v15;
  v32 = v6;
  v33 = (v12 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  v35 = MEMORY[0x1E69E85E0];
  *(v34 + 2) = v30;
  *(v34 + 3) = v35;
  (*(v11 + 32))(&v34[v31], v28, v10);
  *&v34[v33] = v29;
  v36 = sub_1BDA543A4(0, 0, v32, &unk_1BE0D68F0, v34);
  (*(v11 + 8))(v45, v10);
  v37 = *&v18[v46];
  *&v18[v46] = v36;
  v37, v38, v39, v40, v41, v42, v43, v44;
}

void sub_1BD444834(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v120 = a2;
  v112 = sub_1BE04BD74();
  v111 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v110 = &v109 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_1BE04B2F4();
  v114 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v113 = &v109 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE04AF64();
  v118 = *(v7 - 8);
  v119 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v116 = &v109 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE04B0F4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v109 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BE0493F4();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v109 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = a1;
  sub_1BE049A04();
  v18 = v17;
  v19 = sub_1BE052404();
  v18, v20, v21, v22, v23, v24, v25, v26;
  [v3 setPrimaryString_];

  sub_1BE0499A4();
  sub_1BE04B054();
  sub_1BE0493E4();
  v28 = v27;
  (*(v10 + 8))(v12, v9);
  (*(v14 + 8))(v16, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD430F8, &unk_1BE0F47B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B6CA0;
  v30 = *MEMORY[0x1E69DB650];
  *(inited + 32) = *MEMORY[0x1E69DB650];
  v31 = sub_1BD1F2290();
  v32 = v30;
  sub_1BE051464();
  v33 = sub_1BE052FE4();
  v34 = MEMORY[0x1E69DB600];
  *(inited + 40) = v33;
  v35 = *v34;
  *(inited + 64) = v31;
  *(inited + 72) = v35;
  v36 = objc_opt_self();
  v37 = v35;
  v38 = [v36 clearColor];
  *(inited + 104) = v31;
  *(inited + 80) = v38;
  v39 = sub_1BD1ACD28(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BF68, &unk_1BE0CF350);
  swift_arrayDestroy();
  v40 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v41 = sub_1BE052404();
  v28, v42, v43, v44, v45, v46, v47, v48;
  type metadata accessor for Key(0);
  sub_1BD4469F8(&qword_1EBD37B80, type metadata accessor for Key, &unk_1BE0B3A08);
  v49 = sub_1BE052224();
  v39, v50, v51, v52, v53, v54, v55, v56;
  v57 = [v40 initWithString:v41 attributes:v49];

  v121 = v3;
  [v3 setTransactionValueAttributedText_];
  sub_1BE0499C4();
  if (v58)
  {
    v59 = v58;
    v60 = sub_1BE052404();
    v59, v61, v62, v63, v64, v65, v66, v67;
  }

  else
  {
    v60 = 0;
  }

  [v121 setSecondaryString_];

  v68 = v116;
  sub_1BE049974();
  v69 = sub_1BE04AE64();
  v70 = v119;
  v71 = *(v118 + 8);
  v71(v68, v119);
  v72 = PKRelativeDateStringWithFullDateForUnits();

  if (v72)
  {
    sub_1BE052434();
    v74 = v73;
  }

  else
  {
    v74 = 0;
  }

  if ((sub_1BE049164() & 1) != 0 || (v75 = v113, sub_1BE04B2A4(), sub_1BE049974(), v76 = sub_1BE04B164(), v71(v68, v70), (*(v114 + 8))(v75, v115), (v76 & 1) == 0))
  {
    if (!v74)
    {
      v98 = 0;
LABEL_15:
      v108 = v121;
      [v121 setTertiaryString_];

      [v108 setShowsDisclosureView_];
      return;
    }

LABEL_12:
    v90 = sub_1BE052404();
    v74, v91, v92, v93, v94, v95, v96, v97;
    v98 = [v90 pk_uppercaseFirstStringForPreferredLocale];

    if (v98)
    {
      sub_1BE052434();
      v100 = v99;

      v98 = sub_1BE052404();
      v100, v101, v102, v103, v104, v105, v106, v107;
    }

    goto LABEL_15;
  }

  v74, v77, v78, v79, v80, v81, v82, v83;
  v84 = v111;
  v85 = v110;
  v86 = v112;
  (*(v111 + 104))(v110, *MEMORY[0x1E69B80D0], v112);
  v87 = PKPassKitBundle();
  if (v87)
  {
    v88 = v87;
    sub_1BE04B6F4();
    v74 = v89;

    (*(v84 + 8))(v85, v86);
    goto LABEL_12;
  }

  __break(1u);
}

uint64_t sub_1BD444FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_1BE04AFE4();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v5[6] = *(v7 + 64);
  v5[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580, &unk_1BE0B9000);
  v5[8] = swift_task_alloc();
  v8 = sub_1BE0491F4();
  v5[9] = v8;
  v9 = *(v8 - 8);
  v5[10] = v9;
  v5[11] = *(v9 + 64);
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45CC0, &qword_1BE0D5630);
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v5[16] = sub_1BE0528A4();
  v5[17] = sub_1BE052894();
  v11 = sub_1BE052844();
  v5[18] = v11;
  v5[19] = v10;

  return MEMORY[0x1EEE6DFA0](sub_1BD4451A0, v11, v10);
}

uint64_t sub_1BD4451A0()
{
  sub_1BE0490F4();
  v0[20] = sub_1BE0490B4();
  v1 = swift_task_alloc();
  v0[21] = v1;
  *v1 = v0;
  v1[1] = sub_1BD44525C;
  v2 = v0[15];
  v3 = v0[2];

  return MEMORY[0x1EEDC14C0](v2, v3, 1, 1);
}

uint64_t sub_1BD44525C()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v10 = *(v2 + 144);
    v11 = *(v2 + 152);
    v12 = sub_1BD4458B4;
  }

  else
  {
    *(v2 + 160), v3, v4, v5, v6, v7, v8, v9;
    v10 = *(v2 + 144);
    v11 = *(v2 + 152);
    v12 = sub_1BD445378;
  }

  return MEMORY[0x1EEE6DFA0](v12, v10, v11);
}

uint64_t sub_1BD445378(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 112);
  v10 = *(v8 + 120);
  v11 = *(v8 + 72);
  v12 = *(v8 + 80);
  *(v8 + 136), a2, a3, a4, a5, a6, a7, a8;
  v13 = PKUIScreenScale();
  sub_1BD0DE19C(v10, v9, &qword_1EBD45CC0, &qword_1BE0D5630);
  if ((*(v12 + 48))(v9, 1, v11) == 1)
  {
    sub_1BD0DE53C(*(v8 + 112), &qword_1EBD45CC0, &qword_1BE0D5630);
  }

  else
  {
    v14 = *(*(v8 + 80) + 32);
    v14(*(v8 + 104), *(v8 + 112), *(v8 + 72));
    v15 = sub_1BE0491E4();
    v17 = v16;
    v18 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
    v19 = sub_1BE04AAB4();
    v20 = [v18 initWithData_];

    sub_1BD1245AC(v15, v17, v21, v22, v23, v24, v25, v26);
    if (v20)
    {
      v27 = *(v8 + 96);
      v28 = *(v8 + 104);
      v85 = v28;
      v86 = *(v8 + 88);
      v78 = *(v8 + 80);
      v30 = *(v8 + 64);
      v29 = *(v8 + 72);
      v81 = v29;
      v87 = v30;
      v31 = *(v8 + 56);
      v84 = v27;
      v82 = *(v8 + 48);
      v88 = v14;
      v32 = *(v8 + 32);
      v33 = *(v8 + 40);
      v83 = v32;
      v34 = *(v8 + 16);
      v79 = *(v8 + 24);
      v35 = sub_1BE0528D4();
      (*(*(v35 - 8) + 56))(v30, 1, 1, v35);
      (*(v33 + 16))(v31, v34, v32);
      (*(v78 + 16))(v27, v28, v29);
      v80 = v79;
      v36 = v20;
      v37 = sub_1BE052894();
      v38 = (*(v33 + 80) + 40) & ~*(v33 + 80);
      v39 = (v82 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
      v40 = (*(v78 + 80) + v39 + 8) & ~*(v78 + 80);
      v41 = swift_allocObject();
      v42 = MEMORY[0x1E69E85E0];
      *(v41 + 2) = v37;
      *(v41 + 3) = v42;
      *(v41 + 4) = v80;
      (*(v33 + 32))(&v41[v38], v31, v83);
      *&v41[v39] = v36;
      v88(&v41[v40], v84, v81);
      *&v41[(v86 + v40 + 7) & 0xFFFFFFFFFFFFFFF8] = v13;
      v43 = sub_1BD122C00(0, 0, v87, &unk_1BE0D6918, v41);
      v43, v44, v45, v46, v47, v48, v49, v50;

      (*(v78 + 8))(v85, v81);
      goto LABEL_8;
    }

    (*(*(v8 + 80) + 8))(*(v8 + 104), *(v8 + 72));
  }

  v51 = PKMapsColorForMerchantCategory();
  v52 = PKIconForGenericBusiness();

  if (v52)
  {
    v54 = *(v8 + 56);
    v53 = *(v8 + 64);
    v89 = v53;
    v56 = *(v8 + 40);
    v55 = *(v8 + 48);
    v58 = *(v8 + 24);
    v57 = *(v8 + 32);
    v59 = *(v8 + 16);
    v60 = sub_1BE0528D4();
    (*(*(v60 - 8) + 56))(v53, 1, 1, v60);
    (*(v56 + 16))(v54, v59, v57);
    v61 = v58;
    v62 = v52;
    v63 = sub_1BE052894();
    v64 = (*(v56 + 80) + 40) & ~*(v56 + 80);
    v65 = (v55 + v64 + 7) & 0xFFFFFFFFFFFFFFF8;
    v66 = swift_allocObject();
    v67 = MEMORY[0x1E69E85E0];
    *(v66 + 2) = v63;
    *(v66 + 3) = v67;
    *(v66 + 4) = v61;
    (*(v56 + 32))(&v66[v64], v54, v57);
    *&v66[v65] = v62;
    *&v66[(v65 + 15) & 0xFFFFFFFFFFFFFFF8] = v13;
    v68 = sub_1BD122C00(0, 0, v89, &unk_1BE0D6908, v66);
    v68, v69, v70, v71, v72, v73, v74, v75;
  }

LABEL_8:
  sub_1BD0DE53C(*(v8 + 120), &qword_1EBD45CC0, &qword_1BE0D5630);

  v76 = *(v8 + 8);

  return v76();
}

uint64_t sub_1BD4458B4(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 160);
  *(v8 + 136), a2, a3, a4, a5, a6, a7, a8;
  v9, v10, v11, v12, v13, v14, v15, v16;

  v17 = *(v8 + 8);

  return v17();
}

uint64_t sub_1BD445978(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 72) = a1;
  *(v8 + 56) = a7;
  *(v8 + 64) = a8;
  *(v8 + 40) = a5;
  *(v8 + 48) = a6;
  v9 = sub_1BE04AFE4();
  *(v8 + 80) = v9;
  *(v8 + 88) = *(v9 - 8);
  *(v8 + 96) = swift_task_alloc();
  *(v8 + 104) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39AD0, &qword_1BE0B9600);
  *(v8 + 112) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39980, &qword_1BE0BF3C0);
  *(v8 + 120) = swift_task_alloc();
  *(v8 + 128) = swift_task_alloc();
  sub_1BE0528A4();
  *(v8 + 136) = sub_1BE052894();
  v11 = sub_1BE052844();

  return MEMORY[0x1EEE6DFA0](sub_1BD445AF4, v11, v10);
}

id sub_1BD445AF4(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 128);
  v11 = *(v8 + 104);
  v10 = *(v8 + 112);
  v12 = *(v8 + 80);
  v13 = *(v8 + 88);
  v15 = *(v8 + 40);
  v14 = *(v8 + 48);
  *(v8 + 136), a2, a3, a4, a5, a6, a7, a8;
  v16 = OBJC_IVAR____TtC9PassKitUI50PKDashboardFinanceKitTransactionCollectionViewCell_currentTransactionID;
  swift_beginAccess();
  (*(v13 + 16))(v9, v14, v12);
  (*(v13 + 56))(v9, 0, 1, v12);
  v17 = *(v11 + 48);
  sub_1BD0DE19C(v15 + v16, v10, &qword_1EBD39980, &qword_1BE0BF3C0);
  sub_1BD0DE19C(v9, v10 + v17, &qword_1EBD39980, &qword_1BE0BF3C0);
  v18 = *(v13 + 48);
  if (v18(v10, 1, v12) != 1)
  {
    v20 = *(v8 + 80);
    sub_1BD0DE19C(*(v8 + 112), *(v8 + 120), &qword_1EBD39980, &qword_1BE0BF3C0);
    v21 = v18(v10 + v17, 1, v20);
    v22 = *(v8 + 120);
    v23 = *(v8 + 128);
    if (v21 != 1)
    {
      v26 = *(v8 + 112);
      v28 = *(v8 + 88);
      v27 = *(v8 + 96);
      v29 = *(v8 + 80);
      (*(v28 + 32))(v27, v10 + v17, v29);
      sub_1BD4469F8(&unk_1EBD36A30, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v30 = sub_1BE052334();
      v31 = *(v28 + 8);
      v31(v27, v29);
      sub_1BD0DE53C(v23, &qword_1EBD39980, &qword_1BE0BF3C0);
      v31(v22, v29);
      sub_1BD0DE53C(v26, &qword_1EBD39980, &qword_1BE0BF3C0);
      if ((v30 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_8;
    }

    v24 = *(v8 + 80);
    v25 = *(v8 + 88);
    sub_1BD0DE53C(*(v8 + 128), &qword_1EBD39980, &qword_1BE0BF3C0);
    (*(v25 + 8))(v22, v24);
LABEL_6:
    sub_1BD0DE53C(*(v8 + 112), &unk_1EBD39AD0, &qword_1BE0B9600);
    goto LABEL_13;
  }

  v19 = *(v8 + 80);
  sub_1BD0DE53C(*(v8 + 128), &qword_1EBD39980, &qword_1BE0BF3C0);
  if (v18(v10 + v17, 1, v19) != 1)
  {
    goto LABEL_6;
  }

  sub_1BD0DE53C(*(v8 + 112), &qword_1EBD39980, &qword_1BE0BF3C0);
LABEL_8:
  v32 = sub_1BE0491C4();
  if (v32)
  {
    v33 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];

    v32 = v33;
    result = PKIconWithImageAndBackgroundColor();
    if (!result)
    {
      __break(1u);
      return result;
    }

    v35 = result;
  }

  else
  {
    v35 = *(v8 + 56);
  }

  [*(*(v8 + 40) + OBJC_IVAR____TtC9PassKitUI50PKDashboardFinanceKitTransactionCollectionViewCell_transactionView) setPrimaryImage:v35 animated:1];

LABEL_13:

  v36 = *(v8 + 8);

  return v36();
}

uint64_t sub_1BD445EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v7 = sub_1BE04AFE4();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();
  v6[11] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39AD0, &qword_1BE0B9600);
  v6[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39980, &qword_1BE0BF3C0);
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  sub_1BE0528A4();
  v6[15] = sub_1BE052894();
  v9 = sub_1BE052844();

  return MEMORY[0x1EEE6DFA0](sub_1BD446060, v9, v8);
}

uint64_t sub_1BD446060(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 112);
  v11 = *(v8 + 88);
  v10 = *(v8 + 96);
  v12 = *(v8 + 64);
  v13 = *(v8 + 72);
  v15 = *(v8 + 40);
  v14 = *(v8 + 48);
  *(v8 + 120), a2, a3, a4, a5, a6, a7, a8;
  v16 = OBJC_IVAR____TtC9PassKitUI50PKDashboardFinanceKitTransactionCollectionViewCell_currentTransactionID;
  swift_beginAccess();
  (*(v13 + 16))(v9, v14, v12);
  (*(v13 + 56))(v9, 0, 1, v12);
  v17 = *(v11 + 48);
  sub_1BD0DE19C(v15 + v16, v10, &qword_1EBD39980, &qword_1BE0BF3C0);
  sub_1BD0DE19C(v9, v10 + v17, &qword_1EBD39980, &qword_1BE0BF3C0);
  v18 = *(v13 + 48);
  if (v18(v10, 1, v12) != 1)
  {
    v20 = *(v8 + 64);
    sub_1BD0DE19C(*(v8 + 96), *(v8 + 104), &qword_1EBD39980, &qword_1BE0BF3C0);
    v21 = v18(v10 + v17, 1, v20);
    v22 = *(v8 + 104);
    v23 = *(v8 + 112);
    if (v21 != 1)
    {
      v26 = *(v8 + 96);
      v28 = *(v8 + 72);
      v27 = *(v8 + 80);
      v29 = *(v8 + 64);
      (*(v28 + 32))(v27, v10 + v17, v29);
      sub_1BD4469F8(&unk_1EBD36A30, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v30 = sub_1BE052334();
      v31 = *(v28 + 8);
      v31(v27, v29);
      sub_1BD0DE53C(v23, &qword_1EBD39980, &qword_1BE0BF3C0);
      v31(v22, v29);
      sub_1BD0DE53C(v26, &qword_1EBD39980, &qword_1BE0BF3C0);
      if ((v30 & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    v24 = *(v8 + 64);
    v25 = *(v8 + 72);
    sub_1BD0DE53C(*(v8 + 112), &qword_1EBD39980, &qword_1BE0BF3C0);
    (*(v25 + 8))(v22, v24);
LABEL_6:
    sub_1BD0DE53C(*(v8 + 96), &unk_1EBD39AD0, &qword_1BE0B9600);
    goto LABEL_9;
  }

  v19 = *(v8 + 64);
  sub_1BD0DE53C(*(v8 + 112), &qword_1EBD39980, &qword_1BE0BF3C0);
  if (v18(v10 + v17, 1, v19) != 1)
  {
    goto LABEL_6;
  }

  sub_1BD0DE53C(*(v8 + 96), &qword_1EBD39980, &qword_1BE0BF3C0);
LABEL_8:
  [*(*(v8 + 40) + OBJC_IVAR____TtC9PassKitUI50PKDashboardFinanceKitTransactionCollectionViewCell_transactionView) setPrimaryImage:*(v8 + 56) animated:1];
LABEL_9:

  v32 = *(v8 + 8);

  return v32();
}

id PKDashboardFinanceKitTransactionCollectionViewCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PKDashboardFinanceKitTransactionCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1BD446528(uint64_t a1)
{
  sub_1BD12513C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1BD4465E8(uint64_t a1)
{
  v4 = *(sub_1BE04AFE4() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1BD0F985C;

  return sub_1BD444FB4(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1BD446708(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1BE04AFE4() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1BD0F985C;

  return sub_1BD445EE8(a1, v7, v8, v9, v1 + v6, v10);
}

uint64_t sub_1BD44684C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1BE04AFE4() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_1BE0491F4() - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = *(v1 + v7);
  v14 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_1BD126968;

  return sub_1BD445978(v14, a1, v10, v11, v12, v1 + v6, v13, v1 + v9);
}

uint64_t sub_1BD4469F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BD446A6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DBE0, &unk_1BE0D69B0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9[-v6];
  v10 = a1;
  v11 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DC00, &unk_1BE0C2460);
  sub_1BD0DE4F4(&qword_1EBD3DBF8, &qword_1EBD3DC00, &unk_1BE0C2460, MEMORY[0x1E6981870]);
  sub_1BE051A44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80, &qword_1BE0BB860);
  sub_1BD210888();
  sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80, &qword_1BE0BB860, MEMORY[0x1E697D680]);
  sub_1BE050AE4();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1BD446C44@<X0>(uint64_t a3@<X8>)
{
  *a3 = sub_1BE04F7C4();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DC08, &qword_1BE0D69C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B660, &qword_1BE0C2470);
  sub_1BD0DE4F4(&qword_1EBD3B668, &qword_1EBD3B660, &qword_1BE0C2470, MEMORY[0x1E6981F48]);
  return sub_1BE04E2B4();
}

void sub_1BD446D20(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v75 = a1;
  v76 = a2;
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v69[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v69[-v10];
  v12 = *MEMORY[0x1E69B80F0];
  v74 = *(v5 + 104);
  v74(&v69[-v10], v12, v4, v9);
  v13 = PKPassKitBundle();
  if (v13)
  {
    v14 = v13;
    v15 = sub_1BE04B6F4();
    v17 = v16;

    v71 = *(v5 + 8);
    v71(v11, v4);
    v78 = v15;
    v79 = v17;
    sub_1BD0DDEBC();
    v18 = MEMORY[0x1E69E6158];
    v19 = sub_1BE0506C4();
    v72 = v20;
    v73 = v21;
    v70 = v22;
    (v74)(v7, v12, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1BE0B69E0;
    *(v23 + 56) = v18;
    *(v23 + 64) = sub_1BD110550();
    v24 = v76;
    *(v23 + 32) = v75;
    *(v23 + 40) = v24;
    sub_1BE048C84();
    v25 = sub_1BE04B714();
    v27 = v26;
    v23, v26, v28, v29, v30, v31, v32, v33;
    v71(v7, v4);
    v78 = v25;
    v79 = v27;
    v34 = sub_1BE0506C4();
    v36 = v35;
    v38 = v37;
    v39 = v70 & 1;
    v77 = v70 & 1;
    LOBYTE(v78) = v70 & 1;
    v41 = (v40 & 1);
    v80 = v40 & 1;
    v42 = v72;
    v43 = v73;
    *a3 = v19;
    *(a3 + 8) = v42;
    *(a3 + 16) = v39;
    *(a3 + 24) = v43;
    *(a3 + 32) = v34;
    *(a3 + 40) = v36;
    *(a3 + 48) = v40 & 1;
    *(a3 + 56) = v37;
    v44 = v42;
    sub_1BD0D7F18(v19, v42, v39);
    sub_1BE048C84();
    sub_1BD0D7F18(v34, v36, v41);
    sub_1BE048C84();
    sub_1BD0DDF10(v34, v36, v41, v45, v46, v47, v48, v49);
    v38, v50, v51, v52, v53, v54, v55, v56;
    sub_1BD0DDF10(v19, v44, v77, v57, v58, v59, v60, v61);
    v43, v62, v63, v64, v65, v66, v67, v68;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BD447078()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v19 - v1;
  v3 = sub_1BE04AA64();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04AA54();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    return sub_1BD226BBC(v2);
  }

  (*(v4 + 32))(v6, v2, v3);
  v8 = [objc_opt_self() sharedApplication];
  v9 = sub_1BE04A9C4();
  v10 = sub_1BD1ABAC0(MEMORY[0x1E69E7CC0]);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_1BD1BD0CC();
  v11 = sub_1BE052224();
  v10, v12, v13, v14, v15, v16, v17, v18;
  [v8 openURL:v9 options:v11 completionHandler:0];

  return (*(v4 + 8))(v6, v3);
}

id sub_1BD44729C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, *MEMORY[0x1E69B80F0], v2, v4);
  result = PKPassKitBundle();
  if (result)
  {
    v8 = result;
    v9 = sub_1BE04B6F4();
    v11 = v10;

    (*(v3 + 8))(v6, v2);
    v15[0] = v9;
    v15[1] = v11;
    sub_1BD0DDEBC();
    result = sub_1BE0506C4();
    *a1 = result;
    *(a1 + 8) = v12;
    *(a1 + 16) = v13 & 1;
    *(a1 + 24) = v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD447408()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD462C0, &qword_1BE0D69A8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3DBE0, &unk_1BE0D69B0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD3DF80, &qword_1BE0BB860);
  sub_1BD210888();
  sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80, &qword_1BE0BB860, MEMORY[0x1E697D680]);
  swift_getOpaqueTypeConformance2();
  return sub_1BE051A44();
}

unint64_t sub_1BD447538()
{
  result = qword_1EBD462C8;
  if (!qword_1EBD462C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD462D0, &qword_1BE0D69C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3DBE0, &unk_1BE0D69B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD3DF80, &qword_1BE0BB860);
    sub_1BD210888();
    sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80, &qword_1BE0BB860, MEMORY[0x1E697D680]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD462C8);
  }

  return result;
}

uint64_t sub_1BD447690@<X0>(void *a1@<X1>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v164 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD462D8, &qword_1BE0D6A78);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v161 = &v154 - v6;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD462E0, &qword_1BE0D6A80);
  v160 = *(v159 - 8);
  MEMORY[0x1EEE9AC00](v159);
  v158 = &v154 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD462E8, &qword_1BE0D6A88);
  v9 = *(v8 - 8);
  v162 = v8;
  v163 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v167 = &v154 - v10;
  v168 = a1;
  v169 = a2;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD462F0, &qword_1BE0D6A90);
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD462F8, &qword_1BE0D6A98);
  v11 = sub_1BD0DE4F4(&qword_1EBD46300, &qword_1EBD462F0, &qword_1BE0D6A90, MEMORY[0x1E697FDF8]);
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46308, &unk_1BE0D6AA0);
  v13 = sub_1BD0DE4F4(&qword_1EBD46310, &qword_1EBD46308, &unk_1BE0D6AA0, MEMORY[0x1E697BEF0]);
  v170 = v12;
  v171 = v13;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1BE051024();
  v176 = a1;
  v177 = a2;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54210, &qword_1BE0FA1C0);
  sub_1BE0516C4();
  v15 = v170;
  v16 = v171;
  v17 = v172;
  KeyPath = swift_getKeyPath();
  v176 = v15;
  v177 = v16;
  v178 = v17;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD543A0, &qword_1BE0D6AD8);
  sub_1BE051904();
  KeyPath, v19, v20, v21, v22, v23, v24, v25;
  v27 = v174;
  v26 = v175;
  v17, v28, v29, v30, v31, v32, v33, v34;
  v16, v35, v36, v37, v38, v39, v40, v41;
  v15, v42, v43, v44, v45, v46, v47, v48;
  v49 = swift_allocObject();
  v49[2] = a1;
  v49[3] = a2;
  v50 = swift_allocObject();
  v50[2] = a1;
  v50[3] = a2;
  v51 = a2;
  v155 = a2;
  swift_retain_n();
  swift_retain_n();
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46318, &qword_1BE0D6AE0);
  v170 = v157;
  v171 = v156;
  v172 = v11;
  v173 = OpaqueTypeConformance2;
  v157 = swift_getOpaqueTypeConformance2();
  v153 = sub_1BD448A80();
  v52 = v159;
  v53 = v158;
  sub_1BE050F64();
  v26, v54, v55, v56, v57, v58, v59, v60;
  v49, v61, v62, v63, v64, v65, v66, v67;
  v50, v68, v69, v70, v71, v72, v73, v74;
  v27, v75, v76, v77, v78, v79, v80, v81;
  (*(v160 + 8))(v53, v52);
  v176 = a1;
  v177 = v51;
  sub_1BE0516C4();
  v82 = v170;
  v83 = v171;
  v84 = v172;
  v85 = swift_getKeyPath();
  v176 = v82;
  v177 = v83;
  v178 = v84;
  v86 = v161;
  sub_1BE051904();
  v84, v87, v88, v89, v90, v91, v92, v93;
  v83, v94, v95, v96, v97, v98, v99, v100;
  v85, v101, v102, v103, v104, v105, v106, v107;
  v82, v108, v109, v110, v111, v112, v113, v114;
  type metadata accessor for AccountAutomaticPaymentsModel.PaymentDueWarning(0);
  v170 = v52;
  v171 = v154;
  v172 = v157;
  v173 = v153;
  swift_getOpaqueTypeConformance2();
  sub_1BD4490D8(&qword_1EBD46328, type metadata accessor for AccountAutomaticPaymentsModel.PaymentDueWarning, &unk_1BE10EAE4);
  v115 = v164;
  v116 = v162;
  v117 = v167;
  sub_1BE050EF4();
  sub_1BD0DE53C(v86, &qword_1EBD462D8, &qword_1BE0D6A78);
  (*(v163 + 8))(v117, v116);
  v176 = a1;
  v177 = v155;
  sub_1BE0516C4();
  v118 = v170;
  v119 = v171;
  v120 = v172;
  v121 = swift_getKeyPath();
  v170 = v118;
  v171 = v119;
  v172 = v120;
  v122 = v115 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46330, &unk_1BE0D6B38) + 36);
  sub_1BE051904();
  v120, v123, v124, v125, v126, v127, v128, v129;
  v119, v130, v131, v132, v133, v134, v135, v136;
  v121, v137, v138, v139, v140, v141, v142, v143;
  v118, v144, v145, v146, v147, v148, v149, v150;
  result = type metadata accessor for ErrorAlertModifier(0);
  v152 = (v122 + *(result + 20));
  *v152 = 0;
  v152[1] = 0;
  return result;
}

uint64_t sub_1BD447D60(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE04FB44();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46308, &unk_1BE0D6AA0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7];
  sub_1BE04FB14();
  v12 = a1;
  v13 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46340, &unk_1BE0D6B50);
  sub_1BD448CA8();
  sub_1BE04E424();
  v9 = sub_1BD0DE4F4(&qword_1EBD46310, &qword_1EBD46308, &unk_1BE0D6AA0, MEMORY[0x1E697BEF0]);
  MEMORY[0x1BFB3CC50](v8, v5, v9);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1BD447F24@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v73 = a3;
  v5 = sub_1BE04E1D4();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v66 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD394F0, &unk_1BE0B8730);
  MEMORY[0x1EEE9AC00](v67);
  v68 = &v65 - v7;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD394D8, &unk_1BE0D6B60);
  MEMORY[0x1EEE9AC00](v72);
  v69 = &v65 - v8;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46350, &qword_1BE0D6B70);
  MEMORY[0x1EEE9AC00](v70);
  v10 = &v65 - v9;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD51330, &qword_1BE0BB6F0);
  v11 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v13 = &v65 - v12;
  v75 = a1;
  v76 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54210, &qword_1BE0FA1C0);
  sub_1BE0516A4();
  v14 = v74;
  KeyPath = swift_getKeyPath();
  v75 = v14;
  sub_1BD4490D8(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel, &protocol conformance descriptor for AccountAutomaticPaymentsModel);
  sub_1BE04B594();
  KeyPath, v16, v17, v18, v19, v20, v21, v22;
  v23 = v14[OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__loading];
  v14, v24, v25, v26, v27, v28, v29, v30;
  if (v23 == 1)
  {
    sub_1BE04E4F4();
    v31 = v71;
    (*(v11 + 16))(v10, v13, v71);
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE4F4(&unk_1EBD49880, &unk_1EBD51330, &qword_1BE0BB6F0, MEMORY[0x1E697BF38]);
    sub_1BD448D60();
    sub_1BE04F9A4();
    return (*(v11 + 8))(v13, v31);
  }

  else
  {
    v33 = v66;
    sub_1BE04E1C4();
    v34 = swift_allocObject();
    *(v34 + 16) = a1;
    *(v34 + 24) = a2;
    sub_1BE048964();
    sub_1BE048964();
    v35 = v68;
    MEMORY[0x1BFB3E7A0](v33, sub_1BD448E1C, v34);
    v75 = a1;
    v76 = a2;
    sub_1BE0516A4();
    v36 = v74;
    v37 = swift_getKeyPath();
    v75 = v36;
    sub_1BE04B594();
    v37, v38, v39, v40, v41, v42, v43, v44;
    LOBYTE(v34) = v36[OBJC_IVAR____TtC9PassKitUI29AccountAutomaticPaymentsModel__configurationValid];
    v36, v45, v46, v47, v48, v49, v50, v51;
    v52 = swift_getKeyPath();
    v53 = swift_allocObject();
    *(v53 + 16) = (v34 & 1) == 0;
    v54 = (v35 + *(v67 + 36));
    *v54 = v52;
    v54[1] = sub_1BD10DF54;
    v54[2] = v53;
    sub_1BE052434();
    v56 = v55;
    sub_1BD10DE58();
    v57 = v69;
    sub_1BE050DE4();
    v56, v58, v59, v60, v61, v62, v63, v64;
    sub_1BD0DE53C(v35, &qword_1EBD394F0, &unk_1BE0B8730);
    sub_1BD0DE19C(v57, v10, &qword_1EBD394D8, &unk_1BE0D6B60);
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE4F4(&unk_1EBD49880, &unk_1EBD51330, &qword_1BE0BB6F0, MEMORY[0x1E697BF38]);
    sub_1BD448D60();
    sub_1BE04F9A4();
    return sub_1BD0DE53C(v57, &qword_1EBD394D8, &unk_1BE0D6B60);
  }
}

void sub_1BD4484A8(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54210, &qword_1BE0FA1C0);
  sub_1BE0516A4();
  sub_1BDA1F184();
  v9, v2, v3, v4, v5, v6, v7, v8;
}

void sub_1BD44853C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54210, &qword_1BE0FA1C0);
  sub_1BE0516A4();
  v2 = [v27[6] fundingSources];
  if (v2)
  {
    v10 = v2;
    sub_1BD448C54();
    v11 = sub_1BE052744();
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v27, v3, v4, v5, v6, v7, v8, v9;
  if (v11 >> 62)
  {
    v19 = sub_1BE053704();
  }

  else
  {
    v19 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11, v12, v13, v14, v15, v16, v17, v18;
  if (v19)
  {
    sub_1BE0516A4();
    sub_1BDA1F184();
    v27, v20, v21, v22, v23, v24, v25, v26;
  }
}

uint64_t sub_1BD44864C@<X0>(uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54210, &qword_1BE0FA1C0);
  sub_1BE0516A4();
  v4 = sub_1BE04EC54();
  result = sub_1BE0501F4();
  *a3 = v6;
  *(a3 + 8) = v4;
  *(a3 + 16) = result;
  return result;
}

uint64_t sub_1BD4486DC(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46338, &qword_1BE0D6B48);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v17[-v5];
  sub_1BD0DE19C(a1, &v17[-v5], &qword_1EBD46338, &qword_1BE0D6B48);
  v7 = *a2;
  KeyPath = swift_getKeyPath();
  v18 = v7;
  v19 = v6;
  v20 = v7;
  sub_1BD4490D8(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel, &protocol conformance descriptor for AccountAutomaticPaymentsModel);
  sub_1BE04B584();
  KeyPath, v9, v10, v11, v12, v13, v14, v15;
  return sub_1BD0DE53C(v6, &qword_1EBD46338, &qword_1BE0D6B48);
}

uint64_t sub_1BD44882C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for AccountAutomaticPaymentsModel.PaymentDueWarning(0) + 20);
  v5 = sub_1BE0511B4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, a1 + v4, v5);
}

uint64_t sub_1BD4488D0@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X4>, uint64_t *a4@<X5>, uint64_t *a5@<X6>, uint64_t a6@<X8>)
{
  v10 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD4490D8(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel, &protocol conformance descriptor for AccountAutomaticPaymentsModel);
  sub_1BE04B594();
  KeyPath, v12, v13, v14, v15, v16, v17, v18;
  v19 = *a3;
  swift_beginAccess();
  return sub_1BD0DE19C(v10 + v19, a6, a4, a5);
}

uint64_t sub_1BD4489B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0, &unk_1BE0BC2A0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_1BD0DE19C(a1, &v6 - v3, &qword_1EBD416C0, &unk_1BE0BC2A0);
  return sub_1BDA1C534(v4);
}

unint64_t sub_1BD448A80()
{
  result = qword_1EBD46320;
  if (!qword_1EBD46320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46318, &qword_1BE0D6AE0);
    sub_1BD301ED8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD46320);
  }

  return result;
}

void sub_1BD448B20(uint64_t *a1@<X0>, void *a3@<X4>, _BYTE *a4@<X8>)
{
  v6 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD4490D8(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel, &protocol conformance descriptor for AccountAutomaticPaymentsModel);
  sub_1BE04B594();
  KeyPath, v8, v9, v10, v11, v12, v13, v14;
  *a4 = *(v6 + *a3);
}

unint64_t sub_1BD448C54()
{
  result = qword_1EBD4E090;
  if (!qword_1EBD4E090)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD4E090);
  }

  return result;
}

unint64_t sub_1BD448CA8()
{
  result = qword_1EBD46348;
  if (!qword_1EBD46348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46340, &unk_1BE0D6B50);
    sub_1BD0DE4F4(&unk_1EBD49880, &unk_1EBD51330, &qword_1BE0BB6F0, MEMORY[0x1E697BF38]);
    sub_1BD448D60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD46348);
  }

  return result;
}

unint64_t sub_1BD448D60()
{
  result = qword_1EBD394E0;
  if (!qword_1EBD394E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD394D8, &unk_1BE0D6B60);
    sub_1BD10DE58();
    sub_1BD4490D8(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD394E0);
  }

  return result;
}

unint64_t sub_1BD448E24()
{
  result = qword_1EBD46358;
  if (!qword_1EBD46358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46330, &unk_1BE0D6B38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD462E8, &qword_1BE0D6A88);
    type metadata accessor for AccountAutomaticPaymentsModel.PaymentDueWarning(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD462E0, &qword_1BE0D6A80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46318, &qword_1BE0D6AE0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD462F0, &qword_1BE0D6A90);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD462F8, &qword_1BE0D6A98);
    sub_1BD0DE4F4(&qword_1EBD46300, &qword_1EBD462F0, &qword_1BE0D6A90, MEMORY[0x1E697FDF8]);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46308, &unk_1BE0D6AA0);
    sub_1BD0DE4F4(&qword_1EBD46310, &qword_1EBD46308, &unk_1BE0D6AA0, MEMORY[0x1E697BEF0]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1BD448A80();
    swift_getOpaqueTypeConformance2();
    sub_1BD4490D8(&qword_1EBD46328, type metadata accessor for AccountAutomaticPaymentsModel.PaymentDueWarning, &unk_1BE10EAE4);
    swift_getOpaqueTypeConformance2();
    sub_1BD4490D8(&qword_1EBD3EA00, type metadata accessor for ErrorAlertModifier, &unk_1BE101590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD46358);
  }

  return result;
}

uint64_t sub_1BD4490D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static BankConnectBalanceDetailsViewControllerProvider.makeViewController(bankConnectItem:)(void *a1)
{
  v2 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46360, &unk_1BE0D6C00));
  v3 = a1;
  return sub_1BE04F894();
}

id BankConnectBalanceDetailsViewControllerProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BankConnectBalanceDetailsViewControllerProvider.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BankConnectBalanceDetailsViewControllerProvider();
  return objc_msgSendSuper2(&v2, sel_init);
}

id BankConnectBalanceDetailsViewControllerProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BankConnectBalanceDetailsViewControllerProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for PaymentSummaryTotalRow(uint64_t a1)
{
  result = qword_1EBD46368;
  if (!qword_1EBD46368)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD44934C(uint64_t a1)
{
  _s11TotalAmountVMa(319);
  if (v1 <= 0x3F)
  {
    sub_1BD238A58(319, &qword_1EBD4F750, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1BD238A58(319, &qword_1EBD59660, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1BD44944C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v30[1] = a1;
  v3 = sub_1BE04FF64();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46378, &qword_1BE0D6CB8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (v30 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46380, &qword_1BE0D6CC0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v30 - v12;
  sub_1BD4496E4(v2, v9);
  LOBYTE(v2) = sub_1BE050234();
  sub_1BE04E1F4();
  v14 = v9 + *(v7 + 36);
  *v14 = v2;
  *(v14 + 1) = v15;
  *(v14 + 2) = v16;
  *(v14 + 3) = v17;
  *(v14 + 4) = v18;
  v14[40] = 0;
  sub_1BE04FF44();
  v19 = sub_1BD44CB28();
  sub_1BE050D14();
  (*(v4 + 8))(v6, v3);
  sub_1BD0DE53C(v9, &qword_1EBD46378, &qword_1BE0D6CB8);
  sub_1BE052434();
  v21 = v20;
  v30[2] = v7;
  v30[3] = v19;
  swift_getOpaqueTypeConformance2();
  sub_1BE050DE4();
  v21, v22, v23, v24, v25, v26, v27, v28;
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_1BD4496E4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v71 = a2;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD463F8, &qword_1BE0D6CF8);
  MEMORY[0x1EEE9AC00](v66);
  v59 = (&v55 - v3);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46400, &unk_1BE0D6D00);
  MEMORY[0x1EEE9AC00](v62);
  v65 = &v55 - v4;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD463E8, &qword_1BE0D6CF0);
  MEMORY[0x1EEE9AC00](v64);
  v57 = (&v55 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v55 - v7;
  v9 = _s22SummaryItemPricingTypeOMa(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = _s22SummaryItemPricingTypeO13RecurringItemVMa(0);
  MEMORY[0x1EEE9AC00](v58);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD463D8, &qword_1BE0D6CE8);
  MEMORY[0x1EEE9AC00](v70);
  v63 = &v55 - v14;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46408, &qword_1BE0D6D10);
  MEMORY[0x1EEE9AC00](v68);
  v69 = &v55 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD463C8, &qword_1BE0D6CE0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v55 - v17;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD463B8, &qword_1BE0D6CD8);
  MEMORY[0x1EEE9AC00](v67);
  v20 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v55 - v22;
  v61 = sub_1BE04F3D4();
  v60 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v25 = &v55 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a1 + *(type metadata accessor for PaymentSummaryTotalRow(0) + 24);
  v27 = *v26;
  if (*(v26 + 8) == 1)
  {
    if ((v27 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1BE048964();
    sub_1BE052C44();
    v55 = v18;
    v30 = sub_1BE050174();
    v56 = v11;
    v31 = v30;
    v18 = v55;
    sub_1BE04CF84();

    v11 = v56;
    sub_1BE04F3C4();
    swift_getAtKeyPath();
    sub_1BD0D4604(v27, 0, v32, v33, v34, v35, v36, v37);
    (*(v60 + 8))(v25, v61);
    if (v72 != 1)
    {
LABEL_3:
      v28 = _s11TotalAmountVMa(0);
      sub_1BD1CBB88(a1 + *(v28 + 40), v11);
      if (swift_getEnumCaseMultiPayload())
      {
        sub_1BD44CEC4(v11, _s22SummaryItemPricingTypeOMa);
        v29 = v63;
      }

      else
      {
        sub_1BD44CE60(v11, v13);
        sub_1BD0DE19C(&v13[*(v58 + 28)], v8, &unk_1EBD39970, &unk_1BE0B9F80);
        v46 = sub_1BE04AF64();
        v47 = (*(*(v46 - 8) + 48))(v8, 1, v46);
        v29 = v63;
        if (v47 != 1)
        {
          sub_1BD0DE53C(v8, &unk_1EBD39970, &unk_1BE0B9F80);
          v52 = sub_1BE04F7C4();
          v53 = v57;
          *v57 = v52;
          *(v53 + 8) = 0;
          *(v53 + 16) = 1;
          v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46418, &qword_1BE0D6D20);
          sub_1BD44BAE4(v53 + *(v54 + 44));
          sub_1BD0DE19C(v53, v65, &qword_1EBD463E8, &qword_1BE0D6CF0);
          swift_storeEnumTagMultiPayload();
          sub_1BD0DE4F4(&qword_1EBD463E0, &qword_1EBD463E8, &qword_1BE0D6CF0, MEMORY[0x1E6981870]);
          sub_1BD0DE4F4(&qword_1EBD463F0, &qword_1EBD463F8, &qword_1BE0D6CF8, MEMORY[0x1E69817F8]);
          sub_1BE04F9A4();
          sub_1BD0DE53C(v53, &qword_1EBD463E8, &qword_1BE0D6CF0);
          sub_1BD44CEC4(v13, _s22SummaryItemPricingTypeO13RecurringItemVMa);
          goto LABEL_10;
        }

        sub_1BD44CEC4(v13, _s22SummaryItemPricingTypeO13RecurringItemVMa);
        sub_1BD0DE53C(v8, &unk_1EBD39970, &unk_1BE0B9F80);
      }

      v48 = sub_1BE04F504();
      v49 = v59;
      *v59 = v48;
      *(v49 + 8) = 0;
      *(v49 + 16) = 1;
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46410, &qword_1BE0D6D18);
      sub_1BD44C134(v49 + *(v50 + 44));
      sub_1BD0DE19C(v49, v65, &qword_1EBD463F8, &qword_1BE0D6CF8);
      swift_storeEnumTagMultiPayload();
      sub_1BD0DE4F4(&qword_1EBD463E0, &qword_1EBD463E8, &qword_1BE0D6CF0, MEMORY[0x1E6981870]);
      sub_1BD0DE4F4(&qword_1EBD463F0, &qword_1EBD463F8, &qword_1BE0D6CF8, MEMORY[0x1E69817F8]);
      sub_1BE04F9A4();
      sub_1BD0DE53C(v49, &qword_1EBD463F8, &qword_1BE0D6CF8);
LABEL_10:
      sub_1BD0DE19C(v29, v69, &qword_1EBD463D8, &qword_1BE0D6CE8);
      swift_storeEnumTagMultiPayload();
      sub_1BD44CCC4();
      sub_1BD44CD7C();
      sub_1BE04F9A4();
      v43 = v29;
      v44 = &qword_1EBD463D8;
      v45 = &qword_1BE0D6CE8;
      return sub_1BD0DE53C(v43, v44, v45);
    }
  }

  *v18 = sub_1BE04F7C4();
  *(v18 + 1) = 0;
  v18[16] = 1;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46420, &qword_1BE0D6D28);
  sub_1BD44A13C(&v18[*(v38 + 44)]);
  sub_1BE051CE4();
  sub_1BE04EE54();
  sub_1BD0DE204(v18, v20, &qword_1EBD463C8, &qword_1BE0D6CE0);
  v39 = &v20[*(v67 + 36)];
  v40 = v77;
  *(v39 + 4) = v76;
  *(v39 + 5) = v40;
  *(v39 + 6) = v78;
  v41 = v73;
  *v39 = v72;
  *(v39 + 1) = v41;
  v42 = v75;
  *(v39 + 2) = v74;
  *(v39 + 3) = v42;
  sub_1BD0DE204(v20, v23, &qword_1EBD463B8, &qword_1BE0D6CD8);
  sub_1BD0DE19C(v23, v69, &qword_1EBD463B8, &qword_1BE0D6CD8);
  swift_storeEnumTagMultiPayload();
  sub_1BD44CCC4();
  sub_1BD44CD7C();
  sub_1BE04F9A4();
  v43 = v23;
  v44 = &qword_1EBD463B8;
  v45 = &qword_1BE0D6CD8;
  return sub_1BD0DE53C(v43, v44, v45);
}

uint64_t sub_1BD44A13C@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46428, &qword_1BE0D6D30);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v32 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v28 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46430, &qword_1BE0D6D38);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46438, &qword_1BE0D6D40);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v28 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46440, &qword_1BE0D6D48);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v28 - v22;
  sub_1BD44A53C();
  sub_1BD44A738(v17);
  v30 = v11;
  sub_1BD44B1D4(v11);
  sub_1BD44B5E0(v5);
  v31 = v20;
  sub_1BD0DE19C(v23, v20, &qword_1EBD46440, &qword_1BE0D6D48);
  v29 = v14;
  sub_1BD0DE19C(v17, v14, &qword_1EBD46438, &qword_1BE0D6D40);
  v28 = v8;
  sub_1BD0DE19C(v11, v8, &qword_1EBD46430, &qword_1BE0D6D38);
  v24 = v32;
  sub_1BD0DE19C(v5, v32, &qword_1EBD46428, &qword_1BE0D6D30);
  v25 = v33;
  sub_1BD0DE19C(v20, v33, &qword_1EBD46440, &qword_1BE0D6D48);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46448, &qword_1BE0D6D50);
  sub_1BD0DE19C(v14, v25 + v26[12], &qword_1EBD46438, &qword_1BE0D6D40);
  sub_1BD0DE19C(v8, v25 + v26[16], &qword_1EBD46430, &qword_1BE0D6D38);
  sub_1BD0DE19C(v24, v25 + v26[20], &qword_1EBD46428, &qword_1BE0D6D30);
  sub_1BD0DE53C(v5, &qword_1EBD46428, &qword_1BE0D6D30);
  sub_1BD0DE53C(v30, &qword_1EBD46430, &qword_1BE0D6D38);
  sub_1BD0DE53C(v17, &qword_1EBD46438, &qword_1BE0D6D40);
  sub_1BD0DE53C(v23, &qword_1EBD46440, &qword_1BE0D6D48);
  sub_1BD0DE53C(v24, &qword_1EBD46428, &qword_1BE0D6D30);
  sub_1BD0DE53C(v28, &qword_1EBD46430, &qword_1BE0D6D38);
  sub_1BD0DE53C(v29, &qword_1EBD46438, &qword_1BE0D6D40);
  return sub_1BD0DE53C(v31, &qword_1EBD46440, &qword_1BE0D6D48);
}

void sub_1BD44A53C()
{
  sub_1BD44C554();
  v101 = v0;
  sub_1BD0DDEBC();
  sub_1BE048C84();
  v1 = sub_1BE0506C4();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_1BE050324();
  v9 = sub_1BE0505F4();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v8, v10, v12, v14, v16, v17, v18, v19;
  sub_1BD0DDF10(v1, v3, (v5 & 1), v20, v21, v22, v23, v24);
  v7, v25, v26, v27, v28, v29, v30, v31;
  sub_1BE050384();
  v32 = sub_1BE050544();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  sub_1BD0DDF10(v9, v11, (v13 & 1), v37, v39, v40, v41, v42);
  v15, v43, v44, v45, v46, v47, v48, v49;
  v50 = sub_1BE051224();
  v51 = sub_1BE050564();
  v53 = v52;
  LOBYTE(v9) = v54;
  v56 = v55;
  v50, v52, v54, v55, v57, v58, v59, v60;
  sub_1BD0DDF10(v32, v34, (v36 & 1), v61, v62, v63, v64, v65);
  v38, v66, v67, v68, v69, v70, v71, v72;
  sub_1BE052434();
  v74 = v73;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46478, &qword_1BE0D6DD8);
  sub_1BD44CF24();
  sub_1BE050DE4();
  v74, v75, v76, v77, v78, v79, v80, v81;
  sub_1BD0DDF10(v51, v53, (v9 & 1), v82, v83, v84, v85, v86);
  v101, v87, v88, v89, v90, v91, v92, v93;
  v56, v94, v95, v96, v97, v98, v99, v100;
}

uint64_t sub_1BD44A738@<X0>(uint64_t a1@<X8>)
{
  v169 = a1;
  v158 = sub_1BE04BD74();
  v157 = *(v158 - 8);
  MEMORY[0x1EEE9AC00](v158);
  v156 = &v146 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46440, &qword_1BE0D6D48);
  v167 = *(v2 - 8);
  v168 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v159 = &v146 - v3;
  v155 = sub_1BE04AC64();
  v154 = *(v155 - 8);
  MEMORY[0x1EEE9AC00](v155);
  v152 = &v146 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = sub_1BE04ABD4();
  v153 = *(v150 - 8);
  MEMORY[0x1EEE9AC00](v150);
  v151 = &v146 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = sub_1BE04ACA4();
  v149 = *(v161 - 1);
  MEMORY[0x1EEE9AC00](v161);
  v160 = &v146 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE04AD84();
  v162 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v146 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v146 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v146 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v146 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v146 - v20;
  v165 = sub_1BE04AF64();
  v163 = *(v165 - 8);
  MEMORY[0x1EEE9AC00](v165);
  v23 = &v146 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = _s22SummaryItemPricingTypeOMa(0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v146 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = _s22SummaryItemPricingTypeO13RecurringItemVMa(0);
  MEMORY[0x1EEE9AC00](v27);
  v164 = &v146 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = _s11TotalAmountVMa(0);
  sub_1BD1CBB88(&v166[*(v29 + 40)], v26);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1BD44CEC4(v26, _s22SummaryItemPricingTypeOMa);
  }

  else
  {
    v166 = v15;
    v30 = v160;
    v31 = v161;
    v148 = v18;
    v32 = v162;
    v147 = v7;
    v33 = v26;
    v34 = v164;
    sub_1BD44CE60(v33, v164);
    sub_1BD0DE19C(v34 + *(v27 + 28), v21, &unk_1EBD39970, &unk_1BE0B9F80);
    if ((*(v163 + 48))(v21, 1, v165) != 1)
    {
      v38 = *(v163 + 32);
      v146 = v23;
      v39 = v38(v23, v21, v165);
      MEMORY[0x1BFB376E0](v39);
      sub_1BE04AC24();
      v40 = v12;
      sub_1BE04ABB4();
      (*(v149 + 8))(v30, v31);
      v41 = v32 + 8;
      v42 = *(v32 + 8);
      v43 = v147;
      v42(v9, v147);
      v44 = v151;
      sub_1BE04ABC4();
      v45 = v166;
      sub_1BE04AB64();
      (*(v153 + 8))(v44, v150);
      v162 = v41;
      v42(v40, v43);
      v46 = v42;
      v161 = v42;
      v47 = v152;
      sub_1BE04AC44();
      sub_1BE04ABA4();
      (*(v154 + 8))(v47, v155);
      v46(v45, v43);
      sub_1BD44D0D4(&qword_1EBD4E940, MEMORY[0x1E6969328], MEMORY[0x1E6969320]);
      sub_1BE04AF44();
      v48 = v170;
      v49 = v171;
      v166 = v171;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
      v50 = swift_allocObject();
      *(v50 + 16) = xmmword_1BE0B69E0;
      *(v50 + 56) = MEMORY[0x1E69E6158];
      *(v50 + 64) = sub_1BD110550();
      *(v50 + 32) = v48;
      *(v50 + 40) = v49;
      v51 = v157;
      v52 = v156;
      v53 = v158;
      (*(v157 + 104))(v156, *MEMORY[0x1E69B8068], v158);
      sub_1BE048C84();
      v54 = sub_1BE04B714();
      v56 = v55;
      v50, v55, v57, v58, v59, v60, v61, v62;
      (*(v51 + 8))(v52, v53);
      v170 = v54;
      v171 = v56;
      sub_1BD0DDEBC();
      v63 = sub_1BE0506C4();
      v65 = v64;
      LOBYTE(v54) = v66;
      v68 = v67;
      v69 = sub_1BE0502E4();
      v70 = sub_1BE0505F4();
      v72 = v71;
      LOBYTE(v45) = v73;
      v75 = v74;
      v69, v71, v73, v74, v76, v77, v78, v79;
      sub_1BD0DDF10(v63, v65, (v54 & 1), v80, v81, v82, v83, v84);
      v68, v85, v86, v87, v88, v89, v90, v91;
      v92 = sub_1BE051234();
      v93 = sub_1BE050564();
      v95 = v94;
      LOBYTE(v65) = v96;
      v98 = v97;
      v92, v94, v96, v97, v99, v100, v101, v102;
      sub_1BD0DDF10(v70, v72, (v45 & 1), v103, v104, v105, v106, v107);
      v75, v108, v109, v110, v111, v112, v113, v114;
      v170 = v93;
      v171 = v95;
      v172 = v65 & 1;
      v173 = v98;
      v174 = 0;
      v175 = v48;
      v115 = v166;
      v176 = v166;
      sub_1BE052434();
      v117 = v116;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46478, &qword_1BE0D6DD8);
      sub_1BD44CF24();
      v118 = v159;
      sub_1BE050DE4();
      v117, v119, v120, v121, v122, v123, v124, v125;
      sub_1BD0DDF10(v93, v95, (v65 & 1), v126, v127, v128, v129, v130);
      v115, v131, v132, v133, v134, v135, v136, v137;
      v98, v138, v139, v140, v141, v142, v143, v144;
      (v161)(v148, v147);
      (*(v163 + 8))(v146, v165);
      sub_1BD44CEC4(v164, _s22SummaryItemPricingTypeO13RecurringItemVMa);
      v145 = v169;
      sub_1BD0DE204(v118, v169, &qword_1EBD46440, &qword_1BE0D6D48);
      v36 = v145;
      v35 = 0;
      return (*(v167 + 56))(v36, v35, 1, v168);
    }

    sub_1BD44CEC4(v164, _s22SummaryItemPricingTypeO13RecurringItemVMa);
    sub_1BD0DE53C(v21, &unk_1EBD39970, &unk_1BE0B9F80);
  }

  v35 = 1;
  v36 = v169;
  return (*(v167 + 56))(v36, v35, 1, v168);
}

id sub_1BD44B1D4@<X0>(uint64_t a1@<X8>)
{
  v90 = a1;
  v89 = sub_1BE04F454();
  v88 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v85 = &v84 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v84 - v3;
  sub_1BD44C858();
  v6 = v5;
  v86 = v7;
  *&v95[0] = v7;
  *(&v95[0] + 1) = v5;
  sub_1BD0DDEBC();
  v87 = v6;
  sub_1BE048C84();
  v8 = sub_1BE0506C4();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  result = PKFontForDesign(*MEMORY[0x1E69DB8D8], *MEMORY[0x1E69DDDB8], *MEMORY[0x1E69DDC90], *MEMORY[0x1E69DB980]);
  if (result)
  {
    v16 = sub_1BE050484();
    v17 = sub_1BE0505F4();
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v16, v18, v20, v22, v24, v25, v26, v27;
    sub_1BD0DDF10(v8, v10, (v12 & 1), v28, v29, v30, v31, v32);
    v14, v33, v34, v35, v36, v37, v38, v39;
    v40 = sub_1BE051224();
    v41 = sub_1BE050564();
    v43 = v42;
    v45 = v44;
    v84 = v46;
    v40, v42, v44, v46, v47, v48, v49, v50;
    sub_1BD0DDF10(v17, v19, (v21 & 1), v51, v52, v53, v54, v55);
    v23, v56, v57, v58, v59, v60, v61, v62;
    KeyPath = swift_getKeyPath();
    sub_1BE04F444();
    v64 = v88;
    v65 = v89;
    (*(v88 + 16))(v85, v4, v89);
    sub_1BD44D0D4(&unk_1EBD367A0, MEMORY[0x1E697F260], MEMORY[0x1E697F258]);
    v66 = sub_1BE04E644();
    (*(v64 + 8))(v4, v65);
    strcpy(v95, "total-amount");
    BYTE13(v95[0]) = 0;
    HIWORD(v95[0]) = -5120;
    v67 = v87;
    MEMORY[0x1BFB3F610](v86, v87);
    v67, v68, v69, v70, v71, v72, v73, v74;
    v97 = v45 & 1;
    *&v91 = v41;
    *(&v91 + 1) = v43;
    LOBYTE(v92) = v45 & 1;
    *(&v92 + 1) = v84;
    *&v93 = KeyPath;
    BYTE8(v93) = 1;
    *&v94[0] = v66;
    *(v94 + 8) = v95[0];
    sub_1BE052434();
    v76 = v75;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46468, &unk_1BE0D6DC8);
    sub_1BD0DE4F4(&qword_1EBD46470, &qword_1EBD46468, &unk_1BE0D6DC8, MEMORY[0x1E6981810]);
    sub_1BE050DE4();
    v76, v77, v78, v79, v80, v81, v82, v83;
    v95[2] = v93;
    v95[3] = v94[0];
    v96 = *&v94[1];
    v95[0] = v91;
    v95[1] = v92;
    return sub_1BD0DE53C(v95, &qword_1EBD46468, &unk_1BE0D6DC8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD44B5E0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE04F454();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v88 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46450, &qword_1BE0D6D58);
  v97 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v88 - v11;
  v13 = (v1 + *(type metadata accessor for PaymentSummaryTotalRow(0) + 20));
  v14 = v13[1];
  if (v14)
  {
    v93 = *v13;
    *&v103[0] = v93;
    *(&v103[0] + 1) = v14;
    v92 = v14;
    sub_1BD0DDEBC();
    v96 = a1;
    sub_1BE048C84();
    v15 = sub_1BE0506C4();
    v17 = v16;
    v95 = v10;
    v19 = v18;
    v21 = v20;
    v22 = sub_1BE0502E4();
    v23 = sub_1BE0505F4();
    v94 = v12;
    v24 = v23;
    v88 = v9;
    v26 = v25;
    v89 = v6;
    v28 = v27;
    v90 = v3;
    v30 = v29;
    v22, v25, v27, v29, v31, v32, v33, v34;
    sub_1BD0DDF10(v15, v17, (v19 & 1), v35, v36, v37, v38, v39);
    v21, v40, v41, v42, v43, v44, v45, v46;
    v47 = sub_1BE051234();
    v48 = sub_1BE050564();
    v50 = v49;
    v52 = v51;
    v91 = v53;
    v47, v49, v51, v53, v54, v55, v56, v57;
    sub_1BD0DDF10(v24, v26, (v28 & 1), v58, v59, v60, v61, v62);
    v30, v63, v64, v65, v66, v67, v68, v69;
    KeyPath = swift_getKeyPath();
    v71 = v88;
    sub_1BE04F444();
    v72 = v90;
    (*(v4 + 16))(v89, v71, v90);
    sub_1BD44D0D4(&unk_1EBD367A0, MEMORY[0x1E697F260], MEMORY[0x1E697F258]);
    v73 = v72;
    v74 = sub_1BE04E644();
    (*(v4 + 8))(v71, v73);
    *&v103[0] = 0xD000000000000014;
    *(&v103[0] + 1) = 0x80000001BE129DD0;
    MEMORY[0x1BFB3F610](v93, v92);
    v102 = v52 & 1;
    *&v98 = v48;
    *(&v98 + 1) = v50;
    LOBYTE(v99) = v52 & 1;
    *(&v99 + 1) = v91;
    *&v100 = KeyPath;
    BYTE8(v100) = 2;
    *&v101[0] = v74;
    *(v101 + 8) = v103[0];
    sub_1BE052434();
    v76 = v75;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46458, &qword_1BE0D6D90);
    sub_1BD0DE4F4(&qword_1EBD46460, &qword_1EBD46458, &qword_1BE0D6D90, MEMORY[0x1E6981810]);
    v77 = v94;
    sub_1BE050DE4();
    v76, v78, v79, v80, v81, v82, v83, v84;
    v103[2] = v100;
    v103[3] = v101[0];
    v104 = *&v101[1];
    v103[0] = v98;
    v103[1] = v99;
    sub_1BD0DE53C(v103, &qword_1EBD46458, &qword_1BE0D6D90);
    v85 = v96;
    sub_1BD0DE204(v77, v96, &qword_1EBD46450, &qword_1BE0D6D58);
    return (*(v97 + 56))(v85, 0, 1, v95);
  }

  else
  {
    v87 = *(v97 + 56);

    return v87(a1, 1, 1, v10);
  }
}

uint64_t sub_1BD44BAE4@<X0>(uint64_t a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46488, &qword_1BE0D6DE8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46490, &qword_1BE0D6DF0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v19 - v13;
  *v14 = sub_1BE04F504();
  *(v14 + 1) = 0;
  v14[16] = 1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46498, &qword_1BE0D6DF8);
  sub_1BD44BD2C(&v14[*(v15 + 44)]);
  *v8 = sub_1BE04F504();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD464A0, &qword_1BE0D6E00);
  sub_1BD44BF30(&v8[*(v16 + 44)]);
  sub_1BD0DE19C(v14, v11, &qword_1EBD46490, &qword_1BE0D6DF0);
  sub_1BD0DE19C(v8, v5, &qword_1EBD46488, &qword_1BE0D6DE8);
  sub_1BD0DE19C(v11, a2, &qword_1EBD46490, &qword_1BE0D6DF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD464A8, &qword_1BE0D6E08);
  sub_1BD0DE19C(v5, a2 + *(v17 + 48), &qword_1EBD46488, &qword_1BE0D6DE8);
  sub_1BD0DE53C(v8, &qword_1EBD46488, &qword_1BE0D6DE8);
  sub_1BD0DE53C(v14, &qword_1EBD46490, &qword_1BE0D6DF0);
  sub_1BD0DE53C(v5, &qword_1EBD46488, &qword_1BE0D6DE8);
  return sub_1BD0DE53C(v11, &qword_1EBD46490, &qword_1BE0D6DF0);
}

uint64_t sub_1BD44BD2C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46430, &qword_1BE0D6D38);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v17 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46440, &qword_1BE0D6D48);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v17 - v12;
  sub_1BD44A53C();
  sub_1BD44B1D4(v7);
  sub_1BD0DE19C(v13, v10, &qword_1EBD46440, &qword_1BE0D6D48);
  sub_1BD0DE19C(v7, v4, &qword_1EBD46430, &qword_1BE0D6D38);
  sub_1BD0DE19C(v10, a1, &qword_1EBD46440, &qword_1BE0D6D48);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD464B8, &qword_1BE0D6E18);
  v15 = a1 + *(v14 + 48);
  *v15 = 0;
  *(v15 + 8) = 1;
  sub_1BD0DE19C(v4, a1 + *(v14 + 64), &qword_1EBD46430, &qword_1BE0D6D38);
  sub_1BD0DE53C(v7, &qword_1EBD46430, &qword_1BE0D6D38);
  sub_1BD0DE53C(v13, &qword_1EBD46440, &qword_1BE0D6D48);
  sub_1BD0DE53C(v4, &qword_1EBD46430, &qword_1BE0D6D38);
  return sub_1BD0DE53C(v10, &qword_1EBD46440, &qword_1BE0D6D48);
}

uint64_t sub_1BD44BF30@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46428, &qword_1BE0D6D30);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v17 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46438, &qword_1BE0D6D40);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v17 - v12;
  sub_1BD44A738(&v17 - v12);
  sub_1BD44B5E0(v7);
  sub_1BD0DE19C(v13, v10, &qword_1EBD46438, &qword_1BE0D6D40);
  sub_1BD0DE19C(v7, v4, &qword_1EBD46428, &qword_1BE0D6D30);
  sub_1BD0DE19C(v10, a1, &qword_1EBD46438, &qword_1BE0D6D40);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD464B0, &qword_1BE0D6E10);
  v15 = a1 + *(v14 + 48);
  *v15 = 0;
  *(v15 + 8) = 1;
  sub_1BD0DE19C(v4, a1 + *(v14 + 64), &qword_1EBD46428, &qword_1BE0D6D30);
  sub_1BD0DE53C(v7, &qword_1EBD46428, &qword_1BE0D6D30);
  sub_1BD0DE53C(v13, &qword_1EBD46438, &qword_1BE0D6D40);
  sub_1BD0DE53C(v4, &qword_1EBD46428, &qword_1BE0D6D30);
  return sub_1BD0DE53C(v10, &qword_1EBD46438, &qword_1BE0D6D40);
}

uint64_t sub_1BD44C134@<X0>(uint64_t a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD464C0, &qword_1BE0D6E20);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46440, &qword_1BE0D6D48);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v19 - v13;
  sub_1BD44A53C();
  *v8 = sub_1BE04F7D4();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD464C8, &qword_1BE0D6E28);
  sub_1BD44C364(&v8[*(v15 + 44)]);
  sub_1BD0DE19C(v14, v11, &qword_1EBD46440, &qword_1BE0D6D48);
  sub_1BD0DE19C(v8, v5, &qword_1EBD464C0, &qword_1BE0D6E20);
  sub_1BD0DE19C(v11, a2, &qword_1EBD46440, &qword_1BE0D6D48);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD464D0, &qword_1BE0D6E30);
  v17 = a2 + *(v16 + 48);
  *v17 = 0;
  *(v17 + 8) = 1;
  sub_1BD0DE19C(v5, a2 + *(v16 + 64), &qword_1EBD464C0, &qword_1BE0D6E20);
  sub_1BD0DE53C(v8, &qword_1EBD464C0, &qword_1BE0D6E20);
  sub_1BD0DE53C(v14, &qword_1EBD46440, &qword_1BE0D6D48);
  sub_1BD0DE53C(v5, &qword_1EBD464C0, &qword_1BE0D6E20);
  return sub_1BD0DE53C(v11, &qword_1EBD46440, &qword_1BE0D6D48);
}

uint64_t sub_1BD44C364@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46428, &qword_1BE0D6D30);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46430, &qword_1BE0D6D38);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v16 - v12;
  sub_1BD44B1D4(&v16 - v12);
  sub_1BD44B5E0(v7);
  sub_1BD0DE19C(v13, v10, &qword_1EBD46430, &qword_1BE0D6D38);
  sub_1BD0DE19C(v7, v4, &qword_1EBD46428, &qword_1BE0D6D30);
  sub_1BD0DE19C(v10, a1, &qword_1EBD46430, &qword_1BE0D6D38);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD464D8, &qword_1BE0D6E38);
  sub_1BD0DE19C(v4, a1 + *(v14 + 48), &qword_1EBD46428, &qword_1BE0D6D30);
  sub_1BD0DE53C(v7, &qword_1EBD46428, &qword_1BE0D6D30);
  sub_1BD0DE53C(v13, &qword_1EBD46430, &qword_1BE0D6D38);
  sub_1BD0DE53C(v4, &qword_1EBD46428, &qword_1BE0D6D30);
  return sub_1BD0DE53C(v10, &qword_1EBD46430, &qword_1BE0D6D38);
}

id sub_1BD44C554()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v22 - v6;
  v8 = _s22SummaryItemPricingTypeO13RecurringItemVMa(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _s22SummaryItemPricingTypeOMa(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = _s11TotalAmountVMa(0);
  sub_1BD1CBB88(v0 + *(v14 + 40), v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    (*(v2 + 104))(v7, *MEMORY[0x1E69B8068], v1);
    result = PKPassKitBundle();
    if (result)
    {
      v20 = result;
      v16 = sub_1BE04B6F4();

      (*(v2 + 8))(v7, v1);
LABEL_8:
      v17 = _s22SummaryItemPricingTypeOMa;
      v18 = v13;
      goto LABEL_9;
    }

    __break(1u);
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      sub_1BD44CE60(v13, v10);
      v16 = *&v10[*(v8 + 40)];
      sub_1BE048C84();
      v17 = _s22SummaryItemPricingTypeO13RecurringItemVMa;
      v18 = v10;
LABEL_9:
      sub_1BD44CEC4(v18, v17);
      return v16;
    }

    (*(v2 + 104))(v4, *MEMORY[0x1E69B8068], v1);
    result = PKPassKitBundle();
    if (result)
    {
      v21 = result;
      v16 = sub_1BE04B6F4();

      (*(v2 + 8))(v4, v1);
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

void sub_1BD44C858()
{
  v1 = _s22SummaryItemPricingTypeOMa(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = _s22SummaryItemPricingTypeO13RecurringItemVMa(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE04BD74();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _s11TotalAmountVMa(0);
  if (*(v0 + *(v11 + 44)) == 1)
  {
    (*(v8 + 104))(v10, *MEMORY[0x1E69B8068], v7);
    v12 = PKPassKitBundle();
    if (v12)
    {
      v13 = v12;
      sub_1BE04B6F4();

      (*(v8 + 8))(v10, v7);
      return;
    }

    __break(1u);
  }

  else
  {
    sub_1BD1CBB88(v0 + *(v11 + 40), v3);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1BD44CE60(v3, v6);
      sub_1BE048C84();
      sub_1BD44CEC4(v6, _s22SummaryItemPricingTypeO13RecurringItemVMa);
      return;
    }

    sub_1BD44CEC4(v3, _s22SummaryItemPricingTypeOMa);
    v14 = sub_1BE052404();
    v15 = PKFormattedCurrencyStringFromNumber();

    if (v15)
    {
      sub_1BE052434();

      return;
    }
  }

  __break(1u);
}

unint64_t sub_1BD44CB28()
{
  result = qword_1EBD46388;
  if (!qword_1EBD46388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46378, &qword_1BE0D6CB8);
    sub_1BD44CBB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD46388);
  }

  return result;
}

unint64_t sub_1BD44CBB4()
{
  result = qword_1EBD46390;
  if (!qword_1EBD46390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46398, &qword_1BE0D6CC8);
    sub_1BD44CC38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD46390);
  }

  return result;
}

unint64_t sub_1BD44CC38()
{
  result = qword_1EBD463A0;
  if (!qword_1EBD463A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD463A8, &qword_1BE0D6CD0);
    sub_1BD44CCC4();
    sub_1BD44CD7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD463A0);
  }

  return result;
}

unint64_t sub_1BD44CCC4()
{
  result = qword_1EBD463B0;
  if (!qword_1EBD463B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD463B8, &qword_1BE0D6CD8);
    sub_1BD0DE4F4(&qword_1EBD463C0, &qword_1EBD463C8, &qword_1BE0D6CE0, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD463B0);
  }

  return result;
}

unint64_t sub_1BD44CD7C()
{
  result = qword_1EBD463D0;
  if (!qword_1EBD463D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD463D8, &qword_1BE0D6CE8);
    sub_1BD0DE4F4(&qword_1EBD463E0, &qword_1EBD463E8, &qword_1BE0D6CF0, MEMORY[0x1E6981870]);
    sub_1BD0DE4F4(&qword_1EBD463F0, &qword_1EBD463F8, &qword_1BE0D6CF8, MEMORY[0x1E69817F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD463D0);
  }

  return result;
}

uint64_t sub_1BD44CE60(uint64_t a1, uint64_t a2)
{
  v4 = _s22SummaryItemPricingTypeO13RecurringItemVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD44CEC4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1BD44CF24()
{
  result = qword_1EBD46480;
  if (!qword_1EBD46480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46478, &qword_1BE0D6DD8);
    sub_1BD0DE4F4(&qword_1EBD3C4B8, &qword_1EBD3C4C0, &qword_1BE0D6DE0, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD46480);
  }

  return result;
}

unint64_t sub_1BD44CFDC()
{
  result = qword_1EBD464E0;
  if (!qword_1EBD464E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD464E8, &qword_1BE0D6E40);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46378, &qword_1BE0D6CB8);
    sub_1BD44CB28();
    swift_getOpaqueTypeConformance2();
    sub_1BD44D0D4(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD464E0);
  }

  return result;
}

uint64_t sub_1BD44D0D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BD44D148()
{
  sub_1BE04F624();
  v0 = sub_1BE050694();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  sub_1BE051CD4();
  sub_1BE04EE54();
  *&v8 = v0;
  *(&v8 + 1) = v2;
  LOBYTE(v9) = v4 & 1;
  *(&v9 + 1) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E090, &unk_1BE0D49D0);
  sub_1BD19D16C();
  sub_1BE050A24();
  v17[6] = v14;
  v17[7] = v15;
  v17[8] = v16;
  v17[2] = v10;
  v17[3] = v11;
  v17[4] = v12;
  v17[5] = v13;
  v17[0] = v8;
  v17[1] = v9;
  return sub_1BD44D284(v17);
}

uint64_t sub_1BD44D284(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E090, &unk_1BE0D49D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BD44D2EC()
{
  result = qword_1EBD464F0;
  if (!qword_1EBD464F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3BC18, &unk_1BE0BD1D0);
    sub_1BD19D16C();
    sub_1BD0F15A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD464F0);
  }

  return result;
}

char *sub_1BD44D378(void *a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_1BE04BAC4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v3[OBJC_IVAR____TtC9PassKitUI39ProvisioningCarAddToWatchViewController_reporter] = 0;
  *&v3[OBJC_IVAR____TtC9PassKitUI39ProvisioningCarAddToWatchViewController_coordinator] = 0;
  *&v3[OBJC_IVAR____TtC9PassKitUI39ProvisioningCarAddToWatchViewController_provisioningContext] = a1;
  *&v3[OBJC_IVAR____TtC9PassKitUI39ProvisioningCarAddToWatchViewController_credential] = a2;
  sub_1BE048964();
  v11 = a2;
  sub_1BE04BC34();
  v12 = sub_1BE04B9A4();
  (*(v8 + 8))(v10, v7);
  v33.receiver = v3;
  v33.super_class = ObjectType;
  result = objc_msgSendSuper2(&v33, sel_initWithContext_, v12);
  if (result)
  {
    v14 = result;
    [v14 setExplanationViewControllerDelegate_];
    sub_1BE052434();
    v16 = v15;
    v17 = sub_1BE04BB74();
    v16, v18, v19, v20, v21, v22, v23, v24;
    a1, v25, v26, v27, v28, v29, v30, v31;

    v32 = *&v14[OBJC_IVAR____TtC9PassKitUI39ProvisioningCarAddToWatchViewController_reporter];
    *&v14[OBJC_IVAR____TtC9PassKitUI39ProvisioningCarAddToWatchViewController_reporter] = v17;

    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BD44D540()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v122 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v127 = &v122 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v128 = &v122 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v122 - v12;
  v14 = sub_1BE04BAC4();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v122 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135.receiver = v1;
  v135.super_class = ObjectType;
  objc_msgSendSuper2(&v135, sel_loadView, v16);
  v19 = [*&v1[OBJC_IVAR____TtC9PassKitUI39ProvisioningCarAddToWatchViewController_credential] paymentPass];
  if (!v19)
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v19;
  v122 = v6;
  v130 = v3;
  sub_1BE04BC34();
  v21 = sub_1BE04BAB4();
  (*(v15 + 8))(v18, v14);
  v22 = [v1 explanationView];
  if (!v22)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v23 = v22;
  v24 = [objc_opt_self() systemBackgroundColor];
  [v23 setTopBackgroundColor_];

  [v1 setShowDoneButton_];
  [v1 setShowCancelButton_];
  v125 = v1;
  v25 = [v1 navigationItem];
  v126 = v21;
  [v25 setHidesBackButton_];

  v26 = [objc_allocWithZone(PKHeroCardWatchExplainationHeaderView) init];
  [v23 setHeroView_];
  v27 = [objc_opt_self() sharedInstance];
  v132 = v23;
  if (!v27)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v28 = v27;
  v29 = v20;
  [v26 recommendedCardImageSize];
  v31 = v30;
  v33 = v32;
  v34 = swift_allocObject();
  *(v34 + 16) = v26;
  aBlock[4] = sub_1BD44ED6C;
  v134 = v34;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD20815C;
  aBlock[3] = &block_descriptor_95;
  v35 = _Block_copy(aBlock);
  v36 = v134;
  v123 = v26;
  v36, v37, v38, v39, v40, v41, v42, v43;
  [v28 snapshotWithPass:v29 size:v35 completion:{v31, v33}];
  _Block_release(v35);

  v131 = *MEMORY[0x1E69B8038];
  v44 = *(v4 + 104);
  v45 = v130;
  v44(v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_1BE0B69E0;
  v47 = [v29 organizationName];
  v124 = v29;

  v48 = sub_1BE052434();
  v49 = v4;
  v51 = v50;

  *(v46 + 56) = MEMORY[0x1E69E6158];
  *(v46 + 64) = sub_1BD110550();
  *(v46 + 32) = v48;
  *(v46 + 40) = v51;
  sub_1BE04B714();
  v53 = v52;
  v46, v52, v54, v55, v56, v57, v58, v59;
  v62 = *(v49 + 8);
  v61 = (v49 + 8);
  v60 = v62;
  v62(v13, v45);
  v63 = sub_1BE052404();
  v53, v64, v65, v66, v67, v68, v69, v70;
  v71 = v132;
  [v132 setTitleText_];

  v72 = v128;
  v129 = v44;
  (v44)(v128, v131, v45);
  v73 = PKPassKitBundle();
  if (!v73)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v74 = v73;
  sub_1BE04B6F4();
  v76 = v75;

  v128 = v61;
  v60(v72, v45);
  v77 = sub_1BE052404();
  v76, v78, v79, v80, v81, v82, v83, v84;
  [v71 setBodyText_];

  v85 = [v71 dockView];
  if (!v85)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v86 = v85;
  v87 = [v85 footerView];
  v88 = v127;
  if (!v87)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v89 = v87;
  v90 = [v86 primaryButton];
  if (!v90)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v91 = v90;
  (v129)(v88, v131, v45);
  v92 = PKPassKitBundle();
  if (!v92)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v93 = v92;
  sub_1BE04B6F4();
  v95 = v94;

  v60(v88, v45);
  v96 = sub_1BE052404();
  v95, v97, v98, v99, v100, v101, v102, v103;
  [v91 setTitle:v96 forStates:0];

  v104 = v132;
  if (v126)
  {
    goto LABEL_13;
  }

  [v132 setForceShowSetupLaterButton_];
  v105 = [v89 setUpLaterButton];
  if (!v105)
  {
    goto LABEL_13;
  }

  v106 = v105;
  v107 = v122;
  v108 = v130;
  (v129)(v122, *MEMORY[0x1E69B80D8], v130);
  v109 = PKPassKitBundle();
  if (v109)
  {
    v110 = v109;
    sub_1BE04B6F4();
    v111 = v107;
    v113 = v112;

    v60(v111, v108);
    v114 = sub_1BE052404();
    v113, v115, v116, v117, v118, v119, v120, v121;
    [v106 setTitle:v114 forState:0];

    v104 = v132;
LABEL_13:
    [v125 setPrivacyLinkController_];
    LOBYTE(aBlock[0]) = 4;
    sub_1BD44E078(aBlock, 0);

    return;
  }

LABEL_22:
  __break(1u);
}

uint64_t sub_1BD44DDDC(void *a1, void *a2)
{
  v4 = sub_1BE051F54();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1BE051FA4();
  v8 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  v11 = sub_1BE052D54();
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a1;
  aBlock[4] = sub_1BD2FF06C;
  v28 = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_13_1;
  v13 = _Block_copy(aBlock);
  v14 = v28;
  v15 = a1;
  v16 = a2;
  v14, v17, v18, v19, v20, v21, v22, v23;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v10, v7, v13);
  _Block_release(v13);

  (*(v5 + 8))(v7, v4);
  return (*(v8 + 8))(v10, v26);
}

void sub_1BD44E078(unsigned __int8 *a1, unsigned __int8 a2)
{
  v4 = *a1;
  v5 = [v2 explanationView];
  if (!v5)
  {
    __break(1u);
    goto LABEL_10;
  }

  v6 = v5;
  [v5 setShowCheckmark_];

  v7 = [v2 explanationView];
  if (!v7)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = v7;
  [v7 setShowSpinner_];

  v9 = [v2 explanationView];
  if (!v9)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v10 = v9;
  v11 = [v9 dockView];

  if (!v11)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v12 = a2 ^ 1;
  [v11 setButtonsEnabled_];

  v13 = [v2 navigationItem];
  v14 = [v13 leftBarButtonItem];

  [v14 setEnabled_];
  v15 = [v2 view];
  if (!v15)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v16 = v15;
  [v15 setUserInteractionEnabled_];
}

void sub_1BD44E3B4(void *a1)
{
  v2 = v1;
  v4 = sub_1BE04B944();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE04BD74();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v74 - v14;
  if ([a1 hasLocalizedTitleAndMessage])
  {
    goto LABEL_5;
  }

  v78 = v5;
  v79 = v4;
  v16 = v9;
  v17 = *(v9 + 104);
  v76 = *MEMORY[0x1E69B8038];
  v77 = v9 + 104;
  v75 = v17;
  v17(v15);
  v18 = PKPassKitBundle();
  if (v18)
  {
    v19 = v18;
    sub_1BE04B6F4();
    v21 = v20;

    v22 = *(v16 + 8);
    v74 = v16 + 8;
    v22(v15, v8);
    v23 = sub_1BE052404();
    v21, v24, v25, v26, v27, v28, v29, v30;
    [a1 setLocalizedTitle_];

    v31 = [*&v2[OBJC_IVAR____TtC9PassKitUI39ProvisioningCarAddToWatchViewController_credential] configuration];
    if (v31)
    {
      v32 = v31;
      v33 = [v31 issuerIdentifier];

      sub_1BE04BB94();
      v34 = sub_1BE04B8E4();
      (*(v78 + 8))(v7, v79);
      v35 = PKLocalizedCarIssuerNameFromIssuerIdentifier();

      v36 = sub_1BE052434();
      v38 = v37;

      v75(v11, v76, v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
      v39 = swift_allocObject();
      *(v39 + 16) = xmmword_1BE0B69E0;
      *(v39 + 56) = MEMORY[0x1E69E6158];
      *(v39 + 64) = sub_1BD110550();
      *(v39 + 32) = v36;
      *(v39 + 40) = v38;
      sub_1BE04B714();
      v41 = v40;
      v39, v40, v42, v43, v44, v45, v46, v47;
      v22(v11, v8);
      v48 = sub_1BE052404();
      v41, v49, v50, v51, v52, v53, v54, v55;
      [a1 setLocalizedMessage_];

LABEL_5:
      sub_1BD0E5E8C(0, &qword_1EBD3D280, 0x1E69DC650);
      v56 = swift_allocObject();
      v56[2] = v2;
      v56[3] = a1;
      v57 = swift_allocObject();
      v57[2] = v2;
      v58 = v2;
      v59 = static UIAlertController.alertForError(error:acknowledgeButtonText:exitButtonText:onAcknowledge:onExit:onTryAgain:)(a1, 0, 0, 0, 0, PKEdgeInsetsMake, 0, sub_1BD44EB80, v56, sub_1BD44EB88, v57);
      v56, v60, v61, v62, v63, v64, v65, v66;
      v57, v67, v68, v69, v70, v71, v72, v73;
      [v58 presentViewController:v59 animated:1 completion:0];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1BD44E884(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC9PassKitUI39ProvisioningCarAddToWatchViewController_coordinator);
  if (v3)
  {
    v4 = v3;
    sub_1BD3188FC();
  }

  v5 = *(a1 + OBJC_IVAR____TtC9PassKitUI39ProvisioningCarAddToWatchViewController_reporter);
  if (v5)
  {
    v6 = v5;
    v7 = sub_1BE04A844();
    [v6 reportError:v7 context:0];
  }
}

void sub_1BD44E940(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC9PassKitUI39ProvisioningCarAddToWatchViewController_coordinator);
  if (v1)
  {
    v2 = objc_allocWithZone(MEMORY[0x1E69B8E38]);
    v3 = v1;
    v4 = [v2 init];
    sub_1BD317B18(v4);
  }
}

void sub_1BD44EB90()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI39ProvisioningCarAddToWatchViewController_reporter);
  if (v1)
  {
    [v1 reportButtonPressed_];
  }

  v2 = *(v0 + OBJC_IVAR____TtC9PassKitUI39ProvisioningCarAddToWatchViewController_coordinator);
  if (v2)
  {
    v3 = objc_allocWithZone(MEMORY[0x1E69B8E38]);
    v4 = v2;
    v5 = [v3 init];
    sub_1BD317B18(v5);
  }
}

void sub_1BD44EC3C()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI39ProvisioningCarAddToWatchViewController_reporter);
  if (v1)
  {
    [v1 reportButtonPressed_];
  }

  v2 = *(v0 + OBJC_IVAR____TtC9PassKitUI39ProvisioningCarAddToWatchViewController_coordinator);
  if (v2)
  {
    v3 = v2;
    sub_1BD3188FC();
  }
}

void sub_1BD44ECC4()
{
  v1 = OBJC_IVAR____TtC9PassKitUI39ProvisioningCarAddToWatchViewController_reporter;
  v2 = *(v0 + OBJC_IVAR____TtC9PassKitUI39ProvisioningCarAddToWatchViewController_reporter);
  if (v2)
  {
    [v2 reportButtonPressed_];
    v3 = *(v0 + v1);
    if (v3)
    {
      [v3 reportButtonPressed_];
    }
  }

  v4 = *(v0 + OBJC_IVAR____TtC9PassKitUI39ProvisioningCarAddToWatchViewController_coordinator);
  if (v4)
  {
    v5 = v4;
    sub_1BD3188FC();
  }
}

void sub_1BD44EDC4(uint64_t a1)
{
  sub_1BD44EEE0();
  if (v1 <= 0x3F)
  {
    sub_1BD44EF30(319);
    if (v2 <= 0x3F)
    {
      sub_1BD44EFC4(319, &qword_1EBD3AB88, MEMORY[0x1E697BF90], MEMORY[0x1E697DCC0]);
      if (v3 <= 0x3F)
      {
        sub_1BD44EFC4(319, &qword_1EBD4D390, MEMORY[0x1E697D718], MEMORY[0x1E6981790]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1BD44EEE0()
{
  if (!qword_1EBD46530)
  {
    v0 = sub_1BE0534B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD46530);
    }
  }
}

void sub_1BD44EF30(uint64_t a1)
{
  if (!qword_1EBD46538)
  {
    type metadata accessor for SEStorageCleanupController(255);
    sub_1BD4579A8(&qword_1EBD550E0, type metadata accessor for SEStorageCleanupController, &unk_1BE0E6D38);
    v1 = sub_1BE04E984();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD46538);
    }
  }
}

void sub_1BD44EFC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1BD44F044(void *a1@<X8>)
{
  if (*(v1 + 9) == 1)
  {
    KeyPath = swift_getKeyPath();
    v4 = swift_getKeyPath();
    sub_1BE04D8B4(a1);
    KeyPath, v5, v6, v7, v8, v9, v10, v11;

    v4, v12, v13, v14, v15, v16, v17, v18;
  }

  else if ((v1[1] & 1) != 0 || (v19 = *v1, v20 = swift_getKeyPath(), v21 = swift_getKeyPath(), sub_1BE04D8B4(&v71), v20, v22, v23, v24, v25, v26, v27, v28, v21, v29, v30, v31, v32, v33, v34, v35, v36 = v71[2], v71, v37, v38, v39, v40, v41, v42, v43, v19 >= v36))
  {
    v70 = type metadata accessor for SEStorageUsageCategory(0);
    (*(*(v70 - 8) + 56))(a1, 1, 1, v70);
  }

  else
  {
    v44 = swift_getKeyPath();
    v45 = swift_getKeyPath();
    sub_1BE04D8B4(&v71);
    v44, v46, v47, v48, v49, v50, v51, v52;
    v45, v53, v54, v55, v56, v57, v58, v59;
    if ((v19 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v60 = v71;
      if (v19 < v71[2])
      {
        v61 = type metadata accessor for SEStorageUsageCategory(0);
        v62 = *(v61 - 8);
        sub_1BD457848(v60 + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v62 + 72) * v19, a1, type metadata accessor for SEStorageUsageCategory);
        v60, v63, v64, v65, v66, v67, v68, v69;
        (*(v62 + 56))(a1, 0, 1, v61);
        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1BD44F2A8@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v1 = type metadata accessor for SEStorageUsageCategory.SEStorageUsageCategoryType(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v39 = &v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v38 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46540, &qword_1BE0D6F88);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = (&v38 - v7);
  v9 = sub_1BE04FF64();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46548, &qword_1BE0D6F90);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v38 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46550, &qword_1BE0D6F98);
  v41 = *(v16 - 8);
  v42 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v38 - v17;
  sub_1BD44F76C(v15);
  sub_1BE04FF54();
  v19 = sub_1BD454008();
  v40 = v13;
  v20 = v19;
  sub_1BE050D14();
  (*(v10 + 8))(v12, v9);
  sub_1BD0DE53C(v15, &qword_1EBD46548, &qword_1BE0D6F90);
  sub_1BD44F044(v8);
  v21 = type metadata accessor for SEStorageUsageCategory(0);
  if ((*(*(v21 - 8) + 48))(v8, 1, v21) != 1)
  {
    sub_1BD457848(v8, v5, type metadata accessor for SEStorageUsageCategory.SEStorageUsageCategoryType);
    sub_1BD457A80(v8, type metadata accessor for SEStorageUsageCategory);
    v23 = v39;
    sub_1BD457848(v5, v39, type metadata accessor for SEStorageUsageCategory.SEStorageUsageCategoryType);
    v24 = sub_1BE04C164();
    v25 = (*(*(v24 - 8) + 48))(v23, 3, v24);
    if (v25 > 1)
    {
      if (v25 == 2)
      {
        v27 = MEMORY[0x1E69B99C0];
      }

      else
      {
        v27 = MEMORY[0x1E69B9B28];
      }
    }

    else
    {
      if (!v25)
      {
        v26 = *MEMORY[0x1E69B9C88];
        sub_1BD457A80(v5, type metadata accessor for SEStorageUsageCategory.SEStorageUsageCategoryType);
        v5 = v23;
LABEL_11:
        sub_1BD457A80(v5, type metadata accessor for SEStorageUsageCategory.SEStorageUsageCategoryType);
        sub_1BE052434();
        v22 = v28;

        goto LABEL_12;
      }

      v27 = MEMORY[0x1E69B9398];
    }

    v26 = *v27;
    goto LABEL_11;
  }

  sub_1BD0DE53C(v8, &qword_1EBD46540, &qword_1BE0D6F88);
  v22 = 0xE000000000000000;
LABEL_12:
  v44 = v40;
  v45 = v20;
  swift_getOpaqueTypeConformance2();
  v29 = v42;
  sub_1BE050DE4();
  v22, v30, v31, v32, v33, v34, v35, v36;
  return (*(v41 + 8))(v18, v29);
}

uint64_t sub_1BD44F76C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v64 = a1;
  v3 = sub_1BE051AD4();
  v62 = *(v3 - 8);
  v63 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v61 = v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v60 = v54 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46540, &qword_1BE0D6F88);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = (v54 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46578, &qword_1BE0D6FB8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v54 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46568, &qword_1BE0D6FA8);
  v56 = *(v13 - 8);
  v57 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v54 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46560, &qword_1BE0D6FA0);
  v58 = *(v16 - 8);
  v59 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v55 = v54 - v17;
  *v12 = sub_1BE04F7B4();
  *(v12 + 1) = 0;
  v12[16] = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD465B8, &qword_1BE0D7078);
  sub_1BD44FDD4(v1, &v12[*(v18 + 44)]);
  KeyPath = swift_getKeyPath();
  v20 = &v12[*(v10 + 36)];
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4D410, &unk_1BE0D2B20) + 28);
  v22 = *(type metadata accessor for SEStorageCleanupAppletTypeDetailView(0) + 32);
  v54[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD449B8, &qword_1BE0D28D8);
  v54[3] = v22;
  sub_1BE0516C4();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40520, &qword_1BE0D70B0);
  (*(*(v23 - 8) + 56))(v20 + v21, 0, 1, v23);
  *v20 = KeyPath;
  v24 = v2;
  sub_1BD44F044(v9);
  v25 = type metadata accessor for SEStorageUsageCategory(0);
  if ((*(*(v25 - 8) + 48))(v9, 1, v25) == 1)
  {
    sub_1BD0DE53C(v9, &qword_1EBD46540, &qword_1BE0D6F88);
    v26 = 0;
    v27 = 0xE000000000000000;
  }

  else
  {
    v26 = sub_1BD802010();
    v27 = v28;
    sub_1BD457A80(v9, type metadata accessor for SEStorageUsageCategory);
  }

  v65 = v26;
  v66 = v27;
  v29 = sub_1BD4541C4();
  v30 = sub_1BD0DDEBC();
  v31 = MEMORY[0x1E69E6158];
  v32 = v15;
  sub_1BE050B74();
  v27, v33, v34, v35, v36, v37, v38, v39;
  v40 = sub_1BD0DE53C(v12, &qword_1EBD46578, &qword_1BE0D6FB8);
  v54[1] = v54;
  MEMORY[0x1EEE9AC00](v40);
  v54[-2] = v24;
  v54[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46570, &qword_1BE0D6FB0);
  v65 = v10;
  v66 = v31;
  v67 = v29;
  v68 = v30;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v42 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD46598, &qword_1BE0D6FD0);
  v43 = sub_1BD4542A8();
  v65 = v42;
  v66 = v43;
  v44 = swift_getOpaqueTypeConformance2();
  v45 = v55;
  v46 = v57;
  sub_1BE051024();
  (*(v56 + 8))(v32, v46);
  v47 = v60;
  sub_1BE0516A4();
  v49 = v61;
  v48 = v62;
  v50 = v63;
  (*(v62 + 104))(v61, *MEMORY[0x1E697D708], v63);
  sub_1BE051AC4();
  v51 = *(v48 + 8);
  v51(v49, v50);
  v51(v47, v50);
  v65 = v46;
  v66 = v54[0];
  v67 = OpaqueTypeConformance2;
  v68 = v44;
  swift_getOpaqueTypeConformance2();
  v52 = v59;
  sub_1BE050E74();
  return (*(v58 + 8))(v45, v52);
}

uint64_t sub_1BD44FDD4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v45 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46610, &qword_1BE0D7140);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v44 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v43 = &v36 - v6;
  v7 = sub_1BE04FB94();
  v8 = *(v7 - 8);
  v41 = v7;
  v42 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46618, &qword_1BE0D7148);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v36 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46620, &qword_1BE0D7150);
  v40 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v36 - v16;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46628, &qword_1BE0D7158);
  v37 = *(v39 - 8);
  v18 = v37;
  MEMORY[0x1EEE9AC00](v39);
  v38 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v36 - v21;
  v46 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46630, &qword_1BE0D7160);
  sub_1BD457B6C();
  sub_1BE0504E4();
  v23 = sub_1BD0DE4F4(&qword_1EBD46658, &qword_1EBD46618, &qword_1BE0D7148, MEMORY[0x1E697CD20]);
  sub_1BE050DF4();
  (*(v12 + 8))(v14, v11);
  sub_1BE04FB84();
  v47 = v11;
  v48 = v23;
  swift_getOpaqueTypeConformance2();
  v24 = v22;
  v25 = v41;
  sub_1BE051144();
  (*(v42 + 8))(v10, v25);
  (*(v40 + 8))(v17, v15);
  v26 = v43;
  sub_1BD450770(v43);
  v27 = *(v18 + 16);
  v28 = v38;
  v29 = v39;
  v30 = v24;
  v27(v38, v24, v39);
  v31 = v44;
  sub_1BD0DE19C(v26, v44, &qword_1EBD46610, &qword_1BE0D7140);
  v32 = v45;
  v27(v45, v28, v29);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46660, &qword_1BE0D7178);
  sub_1BD0DE19C(v31, &v32[*(v33 + 48)], &qword_1EBD46610, &qword_1BE0D7140);
  sub_1BD0DE53C(v26, &qword_1EBD46610, &qword_1BE0D7140);
  v34 = *(v37 + 8);
  v34(v30, v29);
  sub_1BD0DE53C(v31, &qword_1EBD46610, &qword_1BE0D7140);
  return (v34)(v28, v29);
}

uint64_t sub_1BD4502F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v3 = type metadata accessor for SEStorageCleanupAppletTypeDetailView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46540, &qword_1BE0D6F88);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v50 - v11;
  sub_1BD44F044((&v50 - v11));
  v13 = type metadata accessor for SEStorageUsageCategory(0);
  v14 = *(*(v13 - 8) + 48);
  if (v14(v12, 1, v13) == 1)
  {
    sub_1BD0DE53C(v12, &qword_1EBD46540, &qword_1BE0D6F88);
    v22 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v22 = *&v12[*(v13 + 20)];
    sub_1BE048C84();
    sub_1BD457A80(v12, type metadata accessor for SEStorageUsageCategory);
  }

  v23 = v22[2];
  v22, v15, v16, v17, v18, v19, v20, v21;
  sub_1BD44F044(v9);
  if (v14(v9, 1, v13) == 1)
  {
    sub_1BD0DE53C(v9, &qword_1EBD46540, &qword_1BE0D6F88);
    v24 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v24 = *&v9[*(v13 + 20)];
    sub_1BE048C84();
    sub_1BD457A80(v9, type metadata accessor for SEStorageUsageCategory);
  }

  v53 = v24;
  sub_1BD457848(a1, &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SEStorageCleanupAppletTypeDetailView);
  v25 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v26 = v25 + v5;
  v27 = swift_allocObject();
  sub_1BD458754(v6, v27 + v25, type metadata accessor for SEStorageCleanupAppletTypeDetailView);
  *(v27 + v26) = v23 > 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD466F0, &qword_1BE0D7228);
  type metadata accessor for SEStorageAppletUsageSection(0);
  sub_1BD0DE4F4(&qword_1EBD466F8, &qword_1EBD466F0, &qword_1BE0D7228, MEMORY[0x1E69E6338]);
  sub_1BD4579A8(&qword_1EBD46650, type metadata accessor for SEStorageAppletUsageSection, &unk_1BE0D7260);
  sub_1BD4579A8(&qword_1EBD46700, type metadata accessor for SEStorageUsageGroup, &unk_1BE0FB4A0);
  v28 = v51;
  sub_1BE0519D4();
  KeyPath = swift_getKeyPath();
  v30 = swift_getKeyPath();
  sub_1BE04D8B4(&v52);
  KeyPath, v31, v32, v33, v34, v35, v36, v37;
  v30, v38, v39, v40, v41, v42, v43, v44;
  v45 = v52;
  v46 = swift_getKeyPath();
  v47 = swift_allocObject();
  *(v47 + 16) = v45;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46630, &qword_1BE0D7160);
  v49 = (v28 + *(result + 36));
  *v49 = v46;
  v49[1] = sub_1BD185ABC;
  v49[2] = v47;
  return result;
}

uint64_t sub_1BD450770@<X0>(uint64_t a1@<X8>)
{
  v61 = a1;
  v2 = sub_1BE04FF64();
  v59 = *(v2 - 8);
  v60 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v58 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46668, &qword_1BE0D7180);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v51 - v5;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46670, &qword_1BE0D7188);
  MEMORY[0x1EEE9AC00](v52);
  v8 = &v51 - v7;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46678, &qword_1BE0D7190);
  MEMORY[0x1EEE9AC00](v55);
  v10 = &v51 - v9;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46680, &qword_1BE0D7198);
  v56 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v54 = &v51 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46688, &qword_1BE0D71A0);
  v62 = *(v12 - 8);
  v63 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v53 = &v51 - v13;
  v14 = sub_1BE051AD4();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v51 - v19;
  type metadata accessor for SEStorageCleanupAppletTypeDetailView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD449B8, &qword_1BE0D28D8);
  v21 = v1;
  sub_1BE0516A4();
  (*(v15 + 104))(v17, *MEMORY[0x1E697D708], v14);
  v22 = sub_1BE051AC4();
  v23 = *(v15 + 8);
  v23(v17, v14);
  v24 = v20;
  v25 = v61;
  v23(v24, v14);
  v26 = 1;
  if (v22)
  {
    *v6 = sub_1BE04F7B4();
    *(v6 + 1) = 0;
    v6[16] = 0;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46690, &unk_1BE0D71A8);
    sub_1BD452AEC(v21, &v6[*(v27 + 44)]);
    sub_1BE051CD4();
    sub_1BE04EE54();
    sub_1BD0DE204(v6, v8, &qword_1EBD46668, &qword_1BE0D7180);
    v28 = &v8[*(v52 + 36)];
    v29 = v71;
    *(v28 + 4) = v70;
    *(v28 + 5) = v29;
    *(v28 + 6) = v72;
    v30 = v67;
    *v28 = v66;
    *(v28 + 1) = v30;
    v31 = v69;
    *(v28 + 2) = v68;
    *(v28 + 3) = v31;
    v32 = sub_1BE051324();
    v33 = sub_1BE0501D4();
    sub_1BD0DE204(v8, v10, &qword_1EBD46670, &qword_1BE0D7188);
    v34 = v55;
    v35 = &v10[*(v55 + 36)];
    *v35 = v32;
    v35[8] = v33;
    v36 = v58;
    sub_1BE04FF54();
    v37 = sub_1BD457CF8();
    v38 = v54;
    sub_1BE050D14();
    (*(v59 + 8))(v36, v60);
    sub_1BD0DE53C(v10, &qword_1EBD46678, &qword_1BE0D7190);
    sub_1BE052434();
    v40 = v39;
    v64 = v34;
    v65 = v37;
    swift_getOpaqueTypeConformance2();
    v41 = v53;
    v42 = v57;
    sub_1BE050DE4();
    v40, v43, v44, v45, v46, v47, v48, v49;
    (*(v56 + 8))(v38, v42);
    sub_1BD0DE204(v41, v25, &qword_1EBD46688, &qword_1BE0D71A0);
    v26 = 0;
  }

  return (*(v62 + 56))(v25, v26, 1, v63);
}