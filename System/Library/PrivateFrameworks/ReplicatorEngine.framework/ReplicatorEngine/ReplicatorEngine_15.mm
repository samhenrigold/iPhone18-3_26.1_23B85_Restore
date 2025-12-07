uint64_t sub_1DEF72C68(void *a1)
{
  v3 = OBJC_IVAR____TtC16ReplicatorEngine21MetadataInMemoryStore_clientDefinedIDs;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (!*(v4 + 16))
  {
    return 0;
  }

  v5 = sub_1DEEAF3E8(a1);
  if (v6)
  {
    v7 = *(*(v4 + 56) + 16 * v5);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_1DEF72D10()
{
  swift_beginAccess();
  v1 = MEMORY[0x1E69E7CC8];
  *(v0 + 16) = MEMORY[0x1E69E7CC8];

  v2 = OBJC_IVAR____TtC16ReplicatorEngine21MetadataInMemoryStore_clientDefinedIDs;
  swift_beginAccess();
  *(v0 + v2) = v1;
}

uint64_t sub_1DEF72D8C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C18, &unk_1DEF94D20);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v12 - v3;
  v5 = sub_1DEF8D3F8();
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, a1, v6);
  sub_1DEE27FC0(a1, v4, type metadata accessor for PairingRelationship);
  v10 = type metadata accessor for PairingRelationship(0);
  (*(*(v10 - 8) + 56))(v4, 0, 1, v10);
  swift_beginAccess();
  sub_1DEF32880(v4, v8);
  return swift_endAccess();
}

uint64_t sub_1DEF72F24(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C18, &unk_1DEF94D20);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v12 - v3;
  v5 = sub_1DEF8D3F8();
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, a1, v6);
  v10 = type metadata accessor for PairingRelationship(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  swift_beginAccess();
  sub_1DEF32880(v4, v8);
  return swift_endAccess();
}

void sub_1DEF7309C(unint64_t a1)
{
  v2 = v1;
  v4 = sub_1DEF8D3F8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v91 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Record.ID.Ownership(0);
  v8.n128_f64[0] = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = a1;
  if (a1 >> 62)
  {
LABEL_73:
    v11 = sub_1DEF8DE68();
    if (v11)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
LABEL_3:
      v12 = 0;
      v85 = v82 & 0xC000000000000001;
      v80 = v82 & 0xFFFFFFFFFFFFFF8;
      v79 = v82 + 32;
      v13 = (v5 + 6);
      v89 = (v5 + 1);
      v90 = (v5 + 4);
      v84 = v2;
      v83 = v11;
      v87 = OBJC_IVAR____TtC16ReplicatorEngine21MetadataInMemoryStore_clientDefinedIDs;
      while (1)
      {
        if (v85)
        {
          v5 = MEMORY[0x1E12CB6E0](v12, v82, v8);
          v14 = __OFADD__(v12++, 1);
          if (v14)
          {
            goto LABEL_66;
          }
        }

        else
        {
          if (v12 >= *(v80 + 16))
          {
            goto LABEL_71;
          }

          v5 = *(v79 + 8 * v12);

          v14 = __OFADD__(v12++, 1);
          if (v14)
          {
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
            goto LABEL_73;
          }
        }

        v15 = v5[2];
        swift_beginAccess();
        v16 = *(v2 + 16);
        v88 = v5;
        if ((v16 & 0xC000000000000001) != 0)
        {
          v86 = v15;

          v17 = sub_1DEF8DE68();
          v5 = (v17 + 1);
          if (__OFADD__(v17, 1))
          {
            goto LABEL_68;
          }

          if (v17 == -1)
          {
            v39 = v11;

            *(v2 + 16) = MEMORY[0x1E69E7CC8];
          }

          else
          {
            v81 = v12;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE40B0, &unk_1DEF95600);
            v18 = sub_1DEF8E138();
            v93 = v18;
            v2 = sub_1DEF8E038();
            v19 = sub_1DEF8E0D8();
            if (v19)
            {
              v21 = v20;
              v22 = v19;
              type metadata accessor for Record.ID(0);
              v23 = v22;
              do
              {
                v92[0] = v23;
                swift_dynamicCast();
                v92[0] = v21;
                type metadata accessor for RecordMetadata(0);
                swift_dynamicCast();
                v26 = *(v18 + 16);
                if (*(v18 + 24) <= v26)
                {
                  sub_1DEEB1864(v26 + 1, 1);
                }

                v27 = v92[10];
                v18 = v93;
                v28 = v92[9];
                sub_1DEF8E7A8();
                sub_1DEF8D9B8();
                sub_1DEF8D9B8();

                sub_1DEF8D9B8();

                sub_1DEE27FC0(v27 + OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership, v10, type metadata accessor for Record.ID.Ownership);
                if ((*v13)(v10, 1, v4) == 1)
                {
                  MEMORY[0x1E12CBF60](0);
                }

                else
                {
                  v29 = v91;
                  (*v90)(v91, v10, v4);
                  MEMORY[0x1E12CBF60](1);
                  sub_1DEE1E37C(&qword_1ECDE3638, MEMORY[0x1E69695B8]);
                  sub_1DEF8D8C8();
                  (*v89)(v29, v4);
                }

                v5 = v92;
                v30 = sub_1DEF8E7F8();
                v31 = v18 + 64;
                v32 = -1 << *(v18 + 32);
                v33 = v30 & ~v32;
                v34 = v33 >> 6;
                if (((-1 << v33) & ~*(v18 + 64 + 8 * (v33 >> 6))) != 0)
                {
                  v24 = __clz(__rbit64((-1 << v33) & ~*(v18 + 64 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
                }

                else
                {
                  v35 = 0;
                  v36 = (63 - v32) >> 6;
                  do
                  {
                    if (++v34 == v36 && (v35 & 1) != 0)
                    {
                      __break(1u);
                      goto LABEL_66;
                    }

                    v37 = v34 == v36;
                    if (v34 == v36)
                    {
                      v34 = 0;
                    }

                    v35 |= v37;
                    v38 = *(v31 + 8 * v34);
                  }

                  while (v38 == -1);
                  v24 = __clz(__rbit64(~v38)) + (v34 << 6);
                }

                *(v31 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
                *(*(v18 + 48) + 8 * v24) = v27;
                *(*(v18 + 56) + 8 * v24) = v28;
                ++*(v18 + 16);
                v23 = sub_1DEF8E0D8();
                v21 = v25;
              }

              while (v23);
            }

            v2 = v84;
            *(v84 + 16) = v18;
            v39 = v83;
            v12 = v81;
          }

          v15 = v86;
        }

        else
        {
          v39 = v11;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v92[0] = *(v2 + 16);
        v5 = v92[0];
        *(v2 + 16) = 0x8000000000000000;
        v41 = v15;
        v42 = sub_1DEEAF3E8(v15);
        v44 = v5[2];
        v45 = (v43 & 1) == 0;
        v14 = __OFADD__(v44, v45);
        v46 = v44 + v45;
        if (v14)
        {
          goto LABEL_67;
        }

        v47 = v43;
        if (v5[3] < v46)
        {
          break;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_42;
        }

        v50 = v42;
        sub_1DEEB7AC8();
        v42 = v50;
        v5 = v92[0];
        if (v47)
        {
LABEL_43:
          v49 = v88;
          *(v5[7] + 8 * v42) = v88;

          goto LABEL_47;
        }

LABEL_45:
        v5[(v42 >> 6) + 8] |= 1 << v42;
        *(v5[6] + 8 * v42) = v41;
        *(v5[7] + 8 * v42) = v88;
        v51 = v5[2];
        v14 = __OFADD__(v51, 1);
        v52 = v51 + 1;
        if (v14)
        {
          goto LABEL_69;
        }

        v5[2] = v52;

        v49 = v88;
LABEL_47:
        *(v2 + 16) = v5;
        swift_endAccess();
        v54 = v49[2];
        v53 = v49[3];
        v11 = v39;
        if (!v53)
        {
          v57 = v87;
          swift_beginAccess();
LABEL_55:
          v5 = *(v2 + v57);

          v70 = sub_1DEEAF3E8(v69);
          if (v71)
          {
            v72 = v70;
            v73 = swift_isUniquelyReferenced_nonNull_native();
            v5 = *(v2 + v57);
            v94 = v5;
            if ((v73 & 1) == 0)
            {
              sub_1DEEB7958();
              v5 = v94;
            }

            sub_1DEF75AC8(v72, v5);

            *(v2 + v57) = v5;
          }

          else
          {
          }

          goto LABEL_5;
        }

        v55 = *(v53 + 16);
        v56 = *(v53 + 24);

        v57 = v87;
        swift_beginAccess();
        if (!v56)
        {
          goto LABEL_55;
        }

        v86 = v55;
        v58 = v57;
        v59 = v12;

        v60 = swift_isUniquelyReferenced_nonNull_native();
        v5 = *(v2 + v58);
        v94 = v5;
        v62 = sub_1DEEAF3E8(v54);
        v63 = v5[2];
        v64 = (v61 & 1) == 0;
        v65 = v63 + v64;
        if (__OFADD__(v63, v64))
        {
          goto LABEL_70;
        }

        v2 = v61;
        if (v5[3] >= v65)
        {
          if (v60)
          {
            v68 = v94;
            if ((v61 & 1) == 0)
            {
              goto LABEL_63;
            }
          }

          else
          {
            v5 = &v94;
            sub_1DEEB7958();
            v68 = v94;
            if ((v2 & 1) == 0)
            {
              goto LABEL_63;
            }
          }
        }

        else
        {
          sub_1DEEB13A0(v65, v60);
          v5 = v94;
          v66 = sub_1DEEAF3E8(v54);
          if ((v2 & 1) != (v67 & 1))
          {
LABEL_75:
            type metadata accessor for Record.ID(0);
            sub_1DEF8E6E8();
            __break(1u);
            return;
          }

          v62 = v66;
          v68 = v94;
          if ((v2 & 1) == 0)
          {
LABEL_63:
            v68[(v62 >> 6) + 8] |= 1 << v62;
            *(v68[6] + 8 * v62) = v54;
            v75 = (v68[7] + 16 * v62);
            *v75 = v86;
            v75[1] = v56;
            v76 = v68[2];
            v14 = __OFADD__(v76, 1);
            v77 = v76 + 1;
            if (v14)
            {
              goto LABEL_72;
            }

            v68[2] = v77;
            goto LABEL_65;
          }
        }

        v74 = (v68[7] + 16 * v62);
        v5 = v74[1];
        *v74 = v86;
        v74[1] = v56;

LABEL_65:
        v2 = v84;
        *(v84 + v87) = v68;
        v11 = v83;
        v12 = v59;
LABEL_5:
        swift_endAccess();

        if (v12 == v11)
        {
          return;
        }
      }

      sub_1DEEB1864(v46, isUniquelyReferenced_nonNull_native);
      v42 = sub_1DEEAF3E8(v41);
      if ((v47 & 1) != (v48 & 1))
      {
        goto LABEL_75;
      }

LABEL_42:
      v5 = v92[0];
      if (v47)
      {
        goto LABEL_43;
      }

      goto LABEL_45;
    }
  }
}

void sub_1DEF7397C(unint64_t a1)
{
  v2 = v1;
  v4 = sub_1DEF8D3F8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v62 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Record.ID.Ownership(0);
  v8.n128_f64[0] = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = a1;
  if (a1 >> 62)
  {
LABEL_45:
    v11 = sub_1DEF8DE68();
    if (!v11)
    {
      return;
    }
  }

  else
  {
    v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v11)
    {
      return;
    }
  }

  if (v11 >= 1)
  {
    v12 = 0;
    v13 = OBJC_IVAR____TtC16ReplicatorEngine21MetadataInMemoryStore_clientDefinedIDs;
    v59 = v55 & 0xC000000000000001;
    v53 = v55 + 32;
    v14 = (v5 + 48);
    v60 = (v5 + 8);
    v61 = (v5 + 32);
    v54 = OBJC_IVAR____TtC16ReplicatorEngine21MetadataInMemoryStore_clientDefinedIDs;
    v52 = v2;
    v51 = v11;
    while (1)
    {
      if (v59)
      {
        v15 = MEMORY[0x1E12CB6E0](v12, v55, v8);
      }

      else
      {
        v15 = *(v53 + 8 * v12);
      }

      swift_beginAccess();
      v16 = *(v2 + 2);
      if ((v16 & 0xC000000000000001) == 0)
      {
        break;
      }

      if (!sub_1DEF8E0B8())
      {
        goto LABEL_35;
      }

      v57 = v12;
      v58 = v15;
      swift_unknownObjectRelease();

      v17 = sub_1DEF8DE68();
      v56 = v16;
      if (v17)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE40B0, &unk_1DEF95600);
        v18 = sub_1DEF8E138();
        v66 = v18;
        sub_1DEF8E038();
        v19 = sub_1DEF8E0D8();
        if (v19)
        {
          v21 = v19;
          v22 = v20;
          v5 = type metadata accessor for Record.ID(0);
          do
          {
            v63 = v21;
            swift_dynamicCast();
            v63 = v22;
            type metadata accessor for RecordMetadata(0);
            swift_dynamicCast();
            v25 = *(v18 + 16);
            if (*(v18 + 24) <= v25)
            {
              sub_1DEEB1864(v25 + 1, 1);
            }

            v26 = v65;
            v18 = v66;
            v27 = v64;
            sub_1DEF8E7A8();
            sub_1DEF8D9B8();
            v28 = *(v26 + 32);
            sub_1DEF8D9B8();
            v2 = *(v28 + 40);

            sub_1DEF8D9B8();

            sub_1DEE27FC0(v26 + OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership, v10, type metadata accessor for Record.ID.Ownership);
            if ((*v14)(v10, 1, v4) == 1)
            {
              MEMORY[0x1E12CBF60](0);
            }

            else
            {
              v2 = v62;
              (*v61)(v62, v10, v4);
              MEMORY[0x1E12CBF60](1);
              sub_1DEE1E37C(&qword_1ECDE3638, MEMORY[0x1E69695B8]);
              sub_1DEF8D8C8();
              (*v60)(v2, v4);
            }

            v29 = sub_1DEF8E7F8();
            v30 = v18 + 64;
            v31 = -1 << *(v18 + 32);
            v32 = v29 & ~v31;
            v33 = v32 >> 6;
            if (((-1 << v32) & ~*(v18 + 64 + 8 * (v32 >> 6))) != 0)
            {
              v23 = __clz(__rbit64((-1 << v32) & ~*(v18 + 64 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
            }

            else
            {
              v34 = 0;
              v35 = (63 - v31) >> 6;
              do
              {
                if (++v33 == v35 && (v34 & 1) != 0)
                {
                  __break(1u);
                  goto LABEL_44;
                }

                v36 = v33 == v35;
                if (v33 == v35)
                {
                  v33 = 0;
                }

                v34 |= v36;
                v37 = *(v30 + 8 * v33);
              }

              while (v37 == -1);
              v23 = __clz(__rbit64(~v37)) + (v33 << 6);
            }

            *(v30 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
            *(*(v18 + 48) + 8 * v23) = v26;
            *(*(v18 + 56) + 8 * v23) = v27;
            ++*(v18 + 16);
            v21 = sub_1DEF8E0D8();
            v22 = v24;
          }

          while (v21);
        }

        v2 = v52;
        v11 = v51;
        v13 = v54;
      }

      else
      {

        v18 = MEMORY[0x1E69E7CC8];
      }

      v15 = v58;
      v5 = sub_1DEEAF3E8(v58);
      v45 = v44;

      if ((v45 & 1) == 0)
      {
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      sub_1DEF75E70(v5, v18);

      *(v2 + 2) = v18;

      v12 = v57;
LABEL_40:
      swift_endAccess();
      swift_beginAccess();
      v46 = sub_1DEEAF3E8(v15);
      if (v47)
      {
        v48 = v46;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v50 = *&v2[v13];
        v67 = v50;
        *&v2[v13] = 0x8000000000000000;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1DEEB7958();
          v50 = v67;
        }

        sub_1DEF75AC8(v48, v50);

        *&v2[v13] = v50;
      }

      else
      {
      }

      ++v12;
      swift_endAccess();
      if (v12 == v11)
      {
        return;
      }
    }

    v39 = sub_1DEEAF3E8(v38);
    if (v40)
    {
      v41 = v39;
      v42 = swift_isUniquelyReferenced_nonNull_native();
      v43 = *(v2 + 2);
      v63 = v43;
      if ((v42 & 1) == 0)
      {
        sub_1DEEB7AC8();
        v43 = v63;
      }

      sub_1DEF75E70(v41, v43);
      *(v2 + 2) = v43;

      v13 = v54;
      goto LABEL_40;
    }

LABEL_35:

    goto LABEL_40;
  }

  __break(1u);
}

double sub_1DEF74078()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_1DEF740F0(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(v1 + 56);

  v4 = sub_1DEF41CEC(v3, v2);

  *(v1 + 56) = v4;
}

uint64_t sub_1DEF74168(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3DF8, &unk_1DEF91710);
  v4 = sub_1DEF8D3F8();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1DEF907F0;
  (*(v5 + 16))(v7 + v6, a1, v4);

  v8 = sub_1DEF41CEC(v7, v3);
  swift_setDeallocating();
  (*(v5 + 8))(v7 + v6, v4);
  swift_deallocClassInstance();
  *(v1 + 56) = v8;
}

uint64_t sub_1DEF742C8(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 56);
  v5[2] = a1;

  *(v1 + 56) = sub_1DEF780D4(sub_1DEF78F9C, v5, v3);
}

BOOL sub_1DEF74350(uint64_t a1, uint64_t a2)
{
  sub_1DEF8D3F8();
  sub_1DEE1E37C(&qword_1ECDE40E0, MEMORY[0x1E69695C8]);
  return (sub_1DEF8D908() & 1) == 0;
}

uint64_t sub_1DEF743D0(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);

  v4 = sub_1DEF71954(a1, v3, sub_1DEEAF3E8, type metadata accessor for RecordMetadata);

  return v4;
}

uint64_t sub_1DEF7445C(void *a1)
{
  swift_beginAccess();

  v3 = sub_1DEF7888C(v2, a1);

  return v3;
}

void *MetadataInMemoryStore.deinit()
{

  sub_1DEF0192C(v0 + OBJC_IVAR____TtC16ReplicatorEngine21MetadataInMemoryStore_lastAuthKitReconciliationDate);

  return v0;
}

uint64_t MetadataInMemoryStore.__deallocating_deinit()
{

  sub_1DEF0192C(v0 + OBJC_IVAR____TtC16ReplicatorEngine21MetadataInMemoryStore_lastAuthKitReconciliationDate);

  return swift_deallocClassInstance();
}

uint64_t sub_1DEF745BC(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  swift_beginAccess();
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;
}

void sub_1DEF74668(char a1)
{
  v3 = *v1;
  swift_beginAccess();
  *(v3 + 48) = a1;
}

uint64_t sub_1DEF74700@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC16ReplicatorEngine21MetadataInMemoryStore_lastAuthKitReconciliationDate;
  swift_beginAccess();
  return sub_1DEECF850(v3 + v4, a1);
}

uint64_t sub_1DEF7475C(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC16ReplicatorEngine21MetadataInMemoryStore_lastAuthKitReconciliationDate;
  swift_beginAccess();
  sub_1DEECF904(a1, v3 + v4);
  return swift_endAccess();
}

void sub_1DEF74824(char a1)
{
  v3 = *v1;
  swift_beginAccess();
  *(v3 + 49) = a1;
}

uint64_t sub_1DEF748BC(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  *(v3 + 56) = a1;
}

uint64_t sub_1DEF7495C()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = MEMORY[0x1E69E7CC8];
  *(v1 + 16) = MEMORY[0x1E69E7CC8];

  v3 = OBJC_IVAR____TtC16ReplicatorEngine21MetadataInMemoryStore_clientDefinedIDs;
  swift_beginAccess();
  *(v1 + v3) = v2;
}

uint64_t sub_1DEF749DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C18, &unk_1DEF94D20);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v12 - v3;
  v5 = sub_1DEF8D3F8();
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, a1, v6);
  sub_1DEE27FC0(a1, v4, type metadata accessor for PairingRelationship);
  v10 = type metadata accessor for PairingRelationship(0);
  (*(*(v10 - 8) + 56))(v4, 0, 1, v10);
  swift_beginAccess();
  sub_1DEF32880(v4, v8);
  return swift_endAccess();
}

uint64_t sub_1DEF74B78(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C18, &unk_1DEF94D20);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v12 - v3;
  v5 = sub_1DEF8D3F8();
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, a1, v6);
  v10 = type metadata accessor for PairingRelationship(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  swift_beginAccess();
  sub_1DEF32880(v4, v8);
  return swift_endAccess();
}

uint64_t sub_1DEF74D3C()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 32);

  return v2;
}

uint64_t sub_1DEF74D8C()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 48);
}

double sub_1DEF74DCC()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_1DEF74E10()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 49);
}

double sub_1DEF74E50()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_1DEF74EB8(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 16);

  v5 = sub_1DEF71954(a1, v4, sub_1DEEAF3E8, type metadata accessor for RecordMetadata);

  return v5;
}

uint64_t sub_1DEF74F48(void *a1)
{
  swift_beginAccess();

  v3 = sub_1DEF7888C(v2, a1);

  return v3;
}

uint64_t sub_1DEF75110(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t (*)(uint64_t), void (*)(uint64_t, uint64_t), uint64_t, uint64_t (*)(uint64_t, uint64_t)), void (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v8 = v5;
  v10 = *v8;
  if ((*v8 & 0xC000000000000001) == 0)
  {
    v15 = a4;
    v20 = a2(a1, a2, a3, a4, a5);
    if (v21)
    {
      v10 = v20;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v23 = *v8;
      v25 = *v8;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:

        v19 = *(*(v23 + 56) + 8 * v10);
        a3(v10, v23);
        *v8 = v23;
        return v19;
      }

LABEL_14:
      (v15)();
      v23 = v25;
      goto LABEL_10;
    }

    return 0;
  }

  if (v10 < 0)
  {
    v12 = *v8;
  }

  else
  {
    v12 = v10 & 0xFFFFFFFFFFFFFF8;
  }

  v13 = sub_1DEF8E0B8();

  if (!v13)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v14 = sub_1DEF8DE68();
  v15 = a5(v12, v14);

  v16 = (a2)(a1);
  v18 = v17;

  if ((v18 & 1) == 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = *(*(v15 + 56) + 8 * v16);
  a3(v16, v15);

  *v8 = v15;
  return v19;
}

uint64_t sub_1DEF7529C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_1DEEAF3E8(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v19 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1DEEB8164();
      v9 = v19;
    }

    v10 = *(v9 + 56);
    v11 = sub_1DEF8D3F8();
    v18 = *(v11 - 8);
    (*(v18 + 32))(a2, v10 + *(v18 + 72) * v7, v11);
    sub_1DEF76584(v7, v9);
    *v3 = v9;
    v12 = *(v18 + 56);
    v13 = a2;
    v14 = 0;
    v15 = v11;
  }

  else
  {
    v16 = sub_1DEF8D3F8();
    v12 = *(*(v16 - 8) + 56);
    v15 = v16;
    v13 = a2;
    v14 = 1;
  }

  return v12(v13, v14, 1, v15);
}

uint64_t sub_1DEF7545C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t (*a5)(void)@<X4>, void (*a6)(void)@<X5>, uint64_t a7@<X8>)
{
  v12 = v7;
  v14 = sub_1DEE13224(a1, a2);
  if (v15)
  {
    v16 = v14;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v7;
    v28 = *v12;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a6();
      v18 = v28;
    }

    v19 = *(v18 + 56);
    v20 = a3(0);
    v27 = *(v20 - 8);
    sub_1DEE13A90(v19 + *(v27 + 72) * v16, a7, a4);
    sub_1DEF77714(v16, v18, a5);
    *v12 = v18;
    v21 = *(v27 + 56);
    v22 = a7;
    v23 = 0;
    v24 = v20;
  }

  else
  {
    v25 = a3(0);
    v21 = *(*(v25 - 8) + 56);
    v24 = v25;
    v22 = a7;
    v23 = 1;
  }

  return v21(v22, v23, 1, v24);
}

uint64_t sub_1DEF755E0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_1DEEAF20C(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v19 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1DEEB8A3C();
      v9 = v19;
    }

    v10 = *(v9 + 56);
    v11 = type metadata accessor for ZoneVersion(0);
    v18 = *(v11 - 8);
    sub_1DEE13A90(v10 + *(v18 + 72) * v7, a2, type metadata accessor for ZoneVersion);
    sub_1DEF76C64(v7, v9);
    *v3 = v9;
    v12 = *(v18 + 56);
    v13 = a2;
    v14 = 0;
    v15 = v11;
  }

  else
  {
    v16 = type metadata accessor for ZoneVersion(0);
    v12 = *(*(v16 - 8) + 56);
    v15 = v16;
    v13 = a2;
    v14 = 1;
  }

  return v12(v13, v14, 1, v15);
}

uint64_t sub_1DEF757F0@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, void (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v11 = v6;
  v13 = sub_1DEEAF350(a1);
  if (v14)
  {
    v15 = v13;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v6;
    v30 = *v11;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a5();
      v17 = v30;
    }

    v18 = *(v17 + 48);
    v19 = sub_1DEF8D3F8();
    v20 = v15;
    (*(*(v19 - 8) + 8))(v18 + *(*(v19 - 8) + 72) * v15, v19);
    v21 = *(v17 + 56);
    v22 = a2(0);
    v29 = *(v22 - 8);
    sub_1DEE13A90(v21 + *(v29 + 72) * v20, a6, a3);
    sub_1DEF77040(v20, v17, a4);
    *v11 = v17;
    v23 = *(v29 + 56);
    v24 = a6;
    v25 = 0;
    v26 = v22;
  }

  else
  {
    v27 = a2(0);
    v23 = *(*(v27 - 8) + 56);
    v26 = v27;
    v24 = a6;
    v25 = 1;
  }

  return v23(v24, v25, 1, v26);
}

double sub_1DEF75A04@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_1DEEAF880(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1DEEBAA80();
      v9 = v11;
    }

    sub_1DEE2F1AC((*(v9 + 56) + 40 * v7), a2);
    sub_1DEF77DE0(v7, v9);
    *v3 = v9;
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

void sub_1DEF75AC8(int64_t a1, uint64_t a2)
{
  v4 = sub_1DEF8D3F8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v32 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Record.ID.Ownership(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v35 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v34 = v4;
    v12 = ~v10;
    v13 = (sub_1DEF8DE28() + 1) & ~v10;
    v33 = (v5 + 48);
    v30 = (v5 + 8);
    v31 = (v5 + 32);
    do
    {
      v14 = *(*(a2 + 48) + 8 * v11);
      sub_1DEF8E7A8();

      sub_1DEF8D9B8();
      sub_1DEF8D9B8();

      sub_1DEF8D9B8();

      v15 = v35;
      sub_1DEE27FC0(v14 + OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership, v35, type metadata accessor for Record.ID.Ownership);
      v16 = v34;
      if ((*v33)(v15, 1, v34) == 1)
      {
        MEMORY[0x1E12CBF60](0);
      }

      else
      {
        v17 = v32;
        (*v31)(v32, v15, v16);
        MEMORY[0x1E12CBF60](1);
        sub_1DEE1E37C(&qword_1ECDE3638, MEMORY[0x1E69695B8]);
        sub_1DEF8D8C8();
        (*v30)(v17, v16);
      }

      v18 = sub_1DEF8E7F8();

      v19 = v18 & v12;
      if (a1 >= v13)
      {
        if (v19 < v13)
        {
          goto LABEL_4;
        }
      }

      else if (v19 >= v13)
      {
        goto LABEL_13;
      }

      if (a1 >= v19)
      {
LABEL_13:
        v20 = *(a2 + 48);
        v21 = (v20 + 8 * a1);
        v22 = (v20 + 8 * v11);
        if (a1 != v11 || v21 >= v22 + 1)
        {
          *v21 = *v22;
        }

        v23 = *(a2 + 56);
        v24 = (v23 + 16 * a1);
        v25 = (v23 + 16 * v11);
        if (a1 != v11 || v24 >= v25 + 1)
        {
          *v24 = *v25;
          a1 = v11;
        }
      }

LABEL_4:
      v11 = (v11 + 1) & v12;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v26 = *(a2 + 16);
  v27 = __OFSUB__(v26, 1);
  v28 = v26 - 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v28;
    ++*(a2 + 36);
  }
}

void sub_1DEF75E70(int64_t a1, uint64_t a2)
{
  v4 = sub_1DEF8D3F8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v32 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Record.ID.Ownership(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v35 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v34 = v4;
    v12 = ~v10;
    v13 = (sub_1DEF8DE28() + 1) & ~v10;
    v33 = (v5 + 48);
    v30 = (v5 + 8);
    v31 = (v5 + 32);
    do
    {
      v14 = *(*(a2 + 48) + 8 * v11);
      sub_1DEF8E7A8();

      sub_1DEF8D9B8();
      sub_1DEF8D9B8();

      sub_1DEF8D9B8();

      v15 = v35;
      sub_1DEE27FC0(v14 + OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership, v35, type metadata accessor for Record.ID.Ownership);
      v16 = v34;
      if ((*v33)(v15, 1, v34) == 1)
      {
        MEMORY[0x1E12CBF60](0);
      }

      else
      {
        v17 = v32;
        (*v31)(v32, v15, v16);
        MEMORY[0x1E12CBF60](1);
        sub_1DEE1E37C(&qword_1ECDE3638, MEMORY[0x1E69695B8]);
        sub_1DEF8D8C8();
        (*v30)(v17, v16);
      }

      v18 = sub_1DEF8E7F8();

      v19 = v18 & v12;
      if (a1 >= v13)
      {
        if (v19 < v13)
        {
          goto LABEL_4;
        }
      }

      else if (v19 >= v13)
      {
        goto LABEL_13;
      }

      if (a1 >= v19)
      {
LABEL_13:
        v20 = *(a2 + 48);
        v21 = (v20 + 8 * a1);
        v22 = (v20 + 8 * v11);
        if (a1 != v11 || v21 >= v22 + 1)
        {
          *v21 = *v22;
        }

        v23 = *(a2 + 56);
        v24 = (v23 + 8 * a1);
        v25 = (v23 + 8 * v11);
        if (a1 != v11 || v24 >= v25 + 1)
        {
          *v24 = *v25;
          a1 = v11;
        }
      }

LABEL_4:
      v11 = (v11 + 1) & v12;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v26 = *(a2 + 16);
  v27 = __OFSUB__(v26, 1);
  v28 = v26 - 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v28;
    ++*(a2 + 36);
  }
}

uint64_t sub_1DEF76218(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1DEF8DE28() + 1) & ~v5;
    do
    {
      sub_1DEF8E7A8();

      sub_1DEF8D9B8();
      v9 = sub_1DEF8E7F8();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1DEF763C8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1DEF8DE28() + 1) & ~v5;
    do
    {
      sub_1DEF8E7A8();

      sub_1DEF8D9B8();
      sub_1DEF8D9B8();
      v9 = sub_1DEF8E7F8();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 8 * v3);
        v13 = (v11 + 8 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1DEF76584(int64_t a1, uint64_t a2)
{
  v4 = sub_1DEF8D3F8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v31 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Record.ID.Ownership(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v33 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = (sub_1DEF8DE28() + 1) & ~v10;
    v32 = (v5 + 48);
    v29 = (v5 + 32);
    v30 = v5;
    v28 = (v5 + 8);
    while (1)
    {
      v14 = *(*(a2 + 48) + 8 * v11);
      sub_1DEF8E7A8();

      sub_1DEF8D9B8();
      sub_1DEF8D9B8();

      sub_1DEF8D9B8();

      v15 = v33;
      sub_1DEE27FC0(v14 + OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership, v33, type metadata accessor for Record.ID.Ownership);
      if ((*v32)(v15, 1, v4) == 1)
      {
        MEMORY[0x1E12CBF60](0);
      }

      else
      {
        v16 = v31;
        (*v29)(v31, v15, v4);
        MEMORY[0x1E12CBF60](1);
        sub_1DEE1E37C(&qword_1ECDE3638, MEMORY[0x1E69695B8]);
        sub_1DEF8D8C8();
        (*v28)(v16, v4);
      }

      v17 = sub_1DEF8E7F8();

      v18 = v17 & v12;
      if (a1 >= v13)
      {
        break;
      }

      if (v18 < v13)
      {
        goto LABEL_13;
      }

LABEL_14:
      v19 = *(a2 + 48);
      v20 = (v19 + 8 * a1);
      v21 = (v19 + 8 * v11);
      if (a1 != v11 || v20 >= v21 + 1)
      {
        *v20 = *v21;
      }

      v22 = *(v30 + 72);
      v23 = v22 * a1;
      if (v22 * a1 < (v22 * v11) || *(a2 + 56) + v22 * a1 >= *(a2 + 56) + v22 * v11 + v22)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        a1 = v11;
        if (v23 == v22 * v11)
        {
          goto LABEL_5;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      a1 = v11;
LABEL_5:
      v11 = (v11 + 1) & v12;
      if (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    if (v18 < v13)
    {
      goto LABEL_5;
    }

LABEL_13:
    if (a1 < v18)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_21:
  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }
}

void sub_1DEF7695C(int64_t a1, uint64_t a2)
{
  v38 = sub_1DEF8D3F8();
  v4 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v39 = v5;
    v11 = sub_1DEF8DE28();
    v12 = v38;
    v5 = v39;
    v13 = v10;
    v36 = (v11 + 1) & v10;
    v15 = *(v4 + 16);
    v14 = v4 + 16;
    v34 = a2 + 64;
    v35 = v15;
    v16 = *(v14 + 56);
    v33 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v9;
      v19 = v37;
      v20 = v13;
      v21 = v14;
      v35(v37, *(v5 + 48) + v16 * v9, v12);
      sub_1DEE1E37C(&qword_1ECDE3638, MEMORY[0x1E69695B8]);
      v22 = sub_1DEF8D8B8();
      (*v33)(v19, v12);
      v13 = v20;
      v23 = v22 & v20;
      if (a1 >= v36)
      {
        if (v23 >= v36 && a1 >= v23)
        {
LABEL_15:
          v5 = v39;
          v14 = v21;
          if (v17 * a1 < v18 || (v16 = v17, *(v39 + 48) + v17 * a1 >= (*(v39 + 48) + v18 + v17)))
          {
            swift_arrayInitWithTakeFrontToBack();
            v5 = v39;
            v16 = v17;
            v13 = v20;
            v7 = v34;
          }

          else
          {
            v7 = v34;
            if (v17 * a1 != v18)
            {
              swift_arrayInitWithTakeBackToFront();
              v5 = v39;
              v16 = v17;
              v13 = v20;
            }
          }

          v26 = *(v5 + 56);
          v27 = (v26 + 8 * a1);
          v28 = (v26 + 8 * v9);
          if (a1 != v9 || v27 >= v28 + 1)
          {
            *v27 = *v28;
            a1 = v9;
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v36 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v14 = v21;
      v7 = v34;
      v16 = v17;
      v5 = v39;
LABEL_4:
      v9 = (v9 + 1) & v13;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v29 = *(v5 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v31;
    ++*(v5 + 36);
  }
}

unint64_t sub_1DEF76C64(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1DEF8DE28() + 1) & ~v5;
    while (1)
    {
      sub_1DEF8E7A8();

      sub_1DEF8D9B8();
      sub_1DEF8D9B8();
      v9 = sub_1DEF8E7F8();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 8 * v3);
      v13 = (v11 + 8 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(type metadata accessor for ZoneVersion(0) - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1DEF76E5C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1DEF8DE28() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 16 * v6 + 8);
      sub_1DEF8E7A8();
      if (v9)
      {
        MEMORY[0x1E12CBF60](1);

        sub_1DEF8D9B8();
      }

      else
      {
        MEMORY[0x1E12CBF60](0);
      }

      v10 = sub_1DEF8E7F8();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_13;
      }

      if (v3 >= v11)
      {
LABEL_13:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 8 * v3);
        v17 = (v15 + 8 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1DEF77040(int64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v37 = a3;
  v5 = sub_1DEF8D3F8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v42 = a2;
    v12 = ~v10;
    v13 = sub_1DEF8DE28();
    v14 = v12;
    a2 = v42;
    v41 = (v13 + 1) & v14;
    v16 = *(v6 + 16);
    v15 = v6 + 16;
    v39 = v9;
    v40 = v16;
    v17 = *(v15 + 56);
    v38 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v11;
      v20 = v14;
      v21 = v15;
      v40(v8, *(a2 + 48) + v17 * v11, v5);
      sub_1DEE1E37C(&qword_1ECDE3638, MEMORY[0x1E69695B8]);
      v22 = sub_1DEF8D8B8();
      (*v38)(v8, v5);
      v14 = v20;
      v23 = v22 & v20;
      if (a1 >= v41)
      {
        if (v23 >= v41 && a1 >= v23)
        {
LABEL_15:
          v15 = v21;
          if (v18 * a1 < v19 || *(v42 + 48) + v18 * a1 >= (*(v42 + 48) + v19 + v18))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v18 * a1 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v42;
          v26 = *(v42 + 56);
          v27 = *(*(v37(0) - 8) + 72);
          v28 = v27 * a1;
          v29 = v26 + v27 * a1;
          v30 = v27 * v11;
          v31 = v26 + v27 * v11 + v27;
          if (v28 < v30 || v29 >= v31)
          {
            swift_arrayInitWithTakeFrontToBack();
            a1 = v11;
            v9 = v39;
            v14 = v20;
          }

          else
          {
            a1 = v11;
            v33 = v28 == v30;
            v9 = v39;
            v14 = v20;
            if (!v33)
            {
              swift_arrayInitWithTakeBackToFront();
              v14 = v20;
              a1 = v11;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v41 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v15 = v21;
      v9 = v39;
      a2 = v42;
LABEL_4:
      v11 = (v11 + 1) & v14;
      v17 = v18;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(a2 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v36;
    ++*(a2 + 36);
  }
}

uint64_t sub_1DEF7737C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1DEF8DE28() + 1) & ~v5;
    do
    {
      sub_1DEF8E7A8();

      sub_1DEF8D9B8();
      v11 = sub_1DEF8E7F8();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = v16 + 40 * v3;
        v18 = (v16 + 40 * v6);
        if (v3 != v6 || v17 >= v18 + 40)
        {
          v9 = *v18;
          v10 = v18[1];
          *(v17 + 32) = *(v18 + 4);
          *v17 = v9;
          *(v17 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1DEF77538(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1DEF8DE28() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_1DEF8E798();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8 || v3 < v11)
        {
          goto LABEL_5;
        }
      }

      else if (v11 < v8 && v3 < v11)
      {
        goto LABEL_5;
      }

      v14 = (v9 + 8 * v3);
      if (v3 != v6 || v14 >= v10 + 1)
      {
        *v14 = *v10;
      }

      v15 = *(a2 + 56);
      v16 = *(*(type metadata accessor for ConnectionDurationMonitor.ConnectionDescriptor(0) - 8) + 72);
      v17 = v16 * v3;
      result = v15 + v16 * v3;
      v18 = v16 * v6;
      v19 = v15 + v16 * v6 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v17 == v18)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1DEF77714(unint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    v10 = (sub_1DEF8DE28() + 1) & ~v6;
    while (1)
    {
      sub_1DEF8E7A8();

      sub_1DEF8D9B8();
      v11 = sub_1DEF8E7F8();

      v12 = v11 & v9;
      if (v4 >= v10)
      {
        break;
      }

      if (v12 < v10)
      {
        goto LABEL_10;
      }

LABEL_11:
      v13 = *(a2 + 48);
      v14 = (v13 + 16 * v4);
      v15 = (v13 + 16 * v7);
      if (v4 != v7 || v14 >= v15 + 1)
      {
        *v14 = *v15;
      }

      v16 = *(a2 + 56);
      v17 = *(*(a3(0) - 8) + 72);
      v18 = v17 * v4;
      result = v16 + v17 * v4;
      v19 = v17 * v7;
      v20 = v16 + v17 * v7 + v17;
      if (v18 < v19 || result >= v20)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v18 == v19)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v9;
      if (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v12 < v10)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v4 < v12)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1DEF77908(int64_t a1, uint64_t a2)
{
  v38 = sub_1DEF8D3F8();
  v4 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v39 = v5;
    v11 = sub_1DEF8DE28();
    v12 = v38;
    v5 = v39;
    v13 = v10;
    v36 = (v11 + 1) & v10;
    v15 = *(v4 + 16);
    v14 = v4 + 16;
    v34 = a2 + 64;
    v35 = v15;
    v16 = *(v14 + 56);
    v33 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v9;
      v19 = v37;
      v20 = v13;
      v21 = v14;
      v35(v37, *(v5 + 48) + v16 * v9, v12);
      sub_1DEE1E37C(&qword_1ECDE3638, MEMORY[0x1E69695B8]);
      v22 = sub_1DEF8D8B8();
      (*v33)(v19, v12);
      v13 = v20;
      v23 = v22 & v20;
      if (a1 >= v36)
      {
        if (v23 >= v36 && a1 >= v23)
        {
LABEL_15:
          v5 = v39;
          v14 = v21;
          if (v17 * a1 < v18 || (v16 = v17, *(v39 + 48) + v17 * a1 >= (*(v39 + 48) + v18 + v17)))
          {
            swift_arrayInitWithTakeFrontToBack();
            v5 = v39;
            v16 = v17;
            v13 = v20;
            v7 = v34;
          }

          else
          {
            v7 = v34;
            if (v17 * a1 != v18)
            {
              swift_arrayInitWithTakeBackToFront();
              v5 = v39;
              v16 = v17;
              v13 = v20;
            }
          }

          v26 = *(v5 + 56);
          v27 = (v26 + 16 * a1);
          v28 = (v26 + 16 * v9);
          if (a1 != v9 || v27 >= v28 + 1)
          {
            *v27 = *v28;
            a1 = v9;
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v36 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v14 = v21;
      v7 = v34;
      v16 = v17;
      v5 = v39;
LABEL_4:
      v9 = (v9 + 1) & v13;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v29 = *(v5 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v31;
    ++*(v5 + 36);
  }
}

unint64_t sub_1DEF77C10(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1DEF8DE28() + 1) & ~v5;
    while (1)
    {
      sub_1DEF8E7A8();
      sub_1DEF8E7D8();
      result = sub_1DEF8E7F8();
      v9 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v9 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v10 = *(a2 + 48);
      v11 = (v10 + v3);
      v12 = (v10 + v6);
      if (v3 != v6 || v11 >= v12 + 1)
      {
        *v11 = *v12;
      }

      v13 = *(a2 + 56);
      v14 = *(*(type metadata accessor for NetworkMessenger.PartialIncomingMessage(0) - 8) + 72);
      v15 = v14 * v3;
      result = v13 + v14 * v3;
      v16 = v14 * v6;
      v17 = v13 + v14 * v6 + v14;
      if (v15 < v16 || result >= v17)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v15 == v16)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v9 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v9)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1DEF77DE0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v29 = ~v5;
    v30 = a2 + 64;
    v28 = (sub_1DEF8DE28() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48) + 56 * v6;
      v10 = *(v9 + 24);
      v11 = *(v9 + 32);
      v13 = *(v9 + 40);
      v12 = *(v9 + 48);
      sub_1DEF8E7A8();

      sub_1DEF8D9B8();
      sub_1DEF8E7C8();
      if (v10)
      {
        sub_1DEF8D9B8();
      }

      MEMORY[0x1E12CBF90](v11);
      MEMORY[0x1E12CBF90](v13);
      MEMORY[0x1E12CBF90](v12);
      v14 = sub_1DEF8E7F8();

      v15 = v14 & v29;
      if (v3 >= v28)
      {
        v4 = v30;
        if (v15 < v28)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v4 = v30;
        if (v15 >= v28)
        {
          goto LABEL_12;
        }
      }

      if (v3 >= v15)
      {
LABEL_12:
        v16 = *(a2 + 48);
        v17 = v16 + 56 * v3;
        v18 = (v16 + 56 * v6);
        if (v3 != v6 || v17 >= v18 + 56)
        {
          v19 = *v18;
          v20 = v18[1];
          v21 = v18[2];
          *(v17 + 48) = *(v18 + 6);
          *(v17 + 16) = v20;
          *(v17 + 32) = v21;
          *v17 = v19;
        }

        v22 = *(a2 + 56);
        v23 = v22 + 40 * v3;
        v24 = (v22 + 40 * v6);
        if (v3 != v6 || v23 >= v24 + 40)
        {
          v7 = *v24;
          v8 = v24[1];
          *(v23 + 32) = *(v24 + 4);
          *v23 = v7;
          *(v23 + 16) = v8;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v29;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v25 = *(a2 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v27;
    ++*(a2 + 36);
  }

  return result;
}

void *sub_1DEF78044(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_1DEF7846C(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void *sub_1DEF780D4(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v43 = a1;
  v47 = *MEMORY[0x1E69E9840];
  v6 = sub_1DEF8D3F8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v9) = *(a3 + 32);
  v11 = ((1 << v9) + 63) >> 6;
  if ((v9 & 0x3Fu) > 0xD)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v35 = v11;
    v41 = v10;
    v42 = v8;
    v46 = v4;
    v37 = &v34;
    MEMORY[0x1EEE9AC00](v8);
    v36 = &v34 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v36, v12);
    v13 = 0;
    v44 = a3;
    v15 = *(a3 + 56);
    a3 += 56;
    v14 = v15;
    v16 = 1 << *(a3 - 24);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & v14;
    v10 = ((v16 + 63) >> 6);
    v38 = 0;
    v39 = v7 + 16;
    v40 = (v7 + 8);
    while (v18)
    {
      v19 = __clz(__rbit64(v18));
      v45 = (v18 - 1) & v18;
LABEL_12:
      v11 = v19 | (v13 << 6);
      v22 = *(v44 + 48) + *(v7 + 72) * v11;
      v4 = v7;
      v23 = *(v7 + 16);
      v24 = v41;
      v25 = v42;
      v23(v41, v22, v42);
      v26 = v46;
      v27 = v43(v24);
      v46 = v26;
      if (v26)
      {
        (*v40)(v24, v25);

        return swift_willThrow();
      }

      v28 = v27;
      v8 = (*v40)(v24, v25);
      v7 = v4;
      v18 = v45;
      if (v28)
      {
        *&v36[(v11 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v11;
        if (__OFADD__(v38++, 1))
        {
          __break(1u);
          return sub_1DEECCCE8(v36, v35, v38, v44);
        }
      }
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v10)
      {
        return sub_1DEECCCE8(v36, v35, v38, v44);
      }

      v21 = *(a3 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v45 = (v21 - 1) & v21;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_22:
    v31 = v8;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v8 = v31;
  }

  v32 = swift_slowAlloc();
  v33 = sub_1DEF78044(v32, v11, a3, v43);

  result = MEMORY[0x1E12CCD70](v32, -1, -1);
  if (!v4)
  {
    return v33;
  }

  return result;
}

void sub_1DEF7846C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v35 = a4;
  v29 = a2;
  v30 = a1;
  v38 = sub_1DEF8D3F8();
  v7.n128_f64[0] = MEMORY[0x1EEE9AC00](v38);
  v36 = a3;
  v37 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  v12 = *(a3 + 56);
  v11 = a3 + 56;
  v10 = v12;
  v13 = 1 << *(v11 - 24);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v16 = (v13 + 63) >> 6;
  v33 = v6 + 16;
  v34 = v6;
  v31 = 0;
  v32 = (v6 + 8);
  while (v15)
  {
    v17 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v18 = v17 | (v9 << 6);
    v19 = v38;
    v20 = v37;
LABEL_11:
    (*(v34 + 16))(v20, *(v36 + 48) + *(v34 + 72) * v18, v19, v7);
    v23 = v35(v20);
    v24 = v20;
    if (v4)
    {
      (*v32)(v20, v19);
      return;
    }

    v25 = v23;
    (*v32)(v24, v19);
    if (v25)
    {
      *(v30 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      if (__OFADD__(v31++, 1))
      {
        __break(1u);
LABEL_16:
        v27 = v36;

        sub_1DEECCCE8(v30, v29, v31, v27);
        return;
      }
    }
  }

  v21 = v9;
  v19 = v38;
  v20 = v37;
  while (1)
  {
    v9 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v9 >= v16)
    {
      goto LABEL_16;
    }

    v22 = *(v11 + 8 * v9);
    ++v21;
    if (v22)
    {
      v15 = (v22 - 1) & v22;
      v18 = __clz(__rbit64(v22)) | (v9 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_1DEF786CC(uint64_t a1, void *a2)
{
  v3 = v2;
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;
  v10 = swift_retain_n();
  if (v7 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();

      v11 = sub_1DEF1043C(v13, v8, a1, a2);
      MEMORY[0x1E12CCD70](v13, -1, -1);

      return v11;
    }
  }

  MEMORY[0x1EEE9AC00](v10);
  bzero(v14 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0), v9);

  v11 = sub_1DEEA4718(v14 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0), v8, a1, a2);

  if (v3)
  {
    swift_willThrow();
  }

  return v11;
}

uint64_t sub_1DEF7888C(uint64_t a1, void *a2)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x1E69E7CC8];
    v12 = MEMORY[0x1E69E7CC8];
    v4 = sub_1DEF8E038();

    if (sub_1DEF8E0D8())
    {
      type metadata accessor for Record.ID(0);
      v3 = MEMORY[0x1E69E7CC8];
      do
      {
        swift_dynamicCast();
        type metadata accessor for RecordMetadata(0);
        swift_dynamicCast();
        if (!v11)
        {
          break;
        }

        v5 = *(v11 + 32);
        v6 = a2[2] == v5[2] && a2[3] == v5[3];
        if (v6 || (sub_1DEF8E4E8()) && (a2[4] == v5[4] ? (v7 = a2[5] == v5[5]) : (v7 = 0), v7 || (sub_1DEF8E4E8()))
        {
          v8 = *(v3 + 16);
          if (*(v3 + 24) <= v8)
          {
            sub_1DEEB1864(v8 + 1, 1);
          }

          v3 = v12;
          sub_1DEF41EC0();
        }

        else
        {
        }
      }

      while (sub_1DEF8E0D8());
    }

    sub_1DEE2774C(v4 | 0x8000000000000000);
  }

  else
  {

    v3 = sub_1DEF786CC(a1, a2);
  }

  return v3;
}

uint64_t sub_1DEF78A84(uint64_t a1)
{
  v48 = sub_1DEF8D3F8();
  v42 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PairingRelationship(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v47 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v41 - v9;
  v11 = MEMORY[0x1E69E7CC8];
  v1[2] = MEMORY[0x1E69E7CC8];
  v1[3] = v11;
  v12 = v1 + 3;
  v1[4] = 0;
  v1[5] = 0;
  v1[7] = MEMORY[0x1E69E7CD0];
  v13 = OBJC_IVAR____TtC16ReplicatorEngine21MetadataInMemoryStore_lastAuthKitReconciliationDate;
  v14 = sub_1DEF8D378();
  (*(*(v14 - 8) + 56))(v1 + v13, 1, 1, v14);
  v41 = v1;
  *(v1 + OBJC_IVAR____TtC16ReplicatorEngine21MetadataInMemoryStore_clientDefinedIDs) = v11;
  v15 = *(a1 + 16);
  if (!v15)
  {
LABEL_15:
    result = v41;
    *(v41 + 48) = 1;
    return result;
  }

  v16 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v17 = *(v6 + 72);
  v45 = (v42 + 8);
  v46 = (v42 + 16);
  while (1)
  {
    sub_1DEE27FC0(v16, v10, type metadata accessor for PairingRelationship);
    v18 = *v46;
    (*v46)(v4, v10, v48);
    swift_beginAccess();
    sub_1DEE13A90(v10, v47, type metadata accessor for PairingRelationship);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v49 = *v12;
    v20 = v49;
    *v12 = 0x8000000000000000;
    v21 = sub_1DEEAF350(v4);
    v23 = v20[2];
    v24 = (v22 & 1) == 0;
    v25 = __OFADD__(v23, v24);
    v26 = v23 + v24;
    if (v25)
    {
      break;
    }

    v27 = v22;
    if (v20[3] < v26)
    {
      sub_1DEEB1C0C(v26, isUniquelyReferenced_nonNull_native);
      v21 = sub_1DEEAF350(v4);
      if ((v27 & 1) != (v28 & 1))
      {
        goto LABEL_18;
      }

LABEL_10:
      v29 = v49;
      if (v27)
      {
        goto LABEL_3;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    v39 = v21;
    sub_1DEEB7B04();
    v21 = v39;
    v29 = v49;
    if (v27)
    {
LABEL_3:
      sub_1DEF78F38(v47, v29[7] + v21 * v17);
      (*v45)(v4, v48);
      goto LABEL_4;
    }

LABEL_11:
    v43 = v16;
    v44 = v15;
    v30 = v12;
    v31 = v10;
    v29[(v21 >> 6) + 8] |= 1 << v21;
    v32 = v4;
    v33 = v42;
    v34 = v21;
    v35 = v48;
    v18((v29[6] + *(v42 + 72) * v21), v32, v48);
    sub_1DEE13A90(v47, v29[7] + v34 * v17, type metadata accessor for PairingRelationship);
    v36 = *(v33 + 8);
    v4 = v32;
    v36(v32, v35);
    v37 = v29[2];
    v25 = __OFADD__(v37, 1);
    v38 = v37 + 1;
    if (v25)
    {
      goto LABEL_17;
    }

    v29[2] = v38;
    v10 = v31;
    v12 = v30;
    v16 = v43;
    v15 = v44;
LABEL_4:
    *v12 = v29;

    swift_endAccess();
    v16 += v17;
    if (!--v15)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_1DEF8E6E8();
  __break(1u);
  return result;
}

uint64_t sub_1DEF78EC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C98, &unk_1DEF95610);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DEF78F38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PairingRelationship(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for MetadataInMemoryStore(uint64_t a1)
{
  result = qword_1ECDE57B8;
  if (!qword_1ECDE57B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DEF79010(uint64_t a1)
{
  sub_1DEECFC40(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of MetadataInMemoryStore.__allocating_init(pairingRelationships:)()
{
  return (*(v0 + 352))();
}

{
  return (*(v0 + 360))();
}

uint64_t dispatch thunk of MetadataInMemoryStore.update(_:)()
{
  return (*(*v0 + 384))();
}

{
  return (*(*v0 + 400))();
}

uint64_t dispatch thunk of MetadataInMemoryStore.metadata(for:)()
{
  return (*(*v0 + 464))();
}

{
  return (*(*v0 + 472))();
}

void *CustomizableRetryTimer.init()()
{
  v0[5] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4230, &qword_1DEF934E0);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  v0[6] = v1;
  v0[2] = 3;
  v0[3] = 0x4030000000000000;
  v0[4] = 3;
  return v0;
}

uint64_t CustomizableRetryTimer.init(maxRetries:intervalUntilRetry:)(uint64_t a1, double a2)
{
  *(v2 + 40) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4230, &qword_1DEF934E0);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v2 + 48) = v5;
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  *(v2 + 32) = a1;
  return v2;
}

uint64_t CustomizableRetryTimer.deinit()
{

  return v0;
}

uint64_t sub_1DEF797BC()
{
  v1 = *(v0 + 48);

  os_unfair_lock_lock(v1 + 4);
  sub_1DEE15434(v2);
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_1DEF79838()
{
  v1 = *(v0 + 48);

  os_unfair_lock_lock(v1 + 4);
  sub_1DEE3DEF0(v2);
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_1DEF798A8()
{
  v1 = *(v0 + 48);

  os_unfair_lock_lock(v1 + 4);
  sub_1DEE3DEF0(v2);
  os_unfair_lock_unlock(v1 + 4);
}

void sub_1DEF79918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *(v3 + 48);

  os_unfair_lock_assert_owner(v7 + 4);

  v9 = v4[4];
  v10 = v9 - 1;
  if (v9 < 1)
  {
    if (qword_1ECDE2E58 != -1)
    {
      swift_once();
    }

    v20 = sub_1DEF8D508();
    __swift_project_value_buffer(v20, qword_1ECDF6028);
    v29 = sub_1DEF8D4D8();
    v21 = sub_1DEF8DC98();
    if (os_log_type_enabled(v29, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1DEE0F000, v29, v21, "Exhausted retry attempts; will not try again", v22, 2u);
      MEMORY[0x1E12CCD70](v22, -1, -1);
    }
  }

  else
  {
    v11 = (*(*v4 + 232))(v8);
    v4[4] = v10;
    if (qword_1ECDE2E58 != -1)
    {
      swift_once();
    }

    v12 = sub_1DEF8D508();
    __swift_project_value_buffer(v12, qword_1ECDF6028);
    v13 = sub_1DEF8D4D8();
    v14 = sub_1DEF8DCB8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 134349056;
      *(v15 + 4) = v11;
      _os_log_impl(&dword_1DEE0F000, v13, v14, "Retry timer will fire in %{public}fs", v15, 0xCu);
      MEMORY[0x1E12CCD70](v15, -1, -1);
    }

    v17 = v4[5];
    if (v17)
    {
      v18 = *(v17 + 24);
      MEMORY[0x1EEE9AC00](v16);

      os_unfair_lock_lock(v18 + 4);
      sub_1DEE3DEF0(v19);
      os_unfair_lock_unlock(v18 + 4);
    }

    type metadata accessor for BasicTimer();
    v23 = swift_allocObject();
    *(v23 + 16) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4230, &qword_1DEF934E0);
    v24 = swift_allocObject();
    *(v24 + 16) = 0;
    *(v23 + 24) = v24;
    v4[5] = v23;

    v25 = swift_allocObject();
    v25[2] = v4;
    v25[3] = a2;
    v25[4] = a3;
    v26 = *(v23 + 24);
    MEMORY[0x1EEE9AC00](v25);
    MEMORY[0x1EEE9AC00](v27);

    os_unfair_lock_lock(v26 + 4);
    sub_1DEE3DEF0(v28);
    os_unfair_lock_unlock(v26 + 4);
  }
}

void sub_1DEF79D3C()
{
  v1 = v0;
  v2 = *(v0 + 48);

  os_unfair_lock_assert_owner(v2 + 4);

  if (qword_1ECDE2E58 != -1)
  {
    swift_once();
  }

  v3 = sub_1DEF8D508();
  __swift_project_value_buffer(v3, qword_1ECDF6028);
  v4 = sub_1DEF8D4D8();
  v5 = sub_1DEF8DCB8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1DEE0F000, v4, v5, "Resetting retry timer", v6, 2u);
    MEMORY[0x1E12CCD70](v6, -1, -1);
  }

  *(v1 + 32) = *(v1 + 16);
}

uint64_t sub_1DEF79E3C()
{
  v1 = v0;
  v2 = *(v0 + 48);

  os_unfair_lock_assert_owner(v2 + 4);

  if (*(v1 + 40))
  {
    if (qword_1ECDE2E58 != -1)
    {
      swift_once();
    }

    v4 = sub_1DEF8D508();
    __swift_project_value_buffer(v4, qword_1ECDF6028);
    v5 = sub_1DEF8D4D8();
    v6 = sub_1DEF8DCB8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1DEE0F000, v5, v6, "Cancelling retry timer", v7, 2u);
      MEMORY[0x1E12CCD70](v7, -1, -1);
    }

    v9 = *(v1 + 40);
    if (v9)
    {
      v10 = *(v9 + 24);
      MEMORY[0x1EEE9AC00](v8);

      os_unfair_lock_lock(v10 + 4);
      sub_1DEE3DEF0(v11);
      os_unfair_lock_unlock(v10 + 4);
    }

    *(v1 + 40) = 0;
  }

  return result;
}

uint64_t CustomizableRetryTimer.__allocating_init()()
{
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4230, &qword_1DEF934E0);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v0 + 48) = v1;
  *(v0 + 16) = 3;
  *(v0 + 24) = 0x4030000000000000;
  *(v0 + 32) = xmmword_1DEF93BB0;
  return v0;
}

uint64_t CustomizableRetryTimer.__allocating_init(maxRetries:intervalUntilRetry:)(uint64_t a1, double a2)
{
  v4 = swift_allocObject();
  *(v4 + 40) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4230, &qword_1DEF934E0);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v4 + 48) = v5;
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + 32) = a1;
  return v4;
}

uint64_t sub_1DEF7A104(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = *(a1 + 48);

  os_unfair_lock_lock(v3 + 4);
  sub_1DEF12170(&v6);
  os_unfair_lock_unlock(v3 + 4);
  v4 = v6;

  return a2(v4);
}

uint64_t sub_1DEF7A19C@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  v5 = v3 - v4;
  if (__OFSUB__(v3, v4))
  {
    __break(1u);
  }

  else if (qword_1ECDE2E58 == -1)
  {
    goto LABEL_3;
  }

  swift_once();
LABEL_3:
  v6 = sub_1DEF8D508();
  __swift_project_value_buffer(v6, qword_1ECDF6028);
  v7 = sub_1DEF8D4D8();
  v8 = sub_1DEF8DCB8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 134349056;
    *(v9 + 4) = v5;
    _os_log_impl(&dword_1DEE0F000, v7, v8, "Retry timer fired (attempt #%{public}ld)", v9, 0xCu);
    MEMORY[0x1E12CCD70](v9, -1, -1);
  }

  result = sub_1DEF79E3C();
  *a2 = v4 == 0;
  return result;
}

uint64_t CustomizableRetryTimer.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t MessageType.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1DEF8DF28();
  MEMORY[0x1E12CB180](540697705, 0xE400000000000000);
  sub_1DEF8DF28();

  MEMORY[0x1E12CB180](v1, v2);
  MEMORY[0x1E12CB180](0x746E65696C63203BLL, 0xEC000000203A4449);
  MEMORY[0x1E12CB180](v3, v4);
  MEMORY[0x1E12CB180](540697705, 0xE400000000000000);

  MEMORY[0x1E12CB180](0xD000000000000013, 0x80000001DEF9C230);
  sub_1DEE266C0();
  return 0;
}

ReplicatorEngine::MessageType::ID __swiftcall MessageType.ID.init(id:clientID:)(Swift::String id, Swift::String clientID)
{
  *v2 = id;
  v2[1] = clientID;
  result.clientID = clientID;
  result.id = id;
  return result;
}

__n128 MessageType.init(id:protocolVersion:)@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  *a3 = *a1;
  *(a3 + 16) = v3;
  *(a3 + 24) = v4;
  result = *a2;
  *(a3 + 32) = *a2;
  return result;
}

uint64_t MessageType.ID.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MessageType.ID.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t MessageType.ID.clientID.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t MessageType.ID.clientID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t MessageType.ID.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1DEF8DF28();

  MEMORY[0x1E12CB180](v1, v2);
  MEMORY[0x1E12CB180](0x746E65696C63203BLL, 0xEC000000203A4449);
  MEMORY[0x1E12CB180](v3, v4);
  return 540697705;
}

uint64_t static MessageType.ID.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1DEF8E4E8(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1DEF8E4E8();
    }
  }

  return result;
}

uint64_t sub_1DEF7A844(uint64_t a1)
{
  v2 = sub_1DEE24D8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DEF7A880(uint64_t a1)
{
  v2 = sub_1DEE24D8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MessageType.ID.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE57C8, &qword_1DEF99A70);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v10[1] = *(v1 + 24);
  v10[2] = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DEE24D8C();
  sub_1DEF8E858();
  v12 = 0;
  v8 = v10[3];
  sub_1DEF8E278();
  if (!v8)
  {
    v11 = 1;
    sub_1DEF8E278();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t MessageType.ID.hash(into:)(uint64_t a1)
{
  sub_1DEF8D9B8();

  return sub_1DEF8D9B8();
}

uint64_t MessageType.ID.hashValue.getter()
{
  sub_1DEF8E7A8();
  sub_1DEF8D9B8();
  sub_1DEF8D9B8();
  return sub_1DEF8E7F8();
}

uint64_t sub_1DEF7AB08()
{
  sub_1DEF8E7A8();
  sub_1DEF8D9B8();
  sub_1DEF8D9B8();
  return sub_1DEF8E7F8();
}

uint64_t sub_1DEF7AB70(uint64_t a1)
{
  sub_1DEF8D9B8();

  return sub_1DEF8D9B8();
}

double MessageType.id.getter@<D0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;

  return result;
}

__n128 MessageType.id.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u64[1];

  result = v5;
  *v1 = v5;
  v1[1].n128_u64[0] = v2;
  v1[1].n128_u64[1] = v3;
  return result;
}

__n128 MessageType.protocolVersion.getter@<Q0>(__n128 *a1@<X8>)
{
  result = v1[2];
  *a1 = result;
  return result;
}

__n128 MessageType.protocolVersion.setter(__n128 *a1)
{
  result = *a1;
  v1[2] = *a1;
  return result;
}

uint64_t sub_1DEF7ACD0(uint64_t a1)
{
  v2 = sub_1DEE25008();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DEF7AD0C(uint64_t a1)
{
  v2 = sub_1DEE25008();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MessageType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE57D8, &qword_1DEF99A80);
  v18 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v13 - v4;
  v6 = *v1;
  v7 = v1[1];
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[5];
  v15 = v1[4];
  v16 = v8;
  v14 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DEE25008();

  sub_1DEF8E858();
  v19 = v6;
  v20 = v7;
  v21 = v16;
  v22 = v9;
  v23 = 0;
  sub_1DEEBBCE8();
  v11 = v17;
  sub_1DEF8E298();

  if (!v11)
  {
    v19 = v15;
    v20 = v14;
    v23 = 1;
    sub_1DEEBBB54();
    sub_1DEF8E298();
  }

  return (*(v18 + 8))(v5, v3);
}

uint64_t MessageType.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  sub_1DEF8D9B8();
  sub_1DEF8D9B8();
  MEMORY[0x1E12CBF90](v2);
  return MEMORY[0x1E12CBF90](v3);
}

uint64_t MessageType.hashValue.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_1DEF8E7A8();
  sub_1DEF8D9B8();
  sub_1DEF8D9B8();
  MEMORY[0x1E12CBF90](v1);
  MEMORY[0x1E12CBF90](v2);
  return sub_1DEF8E7F8();
}

double sub_1DEF7B01C@<D0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;

  return result;
}

uint64_t sub_1DEF7B07C()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_1DEF8E7A8();
  sub_1DEF8D9B8();
  sub_1DEF8D9B8();
  MEMORY[0x1E12CBF90](v1);
  MEMORY[0x1E12CBF90](v2);
  return sub_1DEF8E7F8();
}

uint64_t sub_1DEF7B110(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  sub_1DEF8D9B8();
  sub_1DEF8D9B8();
  MEMORY[0x1E12CBF90](v2);
  return MEMORY[0x1E12CBF90](v3);
}

uint64_t sub_1DEF7B174(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  sub_1DEF8E7A8();
  sub_1DEF8D9B8();
  sub_1DEF8D9B8();
  MEMORY[0x1E12CBF90](v2);
  MEMORY[0x1E12CBF90](v3);
  return sub_1DEF8E7F8();
}

BOOL _s16ReplicatorEngine11MessageTypeV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1DEF8E4E8() & 1) == 0 || (v2 != v6 || v3 != v7) && (sub_1DEF8E4E8() & 1) == 0)
  {
    return 0;
  }

  return v4 == v8 && v5 == v9;
}

unint64_t sub_1DEF7B2BC()
{
  result = qword_1ECDE3550;
  if (!qword_1ECDE3550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE3550);
  }

  return result;
}

unint64_t sub_1DEF7B318()
{
  result = qword_1ECDE57E8;
  if (!qword_1ECDE57E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE57E8);
  }

  return result;
}

uint64_t sub_1DEF7B36C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1DEF7B3B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DEF7B424()
{
  result = qword_1ECDE57F0;
  if (!qword_1ECDE57F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE57F0);
  }

  return result;
}

unint64_t sub_1DEF7B47C()
{
  result = qword_1ECDE57F8;
  if (!qword_1ECDE57F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE57F8);
  }

  return result;
}

unint64_t sub_1DEF7B4D4()
{
  result = qword_1ECDE3590;
  if (!qword_1ECDE3590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE3590);
  }

  return result;
}

unint64_t sub_1DEF7B52C()
{
  result = qword_1ECDE3598;
  if (!qword_1ECDE3598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE3598);
  }

  return result;
}

unint64_t sub_1DEF7B584()
{
  result = qword_1ECDE3578;
  if (!qword_1ECDE3578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE3578);
  }

  return result;
}

unint64_t sub_1DEF7B5DC()
{
  result = qword_1ECDE3580;
  if (!qword_1ECDE3580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE3580);
  }

  return result;
}

uint64_t RecordMetadata.copy(replacingID:clientDefinedID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v21 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4DC0, &qword_1DEF91640);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v20 - v8;
  v10 = sub_1DEF8D3F8();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, v4 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_version, v10, v12);
  v15 = *(v4 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_destination);
  sub_1DEECF850(v4 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_expiration, v9);
  v16 = *(v4 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_options);
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  v18 = 0;
  if (a3)
  {
    type metadata accessor for RecordMetadata.ClientDefinedID();
    v18 = swift_allocObject();
    *(v18 + 16) = v21;
    *(v18 + 24) = a3;
  }

  *(v17 + 24) = v18;
  (*(v11 + 32))(v17 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_version, v14, v10);
  *(v17 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_destination) = v15;
  sub_1DEF7D740(v9, v17 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_expiration);
  *(v17 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_options) = v16;

  return v17;
}

uint64_t RecordMetadata.clientDefinedID.getter()
{
  v1 = *(v0 + 24);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 16);

  return v2;
}

uint64_t RecordMetadata.__allocating_init(id:clientDefinedID:version:destination:expiration:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v14 = swift_allocObject();
  v15 = *a5;
  v16 = *a7;
  *(v14 + 16) = a1;
  v17 = 0;
  if (a3)
  {
    type metadata accessor for RecordMetadata.ClientDefinedID();
    v17 = swift_allocObject();
    *(v17 + 16) = a2;
    *(v17 + 24) = a3;
  }

  *(v14 + 24) = v17;
  v18 = OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_version;
  v19 = sub_1DEF8D3F8();
  (*(*(v19 - 8) + 32))(v14 + v18, a4, v19);
  *(v14 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_destination) = v15;
  sub_1DEF7D740(a6, v14 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_expiration);
  *(v14 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_options) = v16;
  return v14;
}

uint64_t RecordMetadata.copy(replacingDestination:)(uint64_t *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4DC0, &qword_1DEF91640);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v20 - v5;
  v7 = sub_1DEF8D3F8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v13 = *(v2 + 16);
  v12 = *(v2 + 24);
  if (v12)
  {
    v15 = *(v12 + 16);
    v14 = *(v12 + 24);
  }

  else
  {
    v15 = 0;
    v14 = 0;
  }

  (*(v8 + 16))(v10, v2 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_version, v7);
  sub_1DEECF850(v2 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_expiration, v6);
  v16 = *(v2 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_options);
  v17 = swift_allocObject();
  *(v17 + 16) = v13;
  v18 = 0;
  if (v14)
  {
    type metadata accessor for RecordMetadata.ClientDefinedID();
    v18 = swift_allocObject();
    *(v18 + 16) = v15;
    *(v18 + 24) = v14;
  }

  *(v17 + 24) = v18;
  (*(v8 + 32))(v17 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_version, v10, v7);
  *(v17 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_destination) = v11;
  sub_1DEF7D740(v6, v17 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_expiration);
  *(v17 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_options) = v16;

  return v17;
}

uint64_t RecordMetadata.copy(replacingVersion:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4DC0, &qword_1DEF91640);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v20 - v5;
  v7 = sub_1DEF8D3F8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v2 + 16);
  v11 = *(v2 + 24);
  if (v11)
  {
    v14 = *(v11 + 16);
    v13 = *(v11 + 24);
  }

  else
  {
    v14 = 0;
    v13 = 0;
  }

  (*(v8 + 16))(v10, a1, v7);
  v15 = *(v2 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_destination);
  sub_1DEECF850(v2 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_expiration, v6);
  v16 = *(v2 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_options);
  v17 = swift_allocObject();
  *(v17 + 16) = v12;
  v18 = 0;
  if (v13)
  {
    type metadata accessor for RecordMetadata.ClientDefinedID();
    v18 = swift_allocObject();
    *(v18 + 16) = v14;
    *(v18 + 24) = v13;
  }

  *(v17 + 24) = v18;
  (*(v8 + 32))(v17 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_version, v10, v7);
  *(v17 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_destination) = v15;
  sub_1DEF7D740(v6, v17 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_expiration);
  *(v17 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_options) = v16;

  return v17;
}

BOOL sub_1DEF7BE2C(uint64_t a1, uint64_t a2)
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

    sub_1DEF8D3F8();
    ++v2;
    sub_1DEF7F528(&qword_1ECDE40E0, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
  }

  while ((sub_1DEF8D908() & 1) == 0);
  return v3 != v4;
}

BOOL sub_1DEF7BF38(char a1, uint64_t a2)
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

  while (v6 != (a1 & 1));
  return v4 != 0;
}

uint64_t RecordMetadata.copy(replacingClientDefinedID:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v20 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4DC0, &qword_1DEF91640);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v19 - v6;
  v8 = sub_1DEF8D3F8();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v3 + 16);
  (*(v9 + 16))(v12, v3 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_version, v8, v10);
  v14 = *(v3 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_destination);
  sub_1DEECF850(v3 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_expiration, v7);
  v15 = *(v3 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_options);
  v16 = swift_allocObject();
  *(v16 + 16) = v13;
  v17 = 0;
  if (a2)
  {
    type metadata accessor for RecordMetadata.ClientDefinedID();
    v17 = swift_allocObject();
    *(v17 + 16) = v20;
    *(v17 + 24) = a2;
  }

  *(v16 + 24) = v17;
  (*(v9 + 32))(v16 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_version, v12, v8);
  *(v16 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_destination) = v14;
  sub_1DEF7D740(v7, v16 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_expiration);
  *(v16 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_options) = v15;

  return v16;
}

uint64_t RecordMetadata.isRelevantToZoneVersionCalculation(for:)(uint64_t a1)
{
  v3 = sub_1DEF8D3F8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Record.ID.Ownership(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DEF03DDC(*(v1 + 16) + OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership, v9);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    v10 = *(v1 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_destination);
    v11 = !v10 || sub_1DEF7BE2C(a1, v10);
  }

  else
  {
    (*(v4 + 32))(v6, v9, v3);
    v11 = sub_1DEF8D3A8();
    (*(v4 + 8))(v6, v3);
    v12 = *(v1 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_destination);
    if (v12)
    {
      sub_1DEF7BE2C(a1, v12);
    }
  }

  return v11 & 1;
}

BOOL RecordMetadata.matches(predicate:)(unsigned __int8 *a1)
{
  v3 = sub_1DEF8D3F8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Record.ID.Ownership(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v23 - v11;
  v13 = *a1;
  if (v13 != 2 && (v13 & 1) != 0)
  {
    sub_1DEF03DDC(*(v1 + 16) + OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership, &v23 - v11);
    if ((*(v4 + 48))(v12, 1, v3) != 1)
    {
      sub_1DEF03EA8(v12);
      return 0;
    }
  }

  v14 = a1[1];
  if (v14 != 2 && (v14 & 1) != 0)
  {
    sub_1DEF03DDC(*(v1 + 16) + OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership, v9);
    if ((*(v4 + 48))(v9, 1, v3) == 1)
    {
      return 0;
    }

    (*(v4 + 32))(v6, v9, v3);
    type metadata accessor for MetadataRecordPredicate(0);
    v15 = sub_1DEF8D3A8();
    (*(v4 + 8))(v6, v3);
    if ((v15 & 1) == 0)
    {
      return 0;
    }
  }

  v16 = a1[2];
  if (v16 != 2)
  {
    v17 = *(v1 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_destination);
    if (v17)
    {
      v18 = type metadata accessor for MetadataRecordPredicate(0);
      if ((sub_1DEF7BE2C(&a1[*(v18 + 32)], v17) ^ v16))
      {
        return 0;
      }
    }

    else if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  v19 = *(a1 + 1);
  if (!v19)
  {
    return 1;
  }

  v21 = sub_1DEF01AD4(v20, v19);

  return (v21 & 1) != 0;
}

uint64_t sub_1DEF7C628()
{
  v1 = *v0;
  sub_1DEF8E7A8();
  MEMORY[0x1E12CBF90](v1);
  return sub_1DEF8E7F8();
}

uint64_t sub_1DEF7C69C(uint64_t a1)
{
  v2 = *v1;
  sub_1DEF8E7A8();
  MEMORY[0x1E12CBF90](v2);
  return sub_1DEF8E7F8();
}

uint64_t sub_1DEF7C790()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1DEF7C7C8(uint64_t *a1, uint64_t *a2)
{
  if (*(*a1 + 16) == *(*a2 + 16) && *(*a1 + 24) == *(*a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_1DEF8E4E8();
  }
}

uint64_t sub_1DEF7C80C(uint64_t a1)
{
  sub_1DEF8E7A8();
  sub_1DEF8D9B8();
  return sub_1DEF8E7F8();
}

uint64_t RecordMetadata.version.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_version;
  v4 = sub_1DEF8D3F8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

double RecordMetadata.destination.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_destination);

  return result;
}

uint64_t RecordMetadata.description.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4DC0, &qword_1DEF91640);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v15 - v3;
  v5 = sub_1DEF8D378();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = 0;
  v17 = 0xE000000000000000;
  sub_1DEF8DF28();
  MEMORY[0x1E12CB180](540697705, 0xE400000000000000);
  v9 = Record.ID.description.getter();
  MEMORY[0x1E12CB180](v9);

  MEMORY[0x1E12CB180](0x6F6973726576203BLL, 0xEB00000000203A6ELL);
  sub_1DEF8D3F8();
  sub_1DEF7F528(&unk_1ECDE3620, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v10 = sub_1DEF8E2E8();
  MEMORY[0x1E12CB180](v10);

  MEMORY[0x1E12CB180](0x6E6974736564203BLL, 0xEF203A6E6F697461);
  v15[0] = *(v0 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_destination);
  sub_1DEF8E008();
  MEMORY[0x1E12CB180](0x6E6F6974706F203BLL, 0xEB00000000203A73);
  v15[0] = *(v0 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_options);
  v11 = sub_1DEF8D988();
  MEMORY[0x1E12CB180](v11);

  v12 = v16;
  sub_1DEECF850(v1 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_expiration, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1DEE171B4(v4, &qword_1ECDE4DC0, &qword_1DEF91640);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v15[0] = 0;
    v15[1] = 0xE000000000000000;
    sub_1DEF8DF28();

    strcpy(v15, "; expiration: ");
    HIBYTE(v15[1]) = -18;
    sub_1DEF7F528(&qword_1ECDE3A30, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
    v13 = sub_1DEF8E2E8();
    MEMORY[0x1E12CB180](v13);

    MEMORY[0x1E12CB180](59, 0xE100000000000000);
    MEMORY[0x1E12CB180](v15[0], v15[1]);

    (*(v6 + 8))(v8, v5);
    return v16;
  }

  return v12;
}

uint64_t RecordMetadata.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4DC0, &qword_1DEF91640);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v34 = &v32 - v4;
  v5 = sub_1DEF8D378();
  v35 = *(v5 - 8);
  v36 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v32 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DEF8D3F8();
  v33 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v32 - v11;
  v13 = type metadata accessor for Record.ID.Ownership(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v2 + 16);
  sub_1DEF8D9B8();
  sub_1DEF8D9B8();

  sub_1DEF8D9B8();

  v17 = v16 + OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership;
  v18 = v33;
  sub_1DEF03DDC(v17, v15);
  if ((*(v18 + 48))(v15, 1, v7) == 1)
  {
    MEMORY[0x1E12CBF60](0);
  }

  else
  {
    (*(v18 + 32))(v12, v15, v7);
    MEMORY[0x1E12CBF60](1);
    sub_1DEF7F528(&qword_1ECDE3638, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    sub_1DEF8D8C8();
    (*(v18 + 8))(v12, v7);
  }

  v19 = v18;
  if (*(v2 + 24))
  {

    sub_1DEF8D9B8();
  }

  sub_1DEF7F528(&qword_1ECDE3638, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1DEF8D8C8();
  v37 = v2;
  v20 = *(v2 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_destination);
  if (v20)
  {
    MEMORY[0x1E12CBF60](0);
    MEMORY[0x1E12CBF60](*(v20 + 16));
    v21 = *(v20 + 16);
    if (v21)
    {
      v23 = v19 + 16;
      v22 = *(v19 + 16);
      v24 = v20 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
      v25 = *(v19 + 72);
      do
      {
        v22(v9, v24, v7);
        sub_1DEF8D8C8();
        (*(v23 - 8))(v9, v7);
        v24 += v25;
        --v21;
      }

      while (v21);
    }
  }

  else
  {
    MEMORY[0x1E12CBF60](1);
  }

  v26 = v37;
  v27 = v34;
  sub_1DEECF850(v37 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_expiration, v34);
  v29 = v35;
  v28 = v36;
  if ((*(v35 + 48))(v27, 1, v36) == 1)
  {
    sub_1DEE171B4(v27, &qword_1ECDE4DC0, &qword_1DEF91640);
  }

  else
  {
    v30 = v32;
    (*(v29 + 32))(v32, v27, v28);
    sub_1DEF7F528(&qword_1ECDE42F8, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
    sub_1DEF8D8C8();
    (*(v29 + 8))(v30, v28);
  }

  return MEMORY[0x1E12CBF90](*(v26 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_options));
}

uint64_t RecordMetadata.__allocating_init(id:version:destination:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4DC0, &qword_1DEF91640);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v18 - v7;
  v9 = sub_1DEF8D3F8();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a3;
  (*(v10 + 16))(v13, a2, v9, v11);
  v15 = sub_1DEF8D378();
  (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
  (*(v10 + 8))(a2, v9);
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = 0;
  (*(v10 + 32))(v16 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_version, v13, v9);
  *(v16 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_destination) = v14;
  sub_1DEF7D740(v8, v16 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_expiration);
  *(v16 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_options) = 0;
  return v16;
}

uint64_t RecordMetadata.__allocating_init(id:clientDefinedID:version:destination:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4DC0, &qword_1DEF91640);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v23 - v11;
  v13 = sub_1DEF8D3F8();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a5;
  (*(v14 + 16))(v17, a4, v13, v15);
  v19 = sub_1DEF8D378();
  (*(*(v19 - 8) + 56))(v12, 1, 1, v19);
  (*(v14 + 8))(a4, v13);
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  v21 = 0;
  if (a3)
  {
    type metadata accessor for RecordMetadata.ClientDefinedID();
    v21 = swift_allocObject();
    *(v21 + 16) = a2;
    *(v21 + 24) = a3;
  }

  *(v20 + 24) = v21;
  (*(v14 + 32))(v20 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_version, v17, v13);
  *(v20 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_destination) = v18;
  sub_1DEF7D740(v12, v20 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_expiration);
  *(v20 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_options) = 0;
  return v20;
}

uint64_t RecordMetadata.init(id:clientDefinedID:version:destination:expiration:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v10 = *a5;
  v11 = *a7;
  *(v7 + 16) = a1;
  if (a3)
  {
    type metadata accessor for RecordMetadata.ClientDefinedID();
    v14 = swift_allocObject();
    *(v14 + 16) = a2;
    *(v14 + 24) = a3;
  }

  else
  {
    v14 = 0;
  }

  *(v7 + 24) = v14;
  v15 = OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_version;
  v16 = sub_1DEF8D3F8();
  (*(*(v16 - 8) + 32))(v7 + v15, a4, v16);
  *(v7 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_destination) = v10;
  sub_1DEF7D740(a6, v7 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_expiration);
  *(v7 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_options) = v11;
  return v7;
}

uint64_t sub_1DEF7D740(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4DC0, &qword_1DEF91640);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t RecordMetadata.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  RecordMetadata.init(from:)(a1);
  return v2;
}

uint64_t *RecordMetadata.init(from:)(void *a1)
{
  v3 = v1;
  v5 = *v1;
  v36 = v2;
  v37 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4DC0, &qword_1DEF91640);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v35 = &v30 - v7;
  v8 = sub_1DEF8D3F8();
  v33 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE5800, &qword_1DEF99F58);
  v34 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v30 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DEF7EDE0();
  v14 = v36;
  sub_1DEF8E848();
  if (v14)
  {
    swift_deallocPartialClassInstance();
    v26 = a1;
  }

  else
  {
    v32 = v10;
    v16 = v34;
    v15 = v35;
    v36 = a1;
    type metadata accessor for Record.ID(0);
    v40 = 0;
    sub_1DEF7F528(&qword_1ECDE52C8, type metadata accessor for Record.ID, &protocol conformance descriptor for Record.ID);
    sub_1DEF8E1F8();
    v17 = v11;
    v1[2] = v38;
    LOBYTE(v38) = 1;
    v18 = v13;
    v19 = sub_1DEF8E198();
    v21 = v16;
    v31 = v18;
    if (v20)
    {
      v22 = v19;
      v23 = v20;
      type metadata accessor for RecordMetadata.ClientDefinedID();
      v24 = swift_allocObject();
      *(v24 + 16) = v22;
      *(v24 + 24) = v23;
      v21 = v16;
    }

    else
    {
      v24 = 0;
    }

    v3[3] = v24;
    LOBYTE(v38) = 2;
    sub_1DEF7F528(&qword_1ECDE3630, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
    v25 = v32;
    sub_1DEF8E1F8();
    (*(v33 + 32))(v3 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_version, v25, v8);
    v40 = 3;
    sub_1DEF7EE34();
    v35 = 0;
    sub_1DEF8E1F8();
    *(v3 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_destination) = v38;
    sub_1DEF8D378();
    LOBYTE(v38) = 4;
    sub_1DEF7F528(&qword_1ECDE5818, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
    sub_1DEF8E1B8();
    sub_1DEF7D740(v15, v3 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_expiration);
    v40 = 5;
    sub_1DEF7EE88();
    sub_1DEF8E1B8();
    v28 = (v21 + 8);
    if (v39 == 1)
    {
      (*v28)(v31, v17);
      v29 = 0;
    }

    else
    {
      v29 = v38;
      (*v28)(v31, v17);
    }

    v26 = v36;
    *(v3 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_options) = v29;
  }

  __swift_destroy_boxed_opaque_existential_1(v26);
  return v3;
}

uint64_t RecordMetadata.deinit()
{

  v1 = OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_version;
  v2 = sub_1DEF8D3F8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1DEE171B4(v0 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_expiration, &qword_1ECDE4DC0, &qword_1DEF91640);
  return v0;
}

uint64_t RecordMetadata.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_version;
  v2 = sub_1DEF8D3F8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1DEE171B4(v0 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_expiration, &qword_1ECDE4DC0, &qword_1DEF91640);

  return swift_deallocClassInstance();
}

uint64_t RecordMetadata.hashValue.getter()
{
  sub_1DEF8E7A8();
  RecordMetadata.hash(into:)(v1);
  return sub_1DEF8E7F8();
}

uint64_t sub_1DEF7E070()
{
  sub_1DEF8E7A8();
  RecordMetadata.hash(into:)(v1);
  return sub_1DEF8E7F8();
}

uint64_t sub_1DEF7E0D8(uint64_t a1)
{
  sub_1DEF8E7A8();
  RecordMetadata.hash(into:)(v2);
  return sub_1DEF8E7F8();
}

ReplicatorEngine::RecordMetadata::CodingKeys_optional __swiftcall RecordMetadata.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DEF8E168();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

ReplicatorEngine::RecordMetadata::CodingKeys_optional __swiftcall RecordMetadata.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  v2 = v1;
  result.value = RecordMetadata.CodingKeys.init(rawValue:)(stringValue).value;
  *v2 = v4;
  return result;
}

uint64_t RecordMetadata.CodingKeys.stringValue.getter()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x74616E6974736564;
  v4 = 0x6974617269707865;
  if (v1 != 4)
  {
    v4 = 0x736E6F6974706FLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6544746E65696C63;
  if (v1 != 1)
  {
    v5 = 0x6E6F6973726576;
  }

  if (*v0)
  {
    v2 = v5;
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

uint64_t sub_1DEF7E2C0(uint64_t a1)
{
  sub_1DEF8D9B8();
}

void sub_1DEF7E3CC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0xEB000000006E6F69;
  v6 = 0x74616E6974736564;
  v7 = 0xEA00000000006E6FLL;
  v8 = 0x6974617269707865;
  if (v2 != 4)
  {
    v8 = 0x736E6F6974706FLL;
    v7 = 0xE700000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEF444964656E6966;
  v10 = 0x6544746E65696C63;
  if (v2 != 1)
  {
    v10 = 0x6E6F6973726576;
    v9 = 0xE700000000000000;
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

uint64_t sub_1DEF7E494()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x74616E6974736564;
  v4 = 0x6974617269707865;
  if (v1 != 4)
  {
    v4 = 0x736E6F6974706FLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6544746E65696C63;
  if (v1 != 1)
  {
    v5 = 0x6E6F6973726576;
  }

  if (*v0)
  {
    v2 = v5;
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

ReplicatorEngine::RecordMetadata::CodingKeys_optional sub_1DEF7E558@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result.value = RecordMetadata.CodingKeys.init(rawValue:)(*&a1).value;
  *a2 = v5;
  return result;
}

uint64_t sub_1DEF7E590(uint64_t a1)
{
  v2 = sub_1DEF7EDE0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DEF7E5CC(uint64_t a1)
{
  v2 = sub_1DEF7EDE0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RecordMetadata.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE5828, &qword_1DEF99F60);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DEF7EDE0();
  sub_1DEF8E858();
  v11 = *(v3 + 16);
  HIBYTE(v10) = 0;
  type metadata accessor for Record.ID(0);
  sub_1DEF7F528(&qword_1ECDE5480, type metadata accessor for Record.ID, &protocol conformance descriptor for Record.ID);
  sub_1DEF8E298();
  if (!v2)
  {
    if (*(v3 + 24))
    {
      LOBYTE(v11) = 1;

      sub_1DEF8E278();
    }

    LOBYTE(v11) = 2;
    sub_1DEF8D3F8();
    sub_1DEF7F528(&qword_1ECDE3640, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
    sub_1DEF8E298();
    v11 = *(v3 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_destination);
    HIBYTE(v10) = 3;
    sub_1DEF7EEDC();

    sub_1DEF8E298();

    LOBYTE(v11) = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4DC0, &qword_1DEF91640);
    sub_1DEF7EF30();
    sub_1DEF8E298();
    v11 = *(v3 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_options);
    HIBYTE(v10) = 5;
    sub_1DEF7EFE4();
    sub_1DEF8E298();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t *sub_1DEF7E974@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = RecordMetadata.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

BOOL _s16ReplicatorEngine14RecordMetadataC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DEF8D378();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4DC0, &qword_1DEF91640);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3DE8, &unk_1DEF9A500);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v24[-v12];
  if ((_s16ReplicatorEngine6RecordV2IDC2eeoiySbAE_AEtFZ_0(*(a1 + 16), *(a2 + 16)) & 1) == 0)
  {
    return 0;
  }

  v14 = *(a1 + 24);
  v15 = *(a2 + 24);
  if (v14)
  {
    if (!v15 || (*(v14 + 16) != *(v15 + 16) || *(v14 + 24) != *(v15 + 24)) && (sub_1DEF8E4E8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v15)
  {
    return 0;
  }

  if ((sub_1DEF8D3A8() & 1) == 0)
  {
    return 0;
  }

  v16 = *(a2 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_destination);
  if (!*(a1 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_destination))
  {

    if (v16)
    {
      return 0;
    }

    goto LABEL_16;
  }

  if (!v16)
  {

    return 0;
  }

  v25 = sub_1DEE4DFB8(v17, v16);

  if (v25)
  {
LABEL_16:
    v18 = OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_expiration;
    v19 = *(v11 + 48);
    sub_1DEECF850(a1 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_expiration, v13);
    sub_1DEECF850(a2 + v18, &v13[v19]);
    v20 = *(v5 + 48);
    if (v20(v13, 1, v4) == 1)
    {
      if (v20(&v13[v19], 1, v4) == 1)
      {
        sub_1DEE171B4(v13, &qword_1ECDE4DC0, &qword_1DEF91640);
        return *(a1 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_options) == *(a2 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_options);
      }

      goto LABEL_22;
    }

    sub_1DEECF850(v13, v10);
    if (v20(&v13[v19], 1, v4) == 1)
    {
      (*(v5 + 8))(v10, v4);
LABEL_22:
      sub_1DEE171B4(v13, &qword_1ECDE3DE8, &unk_1DEF9A500);
      return 0;
    }

    (*(v5 + 32))(v7, &v13[v19], v4);
    sub_1DEF7F528(&qword_1ECDE3DF0, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
    v22 = sub_1DEF8D908();
    v23 = *(v5 + 8);
    v23(v7, v4);
    v23(v10, v4);
    sub_1DEE171B4(v13, &qword_1ECDE4DC0, &qword_1DEF91640);
    if (v22)
    {
      return *(a1 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_options) == *(a2 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_options);
    }
  }

  return 0;
}

unint64_t sub_1DEF7EDE0()
{
  result = qword_1ECDE5808;
  if (!qword_1ECDE5808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5808);
  }

  return result;
}

unint64_t sub_1DEF7EE34()
{
  result = qword_1ECDE5810;
  if (!qword_1ECDE5810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5810);
  }

  return result;
}

unint64_t sub_1DEF7EE88()
{
  result = qword_1ECDE5820;
  if (!qword_1ECDE5820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5820);
  }

  return result;
}

unint64_t sub_1DEF7EEDC()
{
  result = qword_1ECDE5830;
  if (!qword_1ECDE5830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5830);
  }

  return result;
}

unint64_t sub_1DEF7EF30()
{
  result = qword_1ECDE5838;
  if (!qword_1ECDE5838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECDE4DC0, &qword_1DEF91640);
    sub_1DEF7F528(&qword_1ECDE5840, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5838);
  }

  return result;
}

unint64_t sub_1DEF7EFE4()
{
  result = qword_1ECDE5848;
  if (!qword_1ECDE5848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5848);
  }

  return result;
}

unint64_t sub_1DEF7F03C()
{
  result = qword_1ECDE5850;
  if (!qword_1ECDE5850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5850);
  }

  return result;
}

unint64_t sub_1DEF7F094()
{
  result = qword_1ECDE5858;
  if (!qword_1ECDE5858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5858);
  }

  return result;
}

unint64_t sub_1DEF7F0E8()
{
  result = qword_1ECDE34A8;
  if (!qword_1ECDE34A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE34A8);
  }

  return result;
}

unint64_t sub_1DEF7F140()
{
  result = qword_1ECDE34A0;
  if (!qword_1ECDE34A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE34A0);
  }

  return result;
}

uint64_t type metadata accessor for RecordMetadata(uint64_t a1)
{
  result = qword_1ECDE36F0;
  if (!qword_1ECDE36F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1DEF7F274()
{
  result = qword_1ECDE5868;
  if (!qword_1ECDE5868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5868);
  }

  return result;
}

unint64_t sub_1DEF7F2CC()
{
  result = qword_1ECDE5870;
  if (!qword_1ECDE5870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5870);
  }

  return result;
}

unint64_t sub_1DEF7F324()
{
  result = qword_1ECDE5878;
  if (!qword_1ECDE5878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5878);
  }

  return result;
}

void sub_1DEF7F380(uint64_t a1)
{
  sub_1DEF8D3F8();
  if (v1 <= 0x3F)
  {
    sub_1DEECFC40(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1DEF7F528(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DEF7F578(uint64_t a1)
{
  v25[5] = *MEMORY[0x1E69E9840];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4108, &unk_1DEF95370);
  MEMORY[0x1EEE9AC00](v2);
  sub_1DEF80438(a1, &v21[-v3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE5888, &qword_1DEF9A520);
  if (!swift_dynamicCast())
  {
    v24 = 0;
    memset(v23, 0, sizeof(v23));
    v4 = sub_1DEE171B4(v23, &qword_1ECDE5890, &unk_1DEF9A528);
    v23[0] = xmmword_1DEF95880;
    MEMORY[0x1EEE9AC00](v4);
    *&v21[-16] = a1;
    v7 = sub_1DEF2B76C(sub_1DEF804A8, &v21[-32]);
    v9 = v8;
    v10 = v5;
    v11 = *(&v23[0] + 1) >> 62;
    if ((*(&v23[0] + 1) >> 62) > 1)
    {
      if (v11 != 2)
      {
        if (!v6)
        {
          goto LABEL_18;
        }

        v16 = 0;
LABEL_30:
        if (v16 < v6)
        {
          goto LABEL_36;
        }

        sub_1DEF8D248();
LABEL_32:

        goto LABEL_33;
      }

      v13 = *(*&v23[0] + 16);
      v12 = *(*&v23[0] + 24);
      v14 = __OFSUB__(v12, v13);
      v15 = v12 - v13;
      if (v14)
      {
        goto LABEL_37;
      }

      if (v6 != v15)
      {
        goto LABEL_13;
      }
    }

    else
    {
      if (!v11)
      {
        if (v6 == BYTE14(v23[0]))
        {
          goto LABEL_18;
        }

        goto LABEL_13;
      }

      if (__OFSUB__(DWORD1(v23[0]), v23[0]))
      {
        goto LABEL_38;
      }

      if (v6 != DWORD1(v23[0]) - LODWORD(v23[0]))
      {
LABEL_13:
        if (v11 == 2)
        {
          v16 = *(*&v23[0] + 24);
        }

        else if (v11 == 1)
        {
          v16 = *&v23[0] >> 32;
        }

        else
        {
          v16 = BYTE14(v23[0]);
        }

        goto LABEL_30;
      }
    }

LABEL_18:
    memset(v25, 0, 15);
    if (v5)
    {
      LOBYTE(v17) = 0;
      do
      {
        v18 = *(v7 + 2);
        if (v9 == v18)
        {
          break;
        }

        if (v9 >= v18)
        {
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
        }

        *(v25 + v17) = v7[v9 + 32];
        v17 = v17 + 1;
        if ((v17 >> 8))
        {
          goto LABEL_35;
        }

        if (v17 == 14)
        {
          *&v22 = v25[0];
          *(&v22 + 6) = *(v25 + 6);
          sub_1DEF8D258();
          LOBYTE(v17) = 0;
        }

        ++v9;
        --v10;
      }

      while (v10);
      if (v17)
      {
        *&v22 = v25[0];
        *(&v22 + 6) = *(v25 + 6);
        sub_1DEF8D258();
      }
    }

    goto LABEL_32;
  }

  sub_1DEE2F1AC(v23, v25);
  __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  sub_1DEF8D0A8();
  v23[0] = v22;
  __swift_destroy_boxed_opaque_existential_1(v25);
LABEL_33:
  v19 = v23[0];
  sub_1DEE1BFF4(*&v23[0], *(&v23[0] + 1));
  sub_1DEE171B4(a1, &qword_1ECDE4108, &unk_1DEF95370);
  sub_1DEE1BFA0(v19, *(&v19 + 1));
  return v19;
}

uint64_t static UniformHasher.hash<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4108, &unk_1DEF95370);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v23 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3E80, &unk_1DEF90970);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v23 - v13;
  v15 = type metadata accessor for UniformHasher(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s16ReplicatorEngine13UniformHasherVACycfC_0();
  UniformHasher.combine<A>(_:)(a1, a2, a3);
  if (v4)
  {
    return sub_1DEF8000C(v17);
  }

  sub_1DEF8D7F8();
  *&v11[*(v9 + 36)] = 16;
  v19 = sub_1DEF7F578(v11);
  sub_1DEE3DF08(v19, v20, v14);
  v21 = sub_1DEF8D3F8();
  v22 = *(v21 - 8);
  result = (*(v22 + 48))(v14, 1, v21);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1DEF8000C(v17);
    return (*(v22 + 32))(a4, v14, v21);
  }

  return result;
}

void UniformHasher.combine<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = MEMORY[0x1E12CC160]();
  sub_1DEF7FBBC(a1, v3, a2, a3, &v8);
  objc_autoreleasePoolPop(v7);
}

uint64_t sub_1DEF7FBBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v17[3] = a3;
  v17[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v17);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  type metadata accessor for PropertyListTypeEncoder();
  inited = swift_initStackObject();
  *(inited + 16) = 0;
  *(inited + 24) = 1;
  v12 = sub_1DEE29274(v17);
  if (v5)
  {
    result = __swift_destroy_boxed_opaque_existential_1(v17);
    *a5 = v5;
  }

  else
  {
    v13 = sub_1DEE1187C(v12);
    v15 = v14;
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v17);
    sub_1DEE1BFF4(v13, v15);
    sub_1DEF11C10(v13, v15, a2);
    sub_1DEE1BFA0(v13, v15);
    return sub_1DEE1BFA0(v13, v15);
  }

  return result;
}

void UniformHasher.combine<A>(_:)(uint64_t a1, uint64_t a2)
{
  v5 = MEMORY[0x1E12CC160]();
  sub_1DEF7FD68(a1, v2, a2, &v6);
  objc_autoreleasePoolPop(v5);
}

uint64_t sub_1DEF7FD68(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = [objc_allocWithZone(STRPPropertyListTypeEncoder) init];
  v9 = [v8 encodeRootObject_];

  v10 = sub_1DEE1187C(v9);
  v12 = v11;
  result = swift_unknownObjectRelease();
  if (v4)
  {
    *a4 = v4;
  }

  else
  {
    sub_1DEE1BFF4(v10, v12);
    sub_1DEF11C10(v10, v12, a2);
    sub_1DEE1BFA0(v10, v12);
    return sub_1DEE1BFA0(v10, v12);
  }

  return result;
}

uint64_t UniformHasher.finalize()@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4108, &unk_1DEF95370);
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3E80, &unk_1DEF90970);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - v7;
  sub_1DEF8D7F8();
  *&v5[*(v3 + 44)] = 16;
  v9 = sub_1DEF7F578(v5);
  sub_1DEE3DF08(v9, v10, v8);
  v11 = sub_1DEF8D3F8();
  v12 = *(v11 - 8);
  result = (*(v12 + 48))(v8, 1, v11);
  if (result != 1)
  {
    return (*(v12 + 32))(a1, v8, v11);
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for UniformHasher(uint64_t a1)
{
  result = qword_1ED786020;
  if (!qword_1ED786020)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DEF8000C(uint64_t a1)
{
  v2 = type metadata accessor for UniformHasher(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static UniformHasher.hash<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4108, &unk_1DEF95370);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3E80, &unk_1DEF90970);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v21 - v11;
  v13 = type metadata accessor for UniformHasher(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s16ReplicatorEngine13UniformHasherVACycfC_0();
  UniformHasher.combine<A>(_:)(a1, a2);
  if (v3)
  {
    return sub_1DEF8000C(v15);
  }

  sub_1DEF8D7F8();
  *&v9[*(v7 + 36)] = 16;
  v17 = sub_1DEF7F578(v9);
  sub_1DEE3DF08(v17, v18, v12);
  v19 = sub_1DEF8D3F8();
  v20 = *(v19 - 8);
  result = (*(v20 + 48))(v12, 1, v19);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1DEF8000C(v15);
    return (*(v20 + 32))(a3, v12, v19);
  }

  return result;
}

uint64_t sub_1DEF80294(uint64_t a1)
{
  result = sub_1DEF8D818();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void *sub_1DEF80300(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = (a1)(&v6, 0, 0, 0, a4);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

__n128 sub_1DEF8036C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4108, &unk_1DEF95370);
  MEMORY[0x1EEE9AC00](v8 - 8);
  sub_1DEF80438(a3, &v12 - v9);
  v10 = sub_1DEF2D660(&v13, a1, a2);
  result = v14;
  *a4 = v13;
  *(a4 + 8) = result;
  *(a4 + 24) = v10;
  return result;
}

uint64_t sub_1DEF80438(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4108, &unk_1DEF95370);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_1DEF804A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v9[2] = *(v3 + 16);
  result = sub_1DEF80300(sub_1DEF80504, v9, a1, a2);
  *a3 = result;
  a3[1] = v6;
  a3[2] = v7;
  a3[3] = v8;
  return result;
}

ReplicatorEngine::MessageSendOptions __swiftcall MessageSendOptions.init(timeout:retries:)(Swift::Double timeout, Swift::Int retries)
{
  *v2 = timeout;
  *(v2 + 8) = retries;
  result.timeout = timeout;
  result.retries = retries;
  return result;
}

uint64_t IncomingSyncServiceMessage.init(message:url:deviceID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for IncomingSyncServiceMessage(0);
  v11 = *(v10 + 20);
  v12 = sub_1DEF8D1E8();
  (*(*(v12 - 8) + 56))(a5 + v11, 1, 1, v12);
  sub_1DEEE9E30(a1, a5);
  result = sub_1DEED4690(a2, a5 + v11);
  v14 = (a5 + *(v10 + 24));
  *v14 = a3;
  v14[1] = a4;
  return result;
}

uint64_t type metadata accessor for IncomingSyncServiceMessage(uint64_t a1)
{
  result = qword_1ECDE58A0;
  if (!qword_1ECDE58A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DEF8064C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Message(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t IncomingSyncServiceMessage.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for IncomingSyncServiceMessage(0) + 20);

  return sub_1DEE2C3D8(v3, a1);
}

uint64_t IncomingSyncServiceMessage.url.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for IncomingSyncServiceMessage(0) + 20);

  return sub_1DEED4690(a1, v3);
}

uint64_t IncomingSyncServiceMessage.deviceID.getter()
{
  v1 = *(v0 + *(type metadata accessor for IncomingSyncServiceMessage(0) + 24));

  return v1;
}

uint64_t IncomingSyncServiceMessage.deviceID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for IncomingSyncServiceMessage(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t FileCompressionType.hashValue.getter()
{
  v1 = *v0;
  sub_1DEF8E7A8();
  MEMORY[0x1E12CBF60](v1);
  return sub_1DEF8E7F8();
}

unint64_t sub_1DEF80900()
{
  result = qword_1ECDE5898;
  if (!qword_1ECDE5898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5898);
  }

  return result;
}

void sub_1DEF809CC(uint64_t a1)
{
  type metadata accessor for Message(319);
  if (v1 <= 0x3F)
  {
    sub_1DEED9C80(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t dispatch thunk of MetadataPersisting.metadata(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 64))(a1, a2);
}

{
  return (*(a3 + 72))(a1, a2);
}

uint64_t dispatch thunk of MutableMetadataPersisting.update(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 112))(a1, a2);
}

{
  return (*(a3 + 128))(a1, a2);
}

uint64_t PropertyListTypeEncoder.__allocating_init(version:)(uint64_t a1, char a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2 & 1;
  return result;
}

uint64_t PropertyListTypeEncoder.init(version:)(uint64_t a1, char a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2 & 1;
  return v2;
}

uint64_t sub_1DEF80E2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v8 = *v5;
  v9 = MEMORY[0x1EEE9AC00](a1);
  (*(v11 + 16))(&v18[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2, v9);
  sub_1DEE29204();
  if (swift_dynamicCast())
  {
    v12 = v18[0];
  }

  else
  {
    v13 = v5[3];
    v14 = *(v5 + 32);
    v15 = swift_allocObject();
    *(v15 + 16) = 0;
    *(v15 + 24) = v13;
    *(v15 + 32) = v14;
    v18[3] = v8;
    v18[4] = sub_1DEE2961C(&qword_1ED7863D0, &unk_1DEF9A808);
    v18[0] = v15;

    sub_1DEF8D8A8();
    if (v4)
    {

      return __swift_destroy_boxed_opaque_existential_1(v18);
    }

    __swift_destroy_boxed_opaque_existential_1(v18);
    v12 = *(v15 + 16);
    swift_unknownObjectRetain();
  }

  v5[2] = v12;
  return swift_unknownObjectRelease();
}

uint64_t sub_1DEF8102C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = [objc_allocWithZone(MEMORY[0x1E695DF70]) init];
  *(v3 + 16) = v4;
  v5 = v4;
  swift_unknownObjectRelease();
  v6 = *(v3 + 24);
  LOBYTE(v3) = *(v3 + 32);
  a1[3] = &type metadata for PropertyListTypeEncoder.UnkeyedEncoder;
  a1[4] = sub_1DEF815D4();
  result = swift_allocObject();
  *a1 = result;
  *(result + 16) = MEMORY[0x1E69E7CC0];
  *(result + 24) = v5;
  *(result + 32) = v6;
  *(result + 40) = v3;
  return result;
}

uint64_t sub_1DEF810D0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *v2;
  a2[3] = a1;
  a2[4] = sub_1DEE2961C(&qword_1ED7863C8, &unk_1DEF9A750);
  *a2 = v4;
}

uint64_t sub_1DEF81134()
{
  v1 = *v0;
  *(v1 + 16) = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  return swift_unknownObjectRelease();
}

uint64_t sub_1DEF81184()
{
  v1 = *v0;
  *(v1 + 16) = sub_1DEF8DB38();
  return swift_unknownObjectRelease();
}

uint64_t sub_1DEF811C0(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 16) = sub_1DEF8D918();
  return swift_unknownObjectRelease();
}

uint64_t sub_1DEF811FC()
{
  v1 = *v0;
  *(v1 + 16) = sub_1DEF8DB98();
  return swift_unknownObjectRelease();
}

uint64_t sub_1DEF81238()
{
  v1 = *v0;
  *(v1 + 16) = sub_1DEF8DBD8();
  return swift_unknownObjectRelease();
}

uint64_t sub_1DEF813C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v5 = *v4;
  *(v5 + 16) = a4(a1, a2, a3);
  return swift_unknownObjectRelease();
}

uint64_t sub_1DEF8142C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v5 = *v4;
  *(v5 + 16) = a4(a1, a2, a3);
  return swift_unknownObjectRelease();
}

uint64_t sub_1DEF81498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v5 = *v4;
  *(v5 + 16) = a4(a1, a2, a3);
  return swift_unknownObjectRelease();
}

uint64_t sub_1DEF81504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v5 = *v4;
  *(v5 + 16) = a4(a1, a2, a3);
  return swift_unknownObjectRelease();
}

uint64_t sub_1DEF81590(uint64_t a1)
{
  result = sub_1DEE2961C(&qword_1ED7863D0, &unk_1DEF9A808);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1DEF815D4()
{
  result = qword_1ED786080;
  if (!qword_1ED786080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED786080);
  }

  return result;
}

void sub_1DEF81628(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  sub_1DEE28720(v4, a1, a2);
}

void sub_1DEF81688(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1DEF8DB38();
  sub_1DEE28720(v5, a2, a3);
}

void sub_1DEF816D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1DEF8D918();
  sub_1DEE28720(v6, a3, a4);
}

void sub_1DEF81720(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DEF8DB98();
  sub_1DEE28720(v4, a1, a2);
}

void sub_1DEF8176C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DEF8DBD8();
  sub_1DEE28720(v4, a1, a2);
}

void sub_1DEF817B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1DEF8DC28();
  sub_1DEE28720(v5, a2, a3);
}

void sub_1DEF81804(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1DEF8E6C8();
  sub_1DEE28720(v5, a2, a3);
}

void sub_1DEF81850(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1DEF8E748();
  sub_1DEE28720(v5, a2, a3);
}

void sub_1DEF8189C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1DEF8E758();
  sub_1DEE28720(v5, a2, a3);
}

void sub_1DEF818E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1DEF8E768();
  sub_1DEE28720(v5, a2, a3);
}

void sub_1DEF81934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1DEF8DDD8();
  sub_1DEE28720(v5, a2, a3);
}

void sub_1DEF81980(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1DEF8E788();
  sub_1DEE28720(v5, a2, a3);
}

void sub_1DEF819CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1DEF8E818();
  sub_1DEE28720(v5, a2, a3);
}

void sub_1DEF81A18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1DEF8E828();
  sub_1DEE28720(v5, a2, a3);
}

void sub_1DEF81A64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1DEF8E838();
  sub_1DEE28720(v5, a2, a3);
}

void sub_1DEF81AB0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v8 = [objc_allocWithZone(MEMORY[0x1E695DF70]) init];
  sub_1DEE28720(v8, a1, a2);
  v9 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4FC0, &unk_1DEF975B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DEF907F0;
  v11 = *(a2 + 16);
  *(inited + 56) = v11;
  *(inited + 64) = *(a2 + 24);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 32));
  (*(*(v11 - 8) + 16))(boxed_opaque_existential_1, a1, v11);
  v13 = v8;

  sub_1DEE2262C(inited);
  v14 = v9;
  v15 = v4[2];
  LOBYTE(v4) = *(v4 + 24);
  a3[3] = &type metadata for PropertyListTypeEncoder.UnkeyedEncoder;
  a3[4] = sub_1DEF815D4();
  v16 = swift_allocObject();
  *a3 = v16;

  *(v16 + 16) = v14;
  *(v16 + 24) = v13;
  *(v16 + 32) = v15;
  *(v16 + 40) = v4;
}

uint64_t sub_1DEF82188(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(a2 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = *(v8 + 16);
  v11(&v19[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2, v9);
  sub_1DEE29204();
  if (swift_dynamicCast())
  {
    v12 = v19[0];
  }

  else
  {
    v13 = *(v3 + 16);
    v20 = v3;
    v14 = *(v3 + 24);
    type metadata accessor for PropertyListTypeEncoder();
    inited = swift_initStackObject();
    *(inited + 16) = v13;
    *(inited + 24) = v14;
    v19[3] = a2;
    v19[4] = a3;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
    (v11)(boxed_opaque_existential_1, a1, a2);
    v12 = sub_1DEE29274(v19);
    result = __swift_destroy_boxed_opaque_existential_1(v19);
    if (v4)
    {
      return result;
    }

    v3 = v20;
  }

  [*(v3 + 8) addObject_];
  return swift_unknownObjectRelease();
}

uint64_t sub_1DEF82318(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*(v3 + 8) addObject_];
  type metadata accessor for PropertyListTypeEncoder.KeyedEncoder(0, a2, a3, v6);

  swift_getWitnessTable();
  return sub_1DEF8E2C8();
}

void sub_1DEF82400()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  [*(v0 + 8) addObject_];
}

void sub_1DEF82458()
{
  v1 = sub_1DEF8DB38();
  [*(v0 + 8) addObject_];
}

void sub_1DEF8249C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1DEF8D918();
  [*(v2 + 8) addObject_];
}

void sub_1DEF824E0()
{
  v1 = sub_1DEF8DB98();
  [*(v0 + 8) addObject_];
}

void sub_1DEF82524()
{
  v1 = sub_1DEF8DBD8();
  [*(v0 + 8) addObject_];
}

void sub_1DEF826B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v5 = a4(a1, a2, a3);
  [*(v4 + 8) addObject_];
}

void sub_1DEF82728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v5 = a4(a1, a2, a3);
  [*(v4 + 8) addObject_];
}

void sub_1DEF8279C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v5 = a4(a1, a2, a3);
  [*(v4 + 8) addObject_];
}

void sub_1DEF82810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v5 = a4(a1, a2, a3);
  [*(v4 + 8) addObject_];
}

double sub_1DEF82BAC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = [objc_allocWithZone(MEMORY[0x1E695DF70]) init];
  [v3[1] addObject_];
  v8 = *v3;
  v9 = v3[2];
  v10 = *(v3 + 24);
  a3[3] = a1;
  a3[4] = a2;
  v11 = swift_allocObject();
  *a3 = v11;
  *(v11 + 16) = v8;
  *(v11 + 24) = v7;
  *(v11 + 32) = v9;
  *(v11 + 40) = v10;

  return result;
}

uint64_t sub_1DEF82CC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1DEF82D04(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_1DEF82D4C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void __swiftcall PairedDevice.init(identifier:name:deviceClass:)(ReplicatorEngine::PairedDevice *__return_ptr retstr, Swift::String identifier, Swift::String name, ReplicatorEngine::PairedDevice::PairedDeviceClass deviceClass)
{
  v4 = *deviceClass;
  retstr->identifier = identifier;
  retstr->name = name;
  retstr->deviceClass = v4;
}

uint64_t PairedDevice.PairedDeviceClass.description.getter()
{
  v1 = *v0;
  v2 = 0x64696C61766E69;
  v3 = 6513005;
  v4 = 0x6863746177;
  if (v1 != 3)
  {
    v4 = 30324;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656E6F6870;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t PairedDevice.PairedDeviceClass.hashValue.getter()
{
  v1 = *v0;
  sub_1DEF8E7A8();
  MEMORY[0x1E12CBF60](v1);
  return sub_1DEF8E7F8();
}

uint64_t sub_1DEF82EC4()
{
  v1 = *v0;
  v2 = 0x64696C61766E69;
  v3 = 6513005;
  v4 = 0x6863746177;
  if (v1 != 3)
  {
    v4 = 30324;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656E6F6870;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t PairedDevice.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PairedDevice.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t PairedDevice.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  sub_1DEF8DF28();

  strcpy(v15, "PairedDevice: ");
  HIBYTE(v15[1]) = -18;
  MEMORY[0x1E12CB180](v3, v4);
  MEMORY[0x1E12CB180](0x69746E656469203BLL, 0xEE00203A72656966);
  MEMORY[0x1E12CB180](v1, v2);
  MEMORY[0x1E12CB180](0x656369766564203BLL, 0xEF203A7373616C43);
  v6 = 0xE700000000000000;
  v7 = 0x64696C61766E69;
  v8 = 0xE300000000000000;
  v9 = 6513005;
  v10 = 0xE500000000000000;
  v11 = 0x6863746177;
  if (v5 != 3)
  {
    v11 = 30324;
    v10 = 0xE200000000000000;
  }

  if (v5 != 2)
  {
    v9 = v11;
    v8 = v10;
  }

  if (v5)
  {
    v7 = 0x656E6F6870;
    v6 = 0xE500000000000000;
  }

  if (v5 <= 1)
  {
    v12 = v7;
  }

  else
  {
    v12 = v9;
  }

  if (v5 <= 1)
  {
    v13 = v6;
  }

  else
  {
    v13 = v8;
  }

  MEMORY[0x1E12CB180](v12, v13);

  return v15[0];
}

BOOL static PairedDevice.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = *(a1 + 32);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (v8 || (sub_1DEF8E4E8()) && (v2 == v5 ? (v9 = v3 == v6) : (v9 = 0), v9 || (sub_1DEF8E4E8()))
  {
    return v4 == v7;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1DEF831D4()
{
  result = qword_1ECDE58C0;
  if (!qword_1ECDE58C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE58C0);
  }

  return result;
}

BOOL sub_1DEF83228(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = *(a1 + 32);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (v8 || (sub_1DEF8E4E8()) && (v2 == v5 ? (v9 = v3 == v6) : (v9 = 0), v9 || (sub_1DEF8E4E8()))
  {
    return v4 == v7;
  }

  else
  {
    return 0;
  }
}

uint64_t static OPACKCoder.encode(_:version:)(void *a1, uint64_t a2, char a3)
{
  v4 = v3;
  type metadata accessor for PropertyListTypeEncoder();
  inited = swift_initStackObject();
  *(inited + 16) = a2;
  *(inited + 24) = a3 & 1;
  v9 = sub_1DEE29274(a1);
  if (!v3)
  {
    v4 = sub_1DEE1187C(v9);
    swift_unknownObjectRelease();
  }

  return v4;
}

uint64_t static OPACKCoder.decode<A>(_:from:version:)(void x0_0, uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  result = sub_1DEE115C8(v13);
  if (!v7)
  {
    type metadata accessor for PropertyListTypeDecoder();
    inited = swift_initStackObject();
    *(inited + 16) = a3;
    *(inited + 24) = a4 & 1;
    sub_1DEF5F790(a5, v13);
    return __swift_destroy_boxed_opaque_existential_1(v13);
  }

  return result;
}

id OPACKCoder.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id OPACKCoder.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OPACKCoder();
  return objc_msgSendSuper2(&v2, sel_init);
}

id OPACKCoder.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OPACKCoder();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1DEF8353C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v39[1] = a2;
  v47 = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4DC0, &qword_1DEF91640);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v40 = v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v39 - v14;
  v16 = sub_1DEF8D378();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v46 = v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v39[0] = v39 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = v39 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = v39 - v25;
  sub_1DEF8D2C8();
  v27 = *(a5 + 8);
  v42 = a1;
  v43 = a4;
  v41 = a3;
  v44 = v6;
  v45 = a5;
  v27(a1, a3, a4, a5);
  v28 = *(v17 + 48);
  if (v28(v15, 1, v16) == 1)
  {
    sub_1DEF0192C(v15);
  }

  else
  {
    v29 = *(v17 + 32);
    v29(v23, v15, v16);
    if (sub_1DEF8D308() & 1) != 0 && (sub_1DEF8D2F8())
    {
      (*(v17 + 8))(v26, v16);
      v29(v26, v23, v16);
    }

    else
    {
      (*(v17 + 8))(v23, v16);
    }
  }

  v30 = v47;
  v31 = v40;
  (*(v45 + 16))(v42, v41 & 1, v43);
  if (v28(v31, 1, v16) == 1)
  {
    sub_1DEF0192C(v31);
  }

  else
  {
    v32 = *(v17 + 32);
    v33 = v39[0];
    v32(v39[0], v31, v16);
    if (sub_1DEF8D308() & 1) != 0 && (sub_1DEF8D2F8())
    {
      (*(v17 + 8))(v26, v16);
      v32(v26, v33, v16);
    }

    else
    {
      (*(v17 + 8))(v33, v16);
    }
  }

  v34 = v46;
  sub_1DEF8D2C8();
  v35 = sub_1DEF8D308();
  v36 = *(v17 + 8);
  v36(v34, v16);
  if (v35)
  {
    (*(v17 + 32))(v30, v26, v16);
    v37 = 0;
  }

  else
  {
    v36(v26, v16);
    v37 = 1;
  }

  return (*(v17 + 56))(v30, v37, 1, v16);
}

uint64_t LinearRetryTimer.__allocating_init()()
{
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4230, &qword_1DEF934E0);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v0 + 48) = v1;
  *(v0 + 16) = 3;
  *(v0 + 24) = 0x4030000000000000;
  *(v0 + 32) = xmmword_1DEF93BB0;
  return v0;
}

void *LinearRetryTimer.init()()
{
  v0[5] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4230, &qword_1DEF934E0);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  v0[6] = v1;
  v0[2] = 3;
  v0[3] = 0x4030000000000000;
  v0[4] = 3;
  return v0;
}

uint64_t LinearRetryTimer.__allocating_init(maxRetries:intervalUntilRetry:)(uint64_t a1, double a2)
{
  v4 = swift_allocObject();
  *(v4 + 40) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4230, &qword_1DEF934E0);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v4 + 48) = v5;
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + 32) = a1;
  return v4;
}

uint64_t LinearRetryTimer.init(maxRetries:intervalUntilRetry:)(uint64_t a1, double a2)
{
  *(v2 + 40) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4230, &qword_1DEF934E0);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v2 + 48) = v5;
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  *(v2 + 32) = a1;
  return v2;
}

uint64_t LinearRetryTimer.deinit()
{

  return v0;
}

uint64_t LinearRetryTimer.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

double DuetHandshakeTask.handshakeDescriptor.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v4 = *(v1 + 32);
  v3 = *(v1 + 40);
  v5 = *(v1 + 48);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
  *(a1 + 40) = *(v1 + 56);

  return result;
}

void DuetHandshakeTask.schedule.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  *a1 = *(v1 + 72);
  *(a1 + 8) = v2;
}

uint64_t DuetHandshakeTask.creationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16ReplicatorEngine17DuetHandshakeTask_creationDate;
  v4 = sub_1DEF8D378();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DuetHandshakeTask.__allocating_init(handshakeDescriptor:schedule:handler:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  swift_allocObject();
  v8 = sub_1DEF863C4(a1, a2, a3, a4);

  return v8;
}

uint64_t DuetHandshakeTask.init(handshakeDescriptor:schedule:handler:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1DEF863C4(a1, a2, a3, a4);

  return v4;
}

void *DuetHandshakeTask.deinit()
{
  v1 = v0;
  if (qword_1ECDE2E58 != -1)
  {
    swift_once();
  }

  v2 = sub_1DEF8D508();
  __swift_project_value_buffer(v2, qword_1ECDF6028);

  v3 = sub_1DEF8D4D8();
  v4 = sub_1DEF8DC78();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315138;

    v7 = sub_1DEF8D988();
    v9 = sub_1DEE12A5C(v7, v8, &v13);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1DEE0F000, v3, v4, "%s deinit, canceling", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1E12CCD70](v6, -1, -1);
    MEMORY[0x1E12CCD70](v5, -1, -1);
  }

  DuetHandshakeTask.cancel()();

  v10 = OBJC_IVAR____TtC16ReplicatorEngine17DuetHandshakeTask_creationDate;
  v11 = sub_1DEF8D378();
  (*(*(v11 - 8) + 8))(v1 + v10, v11);

  return v1;
}

Swift::Void __swiftcall DuetHandshakeTask.cancel()()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC16ReplicatorEngine17DuetHandshakeTask_bgTaskRequest);
  if (v2)
  {
    v3 = [v2 identifier];
    sub_1DEF8D948();

    v4 = *(v1 + OBJC_IVAR____TtC16ReplicatorEngine17DuetHandshakeTask_bgTaskRequestActive);
    MEMORY[0x1EEE9AC00](v5);

    os_unfair_lock_lock((v4 + 20));
    sub_1DEF86770((v4 + 16));
    os_unfair_lock_unlock((v4 + 20));

    v7 = *(v1 + OBJC_IVAR____TtC16ReplicatorEngine17DuetHandshakeTask_bgHandlerRegistered);
    MEMORY[0x1EEE9AC00](v6);

    os_unfair_lock_lock((v7 + 20));
    sub_1DEF86790((v7 + 16));
    os_unfair_lock_unlock((v7 + 20));
  }

  else
  {
    if (qword_1ECDE2E58 != -1)
    {
      swift_once();
    }

    v8 = sub_1DEF8D508();
    __swift_project_value_buffer(v8, qword_1ECDF6028);

    v15 = sub_1DEF8D4D8();
    v9 = sub_1DEF8DC98();

    if (os_log_type_enabled(v15, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v16 = v11;
      *v10 = 136315138;

      v12 = sub_1DEF8D988();
      v14 = sub_1DEE12A5C(v12, v13, &v16);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_1DEE0F000, v15, v9, "%s no bgTaskRequest identifier, cannot cancel", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x1E12CCD70](v11, -1, -1);
      MEMORY[0x1E12CCD70](v10, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t DuetHandshakeTask.__deallocating_deinit()
{
  DuetHandshakeTask.deinit();

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall DuetHandshakeTask.start()()
{
  v1 = v0;
  v207 = *MEMORY[0x1E69E9840];
  v194 = *v0;
  v2 = sub_1DEF8D378();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v184 = &v182 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v183 = &v182 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v190 = &v182 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v189 = &v182 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v186 = &v182 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v185 = &v182 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v188 = &v182 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v187 = &v182 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v182 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v182 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v182 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v182 - v29;
  v31 = sub_1DEF8D348();
  v32 = *(v0 + 80);
  aBlock = v0[9];
  LOBYTE(v202) = v32;
  sub_1DEF856B8(v31);
  v198 = v30;
  sub_1DEF8D2E8();
  v33 = *(v3 + 8);
  v197 = (v3 + 8);
  v33(v27, v2);
  if (qword_1ECDE2E58 != -1)
  {
    swift_once();
  }

  v34 = sub_1DEF8D508();
  v35 = __swift_project_value_buffer(v34, qword_1ECDF6028);
  v36 = *(v3 + 16);
  v37 = v198;
  v36(v24, v198, v2);
  v193 = (v3 + 16);
  v191 = v36;
  v36(v21, v37, v2);

  v192 = v35;
  v38 = sub_1DEF8D4D8();
  v39 = sub_1DEF8DCB8();

  v40 = os_log_type_enabled(v38, v39);
  v195 = v33;
  v196 = v2;
  if (v40)
  {
    v41 = v2;
    v42 = v33;
    v43 = swift_slowAlloc();
    v182 = swift_slowAlloc();
    aBlock = v182;
    *v43 = 136315906;
    v199 = v1;

    v44 = sub_1DEF8D988();
    v46 = sub_1DEE12A5C(v44, v45, &aBlock);

    *(v43 + 4) = v46;
    *(v43 + 12) = 2082;
    sub_1DEE15340(&qword_1ECDE3A30, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
    v47 = sub_1DEF8E2E8();
    v49 = v48;
    v42(v24, v41);
    v50 = sub_1DEE12A5C(v47, v49, &aBlock);

    *(v43 + 14) = v50;
    *(v43 + 22) = 2050;
    sub_1DEF8D318();
    v52 = v51;
    v42(v21, v41);
    *(v43 + 24) = v52;
    *(v43 + 32) = 2080;
    *(v43 + 34) = sub_1DEE12A5C(*(v1 + OBJC_IVAR____TtC16ReplicatorEngine17DuetHandshakeTask_identifier), *(v1 + OBJC_IVAR____TtC16ReplicatorEngine17DuetHandshakeTask_identifier + 8), &aBlock);
    _os_log_impl(&dword_1DEE0F000, v38, v39, "%s scheduling Duet handshake task at: %{public}s in %{public}fs: %s", v43, 0x2Au);
    v53 = v182;
    swift_arrayDestroy();
    MEMORY[0x1E12CCD70](v53, -1, -1);
    MEMORY[0x1E12CCD70](v43, -1, -1);
  }

  else
  {

    v33(v21, v2);
    v33(v24, v2);
  }

  v54 = objc_opt_self();
  v55 = [v54 sharedScheduler];
  v56 = *(v1 + OBJC_IVAR____TtC16ReplicatorEngine17DuetHandshakeTask_identifier);
  v57 = *(v1 + OBJC_IVAR____TtC16ReplicatorEngine17DuetHandshakeTask_identifier + 8);
  v58 = sub_1DEF8D918();
  v59 = *(v1 + OBJC_IVAR____TtC16ReplicatorEngine17DuetHandshakeTask_queue);
  v205 = sub_1DEF867B0;
  v206 = v1;
  aBlock = MEMORY[0x1E69E9820];
  v202 = 1107296256;
  v203 = sub_1DEEC4EA0;
  v204 = &block_descriptor_23;
  v60 = _Block_copy(&aBlock);

  LODWORD(v59) = [v55 registerForTaskWithIdentifier:v58 usingQueue:v59 launchHandler:v60];
  _Block_release(v60);

  v61 = *(v1 + OBJC_IVAR____TtC16ReplicatorEngine17DuetHandshakeTask_bgHandlerRegistered);

  os_unfair_lock_lock((v61 + 20));
  *(v61 + 16) = v59;
  os_unfair_lock_unlock((v61 + 20));

  if (v59)
  {
    v62 = objc_allocWithZone(MEMORY[0x1E698E478]);
    v63 = sub_1DEF8D918();
    v64 = [v62 initWithIdentifier_];

    v65 = *(v1 + OBJC_IVAR____TtC16ReplicatorEngine17DuetHandshakeTask_bgTaskRequest);
    *(v1 + OBJC_IVAR____TtC16ReplicatorEngine17DuetHandshakeTask_bgTaskRequest) = v64;
    v66 = v64;

    v67 = v57;
    v68 = v56;
    if (v66)
    {
      if (*(v1 + 80) > 1u)
      {
        v69 = 1;
      }

      else if (v1[9] >= 2)
      {
        v69 = 1;
      }

      else
      {
        v69 = 2;
      }

      v114 = v188;
      v115 = v187;
      v116 = v66;
      v117 = [v116 setPriority_];
      v118 = *(v1 + 80);
      aBlock = v1[9];
      LOBYTE(v202) = v118;
      v119 = [v116 setScheduleAfter_];
      v120 = *(v1 + 80);
      aBlock = v1[9];
      LOBYTE(v202) = v120;
      v121 = sub_1DEF856B8(v119);
      v122 = *(v1 + 80);
      v199 = v1[9];
      v200 = v122;
      [v116 setTrySchedulingBefore_];
      v123 = sub_1DEF8D918();
      [v116 setRemoteDevice_];

      if (*(v1 + 48) == 4)
      {
        [v116 setTargetDevice_];
        [v116 setRequiresRemoteDeviceWake_];
      }

      else
      {
        [v116 setTargetDevice_];
      }

      [v116 setRequiresExternalPower_];

      v124 = [v54 sharedScheduler];
      aBlock = 0;
      v125 = [v124 submitTaskRequest:v116 error:&aBlock];

      if (v125)
      {
        v126 = *(v1 + OBJC_IVAR____TtC16ReplicatorEngine17DuetHandshakeTask_bgTaskRequestActive);
        v127 = aBlock;

        os_unfair_lock_lock((v126 + 20));
        *(v126 + 16) = 1;
        os_unfair_lock_unlock((v126 + 20));

        v128 = v198;
        v129 = v196;
        v130 = v191;
        v191(v115, v198, v196);
        v130(v114, v128, v129);

        v131 = sub_1DEF8D4D8();
        v132 = sub_1DEF8DC78();

        if (os_log_type_enabled(v131, v132))
        {
          v133 = swift_slowAlloc();
          v188 = v67;
          v134 = v133;
          v193 = swift_slowAlloc();
          aBlock = v193;
          *v134 = 136315906;
          v199 = v1;

          v135 = sub_1DEF8D988();
          v137 = sub_1DEE12A5C(v135, v136, &aBlock);

          *(v134 + 4) = v137;
          *(v134 + 12) = 2082;
          sub_1DEE15340(&qword_1ECDE3A30, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
          v138 = sub_1DEF8E2E8();
          v140 = v139;
          LODWORD(v194) = v132;
          v141 = v68;
          v142 = v195;
          v195(v115, v129);
          v143 = sub_1DEE12A5C(v138, v140, &aBlock);

          *(v134 + 14) = v143;
          *(v134 + 22) = 2050;
          sub_1DEF8D318();
          v145 = v144;
          v142(v114, v129);
          *(v134 + 24) = v145;
          *(v134 + 32) = 2080;
          *(v134 + 34) = sub_1DEE12A5C(v141, v188, &aBlock);
          _os_log_impl(&dword_1DEE0F000, v131, v194, "%s successful submitTaskRequest: %{public}s in %{public}fs: %s", v134, 0x2Au);
          v146 = v193;
          swift_arrayDestroy();
          MEMORY[0x1E12CCD70](v146, -1, -1);
          MEMORY[0x1E12CCD70](v134, -1, -1);

          v142(v198, v129);
        }

        else
        {

          v180 = v195;
          v195(v114, v129);
          v180(v115, v129);
          v180(v198, v129);
        }
      }

      else
      {
        v188 = v67;
        v147 = v56;
        v148 = aBlock;
        v149 = sub_1DEF8D148();

        swift_willThrow();
        v150 = v183;
        v151 = v198;
        v152 = v196;
        v153 = v191;
        v191(v183, v198, v196);
        v154 = v184;
        v153(v184, v151, v152);

        v155 = v149;
        v156 = sub_1DEF8D4D8();
        v157 = sub_1DEF8DC98();

        if (os_log_type_enabled(v156, v157))
        {
          v158 = swift_slowAlloc();
          v187 = v147;
          v159 = v158;
          v160 = swift_slowAlloc();
          v191 = v160;
          v193 = swift_slowAlloc();
          aBlock = v193;
          *v159 = 136316162;
          v199 = v1;

          v161 = sub_1DEF8D988();
          LODWORD(v194) = v157;
          v163 = sub_1DEE12A5C(v161, v162, &aBlock);
          v192 = v156;
          v164 = v152;
          v165 = v163;

          *(v159 + 4) = v165;
          *(v159 + 12) = 2112;
          v166 = v149;
          v167 = _swift_stdlib_bridgeErrorToNSError();
          *(v159 + 14) = v167;
          *v160 = v167;
          *(v159 + 22) = 2082;
          sub_1DEE15340(&qword_1ECDE3A30, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
          v168 = sub_1DEF8E2E8();
          v170 = v169;
          v171 = v150;
          v172 = v195;
          v195(v171, v164);
          v173 = sub_1DEE12A5C(v168, v170, &aBlock);
          v152 = v164;

          *(v159 + 24) = v173;
          *(v159 + 32) = 2050;
          sub_1DEF8D318();
          v175 = v174;
          v172(v154, v164);
          *(v159 + 34) = v175;
          *(v159 + 42) = 2080;
          *(v159 + 44) = sub_1DEE12A5C(v187, v188, &aBlock);
          v176 = v192;
          _os_log_impl(&dword_1DEE0F000, v192, v194, "%s could not submitTaskRequest: %@ %{public}s in %{public}fs: %s", v159, 0x34u);
          v177 = v191;
          sub_1DEEE2A84(v191);
          MEMORY[0x1E12CCD70](v177, -1, -1);
          v178 = v193;
          swift_arrayDestroy();
          MEMORY[0x1E12CCD70](v178, -1, -1);
          MEMORY[0x1E12CCD70](v159, -1, -1);
        }

        else
        {

          v181 = v150;
          v172 = v195;
          v195(v154, v152);
          v172(v181, v152);
        }

        DuetHandshakeTask.cancel()();

        v172(v198, v152);
      }
    }

    else
    {
      v187 = v56;
      v92 = v185;
      v93 = v198;
      v94 = v196;
      v95 = v191;
      v191(v185, v198, v196);
      v96 = v186;
      v95(v186, v93, v94);

      v97 = sub_1DEF8D4D8();
      v98 = sub_1DEF8DC98();

      if (os_log_type_enabled(v97, v98))
      {
        v99 = swift_slowAlloc();
        v188 = v67;
        v100 = v99;
        v197 = swift_slowAlloc();
        aBlock = v197;
        *v100 = 136315906;
        v199 = v1;

        v101 = sub_1DEF8D988();
        v103 = sub_1DEE12A5C(v101, v102, &aBlock);

        *(v100 + 4) = v103;
        *(v100 + 12) = 2082;
        sub_1DEE15340(&qword_1ECDE3A30, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
        v104 = sub_1DEF8E2E8();
        v106 = v105;
        v107 = v92;
        v108 = v96;
        v109 = v195;
        v195(v107, v94);
        v110 = sub_1DEE12A5C(v104, v106, &aBlock);

        *(v100 + 14) = v110;
        *(v100 + 22) = 2050;
        sub_1DEF8D318();
        v112 = v111;
        v109(v108, v94);
        *(v100 + 24) = v112;
        *(v100 + 32) = 2080;
        *(v100 + 34) = sub_1DEE12A5C(v187, v188, &aBlock);
        _os_log_impl(&dword_1DEE0F000, v97, v98, "%s could not create bgTaskRequest: %{public}s in %{public}fs: %s", v100, 0x2Au);
        v113 = v197;
        swift_arrayDestroy();
        MEMORY[0x1E12CCD70](v113, -1, -1);
        MEMORY[0x1E12CCD70](v100, -1, -1);
      }

      else
      {

        v179 = v96;
        v109 = v195;
        v195(v179, v94);
        v109(v92, v94);
      }

      DuetHandshakeTask.cancel()();
      v109(v198, v94);
    }
  }

  else
  {
    v187 = v56;
    v188 = v57;
    v70 = v189;
    v71 = v198;
    v72 = v196;
    v73 = v191;
    v191(v189, v198, v196);
    v74 = v190;
    v73(v190, v71, v72);

    v75 = sub_1DEF8D4D8();
    v76 = sub_1DEF8DC98();

    if (os_log_type_enabled(v75, v76))
    {
      v77 = v74;
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      aBlock = v79;
      *v78 = 136315906;
      v199 = v1;

      v80 = sub_1DEF8D988();
      v82 = sub_1DEE12A5C(v80, v81, &aBlock);

      *(v78 + 4) = v82;
      *(v78 + 12) = 2082;
      sub_1DEE15340(&qword_1ECDE3A30, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
      v83 = sub_1DEF8E2E8();
      v85 = v84;
      v86 = v70;
      v87 = v195;
      v195(v86, v72);
      v88 = sub_1DEE12A5C(v83, v85, &aBlock);

      *(v78 + 14) = v88;
      *(v78 + 22) = 2050;
      sub_1DEF8D318();
      v90 = v89;
      v87(v77, v72);
      *(v78 + 24) = v90;
      *(v78 + 32) = 2080;
      *(v78 + 34) = sub_1DEE12A5C(v187, v188, &aBlock);
      _os_log_impl(&dword_1DEE0F000, v75, v76, "%s could not registerForTask: %{public}s in %{public}fs: %s", v78, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1E12CCD70](v79, -1, -1);
      MEMORY[0x1E12CCD70](v78, -1, -1);

      v87(v198, v72);
    }

    else
    {

      v91 = v195;
      v195(v74, v72);
      v91(v70, v72);
      v91(v198, v72);
    }
  }
}

double sub_1DEF856B8(uint64_t a1)
{
  if (*(v1 + 8) > 1u)
  {
    return 900.0;
  }

  if (!*v1)
  {
    return 1.0;
  }

  if (*v1 == 1)
  {
    return 5.0;
  }

  return sub_1DEF856B8(a1);
}

uint64_t sub_1DEF8572C(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3AB8, &qword_1DEF90AD0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v19 - v5;
  if (qword_1ECDE2E58 != -1)
  {
    swift_once();
  }

  v7 = sub_1DEF8D508();
  __swift_project_value_buffer(v7, qword_1ECDF6028);

  v8 = sub_1DEF8D4D8();
  v9 = sub_1DEF8DC78();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = a2;
    v20 = v11;
    *v10 = 136315394;

    v12 = sub_1DEF8D988();
    v14 = sub_1DEE12A5C(v12, v13, &v20);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_1DEE12A5C(*(a2 + OBJC_IVAR____TtC16ReplicatorEngine17DuetHandshakeTask_identifier), *(a2 + OBJC_IVAR____TtC16ReplicatorEngine17DuetHandshakeTask_identifier + 8), &v20);
    _os_log_impl(&dword_1DEE0F000, v8, v9, "%s calling handler for %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12CCD70](v11, -1, -1);
    MEMORY[0x1E12CCD70](v10, -1, -1);
  }

  v15 = sub_1DEF8DB78();
  (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = a1;
  v16[5] = a2;

  v17 = a1;
  sub_1DEE45D8C(0, 0, v6, &unk_1DEF9AE78, v16);
}

uint64_t sub_1DEF859E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1DEF85A00, 0, 0);
}

uint64_t sub_1DEF85A00()
{
  v1 = *(v0 + 24);
  [*(v0 + 16) setTaskCompleted];
  v2 = *(v1 + OBJC_IVAR____TtC16ReplicatorEngine17DuetHandshakeTask_bgTaskRequestActive);

  os_unfair_lock_lock((v2 + 20));
  *(v2 + 16) = 0;
  os_unfair_lock_unlock((v2 + 20));

  v3 = *(v1 + OBJC_IVAR____TtC16ReplicatorEngine17DuetHandshakeTask_handler);

  v3(v4);

  v5 = *(v0 + 8);

  return v5();
}

double sub_1DEF85AC0()
{
  if (*(v0 + 8) > 1u)
  {
    return 1800.0;
  }

  result = 0.0;
  if (*v0 >= 2)
  {
    return sub_1DEF85AC0();
  }

  return result;
}

void sub_1DEF85B24(_BYTE *a1, uint64_t a2, unint64_t a3, void *a4)
{
  v34[1] = *MEMORY[0x1E69E9840];
  if (*a1 == 1)
  {
    v7 = [objc_opt_self() sharedScheduler];
    v8 = sub_1DEF8D918();
    v34[0] = 0;
    v9 = [v7 cancelTaskRequestWithIdentifier:v8 error:v34];

    if (v9)
    {
      v10 = qword_1ECDE2E58;
      v11 = v34[0];
      if (v10 != -1)
      {
        swift_once();
      }

      v12 = sub_1DEF8D508();
      __swift_project_value_buffer(v12, qword_1ECDF6028);

      v13 = sub_1DEF8D4D8();
      v14 = sub_1DEF8DC78();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v34[0] = v16;
        *v15 = 136315394;

        v17 = sub_1DEF8D988();
        v19 = sub_1DEE12A5C(v17, v18, v34);

        *(v15 + 4) = v19;
        *(v15 + 12) = 2080;
        *(v15 + 14) = sub_1DEE12A5C(a2, a3, v34);
        _os_log_impl(&dword_1DEE0F000, v13, v14, "%s successful cancelTaskRequest %s", v15, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12CCD70](v16, -1, -1);
        MEMORY[0x1E12CCD70](v15, -1, -1);
      }
    }

    else
    {
      v20 = v34[0];
      v21 = sub_1DEF8D148();

      swift_willThrow();
      if (qword_1ECDE2E58 != -1)
      {
        swift_once();
      }

      v22 = sub_1DEF8D508();
      __swift_project_value_buffer(v22, qword_1ECDF6028);

      v23 = v21;
      v24 = sub_1DEF8D4D8();
      v25 = sub_1DEF8DC98();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v34[0] = v33;
        *v26 = 136315650;

        v27 = sub_1DEF8D988();
        v29 = sub_1DEE12A5C(v27, v28, v34);

        *(v26 + 4) = v29;
        *(v26 + 12) = 2080;
        *(v26 + 14) = sub_1DEE12A5C(a2, a3, v34);
        *(v26 + 22) = 2112;
        v30 = v21;
        v31 = _swift_stdlib_bridgeErrorToNSError();
        *(v26 + 24) = v31;
        *v32 = v31;
        _os_log_impl(&dword_1DEE0F000, v24, v25, "%s could not cancelTaskRequest %s: %@", v26, 0x20u);
        sub_1DEEE2A84(v32);
        MEMORY[0x1E12CCD70](v32, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x1E12CCD70](v33, -1, -1);
        MEMORY[0x1E12CCD70](v26, -1, -1);
      }

      else
      {
      }
    }

    *a1 = 0;
  }
}

void sub_1DEF85FB8(_BYTE *a1, uint64_t a2, unint64_t a3, void *a4)
{
  if (*a1 == 1)
  {
    v24[9] = v4;
    v24[10] = v5;
    v9 = [objc_opt_self() sharedScheduler];
    v10 = sub_1DEF8D918();
    v11 = [v9 deregisterTaskWithIdentifier_];

    if (qword_1ECDE2E58 != -1)
    {
      swift_once();
    }

    v12 = sub_1DEF8D508();
    __swift_project_value_buffer(v12, qword_1ECDF6028);

    v13 = sub_1DEF8D4D8();
    v14 = sub_1DEF8DC78();

    if (os_log_type_enabled(v13, v14))
    {
      v23 = v11;
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v24[0] = v16;
      *v15 = 136315650;

      v17 = sub_1DEF8D988();
      v19 = sub_1DEE12A5C(v17, v18, v24);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2080;
      if (v23)
      {
        v20 = 0x6673736563637573;
      }

      else
      {
        v20 = 0x6F6E20646C756F63;
      }

      if (v23)
      {
        v21 = 0xEA00000000006C75;
      }

      else
      {
        v21 = 0xE900000000000074;
      }

      v22 = sub_1DEE12A5C(v20, v21, v24);

      *(v15 + 14) = v22;
      *(v15 + 22) = 2080;
      *(v15 + 24) = sub_1DEE12A5C(a2, a3, v24);
      _os_log_impl(&dword_1DEE0F000, v13, v14, "%s %s deregisterTask  %s", v15, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E12CCD70](v16, -1, -1);
      MEMORY[0x1E12CCD70](v15, -1, -1);
    }

    *a1 = 0;
  }
}

uint64_t sub_1DEF86274@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC16ReplicatorEngine17DuetHandshakeTask_creationDate;
  v5 = sub_1DEF8D378();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_1DEF862F0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = *(a2 + 8);
  v12 = *a2;
  v13 = v9;
  swift_allocObject();
  v10 = sub_1DEF863C4(a1, &v12, a3, a4);

  *a5 = v10;
  return result;
}

uint64_t sub_1DEF863C4(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v33 = a3;
  v34 = a4;
  v8 = sub_1DEF8DD08();
  v39 = *(v8 - 8);
  v40 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v38 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_1DEF8DCD8();
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1DEF8D6D8();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v35 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v14 = a1[1];
  v15 = a1[2];
  v16 = a1[3];
  v17 = *(a1 + 32);
  v19 = a1[5];
  v18 = a1[6];
  v31 = *a2;
  v32 = v18;
  LOBYTE(a2) = *(a2 + 8);
  sub_1DEF8D348();
  v20 = OBJC_IVAR____TtC16ReplicatorEngine17DuetHandshakeTask_bgHandlerRegistered;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE58D0, &unk_1DEF9AE88);
  v21 = swift_allocObject();
  *(v21 + 20) = 0;
  *(v21 + 16) = 0;
  *(v5 + v20) = v21;
  *(v5 + OBJC_IVAR____TtC16ReplicatorEngine17DuetHandshakeTask_bgTaskRequest) = 0;
  v22 = OBJC_IVAR____TtC16ReplicatorEngine17DuetHandshakeTask_bgTaskRequestActive;
  v23 = swift_allocObject();
  *(v23 + 20) = 0;
  *(v5 + v22) = v23;
  *(v23 + 16) = 0;
  *(v5 + 16) = v13;
  *(v5 + 24) = v14;
  *(v5 + 32) = v15;
  *(v5 + 40) = v16;
  *(v5 + 48) = v17;
  v24 = v31;
  v25 = v32;
  *(v5 + 56) = v19;
  *(v5 + 64) = v25;
  *(v5 + 72) = v24;
  *(v5 + 80) = a2;
  v26 = (v5 + OBJC_IVAR____TtC16ReplicatorEngine17DuetHandshakeTask_handler);
  v27 = v34;
  *v26 = v33;
  v26[1] = v27;
  v41 = 0;
  v42 = 0xE000000000000000;

  sub_1DEF8DF28();
  MEMORY[0x1E12CB180](0xD000000000000032, 0x80000001DEF9E760);

  MEMORY[0x1E12CB180](v13, v14);

  swift_bridgeObjectRelease_n();
  v28 = v42;
  v29 = (v5 + OBJC_IVAR____TtC16ReplicatorEngine17DuetHandshakeTask_identifier);
  *v29 = v41;
  v29[1] = v28;
  sub_1DEE3C630();

  sub_1DEF8D6A8();
  v41 = MEMORY[0x1E69E7CC0];
  sub_1DEE15340(&qword_1ECDE2C10, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4FF0, &unk_1DEF904D0);
  sub_1DEE3C6C4();
  sub_1DEF8DE08();
  (*(v39 + 104))(v38, *MEMORY[0x1E69E8098], v40);
  *(v5 + OBJC_IVAR____TtC16ReplicatorEngine17DuetHandshakeTask_queue) = sub_1DEF8DD38();
  return v5;
}

uint64_t type metadata accessor for DuetHandshakeTask(uint64_t a1)
{
  result = qword_1ECDE3368;
  if (!qword_1ECDE3368)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DEF8680C(uint64_t a1)
{
  result = sub_1DEF8D378();
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

uint64_t sub_1DEF8691C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DEE466B4;

  return sub_1DEF859E0(a1, v4, v5, v7, v6);
}

uint64_t sub_1DEF86AA0()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3A58, &qword_1DEF937F0);
    sub_1DEEFE21C();
    v1 = sub_1DEF8D5B8();
    *(v0 + 24) = v1;
  }

  return v1;
}

uint64_t (*sub_1DEF86B38(uint64_t *a1))(void *a1)
{
  a1[1] = v1;
  *a1 = sub_1DEF86AA0();
  return sub_1DEEEA148;
}

uint64_t sub_1DEF86B80@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 40);
  v5 = *(v3 + 48);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1DEE13AF8;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1DEE2CB00(v4, v5);
}

uint64_t sub_1DEF86C14(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1DEF872C0;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
  *(v7 + 48) = v5;
  sub_1DEE2CB00(v3, v4);
  return sub_1DEE3DBD0(v8);
}

uint64_t sub_1DEF86CD0()
{
  swift_beginAccess();
  v1 = *(v0 + 40);
  sub_1DEE2CB00(v1, *(v0 + 48));
  return v1;
}

uint64_t sub_1DEF86D20(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 40);
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return sub_1DEE3DBD0(v5);
}

uint64_t CallbackZoneAdvertiser.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 24) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3A58, &qword_1DEF937F0);
  swift_allocObject();
  v1 = sub_1DEF8D598();
  *(v0 + 16) = 0;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  *(v0 + 32) = v1;
  return v0;
}

uint64_t CallbackZoneAdvertiser.init()()
{
  *(v0 + 24) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3A58, &qword_1DEF937F0);
  swift_allocObject();
  v1 = sub_1DEF8D598();
  *(v0 + 16) = 0;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  *(v0 + 32) = v1;
  return v0;
}

uint64_t CallbackZoneAdvertiser.deinit()
{

  sub_1DEE3DBD0(*(v0 + 40));
  return v0;
}

uint64_t CallbackZoneAdvertiser.__deallocating_deinit()
{

  sub_1DEE3DBD0(*(v0 + 40));

  return swift_deallocClassInstance();
}

uint64_t sub_1DEF86F28()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 16);
}

void sub_1DEF86F68(char a1)
{
  v3 = *v1;
  swift_beginAccess();
  *(v3 + 16) = a1;
}

void sub_1DEF87000()
{
  v1 = *v0;
  swift_beginAccess();
  if (*(v1 + 16) == 1)
  {
    swift_beginAccess();
    v2 = *(v1 + 40);
    if (v2)
    {

      v2(v3);
      sub_1DEE3DBD0(v2);
    }
  }
}

void CallbackZoneAdvertiser.advertise(_:)()
{
  swift_beginAccess();
  if (*(v0 + 16) == 1)
  {
    swift_beginAccess();
    v1 = *(v0 + 40);
    if (v1)
    {

      v1(v2);
      sub_1DEE3DBD0(v1);
    }
  }
}

uint64_t URL.setExtendedAttribute<A>(named:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = MEMORY[0x1EEE9AC00](a1);
  (*(v10 + 16))(v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v11, v12, v8);
  result = swift_dynamicCast();
  if (result)
  {
    v14 = v17[0];
    v15 = v17[1];
  }

  else
  {
    sub_1DEF8D118();
    swift_allocObject();
    sub_1DEF8D108();
    sub_1DEF8D0E8();
    v14 = sub_1DEF8D0F8();
    v15 = v16;

    if (v5)
    {
      return result;
    }
  }

  MEMORY[0x1EEE9AC00](result);
  v17[-4] = v14;
  v17[-3] = v15;
  v17[-2] = a1;
  v17[-1] = a2;
  sub_1DEF8D198(MEMORY[0x1E69E7CA8]);
  return sub_1DEE1BFA0(v14, v15);
}

uint64_t URL.extendedAttributeNames()()
{
  v0 = sub_1DEF8D978();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DEF8D1C8();
  v4 = sub_1DEF8D998();

  v5 = listxattr((v4 + 32), 0, 0, 0);

  if (v5 == -1)
  {
    type metadata accessor for URL.ExtendedAttributeError(0);
    sub_1DEF89460(&qword_1ECDE58D8, type metadata accessor for URL.ExtendedAttributeError, &protocol conformance descriptor for URL.ExtendedAttributeError);
    swift_allocError();
    *v17 = 0;
    v17[1] = 0xE000000000000000;
    v17[2] = -1;
    MEMORY[0x1E12CACF0]();
    result = sub_1DEF8D528();
    if ((result & 0x100000000) != 0)
    {
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v18 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE58E0, &qword_1DEF9AF00);
    v19 = sub_1DEF8CF78();
    v24 = v18;
    sub_1DEF89350(MEMORY[0x1E69E7CC0]);
    sub_1DEF89460(&qword_1ECDE58E8, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
    v14 = v19;
    sub_1DEF8D138();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return v14;
  }

  v6 = swift_slowAlloc();
  sub_1DEF8D1C8();
  v7 = sub_1DEF8D998();

  v8 = listxattr((v7 + 32), v6, v5, 0);

  if (v8 != -1)
  {
    sub_1DEF8D958();
    v9 = sub_1DEF8D968();
    (*(v1 + 8))(v3, v0);
    v10 = [objc_allocWithZone(MEMORY[0x1E696AEC0]) initWithBytes:v6 length:v5 encoding:v9];
    if (!v10)
    {
      v14 = MEMORY[0x1E69E7CC0];
      goto LABEL_13;
    }

    v11 = v10;
    v12 = sub_1DEF8D918();
    v13 = [v11 componentsSeparatedByString_];

    v14 = sub_1DEF8DAD8();
    if (*(v14 + 16))
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v16 = *(v14 + 16);
        if (v16)
        {
LABEL_7:
          *(v14 + 16) = v16 - 1;

LABEL_13:
          MEMORY[0x1E12CCD70](v6, -1, -1);
          return v14;
        }

        goto LABEL_17;
      }
    }

    else
    {
      __break(1u);
    }

    result = sub_1DEF88EB4(v14);
    v14 = result;
    v16 = *(result + 16);
    if (v16)
    {
      goto LABEL_7;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  type metadata accessor for URL.ExtendedAttributeError(0);
  sub_1DEF89460(&qword_1ECDE58D8, type metadata accessor for URL.ExtendedAttributeError, &protocol conformance descriptor for URL.ExtendedAttributeError);
  swift_allocError();
  *v20 = 0;
  v20[1] = 0xE000000000000000;
  v20[2] = -1;
  MEMORY[0x1E12CACF0]();
  result = sub_1DEF8D528();
  if ((result & 0x100000000) == 0)
  {
    v21 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE58E0, &qword_1DEF9AF00);
    v22 = sub_1DEF8CF78();
    v25 = v21;
    sub_1DEF89350(MEMORY[0x1E69E7CC0]);
    sub_1DEF89460(&qword_1ECDE58E8, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
    v14 = v22;
    sub_1DEF8D138();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    MEMORY[0x1E12CCD70](v6, -1, -1);
    return v14;
  }

LABEL_19:
  __break(1u);
  return result;
}

void *URL.extendedAttributeData(named:)(uint64_t a1, uint64_t a2, __n128 a3)
{
  result = sub_1DEF8D198(&v5);
  if (!v3)
  {
    return v5;
  }

  return result;
}

unint64_t URL.ExtendedAttributeError.errorDescription.getter()
{
  v1 = v0;
  v2 = sub_1DEF8CF78();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for URL.ExtendedAttributeError(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DEF894A8(v1, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v11 = *v8;
  v10 = *(v8 + 1);
  if (EnumCaseMultiPayload == 1)
  {
    v12 = *(v8 + 2);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE58E0, &qword_1DEF9AF00);
    (*(v3 + 32))(v5, &v8[*(v13 + 64)], v2);
    v18 = 0;
    v19 = 0xE000000000000000;
    sub_1DEF8DF28();
    MEMORY[0x1E12CB180](0xD000000000000013, 0x80000001DEF9E7E0);
    MEMORY[0x1E12CB180](v11, v10);

    MEMORY[0x1E12CB180](0xD000000000000022, 0x80000001DEF9E800);
    v17[1] = v12;
    v14 = sub_1DEF8E2E8();
    MEMORY[0x1E12CB180](v14);

    MEMORY[0x1E12CB180](0xD000000000000018, 0x80000001DEF9E830);
    sub_1DEF8E008();
    v15 = v18;
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    v18 = 0;
    v19 = 0xE000000000000000;
    sub_1DEF8DF28();

    v18 = 0xD000000000000019;
    v19 = 0x80000001DEF9E850;
    MEMORY[0x1E12CB180](v11, v10);

    MEMORY[0x1E12CB180](0x746F6E2073617720, 0xEF2E646E756F6620);
    return v18;
  }

  return v15;
}

uint64_t sub_1DEF87D44(const char *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DEF8D998();
  v7 = removexattr(a1, (v6 + 32), 0);

  if (v7 < 0)
  {
    MEMORY[0x1E12CACF0](result);
    result = sub_1DEF8D528();
    if ((result & 0x100000000) != 0)
    {
      __break(1u);
    }

    else
    {
      sub_1DEF8CF68();
      v9 = sub_1DEF8D538();
      result = sub_1DEF8D538();
      if (v9 != result)
      {
        type metadata accessor for URL.ExtendedAttributeError(0);
        sub_1DEF89460(&qword_1ECDE58D8, type metadata accessor for URL.ExtendedAttributeError, &protocol conformance descriptor for URL.ExtendedAttributeError);
        swift_allocError();
        v11 = v10;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE58E0, &qword_1DEF9AF00);
        *v11 = a2;
        v11[1] = a3;
        v11[2] = v7;
        sub_1DEF8CF78();

        sub_1DEF89350(MEMORY[0x1E69E7CC0]);
        sub_1DEF89460(&qword_1ECDE58E8, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
        sub_1DEF8D138();
        swift_storeEnumTagMultiPayload();
        return swift_willThrow();
      }
    }
  }

  return result;
}

uint64_t sub_1DEF87F0C(const char *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  value[2] = *MEMORY[0x1E69E9840];
  v8 = a3 >> 62;
  if ((a3 >> 62) <= 1)
  {
    if (!v8)
    {
      value[0] = a2;
      LOWORD(value[1]) = a3;
      BYTE2(value[1]) = BYTE2(a3);
      BYTE3(value[1]) = BYTE3(a3);
      BYTE4(value[1]) = BYTE4(a3);
      v9 = BYTE6(a3);
      BYTE5(value[1]) = BYTE5(a3);
      v10 = (sub_1DEF8D998() + 32);
      v11 = value;
      v12 = a1;
LABEL_22:
      v23 = v9;
      goto LABEL_24;
    }

    goto LABEL_11;
  }

  if (v8 == 2)
  {
    v13 = *(a2 + 16);
    v14 = *(a2 + 24);
    v15 = sub_1DEF8D018();
    if (v15)
    {
      v16 = sub_1DEF8D048();
      if (__OFSUB__(v13, v16))
      {
        goto LABEL_29;
      }

      v15 += v13 - v16;
    }

    v17 = __OFSUB__(v14, v13);
    v18 = v14 - v13;
    if (!v17)
    {
      goto LABEL_15;
    }

    __break(1u);
LABEL_11:
    v19 = a2;
    v18 = (a2 >> 32) - a2;
    if (a2 >> 32 >= a2)
    {
      v15 = sub_1DEF8D018();
      if (!v15)
      {
LABEL_15:
        v21 = sub_1DEF8D038();
        if (v21 >= v18)
        {
          v22 = v18;
        }

        else
        {
          v22 = v21;
        }

        if (v15)
        {
          v9 = v22;
        }

        else
        {
          v9 = 0;
        }

        v10 = (sub_1DEF8D998() + 32);
        v12 = a1;
        v11 = v15;
        goto LABEL_22;
      }

      v20 = sub_1DEF8D048();
      if (!__OFSUB__(v19, v20))
      {
        v15 += v19 - v20;
        goto LABEL_15;
      }

LABEL_30:
      __break(1u);
    }

    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  memset(value, 0, 14);
  v10 = (sub_1DEF8D998() + 32);
  v11 = value;
  v12 = a1;
  v23 = 0;
LABEL_24:
  v24 = setxattr(v12, v10, v11, v23, 0, 0);

  if (v24 < 0)
  {
    type metadata accessor for URL.ExtendedAttributeError(0);
    sub_1DEF89460(&qword_1ECDE58D8, type metadata accessor for URL.ExtendedAttributeError, &protocol conformance descriptor for URL.ExtendedAttributeError);
    swift_allocError();
    *v26 = a4;
    v26[1] = a5;
    v26[2] = v24;

    MEMORY[0x1E12CACF0](v27);
    result = sub_1DEF8D528();
    if ((result & 0x100000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v28 = result;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE58E0, &qword_1DEF9AF00);
      sub_1DEF8CF78();
      LODWORD(value[0]) = v28;
      sub_1DEF89350(MEMORY[0x1E69E7CC0]);
      sub_1DEF89460(&qword_1ECDE58E8, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
      sub_1DEF8D138();
      swift_storeEnumTagMultiPayload();
      return swift_willThrow();
    }
  }

  return result;
}

void sub_1DEF88250(const char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v9 = sub_1DEF8D998();
  v10 = getxattr(a1, (v9 + 32), 0, 0, 0, 0);

  if (v10 < 1)
  {
    type metadata accessor for URL.ExtendedAttributeError(0);
    sub_1DEF89460(&qword_1ECDE58D8, type metadata accessor for URL.ExtendedAttributeError, &protocol conformance descriptor for URL.ExtendedAttributeError);
    swift_allocError();
    *v13 = a2;
    v13[1] = a3;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  else
  {
    v14 = sub_1DEE1C048(v10);
    v15 = v11;

    sub_1DEF884C8(&v14, a1, a2, a3, v10);
    v12 = v15;
    if (v4)
    {
      sub_1DEE1BFA0(v14, v15);
    }

    else
    {
      *a4 = v14;
      a4[1] = v12;
    }
  }
}

void *URL.extendedAttribute<A>(named:of:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = MEMORY[0x1E6969080];
  result = sub_1DEF8D198(v12);
  if (!v6)
  {
    v11 = v12[0];
    v10 = v12[1];
    if (a3 == v8)
    {
      return swift_dynamicCast();
    }

    else
    {
      sub_1DEF8D0D8();
      swift_allocObject();
      sub_1DEF8D0C8();
      sub_1DEF8D0B8();

      return sub_1DEE1BFA0(v11, v10);
    }
  }

  return result;
}

uint64_t sub_1DEF884C8(uint64_t *a1, const char *a2, uint64_t a3, uint64_t a4, size_t a5)
{
  v58 = *MEMORY[0x1E69E9840];
  v9 = *a1;
  v8 = a1[1];
  v10 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    if (v10 != 2)
    {
      *(&value + 7) = 0;
      *&value = 0;
      v30 = sub_1DEF8D998();

      v31 = getxattr(a2, (v30 + 32), &value, a5, 0, 0);

      if (v31 >= 1)
      {
        return swift_bridgeObjectRelease_n();
      }

      type metadata accessor for URL.ExtendedAttributeError(0);
      sub_1DEF89460(&qword_1ECDE58D8, type metadata accessor for URL.ExtendedAttributeError, &protocol conformance descriptor for URL.ExtendedAttributeError);
      swift_allocError();
      *v36 = a3;
      v36[1] = a4;
      v36[2] = v31;

      MEMORY[0x1E12CACF0](v37);
      result = sub_1DEF8D528();
      if ((result & 0x100000000) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE58E0, &qword_1DEF9AF00);
        sub_1DEF8CF78();
        sub_1DEF89350(MEMORY[0x1E69E7CC0]);
        sub_1DEF89460(&qword_1ECDE58E8, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
        sub_1DEF8D138();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        return swift_bridgeObjectRelease_n();
      }

      goto LABEL_41;
    }

    sub_1DEE1BFA0(v9, v8);
    *&value = v9;
    *(&value + 1) = v8 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_1DEF95880;
    sub_1DEE1BFA0(0, 0xC000000000000000);
    sub_1DEF8D1F8();
    v17 = *(&value + 1);
    v54 = value;
    v18 = *(value + 16);
    v19 = sub_1DEF8D018();
    if (!v19)
    {

      __break(1u);
      goto LABEL_39;
    }

    v20 = v19;
    v21 = sub_1DEF8D048();
    v22 = v18 - v21;
    if (!__OFSUB__(v18, v21))
    {
      sub_1DEF8D038();
      v23 = sub_1DEF8D998();
      v24 = getxattr(a2, (v23 + 32), (v20 + v22), a5, 0, 0);

      if (v24 >= 1)
      {
        result = swift_bridgeObjectRelease_n();
        v25 = *(&value + 1) | 0x8000000000000000;
        *a1 = value;
LABEL_29:
        a1[1] = v25;
        return result;
      }

      type metadata accessor for URL.ExtendedAttributeError(0);
      sub_1DEF89460(&qword_1ECDE58D8, type metadata accessor for URL.ExtendedAttributeError, &protocol conformance descriptor for URL.ExtendedAttributeError);
      swift_allocError();
      *v38 = a3;
      v38[1] = a4;
      v38[2] = v24;

      MEMORY[0x1E12CACF0](v39);
      result = sub_1DEF8D528();
      if ((result & 0x100000000) != 0)
      {
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE58E0, &qword_1DEF9AF00);
      sub_1DEF8CF78();
      sub_1DEF89350(MEMORY[0x1E69E7CC0]);
      sub_1DEF89460(&qword_1ECDE58E8, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
      sub_1DEF8D138();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      result = swift_bridgeObjectRelease_n();
      v40 = v17 | 0x8000000000000000;
      v41 = a1;
      *a1 = v54;
LABEL_32:
      v41[1] = v40;
      return result;
    }

    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (!v10)
  {

    sub_1DEE1BFA0(v9, v8);
    *&value = v9;
    WORD4(value) = v8;
    BYTE10(value) = BYTE2(v8);
    BYTE11(value) = BYTE3(v8);
    BYTE12(value) = BYTE4(v8);
    BYTE13(value) = BYTE5(v8);
    BYTE14(value) = BYTE6(v8);
    v11 = sub_1DEF8D998();
    v12 = getxattr(a2, (v11 + 32), &value, a5, 0, 0);

    if (v12 > 0)
    {
      v13 = value;
      v14 = DWORD2(value) | ((WORD6(value) | (BYTE14(value) << 16)) << 32);
      result = swift_bridgeObjectRelease_n();
      *a1 = v13;
      a1[1] = v14;
      return result;
    }

    type metadata accessor for URL.ExtendedAttributeError(0);
    sub_1DEF89460(&qword_1ECDE58D8, type metadata accessor for URL.ExtendedAttributeError, &protocol conformance descriptor for URL.ExtendedAttributeError);
    swift_allocError();
    *v32 = a3;
    v32[1] = a4;
    v32[2] = v12;

    MEMORY[0x1E12CACF0](v33);
    result = sub_1DEF8D528();
    if ((result & 0x100000000) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE58E0, &qword_1DEF9AF00);
      sub_1DEF8CF78();
      sub_1DEF89350(MEMORY[0x1E69E7CC0]);
      sub_1DEF89460(&qword_1ECDE58E8, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
      sub_1DEF8D138();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v34 = value;
      v35 = DWORD2(value) | ((WORD6(value) | (BYTE14(value) << 16)) << 32);
      result = swift_bridgeObjectRelease_n();
      *a1 = v34;
      a1[1] = v35;
      return result;
    }

    goto LABEL_40;
  }

  v26 = v8 & 0x3FFFFFFFFFFFFFFFLL;

  sub_1DEE1BFF4(v9, v8);
  sub_1DEE1BFA0(v9, v8);
  *a1 = xmmword_1DEF95880;
  sub_1DEE1BFA0(0, 0xC000000000000000);

  v27 = v9 >> 32;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    if (v27 < v9)
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    if (sub_1DEF8D018() && __OFSUB__(v9, sub_1DEF8D048()))
    {
LABEL_37:
      __break(1u);
    }

    sub_1DEF8D068();
    swift_allocObject();
    v42 = sub_1DEF8CFF8();

    v26 = v42;
  }

  if (v27 < v9)
  {
    goto LABEL_34;
  }

  result = sub_1DEF8D018();
  if (!result)
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v43 = result;
  v44 = sub_1DEF8D048();
  v45 = v9 - v44;
  if (__OFSUB__(v9, v44))
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  sub_1DEF8D038();
  v46 = sub_1DEF8D998();
  v47 = getxattr(a2, (v46 + 32), (v43 + v45), a5, 0, 0);

  if (v47 >= 1)
  {
    swift_bridgeObjectRelease_n();

    v25 = v26 | 0x4000000000000000;
    *a1 = v9;
    goto LABEL_29;
  }

  type metadata accessor for URL.ExtendedAttributeError(0);
  sub_1DEF89460(&qword_1ECDE58D8, type metadata accessor for URL.ExtendedAttributeError, &protocol conformance descriptor for URL.ExtendedAttributeError);
  swift_allocError();
  *v48 = a3;
  v48[1] = a4;
  v48[2] = v47;

  MEMORY[0x1E12CACF0](v49);
  result = sub_1DEF8D528();
  if ((result & 0x100000000) == 0)
  {
    v50 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE58E0, &qword_1DEF9AF00);
    sub_1DEF8CF78();
    LODWORD(value) = v50;
    sub_1DEF89350(MEMORY[0x1E69E7CC0]);
    sub_1DEF89460(&qword_1ECDE58E8, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
    sub_1DEF8D138();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    swift_bridgeObjectRelease_n();

    v40 = v26 | 0x4000000000000000;
    v41 = a1;
    *a1 = v9;
    goto LABEL_32;
  }

LABEL_43:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for URL.ExtendedAttributeError(uint64_t a1)
{
  result = qword_1ECDE58F0;
  if (!qword_1ECDE58F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t _s10Foundation3URLV16ReplicatorEngineE22ExtendedAttributeErrorO2eeoiySbAF_AFtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DEF8CF78();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v46 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v41 - v8;
  v10 = type metadata accessor for URL.ExtendedAttributeError(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v41 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE5908, &unk_1DEF9AFE0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v41 - v17;
  v20 = (&v41 + *(v19 + 56) - v17);
  sub_1DEF894A8(a1, &v41 - v17);
  sub_1DEF894A8(a2, v20);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1DEF894A8(v18, v15);
    v32 = *v15;
    v33 = v15[1];
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      if (v32 == *v20 && v33 == v20[1])
      {
      }

      else
      {
        v35 = sub_1DEF8E4E8();

        if ((v35 & 1) == 0)
        {
LABEL_22:
          sub_1DEF896B8(v18);
          goto LABEL_23;
        }
      }

      sub_1DEF896B8(v18);
      v37 = 1;
      return v37 & 1;
    }

LABEL_17:

    sub_1DEF89650(v18);
LABEL_23:
    v37 = 0;
    return v37 & 1;
  }

  v45 = v9;
  sub_1DEF894A8(v18, v12);
  v21 = *(v12 + 1);
  v44 = *v12;
  v22 = *(v12 + 2);
  v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE58E0, &qword_1DEF9AF00) + 64);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v5 + 8))(&v12[v23], v4);
    goto LABEL_17;
  }

  v25 = *v20;
  v24 = v20[1];
  v41 = v20[2];
  v42 = v22;
  v43 = v5;
  v26 = *(v5 + 32);
  v26(v45, &v12[v23], v4);
  v27 = v20 + v23;
  v28 = v46;
  v26(v46, v27, v4);
  if (v44 == v25 && v21 == v24)
  {
  }

  else
  {
    v30 = sub_1DEF8E4E8();

    if ((v30 & 1) == 0)
    {
      v31 = v43;
LABEL_21:
      v39 = *(v31 + 8);
      v39(v28, v4);
      v39(v45, v4);
      goto LABEL_22;
    }
  }

  v31 = v43;
  if (v42 != v41)
  {
    goto LABEL_21;
  }

  sub_1DEF89460(&qword_1ECDE58E8, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
  v36 = v45;
  v37 = sub_1DEF8D128();
  v38 = *(v31 + 8);
  v38(v28, v4);
  v38(v36, v4);
  sub_1DEF896B8(v18);
  return v37 & 1;
}

unint64_t sub_1DEF89350(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4130, &unk_1DEF916F0);
    v3 = sub_1DEF8E148();
    v4 = a1 + 32;

    while (1)
    {
      sub_1DEF89714(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_1DEE13224(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1DEE117C0(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1DEF89460(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DEF894A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL.ExtendedAttributeError(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1DEF89570(uint64_t a1)
{
  sub_1DEF895DC(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_1DEF895DC(uint64_t a1)
{
  if (!qword_1ECDE5900)
  {
    sub_1DEF8CF78();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1ECDE5900);
    }
  }
}

uint64_t sub_1DEF89650(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE5908, &unk_1DEF9AFE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DEF896B8(uint64_t a1)
{
  v2 = type metadata accessor for URL.ExtendedAttributeError(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DEF89714(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3DC8, &unk_1DEF9AFF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ReplicatorError.hashValue.getter()
{
  v1 = *v0;
  sub_1DEF8E7A8();
  MEMORY[0x1E12CBF60](v1);
  return sub_1DEF8E7F8();
}

unint64_t sub_1DEF89840()
{
  result = qword_1ECDE5910;
  if (!qword_1ECDE5910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5910);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ReplicatorError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ReplicatorError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1DEF899E4()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE5918, &unk_1DEF9B0F0);
    sub_1DEE1B548(&unk_1ECDE2D30, &qword_1ECDE5918, &unk_1DEF9B0F0, MEMORY[0x1E695BF88]);
    v1 = sub_1DEF8D5B8();
    *(v0 + 16) = v1;
  }

  return v1;
}

uint64_t (*sub_1DEF89AA8(uint64_t *a1))(void *a1)
{
  a1[1] = v1;
  *a1 = sub_1DEF899E4();
  return sub_1DEEF0A20;
}

uint64_t HandshakeScheduler.__allocating_init(firstLockStateProvider:)(void *a1)
{
  v2 = swift_allocObject();
  HandshakeScheduler.init(firstLockStateProvider:)(a1);
  return v2;
}

void *HandshakeScheduler.init(firstLockStateProvider:)(void *a1)
{
  v2 = v1;
  v32 = a1;
  v37 = *v1;
  v36 = v37;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3A60, &unk_1DEF90810);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v33 = v29 - v4;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3A68, &unk_1DEF9B100);
  v38 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = v29 - v5;
  v6 = sub_1DEF8DD08();
  v30 = *(v6 - 8);
  v31 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DEF8DCD8();
  MEMORY[0x1EEE9AC00](v9);
  v10 = sub_1DEF8D6D8();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v1[2] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE5918, &unk_1DEF9B0F0);
  swift_allocObject();
  v1[3] = sub_1DEF8D598();
  v11 = sub_1DEE3C630();
  v29[1] = "isAwayFromCompanion";
  v29[2] = v11;
  sub_1DEF8D6C8();
  v39 = MEMORY[0x1E69E7CC0];
  sub_1DEE2BC18(&qword_1ECDE2C10, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4FF0, &unk_1DEF904D0);
  sub_1DEE1B548(&qword_1ECDE2C30, &unk_1ECDE4FF0, &unk_1DEF904D0, MEMORY[0x1E69E6328]);
  sub_1DEF8DE08();
  (*(v30 + 104))(v8, *MEMORY[0x1E69E8098], v31);
  v12 = sub_1DEF8DD38();
  v13 = MEMORY[0x1E69E7CD0];
  v14 = MEMORY[0x1E69E7CC8];
  v1[4] = v12;
  v1[5] = v13;
  v1[6] = v14;
  v1[7] = v14;
  v1[13] = v13;
  v15 = v32;
  sub_1DEE29594(v32, (v1 + 8));
  v16 = v15[3];
  v17 = v15[4];
  __swift_project_boxed_opaque_existential_1(v15, v16);
  v39 = (*(v17 + 8))(v16, v17);
  v18 = v1[4];
  v40 = v18;
  v19 = sub_1DEF8DCF8();
  v20 = v33;
  (*(*(v19 - 8) + 56))(v33, 1, 1, v19);
  v21 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3A70, &unk_1DEF90A40);
  sub_1DEE1B548(&qword_1ECDE2D68, &qword_1ECDE3A70, &unk_1DEF90A40, MEMORY[0x1E695BED8]);
  sub_1DEE2BC18(&qword_1ECDE2C08, sub_1DEE3C630, MEMORY[0x1E69E8028]);
  v22 = v34;
  sub_1DEF8D5D8();
  sub_1DEF8A180(v20);

  v23 = swift_allocObject();
  swift_weakInit();
  v24 = swift_allocObject();
  v26 = v36;
  v25 = v37;
  *(v24 + 16) = *(v36 + 80);
  *(v24 + 32) = *(v25 + 96);
  *(v24 + 40) = *(v26 + 104);
  *(v24 + 56) = *(v25 + 120);
  *(v24 + 64) = v23;
  sub_1DEE1B548(&qword_1ECDE2DD8, &qword_1ECDE3A68, &unk_1DEF9B100, MEMORY[0x1E695BE98]);
  v27 = v35;
  sub_1DEF8D5E8();

  (*(v38 + 8))(v22, v27);
  swift_beginAccess();
  sub_1DEF8D568();
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_1(v15);
  return v2;
}

uint64_t sub_1DEF8A180(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3A60, &unk_1DEF90810);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DEF8A1E8(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (v2)
    {
      sub_1DEF8A264();
    }
  }

  return result;
}

uint64_t sub_1DEF8A264()
{
  v1 = v0;
  v2 = sub_1DEF8D788();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = (&v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + 32);
  *v6 = v7;
  (*(v3 + 104))(v6, *MEMORY[0x1E69E8020], v2, v4);
  v8 = v7;
  LOBYTE(v7) = sub_1DEF8D7B8();
  (*(v3 + 8))(v6, v2);
  if (v7)
  {
    if (qword_1ECDE3818 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
LABEL_17:
    __break(1u);
  }

  swift_once();
LABEL_3:
  v9 = sub_1DEF8D508();
  __swift_project_value_buffer(v9, qword_1ECDF6118);
  v10 = sub_1DEF8D4D8();
  v11 = sub_1DEF8DCB8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1DEE0F000, v10, v11, "Processing pended handshakes", v12, 2u);
    MEMORY[0x1E12CCD70](v12, -1, -1);
  }

  swift_beginAccess();
  v13 = *(v1 + 56);
  v14 = 1 << *(v13 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v13 + 64);
  v17 = (v14 + 63) >> 6;

  v18 = 0;
  if (v16)
  {
    while (1)
    {
      v19 = v18;
LABEL_13:
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v21 = v20 | (v19 << 6);
      v22 = *(v13 + 48) + 56 * v21;
      v23 = *(v22 + 8);
      v24 = *(v22 + 16);
      v25 = *(v22 + 24);
      v26 = *(v22 + 32);
      v27 = *(v13 + 56) + 16 * v21;
      v28 = *v27;
      LOBYTE(v27) = *(v27 + 8);
      v32[0] = *v22;
      v32[1] = v23;
      v32[2] = v24;
      v32[3] = v25;
      v33 = v26;
      v34 = *(v22 + 40);
      v30 = v28;
      v31 = v27;

      sub_1DEF8AE6C(v32, &v30);

      if (!v16)
      {
        goto LABEL_9;
      }
    }
  }

  while (1)
  {
LABEL_9:
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
      goto LABEL_17;
    }

    if (v19 >= v17)
    {
      break;
    }

    v16 = *(v13 + 64 + 8 * v19);
    ++v18;
    if (v16)
    {
      v18 = v19;
      goto LABEL_13;
    }
  }

  swift_beginAccess();
  *(v1 + 56) = MEMORY[0x1E69E7CC8];
}

uint64_t HandshakeScheduler.deinit()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 64));

  return v0;
}

uint64_t HandshakeScheduler.__deallocating_deinit()
{
  HandshakeScheduler.deinit();

  return swift_deallocClassInstance();
}

uint64_t HandshakeScheduler.scheduleHandshake(with:schedule:)(uint64_t a1, uint64_t *a2)
{
  v5 = sub_1DEF8D698();
  v20 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1DEF8D6D8();
  v8 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  v23[0] = *a1;
  v23[1] = v11;
  v23[2] = *(a1 + 32);
  v24 = *(a1 + 48);
  v12 = *a2;
  v13 = *(a2 + 8);
  v14 = swift_allocObject();
  v15 = *(a1 + 16);
  *(v14 + 24) = *a1;
  *(v14 + 16) = v2;
  *(v14 + 40) = v15;
  *(v14 + 56) = *(a1 + 32);
  *(v14 + 72) = *(a1 + 48);
  *(v14 + 80) = v12;
  *(v14 + 88) = v13;
  aBlock[4] = sub_1DEF8AA10;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DEE3F0C0;
  aBlock[3] = &block_descriptor_24;
  v16 = _Block_copy(aBlock);

  sub_1DEEA8BAC(v23, v21);
  sub_1DEF8D6B8();
  v21[0] = MEMORY[0x1E69E7CC0];
  sub_1DEE2BC18(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
  sub_1DEE1B548(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800, MEMORY[0x1E69E6328]);
  sub_1DEF8DE08();
  MEMORY[0x1E12CB4D0](0, v10, v7, v16);
  _Block_release(v16);
  (*(v20 + 8))(v7, v5);
  (*(v8 + 8))(v10, v19);
}

void sub_1DEF8A92C(void *a1, __int128 *a2, uint64_t a3, char a4)
{
  v7 = a1[11];
  v8 = a1[12];
  __swift_project_boxed_opaque_existential_1(a1 + 8, v7);
  if ((*(v8 + 16))(v7, v8))
  {
    v9 = a2[1];
    v13 = *a2;
    v14 = v9;
    v15 = a2[2];
    v16 = *(a2 + 6);
    v11 = a3;
    v12 = a4;
    sub_1DEF8AE6C(&v13, &v11);
  }

  else
  {
    v10 = a2[1];
    v13 = *a2;
    v14 = v10;
    v15 = a2[2];
    v16 = *(a2 + 6);
    v11 = a3;
    v12 = a4;
    sub_1DEF8AA24(&v13, &v11);
  }
}

void sub_1DEF8AA24(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1DEF8D788();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(a1 + 16);
  v43[0] = *a1;
  v43[1] = v10;
  v43[2] = *(a1 + 32);
  v44 = *(a1 + 48);
  v11 = *a2;
  v12 = *(a2 + 8);
  v13 = *(v3 + 32);
  *v9 = v13;
  (*(v7 + 104))(v9, *MEMORY[0x1E69E8020], v6);
  v14 = v13;
  LOBYTE(v13) = sub_1DEF8D7B8();
  (*(v7 + 8))(v9, v6);
  if (v13)
  {
    if (qword_1ECDE3818 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v15 = sub_1DEF8D508();
  __swift_project_value_buffer(v15, qword_1ECDF6118);
  sub_1DEEA8BAC(v43, &v41);
  v16 = sub_1DEF8D4D8();
  v17 = sub_1DEF8DCB8();
  sub_1DEEA8CAC(v43);
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v39 = v19;
    *v18 = 136446466;
    *(v18 + 4) = sub_1DEE12A5C(*&v43[0], *(&v43[0] + 1), &v39);
    *(v18 + 12) = 2082;
    v41 = v11;
    v42 = v12;
    v20 = ReplicationSchedule.description.getter();
    v22 = sub_1DEE12A5C(v20, v21, &v39);

    *(v18 + 14) = v22;
    _os_log_impl(&dword_1DEE0F000, v16, v17, "Pending handshake for %{public}s with schedule %{public}s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12CCD70](v19, -1, -1);
    MEMORY[0x1E12CCD70](v18, -1, -1);
  }

  swift_beginAccess();
  v23 = *(v3 + 56);
  if (!*(v23 + 16))
  {
    goto LABEL_13;
  }

  v24 = sub_1DEEAF880(v43);
  if ((v25 & 1) == 0)
  {

    goto LABEL_13;
  }

  v26 = *(v23 + 56) + 16 * v24;
  v27 = *v26;
  v28 = *(v26 + 8);

  if (v28)
  {
    if (v28 == 1)
    {
      if (!v12)
      {
        goto LABEL_13;
      }

      if (v12 != 1)
      {
        goto LABEL_18;
      }

LABEL_15:
      if (v11 >= v27)
      {
        goto LABEL_18;
      }

LABEL_13:
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v38 = *(v3 + 56);
      *(v3 + 56) = 0x8000000000000000;
      sub_1DEF3FF18(v11, v12, v43, isUniquelyReferenced_nonNull_native);
      *(v3 + 56) = v38;
      swift_endAccess();
      return;
    }

    if (v12 < 2)
    {
      goto LABEL_13;
    }
  }

  else if (!v12)
  {
    goto LABEL_15;
  }

LABEL_18:
  v30 = sub_1DEF8D4D8();
  v31 = sub_1DEF8DCB8();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v38 = v33;
    v39 = v27;
    *v32 = 136446210;
    v40 = v28;
    v34 = ReplicationSchedule.description.getter();
    v36 = sub_1DEE12A5C(v34, v35, &v38);

    *(v32 + 4) = v36;
    _os_log_impl(&dword_1DEE0F000, v30, v31, "Not replacing existing pended handshake with schedule %{public}s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v33);
    MEMORY[0x1E12CCD70](v33, -1, -1);
    MEMORY[0x1E12CCD70](v32, -1, -1);
  }
}

uint64_t sub_1DEF8AE6C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v3;
  v7 = sub_1DEF8D788();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(a1 + 16);
  v98 = *a1;
  v99 = v11;
  v100 = *(a1 + 32);
  v101 = *(a1 + 48);
  v83 = *a2;
  v84 = *(a2 + 8);
  v12 = v3[4];
  *v10 = v12;
  (*(v8 + 104))(v10, *MEMORY[0x1E69E8020], v7);
  v13 = v12;
  LOBYTE(v12) = sub_1DEF8D7B8();
  (*(v8 + 8))(v10, v7);
  if (v12)
  {
    if (qword_1ECDE3818 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v14 = sub_1DEF8D508();
  v15 = __swift_project_value_buffer(v14, qword_1ECDF6118);
  sub_1DEEA8BAC(&v98, &v94);
  v16 = sub_1DEF8D4D8();
  v17 = sub_1DEF8DCB8();
  sub_1DEEA8CAC(&v98);
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v88[0] = v19;
    *v18 = 136446466;
    *(v18 + 4) = sub_1DEE12A5C(v98, *(&v98 + 1), v88);
    *(v18 + 12) = 2082;
    *&v94 = v83;
    BYTE8(v94) = v84;
    v20 = ReplicationSchedule.description.getter();
    v22 = sub_1DEE12A5C(v20, v21, v88);

    *(v18 + 14) = v22;
    _os_log_impl(&dword_1DEE0F000, v16, v17, "Scheduling handshake for %{public}s with schedule %{public}s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12CCD70](v19, -1, -1);
    MEMORY[0x1E12CCD70](v18, -1, -1);
  }

  swift_beginAccess();
  v23 = v3[6];
  if (*(v23 + 16))
  {

    v24 = sub_1DEEAF880(&v98);
    if (v25)
    {
      sub_1DEE29594(*(v23 + 56) + 40 * v24, &v94);

      sub_1DEE2F1AC(&v94, v88);
      v26 = v89;
      v27 = v90;
      __swift_project_boxed_opaque_existential_1(v88, v89);
      (*(v27 + 16))(&v94, v26, v27);
      if (BYTE8(v94))
      {
        if (BYTE8(v94) != 1)
        {
          if (v84 >= 2)
          {
LABEL_34:
            sub_1DEE29594(v88, &v94);
            v67 = sub_1DEF8D4D8();
            v68 = sub_1DEF8DCB8();
            if (os_log_type_enabled(v67, v68))
            {
              v69 = swift_slowAlloc();
              v70 = swift_slowAlloc();
              v85 = v70;
              *v69 = 136446466;
              v71 = *(&v95 + 1);
              v72 = v96;
              __swift_project_boxed_opaque_existential_1(&v94, *(&v95 + 1));
              (*(v72 + 16))(&v91, v71, v72);
              v86 = v91;
              v87 = BYTE8(v91);
              v73 = ReplicationSchedule.description.getter();
              v75 = v74;
              __swift_destroy_boxed_opaque_existential_1(&v94);
              v76 = sub_1DEE12A5C(v73, v75, &v85);

              *(v69 + 4) = v76;
              *(v69 + 12) = 2082;
              *&v91 = v83;
              BYTE8(v91) = v84;
              v77 = ReplicationSchedule.description.getter();
              v79 = sub_1DEE12A5C(v77, v78, &v85);

              *(v69 + 14) = v79;
              _os_log_impl(&dword_1DEE0F000, v67, v68, "Not replacing existing scheduled handshake (%{public}s) with schedule %{public}s", v69, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x1E12CCD70](v70, -1, -1);
              MEMORY[0x1E12CCD70](v69, -1, -1);
            }

            else
            {

              __swift_destroy_boxed_opaque_existential_1(&v94);
            }

            v52 = v88;
            return __swift_destroy_boxed_opaque_existential_1(v52);
          }

          goto LABEL_31;
        }

        if (!v84)
        {
LABEL_31:
          sub_1DEE29594(v88, &v94);
          v54 = sub_1DEF8D4D8();
          v55 = sub_1DEF8DCB8();
          if (os_log_type_enabled(v54, v55))
          {
            v56 = swift_slowAlloc();
            v82 = swift_slowAlloc();
            v85 = v82;
            *v56 = 136446466;
            v58 = *(&v95 + 1);
            v57 = v96;
            __swift_project_boxed_opaque_existential_1(&v94, *(&v95 + 1));
            (*(v57 + 16))(&v91, v58, v57);
            v86 = v91;
            v87 = BYTE8(v91);
            v59 = ReplicationSchedule.description.getter();
            v61 = v60;
            __swift_destroy_boxed_opaque_existential_1(&v94);
            v62 = sub_1DEE12A5C(v59, v61, &v85);

            *(v56 + 4) = v62;
            *(v56 + 12) = 2082;
            *&v91 = v83;
            BYTE8(v91) = v84;
            v63 = ReplicationSchedule.description.getter();
            v65 = sub_1DEE12A5C(v63, v64, &v85);

            *(v56 + 14) = v65;
            _os_log_impl(&dword_1DEE0F000, v54, v55, "Canceling and replacing existing scheduled handshake (%{public}s) with schedule %{public}s", v56, 0x16u);
            v66 = v82;
            swift_arrayDestroy();
            MEMORY[0x1E12CCD70](v66, -1, -1);
            MEMORY[0x1E12CCD70](v56, -1, -1);
          }

          else
          {

            __swift_destroy_boxed_opaque_existential_1(&v94);
          }

          v82 = v15;
          v80 = v89;
          v81 = v90;
          __swift_project_boxed_opaque_existential_1(v88, v89);
          (*(v81 + 48))(v80, v81);
          v93 = 0;
          v91 = 0u;
          v92 = 0u;
          swift_beginAccess();
          sub_1DEEA8BAC(&v98, &v94);
          sub_1DEF33FFC(&v91, &v98);
          swift_endAccess();
          __swift_destroy_boxed_opaque_existential_1(v88);
          goto LABEL_14;
        }

        if (v84 != 1)
        {
          goto LABEL_34;
        }
      }

      else if (v84)
      {
        goto LABEL_34;
      }

      if (v83 >= v94)
      {
        goto LABEL_34;
      }

      goto LABEL_31;
    }
  }

  v82 = v15;
LABEL_14:
  v28 = swift_allocObject();
  swift_weakInit();
  v29 = swift_allocObject();
  v30 = v6[10];
  *(v29 + 16) = v30;
  v31 = v6[11];
  *(v29 + 24) = v31;
  v32 = v6[12];
  *(v29 + 32) = v32;
  v33 = v6[13];
  *(v29 + 40) = v33;
  v34 = v6[14];
  *(v29 + 48) = v34;
  v35 = v6[15];
  v36 = v99;
  *(v29 + 72) = v98;
  *(v29 + 56) = v35;
  *(v29 + 64) = v28;
  *(v29 + 88) = v36;
  *(v29 + 104) = v100;
  *(v29 + 120) = v101;
  if (v84)
  {
    v94 = v98;
    v95 = v99;
    v96 = v100;
    v97 = v101;
    v86 = v83;
    if (v84 == 1)
    {
      v87 = 1;
      v37 = *(v34 + 32);
      *(&v92 + 1) = v31;
      v93 = v34;
      __swift_allocate_boxed_opaque_existential_1(&v91);
      sub_1DEEA8BAC(&v98, v88);
      sub_1DEEA8BAC(&v98, v88);

      v37(&v94, &v86, sub_1DEF8CC18, v29, v31, v34);
    }

    else
    {
      v87 = 2;
      v39 = *(v35 + 32);
      *(&v92 + 1) = v32;
      v93 = v35;
      __swift_allocate_boxed_opaque_existential_1(&v91);
      sub_1DEEA8BAC(&v98, v88);
      sub_1DEEA8BAC(&v98, v88);

      v39(&v94, &v86, sub_1DEF8CC18, v29, v32, v35);
    }
  }

  else
  {
    v94 = v98;
    v95 = v99;
    v96 = v100;
    v97 = v101;
    v86 = v83;
    v87 = 0;
    v38 = *(v33 + 32);
    *(&v92 + 1) = v30;
    v93 = v33;
    __swift_allocate_boxed_opaque_existential_1(&v91);
    sub_1DEEA8BAC(&v98, v88);
    sub_1DEEA8BAC(&v98, v88);

    v38(&v94, &v86, sub_1DEF8CC18, v29, v30, v33);
  }

  sub_1DEE29594(&v91, v88);
  swift_beginAccess();
  sub_1DEEA8BAC(&v98, &v94);
  sub_1DEF33FFC(v88, &v98);
  swift_endAccess();
  swift_beginAccess();
  v40 = v3[5];

  v41 = sub_1DEF025A0(&v98, v40);

  if (v41)
  {
    sub_1DEEA8BAC(&v98, &v94);
    v42 = sub_1DEF8D4D8();
    v43 = sub_1DEF8DCB8();
    sub_1DEEA8CAC(&v98);
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *&v94 = v45;
      *v44 = 136446210;
      *(v44 + 4) = sub_1DEE12A5C(v98, *(&v98 + 1), &v94);
      _os_log_impl(&dword_1DEE0F000, v42, v43, "Handshake task is already executing; delaying new task for %{public}s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v45);
      MEMORY[0x1E12CCD70](v45, -1, -1);
      MEMORY[0x1E12CCD70](v44, -1, -1);
    }
  }

  else
  {
    sub_1DEEA8BAC(&v98, &v94);
    v46 = sub_1DEF8D4D8();
    v47 = sub_1DEF8DCB8();
    sub_1DEEA8CAC(&v98);
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *&v94 = v49;
      *v48 = 136446210;
      *(v48 + 4) = sub_1DEE12A5C(v98, *(&v98 + 1), &v94);
      _os_log_impl(&dword_1DEE0F000, v46, v47, "Starting handshake task for %{public}s", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v49);
      MEMORY[0x1E12CCD70](v49, -1, -1);
      MEMORY[0x1E12CCD70](v48, -1, -1);
    }

    v50 = *(&v92 + 1);
    v51 = v93;
    __swift_project_boxed_opaque_existential_1(&v91, *(&v92 + 1));
    (*(v51 + 40))(v50, v51);
  }

  v52 = &v91;
  return __swift_destroy_boxed_opaque_existential_1(v52);
}

uint64_t HandshakeScheduler.completeHandshake(with:)(uint64_t a1)
{
  v3 = sub_1DEF8D698();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1DEF8D6D8();
  v7 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  v19[0] = *a1;
  v19[1] = v10;
  v19[2] = *(a1 + 32);
  v20 = *(a1 + 48);
  v15[1] = *(v1 + 32);
  v11 = swift_allocObject();
  v12 = *(a1 + 16);
  *(v11 + 16) = *a1;
  *(v11 + 32) = v12;
  *(v11 + 48) = *(a1 + 32);
  *(v11 + 64) = *(a1 + 48);
  *(v11 + 72) = v1;
  aBlock[4] = sub_1DEF8C170;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DEE3F0C0;
  aBlock[3] = &block_descriptor_12;
  v13 = _Block_copy(aBlock);
  sub_1DEEA8BAC(v19, v17);

  sub_1DEF8D6B8();
  v17[0] = MEMORY[0x1E69E7CC0];
  sub_1DEE2BC18(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
  sub_1DEE1B548(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800, MEMORY[0x1E69E6328]);
  sub_1DEF8DE08();
  MEMORY[0x1E12CB4D0](0, v9, v6, v13);
  _Block_release(v13);
  (*(v4 + 8))(v6, v3);
  (*(v7 + 8))(v9, v16);
}

void sub_1DEF8BDA0(uint64_t *a1, uint64_t a2)
{
  if (qword_1ECDE3818 != -1)
  {
    swift_once();
  }

  v4 = sub_1DEF8D508();
  __swift_project_value_buffer(v4, qword_1ECDF6118);
  sub_1DEEA8BAC(a1, &v25);
  v5 = sub_1DEF8D4D8();
  v6 = sub_1DEF8DCB8();
  sub_1DEEA8CAC(a1);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *&v25 = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_1DEE12A5C(*a1, a1[1], &v25);
    _os_log_impl(&dword_1DEE0F000, v5, v6, "Handshake completed: %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1E12CCD70](v8, -1, -1);
    MEMORY[0x1E12CCD70](v7, -1, -1);
  }

  swift_beginAccess();
  sub_1DEECB998(a1, &v25);
  swift_endAccess();
  if (*(&v25 + 1))
  {
    sub_1DEE46550(v25, *(&v25 + 1), v26, v27);
    swift_beginAccess();
    v9 = *(a2 + 48);
    if (*(v9 + 16))
    {

      v10 = sub_1DEEAF880(a1);
      if (v11)
      {
        sub_1DEE29594(*(v9 + 56) + 40 * v10, &v25);

        sub_1DEE2F1AC(&v25, v22);
        sub_1DEEA8BAC(a1, &v25);
        v12 = sub_1DEF8D4D8();
        v13 = sub_1DEF8DCB8();
        sub_1DEEA8CAC(a1);
        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          v15 = swift_slowAlloc();
          *&v25 = v15;
          *v14 = 136446210;
          *(v14 + 4) = sub_1DEE12A5C(*a1, a1[1], &v25);
          _os_log_impl(&dword_1DEE0F000, v12, v13, "Starting next handshake for: %{public}s", v14, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v15);
          MEMORY[0x1E12CCD70](v15, -1, -1);
          MEMORY[0x1E12CCD70](v14, -1, -1);
        }

        v16 = v23;
        v17 = v24;
        __swift_project_boxed_opaque_existential_1(v22, v23);
        (*(v17 + 40))(v16, v17);
        __swift_destroy_boxed_opaque_existential_1(v22);
      }

      else
      {
      }
    }
  }

  else
  {
    sub_1DEEA8BAC(a1, &v25);
    v18 = sub_1DEF8D4D8();
    v19 = sub_1DEF8DCB8();
    sub_1DEEA8CAC(a1);
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *&v25 = v21;
      *v20 = 136446210;
      *(v20 + 4) = sub_1DEE12A5C(*a1, a1[1], &v25);
      _os_log_impl(&dword_1DEE0F000, v18, v19, "No executing handshake found for: %{public}s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x1E12CCD70](v21, -1, -1);
      MEMORY[0x1E12CCD70](v20, -1, -1);
    }
  }
}

uint64_t sub_1DEF8C314(uint64_t a1, uint64_t a2)
{
  v3 = sub_1DEF8D698();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DEF8D6D8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v17[2] = *(result + 32);
    v12 = result;
    v13 = swift_allocObject();
    v14 = *(a2 + 16);
    *(v13 + 24) = *a2;
    *(v13 + 16) = v12;
    v17[1] = v12;
    *(v13 + 40) = v14;
    *(v13 + 56) = *(a2 + 32);
    *(v13 + 72) = *(a2 + 48);
    aBlock[4] = sub_1DEF8CC84;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DEE3F0C0;
    aBlock[3] = &block_descriptor_22;
    v15 = v8;
    v16 = _Block_copy(aBlock);

    sub_1DEEA8BAC(a2, v18);
    sub_1DEF8D6B8();
    v18[0] = MEMORY[0x1E69E7CC0];
    sub_1DEE2BC18(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
    v17[0] = v7;
    sub_1DEE1B548(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800, MEMORY[0x1E69E6328]);
    sub_1DEF8DE08();
    MEMORY[0x1E12CB4D0](0, v10, v6, v16);
    _Block_release(v16);
    (*(v4 + 8))(v6, v3);
    (*(v15 + 8))(v10, v17[0]);
  }

  return result;
}

void sub_1DEF8C64C(uint64_t a1)
{
  v3 = sub_1DEF8D788();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(a1 + 16);
  v49 = *a1;
  v50 = v7;
  v51 = *(a1 + 32);
  v52 = *(a1 + 48);
  v8 = v1[4];
  *v6 = v8;
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8020], v3);
  v9 = v8;
  LOBYTE(v8) = sub_1DEF8D7B8();
  (*(v4 + 8))(v6, v3);
  if ((v8 & 1) == 0)
  {
    __break(1u);
LABEL_15:
    swift_once();
    goto LABEL_6;
  }

  swift_beginAccess();
  v10 = v1[5];

  v11 = sub_1DEF025A0(&v49, v10);

  if (v11)
  {
    return;
  }

  swift_beginAccess();
  v12 = v1[6];
  if (!*(v12 + 16))
  {
    return;
  }

  v13 = sub_1DEEAF880(&v49);
  if ((v14 & 1) == 0)
  {

    return;
  }

  sub_1DEE29594(*(v12 + 56) + 40 * v13, &v38);

  sub_1DEE2F1AC(&v38, v46);
  if (qword_1ECDE3818 != -1)
  {
    goto LABEL_15;
  }

LABEL_6:
  v15 = sub_1DEF8D508();
  __swift_project_value_buffer(v15, qword_1ECDF6118);
  sub_1DEE29594(v46, v43);
  sub_1DEEA8BAC(&v49, &v38);
  v16 = sub_1DEF8D4D8();
  v17 = sub_1DEF8DCB8();
  sub_1DEEA8CAC(&v49);
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v37[0] = v19;
    *v18 = 136446466;
    *(v18 + 4) = sub_1DEE12A5C(v49, *(&v49 + 1), v37);
    *(v18 + 12) = 2082;
    v20 = v44;
    v21 = v45;
    __swift_project_boxed_opaque_existential_1(v43, v44);
    (*(v21 + 16))(&v38, v20, v21);
    *&v35[0] = v38;
    BYTE8(v35[0]) = BYTE8(v38);
    v22 = ReplicationSchedule.description.getter();
    v24 = v23;
    __swift_destroy_boxed_opaque_existential_1(v43);
    v25 = sub_1DEE12A5C(v22, v24, v37);

    *(v18 + 14) = v25;
    _os_log_impl(&dword_1DEE0F000, v16, v17, "Scheduled handshake task fired for %{public}s; schedule: %{public}s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12CCD70](v19, -1, -1);
    MEMORY[0x1E12CCD70](v18, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v43);
  }

  v26 = v47;
  v27 = v48;
  __swift_project_boxed_opaque_existential_1(v46, v47);
  v28 = *(v27 + 16);
  sub_1DEEA8BAC(&v49, &v38);
  v28(v35, v26, v27);
  v38 = v49;
  v39 = v50;
  v40 = v51;
  *&v41 = v52;
  *(&v41 + 1) = *&v35[0];
  v42 = BYTE8(v35[0]);
  sub_1DEEA8BAC(&v49, v35);
  v29 = sub_1DEF8D4D8();
  v30 = sub_1DEF8DCB8();
  sub_1DEEA8CAC(&v49);
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *&v35[0] = v32;
    *v31 = 136446210;
    *(v31 + 4) = sub_1DEE12A5C(v49, *(&v49 + 1), v35);
    _os_log_impl(&dword_1DEE0F000, v29, v30, "Scheduled handshake task fired for %{public}s; canceling", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v32);
    MEMORY[0x1E12CCD70](v32, -1, -1);
    MEMORY[0x1E12CCD70](v31, -1, -1);
  }

  v33 = v47;
  v34 = v48;
  __swift_project_boxed_opaque_existential_1(v46, v47);
  (*(v34 + 48))(v33, v34);
  memset(v37, 0, 40);
  swift_beginAccess();
  sub_1DEEA8BAC(&v49, v35);
  sub_1DEF33FFC(v37, &v49);
  swift_endAccess();
  swift_beginAccess();
  sub_1DEEA8BAC(&v49, v35);
  sub_1DEF39C30(v35, &v49);
  swift_endAccess();

  v35[2] = v40;
  v35[3] = v41;
  v36 = v42;
  v35[0] = v38;
  v35[1] = v39;
  sub_1DEF8D588();
  sub_1DEF8CCD4(&v38);
  __swift_destroy_boxed_opaque_existential_1(v46);
}

uint64_t objectdestroy_5Tm(uint64_t a1)
{

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

void sub_1DEF8CC84()
{
  v1 = *(v0 + 40);
  v2[0] = *(v0 + 24);
  v2[1] = v1;
  v2[2] = *(v0 + 56);
  v3 = *(v0 + 72);
  sub_1DEF8C64C(v2);
}