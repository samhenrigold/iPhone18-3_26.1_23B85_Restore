void *sub_1AF3FBEE4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, void *a6)
{
  v8 = a5;
  v35 = sub_1AF43AB80(MEMORY[0x1E69E7CC0]);
  v36 = v13;
  sub_1AF413C70(a1, a2, a3 & 1, a4, v8, a6, &v35);
  if (v6)
  {
  }

  else
  {
    sub_1AF449B08(0, &qword_1ED726CC0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    v15 = v14;
    v16 = type metadata accessor for Node(0);
    a6 = v35;
    v17 = v36;
    if (v15 == v16)
    {
      v18 = *(v36 + 2);

      if (v18)
      {
        v19 = 0;
        v20 = v17 + 32;
        v21 = v17;
        do
        {
          v32 = v21;
          while (1)
          {
            v22 = *&v20[8 * v19];
            if (a6[2])
            {
              sub_1AF0D3F10(*&v20[8 * v19]);
              if (v23)
              {
              }
            }

            _s11DeletedNodeCMa(0);
            if (swift_dynamicCast())
            {

              v24 = sub_1AF0D3F10(v22);
              if (v25)
              {
                break;
              }
            }

            if (v18 == ++v19)
            {
              goto LABEL_24;
            }
          }

          v33 = v24;
          v26 = v35;
          v34 = v35;
          if (!swift_isUniquelyReferenced_nonNull_native())
          {
            sub_1AF846294();
            v26 = v34;
          }

          sub_1AF6B2920(v33, v26);

          v35 = v26;
          v27 = *(v32 + 2);
          if (v27)
          {
            v28 = 0;
            while (*&v32[8 * v28 + 32] != v22)
            {
              if (v27 == ++v28)
              {
                goto LABEL_19;
              }
            }
          }

          else
          {
LABEL_19:
            v28 = 0;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v32 = sub_1AFC0D940(v32);
          }

          v21 = v32;
          v31 = *(v32 + 2) - 1;
          memmove(&v32[8 * v28 + 32], &v32[8 * v28 + 40], 8 * (v31 - v28));
          *(v32 + 2) = v31;
          v36 = v32;
        }

        while (v18 - 1 != v19++);
      }

LABEL_24:

      return v35;
    }
  }

  return a6;
}

uint64_t sub_1AF3FC1C0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, __objc2_class **a6)
{
  v8 = a5;
  v30 = sub_1AF441394(MEMORY[0x1E69E7CC0], type metadata accessor for Node, sub_1AF8351A0, sub_1AF849498);
  v31 = v13;
  sub_1AF4144D0(a1, a2, a3 & 1, a4, v8, a6, &v30);
  v14 = v30;
  if (!v6)
  {
    v15 = v31;
    v16 = *(v31 + 2);

    a3 = v14;
    if (v16)
    {
      v17 = 0;
      v18 = v15 + 32;
      a3 = v14;
      v19 = v15;
      do
      {
        v20 = v17;
        while (1)
        {
          v21 = *&v18[8 * v20];
          if (*(v14 + 16))
          {
            sub_1AF0D3F10(*&v18[8 * v20]);
            if (v22)
            {
            }
          }

          _s11DeletedNodeCMa(0);
          v23 = swift_dynamicCastClass();

          if (v23)
          {
            sub_1AF0D3F10(v21);
            if (v24)
            {
              break;
            }
          }

          if (v16 == ++v20)
          {
            goto LABEL_21;
          }
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v32 = a3;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_1AF849498();
          a3 = v32;
        }

        sub_1AF6B761C();

        v30 = a3;
        v26 = *(v19 + 2);
        if (v26)
        {
          v27 = 0;
          while (*&v19[8 * v27 + 32] != v21)
          {
            if (v26 == ++v27)
            {
              goto LABEL_17;
            }
          }
        }

        else
        {
LABEL_17:
          v27 = 0;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_1AFC0D940(v19);
        }

        v17 = v20 + 1;
        v28 = *(v19 + 2) - 1;
        memmove(&v19[8 * v27 + 32], &v19[8 * v27 + 40], 8 * (v28 - v27));
        *(v19 + 2) = v28;
        v31 = v19;
      }

      while (v16 - 1 != v20);
    }
  }

LABEL_21:

  return a3;
}

void *sub_1AF3FC510(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, void, uint64_t, uint64_t, uint64_t, uint64_t *), uint64_t (*a8)(void), uint64_t (*a9)(void))
{
  v41 = sub_1AF440EB8(MEMORY[0x1E69E7CC0]);
  v42 = v17;
  a7(a1, a2, a3 & 1, a4, a5, a6, &v41);
  if (v9)
  {
  }

  else
  {
    v18 = a8(0);
    a1 = v41;
    if (v18 == MEMORY[0x1E69E6530])
    {
      v19 = *(v42 + 2);
      if (v19)
      {
        v21 = v42 + 32;
        v22 = v42;

        v23 = 0;
        v40 = v19;
        do
        {
          v26 = *&v21[8 * v23];
          v27 = a1[2];
          if (v27)
          {
            v28 = sub_1AF0D3F10(*&v21[8 * v23]);
            if (v29)
            {
              v27 = *(a1[7] + 8 * v28);
            }

            else
            {
              v27 = 0;
            }
          }

          v43 = v27;
          a9(0);
          if (swift_dynamicCast())
          {

            v30 = sub_1AF0D3F10(v26);
            if (v31)
            {
              v32 = v21;
              v33 = a9;
              v34 = v30;
              v35 = v41;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v43 = v35;
              if (!isUniquelyReferenced_nonNull_native)
              {
                sub_1AF84E5F8();
                v35 = v43;
              }

              sub_1AF6B2F08(v34, v35);
              v41 = v35;
              v37 = *(v22 + 2);
              if (v37)
              {
                v24 = 0;
                a9 = v33;
                v21 = v32;
                v19 = v40;
                while (*&v22[8 * v24 + 32] != v26)
                {
                  if (v37 == ++v24)
                  {
                    v24 = 0;
                    break;
                  }
                }
              }

              else
              {
                v24 = 0;
                a9 = v33;
                v21 = v32;
                v19 = v40;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v22 = sub_1AFC0D940(v22);
              }

              v25 = *(v22 + 2) - 1;
              memmove(&v22[8 * v24 + 32], &v22[8 * v24 + 40], 8 * (v25 - v24));
              *(v22 + 2) = v25;
              v42 = v22;
            }
          }

          ++v23;
        }

        while (v23 != v19);

        return v41;
      }
    }
  }

  return a1;
}

uint64_t sub_1AF3FC79C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AF44479C(0);
  type metadata accessor for Node(0);
  type metadata accessor for AuthoringNode(0);
  result = swift_dynamicCastMetatype();
  if (result)
  {
    v7 = *(a1 + 16);
    v8 = OBJC_IVAR____TtC3VFX13AuthoringNode_inputs;

    v10 = sub_1AF3D6B1C(v9, a2, a3, sub_1AF3FD720);

    *(v7 + v8) = v10;
  }

  return result;
}

uint64_t sub_1AF3FC898(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_1AF449B08(0, &qword_1ED726CC0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  type metadata accessor for Node(0);
  if (swift_dynamicCastMetatype())
  {
    v6 = *(a1 + 16);

    v8 = sub_1AF3D7490(v7, a2, a3);

    *(v6 + 16) = v8;
  }

  else
  {

    return type metadata accessor for AuthoringNode(0);
  }
}

uint64_t sub_1AF3FC9A0(uint64_t a1, uint64_t *a2)
{
  sub_1AF449890(0, &unk_1EB63F440, type metadata accessor for GraphCodeGen.CFGNode, MEMORY[0x1E69E6720]);
  type metadata accessor for Node(0);
  if (swift_dynamicCastMetatype())
  {
    v4 = *(a1 + 16);

    v6 = sub_1AF3D72E8(v5, a2);

    *(v4 + 16) = v6;
  }

  else
  {

    return type metadata accessor for AuthoringNode(0);
  }
}

uint64_t sub_1AF3FCAB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for Node(0);
  type metadata accessor for AuthoringNode(0);
  result = swift_dynamicCastMetatype();
  if (result)
  {
    v7 = *(a1 + 16);
    v8 = OBJC_IVAR____TtC3VFX13AuthoringNode_inputs;

    v10 = sub_1AF3D6B1C(v9, a2, a3, sub_1AF3FE1F8);

    *(v7 + v8) = v10;
  }

  return result;
}

uint64_t sub_1AF3FCBA8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  type metadata accessor for Node(0);
  if (swift_dynamicCastMetatype())
  {
    v6 = *(a1 + 16);

    v8 = sub_1AF3D7890(v7, a2, a3);

    *(v6 + 16) = v8;
  }

  else
  {

    return type metadata accessor for AuthoringNode(0);
  }
}

unint64_t sub_1AF3FCC84(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v34[6] = a2;
  v6 = sub_1AFDFC318();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v34[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF449890(0, &qword_1ED72DF30, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v34[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v34[-1] - v14;
  if (!a1)
  {
    return 0;
  }

  v33 = v3;
  v16 = *a3;
  if (!*(v16 + 16) || (v17 = sub_1AF0D3F10(a1), (v18 & 1) == 0) || (*(*(v16 + 56) + v17) & 1) != 0)
  {
    type metadata accessor for _PlaceholderNode(0);
    v19 = swift_allocObject();
    v34[3] = type metadata accessor for AuthoringNode(0);
    v34[4] = &off_1EE801558;
    v34[0] = a1;
    sub_1AF441194(v34, v19 + OBJC_IVAR____TtC3VFX16_PlaceholderNode_oldNode);
    v20 = MEMORY[0x1E69E7CC0];
    v19[3] = 0;
    v19[4] = 0;
    v19[2] = v20;
    swift_retain_n();
    sub_1AFDFC308();
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v34);
    (*(v7 + 56))(v15, 1, 1, v6);
    v21 = swift_allocObject();
    v22 = v21 + OBJC_IVAR____TtC3VFX13AuthoringNode_position;
    *v22 = 0;
    *(v22 + 8) = 0;
    *(v22 + 16) = 1;
    v23 = v21 + OBJC_IVAR____TtC3VFX13AuthoringNode_size;
    *v23 = 0;
    *(v23 + 8) = 0;
    *(v23 + 16) = 1;
    v24 = v21 + OBJC_IVAR____TtC3VFX13AuthoringNode_zIndex;
    *v24 = 0;
    *(v24 + 8) = 1;
    v25 = (v21 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringName);
    *v25 = 0;
    v25[1] = 0;
    *(v21 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw) = v19;
    *(v21 + OBJC_IVAR____TtC3VFX13AuthoringNode_inputs) = MEMORY[0x1E69E7CC0];
    sub_1AF449A04(v15, v12, &qword_1ED72DF30, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1AF449890);
    v26 = *(v7 + 48);
    if (v26(v12, 1, v6) == 1)
    {
      sub_1AFDFC308();
      sub_1AF44832C(v15, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
      if (v26(v12, 1, v6) != 1)
      {
        sub_1AF44832C(v12, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
      }
    }

    else
    {
      sub_1AF44832C(v15, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
      (*(v7 + 32))(v9, v12, v6);
    }

    (*(v7 + 32))(v21 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v9, v6);
    (*(v7 + 24))(*(v21 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw) + OBJC_IVAR____TtC3VFX4Node_authoringID, v21 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v6);
    v27 = v21 + OBJC_IVAR____TtC3VFX13AuthoringNode_position;
    *v27 = 0;
    *(v27 + 8) = 0;
    *(v27 + 16) = 1;
    v28 = v21 + OBJC_IVAR____TtC3VFX13AuthoringNode_size;
    *v28 = 0;
    *(v28 + 8) = 0;
    *(v28 + 16) = 1;
    v29 = v21 + OBJC_IVAR____TtC3VFX13AuthoringNode_zIndex;
    *v29 = 0;
    *(v29 + 8) = 1;
    v30 = (v21 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringName);
    *v30 = 0;
    v30[1] = 0;

    _s11DeletedNodeCMa_0(0);
    v31 = swift_dynamicCastClass();

    if (v31)
    {

      return 0;
    }

    return v21;
  }

  result = sub_1AF0D3F10(a1);
  __break(1u);
  return result;
}

uint64_t sub_1AF3FD1BC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v39[6] = a2;
  v8 = sub_1AFDFC318();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v39[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF449890(0, &qword_1ED72DF30, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v39[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v39[-1] - v16;
  if (!a1)
  {
    return 0;
  }

  v18 = *a3;
  if (*(v18 + 16) && (v19 = sub_1AF0D3F10(a1), (v20 & 1) != 0) && *(*(v18 + 56) + v19) != 1)
  {
    v35 = *a4;
    if (*(*a4 + 16) && (v36 = sub_1AF0D3F10(a1), (v37 & 1) != 0))
    {
      v23 = *(*(v35 + 56) + 8 * v36);
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    v38 = v4;
    type metadata accessor for _PlaceholderNode(0);
    v21 = swift_allocObject();
    v39[3] = type metadata accessor for AuthoringNode(0);
    v39[4] = &off_1EE801558;
    v39[0] = a1;
    sub_1AF441194(v39, v21 + OBJC_IVAR____TtC3VFX16_PlaceholderNode_oldNode);
    v22 = MEMORY[0x1E69E7CC0];
    v21[3] = 0;
    v21[4] = 0;
    v21[2] = v22;
    swift_retain_n();
    sub_1AFDFC308();
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v39);
    (*(v9 + 56))(v17, 1, 1, v8);
    v23 = swift_allocObject();
    v24 = v23 + OBJC_IVAR____TtC3VFX13AuthoringNode_position;
    *v24 = 0;
    *(v24 + 8) = 0;
    *(v24 + 16) = 1;
    v25 = v23 + OBJC_IVAR____TtC3VFX13AuthoringNode_size;
    *v25 = 0;
    *(v25 + 8) = 0;
    *(v25 + 16) = 1;
    v26 = v23 + OBJC_IVAR____TtC3VFX13AuthoringNode_zIndex;
    *v26 = 0;
    *(v26 + 8) = 1;
    v27 = (v23 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringName);
    *v27 = 0;
    v27[1] = 0;
    *(v23 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw) = v21;
    *(v23 + OBJC_IVAR____TtC3VFX13AuthoringNode_inputs) = MEMORY[0x1E69E7CC0];
    sub_1AF449A04(v17, v14, &qword_1ED72DF30, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1AF449890);
    v28 = *(v9 + 48);
    if (v28(v14, 1, v8) == 1)
    {
      sub_1AFDFC308();
      sub_1AF44832C(v17, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
      if (v28(v14, 1, v8) != 1)
      {
        sub_1AF44832C(v14, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
      }
    }

    else
    {
      sub_1AF44832C(v17, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
      (*(v9 + 32))(v11, v14, v8);
    }

    (*(v9 + 32))(v23 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v11, v8);
    (*(v9 + 24))(*(v23 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw) + OBJC_IVAR____TtC3VFX4Node_authoringID, v23 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v8);
    v29 = v23 + OBJC_IVAR____TtC3VFX13AuthoringNode_position;
    *v29 = 0;
    *(v29 + 8) = 0;
    *(v29 + 16) = 1;
    v30 = v23 + OBJC_IVAR____TtC3VFX13AuthoringNode_size;
    *v30 = 0;
    *(v30 + 8) = 0;
    *(v30 + 16) = 1;
    v31 = v23 + OBJC_IVAR____TtC3VFX13AuthoringNode_zIndex;
    *v31 = 0;
    *(v31 + 8) = 1;
    v32 = (v23 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringName);
    *v32 = 0;
    v32[1] = 0;
  }

  _s11DeletedNodeCMa_0(0);
  v33 = swift_dynamicCastClass();

  if (v33)
  {

    return 0;
  }

  return v23;
}

uint64_t sub_1AF3FD720(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v41 = a4;
  v8 = sub_1AFDFC318();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF449890(0, &qword_1ED72DF30, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v38 - v16;
  v42 = a1;
  if (!a1)
  {
    return 0;
  }

  v18 = *a3;
  if (*(v18 + 16) && (v19 = sub_1AF0D3F10(v42), (v20 & 1) != 0) && (*(*(v18 + 56) + v19) & 1) == 0)
  {
    if (*(*v41 + 16) && (sub_1AF0D3F10(v42), (v36 & 1) != 0))
    {
    }

    else
    {
      v37 = 1;
    }

    v43[0] = v37;
    sub_1AF44479C(0);
    type metadata accessor for AuthoringNode(0);

    swift_dynamicCast();
    v24 = v43[6];
  }

  else
  {
    v40 = a2;
    v41 = v4;
    type metadata accessor for _PlaceholderNode(0);
    v21 = swift_allocObject();
    v43[3] = type metadata accessor for AuthoringNode(0);
    v43[4] = &off_1EE801558;
    v43[0] = v42;
    sub_1AF441194(v43, &v21[OBJC_IVAR____TtC3VFX16_PlaceholderNode_oldNode]);
    v22 = MEMORY[0x1E69E7CC0];
    *(v21 + 3) = 0;
    *(v21 + 4) = 0;
    *(v21 + 2) = v22;
    v23 = OBJC_IVAR____TtC3VFX4Node_authoringID;
    swift_retain_n();
    v39 = v23;
    sub_1AFDFC308();
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v43);
    (*(v9 + 56))(v17, 1, 1, v8);
    v24 = swift_allocObject();
    v25 = v24 + OBJC_IVAR____TtC3VFX13AuthoringNode_position;
    *v25 = 0;
    *(v25 + 8) = 0;
    *(v25 + 16) = 1;
    v26 = v24 + OBJC_IVAR____TtC3VFX13AuthoringNode_size;
    *v26 = 0;
    *(v26 + 8) = 0;
    *(v26 + 16) = 1;
    v27 = v24 + OBJC_IVAR____TtC3VFX13AuthoringNode_zIndex;
    *v27 = 0;
    *(v27 + 8) = 1;
    v28 = (v24 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringName);
    *v28 = 0;
    v28[1] = 0;
    *(v24 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw) = v21;
    *(v24 + OBJC_IVAR____TtC3VFX13AuthoringNode_inputs) = v22;
    sub_1AF449A04(v17, v14, &qword_1ED72DF30, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1AF449890);
    v29 = *(v9 + 48);
    LODWORD(v23) = v29(v14, 1, v8);

    if (v23 == 1)
    {
      sub_1AFDFC308();
      sub_1AF44832C(v17, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
      if (v29(v14, 1, v8) != 1)
      {
        sub_1AF44832C(v14, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
      }
    }

    else
    {
      sub_1AF44832C(v17, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
      (*(v9 + 32))(v11, v14, v8);
    }

    (*(v9 + 32))(v24 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v11, v8);
    (*(v9 + 24))(&v21[v39], v24 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v8);

    v30 = v24 + OBJC_IVAR____TtC3VFX13AuthoringNode_position;
    *v30 = 0;
    *(v30 + 8) = 0;
    *(v30 + 16) = 1;
    v31 = v24 + OBJC_IVAR____TtC3VFX13AuthoringNode_size;
    *v31 = 0;
    *(v31 + 8) = 0;
    *(v31 + 16) = 1;
    v32 = v24 + OBJC_IVAR____TtC3VFX13AuthoringNode_zIndex;
    *v32 = 0;
    *(v32 + 8) = 1;
    v33 = (v24 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringName);
    *v33 = 0;
    v33[1] = 0;
  }

  _s11DeletedNodeCMa_0(0);
  v34 = swift_dynamicCastClass();

  if (v34)
  {

    return 0;
  }

  return v24;
}

unint64_t sub_1AF3FDCB4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v7 = sub_1AFDFC318();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v41 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF449890(0, &qword_1ED72DF30, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v37 - v14;
  v43 = a1;
  if (!a1)
  {
    return 0;
  }

  v39 = a2;
  v40 = v3;
  v16 = *a3;
  if (!*(v16 + 16) || (v17 = sub_1AF0D3F10(v43), (v18 & 1) == 0) || (*(*(v16 + 56) + v17) & 1) != 0)
  {
    type metadata accessor for _PlaceholderNode(0);
    v19 = swift_allocObject();
    v42[3] = type metadata accessor for AuthoringNode(0);
    v42[4] = &off_1EE801558;
    v42[0] = v43;
    sub_1AF441194(v42, &v19[OBJC_IVAR____TtC3VFX16_PlaceholderNode_oldNode]);
    v20 = MEMORY[0x1E69E7CC0];
    *(v19 + 3) = 0;
    *(v19 + 4) = 0;
    *(v19 + 2) = v20;
    v21 = OBJC_IVAR____TtC3VFX4Node_authoringID;
    swift_retain_n();
    v38 = v21;
    sub_1AFDFC308();
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v42);
    (*(v8 + 56))(v15, 1, 1, v7);
    v22 = swift_allocObject();
    v23 = v22 + OBJC_IVAR____TtC3VFX13AuthoringNode_position;
    *v23 = 0;
    *(v23 + 8) = 0;
    *(v23 + 16) = 1;
    v24 = v22 + OBJC_IVAR____TtC3VFX13AuthoringNode_size;
    *v24 = 0;
    *(v24 + 8) = 0;
    *(v24 + 16) = 1;
    v25 = v22 + OBJC_IVAR____TtC3VFX13AuthoringNode_zIndex;
    *v25 = 0;
    *(v25 + 8) = 1;
    v26 = (v22 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringName);
    *v26 = 0;
    v26[1] = 0;
    *(v22 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw) = v19;
    *(v22 + OBJC_IVAR____TtC3VFX13AuthoringNode_inputs) = v20;
    sub_1AF449A04(v15, v12, &qword_1ED72DF30, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1AF449890);
    v27 = *(v8 + 48);
    LODWORD(v21) = v27(v12, 1, v7);

    if (v21 == 1)
    {
      v28 = v41;
      sub_1AFDFC308();
      sub_1AF44832C(v15, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
      v29 = v27(v12, 1, v7);
      v30 = v28;
      if (v29 != 1)
      {
        sub_1AF44832C(v12, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
      }
    }

    else
    {
      sub_1AF44832C(v15, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
      v30 = v41;
      (*(v8 + 32))(v41, v12, v7);
    }

    (*(v8 + 32))(v22 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v30, v7);
    (*(v8 + 24))(&v19[v38], v22 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v7);

    v31 = v22 + OBJC_IVAR____TtC3VFX13AuthoringNode_position;
    *v31 = 0;
    *(v31 + 8) = 0;
    *(v31 + 16) = 1;
    v32 = v22 + OBJC_IVAR____TtC3VFX13AuthoringNode_size;
    *v32 = 0;
    *(v32 + 8) = 0;
    *(v32 + 16) = 1;
    v33 = v22 + OBJC_IVAR____TtC3VFX13AuthoringNode_zIndex;
    *v33 = 0;
    *(v33 + 8) = 1;
    v34 = (v22 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringName);
    *v34 = 0;
    v34[1] = 0;

    _s11DeletedNodeCMa_0(0);
    v35 = swift_dynamicCastClass();

    if (v35)
    {

      return 0;
    }

    return v22;
  }

  result = sub_1AF0D3F10(v43);
  __break(1u);
  return result;
}

uint64_t sub_1AF3FE1F8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v43 = a4;
  v8 = sub_1AFDFC318();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF449890(0, &qword_1ED72DF30, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v40 - v16;
  v44 = a1;
  if (!a1)
  {
    return 0;
  }

  v18 = *a3;
  if (*(v18 + 16) && (v19 = sub_1AF0D3F10(v44), (v20 & 1) != 0) && (*(*(v18 + 56) + v19) & 1) == 0)
  {
    v36 = *v43;
    v37 = *(*v43 + 16);
    if (v37)
    {
      v38 = sub_1AF0D3F10(v44);
      if (v39)
      {
        v37 = *(*(v36 + 56) + 8 * v38);
      }

      else
      {
        v37 = 0;
      }
    }

    v45[0] = v37;
    type metadata accessor for AuthoringNode(0);

    swift_dynamicCast();
    v24 = v45[6];
  }

  else
  {
    v42 = a2;
    v43 = v4;
    type metadata accessor for _PlaceholderNode(0);
    v21 = swift_allocObject();
    v45[3] = type metadata accessor for AuthoringNode(0);
    v45[4] = &off_1EE801558;
    v45[0] = v44;
    sub_1AF441194(v45, &v21[OBJC_IVAR____TtC3VFX16_PlaceholderNode_oldNode]);
    v22 = MEMORY[0x1E69E7CC0];
    *(v21 + 3) = 0;
    *(v21 + 4) = 0;
    *(v21 + 2) = v22;
    v23 = OBJC_IVAR____TtC3VFX4Node_authoringID;
    swift_retain_n();
    v41 = v23;
    sub_1AFDFC308();
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v45);
    (*(v9 + 56))(v17, 1, 1, v8);
    v24 = swift_allocObject();
    v25 = v24 + OBJC_IVAR____TtC3VFX13AuthoringNode_position;
    *v25 = 0;
    *(v25 + 8) = 0;
    *(v25 + 16) = 1;
    v26 = v24 + OBJC_IVAR____TtC3VFX13AuthoringNode_size;
    *v26 = 0;
    *(v26 + 8) = 0;
    *(v26 + 16) = 1;
    v27 = v24 + OBJC_IVAR____TtC3VFX13AuthoringNode_zIndex;
    *v27 = 0;
    *(v27 + 8) = 1;
    v28 = (v24 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringName);
    *v28 = 0;
    v28[1] = 0;
    *(v24 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw) = v21;
    *(v24 + OBJC_IVAR____TtC3VFX13AuthoringNode_inputs) = v22;
    sub_1AF449A04(v17, v14, &qword_1ED72DF30, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1AF449890);
    v29 = *(v9 + 48);
    LODWORD(v23) = v29(v14, 1, v8);

    if (v23 == 1)
    {
      sub_1AFDFC308();
      sub_1AF44832C(v17, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
      if (v29(v14, 1, v8) != 1)
      {
        sub_1AF44832C(v14, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
      }
    }

    else
    {
      sub_1AF44832C(v17, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
      (*(v9 + 32))(v11, v14, v8);
    }

    (*(v9 + 32))(v24 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v11, v8);
    (*(v9 + 24))(&v21[v41], v24 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v8);

    v30 = v24 + OBJC_IVAR____TtC3VFX13AuthoringNode_position;
    *v30 = 0;
    *(v30 + 8) = 0;
    *(v30 + 16) = 1;
    v31 = v24 + OBJC_IVAR____TtC3VFX13AuthoringNode_size;
    *v31 = 0;
    *(v31 + 8) = 0;
    *(v31 + 16) = 1;
    v32 = v24 + OBJC_IVAR____TtC3VFX13AuthoringNode_zIndex;
    *v32 = 0;
    *(v32 + 8) = 1;
    v33 = (v24 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringName);
    *v33 = 0;
    v33[1] = 0;
  }

  _s11DeletedNodeCMa_0(0);
  v34 = swift_dynamicCastClass();

  if (v34)
  {

    return 0;
  }

  return v24;
}

unint64_t sub_1AF3FE780(__objc2_class **a1, uint64_t a2, unint64_t a3, int a4, void *a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t *a11)
{
  v152 = a8;
  v153 = a7;
  v154 = a6;
  v149 = a4;
  v158 = a3;
  v12 = a2;
  v150 = a11;
  v151 = a9;
  v14 = sub_1AFDFC318();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v145 = &v122 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v144 = &v122 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v122 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v122 - v23;
  if ((v12 & 1) == 0)
  {
    goto LABEL_100;
  }

  if (*(*a5 + 16))
  {
    result = sub_1AF0D3F10(a1);
    if (v26)
    {
      return result;
    }

    sub_1AF0D3F10(a1);
    if (v27)
    {
      goto LABEL_14;
    }
  }

  else
  {
  }

  if (sub_1AF971360(a1, *a10) != 2)
  {
LABEL_14:
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v165 = *a10;
  *a10 = 0x8000000000000000;
  sub_1AF850FDC(1, a1, isUniquelyReferenced_nonNull_native);
  *a10 = v165;
  v29 = sub_1AF96D010(a1);
  v148 = a5;
  v137 = v14;
  v156 = a10;
  if (v29)
  {
    v30 = *(v15 + 16);
    v30(v24, a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v14);
    v30(v21, v24, v14);

    v31 = v153;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v31 = sub_1AF4276E0(0, v153[2] + 1, 1, v153, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
    }

    v33 = v31[2];
    v32 = v31[3];
    if (v33 >= v32 >> 1)
    {
      v31 = sub_1AF4276E0(v32 > 1, v33 + 1, 1, v31, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
    }

    v14 = v137;
    (*(v15 + 8))(v24, v137);
    v31[2] = v33 + 1;
    (*(v15 + 32))(v31 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v33, v21, v14);
    v165 = sub_1AF42B0F4(MEMORY[0x1E69E7CC0]);
    v166 = v34;
    sub_1AF412AA8(v152, v151, 1, v158, v149 & 1, v31, &v165);

    v36 = v148;
  }

  else
  {
    v36 = a5;
  }

  v37 = v158 >> 59;
  if (((v158 >> 59) & 2) != 0)
  {
    v38 = 0;
    v127 = 0;
    v126 = 0;
    v125 = 0;
    v124 = 0;
    v123 = 0;
  }

  else
  {
    ((*(a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw))->isa[3].info)(v164, v35);
    v38 = v164[0];
    v127 = v164[1];
    v126 = v164[2];
    v125 = v164[3];
    v124 = v164[4];
    v123 = v164[5];
  }

  v128 = a1;
  v39 = sub_1AF97228C();
  v40 = *(v39 + 16);
  v122 = v39;
  if (v40)
  {
    v41 = v15;
    v42 = 0;
    v135 = v37 & 2;
    v157 = v135 | (v158 >> 2) & 1;
    v147 = v39 + 32;
    v133 = v38 + 32;
    v131 = (v41 + 16);
    v130 = v41 + 8;
    v132 = v41;
    v129 = v41 + 32;
    v134 = v149 & 1;
    v136 = v38;
    v138 = v40;
    do
    {
      if (!*(v147 + 16 * v42))
      {
        goto LABEL_24;
      }

      v155 = *(v147 + 16 * v42);
      if (v38 && v42 < *(v38 + 16))
      {
        v43 = *(v133 + 8 * v42);
        sub_1AF4410A8(v43);
      }

      else
      {
        v43 = 0xA000000000000000;
      }

      if (v157)
      {
        if (v157 == 1)
        {
          v44 = sub_1AF9C5694(v43, v158 & 0xEFFFFFFFFFFFFFFBLL);
          sub_1AF441114(v43);
          if (v44)
          {
            goto LABEL_23;
          }
        }

        else
        {
          sub_1AF441114(v43);
        }
      }

      else
      {
        v45 = sub_1AF9C5694(v43, v158);
        sub_1AF441114(v43);
        if (!v45)
        {
          goto LABEL_23;
        }
      }

      v46 = v155;
      if (!*(*v36 + 16) || (sub_1AF0D3F10(v155), (v47 & 1) == 0))
      {
        if (!*(*v156 + 16))
        {
          v49 = v156;
LABEL_43:
          v50 = swift_isUniquelyReferenced_nonNull_native();
          *&v159 = *v49;
          v51 = v159;
          *v49 = 0x8000000000000000;
          v52 = sub_1AF0D3F10(v46);
          v54 = v53;
          v55 = *(v51 + 16) + ((v53 & 1) == 0);
          if (*(v51 + 24) >= v55)
          {
            if (v50)
            {
              goto LABEL_47;
            }

            v59 = v52;
            sub_1AF843F7C();
            v52 = v59;
            v57 = v159;
            if ((v54 & 1) == 0)
            {
              goto LABEL_50;
            }

LABEL_48:
            *(v57[7] + v52) = 1;
            v58 = v155;
          }

          else
          {
            sub_1AF82BC4C(v55, v50);
            v52 = sub_1AF0D3F10(v46);
            if ((v54 & 1) != (v56 & 1))
            {
              sub_1AFDFF1A8();
              __break(1u);

              while (1)
              {
                sub_1AF441284(v136, v127, v126, v125, v124, v123);

                swift_unexpectedError();
                __break(1u);
LABEL_100:
                sub_1AFDFE518();
                __break(1u);

                swift_isEscapingClosureAtFileLocation();

                swift_isEscapingClosureAtFileLocation();
              }
            }

LABEL_47:
            v57 = v159;
            if (v54)
            {
              goto LABEL_48;
            }

LABEL_50:
            v57[(v52 >> 6) + 8] |= 1 << v52;
            v58 = v155;
            *(v57[6] + 8 * v52) = v155;
            *(v57[7] + v52) = 1;
            ++v57[2];
          }

          *v49 = v57;

          if (sub_1AF96D010(v58))
          {
            v60 = *v131;
            v61 = v144;
            (*v131)(v144, v58 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v14);
            v60(v145, v61, v14);
            v62 = v153;

            v63 = v62;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v63 = sub_1AF4276E0(0, v62[2] + 1, 1, v62, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
            }

            v65 = v63[2];
            v64 = v63[3];
            if (v65 >= v64 >> 1)
            {
              v63 = sub_1AF4276E0(v64 > 1, v65 + 1, 1, v63, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
            }

            v66 = v132;
            (*(v132 + 8))(v144, v14);
            v63[2] = v65 + 1;
            (*(v66 + 32))(v63 + ((*(v66 + 80) + 32) & ~*(v66 + 80)) + *(v66 + 72) * v65, v145, v14);
            *&v159 = sub_1AF42B0F4(MEMORY[0x1E69E7CC0]);
            *(&v159 + 1) = v67;
            sub_1AF412AA8(v152, v151, 1, v158, v149 & 1, v63, &v159);

            v58 = v155;
          }

          else
          {
          }

          if (v135)
          {
            v70 = 0;
            v143 = 0;
            v142 = 0;
            v141 = 0;
            v140 = 0;
            v139 = 0;
          }

          else
          {
            info = (*(v58 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw))->isa[3].info;

            (info)(&v165, v69);
            v70 = v165;
            v143 = v166;
            v142 = v167;
            v141 = v168;
            v140 = v169;
            v139 = v170;
          }

          v71 = sub_1AF97228C();
          v72 = *(v71 + 16);
          if (v72)
          {
            v73 = 0;
            v146 = v70 + 32;
            v74 = 32;
            while (2)
            {
              v75 = *(v71 + v74);
              if (!v75)
              {
                goto LABEL_66;
              }

              if (v70 && v73 < *(v70 + 16))
              {
                v76 = *(v146 + 8 * v73);
                sub_1AF4410A8(v76);
              }

              else
              {
                v76 = 0xA000000000000000;
              }

              if (v157)
              {
                if (v157 == 1)
                {
                  v77 = sub_1AF9C5694(v76, v158 & 0xEFFFFFFFFFFFFFFBLL);
                  sub_1AF441114(v76);
                  if (v77)
                  {
                    goto LABEL_65;
                  }
                }

                else
                {
                  sub_1AF441114(v76);
                }
              }

              else
              {
                v78 = sub_1AF9C5694(v76, v158);
                sub_1AF441114(v76);
                if (!v78)
                {
LABEL_65:

LABEL_66:
                  ++v73;
                  v74 += 16;
                  if (v72 == v73)
                  {
                    goto LABEL_78;
                  }

                  continue;
                }
              }

              break;
            }

            sub_1AF3DAE80(v75, 1, v158, v149 & 1, v153, v152, v151, v156, v148, v150);
            goto LABEL_65;
          }

LABEL_78:

          sub_1AF441284(v70, v143, v142, v141, v140, v139);
          type metadata accessor for Node(0);
          type metadata accessor for AuthoringNode(0);
          if (swift_dynamicCastMetatype())
          {
            v79 = OBJC_IVAR____TtC3VFX13AuthoringNode_inputs;
            v80 = v155;

            v82 = v148;
            v83 = sub_1AF3D6B1C(v81, v156, v148, sub_1AF3FCC84);

            *(v80 + v79) = v83;
          }

          else
          {
            v82 = v148;
          }

          v84 = v153;
          v85 = swift_allocObject();
          v86 = v152;
          v87 = v151;
          *(v85 + 16) = v152;
          *(v85 + 24) = v87;
          v88 = v154;

          v89 = v158;
          sub_1AF4410E4(v158, sub_1AF4410A8);

          v90 = swift_allocObject();
          *(v90 + 16) = 1;
          *(v90 + 24) = v89;
          *(v90 + 32) = v134;
          *(v90 + 40) = v82;
          *(v90 + 48) = v88;
          *(v90 + 56) = v84;
          *(v90 + 64) = v86;
          v91 = v156;
          *(v90 + 72) = v87;
          *(v90 + 80) = v91;
          v92 = v150;
          *(v90 + 88) = v150;
          v93 = swift_allocObject();
          *(v93 + 16) = sub_1AF449D4C;
          *(v93 + 24) = v90;
          v94 = v155;
          v159 = __PAIR128__(v155, v88);
          v160 = v84;
          v161 = sub_1AF449D50;
          v162 = v93;
          v163 = v92;
          swift_bridgeObjectRetain_n();

          sub_1AF449CCC(&v159);

          swift_isEscapingClosureAtFileLocation();

          swift_isEscapingClosureAtFileLocation();

          v36 = v82;
          v95 = sub_1AF633A88(v94);
          v14 = v137;
          v38 = v136;
          v96 = v94;
          v40 = v138;
          if (v95)
          {
            v97 = v36[1];
            v98 = swift_isUniquelyReferenced_nonNull_native();
            v36[1] = v97;
            if ((v98 & 1) == 0)
            {
              v97 = sub_1AF422330(0, *(v97 + 2) + 1, 1, v97, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
              v36[1] = v97;
            }

            v100 = *(v97 + 2);
            v99 = *(v97 + 3);
            if (v100 >= v99 >> 1)
            {
              v97 = sub_1AF422330(v99 > 1, v100 + 1, 1, v97, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
              v36[1] = v97;
            }

            *(v97 + 2) = v100 + 1;
            v96 = v155;
            *&v97[8 * v100 + 32] = v155;
            v40 = v138;
          }

          v101 = v156;
          v102 = swift_isUniquelyReferenced_nonNull_native();
          *&v159 = *v101;
          *v101 = 0x8000000000000000;
          sub_1AF850FDC(0, v96, v102);
          *v101 = v159;

          goto LABEL_23;
        }

        sub_1AF0D3F10(v46);
        if ((v48 & 1) == 0)
        {
          v49 = v156;
          goto LABEL_43;
        }
      }

LABEL_23:

LABEL_24:
      ++v42;
    }

    while (v42 != v40);
  }

  sub_1AF441284(v38, v127, v126, v125, v124, v123);
  type metadata accessor for Node(0);
  type metadata accessor for AuthoringNode(0);
  if (swift_dynamicCastMetatype())
  {
    v103 = OBJC_IVAR____TtC3VFX13AuthoringNode_inputs;
    v104 = v128;

    v106 = v156;
    v107 = sub_1AF3D6B1C(v105, v156, v36, sub_1AF3FCC84);

    *(v104 + v103) = v107;
  }

  else
  {
    v104 = v128;
    v106 = v156;
  }

  v108 = swift_allocObject();
  v109 = v152;
  v110 = v151;
  *(v108 + 16) = v152;
  *(v108 + 24) = v110;
  v111 = v154;

  v112 = v158;
  sub_1AF4410E4(v158, sub_1AF4410A8);

  v113 = swift_allocObject();
  *(v113 + 16) = 1;
  *(v113 + 24) = v112;
  *(v113 + 32) = v149 & 1;
  *(v113 + 40) = v36;
  *(v113 + 48) = v111;
  v114 = v153;
  *(v113 + 56) = v153;
  *(v113 + 64) = v109;
  *(v113 + 72) = v110;
  *(v113 + 80) = v106;
  v115 = v150;
  *(v113 + 88) = v150;
  v116 = swift_allocObject();
  *(v116 + 16) = sub_1AF449D4C;
  *(v116 + 24) = v113;
  *&v159 = v111;
  *(&v159 + 1) = v104;
  v160 = v114;
  v161 = sub_1AF449D50;
  v162 = v116;
  v163 = v115;

  sub_1AF449CCC(&v159);

  swift_isEscapingClosureAtFileLocation();

  swift_isEscapingClosureAtFileLocation();

  if (sub_1AF633A88(v104))
  {
    v117 = v36[1];
    v118 = swift_isUniquelyReferenced_nonNull_native();
    v36[1] = v117;
    if ((v118 & 1) == 0)
    {
      v117 = sub_1AF422330(0, *(v117 + 2) + 1, 1, v117, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
      v36[1] = v117;
    }

    v120 = *(v117 + 2);
    v119 = *(v117 + 3);
    if (v120 >= v119 >> 1)
    {
      v117 = sub_1AF422330(v119 > 1, v120 + 1, 1, v117, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
      v36[1] = v117;
    }

    *(v117 + 2) = v120 + 1;
    *&v117[8 * v120 + 32] = v104;
  }

  v121 = swift_isUniquelyReferenced_nonNull_native();
  *&v159 = *v106;
  *v106 = 0x8000000000000000;
  sub_1AF850FDC(0, v104, v121);
  *v106 = v159;
}

uint64_t sub_1AF3FFD3C(__objc2_class **a1, char a2, unint64_t a3, int a4, void *a5, void *a6, void *a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11)
{
  v176 = a8;
  v177 = a7;
  v178 = a4;
  v182 = a3;
  v160 = sub_1AFDFC318();
  v180 = *(v160 - 8);
  MEMORY[0x1EEE9AC00](v160);
  v157 = &v146 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v146 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v146 - v20;
  if ((a2 & 1) == 0)
  {
    goto LABEL_111;
  }

  v22 = *a5;
  if (!*(*a5 + 16))
  {

LABEL_9:
    v179 = a10;
    if (!*(*a10 + 16))
    {
      v30 = v179;
      goto LABEL_13;
    }

    sub_1AF0D3F10(a1);
    if ((v29 & 1) == 0)
    {
      v30 = v179;
LABEL_13:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v190[0] = *v30;
      *v30 = 0x8000000000000000;
      sub_1AF850FDC(1, a1, isUniquelyReferenced_nonNull_native);
      *v30 = v190[0];

      v153 = a1;
      v174 = a5;
      if (v178)
      {
        cache = (*a1)[7].cache;

        v33 = cache(1);
        a5 = v174;
        a1 = v33;
      }

      else
      {
      }

      v175 = a9;
      v34 = sub_1AF96D010(a1);
      v152 = a1;
      if (v34)
      {
        v35 = *(v180 + 16);
        v36 = v160;
        v35(v21, a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v160);
        v35(v18, v21, v36);
        v37 = v177;

        v38 = v37;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v38 = sub_1AF4276E0(0, v37[2] + 1, 1, v37, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
        }

        v40 = v38[2];
        v39 = v38[3];
        if (v40 >= v39 >> 1)
        {
          v38 = sub_1AF4276E0(v39 > 1, v40 + 1, 1, v38, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
        }

        v41 = v180;
        v42 = v21;
        v43 = v160;
        (*(v180 + 8))(v42, v160);
        v38[2] = v40 + 1;
        (*(v41 + 32))(v38 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v40, v18, v43);
        v44 = sub_1AF3FB9C8(v176, v175, 1, v182, v178 & 1, v38);
        v46 = v45;

        v47 = *(v46 + 16);
        if (v47)
        {
          v190[0] = MEMORY[0x1E69E7CC0];
          sub_1AFDFE368();
          v48 = 32;
          do
          {
            if (*(v44 + 16))
            {
              sub_1AF0D3F10(*(v46 + v48));
              if (v49)
              {
              }
            }

            sub_1AFDFE328();
            sub_1AFDFE398();
            sub_1AFDFE3A8();
            sub_1AFDFE348();
            v48 += 8;
            --v47;
          }

          while (v47);

          v50 = v190[0];
          a1 = v152;
        }

        else
        {

          v50 = MEMORY[0x1E69E7CC0];
        }

        type metadata accessor for AuthoringGraph(0);
        v51 = swift_allocObject();
        v51->cache = 0;
        v52 = MEMORY[0x1E69E7CC0];
        v51->vtable = MEMORY[0x1E69E7CC0];
        v51->info = 0;
        v51[1].isa = 0;
        v51[1].superclass = sub_1AF42B820(v52, sub_1AF44954C, sub_1AF449580, sub_1AF4495A0);
        sub_1AFDFC308();

        v51->vtable = v50;

        *(a1 + OBJC_IVAR____TtC3VFX21AuthoringSubGraphNode_graph) = v51;

        a5 = v174;
      }

      v53 = v179;
      v54 = v182 >> 59;
      if (((v182 >> 59) & 2) != 0)
      {
        v55 = 0;
        v56 = 0;
        v57 = 0;
        v151 = 0;
        v150 = 0;
        v149 = 0;
      }

      else
      {
        ((*(v153 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw))->isa[3].info)(v189);
        v55 = v189[0];
        v56 = v189[1];
        v57 = v189[2];
        v151 = v189[3];
        v150 = v189[4];
        v149 = v189[5];
      }

      v173 = a11;
      v58 = sub_1AF97228C();
      v170 = *(v58 + 16);
      if (!v170)
      {
        v161 = v178 & 1;
        goto LABEL_107;
      }

      v147 = v57;
      v148 = v56;
      v59 = 0;
      v158 = v54 & 2;
      v181 = v158 | (v182 >> 2) & 1;
      v168 = v58 + 32;
      v156 = v55 + 32;
      v155 = (v180 + 16);
      v154 = (v180 + 8);
      v172 = a6;
      v159 = v55;
      v161 = v178 & 1;
      v167 = v58;
      while (1)
      {
        v180 = *(v168 + 16 * v59);
        if (!v180)
        {
          goto LABEL_37;
        }

        if (v55 && v59 < *(v55 + 16))
        {
          v60 = *(v156 + 8 * v59);
          sub_1AF4410A8(v60);
        }

        else
        {
          v60 = 0xA000000000000000;
        }

        if (v181)
        {
          if (v181 == 1)
          {
            v61 = sub_1AF9C5694(v60, v182 & 0xEFFFFFFFFFFFFFFBLL);
            sub_1AF441114(v60);
            if (v61)
            {
              goto LABEL_36;
            }
          }

          else
          {
            sub_1AF441114(v60);
          }
        }

        else
        {
          v62 = sub_1AF9C5694(v60, v182);
          sub_1AF441114(v60);
          if (!v62)
          {
            goto LABEL_36;
          }
        }

        if (!*(*a5 + 16) || (sub_1AF0D3F10(v180), (v63 & 1) == 0))
        {
          if (*(*v53 + 16))
          {
            v64 = v180;
            sub_1AF0D3F10(v180);
            if (v65)
            {
              break;
            }
          }

          else
          {
            v64 = v180;
          }

          v66 = swift_isUniquelyReferenced_nonNull_native();
          *&v183 = *v53;
          v67 = v183;
          *v53 = 0x8000000000000000;
          v68 = sub_1AF0D3F10(v64);
          v70 = v69;
          v71 = *(v67 + 16) + ((v69 & 1) == 0);
          if (*(v67 + 24) >= v71)
          {
            if (v66)
            {
              goto LABEL_60;
            }

            v74 = v68;
            sub_1AF843F7C();
            v68 = v74;
            v53 = v179;
            v73 = v183;
            if ((v70 & 1) == 0)
            {
              goto LABEL_63;
            }

LABEL_61:
            *(v73[7] + v68) = 1;
          }

          else
          {
            sub_1AF82BC4C(v71, v66);
            v68 = sub_1AF0D3F10(v64);
            if ((v70 & 1) != (v72 & 1))
            {
              sub_1AFDFF1A8();
              __break(1u);
              break;
            }

LABEL_60:
            v73 = v183;
            if (v70)
            {
              goto LABEL_61;
            }

LABEL_63:
            v73[(v68 >> 6) + 8] |= 1 << v68;
            *(v73[6] + 8 * v68) = v64;
            *(v73[7] + v68) = 1;
            ++v73[2];
          }

          *v53 = v73;

          if (v178)
          {
            v75 = *(*v64 + 296);

            v76 = v75(1);
          }

          else
          {

            v76 = v64;
          }

          v77 = sub_1AF96D010(v76);
          v169 = v76;
          if (v77)
          {
            v78 = v76 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID;
            v79 = v157;
            v80 = v160;
            (*v155)(v157, v78, v160);
            v81 = sub_1AF3D88AC(v79, v177);
            (*v154)(v79, v80);
            v82 = sub_1AF3FB9C8(v176, v175, 1, v182, v178 & 1, v81);
            v84 = v83;

            v85 = *(v84 + 16);
            v86 = MEMORY[0x1E69E7CC0];
            if (v85)
            {
              *&v183 = MEMORY[0x1E69E7CC0];
              sub_1AFDFE368();
              v87 = 32;
              do
              {
                if (*(v82 + 16))
                {
                  sub_1AF0D3F10(*(v84 + v87));
                  if (v88)
                  {
                  }
                }

                sub_1AFDFE328();
                sub_1AFDFE398();
                sub_1AFDFE3A8();
                sub_1AFDFE348();
                v87 += 8;
                --v85;
              }

              while (v85);

              v89 = v183;
              v90 = MEMORY[0x1E69E7CC0];
            }

            else
            {

              v90 = v86;
              v89 = v86;
            }

            type metadata accessor for AuthoringGraph(0);
            v91 = swift_allocObject();
            v91->cache = 0;
            v91->vtable = v90;
            v91->info = 0;
            v91[1].isa = 0;
            v91[1].superclass = sub_1AF42B820(v90, sub_1AF44954C, sub_1AF449580, sub_1AF4495A0);
            sub_1AFDFC308();

            v91->vtable = v89;

            *(v169 + OBJC_IVAR____TtC3VFX21AuthoringSubGraphNode_graph) = v91;

            v64 = v180;
          }

          if (v158)
          {
            v94 = 0;
            v166 = 0;
            v165 = 0;
            v164 = 0;
            v163 = 0;
            v162 = 0;
          }

          else
          {
            v92 = *(**(v64 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw) + 152);

            v92(v190, v93);
            v94 = v190[0];
            v166 = v190[1];
            v165 = v190[2];
            v164 = v190[3];
            v163 = v190[4];
            v162 = v190[5];
          }

          v95 = sub_1AF97228C();
          v96 = *(v95 + 16);
          if (v96)
          {
            v97 = 0;
            v171 = v94 + 32;
            v98 = 32;
            while (2)
            {
              v99 = *(v95 + v98);
              if (!v99)
              {
                goto LABEL_83;
              }

              if (v94 && v97 < *(v94 + 16))
              {
                v100 = *(v171 + 8 * v97);
                sub_1AF4410A8(v100);
              }

              else
              {
                v100 = 0xA000000000000000;
              }

              if (v181)
              {
                if (v181 != 1)
                {
                  sub_1AF441114(v100);
                  goto LABEL_96;
                }

                v101 = sub_1AF9C5694(v100, v182 & 0xEFFFFFFFFFFFFFFBLL);
                sub_1AF441114(v100);
                if (!v101)
                {
LABEL_96:
                  sub_1AF3DBA8C(v99, 1, v182, v178 & 1, v177, v176, v175, v179, v174, v173);
                }
              }

              else
              {
                v102 = sub_1AF9C5694(v100, v182);
                sub_1AF441114(v100);
                if (v102)
                {
                  goto LABEL_96;
                }
              }

LABEL_83:
              ++v97;
              v98 += 16;
              if (v96 == v97)
              {
                break;
              }

              continue;
            }
          }

          v171 = v59;

          sub_1AF441284(v94, v166, v165, v164, v163, v162);
          v103 = OBJC_IVAR____TtC3VFX13AuthoringNode_inputs;
          v104 = v169;

          v106 = v179;
          v107 = v174;
          v108 = sub_1AF3D6B1C(v105, v179, v174, sub_1AF3FD1BC);

          *(v104 + v103) = v108;
          v109 = v106;

          v110 = swift_allocObject();
          v111 = v176;
          v112 = v175;
          *(v110 + 16) = v176;
          *(v110 + 24) = v112;
          v113 = v172;

          v114 = v182;
          sub_1AF4410E4(v182, sub_1AF4410A8);

          v115 = swift_allocObject();
          *(v115 + 16) = 1;
          *(v115 + 24) = v114;
          *(v115 + 32) = v161;
          *(v115 + 40) = v107;
          *(v115 + 48) = v113;
          v116 = v177;
          *(v115 + 56) = v177;
          *(v115 + 64) = v111;
          *(v115 + 72) = v112;
          *(v115 + 80) = v109;
          v117 = v173;
          *(v115 + 88) = v173;
          v118 = swift_allocObject();
          *(v118 + 16) = sub_1AF449D9C;
          *(v118 + 24) = v115;
          *&v183 = v113;
          *(&v183 + 1) = v104;
          v184 = v116;
          v185 = sub_1AF449D48;
          v186 = v118;
          v187 = v117;
          swift_bridgeObjectRetain_n();

          sub_1AF449DC0(&v183, &v188);

          swift_isEscapingClosureAtFileLocation();

          swift_isEscapingClosureAtFileLocation();

          v119 = swift_retain_n();
          a5 = v107;
          if (sub_1AF633A48(v119, v180))
          {

            v55 = v159;
            v120 = v180;
            a6 = v113;
            v59 = v171;
          }

          else
          {
            v121 = v107[1];
            v122 = swift_isUniquelyReferenced_nonNull_native();
            v107[1] = v121;
            v55 = v159;
            a6 = v113;
            if ((v122 & 1) == 0)
            {
              v121 = sub_1AF422330(0, *(v121 + 2) + 1, 1, v121, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
              a5[1] = v121;
            }

            v59 = v171;
            v124 = *(v121 + 2);
            v123 = *(v121 + 3);
            if (v124 >= v123 >> 1)
            {
              v128 = sub_1AF422330(v123 > 1, v124 + 1, 1, v121, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
              v174[1] = v128;
            }

            v125 = v174;
            v126 = v174[1];
            *(v126 + 16) = v124 + 1;
            a5 = v125;
            v120 = v180;
            *(v126 + 8 * v124 + 32) = v180;
          }

          v53 = v179;

          v127 = swift_isUniquelyReferenced_nonNull_native();
          *&v183 = *v53;
          *v53 = 0x8000000000000000;
          sub_1AF850FDC(0, v120, v127);
          *v53 = v183;
        }

LABEL_36:

LABEL_37:
        if (++v59 == v170)
        {
          v56 = v148;
          v57 = v147;
LABEL_107:

          sub_1AF441284(v55, v56, v57, v151, v150, v149);
          v129 = OBJC_IVAR____TtC3VFX13AuthoringNode_inputs;
          v130 = v152;

          v132 = v179;
          v133 = sub_1AF3D6B1C(v131, v179, a5, sub_1AF3FD1BC);

          *(v130 + v129) = v133;

          v134 = swift_allocObject();
          v135 = v176;
          v136 = v175;
          *(v134 + 16) = v176;
          *(v134 + 24) = v136;

          v137 = v182;
          sub_1AF4410E4(v182, sub_1AF4410A8);

          v138 = swift_allocObject();
          *(v138 + 16) = 1;
          *(v138 + 24) = v137;
          *(v138 + 32) = v161;
          *(v138 + 40) = a5;
          *(v138 + 48) = a6;
          v139 = v177;
          *(v138 + 56) = v177;
          *(v138 + 64) = v135;
          *(v138 + 72) = v136;
          *(v138 + 80) = v132;
          v140 = v173;
          *(v138 + 88) = v173;
          v141 = swift_allocObject();
          *(v141 + 16) = sub_1AF449D9C;
          *(v141 + 24) = v138;
          *&v183 = a6;
          *(&v183 + 1) = v130;
          v184 = v139;
          v185 = sub_1AF449D48;
          v186 = v141;
          v187 = v140;

          sub_1AF449DC0(&v183, &v188);

          v25 = v188;
          swift_isEscapingClosureAtFileLocation();

          swift_isEscapingClosureAtFileLocation();

          v143 = v153;
          sub_1AF3D8F00(v142, v153, sub_1AF633A48, sub_1AF6B761C, sub_1AF843E0C);

          v144 = swift_isUniquelyReferenced_nonNull_native();
          *&v183 = *v132;
          *v132 = 0x8000000000000000;
          sub_1AF850FDC(0, v143, v144);
          *v132 = v183;

          goto LABEL_108;
        }
      }
    }

LABEL_111:
    sub_1AFDFE518();
    __break(1u);

    swift_isEscapingClosureAtFileLocation();

    swift_isEscapingClosureAtFileLocation();
    while (1)
    {

      swift_unexpectedError();
      __break(1u);

      swift_isEscapingClosureAtFileLocation();

      swift_isEscapingClosureAtFileLocation();

      sub_1AF441284(v159, v148, v147, v151, v150, v149);
    }
  }

  v23 = sub_1AF0D3F10(a1);
  if ((v24 & 1) == 0)
  {
    v26 = *(v22 + 16);

    if (v26)
    {
      v27 = sub_1AF0D3F10(a1);
      if (v28)
      {
        v25 = *(*(v22 + 56) + 8 * v27);

LABEL_108:

        return v25;
      }
    }

    goto LABEL_9;
  }

  v25 = *(*(v22 + 56) + 8 * v23);

  return v25;
}

unint64_t sub_1AF401544(uint64_t a1, uint64_t a2, unint64_t a3, int a4, const char *a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11)
{
  v167 = a8;
  v168 = a7;
  v164 = a4;
  v172 = a3;
  v13 = a2;
  v165 = a11;
  v15 = a10;
  v166 = a9;
  v151 = sub_1AFDFC318();
  v16 = *(v151 - 8);
  MEMORY[0x1EEE9AC00](v151);
  v149 = &v136 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v136 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v136 - v22;
  if ((v13 & 1) == 0)
  {
    sub_1AFDFE518();
    __break(1u);
LABEL_115:
    sub_1AFDFF1A8();
    __break(1u);
LABEL_116:

    while (1)
    {
LABEL_111:
      sub_1AF441284(v150, v141, v140, v139, v138, v137);
LABEL_112:

      swift_unexpectedError();
      __break(1u);
LABEL_113:

      swift_isEscapingClosureAtFileLocation();

      swift_isEscapingClosureAtFileLocation();
    }
  }

  if (*(*a5 + 16))
  {
    result = sub_1AF0D3F10(a1);
    if (v25)
    {
      return result;
    }

    sub_1AF0D3F10(a1);
    if (v26)
    {
      goto LABEL_9;
    }
  }

  else
  {
  }

  if (*(*a10 + 16))
  {
    sub_1AF0D3F10(a1);
    if (v27)
    {
LABEL_9:
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v179 = *a10;
  *a10 = 0x8000000000000000;
  sub_1AF850FDC(1, a1, isUniquelyReferenced_nonNull_native);
  *a10 = v179;

  v29 = sub_1AF96CD1C(a1);
  v169 = a5;
  if (v29)
  {
    v30 = *(v16 + 16);
    v31 = v151;
    v30(v23, a1 + OBJC_IVAR____TtC3VFX4Node_authoringID, v151);
    v30(v20, v23, v31);

    v32 = v168;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = sub_1AF4276E0(0, v168[2] + 1, 1, v168, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
    }

    v34 = v32[2];
    v33 = v32[3];
    if (v34 >= v33 >> 1)
    {
      v32 = sub_1AF4276E0(v33 > 1, v34 + 1, 1, v32, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
    }

    v35 = v23;
    v36 = v151;
    (*(v16 + 8))(v35, v151);
    v32[2] = v34 + 1;
    (*(v16 + 32))(v32 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v34, v20, v36);
    v179 = sub_1AF42B0F4(MEMORY[0x1E69E7CC0]);
    v180 = v37;
    v38 = 0;
    sub_1AF412D4C(v167, v166, 1, v172, v164 & 1, v32, &v179);

    a5 = v169;
  }

  else
  {

    v38 = 0;
  }

  v171 = v172 >> 59;
  if (((v172 >> 59) & 2) != 0)
  {
    v150 = 0;
    v141 = 0;
    v140 = 0;
    v139 = 0;
    v138 = 0;
    v137 = 0;
  }

  else
  {
    (*(*a1 + 152))(v178, v39);
    v150 = v178[0];
    v141 = v178[1];
    v140 = v178[2];
    v139 = v178[3];
    v138 = v178[4];
    v137 = v178[5];
  }

  v142 = a1;
  v40 = *(a1 + 16);
  v41 = *(v40 + 16);
  v42 = MEMORY[0x1E69E7CC0];
  v158 = a6;
  v163 = a10;
  if (v41)
  {
    v170 = v16;
    v159 = 0;
    v179 = MEMORY[0x1E69E7CC0];

    sub_1AFC05E2C(0, v41, 0);
    v43 = 0;
    v42 = v179;
    v44 = v179[2];
    v45 = 2 * v44;
    do
    {
      v46 = *(v40 + v43 * 8 + 32);
      v47 = *(v40 + v43 * 8 + 40);
      v179 = v42;
      v48 = v42[3];
      v49 = v44 + 1;

      if (v44 >= v48 >> 1)
      {
        sub_1AFC05E2C(v48 > 1, v49, 1);
        v42 = v179;
      }

      v42[2] = v49;
      v50 = &v42[v45 + v43];
      v50[4] = v46;
      v50[5] = v47;
      v43 += 2;
      ++v44;
      --v41;
    }

    while (v41);

    v15 = v163;
    a5 = v169;
    v38 = v159;
    v16 = v170;
  }

  v51 = v42[2];
  v52 = v150;
  if (v51)
  {
    v53 = 0;
    v147 = v171 & 2;
    v160 = v147 | (v172 >> 2) & 1;
    v161 = v42 + 4;
    v145 = v150 + 32;
    v144 = (v16 + 16);
    v143 = (v16 + 8);
    v146 = v164 & 1;
    v152 = v42;
    v148 = v51;
    do
    {
      if (!v161[2 * v53])
      {
        goto LABEL_31;
      }

      v170 = v161[2 * v53];
      if (v52 && v53 < *(v52 + 16))
      {
        v54 = *(v145 + 8 * v53);
        sub_1AF4410A8(v54);
      }

      else
      {
        v54 = 0xA000000000000000;
      }

      v162 = v53;
      if (v160)
      {
        if (v160 == 1)
        {
          v55 = sub_1AF9C5694(v54, v172 & 0xEFFFFFFFFFFFFFFBLL);
          sub_1AF441114(v54);
          if (v55)
          {
            goto LABEL_30;
          }
        }

        else
        {
          sub_1AF441114(v54);
        }
      }

      else
      {
        v56 = sub_1AF9C5694(v54, v172);
        sub_1AF441114(v54);
        if (!v56)
        {
          goto LABEL_30;
        }
      }

      v57 = v170;
      if (!*(*a5 + 16) || (sub_1AF0D3F10(v170), (v58 & 1) == 0))
      {
        if (!*(*v15 + 16) || (sub_1AF0D3F10(v57), (v59 & 1) == 0))
        {
          v60 = swift_isUniquelyReferenced_nonNull_native();
          *&v173 = *v15;
          v61 = v173;
          *v15 = 0x8000000000000000;
          v62 = sub_1AF0D3F10(v57);
          v64 = v63;
          v65 = *(v61 + 16) + ((v63 & 1) == 0);
          v66 = v160;
          if (*(v61 + 24) >= v65)
          {
            if (v60)
            {
              goto LABEL_52;
            }

            v70 = v38;
            v71 = v62;
            sub_1AF843F7C();
            v62 = v71;
            v38 = v70;
            v68 = v173;
            if ((v64 & 1) == 0)
            {
              goto LABEL_55;
            }

LABEL_53:
            *(v68[7] + v62) = 1;
            v69 = v170;
          }

          else
          {
            sub_1AF82BC4C(v65, v60);
            v62 = sub_1AF0D3F10(v57);
            if ((v64 & 1) != (v67 & 1))
            {
              goto LABEL_115;
            }

LABEL_52:
            v68 = v173;
            if (v64)
            {
              goto LABEL_53;
            }

LABEL_55:
            v68[(v62 >> 6) + 8] |= 1 << v62;
            v69 = v170;
            *(v68[6] + 8 * v62) = v170;
            *(v68[7] + v62) = 1;
            ++v68[2];
          }

          *v15 = v68;

          if (sub_1AF96CD1C(v69))
          {
            v72 = v149;
            v73 = v151;
            (*v144)(v149, v69 + OBJC_IVAR____TtC3VFX4Node_authoringID, v151);

            v74 = sub_1AF3D88AC(v72, v168);
            (*v143)(v72, v73);
            v75 = MEMORY[0x1E69E7CC0];
            *&v173 = sub_1AF42B0F4(MEMORY[0x1E69E7CC0]);
            *(&v173 + 1) = v76;
            sub_1AF412D4C(v167, v166, 1, v172, v164 & 1, v74, &v173);
            if (v38)
            {
              goto LABEL_116;
            }

            v69 = v170;
          }

          else
          {

            v75 = MEMORY[0x1E69E7CC0];
          }

          v159 = v38;
          if (v147)
          {
            v78 = 0;
            v157 = 0;
            v156 = 0;
            v155 = 0;
            v154 = 0;
            v153 = 0;
          }

          else
          {
            (*(*v69 + 152))(&v179, v77);
            v78 = v179;
            v157 = v180;
            v156 = v181;
            v155 = v182;
            v154 = v183;
            v153 = v184;
          }

          v79 = *(v69 + 16);
          v80 = *(v79 + 16);
          v171 = v78;
          if (!v80)
          {
            v82 = v75;
            v38 = v159;
            v90 = *(v75 + 16);
            if (v90)
            {
              goto LABEL_71;
            }

            goto LABEL_87;
          }

          *&v173 = v75;

          sub_1AFC05E2C(0, v80, 0);
          v81 = 0;
          v82 = v173;
          v83 = *(v173 + 16);
          v84 = 16 * v83;
          do
          {
            v85 = *(v79 + v81 + 32);
            v86 = *(v79 + v81 + 40);
            *&v173 = v82;
            v87 = *(v82 + 24);
            v88 = v83 + 1;

            if (v83 >= v87 >> 1)
            {
              sub_1AFC05E2C(v87 > 1, v88, 1);
              v82 = v173;
            }

            *(v82 + 16) = v88;
            v89 = v82 + v84 + v81;
            *(v89 + 32) = v85;
            *(v89 + 40) = v86;
            v81 += 16;
            ++v83;
            --v80;
          }

          while (v80);

          v38 = v159;
          v66 = v160;
          v78 = v171;
          v90 = *(v82 + 16);
          if (!v90)
          {
LABEL_87:

            sub_1AF441284(v78, v157, v156, v155, v154, v153);
            type metadata accessor for Node(0);
            if (swift_dynamicCastMetatype())
            {
              v97 = v170;

              v99 = v163;
              v100 = sub_1AF3D72E8(v98, v163);

              *(v97 + 16) = v100;

              v101 = v168;
            }

            else
            {
              type metadata accessor for AuthoringNode(0);
              v99 = v163;
              v101 = v168;
              v97 = v170;
            }

            v102 = swift_allocObject();
            v103 = v167;
            v104 = v166;
            *(v102 + 16) = v167;
            *(v102 + 24) = v104;
            v105 = v158;

            v106 = v172;
            sub_1AF4410E4(v172, sub_1AF4410A8);

            v107 = swift_allocObject();
            *(v107 + 16) = 1;
            *(v107 + 24) = v106;
            *(v107 + 32) = v146;
            *(v107 + 40) = v169;
            *(v107 + 48) = v105;
            *(v107 + 56) = v101;
            *(v107 + 64) = v103;
            *(v107 + 72) = v104;
            *(v107 + 80) = v99;
            v108 = v99;
            v109 = v165;
            *(v107 + 88) = v165;
            v110 = swift_allocObject();
            *(v110 + 16) = sub_1AF449D7C;
            *(v110 + 24) = v107;
            *&v173 = v105;
            *(&v173 + 1) = v97;
            v174 = v101;
            v175 = sub_1AF449D50;
            v176 = v110;
            v177 = v109;
            swift_bridgeObjectRetain_n();

            sub_1AF449CCC(&v173);
            if (v38)
            {
              goto LABEL_113;
            }

            swift_isEscapingClosureAtFileLocation();

            swift_isEscapingClosureAtFileLocation();

            a5 = v169;
            v111 = sub_1AF633A88(v97);
            v52 = v150;
            v51 = v148;
            v15 = v108;
            if (v111)
            {
              v112 = *(a5 + 1);
              v113 = swift_isUniquelyReferenced_nonNull_native();
              *(a5 + 1) = v112;
              if ((v113 & 1) == 0)
              {
                v112 = sub_1AF422330(0, *(v112 + 2) + 1, 1, v112, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
                *(a5 + 1) = v112;
              }

              v115 = *(v112 + 2);
              v114 = *(v112 + 3);
              if (v115 >= v114 >> 1)
              {
                v112 = sub_1AF422330(v114 > 1, v115 + 1, 1, v112, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
                *(a5 + 1) = v112;
              }

              *(v112 + 2) = v115 + 1;
              v97 = v170;
              *&v112[8 * v115 + 32] = v170;
            }

            v116 = swift_isUniquelyReferenced_nonNull_native();
            *&v173 = *v108;
            *v108 = 0x8000000000000000;
            sub_1AF850FDC(0, v97, v116);
            *v108 = v173;

            goto LABEL_30;
          }

LABEL_71:
          v91 = 0;
          v159 = v78 + 32;
          v92 = 32;
          while (2)
          {
            v93 = *(v82 + v92);
            if (v93)
            {
              if (v78 && v91 < *(v78 + 16))
              {
                v94 = *(v159 + 8 * v91);
                sub_1AF4410A8(v94);
              }

              else
              {
                v94 = 0xA000000000000000;
              }

              if (v66)
              {
                if (v66 == 1)
                {
                  v95 = sub_1AF9C5694(v94, v172 & 0xEFFFFFFFFFFFFFFBLL);
                  sub_1AF441114(v94);
                  if (v95)
                  {
                    goto LABEL_74;
                  }
                }

                else
                {
                  sub_1AF441114(v94);
                }

LABEL_73:
                sub_1AF3DC99C(v93, 1, v172, v164 & 1, v168, v167, v166, v163, v169, v165);
                if (v38)
                {

                  sub_1AF441284(v171, v157, v156, v155, v154, v153);
                  goto LABEL_111;
                }
              }

              else
              {
                v96 = sub_1AF9C5694(v94, v172);
                sub_1AF441114(v94);
                if (v96)
                {
                  goto LABEL_73;
                }
              }

LABEL_74:
              v78 = v171;
            }

            ++v91;
            v92 += 16;
            if (v90 == v91)
            {
              goto LABEL_87;
            }

            continue;
          }
        }
      }

LABEL_30:

      v53 = v162;
LABEL_31:
      ++v53;
    }

    while (v53 != v51);
  }

  sub_1AF441284(v52, v141, v140, v139, v138, v137);
  type metadata accessor for Node(0);
  if (swift_dynamicCastMetatype())
  {
    v117 = v142;

    v119 = sub_1AF3D72E8(v118, v15);
    v159 = v38;

    *(v117 + 16) = v119;
  }

  else
  {
    type metadata accessor for AuthoringNode(0);
    v159 = v38;
    v117 = v142;
  }

  v120 = v158;
  v121 = swift_allocObject();
  v122 = v167;
  v123 = v166;
  *(v121 + 16) = v167;
  *(v121 + 24) = v123;

  v124 = v172;
  sub_1AF4410E4(v172, sub_1AF4410A8);

  v125 = swift_allocObject();
  *(v125 + 16) = 1;
  *(v125 + 24) = v124;
  *(v125 + 32) = v164 & 1;
  *(v125 + 40) = a5;
  *(v125 + 48) = v120;
  v126 = a5;
  v127 = v168;
  *(v125 + 56) = v168;
  *(v125 + 64) = v122;
  *(v125 + 72) = v123;
  *(v125 + 80) = v15;
  v128 = v165;
  *(v125 + 88) = v165;
  v129 = swift_allocObject();
  *(v129 + 16) = sub_1AF449D7C;
  *(v129 + 24) = v125;
  *&v173 = v120;
  *(&v173 + 1) = v117;
  v174 = v127;
  v175 = sub_1AF449D50;
  v176 = v129;
  v177 = v128;

  v130 = v159;
  sub_1AF449CCC(&v173);
  if (v130)
  {

    swift_isEscapingClosureAtFileLocation();

    swift_isEscapingClosureAtFileLocation();
    goto LABEL_112;
  }

  swift_isEscapingClosureAtFileLocation();

  swift_isEscapingClosureAtFileLocation();

  if (sub_1AF633A88(v117))
  {
    v131 = *(v126 + 1);
    v132 = swift_isUniquelyReferenced_nonNull_native();
    *(v126 + 1) = v131;
    if ((v132 & 1) == 0)
    {
      v131 = sub_1AF422330(0, *(v131 + 2) + 1, 1, v131, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
      *(v126 + 1) = v131;
    }

    v134 = *(v131 + 2);
    v133 = *(v131 + 3);
    if (v134 >= v133 >> 1)
    {
      v131 = sub_1AF422330(v133 > 1, v134 + 1, 1, v131, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
      *(v126 + 1) = v131;
    }

    *(v131 + 2) = v134 + 1;
    *&v131[8 * v134 + 32] = v117;
  }

  v135 = swift_isUniquelyReferenced_nonNull_native();
  *&v173 = *v15;
  *v15 = 0x8000000000000000;
  sub_1AF850FDC(0, v117, v135);
  *v15 = v173;
}

void *sub_1AF402B20(__objc2_class **a1, unint64_t a2, unint64_t a3, int a4, uint64_t *a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, char *a10, uint64_t a11)
{
  v185 = a8;
  v189 = a7;
  v187 = a6;
  v183 = a4;
  v191 = a3;
  v12 = a2;
  v162 = a1;
  v165 = sub_1AFDFC318();
  v13 = *(v165 - 8);
  MEMORY[0x1EEE9AC00](v165);
  v161 = &v149 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v149 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v149 - v19;
  if ((v12 & 1) == 0)
  {
    goto LABEL_126;
  }

  v21 = *a5;
  if (!*(*a5 + 16))
  {

LABEL_9:
    v28 = a10;
    if (*(*a10 + 16))
    {
      v29 = v162;
      sub_1AF0D3F10(v162);
      if (v30)
      {
LABEL_126:
        sub_1AFDFE518();
        __break(1u);

        swift_isEscapingClosureAtFileLocation();

        swift_isEscapingClosureAtFileLocation();

        while (1)
        {

          swift_unexpectedError();
          __break(1u);
LABEL_125:

          swift_isEscapingClosureAtFileLocation();

          swift_isEscapingClosureAtFileLocation();

          sub_1AF441284(v168, v156, v155, v154, v153, v152);
        }
      }
    }

    else
    {
      v29 = v162;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v200[0] = *a10;
    *a10 = 0x8000000000000000;
    sub_1AF850FDC(1, v29, isUniquelyReferenced_nonNull_native);
    *a10 = v200[0];

    sub_1AF44479C(0);
    v33 = v32;
    v180 = type metadata accessor for AuthoringNode(0);
    v177 = v33;
    LODWORD(v33) = v183 & (v33 == v180);
    v34 = swift_allocObject();
    v157 = v34;
    *(v34 + 16) = v29;
    v35 = (v34 + 16);
    v166 = v33;
    v150 = (v34 + 16);
    if (v33 == 1)
    {
      cache = (*v29)[7].cache;

      *v35 = cache(1);

      v29 = *v35;
    }

    else
    {
    }

    v184 = a9;
    v37 = sub_1AF96D010(v29);
    v186 = a10;
    if (v37)
    {
      v38 = *(v13 + 16);
      v39 = v29 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID;
      v40 = v165;
      v38(v20, v39, v165);
      v38(v17, v20, v40);
      v41 = v189;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v41 = sub_1AF4276E0(0, v189[2] + 1, 1, v189, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
      }

      v43 = v41[2];
      v42 = v41[3];
      if (v43 >= v42 >> 1)
      {
        v41 = sub_1AF4276E0(v42 > 1, v43 + 1, 1, v41, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
      }

      v44 = v165;
      (*(v13 + 8))(v20, v165);
      v41[2] = v43 + 1;
      v190 = v13;
      (*(v13 + 32))(v41 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v43, v17, v44);
      v45 = sub_1AF3FBC60(v185, v184, 1, v191, v183 & 1, v41);
      v47 = v46;

      if (v177 == v180)
      {
        v48 = *(v47 + 16);
        v49 = MEMORY[0x1E69E7CC0];
        if (v48)
        {
          v200[0] = MEMORY[0x1E69E7CC0];
          sub_1AFDFE368();
          v50 = 32;
          do
          {
            if (*(v45 + 16))
            {
              sub_1AF0D3F10(*(v47 + v50));
              if (v52)
              {
              }

              else
              {
                v51 = 1;
              }
            }

            else
            {
              v51 = 1;
            }

            *&v193 = v51;
            swift_dynamicCast();
            sub_1AFDFE328();
            sub_1AFDFE398();
            sub_1AFDFE3A8();
            sub_1AFDFE348();
            v50 += 8;
            --v48;
          }

          while (v48);

          v53 = v200[0];
          v49 = MEMORY[0x1E69E7CC0];
        }

        else
        {

          v53 = MEMORY[0x1E69E7CC0];
        }

        v54 = *v150;
        type metadata accessor for AuthoringGraph(0);
        v55 = swift_allocObject();
        v55[2] = 0;
        v55[3] = v49;
        v55[4] = 0;
        v55[5] = 0;

        v55[6] = sub_1AF42B820(v49, sub_1AF44954C, sub_1AF449580, sub_1AF4495A0);
        sub_1AFDFC308();

        v55[3] = v53;

        *(v54 + OBJC_IVAR____TtC3VFX21AuthoringSubGraphNode_graph) = v55;

        v28 = v186;
      }

      else
      {
      }

      v13 = v190;
    }

    v56 = v191 >> 59;
    v57 = v180;
    v58 = v13;
    if (((v191 >> 59) & 2) != 0)
    {
      v168 = 0;
      v156 = 0;
      v155 = 0;
      v154 = 0;
      v153 = 0;
      v152 = 0;
    }

    else
    {
      ((*(v162 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw))->isa[3].info)(v199);
      v168 = v199[0];
      v156 = v199[1];
      v155 = v199[2];
      v154 = v199[3];
      v153 = v199[4];
      v152 = v199[5];
    }

    v181 = a11;
    v59 = sub_1AF97228C();
    v60 = *(v59 + 16);
    v182 = a5;
    v151 = v59;
    if (!v60)
    {
      v167 = v183 & 1;
      v62 = v168;
      goto LABEL_119;
    }

    v61 = 0;
    v163 = v56 & 2;
    LODWORD(v190) = v163 | (v191 >> 2) & 1;
    v178 = v59 + 32;
    v62 = v168;
    v160 = v168 + 32;
    v159 = (v58 + 16);
    v158 = (v58 + 8);
    v63 = a5;
    v167 = v183 & 1;
    v164 = v60;
    while (1)
    {
      v188 = *(v178 + 16 * v61);
      if (!v188)
      {
        goto LABEL_42;
      }

      v179 = v61;
      if (v62 && v61 < *(v62 + 16))
      {
        v64 = *(v160 + 8 * v61);
        sub_1AF4410A8(v64);
      }

      else
      {
        v64 = 0xA000000000000000;
      }

      if (v190)
      {
        if (v190 == 1)
        {
          v65 = sub_1AF9C5694(v64, v191 & 0xEFFFFFFFFFFFFFFBLL);
          sub_1AF441114(v64);
          if (v65)
          {
            goto LABEL_41;
          }
        }

        else
        {
          sub_1AF441114(v64);
        }
      }

      else
      {
        v66 = sub_1AF9C5694(v64, v191);
        sub_1AF441114(v64);
        if (!v66)
        {
          goto LABEL_41;
        }
      }

      if (!*(*v63 + 16) || (sub_1AF0D3F10(v188), (v67 & 1) == 0))
      {
        if (*(*v28 + 16))
        {
          v68 = v188;
          sub_1AF0D3F10(v188);
          if (v69)
          {
            goto LABEL_126;
          }
        }

        else
        {
          v68 = v188;
        }

        v70 = swift_isUniquelyReferenced_nonNull_native();
        *&v193 = *v28;
        v71 = v193;
        *v28 = 0x8000000000000000;
        v72 = sub_1AF0D3F10(v68);
        v74 = v73;
        v75 = *(v71 + 16) + ((v73 & 1) == 0);
        if (*(v71 + 24) >= v75)
        {
          if (v70)
          {
            goto LABEL_65;
          }

          v78 = v72;
          sub_1AF843F7C();
          v72 = v78;
          v77 = v193;
          if ((v74 & 1) == 0)
          {
            goto LABEL_68;
          }

LABEL_66:
          *(v77[7] + v72) = 1;
        }

        else
        {
          sub_1AF82BC4C(v75, v70);
          v72 = sub_1AF0D3F10(v68);
          if ((v74 & 1) != (v76 & 1))
          {
            sub_1AFDFF1A8();
            __break(1u);
            goto LABEL_126;
          }

LABEL_65:
          v77 = v193;
          if (v74)
          {
            goto LABEL_66;
          }

LABEL_68:
          v77[(v72 >> 6) + 8] |= 1 << v72;
          *(v77[6] + 8 * v72) = v68;
          *(v77[7] + v72) = 1;
          ++v77[2];
        }

        *v28 = v77;

        v79 = swift_allocObject();
        v176 = v79;
        *(v79 + 16) = v68;
        v80 = (v79 + 16);
        if (v166)
        {
          v81 = *(*v68 + 296);

          *v80 = v81(1);

          v82 = *v80;
        }

        else
        {

          v82 = v68;
        }

        v83 = sub_1AF96D010(v82);
        v169 = v80;
        if (v83)
        {
          v84 = v82 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID;
          v85 = v161;
          v86 = v165;
          (*v159)(v161, v84, v165);
          v87 = sub_1AF3D88AC(v85, v189);
          (*v158)(v85, v86);
          v88 = sub_1AF3FBC60(v185, v184, 1, v191, v183 & 1, v87);
          v90 = v89;

          if (v177 == v57)
          {
            v91 = *(v90 + 16);
            if (v91)
            {
              *&v193 = MEMORY[0x1E69E7CC0];
              sub_1AFDFE368();
              v92 = 32;
              do
              {
                if (*(v88 + 16) && (sub_1AF0D3F10(*(v90 + v92)), (v94 & 1) != 0))
                {
                }

                else
                {
                  v93 = 1;
                }

                v192 = v93;
                swift_dynamicCast();
                sub_1AFDFE328();
                sub_1AFDFE398();
                sub_1AFDFE3A8();
                sub_1AFDFE348();
                v92 += 8;
                --v91;
              }

              while (v91);

              v95 = v193;
              v68 = v188;
              v96 = MEMORY[0x1E69E7CC0];
            }

            else
            {

              v96 = MEMORY[0x1E69E7CC0];
              v95 = MEMORY[0x1E69E7CC0];
            }

            v97 = *v169;
            type metadata accessor for AuthoringGraph(0);
            v98 = swift_allocObject();
            v98->cache = 0;
            v98->vtable = v96;
            v98->info = 0;
            v98[1].isa = 0;

            v98[1].superclass = sub_1AF42B820(v96, sub_1AF44954C, sub_1AF449580, sub_1AF4495A0);
            sub_1AFDFC308();

            v98->vtable = v95;

            *(v97 + OBJC_IVAR____TtC3VFX21AuthoringSubGraphNode_graph) = v98;
          }

          else
          {
          }
        }

        if (v163)
        {
          v101 = 0;
          v175 = 0;
          v174 = 0;
          v173 = 0;
          v172 = 0;
          v171 = 0;
        }

        else
        {
          v99 = *(**(v68 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw) + 152);

          v99(v200, v100);
          v101 = v200[0];
          v175 = v200[1];
          v174 = v200[2];
          v173 = v200[3];
          v172 = v200[4];
          v171 = v200[5];
        }

        v102 = sub_1AF97228C();
        v103 = *(v102 + 16);
        if (v103)
        {
          v104 = 0;
          v105 = 32;
          while (2)
          {
            v106 = *(v102 + v105);
            if (!v106)
            {
              goto LABEL_92;
            }

            if (v101 && v104 < *(v101 + 16))
            {
              v107 = *(v101 + 32 + 8 * v104);
              sub_1AF4410A8(v107);
            }

            else
            {
              v107 = 0xA000000000000000;
            }

            if (v190)
            {
              if (v190 != 1)
              {
                sub_1AF441114(v107);
                goto LABEL_105;
              }

              v108 = sub_1AF9C5694(v107, v191 & 0xEFFFFFFFFFFFFFFBLL);
              sub_1AF441114(v107);
              if (!v108)
              {
LABEL_105:
                sub_1AF3DDA58(v106, 1, v191, v183 & 1, v189, v185, v184, v186, v182, v181);
              }
            }

            else
            {
              v109 = sub_1AF9C5694(v107, v191);
              sub_1AF441114(v107);
              if (v109)
              {
                goto LABEL_105;
              }
            }

LABEL_92:
            ++v104;
            v105 += 16;
            if (v103 == v104)
            {
              break;
            }

            continue;
          }
        }

        v170 = 0;

        sub_1AF441284(v101, v175, v174, v173, v172, v171);
        v110 = v176;
        v111 = v186;
        v112 = v182;
        sub_1AF3FC79C(v176, v186, v182);
        v113 = swift_allocObject();
        v114 = v185;
        v115 = v184;
        *(v113 + 16) = v185;
        *(v113 + 24) = v115;
        v116 = v187;

        v117 = v191;
        sub_1AF4410E4(v191, sub_1AF4410A8);

        v118 = swift_allocObject();
        *(v118 + 16) = 1;
        *(v118 + 24) = v117;
        *(v118 + 32) = v167;
        *(v118 + 40) = v112;
        *(v118 + 48) = v116;
        v119 = v189;
        *(v118 + 56) = v189;
        *(v118 + 64) = v114;
        *(v118 + 72) = v115;
        *(v118 + 80) = v111;
        v120 = v181;
        *(v118 + 88) = v181;
        v121 = swift_allocObject();
        *(v121 + 16) = sub_1AF449D78;
        *(v121 + 24) = v118;
        v122 = *(v110 + 16);
        *&v193 = v116;
        *(&v193 + 1) = v122;
        v194 = v119;
        v195 = sub_1AF449D48;
        v196 = v121;
        v197 = v120;
        swift_bridgeObjectRetain_n();

        v123 = v170;
        sub_1AF449DC0(&v193, &v198);
        if (v123)
        {
          goto LABEL_125;
        }

        v124 = v198;
        swift_isEscapingClosureAtFileLocation();

        swift_isEscapingClosureAtFileLocation();

        v125 = swift_retain_n();
        v126 = sub_1AF633B74(v125, v188);
        v57 = v180;
        if (v126 == 1)
        {
          v127 = *(v112 + 8);
          v128 = swift_isUniquelyReferenced_nonNull_native();
          *(v112 + 8) = v127;
          v60 = v164;
          v28 = v186;
          if ((v128 & 1) == 0)
          {
            v127 = sub_1AF422330(0, *(v127 + 2) + 1, 1, v127, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
            *(v112 + 8) = v127;
          }

          v130 = *(v127 + 2);
          v129 = *(v127 + 3);
          if (v130 >= v129 >> 1)
          {
            *(v112 + 8) = sub_1AF422330(v129 > 1, v130 + 1, 1, v127, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
          }

          v63 = v112;
          v131 = *(v112 + 8);
          *(v131 + 16) = v130 + 1;
          *(v131 + 8 * v130 + 32) = v188;
          v62 = v168;
        }

        else
        {
          v63 = v112;
          v132 = v126;

          sub_1AF0DB74C(v132);
          v62 = v168;
          v60 = v164;
          v28 = v186;
        }

        if (v177 == v57)
        {
          *&v193 = v124;

          swift_dynamicCast();
        }

        v133 = swift_isUniquelyReferenced_nonNull_native();
        *&v193 = *v28;
        *v28 = 0x8000000000000000;
        sub_1AF850FDC(0, v188, v133);
        *v28 = v193;
      }

LABEL_41:

      v61 = v179;
LABEL_42:
      if (++v61 == v60)
      {
        a5 = v63;
LABEL_119:

        sub_1AF441284(v62, v156, v155, v154, v153, v152);
        sub_1AF3FC79C(v157, v28, a5);
        v134 = a5;
        v135 = swift_allocObject();
        v136 = v185;
        v137 = v184;
        *(v135 + 16) = v185;
        *(v135 + 24) = v137;
        v138 = v187;

        v139 = v191;
        sub_1AF4410E4(v191, sub_1AF4410A8);

        v140 = swift_allocObject();
        *(v140 + 16) = 1;
        *(v140 + 24) = v139;
        *(v140 + 32) = v167;
        *(v140 + 40) = v134;
        *(v140 + 48) = v138;
        v141 = v189;
        *(v140 + 56) = v189;
        *(v140 + 64) = v136;
        *(v140 + 72) = v137;
        *(v140 + 80) = v28;
        v142 = v181;
        *(v140 + 88) = v181;
        v143 = swift_allocObject();
        *(v143 + 16) = sub_1AF449D78;
        *(v143 + 24) = v140;
        v144 = *(v157 + 16);
        *&v193 = v138;
        *(&v193 + 1) = v144;
        v194 = v141;
        v195 = sub_1AF449D48;
        v196 = v143;
        v197 = v142;

        sub_1AF449DC0(&v193, &v198);

        v24 = v198;
        swift_isEscapingClosureAtFileLocation();

        swift_isEscapingClosureAtFileLocation();

        v146 = v162;
        sub_1AF3D9030(v145, v162, sub_1AF633B74, sub_1AF449DA4, sub_1AF6B761C, sub_1AF84466C);
        if (v177 == v57)
        {
          *&v193 = v24;

          swift_dynamicCast();
        }

        v147 = swift_isUniquelyReferenced_nonNull_native();
        *&v193 = *v28;
        *v28 = 0x8000000000000000;
        sub_1AF850FDC(0, v146, v147);
        *v28 = v193;

        goto LABEL_122;
      }
    }
  }

  v22 = sub_1AF0D3F10(v162);
  if ((v23 & 1) == 0)
  {
    v25 = *(v21 + 16);

    if (v25)
    {
      v26 = sub_1AF0D3F10(v162);
      if (v27)
      {
        v24 = *(*(v21 + 56) + 8 * v26);

LABEL_122:

        return v24;
      }
    }

    goto LABEL_9;
  }

  v24 = *(*(v21 + 56) + 8 * v22);

  return v24;
}

uint64_t sub_1AF404534@<X0>(__objc2_class **a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, int a4@<W3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, uint64_t a8@<X7>, __int128 *a9@<X8>, uint64_t a10, uint64_t *a11, uint64_t a12)
{
  v206 = a8;
  v207 = a7;
  v201 = a6;
  v202 = a4;
  v212 = a3;
  v13 = a2;
  v192 = sub_1AFDFC318();
  v210 = *(v192 - 8);
  MEMORY[0x1EEE9AC00](v192);
  v187 = &v176 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v176 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v176 - v21;
  if ((v13 & 1) == 0)
  {
    goto LABEL_114;
  }

  v23 = *a5;
  if (!*(*a5 + 16))
  {
    v183 = a9;

LABEL_9:
    v54 = a11;
    if (*(*a11 + 16))
    {
      sub_1AF0D3F10(a1);
      if (v55)
      {
        goto LABEL_114;
      }
    }

    v205 = a10;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v264 = *a11;
    *a11 = 0x8000000000000000;
    sub_1AF850FDC(1, a1, isUniquelyReferenced_nonNull_native);
    *a11 = v264;

    v57 = sub_1AF96CD1C(a1);
    v208 = a11;
    if (v57)
    {
      v58 = a5;
      v59 = *(v210 + 16);
      v60 = v192;
      v59(v22, a1 + OBJC_IVAR____TtC3VFX4Node_authoringID, v192);
      v59(v19, v22, v60);

      v61 = v207;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v61 = sub_1AF4276E0(0, v207[2] + 1, 1, v207, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
      }

      v63 = v61[2];
      v62 = v61[3];
      if (v63 >= v62 >> 1)
      {
        v61 = sub_1AF4276E0(v62 > 1, v63 + 1, 1, v61, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
      }

      v64 = v210;
      v65 = v22;
      v66 = v192;
      (*(v210 + 8))(v65, v192);
      v61[2] = v63 + 1;
      (*(v64 + 32))(v61 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v63, v19, v66);
      *&v264 = sub_1AF439808(MEMORY[0x1E69E7CC0]);
      *(&v264 + 1) = v67;
      v68 = 0;
      sub_1AF413434(v206, v205, 1, v212, v202 & 1, v61, &v264);

      v54 = v208;
      a5 = v58;
    }

    else
    {

      v68 = 0;
    }

    v70 = a5;
    v71 = v212 >> 59;
    if (((v212 >> 59) & 2) != 0)
    {
      v72 = 0;
      v180 = 0;
      v181 = 0;
      v178 = 0;
      v179 = 0;
      v177 = 0;
    }

    else
    {
      ((*a1)[3].info)(v262, v69);
      v72 = v262[0];
      v180 = v262[2];
      v181 = v262[1];
      v178 = v262[4];
      v179 = v262[3];
      v177 = v262[5];
    }

    v182 = a1;
    v73 = a1[2];
    cache = v73->cache;
    v75 = MEMORY[0x1E69E7CC0];
    v209 = v70;
    v193 = v72;
    if (cache)
    {
      v211 = v71;
      v199 = 0;
      *&v264 = MEMORY[0x1E69E7CC0];
      v213 = v73;

      sub_1AFC05E2C(0, cache, 0);
      v76 = v213;
      v77 = 0;
      v78 = v264;
      v79 = *(v264 + 16);
      v80 = 16 * v79;
      do
      {
        v81 = *(v76 + v77 + 32);
        v82 = *(v76 + v77 + 40);
        *&v264 = v78;
        v83 = *(v78 + 24);
        v84 = v79 + 1;

        if (v79 >= v83 >> 1)
        {
          sub_1AFC05E2C(v83 > 1, v84, 1);
          v78 = v264;
        }

        *(v78 + 16) = v84;
        v85 = v78 + v80 + v77;
        *(v85 + 32) = v81;
        *(v85 + 40) = v82;
        v77 += 16;
        ++v79;
        --cache;
        v76 = v213;
      }

      while (cache);

      v54 = v208;
      v86 = v209;
      v87 = v78;
      v68 = v199;
      v72 = v193;
      v75 = MEMORY[0x1E69E7CC0];
      LOBYTE(v71) = v211;
    }

    else
    {
      v87 = MEMORY[0x1E69E7CC0];
      v86 = v70;
    }

    v203 = a12;
    v88 = *(v87 + 16);
    v89 = v201;
    v176 = v87;
    if (!v88)
    {
LABEL_102:

      sub_1AF441284(v72, v181, v180, v179, v178, v177);
      sub_1AF448148(0);
      type metadata accessor for Node(0);
      if (swift_dynamicCastMetatype())
      {
        v158 = v182;

        v160 = sub_1AF3D72E8(v159, v54);
        v199 = v68;

        *(v158 + 16) = v160;

        v161 = v86;
      }

      else
      {
        type metadata accessor for AuthoringNode(0);
        v199 = v68;
        v161 = v86;
        v158 = v182;
      }

      v162 = swift_allocObject();
      v164 = v205;
      v163 = v206;
      *(v162 + 16) = v206;
      *(v162 + 24) = v164;

      v165 = v212;
      sub_1AF4410E4(v212, sub_1AF4410A8);

      v166 = swift_allocObject();
      *(v166 + 16) = 1;
      *(v166 + 24) = v165;
      *(v166 + 32) = v202 & 1;
      *(v166 + 40) = v161;
      *(v166 + 48) = v89;
      v167 = v207;
      *(v166 + 56) = v207;
      *(v166 + 64) = v163;
      *(v166 + 72) = v164;
      *(v166 + 80) = v54;
      v168 = v203;
      *(v166 + 88) = v203;
      v169 = v89;
      v170 = swift_allocObject();
      *(v170 + 16) = sub_1AF449D8C;
      *(v170 + 24) = v166;
      *&v222 = v169;
      *(&v222 + 1) = v158;
      *&v223 = v167;
      *(&v223 + 1) = sub_1AF449D50;
      *&v224 = v170;
      *(&v224 + 1) = v168;

      v171 = v199;
      sub_1AF449CCC(&v222);
      if (!v171)
      {

        swift_isEscapingClosureAtFileLocation();

        swift_isEscapingClosureAtFileLocation();

        *&v248[96] = v220;
        *&v248[112] = v221[0];
        *&v248[121] = *(v221 + 9);
        *&v248[32] = v216;
        *&v248[48] = v217;
        *&v248[64] = v218;
        *&v248[80] = v219;
        *v248 = v214;
        *&v248[16] = v215;
        v260 = v220;
        v261[0] = v221[0];
        *(v261 + 9) = *(v221 + 9);
        v256 = v216;
        v257 = v217;
        v259 = v219;
        v258 = v218;
        v255 = v215;
        v254 = v214;
        nullsub_106();
        v270 = v260;
        v271[0] = v261[0];
        *(v271 + 9) = *(v261 + 9);
        v266 = v256;
        v267 = v257;
        v268 = v258;
        v269 = v259;
        v264 = v254;
        v265 = v255;
        sub_1AF4495B8(v248, &v240, sub_1AF448148);
        sub_1AF3D8A74(&v264, v158);
        v172 = swift_isUniquelyReferenced_nonNull_native();
        *&v240 = *v54;
        *v54 = 0x8000000000000000;
        sub_1AF850FDC(0, v158, v172);
        *v54 = v240;

        v173 = v221[0];
        v49 = v183;
        v183[6] = v220;
        v49[7] = v173;
        *(v49 + 121) = *(v221 + 9);
        v174 = v217;
        v49[2] = v216;
        v49[3] = v174;
        v175 = v219;
        v49[4] = v218;
        v49[5] = v175;
        v53 = v214;
        v52 = v215;
        goto LABEL_107;
      }

LABEL_115:

      swift_isEscapingClosureAtFileLocation();

      swift_isEscapingClosureAtFileLocation();
      while (1)
      {

        swift_unexpectedError();
        __break(1u);
LABEL_111:

        swift_isEscapingClosureAtFileLocation();

        swift_isEscapingClosureAtFileLocation();

LABEL_109:
        sub_1AF441284(v193, v181, v180, v179, v178, v177);
      }
    }

    v90 = 0;
    v190 = v71 & 2;
    LODWORD(v211) = v190 | (v212 >> 2) & 1;
    v91 = v87 + 32;
    v185 = (v210 + 16);
    v186 = v72 + 32;
    v184 = (v210 + 8);
    v188 = v202 & 1;
    v191 = v88;
    v189 = v87 + 32;
    while (1)
    {
      v204 = *(v91 + 16 * v90);
      if (!v204)
      {
        goto LABEL_31;
      }

      v200 = v90;
      if (v72 && v90 < *(v72 + 16))
      {
        v92 = *(v186 + 8 * v90);
        sub_1AF4410A8(v92);
      }

      else
      {
        v92 = 0xA000000000000000;
      }

      if (v211)
      {
        if (v211 != 1)
        {
          sub_1AF441114(v92);
LABEL_44:
          if (!*(*v86 + 16) || (sub_1AF0D3F10(v204), (v95 & 1) == 0))
          {
            if (*(*v54 + 16))
            {
              v96 = v204;
              sub_1AF0D3F10(v204);
              if (v97)
              {
                goto LABEL_114;
              }
            }

            else
            {
              v96 = v204;
            }

            v98 = swift_isUniquelyReferenced_nonNull_native();
            *&v264 = *v54;
            v99 = v264;
            *v54 = 0x8000000000000000;
            v100 = sub_1AF0D3F10(v96);
            v102 = v101;
            v103 = *(v99 + 16) + ((v101 & 1) == 0);
            if (*(v99 + 24) >= v103)
            {
              if (v98)
              {
                goto LABEL_54;
              }

              v106 = v68;
              v107 = v100;
              sub_1AF843F7C();
              v100 = v107;
              v68 = v106;
              v105 = v264;
              if ((v102 & 1) == 0)
              {
                goto LABEL_57;
              }

LABEL_55:
              *(v105[7] + v100) = 1;
            }

            else
            {
              sub_1AF82BC4C(v103, v98);
              v100 = sub_1AF0D3F10(v96);
              if ((v102 & 1) != (v104 & 1))
              {
                sub_1AFDFF1A8();
                __break(1u);
LABEL_114:
                sub_1AFDFE518();
                __break(1u);
                goto LABEL_115;
              }

LABEL_54:
              v105 = v264;
              if (v102)
              {
                goto LABEL_55;
              }

LABEL_57:
              v105[(v100 >> 6) + 8] |= 1 << v100;
              *(v105[6] + 8 * v100) = v96;
              *(v105[7] + v100) = 1;
              ++v105[2];
            }

            *v54 = v105;

            v108 = v201;
            if (sub_1AF96CD1C(v96))
            {
              v109 = v187;
              v110 = v192;
              (*v185)(v187, v96 + OBJC_IVAR____TtC3VFX4Node_authoringID, v192);

              v111 = sub_1AF3D88AC(v109, v207);
              (*v184)(v109, v110);
              *&v264 = sub_1AF439808(v75);
              *(&v264 + 1) = v112;
              sub_1AF413434(v206, v205, 1, v212, v202 & 1, v111, &v264);
              if (v68)
              {

                goto LABEL_109;
              }

              v108 = v201;
              if (!v190)
              {
LABEL_61:
                (*(*v96 + 152))(v263, v113);
                v114 = v263[0];
                v197 = v263[2];
                v198 = v263[1];
                v195 = v263[4];
                v196 = v263[3];
                v194 = v263[5];
                goto LABEL_64;
              }
            }

            else
            {

              if (!v190)
              {
                goto LABEL_61;
              }
            }

            v114 = 0;
            v197 = 0;
            v198 = 0;
            v195 = 0;
            v196 = 0;
            v194 = 0;
LABEL_64:
            v115 = *(v96 + 16);
            v116 = *(v115 + 16);
            v210 = v114;
            if (!v116)
            {
              v118 = v75;
              v127 = *(v75 + 16);
              if (v127)
              {
                goto LABEL_72;
              }

              goto LABEL_89;
            }

            v199 = v68;
            *&v264 = v75;

            sub_1AFC05E2C(0, v116, 0);
            v117 = 0;
            v118 = v264;
            v119 = *(v264 + 16);
            v213 = 16 * v119;
            do
            {
              v120 = v115;
              v121 = v115 + v117;
              v122 = *(v115 + v117 + 32);
              v123 = *(v121 + 40);
              *&v264 = v118;
              v124 = *(v118 + 24);
              v125 = v119 + 1;

              if (v119 >= v124 >> 1)
              {
                sub_1AFC05E2C(v124 > 1, v125, 1);
                v118 = v264;
              }

              *(v118 + 16) = v125;
              v126 = v118 + v213 + v117;
              *(v126 + 32) = v122;
              *(v126 + 40) = v123;
              v117 += 16;
              ++v119;
              --v116;
              v115 = v120;
            }

            while (v116);

            v108 = v201;
            v68 = v199;
            v114 = v210;
            v127 = *(v118 + 16);
            if (!v127)
            {
LABEL_89:

              sub_1AF441284(v114, v198, v197, v196, v195, v194);
              sub_1AF448148(0);
              type metadata accessor for Node(0);
              if (swift_dynamicCastMetatype())
              {
                v134 = v204;

                v136 = v208;
                v137 = sub_1AF3D72E8(v135, v208);
                v199 = v68;

                *(v134 + 16) = v137;
                v108 = v201;

                v138 = v207;
              }

              else
              {
                type metadata accessor for AuthoringNode(0);
                v138 = v207;
                v136 = v208;
                v199 = v68;
                v134 = v204;
              }

              v139 = swift_allocObject();
              v141 = v205;
              v140 = v206;
              *(v139 + 16) = v206;
              *(v139 + 24) = v141;

              v142 = v212;
              sub_1AF4410E4(v212, sub_1AF4410A8);

              v143 = v108;
              v144 = swift_allocObject();
              *(v144 + 16) = 1;
              *(v144 + 24) = v142;
              *(v144 + 32) = v188;
              *(v144 + 40) = v209;
              *(v144 + 48) = v143;
              *(v144 + 56) = v138;
              *(v144 + 64) = v140;
              *(v144 + 72) = v141;
              *(v144 + 80) = v136;
              v145 = v203;
              *(v144 + 88) = v203;
              v146 = swift_allocObject();
              *(v146 + 16) = sub_1AF449D8C;
              *(v146 + 24) = v144;
              *&v249 = v143;
              *(&v249 + 1) = v134;
              v250 = v138;
              v251 = sub_1AF449D50;
              v252 = v146;
              v253 = v145;
              swift_bridgeObjectRetain_n();

              v68 = v199;
              sub_1AF449CCC(&v249);
              if (v68)
              {
                goto LABEL_111;
              }

              swift_isEscapingClosureAtFileLocation();

              swift_isEscapingClosureAtFileLocation();

              *&v248[96] = v270;
              *&v248[112] = v271[0];
              *&v248[121] = *(v271 + 9);
              *&v248[32] = v266;
              *&v248[48] = v267;
              *&v248[64] = v268;
              *&v248[80] = v269;
              *v248 = v264;
              *&v248[16] = v265;
              sub_1AF4495B8(v248, &v254, sub_1AF448148);
              sub_1AF4495B8(v248, &v254, sub_1AF448148);
              v230 = *v248;
              v231 = *&v248[8];
              v232 = *&v248[24];
              v233 = *&v248[40];
              v234 = *&v248[56];
              v235 = *&v248[72];
              v236 = *&v248[88];
              v237 = *&v248[104];
              v238 = *&v248[120];
              v239 = v248[136];
              v147 = v209;
              sub_1AF633BB4(&v230, v134, &v240);
              v260 = v246;
              v261[0] = v247[0];
              *(v261 + 9) = *(v247 + 9);
              v256 = v242;
              v257 = v243;
              v259 = v245;
              v258 = v244;
              v255 = v241;
              v254 = v240;
              if (sub_1AF448314(&v254) == 1)
              {
                v228 = v246;
                v229[0] = v247[0];
                *(v229 + 9) = *(v247 + 9);
                v224 = v242;
                v225 = v243;
                v226 = v244;
                v227 = v245;
                v222 = v240;
                v223 = v241;
                sub_1AF44832C(&v222, &qword_1EB638CB0, sub_1AF448148);
                v148 = v147[1];
                v149 = swift_isUniquelyReferenced_nonNull_native();
                v147[1] = v148;
                v150 = MEMORY[0x1E69E7CC0];
                if (v149)
                {
                  v151 = v147;
                }

                else
                {
                  v148 = sub_1AF422330(0, *(v148 + 2) + 1, 1, v148, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
                  v151 = v147;
                  v147[1] = v148;
                }

                v152 = v150;
                v154 = *(v148 + 2);
                v153 = *(v148 + 3);
                if (v154 >= v153 >> 1)
                {
                  v151[1] = sub_1AF422330(v153 > 1, v154 + 1, 1, v148, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
                }

                sub_1AF44943C(v248, sub_1AF448148);
                v155 = v151[1];
                *(v155 + 16) = v154 + 1;
                *(v155 + 8 * v154 + 32) = v134;
                v89 = v201;
                v68 = 0;
                v88 = v191;
                v156 = v134;
              }

              else
              {
                v151 = v147;
                sub_1AF44943C(v248, sub_1AF448148);
                v228 = v246;
                v229[0] = v247[0];
                *(v229 + 9) = *(v247 + 9);
                v224 = v242;
                v225 = v243;
                v226 = v244;
                v227 = v245;
                v222 = v240;
                v223 = v241;
                sub_1AF44832C(&v222, &qword_1EB638CB0, sub_1AF448148);
                v89 = v201;
                v152 = MEMORY[0x1E69E7CC0];
                v156 = v134;
                v88 = v191;
              }

              v54 = v208;
              v157 = swift_isUniquelyReferenced_nonNull_native();
              *&v240 = *v54;
              *v54 = 0x8000000000000000;
              sub_1AF850FDC(0, v156, v157);
              *v54 = v240;

              v246 = v270;
              v247[0] = v271[0];
              *(v247 + 9) = *(v271 + 9);
              v242 = v266;
              v243 = v267;
              v244 = v268;
              v245 = v269;
              v240 = v264;
              v241 = v265;
              sub_1AF44943C(&v240, sub_1AF448148);

              v90 = v200;
              v91 = v189;
              v75 = v152;
              v86 = v151;
              v72 = v193;
              goto LABEL_31;
            }

LABEL_72:
            v128 = 0;
            v213 = v114 + 32;
            v129 = 32;
            while (2)
            {
              v130 = *(v118 + v129);
              if (v130)
              {
                if (v114 && v128 < *(v114 + 16))
                {
                  v131 = *(v213 + 8 * v128);
                  sub_1AF4410A8(v131);
                }

                else
                {
                  v131 = 0xA000000000000000;
                }

                if (v211)
                {
                  if (v211 != 1)
                  {
                    sub_1AF441114(v131);
                    goto LABEL_87;
                  }

                  v132 = sub_1AF9C5694(v131, v212 & 0xEFFFFFFFFFFFFFFBLL);
                  sub_1AF441114(v131);
                  if (!v132)
                  {
LABEL_87:
                    sub_1AF3DEAB4(v130, 1, v212, v202 & 1, v207, v206, v205, v208, &v264, v209, v203);
                    if (v68)
                    {

                      sub_1AF441284(v210, v198, v197, v196, v195, v194);
                      goto LABEL_109;
                    }

                    v260 = v270;
                    v261[0] = v271[0];
                    *(v261 + 9) = *(v271 + 9);
                    v256 = v266;
                    v257 = v267;
                    v259 = v269;
                    v258 = v268;
                    v255 = v265;
                    v254 = v264;
                    sub_1AF44943C(&v254, sub_1AF448148);
                  }
                }

                else
                {
                  v133 = sub_1AF9C5694(v131, v212);
                  sub_1AF441114(v131);
                  if (v133)
                  {
                    goto LABEL_87;
                  }
                }

                v114 = v210;
              }

              ++v128;
              v129 += 16;
              if (v127 == v128)
              {
                goto LABEL_89;
              }

              continue;
            }
          }

          goto LABEL_30;
        }

        v93 = sub_1AF9C5694(v92, v212 & 0xEFFFFFFFFFFFFFFBLL);
        sub_1AF441114(v92);
        if (!v93)
        {
          goto LABEL_44;
        }
      }

      else
      {
        v94 = sub_1AF9C5694(v92, v212);
        sub_1AF441114(v92);
        if (v94)
        {
          goto LABEL_44;
        }
      }

LABEL_30:

      v90 = v200;
      v89 = v201;
LABEL_31:
      if (++v90 == v88)
      {
        goto LABEL_102;
      }
    }
  }

  v24 = sub_1AF0D3F10(a1);
  if (v25)
  {
    v26 = (*(v23 + 56) + 144 * v24);
    v264 = *v26;
    v27 = v26[3];
    v28 = v26[4];
    v29 = v26[2];
    v265 = v26[1];
    v266 = v29;
    v267 = v27;
    v268 = v28;
    v30 = v26[5];
    v31 = v26[6];
    v32 = v26[7];
    *(v271 + 9) = *(v26 + 121);
    v270 = v31;
    v271[0] = v32;
    v269 = v30;
    v33 = v26[7];
    a9[6] = v26[6];
    a9[7] = v33;
    *(a9 + 121) = *(v26 + 121);
    v34 = v26[3];
    a9[2] = v26[2];
    a9[3] = v34;
    v35 = v26[5];
    a9[4] = v26[4];
    a9[5] = v35;
    v36 = v26[1];
    *a9 = *v26;
    a9[1] = v36;
    return sub_1AF4495B8(&v264, &v254, sub_1AF448148);
  }

  v183 = a9;
  v38 = *(v23 + 16);

  if (!v38)
  {
    goto LABEL_9;
  }

  v39 = sub_1AF0D3F10(a1);
  if ((v40 & 1) == 0)
  {
    goto LABEL_9;
  }

  v41 = (*(v23 + 56) + 144 * v39);
  v264 = *v41;
  v42 = v41[3];
  v43 = v41[4];
  v44 = v41[2];
  v265 = v41[1];
  v266 = v44;
  v267 = v42;
  v268 = v43;
  v45 = v41[5];
  v46 = v41[6];
  v47 = v41[7];
  *(v271 + 9) = *(v41 + 121);
  v270 = v46;
  v271[0] = v47;
  v269 = v45;
  sub_1AF4495B8(&v264, &v254, sub_1AF448148);

  v48 = v271[0];
  v49 = v183;
  v183[6] = v270;
  v49[7] = v48;
  *(v49 + 121) = *(v271 + 9);
  v50 = v267;
  v49[2] = v266;
  v49[3] = v50;
  v51 = v269;
  v49[4] = v268;
  v49[5] = v51;
  v53 = v264;
  v52 = v265;
LABEL_107:
  *v49 = v53;
  v49[1] = v52;
  return result;
}

uint64_t sub_1AF405D48(__objc2_class **a1, uint64_t a2, unint64_t a3, int a4, uint64_t *a5, const char *a6, void *a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t (*a11)())
{
  v192 = a8;
  v186 = a6;
  v187 = a4;
  v197 = a3;
  v13 = a2;
  v177 = sub_1AFDFC318();
  v173 = *(v177 - 8);
  MEMORY[0x1EEE9AC00](v177);
  v176 = &v158 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v175 = &v158 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v158 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v158 - v22;
  if ((v13 & 1) == 0)
  {
    goto LABEL_122;
  }

  v24 = *a5;
  if (!*(*a5 + 16))
  {

LABEL_8:
    if (*(*a10 + 16))
    {
      sub_1AF0D3F10(a1);
      if (v30)
      {
        goto LABEL_122;
      }
    }

    v191 = a9;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v206 = *a10;
    *a10 = 0x8000000000000000;
    sub_1AF850FDC(1, a1, isUniquelyReferenced_nonNull_native);
    v32 = a10;
    *a10 = v206;

    v33 = sub_1AF96CD1C(a1);
    if (v33)
    {
      v196 = v33;
      v34 = a7;
      v35 = *(v173 + 16);
      v36 = v177;
      v35(v23, a1 + OBJC_IVAR____TtC3VFX4Node_authoringID, v177);
      v35(v20, v23, v36);

      v37 = v34;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = sub_1AF4276E0(0, v34[2] + 1, 1, v34, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
      }

      v39 = v37[2];
      v38 = v37[3];
      if (v39 >= v38 >> 1)
      {
        v37 = sub_1AF4276E0(v38 > 1, v39 + 1, 1, v37, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
      }

      v40 = v173;
      v41 = v23;
      v42 = v177;
      (*(v173 + 8))(v41, v177);
      v37[2] = v39 + 1;
      (*(v40 + 32))(v37 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v39, v20, v42);
      v206 = sub_1AF439B40(MEMORY[0x1E69E7CC0]);
      v207 = v43;
      v44 = 0;
      sub_1AF41388C(v192, v191, 1, v197, v187 & 1, v37, &v206);

      a7 = v34;
    }

    else
    {

      v44 = 0;
    }

    v46 = v197 >> 59;
    if (((v197 >> 59) & 2) != 0)
    {
      v174 = 0;
      v163 = 0;
      v162 = 0;
      v161 = 0;
      v160 = 0;
      v159 = 0;
    }

    else
    {
      ((*a1)[3].info)(v205, v45);
      v174 = v205[0];
      v163 = v205[1];
      v162 = v205[2];
      v161 = v205[3];
      v160 = v205[4];
      v159 = v205[5];
    }

    v164 = a1;
    v47 = a1[2];
    cache = v47->cache;
    v49 = MEMORY[0x1E69E7CC0];
    v194 = a5;
    v189 = a10;
    v190 = a7;
    if (cache)
    {
      v196 = v46;
      v184 = 0;
      v206 = MEMORY[0x1E69E7CC0];

      sub_1AFC05E2C(0, cache, 0);
      v50 = 0;
      v51 = v206;
      v52 = v206[2];
      v53 = 2 * v52;
      do
      {
        v54 = *(&v47->info + v50 * 8);
        v55 = *(&v47[1].isa + v50 * 8);
        v206 = v51;
        v56 = v51[3];
        v57 = v52 + 1;

        if (v52 >= v56 >> 1)
        {
          sub_1AFC05E2C(v56 > 1, v57, 1);
          v51 = v206;
        }

        v51[2] = v57;
        v58 = &v51[v53 + v50];
        v58[4] = v54;
        v58[5] = v55;
        v50 += 2;
        ++v52;
        --cache;
      }

      while (cache);

      v49 = v51;
      a5 = v194;
      v32 = v189;
      v44 = v184;
      LOBYTE(v46) = v196;
    }

    v59 = v32;
    v188 = a11;
    v60 = v49[2];
    v61 = v174;
    if (!v60)
    {
LABEL_103:

      sub_1AF441284(v61, v163, v162, v161, v160, v159);
      sub_1AF449B08(0, qword_1ED723F40, &type metadata for Entity, MEMORY[0x1E69E6720]);
      type metadata accessor for Node(0);
      if (swift_dynamicCastMetatype())
      {
        v136 = v164;

        v138 = sub_1AF3D72E8(v137, v59);

        *(v136 + 16) = v138;
      }

      else
      {
        type metadata accessor for AuthoringNode(0);
        v136 = v164;
      }

      v139 = swift_allocObject();
      v140 = v192;
      v141 = v191;
      *(v139 + 16) = v192;
      *(v139 + 24) = v141;
      v142 = v186;

      v143 = v197;
      sub_1AF4410E4(v197, sub_1AF4410A8);

      v144 = swift_allocObject();
      *(v144 + 16) = 1;
      *(v144 + 24) = v143;
      *(v144 + 32) = v187 & 1;
      *(v144 + 40) = a5;
      *(v144 + 48) = v142;
      v145 = v190;
      *(v144 + 56) = v190;
      *(v144 + 64) = v140;
      v146 = v189;
      *(v144 + 72) = v141;
      *(v144 + 80) = v146;
      v147 = v188;
      *(v144 + 88) = v188;
      v148 = swift_allocObject();
      *(v148 + 16) = sub_1AF449D94;
      *(v148 + 24) = v144;
      *&v198 = v142;
      *(&v198 + 1) = v136;
      v199 = v145;
      v200 = sub_1AF449D98;
      v201 = v148;
      v202 = v147;

      sub_1AF449E08(&v198, &v203);
      if (!v44)
      {

        v27 = v203;
        v149 = v204;
        swift_isEscapingClosureAtFileLocation();

        swift_isEscapingClosureAtFileLocation();

        sub_1AF633DE0(v27, v149, v136);
        v150 = v189;
        if ((v151 & 0x100) != 0)
        {
          v152 = a5[1];
          v153 = swift_isUniquelyReferenced_nonNull_native();
          a5[1] = v152;
          if ((v153 & 1) == 0)
          {
            v152 = sub_1AF422330(0, *(v152 + 2) + 1, 1, v152, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
            a5[1] = v152;
          }

          v155 = *(v152 + 2);
          v154 = *(v152 + 3);
          if (v155 >= v154 >> 1)
          {
            v152 = sub_1AF422330(v154 > 1, v155 + 1, 1, v152, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
            a5[1] = v152;
          }

          *(v152 + 2) = v155 + 1;
          *&v152[8 * v155 + 32] = v136;
        }

        v156 = swift_isUniquelyReferenced_nonNull_native();
        *&v198 = *v150;
        *v150 = 0x8000000000000000;
        sub_1AF850FDC(0, v136, v156);
        *v150 = v198;

        goto LABEL_114;
      }

LABEL_123:

      swift_isEscapingClosureAtFileLocation();

      swift_isEscapingClosureAtFileLocation();
      while (1)
      {

        swift_unexpectedError();
        __break(1u);
LABEL_119:

        swift_isEscapingClosureAtFileLocation();

        swift_isEscapingClosureAtFileLocation();

LABEL_117:
        sub_1AF441284(v174, v163, v162, v161, v160, v159);
      }
    }

    v62 = 0;
    v171 = v46 & 2;
    LODWORD(v196) = v171 | (v197 >> 2) & 1;
    v63 = v49 + 4;
    v168 = v174 + 32;
    v167 = (v173 + 16);
    v166 = v173 + 8;
    v165 = v173 + 32;
    v169 = v187 & 1;
    v185 = v49;
    v172 = v60;
    v170 = v49 + 4;
    while (1)
    {
      v193 = v63[2 * v62];
      if (!v193)
      {
        goto LABEL_30;
      }

      if (v61 && v62 < *(v61 + 16))
      {
        v65 = *(v168 + 8 * v62);
        sub_1AF4410A8(v65);
      }

      else
      {
        v65 = 0xA000000000000000;
      }

      if (v196)
      {
        if (v196 == 1)
        {
          v66 = sub_1AF9C5694(v65, v197 & 0xEFFFFFFFFFFFFFFBLL);
          sub_1AF441114(v65);
          if (v66)
          {
            goto LABEL_28;
          }
        }

        else
        {
          sub_1AF441114(v65);
        }
      }

      else
      {
        v67 = sub_1AF9C5694(v65, v197);
        sub_1AF441114(v65);
        if (!v67)
        {
          goto LABEL_28;
        }
      }

      if (!*(*a5 + 16) || (sub_1AF0D3F10(v193), (v68 & 1) == 0))
      {
        v69 = v59;
        if (*(*v59 + 16))
        {
          v70 = v193;
          sub_1AF0D3F10(v193);
          v71 = MEMORY[0x1E69E7CC0];
          if (v72)
          {
            goto LABEL_122;
          }
        }

        else
        {
          v71 = MEMORY[0x1E69E7CC0];
          v70 = v193;
        }

        v73 = swift_isUniquelyReferenced_nonNull_native();
        *&v198 = *v69;
        v74 = v198;
        *v69 = 0x8000000000000000;
        v75 = sub_1AF0D3F10(v70);
        v77 = v76;
        v78 = *(v74 + 16) + ((v76 & 1) == 0);
        if (*(v74 + 24) >= v78)
        {
          if (v73)
          {
            goto LABEL_53;
          }

          v81 = v44;
          v82 = v75;
          sub_1AF843F7C();
          v75 = v82;
          v44 = v81;
          v80 = v198;
          if ((v77 & 1) == 0)
          {
            goto LABEL_56;
          }

LABEL_54:
          *(v80[7] + v75) = 1;
        }

        else
        {
          sub_1AF82BC4C(v78, v73);
          v75 = sub_1AF0D3F10(v70);
          if ((v77 & 1) != (v79 & 1))
          {
            sub_1AFDFF1A8();
            __break(1u);
LABEL_122:
            sub_1AFDFE518();
            __break(1u);
            goto LABEL_123;
          }

LABEL_53:
          v80 = v198;
          if (v77)
          {
            goto LABEL_54;
          }

LABEL_56:
          v80[(v75 >> 6) + 8] |= 1 << v75;
          *(v80[6] + 8 * v75) = v70;
          *(v80[7] + v75) = 1;
          ++v80[2];
        }

        *v69 = v80;

        v83 = sub_1AF96CD1C(v70);
        v183 = v62;
        if (v83)
        {
          v84 = *v167;
          v85 = v175;
          v86 = v177;
          (*v167)(v175, v70 + OBJC_IVAR____TtC3VFX4Node_authoringID, v177);
          v84(v176, v85, v86);
          v87 = v190;

          v88 = v87;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v88 = sub_1AF4276E0(0, v87[2] + 1, 1, v87, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
          }

          v90 = v88[2];
          v89 = v88[3];
          if (v90 >= v89 >> 1)
          {
            v88 = sub_1AF4276E0(v89 > 1, v90 + 1, 1, v88, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
          }

          v91 = v173;
          v92 = v177;
          (*(v173 + 8))(v175, v177);
          v88[2] = v90 + 1;
          (*(v91 + 32))(v88 + ((*(v91 + 80) + 32) & ~*(v91 + 80)) + *(v91 + 72) * v90, v176, v92);
          *&v198 = sub_1AF439B40(v71);
          *(&v198 + 1) = v93;
          sub_1AF41388C(v192, v191, 1, v197, v187 & 1, v88, &v198);
          if (v44)
          {

            goto LABEL_117;
          }

          v70 = v193;
        }

        else
        {
        }

        v184 = v44;
        if (v171)
        {
          v95 = 0;
          v182 = 0;
          v181 = 0;
          v180 = 0;
          v179 = 0;
          v178 = 0;
        }

        else
        {
          (*(*v70 + 152))(&v206, v94);
          v95 = v206;
          v182 = v207;
          v181 = v208;
          v180 = v209;
          v179 = v210;
          v178 = v211;
        }

        v96 = *(v70 + 16);
        v97 = *(v96 + 16);
        v195 = v95;
        if (v97)
        {
          *&v198 = v71;

          sub_1AFC05E2C(0, v97, 0);
          v98 = 0;
          v99 = v198;
          v100 = *(v198 + 16);
          v101 = 16 * v100;
          do
          {
            v103 = *(v96 + v98 + 32);
            v102 = *(v96 + v98 + 40);
            *&v198 = v99;
            v104 = *(v99 + 24);
            v105 = v100 + 1;

            if (v100 >= v104 >> 1)
            {
              sub_1AFC05E2C(v104 > 1, v105, 1);
              v99 = v198;
            }

            *(v99 + 16) = v105;
            v106 = v99 + v101 + v98;
            *(v106 + 32) = v103;
            *(v106 + 40) = v102;
            v98 += 16;
            ++v100;
            --v97;
          }

          while (v97);

          v95 = v195;
        }

        else
        {
          v99 = v71;
        }

        v107 = *(v99 + 16);
        v44 = v184;
        if (v107)
        {
          v108 = 0;
          v109 = v95 + 32;
          v110 = 32;
          while (2)
          {
            v111 = *(v99 + v110);
            if (!v111)
            {
              goto LABEL_80;
            }

            if (v95 && v108 < *(v95 + 16))
            {
              v112 = *(v109 + 8 * v108);
              sub_1AF4410A8(v112);
            }

            else
            {
              v112 = 0xA000000000000000;
            }

            if (v196)
            {
              if (v196 == 1)
              {
                v113 = sub_1AF9C5694(v112, v197 & 0xEFFFFFFFFFFFFFFBLL);
                sub_1AF441114(v112);
                if (v113)
                {
                  goto LABEL_79;
                }
              }

              else
              {
                sub_1AF441114(v112);
              }

LABEL_78:
              sub_1AF3DFFC4(v111, 1, v197, v187 & 1, v190, v192, v191, v189, v194, v188);
              if (v44)
              {

                sub_1AF441284(v195, v182, v181, v180, v179, v178);
                goto LABEL_117;
              }
            }

            else
            {
              v114 = sub_1AF9C5694(v112, v197);
              sub_1AF441114(v112);
              if (v114)
              {
                goto LABEL_78;
              }
            }

LABEL_79:
            v95 = v195;

LABEL_80:
            ++v108;
            v110 += 16;
            if (v107 == v108)
            {
              break;
            }

            continue;
          }
        }

        sub_1AF441284(v95, v182, v181, v180, v179, v178);
        sub_1AF449B08(0, qword_1ED723F40, &type metadata for Entity, MEMORY[0x1E69E6720]);
        type metadata accessor for Node(0);
        if (swift_dynamicCastMetatype())
        {
          v115 = v193;

          v117 = v189;
          v118 = sub_1AF3D72E8(v116, v189);

          *(v115 + 16) = v118;

          v119 = v190;
        }

        else
        {
          type metadata accessor for AuthoringNode(0);
          v117 = v189;
          v119 = v190;
          v115 = v193;
        }

        v120 = swift_allocObject();
        v121 = v192;
        v122 = v191;
        *(v120 + 16) = v192;
        *(v120 + 24) = v122;
        v123 = v186;

        v124 = v197;
        sub_1AF4410E4(v197, sub_1AF4410A8);

        v125 = swift_allocObject();
        *(v125 + 16) = 1;
        *(v125 + 24) = v124;
        *(v125 + 32) = v169;
        *(v125 + 40) = v194;
        *(v125 + 48) = v123;
        *(v125 + 56) = v119;
        *(v125 + 64) = v121;
        *(v125 + 72) = v122;
        *(v125 + 80) = v117;
        v59 = v117;
        v126 = v188;
        *(v125 + 88) = v188;
        v127 = swift_allocObject();
        *(v127 + 16) = sub_1AF449D94;
        *(v127 + 24) = v125;
        *&v198 = v123;
        *(&v198 + 1) = v115;
        v199 = v119;
        v200 = sub_1AF449D98;
        v201 = v127;
        v202 = v126;
        swift_bridgeObjectRetain_n();

        sub_1AF449E08(&v198, &v203);
        if (v44)
        {
          goto LABEL_119;
        }

        v128 = v203;
        v129 = v204;
        swift_isEscapingClosureAtFileLocation();

        swift_isEscapingClosureAtFileLocation();

        v64 = v194;
        sub_1AF633DE0(v128, v129, v115);
        v60 = v172;
        v62 = v183;
        v63 = v170;
        if ((v130 & 0x100) != 0)
        {
          v131 = v64[1];
          v132 = swift_isUniquelyReferenced_nonNull_native();
          v64[1] = v131;
          if ((v132 & 1) == 0)
          {
            v131 = sub_1AF422330(0, *(v131 + 2) + 1, 1, v131, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
            v64[1] = v131;
          }

          v134 = *(v131 + 2);
          v133 = *(v131 + 3);
          if (v134 >= v133 >> 1)
          {
            v131 = sub_1AF422330(v133 > 1, v134 + 1, 1, v131, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
            v64[1] = v131;
          }

          *(v131 + 2) = v134 + 1;
          v115 = v193;
          *&v131[8 * v134 + 32] = v193;
        }

        v135 = swift_isUniquelyReferenced_nonNull_native();
        *&v198 = *v59;
        *v59 = 0x8000000000000000;
        sub_1AF850FDC(0, v115, v135);
        *v59 = v198;

        v61 = v174;
        goto LABEL_29;
      }

LABEL_28:
      v64 = a5;
LABEL_29:

      a5 = v64;
LABEL_30:
      if (++v62 == v60)
      {
        goto LABEL_103;
      }
    }
  }

  v25 = sub_1AF0D3F10(a1);
  if ((v26 & 1) == 0)
  {

    v28 = sub_1AF0D3F10(a1);
    if (v29)
    {
      v27 = *(*(v24 + 56) + 12 * v28);
LABEL_114:

      return v27;
    }

    goto LABEL_8;
  }

  return *(*(v24 + 56) + 12 * v25);
}

uint64_t sub_1AF407598(__objc2_class **a1, uint64_t a2, unint64_t a3, int a4, uint64_t *a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11)
{
  v206 = a8;
  v209 = a6;
  v204 = a4;
  v211 = a3;
  v13 = a2;
  v183 = sub_1AFDFC318();
  v15 = *(v183 - 8);
  MEMORY[0x1EEE9AC00](v183);
  v181 = v169 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v169 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = v169 - v21;
  if ((v13 & 1) == 0)
  {
    goto LABEL_132;
  }

  v199 = a5;
  v23 = *a5;
  if (!*(*a5 + 16))
  {

LABEL_9:
    v30 = a10;
    if (*(*a10 + 16))
    {
      sub_1AF0D3F10(a1);
      if (v31)
      {
        goto LABEL_132;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v219 = *a10;
    *a10 = 0x8000000000000000;
    sub_1AF850FDC(1, a1, isUniquelyReferenced_nonNull_native);
    *a10 = v219;

    sub_1AF449B08(0, &qword_1ED726CC0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    v34 = v33;
    v196 = type metadata accessor for Node(0);
    v35 = v204 & (v34 == v196);
    v36 = swift_allocObject();
    v176 = v36;
    *(v36 + 16) = a1;
    v175 = (v36 + 16);

    v177 = a1;
    v184 = v35;
    if (v35 == 1)
    {
      v37 = sub_1AF96FB80(1);
      v38 = v175;
      *v175 = v37;

      a1 = *v38;
    }

    v205 = a9;
    v39 = sub_1AF96CD1C(a1);
    v207 = a10;
    v194 = v34;
    v200 = v15;
    if (v39)
    {
      v40 = *(v15 + 16);
      v41 = a1 + OBJC_IVAR____TtC3VFX4Node_authoringID;
      v42 = v183;
      v40(v22, v41, v183);
      v40(v19, v22, v42);

      v43 = a7;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v43 = sub_1AF4276E0(0, a7[2] + 1, 1, a7, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
      }

      v45 = v43[2];
      v44 = v43[3];
      if (v45 >= v44 >> 1)
      {
        v43 = sub_1AF4276E0(v44 > 1, v45 + 1, 1, v43, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
      }

      v46 = v183;
      (*(v15 + 8))(v22, v183);
      v43[2] = v45 + 1;
      (*(v15 + 32))(v43 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v45, v19, v46);
      v47 = 0;
      v48 = sub_1AF3FBEE4(v206, v205, 1, v211, v204 & 1, v43);
      v50 = v49;

      if (v194 == v196)
      {
        v52 = *(v50 + 16);
        if (v52)
        {
          v201 = 0;
          v218[0] = MEMORY[0x1E69E7CC0];
          sub_1AFDFE368();
          v53 = 32;
          v210 = xmmword_1AFE21110;
          do
          {
            v54 = v210;
            if (v48[2])
            {
              v55 = sub_1AF0D3F10(*(v50 + v53));
              v54 = v210;
              if (v56)
              {
                v208 = *(v48[7] + 16 * v55);

                v54 = v208;
              }
            }

            v219 = v54;
            swift_dynamicCast();
            sub_1AFDFE328();
            sub_1AFDFE398();
            sub_1AFDFE3A8();
            sub_1AFDFE348();
            v53 += 8;
            --v52;
          }

          while (v52);

          v57 = v218[0];
          v30 = v207;
          v47 = v201;
        }

        else
        {

          v57 = MEMORY[0x1E69E7CC0];
        }

        v58 = *v175;
        type metadata accessor for Graph();
        v59 = swift_allocObject();
        *(v59 + 16) = v57;
        *(v58 + OBJC_IVAR____TtC3VFX12SubGraphNode_graph) = v59;
      }

      else
      {
      }

      v51 = v177;
      v34 = v194;
    }

    else
    {
      v47 = 0;
      v51 = v177;
    }

    v60 = v211 >> 59;
    if (((v211 >> 59) & 2) != 0)
    {
      v61 = 0;
      v174 = 0;
      v173 = 0;
      v172 = 0;
      v171 = 0;
      v170 = 0;
    }

    else
    {
      ((*v51)[3].info)(v218);
      v61 = v218[0];
      v174 = v218[1];
      v173 = v218[2];
      v172 = v218[3];
      v171 = v218[4];
      v170 = v218[5];
    }

    v62 = v51[2];
    cache = v62->cache;
    v64 = MEMORY[0x1E69E7CC0];
    v186 = v61;
    v202 = a7;
    if (cache)
    {
      *&v210 = v60;
      v201 = v47;
      *&v219 = MEMORY[0x1E69E7CC0];

      sub_1AFC05E2C(0, cache, 0);
      v65 = 0;
      v66 = v219;
      v67 = *(v219 + 16);
      v68 = 16 * v67;
      do
      {
        v70 = *(&v62->info + v65);
        v69 = *(&v62[1].isa + v65);
        *&v219 = v66;
        v71 = *(v66 + 24);
        v72 = v67 + 1;

        if (v67 >= v71 >> 1)
        {
          sub_1AFC05E2C(v71 > 1, v72, 1);
          v66 = v219;
        }

        *(v66 + 16) = v72;
        v73 = v66 + v68 + v65;
        *(v73 + 32) = v70;
        *(v73 + 40) = v69;
        v65 += 16;
        ++v67;
        --cache;
      }

      while (cache);

      v30 = v207;
      a7 = v202;
      v34 = v194;
      v47 = v201;
      v64 = v66;
      v61 = v186;
      LOBYTE(v60) = v210;
    }

    v203 = a11;
    v74 = v199;
    v198 = *(v64 + 16);
    v169[1] = v64;
    if (!v198)
    {
      v201 = v47;
      v187 = v204 & 1;
LABEL_119:

      sub_1AF441284(v61, v174, v173, v172, v171, v170);
      v154 = v176;
      sub_1AF3FC898(v176, v30, v74);
      v155 = swift_allocObject();
      v156 = v206;
      v157 = v205;
      *(v155 + 16) = v206;
      *(v155 + 24) = v157;
      v158 = v209;

      v159 = v211;
      sub_1AF4410E4(v211, sub_1AF4410A8);

      v160 = swift_allocObject();
      *(v160 + 16) = 1;
      *(v160 + 24) = v159;
      *(v160 + 32) = v187;
      *(v160 + 40) = v74;
      *(v160 + 48) = v158;
      *(v160 + 56) = a7;
      *(v160 + 64) = v156;
      *(v160 + 72) = v157;
      *(v160 + 80) = v30;
      v161 = v203;
      *(v160 + 88) = v203;
      v162 = swift_allocObject();
      *(v162 + 16) = sub_1AF449D84;
      *(v162 + 24) = v160;
      v163 = *(v154 + 16);
      *&v212 = v158;
      *(&v212 + 1) = v163;
      v213 = a7;
      v214 = sub_1AF449D88;
      v215 = v162;
      v216 = v161;

      v164 = v201;
      sub_1AF449DF0(&v212, &v217);
      if (!v164)
      {

        v165 = *(&v217 + 1);
        v26 = v217;
        swift_isEscapingClosureAtFileLocation();

        swift_isEscapingClosureAtFileLocation();

        v166 = v177;
        sub_1AF3D8DAC(v26, v165, v177);
        if (v194 == v196)
        {
          v212 = __PAIR128__(v165, v26);

          swift_dynamicCast();
        }

        v167 = swift_isUniquelyReferenced_nonNull_native();
        *&v212 = *v30;
        *v30 = 0x8000000000000000;
        sub_1AF850FDC(0, v166, v167);
        *v30 = v212;

        goto LABEL_123;
      }

LABEL_133:

      swift_isEscapingClosureAtFileLocation();

      swift_isEscapingClosureAtFileLocation();

      while (1)
      {

        swift_unexpectedError();
        __break(1u);
LABEL_129:

        swift_isEscapingClosureAtFileLocation();

        swift_isEscapingClosureAtFileLocation();

LABEL_126:

LABEL_127:
        sub_1AF441284(v186, v174, v173, v172, v171, v170);
      }
    }

    v75 = v34;
    v76 = 0;
    v182 = v60 & 2;
    LODWORD(v210) = v182 | (v211 >> 2) & 1;
    v197 = v64 + 32;
    v180 = v61 + 32;
    v179 = (v200 + 16);
    v178 = (v200 + 8);
    v187 = v204 & 1;
    while (1)
    {
      *&v208 = *(v197 + 16 * v76);
      if (!v208)
      {
        goto LABEL_43;
      }

      v200 = v76;
      if (v61 && v76 < *(v61 + 16))
      {
        v77 = *(v180 + 8 * v76);
        sub_1AF4410A8(v77);
      }

      else
      {
        v77 = 0xA000000000000000;
      }

      if (v210)
      {
        if (v210 == 1)
        {
          v78 = sub_1AF9C5694(v77, v211 & 0xEFFFFFFFFFFFFFFBLL);
          sub_1AF441114(v77);
          if (v78)
          {
            goto LABEL_42;
          }
        }

        else
        {
          sub_1AF441114(v77);
        }
      }

      else
      {
        v79 = sub_1AF9C5694(v77, v211);
        sub_1AF441114(v77);
        if (!v79)
        {
          goto LABEL_42;
        }
      }

      if (!*(*v74 + 16) || (sub_1AF0D3F10(v208), (v80 & 1) == 0))
      {
        if (*(*v30 + 16))
        {
          v81 = v208;
          sub_1AF0D3F10(v208);
          if (v82)
          {
            goto LABEL_132;
          }
        }

        else
        {
          v81 = v208;
        }

        v83 = swift_isUniquelyReferenced_nonNull_native();
        *&v212 = *v30;
        v84 = v212;
        *v30 = 0x8000000000000000;
        v85 = sub_1AF0D3F10(v81);
        v87 = v86;
        v88 = *(v84 + 16) + ((v86 & 1) == 0);
        if (*(v84 + 24) >= v88)
        {
          if ((v83 & 1) == 0)
          {
            v151 = v47;
            v152 = v85;
            sub_1AF843F7C();
            v85 = v152;
            v47 = v151;
          }
        }

        else
        {
          sub_1AF82BC4C(v88, v83);
          v85 = sub_1AF0D3F10(v81);
          if ((v87 & 1) != (v89 & 1))
          {
            sub_1AFDFF1A8();
            __break(1u);
LABEL_132:
            sub_1AFDFE518();
            __break(1u);
            goto LABEL_133;
          }
        }

        v90 = v212;
        if (v87)
        {
          *(*(v212 + 56) + v85) = 1;
        }

        else
        {
          *(v212 + 8 * (v85 >> 6) + 64) |= 1 << v85;
          *(v90[6] + 8 * v85) = v81;
          *(v90[7] + v85) = 1;
          ++v90[2];
        }

        *v30 = v90;

        v91 = swift_allocObject();
        v195 = v91;
        *(v91 + 16) = v81;
        v92 = (v91 + 16);

        v93 = v81;
        if (v184)
        {
          *v92 = sub_1AF96FB80(1);

          v93 = *v92;
        }

        v188 = v92;
        v94 = sub_1AF96CD1C(v93);
        v95 = MEMORY[0x1E69E7CC0];
        if (v94)
        {
          v96 = v181;
          v97 = v183;
          (*v179)(v181, v93 + OBJC_IVAR____TtC3VFX4Node_authoringID, v183);
          v98 = sub_1AF3D88AC(v96, a7);
          (*v178)(v96, v97);
          v99 = sub_1AF3FBEE4(v206, v205, 1, v211, v204 & 1, v98);
          if (v47)
          {

            goto LABEL_127;
          }

          v101 = v99;
          v102 = v100;

          if (v75 == v196)
          {
            v103 = sub_1AF3D83F4(v101, v102);

            v104 = *v188;
            type metadata accessor for Graph();
            v105 = swift_allocObject();
            *(v105 + 16) = v103;
            *(v104 + OBJC_IVAR____TtC3VFX12SubGraphNode_graph) = v105;
          }

          else
          {
          }

          v74 = v199;
        }

        v201 = v47;
        if (v182)
        {
          v106 = 0;
          v193 = 0;
          v192 = 0;
          v191 = 0;
          v190 = 0;
          v189 = 0;
        }

        else
        {
          ((*v81)[3].info)(&v219);
          v193 = *(&v219 + 1);
          v106 = v219;
          v192 = v220;
          v191 = v221;
          v190 = v222;
          v189 = v223;
        }

        v107 = v81[2];
        v108 = v107->cache;
        if (!v108)
        {
          v110 = v95;
          v47 = v201;
          v118 = *(v95 + 16);
          if (v118)
          {
            goto LABEL_89;
          }

          goto LABEL_106;
        }

        v185 = v106;
        *&v212 = v95;

        sub_1AFC05E2C(0, v108, 0);
        v109 = 0;
        v110 = v212;
        v111 = *(v212 + 16);
        v112 = 16 * v111;
        do
        {
          v113 = *(&v107->info + v109);
          v114 = *(&v107[1].isa + v109);
          *&v212 = v110;
          v115 = *(v110 + 24);
          v116 = v111 + 1;

          if (v111 >= v115 >> 1)
          {
            sub_1AFC05E2C(v115 > 1, v116, 1);
            v110 = v212;
          }

          *(v110 + 16) = v116;
          v117 = v110 + v112 + v109;
          *(v117 + 32) = v113;
          *(v117 + 40) = v114;
          v109 += 16;
          ++v111;
          --v108;
        }

        while (v108);

        v74 = v199;
        v47 = v201;
        v106 = v185;
        v118 = *(v110 + 16);
        if (!v118)
        {
LABEL_106:

          sub_1AF441284(v106, v193, v192, v191, v190, v189);
          v125 = v195;
          v126 = v207;
          sub_1AF3FC898(v195, v207, v74);
          v127 = swift_allocObject();
          v128 = v206;
          v129 = v205;
          *(v127 + 16) = v206;
          *(v127 + 24) = v129;
          v130 = v74;
          v131 = v209;

          v132 = v211;
          sub_1AF4410E4(v211, sub_1AF4410A8);

          v133 = swift_allocObject();
          *(v133 + 16) = 1;
          *(v133 + 24) = v132;
          *(v133 + 32) = v187;
          *(v133 + 40) = v130;
          *(v133 + 48) = v131;
          a7 = v202;
          *(v133 + 56) = v202;
          *(v133 + 64) = v128;
          *(v133 + 72) = v129;
          *(v133 + 80) = v126;
          v134 = v203;
          *(v133 + 88) = v203;
          v135 = swift_allocObject();
          *(v135 + 16) = sub_1AF449D84;
          *(v135 + 24) = v133;
          v136 = *(v125 + 16);
          *&v212 = v131;
          *(&v212 + 1) = v136;
          v213 = a7;
          v214 = sub_1AF449D88;
          v215 = v135;
          v216 = v134;
          swift_bridgeObjectRetain_n();

          sub_1AF449DF0(&v212, &v217);
          v137 = v199;
          if (v47)
          {
            goto LABEL_129;
          }

          v138 = v217;
          swift_isEscapingClosureAtFileLocation();

          swift_isEscapingClosureAtFileLocation();

          swift_bridgeObjectRetain_n();
          v139 = sub_1AF633F0C(v138, *(&v138 + 1), v208);
          if (v140 == 1)
          {
            v141 = *(v137 + 8);
            v142 = swift_isUniquelyReferenced_nonNull_native();
            *(v137 + 8) = v141;
            v143 = v194;
            if ((v142 & 1) == 0)
            {
              v141 = sub_1AF422330(0, *(v141 + 2) + 1, 1, v141, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
              *(v199 + 8) = v141;
            }

            v145 = *(v141 + 2);
            v144 = *(v141 + 3);
            v30 = v207;
            if (v145 >= v144 >> 1)
            {
              v153 = sub_1AF422330(v144 > 1, v145 + 1, 1, v141, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
              *(v199 + 8) = v153;
            }

            v146 = *(v199 + 8);
            *(v146 + 16) = v145 + 1;
            *(v146 + 8 * v145 + 32) = v208;
            v147 = v196;
            v47 = 0;
          }

          else
          {
            v148 = v139;
            v149 = v140;

            sub_1AF447EB0(v148, v149);
            v143 = v194;
            v147 = v196;
            v30 = v207;
          }

          v75 = v143;
          v61 = v186;
          if (v143 == v147)
          {
            v212 = v138;

            swift_dynamicCast();
          }

          v150 = swift_isUniquelyReferenced_nonNull_native();
          *&v212 = *v30;
          *v30 = 0x8000000000000000;
          sub_1AF850FDC(0, v208, v150);
          *v30 = v212;

          v74 = v199;
          goto LABEL_42;
        }

LABEL_89:
        v119 = 0;
        v201 = v106 + 32;
        v120 = 32;
        while (2)
        {
          v121 = *(v110 + v120);
          if (v121)
          {
            if (v106 && v119 < *(v106 + 16))
            {
              v122 = *(v201 + 8 * v119);
              sub_1AF4410A8(v122);
            }

            else
            {
              v122 = 0xA000000000000000;
            }

            if (v210)
            {
              if (v210 != 1)
              {
                sub_1AF441114(v122);
                goto LABEL_104;
              }

              v123 = sub_1AF9C5694(v122, v211 & 0xEFFFFFFFFFFFFFFBLL);
              sub_1AF441114(v122);
              if (!v123)
              {
LABEL_104:
                sub_1AF3E1430(v121, 1, v211, v204 & 1, v202, v206, v205, v207, v74, v203);
                if (v47)
                {

                  sub_1AF441284(v106, v193, v192, v191, v190, v189);
                  goto LABEL_126;
                }

                goto LABEL_91;
              }
            }

            else
            {
              v124 = sub_1AF9C5694(v122, v211);
              sub_1AF441114(v122);
              if (v124)
              {
                goto LABEL_104;
              }
            }
          }

LABEL_91:
          ++v119;
          v120 += 16;
          if (v118 == v119)
          {
            goto LABEL_106;
          }

          continue;
        }
      }

LABEL_42:

      v76 = v200;
LABEL_43:
      if (++v76 == v198)
      {
        v201 = v47;
        goto LABEL_119;
      }
    }
  }

  v24 = sub_1AF0D3F10(a1);
  if ((v25 & 1) == 0)
  {
    v27 = *(v23 + 16);

    if (v27)
    {
      v28 = sub_1AF0D3F10(a1);
      if (v29)
      {
        v26 = *(*(v23 + 56) + 16 * v28);

LABEL_123:

        return v26;
      }
    }

    goto LABEL_9;
  }

  v26 = *(*(v23 + 56) + 16 * v24);

  return v26;
}

uint64_t sub_1AF408FA0(__objc2_class **a1, uint64_t a2, unint64_t a3, int a4, void *a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11)
{
  v158 = a8;
  v153 = a4;
  v163 = a3;
  v14 = a2;
  v146 = sub_1AFDFC318();
  v16 = *(v146 - 8);
  MEMORY[0x1EEE9AC00](v146);
  v140 = v130 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v130 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = v130 - v22;
  if ((v14 & 1) == 0)
  {
    goto LABEL_95;
  }

  v24 = *a5;
  if (!*(*a5 + 16))
  {

LABEL_9:
    v155 = a10;
    if (!*(*a10 + 16))
    {
      v32 = v155;
      goto LABEL_13;
    }

    sub_1AF0D3F10(a1);
    if ((v31 & 1) == 0)
    {
      v32 = v155;
LABEL_13:
      v156 = a9;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v171 = *v32;
      *v32 = 0x8000000000000000;
      sub_1AF850FDC(1, a1, isUniquelyReferenced_nonNull_native);
      *v32 = v171;

      v34 = sub_1AF96D010(a1);
      v161 = a5;
      v157 = a7;
      v136 = a1;
      v160 = v16;
      if (v34)
      {
        v35 = a6;
        v36 = a1;
        v37 = *(v16 + 16);
        v38 = v146;
        v37(v23, v36 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v146);
        v37(v20, v23, v38);
        v39 = v157;

        v40 = v39;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v40 = sub_1AF4276E0(0, v39[2] + 1, 1, v39, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
        }

        v42 = v40[2];
        v41 = v40[3];
        if (v42 >= v41 >> 1)
        {
          v40 = sub_1AF4276E0(v41 > 1, v42 + 1, 1, v40, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
        }

        a6 = v35;
        v43 = v23;
        v44 = v146;
        (*(v16 + 8))(v43, v146);
        v40[2] = v42 + 1;
        (*(v16 + 32))(v40 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v42, v20, v44);
        v171 = sub_1AF43A958(MEMORY[0x1E69E7CC0]);
        v172 = v45;
        sub_1AF41420C(v158, v156, 1, v163, v153 & 1, v40, &v171);

        a1 = v136;
        a5 = v161;
      }

      else
      {
      }

      v47 = a5;
      v48 = v163 >> 59;
      if (((v163 >> 59) & 2) != 0)
      {
        v49 = 0;
        v135 = 0;
        v134 = 0;
        v133 = 0;
        v132 = 0;
        v131 = 0;
      }

      else
      {
        ((*(a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw))->isa[3].info)(v170, v46);
        v49 = v170[0];
        v135 = v170[1];
        v134 = v170[2];
        v133 = v170[3];
        v132 = v170[4];
        v131 = v170[5];
      }

      v154 = a11;
      v50 = sub_1AF97228C();
      v51 = *(v50 + 16);
      v159 = a6;
      v130[1] = v50;
      if (!v51)
      {
        v54 = v155;
LABEL_88:
        v112 = v157;

        sub_1AF441284(v49, v135, v134, v133, v132, v131);
        sub_1AF449B08(0, &qword_1EB638DB8, &type metadata for AuthoringNodeCoder, MEMORY[0x1E69E6720]);
        type metadata accessor for Node(0);
        type metadata accessor for AuthoringNode(0);
        if (swift_dynamicCastMetatype())
        {
          v113 = v159;
          v114 = OBJC_IVAR____TtC3VFX13AuthoringNode_inputs;
          v115 = v136;

          v117 = sub_1AF3D6B1C(v116, v54, v47, sub_1AF3FDCB4);

          *(v115 + v114) = v117;
        }

        else
        {
          v113 = v159;
          v115 = v136;
        }

        v118 = swift_allocObject();
        v119 = v158;
        v120 = v156;
        *(v118 + 16) = v158;
        *(v118 + 24) = v120;

        v121 = v163;
        sub_1AF4410E4(v163, sub_1AF4410A8);

        v122 = swift_allocObject();
        *(v122 + 16) = 1;
        *(v122 + 24) = v121;
        *(v122 + 32) = v153 & 1;
        *(v122 + 40) = v47;
        *(v122 + 48) = v113;
        *(v122 + 56) = v112;
        *(v122 + 64) = v119;
        *(v122 + 72) = v120;
        v123 = v113;
        v124 = v155;
        v125 = v154;
        *(v122 + 80) = v155;
        *(v122 + 88) = v125;
        v126 = swift_allocObject();
        *(v126 + 16) = sub_1AF449DA0;
        *(v126 + 24) = v122;
        *&v164 = v123;
        *(&v164 + 1) = v115;
        v165 = v112;
        v166 = sub_1AF449D48;
        v167 = v126;
        v168 = v125;

        sub_1AF449DC0(&v164, &v169);

        v27 = v169;
        swift_isEscapingClosureAtFileLocation();

        swift_isEscapingClosureAtFileLocation();

        sub_1AF3D9030(v127, v115, sub_1AF634138, sub_1AF449DA4, sub_1AF6B761C, sub_1AF849C40);
        v128 = swift_isUniquelyReferenced_nonNull_native();
        *&v164 = *v124;
        *v124 = 0x8000000000000000;
        sub_1AF850FDC(0, v115, v128);
        *v124 = v164;

        goto LABEL_92;
      }

      v52 = 0;
      v143 = v48 & 2;
      v162 = v143 | (v163 >> 2) & 1;
      v53 = v50 + 32;
      v139 = v49 + 32;
      v138 = (v160 + 16);
      v137 = (v160 + 8);
      v141 = v153 & 1;
      v54 = v155;
      v142 = v50 + 32;
      v145 = v49;
      v144 = v51;
      while (1)
      {
        v160 = *(v53 + 16 * v52);
        if (!v160)
        {
          goto LABEL_26;
        }

        if (v49 && v52 < *(v49 + 16))
        {
          v55 = *(v139 + 8 * v52);
          sub_1AF4410A8(v55);
        }

        else
        {
          v55 = 0xA000000000000000;
        }

        if (v162)
        {
          if (v162 == 1)
          {
            v56 = sub_1AF9C5694(v55, v163 & 0xEFFFFFFFFFFFFFFBLL);
            sub_1AF441114(v55);
            if (v56)
            {
              goto LABEL_25;
            }
          }

          else
          {
            sub_1AF441114(v55);
          }
        }

        else
        {
          v57 = sub_1AF9C5694(v55, v163);
          sub_1AF441114(v55);
          if (!v57)
          {
            goto LABEL_25;
          }
        }

        if (!*(*v47 + 16) || (sub_1AF0D3F10(v160), (v58 & 1) == 0))
        {
          if (*(*v54 + 16))
          {
            v59 = v160;
            sub_1AF0D3F10(v160);
            if (v60)
            {
              break;
            }
          }

          else
          {
            v59 = v160;
          }

          v61 = swift_isUniquelyReferenced_nonNull_native();
          *&v164 = *v54;
          v62 = v164;
          *v54 = 0x8000000000000000;
          v63 = sub_1AF0D3F10(v59);
          v65 = v64;
          v66 = *(v62 + 16) + ((v64 & 1) == 0);
          if (*(v62 + 24) >= v66)
          {
            if (v61)
            {
              goto LABEL_49;
            }

            v69 = v63;
            sub_1AF843F7C();
            v63 = v69;
            v68 = v164;
            if ((v65 & 1) == 0)
            {
              goto LABEL_52;
            }

LABEL_50:
            *(v68[7] + v63) = 1;
          }

          else
          {
            sub_1AF82BC4C(v66, v61);
            v63 = sub_1AF0D3F10(v59);
            if ((v65 & 1) != (v67 & 1))
            {
              sub_1AFDFF1A8();
              __break(1u);
              break;
            }

LABEL_49:
            v68 = v164;
            if (v65)
            {
              goto LABEL_50;
            }

LABEL_52:
            v68[(v63 >> 6) + 8] |= 1 << v63;
            *(v68[6] + 8 * v63) = v59;
            *(v68[7] + v63) = 1;
            ++v68[2];
          }

          *v54 = v68;

          if (sub_1AF96D010(v59))
          {
            v70 = v140;
            v71 = v146;
            (*v138)(v140, v59 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v146);

            v72 = sub_1AF3D88AC(v70, v157);
            (*v137)(v70, v71);
            *&v164 = sub_1AF43A958(MEMORY[0x1E69E7CC0]);
            *(&v164 + 1) = v73;
            sub_1AF41420C(v158, v156, 1, v163, v153 & 1, v72, &v164);
          }

          else
          {
          }

          if (v143)
          {
            v76 = 0;
            v151 = 0;
            v150 = 0;
            v149 = 0;
            v148 = 0;
            v147 = 0;
          }

          else
          {
            info = (*(v59 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw))->isa[3].info;

            (info)(&v171, v75);
            v76 = v171;
            v151 = v172;
            v150 = v173;
            v149 = v174;
            v148 = v175;
            v147 = v176;
          }

          v77 = sub_1AF97228C();
          v78 = *(v77 + 16);
          if (v78)
          {
            v79 = 0;
            v152 = v76 + 32;
            v80 = 32;
            while (2)
            {
              v81 = *(v77 + v80);
              if (!v81)
              {
                goto LABEL_62;
              }

              if (v76 && v79 < *(v76 + 16))
              {
                v82 = *(v152 + 8 * v79);
                sub_1AF4410A8(v82);
              }

              else
              {
                v82 = 0xA000000000000000;
              }

              if (v162)
              {
                if (v162 != 1)
                {
                  sub_1AF441114(v82);
                  goto LABEL_75;
                }

                v83 = sub_1AF9C5694(v82, v163 & 0xEFFFFFFFFFFFFFFBLL);
                sub_1AF441114(v82);
                if (!v83)
                {
LABEL_75:
                  sub_1AF3E2468(v81, 1, v163, v153 & 1, v157, v158, v156, v155, v161, v154);
                }
              }

              else
              {
                v84 = sub_1AF9C5694(v82, v163);
                sub_1AF441114(v82);
                if (v84)
                {
                  goto LABEL_75;
                }
              }

LABEL_62:
              ++v79;
              v80 += 16;
              if (v78 == v79)
              {
                break;
              }

              continue;
            }
          }

          v152 = v52;

          sub_1AF441284(v76, v151, v150, v149, v148, v147);
          sub_1AF449B08(0, &qword_1EB638DB8, &type metadata for AuthoringNodeCoder, MEMORY[0x1E69E6720]);
          type metadata accessor for Node(0);
          type metadata accessor for AuthoringNode(0);
          if (swift_dynamicCastMetatype())
          {
            v85 = OBJC_IVAR____TtC3VFX13AuthoringNode_inputs;
            v86 = v160;

            v88 = v155;
            v89 = sub_1AF3D6B1C(v87, v155, v161, sub_1AF3FDCB4);

            *(v86 + v85) = v89;

            v90 = v159;
            v91 = v157;
          }

          else
          {
            v90 = v159;
            v88 = v155;
            v91 = v157;
            v86 = v160;
          }

          v92 = swift_allocObject();
          v93 = v158;
          v94 = v156;
          *(v92 + 16) = v158;
          *(v92 + 24) = v94;

          v95 = v163;
          sub_1AF4410E4(v163, sub_1AF4410A8);

          v96 = swift_allocObject();
          *(v96 + 16) = 1;
          *(v96 + 24) = v95;
          *(v96 + 32) = v141;
          *(v96 + 40) = v161;
          *(v96 + 48) = v90;
          *(v96 + 56) = v91;
          *(v96 + 64) = v93;
          *(v96 + 72) = v94;
          *(v96 + 80) = v88;
          v54 = v88;
          v97 = v154;
          *(v96 + 88) = v154;
          v98 = swift_allocObject();
          *(v98 + 16) = sub_1AF449DA0;
          *(v98 + 24) = v96;
          *&v164 = v90;
          *(&v164 + 1) = v86;
          v165 = v91;
          v166 = sub_1AF449D48;
          v167 = v98;
          v168 = v97;
          swift_bridgeObjectRetain_n();

          sub_1AF449DC0(&v164, &v169);

          swift_isEscapingClosureAtFileLocation();

          swift_isEscapingClosureAtFileLocation();

          v99 = swift_retain_n();
          v100 = v161;
          v101 = sub_1AF634138(v99, v86);
          v102 = v100;
          if (v101 == 1)
          {
            v103 = v100[1];
            v104 = swift_isUniquelyReferenced_nonNull_native();
            v47 = v102;
            v102[1] = v103;
            v49 = v145;
            v51 = v144;
            if ((v104 & 1) == 0)
            {
              v103 = sub_1AF422330(0, *(v103 + 2) + 1, 1, v103, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
              v102[1] = v103;
            }

            v106 = *(v103 + 2);
            v105 = *(v103 + 3);
            if (v106 >= v105 >> 1)
            {
              v102[1] = sub_1AF422330(v105 > 1, v106 + 1, 1, v103, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
            }

            v107 = v102[1];
            *(v107 + 16) = v106 + 1;
            v108 = v107 + 8 * v106;
            v109 = v160;
            *(v108 + 32) = v160;
            v53 = v142;
          }

          else
          {
            v47 = v100;
            v110 = v101;

            sub_1AF0DB74C(v110);
            v49 = v145;
            v51 = v144;
            v53 = v142;
            v109 = v160;
          }

          v111 = swift_isUniquelyReferenced_nonNull_native();
          *&v164 = *v88;
          *v88 = 0x8000000000000000;
          sub_1AF850FDC(0, v109, v111);
          *v88 = v164;

          v52 = v152;
        }

LABEL_25:

LABEL_26:
        if (++v52 == v51)
        {
          goto LABEL_88;
        }
      }
    }

LABEL_95:
    sub_1AFDFE518();
    __break(1u);

    swift_isEscapingClosureAtFileLocation();

    swift_isEscapingClosureAtFileLocation();
    while (1)
    {

      swift_unexpectedError();
      __break(1u);

      swift_isEscapingClosureAtFileLocation();

      swift_isEscapingClosureAtFileLocation();

      sub_1AF441284(v145, v135, v134, v133, v132, v131);
    }
  }

  v25 = sub_1AF0D3F10(a1);
  if ((v26 & 1) == 0)
  {
    v28 = *(v24 + 16);

    if (v28)
    {
      v29 = sub_1AF0D3F10(a1);
      if (v30)
      {
        v27 = *(*(v24 + 56) + 8 * v29);

LABEL_92:

        return v27;
      }
    }

    goto LABEL_9;
  }

  v27 = *(*(v24 + 56) + 8 * v25);

  return v27;
}

uint64_t sub_1AF40A514(__objc2_class **a1, char a2, unint64_t a3, int a4, uint64_t *a5, unint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11)
{
  v195 = a8;
  v187 = a6;
  v196 = a4;
  v200 = a3;
  v176 = sub_1AFDFC318();
  v198 = *(v176 - 8);
  MEMORY[0x1EEE9AC00](v176);
  v173 = &v162 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v162 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v162 - v20;
  if ((a2 & 1) == 0)
  {
    goto LABEL_131;
  }

  v22 = *a5;
  if (!*(*a5 + 16))
  {

LABEL_9:
    v29 = a10;
    if (*(*a10 + 16))
    {
      sub_1AF0D3F10(a1);
      if (v30)
      {
        goto LABEL_131;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v208[0] = *a10;
    *a10 = 0x8000000000000000;
    sub_1AF850FDC(1, a1, isUniquelyReferenced_nonNull_native);
    *a10 = v208[0];

    v32 = a1;
    if (v196)
    {
      v32 = sub_1AF96FB80(1);
    }

    v194 = a9;
    v33 = sub_1AF96CD1C(v32);
    v197 = a5;
    v192 = a10;
    v193 = a7;
    v169 = v32;
    if (v33)
    {
      v34 = a1;
      v35 = v198;
      v36 = *(v198 + 16);
      v37 = v32 + OBJC_IVAR____TtC3VFX4Node_authoringID;
      v38 = v176;
      v36(v21, v37, v176);
      v36(v18, v21, v38);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        a7 = sub_1AF4276E0(0, v193[2] + 1, 1, v193, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
      }

      v40 = a7[2];
      v39 = a7[3];
      if (v40 >= v39 >> 1)
      {
        a7 = sub_1AF4276E0(v39 > 1, v40 + 1, 1, a7, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
      }

      v41 = v21;
      v42 = v176;
      (*(v35 + 8))(v41, v176);
      a7[2] = v40 + 1;
      (*(v35 + 32))(a7 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v40, v18, v42);
      v43 = sub_1AF3FC1C0(v195, v194, 1, v200, v196 & 1, a7);
      v45 = v44;

      v46 = *(v45 + 16);
      if (v46)
      {
        v208[0] = MEMORY[0x1E69E7CC0];
        sub_1AFDFE368();
        v47 = 32;
        do
        {
          if (*(v43 + 16))
          {
            sub_1AF0D3F10(*(v45 + v47));
            if (v48)
            {
            }
          }

          sub_1AFDFE328();
          sub_1AFDFE398();
          sub_1AFDFE3A8();
          sub_1AFDFE348();
          v47 += 8;
          --v46;
        }

        while (v46);

        v49 = v208[0];
      }

      else
      {

        v49 = MEMORY[0x1E69E7CC0];
      }

      type metadata accessor for Graph();
      v50 = swift_allocObject();
      *(v50 + 16) = v49;
      *(v169 + OBJC_IVAR____TtC3VFX12SubGraphNode_graph) = v50;

      a1 = v34;
      a5 = v197;
      v29 = v192;
    }

    v51 = v200 >> 59;
    v190 = 0;
    if (((v200 >> 59) & 2) != 0)
    {
      v52 = 0;
      v167 = 0;
      v166 = 0;
      v165 = 0;
      v164 = 0;
      v163 = 0;
    }

    else
    {
      ((*a1)[3].info)(v207);
      v52 = v207[0];
      v167 = v207[1];
      v166 = v207[2];
      v165 = v207[3];
      v164 = v207[4];
      v163 = v207[5];
    }

    v168 = a1;
    v53 = a1[2];
    cache = v53->cache;
    v55 = MEMORY[0x1E69E7CC0];
    v178 = v52;
    if (cache)
    {
      v199 = v51;
      v208[0] = MEMORY[0x1E69E7CC0];

      sub_1AFC05E2C(0, cache, 0);
      v56 = 0;
      v51 = v208[0];
      v57 = *(v208[0] + 16);
      v58 = 16 * v57;
      do
      {
        v59 = *(&v53->info + v56);
        v60 = *(&v53[1].isa + v56);
        v208[0] = v51;
        v61 = *(v51 + 24);
        v62 = v57 + 1;

        if (v57 >= v61 >> 1)
        {
          sub_1AFC05E2C(v61 > 1, v62, 1);
          v51 = v208[0];
        }

        *(v51 + 16) = v62;
        v63 = v51 + v58 + v56;
        *(v63 + 32) = v59;
        *(v63 + 40) = v60;
        v56 += 16;
        ++v57;
        --cache;
      }

      while (cache);

      v55 = v51;
      a5 = v197;
      v29 = v192;
      v52 = v178;
      v64 = v190;
      LOBYTE(v51) = v199;
    }

    else
    {
      v64 = v190;
    }

    v191 = a11;
    v65 = *(v55 + 16);
    if (!v65)
    {
      v177 = v196 & 1;
LABEL_121:

      sub_1AF441284(v52, v167, v166, v165, v164, v163);
      v146 = v169;

      v148 = sub_1AF3D76CC(v147, v29, a5);

      v146[2] = v148;

      v149 = swift_allocObject();
      v150 = v195;
      v151 = v194;
      *(v149 + 16) = v195;
      *(v149 + 24) = v151;
      v152 = v187;

      v153 = v200;
      sub_1AF4410E4(v200, sub_1AF4410A8);

      v154 = swift_allocObject();
      *(v154 + 16) = 1;
      *(v154 + 24) = v153;
      *(v154 + 32) = v177;
      *(v154 + 40) = a5;
      *(v154 + 48) = v152;
      v155 = v193;
      *(v154 + 56) = v193;
      *(v154 + 64) = v150;
      *(v154 + 72) = v151;
      *(v154 + 80) = v29;
      v156 = v191;
      *(v154 + 88) = v191;
      v157 = swift_allocObject();
      *(v157 + 16) = sub_1AF449D80;
      *(v157 + 24) = v154;
      *&v201 = v152;
      *(&v201 + 1) = v146;
      v202 = v155;
      v203 = sub_1AF449D48;
      v204 = v157;
      v205 = v156;

      sub_1AF449DC0(&v201, &v206);
      if (!v64)
      {

        v25 = v206;
        swift_isEscapingClosureAtFileLocation();

        swift_isEscapingClosureAtFileLocation();

        v159 = v168;
        sub_1AF3D8F00(v158, v168, sub_1AF634178, sub_1AF6B761C, sub_1AF849498);

        v160 = swift_isUniquelyReferenced_nonNull_native();
        *&v201 = *v29;
        *v29 = 0x8000000000000000;
        sub_1AF850FDC(0, v159, v160);
        *v29 = v201;

        goto LABEL_123;
      }

LABEL_132:

      swift_isEscapingClosureAtFileLocation();

      swift_isEscapingClosureAtFileLocation();
      while (1)
      {

        swift_unexpectedError();
        __break(1u);
LABEL_128:

        swift_isEscapingClosureAtFileLocation();

        swift_isEscapingClosureAtFileLocation();

LABEL_126:
        sub_1AF441284(v178, v167, v166, v165, v164, v163);
      }
    }

    v190 = v64;
    v66 = 0;
    v174 = v51 & 2;
    LODWORD(v199) = v174 | (v200 >> 2) & 1;
    v188 = v55 + 32;
    v172 = v52 + 32;
    v171 = (v198 + 16);
    v170 = (v198 + 8);
    v185 = v55;
    v177 = v196 & 1;
    v175 = v65;
    while (1)
    {
      v68 = *(v188 + 16 * v66);
      if (!v68)
      {
        goto LABEL_43;
      }

      if (v52 && v66 < *(v52 + 16))
      {
        v69 = *(v172 + 8 * v66);
        sub_1AF4410A8(v69);
      }

      else
      {
        v69 = 0xA000000000000000;
      }

      if (v199)
      {
        if (v199 == 1)
        {
          v70 = sub_1AF9C5694(v69, v200 & 0xEFFFFFFFFFFFFFFBLL);
          sub_1AF441114(v69);
          if (v70)
          {
            goto LABEL_42;
          }
        }

        else
        {
          sub_1AF441114(v69);
        }
      }

      else
      {
        v71 = sub_1AF9C5694(v69, v200);
        sub_1AF441114(v69);
        if (!v71)
        {
          goto LABEL_42;
        }
      }

      if (!*(*a5 + 16) || (sub_1AF0D3F10(v68), (v72 & 1) == 0))
      {
        if (*(*v29 + 16))
        {
          sub_1AF0D3F10(v68);
          v73 = v190;
          if (v74)
          {
            goto LABEL_131;
          }
        }

        else
        {
          v73 = v190;
        }

        v75 = swift_isUniquelyReferenced_nonNull_native();
        *&v201 = *v29;
        v76 = v201;
        *v29 = 0x8000000000000000;
        v77 = sub_1AF0D3F10(v68);
        v79 = v78;
        v80 = *(v76 + 16) + ((v78 & 1) == 0);
        if (*(v76 + 24) >= v80)
        {
          if (v75)
          {
            goto LABEL_66;
          }

          v83 = v73;
          v84 = v77;
          sub_1AF843F7C();
          v77 = v84;
          v73 = v83;
          v82 = v201;
          if ((v79 & 1) == 0)
          {
            goto LABEL_69;
          }

LABEL_67:
          *(v82[7] + v77) = 1;
        }

        else
        {
          sub_1AF82BC4C(v80, v75);
          v77 = sub_1AF0D3F10(v68);
          if ((v79 & 1) != (v81 & 1))
          {
            sub_1AFDFF1A8();
            __break(1u);
LABEL_131:
            sub_1AFDFE518();
            __break(1u);
            goto LABEL_132;
          }

LABEL_66:
          v82 = v201;
          if (v79)
          {
            goto LABEL_67;
          }

LABEL_69:
          v82[(v77 >> 6) + 8] |= 1 << v77;
          *(v82[6] + 8 * v77) = v68;
          *(v82[7] + v77) = 1;
          ++v82[2];
        }

        *v29 = v82;

        v85 = v68;
        if (v196)
        {
          v85 = sub_1AF96FB80(1);
        }

        v86 = sub_1AF96CD1C(v85);
        v186 = v68;
        v189 = v85;
        v184 = v66;
        if (v86)
        {
          v87 = v173;
          v88 = v176;
          (*v171)(v173, v85 + OBJC_IVAR____TtC3VFX4Node_authoringID, v176);
          v89 = sub_1AF3D88AC(v87, v193);
          (*v170)(v87, v88);
          v90 = sub_1AF3FC1C0(v195, v194, 1, v200, v196 & 1, v89);
          if (v73)
          {

            goto LABEL_126;
          }

          v92 = v90;
          v93 = v91;

          v94 = *(v93 + 16);
          v95 = MEMORY[0x1E69E7CC0];
          if (v94)
          {
            *&v201 = MEMORY[0x1E69E7CC0];
            sub_1AFDFE368();
            v96 = (v93 + 32);
            do
            {
              if (*(v92 + 16))
              {
                sub_1AF0D3F10(*v96);
                if (v97)
                {
                }
              }

              sub_1AFDFE328();
              sub_1AFDFE398();
              sub_1AFDFE3A8();
              sub_1AFDFE348();
              ++v96;
              --v94;
            }

            while (v94);

            v98 = v201;
          }

          else
          {

            v98 = v95;
          }

          type metadata accessor for Graph();
          v99 = swift_allocObject();
          *(v99 + 16) = v98;
          *(v189 + OBJC_IVAR____TtC3VFX12SubGraphNode_graph) = v99;

          v68 = v186;
        }

        else
        {
          v95 = MEMORY[0x1E69E7CC0];
        }

        v100 = v187;
        v190 = v73;
        if (v174)
        {
          v101 = 0;
          v183 = 0;
          v182 = 0;
          v181 = 0;
          v180 = 0;
          v179 = 0;
        }

        else
        {
          ((*v68)[3].info)(v208);
          v101 = v208[0];
          v183 = v208[1];
          v182 = v208[2];
          v181 = v208[3];
          v180 = v208[4];
          v179 = v208[5];
        }

        v102 = v68[2];
        v103 = v102->cache;
        v198 = v101;
        if (v103)
        {
          *&v201 = v95;

          sub_1AFC05E2C(0, v103, 0);
          v104 = 0;
          v105 = v201;
          v106 = *(v201 + 16);
          v107 = 16 * v106;
          do
          {
            v109 = *(&v102->info + v104);
            v108 = *(&v102[1].isa + v104);
            *&v201 = v105;
            v110 = *(v105 + 24);
            v111 = v106 + 1;

            if (v106 >= v110 >> 1)
            {
              sub_1AFC05E2C(v110 > 1, v111, 1);
              v105 = v201;
            }

            *(v105 + 16) = v111;
            v112 = v105 + v107 + v104;
            *(v112 + 32) = v109;
            *(v112 + 40) = v108;
            v104 += 16;
            ++v106;
            --v103;
          }

          while (v103);

          v100 = v187;
          v101 = v198;
        }

        else
        {
          v105 = v95;
        }

        v113 = *(v105 + 16);
        v114 = v190;
        if (v113)
        {
          v115 = 0;
          v116 = v101 + 32;
          v117 = 32;
          while (2)
          {
            v118 = *(v105 + v117);
            if (!v118)
            {
              goto LABEL_97;
            }

            if (v101 && v115 < *(v101 + 16))
            {
              v119 = *(v116 + 8 * v115);
              sub_1AF4410A8(v119);
            }

            else
            {
              v119 = 0xA000000000000000;
            }

            if (v199)
            {
              if (v199 != 1)
              {
                sub_1AF441114(v119);
                goto LABEL_110;
              }

              v120 = sub_1AF9C5694(v119, v200 & 0xEFFFFFFFFFFFFFFBLL);
              sub_1AF441114(v119);
              if (!v120)
              {
LABEL_110:
                sub_1AF3E3638(v118, 1, v200, v196 & 1, v193, v195, v194, v192, v197, v191);
                if (v114)
                {

                  sub_1AF441284(v198, v183, v182, v181, v180, v179);
                  goto LABEL_126;
                }
              }
            }

            else
            {
              v121 = sub_1AF9C5694(v119, v200);
              sub_1AF441114(v119);
              if (v121)
              {
                goto LABEL_110;
              }
            }

            v101 = v198;
LABEL_97:
            ++v115;
            v117 += 16;
            if (v113 == v115)
            {
              break;
            }

            continue;
          }
        }

        sub_1AF441284(v101, v183, v182, v181, v180, v179);
        v122 = v100;
        v123 = v189;

        v125 = v192;
        v126 = v197;
        v127 = sub_1AF3D76CC(v124, v192, v197);

        v123[2] = v127;

        v128 = swift_allocObject();
        v129 = v195;
        v130 = v194;
        *(v128 + 16) = v195;
        *(v128 + 24) = v130;

        v131 = v200;
        sub_1AF4410E4(v200, sub_1AF4410A8);

        v132 = swift_allocObject();
        *(v132 + 16) = 1;
        *(v132 + 24) = v131;
        *(v132 + 32) = v177;
        *(v132 + 40) = v126;
        *(v132 + 48) = v122;
        v133 = v193;
        *(v132 + 56) = v193;
        *(v132 + 64) = v129;
        *(v132 + 72) = v130;
        *(v132 + 80) = v125;
        v134 = v125;
        v135 = v191;
        *(v132 + 88) = v191;
        v136 = swift_allocObject();
        *(v136 + 16) = sub_1AF449D80;
        *(v136 + 24) = v132;
        *&v201 = v122;
        *(&v201 + 1) = v123;
        v202 = v133;
        v203 = sub_1AF449D48;
        v204 = v136;
        v205 = v135;
        swift_bridgeObjectRetain_n();

        sub_1AF449DC0(&v201, &v206);
        v190 = v114;
        if (v114)
        {
          goto LABEL_128;
        }

        swift_isEscapingClosureAtFileLocation();

        swift_isEscapingClosureAtFileLocation();

        v137 = swift_retain_n();
        v138 = v186;
        a5 = v197;
        v139 = sub_1AF634178(v137, v186);
        v52 = v178;
        if (v139)
        {

          v65 = v175;
          v66 = v184;
          v29 = v134;
        }

        else
        {
          v140 = a5[1];
          v141 = swift_isUniquelyReferenced_nonNull_native();
          a5[1] = v140;
          v65 = v175;
          v66 = v184;
          v29 = v134;
          if ((v141 & 1) == 0)
          {
            v140 = sub_1AF422330(0, *(v140 + 2) + 1, 1, v140, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
            a5[1] = v140;
          }

          v143 = *(v140 + 2);
          v142 = *(v140 + 3);
          if (v143 >= v142 >> 1)
          {
            a5[1] = sub_1AF422330(v142 > 1, v143 + 1, 1, v140, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
          }

          v144 = a5[1];
          *(v144 + 16) = v143 + 1;
          v145 = v144 + 8 * v143;
          v138 = v186;
          *(v145 + 32) = v186;
          v52 = v178;
        }

        v67 = swift_isUniquelyReferenced_nonNull_native();
        *&v201 = *v29;
        *v29 = 0x8000000000000000;
        sub_1AF850FDC(0, v138, v67);
        *v29 = v201;
      }

LABEL_42:

LABEL_43:
      if (++v66 == v65)
      {
        v64 = v190;
        goto LABEL_121;
      }
    }
  }

  v23 = sub_1AF0D3F10(a1);
  if ((v24 & 1) == 0)
  {
    v26 = *(v22 + 16);

    if (v26)
    {
      v27 = sub_1AF0D3F10(a1);
      if (v28)
      {
        v25 = *(*(v22 + 56) + 8 * v27);

LABEL_123:

        return v25;
      }
    }

    goto LABEL_9;
  }

  v25 = *(*(v22 + 56) + 8 * v23);

  return v25;
}

uint64_t sub_1AF40BD28(__objc2_class **a1, uint64_t a2, unint64_t a3, int a4, uint64_t *a5, uint64_t a6, char *a7, uint64_t a8, uint64_t a9, uint64_t *a10, char *a11)
{
  v170 = a8;
  v167 = a4;
  v176 = a3;
  v14 = a2;
  v154 = sub_1AFDFC318();
  v16 = *(v154 - 8);
  MEMORY[0x1EEE9AC00](v154);
  v149 = &v139 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v139 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v139 - v22;
  if ((v14 & 1) == 0)
  {
    goto LABEL_112;
  }

  v165 = a5;
  v24 = *a5;
  if (!*(*a5 + 16))
  {

LABEL_9:
    v31 = a10;
    if (*(*a10 + 16))
    {
      sub_1AF0D3F10(a1);
      if (v32)
      {
        goto LABEL_112;
      }
    }

    v169 = a9;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v184 = *a10;
    *a10 = 0x8000000000000000;
    sub_1AF850FDC(1, a1, isUniquelyReferenced_nonNull_native);
    *a10 = v184;

    v34 = sub_1AF96CD1C(a1);
    v150 = a6;
    if (v34)
    {
      v35 = *(v16 + 16);
      v36 = v154;
      v35(v23, a1 + OBJC_IVAR____TtC3VFX4Node_authoringID, v154);
      v35(v20, v23, v36);

      v37 = a7;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = sub_1AF4276E0(0, *(a7 + 2) + 1, 1, a7, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
      }

      v39 = v37[2];
      v38 = v37[3];
      if (v39 >= v38 >> 1)
      {
        v37 = sub_1AF4276E0(v38 > 1, v39 + 1, 1, v37, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
      }

      v40 = v23;
      v41 = v154;
      (*(v16 + 8))(v40, v154);
      v37[2] = v39 + 1;
      (*(v16 + 32))(v37 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v39, v20, v41);
      v184 = sub_1AF4415B4(MEMORY[0x1E69E7CC0]);
      v185 = v42;
      v43 = 0;
      sub_1AF414A20(v170, v169, 1, v176, v167 & 1, v37, &v184);

      a6 = v150;
    }

    else
    {

      v43 = 0;
    }

    v175 = v176 >> 59;
    if (((v176 >> 59) & 2) != 0)
    {
      v155 = 0;
      v144 = 0;
      v143 = 0;
      v142 = 0;
      v141 = 0;
      v140 = 0;
    }

    else
    {
      ((*a1)[3].info)(v183, v44);
      v155 = v183[0];
      v144 = v183[1];
      v143 = v183[2];
      v142 = v183[3];
      v141 = v183[4];
      v140 = v183[5];
    }

    v174 = v16;
    v145 = a1;
    v45 = a1[2];
    cache = v45->cache;
    v47 = MEMORY[0x1E69E7CC0];
    v172 = a10;
    v171 = a7;
    if (cache)
    {
      v162 = 0;
      v184 = MEMORY[0x1E69E7CC0];

      sub_1AFC05E2C(0, cache, 0);
      v48 = 0;
      v49 = v184;
      v50 = v184[2];
      v51 = 2 * v50;
      do
      {
        v52 = *(&v45->info + v48 * 8);
        v53 = *(&v45[1].isa + v48 * 8);
        v184 = v49;
        v54 = v49[3];
        v55 = v50 + 1;

        if (v50 >= v54 >> 1)
        {
          sub_1AFC05E2C(v54 > 1, v55, 1);
          v49 = v184;
        }

        v49[2] = v55;
        v56 = &v49[v51 + v48];
        v56[4] = v52;
        v56[5] = v53;
        v48 += 2;
        ++v50;
        --cache;
      }

      while (cache);

      a6 = v150;
      v47 = v49;
      v31 = v172;
      a7 = v171;
      v43 = v162;
    }

    v57 = a7;
    v168 = a11;
    v58 = v47[2];
    v59 = v155;
    v139 = v47;
    if (!v58)
    {
LABEL_98:

      sub_1AF441284(v59, v144, v143, v142, v141, v140);
      sub_1AF449890(0, &unk_1EB63F440, type metadata accessor for GraphCodeGen.CFGNode, MEMORY[0x1E69E6720]);
      type metadata accessor for Node(0);
      if (swift_dynamicCastMetatype())
      {
        v124 = v145;

        v126 = v165;
        v127 = sub_1AF3D72E8(v125, v31);
        v162 = v43;

        *(v124 + 16) = v127;
      }

      else
      {
        type metadata accessor for AuthoringNode(0);
        v126 = v165;
        v162 = v43;
        v124 = v145;
      }

      v128 = swift_allocObject();
      v129 = v170;
      v130 = v169;
      *(v128 + 16) = v170;
      *(v128 + 24) = v130;

      v131 = v176;
      sub_1AF4410E4(v176, sub_1AF4410A8);

      v132 = swift_allocObject();
      *(v132 + 16) = 1;
      *(v132 + 24) = v131;
      *(v132 + 32) = v167 & 1;
      *(v132 + 40) = v126;
      *(v132 + 48) = a6;
      *(v132 + 56) = v57;
      *(v132 + 64) = v129;
      *(v132 + 72) = v130;
      *(v132 + 80) = v31;
      v133 = v168;
      *(v132 + 88) = v168;
      v134 = swift_allocObject();
      *(v134 + 16) = sub_1AF449D74;
      *(v134 + 24) = v132;
      *&v177 = a6;
      *(&v177 + 1) = v124;
      v178 = v57;
      v179 = sub_1AF449D48;
      v180 = v134;
      v181 = v133;

      v135 = v162;
      sub_1AF449DC0(&v177, &v182);
      if (!v135)
      {

        v27 = v182;
        swift_isEscapingClosureAtFileLocation();

        swift_isEscapingClosureAtFileLocation();

        sub_1AF3D9030(v136, v124, sub_1AF6342E4, sub_1AF449DA4, sub_1AF6B761C, sub_1AF84CDCC);
        v137 = swift_isUniquelyReferenced_nonNull_native();
        *&v177 = *v31;
        *v31 = 0x8000000000000000;
        sub_1AF850FDC(0, v124, v137);
        *v31 = v177;

        goto LABEL_103;
      }

LABEL_113:

      swift_isEscapingClosureAtFileLocation();

      swift_isEscapingClosureAtFileLocation();
      while (1)
      {

        swift_unexpectedError();
        __break(1u);
LABEL_109:

        swift_isEscapingClosureAtFileLocation();

        swift_isEscapingClosureAtFileLocation();

LABEL_106:

LABEL_107:
        sub_1AF441284(v155, v144, v143, v142, v141, v140);
      }
    }

    v60 = 0;
    v152 = v175 & 2;
    LODWORD(v175) = v152 | (v176 >> 2) & 1;
    v164 = v47 + 4;
    v148 = v155 + 32;
    v147 = (v174 + 16);
    v146 = (v174 + 8);
    v151 = v167 & 1;
    v153 = v58;
    while (1)
    {
      v173 = v164[2 * v60];
      if (!v173)
      {
        goto LABEL_30;
      }

      if (v59 && v60 < *(v59 + 16))
      {
        v61 = *(v148 + 8 * v60);
        sub_1AF4410A8(v61);
      }

      else
      {
        v61 = 0xA000000000000000;
      }

      if (v175)
      {
        if (v175 == 1)
        {
          v62 = sub_1AF9C5694(v61, v176 & 0xEFFFFFFFFFFFFFFBLL);
          sub_1AF441114(v61);
          if (v62)
          {
            goto LABEL_29;
          }
        }

        else
        {
          sub_1AF441114(v61);
        }
      }

      else
      {
        v63 = sub_1AF9C5694(v61, v176);
        sub_1AF441114(v61);
        if (!v63)
        {
          goto LABEL_29;
        }
      }

      if (!*(*v165 + 16) || (sub_1AF0D3F10(v173), (v64 & 1) == 0))
      {
        v161 = v60;
        if (*(*v31 + 16))
        {
          v65 = v173;
          sub_1AF0D3F10(v173);
          v66 = MEMORY[0x1E69E7CC0];
          if (v67)
          {
            goto LABEL_112;
          }
        }

        else
        {
          v66 = MEMORY[0x1E69E7CC0];
          v65 = v173;
        }

        v68 = swift_isUniquelyReferenced_nonNull_native();
        *&v177 = *v31;
        v69 = v177;
        *v31 = 0x8000000000000000;
        v70 = sub_1AF0D3F10(v65);
        v72 = v71;
        v73 = *(v69 + 16) + ((v71 & 1) == 0);
        if (*(v69 + 24) >= v73)
        {
          if (v68)
          {
            goto LABEL_53;
          }

          v76 = v43;
          v77 = v70;
          sub_1AF843F7C();
          v70 = v77;
          v43 = v76;
          v75 = v177;
          if ((v72 & 1) == 0)
          {
            goto LABEL_56;
          }

LABEL_54:
          *(v75[7] + v70) = 1;
        }

        else
        {
          sub_1AF82BC4C(v73, v68);
          v70 = sub_1AF0D3F10(v65);
          if ((v72 & 1) != (v74 & 1))
          {
            sub_1AFDFF1A8();
            __break(1u);
LABEL_112:
            sub_1AFDFE518();
            __break(1u);
            goto LABEL_113;
          }

LABEL_53:
          v75 = v177;
          if (v72)
          {
            goto LABEL_54;
          }

LABEL_56:
          v75[(v70 >> 6) + 8] |= 1 << v70;
          *(v75[6] + 8 * v70) = v65;
          *(v75[7] + v70) = 1;
          ++v75[2];
        }

        *v31 = v75;

        v163 = swift_allocObject();
        *(v163 + 16) = v65;
        if (sub_1AF96CD1C(v65))
        {
          v78 = v149;
          v79 = v154;
          (*v147)(v149, v65 + OBJC_IVAR____TtC3VFX4Node_authoringID, v154);

          v80 = sub_1AF3D88AC(v78, v57);
          (*v146)(v78, v79);
          *&v177 = sub_1AF4415B4(v66);
          *(&v177 + 1) = v81;
          sub_1AF414A20(v170, v169, 1, v176, v167 & 1, v80, &v177);
          if (v43)
          {

            goto LABEL_107;
          }
        }

        else
        {
        }

        v83 = v165;
        v162 = v43;
        if (v152)
        {
          v84 = 0;
          v160 = 0;
          v159 = 0;
          v158 = 0;
          v157 = 0;
          v156 = 0;
        }

        else
        {
          (*(*v65 + 152))(&v184, v82);
          v84 = v184;
          v160 = v185;
          v159 = v186;
          v158 = v187;
          v157 = v188;
          v156 = v189;
        }

        v85 = *(v65 + 16);
        v86 = *(v85 + 16);
        v174 = v84;
        if (v86)
        {
          *&v177 = v66;

          sub_1AFC05E2C(0, v86, 0);
          v87 = 0;
          v88 = v177;
          v89 = *(v177 + 16);
          v90 = 16 * v89;
          do
          {
            v92 = *(v85 + v87 + 32);
            v91 = *(v85 + v87 + 40);
            *&v177 = v88;
            v93 = *(v88 + 24);
            v94 = v89 + 1;

            if (v89 >= v93 >> 1)
            {
              sub_1AFC05E2C(v93 > 1, v94, 1);
              v88 = v177;
            }

            *(v88 + 16) = v94;
            v95 = v88 + v90 + v87;
            *(v95 + 32) = v92;
            *(v95 + 40) = v91;
            v87 += 16;
            ++v89;
            --v86;
          }

          while (v86);

          a6 = v150;
          v83 = v165;
          v84 = v174;
        }

        else
        {
          v88 = v66;
        }

        v96 = *(v88 + 16);
        v43 = v162;
        if (v96)
        {
          v97 = 0;
          v166 = v84 + 32;
          v98 = 32;
          while (2)
          {
            v99 = *(v88 + v98);
            if (!v99)
            {
              goto LABEL_74;
            }

            if (v84 && v97 < *(v84 + 16))
            {
              v100 = *(v166 + 8 * v97);
              sub_1AF4410A8(v100);
            }

            else
            {
              v100 = 0xA000000000000000;
            }

            if (v175)
            {
              if (v175 != 1)
              {
                sub_1AF441114(v100);
                goto LABEL_87;
              }

              v101 = sub_1AF9C5694(v100, v176 & 0xEFFFFFFFFFFFFFFBLL);
              sub_1AF441114(v100);
              if (!v101)
              {
LABEL_87:
                sub_1AF3E4408(v99, 1, v176, v167 & 1, v171, v170, v169, v172, v83, v168);
                if (v43)
                {

                  sub_1AF441284(v174, v160, v159, v158, v157, v156);
                  goto LABEL_106;
                }
              }
            }

            else
            {
              v102 = sub_1AF9C5694(v100, v176);
              sub_1AF441114(v100);
              if (v102)
              {
                goto LABEL_87;
              }
            }

            v84 = v174;
LABEL_74:
            ++v97;
            v98 += 16;
            if (v96 == v97)
            {
              break;
            }

            continue;
          }
        }

        sub_1AF441284(v84, v160, v159, v158, v157, v156);
        v103 = v172;
        sub_1AF3FC9A0(v163, v172);
        v104 = swift_allocObject();
        v105 = v170;
        v106 = v169;
        *(v104 + 16) = v170;
        *(v104 + 24) = v106;

        v107 = v176;
        sub_1AF4410E4(v176, sub_1AF4410A8);

        v108 = swift_allocObject();
        *(v108 + 16) = 1;
        *(v108 + 24) = v107;
        *(v108 + 32) = v151;
        *(v108 + 40) = v83;
        *(v108 + 48) = a6;
        v109 = v171;
        *(v108 + 56) = v171;
        *(v108 + 64) = v105;
        *(v108 + 72) = v106;
        *(v108 + 80) = v103;
        v110 = v168;
        *(v108 + 88) = v168;
        v111 = swift_allocObject();
        *(v111 + 16) = sub_1AF449D74;
        *(v111 + 24) = v108;
        v112 = v173;
        *&v177 = a6;
        *(&v177 + 1) = v173;
        v178 = v109;
        v179 = sub_1AF449D48;
        v180 = v111;
        v181 = v110;
        swift_bridgeObjectRetain_n();

        sub_1AF449DC0(&v177, &v182);
        if (v43)
        {
          goto LABEL_109;
        }

        swift_isEscapingClosureAtFileLocation();

        swift_isEscapingClosureAtFileLocation();

        v113 = swift_retain_n();
        v114 = sub_1AF6342E4(v113, v112);
        if (v114 == 1)
        {
          v115 = v83[1];
          v116 = swift_isUniquelyReferenced_nonNull_native();
          v83[1] = v115;
          if ((v116 & 1) == 0)
          {
            v115 = sub_1AF422330(0, *(v115 + 2) + 1, 1, v115, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
            v165[1] = v115;
          }

          v57 = v171;
          v118 = *(v115 + 2);
          v117 = *(v115 + 3);
          v31 = v172;
          if (v118 >= v117 >> 1)
          {
            v123 = sub_1AF422330(v117 > 1, v118 + 1, 1, v115, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
            v165[1] = v123;
          }

          v119 = v165[1];
          *(v119 + 16) = v118 + 1;
          v120 = v173;
          *(v119 + 8 * v118 + 32) = v173;
          v43 = 0;
          v59 = v155;
        }

        else
        {
          v121 = v114;

          sub_1AF0DB74C(v121);
          v59 = v155;
          v120 = v173;
          v57 = v171;
          v31 = v172;
        }

        v122 = swift_isUniquelyReferenced_nonNull_native();
        *&v177 = *v31;
        *v31 = 0x8000000000000000;
        sub_1AF850FDC(0, v120, v122);
        *v31 = v177;

        v58 = v153;
        v60 = v161;
      }

LABEL_29:

LABEL_30:
      if (++v60 == v58)
      {
        goto LABEL_98;
      }
    }
  }

  v25 = sub_1AF0D3F10(a1);
  if ((v26 & 1) == 0)
  {
    v28 = *(v24 + 16);

    if (v28)
    {
      v29 = sub_1AF0D3F10(a1);
      if (v30)
      {
        v27 = *(*(v24 + 56) + 8 * v29);

LABEL_103:

        return v27;
      }
    }

    goto LABEL_9;
  }

  v27 = *(*(v24 + 56) + 8 * v25);

  return v27;
}

uint64_t sub_1AF40D3A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, int a4@<W3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t *a11, uint64_t a12)
{
  v201 = a8;
  v202 = a7;
  v197 = a6;
  v198 = a4;
  v207 = a3;
  v13 = a2;
  v186 = sub_1AFDFC318();
  v16 = *(v186 - 8);
  MEMORY[0x1EEE9AC00](v186);
  v182 = &v171 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v171 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v171 - v22;
  if ((v13 & 1) == 0)
  {
    goto LABEL_114;
  }

  v204 = a5;
  v24 = *a5;
  if (!*(*a5 + 16))
  {
    v178 = a9;

LABEL_9:
    v203 = a11;
    if (*(*a11 + 16))
    {
      sub_1AF0D3F10(a1);
      if (v56)
      {
        goto LABEL_114;
      }

      v57 = v203;
    }

    else
    {
      v57 = v203;
    }

    v200 = a10;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v248 = *v57;
    *v57 = 0x8000000000000000;
    sub_1AF850FDC(1, a1, isUniquelyReferenced_nonNull_native);
    *v57 = v248;

    v208 = sub_1AF96CD1C(a1);
    v205 = v16;
    if (v208)
    {
      v59 = *(v16 + 16);
      v60 = v186;
      v59(v23, a1 + OBJC_IVAR____TtC3VFX4Node_authoringID, v186);
      v59(v20, v23, v60);

      v61 = v202;

      v62 = v61;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v62 = sub_1AF4276E0(0, v61[2] + 1, 1, v61, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
      }

      v64 = v62[2];
      v63 = v62[3];
      if (v64 >= v63 >> 1)
      {
        v62 = sub_1AF4276E0(v63 > 1, v64 + 1, 1, v62, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
      }

      v65 = v205;
      v66 = v23;
      v67 = v186;
      (*(v205 + 8))(v66, v186);
      v62[2] = v64 + 1;
      (*(v65 + 32))(v62 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v64, v20, v67);
      *&v248 = sub_1AF4417E8(MEMORY[0x1E69E7CC0]);
      *(&v248 + 1) = v68;
      v69 = 0;
      sub_1AF416014(v201, v200, 1, v207, v198 & 1, v62, &v248);
    }

    else
    {

      v69 = 0;
    }

    v71 = v207 >> 59;
    if (((v207 >> 59) & 2) != 0)
    {
      v72 = 0;
      v175 = 0;
      v176 = 0;
      v173 = 0;
      v174 = 0;
      v172 = 0;
    }

    else
    {
      (*(*a1 + 152))(v238, v70);
      v72 = v238[0];
      v175 = v238[2];
      v176 = v238[1];
      v173 = v238[4];
      v174 = v238[3];
      v172 = v238[5];
    }

    v177 = a1;
    v73 = *(a1 + 16);
    v74 = *(v73 + 16);
    v75 = MEMORY[0x1E69E7CC0];
    v187 = v72;
    if (v74)
    {
      v206 = v71;
      v194 = 0;
      *&v248 = MEMORY[0x1E69E7CC0];

      sub_1AFC05E2C(0, v74, 0);
      v76 = 0;
      v75 = v248;
      v77 = *(v248 + 16);
      v208 = 16 * v77;
      do
      {
        v78 = v73;
        v80 = *(v73 + v76 + 32);
        v79 = *(v73 + v76 + 40);
        *&v248 = v75;
        v81 = *(v75 + 24);
        v82 = v77 + 1;

        if (v77 >= v81 >> 1)
        {
          sub_1AFC05E2C(v81 > 1, v82, 1);
          v75 = v248;
        }

        *(v75 + 16) = v82;
        v83 = v75 + v208 + v76;
        *(v83 + 32) = v80;
        *(v83 + 40) = v79;
        v76 += 16;
        ++v77;
        --v74;
        v73 = v78;
      }

      while (v74);

      v69 = v194;
      v72 = v187;
      LOBYTE(v71) = v206;
    }

    v199 = a12;
    v84 = *(v75 + 16);
    v85 = v203;
    v171 = v75;
    if (!v84)
    {
LABEL_102:

      sub_1AF441284(v72, v176, v175, v174, v173, v172);
      sub_1AF449B08(0, &qword_1EB638710, &type metadata for GraphCodeGen.CodeGenAtom, MEMORY[0x1E69E6720]);
      type metadata accessor for Node(0);
      if (swift_dynamicCastMetatype())
      {
        v154 = v177;

        v156 = sub_1AF3D72E8(v155, v85);

        *(v154 + 16) = v156;
      }

      else
      {
        type metadata accessor for AuthoringNode(0);
        v154 = v177;
      }

      v157 = swift_allocObject();
      v159 = v200;
      v158 = v201;
      *(v157 + 16) = v201;
      *(v157 + 24) = v159;
      v160 = v197;

      v161 = v207;
      sub_1AF4410E4(v207, sub_1AF4410A8);

      v162 = swift_allocObject();
      *(v162 + 16) = 1;
      *(v162 + 24) = v161;
      *(v162 + 32) = v198 & 1;
      v163 = v203;
      *(v162 + 40) = v204;
      *(v162 + 48) = v160;
      v164 = v202;
      *(v162 + 56) = v202;
      *(v162 + 64) = v158;
      *(v162 + 72) = v159;
      *(v162 + 80) = v163;
      v165 = v199;
      *(v162 + 88) = v199;
      v166 = swift_allocObject();
      *(v166 + 16) = sub_1AF449D70;
      *(v166 + 24) = v162;
      *&v225 = v160;
      *(&v225 + 1) = v154;
      v226 = v164;
      v227 = sub_1AF449D50;
      v228 = v166;
      v229 = v165;

      sub_1AF449CCC(&v225);
      if (!v69)
      {

        swift_isEscapingClosureAtFileLocation();

        swift_isEscapingClosureAtFileLocation();

        v234 = v213;
        v235 = v214;
        v236 = v215;
        v237 = v216;
        v230 = v209;
        v231 = v210;
        v232 = v211;
        v233 = v212;
        v240 = v209;
        v241 = v210;
        v242 = v211;
        v243 = v212;
        v244 = v213;
        v245 = v214;
        v246 = v215;
        v247 = v216;
        sub_1AF0D8094(&v230, &v217, &qword_1EB638710, &type metadata for GraphCodeGen.CodeGenAtom, MEMORY[0x1E69E6720], sub_1AF449B08);
        sub_1AF3D9194(&v240, v154);
        v167 = v203;
        v168 = swift_isUniquelyReferenced_nonNull_native();
        *&v217 = *v167;
        *v167 = 0x8000000000000000;
        sub_1AF850FDC(0, v154, v168);
        *v167 = v217;

        v169 = v214;
        v52 = v178;
        *(v178 + 4) = v213;
        *(v52 + 5) = v169;
        *(v52 + 6) = v215;
        v52[14] = v216;
        v170 = v210;
        *v52 = v209;
        *(v52 + 1) = v170;
        v54 = v211;
        v55 = v212;
        goto LABEL_107;
      }

LABEL_115:

      swift_isEscapingClosureAtFileLocation();

      swift_isEscapingClosureAtFileLocation();
      while (1)
      {

        swift_unexpectedError();
        __break(1u);
LABEL_111:

        swift_isEscapingClosureAtFileLocation();

        swift_isEscapingClosureAtFileLocation();

LABEL_109:
        sub_1AF441284(v187, v176, v175, v174, v173, v172);
      }
    }

    v86 = 0;
    v184 = v71 & 2;
    LODWORD(v206) = v184 | (v207 >> 2) & 1;
    v195 = v75 + 32;
    v180 = (v205 + 16);
    v181 = v72 + 32;
    v179 = (v205 + 8);
    v183 = v198 & 1;
    v185 = v84;
    while (1)
    {
      v87 = *(v195 + 16 * v86);
      if (!v87)
      {
        goto LABEL_32;
      }

      if (v72)
      {
        v88 = v72;
        if (v86 < *(v72 + 16))
        {
          v89 = *(v181 + 8 * v86);
          sub_1AF4410A8(v89);
          goto LABEL_39;
        }
      }

      else
      {
        v88 = 0;
      }

      v89 = 0xA000000000000000;
LABEL_39:

      if (v206)
      {
        if (v206 == 1)
        {
          v90 = sub_1AF9C5694(v89, v207 & 0xEFFFFFFFFFFFFFFBLL);
          sub_1AF441114(v89);
          if (v90)
          {
            goto LABEL_31;
          }
        }

        else
        {
          sub_1AF441114(v89);
        }
      }

      else
      {
        v91 = sub_1AF9C5694(v89, v207);
        sub_1AF441114(v89);
        if (!v91)
        {
          goto LABEL_31;
        }
      }

      if (*(*v204 + 16))
      {
        sub_1AF0D3F10(v87);
        if (v92)
        {
LABEL_31:

          v72 = v88;
          goto LABEL_32;
        }
      }

      if (*(*v85 + 16))
      {
        sub_1AF0D3F10(v87);
        v93 = v202;
        if (v94)
        {
          goto LABEL_114;
        }
      }

      else
      {
        v93 = v202;
      }

      v95 = swift_isUniquelyReferenced_nonNull_native();
      *&v240 = *v85;
      v96 = v240;
      *v85 = 0x8000000000000000;
      v97 = sub_1AF0D3F10(v87);
      v99 = v98;
      v100 = *(v96 + 16) + ((v98 & 1) == 0);
      if (*(v96 + 24) < v100)
      {
        sub_1AF82BC4C(v100, v95);
        v97 = sub_1AF0D3F10(v87);
        if ((v99 & 1) != (v101 & 1))
        {
          sub_1AFDFF1A8();
          __break(1u);
LABEL_114:
          sub_1AFDFE518();
          __break(1u);
          goto LABEL_115;
        }

LABEL_56:
        v102 = v240;
        if (v99)
        {
          goto LABEL_57;
        }

        goto LABEL_59;
      }

      if (v95)
      {
        goto LABEL_56;
      }

      v103 = v69;
      v104 = v97;
      sub_1AF843F7C();
      v97 = v104;
      v69 = v103;
      v102 = v240;
      if (v99)
      {
LABEL_57:
        *(v102[7] + v97) = 1;
        goto LABEL_60;
      }

LABEL_59:
      v102[(v97 >> 6) + 8] |= 1 << v97;
      *(v102[6] + 8 * v97) = v87;
      *(v102[7] + v97) = 1;
      ++v102[2];
LABEL_60:
      *v85 = v102;

      v105 = v197;
      if (sub_1AF96CD1C(v87))
      {
        v106 = v182;
        v107 = v186;
        (*v180)(v182, v87 + OBJC_IVAR____TtC3VFX4Node_authoringID, v186);

        v108 = sub_1AF3D88AC(v106, v93);
        (*v179)(v106, v107);
        v109 = MEMORY[0x1E69E7CC0];
        *&v240 = sub_1AF4417E8(MEMORY[0x1E69E7CC0]);
        *(&v240 + 1) = v110;
        sub_1AF416014(v201, v200, 1, v207, v198 & 1, v108, &v240);
        if (v69)
        {

          goto LABEL_109;
        }

        v105 = v197;
        if (v184)
        {
LABEL_65:
          v112 = 0;
          v191 = 0;
          v192 = 0;
          v189 = 0;
          v190 = 0;
          v188 = 0;
          goto LABEL_66;
        }
      }

      else
      {

        v109 = MEMORY[0x1E69E7CC0];
        if (v184)
        {
          goto LABEL_65;
        }
      }

      (*(*v87 + 152))(v239, v111);
      v112 = v239[0];
      v191 = v239[2];
      v192 = v239[1];
      v189 = v239[4];
      v190 = v239[3];
      v188 = v239[5];
LABEL_66:
      v193 = v86;
      v196 = v87;
      v113 = *(v87 + 16);
      v114 = *(v113 + 16);
      v205 = v112;
      if (v114)
      {
        v194 = v69;
        *&v240 = v109;

        sub_1AFC05E2C(0, v114, 0);
        v115 = 0;
        v109 = v240;
        v116 = *(v240 + 16);
        v208 = 16 * v116;
        do
        {
          v117 = v113;
          v119 = *(v113 + v115 + 32);
          v118 = *(v113 + v115 + 40);
          *&v240 = v109;
          v120 = *(v109 + 24);
          v121 = v116 + 1;

          if (v116 >= v120 >> 1)
          {
            sub_1AFC05E2C(v120 > 1, v121, 1);
            v109 = v240;
          }

          *(v109 + 16) = v121;
          v122 = v109 + v208 + v115;
          *(v122 + 32) = v119;
          *(v122 + 40) = v118;
          v115 += 16;
          ++v116;
          --v114;
          v113 = v117;
        }

        while (v114);

        v105 = v197;
        v69 = v194;
        v112 = v205;
      }

      v123 = *(v109 + 16);
      if (v123)
      {
        v124 = 0;
        v208 = v112 + 32;
        v125 = 32;
        while (2)
        {
          v126 = *(v109 + v125);
          if (!v126)
          {
            goto LABEL_75;
          }

          if (v112 && v124 < *(v112 + 16))
          {
            v127 = *(v208 + 8 * v124);
            sub_1AF4410A8(v127);
          }

          else
          {
            v127 = 0xA000000000000000;
          }

          if (v206)
          {
            if (v206 != 1)
            {
              sub_1AF441114(v127);
              goto LABEL_88;
            }

            v128 = sub_1AF9C5694(v127, v207 & 0xEFFFFFFFFFFFFFFBLL);
            sub_1AF441114(v127);
            if (!v128)
            {
LABEL_88:
              sub_1AF3E50BC(v126, 1, v207, v198 & 1, v202, v201, v200, v203, &v240, v204, v199);
              if (v69)
              {

                sub_1AF441284(v205, v192, v191, v190, v189, v188);
                goto LABEL_109;
              }

              v234 = v244;
              v235 = v245;
              v236 = v246;
              v237 = v247;
              v230 = v240;
              v231 = v241;
              v232 = v242;
              v233 = v243;
              sub_1AF444058(&v230, &qword_1EB638710, &type metadata for GraphCodeGen.CodeGenAtom, MEMORY[0x1E69E6720], sub_1AF449B08);
            }
          }

          else
          {
            v129 = sub_1AF9C5694(v127, v207);
            sub_1AF441114(v127);
            if (v129)
            {
              goto LABEL_88;
            }
          }

          v112 = v205;
LABEL_75:
          ++v124;
          v125 += 16;
          if (v123 == v124)
          {
            break;
          }

          continue;
        }
      }

      sub_1AF441284(v112, v192, v191, v190, v189, v188);
      sub_1AF449B08(0, &qword_1EB638710, &type metadata for GraphCodeGen.CodeGenAtom, MEMORY[0x1E69E6720]);
      type metadata accessor for Node(0);
      if (swift_dynamicCastMetatype())
      {
        v130 = v196;

        v132 = v203;
        v133 = sub_1AF3D72E8(v131, v203);
        v194 = v69;

        *(v130 + 16) = v133;
        v105 = v197;

        v134 = v202;
      }

      else
      {
        type metadata accessor for AuthoringNode(0);
        v134 = v202;
        v132 = v203;
        v194 = v69;
      }

      v135 = swift_allocObject();
      v136 = v200;
      v137 = v201;
      *(v135 + 16) = v201;
      *(v135 + 24) = v136;

      v138 = v207;
      sub_1AF4410E4(v207, sub_1AF4410A8);

      v139 = v105;
      v140 = swift_allocObject();
      *(v140 + 16) = 1;
      *(v140 + 24) = v138;
      *(v140 + 32) = v183;
      *(v140 + 40) = v204;
      *(v140 + 48) = v139;
      *(v140 + 56) = v134;
      *(v140 + 64) = v137;
      *(v140 + 72) = v136;
      *(v140 + 80) = v132;
      v141 = v199;
      *(v140 + 88) = v199;
      v142 = swift_allocObject();
      *(v142 + 16) = sub_1AF449D70;
      *(v142 + 24) = v140;
      *&v225 = v139;
      v143 = v196;
      *(&v225 + 1) = v196;
      v226 = v134;
      v227 = sub_1AF449D50;
      v228 = v142;
      v229 = v141;
      swift_bridgeObjectRetain_n();

      v69 = v194;
      sub_1AF449CCC(&v225);
      if (v69)
      {
        goto LABEL_111;
      }

      swift_isEscapingClosureAtFileLocation();

      swift_isEscapingClosureAtFileLocation();

      v252 = v244;
      v253 = v245;
      v254 = v246;
      v255 = v247;
      v248 = v240;
      v249 = v241;
      v250 = v242;
      v251 = v243;
      v144 = MEMORY[0x1E69E6720];
      sub_1AF0D8094(&v248, &v217, &qword_1EB638710, &type metadata for GraphCodeGen.CodeGenAtom, MEMORY[0x1E69E6720], sub_1AF449B08);
      sub_1AF0D8094(&v248, &v217, &qword_1EB638710, &type metadata for GraphCodeGen.CodeGenAtom, v144, sub_1AF449B08);
      v145 = v143;
      v146 = v204;
      sub_1AF634450(&v248, v145, &v230);
      v86 = v193;
      if (v230 == 1)
      {
        v222 = v235;
        v223 = v236;
        v217 = v230;
        v218 = v231;
        v219 = v232;
        v224 = v237;
        v220 = v233;
        v221 = v234;
        sub_1AF44943C(&v217, sub_1AF443FDC);
        v147 = v146[1];
        v148 = swift_isUniquelyReferenced_nonNull_native();
        v146[1] = v147;
        if ((v148 & 1) == 0)
        {
          v147 = sub_1AF422330(0, *(v147 + 2) + 1, 1, v147, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
          v146[1] = v147;
        }

        v150 = *(v147 + 2);
        v149 = *(v147 + 3);
        if (v150 >= v149 >> 1)
        {
          v146[1] = sub_1AF422330(v149 > 1, v150 + 1, 1, v147, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
        }

        sub_1AF444058(&v248, &qword_1EB638710, &type metadata for GraphCodeGen.CodeGenAtom, MEMORY[0x1E69E6720], sub_1AF449B08);
        v151 = v146[1];
        *(v151 + 16) = v150 + 1;
        v152 = v196;
        *(v151 + 8 * v150 + 32) = v196;
      }

      else
      {
        sub_1AF444058(&v248, &qword_1EB638710, &type metadata for GraphCodeGen.CodeGenAtom, MEMORY[0x1E69E6720], sub_1AF449B08);
        v222 = v235;
        v223 = v236;
        v217 = v230;
        v218 = v231;
        v219 = v232;
        v224 = v237;
        v220 = v233;
        v221 = v234;
        sub_1AF44943C(&v217, sub_1AF443FDC);
        v152 = v196;
      }

      v85 = v203;
      v153 = swift_isUniquelyReferenced_nonNull_native();
      *&v230 = *v85;
      *v85 = 0x8000000000000000;
      sub_1AF850FDC(0, v152, v153);
      *v85 = v230;

      v234 = v244;
      v235 = v245;
      v236 = v246;
      v237 = v247;
      v230 = v240;
      v231 = v241;
      v232 = v242;
      v233 = v243;
      sub_1AF444058(&v230, &qword_1EB638710, &type metadata for GraphCodeGen.CodeGenAtom, MEMORY[0x1E69E6720], sub_1AF449B08);

      v84 = v185;
      v72 = v187;
LABEL_32:
      if (++v86 == v84)
      {
        goto LABEL_102;
      }
    }
  }

  v25 = sub_1AF0D3F10(a1);
  if (v26)
  {
    v27 = *(v24 + 56) + 120 * v25;
    v29 = *(v27 + 32);
    v28 = *(v27 + 48);
    v30 = *(v27 + 16);
    v248 = *v27;
    v249 = v30;
    v250 = v29;
    v251 = v28;
    v31 = *(v27 + 64);
    v32 = *(v27 + 80);
    v33 = *(v27 + 96);
    v255 = *(v27 + 112);
    v253 = v32;
    v254 = v33;
    v252 = v31;
    v34 = *v27;
    v35 = *(v27 + 16);
    v36 = *(v27 + 48);
    *(a9 + 2) = *(v27 + 32);
    *(a9 + 3) = v36;
    *a9 = v34;
    *(a9 + 1) = v35;
    v37 = *(v27 + 64);
    v38 = *(v27 + 80);
    v39 = *(v27 + 96);
    a9[14] = *(v27 + 112);
    *(a9 + 5) = v38;
    *(a9 + 6) = v39;
    *(a9 + 4) = v37;
    return sub_1AF0D8094(&v248, &v240, &qword_1EB638710, &type metadata for GraphCodeGen.CodeGenAtom, MEMORY[0x1E69E6720], sub_1AF449B08);
  }

  v178 = a9;
  v41 = *(v24 + 16);

  if (!v41)
  {
    goto LABEL_9;
  }

  v42 = sub_1AF0D3F10(a1);
  if ((v43 & 1) == 0)
  {
    goto LABEL_9;
  }

  v44 = *(v24 + 56) + 120 * v42;
  v46 = *(v44 + 32);
  v45 = *(v44 + 48);
  v47 = *(v44 + 16);
  v248 = *v44;
  v249 = v47;
  v250 = v46;
  v251 = v45;
  v48 = *(v44 + 64);
  v49 = *(v44 + 80);
  v50 = *(v44 + 96);
  v255 = *(v44 + 112);
  v253 = v49;
  v254 = v50;
  v252 = v48;
  sub_1AF0D8094(&v248, &v240, &qword_1EB638710, &type metadata for GraphCodeGen.CodeGenAtom, MEMORY[0x1E69E6720], sub_1AF449B08);

  v51 = v253;
  v52 = v178;
  *(v178 + 4) = v252;
  *(v52 + 5) = v51;
  *(v52 + 6) = v254;
  v52[14] = v255;
  v53 = v249;
  *v52 = v248;
  *(v52 + 1) = v53;
  v54 = v250;
  v55 = v251;
LABEL_107:
  *(v52 + 2) = v54;
  *(v52 + 3) = v55;
  return result;
}

void *sub_1AF40EBE4(__objc2_class **a1, void *a2, unint64_t a3, int a4, void *a5, void *a6, void *a7, void *a8, uint64_t a9, void *a10, uint64_t a11)
{
  v207 = a8;
  v208 = a7;
  v210 = a6;
  v204 = a4;
  v212 = a3;
  v12 = a2;
  v191 = sub_1AFDFC318();
  v187 = *(v191 - 8);
  MEMORY[0x1EEE9AC00](v191);
  v190 = &v169 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v169 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v169 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v169 - v22;
  if ((v12 & 1) == 0)
  {
    goto LABEL_136;
  }

  v24 = *a5;
  if (!*(*a5 + 16))
  {

    goto LABEL_8;
  }

  v25 = sub_1AF0D3F10(a1);
  if ((v26 & 1) == 0)
  {

    v28 = sub_1AF0D3F10(a1);
    if (v29)
    {
      v27 = *(*(v24 + 56) + 8 * v28);
LABEL_132:

      return v27;
    }

LABEL_8:
    v30 = a10;
    if (!*(*a10 + 16) || (sub_1AF0D3F10(a1), (v31 & 1) == 0))
    {
      v182 = v17;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v221[0] = *a10;
      *a10 = 0x8000000000000000;
      sub_1AF850FDC(1, a1, isUniquelyReferenced_nonNull_native);
      *a10 = v221[0];

      v197 = type metadata accessor for AuthoringNode(0);
      v33 = v204 & (v197 == MEMORY[0x1E69E6530]);
      v34 = swift_allocObject();
      v177 = v34;
      *(v34 + 16) = a1;
      v35 = (v34 + 16);
      v186 = v33;
      v176 = (v34 + 16);
      if (v33 == 1)
      {
        cache = (*a1)[7].cache;

        *v35 = cache(1);

        v37 = *v35;
      }

      else
      {

        v37 = a1;
      }

      v206 = a9;
      v38 = sub_1AF96D010(v37);
      v205 = a5;
      v209 = a10;
      if (v38)
      {
        v39 = v38;
        v40 = *(v187 + 16);
        v41 = v37 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID;
        v42 = v191;
        v40(v23, v41, v191);
        v40(v20, v23, v42);
        v43 = v208;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v43 = sub_1AF4276E0(0, v208[2] + 1, 1, v208, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
        }

        v45 = v43[2];
        v44 = v43[3];
        if (v45 >= v44 >> 1)
        {
          v43 = sub_1AF4276E0(v44 > 1, v45 + 1, 1, v43, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
        }

        v46 = v187;
        v47 = v23;
        v48 = v191;
        (*(v187 + 8))(v47, v191);
        v43[2] = v45 + 1;
        (*(v46 + 32))(v43 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v45, v20, v48);
        v49 = sub_1AF3FC510(v207, v206, 1, v212, v204 & 1, v43, sub_1AF41774C, type metadata accessor for AuthoringNode, _s11DeletedNodeCMa_0);
        v51 = v50;

        if (v197 == MEMORY[0x1E69E6530])
        {
          v52 = *(v51 + 16);
          v53 = MEMORY[0x1E69E7CC0];
          if (v52)
          {
            v211 = v39;
            v221[0] = MEMORY[0x1E69E7CC0];
            sub_1AFDFE368();
            v54 = 32;
            do
            {
              v55 = v49[2];
              if (v55)
              {
                v56 = sub_1AF0D3F10(*(v51 + v54));
                if (v57)
                {
                  v55 = *(v49[7] + 8 * v56);
                }

                else
                {
                  v55 = 0;
                }
              }

              *&v214 = v55;
              swift_dynamicCast();
              sub_1AFDFE328();
              sub_1AFDFE398();
              sub_1AFDFE3A8();
              sub_1AFDFE348();
              v54 += 8;
              --v52;
              a5 = v205;
            }

            while (v52);

            v58 = v221[0];
            v53 = MEMORY[0x1E69E7CC0];
          }

          else
          {

            v58 = MEMORY[0x1E69E7CC0];
          }

          v59 = *v176;
          type metadata accessor for AuthoringGraph(0);
          v60 = swift_allocObject();
          v60[2] = 0;
          v60[3] = v53;
          v60[4] = 0;
          v60[5] = 0;

          v60[6] = sub_1AF42B820(v53, sub_1AF44954C, sub_1AF449580, sub_1AF4495A0);
          sub_1AFDFC308();

          v60[3] = v58;

          *(v59 + OBJC_IVAR____TtC3VFX21AuthoringSubGraphNode_graph) = v60;
        }

        else
        {
        }

        v30 = v209;
      }

      v61 = v212 >> 59;
      if (((v212 >> 59) & 2) != 0)
      {
        v62 = 0;
        v174 = 0;
        v173 = 0;
        v172 = 0;
        v171 = 0;
        v170 = 0;
      }

      else
      {
        ((*(a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw))->isa[3].info)(v220);
        v62 = v220[0];
        v174 = v220[1];
        v173 = v220[2];
        v172 = v220[3];
        v171 = v220[4];
        v170 = v220[5];
      }

      v203 = a11;
      v63 = sub_1AF97228C();
      v200 = *(v63 + 16);
      v175 = a1;
      if (!v200)
      {
        v188 = v204 & 1;
LABEL_123:

        sub_1AF441284(v62, v174, v173, v172, v171, v170);
        v148 = v177;
        sub_1AF3FCAB4(v177, v30, a5);
        v149 = swift_allocObject();
        v150 = v207;
        v151 = v206;
        *(v149 + 16) = v207;
        *(v149 + 24) = v151;
        v152 = v30;
        v153 = v210;

        v154 = v212;
        sub_1AF4410E4(v212, sub_1AF4410A8);

        v155 = swift_allocObject();
        *(v155 + 16) = 1;
        *(v155 + 24) = v154;
        *(v155 + 32) = v188;
        *(v155 + 40) = a5;
        *(v155 + 48) = v153;
        v156 = v208;
        *(v155 + 56) = v208;
        *(v155 + 64) = v150;
        *(v155 + 72) = v151;
        *(v155 + 80) = v152;
        v157 = v203;
        *(v155 + 88) = v203;
        v158 = swift_allocObject();
        *(v158 + 16) = sub_1AF449D44;
        *(v158 + 24) = v155;
        v159 = *(v148 + 16);
        *&v214 = v153;
        *(&v214 + 1) = v159;
        v215 = v156;
        v216 = sub_1AF449D48;
        v217 = v158;
        v218 = v157;

        sub_1AF449DC0(&v214, &v219);

        v27 = v219;
        swift_isEscapingClosureAtFileLocation();

        swift_isEscapingClosureAtFileLocation();

        v160 = v175;
        sub_1AF6345D0(v27, v175);
        v161 = v209;
        if (v162)
        {
          v163 = a5[1];
          v164 = swift_isUniquelyReferenced_nonNull_native();
          a5[1] = v163;
          if ((v164 & 1) == 0)
          {
            v163 = sub_1AF422330(0, *(v163 + 2) + 1, 1, v163, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
            a5[1] = v163;
          }

          v166 = *(v163 + 2);
          v165 = *(v163 + 3);
          if (v166 >= v165 >> 1)
          {
            v163 = sub_1AF422330(v165 > 1, v166 + 1, 1, v163, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
            a5[1] = v163;
          }

          *(v163 + 2) = v166 + 1;
          *&v163[8 * v166 + 32] = v160;
        }

        if (v197 == MEMORY[0x1E69E6530])
        {
          *&v214 = v27;

          swift_dynamicCast();
        }

        v167 = swift_isUniquelyReferenced_nonNull_native();
        *&v214 = *v161;
        *v161 = 0x8000000000000000;
        sub_1AF850FDC(0, v160, v167);
        *v161 = v214;

        goto LABEL_132;
      }

      v64 = 0;
      v183 = v61 & 2;
      LODWORD(v211) = v183 | (v212 >> 2) & 1;
      v199 = v63 + 32;
      v181 = v62 + 32;
      v180 = (v187 + 16);
      v179 = v187 + 8;
      v178 = v187 + 32;
      v185 = v62;
      v184 = v63;
      v188 = v204 & 1;
      while (1)
      {
        v65 = *(v199 + 16 * v64);
        if (!v65)
        {
          goto LABEL_40;
        }

        v201 = v64;
        if (v62 && v64 < *(v62 + 16))
        {
          v66 = *(v181 + 8 * v64);
          sub_1AF4410A8(v66);
        }

        else
        {
          v66 = 0xA000000000000000;
        }

        if (v211)
        {
          if (v211 == 1)
          {
            v67 = sub_1AF9C5694(v66, v212 & 0xEFFFFFFFFFFFFFFBLL);
            sub_1AF441114(v66);
            if (v67)
            {
              goto LABEL_39;
            }
          }

          else
          {
            sub_1AF441114(v66);
          }
        }

        else
        {
          v68 = sub_1AF9C5694(v66, v212);
          sub_1AF441114(v66);
          if (!v68)
          {
            goto LABEL_39;
          }
        }

        if (!*(*a5 + 16) || (sub_1AF0D3F10(v65), (v69 & 1) == 0))
        {
          if (*(*v30 + 16))
          {
            sub_1AF0D3F10(v65);
            v70 = MEMORY[0x1E69E6530];
            if (v71)
            {
              break;
            }
          }

          else
          {
            v70 = MEMORY[0x1E69E6530];
          }

          v72 = swift_isUniquelyReferenced_nonNull_native();
          *&v214 = *v30;
          v73 = v214;
          *v30 = 0x8000000000000000;
          v74 = sub_1AF0D3F10(v65);
          v76 = v75;
          v77 = *(v73 + 16) + ((v75 & 1) == 0);
          if (*(v73 + 24) >= v77)
          {
            if (v72)
            {
              goto LABEL_63;
            }

            v80 = v74;
            sub_1AF843F7C();
            v74 = v80;
            v79 = v214;
            if ((v76 & 1) == 0)
            {
              goto LABEL_66;
            }

LABEL_64:
            *(v79[7] + v74) = 1;
          }

          else
          {
            sub_1AF82BC4C(v77, v72);
            v74 = sub_1AF0D3F10(v65);
            if ((v76 & 1) != (v78 & 1))
            {
              goto LABEL_135;
            }

LABEL_63:
            v79 = v214;
            if (v76)
            {
              goto LABEL_64;
            }

LABEL_66:
            v79[(v74 >> 6) + 8] |= 1 << v74;
            *(v79[6] + 8 * v74) = v65;
            *(v79[7] + v74) = 1;
            ++v79[2];
          }

          *v30 = v79;

          v81 = swift_allocObject();
          v198 = v81;
          *(v81 + 16) = v65;
          v82 = (v81 + 16);
          if (v186)
          {
            v83 = *(*v65 + 296);

            *v82 = v83(1);

            v84 = *v82;
          }

          else
          {

            v84 = v65;
          }

          v85 = sub_1AF96D010(v84);
          v202 = v65;
          if (v85)
          {
            v196 = v85;
            v86 = *v180;
            v87 = v84 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID;
            v88 = v182;
            v89 = v191;
            (*v180)(v182, v87, v191);
            v86(v190, v88, v89);
            v90 = v208;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v90 = sub_1AF4276E0(0, v208[2] + 1, 1, v208, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
            }

            v92 = v90[2];
            v91 = v90[3];
            v93 = v82;
            if (v92 >= v91 >> 1)
            {
              v90 = sub_1AF4276E0(v91 > 1, v92 + 1, 1, v90, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
            }

            v94 = v187;
            v95 = v88;
            v96 = v191;
            (*(v187 + 8))(v95, v191);
            v90[2] = v92 + 1;
            (*(v94 + 32))(v90 + ((*(v94 + 80) + 32) & ~*(v94 + 80)) + *(v94 + 72) * v92, v190, v96);
            v97 = sub_1AF3FC510(v207, v206, 1, v212, v204 & 1, v90, sub_1AF41774C, type metadata accessor for AuthoringNode, _s11DeletedNodeCMa_0);
            v99 = v98;

            if (v197 == v70)
            {
              v100 = *(v99 + 16);
              if (v100)
              {
                *&v214 = MEMORY[0x1E69E7CC0];
                sub_1AFDFE368();
                v101 = 32;
                do
                {
                  v102 = v97[2];
                  if (v102)
                  {
                    v103 = sub_1AF0D3F10(*(v99 + v101));
                    if (v104)
                    {
                      v102 = *(v97[7] + 8 * v103);
                    }

                    else
                    {
                      v102 = 0;
                    }
                  }

                  v213 = v102;
                  swift_dynamicCast();
                  sub_1AFDFE328();
                  sub_1AFDFE398();
                  sub_1AFDFE3A8();
                  sub_1AFDFE348();
                  v101 += 8;
                  --v100;
                  v65 = v202;
                }

                while (v100);

                v105 = v214;
                v106 = MEMORY[0x1E69E7CC0];
              }

              else
              {

                v106 = MEMORY[0x1E69E7CC0];
                v105 = MEMORY[0x1E69E7CC0];
              }

              v82 = v93;
              v107 = *v93;
              type metadata accessor for AuthoringGraph(0);
              v108 = swift_allocObject();
              v108->cache = 0;
              v108->vtable = v106;
              v108->info = 0;
              v108[1].isa = 0;

              v108[1].superclass = sub_1AF42B820(v106, sub_1AF44954C, sub_1AF449580, sub_1AF4495A0);
              sub_1AFDFC308();

              v108->vtable = v105;

              *(v107 + OBJC_IVAR____TtC3VFX21AuthoringSubGraphNode_graph) = v108;
            }

            else
            {

              v82 = v93;
            }
          }

          if (v183)
          {
            v111 = 0;
            v196 = 0;
            v195 = 0;
            v194 = 0;
            v193 = 0;
            v192 = 0;
          }

          else
          {
            v109 = *(**(v65 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw) + 152);

            v109(v221, v110);
            v111 = v221[0];
            v196 = v221[1];
            v195 = v221[2];
            v194 = v221[3];
            v193 = v221[4];
            v192 = v221[5];
          }

          v112 = sub_1AF97228C();
          v113 = *(v112 + 16);
          v189 = v82;
          if (v113)
          {
            v114 = 0;
            v115 = 32;
            while (2)
            {
              v116 = *(v112 + v115);
              if (!v116)
              {
                goto LABEL_95;
              }

              if (v111 && v114 < *(v111 + 16))
              {
                v117 = *(v111 + 32 + 8 * v114);
                sub_1AF4410A8(v117);
              }

              else
              {
                v117 = 0xA000000000000000;
              }

              if (v211)
              {
                if (v211 == 1)
                {
                  v118 = sub_1AF9C5694(v117, v212 & 0xEFFFFFFFFFFFFFFBLL);
                  sub_1AF441114(v117);
                  if (v118)
                  {
                    goto LABEL_94;
                  }
                }

                else
                {
                  sub_1AF441114(v117);
                }
              }

              else
              {
                v119 = sub_1AF9C5694(v117, v212);
                sub_1AF441114(v117);
                if (!v119)
                {
LABEL_94:

LABEL_95:
                  ++v114;
                  v115 += 16;
                  if (v113 == v114)
                  {
                    goto LABEL_107;
                  }

                  continue;
                }
              }

              break;
            }

            sub_1AF3E5F1C(v116, 1, v212, v204 & 1, v208, v207, v206, v209, v205, v203);
            goto LABEL_94;
          }

LABEL_107:

          sub_1AF441284(v111, v196, v195, v194, v193, v192);
          v120 = v198;
          v121 = v209;
          a5 = v205;
          sub_1AF3FCAB4(v198, v209, v205);
          v122 = swift_allocObject();
          v123 = v207;
          v124 = v206;
          *(v122 + 16) = v207;
          *(v122 + 24) = v124;
          v125 = v210;

          v126 = v212;
          sub_1AF4410E4(v212, sub_1AF4410A8);

          v127 = swift_allocObject();
          *(v127 + 16) = 1;
          *(v127 + 24) = v126;
          *(v127 + 32) = v188;
          *(v127 + 40) = a5;
          *(v127 + 48) = v125;
          v128 = v208;
          *(v127 + 56) = v208;
          *(v127 + 64) = v123;
          *(v127 + 72) = v124;
          *(v127 + 80) = v121;
          v129 = v203;
          *(v127 + 88) = v203;
          v130 = swift_allocObject();
          *(v130 + 16) = sub_1AF449D44;
          *(v130 + 24) = v127;
          v131 = *(v120 + 16);
          *&v214 = v125;
          *(&v214 + 1) = v131;
          v215 = v128;
          v216 = sub_1AF449D48;
          v217 = v130;
          v218 = v129;
          swift_bridgeObjectRetain_n();

          sub_1AF449DC0(&v214, &v219);

          v132 = v219;
          swift_isEscapingClosureAtFileLocation();

          swift_isEscapingClosureAtFileLocation();

          v133 = v202;
          sub_1AF6345D0(v132, v202);
          if (v134)
          {
            v135 = a5[1];
            v136 = swift_isUniquelyReferenced_nonNull_native();
            a5[1] = v135;
            if ((v136 & 1) == 0)
            {
              v135 = sub_1AF422330(0, *(v135 + 2) + 1, 1, v135, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
              a5[1] = v135;
            }

            v138 = *(v135 + 2);
            v137 = *(v135 + 3);
            if (v138 >= v137 >> 1)
            {
              v135 = sub_1AF422330(v137 > 1, v138 + 1, 1, v135, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
              a5[1] = v135;
            }

            *(v135 + 2) = v138 + 1;
            *&v135[8 * v138 + 32] = v133;
          }

          if (v197 == MEMORY[0x1E69E6530])
          {
            *&v214 = v132;

            swift_dynamicCast();
          }

          v30 = v209;
          v139 = swift_isUniquelyReferenced_nonNull_native();
          *&v214 = *v30;
          v140 = v214;
          *v30 = 0x8000000000000000;
          v141 = sub_1AF0D3F10(v133);
          v143 = v142;
          v144 = *(v140 + 16) + ((v142 & 1) == 0);
          if (*(v140 + 24) >= v144)
          {
            if ((v139 & 1) == 0)
            {
              v147 = v141;
              sub_1AF843F7C();
              v141 = v147;
            }
          }

          else
          {
            sub_1AF82BC4C(v144, v139);
            v141 = sub_1AF0D3F10(v133);
            if ((v143 & 1) != (v145 & 1))
            {
LABEL_135:
              sub_1AFDFF1A8();
              __break(1u);
              break;
            }
          }

          v62 = v185;
          v146 = v214;
          if (v143)
          {
            *(*(v214 + 56) + v141) = 0;
          }

          else
          {
            *(v214 + 8 * (v141 >> 6) + 64) |= 1 << v141;
            *(v146[6] + 8 * v141) = v133;
            *(v146[7] + v141) = 0;
            ++v146[2];
          }

          *v30 = v146;
        }

LABEL_39:

        v64 = v201;
LABEL_40:
        if (++v64 == v200)
        {
          goto LABEL_123;
        }
      }
    }

LABEL_136:
    sub_1AFDFE518();
    __break(1u);

    swift_isEscapingClosureAtFileLocation();

    swift_isEscapingClosureAtFileLocation();

    while (1)
    {

      swift_unexpectedError();
      __break(1u);

      swift_isEscapingClosureAtFileLocation();

      swift_isEscapingClosureAtFileLocation();

      sub_1AF441284(v185, v174, v173, v172, v171, v170);
    }
  }

  return *(*(v24 + 56) + 8 * v25);
}