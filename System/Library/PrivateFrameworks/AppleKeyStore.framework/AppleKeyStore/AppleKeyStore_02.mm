unint64_t sub_1E0B7B5D0(uint64_t a1)
{
  v1 = sub_1E0BA89F8();
  v49 = *(v1 - 8);
  v50 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE78D80, &qword_1E0BAE900);
  MEMORY[0x1EEE9AC00](v48);
  v5 = &v43 - v4;
  v6 = sub_1E0BA8A88();
  v47 = *(v6 - 8);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v43 - v10;
  v12 = sub_1E0BA8B08();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v51;
  sub_1E0BA8C48();
  if (v16)
  {
    sub_1E0B67560();
    swift_allocError();
    *v18 = 25;
    swift_willThrow();
    MEMORY[0x1E12E8B70](v16);
  }

  else
  {
    v44 = v9;
    v45 = v11;
    v46 = v13;
    v51 = v12;
    sub_1E0BA89E8();
    v17 = v48;
    sub_1E0BA8C58();
    v43 = v15;
    (*(v49 + 8))(v3, v50);
    v20 = *(v17 + 48);
    v21 = *(v47 + 32);
    v22 = v6;
    v21(v45, v5, v6);
    v23 = v44;
    v21(v44, &v5[v20], v6);
    v27 = sub_1E0BA8A68();
    if (v26)
    {
      v3 = v26;
      v29 = v25;
      v30 = v24;
      sub_1E0BA8EA8();
      swift_unknownObjectRetain_n();
      v31 = swift_dynamicCastClass();
      if (!v31)
      {
        swift_unknownObjectRelease();
        v31 = MEMORY[0x1E69E7CC0];
      }

      v32 = *(v31 + 16);

      if (__OFSUB__(v3 >> 1, v29))
      {
        __break(1u);
        goto LABEL_24;
      }

      if (v32 != (v3 >> 1) - v29)
      {
        goto LABEL_25;
      }

      v3 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      v22 = v6;
      if (v3)
      {
        goto LABEL_14;
      }

      v3 = MEMORY[0x1E69E7CC0];
      goto LABEL_13;
    }

    while (1)
    {
      sub_1E0B726FC(v27, v24, v25, v26);
      v3 = v28;
LABEL_13:
      swift_unknownObjectRelease();
LABEL_14:
      v27 = sub_1E0BA8A68();
      if ((v35 & 1) == 0)
      {
        goto LABEL_15;
      }

      v39 = v35;
      v29 = v34;
      v50 = v33;
      sub_1E0BA8EA8();
      swift_unknownObjectRetain_n();
      v40 = swift_dynamicCastClass();
      if (!v40)
      {
        swift_unknownObjectRelease();
        v40 = MEMORY[0x1E69E7CC0];
      }

      v30 = *(v40 + 16);

      if (!__OFSUB__(v39 >> 1, v29))
      {
        break;
      }

LABEL_24:
      __break(1u);
LABEL_25:
      swift_unknownObjectRelease();
      v26 = v3;
      v25 = v29;
      v24 = v30;
      v22 = v6;
    }

    if (v30 != (v39 >> 1) - v29)
    {
      swift_unknownObjectRelease();
      v35 = v39;
      v34 = v29;
      v33 = v50;
      v22 = v6;
LABEL_15:
      sub_1E0B726FC(v27, v33, v34, v35);
      v37 = v46;
      v36 = v47;
      v38 = v51;
      goto LABEL_21;
    }

    v41 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    v22 = v6;
    v37 = v46;
    v36 = v47;
    v38 = v51;
    if (v41)
    {
      goto LABEL_22;
    }

LABEL_21:
    swift_unknownObjectRelease();
LABEL_22:
    v42 = *(v36 + 8);
    v42(v23, v22);
    v42(v45, v22);
    (*(v37 + 8))(v43, v38);
  }

  return v3;
}

uint64_t sub_1E0B7BB24@<X0>(uint64_t a2@<X8>)
{
  v17 = a2;
  v3 = sub_1E0BA89F8();
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1E0BA8A88();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v16 - v10;
  sub_1E0BA8B88();
  result = sub_1E0BA8B98();
  if (!v2)
  {
    v13 = v17;
    sub_1E0BA8B88();
    sub_1E0BA8B98();
    v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE78D80, &qword_1E0BAE900) + 48);
    v15 = *(v6 + 32);
    v15(v13, v11, v5);
    return (v15)(v13 + v14, v9, v5);
  }

  return result;
}

unint64_t sub_1E0B7BD50(void *a1, uint64_t a2)
{
  v3 = v2;
  v61 = sub_1E0BA8A28();
  v6 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v50 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E0BA8AE8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v51 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for der_key(0);
  MEMORY[0x1EEE9AC00](v48);
  v49 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for DERDictionaryItem(0);
  v54 = *(v46 - 8);
  v12 = MEMORY[0x1EEE9AC00](v46);
  v47 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v55 = &v41 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v58 = (&v41 - v17);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v59 = &v41 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v41 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v62 = &v41 - v23;
  v63 = 0;
  if (!a2 || (swift_beginAccess(), !*(a2 + 16)))
  {
    v52 = 0;
    goto LABEL_43;
  }

  v42 = v6;
  v43 = a1;
  v44 = v9;
  v45 = v8;

  v25 = v24[2];
  v52 = v24;
  if (!v25)
  {
LABEL_42:
    v8 = v45;
    v9 = v44;
    a1 = v43;
    v6 = v42;
LABEL_43:
    v22 = v49;
    if (qword_1ECE783E8 == -1)
    {
      goto LABEL_44;
    }

    goto LABEL_58;
  }

  a1 = v24;
  v8 = 0;
  v6 = 0;
  while (v8 < v25)
  {
    v26 = *(v54 + 72);
    v60 = (*(v54 + 80) + 32) & ~*(v54 + 80);
    v57 = v8;
    v27 = a1 + v60 + v26 * v8;
    v8 = v62;
    v28 = sub_1E0B76324(v27, v62, type metadata accessor for DERDictionaryItem);
    v56 = &v41;
    if (!v6)
    {
      v6 = MEMORY[0x1E69E7CC0];
    }

    v63 = v6;
    MEMORY[0x1EEE9AC00](v28);
    *(&v41 - 2) = v8;
    v29 = sub_1E0B66E60(sub_1E0B765CC, (&v41 - 4), v6);
    if (v30)
    {
      v9 = v6[2];
      v31 = v9;
    }

    else
    {
      v31 = v29;
      v9 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        goto LABEL_57;
      }

      v53 = v3;
      a1 = v6 + 2;
      v32 = v6[2];
      if (v9 != v32)
      {
        v3 = v60 + v26 * v9;
        while (v9 < v32)
        {
          sub_1E0B76324(v6 + v3, v22, type metadata accessor for DERDictionaryItem);
          sub_1E0B84B6C(&qword_1ECE78818, MEMORY[0x1E69D4E48], MEMORY[0x1E69D4E58]);
          v8 = sub_1E0BA8CA8();
          sub_1E0B797D0(v22, type metadata accessor for DERDictionaryItem);
          if ((v8 & 1) == 0)
          {
            if (v9 != v31)
            {
              if (v31 < 0)
              {
                goto LABEL_49;
              }

              a1 = *a1;
              if (v31 >= a1)
              {
                goto LABEL_50;
              }

              v8 = v31 * v26;
              sub_1E0B76324(v6 + v60 + v31 * v26, v59, type metadata accessor for DERDictionaryItem);
              if (v9 >= a1)
              {
                goto LABEL_51;
              }

              a1 = v58;
              sub_1E0B76324(v6 + v3, v58, type metadata accessor for DERDictionaryItem);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v6 = sub_1E0B66F4C(v6);
              }

              sub_1E0B674FC(a1, v6 + v60 + v8);
              if (v9 >= v6[2])
              {
                goto LABEL_52;
              }

              sub_1E0B674FC(v59, v6 + v3);
            }

            ++v31;
          }

          ++v9;
          a1 = v6 + 2;
          v32 = v6[2];
          v3 += v26;
          if (v9 == v32)
          {
            goto LABEL_14;
          }
        }

        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
        break;
      }

LABEL_14:
      if (v9 < v31)
      {
        goto LABEL_54;
      }

      a1 = v52;
      v3 = v53;
      if (v31 < 0)
      {
        goto LABEL_55;
      }
    }

    v8 = v31;
    if (__OFADD__(v9, v31 - v9))
    {
      goto LABEL_56;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v63 = v6;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v31 > v6[3] >> 1)
    {
      if (v9 <= v31)
      {
        v34 = v31;
      }

      else
      {
        v34 = v9;
      }

      v6 = sub_1E0B66768(isUniquelyReferenced_nonNull_native, v34, 1, v6);
      v63 = v6;
    }

    sub_1E0B6728C(v31, v9, 0);
    v63 = v6;
    if (v6)
    {
      sub_1E0B76324(v62, v55, type metadata accessor for DERDictionaryItem);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_1E0B66768(0, v6[2] + 1, 1, v6);
      }

      v9 = v6[2];
      v35 = v6[3];
      if (v9 >= v35 >> 1)
      {
        v6 = sub_1E0B66768((v35 > 1), v9 + 1, 1, v6);
      }

      v6[2] = v9 + 1;
      sub_1E0B67494(v55, v6 + v60 + v9 * v26, type metadata accessor for DERDictionaryItem);
      v63 = v6;
    }

    v8 = v57 + 1;
    sub_1E0B797D0(v62, type metadata accessor for DERDictionaryItem);
    v25 = a1[2];
    if (v8 == v25)
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  swift_once();
LABEL_44:
  v36 = __swift_project_value_buffer(v48, qword_1ECE78DE0);
  sub_1E0B76324(v36, v22, type metadata accessor for der_key);
  (v6[2])(v50, a1, v61);
  v37 = v51;
  sub_1E0BA8AD8();
  if (v3)
  {
    sub_1E0B797D0(v22, type metadata accessor for der_key);

    sub_1E0B67560();
    swift_allocError();
    *v38 = 25;
    swift_willThrow();
    MEMORY[0x1E12E8B70](v3);
  }

  else
  {
    v39 = v47;
    sub_1E0B67494(v22, v47, type metadata accessor for der_key);
    (*(v9 + 32))(v39 + *(v46 + 20), v37, v8);
    sub_1E0B64850(v39);
    sub_1E0B797D0(v39, type metadata accessor for DERDictionaryItem);
    v8 = v63;
  }

  return v8;
}

uint64_t AKSRefKey.__allocating_init(handle:key_class:key_type:params:)(int *a1, unsigned __int8 *a2, char *a3, uint64_t a4)
{
  v8 = swift_allocObject();
  AKSRefKey.init(handle:key_class:key_type:params:)(a1, a2, a3, a4);
  return v8;
}

uint64_t AKSRefKey.init(handle:key_class:key_type:params:)(int *a1, unsigned __int8 *a2, char *a3, uint64_t a4)
{
  v6 = v4;
  v11 = sub_1E0BA89F8();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v12 = *a1;
  v13 = *a2;
  v14 = *a3;
  *(v6 + 24) = xmmword_1E0BAB160;
  *(v6 + 16) = v12;
  if (qword_1ECE78478 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for der_key(0);
  v16 = __swift_project_value_buffer(v15, qword_1ECE78F90);
  v17 = sub_1E0B7BD50(v16, a4);
  if (v5)
  {
  }

  else
  {
    v23 = v17;
    if (qword_1ECE783F0 != -1)
    {
      swift_once();
    }

    v18 = __swift_project_value_buffer(v15, qword_1ECE78DF8);
    sub_1E0B64A30(v18, v13);
    if (qword_1ECE78438 != -1)
    {
      swift_once();
    }

    v19 = __swift_project_value_buffer(v15, qword_1ECE78ED0);
    sub_1E0B64A30(v19, qword_1E0BAE910[v14]);
    LODWORD(v22) = *(v6 + 16);
    sub_1E0B7B344(&v22, v23);

    _s13AppleKeyStore11AKSIdentityV6ConfigV17defaultIdentifier17SwiftASN1Internal0iG0VvgZ_0();
    sub_1E0B670F0();
    sub_1E0BA8BA8();

    v21 = *(v6 + 24);
    *(v6 + 24) = v22;
    sub_1E0B836A4(v21);
  }

  return v6;
}

uint64_t AKSRefKey.__allocating_init(handle:blob:)(int *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  AKSRefKey.init(handle:blob:)(a1, a2);
  return v4;
}

uint64_t AKSRefKey.init(handle:blob:)(int *a1, uint64_t a2)
{
  v5 = sub_1E0BA89F8();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = *a1;
  *(v2 + 24) = xmmword_1E0BAB160;
  *(v2 + 16) = v6;
  _s13AppleKeyStore11AKSIdentityV6ConfigV17defaultIdentifier17SwiftASN1Internal0iG0VvgZ_0();
  sub_1E0B670F0();
  sub_1E0BA8BA8();
  if (v3)
  {
    sub_1E0B67560();
    swift_allocError();
    *v7 = 25;
    swift_willThrow();
    MEMORY[0x1E12E8B70](v3);
  }

  else
  {
    v8 = *(v2 + 24);
    *(v2 + 24) = v10;
    sub_1E0B836A4(v8);
  }

  return v2;
}

double AKSRefKey.__allocating_init(handle:)(int *a1)
{
  v2 = swift_allocObject();
  v3 = *a1;
  *&result = 1;
  *(v2 + 24) = xmmword_1E0BAB160;
  *(v2 + 16) = v3;
  return result;
}

uint64_t AKSRefKey.init(handle:)(int *a1)
{
  v2 = *a1;
  *(v1 + 24) = xmmword_1E0BAB160;
  *(v1 + 16) = v2;
  return v1;
}

uint64_t sub_1E0B7CB38(uint64_t a1, uint64_t a2)
{
  v6 = sub_1E0BA8AE8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v20 - v11;
  if (qword_1ECE78480 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for der_key(0);
  v14 = __swift_project_value_buffer(v13, qword_1ECE78FA8);
  v15 = sub_1E0B7BD50(v14, a2);
  if (v3)
  {
    return v6;
  }

  v22 = v15;
  if (qword_1ECE785F0 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v13, qword_1ECE793F8);
  sub_1E0B64A30(v16, 1);
  if (qword_1ECE783F8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v13, qword_1ECE78E10);
  result = sub_1E0B64CA0(v17, a1);
  if (*(v2 + 24) != 1)
  {
    v21 = *(v2 + 24);
    sub_1E0B666F8();

    sub_1E0BA8AD8();
    (*(v7 + 32))(v12, v10, v6);
    if (qword_1ECE78450 != -1)
    {
      swift_once();
    }

    v19 = __swift_project_value_buffer(v13, qword_1ECE78F18);
    sub_1E0B64F78(v19, v12);
    (*(v7 + 8))(v12, v6);
    LODWORD(v21) = *(v2 + 16);
    v6 = sub_1E0B7B344(&v21, v22);

    return v6;
  }

  __break(1u);
  return result;
}

char *sub_1E0B7CEF8(uint64_t a1, uint64_t a2)
{
  v57 = a2;
  v2 = sub_1E0BA89F8();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v55 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E0BA8A88();
  v54 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E0BA8AE8();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v50 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v50 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v50 - v18;

  v20 = v58;
  sub_1E0BA8B68();
  if (v20)
  {
    sub_1E0B67560();
    swift_allocError();
    *v21 = 10;
    swift_willThrow();
    MEMORY[0x1E12E8B70](v20);
    return v14;
  }

  v51 = v14;
  v52 = v11;
  v50 = v4;
  v53 = v8;
  v22 = *(v8 + 32);
  v58 = v19;
  v23 = v19;
  v24 = v22;
  v22(v23, v17, v7);
  v25 = v7;
  if (qword_1ECE78468 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for der_key(0);
  v26 = __swift_project_value_buffer(v14, qword_1ECE78F60);
  v60 = sub_1E0B7BD50(v26, v57);
  v27 = v58;
  if (qword_1ECE783F8 != -1)
  {
    swift_once();
  }

  v28 = __swift_project_value_buffer(v14, qword_1ECE78E10);
  result = sub_1E0B64F78(v28, v27);
  if (*(v56 + 24) != 1)
  {
    v59 = *(v56 + 24);
    sub_1E0B666F8();

    v30 = v52;
    sub_1E0BA8AD8();
    v57 = 0;
    v31 = v51;
    v24(v51, v30, v25);
    if (qword_1ECE78450 != -1)
    {
      swift_once();
    }

    v32 = __swift_project_value_buffer(v14, qword_1ECE78F18);
    v33 = v57;
    sub_1E0B64F78(v32, v31);
    if (v33)
    {
      v34 = *(v53 + 8);
      v34(v31, v25);

      v34(v58, v25);
    }

    else
    {
      v36 = v53 + 8;
      v35 = *(v53 + 8);
      v35(v31, v25);
      LODWORD(v59) = *(v56 + 16);
      sub_1E0B7B344(&v59, v60);
      v37 = v35;
      v57 = v25;

      v38 = v50;
      sub_1E0BA8B88();
      sub_1E0BA8BA8();
      v39 = sub_1E0BA8A68();
      v41 = v40;
      v43 = v42;
      v44 = v38;
      v46 = v45;
      (*(v54 + 8))(v6, v44);
      if (v46)
      {
        v53 = v36;
        sub_1E0BA8EA8();
        swift_unknownObjectRetain_n();
        v48 = swift_dynamicCastClass();
        if (!v48)
        {
          swift_unknownObjectRelease();
          v48 = MEMORY[0x1E69E7CC0];
        }

        v49 = *(v48 + 16);

        if (__OFSUB__(v46 >> 1, v43))
        {
          __break(1u);
        }

        else if (v49 == (v46 >> 1) - v43)
        {
          v14 = swift_dynamicCastClass();
          swift_unknownObjectRelease();
          if (!v14)
          {
            swift_unknownObjectRelease();
            v14 = MEMORY[0x1E69E7CC0];
          }

          v37(v58, v57);
          swift_unknownObjectRelease();
          return v14;
        }

        swift_unknownObjectRelease_n();
      }

      sub_1E0B726FC(v39, v41, v43, v46);
      v14 = v47;
      swift_unknownObjectRelease();
      v37(v58, v57);
    }

    return v14;
  }

  __break(1u);
  return result;
}

char *sub_1E0B7D604(uint64_t a1)
{
  v4 = sub_1E0BA8AE8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v15 - v9;
  if (qword_1ECE78470 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for der_key(0);
  v12 = __swift_project_value_buffer(v11, qword_1ECE78F78);
  result = sub_1E0B7BD50(v12, a1);
  if (!v2)
  {
    v17 = result;
    if (*(v1 + 24) == 1)
    {
      __break(1u);
    }

    else
    {
      v16 = *(v1 + 24);
      sub_1E0B666F8();

      sub_1E0BA8AD8();
      (*(v5 + 32))(v10, v8, v4);
      if (qword_1ECE78450 != -1)
      {
        swift_once();
      }

      v14 = __swift_project_value_buffer(v11, qword_1ECE78F18);
      sub_1E0B64F78(v14, v10);
      (*(v5 + 8))(v10, v4);
      LODWORD(v16) = *(v1 + 16);
      sub_1E0B7B344(&v16, v17);
    }
  }

  return result;
}

char *sub_1E0B7D8C4(unsigned __int8 *a1, uint64_t a2)
{
  v6 = sub_1E0BA89F8();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_1E0BA8AE8();
  v20 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v20 - v11;
  v13 = *a1;
  if (qword_1ECE78488 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for der_key(0);
  v15 = __swift_project_value_buffer(v14, qword_1ECE78FC0);
  result = sub_1E0B7BD50(v15, a2);
  if (!v3)
  {
    v22 = result;
    if (qword_1ECE783F0 != -1)
    {
      swift_once();
    }

    v17 = __swift_project_value_buffer(v14, qword_1ECE78DF8);
    result = sub_1E0B64A30(v17, v13);
    if (*(v2 + 24) == 1)
    {
      __break(1u);
    }

    else
    {
      v21 = *(v2 + 24);
      sub_1E0B666F8();

      sub_1E0BA8AD8();
      (*(v20 + 32))(v12, v10, v7);
      if (qword_1ECE78450 != -1)
      {
        swift_once();
      }

      v18 = __swift_project_value_buffer(v14, qword_1ECE78F18);
      sub_1E0B64F78(v18, v12);
      (*(v20 + 8))(v12, v7);
      LODWORD(v21) = *(v2 + 16);
      sub_1E0B7B344(&v21, v22);

      _s13AppleKeyStore11AKSIdentityV6ConfigV17defaultIdentifier17SwiftASN1Internal0iG0VvgZ_0();
      sub_1E0B670F0();
      sub_1E0BA8BA8();
      v19 = MEMORY[0x18];
      MEMORY[0x18] = v21;
      return sub_1E0B836A4(v19);
    }
  }

  return result;
}

uint64_t sub_1E0B7DD10(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E0BA8AE8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v33 - v10;
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v33 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v33 - v15;

  sub_1E0BA8B58();
  if (v2)
  {
    sub_1E0B67560();
    swift_allocError();
    *v17 = 10;
    swift_willThrow();
    MEMORY[0x1E12E8B70](v2);
    return v4;
  }

  v34 = v11;
  v35 = v8;
  v36 = v5;
  v18 = *(v5 + 32);
  v19 = v4;
  v18(v16, v14, v4);
  v20 = v16;
  if (qword_1ECE78498 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for der_key(0);
  v22 = __swift_project_value_buffer(v21, qword_1ECE78FF0);
  v23 = sub_1E0B7BD50(v22, a2);
  v24 = v37;
  v25 = v20;
  v39 = v23;
  if (qword_1ECE785F0 != -1)
  {
    swift_once();
  }

  v26 = __swift_project_value_buffer(v21, qword_1ECE793F8);
  sub_1E0B64A30(v26, 1);
  if (qword_1ECE783F8 != -1)
  {
    swift_once();
  }

  v27 = __swift_project_value_buffer(v21, qword_1ECE78E10);
  result = sub_1E0B64F78(v27, v20);
  if (*(v24 + 24) != 1)
  {
    v38 = *(v24 + 24);
    sub_1E0B666F8();

    v29 = v35;
    sub_1E0BA8AD8();
    v30 = v34;
    v18(v34, v29, v19);
    if (qword_1ECE78450 != -1)
    {
      swift_once();
    }

    v31 = __swift_project_value_buffer(v21, qword_1ECE78F18);
    sub_1E0B64F78(v31, v30);
    v32 = *(v36 + 8);
    v32(v30, v19);
    LODWORD(v38) = *(v37 + 16);
    v4 = sub_1E0B7B344(&v38, v39);
    v32(v25, v19);

    return v4;
  }

  __break(1u);
  return result;
}

char *sub_1E0B7E210(int *a1, uint64_t a2)
{
  v6 = sub_1E0BA89F8();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_1E0BA8AE8();
  v23 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v21 - v11;
  v13 = *a1;
  if (qword_1ECE784B0 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for der_key(0);
  v15 = __swift_project_value_buffer(v14, qword_1ECE79038);
  result = sub_1E0B7BD50(v15, a2);
  if (!v3)
  {
    v22 = v2;
    v25 = result;
    if (qword_1ECE784D8 != -1)
    {
      swift_once();
    }

    v17 = __swift_project_value_buffer(v14, qword_1ECE790B0);
    result = sub_1E0B64A30(v17, v13);
    if (*(v22 + 24) == 1)
    {
      __break(1u);
    }

    else
    {
      v24 = *(v22 + 24);
      sub_1E0B666F8();

      sub_1E0BA8AD8();
      (*(v23 + 32))(v12, v10, v7);
      if (qword_1ECE78450 != -1)
      {
        swift_once();
      }

      v18 = __swift_project_value_buffer(v14, qword_1ECE78F18);
      sub_1E0B64F78(v18, v12);
      (*(v23 + 8))(v12, v7);
      v19 = v22;
      LODWORD(v24) = *(v22 + 16);
      sub_1E0B7B344(&v24, v25);

      *(v19 + 16) = v13;
      _s13AppleKeyStore11AKSIdentityV6ConfigV17defaultIdentifier17SwiftASN1Internal0iG0VvgZ_0();
      sub_1E0B670F0();
      sub_1E0BA8BA8();
      v20 = *(v22 + 24);
      *(v22 + 24) = v24;
      return sub_1E0B836A4(v20);
    }
  }

  return result;
}

uint64_t sub_1E0B7E638(uint64_t a1, uint64_t a2)
{
  v6 = sub_1E0BA8AE8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v20 - v11;
  if (qword_1ECE784A0 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for der_key(0);
  v14 = __swift_project_value_buffer(v13, qword_1ECE79008);
  v15 = sub_1E0B7BD50(v14, a2);
  if (v3)
  {
    return v6;
  }

  v22 = v15;
  if (qword_1ECE785F0 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v13, qword_1ECE793F8);
  sub_1E0B64A30(v16, 1);
  if (qword_1ECE78430 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v13, qword_1ECE78EB8);
  result = sub_1E0B64CA0(v17, a1);
  if (*(v2 + 24) != 1)
  {
    v21 = *(v2 + 24);
    sub_1E0B666F8();

    sub_1E0BA8AD8();
    (*(v7 + 32))(v12, v10, v6);
    if (qword_1ECE78450 != -1)
    {
      swift_once();
    }

    v19 = __swift_project_value_buffer(v13, qword_1ECE78F18);
    sub_1E0B64F78(v19, v12);
    (*(v7 + 8))(v12, v6);
    LODWORD(v21) = *(v2 + 16);
    v6 = sub_1E0B7B344(&v21, v22);

    return v6;
  }

  __break(1u);
  return result;
}

char *sub_1E0B7EA68(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6)
{
  v32 = a2;
  v12 = sub_1E0BA8AE8();
  v13 = *(v12 - 8);
  v30 = v12;
  v31 = v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v30 - v17;
  if (*a4 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for der_key(0);
  v20 = __swift_project_value_buffer(v19, a5);
  v21 = sub_1E0B7BD50(v20, a3);
  if (v7)
  {
    return a4;
  }

  v22 = v6;
  v34 = v21;
  if (qword_1ECE78430 != -1)
  {
    swift_once();
  }

  v23 = __swift_project_value_buffer(v19, qword_1ECE78EB8);
  sub_1E0B64CA0(v23, a1);
  if (qword_1ECE783F8 != -1)
  {
    swift_once();
  }

  v24 = __swift_project_value_buffer(v19, qword_1ECE78E10);
  result = sub_1E0B64CA0(v24, v32);
  v26 = *(v6 + 24);
  if (v26 != 1)
  {
    v33 = v26;
    sub_1E0B666F8();

    sub_1E0BA8AD8();
    v27 = v16;
    v28 = v30;
    (*(v31 + 32))(v18, v27, v30);
    if (qword_1ECE78450 != -1)
    {
      swift_once();
    }

    v29 = __swift_project_value_buffer(v19, qword_1ECE78F18);
    sub_1E0B64F78(v29, v18);
    (*(v31 + 8))(v18, v28);
    LODWORD(v33) = *(v22 + 16);
    a4 = sub_1E0B7B344(&v33, v34);

    return a4;
  }

  __break(1u);
  return result;
}

char *sub_1E0B7EDE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v71 = a3;
  v76 = sub_1E0BA8A88();
  v74 = *(v76 - 8);
  v6 = MEMORY[0x1EEE9AC00](v76);
  v73 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v75 = &v67 - v8;
  v79 = type metadata accessor for DERDictionaryItem(0);
  v9 = MEMORY[0x1EEE9AC00](v79);
  v78 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v67 - v11;
  v13 = sub_1E0BA89F8();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v14 = sub_1E0BA8AE8();
  v15 = *(v14 - 8);
  v81 = v14;
  v82 = v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v72 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v67 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v77 = &v67 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v80 = &v67 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v67 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v67 - v28;
  if (qword_1ECE786A8 != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for der_key(0);
  v31 = __swift_project_value_buffer(v30, qword_1ECE79620);
  result = sub_1E0B7BD50(v31, a2);
  if (v3)
  {
    return result;
  }

  v33 = 0;
  v85 = result;
  if (qword_1ECE78430 != -1)
  {
    swift_once();
  }

  v34 = __swift_project_value_buffer(v30, qword_1ECE78EB8);
  sub_1E0B64CA0(v34, a1);
  v35 = *(v83 + 3);
  if (v35 == 1)
  {
    __break(1u);
    goto LABEL_37;
  }

  v84 = *(v83 + 3);
  sub_1E0B666F8();

  sub_1E0BA8AD8();
  v36 = v82;
  v37 = v27;
  v38 = v81;
  (*(v82 + 32))(v29, v37, v81);
  if (qword_1ECE78450 != -1)
  {
    swift_once();
  }

  v39 = __swift_project_value_buffer(v30, qword_1ECE78F18);
  sub_1E0B64F78(v39, v29);
  v40 = v29;
  v41 = *(v36 + 8);
  v41(v40, v38);
  LODWORD(v84) = *(v83 + 4);
  sub_1E0B7B344(&v84, v85);

  v70 = v36 + 8;
  v83 = v41;
  _s13AppleKeyStore11AKSIdentityV6ConfigV17defaultIdentifier17SwiftASN1Internal0iG0VvgZ_0();
  sub_1E0B670F0();
  sub_1E0BA8BA8();
  v42 = v84;
  if (qword_1ECE783F8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v30, qword_1ECE78E10);
  sub_1E0B64650(v42, v12);
  v43 = *(v82 + 16);
  v43(v80, &v12[*(v79 + 20)], v81);
  sub_1E0B797D0(v12, type metadata accessor for DERDictionaryItem);
  if (qword_1ECE784A0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v30, qword_1ECE79008);
  v44 = v78;
  sub_1E0B64650(v42, v78);

  v45 = v77;
  v46 = v81;
  v43(v77, (v44 + *(v79 + 20)), v81);
  sub_1E0B797D0(v44, type metadata accessor for DERDictionaryItem);
  v43(v20, v80, v46);
  v47 = v75;
  v48 = v76;
  sub_1E0BA8B78();
  v82 = sub_1E0BA8A68();
  v68 = v49;
  v69 = v50;
  v78 = v51;
  v52 = *(v74 + 8);
  v52(v47, v48);
  v43(v72, v45, v46);
  v53 = v73;
  sub_1E0BA8B78();
  v79 = 0;
  v33 = v82;
  v35 = sub_1E0BA8A68();
  a1 = v54;
  v75 = v55;
  v27 = v56;
  v52(v53, v48);
  v20 = v69;
  if (v69)
  {
    sub_1E0BA8EA8();
    swift_unknownObjectRetain_n();
    v59 = swift_dynamicCastClass();
    if (!v59)
    {
      swift_unknownObjectRelease();
      v59 = MEMORY[0x1E69E7CC0];
    }

    v60 = *(v59 + 16);

    if (!__OFSUB__(v20 >> 1, v78))
    {
      if (v60 != (v20 >> 1) - v78)
      {
        goto LABEL_39;
      }

      v58 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      if (v58)
      {
        goto LABEL_25;
      }

      v58 = MEMORY[0x1E69E7CC0];
      goto LABEL_24;
    }

LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  swift_unknownObjectRetain();
  while (1)
  {
    sub_1E0B726FC(v33, v68, v78, v20);
    v58 = v57;
LABEL_24:
    swift_unknownObjectRelease();
LABEL_25:
    if ((v27 & 1) == 0)
    {
      swift_unknownObjectRetain();
LABEL_27:
      sub_1E0B726FC(v35, a1, v75, v27);
      v62 = v61;
      swift_unknownObjectRelease();
      goto LABEL_34;
    }

    sub_1E0BA8EA8();
    swift_unknownObjectRetain_n();
    v63 = swift_dynamicCastClass();
    if (!v63)
    {
      swift_unknownObjectRelease();
      v63 = MEMORY[0x1E69E7CC0];
    }

    v20 = *(v63 + 16);

    if (!__OFSUB__(v27 >> 1, v75))
    {
      break;
    }

LABEL_38:
    __break(1u);
LABEL_39:
    swift_unknownObjectRelease();
  }

  if (v20 != (v27 >> 1) - v75)
  {
    swift_unknownObjectRelease();
    goto LABEL_27;
  }

  v62 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  if (v62)
  {
    goto LABEL_35;
  }

  v62 = MEMORY[0x1E69E7CC0];
LABEL_34:
  swift_unknownObjectRelease();
LABEL_35:
  swift_unknownObjectRelease();
  v64 = v81;
  v65 = v83;
  v83(v77, v81);
  result = v65(v80, v64);
  v66 = v71;
  *v71 = v58;
  v66[1] = v62;
  return result;
}

char *sub_1E0B7F86C(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v11 = sub_1E0BA8AE8();
  v12 = *(v11 - 8);
  v29 = v11;
  v30 = v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v28 - v16;
  if (*a3 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for der_key(0);
  v19 = __swift_project_value_buffer(v18, a4);
  v20 = sub_1E0B7BD50(v19, a2);
  if (v6)
  {
    return a3;
  }

  v21 = v5;
  v32 = v20;
  if (qword_1ECE783F8 != -1)
  {
    swift_once();
  }

  v22 = __swift_project_value_buffer(v18, qword_1ECE78E10);
  result = sub_1E0B64CA0(v22, a1);
  v24 = *(v5 + 24);
  if (v24 != 1)
  {
    v31 = v24;
    sub_1E0B666F8();

    sub_1E0BA8AD8();
    v25 = v15;
    v26 = v29;
    (*(v30 + 32))(v17, v25, v29);
    if (qword_1ECE78450 != -1)
    {
      swift_once();
    }

    v27 = __swift_project_value_buffer(v18, qword_1ECE78F18);
    sub_1E0B64F78(v27, v17);
    (*(v30 + 8))(v17, v26);
    LODWORD(v31) = *(v21 + 16);
    a3 = sub_1E0B7B344(&v31, v32);

    return a3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E0B7FB8C(uint64_t a1, uint64_t a2)
{
  v6 = sub_1E0BA8AE8();
  v7 = *(v6 - 8);
  v52 = v6;
  v53 = v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = v46 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = v46 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v50 = v46 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = v46 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v51 = v46 - v22;
  v23 = sub_1E0BA8C28();
  v24 = *(v23 - 8);
  v54 = v23;
  v55 = v24;
  MEMORY[0x1EEE9AC00](v23);
  v56 = v46 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ECE784A8 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for der_key(0);
  v27 = __swift_project_value_buffer(v26, qword_1ECE79020);
  v28 = sub_1E0B7BD50(v27, a2);
  if (v3)
  {
    return v26;
  }

  v49 = v13;
  v59 = v28;
  result = sub_1E0BA8C18();
  v58 = 0;
  v30 = *(a1 + 24);
  if (v30 == 1)
  {
    __break(1u);
  }

  else
  {
    v57 = v30;
    v31 = sub_1E0B666F8();

    sub_1E0BA8AD8();
    v32 = *(v53 + 32);
    v33 = v51;
    v46[0] = v2;
    v46[1] = v53 + 32;
    v47 = v32;
    v48 = v31;
    v32(v51, v21, v52);
    if (qword_1ECE78450 != -1)
    {
      swift_once();
    }

    v34 = __swift_project_value_buffer(v26, qword_1ECE78F18);
    sub_1E0B64F78(v34, v33);
    v57 = v58;
    sub_1E0BA8C08();

    sub_1E0BA8BE8();
    v35 = v52;
    sub_1E0BA8B58();
    v36 = v50;
    v37 = v16;
    v38 = v47;
    v47(v50, v37, v35);
    if (qword_1ECE783F8 != -1)
    {
      swift_once();
    }

    v39 = __swift_project_value_buffer(v26, qword_1ECE78E10);
    sub_1E0B64F78(v39, v36);
    result = *(v46[0] + 24);
    if (result != 1)
    {
      v57 = *(v46[0] + 24);

      sub_1E0BA8AD8();
      v40 = v34;
      v41 = v49;
      v38(v49, v10, v35);
      sub_1E0B64F78(v40, v41);
      v42 = *(v53 + 8);
      v42(v41, v35);
      LODWORD(v57) = *(v46[0] + 16);
      v43 = sub_1E0B7B344(&v57, v59);
      v44 = v35;
      v45 = v56;
      v26 = v43;

      v42(v50, v44);
      v42(v51, v44);
      (*(v55 + 8))(v45, v54);
      return v26;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E0B80320()
{
  v2 = v0;
  v3 = sub_1E0BA8C28();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1E0BA8C18();
  if (*(v2 + 24) == 1)
  {
    __break(1u);
  }

  else
  {
    v9[1] = *(v2 + 24);
    sub_1E0B666F8();
    sub_1E0BA8C08();
    if (v1)
    {
      (*(v4 + 8))(v6, v3);
      sub_1E0B67560();
      swift_allocError();
      *v8 = 22;
      swift_willThrow();
      MEMORY[0x1E12E8B70](v1);
    }

    else
    {
      v2 = sub_1E0BA8BE8();
      (*(v4 + 8))(v6, v3);
    }

    return v2;
  }

  return result;
}

uint64_t sub_1E0B80490()
{
  v2 = v1;
  v3 = sub_1E0BA89F8();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v27 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E0BA8AE8();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v28 = &v27 - v10;
  v11 = type metadata accessor for DERDictionaryItem(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE78D88, &qword_1E0BAE908);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v27 - v18;
  v20 = *(v0 + 24);
  if (v20 == 1)
  {
    (*(v6 + 56))(&v27 - v18, 1, 1, v5);
  }

  else
  {
    v21 = qword_1ECE78450;

    if (v21 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for der_key(0);
    __swift_project_value_buffer(v22, qword_1ECE78F18);
    sub_1E0B64650(v20, v13);
    result = sub_1E0B836A4(v20);
    if (v2)
    {
      return result;
    }

    (*(v6 + 16))(v19, &v13[*(v11 + 20)], v5);
    sub_1E0B797D0(v13, type metadata accessor for DERDictionaryItem);
    (*(v6 + 56))(v19, 0, 1, v5);
  }

  sub_1E0B84AA4(v19, v17, &qword_1ECE78D88, &qword_1E0BAE908);
  if ((*(v6 + 48))(v17, 1, v5) == 1)
  {
    sub_1E0B84B0C(v17, &qword_1ECE78D88, &qword_1E0BAE908);
    sub_1E0B67560();
    swift_allocError();
    *v24 = 10;
    swift_willThrow();
  }

  else
  {
    v25 = v28;
    (*(v6 + 32))();
    (*(v6 + 16))(v9, v25, v5);
    _s13AppleKeyStore11AKSIdentityV6ConfigV17defaultIdentifier17SwiftASN1Internal0iG0VvgZ_0();
    sub_1E0B670F0();
    sub_1E0BA8BC8();
    if (!v2)
    {
      (*(v6 + 8))(v25, v5);
      sub_1E0B84B0C(v19, &qword_1ECE78D88, &qword_1E0BAE908);
      return v29;
    }

    sub_1E0B67560();
    swift_allocError();
    *v26 = 10;
    swift_willThrow();
    MEMORY[0x1E12E8B70](v2);
    (*(v6 + 8))(v25, v5);
  }

  return sub_1E0B84B0C(v19, &qword_1ECE78D88, &qword_1E0BAE908);
}

char *sub_1E0B80920(uint64_t a1)
{
  v3 = v1;
  v24 = sub_1E0BA8C28();
  v4 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DERDictionaryItem(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE78D88, &qword_1E0BAE908);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v22 - v14;
  v16 = *(v3 + 24);
  if (v16 == 1)
  {
    v17 = sub_1E0BA8AE8();
    (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  }

  else
  {

    sub_1E0B64650(v16, v9);
    sub_1E0B836A4(v16);
    if (v2)
    {
      return v13;
    }

    v23 = *(v7 + 20);
    v17 = sub_1E0BA8AE8();
    v18 = *(v17 - 8);
    (*(v18 + 16))(v15, &v9[v23], v17);
    sub_1E0B797D0(v9, type metadata accessor for DERDictionaryItem);
    (*(v18 + 56))(v15, 0, 1, v17);
  }

  sub_1E0BA8C18();
  sub_1E0B84AA4(v15, v13, &qword_1ECE78D88, &qword_1E0BAE908);
  sub_1E0BA8AE8();
  v19 = *(v17 - 8);
  result = (*(v19 + 48))(v13, 1, v17);
  if (result != 1)
  {
    sub_1E0BA8C08();
    if (v2)
    {
      (*(v19 + 8))(v13, v17);
      sub_1E0B67560();
      v13 = swift_allocError();
      *v21 = 25;
      swift_willThrow();
      MEMORY[0x1E12E8B70](v2);
      (*(v4 + 8))(v6, v24);
      sub_1E0B84B0C(v15, &qword_1ECE78D88, &qword_1E0BAE908);
    }

    else
    {
      (*(v19 + 8))(v13, v17);
      v13 = sub_1E0BA8BE8();
      (*(v4 + 8))(v6, v24);
      sub_1E0B84B0C(v15, &qword_1ECE78D88, &qword_1E0BAE908);
    }

    return v13;
  }

  __break(1u);
  return result;
}

char sub_1E0B80D5C@<W0>(_BYTE *a1@<X8>)
{
  v3 = type metadata accessor for DERDictionaryItem(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E0BA8AE8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v20 - v11;
  v13 = sub_1E0B80490();
  if (!v1)
  {
    v14 = v13;
    v20 = a1;
    if (qword_1ECE78438 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for der_key(0);
    __swift_project_value_buffer(v15, qword_1ECE78ED0);
    sub_1E0B64650(v14, v5);
    v16 = *(v3 + 20);
    v17 = *(v7 + 16);
    v17(v12, &v5[v16], v6);
    sub_1E0B797D0(v5, type metadata accessor for DERDictionaryItem);
    v17(v10, v12, v6);
    sub_1E0BA8B78();
    LOBYTE(v13) = AKSRefKeyType.init(rawValue:)(v22);
    v18 = v21;
    if (v21 == 12)
    {
      __break(1u);
    }

    else
    {
      (*(v7 + 8))(v12, v6);

      *v20 = v18;
    }
  }

  return v13;
}

char *sub_1E0B8103C()
{
  v0 = sub_1E0BA89F8();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v43 = &v39 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1E0BA8A88();
  v44 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DERDictionaryItem(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E0BA8AE8();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v39 - v13;
  v15 = v45;
  v16 = sub_1E0B80490();
  if (v15)
  {
    return v7;
  }

  v39 = v12;
  v40 = v4;
  v41 = v14;
  v42 = v9;
  v45 = v8;
  v17 = v16;
  if (qword_1ECE78430 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for der_key(0);
  __swift_project_value_buffer(v18, qword_1ECE78EB8);
  sub_1E0B64650(v17, v7);

  v19 = v44;
  v20 = v41;
  v21 = *(v42 + 16);
  v22 = v45;
  v21(v41, &v7[*(v5 + 20)], v45);
  sub_1E0B797D0(v7, type metadata accessor for DERDictionaryItem);
  v21(v39, v20, v22);
  _s13AppleKeyStore7AKSUUIDV17defaultIdentifier17SwiftASN1Internal0hF0VvgZ_0();
  v23 = v40;
  sub_1E0BA8BC8();
  v25 = sub_1E0BA8A68();
  v27 = v26;
  v29 = v28;
  v30 = v23;
  v32 = v31;
  (*(v19 + 8))(v30, v2);
  if ((v32 & 1) == 0)
  {
    goto LABEL_7;
  }

  sub_1E0BA8EA8();
  swift_unknownObjectRetain_n();
  v34 = swift_dynamicCastClass();
  if (!v34)
  {
    swift_unknownObjectRelease();
    v34 = MEMORY[0x1E69E7CC0];
  }

  v35 = *(v34 + 16);

  if (__OFSUB__(v32 >> 1, v29))
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v35 != (v32 >> 1) - v29)
  {
LABEL_16:
    swift_unknownObjectRelease_n();
LABEL_7:
    sub_1E0B726FC(v25, v27, v29, v32);
    v7 = v33;
    swift_unknownObjectRelease();
    (*(v42 + 8))(v41, v45);
    return v7;
  }

  v7 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  v36 = v41;
  v37 = v42;
  if (!v7)
  {
    v38 = v41;
    swift_unknownObjectRelease();
    v36 = v38;
    v7 = MEMORY[0x1E69E7CC0];
  }

  (*(v37 + 8))(v36, v45);
  swift_unknownObjectRelease();
  return v7;
}

char *sub_1E0B814E8()
{
  if (qword_1ECE78408 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for der_key(0);
  v2 = __swift_project_value_buffer(v1, qword_1ECE78E40);
  result = sub_1E0B80920(v2);
  if (v0)
  {
    MEMORY[0x1E12E8B70](v0);
    if (qword_1ECE78400 != -1)
    {
      swift_once();
    }

    v4 = __swift_project_value_buffer(v1, qword_1ECE78E28);
    return sub_1E0B80920(v4);
  }

  return result;
}

char *sub_1E0B815C0()
{
  v0 = sub_1E0BA8A88();
  v43 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v38 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for DERDictionaryItem(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E0BA8AE8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v38 - v11;
  v13 = v44;
  v14 = sub_1E0B80490();
  if (v13)
  {
    return v12;
  }

  v41 = v7;
  v42 = v10;
  v39 = v2;
  v40 = v6;
  v44 = v12;
  v15 = v14;
  if (qword_1ECE78448 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for der_key(0);
  __swift_project_value_buffer(v16, qword_1ECE78F00);
  v17 = v5;
  sub_1E0B64650(v15, v5);

  v18 = v44;
  v19 = v42;
  v20 = v40;
  v21 = *(v41 + 16);
  v21(v44, v17 + *(v3 + 20), v40);
  sub_1E0B797D0(v17, type metadata accessor for DERDictionaryItem);
  v21(v19, v18, v20);
  v22 = v39;
  sub_1E0BA8B78();
  v24 = sub_1E0BA8A68();
  v26 = v25;
  v28 = v27;
  v29 = v22;
  v31 = v30;
  (*(v43 + 8))(v29, v0);
  if ((v31 & 1) == 0)
  {
    goto LABEL_7;
  }

  sub_1E0BA8EA8();
  swift_unknownObjectRetain_n();
  v33 = swift_dynamicCastClass();
  if (!v33)
  {
    swift_unknownObjectRelease();
    v33 = MEMORY[0x1E69E7CC0];
  }

  v34 = *(v33 + 16);

  if (__OFSUB__(v31 >> 1, v28))
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v34 != (v31 >> 1) - v28)
  {
LABEL_16:
    swift_unknownObjectRelease_n();
LABEL_7:
    sub_1E0B726FC(v24, v26, v28, v31);
    v12 = v32;
    swift_unknownObjectRelease();
    (*(v41 + 8))(v18, v40);
    return v12;
  }

  v12 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  v35 = v40;
  v36 = v41;
  if (!v12)
  {
    v37 = v40;
    swift_unknownObjectRelease();
    v35 = v37;
    v18 = v44;
    v12 = MEMORY[0x1E69E7CC0];
  }

  (*(v36 + 8))(v18, v35);
  swift_unknownObjectRelease();
  return v12;
}

uint64_t sub_1E0B81A10()
{
  v1 = type metadata accessor for DERDictionaryItem(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E0BA8AE8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v15 - v9;
  result = sub_1E0B80490();
  if (!v0)
  {
    v12 = result;
    if (qword_1ECE78440 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for der_key(0);
    __swift_project_value_buffer(v13, qword_1ECE78EE8);
    sub_1E0B64650(v12, v3);

    v14 = *(v5 + 16);
    v14(v10, &v3[*(v1 + 20)], v4);
    sub_1E0B797D0(v3, type metadata accessor for DERDictionaryItem);
    v14(v8, v10, v4);
    sub_1E0BA8B78();
    (*(v5 + 8))(v10, v4);
    return v15[3];
  }

  return result;
}

char sub_1E0B81CBC@<W0>(_BYTE *a1@<X8>)
{
  v3 = type metadata accessor for DERDictionaryItem(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E0BA8AE8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v20 - v11;
  v13 = sub_1E0B80490();
  if (!v1)
  {
    v14 = v13;
    v20 = a1;
    if (qword_1ECE783F0 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for der_key(0);
    __swift_project_value_buffer(v15, qword_1ECE78DF8);
    sub_1E0B64650(v14, v5);
    v16 = *(v3 + 20);
    v17 = *(v7 + 16);
    v17(v12, &v5[v16], v6);
    sub_1E0B797D0(v5, type metadata accessor for DERDictionaryItem);
    v17(v10, v12, v6);
    sub_1E0BA8B78();
    LOBYTE(v13) = AKSKeyClass.init(rawValue:)(v22);
    v18 = v21;
    if (v21 == 21)
    {
      __break(1u);
    }

    else
    {
      (*(v7 + 8))(v12, v6);

      *v20 = v18;
    }
  }

  return v13;
}

uint64_t sub_1E0B81F9C@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for DERDictionaryItem(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E0BA8AE8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v17 - v11;
  result = sub_1E0B80490();
  if (!v1)
  {
    v14 = result;
    if (qword_1ECE785F8 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for der_key(0);
    __swift_project_value_buffer(v15, qword_1ECE79410);
    sub_1E0B64650(v14, v5);

    v16 = *(v7 + 16);
    v16(v12, &v5[*(v3 + 20)], v6);
    sub_1E0B797D0(v5, type metadata accessor for DERDictionaryItem);
    v16(v10, v12, v6);
    sub_1E0BA8B78();
    result = (*(v7 + 8))(v12, v6);
    *a1 = v17[1];
  }

  return result;
}

char *sub_1E0B82248()
{
  v2 = sub_1E0BA8AE8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - v7;
  if (qword_1ECE784B8 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for der_key(0);
  v10 = __swift_project_value_buffer(v9, qword_1ECE79050);
  result = sub_1E0B7BD50(v10, 0);
  if (!v1)
  {
    v15 = result;
    if (*(v0 + 24) == 1)
    {
      __break(1u);
    }

    else
    {
      v14 = *(v0 + 24);
      sub_1E0B666F8();

      sub_1E0BA8AD8();
      (*(v3 + 32))(v8, v6, v2);
      if (qword_1ECE78450 != -1)
      {
        swift_once();
      }

      v12 = __swift_project_value_buffer(v9, qword_1ECE78F18);
      sub_1E0B64F78(v12, v8);
      (*(v3 + 8))(v8, v2);
      LODWORD(v14) = *(v0 + 16);
      sub_1E0B7B344(&v14, v15);
    }
  }

  return result;
}

uint64_t AKSRefKey.deinit()
{
  sub_1E0B836A4(*(v0 + 24));

  return v0;
}

uint64_t AKSRefKey.__deallocating_deinit()
{
  sub_1E0B836A4(*(v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t AKSRefKeyCreateAndEncrypt(handle:key_class:key_type:data:params:)(int *a1, unsigned __int8 *a2, char *a3, uint64_t a4, uint64_t a5)
{
  v11 = sub_1E0BA89F8();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v12 = *a1;
  v13 = *a2;
  v14 = *a3;
  type metadata accessor for AKSRefKey();
  v15 = swift_allocObject();
  *(v15 + 24) = xmmword_1E0BAB160;
  *(v15 + 16) = v12;
  if (qword_1ECE78460 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for der_key(0);
  v17 = __swift_project_value_buffer(v16, qword_1ECE78F48);
  v18 = sub_1E0B7BD50(v17, a5);
  if (v5)
  {
  }

  else
  {
    v26 = v18;
    if (qword_1ECE783F0 != -1)
    {
      swift_once();
    }

    v19 = __swift_project_value_buffer(v16, qword_1ECE78DF8);
    sub_1E0B64A30(v19, v13);
    if (qword_1ECE78438 != -1)
    {
      swift_once();
    }

    v20 = __swift_project_value_buffer(v16, qword_1ECE78ED0);
    sub_1E0B64A30(v20, qword_1E0BAE910[v14]);
    if (qword_1ECE783F8 != -1)
    {
      swift_once();
    }

    v21 = __swift_project_value_buffer(v16, qword_1ECE78E10);
    sub_1E0B64CA0(v21, a4);
    LODWORD(v25) = *(v15 + 16);
    v23 = sub_1E0B7B344(&v25, v26);

    sub_1E0B7B5D0(v23);

    _s13AppleKeyStore11AKSIdentityV6ConfigV17defaultIdentifier17SwiftASN1Internal0iG0VvgZ_0();
    sub_1E0B670F0();
    sub_1E0BA8BA8();
    v24 = *(v15 + 24);
    *(v15 + 24) = v25;
    sub_1E0B836A4(v24);
  }

  return v15;
}

uint64_t AKSRefKeyCreateAndWrap(handle:key_class:key_type:data:params:)(int *a1, unsigned __int8 *a2, char *a3, uint64_t a4, uint64_t a5)
{
  v11 = sub_1E0BA89F8();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v12 = *a1;
  v13 = *a2;
  v14 = *a3;
  type metadata accessor for AKSRefKey();
  v15 = swift_allocObject();
  *(v15 + 24) = xmmword_1E0BAB160;
  *(v15 + 16) = v12;
  if (qword_1ECE78658 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for der_key(0);
  v17 = __swift_project_value_buffer(v16, qword_1ECE79530);
  v18 = sub_1E0B7BD50(v17, a5);
  if (v5)
  {
  }

  else
  {
    v26 = v18;
    if (qword_1ECE783F0 != -1)
    {
      swift_once();
    }

    v19 = __swift_project_value_buffer(v16, qword_1ECE78DF8);
    sub_1E0B64A30(v19, v13);
    if (qword_1ECE78438 != -1)
    {
      swift_once();
    }

    v20 = __swift_project_value_buffer(v16, qword_1ECE78ED0);
    sub_1E0B64A30(v20, qword_1E0BAE910[v14]);
    if (qword_1ECE783F8 != -1)
    {
      swift_once();
    }

    v21 = __swift_project_value_buffer(v16, qword_1ECE78E10);
    sub_1E0B64CA0(v21, a4);
    LODWORD(v25) = *(v15 + 16);
    v23 = sub_1E0B7B344(&v25, v26);

    sub_1E0B7B5D0(v23);

    _s13AppleKeyStore11AKSIdentityV6ConfigV17defaultIdentifier17SwiftASN1Internal0iG0VvgZ_0();
    sub_1E0B670F0();
    sub_1E0BA8BA8();
    v24 = *(v15 + 24);
    *(v15 + 24) = v25;
    sub_1E0B836A4(v24);
  }

  return v15;
}

char *AKSSystemKeyAttest(type:generation:ref_key:params:)(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v29 = a4;
  v8 = sub_1E0BA8AE8();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v10);
  v15 = *(a3 + 24);
  if (v15 == 1)
  {
    __break(1u);
  }

  else
  {
    v16 = &v27 - v14;
    v17 = *a1;
    v18 = *a2;
    v31 = v15;
    sub_1E0B666F8();

    sub_1E0BA8AD8();
    if (v4)
    {
      sub_1E0B67560();
      swift_allocError();
      *v19 = 25;
      swift_willThrow();
      MEMORY[0x1E12E8B70](v4);
    }

    else
    {
      v28 = v17;
      v20 = v16;
      (*(v9 + 32))(v16, v12, v8);
      if (qword_1ECE78510 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for der_key(0);
      v22 = __swift_project_value_buffer(v21, qword_1ECE79158);
      v31 = sub_1E0B7BD50(v22, v29);
      if (qword_1ECE78450 != -1)
      {
        swift_once();
      }

      v23 = __swift_project_value_buffer(v21, qword_1ECE78F18);
      sub_1E0B64F78(v23, v16);
      v24 = v28;
      if (qword_1ECE78538 != -1)
      {
        swift_once();
      }

      v25 = __swift_project_value_buffer(v21, qword_1ECE791D0);
      sub_1E0B64A30(v25, v24 + 1);
      if (qword_1ECE78558 != -1)
      {
        swift_once();
      }

      v26 = __swift_project_value_buffer(v21, qword_1ECE79230);
      sub_1E0B64A30(v26, v18 + 1);
      if (qword_1ECE783D8 != -1)
      {
        swift_once();
      }

      v30 = dword_1ECE78C74;
      v16 = sub_1E0B7B344(&v30, v31);
      (*(v9 + 8))(v20, v8);
    }

    return v16;
  }

  return result;
}

char *AKSSystemKeyOperate(type:operation:params:)(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = *a1;
  v6 = *a2;
  if (qword_1ECE78528 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for der_key(0);
  v8 = __swift_project_value_buffer(v7, qword_1ECE791A0);
  result = sub_1E0B7BD50(v8, a3);
  if (!v3)
  {
    v13 = result;
    if (qword_1ECE78538 != -1)
    {
      swift_once();
    }

    v10 = __swift_project_value_buffer(v7, qword_1ECE791D0);
    sub_1E0B64A30(v10, v5 + 1);
    if (qword_1ECE78560 != -1)
    {
      swift_once();
    }

    v11 = __swift_project_value_buffer(v7, qword_1ECE79248);
    sub_1E0B64A30(v11, v6 + 1);
    if (qword_1ECE783D8 != -1)
    {
      swift_once();
    }

    v12 = dword_1ECE78C74;
    sub_1E0B7B344(&v12, v13);
  }

  return result;
}

uint64_t sub_1E0B83250(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v9 = *a1;
  v10 = *a2;
  if (*a4 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for der_key(0);
  v12 = __swift_project_value_buffer(v11, a5);
  v13 = sub_1E0B7BD50(v12, a3);
  if (!v6)
  {
    v18 = v13;
    if (qword_1ECE78538 != -1)
    {
      swift_once();
    }

    v14 = __swift_project_value_buffer(v11, qword_1ECE791D0);
    sub_1E0B64A30(v14, v9 + 1);
    if (qword_1ECE78558 != -1)
    {
      swift_once();
    }

    v15 = __swift_project_value_buffer(v11, qword_1ECE79230);
    sub_1E0B64A30(v15, v10 + 1);
    if (qword_1ECE783D8 != -1)
    {
      swift_once();
    }

    v17 = dword_1ECE78C74;
    v11 = sub_1E0B7B344(&v17, v18);
  }

  return v11;
}

char *sub_1E0B83480(unsigned __int8 *a1, unsigned __int8 *a2, char *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v11 = *a1;
  v12 = *a2;
  if (*a5 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for der_key(0);
  v14 = __swift_project_value_buffer(v13, a6);
  v15 = sub_1E0B7BD50(v14, a4);
  if (!v7)
  {
    v21 = v15;
    if (qword_1ECE78538 != -1)
    {
      swift_once();
    }

    v16 = __swift_project_value_buffer(v13, qword_1ECE791D0);
    sub_1E0B64A30(v16, v11 + 1);
    if (qword_1ECE78558 != -1)
    {
      swift_once();
    }

    v17 = __swift_project_value_buffer(v13, qword_1ECE79230);
    sub_1E0B64A30(v17, v12 + 1);
    if (qword_1ECE783F8 != -1)
    {
      swift_once();
    }

    v18 = __swift_project_value_buffer(v13, qword_1ECE78E10);
    sub_1E0B64CA0(v18, a3);
    if (qword_1ECE783D8 != -1)
    {
      swift_once();
    }

    v20 = dword_1ECE78C74;
    a3 = sub_1E0B7B344(&v20, v21);
  }

  return a3;
}

uint64_t sub_1E0B836A4(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

unint64_t sub_1E0B836DC()
{
  result = qword_1ECE78D20;
  if (!qword_1ECE78D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78D20);
  }

  return result;
}

unint64_t sub_1E0B83734()
{
  result = qword_1ECE78D28;
  if (!qword_1ECE78D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78D28);
  }

  return result;
}

unint64_t sub_1E0B837BC()
{
  result = qword_1ECE78D40;
  if (!qword_1ECE78D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78D40);
  }

  return result;
}

uint64_t sub_1E0B83840(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_1E0B83898()
{
  result = qword_1ECE78D58;
  if (!qword_1ECE78D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78D58);
  }

  return result;
}

unint64_t sub_1E0B838F0()
{
  result = qword_1ECE78D60;
  if (!qword_1ECE78D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78D60);
  }

  return result;
}

unint64_t sub_1E0B83948()
{
  result = qword_1ECE78D68;
  if (!qword_1ECE78D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78D68);
  }

  return result;
}

unint64_t sub_1E0B839A0()
{
  result = qword_1ECE78D70;
  if (!qword_1ECE78D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78D70);
  }

  return result;
}

unint64_t sub_1E0B839F8()
{
  result = qword_1ECE78D78;
  if (!qword_1ECE78D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78D78);
  }

  return result;
}

unint64_t sub_1E0B83A50()
{
  result = qword_1ECE77A58;
  if (!qword_1ECE77A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE77A58);
  }

  return result;
}

unint64_t sub_1E0B83AA8()
{
  result = qword_1ECE77A50;
  if (!qword_1ECE77A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE77A50);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AKSRefKeyParam(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE7)
  {
    goto LABEL_17;
  }

  if (a2 + 25 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 25) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 25;
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

      return (*a1 | (v4 << 8)) - 25;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 25;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1A;
  v8 = v6 - 26;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AKSRefKeyParam(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 25 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 25) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE7)
  {
    v4 = 0;
  }

  if (a2 > 0xE6)
  {
    v5 = ((a2 - 231) >> 8) + 1;
    *result = a2 + 25;
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
    *result = a2 + 25;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AKSSystemKeyType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AKSSystemKeyType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1E0B83DAC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1E0B83E3C(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AKSKeyClass(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEC)
  {
    goto LABEL_17;
  }

  if (a2 + 20 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 20) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 20;
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

      return (*a1 | (v4 << 8)) - 20;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 20;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x15;
  v8 = v6 - 21;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AKSKeyClass(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 20 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 20) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEC)
  {
    v4 = 0;
  }

  if (a2 > 0xEB)
  {
    v5 = ((a2 - 236) >> 8) + 1;
    *result = a2 + 20;
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
    *result = a2 + 20;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AKSRefKeyType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AKSRefKeyType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1E0B84388(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1E0B843D0(uint64_t result, int a2, int a3)
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

uint64_t sub_1E0B84AA4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1E0B84B0C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1E0B84B6C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E0B84BE4()
{
  v0 = sub_1E0BA8D38();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E0BA8D58();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1E0BA8C78();
  MEMORY[0x1EEE9AC00](v5 - 8);
  sub_1E0B852DC();
  sub_1E0BA8C68();
  v7[1] = MEMORY[0x1E69E7CC0];
  sub_1E0B85328();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE78DA8, &qword_1E0BAE990);
  sub_1E0B85380();
  sub_1E0BA8D98();
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8098], v0);
  result = sub_1E0BA8D68();
  qword_1ECE79650 = result;
  return result;
}

void sub_1E0B84DEC()
{
  v8 = *MEMORY[0x1E69E9840];
  if (!dword_1ECE78D90)
  {
    connect = 0;
    v0 = *MEMORY[0x1E696CD60];
    MatchingService = IORegistryEntryFromPath(*MEMORY[0x1E696CD60], "IOService:/IOResources/AppleKeyStore");
    if (!MatchingService)
    {
      v2 = sub_1E0BA8CC8();
      v3 = IOServiceMatching((v2 + 32));

      MatchingService = IOServiceGetMatchingService(v0, v3);
      if (!MatchingService)
      {
        sub_1E0B67560();
        swift_allocError();
        *v6 = 21;
        swift_willThrow();
        return;
      }
    }

    v4 = MatchingService;
    if (!IOServiceOpen(MatchingService, *MEMORY[0x1E69E9A60], 0, &connect))
    {
      if (!IOConnectCallMethod(connect, 0, 0, 0, 0, 0, 0, 0, 0, 0))
      {
        dword_1ECE78D90 = connect;
        IOObjectRelease(v4);
        return;
      }

      IOServiceClose(connect);
    }

    sub_1E0B67560();
    swift_allocError();
    *v5 = 21;
    swift_willThrow();
    IOObjectRelease(v4);
  }
}

uint64_t sub_1E0B84FE0(uint32_t a1, uint64_t a2, uint64_t a3, char **a4, char **a5)
{
  v6 = v5;
  v33 = *MEMORY[0x1E69E9840];
  v9 = *a4;
  if (*a4)
  {
    v10 = *(v9 + 2);
    if (HIDWORD(v10))
    {
      __break(1u);
      goto LABEL_40;
    }

    v11 = *a4;
  }

  else
  {
    LODWORD(v10) = 0;
    v11 = MEMORY[0x1E69E7CC0];
  }

  outputCnt = v10;
  v12 = *a5;
  if (*a5)
  {
    v13 = *(v12 + 2);
    v14 = *a5;
  }

  else
  {
    v13 = 0;
    v14 = MEMORY[0x1E69E7CC0];
  }

  v31 = v13;
  v15 = qword_1ECE78728;

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = qword_1ECE79650;
  sub_1E0BA8D48();
  if (v6)
  {

    return v6;
  }

  v17 = dword_1ECE78D90;
  if (a2)
  {
    v18 = *(a2 + 16);
    if (!HIDWORD(v18))
    {
      goto LABEL_16;
    }

    __break(1u);
  }

  LODWORD(v18) = 0;
LABEL_16:
  inputCnt = v18;
  connection = v17;
  if (a3)
  {
    v19 = *(a3 + 16);
  }

  else
  {
    v19 = 0;
  }

  if (a2)
  {
    v20 = (a2 + 32);
  }

  else
  {
    v20 = 0;
  }

  if (a3)
  {
    v21 = (a3 + 32);
  }

  else
  {
    v21 = 0;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v11 = sub_1E0B66A34(0, *(v11 + 2), 0, v11);
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v14 = sub_1E0B66940(0, *(v14 + 2), 0, v14);
  }

  v6 = IOConnectCallMethod(connection, a1, v20, inputCnt, v21, v19, v11 + 4, &outputCnt, v14 + 32, &v31);

  if (v9)
  {

    *a4 = v11;
    if (v12)
    {
      goto LABEL_31;
    }

LABEL_37:

    return v6;
  }

  if (!v12)
  {
    goto LABEL_37;
  }

LABEL_31:
  if ((v31 & 0x8000000000000000) != 0)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }

  v22 = *(v14 + 2);
  if (v22 < v31)
  {
    goto LABEL_41;
  }

  if (v22 != v31)
  {
    sub_1E0B726FC(v14, (v14 + 32), 0, (2 * v31) | 1);
    v24 = v23;

    v14 = v24;
  }

  *a5 = v14;
  return v6;
}

unint64_t sub_1E0B852DC()
{
  result = qword_1ECE78D98;
  if (!qword_1ECE78D98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECE78D98);
  }

  return result;
}

unint64_t sub_1E0B85328()
{
  result = qword_1ECE78DA0;
  if (!qword_1ECE78DA0)
  {
    sub_1E0BA8D58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78DA0);
  }

  return result;
}

unint64_t sub_1E0B85380()
{
  result = qword_1ECE78DB0;
  if (!qword_1ECE78DB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE78DA8, &qword_1E0BAE990);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE78DB0);
  }

  return result;
}

uint64_t X509PolicySetFlagsForCommonNames(uint64_t a1)
{
  v5[2] = *MEMORY[0x1E69E9840];
  v2 = (a1 + 104);
  v5[0] = 0xAAAAAAAAAAAAAAAALL;
  v5[1] = 0xAAAAAAAAAAAAAAAALL;
  if (v2 > a1 + 120)
  {
    __break(0x5519u);
  }

  result = X509CertificateSubjectNameGetCommonName(v2, v5);
  if (!result)
  {
    result = compare_octet_string(&iPhoneCAName, v5);
    if (result)
    {
      result = compare_octet_string(&CodeSigningCAName, v5);
      if (result)
      {
        result = compare_octet_string_partial(&MFi4AccessoryCAName, v5);
        if (result)
        {
          result = compare_octet_string_partial(&MFi4AttestationCAName, v5);
          if (result)
          {
            result = compare_octet_string_partial(&MFi4ProvisioningCAName, v5);
            if (result)
            {
              return result;
            }

            v4 = 0x1000000000;
          }

          else
          {
            v4 = 0x800000000;
          }
        }

        else
        {
          v4 = 0x400000000;
        }
      }

      else
      {
        v4 = 0x800000000008;
      }
    }

    else
    {
      v4 = 3840;
    }

    *(a1 + 240) |= v4;
  }

  return result;
}

double X509PolicySetFlagsForMFI(uint64_t a1)
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = (a1 + 104);
  v7[0] = 0xAAAAAAAAAAAAAAAALL;
  v7[1] = 0xAAAAAAAAAAAAAAAALL;
  if (v2 > a1 + 120)
  {
    __break(0x5519u);
  }

  if (!X509CertificateSubjectNameGetCommonName(v2, v7))
  {
    if (compare_octet_string_partial(&MFICommonNamePrefix, v7))
    {
      goto LABEL_4;
    }

    v6 = 0;
    if (!X509CertificateGetNotBefore(a1, &v6))
    {
      memset(&v5, 0, sizeof(v5));
      strptime("2006-05-31", "%F", &v5);
      v4 = timegm(&v5);
      result = difftime(v4, v6);
      if (result < 0.0)
      {
        *(a1 + 240) |= 0x8000000uLL;
LABEL_4:
        if (!compare_octet_string_partial(&MFi4ProvisioningHostNamePrefix, v7))
        {
          *(a1 + 240) |= 0x1000000000uLL;
        }
      }
    }
  }

  return result;
}

uint64_t X509PolicySetFlagsForRoots(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    return result;
  }

  v3 = result;
  if (*(result + 16) == 1)
  {
    v4 = numAppleProdRoots;
    if (numAppleProdRoots)
    {
      if (a2 + 88 <= (a2 + 104))
      {
        v5 = AppleRootSPKIs;
        while (1)
        {
          v6 = v5 + 1;
          v7 = v5 < AppleRootSPKIs || v6 > &rsaEncryption;
          if (v7 || v5 >= v6)
          {
            break;
          }

          result = compare_octet_string(a2 + 88, *v5);
          if (!result)
          {
            *(a2 + 240) |= 0xD8E30653FFF8uLL;
            goto LABEL_17;
          }

          ++v5;
          if (!--v4)
          {
            goto LABEL_17;
          }
        }
      }

      goto LABEL_50;
    }
  }

LABEL_17:
  v9 = *(v3 + 8);
  if ((v9 & 0x1000000) != 0)
  {
    result = a2 + 88;
    if (a2 + 88 > (a2 + 104))
    {
      goto LABEL_50;
    }

    result = compare_octet_string(result, &UcrtRootSPKI);
    if (!result)
    {
      v10 = *(a2 + 240) | 0x1000000;
      goto LABEL_27;
    }
  }

  else
  {
    if ((v9 & 0x1C00000000) == 0)
    {
      goto LABEL_28;
    }

    result = a2 + 88;
    if (a2 + 88 > (a2 + 104))
    {
      goto LABEL_50;
    }

    result = compare_octet_string(result, &MFi4RootSPKI);
    if (!result)
    {
      v10 = *(a2 + 240) | 0x1C00000000;
LABEL_27:
      *(a2 + 240) = v10;
      goto LABEL_28;
    }
  }

  if (*(v3 + 17) == 1)
  {
    result = X509PolicySetFlagsForTestAnchor(v3, a2);
  }

LABEL_28:
  if (*(v3 + 16) == 1 && *(v3 + 17) == 1 && numAppleProdRoots < numAppleRoots)
  {
    if (a2 + 88 <= (a2 + 104))
    {
      v11 = &AppleRootSPKIs[numAppleProdRoots];
      v12 = numAppleRoots - numAppleProdRoots;
      while (1)
      {
        v13 = v11 + 1;
        v14 = v11 < AppleRootSPKIs || v13 > &rsaEncryption;
        if (v14 || v11 >= v13)
        {
          break;
        }

        result = compare_octet_string(a2 + 88, *v11);
        if (!result)
        {
          *(a2 + 240) |= 0xD8E30653FFF8uLL;
          goto LABEL_44;
        }

        ++v11;
        if (!--v12)
        {
          goto LABEL_44;
        }
      }
    }

    goto LABEL_50;
  }

LABEL_44:
  if (*(v3 + 16) == 1 && *(v3 + 17) == 1)
  {
    result = a2 + 88;
    if (a2 + 88 <= (a2 + 104))
    {
      result = compare_octet_string(result, &TestAppleRootECCSPKI);
      if (!result)
      {
        *(a2 + 240) |= 0x6400000uLL;
      }

      return result;
    }

LABEL_50:
    __break(0x5519u);
  }

  return result;
}

uint64_t X509PolicySetFlagsForTestAnchor(void *a1, uint64_t a2)
{
  v6[2] = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  v6[1] = 0;
  v5[0] = 0;
  v5[1] = 0;
  if (a2 + 88 > (a2 + 104))
  {
    __break(0x5519u);
  }

  result = X509CertificateParseSPKI((a2 + 88), v6, 0, v5);
  if (!result)
  {
    result = compare_octet_string(a1[4], v6);
    if (!result)
    {
      result = compare_octet_string(a1[3], v5);
      if (!result)
      {
        *(a2 + 240) |= a1[1];
      }
    }
  }

  return result;
}

unint64_t X509PolicyCheckForBlockedKeys(uint64_t a1)
{
  result = a1 + 88;
  if (result > a1 + 104)
  {
    __break(0x5519u);
  }

  else
  {
    result = compare_octet_string(result, &BlockedYonkersSPKI);
    if (!result)
    {
      *(a1 + 240) &= 0xFFFFFFFFFFF3FFFFLL;
    }
  }

  return result;
}

int *find_digest(uint64_t a1)
{
  v2 = 0;
  while (1)
  {
    result = &digests[v2 / 4 + 2];
    if (result > &digests[v2 / 4 + 6])
    {
      __break(0x5519u);
      goto LABEL_9;
    }

    result = compare_octet_string_raw(result, *a1, *(a1 + 8));
    if (!result)
    {
      break;
    }

    v2 += 32;
    if (v2 == 160)
    {
      return 0;
    }
  }

  if (v2 <= ~digests)
  {
    return &digests[v2 / 4];
  }

LABEL_9:
  __break(0x5513u);
  return result;
}

int *find_digest_by_type(int *result)
{
  v1 = 0;
  while (digests[v1 / 4] != result)
  {
    v1 += 32;
    if (v1 == 160)
    {
      return 0;
    }
  }

  if (v1 <= ~digests)
  {
    return &digests[v1 / 4];
  }

  __break(0x5513u);
  return result;
}

uint64_t find_digestOID_for_signingOID(uint64_t a1, void *a2)
{
  if (!compare_octet_string_raw(a1, &sha1WithRSA_oid, 9uLL) || !compare_octet_string_raw(a1, &sha1WithECDSA_oid, 7uLL))
  {
    v6 = &CTOidSha1;
    v4 = 5;
    goto LABEL_11;
  }

  v4 = 9;
  if (!compare_octet_string_raw(a1, &sha256WithRSA_oid, 9uLL))
  {
    v6 = &CTOidSha256;
    goto LABEL_11;
  }

  if (!compare_octet_string_raw(a1, &sha256WithECDSA_oid, 8uLL))
  {
    v6 = &CTOidSha256;
LABEL_18:
    v4 = 9;
    goto LABEL_11;
  }

  v4 = 9;
  if (!compare_octet_string_raw(a1, &sha384WithRSA_oid, 9uLL))
  {
    v6 = &CTOidSha384;
    goto LABEL_11;
  }

  if (!compare_octet_string_raw(a1, &sha384WithECDSA_oid, 8uLL))
  {
    v6 = &CTOidSha384;
    goto LABEL_18;
  }

  v4 = 9;
  if (compare_octet_string_raw(a1, &sha512WithRSA_oid, 9uLL))
  {
    if (compare_octet_string_raw(a1, &sha512WithECDSA_oid, 8uLL))
    {
      return 0;
    }

    v6 = &CTOidSha512;
    goto LABEL_18;
  }

  v6 = &CTOidSha512;
LABEL_11:
  *a2 = v6;
  a2[1] = v4;
  return 1;
}

unint64_t validateSignatureRSA(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = 0;
  v27 = *MEMORY[0x1E69E9840];
  v23 = 0;
  if (!result)
  {
    return v5 & 1;
  }

  if (!a2)
  {
    return v5 & 1;
  }

  v5 = 0;
  if (!a3 || !a4 || !a5)
  {
    return v5 & 1;
  }

  if (a5 + 7 > a5 + 9)
  {
    goto LABEL_34;
  }

  v8 = result;
  result = compare_octet_string(&rsaEncryption, (a5 + 7));
  if (result)
  {
    result = validateOIDs(&rsaAlgs, (a5 + 3), (a5 + 7));
    if (!result)
    {
      goto LABEL_23;
    }
  }

  v21 = 0xAAAAAAAAAAAAAAAALL;
  v22 = 0xAAAAAAAAAAAAAAAALL;
  v10 = a5[9];
  v9 = a5[10];
  if (__CFADD__(v10, v9))
  {
    goto LABEL_35;
  }

  if (v10 > v10 + v9)
  {
    goto LABEL_34;
  }

  v21 = a5[9];
  v22 = v10 + v9;
  if (v9)
  {
    result = ccder_blob_check_null(&v21);
    if (!result)
    {
      goto LABEL_23;
    }
  }

  if (__CFADD__(v8, a2))
  {
    goto LABEL_35;
  }

  if (v8 + a2 < v8)
  {
    goto LABEL_34;
  }

  result = ccder_decode_rsa_pub_n();
  if (!result)
  {
LABEL_23:
    v5 = 0;
    return v5 & 1;
  }

  v11 = result;
  if (!(result >> 58))
  {
    v12 = result << 6;
    if (result << 6 >= 0x400)
    {
      v25 = 0xAAAAAAAAAAAAAAAALL;
      v26 = -21846;
      v24 = 6;
      if (&vars0 == 82)
      {
        goto LABEL_35;
      }

      v13 = a5[4];
      LOBYTE(v25) = v13;
      if (&v24 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_35;
      }

      if (v13 < 0xA)
      {
        result = __memcpy_chk();
        if (result <= result + v13)
        {
          if (v12 > 0x1068)
          {
            goto LABEL_23;
          }

          result = MEMORY[0x1EEE9AC00](result);
          v16 = (&v20 - 4 * v15);
          v17 = 0;
          *&v18 = 0xAAAAAAAAAAAAAAAALL;
          *(&v18 + 1) = 0xAAAAAAAAAAAAAAAALL;
          do
          {
            v19 = &v16[v17 / 8];
            *v19 = v18;
            *(v19 + 1) = v18;
            v17 += 32;
          }

          while ((v14 & 0x7FFFFFFFFFFFFFE0) != v17);
          if (v16 + 4 <= &v20 && v16 <= v16 + 4)
          {
            *v16 = v11;
            if (ccrsa_import_pub())
            {
              v5 = 0;
            }

            else if (ccrsa_verify_pkcs1v15_allowshortsigs())
            {
              v5 = 0;
              v23 = 0;
            }

            else
            {
              v5 = v23;
            }

            return v5 & 1;
          }
        }
      }

LABEL_34:
      __break(0x5519u);
LABEL_35:
      __break(0x5513u);
      goto LABEL_36;
    }

    goto LABEL_23;
  }

LABEL_36:
  __break(0x550Cu);
  return result;
}

unint64_t validateOIDs(unint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = 0;
  v7 = 1;
  while (v5 < v5 + 16)
  {
    result = compare_octet_string(v5, a2);
    if (result)
    {
      goto LABEL_11;
    }

    if (v5 + 16 > v5 + 32)
    {
      break;
    }

    result = compare_octet_string(v5 + 16, a3);
    if (result)
    {
LABEL_11:
      v7 = v6 < 3;
      v5 += 32;
      if (++v6 != 4)
      {
        continue;
      }
    }

    return v7;
  }

  __break(0x5519u);
  return result;
}

_UNKNOWN **oidForPubKeyLength()
{
  v0 = ccec_x963_import_pub_size();
  is_supported = ccec_keysize_is_supported();
  v2 = &CTOidSECP256r1;
  v3 = &CTOidSECP521r1;
  v4 = &CTOidSECP384r1;
  if (v0 != 384)
  {
    v4 = 0;
  }

  if (v0 != 521)
  {
    v3 = v4;
  }

  if (v0 != 256)
  {
    v2 = v3;
  }

  if (is_supported)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t *validateSignatureEC(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = 0;
  v19 = *MEMORY[0x1E69E9840];
  v18 = 0;
  if (!result)
  {
    return (v5 & 1);
  }

  if (!a2)
  {
    return (v5 & 1);
  }

  v5 = 0;
  if (!a3 || !a4 || !a5)
  {
    return (v5 & 1);
  }

  v7 = a5 + 72;
  if (a5 + 56 > (a5 + 72))
  {
    goto LABEL_32;
  }

  result = compare_octet_string(&ecPublicKey, a5 + 56);
  if (result)
  {
    result = validateOIDs(&ecAlgs, a5 + 24, a5 + 56);
    if (!result)
    {
      goto LABEL_27;
    }
  }

  if (v7 > a5 + 88)
  {
    goto LABEL_32;
  }

  result = ccec_cp_for_oid((a5 + 72));
  if (!result)
  {
LABEL_27:
    v5 = 0;
    return (v5 & 1);
  }

  if (result >= result + 4)
  {
    goto LABEL_32;
  }

  v8 = *result;
  if (*result >> 61 || !is_mul_ok(8 * v8, 3uLL))
  {
    goto LABEL_33;
  }

  v9 = 24 * v8;
  v10 = __CFADD__(v9, 16);
  v11 = v9 + 16;
  if (v10 || v11 >= 0xFFFFFFFFFFFFFFF0)
  {
    goto LABEL_34;
  }

  result = MEMORY[0x1EEE9AC00](result);
  v14 = &v17[-16 * v13];
  v15 = 0;
  do
  {
    v16 = &v14[v15 / 8];
    *v16 = 0xAAAAAAAAAAAAAAAALL;
    v16[1] = 0xAAAAAAAAAAAAAAAALL;
    v15 += 16;
  }

  while ((v12 & 0xFFFFFFFFFFFFFFF0) != v15);
  if (v12 < 0x10)
  {
    goto LABEL_35;
  }

  *v14 = result;
  if (v14 + 2 > v17 || v14 > v14 + 2)
  {
LABEL_32:
    __break(0x5519u);
LABEL_33:
    __break(0x550Cu);
LABEL_34:
    __break(0x5500u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (MEMORY[0x1E12E84F0]())
  {
    goto LABEL_30;
  }

  result = ccec_x963_import_pub_size();
  if (result != 256 || *(a5 + 96) != 64)
  {
    if (ccec_verify())
    {
LABEL_29:
      v18 = 0;
    }

LABEL_30:
    v5 = v18;
    return (v5 & 1);
  }

  if (*(a5 + 88) < 0xFFFFFFFFFFFFFFE0)
  {
    if (!ccec_verify_composite())
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

LABEL_36:
  __break(0x5513u);
  return result;
}

uint64_t ccec_cp_for_oid(int **a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1[1];
  if (v1 != 7)
  {
    if (v1 == 10 && **a1 == 0x33DCE48862A0806 && *(*a1 + 4) == 1793)
    {
      JUMPOUT(0x1E12E84B0);
    }

    return 0;
  }

  v3 = *a1;
  if (**a1 == -2127887098 && *(*a1 + 3) == 570426497)
  {
    JUMPOUT(0x1E12E84C0);
  }

  v5 = *v3;
  v6 = *(v3 + 3);
  if (v5 != -2127887098 || v6 != 587203713)
  {
    return 0;
  }

  return MEMORY[0x1EEE6F3C8]();
}

uint64_t compressECPublicKey(void *a1, int **a2, uint64_t a3, uint64_t a4)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v7 = ccec_cp_for_oid(a2);
  if (!v7)
  {
    return 655366;
  }

  v8 = v7;
  if (v7 >= v7 + 4)
  {
    goto LABEL_20;
  }

  v9 = *v7;
  if (*v7 >> 61 || !is_mul_ok(8 * v9, 3uLL))
  {
    goto LABEL_21;
  }

  v10 = 24 * v9;
  v11 = __CFADD__(v10, 16);
  v12 = v10 + 16;
  if (v11 || v12 >= 0xFFFFFFFFFFFFFFF0)
  {
LABEL_22:
    __break(0x5500u);
  }

  result = MEMORY[0x1EEE9AC00](v7);
  v16 = &v19[-2 * v15];
  v17 = 0;
  do
  {
    v18 = &v16[v17 / 8];
    *v18 = 0xAAAAAAAAAAAAAAAALL;
    v18[1] = 0xAAAAAAAAAAAAAAAALL;
    v17 += 16;
  }

  while ((v14 & 0xFFFFFFFFFFFFFFF0) != v17);
  if (v14 < 0x10)
  {
    __break(1u);
    return result;
  }

  *v16 = v8;
  if (v16 + 2 > v19 || v16 > v16 + 2)
  {
LABEL_20:
    __break(0x5519u);
LABEL_21:
    __break(0x550Cu);
    goto LABEL_22;
  }

  result = MEMORY[0x1E12E84F0](v8, a1[1], *a1, v16);
  if (!result)
  {
    if (ccec_compressed_x962_export_pub_size() == a4)
    {
      if (!a3 || a4)
      {
        return ccec_compressed_x962_export_pub();
      }

      goto LABEL_20;
    }

    return 393220;
  }

  return result;
}

uint64_t decompressECPublicKey(uint64_t a1, int **a2, uint64_t a3, uint64_t a4)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v6 = ccec_cp_for_oid(a2);
  if (!v6)
  {
    return 655366;
  }

  if (v6 >= v6 + 4)
  {
LABEL_23:
    __break(0x5519u);
    goto LABEL_24;
  }

  v7 = *v6;
  if (*v6 >> 61 || !is_mul_ok(8 * v7, 3uLL))
  {
LABEL_25:
    __break(0x550Cu);
  }

  v8 = 24 * v7;
  v9 = __CFADD__(v8, 16);
  v10 = v8 + 16;
  if (v9 || v10 >= 0xFFFFFFFFFFFFFFF0)
  {
    goto LABEL_24;
  }

  result = MEMORY[0x1EEE9AC00](v6);
  v14 = &v19[-2 * v13];
  v15 = 0;
  do
  {
    v16 = &v14[v15 / 8];
    *v16 = 0xAAAAAAAAAAAAAAAALL;
    v16[1] = 0xAAAAAAAAAAAAAAAALL;
    v15 += 16;
  }

  while ((v12 & 0xFFFFFFFFFFFFFFF0) != v15);
  if (v12 >= 0x10)
  {
    *v14 = result;
    if (v14 + 2 <= v19 && v14 <= v14 + 2)
    {
      v17 = ccec_compressed_x962_import_pub();
      if (!v17)
      {
        v18 = cczp_bitlen();
        if (v18 < 0xFFFFFFFFFFFFFFF9)
        {
          if (!a3 || a4)
          {
            if ((((v18 + 7) >> 2) | 1) == a4)
            {
              v17 = 0;
            }

            else
            {
              v17 = 393220;
            }

            ccec_export_pub();
            return v17;
          }

          goto LABEL_23;
        }

LABEL_24:
        __break(0x5500u);
        goto LABEL_25;
      }

      return v17;
    }

    goto LABEL_23;
  }

  __break(1u);
  return result;
}

unint64_t CTCopyDeviceIdentifiers(unint64_t result, uint64_t a2, uint64_t a3)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v3 = 327696;
  if (!result || !a2)
  {
    return v3;
  }

  v12 = 0;
  v13[0] = 0;
  v11 = 0;
  if (__CFADD__(result, a2))
  {
    __break(0x5513u);
  }

  else if (result + a2 >= result)
  {
    v10[0] = result;
    v10[1] = result + a2;
    v5 = CTConvertDashTerminatedHexstringTo64BitInteger(v10, v13);
    v6 = 327697;
    if (!v5 && !HIDWORD(v13[0]))
    {
      if (CTConvertDashTerminatedHexstringTo64BitInteger(v10, &v12))
      {
        return 327698;
      }

      else
      {
        v7 = CTConvertDashTerminatedHexstringTo64BitInteger(v10, &v11);
        v6 = 327699;
        if (!v7)
        {
          v8 = v11;
          if (v11 <= 0xFF)
          {
            v6 = 0;
            if (a3)
            {
              v9 = v12;
              *a3 = v13[0];
              *(a3 + 8) = v9;
              *(a3 + 16) = (v8 & 8) != 0;
              *(a3 + 17) = (v8 & 4) != 0;
              *(a3 + 18) = v8 & 3;
              *(a3 + 24) = 0;
              *(a3 + 32) = 0;
            }
          }
        }
      }
    }

    return v6;
  }

  __break(0x5519u);
  return result;
}

uint64_t CTConvertDashTerminatedHexstringTo64BitInteger(uint64_t result, void *a2)
{
  v2 = *result;
  v3 = *(result + 8);
  if (*result > v3)
  {
    goto LABEL_50;
  }

  v4 = result;
  v5 = *result;
  if (*result < v3)
  {
    v5 = *result;
    while (*v5 != 45)
    {
      v6 = v5 + 1;
      if ((v5 + 1) > v3 || v5 > v6)
      {
        goto LABEL_50;
      }

      *result = v6;
      ++v5;
      if (v6 == v3)
      {
        v5 = v3;
        break;
      }
    }
  }

  if (v5 > v3 || v2 > v5)
  {
    goto LABEL_50;
  }

  result = 327708;
  if (v5 == v3)
  {
    return result;
  }

  v7 = v5 - v2;
  if (v5 - v2 > 16)
  {
    return result;
  }

  if (v5 == -1)
  {
    goto LABEL_51;
  }

  v8 = v5 + 1;
  if ((v5 + 1) > v3 || v5 > v8)
  {
LABEL_50:
    __break(0x5519u);
LABEL_51:
    __break(0x5513u);
LABEL_52:
    __break(0x5500u);
    return result;
  }

  v9 = 0;
  *v4 = v8;
  if (v2 >= v5 || (v10 = (v7 + 1 + (((v7 + 1) & 0x8000u) >> 15)) >> 1, v10 < 1))
  {
LABEL_46:
    result = 0;
    if (a2)
    {
      *a2 = v9;
    }
  }

  else
  {
    v11 = 0;
    v9 = 0;
    while (1)
    {
      if (v7 & 1) == 0 || (v11)
      {
        v13 = *v2;
        if (v13 > ~asciiNibbleToByte)
        {
          goto LABEL_51;
        }

        v14 = &asciiNibbleToByte[v13];
        v15 = v14 < &CTOidAppleImg4Manifest && v14 >= asciiNibbleToByte;
        if (!v15)
        {
          goto LABEL_50;
        }

        if (v2 == -1)
        {
          goto LABEL_51;
        }

        if (v2 + 1 > v5 || v2 > v2 + 1)
        {
          goto LABEL_50;
        }

        v12 = *v14;
        ++v2;
      }

      else
      {
        v12 = 0;
      }

      if (v2 >= v5)
      {
        return 327703;
      }

      v16 = *v2;
      if (v16 > ~asciiNibbleToByte)
      {
        goto LABEL_51;
      }

      v17 = &asciiNibbleToByte[v16];
      if (&asciiNibbleToByte[v16] >= &CTOidAppleImg4Manifest || v17 < asciiNibbleToByte)
      {
        goto LABEL_50;
      }

      v19 = v2 + 1;
      if (v2 + 1 > v5 || v2 > v19)
      {
        goto LABEL_50;
      }

      if (v12 > 0xF)
      {
        return 327703;
      }

      v20 = *v17;
      if (v20 > 0xF)
      {
        return 327703;
      }

      v21 = (v20 | (16 * v12)) << (8 * (v10 - 1));
      v15 = __CFADD__(v9, v21);
      v9 += v21;
      if (v15)
      {
        goto LABEL_52;
      }

      if (v19 < v5)
      {
        v11 = 1;
        v22 = v10;
        LOBYTE(v10) = v10 - 1;
        ++v2;
        if (v22 > 1)
        {
          continue;
        }
      }

      goto LABEL_46;
    }
  }

  return result;
}

unint64_t CTEvaluateBAASystemWithId(unint64_t a1, uint64_t a2, void *a3, void *a4, unint64_t a5)
{
  v10 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v9 = 0;
  v7 = 0;
  result = CTEvaluateCertsForPolicy(a1, a2, 0, 1, a3, a4, 0, 0, &v7, &v8, X509PolicyBAASystem);
  if (!result)
  {
    return CTFillBAAIdentity(v7, v8, v9, a5);
  }

  return result;
}

unint64_t CTFillBAAIdentity(int a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((a1 & 0x800000) != 0 && a4)
  {
    result = CTCopyDeviceIdentifiers(a2, a3, a4);
    if (result)
    {
      return result;
    }
  }

  else if (!a4)
  {
    return 0;
  }

  result = 0;
  if (a1 < 0 && a3)
  {
    if (a2)
    {
      *(a4 + 32) = 0;
      *a4 = 0u;
      *(a4 + 16) = 0u;
      if (a4 + 40 < a4)
      {
        __break(0x5519u);
      }

      else
      {
        result = 0;
        *(a4 + 24) = a2;
        *(a4 + 32) = a3;
      }

      return result;
    }

    return 0;
  }

  return result;
}

unint64_t CTEvaluateBAASystemTestRoot(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, unint64_t a7)
{
  v12 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v11 = 0;
  v9 = 0;
  result = CTEvaluateCertsForPolicy(a1, a2, 1, 1, a5, a6, a3, a4, &v9, &v10, X509PolicyBAASystem);
  if (!result)
  {
    return CTFillBAAIdentity(v9, v10, v11, a7);
  }

  return result;
}

unint64_t CTEvaluateBAAUser(unint64_t a1, uint64_t a2, void *a3, void *a4, unint64_t a5)
{
  v10 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v9 = 0;
  v7 = 0;
  result = CTEvaluateCertsForPolicy(a1, a2, 0, 1, a3, a4, 0, 0, &v7, &v8, X509PolicyBAAUser);
  if (!result)
  {
    return CTFillBAAIdentity(v7, v8, v9, a5);
  }

  return result;
}

unint64_t CTEvaluateBAAUserTestRoot(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, unint64_t a7)
{
  v12 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v11 = 0;
  v9 = 0;
  result = CTEvaluateCertsForPolicy(a1, a2, 1, 1, a5, a6, a3, a4, &v9, &v10, X509PolicyBAAUser);
  if (!result)
  {
    return CTFillBAAIdentity(v9, v10, v11, a7);
  }

  return result;
}

unint64_t CTEvaluateBAASepApp(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, unint64_t a7)
{
  v12 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v11 = 0;
  v9 = 0;
  result = CTEvaluateCertsForPolicy(a1, a2, 1, 1, a5, a6, a3, a4, &v9, &v10, X509PolicyBAASepApp);
  if (!result)
  {
    return CTFillBAAIdentity(v9, v10, v11, a7);
  }

  return result;
}

uint64_t CTEvaluateBAAAccessory(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  v14 = *MEMORY[0x1E69E9840];
  v12 = 0;
  v13 = 0;
  result = CTEvaluateCertsForPolicy(a1, a2, 0, 1, a5, a6, a3, a4, 0, &v12, X509PolicyMFi4Attestation);
  if (!result && a7)
  {
    if (a8)
    {
      v11 = v13;
      *a7 = v12;
      *a8 = v11;
    }
  }

  return result;
}

uint64_t CTEvaluateBAA(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8, void *a9, unint64_t a10)
{
  if (a1 > 2)
  {
    if (a1 != 3)
    {
      if (a1 == 4)
      {
        return CTEvaluateBAASepApp(a2, a3, a4, a5, a6, a7, a10);
      }

      return 327712;
    }

    return CTEvaluateBAAAccessory(a2, a3, a4, a5, a6, a7, a8, a9);
  }

  else
  {
    if (a1 != 1)
    {
      if (a1 == 2)
      {
        return CTEvaluateBAAUserTestRoot(a2, a3, a4, a5, a6, a7, a10);
      }

      return 327712;
    }

    return CTEvaluateBAASystemTestRoot(a2, a3, a4, a5, a6, a7, a10);
  }
}

uint64_t CTGetBAARootType(unint64_t a1, uint64_t a2)
{
  v5 = *MEMORY[0x1E69E9840];
  memset(v4, 0, sizeof(v4));
  if (__CFADD__(a1, a2))
  {
    __break(0x5513u);
LABEL_14:
    __break(0x5519u);
  }

  if (a1 + a2 < a1)
  {
    goto LABEL_14;
  }

  v3[0] = a1;
  v3[1] = a1 + a2;
  if (X509CertificateParse(v4, v3))
  {
    return 0;
  }

  if (!compare_octet_string(&v4[5] + 8, &BASystemRootSPKI))
  {
    return 1;
  }

  if (!compare_octet_string(&v4[5] + 8, &BAUserRootSPKI))
  {
    return 2;
  }

  if (compare_octet_string(&v4[5] + 8, &MFi4RootSPKI))
  {
    return 4 * (compare_octet_string(&v4[5] + 8, &BASepAppRootSPKI) == 0);
  }

  return 3;
}

uint64_t CTGetBAASubCAType(unint64_t a1, uint64_t a2)
{
  v5 = *MEMORY[0x1E69E9840];
  memset(v4, 0, sizeof(v4));
  if (__CFADD__(a1, a2))
  {
    __break(0x5513u);
LABEL_14:
    __break(0x5519u);
  }

  if (a1 + a2 < a1)
  {
    goto LABEL_14;
  }

  v3[0] = a1;
  v3[1] = a1 + a2;
  if (X509CertificateParse(v4, v3))
  {
    return 0;
  }

  if (!compare_octet_string(&v4[10] + 8, &BASystemRootSKID))
  {
    return 1;
  }

  if (!compare_octet_string(&v4[10] + 8, &BAUserRootSKID))
  {
    return 2;
  }

  if (compare_octet_string(&v4[10] + 8, &MFi4RootSKID))
  {
    return 4 * (compare_octet_string(&v4[10] + 8, &BASepAppRootSKID) == 0);
  }

  return 3;
}

unint64_t CTEvaluateDAK(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, unint64_t a7)
{
  v29 = *MEMORY[0x1E69E9840];
  v7 = a1 + a2;
  if (a1 + a2 < a1)
  {
    goto LABEL_32;
  }

  result = CTEvaluateBAAUserTestRoot(a1, a2, a3, a4, a5, a6, a7);
  if (result)
  {
    return result;
  }

  *&v12 = 0xAAAAAAAAAAAAAAAALL;
  *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v28[17] = v12;
  v28[18] = v12;
  v28[15] = v12;
  v28[16] = v12;
  v28[13] = v12;
  v28[14] = v12;
  v28[11] = v12;
  v28[12] = v12;
  v28[9] = v12;
  v28[10] = v12;
  v28[7] = v12;
  v28[8] = v12;
  v28[5] = v12;
  v28[6] = v12;
  v28[3] = v12;
  v28[4] = v12;
  v28[1] = v12;
  v28[2] = v12;
  v28[0] = v12;
  v19[0] = 0xAAAAAAAAAAAAAAAALL;
  v19[1] = 0xAAAAAAAAAAAAAAAALL;
  v18 = 0;
  if (__CFADD__(a1, a2))
  {
    goto LABEL_33;
  }

  v17[0] = a1;
  v17[1] = v7;
  result = X509ChainParseCertificateSet(v17, v28, 1, v19, &v18);
  if (result)
  {
    return result;
  }

  if (v19[0] >= v19[0] + 304)
  {
    goto LABEL_32;
  }

  if (!v19[0])
  {
    return 327691;
  }

  v26 = 0;
  v27 = 0;
  result = CTParseExtensionValue(*v19[0], *(v19[0] + 8), &CTOidAppleFDRIdentity, 9uLL, &v26, &v27);
  if (!result)
  {
    v24 = 0xAAAAAAAAAAAAAAAALL;
    v25 = 0xAAAAAAAAAAAAAAAALL;
    if (!__CFADD__(v26, v27))
    {
      if (v26 > v26 + v27)
      {
        goto LABEL_32;
      }

      v24 = v26;
      v25 = v26 + v27;
      v23 = v27;
      result = ccder_blob_decode_tl();
      if (!result)
      {
        return 720929;
      }

      if (v25 < v24)
      {
        goto LABEL_32;
      }

      v13 = v23;
      if (v23 > v25 - v24)
      {
        goto LABEL_32;
      }

      v26 = v24;
      v27 = v23;
      if (!__CFADD__(v24, v23))
      {
        v14 = v24;
        if (v24 < v24 + v23)
        {
          do
          {
            if (v14 < v24)
            {
              goto LABEL_32;
            }

            if (*v14 == 45)
            {
              goto LABEL_20;
            }

            ++v14;
            --v13;
          }

          while (v13);
          v14 = (v24 + v23);
        }

LABEL_20:
        if (v14 != -1)
        {
          if ((v14 + 1) >= v24 + v23)
          {
            return 327711;
          }

          if (v24 <= (v14 + 1))
          {
            v22[0] = v14 + 1;
            v22[1] = v24 + v23;
            v20 = 0;
            v21 = 0;
            v15 = CTConvertDashTerminatedHexstringTo64BitInteger(v22, &v21);
            result = 327697;
            if (!v15 && !HIDWORD(v21))
            {
              if (CTConvertDashTerminatedHexstringTo64BitInteger(v22, &v20))
              {
                return 327698;
              }

              else
              {
                result = 0;
                if (a7)
                {
                  v16 = v20;
                  *a7 = v21;
                  *(a7 + 8) = v16;
                }
              }
            }

            return result;
          }

LABEL_32:
          __break(0x5519u);
        }
      }
    }

LABEL_33:
    __break(0x5513u);
  }

  return result;
}

uint64_t CMSParseContentInfoSignedDataWithOptions(char *a1, uint64_t a2, unint64_t *a3, char a4)
{
  v41 = *MEMORY[0x1E69E9840];
  v27 = 0xAAAAAAAAAAAAAAAALL;
  v28 = 0xAAAAAAAAAAAAAAAALL;
  if (__CFADD__(a1, a2))
  {
    goto LABEL_110;
  }

  if (&a1[a2] < a1)
  {
    goto LABEL_108;
  }

  v4 = 65537;
  v27 = a1;
  v28 = &a1[a2];
  v26 = 0;
  v25 = 0xAAAAAAAAAAAAAAAALL;
  v7 = ccder_blob_decode_ber_tl(&v27, 0x2000000000000010, &v26 + 1, &v25);
  result = 65537;
  if (v7)
  {
    v23 = 0xAAAAAAAAAAAAAAAALL;
    v24 = 0xAAAAAAAAAAAAAAAALL;
    if (__CFADD__(v27, v25))
    {
      goto LABEL_110;
    }

    if (v27 > &v27[v25] || &v27[v25] > v28)
    {
      goto LABEL_108;
    }

    v23 = v27;
    v24 = &v27[v25];
    if (ccder_blob_decode_tl())
    {
      if (v24 < v23 || v25 > v24 - v23)
      {
        goto LABEL_108;
      }

      if (compare_octet_string_raw(&pkcs7_signedData_oid, v23, v25))
      {
        return 65539;
      }

      if (__CFADD__(v23, v25))
      {
        goto LABEL_110;
      }

      if (v23 > &v23[v25] || &v23[v25] > v24)
      {
        goto LABEL_108;
      }

      v23 += v25;
      if (!ccder_blob_decode_ber_tl(&v23, 0xA000000000000000, &v26, &v25))
      {
        return 65540;
      }

      v21 = 0xAAAAAAAAAAAAAAAALL;
      v22 = 0xAAAAAAAAAAAAAAAALL;
      if (__CFADD__(v23, v25))
      {
        goto LABEL_110;
      }

      if (v23 > &v23[v25] || &v23[v25] > v24)
      {
        goto LABEL_108;
      }

      v21 = v23;
      v22 = &v23[v25];
      v30 = 0;
      memset(v29, 170, sizeof(v29));
      if ((ccder_blob_decode_ber_tl(&v21, 0x2000000000000010, &v30 + 1, v29) & 1) == 0)
      {
        return 131073;
      }

      if (__CFADD__(v21, v29[0]))
      {
        goto LABEL_110;
      }

      v9 = 131080;
      if (&v21[v29[0]] != v22)
      {
        return 131082;
      }

      if (!ccder_blob_decode_uint64())
      {
        return 131074;
      }

      v10 = a3[11];
      result = 131092;
      if (v10 <= 4 && ((1 << v10) & 0x1A) != 0)
      {
        if (!ccder_blob_eat_ber_inner(&v21, 0x2000000000000011, 0, 125))
        {
          return 131075;
        }

        v34 = 0;
        v33 = 0;
        if ((ccder_blob_decode_ber_tl(&v21, 0x2000000000000010, &v34, &v33) & 1) == 0)
        {
          return 131076;
        }

        v31 = 0xAAAAAAAAAAAAAAAALL;
        v32 = 0xAAAAAAAAAAAAAAAALL;
        if (__CFADD__(v21, v33))
        {
          goto LABEL_110;
        }

        if (v21 > &v21[v33] || &v21[v33] > v22)
        {
          goto LABEL_108;
        }

        v31 = v21;
        v32 = &v21[v33];
        if (!ccder_blob_decode_tl())
        {
          return 131077;
        }

        if (v32 < v31 || v33 > v32 - v31)
        {
          goto LABEL_108;
        }

        if (compare_octet_string_raw(&pkcs7_data_oid, v31, v33))
        {
          return 131078;
        }

        if (__CFADD__(v31, v33))
        {
          goto LABEL_110;
        }

        v11 = &v31[v33];
        if (v31 > &v31[v33] || v11 > v32)
        {
          goto LABEL_108;
        }

        v31 += v33;
        v12 = v34;
        if (v11 != v32 || (v34 & 1) != 0)
        {
          v39 = 0;
          v37 = v32;
          v38 = 0;
          v36 = v11;
          if (ccder_blob_decode_ber_tl(&v36, 0xA000000000000000, &v39, &v38))
          {
            if ((v12 & 1) == 0)
            {
              if (__CFADD__(v36, v38))
              {
                goto LABEL_110;
              }

              if (&v36[v38] != v32)
              {
                return v9;
              }
            }

            if (v36 > v37)
            {
              goto LABEL_108;
            }

            v31 = v36;
            v32 = v37;
            v35 = 0;
            v15 = v39;
            if (v39 == 1 && !ccder_blob_decode_ber_tl(&v31, 0x2000000000000004, &v35, &v38))
            {
              return 131079;
            }

            v40 = 0;
            if (!ccder_blob_decode_tl())
            {
              return 131090;
            }

            v16 = v31;
            v17 = v32;
            if (v32 < v31)
            {
              goto LABEL_108;
            }

            v18 = v40;
            if (v40 > v32 - v31)
            {
              goto LABEL_108;
            }

            a3[9] = v31;
            a3[10] = v18;
            if (__CFADD__(v16, v18))
            {
LABEL_110:
              __break(0x5513u);
              return 0;
            }

            v19 = &v16[v18];
            if (v19 > v17 || v16 > v19)
            {
              goto LABEL_108;
            }

            v31 = v19;
            if ((ccder_blob_decode_eoc(&v31, v35) & 1) == 0)
            {
              return 131089;
            }
          }

          else
          {
            if (!v12)
            {
              return v9;
            }

            v15 = v39;
          }

          if ((ccder_blob_decode_eoc(&v31, v15 & 1) & 1) == 0)
          {
            return 131088;
          }

          v11 = v31;
        }

        if (v11 > v22 || v21 > v11)
        {
          goto LABEL_108;
        }

        v21 = v11;
        if ((ccder_blob_decode_eoc(&v21, v12) & 1) == 0)
        {
          return 131081;
        }

        v36 = 0xAAAAAAAAAAAAAAAALL;
        v37 = 0xAAAAAAAAAAAAAAAALL;
        if (v21 > v22)
        {
          goto LABEL_108;
        }

        v36 = v21;
        v37 = v22;
        if ((ccder_blob_decode_ber_tl(&v36, 0xA000000000000000, &v30, v29) & 1) == 0)
        {
          v13 = v21;
          v14 = v22;
          goto LABEL_85;
        }

        v31 = 0xAAAAAAAAAAAAAAAALL;
        v32 = 0xAAAAAAAAAAAAAAAALL;
        if (!__CFADD__(v36, v29[0]))
        {
          if (v36 > &v36[v29[0]] || &v36[v29[0]] > v37)
          {
            goto LABEL_108;
          }

          v31 = v36;
          v32 = &v36[v29[0]];
          if (!CMSParseImplicitCertificateSet(&v31, a3[1], *a3, a3 + 3, a3 + 2))
          {
            return 131085;
          }

          if (!ccder_blob_decode_eoc(&v31, v30))
          {
            return 131086;
          }

          v13 = v31;
          if (v31 >= v36 != v31 - v36 < 0)
          {
            if (v36 > v31)
            {
              goto LABEL_108;
            }

            v14 = v37;
            if (v31 > v37)
            {
              goto LABEL_108;
            }

            v21 = v31;
            v22 = v37;
LABEL_85:
            if (v13 <= v14)
            {
              v36 = v13;
              v37 = v14;
              if (ccder_blob_eat_ber_inner(&v36, 0xA000000000000001, 0, 125))
              {
                if (v36 > v37)
                {
                  goto LABEL_108;
                }

                v21 = v36;
                v22 = v37;
              }

              if (!ccder_blob_eat_ber_inner(&v21, 0x2000000000000011, &v29[1], 125))
              {
                return 131083;
              }

              if (v29[2] >= v29[1])
              {
                v20 = &v21[-v29[1]];
                if (&v21[-v29[1]] <= v29[2] - v29[1])
                {
                  a3[5] = v29[1];
                  a3[6] = v20;
                  if ((ccder_blob_decode_eoc(&v21, HIBYTE(v30)) & 1) == 0)
                  {
                    return 131084;
                  }

                  if (!ccder_blob_decode_eoc(&v21, v26))
                  {
                    return 65541;
                  }

                  if (v21 <= v24 && v23 <= v21)
                  {
                    v23 = v21;
                    if (ccder_blob_decode_eoc(&v23, HIBYTE(v26)))
                    {
                      if ((a4 & 1) == 0 && v23 != v28)
                      {
                        return 65543;
                      }

                      return 0;
                    }

                    return (v4 + 5);
                  }
                }
              }
            }

LABEL_108:
            __break(0x5519u);
            return (v4 + 5);
          }
        }

        goto LABEL_110;
      }
    }

    else
    {
      return 65538;
    }
  }

  return result;
}

uint64_t ccder_blob_decode_ber_tl(uint64_t a1, uint64_t a2, _BYTE *a3, unint64_t *a4)
{
  v8 = ccder_blob_decode_tag();
  result = 0;
  if (v8)
  {
    if (a2 == 0xAAAAAAAAAAAAAAAALL)
    {
      return ccder_blob_decode_ber_len(a1, a3, a4);
    }
  }

  return result;
}

uint64_t ccder_blob_decode_eoc(unint64_t *a1, int a2)
{
  if (!a2)
  {
    return 1;
  }

  result = ccder_blob_decode_tl();
  if (!result)
  {
    return result;
  }

  v4 = *a1;
  if (*a1 >= 0x5555555555555556)
  {
    __break(0x5513u);
LABEL_12:
    __break(0x5519u);
    return result;
  }

  v5 = v4 - 0x5555555555555556;
  if (v4 > v4 - 0x5555555555555556 || v5 > a1[1])
  {
    goto LABEL_12;
  }

  *a1 = v5;
  return 1;
}

uint64_t CMSParseSignerInfos(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, __int128 *))
{
  v83 = *MEMORY[0x1E69E9840];
  v81 = 0xAAAAAAAAAAAAAAAALL;
  v82 = 0xAAAAAAAAAAAAAAAALL;
  v4 = *(a1 + 40);
  v3 = *(a1 + 48);
  if (__CFADD__(v4, v3))
  {
    goto LABEL_94;
  }

  if (v4 > v4 + v3)
  {
    goto LABEL_93;
  }

  v81 = *(a1 + 40);
  v82 = v4 + v3;
  v69 = 0xAAAAAAAAAAAAAAAALL;
  if (v4 >= v4 + v3)
  {
    v48 = 0;
    result = 0;
    if (v3)
    {
      return (v48 << 8) + 196616;
    }

    return result;
  }

  v8 = 0;
  v59 = 0;
  v9 = 196871;
  v10 = 256;
  do
  {
    v68 = 0;
    v79 = 0u;
    v80 = 0u;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    DWORD2(v80) = 327681;
    LOBYTE(v79) = v8 + 1;
    if ((ccder_blob_decode_ber_tl(&v81, 0x2000000000000010, &v68, &v69) & 1) == 0)
    {
      return (v9 - 6);
    }

    v66 = 0xAAAAAAAAAAAAAAAALL;
    v67 = 0xAAAAAAAAAAAAAAAALL;
    if (__CFADD__(v81, v69))
    {
      goto LABEL_94;
    }

    if (v81 > v81 + v69 || v81 + v69 > v82)
    {
      goto LABEL_93;
    }

    v66 = v81;
    v67 = v81 + v69;
    if ((ccder_blob_decode_uint64() & 1) == 0)
    {
      return (v9 - 5);
    }

    v11 = v66;
    v12 = v67;
    v64 = 0xAAAAAAAAAAAAAAAALL;
    v65 = 0xAAAAAAAAAAAAAAAALL;
    if (v66 > v67)
    {
      goto LABEL_93;
    }

    v64 = v66;
    v65 = v67;
    v62 = v66;
    v63 = v67;
    if (ccder_blob_decode_tl())
    {
      v13 = v66;
    }

    else
    {
      if (ccder_blob_decode_tl())
      {
        v13 = v64;
        v14 = v65;
      }

      else
      {
        if (!ccder_blob_decode_tl())
        {
          v58 = 196611;
          return (v58 + v10);
        }

        v13 = v62;
        v14 = v63;
      }

      if (v13 > v14)
      {
        goto LABEL_93;
      }

      v66 = v13;
      v67 = v14;
    }

    if (__CFADD__(v69, v13 - v11))
    {
      goto LABEL_95;
    }

    if (v69 + v13 - v11 > v12 - v11)
    {
      goto LABEL_93;
    }

    *(&v70 + 1) = v11;
    *&v71 = v69 + v13 - v11;
    if (__CFADD__(v13, v69))
    {
      goto LABEL_94;
    }

    if (v13 > v13 + v69 || v13 + v69 > v67)
    {
      goto LABEL_93;
    }

    v66 = v13 + v69;
    if (!ccder_blob_decode_AlgorithmIdentifierNULL(&v66, &v71 + 1))
    {
      v58 = 196612;
      return (v58 + v10);
    }

    v60 = 0xAAAAAAAAAAAAAAAALL;
    v61 = 0xAAAAAAAAAAAAAAAALL;
    if (v66 > v67)
    {
      goto LABEL_93;
    }

    v60 = v66;
    v61 = v67;
    if (ccder_blob_decode_tl())
    {
      if (v61 < v60 || v69 > v61 - v60)
      {
        goto LABEL_93;
      }

      *(&v72 + 1) = v60;
      *&v73 = v69;
      if (__CFADD__(v60, v69))
      {
        goto LABEL_94;
      }

      if (v60 + v69 > v61 || v60 > v60 + v69)
      {
        goto LABEL_93;
      }

      v66 = v60 + v69;
      v67 = v61;
    }

    else
    {
      *(&v72 + 1) = 0;
      *&v73 = 0;
    }

    if ((ccder_blob_decode_AlgorithmIdentifierNULL(&v66, &v73 + 1) & 1) == 0)
    {
      return (v9 - 2);
    }

    if ((ccder_blob_decode_tl() & 1) == 0)
    {
      return (v9 - 1);
    }

    if (v67 < v66 || v69 > v67 - v66)
    {
      goto LABEL_93;
    }

    *(&v75 + 1) = v66;
    *&v76 = v69;
    if (__CFADD__(v66, v69))
    {
      goto LABEL_94;
    }

    v15 = v66 + v69;
    if (v66 + v69 > v67 || v66 > v15)
    {
      goto LABEL_93;
    }

    v66 += v69;
    v60 = v15;
    v61 = v67;
    if (ccder_blob_eat_ber_inner(&v60, 0xA000000000000001, 0, 125))
    {
      if (v60 > v61)
      {
        goto LABEL_93;
      }

      v66 = v60;
      v67 = v61;
    }

    if (!ccder_blob_decode_eoc(&v66, v68))
    {
      return v9;
    }

    digest = find_digest(&v71 + 8);
    if (digest)
    {
      v17 = digest;
      v18 = *(a1 + 96);
      if (!v18 || *digest <= v18)
      {
        result = a3(a2, a1, &v70);
        if (result != 327710)
        {
          if (result)
          {
            return result;
          }

          v20 = *(a1 + 64);
          if (v20 <= v59)
          {
            if (v20)
            {
              v32 = *(a1 + 56);
              v33 = 176 * v59 - 176;
              if (__CFADD__(v32, v33))
              {
                goto LABEL_94;
              }

              v34 = v32 + v33;
              if (v32 + v33 < v32 || v34 + 176 > v32 + 176 * v20 || v34 > v34 + 176 || v34 + 24 > v34 + 40)
              {
                goto LABEL_93;
              }

              v35 = find_digest(v34 + 24);
              if (v35)
              {
                if (*v17 > *v35)
                {
                  v36 = *(a1 + 96);
                  if (!v36 || *v17 <= v36)
                  {
                    v37 = *(a1 + 56);
                    if (__CFADD__(v37, v33))
                    {
                      goto LABEL_94;
                    }

                    v38 = 176 * *(a1 + 64);
                    if ((v38 - v33) < 0xB0)
                    {
                      goto LABEL_93;
                    }

                    v39 = (v37 + v33);
                    if (v37 + v33 > v37 + v38)
                    {
                      goto LABEL_93;
                    }

                    if (v37 > v39)
                    {
                      goto LABEL_93;
                    }

                    v40 = v70;
                    v41 = v72;
                    v39[1] = v71;
                    v39[2] = v41;
                    *v39 = v40;
                    v42 = v73;
                    v43 = v74;
                    v44 = v76;
                    v39[5] = v75;
                    v39[6] = v44;
                    v39[3] = v42;
                    v39[4] = v43;
                    v45 = v77;
                    v46 = v78;
                    v47 = v80;
                    v39[9] = v79;
                    v39[10] = v47;
                    v39[7] = v45;
                    v39[8] = v46;
                    if (v39 >= v39 + 11)
                    {
                      goto LABEL_93;
                    }
                  }
                }
              }
            }
          }

          else
          {
            v21 = *(a1 + 96);
            if (!v21 || *v17 <= v21)
            {
              v22 = *(a1 + 56);
              if (__CFADD__(v22, 176 * v59))
              {
                goto LABEL_94;
              }

              if (176 * (v20 - v59) < 0xB0)
              {
                goto LABEL_93;
              }

              v23 = (v22 + 176 * v59);
              v24 = v70;
              v25 = v72;
              v23[1] = v71;
              v23[2] = v25;
              *v23 = v24;
              v26 = v73;
              v27 = v74;
              v28 = v76;
              v23[5] = v75;
              v23[6] = v28;
              v23[3] = v26;
              v23[4] = v27;
              v29 = v77;
              v30 = v78;
              v31 = v80;
              v23[9] = v79;
              v23[10] = v31;
              v23[7] = v29;
              v23[8] = v30;
              if (v23 >= v23 + 11)
              {
                goto LABEL_93;
              }

              if (v59 == 0xFF)
              {
                __break(0x5507u);
                return result;
              }

              ++v59;
            }
          }
        }
      }
    }

    if (v66 > v82 || v81 > v66)
    {
      goto LABEL_93;
    }

    v81 = v66;
    v48 = v8 + 1;
    if (v8 > 6)
    {
      break;
    }

    v10 += 256;
    v9 = (v9 + 256);
    ++v8;
  }

  while (v66 < v82);
  if (v66 == v82)
  {
    if (v59)
    {
      return 0;
    }

    if (!*(a1 + 64))
    {
      return 0;
    }

    v49 = *(a1 + 56);
    v50 = v70;
    v51 = v72;
    v49[1] = v71;
    v49[2] = v51;
    *v49 = v50;
    v52 = v73;
    v53 = v74;
    v54 = v76;
    v49[5] = v75;
    v49[6] = v54;
    v49[3] = v52;
    v49[4] = v53;
    v55 = v77;
    v56 = v78;
    v57 = v80;
    v49[9] = v79;
    v49[10] = v57;
    v49[7] = v55;
    v49[8] = v56;
    if (v49 < v49 + 11)
    {
      return 0;
    }

LABEL_93:
    __break(0x5519u);
LABEL_94:
    __break(0x5513u);
LABEL_95:
    __break(0x5500u);
  }

  return (v48 << 8) + 196616;
}

uint64_t CMSBuildPath(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v19 = 0xAAAAAAAAAAAAAAAALL;
  v20 = 0xAAAAAAAAAAAAAAAALL;
  v3 = a3[1];
  v4 = a3[2];
  if (__CFADD__(v3, v4))
  {
LABEL_55:
    __break(0x5513u);
  }

  v5 = v3 + v4;
  if (v3 > v5)
  {
    goto LABEL_54;
  }

  v19 = a3[1];
  v20 = v5;
  v18 = 0xAAAAAAAAAAAAAAAALL;
  if (*a3 == 3)
  {
    if (*(a2 + 88) == 1)
    {
      return 524298;
    }

    v17[2] = 0xAAAAAAAAAAAAAAAALL;
    v17[3] = 0xAAAAAAAAAAAAAAAALL;
    v17[0] = v3;
    v17[1] = v5;
    if (ccder_blob_decode_tl())
    {
      v11 = v19;
      v12 = v20;
    }

    else
    {
      if (!ccder_blob_decode_tl() || !ccder_blob_decode_tl())
      {
        return 524294;
      }

      v11 = v17[0];
      v12 = v17[1];
      if (v17[0] > v17[1])
      {
        goto LABEL_54;
      }

      v19 = v17[0];
      v20 = v17[1];
    }

    if (v12 < v11 || v18 > v12 - v11)
    {
      goto LABEL_54;
    }

    v17[2] = v11;
    v17[3] = v18;
    if (__CFADD__(v11, v18))
    {
      goto LABEL_55;
    }

    if (v11 + v18 > v12 || v11 > v11 + v18)
    {
      goto LABEL_54;
    }

    v19 = v11 + v18;
    CertificateUsingKeyIdentifier = X509ChainGetCertificateUsingKeyIdentifier((a2 + 24), &v17[2]);
    if (!CertificateUsingKeyIdentifier)
    {
      return 524295;
    }

LABEL_38:
    if (v19 != v20)
    {
      return 524543;
    }

    if (CertificateUsingKeyIdentifier < CertificateUsingKeyIdentifier + 38 && a2 + 24 <= (a2 + 40))
    {
      v13 = a3 + 19;
      v14 = a3 + 21;
      if (v13 <= v14)
      {
        v15 = X509ChainBuildPath(CertificateUsingKeyIdentifier, (a2 + 24), v13);
        v8 = v15;
        if (*v14 == 327681)
        {
          *v14 = v15;
        }

        return v8;
      }
    }

LABEL_54:
    __break(0x5519u);
    goto LABEL_55;
  }

  if (*a3 != 1)
  {
    return 524289;
  }

  v8 = 524290;
  memset(v17, 170, sizeof(v17));
  if (ccder_blob_decode_tl())
  {
    if (ccder_blob_decode_tl())
    {
      if (v20 < v19 || v18 > v20 - v19)
      {
        goto LABEL_54;
      }

      v17[0] = v19;
      v17[1] = v18;
      if (__CFADD__(v19, v18))
      {
        goto LABEL_55;
      }

      if (v19 + v18 > v20 || v19 > v19 + v18)
      {
        goto LABEL_54;
      }

      v19 += v18;
      if (ccder_blob_decode_tl())
      {
        if (v20 < v19 || v18 > v20 - v19)
        {
          goto LABEL_54;
        }

        v17[2] = v19;
        v17[3] = v18;
        if (__CFADD__(v19, v18))
        {
          goto LABEL_55;
        }

        if (v19 + v18 > v20)
        {
          goto LABEL_54;
        }

        if (v19 > v19 + v18)
        {
          goto LABEL_54;
        }

        v19 += v18;
        v9 = (a2 + 24);
        if (a2 + 24 > (a2 + 40))
        {
          goto LABEL_54;
        }

        CertificateUsingKeyIdentifier = *v9;
        if (*v9)
        {
          while (CertificateUsingKeyIdentifier < CertificateUsingKeyIdentifier + 38 && CertificateUsingKeyIdentifier + 15 <= CertificateUsingKeyIdentifier + 17)
          {
            if (!compare_octet_string(v17, (CertificateUsingKeyIdentifier + 15)))
            {
              if (CertificateUsingKeyIdentifier + 17 > CertificateUsingKeyIdentifier + 19)
              {
                goto LABEL_54;
              }

              if (!compare_octet_string(&v17[2], (CertificateUsingKeyIdentifier + 17)))
              {
                goto LABEL_38;
              }
            }

            CertificateUsingKeyIdentifier = CertificateUsingKeyIdentifier[34];
            if (!CertificateUsingKeyIdentifier)
            {
              return 524293;
            }
          }

          goto LABEL_54;
        }

        return 524293;
      }

      else
      {
        return 524292;
      }
    }

    else
    {
      return 524291;
    }
  }

  return v8;
}

uint64_t validateSignerInfo(unint64_t a1, void *a2, uint64_t a3)
{
  v90 = *MEMORY[0x1E69E9840];
  v3 = a3 + 24;
  v4 = (a3 + 40);
  if (a3 + 24 > (a3 + 40))
  {
    goto LABEL_183;
  }

  digest = find_digest(a3 + 24);
  if (!digest)
  {
    return 327682;
  }

  v9 = (*(digest + 3))();
  v10 = v9;
  memset(v89, 0, sizeof(v89));
  v11 = a2[13];
  v12 = a2[14];
  if (!v11 || !v12)
  {
    if (a2[9] && a2[10])
    {
      v11 = v89;
      v13 = ccdigest();
      v12 = *v10;
      if (*v10 >= 0x41)
      {
        goto LABEL_183;
      }

      goto LABEL_14;
    }

    if (!v11)
    {
      goto LABEL_144;
    }
  }

  if (*v9 != v12)
  {
LABEL_144:
    *(a3 + 168) = 327710;
    return 327710;
  }

  if (v12 >= 0x41)
  {
    goto LABEL_183;
  }

  v13 = __memcpy_chk();
  if (v13 > v13 + v12)
  {
    goto LABEL_183;
  }

LABEL_14:
  v15 = a1 + 16;
  *(a3 + 128) = v11;
  *(a3 + 136) = v12;
  v16 = (a3 + 128);
  v17 = *(a3 + 48);
  if (!v17)
  {
    goto LABEL_157;
  }

  if (v15 < a1)
  {
    goto LABEL_183;
  }

  v74 = a1 + 16;
  v75 = v10;
  v83 = 0xAAAAAAAAAAAAAAAALL;
  v84 = 0xAAAAAAAAAAAAAAAALL;
  v18 = *v4;
  if (__CFADD__(*v4, v17))
  {
    goto LABEL_184;
  }

  v19 = v18 + v17;
  if (v18 > v19)
  {
    goto LABEL_183;
  }

  v83 = *v4;
  v84 = v19;
  v82 = 0xAAAAAAAAAAAAAAAALL;
  if (v18 >= v19)
  {
LABEL_145:
    result = 262156;
    goto LABEL_179;
  }

  v20 = 0;
  v21 = 0x96463F78648862ALL;
  v78 = 0x2000000000000010;
  v73 = 262146;
  v77 = 262147;
  v76 = 262148;
  do
  {
    if (!ccder_blob_decode_tl())
    {
      result = 262145;
      goto LABEL_179;
    }

    if (__CFADD__(v83, v82))
    {
      goto LABEL_184;
    }

    v22 = &v83[v82];
    v81 = 0xAAAAAAAAAAAAAAAALL;
    v80 = 0xAAAAAAAAAAAAAAAALL;
    if (v83 > &v83[v82] || v22 > v84)
    {
      goto LABEL_183;
    }

    v80 = v83;
    v81 = &v83[v82];
    if (!ccder_blob_decode_tl())
    {
      result = v73;
      goto LABEL_179;
    }

    v24 = v80;
    if (__CFADD__(v80, v82))
    {
      goto LABEL_184;
    }

    if (&v80[v82] > v81 || v80 > &v80[v82])
    {
      goto LABEL_183;
    }

    v80 += v82;
    if (v82 != 9)
    {
      goto LABEL_147;
    }

    if (v81 - v24 < 9)
    {
      goto LABEL_183;
    }

    if (*v24 == 0x9010DF78648862ALL && v24[8] == 3)
    {
      if (v20)
      {
        goto LABEL_149;
      }

      v88[0] = 0xAAAAAAAAAAAAAAAALL;
      v35 = ccder_blob_decode_tl();
      result = v77;
      if (v35)
      {
        if (CMSAttributeParseContentType(&v80))
        {
          result = 0;
        }

        else
        {
          result = v76;
        }
      }

      v20 |= 1u;
      goto LABEL_134;
    }

    if (*v24 == 0x9010DF78648862ALL && v24[8] == 4)
    {
      if ((v20 & 2) != 0)
      {
        goto LABEL_149;
      }

      v88[0] = 0xAAAAAAAAAAAAAAAALL;
      v38 = ccder_blob_decode_tl();
      result = v77;
      if (v38)
      {
        if (CMSAttributeParseMessageDigest(&v80, v36, v37, a3))
        {
          result = 0;
        }

        else
        {
          result = v76;
        }
      }

      v20 |= 2u;
      goto LABEL_134;
    }

    if (*v24 == v21 && v24[8] == 2)
    {
      if ((v20 & 0x10) != 0)
      {
        goto LABEL_149;
      }

      v87 = 0xAAAAAAAAAAAAAAAALL;
      v39 = ccder_blob_decode_tl();
      result = v77;
      if (v39)
      {
        v40 = v80;
        v41 = v81;
        if (v80 >= v81)
        {
LABEL_110:
          if (v40 == v41)
          {
            result = 0;
          }

          else
          {
            result = 262155;
          }
        }

        else
        {
          v72 = a1;
          while (1)
          {
            if (!ccder_blob_decode_tl())
            {
              result = 262157;
              goto LABEL_132;
            }

            v88[0] = 0xAAAAAAAAAAAAAAAALL;
            v88[1] = 0xAAAAAAAAAAAAAAAALL;
            if (__CFADD__(v80, v87))
            {
              goto LABEL_184;
            }

            if (v80 > &v80[v87] || &v80[v87] > v81)
            {
              goto LABEL_183;
            }

            v43 = v21;
            v88[0] = v80;
            v88[1] = &v80[v87];
            if ((ccder_blob_decode_tl() & 1) == 0)
            {
              result = 262151;
              goto LABEL_131;
            }

            v85 = 0xAAAAAAAAAAAAAAAALL;
            v86 = 0xAAAAAAAAAAAAAAAALL;
            if (v88[1] < v88[0] || v87 > v88[1] - v88[0])
            {
              goto LABEL_183;
            }

            v85 = v88[0];
            v86 = v87;
            if (__CFADD__(v88[0], v87))
            {
              goto LABEL_184;
            }

            if (v88[0] + v87 > v88[1] || v88[0] > v88[0] + v87)
            {
              goto LABEL_183;
            }

            v88[0] += v87;
            if (!ccder_blob_decode_tl())
            {
              result = 262152;
              goto LABEL_131;
            }

            v44 = v88[0];
            if (__CFADD__(v88[0], v87))
            {
              goto LABEL_184;
            }

            v45 = v88[1];
            v46 = v88[0] + v87;
            if (v88[0] + v87 > v88[1] || v88[0] > v46)
            {
              goto LABEL_183;
            }

            v88[0] += v87;
            if (v46 != v88[1])
            {
              break;
            }

            v47 = find_digest(&v85);
            if (v47)
            {
              v48 = *v47;
              if (*v47 > *(a3 + 104))
              {
                v49 = *(v72 + 8);
                if (!v49 || v48 <= v49)
                {
                  *(a3 + 104) = v48;
                  v50 = v87;
                  if (v87 > v45 - v44)
                  {
                    goto LABEL_183;
                  }

                  *(a3 + 112) = v44;
                  *(a3 + 120) = v50;
                }
              }
            }

            v40 = v88[0];
            v41 = v81;
            if (v88[0] > v81 || v80 > v88[0])
            {
              goto LABEL_183;
            }

            v80 = v88[0];
            v21 = v43;
            if (v88[0] >= v81)
            {
              a1 = v72;
              goto LABEL_110;
            }
          }

          result = 262153;
LABEL_131:
          v21 = v43;
LABEL_132:
          a1 = v72;
        }
      }

      v20 |= 0x10u;
      goto LABEL_134;
    }

    if (*v24 == 0x9010DF78648862ALL && v24[8] == 5)
    {
      if ((v20 & 4) != 0)
      {
        goto LABEL_149;
      }

      v88[0] = 0xAAAAAAAAAAAAAAAALL;
      v51 = ccder_blob_decode_tl();
      result = v77;
      if (v51)
      {
        if (CMSAttributeParseSigningTime(&v80))
        {
          result = 0;
        }

        else
        {
          result = v76;
        }
      }

      v20 |= 4u;
      goto LABEL_134;
    }

    if (*v24 == v21 && v24[8] == 1)
    {
      if ((v20 & 8) != 0)
      {
        goto LABEL_149;
      }

      v88[0] = 0xAAAAAAAAAAAAAAAALL;
      v54 = ccder_blob_decode_tl();
      result = v77;
      if (v54)
      {
        if (CMSAttributeParseAppleHashAgility(&v80, v52, v53, a3))
        {
          result = 0;
        }

        else
        {
          result = v76;
        }
      }

      v20 |= 8u;
LABEL_134:
      if (result)
      {
        goto LABEL_179;
      }

      goto LABEL_135;
    }

    if (*v24 != 0x9010DF78648862ALL || v24[8] != 52)
    {
      v31 = *v24;
      v32 = v24[8];
      if (v31 != 0x9010DF78648862ALL || v32 != 15)
      {
LABEL_147:
        result = 262150;
        goto LABEL_179;
      }

      if ((v20 & 0x40) != 0)
      {
        goto LABEL_149;
      }

      v88[0] = 0xAAAAAAAAAAAAAAAALL;
      v34 = ccder_blob_decode_tl();
      result = v77;
      if (v34)
      {
        if (CMSAttributeParseSMIMECapabilities(&v80))
        {
          result = 0;
        }

        else
        {
          result = v76;
        }
      }

      v20 |= 0x40u;
      goto LABEL_134;
    }

    if ((v20 & 0x20) != 0)
    {
LABEL_149:
      result = 262149;
      goto LABEL_179;
    }

    v20 |= 0x20u;
LABEL_135:
    if (v22 > v84 || v83 > v22)
    {
      goto LABEL_183;
    }

    v83 = v22;
  }

  while (v22 < v84);
  if ((~v20 & 3) != 0)
  {
    goto LABEL_145;
  }

  v56 = ccder_sizeof_tag();
  result = ccder_sizeof_len();
  v57 = __CFADD__(v56, result);
  v58 = v56 + result;
  v10 = v75;
  if (v57)
  {
    goto LABEL_185;
  }

  if (v58 > 0x14)
  {
    result = 327689;
    goto LABEL_179;
  }

  memset(v88, 170, 20);
  if (__CFADD__(v88, v58))
  {
LABEL_184:
    __break(0x5513u);
  }

  v85 = v88;
  v86 = v88 + v58;
  result = ccder_blob_encode_tl();
  if (!result)
  {
    result = 327688;
    goto LABEL_179;
  }

  v59 = v75[1];
  v57 = __CFADD__(v59, 8);
  v60 = v59 + 8;
  if (v57 || (v61 = v75[2], v57 = __CFADD__(v60, v61), v62 = v60 + v61, v57) || (v57 = __CFADD__(v62, 4), v63 = v62 + 4, v57) || v63 >= 0xFFFFFFFFFFFFFFF8)
  {
LABEL_185:
    __break(0x5500u);
    return result;
  }

  MEMORY[0x1EEE9AC00](result);
  v65 = &v71 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  memset(v65, 170, ((v66 - 9) & 0xFFFFFFFFFFFFFFF8) + 8);
  ccdigest_init();
  ccdigest_update();
  ccdigest_update();
  v13 = (v10[7])(v10, v65, v89);
  v15 = v74;
LABEL_157:
  if (v15 <= a1)
  {
LABEL_183:
    __break(0x5519u);
    goto LABEL_184;
  }

  result = CMSBuildPath(v13, a2, a3);
  if (result <= 524294)
  {
    if (!result)
    {
      goto LABEL_169;
    }

    if (result != 524293)
    {
      goto LABEL_179;
    }

    goto LABEL_166;
  }

  switch(result)
  {
    case 0x80007:
LABEL_166:
      *(a3 + 168) = result;
      return 0;
    case 0x80009:
      v67 = 524297;
LABEL_168:
      *(a3 + 168) = v67;
      break;
    case 0x80008:
      if (*(a3 + 168) == 458753)
      {
        v67 = 524296;
        goto LABEL_168;
      }

      break;
    default:
      goto LABEL_179;
  }

LABEL_169:
  v68 = *v10;
  if (*v10 > 0x40)
  {
    goto LABEL_183;
  }

  v79[0] = v89;
  v79[1] = v68;
  v69 = *(a3 + 152);
  if (v69 >= v69 + 304)
  {
    goto LABEL_183;
  }

  result = X509CertificateCheckSignatureDigest(29, v69, v79, v3);
  if (!result || result == 655648 || result == 655632)
  {
    v70 = *(a3 + 168);
    if (!v70 || v70 == 458753 || v70 == 327681)
    {
      *(a3 + 168) = result;
    }

    result = 0;
  }

LABEL_179:
  if (*v16 == v89)
  {
    *v16 = 0;
    *(a3 + 136) = 0;
  }

  return result;
}

uint64_t validateSignerInfoAndChain(uint64_t *a1, void *a2, uint64_t a3)
{
  result = validateSignerInfo(a1, a2, a3);
  v6 = result;
  if (result)
  {
    return v6;
  }

  v7 = (a3 + 152);
  v8 = (a3 + 168);
  if (v7 <= v8)
  {
    v9 = X509ChainCheckPath(29, v7, *a1);
    if (v9)
    {
      if (!*v8)
      {
        *v8 = v9;
      }
    }

    return v6;
  }

  __break(0x5519u);
  return result;
}

uint64_t CMSVerify(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8, void *a9)
{
  v32 = *MEMORY[0x1E69E9840];
  v29 = 0;
  v30[0] = 0;
  memset(v28, 0, sizeof(v28));
  v26 = 0;
  v25 = 0;
  v23 = 0u;
  v24 = &v23 + 8;
  v30[1] = 0;
  memset(__b, 170, sizeof(__b));
  v22[0] = 4;
  v22[1] = __b;
  v20 = 0u;
  v21 = 0u;
  memset(v19, 0, sizeof(v19));
  v27 = v19;
  *&v28[0] = 1;
  DWORD2(v21) = 327681;
  if (a2 < 0)
  {
    goto LABEL_20;
  }

  result = CMSParseContentInfoSignedDataWithOptions(a1, a2, v22, 0);
  if (result)
  {
    return result;
  }

  if (a4)
  {
    result = 131091;
    if (*(v28 + 8) != 0)
    {
      return result;
    }

    if (a4 < 0)
    {
      goto LABEL_20;
    }

    *(&v28[0] + 1) = a3;
    *&v28[1] = a4;
  }

  v30[0] = a5;
  DWORD2(v21) = 458753;
  result = CMSParseSignerInfos(v22, v30, validateSignerInfoAndChain);
  if (result)
  {
    return result;
  }

  result = DWORD2(v21);
  if (DWORD2(v21))
  {
    return result;
  }

  if (a6 && a7)
  {
    if (*(&v20 + 1) < (*(&v20 + 1) + 304))
    {
      result = X509CertificateParseKey(*(&v20 + 1), a6, a7);
      goto LABEL_14;
    }

LABEL_20:
    __break(0x5519u);
  }

LABEL_14:
  if (!a4)
  {
    if (a8)
    {
      if (a9)
      {
        v18 = *&v28[1];
        if (*&v28[1])
        {
          if (*(&v28[0] + 1))
          {
            *a8 = *(&v28[0] + 1);
            *a9 = v18;
          }
        }
      }
    }
  }

  return result;
}

uint64_t CMSVerifySignedData(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v6 = 0;
  v7 = 0;
  return CMSVerify(a1, a2, a3, a4, a5, &v6, &v7, &v8, v9);
}

uint64_t CMSVerifyAndReturnSignedData(char *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6 = 0;
  v7[0] = 0;
  return CMSVerify(a1, a2, 0, 0, a5, &v6, v7, a3, a4);
}

uint64_t ccder_blob_decode_ber_len(uint64_t result, _BYTE *a2, unint64_t *a3)
{
  *a2 = 0;
  v3 = *result;
  if (!*result)
  {
    return 0;
  }

  v4 = *(result + 8);
  if (v3 >= v4)
  {
    return 0;
  }

  if (v3 == -1)
  {
    goto LABEL_48;
  }

  v5 = v3 + 1;
  if (v3 >= v3 + 1 || v5 > v4)
  {
    goto LABEL_47;
  }

  *result = v5;
  v7 = *v3;
  if ((v7 & 0x8000000000000000) == 0)
  {
    goto LABEL_9;
  }

  v8 = 0;
  v9 = *v3;
  if (v9 > 0x81)
  {
    if (v9 == 130)
    {
      if ((v4 - v5) < 2)
      {
        return 0;
      }

      if (v5 < v4)
      {
        if (v3 == -2)
        {
          goto LABEL_48;
        }

        if (v3 + 2 >= v5 && (v3 + 2) < v4)
        {
          if (v5 > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_48;
          }

          v10 = v3 + 3;
          if (v5 <= v3 + 3 && v10 <= v4)
          {
            v11 = v3[1] << 8;
            v12 = v3[2];
            goto LABEL_45;
          }
        }
      }
    }

    else
    {
      if (v9 != 131)
      {
        return v8;
      }

      if ((v4 - v5) < 3)
      {
        return 0;
      }

      if (v5 < v4)
      {
        if (v3 == -2)
        {
          goto LABEL_48;
        }

        if (v3 + 2 >= v5 && (v3 + 2) < v4)
        {
          if (v5 > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_48;
          }

          if (v3 + 3 >= v5 && (v3 + 3) < v4)
          {
            if (v5 > 0xFFFFFFFFFFFFFFFCLL)
            {
              goto LABEL_48;
            }

            v10 = v3 + 4;
            if (v5 <= v3 + 4 && v10 <= v4)
            {
              v11 = (v3[1] << 16) | (v3[2] << 8);
              v12 = v3[3];
LABEL_45:
              v7 = v11 | v12;
              *result = v10;
              goto LABEL_46;
            }
          }
        }
      }
    }

LABEL_47:
    __break(0x5519u);
    goto LABEL_48;
  }

  if (v9 == 128)
  {
    v7 = v4 - v5;
    *a2 = 1;
    goto LABEL_9;
  }

  if (v9 != 129)
  {
    return v8;
  }

  if ((v4 - v5) < 1)
  {
    return 0;
  }

  if (v3 != -2)
  {
    v10 = v3 + 2;
    if (v5 <= v3 + 2 && v10 <= v4)
    {
      *result = v10;
      v7 = *v5;
LABEL_46:
      v5 = v10;
LABEL_9:
      if (v4 - v5 >= v7)
      {
        *a3 = v7;
        return 1;
      }

      return 0;
    }

    goto LABEL_47;
  }

LABEL_48:
  __break(0x5513u);
  return result;
}

uint64_t CMSParseImplicitCertificateSet(unint64_t *a1, unint64_t a2, unint64_t a3, unint64_t *a4, unint64_t *a5)
{
  v31[3] = *MEMORY[0x1E69E9840];
  *a4 = 0;
  a4[1] = 0;
  if (a4 + 2 < a4 || (memset(v31, 170, 24), v6 = *a1, v7 = a1[1], *a1 > v7))
  {
LABEL_47:
    __break(0x5519u);
LABEL_48:
    __break(0x5513u);
  }

  v31[0] = *a1;
  v31[1] = v7;
  if (v6 < v7 && a3 != 0)
  {
    v11 = 0;
    v12 = 304 * a3;
    v13 = a2 + 304 * a3;
    v26 = ~a2;
    v14 = a4 + 1;
    v15 = a2 + 304;
    while (1)
    {
      v30 = 0;
      if (!ccder_blob_decode_tag())
      {
        return 0;
      }

      if (!v31[2])
      {
        goto LABEL_9;
      }

      if (!ccder_blob_decode_ber_len(v31, &v30, &v29) || (v30 & 1) != 0 || v31[2] != 0x2000000000000010)
      {
        return 0;
      }

      if ((v11 * 304) >> 64 != (304 * v11) >> 63 || 304 * v11 > v26)
      {
        goto LABEL_48;
      }

      v16 = (v15 - 304);
      if (v15 - 304 > v13)
      {
        goto LABEL_47;
      }

      if (v16 < a2)
      {
        goto LABEL_47;
      }

      v17 = v12 >= 0x130;
      v12 -= 304;
      if (!v17)
      {
        goto LABEL_47;
      }

      *(v15 - 32) = 0u;
      *(v15 - 16) = 0u;
      *(v15 - 64) = 0u;
      *(v15 - 48) = 0u;
      *(v15 - 96) = 0u;
      *(v15 - 80) = 0u;
      *(v15 - 128) = 0u;
      *(v15 - 112) = 0u;
      *(v15 - 160) = 0u;
      *(v15 - 144) = 0u;
      *(v15 - 192) = 0u;
      *(v15 - 176) = 0u;
      *(v15 - 224) = 0u;
      *(v15 - 208) = 0u;
      *(v15 - 256) = 0u;
      *(v15 - 240) = 0u;
      *(v15 - 288) = 0u;
      *(v15 - 272) = 0u;
      *v16 = 0u;
      if (v16 > v15)
      {
        goto LABEL_47;
      }

      if (v11)
      {
        if (v15 > v13)
        {
          goto LABEL_47;
        }

        *(v15 - 32) = 0;
        v18 = *v14;
        *(v15 - 24) = *v14;
        if (v16 > v15)
        {
          goto LABEL_47;
        }

        *v18 = v16;
        *v14 = v15 - 32;
        if (v15 != 304)
        {
          goto LABEL_37;
        }
      }

      else
      {
        if (v15 > v13)
        {
          goto LABEL_47;
        }

        v19 = *a4;
        *(v15 - 32) = *a4;
        v20 = v15 - 32;
        v21 = (v15 - 24);
        if (v19)
        {
          if (v20 > v21)
          {
            goto LABEL_47;
          }

          v22 = (v19 + 280);
        }

        else
        {
          v22 = v14;
          if (v20 > v21)
          {
            goto LABEL_47;
          }
        }

        *v22 = v20;
        if (v16 > v15)
        {
          goto LABEL_47;
        }

        *a4 = v16;
        if (v14 < a4)
        {
          goto LABEL_47;
        }

        *v21 = a4;
        if (v15 != 304)
        {
LABEL_37:
          if (v15 > v13 || v16 > v15)
          {
            goto LABEL_47;
          }
        }
      }

      if (X509CertificateParseImplicit(v15 - 304, v31, 0, 0))
      {
        return 0;
      }

      v23 = v31[0];
      v24 = v31[0] - v6;
      if (v31[0] - v6 > v7 - v6)
      {
        goto LABEL_47;
      }

      if (v15 > v13)
      {
        goto LABEL_47;
      }

      *v16 = v6;
      *(v15 - 296) = v24;
      v7 = v31[1];
      if (v23 > v31[1])
      {
        goto LABEL_47;
      }

      *a1 = v23;
      a1[1] = v7;
      ++v11;
      if (v23 < v7)
      {
        v15 += 304;
        v6 = v23;
        if (v11 < a3)
        {
          continue;
        }
      }

      goto LABEL_9;
    }
  }

  v11 = 0;
LABEL_9:
  if (a5)
  {
    *a5 = v11;
  }

  return 1;
}

uint64_t ccder_blob_eat_ber_inner(unint64_t *a1, uint64_t a2, unint64_t *a3, int a4)
{
  v16 = *MEMORY[0x1E69E9840];
  v15 = 0;
  v14 = 0xAAAAAAAAAAAAAAAALL;
  v8 = ccder_blob_decode_tag();
  result = 0;
  if (v8 && v14 == a2)
  {
    v13 = 0xAAAAAAAAAAAAAAAALL;
    result = ccder_blob_decode_ber_len(a1, &v15, &v13);
    if ((result & 1) == 0)
    {
      return 0;
    }

    if (a3)
    {
      v10 = a1[1];
      if (*a1 > v10)
      {
        goto LABEL_18;
      }

      *a3 = *a1;
      a3[1] = v10;
    }

    if (v15 == 1)
    {
      if (a4 >= 1)
      {
        result = ccder_blob_eat_ber_inner(a1, 0, 0, (a4 - 1));
        if (!result)
        {
          return result;
        }

        return (ccder_blob_decode_eoc(a1, 1) & 1) != 0;
      }

      return 0;
    }

    v11 = *a1;
    if (__CFADD__(*a1, v13))
    {
LABEL_19:
      __break(0x5513u);
      return result;
    }

    v12 = v11 + v13;
    if (v11 <= v11 + v13 && v12 <= a1[1])
    {
      *a1 = v12;
      return 1;
    }

LABEL_18:
    __break(0x5519u);
    goto LABEL_19;
  }

  return result;
}

uint64_t CMSAttributeParseContentType(const void **a1)
{
  result = ccder_blob_decode_tl();
  if (result)
  {
    v3 = *a1;
    if (*a1 >= 0x5555555555555556)
    {
      __break(0x5513u);
    }

    else
    {
      if (v3 - 0x5555555555555556 != a1[1])
      {
        return 0;
      }

      if (v3 <= v3 - 0x5555555555555556)
      {
        return compare_octet_string_raw(&pkcs7_data_oid, v3, 0xAAAAAAAAAAAAAAAALL) == 0;
      }
    }

    __break(0x5519u);
  }

  return result;
}

uint64_t CMSAttributeParseMessageDigest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = ccder_blob_decode_tl();
  if (result)
  {
    if (*a1 >= 0x5555555555555556uLL)
    {
      __break(0x5513u);
    }

    else
    {
      if (*a1 - 0x5555555555555556 != *(a1 + 8))
      {
        return 0;
      }

      result = a4 + 24;
      if (a4 + 24 <= (a4 + 40))
      {
        result = find_digest(result);
        if (!result)
        {
          return result;
        }

        if (*(a4 + 136) != 0xAAAAAAAAAAAAAAAALL)
        {
          goto LABEL_14;
        }

        result = (*(result + 24))();
        if (*result != 0xAAAAAAAAAAAAAAAALL)
        {
          goto LABEL_14;
        }

        v7 = *(a1 + 8);
        v8 = v7 >= *a1;
        v9 = v7 - *a1;
        if (v8 && *(a4 + 136) >= 0xAAAAAAAAAAAAAAAALL && v9 >= 0xAAAAAAAAAAAAAAAALL)
        {
          if (!memcmp(*(a4 + 128), *a1, 0xAAAAAAAAAAAAAAAALL))
          {
            return 1;
          }

LABEL_14:
          *(a4 + 168) = 458754;
          return 1;
        }
      }
    }

    __break(0x5519u);
  }

  return result;
}

uint64_t CMSAttributeParseSigningTime(unint64_t *a1)
{
  if (*a1 > a1[1])
  {
    goto LABEL_10;
  }

  v4 = *a1;
  v5 = a1[1];
  result = ccder_blob_decode_tl();
  if (result)
  {
    v3 = *a1;
    goto LABEL_7;
  }

  result = ccder_blob_decode_tl();
  if (!result)
  {
    return result;
  }

  v3 = v4;
  if (v4 > v5)
  {
LABEL_10:
    __break(0x5519u);
  }

  *a1 = v4;
  a1[1] = v5;
LABEL_7:
  if (v3 < 0x5555555555555556)
  {
    return v3 - 0x5555555555555556 == a1[1];
  }

  __break(0x5513u);
  return result;
}

uint64_t CMSAttributeParseAppleHashAgility(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = ccder_blob_decode_tl();
  if (result)
  {
    v7 = *a1;
    if (*a1 >= 0x5555555555555556)
    {
      __break(0x5513u);
    }

    else
    {
      if (v7 - 0x5555555555555556 != a1[1])
      {
        return 0;
      }

      if (*(a4 + 104))
      {
        return 1;
      }

      if (v7 <= v7 - 0x5555555555555556)
      {
        *(a4 + 112) = v7;
        *(a4 + 120) = 0xAAAAAAAAAAAAAAAALL;
        return 1;
      }
    }

    __break(0x5519u);
  }

  return result;
}

uint64_t CMSAttributeParseSMIMECapabilities(void *a1)
{
  result = ccder_blob_decode_tl();
  if (result)
  {
    if (*a1 >= 0x5555555555555556uLL)
    {
      __break(0x5513u);
    }

    else
    {
      return *a1 - 0x5555555555555556 == a1[1];
    }
  }

  return result;
}

uint64_t compare_octet_string(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return memcmp(*a1, *a2, v2);
  }

  if (v2 > v3)
  {
    return 0xFFFFFFFFLL;
  }

  return 1;
}

uint64_t compare_octet_string_raw(uint64_t a1, const void *a2, size_t a3)
{
  v3 = *(a1 + 8);
  if (v3 == a3)
  {
    return memcmp(*a1, a2, a3);
  }

  if (v3 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  return 1;
}

uint64_t compare_octet_string_partial(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 <= *(a2 + 8))
  {
    return memcmp(*a2, *a1, v2);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t ccder_blob_decode_AlgorithmIdentifierNULL(unint64_t *a1, unint64_t *a2)
{
  result = ccder_blob_decode_tl();
  if (result)
  {
    if (*a1 > a1[1])
    {
      goto LABEL_20;
    }

    v5 = *a1;
    v6 = *a1;
    result = ccder_blob_decode_tl();
    if (!result)
    {
      return result;
    }

    if (a2)
    {
      if (v6 < v5)
      {
        goto LABEL_20;
      }

      *a2 = v5;
      a2[1] = 0;
    }

    if (v5 == v6)
    {
      if (v5 <= a1[1] && *a1 <= v5)
      {
        *a1 = v5;
        return 1;
      }
    }

    else if (v5 <= v6)
    {
      result = ccder_blob_decode_tl();
      if (!result)
      {
        return result;
      }

      if (v5 != v6)
      {
        return 0;
      }

      if (v5 <= a1[1] && *a1 <= v5)
      {
        *a1 = v5;
        return 1;
      }
    }

LABEL_20:
    __break(0x5519u);
  }

  return result;
}

uint64_t ccder_blob_decode_Time(unint64_t *a1, unint64_t *a2)
{
  if (*a1 > a1[1])
  {
    goto LABEL_6;
  }

  if (ccder_blob_decode_tl())
  {
    return 0;
  }

  if (*a1 > a1[1])
  {
LABEL_6:
    __break(0x5519u);
  }

  ccder_blob_decode_tl();
  return 0;
}

uint64_t ccder_blob_decode_GeneralName(unint64_t *a1, int *a2, unint64_t *a3)
{
  result = 0;
  if (a2 && a3)
  {
    *a3 = 0;
    a3[1] = 0;
    if (*a1 > a1[1])
    {
      goto LABEL_42;
    }

    v10 = *a1;
    if (ccder_blob_decode_tl())
    {
      *a2 = 0;
LABEL_6:
      v7 = v10;
LABEL_16:
      if (v7 <= a1[1] && *a1 <= v7)
      {
        *a1 = v7;
        return 1;
      }

LABEL_42:
      __break(0x5519u);
    }

    if (*a1 > a1[1])
    {
      goto LABEL_42;
    }

    v11 = *a1;
    v16 = a1[1];
    if (ccder_blob_decode_tl())
    {
      v7 = v11;
      if (v16 < v11)
      {
        goto LABEL_42;
      }

      *a3 = v11;
      a3[1] = 0;
      v8 = 1;
LABEL_15:
      *a2 = v8;
      goto LABEL_16;
    }

    if (*a1 > a1[1])
    {
      goto LABEL_42;
    }

    v12 = *a1;
    v17 = a1[1];
    if (ccder_blob_decode_tl())
    {
      v7 = v12;
      if (v17 < v12)
      {
        goto LABEL_42;
      }

      *a3 = v12;
      a3[1] = 0;
      v8 = 2;
      goto LABEL_15;
    }

    if (*a1 > a1[1])
    {
      goto LABEL_42;
    }

    v10 = *a1;
    if (ccder_blob_decode_tl())
    {
      v9 = 3;
LABEL_23:
      *a2 = v9;
      goto LABEL_6;
    }

    if (*a1 > a1[1])
    {
      goto LABEL_42;
    }

    v13 = *a1;
    v18 = a1[1];
    if (ccder_blob_decode_tl())
    {
      v7 = v13;
      if (v18 < v13)
      {
        goto LABEL_42;
      }

      *a3 = v13;
      a3[1] = 0;
      v8 = 4;
      goto LABEL_15;
    }

    if (*a1 > a1[1])
    {
      goto LABEL_42;
    }

    v10 = *a1;
    if (ccder_blob_decode_tl())
    {
      v9 = 5;
      goto LABEL_23;
    }

    if (*a1 > a1[1])
    {
      goto LABEL_42;
    }

    v14 = *a1;
    v19 = a1[1];
    if (ccder_blob_decode_tl())
    {
      v7 = v14;
      if (v19 < v14)
      {
        goto LABEL_42;
      }

      *a3 = v14;
      a3[1] = 0;
      v8 = 6;
      goto LABEL_15;
    }

    if (*a1 > a1[1])
    {
      goto LABEL_42;
    }

    v15 = *a1;
    v20 = a1[1];
    if (ccder_blob_decode_tl())
    {
      v7 = v15;
      if (v20 < v15)
      {
        goto LABEL_42;
      }

      *a3 = v15;
      a3[1] = 0;
      v8 = 7;
      goto LABEL_15;
    }

    if (*a1 > a1[1])
    {
      goto LABEL_42;
    }

    v10 = *a1;
    result = ccder_blob_decode_tl();
    if (result)
    {
      v9 = 8;
      goto LABEL_23;
    }
  }

  return result;
}

uint64_t CTParseCertificateSet(unint64_t a1, unint64_t a2, _OWORD *a3, uint64_t a4, void *a5)
{
  v6 = 0;
  v18 = *MEMORY[0x1E69E9840];
  if (a1 < a2 && a4)
  {
    v8 = 0;
    v9 = a4 - 1;
    v10 = a3;
    v11 = &a3[a4];
    while (1)
    {
      *&v12 = 0xAAAAAAAAAAAAAAAALL;
      *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v17[17] = v12;
      v17[18] = v12;
      v17[15] = v12;
      v17[16] = v12;
      v17[13] = v12;
      v17[14] = v12;
      v17[11] = v12;
      v17[12] = v12;
      v17[9] = v12;
      v17[10] = v12;
      v17[7] = v12;
      v17[8] = v12;
      v17[5] = v12;
      v17[6] = v12;
      v17[3] = v12;
      v17[4] = v12;
      v17[1] = v12;
      v17[2] = v12;
      v17[0] = v12;
      v15 = a1;
      v16 = a2;
      result = X509CertificateParse(v17, &v15);
      if (result)
      {
        break;
      }

      a1 = v15;
      a2 = v16;
      if (v15 > v16 || v10 < a3 || v10 + 1 > v11 || v10 > v10 + 1)
      {
        __break(0x5519u);
      }

      *v10 = v17[0];
      v6 = v8 + 1;
      if (a1 < a2)
      {
        ++v10;
        if (v9 != v8++)
        {
          continue;
        }
      }

      goto LABEL_12;
    }
  }

  else
  {
LABEL_12:
    result = 0;
    if (a5)
    {
      *a5 = v6;
    }
  }

  return result;
}

uint64_t CTParseExtensionValue(unint64_t a1, uint64_t a2, const void *a3, size_t a4, void *a5, void *a6)
{
  v16 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  memset(v11, 0, sizeof(v11));
  if (__CFADD__(a1, a2))
  {
    __break(0x5513u);
LABEL_11:
    __break(0x5519u);
  }

  if (a1 + a2 < a1)
  {
    goto LABEL_11;
  }

  v10[0] = a1;
  v10[1] = a1 + a2;
  result = X509CertificateParseWithExtension(v11, v10, a3, a4);
  if (!result)
  {
    result = 720914;
    if (*(&v12 + 1))
    {
      v9 = v13;
      if (v13)
      {
        result = 0;
        if (a5)
        {
          if (a6)
          {
            result = 0;
            *a5 = *(&v12 + 1);
            *a6 = v9;
          }
        }
      }
    }
  }

  return result;
}

uint64_t CTParseKey(unint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v9 = *MEMORY[0x1E69E9840];
  memset(v8, 0, sizeof(v8));
  if (__CFADD__(a1, a2))
  {
    __break(0x5513u);
LABEL_7:
    __break(0x5519u);
  }

  if (a1 + a2 < a1)
  {
    goto LABEL_7;
  }

  v7[0] = a1;
  v7[1] = a1 + a2;
  result = X509CertificateParse(v8, v7);
  if (!result)
  {
    return X509CertificateParseKey(v8, a3, a4);
  }

  return result;
}

uint64_t CTEvaluateCertifiedChip(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5, void *a6, _BYTE *a7, uint64_t a8, const void *a9, size_t a10, BOOL *a11, uint64_t a12, uint64_t a13)
{
  __b[152] = *MEMORY[0x1E69E9840];
  memset(__b, 170, 0x4C0uLL);
  memset(v35, 170, sizeof(v35));
  v33 = 0xAAAAAAAAAAAAAAAALL;
  v34 = 0;
  v32 = 0xAAAAAAAAAAAAAAAALL;
  if (__CFADD__(a1, a2))
  {
    goto LABEL_42;
  }

  if (a1 + a2 < a1)
  {
    goto LABEL_41;
  }

  v32 = a1;
  v33 = a1 + a2;
  CommonName = X509ChainParseCertificateSet(&v32, __b, 4, &v35[2], &v34);
  if (CommonName)
  {
    return CommonName;
  }

  v22 = 327690;
  if (v32 != v33)
  {
    return v22;
  }

  if (v34 != 2)
  {
    return 327692;
  }

  X509ChainResetChain(v35, &v35[2]);
  __b[74] = v35[0];
  v23 = v35[0] ? (v35[0] + 296) : &v35[1];
  *v23 = &__b[74];
  if ((&__b[38] + 1) != 0 && __b >= 0xFFFFFFFFFFFFFECFLL)
  {
LABEL_42:
    __break(0x5513u);
  }

  v35[0] = &__b[38];
  __b[75] = v35;
  __b[36] = 0;
  __b[37] = v35[1];
  *v35[1] = __b;
  v35[1] = &__b[36];
  CommonName = X509ChainCheckPathWithOptions(12, v35, a12, 0);
  if (CommonName)
  {
    return CommonName;
  }

  v24 = **(v35[1] + 8);
  v30 = 0xAAAAAAAAAAAAAAAALL;
  v31 = 0xAAAAAAAAAAAAAAAALL;
  if ((a4 & 0x8000000000000000) != 0)
  {
    goto LABEL_41;
  }

  v30 = a3;
  v31 = a4;
  v25 = oidForPubKeyLength();
  if (v24 > v24 + 304 || v24 + 16 > v24 + 32 || v24 + 40 > v24 + 56 || v24 + 56 > v24 + 72)
  {
    goto LABEL_41;
  }

  CommonName = X509CertificateCheckSignatureWithPublicKey(&v30, &ecPublicKey, v25, (v24 + 16), v24 + 40);
  if (CommonName)
  {
    return CommonName;
  }

  if (a9 && a10)
  {
    if ((a10 & 0x8000000000000000) != 0 || v24 + 248 > v24 + 264)
    {
      goto LABEL_41;
    }

    if (compare_octet_string_raw(v24 + 248, a9, a10))
    {
      return 590085;
    }
  }

  v27 = v35[0];
  if (v35[0] >= v35[0] + 304)
  {
LABEL_41:
    __break(0x5519u);
    goto LABEL_42;
  }

  v28 = X509CertificateParseKey(v35[0], a5, a6);
  if (v28)
  {
    v22 = v28;
  }

  else
  {
    v22 = 327691;
  }

  if (v27 && !v28)
  {
    if (a11)
    {
      *a11 = (*(v27 + 240) & a13) != 0;
    }

    if (!a7 || !a8)
    {
      return 0;
    }

    v29[0] = 0;
    v29[1] = 0;
    if (v27 + 104 <= v27 + 120)
    {
      CommonName = X509CertificateSubjectNameGetCommonName((v27 + 104), v29);
      if (CommonName)
      {
        return CommonName;
      }

      if ((a8 & 0x8000000000000000) == 0)
      {
        CommonName = CTCopyUID(v29, a7, a8);
        if (CommonName)
        {
          return CommonName;
        }

        return 0;
      }
    }

    goto LABEL_41;
  }

  return v22;
}

uint64_t CTEvaluateCertsForPolicy(unint64_t a1, uint64_t a2, char a3, int a4, void *a5, void *a6, uint64_t a7, uint64_t a8, void *a9, void *a10, __int128 *a11)
{
  v45 = *MEMORY[0x1E69E9840];
  memset(v41, 170, sizeof(v41));
  bzero(v42, 0x4C0uLL);
  v38 = 0xAAAAAAAAAAAAAAAALL;
  v39 = 0xAAAAAAAAAAAAAAAALL;
  if (__CFADD__(a1, a2))
  {
LABEL_47:
    __break(0x5513u);
  }

  v40 = 0xAAAAAAAAAAAAAAAALL;
  if (a1 + a2 < a1)
  {
    goto LABEL_46;
  }

  v38 = a1;
  v39 = a1 + a2;
  result = X509ChainParseCertificateSet(&v38, v42, 4, &v41[2], &v40);
  if (result)
  {
    return result;
  }

  if (v38 != v39)
  {
    return 327690;
  }

  if ((a4 & 1) == 0 && !v43)
  {
    X509ChainResetChain(v41, &v41[2]);
    v20 = v41[0];
    v21 = (v41[0] + 296);
    if (!v41[0])
    {
      v21 = &v41[1];
    }

    *v21 = v44;
    v41[0] = v42;
    v44[0] = v20;
    v44[1] = v41;
LABEL_23:
    v37[0] = a7;
    v37[1] = a8;
    if (a7)
    {
      v24 = a8 == 0;
    }

    else
    {
      v24 = 1;
    }

    *&v25 = 0xAAAAAAAAAAAAAAAALL;
    *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v36 = 0xAAAAAAAAAAAAAAAALL;
    v34 = v25;
    v35 = v25;
    v33 = *a11;
    LOBYTE(v34) = *(a11 + 16);
    if (v24)
    {
      v26 = a3;
    }

    else
    {
      v26 = 1;
    }

    BYTE1(v34) = v26;
    WORD1(v34) = *(a11 + 9);
    if (!v24)
    {
      v27 = *(a11 + 4);
      *(&v34 + 1) = v37;
      *&v35 = v27;
      v28 = oidForPubKeyLength();
LABEL_33:
      v30 = *(a11 + 6);
      *(&v35 + 1) = v28;
      v36 = v30;
      result = X509ChainCheckPathWithOptions(12, v41, &v33, 0);
      if (result)
      {
        return result;
      }

      v31 = v41[0];
      if (!a5 || !a6 || !v41[0])
      {
LABEL_40:
        if (a10 && v31)
        {
          v32 = v31[32];
          *a10 = v31[31];
          a10[1] = v32;
        }

        result = 0;
        if (a9)
        {
          if (v31)
          {
            result = 0;
            *a9 = v31[30];
          }
        }

        return result;
      }

      if (v41[0] < v41[0] + 304)
      {
        result = X509CertificateParseKey(v41[0], a5, a6);
        if (result)
        {
          return result;
        }

        goto LABEL_40;
      }

      goto LABEL_46;
    }

    if (*(a11 + 3) < (*(a11 + 3) + 16))
    {
      v29 = *(a11 + 4);
      v28 = *(a11 + 5);
      *(&v34 + 1) = *(a11 + 3);
      *&v35 = v29;
      goto LABEL_33;
    }

LABEL_46:
    __break(0x5519u);
    goto LABEL_47;
  }

  if (v42[265] != 1)
  {
    v23 = &v45;
    v22 = v42;
    goto LABEL_20;
  }

  if (!v41[2])
  {
    v22 = 0;
    goto LABEL_22;
  }

  v22 = v41[2];
  do
  {
    if ((v22[265] & 1) == 0)
    {
      v23 = (v22 + 304);
      if (v22 < v22 + 304)
      {
        goto LABEL_20;
      }

      goto LABEL_46;
    }

    v22 = *(v22 + 34);
  }

  while (v22);
  v23 = (v41[2] + 304);
  v22 = v41[2];
LABEL_20:
  if (v22 + 304 > v23 || v22 > v22 + 304)
  {
    goto LABEL_46;
  }

LABEL_22:
  result = X509ChainBuildPathPartial(v22, &v41[2], v41, a4 ^ 1u);
  if (!result)
  {
    goto LABEL_23;
  }

  return result;
}

uint64_t CTEvaluatePragueSignatureCMS(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6, void *a7)
{
  v12 = *MEMORY[0x1E69E9840];
  v9 = 0xAAAAAAAA0000AA01;
  v8 = xmmword_1E0BB3B00;
  BYTE1(v9) = a5;
  v10 = 0u;
  v11 = 0u;
  return CMSVerifySignedDataWithLeaf(a1, a2, a3, a4, &v8, a6, a7);
}

uint64_t CTEvaluateKDLSignatureCMS(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6, void *a7)
{
  v12 = *MEMORY[0x1E69E9840];
  v9 = 0xAAAAAAAA0000AA01;
  v8 = xmmword_1E0BB3B10;
  BYTE1(v9) = a5;
  v10 = 0u;
  v11 = 0u;
  return CMSVerifySignedDataWithLeaf(a1, a2, a3, a4, &v8, a6, a7);
}

uint64_t CTVerifyAppleMarkerExtension(void *a1, uint64_t a2)
{
  result = 327700;
  v4 = a1[31];
  v5 = a1[32];
  if (v4)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    return 327707;
  }

  v7 = a1[30];
  if ((v7 & 0x100000000) == 0)
  {
    if ((v7 & 0x200000000) == 0)
    {
      return result;
    }

    if (!__CFADD__(v4, v5))
    {
      v11 = v4 + v5;
      if (v4 + v5 != -1)
      {
        if (v5 > 0x13)
        {
          return 327704;
        }

        v15 = (v11 - 1);
        if (v11 - 1 >= v4)
        {
          v16 = 0;
          v10 = 0;
          v17 = 0;
          while (v15 < v11)
          {
            v18 = *v15;
            if ((v18 - 58) < 0xFFFFFFF6)
            {
              return 327705;
            }

            v19 = (&powersOfTen + v16);
            if ((&powersOfTen + v16) < &powersOfTen || v19 + 1 > &CTOidCommonName || v19 > v19 + 1)
            {
              break;
            }

            if (v16 == 160 || (v17 & 0x1FFFFFFFFFFFFFFFLL) == 0x14)
            {
              goto LABEL_42;
            }

            v20 = v18 & 0xF;
            v21 = *v19;
            if (!is_mul_ok(v20, v21))
            {
              goto LABEL_43;
            }

            v22 = v20 * v21;
            v14 = __CFADD__(v10, v22);
            v10 += v22;
            if (v14)
            {
              goto LABEL_41;
            }

            ++v17;
            --v15;
            v16 += 8;
            if (v15 < v4)
            {
              goto LABEL_23;
            }
          }

LABEL_40:
          __break(0x5519u);
LABEL_41:
          __break(0x5500u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(0x550Cu);
          goto LABEL_44;
        }

        goto LABEL_13;
      }
    }

LABEL_44:
    __break(0x5513u);
    return result;
  }

  if (__CFADD__(v4, v5))
  {
    goto LABEL_44;
  }

  v8 = v4 + v5;
  if (v4 + v5 == -1)
  {
    goto LABEL_44;
  }

  v9 = (v8 - 1);
  if (v8 - 1 >= v4)
  {
    LOBYTE(v12) = 0;
    v10 = 0;
    while (v9 < v8)
    {
      v13 = (*v9 & 0x7F) << (7 * v12);
      v14 = __CFADD__(v10, v13);
      v10 += v13;
      if (v14)
      {
        goto LABEL_41;
      }

      if (--v9 >= v4)
      {
        v12 = (v12 + 1);
        if (v12 < 9)
        {
          continue;
        }
      }

      goto LABEL_23;
    }

    goto LABEL_40;
  }

LABEL_13:
  v10 = 0;
LABEL_23:
  if (v10 == a2)
  {
    return 0;
  }

  else
  {
    return 589829;
  }
}

uint64_t CTVerifyHostname(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = 327702;
  if (*(a1 + 232) && *(a1 + 224))
  {
    v7[1] = a3;
    v8 = 0xAAAAAAAAAAAAAA00;
    v7[0] = a2;
    v4 = X509CertificateParseGeneralNamesContent(a1, CTCompareGeneralNameToHostname, v7);
    if (v8)
    {
      v5 = 0;
    }

    else
    {
      v5 = 327706;
    }

    if (v4)
    {
      return v4;
    }

    else
    {
      return v5;
    }
  }

  return v3;
}

uint64_t CTCompareGeneralNameToHostname(uint64_t result, uint64_t *a2, void *a3)
{
  if (result != 2)
  {
    return 1;
  }

  v3 = *a3;
  v4 = a3[1];
  v5 = ~*a3;
  if (v4 > v5)
  {
    goto LABEL_55;
  }

  v6 = &v3[v4];
  if (&v3[v4] == -1)
  {
    goto LABEL_55;
  }

  v7 = v6 - 1;
  if (v6)
  {
    v8 = v7 >= v3;
  }

  else
  {
    v8 = 0;
  }

  if (!v8)
  {
    goto LABEL_54;
  }

  if (a3 + 3 < a3)
  {
    goto LABEL_54;
  }

  v9 = a3 + 2;
  if (a3 + 2 < a3)
  {
    goto LABEL_54;
  }

  v11 = *v7;
  result = compare_octet_string(a2, a3);
  if (!result)
  {
    goto LABEL_53;
  }

  if (v11 != 46)
  {
    goto LABEL_16;
  }

  v12 = v4 - 1;
  if (v4)
  {
    if (v12 <= v4)
    {
      result = compare_octet_string_raw(a2, v3, v12);
      if (result)
      {
LABEL_16:
        v13 = a2[1];
        if (v13 < 3)
        {
          return 1;
        }

        v14 = *a2;
        if (**a2 != 42)
        {
          return 1;
        }

        if (v14 != -1)
        {
          if (v14[1] == 46)
          {
            v15 = -2;
            if (v14 < 0xFFFFFFFFFFFFFFFELL)
            {
              v15 = *a2;
            }

            v16 = -v15;
            v17 = 2;
            result = 1;
            while (v16 != v17)
            {
              if (v14[v17] == 46)
              {
                if (v13 == v17)
                {
                  return 1;
                }

                v18 = 0;
                if (v4)
                {
                  while (1)
                  {
                    v19 = &v3[v18];
                    if (&v3[v18] >= v6 || v19 < v3)
                    {
                      goto LABEL_54;
                    }

                    if (*v19 == 46)
                    {
                      break;
                    }

                    if (v4 == ++v18)
                    {
                      v18 = v4;
                      break;
                    }
                  }
                }

                v21 = v13 - 1;
                v8 = v4 >= v18;
                v22 = v4 - v18;
                if (!v8)
                {
                  goto LABEL_56;
                }

                if (v21 == v22)
                {
                  if (v18 > v5)
                  {
                    goto LABEL_55;
                  }

                  v23 = &v3[v18];
                  if (&v3[v18] > v6 || v3 > v23)
                  {
                    goto LABEL_54;
                  }

                  result = memcmp(v14 + 1, v23, v13 - 1);
                  if (!result)
                  {
                    goto LABEL_53;
                  }
                }

                if (v11 != 46)
                {
                  return 1;
                }

                if (!v22)
                {
                  goto LABEL_56;
                }

                if (v21 != v22 - 1)
                {
                  return 1;
                }

                if (v18 > v5)
                {
                  goto LABEL_55;
                }

                v24 = &v3[v18];
                if (&v3[v18] > v6 || v3 > v24 || v21 > v22)
                {
                  goto LABEL_54;
                }

                if (!memcmp(v14 + 1, v24, v21))
                {
                  goto LABEL_53;
                }

                return 1;
              }

              if (v13 == ++v17)
              {
                return result;
              }
            }

            goto LABEL_55;
          }

          return 1;
        }

LABEL_55:
        __break(0x5513u);
        goto LABEL_56;
      }

LABEL_53:
      result = 0;
      *v9 = 1;
      return result;
    }

LABEL_54:
    __break(0x5519u);
    goto LABEL_55;
  }

LABEL_56:
  __break(0x5515u);
  return result;
}

uint64_t CTEvaluateAppleSSLWithOptionalTemporalCheck(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7)
{
  v25 = *MEMORY[0x1E69E9840];
  v20 = 0xAAAAAAAA00AAAA01;
  v21 = &null_octet;
  v19 = xmmword_1E0BB3B20;
  BYTE1(v20) = a6;
  BYTE2(v20) = a7;
  v22 = &null_octet;
  v23 = &null_octet;
  v24 = &CTOctetServerAuthEKU;
  v17 = 0;
  v18 = 0;
  result = CTEvaluateCertsForPolicy(a1, a2, a6, 1, &v17, &v18, 0, 0, 0, 0, &v19);
  if (!result)
  {
    *&v13 = 0xAAAAAAAAAAAAAAAALL;
    *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v16[17] = v13;
    v16[18] = v13;
    v16[15] = v13;
    v16[16] = v13;
    v16[13] = v13;
    v16[14] = v13;
    v16[11] = v13;
    v16[12] = v13;
    v16[9] = v13;
    v16[10] = v13;
    v16[7] = v13;
    v16[8] = v13;
    v16[6] = v13;
    v16[4] = v13;
    v16[5] = v13;
    v16[2] = v13;
    v16[3] = v13;
    v16[0] = v13;
    v16[1] = v13;
    memset(v15, 170, sizeof(v15));
    if (__CFADD__(a1, a2))
    {
      __break(0x5513u);
    }

    else
    {
      v14[0] = a1;
      v14[1] = a1 + a2;
      result = X509ChainParseCertificateSet(v14, v16, 1, &v15[1], v15);
      if (!result)
      {
        result = CTVerifyAppleMarkerExtension(v16, a5);
        if (!result)
        {
          return CTVerifyHostname(v16, a3, a4);
        }
      }
    }
  }

  return result;
}

uint64_t CTGetSEKType(unint64_t a1, uint64_t a2)
{
  v5 = *MEMORY[0x1E69E9840];
  memset(v4, 0, sizeof(v4));
  if (__CFADD__(a1, a2))
  {
    __break(0x5513u);
LABEL_10:
    __break(0x5519u);
  }

  if (a1 + a2 < a1)
  {
    goto LABEL_10;
  }

  v3[0] = a1;
  v3[1] = a1 + a2;
  if (X509CertificateParse(v4, v3))
  {
    return 0;
  }

  if (compare_octet_string(&v4[10] + 8, &SEKTestRootSKID))
  {
    return compare_octet_string(&v4[10] + 8, &SEKProdRootSKID) == 0;
  }

  return 2;
}

uint64_t CTEvaluateSEK(char a1, unint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = 327712;
  if ((a1 & 3) != 0)
  {
    if ((a1 & 1) == 0 || (result = CTEvaluateCertsForPolicy(a2, a3, 0, 0, a4, a5, 0, 0, 0, 0, X509PolicySEK), result))
    {
      if ((a1 & 2) != 0)
      {
        return CTEvaluateCertsForPolicy(a2, a3, 0, 0, a4, a5, &SEKTestRoot_public_key, 97, 0, 0, X509PolicySEK);
      }
    }
  }

  return result;
}

uint64_t CTGetICDPFederationType(unint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  memset(v10, 0, sizeof(v10));
  v8 = 0xAAAAAAAAAAAAAAAALL;
  v9 = 0xAAAAAAAAAAAAAAAALL;
  if (__CFADD__(a1, a2))
  {
LABEL_19:
    __break(0x5513u);
  }

  if (a1 + a2 < a1)
  {
LABEL_18:
    __break(0x5519u);
    goto LABEL_19;
  }

  v8 = a1;
  v9 = a1 + a2;
  if (X509CertificateParse(v10, &v8))
  {
    return 0;
  }

  v3 = numICDPRoots;
  if (!numICDPRoots)
  {
    return 0;
  }

  for (i = icdpFederationAnchors; ; i += 3)
  {
    v5 = i + 3;
    if (i < icdpFederationAnchors || v5 > &off_1E86E4C50 || i >= v5)
    {
      goto LABEL_18;
    }

    if (!compare_octet_string(&v10[10] + 8, *i))
    {
      break;
    }

    if (!--v3)
    {
      return 0;
    }
  }

  return i[2];
}

uint64_t CTEvaluateICDPFederation(uint64_t result, unint64_t a2, uint64_t a3, void *a4, void *a5)
{
  if ((result & 0x7F) == 0)
  {
    return 327712;
  }

  v5 = numICDPRoots;
  if (!numICDPRoots)
  {
    return 327712;
  }

  v6 = 0;
  v7 = 0;
  v8 = off_1E86E4BC0;
  while (1)
  {
    v9 = v8 - 3 < icdpFederationAnchors || v8 > &off_1E86E4C50;
    if (v9 || v8 - 3 >= v8)
    {
      break;
    }

    if (*(v8 - 1) == result)
    {
      v6 = *(v8 - 2);
      v7 = (v6 + 2);
    }

    v8 += 3;
    if (!--v5)
    {
      if (!v6)
      {
        return 327712;
      }

      if ((v6 + 2) <= v7)
      {
        return CTEvaluateCertsForPolicy(a2, a3, 0, 0, a4, a5, *v6, v6[1], 0, 0, X509PolicyICDPFederation);
      }

      break;
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t CTCopyUID(uint64_t result, _BYTE *a2, uint64_t a3)
{
  v5 = *result;
  v4 = *(result + 8);
  if (__CFADD__(*result, v4))
  {
    goto LABEL_31;
  }

  v6 = v5 + v4;
  v7 = *result;
  if (v5 < v6)
  {
    while (v7 >= v5)
    {
      v3 = *v7;
      if (v3 != 45 && ++v7 < v6)
      {
        continue;
      }

      goto LABEL_6;
    }

    goto LABEL_34;
  }

LABEL_6:
  if (v7 == -1)
  {
    goto LABEL_31;
  }

  v8 = v7 + 1;
  v3 = 327693;
  result = 327693;
  if ((v7 + 1) >= v6)
  {
    return result;
  }

  if (a3 < 0 || v5 > v8)
  {
LABEL_34:
    __break(0x5519u);
    return result;
  }

  if (__CFADD__(v8, v6 - v8))
  {
    goto LABEL_31;
  }

  if (v6 - v8 != 2 * a3)
  {
    return (v3 + 1);
  }

  if (__CFADD__(a2, a3) || v7 == -2)
  {
LABEL_31:
    __break(0x5513u);
    return (v3 + 1);
  }

  v9 = v7 + 2;
  v10 = a2;
  while (1)
  {
    result = 0;
    if (v9 >= v6 || v10 >= &a2[a3])
    {
      return result;
    }

    v11 = v9 - 1;
    if ((v9 - 1) >= v6 || v11 < v8)
    {
      goto LABEL_34;
    }

    v12 = &asciiNibbleToByte[*v11];
    result = &CTOidAppleImg4Manifest;
    if (v12 >= &CTOidAppleImg4Manifest || v12 < asciiNibbleToByte)
    {
      goto LABEL_34;
    }

    if (v11 < v7)
    {
      goto LABEL_34;
    }

    v14 = &asciiNibbleToByte[*v9];
    result = &CTOidAppleImg4Manifest;
    if (v14 >= &CTOidAppleImg4Manifest || v14 < asciiNibbleToByte)
    {
      goto LABEL_34;
    }

    v15 = *v12;
    result = 327695;
    if (v15 > 0xF)
    {
      return result;
    }

    v16 = *v14;
    if (v16 > 0xF)
    {
      return result;
    }

    if (v10 < a2)
    {
      goto LABEL_34;
    }

    *v10++ = v16 | (16 * v15);
    v9 += 2;
    if (!v9)
    {
      goto LABEL_31;
    }
  }
}

uint64_t X509CertificateParseImplicit(unint64_t a1, unint64_t *a2, const void *a3, size_t a4)
{
  v71 = *MEMORY[0x1E69E9840];
  v68 = 0;
  v69 = 0;
  v66 = 0xAAAAAAAAAAAAAAAALL;
  v67 = 0xAAAAAAAAAAAAAAAALL;
  v4 = *a2;
  v5 = a2[1];
  if (*a2 > v5)
  {
    goto LABEL_189;
  }

  v66 = *a2;
  v67 = v5;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  if (a1 + 304 < a1)
  {
    goto LABEL_189;
  }

  v10 = 720915;
  result = ccder_blob_decode_tl();
  if (!result)
  {
    return v10;
  }

  v12 = v69;
  v13 = v66;
  v14 = v69 + v66 - v4;
  if (__CFADD__(v69, v66 - v4))
  {
    goto LABEL_191;
  }

  if (v14 > v5 - v4)
  {
    goto LABEL_189;
  }

  *(a1 + 16) = v4;
  *(a1 + 24) = v14;
  v64 = 0xAAAAAAAAAAAAAAAALL;
  v65 = 0xAAAAAAAAAAAAAAAALL;
  if (__CFADD__(v13, v12))
  {
    goto LABEL_190;
  }

  v15 = v13 + v12;
  if (v13 > v15 || v15 > v67)
  {
    goto LABEL_189;
  }

  v64 = v13;
  v65 = v15;
  v62 = v13;
  v63 = v15;
  result = ccder_blob_decode_tl();
  if (result)
  {
    if (__CFADD__(v62, v68))
    {
      goto LABEL_190;
    }

    if (!ccder_blob_decode_uint64() || v62 != v62 + v68)
    {
      return 720916;
    }

    if (v62 + v68 > v63)
    {
      goto LABEL_189;
    }

    v64 = v62;
    v65 = v63;
  }

  result = ccder_blob_decode_tl();
  if (!result)
  {
    return 720917;
  }

  v16 = v64;
  v17 = v65;
  if (v65 < v64)
  {
    goto LABEL_189;
  }

  v18 = v68;
  if (v68 > v65 - v64)
  {
    goto LABEL_189;
  }

  *(a1 + 136) = v64;
  *(a1 + 144) = v18;
  if (__CFADD__(v16, v18))
  {
    goto LABEL_190;
  }

  v19 = v16 + v18;
  if (v19 > v17)
  {
    goto LABEL_189;
  }

  if (v16 > v19)
  {
    goto LABEL_189;
  }

  v64 = v19;
  if (a1 + 152 > a1 + 168)
  {
    goto LABEL_189;
  }

  if (!ccder_blob_decode_AlgorithmIdentifierNULL(&v64, (a1 + 152)))
  {
    return 720918;
  }

  result = ccder_blob_decode_tl();
  if (!result)
  {
    return 720919;
  }

  v20 = v64;
  v21 = v65;
  if (v65 < v64)
  {
    goto LABEL_189;
  }

  v22 = v68;
  if (v68 > v65 - v64)
  {
    goto LABEL_189;
  }

  *(a1 + 120) = v64;
  *(a1 + 128) = v22;
  if (__CFADD__(v20, v22))
  {
    goto LABEL_190;
  }

  v23 = v20 + v22;
  if (v23 > v21 || v20 > v23)
  {
    goto LABEL_189;
  }

  v64 = v23;
  result = ccder_blob_decode_tl();
  if (!result)
  {
    return 720920;
  }

  v24 = v64;
  v25 = v65;
  if (v65 < v64)
  {
    goto LABEL_189;
  }

  v26 = v68;
  if (v68 > v65 - v64)
  {
    goto LABEL_189;
  }

  *(a1 + 72) = v64;
  *(a1 + 80) = v26;
  if (__CFADD__(v24, v26))
  {
    goto LABEL_190;
  }

  v27 = v24 + v26;
  if (v27 > v25 || v24 > v27)
  {
    goto LABEL_189;
  }

  v64 = v27;
  result = ccder_blob_decode_tl();
  if (!result)
  {
    return 720921;
  }

  v28 = v64;
  v29 = v65;
  if (v65 < v64)
  {
    goto LABEL_189;
  }

  v30 = v68;
  if (v68 > v65 - v64)
  {
    goto LABEL_189;
  }

  *(a1 + 104) = v64;
  *(a1 + 112) = v30;
  if (__CFADD__(v28, v30))
  {
    goto LABEL_190;
  }

  v31 = v28 + v30;
  if (v28 + v30 > v29 || v28 > v31)
  {
    goto LABEL_189;
  }

  v64 = v28 + v30;
  result = ccder_blob_decode_tl();
  if (!result)
  {
    return 720922;
  }

  v32 = v64;
  v33 = v68;
  v34 = v64 - v31 + v68;
  if (__CFADD__(v64 - v31, v68))
  {
    goto LABEL_191;
  }

  if (v34 > v29 - v31)
  {
    goto LABEL_189;
  }

  *(a1 + 88) = v31;
  *(a1 + 96) = v34;
  if (__CFADD__(v32, v33))
  {
LABEL_190:
    __break(0x5513u);
    goto LABEL_191;
  }

  v35 = v32 + v33;
  if (v32 > v35 || v35 > v65)
  {
    goto LABEL_189;
  }

  v63 = v65;
  v64 = v35;
  v62 = v35;
  if (ccder_blob_decode_tl())
  {
    return 720923;
  }

  if (v64 > v65)
  {
    goto LABEL_189;
  }

  v62 = v64;
  v63 = v65;
  if (ccder_blob_decode_tl())
  {
    return 720924;
  }

  if (v64 > v65)
  {
    goto LABEL_189;
  }

  v62 = v64;
  v63 = v65;
  result = ccder_blob_decode_tl();
  if (!result)
  {
LABEL_167:
    if (*(a1 + 32) < 3uLL)
    {
      if (v64 != v65)
      {
        return v10;
      }
    }

    else
    {
      if (v65 > a2[1] || *a2 > v65)
      {
        goto LABEL_189;
      }

      *a2 = v65;
    }

    if (!__CFADD__(v66, v69))
    {
      if (v66 > v66 + v69 || v66 + v69 > v67)
      {
        goto LABEL_189;
      }

      v66 += v69;
      if (!ccder_blob_decode_AlgorithmIdentifierNULL(&v66, (a1 + 40)))
      {
        return 720937;
      }

      *&v70[0] = 0xAAAAAAAAAAAAAAAALL;
      *(&v70[0] + 1) = 0xAAAAAAAAAAAAAAAALL;
      v60 = 0;
      result = ccder_blob_decode_bitstring();
      if (!result)
      {
        return 720938;
      }

      if (v60 < 0xFFFFFFFFFFFFFFF9)
      {
        if (*(&v70[0] + 1) >= *&v70[0])
        {
          v51 = (v60 + 7) >> 3;
          if (v51 <= *(&v70[0] + 1) - *&v70[0])
          {
            *(a1 + 56) = *&v70[0];
            *(a1 + 64) = v51;
            v52 = v67;
            if (v66 <= v67)
            {
              v10 = 0;
              *a2 = v66;
              a2[1] = v52;
              return v10;
            }
          }
        }

        goto LABEL_189;
      }

LABEL_191:
      __break(0x5500u);
LABEL_192:
      __break(0x5507u);
      return result;
    }

    goto LABEL_190;
  }

  v60 = 0xAAAAAAAAAAAAAAAALL;
  v61 = 0xAAAAAAAAAAAAAAAALL;
  if (__CFADD__(v62, v68))
  {
    goto LABEL_190;
  }

  if (v62 > v62 + v68 || v62 + v68 > v63)
  {
    goto LABEL_189;
  }

  v60 = v62;
  v61 = v62 + v68;
  result = ccder_blob_decode_tl();
  if (!result || !v68)
  {
    return 720925;
  }

  v36 = v60;
  if (__CFADD__(v60, v68))
  {
    goto LABEL_190;
  }

  v37 = v60 + v68;
  if (v60 > v60 + v68 || v37 > v61)
  {
    goto LABEL_189;
  }

  v61 = v60 + v68;
  *(a1 + 266) = 0;
  memset(&v70[2], 0, 128);
  if (a3)
  {
    v38 = a4 == 0;
  }

  else
  {
    v38 = 1;
  }

  v39 = !v38;
  memset(v70, 0, 32);
  if (v36 >= v37)
  {
LABEL_162:
    if (v36 != v37)
    {
      return 720925;
    }

    if (v36 > v65 || v64 > v36)
    {
LABEL_189:
      __break(0x5519u);
    }

    v64 = v37;
    goto LABEL_167;
  }

  v53 = 0;
  v40 = 0;
  while (1)
  {
    v58 = 0xAAAAAAAAAAAAAAAALL;
    v59 = 0xAAAAAAAAAAAAAAAALL;
    v57 = 0;
    v56 = 0;
    result = ccder_blob_decode_tl();
    if ((result & 1) == 0)
    {
      return 720926;
    }

    v54 = 0xAAAAAAAAAAAAAAAALL;
    v55 = 0xAAAAAAAAAAAAAAAALL;
    if (__CFADD__(v60, v56))
    {
      goto LABEL_190;
    }

    if (v60 > v60 + v56 || v60 + v56 > v61)
    {
      goto LABEL_189;
    }

    v54 = v60;
    v55 = v60 + v56;
    result = ccder_blob_decode_tl();
    if (!result)
    {
      return 720927;
    }

    if (v55 < v54 || v68 > v55 - v54)
    {
      goto LABEL_189;
    }

    v58 = v54;
    v59 = v68;
    if (__CFADD__(v54, v68))
    {
      goto LABEL_190;
    }

    if (v54 + v68 > v55 || v54 > v54 + v68)
    {
      goto LABEL_189;
    }

    v54 += v68;
    if (!der_get_BOOLean(&v54, 1, &v57))
    {
      return 720928;
    }

    result = ccder_blob_decode_tl();
    if (!result)
    {
      return 720929;
    }

    if (__CFADD__(v54, v68))
    {
      goto LABEL_190;
    }

    if (v55 != v54 + v68)
    {
      return 720929;
    }

    if (v39)
    {
      result = compare_octet_string_raw(&v58, a3, a4);
      if (!result)
      {
        if (v55 < v54)
        {
          goto LABEL_189;
        }

        v42 = v68;
        if (v68 > v55 - v54)
        {
          goto LABEL_189;
        }

        *(a1 + 248) = v54;
        *(a1 + 256) = v42;
      }
    }

    if (v59 == 3)
    {
      if (*v58 == 7509 && *(v58 + 2) == 15)
      {
        v49 = 720930;
        if (v40)
        {
          return v49;
        }

        result = X509ExtensionParseKeyUsage(&v54, (a1 + 264));
        if ((result & 1) == 0)
        {
          return v49;
        }

        v40 |= 1u;
        goto LABEL_157;
      }

      if (*v58 == 7509 && *(v58 + 2) == 19)
      {
        v49 = 720931;
        if ((v40 & 2) != 0)
        {
          return v49;
        }

        result = X509ExtensionParseBasicConstraints(&v54, (a1 + 200), (a1 + 265));
        if ((result & 1) == 0)
        {
          return v49;
        }

        v40 |= 2u;
        goto LABEL_157;
      }

      if (*v58 == 7509 && *(v58 + 2) == 35)
      {
        v49 = 720932;
        if ((v40 & 4) != 0)
        {
          return v49;
        }

        result = X509ExtensionParseAuthorityKeyIdentifier(&v54, (a1 + 168), (a1 + 176));
        if ((result & 1) == 0)
        {
          return v49;
        }

        v40 |= 4u;
        goto LABEL_157;
      }

      if (*v58 == 7509 && *(v58 + 2) == 14)
      {
        v49 = 720933;
        if ((v40 & 8) != 0)
        {
          return v49;
        }

        result = X509ExtensionParseSubjectKeyIdentifier(&v54, (a1 + 184), (a1 + 192));
        if ((result & 1) == 0)
        {
          return v49;
        }

        v40 |= 8u;
        goto LABEL_157;
      }

      if (*v58 == 7509 && *(v58 + 2) == 37)
      {
        v49 = 720934;
        if ((v40 & 0x10) != 0)
        {
          return v49;
        }

        result = X509ExtensionParseExtendedKeyUsage(&v54, (a1 + 208), (a1 + 216));
        if ((result & 1) == 0)
        {
          return v49;
        }

        v40 |= 0x10u;
        goto LABEL_157;
      }

      if (*v58 == 7509 && *(v58 + 2) == 17)
      {
        v49 = 720935;
        if ((v40 & 0x20) != 0)
        {
          return v49;
        }

        result = X509ExtensionParseSubjectAltName(&v54, (a1 + 224), (a1 + 232));
        if ((result & 1) == 0)
        {
          return v49;
        }

        v40 |= 0x20u;
        goto LABEL_157;
      }

LABEL_133:
      if (__CFADD__(v54, v68))
      {
        goto LABEL_190;
      }

      if (v54 > v54 + v68 || v54 + v68 > v55)
      {
        goto LABEL_189;
      }

      v54 += v68;
      if (v57 == 1)
      {
        *(a1 + 266) = v57;
      }

      goto LABEL_157;
    }

    if (v59 < 8)
    {
      goto LABEL_133;
    }

    if (*v58 != -2042067414 || *(v58 + 3) != 1684273030)
    {
      goto LABEL_133;
    }

    v49 = 720936;
    if (!X509CertificateVerifyOnlyOneAppleExtension(&v58, v70, v53))
    {
      return v49;
    }

    result = X509ExtensionParseAppleExtension(&v54, v58, v59, (a1 + 240), (a1 + 248), v39);
    if (!result)
    {
      return v49;
    }

    if (v53 == 0xFF)
    {
      goto LABEL_192;
    }

    ++v53;
LABEL_157:
    if (v54 != v55)
    {
      return 720926;
    }

    if (__CFADD__(v60, v56))
    {
      goto LABEL_190;
    }

    v36 = v60 + v56;
    if (v60 > v60 + v56)
    {
      goto LABEL_189;
    }

    v37 = v61;
    if (v36 > v61)
    {
      goto LABEL_189;
    }

    v60 += v56;
    if (v36 >= v61)
    {
      goto LABEL_162;
    }
  }
}