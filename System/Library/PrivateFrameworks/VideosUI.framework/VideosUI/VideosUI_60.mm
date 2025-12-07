uint64_t sub_1E3AF8C74(char *__src, char *__dst, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = (__dst - __src) / 40;
  v9 = (a3 - __dst) / 40;
  if (v8 < v9)
  {
    if (a4 != __src || &__src[40 * v8] <= a4)
    {
      memmove(a4, __src, 40 * v8);
    }

    v11 = &v4[40 * v8];
    while (1)
    {
      if (v4 >= v11 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_58;
      }

      sub_1E327F454(v6, v77);
      sub_1E327F454(v4, v74);
      v13 = v78;
      v14 = v79;
      __swift_project_boxed_opaque_existential_1(v77, v78);
      v15 = (*(v14 + 32))(v13, v14);
      if (v16 & 1) != 0 || (v17 = *&v15, v18 = v4, v19 = v75, v20 = v76, __swift_project_boxed_opaque_existential_1(v74, v75), v21 = *(v20 + 32), v22 = v20, v4 = v18, v23 = COERCE_DOUBLE(v21(v19, v22)), (v24))
      {
        v25 = v78;
        v26 = v79;
        __swift_project_boxed_opaque_existential_1(v77, v78);
        v27 = (*(v26 + 24))(v25, v26);
        v29 = (v28 & 1) != 0 ? 0 : v27;
        v30 = v75;
        v31 = v76;
        __swift_project_boxed_opaque_existential_1(v74, v75);
        v32 = (*(v31 + 24))(v30, v31);
        v34 = (v33 & 1) != 0 ? 0 : v32;
        v35 = v29 < v34;
      }

      else
      {
        v35 = v17 < v23;
      }

      __swift_destroy_boxed_opaque_existential_1(v74);
      __swift_destroy_boxed_opaque_existential_1(v77);
      if (!v35)
      {
        break;
      }

      v36 = v6;
      v37 = v7 == v6;
      v6 += 40;
      if (!v37)
      {
        goto LABEL_27;
      }

LABEL_28:
      v7 += 40;
    }

    v36 = v4;
    v37 = v7 == v4;
    v4 += 40;
    if (v37)
    {
      goto LABEL_28;
    }

LABEL_27:
    v38 = *v36;
    v39 = *(v36 + 1);
    *(v7 + 4) = *(v36 + 4);
    *v7 = v38;
    *(v7 + 1) = v39;
    goto LABEL_28;
  }

  if (a4 != __dst || &__dst[40 * v9] <= a4)
  {
    memmove(a4, __dst, 40 * v9);
  }

  v41 = &v4[40 * v9];
  v73 = v7;
LABEL_35:
  v42 = (v6 - 40);
  v5 -= 40;
  v43 = (v41 - 40);
  v80 = v6;
  while (1)
  {
    v11 = (v43 + 40);
    if (v43 + 40 <= v4 || v6 <= v7)
    {
      break;
    }

    v45 = v4;
    sub_1E327F454(v43, v77);
    sub_1E327F454(v42, v74);
    v47 = v78;
    v46 = v79;
    __swift_project_boxed_opaque_existential_1(v77, v78);
    v48 = (*(v46 + 32))(v47, v46);
    if (v49 & 1) != 0 || (v50 = *&v48, v51 = v75, v52 = v76, __swift_project_boxed_opaque_existential_1(v74, v75), v53 = COERCE_DOUBLE((*(v52 + 32))(v51, v52)), (v54))
    {
      v55 = v78;
      v56 = v79;
      __swift_project_boxed_opaque_existential_1(v77, v78);
      v57 = (*(v56 + 24))(v55, v56);
      if (v58)
      {
        v59 = 0;
      }

      else
      {
        v59 = v57;
      }

      v60 = v75;
      v61 = v76;
      __swift_project_boxed_opaque_existential_1(v74, v75);
      v62 = (*(v61 + 24))(v60, v61);
      if (v63)
      {
        v64 = 0;
      }

      else
      {
        v64 = v62;
      }

      v65 = v59 < v64;
    }

    else
    {
      v65 = v50 < v53;
    }

    __swift_destroy_boxed_opaque_existential_1(v74);
    __swift_destroy_boxed_opaque_existential_1(v77);
    v4 = v45;
    if (v65)
    {
      v41 = (v43 + 40);
      v6 = v42;
      v7 = v73;
      if ((v5 + 40) != v80)
      {
        v68 = *v42;
        v69 = *(v42 + 16);
        *(v5 + 32) = *(v42 + 32);
        *v5 = v68;
        *(v5 + 16) = v69;
        v6 = v42;
      }

      goto LABEL_35;
    }

    v6 = v80;
    if (v11 != (v5 + 40))
    {
      v66 = *v43;
      v67 = *(v43 + 16);
      *(v5 + 32) = *(v43 + 32);
      *v5 = v66;
      *(v5 + 16) = v67;
    }

    v5 -= 40;
    v43 -= 40;
    v7 = v73;
  }

LABEL_58:
  v70 = (v11 - v4) / 40;
  if (v6 != v4 || v6 >= &v4[40 * v70])
  {
    memmove(v6, v4, 40 * v70);
  }

  return 1;
}

void *sub_1E3AF90C0(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32E38, qword_1E42B9D60);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[5 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE58, &unk_1E42A8830);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1E3AF91F8(void *a1)
{
  v1 = [a1 episodes];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1E3A677E8();
  sub_1E3AF9294(&qword_1ECF315E0, sub_1E3A677E8, MEMORY[0x1E69E81B8]);
  v3 = sub_1E4206624();

  return v3;
}

uint64_t sub_1E3AF9294(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_1E3AF92F0(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32E38, qword_1E42B9D60);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[5 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE58, &unk_1E42A8830);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1E3AF9428()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1E4200674();

  return v1;
}

uint64_t sub_1E3AF949C(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1E4200684();
}

uint64_t sub_1E3AF950C(uint64_t a1)
{
  v2 = v1;
  v54 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2D2B0, &unk_1E429D3D0);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  v5 = v53 - v4;
  sub_1E4206C04();
  OUTLINED_FUNCTION_0_10();
  v55 = v6;
  v56 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v9 = v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2CD00, &unk_1E42A2900);
  OUTLINED_FUNCTION_0_10();
  v59 = v10;
  v60 = v11;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  v14 = v53 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32E48, &qword_1E42B9F48);
  OUTLINED_FUNCTION_0_10();
  v61 = v15;
  v62 = v16;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  v19 = v53 - v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32E50, &qword_1E42B9F50);
  OUTLINED_FUNCTION_0_10();
  v63 = v20;
  v64 = v21;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v22);
  v57 = v53 - v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32E58, &qword_1E42B9F58);
  OUTLINED_FUNCTION_0_10();
  v65 = v24;
  v66 = v25;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v26);
  v58 = v53 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32E40, &qword_1E42B9F40);
  OUTLINED_FUNCTION_0_10();
  v30 = v29;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v31);
  v33 = v53 - v32;
  v34 = OBJC_IVAR____TtC8VideosUIP33_F6EAE0B3C3F6F51B75AFA5085106087431OrientationNotificationObserver__orientation;
  v67 = 0;
  type metadata accessor for UIDeviceOrientation();
  v53[1] = v35;
  sub_1E4200634();
  (*(v30 + 32))(v2 + v34, v33, v28);
  *(v2 + OBJC_IVAR____TtC8VideosUIP33_F6EAE0B3C3F6F51B75AFA5085106087431OrientationNotificationObserver_notificationObserver) = 0;
  *(v2 + OBJC_IVAR____TtC8VideosUIP33_F6EAE0B3C3F6F51B75AFA5085106087431OrientationNotificationObserver_allowedOrientations) = v54;
  v36 = objc_opt_self();
  v37 = [v36 currentDevice];
  [v37 beginGeneratingDeviceOrientationNotifications];

  v38 = [objc_opt_self() defaultCenter];
  sub_1E4206C14();

  sub_1E32ADE38();
  v39 = sub_1E4206A04();
  v67 = v39;
  v40 = sub_1E42069A4();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v40);
  sub_1E3AFA380(&qword_1EE23B130, MEMORY[0x1E6969F20], MEMORY[0x1E6969F18]);
  sub_1E3AFA380(&qword_1EE23B1E0, sub_1E32ADE38, MEMORY[0x1E69E8028]);
  v41 = v55;
  sub_1E42007D4();
  sub_1E32ADF50(v5);

  (*(v56 + 8))(v9, v41);
  OUTLINED_FUNCTION_4_0();
  swift_allocObject();
  swift_weakInit();
  sub_1E32752B0(&qword_1EE28A240, &unk_1ECF2CD00, &unk_1E42A2900, MEMORY[0x1E695BE98]);

  v42 = v59;
  sub_1E4200744();

  (*(v60 + 8))(v14, v42);
  OUTLINED_FUNCTION_4_0();
  swift_allocObject();
  swift_weakInit();
  sub_1E32752B0(&qword_1EE28A310, &qword_1ECF32E48, &qword_1E42B9F48, MEMORY[0x1E695BD60]);
  v43 = v57;
  v44 = v61;
  sub_1E42007B4();

  (*(v62 + 8))(v19, v44);
  sub_1E32752B0(&qword_1EE28A2E8, &qword_1ECF32E50, &qword_1E42B9F50, MEMORY[0x1E695BDE0]);
  sub_1E3AFA380(&qword_1EE23B160, type metadata accessor for UIDeviceOrientation, &unk_1E42B9EA0);
  v45 = v58;
  v46 = v63;
  sub_1E4200824();
  (*(v64 + 8))(v43, v46);
  OUTLINED_FUNCTION_4_0();
  swift_allocObject();
  swift_weakInit();

  sub_1E32752B0(&qword_1EE28A340, &qword_1ECF32E58, &qword_1E42B9F58, MEMORY[0x1E695BD38]);
  v47 = v65;
  v48 = sub_1E4200844();

  (*(v66 + 8))(v45, v47);
  *(v2 + OBJC_IVAR____TtC8VideosUIP33_F6EAE0B3C3F6F51B75AFA5085106087431OrientationNotificationObserver_notificationObserver) = v48;

  v49 = [v36 currentDevice];
  v50 = [v49 orientation];

  v51 = sub_1E3AF9CF8(v50);
  sub_1E3AF949C(v51);
  return v2;
}

uint64_t sub_1E3AF9CF8(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC8VideosUIP33_F6EAE0B3C3F6F51B75AFA5085106087431OrientationNotificationObserver_allowedOrientations))
  {
    v3 = *(v1 + OBJC_IVAR____TtC8VideosUIP33_F6EAE0B3C3F6F51B75AFA5085106087431OrientationNotificationObserver_allowedOrientations);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  if (sub_1E3AF9DBC(5, v3))
  {

    return a1;
  }

  v5 = sub_1E3AF9DBC(6, v3);

  if (v5 || (a1 - 7) < 0xFFFFFFFFFFFFFFFELL)
  {
    return a1;
  }

  return sub_1E3AF9428();
}

BOOL sub_1E3AF9DBC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

uint64_t sub_1E3AF9DE8()
{
  v1 = [objc_opt_self() currentDevice];
  [v1 endGeneratingDeviceOrientationNotifications];

  v2 = OBJC_IVAR____TtC8VideosUIP33_F6EAE0B3C3F6F51B75AFA5085106087431OrientationNotificationObserver__orientation;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32E40, &qword_1E42B9F40);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v4, v5);
}

uint64_t sub_1E3AF9EE8(uint64_t a1, uint64_t a2, char a3)
{
  type metadata accessor for OrientationNotificationObserver(0);
  sub_1E3AF9FA4();
  sub_1E4200BC4();
  v3 = sub_1E3AF9428();

  return v3;
}

uint64_t type metadata accessor for OrientationNotificationObserver(uint64_t a1)
{
  result = qword_1EE292710;
  if (!qword_1EE292710)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1E3AF9FA4()
{
  result = qword_1EE292720[0];
  if (!qword_1EE292720[0])
  {
    type metadata accessor for OrientationNotificationObserver(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE292720);
  }

  return result;
}

uint64_t (*sub_1E3AF9FFC(uint64_t a1))()
{
  OUTLINED_FUNCTION_4_0();
  *(swift_allocObject() + 16) = a1;
  return sub_1E3AFA04C;
}

uint64_t sub_1E3AFA04C()
{
  type metadata accessor for OrientationNotificationObserver(0);
  v0 = swift_allocObject();

  sub_1E3AF950C(v1);
  return v0;
}

void sub_1E3AFA0B4(uint64_t a1, __n128 a2)
{
  sub_1E3AFA150(319, a2);
  if (v2 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1E3AFA150(uint64_t a1, __n128 a2)
{
  if (!qword_1EE289F28)
  {
    type metadata accessor for UIDeviceOrientation();
    v2 = sub_1E4200694();
    if (!v3)
    {
      atomic_store(v2, &qword_1EE289F28);
    }
  }
}

void type metadata accessor for UIDeviceOrientation()
{
  if (!qword_1EE23B158)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EE23B158);
    }
  }
}

uint64_t sub_1E3AFA208@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3AF9428();
  *a1 = result;
  return result;
}

void sub_1E3AFA25C(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  OUTLINED_FUNCTION_7_4(a1);
  if (swift_weakLoadStrong())
  {
    v3 = [objc_opt_self() currentDevice];
    v4 = [v3 orientation];

    v5 = sub_1E3AF9CF8(v4);
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

BOOL sub_1E3AFA2F8(uint64_t *a1)
{
  v1 = *a1;
  OUTLINED_FUNCTION_7_4(a1);
  Strong = swift_weakLoadStrong();
  if (Strong && (v3 = *(Strong + OBJC_IVAR____TtC8VideosUIP33_F6EAE0B3C3F6F51B75AFA5085106087431OrientationNotificationObserver_allowedOrientations), , , v3))
  {
    v4 = sub_1E3AF9DBC(v1, v3);
  }

  else
  {
    return 1;
  }

  return v4;
}

uint64_t sub_1E3AFA380(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1E3AFA3C8(uint64_t *a1)
{
  v1 = *a1;
  OUTLINED_FUNCTION_7_4(a1);
  if (swift_weakLoadStrong())
  {
    sub_1E3AF949C(v1);
  }

  return result;
}

id sub_1E3AFA43C()
{
  v1 = OBJC_IVAR____TtC8VideosUI37OfferSelectionFooterSupplementaryView____lazy_storage___separatorView;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI37OfferSelectionFooterSupplementaryView____lazy_storage___separatorView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8VideosUI37OfferSelectionFooterSupplementaryView____lazy_storage___separatorView);
  }

  else
  {
    v4 = [objc_allocWithZone(VUISeparatorView) init];
    v10 = v4;
    MEMORY[0x1EEE9AC00](v4);
    v5 = sub_1E3280A90(0, &unk_1ECF38CB0, off_1E87285A8);
    sub_1E41E1A64(&v10, sub_1E3AFA53C, v5, &v11);

    v6 = v11;
    v7 = *(v0 + v1);
    *(v0 + v1) = v11;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

void sub_1E3AFA558(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC8VideosUI37OfferSelectionFooterSupplementaryView_components;
  swift_beginAccess();
  v5 = *&v2[v4];
  *&v2[v4] = a1;
  v6 = OBJC_IVAR____TtC8VideosUI37OfferSelectionFooterSupplementaryView_components;
  OUTLINED_FUNCTION_5_0(&v2[OBJC_IVAR____TtC8VideosUI37OfferSelectionFooterSupplementaryView_components], v27);
  v7 = *&v2[v6];
  v8 = *(v7 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    v25 = MEMORY[0x1E69E7CC0];

    sub_1E4207574();
    v10 = 32;
    do
    {
      v11 = *(v7 + v10);
      sub_1E4207544();
      OUTLINED_FUNCTION_2_113();
      sub_1E4207584();
      OUTLINED_FUNCTION_2_113();
      sub_1E4207594();
      sub_1E4207554();
      v10 += 16;
      --v8;
    }

    while (v8);

    v9 = v25;
  }

  v12 = *(v5 + 16);
  v13 = MEMORY[0x1E69E7CC0];
  if (v12)
  {
    v26 = MEMORY[0x1E69E7CC0];
    sub_1E4207574();
    v14 = (v5 + 32);
    do
    {
      v15 = *v14;
      v14 += 2;
      v16 = v15;
      sub_1E4207544();
      OUTLINED_FUNCTION_2_113();
      sub_1E4207584();
      OUTLINED_FUNCTION_2_113();
      sub_1E4207594();
      sub_1E4207554();
      --v12;
    }

    while (v12);
    v13 = v26;
  }

  if (sub_1E3A9BD04(v9, v13))
  {
  }

  else
  {
    v17 = sub_1E32AE9B0(v13);
    for (i = 0; v17 != i; ++i)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x1E6911E60](i, v13);
      }

      else
      {
        if (i >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_30;
        }

        v19 = *(v13 + 8 * i + 32);
      }

      v20 = v19;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        return;
      }

      [v19 vui_removeFromSuperView];
    }

    v21 = sub_1E32AE9B0(v9);
    for (j = 0; v21 != j; ++j)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v23 = MEMORY[0x1E6911E60](j, v9);
      }

      else
      {
        if (j >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_32;
        }

        v23 = *(v9 + 8 * j + 32);
      }

      v24 = v23;
      if (__OFADD__(j, 1))
      {
        goto LABEL_31;
      }

      [v2 vui:v23 addSubview:0 oldView:?];
    }

    [v2 vui_setNeedsLayout];
  }
}

id sub_1E3AFA80C()
{
  OUTLINED_FUNCTION_0_8();
  ObjectType = swift_getObjectType();
  *(v0 + OBJC_IVAR____TtC8VideosUI37OfferSelectionFooterSupplementaryView____lazy_storage___separatorView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI37OfferSelectionFooterSupplementaryView_components) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC8VideosUI37OfferSelectionFooterSupplementaryView_layout) = 0;
  v7 = ObjectType;
  v2 = OUTLINED_FUNCTION_2_0();
  v5 = objc_msgSendSuper2(v3, v4, v2, v0, v7);
  [v5 setVuiBackgroundColor_];

  return v5;
}

void sub_1E3AFA8DC()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI37OfferSelectionFooterSupplementaryView____lazy_storage___separatorView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI37OfferSelectionFooterSupplementaryView_components) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC8VideosUI37OfferSelectionFooterSupplementaryView_layout) = 0;
  sub_1E42076B4();
  __break(1u);
}

double sub_1E3AFA97C(char a1, double a2)
{
  v4 = v2;
  v6 = OBJC_IVAR____TtC8VideosUI37OfferSelectionFooterSupplementaryView_layout;
  OUTLINED_FUNCTION_5_0(&v2[OBJC_IVAR____TtC8VideosUI37OfferSelectionFooterSupplementaryView_layout], v130);
  if (!*&v2[v6] || (OUTLINED_FUNCTION_8(), v8 = *(v7 + 176), v9 = , v8(v131, v9), v10 = *&v131[1], v117 = *v131, v12 = *&v131[2], v11 = *&v131[3], , (v132 & 1) != 0))
  {
    v10 = *(MEMORY[0x1E69DDCE0] + 8);
    v117 = *MEMORY[0x1E69DDCE0];
    v12 = *(MEMORY[0x1E69DDCE0] + 16);
    v11 = *(MEMORY[0x1E69DDCE0] + 24);
  }

  type metadata accessor for LayoutGrid();
  sub_1E3A258E4(a2);
  if (v10 <= v13)
  {
    v10 = v13;
  }

  if (v11 > v14)
  {
    v15 = v11;
  }

  else
  {
    v15 = v14;
  }

  v112 = v15;
  v116 = a2;
  v113 = v10;
  v115 = v6;
  if (!*&v2[v6] || (OUTLINED_FUNCTION_8(), v17 = *(v16 + 1152), v18 = , *&v122 = COERCE_DOUBLE(v17(v18)), LOBYTE(v17) = v19, , (v17 & 1) != 0))
  {
    *&v122 = 8.0;
  }

  v20 = OBJC_IVAR____TtC8VideosUI37OfferSelectionFooterSupplementaryView_components;
  OUTLINED_FUNCTION_5_0(&v2[OBJC_IVAR____TtC8VideosUI37OfferSelectionFooterSupplementaryView_components], v129);
  v121 = v20;
  v21 = *(*&v2[v20] + 16);

  v23 = 0;
  v24 = MEMORY[0x1E69E7CC0];
  v118 = v22;
  v25 = v22 + 40;
  v26 = 0.0;
  if (v21)
  {
    while (v23 < *(v118 + 16))
    {
      v120 = v21;
      v27 = *v25;
      v119 = v25;
      v28 = *(**v25 + 248);
      v29 = *(v25 - 8);

      v31 = COERCE_DOUBLE(v28(v30));
      if (v32)
      {
        v33 = 0.0;
      }

      else
      {
        v33 = v31;
      }

      sub_1E3C8B764(v34, v33, 0.0);
      v36 = v35;
      v38 = v37;

      v40 = *(*v27 + 152);
      v40(v133, v39);
      OUTLINED_FUNCTION_3_117();
      v144 = v41;
      LOBYTE(v145) = v42;
      v141 = v117;
      v46 = sub_1E3793CAC(v43, v44, v45);
      max<A>(_:_:)();
      i = v128;
      v126 = *&v122;
      (v40)(&v134);
      OUTLINED_FUNCTION_3_117();
      v141 = v47;
      v142 = v48;
      v127 = *&v4[v121];
      v124 = v23 - 1;
      v125 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31CB0, &qword_1E42B9FB0);
      sub_1E3827828(&qword_1ECF31CB8, &qword_1ECF31CB0, &qword_1E42B9FB0);
      sub_1E38D2054(&v124, &v144);
      if (v144)
      {

        OUTLINED_FUNCTION_8();
        (*(v49 + 152))(v135);

        v50 = v135[3];
        v51 = v136;
        if (v136)
        {
          v50 = 0;
        }
      }

      else
      {
        v50 = 0;
        v51 = 1;
      }

      ++v23;
      v144 = v50;
      LOBYTE(v145) = v51 & 1;
      v52 = max<A>(_:_:_:)(&v126, &v141, &v144, MEMORY[0x1E69E7DE0], v46);
      a2 = v127;
      v40(&v137, v52);
      OUTLINED_FUNCTION_3_117();
      v144 = v53;
      LOBYTE(v145) = v54;
      v141 = v12;
      max<A>(_:_:)();
      v10 = v126;
      v123 = v122;
      (v40)(v138);
      OUTLINED_FUNCTION_3_117();
      v141 = v55;
      v142 = v56;
      v124 = v23;
      v125 = 0;
      sub_1E38D2054(&v124, &v144);
      if (v144)
      {

        OUTLINED_FUNCTION_8();
        (*(v57 + 152))(v139);

        v58 = v139[1];
        v59 = v140;
        if (v140)
        {
          v58 = 0;
        }
      }

      else
      {
        v58 = 0;
        v59 = 1;
      }

      v144 = v58;
      LOBYTE(v145) = v59 & 1;
      max<A>(_:_:_:)(&v123, &v141, &v144, MEMORY[0x1E69E7DE0], v46);
      v60 = v124;
      v61 = v38 + sub_1E3952BD8(i, a2, v10);
      if (v26 <= v61)
      {
        v26 = v61;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_1E3AFBBC0(0, v24[2] + 1, 1, v24);
      }

      v63 = v24[2];
      v62 = v24[3];
      v20 = v63 + 1;
      if (v63 >= v62 >> 1)
      {
        v24 = sub_1E3AFBBC0((v62 > 1), v63 + 1, 1, v24);
      }

      v24[2] = v20;
      v64 = &v24[7 * v63];
      *(v64 + 4) = v29;
      *(v64 + 5) = v36;
      v64[6] = v38;
      v64[7] = i;
      v64[8] = a2;
      v64[9] = v10;
      *(v64 + 10) = v60;
      v25 = v119 + 16;
      v21 = v120 - 1;
      if (v120 == 1)
      {
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    v24 = sub_1E3AFBBAC(v24);
LABEL_58:
    v97 = 5;
    do
    {
      *&v24[v97] = a2 / v10 * *&v24[v97];
      v97 += 7;
      --v20;
    }

    while (v20);
    goto LABEL_60;
  }

LABEL_34:

  if (a1)
  {
    if (*&v4[v115])
    {
      OUTLINED_FUNCTION_8();
      v69 = *(v68 + 304);

      v71 = v69(v70);
      v73 = v72;

      v144 = v71;
      LOBYTE(v145) = v73 & 1;
      v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CA40, &qword_1E429EC80);
      sub_1E3A1F10C(v74, v75, v76);
      v65 = sub_1E4149AF0(v74, &v141);
      if ((v142 & 1) == 0)
      {

        return v116;
      }

      v77 = *&v4[v115];
      v141 = v26;
      if (v77)
      {
        v78 = *(*v77 + 328);

        v80 = v78(v79);
        v82 = v81;

LABEL_71:
        v100 = v116;
        v144 = v80;
        LOBYTE(v145) = v82 & 1;
        sub_1E3793CAC(v65, v66, v67);
        max<A>(_:_:)();

        return v100;
      }

      v80 = 0;
    }

    else
    {
      v80 = 0;
      v141 = v26;
    }

    v82 = 1;
    goto LABEL_71;
  }

  v83 = v24[2];
  v84 = 0.0;
  v85 = 8;
  v86 = v83;
  a2 = v116;
  for (i = v113; v86; --v86)
  {
    v84 = v84 + *&v24[v85];
    v85 += 7;
  }

  sub_1E3AFB404(v24, &v141);
  v87 = v141;
  if (v141 == 0.0)
  {
    v20 = 0;
  }

  else
  {
    v20 = v143;
    sub_1E325F748(&v141, &qword_1ECF32E78, &qword_1E42B9FB8);
  }

  v10 = sub_1E4149E00(v20, *&v87 == 0, v84);
  v88 = 0;
  v89 = 0.0;
  v90 = 5;
  while (v83 != v88)
  {
    if (v88 >= v24[2])
    {
      goto LABEL_82;
    }

    ++v88;
    v89 = v89 + *&v24[v90];
    v90 += 7;
  }

  v91 = v10 + v89;
  v92 = [v4 vuiIsRTL];
  if (*&v4[v115])
  {
    OUTLINED_FUNCTION_8();
    v94 = *(v93 + 456);

    LOBYTE(v94) = v94(v95);

    switch(v94)
    {
      case 1:
        goto LABEL_65;
      case 2:
        if (v92)
        {
          sub_1E3AFB480(v24);
          v24 = v111;
        }

        goto LABEL_60;
      case 3:
        if (v92)
        {
          sub_1E3AFB480(v24);
          v24 = v108;
        }

        goto LABEL_75;
      case 4:
        goto LABEL_60;
      case 5:
LABEL_75:
        sub_1E3AFB404(v24, &v144);
        v109 = v144;
        if (v144)
        {
          v110 = v146;
          sub_1E325F748(&v144, &qword_1ECF32E78, &qword_1E42B9FB8);
        }

        else
        {
          v110 = 0;
        }

        sub_1E4149E0C(v110, v109 == 0, v112);
        break;
      default:
        goto LABEL_51;
    }

    goto LABEL_65;
  }

LABEL_51:
  a2 = v116 - sub_1E3952BE0(v117, v113, v12, v112);
  v10 = v91 - v10;
  if (v10 > 0.0 && v10 < a2)
  {
    v20 = v24[2];
    if (v20)
    {
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_58;
      }

      goto LABEL_83;
    }
  }

LABEL_60:
  v98 = v24[2];
  if (v98)
  {
    v99 = v24[8];
  }

  else
  {
    v99 = 0;
  }

  sub_1E4149E0C(v99, v98 == 0, i);
LABEL_65:
  v101 = v24[2];
  if (v101)
  {
    v102 = v24 + 8;
    do
    {
      v103 = *(v102 - 4);
      v102 += 7;
      v104 = v103;
      v147.origin.x = OUTLINED_FUNCTION_2_79();
      CGRectGetMaxX(v147);
      [v4 bounds];
      OUTLINED_FUNCTION_2_79();
      VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
      [v104 setFrame_];

      --v101;
    }

    while (v101);
  }

  v105 = sub_1E3AFA43C();
  [*&v4[OBJC_IVAR____TtC8VideosUI37OfferSelectionFooterSupplementaryView____lazy_storage___separatorView] lineHeight];
  v100 = v116;
  [v105 setFrame_];

  return v100;
}

void *sub_1E3AFB404@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = result[2];
  if (v3)
  {
    v4 = &result[7 * v3];
    v5 = *(v4 - 3);
    v10 = *v4;
    v11 = *(v4 - 1);
    v9 = v4[1];
    result = v5;
    v7 = v9;
    v6 = v10;
    v8 = v11;
  }

  else
  {
    v5 = 0;
    v8 = 0uLL;
    v6 = 0uLL;
    v7 = 0uLL;
  }

  *a2 = v5;
  *(a2 + 8) = v8;
  *(a2 + 24) = v6;
  *(a2 + 40) = v7;
  return result;
}

void sub_1E3AFB480(void *a1)
{
  v1 = a1;
  v2 = a1[2];
  if (v2 < 2)
  {
    return;
  }

  v3 = 0;
  v4 = v2 >> 1;
  v5 = v2 - 1;
  v6 = 7 * v2;
  for (i = 5; ; i += 7)
  {
    if (v3 == v5)
    {
      goto LABEL_10;
    }

    v8 = v1[2];
    if (v3 >= v8)
    {
      break;
    }

    if (v5 >= v8)
    {
      goto LABEL_13;
    }

    v19 = *&v1[i + 2];
    v20 = *&v1[i];
    v18 = *&v1[i + 4];
    v9 = v1[v6 - 3];
    v21 = *&v1[v6];
    v22 = *&v1[v6 - 2];
    v10 = v1[v6 + 2];
    v11 = v1[v6 + 3];
    v12 = v1[i - 1];
    v13 = v9;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_1E3AFBBAC(v1);
    }

    v14 = &v1[i];
    v15 = v1[i - 1];
    *(v14 - 1) = v13;
    *v14 = v22;
    *(v14 + 1) = v21;
    v14[4] = v10;
    v14[5] = v11;

    if (v5 >= v1[2])
    {
      goto LABEL_14;
    }

    v16 = &v1[v6];
    v17 = v1[v6 - 3];
    *(v16 - 3) = v12;
    *(v16 - 1) = v20;
    *v16 = v19;
    v16[1] = v18;

LABEL_10:
    ++v3;
    --v5;
    v6 -= 7;
    if (v4 == v3)
    {
      return;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
LABEL_14:
  __break(1u);
}

void sub_1E3AFB630(uint64_t a1, char *a2)
{
  v4 = (*(*a1 + 464))();
  if (v4)
  {
    *&v37 = v4;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790, &qword_1E42996A0);
    sub_1E3827828(&qword_1EE23B540, &unk_1ECF2C790, &qword_1E42996A0);
    sub_1E38D2480(v5, v44);

    v36 = v44[0];
    if (v44[0])
    {
      if (a2)
      {
        v6 = a2;
      }

      else
      {
        v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      }

      v7 = (*(*a1 + 392))(a2);
      v8 = v7;
      if (v7 && *v7 != _TtC8VideosUI30OfferSelectionFooterViewLayout)
      {

        v8 = 0;
      }

      v9 = OBJC_IVAR____TtC8VideosUI37OfferSelectionFooterSupplementaryView_layout;
      swift_beginAccess();
      *&v6[v9] = v8;

      v35 = sub_1E32AE9B0(v36);
      v34 = OBJC_IVAR____TtC8VideosUI37OfferSelectionFooterSupplementaryView_components;
      OUTLINED_FUNCTION_5_0(&v6[OBJC_IVAR____TtC8VideosUI37OfferSelectionFooterSupplementaryView_components], v43);
      v10 = 0;
      v33 = MEMORY[0x1E69E7CC0];
      while (v35 != v10)
      {
        if ((v36 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x1E6911E60](v10, v36);
        }

        else
        {
          if (v10 >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_33;
          }

          v11 = *(v36 + 8 * v10 + 32);
        }

        v12 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          __break(1u);
LABEL_33:
          __break(1u);
          return;
        }

        v13 = v6;
        v42 = *&v6[v34];
        v40 = v10;
        v41 = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31CB0, &qword_1E42B9FB0);
        sub_1E3827828(&qword_1ECF31CB8, &qword_1ECF31CB0, &qword_1E42B9FB0);
        sub_1E38D2054(&v40, &v37);
        v14 = v37;
        if (v37)
        {
        }

        v15 = *_s8VideosUIAAC19initializeUIFactoryyyFZ_0();
        v39 = 0;
        v37 = 0u;
        v38 = 0u;
        v16 = v15;
        v17 = sub_1E393D9C4(v11, v14, &v37, 0);

        v18 = sub_1E325F748(&v37, &qword_1ECF296C0, &unk_1E429BBE0);
        if (v17)
        {
          v19 = (*(*v11 + 392))(v18);
          if (!v19)
          {
            type metadata accessor for ViewLayout();
            v19 = sub_1E3C2F968();
          }

          v20 = v19;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v33 = sub_1E3A9BED8(0, v33[2] + 1, 1, v33);
          }

          v22 = v33[2];
          v21 = v33[3];
          if (v22 >= v21 >> 1)
          {
            v33 = sub_1E3A9BED8((v21 > 1), v22 + 1, 1, v33);
          }

          v33[2] = v22 + 1;
          v23 = &v33[2 * v22];
          v23[4] = v17;
          v23[5] = v20;
          v10 = v12;
          v6 = v13;
        }

        else
        {

          ++v10;
          v6 = v13;
        }
      }

      sub_1E3AFA558(v33);
      *(&v38 + 1) = &unk_1F5D5DAC8;
      v39 = &off_1F5D5C998;
      LOBYTE(v37) = 13;
      sub_1E37E6ADC(v24, v25, v26);
      sub_1E39C2B80();
      __swift_destroy_boxed_opaque_existential_1(&v37);
      v27 = v40;
      v28 = sub_1E3AFA43C();
      v31 = v28;
      if (v27 == 8)
      {
        LOBYTE(v32) = 1;
      }

      else
      {
        LOBYTE(v37) = v27;
        LOBYTE(v40) = 4;
        sub_1E37E6B30(v28, v29, v30);
        v32 = sub_1E4205E84() ^ 1;
      }

      [v31 setHidden_];
    }
  }
}

double sub_1E3AFBB00()
{

  return result;
}

void *sub_1E3AFBBC0(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32E80, &qword_1E42B9FF8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[7 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 56 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32E88, qword_1E42BA000);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1E3AFBD1C()
{
  v0 = sub_1E3AFBD8C();
  v1 = [v0 vuiVisibleCells];

  sub_1E3280A90(0, &qword_1EE23B120, 0x1E69DC7F8);
  v2 = sub_1E42062B4();

  return v2;
}

id sub_1E3AFBD8C()
{
  v1 = OBJC_IVAR____TtC8VideosUI15VUICarouselView____lazy_storage___collectionView;
  v2 = *&v0[OBJC_IVAR____TtC8VideosUI15VUICarouselView____lazy_storage___collectionView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC8VideosUI15VUICarouselView____lazy_storage___collectionView];
  }

  else
  {
    v4 = v0;
    v5 = sub_1E3AFD61C();
    type metadata accessor for BaseCollectionView();
    [v4 bounds];
    OUTLINED_FUNCTION_18_3();
    v6 = v5;
    OUTLINED_FUNCTION_17_4();
    v8 = sub_1E373BA04(v7);
    [v8 setDecelerationRate_];
    [v8 setShowsHorizontalScrollIndicator_];
    [v8 setShowsVerticalScrollIndicator_];
    v9 = objc_opt_self();
    v10 = v8;
    v11 = [v9 clearColor];
    [v10 setVuiBackgroundColor_];

    [v10 setVuiClipsToBounds_];
    v12 = *&v4[v1];
    *&v4[v1] = v10;
    v3 = v10;

    v2 = 0;
  }

  v13 = v2;
  return v3;
}

__n128 sub_1E3AFBEFC()
{
  result = *MEMORY[0x1E69DDCE0];
  v1 = *(MEMORY[0x1E69DDCE0] + 16);
  xmmword_1EE2AB130 = *MEMORY[0x1E69DDCE0];
  unk_1EE2AB140 = v1;
  return result;
}

uint64_t sub_1E3AFBF18(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI15VUICarouselView_updateCellVisibleProgress;
  OUTLINED_FUNCTION_3_0(v1 + OBJC_IVAR____TtC8VideosUI15VUICarouselView_updateCellVisibleProgress, v17);
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = OBJC_IVAR____TtC8VideosUI15VUICarouselView_updateCellVisibleProgress;
  result = OUTLINED_FUNCTION_5_0(v1 + OBJC_IVAR____TtC8VideosUI15VUICarouselView_updateCellVisibleProgress, v18);
  if (v4 != *(v1 + v5))
  {
    v7 = OBJC_IVAR____TtC8VideosUI15VUICarouselView_updateCellVisibleProgress;
    result = OUTLINED_FUNCTION_5_0(v1 + OBJC_IVAR____TtC8VideosUI15VUICarouselView_updateCellVisibleProgress, v19);
    if ((*(v1 + v7) & 1) == 0)
    {
      v8 = sub_1E3AFBD1C();
      result = sub_1E32AE9B0(v8);
      if (result)
      {
        v9 = result;
        if (result < 1)
        {
          __break(1u);
          return result;
        }

        for (i = 0; i != v9; ++i)
        {
          if ((v8 & 0xC000000000000001) != 0)
          {
            v11 = MEMORY[0x1E6911E60](i, v8);
          }

          else
          {
            v11 = *(v8 + 8 * i + 32);
          }

          v12 = v11;
          ObjectType = swift_getObjectType();
          if (dynamic_cast_existential_1_conditional(v12, ObjectType, &protocol descriptor for VUICarouselViewCellVisibleUpdating))
          {
            v15 = v14;
            v16 = swift_getObjectType();
            (*(v15 + 8))(v16, v15, 0.0);
          }
        }
      }
    }
  }

  return result;
}

unint64_t sub_1E3AFC054()
{
  sub_1E42074B4();

  v1 = sub_1E41E1364(v0);
  MEMORY[0x1E69109E0](v1);

  MEMORY[0x1E69109E0](8250, 0xE200000000000000);
  v2 = sub_1E4207944();
  MEMORY[0x1E69109E0](v2);

  MEMORY[0x1E69109E0](41, 0xE100000000000000);
  return 0xD000000000000012;
}

void sub_1E3AFC138(uint64_t a1)
{
  v1 = sub_1E3AFBD8C();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = sub_1E4205ED4();
  [v1 vui:ObjCClassFromMetadata registerClass:v3 forCellWithReuseIdentifier:?];
}

uint64_t sub_1E3AFC1C8()
{
  v2 = v0;
  OUTLINED_FUNCTION_118();
  v48 = sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v46 = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  sub_1E41FE7A4();
  OUTLINED_FUNCTION_0_10();
  v42 = v8;
  v43 = v9;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v41 = v11 - v10;
  v12 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  v18 = v17 - v16;
  v47 = sub_1E3AFCC0C(*&v0[OBJC_IVAR____TtC8VideosUI15VUICarouselView_currentCarouselIndex]);
  v19 = (*(v1 + 56) & 1) != 0 && sub_1E3AFD6CC() > 1;
  v44 = v19;
  v45 = OBJC_IVAR____TtC8VideosUI15VUICarouselView_isInfiniteScrollEnabled;
  v20 = v19 ^ v0[OBJC_IVAR____TtC8VideosUI15VUICarouselView_isInfiniteScrollEnabled];
  v21 = sub_1E324FBDC();
  (*(v14 + 16))(v18, v21, v12);
  v22 = v0;
  v23 = sub_1E41FFC94();
  v24 = sub_1E4206814();

  v40 = v24;
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v38 = OUTLINED_FUNCTION_100();
    v49 = v38;
    *v25 = 136315650;
    v26 = sub_1E3AFC054();
    v39 = v12;
    v28 = OUTLINED_FUNCTION_49_1(v26, v27);

    *(v25 + 4) = v28;
    *(v25 + 12) = 1024;
    *(v25 + 14) = v20 & 1;
    *(v25 + 18) = 1024;
    *(v25 + 20) = v44;
    _os_log_impl(&dword_1E323F000, v23, v40, "%s handleConfiguration, shouldReload=%{BOOL}d, infiniteScroll = %{BOOL}d", v25, 0x18u);
    __swift_destroy_boxed_opaque_existential_1(v38);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();

    (*(v14 + 8))(v18, v39);
  }

  else
  {

    (*(v14 + 8))(v18, v12);
  }

  v2[v45] = v44;
  v29 = &v22[OBJC_IVAR____TtC8VideosUI15VUICarouselView_configuration];
  OUTLINED_FUNCTION_3_0(&v22[OBJC_IVAR____TtC8VideosUI15VUICarouselView_configuration], &v49);
  v30 = *(v1 + 16);
  *v29 = *v1;
  *(v29 + 1) = v30;
  *(v29 + 2) = *(v1 + 32);
  *(v29 + 41) = *(v1 + 41);
  sub_1E3AFD114();
  if (v20)
  {
    v31 = sub_1E3AFBD8C();
    OUTLINED_FUNCTION_6_98();
    sub_1E3AFEE08(v32, v33, MEMORY[0x1E6969B90]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32EC0, &unk_1E42B3DF0);
    sub_1E3AFC934();
    sub_1E42072E4();
    v34 = sub_1E41FE744();
    (*(v43 + 8))(v41, v42);
    [v31 reloadSections_];
  }

  MEMORY[0x1E6909190](v47, 0);
  v35 = sub_1E3AFBD8C();
  v36 = sub_1E41FE7E4();
  [v35 vui:v36 scrollToItemAtIndexPath:8 atScrollPosition:0 animated:?];

  return (*(v46 + 8))(v7, v48);
}

id sub_1E3AFC644(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = sub_1E3AFBD8C();
  v12 = sub_1E4205ED4();
  v13 = sub_1E3AFC770(a3);
  MEMORY[0x1E6909190](v13, 0);
  v14 = sub_1E41FE7E4();
  (*(v6 + 8))(v10, v4);
  v15 = [v11 vui:v12 dequeueReusableCellWithIdentifier:v14 indexPath:?];

  return v15;
}

uint64_t sub_1E3AFC770(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC8VideosUI15VUICarouselView_isInfiniteScrollEnabled) == 1)
  {
    result = sub_1E3AFD6CC();
    if (result + 0x4000000000000000 < 0)
    {
      __break(1u);
    }

    else
    {
      v4 = __OFADD__(a1, 2 * result);
      result = a1 + 2 * result;
      if (!v4)
      {
        return result;
      }
    }

    __break(1u);
    return result;
  }

  return sub_1E3AFCC0C(a1);
}

void sub_1E3AFC7E4()
{
  v0 = sub_1E41FE7A4();
  OUTLINED_FUNCTION_0_10();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  v7 = sub_1E3AFBD8C();
  OUTLINED_FUNCTION_6_98();
  sub_1E3AFEE08(v8, v9, MEMORY[0x1E6969B90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32EC0, &unk_1E42B3DF0);
  sub_1E3AFC934();
  sub_1E42072E4();
  v10 = sub_1E41FE744();
  (*(v2 + 8))(v6, v0);
  [v7 reloadSections_];
}

unint64_t sub_1E3AFC934()
{
  result = qword_1EE23B4E8;
  if (!qword_1EE23B4E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECF32EC0, &unk_1E42B3DF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE23B4E8);
  }

  return result;
}

id sub_1E3AFC998(uint64_t a1)
{
  v2 = sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = sub_1E3AFC770(a1);
  v10 = sub_1E3AFBD8C();
  MEMORY[0x1E6909190](v9, 0);
  v11 = sub_1E41FE7E4();
  (*(v4 + 8))(v8, v2);
  v12 = [v10 vui:v11 cellForItemAtIndexPath:?];

  return v12;
}

uint64_t sub_1E3AFCAA4(uint64_t a1)
{
  v2 = sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - v9;
  v11 = sub_1E3AFBD8C();
  v12 = [v11 indexPathForCell_];

  if (!v12)
  {
    return 0;
  }

  sub_1E41FE804();

  (*(v4 + 32))(v10, v7, v2);
  v13 = sub_1E41FE844();
  v14 = sub_1E3AFCC0C(v13);
  (*(v4 + 8))(v10, v2);
  return v14;
}

uint64_t sub_1E3AFCC0C(uint64_t a1)
{
  v2 = sub_1E3AFD6CC();
  if (v2 >= 1)
  {
    a1 %= v2;
  }

  return a1;
}

void sub_1E3AFCC44(uint64_t a1)
{
  v1 = sub_1E3AFC770(a1);
  v2 = sub_1E3AFCCA8(v1);
  v3 = sub_1E3AFBD8C();
  [v3 setContentOffset:0 animated:{v2, 0.0}];
}

double sub_1E3AFCCA8(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_33_9(OBJC_IVAR____TtC8VideosUI15VUICarouselView_configuration);
  OUTLINED_FUNCTION_5_0(v3, v4);
  return (*v1 + v1[2]) * a1;
}

char *sub_1E3AFCCF4()
{
  OUTLINED_FUNCTION_0_8();
  ObjectType = swift_getObjectType();
  OUTLINED_FUNCTION_12_78(OBJC_IVAR____TtC8VideosUI15VUICarouselView_dataSource);
  result = OUTLINED_FUNCTION_12_78(OBJC_IVAR____TtC8VideosUI15VUICarouselView_delegate);
  *(v0 + OBJC_IVAR____TtC8VideosUI15VUICarouselView____lazy_storage___collectionView) = 0;
  v3 = v0 + OBJC_IVAR____TtC8VideosUI15VUICarouselView_configuration;
  if (_MergedGlobals_80 != -1)
  {
    OUTLINED_FUNCTION_0_143();
    result = swift_once();
  }

  v4 = xmmword_1EE2AB130;
  v5 = unk_1EE2AB140;
  *v3 = vdupq_n_s64(0x4049000000000000uLL);
  *(v3 + 16) = 0x4024000000000000;
  *(v3 + 24) = v4;
  *(v3 + 40) = v5;
  *(v3 + 56) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI15VUICarouselView_isInfiniteScrollEnabled) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI15VUICarouselView_itemCountMultiplier) = 5;
  *(v0 + OBJC_IVAR____TtC8VideosUI15VUICarouselView_currentCarouselIndex) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI15VUICarouselView_lastViewWidth) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI15VUICarouselView_updateCellVisibleProgress) = 1;
  v6 = qword_1EE28AD58;
  *(v0 + OBJC_IVAR____TtC8VideosUI15VUICarouselView_instance) = qword_1EE28AD58;
  if (__OFADD__(v6, 1))
  {
    __break(1u);
  }

  else
  {
    qword_1EE28AD58 = v6 + 1;
    v7 = OUTLINED_FUNCTION_2_0();
    v10 = objc_msgSendSuper2(v8, v9, v7, v0, ObjectType);
    v11 = sub_1E3AFBD8C();
    v12 = MEMORY[0x1E69E7D40];
    v13 = *((*MEMORY[0x1E69E7D40] & *v11) + 0x70);
    v14 = swift_unknownObjectRetain();
    v13(v14);

    v15 = OBJC_IVAR____TtC8VideosUI15VUICarouselView____lazy_storage___collectionView;
    v16 = *&v10[OBJC_IVAR____TtC8VideosUI15VUICarouselView____lazy_storage___collectionView];
    v17 = *((*v12 & *v16) + 0x88);
    v18 = v10;
    v19 = v16;
    v17(v10);

    [*&v10[v15] setDataSource_];
    [*&v10[v15] setTranslatesAutoresizingMaskIntoConstraints_];
    [v18 addSubview_];
    v20 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1E42A1E20;
    v22 = [*&v10[v15] leadingAnchor];
    v23 = [v18 leadingAnchor];
    v24 = OUTLINED_FUNCTION_28_40();

    *(v21 + 32) = v24;
    v25 = [*&v10[v15] trailingAnchor];
    v26 = [v18 trailingAnchor];
    v27 = OUTLINED_FUNCTION_28_40();

    *(v21 + 40) = v27;
    v28 = [*&v10[v15] topAnchor];
    v29 = [v18 topAnchor];
    v30 = OUTLINED_FUNCTION_28_40();

    *(v21 + 48) = v30;
    v31 = [*&v10[v15] bottomAnchor];
    v32 = [v18 bottomAnchor];
    v33 = [v31 constraintEqualToAnchor_];

    *(v21 + 56) = v33;
    sub_1E3280A90(0, &qword_1EE23B1A0, 0x1E696ACD8);
    v34 = sub_1E42062A4();

    [v20 activateConstraints_];

    sub_1E3AFD114();
    return v18;
  }

  return result;
}

void sub_1E3AFD114()
{
  v0 = sub_1E3AFD61C();
  v1 = sub_1E3AFBD8C();
  [v1 setCollectionViewLayout:v0 animated:0];
}

void sub_1E3AFD198()
{
  OUTLINED_FUNCTION_12_78(OBJC_IVAR____TtC8VideosUI15VUICarouselView_dataSource);
  OUTLINED_FUNCTION_12_78(OBJC_IVAR____TtC8VideosUI15VUICarouselView_delegate);
  *(v0 + OBJC_IVAR____TtC8VideosUI15VUICarouselView____lazy_storage___collectionView) = 0;
  v1 = OBJC_IVAR____TtC8VideosUI15VUICarouselView_configuration;
  if (_MergedGlobals_80 != -1)
  {
    OUTLINED_FUNCTION_0_143();
    swift_once();
  }

  v2 = v0 + v1;
  v3 = xmmword_1EE2AB130;
  v4 = unk_1EE2AB140;
  *v2 = vdupq_n_s64(0x4049000000000000uLL);
  *(v2 + 16) = 0x4024000000000000;
  *(v2 + 24) = v3;
  *(v2 + 40) = v4;
  *(v2 + 56) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI15VUICarouselView_isInfiniteScrollEnabled) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI15VUICarouselView_itemCountMultiplier) = 5;
  *(v0 + OBJC_IVAR____TtC8VideosUI15VUICarouselView_currentCarouselIndex) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI15VUICarouselView_lastViewWidth) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI15VUICarouselView_updateCellVisibleProgress) = 1;
  sub_1E42076B4();
  __break(1u);
}

void sub_1E3AFD2D4()
{
  OUTLINED_FUNCTION_5_16();
  ObjectType = swift_getObjectType();
  v1 = OUTLINED_FUNCTION_6_12();
  objc_msgSendSuper2(v2, v3, v1, v0, ObjectType);
  OUTLINED_FUNCTION_18_3();
  sub_1E3AFD338();
  OUTLINED_FUNCTION_17_4();
}

void sub_1E3AFD338()
{
  OUTLINED_FUNCTION_93();
  v1 = v0;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4_12();
  v3 = OBJC_IVAR____TtC8VideosUI15VUICarouselView_lastViewWidth;
  v4 = *&v0[OBJC_IVAR____TtC8VideosUI15VUICarouselView_lastViewWidth];
  [v0 bounds];
  if (v4 != CGRectGetWidth(v19))
  {
    sub_1E324FBDC();
    v5 = OUTLINED_FUNCTION_13_89();
    v6(v5);
    v7 = v0;
    v8 = sub_1E41FFC94();
    v9 = sub_1E42067E4();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v18 = OUTLINED_FUNCTION_100();
      *v10 = 136315138;
      v11 = sub_1E3AFC054();
      v13 = OUTLINED_FUNCTION_49_1(v11, v12);

      *(v10 + 4) = v13;
      _os_log_impl(&dword_1E323F000, v8, v9, "%s viewWidth change, updating layout", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    v14 = OUTLINED_FUNCTION_53();
    v15(v14);
    [v7 bounds];
    *&v1[v3] = CGRectGetWidth(v20);
    [v7 bounds];
    CGRectGetWidth(v21);
    v16 = sub_1E3AFBD8C();
    [v16 _setVisibleRectEdgeInsets_];

    v17 = sub_1E3AFBD8C();
    [v17 contentOffset];
    OUTLINED_FUNCTION_18_3();

    OUTLINED_FUNCTION_17_4();
    sub_1E3AFD764();
  }

  OUTLINED_FUNCTION_54_0();
}

id sub_1E3AFD61C()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DC810]) init];
  [v0 setInterSectionSpacing_];
  [v0 setScrollDirection_];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for StackCollectionViewCompositionalLayout();
  OUTLINED_FUNCTION_40_1();
  return sub_1E37BEAF8();
}

uint64_t sub_1E3AFD6CC()
{
  v1 = v0 + OBJC_IVAR____TtC8VideosUI15VUICarouselView_dataSource;
  OUTLINED_FUNCTION_5_0(v0 + OBJC_IVAR____TtC8VideosUI15VUICarouselView_dataSource, v6);
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return 0;
  }

  v2 = *(v1 + 8);
  ObjectType = swift_getObjectType();
  v4 = (*(v2 + 8))(v0, ObjectType, v2);
  swift_unknownObjectRelease();
  return v4;
}

void sub_1E3AFD764()
{
  OUTLINED_FUNCTION_93();
  v4 = v3;
  OUTLINED_FUNCTION_5_16();
  v5 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_12();
  sub_1E3AFDA90();
  v10 = v9;
  v11 = &OBJC_IVAR____TtC8VideosUI32TVAppExtensionHostViewController_loadingViewController;
  if (v0[OBJC_IVAR____TtC8VideosUI15VUICarouselView_isInfiniteScrollEnabled] != 1)
  {
    goto LABEL_9;
  }

  v12 = *&v0[OBJC_IVAR____TtC8VideosUI15VUICarouselView_currentCarouselIndex];
  v13 = v12 - 1;
  if (__OFSUB__(v12, 1))
  {
    __break(1u);
    goto LABEL_18;
  }

  v14 = __OFADD__(v12, 1);
  v15 = v12 + 1;
  if (v14)
  {
LABEL_18:
    __break(1u);
    return;
  }

  if (v15 >= v9)
  {
    v15 = v9;
  }

  if (v15 <= v13)
  {
    v10 = v13;
  }

  else
  {
    v10 = v15;
  }

LABEL_9:
  v16 = sub_1E3AFCCA8(v10);
  sub_1E324FBDC();
  v17 = OUTLINED_FUNCTION_13_89();
  v18(v17);
  v19 = v0;
  v20 = sub_1E41FFC94();
  v21 = sub_1E42067E4();

  if (!os_log_type_enabled(v20, v21))
  {

    v27 = OUTLINED_FUNCTION_53();
    v28(v27);
    if (v4)
    {
      goto LABEL_11;
    }

LABEL_13:
    v29 = sub_1E3AFBD8C();
    v30 = OUTLINED_FUNCTION_6_12();
    [v31 v32];

    goto LABEL_14;
  }

  v35 = v7;
  v22 = OUTLINED_FUNCTION_100();
  v36 = OUTLINED_FUNCTION_100();
  *v22 = 136315650;
  v23 = sub_1E3AFC054();
  v34 = v5;
  v25 = v4;
  v26 = OUTLINED_FUNCTION_49_1(v23, v24);

  *(v22 + 4) = v26;
  v4 = v25;
  *(v22 + 12) = 2048;
  *(v22 + 14) = v10;
  *(v22 + 22) = 2048;
  *(v22 + 24) = v16;
  _os_log_impl(&dword_1E323F000, v20, v21, "%s scrollViewWillEndDragging targetIndex = %ld, adjustedOffset = %f", v22, 0x20u);
  __swift_destroy_boxed_opaque_existential_1(v36);
  v11 = &OBJC_IVAR____TtC8VideosUI32TVAppExtensionHostViewController_loadingViewController;
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_6_0();

  (*(v35 + 8))(v1, v34);
  if (!v25)
  {
    goto LABEL_13;
  }

LABEL_11:
  *v4 = v16;
  *(v4 + 1) = v2;
LABEL_14:
  v33 = v11[185];
  if (v10 != *&v19[v33])
  {
    *&v19[v33] = v10;
    sub_1E3AFD9F0();
  }

  OUTLINED_FUNCTION_54_0();
}

uint64_t sub_1E3AFD9F0()
{
  v1 = v0 + OBJC_IVAR____TtC8VideosUI15VUICarouselView_delegate;
  OUTLINED_FUNCTION_5_0(v0 + OBJC_IVAR____TtC8VideosUI15VUICarouselView_delegate, v6);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    v5 = sub_1E3AFCC0C(*(v0 + OBJC_IVAR____TtC8VideosUI15VUICarouselView_currentCarouselIndex));
    (*(v3 + 24))(v0, v5, ObjectType, v3);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1E3AFDA90()
{
  OUTLINED_FUNCTION_93();
  v2 = v1;
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  v10 = &v0[OBJC_IVAR____TtC8VideosUI15VUICarouselView_configuration];
  OUTLINED_FUNCTION_5_0(&v0[OBJC_IVAR____TtC8VideosUI15VUICarouselView_configuration], &v27);
  if (*v10 + v10[2] <= 0.0)
  {
LABEL_9:
    v15 = sub_1E324FBDC();
    (*(v5 + 16))(v9, v15, v3);
    v16 = v0;
    v17 = sub_1E41FFC94();
    v18 = sub_1E42067F4();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = OUTLINED_FUNCTION_100();
      v26 = v20;
      *v19 = 136315138;
      v21 = sub_1E3AFC054();
      v23 = sub_1E3270FC8(v21, v22, &v26);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_1E323F000, v17, v18, "%s collectionIndex return 0 because itemWidth is 0", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    (*(v5 + 8))(v9, v3);
    goto LABEL_22;
  }

  if (v2)
  {
    if (v2 == 1)
    {
      OUTLINED_FUNCTION_133_0();
      if (!(v13 ^ v14 | v12))
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      if (v11 <= -9.22337204e18)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      OUTLINED_FUNCTION_15_84();
      if (!v13)
      {
        __break(1u);
        goto LABEL_9;
      }

LABEL_22:
      OUTLINED_FUNCTION_54_0();
      return;
    }
  }

  else
  {
    OUTLINED_FUNCTION_133_0();
    if (!(v13 ^ v14 | v12))
    {
      goto LABEL_23;
    }

    if (v24 <= -9.22337204e18)
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    OUTLINED_FUNCTION_15_84();
    if (v13)
    {
      goto LABEL_22;
    }

    __break(1u);
  }

  OUTLINED_FUNCTION_133_0();
  if (!(v13 ^ v14 | v12))
  {
    goto LABEL_24;
  }

  if (v25 > -9.22337204e18)
  {
    OUTLINED_FUNCTION_15_84();
    if (!v13)
    {
      goto LABEL_28;
    }

    goto LABEL_22;
  }

LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
}

uint64_t sub_1E3AFDD08()
{
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI15VUICarouselView_isInfiniteScrollEnabled);
  result = sub_1E3AFD6CC();
  if (v1 == 1)
  {
    v3 = (result * 5) >> 64;
    result *= 5;
    if (v3 != result >> 63)
    {
      __break(1u);
    }
  }

  return result;
}

id sub_1E3AFDDA0(uint64_t a1, uint64_t a2)
{
  v5 = sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  v12 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_4_12();
  v16 = sub_1E324FBDC();
  (*(v14 + 16))(v3, v16, v12);
  (*(v7 + 16))(v11, a2, v5);
  v17 = v2;
  v18 = sub_1E41FFC94();
  v19 = sub_1E42067E4();

  if (os_log_type_enabled(v18, v19))
  {
    swift_slowAlloc();
    v41[0] = OUTLINED_FUNCTION_26_45();
    *v12 = 136315394;
    v40 = v19;
    v20 = sub_1E3AFC054();
    OUTLINED_FUNCTION_49_1(v20, v21);
    OUTLINED_FUNCTION_33_12();
    OUTLINED_FUNCTION_14_94();
    OUTLINED_FUNCTION_5_113();
    sub_1E3AFEE08(v22, v23, MEMORY[0x1E6969C70]);
    v24 = sub_1E4207944();
    v26 = v25;
    v27 = OUTLINED_FUNCTION_7_113();
    v28(v27);
    v29 = sub_1E3270FC8(v24, v26, v41);

    *(v12 + 14) = v29;
    OUTLINED_FUNCTION_24_44(&dword_1E323F000, v30, v40, "%s cellForItemAt, indexPath=%s");
    OUTLINED_FUNCTION_36_31();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();

    (*(v14 + 8))(v3, v12);
  }

  else
  {

    v31 = OUTLINED_FUNCTION_7_113();
    v32(v31);
    (*(v14 + 8))(v3, v12);
  }

  v33 = sub_1E41FE844();
  v34 = sub_1E3AFCC0C(v33);
  v35 = &v17[OBJC_IVAR____TtC8VideosUI15VUICarouselView_dataSource];
  OUTLINED_FUNCTION_5_0(&v17[OBJC_IVAR____TtC8VideosUI15VUICarouselView_dataSource], v41);
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return [objc_allocWithZone(MEMORY[0x1E69DC7F8]) init];
  }

  v36 = *(v35 + 1);
  ObjectType = swift_getObjectType();
  v38 = (*(v36 + 16))(v17, v34, ObjectType, v36);
  swift_unknownObjectRelease();
  return v38;
}

uint64_t sub_1E3AFE1CC(uint64_t a1, uint64_t a2)
{
  v5 = sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  v12 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_4_12();
  sub_1E324FBDC();
  v16 = OUTLINED_FUNCTION_13_89();
  v17(v16);
  (*(v7 + 16))(v11, a2, v5);
  v18 = v2;
  v19 = sub_1E41FFC94();
  v20 = sub_1E4206814();

  if (os_log_type_enabled(v19, v20))
  {
    swift_slowAlloc();
    v45[0] = OUTLINED_FUNCTION_26_45();
    *a2 = 136315394;
    v43 = v20;
    v21 = sub_1E3AFC054();
    OUTLINED_FUNCTION_49_1(v21, v22);
    v44 = v12;
    OUTLINED_FUNCTION_33_12();
    OUTLINED_FUNCTION_14_94();
    OUTLINED_FUNCTION_5_113();
    sub_1E3AFEE08(v23, v24, MEMORY[0x1E6969C70]);
    v25 = sub_1E4207944();
    v27 = v26;
    v28 = OUTLINED_FUNCTION_7_113();
    v29(v28);
    v30 = sub_1E3270FC8(v25, v27, v45);

    *(a2 + 14) = v30;
    OUTLINED_FUNCTION_24_44(&dword_1E323F000, v31, v43, "%s didSelectItemAt, indexPath=%s");
    OUTLINED_FUNCTION_36_31();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();

    (*(v14 + 8))(v3, v44);
  }

  else
  {

    v32 = OUTLINED_FUNCTION_7_113();
    v33(v32);
    v34 = OUTLINED_FUNCTION_53();
    v36(v34, v35);
  }

  v37 = &v18[OBJC_IVAR____TtC8VideosUI15VUICarouselView_delegate];
  OUTLINED_FUNCTION_5_0(&v18[OBJC_IVAR____TtC8VideosUI15VUICarouselView_delegate], v45);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v39 = *(v37 + 1);
    ObjectType = swift_getObjectType();
    v41 = sub_1E41FE844();
    v42 = sub_1E3AFCC0C(v41);
    (*(v39 + 32))(v18, v42, ObjectType, v39);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1E3AFE5B0(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC8VideosUI15VUICarouselView_delegate;
  OUTLINED_FUNCTION_5_0(v2 + OBJC_IVAR____TtC8VideosUI15VUICarouselView_delegate, v9);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    v8 = sub_1E41FE844();
    (*(v6 + 8))(v2, a2, v8, ObjectType, v6);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1E3AFE8F0()
{
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_118();
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = MEMORY[0x1EEE9AC00](v8).n128_u64[0];
  v11 = &v41 - v10;
  [v1 contentOffset];
  OUTLINED_FUNCTION_18_3();
  v12 = sub_1E324FBDC();
  v44 = *(v4 + 16);
  v44(v11, v12, v2);
  v13 = v0;
  v14 = sub_1E41FFC94();
  v15 = sub_1E42067E4();

  if (os_log_type_enabled(v14, v15))
  {
    swift_slowAlloc();
    v45 = v7;
    v16 = OUTLINED_FUNCTION_26_45();
    v42 = v12;
    v46 = v16;
    *v7 = 136315394;
    v17 = sub_1E3AFC054();
    OUTLINED_FUNCTION_49_1(v17, v18);
    v43 = v2;
    OUTLINED_FUNCTION_33_12();
    OUTLINED_FUNCTION_14_94();
    OUTLINED_FUNCTION_17_4();
    v19 = sub_1E4206EE4();
    OUTLINED_FUNCTION_49_1(v19, v20);
    OUTLINED_FUNCTION_33_12();
    *(v7 + 14) = v4;
    v2 = v43;
    OUTLINED_FUNCTION_24_44(&dword_1E323F000, v21, v15, "%s scrollViewDidEndDecelerating, contentOffset=%s");
    swift_arrayDestroy();
    v12 = v42;
    OUTLINED_FUNCTION_6_0();
    v7 = v45;
    OUTLINED_FUNCTION_6_0();
  }

  v22 = *(v4 + 8);
  v22(v11, v2);
  if (*(v13 + OBJC_IVAR____TtC8VideosUI15VUICarouselView_isInfiniteScrollEnabled) == 1)
  {
    sub_1E3AFDA90();
    v24 = v23;
    v25 = sub_1E3AFCC0C(v23);
    v26 = sub_1E3AFC770(v25);
    v44(v7, v12, v2);
    v27 = v13;
    v28 = sub_1E41FFC94();
    v29 = sub_1E42067E4();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = OUTLINED_FUNCTION_100();
      v45 = v7;
      v31 = v30;
      v32 = OUTLINED_FUNCTION_100();
      v44 = v4;
      v33 = v32;
      v46 = v32;
      *v31 = 136315650;
      v34 = sub_1E3AFC054();
      v36 = OUTLINED_FUNCTION_49_1(v34, v35);
      v43 = v22;
      v37 = v24;
      v38 = v26;
      v39 = v36;

      *(v31 + 4) = v39;
      v26 = v38;
      *(v31 + 12) = 2048;
      *(v31 + 14) = v37;
      *(v31 + 22) = 2048;
      *(v31 + 24) = v38;
      _os_log_impl(&dword_1E323F000, v28, v29, "%s scrollViewDidEndDecelerating currentIndex: %ld, newIndex = %ld", v31, 0x20u);
      __swift_destroy_boxed_opaque_existential_1(v33);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();

      v43(v45, v2);
    }

    else
    {

      v22(v7, v2);
    }

    v40 = sub_1E3AFBD8C();
    [v40 setContentOffset:0 animated:{sub_1E3AFCCA8(v26), 0.0}];

    if (v26 != *&v27[OBJC_IVAR____TtC8VideosUI15VUICarouselView_currentCarouselIndex])
    {
      *&v27[OBJC_IVAR____TtC8VideosUI15VUICarouselView_currentCarouselIndex] = v26;
      sub_1E3AFD9F0();
    }
  }

  OUTLINED_FUNCTION_54_0();
}

void sub_1E3AFED08(id a1)
{
  v2 = sub_1E3AFBD8C();

  if (v2 == a1)
  {

    sub_1E3AFD764();
  }
}

uint64_t sub_1E3AFEE08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E3AFEE74(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 57))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 56);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E3AFEEC0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = a2 + 1;
    }
  }

  return result;
}

id sub_1E3AFEF34()
{
  OUTLINED_FUNCTION_5_0(v0 + 16, v24);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v2 = Strong;
  v3 = (Strong + OBJC_IVAR____TtC8VideosUI15VUICarouselView_configuration);
  OUTLINED_FUNCTION_5_0(Strong + OBJC_IVAR____TtC8VideosUI15VUICarouselView_configuration, &v23);
  v5 = *v3;
  v4 = v3[1];
  v6 = objc_opt_self();
  v7 = [v6 fractionalWidthDimension_];
  v8 = [v6 fractionalHeightDimension_];
  v9 = objc_opt_self();
  v10 = [v9 sizeWithWidthDimension:v7 heightDimension:v8];

  v11 = [objc_opt_self() itemWithLayoutSize_];
  v12 = [v6 absoluteDimension_];
  v13 = [v6 absoluteDimension_];
  v14 = [v9 sizeWithWidthDimension:v12 heightDimension:v13];

  v15 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1E4298880;
  *(v16 + 32) = v11;
  sub_1E3280A90(0, &unk_1EE23B0A0, 0x1E6995578);
  v17 = v11;
  v18 = sub_1E42062A4();

  v19 = [v15 horizontalGroupWithLayoutSize:v14 subitems:v18];

  v20 = [objc_opt_self() fixedSpacing_];
  [v19 setInterItemSpacing_];

  v21 = [objc_opt_self() sectionWithGroup_];
  [v21 setInterGroupSpacing_];
  nullsub_1();
  [v21 setContentInsets_];

  return v21;
}

void sub_1E3AFF224(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 16))(a1) / 60.0;
  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v2 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v2 >= 9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v3 = v2;
  v4 = v2 / 60;
  if (v2 >= 60)
  {
    v5 = [objc_opt_self() sharedInstance];
    if (!v5)
    {
LABEL_17:
      __break(1u);
      return;
    }

    v6 = v5;
    v7 = sub_1E4205ED4();
    v8 = [v6 localizedStringForKey_];

    if (v8)
    {
      sub_1E4205F14();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30870, &unk_1E429CE30);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1E4297BE0;
      v10 = sub_1E4207944();
      *(v9 + 56) = MEMORY[0x1E69E6158];
      v13 = sub_1E3283528(v10, v11, v12);
      v14 = OUTLINED_FUNCTION_0_144(v13);
      v16 = v15;

      MEMORY[0x1E69109E0](v14, v16);
    }
  }

  if (v3 - 60 * v4 < 1)
  {
    return;
  }

  v17 = [objc_opt_self() sharedInstance];
  if (!v17)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v18 = v17;
  v19 = sub_1E4205ED4();
  v20 = [v18 localizedStringForKey_];

  if (v20)
  {
    sub_1E4205F14();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30870, &unk_1E429CE30);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1E4297BE0;
    v22 = sub_1E4207944();
    *(v21 + 56) = MEMORY[0x1E69E6158];
    v25 = sub_1E3283528(v22, v23, v24);
    v26 = OUTLINED_FUNCTION_0_144(v25);
    v28 = v27;

    MEMORY[0x1E69109E0](v26, v28);
  }
}

void sub_1E3AFF530()
{
  sub_1E3280A90(0, &qword_1EE23AE20, 0x1E69DC888);
  v0 = sub_1E4206F24();
  v1 = sub_1E4206F24();
  v2 = sub_1E3E5F2F8(v0, v1);

  qword_1EE28BC60 = v2;
}

uint64_t sub_1E3AFF5D8(__n128 a1)
{
  if (*(v1 + 136))
  {
    v2 = *(v1 + 136);
  }

  else
  {
    type metadata accessor for MonogramLayout();
    v2 = sub_1E4097BF8(0);
    *(v1 + 136) = v2;
  }

  return v2;
}

uint64_t sub_1E3AFF644()
{
  if (*(v0 + 152))
  {
    v1 = *(v0 + 152);
  }

  else
  {
    v2 = v0;
    type metadata accessor for ButtonLayout();
    v3 = j__OUTLINED_FUNCTION_18();
    v4 = sub_1E3B050E8();
    v5 = j__OUTLINED_FUNCTION_18();
    v1 = sub_1E3BBD964(6, v3 & 1, v4, v5 & 1);
    *(v2 + 152) = v1;
  }

  return v1;
}

uint64_t sub_1E3AFF6D0()
{
  if (*(v0 + 160))
  {
    v1 = *(v0 + 160);
  }

  else
  {
    v2 = v0;
    type metadata accessor for ButtonLayout();
    v3 = j__OUTLINED_FUNCTION_18();
    v4 = sub_1E3B050E8();
    v5 = j__OUTLINED_FUNCTION_18();
    v1 = sub_1E3BBD964(10, v3 & 1, v4, v5 & 1);
    *(v2 + 160) = v1;
  }

  return v1;
}

uint64_t sub_1E3AFF75C()
{
  if (*(v0 + 168))
  {
    v1 = *(v0 + 168);
  }

  else
  {
    v2 = v0;
    type metadata accessor for TextBadgeLayout(0);
    v3 = OUTLINED_FUNCTION_51_1();
    v4 = sub_1E382F55C(3, 1, v3 & 1);
    OUTLINED_FUNCTION_4_8(v4, v5, v6, v7, v8, v9, v10, v11, v4);

    v1 = v13;
    *(v2 + 168) = v13;
  }

  return v1;
}

uint64_t sub_1E3AFF804(__n128 a1)
{
  a1.n128_u64[0] = 6.0;
  v1.n128_f64[0] = j__OUTLINED_FUNCTION_7_78(a1);
  v2 = OUTLINED_FUNCTION_36_32(v1);
  OUTLINED_FUNCTION_25_52(v2, v3, v4, v5);
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_7_33();
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_11_7(v6, v7, v8, v9, v10, v11, v12, v13, v32[0], v32[1], v32[2], v32[3], v32[4], v32[5], v32[6], v32[7], v32[8], v32[9], v32[10], v32[11], v32[12], v32[13], v32[14], v32[15], v32[16], v32[17], v32[18], v32[19], v32[20], v32[21], v32[22], v32[23], v32[24], v32[25], v32[26], v32[27], v32[28], v32[29], *&v33, *(&v33 + 1), *&v34, *(&v34 + 1), v35, *&v36, *&v37, *(&v37 + 1), *&v38, *(&v38 + 1), v39, *&v40, *&v41, *&v42, *&v43, *&v44, *&v45, *&v46, *&v47, *&v48, *&v49, *&v50, *&v51, *&v52, v53);
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_4_10(v14, v15, v16, v17, v18, v19, v20, v21, v32[0], v32[1], v32[2], v32[3], v32[4], v32[5], v32[6], v32[7], v32[8], v32[9], v32[10], v32[11], v32[12], v32[13], v32[14], v32[15], v32[16], v32[17], v32[18], v32[19], v32[20], v32[21], v32[22], v32[23], v32[24], v32[25], v32[26], v32[27], v32[28], v32[29], *&v33, *(&v33 + 1), *&v34, *(&v34 + 1), v35, *&v36, *&v37, *(&v37 + 1), *&v38, *(&v38 + 1), v39, *&v40, *&v41, *&v42, *&v43, *&v44, *&v45, *&v46, *&v47);
  v22 = sub_1E3C3DE00();
  OUTLINED_FUNCTION_15_85(v22, v23, v24, v25, v26, v27, v28, v29, *&v32[0], *&v32[1], *&v32[2], *&v32[3], *&v32[4], *&v32[5], *&v32[6], *&v32[7], *&v32[8], *&v32[9], *&v32[10], *&v32[11], *&v32[12], *&v32[13], *&v32[14], *&v32[15], *&v32[16], *&v32[17], *&v32[18], *&v32[19], *&v32[20], *&v32[21], *&v32[22], *&v32[23], *&v32[24], *&v32[25], *&v32[26], *&v32[27], *&v32[28], *&v32[29], v33, v34, SLOBYTE(v35), v36, v37, v38, SLOBYTE(v39), v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, SLOBYTE(v53));
  memcpy(v32, __src, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_17_69();
  return v30();
}

uint64_t sub_1E3AFF8D0()
{
  if (*(v0 + 176))
  {
    v1 = *(v0 + 176);
  }

  else
  {
    v2 = v0;
    type metadata accessor for TextBadgeLayout(0);
    v3 = OUTLINED_FUNCTION_51_1();
    v4 = sub_1E382F55C(3, 1, v3 & 1);
    OUTLINED_FUNCTION_4_8(v4, v5, v6, v7, v8, v9, v10, v11, v4);

    v1 = v13;
    *(v2 + 176) = v13;
  }

  return v1;
}

double sub_1E3AFF978(__n128 a1)
{
  a1.n128_u64[0] = 6.0;
  v1.n128_f64[0] = j__OUTLINED_FUNCTION_7_78(a1);
  v2 = OUTLINED_FUNCTION_36_32(v1);
  OUTLINED_FUNCTION_25_52(v2, v3, v4, v5);
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_7_33();
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_11_7(v6, v7, v8, v9, v10, v11, v12, v13, v40[0], v40[1], v40[2], v40[3], v40[4], v40[5], v40[6], v40[7], v40[8], v40[9], v40[10], v40[11], v40[12], v40[13], v40[14], v40[15], v40[16], v40[17], v40[18], v40[19], v40[20], v40[21], v40[22], v40[23], v40[24], v40[25], v40[26], v40[27], v40[28], v40[29], *&v41, *(&v41 + 1), *&v42, *(&v42 + 1), v43, *&v44, *&v45, *(&v45 + 1), *&v46, *(&v46 + 1), v47, *&v48, *&v49, *&v50, *&v51, *&v52, *&v53, *&v54, *&v55, *&v56, *&v57, *&v58, *&v59, *&v60, v61);
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_4_10(v14, v15, v16, v17, v18, v19, v20, v21, v40[0], v40[1], v40[2], v40[3], v40[4], v40[5], v40[6], v40[7], v40[8], v40[9], v40[10], v40[11], v40[12], v40[13], v40[14], v40[15], v40[16], v40[17], v40[18], v40[19], v40[20], v40[21], v40[22], v40[23], v40[24], v40[25], v40[26], v40[27], v40[28], v40[29], *&v41, *(&v41 + 1), *&v42, *(&v42 + 1), v43, *&v44, *&v45, *(&v45 + 1), *&v46, *(&v46 + 1), v47, *&v48, *&v49, *&v50, *&v51, *&v52, *&v53, *&v54, *&v55);
  v22 = sub_1E3C3DE00();
  OUTLINED_FUNCTION_15_85(v22, v23, v24, v25, v26, v27, v28, v29, *&v40[0], *&v40[1], *&v40[2], *&v40[3], *&v40[4], *&v40[5], *&v40[6], *&v40[7], *&v40[8], *&v40[9], *&v40[10], *&v40[11], *&v40[12], *&v40[13], *&v40[14], *&v40[15], *&v40[16], *&v40[17], *&v40[18], *&v40[19], *&v40[20], *&v40[21], *&v40[22], *&v40[23], *&v40[24], *&v40[25], *&v40[26], *&v40[27], *&v40[28], *&v40[29], v41, v42, SLOBYTE(v43), v44, v45, v46, SLOBYTE(v47), v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, SLOBYTE(v61));
  memcpy(v40, __src, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_17_69();
  v30();
  v31 = objc_opt_self();
  v32 = [v31 whiteColor];
  v33 = [v32 colorWithAlphaComponent_];

  OUTLINED_FUNCTION_36();
  (*(v34 + 752))(v33);
  OUTLINED_FUNCTION_36();
  if ((*(v35 + 1848))())
  {
    v37 = [v31 blackColor];
    v38 = [v37 colorWithAlphaComponent_];

    OUTLINED_FUNCTION_36();
    (*(v39 + 680))(v38);
  }

  return result;
}

id sub_1E3AFFB84()
{
  v1 = *(v0 + 200);
  if (v1)
  {
    v2 = *(v0 + 200);
  }

  else
  {
    v3 = [objc_allocWithZone(VUIMediaTagsViewLayout) initWithType_];
    v4 = *(v0 + 200);
    *(v0 + 200) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t sub_1E3AFFBF4(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_15_0(v2 + 192, a2);
  if (*(v2 + 192) == 3)
  {
    v6 = 0;
  }

  else
  {
    sub_1E3AFFC64(v3, v4, v5);
    v6 = sub_1E4205E84();
  }

  return v6 & 1;
}

unint64_t sub_1E3AFFC64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE259C68;
  if (!qword_1EE259C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE259C68);
  }

  return result;
}

void sub_1E3AFFCE0()
{
  type metadata accessor for SearchDescriptionLayout();
  *(v0 + 184) = OUTLINED_FUNCTION_22_50();
  *(v0 + 192) = 3;
  *(v0 + 200) = 0;
  sub_1E42076B4();
  __break(1u);
}

uint64_t sub_1E3AFFDA4(uint64_t a1)
{
  type metadata accessor for SearchDescriptionLayout();
  *(v1 + 184) = OUTLINED_FUNCTION_22_50();
  *(v1 + 192) = 3;
  *(v1 + 200) = 0;
  v3 = sub_1E3C2F9A0();
  swift_beginAccess();
  *(v3 + 192) = a1;

  v4 = sub_1E374EA2C();
  v5 = *sub_1E3E5FD88();
  v6 = *(*v4 + 680);
  v7 = v5;
  v6(v5);

  OUTLINED_FUNCTION_36();
  v9 = *(v8 + 2056);

  v9(2, 0);

  OUTLINED_FUNCTION_36();
  v11 = *(v10 + 2080);

  v11(2, 0);

  OUTLINED_FUNCTION_36();
  v13 = *(v12 + 1984);

  v13(5);

  OUTLINED_FUNCTION_36();
  v15 = *(v14 + 1696);

  v15(17);

  v16 = objc_opt_self();
  if ([v16 isSearchEnabled])
  {
    sub_1E37BD068();
    OUTLINED_FUNCTION_30();
    (*(v17 + 1696))(21);

    v18 = *(v3 + 104);

    v19 = *sub_1E3E5FDEC();
    v20 = *(*v18 + 680);
    v21 = v19;
    v20(v19);

    OUTLINED_FUNCTION_36();
    v23 = *(v22 + 2056);

    v24 = OUTLINED_FUNCTION_15_8();
    v23(v24);

    OUTLINED_FUNCTION_36();
    v26 = *(v25 + 2080);

    v26(0, 0);

    sub_1E3952C88();
    OUTLINED_FUNCTION_35_37(v27);
    OUTLINED_FUNCTION_2_114(v28, v29, v30, v31);
    type metadata accessor for UIEdgeInsets();
    v33 = v32;
    sub_1E3C2FC98();
    OUTLINED_FUNCTION_14_95();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_13_90();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_5_114();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_4_118();
    OUTLINED_FUNCTION_21_57(v34, v35, v36, v37, v38, v39, v40, v41, v449, v466, v483, v502, v521, v541, v561, v579, v597, v615, v633, v649, v666, v683, v700, v718, v736, v754, v772, v790, v808, v826, v844, v860, v877, v894, v911, v929, v947, v965, v983, v1001, v1019, v1037, v1055, v1056, v1057, v1058, v1059, v1060, v1061, v1062, v1063, v1064, v1065, v1066, __dst);
    OUTLINED_FUNCTION_23_49();
    sub_1E3C2FCB8(v42, v43, v44, v45, v46, v1090, v33, v47);
    OUTLINED_FUNCTION_18_56(v48, v49, v50, v51, v52, v53, v54, v55, v450, v467, v484, v503, v522, v542, v562, v580, v598, v616, v634, v650, v667, v684, v701, v719, v737, v755, v773, v791, v809, v827, v845, v861, v878, v895, v912, v930, v948, v966, v984, v1002, v1020, v1038, v1055, v1056, v1057, v1058, v1059, v1060, v1061, v1062, v1063, v1064, v1065, v1066, __dst);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_17_69();
    v56();

    OUTLINED_FUNCTION_36();
    v58 = *(v57 + 1984);

    v58(5);
  }

  v59 = [v16 isSearchEnabled];
  sub_1E374EA94();
  OUTLINED_FUNCTION_2_1();
  if (v59)
  {
    v61 = 21;
  }

  else
  {
    v61 = 19;
  }

  (*(v60 + 1696))(v61);

  v62 = sub_1E374EA94();
  v543 = sub_1E3E5FDEC();
  v63 = *v543;
  v64 = *(*v62 + 680);
  v65 = *v543;
  v64(v63);

  OUTLINED_FUNCTION_36();
  v67 = *(v66 + 2056);

  v68 = OUTLINED_FUNCTION_15_8();
  v67(v68);

  OUTLINED_FUNCTION_36();
  v70 = *(v69 + 2080);

  v71 = OUTLINED_FUNCTION_15_8();
  v70(v71);

  sub_1E3952C88();
  OUTLINED_FUNCTION_35_37(v72);
  OUTLINED_FUNCTION_2_114(v73, v74, v75, v76);
  type metadata accessor for UIEdgeInsets();
  v78 = v77;
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_14_95();
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_13_90();
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_5_114();
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_4_118();
  OUTLINED_FUNCTION_21_57(v79, v80, v81, v82, v83, v84, v85, v86, v449, v466, v483, v502, v521, v543, v561, v579, v597, v615, v633, v649, v666, v683, v700, v718, v736, v754, v772, v790, v808, v826, v844, v860, v877, v894, v911, v929, v947, v965, v983, v1001, v1019, v1037, v1055, v1056, v1057, v1058, v1059, v1060, v1061, v1062, v1063, v1064, v1065, v1066, __dst);
  OUTLINED_FUNCTION_23_49();
  sub_1E3C2FCB8(v87, v88, v89, v90, v91, v1090, v78, v92);
  OUTLINED_FUNCTION_18_56(v93, v94, v95, v96, v97, v98, v99, v100, v451, v468, v485, v504, v523, v544, v563, v581, v599, v617, v635, v651, v668, v685, v702, v720, v738, v756, v774, v792, v810, v828, v846, v862, v879, v896, v913, v931, v949, v967, v985, v1003, v1021, v1039, v1055, v1056, v1057, v1058, v1059, v1060, v1061, v1062, v1063, v1064, v1065, v1066, __dst);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v109 = OUTLINED_FUNCTION_3_118(v101, v102, v103, v104, v105, v106, v107, v108, v452, v469, v486, v505, v524, v545, v564, v582, v600, v618, v636, v652, v669, v686, v703, v721, v739, v757, v775, v793, v811, v829, v847, v863, v880, v897, v914, v932, v950, v968, v986, v1004, v1022, v1040, v1055, v1056, v1057, v1058, v1059, v1060, v1061, v1062, v1063, v1064, v1065, v1066, __dst);
  v110(v109);

  OUTLINED_FUNCTION_36();
  v112 = *(v111 + 1984);

  v112(5);

  if (sub_1E389CC78(a1, 1, v113))
  {
    v114 = [objc_allocWithZone(MEMORY[0x1E69DB7D8]) init];
    v507 = sub_1E3280A90(0, &qword_1EE23AE20, 0x1E69DC888);
    v526 = sub_1E4206F24();
    [v114 setShadowColor_];
    [v114 setShadowBlurRadius_];
    [v114 setShadowOffset_];
    v115 = *sub_1E3E6011C();
    sub_1E3C2DE50();
    v116 = *sub_1E3E60638();
    sub_1E3C2E258();
    sub_1E374EA2C();
    LOBYTE(v1090[0]) = 17;
    LOBYTE(v1087) = 17;
    sub_1E3C3DE00();
    LOBYTE(v1081) = v1084;
    sub_1E3C3DE00();
    LOBYTE(v1075) = v1078;
    v117 = sub_1E3C3DE00();
    LOBYTE(v1072[0]) = v1073[0];
    v125 = OUTLINED_FUNCTION_21_57(v117, v118, v119, v120, v121, v122, v123, v124, v453, v470, v487, v507, v526, v546, v16, v583, v601, v619, v637, v653, v670, v687, v704, v722, v740, v758, v776, v794, v812, v830, v848, v864, v881, v898, v915, v933, v951, v969, v987, v1005, v1023, v1041, v1055, v1056, v1057, v1058, v1059, v1060, v1061, v1062, v1063, v1064, v1065, v1066, 15);
    sub_1E3C2FCB8(v125, v1090, &v1087, &v1081, &v1075, v1072, &qword_1F5D549D8, v126);
    LODWORD(__dst) = v1092;
    WORD2(__dst) = WORD2(v1092);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    (*(v127 + 1600))(&__dst, 48, v128 & 1, &qword_1F5D549D8);

    OUTLINED_FUNCTION_36();
    v130 = *(v129 + 2008);

    v130(1);

    if (TVAppFeature.isEnabled.getter(1, v131, v132))
    {

      sub_1E3952C88();
      OUTLINED_FUNCTION_2_114(v133, v134, v135, v136);
      OUTLINED_FUNCTION_8();
      (*(v137 + 160))(v1090);
    }

    sub_1E374EA94();
    OUTLINED_FUNCTION_30();
    (*(v138 + 2008))(1);

    if (*sub_1E3C2AE50() == 1)
    {
      OUTLINED_FUNCTION_8();
      v140 = *(v139 + 1696);

      v140(21);
    }

    sub_1E3C2AEE0();
    sub_1E38A86A4();
    v141 = OUTLINED_FUNCTION_32_44();
    v142(v141);

    __asm { FMOV            V1.2D, #10.0 }

    v1081 = xmmword_1E4296C50;
    v1082 = _Q1;
    LOBYTE(v1083) = 0;
    __dst = xmmword_1E4296C50;
    v1068 = _Q1;
    LOBYTE(v1069) = 0;
    v1087 = xmmword_1E4298710;
    v1088 = xmmword_1E42BA110;
    LOBYTE(v1089) = 0;

    sub_1E3C3DE00();
    v1078 = v1084;
    v1079 = v1085;
    LOBYTE(v1080) = v1086;
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_5_114();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_4_118();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_30_42();
    OUTLINED_FUNCTION_21_57(v148, v149, v150, v151, v152, v153, v154, v155, v454, v471, v488, v508, v527, v547, v565, v584, v602, v620, v638, v654, v671, v688, v705, v723, v741, v759, v777, v795, v813, v831, v849, v865, v882, v899, v916, v934, v952, v970, v988, v1006, v1024, v1042, v1055, v1056, v1057, v1058, v1059, v1060, v1061, v1062, v1063, v1064, v1065, v1066, __dst);
    OUTLINED_FUNCTION_23_49();
    sub_1E3C2FCB8(v156, v157, v158, v159, v160, &v1055, v78, v161);
    OUTLINED_FUNCTION_18_56(v162, v163, v164, v165, v166, v167, v168, v169, v455, v472, v489, v509, v528, v548, v566, v585, v603, v621, v639, v655, v672, v689, v706, v724, v742, v760, v778, v796, v814, v832, v850, v866, v883, v900, v917, v935, v953, v971, v989, v1007, v1025, v1043, v1055, v1056, v1057, v1058, v1059, v1060, v1061, v1062, v1063, v1064, v1065, v1066, __dst);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v178 = OUTLINED_FUNCTION_3_118(v170, v171, v172, v173, v174, v175, v176, v177, v456, v473, v490, v510, v529, v549, v567, v586, v604, v622, v640, v656, v673, v690, v707, v725, v743, v761, v779, v797, v815, v833, v851, v867, v884, v901, v918, v936, v954, v972, v990, v1008, v1026, v1044, v1055, v1056, v1057, v1058, v1059, v1060, v1061, v1062, v1063, v1064, v1065, v1066, __dst);
    v179(v178);

    v180 = *(v3 + 128);
    OUTLINED_FUNCTION_36();
    v182 = *(v181 + 608);

    v491 = v114;
    v182(v114);

    OUTLINED_FUNCTION_29_44();
    sub_1E39537A8();
    *&v1087 = v183;
    *(&v1087 + 1) = v184;
    *&v1088 = v185;
    *(&v1088 + 1) = v186;
    LOBYTE(v1089) = 0;
    (*(*v180 + 560))(&v1087);

    OUTLINED_FUNCTION_29_44();
    v187 = sub_1E3E6097C();
    v188 = *v187;
    v189 = *(*v180 + 1832);
    v190 = *v187;
    v189(v188);

    OUTLINED_FUNCTION_29_44();
    v191.n128_u64[0] = 1.0;
    *&v1084 = j__OUTLINED_FUNCTION_7_78(v191);
    *(&v1084 + 1) = v192;
    *&v1085 = v193;
    *(&v1085 + 1) = v194;
    LOBYTE(v1086) = 0;
    (*(*v180 + 1856))(&v1084);

    sub_1E3AFF5D8(v195);
    OUTLINED_FUNCTION_2_1();
    (*(v196 + 1744))();
    OUTLINED_FUNCTION_37_33();
    v197 = OUTLINED_FUNCTION_32_44();
    v198(v197);

    OUTLINED_FUNCTION_36();
    v200 = *(v199 + 1744);

    v200(v201);
    OUTLINED_FUNCTION_37_33();
    (*(*v188 + 440))(0x3FF0000000000000, 0);

    v202 = _MergedGlobals_201;

    if (v202 != -1)
    {
      OUTLINED_FUNCTION_16_74(&_MergedGlobals_201);
    }

    v203 = qword_1EE28BC60;
    OUTLINED_FUNCTION_8();
    v205 = *(v204 + 680);
    v206 = v203;
    v205(v203);

    OUTLINED_FUNCTION_8();
    v208 = *(v207 + 208);

    v209 = OUTLINED_FUNCTION_32_44();
    v208(v209);

    OUTLINED_FUNCTION_36();
    v211 = *(v210 + 312);

    v212 = OUTLINED_FUNCTION_32_44();
    v211(v212);

    OUTLINED_FUNCTION_8();
    v214 = *(v213 + 160);

    v214(&v1081);

    OUTLINED_FUNCTION_36();
    v216 = *(v215 + 1744);

    v216(v217);
    OUTLINED_FUNCTION_37_33();
    v218 = *v187;
    v219 = *(*v203 + 1832);
    v220 = *v187;
    v219(v218);

    OUTLINED_FUNCTION_36();
    v222 = *(v221 + 1744);

    v222(v223);
    OUTLINED_FUNCTION_37_33();
    v224.n128_u64[0] = 1.0;
    *&v1078 = j__OUTLINED_FUNCTION_7_78(v224);
    *(&v1078 + 1) = v225;
    *&v1079 = v226;
    *(&v1079 + 1) = v227;
    LOBYTE(v1080) = 0;
    (*(*v203 + 1856))(&v1078);

    v228 = sub_1E38A8794();
    v1075 = xmmword_1E4296CA0;
    v1076 = xmmword_1E42A76A0;
    LOBYTE(v1077) = 0;
    (*(*v228 + 160))(&v1075);

    sub_1E3AFF644();
    __dst = v1075;
    v1068 = v1076;
    LOBYTE(v1069) = v1077;
    v1073[0] = xmmword_1E4296CA0;
    v1073[1] = xmmword_1E42BA120;
    LOBYTE(v1074) = 0;
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_4_118();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_30_42();
    sub_1E3C3DE00();
    LOBYTE(v919) = v1027;
    v229 = sub_1E3C3DE00();
    LOBYTE(v708) = v816;
    v237 = OUTLINED_FUNCTION_21_57(v229, v230, v231, v232, v233, v234, v235, v236, 0, 0x4024000000000000, v491, v511, v530, v550, v568, v587, v605, v623, v744, v762, v780, v798, v708, v726, v744, v762, v780, v798, v816, v834, v955, v973, v991, v1009, v919, v937, v955, v973, v991, v1009, v1027, v1045, v1055, v1056, v1057, v1058, v1059, v1060, v1061, v1062, v1063, v1064, v1065, v1066, __dst);
    OUTLINED_FUNCTION_24_45(v237, v238, v457, v474, v492, v512, v531, v551, v569, v588, v606, v624, v641, v657, v674, v691, v709, v727, v745, v763, v781, v799, v817, v835, v852, v868, v885, v902, v920, v938, v956, v974, v992, v1010, v1028, v1046, v1055);
    OUTLINED_FUNCTION_18_56(v239, v240, v241, v242, v243, v244, v245, v246, v458, v475, v493, v513, v532, v552, v570, v589, v607, v625, v642, v658, v675, v692, v710, v728, v746, v764, v782, v800, v818, v836, v853, v869, v886, v903, v921, v939, v957, v975, v993, v1011, v1029, v1047, v1055, v1056, v1057, v1058, v1059, v1060, v1061, v1062, v1063, v1064, v1065, v1066, __dst);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v255 = OUTLINED_FUNCTION_3_118(v247, v248, v249, v250, v251, v252, v253, v254, v459, v476, v494, v514, v533, v553, v571, v590, v608, v626, v643, v659, v676, v693, v711, v729, v747, v765, v783, v801, v819, v837, v854, v870, v887, v904, v922, v940, v958, v976, v994, v1012, v1030, v1048, v1055, v1056, v1057, v1058, v1059, v1060, v1061, v1062, v1063, v1064, v1065, v1066, __dst);
    v256(v255);

    OUTLINED_FUNCTION_2_33();
    v258 = *(v257 + 2096);

    v258(v259);

    v260 = *MEMORY[0x1E69DDD80];
    v261 = objc_opt_self();
    *&__dst = [v261 configurationWithTextStyle_];
    *&v1073[0] = [v261 configurationWithTextStyle_];
    v262 = sub_1E3280A90(0, &qword_1EE23AFA8, 0x1E69DCAD8);
    sub_1E3C3DE00();
    v1071[0] = v1072[0];
    sub_1E3C3DE00();
    v1055 = v1061;
    sub_1E3C3DE00();
    v263 = sub_1E3C3DE00();
    v271 = OUTLINED_FUNCTION_21_57(v263, v264, v265, v266, v267, v268, v269, v270, v460, v477, v495, v515, v534, v554, v572, v591, v609, v627, v748, v660, v677, v694, v712, v730, v748, v766, v784, v802, v820, v838, v959, v871, v888, v905, v923, v941, v959, v977, v995, v1013, v1031, v1049, v1055, v1056, v1057, v1058, v1059, v1060, v1061, v1062, v1063, v1064, v1065, v1066, __dst);
    OUTLINED_FUNCTION_24_45(v271, v272, v461, v478, v496, v516, v535, v555, v573, v592, v610, v628, v644, v661, v678, v695, v713, v731, v749, v767, v785, v803, v821, v839, v855, v872, v889, v906, v924, v942, v960, v978, v996, v1014, v1032, v1050, v1055);
    v274 = *(&v1092 + 1);
    v273 = v1092;
    v275 = v1093;
    v276 = v1094;
    v277 = v1095;
    __dst = v1092;
    v1068 = v1093;
    v1069 = v1094;
    v1070 = v1095;
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    (*(v278 + 1600))(&__dst, 88, v279 & 1, v262);

    OUTLINED_FUNCTION_36();
    v281 = *(v280 + 2096);

    v281(v282);
    OUTLINED_FUNCTION_122();

    v283 = objc_opt_self();
    v284 = [v283 blackColor];
    v285 = [v283 whiteColor];
    v286 = sub_1E3E5F2F8(v284, v285);

    OUTLINED_FUNCTION_2_33();
    (*(v287 + 680))(v286);

    v288 = sub_1E3AFF6D0();
    OUTLINED_FUNCTION_8();
    v290 = *(v289 + 152);

    v290(&v1092, v291);

    (*(*v288 + 160))(&v1092);

    OUTLINED_FUNCTION_36();
    v293 = *(v292 + 2096);

    v293(v294);
    OUTLINED_FUNCTION_122();

    OUTLINED_FUNCTION_36();
    v296 = *(v295 + 2096);

    v296(v297);
    OUTLINED_FUNCTION_26_5();

    v299 = (*(*v276 + 1944))(v298);

    OUTLINED_FUNCTION_2_33();
    (*(v300 + 1952))(v299);

    OUTLINED_FUNCTION_36();
    v302 = *(v301 + 2096);

    v302(v303);
    OUTLINED_FUNCTION_122();

    OUTLINED_FUNCTION_36();
    v305 = *(v304 + 2096);

    v305(v306);
    OUTLINED_FUNCTION_26_5();

    v308 = (*(*v276 + 672))(v307);

    OUTLINED_FUNCTION_2_33();
    (*(v309 + 680))(v308);

    OUTLINED_FUNCTION_2_33();
    v311 = *(v310 + 2096);

    v311(v312);
    OUTLINED_FUNCTION_2_1();
    (*(v313 + 672))();
    OUTLINED_FUNCTION_26_5();

    OUTLINED_FUNCTION_2_33();
    v315 = v276;
    v316 = MEMORY[0x1E69DDD80];
    (*(v314 + 680))(v315);

    v317 = &selRef_initWithMediaInfo_watchType_isRentAndWatchNow_;
  }

  else
  {
    __asm { FMOV            V1.2D, #12.0 }

    *(&__dst + 1) = 0;
    v1068 = _Q1;
    LOBYTE(v1069) = 0;
    __asm { FMOV            V1.2D, #14.0 }

    v1090[0] = xmmword_1E42BA100;
    v1090[1] = _Q1;
    LOBYTE(v1091) = 0;
    sub_1E3C2FC98();
    OUTLINED_FUNCTION_14_95();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_13_90();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_5_114();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_4_118();
    v328 = OUTLINED_FUNCTION_21_57(v320, v321, v322, v323, v324, v325, v326, v327, v453, v470, v487, v506, v525, v546, v16, v583, v601, v619, v637, v653, v670, v687, v704, v722, v740, v758, v776, v794, v812, v830, v848, v864, v881, v898, v915, v933, v951, v969, v987, v1005, v1023, v1041, v1055, v1056, v1057, v1058, v1059, v1060, v1061, v1062, v1063, v1064, v1065, v1066, 0);
    sub_1E3C2FCB8(v328, &v1084, v1090, &v1078, v1073, v1071, v78, v329);
    sub_1E3C2AEE0();
    sub_1E3280A90(0, &qword_1EE23AE20, 0x1E69DC888);
    v330 = sub_1E4206F24();
    v331 = sub_1E4206F24();
    v332 = sub_1E3952C64();
    OUTLINED_FUNCTION_2_114(v332, v333, v334, v335);
    sub_1E3C2CC78();
    v336 = *sub_1E3E60548();
    sub_1E3C2DE50();
    v337.n128_u64[0] = 12.0;
    *&v1087 = j__OUTLINED_FUNCTION_7_78(v337);
    *(&v1087 + 1) = v338;
    *&v1088 = v339;
    *(&v1088 + 1) = v340;
    LOBYTE(v1089) = 0;
    sub_1E3C2D7EC();
    sub_1E374EA2C();
    OUTLINED_FUNCTION_2_1();
    (*(v341 + 1696))(17);

    sub_1E38A86A4();
    v342 = OUTLINED_FUNCTION_33_36();
    v343(v342);

    OUTLINED_FUNCTION_18_56(v344, v345, v346, v347, v348, v349, v350, v351, v462, v479, v498, v517, v537, v557, v575, v593, v611, v629, v645, v662, v679, v696, v714, v732, v750, v768, v786, v804, v822, v840, v856, v873, v890, v907, v925, v943, v961, v979, v997, v1015, v1033, v1051, v1055, v1056, v1057, v1058, v1059, v1060, v1061, v1062, v1063, v1064, v1065, v1066, __dst);

    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v360 = OUTLINED_FUNCTION_3_118(v352, v353, v354, v355, v356, v357, v358, v359, v463, v480, v499, v518, v538, v558, v576, v594, v612, v630, v646, v663, v680, v697, v715, v733, v751, v769, v787, v805, v823, v841, v857, v874, v891, v908, v926, v944, v962, v980, v998, v1016, v1034, v1052, v1055, v1056, v1057, v1058, v1059, v1060, v1061, v1062, v1063, v1064, v1065, v1066, __dst);
    v361(v360);

    v362 = *(v3 + 128);

    v363 = sub_1E3C2F8E8();
    v364 = v330;
    if (v363)
    {
      v365 = v363;
      v366 = [v363 userInterfaceStyle];

      if (v366 == 2)
      {
        v364 = v331;
      }

      else
      {
        v364 = v330;
      }
    }

    v367 = *(*v362 + 1832);
    v368 = v364;
    v367(v364);

    OUTLINED_FUNCTION_29_44();
    v369.n128_u64[0] = 0.5;
    *&v1084 = j__OUTLINED_FUNCTION_7_78(v369);
    *(&v1084 + 1) = v370;
    *&v1085 = v371;
    *(&v1085 + 1) = v372;
    LOBYTE(v1086) = 0;
    (*(*v362 + 1856))(&v1084);

    OUTLINED_FUNCTION_29_44();
    sub_1E39537A8();
    *&v1081 = v373;
    *(&v1081 + 1) = v374;
    *&v1082 = v375;
    *(&v1082 + 1) = v376;
    LOBYTE(v1083) = 0;
    (*(*v362 + 560))(&v1081);

    OUTLINED_FUNCTION_36();
    v378 = *(v377 + 608);

    v378(0);

    sub_1E3AFF5D8(v379);
    OUTLINED_FUNCTION_2_1();
    (*(v380 + 1744))();

    v381 = OUTLINED_FUNCTION_33_36();
    v382(v381);

    OUTLINED_FUNCTION_36();
    v384 = *(v383 + 1744);

    v386 = v384(v385);

    (*(*v386 + 440))(0x3FF0000000000000, 0);

    OUTLINED_FUNCTION_8();
    v388 = *(v387 + 208);

    v389 = OUTLINED_FUNCTION_33_36();
    v388(v389);

    OUTLINED_FUNCTION_36();
    v391 = *(v390 + 312);

    v392 = OUTLINED_FUNCTION_33_36();
    v391(v392);

    OUTLINED_FUNCTION_18_56(v393, v394, v395, v396, v397, v398, v399, v400, v464, v481, v500, v519, v539, v559, v577, v595, v613, v631, v647, v664, v681, v698, v716, v734, v752, v770, v788, v806, v824, v842, v858, v875, v892, v909, v927, v945, v963, v981, v999, v1017, v1035, v1053, v1055, v1056, v1057, v1058, v1059, v1060, v1061, v1062, v1063, v1064, v1065, v1066, __dst);

    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v409 = OUTLINED_FUNCTION_3_118(v401, v402, v403, v404, v405, v406, v407, v408, v465, v482, v501, v520, v540, v560, v578, v596, v614, v632, v648, v665, v682, v699, v717, v735, v753, v771, v789, v807, v825, v843, v859, v876, v893, v910, v928, v946, v964, v982, v1000, v1018, v1036, v1054, v1055, v1056, v1057, v1058, v1059, v1060, v1061, v1062, v1063, v1064, v1065, v1066, __dst);
    v410(v409);

    v411 = _MergedGlobals_201;

    if (v411 != -1)
    {
      OUTLINED_FUNCTION_16_74(&_MergedGlobals_201);
    }

    v412 = qword_1EE28BC60;
    OUTLINED_FUNCTION_8();
    v414 = *(v413 + 680);
    v415 = v412;
    v414(v412);

    v416 = sub_1E38A8794();
    __dst = xmmword_1E4296CA0;
    v1068 = xmmword_1E42A76A0;
    LOBYTE(v1069) = 0;
    (*(*v416 + 160))(&__dst);

    v317 = &selRef_initWithMediaInfo_watchType_isRentAndWatchNow_;
    v316 = MEMORY[0x1E69DDD80];
  }

  sub_1E38A86A4();
  OUTLINED_FUNCTION_30();
  (*(v417 + 1880))(1);

  v418 = sub_1E38A8794();
  v419 = *v556;
  v420 = *(*v418 + 680);
  v421 = *v556;
  v420(v419);

  v422 = *v316;
  objc_opt_self();
  OUTLINED_FUNCTION_122();

  v423 = [v420 configurationWithTextStyle_];
  OUTLINED_FUNCTION_36();
  (*(v424 + 1952))();

  sub_1E3AFF8D0();
  v425 = objc_opt_self();
  v426 = [v425 whiteColor];
  v427 = [v426 colorWithAlphaComponent_];

  OUTLINED_FUNCTION_36();
  (*(v428 + 752))(v427);

  OUTLINED_FUNCTION_2_33();
  v430 = *(v429 + 1848);

  v432 = v430(v431);

  if (v432)
  {
    v433 = [v425 blackColor];
    v434 = [v433 colorWithAlphaComponent_];

    OUTLINED_FUNCTION_36();
    (*(v435 + 680))(v434);
  }

  if ([v574 v317[449]])
  {
    v436 = sub_1E37BD068();
    sub_1E3C37CBC(v436, 16);
  }

  sub_1E3C37CBC(v437, 23);

  sub_1E3C37CBC(v438, 15);

  sub_1E3C37CBC(v439, 39);

  v441 = sub_1E3AFF5D8(v440);
  sub_1E3C37CBC(v441, 41);

  sub_1E3C37CBC(v442, 31);

  v443 = sub_1E3AFF644();
  sub_1E3C37CBC(v443, 59);

  v444 = sub_1E3AFF75C();
  sub_1E3C37CBC(v444, 53);

  sub_1E3C37CBC(v445, 54);

  swift_beginAccess();

  sub_1E3C37CBC(v446, 79);

  v447 = sub_1E3AFF6D0();
  sub_1E3C37CBC(v447, 67);

  return v3;
}

double sub_1E3B01F94(uint64_t a1)
{
  v2 = v1;
  if (![objc_opt_self() isSearchEnabled])
  {
    return result;
  }

  if (!a1)
  {
    goto LABEL_25;
  }

  v6 = sub_1E373E010(15, a1, v4);
  v8 = v6;
  if (v6 && *v6 != _TtC8VideosUI13TextViewModel)
  {

    v8 = 0;
  }

  v9 = sub_1E373E010(16, a1, v7);
  v11 = v9;
  if (v9 && *v9 != _TtC8VideosUI13TextViewModel)
  {

    v11 = 0;
  }

  if (!(v8 | sub_1E373E010(222, a1, v10)))
  {
    if (!v11)
    {
      goto LABEL_17;
    }

LABEL_15:
    info = (*v11)[16].info;

    v20 = (info)(v19);

    sub_1E39BD118(0x74756F79616CLL, 0xE600000000000000, v20);
    OUTLINED_FUNCTION_26_5();

    if (info)
    {
      sub_1E37BD068();
      OUTLINED_FUNCTION_30();
      (*(v21 + 1616))(info);
    }

    goto LABEL_17;
  }

  if (v11)
  {
    sub_1E374EA2C();
    OUTLINED_FUNCTION_30();
    v13 = OUTLINED_FUNCTION_15_8();
    v14(v13);

    OUTLINED_FUNCTION_36();
    v16 = *(v15 + 2080);

    v17 = OUTLINED_FUNCTION_15_8();
    v16(v17);

    goto LABEL_15;
  }

LABEL_17:
  if (sub_1E373E010(79, a1, v12))
  {
    v22 = swift_beginAccess();
    if (*(v2 + 192) == 3 || (__src[0] = *(v2 + 192), v49[0] = 1, sub_1E3AFFC64(v22, v23, v24), (sub_1E4205E84() & 1) == 0))
    {
    }

    else
    {
      sub_1E38A86A4();
      __asm { FMOV            V1.2D, #10.0 }

      *&v49[16] = _Q1;
      v49[32] = 0;
      type metadata accessor for UIEdgeInsets();
      v31 = v30;
      sub_1E3C2FC98();
      v72[0] = v74;
      v72[1] = v75;
      v73 = v76;
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_7_33();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_11_7(v32, v33, v34, v35, v36, v37, v38, v39, 10.0, 0.0, *&v49[16], *&v49[24], *&v49[32], *&v49[40], *&v49[48], *&v49[56], *&v49[64], *&v49[72], *&v49[80], *&v49[88], *&v49[96], *&v49[104], *&v49[112], *&v49[120], *&v49[128], *&v49[136], *&v49[144], *&v49[152], *&v49[160], *&v49[168], *&v49[176], *&v49[184], *&v49[192], *&v49[200], *&v49[208], *&v49[216], *&v49[224], *&v49[232], *&v50, *(&v50 + 1), *&v51, *(&v51 + 1), v52, v53, *&v54, *(&v54 + 1), *&v55, *(&v55 + 1), v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70[0]);
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_4_10(v40, v41, v42, v43, v44, v45, v46, v47, *v49, *&v49[8], *&v49[16], *&v49[24], *&v49[32], *&v49[40], *&v49[48], *&v49[56], *&v49[64], *&v49[72], *&v49[80], *&v49[88], *&v49[96], *&v49[104], *&v49[112], *&v49[120], *&v49[128], *&v49[136], *&v49[144], *&v49[152], *&v49[160], *&v49[168], *&v49[176], *&v49[184], *&v49[192], *&v49[200], *&v49[208], *&v49[216], *&v49[224], *&v49[232], *&v50, *(&v50 + 1), *&v51, *(&v51 + 1), v52, v53, *&v54, *(&v54 + 1), *&v55, *(&v55 + 1), v56, v57, v58, v59, v60, v61, v62, v63, v64);
      sub_1E3C3DE00();
      v50 = v54;
      v51 = v55;
      LOBYTE(v52) = LOBYTE(v56);
      sub_1E3C2FCB8(v49, v72, v71, v70, &v58, &v50, v31, __src);
      memcpy(v49, __src, 0xE9uLL);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_17_69();
      v48();
    }

    return result;
  }

LABEL_25:

  return result;
}

double sub_1E3B023EC()
{
  sub_1E3AFF644();
  OUTLINED_FUNCTION_30();
  (*(v0 + 944))(1);

  sub_1E38A8794();
  OUTLINED_FUNCTION_2_1();
  (*(v1 + 944))(1);

  sub_1E3AFF6D0();
  OUTLINED_FUNCTION_2_1();
  (*(v2 + 944))(1);

  return result;
}

void sub_1E3B024E0()
{

  v1 = *(v0 + 200);
}

uint64_t sub_1E3B02560()
{
  v0 = sub_1E3C36C6C();

  return v0;
}

uint64_t sub_1E3B025E8()
{
  v0 = sub_1E3B02560();

  return MEMORY[0x1EEE6BDC0](v0, 208, 7);
}

double sub_1E3B02648()
{
  OUTLINED_FUNCTION_2_115();
  v4 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:125.0 damping:30.0 initialVelocity:{0.0, 0.0}];
  sub_1E373C4DC();
  [v4 settlingDuration];
  OUTLINED_FUNCTION_2_4();
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;
  OUTLINED_FUNCTION_2_4();
  v6 = swift_allocObject();
  *(v6 + 16) = v1;
  *(v6 + 24) = v0;
  v7 = v4;

  v8 = sub_1E37FAED4(v1, v0);
  OUTLINED_FUNCTION_1_140(v11, v12, v8, v9, sub_1E37D1918, v10, sub_1E3B028A8);

  return result;
}

double sub_1E3B02778()
{
  OUTLINED_FUNCTION_2_115();
  v4 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:55.0 damping:15.0 initialVelocity:{0.0, 0.0}];
  sub_1E373C4DC();
  [v4 settlingDuration];
  OUTLINED_FUNCTION_2_4();
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;
  OUTLINED_FUNCTION_2_4();
  v6 = swift_allocObject();
  *(v6 + 16) = v1;
  *(v6 + 24) = v0;
  v7 = v4;

  v8 = sub_1E37FAED4(v1, v0);
  OUTLINED_FUNCTION_1_140(v11, v12, v8, v9, sub_1E379E500, v10, sub_1E387A494);

  return result;
}

uint64_t sub_1E3B028AC()
{
  v0 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  v7 = *(v2 + 104);
  v7(v5 - v4, *MEMORY[0x1E697E728], v0);
  OUTLINED_FUNCTION_1_141(&qword_1EE289CD0);
  v8 = sub_1E4205E14();
  v9 = *(v2 + 8);
  v9(v6, v0);
  if (v8)
  {
    v7(v6, *MEMORY[0x1E697E6D0], v0);
    v10 = sub_1E42012C4();
    v9(v6, v0);
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t sub_1E3B02A10(unsigned int *a1)
{
  v2 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  (*(v4 + 104))(v7 - v6, *a1, v2);
  OUTLINED_FUNCTION_1_141(&qword_1EE289CD0);
  LOBYTE(a1) = sub_1E4205E14();
  (*(v4 + 8))(v8, v2);
  return a1 & 1;
}

BOOL sub_1E3B02B18()
{
  v0 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  (*(v2 + 104))(v5 - v4, *MEMORY[0x1E697E728], v0);
  OUTLINED_FUNCTION_1_141(&qword_1EE289CD0);
  v7 = sub_1E4205E14();
  (*(v2 + 8))(v6, v0);
  return (v7 & 1) == 0;
}

id sub_1E3B02C14()
{
  v1 = v0;
  v2 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  (*(v4 + 16))(v7 - v6, v1, v2);
  v9 = (*(v4 + 88))(v8, v2);
  if (v9 == *MEMORY[0x1E697E718])
  {
    v10 = MEMORY[0x1E69656D0];
  }

  else if (v9 == *MEMORY[0x1E697E6F0])
  {
    v10 = MEMORY[0x1E69656C0];
  }

  else if (v9 == *MEMORY[0x1E697E6F8])
  {
    v10 = MEMORY[0x1E69656B8];
  }

  else if (v9 == *MEMORY[0x1E697E6E8])
  {
    v10 = MEMORY[0x1E69656B0];
  }

  else if (v9 == *MEMORY[0x1E697E708])
  {
    v10 = MEMORY[0x1E69656C8];
  }

  else if (v9 == *MEMORY[0x1E697E720])
  {
    v10 = MEMORY[0x1E69656D8];
  }

  else if (v9 == *MEMORY[0x1E697E728])
  {
    v10 = MEMORY[0x1E69656E0];
  }

  else if (v9 == *MEMORY[0x1E697E6C0])
  {
    v10 = MEMORY[0x1E6965690];
  }

  else if (v9 == *MEMORY[0x1E697E6C8])
  {
    v10 = MEMORY[0x1E6965688];
  }

  else if (v9 == *MEMORY[0x1E697E6D0])
  {
    v10 = MEMORY[0x1E6965698];
  }

  else if (v9 == *MEMORY[0x1E697E6D8])
  {
    v10 = MEMORY[0x1E69656A0];
  }

  else
  {
    if (v9 != *MEMORY[0x1E697E6E0])
    {
      (*(v4 + 8))(v8, v2);
      return 0;
    }

    v10 = MEMORY[0x1E69656A8];
  }

  v11 = *v10;
  v12 = *v10;
  return v11;
}

uint64_t sub_1E3B02E88@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A250, " B\r");
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v13 - v3;
  if ([objc_opt_self() _defaultContentSizeCategory])
  {
    sub_1E4201304();
    v5 = sub_1E42012F4();
    if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
    {
      OUTLINED_FUNCTION_37_1();
      (*(v6 + 104))(a1);
      result = __swift_getEnumTagSinglePayload(v4, 1, v5);
      if (result != 1)
      {
        return sub_1E37ECA8C(v4);
      }
    }

    else
    {
      OUTLINED_FUNCTION_37_1();
      return (*(v12 + 32))(a1, v4, v5);
    }
  }

  else
  {
    v8 = *MEMORY[0x1E697E6E8];
    sub_1E42012F4();
    OUTLINED_FUNCTION_37_1();
    v11 = *(v10 + 104);

    return v11(a1, v8, v9);
  }

  return result;
}

uint64_t sub_1E3B0303C()
{
  v0 = sub_1E42012F4();
  __swift_allocate_value_buffer(v0, qword_1EE2AB2A8);
  __swift_project_value_buffer(v0, qword_1EE2AB2A8);
  OUTLINED_FUNCTION_37_1();
  v2 = *(v1 + 104);

  return v2();
}

uint64_t sub_1E3B030C0()
{
  if (qword_1EE2AA4A0 != -1)
  {
    OUTLINED_FUNCTION_0_145(&qword_1EE2AA4A0);
  }

  v0 = sub_1E42012F4();

  return __swift_project_value_buffer(v0, qword_1EE2AB2A8);
}

uint64_t sub_1E3B03114@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A250, " B\r");
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v17 - v5;
  v7 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  sub_1E3831F24(a1, v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) != 1)
  {
    goto LABEL_6;
  }

  sub_1E37ECA8C(v6);
  if (qword_1EE2AA4A0 != -1)
  {
    OUTLINED_FUNCTION_0_145(&qword_1EE2AA4A0);
  }

  v6 = __swift_project_value_buffer(v7, qword_1EE2AB2A8);
  swift_beginAccess();
  v14 = *(v9 + 16);
  v9 += 16;
  v14(a2, v6, v7);
  OUTLINED_FUNCTION_4_119(&qword_1EE289CC8);
  result = sub_1E4205E84();
  if ((result & 1) == 0)
  {
    __break(1u);
LABEL_6:
    v16 = *(v9 + 32);
    v16(v13, v6, v7);
    OUTLINED_FUNCTION_4_119(&qword_1EE289CC8);
    result = sub_1E4205E84();
    if (result)
    {
      return (v16)(a2, v13, v7);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1E3B03310(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1E42012F4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E3B03354@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  sub_1E42012F4();
  OUTLINED_FUNCTION_37_1();
  v6 = *(v5 + 104);
  v7 = **(&unk_1E8737EE0 + a1);

  return v6(a2, v7, v4);
}

uint64_t sub_1E3B033CC@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_1E42012F4();
  result = __swift_storeEnumTagSinglePayload(a2, 1, 1, v4);
  switch(a1)
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
      sub_1E37ECA8C(a2);
      OUTLINED_FUNCTION_37_1();
      (*(v6 + 104))(a2);

      result = __swift_storeEnumTagSinglePayload(a2, 0, 1, v4);
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1E3B03530()
{
  v0 = sub_1E4207784();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E3B0357C(char a1)
{
  if (!a1)
  {
    return OUTLINED_FUNCTION_7_114();
  }

  if (a1 == 1)
  {
    return 0x756F726765726F66;
  }

  return 0x656E696665646E75;
}

uint64_t sub_1E3B035EC(unsigned __int8 a1, char a2)
{
  v2 = 0x6374697753626174;
  v3 = 0xE900000000000068;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0x756F726765726F66;
    }

    else
    {
      v5 = 0x656E696665646E75;
    }

    if (v4 == 1)
    {
      v6 = 0xEA0000000000646ELL;
    }

    else
    {
      v6 = 0xE900000000000064;
    }
  }

  else
  {
    v5 = 0x6374697753626174;
    v6 = 0xE900000000000068;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x756F726765726F66;
    }

    else
    {
      v2 = 0x656E696665646E75;
    }

    if (a2 == 1)
    {
      v3 = 0xEA0000000000646ELL;
    }

    else
    {
      v3 = 0xE900000000000064;
    }
  }

  if (v5 == v2 && v6 == v3)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E3B03708(uint64_t a1, unsigned __int8 a2)
{
  sub_1E4206014();
}

uint64_t sub_1E3B037A4(uint64_t a1, char a2)
{
  sub_1E4207B44();
  sub_1E4206014();

  return sub_1E4207BA4();
}

unint64_t sub_1E3B0384C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E3B03530();
  *a1 = result;
  return result;
}

uint64_t sub_1E3B0387C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3B0357C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1E3B038A8()
{
  v1 = OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController____lazy_storage___foregroundTTLExpirationMap;
  if (*(v0 + OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController____lazy_storage___foregroundTTLExpirationMap))
  {
    v2 = *(v0 + OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController____lazy_storage___foregroundTTLExpirationMap);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32F88, &qword_1E42BA2D8);
    v2 = sub_1E4205CB4();
    *(v0 + v1) = v2;
  }

  return v2;
}

void sub_1E3B0393C()
{
  if (*(v0 + OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_isSuspended) == 1)
  {
    if (*(v0 + OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_hasRefreshEvents) == 1)
    {
      *(v0 + OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_isDocumentDirtyForRefreshEvents) = 1;
    }
  }

  else
  {
    sub_1E3B0397C();
  }
}

void sub_1E3B0397C()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v0;
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_14();
  MEMORY[0x1EEE9AC00](v8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v51 - v11;
  if (v3[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_isSuspended])
  {
    sub_1E324FBDC();
    OUTLINED_FUNCTION_0_11();
    v13(v1);
    v14 = v3;
    v15 = sub_1E41FFC94();
    sub_1E4206814();

    if (OUTLINED_FUNCTION_67_5())
    {
      OUTLINED_FUNCTION_6_21();
      v16 = OUTLINED_FUNCTION_11_16();
      v52 = v16;
      *v2 = 136446210;
      *(v2 + 4) = sub_1E3270FC8(*&v14[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_controllerName], *&v14[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_controllerName + 8], &v52);
      OUTLINED_FUNCTION_189();
      _os_log_impl(v17, v18, v19, v20, v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      OUTLINED_FUNCTION_55();
      OUTLINED_FUNCTION_21_0();
    }

    (*(v6 + 8))(v1, v4);
    goto LABEL_24;
  }

  v51 = v10;
  v22 = OUTLINED_FUNCTION_7_114();
  v23 = OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_lastMonitoringReason;
  if (v3[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_lastMonitoringReason])
  {
    if (v3[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_lastMonitoringReason] == 1)
    {
LABEL_15:

      goto LABEL_16;
    }

    v24 = v22;
    v22 = OUTLINED_FUNCTION_57_15();
  }

  else
  {
    v24 = v22;
  }

  v25 = OUTLINED_FUNCTION_22_51(v22);

  if ((v25 & 1) == 0)
  {
    if (v3[v23])
    {
      if (v3[v23] != 1)
      {
        OUTLINED_FUNCTION_26_46();
      }

      v28 = OUTLINED_FUNCTION_47_30(v26, v27, v24);

      if ((v28 & 1) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_16:
  sub_1E324FBDC();
  OUTLINED_FUNCTION_0_11();
  v29(v12);
  v30 = v3;
  v31 = sub_1E41FFC94();
  v32 = sub_1E4206814();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = OUTLINED_FUNCTION_6_21();
    v34 = OUTLINED_FUNCTION_100();
    v52 = v34;
    *v33 = 136446210;
    v35 = OUTLINED_FUNCTION_17_70(OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_controllerName);
    *(v33 + 4) = sub_1E3270FC8(v35, v36, &v52);
    _os_log_impl(&dword_1E323F000, v31, v32, "EVENT_MONITOR::[%{public}s] checkRefreshEvents is true, validating ttls.", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v34);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  (*(v6 + 8))(v12, v4);
  sub_1E3B06620();
LABEL_19:
  v37 = v3[v23];
  sub_1E3B06F44();
  if (sub_1E32AE9B0(v38))
  {
    sub_1E3B07414();
  }

  else
  {

    sub_1E324FBDC();
    OUTLINED_FUNCTION_0_11();
    v39 = v51;
    v40(v51);
    v41 = v3;
    v42 = sub_1E41FFC94();
    sub_1E4206814();

    if (OUTLINED_FUNCTION_51_11())
    {
      OUTLINED_FUNCTION_6_21();
      v43 = OUTLINED_FUNCTION_11_16();
      v52 = v43;
      *v37 = 136446210;
      v44 = OUTLINED_FUNCTION_17_70(OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_controllerName);
      *(v37 + 4) = sub_1E3270FC8(v44, v45, &v52);
      OUTLINED_FUNCTION_189();
      _os_log_impl(v46, v47, v48, v49, v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v43);
      OUTLINED_FUNCTION_55();
      OUTLINED_FUNCTION_21_0();
    }

    (*(v6 + 8))(v39, v4);
  }

LABEL_24:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3B03E14()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  ObjectType = swift_getObjectType();
  v42 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v44 = v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  v46 = v17 - v16;
  v1[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_isDocumentDirty] = 0;
  v18 = OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_viewModel;
  swift_weakInit();
  *&v1[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_eventEligibleViewModels] = 0;
  v1[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_isOptimizedTTLRefreshEnabled] = 1;
  *&v1[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController____lazy_storage___foregroundTTLExpirationMap] = 0;
  v19 = &v1[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_documentEventIterable];
  *(v19 + 4) = 0;
  *v19 = 0u;
  *(v19 + 1) = 0u;
  v1[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_lastMonitoringReason] = 2;
  v1[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_hasRefreshEvents] = 0;
  v1[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_isDocumentDirtyForRefreshEvents] = 0;
  v20 = &v1[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_registrationHandler];
  *v20 = 0;
  v20[1] = 0;
  v1[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_isSuspended] = 1;
  OUTLINED_FUNCTION_3_0(&v1[v18], &v50);
  swift_weakAssign();
  type metadata accessor for CollectionViewModel();
  v21 = swift_dynamicCastClass() != 0;
  v1[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_isCollectionChildrenUpdateMode] = v21;
  v22 = &v1[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_controllerName];
  *v22 = v11;
  v22[1] = v9;
  v23 = *v20;
  v24 = v20[1];
  *v20 = v5;
  v20[1] = v3;

  sub_1E34AF594(v23, v24);
  if (v7)
  {
    v25 = v7;
  }

  else
  {
    v25 = [objc_allocWithZone(VUIAppDocumentUpdateEventStore) init];
  }

  *&v1[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_updateEventStore] = v25;
  v49.receiver = v1;
  v49.super_class = ObjectType;
  v26 = v7;
  v27 = objc_msgSendSuper2(&v49, sel_init);
  (*(*v13 + 776))(v48, v27, &unk_1F5D5E458, &off_1F5D5CBB8);
  if (v48[3])
  {
    v28 = v44;
    if (OUTLINED_FUNCTION_21_4())
    {
      v29 = v47;
    }

    else
    {
      v29 = 1;
    }
  }

  else
  {
    sub_1E325F6F0(v48, &unk_1ECF296E0, &unk_1E4298030);
    v29 = 1;
    v28 = v44;
  }

  v27[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_isOptimizedTTLRefreshEnabled] = v29;
  v30 = [*&v27[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_updateEventStore] events];
  sub_1E3280A90(0, &qword_1EE23AFD8, off_1E8728210);
  OUTLINED_FUNCTION_20_2();
  v31 = sub_1E42062B4();

  sub_1E32AE9B0(v31);
  OUTLINED_FUNCTION_76();

  if (v30)
  {
    v32 = sub_1E324FBDC();
    (*(v28 + 16))(v46, v32, v42);
    v33 = v27;
    v34 = sub_1E41FFC94();
    v35 = sub_1E4206814();

    if (os_log_type_enabled(v34, v35))
    {
      v45 = v26;
      v36 = OUTLINED_FUNCTION_6_21();
      v37 = v28;
      v38 = OUTLINED_FUNCTION_100();
      v48[0] = v38;
      *v36 = 136446210;
      v40 = *&v33[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_controllerName];
      v39 = *&v33[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_controllerName + 8];

      v41 = sub_1E3270FC8(v40, v39, v48);

      *(v36 + 4) = v41;
      _os_log_impl(&dword_1E323F000, v34, v35, "EVENT_MONITOR::[%{public}s] store already has events, starting updates.", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v38);
      OUTLINED_FUNCTION_21_0();
      v26 = v45;
      OUTLINED_FUNCTION_6_0();

      (*(v37 + 8))(v46, v42);
    }

    else
    {

      (*(v28 + 8))(v46, v42);
    }

    sub_1E3B0397C();
  }

  OUTLINED_FUNCTION_25_2();
}

double sub_1E3B04294(uint64_t a1, char a2)
{
  type metadata accessor for TemplateViewModel(0);
  if (swift_dynamicCastClass())
  {

    sub_1E3B0A67C();
  }

  else
  {
    type metadata accessor for CollectionViewModel();
    if (!swift_dynamicCastClass())
    {
      return result;
    }

    sub_1E3B0AF24();
  }

  return result;
}

double sub_1E3B04344(char a1)
{
  OUTLINED_FUNCTION_5_0(v1 + OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_viewModel, v10);
  if (swift_weakLoadStrong())
  {
    type metadata accessor for TemplateViewModel(0);
    v3 = swift_dynamicCastClass();
    if (!v3)
    {
LABEL_9:

      return result;
    }

    (*(*v3 + 776))(v9);
    if (v9[3])
    {
      if (OUTLINED_FUNCTION_21_4())
      {
        v4 = v8;
LABEL_8:
        *(v1 + OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_isOptimizedTTLRefreshEnabled) = v4;

        sub_1E3B0A67C();

        v9[0] = *(v1 + OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_eventEligibleViewModels);
        MEMORY[0x1EEE9AC00](v5);
        v7 = v6;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32F50, &unk_1E42BA1C8);
        sub_1E4148DE0(sub_1E3B0C410);

        sub_1E3B04504();
        goto LABEL_9;
      }
    }

    else
    {
      sub_1E325F6F0(v9, &unk_1ECF296E0, &unk_1E4298030);
    }

    v4 = 1;
    goto LABEL_8;
  }

  return result;
}

void sub_1E3B04504()
{
  OUTLINED_FUNCTION_31_1();
  v1 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4_6();
  v7 = v5 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v105 = &v90 - v9;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_25_3();
  v104 = v11;
  v12 = OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_documentEventIterable;
  OUTLINED_FUNCTION_5_0(&v0[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_documentEventIterable], &v113);
  sub_1E3743538(&v0[v12], &v122, &qword_1ECF32F60, &qword_1E42BA1D8);
  if (!*(&v123 + 1))
  {
    sub_1E325F6F0(&v122, &qword_1ECF32F60, &qword_1E42BA1D8);
    sub_1E324FBDC();
    OUTLINED_FUNCTION_21_8();
    v80(v7);
    v81 = v0;
    v82 = sub_1E41FFC94();
    v83 = sub_1E4206814();

    if (os_log_type_enabled(v82, v83))
    {
      OUTLINED_FUNCTION_6_21();
      v84 = OUTLINED_FUNCTION_36_6();
      *&v122 = v84;
      *v1 = 136446210;
      *(v1 + 4) = sub_1E3270FC8(*&v81[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_controllerName], *&v81[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_controllerName + 8], &v122);
      OUTLINED_FUNCTION_59_13();
      _os_log_impl(v85, v86, v87, v88, v89, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v84);
      OUTLINED_FUNCTION_21_0();
      OUTLINED_FUNCTION_65_0();
    }

    (*(v3 + 8))(v7, v1);
    sub_1E3B0397C();
    goto LABEL_40;
  }

  v103 = v0;
  sub_1E3251BE8(&v122, v114);
  v13 = v116;
  __swift_project_boxed_opaque_existential_1(v114, v115);
  v14 = OUTLINED_FUNCTION_42_37();
  v16 = v15(v14, v13);
  if (!v16)
  {
    goto LABEL_39;
  }

  v19 = v16;
  v20 = v17;
  v101 = &v103[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_controllerName];
  v100 = v103[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_isCollectionChildrenUpdateMode];
  v109 = (v3 + 16);
  v108 = v3 + 8;
  *&v18 = 136446722;
  v99 = v18;
  *&v18 = 136446466;
  v98 = v18;
  v106 = v1;
  while (1)
  {
    v110 = v20;
    v21 = [v20 descriptor];
    v22 = [v21 animated];

    v107 = type metadata accessor for ViewModel();
    *(&v123 + 1) = v107;
    *&v122 = v19;
    v111 = v19;

    v23 = sub_1E3B089FC(&v122);
    v25 = v24;
    __swift_destroy_boxed_opaque_existential_1(&v122);
    v26 = sub_1E324FBDC();
    v27 = *v109;
    v28 = v104;
    (*v109)(v104, v26, v1);
    v29 = v103;

    v30 = sub_1E41FFC94();
    v31 = sub_1E4206814();

    v32 = OUTLINED_FUNCTION_84_1();
    v102 = v22;
    if (v32)
    {
      v33 = OUTLINED_FUNCTION_100();
      *&v122 = OUTLINED_FUNCTION_164_1();
      *(v33 + 4) = OUTLINED_FUNCTION_43_31(&v122);
      *(v33 + 12) = 2080;
      v34 = sub_1E3270FC8(v23, v25, &v122);

      *(v33 + 14) = v34;
      *(v33 + 22) = 2080;
      v35 = sub_1E328692C(v22);
      v37 = sub_1E3270FC8(v35, v36, &v122);

      *(v33 + 24) = v37;
      _os_log_impl(&dword_1E323F000, v30, v31, "EVENT_MONITOR::[%{public}s] performNextUpdate update context has a descriptor provider: [%s] with animated: [%s]", v33, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();

      OUTLINED_FUNCTION_113_0();
      v39 = *v38;
      v40 = v104;
    }

    else
    {

      OUTLINED_FUNCTION_113_0();
      v39 = *v41;
      v40 = v28;
    }

    v1 = v106;
    (v39)(v40, v106);
    v27(v105, v26, v1);
    OUTLINED_FUNCTION_70_15();

    v42 = v29;
    v43 = v110;
    v44 = v110;
    v45 = sub_1E41FFC94();
    v46 = sub_1E4206814();

    if (OUTLINED_FUNCTION_51_11())
    {
      v47 = OUTLINED_FUNCTION_49_0();
      swift_slowAlloc();
      v48 = OUTLINED_FUNCTION_36_6();
      *&v122 = v48;
      *(v47 + 4) = OUTLINED_FUNCTION_43_31(&v120);
      *(v47 + 12) = 2112;
      *(v47 + 14) = v44;
      *v1 = v43;
      v49 = v44;
      _os_log_impl(&dword_1E323F000, v45, v46, "EVENT_MONITOR::[%{public}s] performNextUpdate perform update for event: %@", v47, 0x16u);
      sub_1E325F6F0(v1, &unk_1ECF28E30, &qword_1E429E820);
      v1 = v106;
      OUTLINED_FUNCTION_6_0();
      __swift_destroy_boxed_opaque_existential_1(v48);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    OUTLINED_FUNCTION_113_0();
    v39();
    if (v100)
    {

      v50 = v44;
      OUTLINED_FUNCTION_5_0(&v42[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_viewModel], &v117);
      Strong = swift_weakLoadStrong();
      if (Strong && (*&v122 = Strong, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32F78, &unk_1E42BA2C0), (swift_dynamicCast() & 1) != 0))
      {
        if (*(&v119 + 1))
        {
          sub_1E3251BE8(&v118, &v122);
          v52 = v124;
          __swift_project_boxed_opaque_existential_1(&v122, *(&v123 + 1));
          OUTLINED_FUNCTION_4_0();
          v53 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v54 = swift_allocObject();
          *(v54 + 16) = v53;
          *(v54 + 24) = v50;
          v22 = (v52 + 16);
          v55 = *(v52 + 16);
          v56 = v50;

          OUTLINED_FUNCTION_71_17();
          v55();
          OUTLINED_FUNCTION_70_15();

          v1 = v106;

          __swift_destroy_boxed_opaque_existential_1(&v122);
LABEL_25:

          goto LABEL_27;
        }
      }

      else
      {
        v120 = 0;
        v118 = 0u;
        v119 = 0u;
      }

      sub_1E325F6F0(&v118, &qword_1ECF32F70, &qword_1E42BA2B8);
      goto LABEL_25;
    }

    v121 = v22;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32F78, &unk_1E42BA2C0);
    if (swift_dynamicCast())
    {
      sub_1E3251BE8(&v122, &v118);

      v57 = v44;
      OUTLINED_FUNCTION_5_0(&v42[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_viewModel], &v125);
      if (swift_weakLoadStrong())
      {
        v58 = OUTLINED_FUNCTION_56_20();
        type metadata accessor for TemplateViewModel(v58);
        if (swift_dynamicCastClass())
        {
          sub_1E327F454(&v118, &v122);
          v59 = v57;
          v97 = v57;
          v94 = v59;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32F78, &unk_1E42BA2C0);
          v60 = swift_dynamicCast();
          v61 = v121;
          v107 = *(&v119 + 1);
          v93 = v120;
          v96 = __swift_project_boxed_opaque_existential_1(&v118, *(&v119 + 1));
          OUTLINED_FUNCTION_4_0();
          v62 = swift_allocObject();
          swift_unknownObjectWeakInit();
          OUTLINED_FUNCTION_4_0();
          v63 = swift_allocObject();
          swift_weakInit();
          OUTLINED_FUNCTION_4_0();
          v64 = swift_allocObject();
          if (v60)
          {
            v65 = v61;
          }

          else
          {
            v65 = 0;
          }

          v95 = v65;
          swift_weakInit();
          OUTLINED_FUNCTION_4_0();
          v66 = swift_allocObject();
          swift_weakInit();
          v67 = swift_allocObject();
          v92 = v62;
          v67[2] = v62;
          v67[3] = v63;
          v68 = v94;
          v67[4] = v66;
          v67[5] = v68;
          v67[6] = v64;
          v22 = (v93 + 24);
          v91 = *(v93 + 24);
          v69 = v68;

          OUTLINED_FUNCTION_71_17();
          v91();
          v57 = v97;
          OUTLINED_FUNCTION_70_15();

          v1 = v106;
        }
      }

      v70 = __swift_destroy_boxed_opaque_existential_1(&v118);
    }

    else
    {
      v124 = 0;
      v123 = 0u;
      v122 = 0u;
      v70 = sub_1E325F6F0(&v122, &qword_1ECF32F70, &qword_1E42BA2B8);
    }

LABEL_27:
    LOWORD(v121) = v22[49];
    v112 = 0;
    sub_1E3742F1C(v70, v71, v72);
    sub_1E4206254();
    sub_1E4206254();
    if (v122 == v118 && *(&v122 + 1) == *(&v118 + 1))
    {
      break;
    }

    v74 = sub_1E42079A4();

    if (v74)
    {
      goto LABEL_38;
    }

    v75 = v116;
    __swift_project_boxed_opaque_existential_1(v114, v115);
    v76 = OUTLINED_FUNCTION_42_37();
    v78 = v77(v76, v75);
    v20 = v79;

    v19 = v78;
    if (!v78)
    {
      goto LABEL_39;
    }
  }

LABEL_38:

LABEL_39:
  __swift_destroy_boxed_opaque_existential_1(v114);
LABEL_40:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3B050F0()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  LODWORD(v4) = v3;
  v5 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5_14();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_45_25();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v45 - v11;
  v13 = OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_isSuspended;
  if (*(v0 + OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_isSuspended) == 1)
  {
    sub_1E324FBDC();
    OUTLINED_FUNCTION_2_26();
    v14(v12);
    v15 = v0;
    v16 = sub_1E41FFC94();
    v17 = sub_1E4206814();

    if (os_log_type_enabled(v16, v17))
    {
      v46 = v2;
      v47 = v5;
      v18 = OUTLINED_FUNCTION_49_0();
      v48 = OUTLINED_FUNCTION_72_0();
      *v18 = 136446466;
      v19 = OUTLINED_FUNCTION_17_70(OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_controllerName);
      *(v18 + 4) = sub_1E3270FC8(v19, v20, &v48);
      *(v18 + 12) = 2080;
      LODWORD(v45) = v4;
      if (v4)
      {
        if (v4 == 1)
        {
          v21 = 0x756F726765726F66;
        }

        else
        {
          v21 = 0x656E696665646E75;
        }

        if (v4 == 1)
        {
          v22 = 0xEA0000000000646ELL;
        }

        else
        {
          v22 = 0xE900000000000064;
        }
      }

      else
      {
        v21 = OUTLINED_FUNCTION_7_114();
        v22 = 0xE900000000000068;
      }

      v4 = sub_1E3270FC8(v21, v22, &v48);

      *(v18 + 14) = v4;
      _os_log_impl(&dword_1E323F000, v16, v17, "EVENT_MONITOR::[%{public}s] started monitoring with reason: %s", v18, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_55();

      (*(v7 + 8))(v12, v47);
      v2 = v46;
      LOBYTE(v4) = v45;
    }

    else
    {

      (*(v7 + 8))(v12, v5);
    }

    *(v15 + OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_lastMonitoringReason) = v4;
    *(v2 + v13) = 0;
    sub_1E3B0393C();
  }

  else
  {
    v23 = OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_lastMonitoringReason;
    v24 = v4;
    v25 = sub_1E3B035EC(*(v0 + OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_lastMonitoringReason), v4);
    sub_1E324FBDC();
    OUTLINED_FUNCTION_2_26();
    if (v25)
    {
      v26(v1);
      v27 = v0;
      v28 = sub_1E41FFC94();
      v29 = sub_1E4206814();

      if (os_log_type_enabled(v28, v29))
      {
        v47 = v5;
        v30 = OUTLINED_FUNCTION_49_0();
        v48 = OUTLINED_FUNCTION_72_0();
        *v30 = 136446466;
        *(v30 + 4) = sub_1E3270FC8(*&v27[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_controllerName], *&v27[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_controllerName + 8], &v48);
        *(v30 + 12) = 2080;
        v31 = 0x756F726765726F66;
        v32 = 0xEA0000000000646ELL;
        if (*(v2 + v23) != 1)
        {
          v31 = 0x656E696665646E75;
          v32 = 0xE900000000000064;
        }

        if (*(v2 + v23))
        {
          v33 = v31;
        }

        else
        {
          v33 = 0x6374697753626174;
        }

        if (*(v2 + v23))
        {
          v34 = v32;
        }

        else
        {
          v34 = 0xE900000000000068;
        }

        v35 = sub_1E3270FC8(v33, v34, &v48);

        *(v30 + 14) = v35;
        _os_log_impl(&dword_1E323F000, v28, v29, "EVENT_MONITOR::[%{public}s] already monitoring with lastMonitoringReason: %s", v30, 0x16u);
        OUTLINED_FUNCTION_50_24();
        OUTLINED_FUNCTION_55();
        OUTLINED_FUNCTION_6_0();

        (*(v7 + 8))(v1, v47);
      }

      else
      {

        (*(v7 + 8))(v1, v5);
      }
    }

    else
    {
      v26(v0);
      v36 = v0;
      v37 = sub_1E41FFC94();
      v38 = sub_1E4206814();

      if (os_log_type_enabled(v37, v38))
      {
        v46 = v0;
        v47 = v5;
        v39 = OUTLINED_FUNCTION_49_0();
        v45 = OUTLINED_FUNCTION_72_0();
        v48 = v45;
        *v39 = 136446466;
        v40 = OUTLINED_FUNCTION_17_70(OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_controllerName);
        *(v39 + 4) = sub_1E3270FC8(v40, v41, &v48);
        *(v39 + 12) = 2080;
        if (v24)
        {
          if (v24 == 1)
          {
            v42 = 0x756F726765726F66;
          }

          else
          {
            v42 = 0x656E696665646E75;
          }

          if (v24 == 1)
          {
            v43 = 0xEA0000000000646ELL;
          }

          else
          {
            v43 = 0xE900000000000064;
          }
        }

        else
        {
          v42 = OUTLINED_FUNCTION_7_114();
          v43 = 0xE900000000000068;
        }

        v44 = sub_1E3270FC8(v42, v43, &v48);

        *(v39 + 14) = v44;
        _os_log_impl(&dword_1E323F000, v37, v38, "EVENT_MONITOR::[%{public}s] started monitoring for another reason: %s", v39, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_55();

        (*(v7 + 8))(v0, v47);
        v2 = v46;
      }

      else
      {

        (*(v7 + 8))(v0, v5);
      }

      *(v2 + v23) = v24;
      sub_1E3B0397C();
    }
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3B056A4()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  v10 = sub_1E324FBDC();
  (*(v5 + 16))(v9, v10, v3);
  v11 = v0;
  v12 = sub_1E41FFC94();
  v13 = sub_1E4206814();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = OUTLINED_FUNCTION_49_0();
    v24[0] = OUTLINED_FUNCTION_72_0();
    *v14 = 136446466;
    v15 = OUTLINED_FUNCTION_46_27(&v11[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_controllerName]);
    OUTLINED_FUNCTION_121_0(v15);
    v16 = sub_1E328692C(v2 & 1);
    v23 = v3;
    v18 = v2;
    v19 = sub_1E3270FC8(v16, v17, v24);

    *(v14 + 14) = v19;
    v2 = v18;
    _os_log_impl(&dword_1E323F000, v12, v13, "EVENT_MONITOR::[%{public}s] stopped monitoring, dismissed: %s", v14, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_21_0();

    (*(v5 + 8))(v9, v23);
  }

  else
  {

    (*(v5 + 8))(v9, v3);
  }

  v11[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_isSuspended] = 1;
  sub_1E3B0393C();
  if (v2)
  {
    OUTLINED_FUNCTION_24_46(&v11[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_viewModel]);
    if (swift_weakLoadStrong() && (type metadata accessor for ViewModel(), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32F78, &unk_1E42BA2C0), (swift_dynamicCast() & 1) != 0))
    {
      v20 = v25;
      if (v25)
      {
        v21 = v26;
        __swift_project_boxed_opaque_existential_1(v24, v25);
        (*(v21 + 48))(v20, v21);
        __swift_destroy_boxed_opaque_existential_1(v24);
LABEL_11:
        OUTLINED_FUNCTION_13_23();
        v22 = OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_documentEventIterable;
        swift_beginAccess();
        sub_1E3B0D4BC(v24, &v11[v22], &qword_1ECF32F60, &qword_1E42BA1D8);
        swift_endAccess();
        goto LABEL_12;
      }
    }

    else
    {
      OUTLINED_FUNCTION_13_23();
    }

    sub_1E325F6F0(v24, &qword_1ECF32F70, &qword_1E42BA2B8);
    goto LABEL_11;
  }

LABEL_12:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3B0598C()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  v78 = (v7 - v8);
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v76 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v76 - v13;
  v15 = sub_1E324FBDC();
  v16 = *(v5 + 2);
  v81 = v15;
  v82 = v5 + 16;
  v80 = v16;
  (v16)(v14);
  v17 = v0;
  v18 = v2;
  v19 = sub_1E41FFC94();
  v20 = sub_1E4206814();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = OUTLINED_FUNCTION_49_0();
    v77 = v11;
    v22 = v21;
    v76 = OUTLINED_FUNCTION_72_0();
    v86[0] = v76;
    *v22 = 136446466;
    v23 = OUTLINED_FUNCTION_46_27(&v17[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_controllerName]);
    OUTLINED_FUNCTION_121_0(v23);
    v24 = [v18 dictionaryRepresentation];
    v79 = v18;
    sub_1E4205C64();

    v25 = sub_1E4205C74();
    v27 = v26;

    v28 = sub_1E3270FC8(v25, v27, v86);
    v18 = v79;

    *(v22 + 14) = v28;
    _os_log_impl(&dword_1E323F000, v19, v20, "EVENT_MONITOR::[%{public}s] received document update event [%s], starting update", v22, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    v11 = v77;
    OUTLINED_FUNCTION_6_0();
  }

  v29 = *(v5 + 1);
  v29(v14, v3);
  v30 = [v18 descriptor];
  v31 = sub_1E3CB1908(v30);

  if (v17[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_isSuspended] != 1)
  {
    goto LABEL_23;
  }

  if (sub_1E3CB0C24(v31))
  {
    v80(v11, v81, v3);
    v32 = v11;
    v33 = v17;
    v34 = sub_1E41FFC94();
    sub_1E4206814();

    if (OUTLINED_FUNCTION_84_1())
    {
      v35 = OUTLINED_FUNCTION_6_21();
      v79 = v18;
      v36 = v35;
      v37 = OUTLINED_FUNCTION_100();
      v77 = v5;
      v38 = v3;
      v39 = v17;
      v40 = v37;
      v86[0] = v37;
      *v36 = 136446210;
      *(v36 + 4) = OUTLINED_FUNCTION_46_27(&v33[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_controllerName]);
      OUTLINED_FUNCTION_258();
      _os_log_impl(v41, v42, v43, v44, v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v40);
      v17 = v39;
      v3 = v38;
      v5 = v77;
      OUTLINED_FUNCTION_6_0();
      v18 = v79;
      OUTLINED_FUNCTION_6_0();
    }

    v29(v32, v3);
    v33[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_isDocumentDirtyForRefreshEvents] = 1;
  }

  v45 = v3;
  OUTLINED_FUNCTION_13_23();
  OUTLINED_FUNCTION_24_46(&v17[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_viewModel]);
  if (swift_weakLoadStrong())
  {
    v46 = type metadata accessor for TemplateViewModel(0);
    v47 = swift_dynamicCastClass();
    if (v47)
    {
      v48 = v47;
      sub_1E325F6F0(v86, &qword_1ECF2FB80, &qword_1E42AF500);
      v86[0] = v48;
      v87 = v46;
      v49 = &off_1F5D98370;
LABEL_15:
      v88 = v49;
      goto LABEL_16;
    }
  }

  if (swift_weakLoadStrong())
  {
    v50 = type metadata accessor for CollectionViewModel();
    v51 = swift_dynamicCastClass();
    if (!v51)
    {

      goto LABEL_16;
    }

    v52 = v51;
    sub_1E325F6F0(v86, &qword_1ECF2FB80, &qword_1E42AF500);
    v86[0] = v52;
    v87 = v50;
    v49 = &off_1F5D96718;
    goto LABEL_15;
  }

LABEL_16:
  sub_1E3743538(v86, &v83, &qword_1ECF2FB80, &qword_1E42AF500);
  if (!v84)
  {
    OUTLINED_FUNCTION_82();
    sub_1E325F6F0(v58, v59, v60);
    OUTLINED_FUNCTION_82();
    goto LABEL_22;
  }

  v53 = OUTLINED_FUNCTION_64_14(&v83);
  if (!v53)
  {
LABEL_20:
    __swift_destroy_boxed_opaque_existential_1(v85);
    v55 = &qword_1ECF2FB80;
    v56 = &qword_1E42AF500;
    v57 = v86;
LABEL_22:
    sub_1E325F6F0(v57, v55, v56);
    goto LABEL_23;
  }

  v54 = v53;
  if (sub_1E374CEE0(v53))
  {

    goto LABEL_20;
  }

  v61 = v17;
  v62 = v18;
  v63 = [v18 descriptor];
  v64 = sub_1E3B060FC(v63, v54);

  if (v64)
  {
    v77 = v5;
    v65 = v78;
    v80(v78, v81, v45);
    v17 = v61;
    v66 = v61;
    v67 = sub_1E41FFC94();
    sub_1E4206814();

    if (OUTLINED_FUNCTION_84_1())
    {
      v68 = OUTLINED_FUNCTION_6_21();
      v69 = OUTLINED_FUNCTION_100();
      *&v83 = v69;
      *v68 = 136446210;
      *(v68 + 4) = sub_1E3270FC8(*&v66[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_controllerName], *&v66[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_controllerName + 8], &v83);
      OUTLINED_FUNCTION_258();
      _os_log_impl(v70, v71, v72, v73, v68, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v69);
      v17 = v61;
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_51_2();

      v74 = v78;
    }

    else
    {

      v74 = v65;
    }

    v29(v74, v45);
    __swift_destroy_boxed_opaque_existential_1(v85);
    sub_1E325F6F0(v86, &qword_1ECF2FB80, &qword_1E42AF500);
    v18 = v62;
    v75 = OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_isDocumentDirty;
    OUTLINED_FUNCTION_3_0(&v66[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_isDocumentDirty], &v83);
    v66[v75] = 1;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v85);
    sub_1E325F6F0(v86, &qword_1ECF2FB80, &qword_1E42AF500);
    v17 = v61;
    v18 = v62;
  }

LABEL_23:
  v17[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_hasRefreshEvents] = sub_1E3CB0C24(v31);
  [*&v17[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_updateEventStore] addEvent_];
  sub_1E3B0397C();
  OUTLINED_FUNCTION_25_2();
}

BOOL sub_1E3B060FC(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_1E42073D4();

    return v4 & 1;
  }

  else
  {
    if (!*(a2 + 16))
    {
      return 0;
    }

    sub_1E3280A90(0, &qword_1EE23AEF0, off_1E8728218);
    v6 = sub_1E4206F54();
    v7 = ~(-1 << *(a2 + 32));
    do
    {
      v8 = v6 & v7;
      v9 = (1 << (v6 & v7)) & *(a2 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
      v10 = v9 != 0;
      if (!v9)
      {
        break;
      }

      v11 = *(*(a2 + 48) + 8 * v8);
      v12 = sub_1E4206F64();

      v6 = v8 + 1;
    }

    while ((v12 & 1) == 0);
    return v10;
  }
}

void sub_1E3B0627C()
{
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_14();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v27 - v8;
  v10 = v0[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_isSuspended];
  v11 = sub_1E324FBDC();
  v12 = *(v5 + 16);
  if (v10 == 1)
  {
    v12(v9, v11, v3);
    v13 = v0;
    v14 = sub_1E41FFC94();
    sub_1E4206814();

    if (OUTLINED_FUNCTION_51_11())
    {
      OUTLINED_FUNCTION_6_21();
      v15 = OUTLINED_FUNCTION_11_16();
      v28 = v15;
      *v2 = 136446210;
      v16 = OUTLINED_FUNCTION_17_70(OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_controllerName);
      *(v2 + 4) = sub_1E3270FC8(v16, v17, &v28);
      OUTLINED_FUNCTION_189();
      _os_log_impl(v18, v19, v20, v21, v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      OUTLINED_FUNCTION_55();
      OUTLINED_FUNCTION_21_0();
    }

    (*(v5 + 8))(v9, v3);
  }

  else
  {
    v12(v1, v11, v3);
    v23 = v0;
    v24 = sub_1E41FFC94();
    v25 = sub_1E4206814();

    if (os_log_type_enabled(v24, v25))
    {
      OUTLINED_FUNCTION_6_21();
      v26 = OUTLINED_FUNCTION_11_16();
      v28 = v26;
      *v2 = 136446210;
      *(v2 + 4) = sub_1E3270FC8(*&v23[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_controllerName], *&v23[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_controllerName + 8], &v28);
      _os_log_impl(&dword_1E323F000, v24, v25, "EVENT_MONITOR::[%{public}s] app has become active, starting updates for defered events", v2, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      OUTLINED_FUNCTION_55();
      OUTLINED_FUNCTION_21_0();
    }

    (*(v5 + 8))(v1, v3);
    sub_1E3B050F0();
  }
}

void sub_1E3B06620()
{
  v112 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_14();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_47_2();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_25_3();
  v9 = v8;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32F88, &qword_1E42BA2D8);
  OUTLINED_FUNCTION_0_10();
  v98 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4_6();
  v102 = v12 - v13;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_25_3();
  v97 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32FB8, &qword_1E42BA310);
  v17 = OUTLINED_FUNCTION_17_2(v16);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_4_6();
  v109 = (v18 - v19);
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_25_3();
  v110 = v21;
  v108 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_0_10();
  v23 = v22;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_5();
  v27 = v26 - v25;
  v28 = *(sub_1E3B038A8() + 16);

  if (v28)
  {
    v92 = v2;
    v93 = v1;
    v107 = v27;
    sub_1E41FE5C4();
    v29 = *&v0[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController____lazy_storage___foregroundTTLExpirationMap];
    v30 = *(v29 + 64);
    v114 = MEMORY[0x1E69E7CC0];
    v31 = 1 << *(v29 + 32);
    v32 = -1;
    if (v31 < 64)
    {
      v32 = ~(-1 << v31);
    }

    v33 = v32 & v30;
    v105 = v0;
    v34 = (v31 + 63) >> 6;
    v99 = v29;
    v100 = (v23 + 32);
    v104 = (v4 + 16);
    v35 = v29 + 64;
    v106 = (v23 + 8);

    v36 = 0;
    v37 = v109;
    v38 = v110;
    v101 = v35;
    v96 = v34;
    v95 = v9;
    while (v33)
    {
      v39 = v36;
LABEL_11:
      v40 = __clz(__rbit64(v33));
      v33 &= v33 - 1;
      v41 = v40 | (v39 << 6);
      v42 = *(*(v99 + 48) + 8 * v41);
      sub_1E3743538(*(v99 + 56) + *(v98 + 72) * v41, v97, &qword_1ECF32F88, &qword_1E42BA2D8);
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32FC0, &qword_1E42BA318);
      v44 = *(v43 + 48);
      *v37 = v42;
      sub_1E3741EA0(v97, v37 + v44, &qword_1ECF32F88, &qword_1E42BA2D8);
      v45 = OUTLINED_FUNCTION_40_36();
      __swift_storeEnumTagSinglePayload(v45, v46, v47, v43);
      v34 = v96;
      v9 = v95;
      v38 = v110;
LABEL_12:
      sub_1E3741EA0(v37, v38, &qword_1ECF32FB8, &qword_1E42BA310);
      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32FC0, &qword_1E42BA318);
      if (__swift_getEnumTagSinglePayload(v38, 1, v48) == 1)
      {

        OUTLINED_FUNCTION_70_15();
        v68 = sub_1E32AE9B0(&qword_1E42BA318);
        v69 = sub_1E324FBDC();
        v70 = *v104;
        if (v68)
        {
          v70(v93, v69, v112);
          v71 = v105;
          v72 = sub_1E41FFC94();
          sub_1E4206814();

          if (OUTLINED_FUNCTION_84_1())
          {
            v73 = OUTLINED_FUNCTION_49_0();
            v113 = OUTLINED_FUNCTION_72_0();
            *v73 = 136446466;
            *(v73 + 4) = OUTLINED_FUNCTION_33_37();
            *(v73 + 12) = 2080;
            v74 = sub_1E3280A90(0, &qword_1EE23AFD8, off_1E8728210);

            v76 = MEMORY[0x1E6910C30](v75, v74);
            v78 = v77;

            v79 = sub_1E3270FC8(v76, v78, &v113);

            *(v73 + 14) = v79;
            OUTLINED_FUNCTION_258();
            _os_log_impl(v80, v81, v82, v83, v73, 0x16u);
            swift_arrayDestroy();
            OUTLINED_FUNCTION_21_0();
            OUTLINED_FUNCTION_6_0();
          }

          OUTLINED_FUNCTION_69_13();
          v84(v93, v112);
          v85 = *&v71[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_updateEventStore];
          sub_1E3280A90(0, &qword_1EE23AFD8, off_1E8728210);
          OUTLINED_FUNCTION_76();

          sub_1E42062A4();
          OUTLINED_FUNCTION_76();

          [v85 addEvents_];
        }

        else
        {
          v70(v92, v69, v112);
          v86 = v105;
          v87 = sub_1E41FFC94();
          v88 = sub_1E4206814();

          if (os_log_type_enabled(v87, v88))
          {
            v89 = OUTLINED_FUNCTION_6_21();
            v90 = OUTLINED_FUNCTION_100();
            v113 = v90;
            *v89 = 136446210;
            *(v89 + 4) = OUTLINED_FUNCTION_33_37();
            _os_log_impl(&dword_1E323F000, v87, v88, "EVENT_MONITOR::[%{public}s] no refresh events to be processed.", v89, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v90);
            OUTLINED_FUNCTION_6_0();
            OUTLINED_FUNCTION_51_2();
          }

          OUTLINED_FUNCTION_69_13();
          v91(v92, v112);
        }

        (*v106)(v107, v108);

        return;
      }

      v49 = *v38;
      v50 = (v38 + *(v48 + 48));
      v111 = *v50;
      v51 = *(v103 + 48);
      (*v100)(v102 + v51, v50 + v51, v108);
      sub_1E41FE4F4();
      v53 = v52;
      (*v106)(v102 + v51, v108);
      v54 = sub_1E324FBDC();
      (*v104)(v9, v54, v112);
      v55 = v9;
      v56 = v105;
      v57 = sub_1E41FFC94();
      v58 = sub_1E4206814();

      if (OUTLINED_FUNCTION_67_5())
      {
        v59 = OUTLINED_FUNCTION_100();
        v60 = OUTLINED_FUNCTION_100();
        v113 = v60;
        *v59 = 136446722;
        *(v59 + 4) = OUTLINED_FUNCTION_33_37();
        *(v59 + 12) = 2048;
        *(v59 + 14) = v53;
        *(v59 + 22) = 2048;
        *(v59 + 24) = v49;
        _os_log_impl(&dword_1E323F000, v57, v58, "EVENT_MONITOR::[%{public}s] checking timeInterval: %f and ttl: %lu", v59, 0x20u);
        __swift_destroy_boxed_opaque_existential_1(v60);
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_6_0();

        OUTLINED_FUNCTION_69_13();
        v62 = v55;
      }

      else
      {

        OUTLINED_FUNCTION_69_13();
        v62 = v9;
      }

      v61(v62, v112);
      v9 = v55;
      v35 = v101;
      v63 = v53 <= v49;
      v37 = v109;
      v38 = v110;
      if (v63)
      {
      }

      else
      {
        v94 = [objc_allocWithZone(VUIAppDocumentRefreshEvent) initWithRefreshEventDescriptor_];
        MEMORY[0x1E6910BF0]();
        if (*((v114 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v114 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1E42062F4();
        }

        sub_1E4206324();
      }
    }

    while (1)
    {
      v39 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v39 >= v34)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32FC0, &qword_1E42BA318);
        v64 = OUTLINED_FUNCTION_61_12();
        __swift_storeEnumTagSinglePayload(v64, v65, v66, v67);
        v33 = 0;
        goto LABEL_12;
      }

      v33 = *(v35 + 8 * v39);
      ++v36;
      if (v33)
      {
        v36 = v39;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

void sub_1E3B06F44()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_45_25();
  *&v7 = MEMORY[0x1EEE9AC00](v6).n128_u64[0];
  v9 = &v53 - v8;
  v10 = [*&v0[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_updateEventStore] events];
  sub_1E3280A90(0, &qword_1EE23AFD8, off_1E8728210);
  v11 = sub_1E42062B4();

  v57 = v11;
  v56 = MEMORY[0x1E69E7CD0];
  v12 = OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_lastMonitoringReason;
  v13 = &OBJC_IVAR____TtC8VideosUI32TVAppExtensionHostViewController_loadingViewController;
  if (v0[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_lastMonitoringReason])
  {
    if (v0[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_lastMonitoringReason] == 1)
    {
      goto LABEL_14;
    }

    v53 = v0;
    v54 = v2;
    v14 = OUTLINED_FUNCTION_57_15();
  }

  else
  {
    v53 = v0;
    v54 = v2;
    v14 = 0x6374697753626174;
  }

  v15 = OUTLINED_FUNCTION_22_51(v14);

  v13 = &OBJC_IVAR____TtC8VideosUI32TVAppExtensionHostViewController_loadingViewController;
  if (v15)
  {
LABEL_15:
    v0[v12] = 2;
    goto LABEL_16;
  }

  if (!v0[v12])
  {
LABEL_14:

    goto LABEL_15;
  }

  if (v0[v12] != 1)
  {
    OUTLINED_FUNCTION_26_46();
  }

  v18 = OUTLINED_FUNCTION_47_30(v16, v17, 0x6374697753626174);

  if (v18)
  {
    goto LABEL_15;
  }

  v19 = v0[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_isDocumentDirtyForRefreshEvents];
  v20 = sub_1E324FBDC();
  v21 = *(v4 + 16);
  if (v19 == 1)
  {
    v22 = v54;
    v21(v9, v20, v54);
    v23 = v0;
    v24 = sub_1E41FFC94();
    sub_1E4206814();

    if (OUTLINED_FUNCTION_84_1())
    {
      v25 = OUTLINED_FUNCTION_6_21();
      v26 = OUTLINED_FUNCTION_100();
      v55[0] = v26;
      *v25 = 136446210;
      *(v25 + 4) = OUTLINED_FUNCTION_46_27(&v23[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_controllerName]);
      OUTLINED_FUNCTION_258();
      _os_log_impl(v27, v28, v29, v30, v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      v13 = &OBJC_IVAR____TtC8VideosUI32TVAppExtensionHostViewController_loadingViewController;
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_55();
    }

    (*(v4 + 8))(v9, v22);
    sub_1E374D328(v55, 0);
  }

  else
  {
    v42 = v53;
    v43 = v54;
    v21(v53, v20, v54);
    v44 = v1;
    v45 = sub_1E41FFC94();
    v46 = sub_1E4206814();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = OUTLINED_FUNCTION_49_0();
      v55[0] = OUTLINED_FUNCTION_72_0();
      *v47 = 136446466;
      *(v47 + 4) = OUTLINED_FUNCTION_46_27(&v44[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_controllerName]);
      *(v47 + 12) = 2082;
      *(v47 + 14) = sub_1E3270FC8(0xD00000000000005FLL, 0x80000001E42715F0, v55);
      OUTLINED_FUNCTION_59_13();
      _os_log_impl(v48, v49, v50, v51, v52, 0x16u);
      OUTLINED_FUNCTION_50_24();
      OUTLINED_FUNCTION_55();
      OUTLINED_FUNCTION_65_0();
    }

    (*(v4 + 8))(v42, v43);
    sub_1E374D328(v55, 0);
    sub_1E374D328(v55, 1uLL);
    v13 = &OBJC_IVAR____TtC8VideosUI32TVAppExtensionHostViewController_loadingViewController;
  }

LABEL_16:
  sub_1E3B0C830(&v57, &v56);
  v32 = v31;
  v33 = v57;
  v34 = sub_1E32AE9B0(v57);
  v35 = v34 - v32;
  if (v34 < v32)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (v32 < 0)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v36 = v34;
  if (sub_1E32AE9B0(v33) < v34)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v37 = __OFSUB__(0, v35);
  v38 = -v35;
  if (v37)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v39 = sub_1E32AE9B0(v33);
  v37 = __OFADD__(v39, v38);
  v40 = v39 + v38;
  if (!v37)
  {
    sub_1E3879104(v40, 1);
    sub_1E3B0D688(v32, v36, 0);
    *(v1 + v13[194]) = 0;
    v41 = OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_isDocumentDirty;
    OUTLINED_FUNCTION_3_0(v1 + OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_isDocumentDirty, v55);
    *(v1 + v41) = 0;

    OUTLINED_FUNCTION_25_2();
    return;
  }

LABEL_29:
  __break(1u);
}

void sub_1E3B07414()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v0;
  v5 = v4;
  OUTLINED_FUNCTION_56_20();
  v6 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_45_25();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v39 - v11;
  v13 = *&v0[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_eventEligibleViewModels];
  if (v13)
  {
    v14 = v13;
    if ([v14 count] >= 1)
    {
      v44 = v5;
      v15 = type metadata accessor for DocumentEventIterable();
      v16 = *&v3[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_controllerName];
      v17 = *&v3[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_controllerName + 8];
      v18 = v14;

      v42 = v15;
      v43 = sub_1E399B2D0(v16, v17, v2, v18);
      sub_1E324FBDC();
      OUTLINED_FUNCTION_2_26();
      v19(v12);
      v20 = v18;

      v21 = v3;
      v22 = sub_1E41FFC94();
      v23 = sub_1E4206814();

      if (OUTLINED_FUNCTION_67_5())
      {
        v24 = swift_slowAlloc();
        v41 = v6;
        v25 = v24;
        v40 = OUTLINED_FUNCTION_164_1();
        v45[0] = v40;
        *v25 = 136447234;
        *(v25 + 4) = sub_1E3270FC8(v16, v17, v45);
        *(v25 + 12) = 2048;
        *(v25 + 14) = sub_1E32AE9B0(v2);

        *(v25 + 22) = 2080;
        v26 = sub_1E3280A90(0, &qword_1EE23AFD8, off_1E8728210);
        v27 = MEMORY[0x1E6910C30](v2, v26);
        v29 = sub_1E3270FC8(v27, v28, v45);

        *(v25 + 24) = v29;
        *(v25 + 32) = 2048;
        v30 = [v20 count];

        *(v25 + 34) = v30;
        *(v25 + 42) = 2080;
        *(v25 + 44) = sub_1E3270FC8(0, 0xE000000000000000, v45);
        _os_log_impl(&dword_1E323F000, v22, v23, "EVENT_MONITOR::[%{public}s] new automatic context created for events [%ld %s] \n\nview models [%ld %s]", v25, 0x34u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_51_2();
        OUTLINED_FUNCTION_6_0();

        (*(v8 + 8))(v12, v41);
      }

      else
      {

        (*(v8 + 8))(v12, v6);
      }

      sub_1E3B07864();
      v45[3] = v42;
      v45[4] = &off_1F5D66318;
      v45[0] = v43;
      v38 = OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_documentEventIterable;
      swift_beginAccess();

      sub_1E3B0D4BC(v45, &v21[v38], &qword_1ECF32F60, &qword_1E42BA1D8);
      swift_endAccess();
      sub_1E3B04504();

      goto LABEL_11;
    }
  }

  sub_1E324FBDC();
  OUTLINED_FUNCTION_2_26();
  v31(v0);
  v32 = v0;
  v33 = sub_1E41FFC94();
  v34 = sub_1E4206814();

  if (os_log_type_enabled(v33, v34))
  {
    OUTLINED_FUNCTION_6_21();
    v35 = OUTLINED_FUNCTION_11_16();
    v45[0] = v35;
    *v1 = 136446210;
    v36 = OUTLINED_FUNCTION_17_70(OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_controllerName);
    *(v1 + 4) = sub_1E3270FC8(v36, v37, v45);
    _os_log_impl(&dword_1E323F000, v33, v34, "EVENT_MONITOR::[%{public}s] Bailing coz there are no view models.", v1, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v35);
    OUTLINED_FUNCTION_55();
    OUTLINED_FUNCTION_21_0();
  }

  (*(v8 + 8))(v0, v6);
LABEL_11:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3B07864()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v178 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  v179 = v7 - v8;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_47_2();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v158 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v177 = &v158 - v14;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v15);
  v170 = &v158 - v16;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_25_3();
  v176 = v18;
  v171 = sub_1E41FE2B4();
  OUTLINED_FUNCTION_0_10();
  v173 = v19;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5();
  v181 = v22 - v21;
  OUTLINED_FUNCTION_13_23();
  OUTLINED_FUNCTION_24_46(&v0[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_viewModel]);
  Strong = swift_weakLoadStrong();
  v180 = v0;
  if (Strong)
  {
    v24 = OUTLINED_FUNCTION_56_20();
    v25 = type metadata accessor for TemplateViewModel(v24);
    v26 = swift_dynamicCastClass();
    if (v26)
    {
      v27 = v26;
      sub_1E325F6F0(v190, &qword_1ECF2FB80, &qword_1E42AF500);
      v190[0] = v27;
      v191 = v25;
      v28 = &off_1F5D98370;
      goto LABEL_8;
    }

    v0 = v180;
  }

  if (!swift_weakLoadStrong())
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_56_20();
  v29 = type metadata accessor for CollectionViewModel();
  v30 = swift_dynamicCastClass();
  if (!v30)
  {

    goto LABEL_9;
  }

  v31 = v30;
  sub_1E325F6F0(v190, &qword_1ECF2FB80, &qword_1E42AF500);
  v190[0] = v31;
  v191 = v29;
  v28 = &off_1F5D96718;
LABEL_8:
  v192 = v28;
LABEL_9:
  v0 = v180;
LABEL_10:
  if (v3)
  {
    if (v3 != 1)
    {

      goto LABEL_17;
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_114();
  }

  v32 = sub_1E42079A4();

  if ((v32 & 1) == 0)
  {
    v33 = 1;
    v35 = v178;
    v34 = v179;
    goto LABEL_102;
  }

LABEL_17:
  v36 = *&v0[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_updateEventStore];
  v37 = [v36 events];
  sub_1E3280A90(0, &qword_1EE23AFD8, off_1E8728210);
  v38 = sub_1E42062B4();

  v39 = sub_1E32AE9B0(v38);

  v175 = v5;
  if (!v39)
  {
    sub_1E324FBDC();
    OUTLINED_FUNCTION_21_8();
    v35 = v178;
    v92(v1);
    v93 = v0;
    v94 = sub_1E41FFC94();
    v95 = sub_1E4206814();

    if (OUTLINED_FUNCTION_67_5())
    {
      OUTLINED_FUNCTION_6_21();
      v96 = OUTLINED_FUNCTION_36_6();
      v189[0] = v96;
      LODWORD(selRef_dismissPresentedViewController) = 136446210;
      *(&selRef_dismissPresentedViewController + 4) = OUTLINED_FUNCTION_48_27(&v93[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_controllerName]);
      _os_log_impl(&dword_1E323F000, v94, v95, "EVENT_MONITOR::%{public}s no event in the store to remove.", &selRef_dismissPresentedViewController, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v96);
      v5 = v175;
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_65_0();
    }

    (*(v5 + 8))(v1, v35);
    v33 = 0;
    v34 = v179;
    goto LABEL_101;
  }

  v40 = [v36 events];
  v41 = sub_1E42062B4();

  v42 = sub_1E3B0C37C(v41);
  v43 = *&v0[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_eventEligibleViewModels];
  v44 = &selRef_collectionViewCanBecomeFocused_;
  if (!v43)
  {
LABEL_61:
    sub_1E3743538(v190, &v186, &qword_1ECF2FB80, &qword_1E42AF500);
    if (!*(&v187 + 1))
    {

      sub_1E325F6F0(&v186, &qword_1ECF2FB80, &qword_1E42AF500);
LABEL_70:
      sub_1E324FBDC();
      OUTLINED_FUNCTION_21_8();
      v107 = v178;
      v108(v12);
      v109 = v180;
      v110 = sub_1E41FFC94();
      v111 = sub_1E4206814();

      if (os_log_type_enabled(v110, v111))
      {
        OUTLINED_FUNCTION_6_21();
        v112 = OUTLINED_FUNCTION_36_6();
        v189[0] = v112;
        LODWORD(selRef_collectionViewCanBecomeFocused_) = 136446210;
        *(&selRef_collectionViewCanBecomeFocused_ + 4) = OUTLINED_FUNCTION_48_27(&v109[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_controllerName]);
        OUTLINED_FUNCTION_59_13();
        _os_log_impl(v113, v114, v115, v116, v117, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v112);
        v5 = v175;
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_65_0();
      }

      (*(v5 + 8))(v12, v107);
      v33 = 1;
      v34 = v179;
      v0 = v180;
      v35 = v107;
      goto LABEL_102;
    }

    v174 = v42;
    v172 = v36;
    v97 = OUTLINED_FUNCTION_64_14(&v186);
    v34 = v179;
    if (!v97)
    {
      __swift_destroy_boxed_opaque_existential_1(v189);
      goto LABEL_69;
    }

    v98 = v97;
    if (sub_1E374CEE0(v97))
    {
      __swift_destroy_boxed_opaque_existential_1(v189);

LABEL_69:

      goto LABEL_70;
    }

    v118 = sub_1E32AE9B0(v174);
    v35 = v178;
    v176 = v118;
    if (v118)
    {
      if (v176 < 1)
      {
LABEL_111:
        __break(1u);
        return;
      }

      v120 = 0;
      v166 = &v180[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_controllerName];
      v173 = v174 & 0xC000000000000001;
      v170 = (v98 & 0xC000000000000001);
      v171 = v174 + 32;
      if (v98 >= 0)
      {
        v121 = v98 & 0xFFFFFFFFFFFFFF8;
      }

      else
      {
        v121 = v98;
      }

      v181 = v98 + 56;
      v168 = (v5 + 16);
      v169 = v121;
      v167 = v5 + 8;
      *&v119 = 136446210;
      v165 = v119;
      do
      {
        if (v173)
        {
          v122 = MEMORY[0x1E6911E60](v120, v174);
        }

        else
        {
          v122 = *(v171 + 8 * v120);
        }

        v123 = v122;
        v124 = [v122 v44[448]];
        v125 = [v124 type];

        if (v125)
        {
          [v172 removeEvent_];
        }

        else
        {
          v126 = [v123 v44[448]];
          v127 = v126;
          if (v170)
          {
            v128 = v126;
            v129 = sub_1E42073D4();

            if (v129)
            {
LABEL_92:
              v135 = sub_1E324FBDC();
              v136 = v177;
              (*v168)(v177, v135, v35);
              v137 = v180;
              v138 = sub_1E41FFC94();
              v139 = sub_1E4206814();

              if (OUTLINED_FUNCTION_67_5())
              {
                OUTLINED_FUNCTION_6_21();
                v140 = OUTLINED_FUNCTION_36_6();
                *&v186 = v140;
                *v137 = v165;
                *(v137 + 4) = sub_1E3270FC8(*v166, *(v166 + 1), &v186);
                _os_log_impl(&dword_1E323F000, v138, v139, "EVENT_MONITOR::%{public}s document received foreground event while dirty;not removing it", v137, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v140);
                OUTLINED_FUNCTION_21_0();
                OUTLINED_FUNCTION_65_0();

                OUTLINED_FUNCTION_62_14();
                v142 = v177;
              }

              else
              {

                OUTLINED_FUNCTION_62_14();
                v142 = v136;
              }

              v141(v142, v35);
              v34 = v179;
              v44 = &selRef_collectionViewCanBecomeFocused_;
              goto LABEL_98;
            }
          }

          else
          {
            if (*(v98 + 16))
            {
              sub_1E3280A90(0, &qword_1EE23AEF0, off_1E8728218);
              v130 = sub_1E4206F54();
              v131 = ~(-1 << *(v98 + 32));
              while (1)
              {
                v132 = v130 & v131;
                if (((*(v181 + (((v130 & v131) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v130 & v131)) & 1) == 0)
                {
                  break;
                }

                v133 = *(*(v98 + 48) + 8 * v132);
                v134 = sub_1E4206F64();

                v130 = v132 + 1;
                if (v134)
                {

                  v35 = v178;
                  v5 = v175;
                  goto LABEL_92;
                }
              }
            }

            v35 = v178;
            v5 = v175;
            v44 = &selRef_collectionViewCanBecomeFocused_;
          }

          [v172 removeEvent_];

          v34 = v179;
        }

LABEL_98:
        ++v120;
      }

      while (v120 != v176);
    }

    __swift_destroy_boxed_opaque_existential_1(v189);
LABEL_100:
    v33 = 0;
LABEL_101:
    v0 = v180;
    goto LABEL_102;
  }

  v45 = v43;
  if ([v45 count] < 1)
  {

    goto LABEL_61;
  }

  v168 = sub_1E32AE9B0(v42);
  if (v168)
  {
    *&v165 = v45;
    v172 = v36;
    v47 = 0;
    v161 = &v180[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_controllerName];
    v169 = v42 & 0xC000000000000001;
    v174 = v42;
    v163 = v42 + 32;
    v164 = v42 & 0xFFFFFFFFFFFFFF8;
    v162 = v173 + 8;
    v160 = "gain on next trigger.";
    v166 = (v5 + 8);
    v167 = v5 + 16;
    *&v46 = 136446210;
    v158 = v46;
    *&v46 = 136446466;
    v159 = v46;
    v35 = v178;
    v34 = v179;
    v48 = v176;
    while (1)
    {
      if (v169)
      {
        v49 = MEMORY[0x1E6911E60](v47, v174);
      }

      else
      {
        if (v47 >= *(v164 + 16))
        {
          goto LABEL_110;
        }

        v49 = *(v163 + 8 * v47);
      }

      v50 = __OFADD__(v47, 1);
      v51 = v47 + 1;
      if (v50)
      {
        break;
      }

      v173 = v51;
      v52 = v49;
      v53 = [v49 v44[448]];
      v54 = [v53 type];

      if (v54)
      {
        goto LABEL_28;
      }

      v177 = v52;
      sub_1E4206784();
      while (1)
      {
        sub_1E41FE2A4();
        v55 = v185;
        if (!v185)
        {
          break;
        }

        sub_1E329504C(&v184, v183);
        sub_1E328438C(v183, v182);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FB78, &qword_1E42AF4F8);
        if (!swift_dynamicCast())
        {

          __swift_destroy_boxed_opaque_existential_1(v183);
          v99 = OUTLINED_FUNCTION_60_14();
          v100(v99);
          OUTLINED_FUNCTION_82();
          sub_1E325F6F0(v101, v102, v103);
          v186 = 0u;
          v187 = 0u;
          v188 = 0;
          OUTLINED_FUNCTION_82();
          goto LABEL_108;
        }

        v56 = OUTLINED_FUNCTION_64_14(&v186);
        if (v56)
        {
          v57 = v56;
          v58 = [v177 v44[448]];
          v59 = v58;
          if ((v57 & 0xC000000000000001) != 0)
          {
            v60 = v58;
            v61 = sub_1E42073D4();

            if (v61)
            {
LABEL_43:
              sub_1E328438C(v183, &v186);
              type metadata accessor for ViewModel();
              if (swift_dynamicCast())
              {
                v67 = *(v182[0] + 98);
              }

              else
              {
                v67 = 263;
              }

              LOWORD(v186) = v67;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF327A0, &qword_1E42BA320);
              v68 = sub_1E4205F84();
              v70 = v69;
              *&v186 = 0;
              *(&v186 + 1) = 0xE000000000000000;
              sub_1E42074B4();
              MEMORY[0x1E69109E0](*v161, v161[1]);
              MEMORY[0x1E69109E0](0x6F6D207765697620, 0xED0000203A6C6564);
              MEMORY[0x1E69109E0](v68, v70);

              MEMORY[0x1E69109E0](0xD000000000000027, v160 | 0x8000000000000000);
              v71 = v186;
              sub_1E324FBDC();
              OUTLINED_FUNCTION_62_14();
              v72(v48);

              v73 = sub_1E41FFC94();
              v74 = sub_1E4206814();

              if (OUTLINED_FUNCTION_67_5())
              {
                v75 = OUTLINED_FUNCTION_6_21();
                v76 = OUTLINED_FUNCTION_100();
                *&v186 = v76;
                *v75 = v158;
                v77 = sub_1E3270FC8(v71, *(&v71 + 1), &v186);

                *(v75 + 4) = v77;
                v44 = &selRef_collectionViewCanBecomeFocused_;
                _os_log_impl(&dword_1E323F000, v73, v74, "EVENT_MONITOR::%{public}s", v75, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v76);
                OUTLINED_FUNCTION_6_0();
                OUTLINED_FUNCTION_6_0();
              }

              else
              {
              }

              (*v166)(v48, v35);
              __swift_destroy_boxed_opaque_existential_1(v189);
              __swift_destroy_boxed_opaque_existential_1(v183);
              break;
            }
          }

          else
          {
            if (*(v57 + 16))
            {
              sub_1E3280A90(0, &qword_1EE23AEF0, off_1E8728218);
              v62 = sub_1E4206F54();
              v63 = ~(-1 << *(v57 + 32));
              while (1)
              {
                v64 = v62 & v63;
                if (((*(v57 + 56 + (((v62 & v63) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v62 & v63)) & 1) == 0)
                {
                  break;
                }

                v65 = *(*(v57 + 48) + 8 * v64);
                v66 = sub_1E4206F64();

                v62 = v64 + 1;
                if (v66)
                {

                  v35 = v178;
                  v44 = &selRef_collectionViewCanBecomeFocused_;
                  v48 = v176;
                  goto LABEL_43;
                }
              }
            }

            v35 = v178;
            v44 = &selRef_collectionViewCanBecomeFocused_;
            v48 = v176;
          }
        }

        __swift_destroy_boxed_opaque_existential_1(v189);
        __swift_destroy_boxed_opaque_existential_1(v183);
      }

      v78 = OUTLINED_FUNCTION_60_14();
      v79(v78);
      v80 = v35;
      v81 = v170;
      v82 = sub_1E328692C(v55 != 0);
      v84 = v83;
      sub_1E324FBDC();
      OUTLINED_FUNCTION_62_14();
      v85(v81);
      v86 = v180;

      v87 = sub_1E41FFC94();
      v88 = sub_1E4206814();

      if (os_log_type_enabled(v87, v88))
      {
        v89 = OUTLINED_FUNCTION_49_0();
        v189[0] = OUTLINED_FUNCTION_72_0();
        *v89 = v159;
        v90 = OUTLINED_FUNCTION_48_27(v161);
        OUTLINED_FUNCTION_41_33(v90);
        v91 = sub_1E3270FC8(v82, v84, v189);

        *(v89 + 14) = v91;
        _os_log_impl(&dword_1E323F000, v87, v88, "EVENT_MONITOR::%{public}s has any view model for foreground event: %{public}s", v89, 0x16u);
        swift_arrayDestroy();
        v44 = &selRef_collectionViewCanBecomeFocused_;
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_51_2();
      }

      else
      {
      }

      (*v166)(v81, v80);
      v34 = v179;
      v35 = v80;
      v48 = v176;
      v52 = v177;
      if (!v55)
      {
LABEL_28:
        [v172 removeEvent_];
      }

      v47 = v173;
      v5 = v175;
      if (v173 == v168)
      {

        goto LABEL_100;
      }
    }

    __break(1u);
LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

  v33 = 0;
  v34 = v179;
  v0 = v180;
  v35 = v178;
LABEL_102:
  sub_1E324FBDC();
  OUTLINED_FUNCTION_21_8();
  v143(v34);
  v144 = v0;
  v145 = sub_1E41FFC94();
  v146 = sub_1E4206814();

  if (os_log_type_enabled(v145, v146))
  {
    v147 = OUTLINED_FUNCTION_49_0();
    v189[0] = OUTLINED_FUNCTION_72_0();
    *v147 = 136446466;
    v148 = OUTLINED_FUNCTION_17_70(OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_controllerName);
    *(v147 + 4) = sub_1E3270FC8(v148, v149, v189);
    *(v147 + 12) = 2082;
    v150 = sub_1E328692C(v33);
    v152 = sub_1E3270FC8(v150, v151, v189);

    *(v147 + 14) = v152;
    OUTLINED_FUNCTION_189();
    _os_log_impl(v153, v154, v155, v156, v157, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_21_0();

    (*(v5 + 8))(v179, v178);
  }

  else
  {

    (*(v5 + 8))(v34, v35);
  }

  if (v33)
  {
    [*&v144[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_updateEventStore] removeAllEvents];
  }

  v105 = &qword_1ECF2FB80;
  v106 = &qword_1E42AF500;
  v104 = v190;
LABEL_108:
  sub_1E325F6F0(v104, v105, v106);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3B089FC(uint64_t a1)
{
  sub_1E328438C(a1, v24);
  v3 = type metadata accessor for TemplateViewModel(0);
  if (!OUTLINED_FUNCTION_32_45(v3, v4, v5, v3, v6))
  {
    sub_1E328438C(a1, v24);
    v11 = type metadata accessor for CollectionViewModel();
    if (OUTLINED_FUNCTION_32_45(v11, v12, v13, v11, v14))
    {
      OUTLINED_FUNCTION_37_34();
      v8 = (*(v15 + 1112))();
      if (v16)
      {
        goto LABEL_3;
      }
    }

    else
    {
      sub_1E328438C(a1, v24);
      v17 = type metadata accessor for ViewModel();
      if ((OUTLINED_FUNCTION_32_45(v17, v18, v19, v17, v20) & 1) == 0)
      {
        return 0;
      }

      OUTLINED_FUNCTION_37_34();
      v8 = (*(v21 + 264))();
      if (v22)
      {
        goto LABEL_3;
      }
    }

LABEL_6:
    if (*(v1 + 24))
    {
      v10 = *(v1 + 16);

      goto LABEL_8;
    }

    return 0;
  }

  OUTLINED_FUNCTION_37_34();
  v8 = (*(v7 + 1000))();
  if (!v9)
  {
    goto LABEL_6;
  }

LABEL_3:
  v10 = v8;
LABEL_8:

  return v10;
}

void sub_1E3B08B68()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  v18 = v17 - v16;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32F80, &qword_1E42BA2D0);
  v20 = OUTLINED_FUNCTION_17_2(v19);
  MEMORY[0x1EEE9AC00](v20);
  v22 = v51 - v21;
  OUTLINED_FUNCTION_5_0(v9 + 16, &v56);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v24 = Strong;
    OUTLINED_FUNCTION_5_0(v7 + 16, &v55);
    if (swift_weakLoadStrong())
    {
      OUTLINED_FUNCTION_24_46(v5 + 16);
      if (!swift_weakLoadStrong())
      {

LABEL_25:

        goto LABEL_26;
      }

      if (v11)
      {
        OUTLINED_FUNCTION_5_0(&v24[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_viewModel], &v54);
        if (swift_weakLoadStrong())
        {
          v25 = [v3 descriptor];
          v26 = [v25 type];

          if (!v26)
          {
            v27 = [v3 descriptor];
            objc_opt_self();
            v28 = swift_dynamicCastObjCClass();
            if (v28)
            {
              v29 = [v28 delayInSeconds];
              v30 = sub_1E3B038A8();
              v31 = sub_1E3928950(v29);
              if (v32)
              {
                v33 = v31;
                LODWORD(v52) = swift_isUniquelyReferenced_nonNull_native();
                v53[0] = v30;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32F90, &unk_1E42BA2E0);
                sub_1E4207644();
                v30 = v53[0];
                v52 = *(v53[0] + 56);
                v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32F88, &qword_1E42BA2D8);
                OUTLINED_FUNCTION_2();
                sub_1E3741EA0(&v52[*(v35 + 72) * v33], v22, &qword_1ECF32F88, &qword_1E42BA2D8);
                sub_1E4207664();
                v36 = v22;
                v37 = 0;
                v38 = v34;
              }

              else
              {
                v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32F88, &qword_1E42BA2D8);
                v36 = v22;
                v37 = 1;
              }

              __swift_storeEnumTagSinglePayload(v36, v37, 1, v38);

              sub_1E325F6F0(v22, &qword_1ECF32F80, &qword_1E42BA2D0);
              *&v24[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController____lazy_storage___foregroundTTLExpirationMap] = v30;
            }

            else
            {
            }
          }

          OUTLINED_FUNCTION_5_0(v1 + 16, v53);
          if (swift_weakLoadStrong())
          {
          }

          sub_1E3B090A0();

          goto LABEL_24;
        }
      }

      v39 = [v3 descriptor];
      v40 = [v39 type];

      if (v40)
      {

LABEL_24:

        goto LABEL_25;
      }

      sub_1E324FBDC();
      OUTLINED_FUNCTION_0_11();
      v41(v18);
      v42 = v24;
      v43 = sub_1E41FFC94();
      v44 = sub_1E4206814();

      if (os_log_type_enabled(v43, v44))
      {
        v51[0] = "on next trigger.";
        v45 = OUTLINED_FUNCTION_49_0();
        v46 = OUTLINED_FUNCTION_72_0();
        v51[1] = v46;
        *v45 = 136446466;
        v47 = &v42[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_controllerName];
        v52 = v42;
        v53[0] = v46;
        v48 = *&v42[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_controllerName];
        v49 = *(v47 + 1);

        v50 = sub_1E3270FC8(v48, v49, v53);

        *(v45 + 4) = v50;
        *(v45 + 12) = 2082;
        *(v45 + 14) = sub_1E3270FC8(0xD000000000000045, v51[0] | 0x8000000000000000, v53);
        _os_log_impl(&dword_1E323F000, v43, v44, "EVENT_MONITOR::[%{public}s] performNextUpdate %{public}s", v45, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_55();
      }

      else
      {
      }

      (*(v14 + 8))(v18, v12);
    }

    else
    {
    }
  }

LABEL_26:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3B090A0()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_14();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v70 - v13;
  if (v3)
  {
    OUTLINED_FUNCTION_25_2();

    sub_1E3B0A67C();
  }

  else
  {
    v16 = sub_1E32AE9B0(MEMORY[0x1E69E7CC0]);
    v78 = v1;
    if (v16)
    {
      v17 = sub_1E3A60C9C(MEMORY[0x1E69E7CC0]);
    }

    else
    {
      v17 = MEMORY[0x1E69E7CD0];
    }

    v18 = sub_1E3B0BB08(v7, 0);
    v81 = v5;
    v19 = type metadata accessor for ViewModel();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FB78, &qword_1E42AF4F8);
    if (swift_dynamicCast())
    {
      sub_1E3251BE8(v79, v82);
      v20 = sub_1E3CB0C34(v82);
      if (v20)
      {
        v21 = v20;
        if (sub_1E374CEE0(v20))
        {
          __swift_destroy_boxed_opaque_existential_1(v82);
        }

        else if (v0[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_isOptimizedTTLRefreshEnabled] == 1)
        {
          if (sub_1E32AE9B0(MEMORY[0x1E69E7CC0]))
          {
            v22 = sub_1E3A60C9C(MEMORY[0x1E69E7CC0]);
          }

          else
          {
            v22 = MEMORY[0x1E69E7CD0];
          }

          *&v79[0] = v22;
          sub_1E3B0A070(v21, v0, v79);

          sub_1E3B0BFB0(v25, v17);
          v27 = v26;
          __swift_destroy_boxed_opaque_existential_1(v82);

          v17 = v27;
        }

        else
        {

          sub_1E3B0BFB0(v21, v17);
          v24 = v23;
          __swift_destroy_boxed_opaque_existential_1(v82);

          v17 = v24;
        }
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1(v82);
      }
    }

    else
    {
      v80 = 0;
      memset(v79, 0, sizeof(v79));
      sub_1E325F6F0(v79, &qword_1ECF2FB80, &qword_1E42AF500);
    }

    [v18 copy];
    sub_1E4207264();
    swift_unknownObjectRelease();
    sub_1E3280A90(0, &qword_1ECF24E80, 0x1E695DFB8);
    v28 = OUTLINED_FUNCTION_21_4();
    v29 = *&v79[0];
    if (!v28)
    {
      v29 = 0;
    }

    v30 = *&v0[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_eventEligibleViewModels];
    *&v0[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_eventEligibleViewModels] = v29;

    v32 = sub_1E374CEE0(v31);

    if (v32)
    {
    }

    else
    {
      v82[3] = v19;
      v82[0] = v5;

      v72 = sub_1E3B089FC(v82);
      v34 = v33;
      __swift_destroy_boxed_opaque_existential_1(v82);
      v35 = sub_1E324FBDC();
      v36 = *(v10 + 16);
      v76 = v35;
      v73 = v36;
      (v36)(v14);
      v37 = v0;

      v38 = sub_1E41FFC94();
      v39 = sub_1E4206814();

      v77 = v37;

      v40 = os_log_type_enabled(v38, v39);
      v74 = v10;
      v75 = v18;
      if (v40)
      {
        v41 = OUTLINED_FUNCTION_100();
        v71 = OUTLINED_FUNCTION_164_1();
        v82[0] = v71;
        *v41 = 136446722;
        v42 = OUTLINED_FUNCTION_46_27(&v77[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_controllerName]);
        OUTLINED_FUNCTION_121_0(v42);
        sub_1E3280A90(0, &qword_1EE23AEF0, off_1E8728218);
        sub_1E3A60E60();

        v43 = sub_1E4206634();
        v45 = v44;

        v46 = sub_1E3270FC8(v43, v45, v82);

        *(v41 + 14) = v46;
        *(v41 + 22) = 2082;
        v47 = sub_1E3270FC8(v72, v34, v82);

        *(v41 + 24) = v47;
        v10 = v74;
        OUTLINED_FUNCTION_189();
        _os_log_impl(v48, v49, v50, v51, v52, 0x20u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_21_0();
      }

      else
      {
      }

      v53 = *(v10 + 8);
      v53(v14, v8);
      v54 = v78;
      v73(v78, v76, v8);
      v55 = v77;
      v56 = sub_1E41FFC94();
      v57 = sub_1E4206814();

      if (os_log_type_enabled(v56, v57))
      {
        v58 = OUTLINED_FUNCTION_49_0();
        v77 = v53;
        v59 = v58;
        v82[0] = OUTLINED_FUNCTION_72_0();
        *v59 = 136446466;
        *(v59 + 4) = OUTLINED_FUNCTION_46_27(&v55[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_controllerName]);
        *(v59 + 12) = 2082;
        sub_1E3B038A8();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32F88, &qword_1E42BA2D8);
        v60 = sub_1E4205C74();
        v62 = v61;

        v63 = sub_1E3270FC8(v60, v62, v82);

        *(v59 + 14) = v63;
        _os_log_impl(&dword_1E323F000, v56, v57, "EVENT_MONITOR::[%{public}s] fetched refresh descriptors: [%{public}s]", v59, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_21_0();

        (v77)(v78, v8);
      }

      else
      {

        v53(v54, v8);
      }

      v64 = v75;
      v65 = *&v55[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_registrationHandler];
      if (v65)
      {

        v66 = OUTLINED_FUNCTION_32_0();
        sub_1E34AF604(v66, v67);
        v65(v55, v17, 1);
        v68 = OUTLINED_FUNCTION_32_0();
        sub_1E34AF594(v68, v69);
        swift_bridgeObjectRelease_n();
      }

      else
      {
      }
    }

    OUTLINED_FUNCTION_25_2();
  }
}

void sub_1E3B097B4()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32F80, &qword_1E42BA2D0);
  v14 = OUTLINED_FUNCTION_17_2(v13);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v52 - v15;
  OUTLINED_FUNCTION_5_0(v3 + 16, &v55);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    if (v5)
    {
      OUTLINED_FUNCTION_5_0(Strong + OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_viewModel, &v53);
      v19 = swift_weakLoadStrong();
      if (v19)
      {
        v20 = v19;
        v21 = [v1 descriptor];
        v22 = [v21 type];

        if (!v22)
        {
          v23 = [v1 descriptor];
          objc_opt_self();
          v24 = swift_dynamicCastObjCClass();
          if (v24)
          {
            v25 = [v24 delayInSeconds];
            v26 = sub_1E3B038A8();
            v27 = sub_1E3928950(v25);
            if (v28)
            {
              v29 = v27;
              swift_isUniquelyReferenced_nonNull_native();
              v54 = v26;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32F90, &unk_1E42BA2E0);
              sub_1E4207644();
              v26 = v54;
              v30 = *(v54 + 56);
              v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32F88, &qword_1E42BA2D8);
              OUTLINED_FUNCTION_2();
              sub_1E3741EA0(v30 + *(v32 + 72) * v29, v16, &qword_1ECF32F88, &qword_1E42BA2D8);
              sub_1E4207664();
              v33 = OUTLINED_FUNCTION_40_36();
              v36 = v31;
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32F88, &qword_1E42BA2D8);
              v33 = OUTLINED_FUNCTION_61_12();
            }

            __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);

            sub_1E325F6F0(v16, &qword_1ECF32F80, &qword_1E42BA2D0);
            *&v18[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController____lazy_storage___foregroundTTLExpirationMap] = v26;
          }

          else
          {
          }
        }

        sub_1E3B04294(v20, 0);

        goto LABEL_17;
      }
    }

    v37 = [v1 descriptor];
    v38 = [v37 type];

    if (v38)
    {
LABEL_17:

      goto LABEL_18;
    }

    sub_1E324FBDC();
    OUTLINED_FUNCTION_0_11();
    v39(v12);
    v40 = v18;
    v41 = sub_1E41FFC94();
    v42 = sub_1E4206814();

    if (os_log_type_enabled(v41, v42))
    {
      v52 = "orRefreshEvents";
      v43 = OUTLINED_FUNCTION_49_0();
      v54 = OUTLINED_FUNCTION_72_0();
      *v43 = 136446466;
      v44 = *&v40[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_controllerName];
      v45 = *&v40[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_controllerName + 8];

      v46 = sub_1E3270FC8(v44, v45, &v54);

      *(v43 + 4) = v46;
      *(v43 + 12) = 2082;
      *(v43 + 14) = sub_1E3270FC8(0xD000000000000050, v52 | 0x8000000000000000, &v54);
      OUTLINED_FUNCTION_59_13();
      _os_log_impl(v47, v48, v49, v50, v51, 0x16u);
      OUTLINED_FUNCTION_50_24();
      OUTLINED_FUNCTION_55();
      OUTLINED_FUNCTION_65_0();
    }

    else
    {
    }

    (*(v8 + 8))(v12, v6);
  }

LABEL_18:
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3B09C08(uint64_t a1)
{
  if (a1)
  {
    v2 = a1;
    if ((a1 & 0xC000000000000001) != 0)
    {

      if (sub_1E4207384())
      {
        goto LABEL_4;
      }
    }

    else
    {
      v4 = *(a1 + 16);

      if (v4)
      {
LABEL_4:
        if (*(v1 + OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_isOptimizedTTLRefreshEnabled) == 1)
        {
          if (sub_1E32AE9B0(MEMORY[0x1E69E7CC0]))
          {
            v3 = sub_1E3A60C9C(MEMORY[0x1E69E7CC0]);
          }

          else
          {
            v3 = MEMORY[0x1E69E7CD0];
          }

          v7 = v3;
          sub_1E3B0A070(v2, v1, &v7);

          return v7;
        }

        return v2;
      }
    }
  }

  if (!(MEMORY[0x1E69E7CC0] >> 62) || !sub_1E4207384())
  {
    return MEMORY[0x1E69E7CD0];
  }

  v6 = MEMORY[0x1E69E7CC0];

  return sub_1E3A60C9C(v6);
}

void sub_1E3B09D40(__n128 a1, uint64_t a2, void *a3, void *a4, void **a5)
{
  v28 = a5;
  v37 = a4;
  v29 = a3;
  v5 = sub_1E41FE2B4();
  v26 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E4206784();
  v8 = sub_1E3B0D644(&qword_1EE28A478, MEMORY[0x1E6968EB0]);
  v9 = &qword_1E42AF4F8;
  v27 = v5;
  while (1)
  {
    sub_1E4207174();
    if (!v36)
    {
      break;
    }

    sub_1E329504C(&v35, v34);
    sub_1E328438C(v34, v32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FB78, v9);
    if (swift_dynamicCast())
    {
      sub_1E3251BE8(v30, v33);
      v10 = sub_1E3CB0C34(v33);
      v11 = sub_1E3B089FC(v34);
      v13 = v11;
      v14 = v12;
      if (v10)
      {

        v15 = v9;
        v16 = v8;
        v17 = v7;
        v18 = v29;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v30[0] = *v18;
        sub_1E3B0D508(v10, v13, v14, isUniquelyReferenced_nonNull_native);
        *v18 = *&v30[0];
        v7 = v17;
        v8 = v16;
        v9 = v15;
      }

      else
      {
        sub_1E3B0D3C4(v11, v12);
      }

      v20 = sub_1E3B09C08(v10);

      v21 = v28;
      v22 = *v28;

      sub_1E3B0BFB0(v20, v22);
      v24 = v23;
      __swift_destroy_boxed_opaque_existential_1(v33);
      *v21 = v24;

      v5 = v27;
    }

    else
    {
      v31 = 0;
      memset(v30, 0, sizeof(v30));
      sub_1E325F6F0(v30, &qword_1ECF2FB80, &qword_1E42AF500);
    }

    __swift_destroy_boxed_opaque_existential_1(v34);
  }

  (*(v26 + 8))(v7, v5);
}

void sub_1E3B0A070(uint64_t a1, char *a2, uint64_t a3)
{
  v4 = v3;
  v73 = a3;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32F88, &qword_1E42BA2D8);
  OUTLINED_FUNCTION_0_10();
  v64 = v7;
  MEMORY[0x1EEE9AC00](v8);
  v67 = &v61 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32F80, &qword_1E42BA2D0);
  v11 = OUTLINED_FUNCTION_17_2(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4_6();
  v63 = v12 - v13;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_25_3();
  v69 = v15;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1E4207344();
    sub_1E3280A90(0, &qword_1EE23AEF0, off_1E8728218);
    sub_1E3A60E60();
    sub_1E4206664();
    a1 = v76;
    v16 = v77;
    v17 = v78;
    v18 = v79;
    v19 = v80;
  }

  else
  {
    v20 = -1 << *(a1 + 32);
    v16 = a1 + 56;
    v17 = ~v20;
    v21 = -v20;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v19 = v22 & *(a1 + 56);

    v18 = 0;
  }

  v65 = v17;
  v66 = a1;
  v68 = v4;
  v72 = a2;
  if (a1 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v23 = v18;
    v24 = v19;
    v25 = v18;
    if (!v19)
    {
      break;
    }

LABEL_12:
    v74 = (v24 - 1) & v24;
    v26 = *(*(a1 + 48) + ((v25 << 9) | (8 * __clz(__rbit64(v24)))));
    if (!v26)
    {
LABEL_37:
      sub_1E34AF4DC(a1);

      return;
    }

    while (1)
    {
      if ([v26 type] || (objc_opt_self(), OUTLINED_FUNCTION_20_2(), (v30 = swift_dynamicCastObjCClass()) == 0))
      {
        v28 = v26;
        sub_1E3B0C60C(&v81, v28);
        v29 = v81;
      }

      else
      {
        v31 = v30;
        v32 = v26;
        v33 = [v31 delayInSeconds];
        v34 = v71;
        v35 = v69;
        *v69 = v31;
        v36 = v35;
        v70 = v32;
        a2 = v72;
        sub_1E41FE5C4();
        v37 = OUTLINED_FUNCTION_40_36();
        __swift_storeEnumTagSinglePayload(v37, v38, v39, v34);
        v40 = sub_1E3B038A8();
        if (__swift_getEnumTagSinglePayload(v36, 1, v34) == 1)
        {
          sub_1E325F6F0(v36, &qword_1ECF32F80, &qword_1E42BA2D0);
          v41 = sub_1E3928950(v33);
          if (v42)
          {
            v43 = v41;
            swift_isUniquelyReferenced_nonNull_native();
            v81 = v40;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32F90, &unk_1E42BA2E0);
            v34 = v71;
            a2 = v72;
            sub_1E4207644();
            v40 = v81;
            v44 = v63;
            sub_1E3741EA0(v81[7] + *(v64 + 72) * v43, v63, &qword_1ECF32F88, &qword_1E42BA2D8);
            sub_1E4207664();
            v45 = 0;
          }

          else
          {
            v45 = 1;
            v44 = v63;
          }

          a1 = v66;
          __swift_storeEnumTagSinglePayload(v44, v45, 1, v34);
          sub_1E325F6F0(v44, &qword_1ECF32F80, &qword_1E42BA2D0);
          v52 = v70;
        }

        else
        {
          sub_1E3741EA0(v36, v67, &qword_1ECF32F88, &qword_1E42BA2D8);
          swift_isUniquelyReferenced_nonNull_native();
          v81 = v40;
          v62 = v33;
          v46 = sub_1E3928950(v33);
          if (__OFADD__(*(v40 + 16), (v47 & 1) == 0))
          {
            goto LABEL_39;
          }

          v48 = v46;
          v49 = v47;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32F90, &unk_1E42BA2E0);
          if (sub_1E4207644())
          {
            v50 = sub_1E3928950(v62);
            v52 = v70;
            a1 = v66;
            if ((v49 & 1) != (v51 & 1))
            {
              goto LABEL_41;
            }

            v48 = v50;
          }

          else
          {
            v52 = v70;
            a1 = v66;
          }

          v40 = v81;
          v53 = v62;
          if (v49)
          {
            v54 = OUTLINED_FUNCTION_44_33();
            sub_1E3B0D4BC(v54, v55, &qword_1ECF32F88, &qword_1E42BA2D8);
          }

          else
          {
            v81[(v48 >> 6) + 8] |= 1 << v48;
            *(*(v40 + 48) + 8 * v48) = v53;
            v56 = OUTLINED_FUNCTION_44_33();
            sub_1E3741EA0(v56, v57, &qword_1ECF32F88, &qword_1E42BA2D8);
            v58 = *(v40 + 16);
            v59 = __OFADD__(v58, 1);
            v60 = v58 + 1;
            if (v59)
            {
              goto LABEL_40;
            }

            *(v40 + 16) = v60;
          }

          a2 = v72;
        }

        *&a2[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController____lazy_storage___foregroundTTLExpirationMap] = v40;
      }

      v18 = v25;
      v19 = v74;
      if ((a1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      v27 = sub_1E42073C4();
      if (v27)
      {
        v75 = v27;
        sub_1E3280A90(0, &qword_1EE23AEF0, off_1E8728218);
        swift_dynamicCast();
        v26 = v81;
        v25 = v18;
        v74 = v19;
        if (v81)
        {
          continue;
        }
      }

      goto LABEL_37;
    }
  }

  while (1)
  {
    v25 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v25 >= ((v17 + 64) >> 6))
    {
      goto LABEL_37;
    }

    v24 = *(v16 + 8 * v25);
    ++v23;
    if (v24)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  sub_1E4207A74();
  __break(1u);
}

void sub_1E3B0A67C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v89 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_6();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v77 - v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_25_3();
  v85 = v16;
  v17 = sub_1E32AE9B0(MEMORY[0x1E69E7CC0]);
  v86 = v14;
  if (v17)
  {
    v18 = sub_1E3A60C9C(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v18 = MEMORY[0x1E69E7CD0];
  }

  v93 = v18;
  v19 = sub_1E3B0BB08(v5, v3 & 1);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32F98, &qword_1E42BA2F0);
  v92 = sub_1E4205CB4();
  v90 = sub_1E3B038A8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32FA0, &unk_1E42BA2F8);
  sub_1E4205D14();
  v87 = OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController____lazy_storage___foregroundTTLExpirationMap;
  *&v1[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController____lazy_storage___foregroundTTLExpirationMap] = v90;

  if ([v19 count] >= 1)
  {
    v20 = v1;
    sub_1E3B09D40(v21, v19, &v92, v20, &v93);
    [v19 copy];
    sub_1E4207264();
    swift_unknownObjectRelease();
    sub_1E3280A90(0, &qword_1ECF24E80, 0x1E695DFB8);
    v22 = swift_dynamicCast();
    v23 = v91[0];
    if (!v22)
    {
      v23 = 0;
    }

    v24 = *&v20[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_eventEligibleViewModels];
    *&v20[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_eventEligibleViewModels] = v23;

    v18 = v93;
  }

  v26 = sub_1E374CEE0(v25);

  v88 = v19;
  if (!v26)
  {
    v27 = sub_1E324FBDC();
    v28 = *(v89 + 16);
    v29 = v85;
    v81 = v89 + 16;
    v82 = v27;
    v80 = v28;
    (v28)(v85);
    v30 = v1;
    v31 = sub_1E41FFC94();
    v32 = sub_1E4206814();

    v79 = v32;
    v33 = os_log_type_enabled(v31, v32);
    v83 = v11;
    if (v33)
    {
      v34 = OUTLINED_FUNCTION_49_0();
      v78 = OUTLINED_FUNCTION_72_0();
      v91[0] = v78;
      *v34 = 136446466;
      *(v34 + 4) = sub_1E3270FC8(*&v30[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_controllerName], *&v30[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_controllerName + 8], v91);
      *(v34 + 12) = 2080;
      OUTLINED_FUNCTION_24_46(&v92);

      v35 = v6;
      v36 = sub_1E4205C74();
      v38 = v37;
      v39 = v89;

      v40 = sub_1E3270FC8(v36, v38, v91);

      *(v34 + 14) = v40;
      v6 = v35;
      _os_log_impl(&dword_1E323F000, v31, v79, "EVENT_MONITOR::[%{public}s] will register model:descriptors map { %s }", v34, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6_0();
      v19 = v88;
      OUTLINED_FUNCTION_6_0();

      v41 = *(v39 + 8);
      v42 = v85;
    }

    else
    {

      v41 = *(v89 + 8);
      v42 = v29;
    }

    v85 = v41;
    v41(v42, v6);
    v43 = v30;
    v91[0] = sub_1E3B0C198(v44, v19, v43);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C420, &qword_1E429CDD0);
    sub_1E328FCF4(&qword_1EE23B510, &qword_1ECF2C420, &qword_1E429CDD0);
    v84 = sub_1E4205DF4();
    v46 = v45;

    v47 = v86;
    v80(v86, v82, v6);
    v48 = v43;

    v49 = sub_1E41FFC94();
    v50 = sub_1E4206814();

    if (OUTLINED_FUNCTION_51_11())
    {
      v51 = OUTLINED_FUNCTION_100();
      v52 = OUTLINED_FUNCTION_164_1();
      v82 = v6;
      v91[0] = v52;
      *v51 = 136446722;
      *(v51 + 4) = sub_1E3270FC8(*&v48[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_controllerName], *&v48[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_controllerName + 8], v91);
      *(v51 + 12) = 2082;
      sub_1E3280A90(0, &qword_1EE23AEF0, off_1E8728218);
      sub_1E3A60E60();

      v53 = sub_1E4206634();
      v55 = v54;

      v56 = sub_1E3270FC8(v53, v55, v91);

      *(v51 + 14) = v56;
      *(v51 + 22) = 2082;
      v57 = sub_1E3270FC8(v84, v46, v91);

      *(v51 + 24) = v57;
      _os_log_impl(&dword_1E323F000, v49, v50, "EVENT_MONITOR::[%{public}s] registering descriptors for template [%{public}s] for view models: [%{public}s]", v51, 0x20u);
      swift_arrayDestroy();
      v6 = v82;
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();

      v58 = v86;
    }

    else
    {

      v58 = v47;
    }

    v85(v58, v6);
    v59 = *&v48[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_registrationHandler];
    v11 = v83;
    v19 = v88;
    if (v59)
    {

      v60 = OUTLINED_FUNCTION_32_0();
      sub_1E34AF604(v60, v61);
      v59(v48, v18, 0);
      v62 = OUTLINED_FUNCTION_32_0();
      sub_1E34AF594(v62, v63);
    }
  }

  if (*(*&v1[v87] + 16))
  {
    v64 = sub_1E324FBDC();
    (*(v89 + 16))(v11, v64, v6);
    v65 = v1;
    v66 = sub_1E41FFC94();
    v67 = sub_1E4206814();

    if (OUTLINED_FUNCTION_51_11())
    {
      v68 = OUTLINED_FUNCTION_49_0();
      v91[0] = OUTLINED_FUNCTION_72_0();
      *v68 = 136446466;
      v69 = OUTLINED_FUNCTION_17_70(OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_controllerName);
      v71 = sub_1E3270FC8(v69, v70, v91);
      OUTLINED_FUNCTION_41_33(v71);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32F88, &qword_1E42BA2D8);
      v72 = sub_1E4205C74();
      v73 = v11;
      v75 = v74;

      v76 = sub_1E3270FC8(v72, v75, v91);

      *(v68 + 14) = v76;
      _os_log_impl(&dword_1E323F000, v66, v67, "EVENT_MONITOR::[%{public}s] template refresh descriptors: [%{public}s]", v68, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_51_2();

      (*(v89 + 8))(v73, v6);
    }

    else
    {

      (*(v89 + 8))(v11, v6);
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3B0AF24()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v7 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v85 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_47_2();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_25_3();
  v89 = v11;
  v96 = sub_1E41FE2B4();
  OUTLINED_FUNCTION_0_10();
  v84 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v98 = v15 - v14;
  if (sub_1E32AE9B0(MEMORY[0x1E69E7CC0]))
  {
    v16 = sub_1E3A60C9C(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CD0];
  }

  if ((v4 & 1) != 0 || (v17 = *&v2[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_eventEligibleViewModels]) == 0)
  {
    v19 = [objc_allocWithZone(MEMORY[0x1E695DFA0]) init];
    v20 = v19;
  }

  else
  {
    v18 = v17;
    [v18 mutableCopy];
    sub_1E4207264();

    swift_unknownObjectRelease();
    sub_1E3280A90(0, &unk_1ECF24E70, 0x1E695DFA0);
    v19 = swift_dynamicCast();
    v20 = *&v102[0];
  }

  v21 = (*(*v6 + 1040))(v19);
  v91 = v2;
  v100 = v20;
  v86 = v7;
  v83 = v1;
  if (v21)
  {
    v22 = v21;
    v87 = v16;
    v94 = sub_1E32AE9B0(v21);
    v23 = 0;
    v93 = v22 & 0xFFFFFFFFFFFFFF8;
    v92 = v22 + 32;
    v24 = &qword_1ECF2FB78;
    v25 = &qword_1E42AF4F8;
    v90 = v22;
    while (1)
    {
      if (v23 == v94)
      {

        v7 = v86;
        v16 = v87;
        goto LABEL_36;
      }

      OUTLINED_FUNCTION_113_0();
      if (v26)
      {
        v28 = MEMORY[0x1E6911E60](v23, v22);
        v27 = v28;
      }

      else
      {
        if (v23 >= *(v93 + 16))
        {
          goto LABEL_59;
        }

        v27 = *(v92 + 8 * v23);
      }

      if (__OFADD__(v23++, 1))
      {
        break;
      }

      v30 = (*(*v27 + 872))(v28);
      if (v30)
      {
        v31 = v30;
        v95 = v23;
        v32 = sub_1E32AE9B0(v30);
        v33 = 0;
        v34 = v31 & 0xC000000000000001;
        v35 = v31 & 0xFFFFFFFFFFFFFF8;
        v101 = v31;
        while (1)
        {
          if (v32 == v33)
          {

            v2 = v91;
            v20 = v100;
            v22 = v90;
            v23 = v95;
            goto LABEL_33;
          }

          if (v34)
          {
            v36 = MEMORY[0x1E6911E60](v33, v31);
          }

          else
          {
            if (v33 >= *(v35 + 16))
            {
              goto LABEL_57;
            }

            v36 = *(v31 + 8 * v33 + 32);
          }

          if (__OFADD__(v33, 1))
          {
            break;
          }

          *&v102[0] = v36;
          type metadata accessor for ViewModel();

          __swift_instantiateConcreteTypeFromMangledNameV2(v24, v25);
          if (swift_dynamicCast())
          {
            v37 = v35;
            v38 = v34;
            v39 = v25;
            v40 = v24;
            v41 = *(&v106 + 1);
            v42 = v107;
            __swift_project_boxed_opaque_existential_1(&v105, *(&v106 + 1));
            v43 = (*(v42 + 8))(v41, v42);
            if (v43)
            {
              v44 = *(v43 + 16);

              __swift_destroy_boxed_opaque_existential_1(&v105);
              if (v44)
              {
                [v100 addObject_];
              }
            }

            else
            {

              __swift_destroy_boxed_opaque_existential_1(&v105);
            }

            v24 = v40;
            v25 = v39;
            v34 = v38;
            v35 = v37;
            v31 = v101;
          }

          else
          {

            v107 = 0;
            v105 = 0u;
            v106 = 0u;
            sub_1E325F6F0(&v105, &qword_1ECF2FB80, &qword_1E42AF500);
          }

          ++v33;
        }

        __break(1u);
LABEL_57:
        __break(1u);
        break;
      }

LABEL_33:
    }

    __break(1u);
LABEL_59:
    __break(1u);
  }

  else
  {
LABEL_36:
    *&v105 = sub_1E3B038A8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32FA0, &unk_1E42BA2F8);
    sub_1E4205D14();
    *&v2[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController____lazy_storage___foregroundTTLExpirationMap] = v105;

    if ([v20 count] >= 1)
    {
      v45 = v2;
      sub_1E4206784();
      sub_1E3B0D644(&qword_1EE28A478, MEMORY[0x1E6968EB0]);
      while (1)
      {
        sub_1E4207174();
        if (!v110)
        {
          break;
        }

        sub_1E329504C(&v109, v108);
        sub_1E328438C(v108, &v104);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FB78, &qword_1E42AF4F8);
        if (OUTLINED_FUNCTION_21_4())
        {
          v46 = OUTLINED_FUNCTION_64_14(v102);
          sub_1E3B09C08(v46);
          OUTLINED_FUNCTION_76();

          sub_1E3B0BFB0(v45, v16);
          v48 = v47;
          __swift_destroy_boxed_opaque_existential_1(&v105);

          v16 = v48;
        }

        else
        {
          v103 = 0;
          memset(v102, 0, sizeof(v102));
          sub_1E325F6F0(v102, &qword_1ECF2FB80, &qword_1E42AF500);
        }

        __swift_destroy_boxed_opaque_existential_1(v108);
      }

      (*(v84 + 8))(v98, v96);

      [v100 copy];
      sub_1E4207264();
      swift_unknownObjectRelease();
      sub_1E3280A90(0, &qword_1ECF24E80, 0x1E695DFB8);
      v49 = OUTLINED_FUNCTION_21_4();
      v50 = *&v102[0];
      if (!v49)
      {
        v50 = 0;
      }

      v51 = *&v45[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_eventEligibleViewModels];
      *&v45[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_eventEligibleViewModels] = v50;

      v2 = v91;
    }

    v53 = sub_1E374CEE0(v52);

    if (!v53)
    {
      v88 = v16;
      v54 = sub_1E324FBDC();
      v99 = *(v85 + 16);
      v99(v89, v54, v7);
      v55 = v100;
      v56 = v2;
      v57 = v55;
      v58 = sub_1E41FFC94();
      v59 = sub_1E4206814();

      if (os_log_type_enabled(v58, v59))
      {
        v60 = OUTLINED_FUNCTION_100();
        *&v105 = OUTLINED_FUNCTION_72_0();
        *v60 = 136446722;
        *(v60 + 4) = OUTLINED_FUNCTION_48_27(&v56[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_controllerName]);
        *(v60 + 12) = 2082;
        sub_1E3280A90(0, &qword_1EE23AEF0, off_1E8728218);
        v97 = v54;
        sub_1E3A60E60();
        v61 = v56;

        v62 = sub_1E4206634();
        v64 = v63;
        v65 = v61;

        v66 = sub_1E3270FC8(v62, v64, &v105);

        *(v60 + 14) = v66;
        *(v60 + 22) = 2048;
        v67 = [v57 count];

        *(v60 + 24) = v67;
        v54 = v97;

        _os_log_impl(&dword_1E323F000, v58, v59, "EVENT_MONITOR::[%{public}s] registering descriptors for collection [%{public}s] for view models: [%ld]", v60, 0x20u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_65_0();

        v68 = *(v85 + 8);
        v69 = v86;
        v68(v89, v86);
      }

      else
      {

        v65 = v56;
        v68 = *(v85 + 8);
        v68(v89, v7);
        v69 = v7;
      }

      v99(v83, v54, v69);
      v70 = v65;
      v71 = sub_1E41FFC94();
      v72 = sub_1E4206814();

      if (os_log_type_enabled(v71, v72))
      {
        v73 = OUTLINED_FUNCTION_49_0();
        *&v105 = OUTLINED_FUNCTION_72_0();
        *v73 = 136446466;
        v74 = OUTLINED_FUNCTION_48_27(&v70[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_controllerName]);
        OUTLINED_FUNCTION_41_33(v74);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32F88, &qword_1E42BA2D8);
        v75 = sub_1E4205C74();
        v77 = v76;

        v78 = sub_1E3270FC8(v75, v77, &v105);

        *(v73 + 14) = v78;
        _os_log_impl(&dword_1E323F000, v71, v72, "EVENT_MONITOR::[%{public}s] collection refresh descriptors: [%{public}s]", v73, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_65_0();
        OUTLINED_FUNCTION_51_2();

        v79 = v83;
        v80 = v86;
      }

      else
      {

        v79 = v83;
        v80 = v69;
      }

      v68(v79, v80);
      v81 = *&v70[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_registrationHandler];
      if (v81)
      {
        v82 = *&v70[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_registrationHandler + 8];

        sub_1E34AF604(v81, v82);
        v81(v70, v88, 0);

        sub_1E34AF594(v81, v82);
      }
    }

    OUTLINED_FUNCTION_25_2();
  }
}

id sub_1E3B0BB08(uint64_t a1, char a2)
{
  if ((a2 & 1) != 0 || (v4 = *(v2 + OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_eventEligibleViewModels)) == 0)
  {
    v6 = [objc_allocWithZone(MEMORY[0x1E695DFA0]) init];
  }

  else
  {
    v5 = v4;
    [v5 mutableCopy];
    sub_1E4207264();

    swift_unknownObjectRelease();
    sub_1E3280A90(0, &unk_1ECF24E70, 0x1E695DFA0);
    swift_dynamicCast();
    v6 = v29[0];
  }

  v7 = (*(*a1 + 464))([v6 addObject_]);
  if (v7)
  {
    v8 = v7;
    v27 = v6;
    v34 = MEMORY[0x1E69E7CC0];
    result = sub_1E32AE9B0(v7);
    v10 = result;
    v11 = 0;
    v12 = v8 & 0xC000000000000001;
    v13 = &qword_1ECF2FB78;
    v14 = v8 & 0xFFFFFFFFFFFFFF8;
    v28 = v8;
    while (v10 != v11)
    {
      if (v12)
      {
        result = MEMORY[0x1E6911E60](v11, v8);
        v15 = result;
      }

      else
      {
        if (v11 >= *(v14 + 16))
        {
          goto LABEL_26;
        }

        v15 = *(v8 + 8 * v11 + 32);
      }

      if (__OFADD__(v11, 1))
      {
        __break(1u);
LABEL_26:
        __break(1u);
        return result;
      }

      v32 = v15;
      type metadata accessor for ViewModel();

      __swift_instantiateConcreteTypeFromMangledNameV2(v13, &qword_1E42AF4F8);
      if (swift_dynamicCast())
      {
        v16 = v14;
        v17 = v10;
        v18 = v12;
        v19 = v13;
        sub_1E3251BE8(v29, v33);
        v20 = v33[4];
        __swift_project_boxed_opaque_existential_1(v33, v33[3]);
        v21 = OUTLINED_FUNCTION_42_37();
        v23 = v22(v21, v20);
        if (v23 && (v24 = *(v23 + 16), , v24))
        {
          __swift_destroy_boxed_opaque_existential_1(v33);
          sub_1E4207544();
          sub_1E4207584();
          sub_1E4207594();
          result = sub_1E4207554();
        }

        else
        {

          result = __swift_destroy_boxed_opaque_existential_1(v33);
        }

        v13 = v19;
        v12 = v18;
        v10 = v17;
        v14 = v16;
        v8 = v28;
      }

      else
      {

        v31 = 0;
        *v29 = 0u;
        v30 = 0u;
        result = sub_1E325F6F0(v29, &qword_1ECF2FB80, &qword_1E42AF500);
      }

      ++v11;
    }

    v25 = v34;
    if (sub_1E32AE9B0(v34))
    {
      sub_1E3B0BE68(v25);

      v26 = sub_1E42062A4();

      v6 = v27;
      [v27 addObjectsFromArray_];
    }

    else
    {

      return v27;
    }
  }

  return v6;
}

char *sub_1E3B0BE68(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1E4207384();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v9 = MEMORY[0x1E69E7CC0];
  result = sub_1E37EBF70(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v3 = v9;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1E6911E60](v5, a1);
      }

      else
      {
      }

      type metadata accessor for ViewModel();
      swift_dynamicCast();
      v9 = v3;
      v7 = *(v3 + 16);
      v6 = *(v3 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_1E37EBF70((v6 > 1), v7 + 1, 1);
        v3 = v9;
      }

      ++v5;
      *(v3 + 16) = v7 + 1;
      sub_1E329504C(&v8, (v3 + 32 * v7 + 32));
    }

    while (v2 != v5);
    return v3;
  }

  __break(1u);
  return result;
}

void sub_1E3B0BFB0(uint64_t a1, void *a2)
{
  v2 = a1;
  v15[1] = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_1E4207344();
    sub_1E3280A90(0, &qword_1EE23AEF0, off_1E8728218);
    sub_1E3A60E60();
    sub_1E4206664();
    v2 = v15[2];
    v3 = v15[3];
    v4 = v15[4];
    v5 = v15[5];
    v6 = v15[6];
  }

  else
  {
    v5 = 0;
    v7 = -1 << *(a1 + 32);
    v3 = (a1 + 56);
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = (v9 & *(a1 + 56));
  }

  if (v2 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v10 = v5;
    v11 = v6;
    v12 = v5;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v13 = (v11 - 1) & v11;
    v14 = *(*(v2 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v14)
    {
LABEL_18:
      sub_1E34AF4DC(v2);
      return;
    }

    while (1)
    {
      sub_1E3B0C60C(v15, v14);

      v5 = v12;
      v6 = v13;
      if ((v2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_1E42073C4())
      {
        sub_1E3280A90(0, &qword_1EE23AEF0, off_1E8728218);
        swift_dynamicCast();
        v14 = v15[0];
        v12 = v5;
        v13 = v6;
        if (v15[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v12 = (v10 + 1);
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((v4 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v11 = v3[v12];
    ++v10;
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

char *sub_1E3B0C198(__n128 a1, uint64_t a2, void *a3)
{
  v16 = a3;
  v3 = sub_1E41FE2B4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E4206784();
  sub_1E3B0D644(&qword_1EE28A478, MEMORY[0x1E6968EB0]);
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    sub_1E4207174();
    if (!v19)
    {
      break;
    }

    sub_1E329504C(&v18, v17);
    v8 = sub_1E3B089FC(v17);
    v10 = v9;
    __swift_destroy_boxed_opaque_existential_1(v17);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_1E3740F88(0, *(v7 + 2) + 1, 1, v7);
    }

    v12 = *(v7 + 2);
    v11 = *(v7 + 3);
    if (v12 >= v11 >> 1)
    {
      v7 = sub_1E3740F88((v11 > 1), v12 + 1, 1, v7);
    }

    *(v7 + 2) = v12 + 1;
    v13 = &v7[16 * v12];
    *(v13 + 4) = v8;
    *(v13 + 5) = v10;
  }

  (*(v4 + 8))(v6, v3);

  return v7;
}

void *sub_1E3B0C37C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v4 = sub_1E4207384();
    if (v4)
    {
      v5 = v4;
      v2 = sub_1E37FEA14(v4, 0);
      sub_1E3B0D794((v2 + 4), v5, a1);
      v7 = v6;

      if (v7 == v5)
      {
        return v2;
      }

      __break(1u);
    }

    return MEMORY[0x1E69E7CC0];
  }

  return (a1 & 0xFFFFFFFFFFFFFF8);
}

uint64_t sub_1E3B0C410(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 16) + OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_documentEventIterable;
  result = OUTLINED_FUNCTION_5_0(v3, v10);
  if (*(v3 + 24))
  {
    sub_1E327F454(v3, v7);
    v5 = v8;
    v6 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    (*(v6 + 16))(v2, v5, v6);
    return __swift_destroy_boxed_opaque_existential_1(v7);
  }

  return result;
}

unint64_t sub_1E3B0C4B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF32F68;
  if (!qword_1ECF32F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF32F68);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for UpdateEventMonitorController.MonitoringReason(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1E3B0C60C(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1E4207394();

    if (v9)
    {

      sub_1E3280A90(0, &qword_1EE23AEF0, off_1E8728218);
      swift_dynamicCast();
      result = 0;
      *a1 = v22;
    }

    else
    {
      result = sub_1E4207384();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v16 = sub_1E3B0CCA0(v7, result + 1);
        v17 = *(v16 + 16);
        if (*(v16 + 24) <= v17)
        {
          sub_1E374D664(v17 + 1);
        }

        v18 = v8;
        sub_1E3B0CE7C(v18, v16);

        *v3 = v16;
LABEL_16:
        *a1 = v18;
        return 1;
      }
    }
  }

  else
  {
    sub_1E3280A90(0, &qword_1EE23AEF0, off_1E8728218);
    v11 = sub_1E4206F54();
    v12 = ~(-1 << *(v6 + 32));
    while (1)
    {
      v13 = v11 & v12;
      if (((*(v6 + 56 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v11 & v12)) & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v23 = *v3;
        v18 = a2;
        sub_1E3B0CF00(v18, v13, isUniquelyReferenced_nonNull_native);
        *v3 = v23;
        goto LABEL_16;
      }

      v14 = *(*(v6 + 48) + 8 * v13);
      v15 = sub_1E4206F64();

      if (v15)
      {
        break;
      }

      v11 = v13 + 1;
    }

    v20 = *(*(v6 + 48) + 8 * v13);
    *a1 = v20;
    v21 = v20;
    return 0;
  }

  return result;
}

void sub_1E3B0C830(unint64_t *a1, uint64_t *a2)
{
  v5 = *a1;
  v6 = sub_1E3B0CB10(*a1, a2);
  v8 = v6;
  if (!v2)
  {
    if (v7)
    {
      sub_1E32AE9B0(v5);
    }

    else
    {
      v30 = a1;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
LABEL_51:
        __break(1u);
      }

      else
      {
        while (1)
        {
          v10 = v5 >> 62 ? sub_1E4207384() : *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v9 == v10)
          {
            break;
          }

          if ((v5 & 0xC000000000000001) != 0)
          {
            v11 = MEMORY[0x1E6911E60](v9, v5);
          }

          else
          {
            if ((v9 & 0x8000000000000000) != 0)
            {
              __break(1u);
LABEL_44:
              __break(1u);
LABEL_45:
              __break(1u);
LABEL_46:
              __break(1u);
LABEL_47:
              __break(1u);
LABEL_48:
              __break(1u);
LABEL_49:
              __break(1u);
LABEL_50:
              __break(1u);
              goto LABEL_51;
            }

            if (v9 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_44;
            }

            v11 = *(v5 + 8 * v9 + 32);
          }

          v12 = v11;
          v13 = *a2;

          v14 = [v12 descriptor];
          v15 = [v14 type];

          if (*(v13 + 16))
          {
            sub_1E4207B44();
            MEMORY[0x1E69124B0](v15);
            v16 = sub_1E4207BA4();
            v17 = ~(-1 << *(v13 + 32));
            while (1)
            {
              v18 = v16 & v17;
              if (((*(v13 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
              {
                break;
              }

              v16 = v18 + 1;
              if (*(*(v13 + 48) + 8 * v18) == v15)
              {

                goto LABEL_35;
              }
            }
          }

          if (v8 != v9)
          {
            if ((v5 & 0xC000000000000001) != 0)
            {
              v19 = MEMORY[0x1E6911E60](v8, v5);
              v20 = MEMORY[0x1E6911E60](v9, v5);
            }

            else
            {
              if ((v8 & 0x8000000000000000) != 0)
              {
                goto LABEL_48;
              }

              v21 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v8 >= v21)
              {
                goto LABEL_49;
              }

              if (v9 >= v21)
              {
                goto LABEL_50;
              }

              v22 = *(v5 + 32 + 8 * v9);
              v19 = *(v5 + 32 + 8 * v8);
              v20 = v22;
            }

            v23 = v20;
            if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v5 & 0x8000000000000000) != 0 || (v5 & 0x4000000000000000) != 0)
            {
              v5 = sub_1E37EFA58(v5);
              v24 = (v5 >> 62) & 1;
            }

            else
            {
              LODWORD(v24) = 0;
            }

            v25 = v5 & 0xFFFFFFFFFFFFFF8;
            v26 = *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20);
            *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20) = v23;

            if ((v5 & 0x8000000000000000) != 0 || v24)
            {
              v5 = sub_1E37EFA58(v5);
              v25 = v5 & 0xFFFFFFFFFFFFFF8;
              if ((v9 & 0x8000000000000000) != 0)
              {
LABEL_41:
                __break(1u);
                return;
              }
            }

            else if ((v9 & 0x8000000000000000) != 0)
            {
              goto LABEL_41;
            }

            if (v9 >= *(v25 + 16))
            {
              goto LABEL_47;
            }

            v27 = v25 + 8 * v9;
            v28 = *(v27 + 32);
            *(v27 + 32) = v19;

            *v30 = v5;
          }

          v29 = __OFADD__(v8++, 1);
          if (v29)
          {
            goto LABEL_46;
          }

LABEL_35:
          v29 = __OFADD__(v9++, 1);
          if (v29)
          {
            goto LABEL_45;
          }
        }
      }
    }
  }
}

unint64_t sub_1E3B0CB10(unint64_t a1, uint64_t *a2)
{
  result = sub_1E32AE9B0(a1);
  v4 = result;
  v5 = 0;
  while (1)
  {
    if (v5 == v4)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1E6911E60](v5, a1);
      goto LABEL_6;
    }

    if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    v6 = *(a1 + 32 + 8 * v5);
LABEL_6:
    v7 = v6;
    v8 = *a2;

    v9 = [v7 descriptor];
    v10 = [v9 type];

    if (*(v8 + 16))
    {
      sub_1E4207B44();
      MEMORY[0x1E69124B0](v10);
      v11 = sub_1E4207BA4();
      v12 = ~(-1 << *(v8 + 32));
      while (1)
      {
        v13 = v11 & v12;
        if (((*(v8 + 56 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v11 & v12)) & 1) == 0)
        {
          break;
        }

        v11 = v13 + 1;
        if (*(*(v8 + 48) + 8 * v13) == v10)
        {

          return v5;
        }
      }
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1E3B0CCA0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF31510, &unk_1E42B5270);
    v2 = sub_1E4207454();
    v15 = v2;
    sub_1E4207344();
    while (1)
    {
      if (!sub_1E42073C4())
      {

        return v2;
      }

      sub_1E3280A90(0, &qword_1EE23AEF0, off_1E8728218);
      swift_dynamicCast();
      v3 = *(v2 + 16);
      if (*(v2 + 24) <= v3)
      {
        sub_1E374D664(v3 + 1);
      }

      v2 = v15;
      result = sub_1E4206F54();
      v5 = v15 + 56;
      v6 = -1 << *(v15 + 32);
      v7 = result & ~v6;
      v8 = v7 >> 6;
      if (((-1 << v7) & ~*(v15 + 56 + 8 * (v7 >> 6))) == 0)
      {
        break;
      }

      v9 = __clz(__rbit64((-1 << v7) & ~*(v15 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
      *(*(v15 + 48) + 8 * v9) = v14;
      ++*(v15 + 16);
    }

    v10 = 0;
    v11 = (63 - v6) >> 6;
    while (++v8 != v11 || (v10 & 1) == 0)
    {
      v12 = v8 == v11;
      if (v8 == v11)
      {
        v8 = 0;
      }

      v10 |= v12;
      v13 = *(v5 + 8 * v8);
      if (v13 != -1)
      {
        v9 = __clz(__rbit64(~v13)) + (v8 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

unint64_t sub_1E3B0CE7C(uint64_t a1, uint64_t a2)
{
  sub_1E4206F54();
  result = sub_1E4207324();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_1E3B0CF00(uint64_t result, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1E374D664(v6 + 1);
      goto LABEL_8;
    }

    if (v7 <= v6)
    {
      sub_1E3B0D1B4(v6 + 1);
LABEL_8:
      v8 = *v3;
      v9 = sub_1E4206F54();
      v10 = ~(-1 << *(v8 + 32));
      while (1)
      {
        a2 = v9 & v10;
        if (((*(v8 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v9 & v10)) & 1) == 0)
        {
          goto LABEL_12;
        }

        sub_1E3280A90(0, &qword_1EE23AEF0, off_1E8728218);
        v11 = *(*(v8 + 48) + 8 * a2);
        v12 = sub_1E4206F64();

        if (v12)
        {
          goto LABEL_15;
        }

        v9 = a2 + 1;
      }
    }

    sub_1E3B0D064();
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = result;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
LABEL_15:
    sub_1E4207A64();
    __break(1u);
  }

  else
  {
    *(v13 + 16) = v16;
  }
}

void sub_1E3B0D064()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF31510, &unk_1E42B5270);
  v2 = *v0;
  v3 = sub_1E4207434();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        v19 = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}