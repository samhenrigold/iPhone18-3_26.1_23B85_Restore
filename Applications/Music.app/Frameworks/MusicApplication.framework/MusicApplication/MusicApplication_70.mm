double sub_624AE8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);

  return result;
}

void sub_624B3C(void **a1, char a2)
{
  v3 = v2;
  v6 = *a1;
  if (qword_E0CDD8 != -1)
  {
    swift_once();
  }

  v7 = sub_AB4BC0();
  __swift_project_value_buffer(v7, qword_E71EB0);

  v8 = sub_AB4BA0();
  v9 = sub_AB9F50();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v58[0] = swift_slowAlloc();
    *v10 = 136446466;
    aBlock = a1;
    type metadata accessor for Gliss.Transition(0, v6[10], v6[11], v11);
    swift_getWitnessTable();
    v12 = sub_ABB330();
    v14 = sub_500C84(v12, v13, v58);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    if (a2)
    {
      v15 = 0x6574616D696E6128;
    }

    else
    {
      v15 = 0;
    }

    if (a2)
    {
      v16 = 0xEA00000000002964;
    }

    else
    {
      v16 = 0xE000000000000000;
    }

    v17 = sub_500C84(v15, v16, v58);

    *(v10 + 14) = v17;
    _os_log_impl(&dword_0, v8, v9, "Attempting to end transition=%{public}s %s", v10, 0x16u);
    swift_arrayDestroy();
  }

  v18 = *(*a1 + 16);
  swift_beginAccess();
  if (*(a1 + v18) == 2)
  {
    sub_62B720(3);
    sub_6222D0();
    v19 = swift_allocObject();
    *(v19 + 16) = a1;
    *(v19 + 24) = a2 & 1;
    *(v19 + 32) = v3;
    v20 = swift_allocObject();
    *(v20 + 16) = a1;
    *(v20 + 24) = v3;
    if (a2)
    {
      v21 = direct field offset for Gliss.Transition.id;
      v22 = *(&stru_68.size + (swift_isaMask & *v3));
      swift_beginAccess();
      v23 = *(v3 + v22);
      v24 = *(v23 + 16);
      swift_retain_n();
      v25 = v3;
      if (v24)
      {

        v26 = sub_522264(a1 + v21);
        if (v27)
        {
          v28 = *(*(v23 + 56) + 8 * v26);

          [v28 stopAnimation:0];
        }

        else
        {
        }
      }

      v33 = a1 + *(*a1 + 17);
      v50 = v21;
      v34 = *v33;
      v35 = *(v33 + 1);
      v36 = v33[16];
      Gliss.Coordinator.gestureConfiguration.getter(v58);
      v49 = v25;
      v38 = v58[0];
      v37 = v58[1];
      v39 = v58[2];
      sub_629C14(v34, v35, v36);
      sub_17654(v37, v39);
      sub_17654(v58[3], v58[4]);
      sub_17654(v58[5], v58[6]);
      v40 = sub_62AA80(a1, v38, v34, v35, v36);

      sub_629BEC(v34, v35, v36);
      v41 = swift_allocObject();
      *(v41 + 16) = sub_62A7A4;
      *(v41 + 24) = v19;
      v56 = sub_70638;
      v57 = v41;
      aBlock = _NSConcreteStackBlock;
      v53 = 1107296256;
      v54 = sub_1B5EB4;
      v55 = &block_descriptor_42_1;
      v42 = _Block_copy(&aBlock);

      [v40 addAnimations:v42];
      _Block_release(v42);
      v43 = swift_allocObject();
      v43[2] = sub_62A7E0;
      v43[3] = v20;
      v43[4] = v49;
      v43[5] = a1;
      v56 = sub_62A830;
      v57 = v43;
      aBlock = _NSConcreteStackBlock;
      v53 = 1107296256;
      v54 = sub_624AE8;
      v55 = &block_descriptor_48_0;
      v44 = _Block_copy(&aBlock);

      v45 = v49;

      [v40 addCompletion:v44];
      _Block_release(v44);
      [v40 startAnimation];
      v46 = *(&stru_68.size + (swift_isaMask & *v45));
      swift_beginAccess();
      v47 = v40;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v51 = *(v45 + v46);
      *(v45 + v46) = 0x8000000000000000;
      sub_525C78(v47, a1 + v50, isUniquelyReferenced_nonNull_native);
      *(v45 + v46) = v51;
      swift_endAccess();
    }

    else
    {
      swift_retain_n();
      v32 = v3;
      sub_625238(a1, 0, v32, sub_62A8B8, 1.0);
      sub_625414(a1, v32);
    }
  }

  else
  {
    v29 = sub_AB4BA0();
    v30 = sub_AB9F50();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_0, v29, v30, "   🫷Ignored (Transition Not Active)", v31, 2u);
    }
  }
}

void sub_625238(uint64_t *a1, char a2, void *a3, uint64_t a4, double a5)
{
  v7 = *a1;
  v8 = (a1 + *(*a1 + 120));
  swift_beginAccess();
  v8[1] = a5;
  if (a2)
  {
    swift_beginAccess();
    __chkstk_darwin();
    type metadata accessor for Gliss.Transition(255, *(v7 + 80), *(v7 + 88), v9);
    swift_getFunctionTypeMetadata1();
    sub_AB9870();

    swift_getWitnessTable();
    sub_AB9680();
  }

  sub_6222DC();
}

double sub_625414(char *a1, void *a2)
{
  v59 = *a1;
  v3 = &swift_isaMask;
  v4 = swift_isaMask & *a2;
  v61 = a2;
  v58 = v4;
  v5 = sub_AB3470();
  v6 = *(v5 - 8);
  v56 = v5;
  v57 = v6;
  __chkstk_darwin();
  v53 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11450, &qword_B1E2E8);
  __chkstk_darwin();
  v60 = &v53 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11458, &unk_B1E2F0);
  __chkstk_darwin();
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v53 - v12;
  __chkstk_darwin();
  v15 = (&v53 - v14);
  sub_62B720(5);
  if (qword_E0CDD8 != -1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v16 = sub_AB4BC0();
    __swift_project_value_buffer(v16, qword_E71EB0);

    v17 = sub_AB4BA0();
    v18 = sub_AB9F50();

    v19 = os_log_type_enabled(v17, v18);
    v54 = v11;
    v55 = v8;
    if (v19)
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v63[0] = v21;
      *v20 = 136446210;
      v62[0] = a1;
      type metadata accessor for Gliss.Transition(0, *(v59 + 80), *(v59 + 88), v22);
      swift_getWitnessTable();
      v23 = sub_ABB330();
      v25 = sub_500C84(v23, v24, v63);

      *(v20 + 4) = v25;
      _os_log_impl(&dword_0, v17, v18, "✅ End of transition=%{public}s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);

      v3 = &swift_isaMask;
    }

    v26 = *(v61 + *&stru_68.segname[(*v3 & *v61) + 16]);
    v28 = v56;
    v27 = v57;
    if (v26)
    {
      v29 = *(v57 + 2);
      v29(v15, v26 + direct field offset for Gliss.Transition.id, v56);
      v30 = *(v27 + 56);
      v30(v15, 0, 1, v28);
    }

    else
    {
      v30 = *(v57 + 7);
      v30(v15, 1, 1, v56);
      v29 = *(v27 + 16);
    }

    v29(v13, &a1[direct field offset for Gliss.Transition.id], v28);
    v30(v13, 0, 1, v28);
    v31 = v55[12];
    v32 = v60;
    sub_62A594(v15, v60);
    sub_62A594(v13, v32 + v31);
    v33 = *(v27 + 48);
    if (v33(v32, 1, v28) == 1)
    {
      sub_12E1C(v13, &qword_E11458, &unk_B1E2F0);
      v34 = v60;
      sub_12E1C(v15, &qword_E11458, &unk_B1E2F0);
      v8 = &swift_isaMask;
      if (v33(v34 + v31, 1, v28) != 1)
      {
        goto LABEL_12;
      }

      sub_12E1C(v34, &qword_E11458, &unk_B1E2F0);
      v35 = v58;
LABEL_14:
      sub_629E20(0);
      goto LABEL_15;
    }

    v57 = v13;
    v36 = v54;
    sub_62A594(v32, v54);
    if (v33(v32 + v31, 1, v28) == 1)
    {
      v37 = v27;
      sub_12E1C(v57, &qword_E11458, &unk_B1E2F0);
      v34 = v60;
      sub_12E1C(v15, &qword_E11458, &unk_B1E2F0);
      (*(v37 + 8))(v36, v28);
      v8 = &swift_isaMask;
LABEL_12:
      sub_12E1C(v34, &qword_E11450, &qword_B1E2E8);
      v35 = v58;
      goto LABEL_15;
    }

    v38 = v32 + v31;
    v39 = v32;
    v40 = v53;
    (*(v27 + 32))(v53, v38, v28);
    sub_62A604();
    v41 = v27;
    v42 = sub_AB91C0();
    v43 = *(v41 + 8);
    v43(v40, v28);
    sub_12E1C(v57, &qword_E11458, &unk_B1E2F0);
    sub_12E1C(v15, &qword_E11458, &unk_B1E2F0);
    v43(v36, v28);
    sub_12E1C(v39, &qword_E11458, &unk_B1E2F0);
    v8 = &swift_isaMask;
    v35 = v58;
    if (v42)
    {
      goto LABEL_14;
    }

LABEL_15:
    v44 = *(*a1 + 152);
    swift_beginAccess();
    v63[0] = *&a1[v44];
    __chkstk_darwin();
    *(&v53 - 2) = *(v35 + 80);
    *(&v53 - 2) = a1;
    type metadata accessor for Gliss.Transition(255, *(v59 + 80), *(v59 + 88), v45);
    swift_getFunctionTypeMetadata2();
    v3 = sub_AB9870();

    swift_getWitnessTable();
    sub_AB9680();

    v46 = v61;
    v47 = *&stru_68.segname[(swift_isaMask & *v61) - 8];
    swift_beginAccess();
    v48 = *(v46 + v47);
    v11 = *(v48 + 16);

    if (!v11)
    {
      break;
    }

    v13 = 0;
    v15 = (v48 + 40);
    while (v13 < *(v48 + 16))
    {
      ++v13;
      v49 = *v15;
      v3 = *(v15 - 1);
      ObjectType = swift_getObjectType();
      sub_61F740(a1, ObjectType, v49, v51);

      v15 += 2;
      if (v11 == v13)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_21:
    swift_once();
  }

LABEL_19:

  return result;
}

double sub_625C6C(uint64_t a1, void (*a2)(__n128), uint64_t a3, void *a4, uint64_t a5)
{
  v7 = sub_AB3470();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin();
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  a2(v9);
  (*(v8 + 16))(v11, a5 + direct field offset for Gliss.Transition.id, v7);
  swift_beginAccess();
  sub_6A956C(0, v11);
  swift_endAccess();
  return result;
}

void sub_625DB0(uint64_t a1)
{
  v2 = *(&stru_68.reserved2 + (swift_isaMask & *v1));
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;
}

void sub_625DE0()
{
  v1 = swift_isaMask & *v0;
  v2 = *(&stru_68.reserved2 + v1);
  v3 = *(v0 + v2);
  if (v3)
  {
    v4 = *(v0 + v2);
  }

  else
  {
    v18[0] = v0;
    v5 = objc_allocWithZone(UIPanGestureRecognizer);
    type metadata accessor for Gliss.Coordinator(0, *(v1 + 80), *(v1 + 88), v6);
    v4 = [v5 initWithTarget:sub_ABB3A0() action:"handlePanGestureRecognizer:"];
    swift_unknownObjectRelease();
    v3 = 0;
  }

  v7 = v4;
  v8 = v3;
  [v7 setDelegate:v0];
  v9 = *(&stru_68.reserved2 + (swift_isaMask & *v0));
  v10 = *(v0 + v9);
  *(v0 + v9) = v7;
  v11 = v7;

  [v11 setAllowedScrollTypesMask:3];
  Gliss.Coordinator.gestureConfiguration.getter(v18);
  v12 = v18[0];
  sub_17654(v18[1], v18[2]);
  sub_17654(v18[3], v18[4]);
  sub_17654(v18[5], v18[6]);
  v13 = [v11 view];
  if (v13)
  {
    v14 = v13;
    sub_13C80(0, &qword_E11460, UIView_ptr);
    if ((sub_ABA790() & 1) == 0)
    {
      [v14 removeGestureRecognizer:v11];
    }
  }

  v15 = [v11 view];

  if (!v15 || (sub_13C80(0, &qword_E11460, UIView_ptr), v16 = v12, v17 = sub_ABA790(), v15, v16, (v17 & 1) == 0))
  {
    [v12 addGestureRecognizer:v11];
  }
}

void sub_626038(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = swift_isaMask;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340, &qword_B18550);
  __chkstk_darwin();
  v286 = v279 - v6;
  v7 = *(&stru_20.filesize + (v5 & v4));
  v305 = *(&stru_20.maxprot + (v5 & v4));
  v302 = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v303 = *(sub_ABA9C0() - 8);
  __chkstk_darwin();
  v287 = v279 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v290 = v279 - v10;
  __chkstk_darwin();
  v289 = v279 - v11;
  __chkstk_darwin();
  v291 = v279 - v12;
  __chkstk_darwin();
  v294 = (v279 - v13);
  __chkstk_darwin();
  v293 = v279 - v14;
  v306 = AssociatedTypeWitness;
  isa = AssociatedTypeWitness[-1].isa;
  __chkstk_darwin();
  v295 = v279 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v285 = v279 - v17;
  __chkstk_darwin();
  v19 = v279 - v18;
  __chkstk_darwin();
  v304 = v279 - v20;
  v284 = v21;
  __chkstk_darwin();
  v300 = v22;
  v301 = v279 - v23;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v25 = *(TupleTypeMetadata2 - 8);
  __chkstk_darwin();
  v27 = v279 - v26;
  v28 = Gliss.Coordinator.dataSource.getter();
  if (!v28)
  {
    if (qword_E0CDD8 != -1)
    {
      swift_once();
    }

    v45 = sub_AB4BC0();
    __swift_project_value_buffer(v45, qword_E71EB0);
    v306 = sub_AB4BA0();
    v46 = sub_AB9F50();
    if (os_log_type_enabled(v306, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_0, v306, v46, "No Data Source Set", v47, 2u);
    }

    v48 = v306;

    return;
  }

  v29 = v28;
  Gliss.Coordinator.gestureConfiguration.getter(v310);
  v30 = v310[0];
  sub_17654(v310[1], v310[2]);
  sub_17654(v310[3], v310[4]);
  sub_17654(v310[5], v310[6]);
  v288 = a1;
  [a1 translationInView:v30];
  v32 = v31;
  v34 = v33;

  if (v32 == 0.0)
  {
    if (qword_E0CDD8 != -1)
    {
      swift_once();
    }

    v49 = sub_AB4BC0();
    __swift_project_value_buffer(v49, qword_E71EB0);
    v50 = sub_AB4BA0();
    v51 = sub_AB9F50();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = COERCE_DOUBLE(swift_slowAlloc());
      v307 = v53;
      *v52 = 136446210;
      v311 = v32;
      v312 = v34;
      _s3__C7CGPointVMa_2(0);
      v54 = sub_AB9350();
      v56 = sub_500C84(v54, v55, &v307);

      *(v52 + 4) = v56;
      _os_log_impl(&dword_0, v50, v51, "Unable to compute direction from gesture's translation %{public}s", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(*&v53);

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

    return;
  }

  v298 = isa;
  v35 = *(v2 + *&stru_68.segname[(swift_isaMask & *v2) + 16]);
  v292 = TupleTypeMetadata2;
  v296 = v2;
  v297 = v29;
  v299 = v27;
  if (v35)
  {
    v36 = *(*v35 + 120);
    swift_beginAccess();
    v37 = *(v35 + v36);
    v38 = v301;
    if (v37 == 2 || (((v32 >= 0.0) ^ v37) & 1) != 0)
    {

      v2 = v296;
      sub_629E20(0);
      Gliss.Coordinator.item.getter(v38);
      v44 = v302;
      (v305[3].isa)(v299, &v299[*(TupleTypeMetadata2 + 48)], v38, v302);
    }

    else
    {
      v39 = *(*v35 + 104);
      swift_beginAccess();
      (v298[2])(v38, v35 + v39, v306);
      v40 = v25;
      v41 = v299;
      v42 = v305[3].isa;
      v43 = *(v292 + 48);

      v44 = v302;
      (v42)(v41, &v41[v43], v38);
      v25 = v40;
      TupleTypeMetadata2 = v292;

      v2 = v296;
    }
  }

  else
  {
    v38 = v301;
    Gliss.Coordinator.item.getter(v301);
    v57 = &v27[*(TupleTypeMetadata2 + 48)];
    v58 = v27;
    v44 = v302;
    (v305[3].isa)(v58, v57, v38, v302);
  }

  v59 = v298;
  v60 = v298[1];
  v281 = (v298 + 1);
  v282 = v25;
  v60(v38, v306);
  Gliss.Coordinator.gestureConfiguration.getter(&v311);
  v61 = v311;
  sub_17654(v312, v313);
  sub_17654(v314, v315);
  sub_17654(v316, v317);
  v62 = [*&v61 effectiveUserInterfaceLayoutDirection];
  v283 = v60;
  v280 = v61;
  if (v32 < 0.0)
  {
    v63 = v304;
    if (!v62)
    {
      goto LABEL_30;
    }

    if (v62 != &dword_0 + 1)
    {
LABEL_33:
      Gliss.Coordinator.item.getter(v19);
      goto LABEL_39;
    }

LABEL_26:
    v64 = v294;
    (*(v303 + 2))(v294, v299, v300);
    v65 = v59[6];
    if (v65(v64, 1, v306) != 1)
    {
      (v59[4])(v19, v64, v306);
      v2 = v296;
      v44 = v302;
      goto LABEL_39;
    }

    v66 = v296;
    Gliss.Coordinator.item.getter(v19);
    v67 = v65(v64, 1, v306);
    v2 = v66;
    v68 = v67 == 1;
    v69 = v64;
    v44 = v302;
    if (v68)
    {
      goto LABEL_39;
    }

    goto LABEL_32;
  }

  v63 = v304;
  if (!v62)
  {
    goto LABEL_26;
  }

  if (v62 != &dword_0 + 1)
  {
    goto LABEL_33;
  }

LABEL_30:
  v70 = &v299[*(TupleTypeMetadata2 + 48)];
  v71 = v293;
  (*(v303 + 2))(v293, v70, v300);
  v72 = v59[6];
  if (v72(v71, 1, v306) != 1)
  {
    (v59[4])(v19, v71, v306);
    TupleTypeMetadata2 = v292;
    v2 = v296;
    goto LABEL_39;
  }

  v73 = v296;
  Gliss.Coordinator.item.getter(v19);
  v74 = v72(v71, 1, v306);
  v2 = v73;
  v68 = v74 == 1;
  v69 = v71;
  TupleTypeMetadata2 = v292;
  if (!v68)
  {
LABEL_32:
    (*(v303 + 1))(v69, v300);
  }

LABEL_39:
  v75 = v59[4];
  v75(v63, v19, v306);
  if ((v305[4].isa)(v63, v44))
  {
    v279[1] = v59 + 4;
    v76 = TupleTypeMetadata2;
    v77 = *&v280;
    [v288 velocityInView:v77];
    v79 = v78.n128_f64[0];
    v81 = v80;
    v82 = sub_622B70(v63, v32 >= 0.0, v78);
    v295 = v77;
    [v77 bounds];
    Width = CGRectGetWidth(v319);
    v84 = v82 + *(*v82 + 168);
    swift_beginAccess();
    v85 = v84[32];
    v86 = v85 != 2;
    v87 = v86 & v85;
    if ((v86 & v84[33]) != 0)
    {
      v88 = 256;
    }

    else
    {
      v88 = 0;
    }

    *v84 = v32;
    *(v84 + 1) = v34;
    *(v84 + 2) = v79;
    *(v84 + 3) = v81;
    *(v84 + 16) = v88 | v87;
    v89 = *(*v82 + 128);
    swift_beginAccess();
    v90 = *(v82 + v89);
    v294 = v82;
    if (v90 <= 1)
    {
      v91 = v75;
      if (qword_E0CDD8 != -1)
      {
        swift_once();
      }

      v92 = sub_AB4BC0();
      v293 = __swift_project_value_buffer(v92, qword_E71EB0);
      v93 = sub_AB4BA0();
      v94 = sub_AB9F50();
      if (os_log_type_enabled(v93, v94))
      {
        v95 = swift_slowAlloc();
        *v95 = 0;
        _os_log_impl(&dword_0, v93, v94, "🤏 Swipe Gesture Began", v95, 2u);
      }

      v96 = sub_AB4BA0();
      v97 = sub_AB9F50();
      if (os_log_type_enabled(v96, v97))
      {
        v98 = swift_slowAlloc();
        v99 = COERCE_DOUBLE(swift_slowAlloc());
        v307 = v99;
        *v98 = 136446210;
        LOBYTE(v309[0]) = v32 >= 0.0;
        v100 = sub_AB9350();
        v102 = sub_500C84(v100, v101, &v307);

        *(v98 + 4) = v102;
        v82 = v294;
        _os_log_impl(&dword_0, v96, v97, "   Direction=%{public}s", v98, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(*&v99);
      }

      v103 = sub_AB4BA0();
      v104 = sub_AB9F50();

      if (os_log_type_enabled(v103, v104))
      {
        v105 = swift_slowAlloc();
        v106 = COERCE_DOUBLE(swift_slowAlloc());
        v307 = v106;
        *v105 = 136446210;
        v309[0] = v82;
        v107 = v306;
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        type metadata accessor for Gliss.Transition(0, v107, AssociatedConformanceWitness, v109);
        swift_getWitnessTable();
        v110 = sub_ABB330();
        v112 = sub_500C84(v110, v111, &v307);

        *(v105 + 4) = v112;
        v82 = v294;
        _os_log_impl(&dword_0, v103, v104, "   Transition=%{public}s", v105, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(*&v106);
      }

      v76 = v292;
      v75 = v91;
      v2 = v296;
      sub_62388C(v82);
      v63 = v304;
    }

    v113 = [v288 state];
    if (v113 <= 2)
    {
      if (v113 < 2)
      {
        v114 = sub_6228E0();
        [v114 prepare];

        goto LABEL_69;
      }

      v139 = v283;
      if (v113 == (&dword_0 + 2))
      {
LABEL_69:
        if (qword_E0CDD8 != -1)
        {
          swift_once();
        }

        v148 = sub_AB4BC0();
        v149 = __swift_project_value_buffer(v148, qword_E71EB0);
        v150 = sub_AB4BA0();
        v151 = sub_AB9F20();
        if (os_log_type_enabled(v150, v151))
        {
          v152 = swift_slowAlloc();
          *v152 = 0;
          _os_log_impl(&dword_0, v150, v151, "🤏 Swipe Gesture Updated", v152, 2u);
        }

        v153 = sub_AB4BA0();
        v154 = sub_AB9F20();
        v155 = os_log_type_enabled(v153, v154);
        v305 = v149;
        if (v155)
        {
          v156 = swift_slowAlloc();
          v157 = swift_slowAlloc();
          v309[0] = v157;
          *v156 = 136446210;
          v307 = v32;
          v308 = v34;
          _s3__C7CGPointVMa_2(0);
          v158 = sub_AB9350();
          v160 = sub_500C84(v158, v159, v309);

          *(v156 + 4) = v160;
          _os_log_impl(&dword_0, v153, v154, "   Translation=%{public}s", v156, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v157);
        }

        v161 = sub_AB4BA0();
        v162 = sub_AB9F20();
        v163 = os_log_type_enabled(v161, v162);
        v164 = v295;
        v165 = v303;
        if (v163)
        {
          v166 = swift_slowAlloc();
          v167 = swift_slowAlloc();
          v309[0] = v167;
          *v166 = 136446210;
          v307 = v79;
          v308 = v81;
          _s3__C7CGPointVMa_2(0);
          v168 = sub_AB9350();
          v170 = sub_500C84(v168, v169, v309);

          *(v166 + 4) = v170;
          _os_log_impl(&dword_0, v161, v162, "   Velocity=%{public}s", v166, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v167);
        }

        v171 = v291;
        [v164 bounds];
        v172 = fabs(v32);
        v173 = v172 * (1.0 / CGRectGetWidth(v320));
        v174 = *(*v82 + 112);
        swift_beginAccess();
        v175 = *(v165 + 2);
        v302 = v174;
        v176 = v82 + v174;
        v177 = v300;
        v178 = v175;
        v175(v171, v176, v300);
        v179 = v298[6];
        v298 += 6;
        v180 = v179;
        if (v179(v171, 1, v306) == 1)
        {

          v181 = *(v165 + 1);
          v181(v171, v177);
          v182 = v177;
          v183 = v178;
          v184 = v180;
        }

        else
        {
          v181 = *(v165 + 1);
          v181(v171, v177);
          v185 = (v82 + *(*v82 + 120));
          swift_beginAccess();
          v186 = v185[1];
          v185[1] = v173;
          v187 = sub_AB4BA0();
          v188 = sub_AB9F20();
          if (os_log_type_enabled(v187, v188))
          {
            v189 = swift_slowAlloc();
            *v189 = 134349056;
            *(v189 + 4) = v173;
            _os_log_impl(&dword_0, v187, v188, "   Progression Value=%{public}f", v189, 0xCu);
          }

          v183 = v178;
          if (v186 >= 0.45)
          {
            v184 = v180;
            if (v186 <= 0.55)
            {
              v224 = v302;
              if (v173 < 0.45 || v173 > 0.55)
              {
                v272 = sub_6228E0();
                [v288 locationInView:v164];
                v274 = v273;
                v276 = v275;

                [v272 impactOccurredAtLocation:{v274, v276}];
                v278 = sub_62BD94(&v307);
                if (*(v277 + 32) != 2)
                {
                  *(v277 + 32) = v173 >= 0.55;
                }

                (v278)(&v307, 0);
                v182 = v300;
              }

              else
              {

                v182 = v300;
              }

LABEL_110:
              if (v173 <= 1.0)
              {
                v226 = 0;
              }

              else
              {
                v225 = v289;
                v183(v289, v294 + v224, v182);
                v226 = v184(v225, 1, v306) != 1;
                v181(v225, v182);
              }

              v228 = sub_62BD94(&v307);
              if (*(v227 + 32) != 2)
              {
                *(v227 + 33) = v226;
              }

              (v228)(&v307, 0);
              v229 = v294;
              v230 = v290;
              v183(v290, v294 + v224, v182);
              v231 = v229;
              LODWORD(v229) = v184(v230, 1, v306) == 1;
              v181(v230, v182);
              v232 = v282;
              v233 = v283;
              v234 = v292;
              v235 = v299;
              if (((v229 | v226) & 1) == 0)
              {
                goto LABEL_125;
              }

              v236 = v295;
              [v295 bounds];
              v237 = CGRectGetWidth(v321) * 0.2;
              v238 = 0.0;
              if (v226)
              {
                [v236 bounds];
                v238 = CGRectGetWidth(v322);
              }

              v239 = v237 * ((v172 - v238) / (v237 + v237 + v172 - v238));
              [v236 bounds];
              v240 = 1.0 / CGRectGetWidth(v323) * v239;
              if (v226)
              {
                v241 = v231 + *(*v231 + 120);
                swift_beginAccess();
                *(v241 + 8) = v240 + 1.0;

                v242 = sub_AB4BA0();
                v243 = sub_AB9F20();

                if (os_log_type_enabled(v242, v243))
                {
                  v244 = swift_slowAlloc();
                  *v244 = 134349056;
                  *(v244 + 4) = *(v241 + 8);
                  v245 = "   Over-swiping Progression Value=%{public}f";
LABEL_123:
                  _os_log_impl(&dword_0, v242, v243, v245, v244, 0xCu);

                  v234 = v292;
                }
              }

              else
              {
                v246 = v231 + *(*v231 + 120);
                swift_beginAccess();
                *(v246 + 8) = v240;

                v242 = sub_AB4BA0();
                v243 = sub_AB9F20();

                if (os_log_type_enabled(v242, v243))
                {
                  v244 = swift_slowAlloc();
                  *v244 = 134349056;
                  *(v244 + 4) = *(v246 + 8);
                  v245 = "   Eased Progression Value=%{public}f";
                  goto LABEL_123;
                }
              }

LABEL_125:
              sub_6222D0();

              swift_unknownObjectRelease();

              v233(v304, v306);
              (*(v232 + 8))(v235, v234);
              return;
            }

            v182 = v300;
          }

          else
          {

            v182 = v300;
            v184 = v180;
          }
        }

        v224 = v302;
        goto LABEL_110;
      }

      goto LABEL_92;
    }

    v138 = v298;
    if (v113 != (&dword_0 + 3))
    {
      if (v113 == &dword_4)
      {

        v139 = v283;
        if (qword_E0CDD8 != -1)
        {
          swift_once();
        }

        v199 = sub_AB4BC0();
        __swift_project_value_buffer(v199, qword_E71EB0);
        v141 = sub_AB4BA0();
        v142 = sub_AB9F50();
        if (!os_log_type_enabled(v141, v142))
        {
          goto LABEL_98;
        }

        v143 = swift_slowAlloc();
        *v143 = 0;
        v144 = "🤏❎ Swipe Gesture Cancelled";
      }

      else
      {
        v139 = v283;
        if (v113 != (&dword_4 + 1))
        {
LABEL_92:
          swift_unknownObjectRelease();

          v198 = v295;

LABEL_99:
          v139(v63, v306);
LABEL_100:
          (*(v282 + 8))(v299, v76);
          return;
        }

        if (qword_E0CDD8 != -1)
        {
          swift_once();
        }

        v140 = sub_AB4BC0();
        __swift_project_value_buffer(v140, qword_E71EB0);
        v141 = sub_AB4BA0();
        v142 = sub_AB9F50();
        if (!os_log_type_enabled(v141, v142))
        {
LABEL_98:

          sub_623B94(v82, 1);
          swift_unknownObjectRelease();

          goto LABEL_99;
        }

        v143 = swift_slowAlloc();
        *v143 = 0;
        v144 = "🤏❌ Swipe Gesture Failed";
      }

      _os_log_impl(&dword_0, v141, v142, v144, v143, 2u);
      v76 = v292;

      goto LABEL_98;
    }

    if (qword_E0CDD8 != -1)
    {
      swift_once();
    }

    v190 = sub_AB4BC0();
    __swift_project_value_buffer(v190, qword_E71EB0);
    v191 = sub_AB4BA0();
    v192 = sub_AB9F50();
    if (os_log_type_enabled(v191, v192))
    {
      v193 = swift_slowAlloc();
      *v193 = 0;
      _os_log_impl(&dword_0, v191, v192, "🤏✅ Swipe Gesture Ended", v193, 2u);
      v138 = v298;
      v2 = v296;
    }

    if (Width * 0.5 >= fabs(v79))
    {
      v194 = (v82 + *(*v82 + 120));
      swift_beginAccess();
      if (v194[1] < 0.5)
      {

        v195 = sub_AB4BA0();
        v196 = sub_AB9F50();
        if (os_log_type_enabled(v195, v196))
        {
          v197 = swift_slowAlloc();
          *v197 = 0;
          _os_log_impl(&dword_0, v195, v196, "   Hasn't reached translation thresholds. Cancelling ❎", v197, 2u);
        }

        sub_623B94(v82, 1);
        swift_unknownObjectRelease();

        v283(v63, v306);
        goto LABEL_139;
      }
    }

    if (v32 < 0.0)
    {
      v200 = v303;
      v201 = v287;
      if (v79 <= 0.0)
      {
LABEL_103:
        v202 = *(*v82 + 112);
        swift_beginAccess();
        v203 = v82 + v202;
        v204 = v300;
        (*(v200 + 2))(v201, v203, v300);
        if ((v138[6])(v201, 1, v306) == 1)
        {
          (*(v200 + 1))(v201, v204);
          v205 = sub_6229BC();
          [v205 prepare];

          v206 = *(v2 + *(&stru_68.reloff + (swift_isaMask & *v2)));
          v207 = v295;
          [v288 locationInView:v295];
          v209 = v208;
          v211 = v210;

          [v206 impactOccurredWithIntensity:0.5 atLocation:{v209, v211}];
          sub_623B94(v82, 1);
          v212 = sub_629DC0();
          if (*(v212 + 16))
          {
            v213 = direct field offset for Gliss.Transition.id;

            v214 = sub_522264(v82 + v213);
            v215 = v283;
            if (v216)
            {
              v217 = *(*(v212 + 56) + 8 * v214);

              sub_13C80(0, &qword_E103C0, OS_dispatch_queue_ptr);
              v218 = sub_ABA150();
              [v217 duration];
              v220 = v219 + -0.1;
              v221 = v215;
              v222 = swift_allocObject();
              *(v222 + 16) = v2;
              v223 = v2;
              OS_dispatch_queue.asyncAfter(_:block:)(sub_62A258, v222, v220);

              swift_unknownObjectRelease();

              v221(v63, v306);
LABEL_139:
              (*(v282 + 8))(v299, v292);
              return;
            }
          }

          else
          {

            v215 = v283;
          }

          swift_unknownObjectRelease();

          v215(v63, v306);
          goto LABEL_139;
        }

        v251 = v201;
        v252 = v295;

        v253 = v285;
        v254 = v251;
        v255 = v306;
        v75(v285, v254, v306);
        v256 = sub_AB9990();
        (*(*(v256 - 8) + 56))(v286, 1, 1, v256);
        (v138[2])(v301, v253, v255);
        sub_AB9940();
        v303 = v252;

        v257 = v297;
        swift_unknownObjectRetain();
        v298 = v2;
        v300 = v288;
        v296 = sub_AB9930();
        v258 = (*(v138 + 80) + 56) & ~*(v138 + 80);
        v259 = (v284 + v258 + 7) & 0xFFFFFFFFFFFFFFF8;
        v260 = (v259 + 15) & 0xFFFFFFFFFFFFFFF8;
        v261 = (v260 + 15) & 0xFFFFFFFFFFFFFFF8;
        v262 = v75;
        v263 = (v261 + 15) & 0xFFFFFFFFFFFFFFF8;
        v264 = swift_allocObject();
        v264[2] = v296;
        v264[3] = &protocol witness table for MainActor;
        v265 = v301;
        v266 = v305;
        v264[4] = v302;
        v264[5] = v266;
        v264[6] = v257;
        v267 = v264 + v258;
        v268 = v306;
        v262(v267, v265, v306);
        *(v264 + v259) = v298;
        *(v264 + v260) = v294;
        v269 = v303;
        *(v264 + v261) = v303;
        v270 = v264 + v263;
        *v270 = v79;
        *(v270 + 1) = v81;
        *(v264 + ((v263 + 23) & 0xFFFFFFFFFFFFFFF8)) = v300;
        sub_5E89D8(0, 0, v286, &unk_B1E2E0, v264);

        swift_unknownObjectRelease();

        v271 = v283;
        v283(v285, v268);
        v271(v304, v268);
        goto LABEL_139;
      }
    }

    else
    {
      v200 = v303;
      v201 = v287;
      if (v79 >= 0.0)
      {
        goto LABEL_103;
      }
    }

    v247 = sub_AB4BA0();
    v248 = sub_AB9F50();
    v249 = os_log_type_enabled(v247, v248);
    v76 = v292;
    if (v249)
    {
      v250 = swift_slowAlloc();
      *v250 = 0;
      _os_log_impl(&dword_0, v247, v248, "   Going opposite direction. Cancelling ❎", v250, 2u);
      v76 = v292;
    }

    sub_623B94(v82, 1);
    swift_unknownObjectRelease();

    v283(v63, v306);
    goto LABEL_100;
  }

  v115 = v299;
  if (qword_E0CDD8 != -1)
  {
    swift_once();
  }

  v116 = sub_AB4BC0();
  __swift_project_value_buffer(v116, qword_E71EB0);
  v117 = v59[2];
  v118 = v295;
  v119 = v63;
  v117(v295, v63, v306);
  v120 = sub_AB4BA0();
  v121 = sub_AB9F50();
  v122 = os_log_type_enabled(v120, v121);
  v123 = v282;
  if (v122)
  {
    v124 = swift_slowAlloc();
    v305 = v120;
    v125 = v124;
    v126 = COERCE_DOUBLE(swift_slowAlloc());
    v307 = v126;
    *v125 = 136446210;
    v127 = v306;
    v117(v301, v118, v306);
    v128 = sub_AB9350();
    v129 = v127;
    v130 = v123;
    v132 = v131;
    v133 = v118;
    v134 = v283;
    v283(v133, v129);
    v135 = sub_500C84(v128, v132, &v307);

    *(v125 + 4) = v135;
    v136 = v121;
    v137 = v305;
    _os_log_impl(&dword_0, v305, v136, "DataSource doesn't allow swipe for item=%{public}s", v125, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(*&v126);

    swift_unknownObjectRelease();
    v134(v304, v129);
    (*(v130 + 8))(v299, v292);
  }

  else
  {

    swift_unknownObjectRelease();
    v145 = v118;
    v146 = v306;
    v147 = v283;
    v283(v145, v306);
    v147(v119, v146);
    (*(v123 + 8))(v115, TupleTypeMetadata2);
  }
}

uint64_t sub_628338(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 112) = v21;
  *(v9 + 104) = a1;
  *(v9 + 88) = a8;
  *(v9 + 96) = a9;
  *(v9 + 72) = a6;
  *(v9 + 80) = a7;
  v11 = *a7;
  v12 = swift_isaMask;
  v13 = *(*a8 + 80);
  *(v9 + 120) = v13;
  *(v9 + 128) = *(v13 - 8);
  *(v9 + 136) = swift_task_alloc();
  *(v9 + 144) = sub_AB9940();
  *(v9 + 152) = sub_AB9930();
  v14 = *(&stru_20.maxprot + (v12 & v11));
  *(v9 + 160) = v14;
  v15 = *(v14 + 40);
  v16 = *(&stru_20.filesize + (v12 & v11));
  *(v9 + 168) = v16;
  v19 = (v15 + *v15);
  v17 = swift_task_alloc();
  *(v9 + 176) = v17;
  *v17 = v9;
  v17[1] = sub_628544;

  return v19(a6, v16, v14);
}

uint64_t sub_628544()
{
  *(*v1 + 184) = v0;

  v3 = sub_AB98B0();
  if (v0)
  {
    v4 = sub_6289D4;
  }

  else
  {
    v4 = sub_62869C;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_62869C()
{
  v31 = v0;
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 120);
  v5 = *(v0 + 80);
  v4 = *(v0 + 88);
  v6 = *(v0 + 72);
  v29 = *(v0 + 160);

  (*(v2 + 16))(v1, v6, v3);
  sub_620C18(v1);
  v7 = *&stru_68.segname[(swift_isaMask & *v5) - 8];
  swift_beginAccess();
  v8 = *(v5 + v7);
  v9 = swift_task_alloc();
  v9[1] = vextq_s8(v29, v29, 8uLL);
  v9[2].i64[0] = v6;
  v9[2].i64[1] = v4;

  sub_61FB48(sub_62A65C, v9, v8);

  sub_624B3C(v4, 1);
  v10 = v4 + *(*v4 + 21);
  swift_beginAccess();
  v11 = v10[32];
  if (v11 != 2 && (v11 & 1) == 0)
  {
    v12 = *(v0 + 112);
    v13 = *(v0 + 104);
    v14 = *(v0 + 96);
    [v14 bounds];
    v15 = fmax(fmin(fabs(v13) * (1.0 / (CGRectGetWidth(v33) * 4.0)), 1.0), 0.25);
    v16 = sub_6228E0();
    [v12 locationInView:v14];
    [v16 impactOccurredWithIntensity:v15 atLocation:{v17, v18}];

    if (qword_E0CDD8 != -1)
    {
      swift_once();
    }

    v19 = sub_AB4BC0();
    __swift_project_value_buffer(v19, qword_E71EB0);
    v20 = sub_AB4BA0();
    v21 = sub_AB9F50();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v30 = v23;
      *v22 = 136446210;
      v24 = sub_AB9AA0();
      v26 = sub_500C84(v24, v25, &v30);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_0, v20, v21, "   Feedback Intensity=%{public}s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
    }
  }

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_6289D4()
{
  v19 = v0;

  if (qword_E0CDD8 != -1)
  {
    swift_once();
  }

  v1 = sub_AB4BC0();
  __swift_project_value_buffer(v1, qword_E71EB0);
  swift_errorRetain();
  v2 = sub_AB4BA0();
  v3 = sub_AB9F30();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[23];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v18 = v6;
    *v5 = 136446210;
    v0[8] = v4;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80, &qword_B16F10);
    v7 = sub_AB9350();
    v9 = sub_500C84(v7, v8, &v18);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_0, v2, v3, "   ❌ Failed to commit with error=%{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
  }

  v10 = v0[14];
  v12 = v0[11];
  v11 = v0[12];
  v13 = v0[10];
  v14 = sub_622A98();
  [v14 prepare];

  v15 = *(v13 + *(&stru_68.flags + (swift_isaMask & *v13)));
  [v10 locationInView:v11];
  [v15 notificationOccurred:2 atLocation:?];

  sub_623B94(v12, 1);

  v16 = v0[1];

  return v16();
}

void sub_628C34(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_626038(v4);
}

Swift::Bool __swiftcall Gliss.Coordinator.gestureRecognizerShouldBegin(_:)(UIGestureRecognizer a1)
{
  v2 = *(v1 + *(&stru_68.reserved2 + (swift_isaMask & *v1)));
  if (!v2)
  {
    return 1;
  }

  v3 = v1;
  sub_13C80(0, &qword_E112E0, NSObject_ptr);
  v5 = v2;
  if ((sub_ABA790() & 1) == 0)
  {

    return 1;
  }

  v6 = [(objc_class *)a1.super.isa view];
  if (!v6)
  {

    return 0;
  }

  v7 = v6;
  [v5 velocityInView:v7];
  v9 = v8;
  v11 = v10;
  if (fabs(v10) < fabs(v8))
  {
    [(objc_class *)a1.super.isa locationInView:v7];
    v9 = v12;
    v11 = v13;

    Gliss.Coordinator.gestureConfiguration.getter(v59);
    v15 = v59[1];
    v14 = v59[2];

    sub_17654(v59[3], v59[4]);
    sub_17654(v59[5], v59[6]);
    if (v15)
    {
      v16 = v15(v7);
      v17 = v16 + 56;
      v18 = -*(v16 + 16);
      v19 = -1;
      while (1)
      {
        if (v18 + v19 == -1)
        {
          sub_17654(v15, v14);

          v22 = 0;
          goto LABEL_20;
        }

        if (++v19 >= *(v16 + 16))
        {
          break;
        }

        v20 = v17 + 32;
        v72.x = v9;
        v72.y = v11;
        v21 = CGRectContainsPoint(*(v17 - 24), v72);
        v17 = v20;
        if (v21)
        {
          sub_17654(v15, v14);

          v22 = 1;
          goto LABEL_20;
        }
      }

      __break(1u);
      goto LABEL_39;
    }

    [v7 bounds];
    v73.x = v9;
    v73.y = v11;
    v22 = CGRectContainsPoint(v74, v73);
LABEL_20:
    Gliss.Coordinator.gestureConfiguration.getter(v60);
    v33 = v61;
    v32 = v62;
    v34 = v60[0];
    sub_307CC(v61, v62);

    sub_17654(v60[1], v60[2]);
    sub_17654(v33, v32);
    sub_17654(v63, v64);
    if (v33)
    {
      v35 = v33(v7, v9, v11);
      sub_17654(v33, v32);
      if (v22)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v35 = 1;
      if (v22)
      {
LABEL_22:
        if (v35)
        {
LABEL_23:

LABEL_37:
          return v22 & v35;
        }

LABEL_32:
        if (qword_E0CDD8 != -1)
        {
          swift_once();
        }

        v50 = sub_AB4BC0();
        __swift_project_value_buffer(v50, qword_E71EB0);
        v51 = sub_AB4BA0();
        v52 = sub_AB9F50();
        if (os_log_type_enabled(v51, v52))
        {
          v53 = swift_slowAlloc();
          v54 = swift_slowAlloc();
          v58 = v54;
          *v53 = 136446210;
          _s3__C7CGPointVMa_2(0);
          v55 = sub_AB9350();
          v57 = sub_500C84(v55, v56, &v58);

          *(v53 + 4) = v57;
          _os_log_impl(&dword_0, v51, v52, "🤏🙂‍↔️ Swipe Gesture ignored: hit test not allowed at location %{public}s", v53, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v54);
        }

        goto LABEL_37;
      }
    }

    if (qword_E0CDD8 != -1)
    {
      swift_once();
    }

    v36 = sub_AB4BC0();
    __swift_project_value_buffer(v36, qword_E71EB0);
    v37 = v3;
    v38 = sub_AB4BA0();
    v39 = sub_AB9F50();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      *v40 = 136446466;
      v65 = v9;
      v66 = v11;
      _s3__C7CGPointVMa_2(0);
      v41 = sub_AB9350();
      v43 = sub_500C84(v41, v42, &v58);

      *(v40 + 4) = v43;
      *(v40 + 12) = 2082;
      Gliss.Coordinator.gestureConfiguration.getter(&v65);
      v45 = v66;
      v44 = v67;

      sub_17654(v68, v69);
      sub_17654(v70, v71);
      if (v45 != 0.0)
      {
        v46 = swift_allocObject();
        *(v46 + 16) = v45;
        *(v46 + 24) = v44;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E112E8, &qword_B1E190);
      v47 = sub_AB9350();
      v49 = sub_500C84(v47, v48, &v58);

      *(v40 + 14) = v49;
      _os_log_impl(&dword_0, v38, v39, "🤏🙂‍↔️ Swipe Gesture ignored: outside allowed areas %{public}s, %{public}s", v40, 0x16u);
      swift_arrayDestroy();
    }

    if (v35)
    {
      goto LABEL_23;
    }

    goto LABEL_32;
  }

  if (qword_E0CDD8 != -1)
  {
LABEL_39:
    swift_once();
  }

  v24 = sub_AB4BC0();
  __swift_project_value_buffer(v24, qword_E71EB0);
  v25 = sub_AB4BA0();
  v26 = sub_AB9F50();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v60[0] = v28;
    *v27 = 136446210;
    v65 = v9;
    v66 = v11;
    _s3__C7CGPointVMa_2(0);
    v29 = sub_AB9350();
    v31 = sub_500C84(v29, v30, v60);

    *(v27 + 4) = v31;
    _os_log_impl(&dword_0, v25, v26, "🤏🙂‍↔️ Swipe Gesture ignored: horizontal velocity too low %{public}s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
  }

  return 0;
}

uint64_t sub_62937C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  LOBYTE(a1) = Gliss.Coordinator.gestureRecognizerShouldBegin(_:)(v4);

  return a1 & 1;
}

uint64_t sub_6293D4(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  v9 = sub_629E88(v7);

  return v9 & 1;
}

id Gliss.Coordinator.__deallocating_deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Gliss.Coordinator(0, *(&stru_20.filesize + (swift_isaMask & *v4)), *(&stru_20.maxprot + (swift_isaMask & *v4)), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, "dealloc");
}

void sub_629520(char *a1)
{
  swift_unknownObjectWeakDestroy();
  v2 = &a1[*&stru_68.sectname[swift_isaMask & *a1]];
  v3 = *(v2 + 1);
  v4 = *(v2 + 2);
  v5 = *(v2 + 3);
  v6 = *(v2 + 4);
  v7 = *(v2 + 5);
  v8 = *(v2 + 6);

  sub_17654(v3, v4);
  sub_17654(v5, v6);
  sub_17654(v7, v8);

  v9 = *&stru_68.segname[swift_isaMask & *a1];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(&a1[v9], AssociatedTypeWitness);
  v11 = *&stru_68.segname[(swift_isaMask & *a1) + 8];
  v12 = sub_ABA9C0();
  (*(*(v12 - 8) + 8))(&a1[v11], v12);

  v13 = *&a1[*(&stru_68.reserved2 + (swift_isaMask & *a1))];
}

id sub_629800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *v4;
  v8 = swift_isaMask;
  swift_unknownObjectWeakInit();
  v9 = *&stru_68.segname[(swift_isaMask & *v4) - 8];
  *&v4[v9] = _swiftEmptyArrayStorage;
  v10 = *&stru_68.segname[(swift_isaMask & *v4) + 8];
  v30 = *(&stru_20.maxprot + (v8 & v7));
  v29 = *(&stru_20.filesize + (v8 & v7));
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  (*(v12 + 56))(&v4[v10], 1, 1, AssociatedTypeWitness);
  *&v4[*&stru_68.segname[(swift_isaMask & *v4) + 16]] = 0;
  v13 = *(&stru_68.size + (swift_isaMask & *v4));
  *&v4[v13] = sub_52A9C0(_swiftEmptyArrayStorage);
  *&v4[*(&stru_68.offset + (swift_isaMask & *v4))] = 0;
  *&v4[*(&stru_68.reloff + (swift_isaMask & *v4))] = 0;
  *&v4[*(&stru_68.flags + (swift_isaMask & *v4))] = 0;
  *&v4[*(&stru_68.reserved2 + (swift_isaMask & *v4))] = 0;
  (*(v12 + 16))(&v4[*&stru_68.segname[swift_isaMask & *v4]], a1, AssociatedTypeWitness);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v14 = *a3;
  v15 = *(a3 + 8);
  v16 = *(a3 + 16);
  v17 = *(a3 + 24);
  v18 = *(a3 + 32);
  v28 = *(a3 + 40);
  v19 = *(a3 + 48);
  v20 = &v4[*&stru_68.sectname[swift_isaMask & *v4]];
  v21 = *(a3 + 16);
  *v20 = *a3;
  *(v20 + 1) = v21;
  *(v20 + 2) = *(a3 + 32);
  *(v20 + 6) = v19;
  swift_beginAccess();
  *&v4[v9] = a4;
  v22 = v14;
  sub_307CC(v15, v16);
  sub_307CC(v17, v18);
  sub_307CC(v28, v19);

  v33 = v29;
  v34 = v30;
  v35 = a1;
  sub_61FB48(sub_62A938, v32, a4);

  v24 = type metadata accessor for Gliss.Coordinator(0, v29, v30, v23);
  v36.receiver = v4;
  v36.super_class = v24;
  v25 = objc_msgSendSuper2(&v36, "init");
  sub_625DE0();

  return v25;
}

uint64_t sub_629B98()
{

  return swift_deallocObject();
}

void sub_629BD8(id result, uint64_t a2, char a3)
{
  if (a3 <= 0xFDu)
  {
    sub_629BEC(result, a2, a3);
  }
}

void sub_629BEC(id a1, uint64_t a2, char a3)
{
  if ((a3 & 0xC0) == 0x80)
  {
  }
}

id sub_629C00(id result, uint64_t a2, char a3)
{
  if (a3 <= 0xFDu)
  {
    return sub_629C14(result, a2, a3);
  }

  return result;
}

id sub_629C14(id result, uint64_t a2, char a3)
{
  if ((a3 & 0xC0) == 0x80)
  {
    return result;
  }

  return result;
}

uint64_t sub_629C28(__n128 a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = (v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v1 + v4, AssociatedTypeWitness);

  v8 = *(v1 + v7 + 16);
  if (v8 <= 0xFD)
  {
    sub_629BEC(*(v1 + v7), *(v1 + v7 + 8), v8);
  }

  return swift_deallocObject();
}

double sub_629CF8(uint64_t *a1, uint64_t a2)
{
  v3 = *(*(*a1 + 80) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  return sub_621AE8(a1, a2, (v2 + v4), *(v2 + ((v5 + 7) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8), *(v2 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), *(v2 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 16));
}

uint64_t sub_629D8C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_629DC0()
{
  v1 = *(&stru_68.size + (swift_isaMask & *v0));
  swift_beginAccess();
  return *(v0 + v1);
}

double sub_629E20(uint64_t a1)
{
  v2 = *&stru_68.segname[(swift_isaMask & *v1) + 16];
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;

  sub_6223A4(v3);

  return result;
}

uint64_t sub_629E88(void *a1)
{
  Gliss.Coordinator.gestureConfiguration.getter(v19);

  sub_17654(v19[1], v19[2]);
  sub_17654(v19[3], v19[4]);
  v2 = v20;
  if (!v20)
  {
    return 1;
  }

  v3 = v21;
  v4 = v20(a1);
  sub_17654(v2, v3);
  if (v4)
  {
    return 1;
  }

  if (qword_E0CDD8 != -1)
  {
    swift_once();
  }

  v6 = sub_AB4BC0();
  __swift_project_value_buffer(v6, qword_E71EB0);
  v7 = a1;
  v8 = sub_AB4BA0();
  v9 = sub_AB9F50();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136446210;
    v12 = v7;
    v13 = [v12 description];
    v14 = sub_AB92A0();
    v16 = v15;

    v17 = sub_500C84(v14, v16, &v18);

    *(v10 + 4) = v17;
    _os_log_impl(&dword_0, v8, v9, "🤏🙂‍↔️ Swipe Gesture ignored: conflicts with other gesture: %{public}s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
  }

  return 0;
}

uint64_t sub_62A0B0(uint64_t a1, __n128 a2)
{
  result = swift_getAssociatedTypeWitness();
  if (v3 <= 0x3F)
  {
    result = sub_ABA9C0();
    if (v4 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_62A1CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_62A220()
{

  return swift_deallocObject();
}

void sub_62A258()
{
  v0 = sub_6229BC();
  [v0 impactOccurredWithIntensity:1.0 atLocation:{0.0, 0.0}];
}

uint64_t sub_62A2B4(__n128 a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  (*(v3 + 8))(v1 + v4, AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_62A3F0(uint64_t a1, __n128 a2)
{
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = v2[2];
  v10 = v2[3];
  v11 = *(v2 + v6);
  v12 = v2[6];
  v13 = *(v2 + v7);
  v14 = *(v2 + v8);
  v15 = *(v2 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_17BD0;

  return sub_628338(v15, a1, v9, v10, v12, v2 + v5, v11, v13, v14);
}

uint64_t sub_62A594(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11458, &unk_B1E2F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_62A604()
{
  result = qword_E0E990;
  if (!qword_E0E990)
  {
    sub_AB3470();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0E990);
  }

  return result;
}

uint64_t sub_62A674(uint64_t a1)
{
  v3 = *(v1 + 32);
  v2 = *(v1 + 40);
  v4 = *v2;
  v5 = *(a1 + 8);
  ObjectType = swift_getObjectType();
  return sub_61F83C(v3, v2, ObjectType, *(v4 + 80), v5, v7);
}

double block_copy_helper_185(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t objectdestroy_17Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_26Tm_1()
{

  return swift_deallocObject();
}

uint64_t sub_62A868(uint64_t (**a1)(uint64_t *, char *))
{
  v2 = *a1;
  v5 = *(v1 + 32);
  v4 = 1;
  return v2(&v5, &v4);
}

uint64_t sub_62A8D0(uint64_t (**a1)(uint64_t *))
{
  v2 = *a1;
  v4 = *(v1 + 32);
  return v2(&v4);
}

uint64_t sub_62AA08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v7 = a3;
  v10 = swift_allocObject();
  sub_62AE70(a1, a2, v7, a4, a5);
  return v10;
}

id sub_62AA80(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v38 = *&a3;
  v9 = *(*a1 + 80);
  v10 = *(sub_ABA9C0() - 8);
  __chkstk_darwin();
  v13 = &v38 - v12;
  if ((a5 >> 6) > 1u)
  {
    if (a5 >> 6 == 2)
    {
      v18 = v38;

      return *&v18;
    }

    else
    {
      v23 = v11;
      if (UIAccessibilityIsReduceMotionEnabled() || (v24 = *(*a1 + 120), swift_beginAccess(), *(a1 + v24) == 2))
      {
        v25 = [objc_allocWithZone(UICubicTimingParameters) initWithAnimationCurve:0];
        v26 = objc_allocWithZone(UIViewPropertyAnimator);
        v27 = [v26 initWithDuration:v25 timingParameters:{0.25, *&v38}];
      }

      else
      {
        v28 = a1 + *(*a1 + 168);
        swift_beginAccess();
        if (*(v28 + 32) == 2)
        {
          [a2 bounds];
          v29 = CGRectGetWidth(v40) * 0.5;
        }

        else
        {
          v29 = *(v28 + 16);
        }

        v30 = fabs(v29);
        [a2 bounds];
        Width = CGRectGetWidth(v41);
        v32 = fabs(*v28);
        if (*(v28 + 32) == 2)
        {
          v32 = 0.0;
        }

        v33 = v30 / (Width - v32);
        v34 = *(*a1 + 112);
        swift_beginAccess();
        (*(v10 + 16))(v13, a1 + v34, v23);
        if ((*(*(v9 - 8) + 48))(v13, 1, v9) == 1)
        {
          v35 = 0.5;
        }

        else
        {
          v35 = 0.8;
        }

        (*(v10 + 8))(v13, v23);
        v25 = [objc_allocWithZone(UISpringTimingParameters) initWithDampingRatio:v35 initialVelocity:{v33, 0.0}];
        v36 = objc_allocWithZone(UIViewPropertyAnimator);
        v27 = [v36 initWithDuration:v25 timingParameters:{0.0, *&v38}];
      }

      v37 = v27;

      return v37;
    }
  }

  else
  {
    if (a5 >> 6)
    {
      if (a5)
      {
        v20 = 0.25;
      }

      else
      {
        v20 = *&a4;
      }

      v15 = [objc_allocWithZone(UISpringTimingParameters) initWithDuration:v20 bounce:v38];
      v21 = objc_allocWithZone(UIViewPropertyAnimator);
      v17 = [v21 initWithDuration:v15 timingParameters:{0.0, *&v38}];
    }

    else
    {
      v14 = v38;
      v15 = [objc_allocWithZone(UICubicTimingParameters) initWithAnimationCurve:0];
      v16 = objc_allocWithZone(UIViewPropertyAnimator);
      v17 = [v16 initWithDuration:v15 timingParameters:{v14, *&v38}];
    }

    v22 = v17;

    return v22;
  }
}

uint64_t Gliss.Direction.init(_:)(double a1)
{
  if (a1 > 0.0)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (a1 >= 0.0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_62AE70(uint64_t a1, uint64_t a2, char a3, uint64_t a4, double a5)
{
  v9 = *v5;
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v10 = *(*v5 + 112);
  v11 = *(v9 + 80);
  v12 = *(v11 - 8);
  (*(v12 + 56))(v5 + v10, 1, 1, v11);
  *(v5 + *(*v5 + 128)) = 0;
  v13 = v5 + *(*v5 + 136);
  *v13 = 0;
  *(v13 + 8) = 0;
  *(v13 + 16) = -64;
  v14 = *(*v5 + 144);
  type metadata accessor for Gliss.Transition(255, v11, *(v9 + 88), v15);
  swift_getFunctionTypeMetadata1();
  *(v5 + v14) = sub_AB97C0();
  v16 = *(*v5 + 152);
  swift_getFunctionTypeMetadata2();
  *(v5 + v16) = sub_AB97C0();
  v17 = v5 + *(*v5 + 168);
  *v17 = 0u;
  *(v17 + 16) = 0u;
  *(v17 + 32) = 2;
  (*(v12 + 32))(v5 + *(*v5 + 104), a1, v11);
  swift_beginAccess();
  v18 = sub_ABA9C0();
  (*(*(v18 - 8) + 40))(v5 + v10, a2, v18);
  swift_endAccess();
  v19 = v5 + *(*v5 + 120);
  *v19 = a3;
  *(v19 + 8) = a5;
  *(v5 + *(*v5 + 160)) = a4;
  return v5;
}

uint64_t Gliss.Transition.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = direct field offset for Gliss.Transition.id;
  v4 = sub_AB3470();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_62B1B0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + a3 - 16);
  v6 = *a1;
  v7 = *(**a1 + 104);
  swift_beginAccess();
  return (*(*(v5 - 8) + 16))(a4, v6 + v7, v5);
}

double sub_62B248(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 16);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin();
  v9 = &v13 - v8;
  (*(v6 + 16))(&v13 - v8, v7);
  v10 = *a2;
  v11 = *(*v10 + 104);
  swift_beginAccess();
  (*(v6 + 40))(v10 + v11, v9, v5);
  swift_endAccess();
  return result;
}

uint64_t Gliss.Transition.from.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 104);
  swift_beginAccess();
  return (*(*(*(v3 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_62B400@<X0>(uint64_t *a1@<X0>, uint64_t a4@<X8>)
{
  v5 = *a1;
  v6 = *(**a1 + 112);
  swift_beginAccess();
  v7 = sub_ABA9C0();
  return (*(*(v7 - 8) + 16))(a4, v5 + v6, v7);
}

double sub_62B4A4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_ABA9C0();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin();
  v10 = &v14 - v9;
  (*(v7 + 16))(&v14 - v9, a1, v6, v8);
  v11 = *a2;
  v12 = *(*v11 + 112);
  swift_beginAccess();
  (*(v7 + 40))(v11 + v12, v10, v6);
  swift_endAccess();
  return result;
}

uint64_t Gliss.Transition.to.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 112);
  swift_beginAccess();
  v4 = sub_ABA9C0();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t Gliss.Transition.progression.getter()
{
  v1 = (v0 + *(*v0 + 120));
  swift_beginAccess();
  return *v1;
}

uint64_t Gliss.Transition.state.getter()
{
  v1 = *(*v0 + 128);
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_62B720(char a1)
{
  v3 = *(*v1 + 128);
  swift_beginAccess();
  *(v1 + v3) = a1;
}

BOOL Gliss.Transition.isEnding.getter()
{
  v1 = *(*v0 + 128);
  swift_beginAccess();
  return *(v0 + v1) == 3;
}

BOOL Gliss.Transition.isCancelling.getter()
{
  v1 = *(*v0 + 128);
  swift_beginAccess();
  return *(v0 + v1) == 4;
}

BOOL Gliss.Transition.hasEnded.getter()
{
  v1 = *(*v0 + 128);
  swift_beginAccess();
  return *(v0 + v1) > 4u;
}

BOOL Gliss.Transition.isGestureBased.getter()
{
  v1 = v0 + *(*v0 + 168);
  swift_beginAccess();
  return *(v1 + 32) != 2;
}

double Gliss.Transition.addAlongsideAnimation(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = swift_allocObject();
  v7 = *(v5 + 80);
  v6[2] = v7;
  v8 = *(v5 + 88);
  v6[3] = v8;
  v6[4] = a1;
  v6[5] = a2;
  swift_beginAccess();
  type metadata accessor for Gliss.Transition(255, v7, v8, v9);
  swift_getFunctionTypeMetadata1();
  sub_AB9870();

  sub_AB9820();
  swift_endAccess();
  return result;
}

double Gliss.Transition.addCompletion(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = swift_allocObject();
  v7 = *(v5 + 80);
  v6[2] = v7;
  v8 = *(v5 + 88);
  v6[3] = v8;
  v6[4] = a1;
  v6[5] = a2;
  swift_beginAccess();
  type metadata accessor for Gliss.Transition(255, v7, v8, v9);
  swift_getFunctionTypeMetadata2();
  sub_AB9870();

  sub_AB9820();
  swift_endAccess();
  return result;
}

uint64_t Gliss.Transition.context<A>(for:)@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  v6 = *(v4 + *(*v4 + 160));
  if (!*(v6 + 16))
  {
    goto LABEL_5;
  }

  v8 = sub_5222E8(a1);
  if ((v9 & 1) == 0)
  {

LABEL_5:
    memset(v13, 0, sizeof(v13));
    goto LABEL_6;
  }

  sub_808B0(*(v6 + 56) + 32 * v8, v13);

LABEL_6:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11F60, &unk_B1BC70);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = swift_dynamicCast();
  return (*(*(AssociatedTypeWitness - 8) + 56))(a4, v11 ^ 1u, 1, AssociatedTypeWitness);
}

__n128 sub_62BC58@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + *(**a1 + 168);
  swift_beginAccess();
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 16) = v6;
  *(a2 + 32) = v4;
  return result;
}

__n128 sub_62BCC0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *a2 + *(**a2 + 168);
  swift_beginAccess();
  result = *a1;
  v6 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 16) = v6;
  *(v4 + 32) = v3;
  return result;
}

__n128 Gliss.Transition.gestureState.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(*v1 + 168);
  swift_beginAccess();
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  return result;
}

uint64_t Gliss.Transition.description.getter()
{
  v1 = v0;
  v2 = *(*v0 + 80);
  v3 = sub_ABA9C0();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v17 - v5;
  v7 = *(v2 - 8);
  __chkstk_darwin();
  v17 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v17 - v9;
  strcpy(v22, "Transition(\n");
  BYTE5(v22[1]) = 0;
  HIWORD(v22[1]) = -5120;
  v21._countAndFlagsBits = 0x3A646920202020;
  v21._object = 0xE700000000000000;
  v23._countAndFlagsBits = sub_AB3440();
  sub_AB94A0(v23);

  v24._countAndFlagsBits = 10;
  v24._object = 0xE100000000000000;
  sub_AB94A0(v24);
  sub_AB94A0(v21);

  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  v25._countAndFlagsBits = 0x6D6F726620202020;
  v25._object = 0xEA0000000000203ALL;
  sub_AB94A0(v25);
  v11 = *(*v0 + 104);
  swift_beginAccess();
  (*(v7 + 16))(v10, v1 + v11, v2);
  sub_ABB360();
  v12 = *(v7 + 8);
  v12(v10, v2);
  v26._countAndFlagsBits = 10;
  v26._object = 0xE100000000000000;
  sub_AB94A0(v26);
  sub_AB94A0(v20);

  v13 = *(*v1 + 112);
  swift_beginAccess();
  (*(v4 + 16))(v6, v1 + v13, v3);
  if ((*(v7 + 48))(v6, 1, v2) == 1)
  {
    (*(v4 + 8))(v6, v3);
    v27._object = 0xED00000A656E6F6ELL;
    v27._countAndFlagsBits = 0x203A6F7420202020;
    sub_AB94A0(v27);
  }

  else
  {
    v14 = v17;
    (*(v7 + 32))(v17, v6, v2);
    v18._countAndFlagsBits = 0;
    v18._object = 0xE000000000000000;
    v28._countAndFlagsBits = 0x203A6F7420202020;
    v28._object = 0xE800000000000000;
    sub_AB94A0(v28);
    sub_ABB360();
    v29._countAndFlagsBits = 10;
    v29._object = 0xE100000000000000;
    sub_AB94A0(v29);
    sub_AB94A0(v18);

    v12(v14, v2);
  }

  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  sub_ABAD90(19);

  v19._countAndFlagsBits = 0xD000000000000010;
  v19._object = 0x8000000000B6EBB0;
  v15 = v1 + *(*v1 + 120);
  swift_beginAccess();
  v30._countAndFlagsBits = Gliss.Progression.description.getter(*v15, *(v15 + 8));
  sub_AB94A0(v30);

  v31._countAndFlagsBits = 10;
  v31._object = 0xE100000000000000;
  sub_AB94A0(v31);
  sub_AB94A0(v19);

  v32._countAndFlagsBits = 10528;
  v32._object = 0xE200000000000000;
  sub_AB94A0(v32);
  return v22[0];
}

uint64_t *Gliss.Transition.deinit()
{
  v1 = *v0;
  v2 = direct field offset for Gliss.Transition.id;
  v3 = sub_AB3470();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 104), *(v1 + 80));
  v4 = *(*v0 + 112);
  v5 = sub_ABA9C0();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  sub_629BEC(*(v0 + *(*v0 + 136)), *(v0 + *(*v0 + 136) + 8), *(v0 + *(*v0 + 136) + 16));

  return v0;
}

uint64_t Gliss.Transition.__deallocating_deinit()
{
  Gliss.Transition.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_62C46C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = direct field offset for Gliss.Transition.id;
  v5 = sub_AB3470();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_62C50C()
{

  return swift_deallocObject();
}

unint64_t Gliss.Progression.description.getter(char a1, double a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E112D8, &qword_B1E188);
  v3._countAndFlagsBits = sub_AB9350();
  sub_AB94A0(v3);

  v4._countAndFlagsBits = 8236;
  v4._object = 0xE200000000000000;
  sub_AB94A0(v4);
  v5._countAndFlagsBits = 0x6F69746365726964;
  v5._object = 0xEA00000000003D6ELL;
  sub_AB94A0(v5);

  v6._countAndFlagsBits = sub_AB9AA0();
  sub_AB94A0(v6);

  v7._countAndFlagsBits = 0x3D65756C6176;
  v7._object = 0xE600000000000000;
  sub_AB94A0(v7);

  v8._countAndFlagsBits = 41;
  v8._object = 0xE100000000000000;
  sub_AB94A0(v8);
  return 0xD000000000000014;
}

unint64_t sub_62C744()
{
  result = qword_E0E988;
  if (!qword_E0E988)
  {
    sub_AB3470();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0E988);
  }

  return result;
}

unint64_t sub_62C7A0()
{
  result = qword_E11470;
  if (!qword_E11470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E11470);
  }

  return result;
}

unint64_t sub_62C7F8()
{
  result = qword_E11478;
  if (!qword_E11478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E11478);
  }

  return result;
}

__n128 sub_62C860(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_62C880@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + *(**a1 + 120);
  swift_beginAccess();
  result = *(v3 + 8);
  *a2 = *v3;
  *(a2 + 8) = result;
  return result;
}

void sub_62C8E8(char *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *a2 + *(**a2 + 120);
  swift_beginAccess();
  *v4 = v2;
  *(v4 + 8) = v3;
}

void sub_62C960(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = *(**a1 + 128);
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t get_enum_tag_for_layout_string_9MusicCore5GlissO9AnimationO(uint64_t a1)
{
  v1 = *(a1 + 16) >> 6;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_62CA28(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 17))
  {
    return (*a1 + 125);
  }

  v3 = ((*(a1 + 16) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 16) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_62CA7C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *(result + 16) = 0;
    *result = a2 - 125;
    *(result + 8) = 0;
    if (a3 >= 0x7D)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_62CAD0(uint64_t result, unsigned int a2)
{
  if (a2 < 3)
  {
    *(result + 16) = *(result + 16) & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    *(result + 16) = -64;
  }

  return result;
}

uint64_t sub_62CB0C(uint64_t a1)
{
  result = sub_AB3470();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = sub_ABA9C0();
      if (v4 <= 0x3F)
      {
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t _s11ProgressionVwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[16])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  if (v3 <= 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = *a1;
  }

  v5 = v4 - 3;
  if (v3 < 2)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for PlayIntentLayoutHelper.Configuration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

__n128 __swift_memcpy34_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_62CD28(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 34))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_62CD7C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 34) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 34) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

uint64_t EnvironmentVariable.value.getter(uint64_t a1, uint64_t a2, char a3)
{
  v4 = 0xD000000000000013;
  v5 = [objc_opt_self() processInfo];
  v6 = [v5 environment];

  v7 = sub_AB8FF0();
  if (a3)
  {
    if (a3 == 1)
    {
      v4 = 0xD000000000000014;
    }

    else
    {
      v4 = 0xD000000000000017;
    }

    if (a3 == 1)
    {
      v8 = "";
    }

    else
    {
      v8 = "FEATUREFLAGS_ENABLED";
    }
  }

  else
  {
    v8 = "MUSIC_TOOLTIP_DEBUG_ALL";
  }

  if (*(v7 + 16))
  {
    v9 = sub_52215C(v4, v8 | 0x8000000000000000);
    v11 = v10;

    if (v11)
    {
      v12 = *(*(v7 + 56) + 16 * v9);
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {

    v12 = 0;
  }

  return v12;
}

uint64_t EnvironmentVariable.isEnabled.getter(uint64_t a1, uint64_t a2, char a3)
{
  v4 = EnvironmentVariable.value.getter(a1, a2, a3);
  if (!v5)
  {
    return 0;
  }

  if (a3 <= 1u)
  {
    sub_4FD6CC();
    v6 = sub_ABAB20();

    return v6 & 1;
  }

  if (v4 == 49 && v5 == 0xE100000000000000 || (v8 = v4, v9 = v5, (sub_ABB3C0() & 1) != 0) || v8 == 1702195828 && v9 == 0xE400000000000000 || (sub_ABB3C0() & 1) != 0 || v8 == 5457241 && v9 == 0xE300000000000000)
  {

    v6 = 1;
    return v6 & 1;
  }

  v10 = sub_ABB3C0();

  return v10 & 1;
}

uint64_t get_enum_tag_for_layout_string_9MusicCore19EnvironmentVariableO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_62D0D4()
{
  v0 = sub_AB4BC0();
  __swift_allocate_value_buffer(v0, qword_E11500);
  __swift_project_value_buffer(v0, qword_E11500);
  return sub_AB4BB0();
}

uint64_t static StagedInstall.current()()
{
  v0 = sub_AB31C0();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v45 - v4;
  __chkstk_darwin();
  v7 = &v45 - v6;
  if (qword_E0D528 != -1)
  {
    swift_once();
  }

  if (static DeviceCapabilities.isInternalInstall != 1)
  {
    return 2;
  }

  if (qword_E0CDE0 != -1)
  {
    swift_once();
  }

  v8 = sub_AB4BC0();
  __swift_project_value_buffer(v8, qword_E11500);
  v9 = sub_AB4BA0();
  v10 = sub_AB9F50();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_0, v9, v10, "Checking for a staged install of Music", v11, 2u);
  }

  sub_AB30C0();
  v12 = [objc_opt_self() defaultManager];
  sub_AB3160();
  v13 = sub_AB9260();

  v14 = [v12 fileExistsAtPath:v13];

  v15 = sub_AB4BA0();
  if (v14)
  {
    v16 = sub_AB9F30();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_0, v15, v16, "Found Music.app in staged_system_apps", v17, 2u);
    }

    v18 = sub_AB31F0();
    v23 = v19 >> 62;
    if ((v19 >> 62) > 1)
    {
      if (v23 != 2 || *(v18 + 16) == *(v18 + 24))
      {
LABEL_23:
        sub_466B8(v18, v19);
        v15 = sub_AB4BA0();
        v20 = sub_AB9F30();
        if (os_log_type_enabled(v15, v20))
        {
          v21 = swift_slowAlloc();
          *v21 = 0;
          v22 = "Unable to read data of staged executable";
          goto LABEL_25;
        }

        goto LABEL_26;
      }
    }

    else if (v23)
    {
      if (v18 == v18 >> 32)
      {
        goto LABEL_23;
      }
    }

    else if ((v19 & 0xFF000000000000) == 0)
    {
      goto LABEL_23;
    }

    v24 = v18;
    v47 = v19;
    v25 = [objc_opt_self() mainBundle];
    v26 = [v25 executableURL];

    if (!v26)
    {
LABEL_39:
      v36 = sub_AB4BA0();
      v37 = sub_AB9F30();
      if (os_log_type_enabled(v36, v37))
      {
        v29 = 2;
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_0, v36, v37, "Unable to read data of running executable", v38, 2u);

        sub_466B8(v24, v47);
        (*(v1 + 8))(v7, v0);
        return v29;
      }

      sub_466B8(v24, v47);

      goto LABEL_27;
    }

    sub_AB3150();

    (*(v1 + 32))(v5, v3, v0);
    v27 = sub_AB31F0();
    v31 = v28 >> 62;
    if ((v28 >> 62) > 1)
    {
      if (v31 != 2)
      {
        goto LABEL_38;
      }

      v32 = *(v27 + 16);
      v33 = *(v27 + 24);
    }

    else
    {
      if (!v31)
      {
        if ((v28 & 0xFF000000000000) == 0)
        {
          goto LABEL_38;
        }

LABEL_42:
        v45 = v27;
        v46 = v28;
        v39 = sub_62DCFC(v27, v28, v24, v47);
        v40 = sub_AB4BA0();
        if (v39)
        {
          v41 = sub_AB9F50();
          if (os_log_type_enabled(v40, v41))
          {
            v42 = swift_slowAlloc();
            *v42 = 0;
            v43 = "Identical staged copy found";
LABEL_47:
            _os_log_impl(&dword_0, v40, v41, v43, v42, 2u);
          }
        }

        else
        {
          v41 = sub_AB9F30();
          if (os_log_type_enabled(v40, v41))
          {
            v42 = swift_slowAlloc();
            *v42 = 0;
            v43 = "Found different binary in staged applications";
            goto LABEL_47;
          }
        }

        sub_466B8(v45, v46);
        sub_466B8(v24, v47);
        v44 = *(v1 + 8);
        v44(v5, v0);
        v44(v7, v0);
        return v39;
      }

      v32 = v27;
      v33 = v27 >> 32;
    }

    if (v32 != v33)
    {
      goto LABEL_42;
    }

LABEL_38:
    v34 = v27;
    v35 = v28;
    (*(v1 + 8))(v5, v0);
    sub_466B8(v34, v35);
    goto LABEL_39;
  }

  v20 = sub_AB9F50();
  if (!os_log_type_enabled(v15, v20))
  {
LABEL_26:

LABEL_27:
    (*(v1 + 8))(v7, v0);
    return 2;
  }

  v21 = swift_slowAlloc();
  *v21 = 0;
  v22 = "✅ No staged copy found";
LABEL_25:
  _os_log_impl(&dword_0, v15, v20, v22, v21, 2u);

  (*(v1 + 8))(v7, v0);
  return 2;
}

uint64_t sub_62D884@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_AB2D10();
    if (v10)
    {
      v11 = sub_AB2D40();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_AB2D30();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_AB2D10();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_AB2D40();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_AB2D30();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_62DAB4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_62DC44(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_466B8(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_62D884(v13, a3, a4, &v12);
  v10 = v4;
  sub_466B8(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_62DC44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_AB2D10();
  v11 = result;
  if (result)
  {
    result = sub_AB2D40();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_AB2D30();
  sub_62D884(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_62DCFC(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_90090(a3, a4);
          return sub_62DAB4(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_62DE74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int64_t a9@<X8>, unsigned __int8 a10)
{
  v122 = a8;
  v117 = a7;
  v135 = a6;
  v121 = a4;
  v120 = a3;
  v119 = a2;
  v118 = a1;
  LODWORD(v12) = a10;
  v132 = sub_AB30A0();
  v13 = *(v132 - 8);
  __chkstk_darwin();
  v131 = &v107 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30, &unk_B15160);
  __chkstk_darwin();
  v133 = &v107 - v15;
  v16 = sub_AB31C0();
  v140 = *(v16 - 8);
  v141 = v16;
  __chkstk_darwin();
  v138 = &v107 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v114 = &v107 - v18;
  __chkstk_darwin();
  v136 = &v107 - v19;
  __chkstk_darwin();
  v112 = &v107 - v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10A78, &qword_B1CC58);
  __chkstk_darwin();
  v22 = &v107 - v21;
  v23 = sub_AB2CE0();
  v24 = *(v23 - 8);
  __chkstk_darwin();
  v26 = &v107 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_E0D528 != -1)
  {
LABEL_71:
    swift_once();
  }

  if (static DeviceCapabilities.isInternalInstall == 1)
  {
    sub_AB2CC0();
    result = (*(v24 + 48))(v22, 1, v23);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      (*(v24 + 32))(v26, v22, v23);
      if (a5 >> 62)
      {
        v22 = sub_ABB060();
      }

      else
      {
        v22 = *(&dword_10 + (a5 & 0xFFFFFFFFFFFFFF8));
      }

      v111 = a9;
      v110 = v12;
      v109 = v23;
      v108 = v24;
      v107 = v26;
      if (v22 || *(v135 + 16))
      {
        v28 = [objc_opt_self() defaultManager];
        if (qword_E0CDE8 != -1)
        {
          swift_once();
        }

        v29 = __swift_project_value_buffer(v141, static URL.tapToRadarDirectory);
        NSFileManager.createDirectoryIfNeeded(at:)(v29);
        v137 = 0;
      }

      else
      {
        v137 = 0;
      }

      a9 = 0;
      v12 = a5 & 0xC000000000000001;
      v23 = a5 & 0xFFFFFFFFFFFFFF8;
      v130 = _swiftEmptyArrayStorage;
      while (v22 != a9)
      {
        if (v12)
        {
          v30 = sub_ABAE20();
        }

        else
        {
          if (a9 >= *(&dword_10 + (a5 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_70;
          }

          v30 = *(a5 + 8 * a9 + 32);
        }

        v24 = v30;
        v31 = a9 + 1;
        if (__OFADD__(a9, 1))
        {
LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
          goto LABEL_71;
        }

        v26 = sub_62F4DC(a9, v30);
        v33 = v32;

        ++a9;
        if (v33)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v130 = sub_506314(0, *(v130 + 2) + 1, 1, v130);
          }

          v24 = *(v130 + 2);
          v34 = *(v130 + 3);
          if (v24 >= v34 >> 1)
          {
            v130 = sub_506314((v34 > 1), v24 + 1, 1, v130);
          }

          v35 = v130;
          *(v130 + 2) = v24 + 1;
          v36 = &v35[16 * v24];
          *(v36 + 4) = v26;
          *(v36 + 5) = v33;
          a9 = v31;
        }
      }

      a5 = v135 + 64;
      v39 = 1 << *(v135 + 32);
      v40 = -1;
      if (v39 < 64)
      {
        v40 = ~(-1 << v39);
      }

      v22 = v40 & *(v135 + 64);
      a9 = (v39 + 63) >> 6;
      v128 = enum case for URL.DirectoryHint.inferFromPath(_:);
      v126 = (v13 + 8);
      v127 = (v13 + 104);
      v139 = (v140 + 8);
      v125 = (v140 + 56);
      v116 = (v140 + 32);
      v124 = (v140 + 48);

      v41 = 0;
      *&v42 = 136446210;
      v113 = v42;
      v115 = _swiftEmptyArrayStorage;
      v43 = v141;
      v44 = _TtCC16MusicApplication27VerticalStackViewControllerP33_B59BDA9C42E977881C7820B2B0D4CE4016AnimationContext;
      v12 = v137;
      v129 = a9;
      v123 = a5;
      while (v22)
      {
        v13 = v41;
LABEL_35:
        v137 = v12;
        v45 = (v13 << 10) | (16 * __clz(__rbit64(v22)));
        v46 = (*(v135 + 48) + v45);
        v48 = *v46;
        v47 = v46[1];
        v49 = (*(v135 + 56) + v45);
        v23 = *v49;
        v50 = v49[1];

        sub_90090(v23, v50);
        if (v44[89].isa != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v43, static URL.tapToRadarDirectory);
        v143[0] = 47;
        v143[1] = 0xE100000000000000;
        v145._countAndFlagsBits = v48;
        v134 = v47;
        v145._object = v47;
        sub_AB94A0(v145);
        v52 = v131;
        v51 = v132;
        (*v127)(v131, v128, v132);
        sub_4FD6CC();
        v53 = v136;
        sub_AB31B0();
        (*v126)(v52, v51);

        v12 = v137;
        sub_AB3270();
        v24 = v50;
        if (v12)
        {
          v54 = v141;
          if (qword_E0CDF0 != -1)
          {
            swift_once();
          }

          v55 = sub_AB4BC0();
          __swift_project_value_buffer(v55, qword_E11518);
          swift_errorRetain();
          v56 = sub_AB4BA0();
          v57 = sub_AB9F30();

          v44 = _TtCC16MusicApplication27VerticalStackViewControllerP33_B59BDA9C42E977881C7820B2B0D4CE4016AnimationContext;
          if (os_log_type_enabled(v56, v57))
          {
            v58 = swift_slowAlloc();
            v137 = v23;
            v59 = v24;
            v60 = v58;
            v61 = swift_slowAlloc();
            v142 = v12;
            v143[0] = v61;
            *v60 = v113;
            swift_errorRetain();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80, &qword_B16F10);
            v62 = sub_AB9350();
            v64 = sub_500C84(v62, v63, v143);

            *(v60 + 4) = v64;
            _os_log_impl(&dword_0, v56, v57, "Tap-to-Radar Attachment file write failed with error: %{public}s", v60, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v61);
            v43 = v141;

            v24 = v59;
            v23 = v137;

            v44 = _TtCC16MusicApplication27VerticalStackViewControllerP33_B59BDA9C42E977881C7820B2B0D4CE4016AnimationContext;

            (*v139)(v136, v43);
          }

          else
          {

            v43 = v54;
            (*v139)(v136, v54);
          }

          v12 = 0;
          v66 = 1;
          v65 = v133;
        }

        else
        {
          v65 = v133;
          v43 = v141;
          (*v116)(v133, v53, v141);
          v66 = 0;
          v44 = _TtCC16MusicApplication27VerticalStackViewControllerP33_B59BDA9C42E977881C7820B2B0D4CE4016AnimationContext;
        }

        v26 = v134;
        v22 &= v22 - 1;
        (*v125)(v65, v66, 1, v43);

        sub_466B8(v23, v24);
        v67 = (*v124)(v65, 1, v43);
        a5 = v123;
        if (v67 == 1)
        {
          sub_4FE5BC(v65);
          v41 = v13;
          a9 = v129;
        }

        else
        {
          v26 = 0;
          v68 = *v116;
          v24 = v112;
          (*v116)(v112, v65, v43);
          v68(v114, v24, v43);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v115 = sub_506B6C(0, *(v115 + 2) + 1, 1, v115);
          }

          v23 = *(v115 + 2);
          v69 = *(v115 + 3);
          if (v23 >= v69 >> 1)
          {
            v115 = sub_506B6C((v69 > 1), v23 + 1, 1, v115);
          }

          v70 = v115;
          *(v115 + 2) = v23 + 1;
          v43 = v141;
          v68(&v70[((*(v140 + 80) + 32) & ~*(v140 + 80)) + *(v140 + 72) * v23], v114, v141);
          v41 = v13;
          v12 = 0;
          a9 = v129;
        }
      }

      while (1)
      {
        v13 = v41 + 1;
        if (__OFADD__(v41, 1))
        {
          __break(1u);
          goto LABEL_69;
        }

        if (v13 >= a9)
        {
          break;
        }

        v22 = *(a5 + 8 * v13);
        ++v41;
        if (v22)
        {
          goto LABEL_35;
        }
      }

      v143[0] = v115;

      sub_511148(v71);
      v72 = v143[0];
      v73 = *(v143[0] + 16);
      if (v73)
      {
        v143[0] = _swiftEmptyArrayStorage;
        sub_503918(0, v73, 0);
        v74 = *(v140 + 16);
        v75 = v143[0];
        v76 = (*(v140 + 80) + 32) & ~*(v140 + 80);
        v137 = v72;
        v77 = v72 + v76;
        v140 += 16;
        v78 = *(v140 + 56);
        do
        {
          v79 = v138;
          v80 = v141;
          v74(v138, v77, v141);
          v81 = sub_AB3160();
          v83 = v82;
          (*v139)(v79, v80);
          v143[0] = v75;
          v85 = v75[2];
          v84 = v75[3];
          if (v85 >= v84 >> 1)
          {
            sub_503918((v84 > 1), v85 + 1, 1);
            v75 = v143[0];
          }

          v75[2] = v85 + 1;
          v86 = &v75[2 * v85];
          v86[4] = v81;
          v86[5] = v83;
          v77 += v78;
          --v73;
        }

        while (v73);
      }

      else
      {

        v75 = _swiftEmptyArrayStorage;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E178, &qword_B28100);
      v87 = *(sub_AB2C10() - 8);
      v88 = *(v87 + 72);
      v89 = (*(v87 + 80) + 32) & ~*(v87 + 80);
      v90 = swift_allocObject();
      *(v90 + 16) = xmmword_B122D0;
      sub_AB2BE0();
      sub_AB2BE0();
      sub_AB2BE0();
      sub_AB2BE0();
      sub_AB2BE0();
      v91 = [objc_opt_self() mainBundle];
      v92 = [v91 bundleIdentifier];

      v93 = v122;
      if (v92)
      {
        sub_AB92A0();
      }

      sub_AB2BE0();

      v143[0] = v130;
      v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E103E0, &unk_B16BD0);
      v95 = sub_51EB04();
      sub_AB9140();
      sub_AB2BE0();

      v143[0] = v75;
      v140 = v95;
      v141 = v94;
      sub_AB9140();
      sub_AB2BE0();

      v96 = *(v93 + 16);
      v97 = _swiftEmptyArrayStorage;
      if (v96)
      {
        v137 = v90 + v89;
        v138 = v88;
        v139 = v90;
        v143[0] = _swiftEmptyArrayStorage;
        sub_503918(0, v96, 0);
        v97 = v143[0];
        v98 = (v93 + 32);
        do
        {
          v99 = *v98++;
          v142 = qword_B1E790[v99];
          v100 = sub_ABB330();
          v102 = v101;
          v143[0] = v97;
          v104 = v97[2];
          v103 = v97[3];
          if (v104 >= v103 >> 1)
          {
            sub_503918((v103 > 1), v104 + 1, 1);
            v97 = v143[0];
          }

          v97[2] = v104 + 1;
          v105 = &v97[2 * v104];
          v105[4] = v100;
          v105[5] = v102;
          --v96;
        }

        while (v96);
      }

      v143[0] = v97;
      sub_AB9140();

      sub_AB2BE0();

      v143[0] = v130;
      sub_511054(v75);

      sub_AB2BE0();

      sub_AB2BE0();

      v106 = v107;
      sub_AB2C30();
      sub_AB2C50();
      return (*(v108 + 8))(v106, v109);
    }
  }

  else
  {
    v37 = v141;
    v38 = *(v140 + 56);

    return v38(a9, 1, 1, v37);
  }

  return result;
}

uint64_t sub_62F050()
{
  v0 = sub_AB30A0();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30, &unk_B15160);
  __chkstk_darwin();
  v5 = &v8 - v4;
  v6 = sub_AB31C0();
  __swift_allocate_value_buffer(v6, static URL.tapToRadarDirectory);
  __swift_project_value_buffer(v6, static URL.tapToRadarDirectory);
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  (*(v1 + 104))(v3, enum case for URL.DirectoryHint.inferFromPath(_:), v0);
  return sub_AB3190();
}

uint64_t URL.tapToRadarDirectory.unsafeMutableAddressor()
{
  if (qword_E0CDE8 != -1)
  {
    swift_once();
  }

  v0 = sub_AB31C0();

  return __swift_project_value_buffer(v0, static URL.tapToRadarDirectory);
}

uint64_t static URL.tapToRadarDirectory.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_E0CDE8 != -1)
  {
    swift_once();
  }

  v2 = sub_AB31C0();
  v3 = __swift_project_value_buffer(v2, static URL.tapToRadarDirectory);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_62F31C()
{
  v0 = sub_AB4BC0();
  __swift_allocate_value_buffer(v0, qword_E11518);
  __swift_project_value_buffer(v0, qword_E11518);
  return sub_AB4BB0();
}

Swift::Int sub_62F3C4()
{
  v1 = *v0;
  sub_ABB5C0();
  sub_ABB5D0(qword_B1E790[v1]);
  return sub_ABB610();
}

Swift::Int sub_62F44C(uint64_t a1)
{
  v2 = *v1;
  sub_ABB5C0();
  sub_ABB5D0(qword_B1E790[v2]);
  return sub_ABB610();
}

uint64_t sub_62F498@<X0>(Swift::Int *a1@<X0>, MusicCore::TTR::Keyword_optional *a2@<X8>)
{
  result = _s9MusicCore3TTRO7KeywordO8rawValueAESgSi_tcfC_0(*a1);
  a2->value = result;
  return result;
}

uint64_t sub_62F4DC(uint64_t a1, UIImage *a2)
{
  v4 = sub_AB30A0();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_AB31C0();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_E0CDE8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v8, static URL.tapToRadarDirectory);
  v20 = 0;
  v21 = 0xE000000000000000;
  sub_ABAD90(24);

  v20 = 0xD000000000000012;
  v21 = 0x8000000000B6ED50;
  v19[1] = a1;
  v22._countAndFlagsBits = sub_ABB330();
  sub_AB94A0(v22);

  v23._countAndFlagsBits = 1735420462;
  v23._object = 0xE400000000000000;
  sub_AB94A0(v23);
  (*(v5 + 104))(v7, enum case for URL.DirectoryHint.inferFromPath(_:), v4);
  sub_4FD6CC();
  sub_AB31B0();
  (*(v5 + 8))(v7, v4);

  v12 = UIImageJPEGRepresentation(a2, 85.0);
  if (v12)
  {
    v13 = v12;
    v14 = sub_AB3260();
    v16 = v15;

    sub_AB3270();
    sub_466B8(v14, v16);
  }

  v17 = sub_AB3160();
  (*(v9 + 8))(v11, v8);
  return v17;
}

uint64_t _s9MusicCore3TTRO7KeywordO8rawValueAESgSi_tcfC_0(uint64_t a1)
{
  if (a1 > 1723675)
  {
    if (a1 != 1947834)
    {
      if (a1 == 1723676)
      {
        return 2;
      }

      return 4;
    }

    return 3;
  }

  else
  {
    if (a1 != 1723672)
    {
      if (a1 == 1723674)
      {
        return 1;
      }

      return 4;
    }

    return 0;
  }
}

unint64_t sub_62F9CC()
{
  result = qword_E11530;
  if (!qword_E11530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E11530);
  }

  return result;
}

uint64_t static CloudLibrary.presentCloudLibraryEnabler(context:presentationSource:style:)(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  *(v3 + 89) = a1;
  *(v3 + 32) = sub_AB9940();
  *(v3 + 40) = sub_AB9930();
  v5 = sub_AB98B0();
  *(v3 + 48) = v5;
  *(v3 + 56) = v4;

  return _swift_task_switch(sub_62FAE0, v5, v4);
}

uint64_t sub_62FAE0(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 16);
  v4 = *(v1 + 89);
  v5 = sub_AB9930();
  *(v1 + 64) = v5;
  v6 = swift_task_alloc();
  *(v1 + 72) = v6;
  *(v6 + 16) = v4;
  *(v6 + 24) = v3;
  *(v6 + 32) = v2;
  v7 = swift_task_alloc();
  *(v1 + 80) = v7;
  *v7 = v1;
  v7[1] = sub_62FBFC;

  return withCheckedContinuation<A>(isolation:function:_:)(v1 + 88, v5, &protocol witness table for MainActor, 0xD00000000000003DLL, 0x8000000000B6A730, sub_53F124, v6, &type metadata for Bool);
}

uint64_t sub_62FBFC()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return _swift_task_switch(sub_639ACC, v3, v2);
}

void sub_62FD5C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EA68, &qword_B18030);
    v2 = sub_ABB0C0();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
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
  v7 = v2 + 8;

  v8 = 0;
  while (v5)
  {
LABEL_15:
    v12 = __clz(__rbit64(v5)) | (v8 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_808B0(*(a1 + 56) + 32 * v12, v35);
    *&v34 = v15;
    *(&v34 + 1) = v14;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_9ACFC(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_9ACFC(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_9ACFC(v31, v32);
    v16 = sub_ABACF0(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = v16 & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~v7[v18 >> 6]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = v7[v19];
        if (v23 != -1)
        {
          v9 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v18) & ~v7[v18 >> 6])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v10 = v2[6] + 40 * v9;
    *v10 = v24;
    *(v10 + 16) = v25;
    *(v10 + 32) = v26;
    sub_9ACFC(v32, (v2[7] + 32 * v9));
    ++v2[2];
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      v8 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_630024(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EA68, &qword_B18030);
    v2 = sub_ABB0C0();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
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
  v7 = v2 + 8;

  v8 = 0;
  while (v5)
  {
LABEL_15:
    v12 = (*(a1 + 48) + 16 * (__clz(__rbit64(v5)) | (v8 << 6)));
    v13 = v12[1];
    *&v30[0] = *v12;
    *(&v30[0] + 1) = v13;

    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_9ACFC(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_9ACFC(v29, v30);
    v14 = sub_ABACF0(v2[5]);
    v15 = -1 << *(v2 + 32);
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~v7[v16 >> 6]) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = v7[v17];
        if (v21 != -1)
        {
          v9 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v16) & ~v7[v16 >> 6])) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v10 = v2[6] + 40 * v9;
    *v10 = v22;
    *(v10 + 16) = v23;
    *(v10 + 32) = v24;
    sub_9ACFC(v30, (v2[7] + 32 * v9));
    ++v2[2];
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      v8 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

__int128 *CloudLibrary.EnablementContext.action.unsafeMutableAddressor()
{
  if (qword_E0CDF8 != -1)
  {
    swift_once();
  }

  return &static CloudLibrary.EnablementContext.action;
}

uint64_t *CloudLibrary.StatusObserver.shared.unsafeMutableAddressor()
{
  if (qword_E0CE00 != -1)
  {
    swift_once();
  }

  return &static CloudLibrary.StatusObserver.shared;
}

uint64_t CloudLibrary.EnablementContext.title.getter(unsigned __int8 a1)
{
  sub_AB35C0();
  __chkstk_darwin();
  v2 = sub_AB9250();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v7 = &v11[-v6];
  if (a1 > 6u)
  {
    sub_AB91E0();
    (*(v3 + 16))(v5, v7, v2);
    if (qword_E0CB80 == -1)
    {
      goto LABEL_3;
    }

    goto LABEL_6;
  }

  sub_AB91E0();
  (*(v3 + 16))(v5, v7, v2);
  if (qword_E0CB80 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_3:
  v8 = qword_E71B20;
  sub_AB3550();
  v9 = sub_AB9320();
  (*(v3 + 8))(v7, v2);
  return v9;
}

uint64_t CloudLibrary.EnablementContext.message.getter(unsigned __int8 a1)
{
  sub_AB35C0();
  __chkstk_darwin();
  v2 = sub_AB9250();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v7 = &v12[-v6];
  v8 = (v3 + 16);
  if (a1 > 6u)
  {
    sub_AB91E0();
    (*v8)(v5, v7, v2);
    if (qword_E0CB80 == -1)
    {
      goto LABEL_3;
    }

    goto LABEL_6;
  }

  sub_AB91E0();
  (*v8)(v5, v7, v2);
  if (qword_E0CB80 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_3:
  v9 = qword_E71B20;
  sub_AB3550();
  v10 = sub_AB9320();
  (*(v3 + 8))(v7, v2);
  return v10;
}

Swift::Int sub_630A84()
{
  v1 = *v0;
  sub_ABB5C0();
  sub_ABB5D0(~v1);
  return sub_ABB610();
}

Swift::Int sub_630AFC(uint64_t a1)
{
  v2 = *v1;
  sub_ABB5C0();
  sub_ABB5D0(~v2);
  return sub_ABB610();
}

uint64_t sub_630B40@<X0>(Swift::Int *a1@<X0>, MusicCore::CloudLibrary::FailureType_optional *a2@<X8>)
{
  result = _s9MusicCore12CloudLibraryO11FailureTypeO8rawValueAESgSi_tcfC_0(*a1);
  a2->value = result;
  return result;
}

uint64_t CloudLibrary.Status.shouldDisplayBanner.getter(uint64_t a1)
{
  if (qword_E0CE00 != -1)
  {
    swift_once();
  }

  v2 = static CloudLibrary.StatusObserver.shared;
  swift_beginAccess();
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);
  v8 = *(v2 + 16);
  v9 = v3;
  v10 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11558, &qword_B1E7B8);
  UserDefault.wrappedValue.getter(v5, &v7);
  if (v7 != 2 && (v7 & 1) != 0)
  {
LABEL_8:
    LOBYTE(a1) = 0;
    return a1 & 1;
  }

  if (a1 >> 30 != 1)
  {
    if (a1 >> 30 != 2 || (a1 - 0x80000000) >= 3)
    {
      LOBYTE(a1) = 1;
      return a1 & 1;
    }

    goto LABEL_8;
  }

  return a1 & 1;
}

BOOL CloudLibrary.Status.shouldShowActionButton.getter(unint64_t a1)
{
  v1 = a1 >> 1 == 1073741825;
  if (a1 >> 30 != 2)
  {
    v1 = 0;
  }

  return !(a1 >> 30) || v1;
}

void (*CloudLibrary.Status.action.getter(unint64_t a1))()
{
  v1 = sub_630D1C;
  if (a1 >> 30)
  {
    if (a1 >> 30 != 2)
    {
      return 0;
    }

    v1 = sub_630D1C;
    if (a1 >> 1 != 1073741825)
    {
      return 0;
    }
  }

  return v1;
}

void sub_630D1C()
{
  if (qword_E0CE00 != -1)
  {
    swift_once();
  }

  CloudLibrary.StatusObserver.enableCloudLibrary(completion:)(0, 0);
}

unint64_t CloudLibrary.Status.progress.getter(unint64_t a1)
{
  v1 = HIDWORD(a1);
  if ((a1 & 0xC0000000) != 0x40000000)
  {
    v1 = 0;
  }

  return v1 | (((a1 & 0xC0000000) != 0x40000000) << 32);
}

uint64_t sub_630DF0()
{
  sub_AB35C0();
  __chkstk_darwin();
  v0 = sub_AB9250();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v11[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v5 = &v11[-v4];
  sub_AB91E0();
  (*(v1 + 16))(v3, v5, v0);
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  v6 = qword_E71B20;
  sub_AB3550();
  v7 = sub_AB9320();
  v9 = v8;
  result = (*(v1 + 8))(v5, v0);
  *&static CloudLibrary.EnablementContext.action = v7;
  *(&static CloudLibrary.EnablementContext.action + 1) = v9;
  return result;
}

uint64_t static CloudLibrary.EnablementContext.action.getter()
{
  if (qword_E0CDF8 != -1)
  {
    swift_once();
  }

  v0 = static CloudLibrary.EnablementContext.action;

  return v0;
}

uint64_t sub_63103C()
{
  type metadata accessor for CloudLibrary.StatusObserver(0);
  swift_allocObject();
  result = sub_6310D8();
  static CloudLibrary.StatusObserver.shared = result;
  return result;
}

double static CloudLibrary.StatusObserver.shared.getter()
{
  if (qword_E0CE00 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t sub_6310D8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E11578, &qword_B1E818);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v32[-v4];
  v34 = 2;
  v33[0] = 0xD000000000000014;
  v33[1] = 0x8000000000B6A140;
  v6 = [objc_opt_self() standardUserDefaults];
  v7 = sub_4FD6CC();
  UserDefault.init(wrappedValue:defaults:key:)(&v34, v6, v33, &type metadata for String, &type metadata for Bool, v7, &v35);
  v8 = v36;
  v9 = v37;
  *(v1 + 16) = v35;
  *(v1 + 32) = v8;
  *(v1 + 40) = v9;
  *(v1 + 48) = _swiftEmptyArrayStorage;
  if (qword_E0CC60 != -1)
  {
    swift_once();
  }

  *(v1 + 56) = static ApplicationCapabilities.Controller.shared;
  *(v1 + 64) = _swiftEmptyArrayStorage;
  *(v1 + 72) = _swiftEmptyArrayStorage;
  *(v1 + 80) = 0;
  *(v1 + 88) = 0;
  v10 = OBJC_IVAR____TtCO9MusicCore12CloudLibrary14StatusObserver__status;
  *&v35 = 0x80000000;

  sub_AB54D0();
  (*(v3 + 32))(v1 + v10, v5, v2);
  *(v1 + OBJC_IVAR____TtCO9MusicCore12CloudLibrary14StatusObserver_updateContext) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E103F0, &unk_B1C490);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF8820;
  if (qword_E0CCC0 != -1)
  {
    swift_once();
  }

  v12 = static ApplicationCapabilities.NotificationNames.userSubscriptionStateDidChange;
  UIScreen.Dimensions.size.getter();
  *(inited + 56) = &type metadata for NotificationTrigger;
  *(inited + 64) = &protocol witness table for NotificationTrigger;
  *(inited + 32) = v13;
  *(inited + 40) = v14;
  v15 = qword_E0CCE0;
  v16 = v12;

  if (v15 != -1)
  {
    swift_once();
  }

  v17 = static ApplicationCapabilities.NotificationNames.isCloudLibraryEnabledDidChange;
  UIScreen.Dimensions.size.getter();
  *(inited + 96) = &type metadata for NotificationTrigger;
  *(inited + 104) = &protocol witness table for NotificationTrigger;
  *(inited + 72) = v18;
  *(inited + 80) = v19;
  v20 = MPCloudControllerCloudLibraryFailureDidChangeNotification;
  UIScreen.Dimensions.size.getter();
  *(inited + 136) = &type metadata for NotificationTrigger;
  *(inited + 144) = &protocol witness table for NotificationTrigger;
  *(inited + 112) = v21;
  *(inited + 120) = v22;
  v23 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for Whitetail.Binding();
  swift_allocObject();
  v24 = v17;

  v25 = v20;

  Whitetail.Binding.init(_:needsInitialConfiguration:configurationBlock:)(inited, 1, sub_639844, v23);

  swift_beginAccess();
  sub_AB9730();
  if (*(&dword_10 + (*(v1 + 72) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(v1 + 72) & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_AB97A0();
  }

  sub_AB97F0();
  swift_endAccess();
  v26 = MPCloudControllerIsUpdateInProgressDidChangeNotification;
  v27 = objc_opt_self();
  v28 = v26;
  v29 = [v27 sharedCloudController];
  v30 = swift_allocObject();
  swift_weakInit();

  type metadata accessor for NotificationObserver();
  swift_allocObject();
  *(v1 + 80) = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v28, v29, 1, 1, sub_63984C, v30);

  return v1;
}

void sub_6315DC(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_AB5510(&v16);

    v24[4] = v20;
    v24[5] = v21;
    v25 = v22;
    v26 = v23;
    v24[0] = v16;
    v24[1] = v17;
    v24[2] = v18;
    v24[3] = v19;
    sub_70C54(v24);
    if (v25 == 2)
    {
    }

    else
    {
      v3 = sub_ABB3C0();

      if ((v3 & 1) == 0)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        sub_AB5510(&v16);

        v7 = v16;
        swift_getKeyPath();
        swift_getKeyPath();
        *&v16 = 2147483649;

        sub_AB5520();
        sub_632FC4(v7);
        goto LABEL_9;
      }
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_AB5510(&v8);

    v20 = v12;
    v21 = v13;
    v22 = v14;
    v23 = v15;
    v16 = v8;
    v17 = v9;
    v18 = v10;
    v19 = v11;
    sub_70C54(&v16);
    if ((BYTE2(v16) & 1) == 0)
    {
      v4 = [objc_opt_self() sharedCloudController];
      if (v4)
      {
        v5 = v4;
        *&v10 = sub_639854;
        *(&v10 + 1) = v2;
        *&v8 = _NSConcreteStackBlock;
        *(&v8 + 1) = 1107296256;
        *&v9 = sub_151E0;
        *(&v9 + 1) = &block_descriptor_161_3;
        v6 = _Block_copy(&v8);

        [v5 loadLastKnownEnableICMLErrorStatusWithCompletionHander:v6];

        _Block_release(v6);
      }

      else
      {
        __break(1u);
      }

      return;
    }

LABEL_9:
  }
}

uint64_t sub_631940(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_AB7C10();
  v18 = *(v6 - 8);
  __chkstk_darwin();
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_AB7C50();
  v9 = *(v17 - 8);
  __chkstk_darwin();
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_13C80(0, &qword_E103C0, OS_dispatch_queue_ptr);
  v12 = sub_ABA150();
  v13 = swift_allocObject();
  v13[2] = a2;
  v13[3] = a1;
  v13[4] = a3;
  aBlock[4] = sub_6398A4;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B5EB4;
  aBlock[3] = &block_descriptor_167_3;
  v14 = _Block_copy(aBlock);
  swift_errorRetain();
  v15 = a1;

  sub_AB7C30();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_63970C(&qword_E13D90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E11A50, &qword_B1C580);
  sub_36A00(&qword_E13DA0, &unk_E11A50, &qword_B1C580, &protocol conformance descriptor for [A]);
  sub_ABABB0();
  sub_ABA160();
  _Block_release(v14);

  (*(v18 + 8))(v8, v6);
  return (*(v9 + 8))(v11, v17);
}

void sub_631C50(uint64_t a1, void *a2, uint64_t a3)
{
  if (a1 || !a2)
  {
    goto LABEL_5;
  }

  v3 = a2;
  v4 = _s9MusicCore12CloudLibraryO11FailureTypeO8rawValueAESgSi_tcfC_0([v3 integerValue]);
  if (v4 == 6)
  {

LABEL_5:
    swift_getKeyPath();
    swift_getKeyPath();
    sub_AB5510(&v8);

    v5 = v8;
    swift_getKeyPath();
    swift_getKeyPath();
    v8 = 2147483651;

    sub_AB5520();
    sub_632FC4(v5);
    return;
  }

  v6 = v4;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v8);

  v7 = v8;
  swift_getKeyPath();
  swift_getKeyPath();
  v8 = v6;

  sub_AB5520();
  sub_632FC4(v7);
}

double sub_631DF0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_6336B8();
  }

  return result;
}

double sub_631E48()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v7 = *(v0 + 16);
  v8 = v1;
  v9 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11558, &qword_B1E7B8);
  UserDefault.wrappedValue.getter(v3, &v6);
  if (v6 != 2 && (v6 & 1) != 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_AB5510(&v7);

    v5 = v7;
    swift_getKeyPath();
    swift_getKeyPath();
    *&v7 = 2147483650;

    sub_AB5520();
    return sub_632FC4(v5);
  }

  return result;
}

uint64_t CloudLibrary.StatusObserver.hasDisregardedBanner.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v6 = *(v0 + 16);
  v7 = v1;
  v8 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11558, &qword_B1E7B8);
  UserDefault.wrappedValue.getter(v3, &v5);
  return v5;
}

double CloudLibrary.StatusObserver.hasDisregardedBanner.setter(char a1)
{
  v3 = a1;
  swift_beginAccess();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11558, &qword_B1E7B8);
  UserDefault.wrappedValue.setter(&v3, v1);
  swift_endAccess();
  return sub_631E48();
}

void (*CloudLibrary.StatusObserver.hasDisregardedBanner.modify(uint64_t *a1))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 56) = v1;
  swift_beginAccess();
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  *v4 = *(v1 + 16);
  *(v4 + 16) = v5;
  *(v4 + 24) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11558, &qword_B1E7B8);
  *(v4 + 64) = v7;
  UserDefault.wrappedValue.getter(v7, v4 + 25);
  return sub_632120;
}

void sub_632120(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  v3 = *a1;
  *(*a1 + 26) = *(*a1 + 25);
  swift_beginAccess();
  UserDefault.wrappedValue.setter(v3 + 26, v2);
  swift_endAccess();
  sub_631E48();

  free(v1);
}

void CloudLibrary.StatusObserver.enableCloudLibrary(completion:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
    swift_beginAccess();
    v6 = *(v2 + 48);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + 48) = v6;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v6 = sub_506CEC(0, v6[2] + 1, 1, v6);
      *(v2 + 48) = v6;
    }

    v9 = v6[2];
    v8 = v6[3];
    if (v9 >= v8 >> 1)
    {
      v6 = sub_506CEC((v8 > 1), v9 + 1, 1, v6);
    }

    v6[2] = v9 + 1;
    v10 = &v6[2 * v9];
    v10[4] = sub_6383A4;
    v10[5] = v5;
    *(v2 + 48) = v6;
    swift_endAccess();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(v21);

  v11 = v21[0];
  swift_getKeyPath();
  swift_getKeyPath();
  v21[0] = 2147483652;

  sub_AB5520();
  sub_632FC4(v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11568, &qword_B1E808);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF85F0;
  *(inited + 32) = sub_AB92A0();
  *(inited + 40) = v13;
  *(inited + 48) = 1;
  *(inited + 56) = sub_AB92A0();
  *(inited + 64) = v14;
  *(inited + 72) = 1;
  v15 = sub_52A8B0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11570, &qword_B1E810);
  swift_arrayDestroy();
  v16 = [objc_opt_self() sharedCloudController];
  if (v16)
  {
    v17 = v16;
    sub_630024(v15);

    isa = sub_AB8FD0().super.isa;

    v19 = swift_allocObject();
    swift_weakInit();
    v21[4] = sub_638384;
    v21[5] = v19;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 1107296256;
    v21[2] = sub_3A5920;
    v21[3] = &block_descriptor_186;
    v20 = _Block_copy(v21);

    [v17 enableCloudLibraryWithOptions:isa completionHandler:v20];
    _Block_release(v20);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_63253C(uint64_t a1, uint64_t a2)
{
  v3 = sub_AB7C10();
  v30 = *(v3 - 8);
  __chkstk_darwin();
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_AB7C50();
  v28 = *(v6 - 8);
  v29 = v6;
  __chkstk_darwin();
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    if (qword_E0CE08 != -1)
    {
      swift_once();
    }

    v18 = sub_AB4BC0();
    __swift_project_value_buffer(v18, qword_E11540);
    v10 = sub_AB4BA0();
    v19 = sub_AB9F50();
    if (os_log_type_enabled(v10, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_0, v10, v19, "Successfully enabled Cloud Library", v20, 2u);
    }

    goto LABEL_10;
  }

  swift_errorRetain();
  if (qword_E0CE08 != -1)
  {
    swift_once();
  }

  v9 = sub_AB4BC0();
  __swift_project_value_buffer(v9, qword_E11540);
  swift_errorRetain();
  v10 = sub_AB4BA0();
  v11 = sub_AB9F30();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v27 = v3;
    v14 = v13;
    aBlock[0] = v13;
    *v12 = 136315138;
    aBlock[6] = a1;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80, &qword_B16F10);
    v15 = sub_AB9350();
    v17 = sub_500C84(v15, v16, aBlock);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_0, v10, v11, "Failed to enable Cloud Library with error=%s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    v3 = v27;

LABEL_10:

    goto LABEL_12;
  }

LABEL_12:
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v22 = result;
    sub_13C80(0, &qword_E103C0, OS_dispatch_queue_ptr);
    v23 = sub_ABA150();
    v24 = swift_allocObject();
    *(v24 + 16) = v22;
    *(v24 + 24) = a1;
    aBlock[4] = sub_63983C;
    aBlock[5] = v24;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B5EB4;
    aBlock[3] = &block_descriptor_156;
    v25 = _Block_copy(aBlock);
    swift_errorRetain();

    sub_AB7C30();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_63970C(&qword_E13D90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E11A50, &qword_B1C580);
    sub_36A00(&qword_E13DA0, &unk_E11A50, &qword_B1C580, &protocol conformance descriptor for [A]);
    sub_ABABB0();
    sub_ABA160();
    _Block_release(v25);

    (*(v30 + 8))(v5, v3);
    return (*(v28 + 8))(v8, v29);
  }

  return result;
}

void sub_632A88(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 48);
  *(a1 + 48) = _swiftEmptyArrayStorage;
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = v4 + 40;
    while (v6 < *(v4 + 16))
    {
      ++v6;
      v8 = *(v7 - 8);
      v9 = a2 == 0;

      v8(&v9);

      v7 += 16;
      if (v5 == v6)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
  }
}

void CloudLibrary.StatusObserver.add(updateObserver:)(void *a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  v6 = *(v3 + 64);
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = v6 + 32;

    v9 = 0;
    while (v9 < *(v6 + 16))
    {
      sub_6383D0(v8, v15);
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_638408(v15);
      if (Strong)
      {
        swift_unknownObjectRelease();
        if (Strong == a1)
        {

          return;
        }
      }

      ++v9;
      v8 += 16;
      if (v7 == v9)
      {

        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_14;
  }

LABEL_9:
  v18 = a2;
  swift_unknownObjectWeakInit();
  ObjectType = swift_getObjectType();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(v15);

  (*(a2 + 8))(v15[0], ObjectType, a2);
  sub_6383D0(v17, v16);
  swift_beginAccess();
  a1 = *(v3 + 64);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 64) = a1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_14:
    a1 = sub_506D5C(0, a1[2] + 1, 1, a1);
    *(v3 + 64) = a1;
  }

  v14 = a1[2];
  v13 = a1[3];
  if (v14 >= v13 >> 1)
  {
    a1 = sub_506D5C((v13 > 1), v14 + 1, 1, a1);
  }

  a1[2] = v14 + 1;
  sub_52B454(v16, &a1[2 * v14 + 4]);
  *(v3 + 64) = a1;
  swift_endAccess();
  sub_638408(v17);
}

void CloudLibrary.StatusObserver.remove(updateObserver:)(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 64);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v3 + 32;

    v6 = 0;
    while (v6 < *(v3 + 16))
    {
      sub_6383D0(v5, v8);
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_638408(v8);
      if (Strong)
      {
        swift_unknownObjectRelease();
        if (Strong == a1)
        {

          swift_beginAccess();
          sub_520850(v6, v9);
          sub_638408(v9);
          swift_endAccess();
          return;
        }
      }

      ++v6;
      v5 += 16;
      if (v4 == v6)
      {

        return;
      }
    }

    __break(1u);
  }
}

void sub_632E78(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v3);

  *a2 = v3;
}

double sub_632EF8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v5);

  v3 = v5;
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = v2;

  sub_AB5520();
  return sub_632FC4(v3);
}

double sub_632FC4(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v12);

  if (!_s9MusicCore12CloudLibraryO6StatusO21__derived_enum_equalsySbAE_AEtFZ_0(v12, a1))
  {
    if (qword_E0CE08 != -1)
    {
      swift_once();
    }

    v3 = sub_AB4BC0();
    __swift_project_value_buffer(v3, qword_E11540);

    v4 = sub_AB4BA0();
    v5 = sub_AB9F50();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v12 = v7;
      *v6 = 136315138;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_AB5510(&v11);

      v8 = sub_AB9350();
      v10 = sub_500C84(v8, v9, &v12);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_0, v4, v5, "Status did change: %s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
    }

    return sub_634384();
  }

  return result;
}

uint64_t CloudLibrary.StatusObserver.status.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v1);

  return v1;
}

double sub_633248(void *a1)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E11578, &qword_B1E818);
  sub_AB54E0();
  swift_endAccess();
  return result;
}

uint64_t sub_6332C0(_BYTE *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E11A60, &unk_B1EE80);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin();
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  (v10)(&v12 - v8, a1, v3, v7);
  v10(v6, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E11578, &qword_B1E818);
  sub_AB54F0();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

double CloudLibrary.StatusObserver.$status.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E11578, &qword_B1E818);
  sub_AB54E0();
  swift_endAccess();
  return result;
}

float sub_6334B8(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtCO9MusicCore12CloudLibrary14StatusObserver_updateContext);
  if (a1 == 2)
  {
    if (v2 == 2)
    {
      return *&v6;
    }

    v3 = HIDWORD(v2);
    goto LABEL_4;
  }

  if (v2 == 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_AB5510(&v8);

    v5 = v8;
    swift_getKeyPath();
    swift_getKeyPath();
    v8 = 0x80000000;
    goto LABEL_8;
  }

  v3 = HIDWORD(v2);
  if (((v2 ^ a1) & 1) != 0 || (LODWORD(v6) = HIDWORD(v2), *(&a1 + 1) != *(&v2 + 1)))
  {
LABEL_4:
    if (v2)
    {
      v4 = (v3 << 32) | 0x40000001;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_AB5510(&v8);

      v5 = v8;
      swift_getKeyPath();
      swift_getKeyPath();
      v8 = v4;
LABEL_8:

      sub_AB5520();
      v6 = sub_632FC4(v5);
    }
  }

  return *&v6;
}

float (*sub_633654(void *a1))(uint64_t *a1)
{
  v2 = OBJC_IVAR____TtCO9MusicCore12CloudLibrary14StatusObserver_updateContext;
  *a1 = v1;
  a1[1] = v2;
  a1[2] = *(v1 + v2);
  return sub_633688;
}

float sub_633688(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = a1[2];
  v4 = *(*a1 + v1);
  *(v2 + v1) = v3;
  return sub_6334B8(v4);
}

void sub_6336B8()
{
  v1 = sub_AB7C10();
  v55 = *(v1 - 8);
  v56 = v1;
  __chkstk_darwin();
  v53 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_AB7C50();
  v52 = *(v54 - 8);
  __chkstk_darwin();
  v51 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_AB7BE0();
  v49 = *(v4 - 8);
  v50 = v4;
  __chkstk_darwin();
  v48 = (&v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v46 = (&v42 - v6);
  v47 = sub_AB7C80();
  v45 = *(v47 - 8);
  __chkstk_darwin();
  v44 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_ABA1D0();
  v43 = *(v8 - 8);
  __chkstk_darwin();
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_AB7C20();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = objc_opt_self();
  v16 = [v15 sharedCloudController];
  if (!v16)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v16;
  v18 = [v16 isUpdateInProgress];

  v19 = [v15 sharedCloudController];
  if (!v19)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v20 = v19;
  v21 = [v19 isInitialImport];

  v22 = v18 & v21;
  v23 = *(v0 + 88);
  if (v22 == 1)
  {
    if (!v23)
    {
      v24 = *(v0 + OBJC_IVAR____TtCO9MusicCore12CloudLibrary14StatusObserver_updateContext);
      *(v0 + OBJC_IVAR____TtCO9MusicCore12CloudLibrary14StatusObserver_updateContext) = 1;
      v42 = v0;
      sub_6334B8(v24);
      sub_13C80(0, &unk_E11A20, OS_dispatch_source_ptr);
      sub_13C80(0, &qword_E103C0, OS_dispatch_queue_ptr);
      (*(v12 + 104))(v14, enum case for DispatchQoS.QoSClass.userInteractive(_:), v11);
      v25 = sub_ABA190();
      (*(v12 + 8))(v14, v11);
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_63970C(&unk_E11A30, &type metadata accessor for OS_dispatch_source.TimerFlags, &protocol conformance descriptor for OS_dispatch_source.TimerFlags);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E13D80, &unk_B1EE70);
      sub_36A00(&unk_E11A40, &qword_E13D80, &unk_B1EE70, &protocol conformance descriptor for [A]);
      sub_ABABB0();
      v26 = sub_ABA1E0();

      (*(v43 + 8))(v10, v8);
      swift_getObjectType();
      v27 = v44;
      sub_AB7C70();
      v28 = v46;
      *v46 = 1;
      v30 = v49;
      v29 = v50;
      v31 = *(v49 + 104);
      v31(v28, enum case for DispatchTimeInterval.seconds(_:), v50);
      v32 = v48;
      *v48 = 1;
      v31(v32, enum case for DispatchTimeInterval.nanoseconds(_:), v29);
      sub_ABA3E0();
      v33 = *(v30 + 8);
      v33(v32, v29);
      v33(v28, v29);
      (*(v45 + 8))(v27, v47);
      v34 = v42;
      aBlock[4] = sub_639754;
      aBlock[5] = v42;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B5EB4;
      aBlock[3] = &block_descriptor_111;
      v35 = _Block_copy(aBlock);
      v36 = v34;

      v37 = v51;
      sub_6E3C8C(v38);
      v39 = v53;
      sub_6E3C90();
      sub_ABA1F0();
      _Block_release(v35);
      (*(v55 + 8))(v39, v56);
      (*(v52 + 8))(v37, v54);

      v40 = *(v34 + 88);
      *(v36 + 88) = v26;
      if (v40)
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        sub_ABA200();
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRetain();
      }

      sub_ABA210();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    *(v0 + 88) = 0;
    if (v23)
    {
      swift_getObjectType();
      sub_ABA200();
      swift_unknownObjectRelease();
    }

    v41 = *(v0 + OBJC_IVAR____TtCO9MusicCore12CloudLibrary14StatusObserver_updateContext);
    *(v0 + OBJC_IVAR____TtCO9MusicCore12CloudLibrary14StatusObserver_updateContext) = 2;

    sub_6334B8(v41);
  }
}

void sub_633E88(uint64_t a1)
{
  v2 = [objc_opt_self() sharedCloudController];
  if (v2)
  {
    v3 = v2;
    v5[4] = sub_63975C;
    v5[5] = a1;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 1107296256;
    v5[2] = sub_634330;
    v5[3] = &block_descriptor_114_1;
    v4 = _Block_copy(v5);

    [v3 loadCloudMusicLibraryUpdateProgressWithCompletionHandler:v4];
    _Block_release(v4);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_633F7C(float a1)
{
  v2 = sub_AB7C10();
  v14 = *(v2 - 8);
  __chkstk_darwin();
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_AB7C50();
  v5 = *(v13 - 8);
  __chkstk_darwin();
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_13C80(0, &qword_E103C0, OS_dispatch_queue_ptr);
  v8 = sub_ABA150();
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = a1;
  aBlock[4] = sub_63979C;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B5EB4;
  aBlock[3] = &block_descriptor_121_1;
  v11 = _Block_copy(aBlock);

  sub_AB7C30();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_63970C(&qword_E13D90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E11A50, &qword_B1C580);
  sub_36A00(&qword_E13DA0, &unk_E11A50, &qword_B1C580, &protocol conformance descriptor for [A]);
  sub_ABABB0();
  sub_ABA160();
  _Block_release(v11);

  (*(v14 + 8))(v4, v2);
  return (*(v5 + 8))(v7, v13);
}

void sub_63429C(uint64_t a1, float a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v4 = sub_633654(v5);
    if (*v3 != 2)
    {
      *(v3 + 4) = a2;
    }

    (v4)(v5, 0);
  }
}

double sub_634330(uint64_t a1, float a2)
{
  v3 = *(a1 + 32);

  v3(v4, a2);

  return result;
}

double sub_634384()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(v10);

  v1 = v10[0];
  swift_beginAccess();
  v3 = *(v0 + 64);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v3 + 32;

    do
    {
      sub_6383D0(v5, v8);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v6 = v9;
        ObjectType = swift_getObjectType();
        (*(v6 + 8))(v1, ObjectType, v6);
        swift_unknownObjectRelease();
      }

      sub_638408(v8);
      v5 += 16;
      --v4;
    }

    while (v4);
  }

  return result;
}

char *CloudLibrary.StatusObserver.deinit()
{
  v1 = *(v0 + 16);

  swift_unknownObjectRelease();
  v2 = OBJC_IVAR____TtCO9MusicCore12CloudLibrary14StatusObserver__status;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E11578, &qword_B1E818);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t CloudLibrary.StatusObserver.__deallocating_deinit()
{
  CloudLibrary.StatusObserver.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_6345A0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CloudLibrary.StatusObserver(0);
  result = sub_AB54A0();
  *a1 = result;
  return result;
}

uint64_t CloudLibrary.Status.message.getter(uint64_t a1)
{
  sub_AB35C0();
  __chkstk_darwin();
  v2 = sub_AB9250();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v7 = &v11[-v6];
  if (a1 >> 30 > 1 && (a1 - 0x80000000) < 3)
  {
    return 0;
  }

  sub_AB91E0();
  (*(v3 + 16))(v5, v7, v2);
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  v8 = qword_E71B20;
  sub_AB3550();
  v9 = sub_AB9320();
  (*(v3 + 8))(v7, v2);
  return v9;
}

uint64_t CloudLibrary.Status.actionTitle.getter(uint64_t a1)
{
  sub_AB35C0();
  __chkstk_darwin();
  v2 = sub_AB9250();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v7 = &v11[-v6];
  if (a1 >> 30 && (a1 >> 30 == 1 || a1 != 2147483651))
  {
    return 0;
  }

  sub_AB91E0();
  (*(v3 + 16))(v5, v7, v2);
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  v9 = qword_E71B20;
  sub_AB3550();
  v10 = sub_AB9320();
  (*(v3 + 8))(v7, v2);
  return v10;
}

BOOL static CloudLibrary.PresentationStyle.__derived_enum_equals(_:_:)(uint64_t a1, unint64_t a2)
{
  if (!a1)
  {
    return !a2;
  }

  if (a1 == 1)
  {
    return a2 == 1;
  }

  if (a2 < 2)
  {
    return 0;
  }

  sub_13C80(0, &qword_E112E0, NSObject_ptr);
  return sub_ABA790() & 1;
}

BOOL sub_634AF0(uint64_t *a1, unint64_t *a2)
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

  sub_13C80(0, &qword_E112E0, NSObject_ptr);
  return sub_ABA790() & 1;
}

void sub_634B7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  if (qword_E0CE00 != -1)
  {
    swift_once();
    v4 = a2;
  }

  CloudLibrary.StatusObserver.enableCloudLibrary(completion:)(v4, a3);
}

double sub_634BEC(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v6 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EEF0, &qword_B18ED0);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin();
  v12 = &v16 - v11;
  (*(v9 + 16))(&v16 - v11, a1, v8, v10);
  v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v14 = swift_allocObject();
  (*(v9 + 32))(v14 + v13, v12, v8);
  _s9MusicCore12CloudLibraryO07presentcD7Enabler7context18presentationSource5style10completionyAC17EnablementContextO_AA012PresentationI0VAC0N5StyleOySbcSgtFZ_0(v6, a3, a4, sub_639AFC, v14);

  return result;
}

void static CloudLibrary.presentCloudLibraryEnablerIfNeeded(context:presentationSource:style:cloudLibraryEnabledCompletion:)(uint64_t a1, uint64_t a2, char *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v9 = a1;
  if (qword_E0CC60 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v12);

  v20[4] = v16;
  v20[5] = v17;
  v20[6] = v18;
  v20[7] = v19;
  v20[0] = v12;
  v20[1] = v13;
  v20[2] = v14;
  v20[3] = v15;
  sub_70C54(v20);
  if (BYTE2(v20[0]))
  {
    if (!a4)
    {
      return;
    }

    v10 = 1;
LABEL_9:
    a4(v10);
    return;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(v11);

  v16 = v11[4];
  v17 = v11[5];
  v18 = v11[6];
  v19 = v11[7];
  v12 = v11[0];
  v13 = v11[1];
  v14 = v11[2];
  v15 = v11[3];
  sub_70C54(&v12);
  if ((BYTE9(v12) & 1) == 0)
  {
    if (!a4)
    {
      return;
    }

    v10 = 0;
    goto LABEL_9;
  }

  _s9MusicCore12CloudLibraryO07presentcD7Enabler7context18presentationSource5style10completionyAC17EnablementContextO_AA012PresentationI0VAC0N5StyleOySbcSgtFZ_0(v9, a2, a3, a4, a5);
}

uint64_t static CloudLibrary.presentCloudLibraryEnablerIfNeeded(context:presentationSource:style:)(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  *(v3 + 89) = a1;
  *(v3 + 32) = sub_AB9940();
  *(v3 + 40) = sub_AB9930();
  v5 = sub_AB98B0();
  *(v3 + 48) = v5;
  *(v3 + 56) = v4;

  return _swift_task_switch(sub_634FA4, v5, v4);
}

uint64_t sub_634FA4(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 16);
  v4 = *(v1 + 89);
  v5 = sub_AB9930();
  *(v1 + 64) = v5;
  v6 = swift_task_alloc();
  *(v1 + 72) = v6;
  *(v6 + 16) = v4;
  *(v6 + 24) = v3;
  *(v6 + 32) = v2;
  v7 = swift_task_alloc();
  *(v1 + 80) = v7;
  *v7 = v1;
  v7[1] = sub_6350C0;

  return withCheckedContinuation<A>(isolation:function:_:)(v1 + 88, v5, &protocol witness table for MainActor, 0xD000000000000045, 0x8000000000B6F340, sub_638F08, v6, &type metadata for Bool);
}

uint64_t sub_6350C0()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return _swift_task_switch(sub_635220, v3, v2);
}

uint64_t sub_635220()
{

  v1 = *(v0 + 88);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_635284(uint64_t a1, unsigned int a2, uint64_t a3, char *a4)
{
  v23 = a3;
  v24 = a4;
  v22 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EEF0, &qword_B18ED0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v8 = &v21[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v10 = &v21[-v9];
  v11 = __chkstk_darwin();
  v13 = &v21[-v12];
  v14 = *(v6 + 16);
  v14(&v21[-v12], a1, v5, v11);
  (v14)(v10, v13, v5);
  (v14)(v8, v13, v5);
  v15 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v16 = swift_allocObject();
  (*(v6 + 32))(v16 + v15, v13, v5);
  if (qword_E0CC60 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v26);

  v34[4] = v30;
  v34[5] = v31;
  v34[6] = v32;
  v34[7] = v33;
  v34[0] = v26;
  v34[1] = v27;
  v34[2] = v28;
  v34[3] = v29;
  sub_70C54(v34);
  if (BYTE2(v34[0]))
  {
    v17 = *(v6 + 8);
    v17(v10, v5);
    LOBYTE(v26) = 1;
    sub_AB98D0();

    return (v17)(v8, v5);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_AB5510(v25);

    v30 = v25[4];
    v31 = v25[5];
    v32 = v25[6];
    v33 = v25[7];
    v26 = v25[0];
    v27 = v25[1];
    v28 = v25[2];
    v29 = v25[3];
    sub_70C54(&v26);
    if (BYTE9(v26))
    {
      v20 = *(v6 + 8);
      v20(v10, v5);
      _s9MusicCore12CloudLibraryO07presentcD7Enabler7context18presentationSource5style10completionyAC17EnablementContextO_AA012PresentationI0VAC0N5StyleOySbcSgtFZ_0(v22, v23, v24, sub_6397AC, v16);

      return (v20)(v8, v5);
    }

    else
    {
      LOBYTE(v25[0]) = 0;
      sub_AB98D0();

      v19 = *(v6 + 8);
      v19(v8, v5);
      return (v19)(v10, v5);
    }
  }
}

char *sub_635638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + qword_E11798) = 0;
  type metadata accessor for EnableCloudLibraryView.Model(0);
  v13 = swift_allocObject();
  v14 = (v13 + OBJC_IVAR____TtCV9MusicCore22EnableCloudLibraryView5Model_dismiss);
  *v14 = 0;
  v14[1] = 0;
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = a3;
  v13[5] = a4;
  v13[6] = a5;
  v13[7] = a6;
  swift_beginAccess();
  sub_307CC(a5, a6);
  type metadata accessor for UIUserInterfaceSizeClass(0);
  sub_AB54D0();
  swift_endAccess();
  v15 = (v13 + OBJC_IVAR____TtCV9MusicCore22EnableCloudLibraryView5Model_dismiss);
  v16 = *(v13 + OBJC_IVAR____TtCV9MusicCore22EnableCloudLibraryView5Model_dismiss);
  v17 = *(v13 + OBJC_IVAR____TtCV9MusicCore22EnableCloudLibraryView5Model_dismiss + 8);
  *v15 = 0;
  v15[1] = 0;
  sub_17654(v16, v17);
  *(v6 + qword_E11790) = v13;
  sub_63970C(&qword_E11A70, type metadata accessor for EnableCloudLibraryView.Model, &unk_B1ED04);
  swift_retain_n();
  v32 = sub_AB5B50();
  v33 = v18;
  v19 = sub_AB64F0();
  v20 = *&v19[qword_E11790];
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = (v20 + OBJC_IVAR____TtCV9MusicCore22EnableCloudLibraryView5Model_dismiss);
  v23 = *(v20 + OBJC_IVAR____TtCV9MusicCore22EnableCloudLibraryView5Model_dismiss);
  v24 = *(v20 + OBJC_IVAR____TtCV9MusicCore22EnableCloudLibraryView5Model_dismiss + 8);
  *v22 = sub_6397F4;
  v22[1] = v21;
  v25 = v19;

  sub_17654(v23, v24);

  sub_635C28();
  v26 = [v25 presentingViewController];
  if (v26)
  {
    v27 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A78, &unk_B1EE90);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_AF4EC0;
    *(v28 + 32) = sub_AB5080();
    *(v28 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
    sub_ABA070();
    swift_unknownObjectRelease();
  }

  v29 = [v25 presentationController];

  if (v29)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A78, &unk_B1EE90);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_AF4EC0;
    *(v30 + 32) = sub_AB5080();
    *(v30 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
    sub_ABA3F0();

    sub_17654(a5, a6);
    swift_unknownObjectRelease();
  }

  else
  {

    sub_17654(a5, a6);
  }

  return v25;
}

void sub_635970(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_6359D4(uint64_t a1)
{
  *(a1 + qword_E11798) = 0;
  sub_ABAFD0();
  __break(1u);
}

void sub_635A3C(void *a1)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for CloudLibraryViewController(0);
  v1 = v5.receiver;
  objc_msgSendSuper2(&v5, "viewDidLoad");
  v2 = [v1 navigationItem];
  v3 = sub_635B04();
  [v2 setLeftBarButtonItem:v3];

  v4 = [v1 navigationItem];
  [v4 setLargeTitleDisplayMode:2];
}

objc_class *sub_635B04()
{
  v1 = qword_E11798;
  v2 = *(v0 + qword_E11798);
  if (v2)
  {
    v3 = *(v0 + qword_E11798);
  }

  else
  {
    sub_13C80(0, &unk_E11A10, UIBarButtonItem_ptr);
    sub_13C80(0, &qword_E0E1D0, UIAction_ptr);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v4 = v0;
    v9.value.super.super.isa = sub_ABA7D0();
    v9.is_nil = 0;
    v5.super.super.isa = sub_AB9F90(UIBarButtonSystemItemClose, v9, v10).super.super.isa;
    v6 = *(v0 + v1);
    *(v4 + v1) = v5;
    v3 = v5.super.super.isa;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

void sub_635C28()
{
  v1 = [v0 presentingViewController];
  if (v1 && (v2 = v1, v3 = [v1 traitCollection], v2, v3) || (v4 = objc_msgSend(v0, "presentationController")) != 0 && (v5 = v4, v3 = objc_msgSend(v4, "traitCollection"), v5, v3))
  {

    [v3 horizontalSizeClass];
    swift_getKeyPath();
    swift_getKeyPath();
    sub_AB5520();
  }
}

void sub_635D30(void *a1)
{
  v1 = a1;
  sub_635C28();
}

void sub_635D78()
{

  v1 = *(v0 + qword_E11798);
}

id sub_635DB8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CloudLibraryViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_635DF0(uint64_t a1)
{

  v2 = *(a1 + qword_E11798);
}

uint64_t sub_635E3C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v1);

  return v1;
}

uint64_t sub_635F10()
{

  sub_17654(*(v0 + 48), *(v0 + 56));
  v1 = OBJC_IVAR____TtCV9MusicCore22EnableCloudLibraryView5Model__horizontalSizeClass;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A08, &qword_B1EE68);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_17654(*(v0 + OBJC_IVAR____TtCV9MusicCore22EnableCloudLibraryView5Model_dismiss), *(v0 + OBJC_IVAR____TtCV9MusicCore22EnableCloudLibraryView5Model_dismiss + 8));

  return swift_deallocClassInstance();
}

uint64_t sub_635FE4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for EnableCloudLibraryView.Model(0);
  result = sub_AB54A0();
  *a1 = result;
  return result;
}

uint64_t sub_636024@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11928, &qword_B1ED40);
  __chkstk_darwin();
  v7 = &v33 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11930, &qword_B1ED48) - 8;
  __chkstk_darwin();
  v10 = &v33 - v9;
  *v7 = sub_AB6A70();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11938, &qword_B1ED50);
  sub_6362BC(a1, a2, &v7[*(v11 + 44)]);
  v12 = sub_AB6A90();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v34);

  sub_AB5690();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  sub_36B0C(v7, v10, &qword_E11928, &qword_B1ED40);
  v21 = &v10[*(v8 + 44)];
  *v21 = v12;
  *(v21 + 1) = v14;
  *(v21 + 2) = v16;
  *(v21 + 3) = v18;
  *(v21 + 4) = v20;
  v21[40] = 0;
  v22 = sub_AB6AC0();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v34);

  sub_AB5690();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  sub_36B0C(v10, a3, &qword_E11930, &qword_B1ED48);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11940, &qword_B1EDA0);
  v32 = a3 + *(result + 36);
  *v32 = v22;
  *(v32 + 8) = v24;
  *(v32 + 16) = v26;
  *(v32 + 24) = v28;
  *(v32 + 32) = v30;
  *(v32 + 40) = 0;
  return result;
}

uint64_t sub_6362BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11948, &qword_B1EDA8);
  __chkstk_darwin();
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v25 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11950, &qword_B1EDB0);
  __chkstk_darwin();
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v25 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11958, &qword_B1EDB8);
  __chkstk_darwin();
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v25 - v15;
  *v16 = sub_AB6440();
  *(v16 + 1) = 0;
  v16[16] = 1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11960, &qword_B1EDC0);
  sub_636658(a1, a2, &v16[*(v17 + 44)]);
  *v12 = sub_AB6440();
  *(v12 + 1) = 0;
  v12[16] = 1;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11968, &qword_B1EDC8);
  sub_636C18(a1, a2, &v12[*(v18 + 44)]);
  *v8 = sub_AB6440();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11970, &qword_B1EDD0);
  sub_637308(a1, a2, &v8[*(v19 + 44)]);
  v20 = v14;
  v25 = v14;
  sub_15F84(v16, v14, &qword_E11958, &qword_B1EDB8);
  sub_15F84(v12, v10, &qword_E11950, &qword_B1EDB0);
  v21 = v6;
  sub_15F84(v8, v6, &qword_E11948, &qword_B1EDA8);
  v22 = v26;
  sub_15F84(v20, v26, &qword_E11958, &qword_B1EDB8);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11978, &qword_B1EDD8);
  sub_15F84(v10, v22 + *(v23 + 48), &qword_E11950, &qword_B1EDB0);
  sub_15F84(v21, v22 + *(v23 + 64), &qword_E11948, &qword_B1EDA8);
  sub_12E1C(v8, &qword_E11948, &qword_B1EDA8);
  sub_12E1C(v12, &qword_E11950, &qword_B1EDB0);
  sub_12E1C(v16, &qword_E11958, &qword_B1EDB8);
  sub_12E1C(v21, &qword_E11948, &qword_B1EDA8);
  sub_12E1C(v10, &qword_E11950, &qword_B1EDB0);
  return sub_12E1C(v25, &qword_E11958, &qword_B1EDB8);
}

uint64_t sub_636658@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_AB6900();
  v7 = *(v6 - 8);
  v35 = v6;
  v36 = v7;
  __chkstk_darwin();
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11980, &qword_B1EDE0);
  v34 = *(v10 - 8);
  __chkstk_darwin();
  v12 = &v30 - v11;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11988, &qword_B1EDE8);
  v38 = *(v33 - 8);
  __chkstk_darwin();
  v32 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v37 = &v30 - v14;
  v40 = sub_AB6440();
  v42 = 0;
  sub_637B30(&v52);
  v45 = *&v53[16];
  v46 = *&v53[32];
  v47[0] = *&v53[48];
  *(v47 + 9) = *&v53[57];
  v43 = v52;
  v44 = *v53;
  *(v49 + 9) = *&v53[57];
  v48[2] = *&v53[16];
  v48[3] = *&v53[32];
  v49[0] = *&v53[48];
  v48[0] = v52;
  v48[1] = *v53;
  sub_15F84(&v43, &v50, &qword_E119F0, &qword_B1EE20);
  sub_12E1C(v48, &qword_E119F0, &qword_B1EE20);
  *(&v41[2] + 7) = v45;
  *(&v41[3] + 7) = v46;
  *(&v41[4] + 7) = v47[0];
  v41[5] = *(v47 + 9);
  *(v41 + 7) = v43;
  *(&v41[1] + 7) = v44;
  v39 = v42;
  v31 = sub_AB75A0();
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E119B0, &qword_B1EE08);
  sub_639538();
  sub_AB7690();
  sub_AB68F0();
  sub_36A00(&qword_E119D0, &qword_E11980, &qword_B1EDE0, &protocol conformance descriptor for Button<A>);
  sub_63970C(&qword_E119D8, &type metadata accessor for BorderedProminentButtonStyle, &protocol conformance descriptor for BorderedProminentButtonStyle);
  v16 = v37;
  v17 = v35;
  sub_AB6FB0();
  (*(v36 + 8))(v9, v17);
  (*(v34 + 8))(v12, v10);
  v18 = *(v38 + 16);
  v19 = v32;
  v20 = v33;
  v18(v32, v16, v33);
  *&v50 = v40;
  *(&v50 + 1) = 0x4020000000000000;
  v51[0] = v39;
  *&v51[1] = v41[0];
  *&v51[17] = v41[1];
  *&v51[33] = v41[2];
  *&v51[81] = v41[5];
  *&v51[65] = v41[4];
  *&v51[49] = v41[3];
  v21 = v50;
  v22 = *v51;
  v23 = *&v51[32];
  *(a3 + 32) = *&v51[16];
  *(a3 + 48) = v23;
  *a3 = v21;
  *(a3 + 16) = v22;
  v24 = *&v51[48];
  v25 = *&v51[64];
  v26 = *&v51[80];
  *(a3 + 112) = v51[96];
  *(a3 + 80) = v25;
  *(a3 + 96) = v26;
  *(a3 + 64) = v24;
  *(a3 + 120) = 0;
  *(a3 + 128) = 1;
  *(a3 + 136) = v31;
  *(a3 + 144) = 0;
  *(a3 + 152) = 1;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A00, &qword_B1EE60);
  v18((a3 + *(v27 + 96)), v19, v20);
  sub_15F84(&v50, &v52, &qword_E119A0, &qword_B1EE00);
  v28 = *(v38 + 8);

  v28(v37, v20);
  v28(v19, v20);

  *&v53[33] = v41[2];
  *&v53[49] = v41[3];
  *&v53[65] = v41[4];
  v54 = v41[5];
  *&v53[1] = v41[0];
  *&v52 = v40;
  *(&v52 + 1) = 0x4020000000000000;
  v53[0] = v39;
  *&v53[17] = v41[1];
  return sub_12E1C(&v52, &qword_E119A0, &qword_B1EE00);
}

uint64_t sub_636C18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v49 = sub_AB6900();
  v51 = *(v49 - 8);
  __chkstk_darwin();
  v43 = v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11980, &qword_B1EDE0);
  v46 = *(v44 - 8);
  __chkstk_darwin();
  v8 = v40 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11988, &qword_B1EDE8);
  v52 = *(v9 - 8);
  v53 = v9;
  __chkstk_darwin();
  v42 = v40 - v10;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11990, &qword_B1EDF0) - 8;
  __chkstk_darwin();
  v50 = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = v40 - v12;
  __chkstk_darwin();
  v45 = v40 - v14;
  v47 = sub_AB6440();
  v59 = 0;
  sub_637B30(&v56);
  v62 = *&v57[2];
  v63 = *&v57[4];
  v64[0] = *&v57[6];
  *(v64 + 9) = *(&v57[7] + 1);
  v60 = v56;
  v61 = *v57;
  *(v66 + 9) = *(&v57[7] + 1);
  v65[2] = *&v57[2];
  v65[3] = *&v57[4];
  v66[0] = *&v57[6];
  v65[0] = v56;
  v65[1] = *v57;
  sub_15F84(&v60, &v54, &qword_E119F0, &qword_B1EE20);
  sub_12E1C(v65, &qword_E119F0, &qword_B1EE20);
  *(&v58[2] + 7) = v62;
  *(&v58[3] + 7) = v63;
  *(&v58[4] + 7) = v64[0];
  v58[5] = *(v64 + 9);
  *(v58 + 7) = v60;
  *(&v58[1] + 7) = v61;
  v41 = v59;
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  v40[1] = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E119B0, &qword_B1EE08);
  sub_639538();
  sub_AB7690();
  v16 = v43;
  sub_AB68F0();
  sub_36A00(&qword_E119D0, &qword_E11980, &qword_B1EDE0, &protocol conformance descriptor for Button<A>);
  sub_63970C(&qword_E119D8, &type metadata accessor for BorderedProminentButtonStyle, &protocol conformance descriptor for BorderedProminentButtonStyle);
  v17 = v42;
  v18 = v44;
  v19 = v49;
  sub_AB6FB0();
  (*(v51 + 8))(v16, v19);
  (*(v46 + 8))(v8, v18);
  LOBYTE(v8) = sub_AB6AB0();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v56);

  sub_AB5690();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  (*(v52 + 32))(v13, v17, v53);
  v28 = &v13[*(v48 + 44)];
  *v28 = v8;
  *(v28 + 1) = v21;
  *(v28 + 2) = v23;
  *(v28 + 3) = v25;
  *(v28 + 4) = v27;
  v28[40] = 0;
  v29 = v45;
  sub_36B0C(v13, v45, &qword_E11990, &qword_B1EDF0);
  v30 = v50;
  sub_15F84(v29, v50, &qword_E11990, &qword_B1EDF0);
  v31 = v47;
  *&v54 = v47;
  *(&v54 + 1) = 0x4020000000000000;
  LOBYTE(a2) = v41;
  v55[0] = v41;
  *&v55[1] = v58[0];
  *&v55[17] = v58[1];
  *&v55[33] = v58[2];
  *&v55[81] = v58[5];
  *&v55[65] = v58[4];
  *&v55[49] = v58[3];
  v32 = v54;
  v33 = *v55;
  v34 = *&v55[32];
  *(a3 + 32) = *&v55[16];
  *(a3 + 48) = v34;
  *a3 = v32;
  *(a3 + 16) = v33;
  v35 = *&v55[48];
  v36 = *&v55[64];
  v37 = *&v55[80];
  *(a3 + 112) = v55[96];
  *(a3 + 80) = v36;
  *(a3 + 96) = v37;
  *(a3 + 64) = v35;
  *(a3 + 120) = 0;
  *(a3 + 128) = 1;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E119F8, &qword_B1EE58);
  sub_15F84(v30, a3 + *(v38 + 64), &qword_E11990, &qword_B1EDF0);
  sub_15F84(&v54, &v56, &qword_E119A0, &qword_B1EE00);
  sub_12E1C(v29, &qword_E11990, &qword_B1EDF0);
  sub_12E1C(v30, &qword_E11990, &qword_B1EDF0);
  *(&v57[4] + 1) = v58[2];
  *(&v57[6] + 1) = v58[3];
  *(&v57[8] + 1) = v58[4];
  *(&v57[10] + 1) = v58[5];
  *(v57 + 1) = v58[0];
  *&v56 = v31;
  *(&v56 + 1) = 0x4020000000000000;
  LOBYTE(v57[0]) = a2;
  *(&v57[2] + 1) = v58[1];
  return sub_12E1C(&v56, &qword_E119A0, &qword_B1EE00);
}

uint64_t sub_637308@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v59 = a3;
  v5 = sub_AB6900();
  v6 = *(v5 - 8);
  v54 = v5;
  v55 = v6;
  __chkstk_darwin();
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11980, &qword_B1EDE0);
  v52 = *(v50 - 8);
  __chkstk_darwin();
  v10 = &v44 - v9;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11988, &qword_B1EDE8);
  v56 = *(v58 - 8);
  __chkstk_darwin();
  v46 = &v44 - v11;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11990, &qword_B1EDF0) - 8;
  __chkstk_darwin();
  v57 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v44 - v13;
  __chkstk_darwin();
  v51 = &v44 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11998, &qword_B1EDF8);
  v48 = *(v16 - 8);
  v49 = v16;
  __chkstk_darwin();
  v47 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v45 = &v44 - v18;
  sub_AB6A70();
  v60 = a1;
  v61 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E119A0, &qword_B1EE00);
  sub_36A00(&qword_E119A8, &qword_E119A0, &qword_B1EE00, &protocol conformance descriptor for VStack<A>);
  sub_AB5710();
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E119B0, &qword_B1EE08);
  sub_639538();
  sub_AB7690();
  sub_AB68F0();
  sub_36A00(&qword_E119D0, &qword_E11980, &qword_B1EDE0, &protocol conformance descriptor for Button<A>);
  sub_63970C(&qword_E119D8, &type metadata accessor for BorderedProminentButtonStyle, &protocol conformance descriptor for BorderedProminentButtonStyle);
  v20 = v46;
  v21 = v50;
  v22 = v54;
  sub_AB6FB0();
  (*(v55 + 8))(v8, v22);
  (*(v52 + 8))(v10, v21);
  LOBYTE(v8) = sub_AB6AB0();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v62);

  sub_AB5690();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  (*(v56 + 32))(v14, v20, v58);
  v31 = &v14[*(v53 + 44)];
  *v31 = v8;
  *(v31 + 1) = v24;
  *(v31 + 2) = v26;
  *(v31 + 3) = v28;
  *(v31 + 4) = v30;
  v31[40] = 0;
  v32 = v51;
  sub_36B0C(v14, v51, &qword_E11990, &qword_B1EDF0);
  v34 = v48;
  v33 = v49;
  v35 = *(v48 + 16);
  v36 = v47;
  v37 = v45;
  v35(v47, v45, v49);
  v38 = v57;
  sub_15F84(v32, v57, &qword_E11990, &qword_B1EDF0);
  v39 = v59;
  v35(v59, v36, v33);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E119E0, &qword_B1EE18);
  v41 = &v39[*(v40 + 48)];
  *v41 = 0;
  v41[8] = 1;
  sub_15F84(v38, &v39[*(v40 + 64)], &qword_E11990, &qword_B1EDF0);
  sub_12E1C(v32, &qword_E11990, &qword_B1EDF0);
  v42 = *(v34 + 8);
  v42(v37, v33);
  sub_12E1C(v38, &qword_E11990, &qword_B1EDF0);
  return (v42)(v36, v33);
}

double sub_6379E0@<D0>(uint64_t a3@<X8>)
{
  v4 = sub_AB6440();
  v17 = 0;
  sub_637B30(&v11);
  v20 = v13;
  v21 = v14;
  v22[0] = v15[0];
  *(v22 + 9) = *(v15 + 9);
  v18 = v11;
  v19 = v12;
  *(v24 + 9) = *(v15 + 9);
  v23[2] = v13;
  v23[3] = v14;
  v24[0] = v15[0];
  v23[0] = v11;
  v23[1] = v12;
  sub_15F84(&v18, &v10, &qword_E119F0, &qword_B1EE20);
  sub_12E1C(v23, &qword_E119F0, &qword_B1EE20);
  *&v16[39] = v20;
  *&v16[55] = v21;
  *&v16[71] = v22[0];
  *&v16[80] = *(v22 + 9);
  *&v16[7] = v18;
  *&v16[23] = v19;
  v5 = *&v16[48];
  *(a3 + 49) = *&v16[32];
  *(a3 + 65) = v5;
  v6 = *&v16[80];
  *(a3 + 81) = *&v16[64];
  *(a3 + 97) = v6;
  result = *&v16[16];
  v8 = *v16;
  *(a3 + 33) = *&v16[16];
  v9 = v17;
  *a3 = v4;
  *(a3 + 8) = 0x4020000000000000;
  *(a3 + 16) = v9;
  *(a3 + 17) = v8;
  return result;
}

double sub_637B30@<D0>(uint64_t a2@<X8>)
{
  sub_4FD6CC();

  v3 = sub_AB6F20();
  v5 = v4;
  v7 = v6;
  sub_AB6B60();
  v8 = sub_AB6E80();
  v10 = v9;
  v12 = v11;

  sub_36B74(v3, v5, v7 & 1);

  sub_AB6BD0();
  v13 = sub_AB6E00();
  v37 = v14;
  v38 = v13;
  v36 = v15;
  v39 = v16;
  sub_36B74(v8, v10, v12 & 1);

  KeyPath = swift_getKeyPath();

  v17 = sub_AB6F20();
  v19 = v18;
  LOBYTE(v10) = v20;
  sub_AB6C50();
  v21 = sub_AB6E80();
  v23 = v22;
  v25 = v24;

  sub_36B74(v17, v19, v10 & 1);

  sub_AB6730();
  v26 = sub_AB6E20();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  sub_36B74(v21, v23, v25 & 1);

  v33 = swift_getKeyPath();
  *a2 = v38;
  *(a2 + 8) = v37;
  *(a2 + 16) = v36 & 1;
  *(a2 + 24) = v39;
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = 1;
  *(a2 + 48) = v26;
  *(a2 + 56) = v28;
  *(a2 + 64) = v30 & 1;
  *(a2 + 72) = v32;
  *(a2 + 80) = v33;
  *(a2 + 88) = 1;
  sub_AFF30(v38, v37, v36 & 1);

  sub_AFF30(v26, v28, v30 & 1);

  sub_36B74(v26, v28, v30 & 1);

  sub_36B74(v38, v37, v36 & 1);

  return result;
}

void sub_637E0C(uint64_t a1, uint64_t a2)
{
  if (qword_E0CE00 != -1)
  {
    swift_once();
  }

  CloudLibrary.StatusObserver.enableCloudLibrary(completion:)(*(a2 + 48), *(a2 + 56));
  v3 = a2 + OBJC_IVAR____TtCV9MusicCore22EnableCloudLibraryView5Model_dismiss;
  v4 = *(a2 + OBJC_IVAR____TtCV9MusicCore22EnableCloudLibraryView5Model_dismiss);
  if (v4)
  {
    v5 = *(v3 + 8);

    v4(v6);

    sub_17654(v4, v5);
  }
}

__n128 sub_637EB8@<Q0>(uint64_t a1@<X8>)
{
  if (qword_E0CDF8 != -1)
  {
    swift_once();
  }

  v24 = static CloudLibrary.EnablementContext.action;
  sub_4FD6CC();

  v2 = sub_AB6F20();
  v4 = v3;
  v6 = v5;
  v7 = sub_AB6E70();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  sub_36B74(v2, v4, v6 & 1);

  LOBYTE(v2) = sub_AB6B00();
  sub_AB5690();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  sub_AB7A30();
  sub_AB5E90();
  *&v23[55] = v27;
  *&v23[71] = v28;
  *&v23[87] = v29;
  *&v23[103] = v30;
  *&v23[7] = v24;
  *&v23[23] = v25;
  *&v23[39] = v26;
  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v13;
  *(a1 + 32) = v2;
  *(a1 + 40) = v15;
  *(a1 + 48) = v17;
  *(a1 + 56) = v19;
  *(a1 + 64) = v21;
  *(a1 + 72) = 0;
  *(a1 + 137) = *&v23[64];
  *(a1 + 153) = *&v23[80];
  *(a1 + 169) = *&v23[96];
  *(a1 + 184) = *(&v30 + 1);
  *(a1 + 73) = *v23;
  *(a1 + 89) = *&v23[16];
  result = *&v23[32];
  *(a1 + 105) = *&v23[32];
  *(a1 + 121) = *&v23[48];
  return result;
}

uint64_t sub_6380B4()
{
  v0 = sub_AB4BC0();
  __swift_allocate_value_buffer(v0, qword_E11540);
  __swift_project_value_buffer(v0, qword_E11540);
  return sub_AB4BB0();
}

void sub_638134(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v3);

  *a2 = v3;
}

uint64_t sub_6381B4(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_AB5520();
}

BOOL _s9MusicCore12CloudLibraryO6StatusO21__derived_enum_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if (a1 >> 30)
  {
    if (a1 >> 30 == 1)
    {
      if ((a2 & 0xC0000000) == 0x40000000)
      {
        return (*(&a1 + 1) == *(&a2 + 1)) & (a2 ^ a1 ^ 1);
      }

      return 0;
    }

    if (a1 <= 2147483649)
    {
      if (a1 == 0x80000000)
      {
        return a2 == 0x80000000;
      }

      else
      {
        return a2 == 2147483649;
      }
    }

    else if (a1 == 2147483650)
    {
      return a2 == 2147483650;
    }

    else
    {
      if (a1 == 2147483651)
      {
        return a2 == 2147483651;
      }

      return a2 == 2147483652;
    }
  }

  else
  {
    if ((a2 & 0xC0000000) != 0)
    {
      return 0;
    }

    return a1 == a2;
  }
}

uint64_t _s9MusicCore12CloudLibraryO11FailureTypeO8rawValueAESgSi_tcfC_0(unint64_t a1)
{
  if (a1 > 0xFFFFFFFFFFFFFFF9)
  {
    return ~a1;
  }

  else
  {
    return 6;
  }
}

uint64_t sub_63834C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

double block_copy_helper_186(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void _s9MusicCore12CloudLibraryO07presentcD7Enabler7context18presentationSource5style10completionyAC17EnablementContextO_AA012PresentationI0VAC0N5StyleOySbcSgtFZ_0(unsigned __int8 a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v79 = a2;
  sub_AB35C0();
  __chkstk_darwin();
  v77[1] = v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_AB9250();
  v77[0] = *(v10 - 8);
  __chkstk_darwin();
  v12 = v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = v77 - v13;
  v15 = CloudLibrary.EnablementContext.title.getter(a1);
  v17 = v16;
  v18 = CloudLibrary.EnablementContext.message.getter(a1);
  v20 = v19;
  v78 = a3;
  if (a3)
  {
    v21 = sub_AB9260();

    v22 = sub_AB9260();

    v23 = [objc_opt_self() alertControllerWithTitle:v21 message:v22 preferredStyle:1];

    sub_AB91E0();
    v24 = v77[0];
    (*(v77[0] + 16))(v12, v14, v10);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v25 = qword_E71B20;
    sub_AB3550();
    sub_AB9320();
    (*(v24 + 8))(v14, v10);
    v26 = swift_allocObject();
    *(v26 + 16) = a4;
    *(v26 + 24) = a5;
    v27 = a5;
    sub_307CC(a4, a5);
    v28 = sub_AB9260();

    v84 = sub_6397B4;
    v85 = v26;
    aBlock = _NSConcreteStackBlock;
    v81 = 1107296256;
    v82 = sub_1546C;
    v83 = &block_descriptor_130_1;
    v29 = _Block_copy(&aBlock);

    v30 = objc_opt_self();
    v31 = [v30 actionWithTitle:v28 style:1 handler:v29];
    _Block_release(v29);

    [v23 addAction:v31];
    if (qword_E0CDF8 != -1)
    {
      swift_once();
    }

    v32 = swift_allocObject();
    *(v32 + 16) = a4;
    *(v32 + 24) = v27;
    sub_307CC(a4, v27);
    v33 = sub_AB9260();
    v84 = sub_6397E8;
    v85 = v32;
    aBlock = _NSConcreteStackBlock;
    v81 = 1107296256;
    v82 = sub_1546C;
    v83 = &block_descriptor_136;
    v34 = _Block_copy(&aBlock);

    v35 = [v30 actionWithTitle:v33 style:0 handler:v34];
    _Block_release(v34);

    [v23 addAction:v35];
    v36 = v78;
    v37 = v79;
    if (v78 != &dword_0 + 1)
    {
      v38 = v78;
      [v23 setPreferredStyle:0];
      [v38 bounds];
      v40 = v39;
      v42 = v41;
      v44 = v43;
      v46 = v45;
      v47 = [v23 popoverPresentationController];
      if (v47)
      {
        v48 = v47;
        [v47 setSourceView:v38];
        [v48 setSourceRect:{v40, v42, v44, v46}];
        sub_31838(v36);
        [v48 setPermittedArrowDirections:15];
      }

      sub_31838(v36);
    }

    v49 = *(v37 + 80);
    if (v49)
    {
      v50 = *(v37 + 88);
      v51 = qword_E0CF08;

      if (v51 != -1)
      {
        swift_once();
      }

      v52 = sub_AB4BC0();
      __swift_project_value_buffer(v52, qword_E14920);
      v53 = sub_AB4BA0();
      v54 = sub_AB9F50();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        *v55 = 0;
        _os_log_impl(&dword_0, v53, v54, "Deferring presentation…", v55, 2u);
      }

      v56 = objc_allocWithZone(MSVBlockGuard);
      v84 = sub_71E354;
      v85 = 0;
      aBlock = _NSConcreteStackBlock;
      v81 = 1107296256;
      v82 = sub_71F2F4;
      v83 = &block_descriptor_139;
      v57 = _Block_copy(&aBlock);
      v58 = [v56 initWithTimeout:v57 interruptionHandler:10.0];
      _Block_release(v57);

      sub_15F28(v37, &aBlock);
      v59 = swift_allocObject();
      *(v59 + 16) = v58;
      sub_17704(&aBlock, v59 + 24);
      *(v59 + 120) = v23;
      *(v59 + 128) = 1;
      *(v59 + 129) = v36 != &dword_0 + 1;
      *(v59 + 136) = 0;
      *(v59 + 144) = 0;
      v60 = v58;
      v61 = v23;
      v49(v37, v61, sub_5487D4, v59);
      sub_17654(v49, v50);

LABEL_22:

      return;
    }

    sub_71C834(v23, &dword_0 + 1, (v36 != &dword_0 + 1), 0, 0);
  }

  else
  {
    objc_allocWithZone(type metadata accessor for CloudLibraryViewController(0));
    sub_307CC(a4, a5);
    v62 = sub_635638(v15, v17, v18, v20, a4, a5);
    v78 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v62];
    [v78 setModalPresentationStyle:2];
    [v78 setModalPresentationCapturesStatusBarAppearance:1];
    v63 = v79;
    v64 = *(v79 + 80);
    if (v64)
    {
      v65 = *(v79 + 88);
      v66 = qword_E0CF08;

      if (v66 != -1)
      {
        swift_once();
      }

      v67 = sub_AB4BC0();
      __swift_project_value_buffer(v67, qword_E14920);
      v68 = sub_AB4BA0();
      v69 = sub_AB9F50();
      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        *v70 = 0;
        _os_log_impl(&dword_0, v68, v69, "Deferring presentation…", v70, 2u);
      }

      v71 = objc_allocWithZone(MSVBlockGuard);
      v84 = sub_71E354;
      v85 = 0;
      aBlock = _NSConcreteStackBlock;
      v81 = 1107296256;
      v82 = sub_71F2F4;
      v83 = &block_descriptor_145_3;
      v72 = _Block_copy(&aBlock);
      v73 = [v71 initWithTimeout:v72 interruptionHandler:10.0];
      _Block_release(v72);

      sub_15F28(v63, &aBlock);
      v74 = swift_allocObject();
      *(v74 + 16) = v73;
      sub_17704(&aBlock, v74 + 24);
      *(v74 + 120) = v78;
      *(v74 + 128) = 256;
      *(v74 + 136) = 0;
      *(v74 + 144) = 0;
      v60 = v73;
      v75 = v78;
      v64(v63, v75, sub_5488D0, v74);
      sub_17654(v64, v65);

      goto LABEL_22;
    }

    sub_71C834(v78, 0, &dword_0 + 1, 0, 0);

    v76 = v78;
  }
}

unint64_t sub_638F18()
{
  result = qword_E11588;
  if (!qword_E11588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E11588);
  }

  return result;
}

unint64_t sub_638F70()
{
  result = qword_E11590;
  if (!qword_E11590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E11590);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CloudLibrary.Status(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x1FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 536870910);
  }

  if ((((*a1 >> 1) & 0x1FFFFFFC | (*a1 >> 30)) ^ 0x1FFFFFFFu) >= 0x1FFFFFFD)
  {
    v3 = -1;
  }

  else
  {
    v3 = ((*a1 >> 1) & 0x1FFFFFFC | (*a1 >> 30)) ^ 0x1FFFFFFF;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for CloudLibrary.Status(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1FFFFFFD)
  {
    *result = a2 - 536870910;
    if (a3 >= 0x1FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = 8 * ((-a2 >> 2) & 0x7FFFFFF) - (a2 << 30);
    }
  }

  return result;
}

uint64_t sub_6390BC(void *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 30;
  }

  else
  {
    return ((*a1 >> 29) & 0xFFFFFFF8 | *a1 & 7) + 2;
  }
}

unint64_t *sub_6390EC(unint64_t *result, unsigned int a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xFFFFFFFF00000007 | (a2 << 30);
  }

  else
  {
    *result = ((a2 - 2) | ((a2 - 2) << 29)) & 0xFFFFFFFF00000007 | 0x80000000;
  }

  return result;
}

void sub_639168(uint64_t a1)
{
  sub_639238();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_639238()
{
  if (!qword_E115D0)
  {
    v0 = sub_AB5540();
    if (!v1)
    {
      atomic_store(v0, &qword_E115D0);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_9MusicCore12CloudLibraryO17PresentationStyleO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_639358(uint64_t a1)
{
  sub_639400(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_639400(uint64_t a1)
{
  if (!qword_E11840)
  {
    type metadata accessor for UIUserInterfaceSizeClass(255);
    v1 = sub_AB5540();
    if (!v2)
    {
      atomic_store(v1, &qword_E11840);
    }
  }
}

uint64_t sub_639468(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  if ((*(a1 + 8) & 0xF000000000000007) != 0)
  {
    v2 = *a1 & 0x7FFFFFFF;
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_6394B4(uint64_t result, int a2, int a3)
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
      *(result + 8) = 1;
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

unint64_t sub_639538()
{
  result = qword_E119B8;
  if (!qword_E119B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E119B0, &qword_B1EE08);
    sub_6395C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E119B8);
  }

  return result;
}

unint64_t sub_6395C4()
{
  result = qword_E119C0;
  if (!qword_E119C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E119C8, &qword_B1EE10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E119C0);
  }

  return result;
}

uint64_t sub_639648@<X0>(_BYTE *a1@<X8>)
{
  result = sub_AB6100();
  *a1 = result;
  return result;
}

uint64_t sub_63969C()
{

  return swift_deallocObject();
}

uint64_t sub_6396D4()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_63970C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_639764()
{

  return swift_deallocObject();
}

uint64_t sub_6397B4()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1(0);
  }

  return result;
}

uint64_t sub_6397FC()
{

  return swift_deallocObject();
}

uint64_t sub_63985C()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_123Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EEF0, &qword_B18ED0);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

unint64_t sub_639948()
{
  result = qword_E11A88;
  if (!qword_E11A88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E11940, &qword_B1EDA0);
    sub_6399D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E11A88);
  }

  return result;
}

unint64_t sub_6399D4()
{
  result = qword_E11A90;
  if (!qword_E11A90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E11930, &qword_B1ED48);
    sub_36A00(&qword_E11A98, &qword_E11928, &qword_B1ED40, &protocol conformance descriptor for ViewThatFits<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E11A90);
  }

  return result;
}

uint64_t sub_639B00(uint64_t a1, char a2)
{
  *(v3 + 2217) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340, &qword_B18550);
  *(v3 + 2096) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E210, &qword_B16F00);
  *(v3 + 2104) = swift_task_alloc();
  v4 = sub_AB4BC0();
  *(v3 + 2112) = v4;
  *(v3 + 2120) = *(v4 - 8);
  *(v3 + 2128) = swift_task_alloc();
  *(v3 + 2136) = swift_task_alloc();
  *(v3 + 2144) = swift_task_alloc();
  *(v3 + 2152) = swift_task_alloc();
  *(v3 + 2160) = swift_task_alloc();
  *(v3 + 2218) = *(v2 + 72);
  v5 = *(v2 + 80);
  v6 = *(v2 + 112);
  *(v3 + 112) = *(v2 + 96);
  *(v3 + 128) = v6;
  *(v3 + 144) = *(v2 + 128);
  v7 = *(v2 + 48);
  *(v3 + 48) = *(v2 + 32);
  *(v3 + 64) = v7;
  *(v3 + 80) = *(v2 + 64);
  *(v3 + 96) = v5;
  v8 = *(v2 + 16);
  *(v3 + 16) = *v2;
  *(v3 + 32) = v8;

  return _swift_task_switch(sub_639C94, 0, 0);
}

uint64_t sub_639C94()
{
  v107 = v0;
  v1 = *(v0 + 2218);
  if (((1 << v1) & 0xF8FFFFD7FFE7FLL) != 0)
  {
    goto LABEL_2;
  }

  if (((1 << v1) & 0x700000000180) != 0)
  {
    v71 = sub_502058();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v71) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    *(v0 + 2216) = 2;
    v73 = sub_502004();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v73) & 1) == 0)
    {
LABEL_22:
      if (qword_E0D528 != -1)
      {
        swift_once();
      }

      if (static DeviceCapabilities.isInternalInstall == 1)
      {
        if (qword_E0CB90 != -1)
        {
          swift_once();
        }

        v74 = *(v0 + 2160);
        v75 = *(v0 + 2120);
        v76 = *(v0 + 2112);
        v77 = __swift_project_value_buffer(v76, qword_E0E1F8);
        (*(v75 + 16))(v74, v77, v76);
        v78 = *(v0 + 128);
        *(v0 + 1880) = *(v0 + 112);
        *(v0 + 1896) = v78;
        *(v0 + 1912) = *(v0 + 144);
        v79 = *(v0 + 64);
        *(v0 + 1816) = *(v0 + 48);
        *(v0 + 1832) = v79;
        v80 = *(v0 + 96);
        *(v0 + 1848) = *(v0 + 80);
        *(v0 + 1864) = v80;
        v81 = *(v0 + 32);
        *(v0 + 1784) = *(v0 + 16);
        *(v0 + 1800) = v81;
        sub_15F84(v0 + 1784, v0 + 1920, &qword_E0EAA8, &qword_B1F440);
        v82 = sub_AB4BA0();
        v83 = sub_AB9F30();
        v84 = os_log_type_enabled(v82, v83);
        v85 = *(v0 + 2160);
        v86 = *(v0 + 2120);
        v87 = *(v0 + 2112);
        if (v84)
        {
          v100 = *(v0 + 2160);
          v88 = swift_slowAlloc();
          v89 = swift_slowAlloc();
          *&v101[0] = v89;
          *v88 = 136446210;
          v90 = ActionType.rawValue.getter(*(v0 + 1856));
          v92 = v91;
          sub_12E1C(v0 + 1784, &qword_E0EAA8, &qword_B1F440);
          v93 = sub_500C84(v90, v92, v101);

          *(v88 + 4) = v93;
          _os_log_impl(&dword_0, v82, v83, "%{public}s: attempted to execute but identifier is hidden", v88, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v89);

          (*(v86 + 8))(v100, v87);
        }

        else
        {
          sub_12E1C(v0 + 1784, &qword_E0EAA8, &qword_B1F440);

          (*(v86 + 8))(v85, v87);
        }
      }

      sub_50E914();
      swift_allocError();
      *v94 = 0xD000000000000014;
      v94[1] = 0x8000000000B6A3F0;
      goto LABEL_31;
    }
  }

LABEL_2:
  if (*(v0 + 2217) != 1 || (v2 = *(v0 + 64), v101[2] = *(v0 + 48), v101[3] = v2, v101[4] = *(v0 + 80), v3 = *(v0 + 32), v101[0] = *(v0 + 16), v101[1] = v3, v4 = *(v0 + 96), v5 = *(v0 + 104), v6 = *(v0 + 128), v104 = *(v0 + 112), v105 = v6, v106 = *(v0 + 144), v102 = v4, v103 = v5, v7 = v4(v101), v8 == 1))
  {
    if (qword_E0CB90 != -1)
    {
      swift_once();
    }

    v9 = *(v0 + 2144);
    v10 = *(v0 + 2120);
    v11 = *(v0 + 2112);
    v12 = __swift_project_value_buffer(v11, qword_E0E1F8);
    *(v0 + 2168) = v12;
    v13 = *(v10 + 16);
    *(v0 + 2176) = v13;
    *(v0 + 2184) = (v10 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v13(v9, v12, v11);
    v14 = *(v0 + 128);
    *(v0 + 248) = *(v0 + 112);
    *(v0 + 264) = v14;
    *(v0 + 280) = *(v0 + 144);
    v15 = *(v0 + 64);
    *(v0 + 184) = *(v0 + 48);
    *(v0 + 200) = v15;
    v16 = *(v0 + 96);
    *(v0 + 216) = *(v0 + 80);
    *(v0 + 232) = v16;
    v17 = *(v0 + 32);
    *(v0 + 152) = *(v0 + 16);
    *(v0 + 168) = v17;
    sub_15F84(v0 + 152, v0 + 288, &qword_E0EAA8, &qword_B1F440);
    v18 = sub_AB4BA0();
    v19 = sub_AB9F50();
    v20 = os_log_type_enabled(v18, v19);
    v21 = *(v0 + 2144);
    v22 = *(v0 + 2120);
    v23 = *(v0 + 2112);
    if (v20)
    {
      v97 = *(v0 + 2144);
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *&v101[0] = v25;
      *v24 = 136446210;
      v26 = ActionType.rawValue.getter(*(v0 + 224));
      v28 = v27;
      sub_12E1C(v0 + 152, &qword_E0EAA8, &qword_B1F440);
      v29 = sub_500C84(v26, v28, v101);

      *(v24 + 4) = v29;
      _os_log_impl(&dword_0, v18, v19, "%{public}s: performing…", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);

      (*(v22 + 8))(v97, v23);
    }

    else
    {
      sub_12E1C(v0 + 152, &qword_E0EAA8, &qword_B1F440);

      (*(v22 + 8))(v21, v23);
    }

    v30 = *(v0 + 2104);
    sub_13C80(0, &qword_E0E218, NSTimer_ptr);
    v31 = [objc_opt_self() mainRunLoop];
    v32 = sub_ABA930();
    (*(*(v32 - 8) + 56))(v30, 1, 1, v32);
    v33 = sub_ABA730();

    sub_12E1C(v30, &qword_E0E210, &qword_B16F00);
    *(v0 + 2072) = v33;
    sub_ABA720();
    sub_673544(&qword_E0E220, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
    v34 = sub_AB54B0();

    *(v0 + 2080) = v34;
    v35 = *(v0 + 128);
    *(v0 + 520) = *(v0 + 112);
    *(v0 + 536) = v35;
    *(v0 + 552) = *(v0 + 144);
    v36 = *(v0 + 64);
    *(v0 + 456) = *(v0 + 48);
    *(v0 + 472) = v36;
    v37 = *(v0 + 96);
    *(v0 + 488) = *(v0 + 80);
    *(v0 + 504) = v37;
    v38 = *(v0 + 32);
    *(v0 + 424) = *(v0 + 16);
    *(v0 + 440) = v38;
    v39 = *(v0 + 528);
    v40 = swift_allocObject();
    v41 = *(v0 + 128);
    *(v40 + 112) = *(v0 + 112);
    *(v40 + 128) = v41;
    *(v40 + 144) = *(v0 + 144);
    v42 = *(v0 + 64);
    *(v40 + 48) = *(v0 + 48);
    *(v40 + 64) = v42;
    v43 = *(v0 + 96);
    *(v40 + 80) = *(v0 + 80);
    *(v40 + 96) = v43;
    v44 = *(v0 + 32);
    *(v40 + 16) = *(v0 + 16);
    *(v40 + 32) = v44;
    sub_15F84(v0 + 424, v0 + 560, &qword_E0EAA8, &qword_B1F440);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E228, &qword_B16F08);
    sub_36A00(&qword_E0E230, &qword_E0E228, &qword_B16F08, &protocol conformance descriptor for Publishers.Autoconnect<A>);
    *(v0 + 2192) = sub_AB55C0();

    v98 = (v39 + *v39);
    v45 = swift_task_alloc();
    *(v0 + 2200) = v45;
    *v45 = v0;
    v45[1] = sub_63A858;

    return v98();
  }

  v47 = v7;
  v48 = v8;
  if (qword_E0CB90 != -1)
  {
    swift_once();
  }

  v49 = *(v0 + 2152);
  v50 = *(v0 + 2120);
  v51 = *(v0 + 2112);
  v52 = __swift_project_value_buffer(v51, qword_E0E1F8);
  (*(v50 + 16))(v49, v52, v51);
  v53 = *(v0 + 128);
  *(v0 + 1608) = *(v0 + 112);
  *(v0 + 1624) = v53;
  *(v0 + 1640) = *(v0 + 144);
  v54 = *(v0 + 64);
  *(v0 + 1544) = *(v0 + 48);
  *(v0 + 1560) = v54;
  v55 = *(v0 + 96);
  *(v0 + 1576) = *(v0 + 80);
  *(v0 + 1592) = v55;
  v56 = *(v0 + 32);
  *(v0 + 1512) = *(v0 + 16);
  *(v0 + 1528) = v56;
  sub_15F84(v0 + 1512, v0 + 1648, &qword_E0EAA8, &qword_B1F440);
  sub_502308(v47, v48);
  v57 = sub_AB4BA0();
  v58 = sub_AB9F30();
  sub_501D64(v47, v48);
  v59 = os_log_type_enabled(v57, v58);
  v60 = *(v0 + 2152);
  v61 = *(v0 + 2120);
  v62 = *(v0 + 2112);
  if (v59)
  {
    v63 = swift_slowAlloc();
    *&v101[0] = swift_slowAlloc();
    *v63 = 136446466;
    v96 = v62;
    v99 = v60;
    v64 = ActionType.rawValue.getter(*(v0 + 1584));
    v66 = v65;
    sub_12E1C(v0 + 1512, &qword_E0EAA8, &qword_B1F440);
    v67 = sub_500C84(v64, v66, v101);

    *(v63 + 4) = v67;
    *(v63 + 12) = 2082;
    *(v0 + 2056) = v47;
    *(v0 + 2064) = v48;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E12FB0, &qword_B196A0);
    v68 = sub_AB9350();
    v70 = sub_500C84(v68, v69, v101);

    *(v63 + 14) = v70;
    _os_log_impl(&dword_0, v57, v58, "%{public}s: attempted to execute but was unsupported for reason: %{public}s", v63, 0x16u);
    swift_arrayDestroy();

    (*(v61 + 8))(v99, v96);
  }

  else
  {
    sub_12E1C(v0 + 1512, &qword_E0EAA8, &qword_B1F440);

    (*(v61 + 8))(v60, v62);
  }

  sub_50E914();
  swift_allocError();
  *v72 = v47;
  v72[1] = v48;
LABEL_31:
  swift_willThrow();

  v95 = *(v0 + 8);

  return v95();
}

uint64_t sub_63A858()
{
  *(*v1 + 2208) = v0;

  if (v0)
  {
    v2 = sub_63AD40;
  }

  else
  {
    v2 = sub_63A96C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_63A96C()
{
  v35 = v0;
  v1 = *(v0 + 2176);
  v2 = *(v0 + 2168);
  v3 = *(v0 + 2136);
  v4 = *(v0 + 2112);
  sub_AB5450();
  v1(v3, v2, v4);
  v5 = *(v0 + 128);
  *(v0 + 1064) = *(v0 + 112);
  *(v0 + 1080) = v5;
  *(v0 + 1096) = *(v0 + 144);
  v6 = *(v0 + 64);
  *(v0 + 1000) = *(v0 + 48);
  *(v0 + 1016) = v6;
  v7 = *(v0 + 96);
  *(v0 + 1032) = *(v0 + 80);
  *(v0 + 1048) = v7;
  v8 = *(v0 + 32);
  *(v0 + 968) = *(v0 + 16);
  *(v0 + 984) = v8;
  sub_15F84(v0 + 968, v0 + 1104, &qword_E0EAA8, &qword_B1F440);
  v9 = sub_AB4BA0();
  v10 = sub_AB9F50();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 2136);
  v13 = *(v0 + 2120);
  v14 = *(v0 + 2112);
  if (v11)
  {
    v33 = *(v0 + 2136);
    v15 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v15 = 136446466;
    v16 = ActionType.rawValue.getter(*(v0 + 1040));
    v18 = v17;
    sub_12E1C(v0 + 968, &qword_E0EAA8, &qword_B1F440);
    v19 = sub_500C84(v16, v18, &v34);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2082;
    *(v15 + 14) = sub_500C84(0, 0xE000000000000000, &v34);
    _os_log_impl(&dword_0, v9, v10, "%{public}s: perform success%{public}s", v15, 0x16u);
    swift_arrayDestroy();

    (*(v13 + 8))(v33, v14);
  }

  else
  {
    sub_12E1C(v0 + 968, &qword_E0EAA8, &qword_B1F440);

    (*(v13 + 8))(v12, v14);
  }

  v20 = *(v0 + 2096);
  v21 = sub_AB9990();
  (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
  v22 = *(v0 + 128);
  *(v0 + 1336) = *(v0 + 112);
  *(v0 + 1352) = v22;
  *(v0 + 1368) = *(v0 + 144);
  v23 = *(v0 + 64);
  *(v0 + 1272) = *(v0 + 48);
  *(v0 + 1288) = v23;
  v24 = *(v0 + 96);
  *(v0 + 1304) = *(v0 + 80);
  *(v0 + 1320) = v24;
  v25 = *(v0 + 32);
  *(v0 + 1240) = *(v0 + 16);
  *(v0 + 1256) = v25;
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  *(v26 + 24) = 0;
  v27 = *(v0 + 128);
  *(v26 + 128) = *(v0 + 112);
  *(v26 + 144) = v27;
  *(v26 + 160) = *(v0 + 144);
  v28 = *(v0 + 64);
  *(v26 + 64) = *(v0 + 48);
  *(v26 + 80) = v28;
  v29 = *(v0 + 96);
  *(v26 + 96) = *(v0 + 80);
  *(v26 + 112) = v29;
  v30 = *(v0 + 32);
  *(v26 + 32) = *(v0 + 16);
  *(v26 + 48) = v30;
  sub_15F84(v0 + 1240, v0 + 1376, &qword_E0EAA8, &qword_B1F440);
  sub_50D600(0, 0, v20, &unk_B1F450, v26);

  sub_12E1C(v20, &qword_E0E340, &qword_B18550);

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_63AD40()
{
  v29 = v0;
  v1 = *(v0 + 2176);
  v2 = *(v0 + 2168);
  v3 = *(v0 + 2128);
  v4 = *(v0 + 2112);

  v1(v3, v2, v4);
  v5 = *(v0 + 128);
  *(v0 + 792) = *(v0 + 112);
  *(v0 + 808) = v5;
  *(v0 + 824) = *(v0 + 144);
  v6 = *(v0 + 64);
  *(v0 + 728) = *(v0 + 48);
  *(v0 + 744) = v6;
  v7 = *(v0 + 96);
  *(v0 + 760) = *(v0 + 80);
  *(v0 + 776) = v7;
  v8 = *(v0 + 32);
  *(v0 + 696) = *(v0 + 16);
  *(v0 + 712) = v8;
  sub_15F84(v0 + 696, v0 + 832, &qword_E0EAA8, &qword_B1F440);
  swift_errorRetain();
  v9 = sub_AB4BA0();
  v10 = sub_AB9F30();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = *(v0 + 2208);
    v12 = *(v0 + 2120);
    v26 = *(v0 + 2112);
    v27 = *(v0 + 2128);
    v13 = swift_slowAlloc();
    v28[0] = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 768));
    v16 = v15;
    sub_12E1C(v0 + 696, &qword_E0EAA8, &qword_B1F440);
    v17 = sub_500C84(v14, v16, v28);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 2088) = v11;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80, &qword_B16F10);
    v18 = sub_AB9350();
    v20 = sub_500C84(v18, v19, v28);

    *(v13 + 14) = v20;
    _os_log_impl(&dword_0, v9, v10, "%{public}s: perform failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v12 + 8))(v27, v26);
  }

  else
  {
    v21 = *(v0 + 2128);
    v22 = *(v0 + 2120);
    v23 = *(v0 + 2112);
    sub_12E1C(v0 + 696, &qword_E0EAA8, &qword_B1F440);

    (*(v22 + 8))(v21, v23);
  }

  swift_willThrow();

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_63B058(uint64_t a1, char a2)
{
  *(v3 + 56) = v2;
  *(v3 + 261) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340, &qword_B18550);
  *(v3 + 64) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E210, &qword_B16F00);
  *(v3 + 72) = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAB0, &qword_B1F3F0);
  *(v3 + 80) = v4;
  v5 = *(v4 - 8);
  *(v3 + 88) = v5;
  *(v3 + 96) = *(v5 + 64);
  *(v3 + 104) = swift_task_alloc();
  *(v3 + 112) = swift_task_alloc();
  *(v3 + 120) = swift_task_alloc();
  *(v3 + 128) = swift_task_alloc();
  *(v3 + 136) = swift_task_alloc();
  *(v3 + 144) = swift_task_alloc();
  v6 = sub_AB4BC0();
  *(v3 + 152) = v6;
  *(v3 + 160) = *(v6 - 8);
  *(v3 + 168) = swift_task_alloc();
  *(v3 + 176) = swift_task_alloc();
  *(v3 + 184) = swift_task_alloc();
  *(v3 + 192) = swift_task_alloc();
  *(v3 + 200) = swift_task_alloc();

  return _swift_task_switch(sub_63B268, 0, 0);
}

uint64_t sub_63B268()
{
  v90 = v0;
  v1 = *(v0 + 80);
  v2 = *(*(v0 + 56) + *(v1 + 36));
  if (((1 << v2) & 0xF8FFFFD7FFE7FLL) != 0)
  {
    goto LABEL_2;
  }

  if (((1 << v2) & 0x700000000180) != 0)
  {
    v64 = sub_502058();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v64) & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    *(v0 + 260) = 2;
    v65 = sub_502004();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v65) & 1) == 0)
    {
LABEL_21:
      if (qword_E0D528 != -1)
      {
        swift_once();
      }

      if (static DeviceCapabilities.isInternalInstall == 1)
      {
        if (qword_E0CB90 != -1)
        {
          swift_once();
        }

        v66 = *(v0 + 200);
        v67 = *(v0 + 152);
        v68 = *(v0 + 160);
        v69 = *(v0 + 144);
        v70 = *(v0 + 56);
        v71 = __swift_project_value_buffer(v67, qword_E0E1F8);
        (*(v68 + 16))(v66, v71, v67);
        sub_15F84(v70, v69, &qword_E0EAB0, &qword_B1F3F0);
        v72 = sub_AB4BA0();
        v73 = sub_AB9F30();
        v74 = os_log_type_enabled(v72, v73);
        v75 = *(v0 + 200);
        v76 = *(v0 + 152);
        v77 = *(v0 + 160);
        v78 = *(v0 + 144);
        if (v74)
        {
          v79 = swift_slowAlloc();
          v80 = swift_slowAlloc();
          v89[0] = v80;
          *v79 = 136446210;
          v81 = *(v78 + *(v1 + 36));
          sub_12E1C(v78, &qword_E0EAB0, &qword_B1F3F0);
          v82 = ActionType.rawValue.getter(v81);
          v84 = sub_500C84(v82, v83, v89);

          *(v79 + 4) = v84;
          _os_log_impl(&dword_0, v72, v73, "%{public}s: attempted to execute but identifier is hidden", v79, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v80);
        }

        else
        {
          sub_12E1C(*(v0 + 144), &qword_E0EAB0, &qword_B1F3F0);
        }

        (*(v77 + 8))(v75, v76);
      }

      v40 = 0x8000000000B6A3F0;
      v39 = 0xD000000000000014;
      goto LABEL_31;
    }
  }

LABEL_2:
  if (*(v0 + 261) != 1 || (v3 = (*(*(v0 + 56) + *(*(v0 + 80) + 40)))(), v4 == 1))
  {
    if (qword_E0CB90 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 184);
    v6 = *(v0 + 152);
    v7 = *(v0 + 160);
    v8 = *(v0 + 128);
    v9 = *(v0 + 56);
    v10 = __swift_project_value_buffer(v6, qword_E0E1F8);
    *(v0 + 208) = v10;
    v11 = *(v7 + 16);
    *(v0 + 216) = v11;
    *(v0 + 224) = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v11(v5, v10, v6);
    sub_15F84(v9, v8, &qword_E0EAB0, &qword_B1F3F0);
    v12 = sub_AB4BA0();
    v13 = sub_AB9F50();
    v14 = os_log_type_enabled(v12, v13);
    v15 = *(v0 + 184);
    v16 = *(v0 + 152);
    v17 = *(v0 + 160);
    v18 = *(v0 + 128);
    if (v14)
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v89[0] = v20;
      *v19 = 136446210;
      v21 = *(v18 + *(v1 + 36));
      sub_12E1C(v18, &qword_E0EAB0, &qword_B1F3F0);
      v22 = ActionType.rawValue.getter(v21);
      v24 = sub_500C84(v22, v23, v89);

      *(v19 + 4) = v24;
      _os_log_impl(&dword_0, v12, v13, "%{public}s: performing…", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
    }

    else
    {
      sub_12E1C(*(v0 + 128), &qword_E0EAB0, &qword_B1F3F0);
    }

    (*(v17 + 8))(v15, v16);
    v25 = *(v0 + 120);
    v26 = *(v0 + 88);
    v27 = *(v0 + 72);
    v28 = *(v0 + 80);
    v29 = *(v0 + 56);
    sub_13C80(0, &qword_E0E218, NSTimer_ptr);
    v30 = [objc_opt_self() mainRunLoop];
    v31 = sub_ABA930();
    (*(*(v31 - 8) + 56))(v27, 1, 1, v31);
    v32 = sub_ABA730();

    sub_12E1C(v27, &qword_E0E210, &qword_B16F00);
    *(v0 + 32) = v32;
    sub_ABA720();
    sub_673544(&qword_E0E220, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
    v33 = sub_AB54B0();

    *(v0 + 40) = v33;
    sub_15F84(v29, v25, &qword_E0EAB0, &qword_B1F3F0);
    v34 = *(v26 + 80);
    *(v0 + 256) = v34;
    v35 = (v34 + 16) & ~v34;
    v36 = swift_allocObject();
    sub_36B0C(v25, v36 + v35, &qword_E0EAB0, &qword_B1F3F0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E228, &qword_B16F08);
    sub_36A00(&qword_E0E230, &qword_E0E228, &qword_B16F08, &protocol conformance descriptor for Publishers.Autoconnect<A>);
    *(v0 + 232) = sub_AB55C0();

    v87 = (*(v29 + *(v28 + 48)) + **(v29 + *(v28 + 48)));
    v37 = swift_task_alloc();
    *(v0 + 240) = v37;
    *v37 = v0;
    v37[1] = sub_63BD80;

    return v87();
  }

  v39 = v3;
  v40 = v4;
  if (qword_E0CB90 != -1)
  {
    swift_once();
  }

  v41 = *(v0 + 192);
  v42 = *(v0 + 152);
  v43 = *(v0 + 160);
  v44 = *(v0 + 136);
  v45 = *(v0 + 56);
  v46 = __swift_project_value_buffer(v42, qword_E0E1F8);
  (*(v43 + 16))(v41, v46, v42);
  sub_15F84(v45, v44, &qword_E0EAB0, &qword_B1F3F0);

  v47 = sub_AB4BA0();
  v48 = sub_AB9F30();
  sub_501D64(v39, v40);
  v49 = os_log_type_enabled(v47, v48);
  v50 = *(v0 + 192);
  v52 = *(v0 + 152);
  v51 = *(v0 + 160);
  v53 = *(v0 + 136);
  if (v49)
  {
    v88 = *(v0 + 152);
    v54 = swift_slowAlloc();
    v89[0] = swift_slowAlloc();
    *v54 = 136446466;
    v55 = *(v1 + 36);
    v56 = v50;
    v57 = *(v53 + v55);
    sub_12E1C(v53, &qword_E0EAB0, &qword_B1F3F0);
    v58 = ActionType.rawValue.getter(v57);
    v60 = sub_500C84(v58, v59, v89);

    *(v54 + 4) = v60;
    *(v54 + 12) = 2082;
    *(v0 + 16) = v39;
    *(v0 + 24) = v40;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E12FB0, &qword_B196A0);
    v61 = sub_AB9350();
    v63 = sub_500C84(v61, v62, v89);

    *(v54 + 14) = v63;
    _os_log_impl(&dword_0, v47, v48, "%{public}s: attempted to execute but was unsupported for reason: %{public}s", v54, 0x16u);
    swift_arrayDestroy();

    (*(v51 + 8))(v56, v88);
  }

  else
  {
    sub_12E1C(*(v0 + 136), &qword_E0EAB0, &qword_B1F3F0);

    (*(v51 + 8))(v50, v52);
  }

LABEL_31:
  sub_50E914();
  swift_allocError();
  *v85 = v39;
  v85[1] = v40;
  swift_willThrow();

  v86 = *(v0 + 8);

  return v86();
}

uint64_t sub_63BD80()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_63C24C;
  }

  else
  {
    v2 = sub_63BE94;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_63BE94()
{
  v28 = v0;
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v3 = *(v0 + 176);
  v4 = *(v0 + 152);
  v5 = *(v0 + 112);
  v6 = *(v0 + 56);
  sub_AB5450();
  v2(v3, v1, v4);
  sub_15F84(v6, v5, &qword_E0EAB0, &qword_B1F3F0);
  v7 = sub_AB4BA0();
  v8 = sub_AB9F50();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 176);
  v11 = *(v0 + 152);
  v12 = *(v0 + 160);
  v13 = *(v0 + 112);
  if (v9)
  {
    v14 = *(v0 + 80);
    v15 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v15 = 136446466;
    LOBYTE(v14) = *(v13 + *(v14 + 36));
    sub_12E1C(v13, &qword_E0EAB0, &qword_B1F3F0);
    v16 = ActionType.rawValue.getter(v14);
    v18 = sub_500C84(v16, v17, &v27);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2082;
    *(v15 + 14) = sub_500C84(0, 0xE000000000000000, &v27);
    _os_log_impl(&dword_0, v7, v8, "%{public}s: perform success%{public}s", v15, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_12E1C(*(v0 + 112), &qword_E0EAB0, &qword_B1F3F0);
  }

  (*(v12 + 8))(v10, v11);
  v19 = *(v0 + 256);
  v20 = *(v0 + 120);
  v21 = *(v0 + 64);
  v22 = *(v0 + 56);
  v23 = sub_AB9990();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  sub_15F84(v22, v20, &qword_E0EAB0, &qword_B1F3F0);
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  sub_36B0C(v20, v24 + ((v19 + 32) & ~v19), &qword_E0EAB0, &qword_B1F3F0);
  sub_50D600(0, 0, v21, &unk_B1F400, v24);

  sub_12E1C(v21, &qword_E0E340, &qword_B18550);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_63C24C()
{
  v28 = v0;
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[21];
  v4 = v0[19];
  v5 = v0[13];
  v6 = v0[7];

  v2(v3, v1, v4);
  sub_15F84(v6, v5, &qword_E0EAB0, &qword_B1F3F0);
  swift_errorRetain();
  v7 = sub_AB4BA0();
  v8 = sub_AB9F30();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[31];
    v10 = v0[20];
    v26 = v0[21];
    v11 = v0[19];
    v12 = v0[13];
    v13 = v0[10];
    v14 = swift_slowAlloc();
    v27[0] = swift_slowAlloc();
    *v14 = 136446466;
    LOBYTE(v13) = *(v12 + *(v13 + 36));
    sub_12E1C(v12, &qword_E0EAB0, &qword_B1F3F0);
    v15 = ActionType.rawValue.getter(v13);
    v17 = sub_500C84(v15, v16, v27);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2082;
    v0[6] = v9;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80, &qword_B16F10);
    v18 = sub_AB9350();
    v20 = sub_500C84(v18, v19, v27);

    *(v14 + 14) = v20;
    _os_log_impl(&dword_0, v7, v8, "%{public}s: perform failed: %{public}s", v14, 0x16u);
    swift_arrayDestroy();

    (*(v10 + 8))(v26, v11);
  }

  else
  {
    v22 = v0[20];
    v21 = v0[21];
    v23 = v0[19];
    sub_12E1C(v0[13], &qword_E0EAB0, &qword_B1F3F0);

    (*(v22 + 8))(v21, v23);
  }

  swift_willThrow();

  v24 = v0[1];

  return v24();
}

uint64_t sub_63C578(uint64_t a1, char a2)
{
  *(v3 + 56) = v2;
  *(v3 + 261) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340, &qword_B18550);
  *(v3 + 64) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E210, &qword_B16F00);
  *(v3 + 72) = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAB8, &qword_B18300);
  *(v3 + 80) = v4;
  v5 = *(v4 - 8);
  *(v3 + 88) = v5;
  *(v3 + 96) = *(v5 + 64);
  *(v3 + 104) = swift_task_alloc();
  *(v3 + 112) = swift_task_alloc();
  *(v3 + 120) = swift_task_alloc();
  *(v3 + 128) = swift_task_alloc();
  *(v3 + 136) = swift_task_alloc();
  *(v3 + 144) = swift_task_alloc();
  v6 = sub_AB4BC0();
  *(v3 + 152) = v6;
  *(v3 + 160) = *(v6 - 8);
  *(v3 + 168) = swift_task_alloc();
  *(v3 + 176) = swift_task_alloc();
  *(v3 + 184) = swift_task_alloc();
  *(v3 + 192) = swift_task_alloc();
  *(v3 + 200) = swift_task_alloc();

  return _swift_task_switch(sub_63C788, 0, 0);
}

uint64_t sub_63C788()
{
  v90 = v0;
  v1 = *(v0 + 80);
  v2 = *(*(v0 + 56) + *(v1 + 36));
  if (((1 << v2) & 0xF8FFFFD7FFE7FLL) != 0)
  {
    goto LABEL_2;
  }

  if (((1 << v2) & 0x700000000180) != 0)
  {
    v64 = sub_502058();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v64) & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    *(v0 + 260) = 2;
    v65 = sub_502004();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v65) & 1) == 0)
    {
LABEL_21:
      if (qword_E0D528 != -1)
      {
        swift_once();
      }

      if (static DeviceCapabilities.isInternalInstall == 1)
      {
        if (qword_E0CB90 != -1)
        {
          swift_once();
        }

        v66 = *(v0 + 200);
        v67 = *(v0 + 152);
        v68 = *(v0 + 160);
        v69 = *(v0 + 144);
        v70 = *(v0 + 56);
        v71 = __swift_project_value_buffer(v67, qword_E0E1F8);
        (*(v68 + 16))(v66, v71, v67);
        sub_15F84(v70, v69, &qword_E0EAB8, &qword_B18300);
        v72 = sub_AB4BA0();
        v73 = sub_AB9F30();
        v74 = os_log_type_enabled(v72, v73);
        v75 = *(v0 + 200);
        v76 = *(v0 + 152);
        v77 = *(v0 + 160);
        v78 = *(v0 + 144);
        if (v74)
        {
          v79 = swift_slowAlloc();
          v80 = swift_slowAlloc();
          v89[0] = v80;
          *v79 = 136446210;
          v81 = *(v78 + *(v1 + 36));
          sub_12E1C(v78, &qword_E0EAB8, &qword_B18300);
          v82 = ActionType.rawValue.getter(v81);
          v84 = sub_500C84(v82, v83, v89);

          *(v79 + 4) = v84;
          _os_log_impl(&dword_0, v72, v73, "%{public}s: attempted to execute but identifier is hidden", v79, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v80);
        }

        else
        {
          sub_12E1C(*(v0 + 144), &qword_E0EAB8, &qword_B18300);
        }

        (*(v77 + 8))(v75, v76);
      }

      v40 = 0x8000000000B6A3F0;
      v39 = 0xD000000000000014;
      goto LABEL_31;
    }
  }

LABEL_2:
  if (*(v0 + 261) != 1 || (v3 = (*(*(v0 + 56) + *(*(v0 + 80) + 40)))(), v4 == 1))
  {
    if (qword_E0CB90 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 184);
    v6 = *(v0 + 152);
    v7 = *(v0 + 160);
    v8 = *(v0 + 128);
    v9 = *(v0 + 56);
    v10 = __swift_project_value_buffer(v6, qword_E0E1F8);
    *(v0 + 208) = v10;
    v11 = *(v7 + 16);
    *(v0 + 216) = v11;
    *(v0 + 224) = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v11(v5, v10, v6);
    sub_15F84(v9, v8, &qword_E0EAB8, &qword_B18300);
    v12 = sub_AB4BA0();
    v13 = sub_AB9F50();
    v14 = os_log_type_enabled(v12, v13);
    v15 = *(v0 + 184);
    v16 = *(v0 + 152);
    v17 = *(v0 + 160);
    v18 = *(v0 + 128);
    if (v14)
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v89[0] = v20;
      *v19 = 136446210;
      v21 = *(v18 + *(v1 + 36));
      sub_12E1C(v18, &qword_E0EAB8, &qword_B18300);
      v22 = ActionType.rawValue.getter(v21);
      v24 = sub_500C84(v22, v23, v89);

      *(v19 + 4) = v24;
      _os_log_impl(&dword_0, v12, v13, "%{public}s: performing…", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
    }

    else
    {
      sub_12E1C(*(v0 + 128), &qword_E0EAB8, &qword_B18300);
    }

    (*(v17 + 8))(v15, v16);
    v25 = *(v0 + 120);
    v26 = *(v0 + 88);
    v27 = *(v0 + 72);
    v28 = *(v0 + 80);
    v29 = *(v0 + 56);
    sub_13C80(0, &qword_E0E218, NSTimer_ptr);
    v30 = [objc_opt_self() mainRunLoop];
    v31 = sub_ABA930();
    (*(*(v31 - 8) + 56))(v27, 1, 1, v31);
    v32 = sub_ABA730();

    sub_12E1C(v27, &qword_E0E210, &qword_B16F00);
    *(v0 + 32) = v32;
    sub_ABA720();
    sub_673544(&qword_E0E220, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
    v33 = sub_AB54B0();

    *(v0 + 40) = v33;
    sub_15F84(v29, v25, &qword_E0EAB8, &qword_B18300);
    v34 = *(v26 + 80);
    *(v0 + 256) = v34;
    v35 = (v34 + 16) & ~v34;
    v36 = swift_allocObject();
    sub_36B0C(v25, v36 + v35, &qword_E0EAB8, &qword_B18300);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E228, &qword_B16F08);
    sub_36A00(&qword_E0E230, &qword_E0E228, &qword_B16F08, &protocol conformance descriptor for Publishers.Autoconnect<A>);
    *(v0 + 232) = sub_AB55C0();

    v87 = (*(v29 + *(v28 + 48)) + **(v29 + *(v28 + 48)));
    v37 = swift_task_alloc();
    *(v0 + 240) = v37;
    *v37 = v0;
    v37[1] = sub_63D2A0;

    return v87();
  }

  v39 = v3;
  v40 = v4;
  if (qword_E0CB90 != -1)
  {
    swift_once();
  }

  v41 = *(v0 + 192);
  v42 = *(v0 + 152);
  v43 = *(v0 + 160);
  v44 = *(v0 + 136);
  v45 = *(v0 + 56);
  v46 = __swift_project_value_buffer(v42, qword_E0E1F8);
  (*(v43 + 16))(v41, v46, v42);
  sub_15F84(v45, v44, &qword_E0EAB8, &qword_B18300);

  v47 = sub_AB4BA0();
  v48 = sub_AB9F30();
  sub_501D64(v39, v40);
  v49 = os_log_type_enabled(v47, v48);
  v50 = *(v0 + 192);
  v52 = *(v0 + 152);
  v51 = *(v0 + 160);
  v53 = *(v0 + 136);
  if (v49)
  {
    v88 = *(v0 + 152);
    v54 = swift_slowAlloc();
    v89[0] = swift_slowAlloc();
    *v54 = 136446466;
    v55 = *(v1 + 36);
    v56 = v50;
    v57 = *(v53 + v55);
    sub_12E1C(v53, &qword_E0EAB8, &qword_B18300);
    v58 = ActionType.rawValue.getter(v57);
    v60 = sub_500C84(v58, v59, v89);

    *(v54 + 4) = v60;
    *(v54 + 12) = 2082;
    *(v0 + 16) = v39;
    *(v0 + 24) = v40;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E12FB0, &qword_B196A0);
    v61 = sub_AB9350();
    v63 = sub_500C84(v61, v62, v89);

    *(v54 + 14) = v63;
    _os_log_impl(&dword_0, v47, v48, "%{public}s: attempted to execute but was unsupported for reason: %{public}s", v54, 0x16u);
    swift_arrayDestroy();

    (*(v51 + 8))(v56, v88);
  }

  else
  {
    sub_12E1C(*(v0 + 136), &qword_E0EAB8, &qword_B18300);

    (*(v51 + 8))(v50, v52);
  }

LABEL_31:
  sub_50E914();
  swift_allocError();
  *v85 = v39;
  v85[1] = v40;
  swift_willThrow();

  v86 = *(v0 + 8);

  return v86();
}

uint64_t sub_63D2A0()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_63D76C;
  }

  else
  {
    v2 = sub_63D3B4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_63D3B4()
{
  v28 = v0;
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v3 = *(v0 + 176);
  v4 = *(v0 + 152);
  v5 = *(v0 + 112);
  v6 = *(v0 + 56);
  sub_AB5450();
  v2(v3, v1, v4);
  sub_15F84(v6, v5, &qword_E0EAB8, &qword_B18300);
  v7 = sub_AB4BA0();
  v8 = sub_AB9F50();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 176);
  v11 = *(v0 + 152);
  v12 = *(v0 + 160);
  v13 = *(v0 + 112);
  if (v9)
  {
    v14 = *(v0 + 80);
    v15 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v15 = 136446466;
    LOBYTE(v14) = *(v13 + *(v14 + 36));
    sub_12E1C(v13, &qword_E0EAB8, &qword_B18300);
    v16 = ActionType.rawValue.getter(v14);
    v18 = sub_500C84(v16, v17, &v27);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2082;
    *(v15 + 14) = sub_500C84(0, 0xE000000000000000, &v27);
    _os_log_impl(&dword_0, v7, v8, "%{public}s: perform success%{public}s", v15, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_12E1C(*(v0 + 112), &qword_E0EAB8, &qword_B18300);
  }

  (*(v12 + 8))(v10, v11);
  v19 = *(v0 + 256);
  v20 = *(v0 + 120);
  v21 = *(v0 + 64);
  v22 = *(v0 + 56);
  v23 = sub_AB9990();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  sub_15F84(v22, v20, &qword_E0EAB8, &qword_B18300);
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  sub_36B0C(v20, v24 + ((v19 + 32) & ~v19), &qword_E0EAB8, &qword_B18300);
  sub_50D600(0, 0, v21, &unk_B1F428, v24);

  sub_12E1C(v21, &qword_E0E340, &qword_B18550);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_63D76C()
{
  v28 = v0;
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[21];
  v4 = v0[19];
  v5 = v0[13];
  v6 = v0[7];

  v2(v3, v1, v4);
  sub_15F84(v6, v5, &qword_E0EAB8, &qword_B18300);
  swift_errorRetain();
  v7 = sub_AB4BA0();
  v8 = sub_AB9F30();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[31];
    v10 = v0[20];
    v26 = v0[21];
    v11 = v0[19];
    v12 = v0[13];
    v13 = v0[10];
    v14 = swift_slowAlloc();
    v27[0] = swift_slowAlloc();
    *v14 = 136446466;
    LOBYTE(v13) = *(v12 + *(v13 + 36));
    sub_12E1C(v12, &qword_E0EAB8, &qword_B18300);
    v15 = ActionType.rawValue.getter(v13);
    v17 = sub_500C84(v15, v16, v27);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2082;
    v0[6] = v9;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80, &qword_B16F10);
    v18 = sub_AB9350();
    v20 = sub_500C84(v18, v19, v27);

    *(v14 + 14) = v20;
    _os_log_impl(&dword_0, v7, v8, "%{public}s: perform failed: %{public}s", v14, 0x16u);
    swift_arrayDestroy();

    (*(v10 + 8))(v26, v11);
  }

  else
  {
    v22 = v0[20];
    v21 = v0[21];
    v23 = v0[19];
    sub_12E1C(v0[13], &qword_E0EAB8, &qword_B18300);

    (*(v22 + 8))(v21, v23);
  }

  swift_willThrow();

  v24 = v0[1];

  return v24();
}

uint64_t sub_63DA98(uint64_t a1, char a2)
{
  *(v3 + 1857) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340, &qword_B18550);
  *(v3 + 1736) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E210, &qword_B16F00);
  *(v3 + 1744) = swift_task_alloc();
  v4 = sub_AB4BC0();
  *(v3 + 1752) = v4;
  *(v3 + 1760) = *(v4 - 8);
  *(v3 + 1768) = swift_task_alloc();
  *(v3 + 1776) = swift_task_alloc();
  *(v3 + 1784) = swift_task_alloc();
  *(v3 + 1792) = swift_task_alloc();
  *(v3 + 1800) = swift_task_alloc();
  *(v3 + 1858) = *(v2 + 48);
  v5 = *(v2 + 48);
  v6 = *(v2 + 80);
  v7 = *(v2 + 96);
  *(v3 + 80) = *(v2 + 64);
  *(v3 + 96) = v6;
  *(v3 + 112) = v7;
  v8 = *(v2 + 16);
  *(v3 + 16) = *v2;
  *(v3 + 32) = v8;
  *(v3 + 48) = *(v2 + 32);
  *(v3 + 64) = v5;

  return _swift_task_switch(sub_63DC20, 0, 0);
}

uint64_t sub_63DC20()
{
  v101 = v0;
  v1 = *(v0 + 1858);
  if (((1 << v1) & 0xF8FFFFD7FFE7FLL) != 0)
  {
    goto LABEL_2;
  }

  if (((1 << v1) & 0x700000000180) != 0)
  {
    v66 = sub_502058();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v66) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    *(v0 + 1856) = 2;
    v68 = sub_502004();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v68) & 1) == 0)
    {
LABEL_22:
      if (qword_E0D528 != -1)
      {
        swift_once();
      }

      if (static DeviceCapabilities.isInternalInstall == 1)
      {
        if (qword_E0CB90 != -1)
        {
          swift_once();
        }

        v69 = *(v0 + 1800);
        v70 = *(v0 + 1760);
        v71 = *(v0 + 1752);
        v72 = __swift_project_value_buffer(v71, qword_E0E1F8);
        (*(v70 + 16))(v69, v72, v71);
        v73 = *(v0 + 96);
        *(v0 + 1536) = *(v0 + 80);
        *(v0 + 1552) = v73;
        *(v0 + 1568) = *(v0 + 112);
        v74 = *(v0 + 32);
        *(v0 + 1472) = *(v0 + 16);
        *(v0 + 1488) = v74;
        v75 = *(v0 + 64);
        *(v0 + 1504) = *(v0 + 48);
        *(v0 + 1520) = v75;
        sub_15F84(v0 + 1472, v0 + 1584, &qword_E0EAE8, &qword_B1F3A0);
        v76 = sub_AB4BA0();
        v77 = sub_AB9F30();
        v78 = os_log_type_enabled(v76, v77);
        v79 = *(v0 + 1800);
        v80 = *(v0 + 1760);
        v81 = *(v0 + 1752);
        if (v78)
        {
          v93 = *(v0 + 1800);
          v82 = swift_slowAlloc();
          v83 = swift_slowAlloc();
          *&v94[0] = v83;
          *v82 = 136446210;
          v84 = ActionType.rawValue.getter(*(v0 + 1520));
          v86 = v85;
          sub_12E1C(v0 + 1472, &qword_E0EAE8, &qword_B1F3A0);
          v87 = sub_500C84(v84, v86, v94);

          *(v82 + 4) = v87;
          _os_log_impl(&dword_0, v76, v77, "%{public}s: attempted to execute but identifier is hidden", v82, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v83);

          (*(v80 + 8))(v93, v81);
        }

        else
        {
          sub_12E1C(v0 + 1472, &qword_E0EAE8, &qword_B1F3A0);

          (*(v80 + 8))(v79, v81);
        }
      }

      sub_50E914();
      swift_allocError();
      *v88 = 0xD000000000000014;
      v88[1] = 0x8000000000B6A3F0;
      goto LABEL_31;
    }
  }

LABEL_2:
  if (*(v0 + 1857) != 1 || (v2 = *(v0 + 32), v94[0] = *(v0 + 16), v94[1] = v2, v94[2] = *(v0 + 48), v3 = *(v0 + 64), v4 = *(v0 + 72), v100 = *(v0 + 120), v5 = *(v0 + 80), v98 = *(v0 + 88), v99 = *(v0 + 104), v95 = v3, v96 = v4, v97 = v5, v6 = v4(v94), v7 == 1))
  {
    if (qword_E0CB90 != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 1784);
    v9 = *(v0 + 1760);
    v10 = *(v0 + 1752);
    v11 = __swift_project_value_buffer(v10, qword_E0E1F8);
    *(v0 + 1808) = v11;
    v12 = *(v9 + 16);
    *(v0 + 1816) = v12;
    *(v0 + 1824) = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v12(v8, v11, v10);
    v13 = *(v0 + 96);
    *(v0 + 192) = *(v0 + 80);
    *(v0 + 208) = v13;
    *(v0 + 224) = *(v0 + 112);
    v14 = *(v0 + 32);
    *(v0 + 128) = *(v0 + 16);
    *(v0 + 144) = v14;
    v15 = *(v0 + 64);
    *(v0 + 160) = *(v0 + 48);
    *(v0 + 176) = v15;
    sub_15F84(v0 + 128, v0 + 240, &qword_E0EAE8, &qword_B1F3A0);
    v16 = sub_AB4BA0();
    v17 = sub_AB9F50();
    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 1784);
    v20 = *(v0 + 1760);
    v21 = *(v0 + 1752);
    if (v18)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *&v94[0] = v23;
      *v22 = 136446210;
      v24 = ActionType.rawValue.getter(*(v0 + 176));
      v26 = v25;
      sub_12E1C(v0 + 128, &qword_E0EAE8, &qword_B1F3A0);
      v27 = sub_500C84(v24, v26, v94);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_0, v16, v17, "%{public}s: performing…", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
    }

    else
    {
      sub_12E1C(v0 + 128, &qword_E0EAE8, &qword_B1F3A0);
    }

    (*(v20 + 8))(v19, v21);
    v28 = *(v0 + 1744);
    sub_13C80(0, &qword_E0E218, NSTimer_ptr);
    v29 = [objc_opt_self() mainRunLoop];
    v30 = sub_ABA930();
    (*(*(v30 - 8) + 56))(v28, 1, 1, v30);
    v31 = sub_ABA730();

    sub_12E1C(v28, &qword_E0E210, &qword_B16F00);
    *(v0 + 1712) = v31;
    sub_ABA720();
    sub_673544(&qword_E0E220, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
    v32 = sub_AB54B0();

    *(v0 + 1720) = v32;
    v33 = *(v0 + 96);
    *(v0 + 416) = *(v0 + 80);
    *(v0 + 432) = v33;
    *(v0 + 448) = *(v0 + 112);
    v34 = *(v0 + 32);
    *(v0 + 352) = *(v0 + 16);
    *(v0 + 368) = v34;
    v35 = *(v0 + 64);
    *(v0 + 384) = *(v0 + 48);
    *(v0 + 400) = v35;
    v36 = *(v0 + 432);
    v37 = swift_allocObject();
    v38 = *(v0 + 96);
    v37[5] = *(v0 + 80);
    v37[6] = v38;
    v37[7] = *(v0 + 112);
    v39 = *(v0 + 32);
    v37[1] = *(v0 + 16);
    v37[2] = v39;
    v40 = *(v0 + 64);
    v37[3] = *(v0 + 48);
    v37[4] = v40;
    sub_15F84(v0 + 352, v0 + 464, &qword_E0EAE8, &qword_B1F3A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E228, &qword_B16F08);
    sub_36A00(&qword_E0E230, &qword_E0E228, &qword_B16F08, &protocol conformance descriptor for Publishers.Autoconnect<A>);
    *(v0 + 1832) = sub_AB55C0();

    v91 = (v36 + *v36);
    v41 = swift_task_alloc();
    *(v0 + 1840) = v41;
    *v41 = v0;
    v41[1] = sub_63E7A8;

    return v91();
  }

  v43 = v6;
  v44 = v7;
  if (qword_E0CB90 != -1)
  {
    swift_once();
  }

  v45 = *(v0 + 1792);
  v46 = *(v0 + 1760);
  v47 = *(v0 + 1752);
  v48 = __swift_project_value_buffer(v47, qword_E0E1F8);
  (*(v46 + 16))(v45, v48, v47);
  v49 = *(v0 + 96);
  *(v0 + 1312) = *(v0 + 80);
  *(v0 + 1328) = v49;
  *(v0 + 1344) = *(v0 + 112);
  v50 = *(v0 + 32);
  *(v0 + 1248) = *(v0 + 16);
  *(v0 + 1264) = v50;
  v51 = *(v0 + 64);
  *(v0 + 1280) = *(v0 + 48);
  *(v0 + 1296) = v51;
  sub_15F84(v0 + 1248, v0 + 1360, &qword_E0EAE8, &qword_B1F3A0);
  sub_502308(v43, v44);
  v52 = sub_AB4BA0();
  v53 = sub_AB9F30();
  sub_501D64(v43, v44);
  v54 = os_log_type_enabled(v52, v53);
  v55 = *(v0 + 1792);
  v56 = *(v0 + 1760);
  v57 = *(v0 + 1752);
  if (v54)
  {
    v58 = swift_slowAlloc();
    *&v94[0] = swift_slowAlloc();
    *v58 = 136446466;
    v90 = v57;
    v92 = v55;
    v59 = ActionType.rawValue.getter(*(v0 + 1296));
    v61 = v60;
    sub_12E1C(v0 + 1248, &qword_E0EAE8, &qword_B1F3A0);
    v62 = sub_500C84(v59, v61, v94);

    *(v58 + 4) = v62;
    *(v58 + 12) = 2082;
    *(v0 + 1696) = v43;
    *(v0 + 1704) = v44;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E12FB0, &qword_B196A0);
    v63 = sub_AB9350();
    v65 = sub_500C84(v63, v64, v94);

    *(v58 + 14) = v65;
    _os_log_impl(&dword_0, v52, v53, "%{public}s: attempted to execute but was unsupported for reason: %{public}s", v58, 0x16u);
    swift_arrayDestroy();

    (*(v56 + 8))(v92, v90);
  }

  else
  {
    sub_12E1C(v0 + 1248, &qword_E0EAE8, &qword_B1F3A0);

    (*(v56 + 8))(v55, v57);
  }

  sub_50E914();
  swift_allocError();
  *v67 = v43;
  v67[1] = v44;
LABEL_31:
  swift_willThrow();

  v89 = *(v0 + 8);

  return v89();
}

uint64_t sub_63E7A8()
{
  *(*v1 + 1848) = v0;

  if (v0)
  {
    v2 = sub_63EC68;
  }

  else
  {
    v2 = sub_63E8BC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_63E8BC()
{
  v31 = v0;
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1776);
  v4 = *(v0 + 1752);
  sub_AB5450();
  v1(v3, v2, v4);
  v5 = *(v0 + 96);
  *(v0 + 864) = *(v0 + 80);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 112);
  v6 = *(v0 + 32);
  *(v0 + 800) = *(v0 + 16);
  *(v0 + 816) = v6;
  v7 = *(v0 + 64);
  *(v0 + 832) = *(v0 + 48);
  *(v0 + 848) = v7;
  sub_15F84(v0 + 800, v0 + 912, &qword_E0EAE8, &qword_B1F3A0);
  v8 = sub_AB4BA0();
  v9 = sub_AB9F50();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1776);
  v12 = *(v0 + 1760);
  v13 = *(v0 + 1752);
  if (v10)
  {
    v14 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v14 = 136446466;
    v15 = ActionType.rawValue.getter(*(v0 + 848));
    v17 = v16;
    sub_12E1C(v0 + 800, &qword_E0EAE8, &qword_B1F3A0);
    v18 = sub_500C84(v15, v17, &v30);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    *(v14 + 14) = sub_500C84(0, 0xE000000000000000, &v30);
    _os_log_impl(&dword_0, v8, v9, "%{public}s: perform success%{public}s", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_12E1C(v0 + 800, &qword_E0EAE8, &qword_B1F3A0);
  }

  (*(v12 + 8))(v11, v13);
  v19 = *(v0 + 1736);
  v20 = sub_AB9990();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  v21 = *(v0 + 48);
  *(v0 + 1072) = *(v0 + 64);
  v22 = *(v0 + 96);
  *(v0 + 1088) = *(v0 + 80);
  *(v0 + 1104) = v22;
  *(v0 + 1120) = *(v0 + 112);
  v23 = *(v0 + 32);
  *(v0 + 1024) = *(v0 + 16);
  *(v0 + 1040) = v23;
  *(v0 + 1056) = v21;
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  v25 = *(v0 + 96);
  *(v24 + 96) = *(v0 + 80);
  *(v24 + 112) = v25;
  *(v24 + 128) = *(v0 + 112);
  v26 = *(v0 + 32);
  *(v24 + 32) = *(v0 + 16);
  *(v24 + 48) = v26;
  v27 = *(v0 + 64);
  *(v24 + 64) = *(v0 + 48);
  *(v24 + 80) = v27;
  sub_15F84(v0 + 1024, v0 + 1136, &qword_E0EAE8, &qword_B1F3A0);
  sub_50D600(0, 0, v19, &unk_B1F3B0, v24);

  sub_12E1C(v19, &qword_E0E340, &qword_B18550);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_63EC68()
{
  v28 = v0;
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1768);
  v4 = *(v0 + 1752);

  v1(v3, v2, v4);
  v5 = *(v0 + 96);
  *(v0 + 640) = *(v0 + 80);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 112);
  v6 = *(v0 + 32);
  *(v0 + 576) = *(v0 + 16);
  *(v0 + 592) = v6;
  v7 = *(v0 + 64);
  *(v0 + 608) = *(v0 + 48);
  *(v0 + 624) = v7;
  sub_15F84(v0 + 576, v0 + 688, &qword_E0EAE8, &qword_B1F3A0);
  swift_errorRetain();
  v8 = sub_AB4BA0();
  v9 = sub_AB9F30();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1848);
    v26 = *(v0 + 1768);
    v11 = *(v0 + 1760);
    v12 = *(v0 + 1752);
    v13 = swift_slowAlloc();
    v27[0] = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    sub_12E1C(v0 + 576, &qword_E0EAE8, &qword_B1F3A0);
    v17 = sub_500C84(v14, v16, v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1728) = v10;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80, &qword_B16F10);
    v18 = sub_AB9350();
    v20 = sub_500C84(v18, v19, v27);

    *(v13 + 14) = v20;
    _os_log_impl(&dword_0, v8, v9, "%{public}s: perform failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1768);
    v22 = *(v0 + 1760);
    v23 = *(v0 + 1752);
    sub_12E1C(v0 + 576, &qword_E0EAE8, &qword_B1F3A0);

    (*(v22 + 8))(v21, v23);
  }

  swift_willThrow();

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_63EF78(uint64_t a1, char a2)
{
  *(v3 + 1857) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340, &qword_B18550);
  *(v3 + 1736) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E210, &qword_B16F00);
  *(v3 + 1744) = swift_task_alloc();
  v4 = sub_AB4BC0();
  *(v3 + 1752) = v4;
  *(v3 + 1760) = *(v4 - 8);
  *(v3 + 1768) = swift_task_alloc();
  *(v3 + 1776) = swift_task_alloc();
  *(v3 + 1784) = swift_task_alloc();
  *(v3 + 1792) = swift_task_alloc();
  *(v3 + 1800) = swift_task_alloc();
  *(v3 + 1858) = *(v2 + 48);
  v5 = *(v2 + 48);
  v6 = *(v2 + 80);
  v7 = *(v2 + 96);
  *(v3 + 80) = *(v2 + 64);
  *(v3 + 96) = v6;
  *(v3 + 112) = v7;
  v8 = *(v2 + 16);
  *(v3 + 16) = *v2;
  *(v3 + 32) = v8;
  *(v3 + 48) = *(v2 + 32);
  *(v3 + 64) = v5;

  return _swift_task_switch(sub_63F100, 0, 0);
}