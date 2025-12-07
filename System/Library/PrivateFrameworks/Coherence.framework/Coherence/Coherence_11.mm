void sub_1ADEB99CC()
{
  v1 = sub_1AE23C88C();
  v45 = *(v1 - 8);
  v46 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v43 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1AE23C8CC();
  v42 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v41 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E70, &unk_1AE240EC0);
  v39 = *(v4 - 8);
  v5 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v40 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v38 = &v37 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v37 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v48 = &v37 - v11;
  if (qword_1ED96B308 != -1)
  {
    swift_once();
  }

  v12 = qword_1ED96F2F8;
  sub_1AE23D6AC();
  v13 = aBlock;
  v14 = v51;
  v15 = v52;
  v16 = v0 + OBJC_IVAR____TtC9Coherence10CapsuleRef_version;
  swift_beginAccess();
  v17 = *(v16 + 8);
  if (*(v15 + 16))
  {
    swift_beginAccess();

    sub_1ADDF8898(v13, v14, v15);
    swift_endAccess();
    swift_beginAccess();
    sub_1ADDFBCE8(v13, v14, v15);
    swift_endAccess();

    *(v0 + OBJC_IVAR____TtC9Coherence10CapsuleRef_renameGeneration) = v13;
  }

  else
  {
  }

  v18 = *(v16 + 8);
  v19 = type metadata accessor for Replica(0);
  v20 = *(*(v19 - 8) + 56);
  v21 = v48;
  v20(v48, 1, 1, v19);
  v22 = v47;
  v20(v47, 1, 1, v19);
  v23 = v17;
  if (*(v17 + 16) || *(v18 + 16))
  {
    v37 = *(v12 + 40);
    v24 = v38;
    sub_1ADDCEE40(v21, v38, &unk_1EB5B9E70, &unk_1AE240EC0);
    v25 = v40;
    sub_1ADDCEE40(v22, v40, &unk_1EB5B9E70, &unk_1AE240EC0);
    v26 = *(v39 + 80);
    v27 = (v26 + 56) & ~v26;
    v28 = (v5 + v26 + v27) & ~v26;
    v29 = v23;
    v30 = swift_allocObject();
    v31 = MEMORY[0x1E69E7CC8];
    v30[2] = MEMORY[0x1E69E7CC8];
    v30[3] = v29;
    v30[4] = v31;
    v30[5] = v18;
    v30[6] = v12;
    sub_1ADECD978(v24, v30 + v27);
    sub_1ADECD978(v25, v30 + v28);
    v54 = sub_1ADE4315C;
    v55 = v30;
    aBlock = MEMORY[0x1E69E9820];
    v51 = 1107296256;
    v52 = sub_1ADDD2200;
    v53 = &block_descriptor_55;
    v32 = _Block_copy(&aBlock);
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();

    v33 = v41;
    sub_1AE23C8AC();
    v49 = MEMORY[0x1E69E7CC0];
    sub_1ADDE5F54(&qword_1ED96AC40, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E80, &qword_1AE2521E0);
    sub_1ADDCC7D4(&qword_1ED96AA50, &unk_1EB5B9E80, &qword_1AE2521E0, MEMORY[0x1E69E6328]);
    v34 = v22;
    v35 = v43;
    v36 = v46;
    sub_1AE23D8DC();
    MEMORY[0x1B26FBF60](0, v33, v35, v32);
    _Block_release(v32);

    swift_bridgeObjectRelease_n();
    (*(v45 + 8))(v35, v36);
    (*(v42 + 8))(v33, v44);
    sub_1ADDCEDE0(v34, &unk_1EB5B9E70, &unk_1AE240EC0);
    sub_1ADDCEDE0(v48, &unk_1EB5B9E70, &unk_1AE240EC0);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    sub_1ADDCEDE0(v22, &unk_1EB5B9E70, &unk_1AE240EC0);
    sub_1ADDCEDE0(v21, &unk_1EB5B9E70, &unk_1AE240EC0);
  }
}

uint64_t sub_1ADEBA0C4(void (*a1)(uint64_t))
{
  v3 = OBJC_IVAR____TtC9Coherence10CapsuleRef_version;
  swift_beginAccess();
  a1(v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1ADEBA140(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9Coherence10CapsuleRef_versionUUID;
  swift_beginAccess();
  v4 = sub_1AE23BFEC();
  (*(*(v4 - 8) + 24))(v1 + v3, a1, v4);
  return swift_endAccess();
}

BOOL sub_1ADEBA26C(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC9Coherence10CapsuleRef_assets;
  swift_beginAccess();
  sub_1ADEB58D4(a1, a2, *(v2 + v5), &v8);
  v6 = v8;
  swift_endAccess();
  if (v6)
  {
  }

  return v6 != 0;
}

uint64_t sub_1ADEBA304(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  sub_1ADEB6A04(v1, 0);
  return swift_endAccess();
}

uint64_t sub_1ADEBA3C4()
{
  v1 = (v0 + OBJC_IVAR____TtC9Coherence10CapsuleRef_version);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];
  v5[0] = v3;
  v5[1] = v2;
  swift_beginAccess();

  sub_1AE032778(v5);
  swift_endAccess();
}

uint64_t sub_1ADEBA49C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 16);
  v5 = *(*a1 + 24);
  swift_beginAccess();
  sub_1ADDD86D8(v4, v5);
  v6 = sub_1ADEB5FEC(v4, v5, v3, a2, 0);
  swift_endAccess();
  sub_1ADDCC35C(v4, v5);
  return v6 & 1;
}

uint64_t sub_1ADEBA580@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1ADEB86C4(a1);
  *a2 = result;
  return result;
}

BOOL sub_1ADEBA5BC(uint64_t *a1)
{
  v3 = type metadata accessor for PartiallyOrderedReferenceMap(0);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v9 = *a1;
  v8 = a1[1];
  v10 = OBJC_IVAR____TtC9Coherence10CapsuleRef_references;
  swift_beginAccess();
  sub_1ADECD9E8(v7 + v10, v6, type metadata accessor for PartiallyOrderedReferenceMap);
  sub_1ADDDF7A8(v9, v8, *&v6[*(v4 + 28)], v14);
  sub_1ADDD872C(v6, type metadata accessor for PartiallyOrderedReferenceMap);
  v11 = v15;
  if (v15)
  {
    sub_1ADDDC21C(v14[0], v14[1], v15, v16, v17, v18);
  }

  return v11 != 0;
}

void Capsule.Ref.subscript.getter(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_1ADEBA8CC(a1, a2, a3, sub_1ADE1E638);
}

{
  sub_1ADEBA8CC(a1, a2, a3, sub_1ADEAE800);
}

uint64_t Capsule.Ref.subscript.setter(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v6.n128_f64[0] = sub_1ADECCE2C(a1, a2, a3, a4);
  v7 = *(*(a3 - 8) + 8);

  return v7(a1, a3, v6);
}

uint64_t (*Capsule.Ref.subscript.modify(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x40uLL);
  }

  v10 = v9;
  *a1 = v9;
  v12 = *a2;
  v11 = a2[1];
  v13 = *(v4 + 32);
  v9[4] = v12;
  v14 = v9 + 4;
  v9[5] = v11;
  v9[6] = v13;

  sub_1ADDD86D8(v12, v11);
  sub_1ADEAE30C(v10, v14, a3, a4);
  v10[7] = v15;
  return sub_1ADEBA858;
}

void sub_1ADEBA858(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);

  sub_1ADDCC35C(*(v1 + 32), *(v1 + 40));

  free(v1);
}

void sub_1ADEBA8CC(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *, uint64_t, uint64_t))
{
  v8 = a1[1];
  v9[0] = *a1;
  v7 = v9[0];
  v9[1] = v8;

  sub_1ADDD86D8(v9[0], v8);
  a4(v9, a2, a3);

  sub_1ADDCC35C(v7, v8);
}

void sub_1ADEBA970(uint64_t a1, uint64_t *a2, uint64_t a3, void (*a4)(void *, uint64_t, uint64_t))
{
  v5 = *(a2 + a3 - 24);
  v6 = *(a2 + a3 - 8);
  v7 = *a2;
  v8 = a2[1];
  v9[0] = v7;
  v9[1] = v8;
  sub_1ADDD86D8(v7, v8);
  a4(v9, v5, v6);

  sub_1ADDCC35C(v7, v8);
}

uint64_t sub_1ADEBAA08(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t *, uint64_t, uint64_t))
{
  v7 = *(a3 + a4 - 24);
  v8 = *(a3 + a4 - 8);
  v9 = a3[1];
  v11[0] = *a3;
  v11[1] = v9;
  sub_1ADDD86D8(v11[0], v9);
  return a5(a1, v11, v7, v8);
}

uint64_t Capsule.Ref.subscript.setter(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  sub_1ADECCEA0(a1, a2, a3, a4);
  v5 = sub_1AE23D7CC();
  v6 = *(*(v5 - 8) + 8);

  return v6(a1, v5);
}

void (*Capsule.Ref.subscript.modify(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4))(uint64_t **a1, char a2)
{
  v9 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x48uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[1] = a4;
  v10[2] = v4;
  *v10 = a3;
  v12 = sub_1AE23D7CC();
  v11[3] = v12;
  v13 = *(v12 - 8);
  v11[4] = v13;
  v14 = *(v13 + 64);
  if (v9)
  {
    v11[5] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v11[5] = malloc(*(v13 + 64));
    v15 = malloc(v14);
  }

  v17 = *a2;
  v16 = a2[1];
  v11[6] = v15;
  v11[7] = v17;
  v11[8] = v16;
  v19[0] = v17;
  v19[1] = v16;
  sub_1ADDD86D8(v17, v16);
  sub_1ADDD86D8(v17, v16);
  Capsule.Ref.subscript.getter(v19, a3, a4);
  sub_1ADDCC35C(v17, v16);
  return sub_1ADEBAC5C;
}

void sub_1ADEBAC5C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[7];
  v3 = (*a1)[8];
  v5 = (*a1)[5];
  v6 = (*a1)[6];
  v7 = (*a1)[3];
  v8 = (*a1)[4];
  v9 = (*a1)[1];
  v10 = **a1;
  if (a2)
  {
    (*(v8 + 16))((*a1)[5], v6, v7);
    v14 = v4;
    v15 = v3;
    v11 = sub_1ADECCEA0(v5, &v14, v10, v9);
    v12 = *(v8 + 8);
    v12(v5, v7, v11);
    (v12)(v6, v7);
  }

  else
  {
    v14 = (*a1)[7];
    v15 = v3;
    v13 = sub_1ADECCEA0(v6, &v14, v10, v9);
    (*(v8 + 8))(v6, v7, v13);
  }

  free(v6);
  free(v5);

  free(v2);
}

double Capsule.Ref.import<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v6;
  v10 = v5;

  sub_1ADEAEE48(v9, a2, a3, v7);

  return result;
}

{
  v5 = *(a1 + 32);
  v6 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v6;
  v9 = v5;

  sub_1ADEAFB4C(v8, a2, a3);

  return result;
}

double Capsule.Ref.import<A, B>(_:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a2 + 32);
  v9 = *(a2 + 16);
  v12[0] = *a2;
  v12[1] = v9;
  v13 = v8;

  sub_1ADEAF914(a1, v12, a3, v10, a5);

  return result;
}

void Capsule.Ref.merge<A>(_:)(uint64_t a1)
{
  v1 = *(a1 + 32);

  if (v1)
  {
    sub_1ADEAEF54(v1, 0, 0, 0, v2);
  }

  else
  {
    __break(1u);
  }
}

double Capsule.Ref.apply(_:)(__int128 *a1)
{
  v1 = *(a1 + 2);
  v3 = *a1;
  v4 = v1;

  sub_1ADEB9440(&v3);

  return result;
}

uint64_t Capsule.Ref.root.setter(uint64_t a1)
{
  v3 = *v1;
  sub_1ADECCFAC(a1);
  v4 = *(*(*(v3 + 80) - 8) + 8);

  return v4(a1);
}

uint64_t Capsule.Ref.subscript.setter(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  sub_1ADECD208(a1, a2);
  v4 = *(*(*(v3 + *MEMORY[0x1E69E6CE8] + 8) - 8) + 8);

  return v4(a1);
}

uint64_t sub_1ADEBB0BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v105 = a1;
  v101 = a3;
  v116 = type metadata accessor for PartiallyOrderedReferenceMap(0);
  MEMORY[0x1EEE9AC00](v116);
  v108 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v111 = &v93 - v8;
  v9 = (a2 + OBJC_IVAR____TtC9Coherence10CapsuleRef_version);
  swift_beginAccess();
  v10 = *v9;
  v11 = v9[1];
  v119 = v10;
  v120 = v11;
  v100 = v10;

  v99 = v11;

  v12 = sub_1ADEB86C4(&v119);
  v15 = sub_1ADF7E6A4(v12, v13, v14);

  v125 = v15;
  v16 = (v4 + OBJC_IVAR____TtC9Coherence10CapsuleRef_version);
  swift_beginAccess();
  v17 = *v16;
  v18 = v16[1];
  v98 = v16;
  v119 = v17;
  v120 = v18;

  v19 = sub_1ADEB86C4(&v119);

  sub_1AE017714(v19);

  v20 = swift_allocObject();
  v103 = v20;
  *(v20 + 16) = MEMORY[0x1E69E7CD0];
  v97 = (v20 + 16);
  v21 = v125;
  v22 = v125 + 56;
  v23 = 1 << *(v125 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(v125 + 56);
  v26 = OBJC_IVAR____TtC9Coherence10CapsuleRef_references;
  v112 = v4;
  swift_beginAccess();
  v109 = a2;
  swift_beginAccess();
  v27 = 0;
  v28 = (v23 + 63) >> 6;
  v104 = MEMORY[0x1E69E7CC8];
  v102 = MEMORY[0x1E69E7CC8];
  v110 = v28;
  v107 = v21;
  v106 = v22;
  v114 = v26;
LABEL_4:
  v29 = v116;
LABEL_5:
  v30 = v27;
  if (!v25)
  {
    goto LABEL_8;
  }

  do
  {
    while (1)
    {
      v27 = v30;
LABEL_13:
      v31 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
      v32 = (*(v21 + 48) + ((v27 << 10) | (16 * v31)));
      v33 = *v32;
      v23 = v32[1];
      v34 = v111;
      sub_1ADECD9E8(v112 + v26, v111, type metadata accessor for PartiallyOrderedReferenceMap);
      v35 = *(v34 + *(v29 + 20));
      sub_1ADDD86D8(v33, v23);
      sub_1ADDDF7A8(v33, v23, v35, &v119);
      result = sub_1ADDD872C(v34, type metadata accessor for PartiallyOrderedReferenceMap);
      v37 = v121;
      if (v121)
      {
        break;
      }

      sub_1ADDCC35C(v33, v23);
      v30 = v27;
      v28 = v110;
      v26 = v114;
      v29 = v116;
      if (!v25)
      {
        goto LABEL_8;
      }
    }

    v115 = v33;
    v38 = v119;
    if (!v119)
    {
      __break(1u);
      return result;
    }

    v39 = v23;
    v40 = v120;
    v41 = v122;
    v42 = v123;
    v43 = v124;

    v113 = v41;
    sub_1ADDDC21C(v38, v40, v37, v41, v42, v43);
    v44 = v108;
    sub_1ADECD9E8(v109 + v114, v108, type metadata accessor for PartiallyOrderedReferenceMap);
    v45 = v39;
    sub_1ADDDF7A8(v115, v39, *(v44 + *(v116 + 20)), &v119);
    sub_1ADDD872C(v44, type metadata accessor for PartiallyOrderedReferenceMap);
    v46 = v121;
    if (!v121 || (v47 = v123, v48 = v124, v49 = v38, v50 = v37, v51 = v122, v52 = v120, v53 = , v54 = v52, v45 = v39, v55 = v51, v37 = v50, v38 = v49, v56 = v47, v23 = v53, sub_1ADDDC21C(v53, v54, v46, v55, v56, v48), !v23))
    {
      v96 = v37;
      v68 = v115;
      sub_1ADDD86D8(v115, v45);

      v69 = v113;

      v70 = v104;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v119 = v70;
      sub_1ADEBFE98(v37, v69, v38, v68, v45, isUniquelyReferenced_nonNull_native, sub_1ADF70B90, sub_1ADF6BA98, sub_1ADF771D0);
      sub_1ADDCC35C(v68, v45);
      v104 = v119;
      v72 = type metadata accessor for RetainVisitor();
      v73 = swift_allocObject();
      v74 = MEMORY[0x1E69E7CC0];
      v75 = sub_1ADDDA5BC(MEMORY[0x1E69E7CC0]);
      v76 = sub_1ADDD9ECC(v74);
      *(v73 + 16) = v75;
      *(v73 + 24) = v76;
      v122 = v72;
      v123 = &off_1F23C4550;
      v119 = v73;
      v23 = *(*v38 + 128);

      (v23)(&v119);
      __swift_destroy_boxed_opaque_existential_1(&v119);
      sub_1ADEBBBAC(v73, v109, v103);

      sub_1ADDCC35C(v68, v45);
      v21 = v107;
      v22 = v106;
      v26 = v114;
      v28 = v110;
      goto LABEL_4;
    }

    (*(*v49 + 216))(&v119, v105, v23);
    v57 = v119;
    if (v119)
    {
      v58 = v115;
      sub_1ADDD86D8(v115, v45);

      v59 = v113;

      v95 = v23;
      v60 = v102;
      v61 = swift_isUniquelyReferenced_nonNull_native();
      v119 = v60;
      sub_1ADEBFE98(v37, v59, v57, v58, v45, v61, sub_1ADF70BA4, sub_1ADF6BAAC, sub_1ADF771D0);
      sub_1ADDCC35C(v58, v45);
      v102 = v119;
      v62 = type metadata accessor for RetainVisitor();
      v63 = swift_allocObject();
      v96 = v37;
      v64 = v63;
      v94 = v45;
      v65 = MEMORY[0x1E69E7CC0];
      v66 = sub_1ADDDA5BC(MEMORY[0x1E69E7CC0]);
      v67 = sub_1ADDD9ECC(v65);
      *(v64 + 16) = v66;
      *(v64 + 24) = v67;
      v122 = v62;
      v123 = &off_1F23C4550;
      v119 = v64;
      v23 = *(*v57 + 112);

      (v23)(&v119);
      __swift_destroy_boxed_opaque_existential_1(&v119);
      sub_1ADEBBBAC(v64, v109, v103);
      sub_1ADDCC35C(v58, v94);

      v29 = v116;
      v21 = v107;
      v22 = v106;
      v26 = v114;
      v28 = v110;
      goto LABEL_5;
    }

    sub_1ADDCC35C(v115, v39);

    v30 = v27;
    v29 = v116;
    v21 = v107;
    v22 = v106;
    v26 = v114;
    v28 = v110;
  }

  while (v25);
  while (1)
  {
LABEL_8:
    v27 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      __break(1u);
      goto LABEL_30;
    }

    if (v27 >= v28)
    {
      break;
    }

    v25 = *(v22 + 8 * v27);
    ++v30;
    if (v25)
    {
      goto LABEL_13;
    }
  }

  v77 = v102;
  v78 = v100;
  v79 = v99;
  v80 = v98;
  if (*(v102 + 16))
  {
    goto LABEL_26;
  }

  v81 = *v98;

  sub_1ADF637A8(v82, v79);
  if (v83)
  {

    goto LABEL_26;
  }

  sub_1ADF637A8(v81, v78);
  v85 = v84;

  if (v85)
  {
LABEL_26:
    v86 = *v80;
    v87 = v80[1];
    v88 = v97;
    swift_beginAccess();
    v23 = *v88;
    type metadata accessor for CapsuleMergeableDelta.Storage();
    v29 = swift_allocObject();
    *(v29 + 16) = v86;
    *(v29 + 24) = v87;
    *(v29 + 32) = v78;
    *(v29 + 40) = v79;
    v89 = v104;
    *(v29 + 48) = v77;
    *(v29 + 56) = v89;
    v90 = qword_1ED96B308;

    if (v90 == -1)
    {
LABEL_27:
      sub_1AE1F9D8C(&v118);
      v117 = v118;
      sub_1ADDE1CB8(&v117);

      v91 = v101;
      *v101 = v29;
      v91[1] = v23;
      return result;
    }

LABEL_30:
    swift_once();
    goto LABEL_27;
  }

  v92 = v101;
  *v101 = 0;
  v92[1] = 0;
  return result;
}

void sub_1ADEBBBAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v4 = *(a1 + 24);
  v5 = 1 << *(v4 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v4 + 64);
  v8 = OBJC_IVAR____TtC9Coherence10CapsuleRef_assets;
  v9 = (v5 + 63) >> 6;

  v10 = 0;
  while (v7)
  {
LABEL_10:
    while (1)
    {
      v12 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v13 = (*(v4 + 48) + ((v10 << 10) | (16 * v12)));
      v14 = *v13;
      v15 = v13[1];
      swift_beginAccess();
      v16 = *(a2 + v8);
      v17 = *(v16 + 16);
      sub_1ADDD86D8(v14, v15);
      if (v17)
      {
        v18 = sub_1ADDDE7CC(v14, v15);
        if (v19)
        {
          v20 = *(*(v16 + 56) + 16 * v18);

          if (v20)
          {
            break;
          }
        }
      }

      swift_endAccess();
      swift_beginAccess();
      sub_1ADDD86D8(v14, v15);
      sub_1ADEC1F28(v22, v14, v15);
      swift_endAccess();
      sub_1ADDCC35C(v14, v15);
      sub_1ADDCC35C(v22[0], v22[1]);
      if (!v7)
      {
        goto LABEL_6;
      }
    }

    swift_endAccess();
    sub_1ADDCC35C(v14, v15);
  }

LABEL_6:
  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v9)
    {

      return;
    }

    v7 = *(v4 + 64 + 8 * v11);
    ++v10;
    if (v7)
    {
      v10 = v11;
      goto LABEL_10;
    }
  }

  __break(1u);
}

uint64_t sub_1ADEBBD8C(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + OBJC_IVAR____TtC9Coherence10CapsuleRef_version);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  v17 = *v4;
  if (*(v6 + 16))
  {
    v7 = *(v1 + OBJC_IVAR____TtC9Coherence10CapsuleRef_renameGeneration);
    v8 = qword_1ED96B308;

    if (v8 != -1)
    {
      swift_once();
    }

    sub_1AE23D6AC();
    if (v7 != v14)
    {
      sub_1AE23D6AC();
      sub_1ADDF8898(v14, v15, v16);

      v5 = v17;
    }
  }

  else
  {
  }

  sub_1ADF637A8(v3, v6);
  if (v9)
  {

    v10 = 0;
  }

  else
  {
    sub_1ADF637A8(v2, v5);
    v12 = v11;

    v10 = v12 ^ 1;
  }

  return v10 & 1;
}

void sub_1ADEBBF48(void *a1)
{
  v80 = type metadata accessor for PartiallyOrderedReferenceMap(0);
  MEMORY[0x1EEE9AC00](v80);
  v71 = &v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v73 = &v68 - v5;
  v6 = *a1;
  swift_beginAccess();
  v7 = v6[5];
  v82 = v6[4];
  v83 = v7;

  LOBYTE(a1) = sub_1ADEBBD8C(&v82);

  if ((a1 & 1) == 0)
  {
    return;
  }

  swift_beginAccess();
  v74 = v6;
  v8 = v6[6];
  v9 = *(v8 + 64);
  v70 = v8 + 64;
  v10 = 1 << *(v8 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v9;
  v13 = OBJC_IVAR____TtC9Coherence10CapsuleRef_references;
  v72 = v8;

  v75 = v1;
  v79 = v13;
  swift_beginAccess();
  v14 = 0;
  v69 = (v10 + 63) >> 6;
LABEL_5:
  if (v12)
  {
    goto LABEL_10;
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    if (v15 >= v69)
    {
      break;
    }

    v12 = *(v70 + 8 * v15);
    ++v14;
    if (v12)
    {
      v14 = v15;
LABEL_10:
      v16 = __clz(__rbit64(v12)) | (v14 << 6);
      v17 = (*(v72 + 48) + 16 * v16);
      v18 = *v17;
      v19 = v17[1];
      v20 = (*(v72 + 56) + 24 * v16);
      v21 = *v20;
      v22 = v20[2];
      v23 = v73;
      sub_1ADECD9E8(v75 + v79, v73, type metadata accessor for PartiallyOrderedReferenceMap);
      v24 = v23 + *(v80 + 20);
      v25 = *v24;
      v78 = *(v24 + 16);
      sub_1ADDD86D8(v18, v19);
      sub_1ADDD86D8(v18, v19);

      v77 = v22;

      sub_1ADDDF7A8(v18, v19, v25, &v82);
      sub_1ADDCC35C(v18, v19);
      sub_1ADDD872C(v23, type metadata accessor for PartiallyOrderedReferenceMap);
      v26 = v84;
      if (!v84)
      {

        sub_1ADDCC35C(v18, v19);

        goto LABEL_43;
      }

      v76 = v21;
      v27 = v86;
      v78 = v87;
      v28 = v85;
      v29 = v82;
      v30 = v83;

      sub_1ADDDC21C(v31, v30, v26, v28, v27, v78);
      if (!v29)
      {
        goto LABEL_48;
      }

      v12 &= v12 - 1;
      v81[0] = v77;
      v32 = (*(*v29 + 224))(v81);
      sub_1ADDCC35C(v18, v19);

      if ((v32 & 1) == 0)
      {

        return;
      }

      goto LABEL_5;
    }
  }

  v76 = type metadata accessor for RetainVisitor();
  v33 = swift_allocObject();
  v34 = MEMORY[0x1E69E7CC0];
  v35 = sub_1ADDDA5BC(MEMORY[0x1E69E7CC0]);
  v36 = sub_1ADDD9ECC(v34);
  *(v33 + 16) = v35;
  v73 = v33 + 16;
  v77 = v33;
  *(v33 + 24) = v36;
  v37 = v74[6];
  v40 = *(v37 + 64);
  v39 = v37 + 64;
  v38 = v40;
  v41 = 1 << *(v74[6] + 32);
  v42 = -1;
  if (v41 < 64)
  {
    v42 = ~(-1 << v41);
  }

  v43 = v42 & v38;
  v44 = (v41 + 63) >> 6;
  v78 = v74[6];

  v45 = 0;
  v46 = v77;
  if (v43)
  {
    while (1)
    {
      v47 = v45;
LABEL_22:
      v48 = __clz(__rbit64(v43));
      v43 &= v43 - 1;
      v49 = *(*(v78 + 56) + 24 * (v48 | (v47 << 6)) + 16);
      v85 = v76;
      v86 = &off_1F23C4550;
      v82 = v46;
      v50 = *(*v49 + 112);
      swift_retain_n();

      v50(&v82);

      __swift_destroy_boxed_opaque_existential_1(&v82);
      if (!v43)
      {
        goto LABEL_18;
      }
    }
  }

  while (1)
  {
LABEL_18:
    v47 = v45 + 1;
    if (__OFADD__(v45, 1))
    {
      goto LABEL_46;
    }

    if (v47 >= v44)
    {
      break;
    }

    v43 = *(v39 + 8 * v47);
    ++v45;
    if (v43)
    {
      v45 = v47;
      goto LABEL_22;
    }
  }

  v51 = v73;
  swift_beginAccess();
  v52 = *v51;
  v53 = (*v51 + 64);
  v54 = 1 << *(*v51 + 32);
  v55 = -1;
  if (v54 < 64)
  {
    v55 = ~(-1 << v54);
  }

  v56 = v55 & *v53;
  swift_bridgeObjectRetain_n();
  swift_beginAccess();
  v57 = v75;
  swift_beginAccess();
  v58 = 0;
  v59 = (v54 + 63) >> 6;
  v78 = v52;
  if (v56)
  {
    goto LABEL_33;
  }

  while (2)
  {
    while (2)
    {
      while (2)
      {
        v60 = v58 + 1;
        if (__OFADD__(v58, 1))
        {
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
          return;
        }

        if (v60 >= v59)
        {

          return;
        }

        v56 = v53[v60];
        ++v58;
        if (!v56)
        {
          continue;
        }

        break;
      }

LABEL_34:
      v61 = __clz(__rbit64(v56));
      v56 &= v56 - 1;
      v62 = (*(v52 + 48) + ((v60 << 10) | (16 * v61)));
      v63 = *v62;
      v64 = v62[1];
      v65 = *(v74[7] + 16);
      sub_1ADDD86D8(*v62, v64);
      if (v65)
      {

        sub_1ADDDE7CC(v63, v64);
        if ((v66 & 1) == 0)
        {

          break;
        }

        sub_1ADDCC35C(v63, v64);
        v57 = v75;

        v52 = v78;

        v58 = v60;
        if (!v56)
        {
          continue;
        }

LABEL_33:
        v60 = v58;
        goto LABEL_34;
      }

      break;
    }

    v67 = v71;
    sub_1ADECD9E8(v57 + v79, v71, type metadata accessor for PartiallyOrderedReferenceMap);
    sub_1ADDDF7A8(v63, v64, *(v67 + *(v80 + 20)), &v82);
    sub_1ADDCC35C(v63, v64);
    sub_1ADDD872C(v67, type metadata accessor for PartiallyOrderedReferenceMap);
    if (v84)
    {
      sub_1ADDDC21C(v82, v83, v84, v85, v86, v87);
      v58 = v60;
      if (!v56)
      {
        continue;
      }

      goto LABEL_33;
    }

    break;
  }

LABEL_43:
}

void sub_1ADEBC798(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v89 = type metadata accessor for PartiallyOrderedReferenceMap(0);
  MEMORY[0x1EEE9AC00](v89);
  v88 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v8 = a3[1];
  v84 = *a3;
  v83 = v8;
  swift_beginAccess();
  v86 = v7;
  v9 = *(v7 + 48);
  v10 = v9 + 64;
  v11 = 1 << *(v9 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v9 + 64);
  v14 = OBJC_IVAR____TtC9Coherence10CapsuleRef_references;
  v98 = v3;
  v91 = v3 + OBJC_IVAR____TtC9Coherence10CapsuleRef_version;
  v94 = OBJC_IVAR____TtC9Coherence10CapsuleRef_isUpdated;
  v15 = (v11 + 63) >> 6;
  v92 = v9;

  v16 = 0;
  v97 = v14;
  v90 = v10;
  while (v13)
  {
LABEL_12:
    v23 = __clz(__rbit64(v13)) | (v16 << 6);
    v24 = (*(v92 + 48) + 16 * v23);
    v25 = *v24;
    v26 = v24[1];
    v27 = (*(v92 + 56) + 24 * v23);
    v29 = *v27;
    v28 = v27[1];
    v30 = v27[2];
    swift_beginAccess();
    v111 = v25;
    v112 = v26;
    sub_1ADDD86D8(v25, v26);
    sub_1ADDD86D8(v25, v26);
    v93 = v29;

    v95 = v28;

    v96 = v30;

    v32 = sub_1ADDDD4A0(&v106, &v111);
    if (v31[2])
    {
      v33 = v31;
      if (!*v31)
      {
        goto LABEL_49;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        *v33 = (*(**v33 + 168))();
      }

      v34 = *v33;
      v103[0] = v96;
      (*(*v34 + 232))(v103);
      (v32)(&v106, 0);
      swift_endAccess();
      sub_1ADDCC35C(v111, v112);
    }

    else
    {
      (v32)(&v106, 0);
      sub_1ADDCC35C(v111, v112);
      swift_endAccess();
    }

    swift_beginAccess();
    v111 = v25;
    v112 = v26;
    sub_1ADDD86D8(v25, v26);
    v35 = sub_1ADDE13D8(&v106, &v111);
    if (*(v36 + 16))
    {
      v17 = v95;
      sub_1ADF5F770(v95, v103);
      v18 = v93;
      sub_1ADF5F770(v93, &v104);
      v113 = v104;
      v114 = BYTE2(v104);
      v19 = &v113;
      MergeResult.merge(_:)(v19);
      v35(&v106, 0);
      swift_endAccess();
      sub_1ADDCC35C(v111, v112);
    }

    else
    {
      v35(&v106, 0);
      sub_1ADDCC35C(v111, v112);
      swift_endAccess();
      v18 = v93;
      v17 = v95;
    }

    v13 &= v13 - 1;
    swift_beginAccess();
    sub_1ADF5F770(v17, v115);
    sub_1ADF5F770(v18, &v111);
    LOWORD(v103[0]) = v111;
    BYTE2(v103[0]) = BYTE2(v111);
    v20 = v103;
    MergeResult.merge(_:)(v20);
    swift_endAccess();
    swift_beginAccess();
    sub_1ADDD86D8(v25, v26);
    sub_1ADDE0110(v115, v25, v26);
    swift_endAccess();

    sub_1ADDCC35C(v25, v26);
    sub_1ADDCC35C(v115[0], v115[1]);
    v14 = v97;
    v10 = v90;
  }

  v21 = v98;
  while (1)
  {
    v22 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v22 >= v15)
    {
      break;
    }

    v13 = *(v10 + 8 * v22);
    ++v16;
    if (v13)
    {
      v16 = v22;
      goto LABEL_12;
    }
  }

  v37 = v86;
  swift_beginAccess();
  v38 = *(v37 + 56);
  v41 = *(v38 + 64);
  v40 = v38 + 64;
  v39 = v41;
  v42 = 1 << *(*(v37 + 56) + 32);
  v43 = -1;
  if (v42 < 64)
  {
    v43 = ~(-1 << v42);
  }

  v44 = v43 & v39;
  v92 = *(v37 + 56);

  swift_beginAccess();
  v45 = 0;
  v46 = (v42 + 63) >> 6;
  v90 = v40;
  v87 = v46;
  while (v44)
  {
    v51 = v14;
LABEL_31:
    v53 = __clz(__rbit64(v44)) | (v45 << 6);
    v54 = (*(v92 + 48) + 16 * v53);
    v56 = *v54;
    v55 = v54[1];
    v57 = (*(v92 + 56) + 24 * v53);
    v58 = *v57;
    v96 = v57[1];
    v59 = v57[2];
    v60 = v21 + v51;
    v61 = v88;
    sub_1ADECD9E8(v60, v88, type metadata accessor for PartiallyOrderedReferenceMap);
    v62 = *(v61 + *(v89 + 20));
    sub_1ADDD86D8(v56, v55);
    sub_1ADDD86D8(v56, v55);
    v95 = v58;
    v63 = v59;
    v64 = v96;

    sub_1ADDDF7A8(v56, v55, v62, &v106);
    sub_1ADDCC35C(v56, v55);
    sub_1ADDD872C(v61, type metadata accessor for PartiallyOrderedReferenceMap);
    if (v107)
    {
      v93 = v63;
      sub_1ADDDC21C(v106, *(&v106 + 1), v107, v108, v109, v110);
      v65 = v97;
      v66 = v98;
      swift_beginAccess();
      v104 = v56;
      v105 = v55;
      sub_1ADDD86D8(v56, v55);
      v67 = v66;
      v69 = sub_1ADDDD4A0(&v106, &v104);
      v14 = v65;
      if (v68[2])
      {
        v70 = v68;
        if (!*v68)
        {
          goto LABEL_50;
        }

        v71 = v93;
        v21 = v67;
        if (v93 == *v68)
        {
          v73 = v96;
          if (qword_1ED9670C0 != -1)
          {
            swift_once();
          }

          v113 = word_1ED96F220;
          v114 = byte_1ED96F222;
          (v69)(&v106, 0);
        }

        else
        {
          v85 = v69;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v73 = v96;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            *v70 = (*(**v70 + 168))();
          }

          (*(**v70 + 96))(&v113, v71);
          (v85)(&v106, 0);
        }

        swift_endAccess();
        sub_1ADDCC35C(v104, v105);
      }

      else
      {
        (v69)(&v106, 0);
        sub_1ADDCC35C(v104, v105);
        swift_endAccess();
        v21 = v67;
        v73 = v96;
      }

      swift_beginAccess();
      v104 = v56;
      v105 = v55;
      sub_1ADDD86D8(v56, v55);
      v74 = sub_1ADDE13D8(&v106, &v104);
      if (*(v75 + 16))
      {
        sub_1ADF5F770(v73, &v113);
        sub_1ADF5F770(v95, &v101);
        v99 = v101;
        v100 = v102;
        v76 = &v99;
        MergeResult.merge(_:)(v76);
        v74(&v106, 0);
        swift_endAccess();
        sub_1ADDCC35C(v104, v105);
      }

      else
      {
        v74(&v106, 0);
        sub_1ADDCC35C(v104, v105);
        swift_endAccess();
      }
    }

    else
    {
      v47 = v95;

      v48 = MEMORY[0x1E69E7CC0];
      v93 = sub_1ADDDA5BC(MEMORY[0x1E69E7CC0]);
      v49 = sub_1ADDD9ECC(v48);
      sub_1ADDDA5BC(v48);
      sub_1ADDD9ECC(v48);

      swift_bridgeObjectRelease_n();
      v106 = v63;
      v107 = v47;
      v108 = v64;
      v109 = v93;
      v110 = v49;
      v104 = v56;
      v105 = v55;
      v50 = v97;
      swift_beginAccess();
      sub_1ADDD82B0(&v106, &v104);
      swift_endAccess();
      v93 = v106;

      v21 = v98;

      v14 = v50;
    }

    v44 &= v44 - 1;
    swift_beginAccess();
    sub_1ADDD86D8(v56, v55);
    sub_1ADDE0110(v103, v56, v55);
    swift_endAccess();

    sub_1ADDCC35C(v56, v55);
    sub_1ADDCC35C(v103[0], v103[1]);
    v40 = v90;
    v46 = v87;
  }

  while (1)
  {
    v52 = v45 + 1;
    if (__OFADD__(v45, 1))
    {
      break;
    }

    if (v52 >= v46)
    {

      *&v106 = v84;
      *(&v106 + 1) = v83;
      sub_1ADEA9BC0(0, 0, v77, &v106);
      v78 = v86;
      swift_beginAccess();
      v79 = *(v78 + 16);
      swift_beginAccess();

      sub_1ADF5F770(v80, &v104);
      sub_1ADF5F770(v79, &v113);
      v101 = v113;
      v102 = v114;
      v81 = &v101;
      MergeResult.merge(_:)(v81);
      swift_endAccess();

      return;
    }

    v44 = *(v40 + 8 * v52);
    ++v45;
    if (v44)
    {
      v51 = v14;
      v45 = v52;
      goto LABEL_31;
    }
  }

LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
}

void sub_1ADEBD3F8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1ADF7B030(v2);
  }

  v3 = *(v2 + 2);
  v4[0] = v2 + 32;
  v4[1] = v3;
  sub_1ADEC9744(v4);
  *a1 = v2;
}

void sub_1ADEBD464(uint64_t a1)
{
  v63 = type metadata accessor for PartiallyOrderedReferenceMap(0);
  MEMORY[0x1EEE9AC00](v63);
  v62 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = MEMORY[0x1E69E7CD0];
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 56);
  v8 = OBJC_IVAR____TtC9Coherence10CapsuleRef_references;
  v64 = OBJC_IVAR____TtC9Coherence10CapsuleRef_assets;

  v68 = v1;
  v61 = v8;
  swift_beginAccess();
  v9 = 0;
  v10 = (v5 + 63) >> 6;
  v60 = a1 + 56;
  v59 = v10;
  v58 = a1;
  while (v7)
  {
    v11 = v9;
LABEL_12:
    v12 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v13 = (*(a1 + 48) + ((v11 << 10) | (16 * v12)));
    v15 = *v13;
    v14 = v13[1];
    v16 = v62;
    sub_1ADECD9E8(v68 + v61, v62, type metadata accessor for PartiallyOrderedReferenceMap);
    v17 = *(v16 + *(v63 + 20));
    sub_1ADDD86D8(v15, v14);
    sub_1ADDDF7A8(v15, v14, v17, v72);
    sub_1ADDD872C(v16, type metadata accessor for PartiallyOrderedReferenceMap);
    v18 = v73;
    if (!v73)
    {
      v55 = v15;
      v56 = v14;
LABEL_31:
      sub_1ADDCC35C(v55, v56);
      v9 = v11;
      goto LABEL_6;
    }

    v69 = v15;
    v70 = v14;
    v20 = v75;
    v19 = v76;
    v21 = v74;
    v22 = v72[0];
    v23 = v72[1];

    sub_1ADDDC21C(v24, v23, v18, v21, v20, v19);
    if (!v22)
    {
      v55 = v69;
      v56 = v70;
      goto LABEL_31;
    }

    v25 = type metadata accessor for RetainVisitor();
    v26 = swift_allocObject();
    v27 = MEMORY[0x1E69E7CC0];
    v28 = sub_1ADDDA5BC(MEMORY[0x1E69E7CC0]);
    v29 = sub_1ADDD9ECC(v27);
    *(v26 + 16) = v28;
    *(v26 + 24) = v29;
    v74 = v25;
    v75 = &off_1F23C4550;
    v72[0] = v26;
    v30 = *(*v22 + 128);

    v30(v72);

    __swift_destroy_boxed_opaque_existential_1(v72);
    swift_beginAccess();
    v31 = *(v26 + 24);

    v32 = 0;
    v34 = v31 + 64;
    v33 = *(v31 + 64);
    v66 = v31 + 64;
    v67 = v31;
    v35 = 1 << *(v31 + 32);
    if (v35 < 64)
    {
      v36 = ~(-1 << v35);
    }

    else
    {
      v36 = -1;
    }

    v37 = v36 & v33;
    v38 = (v35 + 63) >> 6;
    v65 = v38;
    v39 = v69;
    v40 = v70;
    if ((v36 & v33) != 0)
    {
      do
      {
LABEL_22:
        v42 = __clz(__rbit64(v37));
        v37 &= v37 - 1;
        v43 = (v32 << 10) | (16 * v42);
        v44 = v68;
        v45 = (*(v67 + 48) + v43);
        v47 = *v45;
        v46 = v45[1];
        v48 = *(*(v67 + 56) + v43);
        v49 = v64;
        swift_beginAccess();
        v50 = *(v44 + v49);
        v51 = *(v50 + 16);
        v71 = v46;
        sub_1ADDD86D8(v47, v46);

        if (v51 && (v52 = sub_1ADDDE7CC(v47, v71), (v53 & 1) != 0) && (v54 = *(*(v50 + 56) + 16 * v52), , v54))
        {
          swift_endAccess();
          sub_1ADDCC35C(v47, v71);
        }

        else
        {
          swift_endAccess();

          sub_1ADEC1658(v72, v48);
          sub_1ADDCC35C(v47, v71);
        }

        v38 = v65;
        v34 = v66;
        v39 = v69;
        v40 = v70;
      }

      while (v37);
    }

    while (1)
    {
      v41 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        __break(1u);
LABEL_34:
        __break(1u);
        return;
      }

      if (v41 >= v38)
      {
        break;
      }

      v37 = *(v34 + 8 * v41);
      ++v32;
      if (v37)
      {
        v32 = v41;
        goto LABEL_22;
      }
    }

    sub_1ADDCC35C(v39, v40);

    v9 = v11;
    a1 = v58;
LABEL_6:
    v4 = v60;
    v10 = v59;
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      goto LABEL_34;
    }

    if (v11 >= v10)
    {
      break;
    }

    v7 = *(v4 + 8 * v11);
    ++v9;
    if (v7)
    {
      goto LABEL_12;
    }
  }
}

void sub_1ADEBD93C(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t *), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v157 = a8;
  v164 = a6;
  v165 = a7;
  v170 = a5;
  v162 = a3;
  v166 = a1;
  v147[1] = a10;
  v163 = a9;
  v159 = a11;
  v169 = type metadata accessor for PartiallyOrderedReferenceMap(0);
  MEMORY[0x1EEE9AC00](v169);
  v167 = v147 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v155 = v147 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v156 = v147 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v160 = v147 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v154 = v147 - v21;
  v189 = MEMORY[0x1E69E7CD0];
  v188 = MEMORY[0x1E69E7CC0];
  swift_beginAccess();
  v168 = a2;
  v22 = *(a2 + 16);
  v23 = v22 + 64;
  v24 = 1 << *(v22 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & *(v22 + 64);
  v27 = OBJC_IVAR____TtC9Coherence10CapsuleRef_references;

  v171 = v27;
  v172 = a4;
  swift_beginAccess();
  v28 = 0;
  v29 = (v24 + 63) >> 6;
  v161 = v22;
LABEL_4:
  if (v26)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v30 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v30 >= v29)
    {

      swift_beginAccess();
      swift_beginAccess();
      swift_beginAccess();
      v75 = v188;
      if (!*(v188 + 2))
      {
LABEL_100:

LABEL_101:

        return;
      }

      while (2)
      {
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v76 = *(v75 + 2);
          if (!v76)
          {
            goto LABEL_103;
          }
        }

        else
        {
          v75 = sub_1ADF79A04(v75);
          v76 = *(v75 + 2);
          if (!v76)
          {
            goto LABEL_103;
          }
        }

        v77 = v76 - 1;
        v78 = &v75[16 * v77];
        v79 = *(v78 + 4);
        v80 = *(v78 + 5);
        *(v75 + 2) = v77;
        v188 = v75;
        sub_1ADDD86D8(v79, v80);
        v81 = sub_1ADDE0110(&v182, v79, v80);
        sub_1ADDCC35C(v182, v183);
        if ((v81 & 1) == 0)
        {

          sub_1ADDCC35C(v79, v80);
          goto LABEL_101;
        }

        if (!v170 || (v182 = v79, v183 = v80, v82 = v164, , v83 = v170, v84 = v170(&v182), sub_1ADDDCE80(v83, v82), (v84 & 1) != 0))
        {
          swift_beginAccess();
          sub_1ADDD86D8(v79, v80);
          v85 = sub_1ADDE0110(&v173, v79, v80);
          swift_endAccess();
          sub_1ADDCC35C(v173, v174);
          if (v85)
          {
            v86 = v160;
            sub_1ADECD9E8(v172 + v171, v160, type metadata accessor for PartiallyOrderedReferenceMap);
            sub_1ADDDF7A8(v79, v80, *(v86 + *(v169 + 20)), &v182);
            sub_1ADDD872C(v86, type metadata accessor for PartiallyOrderedReferenceMap);
            v87 = v184;
            if (v184)
            {
              v89 = v186;
              v88 = v187;
              v90 = v185;
              v91 = v182;
              v92 = v183;

              sub_1ADDDC21C(v93, v92, v87, v90, v89, v88);
              if (v91)
              {

                sub_1ADEB6B04(v79, v80, v91, sub_1ADEB7364, &v182);

                v94 = v182;
                if (!v182)
                {
                  goto LABEL_71;
                }

                v95 = v183;
                v161 = v184;
                v96 = v162;
                swift_beginAccess();
                sub_1ADDD86D8(v79, v80);

                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v173 = *(v96 + 16);
                *(v96 + 16) = 0x8000000000000000;
                v153 = v91;
                sub_1ADEBFB8C(v91, v94, v79, v80, isUniquelyReferenced_nonNull_native);
                sub_1ADDCC35C(v79, v80);
                *(v96 + 16) = v173;
                swift_endAccess();
                v173 = v79;
                v174 = v80;
                v154 = v94;
                v150 = v95;
                v179[0] = v95;
                v179[1] = v161;
                v180 = v94;
                v99 = v171;
                v98 = v172;
                swift_beginAccess();
                sub_1AE0323AC(&v173, &v180, v179, v181);
                swift_endAccess();
                LODWORD(v158) = v181[0];
                LODWORD(v151) = v181[1];
                LODWORD(v152) = v181[2];
                v100 = v156;
                sub_1ADECD9E8(v98 + v99, v156, type metadata accessor for PartiallyOrderedReferenceMap);
                sub_1ADDDF7A8(v79, v80, *(v100 + *(v169 + 20)), &v182);
                sub_1ADDD872C(v100, type metadata accessor for PartiallyOrderedReferenceMap);
                v101 = v184;
                if (!v184)
                {
                  goto LABEL_109;
                }

                v103 = v186;
                v102 = v187;
                v104 = v185;
                v106 = v182;
                v105 = v183;

                sub_1ADDDC21C(v107, v105, v101, v104, v103, v102);
                v149 = v106;
                if (!v106)
                {
                  goto LABEL_108;
                }

                v108 = v155;
                sub_1ADECD9E8(v172 + v171, v155, type metadata accessor for PartiallyOrderedReferenceMap);
                sub_1ADDDF7A8(v79, v80, *(v108 + *(v169 + 20)), &v173);
                sub_1ADDD872C(v108, type metadata accessor for PartiallyOrderedReferenceMap);
                v109 = v175;
                if (!v175)
                {
                  goto LABEL_107;
                }

                v110 = v177;
                v148 = v178;
                v111 = v176;
                v112 = v173;
                v113 = v174;

                v161 = v109;
                v150 = v111;
                sub_1ADDDC21C(v112, v113, v109, v111, v110, v148);
                v114 = v158;
                LOBYTE(v182) = v158;
                v115 = v151;
                BYTE1(v182) = v151;
                v116 = v152;
                BYTE2(v182) = v152;
                v117 = &v182;
                MergeResult.merge(_:)(v117);
                v118 = v168;
                swift_beginAccess();
                v119 = swift_isUniquelyReferenced_nonNull_native();
                v173 = *(v118 + 16);
                *(v118 + 16) = 0x8000000000000000;
                if (v116)
                {
                  v120 = 0x10000;
                }

                else
                {
                  v120 = 0;
                }

                sub_1ADEBFA40(v120 | (v115 << 8) | v114, v79, v80, v119);
                *(v118 + 16) = v173;
                swift_endAccess();
                if (v114 > 1 || v115 > 1)
                {
                  swift_beginAccess();
                  sub_1ADDD86D8(v79, v80);
                  sub_1ADDE0110(&v173, v79, v80);
                  swift_endAccess();
                  sub_1ADDCC35C(v173, v174);
                }

                if (qword_1EB5B9920 != -1)
                {
                  swift_once();
                }

                if (v158 == word_1EB5D750E && v115 == HIBYTE(word_1EB5D750E) && v116 == byte_1EB5D7510)
                {
                  swift_beginAccess();
                  sub_1ADDD86D8(v79, v80);
                  sub_1ADDE0110(&v173, v79, v80);
                  swift_endAccess();

                  sub_1ADDCC35C(v173, v174);
                }

                else
                {

LABEL_71:
                }
              }
            }
          }
        }

        v121 = v168;
        swift_beginAccess();
        v122 = *(v121 + 16);
        if (*(v122 + 16) && (v123 = sub_1ADDDE7CC(v79, v80), (v124 & 1) != 0))
        {
          v125 = (*(v122 + 56) + 3 * v123);
          v126 = *v125;
          v127 = v125[1];
          swift_endAccess();
          if (v166)
          {
            if (v126 <= 1 && v127 <= 1)
            {
              goto LABEL_89;
            }

LABEL_86:
            if (qword_1EB5B9920 != -1)
            {
              swift_once();
            }

            v129 = byte_1EB5D7510;
            v130 = v163;
            *(v163 + 16) = word_1EB5D750E;
            *(v130 + 18) = v129;
            swift_beginAccess();
            sub_1ADDD86D8(v79, v80);
            sub_1ADDE0110(&v173, v79, v80);
            swift_endAccess();
            sub_1ADDCC35C(v173, v174);
            goto LABEL_89;
          }

          if (v126 > 1)
          {
            if (v126 != 2)
            {
              goto LABEL_86;
            }
          }

          else if (v126)
          {
            goto LABEL_86;
          }

          if ((v127 & 0xFFFFFFFD) != 0)
          {
            goto LABEL_86;
          }
        }

        else
        {
          swift_endAccess();
        }

LABEL_89:
        v131 = v167;
        sub_1ADECD9E8(v172 + v171, v167, type metadata accessor for PartiallyOrderedReferenceMap);
        sub_1ADDDF7A8(v79, v80, *(v131 + *(v169 + 20)), &v182);
        sub_1ADDD872C(v131, type metadata accessor for PartiallyOrderedReferenceMap);
        v132 = v184;
        if (v184 && (v134 = v186, v133 = v187, v135 = v185, v136 = v182, v137 = v183, v138 = , sub_1ADDDC21C(v138, v137, v132, v135, v134, v133), v136))
        {
          v139 = type metadata accessor for AllRefsVisitor();
          v140 = swift_allocObject();
          *(v140 + 24) = 0;
          *(v140 + 16) = MEMORY[0x1E69E7CD0];
          v141 = (v140 + 16);
          v185 = v139;
          v186 = &off_1F23C4500;
          v182 = v140;
          v142 = *(*v136 + 128);

          v142(&v182);
          __swift_destroy_boxed_opaque_existential_1(&v182);
          swift_beginAccess();
          v143 = *v141;

          v144 = *(v143 + 16);
          if (v144)
          {
            v145 = sub_1AE1941D0(*(v143 + 16), 0);
            v146 = sub_1AE03A790(&v182, v145 + 2, v144, v143);
            sub_1ADDDCE74(v182);
            if (v146 != v144)
            {
              goto LABEL_104;
            }
          }

          else
          {

            v145 = MEMORY[0x1E69E7CC0];
          }

          sub_1ADFB6D60(v145);
          sub_1ADDCC35C(v79, v80);

          v75 = v188;
        }

        else
        {
          sub_1ADDCC35C(v79, v80);
        }

        if (!*(v75 + 2))
        {
          goto LABEL_100;
        }

        continue;
      }
    }

    v26 = *(v23 + 8 * v30);
    ++v28;
    if (v26)
    {
      v28 = v30;
LABEL_9:
      v31 = __clz(__rbit64(v26));
      v26 &= v26 - 1;
      v32 = v31 | (v28 << 6);
      v33 = (*(v22 + 48) + 16 * v32);
      v35 = *v33;
      v34 = v33[1];
      v36 = (*(v22 + 56) + 3 * v32);
      v37 = *v36;
      v38 = v36[1];
      if (v166)
      {
        if (v37 > 1)
        {
          if (v37 == 2)
          {
            goto LABEL_23;
          }

          goto LABEL_24;
        }

        if (v37)
        {
          goto LABEL_24;
        }

LABEL_23:
        if ((v38 & 0xFFFFFFFD) != 0)
        {
LABEL_24:
          v51 = v162;
          swift_beginAccess();
          v52 = *(v51 + 16);
          v53 = *(v52 + 16);
          sub_1ADDD86D8(v35, v34);
          if (v53 && (v54 = sub_1ADDDE7CC(v35, v34), (v55 & 1) != 0))
          {
            v56 = (*(v52 + 56) + 16 * v54);
            v57 = *v56;
            v58 = v56[1];

            v22 = v161;
            if (v57)
            {

              v158 = v58;
              swift_endAccess();
              v48 = MEMORY[0x1E69E7D48];
              v49 = v57;
              v50 = v158;
              goto LABEL_28;
            }
          }

          else
          {
            v58 = 0;
            v22 = v161;
          }

          v73 = MEMORY[0x1E69E7D48];
          v74 = v58;
LABEL_38:
          sub_1ADECDB08(0, v74, v73);
          swift_endAccess();
          sub_1ADDCC35C(v35, v34);
        }
      }

      else if (v37 > 1 || v38 > 1)
      {
        v40 = v162;
        swift_beginAccess();
        v41 = *(v40 + 16);
        v42 = *(v41 + 16);
        sub_1ADDD86D8(v35, v34);
        if (!v42 || (v43 = sub_1ADDDE7CC(v35, v34), (v44 & 1) == 0))
        {
          v74 = 0;
          v22 = v161;
LABEL_37:
          v73 = MEMORY[0x1E69E7D48];
          goto LABEL_38;
        }

        v45 = (*(v41 + 56) + 16 * v43);
        v46 = *v45;
        v47 = v45[1];

        v153 = v47;

        v22 = v161;
        if (!v46)
        {
          v74 = v153;
          goto LABEL_37;
        }

        swift_endAccess();
        v48 = MEMORY[0x1E69E7D48];
        v158 = v46;
        v49 = v46;
        v50 = v153;
LABEL_28:
        sub_1ADECDB08(v49, v50, v48);
        v59 = v154;
        sub_1ADECD9E8(v172 + v171, v154, type metadata accessor for PartiallyOrderedReferenceMap);
        v60 = *(v59 + *(v169 + 20));
        v151 = v35;
        v152 = v34;
        sub_1ADDDF7A8(v35, v34, v60, &v182);
        sub_1ADDD872C(v59, type metadata accessor for PartiallyOrderedReferenceMap);
        v61 = v184;
        if (!v184)
        {
          goto LABEL_106;
        }

        v62 = v186;
        v153 = v187;
        v63 = v185;
        v65 = v182;
        v64 = v183;

        sub_1ADDDC21C(v66, v64, v61, v63, v62, v153);
        if (!v65)
        {
          goto LABEL_106;
        }

        v67 = v158;
        if (v158 == v65)
        {
          v69 = MEMORY[0x1E69E7CD0];
          v70 = *(MEMORY[0x1E69E7CD0] + 16);
          if (v70)
          {
            goto LABEL_32;
          }
        }

        else
        {
          v68 = *(*v65 + 104);

          v69 = v68(v67);

          v70 = *(v69 + 16);
          if (v70)
          {
LABEL_32:
            v71 = sub_1AE1941D0(v70, 0);
            v72 = sub_1AE03A790(&v182, v71 + 2, v70, v69);
            sub_1ADDDCE74(v182);
            if (v72 != v70)
            {
              goto LABEL_105;
            }

            goto LABEL_41;
          }
        }

        v71 = MEMORY[0x1E69E7CC0];
LABEL_41:
        sub_1ADFB6D60(v71);
        sub_1ADDCC35C(v151, v152);

        v22 = v161;
        goto LABEL_4;
      }

      goto LABEL_4;
    }
  }

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
}

void sub_1ADEBE8DC(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  if (v2 < 2)
  {
    return;
  }

  v3 = 0;
  v4 = v2 >> 1;
  v5 = v2 - 1;
  v6 = 40 * v2 + 8;
  v7 = 32;
  v19 = v2 >> 1;
  while (1)
  {
    if (v3 == v5)
    {
      goto LABEL_5;
    }

    v11 = *(v1 + 2);
    if (v3 >= v11)
    {
      break;
    }

    if (v5 >= v11)
    {
      goto LABEL_14;
    }

    v12 = *&v1[v7 + 16];
    v22 = *&v1[v7 + 24];
    v13 = *&v1[v6 - 16];
    v14 = *&v1[v6 - 8];
    v15 = *&v1[v6];
    v23 = *&v1[v6 + 16];
    v24 = *&v1[v6 + 8];
    v20 = *&v1[v7 + 8];
    v21 = *&v1[v7];
    sub_1ADE42C78(v21, v20);

    sub_1ADE42C78(v13, v14);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_1ADDFC33C(v1);
    }

    v16 = &v1[v7];
    v17 = *&v1[v7];
    v18 = *&v1[v7 + 8];
    *v16 = v13;
    v16[1] = v14;
    v16[2] = v15;
    v16[3] = v24;
    v16[4] = v23;
    sub_1ADECDB08(v17, v18, MEMORY[0x1E69E7CF8]);

    if (v5 >= *(v1 + 2))
    {
      goto LABEL_15;
    }

    v8 = &v1[v6];
    v9 = *&v1[v6 - 16];
    v10 = *&v1[v6 - 8];
    *(v8 - 2) = v21;
    *(v8 - 1) = v20;
    *v8 = v12;
    *(v8 + 8) = v22;
    sub_1ADECDB08(v9, v10, MEMORY[0x1E69E7CF8]);

    v4 = v19;
LABEL_5:
    ++v3;
    --v5;
    v6 -= 40;
    v7 += 40;
    if (v4 == v3)
    {
      return;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
}

uint64_t sub_1ADEBEA90(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v6.n128_f64[0] = sub_1ADECCE2C(a1, a2, a3, a4);
  v7 = *(*(a3 - 8) + 8);

  return v7(a1, a3, v6);
}

uint64_t (*sub_1ADEBEB00(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  *a1 = v8;
  v8[4] = Capsule.Ref.subscript.modify(v8, a2, a3, a4);
  return sub_1ADEBEB94;
}

uint64_t sub_1ADEBEB98(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  sub_1ADECCEA0(a1, a2, a3, a4);
  v5 = sub_1AE23D7CC();
  v6 = *(*(v5 - 8) + 8);

  return v6(a1, v5);
}

uint64_t (*sub_1ADEBEC14(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  *a1 = v8;
  v8[4] = Capsule.Ref.subscript.modify(v8, a2, a3, a4);
  return sub_1ADECDC64;
}

void sub_1ADEBECA8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void sub_1ADEBECF0(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v5 = sub_1ADDD8A6C(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v12 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1ADF6E86C();
      v9 = v12;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for Replica(0);
    sub_1ADDD872C(v10 + *(*(v11 - 8) + 72) * v7, type metadata accessor for Replica);
    sub_1ADDE5634(*(v9 + 56) + 24 * v7, a2);
    sub_1ADF6CF18(v7, v9);
    *v3 = v9;
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }
}

void sub_1ADEBEDCC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_1ADDFF050(a1);
  v7 = v6;
  if (v6)
  {
    v8 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v2;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1ADF6EACC();
      v10 = v13;
    }

    v11 = *(v10 + 48);
    v12 = sub_1AE23BDDC();
    (*(*(v12 - 8) + 8))(v11 + *(*(v12 - 8) + 72) * v8, v12);
    sub_1ADE42D60(*(v10 + 56) + 8 * v8, a2);
    sub_1ADF6D1C4(v8, v10);
    *v3 = v10;
  }

  else
  {
    *a2 = 0;
  }

  *(a2 + 8) = (v7 & 1) == 0;
}

double sub_1ADEBEEB4@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_1ADDF1D10(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1ADE1B924();
      v9 = v11;
    }

    sub_1ADDEE390((*(v9 + 56) + 32 * v7), a2);
    sub_1ADF6D6A4(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

void sub_1ADEBEF54(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v6 = sub_1ADDDE7CC(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v14 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1ADF703A0();
      v10 = v14;
    }

    sub_1ADDCC35C(*(*(v10 + 48) + 16 * v8), *(*(v10 + 48) + 16 * v8 + 8));
    v11 = (*(v10 + 56) + 16 * v8);
    v13 = *v11;
    v12 = v11[1];
    *a3 = v13;
    a3[1] = v12;
    sub_1ADF6DA1C(v8, v10);
    *v4 = v10;
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
  }
}

double sub_1ADEBF000@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_1ADDDE7CC(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1ADF71050();
      v10 = v12;
    }

    sub_1ADDCC35C(*(*(v10 + 48) + 16 * v8), *(*(v10 + 48) + 16 * v8 + 8));
    sub_1ADDEE390((*(v10 + 56) + 32 * v8), a3);
    sub_1ADF6DD9C(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_1ADEBF0A4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1AE23BDDC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1ADDFF050(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1ADF6EACC();
      goto LABEL_7;
    }

    sub_1ADF68CF4(v17, a3 & 1);
    v23 = sub_1ADDFF050(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_1ADF6E598(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_1AE23E27C();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7] + 8 * v14;

  return sub_1ADECDBE8(a1, v21);
}

void sub_1ADEBF270(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1ADDD7A10(a2, a3);
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
      v19 = v11;
      sub_1ADF6ED64();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1ADF690CC(v16, a4 & 1);
    v11 = sub_1ADDD7A10(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_14:
      sub_1AE23E27C();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  else
  {
    sub_1ADF6E658(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_1ADEBF3A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = sub_1ADDDE7CC(a4, a5);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_16;
  }

  v21 = v16;
  v22 = v14[3];
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 >= v20 && (a6 & 1) == 0)
    {
      v23 = v15;
      sub_1ADF6F47C();
      v15 = v23;
      goto LABEL_8;
    }

    sub_1ADF698B8(v20, a6 & 1);
    v15 = sub_1ADDDE7CC(a4, a5);
    if ((v21 & 1) != (v24 & 1))
    {
LABEL_16:
      result = sub_1AE23E27C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v25 = *v7;
  if (v21)
  {
    v26 = (v25[7] + 24 * v15);
    *v26 = a1;
    v26[1] = a2;
    v26[2] = a3;
  }

  else
  {
    sub_1ADF6E65C(v15, a4, a5, a1, a2, a3, v25);

    return sub_1ADDD86D8(a4, a5);
  }
}

void sub_1ADEBF524(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1ADDD7A10(a2, a3);
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
      sub_1ADF6F61C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1ADF69B9C(v16, a4 & 1);
    v11 = sub_1ADDD7A10(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      sub_1AE23E27C();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  else
  {
    sub_1ADF6E658(v11, a2, a3, a1, v21);
  }
}

void sub_1ADEBF66C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1ADDDE7CC(a3, a4);
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
      sub_1ADF703A0();
      v13 = v21;
      goto LABEL_8;
    }

    sub_1ADF6AF70(v18, a5 & 1);
    v13 = sub_1ADDDE7CC(a3, a4);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_16:
      sub_1AE23E27C();
      __break(1u);
      return;
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
    sub_1ADF6E6B0(v13, a3, a4, a1, a2, v23);

    sub_1ADDD86D8(a3, a4);
  }
}

uint64_t sub_1ADEBF7C0(_OWORD *a1, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1ADDDE7CC(a2, a3);
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
      sub_1ADF706B8();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1ADE17954(v16, a4 & 1);
    v11 = sub_1ADDDE7CC(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_1AE23E27C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 48 * v11;

    return sub_1ADECD91C(a1, v22);
  }

  else
  {
    sub_1ADF6E700(v11, a2, a3, a1, v21);

    return sub_1ADDD86D8(a2, a3);
  }
}

uint64_t sub_1ADEBF90C(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1ADDDE7CC(a2, a3);
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
      sub_1ADF6F314();
      result = v19;
      goto LABEL_8;
    }

    sub_1ADF69618(v16, a4 & 1);
    result = sub_1ADDDE7CC(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_14:
      result = sub_1AE23E27C();
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
    sub_1ADDE8C98(result, a2, a3, a1, v21);

    return sub_1ADDD86D8(a2, a3);
  }

  return result;
}

unint64_t sub_1ADEBFA40(int a1, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1ADDDE7CC(a2, a3);
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
      sub_1ADF70888();
      result = v19;
      goto LABEL_8;
    }

    sub_1ADF6B504(v16, a4 & 1);
    result = sub_1ADDDE7CC(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_14:
      result = sub_1AE23E27C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 3 * result;
    *v22 = a1;
    *(v22 + 2) = BYTE2(a1) & 1;
  }

  else
  {
    sub_1ADF6E75C(result, a2, a3, a1 & 0x1FFFF, v21);

    return sub_1ADDD86D8(a2, a3);
  }

  return result;
}

void sub_1ADEBFB8C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1ADDDE7CC(a3, a4);
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
      sub_1ADF70A04();
      v13 = v21;
      goto LABEL_8;
    }

    sub_1ADF6B7D8(v18, a5 & 1);
    v13 = sub_1ADDDE7CC(a3, a4);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_16:
      sub_1AE23E27C();
      __break(1u);
      return;
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
    sub_1ADF6E6B0(v13, a3, a4, a1, a2, v23);

    sub_1ADDD86D8(a3, a4);
  }
}

_OWORD *sub_1ADEBFD44(_OWORD *a1, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1ADDDE7CC(a2, a3);
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
      sub_1ADF71050();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1ADF6C314(v16, a4 & 1);
    v11 = sub_1ADDDE7CC(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_1AE23E27C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1(v22);

    return sub_1ADDEE390(a1, v22);
  }

  else
  {
    sub_1ADF6E7BC(v11, a2, a3, a1, v21);

    return sub_1ADDD86D8(a2, a3);
  }
}

uint64_t sub_1ADEBFE98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, char a6, void (*a7)(void), void (*a8)(uint64_t, void), void (*a9)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = v9;
  v18 = *v9;
  v19 = sub_1ADDDE7CC(a4, a5);
  v21 = *(v18 + 16);
  v22 = (v20 & 1) == 0;
  v23 = __OFADD__(v21, v22);
  v24 = v21 + v22;
  if (v23)
  {
    __break(1u);
    goto LABEL_16;
  }

  v25 = v20;
  v26 = *(v18 + 24);
  if (v26 < v24 || (a6 & 1) == 0)
  {
    if (v26 >= v24 && (a6 & 1) == 0)
    {
      v27 = v19;
      a7();
      v19 = v27;
      goto LABEL_8;
    }

    a8(v24, a6 & 1);
    v19 = sub_1ADDDE7CC(a4, a5);
    if ((v25 & 1) != (v28 & 1))
    {
LABEL_16:
      result = sub_1AE23E27C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v29 = *v11;
  if (v25)
  {
    v30 = (*(v29 + 56) + 24 * v19);
    *v30 = a1;
    v30[1] = a2;
    v30[2] = a3;
  }

  else
  {
    a9(v19, a4, a5, a1, a2, a3, v29);

    return sub_1ADDD86D8(a4, a5);
  }
}

void sub_1ADEC004C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1ADF4A3F0(a2);
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
      sub_1ADF711F8();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1ADF6C5C8(v14, a3 & 1);
    v9 = sub_1ADF4A3F0(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      sub_1AE23E27C();
      __break(1u);
      return;
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

    sub_1ADF6E828(v9, a2, a1, v19);
  }
}

uint64_t sub_1ADEC01B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = sub_1ADDDE7CC(a4, a5);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_16;
  }

  v21 = v16;
  v22 = v14[3];
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 >= v20 && (a6 & 1) == 0)
    {
      v23 = v15;
      sub_1ADF715D8();
      v15 = v23;
      goto LABEL_8;
    }

    sub_1ADF6C84C(v20, a6 & 1);
    v15 = sub_1ADDDE7CC(a4, a5);
    if ((v21 & 1) != (v24 & 1))
    {
LABEL_16:
      result = sub_1AE23E27C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v25 = *v7;
  if (v21)
  {
    v26 = (v25[7] + 24 * v15);
    *v26 = a1;
    v26[1] = a2;
    v26[2] = a3;

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_1ADF6E65C(v15, a4, a5, a1, a2, a3, v25);

    return sub_1ADDD86D8(a4, a5);
  }
}

uint64_t sub_1ADEC0360(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1AE23BDDC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1ADDFF050(a2);
  v15 = *(v12 + 16);
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = *(v12 + 24);
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1ADF71A10();
      goto LABEL_7;
    }

    sub_1ADF6CB28(v17, a3 & 1);
    v22 = sub_1ADDFF050(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_1ADDFF514(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_1AE23E27C();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(*(v20 + 56) + 8 * v14) = a1;
}

void sub_1ADEC052C(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v33 = type metadata accessor for PartiallyOrderedReferenceMap(0);
  MEMORY[0x1EEE9AC00](v33);
  v32 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 0x8000000000000000) == 0)
  {
    v27 = v4;
    if (a2)
    {
      bzero(a1, 8 * a2);
    }

    v28 = a1;
    v26 = a2;
    v8 = *(v34 + 56);
    v30 = v34 + 56;
    v9 = 1 << *(v34 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & v8;
    v12 = OBJC_IVAR____TtC9Coherence10CapsuleRef_references;

    v31 = v12;
    swift_beginAccess();
    v29 = 0;
    v13 = 0;
    v14 = (v9 + 63) >> 6;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v41 = (v11 - 1) & v11;
LABEL_14:
      v18 = v15 | (v13 << 6);
      v19 = (*(v34 + 48) + 16 * v18);
      v21 = *v19;
      v20 = v19[1];
      v22 = v32;
      sub_1ADECD9E8(v35 + v31, v32, type metadata accessor for PartiallyOrderedReferenceMap);
      v23 = *(v22 + *(v33 + 20));
      sub_1ADDD86D8(v21, v20);
      sub_1ADDDF7A8(v21, v20, v23, v36);
      sub_1ADDD872C(v22, type metadata accessor for PartiallyOrderedReferenceMap);
      if (v37)
      {
        sub_1ADDDC21C(v36[0], v36[1], v37, v38, v39, v40);
        sub_1ADDCC35C(v21, v20);
        v11 = v41;
      }

      else
      {
        sub_1ADDCC35C(v21, v20);
        *(v28 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
        v24 = __OFADD__(v29++, 1);
        v11 = v41;
        if (v24)
        {
          __break(1u);
LABEL_19:
          sub_1AE1B2384(v28, v26, v29, v34);

          return;
        }
      }
    }

    v16 = v13;
    while (1)
    {
      v13 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v13 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v30 + 8 * v13);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v41 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void sub_1ADEC07E0(void *a1, char a2, void *a3)
{
  v37 = a1[2];
  if (!v37)
  {
    goto LABEL_23;
  }

  LOBYTE(v5) = a2;
  v6 = a1[5];
  v7 = a1[6];
  v8 = a1[4];
  sub_1ADDD86D8(v8, v6);

  if (!v7)
  {
    goto LABEL_23;
  }

  v9 = *a3;
  v10 = sub_1ADDDE7CC(v8, v6);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_1ADF6C068(v15, v5 & 1);
    v10 = sub_1ADDDE7CC(v8, v6);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_8;
    }

LABEL_6:
    v10 = sub_1AE23E27C();
    __break(1u);
  }

  if (v5)
  {
LABEL_8:
    if (v16)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v20 = v10;
  sub_1ADF70EE0();
  v10 = v20;
  if (v16)
  {
LABEL_9:
    v18 = swift_allocError();
    swift_willThrow();
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB180, &unk_1AE2427A0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      sub_1ADDCC35C(v8, v6);

      return;
    }

    goto LABEL_28;
  }

LABEL_12:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v22 = (v21[6] + 16 * v10);
  *v22 = v8;
  v22[1] = v6;
  *(v21[7] + 8 * v10) = v7;
  v23 = v21[2];
  v14 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v14)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    sub_1AE23DA2C();
    MEMORY[0x1B26FB670](0xD00000000000001BLL, 0x80000001AE260210);
    sub_1AE23DBAC();
    MEMORY[0x1B26FB670](39, 0xE100000000000000);
    sub_1AE23DC5C();
    __break(1u);
    return;
  }

  v21[2] = v24;
  if (v37 != 1)
  {
    v5 = a1 + 9;
    v25 = 1;
    while (v25 < a1[2])
    {
      v6 = *(v5 - 1);
      v7 = *v5;
      v8 = *(v5 - 2);
      sub_1ADDD86D8(v8, v6);

      if (!v7)
      {
        goto LABEL_23;
      }

      v26 = *a3;
      v27 = sub_1ADDDE7CC(v8, v6);
      v29 = v26[2];
      v30 = (v28 & 1) == 0;
      v14 = __OFADD__(v29, v30);
      v31 = v29 + v30;
      if (v14)
      {
        goto LABEL_25;
      }

      v16 = v28;
      if (v26[3] < v31)
      {
        sub_1ADF6C068(v31, 1);
        v27 = sub_1ADDDE7CC(v8, v6);
        if ((v16 & 1) != (v32 & 1))
        {
          goto LABEL_6;
        }
      }

      if (v16)
      {
        goto LABEL_9;
      }

      v33 = *a3;
      *(*a3 + 8 * (v27 >> 6) + 64) |= 1 << v27;
      v34 = (v33[6] + 16 * v27);
      *v34 = v8;
      v34[1] = v6;
      *(v33[7] + 8 * v27) = v7;
      v35 = v33[2];
      v14 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v14)
      {
        goto LABEL_26;
      }

      ++v25;
      v33[2] = v36;
      v5 += 3;
      if (v37 == v25)
      {
        goto LABEL_23;
      }
    }

    goto LABEL_27;
  }

LABEL_23:
}

uint64_t sub_1ADEC0BB0(void *a1, uint64_t a2)
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

    v8 = sub_1AE23D98C();

    if (v8)
    {

      v20[9] = v8;
      type metadata accessor for AnyReference();
      swift_dynamicCast();
      result = 0;
      *a1 = v20[0];
      return result;
    }

    result = sub_1AE23D97C();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v17 = sub_1ADEC2A78(v7, result + 1);
    v20[0] = v17;
    v18 = *(v17 + 16);
    if (*(v17 + 24) <= v18)
    {
      sub_1ADEC2EF8(v18 + 1);
      v17 = v20[0];
    }

    sub_1ADEC4D40(v19, v17);

    *v3 = v17;
    goto LABEL_16;
  }

  sub_1AE23E31C();
  (*(*a2 + 104))(v20);
  v10 = sub_1AE23E34C();
  v11 = -1 << *(v6 + 32);
  v12 = v10 & ~v11;
  if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20[0] = *v2;

    sub_1ADEC4E04(v16, v12, isUniquelyReferenced_nonNull_native);
    *v2 = v20[0];
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v13 = ~v11;
  while (1)
  {
    v14 = *(**(*(v6 + 48) + 8 * v12) + 96);

    LOBYTE(v14) = v14(a2);

    if (v14)
    {
      break;
    }

    v12 = (v12 + 1) & v13;
    if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v12);

  return 0;
}

uint64_t sub_1ADEC0E1C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v75 = *MEMORY[0x1E69E9840];
  v71 = *v5;
  sub_1AE23E31C();
  sub_1AE23E33C();
  if (a2)
  {

    sub_1ADF76AA0(v74, a2);
    sub_1ADF76AA0(v74, a3);
    sub_1ADECDB08(a2, a3, MEMORY[0x1E69E7CF8]);
  }

  v63 = a1;
  sub_1AE23BECC();
  v11 = sub_1AE23E34C();
  v12 = -1 << *(v71 + 32);
  v13 = v11 & ~v12;
  if (((*(v71 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_81:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v74 = *v62;
    sub_1ADE42C78(a2, a3);
    sub_1ADDD86D8(a4, a5);
    sub_1ADEC4FC4(a2, a3, a4, a5, v13, isUniquelyReferenced_nonNull_native);
    *v62 = *v74;
    *v63 = a2;
    v63[1] = a3;
    v63[2] = a4;
    v63[3] = a5;
    return 1;
  }

  v66 = a5;
  v67 = 0;
  v70 = ~v12;
  if (a4)
  {
    v14 = 0;
  }

  else
  {
    v14 = a5 == 0xC000000000000000;
  }

  v15 = !v14;
  v65 = v15;
  v68 = a4;
  v69 = a5 >> 62;
  v16 = __OFSUB__(HIDWORD(a4), a4);
  v61 = v16;
  v60 = HIDWORD(a4) - a4;
  v64 = BYTE6(a5);
  while (1)
  {
    v17 = (*(v71 + 48) + 32 * v13);
    v18 = *v17;
    v19 = v17[1];
    v20 = v17[2];
    v21 = v17[3];
    if (!*v17)
    {
      break;
    }

    if (!a2)
    {
      sub_1ADE42C78(0, a3);
      sub_1ADE42C78(v18, v19);
      sub_1ADDD86D8(v20, v21);
      sub_1ADE42C78(v18, v19);
      sub_1ADE42C78(v18, v19);

      goto LABEL_22;
    }

    sub_1ADE42C78(a2, a3);
    sub_1ADE42C78(v18, v19);
    sub_1ADDD86D8(v20, v21);
    sub_1ADE42C78(v18, v19);
    sub_1ADE42C78(v18, v19);
    sub_1ADF64C74(v19, a3);
    if ((v22 & 1) == 0)
    {
      v27 = MEMORY[0x1E69E7CF8];
      sub_1ADECDB08(a2, a3, MEMORY[0x1E69E7CF8]);

      v28 = v18;
      v29 = v19;
      goto LABEL_24;
    }

    sub_1ADF64C74(v18, a2);
    v24 = v23;
    v25 = MEMORY[0x1E69E7CF8];
    sub_1ADECDB08(a2, a3, MEMORY[0x1E69E7CF8]);

    v26 = v25;
    a4 = v68;
    sub_1ADECDB08(v18, v19, v26);
    if (v24)
    {
      goto LABEL_29;
    }

LABEL_25:
    sub_1ADECDB08(v18, v19, MEMORY[0x1E69E7CF8]);
    sub_1ADDCC35C(v20, v21);
LABEL_26:
    v13 = (v13 + 1) & v70;
    if (((*(v71 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_81;
    }
  }

  if (a2)
  {
    sub_1ADE42C78(a2, a3);
    sub_1ADE42C78(0, v19);
    sub_1ADDD86D8(v20, v21);
    sub_1ADE42C78(0, v19);
LABEL_22:
    v27 = MEMORY[0x1E69E7CF8];
    sub_1ADECDB08(v18, v19, MEMORY[0x1E69E7CF8]);
    v28 = a2;
    v29 = a3;
LABEL_24:
    sub_1ADECDB08(v28, v29, v27);
    goto LABEL_25;
  }

  sub_1ADE42C78(0, a3);
  sub_1ADE42C78(0, v19);
  sub_1ADDD86D8(v20, v21);
  sub_1ADE42C78(0, v19);
  sub_1ADECDB08(0, v19, MEMORY[0x1E69E7CF8]);
LABEL_29:
  v30 = v21 >> 62;
  if (v21 >> 62 == 3)
  {
    if (v20)
    {
      v31 = 0;
    }

    else
    {
      v31 = v21 == 0xC000000000000000;
    }

    v32 = v69;
    v34 = !v31 || v69 < 3;
    if (((v34 | v65) & 1) == 0)
    {
      v53 = MEMORY[0x1E69E7CF8];
      sub_1ADECDB08(v18, v19, MEMORY[0x1E69E7CF8]);
      sub_1ADDCC35C(0, 0xC000000000000000);
      sub_1ADECDB08(a2, a3, v53);
      v54 = 0;
      v55 = 0xC000000000000000;
      goto LABEL_84;
    }

LABEL_51:
    v35 = 0;
    if (v32 > 1)
    {
      goto LABEL_52;
    }

LABEL_48:
    v39 = v64;
    if (v32)
    {
      v39 = v60;
      if (v61)
      {
        goto LABEL_86;
      }
    }
  }

  else
  {
    v32 = v69;
    if (v30 <= 1)
    {
      if (v30)
      {
        LODWORD(v35) = HIDWORD(v20) - v20;
        if (__OFSUB__(HIDWORD(v20), v20))
        {
          goto LABEL_87;
        }

        v35 = v35;
        if (v69 > 1)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v35 = BYTE6(v21);
        if (v69 > 1)
        {
          goto LABEL_52;
        }
      }

      goto LABEL_48;
    }

    if (v30 != 2)
    {
      goto LABEL_51;
    }

    v37 = *(v20 + 16);
    v36 = *(v20 + 24);
    v38 = __OFSUB__(v36, v37);
    v35 = v36 - v37;
    if (v38)
    {
      goto LABEL_88;
    }

    if (v69 <= 1)
    {
      goto LABEL_48;
    }

LABEL_52:
    if (v32 != 2)
    {
      if (!v35)
      {
LABEL_82:
        v52 = MEMORY[0x1E69E7CF8];
        sub_1ADECDB08(v18, v19, MEMORY[0x1E69E7CF8]);
        sub_1ADDCC35C(v20, v21);
        sub_1ADECDB08(a2, a3, v52);
        v54 = a4;
        v55 = a5;
        goto LABEL_84;
      }

      goto LABEL_25;
    }

    v41 = *(a4 + 16);
    v40 = *(a4 + 24);
    v38 = __OFSUB__(v40, v41);
    v39 = v40 - v41;
    if (v38)
    {
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
    }
  }

  if (v35 != v39)
  {
    goto LABEL_25;
  }

  if (v35 < 1)
  {
    goto LABEL_82;
  }

  if (v30 > 1)
  {
    if (v30 != 2)
    {
      *&v74[6] = 0;
      *v74 = 0;
      goto LABEL_76;
    }

    v42 = *(v20 + 16);
    v58 = *(v20 + 24);
    v43 = sub_1AE23BB7C();
    if (v43)
    {
      v44 = sub_1AE23BBAC();
      if (__OFSUB__(v42, v44))
      {
        goto LABEL_91;
      }

      v43 += v42 - v44;
    }

    if (__OFSUB__(v58, v42))
    {
      goto LABEL_90;
    }
  }

  else
  {
    if (!v30)
    {
      *v74 = v20;
      *&v74[8] = v21;
      v74[10] = BYTE2(v21);
      v74[11] = BYTE3(v21);
      v74[12] = BYTE4(v21);
      v74[13] = BYTE5(v21);
LABEL_76:
      v47 = a5;
      v48 = v67;
      sub_1ADDD8820(v74, a4, v47, &v73);
      sub_1ADECDB08(v18, v19, MEMORY[0x1E69E7CF8]);
      sub_1ADDCC35C(v20, v21);
      if (v73)
      {
        goto LABEL_83;
      }

LABEL_80:
      v67 = v48;
      a5 = v66;
      goto LABEL_26;
    }

    if (v20 >> 32 < v20)
    {
      goto LABEL_89;
    }

    v45 = sub_1AE23BB7C();
    if (v45)
    {
      v59 = v45;
      v46 = sub_1AE23BBAC();
      if (__OFSUB__(v20, v46))
      {
        goto LABEL_92;
      }

      v43 = v20 - v46 + v59;
    }

    else
    {
      v43 = 0;
    }
  }

  sub_1AE23BB9C();
  v49 = v43;
  v48 = v67;
  a4 = v68;
  sub_1ADDD8820(v49, v68, v66, v74);
  sub_1ADECDB08(v18, v19, MEMORY[0x1E69E7CF8]);
  sub_1ADDCC35C(v20, v21);
  if ((v74[0] & 1) == 0)
  {
    goto LABEL_80;
  }

LABEL_83:
  sub_1ADECDB08(a2, a3, MEMORY[0x1E69E7CF8]);
  v54 = a4;
  v55 = v66;
LABEL_84:
  sub_1ADDCC35C(v54, v55);
  v56 = (*(v71 + 48) + 32 * v13);
  v57 = *v56;
  v72 = v56[1];
  *v63 = *v56;
  *(v63 + 1) = v72;
  sub_1ADE42C78(v57, *(&v57 + 1));
  sub_1ADDD86D8(v72, *(&v72 + 1));
  return 0;
}

uint64_t sub_1ADEC1658(void *a1, uint64_t a2)
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = *v2;
  sub_1AE23E31C();
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  sub_1ADDD86D8(v5, v6);
  sub_1AE23BECC();
  sub_1ADDCC35C(v5, v6);
  v7 = sub_1AE23E34C();
  v8 = v4 + 56;
  v9 = -1 << *(v4 + 32);
  v10 = v7 & ~v9;
  if ((*(v4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = 0;
    v12 = ~v9;
    v40 = v4;
    v41 = a2;
    v42 = v4 + 56;
    v44 = ~v9;
    while (1)
    {
      v13 = *(*(v4 + 48) + 8 * v10);
      v15 = *(v13 + 16);
      v14 = *(v13 + 24);
      v17 = *(a2 + 16);
      v16 = *(a2 + 24);
      v18 = v14 >> 62;
      v19 = v16 >> 62;
      if (v14 >> 62 == 3)
      {
        break;
      }

      if (v18 <= 1)
      {
        if (!v18)
        {
          v21 = BYTE6(v14);
          if (v19 <= 1)
          {
            goto LABEL_28;
          }

          goto LABEL_33;
        }

        LODWORD(v21) = HIDWORD(v15) - v15;
        if (__OFSUB__(HIDWORD(v15), v15))
        {
          goto LABEL_60;
        }

        v21 = v21;
        goto LABEL_27;
      }

      if (v18 == 2)
      {
        v24 = *(v15 + 16);
        v23 = *(v15 + 24);
        v25 = __OFSUB__(v23, v24);
        v21 = v23 - v24;
        if (v25)
        {
          goto LABEL_59;
        }

        goto LABEL_27;
      }

      v21 = 0;
      if (v19 <= 1)
      {
LABEL_28:
        if (v19)
        {
          LODWORD(v26) = HIDWORD(v17) - v17;
          if (__OFSUB__(HIDWORD(v17), v17))
          {
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
            __break(1u);
LABEL_64:
            __break(1u);
          }

          v26 = v26;
        }

        else
        {
          v26 = BYTE6(v16);
        }

        goto LABEL_35;
      }

LABEL_33:
      if (v19 != 2)
      {
        if (!v21)
        {
          goto LABEL_55;
        }

        goto LABEL_4;
      }

      v28 = *(v17 + 16);
      v27 = *(v17 + 24);
      v25 = __OFSUB__(v27, v28);
      v26 = v27 - v28;
      if (v25)
      {
        goto LABEL_58;
      }

LABEL_35:
      if (v21 != v26)
      {
        goto LABEL_4;
      }

      if (v21 < 1)
      {
        goto LABEL_55;
      }

      if (v18 <= 1)
      {
        if (!v18)
        {
          *v46 = *(v13 + 16);
          *&v46[8] = v14;
          v46[10] = BYTE2(v14);
          v46[11] = BYTE3(v14);
          v46[12] = BYTE4(v14);
          v46[13] = BYTE5(v14);

          sub_1ADDD86D8(v15, v14);
          sub_1ADDD86D8(v17, v16);
          v8 = v42;
          sub_1ADDD8820(v46, v17, v16, v45);

          sub_1ADDCC35C(v15, v14);
          sub_1ADDCC35C(v17, v16);
          v12 = v44;
          if (v45[0])
          {
            goto LABEL_55;
          }

          goto LABEL_4;
        }

        v43 = v11;
        if (v15 >> 32 < v15)
        {
          goto LABEL_61;
        }

        sub_1ADDD86D8(v15, v14);
        sub_1ADDD86D8(v17, v16);
        v30 = sub_1AE23BB7C();
        if (v30)
        {
          v32 = sub_1AE23BBAC();
          if (__OFSUB__(v15, v32))
          {
            goto LABEL_64;
          }

          v30 += v15 - v32;
        }

        goto LABEL_52;
      }

      if (v18 == 2)
      {
        v29 = *(v15 + 16);
        v37 = *(v15 + 24);

        sub_1ADDD86D8(v15, v14);
        sub_1ADDD86D8(v17, v16);
        v30 = sub_1AE23BB7C();
        v43 = v11;
        if (v30)
        {
          v31 = sub_1AE23BBAC();
          if (__OFSUB__(v29, v31))
          {
            goto LABEL_63;
          }

          v30 += v29 - v31;
        }

        if (__OFSUB__(v37, v29))
        {
          goto LABEL_62;
        }

LABEL_52:
        sub_1AE23BB9C();
        v11 = v43;
        sub_1ADDD8820(v30, v17, v16, v46);

        sub_1ADDCC35C(v15, v14);
        sub_1ADDCC35C(v17, v16);
        v33 = v46[0];
        v4 = v40;
        a2 = v41;
        v8 = v42;
        goto LABEL_54;
      }

      *&v46[6] = 0;
      *v46 = 0;

      sub_1ADDD86D8(v15, v14);
      sub_1ADDD86D8(v17, v16);
      sub_1ADDD8820(v46, v17, v16, v45);

      sub_1ADDCC35C(v15, v14);
      sub_1ADDCC35C(v17, v16);
      v33 = v45[0];
LABEL_54:
      v12 = v44;
      if (v33)
      {
        goto LABEL_55;
      }

LABEL_4:
      v10 = (v10 + 1) & v12;
      if (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_56;
      }
    }

    if (v15)
    {
      v20 = 0;
    }

    else
    {
      v20 = v14 == 0xC000000000000000;
    }

    v21 = 0;
    v22 = v20 && v16 >> 62 == 3;
    if (v22 && !v17 && v16 == 0xC000000000000000)
    {
LABEL_55:

      *a1 = *(*(v4 + 48) + 8 * v10);

      return 0;
    }

LABEL_27:
    if (v19 <= 1)
    {
      goto LABEL_28;
    }

    goto LABEL_33;
  }

LABEL_56:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v46 = *v38;

  sub_1ADEC575C(v36, v10, isUniquelyReferenced_nonNull_native);
  *v38 = *v46;
  *a1 = a2;
  return 1;
}

uint64_t sub_1ADEC1B64(_WORD *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = MEMORY[0x1B26FCBA0](*(*v2 + 40), a2, 2);
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 2 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_1ADEC5CF8(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1ADEC1C4C(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  sub_1AE23E31C();
  MEMORY[0x1B26FCBD0](a2);
  v6 = sub_1AE23E34C();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_1ADEC5E1C(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1ADEC1D6C(void *a1, void *a2, uint64_t *a3, uint64_t *a4, void (*a5)(void))
{
  v6 = v5;
  v9 = *v5;
  sub_1AE23CD0C();
  sub_1AE23E31C();
  sub_1AE23CDAC();
  v10 = sub_1AE23E34C();

  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    while (1)
    {
      v14 = sub_1AE23CD0C();
      v16 = v15;
      if (v14 == sub_1AE23CD0C() && v16 == v17)
      {

        goto LABEL_12;
      }

      v19 = sub_1AE23E00C();

      if (v19)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    v23 = *(*(v9 + 48) + 8 * v12);
    *a1 = v23;
    v24 = v23;
    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = *v6;
    v21 = a2;
    sub_1ADEC5F68(v21, v12, isUniquelyReferenced_nonNull_native, a3, a4, a5);
    *v6 = v28;
    *a1 = v21;
    return 1;
  }
}

uint64_t sub_1ADEC1F28(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v51 = *MEMORY[0x1E69E9840];
  v6 = *v3;
  sub_1AE23E31C();
  sub_1AE23BECC();
  v7 = sub_1AE23E34C();
  v8 = v6 + 56;
  v9 = -1 << *(v6 + 32);
  v10 = v7 & ~v9;
  if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
LABEL_62:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v50 = *v40;
    sub_1ADDD86D8(a2, a3);
    sub_1ADEC6174(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v40 = *v50;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }

  v11 = ~v9;
  if (a2)
  {
    v12 = 0;
  }

  else
  {
    v12 = a3 == 0xC000000000000000;
  }

  v13 = !v12;
  v48 = v13;
  v14 = a3 >> 62;
  v15 = __OFSUB__(HIDWORD(a2), a2);
  v45 = v15;
  v44 = a3;
  v46 = v11;
  v47 = BYTE6(a3);
  v42 = v6 + 56;
  v43 = v6;
  while (1)
  {
    v16 = (*(v6 + 48) + 16 * v10);
    v18 = *v16;
    v17 = v16[1];
    v19 = v17 >> 62;
    if (v17 >> 62 == 3)
    {
      if (v18)
      {
        v20 = 0;
      }

      else
      {
        v20 = v17 == 0xC000000000000000;
      }

      v22 = !v20 || v14 < 3;
      if (((v22 | v48) & 1) == 0)
      {
        v37 = 0;
        v38 = 0xC000000000000000;
        goto LABEL_63;
      }

LABEL_36:
      v23 = 0;
      if (v14 <= 1)
      {
        goto LABEL_33;
      }

      goto LABEL_37;
    }

    if (v19 > 1)
    {
      if (v19 != 2)
      {
        goto LABEL_36;
      }

      v25 = *(v18 + 16);
      v24 = *(v18 + 24);
      v26 = __OFSUB__(v24, v25);
      v23 = v24 - v25;
      if (v26)
      {
        goto LABEL_65;
      }

      if (v14 <= 1)
      {
        goto LABEL_33;
      }
    }

    else if (v19)
    {
      LODWORD(v23) = HIDWORD(v18) - v18;
      if (__OFSUB__(HIDWORD(v18), v18))
      {
        goto LABEL_66;
      }

      v23 = v23;
      if (v14 <= 1)
      {
LABEL_33:
        v27 = v47;
        if (v14)
        {
          v27 = HIDWORD(a2) - a2;
          if (v45)
          {
            __break(1u);
LABEL_64:
            __break(1u);
LABEL_65:
            __break(1u);
LABEL_66:
            __break(1u);
LABEL_67:
            __break(1u);
LABEL_68:
            __break(1u);
LABEL_69:
            __break(1u);
LABEL_70:
            __break(1u);
          }
        }

        goto LABEL_39;
      }
    }

    else
    {
      v23 = BYTE6(v17);
      if (v14 <= 1)
      {
        goto LABEL_33;
      }
    }

LABEL_37:
    if (v14 != 2)
    {
      if (!v23)
      {
        goto LABEL_61;
      }

      goto LABEL_13;
    }

    v29 = *(a2 + 16);
    v28 = *(a2 + 24);
    v26 = __OFSUB__(v28, v29);
    v27 = v28 - v29;
    if (v26)
    {
      goto LABEL_64;
    }

LABEL_39:
    if (v23 != v27)
    {
      goto LABEL_13;
    }

    if (v23 < 1)
    {
      goto LABEL_61;
    }

    if (v19 <= 1)
    {
      if (!v19)
      {
        *v50 = v18;
        *&v50[8] = v17;
        v50[10] = BYTE2(v17);
        v50[11] = BYTE3(v17);
        v50[12] = BYTE4(v17);
        v50[13] = BYTE5(v17);
        sub_1ADDD86D8(v18, v17);
        v11 = v46;
        goto LABEL_60;
      }

      if (v18 >> 32 < v18)
      {
        goto LABEL_67;
      }

      sub_1ADDD86D8(v18, v17);
      v32 = sub_1AE23BB7C();
      if (v32)
      {
        v34 = sub_1AE23BBAC();
        if (__OFSUB__(v18, v34))
        {
          goto LABEL_70;
        }

        v32 += v18 - v34;
      }

      goto LABEL_57;
    }

    if (v19 != 2)
    {
      break;
    }

    v31 = *(v18 + 16);
    v30 = *(v18 + 24);
    sub_1ADDD86D8(v18, v17);
    v32 = sub_1AE23BB7C();
    if (v32)
    {
      v33 = sub_1AE23BBAC();
      if (__OFSUB__(v31, v33))
      {
        goto LABEL_69;
      }

      v32 += v31 - v33;
    }

    if (__OFSUB__(v30, v31))
    {
      goto LABEL_68;
    }

LABEL_57:
    sub_1AE23BB9C();
    a3 = v44;
    sub_1ADDD8820(v32, a2, v44, v50);
    sub_1ADDCC35C(v18, v17);
    v8 = v42;
    v6 = v43;
    v11 = v46;
    if (v50[0])
    {
      goto LABEL_61;
    }

LABEL_13:
    v10 = (v10 + 1) & v11;
    if (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_62;
    }
  }

  *&v50[6] = 0;
  *v50 = 0;
  sub_1ADDD86D8(v18, v17);
LABEL_60:
  sub_1ADDD8820(v50, a2, a3, &v49);
  sub_1ADDCC35C(v18, v17);
  if (!v49)
  {
    goto LABEL_13;
  }

LABEL_61:
  v37 = a2;
  v38 = a3;
LABEL_63:
  sub_1ADDCC35C(v37, v38);
  v39 = *(*(v6 + 48) + 16 * v10);
  *a1 = v39;
  sub_1ADDD86D8(v39, *(&v39 + 1));
  return 0;
}

uint64_t sub_1ADEC23B0(void *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_1AE23E30C();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_1ADEC65EC(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1ADEC2490(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *v3;
  sub_1AE23E31C();
  sub_1ADF76AA0(v20, a2);
  sub_1ADF76AA0(v20, a3);
  v8 = sub_1AE23E34C();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    do
    {
      v12 = *(*(v7 + 48) + 16 * v10);

      sub_1ADF64C74(v13, a3);
      if (v14)
      {
        sub_1ADF64C74(v12, a2);
        v16 = v15;

        if (v16)
        {

          *a1 = *(*(v7 + 48) + 16 * v10);

          return 0;
        }
      }

      else
      {
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20[0] = *v4;

  sub_1ADEC670C(a2, a3, v10, isUniquelyReferenced_nonNull_native);
  *v4 = v20[0];
  *a1 = a2;
  *(a1 + 8) = a3;
  return 1;
}

uint64_t sub_1ADEC2648(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1AE23E31C();
  sub_1AE23CDAC();
  v8 = sub_1AE23E34C();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_1AE23E00C() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_1ADEC68D4(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1ADEC2798(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1AE23BDDC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1ADDE5F54(&unk_1ED969ED8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  v33 = a2;
  v11 = sub_1AE23CBBC();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_1ADDE5F54(&qword_1ED969648, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
      v21 = sub_1AE23CCBC();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_1ADEC6A54(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_1ADEC2A78(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA9B8, &qword_1AE245660);
    v2 = sub_1AE23D9EC();
    v19 = v2;
    sub_1AE23D93C();
    v3 = sub_1AE23D9AC();
    if (v3)
    {
      v4 = v3;
      type metadata accessor for AnyReference();
      v5 = v4;
      do
      {
        v18[0] = v5;
        swift_dynamicCast();
        v13 = *(v2 + 16);
        if (*(v2 + 24) <= v13)
        {
          sub_1ADEC2EF8(v13 + 1);
        }

        v6 = v18[9];
        v2 = v19;
        sub_1AE23E31C();
        (*(*v6 + 104))(v18);
        result = sub_1AE23E34C();
        v8 = v2 + 56;
        v9 = -1 << *(v2 + 32);
        v10 = result & ~v9;
        v11 = v10 >> 6;
        if (((-1 << v10) & ~*(v2 + 56 + 8 * (v10 >> 6))) != 0)
        {
          v12 = __clz(__rbit64((-1 << v10) & ~*(v2 + 56 + 8 * (v10 >> 6)))) | v10 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v14 = 0;
          v15 = (63 - v9) >> 6;
          do
          {
            if (++v11 == v15 && (v14 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v16 = v11 == v15;
            if (v11 == v15)
            {
              v11 = 0;
            }

            v14 |= v16;
            v17 = *(v8 + 8 * v11);
          }

          while (v17 == -1);
          v12 = __clz(__rbit64(~v17)) + (v11 << 6);
        }

        *(v8 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
        *(*(v2 + 48) + 8 * v12) = v6;
        ++*(v2 + 16);
        v5 = sub_1AE23D9AC();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

void sub_1ADEC2C98(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BAA30, &qword_1AE2456B8);
  v4 = sub_1AE23D9DC();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_1AE23E31C();
      sub_1AE23BECC();
      v21 = sub_1AE23E34C();
      v22 = -1 << *(v5 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero((v3 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_1ADEC2EF8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA9B8, &qword_1AE245660);
  v4 = sub_1AE23D9DC();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_1AE23E31C();
      (*(*v17 + 104))(v27);
      v18 = sub_1AE23E34C();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_1ADEC3168(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA998, &qword_1AE245648);
  v4 = sub_1AE23D9DC();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v16 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v19 = (*(v3 + 48) + 32 * (v16 | (v6 << 6)));
      v29 = v19[1];
      v30 = *v19;
      sub_1AE23E31C();
      sub_1AE23E33C();
      if (v30)
      {

        sub_1ADF76AA0(v31, v30);
        sub_1ADF76AA0(v31, *(&v30 + 1));
        sub_1ADECDB08(v30, *(&v30 + 1), MEMORY[0x1E69E7CF8]);
      }

      sub_1AE23BECC();
      v20 = sub_1AE23E34C();
      v21 = -1 << *(v5 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        v14 = v30;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_32:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
      v14 = v30;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v15 = (*(v5 + 48) + 32 * v13);
      *v15 = v14;
      v15[1] = v29;
      ++*(v5 + 16);
    }

    v17 = v6;
    while (1)
    {
      v6 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v6 >= v11)
      {
        break;
      }

      v18 = v7[v6];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v10 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_1ADEC3450(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA9D0, &qword_1AE245678);
  v4 = sub_1AE23D9DC();
  v5 = v4;
  if (*(v3 + 16))
  {
    v29 = v1;
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_1AE23E31C();
      v18 = *(v17 + 16);
      v19 = *(v17 + 24);
      sub_1ADDD86D8(v18, v19);
      sub_1AE23BECC();
      sub_1ADDCC35C(v18, v19);
      v20 = sub_1AE23E34C();
      v21 = -1 << *(v5 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v29;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_1ADEC36C4(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1AE23BFEC();
  v3 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA988, &qword_1AE245638);
  v6 = sub_1AE23D9DC();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      sub_1ADDE5F54(&qword_1ED96A718, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v21 = sub_1AE23CBBC();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

void sub_1ADEC3A20(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA9C0, &qword_1AE245668);
  v4 = sub_1AE23D9DC();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v26 = v2;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 2 * (v14 | (v6 << 6)));
      v18 = MEMORY[0x1B26FCBA0](*(v5 + 40), v17, 2);
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 2 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v2 = v26;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_1ADEC3C48(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA9C8, &qword_1AE245670);
  v4 = sub_1AE23D9DC();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      sub_1AE23E31C();
      MEMORY[0x1B26FCBD0](v17);
      v18 = sub_1AE23E34C();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_1ADEC3E98(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v6 = sub_1AE23D9DC();
  v7 = v6;
  if (*(v5 + 16))
  {
    v29 = v3;
    v30 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v8 << 6)));
      sub_1AE23CD0C();
      sub_1AE23E31C();
      sub_1AE23CDAC();
      v20 = sub_1AE23E34C();

      v21 = -1 << *(v7 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v19;
      ++*(v7 + 16);
      v5 = v30;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v4 = v29;
    *(v5 + 16) = 0;
  }

  *v4 = v7;
}

void sub_1ADEC410C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BAA28, &qword_1AE2456B0);
  v4 = sub_1AE23D9DC();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_1AE23E31C();
      sub_1AE23BECC();
      v21 = sub_1AE23E34C();
      v22 = -1 << *(v5 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero((v3 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_1ADEC436C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BAA20, &qword_1AE2456A8);
  v4 = sub_1AE23D9DC();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v26 = v2;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      v18 = sub_1AE23E30C();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v2 = v26;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_1ADEC4590(uint64_t a1)
{
  v2 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA990, &qword_1AE245640);
  v3 = sub_1AE23D9DC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    for (i = v3 + 56; v9; ++*(v4 + 16))
    {
      v12 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_12:
      v17 = *(*(v2 + 48) + 16 * (v12 | (v5 << 6)));
      sub_1AE23E31C();
      sub_1ADF76AA0(v18, v17.n128_i64[0]);
      sub_1ADF76AA0(v18, v17.n128_i64[1]);
      sub_1AE23E34C();
      v15 = sub_1AE23D91C();
      *(i + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v4 + 48) + 16 * v15) = v17;
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        return;
      }

      if (v5 >= v10)
      {
        break;
      }

      v14 = v6[v5];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    v16 = 1 << *(v2 + 32);
    if (v16 >= 64)
    {
      bzero((v2 + 56), ((v16 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v16;
    }

    *(v2 + 16) = 0;
  }

  *v1 = v4;
}

void sub_1ADEC4784(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA9B0, &qword_1AE254430);
  v4 = sub_1AE23D9DC();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_1AE23E31C();
      sub_1AE23CDAC();
      v21 = sub_1AE23E34C();
      v22 = -1 << *(v5 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero((v3 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_1ADEC49E4(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1AE23BDDC();
  v3 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA9A0, &qword_1AE245650);
  v6 = sub_1AE23D9DC();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      sub_1ADDE5F54(&unk_1ED969ED8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
      v21 = sub_1AE23CBBC();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

unint64_t sub_1ADEC4D40(uint64_t a1, uint64_t a2)
{
  sub_1AE23E31C();
  (*(*a1 + 104))(v5);
  sub_1AE23E34C();
  result = sub_1AE23D91C();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_1ADEC4E04(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1ADEC2EF8(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1ADEC6E78();
      goto LABEL_12;
    }

    sub_1ADEC7DF8(v6 + 1);
  }

  v8 = *v3;
  sub_1AE23E31C();
  (*(*a1 + 104))(v17);
  v9 = sub_1AE23E34C();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for AnyReference();
    do
    {
      v12 = *(**(*(v8 + 48) + 8 * a2) + 96);

      LOBYTE(v12) = v12(a1);

      if (v12)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = a1;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v13 + 16) = v16;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1AE23E26C();
  __break(1u);
}

void sub_1ADEC4FC4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, char a6)
{
  v69 = *MEMORY[0x1E69E9840];
  v12 = *(*v6 + 16);
  v13 = *(*v6 + 24);
  if (v13 > v12 && (a6 & 1) != 0)
  {
    goto LABEL_87;
  }

  if (a6)
  {
    v14 = v64;
    sub_1ADEC3168(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_1ADEC6FC8();
      goto LABEL_87;
    }

    v14 = v64;
    sub_1ADEC8048(v12 + 1);
  }

  v66 = *v14;
  sub_1AE23E31C();
  sub_1AE23E33C();
  if (a1)
  {

    sub_1ADF76AA0(v68, a1);
    sub_1ADF76AA0(v68, a2);
    sub_1ADECDB08(a1, a2, MEMORY[0x1E69E7CF8]);
  }

  sub_1AE23BECC();
  v15 = sub_1AE23E34C();
  v16 = -1 << *(v66 + 32);
  a5 = v15 & ~v16;
  if ((*(v66 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5))
  {
    v65 = ~v16;
    if (a3)
    {
      v17 = 0;
    }

    else
    {
      v17 = a4 == 0xC000000000000000;
    }

    v18 = !v17;
    v60 = v18;
    v62 = a4 >> 62;
    v19 = __OFSUB__(HIDWORD(a3), a3);
    v58 = v19;
    v57 = HIDWORD(a3) - a3;
    v59 = BYTE6(a4);
    v61 = a4;
    v63 = a3;
    while (1)
    {
      v20 = (*(v66 + 48) + 32 * a5);
      v22 = *v20;
      v21 = v20[1];
      v24 = v20[2];
      v23 = v20[3];
      if (!*v20)
      {
        break;
      }

      if (!a1)
      {
        sub_1ADE42C78(0, a2);
        sub_1ADE42C78(v22, v21);
        sub_1ADDD86D8(v24, v23);
        sub_1ADE42C78(v22, v21);
        sub_1ADE42C78(v22, v21);

LABEL_29:
        v30 = MEMORY[0x1E69E7CF8];
        sub_1ADECDB08(v22, v21, MEMORY[0x1E69E7CF8]);
        v31 = a1;
        v32 = a2;
LABEL_31:
        sub_1ADECDB08(v31, v32, v30);
        goto LABEL_32;
      }

      sub_1ADE42C78(a1, a2);
      sub_1ADE42C78(v22, v21);
      sub_1ADDD86D8(v24, v23);
      sub_1ADE42C78(v22, v21);
      sub_1ADE42C78(v22, v21);
      sub_1ADF64C74(v21, a2);
      if ((v25 & 1) == 0)
      {
        v30 = MEMORY[0x1E69E7CF8];
        sub_1ADECDB08(a1, a2, MEMORY[0x1E69E7CF8]);

        v31 = v22;
        v32 = v21;
        goto LABEL_31;
      }

      sub_1ADF64C74(v22, a1);
      v27 = v26;
      v28 = MEMORY[0x1E69E7CF8];
      sub_1ADECDB08(a1, a2, MEMORY[0x1E69E7CF8]);

      v29 = v28;
      a3 = v63;
      sub_1ADECDB08(v22, v21, v29);
      if (v27)
      {
        goto LABEL_36;
      }

LABEL_32:
      sub_1ADECDB08(v22, v21, MEMORY[0x1E69E7CF8]);
      sub_1ADDCC35C(v24, v23);
LABEL_33:
      a5 = (a5 + 1) & v65;
      if (((*(v66 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5) & 1) == 0)
      {
        goto LABEL_87;
      }
    }

    if (a1)
    {
      sub_1ADE42C78(a1, a2);
      sub_1ADE42C78(0, v21);
      sub_1ADDD86D8(v24, v23);
      sub_1ADE42C78(0, v21);
      goto LABEL_29;
    }

    sub_1ADE42C78(0, a2);
    sub_1ADE42C78(0, v21);
    sub_1ADDD86D8(v24, v23);
    sub_1ADE42C78(0, v21);
    sub_1ADECDB08(0, v21, MEMORY[0x1E69E7CF8]);
LABEL_36:
    v33 = v23 >> 62;
    if (v23 >> 62 == 3)
    {
      v34 = 0;
      if (v24)
      {
        v35 = 0;
      }

      else
      {
        v35 = v23 == 0xC000000000000000;
      }

      v36 = v62;
      v38 = !v35 || v62 < 3;
      if (((v38 | v60) & 1) == 0)
      {
        v24 = 0;
        v23 = 0xC000000000000000;
LABEL_99:
        sub_1ADECDB08(v22, v21, MEMORY[0x1E69E7CF8]);
        sub_1ADDCC35C(v24, v23);
LABEL_100:
        sub_1AE23E26C();
        __break(1u);
        return;
      }
    }

    else
    {
      v36 = v62;
      if (v33 > 1)
      {
        if (v33 == 2)
        {
          v44 = *(v24 + 16);
          v43 = *(v24 + 24);
          v42 = __OFSUB__(v43, v44);
          v34 = v43 - v44;
          if (v42)
          {
            goto LABEL_93;
          }
        }

        else
        {
          v34 = 0;
        }
      }

      else if (v33)
      {
        LODWORD(v34) = HIDWORD(v24) - v24;
        if (__OFSUB__(HIDWORD(v24), v24))
        {
          goto LABEL_92;
        }

        v34 = v34;
      }

      else
      {
        v34 = BYTE6(v23);
      }
    }

    if (v36 > 1)
    {
      if (v36 != 2)
      {
        if (!v34)
        {
          goto LABEL_99;
        }

        goto LABEL_32;
      }

      v41 = *(a3 + 16);
      v40 = *(a3 + 24);
      v42 = __OFSUB__(v40, v41);
      v39 = v40 - v41;
      if (v42)
      {
        goto LABEL_91;
      }
    }

    else
    {
      v39 = v59;
      if (v36)
      {
        v39 = v57;
        if (v58)
        {
          goto LABEL_90;
        }
      }
    }

    if (v34 == v39)
    {
      if (v34 < 1)
      {
        goto LABEL_99;
      }

      if (v33 > 1)
      {
        if (v33 != 2)
        {
          *&v68[6] = 0;
          *v68 = 0;
          goto LABEL_82;
        }

        v45 = *(v24 + 16);
        v55 = *(v24 + 24);
        v46 = sub_1AE23BB7C();
        if (v46)
        {
          v47 = sub_1AE23BBAC();
          if (__OFSUB__(v45, v47))
          {
            goto LABEL_96;
          }

          v46 += v45 - v47;
        }

        if (__OFSUB__(v55, v45))
        {
          goto LABEL_95;
        }
      }

      else
      {
        if (!v33)
        {
          *v68 = v24;
          *&v68[8] = v23;
          v68[10] = BYTE2(v23);
          v68[11] = BYTE3(v23);
          v68[12] = BYTE4(v23);
          v68[13] = BYTE5(v23);
LABEL_82:
          sub_1ADDD8820(v68, a3, a4, &v67);
          sub_1ADECDB08(v22, v21, MEMORY[0x1E69E7CF8]);
          sub_1ADDCC35C(v24, v23);
          if (v67)
          {
            goto LABEL_100;
          }

LABEL_86:
          a4 = v61;
          goto LABEL_33;
        }

        if (v24 >> 32 < v24)
        {
          goto LABEL_94;
        }

        v48 = sub_1AE23BB7C();
        if (v48)
        {
          v56 = v48;
          v49 = sub_1AE23BBAC();
          if (__OFSUB__(v24, v49))
          {
            goto LABEL_97;
          }

          v46 = v24 - v49 + v56;
        }

        else
        {
          v46 = 0;
        }
      }

      sub_1AE23BB9C();
      v50 = v46;
      a3 = v63;
      sub_1ADDD8820(v50, v63, v61, v68);
      sub_1ADECDB08(v22, v21, MEMORY[0x1E69E7CF8]);
      sub_1ADDCC35C(v24, v23);
      if (v68[0])
      {
        goto LABEL_100;
      }

      goto LABEL_86;
    }

    goto LABEL_32;
  }

LABEL_87:
  v51 = *v64;
  *(*v64 + 8 * (a5 >> 6) + 56) |= 1 << a5;
  v52 = (*(v51 + 48) + 32 * a5);
  *v52 = a1;
  v52[1] = a2;
  v52[2] = a3;
  v52[3] = a4;
  v53 = *(v51 + 16);
  v42 = __OFADD__(v53, 1);
  v54 = v53 + 1;
  if (v42)
  {
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
  }

  *(v51 + 16) = v54;
}

void sub_1ADEC575C(uint64_t a1, unint64_t a2, char a3)
{
  v48 = *MEMORY[0x1E69E9840];
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1ADEC3450(v6 + 1);
    }

    else
    {
      if (v7 > v6)
      {
        sub_1ADEC7148();
        goto LABEL_63;
      }

      sub_1ADEC8344(v6 + 1);
    }

    v8 = *v3;
    sub_1AE23E31C();
    v9 = *(a1 + 16);
    v10 = *(a1 + 24);
    sub_1ADDD86D8(v9, v10);
    sub_1AE23BECC();
    sub_1ADDCC35C(v9, v10);
    v11 = sub_1AE23E34C();
    v12 = v8 + 56;
    v13 = -1 << *(v8 + 32);
    a2 = v11 & ~v13;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v14 = ~v13;
      v41 = v8;
      v42 = a1;
      v44 = v8 + 56;
      v45 = ~v13;
      while (1)
      {
        v15 = *(*(v8 + 48) + 8 * a2);
        v17 = *(v15 + 16);
        v16 = *(v15 + 24);
        v19 = *(a1 + 16);
        v18 = *(a1 + 24);
        v20 = v16 >> 62;
        v21 = v18 >> 62;
        if (v16 >> 62 == 3)
        {
          break;
        }

        if (v20 <= 1)
        {
          if (!v20)
          {
            v23 = BYTE6(v16);
            if (v21 <= 1)
            {
              goto LABEL_35;
            }

            goto LABEL_40;
          }

          LODWORD(v23) = HIDWORD(v17) - v17;
          if (__OFSUB__(HIDWORD(v17), v17))
          {
            goto LABEL_69;
          }

          v23 = v23;
          goto LABEL_34;
        }

        if (v20 == 2)
        {
          v26 = *(v17 + 16);
          v25 = *(v17 + 24);
          v27 = __OFSUB__(v25, v26);
          v23 = v25 - v26;
          if (v27)
          {
            goto LABEL_68;
          }

          goto LABEL_34;
        }

        v23 = 0;
        if (v21 <= 1)
        {
LABEL_35:
          if (v21)
          {
            LODWORD(v28) = HIDWORD(v19) - v19;
            if (__OFSUB__(HIDWORD(v19), v19))
            {
              goto LABEL_66;
            }

            v28 = v28;
          }

          else
          {
            v28 = BYTE6(v18);
          }

          goto LABEL_42;
        }

LABEL_40:
        if (v21 != 2)
        {
          if (!v23)
          {
            goto LABEL_62;
          }

          goto LABEL_11;
        }

        v30 = *(v19 + 16);
        v29 = *(v19 + 24);
        v27 = __OFSUB__(v29, v30);
        v28 = v29 - v30;
        if (v27)
        {
          __break(1u);
LABEL_66:
          __break(1u);
LABEL_67:
          __break(1u);
LABEL_68:
          __break(1u);
LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
LABEL_71:
          __break(1u);
LABEL_72:
          __break(1u);
LABEL_73:
          __break(1u);
        }

LABEL_42:
        if (v23 == v28)
        {
          if (v23 < 1)
          {
            goto LABEL_62;
          }

          if (v20 > 1)
          {
            if (v20 == 2)
            {
              v32 = *(v17 + 16);
              v33 = *(v17 + 24);

              sub_1ADDD86D8(v17, v16);
              sub_1ADDD86D8(v19, v18);
              v34 = sub_1AE23BB7C();
              if (v34)
              {
                v35 = sub_1AE23BBAC();
                if (__OFSUB__(v32, v35))
                {
                  goto LABEL_72;
                }

                v34 += v32 - v35;
              }

              if (__OFSUB__(v33, v32))
              {
                goto LABEL_71;
              }

              sub_1AE23BB9C();
              sub_1ADDD8820(v34, v19, v18, v47);
              v14 = v45;

              sub_1ADDCC35C(v17, v16);
              sub_1ADDCC35C(v19, v18);
              v8 = v41;
              a1 = v42;
              v12 = v44;
              if (v47[0])
              {
                goto LABEL_62;
              }
            }

            else
            {
              *&v47[6] = 0;
              *v47 = 0;

              sub_1ADDD86D8(v17, v16);
              sub_1ADDD86D8(v19, v18);
              sub_1ADDD8820(v47, v19, v18, v46);
              v14 = v45;

              sub_1ADDCC35C(v17, v16);
              sub_1ADDCC35C(v19, v18);
              if (v46[0])
              {
                goto LABEL_62;
              }
            }
          }

          else
          {
            if (v20)
            {
              if (v17 >> 32 < v17)
              {
                goto LABEL_70;
              }

              sub_1ADDD86D8(v17, v16);
              sub_1ADDD86D8(v19, v18);
              v36 = sub_1AE23BB7C();
              if (v36)
              {
                v37 = sub_1AE23BBAC();
                if (__OFSUB__(v17, v37))
                {
                  goto LABEL_73;
                }

                v36 += v17 - v37;
              }

              sub_1AE23BB9C();
              sub_1ADDD8820(v36, v19, v18, v47);

              sub_1ADDCC35C(v17, v16);
              sub_1ADDCC35C(v19, v18);
              v31 = v47[0];
              v8 = v41;
              a1 = v42;
              v12 = v44;
            }

            else
            {
              *v47 = *(v15 + 16);
              *&v47[8] = v16;
              v47[10] = BYTE2(v16);
              v47[11] = BYTE3(v16);
              v47[12] = BYTE4(v16);
              v47[13] = BYTE5(v16);

              sub_1ADDD86D8(v17, v16);
              sub_1ADDD86D8(v19, v18);
              v12 = v44;
              sub_1ADDD8820(v47, v19, v18, v46);

              sub_1ADDCC35C(v17, v16);
              sub_1ADDCC35C(v19, v18);
              v31 = v46[0];
            }

            v14 = v45;
            if (v31)
            {
LABEL_62:
              sub_1AE23E26C();
              __break(1u);
              goto LABEL_63;
            }
          }
        }

LABEL_11:
        a2 = (a2 + 1) & v14;
        if (((*(v12 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
        {
          goto LABEL_63;
        }
      }

      if (v17)
      {
        v22 = 0;
      }

      else
      {
        v22 = v16 == 0xC000000000000000;
      }

      v23 = 0;
      v24 = v22 && v18 >> 62 == 3;
      if (v24 && !v19 && v18 == 0xC000000000000000)
      {
        goto LABEL_62;
      }

LABEL_34:
      if (v21 <= 1)
      {
        goto LABEL_35;
      }

      goto LABEL_40;
    }
  }

LABEL_63:
  v38 = *v43;
  *(*v43 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v38 + 48) + 8 * a2) = a1;
  v39 = *(v38 + 16);
  v27 = __OFADD__(v39, 1);
  v40 = v39 + 1;
  if (v27)
  {
    goto LABEL_67;
  }

  *(v38 + 16) = v40;
}

void sub_1ADEC5CF8(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1ADEC3A20(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_1ADEC7298();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1ADEC8590(v5 + 1);
  }

  v8 = *v3;
  v9 = MEMORY[0x1B26FCBA0](*(*v3 + 40), v4, 2);
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 2 * a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 2 * a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1AE23E26C();
  __break(1u);
}

void sub_1ADEC5E1C(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1ADEC3C48(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_1ADEC73D8();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1ADEC8784(v5 + 1);
  }

  v8 = *v3;
  sub_1AE23E31C();
  MEMORY[0x1B26FCBD0](v4);
  v9 = sub_1AE23E34C();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1AE23E26C();
  __break(1u);
}

void sub_1ADEC5F68(uint64_t result, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v7 = v6;
  v10 = *(*v6 + 16);
  v11 = *(*v6 + 24);
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    v12 = a6;
    sub_1ADEC3E98(v10 + 1, a4, a5);
  }

  else
  {
    if (v11 > v10)
    {
      sub_1ADEC7518(a4, a5);
      goto LABEL_16;
    }

    v12 = a6;
    sub_1ADEC89A4(v10 + 1, a4, a5);
  }

  v13 = *v6;
  sub_1AE23CD0C();
  sub_1AE23E31C();
  sub_1AE23CDAC();
  v14 = sub_1AE23E34C();

  v15 = -1 << *(v13 + 32);
  a2 = v14 & ~v15;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v12(0);
    do
    {
      v17 = sub_1AE23CD0C();
      v19 = v18;
      if (v17 == sub_1AE23CD0C() && v19 == v20)
      {
        goto LABEL_19;
      }

      v22 = sub_1AE23E00C();

      if (v22)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v23 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v23 + 48) + 8 * a2) = result;
  v24 = *(v23 + 16);
  v25 = __OFADD__(v24, 1);
  v26 = v24 + 1;
  if (!v25)
  {
    *(v23 + 16) = v26;
    return;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  sub_1AE23E26C();
  __break(1u);
}

void sub_1ADEC6174(uint64_t a1, unint64_t a2, unint64_t a3, char a4)
{
  v52 = *MEMORY[0x1E69E9840];
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_1ADEC410C(v8 + 1);
    }

    else
    {
      if (v9 > v8)
      {
        sub_1ADEC7658();
        goto LABEL_68;
      }

      sub_1ADEC8BF0(v8 + 1);
    }

    v10 = *v4;
    sub_1AE23E31C();
    sub_1AE23BECC();
    v11 = sub_1AE23E34C();
    v12 = v10 + 56;
    v13 = -1 << *(v10 + 32);
    a3 = v11 & ~v13;
    if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
    {
      v14 = ~v13;
      if (a1)
      {
        v15 = 0;
      }

      else
      {
        v15 = a2 == 0xC000000000000000;
      }

      v16 = !v15;
      v49 = v16;
      v17 = a2 >> 62;
      v18 = __OFSUB__(HIDWORD(a1), a1);
      v46 = v18;
      v45 = HIDWORD(a1) - a1;
      v47 = v14;
      v48 = BYTE6(a2);
      v42 = a1;
      v43 = a2;
      while (1)
      {
        v19 = (*(v10 + 48) + 16 * a3);
        v21 = *v19;
        v20 = v19[1];
        v22 = v20 >> 62;
        if (v20 >> 62 == 3)
        {
          break;
        }

        if (v22 > 1)
        {
          if (v22 != 2)
          {
            goto LABEL_32;
          }

          v32 = *(v21 + 16);
          v31 = *(v21 + 24);
          v30 = __OFSUB__(v31, v32);
          v26 = v31 - v32;
          if (v30)
          {
            goto LABEL_73;
          }
        }

        else if (v22)
        {
          LODWORD(v26) = HIDWORD(v21) - v21;
          if (__OFSUB__(HIDWORD(v21), v21))
          {
            goto LABEL_74;
          }

          v26 = v26;
        }

        else
        {
          v26 = BYTE6(v20);
        }

LABEL_33:
        if (v17 > 1)
        {
          if (v17 != 2)
          {
            if (!v26)
            {
              goto LABEL_67;
            }

            goto LABEL_20;
          }

          v29 = *(a1 + 16);
          v28 = *(a1 + 24);
          v30 = __OFSUB__(v28, v29);
          v27 = v28 - v29;
          if (v30)
          {
            __break(1u);
LABEL_71:
            __break(1u);
            goto LABEL_72;
          }
        }

        else
        {
          v27 = v48;
          if (v17)
          {
            v27 = v45;
            if (v46)
            {
              goto LABEL_71;
            }
          }
        }

        if (v26 == v27)
        {
          if (v26 < 1)
          {
            goto LABEL_67;
          }

          if (v22 > 1)
          {
            if (v22 == 2)
            {
              v34 = *(v21 + 16);
              v33 = *(v21 + 24);
              sub_1ADDD86D8(v21, v20);
              v35 = sub_1AE23BB7C();
              if (v35)
              {
                v36 = sub_1AE23BBAC();
                if (__OFSUB__(v34, v36))
                {
                  goto LABEL_77;
                }

                v35 += v34 - v36;
              }

              if (__OFSUB__(v33, v34))
              {
                goto LABEL_76;
              }

              goto LABEL_63;
            }

            *&v51[6] = 0;
            *v51 = 0;
            sub_1ADDD86D8(v21, v20);
          }

          else
          {
            if (v22)
            {
              if (v21 >> 32 < v21)
              {
                goto LABEL_75;
              }

              sub_1ADDD86D8(v21, v20);
              v35 = sub_1AE23BB7C();
              if (v35)
              {
                v37 = sub_1AE23BBAC();
                if (__OFSUB__(v21, v37))
                {
                  goto LABEL_78;
                }

                v35 += v21 - v37;
              }

LABEL_63:
              sub_1AE23BB9C();
              a1 = v42;
              a2 = v43;
              sub_1ADDD8820(v35, v42, v43, v51);
              sub_1ADDCC35C(v21, v20);
              v12 = v10 + 56;
              v14 = v47;
              if (v51[0])
              {
                goto LABEL_67;
              }

              goto LABEL_20;
            }

            *v51 = v21;
            *&v51[8] = v20;
            v51[10] = BYTE2(v20);
            v51[11] = BYTE3(v20);
            v51[12] = BYTE4(v20);
            v51[13] = BYTE5(v20);
            sub_1ADDD86D8(v21, v20);
            v14 = v47;
          }

          sub_1ADDD8820(v51, a1, a2, &v50);
          sub_1ADDCC35C(v21, v20);
          if (v50)
          {
            goto LABEL_67;
          }
        }

LABEL_20:
        a3 = (a3 + 1) & v14;
        if (((*(v12 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
        {
          goto LABEL_68;
        }
      }

      if (v21)
      {
        v23 = 0;
      }

      else
      {
        v23 = v20 == 0xC000000000000000;
      }

      v25 = !v23 || v17 < 3;
      if (((v25 | v49) & 1) == 0)
      {
LABEL_67:
        sub_1AE23E26C();
        __break(1u);
        goto LABEL_68;
      }

LABEL_32:
      v26 = 0;
      goto LABEL_33;
    }
  }

LABEL_68:
  v38 = *v44;
  *(*v44 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v39 = (*(v38 + 48) + 16 * a3);
  *v39 = a1;
  v39[1] = a2;
  v40 = *(v38 + 16);
  v30 = __OFADD__(v40, 1);
  v41 = v40 + 1;
  if (v30)
  {
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
  }

  *(v38 + 16) = v41;
}

void sub_1ADEC65EC(uint64_t result, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1ADEC436C(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_1ADEC77B4();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1ADEC8E2C(v5 + 1);
  }

  v8 = *v3;
  v9 = sub_1AE23E30C();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 8 * a2) != result)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = result;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1AE23E26C();
  __break(1u);
}

void sub_1ADEC670C(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v9 = *(*v4 + 16);
  v10 = *(*v4 + 24);
  if (v10 <= v9 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_1ADEC4590(v9 + 1);
    }

    else
    {
      if (v10 > v9)
      {
        sub_1ADEC78F4();
        goto LABEL_14;
      }

      sub_1ADEC901C(v9 + 1);
    }

    v11 = *v4;
    sub_1AE23E31C();
    sub_1ADF76AA0(v25, result);
    sub_1ADF76AA0(v25, a2);
    v12 = sub_1AE23E34C();
    v13 = -1 << *(v11 + 32);
    a3 = v12 & ~v13;
    if ((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
    {
      v14 = ~v13;
      do
      {
        v17 = *(*(v11 + 48) + 16 * a3);

        sub_1ADF64C74(v18, a2);
        if (v19)
        {
          sub_1ADF64C74(v17, result);
          v16 = v15;

          if (v16)
          {
            goto LABEL_17;
          }
        }

        else
        {
        }

        a3 = (a3 + 1) & v14;
      }

      while (((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
    }
  }

LABEL_14:
  v20 = *v5;
  *(*v5 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v21 = (*(v20 + 48) + 16 * a3);
  *v21 = result;
  v21[1] = a2;
  v22 = *(v20 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
    __break(1u);
LABEL_17:
    sub_1AE23E26C();
    __break(1u);
  }

  else
  {
    *(v20 + 16) = v24;
  }
}

void sub_1ADEC68D4(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1ADEC4784(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_1ADEC7A64();
      goto LABEL_16;
    }

    sub_1ADEC91F0(v8 + 1);
  }

  v10 = *v4;
  sub_1AE23E31C();
  sub_1AE23CDAC();
  v11 = sub_1AE23E34C();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (sub_1AE23E00C() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  sub_1AE23E26C();
  __break(1u);
}

uint64_t sub_1ADEC6A54(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_1AE23BDDC();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x1EEE9AC00](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1ADEC49E4(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_1ADEC7BC0(MEMORY[0x1E6968FB0], &qword_1EB5BA9A0, &qword_1AE245650);
      goto LABEL_12;
    }

    sub_1ADEC9428(v11 + 1);
  }

  v13 = *v3;
  sub_1ADDE5F54(&unk_1ED969ED8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  v14 = sub_1AE23CBBC();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_1ADDE5F54(&qword_1ED969648, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
      v22 = sub_1AE23CCBC();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1AE23E26C();
  __break(1u);
  return result;
}

void sub_1ADEC6D1C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BAA30, &qword_1AE2456B8);
  v2 = *v0;
  v3 = sub_1AE23D9CC();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = *(*(v2 + 48) + v17);
        *(*(v4 + 48) + v17) = v18;
        sub_1ADDD86D8(v18, *(&v18 + 1));
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

void sub_1ADEC6E78()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA9B8, &qword_1AE245660);
  v2 = *v0;
  v3 = sub_1AE23D9CC();
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

void sub_1ADEC6FC8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA998, &qword_1AE245648);
  v2 = *v0;
  v3 = sub_1AE23D9CC();
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
        v17 = 32 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = (*(v4 + 48) + v17);
        v20 = *v18;
        v21 = v18[1];
        *v19 = *v18;
        v19[1] = v21;
        sub_1ADE42C78(v20, *(&v20 + 1));
        sub_1ADDD86D8(v21, *(&v21 + 1));
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

void sub_1ADEC7148()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA9D0, &qword_1AE245678);
  v2 = *v0;
  v3 = sub_1AE23D9CC();
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

void sub_1ADEC7298()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA9C0, &qword_1AE245668);
  v2 = *v0;
  v3 = sub_1AE23D9CC();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 2 * v14) = *(*(v2 + 48) + 2 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void sub_1ADEC73D8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA9C8, &qword_1AE245670);
  v2 = *v0;
  v3 = sub_1AE23D9CC();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void sub_1ADEC7518(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1AE23D9CC();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 56 + 8 * v8)
    {
      memmove(v7, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        v21 = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

void sub_1ADEC7658()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BAA28, &qword_1AE2456B0);
  v2 = *v0;
  v3 = sub_1AE23D9CC();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = *(*(v2 + 48) + v17);
        *(*(v4 + 48) + v17) = v18;
        sub_1ADDD86D8(v18, *(&v18 + 1));
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

void sub_1ADEC77B4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BAA20, &qword_1AE2456A8);
  v2 = *v0;
  v3 = sub_1AE23D9CC();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void sub_1ADEC78F4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA990, &qword_1AE245640);
  v2 = *v0;
  v3 = sub_1AE23D9CC();
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
        *(*(v4 + 48) + 16 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 16 * (v14 | (v8 << 6)));
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

void sub_1ADEC7A64()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA9B0, &qword_1AE254430);
  v2 = *v0;
  v3 = sub_1AE23D9CC();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

void sub_1ADEC7BC0(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v26 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v11 = *v3;
  v12 = sub_1AE23D9CC();
  v13 = v12;
  if (*(v11 + 16))
  {
    v27 = v6;
    v14 = (v12 + 56);
    v15 = ((1 << *(v13 + 32)) + 63) >> 6;
    if (v13 != v11 || v14 >= v11 + 56 + 8 * v15)
    {
      memmove(v14, (v11 + 56), 8 * v15);
    }

    v17 = 0;
    *(v13 + 16) = *(v11 + 16);
    v18 = 1 << *(v11 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v11 + 56);
    v21 = (v18 + 63) >> 6;
    v28 = v8 + 32;
    v29 = v8 + 16;
    while (v20)
    {
      v22 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_17:
      v25 = *(v8 + 72) * (v22 | (v17 << 6));
      (*(v8 + 16))(v10, *(v11 + 48) + v25, v7);
      (*(v8 + 32))(*(v13 + 48) + v25, v10, v7);
    }

    v23 = v17;
    while (1)
    {
      v17 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v17 >= v21)
      {

        v6 = v27;
        goto LABEL_21;
      }

      v24 = *(v11 + 56 + 8 * v17);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v20 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v13;
  }
}

void sub_1ADEC7DF8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA9B8, &qword_1AE245660);
  v4 = sub_1AE23D9DC();
  v5 = v4;
  if (*(v3 + 16))
  {
    v27 = v3;
    v6 = 0;
    v7 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_1AE23E31C();
      v18 = *(*v17 + 104);

      v18(v28);
      v19 = sub_1AE23E34C();
      v20 = -1 << *(v5 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v12 + 8 * v22);
          if (v26 != -1)
          {
            v13 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
      v3 = v27;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v7 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

void sub_1ADEC8048(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA998, &qword_1AE245648);
  v4 = sub_1AE23D9DC();
  v5 = v4;
  if (*(v3 + 16))
  {
    v28 = v3;
    v6 = 0;
    v7 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v16 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v19 = (*(v3 + 48) + 32 * (v16 | (v6 << 6)));
      v29 = *v19;
      v30 = v19[1];
      sub_1AE23E31C();
      sub_1AE23E33C();
      if (v29)
      {
        sub_1ADE42C78(v29, *(&v29 + 1));
        sub_1ADDD86D8(v30, *(&v30 + 1));
        sub_1ADE42C78(v29, *(&v29 + 1));
        sub_1ADF76AA0(v31, v29);
        sub_1ADF76AA0(v31, *(&v29 + 1));
        sub_1ADECDB08(v29, *(&v29 + 1), MEMORY[0x1E69E7CF8]);
      }

      else
      {
        sub_1ADE42C78(0, *(&v29 + 1));
        sub_1ADDD86D8(v30, *(&v30 + 1));
      }

      sub_1AE23BECC();
      v20 = sub_1AE23E34C();
      v21 = -1 << *(v5 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        v3 = v28;
        v14 = v30;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_31;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
      v3 = v28;
      v14 = v30;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v15 = (*(v5 + 48) + 32 * v13);
      v15[1] = v14;
      *v15 = v29;
      ++*(v5 + 16);
    }

    v17 = v6;
    while (1)
    {
      v6 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v1;
        goto LABEL_29;
      }

      v18 = *(v7 + 8 * v6);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v10 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v2 = v5;
  }
}

void sub_1ADEC8344(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA9D0, &qword_1AE245678);
  v4 = sub_1AE23D9DC();
  v5 = v4;
  if (*(v3 + 16))
  {
    v27 = v1;
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      sub_1AE23E31C();
      v17 = *(v16 + 16);
      v18 = *(v16 + 24);

      sub_1ADDD86D8(v17, v18);
      sub_1AE23BECC();
      sub_1ADDCC35C(v17, v18);
      v19 = sub_1AE23E34C();
      v20 = -1 << *(v5 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v27;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

void sub_1ADEC8590(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA9C0, &qword_1AE245668);
  v4 = sub_1AE23D9DC();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 2 * (v13 | (v6 << 6)));
      v17 = MEMORY[0x1B26FCBA0](*(v5 + 40), v16, 2);
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 2 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_24;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v2 = v5;
  }
}