uint64_t sub_20C640D18(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
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

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

unint64_t sub_20C640E2C()
{
  result = qword_281105778;
  if (!qword_281105778)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281105778);
  }

  return result;
}

uint64_t MarketingInlineEnvironment.init(resolveMarketingOffer:refreshMarketingOffer:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t sub_20C640E88(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_20C640ED0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_20C640F58(uint64_t a1, char a2, uint64_t (*a3)(uint64_t *))
{
  v4 = a1;
  v5 = a2 & 1;
  return a3(&v4);
}

uint64_t sub_20C640F98@<X0>(void *a1@<X0>, uint64_t (**a2)(uint64_t a1)@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC16FitnessMarketing27MarketingWebViewCoordinator_onPurchase);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_20C60FA78;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_20C5D6A4C(v4, v5);
}

uint64_t sub_20C641038(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_20C60FA38;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC16FitnessMarketing27MarketingWebViewCoordinator_onPurchase);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_20C5D6A4C(v3, v4);
  return sub_20C60B3F4(v8, v9);
}

uint64_t MarketingWebViewCoordinator.onPurchase.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC16FitnessMarketing27MarketingWebViewCoordinator_onPurchase);
  swift_beginAccess();
  v2 = *v1;
  sub_20C5D6A4C(*v1, v1[1]);
  return v2;
}

uint64_t MarketingWebViewCoordinator.onPurchase.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC16FitnessMarketing27MarketingWebViewCoordinator_onPurchase);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_20C60B3F4(v6, v7);
}

id MarketingWebViewCoordinator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MarketingWebViewCoordinator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void MarketingWebViewCoordinator.webViewController(_:handle:completion:)(uint64_t a1, uint64_t a2, void (*a3)(void, void *), uint64_t a4)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = [objc_allocWithZone(MEMORY[0x277CEE878]) initWithRequest:a2 presentingViewController:Strong];
    v10 = [v9 performAuthentication];
    v14[4] = a3;
    v14[5] = a4;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 1107296256;
    v14[2] = sub_20C641E84;
    v14[3] = &block_descriptor_0;
    v11 = _Block_copy(v14);

    [v10 addFinishBlock_];
    _Block_release(v11);
  }

  else
  {
    sub_20C60FAC0();
    v12 = swift_allocError();
    *v13 = 0;
    v13[1] = 0;
    v13[2] = 1;
    a3(0, v12);
  }
}

{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = [objc_allocWithZone(MEMORY[0x277CEE868]) initWithRequest:a2 presentingViewController:Strong];
    v10 = [v9 present];
    v14[4] = a3;
    v14[5] = a4;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 1107296256;
    v14[2] = sub_20C641E84;
    v14[3] = &block_descriptor_3;
    v11 = _Block_copy(v14);

    [v10 addFinishBlock_];
    _Block_release(v11);
  }

  else
  {
    sub_20C60FAC0();
    v12 = swift_allocError();
    *v13 = 0;
    v13[1] = 0;
    v13[2] = 1;
    a3(0, v12);
  }
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_20C641688(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void sub_20C64172C(void *a1, int a2, void *a3, void *a4, void *aBlock, void (*a6)(id, id, void *))
{
  v10 = _Block_copy(aBlock);
  _Block_copy(v10);
  v11 = a3;
  v12 = a4;
  v13 = a1;
  a6(v12, v13, v10);
  _Block_release(v10);
  _Block_release(v10);
}

void sub_20C6417D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_20C64CEA0();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

void sub_20C6418F4(uint64_t a1, uint64_t a2, void (**a3)(void, void, void))
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = objc_allocWithZone(MEMORY[0x277CEE878]);
    _Block_copy(a3);
    v9 = [v8 initWithRequest:a1 presentingViewController:v7];
    v10 = [v9 performAuthentication];
    v15[4] = sub_20C641E74;
    v15[5] = v5;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 1107296256;
    v15[2] = sub_20C641E84;
    v15[3] = &block_descriptor_14;
    v11 = _Block_copy(v15);

    [v10 addFinishBlock_];
    _Block_release(v11);
  }

  else
  {
    sub_20C60FAC0();
    v12 = swift_allocError();
    *v13 = 0;
    v13[1] = 0;
    v13[2] = 1;
    _Block_copy(a3);
    v14 = sub_20C64CEA0();
    (a3)[2](a3, 0, v14);
  }
}

void sub_20C641AEC(uint64_t a1, uint64_t a2, void (**a3)(void, void, void))
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = objc_allocWithZone(MEMORY[0x277CEE868]);
    _Block_copy(a3);
    v9 = [v8 initWithRequest:a1 presentingViewController:v7];
    v10 = [v9 present];
    v15[4] = sub_20C641E4C;
    v15[5] = v5;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 1107296256;
    v15[2] = sub_20C641E84;
    v15[3] = &block_descriptor_8;
    v11 = _Block_copy(v15);

    [v10 addFinishBlock_];
    _Block_release(v11);
  }

  else
  {
    sub_20C60FAC0();
    v12 = swift_allocError();
    *v13 = 0;
    v13[1] = 0;
    v13[2] = 1;
    _Block_copy(a3);
    v14 = sub_20C64CEA0();
    (a3)[2](a3, 0, v14);
  }
}

void sub_20C641CE4(void *a1, void *a2)
{
  v3 = v2 + OBJC_IVAR____TtC16FitnessMarketing27MarketingWebViewCoordinator_onPurchase;
  if (a1)
  {
    swift_beginAccess();
    v5 = *v3;
    if (*v3)
    {
      v6 = *(v3 + 8);
      v7 = a1;
      sub_20C5D6A4C(v5, v6);
      v5(a1, 0);
      sub_20C60B3F4(v5, v6);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *v3;
    if (*v3)
    {
      v10 = *(v3 + 8);
      if (a2)
      {
        v11 = a2;
      }

      else
      {
        sub_20C60FAC0();
        v11 = swift_allocError();
        *v12 = 0;
        v12[1] = 0;
        v12[2] = 2;
      }

      sub_20C5D6A4C(v9, v10);
      v13 = a2;
      v9(v11, 1);
      sub_20C60B3F4(v9, v10);
    }
  }
}

uint64_t sub_20C641E88(uint64_t a1)
{
  v2 = sub_20C6432A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C641EC4(uint64_t a1)
{
  v2 = sub_20C6432A8();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_20C641F00()
{
  v1 = *v0;
  v2 = 0x61546E6F69746361;
  v3 = 0x6570704177656976;
  if (v1 != 6)
  {
    v3 = 0x6173694477656976;
  }

  v4 = 0x616C507465736572;
  if (v1 != 4)
  {
    v4 = 0xD000000000000010;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x657461676976616ELL;
  if (v1 != 2)
  {
    v5 = 0xD000000000000018;
  }

  if (*v0)
  {
    v2 = 0xD000000000000014;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_20C64202C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_20C644BBC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_20C642054(uint64_t a1)
{
  v2 = sub_20C642FA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C642090(uint64_t a1)
{
  v2 = sub_20C642FA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C6420CC(uint64_t a1)
{
  v2 = sub_20C643254();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C642108(uint64_t a1)
{
  v2 = sub_20C643254();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C642144(uint64_t a1)
{
  v2 = sub_20C643200();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C642180(uint64_t a1)
{
  v2 = sub_20C643200();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C6421BC(uint64_t a1)
{
  v2 = sub_20C6431AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C6421F8(uint64_t a1)
{
  v2 = sub_20C6431AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C642234(uint64_t a1)
{
  v2 = sub_20C643158();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C642270(uint64_t a1)
{
  v2 = sub_20C643158();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C6422AC(uint64_t a1)
{
  v2 = sub_20C643104();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C6422E8(uint64_t a1)
{
  v2 = sub_20C643104();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C642324(uint64_t a1)
{
  v2 = sub_20C6430B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C642360(uint64_t a1)
{
  v2 = sub_20C6430B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C64239C(uint64_t a1)
{
  v2 = sub_20C64305C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C6423D8(uint64_t a1)
{
  v2 = sub_20C64305C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BubbleTipAction.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFCC0, &qword_20C658470);
  v73 = *(v2 - 8);
  v74 = v2;
  MEMORY[0x28223BE20](v2);
  v72 = &v48 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFCC8, &qword_20C658478);
  v70 = *(v4 - 8);
  v71 = v4;
  MEMORY[0x28223BE20](v4);
  v69 = &v48 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFCD0, &qword_20C658480);
  v67 = *(v6 - 8);
  v68 = v6;
  MEMORY[0x28223BE20](v6);
  v66 = &v48 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFCD8, &qword_20C658488);
  v64 = *(v8 - 8);
  v65 = v8;
  MEMORY[0x28223BE20](v8);
  v62 = &v48 - v9;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFCE0, &qword_20C658490);
  v61 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v60 = &v48 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFCE8, &qword_20C658498);
  v58 = *(v11 - 8);
  v59 = v11;
  MEMORY[0x28223BE20](v11);
  v55 = &v48 - v12;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFCF0, &unk_20C6584A0);
  v56 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v54 = &v48 - v13;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFC20, &qword_20C658240);
  v52 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v51 = &v48 - v14;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFCF8, &unk_20C6584B0);
  v49 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v16 = &v48 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFC18, &qword_20C658238);
  v48 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v48 - v18;
  v20 = type metadata accessor for BubbleTipAction(0);
  MEMORY[0x28223BE20](v20);
  v22 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFD00, &qword_20C6584C0);
  v24 = *(v23 - 8);
  v76 = v23;
  v77 = v24;
  MEMORY[0x28223BE20](v23);
  v26 = &v48 - v25;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C642FA4();
  sub_20C64E500();
  sub_20C642FF8(v75, v22);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v84 = 6;
        sub_20C6430B0();
        v32 = v69;
        v33 = v76;
        sub_20C64E3B0();
        v35 = v70;
        v34 = v71;
      }

      else
      {
        v85 = 7;
        sub_20C64305C();
        v32 = v72;
        v33 = v76;
        sub_20C64E3B0();
        v35 = v73;
        v34 = v74;
      }
    }

    else if (EnumCaseMultiPayload == 4)
    {
      v82 = 4;
      sub_20C643158();
      v32 = v62;
      v33 = v76;
      sub_20C64E3B0();
      v35 = v64;
      v34 = v65;
    }

    else
    {
      v83 = 5;
      sub_20C643104();
      v32 = v66;
      v33 = v76;
      sub_20C64E3B0();
      v35 = v67;
      v34 = v68;
    }

    (*(v35 + 8))(v32, v34);
    return (*(v77 + 8))(v26, v33);
  }

  else
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v80 = 2;
        sub_20C643200();
        v36 = v55;
        v37 = v76;
        sub_20C64E3B0();
        v38 = v59;
        sub_20C64E3E0();

        (*(v58 + 8))(v36, v38);
        return (*(v77 + 8))(v26, v37);
      }

      v81 = 3;
      sub_20C6431AC();
      v46 = v60;
      v44 = v76;
      sub_20C64E3B0();
      v47 = v63;
      sub_20C64E3F0();
      (*(v61 + 8))(v46, v47);
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        v28 = v48;
        (*(v48 + 32))(v19, v22, v17);
        v78 = 0;
        sub_20C6432A8();
        v29 = v76;
        sub_20C64E3B0();
        sub_20C5E5558(&qword_27C7CFD58, &qword_27C7CFC18, &qword_20C658238, MEMORY[0x277D0A8A0]);
        v30 = v50;
        sub_20C64E410();
        (*(v49 + 8))(v16, v30);
        (*(v28 + 8))(v19, v17);
        return (*(v77 + 8))(v26, v29);
      }

      v39 = v52;
      v40 = v51;
      v41 = v22;
      v42 = v53;
      (*(v52 + 32))(v51, v41, v53);
      v79 = 1;
      sub_20C643254();
      v43 = v54;
      v44 = v76;
      sub_20C64E3B0();
      sub_20C5E5558(&qword_27C7CFD48, &qword_27C7CFC20, &qword_20C658240, MEMORY[0x277D0A8A0]);
      v45 = v57;
      sub_20C64E410();
      (*(v56 + 8))(v43, v45);
      (*(v39 + 8))(v40, v42);
    }

    return (*(v77 + 8))(v26, v44);
  }
}

uint64_t type metadata accessor for BubbleTipAction(uint64_t a1)
{
  result = qword_281105E78;
  if (!qword_281105E78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_20C642FA4()
{
  result = qword_27C7CFD08;
  if (!qword_27C7CFD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFD08);
  }

  return result;
}

uint64_t sub_20C642FF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BubbleTipAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_20C64305C()
{
  result = qword_27C7CFD10;
  if (!qword_27C7CFD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFD10);
  }

  return result;
}

unint64_t sub_20C6430B0()
{
  result = qword_27C7CFD18;
  if (!qword_27C7CFD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFD18);
  }

  return result;
}

unint64_t sub_20C643104()
{
  result = qword_27C7CFD20;
  if (!qword_27C7CFD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFD20);
  }

  return result;
}

unint64_t sub_20C643158()
{
  result = qword_27C7CFD28;
  if (!qword_27C7CFD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFD28);
  }

  return result;
}

unint64_t sub_20C6431AC()
{
  result = qword_27C7CFD30;
  if (!qword_27C7CFD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFD30);
  }

  return result;
}

unint64_t sub_20C643200()
{
  result = qword_27C7CFD38;
  if (!qword_27C7CFD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFD38);
  }

  return result;
}

unint64_t sub_20C643254()
{
  result = qword_27C7CFD40;
  if (!qword_27C7CFD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFD40);
  }

  return result;
}

unint64_t sub_20C6432A8()
{
  result = qword_27C7CFD50;
  if (!qword_27C7CFD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFD50);
  }

  return result;
}

uint64_t BubbleTipAction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v95 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFD60, &qword_20C6584C8);
  v82 = *(v3 - 8);
  v83 = v3;
  MEMORY[0x28223BE20](v3);
  v94 = &v64 - v4;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFD68, &qword_20C6584D0);
  v80 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v89 = &v64 - v5;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFD70, &qword_20C6584D8);
  v78 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v88 = &v64 - v6;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFD78, &qword_20C6584E0);
  v76 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v87 = &v64 - v7;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFD80, &qword_20C6584E8);
  v75 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v93 = &v64 - v8;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFD88, &qword_20C6584F0);
  v72 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v85 = &v64 - v9;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFD90, &qword_20C6584F8);
  v70 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v86 = &v64 - v10;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFD98, &qword_20C658500);
  v69 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v84 = &v64 - v11;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFDA0, &unk_20C658508);
  v96 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v13 = &v64 - v12;
  v90 = type metadata accessor for BubbleTipAction(0);
  v14 = MEMORY[0x28223BE20](v90);
  v16 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = (&v64 - v18);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v64 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v64 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v64 - v26;
  v28 = a1[3];
  v98 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v28);
  sub_20C642FA4();
  v29 = v97;
  sub_20C64E4F0();
  if (!v29)
  {
    v65 = v19;
    v66 = v16;
    v68 = v25;
    v67 = v22;
    v31 = v91;
    v30 = v92;
    v33 = v93;
    v32 = v94;
    v97 = v27;
    v34 = v95;
    v35 = sub_20C64E3A0();
    v36 = (2 * *(v35 + 16)) | 1;
    v99 = v35;
    v100 = v35 + 32;
    v101 = 0;
    v102 = v36;
    v37 = sub_20C5DD220();
    if (v37 != 8 && v101 == v102 >> 1)
    {
      if (v37 > 3u)
      {
        if (v37 > 5u)
        {
          v45 = v34;
          if (v37 == 6)
          {
            v103 = 6;
            sub_20C6430B0();
            v52 = v89;
            sub_20C64E320();
            v47 = v96;
            (*(v80 + 8))(v52, v81);
          }

          else
          {
            v103 = 7;
            sub_20C64305C();
            sub_20C64E320();
            v47 = v96;
            (*(v82 + 8))(v32, v83);
          }
        }

        else
        {
          v45 = v34;
          if (v37 == 4)
          {
            v103 = 4;
            sub_20C643158();
            v46 = v87;
            sub_20C64E320();
            v47 = v96;
            (*(v76 + 8))(v46, v77);
          }

          else
          {
            v103 = 5;
            sub_20C643104();
            v56 = v88;
            sub_20C64E320();
            v47 = v96;
            (*(v78 + 8))(v56, v79);
          }
        }

        (*(v47 + 8))(v13, v30);
        swift_unknownObjectRelease();
        v48 = v97;
        swift_storeEnumTagMultiPayload();
        goto LABEL_24;
      }

      if (v37 > 1u)
      {
        if (v37 == 2)
        {
          v103 = 2;
          sub_20C643200();
          v49 = v85;
          sub_20C64E320();
          v50 = v30;
          v51 = v73;
          v58 = sub_20C64E360();
          v60 = v59;
          (*(v72 + 8))(v49, v51);
          (*(v96 + 8))(v13, v50);
          swift_unknownObjectRelease();
          v39 = v65;
          *v65 = v58;
          v39[1] = v60;
        }

        else
        {
          v103 = 3;
          sub_20C6431AC();
          sub_20C64E320();
          v57 = v74;
          v62 = sub_20C64E370();
          (*(v75 + 8))(v33, v57);
          (*(v96 + 8))(v13, v30);
          swift_unknownObjectRelease();
          v63 = v62 & 1;
          v39 = v66;
          *v66 = v63;
        }
      }

      else
      {
        if (v37)
        {
          v103 = 1;
          sub_20C643254();
          v53 = v86;
          sub_20C64E320();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFC20, &qword_20C658240);
          sub_20C5E5558(&qword_27C7CFDA8, &qword_27C7CFC20, &qword_20C658240, MEMORY[0x277D0A8B0]);
          v54 = v67;
          v55 = v71;
          sub_20C64E390();
          (*(v70 + 8))(v53, v55);
          (*(v96 + 8))(v13, v30);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v61 = v54;
LABEL_23:
          v48 = v97;
          sub_20C6441A0(v61, v97);
          v45 = v34;
LABEL_24:
          sub_20C6441A0(v48, v45);
          return __swift_destroy_boxed_opaque_existential_1(v98);
        }

        v103 = 0;
        sub_20C6432A8();
        v38 = v84;
        sub_20C64E320();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFC18, &qword_20C658238);
        sub_20C5E5558(&qword_27C7CFDB0, &qword_27C7CFC18, &qword_20C658238, MEMORY[0x277D0A8B0]);
        sub_20C64E390();
        (*(v69 + 8))(v38, v31);
        (*(v96 + 8))(v13, v30);
        swift_unknownObjectRelease();
        v39 = v68;
      }

      swift_storeEnumTagMultiPayload();
      v61 = v39;
      goto LABEL_23;
    }

    v40 = sub_20C64E290();
    swift_allocError();
    v41 = v30;
    v43 = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE088, &qword_20C64F6A0);
    *v43 = v90;
    sub_20C64E330();
    sub_20C64E280();
    (*(*(v40 - 8) + 104))(v43, *MEMORY[0x277D84160], v40);
    swift_willThrow();
    (*(v96 + 8))(v13, v41);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v98);
}

uint64_t sub_20C6441A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BubbleTipAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_20C644234(uint64_t a1)
{
  sub_20C6442EC(319, &qword_281105B58, &qword_281105780, 0x277CEE490);
  if (v1 <= 0x3F)
  {
    sub_20C6442EC(319, &qword_281105B50, &qword_281105778, 0x277CEE488);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_20C6442EC(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    sub_20C5F94D4(255, a3, a4);
    v5 = sub_20C64D0C0();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_20C6443D8()
{
  result = qword_27C7CFDB8;
  if (!qword_27C7CFDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFDB8);
  }

  return result;
}

unint64_t sub_20C644430()
{
  result = qword_27C7CFDC0;
  if (!qword_27C7CFDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFDC0);
  }

  return result;
}

unint64_t sub_20C644488()
{
  result = qword_27C7CFDC8;
  if (!qword_27C7CFDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFDC8);
  }

  return result;
}

unint64_t sub_20C6444E0()
{
  result = qword_27C7CFDD0;
  if (!qword_27C7CFDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFDD0);
  }

  return result;
}

unint64_t sub_20C644538()
{
  result = qword_27C7CFDD8;
  if (!qword_27C7CFDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFDD8);
  }

  return result;
}

unint64_t sub_20C644590()
{
  result = qword_27C7CFDE0;
  if (!qword_27C7CFDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFDE0);
  }

  return result;
}

unint64_t sub_20C6445E8()
{
  result = qword_27C7CFDE8;
  if (!qword_27C7CFDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFDE8);
  }

  return result;
}

unint64_t sub_20C644640()
{
  result = qword_27C7CFDF0;
  if (!qword_27C7CFDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFDF0);
  }

  return result;
}

unint64_t sub_20C644698()
{
  result = qword_27C7CFDF8;
  if (!qword_27C7CFDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFDF8);
  }

  return result;
}

unint64_t sub_20C6446F0()
{
  result = qword_27C7CFE00;
  if (!qword_27C7CFE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFE00);
  }

  return result;
}

unint64_t sub_20C644748()
{
  result = qword_27C7CFE08;
  if (!qword_27C7CFE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFE08);
  }

  return result;
}

unint64_t sub_20C6447A0()
{
  result = qword_27C7CFE10;
  if (!qword_27C7CFE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFE10);
  }

  return result;
}

unint64_t sub_20C6447F8()
{
  result = qword_27C7CFE18;
  if (!qword_27C7CFE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFE18);
  }

  return result;
}

unint64_t sub_20C644850()
{
  result = qword_27C7CFE20;
  if (!qword_27C7CFE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFE20);
  }

  return result;
}

unint64_t sub_20C6448A8()
{
  result = qword_27C7CFE28;
  if (!qword_27C7CFE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFE28);
  }

  return result;
}

unint64_t sub_20C644900()
{
  result = qword_27C7CFE30;
  if (!qword_27C7CFE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFE30);
  }

  return result;
}

unint64_t sub_20C644958()
{
  result = qword_27C7CFE38;
  if (!qword_27C7CFE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFE38);
  }

  return result;
}

unint64_t sub_20C6449B0()
{
  result = qword_27C7CFE40;
  if (!qword_27C7CFE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFE40);
  }

  return result;
}

unint64_t sub_20C644A08()
{
  result = qword_27C7CFE48;
  if (!qword_27C7CFE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFE48);
  }

  return result;
}

unint64_t sub_20C644A60()
{
  result = qword_27C7CFE50;
  if (!qword_27C7CFE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFE50);
  }

  return result;
}

unint64_t sub_20C644AB8()
{
  result = qword_27C7CFE58;
  if (!qword_27C7CFE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFE58);
  }

  return result;
}

unint64_t sub_20C644B10()
{
  result = qword_27C7CFE60;
  if (!qword_27C7CFE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFE60);
  }

  return result;
}

unint64_t sub_20C644B68()
{
  result = qword_27C7CFE68;
  if (!qword_27C7CFE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFE68);
  }

  return result;
}

uint64_t sub_20C644BBC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x61546E6F69746361 && a2 == 0xEC00000064657070;
  if (v4 || (sub_20C64E430() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x800000020C65A680 == a2 || (sub_20C64E430() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x657461676976616ELL && a2 == 0xED00004C52556F54 || (sub_20C64E430() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000018 && 0x800000020C65A6A0 == a2 || (sub_20C64E430() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x616C507465736572 && a2 == 0xEE00746E656D6563 || (sub_20C64E430() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x800000020C65A6C0 == a2 || (sub_20C64E430() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6570704177656976 && a2 == 0xEC00000064657261 || (sub_20C64E430() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6173694477656976 && a2 == 0xEF64657261657070)
  {

    return 7;
  }

  else
  {
    v6 = sub_20C64E430();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_20C644E78@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v64 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFE70, &qword_20C658E48);
  MEMORY[0x28223BE20](v3 - 8);
  v58 = v51 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFE78, &qword_20C658E50);
  MEMORY[0x28223BE20](v5 - 8);
  v57 = v51 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFE80, &qword_20C658E58);
  MEMORY[0x28223BE20](v7 - 8);
  v56 = v51 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFE88, &qword_20C658E60);
  MEMORY[0x28223BE20](v9 - 8);
  v53 = v51 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFE90, &qword_20C658E68);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v54 = v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v55 = v51 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFE98, &qword_20C658E70);
  MEMORY[0x28223BE20](v15 - 8);
  v59 = v51 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFEA0, &qword_20C658E78);
  MEMORY[0x28223BE20](v17 - 8);
  v60 = v51 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFEA8, &qword_20C658E80);
  v20 = *(v19 - 8);
  v61 = v19;
  v62 = v20;
  MEMORY[0x28223BE20](v19);
  v52 = v51 - v21;
  v22 = sub_20C64CE90();
  MEMORY[0x28223BE20](v22 - 8);
  v23 = sub_20C64CE30();
  MEMORY[0x28223BE20](v23);
  v24 = sub_20C64CE50();
  v63 = *(v24 - 8);
  v25 = MEMORY[0x28223BE20](v24);
  v51[0] = v51 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = v51 - v27;
  v51[1] = a1;
  sub_20C64CF80();
  v29 = sub_20C64CFC0();
  v31 = v30;

  if (v31)
  {
    v32 = v29;
  }

  else
  {
    v32 = 0;
  }

  if (v31)
  {
    v33 = v31;
  }

  else
  {
    v33 = 0xE000000000000000;
  }

  sub_20C64CE20();
  sub_20C6457AC(&qword_27C7CFEB0, MEMORY[0x277CC8B30], MEMORY[0x277CC8B40]);
  v69 = sub_20C64E0C0();
  v70 = v34;
  v67 = 16421;
  v68 = 0xE200000000000000;
  v65 = v32;
  v66 = v33;
  sub_20C602C18();
  sub_20C64E200();

  sub_20C64CE80();
  v35 = v24;
  sub_20C64CE60();
  v69 = 28197;
  v70 = 0xE200000000000000;
  v36 = sub_20C64CFE0();
  v37 = v59;
  (*(*(v36 - 8) + 56))(v59, 1, 1, v36);
  sub_20C6457AC(&qword_27C7CFEB8, MEMORY[0x277CC8C40], MEMORY[0x277CC8C38]);
  v38 = v60;
  sub_20C64CEB0();
  v39 = v61;
  sub_20C5DBFC4(v37, &qword_27C7CFE98, &qword_20C658E70);
  if ((*(v62 + 48))(v38, 1, v39) == 1)
  {
    sub_20C5DBFC4(v38, &qword_27C7CFEA0, &qword_20C658E78);
    v40 = v63;
  }

  else
  {
    v41 = v52;
    sub_20C6457F4(v38, v52);
    sub_20C64CF80();
    v62 = v35;
    sub_20C64E070();

    sub_20C64CE80();
    v42 = v51[0];
    sub_20C64CE60();
    v43 = sub_20C64D8F0();
    (*(*(v43 - 8) + 56))(v53, 1, 1, v43);
    v44 = sub_20C64D900();
    (*(*(v44 - 8) + 56))(v56, 1, 1, v44);
    v45 = sub_20C64D910();
    (*(*(v45 - 8) + 56))(v57, 1, 1, v45);
    v46 = sub_20C64D8E0();
    (*(*(v46 - 8) + 56))(v58, 1, 1, v46);
    v47 = v55;
    sub_20C64D920();
    v48 = sub_20C64D930();
    (*(*(v48 - 8) + 56))(v47, 0, 1, v48);
    sub_20C645864(v47, v54);
    sub_20C6458D4();
    v35 = v62;
    sub_20C64CE70();
    sub_20C5DBFC4(v47, &qword_27C7CFE90, &qword_20C658E68);
    sub_20C645928();
    sub_20C64CE40();
    v49 = v63;
    (*(v63 + 8))(v42, v35);
    sub_20C5DBFC4(v41, &qword_27C7CFEA8, &qword_20C658E80);
    v40 = v49;
  }

  return (*(v40 + 32))(v64, v28, v35);
}

uint64_t sub_20C6457AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20C6457F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFEA8, &qword_20C658E80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C645864(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFE90, &qword_20C658E68);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_20C6458D4()
{
  result = qword_27C7CFEC0;
  if (!qword_27C7CFEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFEC0);
  }

  return result;
}

unint64_t sub_20C645928()
{
  result = qword_27C7CFEC8;
  if (!qword_27C7CFEC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CFEA8, &qword_20C658E80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFEC8);
  }

  return result;
}

uint64_t sub_20C64598C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v71 = a8;
  v82 = a7;
  v79 = a5;
  v80 = a6;
  v77 = a3;
  v78 = a4;
  v76 = a2;
  v74 = a1;
  v85 = a9;
  v75 = a11;
  v66 = a10;
  v83 = sub_20C64D320();
  MEMORY[0x28223BE20](v83);
  v84 = v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = *(a8 + 24);
  sub_20C64D700();
  v86 = sub_20C64D2E0();
  v81 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v68 = v56 - v13;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF1F0, &qword_20C6570E0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF9B0, &qword_20C6570E8);
  sub_20C64D2E0();
  swift_getTupleTypeMetadata3();
  sub_20C64DE30();
  swift_getWitnessTable();
  sub_20C64DD60();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF9B8, &qword_20C6570F0);
  sub_20C64D2E0();
  sub_20C64D2E0();
  sub_20C64D2E0();
  sub_20C64D2E0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF9C0, &qword_20C6570F8);
  v14 = sub_20C64D2E0();
  WitnessTable = swift_getWitnessTable();
  v16 = sub_20C5E5558(&qword_2811058B0, &qword_27C7CF9B8, &qword_20C6570F0, MEMORY[0x277CE0868]);
  v120 = WitnessTable;
  v121 = v16;
  v118 = swift_getWitnessTable();
  v119 = MEMORY[0x277CDF918];
  v17 = MEMORY[0x277CDF918];
  v116 = swift_getWitnessTable();
  v117 = v17;
  v114 = swift_getWitnessTable();
  v115 = v17;
  v18 = swift_getWitnessTable();
  v19 = sub_20C5E5558(&qword_281105988, &qword_27C7CF9C0, &qword_20C6570F8, MEMORY[0x277CE0328]);
  v112 = v18;
  v113 = v19;
  v56[1] = v14;
  v56[2] = swift_getWitnessTable();
  v59 = sub_20C64D340();
  v58 = sub_20C64D2E0();
  v62 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v21 = v56 - v20;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF180, &qword_20C654520);
  v63 = sub_20C64D2E0();
  v65 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v57 = v56 - v22;
  v67 = sub_20C64D2E0();
  v72 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v61 = v56 - v23;
  v60 = sub_20C64D2E0();
  v73 = *(v60 - 8);
  v24 = MEMORY[0x28223BE20](v60);
  v64 = v56 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v69 = v56 - v26;
  v27 = v70;
  v28 = v71;
  v29 = *(v71 + 40);
  v30 = v68;
  sub_20C64DAF0();
  sub_20C64DDF0();
  v88 = *(v28 + 16);
  v89 = v27;
  v31 = *(v28 + 32);
  v90 = v66;
  v91 = v31;
  v92 = v29;
  v93 = v75;
  v94 = v76;
  v95 = v77;
  v96 = v87;
  v97 = v78;
  v98 = v79;
  v99 = v80;
  v100 = v82;
  v32 = sub_20C614C94(&qword_281105888, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
  v110 = v29;
  v111 = v32;
  v33 = v86;
  v34 = swift_getWitnessTable();
  sub_20C64DB70();
  (*(v81 + 8))(v30, v33);
  v35 = v28;
  sub_20C62E988(v28);
  swift_getKeyPath();
  sub_20C64DF30();

  v36 = v109;
  v37 = *(v83 + 20);
  v38 = *MEMORY[0x277CE0118];
  v39 = sub_20C64D4A0();
  v40 = v84;
  (*(*(v39 - 8) + 104))(&v84[v37], v38, v39);
  *v40 = v36;
  v40[1] = v36;
  v41 = swift_getWitnessTable();
  v107 = v34;
  v108 = v41;
  v42 = v58;
  v43 = swift_getWitnessTable();
  sub_20C614C94(&qword_2811059A0, MEMORY[0x277CDFC08], MEMORY[0x277CDFBF8]);
  v44 = v57;
  sub_20C64DBD0();
  sub_20C614724(v40);
  (*(v62 + 8))(v21, v42);
  sub_20C62E988(v35);
  swift_getKeyPath();
  sub_20C64DF30();

  v45 = sub_20C5E5558(&qword_281105B18, &qword_27C7CF180, &qword_20C654520, MEMORY[0x277CDF4F0]);
  v105 = v43;
  v106 = v45;
  v46 = v63;
  v47 = swift_getWitnessTable();
  v48 = v61;
  sub_20C64DA30();
  (*(v65 + 8))(v44, v46);
  sub_20C64D790();
  sub_20C62E988(v35);
  swift_getKeyPath();
  sub_20C64DF30();

  v103 = v47;
  v104 = MEMORY[0x277CE01B0];
  v49 = v67;
  v50 = swift_getWitnessTable();
  v51 = v64;
  sub_20C64DB80();
  (*(v72 + 8))(v48, v49);
  v101 = v50;
  v102 = MEMORY[0x277CDF918];
  v52 = v60;
  swift_getWitnessTable();
  v53 = v69;
  sub_20C606460();
  v54 = *(v73 + 8);
  v54(v51, v52);
  sub_20C606460();
  return (v54)(v53, v52);
}

uint64_t sub_20C6463E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v52 = a7;
  v61 = a5;
  v62 = a6;
  v59 = a3;
  v60 = a4;
  v58 = a2;
  v56 = a1;
  v76 = a9;
  v55 = a14;
  v54 = a13;
  v53 = a12;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF1F0, &qword_20C6570E0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF9B0, &qword_20C6570E8);
  sub_20C64D2E0();
  swift_getTupleTypeMetadata3();
  sub_20C64DE30();
  swift_getWitnessTable();
  v15 = sub_20C64DD60();
  v50 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v49 - v16;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF9B8, &qword_20C6570F0);
  v57 = sub_20C64D2E0();
  v65 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v49 = &v49 - v18;
  v66 = sub_20C64D2E0();
  v71 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v51 = &v49 - v19;
  v67 = sub_20C64D2E0();
  v72 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v63 = &v49 - v20;
  v69 = sub_20C64D2E0();
  v74 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v64 = &v49 - v21;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF9C0, &qword_20C6570F8);
  v70 = sub_20C64D2E0();
  v75 = *(v70 - 8);
  v22 = MEMORY[0x28223BE20](v70);
  v68 = &v49 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v73 = &v49 - v24;
  sub_20C64D4D0();
  v77 = a8;
  v78 = a10;
  v26 = v53;
  v25 = v54;
  v79 = a11;
  v80 = v53;
  v81 = v54;
  v82 = v55;
  v83 = v56;
  v84 = v58;
  v85 = v59;
  v86 = v60;
  v87 = v61;
  v88 = v62;
  v89 = v52;
  sub_20C64DD50();
  WitnessTable = swift_getWitnessTable();
  v28 = v49;
  sub_20C64DB20();
  (*(v50 + 8))(v17, v15);
  LODWORD(v62) = sub_20C64D790();
  v100[0] = a8;
  v100[1] = a10;
  v100[2] = v26;
  v100[3] = v25;
  v29 = type metadata accessor for MarketingInlineView(0, v100);
  sub_20C62E988(v29);
  swift_getKeyPath();
  sub_20C64DF30();

  v30 = sub_20C5E5558(&qword_2811058B0, &qword_27C7CF9B8, &qword_20C6570F0, MEMORY[0x277CE0868]);
  v98 = WitnessTable;
  v99 = v30;
  v31 = v57;
  v32 = swift_getWitnessTable();
  v33 = v51;
  sub_20C64DB80();
  (*(v65 + 8))(v28, v31);
  sub_20C64D7C0();
  sub_20C62E988(v29);
  swift_getKeyPath();
  sub_20C64DF30();

  v34 = MEMORY[0x277CDF918];
  v96 = v32;
  v97 = MEMORY[0x277CDF918];
  v35 = v66;
  v36 = swift_getWitnessTable();
  v37 = v63;
  sub_20C64DB80();
  (*(v71 + 8))(v33, v35);
  sub_20C64D7B0();
  v94 = v36;
  v95 = v34;
  v38 = v67;
  v39 = swift_getWitnessTable();
  v40 = v64;
  sub_20C64DB80();
  (*(v72 + 8))(v37, v38);
  sub_20C64DE00();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFED0, &qword_20C658EB0);
  v92 = v39;
  v93 = v34;
  v41 = v69;
  v42 = swift_getWitnessTable();
  sub_20C64802C();
  v43 = v68;
  sub_20C64DA00();
  (*(v74 + 8))(v40, v41);
  v44 = sub_20C5E5558(&qword_281105988, &qword_27C7CF9C0, &qword_20C6570F8, MEMORY[0x277CE0328]);
  v90 = v42;
  v91 = v44;
  v45 = v70;
  swift_getWitnessTable();
  v46 = v73;
  sub_20C606460();
  v47 = *(v75 + 8);
  v47(v43, v45);
  sub_20C606460();
  return (v47)(v46, v45);
}

uint64_t sub_20C646C64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(uint64_t)@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, __int128 a12, uint64_t a13)
{
  v174 = a8;
  WitnessTable = a3;
  v159 = a7;
  v160 = a6;
  v151 = a1;
  v166 = a9;
  v173 = a10;
  v158 = *(a11 - 8);
  v172 = a12;
  MEMORY[0x28223BE20](a1);
  v156 = &v135 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = v17;
  v165 = sub_20C64D2E0();
  v162 = *(v165 - 8);
  v18 = MEMORY[0x28223BE20](v165);
  v164 = &v135 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v163 = &v135 - v20;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFEE0, &qword_20C658EF0);
  MEMORY[0x28223BE20](v139);
  v141 = &v135 - v21;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFEE8, &qword_20C658EF8);
  MEMORY[0x28223BE20](v140);
  v144 = &v135 - v22;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFEF0, &qword_20C658F00);
  v154 = *(v167 - 8);
  v23 = MEMORY[0x28223BE20](v167);
  v143 = &v135 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v142 = &v135 - v25;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF9B0, &qword_20C6570E8);
  v26 = MEMORY[0x28223BE20](v155);
  v157 = &v135 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v176 = &v135 - v28;
  v29 = sub_20C64D880();
  v170 = *(v29 - 8);
  v171 = v29;
  MEMORY[0x28223BE20](v29);
  v169 = &v135 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE290, &unk_20C655580);
  MEMORY[0x28223BE20](v168);
  v32 = &v135 - v31;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF210, &qword_20C6545D8);
  MEMORY[0x28223BE20](v145);
  v34 = &v135 - v33;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF218, &qword_20C6545E0);
  MEMORY[0x28223BE20](v146);
  v149 = &v135 - v35;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF1E0, &qword_20C6545B8);
  MEMORY[0x28223BE20](v148);
  v150 = &v135 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF1E8, &qword_20C6545C0);
  v38 = *(v37 - 8);
  v39 = MEMORY[0x28223BE20](v37);
  v41 = &v135 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v147 = &v135 - v42;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF1F0, &qword_20C6570E0);
  v43 = MEMORY[0x28223BE20](v152);
  v153 = &v135 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v45 = MEMORY[0x277CDFA10];
  v177 = &v135 - v46;
  if (a2)
  {
    v135 = v38;
    v136 = v37;
    v137 = a4;
    v138 = a5;
    *&v190 = v151;
    *(&v190 + 1) = a2;
    sub_20C602C18();

    v47 = sub_20C64D970();
    v49 = v48;
    *&v190 = v47;
    *(&v190 + 1) = v48;
    v51 = v50 & 1;
    LOBYTE(v191) = v50 & 1;
    *(&v191 + 1) = v52;
    v53 = *v45;
    v54 = sub_20C64D2B0();
    (*(*(v54 - 8) + 104))(v32, v53, v54);
    sub_20C614C94(&qword_281105B08, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
    result = sub_20C64E010();
    if ((result & 1) == 0)
    {
      __break(1u);
      goto LABEL_11;
    }

    sub_20C5E5558(&qword_281105758, &qword_27C7CE290, &unk_20C655580, MEMORY[0x277D84470]);
    sub_20C64DAB0();
    sub_20C614CDC(v32);
    sub_20C5E56C0(v47, v49, v51);

    sub_20C64D820();
    sub_20C64D830();
    sub_20C64D870();

    v57 = v169;
    v56 = v170;
    v58 = v171;
    (*(v170 + 104))(v169, *MEMORY[0x277CE0A10], v171);
    v59 = sub_20C64D8A0();

    (*(v56 + 8))(v57, v58);
    KeyPath = swift_getKeyPath();
    v61 = &v34[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF200, &unk_20C655C60) + 36)];
    *v61 = KeyPath;
    v61[1] = v59;
    LODWORD(v59) = sub_20C64D5A0();
    *&v34[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF208, &qword_20C6545D0) + 36)] = v59;
    *&v190 = v174;
    *(&v190 + 1) = v173;
    v191 = v172;
    v62 = type metadata accessor for MarketingInlineView(0, &v190);
    sub_20C62E988(v62);
    swift_getKeyPath();
    sub_20C64DF30();

    v63 = v194;
    v64 = swift_getKeyPath();
    v65 = &v34[*(v145 + 36)];
    *v65 = v64;
    *(v65 + 1) = v63;
    v65[16] = 0;
    sub_20C64DE00();
    sub_20C64D330();
    v66 = v149;
    sub_20C5E5658(v34, v149, &qword_27C7CF210, &qword_20C6545D8);
    v67 = (v66 + *(v146 + 36));
    v68 = v186;
    v69 = v188;
    v70 = v189;
    v67[4] = v187;
    v67[5] = v69;
    v67[6] = v70;
    v71 = v184;
    *v67 = v183;
    v67[1] = v71;
    v67[2] = v185;
    v67[3] = v68;
    LOBYTE(v63) = sub_20C64D7C0();
    sub_20C64D1A0();
    v73 = v72;
    v75 = v74;
    v77 = v76;
    v79 = v78;
    v80 = v66;
    v81 = v150;
    sub_20C5E5658(v80, v150, &qword_27C7CF218, &qword_20C6545E0);
    v82 = v81 + *(v148 + 36);
    *v82 = v63;
    *(v82 + 8) = v73;
    *(v82 + 16) = v75;
    *(v82 + 24) = v77;
    *(v82 + 32) = v79;
    *(v82 + 40) = 0;
    v83 = swift_getKeyPath();
    sub_20C5E5658(v81, v41, &qword_27C7CF1E0, &qword_20C6545B8);
    v84 = v136;
    v85 = &v41[*(v136 + 36)];
    *v85 = v83;
    v85[1] = 0x3FE8A3D70A3D70A4;
    v86 = v147;
    sub_20C5E5658(v41, v147, &qword_27C7CF1E8, &qword_20C6545C0);
    v87 = v86;
    v88 = v177;
    sub_20C5E5658(v87, v177, &qword_27C7CF1E8, &qword_20C6545C0);
    (*(v135 + 56))(v88, 0, 1, v84);
    a4 = v137;
    a5 = v138;
  }

  else
  {
    (*(v38 + 56))();
  }

  v89 = MEMORY[0x277CDFA10];
  if (!a5)
  {
    v124 = 1;
    v123 = v176;
    v119 = v167;
    goto LABEL_9;
  }

  *&v190 = a4;
  *(&v190 + 1) = a5;
  sub_20C602C18();

  v90 = sub_20C64D970();
  v92 = v91;
  *&v190 = v90;
  *(&v190 + 1) = v91;
  v94 = v93 & 1;
  LOBYTE(v191) = v93 & 1;
  *(&v191 + 1) = v95;
  v96 = *v89;
  v97 = sub_20C64D2B0();
  (*(*(v97 - 8) + 104))(v32, v96, v97);
  sub_20C614C94(&qword_281105B08, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
  result = sub_20C64E010();
  if (result)
  {
    sub_20C5E5558(&qword_281105758, &qword_27C7CE290, &unk_20C655580, MEMORY[0x277D84470]);
    v98 = v141;
    sub_20C64DAB0();
    sub_20C614CDC(v32);
    sub_20C5E56C0(v90, v92, v94);

    sub_20C64D7F0();
    v100 = v169;
    v99 = v170;
    v101 = v171;
    (*(v170 + 104))(v169, *MEMORY[0x277CE0A10], v171);
    v102 = sub_20C64D8A0();

    (*(v99 + 8))(v100, v101);
    v103 = swift_getKeyPath();
    v104 = (v98 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF200, &unk_20C655C60) + 36));
    *v104 = v103;
    v104[1] = v102;
    LODWORD(v103) = sub_20C64D5C0();
    *(v98 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF208, &qword_20C6545D0) + 36)) = v103;
    v105 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFEF8, &qword_20C658F08) + 36);
    v106 = *MEMORY[0x277CE13B8];
    v107 = sub_20C64DE20();
    (*(*(v107 - 8) + 104))(v98 + v105, v106, v107);
    *&v190 = v174;
    *(&v190 + 1) = v173;
    v191 = v172;
    v108 = type metadata accessor for MarketingInlineView(0, &v190);
    sub_20C62E988(v108);
    swift_getKeyPath();
    sub_20C64DF30();

    v109 = *(&v194 + 1);
    v110 = swift_getKeyPath();
    v111 = v98 + *(v139 + 36);
    *v111 = v110;
    *(v111 + 8) = v109;
    *(v111 + 16) = 0;
    sub_20C64DE00();
    sub_20C64D330();
    v112 = v144;
    sub_20C5E5658(v98, v144, &qword_27C7CFEE0, &qword_20C658EF0);
    v113 = (v112 + *(v140 + 36));
    v114 = v195;
    v113[4] = v194;
    v113[5] = v114;
    v113[6] = v196;
    v115 = v191;
    *v113 = v190;
    v113[1] = v115;
    v116 = v193;
    v113[2] = v192;
    v113[3] = v116;
    v117 = swift_getKeyPath();
    v118 = v143;
    sub_20C5E5658(v112, v143, &qword_27C7CFEE8, &qword_20C658EF8);
    v119 = v167;
    v120 = (v118 + *(v167 + 36));
    *v120 = v117;
    v120[1] = 0x3FE999999999999ALL;
    v121 = v118;
    v122 = v142;
    sub_20C5E5658(v121, v142, &qword_27C7CFEF0, &qword_20C658F00);
    v123 = v176;
    sub_20C5E5658(v122, v176, &qword_27C7CFEF0, &qword_20C658F00);
    v124 = 0;
LABEL_9:
    v125 = (*(v154 + 56))(v123, v124, 1, v119);
    v126 = v156;
    v160(v125);
    sub_20C64D7B0();
    v127 = v164;
    v128 = v161;
    sub_20C64DB80();
    (*(v158 + 8))(v126, v128);
    v182[3] = a13;
    v182[4] = MEMORY[0x277CDF918];
    v129 = v165;
    WitnessTable = swift_getWitnessTable();
    v130 = v163;
    sub_20C606460();
    v131 = v162;
    v132 = *(v162 + 8);
    v132(v127, v129);
    v133 = v153;
    sub_20C5E574C(v177, v153, &qword_27C7CF1F0, &qword_20C6570E0);
    v182[0] = v133;
    v134 = v157;
    sub_20C5E574C(v123, v157, &qword_27C7CF9B0, &qword_20C6570E8);
    v182[1] = v134;
    (*(v131 + 16))(v127, v130, v129);
    v182[2] = v127;
    v181[0] = v152;
    v181[1] = v155;
    v181[2] = v129;
    v178 = sub_20C648434(&qword_2811059B0, &qword_27C7CF1F0, &qword_20C6570E0, sub_20C6481AC);
    v179 = sub_20C648434(&qword_2811059C0, &qword_27C7CF9B0, &qword_20C6570E8, sub_20C6484B0);
    v180 = WitnessTable;
    sub_20C610B6C(v182, 3uLL, v181);
    v132(v130, v129);
    sub_20C5DBFC4(v176, &qword_27C7CF9B0, &qword_20C6570E8);
    sub_20C5DBFC4(v177, &qword_27C7CF1F0, &qword_20C6570E0);
    v132(v127, v129);
    sub_20C5DBFC4(v134, &qword_27C7CF9B0, &qword_20C6570E8);
    return sub_20C5DBFC4(v133, &qword_27C7CF1F0, &qword_20C6570E0);
  }

LABEL_11:
  __break(1u);
  return result;
}

__n128 sub_20C647E6C@<Q0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF238, &unk_20C654690);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_20C6544F0;
  v3 = objc_opt_self();
  v4 = [v3 secondarySystemBackgroundColor];
  sub_20C64DC40();
  *(v2 + 32) = sub_20C64DDA0();
  *(v2 + 40) = v5;
  v6 = [v3 secondarySystemBackgroundColor];
  sub_20C64DC40();
  *(v2 + 48) = sub_20C64DDA0();
  *(v2 + 56) = v7;
  sub_20C64DC00();
  *(v2 + 64) = sub_20C64DDA0();
  *(v2 + 72) = v8;
  sub_20C64DE60();
  sub_20C64DE50();
  sub_20C64DDB0();
  sub_20C64D2A0();
  v9 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFED0, &qword_20C658EB0) + 36));
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFED8, &qword_20C658EB8) + 28);
  v11 = *MEMORY[0x277CDF3C0];
  v12 = sub_20C64D1F0();
  (*(*(v12 - 8) + 104))(v9 + v10, v11, v12);
  *v9 = swift_getKeyPath();
  *(a1 + 32) = v16;
  result = v15;
  *a1 = v14;
  *(a1 + 16) = v15;
  return result;
}

unint64_t sub_20C64802C()
{
  result = qword_281105B00;
  if (!qword_281105B00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CFED0, &qword_20C658EB0);
    sub_20C611C14();
    sub_20C5E5558(&qword_2811058C0, &qword_27C7CFED8, &qword_20C658EB8, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281105B00);
  }

  return result;
}

uint64_t sub_20C6480E4(uint64_t a1)
{
  v2 = sub_20C64D1F0();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_20C64D380();
}

unint64_t sub_20C6481AC()
{
  result = qword_2811059B8;
  if (!qword_2811059B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF1E8, &qword_20C6545C0);
    sub_20C648264();
    sub_20C5E5558(&qword_2811058C8, &qword_27C7CEDD0, &unk_20C653790, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811059B8);
  }

  return result;
}

unint64_t sub_20C648264()
{
  result = qword_2811059D8;
  if (!qword_2811059D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF1E0, &qword_20C6545B8);
    sub_20C6482F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811059D8);
  }

  return result;
}

unint64_t sub_20C6482F0()
{
  result = qword_2811059F0;
  if (!qword_2811059F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF218, &qword_20C6545E0);
    sub_20C64837C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811059F0);
  }

  return result;
}

unint64_t sub_20C64837C()
{
  result = qword_281105A28;
  if (!qword_281105A28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF210, &qword_20C6545D8);
    sub_20C622A8C();
    sub_20C5E5558(&qword_281105890, &qword_27C7CEDE0, &qword_20C6537A0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281105A28);
  }

  return result;
}

uint64_t sub_20C648434(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_20C6484B0()
{
  result = qword_2811059C8;
  if (!qword_2811059C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CFEF0, &qword_20C658F00);
    sub_20C648568();
    sub_20C5E5558(&qword_2811058C8, &qword_27C7CEDD0, &unk_20C653790, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811059C8);
  }

  return result;
}

unint64_t sub_20C648568()
{
  result = qword_2811059E0;
  if (!qword_2811059E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CFEE8, &qword_20C658EF8);
    sub_20C6485F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811059E0);
  }

  return result;
}

unint64_t sub_20C6485F4()
{
  result = qword_2811059F8;
  if (!qword_2811059F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CFEE0, &qword_20C658EF0);
    sub_20C6486AC();
    sub_20C5E5558(&qword_281105890, &qword_27C7CEDE0, &qword_20C6537A0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811059F8);
  }

  return result;
}

unint64_t sub_20C6486AC()
{
  result = qword_281105A30;
  if (!qword_281105A30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CFEF8, &qword_20C658F08);
    sub_20C622A8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281105A30);
  }

  return result;
}

uint64_t MarketingInlineState.activeStorefrontLocale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_20C64CFE0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t MarketingInlineState.artworkCropCode.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MarketingInlineState(0) + 20);

  return sub_20C648830(v3, a1);
}

uint64_t type metadata accessor for MarketingInlineState(uint64_t a1)
{
  result = qword_281106578;
  if (!qword_281106578)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20C648830(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF1B8, &unk_20C657110);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 MarketingInlineState.layout.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MarketingInlineState(0) + 28);
  v4 = *(v3 + 48);
  *(a1 + 32) = *(v3 + 32);
  *(a1 + 48) = v4;
  *(a1 + 64) = *(v3 + 64);
  result = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = result;
  return result;
}

uint64_t MarketingInlineState.placement.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MarketingInlineState(0) + 32);
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
}

uint64_t MarketingInlineState.loadState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MarketingInlineState(0) + 40);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF9E8, &qword_20C657250);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MarketingInlineState.loadState.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MarketingInlineState(0) + 40);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF9E8, &qword_20C657250);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

__n128 MarketingInlineState.init(activeStorefrontLocale:artworkCropCode:isInternalBuild:layout:placement:platform:loadState:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char *a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v15 = *a5;
  v16 = *(a5 + 1);
  v17 = *(a5 + 2);
  v18 = sub_20C64CFE0();
  (*(*(v18 - 8) + 32))(a8, a1, v18);
  v19 = type metadata accessor for MarketingInlineState(0);
  sub_20C648C1C(a2, a8 + v19[5]);
  *(a8 + v19[6]) = a3;
  v20 = a8 + v19[8];
  *v20 = v15;
  *(v20 + 8) = v16;
  *(v20 + 16) = v17;
  *(a8 + v19[9]) = a6;
  v21 = v19[10];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF9E8, &qword_20C657250);
  (*(*(v22 - 8) + 32))(a8 + v21, a7, v22);
  v23 = a8 + v19[7];
  v24 = *(a4 + 48);
  *(v23 + 32) = *(a4 + 32);
  *(v23 + 48) = v24;
  *(v23 + 64) = *(a4 + 64);
  result = *(a4 + 16);
  *v23 = *a4;
  *(v23 + 16) = result;
  return result;
}

uint64_t sub_20C648C1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF1B8, &unk_20C657110);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_20C648C8C()
{
  v1 = *v0;
  v2 = 0x436B726F77747261;
  v3 = 0x6D726F6674616C70;
  if (v1 != 5)
  {
    v3 = 0x7461745364616F6CLL;
  }

  v4 = 0x74756F79616CLL;
  if (v1 != 3)
  {
    v4 = 0x6E656D6563616C70;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0x6E7265746E497369;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000016;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_20C648D84@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_20C64A164(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_20C648DAC(uint64_t a1)
{
  v2 = sub_20C6491C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C648DE8(uint64_t a1)
{
  v2 = sub_20C6491C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MarketingInlineState.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFF00, &qword_20C658FA0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C6491C4();
  sub_20C64E500();
  LOBYTE(v19) = 0;
  sub_20C64CFE0();
  sub_20C64A3D0(&qword_27C7CE110, MEMORY[0x277CC9788], MEMORY[0x277CC9790]);
  sub_20C64E410();
  if (!v2)
  {
    v9 = type metadata accessor for MarketingInlineState(0);
    LOBYTE(v19) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF1B8, &unk_20C657110);
    sub_20C64997C(&qword_27C7CFF10, MEMORY[0x277D0A880]);
    sub_20C64E410();
    v24 = 2;
    sub_20C64E3F0();
    v10 = (v3 + v9[7]);
    v11 = v10[3];
    v21 = v10[2];
    v22 = v11;
    v23 = v10[4];
    v12 = v10[1];
    v19 = *v10;
    v20 = v12;
    v18 = 3;
    sub_20C649218();
    sub_20C64E410();
    v13 = v3 + v9[8];
    v14 = *(v13 + 8);
    v15 = *(v13 + 16);
    LOBYTE(v19) = *v13;
    *(&v19 + 1) = v14;
    *&v20 = v15;
    v18 = 4;
    sub_20C626170();

    sub_20C64E410();

    LOBYTE(v19) = *(v3 + v9[9]);
    v18 = 5;
    sub_20C5F8B88();
    sub_20C64E410();
    LOBYTE(v19) = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF9E8, &qword_20C657250);
    sub_20C649AB8(&qword_27C7CFF30, MEMORY[0x277D04390]);
    sub_20C64E410();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_20C6491C4()
{
  result = qword_27C7CFF08;
  if (!qword_27C7CFF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFF08);
  }

  return result;
}

unint64_t sub_20C649218()
{
  result = qword_27C7CFF28;
  if (!qword_27C7CFF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFF28);
  }

  return result;
}

uint64_t MarketingInlineState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF9E8, &qword_20C657250);
  v25 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v28 = &v24 - v3;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF1B8, &unk_20C657110);
  MEMORY[0x28223BE20](v29);
  v5 = &v24 - v4;
  v6 = sub_20C64CFE0();
  v30 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v32 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFF38, &qword_20C658FA8);
  v31 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v9 = &v24 - v8;
  v10 = type metadata accessor for MarketingInlineState(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C6491C4();
  v33 = v9;
  v13 = v35;
  sub_20C64E4F0();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v14 = v30;
  LOBYTE(v38) = 0;
  sub_20C64A3D0(&qword_27C7CE148, MEMORY[0x277CC9788], MEMORY[0x277CC97A8]);
  sub_20C64E390();
  v15 = *(v14 + 32);
  v35 = v6;
  v15(v12, v32, v6);
  LOBYTE(v38) = 1;
  sub_20C64997C(&qword_27C7CFF40, MEMORY[0x277D0A888]);
  sub_20C64E390();
  sub_20C648C1C(v5, &v12[v10[5]]);
  LOBYTE(v38) = 2;
  v16 = a1;
  v12[v10[6]] = sub_20C64E370() & 1;
  v44 = 3;
  sub_20C649A64();
  sub_20C64E390();
  v17 = v31;
  v18 = &v12[v10[7]];
  v19 = v41;
  *(v18 + 2) = v40;
  *(v18 + 3) = v19;
  *(v18 + 4) = v42;
  v20 = v39;
  *v18 = v38;
  *(v18 + 1) = v20;
  v43 = 4;
  sub_20C626280();
  sub_20C64E390();
  v21 = &v12[v10[8]];
  *v21 = v36[0];
  *(v21 + 8) = v37;
  v43 = 5;
  sub_20C5F8CA8();
  sub_20C64E390();
  v12[v10[9]] = v36[0];
  v36[0] = 6;
  sub_20C649AB8(&qword_27C7CFF50, MEMORY[0x277D04398]);
  v22 = v27;
  sub_20C64E390();
  (*(v17 + 8))(v33, v34);
  (*(v25 + 32))(&v12[v10[10]], v28, v22);
  sub_20C649B8C(v12, v26);
  __swift_destroy_boxed_opaque_existential_1(v16);
  return sub_20C649BF0(v12);
}

uint64_t sub_20C649914(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF1B8, &unk_20C657110);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20C64997C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF1B8, &unk_20C657110);
    v4 = MEMORY[0x277D09E00];
    sub_20C64A3D0(&qword_27C7CFF18, MEMORY[0x277D09E00], MEMORY[0x277D09E28]);
    sub_20C64A3D0(&qword_27C7CFF20, v4, MEMORY[0x277D09E08]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_20C649A64()
{
  result = qword_27C7CFF48;
  if (!qword_27C7CFF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFF48);
  }

  return result;
}

uint64_t sub_20C649AB8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF9E8, &qword_20C657250);
    sub_20C64A3D0(&qword_27C7CF730, type metadata accessor for MarketingOffer, &protocol conformance descriptor for MarketingOffer);
    sub_20C64A3D0(&qword_27C7CF738, type metadata accessor for MarketingOffer, &protocol conformance descriptor for MarketingOffer);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_20C649B8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MarketingInlineState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C649BF0(uint64_t a1)
{
  v2 = type metadata accessor for MarketingInlineState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s16FitnessMarketing0B11InlineStateV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((MEMORY[0x20F300320]() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for MarketingInlineState(0);
  sub_20C64D040();
  v5 = MEMORY[0x277D09E00];
  sub_20C64A3D0(&qword_281106810, MEMORY[0x277D09E00], MEMORY[0x277D09E18]);
  sub_20C64A3D0(&qword_281106808, v5, MEMORY[0x277D09E20]);
  if ((sub_20C64D080() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + v4[6]) != *(a2 + v4[6]))
  {
    return 0;
  }

  v6 = (a1 + v4[7]);
  v7 = v6[3];
  v29 = v6[2];
  v30 = v7;
  v31 = v6[4];
  v8 = v6[1];
  v27 = *v6;
  v28 = v8;
  v9 = (a2 + v4[7]);
  v10 = v9[3];
  v24 = v9[2];
  v25 = v10;
  v26 = v9[4];
  v11 = v9[1];
  v22 = *v9;
  v23 = v11;
  if (!_s16FitnessMarketing0B12InlineLayoutV2eeoiySbAC_ACtFZ_0(&v27, &v22))
  {
    return 0;
  }

  v12 = v4[8];
  v13 = *(a1 + v12 + 8);
  v14 = *(a1 + v12 + 16);
  LOBYTE(v27) = *(a1 + v12);
  *(&v27 + 1) = v13;
  *&v28 = v14;
  v15 = a2 + v12;
  v17 = *(v15 + 8);
  v16 = *(v15 + 16);
  LOBYTE(v22) = *v15;
  *(&v22 + 1) = v17;
  *&v23 = v16;

  LOBYTE(v14) = _s16FitnessMarketing0B9PlacementV2eeoiySbAC_ACtFZ_0(&v27, &v22);

  if ((v14 & 1) == 0 || *(a1 + v4[9]) != *(a2 + v4[9]))
  {
    return 0;
  }

  v18 = v4[10];
  v19 = type metadata accessor for MarketingOffer(0);
  v20 = sub_20C64A3D0(qword_2811061C0, type metadata accessor for MarketingOffer, &protocol conformance descriptor for MarketingOffer);

  return MEMORY[0x282159AE8](a1 + v18, a2 + v18, v19, v20);
}

void sub_20C649EF0(uint64_t a1)
{
  sub_20C64CFE0();
  if (v1 <= 0x3F)
  {
    sub_20C5D3DF8(319);
    if (v2 <= 0x3F)
    {
      sub_20C649FB8(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_20C649FB8(uint64_t a1)
{
  if (!qword_2811057F0)
  {
    type metadata accessor for MarketingOffer(255);
    sub_20C64A3D0(qword_2811061C0, type metadata accessor for MarketingOffer, &protocol conformance descriptor for MarketingOffer);
    v1 = sub_20C64DEB0();
    if (!v2)
    {
      atomic_store(v1, &qword_2811057F0);
    }
  }
}

unint64_t sub_20C64A060()
{
  result = qword_27C7CFF58;
  if (!qword_27C7CFF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFF58);
  }

  return result;
}

unint64_t sub_20C64A0B8()
{
  result = qword_27C7CFF60;
  if (!qword_27C7CFF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFF60);
  }

  return result;
}

unint64_t sub_20C64A110()
{
  result = qword_27C7CFF68;
  if (!qword_27C7CFF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFF68);
  }

  return result;
}

uint64_t sub_20C64A164(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000016 && 0x800000020C6597F0 == a2 || (sub_20C64E430() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x436B726F77747261 && a2 == 0xEF65646F43706F72 || (sub_20C64E430() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E7265746E497369 && a2 == 0xEF646C6975426C61 || (sub_20C64E430() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74756F79616CLL && a2 == 0xE600000000000000 || (sub_20C64E430() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E656D6563616C70 && a2 == 0xE900000000000074 || (sub_20C64E430() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6D726F6674616C70 && a2 == 0xE800000000000000 || (sub_20C64E430() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7461745364616F6CLL && a2 == 0xE900000000000065)
  {

    return 6;
  }

  else
  {
    v5 = sub_20C64E430();

    if (v5)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_20C64A3D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_BYTE *MarketingInlineLayout.init(style:aspectRatio:bottomPadding:topPadding:cornerRadius:horizontalMargins:horizontalPadding:titleLineLimit:subtitleLineLimit:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>, double a9@<D4>, double a10@<D5>, double a11@<D6>)
{
  *a4 = *result;
  *(a4 + 8) = a5;
  *(a4 + 16) = a6;
  *(a4 + 24) = a7;
  *(a4 + 32) = a8;
  *(a4 + 40) = a9;
  *(a4 + 48) = a10;
  *(a4 + 56) = a11;
  *(a4 + 64) = a2;
  *(a4 + 72) = a3;
  return result;
}

unint64_t sub_20C64A488(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x656C797473;
    v6 = 0x61506D6F74746F62;
    if (a1 != 2)
    {
      v6 = 0x6964646150706F74;
    }

    if (a1)
    {
      v5 = 0x6152746365707361;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0xD000000000000011;
    v2 = 0x6E694C656C746974;
    if (a1 != 7)
    {
      v2 = 0xD000000000000011;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x615272656E726F63;
    if (a1 != 4)
    {
      v3 = 0xD000000000000011;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_20C64A5D8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_20C64B4D8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_20C64A60C(uint64_t a1)
{
  v2 = sub_20C64B020();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C64A648(uint64_t a1)
{
  v2 = sub_20C64B020();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MarketingInlineLayout.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFF70, &qword_20C659190);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v17 - v5;
  v7 = *v1;
  v8 = *(v1 + 1);
  v9 = *(v1 + 2);
  v11 = *(v1 + 3);
  v10 = *(v1 + 4);
  v13 = *(v1 + 5);
  v12 = *(v1 + 6);
  v14 = *(v1 + 7);
  v17[1] = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C64B020();
  sub_20C64E500();
  LOBYTE(v18) = v7;
  v20 = 0;
  sub_20C64B074();
  v15 = v17[2];
  sub_20C64E410();
  if (!v15)
  {
    v18 = v8;
    v19 = v9;
    v20 = 1;
    type metadata accessor for CGSize(0);
    sub_20C64B11C(&qword_27C7CFF88, MEMORY[0x277CBF288]);
    sub_20C64E410();
    v18 = v11;
    v20 = 2;
    sub_20C5EB44C();
    sub_20C64E410();
    v18 = v10;
    v20 = 3;
    sub_20C64E410();
    v18 = v13;
    v20 = 4;
    sub_20C64E410();
    v18 = v12;
    v20 = 5;
    sub_20C64E410();
    v18 = v14;
    v20 = 6;
    sub_20C64E410();
    LOBYTE(v18) = 7;
    sub_20C64E400();
    LOBYTE(v18) = 8;
    sub_20C64E400();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t MarketingInlineLayout.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFF90, &qword_20C659198);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C64B020();
  sub_20C64E4F0();
  if (!v2)
  {
    v23 = 0;
    sub_20C64B0C8();
    sub_20C64E390();
    v9 = v21;
    type metadata accessor for CGSize(0);
    v23 = 1;
    sub_20C64B11C(&qword_27C7CFFA0, MEMORY[0x277CBF2A0]);
    sub_20C64E390();
    v10 = v21;
    v11 = v22;
    v23 = 2;
    sub_20C5EB4A0();
    sub_20C64E390();
    v12 = v21;
    v23 = 3;
    sub_20C64E390();
    v13 = v21;
    v23 = 4;
    sub_20C64E390();
    v14 = v21;
    v23 = 5;
    sub_20C64E390();
    v15 = v21;
    v23 = 6;
    sub_20C64E390();
    v16 = v21;
    LOBYTE(v21) = 7;
    v18 = sub_20C64E380();
    LOBYTE(v21) = 8;
    v19 = sub_20C64E380();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    *(a2 + 8) = v10;
    *(a2 + 16) = v11;
    *(a2 + 24) = v12;
    *(a2 + 32) = v13;
    *(a2 + 40) = v14;
    *(a2 + 48) = v15;
    *(a2 + 56) = v16;
    *(a2 + 64) = v18;
    *(a2 + 72) = v19;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t MarketingInlineLayout.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v9 = *(v0 + 8);
  v8 = *(v0 + 9);
  MEMORY[0x20F301800](*v0);
  if (v1 == 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v1;
  }

  MEMORY[0x20F301820](*&v10);
  if (v2 == 0.0)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = v2;
  }

  MEMORY[0x20F301820](*&v11);
  if (v3 == 0.0)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = v3;
  }

  MEMORY[0x20F301820](*&v12);
  if (v4 == 0.0)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = v4;
  }

  MEMORY[0x20F301820](*&v13);
  if (v5 == 0.0)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = v5;
  }

  MEMORY[0x20F301820](*&v14);
  if (v6 == 0.0)
  {
    v15 = 0.0;
  }

  else
  {
    v15 = v6;
  }

  MEMORY[0x20F301820](*&v15);
  if (v7 == 0.0)
  {
    v16 = 0.0;
  }

  else
  {
    v16 = v7;
  }

  MEMORY[0x20F301820](*&v16);
  MEMORY[0x20F301800](v9);
  return MEMORY[0x20F301800](v8);
}

uint64_t MarketingInlineLayout.hashValue.getter()
{
  sub_20C64E4A0();
  MarketingInlineLayout.hash(into:)();
  return sub_20C64E4E0();
}

uint64_t sub_20C64AEFC()
{
  sub_20C64E4A0();
  MarketingInlineLayout.hash(into:)();
  return sub_20C64E4E0();
}

uint64_t sub_20C64AF40(uint64_t a1)
{
  sub_20C64E4A0();
  MarketingInlineLayout.hash(into:)();
  return sub_20C64E4E0();
}

BOOL _s16FitnessMarketing0B12InlineLayoutV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  result = 0;
  if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 8), *(a2 + 8)), vceqq_f64(*(a1 + 24), *(a2 + 24))))))
  {
    v5 = *(a1 + 5) != *(a2 + 5) || *(a1 + 6) != *(a2 + 6) || *(a1 + 7) != *(a2 + 7);
    if (!v5 && ((*a1 ^ *a2) & 1) == 0 && *(a1 + 8) == *(a2 + 8))
    {
      return *(a1 + 9) == *(a2 + 9);
    }
  }

  return result;
}

unint64_t sub_20C64B020()
{
  result = qword_27C7CFF78;
  if (!qword_27C7CFF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFF78);
  }

  return result;
}

unint64_t sub_20C64B074()
{
  result = qword_27C7CFF80;
  if (!qword_27C7CFF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFF80);
  }

  return result;
}

unint64_t sub_20C64B0C8()
{
  result = qword_27C7CFF98;
  if (!qword_27C7CFF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFF98);
  }

  return result;
}

uint64_t sub_20C64B11C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CGSize(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_20C64B164()
{
  result = qword_27C7CFFA8;
  if (!qword_27C7CFFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFFA8);
  }

  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_20C64B1D4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[80])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_20C64B218(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MarketingInlineLayout.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MarketingInlineLayout.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
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

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_20C64B3D4()
{
  result = qword_27C7CFFB0;
  if (!qword_27C7CFFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFFB0);
  }

  return result;
}

unint64_t sub_20C64B42C()
{
  result = qword_27C7CFFB8;
  if (!qword_27C7CFFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFFB8);
  }

  return result;
}

unint64_t sub_20C64B484()
{
  result = qword_27C7CFFC0[0];
  if (!qword_27C7CFFC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27C7CFFC0);
  }

  return result;
}

uint64_t sub_20C64B4D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C797473 && a2 == 0xE500000000000000;
  if (v4 || (sub_20C64E430() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6152746365707361 && a2 == 0xEB000000006F6974 || (sub_20C64E430() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x61506D6F74746F62 && a2 == 0xED0000676E696464 || (sub_20C64E430() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6964646150706F74 && a2 == 0xEA0000000000676ELL || (sub_20C64E430() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x615272656E726F63 && a2 == 0xEC00000073756964 || (sub_20C64E430() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x800000020C65A6E0 == a2 || (sub_20C64E430() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x800000020C65A700 == a2 || (sub_20C64E430() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6E694C656C746974 && a2 == 0xEE0074696D694C65 || (sub_20C64E430() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000011 && 0x800000020C65A720 == a2)
  {

    return 8;
  }

  else
  {
    v6 = sub_20C64E430();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

__n128 MarketingInlineFeature.init(environment:)@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t MarketingInlineFeature.reduce(localState:sharedState:sideEffects:action:)(uint64_t a1, uint64_t a2, uint64_t *a3, char a4)
{
  v50 = a3;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEA38, &qword_20C652AA0);
  v7 = *(v49 - 8);
  v8 = MEMORY[0x28223BE20](v49);
  v10 = &v43[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v12 = &v43[-v11];
  v13 = v4[1];
  v14 = v4[2];
  v15 = v4[3];
  v46 = *v4;
  v47 = v14;
  v16 = (a2 + *(type metadata accessor for MarketingInlineState(0) + 32));
  v44 = *v16;
  v17 = *(v16 + 2);
  v45 = *(v16 + 1);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF830, &qword_20C656700);
  v48 = v18[12];
  v19 = v18[16];
  v20 = v18[20];
  v21 = v18[24];
  if (a4)
  {
    v22 = &v10[v21];
    v52 = 1;
    sub_20C64BD04();

    sub_20C64E230();
    v23 = *MEMORY[0x277D043F0];
    v24 = sub_20C64DF10();
    (*(*(v24 - 8) + 104))(&v10[v19], v23, v24);
    v25 = *MEMORY[0x277D043E0];
    v26 = sub_20C64DF00();
    (*(*(v26 - 8) + 104))(&v10[v20], v25, v26);
    v27 = swift_allocObject();
    v28 = v47;
    *(v27 + 16) = v46;
    *(v27 + 24) = v13;
    *(v27 + 32) = v28;
    *(v27 + 40) = v15;
    *(v27 + 48) = v44;
    *(v27 + 56) = v45;
    *(v27 + 64) = v17;
    *v22 = &unk_20C6593D8;
    v22[1] = v27;

    sub_20C64E170();
    (*(v7 + 104))(v10, *MEMORY[0x277D043B0], v49);
    v29 = v50;
    v30 = *v50;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v30 = sub_20C5F87A4(0, v30[2] + 1, 1, v30);
    }

    v32 = v30[2];
    v31 = v30[3];
    v33 = v32 + 1;
    if (v32 >= v31 >> 1)
    {
      v30 = sub_20C5F87A4((v31 > 1), v32 + 1, 1, v30);
    }

    v12 = v10;
  }

  else
  {
    v34 = &v12[v21];
    v51 = 0;
    sub_20C64BD04();

    sub_20C64E230();
    v35 = *MEMORY[0x277D043F0];
    v36 = sub_20C64DF10();
    (*(*(v36 - 8) + 104))(&v12[v19], v35, v36);
    v37 = *MEMORY[0x277D043E0];
    v38 = sub_20C64DF00();
    (*(*(v38 - 8) + 104))(&v12[v20], v37, v38);
    v39 = swift_allocObject();
    v40 = v47;
    *(v39 + 16) = v46;
    *(v39 + 24) = v13;
    *(v39 + 32) = v40;
    *(v39 + 40) = v15;
    *(v39 + 48) = v44;
    *(v39 + 56) = v45;
    *(v39 + 64) = v17;
    *v34 = &unk_20C6593E8;
    v34[1] = v39;

    sub_20C64E170();
    (*(v7 + 104))(v12, *MEMORY[0x277D043B0], v49);
    v29 = v50;
    v30 = *v50;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v30 = sub_20C5F87A4(0, v30[2] + 1, 1, v30);
    }

    v32 = v30[2];
    v41 = v30[3];
    v33 = v32 + 1;
    if (v32 >= v41 >> 1)
    {
      v30 = sub_20C5F87A4((v41 > 1), v32 + 1, 1, v30);
    }
  }

  v30[2] = v33;
  result = (*(v7 + 32))(v30 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v32, v12);
  *v29 = v30;
  return result;
}

unint64_t sub_20C64BD04()
{
  result = qword_281106290;
  if (!qword_281106290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281106290);
  }

  return result;
}

uint64_t sub_20C64BD58(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 40) = sub_20C64E160();
  *(v8 + 48) = sub_20C64E150();
  *(v8 + 16) = a6;
  *(v8 + 24) = a7;
  *(v8 + 32) = a8;
  v15 = (a2 + *a2);
  v13 = swift_task_alloc();
  *(v8 + 56) = v13;
  *v13 = v8;
  v13[1] = sub_20C64BE90;

  return v15(v8 + 16);
}

uint64_t sub_20C64BE90()
{

  v1 = sub_20C64E130();

  return MEMORY[0x2822009F8](sub_20C64C5C8, v1, v0);
}

uint64_t sub_20C64BFCC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 40) = sub_20C64E160();
  *(v8 + 48) = sub_20C64E150();
  *(v8 + 16) = a6;
  *(v8 + 24) = a7;
  *(v8 + 32) = a8;
  v15 = (a4 + *a4);
  v13 = swift_task_alloc();
  *(v8 + 56) = v13;
  *v13 = v8;
  v13[1] = sub_20C64C104;

  return v15(v8 + 16);
}

uint64_t sub_20C64C104()
{

  v1 = sub_20C64E130();

  return MEMORY[0x2822009F8](sub_20C636AFC, v1, v0);
}

uint64_t sub_20C64C240(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v10 = *(v1 + 48);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_20C5EE6B4;

  return sub_20C64BFCC(a1, v4, v5, v6, v7, v10, v8, v9);
}

uint64_t objectdestroyTm_2()
{

  return swift_deallocObject();
}

uint64_t sub_20C64C36C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v10 = *(v1 + 48);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_20C62B4BC;

  return sub_20C64BD58(a1, v4, v5, v6, v7, v10, v8, v9);
}

unint64_t sub_20C64C448()
{
  result = qword_281106350;
  if (!qword_281106350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281106350);
  }

  return result;
}

unint64_t sub_20C64C4A0()
{
  result = qword_281106358;
  if (!qword_281106358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281106358);
  }

  return result;
}

unint64_t sub_20C64C4F8()
{
  result = qword_281106588[0];
  if (!qword_281106588[0])
  {
    type metadata accessor for MarketingInlineState(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_281106588);
  }

  return result;
}

unint64_t sub_20C64C574()
{
  result = qword_281106288;
  if (!qword_281106288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281106288);
  }

  return result;
}

double sub_20C64C5CC(void *a1)
{
  v1 = a1;
  AudioLanguageEngagementSheetHostingController.preferredContentSize.getter();

  return 624.0;
}

void AudioLanguageEngagementSheetHostingController.preferredContentSize.getter()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 window];

    if (v3)
    {
      [v3 frame];
      v5 = v4;
      v7 = v6;
      v9 = v8;
      v11 = v10;

      v12.origin.x = v5;
      v12.origin.y = v7;
      v12.size.width = v9;
      v12.size.height = v11;
      CGRectGetHeight(v12);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_20C64C6F8(void *a1, double a2, double a3)
{
  v5 = a1;
  AudioLanguageEngagementSheetHostingController.preferredContentSize.setter(a2, a3);
}

id AudioLanguageEngagementSheetHostingController.preferredContentSize.setter(double a1, double a2)
{
  v6.receiver = v2;
  v6.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v6, sel_setPreferredContentSize_, a1, a2);
}

void (*AudioLanguageEngagementSheetHostingController.preferredContentSize.modify(uint64_t *a1))(objc_super **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  AudioLanguageEngagementSheetHostingController.preferredContentSize.getter();
  *(v4 + 16) = 0x4083800000000000;
  *(v4 + 24) = v5;
  return sub_20C64C82C;
}

void sub_20C64C82C(objc_super **a1)
{
  v1 = *a1;
  receiver = (*a1)[1].receiver;
  super_class = (*a1)[1].super_class;
  v4 = (*a1)[2].receiver;
  ObjectType = swift_getObjectType();
  v1->receiver = v4;
  v1->super_class = ObjectType;
  [(objc_super *)v1 setPreferredContentSize:*&receiver, *&super_class];

  free(v1);
}

uint64_t AudioLanguageEngagementSheetHostingController.__allocating_init(rootView:)(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v1);
  v5 = sub_20C64CC44(a1);
  (*(*(*(v2 + class metadata base offset for AudioLanguageEngagementSheetHostingController) - 8) + 8))(a1);
  return v5;
}

uint64_t AudioLanguageEngagementSheetHostingController.init(rootView:)(uint64_t a1)
{
  v3 = *MEMORY[0x277D85000] & *v1;
  v4 = sub_20C64CC44(a1);
  (*(*(*(v3 + class metadata base offset for AudioLanguageEngagementSheetHostingController) - 8) + 8))(a1);
  return v4;
}

void *AudioLanguageEngagementSheetHostingController.init(coder:rootView:)(uint64_t a1, uint64_t a2)
{
  v4 = *((*MEMORY[0x277D85000] & *v2) + class metadata base offset for AudioLanguageEngagementSheetHostingController);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  (*(v5 + 16))(&v11 - v6);
  v7 = sub_20C64D520();
  v8 = *(v5 + 8);
  v9 = v7;
  v8(a2, v4);
  if (v7)
  {
  }

  return v7;
}

id AudioLanguageEngagementSheetHostingController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id AudioLanguageEngagementSheetHostingController.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id AudioLanguageEngagementSheetHostingController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20C64CC44(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  (*(v2 + 16))(&v4 - v1);
  return sub_20C64D530();
}