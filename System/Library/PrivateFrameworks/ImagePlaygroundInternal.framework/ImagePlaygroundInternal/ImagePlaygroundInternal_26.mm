void sub_1D2556A34(uint64_t a1, uint64_t a2)
{
  v65 = type metadata accessor for PhotosPersonImage(0);
  v69 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v5 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v60 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v64 = &v60 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDD50, &qword_1D2893760);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = (&v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v66 = (&v60 - v15);
  if (a1 == a2)
  {
    v67 = 1;
  }

  else if (*(a1 + 16) == *(a2 + 16))
  {
    v63 = v8;
    v62 = v5;
    v16 = 0;
    v61 = a1;
    v17 = *(a1 + 64);
    v60 = a1 + 64;
    v18 = 1 << *(a1 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & v17;
    v21 = (v18 + 63) >> 6;
    v22 = &unk_1EC6DDD58;
    v23 = &unk_1D2893768;
    while (v20)
    {
      v25 = __clz(__rbit64(v20));
      v26 = (v20 - 1) & v20;
      v27 = v25 | (v16 << 6);
      v28 = v63;
LABEL_18:
      v34 = *(v61 + 56);
      v35 = (*(v61 + 48) + (v27 << 6));
      v36 = v35[3];
      v38 = *v35;
      v37 = v35[1];
      v73 = v35[2];
      v74 = v36;
      v71 = v38;
      v72 = v37;
      v39 = v64;
      sub_1D2565084(v34 + *(v69 + 72) * v27, v64, type metadata accessor for PhotosPersonImage);
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(v22, v23);
      v41 = *(v40 + 48);
      v42 = v72;
      *v13 = v71;
      v13[1] = v42;
      v43 = v74;
      v13[2] = v73;
      v13[3] = v43;
      sub_1D25650EC(v39, v13 + v41, type metadata accessor for PhotosPersonImage);
      (*(*(v40 - 8) + 56))(v13, 0, 1, v40);
      sub_1D22D63B0(&v71, v70);
      v31 = v66;
LABEL_19:
      sub_1D22EC9BC(v13, v31, &qword_1EC6DDD50, &qword_1D2893760);
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(v22, v23);
      v45 = (*(*(v44 - 8) + 48))(v31, 1, v44);
      v67 = v45 == 1;
      if (v45 == 1)
      {
        return;
      }

      v68 = v26;
      v46 = v23;
      v47 = v21;
      v48 = v13;
      v49 = v22;
      v50 = *(v44 + 48);
      v51 = v31[1];
      v75[0] = *v31;
      v75[1] = v51;
      v52 = v31[3];
      v75[2] = v31[2];
      v75[3] = v52;
      sub_1D25650EC(v31 + v50, v28, type metadata accessor for PhotosPersonImage);
      v53 = sub_1D25D0770(v75);
      v55 = v54;
      sub_1D22D640C(v75);
      if ((v55 & 1) == 0)
      {
        goto LABEL_32;
      }

      v56 = *(a2 + 56) + *(v69 + 72) * v53;
      v57 = v62;
      sub_1D2565084(v56, v62, type metadata accessor for PhotosPersonImage);
      if ((*v57 != *v28 || *(v57 + 8) != *(v28 + 8)) && (sub_1D2879618() & 1) == 0)
      {
LABEL_31:
        sub_1D2565154(v57, type metadata accessor for PhotosPersonImage);
LABEL_32:
        sub_1D2565154(v28, type metadata accessor for PhotosPersonImage);
        goto LABEL_33;
      }

      v58 = *(v28 + 24);
      if (*(v57 + 24))
      {
        if (!*(v28 + 24))
        {
          goto LABEL_31;
        }
      }

      else
      {
        if (*(v57 + 16) != *(v28 + 16))
        {
          v58 = 1;
        }

        if (v58)
        {
          goto LABEL_31;
        }
      }

      type metadata accessor for PlaygroundImage(0);
      v24 = _s23ImagePlaygroundInternal0A10GenerationV07PreviewA0V2eeoiySbAE_AEtFZ_0();
      sub_1D2565154(v57, type metadata accessor for PhotosPersonImage);
      sub_1D2565154(v28, type metadata accessor for PhotosPersonImage);
      v22 = v49;
      v13 = v48;
      v21 = v47;
      v23 = v46;
      v20 = v68;
      if ((v24 & 1) == 0)
      {
        return;
      }
    }

    if (v21 <= v16 + 1)
    {
      v29 = v16 + 1;
    }

    else
    {
      v29 = v21;
    }

    v30 = v29 - 1;
    v28 = v63;
    v31 = v66;
    while (1)
    {
      v32 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v32 >= v21)
      {
        v59 = __swift_instantiateConcreteTypeFromMangledNameV2(v22, v23);
        (*(*(v59 - 8) + 56))(v13, 1, 1, v59);
        v26 = 0;
        v16 = v30;
        goto LABEL_19;
      }

      v33 = *(v60 + 8 * v32);
      ++v16;
      if (v33)
      {
        v26 = (v33 - 1) & v33;
        v27 = __clz(__rbit64(v33)) | (v32 << 6);
        v16 = v32;
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_33:
    v67 = 0;
  }
}

void sub_1D2557024(uint64_t a1, uint64_t a2)
{
  v57 = type metadata accessor for PhotosPersonImage(0);
  v4 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v50 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v56 = &v50 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDD40, &qword_1D2893750);
  MEMORY[0x1EEE9AC00](v12 - 8);
  MEMORY[0x1EEE9AC00](v13);
  if (a1 == a2)
  {
    v58 = 1;
  }

  else if (*(a1 + 16) == *(a2 + 16))
  {
    v53 = a2;
    v54 = (&v50 - v14);
    v55 = v15;
    v16 = 0;
    v51 = a1;
    v17 = *(a1 + 64);
    v50 = a1 + 64;
    v18 = 1 << *(a1 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & v17;
    v21 = (v18 + 63) >> 6;
    v22 = &unk_1EC6DDD48;
    v52 = v21;
    while (v20)
    {
      v59 = (v20 - 1) & v20;
      v24 = __clz(__rbit64(v20)) | (v16 << 6);
      v25 = v55;
LABEL_18:
      v30 = *(*(v51 + 48) + 8 * v24);
      v31 = v56;
      sub_1D2565084(*(v51 + 56) + *(v4 + 72) * v24, v56, type metadata accessor for PhotosPersonImage);
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(v22, &qword_1D2893758);
      v33 = *(v32 + 48);
      *v25 = v30;
      sub_1D25650EC(v31, v25 + v33, type metadata accessor for PhotosPersonImage);
      (*(*(v32 - 8) + 56))(v25, 0, 1, v32);
      v34 = v30;
LABEL_19:
      v35 = v22;
      v36 = v54;
      sub_1D22EC9BC(v25, v54, &qword_1EC6DDD40, &qword_1D2893750);
      v37 = v35;
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(v35, &qword_1D2893758);
      v39 = (*(*(v38 - 8) + 48))(v36, 1, v38);
      v58 = v39 == 1;
      if (v39 == 1)
      {
        return;
      }

      v40 = v6;
      v41 = v4;
      v42 = *v36;
      sub_1D25650EC(v36 + *(v38 + 48), v9, type metadata accessor for PhotosPersonImage);
      v43 = v53;
      v44 = sub_1D25D0720(v42);
      v46 = v45;

      if ((v46 & 1) == 0)
      {
        goto LABEL_32;
      }

      v47 = *(v43 + 56);
      v4 = v41;
      v6 = v40;
      sub_1D2565084(v47 + *(v41 + 72) * v44, v40, type metadata accessor for PhotosPersonImage);
      v22 = v37;
      if ((*v40 != *v9 || *(v40 + 8) != *(v9 + 1)) && (sub_1D2879618() & 1) == 0)
      {
LABEL_31:
        sub_1D2565154(v40, type metadata accessor for PhotosPersonImage);
LABEL_32:
        sub_1D2565154(v9, type metadata accessor for PhotosPersonImage);
        goto LABEL_33;
      }

      v48 = v9[24];
      if (*(v40 + 24))
      {
        if (!v9[24])
        {
          goto LABEL_31;
        }
      }

      else
      {
        if (*(v40 + 16) != *(v9 + 2))
        {
          v48 = 1;
        }

        if (v48)
        {
          goto LABEL_31;
        }
      }

      type metadata accessor for PlaygroundImage(0);
      v23 = _s23ImagePlaygroundInternal0A10GenerationV07PreviewA0V2eeoiySbAE_AEtFZ_0();
      sub_1D2565154(v40, type metadata accessor for PhotosPersonImage);
      sub_1D2565154(v9, type metadata accessor for PhotosPersonImage);
      v21 = v52;
      v20 = v59;
      if ((v23 & 1) == 0)
      {
        return;
      }
    }

    if (v21 <= v16 + 1)
    {
      v26 = v16 + 1;
    }

    else
    {
      v26 = v21;
    }

    v27 = v26 - 1;
    v25 = v55;
    while (1)
    {
      v28 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v28 >= v21)
      {
        v49 = __swift_instantiateConcreteTypeFromMangledNameV2(v22, &qword_1D2893758);
        (*(*(v49 - 8) + 56))(v25, 1, 1, v49);
        v59 = 0;
        v16 = v27;
        goto LABEL_19;
      }

      v29 = *(v50 + 8 * v28);
      ++v16;
      if (v29)
      {
        v59 = (v29 - 1) & v29;
        v24 = __clz(__rbit64(v29)) | (v28 << 6);
        v16 = v28;
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_33:
    v58 = 0;
  }
}

void sub_1D2557584(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Bubble(0);
  v49 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v50 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v48 = &v45 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDDD0, &qword_1D2893950);
  MEMORY[0x1EEE9AC00](v8 - 8);
  MEMORY[0x1EEE9AC00](v9);
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v46 = a1;
    v47 = &v45 - v10;
    v53 = v11;
    v12 = 0;
    v15 = *(a1 + 64);
    v14 = a1 + 64;
    v13 = v15;
    v16 = 1 << *(v14 - 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & v13;
    v19 = (v16 + 63) >> 6;
    while (v18)
    {
      v20 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v21 = v20 | (v12 << 6);
LABEL_16:
      v27 = v46;
      v28 = v48;
      sub_1D2565084(*(v46 + 48) + *(v49 + 72) * v21, v48, type metadata accessor for Bubble);
      v29 = *(v27 + 56) + 32 * v21;
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDD8, &qword_1D2893958);
      v31 = (v53 + *(v30 + 48));
      v32 = *v29;
      v51 = *(v29 + 16);
      v52 = v32;
      sub_1D25650EC(v28, v53, type metadata accessor for Bubble);
      v33 = v51;
      *v31 = v52;
      v31[1] = v33;
      v24 = v53;
      (*(*(v30 - 8) + 56))(v53, 0, 1, v30);
LABEL_17:
      v34 = v24;
      v35 = v47;
      sub_1D22EC9BC(v34, v47, &qword_1EC6DDDD0, &qword_1D2893950);
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDD8, &qword_1D2893958);
      if ((*(*(v36 - 8) + 48))(v35, 1, v36) != 1)
      {
        v37 = (v35 + *(v36 + 48));
        v38 = v35;
        v39 = v50;
        sub_1D25650EC(v38, v50, type metadata accessor for Bubble);
        v40 = *v37;
        v51 = v37[1];
        v52 = v40;
        v41 = sub_1D25D0908(v39);
        v43 = v42;
        sub_1D2565154(v39, type metadata accessor for Bubble);
        if (v43 & 1) != 0 && (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(*(a2 + 56) + 32 * v41), v52), vceqq_f64(*(*(a2 + 56) + 32 * v41 + 16), v51)))))
        {
          continue;
        }
      }

      return;
    }

    if (v19 <= v12 + 1)
    {
      v22 = v12 + 1;
    }

    else
    {
      v22 = v19;
    }

    v23 = v22 - 1;
    v24 = v53;
    while (1)
    {
      v25 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v25 >= v19)
      {
        v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDD8, &qword_1D2893958);
        (*(*(v44 - 8) + 56))(v24, 1, 1, v44);
        v18 = 0;
        v12 = v23;
        goto LABEL_17;
      }

      v26 = *(v14 + 8 * v25);
      ++v12;
      if (v26)
      {
        v18 = (v26 - 1) & v26;
        v21 = __clz(__rbit64(v26)) | (v25 << 6);
        v12 = v25;
        goto LABEL_16;
      }
    }

    __break(1u);
  }
}

void sub_1D25579DC(uint64_t a1, uint64_t a2)
{
  v57 = sub_1D2871818();
  v52 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v53 = v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v50 = v47 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDE08, &qword_1D28939D8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8);
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v51 = v47 - v9;
    v12 = 0;
    v48 = a1;
    v15 = *(a1 + 64);
    v14 = a1 + 64;
    v13 = v15;
    v16 = 1 << *(v14 - 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & v13;
    v19 = (v16 + 63) >> 6;
    v47[0] = v14;
    v47[1] = v52 + 16;
    v54 = v10;
    v55 = (v52 + 32);
    v49 = (v52 + 8);
    while (v18)
    {
      v56 = (v18 - 1) & v18;
      v20 = __clz(__rbit64(v18)) | (v12 << 6);
LABEL_17:
      v26 = v48;
      v27 = v52;
      (*(v52 + 16))(v50, *(v48 + 48) + *(v52 + 72) * v20, v57, v11);
      v28 = (*(v26 + 56) + 16 * v20);
      v30 = *v28;
      v29 = v28[1];
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDE10, &unk_1D28939E0);
      v32 = (v54 + *(v31 + 48));
      v23 = v54;
      (*(v27 + 32))();
      *v32 = v30;
      v32[1] = v29;
      (*(*(v31 - 8) + 56))(v23, 0, 1, v31);
      sub_1D2870F68();
LABEL_18:
      v33 = v51;
      sub_1D22EC9BC(v23, v51, &qword_1EC6DDE08, &qword_1D28939D8);
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDE10, &unk_1D28939E0);
      if ((*(*(v34 - 8) + 48))(v33, 1, v34) == 1)
      {
        return;
      }

      v35 = (v33 + *(v34 + 48));
      v36 = v53;
      v37 = v57;
      (*v55)(v53, v33, v57);
      v38 = *v35;
      v39 = v35[1];
      v40 = sub_1D25D064C(v36);
      v42 = v41;
      (*v49)(v36, v37);
      if ((v42 & 1) == 0)
      {

        return;
      }

      v43 = (*(a2 + 56) + 16 * v40);
      if (*v43 == v38 && v43[1] == v39)
      {

        v18 = v56;
      }

      else
      {
        v45 = sub_1D2879618();

        v18 = v56;
        if ((v45 & 1) == 0)
        {
          return;
        }
      }
    }

    if (v19 <= v12 + 1)
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = v19;
    }

    v22 = v21 - 1;
    v23 = v54;
    while (1)
    {
      v24 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v24 >= v19)
      {
        v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDE10, &unk_1D28939E0);
        (*(*(v46 - 8) + 56))(v23, 1, 1, v46);
        v56 = 0;
        v12 = v22;
        goto LABEL_18;
      }

      v25 = *(v47[0] + 8 * v24);
      ++v12;
      if (v25)
      {
        v56 = (v25 - 1) & v25;
        v20 = __clz(__rbit64(v25)) | (v24 << 6);
        v12 = v24;
        goto LABEL_17;
      }
    }

    __break(1u);
  }
}

char *sub_1D2557E9C(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  swift_weakInit();
  swift_weakInit();
  v3 = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR____TtC23ImagePlaygroundInternal16_PeopleRetrieval__observablePHFetchResults] = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR____TtC23ImagePlaygroundInternal16_PeopleRetrieval__personImageCache] = sub_1D25D67D4(v3);
  *&v1[OBJC_IVAR____TtC23ImagePlaygroundInternal16_PeopleRetrieval__faceImageCache] = sub_1D25D6A20(v3);
  *&v1[OBJC_IVAR____TtC23ImagePlaygroundInternal16_PeopleRetrieval__contextualHandles] = v3;
  *&v1[OBJC_IVAR____TtC23ImagePlaygroundInternal16_PeopleRetrieval__suggestablePeople] = v3;
  *&v1[OBJC_IVAR____TtC23ImagePlaygroundInternal16_PeopleRetrieval__allPeople] = v3;
  type metadata accessor for PhotosFaceCropFetcher();
  v4 = swift_allocObject();
  v5 = [objc_opt_self() mainScreen];
  [v5 scale];
  v7 = v6;

  v4[1] = vdupq_n_s64(0x4080000000000000uLL);
  *&v1[OBJC_IVAR____TtC23ImagePlaygroundInternal16_PeopleRetrieval__faceCropFetcher] = v4;
  *&v1[OBJC_IVAR____TtC23ImagePlaygroundInternal16_PeopleRetrieval__peopleLoadingTask] = 0;
  v4[2].i64[0] = v7;
  *&v1[OBJC_IVAR____TtC23ImagePlaygroundInternal16_PeopleRetrieval__peopleLoadingTaskContinuations] = v3;
  v8 = &v1[OBJC_IVAR____TtC23ImagePlaygroundInternal16_PeopleRetrieval_constants];
  *v8 = xmmword_1D2893540;
  *(v8 + 1) = xmmword_1D2893550;
  *(v8 + 4) = 300;
  sub_1D2871A18();
  sub_1D2870F78();
  swift_weakDestroy();
  swift_weakInit();

  v12.receiver = v1;
  v12.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v12, sel_init);
  swift_getKeyPath();
  sub_1D2564338();
  sub_1D28719E8();

  if (swift_weakLoadStrong())
  {
    sub_1D23C6CA0();

    v10 = _SystemPhotoLibrary.photoLibrary.getter();

    if (v10)
    {
      [v10 registerChangeObserver_];
    }
  }

  return v9;
}

double sub_1D2558100(unint64_t a1)
{
  v3 = OBJC_IVAR____TtC23ImagePlaygroundInternal16_PeopleRetrieval__observablePHFetchResults;
  v4 = sub_1D2870F68();
  v5 = sub_1D2339200(v4, a1);

  if (v5)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D2564338();
    sub_1D28719D8();
  }

  return result;
}

double sub_1D255822C(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5)
{
  v8 = *a2;
  swift_beginAccess();
  v9 = sub_1D2870F68();
  LOBYTE(a3) = a3(v9, a1);

  if (a3)
  {
    *(v5 + v8) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D2564338();
    sub_1D28719D8();
  }

  return result;
}

double sub_1D255834C(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal16_PeopleRetrieval__faceCropFetcher) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D2564338();
    sub_1D28719D8();
  }

  return result;
}

double sub_1D2558458(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC23ImagePlaygroundInternal16_PeopleRetrieval__peopleLoadingTask;
  if (!*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal16_PeopleRetrieval__peopleLoadingTask))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D2564338();
    sub_1D28719D8();

    return result;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1D2870F78();
  v4 = sub_1D2878698();

  if ((v4 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + v3) = a1;

  return result;
}

uint64_t sub_1D25585B8()
{
  swift_getKeyPath();
  sub_1D2564338();
  sub_1D28719E8();

  return swift_weakLoadStrong();
}

uint64_t sub_1D2558634@<X0>(uint64_t *a2@<X8>)
{
  swift_getKeyPath();
  sub_1D2564338();
  sub_1D28719E8();

  result = swift_weakLoadStrong();
  *a2 = result;
  return result;
}

void *sub_1D255873C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDA0, &qword_1D2882D20);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v20 - v3;
  v5 = type metadata accessor for CharacterAsset(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  *&v23[0] = v0;
  sub_1D2564338();
  sub_1D28719E8();

  v9 = OBJC_IVAR____TtC23ImagePlaygroundInternal16_PeopleRetrieval__allPeople;
  swift_beginAccess();
  v10 = *(v1 + v9);
  v11 = *(v10 + 16);
  if (!v11)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = (v6 + 56);
  v14 = (v6 + 48);
  v20[1] = v10;
  sub_1D2870F68();
  v15 = MEMORY[0x1E69E7CC0];
  v21 = v6;
  do
  {
    sub_1D22D7044(v12, v23);
    sub_1D227268C(v23, v22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAC08, &qword_1D288C9A0);
    v16 = swift_dynamicCast();
    (*v13)(v4, v16 ^ 1u, 1, v5);
    if ((*v14)(v4, 1, v5) == 1)
    {
      sub_1D22BD238(v4, &unk_1EC6DDDA0, &qword_1D2882D20);
    }

    else
    {
      sub_1D25650EC(v4, v8, type metadata accessor for CharacterAsset);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_1D27CCE9C(0, v15[2] + 1, 1, v15);
      }

      v18 = v15[2];
      v17 = v15[3];
      if (v18 >= v17 >> 1)
      {
        v15 = sub_1D27CCE9C((v17 > 1), v18 + 1, 1, v15);
      }

      v15[2] = v18 + 1;
      sub_1D25650EC(v8, v15 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v18, type metadata accessor for CharacterAsset);
    }

    v12 += 40;
    --v11;
  }

  while (v11);

  return v15;
}

double sub_1D2558A70(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1D2564338();
  sub_1D28719E8();

  swift_beginAccess();
  sub_1D2870F68();
  return result;
}

double sub_1D2558AF8@<D0>(uint64_t *a1@<X0>, uint64_t *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1D2564338();
  sub_1D28719E8();

  v7 = *a3;
  swift_beginAccess();
  *a4 = *(v6 + v7);
  sub_1D2870F68();
  return result;
}

void sub_1D2558B94(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDC0, &unk_1D2881BE0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v28 - v5;
  v32 = type metadata accessor for PhotosPersonAsset(0);
  v7 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v9 = (&v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDA0, &qword_1D2882D20);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v28 - v11;
  v33 = type metadata accessor for CharacterAsset(0);
  v13 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v29 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0)
  {
    v17 = sub_1D2612D44();
    goto LABEL_8;
  }

  v31 = v7;
  if (qword_1EC6D8D28 != -1)
  {
    goto LABEL_22;
  }

  while (1)
  {
    os_unfair_lock_lock(&dword_1EC6DF020);
    v16 = qword_1EC6DF028;
    v15 = qword_1EC6DF030;
    sub_1D2870F68();
    os_unfair_lock_unlock(&dword_1EC6DF020);
    if (v15)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE60, &unk_1D28897D0);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1D287F500;
      *(v17 + 32) = v16;
      *(v17 + 40) = v15;
    }

    else
    {
      v17 = MEMORY[0x1E69E7CC0];
    }

    v7 = v31;
LABEL_8:
    v31 = *(v17 + 16);
    if (!v31)
    {
      break;
    }

    v28 = v9;
    v30 = a2;
    v18 = 0;
    v9 = (v13 + 48);
    a2 = v7 + 48;
    v19 = (v17 + 40);
    while (v18 < *(v17 + 16))
    {
      v13 = *(v19 - 1);
      v20 = *v19;
      sub_1D2870F68();
      sub_1D2559014(v13, v20, 0, v12);
      if ((*v9)(v12, 1, v33) != 1)
      {

        v22 = type metadata accessor for CharacterAsset;
        v23 = v29;
        sub_1D25650EC(v12, v29, type metadata accessor for CharacterAsset);
        v24 = &protocol witness table for CharacterAsset;
        v25 = v30;
        v26 = v33;
LABEL_20:
        v25[3] = v26;
        v25[4] = v24;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v25);
        sub_1D25650EC(v23, boxed_opaque_existential_1, v22);
        return;
      }

      sub_1D22BD238(v12, &unk_1EC6DDDA0, &qword_1D2882D20);
      sub_1D2559398(v13, v20, v6);

      if ((*a2)(v6, 1, v32) != 1)
      {

        v22 = type metadata accessor for PhotosPersonAsset;
        v23 = v28;
        sub_1D25650EC(v6, v28, type metadata accessor for PhotosPersonAsset);
        v24 = &protocol witness table for PhotosPersonAsset;
        v25 = v30;
        v26 = v32;
        goto LABEL_20;
      }

      ++v18;
      sub_1D22BD238(v6, &unk_1EC6DDDC0, &unk_1D2881BE0);
      v19 += 2;
      if (v31 == v18)
      {

        v21 = v30;
        *(v30 + 32) = 0;
        *v21 = 0u;
        v21[1] = 0u;
        return;
      }
    }

    __break(1u);
LABEL_22:
    swift_once();
  }

  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
}

void sub_1D2559014(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v28 = a2;
  v8 = type metadata accessor for CharacterAsset(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D255873C();
  v25 = a4;
  if (a3)
  {
    swift_getKeyPath();
    v31 = v4;
    sub_1D2564338();
    sub_1D28719E8();

    if (swift_weakLoadStrong())
    {

      sub_1D23C7FA8();

      v12 = sub_1D26217A0();
    }
  }

  v26 = v12[2];
  if (v26)
  {
    v13 = 0;
    v27 = a1;
    while (v13 < v12[2])
    {
      sub_1D2565084(v12 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v13, v11, type metadata accessor for CharacterAsset);
      v31 = 0;
      v32 = 0xE000000000000000;
      if (v11[*(v8 + 24)] == 3)
      {
        v14 = 0x6669636570736E75;
        v15 = 0xEB00000000646569;
      }

      else
      {
        v14 = sub_1D2873768();
        v15 = v16;
      }

      type metadata accessor for CharacterRecipe(0);
      v17 = _s23ImagePlaygroundInternal0A16GenerationPersonV8SkinToneV2idSSvg_0();
      v19 = v18;
      v29 = v14;
      v30 = v15;
      sub_1D2870F68();
      MEMORY[0x1D38A0C50](v17, v19);

      MEMORY[0x1D38A0C50](v29, v30);

      MEMORY[0x1D38A0C50](45, 0xE100000000000000);
      if (v11[*(v8 + 28)])
      {
        v20 = 1702195828;
      }

      else
      {
        v20 = 0x65736C6166;
      }

      if (v11[*(v8 + 28)])
      {
        v21 = 0xE400000000000000;
      }

      else
      {
        v21 = 0xE500000000000000;
      }

      MEMORY[0x1D38A0C50](v20, v21);

      if (v31 == v27 && v32 == v28)
      {

LABEL_22:

        v24 = v25;
        sub_1D25650EC(v11, v25, type metadata accessor for CharacterAsset);
        v23 = 0;
        goto LABEL_23;
      }

      v22 = sub_1D2879618();

      if (v22)
      {
        goto LABEL_22;
      }

      ++v13;
      sub_1D2565154(v11, type metadata accessor for CharacterAsset);
      if (v26 == v13)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_20:

    v23 = 1;
    v24 = v25;
LABEL_23:
    (*(v9 + 56))(v24, v23, 1, v8);
  }
}

void sub_1D2559398(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v36 = a2;
  v37 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70, &qword_1D2881410);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v33 - v6;
  v8 = type metadata accessor for PhotosPersonAsset(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v33 - v13;
  swift_getKeyPath();
  v39 = v3;
  sub_1D2564338();
  sub_1D28719E8();

  if (!swift_weakLoadStrong())
  {
LABEL_20:
    v31 = 1;
LABEL_21:
    (*(v9 + 56))(a3, v31, 1, v8);
    return;
  }

  v15 = sub_1D23C7B7C();

  if (sub_1D22BF738())
  {
LABEL_19:

    goto LABEL_20;
  }

  v33[0] = v14;
  v33[1] = v15;
  v34 = v8;
  v35 = a3;
  v16 = sub_1D2554D28();
  v17 = v16;
  v18 = v16[2];
  if (!v18)
  {
LABEL_18:

    v8 = v34;
    a3 = v35;
    goto LABEL_19;
  }

  v19 = 0;
  v38 = v16 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  while (v19 < v17[2])
  {
    sub_1D2565084(&v38[*(v9 + 72) * v19], v11, type metadata accessor for PhotosPersonAsset);
    v21 = *(v11 + 7);
    if (!v21)
    {
      v20 = sub_1D2871818();
      (*(*(v20 - 8) + 56))(v7, 1, 1, v20);
LABEL_6:
      sub_1D22BD238(v7, &qword_1EC6D8F70, &qword_1D2881410);
      goto LABEL_7;
    }

    v22 = v21;
    v23 = [v22 localIdentifier];
    if (!v23)
    {
      sub_1D28780A8();
      v23 = sub_1D2878068();
    }

    v24 = [objc_opt_self() uuidFromLocalIdentifier_];

    if (!v24)
    {
      goto LABEL_25;
    }

    sub_1D28780A8();

    sub_1D28717A8();

    v25 = sub_1D2871818();
    v26 = *(v25 - 8);
    if ((*(v26 + 48))(v7, 1, v25) == 1)
    {
      goto LABEL_6;
    }

    v27 = sub_1D28717B8();
    v29 = v28;
    (*(v26 + 8))(v7, v25);
    if (v27 == v37 && v29 == v36)
    {

      goto LABEL_23;
    }

    v30 = sub_1D2879618();

    if (v30)
    {

LABEL_23:
      v32 = v33[0];
      sub_1D25650EC(v11, v33[0], type metadata accessor for PhotosPersonAsset);
      a3 = v35;
      sub_1D25650EC(v32, v35, type metadata accessor for PhotosPersonAsset);
      v31 = 0;
      v8 = v34;
      goto LABEL_21;
    }

LABEL_7:
    ++v19;
    sub_1D2565154(v11, type metadata accessor for PhotosPersonAsset);
    if (v18 == v19)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

uint64_t sub_1D255983C(uint64_t a1, _OWORD *a2)
{
  *(v3 + 304) = a1;
  *(v3 + 312) = v2;
  v5 = sub_1D2873CB8();
  *(v3 + 320) = v5;
  *(v3 + 328) = *(v5 - 8);
  *(v3 + 336) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDD60, &qword_1D2893770);
  *(v3 + 344) = swift_task_alloc();
  *(v3 + 352) = swift_task_alloc();
  v6 = type metadata accessor for PhotosPersonImage(0);
  *(v3 + 360) = v6;
  *(v3 + 368) = *(v6 - 8);
  *(v3 + 376) = swift_task_alloc();
  *(v3 + 384) = swift_task_alloc();
  v7 = a2[1];
  *(v3 + 16) = *a2;
  *(v3 + 32) = v7;
  v8 = a2[3];
  *(v3 + 48) = a2[2];
  *(v3 + 64) = v8;
  sub_1D2878568();
  *(v3 + 392) = sub_1D2878558();
  v10 = sub_1D28784F8();
  *(v3 + 400) = v10;
  *(v3 + 408) = v9;

  return MEMORY[0x1EEE6DFA0](sub_1D25599F0, v10, v9);
}

uint64_t sub_1D25599F0()
{
  v1 = v0[39];
  swift_getKeyPath();
  v0[52] = OBJC_IVAR____TtC23ImagePlaygroundInternal16_PeopleRetrieval___observationRegistrar;
  v0[32] = v1;
  v0[53] = sub_1D2564338();
  sub_1D28719E8();

  if (swift_weakLoadStrong() && (sub_1D23C6CA0(), , v2 = _SystemPhotoLibrary.photoLibrary.getter(), v0[54] = v2, , v2))
  {
    v3 = type metadata accessor for FaceFetcher();
    v4 = v0[4];
    v5 = v0[5];
    v0[55] = v3;
    v0[56] = v4;
    v0[57] = v5;

    return MEMORY[0x1EEE6DFA0](sub_1D2559B8C, 0, 0);
  }

  else
  {
    v6 = v0[45];
    v7 = v0[46];
    v8 = v0[38];

    (*(v7 + 56))(v8, 1, 1, v6);

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_1D2559B8C()
{
  v1 = *(v0 + 456);
  v7 = *(v0 + 440);
  v2 = *(v0 + 432);
  v3 = swift_task_alloc();
  *(v0 + 464) = v3;
  *(v3 + 16) = v7;
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;
  v4 = swift_task_alloc();
  *(v0 + 472) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDB0, &qword_1D28938E8);
  *v4 = v0;
  v4[1] = sub_1D2559CB4;

  return MEMORY[0x1EEE6DDE0](v0 + 264, 0, 0, 0xD00000000000001CLL, 0x80000001D28BAA00, sub_1D2564E20, v3, v5);
}

uint64_t sub_1D2559CB4()
{

  return MEMORY[0x1EEE6DFA0](sub_1D2559DCC, 0, 0);
}

uint64_t sub_1D2559DEC()
{
  v1 = *(v0 + 480);
  if (v1)
  {
    v2 = swift_task_alloc();
    *(v0 + 488) = v2;
    *v2 = v0;
    v2[1] = sub_1D255A0A0;
    v3 = *(v0 + 304);

    return sub_1D2560AE0(v3, v1);
  }

  v5 = *(v0 + 312);
  swift_getKeyPath();
  *(v0 + 272) = v5;
  sub_1D28719E8();

  v6 = OBJC_IVAR____TtC23ImagePlaygroundInternal16_PeopleRetrieval__personImageCache;
  *(v0 + 496) = OBJC_IVAR____TtC23ImagePlaygroundInternal16_PeopleRetrieval__personImageCache;
  swift_beginAccess();
  v7 = *(v5 + v6);
  if (*(v7 + 16))
  {
    sub_1D2870F68();
    v8 = sub_1D25D0770((v0 + 16));
    if (v9)
    {
      v10 = v8;
      v11 = *(v0 + 432);
      v12 = *(v0 + 384);
      v13 = *(v0 + 360);
      v14 = *(v0 + 368);
      v15 = *(v0 + 304);

      sub_1D2565084(*(v7 + 56) + *(v14 + 72) * v10, v12, type metadata accessor for PhotosPersonImage);

      sub_1D25650EC(v12, v15, type metadata accessor for PhotosPersonImage);
      (*(v14 + 56))(v15, 0, 1, v13);

      v16 = *(v0 + 8);

      return v16();
    }
  }

  v17 = *(v0 + 432);
  v18 = swift_task_alloc();
  *(v0 + 504) = v18;
  *v18 = v0;
  v18[1] = sub_1D255A268;
  v20 = *(v0 + 448);
  v19 = *(v0 + 456);

  return sub_1D268CC84(v20, v19, v17);
}

uint64_t sub_1D255A0A0()
{
  v1 = *v0;

  v2 = *(v1 + 408);
  v3 = *(v1 + 400);

  return MEMORY[0x1EEE6DFA0](sub_1D255A1C0, v3, v2);
}

uint64_t sub_1D255A1C0()
{
  v1 = v0[60];
  v2 = v0[54];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1D255A268(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 512) = a1;

  v3 = *(v2 + 408);
  v4 = *(v2 + 400);

  return MEMORY[0x1EEE6DFA0](sub_1D255A390, v4, v3);
}

uint64_t sub_1D255A390()
{
  v21 = v0;
  v1 = v0[64];
  if (v1)
  {
    v2 = swift_task_alloc();
    v0[65] = v2;
    *v2 = v0;
    v2[1] = sub_1D255A620;
    v3 = v0[44];

    return sub_1D2560AE0(v3, v1);
  }

  else
  {

    sub_1D28726B8();
    sub_1D22D63B0((v0 + 2), (v0 + 10));
    v5 = sub_1D2873CA8();
    v6 = sub_1D2878A18();
    sub_1D22D640C((v0 + 2));
    if (os_log_type_enabled(v5, v6))
    {
      v8 = v0[56];
      v7 = v0[57];
      v9 = v0[54];
      v10 = v0[41];
      v19 = v0[42];
      v11 = v0[40];
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v20 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_1D23D7C84(v8, v7, &v20);
      _os_log_impl(&dword_1D226E000, v5, v6, "Filtering out person with no face suitable for generation, person id: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x1D38A3520](v13, -1, -1);
      MEMORY[0x1D38A3520](v12, -1, -1);

      (*(v10 + 8))(v19, v11);
    }

    else
    {
      v14 = v0[54];
      v16 = v0[41];
      v15 = v0[42];
      v17 = v0[40];

      (*(v16 + 8))(v15, v17);
    }

    (*(v0[46] + 56))(v0[38], 1, 1, v0[45]);

    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_1D255A620()
{
  v1 = *v0;

  v2 = *(v1 + 408);
  v3 = *(v1 + 400);

  return MEMORY[0x1EEE6DFA0](sub_1D255A740, v3, v2);
}

uint64_t sub_1D255A740()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 368);
  v3 = *(v0 + 352);

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = *(v0 + 432);
    v5 = *(v0 + 360);
    v6 = *(v0 + 368);
    v7 = *(v0 + 352);
    v8 = *(v0 + 304);

    sub_1D22BD238(v7, &qword_1EC6DDD60, &qword_1D2893770);
    (*(v6 + 56))(v8, 1, 1, v5);
  }

  else
  {
    v9 = *(v0 + 368);
    v10 = *(v0 + 376);
    v11 = *(v0 + 360);
    v12 = *(v0 + 344);
    v13 = *(v0 + 312);
    v18 = *(v0 + 304);
    v19 = *(v0 + 512);
    v17 = *(v0 + 432);
    sub_1D25650EC(*(v0 + 352), v10, type metadata accessor for PhotosPersonImage);
    sub_1D2565084(v10, v12, type metadata accessor for PhotosPersonImage);
    v14 = *(v9 + 56);
    v14(v12, 0, 1, v11);
    swift_getKeyPath();
    *(v0 + 280) = v13;
    sub_1D22D63B0(v0 + 16, v0 + 144);
    sub_1D28719E8();

    *(v0 + 288) = v13;
    swift_getKeyPath();
    sub_1D2871A08();

    swift_beginAccess();
    sub_1D25CE480(v12, (v0 + 16));
    swift_endAccess();
    *(v0 + 296) = v13;
    swift_getKeyPath();
    sub_1D28719F8();

    sub_1D25650EC(v10, v18, type metadata accessor for PhotosPersonImage);
    v14(v18, 0, 1, v11);
  }

  v15 = *(v0 + 8);

  return v15();
}

void sub_1D255AA0C(_OWORD *a1, char a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDD68, &qword_1D2893778);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v14 - v8;
  v10 = a1[1];
  v15[0] = *a1;
  v15[1] = v10;
  v11 = a1[3];
  v15[2] = a1[2];
  v15[3] = v11;
  swift_getKeyPath();
  v14[1] = v3;
  sub_1D2564338();
  sub_1D28719E8();

  if (swift_weakLoadStrong() && (sub_1D23C6CA0(), , v12 = _SystemPhotoLibrary.photoLibrary.getter(), v13 = , v12))
  {
    MEMORY[0x1EEE9AC00](v13);
    LOBYTE(v14[-4]) = a2 & 1;
    v14[-3] = v15;
    v14[-2] = v12;
    v14[-1] = v3;
    type metadata accessor for PhotosPersonAsset(0);
    (*(v7 + 104))(v9, *MEMORY[0x1E69E8650], v6);
    sub_1D2878678();
  }

  else
  {
    type metadata accessor for PhotosPersonAsset(0);
    (*(v7 + 104))(v9, *MEMORY[0x1E69E8650], v6);
    sub_1D2878678();
  }
}

uint64_t sub_1D255AC68@<X0>(__int128 *a1@<X0>, __int128 *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDD60, &qword_1D2893770);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v21 - v5;
  v7 = type metadata accessor for PhotosPersonImage(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[1];
  v22 = *a1;
  v23 = v11;
  v12 = a1[3];
  v14 = *a1;
  v13 = a1[1];
  v24 = a1[2];
  v25 = v12;
  v21[0] = v14;
  v21[1] = v13;
  v15 = a1[3];
  v21[2] = a1[2];
  v21[3] = v15;
  sub_1D255AEC8(v21, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1D22BD238(v6, &qword_1EC6DDD60, &qword_1D2893770);
    v16 = type metadata accessor for PhotosPersonAsset(0);
    return (*(*(v16 - 8) + 56))(a2, 1, 1, v16);
  }

  else
  {
    sub_1D25650EC(v6, v10, type metadata accessor for PhotosPersonImage);
    v18 = type metadata accessor for PhotosPersonAsset(0);
    sub_1D25650EC(v10, a2 + v18[5], type metadata accessor for PhotosPersonImage);
    v19 = v23;
    *a2 = v22;
    a2[1] = v19;
    v20 = v25;
    a2[2] = v24;
    a2[3] = v20;
    *(a2 + v18[6]) = 1;
    *(a2 + v18[7]) = 0;
    (*(*(v18 - 1) + 56))(a2, 0, 1, v18);
    return sub_1D22D63B0(&v22, v21);
  }
}

uint64_t sub_1D255AEC8@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v38 = type metadata accessor for PhotosPersonImage(0);
  v6 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v36 = &v35 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v35 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v35 - v14;
  v16 = a1[1];
  v40 = *a1;
  v41 = v16;
  v17 = a1[3];
  v42 = a1[2];
  v43 = v17;
  swift_getKeyPath();
  v39 = v2;
  sub_1D2564338();
  sub_1D28719E8();

  if (!swift_weakLoadStrong() || (sub_1D23C6CA0(), , v18 = _SystemPhotoLibrary.photoLibrary.getter(), , !v18))
  {
LABEL_10:
    swift_getKeyPath();
    v39 = v3;
    sub_1D28719E8();

    v27 = OBJC_IVAR____TtC23ImagePlaygroundInternal16_PeopleRetrieval__personImageCache;
    swift_beginAccess();
    v28 = *(v3 + v27);
    if (*(v28 + 16))
    {
      sub_1D2870F68();
      v29 = sub_1D25D0770(&v40);
      if (v30)
      {
        v31 = v37;
        sub_1D2565084(*(v28 + 56) + *(v6 + 72) * v29, v37, type metadata accessor for PhotosPersonImage);

        v32 = v36;
        sub_1D25650EC(v31, v36, type metadata accessor for PhotosPersonImage);
        v26 = v32;
        goto LABEL_13;
      }
    }

    v33 = 1;
    return (*(v6 + 56))(a2, v33, 1, v38);
  }

  v19 = sub_1D2691754(v41, *(&v41 + 1), v18);
  if (!v19)
  {
LABEL_9:

    goto LABEL_10;
  }

  v20 = v19;
  v35 = v12;
  swift_getKeyPath();
  v39 = v2;
  sub_1D28719E8();

  v21 = OBJC_IVAR____TtC23ImagePlaygroundInternal16_PeopleRetrieval__faceImageCache;
  swift_beginAccess();
  v22 = *(v3 + v21);
  if (!*(v22 + 16))
  {
LABEL_8:

    goto LABEL_9;
  }

  sub_1D2870F68();
  v23 = sub_1D25D0720(v20);
  if ((v24 & 1) == 0)
  {

    goto LABEL_8;
  }

  v25 = v35;
  sub_1D2565084(*(v22 + 56) + *(v6 + 72) * v23, v35, type metadata accessor for PhotosPersonImage);

  sub_1D25650EC(v25, v15, type metadata accessor for PhotosPersonImage);
  v26 = v15;
LABEL_13:
  sub_1D25650EC(v26, a2, type metadata accessor for PhotosPersonImage);
  v33 = 0;
  return (*(v6 + 56))(a2, v33, 1, v38);
}

double sub_1D255B298(uint64_t a1, uint64_t a2, int a3, uint64_t a4, unint64_t a5)
{
  v20 = a4;
  v21 = a5;
  v19 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDE70, &qword_1D287EAC0);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v18[-v10];
  (*(v8 + 16))(&v18[-v10], a1, v7, v9);
  swift_getKeyPath();
  v22 = a2;
  sub_1D2564338();
  sub_1D28719E8();

  v22 = a2;
  swift_getKeyPath();
  sub_1D2871A08();

  v12 = OBJC_IVAR____TtC23ImagePlaygroundInternal16_PeopleRetrieval__peopleLoadingTaskContinuations;
  v13 = *(a2 + OBJC_IVAR____TtC23ImagePlaygroundInternal16_PeopleRetrieval__peopleLoadingTaskContinuations);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + v12) = v13;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = sub_1D27CD384(0, v13[2] + 1, 1, v13);
    *(a2 + v12) = v13;
  }

  v16 = v13[2];
  v15 = v13[3];
  if (v16 >= v15 >> 1)
  {
    v13 = sub_1D27CD384((v15 > 1), v16 + 1, 1, v13);
  }

  v13[2] = v16 + 1;
  (*(v8 + 32))(v13 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v16, v11, v7);
  *(a2 + v12) = v13;
  v22 = a2;
  swift_getKeyPath();
  sub_1D28719F8();

  return sub_1D255B4E8(v19 & 1, v20, v21);
}

double sub_1D255B4E8(int a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60, &qword_1D28811F0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v33 - v9;
  v11 = sub_1D2873CB8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D28726B8();
  sub_1D2870F68();
  v15 = sub_1D2873CA8();
  v16 = sub_1D28789F8();

  v17 = os_log_type_enabled(v15, v16);
  v35 = a1;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v33 = v4;
    v19 = v18;
    v20 = swift_slowAlloc();
    v34 = v10;
    v21 = v20;
    v36 = v20;
    *v19 = 67109378;
    *(v19 + 4) = a1 & 1;
    *(v19 + 8) = 2080;
    if (a3)
    {
      v22 = a3;
    }

    else
    {
      a2 = 0x6E776F6E6B6E55;
      v22 = 0xE700000000000000;
    }

    sub_1D2870F68();
    v23 = sub_1D23D7C84(a2, v22, &v36);

    *(v19 + 10) = v23;
    _os_log_impl(&dword_1D226E000, v15, v16, "loadAllPeopleInBackground, forceReload: %{BOOL}d, caller: %s", v19, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v21);
    v24 = v21;
    v10 = v34;
    MEMORY[0x1D38A3520](v24, -1, -1);
    v25 = v19;
    v4 = v33;
    MEMORY[0x1D38A3520](v25, -1, -1);
  }

  (*(v12 + 8))(v14, v11);
  swift_getKeyPath();
  v36 = v4;
  sub_1D2564338();
  sub_1D28719E8();

  if (*&v4[OBJC_IVAR____TtC23ImagePlaygroundInternal16_PeopleRetrieval__peopleLoadingTask])
  {
    if (v35)
    {
      sub_1D2870F78();
      sub_1D28786B8();
    }
  }

  else
  {
    sub_1D2878588();
    v27 = sub_1D28785F8();
    (*(*(v27 - 8) + 56))(v10, 0, 1, v27);
    sub_1D2878568();
    v28 = v4;
    v29 = sub_1D2878558();
    v30 = swift_allocObject();
    v31 = MEMORY[0x1E69E85E0];
    v30[2] = v29;
    v30[3] = v31;
    v30[4] = v28;
    v32 = sub_1D22AE01C(0, 0, v10, &unk_1D2893820, v30);
    return sub_1D2558458(v32);
  }

  return result;
}

uint64_t sub_1D255B87C()
{
  swift_getKeyPath();
  sub_1D2564338();
  sub_1D28719E8();

  return sub_1D2870F78();
}

uint64_t sub_1D255B8F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[63] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDE70, &qword_1D287EAC0);
  v4[64] = v5;
  v4[65] = *(v5 - 8);
  v4[66] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60, &qword_1D28811F0);
  v4[67] = swift_task_alloc();
  v6 = sub_1D2873CB8();
  v4[68] = v6;
  v4[69] = *(v6 - 8);
  v4[70] = swift_task_alloc();
  v4[71] = swift_task_alloc();
  v4[72] = swift_task_alloc();
  v4[73] = sub_1D2878568();
  v4[74] = sub_1D2878558();
  v8 = sub_1D28784F8();
  v4[75] = v8;
  v4[76] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1D255BAAC, v8, v7);
}

void sub_1D255BAAC(uint64_t a1)
{
  sub_1D28726B8();
  v2 = sub_1D2873CA8();
  v3 = sub_1D2878A38();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D226E000, v2, v3, "Start load all people task.", v4, 2u);
    MEMORY[0x1D38A3520](v4, -1, -1);
  }

  v5 = v1[72];
  v6 = v1[69];
  v7 = v1[68];

  v8 = *(v6 + 8);
  v8(v5, v7);
  sub_1D28726B8();
  v9 = sub_1D2873CA8();
  v10 = sub_1D28789F8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1D226E000, v9, v10, "loadAllPeopleInBackground, will reset allPeople and suggestablePeople", v11, 2u);
    MEMORY[0x1D38A3520](v11, -1, -1);
  }

  v12 = v1[71];
  v13 = v1[68];
  v14 = v1[63];

  v8(v12, v13);
  swift_getKeyPath();
  v15 = swift_task_alloc();
  v16 = MEMORY[0x1E69E7CC0];
  *(v15 + 16) = v14;
  *(v15 + 24) = v16;
  v1[77] = OBJC_IVAR____TtC23ImagePlaygroundInternal16_PeopleRetrieval___observationRegistrar;
  v1[42] = v14;
  v1[78] = sub_1D2564338();
  sub_1D28719D8();

  swift_getKeyPath();
  v17 = swift_task_alloc();
  *(v17 + 16) = v14;
  *(v17 + 24) = v16;
  v1[57] = v14;
  sub_1D28719D8();
  v1[79] = 0;

  sub_1D28726B8();
  v18 = sub_1D2873CA8();
  v19 = sub_1D28789F8();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_1D226E000, v18, v19, "loadAllPeopleInBackground, did reset allPeople and suggestablePeople", v20, 2u);
    MEMORY[0x1D38A3520](v20, -1, -1);
  }

  v21 = v1[70];
  v22 = v1[68];
  v23 = v1[63];

  v8(v21, v22);
  swift_getKeyPath();
  v1[54] = v23;
  sub_1D28719E8();

  if (swift_weakLoadStrong())
  {
    sub_1D23C7044();

    v24 = sub_1D27ED8C8();

    if (v24)
    {
      v25 = v1[63];
      v68 = sub_1D2612D44();
      v1[80] = v68;
      swift_getKeyPath();
      v1[59] = v25;
      sub_1D28719E8();

      v26 = *(v25 + OBJC_IVAR____TtC23ImagePlaygroundInternal16_PeopleRetrieval__contextualHandles);
      v1[81] = v26;
      swift_getKeyPath();
      v1[60] = v25;
      sub_1D2870F68();
      sub_1D28719E8();

      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        sub_1D23C6CA0();

        Strong = _SystemPhotoLibrary.photoLibrary.getter();
      }

      v66 = Strong;
      v1[82] = Strong;
      v28 = v1[63];
      swift_getKeyPath();
      v1[61] = v28;
      sub_1D28719E8();

      if (swift_weakLoadStrong())
      {
        v29 = sub_1D23C7FA8();
      }

      else
      {
        v29 = 0;
      }

      v1[83] = v29;
      v46 = v1[63];
      swift_getKeyPath();
      v1[62] = v46;
      sub_1D28719E8();

      if (swift_weakLoadStrong())
      {
        v47 = sub_1D23C7F70();
      }

      else
      {
        v47 = 0;
      }

      v1[84] = v47;
      v48 = swift_task_alloc();
      v1[85] = v48;
      *v48 = v1;
      v48[1] = sub_1D255C51C;

      sub_1D286A380(300, 0, v68, v26, v66, v29, v47);
      return;
    }
  }

  v30 = v1[79];
  sub_1D28786F8();
  if (v30)
  {

    sub_1D2564808(0, 0);

    v31 = MEMORY[0x1E69E7CC0];
    if (sub_1D28786D8())
    {
LABEL_15:
      v32 = v1[67];
      v33 = v1[63];
      sub_1D2878588();
      v34 = sub_1D28785F8();
      (*(*(v34 - 8) + 56))(v32, 0, 1, v34);
      v35 = v33;
      v36 = sub_1D2878558();
      v37 = swift_allocObject();
      v38 = MEMORY[0x1E69E85E0];
      v37[2] = v36;
      v37[3] = v38;
      v37[4] = v35;
      v39 = sub_1D22AE01C(0, 0, v32, &unk_1D28938A8, v37);
      sub_1D2558458(v39);
LABEL_35:
      sub_1D255D6B4();

      v64 = v1[1];

      v64();
      return;
    }

LABEL_29:
    v49 = v1[63];
    swift_getKeyPath();
    v1[53] = v49;
    sub_1D28719E8();

    v50 = OBJC_IVAR____TtC23ImagePlaygroundInternal16_PeopleRetrieval__peopleLoadingTaskContinuations;
    v51 = *(v49 + OBJC_IVAR____TtC23ImagePlaygroundInternal16_PeopleRetrieval__peopleLoadingTaskContinuations);
    v52 = *(v51 + 16);
    if (v52)
    {
      v65 = OBJC_IVAR____TtC23ImagePlaygroundInternal16_PeopleRetrieval__peopleLoadingTaskContinuations;
      v67 = v49;
      v53 = v1[65];
      v56 = *(v53 + 16);
      v55 = v53 + 16;
      v54 = v56;
      v57 = v51 + ((*(v55 + 64) + 32) & ~*(v55 + 64));
      v58 = *(v55 + 56);
      sub_1D2870F68();
      do
      {
        v59 = v1[66];
        v60 = v1[64];
        v54(v59, v57, v60);
        sub_1D2878518();
        (*(v55 - 8))(v59, v60);
        v57 += v58;
        --v52;
      }

      while (v52);

      v31 = MEMORY[0x1E69E7CC0];
      v50 = v65;
      v49 = v67;
    }

    v61 = v1[63];
    swift_getKeyPath();
    v1[51] = v61;
    sub_1D28719E8();

    v1[50] = v61;
    swift_getKeyPath();
    sub_1D2871A08();

    *(v49 + v50) = v31;

    v1[47] = v61;
    swift_getKeyPath();
    sub_1D28719F8();

    if (*(v61 + OBJC_IVAR____TtC23ImagePlaygroundInternal16_PeopleRetrieval__peopleLoadingTask))
    {
      v62 = v1[63];
      swift_getKeyPath();
      v63 = swift_task_alloc();
      *(v63 + 16) = v62;
      *(v63 + 24) = 0;
      v1[44] = v62;
      sub_1D28719D8();
    }

    goto LABEL_35;
  }

  v31 = MEMORY[0x1E69E7CC0];
  sub_1D2558100(MEMORY[0x1E69E7CC0]);
  sub_1D2564940(0, v31[2], 5, v31, 5);
  v41 = v40;
  v1[88] = v40;

  v42 = *(v41 + 16);
  v1[89] = v42;
  v1[90] = OBJC_IVAR____TtC23ImagePlaygroundInternal16_PeopleRetrieval__allPeople;
  v1[91] = OBJC_IVAR____TtC23ImagePlaygroundInternal16_PeopleRetrieval__suggestablePeople;
  if (!v42)
  {

    if (sub_1D28786D8())
    {
      goto LABEL_15;
    }

    goto LABEL_29;
  }

  v1[93] = 0;
  v1[92] = 0;
  v43 = v1[88];
  if (*(v43 + 16))
  {
    v44 = *(v43 + 32);
    v1[94] = v44;
    sub_1D2870F68();
    v45 = swift_task_alloc();
    v1[95] = v45;
    *v45 = v1;
    v45[1] = sub_1D255CBCC;

    sub_1D255D7FC(v44);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D255C51C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 656);
  *(v4 + 688) = a1;
  *(v4 + 696) = a2;

  v6 = *(v3 + 608);
  v7 = *(v3 + 600);

  return MEMORY[0x1EEE6DFA0](sub_1D255C6E8, v7, v6);
}

void sub_1D255C6E8()
{
  v1 = v0[87];
  v2 = v0[86];
  v3 = v0[79];
  sub_1D28786F8();
  if (v3)
  {

    sub_1D2564808(v2, v1);

LABEL_3:
    v4 = sub_1D28786D8();
    v5 = v0[63];
    if (v4)
    {
      v6 = v0[67];
      sub_1D2878588();
      v7 = sub_1D28785F8();
      (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
      v8 = v5;
      v9 = sub_1D2878558();
      v10 = swift_allocObject();
      v11 = MEMORY[0x1E69E85E0];
      v10[2] = v9;
      v10[3] = v11;
      v10[4] = v8;
      v12 = sub_1D22AE01C(0, 0, v6, &unk_1D28938A8, v10);
      sub_1D2558458(v12);
    }

    else
    {
      swift_getKeyPath();
      v0[53] = v5;
      sub_1D28719E8();

      v13 = OBJC_IVAR____TtC23ImagePlaygroundInternal16_PeopleRetrieval__peopleLoadingTaskContinuations;
      v14 = *&v5[OBJC_IVAR____TtC23ImagePlaygroundInternal16_PeopleRetrieval__peopleLoadingTaskContinuations];
      v15 = *(v14 + 16);
      if (v15)
      {
        v35 = OBJC_IVAR____TtC23ImagePlaygroundInternal16_PeopleRetrieval__peopleLoadingTaskContinuations;
        v36 = v5;
        v16 = v0[65];
        v19 = *(v16 + 16);
        v18 = v16 + 16;
        v17 = v19;
        v20 = v14 + ((*(v18 + 64) + 32) & ~*(v18 + 64));
        v21 = *(v18 + 56);
        sub_1D2870F68();
        do
        {
          v22 = v0[66];
          v23 = v0[64];
          v17(v22, v20, v23);
          sub_1D2878518();
          (*(v18 - 8))(v22, v23);
          v20 += v21;
          --v15;
        }

        while (v15);

        v5 = v36;
        v13 = v35;
      }

      v24 = v0[63];
      swift_getKeyPath();
      v0[51] = v24;
      sub_1D28719E8();

      v0[50] = v24;
      swift_getKeyPath();
      sub_1D2871A08();

      *&v5[v13] = MEMORY[0x1E69E7CC0];

      v0[47] = v24;
      swift_getKeyPath();
      sub_1D28719F8();

      if (*(v24 + OBJC_IVAR____TtC23ImagePlaygroundInternal16_PeopleRetrieval__peopleLoadingTask))
      {
        v25 = v0[63];
        swift_getKeyPath();
        v26 = swift_task_alloc();
        *(v26 + 16) = v25;
        *(v26 + 24) = 0;
        v0[44] = v25;
        sub_1D28719D8();
      }
    }

    sub_1D255D6B4();

    v27 = v0[1];

    v27();
    return;
  }

  if (v2)
  {
    v28 = v1;
  }

  else
  {
    v28 = MEMORY[0x1E69E7CC0];
  }

  if (!v2)
  {
    v2 = MEMORY[0x1E69E7CC0];
  }

  sub_1D2558100(v28);
  sub_1D2564940(0, v2[2], 5, v2, 5);
  v30 = v29;
  v0[88] = v29;

  v31 = *(v30 + 16);
  v0[89] = v31;
  v0[90] = OBJC_IVAR____TtC23ImagePlaygroundInternal16_PeopleRetrieval__allPeople;
  v0[91] = OBJC_IVAR____TtC23ImagePlaygroundInternal16_PeopleRetrieval__suggestablePeople;
  if (!v31)
  {

    goto LABEL_3;
  }

  v0[93] = 0;
  v0[92] = 0;
  v32 = v0[88];
  if (*(v32 + 16))
  {
    v33 = *(v32 + 32);
    v0[94] = v33;
    sub_1D2870F68();
    v34 = swift_task_alloc();
    v0[95] = v34;
    *v34 = v0;
    v34[1] = sub_1D255CBCC;

    sub_1D255D7FC(v33);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D255CBCC(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 768) = a1;

  v3 = *(v2 + 608);
  v4 = *(v2 + 600);

  return MEMORY[0x1EEE6DFA0](sub_1D255CD18, v4, v3);
}

void sub_1D255CD18()
{
  v1 = *(v0 + 736);
  sub_1D28786F8();
  v2 = *(v0 + 768);
  if (v1)
  {

LABEL_28:
    v37 = sub_1D28786D8();
    v38 = *(v0 + 504);
    if (v37)
    {
      v39 = *(v0 + 536);
      sub_1D2878588();
      v40 = sub_1D28785F8();
      (*(*(v40 - 8) + 56))(v39, 0, 1, v40);
      v41 = v38;
      v42 = sub_1D2878558();
      v43 = swift_allocObject();
      v44 = MEMORY[0x1E69E85E0];
      v43[2] = v42;
      v43[3] = v44;
      v43[4] = v41;
      v45 = sub_1D22AE01C(0, 0, v39, &unk_1D28938A8, v43);
      sub_1D2558458(v45);
    }

    else
    {
      swift_getKeyPath();
      *(v0 + 424) = v38;
      sub_1D28719E8();

      v46 = OBJC_IVAR____TtC23ImagePlaygroundInternal16_PeopleRetrieval__peopleLoadingTaskContinuations;
      v47 = *&v38[OBJC_IVAR____TtC23ImagePlaygroundInternal16_PeopleRetrieval__peopleLoadingTaskContinuations];
      v48 = *(v47 + 16);
      if (v48)
      {
        v65 = OBJC_IVAR____TtC23ImagePlaygroundInternal16_PeopleRetrieval__peopleLoadingTaskContinuations;
        v67 = v38;
        v49 = *(v0 + 520);
        v52 = *(v49 + 16);
        v50 = v49 + 16;
        v51 = v52;
        v53 = v47 + ((*(v50 + 64) + 32) & ~*(v50 + 64));
        v54 = *(v50 + 56);
        sub_1D2870F68();
        do
        {
          v55 = *(v0 + 528);
          v56 = *(v0 + 512);
          v51(v55, v53, v56);
          sub_1D2878518();
          (*(v50 - 8))(v55, v56);
          v53 += v54;
          --v48;
        }

        while (v48);

        v46 = v65;
        v38 = v67;
      }

      v57 = *(v0 + 504);
      swift_getKeyPath();
      *(v0 + 408) = v57;
      sub_1D28719E8();

      *(v0 + 400) = v57;
      swift_getKeyPath();
      sub_1D2871A08();

      *&v38[v46] = MEMORY[0x1E69E7CC0];

      *(v0 + 376) = v57;
      swift_getKeyPath();
      sub_1D28719F8();

      if (*(v57 + OBJC_IVAR____TtC23ImagePlaygroundInternal16_PeopleRetrieval__peopleLoadingTask))
      {
        v58 = *(v0 + 504);
        swift_getKeyPath();
        v59 = swift_task_alloc();
        *(v59 + 16) = v58;
        *(v59 + 24) = 0;
        *(v0 + 352) = v58;
        sub_1D28719D8();
      }
    }

    sub_1D255D6B4();

    v60 = *(v0 + 8);

    v60();
    return;
  }

  v3 = *(v2 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    *(v0 + 344) = MEMORY[0x1E69E7CC0];
    sub_1D23D85A8(0, v3, 0);
    v4 = *(v0 + 344);
    v5 = v2 + 32;
    do
    {
      sub_1D2564CE8(v5, v0 + 160);
      sub_1D227268C((v0 + 160), v0 + 208);
      *(v0 + 344) = v4;
      v7 = *(v4 + 16);
      v6 = *(v4 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_1D23D85A8((v6 > 1), v7 + 1, 1);
      }

      v8 = *(v0 + 232);
      v9 = *(v0 + 240);
      v10 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 208, v8);
      v11 = *(v8 - 8);
      v12 = swift_task_alloc();
      (*(v11 + 16))(v12, v10, v8);
      sub_1D2564390(v7, v12, (v0 + 344), v8, v9);
      __swift_destroy_boxed_opaque_existential_0((v0 + 208));

      v4 = *(v0 + 344);
      v5 += 48;
      --v3;
    }

    while (v3);
  }

  v13 = *(v0 + 504);
  swift_getKeyPath();
  *(v0 + 360) = v13;
  sub_1D28719E8();

  *(v0 + 368) = v13;
  swift_getKeyPath();
  sub_1D2871A08();

  swift_beginAccess();
  sub_1D274E728(v4);
  swift_endAccess();
  *(v0 + 384) = v13;
  swift_getKeyPath();
  sub_1D28719F8();

  v14 = *(v2 + 16);
  v15 = MEMORY[0x1E69E7CC0];
  if (v14)
  {
    v16 = 0;
    v17 = *(v0 + 768) + 32;
    while (v16 < *(v2 + 16))
    {
      sub_1D2564CE8(v17, v0 + 112);
      if (*(v0 + 152) == 1)
      {
        v18 = *(v0 + 128);
        *(v0 + 64) = *(v0 + 112);
        *(v0 + 80) = v18;
        *(v0 + 89) = *(v0 + 137);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v0 + 392) = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D23D897C(0, *(v15 + 16) + 1, 1);
          v15 = *(v0 + 392);
        }

        v21 = *(v15 + 16);
        v20 = *(v15 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_1D23D897C((v20 > 1), v21 + 1, 1);
          v15 = *(v0 + 392);
        }

        *(v15 + 16) = v21 + 1;
        v22 = (v15 + 48 * v21);
        v23 = *(v0 + 64);
        v24 = *(v0 + 80);
        *(v22 + 57) = *(v0 + 89);
        v22[2] = v23;
        v22[3] = v24;
      }

      else
      {
        sub_1D2564D20(v0 + 112);
      }

      ++v16;
      v17 += 48;
      if (v14 == v16)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
    goto LABEL_44;
  }

LABEL_19:

  v25 = *(v15 + 16);
  if (v25)
  {
    *(v0 + 416) = MEMORY[0x1E69E7CC0];
    sub_1D23D85A8(0, v25, 0);
    v26 = *(v0 + 416);
    v27 = v15 + 32;
    do
    {
      sub_1D2564CE8(v27, v0 + 16);
      sub_1D227268C((v0 + 16), v0 + 248);
      *(v0 + 416) = v26;
      v29 = *(v26 + 16);
      v28 = *(v26 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_1D23D85A8((v28 > 1), v29 + 1, 1);
      }

      v30 = *(v0 + 272);
      v31 = *(v0 + 280);
      v32 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 248, v30);
      v33 = *(v30 - 8);
      v34 = swift_task_alloc();
      (*(v33 + 16))(v34, v32, v30);
      sub_1D2564390(v29, v34, (v0 + 416), v30, v31);
      __swift_destroy_boxed_opaque_existential_0((v0 + 248));

      v26 = *(v0 + 416);
      v27 += 48;
      --v25;
    }

    while (v25);
  }

  else
  {

    v26 = MEMORY[0x1E69E7CC0];
  }

  v66 = *(v0 + 712);
  v35 = *(v0 + 504);
  v36 = *(v0 + 744) + 1;
  swift_getKeyPath();
  *(v0 + 440) = v35;
  sub_1D28719E8();

  *(v0 + 448) = v35;
  swift_getKeyPath();
  sub_1D2871A08();

  swift_beginAccess();
  sub_1D274E728(v26);
  swift_endAccess();
  *(v0 + 464) = v35;
  swift_getKeyPath();
  sub_1D28719F8();

  if (v36 == v66)
  {

    goto LABEL_28;
  }

  v61 = *(v0 + 744) + 1;
  *(v0 + 744) = v61;
  *(v0 + 736) = 0;
  v62 = *(v0 + 704);
  if (v61 >= *(v62 + 16))
  {
LABEL_44:
    __break(1u);
    return;
  }

  v63 = *(v62 + 8 * v61 + 32);
  *(v0 + 752) = v63;
  sub_1D2870F68();
  v64 = swift_task_alloc();
  *(v0 + 760) = v64;
  *v64 = v0;
  v64[1] = sub_1D255CBCC;

  sub_1D255D7FC(v63);
}

uint64_t sub_1D255D6B4()
{
  v0 = sub_1D2873CB8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D28726B8();
  v4 = sub_1D2873CA8();
  v5 = sub_1D2878A38();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 67109120;
    *(v6 + 4) = sub_1D28786D8() & 1;
    _os_log_impl(&dword_1D226E000, v4, v5, "End all people task (cancelled: %{BOOL}d).", v6, 8u);
    MEMORY[0x1D38A3520](v6, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1D255D7FC(uint64_t a1)
{
  v2[67] = v1;
  v2[66] = a1;
  v2[68] = type metadata accessor for PhotosPersonAsset(0);
  v2[69] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDD60, &qword_1D2893770);
  v2[70] = swift_task_alloc();
  v3 = type metadata accessor for PhotosPersonImage(0);
  v2[71] = v3;
  v2[72] = *(v3 - 8);
  v2[73] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDA0, &qword_1D2882D20);
  v2[74] = swift_task_alloc();
  v4 = type metadata accessor for CharacterAsset(0);
  v2[75] = v4;
  v2[76] = *(v4 - 8);
  v2[77] = swift_task_alloc();
  sub_1D2878568();
  v2[78] = sub_1D2878558();
  v6 = sub_1D28784F8();
  v2[79] = v6;
  v2[80] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1D255D9F4, v6, v5);
}

uint64_t sub_1D255D9F4()
{
  v1 = *(*(v0 + 528) + 16);
  *(v0 + 648) = v1;
  if (v1)
  {
    v2 = 0;
    v3 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      *(v0 + 664) = v3;
      *(v0 + 656) = v2;
      v8 = *(v0 + 608);
      sub_1D2564D70(*(v0 + 528) + 48 * v2 + 32, v0 + 208);
      sub_1D22D7044(v0 + 208, v0 + 448);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DABD8, &qword_1D28A3980);
      v9 = swift_dynamicCast();
      v10 = *(v8 + 56);
      if (v9)
      {
        v11 = *(v0 + 616);
        v12 = *(v0 + 600);
        v13 = *(v0 + 592);
        v10(v13, 0, 1, v12);
        sub_1D25650EC(v13, v11, type metadata accessor for CharacterAsset);
        *(v0 + 376) = v12;
        *(v0 + 384) = &protocol witness table for CharacterAsset;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 352));
        sub_1D2565084(v11, boxed_opaque_existential_1, type metadata accessor for CharacterAsset);
        *(v0 + 392) = *(v0 + 248);
        sub_1D2564CE8(v0 + 352, v0 + 400);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = sub_1D27CD530(0, *(v3 + 2) + 1, 1, v3);
        }

        v16 = *(v3 + 2);
        v15 = *(v3 + 3);
        if (v16 >= v15 >> 1)
        {
          v3 = sub_1D27CD530((v15 > 1), v16 + 1, 1, v3);
        }

        v4 = *(v0 + 616);
        sub_1D2564D20(v0 + 352);
        sub_1D2565154(v4, type metadata accessor for CharacterAsset);
        sub_1D2564DCC(v0 + 208);
        *(v3 + 2) = v16 + 1;
        v5 = &v3[48 * v16];
        v6 = *(v0 + 425);
        v7 = *(v0 + 416);
        *(v5 + 2) = *(v0 + 400);
        *(v5 + 3) = v7;
        *(v5 + 57) = v6;
      }

      else
      {
        v17 = *(v0 + 592);
        v10(v17, 1, 1, *(v0 + 600));
        sub_1D22BD238(v17, &unk_1EC6DDDA0, &qword_1D2882D20);
        sub_1D22D7044(v0 + 208, v0 + 488);
        if (swift_dynamicCast())
        {
          v20 = *(v0 + 16);
          v21 = *(v0 + 32);
          *(v0 + 80) = v20;
          *(v0 + 96) = v21;
          v22 = *(v0 + 48);
          v23 = *(v0 + 64);
          *(v0 + 112) = v22;
          *(v0 + 128) = v23;
          *(v0 + 144) = v20;
          *(v0 + 160) = v21;
          *(v0 + 176) = v22;
          *(v0 + 192) = v23;
          v24 = swift_task_alloc();
          *(v0 + 672) = v24;
          *v24 = v0;
          v24[1] = sub_1D255DDAC;
          v25 = *(v0 + 560);

          return sub_1D255983C(v25, (v0 + 144));
        }

        sub_1D2564DCC(v0 + 208);
      }

      v2 = *(v0 + 656) + 1;
      if (v2 == *(v0 + 648))
      {
        goto LABEL_13;
      }
    }
  }

  v3 = MEMORY[0x1E69E7CC0];
LABEL_13:

  v18 = *(v0 + 8);

  return v18(v3);
}

uint64_t sub_1D255DDAC()
{
  v1 = *v0;

  v2 = *(v1 + 640);
  v3 = *(v1 + 632);

  return MEMORY[0x1EEE6DFA0](sub_1D255DECC, v3, v2);
}

uint64_t sub_1D255DECC()
{
  v1 = *(v0 + 560);
  if ((*(*(v0 + 576) + 48))(v1, 1, *(v0 + 568)) == 1)
  {
    sub_1D2564DCC(v0 + 208);
    sub_1D22D640C(v0 + 80);
    sub_1D22BD238(v1, &qword_1EC6DDD60, &qword_1D2893770);
    v2 = *(v0 + 664);
  }

  else
  {
    v3 = *(v0 + 584);
    v4 = *(v0 + 552);
    v5 = *(v0 + 544);
    sub_1D25650EC(v1, v3, type metadata accessor for PhotosPersonImage);
    sub_1D2565084(v3, v4 + v5[5], type metadata accessor for PhotosPersonImage);
    v6 = *(v0 + 128);
    v8 = *(v0 + 80);
    v7 = *(v0 + 96);
    v4[2] = *(v0 + 112);
    v4[3] = v6;
    *v4 = v8;
    v4[1] = v7;
    *(v4 + v5[6]) = 1;
    *(v4 + v5[7]) = 0;
    *(v0 + 280) = v5;
    *(v0 + 288) = &protocol witness table for PhotosPersonAsset;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 256));
    sub_1D2565084(v4, boxed_opaque_existential_1, type metadata accessor for PhotosPersonAsset);
    *(v0 + 296) = *(v0 + 248);
    sub_1D2564CE8(v0 + 256, v0 + 304);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v2 = *(v0 + 664);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v2 = sub_1D27CD530(0, *(v2 + 2) + 1, 1, *(v0 + 664));
    }

    v12 = *(v2 + 2);
    v11 = *(v2 + 3);
    if (v12 >= v11 >> 1)
    {
      v2 = sub_1D27CD530((v11 > 1), v12 + 1, 1, v2);
    }

    v13 = *(v0 + 584);
    v14 = *(v0 + 552);
    sub_1D2564D20(v0 + 256);
    sub_1D2565154(v14, type metadata accessor for PhotosPersonAsset);
    sub_1D2565154(v13, type metadata accessor for PhotosPersonImage);
    sub_1D2564DCC(v0 + 208);
    *(v2 + 2) = v12 + 1;
    v15 = &v2[48 * v12];
    v16 = *(v0 + 329);
    v17 = *(v0 + 320);
    *(v15 + 2) = *(v0 + 304);
    *(v15 + 3) = v17;
    *(v15 + 57) = v16;
  }

  v18 = *(v0 + 656) + 1;
  if (v18 == *(v0 + 648))
  {
LABEL_9:

    v19 = *(v0 + 8);

    return v19(v2);
  }

  while (1)
  {
    *(v0 + 664) = v2;
    *(v0 + 656) = v18;
    v21 = *(v0 + 608);
    sub_1D2564D70(*(v0 + 528) + 48 * v18 + 32, v0 + 208);
    sub_1D22D7044(v0 + 208, v0 + 448);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DABD8, &qword_1D28A3980);
    v22 = swift_dynamicCast();
    v23 = *(v21 + 56);
    if (v22)
    {
      v25 = *(v0 + 616);
      v26 = *(v0 + 600);
      v27 = *(v0 + 592);
      v23(v27, 0, 1, v26);
      sub_1D25650EC(v27, v25, type metadata accessor for CharacterAsset);
      *(v0 + 376) = v26;
      *(v0 + 384) = &protocol witness table for CharacterAsset;
      v28 = __swift_allocate_boxed_opaque_existential_1((v0 + 352));
      sub_1D2565084(v25, v28, type metadata accessor for CharacterAsset);
      *(v0 + 392) = *(v0 + 248);
      sub_1D2564CE8(v0 + 352, v0 + 400);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = sub_1D27CD530(0, *(v2 + 2) + 1, 1, v2);
      }

      v30 = *(v2 + 2);
      v29 = *(v2 + 3);
      if (v30 >= v29 >> 1)
      {
        v2 = sub_1D27CD530((v29 > 1), v30 + 1, 1, v2);
      }

      v31 = *(v0 + 616);
      sub_1D2564D20(v0 + 352);
      sub_1D2565154(v31, type metadata accessor for CharacterAsset);
      sub_1D2564DCC(v0 + 208);
      *(v2 + 2) = v30 + 1;
      v32 = &v2[48 * v30];
      v34 = *(v0 + 400);
      v33 = *(v0 + 416);
      *(v32 + 57) = *(v0 + 425);
      *(v32 + 2) = v34;
      *(v32 + 3) = v33;
      goto LABEL_15;
    }

    v24 = *(v0 + 592);
    v23(v24, 1, 1, *(v0 + 600));
    sub_1D22BD238(v24, &unk_1EC6DDDA0, &qword_1D2882D20);
    sub_1D22D7044(v0 + 208, v0 + 488);
    if (swift_dynamicCast())
    {
      break;
    }

    sub_1D2564DCC(v0 + 208);
LABEL_15:
    v18 = *(v0 + 656) + 1;
    if (v18 == *(v0 + 648))
    {
      goto LABEL_9;
    }
  }

  v35 = *(v0 + 16);
  v36 = *(v0 + 32);
  *(v0 + 80) = v35;
  *(v0 + 96) = v36;
  v37 = *(v0 + 48);
  v38 = *(v0 + 64);
  *(v0 + 112) = v37;
  *(v0 + 128) = v38;
  *(v0 + 144) = v35;
  *(v0 + 160) = v36;
  *(v0 + 176) = v37;
  *(v0 + 192) = v38;
  v39 = swift_task_alloc();
  *(v0 + 672) = v39;
  *v39 = v0;
  v39[1] = sub_1D255DDAC;
  v40 = *(v0 + 560);

  return sub_1D255983C(v40, (v0 + 144));
}

double sub_1D255E480(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1D2564338();
  sub_1D28719E8();

  sub_1D2870F68();
  return result;
}

uint64_t sub_1D255E4F4()
{
  v1[20] = v0;
  v2 = sub_1D2873CB8();
  v1[21] = v2;
  v1[22] = *(v2 - 8);
  v1[23] = swift_task_alloc();
  sub_1D2878568();
  v1[24] = sub_1D2878558();
  v4 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D255E5E8, v4, v3);
}

uint64_t sub_1D255E5E8()
{
  v17 = v0;

  sub_1D28726B8();
  v1 = sub_1D2873CA8();
  v2 = sub_1D28789F8();
  v3 = os_log_type_enabled(v1, v2);
  v5 = v0[22];
  v4 = v0[23];
  v6 = v0[21];
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1D23D7C84(0x29287465736572, 0xE700000000000000, &v16);
    _os_log_impl(&dword_1D226E000, v1, v2, "PeopleRetrieval: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1D38A3520](v8, -1, -1);
    MEMORY[0x1D38A3520](v7, -1, -1);
  }

  (*(v5 + 8))(v4, v6);
  v9 = v0[20];
  swift_getKeyPath();
  v0[11] = v9;
  sub_1D2564338();
  sub_1D28719E8();

  v0[12] = v9;
  swift_getKeyPath();
  sub_1D2871A08();

  v10 = OBJC_IVAR____TtC23ImagePlaygroundInternal16_PeopleRetrieval__allPeople;
  swift_beginAccess();
  *(v9 + v10) = MEMORY[0x1E69E7CC0];

  v0[13] = v9;
  swift_getKeyPath();
  sub_1D28719F8();

  swift_getKeyPath();
  v0[14] = v9;
  sub_1D28719E8();

  v0[15] = v9;
  swift_getKeyPath();
  sub_1D2871A08();

  v11 = OBJC_IVAR____TtC23ImagePlaygroundInternal16_PeopleRetrieval__personImageCache;
  swift_beginAccess();
  v12 = MEMORY[0x1E69E7CC8];
  *(v9 + v11) = MEMORY[0x1E69E7CC8];

  v0[16] = v9;
  swift_getKeyPath();
  sub_1D28719F8();

  swift_getKeyPath();
  v0[17] = v9;
  sub_1D28719E8();

  v0[18] = v9;
  swift_getKeyPath();
  sub_1D2871A08();

  v13 = OBJC_IVAR____TtC23ImagePlaygroundInternal16_PeopleRetrieval__faceImageCache;
  swift_beginAccess();
  *(v9 + v13) = v12;

  v0[19] = v9;
  swift_getKeyPath();
  sub_1D28719F8();

  v14 = v0[1];

  return v14();
}

void sub_1D255E9B8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  swift_getKeyPath();
  sub_1D2564338();
  sub_1D28719E8();

  if (swift_weakLoadStrong())
  {
    sub_1D23C6CA0();

    v5 = _SystemPhotoLibrary.photoLibrary.getter();

    if (v5)
    {
      v6 = type metadata accessor for PhotosPersonAsset(0);
      sub_1D2613084(*(a1 + *(v6 + 20)), *(a1 + *(v6 + 20) + 8), v3, v4);
    }
  }
}

void sub_1D255EA98(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDC0, &unk_1D2881BE0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v27 - v7;
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  swift_getKeyPath();
  v11 = OBJC_IVAR____TtC23ImagePlaygroundInternal16_PeopleRetrieval___observationRegistrar;
  *&v33 = v2;
  v12 = sub_1D2564338();
  sub_1D28719E8();

  v13 = OBJC_IVAR____TtC23ImagePlaygroundInternal16_PeopleRetrieval__allPeople;
  swift_beginAccess();
  v14 = *(v2 + v13);
  v15 = *(v14 + 16);
  if (!v15)
  {
    return;
  }

  v27 = a1;
  v28 = v13;
  v29 = v12;
  v30 = v11;
  v31 = v3;
  v16 = v14 + 32;
  sub_1D2870F68();
  v17 = 0;
  while (1)
  {
    if (v17 >= *(v14 + 16))
    {
      __break(1u);
      goto LABEL_17;
    }

    sub_1D22D7044(v16, &v33);
    sub_1D22D7044(&v33, v32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAC08, &qword_1D288C9A0);
    v18 = type metadata accessor for PhotosPersonAsset(0);
    v19 = swift_dynamicCast();
    v20 = *(*(v18 - 8) + 56);
    if (!v19)
    {
      v20(v8, 1, 1, v18);
      sub_1D22BD238(v8, &unk_1EC6DDDC0, &unk_1D2881BE0);
      __swift_destroy_boxed_opaque_existential_0(&v33);
      goto LABEL_4;
    }

    v20(v8, 0, 1, v18);
    v22 = *(v8 + 2);
    v21 = *(v8 + 3);
    sub_1D2870F68();
    sub_1D2565154(v8, type metadata accessor for PhotosPersonAsset);
    if (v22 == v9 && v21 == v10)
    {
      break;
    }

    v23 = sub_1D2879618();

    __swift_destroy_boxed_opaque_existential_0(&v33);
    if (v23)
    {
      goto LABEL_13;
    }

LABEL_4:
    ++v17;
    v16 += 40;
    if (v15 == v17)
    {

      return;
    }
  }

  __swift_destroy_boxed_opaque_existential_0(&v33);
LABEL_13:

  swift_getKeyPath();
  v24 = v31;
  *&v33 = v31;
  sub_1D28719E8();

  *&v33 = v24;
  swift_getKeyPath();
  sub_1D2871A08();

  v25 = v28;
  swift_beginAccess();
  sub_1D23BBDBC(v17, &v33);
  __swift_destroy_boxed_opaque_existential_0(&v33);
  swift_endAccess();
  v32[0] = v24;
  swift_getKeyPath();
  sub_1D28719F8();

  v34 = v18;
  v35 = &protocol witness table for PhotosPersonAsset;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v33);
  sub_1D2565084(v27, boxed_opaque_existential_1, type metadata accessor for PhotosPersonAsset);
  swift_getKeyPath();
  v32[0] = v24;
  sub_1D28719E8();

  v32[0] = v24;
  swift_getKeyPath();
  sub_1D2871A08();

  swift_beginAccess();
  if (*(*(v24 + v25) + 16) >= v17)
  {
    sub_1D227268C(&v33, v32);
    sub_1D278BF14(v17, v17, v32);
    swift_endAccess();
    v32[0] = v24;
    swift_getKeyPath();
    sub_1D28719F8();

    return;
  }

LABEL_17:
  __break(1u);
}

uint64_t sub_1D255EF14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[37] = a3;
  v4[38] = v3;
  v4[35] = a1;
  v4[36] = a2;
  v5 = sub_1D2873CB8();
  v4[39] = v5;
  v4[40] = *(v5 - 8);
  v4[41] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDD60, &qword_1D2893770);
  v4[42] = swift_task_alloc();
  v6 = type metadata accessor for PhotosPersonImage(0);
  v4[43] = v6;
  v4[44] = *(v6 - 8);
  v4[45] = swift_task_alloc();
  v4[46] = swift_task_alloc();
  v7 = type metadata accessor for PhotosPersonAsset(0);
  v4[47] = v7;
  v4[48] = *(v7 - 8);
  v4[49] = swift_task_alloc();
  v4[50] = swift_task_alloc();
  v4[51] = swift_task_alloc();
  sub_1D2878568();
  v4[52] = sub_1D2878558();
  v9 = sub_1D28784F8();
  v4[53] = v9;
  v4[54] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1D255F120, v9, v8);
}

uint64_t sub_1D255F120()
{
  v54 = v0;
  v1 = *(v0 + 304);
  swift_getKeyPath();
  *(v0 + 272) = v1;
  sub_1D2564338();
  sub_1D28719E8();

  if (!swift_weakLoadStrong())
  {
    goto LABEL_18;
  }

  sub_1D23C6CA0();

  v2 = _SystemPhotoLibrary.photoLibrary.getter();
  *(v0 + 440) = v2;

  if (!v2)
  {
    goto LABEL_18;
  }

  sub_1D28667F0(*(v0 + 288), *(v0 + 296), v2);
  *(v0 + 448) = v3;
  if (!v3)
  {

LABEL_18:

    sub_1D28726B8();
    sub_1D2870F68();
    v31 = sub_1D2873CA8();
    v32 = sub_1D2878A18();

    v33 = os_log_type_enabled(v31, v32);
    v35 = *(v0 + 320);
    v34 = *(v0 + 328);
    v36 = *(v0 + 312);
    if (v33)
    {
      v38 = *(v0 + 288);
      v37 = *(v0 + 296);
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v53 = v40;
      *v39 = 136315138;
      *(v39 + 4) = sub_1D23D7C84(v38, v37, &v53);
      _os_log_impl(&dword_1D226E000, v31, v32, "Failed to find a pair of PHPerson and PHFace from an imported asset with identifier: %s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v40);
      MEMORY[0x1D38A3520](v40, -1, -1);
      MEMORY[0x1D38A3520](v39, -1, -1);
    }

    (*(v35 + 8))(v34, v36);
    (*(*(v0 + 384) + 56))(*(v0 + 280), 1, 1, *(v0 + 376));
    goto LABEL_21;
  }

  v5 = v3;
  *(v0 + 456) = v4;
  v51 = v4;
  v6 = [v4 localIdentifier];
  v7 = sub_1D28780A8();
  v9 = v8;

  v52 = v5;
  v10 = [v5 localIdentifier];
  v11 = sub_1D28780A8();
  v13 = v12;

  sub_1D2613084(v7, v9, v11, v13);

  result = sub_1D2554D28();
  v15 = result;
  v16 = *(result + 16);
  if (!v16)
  {
LABEL_16:
    v29 = *(v0 + 376);
    v28 = *(v0 + 384);
    v30 = *(v0 + 280);

    (*(v28 + 56))(v30, 1, 1, v29);
LABEL_21:

    v41 = *(v0 + 8);

    return v41();
  }

  v17 = 0;
  v18 = *(v0 + 384);
  v19 = *(v0 + 392);
  v20 = result + ((*(v18 + 80) + 32) & ~*(v18 + 80));
  while (1)
  {
    if (v17 >= *(v15 + 16))
    {
      __break(1u);
      return result;
    }

    v21 = sub_1D2565084(v20 + *(v18 + 72) * v17, *(v0 + 392), type metadata accessor for PhotosPersonAsset);
    if (!*(v19 + 56))
    {
      MEMORY[0x1D38A1860]();
LABEL_7:

      goto LABEL_8;
    }

    v22 = MEMORY[0x1D38A1860](v21);
    v24 = v23;
    v25 = MEMORY[0x1D38A1860]();
    if (!v24)
    {
      goto LABEL_7;
    }

    if (v22 == v25 && v24 == v26)
    {
      break;
    }

    v27 = sub_1D2879618();

    if (v27)
    {
      goto LABEL_25;
    }

LABEL_8:
    ++v17;
    result = sub_1D2565154(*(v0 + 392), type metadata accessor for PhotosPersonAsset);
    if (v16 == v17)
    {
      goto LABEL_16;
    }
  }

LABEL_25:

  v42 = *(v0 + 400);
  v43 = *(v0 + 408);
  sub_1D25650EC(*(v0 + 392), v42, type metadata accessor for PhotosPersonAsset);
  sub_1D25650EC(v42, v43, type metadata accessor for PhotosPersonAsset);
  v45 = v43[2];
  v44 = v43[3];
  v46 = v43[1];
  *(v0 + 16) = *v43;
  *(v0 + 32) = v46;
  *(v0 + 48) = v45;
  *(v0 + 64) = v44;
  v47 = *(v0 + 32);
  *(v0 + 80) = *(v0 + 16);
  *(v0 + 96) = v47;
  v48 = *(v0 + 64);
  *(v0 + 112) = *(v0 + 48);
  *(v0 + 128) = v48;
  sub_1D22D63B0(v0 + 16, v0 + 144);
  v49 = swift_task_alloc();
  *(v0 + 464) = v49;
  *v49 = v0;
  v49[1] = sub_1D255F684;
  v50 = *(v0 + 336);

  return sub_1D255983C(v50, (v0 + 80));
}

uint64_t sub_1D255F684()
{
  v1 = *v0;

  v2 = *(v1 + 432);
  v3 = *(v1 + 424);

  return MEMORY[0x1EEE6DFA0](sub_1D255F7A4, v3, v2);
}

uint64_t sub_1D255F7A4()
{
  v28 = v0;
  v1 = *(v0 + 344);
  v2 = *(v0 + 352);
  v3 = *(v0 + 336);

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v5 = *(v0 + 448);
    v4 = *(v0 + 456);
    v6 = *(v0 + 440);
    v7 = *(v0 + 376);
    v8 = *(v0 + 384);
    v9 = *(v0 + 336);
    v10 = *(v0 + 280);
    sub_1D2565154(*(v0 + 408), type metadata accessor for PhotosPersonAsset);

    sub_1D22D640C(v0 + 16);
    sub_1D22BD238(v9, &qword_1EC6DDD60, &qword_1D2893770);
    (*(v8 + 56))(v10, 1, 1, v7);
  }

  else
  {
    v24 = *(v0 + 448);
    v25 = *(v0 + 456);
    v23 = *(v0 + 440);
    v26 = *(v0 + 408);
    v11 = *(v0 + 376);
    v12 = *(v0 + 384);
    v14 = *(v0 + 360);
    v13 = *(v0 + 368);
    v15 = *(v0 + 280);
    sub_1D25650EC(*(v0 + 336), v13, type metadata accessor for PhotosPersonImage);
    sub_1D2565084(v13, v14, type metadata accessor for PhotosPersonImage);
    v16 = *(v0 + 64);
    v18 = *(v0 + 16);
    v17 = *(v0 + 32);
    v15[2] = *(v0 + 48);
    v15[3] = v16;
    *v15 = v18;
    v15[1] = v17;
    sub_1D25650EC(v14, v15 + v11[5], type metadata accessor for PhotosPersonImage);
    *(v15 + v11[6]) = 1;
    *(v15 + v11[7]) = 1;
    v19 = *(v0 + 32);
    v27[0] = *(v0 + 16);
    v27[1] = v19;
    v20 = *(v0 + 64);
    v27[2] = *(v0 + 48);
    v27[3] = v20;
    sub_1D22D63B0(v0 + 16, v0 + 208);
    sub_1D255EA98(v15, v27);

    sub_1D2565154(v13, type metadata accessor for PhotosPersonImage);
    sub_1D2565154(v26, type metadata accessor for PhotosPersonAsset);
    sub_1D22D640C(v0 + 16);
    (*(v12 + 56))(v15, 0, 1, v11);
  }

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_1D255FA4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 296) = a3;
  *(v5 + 304) = v4;
  *(v5 + 280) = a1;
  *(v5 + 288) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDD60, &qword_1D2893770);
  *(v5 + 312) = swift_task_alloc();
  v7 = type metadata accessor for PhotosPersonImage(0);
  *(v5 + 320) = v7;
  *(v5 + 328) = *(v7 - 8);
  *(v5 + 336) = swift_task_alloc();
  *(v5 + 344) = swift_task_alloc();
  v8 = type metadata accessor for PhotosPersonAsset(0);
  *(v5 + 352) = v8;
  *(v5 + 360) = *(v8 - 8);
  *(v5 + 368) = swift_task_alloc();
  *(v5 + 376) = swift_task_alloc();
  *(v5 + 384) = swift_task_alloc();
  *(v5 + 392) = *(a4 + 16);
  *(v5 + 408) = *(a4 + 56);
  sub_1D2878568();
  *(v5 + 416) = sub_1D2878558();
  v10 = sub_1D28784F8();
  *(v5 + 424) = v10;
  *(v5 + 432) = v9;

  return MEMORY[0x1EEE6DFA0](sub_1D255FC14, v10, v9);
}

uint64_t sub_1D255FC14()
{
  v1 = *(v0 + 304);
  swift_getKeyPath();
  *(v0 + 272) = v1;
  sub_1D2564338();
  sub_1D28719E8();

  if (!swift_weakLoadStrong())
  {
    goto LABEL_26;
  }

  sub_1D23C6CA0();

  v2 = _SystemPhotoLibrary.photoLibrary.getter();
  *(v0 + 440) = v2;

  if (!v2)
  {
    goto LABEL_26;
  }

  v3 = sub_1D2691E94(*(v0 + 288), *(v0 + 296), v2);
  *(v0 + 448) = v3;
  if (!v3)
  {

LABEL_26:
    v38 = *(v0 + 352);
    v39 = *(v0 + 360);
    v40 = *(v0 + 280);

    (*(v39 + 56))(v40, 1, 1, v38);
    goto LABEL_27;
  }

  v42 = v3;
  v4 = *(v0 + 392);
  v5 = *(v0 + 400);
  v6 = [v3 localIdentifier];
  v7 = sub_1D28780A8();
  v9 = v8;

  sub_1D2613084(v7, v9, v4, v5);

  result = sub_1D2554D28();
  v11 = result;
  v12 = *(result + 16);
  if (!v12)
  {
LABEL_24:
    v36 = *(v0 + 352);
    v35 = *(v0 + 360);
    v37 = *(v0 + 280);

    (*(v35 + 56))(v37, 1, 1, v36);
LABEL_27:

    v41 = *(v0 + 8);

    return v41();
  }

  v13 = 0;
  v14 = *(v0 + 408);
  v15 = *(v0 + 360);
  v43 = *(v0 + 368);
  v16 = result + ((*(v15 + 80) + 32) & ~*(v15 + 80));
  while (1)
  {
    if (v13 >= *(v11 + 16))
    {
      __break(1u);
      return result;
    }

    v17 = sub_1D2565084(v16 + *(v15 + 72) * v13, *(v0 + 368), type metadata accessor for PhotosPersonAsset);
    if (!*(v43 + 56))
    {
      if (!v14)
      {
        goto LABEL_21;
      }

      MEMORY[0x1D38A1860](v17);
LABEL_20:
      if (!v23)
      {
        goto LABEL_21;
      }

LABEL_7:

      goto LABEL_8;
    }

    v18 = MEMORY[0x1D38A1860](v17);
    v20 = v19;
    if (!v14)
    {
      if (!v19)
      {
        goto LABEL_21;
      }

      goto LABEL_7;
    }

    v21 = v18;
    v22 = MEMORY[0x1D38A1860]();
    if (!v20)
    {
      goto LABEL_20;
    }

    if (!v23)
    {
      goto LABEL_7;
    }

    if (v21 == v22 && v20 == v23)
    {
      break;
    }

    v24 = sub_1D2879618();

    if (v24)
    {
      goto LABEL_21;
    }

LABEL_8:
    ++v13;
    result = sub_1D2565154(*(v0 + 368), type metadata accessor for PhotosPersonAsset);
    if (v12 == v13)
    {
      goto LABEL_24;
    }
  }

LABEL_21:
  v25 = *(v0 + 376);
  v26 = *(v0 + 384);
  v27 = *(v0 + 368);

  sub_1D25650EC(v27, v25, type metadata accessor for PhotosPersonAsset);
  sub_1D25650EC(v25, v26, type metadata accessor for PhotosPersonAsset);
  v29 = v26[2];
  v28 = v26[3];
  v30 = v26[1];
  *(v0 + 16) = *v26;
  *(v0 + 32) = v30;
  *(v0 + 48) = v29;
  *(v0 + 64) = v28;
  v31 = *(v0 + 32);
  *(v0 + 80) = *(v0 + 16);
  *(v0 + 96) = v31;
  v32 = *(v0 + 64);
  *(v0 + 112) = *(v0 + 48);
  *(v0 + 128) = v32;
  sub_1D22D63B0(v0 + 16, v0 + 144);
  v33 = swift_task_alloc();
  *(v0 + 456) = v33;
  *v33 = v0;
  v33[1] = sub_1D2560064;
  v34 = *(v0 + 312);

  return sub_1D255983C(v34, (v0 + 80));
}

uint64_t sub_1D2560064()
{
  v1 = *v0;

  v2 = *(v1 + 432);
  v3 = *(v1 + 424);

  return MEMORY[0x1EEE6DFA0](sub_1D2560184, v3, v2);
}

uint64_t sub_1D2560184()
{
  v26 = v0;
  v1 = *(v0 + 320);
  v2 = *(v0 + 328);
  v3 = *(v0 + 312);

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v5 = *(v0 + 440);
    v4 = *(v0 + 448);
    v6 = *(v0 + 352);
    v7 = *(v0 + 360);
    v8 = *(v0 + 312);
    v9 = *(v0 + 280);
    sub_1D2565154(*(v0 + 384), type metadata accessor for PhotosPersonAsset);

    sub_1D22D640C(v0 + 16);
    sub_1D22BD238(v8, &qword_1EC6DDD60, &qword_1D2893770);
    (*(v7 + 56))(v9, 1, 1, v6);
  }

  else
  {
    v10 = *(v0 + 440);
    v23 = *(v0 + 448);
    v24 = *(v0 + 384);
    v11 = *(v0 + 352);
    v12 = *(v0 + 360);
    v14 = *(v0 + 336);
    v13 = *(v0 + 344);
    v15 = *(v0 + 280);
    sub_1D25650EC(*(v0 + 312), v13, type metadata accessor for PhotosPersonImage);
    sub_1D2565084(v13, v14, type metadata accessor for PhotosPersonImage);
    v16 = *(v0 + 64);
    v18 = *(v0 + 16);
    v17 = *(v0 + 32);
    v15[2] = *(v0 + 48);
    v15[3] = v16;
    *v15 = v18;
    v15[1] = v17;
    sub_1D25650EC(v14, v15 + v11[5], type metadata accessor for PhotosPersonImage);
    *(v15 + v11[6]) = 1;
    *(v15 + v11[7]) = 0;
    v19 = *(v0 + 32);
    v25[0] = *(v0 + 16);
    v25[1] = v19;
    v20 = *(v0 + 64);
    v25[2] = *(v0 + 48);
    v25[3] = v20;
    sub_1D22D63B0(v0 + 16, v0 + 208);
    sub_1D255EA98(v15, v25);

    sub_1D2565154(v13, type metadata accessor for PhotosPersonImage);
    sub_1D2565154(v24, type metadata accessor for PhotosPersonAsset);
    sub_1D22D640C(v0 + 16);
    (*(v12 + 56))(v15, 0, 1, v11);
  }

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_1D2560400(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  sub_1D2878568();
  v3[6] = sub_1D2878558();
  v5 = sub_1D28784F8();
  v3[7] = v5;
  v3[8] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1D256049C, v5, v4);
}

uint64_t sub_1D256049C()
{
  v1 = v0[5];
  swift_getKeyPath();
  v0[2] = v1;
  sub_1D2564338();
  sub_1D28719E8();

  if (swift_weakLoadStrong() && (sub_1D23C6CA0(), , v2 = _SystemPhotoLibrary.photoLibrary.getter(), v0[9] = v2, , v2))
  {
    v3 = swift_task_alloc();
    v0[10] = v3;
    *v3 = v0;
    v3[1] = sub_1D2560618;

    return sub_1D2867170(v2);
  }

  else
  {

    v5 = v0[1];

    return v5(0);
  }
}

uint64_t sub_1D2560618(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 88) = a1;

  v3 = *(v2 + 64);
  v4 = *(v2 + 56);

  return MEMORY[0x1EEE6DFA0](sub_1D2560740, v4, v3);
}

uint64_t sub_1D2560740()
{
  v1 = v0[11];

  if (v1)
  {
    v2 = v0[11];
    v4 = v0[3];
    v3 = v0[4];
    v5 = [v2 localIdentifier];
    v6 = sub_1D28780A8();
    v8 = v7;

    v9 = v6;
    v10 = v0[9];
    if (v9 == v4 && v8 == v3)
    {

      v12 = 1;
    }

    else
    {
      v12 = sub_1D2879618();
    }
  }

  else
  {
    v12 = 0;
    v10 = v0[9];
  }

  v13 = v0[1];

  return v13(v12 & 1);
}

uint64_t sub_1D2560848()
{
  swift_getKeyPath();
  sub_1D2564338();
  sub_1D28719E8();

  return sub_1D2870F78();
}

uint64_t sub_1D25608C4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D2564338();
  sub_1D28719E8();

  *a2 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal16_PeopleRetrieval__faceCropFetcher);
  return sub_1D2870F78();
}

uint64_t sub_1D2560948@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D2564338();
  sub_1D28719E8();

  *a2 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal16_PeopleRetrieval__peopleLoadingTask);
  return sub_1D2870F78();
}

double sub_1D25609CC@<D0>(uint64_t *a1@<X0>, void *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1D2564338();
  sub_1D28719E8();

  *a4 = *(v6 + *a3);
  sub_1D2870F68();
  return result;
}

double sub_1D2560A54(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  sub_1D2564338();
  sub_1D28719D8();

  return result;
}

uint64_t sub_1D2560AE0(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDD60, &qword_1D2893770);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v4 = type metadata accessor for PhotosPersonImage(0);
  v3[17] = v4;
  v3[18] = *(v4 - 8);
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  sub_1D2878568();
  v3[22] = sub_1D2878558();
  v6 = sub_1D28784F8();
  v3[23] = v6;
  v3[24] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1D2560C34, v6, v5);
}

uint64_t sub_1D2560C34()
{
  v1 = v0[14];
  swift_getKeyPath();
  v0[8] = v1;
  v0[25] = OBJC_IVAR____TtC23ImagePlaygroundInternal16_PeopleRetrieval___observationRegistrar;
  v0[26] = sub_1D2564338();
  sub_1D28719E8();

  v2 = OBJC_IVAR____TtC23ImagePlaygroundInternal16_PeopleRetrieval__faceImageCache;
  v0[27] = OBJC_IVAR____TtC23ImagePlaygroundInternal16_PeopleRetrieval__faceImageCache;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (*(v3 + 16))
  {
    v4 = v0[13];
    sub_1D2870F68();
    v5 = sub_1D25D0720(v4);
    if (v6)
    {
      v7 = v5;
      v8 = v0[21];
      v9 = v0[20];
      v10 = v0[18];
      v11 = v0[12];

      sub_1D2565084(*(v3 + 56) + *(v10 + 72) * v7, v9, type metadata accessor for PhotosPersonImage);

      sub_1D25650EC(v9, v8, type metadata accessor for PhotosPersonImage);
      sub_1D25650EC(v8, v11, type metadata accessor for PhotosPersonImage);
      (*(v10 + 56))(v0[12], 0, 1, v0[17]);

      v12 = v0[1];

      return v12();
    }
  }

  v14 = swift_task_alloc();
  v0[28] = v14;
  *v14 = v0;
  v14[1] = sub_1D2560E80;
  v15 = v0[16];
  v16 = v0[13];

  return sub_1D256288C(v15, v16);
}

uint64_t sub_1D2560E80()
{
  v1 = *v0;

  v2 = *(v1 + 192);
  v3 = *(v1 + 184);

  return MEMORY[0x1EEE6DFA0](sub_1D2560FA0, v3, v2);
}

uint64_t sub_1D2560FA0()
{
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[16];

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[18];
    sub_1D22BD238(v0[16], &qword_1EC6DDD60, &qword_1D2893770);
    v5 = *(v4 + 56);
    v6 = 1;
  }

  else
  {
    v7 = v0[18];
    v8 = v0[19];
    v9 = v0[17];
    v10 = v0[14];
    v11 = v0[15];
    v12 = v0[13];
    v17 = v0[12];
    sub_1D25650EC(v0[16], v8, type metadata accessor for PhotosPersonImage);
    sub_1D2565084(v8, v11, type metadata accessor for PhotosPersonImage);
    v16 = *(v7 + 56);
    v16(v11, 0, 1, v9);
    swift_getKeyPath();
    v0[9] = v10;
    v15 = v12;
    sub_1D28719E8();

    v0[10] = v10;
    swift_getKeyPath();
    sub_1D2871A08();

    swift_beginAccess();
    sub_1D25CE2C8(v11, v15);
    swift_endAccess();
    v0[11] = v10;
    swift_getKeyPath();
    sub_1D28719F8();

    sub_1D25650EC(v8, v17, type metadata accessor for PhotosPersonImage);
    v5 = v16;
    v6 = 0;
  }

  v5(v0[12], v6, 1, v0[17]);

  v13 = v0[1];

  return v13();
}

uint64_t sub_1D256126C(uint64_t a1, int a2, _OWORD *a3, void *a4, void *a5)
{
  v27 = a2;
  v26 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDD70, &unk_1D2893780);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60, &qword_1D28811F0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v26 - v14;
  v16 = sub_1D28785F8();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  (*(v10 + 16))(v12, a1, v9);
  sub_1D2878568();
  sub_1D22D63B0(a3, v28);
  v17 = a4;
  v18 = a5;
  v19 = sub_1D2878558();
  v20 = (*(v10 + 80) + 120) & ~*(v10 + 80);
  v21 = swift_allocObject();
  v22 = a3[1];
  *(v21 + 40) = *a3;
  *(v21 + 56) = v22;
  v23 = a3[3];
  *(v21 + 72) = a3[2];
  v24 = MEMORY[0x1E69E85E0];
  *(v21 + 16) = v19;
  *(v21 + 24) = v24;
  *(v21 + 32) = v27;
  *(v21 + 88) = v23;
  *(v21 + 104) = v17;
  *(v21 + 112) = v18;
  (*(v10 + 32))(v21 + v20, v12, v9);
  sub_1D22AE01C(0, 0, v15, &unk_1D2893798, v21);
  return sub_1D2878628();
}

uint64_t sub_1D25614E8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[14] = a7;
  v8[15] = a8;
  v8[12] = a5;
  v8[13] = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDD88, &qword_1D28937A8);
  v8[16] = v11;
  v8[17] = *(v11 - 8);
  v8[18] = swift_task_alloc();
  v8[19] = type metadata accessor for PhotosPersonAsset(0);
  v8[20] = swift_task_alloc();
  v8[21] = swift_task_alloc();
  v12 = type metadata accessor for PhotosPersonImage(0);
  v8[22] = v12;
  v8[23] = *(v12 - 8);
  v8[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDD60, &qword_1D2893770);
  v8[25] = swift_task_alloc();
  v8[26] = swift_task_alloc();
  v8[27] = sub_1D2878568();
  v8[28] = sub_1D2878558();
  v13 = type metadata accessor for FaceFetcher();
  v14 = *(a5 + 16);
  v15 = *(a5 + 24);
  v8[29] = v13;
  v8[30] = v14;
  v8[31] = v15;
  if (a4)
  {
    v16 = sub_1D25616E4;
  }

  else
  {
    v16 = sub_1D2561CA4;
  }

  return MEMORY[0x1EEE6DFA0](v16, 0, 0);
}

uint64_t sub_1D25616E4()
{
  v1 = *(v0 + 248);
  v7 = *(v0 + 232);
  v2 = *(v0 + 104);
  v3 = swift_task_alloc();
  *(v0 + 256) = v3;
  *(v3 + 16) = v7;
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;
  *(v3 + 48) = 24;
  *(v3 + 56) = 0;
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDD90, &qword_1D28937B0);
  *v4 = v0;
  v4[1] = sub_1D256180C;

  return MEMORY[0x1EEE6DDE0](v0 + 88, 0, 0, 0xD00000000000001BLL, 0x80000001D28BA9E0, sub_1D25651E4, v3, v5);
}

uint64_t sub_1D256180C()
{

  return MEMORY[0x1EEE6DFA0](sub_1D2561924, 0, 0);
}

uint64_t sub_1D2561924()
{
  *(v0 + 272) = *(v0 + 88);
  v2 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D25619A4, v2, v1);
}

uint64_t sub_1D25619A4()
{
  v1 = v0[34];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = MEMORY[0x1E69E7CC0];
    v20 = MEMORY[0x1E69E7CC0];
    sub_1D2879258();
    v4 = 32;
    v5 = v2;
    do
    {
      v6 = *(v1 + v4);
      sub_1D2879228();
      sub_1D2879268();
      sub_1D2879278();
      sub_1D2879238();
      v4 += 16;
      --v5;
    }

    while (v5);
    v7 = v20;
    sub_1D23D89F4(0, v2, 0);
    v8 = v3;
    v9 = *(v3 + 16);
    v10 = 40;
    do
    {
      v11 = *(v1 + v10);
      v12 = *(v8 + 24);
      if (v9 >= v12 >> 1)
      {
        sub_1D23D89F4((v12 > 1), v9 + 1, 1);
      }

      *(v8 + 16) = v9 + 1;
      *(v8 + v9 + 32) = v11;
      v10 += 16;
      ++v9;
      --v2;
    }

    while (v2);
  }

  else
  {

    v8 = MEMORY[0x1E69E7CC0];
    v7 = MEMORY[0x1E69E7CC0];
  }

  v0[38] = v8;
  v0[39] = v7;
  if (v7 >> 62)
  {
    result = sub_1D2879368();
    v0[40] = result;
    if (result)
    {
      goto LABEL_12;
    }

LABEL_19:

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDD70, &unk_1D2893780);
    sub_1D2878648();

    v19 = v0[1];

    return v19();
  }

  result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v0[40] = result;
  if (!result)
  {
    goto LABEL_19;
  }

LABEL_12:
  v0[41] = 0;
  v14 = v0[39];
  if ((v14 & 0xC000000000000001) != 0)
  {
    v15 = MEMORY[0x1D38A1C30](0);
  }

  else
  {
    if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v15 = *(v14 + 32);
  }

  v16 = v15;
  v0[42] = v15;
  v0[43] = 1;
  v17 = swift_task_alloc();
  v0[44] = v17;
  *v17 = v0;
  v17[1] = sub_1D2562264;
  v18 = v0[26];

  return sub_1D2560AE0(v18, v16);
}

uint64_t sub_1D2561CA4()
{
  v1 = *(v0 + 248);
  v7 = *(v0 + 232);
  v2 = *(v0 + 104);
  v3 = swift_task_alloc();
  *(v0 + 280) = v3;
  *(v3 + 16) = v7;
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;
  *(v3 + 48) = 0;
  *(v3 + 56) = 1;
  v4 = swift_task_alloc();
  *(v0 + 288) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDD90, &qword_1D28937B0);
  *v4 = v0;
  v4[1] = sub_1D2561DCC;

  return MEMORY[0x1EEE6DDE0](v0 + 80, 0, 0, 0xD00000000000001BLL, 0x80000001D28BA9E0, sub_1D2564628, v3, v5);
}

uint64_t sub_1D2561DCC()
{

  return MEMORY[0x1EEE6DFA0](sub_1D2561EE4, 0, 0);
}

uint64_t sub_1D2561EE4()
{
  *(v0 + 296) = *(v0 + 80);
  v2 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D2561F64, v2, v1);
}

uint64_t sub_1D2561F64()
{
  v1 = v0[37];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = MEMORY[0x1E69E7CC0];
    v20 = MEMORY[0x1E69E7CC0];
    sub_1D2879258();
    v4 = 32;
    v5 = v2;
    do
    {
      v6 = *(v1 + v4);
      sub_1D2879228();
      sub_1D2879268();
      sub_1D2879278();
      sub_1D2879238();
      v4 += 16;
      --v5;
    }

    while (v5);
    v7 = v20;
    sub_1D23D89F4(0, v2, 0);
    v8 = v3;
    v9 = *(v3 + 16);
    v10 = 40;
    do
    {
      v11 = *(v1 + v10);
      v12 = *(v8 + 24);
      if (v9 >= v12 >> 1)
      {
        sub_1D23D89F4((v12 > 1), v9 + 1, 1);
      }

      *(v8 + 16) = v9 + 1;
      *(v8 + v9 + 32) = v11;
      v10 += 16;
      ++v9;
      --v2;
    }

    while (v2);
  }

  else
  {

    v8 = MEMORY[0x1E69E7CC0];
    v7 = MEMORY[0x1E69E7CC0];
  }

  v0[38] = v8;
  v0[39] = v7;
  if (v7 >> 62)
  {
    result = sub_1D2879368();
    v0[40] = result;
    if (result)
    {
      goto LABEL_12;
    }

LABEL_19:

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDD70, &unk_1D2893780);
    sub_1D2878648();

    v19 = v0[1];

    return v19();
  }

  result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v0[40] = result;
  if (!result)
  {
    goto LABEL_19;
  }

LABEL_12:
  v0[41] = 0;
  v14 = v0[39];
  if ((v14 & 0xC000000000000001) != 0)
  {
    v15 = MEMORY[0x1D38A1C30](0);
  }

  else
  {
    if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v15 = *(v14 + 32);
  }

  v16 = v15;
  v0[42] = v15;
  v0[43] = 1;
  v17 = swift_task_alloc();
  v0[44] = v17;
  *v17 = v0;
  v17[1] = sub_1D2562264;
  v18 = v0[26];

  return sub_1D2560AE0(v18, v16);
}

uint64_t sub_1D2562264()
{

  v1 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D25623A0, v1, v0);
}

id sub_1D25623A0()
{
  v2 = v0 + 25;
  v1 = v0[25];
  v3 = v0[22];
  v4 = v0[23];
  sub_1D256462C(v0[26], v1);
  if ((*(v4 + 48))(v1, 1, v3) == 1)
  {
    v5 = v0[42];
    sub_1D22BD238(v0[26], &qword_1EC6DDD60, &qword_1D2893770);
  }

  else
  {
    v6 = v0[41];
    v7 = v0[38];
    v8 = v0[24];
    v9 = v0[21];
    v10 = v0[19];
    sub_1D25650EC(v0[25], v8, type metadata accessor for PhotosPersonImage);
    sub_1D2565084(v8, v9 + *(v10 + 20), type metadata accessor for PhotosPersonImage);
    if (v6 >= *(v7 + 16))
    {
      __break(1u);
LABEL_17:
      result = MEMORY[0x1D38A1C30](v6);
      goto LABEL_12;
    }

    v30 = v0[42];
    v31 = v0[24];
    v12 = v0[20];
    v11 = v0[21];
    v14 = v0[18];
    v13 = v0[19];
    v15 = v0[17];
    v29 = v0[16];
    v16 = v0[12];
    v17 = *(v0[38] + v0[41] + 32);
    v18 = *v16;
    v19 = v16[1];
    v20 = v16[3];
    v11[2] = v16[2];
    v11[3] = v20;
    *v11 = v18;
    v11[1] = v19;
    *(v11 + *(v13 + 24)) = v17;
    *(v11 + *(v13 + 28)) = 0;
    sub_1D2565084(v11, v12, type metadata accessor for PhotosPersonAsset);
    sub_1D22D63B0(v16, (v0 + 2));
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDD70, &unk_1D2893780);
    sub_1D2878638();

    (*(v15 + 8))(v14, v29);
    sub_1D2565154(v11, type metadata accessor for PhotosPersonAsset);
    sub_1D2565154(v31, type metadata accessor for PhotosPersonImage);
    v2 = v0 + 26;
  }

  v21 = v0[43];
  v22 = v0[40];
  result = sub_1D22BD238(*v2, &qword_1EC6DDD60, &qword_1D2893770);
  if (v21 == v22)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDD70, &unk_1D2893780);
    sub_1D2878648();

    v24 = v0[1];

    return v24();
  }

  v6 = v0[43];
  v0[41] = v6;
  v25 = v0[39];
  if ((v25 & 0xC000000000000001) != 0)
  {
    goto LABEL_17;
  }

  if (v6 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_19:
    __break(1u);
    return result;
  }

  result = *(v25 + 8 * v6 + 32);
LABEL_12:
  v26 = result;
  v0[42] = result;
  v0[43] = v6 + 1;
  if (__OFADD__(v6, 1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v27 = swift_task_alloc();
  v0[44] = v27;
  *v27 = v0;
  v27[1] = sub_1D2562264;
  v28 = v0[26];

  return sub_1D2560AE0(v28, v26);
}

uint64_t sub_1D2562750(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDD80, &qword_1D28937A0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  (*(v3 + 104))(&v9 - v5, *MEMORY[0x1E69E8618], v2, v4);
  type metadata accessor for PhotosPersonAsset(0);
  v7 = sub_1D2878618();
  result = (*(v3 + 8))(v6, v2);
  if (v7)
  {
    return sub_1D28786B8();
  }

  return result;
}

uint64_t sub_1D256288C(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v3[6] = sub_1D2878568();
  v3[7] = sub_1D2878558();
  v5 = sub_1D28784F8();
  v3[8] = v5;
  v3[9] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1D256292C, v5, v4);
}

uint64_t sub_1D256292C()
{
  v1 = v0[5];
  swift_getKeyPath();
  v0[2] = v1;
  sub_1D2564338();
  sub_1D28719E8();

  v0[10] = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal16_PeopleRetrieval__faceCropFetcher);
  sub_1D2870F78();
  v0[11] = sub_1D2878558();
  v3 = sub_1D28784F8();
  v0[12] = v3;
  v0[13] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1D2562A1C, v3, v2);
}

uint64_t sub_1D2562A1C()
{
  v1 = v0[4];
  v2 = *(v0[10] + 32);
  sub_1D2878CC8();
  v5 = [objc_allocWithZone(MEMORY[0x1E69C3780]) initWithFace:v1 targetSize:v3 displayScale:{v4, v2}];
  v0[14] = v5;
  [v5 setCornerStyle_];
  v6 = swift_task_alloc();
  v0[15] = v6;
  *v6 = v0;
  v6[1] = sub_1D2562B28;
  v7 = v0[3];

  return sub_1D268764C(v7, v5);
}

uint64_t sub_1D2562B28()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 96);
    v4 = *(v2 + 104);
    v5 = sub_1D2562D24;
  }

  else
  {
    v3 = *(v2 + 96);
    v4 = *(v2 + 104);
    v5 = sub_1D2562C4C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1D2562C4C()
{

  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return MEMORY[0x1EEE6DFA0](sub_1D2562CC4, v1, v2);
}

uint64_t sub_1D2562CC4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D2562D24()
{

  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return MEMORY[0x1EEE6DFA0](sub_1D2562D9C, v1, v2);
}

uint64_t sub_1D2562D9C()
{
  v1 = *(v0 + 24);

  v2 = type metadata accessor for PhotosPersonImage(0);
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t type metadata accessor for _PeopleRetrieval(uint64_t a1)
{
  result = qword_1ED8A31F8;
  if (!qword_1ED8A31F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D2562FD0(uint64_t a1)
{
  result = sub_1D2871A28();
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

void sub_1D25630B8(_OWORD *a1)
{
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;
  v2 = a1[3];
  v3[2] = a1[2];
  v3[3] = v2;
  sub_1D255AA0C(v3, 0);
}

void sub_1D25630FC(_OWORD *a1)
{
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;
  v2 = a1[3];
  v3[2] = a1[2];
  v3[3] = v2;
  sub_1D255AA0C(v3, 1);
}

BOOL sub_1D2563140(_OWORD *a1)
{
  v1 = a1[1];
  v4[0] = *a1;
  v4[1] = v1;
  v2 = a1[3];
  v4[2] = a1[2];
  v4[3] = v2;
  return sub_1D26134C8(v4);
}

uint64_t sub_1D25631C0(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 16) = a2;
  *(v4 + 24) = a3;
  *(v4 + 96) = a1;
  *(v4 + 32) = *v3;
  *(v4 + 40) = sub_1D2878568();
  *(v4 + 48) = sub_1D2878558();
  v6 = sub_1D28784F8();
  *(v4 + 56) = v6;
  *(v4 + 64) = v5;

  return MEMORY[0x1EEE6DFA0](sub_1D2563268, v6, v5);
}

uint64_t sub_1D2563268(uint64_t a1)
{
  v2 = *(v1 + 32);
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 96);
  v6 = sub_1D2878558();
  *(v1 + 72) = v6;
  v7 = swift_task_alloc();
  *(v1 + 80) = v7;
  *(v7 + 16) = v2;
  *(v7 + 24) = v5;
  *(v7 + 32) = v4;
  *(v7 + 40) = v3;
  v8 = swift_task_alloc();
  *(v1 + 88) = v8;
  *v8 = v1;
  v8[1] = sub_1D256338C;
  v9 = MEMORY[0x1E69E85E0];
  v10 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DDE0](v8, v6, v9, 0xD000000000000022, 0x80000001D28BAA50, sub_1D2564EB0, v7, v10);
}

uint64_t sub_1D256338C()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return MEMORY[0x1EEE6DFA0](sub_1D25634EC, v3, v2);
}

uint64_t sub_1D25634EC()
{

  v1 = *(v0 + 8);

  return v1();
}

double sub_1D256354C(uint64_t a1)
{
  swift_getKeyPath();
  sub_1D2564338();
  sub_1D28719D8();

  return sub_1D255B4E8(1, 0xD000000000000026, 0x80000001D28BAA20);
}

BOOL sub_1D2563614()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_1D2564338();
  sub_1D28719E8();

  return *(*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal16_PeopleRetrieval__contextualHandles) + 16) != 0;
}

uint64_t sub_1D2563698()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D22BDFF8;

  return sub_1D255E4F4();
}

BOOL sub_1D25637A8()
{
  v0 = sub_1D2554D28()[2];

  return v0 != 0;
}

double sub_1D25637F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  swift_getKeyPath();
  sub_1D2564338();
  sub_1D28719E8();

  swift_beginAccess();
  sub_1D2870F68();
  return result;
}

uint64_t sub_1D25638A0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D22BDFF8;

  return sub_1D2554484(a1);
}

uint64_t sub_1D256393C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D22BDFF8;

  return sub_1D2553994(a1, a2, a3);
}

uint64_t sub_1D2563A14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D22BC8FC;

  return sub_1D255EF14(a1, a2, a3);
}

uint64_t sub_1D2563AC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1D22BDFF8;

  return sub_1D255FA4C(a1, a2, a3, a4);
}

uint64_t sub_1D2563B8C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D2553898;

  return sub_1D2560400(a1, a2);
}

char *sub_1D2563C34@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  v5 = objc_allocWithZone(v2);
  result = sub_1D2557E9C(a1);
  *a2 = result;
  return result;
}

double sub_1D2563C78(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60, &qword_1D28811F0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v21 - v5;
  v7 = sub_1D2873CB8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D28726B8();
  v11 = sub_1D2873CA8();
  v12 = sub_1D28789F8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1D226E000, v11, v12, "photoLibraryDidChange", v13, 2u);
    MEMORY[0x1D38A3520](v13, -1, -1);
  }

  (*(v8 + 8))(v10, v7);
  v14 = sub_1D28785F8();
  (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
  sub_1D2878568();
  v15 = v2;
  v16 = a1;
  v17 = sub_1D2878558();
  v18 = swift_allocObject();
  v19 = MEMORY[0x1E69E85E0];
  v18[2] = v17;
  v18[3] = v19;
  v18[4] = v15;
  v18[5] = v16;
  sub_1D22AE01C(0, 0, v6, &unk_1D2893968, v18);

  return result;
}

uint64_t sub_1D2563EC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = sub_1D2873CB8();
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  v5[8] = swift_task_alloc();
  sub_1D2878568();
  v5[9] = sub_1D2878558();
  v8 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D2563FC4, v8, v7);
}

uint64_t sub_1D2563FC4()
{
  v1 = v0[3];

  swift_getKeyPath();
  v0[2] = v1;
  sub_1D2564338();
  sub_1D28719E8();

  v2 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal16_PeopleRetrieval__observablePHFetchResults);
  if (v2 >> 62)
  {
LABEL_24:
    v3 = sub_1D2879368();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1D2870F68();
  if (v3)
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1D38A1C30](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      sub_1D2564F80();
      v8 = sub_1D2878DD8();
      if (v8)
      {
        break;
      }

      ++v4;
      if (v7 == v3)
      {
        goto LABEL_13;
      }
    }

    v9 = v8;

    sub_1D28726B8();
    v10 = sub_1D2873CA8();
    v11 = sub_1D28789F8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1D226E000, v10, v11, "photoLibraryDidChange: will call loadAllPeopleInBackground(forceReload: true)", v12, 2u);
      MEMORY[0x1D38A3520](v12, -1, -1);
    }

    v13 = v0[8];
    v14 = v0[5];
    v15 = v0[6];

    v16 = *(v15 + 8);
    v16(v13, v14);
    sub_1D255B4E8(1, 0xD000000000000019, 0x80000001D28BAA80);
    sub_1D28726B8();
    v17 = sub_1D2873CA8();
    v18 = sub_1D28789F8();
    v19 = os_log_type_enabled(v17, v18);
    v20 = v0[7];
    v21 = v0[5];
    if (v19)
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1D226E000, v17, v18, "photoLibraryDidChange: did call loadAllPeopleInBackground(forceReload: true)", v22, 2u);
      MEMORY[0x1D38A3520](v22, -1, -1);
    }

    v16(v20, v21);
  }

  else
  {
LABEL_13:
  }

  v23 = v0[1];

  return v23();
}

unint64_t sub_1D2564338()
{
  result = qword_1ED8A3208;
  if (!qword_1ED8A3208)
  {
    type metadata accessor for _PeopleRetrieval(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8A3208);
  }

  return result;
}

uint64_t sub_1D2564390(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_1D227268C(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_1D2564504(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDD70, &unk_1D2893780) - 8);
  v5 = (*(v4 + 80) + 120) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 104);
  v10 = *(v1 + 112);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1D22BDFF8;

  return sub_1D25614E8(a1, v6, v7, v8, v1 + 40, v9, v10, v1 + v5);
}

uint64_t sub_1D256462C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDD60, &qword_1D2893770);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D25646B0()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC23ImagePlaygroundInternal16_PeopleRetrieval__faceCropFetcher) = *(v0 + 24);
  sub_1D2870F78();
}

uint64_t sub_1D25646F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D22BDFF8;

  return sub_1D255B8F8(a1, v4, v5, v6);
}

double sub_1D2564808(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

void sub_1D2564848()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC23ImagePlaygroundInternal16_PeopleRetrieval__peopleLoadingTask) = *(v0 + 24);
  sub_1D2870F78();
}

uint64_t sub_1D256488C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D22BC8FC;

  return sub_1D255B8F8(a1, v4, v5, v6);
}

void sub_1D2564940(int64_t a1, int64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v7 = a2;
  v8 = a1;
  v9 = 0;
  v10 = a1;
  while (1)
  {
    v11 = v10 <= a2;
    if (a3 > 0)
    {
      v11 = v10 >= a2;
    }

    if (v11)
    {
      break;
    }

    v12 = __OFADD__(v10, a3);
    v10 += a3;
    if (v12)
    {
      v10 = (v10 >> 63) ^ 0x8000000000000000;
    }

    v12 = __OFADD__(v9++, 1);
    if (v12)
    {
      __break(1u);
      break;
    }
  }

  v35 = MEMORY[0x1E69E7CC0];
  sub_1D23D89B4(0, v9, 0);
  v34 = v7;
  if (v9)
  {
    v13 = a4[2];
    v14 = a5;
    while (1)
    {
      v15 = v8 <= v7;
      if (a3 > 0)
      {
        v15 = v8 >= v7;
      }

      if (v15)
      {
        break;
      }

      if (__OFADD__(v8, a3))
      {
        v16 = ((v8 + a3) >> 63) ^ 0x8000000000000000;
      }

      else
      {
        v16 = v8 + a3;
      }

      v17 = v8 + v14;
      if (__OFADD__(v8, v14))
      {
        goto LABEL_58;
      }

      if (v13 < v17)
      {
        v17 = v13;
      }

      v18 = v17 - v8;
      if (v17 < v8)
      {
        goto LABEL_59;
      }

      if (v8 < 0)
      {
        goto LABEL_60;
      }

      if (v13 == v18)
      {
        sub_1D2870F68();
        v19 = a4;
      }

      else
      {
        v19 = MEMORY[0x1E69E7CC0];
        if (v17 != v8)
        {
          if (v18 >= 1)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DABE8, &qword_1D28938F0);
            v19 = swift_allocObject();
            v22 = _swift_stdlib_malloc_size(v19);
            v19[2] = v18;
            v19[3] = 2 * ((v22 - 32) / 48);
          }

          swift_arrayInitWithCopy();
          v14 = a5;
        }
      }

      v21 = *(v35 + 16);
      v20 = *(v35 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_1D23D89B4((v20 > 1), v21 + 1, 1);
        v14 = a5;
      }

      *(v35 + 16) = v21 + 1;
      *(v35 + 8 * v21 + 32) = v19;
      v8 = v16;
      --v9;
      v7 = v34;
      if (!v9)
      {
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v16 = v8;
  v14 = a5;
LABEL_34:
  v23 = v16 <= v7;
  if (a3 > 0)
  {
    v23 = v16 >= v7;
  }

  if (!v23)
  {
    while (1)
    {
      v24 = __OFADD__(v16, a3) ? ((v16 + a3) >> 63) ^ 0x8000000000000000 : v16 + a3;
      v25 = v16 + v14;
      if (__OFADD__(v16, v14))
      {
        break;
      }

      v26 = a4[2];
      if (v26 < v25)
      {
        v25 = a4[2];
      }

      v27 = v25 - v16;
      if (v25 < v16)
      {
        goto LABEL_62;
      }

      if (v16 < 0)
      {
        goto LABEL_63;
      }

      if (v26 == v27)
      {
        sub_1D2870F68();
        v28 = a4;
      }

      else
      {
        v28 = MEMORY[0x1E69E7CC0];
        if (v25 != v16)
        {
          if (v27 >= 1)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DABE8, &qword_1D28938F0);
            v28 = swift_allocObject();
            v32 = _swift_stdlib_malloc_size(v28);
            v28[2] = v27;
            v28[3] = 2 * ((v32 - 32) / 48);
          }

          swift_arrayInitWithCopy();
          v14 = a5;
        }
      }

      v30 = *(v35 + 16);
      v29 = *(v35 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_1D23D89B4((v29 > 1), v30 + 1, 1);
        v14 = a5;
      }

      *(v35 + 16) = v30 + 1;
      *(v35 + 8 * v30 + 32) = v28;
      v31 = v24 <= v34;
      if (a3 > 0)
      {
        v31 = v24 >= v34;
      }

      v16 = v24;
      if (v31)
      {
        return;
      }
    }

LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
  }
}

void sub_1D2564E6C(void *a1)
{
  *(*(v1 + 16) + *a1) = *(v1 + 24);
  sub_1D2870F68();
}

uint64_t sub_1D2564EC0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D22BDFF8;

  return sub_1D2563EC4(a1, v4, v5, v7, v6);
}

unint64_t sub_1D2564F80()
{
  result = qword_1ED89CC40;
  if (!qword_1ED89CC40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED89CC40);
  }

  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D2564FE0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_1D2565028(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D2565084(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D25650EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D2565154(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D2565218@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D256F600(&qword_1ED8A2520, type metadata accessor for ComposingViewModel, &protocol conformance descriptor for ComposingViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + 24);
  return sub_1D2870F78();
}

double sub_1D25652C4(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1D256F600(&qword_1ED8A2520, type metadata accessor for ComposingViewModel, &protocol conformance descriptor for ComposingViewModel);
  sub_1D28719D8();

  return result;
}

uint64_t sub_1D2565390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60, &qword_1D28811F0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  sub_1D22BD1D0(a3, v22 - v9, &qword_1EC6D8E60, &qword_1D28811F0);
  v11 = sub_1D28785F8();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);
  sub_1D2870F78();
  if (v13 == 1)
  {
    sub_1D22BD238(v10, &qword_1EC6D8E60, &qword_1D28811F0);
  }

  else
  {
    sub_1D28785E8();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1D28784F8();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1D2878138() + 32;
      sub_1D2870F78();
      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

void sub_1D25655FC(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D256F600(&qword_1ED8A2520, type metadata accessor for ComposingViewModel, &protocol conformance descriptor for ComposingViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__shouldPrewarmKeyFaces);
}

void sub_1D25656D4(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D256F600(&qword_1EC6D87B0, type metadata accessor for NavigationManager, &unk_1D28823E0);
  sub_1D28719E8();

  *a2 = *(v3 + 16);
}

void sub_1D25657A4(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D256F600(&qword_1EC6D87B0, type metadata accessor for NavigationManager, &unk_1D28823E0);
  sub_1D28719E8();

  *a2 = *(v3 + 17);
}

void sub_1D2565874(char a1)
{
  if (*(v1 + 98) == (a1 & 1))
  {
    *(v1 + 98) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D256F600(&qword_1EC6D8A80, type metadata accessor for PlaygroundHomeViewModel, &protocol conformance descriptor for PlaygroundHomeViewModel);
    sub_1D28719D8();
  }
}

void sub_1D2565984(char a1)
{
  if (*(v1 + 99) == (a1 & 1))
  {
    *(v1 + 99) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D256F600(&qword_1EC6D8A80, type metadata accessor for PlaygroundHomeViewModel, &protocol conformance descriptor for PlaygroundHomeViewModel);
    sub_1D28719D8();
  }
}

void sub_1D2565A94(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_1D256F600(&qword_1EC6D8A80, type metadata accessor for PlaygroundHomeViewModel, &protocol conformance descriptor for PlaygroundHomeViewModel);
  sub_1D28719E8();

  *a1 = *(v1 + 74);
}

Swift::Void __swiftcall PlaygroundHomeViewModel.setUndoManager(_:)(NSUndoManager_optional a1)
{
  isa = a1.value.super.isa;
  v3 = *(v1 + 104);
  v4 = *(v3 + 16);
  if (v4)
  {
    [v4 removeAllActions];
    v6 = *(v3 + 16);
  }

  else
  {
    v6 = 0;
  }

  *(v3 + 16) = isa;
  v5 = isa;
}

uint64_t PlaygroundHomeViewModel.photoGridViewModel.getter()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    v1 = sub_1D2565C20(v0);
    *(v0 + 24) = v1;
    sub_1D2870F78();
  }

  sub_1D2870F78();
  return v1;
}

double PlaygroundHomeViewModel.photoGridViewModel.setter(uint64_t a1)
{
  *(v1 + 24) = a1;

  return result;
}

uint64_t sub_1D2565C20(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 104);
  swift_getKeyPath();
  sub_1D256F600(&qword_1EC6D8A80, type metadata accessor for PlaygroundHomeViewModel, &protocol conformance descriptor for PlaygroundHomeViewModel);
  sub_1D28719E8();

  v15 = *(a1 + 74);
  v4 = *(a1 + 100);
  type metadata accessor for PhotoGridViewModel(0);
  v5 = swift_allocObject();
  *(v5 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + 56) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + 72) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + 80) = 1;
  *(v5 + 97) = 1;
  v6 = OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__suggestedSelectedAssetID;
  v7 = sub_1D2871818();
  v8 = *(*(v7 - 8) + 56);
  v8(v5 + v6, 1, 1, v7);
  v9 = (v5 + OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__gridSize);
  *v9 = 0;
  v9[1] = 0;
  v10 = MEMORY[0x1E69E7CC0];
  *(v5 + OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__assets) = MEMORY[0x1E69E7CC0];
  v8(v5 + OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__gridScrollAssetID, 1, 1, v7);
  *(v5 + OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__filterFavorites) = 0;
  *(v5 + OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__viewIsEnabled) = 1;
  *(v5 + OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__gridElementViewModels) = v10;
  *(v5 + OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__selectedExportableAssetsCache) = MEMORY[0x1E69E7CC8];
  sub_1D2871A18();
  *(v5 + 16) = v2;
  *(v5 + 88) = v3;
  *(v5 + 96) = v4;
  *(v5 + 24) = v15;
  *(v5 + 72) = &protocol witness table for PlaygroundHomeViewModel;
  swift_unknownObjectWeakAssign();
  v11 = qword_1EC6D8B40;
  sub_1D2870F78();
  sub_1D2870F78();
  if (v11 != -1)
  {
    swift_once();
  }

  v12 = qword_1EC6D8B50;
  v13 = sub_1D2870F78();
  sub_1D2581C34(v13, v12);

  *(v5 + 56) = &off_1F4DCAB08;
  swift_unknownObjectWeakAssign();
  return v5;
}

double (*PlaygroundHomeViewModel.photoGridViewModel.modify(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = PlaygroundHomeViewModel.photoGridViewModel.getter();
  return sub_1D2565F08;
}

double sub_1D2565F08(uint64_t *a1)
{
  *(a1[1] + 24) = *a1;

  return result;
}

uint64_t sub_1D2565F18()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 32);
  }

  else
  {
    v1 = sub_1D2565F78(v0);
    *(v0 + 32) = v1;
    sub_1D2870F78();
  }

  sub_1D2870F78();
  return v1;
}

uint64_t sub_1D2565F78(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 104);
  type metadata accessor for DetailViewModel(0);
  swift_allocObject();
  sub_1D2870F78();
  sub_1D2870F78();
  v3 = sub_1D2719F20(v1, v2);

  swift_getKeyPath();
  sub_1D256F600(&qword_1EC6D8880, type metadata accessor for DetailViewModel, &unk_1D28A1018);
  sub_1D28719D8();

  return v3;
}

uint64_t PlaygroundHomeViewModel.composingViewDidAppear.getter()
{
  v1 = *(v0 + 16);
  swift_getKeyPath();
  sub_1D256F600(&qword_1ED8A2520, type metadata accessor for ComposingViewModel, &protocol conformance descriptor for ComposingViewModel);
  sub_1D28719E8();

  return *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__didAppear);
}

uint64_t sub_1D2566150()
{
  swift_getKeyPath();
  sub_1D256F600(&qword_1EC6D8A80, type metadata accessor for PlaygroundHomeViewModel, &protocol conformance descriptor for PlaygroundHomeViewModel);
  sub_1D28719E8();

  return sub_1D2870F78();
}

uint64_t sub_1D25661F4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D256F600(&qword_1EC6D8A80, type metadata accessor for PlaygroundHomeViewModel, &protocol conformance descriptor for PlaygroundHomeViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + 64);
  return sub_1D2870F78();
}

double sub_1D25662A0(uint64_t a1)
{
  if (!*(v1 + 64))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D256F600(&qword_1EC6D8A80, type metadata accessor for PlaygroundHomeViewModel, &protocol conformance descriptor for PlaygroundHomeViewModel);
    sub_1D28719D8();

    return result;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1D2870F78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94B0, &unk_1D287D430);
  v3 = sub_1D2878698();

  if ((v3 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + 64) = a1;

  return result;
}

uint64_t sub_1D256643C()
{
  swift_getKeyPath();
  sub_1D256F600(&qword_1EC6D8A80, type metadata accessor for PlaygroundHomeViewModel, &protocol conformance descriptor for PlaygroundHomeViewModel);
  sub_1D28719E8();

  return *(v0 + 72);
}

void sub_1D25664DC(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D256F600(&qword_1EC6D8A80, type metadata accessor for PlaygroundHomeViewModel, &protocol conformance descriptor for PlaygroundHomeViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + 72);
}

void sub_1D2566584(char a1)
{
  if (*(v1 + 72) == (a1 & 1))
  {
    *(v1 + 72) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D256F600(&qword_1EC6D8A80, type metadata accessor for PlaygroundHomeViewModel, &protocol conformance descriptor for PlaygroundHomeViewModel);
    sub_1D28719D8();
  }
}

void sub_1D2566694(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D256F600(&qword_1EC6D8A80, type metadata accessor for PlaygroundHomeViewModel, &protocol conformance descriptor for PlaygroundHomeViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + 74);
}

double sub_1D2566774(unsigned __int8 *a1)
{
  if (*(v1 + 74) != *a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D256F600(&qword_1EC6D8A80, type metadata accessor for PlaygroundHomeViewModel, &protocol conformance descriptor for PlaygroundHomeViewModel);
    sub_1D28719D8();
  }

  return result;
}

uint64_t sub_1D256687C()
{
  v1 = *(v0 + 48);
  swift_getKeyPath();
  sub_1D256F600(&qword_1EC6D87B0, type metadata accessor for NavigationManager, &unk_1D28823E0);
  sub_1D28719E8();

  if (*(v1 + 16))
  {
    return 0;
  }

  swift_getKeyPath();
  sub_1D256F600(&qword_1EC6D8A80, type metadata accessor for PlaygroundHomeViewModel, &protocol conformance descriptor for PlaygroundHomeViewModel);
  sub_1D28719E8();

  if (*(v0 + 112))
  {
    return 0;
  }

  sub_1D2568E18(1u);
  return 1;
}

void (*sub_1D25669B0(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 88);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_1D2566A44;
}

void sub_1D2566A44(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 88) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
    sub_1D256687C();
  }

  free(v3);
}

uint64_t PlaygroundHomeViewModel.delegate.getter()
{
  swift_getKeyPath();
  sub_1D256F600(&qword_1EC6D8A80, type metadata accessor for PlaygroundHomeViewModel, &protocol conformance descriptor for PlaygroundHomeViewModel);
  sub_1D28719E8();

  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_1D2566B8C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D256F600(&qword_1EC6D8A80, type metadata accessor for PlaygroundHomeViewModel, &protocol conformance descriptor for PlaygroundHomeViewModel);
  sub_1D28719E8();

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 88);
  *a2 = result;
  a2[1] = v5;
  return result;
}

double sub_1D2566C50(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1D256F600(&qword_1EC6D8A80, type metadata accessor for PlaygroundHomeViewModel, &protocol conformance descriptor for PlaygroundHomeViewModel);
  sub_1D28719D8();

  return result;
}

uint64_t type metadata accessor for PlaygroundHomeViewModel(uint64_t a1)
{
  result = qword_1EC6D8A68;
  if (!qword_1EC6D8A68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PlaygroundHomeViewModel.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1D256F600(&qword_1EC6D8A80, type metadata accessor for PlaygroundHomeViewModel, &protocol conformance descriptor for PlaygroundHomeViewModel);
  sub_1D28719D8();

  return swift_unknownObjectRelease();
}

uint64_t sub_1D2566E4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a1 + 88) = a3;
  swift_unknownObjectWeakAssign();
  return sub_1D256687C();
}

uint64_t (*PlaygroundHomeViewModel.delegate.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC23ImagePlaygroundInternal23PlaygroundHomeViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1D256F600(&qword_1EC6D8A80, type metadata accessor for PlaygroundHomeViewModel, &protocol conformance descriptor for PlaygroundHomeViewModel);
  sub_1D28719E8();

  *v4 = v1;
  swift_getKeyPath();
  sub_1D2871A08();

  v4[7] = sub_1D25669B0(v4);
  return sub_1D2567010;
}

void sub_1D2567010(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_1D28719F8();

  free(v1);
}

uint64_t sub_1D25670A4()
{
  v1 = *(v0 + 48);
  swift_getKeyPath();
  sub_1D256F600(&qword_1EC6D87B0, type metadata accessor for NavigationManager, &unk_1D28823E0);
  sub_1D28719E8();

  v2 = *(v1 + 16);
  if (v2 != 1)
  {
    swift_getKeyPath();
    sub_1D28719E8();

    if (*(v1 + 17) == 1 && (swift_getKeyPath(), sub_1D28719E8(), , *(v1 + 16) == 2))
    {
      v3 = sub_1D2565F18();
      swift_getKeyPath();
      sub_1D256F600(&qword_1EC6D8880, type metadata accessor for DetailViewModel, &unk_1D28A1018);
      sub_1D28719E8();

      v4 = *(v3 + 49);

      LOBYTE(v2) = v4 ^ 1;
    }

    else
    {
      LOBYTE(v2) = 0;
    }
  }

  return v2 & 1;
}

uint64_t sub_1D2567268()
{
  v1 = type metadata accessor for ComposingViewModel.AvailabilityStatus(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(v0 + 48);
  swift_getKeyPath();
  v9 = v4;
  sub_1D256F600(&qword_1EC6D87B0, type metadata accessor for NavigationManager, &unk_1D28823E0);
  sub_1D28719E8();

  if (*(v4 + 16) != 1)
  {
    return 1;
  }

  v5 = *(v0 + 16);
  swift_getKeyPath();
  v9 = v5;
  sub_1D256F600(&qword_1ED8A2520, type metadata accessor for ComposingViewModel, &protocol conformance descriptor for ComposingViewModel);
  sub_1D28719E8();

  v6 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__generativeModelsStatus;
  swift_beginAccess();
  sub_1D256F368(v5 + v6, v3, type metadata accessor for ComposingViewModel.AvailabilityStatus);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    return 1;
  }

  sub_1D256F3D0(v3, type metadata accessor for ComposingViewModel.AvailabilityStatus);
  return 0;
}

uint64_t sub_1D2567450()
{
  sub_1D23C7998();

  v8[3] = &type metadata for FeedbackFeatures;
  v8[4] = sub_1D233EEC8();
  v1 = sub_1D2871AA8();
  __swift_destroy_boxed_opaque_existential_0(v8);
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  v3 = *(v0 + 48);
  swift_getKeyPath();
  v8[0] = v3;
  sub_1D256F600(&qword_1EC6D87B0, type metadata accessor for NavigationManager, &unk_1D28823E0);
  sub_1D28719E8();

  result = 0;
  if (*(v3 + 16) == 2 && (v1 & 1) != 0 && has_internal_diagnostics)
  {
    if (qword_1ED8A4928 != -1)
    {
      swift_once();
    }

    sub_1D22BCFD0(0, &qword_1ED89CDA0, 0x1E695E000);
    v5 = sub_1D2878A58();
    v6 = sub_1D2878068();
    v7 = [v5 BOOLForKey_];

    return v7 ^ 1;
  }

  return result;
}

uint64_t sub_1D25675F4()
{
  v1 = v0;
  v2 = sub_1D23C7044();
  swift_getKeyPath();
  sub_1D256F600(&qword_1ED8A04F8, type metadata accessor for PersonalizationFeatures, &unk_1D28A8770);
  sub_1D28719E8();

  v3 = *(v2 + 17);

  if (v3 != 1)
  {
    goto LABEL_5;
  }

  v4 = *(v1 + 48);
  swift_getKeyPath();
  sub_1D256F600(&qword_1EC6D87B0, type metadata accessor for NavigationManager, &unk_1D28823E0);
  sub_1D28719E8();

  if (!*(v4 + 16))
  {
    v5 = 1;
    return v5 & 1;
  }

  if (*(v4 + 16) == 1)
  {
    v5 = sub_1D2300444();
  }

  else
  {
LABEL_5:
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_1D256774C()
{
  swift_getKeyPath();
  sub_1D256F600(&qword_1EC6D8A80, type metadata accessor for PlaygroundHomeViewModel, &protocol conformance descriptor for PlaygroundHomeViewModel);
  sub_1D28719E8();

  return *(v0 + 98);
}

uint64_t sub_1D25677EC()
{
  v1 = type metadata accessor for ComposingViewModel.AvailabilityStatus(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v12 - v5;
  swift_getKeyPath();
  v13 = v0;
  sub_1D256F600(&qword_1EC6D8A80, type metadata accessor for PlaygroundHomeViewModel, &protocol conformance descriptor for PlaygroundHomeViewModel);
  sub_1D28719E8();

  if (*(v0 + 98))
  {
    v7 = 0;
  }

  else
  {
    v8 = *(v0 + 16);
    swift_getKeyPath();
    v13 = v8;
    sub_1D256F600(&qword_1ED8A2520, type metadata accessor for ComposingViewModel, &protocol conformance descriptor for ComposingViewModel);
    sub_1D28719E8();

    v9 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__generativeModelsStatus;
    swift_beginAccess();
    sub_1D256F368(v8 + v9, v6, type metadata accessor for ComposingViewModel.AvailabilityStatus);
    swift_storeEnumTagMultiPayload();
    v10 = sub_1D233C3CC(v6, v3);
    sub_1D256F3D0(v3, type metadata accessor for ComposingViewModel.AvailabilityStatus);
    sub_1D256F3D0(v6, type metadata accessor for ComposingViewModel.AvailabilityStatus);
    v7 = v10 ^ 1;
  }

  return v7 & 1;
}

uint64_t sub_1D25679FC()
{
  swift_getKeyPath();
  sub_1D256F600(&qword_1EC6D8A80, type metadata accessor for PlaygroundHomeViewModel, &protocol conformance descriptor for PlaygroundHomeViewModel);
  sub_1D28719E8();

  return *(v0 + 112);
}

uint64_t sub_1D2567A9C()
{
  swift_getKeyPath();
  sub_1D256F600(&qword_1EC6D8A80, type metadata accessor for PlaygroundHomeViewModel, &protocol conformance descriptor for PlaygroundHomeViewModel);
  sub_1D28719E8();

  return *(v0 + 96);
}

void sub_1D2567B3C(char a1)
{
  if (*(v1 + 96) == (a1 & 1))
  {
    *(v1 + 96) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D256F600(&qword_1EC6D8A80, type metadata accessor for PlaygroundHomeViewModel, &protocol conformance descriptor for PlaygroundHomeViewModel);
    sub_1D28719D8();
  }
}

uint64_t sub_1D2567C54()
{
  swift_getKeyPath();
  sub_1D256F600(&qword_1EC6D8A80, type metadata accessor for PlaygroundHomeViewModel, &protocol conformance descriptor for PlaygroundHomeViewModel);
  sub_1D28719E8();

  return *(v0 + 97);
}

void sub_1D2567CF4(char a1)
{
  if (*(v1 + 97) == (a1 & 1))
  {
    *(v1 + 97) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D256F600(&qword_1EC6D8A80, type metadata accessor for PlaygroundHomeViewModel, &protocol conformance descriptor for PlaygroundHomeViewModel);
    sub_1D28719D8();
  }
}

uint64_t sub_1D2567E14()
{
  swift_getKeyPath();
  sub_1D256F600(&qword_1EC6D8A80, type metadata accessor for PlaygroundHomeViewModel, &protocol conformance descriptor for PlaygroundHomeViewModel);
  sub_1D28719E8();

  return *(v0 + 99);
}

void sub_1D2567EBC(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D256F600(&qword_1EC6D8A80, type metadata accessor for PlaygroundHomeViewModel, &protocol conformance descriptor for PlaygroundHomeViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + 112);
}

void sub_1D2567F8C(char a1)
{
  if (*(v1 + 112) == (a1 & 1))
  {
    *(v1 + 112) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D256F600(&qword_1EC6D8A80, type metadata accessor for PlaygroundHomeViewModel, &protocol conformance descriptor for PlaygroundHomeViewModel);
    sub_1D28719D8();
  }
}

uint64_t PlaygroundHomeViewModel.__allocating_init(servicesFetcher:appleConnectTokenProvider:creationViewStyle:pickerMode:forceDarkMode:sessionUndoManager:visionOSHideStylePicker:)(uint64_t a1, void *a2, unsigned __int8 *a3, unsigned __int8 *a4, uint64_t a5, uint64_t a6, int a7)
{
  v33 = a7;
  v8 = a5;
  v34 = a2;
  v12 = swift_allocObject();
  v32 = *a4;
  LODWORD(a4) = *a3;
  type metadata accessor for NavigationManager(0);
  *(v12 + 24) = 0;
  *(v12 + 32) = 0;
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  sub_1D2871A18();
  *(v12 + 48) = v13;
  type metadata accessor for HomeAnimationCoordinator(0);
  v14 = swift_allocObject();
  v15 = OBJC_IVAR____TtC23ImagePlaygroundInternal24HomeAnimationCoordinator__animatedAssetID;
  v16 = sub_1D2871818();
  (*(*(v16 - 8) + 56))(v14 + v15, 1, 1, v16);
  *(v14 + OBJC_IVAR____TtC23ImagePlaygroundInternal24HomeAnimationCoordinator__transitionFlow) = 0;
  v17 = (v14 + OBJC_IVAR____TtC23ImagePlaygroundInternal24HomeAnimationCoordinator__detailViewDidAppear);
  *v17 = 0;
  v17[1] = 0;
  v18 = (v14 + OBJC_IVAR____TtC23ImagePlaygroundInternal24HomeAnimationCoordinator_upscalingMatchedTransitionID);
  *v18 = 0xD000000000000025;
  v18[1] = 0x80000001D28B37F0;
  sub_1D2871A18();
  *(v12 + 56) = v14;
  *(v12 + 64) = 0;
  *(v12 + 72) = 0;
  *(v12 + 88) = 0;
  swift_unknownObjectWeakInit();
  *(v12 + 96) = 0;
  *(v12 + 112) = 1;
  *(v12 + 120) = 0;
  sub_1D2871A18();
  *(v12 + 40) = a1;
  *(v12 + 104) = a6;
  v19 = _s7ManagerCMa(0);
  swift_allocObject();
  swift_retain_n();
  sub_1D2870F78();
  v35[3] = v19;
  v35[4] = &off_1F4DC2000;
  v35[0] = sub_1D239E2B0(a1, 1);
  type metadata accessor for ComposingViewModel(0);
  v20 = swift_allocObject();
  v21 = __swift_mutable_project_boxed_opaque_existential_1(v35, v19);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = (&v31 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v25 + 16))(v24, v22);
  v26 = *v24;
  sub_1D2870F78();
  v27 = sub_1D256D120(a1, v26, a6, a4, v8, 0, 0, 0, v20);

  __swift_destroy_boxed_opaque_existential_0(v35);
  *(v12 + 16) = v27;
  swift_getKeyPath();
  v35[0] = v27;
  sub_1D256F600(&qword_1ED8A2520, type metadata accessor for ComposingViewModel, &protocol conformance descriptor for ComposingViewModel);
  sub_1D2870F78();
  sub_1D28719E8();

  LOBYTE(v20) = *(v27 + 40);

  *(v12 + 73) = v20;
  v28 = *(v12 + 16);
  swift_getKeyPath();
  v35[0] = v28;
  sub_1D2870F78();
  sub_1D28719E8();

  LOBYTE(v20) = *(v28 + 40);

  *(v12 + 74) = v20;
  v29 = v33;
  *(v12 + 100) = v32;
  *(v12 + 113) = v29;
  if ((a4 - 1) <= 2)
  {
    sub_1D2342864(1u);
  }

  *(*(v12 + 16) + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_internalDelegate + 8) = &off_1F4DCAAC0;
  swift_unknownObjectWeakAssign();
  return v12;
}

uint64_t PlaygroundHomeViewModel.init(servicesFetcher:appleConnectTokenProvider:creationViewStyle:pickerMode:forceDarkMode:sessionUndoManager:visionOSHideStylePicker:)(uint64_t a1, void *a2, unsigned __int8 *a3, unsigned __int8 *a4, uint64_t a5, uint64_t a6, int a7)
{
  v8 = v7;
  v10 = a5;
  v34 = a2;
  v32 = *a4;
  v33 = a7;
  v12 = *a3;
  type metadata accessor for NavigationManager(0);
  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  sub_1D2871A18();
  *(v8 + 48) = v13;
  type metadata accessor for HomeAnimationCoordinator(0);
  v14 = swift_allocObject();
  v15 = OBJC_IVAR____TtC23ImagePlaygroundInternal24HomeAnimationCoordinator__animatedAssetID;
  v16 = sub_1D2871818();
  (*(*(v16 - 8) + 56))(v14 + v15, 1, 1, v16);
  *(v14 + OBJC_IVAR____TtC23ImagePlaygroundInternal24HomeAnimationCoordinator__transitionFlow) = 0;
  v17 = (v14 + OBJC_IVAR____TtC23ImagePlaygroundInternal24HomeAnimationCoordinator__detailViewDidAppear);
  *v17 = 0;
  v17[1] = 0;
  v18 = (v14 + OBJC_IVAR____TtC23ImagePlaygroundInternal24HomeAnimationCoordinator_upscalingMatchedTransitionID);
  *v18 = 0xD000000000000025;
  v18[1] = 0x80000001D28B37F0;
  sub_1D2871A18();
  *(v8 + 56) = v14;
  *(v8 + 64) = 0;
  *(v8 + 72) = 0;
  *(v8 + 88) = 0;
  swift_unknownObjectWeakInit();
  *(v8 + 96) = 0;
  *(v8 + 112) = 1;
  *(v8 + 120) = 0;
  sub_1D2871A18();
  *(v8 + 40) = a1;
  *(v8 + 104) = a6;
  v19 = _s7ManagerCMa(0);
  swift_allocObject();
  swift_retain_n();
  sub_1D2870F78();
  v35[3] = v19;
  v35[4] = &off_1F4DC2000;
  v35[0] = sub_1D239E2B0(a1, 1);
  type metadata accessor for ComposingViewModel(0);
  v20 = swift_allocObject();
  v21 = __swift_mutable_project_boxed_opaque_existential_1(v35, v19);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = (&v31 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v25 + 16))(v24, v22);
  v26 = *v24;
  sub_1D2870F78();
  v27 = sub_1D256D120(a1, v26, a6, v12, v10, 0, 0, 0, v20);

  __swift_destroy_boxed_opaque_existential_0(v35);
  *(v8 + 16) = v27;
  swift_getKeyPath();
  v35[0] = v27;
  sub_1D256F600(&qword_1ED8A2520, type metadata accessor for ComposingViewModel, &protocol conformance descriptor for ComposingViewModel);
  sub_1D2870F78();
  sub_1D28719E8();

  LOBYTE(v20) = *(v27 + 40);

  *(v8 + 73) = v20;
  v28 = *(v8 + 16);
  swift_getKeyPath();
  v35[0] = v28;
  sub_1D2870F78();
  sub_1D28719E8();

  LOBYTE(v20) = *(v28 + 40);

  *(v8 + 74) = v20;
  v29 = v33;
  *(v8 + 100) = v32;
  *(v8 + 113) = v29;
  if ((v12 - 1) <= 2)
  {
    sub_1D2342864(1u);
  }

  *(*(v8 + 16) + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_internalDelegate + 8) = &off_1F4DCAAC0;
  swift_unknownObjectWeakAssign();
  return v8;
}

char *PlaygroundHomeViewModel.deinit()
{
  v1 = v0;
  if (*(v0 + 120))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1D2878B88();
    swift_unknownObjectRelease();
  }

  sub_1D22729C0(v0 + 80);

  swift_unknownObjectRelease();
  v2 = OBJC_IVAR____TtC23ImagePlaygroundInternal23PlaygroundHomeViewModel___observationRegistrar;
  v3 = sub_1D2871A28();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);
  return v1;
}

uint64_t PlaygroundHomeViewModel.__deallocating_deinit()
{
  PlaygroundHomeViewModel.deinit();

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall PlaygroundHomeViewModel.enterComposing()()
{
  v1 = v0;
  v2 = sub_1D2873C28();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v23 - v7;
  v9 = sub_1D2873C48();
  v24 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v0 + 48);
  swift_getKeyPath();
  v25 = v12;
  sub_1D256F600(&qword_1EC6D87B0, type metadata accessor for NavigationManager, &unk_1D28823E0);
  sub_1D28719E8();

  if (*(v12 + 16) != 1)
  {
    sub_1D28720E8();
    sub_1D2873C38();
    sub_1D2873BF8();
    v13 = sub_1D2873C38();
    v14 = sub_1D2878BB8();
    if (sub_1D2878EE8())
    {
      v15 = swift_slowAlloc();
      v23 = v0;
      v16 = v9;
      v17 = v15;
      *v15 = 0;
      v18 = sub_1D2873C08();
      _os_signpost_emit_with_name_impl(&dword_1D226E000, v13, v14, v18, "EnterComposingView", "", v17, 2u);
      v19 = v17;
      v9 = v16;
      v1 = v23;
      MEMORY[0x1D38A3520](v19, -1, -1);
    }

    (*(v3 + 16))(v5, v8, v2);
    sub_1D2873C88();
    swift_allocObject();
    v20 = sub_1D2873C78();
    (*(v3 + 8))(v8, v2);
    v21 = *(v1 + 16);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v23 - 2) = v21;
    *(&v23 - 1) = v20;
    v25 = v21;
    sub_1D256F600(&qword_1ED8A2520, type metadata accessor for ComposingViewModel, &protocol conformance descriptor for ComposingViewModel);
    sub_1D2870F78();
    sub_1D28719D8();

    sub_1D2568E18(1u);

    (*(v24 + 8))(v11, v9);
  }
}

uint64_t sub_1D2568E18(unsigned __int8 a1)
{
  result = sub_1D256A92C(a1);
  if (result)
  {
    if (*(v1 + 96))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1D256F600(&qword_1EC6D8A80, type metadata accessor for PlaygroundHomeViewModel, &protocol conformance descriptor for PlaygroundHomeViewModel);
      sub_1D28719D8();

      if ((*(v1 + 97) & 1) == 0)
      {
LABEL_4:
        *(v1 + 97) = 0;
        goto LABEL_7;
      }
    }

    else
    {
      *(v1 + 96) = 0;
      if ((*(v1 + 97) & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    v5 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v5);
    sub_1D256F600(&qword_1EC6D8A80, type metadata accessor for PlaygroundHomeViewModel, &protocol conformance descriptor for PlaygroundHomeViewModel);
    sub_1D28719D8();

LABEL_7:
    v6 = PlaygroundHomeViewModel.photoGridViewModel.getter();
    if (((a1 == 0) ^ *(v6 + OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__viewIsEnabled)))
    {
      v7 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v7);
      sub_1D256F600(&qword_1EC6D8690, type metadata accessor for PhotoGridViewModel, &protocol conformance descriptor for PhotoGridViewModel);
      sub_1D28719D8();

      if (a1)
      {
        goto LABEL_9;
      }
    }

    else
    {
      *(v6 + OBJC_IVAR____TtC23ImagePlaygroundInternal18PhotoGridViewModel__viewIsEnabled) = a1 == 0;

      if (a1)
      {
LABEL_9:
        if (a1 == 2)
        {
          v11 = sub_1D2565F18();
          v12 = *(v1 + 48);
          swift_getKeyPath();
          sub_1D256F600(&qword_1EC6D87B0, type metadata accessor for NavigationManager, &unk_1D28823E0);
          sub_1D28719E8();

          if ((*(v11 + 48) ^ (*(v12 + 16) == 0)))
          {
            v13 = swift_getKeyPath();
            MEMORY[0x1EEE9AC00](v13);
            sub_1D256F600(&qword_1EC6D8880, type metadata accessor for DetailViewModel, &unk_1D28A1018);
            sub_1D28719D8();
          }

          else
          {
            *(v11 + 48) = *(v12 + 16) == 0;
          }
        }

        else if (a1 == 1)
        {
          swift_getKeyPath();
          sub_1D256F600(&qword_1EC6D8A80, type metadata accessor for PlaygroundHomeViewModel, &protocol conformance descriptor for PlaygroundHomeViewModel);
          sub_1D28719E8();

          swift_beginAccess();
          if (swift_unknownObjectWeakLoadStrong())
          {
            v8 = *(v1 + 88);
            ObjectType = swift_getObjectType();
            (*(v8 + 24))(v1, ObjectType, v8);
            swift_unknownObjectRelease();
          }
        }

        v14 = *(v1 + 24);
        if ((*(v14 + 97) & 1) == 0)
        {
          *(v14 + 97) = 0;
LABEL_24:
          sub_1D2342864(a1);
          result = *(*(v1 + 104) + 16);
          if (result)
          {
            return [result removeAllActions];
          }

          return result;
        }

LABEL_22:
        v15 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v15);
        sub_1D256F600(&qword_1EC6D8690, type metadata accessor for PhotoGridViewModel, &protocol conformance descriptor for PhotoGridViewModel);
        sub_1D2870F78();
        sub_1D28719D8();

        goto LABEL_24;
      }
    }

    v10 = *(v1 + 24);
    if (*(v10 + 97) == 1)
    {
      *(v10 + 97) = 1;
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  return result;
}

double sub_1D2569550(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60, &qword_1D28811F0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v11 - v3;
  PlaygroundHomeViewModel.enterComposing()();
  v5 = sub_1D28785F8();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  swift_weakInit();
  sub_1D2878568();
  sub_1D2870F78();
  sub_1D2870F78();
  v7 = sub_1D2878558();
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E85E0];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = v6;
  v8[5] = a1;

  sub_1D22AE01C(0, 0, v4, &unk_1D2893E10, v8);

  return result;
}

void PlaygroundHomeViewModel.openFile(at:)(uint64_t a1)
{
  v2 = type metadata accessor for PlaygroundImage(0);
  v28 = *(v2 - 1);
  v3 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v25[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v25[-v6];
  v8 = sub_1D2871648();
  sub_1D2871658();
  v9 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
  v10 = sub_1D2878068();

  v11 = [v9 initWithContentsOfFile_];

  if (v11)
  {
    v26 = v8;
    v27 = a1;
    v12 = &v7[v2[9]];
    *v12 = 0u;
    v12[1] = 0u;
    *&v7[v2[10]] = xmmword_1D28809A0;
    v13 = v2[11];
    v14 = sub_1D2873AA8();
    (*(*(v14 - 8) + 56))(&v7[v13], 1, 1, v14);
    *v7 = v11;
    v7[8] = 2;
    [v11 imageOrientation];
    *(v7 + 6) = sub_1D2878C88();
    *(v7 + 2) = 0;
    *(v7 + 4) = 0;
    *(v7 + 5) = 0;
    v7[v2[12]] = 0;
    sub_1D2871808();
    v15 = v29;
    sub_1D2568E18(1u);
    v16 = *(v15 + 2);
    v17 = sub_1D28717B8();
    v19 = v18;
    sub_1D256F368(v7, v4, type metadata accessor for PlaygroundImage);
    sub_1D2878568();
    sub_1D2870F78();
    v20 = sub_1D2878558();
    v21 = (*(v28 + 80) + 40) & ~*(v28 + 80);
    v22 = swift_allocObject();
    v23 = MEMORY[0x1E69E85E0];
    v22[2] = v20;
    v22[3] = v23;
    v22[4] = v15;
    sub_1D23EEBD4(v4, v22 + v21);
    swift_getKeyPath();
    v30 = v16;
    sub_1D256F600(&qword_1ED8A2520, type metadata accessor for ComposingViewModel, &protocol conformance descriptor for ComposingViewModel);
    sub_1D28719E8();

    if (*(v16 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__importingImageTask))
    {
      KeyPath = swift_getKeyPath();
      v29 = v25;
      MEMORY[0x1EEE9AC00](KeyPath);
      *&v25[-48] = v16;
      *&v25[-40] = v17;
      *&v25[-32] = v19;
      *&v25[-24] = &unk_1D2893AD0;
      *&v25[-16] = v22;
      v30 = v16;
      sub_1D2870F78();
      sub_1D2870F68();
      sub_1D2870F78();
      sub_1D28719D8();

      sub_1D28786B8();
    }

    else
    {
      sub_1D230EA90(v17, v19, &unk_1D2893AD0, v22);
    }

    sub_1D256F3D0(v7, type metadata accessor for PlaygroundImage);
    if (v26)
    {
      goto LABEL_8;
    }
  }

  else if (v8)
  {
LABEL_8:
    sub_1D2871628();
  }
}

uint64_t sub_1D2569B48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a3;
  v4[3] = a4;
  v4[4] = sub_1D2878568();
  v4[5] = sub_1D2878558();
  v6 = sub_1D28784F8();
  v4[6] = v6;
  v4[7] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1D2569BE4, v6, v5);
}

uint64_t sub_1D2569BE4(uint64_t a1)
{
  v1[8] = *(v1[2] + 16);
  v1[9] = sub_1D2878558();
  v3 = sub_1D28784F8();
  v1[10] = v3;
  v1[11] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1D2569C7C, v3, v2);
}

uint64_t sub_1D2569C7C(uint64_t a1)
{
  v2 = v1[8];
  v3 = v1[3];
  v4 = sub_1D2878558();
  v1[12] = v4;
  v5 = swift_task_alloc();
  v1[13] = v5;
  *(v5 + 16) = v2;
  *(v5 + 24) = v3;
  v6 = swift_task_alloc();
  v1[14] = v6;
  *v6 = v1;
  v6[1] = sub_1D2569D8C;
  v7 = MEMORY[0x1E69E85E0];
  v8 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DDE0](v6, v4, v7, 0xD000000000000014, 0x80000001D28B0BB0, sub_1D23D4DF4, v5, v8);
}

uint64_t sub_1D2569D8C()
{
  v1 = *v0;

  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  return MEMORY[0x1EEE6DFA0](sub_1D2569EEC, v3, v2);
}

uint64_t sub_1D2569EEC()
{

  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return MEMORY[0x1EEE6DFA0](sub_1D231C8D8, v1, v2);
}

uint64_t sub_1D2569F50()
{
  v1 = sub_1D2877B48();
  v45 = *(v1 - 8);
  v46 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v42 = v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1D2877B68();
  v43 = *(v3 - 8);
  v44 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D2878AF8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D2877B38();
  v49 = *(v10 - 8);
  v50 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v40 - v14;
  v16 = sub_1D2877BA8();
  v47 = *(v16 - 8);
  v48 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v40 - v20;
  result = sub_1D256687C();
  if ((result & 1) == 0)
  {
    if (*(v0 + 120))
    {
      ObjectType = swift_getObjectType();
      swift_unknownObjectRetain();
      sub_1D2877B88();
      sub_1D2877BC8();
      v24 = *(v47 + 8);
      v25 = v18;
      v26 = v48;
      v24(v25, v48);
      sub_1D27A194C(v15);
      sub_1D27A18D4(v12);
      MEMORY[0x1D38A16E0](v21, v15, v12, ObjectType);
      swift_unknownObjectRelease();
      v27 = v50;
      v28 = *(v49 + 8);
      v28(v12, v50);
      v28(v15, v27);
      return (v24)(v21, v26);
    }

    else
    {
      v40[1] = sub_1D22BCFD0(0, &unk_1ED89CD20, 0x1E69E9630);
      sub_1D22BCFD0(0, &qword_1ED89CD50, 0x1E69E9610);
      v40[0] = sub_1D2878AB8();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1D256F600(&unk_1ED89CD30, MEMORY[0x1E69E80B0], MEMORY[0x1E69E80B8]);
      v41 = v0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E10E0, &qword_1D2891950);
      sub_1D256F450();
      sub_1D2879088();
      v29 = v40[0];
      v30 = sub_1D2878B08();

      (*(v7 + 8))(v9, v6);
      v31 = swift_getObjectType();
      v32 = swift_allocObject();
      swift_weakInit();
      aBlock[4] = sub_1D256F4B4;
      aBlock[5] = v32;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1D23DFBA8;
      aBlock[3] = &block_descriptor_24;
      v33 = _Block_copy(aBlock);
      sub_1D2870F78();
      sub_1D27A17E4(v31);
      v34 = v42;
      sub_1D27A17E8();
      sub_1D2878B78();
      _Block_release(v33);
      (*(v45 + 8))(v34, v46);
      (*(v43 + 8))(v5, v44);

      sub_1D2877B88();
      sub_1D2877BC8();
      v35 = v48;
      v36 = *(v47 + 8);
      v36(v18, v48);
      sub_1D27A194C(v15);
      sub_1D27A18D4(v12);
      MEMORY[0x1D38A16E0](v21, v15, v12, v31);
      v37 = *(v49 + 8);
      v38 = v12;
      v39 = v50;
      v37(v38, v50);
      v37(v15, v39);
      v36(v21, v35);
      sub_1D2878B98();
      *(v41 + 120) = v30;
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

double sub_1D256A5C8(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1D2870F78();

    sub_1D232DED4();
  }

  return result;
}

void sub_1D256A634()
{
  v1 = sub_1D2877B38();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v16 - v6;
  v8 = sub_1D2877BA8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 120))
  {
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1D2877B78();
    sub_1D27A194C(v7);
    sub_1D27A18D4(v4);
    MEMORY[0x1D38A16E0](v11, v7, v4, ObjectType);
    swift_unknownObjectRelease();
    v13 = *(v2 + 8);
    v13(v4, v1);
    v13(v7, v1);
    (*(v9 + 8))(v11, v8);
  }

  v14 = *(v0 + 16);
  sub_1D23C8400();
  ImageKeyFaceLoader.cancelPrewarm()();

  if (*(v14 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__shouldPrewarmKeyFaces) == 1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v16[-2] = v14;
    LOBYTE(v16[-1]) = 0;
    v16[1] = v14;
    sub_1D256F600(&qword_1ED8A2520, type metadata accessor for ComposingViewModel, &protocol conformance descriptor for ComposingViewModel);
    sub_1D28719D8();
  }

  else
  {
    *(v14 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__shouldPrewarmKeyFaces) = 0;
  }
}

uint64_t sub_1D256A92C(unsigned __int8 a1)
{
  v2 = v1;
  v3 = a1;
  v4 = sub_1D2873CB8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v3 != 1)
  {
    return 1;
  }

  v8 = *(v2 + 48);
  swift_getKeyPath();
  v18 = v8;
  sub_1D256F600(&qword_1EC6D87B0, type metadata accessor for NavigationManager, &unk_1D28823E0);
  sub_1D28719E8();

  if (*(v8 + 16) == 1)
  {
    sub_1D2872658();
    v9 = sub_1D2873CA8();
    v10 = sub_1D2878A28();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1D226E000, v9, v10, "We can not route from composing to composing", v11, 2u);
      MEMORY[0x1D38A3520](v11, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    return 0;
  }

  swift_getKeyPath();
  v18 = v2;
  sub_1D256F600(&qword_1EC6D8A80, type metadata accessor for PlaygroundHomeViewModel, &protocol conformance descriptor for PlaygroundHomeViewModel);
  sub_1D28719E8();

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v12 = *(v2 + 88);
    ObjectType = swift_getObjectType();
    LOBYTE(v12) = (*(v12 + 16))(v2, 1, ObjectType, v12);
    swift_unknownObjectRelease();
    if (v12)
    {
      goto LABEL_8;
    }
  }

  else
  {
    swift_getKeyPath();
    v17 = v2;
    sub_1D28719E8();

    if ((*(v2 + 74) & 0xFE) != 2)
    {
LABEL_8:
      swift_getKeyPath();
      v17 = v2;
      sub_1D28719E8();

      if (swift_unknownObjectWeakLoadStrong())
      {
        v14 = *(v2 + 88);
        v15 = swift_getObjectType();
        (*(v14 + 24))(v2, v15, v14);
        swift_unknownObjectRelease();
      }

      return 1;
    }
  }

  return 0;
}

uint64_t sub_1D256AC8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  sub_1D2878568();
  v5[5] = sub_1D2878558();
  v7 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D256AD24, v7, v6);
}

uint64_t sub_1D256AD24()
{

  sub_1D2568E18(2u);
  v1 = sub_1D2565F18();
  v2 = sub_1D2870F78();
  sub_1D2711A34(v2);
  swift_getKeyPath();
  *(v0 + 16) = v1;
  sub_1D256F600(&qword_1EC6D8880, type metadata accessor for DetailViewModel, &unk_1D28A1018);
  sub_1D28719E8();

  v3 = *(v1 + 56);
  if (v3)
  {
    v4 = *(v1 + 64);
    v5 = sub_1D2870F78();
    v3(v5);

    sub_1D22A576C(v3, v4);
  }

  else
  {
  }

  v6 = *(v0 + 8);

  return v6();
}

double sub_1D256AE5C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1D2872008();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2871FC8();
  LOBYTE(a2) = MEMORY[0x1D389AA00](a2, v9);
  (*(v7 + 8))(v9, v6);
  if (a2)
  {
    if (*(v3 + 74) == 5)
    {
      goto LABEL_7;
    }

    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v16 - 2) = v3;
    *(&v16 - 8) = 5;
    v17 = v3;
    sub_1D256F600(&qword_1EC6D8A80, type metadata accessor for PlaygroundHomeViewModel, &protocol conformance descriptor for PlaygroundHomeViewModel);
  }

  else
  {
    v11 = *(v3 + 73);
    if (*(v3 + 74) == v11)
    {
      goto LABEL_7;
    }

    v12 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v12);
    *(&v16 - 2) = v3;
    *(&v16 - 8) = v11;
    v17 = v3;
    sub_1D256F600(&qword_1EC6D8A80, type metadata accessor for PlaygroundHomeViewModel, &protocol conformance descriptor for PlaygroundHomeViewModel);
  }

  sub_1D28719D8();

LABEL_7:
  swift_getKeyPath();
  v17 = v3;
  sub_1D256F600(&qword_1EC6D8A80, type metadata accessor for PlaygroundHomeViewModel, &protocol conformance descriptor for PlaygroundHomeViewModel);
  sub_1D28719E8();

  v13 = *(v3 + 74);
  if (*(a1 + 40) == v13)
  {
    sub_1D22FC8E0();
  }

  else
  {
    v15 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v15);
    *(&v16 - 2) = a1;
    *(&v16 - 8) = v13;
    v17 = a1;
    sub_1D256F600(&qword_1ED8A2520, type metadata accessor for ComposingViewModel, &protocol conformance descriptor for ComposingViewModel);
    sub_1D28719D8();
  }

  return result;
}

uint64_t sub_1D256B210(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70, &qword_1D2881410);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - v4;
  swift_getKeyPath();
  v12 = a1;
  sub_1D256F600(&qword_1EC6D8880, type metadata accessor for DetailViewModel, &unk_1D28A1018);
  sub_1D28719E8();

  if (*(a1 + 48) == 1)
  {
    swift_getKeyPath();
    v12 = v1;
    sub_1D256F600(&qword_1EC6D8A80, type metadata accessor for PlaygroundHomeViewModel, &protocol conformance descriptor for PlaygroundHomeViewModel);
    sub_1D28719E8();

    if (*(v1 + 112) == 1)
    {
      swift_getKeyPath();
      v12 = a1;
      sub_1D28719E8();

      v6 = *(a1 + 16);
      if (v6)
      {
        sub_1D2870F78();
        PlaygroundHomeViewModel.photoGridViewModel.getter();
        v7 = *(*v6 + 160);
        v8 = sub_1D2871818();
        v9 = *(v8 - 8);
        (*(v9 + 16))(v5, v6 + v7, v8);
        (*(v9 + 56))(v5, 0, 1, v8);
        sub_1D257540C(v5);
      }
    }
  }

  return sub_1D2568E18(0);
}

uint64_t sub_1D256B48C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  sub_1D2878568();
  v5[5] = sub_1D2878558();
  v7 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D256F83C, v7, v6);
}

Swift::Void __swiftcall PlaygroundHomeViewModel.photoLibrary(didUpdate:)(Swift::OpaquePointer didUpdate)
{
  v3 = didUpdate._rawValue >> 62;
  if (didUpdate._rawValue >> 62)
  {
    v4 = sub_1D2879368();
  }

  else
  {
    v4 = *((didUpdate._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (((*(v1 + 112) ^ (v4 != 0)) & 1) == 0)
  {
    *(v1 + 112) = v4 != 0;
    if (v3)
    {
      goto LABEL_5;
    }

LABEL_7:
    v6 = *((didUpdate._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_8;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1D256F600(&qword_1EC6D8A80, type metadata accessor for PlaygroundHomeViewModel, &protocol conformance descriptor for PlaygroundHomeViewModel);
  sub_1D28719D8();

  if (!v3)
  {
    goto LABEL_7;
  }

LABEL_5:
  v6 = sub_1D2879368();
LABEL_8:
  sub_1D256B69C(v6);
}

double sub_1D256B69C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60, &qword_1D28811F0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13 - v4;
  swift_getKeyPath();
  v14 = v1;
  sub_1D256F600(&qword_1EC6D8A80, type metadata accessor for PlaygroundHomeViewModel, &protocol conformance descriptor for PlaygroundHomeViewModel);
  sub_1D28719E8();

  if ((*(v1 + 72) & 1) == 0)
  {
    swift_getKeyPath();
    v14 = v1;
    sub_1D28719E8();

    if (*(v1 + 64))
    {
      sub_1D2870F78();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94B0, &unk_1D287D430);
      sub_1D28786B8();
    }

    v7 = sub_1D28785F8();
    (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
    v8 = swift_allocObject();
    swift_weakInit();
    sub_1D2878568();
    sub_1D2870F78();
    v9 = sub_1D2878558();
    v10 = swift_allocObject();
    v11 = MEMORY[0x1E69E85E0];
    v10[2] = v9;
    v10[3] = v11;
    v10[4] = a1;
    v10[5] = v8;

    v12 = sub_1D23C8994(0, 0, v5, &unk_1D2894030, v10);
    return sub_1D25662A0(v12);
  }

  return result;
}

uint64_t sub_1D256B904()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDE30, &unk_1D2881A80);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v21 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70, &qword_1D2881410);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v21 - v5;
  v7 = *(v0 + 48);
  swift_getKeyPath();
  *&v23 = v7;
  sub_1D256F600(&qword_1EC6D87B0, type metadata accessor for NavigationManager, &unk_1D28823E0);
  sub_1D28719E8();

  if (*(v7 + 16) == 1)
  {
    sub_1D2870F78();
    v8 = &off_1F4DC0628;
LABEL_5:
    swift_getObjectType();
    v9 = v8[1];
    swift_unknownObjectRetain();
    v10 = v9();
    swift_unknownObjectRelease_n();
    return v10;
  }

  swift_getKeyPath();
  *&v23 = v7;
  sub_1D28719E8();

  if (*(v7 + 16) == 2)
  {
    sub_1D2565F18();
    v8 = &off_1F4DD11D8;
    goto LABEL_5;
  }

  v11 = *(v0 + 40);
  v12 = sub_1D2871818();
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  v13 = sub_1D2872438();
  (*(*(v13 - 8) + 56))(v3, 1, 1, v13);
  type metadata accessor for FeedbackInput(0);
  v23 = 0u;
  v24 = 0u;
  v25 = 0;
  v10 = swift_allocObject();
  v14 = OBJC_IVAR____TtC23ImagePlaygroundInternal13FeedbackInput_featureDomain;
  v15 = *MEMORY[0x1E699C2C8];
  v16 = sub_1D2871CD8();
  (*(*(v16 - 8) + 104))(v10 + v14, v15, v16);
  v17 = v10 + OBJC_IVAR____TtC23ImagePlaygroundInternal13FeedbackInput_generationStateProvider;
  *v17 = 0u;
  *(v17 + 16) = 0u;
  *(v17 + 32) = 0;
  *(v10 + 32) = 0;
  *(v10 + 40) = 0;
  *(v10 + 16) = v11;
  *(v10 + 24) = 0;
  *(v10 + 48) = -1;
  *(v10 + 56) = 0;
  *(v10 + 64) = 0;
  *(v10 + 88) = 0;
  *(v10 + 96) = 0;
  sub_1D22EC9BC(v6, v10 + OBJC_IVAR____TtC23ImagePlaygroundInternal13FeedbackInput_id, &qword_1EC6D8F70, &qword_1D2881410);
  sub_1D22EC9BC(v3, v10 + OBJC_IVAR____TtC23ImagePlaygroundInternal13FeedbackInput_recipe, &unk_1EC6DDE30, &unk_1D2881A80);
  swift_beginAccess();
  sub_1D2870F78();
  sub_1D256F040(&v23, v17);
  swift_endAccess();
  *(v10 + OBJC_IVAR____TtC23ImagePlaygroundInternal13FeedbackInput_isSaved) = 2;
  *(v10 + OBJC_IVAR____TtC23ImagePlaygroundInternal13FeedbackInput_diffusionModelSpecification) = 0;
  v18 = v10 + OBJC_IVAR____TtC23ImagePlaygroundInternal13FeedbackInput_error;
  *v18 = 0;
  *(v18 + 8) = 0;
  *(v18 + 16) = -4;
  v21[0] = v23;
  v21[1] = v24;
  v22 = v25;
  if (*(&v24 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDE40, &qword_1D2893E70);
    _s22OnDeviceImageGeneratorCMa(0);
    if (swift_dynamicCast())
    {
    }
  }

  else
  {
    sub_1D22BD238(v21, &qword_1EC6DA1F0, &unk_1D2881AF0);
  }

  *(v10 + 72) = 0;
  *(v10 + 80) = 0;
  return v10;
}

uint64_t sub_1D256BD7C()
{
  v1 = *(v0 + 48);
  swift_getKeyPath();
  sub_1D256F600(&qword_1EC6D87B0, type metadata accessor for NavigationManager, &unk_1D28823E0);
  sub_1D28719E8();

  if (*(v1 + 16))
  {
    if (*(v1 + 16) == 1)
    {
      v2 = *(v0 + 16);
      swift_getKeyPath();
      sub_1D256F600(&qword_1ED8A2520, type metadata accessor for ComposingViewModel, &protocol conformance descriptor for ComposingViewModel);
      sub_1D28719E8();

      if (*(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__state) == 2)
      {
        if (qword_1EC6D8C48 == -1)
        {
          goto LABEL_11;
        }
      }

      else if (qword_1EC6D8C40 == -1)
      {
        goto LABEL_11;
      }

LABEL_14:
      swift_once();
      goto LABEL_11;
    }

    if (qword_1EC6D8C50 != -1)
    {
      goto LABEL_14;
    }
  }

  else if (qword_1EC6D8C38 != -1)
  {
    goto LABEL_14;
  }

LABEL_11:
  v5 = sub_1D2870F68();
  type metadata accessor for TapToRadarManager.LogReason();
  v3 = swift_allocObject();
  *(v3 + 48) = 0xD000000000000010;
  *(v3 + 56) = 0x80000001D28AFBF0;
  *(v3 + 64) = 5459817;
  *(v3 + 72) = 0xE300000000000000;
  *(v3 + 80) = 0u;
  *(v3 + 96) = 0u;
  *(v3 + 16) = 0x2E2E2E726568744FLL;
  *(v3 + 24) = 0xE800000000000000;
  *(v3 + 32) = xmmword_1D2888230;
  MEMORY[0x1D38A0E30]();
  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1D2878428();
  }

  sub_1D2878488();
  return v5;
}

uint64_t sub_1D256C06C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_1D2878568();
  v5[4] = sub_1D2878558();
  v7 = sub_1D28784F8();
  v5[5] = v7;
  v5[6] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1D256C104, v7, v6);
}

uint64_t sub_1D256C104()
{
  v0[7] = sub_1D23C8560();
  v1 = sub_1D256B904();
  v0[8] = v1;
  v2 = swift_task_alloc();
  v0[9] = v2;
  *v2 = v0;
  v2[1] = sub_1D256C1D4;
  v3 = v0[3];

  return sub_1D242ECF0(v3, v1);
}

uint64_t sub_1D256C1D4()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return MEMORY[0x1EEE6DFA0](sub_1D256C334, v3, v2);
}

uint64_t sub_1D256C334()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D256C394()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60, &qword_1D28811F0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v19 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDE50, &unk_1D2881A60);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19 - v8;
  v10 = sub_1D23C7998();
  v11 = sub_1D256B904();
  v12 = sub_1D2871CA8();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = sub_1D28785F8();
  (*(*(v13 - 8) + 56))(v2, 1, 1, v13);
  sub_1D22BD1D0(v9, v6, &unk_1EC6DDE50, &unk_1D2881A60);
  sub_1D2878568();
  sub_1D2870F78();
  sub_1D2870F78();
  v14 = sub_1D2878558();
  v15 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v16 = swift_allocObject();
  v17 = MEMORY[0x1E69E85E0];
  v16[2] = v14;
  v16[3] = v17;
  v16[4] = v11;
  v16[5] = v10;
  sub_1D22EC9BC(v6, v16 + v15, &unk_1EC6DDE50, &unk_1D2881A60);
  sub_1D22AE01C(0, 0, v2, &unk_1D2881A78, v16);

  return sub_1D22BD238(v9, &unk_1EC6DDE50, &unk_1D2881A60);
}

id sub_1D256C634()
{
  v0 = sub_1D23C7998()[4];

  return v0;
}

uint64_t sub_1D256C674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v6 = sub_1D2879328();
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  sub_1D2878568();
  v5[11] = sub_1D2878558();
  v8 = sub_1D28784F8();
  v5[12] = v8;
  v5[13] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1D256C768, v8, v7);
}

uint64_t sub_1D256C768(uint64_t a1)
{
  sub_1D2879718();
  v2 = swift_task_alloc();
  *(v1 + 112) = v2;
  *v2 = v1;
  v2[1] = sub_1D256C834;

  return sub_1D233BA38(5000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_1D256C834()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  (*(v2[9] + 8))(v2[10], v2[8]);
  v3 = v2[13];
  v4 = v2[12];
  if (v0)
  {
    v5 = sub_1D256CB40;
  }

  else
  {
    v5 = sub_1D256C9BC;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D256C9BC()
{
  v1 = v0[6];

  sub_1D279C340(v1);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (*(Strong + 72) == 1)
    {
      *(Strong + 72) = 1;
    }

    else
    {
      v3 = Strong;
      swift_getKeyPath();
      v4 = swift_task_alloc();
      *(v4 + 16) = v3;
      *(v4 + 24) = 1;
      v0[5] = v3;
      sub_1D256F600(&qword_1EC6D8A80, type metadata accessor for PlaygroundHomeViewModel, &protocol conformance descriptor for PlaygroundHomeViewModel);
      sub_1D28719D8();
    }
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_1D256CB40()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1D256CBB0(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D256F600(&qword_1EC6D8690, type metadata accessor for PhotoGridViewModel, &protocol conformance descriptor for PhotoGridViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + 97);
}

void sub_1D256CC80(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D256F600(&qword_1ED89FD50, type metadata accessor for HomeAnimationCoordinator, &unk_1D2897B40);
  sub_1D28719E8();

  *a2 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal24HomeAnimationCoordinator__transitionFlow);
}

uint64_t sub_1D256CD58@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D256F600(&qword_1EC6D8880, type metadata accessor for DetailViewModel, &unk_1D28A1018);
  sub_1D28719E8();

  v4 = *(v3 + 56);
  v5 = *(v3 + 64);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1D23411A0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1D22A58B8(v4, v5);
}

double sub_1D256CE44(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = sub_1D2341198;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1D22A58B8(v2, v3);
  sub_1D256F600(&qword_1EC6D8880, type metadata accessor for DetailViewModel, &unk_1D28A1018);
  sub_1D28719D8();
  sub_1D22A576C(v5, v4);

  return result;
}

uint64_t sub_1D256CFA0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D256F600(&qword_1EC6D8880, type metadata accessor for DetailViewModel, &unk_1D28A1018);
  sub_1D28719E8();

  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 80);
  *a2 = result;
  a2[1] = v5;
  return result;
}

double sub_1D256D050(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1D256F600(&qword_1EC6D8880, type metadata accessor for DetailViewModel, &unk_1D28A1018);
  sub_1D28719D8();

  return result;
}

uint64_t sub_1D256D120(uint64_t a1, void (*a2)(uint64_t, uint64_t, uint64_t), uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9)
{
  v120 = a8;
  v123 = a7;
  v122 = a6;
  v118 = a5;
  v138 = a4;
  v121 = a3;
  v116 = a2;
  v119 = a1;
  v9 = sub_1D2872178();
  v130 = *(v9 - 8);
  v131 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v129 = &v113 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D28728C8();
  v133 = *(v11 - 8);
  v134 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v132 = (&v113 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60, &qword_1D28811F0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v142 = &v113 - v14;
  v126 = sub_1D2873CB8();
  v125 = *(v126 - 8);
  MEMORY[0x1EEE9AC00](v126);
  v135 = &v113 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v124 = &v113 - v17;
  v18 = sub_1D2872008();
  v140 = *(v18 - 8);
  v141 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v117 = &v113 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v139 = &v113 - v21;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA598, &unk_1D289B0A0);
  v22 = *(v128 - 8);
  MEMORY[0x1EEE9AC00](v128);
  v24 = &v113 - v23;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDE60, &qword_1D2880C60);
  v114 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v113 = &v113 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA5A0, &unk_1D2883890);
  v136 = *(v26 - 8);
  v137 = v26;
  v127 = *(v136 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v113 - v27;
  v29 = sub_1D2871818();
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v113 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1D2871DD8();
  v34 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v36 = &v113 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = _s7ManagerCMa(0);
  v145 = &off_1F4DC2000;
  v143[0] = v116;
  *(a9 + 16) = 0;
  *(a9 + 24) = 0;
  sub_1D2871DC8();
  (*(v34 + 32))(a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__previewAspectRatio, v36, v33);
  v37 = a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__displayScale;
  *v37 = 0;
  *(v37 + 8) = 1;
  *(a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v38 = a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__genmojiDelegate;
  *(v38 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_internalDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v39 = a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__currentGenerationError;
  *(v39 + 32) = 0;
  *v39 = 0u;
  *(v39 + 16) = 0u;
  v40 = a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__currentLimitation;
  *v40 = 0;
  *(v40 + 8) = 0;
  *(v40 + 16) = -1;
  *(a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__currentHasSignificantEdits) = 0;
  *(a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__shareSheetSource) = 3;
  *(a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__currentlyUpscalingInBackground) = 0;
  v41 = MEMORY[0x1E69E7CC0];
  *(a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__previewsSavedInBackground) = sub_1D25D83DC(MEMORY[0x1E69E7CC0]);
  *(a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__savedStickers) = sub_1D25D85C4(v41);
  sub_1D2871808();
  (*(v30 + 32))(a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__shouldScaleDownBlobAfterSaveTrigger, v32, v29);
  *(a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__previewsSavedAfterLeavingPlayground) = sub_1D25D83DC(v41);
  v42 = (a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_emptyPreviewImageTransferable);
  *v42 = &unk_1D2881FA8;
  v42[1] = 0;
  *(a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__didAppear) = 0;
  *(a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__isLoading) = 0;
  *(a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__isImportingImage) = 0;
  *(a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__importingImageTask) = 0;
  v43 = (a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__importingImagePending);
  *v43 = 0u;
  v43[1] = 0u;
  *(a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__shouldHideEffectStack) = 0;
  *(a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__shouldShowPromptAlert) = 0;
  *(a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__spotlightAvailabiilyCheckTask) = 0;
  *(a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel____lazy_storage___imageConditioningRepresentationsManager) = 0;
  *(a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__allowedStyles) = sub_1D2871E78();
  *(a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel____lazy_storage___errorViewModel) = 0;
  *(a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel____lazy_storage___floatingbubblesViewModel) = 0;
  *(a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel____lazy_storage___footerViewModel) = 0;
  *(a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel____lazy_storage___stylePickerViewModel) = 0;
  *(a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__previewsViewModel) = 0;
  *(a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel____lazy_storage___animatedEffectsViewModel) = 0;
  *(a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel____lazy_storage___contextualMenuViewModel) = 0;
  *(a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel____lazy_storage___feedbackSectionViewModel) = 0;
  v44 = (a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_analyticsContext);
  *v44 = 0;
  v44[1] = sub_1D25D87D0(v41);
  v45 = _s16AnalyticsContextVMa(0);
  sub_1D2871808();
  _s16AnalyticsContextV12SessionStateVMa(0);
  sub_1D2871808();
  v46 = *(v45 + 28);
  *(v44 + v46) = sub_1D25D88B0(v41);
  *(a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__shouldShowGeneratorOnboardingSheet) = 0;
  v47 = (a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__generatorOnboardingCallback);
  *v47 = CGRectMake;
  v47[1] = 0;
  *(a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__isOnboardingSheetDismissed) = 0;
  v48 = (a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__previewAnalyticsLogBlock);
  *v48 = 0;
  v48[1] = 0;
  *(a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel____lazy_storage___viewActions) = 0;
  v49 = (a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__editingAsset);
  v49[1] = 0;
  v49[2] = 0;
  *v49 = 0;
  *(a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__state) = 1;
  *(a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel____lazy_storage___creationContextFactory) = 0;
  v50 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_previewsStore;
  type metadata accessor for GeneratedPreviewsStore(0);
  v51 = swift_allocObject();
  *(v51 + 16) = v41;
  sub_1D2871A18();
  *(a9 + v50) = v51;
  *(a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_generativeModelsAvailabilityNotifications) = 0;
  *(a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__onboardingSheetCancelled) = 0;
  v52 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__pregeneratedImageForLoadedRecipe;
  v53 = type metadata accessor for PlaygroundImage(0);
  (*(*(v53 - 8) + 56))(a9 + v52, 1, 1, v53);
  *(a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__isPrewarming) = 0;
  *(a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__isPrewarmingDone) = 0;
  *(a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__shouldPrewarmKeyFaces) = 0;
  v54 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__prewarmedDependencies;
  v55 = sub_1D28732B8();
  (*(*(v55 - 8) + 56))(a9 + v54, 1, 1, v55);
  v56 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__pausePhotoImportForConfirmationContinuation;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDE70, &qword_1D287EAC0);
  v58 = *(*(v57 - 8) + 56);
  v58(a9 + v56, 1, 1, v57);
  v58(a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__pauseRecipeLoadingForConfirmationContinuation, 1, 1, v57);
  v58(a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__waitForSwitchingToExternalStyleContinuation, 1, 1, v57);
  v58(a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__pausePhotoImportForStyleSuggestionContinuation, 1, 1, v57);
  v59 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_asyncClosureQueue;
  type metadata accessor for AsyncClosureQueue(0);
  v60 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA5A8, &unk_1D289B0B0);
  v61 = v128;
  (*(v22 + 104))(v24, *MEMORY[0x1E69E8650], v128);
  v62 = v113;
  sub_1D2878608();
  (*(v22 + 8))(v24, v61);
  v63 = *(v136 + 32);
  v128 = v28;
  v116 = v63;
  v63(v60 + OBJC_IVAR____TtC23ImagePlaygroundInternal17AsyncClosureQueue_stream, v28, v137);
  (*(v114 + 32))(v60 + OBJC_IVAR____TtC23ImagePlaygroundInternal17AsyncClosureQueue_continuation, v62, v115);
  *(a9 + v59) = v60;
  *(a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__recipeToLoadContainsPhoto) = 0;
  *(a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__pendingSwitchingToExternalProviderAsTheOnlyStyle) = 0;
  *(a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__confirmShareFromAlert) = 0;
  *(a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__hideStylePickerPendingSetAllowedStyles) = 0;
  v64 = (a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__externalSharingAlertPersonName);
  *v64 = 0;
  v64[1] = 0;
  *(a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__shouldShowExternalSharingAlert) = 0;
  *(a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__scheduleExternalProviderGenerationTask) = 0;
  *(a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__holdExternalProviderGenerationTask) = 0;
  *(a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__externalProviderGenerationPendingStart) = 0;
  sub_1D2871A18();
  v65 = v138;
  *(a9 + 40) = v138;
  *(a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_forceDarkMode) = v118;
  *(a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__isFromEmojiPicker) = v120;
  *(a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_servicesFetcher) = v119;
  sub_1D22D7044(v143, a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_imageGenerationManager);
  *(a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_sessionUndoManager) = v121;
  swift_unknownObjectRetain();
  sub_1D2870F78();
  sub_1D2870F78();
  sub_1D22729C0(v38);
  *(v38 + 8) = v123;
  swift_unknownObjectWeakInit();
  v66 = swift_unknownObjectRelease();
  if (v65 - 1 < 4)
  {
    v67 = v139;
    sub_1D24DE0C4();
LABEL_5:
    v68 = v126;
    v69 = v124;
    goto LABEL_6;
  }

  v67 = v139;
  if (v65 - 5 < 2)
  {
    sub_1D2871FC8();
    goto LABEL_5;
  }

  v68 = v126;
  v69 = v124;
  if (v65)
  {
    MEMORY[0x1D389AA70](v66);
  }

  else
  {
    sub_1D2871FD8();
  }

LABEL_6:
  v70 = v141;
  v71 = *(v140 + 16);
  v71(a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__defaultStyle, v67, v141);
  v72 = v117;
  v71(v117, v67, v70);
  type metadata accessor for CreationContext(0);
  swift_allocObject();
  *(a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_context) = CreationContext.init(defaultStyle:)(v72);
  type metadata accessor for ComposingViewModel.AvailabilityStatus(0);
  swift_storeEnumTagMultiPayload();
  *(a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__isSpotlightModelsAvailable) = 1;
  sub_1D28741E8();
  swift_allocObject();
  *(a9 + 32) = sub_1D28741D8();
  swift_allocObject();
  swift_weakInit();
  sub_1D2870F78();
  sub_1D2870F78();
  sub_1D2870F78();
  sub_1D28741A8();

  sub_1D22BCFD0(0, &qword_1ED89CD50, 0x1E69E9610);
  sub_1D2870F78();
  v73 = sub_1D2878AB8();
  sub_1D28741B8();

  sub_1D28726A8();
  v74 = sub_1D2873CA8();
  v75 = sub_1D28789F8();
  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    *v76 = 0;
    _os_log_impl(&dword_1D226E000, v74, v75, "Creating Spotlight models availability check", v76, 2u);
    MEMORY[0x1D38A3520](v76, -1, -1);
  }

  v77 = *(v125 + 8);
  v77(v69, v68);
  v78 = sub_1D28785F8();
  v79 = *(*(v78 - 8) + 56);
  v80 = v142;
  v79(v142, 1, 1, v78);
  v81 = swift_allocObject();
  swift_weakInit();
  v82 = swift_allocObject();
  v82[2] = 0;
  v82[3] = 0;
  v82[4] = v81;
  v83 = sub_1D2565390(0, 0, v80, &unk_1D2894090, v82);
  sub_1D22BD238(v80, &qword_1EC6D8E60, &qword_1D28811F0);
  sub_1D22FA4FC(v83);
  sub_1D28726A8();
  v84 = sub_1D2873CA8();
  v85 = sub_1D28789F8();
  if (os_log_type_enabled(v84, v85))
  {
    v86 = swift_slowAlloc();
    v126 = v77;
    v87 = v86;
    *v86 = 0;
    _os_log_impl(&dword_1D226E000, v84, v85, "Fetching current GMS availability", v86, 2u);
    v77 = v126;
    MEMORY[0x1D38A3520](v87, -1, -1);
  }

  v77(v135, v68);
  if (sub_1D27D8E2C() & 1) != 0 || (sub_1D27D8EFC() & 1) != 0 || (sub_1D27D8FCC())
  {
    v88 = MEMORY[0x1E696E438];
  }

  else
  {
    v88 = MEMORY[0x1E696E430];
  }

  v90 = v129;
  v89 = v130;
  v91 = v131;
  (*(v130 + 104))(v129, *v88, v131);
  sub_1D2872188();
  v92 = v132;
  sub_1D2872138();
  (*(v89 + 8))(v90, v91);
  sub_1D22FA6A0(v92);
  v93 = swift_allocObject();
  swift_weakInit();
  v94 = swift_allocObject();
  *(v94 + 16) = v93;
  *(v94 + 24) = v138;
  sub_1D2870F78();
  v95 = sub_1D28728B8();

  *(a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_generativeModelsAvailabilityNotifications) = v95;

  v96 = __swift_project_boxed_opaque_existential_1(v143, v144);
  v97 = swift_allocObject();
  swift_weakInit();

  v98 = *v96;
  v99 = *(*v96 + 32);
  v100 = *(v98 + 40);
  *(v98 + 32) = &unk_1D2894098;
  *(v98 + 40) = v97;
  sub_1D2870F78();
  sub_1D22A576C(v99, v100);

  v101 = sub_1D22FC2DC();
  v102 = sub_1D2870F78();
  sub_1D23501F8(v102, v101);

  v103 = *(a9 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_asyncClosureQueue);
  v104 = OBJC_IVAR____TtC23ImagePlaygroundInternal17AsyncClosureQueue_stream;
  v105 = v142;
  v79(v142, 1, 1, v78);
  v106 = v136 + 16;
  v107 = v103 + v104;
  v108 = v128;
  v109 = v137;
  (*(v136 + 16))(v128, v107, v137);
  v110 = (*(v106 + 64) + 32) & ~*(v106 + 64);
  v111 = swift_allocObject();
  *(v111 + 16) = 0;
  *(v111 + 24) = 0;
  v116(v111 + v110, v108, v109);
  sub_1D22AE01C(0, 0, v105, &unk_1D28838A0, v111);

  (*(v133 + 8))(v92, v134);
  (*(v140 + 8))(v139, v141);
  __swift_destroy_boxed_opaque_existential_0(v143);
  return a9;
}

uint64_t sub_1D256E54C()
{
  v2 = *(type metadata accessor for PlaygroundImage(0) - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1D22BDFF8;

  return sub_1D2569B48(v4, v5, v6, v0 + v3);
}

uint64_t sub_1D256E68C(uint64_t a1)
{
  result = sub_1D2871A28();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

void sub_1D256E7A0()
{
  v1 = sub_1D2873CB8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v11 = v0;
  sub_1D256F600(&qword_1EC6D8A80, type metadata accessor for PlaygroundHomeViewModel, &protocol conformance descriptor for PlaygroundHomeViewModel);
  sub_1D28719E8();

  if (*(v0 + 112) == 1)
  {
    v5 = *(v0 + 48);
    swift_getKeyPath();
    v11 = v5;
    sub_1D256F600(&qword_1EC6D87B0, type metadata accessor for NavigationManager, &unk_1D28823E0);
    sub_1D28719E8();

    sub_1D2568E18(*(v5 + 17));
  }

  else
  {
    swift_getKeyPath();
    v11 = v0;
    sub_1D28719E8();

    if (*(v0 + 74) - 1 >= 3)
    {
      sub_1D2872658();
      v6 = sub_1D2873CA8();
      v7 = sub_1D2878A38();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&dword_1D226E000, v6, v7, "EXITING APP after dismissing the enrollment sheet", v8, 2u);
        MEMORY[0x1D38A3520](v8, -1, -1);
      }

      (*(v2 + 8))(v4, v1);
      v9 = [objc_opt_self() sharedApplication];
      [v9 suspend];
    }
  }
}

double sub_1D256EA68(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60, &qword_1D28811F0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70, &qword_1D2881410);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v22 - v8;
  PlaygroundHomeViewModel.photoGridViewModel.getter();
  v10 = *(*a1 + 160);
  v11 = sub_1D2871818();
  v12 = *(v11 - 8);
  v26 = *(v12 + 16);
  v27 = v10;
  v26(v9, a1 + v10, v11);
  v13 = *(v12 + 56);
  v13(v9, 0, 1, v11);
  sub_1D2575A7C(v9);

  swift_getKeyPath();
  v28 = v1;
  sub_1D256F600(&qword_1EC6D8A80, type metadata accessor for PlaygroundHomeViewModel, &protocol conformance descriptor for PlaygroundHomeViewModel);
  sub_1D28719E8();

  if (*(v1 + 74) == 4)
  {
    v25 = v6;
    v15 = *(v1 + 56);
    if (*(v15 + OBJC_IVAR____TtC23ImagePlaygroundInternal24HomeAnimationCoordinator__transitionFlow) == 1)
    {
      *(v15 + OBJC_IVAR____TtC23ImagePlaygroundInternal24HomeAnimationCoordinator__transitionFlow) = 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      v23 = v13;
      v24 = &v22;
      MEMORY[0x1EEE9AC00](KeyPath);
      *(&v22 - 2) = v15;
      *(&v22 - 8) = 1;
      v28 = v15;
      sub_1D256F600(&qword_1ED89FD50, type metadata accessor for HomeAnimationCoordinator, &unk_1D2897B40);
      sub_1D28719D8();
      v13 = v23;
    }

    v26(v9, a1 + v27, v11);
    v13(v9, 0, 1, v11);
    sub_1D25E2EEC(v9);
    v17 = sub_1D28785F8();
    v18 = v25;
    (*(*(v17 - 8) + 56))(v25, 1, 1, v17);
    sub_1D2878568();
    sub_1D2870F78();
    sub_1D2870F78();
    v19 = sub_1D2878558();
    v20 = swift_allocObject();
    v21 = MEMORY[0x1E69E85E0];
    v20[2] = v19;
    v20[3] = v21;
    v20[4] = v2;
    v20[5] = a1;
    sub_1D22AE01C(0, 0, v18, &unk_1D2893DB8, v20);
  }

  return result;
}

uint64_t sub_1D256EE80(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D22BC8FC;

  return sub_1D256AC8C(a1, v4, v5, v7, v6);
}

uint64_t sub_1D256EF80(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D22BDFF8;

  return sub_1D230C02C(a1, v4, v5, v7, v6);
}

uint64_t sub_1D256F040(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA1F0, &unk_1D2881AF0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D256F0D0(void *a1, char a2)
{
  v4 = sub_1D2873CB8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - v9;
  if (a2)
  {
    sub_1D28726D8();
    v11 = a1;
    v12 = sub_1D2873CA8();
    v13 = sub_1D2878A18();
    sub_1D256F35C(a1);
    if (!os_log_type_enabled(v12, v13))
    {
      v10 = v7;
      goto LABEL_8;
    }

    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    v16 = a1;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 4) = v17;
    *v15 = v17;
    _os_log_impl(&dword_1D226E000, v12, v13, "Evaluation error: %@", v14, 0xCu);
    v10 = v7;
    goto LABEL_6;
  }

  sub_1D28726D8();
  v18 = a1;
  v12 = sub_1D2873CA8();
  v19 = sub_1D2878A08();
  sub_1D256F35C(a1);
  if (os_log_type_enabled(v12, v19))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    *(v14 + 4) = v18;
    *v15 = a1;
    v20 = v18;
    _os_log_impl(&dword_1D226E000, v12, v19, "Evaluation response: %@", v14, 0xCu);
LABEL_6:
    sub_1D22BD238(v15, qword_1EC6DA930, &qword_1D287E870);
    MEMORY[0x1D38A3520](v15, -1, -1);
    MEMORY[0x1D38A3520](v14, -1, -1);
  }

LABEL_8:

  return (*(v5 + 8))(v10, v4);
}

uint64_t sub_1D256F368(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D256F3D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D256F450()
{
  result = qword_1ED89CE70;
  if (!qword_1ED89CE70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC6E10E0, &qword_1D2891950);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89CE70);
  }

  return result;
}

uint64_t block_copy_helper_24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1D2870F78();
}

uint64_t sub_1D256F4D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D22BC8FC;

  return sub_1D256C674(a1, v4, v5, v7, v6);
}

void sub_1D256F594()
{
  *(*(v0 + 16) + 64) = *(v0 + 24);
  sub_1D2870F78();
}

uint64_t sub_1D256F600(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D256F690(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D22BDFF8;

  return sub_1D232A08C(a1, v4, v5, v6);
}

uint64_t sub_1D256F750(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1D22BDFF8;

  return sub_1D22FBD08(a1, v1);
}

void sub_1D256F8D0(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D2574A80(&qword_1ED8A2520, type metadata accessor for ComposingViewModel, &protocol conformance descriptor for ComposingViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + 16);
}

uint64_t sub_1D256F9A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D2574A80(&qword_1ED8A2520, type metadata accessor for ComposingViewModel, &protocol conformance descriptor for ComposingViewModel);
  sub_1D28719E8();

  v4 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__generativeModelsStatus;
  swift_beginAccess();
  return sub_1D2572C70(v3 + v4, a2);
}

uint64_t sub_1D256FA68(uint64_t a1)
{
  v2 = type metadata accessor for ComposingViewModel.AvailabilityStatus(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2572C70(a1, v4);
  return sub_1D2306E7C(v4);
}

void sub_1D256FAF4(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D2574A80(&qword_1ED8A2520, type metadata accessor for ComposingViewModel, &protocol conformance descriptor for ComposingViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__isSpotlightModelsAvailable);
}

void *UnavailableOrComposingView.init(composingViewModel:animationNamespace:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 24) = swift_getKeyPath();
  *(a3 + 32) = 0;
  sub_1D28772F8();
  *(a3 + 40) = v6;
  *(a3 + 48) = v7;
  *(a3 + 56) = swift_getKeyPath();
  *(a3 + 64) = 0;
  type metadata accessor for ComposingViewModel(0);
  result = sub_1D28772F8();
  *a3 = v6;
  *(a3 + 8) = v7;
  *(a3 + 16) = a2;
  return result;
}

uint64_t sub_1D256FC7C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for ComposingViewModel.AvailabilityStatus(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2572C70(a1, v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 0)
  {
    v8 = sub_1D2872858();
    v9 = &off_1F4DCCD18;
LABEL_5:
    a2[3] = v8;
    a2[4] = v9;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
    return (*(*(v8 - 8) + 32))(boxed_opaque_existential_1, v6, v8);
  }

  if (EnumCaseMultiPayload == 1)
  {
    v8 = sub_1D28727F8();
    v9 = &off_1F4DCCD40;
    goto LABEL_5;
  }

  result = sub_1D2879398();
  __break(1u);
  return result;
}

uint64_t sub_1D256FDF0@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v107 = a5;
  v106 = a4;
  LODWORD(v132) = a3;
  v117 = a2;
  v138 = a6;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDEE0, &qword_1D2894310);
  v114 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v112 = &v100 - v8;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDED8, &qword_1D2894308);
  MEMORY[0x1EEE9AC00](v122);
  v113 = &v100 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v116 = &v100 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA1B8, &qword_1D2884470);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v129 = &v100 - v13;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDF20, &qword_1D2894350);
  MEMORY[0x1EEE9AC00](v119);
  v120 = &v100 - v14;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDED0, &qword_1D2894300);
  MEMORY[0x1EEE9AC00](v137);
  v121 = &v100 - v15;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDEC0, &qword_1D28942F8);
  v124 = *(v136 - 8);
  MEMORY[0x1EEE9AC00](v136);
  v123 = &v100 - v16;
  v131 = sub_1D2871318();
  v130 = *(v131 - 8);
  MEMORY[0x1EEE9AC00](v131);
  v139 = &v100 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v118 = &v100 - v19;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDF28, &qword_1D2894358);
  MEMORY[0x1EEE9AC00](v133);
  v135 = &v100 - v20;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDF30, &qword_1D2894360);
  MEMORY[0x1EEE9AC00](v125);
  v127 = &v100 - v21;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDEB8, &qword_1D28942F0);
  MEMORY[0x1EEE9AC00](v134);
  v128 = &v100 - v22;
  v101 = sub_1D2872178();
  v100 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v24 = &v100 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_1D2873AD8();
  v105 = *(v126 - 8);
  MEMORY[0x1EEE9AC00](v126);
  v104 = &v100 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_1D2873AF8();
  v103 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v27 = &v100 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v102 = &v100 - v29;
  v30 = sub_1D2875628();
  v109 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v100 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for ComposingViewModel.AvailabilityStatus(0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v100 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = *v6;
  v37 = v6[1];
  v38 = v6[3];
  v110 = v6[2];
  v151 = *(v6 + 32);
  v39 = *(v6 + 49);
  v149 = *(v6 + 33);
  v150 = v39;
  swift_storeEnumTagMultiPayload();
  v111 = a1;
  v40 = sub_1D233C3CC(a1, v35);
  sub_1D257460C(v35, type metadata accessor for ComposingViewModel.AvailabilityStatus);
  if (v40)
  {
    if (v151 == 1)
    {
      v41 = v38;
      if (v38 == 5)
      {
        goto LABEL_7;
      }
    }

    else
    {
      sub_1D2574AC8(v38, 0);
      sub_1D2878A28();
      v42 = sub_1D28762E8();
      sub_1D2873BE8();

      sub_1D2875618();
      swift_getAtKeyPath();
      sub_1D22EE66C(v38, 0);
      (*(v109 + 8))(v32, v30);
      v41 = v144;
      if (v144 == 5)
      {
        goto LABEL_7;
      }
    }

    if (v41 != 6)
    {
      v56 = swift_allocObject();
      *(v56 + 16) = v106;
      *(v56 + 24) = v107;
      sub_1D2870F78();
      v57 = v102;
      sub_1D2873AE8();
      v58 = v100;
      v59 = v101;
      (*(v100 + 104))(v24, *MEMORY[0x1E696E430], v101);
      sub_1D2872168();
      (*(v58 + 8))(v24, v59);
      v60 = v103;
      (*(v103 + 16))(v27, v57, v108);
      v61 = v104;
      sub_1D2873AC8();
      v62 = v105;
      v63 = v126;
      (*(v105 + 16))(v127, v61, v126);
      swift_storeEnumTagMultiPayload();
      sub_1D2574A80(&qword_1ED8A6B58, MEMORY[0x1E69A0818], MEMORY[0x1E69A0810]);
      sub_1D22BB9D8(&qword_1ED89D3E8, &qword_1EC6DDEC0, &qword_1D28942F8, MEMORY[0x1E697C7C8]);
      v64 = v128;
      sub_1D2875AF8();
      sub_1D22BD1D0(v64, v135, &qword_1EC6DDEB8, &qword_1D28942F0);
      swift_storeEnumTagMultiPayload();
      sub_1D2574224();
      sub_1D257430C();
      sub_1D2875AF8();
      sub_1D22BD238(v64, &qword_1EC6DDEB8, &qword_1D28942F0);
      (*(v62 + 8))(v61, v63);
      return (*(v60 + 8))(v57, v108);
    }
  }

LABEL_7:
  if (v132)
  {
    *&v144 = v36;
    *(&v144 + 1) = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAE0, &qword_1D2894120);
    sub_1D2877308();
    v43 = v141;
    swift_getKeyPath();
    *&v144 = v43;
    sub_1D2574A80(&qword_1ED8A2520, type metadata accessor for ComposingViewModel, &protocol conformance descriptor for ComposingViewModel);
    sub_1D28719E8();

    v44 = *(v43 + 16);

    sub_1D25EA40C(v44);
    *&v144 = v36;
    *(&v144 + 1) = v37;
    sub_1D2877308();
    v45 = v141;
    swift_getKeyPath();
    *&v144 = v45;
    sub_1D28719E8();

    v46 = *(v45 + 16);

    v47 = v118;
    v48 = sub_1D25EA79C(v46);
    MEMORY[0x1EEE9AC00](v48);
    MEMORY[0x1EEE9AC00](v49);
    v50 = v123;
    sub_1D2875D48();

    v51 = v124;
    v52 = v136;
    (*(v124 + 16))(v127, v50, v136);
    swift_storeEnumTagMultiPayload();
    sub_1D2574A80(&qword_1ED8A6B58, MEMORY[0x1E69A0818], MEMORY[0x1E69A0810]);
    sub_1D22BB9D8(&qword_1ED89D3E8, &qword_1EC6DDEC0, &qword_1D28942F8, MEMORY[0x1E697C7C8]);
    v53 = v128;
    sub_1D2875AF8();
    sub_1D22BD1D0(v53, v135, &qword_1EC6DDEB8, &qword_1D28942F0);
    swift_storeEnumTagMultiPayload();
    sub_1D2574224();
    sub_1D257430C();
    sub_1D2875AF8();
    sub_1D22BD238(v53, &qword_1EC6DDEB8, &qword_1D28942F0);
    (*(v51 + 8))(v50, v52);
    return (*(v130 + 8))(v47, v131);
  }

  if ((v117 & 1) == 0)
  {
    goto LABEL_16;
  }

  if (v151 == 1)
  {
    v55 = v38;
    if (v38 == 5)
    {
      goto LABEL_16;
    }
  }

  else
  {
    sub_1D2574AC8(v38, 0);
    sub_1D2878A28();
    v65 = sub_1D28762E8();
    sub_1D2873BE8();

    sub_1D2875618();
    swift_getAtKeyPath();
    sub_1D22EE66C(v38, 0);
    (*(v109 + 8))(v32, v30);
    v55 = v144;
    if (v144 == 5)
    {
LABEL_16:
      *&v144 = v36;
      *(&v144 + 1) = v37;
      *&v145 = v110;
      *(&v145 + 1) = v38;
      v146[0] = v151;
      *&v146[1] = v149;
      *&v146[17] = v150;
      sub_1D256FC7C(v111, &v141);
      v66 = v142;
      v67 = v143;
      __swift_project_boxed_opaque_existential_1(&v141, v142);
      *&v144 = v36;
      *(&v144 + 1) = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAE0, &qword_1D2894120);
      sub_1D2877308();
      v68 = v140;
      swift_getKeyPath();
      *&v144 = v68;
      sub_1D2574A80(&qword_1ED8A2520, type metadata accessor for ComposingViewModel, &protocol conformance descriptor for ComposingViewModel);
      sub_1D28719E8();

      v69 = *(v68 + 16);

      v132 = (*(v67 + 8))(v69, v66, v67);
      v128 = v70;
      v71 = v142;
      v72 = v143;
      __swift_project_boxed_opaque_existential_1(&v141, v142);
      *&v144 = v36;
      *(&v144 + 1) = v37;
      sub_1D2877308();
      v73 = v140;
      swift_getKeyPath();
      *&v144 = v73;
      sub_1D28719E8();

      v74 = *(v73 + 16);

      (*(v72 + 16))(v74, v71, v72);
      v75 = v142;
      v76 = v143;
      __swift_project_boxed_opaque_existential_1(&v141, v142);
      *&v144 = v36;
      *(&v144 + 1) = v37;
      sub_1D2877308();
      v77 = v140;
      swift_getKeyPath();
      *&v144 = v77;
      sub_1D28719E8();

      v78 = *(v77 + 16);

      (*(v76 + 24))(v78, v75, v76);
      v79 = v142;
      v80 = v143;
      __swift_project_boxed_opaque_existential_1(&v141, v142);
      *&v144 = v36;
      *(&v144 + 1) = v37;
      sub_1D2877308();
      v81 = v140;
      swift_getKeyPath();
      *&v144 = v81;
      sub_1D28719E8();

      v82 = *(v81 + 16);

      v83 = (*(v80 + 32))(v82, v79, v80);
      MEMORY[0x1EEE9AC00](v83);
      MEMORY[0x1EEE9AC00](v84);
      MEMORY[0x1EEE9AC00](v85);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDF38, &qword_1D2894390);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDF40, &unk_1D2894398);
      sub_1D22BB9D8(&qword_1EC6DDF48, &qword_1EC6DDF38, &qword_1D2894390, MEMORY[0x1E6981F48]);
      sub_1D257493C();
      v86 = v112;
      sub_1D2875D48();

      sub_1D2877848();
      sub_1D2875208();
      v87 = v113;
      (*(v114 + 32))(v113, v86, v115);
      v88 = (v87 + *(v122 + 36));
      v89 = v147;
      v88[4] = *&v146[32];
      v88[5] = v89;
      v88[6] = v148;
      v90 = v145;
      *v88 = v144;
      v88[1] = v90;
      v91 = *&v146[16];
      v88[2] = *v146;
      v88[3] = v91;
      v92 = v116;
      sub_1D228C124(v87, v116);
      sub_1D22BD1D0(v92, v120, &qword_1EC6DDED8, &qword_1D2894308);
      swift_storeEnumTagMultiPayload();
      sub_1D22BB9D8(&qword_1ED89D3E8, &qword_1EC6DDEC0, &qword_1D28942F8, MEMORY[0x1E697C7C8]);
      sub_1D25743C4();
      v93 = v121;
      sub_1D2875AF8();
      sub_1D22BD1D0(v93, v135, &qword_1EC6DDED0, &qword_1D2894300);
      swift_storeEnumTagMultiPayload();
      sub_1D2574224();
      sub_1D257430C();
      sub_1D2875AF8();
      sub_1D22BD238(v93, &qword_1EC6DDED0, &qword_1D2894300);
      sub_1D22BD238(v92, &qword_1EC6DDED8, &qword_1D2894308);
      sub_1D22BD238(v129, &qword_1EC6DA1B8, &qword_1D2884470);
      (*(v130 + 8))(v139, v131);
      return __swift_destroy_boxed_opaque_existential_0(&v141);
    }
  }

  if (v55 == 6)
  {
    goto LABEL_16;
  }

  sub_1D2875798();
  v94 = sub_1D2875798();
  MEMORY[0x1EEE9AC00](v94);
  MEMORY[0x1EEE9AC00](v95);
  v96 = v123;
  sub_1D2875D48();

  v97 = v124;
  v98 = v136;
  (*(v124 + 16))(v120, v96, v136);
  swift_storeEnumTagMultiPayload();
  sub_1D22BB9D8(&qword_1ED89D3E8, &qword_1EC6DDEC0, &qword_1D28942F8, MEMORY[0x1E697C7C8]);
  sub_1D25743C4();
  v99 = v121;
  sub_1D2875AF8();
  sub_1D22BD1D0(v99, v135, &qword_1EC6DDED0, &qword_1D2894300);
  swift_storeEnumTagMultiPayload();
  sub_1D2574224();
  sub_1D257430C();
  sub_1D2875AF8();
  sub_1D22BD238(v99, &qword_1EC6DDED0, &qword_1D2894300);
  return (*(v97 + 8))(v96, v98);
}

void sub_1D2571748(uint64_t a3@<X8>)
{
  sub_1D22BD06C();
  sub_1D2870F68();
  v4 = sub_1D2876698();
  v6 = v5;
  v8 = v7;
  sub_1D2876438();
  v9 = sub_1D2876568();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  sub_1D22ED6E0(v4, v6, v8 & 1);

  *a3 = v9;
  *(a3 + 8) = v11;
  *(a3 + 16) = v13 & 1;
  *(a3 + 24) = v15;
}

void sub_1D2571824(uint64_t a5@<X8>)
{
  sub_1D2870F68();
  sub_1D2870F68();
  v6 = sub_1D2876668();
  v8 = v7;
  v10 = v9;
  sub_1D2876438();
  v11 = sub_1D2876568();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  sub_1D22ED6E0(v6, v8, v10 & 1);

  *a5 = v11;
  *(a5 + 8) = v13;
  *(a5 + 16) = v15 & 1;
  *(a5 + 24) = v17;
}

uint64_t sub_1D2571924@<X0>(uint64_t a5@<X8>)
{
  sub_1D2870F68();
  sub_1D2870F68();
  result = sub_1D2876668();
  *a5 = result;
  *(a5 + 8) = v7;
  *(a5 + 16) = v8 & 1;
  *(a5 + 24) = v9;
  return result;
}

uint64_t sub_1D25719BC@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = sub_1D28771B8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    sub_1D2870F68();
    sub_1D2877198();
    (*(v10 + 104))(v12, *MEMORY[0x1E6981630], v9);
    v40 = sub_1D2877228();

    (*(v10 + 8))(v12, v9);
    sub_1D2877848();
    sub_1D28748C8();
    LOBYTE(v47) = 1;
    v37 = v56;
    v36 = v57;
    v39 = v58;
    v35 = v59;
    v38 = v60;
    v34 = v61;
    a2 = 1;
  }

  else
  {
    v40 = 0;
    v37 = 0;
    v36 = 0;
    v39 = 0;
    v35 = 0;
    v38 = 0;
    v34 = 0;
  }

  v33 = a2;
  v47 = a3;
  v48 = a4;
  sub_1D22BD06C();
  sub_1D2870F68();
  v13 = sub_1D2876698();
  v15 = v14;
  v17 = v16;
  sub_1D2876438();
  v18 = sub_1D2876568();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  sub_1D22ED6E0(v13, v15, v17 & 1);

  v42 = v40;
  *&v43 = a2;
  v25 = v37;
  v26 = v36;
  *(&v43 + 1) = v37;
  *&v44 = v36;
  v27 = v35;
  *(&v44 + 1) = v39;
  *&v45 = v35;
  v28 = v34;
  *(&v45 + 1) = v38;
  v46 = v34;
  v41 = v22 & 1;
  v29 = v45;
  *(a5 + 32) = v44;
  *(a5 + 48) = v29;
  v30 = v43;
  *a5 = v42;
  *(a5 + 16) = v30;
  *(a5 + 64) = v28;
  *(a5 + 72) = v18;
  *(a5 + 80) = v20;
  *(a5 + 88) = v22 & 1;
  *(a5 + 96) = v24;
  sub_1D22BD1D0(&v42, &v47, &qword_1EC6DDF60, &unk_1D28943B0);
  sub_1D22BBFAC(v18, v20, v22 & 1);
  sub_1D2870F68();
  sub_1D22ED6E0(v18, v20, v22 & 1);

  v47 = v40;
  v48 = 0;
  v49 = v33;
  v50 = v25;
  v51 = v26;
  v52 = v39;
  v53 = v27;
  v54 = v38;
  v55 = v28;
  return sub_1D22BD238(&v47, &qword_1EC6DDF60, &unk_1D28943B0);
}

uint64_t sub_1D2571D74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D2871318();
  v5 = MEMORY[0x1EEE9AC00](v4);
  (*(v7 + 16))(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  result = sub_1D2876678();
  *a2 = result;
  *(a2 + 8) = v9;
  *(a2 + 16) = v10 & 1;
  *(a2 + 24) = v11;
  return result;
}

uint64_t sub_1D2571E4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = sub_1D28756D8();
  v38 = *(v3 - 8);
  v39 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v37 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE6C0, &unk_1D2884AD0);
  v35 = *(v5 - 8);
  v36 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v33 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDF58, &qword_1D28943A8);
  v40 = *(v8 - 8);
  v41 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v34 = &v33 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA1B8, &qword_1D2884470);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v33 - v11;
  v13 = sub_1D28716B8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v33 - v18;
  sub_1D22BD1D0(a1, v12, &qword_1EC6DA1B8, &qword_1D2884470);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1D22BD238(v12, &qword_1EC6DA1B8, &qword_1D2884470);
    v20 = 1;
    v22 = v41;
    v21 = v42;
    v23 = v40;
  }

  else
  {
    v24 = *(v14 + 32);
    v24(v19, v12, v13);
    (*(v14 + 16))(v16, v19, v13);
    v25 = (*(v14 + 80) + 16) & ~*(v14 + 80);
    v26 = swift_allocObject();
    v24((v26 + v25), v16, v13);
    sub_1D2877368();
    v27 = v7;
    if (qword_1EC6D7E58 != -1)
    {
      swift_once();
    }

    if (qword_1EC6D7E70 != -1)
    {
      swift_once();
    }

    v28 = v37;
    sub_1D28756C8();
    sub_1D22BB9D8(&qword_1ED89D158, &qword_1EC6DE6C0, &unk_1D2884AD0, MEMORY[0x1E697D680]);
    sub_1D2574A80(&qword_1EC6D7920, MEMORY[0x1E697C4D0], MEMORY[0x1E697C4C8]);
    v29 = v34;
    v30 = v36;
    v31 = v39;
    sub_1D28767A8();
    (*(v38 + 8))(v28, v31);
    (*(v35 + 8))(v27, v30);
    (*(v14 + 8))(v19, v13);
    v23 = v40;
    v22 = v41;
    v21 = v42;
    (*(v40 + 32))(v42, v29, v41);
    v20 = 0;
  }

  return (*(v23 + 56))(v21, v20, 1, v22);
}

void sub_1D25723B8()
{
  v0 = [objc_opt_self() defaultWorkspace];
  if (v0)
  {
    v1 = v0;
    v2 = sub_1D28715B8();
    sub_1D25D7270(MEMORY[0x1E69E7CC0]);
    v3 = sub_1D2877E78();

    [v1 openSensitiveURL:v2 withOptions:v3];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D257248C@<X0>(uint64_t *a1@<X8>)
{
  v25 = a1;
  v1 = sub_1D2874DB8();
  v24 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2875798();
  if (qword_1ED89E0E8 != -1)
  {
    swift_once();
  }

  v4 = qword_1ED8B0058;
  v5 = sub_1D2876668();
  v7 = v6;
  v9 = v8;
  sub_1D2876408();
  v10 = sub_1D2876568();
  v12 = v11;
  v14 = v13;
  sub_1D22ED6E0(v5, v7, v9 & 1);

  sub_1D2874DA8();
  v15 = sub_1D2876648();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  sub_1D22ED6E0(v10, v12, v14 & 1);

  result = (*(v24 + 8))(v3, v1);
  v23 = v25;
  *v25 = v15;
  v23[1] = v17;
  *(v23 + 16) = v19 & 1;
  v23[3] = v21;
  return result;
}

BOOL sub_1D25726D8()
{
  v1 = sub_1D2875628();
  v21 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ComposingViewModel.AvailabilityStatus(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - v8;
  v10 = *v0;
  v11 = v0[1];
  v12 = v0[3];
  v13 = *(v0 + 32);
  v14 = v0[6];
  LOBYTE(v22) = *(v0 + 40);
  v23 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE890, &qword_1D287F9F0);
  sub_1D2877308();
  if (v24)
  {
    return 0;
  }

  v22 = v10;
  v23 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAE0, &qword_1D2894120);
  sub_1D2877308();
  v15 = v24;
  swift_getKeyPath();
  v22 = v15;
  sub_1D2574A80(&qword_1ED8A2520, type metadata accessor for ComposingViewModel, &protocol conformance descriptor for ComposingViewModel);
  sub_1D28719E8();

  v16 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__generativeModelsStatus;
  swift_beginAccess();
  sub_1D2572C70(v15 + v16, v9);

  swift_storeEnumTagMultiPayload();
  LOBYTE(v16) = sub_1D233C3CC(v9, v6);
  sub_1D257460C(v6, type metadata accessor for ComposingViewModel.AvailabilityStatus);
  sub_1D257460C(v9, type metadata accessor for ComposingViewModel.AvailabilityStatus);
  if ((v16 & 1) == 0)
  {
    return 0;
  }

  if (v13)
  {
    v17 = v12;
  }

  else
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v19 = sub_1D28762E8();
    sub_1D2873BE8();

    sub_1D2875618();
    swift_getAtKeyPath();
    sub_1D22EE66C(v12, 0);
    (*(v21 + 8))(v3, v1);
    v17 = v24;
  }

  return (v17 - 7) < 0xFFFFFFFE;
}

uint64_t UnavailableOrComposingView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ComposingViewModel.AvailabilityStatus(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 48);
  v19[2] = *(v1 + 32);
  v19[3] = v7;
  v20 = *(v1 + 64);
  v8 = *(v1 + 16);
  v19[0] = *v1;
  v19[1] = v8;
  v18 = v19[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAE0, &qword_1D2894120);
  sub_1D2877308();
  v9 = v17;
  swift_getKeyPath();
  *&v18 = v9;
  sub_1D2574A80(&qword_1ED8A2520, type metadata accessor for ComposingViewModel, &protocol conformance descriptor for ComposingViewModel);
  sub_1D28719E8();

  v10 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__generativeModelsStatus;
  swift_beginAccess();
  sub_1D2572C70(v9 + v10, v6);

  v17 = *v2;
  sub_1D2877308();
  sub_1D23C6CA0();
  v11 = _SystemPhotoLibrary.photoLibrary.getter();

  if (v11)
  {
  }

  v12 = v11 == 0;
  v17 = *v2;
  sub_1D2877308();
  v13 = v16[1];
  swift_getKeyPath();
  *&v17 = v13;
  sub_1D28719E8();

  v14 = *(v13 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__isSpotlightModelsAvailable);

  sub_1D2572CD4(v12, v19, v6, (v14 & 1) == 0, a1);
  return sub_1D257460C(v6, type metadata accessor for ComposingViewModel.AvailabilityStatus);
}

uint64_t sub_1D2572C70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ComposingViewModel.AvailabilityStatus(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D2572CD4@<X0>(int a1@<W0>, __int128 *a2@<X1>, char *a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  LODWORD(v117) = a4;
  v121 = a3;
  LODWORD(v118) = a1;
  v120 = a5;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDF00, &qword_1D2894328);
  MEMORY[0x1EEE9AC00](v109);
  v7 = &v93 - v6;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDEF0, &qword_1D2894318);
  MEMORY[0x1EEE9AC00](v119);
  v9 = &v93 - v8;
  v99 = sub_1D2876088();
  v98 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v97 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = type metadata accessor for ComposingView(0);
  MEMORY[0x1EEE9AC00](v107);
  v96 = (&v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDEF8, &qword_1D2894320);
  v102 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v114 = &v93 - v12;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDF08, &qword_1D2894330);
  v104 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110);
  v103 = &v93 - v13;
  v105 = type metadata accessor for ComposingViewModel.AvailabilityStatus(0);
  v100 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v95 = &v93 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = v14;
  MEMORY[0x1EEE9AC00](v15);
  v106 = &v93 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDF10, &qword_1D2894338);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v93 - v18;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDF18, &unk_1D2894340);
  MEMORY[0x1EEE9AC00](v111);
  v112 = &v93 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDEA0, &qword_1D28942E0);
  MEMORY[0x1EEE9AC00](v21);
  v113 = &v93 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDEB0, &qword_1D28942E8);
  MEMORY[0x1EEE9AC00](v23);
  v116 = &v93 - v24;
  v25 = sub_1D2875628();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v93 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v118)
  {
    v118 = v17;
    v115 = v21;
    v129 = *(a2 + 32);
    v29 = *(a2 + 3);
    v128 = v29;
    if (v129 == 1)
    {
      v30 = v29;
    }

    else
    {
      sub_1D22BD1D0(&v128, &v123, &qword_1EC6DC9B8, &qword_1D288E4D0);
      sub_1D2878A28();
      v31 = sub_1D28762E8();
      v94 = v7;
      v32 = v31;
      sub_1D2873BE8();

      v7 = v94;
      sub_1D2875618();
      swift_getAtKeyPath();
      sub_1D22BD238(&v128, &qword_1EC6DC9B8, &qword_1D288E4D0);
      (*(v26 + 8))(v28, v25);
      v30 = LOBYTE(v122[0]);
    }

    v21 = v115;
    if (v30 == 5)
    {
      v17 = v118;
    }

    else
    {
      v17 = v118;
      if (v30 != 6)
      {
        v74 = a2[3];
        v125 = a2[2];
        v126 = v74;
        v127 = *(a2 + 64);
        v75 = a2[1];
        v123 = *a2;
        v124 = v75;
        v76 = swift_allocObject();
        v77 = a2[3];
        *(v76 + 48) = a2[2];
        *(v76 + 64) = v77;
        *(v76 + 80) = *(a2 + 64);
        v78 = a2[1];
        *(v76 + 16) = *a2;
        *(v76 + 32) = v78;
        sub_1D25745D4(a2, v122);
        v79 = v116;
        sub_1D256FDF0(v121, 1, 0, sub_1D2574B78, v76, v116);

        sub_1D22BD1D0(v79, v112, &qword_1EC6DDEB0, &qword_1D28942E8);
LABEL_14:
        swift_storeEnumTagMultiPayload();
        sub_1D2574198();
        v80 = v113;
        sub_1D2875AF8();
        sub_1D22BD1D0(v80, v19, &qword_1EC6DDEA0, &qword_1D28942E0);
        swift_storeEnumTagMultiPayload();
        sub_1D2574114();
        sub_1D257447C();
        sub_1D2875AF8();
        v81 = v80;
        v82 = &qword_1EC6DDEA0;
        v83 = &qword_1D28942E0;
        goto LABEL_15;
      }
    }
  }

  if (v117)
  {
    v33 = a2[3];
    v125 = a2[2];
    v126 = v33;
    v127 = *(a2 + 64);
    v34 = a2[1];
    v123 = *a2;
    v124 = v34;
    v35 = swift_allocObject();
    v36 = a2[3];
    *(v35 + 48) = a2[2];
    *(v35 + 64) = v36;
    *(v35 + 80) = *(a2 + 64);
    v37 = a2[1];
    *(v35 + 16) = *a2;
    *(v35 + 32) = v37;
    sub_1D25745D4(a2, v122);
    v79 = v116;
    sub_1D256FDF0(v121, 0, 1, sub_1D2574858, v35, v116);

    sub_1D22BD1D0(v79, v112, &qword_1EC6DDEB0, &qword_1D28942E8);
    goto LABEL_14;
  }

  v113 = v23;
  v117 = v19;
  v38 = v106;
  swift_storeEnumTagMultiPayload();
  v39 = sub_1D233C3CC(v121, v38);
  sub_1D257460C(v38, type metadata accessor for ComposingViewModel.AvailabilityStatus);
  if (v39 & 1) != 0 || (v123 = *a2, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAE0, &qword_1D2894120), sub_1D2877308(), v40 = v122[0], swift_getKeyPath(), *&v123 = v40, sub_1D2574A80(&qword_1ED8A2520, type metadata accessor for ComposingViewModel, &protocol conformance descriptor for ComposingViewModel), sub_1D28719E8(), , v41 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__generativeModelsStatus, swift_beginAccess(), sub_1D2572C70(v40 + v41, v38), v42 = v95, swift_storeEnumTagMultiPayload(), LOBYTE(v41) = sub_1D233C3CC(v38, v42), , sub_1D257460C(v42, type metadata accessor for ComposingViewModel.AvailabilityStatus), sub_1D257460C(v38, type metadata accessor for ComposingViewModel.AvailabilityStatus), (v41))
  {
    v43 = *(a2 + 2);
    v123 = *a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAE0, &qword_1D2894120);
    sub_1D2877308();
    v44 = v96;
    sub_1D26D9A2C(v43, v122[0], v96);
    v45 = v97;
    sub_1D2876078();
    v116 = sub_1D2574A80(&qword_1ED8A4B70, type metadata accessor for ComposingView, &unk_1D289E418);
    v46 = v107;
    sub_1D2876BE8();
    (*(v98 + 8))(v45, v99);
    sub_1D257460C(v44, type metadata accessor for ComposingView);
    sub_1D2878568();
    sub_1D25745D4(a2, &v123);
    v47 = sub_1D2878558();
    v118 = v17;
    v94 = v7;
    v48 = v47;
    v49 = swift_allocObject();
    v50 = v38;
    v51 = MEMORY[0x1E69E85E0];
    *(v49 + 16) = v48;
    *(v49 + 24) = v51;
    v52 = a2[3];
    *(v49 + 64) = a2[2];
    *(v49 + 80) = v52;
    *(v49 + 96) = *(a2 + 64);
    v53 = a2[1];
    *(v49 + 32) = *a2;
    *(v49 + 48) = v53;
    sub_1D25745D4(a2, &v123);
    v54 = sub_1D2878558();
    v55 = swift_allocObject();
    *(v55 + 16) = v54;
    *(v55 + 24) = v51;
    v56 = a2[3];
    *(v55 + 64) = a2[2];
    *(v55 + 80) = v56;
    *(v55 + 96) = *(a2 + 64);
    v57 = a2[1];
    *(v55 + 32) = *a2;
    *(v55 + 48) = v57;
    sub_1D2877528();
    v58 = swift_allocObject();
    v59 = a2[3];
    *(v58 + 48) = a2[2];
    *(v58 + 64) = v59;
    *(v58 + 80) = *(a2 + 64);
    v60 = a2[1];
    *(v58 + 16) = *a2;
    *(v58 + 32) = v60;
    sub_1D2572C70(v121, v50);
    v61 = *(v100 + 80);
    v121 = v9;
    v115 = v21;
    v62 = (v61 + 81) & ~v61;
    v63 = swift_allocObject();
    v64 = a2[3];
    *(v63 + 48) = a2[2];
    *(v63 + 64) = v64;
    *(v63 + 80) = *(a2 + 64);
    v65 = a2[1];
    *(v63 + 16) = *a2;
    *(v63 + 32) = v65;
    sub_1D2574780(v50, v63 + v62);
    sub_1D25745D4(a2, &v123);
    sub_1D25745D4(a2, &v123);
    *&v123 = v46;
    *(&v123 + 1) = v116;
    *&v92 = swift_getOpaqueTypeConformance2();
    *(&v92 + 1) = sub_1D2574198();
    v66 = v113;
    v67 = v103;
    v68 = v108;
    v69 = v114;
    sub_1D2876E48();

    (*(v102 + 8))(v69, v68);
    v70 = v104;
    v71 = v110;
    (*(v104 + 16))(v94, v67, v110);
    swift_storeEnumTagMultiPayload();
    *&v123 = v68;
    *(&v123 + 1) = v66;
    v124 = v92;
    swift_getOpaqueTypeConformance2();
    v72 = v121;
    sub_1D2875AF8();
    sub_1D22BD1D0(v72, v117, &qword_1EC6DDEF0, &qword_1D2894318);
    swift_storeEnumTagMultiPayload();
    sub_1D2574114();
    sub_1D257447C();
    sub_1D2875AF8();
    sub_1D22BD238(v72, &qword_1EC6DDEF0, &qword_1D2894318);
    return (*(v70 + 8))(v67, v71);
  }

  v84 = a2[3];
  v125 = a2[2];
  v126 = v84;
  v127 = *(a2 + 64);
  v85 = a2[1];
  v123 = *a2;
  v124 = v85;
  v86 = swift_allocObject();
  v87 = a2[3];
  *(v86 + 48) = a2[2];
  *(v86 + 64) = v87;
  *(v86 + 80) = *(a2 + 64);
  v88 = a2[1];
  *(v86 + 16) = *a2;
  *(v86 + 32) = v88;
  sub_1D25745D4(a2, v122);
  v79 = v116;
  sub_1D256FDF0(v121, 0, 0, sub_1D2574B78, v86, v116);

  sub_1D22BD1D0(v79, v7, &qword_1EC6DDEB0, &qword_1D28942E8);
  swift_storeEnumTagMultiPayload();
  v89 = sub_1D2574A80(&qword_1ED8A4B70, type metadata accessor for ComposingView, &unk_1D289E418);
  *&v123 = v107;
  *(&v123 + 1) = v89;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v91 = sub_1D2574198();
  *&v123 = v108;
  *(&v123 + 1) = v113;
  *&v124 = OpaqueTypeConformance2;
  *(&v124 + 1) = v91;
  swift_getOpaqueTypeConformance2();
  sub_1D2875AF8();
  sub_1D22BD1D0(v9, v117, &qword_1EC6DDEF0, &qword_1D2894318);
  swift_storeEnumTagMultiPayload();
  sub_1D2574114();
  sub_1D257447C();
  sub_1D2875AF8();
  v81 = v9;
  v82 = &qword_1EC6DDEF0;
  v83 = &qword_1D2894318;
LABEL_15:
  sub_1D22BD238(v81, v82, v83);
  return sub_1D22BD238(v79, &qword_1EC6DDEB0, &qword_1D28942E8);
}