uint64_t InAppPurchaseShowcaseLockupViewLayout.Metrics.titleSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for InAppPurchaseShowcaseLockupViewLayout.Metrics(0) + 20);
  v4 = sub_24F922628();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t InAppPurchaseShowcaseLockupViewLayout.Metrics.subtitleSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for InAppPurchaseShowcaseLockupViewLayout.Metrics(0) + 24);
  v4 = sub_24F922628();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t InAppPurchaseShowcaseLockupViewLayout.Metrics.subtitleSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for InAppPurchaseShowcaseLockupViewLayout.Metrics(0) + 24);
  v4 = sub_24F922628();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t InAppPurchaseShowcaseLockupViewLayout.Metrics.offerTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for InAppPurchaseShowcaseLockupViewLayout.Metrics(0) + 28);
  __swift_destroy_boxed_opaque_existential_1((v1 + v3));

  return sub_24E612E28(a1, v1 + v3);
}

uint64_t InAppPurchaseShowcaseLockupViewLayout.Metrics.offerButtonSize.setter(double a1, double a2)
{
  result = type metadata accessor for InAppPurchaseShowcaseLockupViewLayout.Metrics(0);
  v6 = (v2 + *(result + 32));
  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t InAppPurchaseShowcaseLockupViewLayout.Metrics.descriptionSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for InAppPurchaseShowcaseLockupViewLayout.Metrics(0) + 36);
  v4 = sub_24F922628();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t InAppPurchaseShowcaseLockupViewLayout.Metrics.descriptionSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for InAppPurchaseShowcaseLockupViewLayout.Metrics(0) + 36);
  v4 = sub_24F922628();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t InAppPurchaseShowcaseLockupViewLayout.metrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for InAppPurchaseShowcaseLockupViewLayout(0) + 36);

  return sub_24EC8D470(v3, a1);
}

double InAppPurchaseShowcaseLockupViewLayout.measurements(fitting:in:)(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v22 = sub_24F92CDB8();
  v6 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(v3 + 5, v3[8]);
  sub_24F922288();
  v21[2] = v9;
  __swift_project_boxed_opaque_existential_1(v4 + 10, v4[13]);
  sub_24F922288();
  v21[0] = v11;
  v21[1] = v10;
  __swift_project_boxed_opaque_existential_1(v4 + 15, v4[18]);
  sub_24F922288();
  v21[4] = v13;
  v21[5] = v12;
  v21[3] = v14;
  v21[6] = v15;
  v16 = v3 + *(type metadata accessor for InAppPurchaseShowcaseLockupViewLayout(0) + 36);
  v17 = type metadata accessor for InAppPurchaseShowcaseLockupViewLayout.Metrics(0);
  sub_24F922628();
  sub_24F9223C8();
  sub_24F9223C8();
  v18 = &v16[*(v17 + 28)];
  v19 = *(v18 + 3);
  __swift_project_boxed_opaque_existential_1(v18, v19);
  sub_24E8ED7D8(v19);
  sub_24F9223A8();
  (*(v6 + 8))(v8, v22);
  __swift_project_boxed_opaque_existential_1(v4 + 20, v4[23]);
  sub_24F922298();
  sub_24F9223C8();
  return a2;
}

uint64_t InAppPurchaseShowcaseLockupViewLayout.placeChildren(relativeTo:in:)(uint64_t a1, __n128 a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v9 = a2.n128_f64[0];
  v10 = sub_24F922888();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v20[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_24EC8E1A8(a1, v13);
  sub_24F9227D8();
  v21.origin.x = v9;
  v21.origin.y = a3;
  v21.size.width = a4;
  v21.size.height = a5;
  Width = CGRectGetWidth(v21);
  v15 = sub_24F922148();
  *v16 = Width;
  v15(v20, 0);
  sub_24F922158();
  v17 = sub_24F9221B8();
  sub_24F922BF8();
  v17(v20, 0);
  v18 = sub_24F9221B8();
  sub_24F922BC8();
  v18(v20, 0);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_24EC8E1A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v70 = a1;
  v75 = a2;
  v71 = sub_24F92CDB8();
  v68 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v66 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F9227F8();
  v87 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F922868();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = v11;
  v73 = sub_24F922838();
  v74 = *(v73 - 8);
  v12 = MEMORY[0x28223BE20](v73);
  v14 = *MEMORY[0x277D22858];
  v16 = *(v15 + 104);
  v86 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16(v86, v14, v12);
  (*(v9 + 104))(v11, *MEMORY[0x277D22868], v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F235740, &unk_24F965BC0);
  v17 = *(sub_24F922848() - 8);
  v82 = *(v17 + 72);
  v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v67 = 4 * v82;
  v19 = swift_allocObject();
  v69 = v19;
  *(v19 + 16) = xmmword_24F942000;
  v20 = v19 + v18;
  v21 = v3 + *(type metadata accessor for InAppPurchaseShowcaseLockupViewLayout(0) + 36);
  v22.n128_u64[0] = *(v21 + 1);
  v80 = v21;
  v93 = MEMORY[0x277D85048];
  v94 = MEMORY[0x277D225F8];
  v92 = v22.n128_f64[0];
  v89[0] = MEMORY[0x277D84F90];
  v77 = sub_24E8EF510(v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F235750, &qword_24F98AA50);
  v78 = sub_24E8EF568();
  sub_24F92C6A8();
  v85 = v20;
  sub_24F922818();
  v24 = *(v87 + 8);
  v87 += 8;
  v76 = v24;
  v24(v7, v5);
  __swift_destroy_boxed_opaque_existential_1(&v92);
  v25 = v3[8];
  v26 = v3[9];
  v27 = __swift_project_boxed_opaque_existential_1(v3 + 5, v25);
  v93 = v25;
  v94 = *(v26 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v92);
  (*(*(v25 - 8) + 16))(boxed_opaque_existential_1, v27, v25);
  v79 = type metadata accessor for InAppPurchaseShowcaseLockupViewLayout.Metrics(0);
  v29 = v79[5];
  v30 = sub_24F922628();
  v90 = v30;
  v91 = MEMORY[0x277D22798];
  v31 = __swift_allocate_boxed_opaque_existential_1(v89);
  v81 = v30;
  v32 = *(v30 - 8);
  v83 = *(v32 + 16);
  v84 = v32 + 16;
  v83(v31, &v21[v29], v30);
  v88 = MEMORY[0x277D84F90];
  v64 = v23;
  sub_24F92C6A8();
  v33 = v82;
  sub_24F922818();
  v34 = v76;
  v76(v7, v5);
  __swift_destroy_boxed_opaque_existential_1(v89);
  __swift_destroy_boxed_opaque_existential_1(&v92);
  v63 = 2 * v33;
  v65 = v3;
  v35 = v3[13];
  v36 = v3[14];
  v37 = __swift_project_boxed_opaque_existential_1(v3 + 10, v35);
  v93 = v35;
  v94 = *(v36 + 8);
  v38 = __swift_allocate_boxed_opaque_existential_1(&v92);
  (*(*(v35 - 8) + 16))(v38, v37, v35);
  v39 = v79;
  v40 = v79[6];
  v41 = v81;
  v90 = v81;
  v91 = MEMORY[0x277D22798];
  v42 = __swift_allocate_boxed_opaque_existential_1(v89);
  v43 = v80;
  v83(v42, &v80[v40], v41);
  v88 = MEMORY[0x277D84F90];
  sub_24F92C6A8();
  v44 = v63;
  sub_24F922818();
  v34(v7, v5);
  __swift_destroy_boxed_opaque_existential_1(v89);
  __swift_destroy_boxed_opaque_existential_1(&v92);
  v82 += v44;
  v45 = *&v43[v39[8] + 8];
  v46 = &v43[v39[7]];
  v47 = *(v46 + 3);
  __swift_project_boxed_opaque_existential_1(v46, v47);
  v48 = v66;
  sub_24E8ED7D8(v47);
  v49 = sub_24F9223A8();
  (*(v68 + 8))(v48, v71);
  v93 = MEMORY[0x277D85048];
  v94 = MEMORY[0x277D225F8];
  v92 = v45 + v49;
  v89[0] = MEMORY[0x277D84F90];
  sub_24F92C6A8();
  v50 = v65;
  sub_24F922818();
  v51 = v76;
  v76(v7, v5);
  __swift_destroy_boxed_opaque_existential_1(&v92);
  v52 = v50;
  v53 = v50[18];
  v54 = v52[19];
  v55 = __swift_project_boxed_opaque_existential_1(v52 + 15, v53);
  v93 = v53;
  v94 = *(v54 + 8);
  v56 = __swift_allocate_boxed_opaque_existential_1(&v92);
  (*(*(v53 - 8) + 16))(v56, v55, v53);
  v57 = v79[9];
  v58 = v81;
  v90 = v81;
  v91 = MEMORY[0x277D22798];
  v59 = __swift_allocate_boxed_opaque_existential_1(v89);
  v83(v59, &v80[v57], v58);
  v88 = MEMORY[0x277D84F90];
  sub_24F92C6A8();
  v60 = v86;
  sub_24F922818();
  v51(v7, v5);
  __swift_destroy_boxed_opaque_existential_1(v89);
  __swift_destroy_boxed_opaque_existential_1(&v92);
  v93 = sub_24F922418();
  v94 = MEMORY[0x277D226F0];
  __swift_allocate_boxed_opaque_existential_1(&v92);
  sub_24F922408();
  sub_24F922878();
  return (*(v74 + 8))(v60, v73);
}

uint64_t sub_24EC8EB30(uint64_t a1, __n128 a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v9 = a2.n128_f64[0];
  v10 = sub_24F922888();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v20[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_24EC8E1A8(a1, v13);
  sub_24F9227D8();
  v21.origin.x = v9;
  v21.origin.y = a3;
  v21.size.width = a4;
  v21.size.height = a5;
  Width = CGRectGetWidth(v21);
  v15 = sub_24F922148();
  *v16 = Width;
  v15(v20, 0);
  sub_24F922158();
  v17 = sub_24F9221B8();
  sub_24F922BF8();
  v17(v20, 0);
  v18 = sub_24F9221B8();
  sub_24F922BC8();
  v18(v20, 0);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_24EC8ED38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for InAppPurchaseShowcaseLockupViewLayout.Metrics(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24EC8EDF8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for InAppPurchaseShowcaseLockupViewLayout.Metrics(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24EC8EE9C(uint64_t a1)
{
  result = sub_24E8EFB54(319, &qword_27F237A20, MEMORY[0x277D22640]);
  if (v2 <= 0x3F)
  {
    result = sub_24E8EFB54(319, &qword_27F2297C0, MEMORY[0x277D226F8]);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for InAppPurchaseShowcaseLockupViewLayout.Metrics(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_24EC8EF74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F922628();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28) + 24);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_24EC8F04C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24F922628();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28) + 24) = (a2 - 1);
  }

  return result;
}

void sub_24EC8F10C(uint64_t a1)
{
  type metadata accessor for CGSize(319);
  if (v1 <= 0x3F)
  {
    sub_24F922628();
    if (v2 <= 0x3F)
    {
      sub_24E8EFB54(319, &qword_27F237A40, MEMORY[0x277D226C0]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t OnboardingStep.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 24))(v4, a2, a3);
  _s12GameStoreKit29DiffablePageContentIdentifierV4hash4intoys6HasherVz_tF_0();
  return sub_24E6585F8(v4);
}

uint64_t static OnboardingStep.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v6 = *(a4 + 24);
  v6(v9, a3, a4);
  v6(v8, a3, v4);
  LOBYTE(v4) = MEMORY[0x253052150](v9, v8);
  sub_24E6585F8(v8);
  sub_24E6585F8(v9);
  return v4 & 1;
}

uint64_t sub_24EC8F318()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_24EC8F398()
{
  sub_24F91EB38();
  if (v6[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EB90, &unk_24F990A40);
    if (swift_dynamicCast())
    {
      if (*(&v8 + 1))
      {
        sub_24E612C80(&v7, v10);
        __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
        v2 = v0[7];
        v1 = v0[8];
        sub_24E615E00(v10, &v7);
        v3 = swift_allocObject();
        *(v3 + 16) = v2;
        *(v3 + 24) = v1;
        sub_24E612C80(&v7, v3 + 32);

        sub_24F928C78();

        return __swift_destroy_boxed_opaque_existential_1(v10);
      }
    }

    else
    {
      v9 = 0;
      v7 = 0u;
      v8 = 0u;
    }
  }

  else
  {
    sub_24E601704(v6, &qword_27F2129B0, &unk_24F945320);
    v7 = 0u;
    v8 = 0u;
    v9 = 0;
  }

  sub_24E601704(&v7, &qword_27F22B760, &unk_24F99B6F0);
  if (qword_27F210568 != -1)
  {
    swift_once();
  }

  v5 = sub_24F92AAE8();
  __swift_project_value_buffer(v5, qword_27F39C398);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A400;
  sub_24F928448();
  sub_24F9283A8();
  sub_24F92A5A8();
}

void sub_24EC8F740()
{
  v1 = *v0;
  v2 = [objc_opt_self() defaultCenter];
  [v2 removeObserver_];
}

uint64_t sub_24EC8F7B0()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_24EC8F838@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = sub_24F91F648();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t CreateCalendarEventAction.name.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit25CreateCalendarEventAction_name);

  return v1;
}

uint64_t CreateCalendarEventAction.location.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit25CreateCalendarEventAction_location);

  return v1;
}

uint64_t CreateCalendarEventAction.notes.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit25CreateCalendarEventAction_notes);

  return v1;
}

char *CreateCalendarEventAction.__allocating_init(title:startDate:endDate:isAllDay:name:location:notes:url:notAuthorizedAction:availability:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned __int8 a15, uint64_t a16)
{
  v59 = a8;
  v55 = a7;
  v54 = a6;
  v52 = a5;
  v62 = a1;
  v63 = a2;
  v58 = a15;
  v56 = a13;
  v57 = a14;
  v53 = a11;
  v51 = a10;
  v50 = a9;
  v49 = sub_24F91F6B8();
  v48 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v47 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  v20 = OBJC_IVAR____TtC12GameStoreKit25CreateCalendarEventAction_startDate;
  v21 = sub_24F91F648();
  v22 = *(v21 - 8);
  v23 = *(v22 + 16);
  v61 = a3;
  v23(&v19[v20], a3, v21);
  v60 = a4;
  v23(&v19[OBJC_IVAR____TtC12GameStoreKit25CreateCalendarEventAction_endDate], a4, v21);
  v19[OBJC_IVAR____TtC12GameStoreKit25CreateCalendarEventAction_isAllDay] = v52;
  v24 = &v19[OBJC_IVAR____TtC12GameStoreKit25CreateCalendarEventAction_name];
  v25 = v55;
  *v24 = v54;
  v24[1] = v25;
  v26 = &v19[OBJC_IVAR____TtC12GameStoreKit25CreateCalendarEventAction_location];
  v27 = v50;
  *v26 = v59;
  *(v26 + 1) = v27;
  v28 = &v19[OBJC_IVAR____TtC12GameStoreKit25CreateCalendarEventAction_notes];
  v29 = v53;
  *v28 = v51;
  v28[1] = v29;
  v59 = a12;
  sub_24E60169C(a12, &v19[OBJC_IVAR____TtC12GameStoreKit25CreateCalendarEventAction_url], &qword_27F228530, &unk_24F93C6E0);
  v30 = v57;
  *&v19[OBJC_IVAR____TtC12GameStoreKit25CreateCalendarEventAction_notAuthorizedAction] = v56;
  v31 = &v19[OBJC_IVAR____TtC12GameStoreKit25CreateCalendarEventAction_availability];
  *v31 = v30;
  v31[8] = v58 & 1;
  v70 = 0;
  memset(v69, 0, sizeof(v69));
  v32 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v33 = sub_24F928AD8();
  v34 = *(v33 - 8);
  (*(v34 + 16))(&v19[v32], a16, v33);
  v35 = OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics;
  v36 = sub_24F929608();
  (*(*(v36 - 8) + 56))(&v19[v35], 1, 1, v36);
  v37 = &v19[OBJC_IVAR____TtC12GameStoreKit6Action_clickSender];
  *v37 = 0u;
  *(v37 + 1) = 0u;
  v38 = &v19[OBJC_IVAR____TtC12GameStoreKit6Action_id];
  sub_24E60169C(v69, &v66, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v67 + 1))
  {
    v39 = v67;
    *v38 = v66;
    *(v38 + 1) = v39;
    *(v38 + 4) = v68;
  }

  else
  {
    v40 = v47;
    sub_24F91F6A8();
    v41 = sub_24F91F668();
    v43 = v42;
    (*(v48 + 8))(v40, v49);
    v64 = v41;
    v65 = v43;
    sub_24F92C7F8();
    sub_24E601704(&v66, &qword_27F235830, &qword_24F93B8C0);
  }

  (*(v34 + 8))(a16, v33);
  sub_24E601704(v59, &qword_27F228530, &unk_24F93C6E0);
  v44 = *(v22 + 8);
  v44(v60, v21);
  v44(v61, v21);
  sub_24E601704(v69, &qword_27F235830, &qword_24F93B8C0);
  v45 = v63;
  *(v19 + 2) = v62;
  *(v19 + 3) = v45;
  *(v19 + 4) = 0;
  *(v19 + 5) = 0;
  return v19;
}

char *CreateCalendarEventAction.init(title:startDate:endDate:isAllDay:name:location:notes:url:notAuthorizedAction:availability:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned __int8 a15, uint64_t a16)
{
  v17 = v16;
  v69 = a8;
  v68 = a7;
  v67 = a6;
  v65 = a5;
  v62 = a3;
  v75 = a2;
  v74 = a1;
  v77 = a16;
  v72 = a15;
  v71 = a14;
  v70 = a13;
  v78 = a12;
  v66 = a11;
  v64 = a10;
  v63 = a9;
  v61 = sub_24F91F6B8();
  v60 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v59 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v58 - v21;
  v23 = sub_24F928AD8();
  v76 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v25 = &v58 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = OBJC_IVAR____TtC12GameStoreKit25CreateCalendarEventAction_startDate;
  v27 = sub_24F91F648();
  v28 = *(v27 - 8);
  v29 = *(v28 + 16);
  v30 = &v17[v26];
  v31 = v62;
  v29(v30, v62, v27);
  v73 = a4;
  v29(&v17[OBJC_IVAR____TtC12GameStoreKit25CreateCalendarEventAction_endDate], a4, v27);
  v32 = v22;
  v17[OBJC_IVAR____TtC12GameStoreKit25CreateCalendarEventAction_isAllDay] = v65;
  v33 = &v17[OBJC_IVAR____TtC12GameStoreKit25CreateCalendarEventAction_name];
  v34 = v68;
  *v33 = v67;
  v33[1] = v34;
  v35 = &v17[OBJC_IVAR____TtC12GameStoreKit25CreateCalendarEventAction_location];
  v36 = v63;
  *v35 = v69;
  v35[1] = v36;
  v37 = &v17[OBJC_IVAR____TtC12GameStoreKit25CreateCalendarEventAction_notes];
  v38 = v66;
  *v37 = v64;
  v37[1] = v38;
  v39 = v25;
  v40 = v23;
  v41 = v76;
  sub_24E60169C(v78, &v17[OBJC_IVAR____TtC12GameStoreKit25CreateCalendarEventAction_url], &qword_27F228530, &unk_24F93C6E0);
  *&v17[OBJC_IVAR____TtC12GameStoreKit25CreateCalendarEventAction_notAuthorizedAction] = v70;
  v42 = &v17[OBJC_IVAR____TtC12GameStoreKit25CreateCalendarEventAction_availability];
  *v42 = v71;
  v42[8] = v72 & 1;
  v88 = 0;
  memset(v87, 0, sizeof(v87));
  (*(v41 + 16))(v39, v77, v40);
  v43 = sub_24F929608();
  (*(*(v43 - 8) + 56))(v22, 1, 1, v43);
  v44 = &v17[OBJC_IVAR____TtC12GameStoreKit6Action_clickSender];
  *v44 = 0u;
  *(v44 + 1) = 0u;
  sub_24E60169C(v87, &v81, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v82 + 1))
  {
    v84 = v81;
    v85 = v82;
    v86 = v83;
  }

  else
  {
    v45 = v59;
    sub_24F91F6A8();
    v46 = v31;
    v47 = sub_24F91F668();
    v48 = v40;
    v49 = v39;
    v50 = v32;
    v52 = v51;
    (*(v60 + 8))(v45, v61);
    v79 = v47;
    v80 = v52;
    v31 = v46;
    v32 = v50;
    v39 = v49;
    v40 = v48;
    v41 = v76;
    sub_24F92C7F8();
    sub_24E601704(&v81, &qword_27F235830, &qword_24F93B8C0);
  }

  (*(v41 + 8))(v77, v40);
  sub_24E601704(v78, &qword_27F228530, &unk_24F93C6E0);
  v53 = *(v28 + 8);
  v53(v73, v27);
  v53(v31, v27);
  sub_24E601704(v87, &qword_27F235830, &qword_24F93B8C0);
  v54 = &v17[OBJC_IVAR____TtC12GameStoreKit6Action_id];
  *(v54 + 4) = v86;
  v55 = v85;
  *v54 = v84;
  *(v54 + 1) = v55;
  sub_24E6009C8(v32, &v17[OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics], &qword_27F213E68, &unk_24F93BC80);
  v56 = v75;
  *(v17 + 2) = v74;
  *(v17 + 3) = v56;
  *(v17 + 4) = 0;
  *(v17 + 5) = 0;
  (*(v41 + 32))(&v17[OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics], v39, v40);
  return v17;
}

char *CreateCalendarEventAction.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v120 = a2;
  v121 = v2;
  v115 = *v3;
  v5 = sub_24F9285B8();
  v117 = *(v5 - 8);
  v118 = v5;
  MEMORY[0x28223BE20](v5);
  v110 = v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v7 - 8);
  v107 = v102 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v9 - 8);
  v116 = (v102 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v13 = v102 - v12;
  v14 = sub_24F928388();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v109 = v102 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v106 = v102 - v18;
  MEMORY[0x28223BE20](v19);
  v105 = v102 - v20;
  MEMORY[0x28223BE20](v21);
  v104 = v102 - v22;
  MEMORY[0x28223BE20](v23);
  v113 = v102 - v24;
  MEMORY[0x28223BE20](v25);
  v27 = v102 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = v102 - v29;
  v31 = sub_24F91F648();
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v114 = v102 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v119 = v102 - v35;
  v123 = a1;
  sub_24F928398();
  sub_24F928288();
  v36 = v32;
  v108 = v15;
  v39 = *(v15 + 8);
  v37 = v15 + 8;
  v38 = v39;
  v124 = v14;
  v39(v30, v14);
  v40 = *(v32 + 48);
  v122 = v31;
  if (v40(v13, 1, v31) == 1)
  {
    sub_24E601704(v13, &unk_27F22EC30, &qword_24F939880);
    v41 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    *v42 = 0x7461447472617473;
    v43 = v115;
    v42[1] = 0xE900000000000065;
    v42[2] = v43;
    (*(*(v41 - 8) + 104))(v42, *MEMORY[0x277D22530], v41);
    swift_willThrow();
    (*(v117 + 8))(v120, v118);
    v38(v123, v124);
LABEL_14:
    swift_deallocPartialClassInstance();
    return v43;
  }

  v44 = v13;
  v45 = v122;
  v103 = *(v36 + 32);
  v103(v119, v44, v122);
  v112 = v36;
  sub_24F928398();
  v46 = v116;
  sub_24F928288();
  v38(v27, v124);
  if (v40(v46, 1, v45) == 1)
  {
    sub_24E601704(v116, &unk_27F22EC30, &qword_24F939880);
    v47 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    *v48 = 0x65746144646E65;
    v43 = v115;
    v48[1] = 0xE700000000000000;
    v48[2] = v43;
    (*(*(v47 - 8) + 104))(v48, *MEMORY[0x277D22530], v47);
    swift_willThrow();
    (*(v117 + 8))(v120, v118);
    v38(v123, v124);
    (*(v112 + 8))(v119, v122);
    goto LABEL_14;
  }

  v49 = v38;
  v50 = v37;
  v51 = v114;
  v103(v114, v116, v122);
  v52 = v113;
  v53 = v123;
  sub_24F928398();
  v54 = sub_24F928348();
  v56 = v55;
  v49(v52, v124);
  if (!v56)
  {
    v91 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    *v92 = 1701667182;
    v92[1] = 0xE400000000000000;
    v92[2] = v115;
    (*(*(v91 - 8) + 104))(v92, *MEMORY[0x277D22530], v91);
    swift_willThrow();
    (*(v117 + 8))(v120, v118);
    v49(v53, v124);
    v43 = *(v112 + 8);
    v93 = v122;
    (v43)(v51, v122);
    (v43)(v119, v93);
    goto LABEL_14;
  }

  v116 = v54;
  v57 = *(v112 + 16);
  v58 = v50;
  v59 = v49;
  v60 = v121;
  v61 = v122;
  v57(v121 + OBJC_IVAR____TtC12GameStoreKit25CreateCalendarEventAction_startDate, v119, v122);
  v57(v60 + OBJC_IVAR____TtC12GameStoreKit25CreateCalendarEventAction_endDate, v51, v61);
  v62 = v104;
  sub_24F928398();
  LOBYTE(v57) = sub_24F928278();
  v63 = v62;
  v64 = v124;
  v65 = v58;
  v59(v63, v124);
  *(v60 + OBJC_IVAR____TtC12GameStoreKit25CreateCalendarEventAction_isAllDay) = v57 & 1;
  v66 = (v60 + OBJC_IVAR____TtC12GameStoreKit25CreateCalendarEventAction_name);
  *v66 = v116;
  v66[1] = v56;
  v67 = v105;
  sub_24F928398();
  v68 = sub_24F928348();
  v70 = v69;
  v59(v67, v64);
  v71 = v65;
  v72 = (v60 + OBJC_IVAR____TtC12GameStoreKit25CreateCalendarEventAction_location);
  *v72 = v68;
  v72[1] = v70;
  sub_24F928398();
  v73 = sub_24F928348();
  v75 = v74;
  v59(v67, v64);
  v76 = (v60 + OBJC_IVAR____TtC12GameStoreKit25CreateCalendarEventAction_notes);
  *v76 = v73;
  v76[1] = v75;
  sub_24F928398();
  v77 = v107;
  sub_24F928268();
  v59(v67, v64);
  sub_24E6009C8(v77, v60 + OBJC_IVAR____TtC12GameStoreKit25CreateCalendarEventAction_url, &qword_27F228530, &unk_24F93C6E0);
  type metadata accessor for Action(0);
  sub_24F928398();
  v78 = static Action.tryToMakeInstance(byDeserializing:using:)(v67, v120);
  v59(v67, v64);
  *(v60 + OBJC_IVAR____TtC12GameStoreKit25CreateCalendarEventAction_notAuthorizedAction) = v78;
  v79 = v106;
  sub_24F928398();
  v80 = sub_24F928348();
  v82 = v81;
  v116 = v59;
  v59(v79, v64);
  v83 = v122;
  v84 = v64;
  v85 = v53;
  v102[1] = v71;
  if (v82)
  {
    v86 = v120;
    if (v80 == 2037609826 && v82 == 0xE400000000000000 || (sub_24F92CE08() & 1) != 0)
    {
      v87 = 0;
      v88 = v117;
    }

    else
    {
      v88 = v117;
      if (v80 != 1701147238 || v82 != 0xE400000000000000)
      {
        v101 = sub_24F92CE08();

        v87 = v101 & 1;
        v89 = v101 ^ 1;
        goto LABEL_12;
      }

      v87 = 1;
    }

    v89 = 0;
LABEL_12:
    v90 = v118;
    goto LABEL_17;
  }

  v87 = 0;
  v89 = 1;
  v88 = v117;
  v90 = v118;
  v86 = v120;
LABEL_17:
  v95 = v121 + OBJC_IVAR____TtC12GameStoreKit25CreateCalendarEventAction_availability;
  *v95 = v87;
  *(v95 + 8) = v89 & 1;
  v96 = v109;
  (*(v108 + 16))(v109, v85, v84);
  v97 = v110;
  (*(v88 + 16))(v110, v86, v90);
  v98 = v111;
  v99 = Action.init(deserializing:using:)(v96, v97);
  if (v98)
  {
    (*(v88 + 8))(v86, v90);
    v116(v85, v84);
    v43 = *(v112 + 8);
    (v43)(v114, v83);
    (v43)(v119, v83);
  }

  else
  {
    v43 = v99;
    (*(v88 + 8))(v86, v90);
    v116(v85, v84);
    v100 = *(v112 + 8);
    v100(v114, v83);
    v100(v119, v83);
  }

  return v43;
}

double sub_24EC911C8()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit25CreateCalendarEventAction_startDate;
  v2 = sub_24F91F648();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC12GameStoreKit25CreateCalendarEventAction_endDate, v2);

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit25CreateCalendarEventAction_url, &qword_27F228530, &unk_24F93C6E0);

  return result;
}

uint64_t CreateCalendarEventAction.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0, &unk_24F945320);
  v3 = OBJC_IVAR____TtC12GameStoreKit25CreateCalendarEventAction_startDate;
  v4 = sub_24F91F648();
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v5(v0 + OBJC_IVAR____TtC12GameStoreKit25CreateCalendarEventAction_endDate, v4);

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit25CreateCalendarEventAction_url, &qword_27F228530, &unk_24F93C6E0);

  return v0;
}

uint64_t CreateCalendarEventAction.__deallocating_deinit()
{
  CreateCalendarEventAction.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CreateCalendarEventAction(uint64_t a1)
{
  result = qword_27F22CDD8;
  if (!qword_27F22CDD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EC91524(uint64_t a1)
{
  sub_24F91F648();
  if (v1 <= 0x3F)
  {
    sub_24E6D4C08(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_24EC91690()
{
  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t ProductPageSectionType.rawValue.getter()
{
  v1 = 0x7975426F546B7361;
  v2 = 0x68736E6565726373;
  if (*v0 != 2)
  {
    v2 = 0x666C656873;
  }

  if (*v0)
  {
    v1 = 0x756B636F4C706F74;
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

uint64_t ProductPageSection.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  ProductPageSection.init(deserializing:using:)(a1, a2);
  return v4;
}

GameStoreKit::ProductPageSectionType_optional __swiftcall ProductPageSectionType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_24EC9183C()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EC91914(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24EC919D8()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24EC91AB8(uint64_t *a1@<X8>)
{
  v2 = 0xEF74736575716552;
  v3 = 0x7975426F546B7361;
  v4 = 0xEB0000000073746FLL;
  v5 = 0x68736E6565726373;
  if (*v1 != 2)
  {
    v5 = 0x666C656873;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 0x756B636F4C706F74;
    v2 = 0xE900000000000070;
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

uint64_t ProductPageSection.shelfId.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t *ProductPageSection.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = v2;
  v35 = *v4;
  v7 = sub_24F928388();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v30 - v12;
  sub_24F928398();
  sub_24EC922D0();
  sub_24F928218();
  if (!v3)
  {
    v34 = a2;
    v16 = *(v8 + 8);
    v16(v13, v7);
    v17 = v36;
    v33 = a1;
    sub_24F928398();
    v18 = sub_24F928348();
    v20 = v19;
    v21 = v10;
    v22 = v16;
    v23 = v17;
    v16(v21, v7);
    if (v20)
    {
LABEL_5:
      v24 = sub_24F9285B8();
      (*(*(v24 - 8) + 8))(v34, v24);
      v22(v33, v7);
      *(v4 + 16) = v23;
      v4[3] = v18;
      v4[4] = v20;
      return v4;
    }

    if (v17 > 1)
    {
      if (v17 != 2)
      {

        goto LABEL_14;
      }

      v31 = 0;
      v32 = v22;
    }

    else
    {
      v31 = 0;
      v32 = v22;
    }

    v26 = sub_24F92CE08();

    v20 = v31;
    v22 = v32;
    if ((v26 & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_14:
    v27 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    *v28 = 0x6449666C656873;
    v28[1] = 0xE700000000000000;
    v28[2] = v35;
    (*(*(v27 - 8) + 104))(v28, *MEMORY[0x277D22530], v27);
    swift_willThrow();
    v29 = sub_24F9285B8();
    (*(*(v29 - 8) + 8))(v34, v29);
    v22(v33, v7);
    goto LABEL_3;
  }

  v14 = sub_24F9285B8();
  (*(*(v14 - 8) + 8))(a2, v14);
  v15 = *(v8 + 8);
  v15(a1, v7);
  v15(v13, v7);
LABEL_3:
  type metadata accessor for ProductPageSection();
  swift_deallocPartialClassInstance();
  return v4;
}

uint64_t ProductPageSection.__allocating_init(type:shelfId:)(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  *(result + 16) = *a1;
  *(result + 24) = a2;
  *(result + 32) = a3;
  return result;
}

uint64_t ProductPageSection.init(type:shelfId:)(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = *a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  return v3;
}

uint64_t ProductPageSection.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t *sub_24EC92080@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for ProductPageSection();
  v7 = swift_allocObject();
  result = ProductPageSection.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t _s12GameStoreKit18ProductPageSectionC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = 0xEF74736575716552;
  v4 = 0x7975426F546B7361;
  v5 = *(a1 + 16);
  v6 = 0x68736E6565726373;
  v7 = 0xEB0000000073746FLL;
  if (v5 != 2)
  {
    v6 = 0x666C656873;
    v7 = 0xE500000000000000;
  }

  v8 = 0x756B636F4C706F74;
  v9 = 0xE900000000000070;
  if (!*(a1 + 16))
  {
    v8 = 0x7975426F546B7361;
    v9 = 0xEF74736575716552;
  }

  if (*(a1 + 16) <= 1u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v6;
  }

  if (v5 <= 1)
  {
    v11 = v9;
  }

  else
  {
    v11 = v7;
  }

  v12 = 0x68736E6565726373;
  v13 = 0xEB0000000073746FLL;
  if (*(a2 + 16) != 2)
  {
    v12 = 0x666C656873;
    v13 = 0xE500000000000000;
  }

  if (*(a2 + 16))
  {
    v4 = 0x756B636F4C706F74;
    v3 = 0xE900000000000070;
  }

  if (*(a2 + 16) <= 1u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v12;
  }

  if (*(a2 + 16) <= 1u)
  {
    v15 = v3;
  }

  else
  {
    v15 = v13;
  }

  if (v10 == v14 && v11 == v15)
  {
  }

  else
  {
    v17 = sub_24F92CE08();

    result = 0;
    if ((v17 & 1) == 0)
    {
      return result;
    }
  }

  v19 = *(a1 + 32);
  v20 = *(a2 + 32);
  result = (v19 | v20) == 0;
  if (v19 && v20)
  {
    if (*(a1 + 24) == *(a2 + 24) && v19 == v20)
    {
      return 1;
    }

    else
    {

      return sub_24F92CE08();
    }
  }

  return result;
}

unint64_t sub_24EC922D0()
{
  result = qword_27F22CDE8;
  if (!qword_27F22CDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22CDE8);
  }

  return result;
}

unint64_t sub_24EC9234C()
{
  result = qword_27F22CDF0;
  if (!qword_27F22CDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22CDF0);
  }

  return result;
}

void *NSAttributedString.init(images:for:adjustsImageSizeForAccessibilityContentSizeCategory:interItemSpacing:defaultAttributes:imagesShouldRenderAsTemplates:)(uint64_t a1, void *a2, char a3, uint64_t a4, char a5, double a6)
{
  v11 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v12 = sub_24F92B098();
  v13 = [v11 initWithString_];

  if (a6 > 0.0)
  {
    v14 = [objc_allocWithZone(MEMORY[0x277D74270]) init];
    v15 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
    [v14 setImage_];

    [v14 setBounds_];
    v16 = [objc_opt_self() attributedStringWithAttachment_];

    if ((a3 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    _UIAccessibilityContentSizeCategoryImageAdjustingScaleFactorForTraitCollection();
    v17 = v19;
    v18 = a1;
    if (a1 < 0)
    {
      goto LABEL_39;
    }

    goto LABEL_7;
  }

  v16 = 0;
  if (a3)
  {
    goto LABEL_6;
  }

LABEL_3:
  v17 = 1.0;
  v18 = a1;
  if (a1 < 0)
  {
    goto LABEL_39;
  }

LABEL_7:
  if ((v18 & 0x4000000000000000) == 0)
  {
    v20 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_9;
  }

LABEL_39:
  v20 = sub_24F92C738();
LABEL_9:
  v55 = a4;
  v58 = v16;
  if (v20)
  {
    sub_24E69A5C4(0, &qword_27F22CDF8, 0x277CCAB48);
    result = swift_getObjCClassFromMetadata();
    v56 = result;
    if (v20 < 1)
    {
      __break(1u);
      return result;
    }

    v54 = a2;
    v22 = 0;
    v23 = a1;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v24 = MEMORY[0x253052270](v22);
      }

      else
      {
        v24 = *(v23 + 8 * v22 + 32);
      }

      v25 = v24;
      [v24 size];
      v27 = v26;
      [v25 size];
      v29 = v17 * v28;
      if ([v25 _hasBaseline] && (v30 = sub_24F92C3C8(), (v31 & 1) == 0))
      {
        *&v36 = v30 ^ 0x8000000000000000;
      }

      else if (*(a4 + 16) && (v32 = sub_24E7728E8(), (v33 & 1) != 0) && (sub_24E643A9C(*(a4 + 56) + 32 * v32, v60), sub_24E69A5C4(0, &qword_27F217E58, 0x277D74300), (swift_dynamicCast() & 1) != 0))
      {
        [v59 capHeight];
        v35 = v34;

        v36 = floor((v35 - v29) * 0.5);
      }

      else
      {
        v36 = 0.0;
      }

      v37 = [objc_allocWithZone(MEMORY[0x277D74270]) init];
      v38 = v37;
      if (a5)
      {
        v39 = [v25 imageWithRenderingMode_];
        [v38 setImage_];
      }

      else
      {
        [v37 setImage_];
      }

      [v38 setBounds_];
      v40 = [v56 attributedStringWithAttachment_];
      [v13 appendAttributedString_];
      if (v58)
      {
        v41 = v58;
        [v13 appendAttributedString_];

        a4 = v55;
      }

      ++v22;

      v23 = a1;
    }

    while (v20 != v22);

    a2 = v54;
  }

  else
  {
  }

  if (*(a4 + 16))
  {
    v42 = *MEMORY[0x277D740C0];
    v43 = sub_24E7728E8();
    if (v44)
    {
      sub_24E643A9C(*(a4 + 56) + 32 * v43, v60);
      sub_24E69A5C4(0, &qword_27F2394A0, 0x277D75348);
      if (swift_dynamicCast())
      {
        v45 = v59;
        [v13 addAttribute:v42 value:v45 range:{0, objc_msgSend(v13, sel_length)}];
      }
    }
  }

  v46 = [a2 layoutDirection];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440, &qword_24F941F10);
  v47 = swift_allocObject();
  v48 = v46 == 1;
  v49 = *MEMORY[0x277D74200];
  *(v47 + 16) = xmmword_24F941C80;
  if (v48)
  {
    v50 = 3;
  }

  else
  {
    v50 = 2;
  }

  *(v47 + 32) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  sub_24E69A5C4(0, &qword_27F22BD50, 0x277CCABB0);
  v51 = sub_24F92B588();

  v52 = v13;
  [v52 addAttribute:v49 value:v51 range:{0, objc_msgSend(v52, sel_length)}];

  v53 = sub_24F92BFE8();
  return v53;
}

char *sub_24EC92A0C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return MEMORY[0x277D84F90];
  }

  v5 = MEMORY[0x277D84F90];
  for (i = a1 + 32; ; i += 40)
  {
    sub_24EC97BEC(i, a2, &v14);
    if (v2)
    {
      break;
    }

    if (*(&v15 + 1))
    {
      v11 = v14;
      v12 = v15;
      v13 = v16;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_24E616FEC(0, *(v5 + 2) + 1, 1, v5);
      }

      v8 = *(v5 + 2);
      v7 = *(v5 + 3);
      if (v8 >= v7 >> 1)
      {
        v5 = sub_24E616FEC((v7 > 1), v8 + 1, 1, v5);
      }

      *(v5 + 2) = v8 + 1;
      v9 = &v5[40 * v8];
      *(v9 + 8) = v13;
      *(v9 + 2) = v11;
      *(v9 + 3) = v12;
    }

    else
    {
      sub_24E601704(&v14, &qword_27F228658, &qword_24F9C31B0);
    }

    if (!--v3)
    {
      return v5;
    }
  }

  return v5;
}

void *sub_24EC92B68(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  v4 = MEMORY[0x277D84F90];
  v5 = a1 + 32;
  do
  {
    sub_24E615E00(v5, &v13);
    __swift_project_boxed_opaque_existential_1(&v13, *(&v14 + 1));
    sub_24F928D68();
    __swift_destroy_boxed_opaque_existential_1(&v13);
    v6 = *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ACF0, &qword_24F990A30) + 44));
    if (*(v6 + 16) && (v7 = sub_24E76DD40(v19), (v8 & 1) != 0))
    {
      sub_24E60169C(*(v6 + 56) + 88 * v7, &v13, &qword_27F21EC48, &unk_24F963C20);
    }

    else
    {
      v18 = 0;
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v13 = 0u;
    }

    sub_24E772780(v19);
    if (*(&v14 + 1))
    {
      sub_24E60169C(&v13, v12, &qword_27F21EC48, &unk_24F963C20);
      sub_24E601704(&v13, &qword_27F223230, &qword_24F96E1B0);
      sub_24E615E00(v12, v20);
      sub_24E601704(v12, &qword_27F21EC48, &unk_24F963C20);
      sub_24E612C80(v20, &v13);
      sub_24E612C80(&v13, v12);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_24E61710C(0, v4[2] + 1, 1, v4);
      }

      v10 = v4[2];
      v9 = v4[3];
      if (v10 >= v9 >> 1)
      {
        v4 = sub_24E61710C((v9 > 1), v10 + 1, 1, v4);
      }

      v4[2] = v10 + 1;
      sub_24E612C80(v12, &v4[5 * v10 + 4]);
    }

    else
    {
      sub_24E601704(&v13, &qword_27F223230, &qword_24F96E1B0);
    }

    v5 += 40;
    --v2;
  }

  while (v2);
  return v4;
}

char *sub_24EC92D98(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24F92C738())
  {
    v3 = 0;
    v17 = a1 & 0xC000000000000001;
    v4 = MEMORY[0x277D84F90];
    while (v17)
    {
      v5 = MEMORY[0x253052270](v3, a1);
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_20;
      }

LABEL_9:
      if (sub_24EC96C6C(v5))
      {
        sub_24E65864C(v5 + OBJC_IVAR____TtC12GameStoreKit5Shelf_id, &v14);
      }

      else
      {
        v16 = 0;
        v14 = 0u;
        v15 = 0u;
      }

      if (*(&v15 + 1))
      {
        v11 = v14;
        v12 = v15;
        v13 = v16;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = sub_24E616FEC(0, *(v4 + 2) + 1, 1, v4);
        }

        v8 = *(v4 + 2);
        v7 = *(v4 + 3);
        if (v8 >= v7 >> 1)
        {
          v4 = sub_24E616FEC((v7 > 1), v8 + 1, 1, v4);
        }

        *(v4 + 2) = v8 + 1;
        v9 = &v4[40 * v8];
        *(v9 + 8) = v13;
        *(v9 + 2) = v11;
        *(v9 + 3) = v12;
      }

      else
      {
        sub_24E601704(&v14, &qword_27F228658, &qword_24F9C31B0);
      }

      ++v3;
      if (v6 == i)
      {
        return v4;
      }
    }

    if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_21;
    }

    v5 = *(a1 + 8 * v3 + 32);

    v6 = v3 + 1;
    if (!__OFADD__(v3, 1))
    {
      goto LABEL_9;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t ArticleDiffablePagePresenter.init(objectGraph:impressionsTracker:pageUrl:sidePackedPage:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v58 = a5;
  v59 = a2;
  v53 = a4;
  v51 = a1;
  v8 = sub_24F92BEE8();
  v56 = *(v8 - 8);
  v57 = v8;
  MEMORY[0x28223BE20](v8);
  v55 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_24F92BE88();
  MEMORY[0x28223BE20](v54);
  v52 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24F927DC8();
  MEMORY[0x28223BE20](v11 - 8);
  v49 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v47 - v14;
  v48 = &v47 - v14;
  *(v5 + qword_27F39C290) = 2;
  *(v5 + qword_27F39C298) = 0;
  *(v5 + qword_27F39C2A0) = 0;
  *(v5 + qword_27F22CE00) = 0;
  *(v5 + qword_27F22CE08) = 0;
  *(v5 + qword_27F39C2A8) = 0;
  v16 = v5 + qword_27F39C2B0;
  *v16 = 0;
  *(v16 + 8) = 1;
  v17 = qword_27F39C2B8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CE10, &qword_24F9927E8);
  swift_allocObject();
  *(v5 + v17) = sub_24F92ADA8();
  v18 = qword_27F39C2C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CE18, &qword_24F9927F0);
  swift_allocObject();
  *(v5 + v18) = sub_24F92ADA8();
  v19 = qword_27F39C2C8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CE20, &qword_24F9927F8);
  swift_allocObject();
  *(v5 + v19) = sub_24F92ADA8();
  v20 = qword_27F39C2D0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A650, &qword_24F992800);
  swift_allocObject();
  *(v5 + v20) = sub_24F92ADA8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EB70, &unk_24F93B720);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_24F93A400;
  *(v21 + 32) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225040, &qword_24F975FC0);
  *(v21 + 40) = type metadata accessor for ImpressionsCalculator(0);
  *&v62[0] = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EB60, &qword_24F992808);
  v22 = MEMORY[0x277D83970];
  sub_24E602068(&qword_27F22CE28, &unk_27F22EB60, &qword_24F992808, MEMORY[0x277D83970]);
  v50 = sub_24F928F38();

  sub_24E60169C(a4, v15, &qword_27F228530, &unk_24F93C6E0);
  v63 = 0;
  memset(v62, 0, sizeof(v62));
  *(v5 + qword_27F39CC00) = 0;
  v23 = MEMORY[0x277D84F90];
  *(v5 + qword_27F39CC10) = MEMORY[0x277D84F90];
  *(v5 + qword_27F2326C8) = 0;
  v24 = *(*v5 + 640);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AEA0, &unk_24F992810);
  v26 = *(*(v25 - 8) + 56);
  v26(v6 + v24, 1, 1, v25);
  v27 = *(*v6 + 648);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AB90, &unk_24F9B1AC0);
  (*(*(v28 - 8) + 56))(v6 + v27, 1, 1, v28);
  v29 = *(*v6 + 656);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AE98, &unk_24F989E60);
  (*(*(v30 - 8) + 56))(v6 + v29, 1, 1, v30);
  v26(v6 + *(*v6 + 664), 1, 1, v25);
  v31 = *(*v6 + 672);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABA0, &unk_24F9AA740);
  (*(*(v32 - 8) + 56))(v6 + v31, 1, 1, v32);
  v33 = *(*v6 + 680);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABA8, &unk_24F989B80);
  (*(*(v34 - 8) + 56))(v6 + v33, 1, 1, v34);
  v35 = *(*v6 + 688);
  sub_24E74EC40();
  sub_24F927DA8();
  v61 = v23;
  sub_24EC97ED4(&qword_27F2394E0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BD30, &qword_24F95FB10);
  sub_24E602068(&qword_27F2394F0, &unk_27F22BD30, &qword_24F95FB10, v22);
  sub_24F92C6A8();
  (*(v56 + 104))(v55, *MEMORY[0x277D85260], v57);
  *(v6 + v35) = sub_24F92BF38();
  sub_24EBD3128(v6 + *(*v6 + 696));
  v36 = (v6 + *(*v6 + 704));
  *v36 = 0u;
  v36[1] = 0u;
  *(v36 + 25) = 0u;
  v37 = *(*v6 + 712);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABB0, &unk_24F989B90);
  swift_allocObject();
  *(v6 + v37) = sub_24F92ADA8();
  v38 = *(*v6 + 720);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABB8, &unk_24F9AA7A0);
  swift_allocObject();
  *(v6 + v38) = sub_24F92ADA8();
  v39 = *(*v6 + 728);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226C8, &unk_24F96A600);
  swift_allocObject();
  *(v6 + v39) = sub_24F92ADA8();
  *(v6 + *(*v6 + 736)) = 0;
  v40 = (v6 + *(*v6 + 752));
  *v40 = 0;
  v40[1] = 0;
  v41 = v48;
  sub_24E60169C(v48, v6 + qword_27F39CBF8, &qword_27F228530, &unk_24F93C6E0);
  sub_24E60169C(v62, v6 + *(*v6 + 744), &qword_27F229490, &unk_24F984C40);
  v42 = type metadata accessor for InlineUnifiedMessagePresenter();
  v60.receiver = objc_allocWithZone(v42);
  v60.super_class = v42;
  *(v6 + qword_27F39CC08) = objc_msgSendSuper2(&v60, sel_init);

  v44 = sub_24EBBA108(v43, 0, 0, 0);
  v45 = *(*v44 + 1112);

  *(v44 + qword_27F39CC00) = v45(v58);

  sub_24EBC2DEC(0);

  swift_unknownObjectRelease();

  sub_24E601704(v53, &qword_27F228530, &unk_24F93C6E0);
  sub_24E601704(v62, &qword_27F229490, &unk_24F984C40);
  sub_24E601704(v41, &qword_27F228530, &unk_24F93C6E0);
  return v44;
}

uint64_t ArticleDiffablePagePresenter.touchMode.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = qword_27F39C290;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t ArticleDiffablePagePresenter.shouldTerminateOnClose.getter()
{
  v1 = qword_27F39C298;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ArticleDiffablePagePresenter.footerVisibilitySectionThreshold.getter()
{
  v1 = v0 + qword_27F39C2B0;
  swift_beginAccess();
  return *v1;
}

uint64_t ArticleDiffablePagePresenter.footerVisibilitySectionThreshold.setter(uint64_t a1, char a2)
{
  v5 = v2 + qword_27F39C2B0;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t sub_24EC93C28(uint64_t a1)
{
  v49 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v50 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v44 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v44 - v9;
  v45 = v1[2];
  sub_24E60169C(v1 + qword_27F39CBF8, &v44 - v9, &qword_27F228530, &unk_24F93C6E0);
  swift_beginAccess();
  v51 = v1[3];
  swift_beginAccess();
  v11 = v1[4];
  type metadata accessor for ArticleDiffablePageContentPresenter(0);
  v12 = swift_allocObject();
  sub_24E60169C(v10, v7, &qword_27F228530, &unk_24F93C6E0);
  v13 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v14 = (v4 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  sub_24E911D90(v7, v15 + v13);
  v16 = v45;
  v47 = v15;
  *(v15 + v14) = v45;
  *(v15 + ((v14 + 15) & 0xFFFFFFFFFFFFFFF8)) = v11;
  v17 = v10;
  sub_24E60169C(v10, v50, &qword_27F228530, &unk_24F93C6E0);
  *(v12 + qword_27F22F198) = 0;
  v18 = MEMORY[0x277D84F90];
  *(v12 + qword_27F22F1A0) = MEMORY[0x277D84F90];
  v19 = qword_27F39C780;

  v20 = v16;
  swift_retain_n();
  v48 = v11;
  swift_retain_n();
  *(v12 + v19) = sub_24E60986C(v18);
  v21 = (v12 + qword_27F22F1A8);
  *v21 = 0;
  v21[1] = 0;
  v22 = (v12 + qword_27F22F1B0);
  *v22 = 0;
  v22[1] = 0;
  v46 = v22;
  v23 = (v12 + qword_27F22F1B8);
  *v23 = 0;
  v23[1] = 0;
  v24 = (v12 + qword_27F22F1C0);
  *v24 = 0;
  v24[1] = 0;
  v25 = (v12 + qword_27F22F1C8);
  *v25 = 0;
  v25[1] = 0;
  v26 = (v12 + qword_27F39C788);
  *v26 = 0u;
  v26[1] = 0u;
  *(v26 + 25) = 0u;
  *(v12 + qword_27F39C790) = 0;
  *(v12 + qword_27F22F1D0) = 0;
  *(v12 + qword_27F22F1D8) = MEMORY[0x277D84FA0];
  *(v12 + qword_27F39C798) = 0;
  v27 = qword_27F39C7A0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AEA8, &qword_24F989E70);
  swift_allocObject();
  *(v12 + v27) = sub_24F92ADA8();
  v28 = qword_27F39C7A8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226B8, &unk_24F96A5F0);
  swift_allocObject();
  *(v12 + v28) = sub_24F92ADA8();
  v29 = qword_27F39C7B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AEC0, &unk_24F989E80);
  swift_allocObject();
  *(v12 + v29) = sub_24F92ADA8();
  v30 = qword_27F39C7B8;
  swift_allocObject();
  *(v12 + v30) = sub_24F92ADA8();
  v31 = qword_27F39C7C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226C8, &unk_24F96A600);
  swift_allocObject();
  *(v12 + v31) = sub_24F92ADA8();
  v32 = qword_27F39C7C8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D0, &unk_24F989C70);
  swift_allocObject();
  v33 = sub_24F92ADA8();

  sub_24E601704(v17, &qword_27F228530, &unk_24F93C6E0);
  *(v12 + v32) = v33;
  v34 = qword_27F22F1E0;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D8, &unk_24F96A610);
  v36 = *(*(v35 - 8) + 56);
  v36(v12 + v34, 1, 1, v35);
  v37 = v35;
  v38 = v49;
  v36(v12 + qword_27F22F1E8, 1, 1, v37);
  *(v12 + 16) = v20;
  sub_24E911D90(v50, v12 + qword_27F39C7D0);
  v39 = v47;
  *v21 = sub_24EC98058;
  v21[1] = v39;
  *v23 = 0;
  v23[1] = 0;
  if (v38)
  {
    v40 = swift_allocObject();
    *(v40 + 16) = v38;
    v41 = sub_24E965688;
  }

  else
  {
    v41 = 0;
    v40 = 0;
  }

  v42 = v46;
  *v46 = v41;
  v42[1] = v40;
  *v24 = sub_24EC9810C;
  v24[1] = v20;
  *v25 = 0;
  v25[1] = 0;
  *(v12 + qword_27F22F1F0) = v51;
  *(v12 + qword_27F39C7D8) = v48;

  return v12;
}

void sub_24EC941EC(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  sub_24F2F3E28(*a1, v1, v2);
  if ((v2 & 0x80000000) == 0)
  {
    sub_24EC94258();
    if ((v2 & 1) == 0)
    {

      sub_24EC94390(v1);
    }
  }
}

double sub_24EC94258()
{
  v1 = v0;
  v2 = qword_27F39C2A0;
  swift_beginAccess();
  if (*(v1 + v2))
  {

    sub_24F92AD88();
  }

  if (*(v1 + qword_27F22CE00) || *(v1 + qword_27F22CE08))
  {
    swift_retain_n();
    sub_24F92AD88();
  }

  v3 = qword_27F39C2A8;
  swift_beginAccess();
  if (*(v1 + v3))
  {

    sub_24F92AD88();
  }

  return result;
}

uint64_t sub_24EC94390(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_63;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v4 = 0;
    v36 = v2;
    v37 = v1 & 0xC000000000000001;
    v33 = v1 + 32;
    v34 = v1 & 0xFFFFFFFFFFFFFF8;
    v5 = MEMORY[0x277D84F90];
    v32 = v1;
    while (1)
    {
      if (v37)
      {
        v6 = MEMORY[0x253052270](v4, v1);
        v7 = __OFADD__(v4, 1);
        v8 = v4 + 1;
        if (v7)
        {
          goto LABEL_56;
        }
      }

      else
      {
        if (v4 >= *(v34 + 16))
        {
          goto LABEL_59;
        }

        v6 = *(v33 + 8 * v4);

        v7 = __OFADD__(v4, 1);
        v8 = v4 + 1;
        if (v7)
        {
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
LABEL_63:
          v2 = sub_24F92C738();
          goto LABEL_3;
        }
      }

      v38 = v8;
      v9 = *(v6 + 24);
      v43 = v3;
      v10 = *(v9 + 16);
      if (v10)
      {
        v11 = v9 + 32;
        v12 = v3;
        do
        {
          sub_24E615E00(v11, v42);
          sub_24E612C80(v42, v40);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0, &unk_24F9549D0);
          type metadata accessor for EditorialLink(0);
          if ((swift_dynamicCast() & 1) != 0 && v41)
          {
            MEMORY[0x253050F00]();
            if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_24F92B5E8();
            }

            sub_24F92B638();
            v12 = v43;
          }

          v11 += 40;
          --v10;
        }

        while (v10);
      }

      else
      {
        v12 = v3;
      }

      v13 = v12 >> 62 ? sub_24F92C738() : *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v14 = v5 >> 62;
      if (v5 >> 62)
      {
        v30 = sub_24F92C738();
        v3 = v30 + v13;
        if (__OFADD__(v30, v13))
        {
LABEL_50:
          __break(1u);
          goto LABEL_51;
        }
      }

      else
      {
        v15 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v3 = v15 + v13;
        if (__OFADD__(v15, v13))
        {
          goto LABEL_50;
        }
      }

      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        break;
      }

      if (v14)
      {
        goto LABEL_31;
      }

LABEL_32:
      v5 = sub_24F92C8F8();
      v16 = v5 & 0xFFFFFFFFFFFFFF8;
LABEL_33:
      v17 = *(v16 + 16);
      v18 = (*(v16 + 24) >> 1) - v17;
      v39 = v16;
      if (v12 >> 62)
      {
        v20 = sub_24F92C738();
        if (!v20)
        {
LABEL_5:

          v3 = MEMORY[0x277D84F90];
          if (v13 > 0)
          {
            goto LABEL_57;
          }

          goto LABEL_6;
        }

        v21 = v20;
        v22 = sub_24F92C738();
        if (v18 < v22)
        {
          goto LABEL_60;
        }

        if (v21 < 1)
        {
          goto LABEL_62;
        }

        v19 = v22;
        v35 = v5;
        v23 = v39 + 8 * v17 + 32;
        sub_24E602068(&qword_27F22CE78, &qword_27F22CE70, &qword_24F992998, MEMORY[0x277D83988]);
        for (i = 0; i != v21; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CE70, &qword_24F992998);
          v25 = sub_24E951A7C(v42, i, v12);
          v27 = *v26;

          (v25)(v42, 0);
          *(v23 + 8 * i) = v27;
        }

        v1 = v32;
        v5 = v35;
      }

      else
      {
        v19 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v19)
        {
          goto LABEL_5;
        }

        if (v18 < v19)
        {
          goto LABEL_61;
        }

        type metadata accessor for EditorialLink(0);
        swift_arrayInitWithCopy();
      }

      v3 = MEMORY[0x277D84F90];
      if (v19 < v13)
      {
        goto LABEL_57;
      }

      if (v19 > 0)
      {
        v28 = *(v39 + 16);
        v7 = __OFADD__(v28, v19);
        v29 = v28 + v19;
        if (v7)
        {
          goto LABEL_58;
        }

        *(v39 + 16) = v29;
      }

LABEL_6:

      v4 = v38;
      if (v38 == v36)
      {
        goto LABEL_52;
      }
    }

    if (!v14)
    {
      v16 = v5 & 0xFFFFFFFFFFFFFF8;
      if (v3 <= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_33;
      }

      goto LABEL_32;
    }

LABEL_31:
    sub_24F92C738();
    goto LABEL_32;
  }

LABEL_51:
  v5 = v3;
LABEL_52:
  if (v5 >> 62)
  {
    if (!sub_24F92C738())
    {
    }

    goto LABEL_54;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_54:
    *&v42[0] = v5;
    sub_24F92AD88();
  }
}

uint64_t sub_24EC9485C(uint64_t a1, char a2)
{
  sub_24F2F5BDC(a1, a2);
  v4 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_card);
  if (v4)
  {
    v5 = qword_27F39C2A0;
    swift_beginAccess();
    *(v2 + v5) = v4;
  }

  v6 = qword_27F22CE00;
  *(v2 + qword_27F22CE00) = *(a1 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_footerLockup);

  v7 = qword_27F22CE08;
  *(v2 + qword_27F22CE08) = *(a1 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_arcadeFooterLockup);

  v8 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_shareAction);
  v9 = qword_27F39C2A8;
  swift_beginAccess();
  *(v2 + v9) = v8;

  LOBYTE(v8) = *(a1 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_touchMode);
  v10 = qword_27F39C290;
  swift_beginAccess();
  *(v2 + v10) = v8;
  v11 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_shouldTerminateOnClose);
  v12 = qword_27F39C298;
  result = swift_beginAccess();
  *(v2 + v12) = v11;
  if (!*(v2 + v6) && !*(v2 + v7))
  {
    return result;
  }

  v14 = *(v2 + qword_27F39CC10);
  if (v14 >> 62)
  {
LABEL_37:
    v15 = sub_24F92C738();
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v15)
  {

    v18 = 0;
    v19 = 1;
    v24 = 1;
LABEL_31:
    v29 = v24;
LABEL_32:
    v25 = v18;
    goto LABEL_33;
  }

  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 1;
  v20 = 1;
  while (2)
  {
    v21 = v18;
    v18 = v17;
    while (2)
    {
      v17 = v18;
      v18 = v16;
      while ((v14 & 0xC000000000000001) == 0)
      {
        if ((v18 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_36:
          __break(1u);
          goto LABEL_37;
        }

        if (v18 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_36;
        }

        v16 = v18 + 1;
        v22 = *(*(v14 + 32 + 8 * v18) + 16);
        switch(v22)
        {
          case '\'':
            goto LABEL_25;
          case '4':
            goto LABEL_27;
          case 'C':
            goto LABEL_25;
        }

LABEL_17:
        v18 = v16;
        if (v16 == v15)
        {
          v18 = v21;
          v24 = v20;
          goto LABEL_28;
        }
      }

      v30 = v17;
      v31 = v21;
      v32 = v20;
      result = MEMORY[0x253052270](v18, v14);
      v16 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        return result;
      }

      v23 = *(result + 16);
      swift_unknownObjectRelease();
      if (v23 == 39)
      {
        v20 = v32;
        v21 = v31;
LABEL_25:
        v19 = 0;
        if (v16 != v15)
        {
          continue;
        }

        v28 = v20;

        v29 = v28;
        v19 = 0;
        goto LABEL_32;
      }

      break;
    }

    v20 = v32;
    v21 = v31;
    if (v23 == 67)
    {
      goto LABEL_25;
    }

    v17 = v30;
    if (v23 != 52)
    {
      goto LABEL_17;
    }

LABEL_27:
    v20 = 0;
    v24 = 0;
    if (v16 != v15)
    {
      continue;
    }

    break;
  }

LABEL_28:
  v25 = v17;

  v29 = v24;
  if (v19)
  {
    goto LABEL_31;
  }

LABEL_33:
  v26 = v19 & v29;
  v27 = v2 + qword_27F39C2B0;
  result = swift_beginAccess();
  *v27 = v25;
  *(v27 + 8) = v26 & 1;
  return result;
}

void ArticleDiffablePagePresenter.reloadLink(_:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AF0, &unk_24F992820);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_24F93DE60;
  sub_24E65864C(a1 + 64, v3 + 32);
  v4 = *(v1 + *(*v1 + 688));
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = v3;
  *(v5 + 32) = 65856;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_24EC96B08;
  *(v6 + 24) = v5;
  v9[4] = sub_24E972460;
  v9[5] = v6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_24E971290;
  v9[3] = &block_descriptor_65;
  v7 = _Block_copy(v9);

  dispatch_sync(v4, v7);
  _Block_release(v7);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

Swift::Void __swiftcall ArticleDiffablePagePresenter.didSelectCardOverlay()()
{
  v1 = qword_27F39C2A0;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!v2 || !*(v2 + 72) || (v13[0] = *(v2 + 72), type metadata accessor for TodayCardOverlay(), , __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CE38, &unk_24F992830), (swift_dynamicCast() & 1) == 0))
  {
    v12 = 0;
    v10 = 0u;
    v11 = 0u;
    goto LABEL_9;
  }

  if (!*(&v11 + 1))
  {
LABEL_9:
    sub_24E601704(&v10, &qword_27F22CE30, &qword_24F99AA80);
    return;
  }

  sub_24E612C80(&v10, v13);
  v3 = v14;
  v4 = v15;
  __swift_project_boxed_opaque_existential_1(v13, v14);
  v5 = (*(v4 + 8))(v3, v4);
  if (v5)
  {
    v6 = v5;
    v7 = v14;
    v8 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    v9 = *(v8 + 16);

    v9(&v10 + 1, v7, v8);
    *&v10 = v6;
    sub_24F92AD88();

    sub_24E601704(&v10, &qword_27F22CE40, &qword_24F99AAA0);
  }

  __swift_destroy_boxed_opaque_existential_1(v13);
}

Swift::Void __swiftcall ArticleDiffablePagePresenter.didSelectFooterLockup()()
{
  v1 = *(v0 + qword_27F22CE00);
  if (v1)
  {
    if (*(v1 + 264))
    {
      v2[0] = *(v1 + 264);
      v2[1] = v1;
      v2[4] = type metadata accessor for Lockup(0);
      swift_retain_n();

      sub_24F92AD88();

      sub_24E601704(v2, &qword_27F22CE40, &qword_24F99AAA0);
    }
  }
}

double sub_24EC95000()
{

  return result;
}

uint64_t ArticleDiffablePagePresenter.deinit()
{
  v0 = sub_24EBBEE18();

  return v0;
}

uint64_t ArticleDiffablePagePresenter.__deallocating_deinit()
{
  ArticleDiffablePagePresenter.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24EC951A0(uint64_t a1, unint64_t a2, int a3, int a4, int a5, int a6)
{
  v60 = a5;
  v61 = a6;
  v62 = a4;
  LODWORD(v63) = a3;
  v66 = a2;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CE60, &qword_24F992960);
  MEMORY[0x28223BE20](v58);
  v59 = &v55 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CE58, &qword_24F9B0460);
  v56 = *(v8 - 8);
  v57 = v8;
  MEMORY[0x28223BE20](v8);
  v55 = &v55 - v9;
  v10 = sub_24F91F6B8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v25 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ACF0, &qword_24F990A30);
  v14 = v13 - 8;
  MEMORY[0x28223BE20](v13);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v55 - v18;
  v20 = *(*a1 + 696);
  swift_beginAccess();
  v64 = v20;
  v65 = a1;
  sub_24E60169C(a1 + v20, v16, &qword_27F22ACF0, &qword_24F990A30);
  sub_24E60169C(v16, v19, &qword_27F22ACF0, &qword_24F990A30);
  v67 = 0;
  v68 = 0xE000000000000000;
  sub_24F92C888();
  MEMORY[0x253050C20](0xD000000000000038, 0x800000024FA55CE0);
  sub_24F91F6A8();
  v21 = sub_24F91F668();
  v23 = v22;
  v24 = v25;
  LOBYTE(v25) = v63;
  (*(v11 + 8))(v24, v10);
  MEMORY[0x253050C20](v21, v23);

  v26 = v67;
  v27 = v68;
  v28 = *(v14 + 60);
  v29 = v19;
  v30 = &v19[v28];

  *v30 = v26;
  *(v30 + 1) = v27;
  sub_24EC97180();
  sub_24E601704(v16, &qword_27F22ACF0, &qword_24F990A30);
  v31 = v25 >> 4;
  if (v31 <= 3)
  {
LABEL_18:
    v39 = v55;
    v40 = v56;
    v41 = v57;
    if (v31 > 1)
    {
LABEL_33:
      v33 = v64;
      v32 = v65;
      if (v31 != 2)
      {
        v48 = MEMORY[0x277D74C68];
        goto LABEL_44;
      }

      sub_24EC96504(v66);
    }

    else
    {
      v33 = v64;
      v32 = v65;
      if (!v31)
      {
        v67 = MEMORY[0x277D84F90];
        v34 = v66;
        v35 = v66 & 0xFFFFFFFFFFFFFF8;
        if (v66 >> 62)
        {
          goto LABEL_51;
        }

        v42 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v42)
        {
LABEL_52:
          v50 = MEMORY[0x277D84F90];
LABEL_53:
          sub_24EC961AC(v50);

          v49 = 0;
          goto LABEL_57;
        }

LABEL_22:
        v63 = v16;
        v16 = v29;
        v29 = 0;
        v43 = v34 & 0xC000000000000001;
        while (1)
        {
          if (v43)
          {
            v44 = MEMORY[0x253052270](v29, v34);
            v45 = v29 + 1;
            if (__OFADD__(v29, 1))
            {
LABEL_32:
              __break(1u);
              goto LABEL_33;
            }
          }

          else
          {
            if (v29 >= *(v35 + 16))
            {
              __break(1u);
LABEL_50:
              __break(1u);
LABEL_51:
              v42 = sub_24F92C738();
              if (!v42)
              {
                goto LABEL_52;
              }

              goto LABEL_22;
            }

            v44 = *(v34 + 8 * v29 + 32);

            v45 = v29 + 1;
            if (__OFADD__(v29, 1))
            {
              goto LABEL_32;
            }
          }

          if (*(v44 + OBJC_IVAR____TtC12GameStoreKit5Shelf_isHidden))
          {
          }

          else
          {
            sub_24F92C948();
            sub_24F92C988();
            v34 = v66;
            sub_24F92C998();
            sub_24F92C958();
          }

          ++v29;
          if (v45 == v42)
          {
            v50 = v67;
            v29 = v16;
            v16 = v63;
            goto LABEL_53;
          }
        }
      }

      v47 = sub_24EC92D98(v66);
      sub_24EC97704(v47);
      if (v25)
      {
      }

      else
      {
        (*(v40 + 16))(v39, v29, v41);
        sub_24F922DC8();

        (*(v40 + 40))(v29, v39, v41);
      }
    }

LABEL_45:
    v49 = 0;
    goto LABEL_58;
  }

  if ((v25 >> 4) <= 5u)
  {
    v33 = v64;
    v32 = v65;
    if (v31 == 4)
    {
      v46 = MEMORY[0x277D74C68];
LABEL_38:
      sub_24EC96948(v66, v46);
      goto LABEL_45;
    }

    v48 = MEMORY[0x277D74C88];
LABEL_44:
    sub_24EC96774(v66, v48);
    goto LABEL_45;
  }

  v33 = v64;
  v32 = v65;
  if (v31 == 6)
  {
    v46 = MEMORY[0x277D74C88];
    goto LABEL_38;
  }

  if (v31 != 7)
  {
    sub_24EC961AC(MEMORY[0x277D84F90]);
    goto LABEL_45;
  }

  v67 = MEMORY[0x277D84F90];
  v34 = v66;
  v35 = v66 & 0xFFFFFFFFFFFFFF8;
  if (v66 >> 62)
  {
    v36 = sub_24F92C738();
    if (v36)
    {
LABEL_7:
      v63 = v16;
      v16 = v29;
      v29 = 0;
      v25 = v34 & 0xC000000000000001;
      do
      {
        if (v25)
        {
          v37 = MEMORY[0x253052270](v29, v34);
          v38 = v29 + 1;
          if (__OFADD__(v29, 1))
          {
            goto LABEL_17;
          }
        }

        else
        {
          if (v29 >= *(v35 + 16))
          {
            goto LABEL_50;
          }

          v37 = *(v34 + 8 * v29 + 32);

          v38 = v29 + 1;
          if (__OFADD__(v29, 1))
          {
LABEL_17:
            __break(1u);
            goto LABEL_18;
          }
        }

        if (*(v37 + OBJC_IVAR____TtC12GameStoreKit5Shelf_isHidden))
        {
        }

        else
        {
          sub_24F92C948();
          sub_24F92C988();
          v34 = v66;
          sub_24F92C998();
          sub_24F92C958();
        }

        ++v29;
      }

      while (v38 != v36);
      v51 = v67;
      v29 = v16;
      v16 = v63;
      goto LABEL_56;
    }
  }

  else
  {
    v36 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v36)
    {
      goto LABEL_7;
    }
  }

  v51 = MEMORY[0x277D84F90];
LABEL_56:
  sub_24EC961AC(v51);

  v49 = 1;
LABEL_57:
  v33 = v64;
  v32 = v65;
LABEL_58:
  sub_24E60169C(v29, v16, &qword_27F22ACF0, &qword_24F990A30);
  swift_beginAccess();
  sub_24E61DA68(v16, v32 + v33, &qword_27F22ACF0, &qword_24F990A30);
  swift_endAccess();
  if (v62)
  {
    swift_beginAccess();
    v52 = v59;
    sub_24E60169C(v32 + v33, v59, &qword_27F22ACF0, &qword_24F990A30);
    v53 = v58;
    *(v52 + *(v58 + 36)) = v60 & 1;
    *(v52 + *(v53 + 40)) = v49;
    *(v52 + *(v53 + 44)) = v61 & 1;

    sub_24F92AD88();

    sub_24E601704(v52, &qword_27F22CE60, &qword_24F992960);
  }

  return sub_24E601704(v29, &qword_27F22ACF0, &qword_24F990A30);
}

uint64_t sub_24EC959A4(uint64_t a1, unint64_t a2, int a3, int a4, int a5, int a6)
{
  v62 = a5;
  v63 = a6;
  v64 = a4;
  LODWORD(v65) = a3;
  v68 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CE58, &qword_24F9B0460);
  v58 = *(v7 - 8);
  v59 = v7;
  MEMORY[0x28223BE20](v7);
  v57 = &v57 - v8;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CE60, &qword_24F992960);
  MEMORY[0x28223BE20](v60);
  v61 = &v57 - v9;
  v10 = sub_24F91F6B8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ACF0, &qword_24F990A30);
  v15 = v14 - 8;
  MEMORY[0x28223BE20](v14);
  v17 = (&v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v18);
  v20 = &v57 - v19;
  v21 = *(*a1 + 696);
  swift_beginAccess();
  v66 = v21;
  v67 = a1;
  sub_24E60169C(a1 + v21, v17, &qword_27F22ACF0, &qword_24F990A30);
  sub_24E60169C(v17, v20, &qword_27F22ACF0, &qword_24F990A30);
  v69 = 0;
  v70 = 0xE000000000000000;
  sub_24F92C888();
  MEMORY[0x253050C20](0xD000000000000038, 0x800000024FA55CE0);
  sub_24F91F6A8();
  v22 = sub_24F91F668();
  v24 = v23;
  (*(v11 + 8))(v13, v10);
  MEMORY[0x253050C20](v22, v24);
  v25 = v17;

  v26 = v69;
  v27 = v70;
  v28 = (v20 + *(v15 + 60));

  *v28 = v26;
  v28[1] = v27;
  sub_24EC97180();
  sub_24E601704(v17, &qword_27F22ACF0, &qword_24F990A30);
  v29 = v65 >> 4;
  if (v29 <= 3)
  {
LABEL_18:
    v40 = v57;
    v39 = v58;
    v41 = v59;
    if (v29 > 1)
    {
LABEL_33:
      v31 = v66;
      v30 = v67;
      v47 = v68;
      if (v29 != 2)
      {
        v50 = MEMORY[0x277D74C68];
        goto LABEL_44;
      }

      sub_24EC96504(v68);
    }

    else
    {
      v31 = v66;
      v30 = v67;
      v32 = v68;
      if (!v29)
      {
        v69 = MEMORY[0x277D84F90];
        v33 = v68 & 0xFFFFFFFFFFFFFF8;
        if (v68 >> 62)
        {
          goto LABEL_51;
        }

        v42 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v42)
        {
LABEL_52:
          v52 = MEMORY[0x277D84F90];
LABEL_53:
          sub_24EC961AC(v52);

          v51 = 0;
          goto LABEL_57;
        }

LABEL_22:
        v65 = v25;
        v43 = v20;
        v20 = 0;
        v44 = v32 & 0xC000000000000001;
        v25 = &OBJC_IVAR____TtC12GameStoreKit5Shelf_isHidden;
        while (1)
        {
          if (v44)
          {
            v45 = MEMORY[0x253052270](v20, v32);
            v46 = v20 + 1;
            if (__OFADD__(v20, 1))
            {
LABEL_32:
              __break(1u);
              goto LABEL_33;
            }
          }

          else
          {
            if (v20 >= *(v33 + 16))
            {
              __break(1u);
LABEL_50:
              __break(1u);
LABEL_51:
              v42 = sub_24F92C738();
              if (!v42)
              {
                goto LABEL_52;
              }

              goto LABEL_22;
            }

            v45 = *(v32 + 8 * v20 + 32);

            v46 = v20 + 1;
            if (__OFADD__(v20, 1))
            {
              goto LABEL_32;
            }
          }

          if (*(v45 + OBJC_IVAR____TtC12GameStoreKit5Shelf_isHidden))
          {
          }

          else
          {
            sub_24F92C948();
            sub_24F92C988();
            sub_24F92C998();
            sub_24F92C958();
            v32 = v68;
          }

          ++v20;
          if (v46 == v42)
          {
            v52 = v69;
            v20 = v43;
            v25 = v65;
            goto LABEL_53;
          }
        }
      }

      v49 = sub_24EC92D98(v68);
      sub_24EC97704(v49);
      if (v65)
      {
      }

      else
      {
        (*(v39 + 16))(v40, v20, v41);
        sub_24F922DC8();

        (*(v39 + 40))(v20, v40, v41);
      }
    }

LABEL_45:
    v51 = 0;
    goto LABEL_58;
  }

  if ((v65 >> 4) <= 5u)
  {
    v31 = v66;
    v30 = v67;
    v47 = v68;
    if (v29 == 4)
    {
      v48 = MEMORY[0x277D74C68];
LABEL_38:
      sub_24EC96948(v47, v48);
      goto LABEL_45;
    }

    v50 = MEMORY[0x277D74C88];
LABEL_44:
    sub_24EC96774(v47, v50);
    goto LABEL_45;
  }

  v31 = v66;
  v30 = v67;
  v32 = v68;
  if (v29 == 6)
  {
    v48 = MEMORY[0x277D74C88];
    v47 = v68;
    goto LABEL_38;
  }

  if (v29 != 7)
  {
    sub_24EC961AC(MEMORY[0x277D84F90]);
    goto LABEL_45;
  }

  v69 = MEMORY[0x277D84F90];
  v33 = v68 & 0xFFFFFFFFFFFFFF8;
  if (v68 >> 62)
  {
    v34 = sub_24F92C738();
    if (v34)
    {
LABEL_7:
      v65 = v25;
      v35 = v20;
      v20 = 0;
      v36 = v32 & 0xC000000000000001;
      v25 = &OBJC_IVAR____TtC12GameStoreKit5Shelf_isHidden;
      do
      {
        if (v36)
        {
          v37 = MEMORY[0x253052270](v20, v32);
          v38 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            goto LABEL_17;
          }
        }

        else
        {
          if (v20 >= *(v33 + 16))
          {
            goto LABEL_50;
          }

          v37 = *(v32 + 8 * v20 + 32);

          v38 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
LABEL_17:
            __break(1u);
            goto LABEL_18;
          }
        }

        if (*(v37 + OBJC_IVAR____TtC12GameStoreKit5Shelf_isHidden))
        {
        }

        else
        {
          sub_24F92C948();
          sub_24F92C988();
          sub_24F92C998();
          sub_24F92C958();
          v32 = v68;
        }

        ++v20;
      }

      while (v38 != v34);
      v53 = v69;
      v20 = v35;
      v25 = v65;
      goto LABEL_56;
    }
  }

  else
  {
    v34 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v34)
    {
      goto LABEL_7;
    }
  }

  v53 = MEMORY[0x277D84F90];
LABEL_56:
  sub_24EC961AC(v53);

  v51 = 1;
LABEL_57:
  v31 = v66;
  v30 = v67;
LABEL_58:
  sub_24E60169C(v20, v25, &qword_27F22ACF0, &qword_24F990A30);
  swift_beginAccess();
  sub_24E61DA68(v25, v30 + v31, &qword_27F22ACF0, &qword_24F990A30);
  swift_endAccess();
  if (v64)
  {
    swift_beginAccess();
    v54 = v61;
    sub_24E60169C(v30 + v31, v61, &qword_27F22ACF0, &qword_24F990A30);
    v55 = v60;
    *(v54 + *(v60 + 36)) = v62 & 1;
    *(v54 + *(v55 + 40)) = v51;
    *(v54 + *(v55 + 44)) = v63 & 1;

    sub_24F92AD88();

    sub_24E601704(v54, &qword_27F22CE60, &qword_24F992960);
  }

  return sub_24E601704(v20, &qword_27F22ACF0, &qword_24F990A30);
}

void sub_24EC961AC(char *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ACF0, &qword_24F990A30);
  v5 = (v2 + v4[9]);

  *v5 = MEMORY[0x277D84F90];

  v6 = MEMORY[0x277D84F98];
  v5[1] = MEMORY[0x277D84F98];
  v7 = v4[10];

  *(v2 + v7) = v6;
  v8 = v4[11];

  *(v2 + v8) = v6;
  if (a1 >> 62)
  {
    goto LABEL_33;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24F92C738())
  {
    v10 = 0;
    v37 = a1 & 0xFFFFFFFFFFFFFF8;
    v38 = a1 & 0xC000000000000001;
    v35 = i;
    v36 = a1;
    while (v38)
    {
      v11 = MEMORY[0x253052270](v10, a1);
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_29;
      }

LABEL_9:
      sub_24E65864C(v11 + OBJC_IVAR____TtC12GameStoreKit5Shelf_id, v41);
      if (!*(v5[1] + 16) || (sub_24E76DD40(v41), (v13 & 1) == 0))
      {
        a1 = *v5;
        v14 = *(*v5 + 16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v39[0] = v5[1];
        v16 = *&v39[0];
        v17 = sub_24E76DD40(v41);
        v19 = *(v16 + 16);
        v20 = (v18 & 1) == 0;
        v21 = __OFADD__(v19, v20);
        v22 = v19 + v20;
        if (v21)
        {
          goto LABEL_31;
        }

        v23 = v18;
        if (*(v16 + 24) >= v22)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_16;
          }

          v26 = v17;
          sub_24E8AE134();
          v17 = v26;
          v25 = *&v39[0];
          if ((v23 & 1) == 0)
          {
            goto LABEL_22;
          }

LABEL_17:
          *(v25[7] + 8 * v17) = v14;
        }

        else
        {
          sub_24E899B98(v22, isUniquelyReferenced_nonNull_native);
          v17 = sub_24E76DD40(v41);
          if ((v23 & 1) != (v24 & 1))
          {
            sub_24F92CF88();
            __break(1u);
            return;
          }

LABEL_16:
          v25 = *&v39[0];
          if (v23)
          {
            goto LABEL_17;
          }

LABEL_22:
          v25[(v17 >> 6) + 8] |= 1 << v17;
          v27 = v17;
          sub_24E772724(v41, v25[6] + 40 * v17);
          *(v25[7] + 8 * v27) = v14;
          v28 = v25[2];
          v21 = __OFADD__(v28, 1);
          v29 = v28 + 1;
          if (v21)
          {
            goto LABEL_32;
          }

          v25[2] = v29;
        }

        v5[1] = v25;
        sub_24E772724(v41, v39);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a1 = sub_24E616FEC(0, *(a1 + 2) + 1, 1, a1);
        }

        v31 = *(a1 + 2);
        v30 = *(a1 + 3);
        if (v31 >= v30 >> 1)
        {
          a1 = sub_24E616FEC((v30 > 1), v31 + 1, 1, a1);
        }

        sub_24E772780(v41);
        *(a1 + 2) = v31 + 1;
        v32 = &a1[40 * v31];
        v33 = v40;
        v34 = v39[1];
        *(v32 + 2) = v39[0];
        *(v32 + 3) = v34;
        *(v32 + 8) = v33;
        *v5 = a1;
        i = v35;
        a1 = v36;
        goto LABEL_5;
      }

      sub_24E772780(v41);
LABEL_5:
      sub_24EC96C6C(v11);

      ++v10;
      if (v12 == i)
      {
        goto LABEL_34;
      }
    }

    if (v10 >= *(v37 + 16))
    {
      goto LABEL_30;
    }

    v11 = *&a1[8 * v10 + 32];

    v12 = v10 + 1;
    if (!__OFADD__(v10, 1))
    {
      goto LABEL_9;
    }

LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    ;
  }

LABEL_34:
  sub_24EC97180();
}

uint64_t sub_24EC96504(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CE58, &qword_24F9B0460);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  (*(v5 + 16))(&v17 - v7, v2, v4, v6);
  sub_24F922DC8();
  v9 = *(v5 + 40);
  v19 = v4;
  result = v9(v2, v8, v4);
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = 0;
    v18 = a1 + 32;
    while (1)
    {
      sub_24E772724(v18 + 40 * v12, v23);
      sub_24E65864C(v23, v21);
      sub_24E772780(v23);
      DiffablePageContentIdentifier.init(_:)(v21, v22);
      v13 = sub_24F922DD8();
      result = sub_24E772780(v22);
      v14 = *(v13 + 16);
      if (v14)
      {
        break;
      }

LABEL_3:
      ++v12;

      if (v12 == v11)
      {
        return result;
      }
    }

    v15 = 0;
    v16 = v13 + 32;
    while (v15 < *(v13 + 16))
    {
      sub_24E772724(v16, v22);
      ++v15;
      sub_24E65864C(v22, v20);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ACF0, &qword_24F990A30);
      sub_24ED7D5A0(v21, v20);
      sub_24E6585F8(v21);
      result = sub_24E772780(v22);
      v16 += 40;
      if (v14 == v15)
      {
        goto LABEL_3;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24EC96774(uint64_t a1, void (*a2)(char *, uint64_t))
{
  v4 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CE58, &qword_24F9B0460);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15[-v8];
  v10 = sub_24EC92A0C(a1, v4);
  (*(v7 + 16))(v9, v4, v6);
  a2(v10, v6);
  result = (*(v7 + 40))(v4, v9, v6);
  v12 = *(v10 + 2);
  if (!v12)
  {
  }

  v13 = 0;
  v14 = (v10 + 32);
  while (v13 < *(v10 + 2))
  {
    sub_24E772724(v14, v17);
    ++v13;
    sub_24E65864C(v17, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ACF0, &qword_24F990A30);
    sub_24ED7D5A0(v16, v15);
    sub_24E6585F8(v16);
    result = sub_24E772780(v17);
    v14 += 40;
    if (v12 == v13)
    {
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24EC96948(uint64_t a1, void (*a2)(uint64_t, uint64_t))
{
  v4 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CE58, &qword_24F9B0460);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v15[-v9 - 8];
  (*(v7 + 16))(&v15[-v9 - 8], v4, v6, v8);
  a2(a1, v6);
  result = (*(v7 + 40))(v4, v10, v6);
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = a1 + 32;
    do
    {
      sub_24E772724(v13, v17);
      sub_24E65864C(v17, v15);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ACF0, &qword_24F990A30);
      sub_24ED7D5A0(v16, v15);
      sub_24E6585F8(v16);
      result = sub_24E772780(v17);
      v13 += 40;
      --v12;
    }

    while (v12);
  }

  return result;
}

uint64_t sub_24EC96AC4()
{

  sub_24E96513C(*(v0 + 24), *(v0 + 32));

  return swift_deallocObject();
}

uint64_t block_copy_helper_65(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t type metadata accessor for ArticleDiffablePagePresenter(uint64_t a1)
{
  result = qword_27F22CE48;
  if (!qword_27F22CE48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EC96C6C(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  sub_24E65864C(a1 + OBJC_IVAR____TtC12GameStoreKit5Shelf_id, v76);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ACF0, &qword_24F990A30);
  if (!*(*(v1 + *(v4 + 36) + 8) + 16) || (v5 = v4, sub_24E76DD40(v76), (v6 & 1) == 0))
  {
    sub_24E772780(v76);
    return 0;
  }

  v7 = *(v5 + 40);
  v8 = *(v1 + v7);
  if (*(v8 + 16))
  {
    v9 = sub_24E76DD40(v76);
    if (v10)
    {
      v57 = v7;
      v59 = v3;
      v11 = *(*(*(v8 + 56) + 8 * v9) + 24);
      v12 = *(v11 + 16);

      if (v12)
      {
        v13 = 0;
        v14 = v11 + 32;
        do
        {
          if (v13 >= *(v11 + 16))
          {
            goto LABEL_37;
          }

          sub_24E615E00(v14, &v61);
          sub_24E615E00(&v61, &v67);
          __swift_project_boxed_opaque_existential_1(&v67, *(&v68 + 1));
          sub_24F928D68();
          __swift_destroy_boxed_opaque_existential_1(&v67);
          v15 = *(v5 + 44);
          v16 = sub_24E76DD40(v75);
          if (v17)
          {
            v18 = v16;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v20 = *(v2 + v15);
            v74[0] = v20;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_24E8AE46C();
              v20 = v74[0];
            }

            sub_24E772780(*(v20 + 48) + 40 * v18);
            v21 = *(v20 + 56) + 88 * v18;
            v22 = *(v21 + 80);
            v23 = *(v21 + 64);
            v24 = *(v21 + 32);
            v70 = *(v21 + 48);
            v71 = v23;
            v72 = v22;
            v25 = *(v21 + 16);
            v67 = *v21;
            v68 = v25;
            v69 = v24;
            sub_24EB52FBC(v18, v20);
            *(v2 + v15) = v20;
          }

          else
          {
            v72 = 0;
            v70 = 0u;
            v71 = 0u;
            v69 = 0u;
            v67 = 0u;
            v68 = 0u;
          }

          ++v13;
          sub_24E772780(v75);
          sub_24E601704(&v67, &qword_27F223230, &qword_24F96E1B0);
          __swift_destroy_boxed_opaque_existential_1(&v61);
          v14 += 40;
        }

        while (v12 != v13);
      }

      v7 = v57;
      v3 = v59;
    }
  }

  v27 = *(v3 + 24);
  LOBYTE(v67) = 104;
  v28 = Shelf.withItems(_:ofType:removeMarkers:isHidden:)(v27, &v67, 1, 2);
  v29 = swift_isUniquelyReferenced_nonNull_native();
  *&v67 = *(v2 + v7);
  sub_24E81C838(v28, v76, v29);
  v30 = 0;
  *(v2 + v7) = v67;
  v31 = *(v27 + 16);
  v56 = v27 + 32;
  v58 = v27;
  while (1)
  {
    v32 = 0uLL;
    v33 = v31;
    v34 = 0uLL;
    v35 = 0uLL;
    if (v30 != v31)
    {
      if (v30 >= *(v58 + 16))
      {
        goto LABEL_35;
      }

      v33 = v30 + 1;
      *&v67 = v30;
      sub_24E615E00(v56 + 40 * v30, &v67 + 8);
      v32 = v67;
      v34 = v68;
      v35 = v69;
    }

    v75[0] = v32;
    v75[1] = v34;
    v75[2] = v35;
    if (!v35)
    {
      sub_24E772780(v76);
      return 1;
    }

    v60 = v32;
    sub_24E612C80((v75 + 8), v74);
    sub_24E615E00(v74, &v67);
    __swift_project_boxed_opaque_existential_1(&v67, *(&v68 + 1));
    sub_24F928D68();
    __swift_destroy_boxed_opaque_existential_1(&v67);
    sub_24E615E00(v74, &v67);
    sub_24E772724(v76, &v69 + 8);
    v72 = v60;
    v36 = *(v5 + 44);
    v63 = v69;
    v64 = v70;
    v65 = v71;
    v66 = v60;
    v61 = v67;
    v62 = v68;
    v37 = swift_isUniquelyReferenced_nonNull_native();
    v38 = *(v2 + v36);
    v39 = sub_24E76DD40(v73);
    v41 = v38[2];
    v42 = (v40 & 1) == 0;
    v43 = __OFADD__(v41, v42);
    v44 = v41 + v42;
    if (v43)
    {
      break;
    }

    v45 = v40;
    if (v38[3] < v44)
    {
      sub_24E89A120(v44, v37);
      v39 = sub_24E76DD40(v73);
      if ((v45 & 1) != (v46 & 1))
      {
        goto LABEL_38;
      }

LABEL_28:
      if (v45)
      {
        goto LABEL_17;
      }

      goto LABEL_29;
    }

    if (v37)
    {
      goto LABEL_28;
    }

    v55 = v39;
    sub_24E8AE46C();
    v39 = v55;
    if (v45)
    {
LABEL_17:
      sub_24E61DA68(&v61, v38[7] + 88 * v39, &qword_27F21EC48, &unk_24F963C20);
      sub_24E772780(v73);
      __swift_destroy_boxed_opaque_existential_1(v74);
      goto LABEL_18;
    }

LABEL_29:
    v38[(v39 >> 6) + 8] |= 1 << v39;
    v47 = v39;
    sub_24E772724(v73, v38[6] + 40 * v39);
    v48 = v38[7] + 88 * v47;
    v49 = v66;
    v51 = v64;
    v50 = v65;
    *(v48 + 32) = v63;
    *(v48 + 48) = v51;
    *(v48 + 64) = v50;
    *(v48 + 80) = v49;
    v52 = v62;
    *v48 = v61;
    *(v48 + 16) = v52;
    sub_24E772780(v73);
    __swift_destroy_boxed_opaque_existential_1(v74);
    v53 = v38[2];
    v43 = __OFADD__(v53, 1);
    v54 = v53 + 1;
    if (v43)
    {
      goto LABEL_36;
    }

    v38[2] = v54;
LABEL_18:
    *(v2 + v36) = v38;
    v30 = v33;
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  result = sub_24F92CF88();
  __break(1u);
  return result;
}

void sub_24EC97180()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00, &qword_24F93B900);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v30 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CE58, &qword_24F9B0460);
  v31 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = v30 - v6;
  sub_24EBD5384();
  sub_24F922E28();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ACF0, &qword_24F990A30);
  v9 = (v0 + *(v8 + 36));
  v10 = *v9;
  v11 = v9[1];
  v40 = *(*v9 + 16);
  v32 = v0;
  v30[1] = v11;
  if (v40)
  {
    v12 = *(v0 + *(v8 + 40));
    v42 = v10 + 32;
    v36 = (v2 + 8);

    v13 = 0;
    v35 = xmmword_24F93DE60;
    v14 = v40;
    v34 = v1;
    v33 = v5;
    v39 = v4;
    v38 = v7;
    v37 = v10;
    while (v13 < *(v10 + 16))
    {
      sub_24E772724(v42 + 40 * v13, v49);
      if (*(v12 + 16) && (v15 = sub_24E76DD40(v49), (v16 & 1) != 0))
      {
        *&v45[0] = *(*(v12 + 56) + 8 * v15);
        v17 = *&v45[0];
        v18 = type metadata accessor for Shelf(0);
        v41 = v17;
        swift_retain_n();
        sub_24F928A78();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AF0, &unk_24F992820);
        v19 = swift_allocObject();
        *(v19 + 16) = v35;
        sub_24E772724(v49, v19 + 32);
        sub_24F922DB8();

        MEMORY[0x28223BE20](v20);
        v30[-2] = v18;
        v30[-1] = sub_24EC97ED4(&qword_27F22CE68, type metadata accessor for Shelf, &protocol conformance descriptor for Shelf);
        swift_getKeyPath();
        sub_24F928A48();

        v21 = v48;
        v22 = *(v48 + 16);
        if (v22)
        {
          v47 = MEMORY[0x277D84F90];
          sub_24F457E94(0, v22, 0);
          v23 = v47;
          v24 = v21 + 32;
          do
          {
            sub_24E615E00(v24, v44);
            sub_24E615E00(v44, v43);
            __swift_project_boxed_opaque_existential_1(v43, v43[3]);
            sub_24F928D68();
            __swift_destroy_boxed_opaque_existential_1(v44);
            __swift_destroy_boxed_opaque_existential_1(v43);
            v47 = v23;
            v26 = *(v23 + 16);
            v25 = *(v23 + 24);
            if (v26 >= v25 >> 1)
            {
              sub_24F457E94((v25 > 1), v26 + 1, 1);
              v23 = v47;
            }

            *(v23 + 16) = v26 + 1;
            v27 = v23 + 40 * v26;
            v28 = v45[0];
            v29 = v45[1];
            *(v27 + 64) = v46;
            *(v27 + 32) = v28;
            *(v27 + 48) = v29;
            v24 += 40;
            --v22;
          }

          while (v22);

          v1 = v34;
          v5 = v33;
        }

        else
        {
        }

        sub_24E772724(v49, v45);
        v7 = v38;
        sub_24F922D88();

        sub_24E601704(v45, &qword_27F228658, &qword_24F9C31B0);
        (*v36)(v39, v1);
        sub_24E772780(v49);
        v10 = v37;
        v14 = v40;
      }

      else
      {
        sub_24E772780(v49);
      }

      if (++v13 == v14)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_17:

    (*(v31 + 40))(v32, v7, v5);
  }
}

void sub_24EC97704(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00, &qword_24F93B900);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v31 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CE58, &qword_24F9B0460);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v31 - v10;
  v40 = *(a1 + 16);
  if (v40)
  {
    v32 = v8;
    (*(v8 + 16))(v11, v1, v7, v9);
    v12 = 0;
    v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ACF0, &qword_24F990A30) + 40);
    v33 = v1;
    v14 = *(v1 + v13);
    v35 = (v4 + 8);
    v15 = a1 + 32;
    v16 = v40;
    v34 = v3;
    v39 = v6;
    v38 = v7;
    v37 = v11;
    v36 = v15;
    do
    {
      sub_24E772724(v15 + 40 * v12, v48);
      if (*(v14 + 16) && (v17 = sub_24E76DD40(v48), (v18 & 1) != 0))
      {
        *&v44[0] = *(*(v14 + 56) + 8 * v17);
        v19 = *&v44[0];
        v20 = type metadata accessor for Shelf(0);
        v41 = v19;
        swift_retain_n();
        sub_24F928A78();
        sub_24F922DD8();
        sub_24F922D98();

        MEMORY[0x28223BE20](v21);
        *(&v31 - 2) = v20;
        *(&v31 - 1) = sub_24EC97ED4(&qword_27F22CE68, type metadata accessor for Shelf, &protocol conformance descriptor for Shelf);
        swift_getKeyPath();
        sub_24F928A48();

        v22 = v47;
        v23 = *(v47 + 16);
        if (v23)
        {
          v46 = MEMORY[0x277D84F90];
          sub_24F457E94(0, v23, 0);
          v24 = v46;
          v25 = v22 + 32;
          do
          {
            sub_24E615E00(v25, v43);
            sub_24E615E00(v43, v42);
            __swift_project_boxed_opaque_existential_1(v42, v42[3]);
            sub_24F928D68();
            __swift_destroy_boxed_opaque_existential_1(v43);
            __swift_destroy_boxed_opaque_existential_1(v42);
            v46 = v24;
            v27 = *(v24 + 16);
            v26 = *(v24 + 24);
            if (v27 >= v26 >> 1)
            {
              sub_24F457E94((v26 > 1), v27 + 1, 1);
              v24 = v46;
            }

            *(v24 + 16) = v27 + 1;
            v28 = v24 + 40 * v27;
            v29 = v44[0];
            v30 = v44[1];
            *(v28 + 64) = v45;
            *(v28 + 32) = v29;
            *(v28 + 48) = v30;
            v25 += 40;
            --v23;
          }

          while (v23);

          v3 = v34;
        }

        else
        {
        }

        sub_24E772724(v48, v44);
        v7 = v38;
        v11 = v37;
        sub_24F922D88();

        sub_24E601704(v44, &qword_27F228658, &qword_24F9C31B0);
        (*v35)(v39, v3);
        sub_24E772780(v48);
        v16 = v40;
        v15 = v36;
      }

      else
      {
        sub_24E772780(v48);
      }

      ++v12;
    }

    while (v12 != v16);
    (*(v32 + 40))(v33, v11, v7);
  }
}

uint64_t sub_24EC97BEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_24E615E00(a1, &v18);
  __swift_project_boxed_opaque_existential_1(&v18, *(&v19 + 1));
  sub_24F928D68();
  __swift_destroy_boxed_opaque_existential_1(&v18);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ACF0, &qword_24F990A30);
  v7 = *(a2 + *(v6 + 44));
  if (*(v7 + 16) && (v8 = v6, v9 = sub_24E76DD40(v22), (v10 & 1) != 0))
  {
    sub_24E60169C(*(v7 + 56) + 88 * v9, &v18, &qword_27F21EC48, &unk_24F963C20);
    sub_24E772780(v22);
    v24[0] = v20[0];
    v24[1] = v20[1];
    v24[2] = v20[2];
    v25 = v21;
    v23[0] = v18;
    v23[1] = v19;
    v11 = *(v8 + 40);
    if (*(*(a2 + v11) + 16))
    {
      sub_24E76DD40(v24 + 8);
      if (v12)
      {
        sub_24E615E00(a1, &v18);
        v26 = *&v20[0];
        __swift_project_boxed_opaque_existential_1(&v18, *(&v19 + 1));

        sub_24F928D68();
        __swift_destroy_boxed_opaque_existential_1(&v18);
        sub_24E615E00(a1, &v18);
        sub_24E772724(v24 + 8, v20 + 8);
        v21 = v25;
        sub_24E988B60(&v18, v22);

        v14 = sub_24EC92B68(v13, a2);

        LOBYTE(v18) = 104;
        v15 = Shelf.withItems(_:ofType:removeMarkers:isHidden:)(v14, &v18, 1, 2);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v18 = *(a2 + v11);
        *(a2 + v11) = 0x8000000000000000;
        sub_24E81C838(v15, v24 + 8, isUniquelyReferenced_nonNull_native);
        *(a2 + v11) = v18;
        sub_24E615E00(a1, &v18);
        __swift_project_boxed_opaque_existential_1(&v18, *(&v19 + 1));
        sub_24F928D68();

        sub_24E601704(v23, &qword_27F21EC48, &unk_24F963C20);
        return __swift_destroy_boxed_opaque_existential_1(&v18);
      }
    }

    result = sub_24E601704(v23, &qword_27F21EC48, &unk_24F963C20);
  }

  else
  {
    result = sub_24E772780(v22);
  }

  *(a3 + 32) = 0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

__n128 sub_24EC97EC8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_24EC97ED4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24EC97F1C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = sub_24F91F4A8();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_24EC98058(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_24EDEC7E0(a1, v1 + v4, v6, v7);
}

uint64_t sub_24EC98114()
{

  return swift_deallocObject();
}

uint64_t sub_24EC98174(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v2[13] = a2;
  v3 = sub_24F91F648();
  v2[14] = v3;
  v2[15] = *(v3 - 8);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v4 = type metadata accessor for LocalPlayerProvider(0);
  v5 = swift_task_alloc();
  v2[19] = v5;
  *v5 = v2;
  v5[1] = sub_24EC9829C;

  return MEMORY[0x28217F228](v2 + 10, v4, v4);
}

uint64_t sub_24EC9829C()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_24EC98A68;
  }

  else
  {
    v2 = sub_24EC983B0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EC983B0()
{
  v0[21] = v0[10];
  sub_24F92B7F8();
  v0[22] = sub_24F92B7E8();
  v2 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24EC9844C, v2, v1);
}

uint64_t sub_24EC9844C()
{
  v1 = v0[21];

  swift_getKeyPath();
  v0[11] = v1;
  sub_24E69A53C();
  sub_24F91FD88();

  v2 = (v1 + OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__playerID);
  swift_beginAccess();
  v0[23] = *v2;
  v0[24] = v2[1];

  return MEMORY[0x2822009F8](sub_24EC98538, 0, 0);
}

uint64_t sub_24EC98538(uint64_t a1)
{
  sub_24F91F638();
  v2 = swift_task_alloc();
  v1[25] = v2;
  *v2 = v1;
  v2[1] = sub_24EC985F8;
  v3 = v1[23];
  v4 = v1[24];
  v5 = v1[13];

  return sub_24E649538((v1 + 2), v3, v4, 0, 0, v5);
}

uint64_t sub_24EC985F8()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_24EC98AE8;
  }

  else
  {
    v2 = sub_24EC98734;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EC98734()
{
  v31 = v0[3];
  v32 = v0[2];
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  v4 = qword_27F2113B8;

  if (v4 != -1)
  {
    swift_once();
  }

  v6 = v0[17];
  v5 = v0[18];
  v7 = v0[14];
  v8 = v0[15];
  v9 = sub_24F9220D8();
  __swift_project_value_buffer(v9, qword_27F39E778);
  (*(v8 + 16))(v6, v5, v7);
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v10 = sub_24F9220B8();
  v11 = sub_24F92BD98();
  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[17];
  if (v12)
  {
    v30 = v11;
    v15 = v0[15];
    v14 = v0[16];
    v29 = v0[14];
    log = v10;
    v16 = v0[17];
    v17 = swift_slowAlloc();
    *v17 = 134218752;
    *(v17 + 4) = *(v3 + 16);
    *(v17 + 12) = 2048;
    *(v17 + 14) = *(v1 + 16);

    *(v17 + 22) = 2048;
    v18 = *(v2 + 16);

    *(v17 + 24) = v18;

    *(v17 + 32) = 2048;
    sub_24F91F638();
    sub_24F91F558();
    v20 = v19;
    v21 = *(v15 + 8);
    v21(v14, v29);
    v21(v16, v29);
    *(v17 + 34) = v20;
    _os_log_impl(&dword_24E5DD000, log, v30, "PlayTogetherChallengesDataIntentImplementation returning %ld completed challenges, %ld active challenges, %ld invites\n took %fs", v17, 0x2Au);
    MEMORY[0x2530542D0](v17, -1, -1);
  }

  else
  {
    v22 = v0[14];
    v23 = v0[15];

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    v21 = *(v23 + 8);
    v21(v13, v22);
  }

  v24 = v0[12];
  v21(v0[18], v0[14]);
  *v24 = v32;
  v24[1] = v31;
  v24[2] = v1;
  v24[3] = v2;
  v25 = MEMORY[0x277D84F90];
  v24[4] = v3;
  v24[5] = v25;
  v24[6] = v25;

  v26 = v0[1];

  return v26();
}

uint64_t sub_24EC98A68()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24EC98AE8()
{
  (*(v0[15] + 8))(v0[18], v0[14]);
  if (qword_27F2113B8 != -1)
  {
    swift_once();
  }

  v1 = v0[26];
  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E778);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[26];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_24E5DD000, v4, v5, "PlayTogetherChallengesDataIntentImplementation failed: %@", v7, 0xCu);
    sub_24E6D44CC(v8);
    MEMORY[0x2530542D0](v8, -1, -1);
    MEMORY[0x2530542D0](v7, -1, -1);
  }

  swift_willThrow();

  v11 = v0[1];

  return v11();
}

uint64_t sub_24EC98CA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_24E614970;

  return sub_24EC98174(a1, a3);
}

uint64_t sub_24EC98D60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Player(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24EC98E20(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Player(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for PlayTogetherStartPlayingShelfIntent(uint64_t a1)
{
  result = qword_27F22CE80;
  if (!qword_27F22CE80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EC98F10(uint64_t a1)
{
  result = type metadata accessor for Player(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24EC98F94@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v24 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v24);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CE90, &qword_24F992AF0);
  v23 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v7 = v19 - v6;
  started = type metadata accessor for PlayTogetherStartPlayingShelfIntent(0);
  MEMORY[0x28223BE20](started);
  v10 = (v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EC99438();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = started;
  v21 = a1;
  v11 = v23;
  LOBYTE(v26) = 0;
  *v10 = sub_24F92CC28();
  v10[1] = v12;
  v19[1] = v12;
  LOBYTE(v26) = 1;
  sub_24EC9948C();
  sub_24F92CC68();
  v13 = v20;
  sub_24E61C0A8(v5, v10 + *(v20 + 20));
  v29 = 2;
  sub_24EC994E4();
  sub_24F92CC68();
  v14 = v21;
  (*(v11 + 8))(v7, v25);
  v15 = v28;
  v16 = v10 + *(v13 + 24);
  v17 = v27;
  *v16 = v26;
  *(v16 + 1) = v17;
  *(v16 + 4) = v15;
  sub_24EC99538(v10, v22);
  __swift_destroy_boxed_opaque_existential_1(v14);
  return sub_24EC9959C(v10, type metadata accessor for PlayTogetherStartPlayingShelfIntent);
}

unint64_t sub_24EC99308()
{
  v1 = 0x726579616C70;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x444965676170;
  }
}

uint64_t sub_24EC99360@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24EC99714(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24EC99388(uint64_t a1)
{
  v2 = sub_24EC99438();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EC993C4(uint64_t a1)
{
  v2 = sub_24EC99438();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24EC99438()
{
  result = qword_27F22CE98;
  if (!qword_27F22CE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22CE98);
  }

  return result;
}

unint64_t sub_24EC9948C()
{
  result = qword_27F213E38;
  if (!qword_27F213E38)
  {
    type metadata accessor for Player(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F213E38);
  }

  return result;
}

unint64_t sub_24EC994E4()
{
  result = qword_27F22CEA0;
  if (!qword_27F22CEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22CEA0);
  }

  return result;
}

uint64_t sub_24EC99538(uint64_t a1, uint64_t a2)
{
  started = type metadata accessor for PlayTogetherStartPlayingShelfIntent(0);
  (*(*(started - 8) + 16))(a2, a1, started);
  return a2;
}

uint64_t sub_24EC9959C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24EC99610()
{
  result = qword_27F22CEA8;
  if (!qword_27F22CEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22CEA8);
  }

  return result;
}

unint64_t sub_24EC99668()
{
  result = qword_27F22CEB0;
  if (!qword_27F22CEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22CEB0);
  }

  return result;
}

unint64_t sub_24EC996C0()
{
  result = qword_27F22CEB8;
  if (!qword_27F22CEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22CEB8);
  }

  return result;
}

uint64_t sub_24EC99714(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444965676170 && a2 == 0xE600000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726579616C70 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024FA58D10 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t InstallPagePreInstallFreeLayout.init(metrics:iconView:titleText:parentTitleText:subtitleText:descriptionText:ageRatingView:offerButton:)@<X0>(void *__src@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, __int128 *a8@<X7>, uint64_t a9@<X8>)
{
  memcpy((a9 + 280), __src, 0x170uLL);
  sub_24E612C80(a2, a9);
  sub_24E612C80(a3, a9 + 40);
  sub_24E612C80(a4, a9 + 80);
  sub_24E612C80(a5, a9 + 120);
  sub_24E612C80(a6, a9 + 160);
  sub_24E612C80(a7, a9 + 200);

  return sub_24E612C80(a8, a9 + 240);
}

uint64_t InstallPagePreInstallFreeLayout.Metrics.init(iconSize:ageRatingMargin:ageRatingBaselineOffset:titleSpace:titleHorizontalMargin:parentTitleSpace:parentTitleHorizontalMargin:subtitleSpace:subtitleHorizontalMargin:descriptionSpace:descriptionHorizontalMargin:offerButtonMargin:bottomSpace:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, uint64_t *a4@<X3>, __int128 *a5@<X4>, uint64_t *a6@<X5>, __int128 *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, __int128 *a12, uint64_t *a13, __int128 *a14, __int128 *a15)
{
  v20 = *a4;
  v21 = *a6;
  v22 = *a8;
  v23 = *a13;
  *a9 = a10;
  *(a9 + 8) = a11;
  sub_24E612C80(a1, a9 + 16);
  sub_24E612C80(a2, a9 + 56);
  sub_24E612C80(a3, a9 + 96);
  *(a9 + 136) = v20;
  sub_24E612C80(a5, a9 + 144);
  *(a9 + 184) = v21;
  sub_24E612C80(a7, a9 + 192);
  *(a9 + 232) = v22;
  sub_24E612C80(a12, a9 + 240);
  *(a9 + 280) = v23;
  sub_24E612C80(a14, a9 + 288);

  return sub_24E612C80(a15, a9 + 328);
}

uint64_t InstallPagePreInstallFreeLayout.Metrics.ageRatingMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 16));

  return sub_24E612C80(a1, v1 + 16);
}

uint64_t InstallPagePreInstallFreeLayout.Metrics.ageRatingBaselineOffset.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 56));

  return sub_24E612C80(a1, v1 + 56);
}

uint64_t InstallPagePreInstallFreeLayout.Metrics.titleSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 96));

  return sub_24E612C80(a1, v1 + 96);
}

void InstallPagePreInstallFreeLayout.Metrics.titleHorizontalMargin.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 136) = v2;
}

uint64_t InstallPagePreInstallFreeLayout.Metrics.parentTitleSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 144));

  return sub_24E612C80(a1, v1 + 144);
}

void InstallPagePreInstallFreeLayout.Metrics.parentTitleHorizontalMargin.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 184) = v2;
}

uint64_t InstallPagePreInstallFreeLayout.Metrics.subtitleSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 192));

  return sub_24E612C80(a1, v1 + 192);
}

void InstallPagePreInstallFreeLayout.Metrics.subtitleHorizontalMargin.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 232) = v2;
}

uint64_t InstallPagePreInstallFreeLayout.Metrics.descriptionSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 240));

  return sub_24E612C80(a1, v1 + 240);
}

void InstallPagePreInstallFreeLayout.Metrics.descriptionHorizontalMargin.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 280) = v2;
}

uint64_t InstallPagePreInstallFreeLayout.Metrics.offerButtonMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 288));

  return sub_24E612C80(a1, v1 + 288);
}

uint64_t InstallPagePreInstallFreeLayout.Metrics.bottomSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 328));

  return sub_24E612C80(a1, v1 + 328);
}

double InstallPagePreInstallFreeLayout.measurements(fitting:in:)(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v7 = sub_24F92CDB8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(v3 + 25, v3[28]);
  sub_24F922298();
  v11 = v3[40];
  __swift_project_boxed_opaque_existential_1(v4 + 37, v4[40]);
  sub_24E8ED7D8(v11);
  sub_24F9223A8();
  v12 = *(v8 + 8);
  v12(v10, v7);
  __swift_project_boxed_opaque_existential_1(v4 + 25, v4[28]);
  sub_24F922238();
  v24 = v4[52];

  sub_24F9220E8();
  Conditional<>.value(in:rounded:)(a1, v10);
  v12(v10, v7);

  v24 = v4[58];

  sub_24F9220E8();
  Conditional<>.value(in:rounded:)(a1, v10);
  v12(v10, v7);

  v24 = v4[64];

  sub_24F9220E8();
  Conditional<>.value(in:rounded:)(a1, v10);
  v12(v10, v7);

  v24 = v4[70];

  sub_24F9220E8();
  Conditional<>.value(in:rounded:)(a1, v10);
  v14 = v13;
  v12(v10, v7);

  v23[2] = a2 - (v14 + v14);
  __swift_project_boxed_opaque_existential_1(v4 + 5, v4[8]);
  sub_24F922288();
  v16 = v15;
  v18 = v17;
  __swift_project_boxed_opaque_existential_1(v4 + 47, v4[50]);
  sub_24F9223C8();
  v23[1] = v16 - v18 + v19;
  __swift_project_boxed_opaque_existential_1(v4 + 10, v4[13]);
  sub_24F922288();
  __swift_project_boxed_opaque_existential_1(v4 + 53, v4[56]);
  sub_24F9223C8();
  __swift_project_boxed_opaque_existential_1(v4 + 15, v4[18]);
  sub_24F922288();
  __swift_project_boxed_opaque_existential_1(v4 + 59, v4[62]);
  sub_24F9223C8();
  __swift_project_boxed_opaque_existential_1(v4 + 20, v4[23]);
  sub_24F922288();
  __swift_project_boxed_opaque_existential_1(v4 + 65, v4[68]);
  sub_24F9223C8();
  v20 = v4[74];
  __swift_project_boxed_opaque_existential_1(v4 + 71, v20);
  sub_24E8ED7D8(v20);
  sub_24F9223A8();
  v12(v10, v7);
  __swift_project_boxed_opaque_existential_1(v4 + 30, v4[33]);
  sub_24F922298();
  v21 = v4[79];
  __swift_project_boxed_opaque_existential_1(v4 + 76, v21);
  sub_24E8ED7D8(v21);
  sub_24F9223A8();
  v12(v10, v7);
  return a2;
}

uint64_t InstallPagePreInstallFreeLayout.placeChildren(relativeTo:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v105 = a2;
  v13 = sub_24F92CDB8();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v96 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v6 + 320);
  __swift_project_boxed_opaque_existential_1((v7 + 296), v17);
  sub_24E8ED7D8(v17);
  v18 = sub_24F9223A8();
  v19 = *(v14 + 8);
  v19(v16, v13);
  __swift_project_boxed_opaque_existential_1((v7 + 200), *(v7 + 224));
  sub_24F922298();
  v21 = v20;
  v96[2] = v22;
  __swift_project_boxed_opaque_existential_1((v7 + 200), *(v7 + 224));
  v23 = sub_24F922238();
  *&v96[3] = v21;
  if (v23)
  {
    v24 = 0.0;
  }

  else
  {
    v24 = v18 + v21;
  }

  v106 = v24;
  v112.origin.x = a3;
  v112.origin.y = a4;
  v112.size.width = a5;
  v112.size.height = a6;
  Width = CGRectGetWidth(v112);
  v111[0] = *(v7 + 416);

  sub_24F9220E8();
  Conditional<>.value(in:rounded:)(a1, v16);
  v27 = v26;
  v19(v16, v13);

  v98 = Width - (v27 + v27) - v24;
  v113.origin.x = a3;
  v113.origin.y = a4;
  v113.size.width = a5;
  v113.size.height = a6;
  MinX = CGRectGetWidth(v113);
  v111[0] = *(v7 + 464);
  v28 = *MEMORY[0x277D84688];
  v29 = *(v14 + 104);
  v29(v16, v28, v13);

  Conditional<>.value(in:rounded:)(a1, v16);
  v103 = v30;
  v19(v16, v13);

  v114.origin.x = a3;
  v114.origin.y = a4;
  v114.size.width = a5;
  v114.size.height = a6;
  v102 = CGRectGetWidth(v114);
  v111[0] = *(v7 + 512);
  v29(v16, v28, v13);

  Conditional<>.value(in:rounded:)(a1, v16);
  v101 = v31;
  v19(v16, v13);

  v32 = a3;
  v115.origin.x = a3;
  v115.origin.y = a4;
  v115.size.width = a5;
  v115.size.height = a6;
  v100 = CGRectGetWidth(v115);
  v111[0] = *(v7 + 560);
  v29(v16, v28, v13);

  Conditional<>.value(in:rounded:)(a1, v16);
  v99 = v33;
  v19(v16, v13);

  v116.origin.x = a3;
  v116.origin.y = a4;
  v116.size.width = a5;
  v116.size.height = a6;
  MinY = CGRectGetMinY(v116);
  v35 = *(v7 + 280);
  v36 = *(v7 + 288);
  __swift_project_boxed_opaque_existential_1(v7, *(v7 + 24));
  sub_24F922268();
  v117.origin.x = a3;
  v117.origin.y = a4;
  v117.size.width = a5;
  v117.size.height = a6;
  v37 = floor(CGRectGetMidX(v117) - v35 * 0.5);
  __swift_project_boxed_opaque_existential_1(v111, v111[3]);
  sub_24F922228();
  v118.origin.x = v37;
  v118.origin.y = MinY;
  v118.size.width = v35;
  v118.size.height = v36;
  v97 = MinY + CGRectGetMaxY(v118);
  v38 = *(v7 + 400);
  __swift_project_boxed_opaque_existential_1((v7 + 376), v38);
  sub_24E8ED7D8(v38);
  v39 = sub_24F9223A8();
  v19(v16, v13);
  __swift_project_boxed_opaque_existential_1((v7 + 40), *(v7 + 64));
  v119.origin.x = v32;
  v119.origin.y = a4;
  v119.size.width = a5;
  v119.size.height = a6;
  CGRectGetHeight(v119);
  sub_24F922288();
  v41 = v40;
  *&v96[1] = v39;
  v110 = v39;
  v98 = v42;
  sub_24F9223C8();
  v44 = v43;
  v107 = v32;
  v120.origin.x = v32;
  v120.origin.y = a4;
  v45 = v97;
  y = v120.origin.y;
  v109 = a5;
  v120.size.width = a5;
  v106 = a6;
  v120.size.height = a6;
  CGRectGetMidX(v120);
  __swift_project_boxed_opaque_existential_1((v7 + 40), *(v7 + 64));
  sub_24F922228();
  __swift_project_boxed_opaque_existential_1((v7 + 200), *(v7 + 224));
  if ((sub_24F922238() & 1) == 0)
  {
    v46 = *(v7 + 360);
    __swift_project_boxed_opaque_existential_1((v7 + 336), v46);
    sub_24E8ED7D8(v46);
    sub_24F9223A8();
    v19(v16, v13);
    v121.origin.x = v107;
    v121.origin.y = y;
    v121.size.width = v109;
    v121.size.height = v106;
    CGRectGetMidX(v121);
  }

  v100 = v100 - (v99 + v99);
  v102 = v102 - (v101 + v101);
  v103 = MinX - (v103 + v103);
  __swift_project_boxed_opaque_existential_1((v7 + 200), *(v7 + 224));
  sub_24F922228();
  MinX = v45 + v41 - v98 + v44;
  v47 = *(v7 + 448);
  __swift_project_boxed_opaque_existential_1((v7 + 424), v47);
  sub_24E8ED7D8(v47);
  v48 = sub_24F9223A8();
  v19(v16, v13);
  __swift_project_boxed_opaque_existential_1((v7 + 80), *(v7 + 104));
  v49 = v107;
  v50 = y;
  v122.origin.x = v107;
  v122.origin.y = y;
  v51 = v109;
  v122.size.width = v109;
  v52 = v106;
  v122.size.height = v106;
  CGRectGetHeight(v122);
  sub_24F922288();
  v54 = v53;
  v56 = v55;
  v110 = v48;
  sub_24F9223C8();
  v58 = v57;
  v123.origin.x = v49;
  v123.origin.y = v50;
  v123.size.width = v51;
  v59 = v52;
  v123.size.height = v52;
  CGRectGetMidX(v123);
  v60 = MinX;
  __swift_project_boxed_opaque_existential_1((v7 + 80), *(v7 + 104));
  sub_24F922228();
  MinX = v60 + v54 - v56 + v58;
  __swift_project_boxed_opaque_existential_1((v7 + 120), *(v7 + 144));
  v62 = v107;
  v61 = y;
  v124.origin.x = v107;
  v124.origin.y = y;
  v63 = v109;
  v124.size.width = v109;
  v124.size.height = v59;
  CGRectGetHeight(v124);
  sub_24F922288();
  v65 = v64;
  v67 = v66;
  __swift_project_boxed_opaque_existential_1((v7 + 472), *(v7 + 496));
  sub_24F9223C8();
  v69 = v68;
  v125.origin.x = v62;
  v125.origin.y = v61;
  v125.size.width = v63;
  v125.size.height = v59;
  CGRectGetMidX(v125);
  v70 = MinX;
  __swift_project_boxed_opaque_existential_1((v7 + 120), *(v7 + 144));
  sub_24F922228();
  MinX = v70 + v65 - v67 + v69;
  __swift_project_boxed_opaque_existential_1((v7 + 160), *(v7 + 184));
  v72 = v107;
  v71 = y;
  v126.origin.x = v107;
  v126.origin.y = y;
  v73 = v109;
  v126.size.width = v109;
  v126.size.height = v59;
  CGRectGetHeight(v126);
  sub_24F922288();
  v75 = v74;
  v77 = v76;
  __swift_project_boxed_opaque_existential_1((v7 + 520), *(v7 + 544));
  sub_24F9223C8();
  v79 = v78;
  v127.origin.x = v72;
  v127.origin.y = v71;
  v127.size.width = v73;
  v127.size.height = v59;
  v80 = v59;
  CGRectGetMidX(v127);
  v81 = MinX;
  __swift_project_boxed_opaque_existential_1((v7 + 160), *(v7 + 184));
  sub_24F922228();
  MinX = v81 + v75 - v77 + v79;
  __swift_project_boxed_opaque_existential_1((v7 + 240), *(v7 + 264));
  v82 = v109;
  v83 = v80;
  sub_24F922298();
  v85 = v84;
  v87 = v86;
  v88 = v107;
  v89 = y;
  v128.origin.x = v107;
  v128.origin.y = y;
  v128.size.width = v82;
  v90 = v82;
  v128.size.height = v83;
  v103 = floor(CGRectGetMidX(v128) - v85 * 0.5);
  v91 = *(v7 + 592);
  __swift_project_boxed_opaque_existential_1((v7 + 568), v91);
  sub_24E8ED7D8(v91);
  v92 = sub_24F9223A8();
  v19(v16, v13);
  v93 = MinX + v92;
  __swift_project_boxed_opaque_existential_1((v7 + 240), *(v7 + 264));
  sub_24F922228();
  v129.origin.x = v88;
  v129.origin.y = v89;
  v129.size.width = v90;
  v129.size.height = v83;
  MinX = CGRectGetMinX(v129);
  v130.origin.x = v88;
  v130.origin.y = v89;
  v130.size.width = v90;
  v130.size.height = v83;
  CGRectGetMinY(v130);
  v131.origin.x = v88;
  v131.origin.y = v89;
  v131.size.width = v90;
  v131.size.height = v83;
  CGRectGetWidth(v131);
  v132.origin.x = v103;
  v132.origin.y = v93;
  v132.size.width = v85;
  v132.size.height = v87;
  CGRectGetMaxY(v132);
  v94 = *(v7 + 632);
  __swift_project_boxed_opaque_existential_1((v7 + 608), v94);
  sub_24E8ED7D8(v94);
  sub_24F9223A8();
  v19(v16, v13);
  sub_24F922128();
  return __swift_destroy_boxed_opaque_existential_1(v111);
}

uint64_t sub_24EC9B31C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 648))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24EC9B364(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 632) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 648) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 648) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24EC9B464(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 368))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24EC9B4AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 360) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 368) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 368) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

UIImage *sub_24EC9B5C4(void *a1)
{
  v2 = [objc_opt_self() mainScreen];
  [v2 scale];
  v4 = v3;

  v11.width = 1.0;
  v11.height = 1.0;
  UIGraphicsBeginImageContextWithOptions(v11, 0, v4);
  v5 = UIGraphicsGetCurrentContext();
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    v8 = [a1 CGColor];
    CGContextSetFillColorWithColor(v7, v8);

    v12.origin.x = 0.0;
    v12.origin.y = 0.0;
    v12.size.width = 1.0;
    v12.size.height = 1.0;
    CGContextFillRect(v7, v12);
  }

  v9 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v9;
}

uint64_t sub_24EC9B6C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v30 = a1;
  v32 = a4;
  v29 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v28 - v9;
  v35 = v11;
  v36 = v12;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v14 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v28 - v18;
  v20 = sub_24F924E38();
  v31 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v22 = &v28 - v21;
  if (v30)
  {
    sub_24F9265A8();
    v35 = a2;
    v36 = a3;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_24E7896B8();
    v24 = *(v14 + 8);
    v24(v16, OpaqueTypeMetadata2);
    sub_24E7896B8();
    sub_24ECCCBA0(v16, OpaqueTypeMetadata2, a2, OpaqueTypeConformance2, a3);
    v24(v16, OpaqueTypeMetadata2);
    v24(v19, OpaqueTypeMetadata2);
  }

  else
  {
    sub_24E7896B8();
    sub_24E7896B8();
    v35 = a2;
    v36 = a3;
    v25 = swift_getOpaqueTypeConformance2();
    sub_24ECCCC98(v7, OpaqueTypeMetadata2, a2, v25, a3);
    v26 = *(v29 + 8);
    v26(v7, a2);
    v26(v10, a2);
  }

  v35 = a2;
  v36 = a3;
  v33 = swift_getOpaqueTypeConformance2();
  v34 = a3;
  swift_getWitnessTable();
  sub_24E7896B8();
  return (*(v31 + 8))(v22, v20);
}

uint64_t Placeholder.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  Placeholder.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t Placeholder.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_24F91F6B8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24F928388();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a1;
  sub_24F928398();
  v14 = sub_24F928348();
  if (v15)
  {
    v27 = v14;
    v28 = v15;
    sub_24F92C7F8();
    v16 = sub_24F9285B8();
    (*(*(v16 - 8) + 8))(a2, v16);
  }

  else
  {
    sub_24F91F6A8();
    v17 = sub_24F91F668();
    v25 = a2;
    v19 = v18;
    (*(v7 + 8))(v9, v6);
    v27 = v17;
    v28 = v19;
    sub_24F92C7F8();
    v20 = sub_24F9285B8();
    (*(*(v20 - 8) + 8))(v25, v20);
  }

  v21 = *(v11 + 8);
  v21(v26, v10);
  v21(v13, v10);
  v22 = v30;
  *(v3 + 16) = v29;
  *(v3 + 32) = v22;
  *(v3 + 48) = v31;
  return v3;
}

uint64_t _s12GameStoreKit11PlaceholderC16headingTitleTextSSvgZ_0(__n128 a1)
{
  sub_24F92B228();

  return sub_24F92B388();
}

uint64_t _s12GameStoreKit11PlaceholderC9titleTextSSvgZ_0(__n128 a1)
{
  sub_24F92B228();

  return sub_24F92B388();
}

uint64_t _s12GameStoreKit11PlaceholderC12subtitleTextSSvgZ_0(__n128 a1)
{
  sub_24F92B228();

  return sub_24F92B388();
}

id static Placeholder.appPromotionTitleText.getter()
{
  sub_24F92B388();
  v0 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v1 = sub_24F92B098();

  v2 = [v0 initWithString_];

  return v2;
}

uint64_t Placeholder.__deallocating_deinit()
{
  sub_24E6585F8(v0 + 16);

  return swift_deallocClassInstance();
}

unint64_t sub_24EC9BFC0(uint64_t a1, uint64_t a2)
{
  result = qword_27F22CEC0;
  if (!qword_27F22CEC0)
  {
    type metadata accessor for Placeholder();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22CEC0);
  }

  return result;
}

uint64_t sub_24EC9C048@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for Placeholder();
  v7 = swift_allocObject();
  result = Placeholder.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_24EC9C1C8(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC12GameStoreKit24TopChartSegmentPresenter_view;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_24EC9C234(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC12GameStoreKit24TopChartSegmentPresenter_view;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_24EB09F58;
}

uint64_t sub_24EC9C334()
{
  result = sub_24F01DD24();
  if (*(v0 + OBJC_IVAR____TtC12GameStoreKit24TopChartSegmentPresenter_segment))
  {
    v2 = v0 + OBJC_IVAR____TtC12GameStoreKit24TopChartSegmentPresenter_view;
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v3 = *(v2 + 8);
      swift_getObjectType();

      sub_24EC9C664();
      (*(*(v3 + 16) + 32))();

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_24EC9C404()
{
  v17 = MEMORY[0x277D84FA0];
  v1 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfOrdering;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = MEMORY[0x277D84F90];
  v16 = MEMORY[0x277D84F90];
  v4 = *(v2 + 16);
  v5 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfMapping;

  swift_beginAccess();
  if (!v4)
  {
    goto LABEL_12;
  }

  v6 = 0;
  do
  {
    v7 = v2 + 32 + 40 * v6;
    v8 = v6;
    while (1)
    {
      if (v8 >= *(v2 + 16))
      {
        __break(1u);
        goto LABEL_21;
      }

      sub_24E65864C(v7, v15);
      if (*(*(v0 + v5) + 16))
      {
        break;
      }

LABEL_5:
      ++v8;
      sub_24E6585F8(v15);
      v7 += 40;
      if (v4 == v8)
      {
        goto LABEL_12;
      }
    }

    sub_24E76D934(v15);
    if ((v9 & 1) == 0)
    {

      goto LABEL_5;
    }

    v10 = sub_24E6585F8(v15);
    MEMORY[0x253050F00](v10);
    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24F92B5E8();
    }

    v6 = v8 + 1;
    sub_24F92B638();
    v3 = v16;
  }

  while (v4 - 1 != v8);
LABEL_12:

  if (v3 >> 62)
  {
LABEL_21:
    result = sub_24F92C738();
    v12 = result;
    if (!result)
    {
      goto LABEL_22;
    }

LABEL_14:
    if (v12 >= 1)
    {
      for (i = 0; i != v12; ++i)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x253052270](i, v3);
        }

        else
        {
          v14 = *(v3 + 8 * i + 32);
        }

        sub_24ED7E294(v15, *(v14 + 16));
      }

      goto LABEL_22;
    }

    __break(1u);
  }

  else
  {
    v12 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_14;
    }

LABEL_22:

    return v17;
  }

  return result;
}

uint64_t sub_24EC9C664()
{
  v17 = MEMORY[0x277D84FA0];
  v1 = OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_shelfOrdering;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = MEMORY[0x277D84F90];
  v16 = MEMORY[0x277D84F90];
  v4 = *(v2 + 16);
  v5 = OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_shelfMapping;

  swift_beginAccess();
  if (!v4)
  {
    goto LABEL_12;
  }

  v6 = 0;
  do
  {
    v7 = v2 + 32 + 40 * v6;
    v8 = v6;
    while (1)
    {
      if (v8 >= *(v2 + 16))
      {
        __break(1u);
        goto LABEL_21;
      }

      sub_24E65864C(v7, v15);
      if (*(*(v0 + v5) + 16))
      {
        break;
      }

LABEL_5:
      ++v8;
      sub_24E6585F8(v15);
      v7 += 40;
      if (v4 == v8)
      {
        goto LABEL_12;
      }
    }

    sub_24E76D934(v15);
    if ((v9 & 1) == 0)
    {

      goto LABEL_5;
    }

    v10 = sub_24E6585F8(v15);
    MEMORY[0x253050F00](v10);
    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24F92B5E8();
    }

    v6 = v8 + 1;
    sub_24F92B638();
    v3 = v16;
  }

  while (v4 - 1 != v8);
LABEL_12:

  if (v3 >> 62)
  {
LABEL_21:
    result = sub_24F92C738();
    v12 = result;
    if (!result)
    {
      goto LABEL_22;
    }

LABEL_14:
    if (v12 >= 1)
    {
      for (i = 0; i != v12; ++i)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x253052270](i, v3);
        }

        else
        {
          v14 = *(v3 + 8 * i + 32);
        }

        sub_24ED7E294(v15, *(v14 + 16));
      }

      goto LABEL_22;
    }

    __break(1u);
  }

  else
  {
    v12 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_14;
    }

LABEL_22:

    return v17;
  }

  return result;
}

void sub_24EC9C8C4()
{
  v6 = MEMORY[0x277D84FA0];
  sub_24EC4064C();
  v1 = v0;
  if (!(v0 >> 62))
  {
    v2 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_11:

    return;
  }

  v2 = sub_24F92C738();
  if (!v2)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (v2 < 1)
  {
    __break(1u);
  }

  else
  {
    for (i = 0; i != v2; ++i)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x253052270](i, v1);
      }

      else
      {
        v4 = *(v1 + 8 * i + 32);
      }

      sub_24ED7E294(&v5, *(v4 + 16));
    }
  }
}

uint64_t sub_24EC9C9BC()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit24TopChartSegmentPresenter_isPreparingNextPage;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_24EC9CA00(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR____TtC12GameStoreKit24TopChartSegmentPresenter_isPreparingNextPage;
  result = swift_beginAccess();
  v6 = *(v1 + v4);
  *(v1 + v4) = a1;
  if (v6 != v3)
  {
    v7 = v1 + OBJC_IVAR____TtC12GameStoreKit24TopChartSegmentPresenter_view;
    if (a1)
    {
      swift_beginAccess();
      result = swift_unknownObjectWeakLoadStrong();
      if (!result)
      {
        return result;
      }

      v8 = *(v7 + 8);
      ObjectType = swift_getObjectType();
      (*(*(v8 + 8) + 8))(ObjectType);
    }

    else
    {
      swift_beginAccess();
      result = swift_unknownObjectWeakLoadStrong();
      if (!result)
      {
        return result;
      }

      v10 = *(v7 + 8);
      v11 = swift_getObjectType();
      (*(*(v10 + 8) + 16))(v11);
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void (*sub_24EC9CAF4(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC12GameStoreKit24TopChartSegmentPresenter_isPreparingNextPage;
  *(v3 + 72) = v1;
  *(v3 + 80) = v5;
  swift_beginAccess();
  *(v4 + 88) = *(v1 + v5);
  return sub_24EC9CB88;
}

void sub_24EC9CB88(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 88);
  if (a2)
  {
    sub_24EC9CA00(v3);
    goto LABEL_10;
  }

  v5 = v2[9];
  v4 = v2[10];
  v6 = *(v5 + v4);
  *(v5 + v4) = v3;
  if (v3 != v6)
  {
    v7 = v2[9] + OBJC_IVAR____TtC12GameStoreKit24TopChartSegmentPresenter_view;
    if (v3)
    {
      swift_beginAccess();
      if (!swift_unknownObjectWeakLoadStrong())
      {
        goto LABEL_10;
      }

      v8 = *(v7 + 8);
      ObjectType = swift_getObjectType();
      v10 = (*(v8 + 8) + 8);
    }

    else
    {
      swift_beginAccess();
      if (!swift_unknownObjectWeakLoadStrong())
      {
        goto LABEL_10;
      }

      v11 = *(v7 + 8);
      ObjectType = swift_getObjectType();
      v10 = (*(v11 + 8) + 16);
    }

    (*v10)(ObjectType);
    swift_unknownObjectRelease();
  }

LABEL_10:

  free(v2);
}

BOOL sub_24EC9CC8C()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit24TopChartSegmentPresenter_segment);
  if (!v1)
  {
    return 0;
  }

  sub_24E94E17C(v1 + OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_nextPage, v4);
  v2 = v4[3] != 0;
  sub_24E601704(v4, &qword_27F2129B0, &unk_24F945320);
  return v2;
}

void sub_24EC9CD08()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit24TopChartSegmentPresenter_segment);
  if (v1)
  {
    sub_24E94E17C(v1 + OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_nextPage, &v16);
    if (v17)
    {
      sub_24E612B0C(&v16, v20);
      v2 = OBJC_IVAR____TtC12GameStoreKit24TopChartSegmentPresenter_isPreparingNextPage;
      swift_beginAccess();
      v3 = *(v0 + v2);
      *(v0 + v2) = 1;
      if (v3 == 1 || (v4 = v0 + OBJC_IVAR____TtC12GameStoreKit24TopChartSegmentPresenter_view, swift_beginAccess(), !swift_unknownObjectWeakLoadStrong()))
      {
      }

      else
      {
        v5 = *(v4 + 8);
        ObjectType = swift_getObjectType();
        v7 = *(v5 + 8);
        v8 = *(v7 + 8);

        v8(ObjectType, v7);
        swift_unknownObjectRelease();
      }

      type metadata accessor for JSIntentDispatcher();
      v9 = *(v0 + OBJC_IVAR____TtC12GameStoreKit13BasePresenter_objectGraph);
      sub_24F928FD8();
      sub_24F92A758();
      sub_24E643A9C(v20, v19);
      v10 = v9;
      v11 = v0;
      sub_24EB48270(v19, v10, "GameStoreKit/TopChartSegmentPresenter.swift", 43, 2);
      v17 = sub_24F929638();
      v18 = MEMORY[0x277D21FB0];
      __swift_allocate_boxed_opaque_existential_1(&v16);
      sub_24F929628();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CEC8, &qword_24F992F48);
      sub_24F92A938();

      __swift_destroy_boxed_opaque_existential_1(&v16);
      v12 = swift_allocObject();
      *(v12 + 16) = v11;
      *(v12 + 24) = v1;
      v13 = swift_allocObject();
      *(v13 + 16) = sub_24EC9E5B4;
      *(v13 + 24) = v12;
      v14 = sub_24E74EC40();
      swift_retain_n();

      v15 = sub_24F92BEF8();
      v17 = v14;
      v18 = MEMORY[0x277D225C0];
      *&v16 = v15;
      sub_24F92A958();

      sub_24EC9E62C(v19);
      __swift_destroy_boxed_opaque_existential_1(v20);
      __swift_destroy_boxed_opaque_existential_1(&v16);
    }

    else
    {
      sub_24E601704(&v16, &qword_27F2129B0, &unk_24F945320);
    }
  }
}

uint64_t sub_24EC9D02C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = *a1;

  result = sub_24EC9C664();
  a2[1] = result;
  return result;
}

uint64_t sub_24EC9D074(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a3 + OBJC_IVAR____TtC12GameStoreKit24TopChartSegmentPresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v6 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v7 + 16) + 32))(a2, ObjectType);
    swift_unknownObjectRelease();
  }

  v9 = TopChartSegment.mergingWith(_:)(a1);
  v10 = *(a3 + OBJC_IVAR____TtC12GameStoreKit24TopChartSegmentPresenter_segment);
  *(a3 + OBJC_IVAR____TtC12GameStoreKit24TopChartSegmentPresenter_segment) = v9;

  sub_24EC9D2DC(v10);

  v11 = OBJC_IVAR____TtC12GameStoreKit24TopChartSegmentPresenter_isPreparingNextPage;
  result = swift_beginAccess();
  v13 = *(a3 + v11);
  *(a3 + v11) = 0;
  if (v13)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v14 = *(v6 + 8);
      v15 = swift_getObjectType();
      (*(*(v14 + 8) + 16))(v15);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_24EC9D1C4(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC12GameStoreKit24TopChartSegmentPresenter_isPreparingNextPage;
  swift_beginAccess();
  v5 = *(a2 + v4);
  *(a2 + v4) = 0;
  if (v5)
  {
    v6 = a2 + OBJC_IVAR____TtC12GameStoreKit24TopChartSegmentPresenter_view;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v7 = *(v6 + 8);
      ObjectType = swift_getObjectType();
      (*(*(v7 + 8) + 16))(ObjectType);
      swift_unknownObjectRelease();
    }
  }

  v9 = a2 + OBJC_IVAR____TtC12GameStoreKit24TopChartSegmentPresenter_view;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = *(v9 + 8);
    v12 = swift_getObjectType();
    (*(*(v11 + 8) + 24))(a1, v12);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_24EC9D2DC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24F91F648();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 88;
  v8 = OBJC_IVAR____TtC12GameStoreKit24TopChartSegmentPresenter_segment;
  v9 = *(v1 + OBJC_IVAR____TtC12GameStoreKit24TopChartSegmentPresenter_segment);
  if (v9)
  {
    v10 = type metadata accessor for TopChartSegment(0);
    v11 = sub_24EC9EA94(&qword_27F22CEE8, type metadata accessor for TopChartSegment, &protocol conformance descriptor for BasePage);
    v12 = &protocol witness table for BasePage;
  }

  else
  {
    v10 = 0;
    v12 = 0;
    v11 = 0;
    v24[1] = 0;
    v24[2] = 0;
  }

  v24[0] = v9;
  v25 = v10;
  v26 = v12;
  v27 = v11;
  swift_beginAccess();

  sub_24EA095A4(v24, v2 + 40);
  swift_endAccess();
  sub_24EC832DC();
  sub_24E601704(v24, &qword_27F224F98, &unk_24F974A70);
  v13 = *(v2 + v8);
  if (v13)
  {
    if (a1)
    {
    }

    else
    {
      v14 = v2 + OBJC_IVAR____TtC12GameStoreKit24TopChartSegmentPresenter_view;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v15 = *(v14 + 8);
        swift_getObjectType();
        v23 = v4;

        sub_24EC9C664();
        v4 = v23;
        (*(*(v15 + 16) + 32))();

        swift_unknownObjectRelease();
      }

      else
      {
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v16 = *(v14 + 8);
        ObjectType = swift_getObjectType();
        (*(*(*(v16 + 16) + 16) + 8))(ObjectType);
        swift_unknownObjectRelease();
      }
    }

    swift_beginAccess();
    if (*(v2 + 16))
    {
      v25 = type metadata accessor for TopChartSegment(0);
      v26 = &protocol witness table for BasePage;
      v27 = sub_24EC9EA94(&qword_27F22CEE8, type metadata accessor for TopChartSegment, &protocol conformance descriptor for BasePage);
      v24[0] = v13;

      PendingPageRender.use(pageRenderEventFrom:)(v24);

      sub_24E601704(v24, &qword_27F224F98, &unk_24F974A70);
      v18 = *(v2 + 16);
      if (v18)
      {

        sub_24F91F638();
        sub_24F91F5E8();
        v20 = v19;
        (*(v5 + 8))(v7, v4);
        v21 = v18 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_rootViewModelPresentTime;
        swift_beginAccess();
        *v21 = v20;
        *(v21 + 8) = 0;
        v22 = *(v18 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasViewModelPresentTime);
        swift_beginAccess();
        *(v22 + 40) = 1;
        swift_beginAccess();
        if (swift_weakLoadStrong())
        {
          sub_24EA6BFA0();
        }
      }
    }
  }
}

uint64_t sub_24EC9D6F0(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC12GameStoreKit24TopChartSegmentPresenter_segment);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + *a1);

  return v3;
}

uint64_t sub_24EC9D744()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit24TopChartSegmentPresenter_segment);
  if (!v1)
  {
    return v1;
  }

  v2 = OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_shelfOrdering;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = MEMORY[0x277D84F90];
  v14 = MEMORY[0x277D84F90];
  v5 = *(v3 + 16);
  v6 = OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_shelfMapping;

  swift_beginAccess();
  if (!v5)
  {
    goto LABEL_13;
  }

  v7 = 0;
  do
  {
    v8 = v3 + 32 + 40 * v7;
    v9 = v7;
    while (1)
    {
      if (v9 >= *(v3 + 16))
      {
        __break(1u);
        goto LABEL_18;
      }

      sub_24E65864C(v8, v13);
      if (*(*(v1 + v6) + 16))
      {
        break;
      }

LABEL_5:
      ++v9;
      sub_24E6585F8(v13);
      v8 += 40;
      if (v5 == v9)
      {
        goto LABEL_13;
      }
    }

    sub_24E76D934(v13);
    if ((v10 & 1) == 0)
    {

      goto LABEL_5;
    }

    v11 = sub_24E6585F8(v13);
    MEMORY[0x253050F00](v11);
    if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24F92B5E8();
    }

    v7 = v9 + 1;
    sub_24F92B638();
    v4 = v14;
  }

  while (v5 - 1 != v9);
LABEL_13:

  if (v4 >> 62)
  {
LABEL_18:
    v1 = sub_24F92C738();
  }

  else
  {
    v1 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v1;
}

unint64_t sub_24EC9D950(unint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC12GameStoreKit24TopChartSegmentPresenter_segment);
  if (!v2)
  {
    goto LABEL_22;
  }

  v3 = result;
  v4 = OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_shelfOrdering;
  swift_beginAccess();
  v5 = *(v2 + v4);
  v6 = MEMORY[0x277D84F90];
  v17 = MEMORY[0x277D84F90];
  v7 = *(v5 + 16);
  v8 = OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_shelfMapping;

  swift_beginAccess();
  if (!v7)
  {
    goto LABEL_13;
  }

  v9 = 0;
  v10 = v5 + 32;
  do
  {
    v11 = v10 + 40 * v9;
    v12 = v9;
    while (1)
    {
      if (v12 >= *(v5 + 16))
      {
        __break(1u);
        goto LABEL_19;
      }

      sub_24E65864C(v11, v16);
      if (*(*(v2 + v8) + 16))
      {
        break;
      }

LABEL_5:
      ++v12;
      sub_24E6585F8(v16);
      v11 += 40;
      if (v7 == v12)
      {
        goto LABEL_13;
      }
    }

    sub_24E76D934(v16);
    if ((v13 & 1) == 0)
    {

      goto LABEL_5;
    }

    v14 = sub_24E6585F8(v16);
    MEMORY[0x253050F00](v14);
    if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24F92B5E8();
    }

    v9 = v12 + 1;
    sub_24F92B638();
    v6 = v17;
    v10 = v5 + 32;
  }

  while (v7 - 1 != v12);
LABEL_13:

  if ((v6 & 0xC000000000000001) != 0)
  {
LABEL_19:
    v15 = MEMORY[0x253052270](v3, v6);
LABEL_17:

    return v15;
  }

  else
  {
    if ((v3 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) > v3)
    {
      v15 = *(v6 + 8 * v3 + 32);

      goto LABEL_17;
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

  return result;
}

BOOL sub_24EC9DB80(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC12GameStoreKit24TopChartSegmentPresenter_segment);
  if (!v2)
  {
    return 0;
  }

  v4 = OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_shelfOrdering;
  swift_beginAccess();
  v5 = *(v2 + v4);
  v6 = MEMORY[0x277D84F90];
  v18 = MEMORY[0x277D84F90];
  v7 = *(v5 + 16);
  v8 = OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_shelfMapping;

  swift_beginAccess();
  if (!v7)
  {
    goto LABEL_13;
  }

  v9 = 0;
  v10 = v5 + 32;
  do
  {
    v11 = v10 + 40 * v9;
    v12 = v9;
    while (1)
    {
      if (v12 >= *(v5 + 16))
      {
        __break(1u);
        goto LABEL_18;
      }

      sub_24E65864C(v11, v17);
      if (*(*(v2 + v8) + 16))
      {
        break;
      }

LABEL_5:
      ++v12;
      sub_24E6585F8(v17);
      v11 += 40;
      if (v7 == v12)
      {
        goto LABEL_13;
      }
    }

    sub_24E76D934(v17);
    if ((v13 & 1) == 0)
    {

      goto LABEL_5;
    }

    v14 = sub_24E6585F8(v17);
    MEMORY[0x253050F00](v14);
    if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24F92B5E8();
    }

    v9 = v12 + 1;
    sub_24F92B638();
    v6 = v18;
    v10 = v5 + 32;
  }

  while (v7 - 1 != v12);
LABEL_13:

  if (v6 >> 62)
  {
LABEL_18:
    v15 = sub_24F92C738();
  }

  else
  {
    v15 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v15 > a1;
}

unint64_t sub_24EC9DD98(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC12GameStoreKit24TopChartSegmentPresenter_segment;
  if (!*(v1 + OBJC_IVAR____TtC12GameStoreKit24TopChartSegmentPresenter_segment))
  {
    return 0;
  }

  v3 = sub_24F91FA18();
  v4 = *(v1 + v2);
  if (!v4)
  {
    return 0;
  }

  v5 = v3;
  v32 = v1;
  v6 = OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_shelfOrdering;
  swift_beginAccess();
  v7 = *(v4 + v6);
  v8 = MEMORY[0x277D84F90];
  v35 = MEMORY[0x277D84F90];
  v9 = *(v7 + 16);
  v10 = OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_shelfMapping;

  swift_beginAccess();
  if (v9)
  {
    v11 = 0;
    v12 = v7 + 32;
    v13 = MEMORY[0x277D84F90];
    v33 = v5;
    while (1)
    {
      v5 = v12 + 40 * v11;
      v8 = v11;
      while (1)
      {
        if (v8 >= *(v7 + 16))
        {
          __break(1u);
          goto LABEL_41;
        }

        sub_24E65864C(v5, v36);
        if (!*(*(v4 + v10) + 16))
        {
          goto LABEL_6;
        }

        sub_24E76D934(v36);
        if (v14)
        {
          break;
        }

LABEL_6:
        ++v8;
        sub_24E6585F8(v36);
        v5 += 40;
        if (v9 == v8)
        {
          v8 = MEMORY[0x277D84F90];
          v5 = v33;
          goto LABEL_18;
        }
      }

      v15 = sub_24E6585F8(v36);
      MEMORY[0x253050F00](v15);
      if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24F92B5E8();
      }

      v11 = v8 + 1;
      sub_24F92B638();
      v13 = v35;
      v12 = v7 + 32;
      v16 = v9 - 1 == v8;
      v8 = MEMORY[0x277D84F90];
      v5 = v33;
      if (v16)
      {
        goto LABEL_18;
      }
    }
  }

  v13 = v8;
LABEL_18:

  if (v13 >> 62)
  {
    goto LABEL_42;
  }

  for (i = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_24F92C738())
  {

    if (v5 >= i)
    {
      return 0;
    }

    result = sub_24F91FA18();
    v19 = *(v32 + v2);
    if (!v19)
    {
      goto LABEL_46;
    }

    v20 = result;
    v21 = OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_shelfOrdering;
    swift_beginAccess();
    v22 = *(v19 + v21);
    v34 = v8;
    v23 = *(v22 + 16);
    v24 = OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_shelfMapping;

    swift_beginAccess();
    if (!v23)
    {
      break;
    }

    v5 = 0;
    v25 = v22 + 32;
    v32 = v23 - 1;
LABEL_24:
    v26 = v25 + 40 * v5;
    v2 = v5;
    while (v2 < *(v22 + 16))
    {
      sub_24E65864C(v26, v36);
      if (*(*(v19 + v24) + 16))
      {

        sub_24E76D934(v36);
        if (v27)
        {

          v28 = sub_24E6585F8(v36);
          MEMORY[0x253050F00](v28);
          if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_24F92B5E8();
          }

          v5 = v2 + 1;
          sub_24F92B638();
          v8 = v34;
          v25 = v22 + 32;
          if (v32 != v2)
          {
            goto LABEL_24;
          }

          goto LABEL_35;
        }
      }

      ++v2;
      sub_24E6585F8(v36);
      v26 += 40;
      if (v23 == v2)
      {
        goto LABEL_35;
      }
    }

LABEL_41:
    __break(1u);
LABEL_42:
    ;
  }

LABEL_35:

  if ((v8 & 0xC000000000000001) != 0)
  {
    v29 = MEMORY[0x253052270](v20, v8);
    goto LABEL_39;
  }

  if ((v20 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v20 < *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v29 = *(v8 + 8 * v20 + 32);

LABEL_39:

    v30 = *(v29 + 24);

    v31 = *(v30 + 16);

    return sub_24F91FA08() < v31;
  }

  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

uint64_t TopChartSegmentPresenter.__allocating_init(objectGraph:impressionsTracker:impressionsCalculator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + OBJC_IVAR____TtC12GameStoreKit24TopChartSegmentPresenter_view + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v8 + OBJC_IVAR____TtC12GameStoreKit24TopChartSegmentPresenter_isPreparingNextPage) = 0;
  *(v8 + OBJC_IVAR____TtC12GameStoreKit24TopChartSegmentPresenter_segment) = 0;
  *(v8 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_pageRefreshPolicy) = 0;
  *(v8 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_incompleteShelfFetches) = 0;
  *(v8 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_isFetchingShelves) = 0;
  *(v8 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_activeRequests) = MEMORY[0x277D84FA0];
  v9 = sub_24EC8415C(a1, a2, a3, a4);

  swift_unknownObjectRelease();
  return v9;
}

uint64_t TopChartSegmentPresenter.init(objectGraph:impressionsTracker:impressionsCalculator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + OBJC_IVAR____TtC12GameStoreKit24TopChartSegmentPresenter_view + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + OBJC_IVAR____TtC12GameStoreKit24TopChartSegmentPresenter_isPreparingNextPage) = 0;
  *(v4 + OBJC_IVAR____TtC12GameStoreKit24TopChartSegmentPresenter_segment) = 0;
  *(v4 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_pageRefreshPolicy) = 0;
  *(v4 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_incompleteShelfFetches) = 0;
  *(v4 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_isFetchingShelves) = 0;
  *(v4 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_activeRequests) = MEMORY[0x277D84FA0];
  v9 = sub_24EC8415C(a1, a2, a3, a4);

  swift_unknownObjectRelease();
  return v9;
}

double sub_24EC9E3E8()
{
  sub_24E883630(v0 + OBJC_IVAR____TtC12GameStoreKit24TopChartSegmentPresenter_view);

  return result;
}

uint64_t TopChartSegmentPresenter.deinit()
{
  v0 = BasePresenter.deinit();

  sub_24E883630(v0 + OBJC_IVAR____TtC12GameStoreKit24TopChartSegmentPresenter_view);

  return v0;
}

uint64_t TopChartSegmentPresenter.__deallocating_deinit()
{
  v0 = BasePresenter.deinit();

  v1 = OBJC_IVAR____TtC12GameStoreKit24TopChartSegmentPresenter_view;

  sub_24E883630(v0 + v1);

  return swift_deallocClassInstance();
}

uint64_t sub_24EC9E574()
{

  return swift_deallocObject();
}

uint64_t sub_24EC9E5BC()
{

  return swift_deallocObject();
}

uint64_t sub_24EC9E680(uint64_t a1)
{
  result = sub_24EC9EA94(&qword_27F22CED0, type metadata accessor for TopChartSegmentPresenter, &protocol conformance descriptor for BasePresenter);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for TopChartSegmentPresenter(uint64_t a1)
{
  result = qword_27F22CED8;
  if (!qword_27F22CED8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EC9E724@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC12GameStoreKit24TopChartSegmentPresenter_view;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_24EC9E780(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  v3 = *a2 + OBJC_IVAR____TtC12GameStoreKit24TopChartSegmentPresenter_view;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_24EC9E7E4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12GameStoreKit24TopChartSegmentPresenter_isPreparingNextPage;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_24EC9EA94(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24EC9EB04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CEF0, &unk_24F993030);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24EC9EBE0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CEF0, &unk_24F993030);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for GameMediaPreviewPlatformAccessoryView(uint64_t a1)
{
  result = qword_27F22CEF8;
  if (!qword_27F22CEF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EC9ECF0(uint64_t a1)
{
  sub_24EC9ED74(319);
  if (v1 <= 0x3F)
  {
    sub_24E62A0F0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24EC9ED74(uint64_t a1)
{
  if (!qword_27F22CF08)
  {
    type metadata accessor for GameMediaPreviewPlatformOptionProvider(255);
    v1 = sub_24F927398();
    if (!v2)
    {
      atomic_store(v1, &qword_27F22CF08);
    }
  }
}

uint64_t sub_24EC9EDE8@<X0>(uint64_t *a1@<X8>)
{
  v49 = a1;
  v2 = sub_24F924B38();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v47 = v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CF10, &qword_24F9930B8);
  v48 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v46[0] = v46 - v5;
  v52 = v1;
  v51 = v1;
  v46[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CF18, &qword_24F9930C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CF20, &qword_24F9930C8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22CF28, &qword_24F9930D0);
  v7 = sub_24EC9FF34();
  v8 = sub_24EC9FF88();
  v53 = &type metadata for PickerLabel;
  v54 = &type metadata for ActionLabelStyle;
  v55 = v7;
  v56 = v8;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v53 = v6;
  v54 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22CF40, &qword_24F9930D8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22CF48, &qword_24F9930E0);
  v12 = sub_24F9248E8();
  v13 = sub_24E602068(&qword_27F22CF50, &qword_27F22CF48, &qword_24F9930E0, MEMORY[0x277CDF038]);
  v53 = v11;
  v54 = v12;
  v55 = v13;
  v56 = MEMORY[0x277CDDDA0];
  v14 = swift_getOpaqueTypeConformance2();
  v53 = v10;
  v54 = v14;
  swift_getOpaqueTypeConformance2();
  sub_24F925AB8();
  v56 = sub_24F9271D8();
  v57 = sub_24EC9FFEC(&qword_27F214E38, MEMORY[0x277CE1260], MEMORY[0x277CE1248]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v53);
  v16 = *(v3 + 104);
  v16(boxed_opaque_existential_1, *MEMORY[0x277CE0118], v2);
  __swift_project_boxed_opaque_existential_1(&v53, v56);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v20 = (v46 - v19);
  v21 = v47;
  (v16)(v47, *MEMORY[0x277CE0128], v2, v18);
  v22 = v46[0];
  LOBYTE(v10) = sub_24F924B28();
  v23 = v3;
  v24 = v49;
  (*(v23 + 8))(v21, v2);
  *v20 = ((v10 & 1) == 0) | 0x3FF0000000000000;
  swift_getAssociatedConformanceWitness();
  v25 = v48;
  v26 = v50;
  v27 = sub_24F927348();
  v28 = _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  __swift_destroy_boxed_opaque_existential_1(&v53);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CF58, &qword_24F9930E8);
  (*(v25 + 16))(v24 + v29[9], v22, v26);
  *v24 = v27;
  v24[1] = v28;
  v24[2] = 0x4000000000000000;
  v30 = v24 + v29[10];

  *v30 = sub_24F923398() & 1;
  *(v30 + 1) = v31;
  v30[16] = v32 & 1;
  v33 = v24 + v29[11];
  *v33 = swift_getKeyPath();
  v33[8] = 0;
  if (qword_27F211808 != -1)
  {
    swift_once();
  }

  v34 = qword_27F24E488;
  v35 = sub_24F923398();
  v37 = v36;
  v39 = v38;
  v40 = v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CF60, &qword_24F993118) + 36);
  *v40 = v34;
  v40[8] = v35 & 1;
  *(v40 + 2) = v37;
  v40[24] = v39 & 1;
  LOBYTE(v34) = sub_24F923398();
  v42 = v41;
  LOBYTE(v37) = v43;

  (*(v25 + 8))(v22, v26);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CF68, &qword_24F993120);
  v45 = v24 + *(result + 36);
  *v45 = v34 & 1;
  *(v45 + 1) = v42;
  v45[16] = v37 & 1;
  return result;
}

uint64_t sub_24EC9F40C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = sub_24F9248E8();
  v4 = *(v3 - 8);
  v28 = v3;
  v29 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CEF0, &unk_24F993030);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CF48, &qword_24F9930E0);
  v25 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v25 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CF40, &qword_24F9930D8);
  v15 = *(v14 - 8);
  v26 = v14;
  v27 = v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v25 - v16;
  v18._object = 0x800000024FA58DF0;
  v18._countAndFlagsBits = 0xD000000000000026;
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  v37 = localizedString(_:comment:)(v18, v19);
  sub_24F927368();
  swift_getKeyPath();
  sub_24F927388();

  (*(v8 + 8))(v10, v7);
  v35 = v32;
  v36 = v33;
  v31 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CF70, &unk_24F993150);
  sub_24ECA003C();
  sub_24E600AEC();
  sub_24F927098();
  sub_24F9248D8();
  v20 = sub_24E602068(&qword_27F22CF50, &qword_27F22CF48, &qword_24F9930E0, MEMORY[0x277CDF038]);
  v21 = MEMORY[0x277CDDDA0];
  v22 = v28;
  sub_24F9261F8();
  (*(v29 + 8))(v6, v22);
  (*(v25 + 8))(v13, v11);
  *&v32 = v11;
  *(&v32 + 1) = v22;
  v33 = v20;
  v34 = v21;
  swift_getOpaqueTypeConformance2();
  v23 = v26;
  sub_24F926298();
  return (*(v27 + 8))(v17, v23);
}

uint64_t sub_24EC9F840(uint64_t a1)
{
  v2 = type metadata accessor for GameMediaPreviewPlatformAccessoryView(0);
  sub_24F406F84(*(a1 + *(v2 + 20)));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CF80, &qword_24F993180);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CF88, &qword_24F993188);
  sub_24E602068(&qword_27F22CF90, &qword_27F22CF80, &qword_24F993180, MEMORY[0x277D83980]);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F211B58, &unk_24F935650);
  sub_24E602068(&qword_27F212910, &qword_27F211B58, &unk_24F935650, MEMORY[0x277CDEFF0]);
  swift_getOpaqueTypeConformance2();
  return sub_24F927228();
}

uint64_t sub_24EC9F9CC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F211B58, &unk_24F935650);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v12 - v6;
  v8 = *a1;
  v9 = a1[2];
  v12[0] = a1[1];
  v12[1] = v9;
  sub_24E600AEC();

  sub_24F926EB8();
  (*(v5 + 32))(a2, v7, v4);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F211B60, &unk_24F993190);
  v11 = a2 + *(result + 36);
  *v11 = v8;
  *(v11 + 8) = 1;
  return result;
}

void sub_24EC9FB24(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24F9248C8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v36 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CF28, &qword_24F9930D0);
  v34 = *(v7 - 8);
  v35 = v7;
  MEMORY[0x28223BE20](v7);
  v33 = v30 - v8;
  v9 = *(a1 + *(type metadata accessor for GameMediaPreviewPlatformAccessoryView(0) + 20));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CEF0, &unk_24F993030);
  sub_24F927358();
  v10 = v38;
  swift_getKeyPath();
  v38 = v10;
  sub_24EC9FFEC(&qword_27F224068, type metadata accessor for GameMediaPreviewPlatformOptionProvider, &unk_24F9AA3D8);
  sub_24F91FD88();

  Description = v10[1].Description;

  if ((Description & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (Description >= *(v9 + 16))
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v30[1] = a2;
  v31 = v5;
  v32 = v4;
  v12 = v9 + 32 + 32 * Description;
  v13 = *(v12 + 8);
  v38 = *v12;
  v39 = v13;
  sub_24E600AEC();

  v14 = sub_24F925E18();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  sub_24F927358();
  v21 = v38;
  swift_getKeyPath();
  v38 = v21;
  sub_24F91FD88();

  v22 = v21[1].Description;

  if ((v22 & 0x8000000000000000) != 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v22 < *(v9 + 16))
  {

    v23 = sub_24F926DF8();
    v38 = v14;
    v39 = v16;
    v24 = v18 & 1;
    LOBYTE(v40) = v18 & 1;
    v41 = v20;
    v42 = v23;
    v37 = 1;
    v25 = sub_24EC9FF34();
    v26 = sub_24EC9FF88();
    v27 = v33;
    sub_24F9260E8();
    sub_24E600B40(v14, v16, v24);

    v28 = v36;
    sub_24F9248B8();
    v38 = &type metadata for PickerLabel;
    v39 = &type metadata for ActionLabelStyle;
    v40 = v25;
    v41 = v26;
    swift_getOpaqueTypeConformance2();
    v29 = v35;
    _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
    (*(v31 + 8))(v28, v32);
    (*(v34 + 8))(v27, v29);
    return;
  }

LABEL_9:
  __break(1u);
}

unint64_t sub_24EC9FF34()
{
  result = qword_27F22CF30;
  if (!qword_27F22CF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22CF30);
  }

  return result;
}

unint64_t sub_24EC9FF88()
{
  result = qword_27F22CF38;
  if (!qword_27F22CF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22CF38);
  }

  return result;
}

uint64_t sub_24EC9FFEC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24ECA003C()
{
  result = qword_27F22CF78;
  if (!qword_27F22CF78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22CF70, &unk_24F993150);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F211B58, &unk_24F935650);
    sub_24E602068(&qword_27F212910, &qword_27F211B58, &unk_24F935650, MEMORY[0x277CDEFF0]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22CF78);
  }

  return result;
}

unint64_t sub_24ECA0148()
{
  result = qword_27F22CF98;
  if (!qword_27F22CF98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22CF68, &qword_24F993120);
    sub_24ECA01D4();
    sub_24E600F3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22CF98);
  }

  return result;
}

unint64_t sub_24ECA01D4()
{
  result = qword_27F22CFA0;
  if (!qword_27F22CFA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22CF60, &qword_24F993118);
    sub_24E602068(&qword_27F22CFA8, &qword_27F22CF58, &qword_24F9930E8, &unk_24FA2648C);
    sub_24E600EE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22CFA0);
  }

  return result;
}

uint64_t sub_24ECA028C()
{
  result = sub_24F92B098();
  qword_27F22CFB0 = result;
  return result;
}

id static NSNotificationName.searchActionImplementationDidRun.getter()
{
  if (qword_27F210510 != -1)
  {
    swift_once();
  }

  v1 = qword_27F22CFB0;

  return v1;
}

unint64_t sub_24ECA033C()
{
  result = qword_27F22D038;
  if (!qword_27F22D038)
  {
    type metadata accessor for SearchAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22D038);
  }

  return result;
}

uint64_t sub_24ECA03A0(uint64_t a1)
{
  v2 = sub_24F928AE8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() defaultCenter];
  if (qword_27F210510 != -1)
  {
    swift_once();
  }

  [v6 postNotificationName:qword_27F22CFB0 object:a1];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510, &unk_24F93C690);
  (*(v3 + 104))(v5, *MEMORY[0x277D21CA8], v2);
  return sub_24F92A988();
}

double MetadataRibbonItemView.layoutContext.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  (*(a2 + 160))(&v12);
  if (*(&v13 + 1))
  {
    v15[0] = v12;
    v15[1] = v13;
    v16 = v14;
    sub_24E65864C(v15, a3);
    v7 = MEMORY[0x277D22A58];
    *(a3 + 64) = a1;
    *(a3 + 72) = v7;
    *(a3 + 40) = v3;
    v8 = *(a2 + 40);
    v9 = v3;
    *(a3 + 80) = v8(a1, a2) & 1;
    v10 = (*(a2 + 48))(a1, a2);
    sub_24E6585F8(v15);
    *(a3 + 81) = v10 & 1;
  }

  else
  {
    sub_24E9BBAA8(&v12);
    *(a3 + 80) = 0;
    result = 0.0;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
  }

  return result;
}

uint64_t MetadataRibbonItemView.searchLayoutContext.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  (*(a2 + 160))(&v14);
  if (!*(&v15 + 1))
  {
    result = sub_24E9BBAA8(&v14);
    goto LABEL_5;
  }

  v17[0] = v14;
  v17[1] = v15;
  v18 = v16;
  (*(a2 + 56))(&v14, a1, a2);
  v7 = v14;
  if (v14 == 10)
  {
    result = sub_24E6585F8(v17);
LABEL_5:
    *(a3 + 112) = 0;
    *(a3 + 80) = 0u;
    *(a3 + 96) = 0u;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
    return result;
  }

  sub_24E65864C(v17, a3);
  v9 = MEMORY[0x277D22A58];
  *(a3 + 64) = a1;
  *(a3 + 72) = v9;
  *(a3 + 40) = v3;
  v10 = *(a2 + 48);
  v3;
  *(a3 + 80) = v10(a1, a2) & 1;
  *(a3 + 81) = v7;
  *(a3 + 88) = (*(a2 + 80))(a1, a2);
  *(a3 + 96) = v11 & 1;
  *(a3 + 104) = (*(a2 + 104))(a1, a2);
  *(a3 + 112) = v12 & 1;
  v13 = (*(a2 + 136))(a1, a2);
  result = sub_24E6585F8(v17);
  *(a3 + 113) = v13;
  return result;
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_24ECA0A08(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_24ECA0A50(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24ECA0AB8(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v11 = sub_24F922C28();
  MEMORY[0x28223BE20](v11 - 8);
  sub_24E90E558(v5 + 64, &v17);
  if (v18)
  {
    sub_24E612E28(&v17, v19);
    __swift_project_boxed_opaque_existential_1(v19, v20);
    sub_24F922288();
    __swift_project_boxed_opaque_existential_1((v5 + 24), *(v5 + 48));
    sub_24F9223C8();
    v12 = a2;
    v13 = a3;
    v14 = a4;
    v15 = a5;
    if (*v5)
    {
      CGRectGetMaxY(*&v12);
    }

    else
    {
      CGRectGetMinY(*&v12);
    }

    __swift_project_boxed_opaque_existential_1(v19, v20);
    v21.origin.x = a2;
    v21.origin.y = a3;
    v21.size.width = a4;
    v21.size.height = a5;
    CGRectGetMinX(v21);
    sub_24F92C1D8();
    sub_24F922228();
    __swift_project_boxed_opaque_existential_1(v19, v20);
    sub_24F922218();
    CGRectGetMinY(v22);
    v23.origin.x = a2;
    v23.origin.y = a3;
    v23.size.width = a4;
    v23.size.height = a5;
    CGRectGetHeight(v23);
    __swift_project_boxed_opaque_existential_1(v19, v20);
    sub_24F922218();
    CGRectGetMaxY(v24);
    sub_24F922C08();
    sub_24F922188();
    return __swift_destroy_boxed_opaque_existential_1(v19);
  }

  else
  {
    sub_24E90ED10(&v17);
    sub_24ECA0D9C(a1, a4, a5);
    return sub_24F922138();
  }
}

double sub_24ECA0D9C(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v5 = sub_24F92CDB8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E90E558(v3 + 64, v17);
  if (!v18)
  {
    sub_24E90ED10(v17);
    v13 = *(v3 + 8);
    v11 = *(v3 + 16);
    [*(v4 + 16) ascender];
    v10 = 0.0;
    if (v13 < 1)
    {
      goto LABEL_5;
    }

    goto LABEL_3;
  }

  __swift_project_boxed_opaque_existential_1(v17, v18);
  sub_24F922288();
  v10 = v9;
  __swift_destroy_boxed_opaque_existential_1(v17);
  v12 = *(v3 + 8);
  v11 = *(v3 + 16);
  if (v12 >= 1)
  {
LABEL_3:
    [v11 lineHeight];
    [v11 leading];
  }

LABEL_5:
  v14 = *(v4 + 48);
  __swift_project_boxed_opaque_existential_1((v4 + 24), v14);
  sub_24E8ED7D8(v14);
  sub_24F9223A8();
  (*(v6 + 8))(v8, v5);
  return v10;
}

uint64_t sub_24ECA0FC8(uint64_t a1, int a2)
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

uint64_t sub_24ECA1010(uint64_t result, int a2, int a3)
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

unint64_t sub_24ECA1084()
{
  result = qword_27F22D040;
  if (!qword_27F22D040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22D040);
  }

  return result;
}

uint64_t sub_24ECA10EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[19] = a2;
  v3[20] = a3;
  v3[18] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22D110, &qword_24F948460);
  v3[21] = v4;
  v3[22] = *(v4 - 8);
  v3[23] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213760, qword_24F93AF80);
  v3[24] = v5;
  v3[25] = *(v5 - 8);
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24ECA1230, 0, 0);
}

uint64_t sub_24ECA1230()
{
  v1 = *(v0[19] + 16);
  v2 = swift_task_alloc();
  v0[28] = v2;
  *v2 = v0;
  v2[1] = sub_24ECA12E0;
  v3 = v0[20];

  return sub_24E64793C(v1, v3);
}

uint64_t sub_24ECA12E0(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 232) = a1;

    return MEMORY[0x2822009F8](sub_24ECA1440, 0, 0);
  }
}

uint64_t sub_24ECA1440()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 216);
  v3 = *(v0 + 200);
  v20 = *(v0 + 192);
  v21 = *(v0 + 208);
  v5 = *(v0 + 176);
  v4 = *(v0 + 184);
  v6 = *(v0 + 160);
  v19 = *(v0 + 168);
  v7 = *(v0 + 152);
  v22 = *(v0 + 144);
  v8 = swift_allocObject();
  *(v8 + 16) = MEMORY[0x277D84F90];
  sub_24ECA1D9C(v7, v0 + 16);
  v9 = swift_allocObject();
  v10 = *(v0 + 96);
  *(v9 + 88) = *(v0 + 80);
  *(v9 + 104) = v10;
  v11 = *(v0 + 128);
  *(v9 + 120) = *(v0 + 112);
  *(v9 + 136) = v11;
  v12 = *(v0 + 32);
  *(v9 + 24) = *(v0 + 16);
  *(v9 + 40) = v12;
  v13 = *(v0 + 64);
  *(v9 + 56) = *(v0 + 48);
  *(v9 + 16) = v8;
  *(v9 + 72) = v13;
  *(v9 + 152) = v1;
  *(v9 + 160) = v6;

  v14 = sub_24E802CE0(&unk_2861C0938);
  v15 = swift_task_alloc();
  *(v15 + 16) = v14;
  *(v15 + 24) = &unk_24F993430;
  *(v15 + 32) = v9;
  *(v15 + 40) = 257;
  type metadata accessor for GSKShelf(0);
  (*(v5 + 104))(v4, *MEMORY[0x277D85778], v19);
  sub_24F92B928();

  (*(v3 + 16))(v21, v2, v20);
  sub_24E613678();
  sub_24F9280F8();
  (*(v3 + 8))(v2, v20);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213768, &unk_24F93F770);
  (*(*(v16 - 8) + 56))(v22, 0, 1, v16);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_24ECA16E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[41] = a6;
  v7[42] = a7;
  v7[39] = a4;
  v7[40] = a5;
  v7[37] = a1;
  v7[38] = a3;
  return MEMORY[0x2822009F8](sub_24ECA1710, 0, 0);
}

uint64_t sub_24ECA1710()
{
  v0[29] = 0xD000000000000019;
  v1 = v0[38];
  v0[30] = 0x800000024FA58E50;
  sub_24F92C7F8();
  if (*(v1 + 16) && (v2 = sub_24E76D934((v0 + 2)), (v3 & 1) != 0))
  {
    sub_24E643A9C(*(v0[38] + 56) + 32 * v2, (v0 + 12));
    sub_24E6585F8((v0 + 2));
    if (swift_dynamicCast())
    {
      v4 = v0[39];
      v5 = v0[35];
      v6 = v0[36];
      swift_beginAccess();
      v7 = *(v4 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v4 + 16) = v7;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v35 = v0[39];
        v7 = sub_24E615CF4(0, *(v7 + 2) + 1, 1, v7);
        *(v35 + 16) = v7;
      }

      v9 = *(v7 + 2);
      v10 = *(v7 + 3);
      v11 = v9 + 1;
      if (v9 >= v10 >> 1)
      {
        v40 = v9 + 1;
        v36 = v7;
        v37 = *(v7 + 2);
        v38 = sub_24E615CF4((v10 > 1), v9 + 1, 1, v36);
        v9 = v37;
        v11 = v40;
        v7 = v38;
      }

      v12 = v0[39];
      *(v7 + 2) = v11;
      v13 = &v7[16 * v9];
      *(v13 + 4) = v5;
      *(v13 + 5) = v6;
      *(v12 + 16) = v7;
      swift_endAccess();
    }
  }

  else
  {
    sub_24E6585F8((v0 + 2));
  }

  v0[31] = 0xD000000000000013;
  v0[32] = 0x800000024FA58E70;
  sub_24F92C7F8();
  if (*(v1 + 16) && (v14 = sub_24E76D934((v0 + 7)), (v15 & 1) != 0))
  {
    sub_24E643A9C(*(v0[38] + 56) + 32 * v14, (v0 + 16));
    sub_24E6585F8((v0 + 7));
    if (swift_dynamicCast())
    {
      v16 = v0[39];
      v17 = v0[33];
      v18 = v0[34];
      swift_beginAccess();
      v19 = *(v16 + 16);
      v20 = swift_isUniquelyReferenced_nonNull_native();
      *(v16 + 16) = v19;
      if ((v20 & 1) == 0)
      {
        v39 = v0[39];
        v19 = sub_24E615CF4(0, *(v19 + 2) + 1, 1, v19);
        *(v39 + 16) = v19;
      }

      v22 = *(v19 + 2);
      v21 = *(v19 + 3);
      if (v22 >= v21 >> 1)
      {
        v19 = sub_24E615CF4((v21 > 1), v22 + 1, 1, v19);
      }

      v23 = v0[39];
      *(v19 + 2) = v22 + 1;
      v24 = &v19[16 * v22];
      *(v24 + 4) = v17;
      *(v24 + 5) = v18;
      *(v23 + 16) = v19;
      swift_endAccess();
    }
  }

  else
  {
    sub_24E6585F8((v0 + 7));
  }

  v25 = v0[40];
  v26 = v0[39];
  v27 = *v25;
  v28 = v25[1];
  v0[43] = v28;
  swift_beginAccess();
  v29 = *(v26 + 16);
  v0[44] = v29;

  v30 = swift_task_alloc();
  v0[45] = v30;
  *v30 = v0;
  v30[1] = sub_24ECA1AE8;
  v31 = v0[41];
  v32 = v0[42];
  v33 = v0[37];

  return sub_24E6497E4(v33, v27, v28, v31, v29, v32);
}

uint64_t sub_24ECA1AE8()
{
  v2 = *v1;
  *(v2 + 368) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24ECA1C3C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_24ECA1C3C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24ECA1CB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24E614970;

  return sub_24ECA10EC(a1, a2, a3);
}

uint64_t sub_24ECA1D64()
{

  return swift_deallocObject();
}

uint64_t sub_24ECA1DF8()
{

  if (*(v0 + 120))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  }

  return swift_deallocObject();
}

uint64_t sub_24ECA1E80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[2];
  v9 = v3[19];
  v10 = v3[20];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_24E614970;

  return sub_24ECA16E8(a1, a2, a3, v8, (v3 + 3), v9, v10);
}

uint64_t sub_24ECA1F58()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_24F92B098();
  v2 = [v0 arrayForKey_];

  if (v2)
  {
    v3 = sub_24F92B5A8();

    v4 = sub_24E9E2340(v3);

    if (v4)
    {
      if (v4[2])
      {
        v5 = v4[4];
        v6 = v4[5];

        v8 = 0;
        LOBYTE(v5) = sub_24E908B94(v5, v6, &v8);

        if (v5)
        {
          return v8;
        }
      }

      else
      {
      }
    }
  }

  else
  {
  }

  return 0;
}

uint64_t sub_24ECA2090()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_24F92B098();
  v2 = [v0 arrayForKey_];

  if (v2)
  {
    v3 = sub_24F92B5A8();

    v4 = sub_24E9E2340(v3);

    if (v4)
    {
      if (v4[2])
      {
        v5 = v4[4];
        v6 = v4[5];

        v8 = 0;
        LOBYTE(v5) = sub_24E908B94(v5, v6, &v8);

        if (v5)
        {
          return v8;
        }
      }

      else
      {
      }
    }
  }

  else
  {
  }

  return 0;
}

GameStoreKit::BagOfflinePolicy __swiftcall BagOfflinePolicy.init(defaultMaxAge:offlineMaxAge:)(Swift::Double defaultMaxAge, Swift::Double offlineMaxAge)
{
  *v2 = defaultMaxAge;
  v2[1] = offlineMaxAge;
  result._offlineMaxAge = offlineMaxAge;
  result._defaultMaxAge = defaultMaxAge;
  return result;
}

BOOL BagOfflinePolicy.isWithinDefaultMaxAge(bagExpirationDate:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v19 - v4;
  v6 = sub_24F91F648();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v1;
  v11 = *(v1 + 8);
  sub_24E728A00(a1, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_24E728998(v5);
    return 0;
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    sub_24F91F5C8();
    v14 = v13;
    *v19 = v10;
    v19[1] = v11;
    *&v15 = COERCE_DOUBLE(sub_24ECA1F58());
    v17 = v16;
    (*(v7 + 8))(v9, v6);
    v18 = *&v15;
    if (v17)
    {
      v18 = v10;
    }

    return v18 > -v14;
  }
}

double sub_24ECA2394()
{
  result = 86400.0;
  xmmword_27F22D048 = xmmword_24F993440;
  return result;
}

double static BagOfflinePolicy.standard.getter@<D0>(_OWORD *a1@<X8>)
{
  if (qword_27F210518 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  result = *&xmmword_27F22D048;
  *a1 = xmmword_27F22D048;
  return result;
}

uint64_t sub_24ECA2424@<X0>(uint64_t *a1@<X8>)
{
  v24 = a1;
  v1 = sub_24F9289E8();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216F40, &unk_24F9487C0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v23 - v3;
  v5 = sub_24F928AD8();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_24F9294C8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PresentPromptAction(0);
  v28[3] = v10;
  v28[4] = sub_24ECA39A0(&qword_27F216300, type metadata accessor for PresentPromptAction, &protocol conformance descriptor for PresentPromptAction);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v28);
  sub_24F9294B8();
  (*(v7 + 16))(boxed_opaque_existential_1 + *(v10 + 20), v9, v6);
  sub_24F928A98();
  (*(v7 + 8))(v9, v6);
  *boxed_opaque_existential_1 = 0x6E65697246646461;
  boxed_opaque_existential_1[1] = 0xE900000000000064;
  sub_24F928A98();
  v12 = sub_24F92A628();
  (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
  v13._object = 0x800000024FA58E90;
  v13._countAndFlagsBits = 0xD00000000000002ELL;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  localizedString(_:comment:)(v13, v14);
  v15._countAndFlagsBits = 0xD000000000000030;
  v15._object = 0x800000024FA58EC0;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  localizedString(_:comment:)(v15, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213DB8, &qword_24F93BA00);
  sub_24F92A618();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  v17._countAndFlagsBits = 0xD000000000000032;
  v17._object = 0x800000024FA58F00;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  localizedString(_:comment:)(v17, v18);
  v27 = 0;
  v25 = 0u;
  v26 = 0u;
  sub_24F92A608();
  sub_24F9289D8();
  *(&v26 + 1) = sub_24F92A638();
  v27 = MEMORY[0x277D223B8];
  __swift_allocate_boxed_opaque_existential_1(&v25);
  sub_24F92A5E8();
  v19 = type metadata accessor for AddFriendAction(0);
  v20 = v24;
  v24[3] = v19;
  v20[4] = sub_24ECA39A0(&qword_27F216208, type metadata accessor for AddFriendAction, &protocol conformance descriptor for AddFriendAction);
  v21 = __swift_allocate_boxed_opaque_existential_1(v20);
  sub_24F928A98();
  *(v21 + 1) = 0u;
  *(v21 + 2) = 0u;
  *v21 = 0u;
  *(v21 + 48) = 2;
  *(v21 + 9) = 0u;
  v21[11] = 0;
  *(v21 + 7) = 0u;
  sub_24E61DA68(v28, (v21 + 7), qword_27F21B590, &unk_24F93BE30);
  *(v21 + 6) = 0u;
  *(v21 + 7) = 0u;
  v21 += 12;
  v21[4] = 0;
  return sub_24E61DA68(&v25, v21, qword_27F21B590, &unk_24F93BE30);
}

uint64_t sub_24ECA2910(uint64_t a1, unint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EC10, &unk_24F94D880);
  inited = swift_initStackObject();
  v5 = inited;
  *(inited + 32) = 0x6554686372616573;
  v6 = inited + 32;
  *(inited + 16) = xmmword_24F93DE60;
  if (a2)
  {
    v7 = a1;
  }

  else
  {
    v7 = 0;
  }

  v8 = 0xE000000000000000;
  if (a2)
  {
    v8 = a2;
  }

  *(inited + 40) = 0xEA00000000006D72;
  *(inited + 48) = v7;
  *(inited + 56) = v8;

  v9 = sub_24E6086DC(v5);
  swift_setDeallocating();
  sub_24E601704(v6, &qword_27F219F90, &qword_24F955020);
  v10._object = 0x800000024FA58FF0;
  v10._countAndFlagsBits = 0xD000000000000035;
  countAndFlagsBits = localizedString(_:with:)(v10, v9)._countAndFlagsBits;

  return countAndFlagsBits;
}

unint64_t sub_24ECA2A14()
{
  v1 = 0xD00000000000001DLL;
  v2 = *v0;
  v3 = 0xD000000000000018;
  if (v2 != 4)
  {
    v3 = 0xD000000000000023;
  }

  if (v2 == 3)
  {
    v3 = 0xD00000000000001DLL;
  }

  if (v2 == 1)
  {
    v1 = 0xD000000000000017;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24ECA2ABC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24ECA3F84(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24ECA2AE4(uint64_t a1)
{
  v2 = sub_24ECA2E18();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24ECA2B20(uint64_t a1)
{
  v2 = sub_24ECA2E18();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InviteFriendsSearchShelfIntent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D058, &qword_24F9934B0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24ECA2E18();
  sub_24F92D128();
  v8[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D9C8, &qword_24F959E38);
  sub_24E7D414C(&qword_27F21D9D0, MEMORY[0x277D837D8], MEMORY[0x277D21AD0]);
  sub_24F92CD48();
  if (!v1)
  {
    type metadata accessor for InviteFriendsSearchShelfIntent(0);
    v8[14] = 1;
    sub_24F92CD08();
    v8[13] = 2;
    sub_24F92CCA8();
    v8[12] = 3;
    sub_24F92CCA8();
    v8[11] = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213EA8, &unk_24F93D030);
    sub_24E641F68(&qword_27F21BE88, MEMORY[0x277D21FE0]);
    sub_24F92CD48();
    v8[10] = 5;
    sub_24F92CCA8();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_24ECA2E18()
{
  result = qword_27F22D060;
  if (!qword_27F22D060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22D060);
  }

  return result;
}

uint64_t type metadata accessor for InviteFriendsSearchShelfIntent(uint64_t a1)
{
  result = qword_27F22D070;
  if (!qword_27F22D070)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t InviteFriendsSearchShelfIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a1;
  v57 = a2;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D9C8, &qword_24F959E38);
  v61 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v64 = &v56 - v2;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D068, &unk_24F9934B8);
  v60 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v69 = &v56 - v3;
  v4 = sub_24F9289E8();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216F40, &unk_24F9487C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v56 - v6;
  v8 = sub_24F928AD8();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = sub_24F9294C8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for InviteFriendsSearchShelfIntent(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16._object = 0x800000024FA47680;
  v16._countAndFlagsBits = 0xD000000000000032;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  object = localizedString(_:comment:)(v16, v17)._object;
  v18._countAndFlagsBits = 0xD000000000000020;
  v18._object = 0x800000024FA476C0;
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  v68 = localizedString(_:comment:)(v18, v19)._object;
  v58 = v13;
  v20 = *(v13 + 32);
  v59 = v15;
  v75 = &v15[v20];
  v21 = type metadata accessor for PresentPromptAction(0);
  v71[3] = v21;
  v71[4] = sub_24ECA39A0(&qword_27F216300, type metadata accessor for PresentPromptAction, &protocol conformance descriptor for PresentPromptAction);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v71);
  sub_24F9294B8();
  (*(v10 + 16))(boxed_opaque_existential_1 + *(v21 + 20), v12, v9);
  sub_24F928A98();
  (*(v10 + 8))(v12, v9);
  *boxed_opaque_existential_1 = 0x6E65697246646461;
  boxed_opaque_existential_1[1] = 0xE900000000000064;
  sub_24F928A98();
  v23 = sub_24F92A628();
  (*(*(v23 - 8) + 56))(v7, 1, 1, v23);
  v24._countAndFlagsBits = 0xD00000000000002ELL;
  v24._object = 0x800000024FA58E90;
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  localizedString(_:comment:)(v24, v25);
  v26._countAndFlagsBits = 0xD000000000000030;
  v26._object = 0x800000024FA58EC0;
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  localizedString(_:comment:)(v26, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213DB8, &qword_24F93BA00);
  sub_24F92A618();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  v28._object = 0x800000024FA58F00;
  v28._countAndFlagsBits = 0xD000000000000032;
  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  localizedString(_:comment:)(v28, v29);
  v74 = 0;
  v72 = 0u;
  v73 = 0u;
  sub_24F92A608();
  sub_24F9289D8();
  v70[3] = sub_24F92A638();
  v70[4] = MEMORY[0x277D223B8];
  __swift_allocate_boxed_opaque_existential_1(v70);
  v30 = v75;
  v31 = v65;
  sub_24F92A5E8();
  *(&v73 + 1) = type metadata accessor for AddFriendAction(0);
  v74 = sub_24ECA39A0(&qword_27F216208, type metadata accessor for AddFriendAction, &protocol conformance descriptor for AddFriendAction);
  v32 = __swift_allocate_boxed_opaque_existential_1(&v72);
  sub_24F928A98();
  *(v32 + 1) = 0u;
  *(v32 + 2) = 0u;
  *v32 = 0u;
  *(v32 + 48) = 2;
  *(v32 + 9) = 0u;
  v32[11] = 0;
  *(v32 + 7) = 0u;
  sub_24E61DA68(v71, (v32 + 7), qword_27F21B590, &unk_24F93BE30);
  *(v32 + 6) = 0u;
  *(v32 + 7) = 0u;
  v32 += 12;
  v32[4] = 0;
  sub_24E61DA68(v70, v32, qword_27F21B590, &unk_24F93BE30);
  *(v30 + 32) = 0;
  *v30 = 0u;
  *(v30 + 16) = 0u;
  sub_24E61DA68(&v72, v30, qword_27F21B590, &unk_24F93BE30);
  __swift_project_boxed_opaque_existential_1(v31, v31[3]);
  sub_24ECA2E18();
  v33 = v67;
  sub_24F92D108();
  if (v33)
  {
    __swift_destroy_boxed_opaque_existential_1(v31);

    return sub_24E601704(v30, &qword_27F213EA8, &unk_24F93D030);
  }

  else
  {
    v34 = v60;
    v35 = v61;
    LOBYTE(v72) = 0;
    sub_24E7D414C(&qword_27F21D9E0, MEMORY[0x277D83808], MEMORY[0x277D21AE0]);
    v36 = v63;
    sub_24F92CC68();
    v37 = v59;
    (*(v35 + 32))(v59, v64, v36);
    LOBYTE(v72) = 1;
    v38 = sub_24F92CC28();
    v40 = v39;

    v41 = &v37[v58[5]];
    *v41 = v38;
    v41[1] = v40;
    LOBYTE(v72) = 2;
    v42 = sub_24F92CBC8();
    object = v40;
    v43 = v58;
    v44 = &v37[v58[6]];
    *v44 = v42;
    v44[1] = v45;
    v67 = v45;
    LOBYTE(v72) = 3;
    v46 = sub_24F92CBC8();
    v48 = v47;

    v49 = &v37[v43[7]];
    *v49 = v46;
    v49[1] = v48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213EA8, &unk_24F93D030);
    LOBYTE(v71[0]) = 4;
    sub_24E641F68(&qword_27F21BEE8, MEMORY[0x277D21FE8]);
    sub_24F92CC68();
    sub_24E61DA68(&v72, v75, &qword_27F213EA8, &unk_24F93D030);
    LOBYTE(v72) = 5;
    v50 = sub_24F92CBC8();
    v52 = v51;
    v53 = v59;
    v54 = &v59[v58[9]];
    (*(v34 + 8))(v69, v62);
    *v54 = v50;
    v54[1] = v52;
    sub_24E7D5980(v53, v57);
    __swift_destroy_boxed_opaque_existential_1(v31);
    return sub_24E7D59E4(v53);
  }
}

uint64_t sub_24ECA39A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24ECA3A38(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 24));

  return v2;
}

uint64_t sub_24ECA3A70(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 20));

  return v2;
}

uint64_t sub_24ECA3AC0(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 28));

  return v2;
}

double sub_24ECA3AF8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_24ECA4180(v2 + *(a1 + 32), v6);
  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v5;
  *(a2 + 32) = v7;
  return result;
}

uint64_t sub_24ECA3B44(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 36));

  return v2;
}

uint64_t sub_24ECA3B90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D9C8, &qword_24F959E38);
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

    return (v10 + 1);
  }
}

uint64_t sub_24ECA3C70(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D9C8, &qword_24F959E38);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_24ECA3D38(uint64_t a1)
{
  sub_24ECA3E18(319, &qword_27F21D9F8, MEMORY[0x277D21AC8]);
  if (v1 <= 0x3F)
  {
    sub_24ECA3E18(319, &qword_27F254DE0, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_24E7CA5E4(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24ECA3E18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D837D0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_24ECA3E80()
{
  result = qword_27F22D080;
  if (!qword_27F22D080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22D080);
  }

  return result;
}

unint64_t sub_24ECA3ED8()
{
  result = qword_27F22D088;
  if (!qword_27F22D088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22D088);
  }

  return result;
}

unint64_t sub_24ECA3F30()
{
  result = qword_27F22D090;
  if (!qword_27F22D090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22D090);
  }

  return result;
}

uint64_t sub_24ECA3F84(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000010 && 0x800000024FA47660 == a2;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x800000024FA58F40 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001DLL && 0x800000024FA58F60 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001DLL && 0x800000024FA58F80 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000018 && 0x800000024FA58FA0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000023 && 0x800000024FA58FC0 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_24ECA4180(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213EA8, &unk_24F93D030);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24ECA4200@<X0>(void *a1@<X8>)
{
  v3 = v1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08, &unk_24F93A2A0);
  if (v3)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24F93A400;
    *(inited + 32) = 0x444965676170;
    v5 = MEMORY[0x277D22580];
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 80) = v5;
    v6 = *v1;
    v7 = v1[1];
    *(inited + 40) = 0xE600000000000000;
    *(inited + 48) = v6;
    *(inited + 56) = v7;
    *(inited + 88) = 0x737265746C6966;
    *(inited + 96) = 0xE700000000000000;
    *(inited + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D0A8, &qword_24F993850);
    *(inited + 136) = sub_24ECA5030(&qword_27F22D0D8, sub_24ECA50A8, MEMORY[0x277D22590]);
    *(inited + 104) = v3;

    v8 = sub_24E607D0C(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18, &unk_24F93A2B0);
    swift_arrayDestroy();
  }

  else
  {
    v9 = swift_initStackObject();
    *(v9 + 16) = xmmword_24F93DE60;
    *(v9 + 32) = 0x444965676170;
    v10 = MEMORY[0x277D22580];
    *(v9 + 72) = MEMORY[0x277D837D0];
    *(v9 + 80) = v10;
    v12 = *v1;
    v11 = v1[1];
    *(v9 + 40) = 0xE600000000000000;
    *(v9 + 48) = v12;
    *(v9 + 56) = v11;

    v8 = sub_24E607D0C(v9);
    swift_setDeallocating();
    sub_24E601704(v9 + 32, &qword_27F212F18, &unk_24F93A2B0);
  }

  v13 = sub_24E80FFAC(v8);

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a1[3] = v14;
  a1[4] = result;
  *a1 = v13;
  return result;
}

uint64_t sub_24ECA442C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D0C0, &unk_24F993858);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24ECA4F04();
  sub_24F92D128();
  v12 = 0;
  sub_24F92CD08();
  if (!v2)
  {
    v11 = *(v3 + 16);
    v10[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D0A8, &qword_24F993850);
    sub_24ECA5030(&qword_27F22D0C8, sub_24ECA4FDC, MEMORY[0x277D83948]);
    sub_24F92CCF8();
    v10[14] = 2;
    sub_24F92CCA8();
    v10[13] = 3;
    sub_24F92CD08();
    v10[12] = 4;
    sub_24F92CCA8();
    v10[11] = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213EA8, &unk_24F93D030);
    sub_24E641F68(&qword_27F21BE88, MEMORY[0x277D21FE0]);
    sub_24F92CD48();
    v10[10] = 6;
    sub_24F92CCA8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24ECA46F4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D098, &qword_24F993848);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  memset(v23, 0, sizeof(v23));
  v24 = 0;
  sub_24E61DA68(v20, v23, qword_27F21B590, &unk_24F93BE30);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24ECA4F04();
  sub_24F92D108();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_24E601704(v23, &qword_27F213EA8, &unk_24F93D030);
  }

  else
  {
    LOBYTE(v20[0]) = 0;
    v22[0] = sub_24F92CC28();
    v22[1] = v9;
    v27 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D0A8, &qword_24F993850);
    v19 = 1;
    sub_24ECA5030(&qword_27F22D0B0, sub_24ECA4F58, MEMORY[0x277D83978]);
    sub_24F92CC18();
    v22[2] = *&v20[0];
    LOBYTE(v20[0]) = 2;
    v22[3] = sub_24F92CBC8();
    v22[4] = v10;
    LOBYTE(v20[0]) = 3;
    v22[5] = sub_24F92CC28();
    v22[6] = v11;
    LOBYTE(v20[0]) = 4;
    v22[7] = sub_24F92CBC8();
    v22[8] = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213EA8, &unk_24F93D030);
    v19 = 5;
    sub_24E641F68(&qword_27F21BEE8, MEMORY[0x277D21FE8]);
    sub_24F92CC68();
    sub_24E61DA68(v20, v23, &qword_27F213EA8, &unk_24F93D030);
    LOBYTE(v20[0]) = 6;
    v13 = sub_24F92CBC8();
    v14 = v8;
    v16 = v15;
    (*(v6 + 8))(v14, v5);
    v25 = v13;
    v26 = v16;
    sub_24ECA1D9C(v22, a2);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_24ECA4FAC(v22);
  }
}

uint64_t sub_24ECA4BE8()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x737265746C6966;
    if (v1 != 1)
    {
      v5 = 0xD00000000000001DLL;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0x444965676170;
    }
  }

  else
  {
    v2 = 0xD000000000000018;
    if (v1 != 5)
    {
      v2 = 0xD000000000000023;
    }

    v3 = 0xD000000000000017;
    if (v1 != 3)
    {
      v3 = 0xD00000000000001DLL;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_24ECA4CD0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24ECA5214(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24ECA4CF8(uint64_t a1)
{
  v2 = sub_24ECA4F04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24ECA4D34(uint64_t a1)
{
  v2 = sub_24ECA4F04();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24ECA4DD8()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_24ECA4E08()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t sub_24ECA4E38()
{
  v0._object = 0x800000024FA59030;
  v0._countAndFlagsBits = 0xD00000000000002FLL;
  v1._countAndFlagsBits = 0;
  v1._object = 0xE000000000000000;
  return localizedString(_:comment:)(v0, v1)._countAndFlagsBits;
}

uint64_t sub_24ECA4E5C()
{
  v1 = *(v0 + 56);

  return v1;
}

double sub_24ECA4E8C@<D0>(uint64_t a1@<X8>)
{
  sub_24ECA4180(v1 + 72, v5);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

uint64_t sub_24ECA4ED4()
{
  v1 = *(v0 + 112);

  return v1;
}

unint64_t sub_24ECA4F04()
{
  result = qword_27F22D0A0;
  if (!qword_27F22D0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22D0A0);
  }

  return result;
}

unint64_t sub_24ECA4F58()
{
  result = qword_27F22D0B8;
  if (!qword_27F22D0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22D0B8);
  }

  return result;
}

unint64_t sub_24ECA4FDC()
{
  result = qword_27F22D0D0;
  if (!qword_27F22D0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22D0D0);
  }

  return result;
}

uint64_t sub_24ECA5030(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22D0A8, &qword_24F993850);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24ECA50A8()
{
  result = qword_27F22D0E0;
  if (!qword_27F22D0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22D0E0);
  }

  return result;
}

unint64_t sub_24ECA5110()
{
  result = qword_27F22D0E8;
  if (!qword_27F22D0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22D0E8);
  }

  return result;
}

unint64_t sub_24ECA5168()
{
  result = qword_27F22D0F0;
  if (!qword_27F22D0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22D0F0);
  }

  return result;
}

unint64_t sub_24ECA51C0()
{
  result = qword_27F22D0F8;
  if (!qword_27F22D0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22D0F8);
  }

  return result;
}

uint64_t sub_24ECA5214(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444965676170 && a2 == 0xE600000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x737265746C6966 && a2 == 0xE700000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001DLL && 0x800000024FA58F60 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000017 && 0x800000024FA58F40 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001DLL && 0x800000024FA58F80 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000018 && 0x800000024FA58FA0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000023 && 0x800000024FA58FC0 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t InviteFriendsSearchShelfIntentImplementation.perform(_:objectGraph:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22D110, &qword_24F948460);
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213760, qword_24F93AF80);
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24ECA55A0, 0, 0);
}

uint64_t sub_24ECA55A0()
{
  v1 = v0[11];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[6];
  v13 = v0[7];
  v5 = v0[4];
  v14 = v0[5];
  v15 = v0[10];
  v6 = v0[3];
  v16 = v0[2];
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0xE000000000000000;
  v8 = swift_allocObject();
  *(v8 + 16) = MEMORY[0x277D84F90];
  v9 = swift_task_alloc();
  v9[2] = v6;
  v9[3] = v7;
  v9[4] = v8;
  v9[5] = v5;
  type metadata accessor for GSKShelf(0);
  (*(v4 + 104))(v13, *MEMORY[0x277D85778], v14);
  sub_24F92B928();

  (*(v2 + 16))(v15, v1, v3);
  sub_24E613678();
  sub_24F9280F8();
  (*(v2 + 8))(v1, v3);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213768, &unk_24F93F770);
  (*(*(v10 - 8) + 56))(v16, 0, 1, v10);

  v11 = v0[1];

  return v11();
}

uint64_t sub_24ECA57CC()
{

  return swift_deallocObject();
}

uint64_t sub_24ECA5804()
{

  return swift_deallocObject();
}

double sub_24ECA583C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v49 = a4;
  v50 = a5;
  v52 = a3;
  v45 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778, &qword_24F93F900);
  v38 = v7;
  v8 = *(v7 - 8);
  v42 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v37 - v9;
  v39 = &v37 - v9;
  v11 = type metadata accessor for InviteFriendsSearchShelfIntent(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v37 - v16;
  v51 = &v37 - v16;
  v47 = sub_24F92B858();
  v18 = *(v47 - 8);
  v46 = *(v18 + 56);
  v48 = v18 + 56;
  v46(v17, 1, 1, v47);
  sub_24ECAA340(a2, v14, type metadata accessor for InviteFriendsSearchShelfIntent);
  v19 = v8;
  v20 = *(v8 + 16);
  v41 = v8 + 16;
  v44 = v20;
  v20(v10, a1, v7);
  v21 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v22 = (v13 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v22 + 15) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v23 + 15) & 0xFFFFFFFFFFFFFFF8;
  v25 = *(v8 + 80);
  v26 = (v25 + v24 + 8) & ~v25;
  v43 = v25 | 7;
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  sub_24ECAA250(v14, v27 + v21, type metadata accessor for InviteFriendsSearchShelfIntent);
  *(v27 + v22) = v52;
  v29 = v49;
  v28 = v50;
  *(v27 + v23) = v49;
  *(v27 + v24) = v28;
  v40 = *(v19 + 32);
  v31 = v38;
  v30 = v39;
  v40(v27 + v26, v39, v38);

  v32 = v28;

  v33 = v51;
  sub_24F1D3DA4(0, 0, v51, &unk_24F993A20, v27);

  v46(v33, 1, 1, v47);
  v44(v30, v45, v31);
  v34 = swift_allocObject();
  v34[2] = 0;
  v34[3] = 0;
  v35 = v52;
  v34[4] = v29;
  v34[5] = v35;
  v34[6] = v32;
  v40(v34 + ((v25 + 56) & ~v25), v30, v31);

  sub_24EA998B8(0, 0, v51, &unk_24F993A30, v34);

  return result;
}

uint64_t sub_24ECA5C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[14] = a7;
  v8[15] = a8;
  v8[12] = a5;
  v8[13] = a6;
  v8[11] = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778, &qword_24F93F900);
  v8[16] = v9;
  v10 = *(v9 - 8);
  v8[17] = v10;
  v8[18] = *(v10 + 64);
  v8[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  v8[20] = swift_task_alloc();
  v8[21] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22D180, &qword_24F993AB8);
  v8[22] = v11;
  v8[23] = *(v11 - 8);
  v8[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24ECA5E24, 0, 0);
}

uint64_t sub_24ECA5E24()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D9C8, &qword_24F959E38);
  sub_24F928118();
  swift_beginAccess();
  v1 = swift_task_alloc();
  *(v0 + 200) = v1;
  *v1 = v0;
  v1[1] = sub_24ECA5F0C;
  v2 = *(v0 + 176);

  return MEMORY[0x28217E8F8](v0 + 72, 0, 0, v2);
}

uint64_t sub_24ECA5F0C()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_24ECA6400;
  }

  else
  {
    v2 = sub_24ECA6020;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24ECA6020()
{
  v3 = v0[9];
  v2 = v0[10];
  v1 = v0 + 9;
  if (v2)
  {
    v4 = HIBYTE(v2) & 0xF;
    if ((v2 & 0x2000000000000000) == 0)
    {
      v4 = v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v4)
    {
      v5 = v0[21];
      v28 = v0[20];
      v24 = v0[19];
      v25 = v5;
      v6 = v0[16];
      v7 = v0[17];
      v22 = v6;
      v23 = v0[15];
      v27 = v0[14];
      v8 = v0[12];
      v26 = v0[13];
      *(v8 + 16) = v3;
      *(v8 + 24) = v2;

      v9 = sub_24F92B858();
      v10 = *(v9 - 8);
      (*(v10 + 56))(v5, 1, 1, v9);
      (*(v7 + 16))(v24, v23, v6);
      v11 = (*(v7 + 80) + 72) & ~*(v7 + 80);
      v12 = swift_allocObject();
      *(v12 + 2) = 0;
      *(v12 + 3) = 0;
      *(v12 + 4) = v3;
      *(v12 + 5) = v2;
      *(v12 + 6) = v26;
      *(v12 + 7) = v27;
      *(v12 + 8) = v8;
      (*(v7 + 32))(&v12[v11], v24, v22);
      sub_24ECAA62C(v25, v28);
      LODWORD(v7) = (*(v10 + 48))(v28, 1, v9);

      v13 = v0[20];
      if (v7 == 1)
      {
        sub_24E601704(v0[20], &unk_27F21B570, &qword_24F93B020);
      }

      else
      {
        sub_24F92B848();
        (*(v10 + 8))(v13, v9);
      }

      v16 = *(v12 + 2);
      swift_unknownObjectRetain();

      v1 = v0 + 9;
      if (v16)
      {
        swift_getObjectType();
        v17 = sub_24F92B778();
        v19 = v18;
        swift_unknownObjectRelease();
      }

      else
      {
        v17 = 0;
        v19 = 0;
      }

      sub_24E601704(v0[21], &unk_27F21B570, &qword_24F93B020);
      if (v19 | v17)
      {
        v0[2] = 0;
        v0[3] = 0;
        v0[4] = v17;
        v0[5] = v19;
      }

      swift_task_create();
    }

    else
    {
    }

    v20 = swift_task_alloc();
    v0[25] = v20;
    *v20 = v0;
    v20[1] = sub_24ECA5F0C;
    v21 = v0[22];

    return MEMORY[0x28217E8F8](v1, 0, 0, v21);
  }

  else
  {
    (*(v0[23] + 8))(v0[24], v0[22]);

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_24ECA6400()
{
  (*(v0[23] + 8))(v0[24], v0[22]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_24ECA64A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[17] = a8;
  v8[18] = v12;
  v8[15] = a6;
  v8[16] = a7;
  v8[13] = a4;
  v8[14] = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22D140, &unk_24F9599C0);
  v8[19] = v9;
  v8[20] = *(v9 - 8);
  v8[21] = swift_task_alloc();
  type metadata accessor for GSKShelf(0);
  v8[22] = swift_task_alloc();
  v8[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24ECA65B8, 0, 0);
}