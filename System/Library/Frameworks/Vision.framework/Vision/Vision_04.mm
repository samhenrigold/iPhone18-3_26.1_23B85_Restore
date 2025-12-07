uint64_t InstanceMaskObservation.hashValue.getter()
{
  sub_1A5FD4C1C();
  type metadata accessor for InstanceMaskObservation(0);
  sub_1A5B57B7C(&qword_1EB1EF5C0, type metadata accessor for InstanceMaskObservation, &protocol conformance descriptor for InstanceMaskObservation);
  sub_1A5FD3CBC();
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5B55EE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A5B57B7C(&qword_1EB1EF5A8, type metadata accessor for InstanceMaskObservation, &protocol conformance descriptor for InstanceMaskObservation);

  return VisionObservation.hash(into:)(a1, a2, v4);
}

uint64_t sub_1A5B55F94()
{
  if (*v0)
  {
    return 0x6573624F65736162;
  }

  else
  {
    return 0x76726573624F6E76;
  }
}

void sub_1A5B55FE8(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x76726573624F6E76 && a2 == 0xED00006E6F697461;
  if (v6 || (sub_1A5FD4B0C() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6573624F65736162 && a2 == 0xEF6E6F6974617672)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1A5FD4B0C();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1A5B560D4(uint64_t a1)
{
  v2 = sub_1A5B57A0C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5B56110(uint64_t a1)
{
  v2 = sub_1A5B57A0C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t InstanceMaskObservation.encode(to:)(void *a1)
{
  v2 = v1;
  v30[2] = *MEMORY[0x1E69E9840];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EE768, &qword_1A5FF2350);
  v28 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF5C8, &unk_1A5FF9998);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - v9;
  v11 = objc_opt_self();
  v12 = type metadata accessor for InstanceMaskObservation(0);
  v13 = *(v2 + *(v12 + 40));
  v30[0] = 0;
  v14 = [v11 archivedDataWithRootObject:v13 requiringSecureCoding:1 error:v30];
  v15 = v30[0];
  if (v14)
  {
    v26 = v4;
    v24 = sub_1A5FD35DC();
    v25 = v16;

    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1A5B57A0C();
    sub_1A5FD4CDC();
    LOBYTE(v30[0]) = 1;
    sub_1A5B0A360();
    sub_1A5FD49EC();
    v17 = sub_1A5B57B7C(&qword_1EB1EF5A8, type metadata accessor for InstanceMaskObservation, &protocol conformance descriptor for InstanceMaskObservation);
    v18 = v27;
    sub_1A5BBD46C(v6, v12, &off_1F1952B08, v17);
    if (v18)
    {
      sub_1A5B066DC(v24, v25);
      (*(v28 + 8))(v6, v26);
      return (*(v8 + 8))(v10, v7);
    }

    else
    {
      v22 = v24;
      v21 = v25;
      v30[0] = v24;
      v30[1] = v25;
      v29 = 0;
      sub_1A5B0A6B8();
      sub_1A5FD4A5C();
      (*(v28 + 8))(v6, v26);
      (*(v8 + 8))(v10, v7);
      return sub_1A5B066DC(v22, v21);
    }
  }

  else
  {
    v20 = v15;
    sub_1A5FD348C();

    return swift_willThrow();
  }
}

void *InstanceMaskObservation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v3 = sub_1A5FD378C();
  v58 = *(v3 - 8);
  v59 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v57 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_1A5FD367C();
  v60 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v56 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v43 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EE790, &qword_1A5FF2360);
  v61 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v43 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF5D0, &qword_1A5FF99A8);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v43 - v14;
  v16 = a1[3];
  v64 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1A5B57A0C();
  v17 = v63;
  sub_1A5FD4CCC();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(v64);
  }

  v63 = v8;
  v18 = v62;
  LOBYTE(v67) = 0;
  sub_1A5B0A8B0();
  sub_1A5FD497C();
  v54 = v15;
  v19 = v65[0];
  sub_1A5B16F58(0, &qword_1EB1EF038, 0x1E696ACD0);
  sub_1A5B16F58(0, &qword_1EB1EF5D8, off_1E77AF140);
  result = sub_1A5FD435C();
  v53 = *(&v19 + 1);
  v52 = result;
  if (result)
  {
    LOBYTE(v65[0]) = 1;
    sub_1A5B0A360();
    sub_1A5FD48CC();
    LOBYTE(v65[0]) = 0;
    sub_1A5B57B7C(&qword_1EB1EE7A8, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
    sub_1A5FD497C();
    v21 = v9;
    LOBYTE(v65[0]) = 1;
    sub_1A5FD495C();
    v23 = v22;
    LOBYTE(v67) = 3;
    sub_1A5B0A454();
    sub_1A5FD492C();
    v50 = LOWORD(v65[0]);
    sub_1A5BBDB04(v68);
    v24 = v13;
    v51 = v11;
    v25 = v60;
    v26 = v52;
    v27 = [v52 allInstances];
    v49 = v24;
    v28 = v25;
    v29 = v27;
    v30 = v57;
    sub_1A5FD375C();

    v46 = [v26 instanceMask];
    v44 = type metadata accessor for InstanceMaskObservation(0);
    v48 = v12;
    v31 = *(v44 + 24);
    v32 = *(v28 + 16);
    v47 = v21;
    v45 = v19;
    v33 = v55;
    v32(v55 + v31, v63, v18);
    v34 = v58;
    v35 = v30;
    v36 = v30;
    v37 = v59;
    (*(v58 + 16))(v33, v36, v59);
    v38 = (v33 + v31);
    v39 = v56;
    v32(v56, v38, v18);
    LOWORD(v32) = v50;
    v67 = v50;
    memset(v65, 0, sizeof(v65));
    v66 = 1;
    v40 = v44;
    sub_1A5BF327C(v39, v68, &v67, v46, v65, v33 + *(v44 + 20), v23);
    sub_1A5B066DC(v45, v53);
    (*(v34 + 8))(v35, v37);
    (*(v60 + 8))(v63, v18);
    (*(v61 + 8))(v51, v47);
    (*(v49 + 8))(v54, v48);
    *(v33 + v40[7]) = v23;
    v41 = v33 + v40[8];
    v42 = v68[1];
    *v41 = v68[0];
    *(v41 + 16) = v42;
    *(v41 + 32) = v68[2];
    *(v41 + 48) = v69;
    *(v33 + v40[9]) = v32;
    *(v33 + v40[10]) = v52;
    return __swift_destroy_boxed_opaque_existential_1(v64);
  }

  __break(1u);
  return result;
}

__n128 sub_1A5B56D48@<Q0>(void *a1@<X0>, unsigned __int16 *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v30 = sub_1A5FD367C();
  v8 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1A5FD378C();
  v11 = *(v29 - 8);
  *&v12 = MEMORY[0x1EEE9AC00](v29).n128_u64[0];
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *a2;
  v15 = [a1 allInstances];
  sub_1A5FD375C();

  v27 = [a1 instanceMask];
  v16 = a1;
  v17 = [v16 uuid];
  v18 = type metadata accessor for InstanceMaskObservation(0);
  v19 = v18[6];
  sub_1A5FD365C();

  [v16 confidence];
  v21 = v20;

  v22 = v29;
  (*(v11 + 16))(a4, v14, v29);
  (*(v8 + 16))(v10, a4 + v19, v30);
  LOWORD(v19) = v28;
  v33 = v28;
  memset(v31, 0, sizeof(v31));
  v32 = 1;
  v23 = sub_1A5BF327C(v10, a3, &v33, v27, v31, a4 + v18[5], v21);
  (*(v11 + 8))(v14, v22, v23);
  *(a4 + v18[7]) = v21;
  v24 = a4 + v18[8];
  v25 = *(a3 + 16);
  *v24 = *a3;
  *(v24 + 16) = v25;
  result = *(a3 + 32);
  *(v24 + 32) = result;
  *(v24 + 48) = *(a3 + 48);
  *(a4 + v18[9]) = v19;
  *(a4 + v18[10]) = v16;
  return result;
}

uint64_t InstanceMaskObservation.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = sub_1A5FD367C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v39 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v34 - v8;
  v10 = sub_1A5FD378C();
  v11 = *(v10 - 8);
  *&v12 = MEMORY[0x1EEE9AC00](v10).n128_u64[0];
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v43 = 0;
  v15 = [a1 vn:&v43 deepCloneObjectWithError:v12];
  if (v15)
  {
    v16 = v15;
    v17 = v43;
    v18 = [a1 allInstances];
    sub_1A5FD375C();

    v37 = [v16 instanceMask];
    v19 = a1;
    v20 = [v19 uuid];
    v38 = v16;
    v21 = v4;
    v22 = v20;
    sub_1A5FD365C();

    [v19 confidence];
    v24 = v23;
    [v19 timeRange];
    v36 = v43;
    v35 = v44;
    v34 = v45;

    v43 = v36;
    v44 = v35;
    v45 = v34;
    v46 = 0;
    v25 = v10;
    (*(v11 + 16))(a2, v14, v10);
    v26 = v39;
    (*(v5 + 16))(v39, v9, v21);
    v40 = -8;
    memset(v41, 0, sizeof(v41));
    v42 = 1;
    v27 = type metadata accessor for InstanceMaskObservation(0);
    sub_1A5BF327C(v26, &v43, &v40, v37, v41, a2 + v27[5], v24);

    (*(v11 + 8))(v14, v25);
    (*(v5 + 32))(a2 + v27[6], v9, v21);
    *(a2 + v27[7]) = v24;
    v28 = a2 + v27[8];
    v29 = v44;
    *v28 = v43;
    *(v28 + 16) = v29;
    *(v28 + 32) = v45;
    *(v28 + 48) = v46;
    *(a2 + v27[9]) = -8;
    *(a2 + v27[10]) = v38;
    return (*(*(v27 - 1) + 56))(a2, 0, 1, v27);
  }

  else
  {
    v31 = v43;
    v32 = sub_1A5FD348C();

    swift_willThrow();
    v33 = type metadata accessor for InstanceMaskObservation(0);
    return (*(*(v33 - 8) + 56))(a2, 1, 1, v33);
  }
}

double sub_1A5B57460@<D0>(void *a1@<X0>, unsigned __int16 *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = *a2;
  *&result = sub_1A5B56D48(a1, &v5, a3, a4).n128_u64[0];
  return result;
}

char *sub_1A5B5748C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A5B574AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1A5B574AC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F4520, &unk_1A6021300);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1A5B575BC(unint64_t a1)
{
  v2 = v1;
  v40[1] = *MEMORY[0x1E69E9840];
  v4 = a1 >> 62;
  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_57:
    v22 = 0x80000001A6054070;
    sub_1A5B16774();
    swift_allocError();
    *v24 = 0xD000000000000022;
    *(v24 + 8) = 0x80000001A6054070;
    *(v24 + 16) = 0;
    *(v24 + 20) = 0;
    swift_willThrow();
    return v22;
  }

LABEL_56:
  if (!sub_1A5FD484C())
  {
    goto LABEL_57;
  }

LABEL_3:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x1AC554EE0](0, a1);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_61;
    }

    v5 = *(a1 + 32);
  }

  v6 = v5;
  Width = CVPixelBufferGetWidth(v5);
  Height = CVPixelBufferGetHeight(v6);
  v40[0] = 0;
  UsingIOSurface = VNCVPixelBufferCreateUsingIOSurface(Width, Height, 0x4C303038u, 0, v40);
  if (!v40[0])
  {
    v22 = UsingIOSurface;
    sub_1A5B16774();
    swift_allocError();
    *v23 = v22;
    *(v23 + 8) = 0;
    *(v23 + 16) = 0;
    *(v23 + 20) = 11;
    swift_willThrow();

    return v22;
  }

  v10 = v40[0];
  BytesPerRow = CVPixelBufferGetBytesPerRow(v10);
  CVPixelBufferLockBaseAddress(v10, 0);
  pixelBuffer = v10;
  BaseAddress = CVPixelBufferGetBaseAddress(v10);
  if (BaseAddress)
  {
    if ((Height & 0x8000000000000000) == 0)
    {
      if (Height)
      {
        if ((Width & 0x8000000000000000) == 0)
        {
          v32 = 0;
          v28 = v6;
          v29 = v4;
          v33 = Width;
          v27 = Height;
          while (1)
          {
            v31 = v2;
            if (Width)
            {
              if (v4)
              {
                v11 = sub_1A5FD484C();
                if ((v11 & 0x8000000000000000) != 0)
                {
                  goto LABEL_62;
                }
              }

              else
              {
                v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              v12 = 0;
              v36 = v32 * Width;
              v13 = (v32 * Width) >> 64 != (v32 * Width) >> 63;
              v34 = v32 * BytesPerRow;
              do
              {
                if (v12 >= Width)
                {
                  goto LABEL_50;
                }

                if (__OFADD__(v12, 1))
                {
LABEL_51:
                  __break(1u);
LABEL_52:
                  __break(1u);
LABEL_53:
                  __break(1u);
LABEL_54:
                  __break(1u);
                  goto LABEL_55;
                }

                v37 = v12 + 1;
                v38 = v12;
                v14 = 0;
                v4 = 0;
                v15 = v12 + v36;
                v16 = __OFADD__(v12, v36);
                v17 = 0.0;
LABEL_24:
                v39 = v14;
                v18 = v4;
                while (v11 != v18)
                {
                  if (v18 >= v11)
                  {
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

                  v4 = v18 + 1;
                  if (__OFADD__(v18, 1))
                  {
                    goto LABEL_46;
                  }

                  if (v13)
                  {
                    goto LABEL_47;
                  }

                  if (v16)
                  {
                    goto LABEL_48;
                  }

                  if ((a1 & 0xC000000000000001) != 0)
                  {
                    v19 = MEMORY[0x1AC554EE0](v18, a1);
                  }

                  else
                  {
                    if (v18 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      goto LABEL_49;
                    }

                    v19 = *(a1 + 8 * v18 + 32);
                  }

                  v2 = v19;
                  CVPixelBufferLockBaseAddress(v19, 1uLL);
                  v20 = CVPixelBufferGetBaseAddress(v2);
                  if (!v20)
                  {
                    goto LABEL_65;
                  }

                  v21 = v20[v15];
                  CVPixelBufferUnlockBaseAddress(v2, 1uLL);

                  ++v18;
                  if (v17 < v21)
                  {
                    if ((v4 & 0x8000000000000000) != 0)
                    {
                      goto LABEL_54;
                    }

                    v14 = v4;
                    v17 = v21;
                    if (v4 > 0xFF)
                    {
LABEL_55:
                      __break(1u);
                      goto LABEL_56;
                    }

                    goto LABEL_24;
                  }
                }

                if ((v32 * BytesPerRow) >> 64 != (v32 * BytesPerRow) >> 63)
                {
                  goto LABEL_52;
                }

                if (__OFADD__(v38, v34))
                {
                  goto LABEL_53;
                }

                BaseAddress[v38 + v34] = v39;
                v12 = v37;
                Width = v33;
              }

              while (v37 != v33);
            }

            v2 = v31;
            v6 = v28;
            ++v32;
            v4 = v29;
            if (v32 == v27)
            {
              goto LABEL_44;
            }
          }
        }

LABEL_63:
        __break(1u);
      }

LABEL_44:
      v22 = pixelBuffer;
      CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);

      return v22;
    }

LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  __break(1u);
LABEL_65:
  result = sub_1A5FD483C();
  __break(1u);
  return result;
}

unint64_t sub_1A5B57A0C()
{
  result = qword_1EB20ACD0[0];
  if (!qword_1EB20ACD0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB20ACD0);
  }

  return result;
}

uint64_t sub_1A5B57A60(void *a1)
{
  a1[1] = sub_1A5B57B7C(&qword_1EB1EF5E0, type metadata accessor for InstanceMaskObservation, &protocol conformance descriptor for InstanceMaskObservation);
  a1[2] = sub_1A5B57B7C(&qword_1EB1EF5E8, type metadata accessor for InstanceMaskObservation, &protocol conformance descriptor for InstanceMaskObservation);
  a1[3] = sub_1A5B57B7C(&qword_1EB1EF5F0, type metadata accessor for InstanceMaskObservation, &protocol conformance descriptor for InstanceMaskObservation);
  result = sub_1A5B57B7C(&qword_1EB1EF5C0, type metadata accessor for InstanceMaskObservation, &protocol conformance descriptor for InstanceMaskObservation);
  a1[4] = result;
  return result;
}

uint64_t sub_1A5B57B7C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A5B57BC4(uint64_t a1)
{
  result = sub_1A5B57B7C(&qword_1EB1EF5A8, type metadata accessor for InstanceMaskObservation, &protocol conformance descriptor for InstanceMaskObservation);
  *(a1 + 8) = result;
  return result;
}

void sub_1A5B57C44(uint64_t a1)
{
  sub_1A5FD378C();
  if (v1 <= 0x3F)
  {
    type metadata accessor for PixelBufferObservation(319);
    if (v2 <= 0x3F)
    {
      sub_1A5FD367C();
      if (v3 <= 0x3F)
      {
        sub_1A5B0AD5C(319);
        if (v4 <= 0x3F)
        {
          sub_1A5B57E7C(319, &qword_1EB1EE6A0, &type metadata for RequestDescriptor, MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            sub_1A5B16F58(319, &qword_1EB1EF5D8, off_1E77AF140);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1A5B57D78()
{
  result = qword_1EB20B170[0];
  if (!qword_1EB20B170[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB20B170);
  }

  return result;
}

unint64_t sub_1A5B57DD0()
{
  result = qword_1EB20B280;
  if (!qword_1EB20B280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB20B280);
  }

  return result;
}

unint64_t sub_1A5B57E28()
{
  result = qword_1EB20B288[0];
  if (!qword_1EB20B288[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB20B288);
  }

  return result;
}

void sub_1A5B57E7C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A5B57ECC(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, _OWORD *a4@<X8>)
{
  v356 = a4;
  *&v353 = type metadata accessor for DetectHumanHandPoseRequest(0);
  MEMORY[0x1EEE9AC00](v353);
  *&v352 = &v328 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  *&v354 = &v328 - v10;
  v355 = type metadata accessor for VisionResult(0);
  MEMORY[0x1EEE9AC00](v355);
  v345 = &v328 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v347 = &v328 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v346 = &v328 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v344 = (&v328 - v17);
  MEMORY[0x1EEE9AC00](v18);
  v343 = (&v328 - v19);
  MEMORY[0x1EEE9AC00](v20);
  v342 = &v328 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v341 = (&v328 - v23);
  MEMORY[0x1EEE9AC00](v24);
  v340 = (&v328 - v25);
  MEMORY[0x1EEE9AC00](v26);
  v339 = &v328 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v338 = (&v328 - v29);
  MEMORY[0x1EEE9AC00](v30);
  v337 = (&v328 - v31);
  MEMORY[0x1EEE9AC00](v32);
  v336 = &v328 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v335 = &v328 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v334 = (&v328 - v37);
  MEMORY[0x1EEE9AC00](v38);
  v333 = (&v328 - v39);
  MEMORY[0x1EEE9AC00](v40);
  v332 = (&v328 - v41);
  MEMORY[0x1EEE9AC00](v42);
  v331 = (&v328 - v43);
  MEMORY[0x1EEE9AC00](v44);
  v330 = (&v328 - v45);
  MEMORY[0x1EEE9AC00](v46);
  v329 = (&v328 - v47);
  MEMORY[0x1EEE9AC00](v48);
  v349 = &v328 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v348 = (&v328 - v51);
  MEMORY[0x1EEE9AC00](v52);
  v350 = &v328 - v53;
  MEMORY[0x1EEE9AC00](v54);
  v351 = &v328 - v55;
  MEMORY[0x1EEE9AC00](v56);
  v58 = &v328 - v57;
  MEMORY[0x1EEE9AC00](v59);
  v61 = &v328 - v60;
  MEMORY[0x1EEE9AC00](v62);
  v64 = &v328 - v63;
  MEMORY[0x1EEE9AC00](v65);
  v67 = &v328 - v66;
  MEMORY[0x1EEE9AC00](v68);
  v70 = &v328 - v69;
  v357 = a3;
  if (a3)
  {
    v4 = a1;
    *v366 = a3;
    v71 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F3E90, &qword_1A5FF3720);
    sub_1A5B5C528();
    if (swift_dynamicCast())
    {
      v72 = v358;
      sub_1A5D28CD8(v72, v366);
      if (v366[20] != 255)
      {
        v85 = *&v366[16] | (v366[20] << 32);
        v86 = *v366;

        v87 = v4;
        v88 = v4;
        v89 = v356;
        sub_1A5B180A0(v88, v356);
        sub_1A5B16774();
        *(v89 + 5) = swift_allocError();
        *v90 = v86;
        *(v90 + 16) = v85;
        *(v90 + 20) = BYTE4(v85);

        __swift_destroy_boxed_opaque_existential_1(v87);
LABEL_17:
        swift_storeEnumTagMultiPayload();
        return;
      }
    }

    v73 = a2;
    a1 = v4;
    if (!a2)
    {
      v74 = v357;
      v75 = v357;
LABEL_16:
      *v366 = 0;
      *&v366[8] = 0xE000000000000000;
      v92 = v74;
      sub_1A5FD46AC();
      MEMORY[0x1AC554600](0xD000000000000021, 0x80000001A6054100);
      MEMORY[0x1AC554600](0xD000000000000038, 0x80000001A6054130);
      *&v358 = v75;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F3E90, &qword_1A5FF3720);
      sub_1A5FD481C();
      sub_1A5BF63A0(0, *v366, *&v366[8]);

      v93 = v356;
      sub_1A5B180A0(v4, v356);
      __swift_destroy_boxed_opaque_existential_1(v4);

      *(v93 + 5) = v75;
      goto LABEL_17;
    }
  }

  else
  {
    v73 = a2;
    if (!a2)
    {
      v4 = a1;
      sub_1A5B16774();
      v75 = swift_allocError();
      sub_1A5D2869C(0xD000000000000052, 0x80000001A60540A0, v91);
      v74 = v357;
      goto LABEL_16;
    }
  }

  sub_1A5B180A0(a1, v370);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EEA80, &unk_1A5FFD120);
  if (swift_dynamicCast())
  {
    v358 = *v366;
    v359 = *&v366[16];
    v360 = *&v366[32];
    *&v361 = *&v366[48];
    v76 = sub_1A5B5C30C(v73, type metadata accessor for FaceObservation, sub_1A5B2A524, type metadata accessor for FaceObservation);

    __swift_destroy_boxed_opaque_existential_1(a1);
    v77 = v359;
    v78 = v356;
    *v356 = v358;
    v78[1] = v77;
    v78[2] = v360;
    *(v78 + 6) = v361;
    *(v78 + 7) = v76;
LABEL_12:
    swift_storeEnumTagMultiPayload();
LABEL_13:
    __swift_destroy_boxed_opaque_existential_1(v370);
    return;
  }

  v328 = a1;
  if (swift_dynamicCast())
  {
    v79 = v366[0];
    v80 = v366[40];
    v81 = *&v366[48];
    v353 = *&v366[24];
    v354 = *&v366[8];
    v82 = sub_1A5B5C30C(v73, type metadata accessor for HumanObservation, sub_1A5B696E0, type metadata accessor for HumanObservation);

    __swift_destroy_boxed_opaque_existential_1(v328);
    v83 = v356;
    *v356 = v79;
    v84 = v354;
    *(v83 + 24) = v353;
    *(v83 + 8) = v84;
    *(v83 + 40) = v80;
    *(v83 + 6) = v81;
    *(v83 + 7) = v82;
    goto LABEL_12;
  }

  if (swift_dynamicCast())
  {
    v94 = *&v366[40];
    *v70 = v366[0];
    *(v70 + 8) = *&v366[8];
    *(v70 + 24) = *&v366[24];
    *(v70 + 5) = v94;
    if (v73[2])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF6C8, &qword_1A5FF9CE8);
      sub_1A5B180A0((v73 + 4), v365);

      __swift_destroy_boxed_opaque_existential_1(v328);
      sub_1A5B063D4(v365, &v358);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F4510, &unk_1A60217B0);
      type metadata accessor for ImageAestheticsScoresObservation(0);
      swift_dynamicCast();
      swift_storeEnumTagMultiPayload();
      v95 = v70;
LABEL_21:
      sub_1A5B5C4C0(v95, v356, type metadata accessor for VisionResult);
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_80;
  }

  if (swift_dynamicCast())
  {
    v360 = *&v366[32];
    v361 = *&v366[48];
    v362 = v367;
    v358 = *v366;
    v359 = *&v366[16];
    v96 = sub_1A5B5C30C(v73, type metadata accessor for ClassificationObservation, sub_1A5B6969C, type metadata accessor for ClassificationObservation);

    __swift_destroy_boxed_opaque_existential_1(v328);
    v97 = v361;
    v98 = v356;
    v356[2] = v360;
    v98[3] = v97;
    v98[4] = v362;
    v99 = v359;
    *v98 = v358;
    v98[1] = v99;
    *(v98 + 10) = v96;
    goto LABEL_12;
  }

  if (swift_dynamicCast())
  {
    v100 = *&v366[32];
    v353 = *&v366[16];
    v354 = *v366;
    v101 = sub_1A5B5C30C(v73, type metadata accessor for AnimalBodyPoseObservation, sub_1A5B69658, type metadata accessor for AnimalBodyPoseObservation);

    __swift_destroy_boxed_opaque_existential_1(v328);
    v102 = v356;
    v103 = v353;
    *v356 = v354;
    v102[1] = v103;
    *(v102 + 4) = v100;
    *(v102 + 5) = v101;
    goto LABEL_12;
  }

  if (swift_dynamicCast())
  {
    v358 = *v366;
    v359 = *&v366[16];
    v360 = *&v366[32];
    v361 = *&v366[48];
    v104 = sub_1A5B5C30C(v73, type metadata accessor for BarcodeObservation, sub_1A5B69614, type metadata accessor for BarcodeObservation);

    __swift_destroy_boxed_opaque_existential_1(v328);
    v105 = v359;
    v106 = v356;
    *v356 = v358;
    v106[1] = v105;
    v107 = v361;
    v106[2] = v360;
    v106[3] = v107;
    *(v106 + 8) = v104;
    goto LABEL_12;
  }

  if (swift_dynamicCast())
  {
    v108 = *v366;
    v109 = *&v366[40];
    v353 = *&v366[24];
    v354 = *&v366[8];
    v110 = sub_1A5B5C30C(v73, type metadata accessor for FaceObservation, sub_1A5B2A524, type metadata accessor for FaceObservation);

    __swift_destroy_boxed_opaque_existential_1(v328);
    v111 = v356;
    *v356 = v108;
    v112 = v354;
    *(v111 + 24) = v353;
    *(v111 + 8) = v112;
    *(v111 + 5) = v109;
    *(v111 + 6) = v110;
    goto LABEL_12;
  }

  if (swift_dynamicCast())
  {
    v113 = *v366;
    v114 = v366[40];
    v115 = *&v366[48];
    v353 = *&v366[24];
    v354 = *&v366[8];
    v116 = sub_1A5B5C30C(v73, type metadata accessor for FaceObservation, sub_1A5B2A524, type metadata accessor for FaceObservation);

    __swift_destroy_boxed_opaque_existential_1(v328);
    v117 = v356;
    *v356 = v113;
    v118 = v354;
    *(v117 + 24) = v353;
    *(v117 + 8) = v118;
    *(v117 + 40) = v114;
    *(v117 + 6) = v115;
    *(v117 + 7) = v116;
    goto LABEL_12;
  }

  if (swift_dynamicCast())
  {
    v119 = *&v366[48];
    *(v67 + 2) = *&v366[32];
    *(v67 + 3) = v119;
    *(v67 + 8) = v367;
    v120 = *&v366[16];
    *v67 = *v366;
    *(v67 + 1) = v120;
    if (v73[2])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF6C0, &qword_1A5FF9CE0);
      sub_1A5B180A0((v73 + 4), v365);

      __swift_destroy_boxed_opaque_existential_1(v328);
      sub_1A5B063D4(v365, &v358);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F4510, &unk_1A60217B0);
      type metadata accessor for ContoursObservation(0);
      swift_dynamicCast();
      swift_storeEnumTagMultiPayload();
      v95 = v67;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_102;
  }

  if (swift_dynamicCast())
  {
    v121 = v73;
    v122 = *&v366[32];
    v123 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF6B8, &qword_1A5FF9CD8) + 48);
    v124 = *&v366[16];
    *v64 = *v366;
    *(v64 + 1) = v124;
    *(v64 + 4) = v122;
    if (v121[2])
    {
      sub_1A5B180A0((v121 + 4), &v358);

      __swift_destroy_boxed_opaque_existential_1(v328);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F4510, &unk_1A60217B0);
      v125 = type metadata accessor for DetectedDocumentObservation(0);
      v126 = swift_dynamicCast();
      (*(*(v125 - 8) + 56))(&v64[v123], v126 ^ 1u, 1, v125);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v328);

      v138 = type metadata accessor for DetectedDocumentObservation(0);
      (*(*(v138 - 8) + 56))(&v64[v123], 1, 1, v138);
    }

    swift_storeEnumTagMultiPayload();
    v95 = v64;
    goto LABEL_21;
  }

  if (swift_dynamicCast())
  {
    v127 = v73;
    v128 = *&v366[32];
    v129 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF6B0, &qword_1A5FF9CD0) + 48);
    v130 = *&v366[16];
    *v61 = *v366;
    *(v61 + 1) = v130;
    *(v61 + 4) = v128;
    if (v127[2])
    {
      sub_1A5B180A0((v127 + 4), &v358);

      __swift_destroy_boxed_opaque_existential_1(v328);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F4510, &unk_1A60217B0);
      v131 = type metadata accessor for HorizonObservation(0);
      v132 = swift_dynamicCast();
      (*(*(v131 - 8) + 56))(&v61[v129], v132 ^ 1u, 1, v131);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v328);

      v142 = type metadata accessor for HorizonObservation(0);
      (*(*(v142 - 8) + 56))(&v61[v129], 1, 1, v142);
    }

    swift_storeEnumTagMultiPayload();
    v95 = v61;
    goto LABEL_21;
  }

  if (swift_dynamicCast())
  {
    v133 = v366[32];
    v134 = *&v366[40];
    v353 = *&v366[16];
    v354 = *v366;
    v135 = sub_1A5B5C30C(v73, type metadata accessor for HumanBodyPoseObservation, sub_1A5B695D0, type metadata accessor for HumanBodyPoseObservation);

    __swift_destroy_boxed_opaque_existential_1(v328);
    v136 = v356;
    v137 = v353;
    *v356 = v354;
    v136[1] = v137;
    *(v136 + 32) = v133;
    *(v136 + 5) = v134;
    *(v136 + 6) = v135;
    goto LABEL_12;
  }

  type metadata accessor for DetectHumanBodyPose3DRequest(0);
  if (swift_dynamicCast())
  {
    v139 = *v366;
    v140 = sub_1A5B5C30C(v73, type metadata accessor for HumanBodyPose3DObservation, sub_1A5B6958C, type metadata accessor for HumanBodyPose3DObservation);

    __swift_destroy_boxed_opaque_existential_1(v328);
    v141 = v356;
    *v356 = v139;
    *(v141 + 1) = v140;
    goto LABEL_12;
  }

  v4 = v73;
  if (swift_dynamicCast())
  {
    v143 = v352;
    sub_1A5B5C4C0(v354, v352, type metadata accessor for DetectHumanHandPoseRequest);
    v144 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF6A8, &qword_1A5FF9CC8) + 48);
    v145 = v356;
    sub_1A5B5DE58(v143, v356, type metadata accessor for DetectHumanHandPoseRequest);
    v146 = sub_1A5B5C30C(v73, type metadata accessor for HumanHandPoseObservation, sub_1A5B69548, type metadata accessor for HumanHandPoseObservation);

    __swift_destroy_boxed_opaque_existential_1(v328);
    sub_1A5B5DF14(v143, type metadata accessor for DetectHumanHandPoseRequest);
    *(v145 + v144) = v146;
    goto LABEL_12;
  }

  if (swift_dynamicCast())
  {
    v358 = *v366;
    v359 = *&v366[16];
    v360 = *&v366[32];
    *&v361 = *&v366[48];
    v147 = sub_1A5B5C30C(v73, type metadata accessor for DetectedObjectObservation, sub_1A5B69504, type metadata accessor for DetectedObjectObservation);

    __swift_destroy_boxed_opaque_existential_1(v328);
    v148 = v359;
    v149 = v356;
    *v356 = v358;
    v149[1] = v148;
    v149[2] = v360;
    *(v149 + 6) = v361;
    *(v149 + 7) = v147;
    goto LABEL_12;
  }

  if (swift_dynamicCast())
  {
    v150 = v366[32];
    v151 = *&v366[40];
    v152 = *&v366[16];
    *v58 = *v366;
    *(v58 + 1) = v152;
    v58[32] = v150;
    *(v58 + 5) = v151;
    if (v73[2])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF6A0, &qword_1A5FF9CC0);
      sub_1A5B180A0((v73 + 4), v365);

      __swift_destroy_boxed_opaque_existential_1(v328);
      sub_1A5B063D4(v365, &v358);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F4510, &unk_1A60217B0);
      type metadata accessor for SmudgeObservation(0);
      swift_dynamicCast();
      swift_storeEnumTagMultiPayload();
      v95 = v58;
      goto LABEL_21;
    }

    __break(1u);
LABEL_121:
    type metadata accessor for DetectCameraGazeRequest(0);
    if (swift_dynamicCast())
    {
      goto LABEL_128;
    }

    if (swift_dynamicCast())
    {
LABEL_124:
      v230 = *v366;
      v231 = v366[40];
      v232 = *&v366[48];
      v353 = *&v366[24];
      v354 = *&v366[8];
      v233 = sub_1A5B5C30C(v4, type metadata accessor for FaceObservation, sub_1A5B2A524, type metadata accessor for FaceObservation);

      __swift_destroy_boxed_opaque_existential_1(v328);
      v234 = v356;
      *v356 = v230;
      v235 = v354;
      *(v234 + 24) = v353;
      *(v234 + 8) = v235;
      *(v234 + 40) = v231;
      *(v234 + 6) = v232;
      *(v234 + 7) = v233;
      goto LABEL_12;
    }

    if (swift_dynamicCast())
    {
      v236 = *v366;
      v352 = *&v366[24];
      v353 = *&v366[40];
      v354 = *&v366[8];
      v237 = sub_1A5B5C30C(v4, type metadata accessor for HumanObservation, sub_1A5B696E0, type metadata accessor for HumanObservation);

      __swift_destroy_boxed_opaque_existential_1(v328);
      v238 = v356;
      *v356 = v236;
      *(v238 + 24) = v352;
      v239 = v353;
      *(v238 + 8) = v354;
      *(v238 + 40) = v239;
      *(v238 + 7) = v237;
      goto LABEL_12;
    }

    type metadata accessor for CalculateFaceLivelinessScoreRequest(0);
    if (swift_dynamicCast())
    {
      goto LABEL_128;
    }

    if (swift_dynamicCast())
    {
      v243 = *&v366[32];
      v353 = *&v366[16];
      v354 = *v366;
      v244 = sub_1A5B5C30C(v4, type metadata accessor for FaceObservation, sub_1A5B2A524, type metadata accessor for FaceObservation);

      __swift_destroy_boxed_opaque_existential_1(v328);
      v245 = v356;
      v246 = v353;
      *v356 = v354;
      v245[1] = v246;
      v245[2] = v243;
      *(v245 + 6) = v244;
      goto LABEL_12;
    }

    if (swift_dynamicCast())
    {
      v247 = *&v366[8];
      v248 = *&v366[48];
      v249 = v336;
      *v336 = v366[0];
      *(v249 + 1) = v247;
      v250 = *&v366[32];
      *(v249 + 1) = *&v366[16];
      *(v249 + 2) = v250;
      *(v249 + 6) = v248;
      if (v4[2])
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF648, &qword_1A5FF9C80);
        sub_1A5B180A0((v4 + 4), v365);

        __swift_destroy_boxed_opaque_existential_1(v328);
        sub_1A5B063D4(v365, &v358);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F4510, &unk_1A60217B0);
        type metadata accessor for ImageBlurObservation(0);
        v178 = v336;
        swift_dynamicCast();
        goto LABEL_86;
      }

LABEL_161:

      __break(1u);
LABEL_162:

      __break(1u);
      goto LABEL_163;
    }

    goto LABEL_135;
  }

  if (swift_dynamicCast())
  {
    v360 = *&v366[32];
    v361 = *&v366[48];
    v362 = v367;
    v358 = *v366;
    v359 = *&v366[16];
    v153 = sub_1A5B5C30C(v73, type metadata accessor for RectangleObservation, sub_1A5B694C0, type metadata accessor for RectangleObservation);

    __swift_destroy_boxed_opaque_existential_1(v328);
    v154 = v361;
    v155 = v356;
    v356[2] = v360;
    v155[3] = v154;
    v155[4] = v362;
    v156 = v359;
    *v155 = v358;
    v155[1] = v156;
    *(v155 + 10) = v153;
    goto LABEL_12;
  }

  if (swift_dynamicCast())
  {
    v360 = *&v366[32];
    v361 = *&v366[48];
    v362 = v367;
    *&v363 = v368;
    v358 = *v366;
    v359 = *&v366[16];
    v157 = sub_1A5B5C30C(v73, type metadata accessor for TextObservation, sub_1A5B6947C, type metadata accessor for TextObservation);

    __swift_destroy_boxed_opaque_existential_1(v328);
    v158 = v361;
    v159 = v356;
    v356[2] = v360;
    v159[3] = v158;
    v159[4] = v362;
    v160 = v363;
    v161 = v359;
    *v159 = v358;
    v159[1] = v161;
    *(v159 + 10) = v160;
    *(v159 + 11) = v157;
    goto LABEL_12;
  }

  type metadata accessor for DetectTrajectoriesRequest(0);
  if (swift_dynamicCast())
  {
    v162 = *v366;
    v163 = sub_1A5B5C30C(v73, type metadata accessor for TrajectoryObservation, sub_1A5B69438, type metadata accessor for TrajectoryObservation);

    __swift_destroy_boxed_opaque_existential_1(v328);
    v164 = v356;
    *v356 = v162;
    *(v164 + 1) = v163;
    goto LABEL_12;
  }

  type metadata accessor for TrackObjectRequest(0);
  if (swift_dynamicCast())
  {
    v165 = v358;
    v166 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF698, &unk_1A5FFD180) + 48);
    *v351 = v165;
    if (v4[2])
    {
      sub_1A5B180A0((v4 + 4), v366);

      __swift_destroy_boxed_opaque_existential_1(v328);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F4510, &unk_1A60217B0);
      v167 = type metadata accessor for DetectedObjectObservation(0);
      v168 = v351;
      v169 = swift_dynamicCast();
      (*(*(v167 - 8) + 56))(&v168[v166], v169 ^ 1u, 1, v167);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v328);

      v179 = type metadata accessor for DetectedObjectObservation(0);
      (*(*(v179 - 8) + 56))(&v351[v166], 1, 1, v179);
    }

    v180 = v351;
    goto LABEL_78;
  }

  type metadata accessor for TrackOpticalFlowRequest(0);
  if (swift_dynamicCast())
  {
    v170 = v358;
    v171 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF690, &qword_1A5FFE500) + 48);
    *v350 = v170;
    if (v4[2])
    {
      sub_1A5B180A0((v4 + 4), v366);

      __swift_destroy_boxed_opaque_existential_1(v328);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F4510, &unk_1A60217B0);
      v172 = type metadata accessor for OpticalFlowObservation(0);
      v173 = v350;
      v174 = swift_dynamicCast();
      (*(*(v172 - 8) + 56))(&v173[v171], v174 ^ 1u, 1, v172);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v328);

      v184 = type metadata accessor for OpticalFlowObservation(0);
      (*(*(v184 - 8) + 56))(&v350[v171], 1, 1, v184);
    }

    v180 = v350;
    goto LABEL_78;
  }

  if (swift_dynamicCast())
  {
    v175 = *&v366[32];
    v176 = *&v366[16];
    v177 = v348;
    *v348 = *v366;
    v177[1] = v176;
    *(v177 + 4) = v175;
    if (!v73[2])
    {

      __break(1u);
LABEL_135:
      if (swift_dynamicCast())
      {
        v251 = *&v366[32];
        v252 = *&v366[16];
        v253 = v337;
        *v337 = *v366;
        v253[1] = v252;
        *(v253 + 4) = v251;
        if (v4[2])
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF640, &qword_1A5FF9C78);
          sub_1A5B180A0((v4 + 4), v365);

          __swift_destroy_boxed_opaque_existential_1(v328);
          sub_1A5B063D4(v365, &v358);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F4510, &unk_1A60217B0);
          type metadata accessor for ImageExposureObservation(0);
          v178 = v337;
          swift_dynamicCast();
          goto LABEL_86;
        }

        goto LABEL_162;
      }

LABEL_139:
      if (swift_dynamicCast())
      {
        goto LABEL_212;
      }

      goto LABEL_142;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF688, &qword_1A5FF9CB8);
    sub_1A5B180A0((v73 + 4), v365);

    __swift_destroy_boxed_opaque_existential_1(v328);
    sub_1A5B063D4(v365, &v358);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F4510, &unk_1A60217B0);
    type metadata accessor for SaliencyImageObservation(0);
    v178 = v348;
    swift_dynamicCast();
LABEL_86:
    swift_storeEnumTagMultiPayload();
    v95 = v178;
    goto LABEL_21;
  }

  if (swift_dynamicCast())
  {
    v181 = v366[40];
    v182 = *&v366[48];
    v183 = v349;
    *v349 = v366[0];
    *(v183 + 8) = *&v366[8];
    *(v183 + 24) = *&v366[24];
    v183[40] = v181;
    *(v183 + 6) = v182;
    if (!v73[2])
    {

      __break(1u);
      goto LABEL_139;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF680, &qword_1A5FF9CB0);
    sub_1A5B180A0((v73 + 4), v365);

    __swift_destroy_boxed_opaque_existential_1(v328);
    sub_1A5B063D4(v365, &v358);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F4510, &unk_1A60217B0);
    type metadata accessor for FeaturePrintObservation(0);
    v178 = v349;
    swift_dynamicCast();
    goto LABEL_86;
  }

LABEL_80:
  if (swift_dynamicCast())
  {
    v185 = *&v366[32];
    v186 = *&v366[16];
    v187 = v329;
    *v329 = *v366;
    v187[1] = v186;
    *(v187 + 4) = v185;
    if (v4[2])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF678, &qword_1A5FF9CA8);
      sub_1A5B180A0((v4 + 4), v365);

      __swift_destroy_boxed_opaque_existential_1(v328);
      sub_1A5B063D4(v365, &v358);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F4510, &unk_1A60217B0);
      type metadata accessor for SaliencyImageObservation(0);
      v178 = v329;
      swift_dynamicCast();
      goto LABEL_86;
    }

    __break(1u);
LABEL_142:
    if (swift_dynamicCast())
    {
      goto LABEL_124;
    }

    goto LABEL_145;
  }

  type metadata accessor for GeneratePersonSegmentationRequest(0);
  if (swift_dynamicCast())
  {
    *v330 = *&v365[0];
    if (v4[2])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF670, &qword_1A60084A0);
      sub_1A5B180A0((v4 + 4), &v358);

      __swift_destroy_boxed_opaque_existential_1(v328);
      sub_1A5B063D4(&v358, v366);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F4510, &unk_1A60217B0);
      type metadata accessor for PixelBufferObservation(0);
      v178 = v330;
      swift_dynamicCast();
      goto LABEL_86;
    }

    __break(1u);
LABEL_145:
    if (swift_dynamicCast())
    {
      v254 = v366[0];
      v255 = v366[40];
      v256 = *&v366[48];
      v353 = *&v366[24];
      v354 = *&v366[8];
      v257 = sub_1A5B5C30C(v4, type metadata accessor for ImageAestheticsObservation, sub_1A5B69328, type metadata accessor for ImageAestheticsObservation);

      __swift_destroy_boxed_opaque_existential_1(v328);
      v258 = v356;
      *v356 = v254;
      v259 = v354;
      *(v258 + 24) = v353;
      *(v258 + 8) = v259;
      *(v258 + 40) = v255;
      *(v258 + 6) = v256;
      *(v258 + 7) = v257;
      goto LABEL_12;
    }

    if (swift_dynamicCast())
    {
      goto LABEL_212;
    }

    if (swift_dynamicCast() || swift_dynamicCast())
    {
      goto LABEL_207;
    }

    if (swift_dynamicCast())
    {
      v358 = *v366;
      v359 = *&v366[16];
      v360 = *&v366[32];
      v361 = *&v366[48];
      v260 = sub_1A5B5C30C(v4, type metadata accessor for FaceObservation, sub_1A5B2A524, type metadata accessor for FaceObservation);

      __swift_destroy_boxed_opaque_existential_1(v328);
      v261 = v359;
      v262 = v356;
      *v356 = v358;
      v262[1] = v261;
      v263 = v361;
      v262[2] = v360;
      v262[3] = v263;
      *(v262 + 8) = v260;
      goto LABEL_12;
    }

    if (swift_dynamicCast() || swift_dynamicCast())
    {
      v264 = *v366;
      v265 = *&v366[40];
      v353 = *&v366[24];
      v354 = *&v366[8];
      v266 = sub_1A5B5C30C(v4, type metadata accessor for FaceObservation, sub_1A5B2A524, type metadata accessor for FaceObservation);

      __swift_destroy_boxed_opaque_existential_1(v328);
      v267 = v356;
      *v356 = v264;
      v268 = v354;
      *(v267 + 24) = v353;
      *(v267 + 8) = v268;
      *(v267 + 5) = v265;
      *(v267 + 6) = v266;
      goto LABEL_12;
    }

    goto LABEL_158;
  }

  if (swift_dynamicCast())
  {
    v188 = *&v366[32];
    v189 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF668, &qword_1A5FF9CA0) + 48);
    v190 = *&v366[16];
    v191 = v331;
    *v331 = *v366;
    v191[1] = v190;
    *(v191 + 4) = v188;
    if (v4[2])
    {
      sub_1A5B180A0((v4 + 4), &v358);

      __swift_destroy_boxed_opaque_existential_1(v328);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F4510, &unk_1A60217B0);
      v192 = type metadata accessor for InstanceMaskObservation(0);
      v193 = v331;
      v194 = swift_dynamicCast();
      (*(*(v192 - 8) + 56))(&v193[v189], v194 ^ 1u, 1, v192);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v328);

      v208 = type metadata accessor for InstanceMaskObservation(0);
      (*(*(v208 - 8) + 56))(v331 + v189, 1, 1, v208);
    }

    v180 = v331;
    goto LABEL_78;
  }

  if (swift_dynamicCast())
  {
    v195 = *&v366[32];
    v196 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF660, &qword_1A5FF9C98) + 48);
    v197 = *&v366[16];
    v198 = v332;
    *v332 = *v366;
    v198[1] = v197;
    *(v198 + 4) = v195;
    if (v4[2])
    {
      sub_1A5B180A0((v4 + 4), &v358);

      __swift_destroy_boxed_opaque_existential_1(v328);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F4510, &unk_1A60217B0);
      v199 = type metadata accessor for InstanceMaskObservation(0);
      v200 = v332;
      v201 = swift_dynamicCast();
      (*(*(v199 - 8) + 56))(&v200[v196], v201 ^ 1u, 1, v199);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v328);

      v213 = type metadata accessor for InstanceMaskObservation(0);
      (*(*(v213 - 8) + 56))(v332 + v196, 1, 1, v213);
    }

    v180 = v332;
    goto LABEL_78;
  }

  if (swift_dynamicCast())
  {
    v362 = v367;
    v363 = v368;
    v364 = v369;
    v358 = *v366;
    v359 = *&v366[16];
    v360 = *&v366[32];
    v361 = *&v366[48];
    v202 = sub_1A5B5C30C(v4, type metadata accessor for DocumentObservation, sub_1A5B693F4, type metadata accessor for DocumentObservation);

    __swift_destroy_boxed_opaque_existential_1(v328);
    v203 = v363;
    v204 = v356;
    v356[4] = v362;
    v204[5] = v203;
    v205 = v364;
    v206 = v359;
    *v204 = v358;
    v204[1] = v206;
    v207 = v361;
    v204[2] = v360;
    v204[3] = v207;
    *(v204 + 12) = v205;
    *(v204 + 13) = v202;
    goto LABEL_12;
  }

  if (swift_dynamicCast())
  {
    v360 = *&v366[32];
    v361 = *&v366[48];
    v362 = v367;
    v358 = *v366;
    v359 = *&v366[16];
    v209 = sub_1A5B5C30C(v4, type metadata accessor for RecognizedTextObservation, sub_1A5B693B0, type metadata accessor for RecognizedTextObservation);

    __swift_destroy_boxed_opaque_existential_1(v328);
    v210 = v361;
    v211 = v356;
    v356[2] = v360;
    v211[3] = v210;
    v211[4] = v362;
    v212 = v359;
    *v211 = v358;
    v211[1] = v212;
    *(v211 + 10) = v209;
    goto LABEL_12;
  }

LABEL_102:
  if (swift_dynamicCast())
  {
    v214 = v366[32];
    v215 = *&v366[40];
    v353 = *&v366[16];
    v354 = *v366;
    v216 = sub_1A5B5C30C(v4, type metadata accessor for RecognizedObjectObservation, sub_1A5B6936C, type metadata accessor for RecognizedObjectObservation);

    __swift_destroy_boxed_opaque_existential_1(v328);
    v217 = v356;
    v218 = v353;
    *v356 = v354;
    v217[1] = v218;
    *(v217 + 32) = v214;
    *(v217 + 5) = v215;
    *(v217 + 6) = v216;
    goto LABEL_12;
  }

  if (swift_dynamicCast())
  {
    v362 = v367;
    v363 = v368;
    v364 = v369;
    v358 = *v366;
    v359 = *&v366[16];
    v360 = *&v366[32];
    v361 = *&v366[48];
    __swift_destroy_boxed_opaque_existential_1(v328);

    v219 = v363;
    v220 = v356;
    v356[4] = v362;
    v220[5] = v219;
    v221 = v364;
    v222 = v359;
    *v220 = v358;
    v220[1] = v222;
    v223 = v361;
    v220[2] = v360;
    v220[3] = v223;
    *(v220 + 12) = v221;
    *(v220 + 13) = v4;
    goto LABEL_12;
  }

  type metadata accessor for TrackHomographicImageRegistrationRequest(0);
  if (!swift_dynamicCast())
  {
    type metadata accessor for TrackTranslationalImageRegistrationRequest(0);
    if (swift_dynamicCast())
    {
      *v334 = *&v365[0];
      if (v4[2])
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F48B0, &qword_1A5FF9C88);
        sub_1A5B180A0((v4 + 4), &v358);

        __swift_destroy_boxed_opaque_existential_1(v328);
        sub_1A5B063D4(&v358, v366);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F4510, &unk_1A60217B0);
        type metadata accessor for ImageTranslationAlignmentObservation(0);
        v178 = v334;
        swift_dynamicCast();
        goto LABEL_86;
      }

      __break(1u);
      goto LABEL_161;
    }

    type metadata accessor for TrackRectangleRequest(0);
    if (swift_dynamicCast())
    {
      v224 = v358;
      v225 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF650, &unk_1A6005CC0) + 48);
      *v335 = v224;
      if (v4[2])
      {
        sub_1A5B180A0((v4 + 4), v366);

        __swift_destroy_boxed_opaque_existential_1(v328);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F4510, &unk_1A60217B0);
        v226 = type metadata accessor for RectangleObservation(0);
        v227 = v335;
        v228 = swift_dynamicCast();
        (*(*(v226 - 8) + 56))(&v227[v225], v228 ^ 1u, 1, v226);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1(v328);

        v229 = type metadata accessor for RectangleObservation(0);
        (*(*(v229 - 8) + 56))(&v335[v225], 1, 1, v229);
      }

      v180 = v335;
      goto LABEL_78;
    }

    type metadata accessor for DetectScreenGazeRequest(0);
    if (swift_dynamicCast() || (type metadata accessor for DetectDeviceGazeRequest(0), swift_dynamicCast()))
    {
LABEL_128:
      v240 = *v366;
      v241 = sub_1A5B5C30C(v4, type metadata accessor for FaceObservation, sub_1A5B2A524, type metadata accessor for FaceObservation);

      __swift_destroy_boxed_opaque_existential_1(v328);
      v242 = v356;
      *v356 = v240;
      *(v242 + 1) = v241;
      goto LABEL_12;
    }

    goto LABEL_121;
  }

  *v333 = *&v365[0];
  if (v4[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF658, &qword_1A5FF9C90);
    sub_1A5B180A0((v4 + 4), &v358);

    __swift_destroy_boxed_opaque_existential_1(v328);
    sub_1A5B063D4(&v358, v366);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F4510, &unk_1A60217B0);
    type metadata accessor for ImageHomographicAlignmentObservation(0);
    v178 = v333;
    swift_dynamicCast();
    goto LABEL_86;
  }

  __break(1u);
LABEL_158:
  if (swift_dynamicCast())
  {
    v269 = *v366;
    v270 = *&v366[8];
    v271 = *&v366[48];
    v353 = *&v366[32];
    v354 = *&v366[16];
    v272 = sub_1A5B5C30C(v4, type metadata accessor for FaceObservation, sub_1A5B2A524, type metadata accessor for FaceObservation);

    __swift_destroy_boxed_opaque_existential_1(v328);
    v273 = v356;
    *v356 = v269;
    *(v273 + 2) = v270;
    v274 = v353;
    v273[1] = v354;
    v273[2] = v274;
    *(v273 + 6) = v271;
    *(v273 + 7) = v272;
    goto LABEL_12;
  }

LABEL_163:
  if (swift_dynamicCast())
  {
    v275 = *v366;
    v276 = *&v366[40];
    v353 = *&v366[24];
    v354 = *&v366[8];
    v277 = sub_1A5B5C30C(v4, type metadata accessor for RecognizedObjectObservation, sub_1A5B6936C, type metadata accessor for RecognizedObjectObservation);

    __swift_destroy_boxed_opaque_existential_1(v328);
    v278 = v356;
    *v356 = v275;
    v279 = v354;
    *(v278 + 24) = v353;
    *(v278 + 8) = v279;
    *(v278 + 5) = v276;
    *(v278 + 6) = v277;
    goto LABEL_12;
  }

  if (swift_dynamicCast())
  {
    v280 = *&v366[16];
    v281 = v338;
    *v338 = *v366;
    v281[1] = v280;
    v281[2] = *&v366[32];
    if (v4[2])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF638, &qword_1A6022DB0);
      sub_1A5B180A0((v4 + 4), v365);

      __swift_destroy_boxed_opaque_existential_1(v328);
      sub_1A5B063D4(v365, &v358);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F4510, &unk_1A60217B0);
      type metadata accessor for PixelBufferObservation(0);
      v178 = v338;
      swift_dynamicCast();
      goto LABEL_86;
    }

    __break(1u);
  }

  else if (swift_dynamicCast())
  {
    v282 = v366[40];
    v283 = *&v366[48];
    v284 = v339;
    *v339 = v366[0];
    *(v284 + 8) = *&v366[8];
    *(v284 + 24) = *&v366[24];
    v284[40] = v282;
    *(v284 + 6) = v283;
    if (v4[2])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF630, &qword_1A5FF9C70);
      sub_1A5B180A0((v4 + 4), v365);

      __swift_destroy_boxed_opaque_existential_1(v328);
      sub_1A5B063D4(v365, &v358);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F4510, &unk_1A60217B0);
      type metadata accessor for DetectionPrintObservation(0);
      v178 = v339;
      swift_dynamicCast();
      goto LABEL_86;
    }

    __break(1u);
    goto LABEL_176;
  }

  if (swift_dynamicCast())
  {
    v285 = *&v366[16];
    v286 = v340;
    *v340 = *v366;
    v286[1] = v285;
    v286[2] = *&v366[32];
    if (v4[2])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF628, &qword_1A5FF9C68);
      sub_1A5B180A0((v4 + 4), v365);

      __swift_destroy_boxed_opaque_existential_1(v328);
      sub_1A5B063D4(v365, &v358);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F4510, &unk_1A60217B0);
      type metadata accessor for PixelBufferObservation(0);
      v178 = v340;
      swift_dynamicCast();
      goto LABEL_86;
    }

    __break(1u);
    goto LABEL_180;
  }

LABEL_176:
  if (swift_dynamicCast())
  {
    v287 = *&v366[16];
    v288 = v341;
    *v341 = *v366;
    v288[1] = v287;
    v288[2] = *&v366[32];
    if (v4[2])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF620, &qword_1A5FF9C60);
      sub_1A5B180A0((v4 + 4), v365);

      __swift_destroy_boxed_opaque_existential_1(v328);
      sub_1A5B063D4(v365, &v358);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F4510, &unk_1A60217B0);
      type metadata accessor for PixelBufferObservation(0);
      v178 = v341;
      swift_dynamicCast();
      goto LABEL_86;
    }

    __break(1u);
    goto LABEL_184;
  }

LABEL_180:
  if (swift_dynamicCast())
  {
    v289 = *&v366[40];
    v290 = v342;
    *v342 = v366[0];
    *(v290 + 8) = *&v366[8];
    *(v290 + 24) = *&v366[24];
    *(v290 + 5) = v289;
    if (v4[2])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF618, &qword_1A5FF9C58);
      sub_1A5B180A0((v4 + 4), v365);

      __swift_destroy_boxed_opaque_existential_1(v328);
      sub_1A5B063D4(v365, &v358);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F4510, &unk_1A60217B0);
      type metadata accessor for ImageFingerprintsObservation(0);
      v178 = v342;
      swift_dynamicCast();
      goto LABEL_86;
    }

    __break(1u);
    goto LABEL_188;
  }

LABEL_184:
  if (swift_dynamicCast())
  {
    v291 = *&v366[32];
    v292 = *&v366[16];
    v293 = v343;
    *v343 = *v366;
    v293[1] = v292;
    *(v293 + 4) = v291;
    if (v4[2])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF610, &qword_1A5FF9C50);
      sub_1A5B180A0((v4 + 4), v365);

      __swift_destroy_boxed_opaque_existential_1(v328);
      sub_1A5B063D4(v365, &v358);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F4510, &unk_1A60217B0);
      type metadata accessor for FeaturePrintObservation(0);
      v178 = v343;
      swift_dynamicCast();
      goto LABEL_86;
    }

    __break(1u);
    goto LABEL_192;
  }

LABEL_188:
  if (swift_dynamicCast())
  {
    v294 = *&v366[16];
    v295 = v344;
    *v344 = *v366;
    v295[1] = v294;
    v295[2] = *&v366[32];
    if (v4[2])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF608, &unk_1A6022DA0);
      sub_1A5B180A0((v4 + 4), v365);

      __swift_destroy_boxed_opaque_existential_1(v328);
      sub_1A5B063D4(v365, &v358);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F4510, &unk_1A60217B0);
      type metadata accessor for PixelBufferObservation(0);
      v178 = v344;
      swift_dynamicCast();
      goto LABEL_86;
    }

    __break(1u);
    goto LABEL_195;
  }

LABEL_192:
  if (swift_dynamicCast())
  {
    goto LABEL_202;
  }

LABEL_195:
  if (swift_dynamicCast())
  {
    v358 = *v366;
    v359 = *&v366[16];
    v360 = *&v366[32];
    *&v361 = *&v366[48];
    v296 = sub_1A5B5C30C(v4, type metadata accessor for RecognizedObjectObservation, sub_1A5B6936C, type metadata accessor for RecognizedObjectObservation);

    __swift_destroy_boxed_opaque_existential_1(v328);
    v297 = v359;
    v298 = v356;
    *v356 = v358;
    v298[1] = v297;
    v298[2] = v360;
    *(v298 + 6) = v361;
    *(v298 + 7) = v296;
    goto LABEL_12;
  }

  if (swift_dynamicCast())
  {
    goto LABEL_202;
  }

  if (swift_dynamicCast())
  {
    v360 = *&v366[32];
    v361 = *&v366[48];
    v362 = v367;
    *&v363 = v368;
    v358 = *v366;
    v359 = *&v366[16];
    v299 = sub_1A5B5C30C(v4, type metadata accessor for RecognizedObjectObservation, sub_1A5B6936C, type metadata accessor for RecognizedObjectObservation);

    __swift_destroy_boxed_opaque_existential_1(v328);
    v300 = v361;
    v301 = v356;
    v356[2] = v360;
    v301[3] = v300;
    v301[4] = v362;
    v302 = v363;
    v303 = v359;
    *v301 = v358;
    v301[1] = v303;
    *(v301 + 10) = v302;
    *(v301 + 11) = v299;
    goto LABEL_12;
  }

  if (swift_dynamicCast() || swift_dynamicCast())
  {
LABEL_202:
    v304 = *&v366[32];
    v353 = *&v366[16];
    v354 = *v366;
    v305 = sub_1A5B5C30C(v4, type metadata accessor for RecognizedObjectObservation, sub_1A5B6936C, type metadata accessor for RecognizedObjectObservation);

    __swift_destroy_boxed_opaque_existential_1(v328);
    v306 = v356;
    v307 = v353;
    *v356 = v354;
    v306[1] = v307;
    *(v306 + 4) = v304;
    *(v306 + 5) = v305;
    goto LABEL_12;
  }

  type metadata accessor for TrackMaskRequest(0);
  if (swift_dynamicCast())
  {
    v308 = v358;
    v309 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F4CD0, &unk_1A60260B0) + 48);
    *v346 = v308;
    if (v4[2])
    {
      sub_1A5B180A0((v4 + 4), v366);

      __swift_destroy_boxed_opaque_existential_1(v328);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F4510, &unk_1A60217B0);
      v310 = type metadata accessor for PixelBufferObservation(0);
      v311 = v346;
      v312 = swift_dynamicCast();
      (*(*(v310 - 8) + 56))(&v311[v309], v312 ^ 1u, 1, v310);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v328);
      v318 = type metadata accessor for PixelBufferObservation(0);
      (*(*(v318 - 8) + 56))(&v346[v309], 1, 1, v318);
    }

    v180 = v346;
    goto LABEL_78;
  }

  if (swift_dynamicCast())
  {
LABEL_207:
    v313 = v366[0];
    v314 = *&v366[40];
    v353 = *&v366[24];
    v354 = *&v366[8];
    v315 = sub_1A5B5C30C(v4, type metadata accessor for ClassificationObservation, sub_1A5B6969C, type metadata accessor for ClassificationObservation);

    __swift_destroy_boxed_opaque_existential_1(v328);
    v316 = v356;
    *v356 = v313;
    v317 = v354;
    *(v316 + 24) = v353;
    *(v316 + 8) = v317;
    *(v316 + 5) = v314;
    *(v316 + 6) = v315;
    goto LABEL_12;
  }

  if (swift_dynamicCast() || swift_dynamicCast())
  {
LABEL_212:
    v319 = v366[0];
    v320 = v366[40];
    v321 = *&v366[48];
    v353 = *&v366[24];
    v354 = *&v366[8];
    v322 = sub_1A5B5C30C(v4, type metadata accessor for ClassificationObservation, sub_1A5B6969C, type metadata accessor for ClassificationObservation);

    __swift_destroy_boxed_opaque_existential_1(v328);
    v323 = v356;
    *v356 = v319;
    v324 = v354;
    *(v323 + 24) = v353;
    *(v323 + 8) = v324;
    *(v323 + 40) = v320;
    *(v323 + 6) = v321;
    *(v323 + 7) = v322;
    goto LABEL_12;
  }

  if (swift_dynamicCast())
  {
    v325 = v366[40];
    v326 = *&v366[48];
    v327 = v347;
    *v347 = v366[0];
    *(v327 + 8) = *&v366[8];
    *(v327 + 24) = *&v366[24];
    v327[40] = v325;
    *(v327 + 6) = v326;
    if (v4[2])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF600, &qword_1A5FF9C48);
      sub_1A5B180A0((v4 + 4), v365);

      __swift_destroy_boxed_opaque_existential_1(v328);
      sub_1A5B063D4(v365, &v358);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F4510, &unk_1A60217B0);
      type metadata accessor for S1vLyVSh30UQ26TGBoV8MHvObservation(0);
      v178 = v347;
      swift_dynamicCast();
      goto LABEL_86;
    }

    __break(1u);
  }

  else
  {

    sub_1A5B180A0(v328, v345);
    if (v357)
    {
      __swift_destroy_boxed_opaque_existential_1(v328);
      v180 = v345;
      *(v345 + 40) = v357;
LABEL_78:
      swift_storeEnumTagMultiPayload();
      v95 = v180;
      goto LABEL_21;
    }
  }

  __break(1u);
}

uint64_t sub_1A5B5C30C(uint64_t a1, uint64_t (*a2)(void), void (*a3)(BOOL, unint64_t, uint64_t), uint64_t (*a4)(void))
{
  v7 = a2(0);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v18 - v10;
  v12 = *(a1 + 16);
  v13 = MEMORY[0x1E69E7CC0];
  if (v12)
  {
    v21 = MEMORY[0x1E69E7CC0];
    v19 = a3;
    (a3)(0, v12, 0, v9);
    v13 = v21;
    v14 = a1 + 32;
    do
    {
      sub_1A5B180A0(v14, v20);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F4510, &unk_1A60217B0);
      swift_dynamicCast();
      v21 = v13;
      v16 = *(v13 + 16);
      v15 = *(v13 + 24);
      if (v16 >= v15 >> 1)
      {
        v19(v15 > 1, v16 + 1, 1);
        v13 = v21;
      }

      *(v13 + 16) = v16 + 1;
      sub_1A5B5C4C0(v11, v13 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v16, a4);
      v14 += 40;
      --v12;
    }

    while (v12);
  }

  return v13;
}

uint64_t sub_1A5B5C4C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A5B5C528()
{
  result = qword_1EB1EF6D0;
  if (!qword_1EB1EF6D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB1EF6D0);
  }

  return result;
}

uint64_t sub_1A5B5C574@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for VisionResult(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v170 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5B5DE58(v2, v6, type metadata accessor for VisionResult);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v8 = *v6;
      v9 = v6[40];
      v10 = *(v6 + 6);
      v90 = *(v6 + 8);
      v171 = *(v6 + 24);
      v172 = v90;

      a1[3] = &type metadata for DetectHumanRectanglesRequest;
      a1[4] = sub_1A5B5EF2C();
      goto LABEL_91;
    case 2u:

      return sub_1A5B063D4(v6, a1);
    case 3u:
      v82 = *v6;
      v83 = *(v6 + 5);
      v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF6C8, &qword_1A5FF9CE8) + 48);
      a1[3] = &type metadata for CalculateImageAestheticsScoresRequest;
      a1[4] = sub_1A5B364B8();
      v84 = swift_allocObject();
      *a1 = v84;
      *(v84 + 16) = v82;
      v85 = *(v6 + 8);
      *(v84 + 40) = *(v6 + 24);
      *(v84 + 24) = v85;
      *(v84 + 56) = v83;
      v48 = type metadata accessor for ImageAestheticsScoresObservation;
      goto LABEL_71;
    case 4u:
      v59 = *(v6 + 3);
      v175 = *(v6 + 2);
      v176 = v59;
      v177 = *(v6 + 4);
      v60 = *(v6 + 1);
      v173 = *v6;
      v174 = v60;

      a1[3] = &type metadata for ClassifyImageRequest;
      a1[4] = sub_1A5B5EED8();
      goto LABEL_45;
    case 5u:
      v179 = *(v6 + 12);
      v100 = *(v6 + 5);
      v177 = *(v6 + 4);
      v178 = v100;
      v101 = *(v6 + 1);
      v173 = *v6;
      v174 = v101;
      v102 = *(v6 + 3);
      v175 = *(v6 + 2);
      v176 = v102;

      a1[3] = &type metadata for CoreMLRequest;
      a1[4] = sub_1A5B5EE84();
      goto LABEL_75;
    case 6u:
      v16 = *(v6 + 4);
      v114 = *v6;
      v171 = *(v6 + 1);
      v172 = v114;

      a1[3] = &type metadata for DetectAnimalBodyPoseRequest;
      a1[4] = sub_1A5B5EE30();
      goto LABEL_55;
    case 7u:
      v86 = *(v6 + 1);
      v173 = *v6;
      v174 = v86;
      v87 = *(v6 + 3);
      v175 = *(v6 + 2);
      v176 = v87;

      a1[3] = &type metadata for DetectBarcodesRequest;
      a1[4] = sub_1A5B5ED9C();
      goto LABEL_41;
    case 8u:
      v55 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF6C0, &qword_1A5FF9CE0) + 48);
      a1[3] = &type metadata for DetectContoursRequest;
      a1[4] = sub_1A5B5ED48();
      v121 = swift_allocObject();
      *a1 = v121;
      v122 = *(v6 + 3);
      *(v121 + 48) = *(v6 + 2);
      *(v121 + 64) = v122;
      *(v121 + 80) = *(v6 + 8);
      v123 = *(v6 + 1);
      *(v121 + 16) = *v6;
      *(v121 + 32) = v123;
      v124 = type metadata accessor for ContoursObservation;
      goto LABEL_86;
    case 9u:
      v75 = *(v6 + 4);
      v70 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF6B8, &qword_1A5FF9CD8) + 48);
      a1[3] = &type metadata for DetectDocumentSegmentationRequest;
      a1[4] = sub_1A5B1AD3C();
      v76 = swift_allocObject();
      *a1 = v76;
      v77 = *(v6 + 1);
      *(v76 + 16) = *v6;
      *(v76 + 32) = v77;
      *(v76 + 48) = v75;
      v73 = &qword_1EB1EF888;
      v74 = &qword_1A5FF9D08;
      return sub_1A5B10168(&v6[v70], v73, v74);
    case 0xAu:
      v12 = *v6;
      v13 = *(v6 + 5);
      v120 = *(v6 + 8);
      v171 = *(v6 + 24);
      v172 = v120;

      a1[3] = &type metadata for DetectFaceCaptureQualityRequest;
      a1[4] = sub_1A5B5ECB4();
      goto LABEL_94;
    case 0xBu:
      v19 = *v6;
      v9 = v6[40];
      v10 = *(v6 + 6);
      v56 = *(v6 + 8);
      v171 = *(v6 + 24);
      v172 = v56;

      a1[3] = &type metadata for DetectFaceLandmarksRequest;
      a1[4] = sub_1A5B5EC20();
      goto LABEL_26;
    case 0xCu:
      v69 = *(v6 + 4);
      v70 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF6B0, &qword_1A5FF9CD0) + 48);
      a1[3] = &type metadata for DetectHorizonRequest;
      a1[4] = sub_1A5B5EBCC();
      v71 = swift_allocObject();
      *a1 = v71;
      v72 = *(v6 + 1);
      *(v71 + 16) = *v6;
      *(v71 + 32) = v72;
      *(v71 + 48) = v69;
      v73 = &qword_1EB1EF870;
      v74 = &qword_1A5FF9D00;
      return sub_1A5B10168(&v6[v70], v73, v74);
    case 0xDu:
      v111 = v6[32];
      v112 = *(v6 + 5);
      v113 = *v6;
      v171 = *(v6 + 1);
      v172 = v113;

      a1[3] = &type metadata for DetectHumanBodyPoseRequest;
      a1[4] = sub_1A5B5EB78();
      goto LABEL_80;
    case 0xEu:
      v36 = *v6;

      a1[3] = type metadata accessor for DetectHumanBodyPose3DRequest(0);
      v37 = &qword_1EB1EEA20;
      v38 = type metadata accessor for DetectHumanBodyPose3DRequest;
      v39 = &protocol conformance descriptor for DetectHumanBodyPose3DRequest;
      goto LABEL_67;
    case 0xFu:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF6A8, &qword_1A5FF9CC8);

      a1[3] = type metadata accessor for DetectHumanHandPoseRequest(0);
      a1[4] = sub_1A5B5E6AC(&qword_1EB1EF2E0, type metadata accessor for DetectHumanHandPoseRequest, &protocol conformance descriptor for DetectHumanHandPoseRequest);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
      return sub_1A5B5C4C0(v6, boxed_opaque_existential_1, type metadata accessor for DetectHumanHandPoseRequest);
    case 0x10u:
      v43 = v6[32];
      v44 = *(v6 + 5);
      v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF6A0, &qword_1A5FF9CC0) + 48);
      a1[3] = &type metadata for DetectLensSmudgeRequest;
      a1[4] = sub_1A5B5EAD0();
      v46 = swift_allocObject();
      *a1 = v46;
      v47 = *(v6 + 1);
      *(v46 + 16) = *v6;
      *(v46 + 32) = v47;
      *(v46 + 48) = v43;
      *(v46 + 56) = v44;
      v48 = type metadata accessor for SmudgeObservation;
      goto LABEL_71;
    case 0x11u:
      v92 = *(v6 + 3);
      v175 = *(v6 + 2);
      v176 = v92;
      v177 = *(v6 + 4);
      v93 = *(v6 + 1);
      v173 = *v6;
      v174 = v93;

      a1[3] = &type metadata for DetectRectanglesRequest;
      a1[4] = sub_1A5B5EA7C();
      goto LABEL_45;
    case 0x12u:
      v116 = *(v6 + 3);
      v175 = *(v6 + 2);
      v176 = v116;
      v177 = *(v6 + 4);
      *&v178 = *(v6 + 10);
      v117 = *(v6 + 1);
      v173 = *v6;
      v174 = v117;

      a1[3] = &type metadata for DetectTextRectanglesRequest;
      a1[4] = sub_1A5B5E9E8();
      goto LABEL_57;
    case 0x13u:
      v36 = *v6;

      a1[3] = type metadata accessor for DetectTrajectoriesRequest(0);
      v37 = &unk_1EB1F00A0;
      v38 = type metadata accessor for DetectTrajectoriesRequest;
      v39 = &protocol conformance descriptor for DetectTrajectoriesRequest;
      goto LABEL_67;
    case 0x14u:
      v99 = *(v6 + 4);
      v52 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF688, &qword_1A5FF9CB8) + 48);
      a1[3] = &type metadata for GenerateAttentionBasedSaliencyImageRequest;
      a1[4] = sub_1A5B5E994();
      goto LABEL_73;
    case 0x15u:
      v106 = *v6;
      v107 = v6[40];
      v108 = *(v6 + 6);
      v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF680, &qword_1A5FF9CB0) + 48);
      a1[3] = &type metadata for GenerateImageFeaturePrintRequest;
      a1[4] = sub_1A5B5E940();
      v109 = swift_allocObject();
      *a1 = v109;
      *(v109 + 16) = v106;
      v110 = *(v6 + 8);
      *(v109 + 40) = *(v6 + 24);
      *(v109 + 24) = v110;
      *(v109 + 56) = v107;
      *(v109 + 64) = v108;
      v35 = type metadata accessor for FeaturePrintObservation;
      goto LABEL_83;
    case 0x16u:
      v78 = *(v6 + 4);
      v70 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF668, &qword_1A5FF9CA0) + 48);
      a1[3] = &type metadata for GenerateForegroundInstanceMaskRequest;
      a1[4] = sub_1A5B5E8EC();
      goto LABEL_64;
    case 0x17u:
      v99 = *(v6 + 4);
      v52 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF678, &qword_1A5FF9CA8) + 48);
      a1[3] = &type metadata for GenerateObjectnessBasedSaliencyImageRequest;
      a1[4] = sub_1A5B5E898();
LABEL_73:
      v141 = swift_allocObject();
      *a1 = v141;
      v142 = *(v6 + 1);
      *(v141 + 16) = *v6;
      *(v141 + 32) = v142;
      *(v141 + 48) = v99;
      v53 = type metadata accessor for SaliencyImageObservation;
      goto LABEL_77;
    case 0x18u:
      v79 = *v6;
      v52 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF670, &qword_1A60084A0) + 48);
      a1[3] = type metadata accessor for GeneratePersonSegmentationRequest(0);
      a1[4] = sub_1A5B5E6AC(&qword_1EB1EF818, type metadata accessor for GeneratePersonSegmentationRequest, &protocol conformance descriptor for GeneratePersonSegmentationRequest);
      *a1 = v79;
      v53 = type metadata accessor for PixelBufferObservation;
      goto LABEL_77;
    case 0x19u:
      v78 = *(v6 + 4);
      v70 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF660, &qword_1A5FF9C98) + 48);
      a1[3] = &type metadata for GeneratePersonInstanceMaskRequest;
      a1[4] = sub_1A5B3152C();
LABEL_64:
      v128 = swift_allocObject();
      *a1 = v128;
      v129 = *(v6 + 1);
      *(v128 + 16) = *v6;
      *(v128 + 32) = v129;
      *(v128 + 48) = v78;
      v73 = &qword_1EB1EF810;
      v74 = &qword_1A5FF9CF8;
      return sub_1A5B10168(&v6[v70], v73, v74);
    case 0x1Au:
      v111 = v6[32];
      v112 = *(v6 + 5);
      v153 = *v6;
      v171 = *(v6 + 1);
      v172 = v153;

      a1[3] = &type metadata for RecognizeAnimalsRequest;
      a1[4] = sub_1A5B5E844();
LABEL_80:
      result = swift_allocObject();
      *a1 = result;
      v154 = v171;
      *(result + 16) = v172;
      *(result + 32) = v154;
      *(result + 48) = v111;
      *(result + 56) = v112;
      return result;
    case 0x1Bu:
      v41 = *(v6 + 3);
      v175 = *(v6 + 2);
      v176 = v41;
      v177 = *(v6 + 4);
      v42 = *(v6 + 1);
      v173 = *v6;
      v174 = v42;

      a1[3] = &type metadata for RecognizeTextRequest;
      a1[4] = sub_1A5B5E79C();
LABEL_45:
      result = swift_allocObject();
      *a1 = result;
      v94 = v176;
      *(result + 48) = v175;
      *(result + 64) = v94;
      *(result + 80) = v177;
      v95 = v174;
      *(result + 16) = v173;
      *(result + 32) = v95;
      return result;
    case 0x1Cu:
      v179 = *(v6 + 12);
      v143 = *(v6 + 5);
      v177 = *(v6 + 4);
      v178 = v143;
      v144 = *(v6 + 1);
      v173 = *v6;
      v174 = v144;
      v145 = *(v6 + 3);
      v175 = *(v6 + 2);
      v176 = v145;

      a1[3] = &type metadata for RecognizeDocumentsRequest;
      a1[4] = sub_1A5B5E7F0();
LABEL_75:
      result = swift_allocObject();
      *a1 = result;
      v146 = v178;
      *(result + 80) = v177;
      *(result + 96) = v146;
      *(result + 112) = v179;
      v147 = v174;
      *(result + 16) = v173;
      *(result + 32) = v147;
      v148 = v176;
      *(result + 48) = v175;
      *(result + 64) = v148;
      return result;
    case 0x1Du:
      v149 = *v6;
      v52 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF658, &qword_1A5FF9C90) + 48);
      a1[3] = type metadata accessor for TrackHomographicImageRegistrationRequest(0);
      a1[4] = sub_1A5B5E6AC(&qword_1EB1EF7F0, type metadata accessor for TrackHomographicImageRegistrationRequest, &protocol conformance descriptor for TrackHomographicImageRegistrationRequest);
      *a1 = v149;
      v53 = type metadata accessor for ImageHomographicAlignmentObservation;
      goto LABEL_77;
    case 0x1Eu:
      v125 = *v6;
      v70 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF698, &unk_1A5FFD180) + 48);
      a1[3] = type metadata accessor for TrackObjectRequest(0);
      a1[4] = sub_1A5B5E6AC(&qword_1EB1EF7E0, type metadata accessor for TrackObjectRequest, &protocol conformance descriptor for TrackObjectRequest);
      *a1 = v125;
      v73 = &qword_1EB1EF7E8;
      v74 = &qword_1A5FF9CF0;
      return sub_1A5B10168(&v6[v70], v73, v74);
    case 0x1Fu:
      v91 = *v6;
      v70 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF690, &qword_1A5FFE500) + 48);
      a1[3] = type metadata accessor for TrackOpticalFlowRequest(0);
      a1[4] = sub_1A5B5E6AC(&qword_1EB1EF7D0, type metadata accessor for TrackOpticalFlowRequest, &protocol conformance descriptor for TrackOpticalFlowRequest);
      *a1 = v91;
      v73 = &qword_1EB1EF7D8;
      v74 = &qword_1A5FFE4E0;
      return sub_1A5B10168(&v6[v70], v73, v74);
    case 0x20u:
      v126 = *v6;
      v70 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF650, &unk_1A6005CC0) + 48);
      a1[3] = type metadata accessor for TrackRectangleRequest(0);
      a1[4] = sub_1A5B5E6AC(&qword_1EB1EF7C0, type metadata accessor for TrackRectangleRequest, &protocol conformance descriptor for TrackRectangleRequest);
      *a1 = v126;
      v73 = &qword_1EB1EF7C8;
      v74 = &qword_1A600FCB0;
      return sub_1A5B10168(&v6[v70], v73, v74);
    case 0x21u:
      v51 = *v6;
      v52 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F48B0, &qword_1A5FF9C88) + 48);
      a1[3] = type metadata accessor for TrackTranslationalImageRegistrationRequest(0);
      a1[4] = sub_1A5B5E6AC(&unk_1EB1F48C0, type metadata accessor for TrackTranslationalImageRegistrationRequest, &protocol conformance descriptor for TrackTranslationalImageRegistrationRequest);
      *a1 = v51;
      v53 = type metadata accessor for ImageTranslationAlignmentObservation;
      goto LABEL_77;
    case 0x22u:
      v36 = *v6;

      a1[3] = type metadata accessor for DetectScreenGazeRequest(0);
      v37 = &unk_1EB1EF560;
      v38 = type metadata accessor for DetectScreenGazeRequest;
      v39 = &protocol conformance descriptor for DetectScreenGazeRequest;
      goto LABEL_67;
    case 0x23u:
      v36 = *v6;

      a1[3] = type metadata accessor for DetectDeviceGazeRequest(0);
      v37 = &unk_1EB1EF7B8;
      v38 = type metadata accessor for DetectDeviceGazeRequest;
      v39 = &protocol conformance descriptor for DetectDeviceGazeRequest;
      goto LABEL_67;
    case 0x24u:
      v36 = *v6;

      a1[3] = type metadata accessor for DetectCameraGazeRequest(0);
      v37 = &qword_1EB1EF7B0;
      v38 = type metadata accessor for DetectCameraGazeRequest;
      v39 = &protocol conformance descriptor for DetectCameraGazeRequest;
      goto LABEL_67;
    case 0x25u:
      v19 = *v6;
      v9 = v6[40];
      v10 = *(v6 + 6);
      v20 = *(v6 + 8);
      v171 = *(v6 + 24);
      v172 = v20;

      a1[3] = &type metadata for GenerateFacePrintRequest;
      a1[4] = sub_1A5B5E748();
      goto LABEL_26;
    case 0x26u:
      v150 = *v6;
      v151 = *(v6 + 8);
      v170 = *(v6 + 24);
      v171 = *(v6 + 40);
      v172 = v151;

      a1[3] = &type metadata for GenerateTorsoPrintRequest;
      a1[4] = sub_1A5B5E6F4();
      result = swift_allocObject();
      *a1 = result;
      *(result + 16) = v150;
      *(result + 40) = v170;
      v152 = v171;
      *(result + 24) = v172;
      *(result + 56) = v152;
      return result;
    case 0x27u:
      v36 = *v6;

      a1[3] = type metadata accessor for CalculateFaceLivelinessScoreRequest(0);
      v37 = &unk_1EB1EF798;
      v38 = type metadata accessor for CalculateFaceLivelinessScoreRequest;
      v39 = &protocol conformance descriptor for CalculateFaceLivelinessScoreRequest;
LABEL_67:
      result = sub_1A5B5E6AC(v37, v38, v39);
      a1[4] = result;
      *a1 = v36;
      return result;
    case 0x28u:
      v61 = *(v6 + 4);
      v62 = *(v6 + 5);
      v63 = *v6;
      v171 = *(v6 + 1);
      v172 = v63;

      a1[3] = &type metadata for AlignFaceRectanglesRequest;
      a1[4] = sub_1A5B5E658();
      result = swift_allocObject();
      *a1 = result;
      v64 = v171;
      *(result + 16) = v172;
      *(result + 32) = v64;
      *(result + 48) = v61;
      *(result + 56) = v62;
      return result;
    case 0x29u:
      v96 = *(v6 + 4);
      v52 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF640, &qword_1A5FF9C78) + 48);
      a1[3] = &type metadata for CalculateExposureScoreRequest;
      a1[4] = sub_1A5B133D4();
      v97 = swift_allocObject();
      *a1 = v97;
      v98 = *(v6 + 1);
      *(v97 + 16) = *v6;
      *(v97 + 32) = v98;
      *(v97 + 48) = v96;
      v53 = type metadata accessor for ImageExposureObservation;
      goto LABEL_77;
    case 0x2Au:
      v130 = *v6;
      v131 = *(v6 + 1);
      v132 = *(v6 + 6);
      v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF648, &qword_1A5FF9C80) + 48);
      a1[3] = &type metadata for CalculateBlurScoreRequest;
      a1[4] = sub_1A5B5E508();
      v133 = swift_allocObject();
      *a1 = v133;
      *(v133 + 16) = v130;
      *(v133 + 24) = v131;
      v134 = *(v6 + 2);
      *(v133 + 32) = *(v6 + 1);
      *(v133 + 48) = v134;
      *(v133 + 64) = v132;
      v35 = type metadata accessor for ImageBlurObservation;
      goto LABEL_83;
    case 0x2Bu:
      v8 = *v6;
      v9 = v6[40];
      v10 = *(v6 + 6);
      v15 = *(v6 + 8);
      v171 = *(v6 + 24);
      v172 = v15;

      a1[3] = &type metadata for ClassifyCityNatureImageRequest;
      a1[4] = sub_1A5B5E604();
      goto LABEL_91;
    case 0x2Cu:
      v19 = *v6;
      v9 = v6[40];
      v10 = *(v6 + 6);
      v50 = *(v6 + 8);
      v171 = *(v6 + 24);
      v172 = v50;

      a1[3] = &type metadata for ClassifyFaceAttributesRequest;
      a1[4] = sub_1A5B0F9A8();
LABEL_26:
      result = swift_allocObject();
      *a1 = result;
      *(result + 16) = v19;
      goto LABEL_92;
    case 0x2Du:
      v8 = *v6;
      v9 = v6[40];
      v10 = *(v6 + 6);
      v127 = *(v6 + 8);
      v171 = *(v6 + 24);
      v172 = v127;

      a1[3] = &type metadata for ClassifyImageAestheticsRequest;
      a1[4] = sub_1A5B22BB4();
      goto LABEL_91;
    case 0x2Eu:
      v8 = *v6;
      v9 = v6[40];
      v10 = *(v6 + 6);
      v165 = *(v6 + 8);
      v171 = *(v6 + 24);
      v172 = v165;

      a1[3] = &type metadata for ClassifyJunkImageRequest;
      a1[4] = sub_1A5B38DD8();
      goto LABEL_91;
    case 0x2Fu:
      v27 = *v6;
      v13 = *(v6 + 5);
      v28 = *(v6 + 8);
      v171 = *(v6 + 24);
      v172 = v28;

      a1[3] = &type metadata for ClassifyMemeImageRequest;
      a1[4] = sub_1A5B5E5B0();
      goto LABEL_23;
    case 0x30u:
      v27 = *v6;
      v13 = *(v6 + 5);
      v54 = *(v6 + 8);
      v171 = *(v6 + 24);
      v172 = v54;

      a1[3] = &type metadata for ClassifyPotentialLandmarkRequest;
      a1[4] = sub_1A5B5E55C();
      goto LABEL_23;
    case 0x31u:
      v57 = *(v6 + 1);
      v173 = *v6;
      v174 = v57;
      v58 = *(v6 + 3);
      v175 = *(v6 + 2);
      v176 = v58;

      a1[3] = &type metadata for DetectFaceGazeRequest;
      a1[4] = sub_1A5B5E4B4();
LABEL_41:
      result = swift_allocObject();
      *a1 = result;
      v88 = v174;
      *(result + 16) = v173;
      *(result + 32) = v88;
      v89 = v176;
      *(result + 48) = v175;
      *(result + 64) = v89;
      return result;
    case 0x32u:
      v12 = *v6;
      v13 = *(v6 + 5);
      v14 = *(v6 + 8);
      v171 = *(v6 + 24);
      v172 = v14;

      a1[3] = &type metadata for DetectFacePoseRequest;
      a1[4] = sub_1A5B2A9D0();
      goto LABEL_94;
    case 0x33u:
      v12 = *v6;
      v13 = *(v6 + 5);
      v167 = *(v6 + 8);
      v171 = *(v6 + 24);
      v172 = v167;

      a1[3] = &type metadata for DetectFaceExpressionsRequest;
      a1[4] = sub_1A5B4A7B4();
      goto LABEL_94;
    case 0x34u:
      v163 = *(v6 + 1);
      v173 = *v6;
      v174 = v163;
      v175 = *(v6 + 2);
      *&v176 = *(v6 + 6);

      a1[3] = &type metadata for DetectHumanHeadRectanglesRequest;
      a1[4] = sub_1A5B5EB24();
      goto LABEL_89;
    case 0x35u:
      v21 = *v6;
      v22 = *(v6 + 2);
      v23 = *(v6 + 6);
      v24 = *(v6 + 1);
      v171 = *(v6 + 2);
      v172 = v24;

      a1[3] = &type metadata for GenerateFaceSegmentsRequest;
      a1[4] = sub_1A5B5E460();
      result = swift_allocObject();
      *a1 = result;
      *(result + 16) = v21;
      *(result + 24) = v22;
      v26 = v171;
      *(result + 32) = v172;
      *(result + 48) = v26;
      *(result + 64) = v23;
      return result;
    case 0x36u:
      v12 = *v6;
      v13 = *(v6 + 5);
      v155 = *(v6 + 8);
      v171 = *(v6 + 24);
      v172 = v155;

      a1[3] = &type metadata for GenerateAnimalPrintRequest;
      a1[4] = sub_1A5B5E40C();
LABEL_94:
      result = swift_allocObject();
      *a1 = result;
      *(result + 16) = v12;
      goto LABEL_95;
    case 0x37u:
      v55 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF638, &qword_1A6022DB0) + 48);
      a1[3] = &type metadata for GenerateAnimalSegmentationRequest;
      a1[4] = sub_1A5B5E3B8();
      goto LABEL_85;
    case 0x38u:
      v29 = *v6;
      v30 = v6[40];
      v31 = *(v6 + 6);
      v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF630, &qword_1A5FF9C70) + 48);
      a1[3] = &type metadata for GenerateDetectionPrintRequest;
      a1[4] = sub_1A5B3E06C();
      v33 = swift_allocObject();
      *a1 = v33;
      *(v33 + 16) = v29;
      v34 = *(v6 + 8);
      *(v33 + 40) = *(v6 + 24);
      *(v33 + 24) = v34;
      *(v33 + 56) = v30;
      *(v33 + 64) = v31;
      v35 = type metadata accessor for DetectionPrintObservation;
      goto LABEL_83;
    case 0x39u:
      v55 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF628, &qword_1A5FF9C68) + 48);
      a1[3] = &type metadata for GenerateGlassesSegmentationRequest;
      a1[4] = sub_1A5B48734();
      goto LABEL_85;
    case 0x3Au:
      v55 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF620, &qword_1A5FF9C60) + 48);
      a1[3] = &type metadata for GenerateHumanAttributesSegmentationRequest;
      a1[4] = sub_1A5B5E364();
      goto LABEL_85;
    case 0x3Bu:
      v135 = *v6;
      v136 = *(v6 + 5);
      v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF618, &qword_1A5FF9C58) + 48);
      a1[3] = &type metadata for GenerateImageFingerprintsRequest;
      a1[4] = sub_1A5B5E310();
      v137 = swift_allocObject();
      *a1 = v137;
      *(v137 + 16) = v135;
      v138 = *(v6 + 8);
      *(v137 + 40) = *(v6 + 24);
      *(v137 + 24) = v138;
      *(v137 + 56) = v136;
      v48 = type metadata accessor for ImageFingerprintsObservation;
LABEL_71:
      v139 = v48;
      v140 = &v6[v45];
      goto LABEL_87;
    case 0x3Cu:
      v65 = *(v6 + 4);
      v52 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF610, &qword_1A5FF9C50) + 48);
      a1[3] = &type metadata for GenerateImagePrintRequest;
      a1[4] = sub_1A5B5E2BC();
      v66 = swift_allocObject();
      *a1 = v66;
      v67 = *(v6 + 1);
      *(v66 + 16) = *v6;
      *(v66 + 32) = v67;
      *(v66 + 48) = v65;
      v53 = type metadata accessor for FeaturePrintObservation;
LABEL_77:
      v139 = v53;
      v140 = &v6[v52];
      goto LABEL_87;
    case 0x3Du:
      v55 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF608, &unk_1A6022DA0) + 48);
      a1[3] = &type metadata for GenerateSkySegmentationRequest;
      a1[4] = sub_1A5B5E268();
LABEL_85:
      v161 = swift_allocObject();
      *a1 = v161;
      v162 = *(v6 + 1);
      v161[1] = *v6;
      v161[2] = v162;
      v161[3] = *(v6 + 2);
      v124 = type metadata accessor for PixelBufferObservation;
LABEL_86:
      v139 = v124;
      v140 = &v6[v55];
      goto LABEL_87;
    case 0x3Eu:
      v16 = *(v6 + 4);
      v105 = *v6;
      v171 = *(v6 + 1);
      v172 = v105;

      a1[3] = &type metadata for RecognizeAnimalFacesRequest;
      a1[4] = sub_1A5B5E214();
      goto LABEL_55;
    case 0x3Fu:
      v81 = *(v6 + 1);
      v173 = *v6;
      v174 = v81;
      v175 = *(v6 + 2);
      *&v176 = *(v6 + 6);

      a1[3] = &type metadata for RecognizeDocumentElementsRequest;
      a1[4] = sub_1A5B5E1C0();
      goto LABEL_89;
    case 0x40u:
      v16 = *(v6 + 4);
      v68 = *v6;
      v171 = *(v6 + 1);
      v172 = v68;

      a1[3] = &type metadata for RecognizeFoodAndDrinkRequest;
      a1[4] = sub_1A5B5E16C();
      goto LABEL_55;
    case 0x41u:
      v103 = *(v6 + 3);
      v175 = *(v6 + 2);
      v176 = v103;
      v177 = *(v6 + 4);
      *&v178 = *(v6 + 10);
      v104 = *(v6 + 1);
      v173 = *v6;
      v174 = v104;

      a1[3] = &type metadata for RecognizeObjectsRequest;
      a1[4] = sub_1A5B5E118();
LABEL_57:
      result = swift_allocObject();
      *a1 = result;
      v118 = v176;
      *(result + 48) = v175;
      *(result + 64) = v118;
      *(result + 80) = v177;
      *(result + 96) = v178;
      v119 = v174;
      *(result + 16) = v173;
      *(result + 32) = v119;
      return result;
    case 0x42u:
      v16 = *(v6 + 4);
      v17 = *v6;
      v171 = *(v6 + 1);
      v172 = v17;

      a1[3] = &type metadata for RecognizePosteriorAnimalHeadsRequest;
      a1[4] = sub_1A5B5E0C4();
      goto LABEL_55;
    case 0x43u:
      v16 = *(v6 + 4);
      v49 = *v6;
      v171 = *(v6 + 1);
      v172 = v49;

      a1[3] = &type metadata for RecognizeSportBallsRequest;
      a1[4] = sub_1A5B5E070();
LABEL_55:
      result = swift_allocObject();
      *a1 = result;
      v115 = v171;
      *(result + 16) = v172;
      *(result + 32) = v115;
      *(result + 48) = v16;
      return result;
    case 0x44u:
      v169 = *v6;
      v70 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F4CD0, &unk_1A60260B0) + 48);
      a1[3] = type metadata accessor for TrackMaskRequest(0);
      a1[4] = sub_1A5B5E6AC(&unk_1EB1F4CF0, type metadata accessor for TrackMaskRequest, &protocol conformance descriptor for TrackMaskRequest);
      *a1 = v169;
      v73 = &qword_1EB1EF6F8;
      v74 = qword_1A60211B0;
      return sub_1A5B10168(&v6[v70], v73, v74);
    case 0x45u:
      v27 = *v6;
      v13 = *(v6 + 5);
      v40 = *(v6 + 8);
      v171 = *(v6 + 24);
      v172 = v40;

      a1[3] = &type metadata for SVYvzEtX1JlUdu8xx5qhDIRequest;
      a1[4] = sub_1A5B5E01C();
LABEL_23:
      result = swift_allocObject();
      *a1 = result;
      *(result + 16) = v27;
LABEL_95:
      v168 = v172;
      *(result + 40) = v171;
      *(result + 24) = v168;
      *(result + 56) = v13;
      return result;
    case 0x46u:
      v8 = *v6;
      v9 = v6[40];
      v10 = *(v6 + 6);
      v11 = *(v6 + 8);
      v171 = *(v6 + 24);
      v172 = v11;

      a1[3] = &type metadata for S5kJNH3eYuyaLxNpZr5Z7ziRequest;
      a1[4] = sub_1A5B5DFC8();
      goto LABEL_91;
    case 0x47u:
      v8 = *v6;
      v9 = v6[40];
      v10 = *(v6 + 6);
      v18 = *(v6 + 8);
      v171 = *(v6 + 24);
      v172 = v18;

      a1[3] = &type metadata for S6Mb1ME89lyW3HpahkEygIGRequest;
      a1[4] = sub_1A5B5DF74();
LABEL_91:
      result = swift_allocObject();
      *a1 = result;
      *(result + 16) = v8;
LABEL_92:
      v166 = v172;
      *(result + 40) = v171;
      *(result + 24) = v166;
      *(result + 56) = v9;
      *(result + 64) = v10;
      break;
    case 0x48u:
      v156 = *v6;
      v157 = v6[40];
      v158 = *(v6 + 6);
      v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF600, &qword_1A5FF9C48) + 48);
      a1[3] = &type metadata for S1JC7R3k4455fKQz0dY1VhQRequest;
      a1[4] = sub_1A5B5DEC0();
      v159 = swift_allocObject();
      *a1 = v159;
      *(v159 + 16) = v156;
      v160 = *(v6 + 8);
      *(v159 + 40) = *(v6 + 24);
      *(v159 + 24) = v160;
      *(v159 + 56) = v157;
      *(v159 + 64) = v158;
      v35 = type metadata accessor for S1vLyVSh30UQ26TGBoV8MHvObservation;
LABEL_83:
      v139 = v35;
      v140 = &v6[v32];
LABEL_87:
      result = sub_1A5B5DF14(v140, v139);
      break;
    default:
      v7 = *(v6 + 1);
      v173 = *v6;
      v174 = v7;
      v175 = *(v6 + 2);
      *&v176 = *(v6 + 6);

      a1[3] = &type metadata for DetectFaceRectanglesRequest;
      a1[4] = sub_1A5B5EF80();
LABEL_89:
      result = swift_allocObject();
      *a1 = result;
      v164 = v174;
      *(result + 16) = v173;
      *(result + 32) = v164;
      *(result + 48) = v175;
      *(result + 64) = v176;
      break;
  }

  return result;
}

uint64_t sub_1A5B5DE58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A5B5DEC0()
{
  result = qword_1EB1EF6D8;
  if (!qword_1EB1EF6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF6D8);
  }

  return result;
}

uint64_t sub_1A5B5DF14(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1A5B5DF74()
{
  result = qword_1EB1EF6E0;
  if (!qword_1EB1EF6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF6E0);
  }

  return result;
}

unint64_t sub_1A5B5DFC8()
{
  result = qword_1EB1EF6E8;
  if (!qword_1EB1EF6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF6E8);
  }

  return result;
}

unint64_t sub_1A5B5E01C()
{
  result = qword_1EB1EF6F0;
  if (!qword_1EB1EF6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF6F0);
  }

  return result;
}

unint64_t sub_1A5B5E070()
{
  result = qword_1EB1EF700;
  if (!qword_1EB1EF700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF700);
  }

  return result;
}

unint64_t sub_1A5B5E0C4()
{
  result = qword_1EB1EF708;
  if (!qword_1EB1EF708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF708);
  }

  return result;
}

unint64_t sub_1A5B5E118()
{
  result = qword_1EB1EF710;
  if (!qword_1EB1EF710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF710);
  }

  return result;
}

unint64_t sub_1A5B5E16C()
{
  result = qword_1EB1EF718;
  if (!qword_1EB1EF718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF718);
  }

  return result;
}

unint64_t sub_1A5B5E1C0()
{
  result = qword_1EB1EF720;
  if (!qword_1EB1EF720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF720);
  }

  return result;
}

unint64_t sub_1A5B5E214()
{
  result = qword_1EB1EF728;
  if (!qword_1EB1EF728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF728);
  }

  return result;
}

unint64_t sub_1A5B5E268()
{
  result = qword_1EB1EF730;
  if (!qword_1EB1EF730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF730);
  }

  return result;
}

unint64_t sub_1A5B5E2BC()
{
  result = qword_1EB1EF738;
  if (!qword_1EB1EF738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF738);
  }

  return result;
}

unint64_t sub_1A5B5E310()
{
  result = qword_1EB1EF740;
  if (!qword_1EB1EF740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF740);
  }

  return result;
}

unint64_t sub_1A5B5E364()
{
  result = qword_1EB1EF748;
  if (!qword_1EB1EF748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF748);
  }

  return result;
}

unint64_t sub_1A5B5E3B8()
{
  result = qword_1EB1EF750;
  if (!qword_1EB1EF750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF750);
  }

  return result;
}

unint64_t sub_1A5B5E40C()
{
  result = qword_1EB1EF758;
  if (!qword_1EB1EF758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF758);
  }

  return result;
}

unint64_t sub_1A5B5E460()
{
  result = qword_1EB1EF760;
  if (!qword_1EB1EF760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF760);
  }

  return result;
}

unint64_t sub_1A5B5E4B4()
{
  result = qword_1EB1EF768;
  if (!qword_1EB1EF768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF768);
  }

  return result;
}

unint64_t sub_1A5B5E508()
{
  result = qword_1EB1EF770;
  if (!qword_1EB1EF770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF770);
  }

  return result;
}

unint64_t sub_1A5B5E55C()
{
  result = qword_1EB1EF778;
  if (!qword_1EB1EF778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF778);
  }

  return result;
}

unint64_t sub_1A5B5E5B0()
{
  result = qword_1EB1EF780;
  if (!qword_1EB1EF780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF780);
  }

  return result;
}

unint64_t sub_1A5B5E604()
{
  result = qword_1EB1EF788;
  if (!qword_1EB1EF788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF788);
  }

  return result;
}

unint64_t sub_1A5B5E658()
{
  result = qword_1EB1EF790;
  if (!qword_1EB1EF790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF790);
  }

  return result;
}

uint64_t sub_1A5B5E6AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1A5B5E6F4()
{
  result = qword_1EB1EF7A0;
  if (!qword_1EB1EF7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF7A0);
  }

  return result;
}

unint64_t sub_1A5B5E748()
{
  result = qword_1EB1EF7A8;
  if (!qword_1EB1EF7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF7A8);
  }

  return result;
}

unint64_t sub_1A5B5E79C()
{
  result = qword_1EB1EF7F8;
  if (!qword_1EB1EF7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF7F8);
  }

  return result;
}

unint64_t sub_1A5B5E7F0()
{
  result = qword_1EB1EF800;
  if (!qword_1EB1EF800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF800);
  }

  return result;
}

unint64_t sub_1A5B5E844()
{
  result = qword_1EB1EF808;
  if (!qword_1EB1EF808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF808);
  }

  return result;
}

unint64_t sub_1A5B5E898()
{
  result = qword_1EB1EF820;
  if (!qword_1EB1EF820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF820);
  }

  return result;
}

unint64_t sub_1A5B5E8EC()
{
  result = qword_1EB1EF828;
  if (!qword_1EB1EF828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF828);
  }

  return result;
}

unint64_t sub_1A5B5E940()
{
  result = qword_1EB1EF830;
  if (!qword_1EB1EF830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF830);
  }

  return result;
}

unint64_t sub_1A5B5E994()
{
  result = qword_1EB1EF838;
  if (!qword_1EB1EF838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF838);
  }

  return result;
}

unint64_t sub_1A5B5E9E8()
{
  result = qword_1EB1EF840;
  if (!qword_1EB1EF840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF840);
  }

  return result;
}

uint64_t objectdestroy_17Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

unint64_t sub_1A5B5EA7C()
{
  result = qword_1EB1EF848;
  if (!qword_1EB1EF848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF848);
  }

  return result;
}

unint64_t sub_1A5B5EAD0()
{
  result = qword_1EB1EF850;
  if (!qword_1EB1EF850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF850);
  }

  return result;
}

unint64_t sub_1A5B5EB24()
{
  result = qword_1EB1EF858;
  if (!qword_1EB1EF858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF858);
  }

  return result;
}

unint64_t sub_1A5B5EB78()
{
  result = qword_1EB1EF860;
  if (!qword_1EB1EF860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF860);
  }

  return result;
}

unint64_t sub_1A5B5EBCC()
{
  result = qword_1EB1EF868;
  if (!qword_1EB1EF868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF868);
  }

  return result;
}

unint64_t sub_1A5B5EC20()
{
  result = qword_1EB1EF878;
  if (!qword_1EB1EF878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF878);
  }

  return result;
}

uint64_t objectdestroy_53Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

unint64_t sub_1A5B5ECB4()
{
  result = qword_1EB1EF880;
  if (!qword_1EB1EF880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF880);
  }

  return result;
}

uint64_t objectdestroy_50Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

unint64_t sub_1A5B5ED48()
{
  result = qword_1EB1EF890;
  if (!qword_1EB1EF890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF890);
  }

  return result;
}

unint64_t sub_1A5B5ED9C()
{
  result = qword_1EB1EF898;
  if (!qword_1EB1EF898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF898);
  }

  return result;
}

uint64_t objectdestroy_59Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

unint64_t sub_1A5B5EE30()
{
  result = qword_1EB1EF8A0;
  if (!qword_1EB1EF8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF8A0);
  }

  return result;
}

unint64_t sub_1A5B5EE84()
{
  result = qword_1EB1F2F80;
  if (!qword_1EB1F2F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F2F80);
  }

  return result;
}

unint64_t sub_1A5B5EED8()
{
  result = qword_1EB1EF8A8;
  if (!qword_1EB1EF8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF8A8);
  }

  return result;
}

unint64_t sub_1A5B5EF2C()
{
  result = qword_1EB1EF8B0;
  if (!qword_1EB1EF8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF8B0);
  }

  return result;
}

unint64_t sub_1A5B5EF80()
{
  result = qword_1EB1EE670;
  if (!qword_1EB1EE670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EE670);
  }

  return result;
}

uint64_t sub_1A5B5EFD4@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v186 = a1;
  v178 = type metadata accessor for S1vLyVSh30UQ26TGBoV8MHvObservation(0);
  MEMORY[0x1EEE9AC00](v178);
  v176 = &v150 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF6F8, qword_1A60211B0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v179 = &v150 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v177 = &v150 - v7;
  v175 = type metadata accessor for ImageFingerprintsObservation(0);
  MEMORY[0x1EEE9AC00](v175);
  v174 = &v150 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = type metadata accessor for DetectionPrintObservation(0);
  MEMORY[0x1EEE9AC00](v173);
  v172 = &v150 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = type metadata accessor for ImageExposureObservation(0);
  MEMORY[0x1EEE9AC00](v171);
  v170 = &v150 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = type metadata accessor for ImageBlurObservation(0);
  MEMORY[0x1EEE9AC00](v169);
  v167 = &v150 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = type metadata accessor for ImageTranslationAlignmentObservation(0);
  MEMORY[0x1EEE9AC00](v165);
  v164 = &v150 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF7C8, &qword_1A600FCB0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v168 = &v150 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v166 = &v150 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF7D8, &qword_1A5FFE4E0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v163 = &v150 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v162 = &v150 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF7E8, &qword_1A5FF9CF0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v161 = &v150 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v160 = &v150 - v24;
  v159 = type metadata accessor for ImageHomographicAlignmentObservation(0);
  MEMORY[0x1EEE9AC00](v159);
  v158 = &v150 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = type metadata accessor for PixelBufferObservation(0);
  v156 = *(v185 - 8);
  MEMORY[0x1EEE9AC00](v185);
  v184 = &v150 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF810, &qword_1A5FF9CF8);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v157 = &v150 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v155 = &v150 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v154 = &v150 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v153 = &v150 - v34;
  v182 = type metadata accessor for FeaturePrintObservation(0);
  MEMORY[0x1EEE9AC00](v182);
  v183 = &v150 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = type metadata accessor for SaliencyImageObservation(0);
  MEMORY[0x1EEE9AC00](v180);
  v181 = &v150 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = type metadata accessor for SmudgeObservation(0);
  MEMORY[0x1EEE9AC00](v150);
  v38 = &v150 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF870, &qword_1A5FF9D00);
  MEMORY[0x1EEE9AC00](v39 - 8);
  v152 = &v150 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v151 = &v150 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF888, &qword_1A5FF9D08);
  MEMORY[0x1EEE9AC00](v43 - 8);
  v45 = &v150 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v150 - v47;
  v49 = type metadata accessor for ContoursObservation(0);
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v150 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for ImageAestheticsScoresObservation(0);
  MEMORY[0x1EEE9AC00](v52);
  v54 = &v150 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for VisionResult(0);
  MEMORY[0x1EEE9AC00](v55);
  v57 = &v150 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5B5DE58(v2, v57, type metadata accessor for VisionResult);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v59 = *(v57 + 7);

      v60 = &qword_1EB1EF350;
      v61 = &unk_1A6015520;
      goto LABEL_45;
    case 2u:

      v98 = v186;
      *v186 = 0u;
      *(v98 + 1) = 0u;
      return __swift_destroy_boxed_opaque_existential_1(v57);
    case 3u:

      v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF6C8, &qword_1A5FF9CE8);
      v81 = type metadata accessor for ImageAestheticsScoresObservation;
      sub_1A5B5C4C0(&v57[*(v102 + 48)], v54, type metadata accessor for ImageAestheticsScoresObservation);
      v83 = v186;
      v186[3] = v52;
      goto LABEL_83;
    case 4u:
      v59 = *(v57 + 10);
      goto LABEL_30;
    case 5u:
      v107 = *(v57 + 6);
      v89 = *(v57 + 13);

      swift_unknownObjectRelease();
      v90 = &qword_1EB1EF928;
      v91 = &qword_1A5FF9D68;
      goto LABEL_47;
    case 6u:
      v59 = *(v57 + 5);

      v60 = &unk_1EB1EF920;
      v61 = &unk_1A5FF9D60;
      goto LABEL_45;
    case 7u:
      v58 = *(v57 + 8);

      v85 = &qword_1EB1EF918;
      v86 = &unk_1A5FFB2B0;
      goto LABEL_26;
    case 8u:

      v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF6C0, &qword_1A5FF9CE0);
      v81 = type metadata accessor for ContoursObservation;
      sub_1A5B5C4C0(&v57[*(v112 + 48)], v51, type metadata accessor for ContoursObservation);
      v113 = v186;
      v186[3] = v49;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v113);
      v115 = v51;
      goto LABEL_84;
    case 9u:

      v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF6B8, &qword_1A5FF9CD8);
      v67 = &qword_1A5FF9D08;
      sub_1A5B60994(&v57[*(v95 + 48)], v48, &qword_1EB1EF888, &qword_1A5FF9D08);
      sub_1A5B31A34(v48, v45, &qword_1EB1EF888, &qword_1A5FF9D08);
      v96 = type metadata accessor for DetectedDocumentObservation(0);
      if ((*(*(v96 - 8) + 48))(v45, 1, v96) == 1)
      {
        v71 = &qword_1EB1EF888;
        sub_1A5B10168(v48, &qword_1EB1EF888, &qword_1A5FF9D08);
        v97 = v45;
        goto LABEL_61;
      }

      v146 = v186;
      v186[3] = v96;
      v147 = __swift_allocate_boxed_opaque_existential_1(v146);
      sub_1A5B5C4C0(v45, v147, type metadata accessor for DetectedDocumentObservation);
      return sub_1A5B10168(v48, &qword_1EB1EF888, &qword_1A5FF9D08);
    case 0xAu:
    case 0x32u:
    case 0x33u:
      v62 = v57;
      goto LABEL_24;
    case 0xBu:
    case 0x25u:
    case 0x2Cu:
    case 0x35u:
      v58 = *(v57 + 7);
      goto LABEL_25;
    case 0xCu:

      v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF6B0, &qword_1A5FF9CD0);
      v67 = &qword_1A5FF9D00;
      v68 = v151;
      sub_1A5B60994(&v57[*(v109 + 48)], v151, &qword_1EB1EF870, &qword_1A5FF9D00);
      v69 = v152;
      sub_1A5B31A34(v68, v152, &qword_1EB1EF870, &qword_1A5FF9D00);
      v110 = type metadata accessor for HorizonObservation(0);
      if ((*(*(v110 - 8) + 48))(v69, 1, v110) == 1)
      {
        v71 = &qword_1EB1EF870;
        goto LABEL_60;
      }

      v148 = v186;
      v186[3] = v110;
      v149 = __swift_allocate_boxed_opaque_existential_1(v148);
      sub_1A5B5C4C0(v69, v149, type metadata accessor for HorizonObservation);
      v127 = &qword_1EB1EF870;
      v128 = &qword_1A5FF9D00;
      return sub_1A5B10168(v68, v127, v128);
    case 0xDu:
      v59 = *(v57 + 6);

      v60 = &unk_1EB1EF910;
      v61 = &unk_1A5FF9D58;
      goto LABEL_45;
    case 0xEu:
      v59 = *(v57 + 1);

      v60 = &unk_1EB1EF908;
      v61 = &unk_1A5FF9D50;
      goto LABEL_45;
    case 0xFu:
      v116 = *&v57[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF6A8, &qword_1A5FF9CC8) + 48)];
      v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF900, &qword_1A5FF9D48);
      v118 = v186;
      v186[3] = v117;
      *v118 = v116;
      return sub_1A5B5DF14(v57, type metadata accessor for DetectHumanHandPoseRequest);
    case 0x10u:

      v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF6A0, &qword_1A5FF9CC0);
      sub_1A5B5C4C0(&v57[*(v119 + 48)], v38, type metadata accessor for SmudgeObservation);
      v120 = v186;
      v186[3] = v150;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v120);
      v115 = v38;
      v121 = type metadata accessor for SmudgeObservation;
      return sub_1A5B5C4C0(v115, boxed_opaque_existential_1, v121);
    case 0x11u:
      v59 = *(v57 + 10);

      v60 = &qword_1EB1EF8F0;
      v61 = &unk_1A60091A0;
      goto LABEL_45;
    case 0x12u:
      v58 = *(v57 + 11);

      v85 = &unk_1EB1EF8E8;
      v86 = &unk_1A5FF9D38;
      goto LABEL_26;
    case 0x13u:
      v59 = *(v57 + 1);

      v60 = &unk_1EB1EF8E0;
      v61 = &unk_1A5FF9D30;
      goto LABEL_45;
    case 0x14u:
      v99 = v57;

      v100 = &qword_1EB1EF688;
      v101 = &qword_1A5FF9CB8;
      goto LABEL_73;
    case 0x15u:
      v103 = v57;

      v104 = &qword_1EB1EF680;
      v105 = &qword_1A5FF9CB0;
      goto LABEL_78;
    case 0x16u:

      v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF668, &qword_1A5FF9CA0);
      v67 = &qword_1A5FF9CF8;
      v68 = v153;
      sub_1A5B60994(&v57[*(v78 + 48)], v153, &qword_1EB1EF810, &qword_1A5FF9CF8);
      v79 = v68;
      v80 = &v186;
      goto LABEL_58;
    case 0x17u:
      v99 = v57;

      v100 = &qword_1EB1EF678;
      v101 = &qword_1A5FF9CA8;
LABEL_73:
      v81 = type metadata accessor for SaliencyImageObservation;
      v132 = &v99[*(__swift_instantiateConcreteTypeFromMangledNameV2(v100, v101) + 48)];
      v54 = v181;
      sub_1A5B5C4C0(v132, v181, type metadata accessor for SaliencyImageObservation);
      v83 = v186;
      v84 = v180;
      goto LABEL_82;
    case 0x18u:
      v92 = v57;

      v93 = &qword_1EB1EF670;
      v94 = &qword_1A60084A0;
      goto LABEL_75;
    case 0x19u:

      v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF660, &qword_1A5FF9C98);
      v67 = &qword_1A5FF9CF8;
      v68 = v155;
      sub_1A5B60994(&v57[*(v122 + 48)], v155, &qword_1EB1EF810, &qword_1A5FF9CF8);
      v79 = v68;
      v80 = &v187;
LABEL_58:
      v69 = *(v80 - 32);
      sub_1A5B31A34(v79, v69, &qword_1EB1EF810, &qword_1A5FF9CF8);
      v123 = type metadata accessor for InstanceMaskObservation(0);
      if ((*(*(v123 - 8) + 48))(v69, 1, v123) == 1)
      {
        v71 = &qword_1EB1EF810;
        goto LABEL_60;
      }

      v125 = v186;
      v186[3] = v123;
      v126 = __swift_allocate_boxed_opaque_existential_1(v125);
      sub_1A5B5C4C0(v69, v126, type metadata accessor for InstanceMaskObservation);
      v127 = &qword_1EB1EF810;
      v128 = &qword_1A5FF9CF8;
      return sub_1A5B10168(v68, v127, v128);
    case 0x1Au:
      v59 = *(v57 + 6);
      goto LABEL_44;
    case 0x1Bu:
      v63 = *(v57 + 10);

      v64 = &unk_1EB1EF8D0;
      v65 = &unk_1A5FF9D20;
      goto LABEL_64;
    case 0x1Cu:
      v89 = *(v57 + 13);

      v90 = &unk_1EB1EF8D8;
      v91 = &unk_1A5FF9D28;
LABEL_47:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(v90, v91);
      v108 = v186;
      v186[3] = result;
      *v108 = v89;
      return result;
    case 0x1Du:

      v81 = type metadata accessor for ImageHomographicAlignmentObservation;
      v82 = &v57[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF658, &qword_1A5FF9C90) + 48)];
      v54 = v158;
      sub_1A5B5C4C0(v82, v158, type metadata accessor for ImageHomographicAlignmentObservation);
      v83 = v186;
      v84 = v159;
      goto LABEL_82;
    case 0x1Eu:

      v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF698, &unk_1A5FFD180);
      v67 = &qword_1A5FF9CF0;
      v68 = v160;
      sub_1A5B60994(&v57[*(v74 + 48)], v160, &qword_1EB1EF7E8, &qword_1A5FF9CF0);
      v69 = v161;
      sub_1A5B31A34(v68, v161, &qword_1EB1EF7E8, &qword_1A5FF9CF0);
      v75 = type metadata accessor for DetectedObjectObservation(0);
      if ((*(*(v75 - 8) + 48))(v69, 1, v75) == 1)
      {
        v71 = &qword_1EB1EF7E8;
        goto LABEL_60;
      }

      v142 = v186;
      v186[3] = v75;
      v143 = __swift_allocate_boxed_opaque_existential_1(v142);
      sub_1A5B5C4C0(v69, v143, type metadata accessor for DetectedObjectObservation);
      v127 = &qword_1EB1EF7E8;
      v128 = &qword_1A5FF9CF0;
      return sub_1A5B10168(v68, v127, v128);
    case 0x1Fu:

      v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF690, &qword_1A5FFE500);
      v67 = &qword_1A5FFE4E0;
      v68 = v162;
      sub_1A5B60994(&v57[*(v76 + 48)], v162, &qword_1EB1EF7D8, &qword_1A5FFE4E0);
      v69 = v163;
      sub_1A5B31A34(v68, v163, &qword_1EB1EF7D8, &qword_1A5FFE4E0);
      v77 = type metadata accessor for OpticalFlowObservation(0);
      if ((*(*(v77 - 8) + 48))(v69, 1, v77) == 1)
      {
        v71 = &qword_1EB1EF7D8;
        goto LABEL_60;
      }

      v144 = v186;
      v186[3] = v77;
      v145 = __swift_allocate_boxed_opaque_existential_1(v144);
      sub_1A5B5C4C0(v69, v145, type metadata accessor for OpticalFlowObservation);
      v127 = &qword_1EB1EF7D8;
      v128 = &qword_1A5FFE4E0;
      return sub_1A5B10168(v68, v127, v128);
    case 0x20u:

      v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF650, &unk_1A6005CC0);
      v67 = &qword_1A600FCB0;
      v68 = v166;
      sub_1A5B60994(&v57[*(v72 + 48)], v166, &qword_1EB1EF7C8, &qword_1A600FCB0);
      v69 = v168;
      sub_1A5B31A34(v68, v168, &qword_1EB1EF7C8, &qword_1A600FCB0);
      v73 = type metadata accessor for RectangleObservation(0);
      if ((*(*(v73 - 8) + 48))(v69, 1, v73) == 1)
      {
        v71 = &qword_1EB1EF7C8;
        goto LABEL_60;
      }

      v140 = v186;
      v186[3] = v73;
      v141 = __swift_allocate_boxed_opaque_existential_1(v140);
      sub_1A5B5C4C0(v69, v141, type metadata accessor for RectangleObservation);
      v127 = &qword_1EB1EF7C8;
      v128 = &qword_1A600FCB0;
      return sub_1A5B10168(v68, v127, v128);
    case 0x21u:

      v81 = type metadata accessor for ImageTranslationAlignmentObservation;
      v134 = &v57[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F48B0, &qword_1A5FF9C88) + 48)];
      v54 = v164;
      sub_1A5B5C4C0(v134, v164, type metadata accessor for ImageTranslationAlignmentObservation);
      v83 = v186;
      v84 = v165;
      goto LABEL_82;
    case 0x22u:
    case 0x23u:
    case 0x24u:
    case 0x27u:
      v59 = *(v57 + 1);

      goto LABEL_5;
    case 0x26u:
      v63 = *(v57 + 7);

      v64 = &qword_1EB1EF350;
      v65 = &unk_1A6015520;
LABEL_64:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(v64, v65);
      v129 = v186;
      v186[3] = result;
      *v129 = v63;
      return result;
    case 0x28u:
      v62 = v57;
LABEL_24:
      v58 = *(v62 + 6);
      goto LABEL_25;
    case 0x29u:

      v81 = type metadata accessor for ImageExposureObservation;
      v130 = &v57[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF640, &qword_1A5FF9C78) + 48)];
      v54 = v170;
      sub_1A5B5C4C0(v130, v170, type metadata accessor for ImageExposureObservation);
      v83 = v186;
      v84 = v171;
      goto LABEL_82;
    case 0x2Au:

      v81 = type metadata accessor for ImageBlurObservation;
      v137 = &v57[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF648, &qword_1A5FF9C80) + 48)];
      v54 = v167;
      sub_1A5B5C4C0(v137, v167, type metadata accessor for ImageBlurObservation);
      v83 = v186;
      v84 = v169;
      goto LABEL_82;
    case 0x2Bu:
    case 0x2Eu:
    case 0x46u:
    case 0x47u:
      v59 = *(v57 + 7);
      goto LABEL_30;
    case 0x2Du:
      v59 = *(v57 + 7);

      v60 = &unk_1EB1EF8C8;
      v61 = &unk_1A5FF9D18;
      goto LABEL_45;
    case 0x2Fu:
    case 0x30u:
    case 0x45u:
      v59 = *(v57 + 6);
LABEL_30:

      v60 = &qword_1EB1EF8B8;
      v61 = &qword_1A6008110;
      goto LABEL_45;
    case 0x31u:
      v58 = *(v57 + 8);
LABEL_25:

      v85 = &unk_1EB1F2980;
      v86 = &unk_1A5FF8180;
      goto LABEL_26;
    case 0x34u:
      v59 = *(v57 + 7);

      v60 = &unk_1EB1EF8F8;
      v61 = &unk_1A5FF9D40;
      goto LABEL_45;
    case 0x36u:
      v58 = *(v57 + 6);
      goto LABEL_68;
    case 0x37u:
      v92 = v57;

      v93 = &qword_1EB1EF638;
      v94 = &qword_1A6022DB0;
      goto LABEL_75;
    case 0x38u:

      v81 = type metadata accessor for DetectionPrintObservation;
      v131 = &v57[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF630, &qword_1A5FF9C70) + 48)];
      v54 = v172;
      sub_1A5B5C4C0(v131, v172, type metadata accessor for DetectionPrintObservation);
      v83 = v186;
      v84 = v173;
      goto LABEL_82;
    case 0x39u:
      v92 = v57;

      v93 = &qword_1EB1EF628;
      v94 = &qword_1A5FF9C68;
      goto LABEL_75;
    case 0x3Au:
      v92 = v57;

      v93 = &qword_1EB1EF620;
      v94 = &qword_1A5FF9C60;
      goto LABEL_75;
    case 0x3Bu:

      v81 = type metadata accessor for ImageFingerprintsObservation;
      v111 = &v57[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF618, &qword_1A5FF9C58) + 48)];
      v54 = v174;
      sub_1A5B5C4C0(v111, v174, type metadata accessor for ImageFingerprintsObservation);
      v83 = v186;
      v84 = v175;
      goto LABEL_82;
    case 0x3Cu:
      v103 = v57;

      v104 = &qword_1EB1EF610;
      v105 = &qword_1A5FF9C50;
LABEL_78:
      v81 = type metadata accessor for FeaturePrintObservation;
      v135 = &v103[*(__swift_instantiateConcreteTypeFromMangledNameV2(v104, v105) + 48)];
      v54 = v183;
      sub_1A5B5C4C0(v135, v183, type metadata accessor for FeaturePrintObservation);
      v83 = v186;
      v84 = v182;
      goto LABEL_82;
    case 0x3Du:
      v92 = v57;

      v93 = &qword_1EB1EF608;
      v94 = &unk_1A6022DA0;
LABEL_75:
      v81 = type metadata accessor for PixelBufferObservation;
      v133 = &v92[*(__swift_instantiateConcreteTypeFromMangledNameV2(v93, v94) + 48)];
      v54 = v184;
      sub_1A5B5C4C0(v133, v184, type metadata accessor for PixelBufferObservation);
      v84 = v185;
      v83 = v186;
      goto LABEL_82;
    case 0x3Eu:
    case 0x40u:
    case 0x42u:
    case 0x43u:
      v59 = *(v57 + 5);
      goto LABEL_44;
    case 0x3Fu:
      v59 = *(v57 + 7);
LABEL_44:

      v60 = &qword_1EB1EF8C0;
      v61 = &qword_1A5FF9D10;
      goto LABEL_45;
    case 0x41u:
      v58 = *(v57 + 11);
LABEL_68:

      v85 = &qword_1EB1EF8C0;
      v86 = &qword_1A5FF9D10;
LABEL_26:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(v85, v86);
      v88 = v186;
      v186[3] = result;
      *v88 = v58;
      return result;
    case 0x44u:

      v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F4CD0, &unk_1A60260B0);
      v67 = qword_1A60211B0;
      v68 = v177;
      sub_1A5B60994(&v57[*(v66 + 48)], v177, &qword_1EB1EF6F8, qword_1A60211B0);
      v69 = v179;
      sub_1A5B31A34(v68, v179, &qword_1EB1EF6F8, qword_1A60211B0);
      v70 = v185;
      if ((*(v156 + 48))(v69, 1, v185) == 1)
      {
        v71 = &qword_1EB1EF6F8;
LABEL_60:
        sub_1A5B10168(v68, v71, v67);
        v97 = v69;
LABEL_61:
        result = sub_1A5B10168(v97, v71, v67);
        v124 = v186;
        *v186 = 0u;
        *(v124 + 1) = 0u;
      }

      else
      {
        v138 = v186;
        v186[3] = v70;
        v139 = __swift_allocate_boxed_opaque_existential_1(v138);
        sub_1A5B5C4C0(v69, v139, type metadata accessor for PixelBufferObservation);
        v127 = &qword_1EB1EF6F8;
        v128 = qword_1A60211B0;
        return sub_1A5B10168(v68, v127, v128);
      }

      return result;
    case 0x48u:

      v81 = type metadata accessor for S1vLyVSh30UQ26TGBoV8MHvObservation;
      v136 = &v57[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF600, &qword_1A5FF9C48) + 48)];
      v54 = v176;
      sub_1A5B5C4C0(v136, v176, type metadata accessor for S1vLyVSh30UQ26TGBoV8MHvObservation);
      v83 = v186;
      v84 = v178;
LABEL_82:
      v83[3] = v84;
LABEL_83:
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v83);
      v115 = v54;
LABEL_84:
      v121 = v81;
      return sub_1A5B5C4C0(v115, boxed_opaque_existential_1, v121);
    default:
      v59 = *(v57 + 7);

LABEL_5:
      v60 = &unk_1EB1F2980;
      v61 = &unk_1A5FF8180;
LABEL_45:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(v60, v61);
      v106 = v186;
      v186[3] = result;
      *v106 = v59;
      return result;
  }
}

uint64_t sub_1A5B60994(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A5B609FC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF930, &qword_1A5FF9D70);
  *v3 = v1;
  v3[1] = sub_1A5B0CE78;

  return MEMORY[0x1EEE6D9D0](a1, v4);
}

uint64_t sub_1A5B60AD8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A5B60B10(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF938, &unk_1A6036650);
  sub_1A5FD40DC();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

uint64_t sub_1A5B60BCC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF930, &qword_1A5FF9D70);
  *v3 = v1;
  v3[1] = sub_1A5B60C88;

  return MEMORY[0x1EEE6D9D0](a1, v4);
}

uint64_t sub_1A5B60C88()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1A5B60D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a2;
  v6[4] = a3;
  v10 = swift_task_alloc();
  v6[5] = v10;
  *v10 = v6;
  v10[1] = sub_1A5B60E38;

  return MEMORY[0x1EEE6D8C8](a1, a5, a6);
}

uint64_t sub_1A5B60E38()
{
  v2 = *(*v1 + 24);
  *(*v1 + 48) = v0;

  if (v0)
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = sub_1A5FD404C();
      v5 = v4;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = sub_1A5B60FE0;
  }

  else
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = sub_1A5FD404C();
      v5 = v7;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = sub_1A5B60FC8;
  }

  return MEMORY[0x1EEE6DFA0](v6, v3, v5);
}

uint64_t sub_1A5B60FE0()
{
  v0[2] = v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F3E90, &qword_1A5FF3720);
  swift_dynamicCast();
  swift_willThrowTypedImpl();
  v1 = v0[1];

  return v1();
}

uint64_t VisionResult.description.getter()
{
  v542 = type metadata accessor for S1vLyVSh30UQ26TGBoV8MHvObservation(0);
  MEMORY[0x1EEE9AC00](v542);
  v543 = &v511 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v540 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF6F8, qword_1A60211B0);
  MEMORY[0x1EEE9AC00](v540);
  v538 = &v511 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v541 = &v511 - v4;
  v536 = type metadata accessor for ImageFingerprintsObservation(0);
  MEMORY[0x1EEE9AC00](v536);
  v539 = &v511 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v535 = type metadata accessor for DetectionPrintObservation(0);
  MEMORY[0x1EEE9AC00](v535);
  v537 = &v511 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v532 = type metadata accessor for ImageExposureObservation(0);
  MEMORY[0x1EEE9AC00](v532);
  v534 = &v511 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v530 = type metadata accessor for ImageBlurObservation(0);
  MEMORY[0x1EEE9AC00](v530);
  v533 = &v511 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v529 = type metadata accessor for ImageTranslationAlignmentObservation(0);
  MEMORY[0x1EEE9AC00](v529);
  v531 = &v511 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v527 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF7C8, &qword_1A600FCB0);
  MEMORY[0x1EEE9AC00](v527);
  v526 = &v511 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v528 = &v511 - v12;
  v524 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF7D8, &qword_1A5FFE4E0);
  MEMORY[0x1EEE9AC00](v524);
  v523 = &v511 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v525 = &v511 - v15;
  v520 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF7E8, &qword_1A5FF9CF0);
  MEMORY[0x1EEE9AC00](v520);
  v519 = &v511 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v522 = &v511 - v18;
  v518 = type metadata accessor for ImageHomographicAlignmentObservation(0);
  MEMORY[0x1EEE9AC00](v518);
  v521 = &v511 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v551 = type metadata accessor for PixelBufferObservation(0);
  MEMORY[0x1EEE9AC00](v551);
  *&v552 = &v511 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v547 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF810, &qword_1A5FF9CF8);
  MEMORY[0x1EEE9AC00](v547);
  v545 = &v511 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v549 = &v511 - v23;
  v546 = type metadata accessor for FeaturePrintObservation(0);
  MEMORY[0x1EEE9AC00](v546);
  v550 = &v511 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v544 = type metadata accessor for SaliencyImageObservation(0);
  MEMORY[0x1EEE9AC00](v544);
  v548 = &v511 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v515 = type metadata accessor for SmudgeObservation(0);
  MEMORY[0x1EEE9AC00](v515);
  v517 = &v511 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v513 = type metadata accessor for DetectHumanHandPoseRequest(0);
  MEMORY[0x1EEE9AC00](v513);
  v516 = &v511 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v512 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF870, &qword_1A5FF9D00);
  MEMORY[0x1EEE9AC00](v512);
  v511 = &v511 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v514 = &v511 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF888, &qword_1A5FF9D08);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v511 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v511 - v35;
  v37 = type metadata accessor for ContoursObservation(0);
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v511 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for ImageAestheticsScoresObservation(0);
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v511 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for VisionResult(0);
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v511 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5B5DE58(v0, v45, type metadata accessor for VisionResult);
  v46 = v45;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v247 = v45;
      v248 = *v45;
      v249 = v45[40];
      v251 = *(v45 + 6);
      v250 = *(v247 + 7);
      *v560 = 0;
      *&v560[8] = 0xE000000000000000;
      v552 = *(v247 + 8);
      v551 = *(v247 + 24);
      sub_1A5FD46AC();

      *&v553 = 0xD000000000000016;
      *(&v553 + 1) = 0x80000001A6054B40;
      v560[0] = v248;
      *&v560[24] = v551;
      *&v560[8] = v552;
      v560[40] = v249;
      *&v561 = v251;
      sub_1A5B67450();
      v252 = sub_1A5FD4ACC();
      v254 = v253;

      MEMORY[0x1AC554600](v252, v254);

      MEMORY[0x1AC554600](8236, 0xE200000000000000);
      v255 = *(v250 + 16);

      *v560 = v255;
      v256 = sub_1A5FD4ACC();
      MEMORY[0x1AC554600](v256);

      v257 = "detectHumanRectangles(";
      v258 = 0xD000000000000013;
      goto LABEL_81;
    case 2u:
      v215 = *(v45 + 5);
      sub_1A5B063D4(v45, v560);
      *&v553 = 0;
      *(&v553 + 1) = 0xE000000000000000;
      MEMORY[0x1AC554600](0x28726F727265, 0xE600000000000000);
      __swift_project_boxed_opaque_existential_1(v560, *&v560[24]);
      sub_1A5FD4AEC();
      MEMORY[0x1AC554600](8236, 0xE200000000000000);
      *&v565 = v215;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F3E90, &qword_1A5FF3720);
      sub_1A5FD481C();

      v92 = v553;
      __swift_destroy_boxed_opaque_existential_1(v560);
      return v92;
    case 3u:
      v228 = v45;
      v229 = *v45;
      v230 = *(v46 + 5);
      v231 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF6C8, &qword_1A5FF9CE8) + 48);
      v552 = *(v228 + 8);
      v551 = *(v228 + 24);
      sub_1A5B5C4C0(&v228[v231], v42, type metadata accessor for ImageAestheticsScoresObservation);
      *v560 = 0;
      *&v560[8] = 0xE000000000000000;
      sub_1A5FD46AC();

      *&v553 = 0xD00000000000001FLL;
      *(&v553 + 1) = 0x80000001A6054B00;
      v560[0] = v229;
      *&v560[24] = v551;
      *&v560[8] = v552;
      *&v560[40] = v230;
      sub_1A5B3653C();
      v232 = sub_1A5FD4ACC();
      v234 = v233;

      MEMORY[0x1AC554600](v232, v234);

      MEMORY[0x1AC554600](8236, 0xE200000000000000);
      sub_1A5B5E6AC(&qword_1EB1EFB40, type metadata accessor for ImageAestheticsScoresObservation, &protocol conformance descriptor for ImageAestheticsScoresObservation);
      v235 = sub_1A5FD4ACC();
      MEMORY[0x1AC554600](v235);

      MEMORY[0x1AC554600](41, 0xE100000000000000);
      v92 = v553;
      v124 = type metadata accessor for ImageAestheticsScoresObservation;
      v125 = v42;
      goto LABEL_89;
    case 4u:
      v166 = *(v45 + 3);
      *&v560[32] = *(v45 + 2);
      v561 = v166;
      v562 = *(v45 + 4);
      v167 = *(v45 + 1);
      *v560 = *v45;
      *&v560[16] = v167;
      v168 = *(v45 + 10);
      *&v553 = 0;
      *(&v553 + 1) = 0xE000000000000000;
      sub_1A5FD46AC();

      strcpy(&v565, "classifyImage(");
      HIBYTE(v565) = -18;
      v555 = *&v560[32];
      v556 = v561;
      v557 = v562;
      v554 = *&v560[16];
      v553 = *v560;
      sub_1A5B67300();
      v169 = sub_1A5FD4ACC();
      v171 = v170;
      sub_1A5B67354(v560);
      MEMORY[0x1AC554600](v169, v171);

      MEMORY[0x1AC554600](8236, 0xE200000000000000);
      v172 = *(v168 + 16);

      *&v553 = v172;
      v173 = sub_1A5FD4ACC();
      MEMORY[0x1AC554600](v173);

      v112 = " VisionObservations)";
      v113 = 0xD00000000000001CLL;
      goto LABEL_91;
    case 5u:
      v288 = *(v45 + 3);
      v289 = *(v45 + 5);
      v562 = *(v45 + 4);
      v563 = v289;
      v290 = *(v45 + 1);
      *v560 = *v45;
      *&v560[16] = v290;
      v291 = *(v45 + 3);
      v293 = *v45;
      v292 = *(v45 + 1);
      *&v560[32] = *(v45 + 2);
      v561 = v291;
      v294 = *(v45 + 5);
      v557 = v562;
      v558 = v294;
      v553 = v293;
      v554 = v292;
      v295 = *(v45 + 13);
      v564 = *(v45 + 12);
      *&v565 = 0x284C4D65726F63;
      *(&v565 + 1) = 0xE700000000000000;
      v559 = *(v45 + 12);
      v556 = v288;
      v555 = *&v560[32];
      sub_1A5B67258();
      v296 = sub_1A5FD4ACC();
      MEMORY[0x1AC554600](v296);

      MEMORY[0x1AC554600](8236, 0xE200000000000000);
      v297 = *(v295 + 16);

      *&v553 = v297;
      v298 = sub_1A5FD4ACC();
      MEMORY[0x1AC554600](v298);

      MEMORY[0x1AC554600](0xD000000000000014, 0x80000001A6054AC0);
      sub_1A5B672AC(v560);
      goto LABEL_93;
    case 6u:
      v336 = v45;
      v338 = *(v45 + 4);
      v337 = *(v46 + 5);
      *v560 = 0;
      *&v560[8] = 0xE000000000000000;
      v339 = v336[1];
      v552 = *v336;
      v551 = v339;
      sub_1A5FD46AC();
      v553 = *v560;
      MEMORY[0x1AC554600](0xD000000000000015, 0x80000001A6054A80);
      *v560 = v552;
      *&v560[16] = v551;
      *&v560[32] = v338;
      sub_1A5B67204();
      v340 = sub_1A5FD4ACC();
      v342 = v341;

      MEMORY[0x1AC554600](v340, v342);

      MEMORY[0x1AC554600](8236, 0xE200000000000000);
      v343 = *(v337 + 16);

      *v560 = v343;
      v344 = sub_1A5FD4ACC();
      MEMORY[0x1AC554600](v344);

      v257 = "detectAnimalBodyPose(";
      v258 = 0xD00000000000001CLL;
      goto LABEL_81;
    case 7u:
      v236 = *(v45 + 1);
      *v560 = *v45;
      *&v560[16] = v236;
      v237 = *(v45 + 3);
      v239 = *v45;
      v238 = *(v45 + 1);
      *&v560[32] = *(v45 + 2);
      v561 = v237;
      v240 = *(v45 + 8);
      *&v565 = 0x6142746365746564;
      *(&v565 + 1) = 0xEF287365646F6372;
      v553 = v239;
      v554 = v238;
      v241 = *(v45 + 3);
      v555 = *(v45 + 2);
      v556 = v241;
      sub_1A5B6715C();
      v242 = sub_1A5FD4ACC();
      v244 = v243;
      sub_1A5B671B0(v560);
      MEMORY[0x1AC554600](v242, v244);

      MEMORY[0x1AC554600](8236, 0xE200000000000000);
      v245 = *(v240 + 16);

      *&v553 = v245;
      v246 = sub_1A5FD4ACC();
      MEMORY[0x1AC554600](v246);

      v112 = "detectDocumentSegmentation(";
      v113 = 0xD000000000000015;
      goto LABEL_91;
    case 8u:
      v358 = *(v45 + 3);
      *&v560[32] = *(v45 + 2);
      v561 = v358;
      *&v562 = *(v45 + 8);
      v359 = *(v45 + 1);
      *v560 = *v45;
      *&v560[16] = v359;
      v360 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF6C0, &qword_1A5FF9CE0);
      sub_1A5B5C4C0(&v45[*(v360 + 48)], v39, type metadata accessor for ContoursObservation);
      *&v565 = 0x6F43746365746564;
      *(&v565 + 1) = 0xEF287372756F746ELL;
      v555 = *&v560[32];
      v556 = v561;
      *&v557 = v562;
      v554 = *&v560[16];
      v553 = *v560;
      sub_1A5B670B4();
      v361 = sub_1A5FD4ACC();
      v363 = v362;
      sub_1A5B67108(v560);
      MEMORY[0x1AC554600](v361, v363);

      MEMORY[0x1AC554600](8236, 0xE200000000000000);
      sub_1A5B5E6AC(&qword_1EB1EFB18, type metadata accessor for ContoursObservation, &protocol conformance descriptor for ContoursObservation);
      v364 = sub_1A5FD4ACC();
      MEMORY[0x1AC554600](v364);

      v92 = v565;
      v124 = type metadata accessor for ContoursObservation;
      v125 = v39;
      goto LABEL_89;
    case 9u:
      v196 = v45;
      v197 = *(v45 + 4);
      v198 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF6B8, &qword_1A5FF9CD8) + 48);
      v199 = *(v45 + 1);
      v552 = *v45;
      v551 = v199;
      v200 = &qword_1EB1EF888;
      v201 = &qword_1A5FF9D08;
      sub_1A5B60994(&v196[v198], v36, &qword_1EB1EF888, &qword_1A5FF9D08);
      *&v553 = 0xD00000000000001BLL;
      *(&v553 + 1) = 0x80000001A6054A40;
      *v560 = v552;
      *&v560[16] = v551;
      *&v560[32] = v197;
      sub_1A5B1ADC0();
      v202 = sub_1A5FD4ACC();
      v204 = v203;

      MEMORY[0x1AC554600](v202, v204);

      MEMORY[0x1AC554600](8236, 0xE200000000000000);
      sub_1A5B31A34(v36, v33, &qword_1EB1EF888, &qword_1A5FF9D08);
      v205 = sub_1A5FD3D7C();
      MEMORY[0x1AC554600](v205);

      MEMORY[0x1AC554600](41, 0xE100000000000000);
      v92 = v553;
      v193 = v36;
      goto LABEL_103;
    case 0xAu:
      v355 = v45;
      v356 = *v45;
      v357 = *(v46 + 5);
      v59 = *(v355 + 6);
      *&v553 = 0xD000000000000019;
      *(&v553 + 1) = 0x80000001A6054A20;
      *v560 = v356;
      *&v560[8] = *(v355 + 8);
      *&v560[24] = *(v355 + 24);
      *&v560[40] = v357;
      sub_1A5B67060();
      goto LABEL_98;
    case 0xBu:
      v153 = v45;
      v154 = *v45;
      v155 = v46[40];
      v156 = *(v46 + 6);
      v59 = *(v153 + 7);
      *&v553 = 0xD000000000000014;
      *(&v553 + 1) = 0x80000001A6054A00;
      *v560 = v154;
      *&v560[8] = *(v153 + 8);
      *&v560[24] = *(v153 + 24);
      v560[40] = v155;
      *&v561 = v156;
      sub_1A5B6700C();
      goto LABEL_98;
    case 0xCu:
      v184 = *(v45 + 4);
      v185 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF6B0, &qword_1A5FF9CD0) + 48);
      v186 = *(v45 + 1);
      v552 = *v45;
      v551 = v186;
      v187 = &v45[v185];
      v188 = v514;
      sub_1A5B60994(v187, v514, &qword_1EB1EF870, &qword_1A5FF9D00);
      strcpy(&v553, "detectHorizon(");
      HIBYTE(v553) = -18;
      *v560 = v552;
      *&v560[16] = v551;
      *&v560[32] = v184;
      sub_1A5B66FB8();
      v189 = sub_1A5FD4ACC();
      v191 = v190;

      MEMORY[0x1AC554600](v189, v191);

      MEMORY[0x1AC554600](8236, 0xE200000000000000);
      sub_1A5B31A34(v188, v511, &qword_1EB1EF870, &qword_1A5FF9D00);
      v192 = sub_1A5FD3D7C();
      MEMORY[0x1AC554600](v192);

      MEMORY[0x1AC554600](41, 0xE100000000000000);
      v92 = v553;
      v193 = v188;
      v194 = &qword_1EB1EF870;
      v195 = &qword_1A5FF9D00;
      goto LABEL_104;
    case 0xDu:
      v325 = v45;
      v326 = v45[32];
      v328 = *(v45 + 5);
      v327 = *(v325 + 6);
      *v560 = 0;
      *&v560[8] = 0xE000000000000000;
      v329 = *(v325 + 1);
      v552 = *v325;
      v551 = v329;
      sub_1A5FD46AC();
      v553 = *v560;
      MEMORY[0x1AC554600](0xD000000000000014, 0x80000001A60549C0);
      *v560 = v552;
      *&v560[16] = v551;
      v560[32] = v326;
      *&v560[40] = v328;
      sub_1A5B66F64();
      v330 = sub_1A5FD4ACC();
      v332 = v331;

      MEMORY[0x1AC554600](v330, v332);

      MEMORY[0x1AC554600](8236, 0xE200000000000000);
      v333 = *(v327 + 16);

      *v560 = v333;
      v334 = sub_1A5FD4ACC();
      MEMORY[0x1AC554600](v334);

      v257 = "detectHumanBodyPose(";
      v335 = 9;
      goto LABEL_80;
    case 0xEu:
      v133 = *v45;
      v134 = *(v45 + 1);
      *v560 = 0;
      *&v560[8] = 0xE000000000000000;
      sub_1A5FD46AC();
      MEMORY[0x1AC554600](0xD000000000000016, 0x80000001A6054980);
      *&v553 = v133;
      type metadata accessor for DetectHumanBodyPose3DRequest(0);
      sub_1A5B5E6AC(&qword_1EB1EEA28, type metadata accessor for DetectHumanBodyPose3DRequest, &protocol conformance descriptor for DetectHumanBodyPose3DRequest);
      v135 = sub_1A5FD4ACC();
      MEMORY[0x1AC554600](v135);

      MEMORY[0x1AC554600](8236, 0xE200000000000000);
      v136 = *(v134 + 16);

      *&v553 = v136;
      v137 = sub_1A5FD4ACC();
      MEMORY[0x1AC554600](v137);

      v138 = "detectHumanBodyPose3D(";
      v139 = 0xD00000000000001DLL;
      goto LABEL_66;
    case 0xFu:
      v216 = *&v45[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF6A8, &qword_1A5FF9CC8) + 48)];
      v87 = v516;
      sub_1A5B5C4C0(v45, v516, type metadata accessor for DetectHumanHandPoseRequest);
      *v560 = 0;
      *&v560[8] = 0xE000000000000000;
      sub_1A5FD46AC();
      MEMORY[0x1AC554600](0xD000000000000014, 0x80000001A6054940);
      sub_1A5B5E6AC(&qword_1EB1EF2E8, type metadata accessor for DetectHumanHandPoseRequest, &protocol conformance descriptor for DetectHumanHandPoseRequest);
      v217 = sub_1A5FD4ACC();
      MEMORY[0x1AC554600](v217);

      MEMORY[0x1AC554600](8236, 0xE200000000000000);
      v218 = *(v216 + 16);

      *&v553 = v218;
      v219 = sub_1A5FD4ACC();
      MEMORY[0x1AC554600](v219);

      MEMORY[0x1AC554600](0xD00000000000001BLL, 0x80000001A6054960);
      v92 = *v560;
      v93 = type metadata accessor for DetectHumanHandPoseRequest;
      goto LABEL_84;
    case 0x10u:
      v115 = v45[32];
      v116 = *(v45 + 5);
      v117 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF6A0, &qword_1A5FF9CC0) + 48);
      v118 = *(v45 + 1);
      v552 = *v45;
      v551 = v118;
      v119 = v517;
      sub_1A5B5C4C0(&v45[v117], v517, type metadata accessor for SmudgeObservation);
      *&v553 = 0xD000000000000012;
      *(&v553 + 1) = 0x80000001A60548C0;
      *v560 = v552;
      *&v560[16] = v551;
      v560[32] = v115;
      *&v560[40] = v116;
      sub_1A5B66E68();
      v120 = sub_1A5FD4ACC();
      v122 = v121;

      MEMORY[0x1AC554600](v120, v122);

      MEMORY[0x1AC554600](8236, 0xE200000000000000);
      sub_1A5B5E6AC(&qword_1EB1EFAE0, type metadata accessor for SmudgeObservation, &protocol conformance descriptor for SmudgeObservation);
      v123 = sub_1A5FD4ACC();
      MEMORY[0x1AC554600](v123);

      MEMORY[0x1AC554600](0xD000000000000013, 0x80000001A60548E0);
      v92 = v553;
      v124 = type metadata accessor for SmudgeObservation;
      v125 = v119;
      goto LABEL_89;
    case 0x11u:
      v264 = *(v45 + 1);
      v265 = *(v45 + 3);
      *&v560[32] = *(v45 + 2);
      v561 = v265;
      v266 = *(v45 + 3);
      v562 = *(v45 + 4);
      v267 = *(v45 + 1);
      *v560 = *v45;
      *&v560[16] = v267;
      v555 = *&v560[32];
      v556 = v266;
      v557 = *(v45 + 4);
      v268 = *(v45 + 10);
      *&v565 = 0xD000000000000011;
      *(&v565 + 1) = 0x80000001A6054880;
      v554 = v264;
      v553 = *v560;
      sub_1A5B66DC0();
      v269 = sub_1A5FD4ACC();
      v271 = v270;
      sub_1A5B66E14(v560);
      MEMORY[0x1AC554600](v269, v271);

      MEMORY[0x1AC554600](8236, 0xE200000000000000);
      v272 = *(v268 + 16);

      *&v553 = v272;
      v273 = sub_1A5FD4ACC();
      MEMORY[0x1AC554600](v273);

      v274 = " RectangleObservations)";
      goto LABEL_74;
    case 0x12u:
      v345 = *(v45 + 3);
      v346 = *(v45 + 1);
      *&v560[32] = *(v45 + 2);
      v561 = v345;
      v347 = *(v45 + 3);
      v562 = *(v45 + 4);
      v348 = *(v45 + 1);
      *v560 = *v45;
      *&v560[16] = v348;
      v555 = *&v560[32];
      v556 = v347;
      v557 = *(v45 + 4);
      v349 = *(v45 + 11);
      *&v563 = *(v45 + 10);
      *&v565 = 0xD000000000000015;
      *(&v565 + 1) = 0x80000001A6054840;
      *&v558 = *(v45 + 10);
      v553 = *v560;
      v554 = v346;
      sub_1A5B66D18();
      v350 = sub_1A5FD4ACC();
      v352 = v351;
      sub_1A5B66D6C(v560);
      MEMORY[0x1AC554600](v350, v352);

      MEMORY[0x1AC554600](8236, 0xE200000000000000);
      v353 = *(v349 + 16);

      *&v553 = v353;
      v354 = sub_1A5FD4ACC();
      MEMORY[0x1AC554600](v354);

      v165 = " TextObservations)";
      goto LABEL_54;
    case 0x13u:
      v394 = *v45;
      v395 = *(v45 + 1);
      *v560 = 0xD000000000000013;
      *&v560[8] = 0x80000001A6054800;
      *&v553 = v394;
      type metadata accessor for DetectTrajectoriesRequest(0);
      sub_1A5B5E6AC(&qword_1EB1EFAC8, type metadata accessor for DetectTrajectoriesRequest, &protocol conformance descriptor for DetectTrajectoriesRequest);
      v396 = sub_1A5FD4ACC();
      MEMORY[0x1AC554600](v396);

      MEMORY[0x1AC554600](8236, 0xE200000000000000);
      v397 = *(v395 + 16);

      *&v553 = v397;
      v398 = sub_1A5FD4ACC();
      MEMORY[0x1AC554600](v398);

      v138 = "detectTrajectories(";
      v139 = 0xD000000000000018;
LABEL_66:
      v393 = v138 | 0x8000000000000000;
      goto LABEL_67;
    case 0x14u:
      v282 = *(v45 + 4);
      v283 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF688, &qword_1A5FF9CB8) + 48);
      v284 = *(v45 + 1);
      v552 = *v45;
      v551 = v284;
      v87 = v548;
      sub_1A5B5C4C0(&v45[v283], v548, type metadata accessor for SaliencyImageObservation);
      *&v553 = 0xD000000000000024;
      *(&v553 + 1) = 0x80000001A60547D0;
      *v560 = v552;
      *&v560[16] = v551;
      *&v560[32] = v282;
      sub_1A5B66CC4();
      goto LABEL_72;
    case 0x15u:
      v315 = v45;
      v316 = *v45;
      v317 = v45[40];
      v318 = *(v46 + 6);
      v319 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF680, &qword_1A5FF9CB0) + 48);
      v552 = *(v315 + 8);
      v551 = *(v315 + 24);
      v320 = &v315[v319];
      v87 = v550;
      sub_1A5B5C4C0(v320, v550, type metadata accessor for FeaturePrintObservation);
      *&v553 = 0xD00000000000001ALL;
      *(&v553 + 1) = 0x80000001A60547B0;
      v560[0] = v316;
      *&v560[24] = v551;
      *&v560[8] = v552;
      v560[40] = v317;
      *&v561 = v318;
      sub_1A5B66C70();
      goto LABEL_50;
    case 0x16u:
      v381 = v45;
      v382 = *(v45 + 4);
      v383 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF668, &qword_1A5FF9CA0) + 48);
      v384 = *(v45 + 1);
      v552 = *v45;
      v551 = v384;
      v200 = &qword_1EB1EF810;
      v201 = &qword_1A5FF9CF8;
      v210 = v549;
      sub_1A5B60994(&v381[v383], v549, &qword_1EB1EF810, &qword_1A5FF9CF8);
      *&v553 = 0xD00000000000001FLL;
      *(&v553 + 1) = 0x80000001A6054790;
      *v560 = v552;
      *&v560[16] = v551;
      *&v560[32] = v382;
      sub_1A5B66C1C();
      goto LABEL_62;
    case 0x17u:
      v420 = *(v45 + 4);
      v421 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF678, &qword_1A5FF9CA8) + 48);
      v422 = *(v45 + 1);
      v552 = *v45;
      v551 = v422;
      v87 = v548;
      sub_1A5B5C4C0(&v45[v421], v548, type metadata accessor for SaliencyImageObservation);
      *&v553 = 0xD000000000000025;
      *(&v553 + 1) = 0x80000001A6054760;
      *v560 = v552;
      *&v560[16] = v551;
      *&v560[32] = v420;
      sub_1A5B66BC8();
LABEL_72:
      v423 = sub_1A5FD4ACC();
      v425 = v424;

      MEMORY[0x1AC554600](v423, v425);

      MEMORY[0x1AC554600](8236, 0xE200000000000000);
      sub_1A5B5E6AC(&qword_1EB1EFAA8, type metadata accessor for SaliencyImageObservation, &protocol conformance descriptor for SaliencyImageObservation);
      v426 = sub_1A5FD4ACC();
      MEMORY[0x1AC554600](v426);

      MEMORY[0x1AC554600](41, 0xE100000000000000);
      v92 = v553;
      v93 = type metadata accessor for SaliencyImageObservation;
      goto LABEL_84;
    case 0x18u:
      v211 = *v45;
      v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF670, &qword_1A60084A0);
      v142 = v552;
      sub_1A5B5C4C0(&v45[*(v212 + 48)], v552, type metadata accessor for PixelBufferObservation);
      *v560 = 0xD00000000000001BLL;
      *&v560[8] = 0x80000001A6054740;
      *&v553 = v211;
      type metadata accessor for GeneratePersonSegmentationRequest(0);
      sub_1A5B5E6AC(&qword_1EB1EFA98, type metadata accessor for GeneratePersonSegmentationRequest, &protocol conformance descriptor for GeneratePersonSegmentationRequest);
      v213 = sub_1A5FD4ACC();
      MEMORY[0x1AC554600](v213);

      MEMORY[0x1AC554600](8236, 0xE200000000000000);
      sub_1A5B5E6AC(&qword_1EB1EF5A0, type metadata accessor for PixelBufferObservation, &protocol conformance descriptor for PixelBufferObservation);
      v214 = sub_1A5FD4ACC();
      MEMORY[0x1AC554600](v214);

      MEMORY[0x1AC554600](41, 0xE100000000000000);

      v92 = *v560;
      goto LABEL_87;
    case 0x19u:
      v206 = v45;
      v207 = *(v45 + 4);
      v208 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF660, &qword_1A5FF9C98) + 48);
      v209 = *(v45 + 1);
      v552 = *v45;
      v551 = v209;
      v200 = &qword_1EB1EF810;
      v201 = &qword_1A5FF9CF8;
      v210 = v549;
      sub_1A5B60994(&v206[v208], v549, &qword_1EB1EF810, &qword_1A5FF9CF8);
      *&v553 = 0xD00000000000001BLL;
      *(&v553 + 1) = 0x80000001A6054720;
      *v560 = v552;
      *&v560[16] = v551;
      *&v560[32] = v207;
      sub_1A5B315B0();
LABEL_62:
      v385 = sub_1A5FD4ACC();
      v387 = v386;

      MEMORY[0x1AC554600](v385, v387);

      MEMORY[0x1AC554600](8236, 0xE200000000000000);
      sub_1A5B31A34(v210, v545, &qword_1EB1EF810, &qword_1A5FF9CF8);
      v388 = sub_1A5FD3D7C();
      MEMORY[0x1AC554600](v388);

      MEMORY[0x1AC554600](41, 0xE100000000000000);
      v92 = v553;
      v193 = v210;
      goto LABEL_103;
    case 0x1Au:
      v451 = v45;
      v452 = v45[32];
      v453 = *(v45 + 5);
      v64 = *(v451 + 6);
      *v560 = 0;
      *&v560[8] = 0xE000000000000000;
      v454 = *(v451 + 1);
      v552 = *v451;
      v551 = v454;
      sub_1A5FD46AC();
      v553 = *v560;
      MEMORY[0x1AC554600](0xD000000000000011, 0x80000001A6054700);
      *v560 = v552;
      *&v560[16] = v551;
      v560[32] = v452;
      *&v560[40] = v453;
      sub_1A5B66B74();
      goto LABEL_79;
    case 0x1Bu:
      v102 = *(v45 + 1);
      v103 = *(v45 + 3);
      *&v560[32] = *(v45 + 2);
      v561 = v103;
      v104 = *(v45 + 3);
      v562 = *(v45 + 4);
      v105 = *(v45 + 1);
      *v560 = *v45;
      *&v560[16] = v105;
      v555 = *&v560[32];
      v556 = v104;
      v557 = *(v45 + 4);
      v106 = *(v45 + 10);
      strcpy(&v565, "recognizeText(");
      HIBYTE(v565) = -18;
      v554 = v102;
      v553 = *v560;
      sub_1A5B66A24();
      v107 = sub_1A5FD4ACC();
      v109 = v108;
      sub_1A5B66A78(v560);
      MEMORY[0x1AC554600](v107, v109);

      MEMORY[0x1AC554600](8236, 0xE200000000000000);
      v110 = *(v106 + 16);

      *&v553 = v110;
      v111 = sub_1A5FD4ACC();
      MEMORY[0x1AC554600](v111);

      v112 = "ImageRegistration(";
      v113 = 0xD00000000000001DLL;
      goto LABEL_91;
    case 0x1Cu:
      v427 = *(v45 + 3);
      v428 = *(v45 + 5);
      v562 = *(v45 + 4);
      v563 = v428;
      v429 = *(v45 + 1);
      *v560 = *v45;
      *&v560[16] = v429;
      v430 = *(v45 + 3);
      v432 = *v45;
      v431 = *(v45 + 1);
      *&v560[32] = *(v45 + 2);
      v561 = v430;
      v433 = *(v45 + 5);
      v557 = v562;
      v558 = v433;
      v553 = v432;
      v554 = v431;
      v434 = *(v45 + 13);
      v564 = *(v45 + 12);
      *&v565 = 0xD000000000000013;
      *(&v565 + 1) = 0x80000001A60546C0;
      v559 = *(v45 + 12);
      v556 = v427;
      v555 = *&v560[32];
      sub_1A5B66ACC();
      v435 = sub_1A5FD4ACC();
      v437 = v436;
      sub_1A5B66B20(v560);
      MEMORY[0x1AC554600](v435, v437);

      MEMORY[0x1AC554600](8236, 0xE200000000000000);
      v438 = *(v434 + 16);

      *&v553 = v438;
      v439 = sub_1A5FD4ACC();
      MEMORY[0x1AC554600](v439);

      v274 = ") DocumentObservations)";
LABEL_74:
      v112 = (v274 - 32);
      v227 = 5;
      goto LABEL_75;
    case 0x1Du:
      v440 = *v45;
      v441 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF658, &qword_1A5FF9C90);
      v142 = v521;
      sub_1A5B5C4C0(&v45[*(v441 + 48)], v521, type metadata accessor for ImageHomographicAlignmentObservation);
      *v560 = 0xD000000000000022;
      *&v560[8] = 0x80000001A6054670;
      *&v553 = v440;
      type metadata accessor for TrackHomographicImageRegistrationRequest(0);
      sub_1A5B5E6AC(&qword_1EB1EFA70, type metadata accessor for TrackHomographicImageRegistrationRequest, &protocol conformance descriptor for TrackHomographicImageRegistrationRequest);
      v442 = sub_1A5FD4ACC();
      MEMORY[0x1AC554600](v442);

      MEMORY[0x1AC554600](8236, 0xE200000000000000);
      sub_1A5B5E6AC(&qword_1EB1EFA78, type metadata accessor for ImageHomographicAlignmentObservation, &protocol conformance descriptor for ImageHomographicAlignmentObservation);
      v443 = sub_1A5FD4ACC();
      MEMORY[0x1AC554600](v443);

      MEMORY[0x1AC554600](41, 0xE100000000000000);

      v92 = *v560;
      v145 = type metadata accessor for ImageHomographicAlignmentObservation;
      goto LABEL_88;
    case 0x1Eu:
      v365 = v45;
      v366 = *v45;
      v367 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF698, &unk_1A5FFD180);
      v200 = &qword_1EB1EF7E8;
      v201 = &qword_1A5FF9CF0;
      v262 = v522;
      sub_1A5B60994(&v365[*(v367 + 48)], v522, &qword_1EB1EF7E8, &qword_1A5FF9CF0);
      strcpy(v560, "trackObject(");
      v560[13] = 0;
      *&v560[14] = -5120;
      *&v553 = v366;
      type metadata accessor for TrackObjectRequest(0);
      sub_1A5B5E6AC(&qword_1EB1EFA68, type metadata accessor for TrackObjectRequest, &protocol conformance descriptor for TrackObjectRequest);
      v368 = sub_1A5FD4ACC();
      MEMORY[0x1AC554600](v368);

      MEMORY[0x1AC554600](8236, 0xE200000000000000);
      sub_1A5B31A34(v262, v519, &qword_1EB1EF7E8, &qword_1A5FF9CF0);
      goto LABEL_59;
    case 0x1Fu:
      v259 = v45;
      v260 = *v45;
      v261 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF690, &qword_1A5FFE500);
      v200 = &qword_1EB1EF7D8;
      v201 = &qword_1A5FFE4E0;
      v262 = v525;
      sub_1A5B60994(&v259[*(v261 + 48)], v525, &qword_1EB1EF7D8, &qword_1A5FFE4E0);
      *v560 = 0xD000000000000011;
      *&v560[8] = 0x80000001A6054650;
      *&v553 = v260;
      type metadata accessor for TrackOpticalFlowRequest(0);
      sub_1A5B5E6AC(&qword_1EB1EFA60, type metadata accessor for TrackOpticalFlowRequest, &protocol conformance descriptor for TrackOpticalFlowRequest);
      v263 = sub_1A5FD4ACC();
      MEMORY[0x1AC554600](v263);

      MEMORY[0x1AC554600](8236, 0xE200000000000000);
      sub_1A5B31A34(v262, v523, &qword_1EB1EF7D8, &qword_1A5FFE4E0);
      goto LABEL_59;
    case 0x20u:
      v369 = v45;
      v370 = *v45;
      v371 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF650, &unk_1A6005CC0);
      v200 = &qword_1EB1EF7C8;
      v201 = &qword_1A600FCB0;
      v262 = v528;
      sub_1A5B60994(&v369[*(v371 + 48)], v528, &qword_1EB1EF7C8, &qword_1A600FCB0);
      *v560 = 0x6365526B63617274;
      *&v560[8] = 0xEF28656C676E6174;
      *&v553 = v370;
      type metadata accessor for TrackRectangleRequest(0);
      sub_1A5B5E6AC(&qword_1EB1EFA58, type metadata accessor for TrackRectangleRequest, &protocol conformance descriptor for TrackRectangleRequest);
      v372 = sub_1A5FD4ACC();
      MEMORY[0x1AC554600](v372);

      MEMORY[0x1AC554600](8236, 0xE200000000000000);
      sub_1A5B31A34(v262, v526, &qword_1EB1EF7C8, &qword_1A600FCB0);
LABEL_59:
      v373 = sub_1A5FD3D7C();
      MEMORY[0x1AC554600](v373);

      MEMORY[0x1AC554600](41, 0xE100000000000000);

      goto LABEL_102;
    case 0x21u:
      v140 = *v45;
      v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F48B0, &qword_1A5FF9C88);
      v142 = v531;
      sub_1A5B5C4C0(&v45[*(v141 + 48)], v531, type metadata accessor for ImageTranslationAlignmentObservation);
      *v560 = 0xD000000000000024;
      *&v560[8] = 0x80000001A6054620;
      *&v553 = v140;
      type metadata accessor for TrackTranslationalImageRegistrationRequest(0);
      sub_1A5B5E6AC(&qword_1EB1EFA48, type metadata accessor for TrackTranslationalImageRegistrationRequest, &protocol conformance descriptor for TrackTranslationalImageRegistrationRequest);
      v143 = sub_1A5FD4ACC();
      MEMORY[0x1AC554600](v143);

      MEMORY[0x1AC554600](8236, 0xE200000000000000);
      sub_1A5B5E6AC(&qword_1EB1EFA50, type metadata accessor for ImageTranslationAlignmentObservation, &protocol conformance descriptor for ImageTranslationAlignmentObservation);
      v144 = sub_1A5FD4ACC();
      MEMORY[0x1AC554600](v144);

      MEMORY[0x1AC554600](41, 0xE100000000000000);

      v92 = *v560;
      v145 = type metadata accessor for ImageTranslationAlignmentObservation;
      goto LABEL_88;
    case 0x22u:
      v114 = *v45;
      v95 = *(v45 + 1);
      *v560 = 0xD000000000000011;
      *&v560[8] = 0x80000001A6054600;
      *&v553 = v114;
      type metadata accessor for DetectScreenGazeRequest(0);
      v96 = &qword_1EB1EF568;
      v97 = type metadata accessor for DetectScreenGazeRequest;
      v98 = &protocol conformance descriptor for DetectScreenGazeRequest;
      goto LABEL_64;
    case 0x23u:
      v94 = *v45;
      v95 = *(v45 + 1);
      *v560 = 0xD000000000000011;
      *&v560[8] = 0x80000001A60545E0;
      *&v553 = v94;
      type metadata accessor for DetectDeviceGazeRequest(0);
      v96 = &unk_1EB1EFA40;
      v97 = type metadata accessor for DetectDeviceGazeRequest;
      v98 = &protocol conformance descriptor for DetectDeviceGazeRequest;
      goto LABEL_64;
    case 0x24u:
      v99 = *v45;
      v95 = *(v45 + 1);
      *v560 = 0xD000000000000011;
      *&v560[8] = 0x80000001A60545C0;
      *&v553 = v99;
      type metadata accessor for DetectCameraGazeRequest(0);
      v96 = &unk_1EB1EFA38;
      v97 = type metadata accessor for DetectCameraGazeRequest;
      v98 = &protocol conformance descriptor for DetectCameraGazeRequest;
      goto LABEL_64;
    case 0x25u:
      v70 = v45;
      v71 = *v45;
      v72 = v46[40];
      v73 = *(v46 + 6);
      v59 = *(v70 + 7);
      *&v553 = 0xD000000000000012;
      *(&v553 + 1) = 0x80000001A60545A0;
      *v560 = v71;
      *&v560[8] = *(v70 + 8);
      *&v560[24] = *(v70 + 24);
      v560[40] = v72;
      *&v561 = v73;
      sub_1A5B669D0();
      goto LABEL_98;
    case 0x26u:
      v444 = v45;
      v445 = *v45;
      v446 = *(v46 + 5);
      v447 = *(v444 + 6);
      v59 = *(v444 + 7);
      *&v553 = 0xD000000000000013;
      *(&v553 + 1) = 0x80000001A6054580;
      *v560 = v445;
      *&v560[8] = *(v444 + 8);
      *&v560[24] = *(v444 + 24);
      *&v560[40] = v446;
      *&v561 = v447;
      sub_1A5B6697C();
      v448 = sub_1A5FD4ACC();
      v450 = v449;

      MEMORY[0x1AC554600](v448, v450);
      goto LABEL_99;
    case 0x27u:
      v389 = *v45;
      v95 = *(v45 + 1);
      *v560 = 0;
      *&v560[8] = 0xE000000000000000;
      sub_1A5FD46AC();
      MEMORY[0x1AC554600](0xD00000000000001DLL, 0x80000001A6054560);
      *&v553 = v389;
      type metadata accessor for CalculateFaceLivelinessScoreRequest(0);
      v96 = &unk_1EB1EFA20;
      v97 = type metadata accessor for CalculateFaceLivelinessScoreRequest;
      v98 = &protocol conformance descriptor for CalculateFaceLivelinessScoreRequest;
LABEL_64:
      sub_1A5B5E6AC(v96, v97, v98);
      v390 = sub_1A5FD4ACC();
      MEMORY[0x1AC554600](v390);

      MEMORY[0x1AC554600](8236, 0xE200000000000000);
      v391 = *(v95 + 16);

      *&v553 = v391;
      v392 = sub_1A5FD4ACC();
      MEMORY[0x1AC554600](v392);

      v393 = 0x80000001A60543A0;
      v139 = 0xD000000000000012;
LABEL_67:
      MEMORY[0x1AC554600](v139, v393);

      return *v560;
    case 0x28u:
      v174 = v45;
      v175 = *(v45 + 4);
      v176 = *(v46 + 5);
      v59 = *(v174 + 6);
      *&v553 = 0xD000000000000014;
      *(&v553 + 1) = 0x80000001A6054540;
      v177 = *(v174 + 1);
      *v560 = *v174;
      *&v560[16] = v177;
      *&v560[32] = v175;
      *&v560[40] = v176;
      sub_1A5B66928();
      goto LABEL_98;
    case 0x29u:
      v275 = *(v45 + 4);
      v276 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF640, &qword_1A5FF9C78) + 48);
      v277 = *(v45 + 1);
      v552 = *v45;
      v551 = v277;
      v87 = v534;
      sub_1A5B5C4C0(&v45[v276], v534, type metadata accessor for ImageExposureObservation);
      *&v553 = 0xD000000000000017;
      *(&v553 + 1) = 0x80000001A6054500;
      *v560 = v552;
      *&v560[16] = v551;
      *&v560[32] = v275;
      sub_1A5B13458();
      v278 = sub_1A5FD4ACC();
      v280 = v279;

      MEMORY[0x1AC554600](v278, v280);

      MEMORY[0x1AC554600](8236, 0xE200000000000000);
      sub_1A5B5E6AC(&qword_1EB1EFA00, type metadata accessor for ImageExposureObservation, &protocol conformance descriptor for ImageExposureObservation);
      v281 = sub_1A5FD4ACC();
      MEMORY[0x1AC554600](v281);

      MEMORY[0x1AC554600](41, 0xE100000000000000);
      v92 = v553;
      v93 = type metadata accessor for ImageExposureObservation;
      goto LABEL_84;
    case 0x2Au:
      v402 = v45;
      v403 = *v45;
      v404 = *(v45 + 1);
      v405 = *(v46 + 6);
      v406 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF648, &qword_1A5FF9C80) + 48);
      v407 = *(v402 + 2);
      v552 = *(v402 + 1);
      v551 = v407;
      v408 = &v402[v406];
      v87 = v533;
      sub_1A5B5C4C0(v408, v533, type metadata accessor for ImageBlurObservation);
      *&v553 = 0xD000000000000013;
      *(&v553 + 1) = 0x80000001A6054520;
      v560[0] = v403;
      *&v560[8] = v404;
      *&v560[16] = v552;
      *&v560[32] = v551;
      *&v561 = v405;
      sub_1A5B668D4();
      v409 = sub_1A5FD4ACC();
      v411 = v410;

      MEMORY[0x1AC554600](v409, v411);

      MEMORY[0x1AC554600](8236, 0xE200000000000000);
      sub_1A5B5E6AC(&qword_1EB1EFA10, type metadata accessor for ImageBlurObservation, &protocol conformance descriptor for ImageBlurObservation);
      v412 = sub_1A5FD4ACC();
      MEMORY[0x1AC554600](v412);

      MEMORY[0x1AC554600](41, 0xE100000000000000);
      v92 = v553;
      v93 = type metadata accessor for ImageBlurObservation;
      goto LABEL_84;
    case 0x2Bu:
      v60 = *v45;
      v61 = v45[40];
      v62 = *(v45 + 6);
      v54 = *(v46 + 7);
      *&v553 = 0xD000000000000018;
      *(&v553 + 1) = 0x80000001A60544E0;
      v560[0] = v60;
      *&v560[8] = *(v46 + 8);
      *&v560[24] = *(v46 + 24);
      v560[40] = v61;
      *&v561 = v62;
      sub_1A5B66880();
      goto LABEL_95;
    case 0x2Cu:
      v129 = v45;
      v130 = *v45;
      v131 = v46[40];
      v132 = *(v46 + 6);
      v59 = *(v129 + 7);
      *&v553 = 0xD000000000000017;
      *(&v553 + 1) = 0x80000001A60544C0;
      *v560 = v130;
      *&v560[8] = *(v129 + 8);
      *&v560[24] = *(v129 + 24);
      v560[40] = v131;
      *&v561 = v132;
      sub_1A5B0FAAC();
      goto LABEL_98;
    case 0x2Du:
      v374 = *v45;
      v375 = v45[40];
      v376 = *(v45 + 6);
      v54 = *(v46 + 7);
      *&v553 = 0xD000000000000018;
      *(&v553 + 1) = 0x80000001A60544A0;
      v560[0] = v374;
      *&v560[8] = *(v46 + 8);
      *&v560[24] = *(v46 + 24);
      v560[40] = v375;
      *&v561 = v376;
      sub_1A5B22C38();
      v377 = sub_1A5FD4ACC();
      v379 = v378;

      MEMORY[0x1AC554600](v377, v379);

      MEMORY[0x1AC554600](8236, 0xE200000000000000);
      v380 = type metadata accessor for ImageAestheticsObservation(0);
      goto LABEL_96;
    case 0x2Eu:
      v488 = *v45;
      v489 = v45[40];
      v490 = *(v45 + 6);
      v54 = *(v46 + 7);
      *&v553 = 0xD000000000000012;
      *(&v553 + 1) = 0x80000001A6054480;
      v560[0] = v488;
      *&v560[8] = *(v46 + 8);
      *&v560[24] = *(v46 + 24);
      v560[40] = v489;
      *&v561 = v490;
      sub_1A5B38E5C();
      goto LABEL_95;
    case 0x2Fu:
      v79 = *v45;
      v80 = *(v45 + 5);
      v54 = *(v46 + 6);
      *&v553 = 0xD000000000000012;
      *(&v553 + 1) = 0x80000001A6054460;
      v560[0] = v79;
      *&v560[8] = *(v46 + 8);
      *&v560[24] = *(v46 + 24);
      *&v560[40] = v80;
      sub_1A5B6682C();
      goto LABEL_95;
    case 0x30u:
      v146 = *v45;
      v147 = *(v45 + 5);
      v54 = *(v46 + 6);
      *&v553 = 0xD00000000000001ALL;
      *(&v553 + 1) = 0x80000001A6054440;
      v560[0] = v146;
      *&v560[8] = *(v46 + 8);
      *&v560[24] = *(v46 + 24);
      *&v560[40] = v147;
      sub_1A5B667D8();
      goto LABEL_95;
    case 0x31u:
      v157 = *(v45 + 1);
      *v560 = *v45;
      *&v560[16] = v157;
      v158 = *(v45 + 3);
      v160 = *v45;
      v159 = *(v45 + 1);
      *&v560[32] = *(v45 + 2);
      v561 = v158;
      v48 = *(v45 + 8);
      *&v565 = 0x6146746365746564;
      *(&v565 + 1) = 0xEF28657A61476563;
      v553 = v160;
      v554 = v159;
      v161 = *(v45 + 3);
      v555 = *(v45 + 2);
      v556 = v161;
      sub_1A5B66730();
      v49 = sub_1A5FD4ACC();
      v51 = v162;
      sub_1A5B66784(v560);
      goto LABEL_26;
    case 0x32u:
      v56 = v45;
      v57 = *v45;
      v58 = *(v46 + 5);
      v59 = *(v56 + 6);
      *&v553 = 0x6146746365746564;
      *(&v553 + 1) = 0xEF2865736F506563;
      *v560 = v57;
      *&v560[8] = *(v56 + 8);
      *&v560[24] = *(v56 + 24);
      *&v560[40] = v58;
      sub_1A5B2AA54();
      goto LABEL_98;
    case 0x33u:
      v497 = v45;
      v498 = *v45;
      v499 = *(v46 + 5);
      v59 = *(v497 + 6);
      *&v553 = 0xD000000000000016;
      *(&v553 + 1) = 0x80000001A6054420;
      *v560 = v498;
      *&v560[8] = *(v497 + 8);
      *&v560[24] = *(v497 + 24);
      *&v560[40] = v499;
      sub_1A5B4A838();
      goto LABEL_98;
    case 0x34u:
      v481 = *(v45 + 1);
      *v560 = *v45;
      *&v560[16] = v481;
      *&v560[32] = *(v45 + 2);
      v482 = *(v45 + 7);
      *&v561 = *(v45 + 6);
      *&v553 = 0;
      *(&v553 + 1) = 0xE000000000000000;
      sub_1A5FD46AC();
      v565 = v553;
      MEMORY[0x1AC554600](0xD00000000000001ALL, 0x80000001A6054900);
      v553 = *v560;
      v554 = *&v560[16];
      v555 = *&v560[32];
      *&v556 = v561;
      sub_1A5B66EBC();
      v483 = sub_1A5FD4ACC();
      v485 = v484;
      sub_1A5B66F10(v560);
      MEMORY[0x1AC554600](v483, v485);

      MEMORY[0x1AC554600](8236, 0xE200000000000000);
      v486 = *(v482 + 16);

      *&v553 = v486;
      v487 = sub_1A5FD4ACC();
      MEMORY[0x1AC554600](v487);

      v112 = "detectHumanHeadRectangles(";
      v113 = 0xD00000000000001CLL;
      goto LABEL_91;
    case 0x35u:
      v74 = v45;
      v75 = *v45;
      v76 = *(v46 + 2);
      v77 = *(v46 + 6);
      v59 = *(v74 + 7);
      *&v553 = 0xD000000000000015;
      *(&v553 + 1) = 0x80000001A6054380;
      *v560 = v75;
      *&v560[8] = v76;
      v78 = *(v74 + 2);
      *&v560[16] = *(v74 + 1);
      *&v560[32] = v78;
      *&v561 = v77;
      sub_1A5B665E0();
LABEL_98:
      v500 = sub_1A5FD4ACC();
      v502 = v501;

      MEMORY[0x1AC554600](v500, v502);
LABEL_99:

      MEMORY[0x1AC554600](8236, 0xE200000000000000);
      v503 = *(v59 + 16);

      *v560 = v503;
      v504 = sub_1A5FD4ACC();
      MEMORY[0x1AC554600](v504);

      v460 = 0x80000001A60543A0;
      v258 = 0xD000000000000012;
      goto LABEL_100;
    case 0x36u:
      v461 = v45;
      v462 = *v45;
      v463 = *(v46 + 5);
      v54 = *(v461 + 6);
      *&v553 = 0xD000000000000014;
      *(&v553 + 1) = 0x80000001A6054400;
      *v560 = v462;
      *&v560[8] = *(v461 + 8);
      *&v560[24] = *(v461 + 24);
      *&v560[40] = v463;
      sub_1A5B666DC();
      v464 = sub_1A5FD4ACC();
      v466 = v465;

      MEMORY[0x1AC554600](v464, v466);

      MEMORY[0x1AC554600](8236, 0xE200000000000000);
      v380 = type metadata accessor for RecognizedObjectObservation(0);
      goto LABEL_96;
    case 0x37u:
      v477 = *(v45 + 1);
      *v560 = *v45;
      *&v560[16] = v477;
      *&v560[32] = *(v45 + 2);
      v478 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF638, &qword_1A6022DB0);
      v142 = v552;
      sub_1A5B5C4C0(&v45[*(v478 + 48)], v552, type metadata accessor for PixelBufferObservation);
      *&v565 = 0xD00000000000001BLL;
      *(&v565 + 1) = 0x80000001A60543E0;
      v553 = *v560;
      v554 = *&v560[16];
      v555 = *&v560[32];
      sub_1A5B66634();
      v150 = sub_1A5FD4ACC();
      v152 = v479;
      sub_1A5B66688(v560);
      goto LABEL_86;
    case 0x38u:
      v81 = v45;
      v82 = *v45;
      v83 = v45[40];
      v84 = *(v46 + 6);
      v85 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF630, &qword_1A5FF9C70) + 48);
      v552 = *(v81 + 8);
      v551 = *(v81 + 24);
      v86 = &v81[v85];
      v87 = v537;
      sub_1A5B5C4C0(v86, v537, type metadata accessor for DetectionPrintObservation);
      *&v553 = 0xD000000000000017;
      *(&v553 + 1) = 0x80000001A60543C0;
      v560[0] = v82;
      *&v560[24] = v551;
      *&v560[8] = v552;
      v560[40] = v83;
      *&v561 = v84;
      sub_1A5B3E0F0();
      v88 = sub_1A5FD4ACC();
      v90 = v89;

      MEMORY[0x1AC554600](v88, v90);

      MEMORY[0x1AC554600](8236, 0xE200000000000000);
      sub_1A5B5E6AC(&qword_1EB1EEE98, type metadata accessor for DetectionPrintObservation, &protocol conformance descriptor for DetectionPrintObservation);
      v91 = sub_1A5FD4ACC();
      MEMORY[0x1AC554600](v91);

      MEMORY[0x1AC554600](41, 0xE100000000000000);
      v92 = v553;
      v93 = type metadata accessor for DetectionPrintObservation;
      goto LABEL_84;
    case 0x39u:
      v399 = *(v45 + 1);
      *v560 = *v45;
      *&v560[16] = v399;
      *&v560[32] = *(v45 + 2);
      v400 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF628, &qword_1A5FF9C68);
      v142 = v552;
      sub_1A5B5C4C0(&v45[*(v400 + 48)], v552, type metadata accessor for PixelBufferObservation);
      *&v565 = 0xD00000000000001CLL;
      *(&v565 + 1) = 0x80000001A6054360;
      v553 = *v560;
      v554 = *&v560[16];
      v555 = *&v560[32];
      sub_1A5B487B4();
      v150 = sub_1A5FD4ACC();
      v152 = v401;
      sub_1A5B6658C(v560);
      goto LABEL_86;
    case 0x3Au:
      v148 = *(v45 + 1);
      *v560 = *v45;
      *&v560[16] = v148;
      *&v560[32] = *(v45 + 2);
      v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF620, &qword_1A5FF9C60);
      v142 = v552;
      sub_1A5B5C4C0(&v45[*(v149 + 48)], v552, type metadata accessor for PixelBufferObservation);
      *&v565 = 0xD000000000000024;
      *(&v565 + 1) = 0x80000001A6054330;
      v553 = *v560;
      v554 = *&v560[16];
      v555 = *&v560[32];
      sub_1A5B664E4();
      v150 = sub_1A5FD4ACC();
      v152 = v151;
      sub_1A5B66538(v560);
      goto LABEL_86;
    case 0x3Bu:
      v413 = *v45;
      v414 = *(v45 + 5);
      v415 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF618, &qword_1A5FF9C58) + 48);
      v552 = *(v45 + 8);
      v551 = *(v45 + 24);
      v87 = v539;
      sub_1A5B5C4C0(&v45[v415], v539, type metadata accessor for ImageFingerprintsObservation);
      *&v553 = 0xD00000000000001ALL;
      *(&v553 + 1) = 0x80000001A6054310;
      v560[0] = v413;
      *&v560[24] = v551;
      *&v560[8] = v552;
      *&v560[40] = v414;
      sub_1A5B66490();
      v416 = sub_1A5FD4ACC();
      v418 = v417;

      MEMORY[0x1AC554600](v416, v418);

      MEMORY[0x1AC554600](8236, 0xE200000000000000);
      sub_1A5B5E6AC(&qword_1EB1EF9B8, type metadata accessor for ImageFingerprintsObservation, &protocol conformance descriptor for ImageFingerprintsObservation);
      v419 = sub_1A5FD4ACC();
      MEMORY[0x1AC554600](v419);

      MEMORY[0x1AC554600](41, 0xE100000000000000);
      v92 = v553;
      v93 = type metadata accessor for ImageFingerprintsObservation;
      goto LABEL_84;
    case 0x3Cu:
      v178 = *(v45 + 4);
      v179 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF610, &qword_1A5FF9C50) + 48);
      v180 = *(v45 + 1);
      v552 = *v45;
      v551 = v180;
      v87 = v550;
      sub_1A5B5C4C0(&v45[v179], v550, type metadata accessor for FeaturePrintObservation);
      *&v553 = 0xD000000000000013;
      *(&v553 + 1) = 0x80000001A60542F0;
      *v560 = v552;
      *&v560[16] = v551;
      *&v560[32] = v178;
      sub_1A5B6643C();
LABEL_50:
      v321 = sub_1A5FD4ACC();
      v323 = v322;

      MEMORY[0x1AC554600](v321, v323);

      MEMORY[0x1AC554600](8236, 0xE200000000000000);
      sub_1A5B5E6AC(&qword_1EB1EE928, type metadata accessor for FeaturePrintObservation, &protocol conformance descriptor for FeaturePrintObservation);
      v324 = sub_1A5FD4ACC();
      MEMORY[0x1AC554600](v324);

      MEMORY[0x1AC554600](41, 0xE100000000000000);
      v92 = v553;
      v93 = type metadata accessor for FeaturePrintObservation;
      goto LABEL_84;
    case 0x3Du:
      v285 = *(v45 + 1);
      *v560 = *v45;
      *&v560[16] = v285;
      *&v560[32] = *(v45 + 2);
      v286 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF608, &unk_1A6022DA0);
      v142 = v552;
      sub_1A5B5C4C0(&v45[*(v286 + 48)], v552, type metadata accessor for PixelBufferObservation);
      *&v565 = 0xD000000000000018;
      *(&v565 + 1) = 0x80000001A60542D0;
      v553 = *v560;
      v554 = *&v560[16];
      v555 = *&v560[32];
      sub_1A5B66394();
      v150 = sub_1A5FD4ACC();
      v152 = v287;
      sub_1A5B663E8(v560);
LABEL_86:
      MEMORY[0x1AC554600](v150, v152);

      MEMORY[0x1AC554600](8236, 0xE200000000000000);
      sub_1A5B5E6AC(&qword_1EB1EF5A0, type metadata accessor for PixelBufferObservation, &protocol conformance descriptor for PixelBufferObservation);
      v480 = sub_1A5FD4ACC();
      MEMORY[0x1AC554600](v480);

      MEMORY[0x1AC554600](41, 0xE100000000000000);
      v92 = v565;
LABEL_87:
      v145 = type metadata accessor for PixelBufferObservation;
LABEL_88:
      v124 = v145;
      v125 = v142;
      goto LABEL_89;
    case 0x3Eu:
      v312 = v45;
      v313 = *(v45 + 4);
      v64 = *(v46 + 5);
      *v560 = 0;
      *&v560[8] = 0xE000000000000000;
      v314 = v312[1];
      v552 = *v312;
      v551 = v314;
      sub_1A5FD46AC();
      v553 = *v560;
      MEMORY[0x1AC554600](0xD000000000000015, 0x80000001A60542B0);
      *v560 = v552;
      *&v560[16] = v551;
      *&v560[32] = v313;
      sub_1A5B66340();
      goto LABEL_79;
    case 0x3Fu:
      v220 = *(v45 + 1);
      *v560 = *v45;
      *&v560[16] = v220;
      *&v560[32] = *(v45 + 2);
      v221 = *(v45 + 7);
      *&v561 = *(v45 + 6);
      *&v553 = 0;
      *(&v553 + 1) = 0xE000000000000000;
      sub_1A5FD46AC();
      v565 = v553;
      MEMORY[0x1AC554600](0xD00000000000001ALL, 0x80000001A6054290);
      v553 = *v560;
      v554 = *&v560[16];
      v555 = *&v560[32];
      *&v556 = v561;
      sub_1A5B66298();
      v222 = sub_1A5FD4ACC();
      v224 = v223;
      sub_1A5B662EC(v560);
      MEMORY[0x1AC554600](v222, v224);

      MEMORY[0x1AC554600](8236, 0xE200000000000000);
      v225 = *(v221 + 16);

      *&v553 = v225;
      v226 = sub_1A5FD4ACC();
      MEMORY[0x1AC554600](v226);

      v112 = "recognizeSportBalls(";
      v227 = 13;
LABEL_75:
      v113 = v227 | 0xD000000000000012;
LABEL_91:
      v311 = v112 | 0x8000000000000000;
      goto LABEL_92;
    case 0x40u:
      v181 = v45;
      v182 = *(v45 + 4);
      v64 = *(v46 + 5);
      *v560 = 0;
      *&v560[8] = 0xE000000000000000;
      v183 = v181[1];
      v552 = *v181;
      v551 = v183;
      sub_1A5FD46AC();
      v553 = *v560;
      MEMORY[0x1AC554600](0xD000000000000016, 0x80000001A6054270);
      *v560 = v552;
      *&v560[16] = v551;
      *&v560[32] = v182;
      sub_1A5B66244();
      goto LABEL_79;
    case 0x41u:
      v299 = *(v45 + 3);
      v300 = *(v45 + 1);
      *&v560[32] = *(v45 + 2);
      v561 = v299;
      v301 = *(v45 + 3);
      v562 = *(v45 + 4);
      v302 = *(v45 + 1);
      *v560 = *v45;
      *&v560[16] = v302;
      v555 = *&v560[32];
      v556 = v301;
      v557 = *(v45 + 4);
      v303 = *(v45 + 11);
      *&v563 = *(v45 + 10);
      *&v565 = 0xD000000000000011;
      *(&v565 + 1) = 0x80000001A6054250;
      *&v558 = *(v45 + 10);
      v553 = *v560;
      v554 = v300;
      sub_1A5B6619C();
      v304 = sub_1A5FD4ACC();
      v306 = v305;
      sub_1A5B661F0(v560);
      MEMORY[0x1AC554600](v304, v306);

      MEMORY[0x1AC554600](8236, 0xE200000000000000);
      v307 = type metadata accessor for RecognizedObjectObservation(0);
      v308 = MEMORY[0x1AC554750](v303, v307);
      v310 = v309;

      MEMORY[0x1AC554600](v308, v310);

      v113 = 41;
      v311 = 0xE100000000000000;
      goto LABEL_92;
    case 0x42u:
      v63 = v45;
      v65 = *(v45 + 4);
      v64 = *(v46 + 5);
      *v560 = 0;
      *&v560[8] = 0xE000000000000000;
      v66 = v63[1];
      v552 = *v63;
      v551 = v66;
      sub_1A5FD46AC();
      v553 = *v560;
      MEMORY[0x1AC554600](0xD00000000000001ELL, 0x80000001A6054230);
      *v560 = v552;
      *&v560[16] = v551;
      *&v560[32] = v65;
      sub_1A5B66148();
      goto LABEL_79;
    case 0x43u:
      v126 = v45;
      v127 = *(v45 + 4);
      v64 = *(v46 + 5);
      *v560 = 0;
      *&v560[8] = 0xE000000000000000;
      v128 = v126[1];
      v552 = *v126;
      v551 = v128;
      sub_1A5FD46AC();
      v553 = *v560;
      MEMORY[0x1AC554600](0xD000000000000014, 0x80000001A60541F0);
      *v560 = v552;
      *&v560[16] = v551;
      *&v560[32] = v127;
      sub_1A5B660F4();
LABEL_79:
      v455 = sub_1A5FD4ACC();
      v457 = v456;

      MEMORY[0x1AC554600](v455, v457);

      MEMORY[0x1AC554600](8236, 0xE200000000000000);
      v458 = *(v64 + 16);

      *v560 = v458;
      v459 = sub_1A5FD4ACC();
      MEMORY[0x1AC554600](v459);

      v257 = "recognizeSportBalls(";
      v335 = 13;
LABEL_80:
      v258 = v335 | 0xD000000000000012;
LABEL_81:
      v460 = v257 | 0x8000000000000000;
      goto LABEL_100;
    case 0x44u:
      v505 = v45;
      v506 = *v45;
      v507 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F4CD0, &unk_1A60260B0);
      v200 = &qword_1EB1EF6F8;
      v201 = qword_1A60211B0;
      v262 = v541;
      sub_1A5B60994(&v505[*(v507 + 48)], v541, &qword_1EB1EF6F8, qword_1A60211B0);
      strcpy(v560, "trackMask(");
      v560[11] = 0;
      *&v560[12] = -369098752;
      *&v553 = v506;
      type metadata accessor for TrackMaskRequest(0);
      sub_1A5B5E6AC(&qword_1EB1EF968, type metadata accessor for TrackMaskRequest, &protocol conformance descriptor for TrackMaskRequest);
      v508 = sub_1A5FD4ACC();
      MEMORY[0x1AC554600](v508);

      MEMORY[0x1AC554600](8236, 0xE200000000000000);
      sub_1A5B31A34(v262, v538, &qword_1EB1EF6F8, qword_1A60211B0);
      v509 = sub_1A5FD3D7C();
      MEMORY[0x1AC554600](v509);

LABEL_102:
      v92 = *v560;
      v193 = v262;
LABEL_103:
      v194 = v200;
      v195 = v201;
LABEL_104:
      sub_1A5B10168(v193, v194, v195);
      return v92;
    case 0x45u:
      v100 = *v45;
      v101 = *(v45 + 5);
      v54 = *(v46 + 6);
      *&v553 = 0xD000000000000017;
      *(&v553 + 1) = 0x80000001A60541D0;
      v560[0] = v100;
      *&v560[8] = *(v46 + 8);
      *&v560[24] = *(v46 + 24);
      *&v560[40] = v101;
      sub_1A5B660A0();
      goto LABEL_95;
    case 0x46u:
      v52 = *v45;
      v53 = v45[40];
      v55 = *(v45 + 6);
      v54 = *(v46 + 7);
      *&v553 = 0xD000000000000018;
      *(&v553 + 1) = 0x80000001A60541B0;
      v560[0] = v52;
      *&v560[8] = *(v46 + 8);
      *&v560[24] = *(v46 + 24);
      v560[40] = v53;
      *&v561 = v55;
      sub_1A5B6604C();
      goto LABEL_95;
    case 0x47u:
      v67 = *v45;
      v68 = v45[40];
      v69 = *(v45 + 6);
      v54 = *(v46 + 7);
      *&v553 = 0xD000000000000018;
      *(&v553 + 1) = 0x80000001A6054190;
      v560[0] = v67;
      *&v560[8] = *(v46 + 8);
      *&v560[24] = *(v46 + 24);
      v560[40] = v68;
      *&v561 = v69;
      sub_1A5B65FF8();
LABEL_95:
      v491 = sub_1A5FD4ACC();
      v493 = v492;

      MEMORY[0x1AC554600](v491, v493);

      MEMORY[0x1AC554600](8236, 0xE200000000000000);
      v380 = type metadata accessor for ClassificationObservation(0);
LABEL_96:
      v494 = MEMORY[0x1AC554750](v54, v380);
      v496 = v495;

      MEMORY[0x1AC554600](v494, v496);

      v258 = 41;
      v460 = 0xE100000000000000;
LABEL_100:
      MEMORY[0x1AC554600](v258, v460);
      v92 = v553;
      break;
    case 0x48u:
      v467 = v45;
      v468 = *v45;
      v469 = v45[40];
      v470 = *(v46 + 6);
      v471 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF600, &qword_1A5FF9C48) + 48);
      v552 = *(v467 + 8);
      v551 = *(v467 + 24);
      v472 = &v467[v471];
      v87 = v543;
      sub_1A5B5C4C0(v472, v543, type metadata accessor for S1vLyVSh30UQ26TGBoV8MHvObservation);
      *&v553 = 0xD000000000000018;
      *(&v553 + 1) = 0x80000001A6054170;
      v560[0] = v468;
      *&v560[24] = v551;
      *&v560[8] = v552;
      v560[40] = v469;
      *&v561 = v470;
      sub_1A5B65FA4();
      v473 = sub_1A5FD4ACC();
      v475 = v474;

      MEMORY[0x1AC554600](v473, v475);

      MEMORY[0x1AC554600](8236, 0xE200000000000000);
      sub_1A5B5E6AC(&qword_1EB1EF948, type metadata accessor for S1vLyVSh30UQ26TGBoV8MHvObservation, &protocol conformance descriptor for S1vLyVSh30UQ26TGBoV8MHvObservation);
      v476 = sub_1A5FD4ACC();
      MEMORY[0x1AC554600](v476);

      MEMORY[0x1AC554600](41, 0xE100000000000000);
      v92 = v553;
      v93 = type metadata accessor for S1vLyVSh30UQ26TGBoV8MHvObservation;
LABEL_84:
      v124 = v93;
      v125 = v87;
LABEL_89:
      sub_1A5B5DF14(v125, v124);
      break;
    default:
      v47 = *(v45 + 1);
      *v560 = *v45;
      *&v560[16] = v47;
      *&v560[32] = *(v45 + 2);
      v48 = *(v45 + 7);
      *&v561 = *(v45 + 6);
      *&v553 = 0;
      *(&v553 + 1) = 0xE000000000000000;
      sub_1A5FD46AC();

      *&v565 = 0xD000000000000015;
      *(&v565 + 1) = 0x80000001A6054B20;
      v553 = *v560;
      v554 = *&v560[16];
      v555 = *&v560[32];
      *&v556 = v561;
      sub_1A5B673A8();
      v49 = sub_1A5FD4ACC();
      v51 = v50;
      sub_1A5B673FC(v560);
LABEL_26:
      MEMORY[0x1AC554600](v49, v51);

      MEMORY[0x1AC554600](8236, 0xE200000000000000);
      v163 = *(v48 + 16);

      *&v553 = v163;
      v164 = sub_1A5FD4ACC();
      MEMORY[0x1AC554600](v164);

      v165 = " FaceObservations)";
LABEL_54:
      v311 = (v165 - 32) | 0x8000000000000000;
      v113 = 0xD000000000000012;
LABEL_92:
      MEMORY[0x1AC554600](v113, v311);
LABEL_93:
      v92 = v565;
      break;
  }

  return v92;
}

unint64_t sub_1A5B65FA4()
{
  result = qword_1EB1EF940;
  if (!qword_1EB1EF940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF940);
  }

  return result;
}

unint64_t sub_1A5B65FF8()
{
  result = qword_1EB1EF950;
  if (!qword_1EB1EF950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF950);
  }

  return result;
}

unint64_t sub_1A5B6604C()
{
  result = qword_1EB1EF958;
  if (!qword_1EB1EF958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF958);
  }

  return result;
}

unint64_t sub_1A5B660A0()
{
  result = qword_1EB1EF960;
  if (!qword_1EB1EF960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF960);
  }

  return result;
}

unint64_t sub_1A5B660F4()
{
  result = qword_1EB1EF970;
  if (!qword_1EB1EF970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF970);
  }

  return result;
}

unint64_t sub_1A5B66148()
{
  result = qword_1EB1EF978;
  if (!qword_1EB1EF978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF978);
  }

  return result;
}

unint64_t sub_1A5B6619C()
{
  result = qword_1EB1EF980;
  if (!qword_1EB1EF980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF980);
  }

  return result;
}

unint64_t sub_1A5B66244()
{
  result = qword_1EB1EF988;
  if (!qword_1EB1EF988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF988);
  }

  return result;
}

unint64_t sub_1A5B66298()
{
  result = qword_1EB1EF990;
  if (!qword_1EB1EF990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF990);
  }

  return result;
}

unint64_t sub_1A5B66340()
{
  result = qword_1EB1EF998;
  if (!qword_1EB1EF998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF998);
  }

  return result;
}

unint64_t sub_1A5B66394()
{
  result = qword_1EB1EF9A0;
  if (!qword_1EB1EF9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF9A0);
  }

  return result;
}

unint64_t sub_1A5B6643C()
{
  result = qword_1EB1EF9A8;
  if (!qword_1EB1EF9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF9A8);
  }

  return result;
}

unint64_t sub_1A5B66490()
{
  result = qword_1EB1EF9B0;
  if (!qword_1EB1EF9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF9B0);
  }

  return result;
}

unint64_t sub_1A5B664E4()
{
  result = qword_1EB1EF9C0;
  if (!qword_1EB1EF9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF9C0);
  }

  return result;
}

unint64_t sub_1A5B665E0()
{
  result = qword_1EB1EF9C8;
  if (!qword_1EB1EF9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF9C8);
  }

  return result;
}

unint64_t sub_1A5B66634()
{
  result = qword_1EB1EF9D0;
  if (!qword_1EB1EF9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF9D0);
  }

  return result;
}

unint64_t sub_1A5B666DC()
{
  result = qword_1EB1EF9D8;
  if (!qword_1EB1EF9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF9D8);
  }

  return result;
}

unint64_t sub_1A5B66730()
{
  result = qword_1EB1EF9E0;
  if (!qword_1EB1EF9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF9E0);
  }

  return result;
}

unint64_t sub_1A5B667D8()
{
  result = qword_1EB1EF9E8;
  if (!qword_1EB1EF9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF9E8);
  }

  return result;
}

unint64_t sub_1A5B6682C()
{
  result = qword_1EB1EF9F0;
  if (!qword_1EB1EF9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF9F0);
  }

  return result;
}

unint64_t sub_1A5B66880()
{
  result = qword_1EB1EF9F8;
  if (!qword_1EB1EF9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF9F8);
  }

  return result;
}

unint64_t sub_1A5B668D4()
{
  result = qword_1EB1EFA08;
  if (!qword_1EB1EFA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EFA08);
  }

  return result;
}

unint64_t sub_1A5B66928()
{
  result = qword_1EB1EFA18;
  if (!qword_1EB1EFA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EFA18);
  }

  return result;
}

unint64_t sub_1A5B6697C()
{
  result = qword_1EB1EFA28;
  if (!qword_1EB1EFA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EFA28);
  }

  return result;
}

unint64_t sub_1A5B669D0()
{
  result = qword_1EB1EFA30;
  if (!qword_1EB1EFA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EFA30);
  }

  return result;
}

unint64_t sub_1A5B66A24()
{
  result = qword_1EB1EFA80;
  if (!qword_1EB1EFA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EFA80);
  }

  return result;
}

unint64_t sub_1A5B66ACC()
{
  result = qword_1EB1EFA88;
  if (!qword_1EB1EFA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EFA88);
  }

  return result;
}

unint64_t sub_1A5B66B74()
{
  result = qword_1EB1EFA90;
  if (!qword_1EB1EFA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EFA90);
  }

  return result;
}

unint64_t sub_1A5B66BC8()
{
  result = qword_1EB1EFAA0;
  if (!qword_1EB1EFAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EFAA0);
  }

  return result;
}

unint64_t sub_1A5B66C1C()
{
  result = qword_1EB1EFAB0;
  if (!qword_1EB1EFAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EFAB0);
  }

  return result;
}

unint64_t sub_1A5B66C70()
{
  result = qword_1EB1EFAB8;
  if (!qword_1EB1EFAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EFAB8);
  }

  return result;
}

unint64_t sub_1A5B66CC4()
{
  result = qword_1EB1EFAC0;
  if (!qword_1EB1EFAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EFAC0);
  }

  return result;
}

unint64_t sub_1A5B66D18()
{
  result = qword_1EB1F1630;
  if (!qword_1EB1F1630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F1630);
  }

  return result;
}

unint64_t sub_1A5B66DC0()
{
  result = qword_1EB1EFAD0;
  if (!qword_1EB1EFAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EFAD0);
  }

  return result;
}

unint64_t sub_1A5B66E68()
{
  result = qword_1EB1EFAD8;
  if (!qword_1EB1EFAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EFAD8);
  }

  return result;
}

unint64_t sub_1A5B66EBC()
{
  result = qword_1EB1EFAE8;
  if (!qword_1EB1EFAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EFAE8);
  }

  return result;
}

unint64_t sub_1A5B66F64()
{
  result = qword_1EB1EFAF0;
  if (!qword_1EB1EFAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EFAF0);
  }

  return result;
}

unint64_t sub_1A5B66FB8()
{
  result = qword_1EB1EFAF8;
  if (!qword_1EB1EFAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EFAF8);
  }

  return result;
}

unint64_t sub_1A5B6700C()
{
  result = qword_1EB1EFB00;
  if (!qword_1EB1EFB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EFB00);
  }

  return result;
}

unint64_t sub_1A5B67060()
{
  result = qword_1EB1EFB08;
  if (!qword_1EB1EFB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EFB08);
  }

  return result;
}

unint64_t sub_1A5B670B4()
{
  result = qword_1EB1EFB10;
  if (!qword_1EB1EFB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EFB10);
  }

  return result;
}

unint64_t sub_1A5B6715C()
{
  result = qword_1EB1EFB20;
  if (!qword_1EB1EFB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EFB20);
  }

  return result;
}

unint64_t sub_1A5B67204()
{
  result = qword_1EB1EFB28;
  if (!qword_1EB1EFB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EFB28);
  }

  return result;
}

unint64_t sub_1A5B67258()
{
  result = qword_1EB1EFB30;
  if (!qword_1EB1EFB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EFB30);
  }

  return result;
}

unint64_t sub_1A5B67300()
{
  result = qword_1EB1EFB38;
  if (!qword_1EB1EFB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EFB38);
  }

  return result;
}

unint64_t sub_1A5B673A8()
{
  result = qword_1EB1EE680;
  if (!qword_1EB1EE680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EE680);
  }

  return result;
}

unint64_t sub_1A5B67450()
{
  result = qword_1EB1EFB48;
  if (!qword_1EB1EFB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EFB48);
  }

  return result;
}

uint64_t sub_1A5B674A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HumanObservation(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_1A5B5DE58(v13, v10, type metadata accessor for HumanObservation);
        sub_1A5B5DE58(v14, v6, type metadata accessor for HumanObservation);
        sub_1A5B5E6AC(&qword_1EB1EE860, type metadata accessor for HumanObservation, &protocol conformance descriptor for HumanObservation);
        v16 = sub_1A5FD3D0C();
        sub_1A5B5DF14(v6, type metadata accessor for HumanObservation);
        sub_1A5B5DF14(v10, type metadata accessor for HumanObservation);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_1A5B676B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClassificationObservation(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_1A5B5DE58(v13, v10, type metadata accessor for ClassificationObservation);
        sub_1A5B5DE58(v14, v6, type metadata accessor for ClassificationObservation);
        sub_1A5B5E6AC(&qword_1EB1EFE78, type metadata accessor for ClassificationObservation, &protocol conformance descriptor for ClassificationObservation);
        v16 = sub_1A5FD3D0C();
        sub_1A5B5DF14(v6, type metadata accessor for ClassificationObservation);
        sub_1A5B5DF14(v10, type metadata accessor for ClassificationObservation);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_1A5B678B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnimalBodyPoseObservation(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_1A5B5DE58(v13, v10, type metadata accessor for AnimalBodyPoseObservation);
        sub_1A5B5DE58(v14, v6, type metadata accessor for AnimalBodyPoseObservation);
        sub_1A5B5E6AC(&qword_1EB1EFE30, type metadata accessor for AnimalBodyPoseObservation, &protocol conformance descriptor for AnimalBodyPoseObservation);
        v16 = sub_1A5FD3D0C();
        sub_1A5B5DF14(v6, type metadata accessor for AnimalBodyPoseObservation);
        sub_1A5B5DF14(v10, type metadata accessor for AnimalBodyPoseObservation);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_1A5B67AC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BarcodeObservation(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_1A5B5DE58(v13, v10, type metadata accessor for BarcodeObservation);
        sub_1A5B5DE58(v14, v6, type metadata accessor for BarcodeObservation);
        sub_1A5B5E6AC(&qword_1EB1EFE38, type metadata accessor for BarcodeObservation, &protocol conformance descriptor for BarcodeObservation);
        v16 = sub_1A5FD3D0C();
        sub_1A5B5DF14(v6, type metadata accessor for BarcodeObservation);
        sub_1A5B5DF14(v10, type metadata accessor for BarcodeObservation);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_1A5B67CC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HumanBodyPoseObservation(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_1A5B5DE58(v13, v10, type metadata accessor for HumanBodyPoseObservation);
        sub_1A5B5DE58(v14, v6, type metadata accessor for HumanBodyPoseObservation);
        sub_1A5B5E6AC(&qword_1EB1EFE40, type metadata accessor for HumanBodyPoseObservation, &protocol conformance descriptor for HumanBodyPoseObservation);
        v16 = sub_1A5FD3D0C();
        sub_1A5B5DF14(v6, type metadata accessor for HumanBodyPoseObservation);
        sub_1A5B5DF14(v10, type metadata accessor for HumanBodyPoseObservation);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_1A5B67ED0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HumanBodyPose3DObservation(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_1A5B5DE58(v13, v10, type metadata accessor for HumanBodyPose3DObservation);
        sub_1A5B5DE58(v14, v6, type metadata accessor for HumanBodyPose3DObservation);
        sub_1A5B5E6AC(&qword_1EB1EFE48, type metadata accessor for HumanBodyPose3DObservation, &protocol conformance descriptor for HumanBodyPose3DObservation);
        v16 = sub_1A5FD3D0C();
        sub_1A5B5DF14(v6, type metadata accessor for HumanBodyPose3DObservation);
        sub_1A5B5DF14(v10, type metadata accessor for HumanBodyPose3DObservation);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_1A5B680D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HumanHandPoseObservation(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_1A5B5DE58(v13, v10, type metadata accessor for HumanHandPoseObservation);
        sub_1A5B5DE58(v14, v6, type metadata accessor for HumanHandPoseObservation);
        sub_1A5B5E6AC(&qword_1EB1EFE50, type metadata accessor for HumanHandPoseObservation, &protocol conformance descriptor for HumanHandPoseObservation);
        v16 = sub_1A5FD3D0C();
        sub_1A5B5DF14(v6, type metadata accessor for HumanHandPoseObservation);
        sub_1A5B5DF14(v10, type metadata accessor for HumanHandPoseObservation);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_1A5B682E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RectangleObservation(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_1A5B5DE58(v13, v10, type metadata accessor for RectangleObservation);
        sub_1A5B5DE58(v14, v6, type metadata accessor for RectangleObservation);
        sub_1A5B5E6AC(&qword_1EB1EED68, type metadata accessor for RectangleObservation, &protocol conformance descriptor for RectangleObservation);
        v16 = sub_1A5FD3D0C();
        sub_1A5B5DF14(v6, type metadata accessor for RectangleObservation);
        sub_1A5B5DF14(v10, type metadata accessor for RectangleObservation);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_1A5B684E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextObservation(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_1A5B5DE58(v13, v10, type metadata accessor for TextObservation);
        sub_1A5B5DE58(v14, v6, type metadata accessor for TextObservation);
        sub_1A5B5E6AC(&qword_1EB1EFE58, type metadata accessor for TextObservation, &protocol conformance descriptor for TextObservation);
        v16 = sub_1A5FD3D0C();
        sub_1A5B5DF14(v6, type metadata accessor for TextObservation);
        sub_1A5B5DF14(v10, type metadata accessor for TextObservation);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_1A5B686F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TrajectoryObservation(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_1A5B5DE58(v13, v10, type metadata accessor for TrajectoryObservation);
        sub_1A5B5DE58(v14, v6, type metadata accessor for TrajectoryObservation);
        sub_1A5B5E6AC(&qword_1EB1EECE0, type metadata accessor for TrajectoryObservation, &protocol conformance descriptor for TrajectoryObservation);
        v16 = sub_1A5FD3D0C();
        sub_1A5B5DF14(v6, type metadata accessor for TrajectoryObservation);
        sub_1A5B5DF14(v10, type metadata accessor for TrajectoryObservation);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_1A5B688F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecognizedObjectObservation(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_1A5B5DE58(v13, v10, type metadata accessor for RecognizedObjectObservation);
        sub_1A5B5DE58(v14, v6, type metadata accessor for RecognizedObjectObservation);
        sub_1A5B5E6AC(&qword_1EB1EFE70, type metadata accessor for RecognizedObjectObservation, &protocol conformance descriptor for RecognizedObjectObservation);
        v16 = sub_1A5FD3D0C();
        sub_1A5B5DF14(v6, type metadata accessor for RecognizedObjectObservation);
        sub_1A5B5DF14(v10, type metadata accessor for RecognizedObjectObservation);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_1A5B68B00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DocumentObservation(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_1A5B5DE58(v13, v10, type metadata accessor for DocumentObservation);
        sub_1A5B5DE58(v14, v6, type metadata accessor for DocumentObservation);
        sub_1A5B5E6AC(&qword_1EB1EFE60, type metadata accessor for DocumentObservation, &protocol conformance descriptor for DocumentObservation);
        v16 = sub_1A5FD3D0C();
        sub_1A5B5DF14(v6, type metadata accessor for DocumentObservation);
        sub_1A5B5DF14(v10, type metadata accessor for DocumentObservation);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_1A5B68D08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecognizedTextObservation(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_1A5B5DE58(v13, v10, type metadata accessor for RecognizedTextObservation);
        sub_1A5B5DE58(v14, v6, type metadata accessor for RecognizedTextObservation);
        sub_1A5B5E6AC(&qword_1EB1EFE68, type metadata accessor for RecognizedTextObservation, &protocol conformance descriptor for RecognizedTextObservation);
        v16 = sub_1A5FD3D0C();
        sub_1A5B5DF14(v6, type metadata accessor for RecognizedTextObservation);
        sub_1A5B5DF14(v10, type metadata accessor for RecognizedTextObservation);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_1A5B68F10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PixelBufferObservation(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_1A5B5DE58(v13, v10, type metadata accessor for PixelBufferObservation);
        sub_1A5B5DE58(v14, v6, type metadata accessor for PixelBufferObservation);
        sub_1A5B5E6AC(&qword_1EB1EFDE0, type metadata accessor for PixelBufferObservation, &protocol conformance descriptor for PixelBufferObservation);
        v16 = sub_1A5FD3D0C();
        sub_1A5B5DF14(v6, type metadata accessor for PixelBufferObservation);
        sub_1A5B5DF14(v10, type metadata accessor for PixelBufferObservation);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_1A5B69118(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageAestheticsObservation(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_1A5B5DE58(v13, v10, type metadata accessor for ImageAestheticsObservation);
        sub_1A5B5DE58(v14, v6, type metadata accessor for ImageAestheticsObservation);
        sub_1A5B5E6AC(&qword_1EB1EF2A0, type metadata accessor for ImageAestheticsObservation, &protocol conformance descriptor for ImageAestheticsObservation);
        v16 = sub_1A5FD3D0C();
        sub_1A5B5DF14(v6, type metadata accessor for ImageAestheticsObservation);
        sub_1A5B5DF14(v10, type metadata accessor for ImageAestheticsObservation);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

void *sub_1A5B69328(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A5B69724(a1, a2, a3, *v3, &qword_1EB1EFED8, &qword_1A5FFA048, type metadata accessor for ImageAestheticsObservation);
  *v3 = result;
  return result;
}

void *sub_1A5B6936C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A5B69724(a1, a2, a3, *v3, &qword_1EB1EFEE0, &qword_1A5FFA050, type metadata accessor for RecognizedObjectObservation);
  *v3 = result;
  return result;
}

void *sub_1A5B693B0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A5B69724(a1, a2, a3, *v3, &qword_1EB1EFED0, &unk_1A5FFCFC0, type metadata accessor for RecognizedTextObservation);
  *v3 = result;
  return result;
}

void *sub_1A5B693F4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A5B69724(a1, a2, a3, *v3, &qword_1EB1EFEC8, &qword_1A5FFA038, type metadata accessor for DocumentObservation);
  *v3 = result;
  return result;
}

void *sub_1A5B69438(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A5B69724(a1, a2, a3, *v3, &qword_1EB1EFEC0, &qword_1A5FFA030, type metadata accessor for TrajectoryObservation);
  *v3 = result;
  return result;
}

void *sub_1A5B6947C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A5B69724(a1, a2, a3, *v3, &qword_1EB1EFEB8, &qword_1A5FFA028, type metadata accessor for TextObservation);
  *v3 = result;
  return result;
}

void *sub_1A5B694C0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A5B69724(a1, a2, a3, *v3, &qword_1EB1EFEB0, &qword_1A6009450, type metadata accessor for RectangleObservation);
  *v3 = result;
  return result;
}

void *sub_1A5B69504(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A5B69724(a1, a2, a3, *v3, &qword_1EB1EFEA8, &qword_1A5FFA020, type metadata accessor for DetectedObjectObservation);
  *v3 = result;
  return result;
}

void *sub_1A5B69548(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A5B69724(a1, a2, a3, *v3, &qword_1EB1EFEA0, &qword_1A5FFA018, type metadata accessor for HumanHandPoseObservation);
  *v3 = result;
  return result;
}

void *sub_1A5B6958C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A5B69724(a1, a2, a3, *v3, &qword_1EB1EFE98, &qword_1A5FFA010, type metadata accessor for HumanBodyPose3DObservation);
  *v3 = result;
  return result;
}

void *sub_1A5B695D0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A5B69724(a1, a2, a3, *v3, &qword_1EB1EFE90, &qword_1A5FFA008, type metadata accessor for HumanBodyPoseObservation);
  *v3 = result;
  return result;
}

void *sub_1A5B69614(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A5B69724(a1, a2, a3, *v3, &qword_1EB1EFE88, &qword_1A5FFA000, type metadata accessor for BarcodeObservation);
  *v3 = result;
  return result;
}

void *sub_1A5B69658(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A5B69724(a1, a2, a3, *v3, &qword_1EB1EFE80, &qword_1A5FF9FF8, type metadata accessor for AnimalBodyPoseObservation);
  *v3 = result;
  return result;
}

void *sub_1A5B6969C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A5B69724(a1, a2, a3, *v3, &qword_1EB1EFEE8, &unk_1A60083F0, type metadata accessor for ClassificationObservation);
  *v3 = result;
  return result;
}

void *sub_1A5B696E0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A5B69724(a1, a2, a3, *v3, &qword_1EB1F2E00, &qword_1A5FFA040, type metadata accessor for HumanObservation);
  *v3 = result;
  return result;
}

void *sub_1A5B69724(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t _s6Vision0A6ResultO2eeoiySbAC_ACtFZ_0(uint64_t a1, void *a2)
{
  v1200 = a2;
  *&v1199 = a1;
  v2 = type metadata accessor for S1vLyVSh30UQ26TGBoV8MHvObservation(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v1121 = &v1032 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v1120 = &v1032 - v5;
  v1072 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EFDA0, &qword_1A5FF9FB8);
  MEMORY[0x1EEE9AC00](v1072);
  v1073 = &v1032 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF6F8, qword_1A60211B0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v1047 = &v1032 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v1132 = &v1032 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v1122 = &v1032 - v12;
  v13 = type metadata accessor for ImageFingerprintsObservation(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v1119 = &v1032 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v1118 = &v1032 - v16;
  v17 = type metadata accessor for DetectionPrintObservation(0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v1117 = &v1032 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v1116 = &v1032 - v20;
  v21 = type metadata accessor for ImageExposureObservation(0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v1114 = &v1032 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v1113 = &v1032 - v24;
  v25 = type metadata accessor for ImageBlurObservation(0);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v1112 = &v1032 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v1111 = &v1032 - v28;
  v29 = type metadata accessor for ImageTranslationAlignmentObservation(0);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v1110 = &v1032 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v1109 = &v1032 - v32;
  v1070 = type metadata accessor for RectangleObservation(0);
  v1068 = *(v1070 - 8);
  MEMORY[0x1EEE9AC00](v1070);
  v1038 = &v1032 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1064 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EFDA8, &qword_1A601F6E0);
  MEMORY[0x1EEE9AC00](v1064);
  v1071 = &v1032 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF7C8, &qword_1A600FCB0);
  MEMORY[0x1EEE9AC00](v35 - 8);
  v1046 = &v1032 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v1131 = &v1032 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v1115 = &v1032 - v40;
  v1067 = type metadata accessor for OpticalFlowObservation(0);
  v1065 = *(v1067 - 8);
  MEMORY[0x1EEE9AC00](v1067);
  v1037 = &v1032 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1061 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EFDB0, &qword_1A5FF9FC0);
  MEMORY[0x1EEE9AC00](v1061);
  v1069 = &v1032 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF7D8, &qword_1A5FFE4E0);
  MEMORY[0x1EEE9AC00](v43 - 8);
  v1045 = &v1032 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v1130 = &v1032 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v1108 = &v1032 - v48;
  v49 = type metadata accessor for DetectedObjectObservation(0);
  v1062 = *(v49 - 8);
  v1063 = v49;
  MEMORY[0x1EEE9AC00](v49);
  v1036 = &v1032 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1059 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EFDB8, &qword_1A5FF9FC8);
  MEMORY[0x1EEE9AC00](v1059);
  v1066 = &v1032 - v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF7E8, &qword_1A5FF9CF0);
  MEMORY[0x1EEE9AC00](v52 - 8);
  v1044 = &v1032 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v54);
  v1129 = &v1032 - v55;
  MEMORY[0x1EEE9AC00](v56);
  v1107 = &v1032 - v57;
  v58 = type metadata accessor for ImageHomographicAlignmentObservation(0);
  MEMORY[0x1EEE9AC00](v58 - 8);
  v1104 = &v1032 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v60);
  v1103 = &v1032 - v61;
  v1060 = type metadata accessor for PixelBufferObservation(0);
  v1058 = *(v1060 - 8);
  MEMORY[0x1EEE9AC00](v1060);
  v1035 = &v1032 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v63);
  v1102 = &v1032 - v64;
  MEMORY[0x1EEE9AC00](v65);
  v1101 = &v1032 - v66;
  MEMORY[0x1EEE9AC00](v67);
  v1100 = &v1032 - v68;
  MEMORY[0x1EEE9AC00](v69);
  v1099 = &v1032 - v70;
  MEMORY[0x1EEE9AC00](v71);
  v1098 = &v1032 - v72;
  MEMORY[0x1EEE9AC00](v73);
  v1097 = &v1032 - v74;
  MEMORY[0x1EEE9AC00](v75);
  v1096 = &v1032 - v76;
  MEMORY[0x1EEE9AC00](v77);
  v1095 = &v1032 - v78;
  MEMORY[0x1EEE9AC00](v79);
  v1093 = &v1032 - v80;
  MEMORY[0x1EEE9AC00](v81);
  v1092 = &v1032 - v82;
  v1106 = type metadata accessor for InstanceMaskObservation(0);
  v1105 = *(v1106 - 8);
  MEMORY[0x1EEE9AC00](v1106);
  v1043 = &v1032 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1094 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EFDC0, &qword_1A5FF9FD0);
  MEMORY[0x1EEE9AC00](v1094);
  v1057 = &v1032 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v85);
  v1056 = &v1032 - v86;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF810, &qword_1A5FF9CF8);
  MEMORY[0x1EEE9AC00](v87 - 8);
  v1042 = &v1032 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v89);
  v1127 = &v1032 - v90;
  MEMORY[0x1EEE9AC00](v91);
  v1128 = &v1032 - v92;
  MEMORY[0x1EEE9AC00](v93);
  v1041 = &v1032 - v94;
  MEMORY[0x1EEE9AC00](v95);
  v1125 = &v1032 - v96;
  MEMORY[0x1EEE9AC00](v97);
  v1126 = &v1032 - v98;
  v99 = type metadata accessor for FeaturePrintObservation(0);
  MEMORY[0x1EEE9AC00](v99 - 8);
  v1091 = &v1032 - ((v100 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v101);
  v1090 = &v1032 - v102;
  MEMORY[0x1EEE9AC00](v103);
  v1089 = &v1032 - v104;
  MEMORY[0x1EEE9AC00](v105);
  v1088 = &v1032 - v106;
  v107 = type metadata accessor for SaliencyImageObservation(0);
  MEMORY[0x1EEE9AC00](v107 - 8);
  v1087 = &v1032 - ((v108 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v109);
  v1086 = &v1032 - v110;
  MEMORY[0x1EEE9AC00](v111);
  v1085 = &v1032 - v112;
  MEMORY[0x1EEE9AC00](v113);
  v1084 = &v1032 - v114;
  v115 = type metadata accessor for SmudgeObservation(0);
  MEMORY[0x1EEE9AC00](v115 - 8);
  v1082 = &v1032 - ((v116 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v117);
  v1081 = &v1032 - v118;
  v119 = type metadata accessor for DetectHumanHandPoseRequest(0);
  MEMORY[0x1EEE9AC00](v119 - 8);
  v1080 = &v1032 - ((v120 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v121);
  v1079 = &v1032 - v122;
  v123 = type metadata accessor for HorizonObservation(0);
  v1053 = *(v123 - 8);
  v1054 = v123;
  MEMORY[0x1EEE9AC00](v123);
  v1034 = &v1032 - ((v124 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1049 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EFDC8, &qword_1A5FF9FD8);
  MEMORY[0x1EEE9AC00](v1049);
  v1055 = &v1032 - v125;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF870, &qword_1A5FF9D00);
  MEMORY[0x1EEE9AC00](v126 - 8);
  v1040 = &v1032 - ((v127 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v128);
  v1124 = &v1032 - v129;
  MEMORY[0x1EEE9AC00](v130);
  v1083 = &v1032 - v131;
  v132 = type metadata accessor for DetectedDocumentObservation(0);
  v1050 = *(v132 - 8);
  v1051 = v132;
  MEMORY[0x1EEE9AC00](v132);
  v1033 = &v1032 - ((v133 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1048 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EFDD0, &qword_1A5FF9FE0);
  MEMORY[0x1EEE9AC00](v1048);
  v1052 = &v1032 - v134;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF888, &qword_1A5FF9D08);
  MEMORY[0x1EEE9AC00](v135 - 8);
  v1039 = &v1032 - ((v136 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v137);
  v1123 = &v1032 - v138;
  MEMORY[0x1EEE9AC00](v139);
  v1078 = &v1032 - v140;
  v141 = type metadata accessor for ContoursObservation(0);
  MEMORY[0x1EEE9AC00](v141 - 8);
  v1077 = &v1032 - ((v142 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v143);
  v1076 = &v1032 - v144;
  v145 = type metadata accessor for ImageAestheticsScoresObservation(0);
  MEMORY[0x1EEE9AC00](v145 - 8);
  v1075 = &v1032 - ((v146 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v147);
  v1074 = &v1032 - v148;
  *&v1198 = type metadata accessor for VisionResult(0);
  MEMORY[0x1EEE9AC00](v1198);
  *&v1196 = &v1032 - ((v149 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v150);
  *&v1195 = &v1032 - v151;
  MEMORY[0x1EEE9AC00](v152);
  *&v1194 = &v1032 - v153;
  MEMORY[0x1EEE9AC00](v154);
  *&v1192 = &v1032 - v155;
  MEMORY[0x1EEE9AC00](v156);
  *&v1193 = &v1032 - v157;
  MEMORY[0x1EEE9AC00](v158);
  v1190 = &v1032 - v159;
  MEMORY[0x1EEE9AC00](v160);
  v1189 = &v1032 - v161;
  MEMORY[0x1EEE9AC00](v162);
  *&v1197 = &v1032 - v163;
  MEMORY[0x1EEE9AC00](v164);
  v1187 = &v1032 - v165;
  MEMORY[0x1EEE9AC00](v166);
  v1191 = &v1032 - v167;
  MEMORY[0x1EEE9AC00](v168);
  v1185 = &v1032 - v169;
  MEMORY[0x1EEE9AC00](v170);
  v1188 = (&v1032 - v171);
  MEMORY[0x1EEE9AC00](v172);
  v1186 = &v1032 - v173;
  MEMORY[0x1EEE9AC00](v174);
  v1184 = &v1032 - v175;
  MEMORY[0x1EEE9AC00](v176);
  v1183 = (&v1032 - v177);
  MEMORY[0x1EEE9AC00](v178);
  v1182 = (&v1032 - v179);
  MEMORY[0x1EEE9AC00](v180);
  v1178 = &v1032 - v181;
  MEMORY[0x1EEE9AC00](v182);
  v1181 = &v1032 - v183;
  MEMORY[0x1EEE9AC00](v184);
  v1180 = (&v1032 - v185);
  MEMORY[0x1EEE9AC00](v186);
  v1177 = &v1032 - v187;
  MEMORY[0x1EEE9AC00](v188);
  v1179 = &v1032 - v189;
  MEMORY[0x1EEE9AC00](v190);
  v1176 = &v1032 - v191;
  MEMORY[0x1EEE9AC00](v192);
  v1175 = &v1032 - v193;
  MEMORY[0x1EEE9AC00](v194);
  v1174 = &v1032 - v195;
  MEMORY[0x1EEE9AC00](v196);
  v1173 = &v1032 - v197;
  MEMORY[0x1EEE9AC00](v198);
  v1171 = &v1032 - v199;
  MEMORY[0x1EEE9AC00](v200);
  v1170 = &v1032 - v201;
  MEMORY[0x1EEE9AC00](v202);
  v1167 = &v1032 - v203;
  MEMORY[0x1EEE9AC00](v204);
  v1169 = &v1032 - v205;
  MEMORY[0x1EEE9AC00](v206);
  v1168 = &v1032 - v207;
  MEMORY[0x1EEE9AC00](v208);
  v1166 = &v1032 - v209;
  MEMORY[0x1EEE9AC00](v210);
  v1162 = (&v1032 - v211);
  MEMORY[0x1EEE9AC00](v212);
  v1165 = (&v1032 - v213);
  MEMORY[0x1EEE9AC00](v214);
  v1163 = &v1032 - v215;
  MEMORY[0x1EEE9AC00](v216);
  v1160 = (&v1032 - v217);
  MEMORY[0x1EEE9AC00](v218);
  v1157 = (&v1032 - v219);
  MEMORY[0x1EEE9AC00](v220);
  v1155 = (&v1032 - v221);
  MEMORY[0x1EEE9AC00](v222);
  v1172 = &v1032 - v223;
  MEMORY[0x1EEE9AC00](v224);
  v1158 = (&v1032 - v225);
  MEMORY[0x1EEE9AC00](v226);
  v1159 = &v1032 - v227;
  MEMORY[0x1EEE9AC00](v228);
  v1156 = &v1032 - v229;
  MEMORY[0x1EEE9AC00](v230);
  v1154 = &v1032 - v231;
  MEMORY[0x1EEE9AC00](v232);
  v1153 = &v1032 - v233;
  MEMORY[0x1EEE9AC00](v234);
  v1152 = &v1032 - v235;
  MEMORY[0x1EEE9AC00](v236);
  v1161 = &v1032 - v237;
  MEMORY[0x1EEE9AC00](v238);
  v1164 = &v1032 - v239;
  MEMORY[0x1EEE9AC00](v240);
  v1148 = &v1032 - v241;
  MEMORY[0x1EEE9AC00](v242);
  v1150 = &v1032 - v243;
  MEMORY[0x1EEE9AC00](v244);
  v1149 = &v1032 - v245;
  MEMORY[0x1EEE9AC00](v246);
  v1147 = &v1032 - v247;
  MEMORY[0x1EEE9AC00](v248);
  v1145 = &v1032 - v249;
  MEMORY[0x1EEE9AC00](v250);
  v1144 = &v1032 - v251;
  MEMORY[0x1EEE9AC00](v252);
  v1143 = &v1032 - v253;
  MEMORY[0x1EEE9AC00](v254);
  v1140 = &v1032 - v255;
  MEMORY[0x1EEE9AC00](v256);
  v1151 = &v1032 - v257;
  MEMORY[0x1EEE9AC00](v258);
  v1146 = &v1032 - v259;
  MEMORY[0x1EEE9AC00](v260);
  v1142 = &v1032 - v261;
  MEMORY[0x1EEE9AC00](v262);
  v1141 = &v1032 - v263;
  MEMORY[0x1EEE9AC00](v264);
  v1134 = &v1032 - v265;
  MEMORY[0x1EEE9AC00](v266);
  v1137 = &v1032 - v267;
  MEMORY[0x1EEE9AC00](v268);
  v1139 = &v1032 - v269;
  MEMORY[0x1EEE9AC00](v270);
  v1133 = &v1032 - v271;
  MEMORY[0x1EEE9AC00](v272);
  v274 = &v1032 - v273;
  MEMORY[0x1EEE9AC00](v275);
  v277 = &v1032 - v276;
  MEMORY[0x1EEE9AC00](v278);
  v1138 = &v1032 - v279;
  MEMORY[0x1EEE9AC00](v280);
  v1135 = &v1032 - v281;
  MEMORY[0x1EEE9AC00](v282);
  v284 = &v1032 - v283;
  MEMORY[0x1EEE9AC00](v285);
  v1136 = &v1032 - v286;
  MEMORY[0x1EEE9AC00](v287);
  v289 = &v1032 - v288;
  MEMORY[0x1EEE9AC00](v290);
  v292 = &v1032 - v291;
  MEMORY[0x1EEE9AC00](v293);
  v295 = &v1032 - v294;
  v296 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EFDD8, &qword_1A5FF9FE8);
  MEMORY[0x1EEE9AC00](v296 - 8);
  v298 = &v1032 - v297;
  v300 = &v1032 + *(v299 + 56) - v297;
  sub_1A5B5DE58(v1199, &v1032 - v297, type metadata accessor for VisionResult);
  v301 = v1200;
  v1200 = v300;
  sub_1A5B5DE58(v301, v300, type metadata accessor for VisionResult);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      sub_1A5B5DE58(v298, v292, type metadata accessor for VisionResult);
      v302 = *(v292 + 1);
      *v1222 = *v292;
      *&v1222[16] = v302;
      *&v1222[32] = *(v292 + 2);
      v303 = *(v292 + 7);
      *&v1223 = *(v292 + 6);
      v304 = v1200;
      if (swift_getEnumCaseMultiPayload())
      {

        sub_1A5B673FC(v1222);
        goto LABEL_298;
      }

      v365 = v298;
      v985 = *(v304 + 1);
      v1217[0] = *v304;
      v1217[1] = v985;
      v987 = *v304;
      v986 = *(v304 + 1);
      v1217[2] = *(v304 + 2);
      v988 = *(v292 + 1);
      v1210 = *v292;
      v1211 = v988;
      v1212 = *(v292 + 2);
      *&v1218 = v304[6];
      *&v1213 = *(v292 + 6);
      v1203 = v987;
      v1204 = v986;
      v1205 = *(v304 + 2);
      v989 = v304[7];
      *&v1206 = v304[6];
      v990 = static DetectFaceRectanglesRequest.== infix(_:_:)(&v1210, &v1203);
      sub_1A5B673FC(v1217);
      sub_1A5B673FC(v1222);
      if (v990)
      {
        v348 = sub_1A5B0E074(v303, v989);
      }

      else
      {
        v348 = 0;
      }

      goto LABEL_241;
    case 1u:
      v317 = v298;
      sub_1A5B5DE58(v298, v295, type metadata accessor for VisionResult);
      v628 = *(v295 + 6);
      v627 = *(v295 + 7);
      v629 = v1200;
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_223;
      }

      v630 = v295[40];
      v631 = *v629;
      v632 = *(v629 + 40);
      v634 = v629[6];
      v633 = v629[7];
      v1222[0] = *v295;
      *&v1222[8] = *(v295 + 8);
      *&v1222[24] = *(v295 + 24);
      v1222[40] = v630;
      *&v1223 = v628;
      LOBYTE(v1217[0]) = v631;
      *(v1217 + 8) = *(v629 + 1);
      *(&v1217[1] + 8) = *(v629 + 3);
      BYTE8(v1217[2]) = v632;
      *&v1218 = v634;
      v635 = static DetectHumanRectanglesRequest.== infix(_:_:)(v1222, v1217);

      if ((v635 & 1) == 0)
      {
        goto LABEL_225;
      }

      v446 = sub_1A5B674A8(v627, v633);
      goto LABEL_222;
    case 2u:
      v555 = v1158;
      sub_1A5B5DE58(v298, v1158, type metadata accessor for VisionResult);
      v556 = *(v555 + 5);
      v557 = v1200;
      if (swift_getEnumCaseMultiPayload() != 2)
      {

        __swift_destroy_boxed_opaque_existential_1(v555);
        goto LABEL_298;
      }

      v317 = v298;
      v558 = *(v557 + 5);
      sub_1A5B063D4(v555, v1222);
      sub_1A5B063D4(v557, v1217);
      sub_1A5B180A0(v1222, &v1210);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EEA80, &unk_1A5FFD120);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EEB58, &qword_1A5FF9240);
      swift_dynamicCast();
      v559 = *(&v1204 + 1);
      v560 = v1205;
      __swift_project_boxed_opaque_existential_1(&v1203, *(&v1204 + 1));
      if ((*(v560 + 88))(v1217, v559, v560))
      {
        swift_getErrorValue();
        v561 = sub_1A5FD4B9C();
        v563 = v562;
        swift_getErrorValue();
        if (v561 == sub_1A5FD4B9C() && v563 == v564)
        {
          v348 = 1;
        }

        else
        {
          v348 = sub_1A5FD4B0C();
        }
      }

      else
      {
        v348 = 0;
      }

      __swift_destroy_boxed_opaque_existential_1(v1217);
      __swift_destroy_boxed_opaque_existential_1(v1222);
      __swift_destroy_boxed_opaque_existential_1(&v1203);
      goto LABEL_267;
    case 3u:
      sub_1A5B5DE58(v298, v289, type metadata accessor for VisionResult);
      v694 = *(v289 + 5);
      v695 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF6C8, &qword_1A5FF9CE8) + 48);
      v696 = v1200;
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        v978 = type metadata accessor for ImageAestheticsScoresObservation;
        v979 = &v289[v695];
        goto LABEL_296;
      }

      *&v1199 = v298;
      v697 = *v289;
      v698 = *v696;
      v699 = v696[5];
      v1197 = *(v289 + 8);
      v1195 = *(v289 + 24);
      v1198 = *(v696 + 1);
      v1196 = *(v696 + 3);
      v700 = v1074;
      sub_1A5B5C4C0(&v289[v695], v1074, type metadata accessor for ImageAestheticsScoresObservation);
      v701 = v696 + v695;
      v702 = v1075;
      sub_1A5B5C4C0(v701, v1075, type metadata accessor for ImageAestheticsScoresObservation);
      v1222[0] = v697;
      *&v1222[24] = v1195;
      *&v1222[8] = v1197;
      *&v1222[40] = v694;
      LOBYTE(v1217[0]) = v698;
      *(&v1217[1] + 8) = v1196;
      *(v1217 + 8) = v1198;
      *(&v1217[2] + 1) = v699;
      v703 = static CalculateImageAestheticsScoresRequest.== infix(_:_:)();

      if (v703)
      {
        v348 = static ImageAestheticsScoresObservation.== infix(_:_:)(v700, v702, v704);
      }

      else
      {
        v348 = 0;
      }

      v994 = v1199;
      sub_1A5B5DF14(v702, type metadata accessor for ImageAestheticsScoresObservation);
      sub_1A5B5DF14(v700, type metadata accessor for ImageAestheticsScoresObservation);
      v939 = v994;
      goto LABEL_355;
    case 4u:
      v712 = v1136;
      sub_1A5B5DE58(v298, v1136, type metadata accessor for VisionResult);
      v713 = *(v712 + 48);
      *&v1222[32] = *(v712 + 32);
      v1223 = v713;
      v1224 = *(v712 + 64);
      v714 = *(v712 + 16);
      *v1222 = *v712;
      *&v1222[16] = v714;
      v715 = *(v712 + 80);
      v716 = v1200;
      if (swift_getEnumCaseMultiPayload() != 4)
      {

        sub_1A5B67354(v1222);
        goto LABEL_298;
      }

      v365 = v298;
      v717 = *(v716 + 1);
      v718 = *(v716 + 3);
      v1217[2] = *(v716 + 2);
      v1218 = v718;
      v719 = *(v716 + 3);
      v1219 = *(v716 + 4);
      v720 = *v716;
      v721 = *v716;
      v1217[1] = *(v716 + 1);
      v1217[0] = v720;
      v722 = *(v712 + 48);
      v1212 = *(v712 + 32);
      v1213 = v722;
      v1214 = *(v712 + 64);
      v723 = *v712;
      v1211 = *(v712 + 16);
      v1210 = v723;
      v1205 = v1217[2];
      v1206 = v719;
      v1207 = *(v716 + 4);
      v724 = v716[10];
      v1204 = v717;
      v1203 = v721;
      v725 = static ClassifyImageRequest.== infix(_:_:)(&v1210, &v1203);
      sub_1A5B67354(v1217);
      sub_1A5B67354(v1222);
      if ((v725 & 1) == 0)
      {
        goto LABEL_240;
      }

      v375 = sub_1A5B676B0(v715, v724);
      goto LABEL_239;
    case 5u:
      v575 = v1172;
      sub_1A5B5DE58(v298, v1172, type metadata accessor for VisionResult);
      v576 = *(v575 + 104);
      v1226 = *(v575 + 96);
      v577 = *(v575 + 80);
      v1224 = *(v575 + 64);
      v1225 = v577;
      v578 = *(v575 + 16);
      *v1222 = *v575;
      *&v1222[16] = v578;
      v579 = *(v575 + 48);
      *&v1222[32] = *(v575 + 32);
      v1223 = v579;
      v580 = v1200;
      if (swift_getEnumCaseMultiPayload() != 5)
      {

        sub_1A5B672AC(v1222);
        goto LABEL_298;
      }

      v317 = v298;
      v581 = *(v580 + 3);
      v582 = *(v580 + 5);
      v1219 = *(v580 + 4);
      v1220 = v582;
      v583 = *(v580 + 1);
      v1217[0] = *v580;
      v1217[1] = v583;
      v584 = *(v580 + 2);
      v586 = *v580;
      v585 = *(v580 + 1);
      v587 = v584;
      v1218 = *(v580 + 3);
      v1217[2] = v584;
      v588 = *(v575 + 80);
      v1214 = *(v575 + 64);
      v1215 = v588;
      v589 = *(v575 + 16);
      v1210 = *v575;
      v1211 = v589;
      v590 = *(v575 + 32);
      v1213 = *(v575 + 48);
      v1212 = v590;
      v591 = *(v580 + 5);
      v1207 = v1219;
      v1208 = v591;
      v1203 = v586;
      v1204 = v585;
      v592 = v580[13];
      v1221 = v580[12];
      v1216 = *(v575 + 96);
      v1209 = v580[12];
      v1206 = v581;
      v1205 = v587;
      sub_1A5B724BC();
      if (sub_1A5FD3D0C())
      {
        *&v1210 = v576;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF928, &qword_1A5FF9D68);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF8B8, &qword_1A6008110);
        if (swift_dynamicCast())
        {
          v593 = v1203;
          v1202 = v592;

          if (swift_dynamicCast())
          {
            v594 = sub_1A5B676B0(v593, v1201);
LABEL_404:
            v348 = v594;
            sub_1A5B672AC(v1217);
            sub_1A5B672AC(v1222);

            goto LABEL_267;
          }
        }

        *&v1210 = v576;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF8C0, &qword_1A5FF9D10);
        if (swift_dynamicCast())
        {
          v1025 = v1203;
          v1202 = v592;

          if (swift_dynamicCast())
          {
            v594 = sub_1A5B688F8(v1025, v1201);
            goto LABEL_404;
          }
        }

        *&v1210 = v576;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EFE08, &qword_1A5FF9FF0);
        if (swift_dynamicCast())
        {
          v1031 = v1203;
          v1202 = v592;

          if (swift_dynamicCast())
          {
            v594 = sub_1A5B68F10(v1031, v1201);
            goto LABEL_404;
          }

          sub_1A5B672AC(v1217);
          sub_1A5B672AC(v1222);
        }

        else
        {
          sub_1A5B672AC(v1217);
          sub_1A5B672AC(v1222);
        }
      }

      else
      {

        sub_1A5B672AC(v1217);
        sub_1A5B672AC(v1222);
      }

      sub_1A5B5DF14(v317, type metadata accessor for VisionResult);
      goto LABEL_299;
    case 6u:
      v636 = v298;
      sub_1A5B5DE58(v298, v284, type metadata accessor for VisionResult);
      v638 = *(v284 + 4);
      v637 = *(v284 + 5);
      v639 = v1200;
      if (swift_getEnumCaseMultiPayload() != 6)
      {

        v298 = v636;
        goto LABEL_298;
      }

      v641 = v639[4];
      v640 = v639[5];
      v642 = *(v284 + 1);
      *v1222 = *v284;
      *&v1222[16] = v642;
      *&v1222[32] = v638;
      v643 = *(v639 + 1);
      v1217[0] = *v639;
      v1217[1] = v643;
      *&v1217[2] = v641;
      static DetectAnimalBodyPoseRequest.== infix(_:_:)(v1222, v1217);
      v645 = v644;

      if (v645)
      {
        v348 = sub_1A5B678B8(v637, v640);
      }

      else
      {
        v348 = 0;
      }

      v298 = v636;
      goto LABEL_227;
    case 7u:
      v646 = v1135;
      sub_1A5B5DE58(v298, v1135, type metadata accessor for VisionResult);
      v647 = *(v646 + 16);
      *v1222 = *v646;
      *&v1222[16] = v647;
      v648 = *(v646 + 48);
      *&v1222[32] = *(v646 + 32);
      v1223 = v648;
      v649 = *(v646 + 64);
      v650 = v1200;
      if (swift_getEnumCaseMultiPayload() != 7)
      {

        sub_1A5B671B0(v1222);
        goto LABEL_298;
      }

      v478 = v298;
      v651 = *(v650 + 1);
      v1217[0] = *v650;
      v1217[1] = v651;
      v652 = *(v650 + 3);
      v654 = *v650;
      v653 = *(v650 + 1);
      v1217[2] = *(v650 + 2);
      v1218 = v652;
      v655 = *(v646 + 16);
      v1210 = *v646;
      v1211 = v655;
      v656 = *(v646 + 48);
      v1212 = *(v646 + 32);
      v1213 = v656;
      v657 = v650[8];
      v1203 = v654;
      v1204 = v653;
      v658 = *(v650 + 3);
      v1205 = *(v650 + 2);
      v1206 = v658;
      v659 = static DetectBarcodesRequest.== infix(_:_:)(&v1210, &v1203);
      sub_1A5B671B0(v1217);
      sub_1A5B671B0(v1222);
      if (v659)
      {
        v348 = sub_1A5B67AC0(v649, v657);
      }

      else
      {
        v348 = 0;
      }

      goto LABEL_339;
    case 8u:
      v758 = v1138;
      sub_1A5B5DE58(v298, v1138, type metadata accessor for VisionResult);
      v759 = *(v758 + 48);
      *&v1222[32] = *(v758 + 32);
      v1223 = v759;
      *&v1224 = *(v758 + 64);
      v760 = *(v758 + 16);
      *v1222 = *v758;
      *&v1222[16] = v760;
      v761 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF6C0, &qword_1A5FF9CE0) + 48);
      v762 = v1200;
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        sub_1A5B5DF14(v758 + v761, type metadata accessor for ContoursObservation);
        sub_1A5B67108(v1222);
        goto LABEL_298;
      }

      v763 = *(v762 + 3);
      v1217[2] = *(v762 + 2);
      v1218 = v763;
      *&v1219 = v762[8];
      v764 = *v762;
      v1217[1] = *(v762 + 1);
      v1217[0] = v764;
      v765 = v758 + v761;
      v344 = v1076;
      sub_1A5B5C4C0(v765, v1076, type metadata accessor for ContoursObservation);
      v766 = v762 + v761;
      v346 = v1077;
      sub_1A5B5C4C0(v766, v1077, type metadata accessor for ContoursObservation);
      v1212 = *&v1222[32];
      v1213 = v1223;
      *&v1214 = v1224;
      v1211 = *&v1222[16];
      v1210 = *v1222;
      v1205 = v1217[2];
      v1206 = v1218;
      *&v1207 = v1219;
      v1204 = v1217[1];
      v1203 = v1217[0];
      v767 = static DetectContoursRequest.== infix(_:_:)(&v1210, &v1203);
      sub_1A5B67108(v1217);
      sub_1A5B67108(v1222);
      if (v767)
      {
        v348 = static ContoursObservation.== infix(_:_:)(v344, v346);
      }

      else
      {
        v348 = 0;
      }

      v357 = type metadata accessor for ContoursObservation;
      goto LABEL_20;
    case 9u:
      sub_1A5B5DE58(v298, v277, type metadata accessor for VisionResult);
      v734 = *(v277 + 4);
      v735 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF6B8, &qword_1A5FF9CD8) + 48);
      v736 = v1200;
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        sub_1A5B10168(&v277[v735], &qword_1EB1EF888, &qword_1A5FF9D08);
        goto LABEL_297;
      }

      *&v1199 = v298;
      v737 = v736[4];
      v738 = *(v277 + 1);
      v1197 = *v277;
      v1195 = v738;
      v739 = *(v736 + 1);
      v1198 = *v736;
      v1196 = v739;
      v454 = v1078;
      sub_1A5B60994(&v277[v735], v1078, &qword_1EB1EF888, &qword_1A5FF9D08);
      v740 = v736 + v735;
      v542 = v1123;
      sub_1A5B60994(v740, v1123, &qword_1EB1EF888, &qword_1A5FF9D08);
      *v1222 = v1197;
      *&v1222[16] = v1195;
      *&v1222[32] = v734;
      v1217[1] = v1196;
      v1217[0] = v1198;
      *&v1217[2] = v737;
      static DetectDocumentSegmentationRequest.== infix(_:_:)(v1222, v1217);
      v742 = v741;

      if ((v742 & 1) == 0)
      {
        v981 = &qword_1EB1EF888;
        v982 = &qword_1A5FF9D08;
        goto LABEL_328;
      }

      v743 = *(v1048 + 48);
      v546 = v1052;
      sub_1A5B31A34(v454, v1052, &qword_1EB1EF888, &qword_1A5FF9D08);
      sub_1A5B31A34(v542, v546 + v743, &qword_1EB1EF888, &qword_1A5FF9D08);
      v744 = v1051;
      v745 = *(v1050 + 48);
      if (v745(v546, 1, v1051) == 1)
      {
        sub_1A5B10168(v542, &qword_1EB1EF888, &qword_1A5FF9D08);
        sub_1A5B10168(v454, &qword_1EB1EF888, &qword_1A5FF9D08);
        if (v745(v546 + v743, 1, v744) == 1)
        {
          v315 = &qword_1EB1EF888;
          v316 = &qword_1A5FF9D08;
          goto LABEL_149;
        }

        goto LABEL_379;
      }

      v1003 = v1039;
      sub_1A5B31A34(v546, v1039, &qword_1EB1EF888, &qword_1A5FF9D08);
      if (v745(v546 + v743, 1, v744) == 1)
      {
        sub_1A5B10168(v1123, &qword_1EB1EF888, &qword_1A5FF9D08);
        sub_1A5B10168(v454, &qword_1EB1EF888, &qword_1A5FF9D08);
        sub_1A5B5DF14(v1003, type metadata accessor for DetectedDocumentObservation);
LABEL_379:
        v999 = &qword_1EB1EFDD0;
        v1000 = &qword_1A5FF9FE0;
        v991 = v546;
        goto LABEL_348;
      }

      v1028 = v1033;
      sub_1A5B5C4C0(v546 + v743, v1033, type metadata accessor for DetectedDocumentObservation);
      sub_1A5B5E6AC(&qword_1EB1EFE28, type metadata accessor for DetectedDocumentObservation, &protocol conformance descriptor for DetectedDocumentObservation);
      v1018 = v454;
      v348 = sub_1A5FD3D0C();
      v1019 = type metadata accessor for DetectedDocumentObservation;
      sub_1A5B5DF14(v1028, type metadata accessor for DetectedDocumentObservation);
      v1009 = &qword_1EB1EF888;
      v1010 = &qword_1A5FF9D08;
      v1020 = v1123;
      goto LABEL_395;
    case 0xAu:
      sub_1A5B5DE58(v298, v274, type metadata accessor for VisionResult);
      v487 = *v274;
      v488 = *(v274 + 5);
      v330 = *(v274 + 6);
      v489 = v1200;
      if (swift_getEnumCaseMultiPayload() != 10)
      {
        goto LABEL_253;
      }

      v333 = v298;
      v490 = *v489;
      v491 = v489[5];
      v335 = v489[6];
      *&v1222[8] = *(v274 + 8);
      *&v1222[24] = *(v274 + 24);
      *v1222 = v487;
      *&v1222[40] = v488;
      *(v1217 + 8) = *(v489 + 1);
      *(&v1217[1] + 8) = *(v489 + 3);
      *&v1217[0] = v490;
      *(&v1217[2] + 1) = v491;
      v337 = static DetectFaceCaptureQualityRequest.== infix(_:_:)(v1222, v1217);
      goto LABEL_231;
    case 0xBu:
      v595 = v1133;
      sub_1A5B5DE58(v298, v1133, type metadata accessor for VisionResult);
      v596 = *v595;
      v597 = *(v595 + 48);
      v330 = *(v595 + 56);
      v598 = v1200;
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        goto LABEL_253;
      }

      v333 = v298;
      v599 = *(v595 + 40);
      v600 = v595;
      v601 = *v598;
      v602 = *(v598 + 40);
      v603 = v598[6];
      v335 = v598[7];
      *v1222 = v596;
      *&v1222[8] = *(v600 + 8);
      *&v1222[24] = *(v600 + 24);
      v1222[40] = v599;
      *&v1223 = v597;
      *&v1217[0] = v601;
      *(v1217 + 8) = *(v598 + 1);
      *(&v1217[1] + 8) = *(v598 + 3);
      BYTE8(v1217[2]) = v602;
      *&v1218 = v603;
      v604 = static DetectFaceLandmarksRequest.== infix(_:_:)(v1222, v1217);

      if (v604)
      {
        goto LABEL_232;
      }

      goto LABEL_234;
    case 0xCu:
      v447 = v1139;
      sub_1A5B5DE58(v298, v1139, type metadata accessor for VisionResult);
      v536 = *(v447 + 32);
      v449 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF6B0, &qword_1A5FF9CD0) + 48);
      v537 = v1200;
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        v534 = &qword_1EB1EF870;
        v535 = &qword_1A5FF9D00;
        goto LABEL_260;
      }

      *&v1199 = v298;
      v538 = v537[4];
      v539 = *(v447 + 16);
      v1197 = *v447;
      v1195 = v539;
      v540 = *(v537 + 1);
      v1198 = *v537;
      v1196 = v540;
      v454 = v1083;
      sub_1A5B60994(v447 + v449, v1083, &qword_1EB1EF870, &qword_1A5FF9D00);
      v541 = v537 + v449;
      v542 = v1124;
      sub_1A5B60994(v541, v1124, &qword_1EB1EF870, &qword_1A5FF9D00);
      *v1222 = v1197;
      *&v1222[16] = v1195;
      *&v1222[32] = v536;
      v1217[1] = v1196;
      v1217[0] = v1198;
      *&v1217[2] = v538;
      static DetectHorizonRequest.== infix(_:_:)(v1222, v1217);
      v544 = v543;

      if (v544)
      {
        v545 = *(v1049 + 48);
        v546 = v1055;
        sub_1A5B31A34(v454, v1055, &qword_1EB1EF870, &qword_1A5FF9D00);
        sub_1A5B31A34(v542, v546 + v545, &qword_1EB1EF870, &qword_1A5FF9D00);
        v547 = v1054;
        v548 = *(v1053 + 48);
        if (v548(v546, 1, v1054) == 1)
        {
          sub_1A5B10168(v542, &qword_1EB1EF870, &qword_1A5FF9D00);
          sub_1A5B10168(v454, &qword_1EB1EF870, &qword_1A5FF9D00);
          if (v548(v546 + v545, 1, v547) == 1)
          {
            v315 = &qword_1EB1EF870;
            v316 = &qword_1A5FF9D00;
LABEL_149:
            v533 = v546;
LABEL_209:
            sub_1A5B10168(v533, v315, v316);
            v348 = 1;
            goto LABEL_349;
          }

LABEL_367:
          v999 = &qword_1EB1EFDC8;
          v1000 = &qword_1A5FF9FD8;
          v991 = v546;
          goto LABEL_348;
        }

        v1003 = v1040;
        sub_1A5B31A34(v546, v1040, &qword_1EB1EF870, &qword_1A5FF9D00);
        if (v548(v546 + v545, 1, v547) == 1)
        {
          sub_1A5B10168(v1124, &qword_1EB1EF870, &qword_1A5FF9D00);
          sub_1A5B10168(v454, &qword_1EB1EF870, &qword_1A5FF9D00);
          sub_1A5B5DF14(v1003, type metadata accessor for HorizonObservation);
          goto LABEL_367;
        }

        v1017 = v1034;
        sub_1A5B5C4C0(v546 + v545, v1034, type metadata accessor for HorizonObservation);
        sub_1A5B5E6AC(&qword_1EB1EFE20, type metadata accessor for HorizonObservation, &protocol conformance descriptor for HorizonObservation);
        v1018 = v454;
        v348 = sub_1A5FD3D0C();
        v1019 = type metadata accessor for HorizonObservation;
        sub_1A5B5DF14(v1017, type metadata accessor for HorizonObservation);
        v1009 = &qword_1EB1EF870;
        v1010 = &qword_1A5FF9D00;
        v1020 = v1124;
LABEL_395:
        sub_1A5B10168(v1020, v1009, v1010);
        sub_1A5B10168(v1018, v1009, v1010);
        sub_1A5B5DF14(v1003, v1019);
        v1016 = v546;
        goto LABEL_399;
      }

      v981 = &qword_1EB1EF870;
      v982 = &qword_1A5FF9D00;
LABEL_328:
      v983 = v542;
      goto LABEL_346;
    case 0xDu:
      v317 = v298;
      v435 = v1137;
      sub_1A5B5DE58(v298, v1137, type metadata accessor for VisionResult);
      v437 = *(v435 + 40);
      v436 = *(v435 + 48);
      v438 = v1200;
      if (swift_getEnumCaseMultiPayload() != 13)
      {
        goto LABEL_223;
      }

      v439 = *(v435 + 32);
      v440 = *(v438 + 32);
      v442 = v438[5];
      v441 = v438[6];
      v443 = *(v435 + 16);
      *v1222 = *v435;
      *&v1222[16] = v443;
      v1222[32] = v439;
      *&v1222[40] = v437;
      v444 = *(v438 + 1);
      v1217[0] = *v438;
      v1217[1] = v444;
      LOBYTE(v1217[2]) = v440;
      *(&v1217[2] + 1) = v442;
      v445 = static DetectHumanBodyPoseRequest.== infix(_:_:)(v1222, v1217);

      if ((v445 & 1) == 0)
      {
        goto LABEL_225;
      }

      v446 = sub_1A5B67CC8(v436, v441);
      goto LABEL_222;
    case 0xEu:
      v670 = v1134;
      sub_1A5B5DE58(v298, v1134, type metadata accessor for VisionResult);
      v671 = *(v670 + 8);
      v672 = v1200;
      if (swift_getEnumCaseMultiPayload() != 14)
      {
        goto LABEL_123;
      }

      v317 = v298;
      v673 = v672[1];

      v674 = sub_1A5FD4B5C();

      if ((v674 & 1) == 0)
      {
        goto LABEL_265;
      }

      v554 = sub_1A5B67ED0(v671, v673);
      goto LABEL_122;
    case 0xFu:
      v675 = v1141;
      sub_1A5B5DE58(v298, v1141, type metadata accessor for VisionResult);
      v676 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF6A8, &qword_1A5FF9CC8) + 48);
      v677 = *(v675 + v676);
      v678 = v1200;
      if (swift_getEnumCaseMultiPayload() != 15)
      {

        sub_1A5B5DF14(v675, type metadata accessor for DetectHumanHandPoseRequest);
        goto LABEL_298;
      }

      v679 = *(v678 + v676);
      v680 = v675;
      v681 = v1079;
      sub_1A5B5C4C0(v680, v1079, type metadata accessor for DetectHumanHandPoseRequest);
      v682 = v678;
      v683 = v1080;
      sub_1A5B5C4C0(v682, v1080, type metadata accessor for DetectHumanHandPoseRequest);
      if (static DetectHumanHandPoseRequest.== infix(_:_:)())
      {
        v348 = sub_1A5B680D8(v677, v679);
      }

      else
      {
        v348 = 0;
      }

      v358 = type metadata accessor for DetectHumanHandPoseRequest;
      sub_1A5B5DF14(v683, type metadata accessor for DetectHumanHandPoseRequest);
      v359 = v681;
      goto LABEL_21;
    case 0x10u:
      v474 = v1142;
      sub_1A5B5DE58(v298, v1142, type metadata accessor for VisionResult);
      v786 = *(v474 + 40);
      v476 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF6A0, &qword_1A5FF9CC0) + 48);
      v787 = v1200;
      if (swift_getEnumCaseMultiPayload() != 16)
      {
        v829 = type metadata accessor for SmudgeObservation;
        goto LABEL_289;
      }

      *&v1199 = v298;
      v788 = *(v474 + 32);
      v789 = *(v787 + 32);
      v790 = v787[5];
      v791 = *(v474 + 16);
      v1197 = *v474;
      v1195 = v791;
      v792 = *(v787 + 1);
      v1198 = *v787;
      v1196 = v792;
      v793 = v474 + v476;
      v794 = v1081;
      sub_1A5B5C4C0(v793, v1081, type metadata accessor for SmudgeObservation);
      v795 = v787 + v476;
      v796 = v1082;
      sub_1A5B5C4C0(v795, v1082, type metadata accessor for SmudgeObservation);
      *v1222 = v1197;
      *&v1222[16] = v1195;
      v1222[32] = v788;
      *&v1222[40] = v786;
      v1217[1] = v1196;
      v1217[0] = v1198;
      LOBYTE(v1217[2]) = v789;
      *(&v1217[2] + 1) = v790;
      v797 = static DetectLensSmudgeRequest.== infix(_:_:)(v1222, v1217);

      if (v797)
      {
        v348 = static SmudgeObservation.== infix(_:_:)(v794, v796, v798);
      }

      else
      {
        v348 = 0;
      }

      v996 = type metadata accessor for SmudgeObservation;
      goto LABEL_342;
    case 0x11u:
      v768 = v1146;
      sub_1A5B5DE58(v298, v1146, type metadata accessor for VisionResult);
      v769 = *(v768 + 48);
      *&v1222[32] = *(v768 + 32);
      v1223 = v769;
      v1224 = *(v768 + 64);
      v770 = *(v768 + 16);
      *v1222 = *v768;
      *&v1222[16] = v770;
      v771 = *(v768 + 80);
      v772 = v1200;
      if (swift_getEnumCaseMultiPayload() != 17)
      {

        sub_1A5B66E14(v1222);
        goto LABEL_298;
      }

      v365 = v298;
      v773 = *(v772 + 1);
      v774 = *(v772 + 3);
      v1217[2] = *(v772 + 2);
      v1218 = v774;
      v775 = *(v772 + 3);
      v1219 = *(v772 + 4);
      v776 = *v772;
      v777 = *v772;
      v1217[1] = *(v772 + 1);
      v1217[0] = v776;
      v778 = *(v768 + 48);
      v1212 = *(v768 + 32);
      v1213 = v778;
      v1214 = *(v768 + 64);
      v779 = *v768;
      v1211 = *(v768 + 16);
      v1210 = v779;
      v1205 = v1217[2];
      v1206 = v775;
      v1207 = *(v772 + 4);
      v780 = v772[10];
      v1204 = v773;
      v1203 = v777;
      v781 = static DetectRectanglesRequest.== infix(_:_:)(&v1210, &v1203);
      sub_1A5B66E14(v1217);
      sub_1A5B66E14(v1222);
      if ((v781 & 1) == 0)
      {
        goto LABEL_240;
      }

      v375 = sub_1A5B682E0(v771, v780);
      goto LABEL_239;
    case 0x12u:
      v410 = v1151;
      sub_1A5B5DE58(v298, v1151, type metadata accessor for VisionResult);
      v411 = *(v410 + 48);
      *&v1222[32] = *(v410 + 32);
      v1223 = v411;
      v1224 = *(v410 + 64);
      v412 = *(v410 + 88);
      *&v1225 = *(v410 + 80);
      v413 = *(v410 + 16);
      *v1222 = *v410;
      *&v1222[16] = v413;
      v414 = v1200;
      if (swift_getEnumCaseMultiPayload() != 18)
      {

        sub_1A5B66D6C(v1222);
        goto LABEL_298;
      }

      v365 = v298;
      v415 = *(v414 + 3);
      v416 = *(v414 + 1);
      v1217[2] = *(v414 + 2);
      v1218 = v415;
      v417 = *(v414 + 3);
      v1219 = *(v414 + 4);
      v418 = *(v414 + 1);
      v1217[0] = *v414;
      v1217[1] = v418;
      v419 = *(v410 + 48);
      v1212 = *(v410 + 32);
      v1213 = v419;
      v1214 = *(v410 + 64);
      v420 = *(v410 + 16);
      v1210 = *v410;
      v1211 = v420;
      v1205 = v1217[2];
      v1206 = v417;
      v1207 = *(v414 + 4);
      *&v1220 = v414[10];
      *&v1215 = *(v410 + 80);
      v421 = v414[11];
      *&v1208 = v414[10];
      v1203 = v1217[0];
      v1204 = v416;
      v422 = static DetectTextRectanglesRequest.== infix(_:_:)(&v1210, &v1203);
      sub_1A5B66D6C(v1217);
      sub_1A5B66D6C(v1222);
      if ((v422 & 1) == 0)
      {
        goto LABEL_240;
      }

      v375 = sub_1A5B684E8(v412, v421);
      goto LABEL_239;
    case 0x13u:
      v549 = v1140;
      sub_1A5B5DE58(v298, v1140, type metadata accessor for VisionResult);
      v550 = *(v549 + 8);
      v551 = v1200;
      if (swift_getEnumCaseMultiPayload() != 19)
      {
LABEL_123:

        goto LABEL_297;
      }

      v317 = v298;
      v552 = v551[1];

      v553 = sub_1A5FD4B5C();

      if (v553)
      {
        v554 = sub_1A5B686F0(v550, v552);
LABEL_122:
        v348 = v554;
      }

      else
      {
LABEL_265:
        v348 = 0;
      }

      goto LABEL_266;
    case 0x14u:
      v474 = v1143;
      sub_1A5B5DE58(v298, v1143, type metadata accessor for VisionResult);
      v820 = *(v474 + 32);
      v476 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF688, &qword_1A5FF9CB8) + 48);
      v821 = v1200;
      if (swift_getEnumCaseMultiPayload() != 20)
      {
        goto LABEL_174;
      }

      v478 = v298;
      v822 = v821[4];
      v823 = *(v474 + 16);
      v1198 = *v474;
      v1196 = v823;
      v824 = *(v821 + 1);
      v1199 = *v821;
      v1197 = v824;
      v825 = v474 + v476;
      v483 = v1084;
      sub_1A5B5C4C0(v825, v1084, type metadata accessor for SaliencyImageObservation);
      v826 = v821 + v476;
      v485 = v1085;
      sub_1A5B5C4C0(v826, v1085, type metadata accessor for SaliencyImageObservation);
      *v1222 = v1198;
      *&v1222[16] = v1196;
      *&v1222[32] = v820;
      v1217[1] = v1197;
      v1217[0] = v1199;
      *&v1217[2] = v822;
      static GenerateAttentionBasedSaliencyImageRequest.== infix(_:_:)(v1222, v1217);
      goto LABEL_172;
    case 0x15u:
      v423 = v1144;
      sub_1A5B5DE58(v298, v1144, type metadata accessor for VisionResult);
      v424 = *(v423 + 48);
      v425 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF680, &qword_1A5FF9CB0) + 48);
      v426 = v1200;
      if (swift_getEnumCaseMultiPayload() != 21)
      {
        v978 = type metadata accessor for FeaturePrintObservation;
        v979 = v423 + v425;
        goto LABEL_296;
      }

      *&v1199 = v298;
      LODWORD(v1197) = *(v423 + 40);
      v427 = *v423;
      v428 = *v426;
      LODWORD(v1198) = *(v426 + 40);
      v429 = v426[6];
      v1194 = *(v423 + 8);
      v1193 = *(v423 + 24);
      v1196 = *(v426 + 1);
      v1195 = *(v426 + 3);
      v430 = v423 + v425;
      v431 = v1088;
      sub_1A5B5C4C0(v430, v1088, type metadata accessor for FeaturePrintObservation);
      v432 = v426 + v425;
      v433 = v1089;
      sub_1A5B5C4C0(v432, v1089, type metadata accessor for FeaturePrintObservation);
      v1222[0] = v427;
      *&v1222[24] = v1193;
      *&v1222[8] = v1194;
      v1222[40] = v1197;
      *&v1223 = v424;
      LOBYTE(v1217[0]) = v428;
      *(&v1217[1] + 8) = v1195;
      *(v1217 + 8) = v1196;
      BYTE8(v1217[2]) = v1198;
      *&v1218 = v429;
      v434 = static GenerateImageFeaturePrintRequest.== infix(_:_:)(v1222, v1217);

      if (v434)
      {
        v348 = static FeaturePrintObservation.== infix(_:_:)();
      }

      else
      {
        v348 = 0;
      }

      v992 = type metadata accessor for FeaturePrintObservation;
      sub_1A5B5DF14(v433, type metadata accessor for FeaturePrintObservation);
      v993 = v431;
      goto LABEL_353;
    case 0x16u:
      v447 = v1145;
      sub_1A5B5DE58(v298, v1145, type metadata accessor for VisionResult);
      v525 = *(v447 + 32);
      v449 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF668, &qword_1A5FF9CA0) + 48);
      v526 = v1200;
      if (swift_getEnumCaseMultiPayload() != 22)
      {
        goto LABEL_67;
      }

      *&v1199 = v298;
      v527 = v526[4];
      v528 = *(v447 + 16);
      v1197 = *v447;
      v1195 = v528;
      v529 = *(v526 + 1);
      v1198 = *v526;
      v1196 = v529;
      v454 = v1126;
      sub_1A5B60994(v447 + v449, v1126, &qword_1EB1EF810, &qword_1A5FF9CF8);
      v530 = v526 + v449;
      v456 = v1125;
      sub_1A5B60994(v530, v1125, &qword_1EB1EF810, &qword_1A5FF9CF8);
      *v1222 = v1197;
      *&v1222[16] = v1195;
      *&v1222[32] = v525;
      v1217[1] = v1196;
      v1217[0] = v1198;
      *&v1217[2] = v527;
      static GenerateForegroundInstanceMaskRequest.== infix(_:_:)(v1222, v1217);
      v532 = v531;

      if ((v532 & 1) == 0)
      {
        goto LABEL_257;
      }

      v459 = *(v1094 + 48);
      v460 = v1056;
      sub_1A5B31A34(v454, v1056, &qword_1EB1EF810, &qword_1A5FF9CF8);
      sub_1A5B31A34(v456, v460 + v459, &qword_1EB1EF810, &qword_1A5FF9CF8);
      v461 = *(v1105 + 48);
      v462 = v1106;
      if (v461(v460, 1, v1106) == 1)
      {
        goto LABEL_65;
      }

      v463 = v1041;
      sub_1A5B31A34(v460, v1041, &qword_1EB1EF810, &qword_1A5FF9CF8);
      if (v461(v460 + v459, 1, v462) == 1)
      {
        sub_1A5B10168(v1125, &qword_1EB1EF810, &qword_1A5FF9CF8);
        v464 = v1126;
        goto LABEL_363;
      }

      v1015 = v1043;
      sub_1A5B5C4C0(v460 + v459, v1043, type metadata accessor for InstanceMaskObservation);
      sub_1A5B5E6AC(&qword_1EB1EF5F8, type metadata accessor for InstanceMaskObservation, &protocol conformance descriptor for InstanceMaskObservation);
      v1013 = v463;
      v348 = sub_1A5FD3D0C();
      sub_1A5B5DF14(v1015, type metadata accessor for InstanceMaskObservation);
      v1009 = &qword_1EB1EF810;
      v1010 = &qword_1A5FF9CF8;
      sub_1A5B10168(v1125, &qword_1EB1EF810, &qword_1A5FF9CF8);
      v1014 = v1126;
      goto LABEL_386;
    case 0x17u:
      v474 = v1147;
      sub_1A5B5DE58(v298, v1147, type metadata accessor for VisionResult);
      v475 = *(v474 + 32);
      v476 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF678, &qword_1A5FF9CA8) + 48);
      v477 = v1200;
      if (swift_getEnumCaseMultiPayload() != 23)
      {
LABEL_174:
        v829 = type metadata accessor for SaliencyImageObservation;
        goto LABEL_289;
      }

      v478 = v298;
      v479 = v477[4];
      v480 = *(v474 + 16);
      v1198 = *v474;
      v1196 = v480;
      v481 = *(v477 + 1);
      v1199 = *v477;
      v1197 = v481;
      v482 = v474 + v476;
      v483 = v1086;
      sub_1A5B5C4C0(v482, v1086, type metadata accessor for SaliencyImageObservation);
      v484 = v477 + v476;
      v485 = v1087;
      sub_1A5B5C4C0(v484, v1087, type metadata accessor for SaliencyImageObservation);
      *v1222 = v1198;
      *&v1222[16] = v1196;
      *&v1222[32] = v475;
      v1217[1] = v1197;
      v1217[0] = v1199;
      *&v1217[2] = v479;
      static GenerateObjectnessBasedSaliencyImageRequest.== infix(_:_:)(v1222, v1217);
LABEL_172:
      v827 = v486;

      if (v827)
      {
        v348 = static SaliencyImageObservation.== infix(_:_:)(v483, v485, v828);
      }

      else
      {
        v348 = 0;
      }

      v626 = type metadata accessor for SaliencyImageObservation;
      goto LABEL_338;
    case 0x18u:
      v492 = v1149;
      sub_1A5B5DE58(v298, v1149, type metadata accessor for VisionResult);
      v493 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF670, &qword_1A60084A0) + 48);
      v612 = v1200;
      if (swift_getEnumCaseMultiPayload() != 24)
      {
        v980 = type metadata accessor for PixelBufferObservation;
        goto LABEL_269;
      }

      v478 = v298;
      v613 = v492 + v493;
      v483 = v1092;
      sub_1A5B5C4C0(v613, v1092, type metadata accessor for PixelBufferObservation);
      v614 = v612 + v493;
      v485 = v1093;
      sub_1A5B5C4C0(v614, v1093, type metadata accessor for PixelBufferObservation);

      v615 = sub_1A5FD4B5C();

      if (v615)
      {
        v348 = static PixelBufferObservation.== infix(_:_:)(v483, v485);
      }

      else
      {
        v348 = 0;
      }

      v626 = type metadata accessor for PixelBufferObservation;
      goto LABEL_338;
    case 0x19u:
      v447 = v1150;
      sub_1A5B5DE58(v298, v1150, type metadata accessor for VisionResult);
      v448 = *(v447 + 32);
      v449 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF660, &qword_1A5FF9C98) + 48);
      v450 = v1200;
      if (swift_getEnumCaseMultiPayload() == 25)
      {
        *&v1199 = v298;
        v451 = v450[4];
        v452 = *(v447 + 16);
        v1197 = *v447;
        v1195 = v452;
        v453 = *(v450 + 1);
        v1198 = *v450;
        v1196 = v453;
        v454 = v1128;
        sub_1A5B60994(v447 + v449, v1128, &qword_1EB1EF810, &qword_1A5FF9CF8);
        v455 = v450 + v449;
        v456 = v1127;
        sub_1A5B60994(v455, v1127, &qword_1EB1EF810, &qword_1A5FF9CF8);
        *v1222 = v1197;
        *&v1222[16] = v1195;
        *&v1222[32] = v448;
        v1217[1] = v1196;
        v1217[0] = v1198;
        *&v1217[2] = v451;
        static GeneratePersonInstanceMaskRequest.== infix(_:_:)(v1222, v1217);
        v458 = v457;

        if ((v458 & 1) == 0)
        {
LABEL_257:
          v981 = &qword_1EB1EF810;
          v982 = &qword_1A5FF9CF8;
          v983 = v456;
          goto LABEL_346;
        }

        v459 = *(v1094 + 48);
        v460 = v1057;
        sub_1A5B31A34(v454, v1057, &qword_1EB1EF810, &qword_1A5FF9CF8);
        sub_1A5B31A34(v456, v460 + v459, &qword_1EB1EF810, &qword_1A5FF9CF8);
        v461 = *(v1105 + 48);
        v462 = v1106;
        if (v461(v460, 1, v1106) == 1)
        {
LABEL_65:
          sub_1A5B10168(v456, &qword_1EB1EF810, &qword_1A5FF9CF8);
          sub_1A5B10168(v454, &qword_1EB1EF810, &qword_1A5FF9CF8);
          if (v461(v460 + v459, 1, v462) == 1)
          {
            v315 = &qword_1EB1EF810;
            v316 = &qword_1A5FF9CF8;
            v533 = v460;
            goto LABEL_209;
          }

          goto LABEL_364;
        }

        v463 = v1042;
        sub_1A5B31A34(v460, v1042, &qword_1EB1EF810, &qword_1A5FF9CF8);
        if (v461(v460 + v459, 1, v462) == 1)
        {
          sub_1A5B10168(v1127, &qword_1EB1EF810, &qword_1A5FF9CF8);
          v464 = v1128;
LABEL_363:
          sub_1A5B10168(v464, &qword_1EB1EF810, &qword_1A5FF9CF8);
          sub_1A5B5DF14(v463, type metadata accessor for InstanceMaskObservation);
LABEL_364:
          v999 = &qword_1EB1EFDC0;
          v1000 = &qword_1A5FF9FD0;
          v991 = v460;
          goto LABEL_348;
        }

        v1012 = v1043;
        sub_1A5B5C4C0(v460 + v459, v1043, type metadata accessor for InstanceMaskObservation);
        sub_1A5B5E6AC(&qword_1EB1EF5F8, type metadata accessor for InstanceMaskObservation, &protocol conformance descriptor for InstanceMaskObservation);
        v1013 = v463;
        v348 = sub_1A5FD3D0C();
        sub_1A5B5DF14(v1012, type metadata accessor for InstanceMaskObservation);
        v1009 = &qword_1EB1EF810;
        v1010 = &qword_1A5FF9CF8;
        sub_1A5B10168(v1127, &qword_1EB1EF810, &qword_1A5FF9CF8);
        v1014 = v1128;
LABEL_386:
        sub_1A5B10168(v1014, &qword_1EB1EF810, &qword_1A5FF9CF8);
        sub_1A5B5DF14(v1013, type metadata accessor for InstanceMaskObservation);
        v1016 = v460;
LABEL_399:
        sub_1A5B10168(v1016, v1009, v1010);
        goto LABEL_349;
      }

LABEL_67:
      v534 = &qword_1EB1EF810;
      v535 = &qword_1A5FF9CF8;
LABEL_260:
      sub_1A5B10168(v447 + v449, v534, v535);
LABEL_297:

      goto LABEL_298;
    case 0x1Au:
      v317 = v298;
      v881 = v1148;
      sub_1A5B5DE58(v298, v1148, type metadata accessor for VisionResult);
      v882 = *(v881 + 40);
      v466 = *(v881 + 48);
      v883 = v1200;
      if (swift_getEnumCaseMultiPayload() != 26)
      {
        goto LABEL_223;
      }

      v884 = *(v881 + 32);
      v885 = *(v883 + 32);
      v886 = v883[5];
      v469 = v883[6];
      v887 = *(v881 + 16);
      *v1222 = *v881;
      *&v1222[16] = v887;
      v1222[32] = v884;
      *&v1222[40] = v882;
      v888 = *(v883 + 1);
      v1217[0] = *v883;
      v1217[1] = v888;
      LOBYTE(v1217[2]) = v885;
      *(&v1217[2] + 1) = v886;
      v473 = static RecognizeAnimalsRequest.== infix(_:_:)(v1222, v1217);
      goto LABEL_216;
    case 0x1Bu:
      v867 = v1161;
      sub_1A5B5DE58(v298, v1161, type metadata accessor for VisionResult);
      v868 = *(v867 + 48);
      *&v1222[32] = *(v867 + 32);
      v1223 = v868;
      v1224 = *(v867 + 64);
      v869 = *(v867 + 16);
      *v1222 = *v867;
      *&v1222[16] = v869;
      v870 = *(v867 + 80);
      v871 = v1200;
      if (swift_getEnumCaseMultiPayload() != 27)
      {

        sub_1A5B66A78(v1222);
        goto LABEL_298;
      }

      v365 = v298;
      v872 = *(v871 + 1);
      v873 = *(v871 + 3);
      v1217[2] = *(v871 + 2);
      v1218 = v873;
      v874 = *(v871 + 3);
      v1219 = *(v871 + 4);
      v875 = *v871;
      v876 = *v871;
      v1217[1] = *(v871 + 1);
      v1217[0] = v875;
      v877 = *(v867 + 48);
      v1212 = *(v867 + 32);
      v1213 = v877;
      v1214 = *(v867 + 64);
      v878 = *v867;
      v1211 = *(v867 + 16);
      v1210 = v878;
      v1205 = v1217[2];
      v1206 = v874;
      v1207 = *(v871 + 4);
      v879 = v871[10];
      v1204 = v872;
      v1203 = v876;
      v880 = static RecognizeTextRequest.== infix(_:_:)(&v1210, &v1203);
      sub_1A5B66A78(v1217);
      sub_1A5B66A78(v1222);
      if ((v880 & 1) == 0)
      {
        goto LABEL_240;
      }

      v375 = sub_1A5B68D08(v870, v879);
      goto LABEL_239;
    case 0x1Cu:
      v498 = v1164;
      sub_1A5B5DE58(v298, v1164, type metadata accessor for VisionResult);
      v499 = *(v498 + 104);
      v1226 = *(v498 + 96);
      v500 = *(v498 + 80);
      v1224 = *(v498 + 64);
      v1225 = v500;
      v501 = *(v498 + 16);
      *v1222 = *v498;
      *&v1222[16] = v501;
      v502 = *(v498 + 48);
      *&v1222[32] = *(v498 + 32);
      v1223 = v502;
      v503 = v1200;
      if (swift_getEnumCaseMultiPayload() != 28)
      {

        sub_1A5B66B20(v1222);
        goto LABEL_298;
      }

      v365 = v298;
      v504 = *(v503 + 3);
      v505 = *(v503 + 5);
      v1219 = *(v503 + 4);
      v1220 = v505;
      v506 = *(v503 + 1);
      v1217[0] = *v503;
      v1217[1] = v506;
      v507 = *(v503 + 2);
      v509 = *v503;
      v508 = *(v503 + 1);
      v510 = v507;
      v1218 = *(v503 + 3);
      v1217[2] = v507;
      v511 = *(v498 + 80);
      v1214 = *(v498 + 64);
      v1215 = v511;
      v512 = *(v498 + 16);
      v1210 = *v498;
      v1211 = v512;
      v513 = *(v498 + 32);
      v1213 = *(v498 + 48);
      v1212 = v513;
      v514 = *(v503 + 5);
      v1207 = v1219;
      v1208 = v514;
      v1203 = v509;
      v1204 = v508;
      v1221 = v503[12];
      v1216 = *(v498 + 96);
      v515 = v503[13];
      v1209 = v503[12];
      v1206 = v504;
      v1205 = v510;
      v516 = static RecognizeDocumentsRequest.== infix(_:_:)(&v1210, &v1203);
      sub_1A5B66B20(v1217);
      sub_1A5B66B20(v1222);
      if ((v516 & 1) == 0)
      {
        goto LABEL_240;
      }

      v375 = sub_1A5B68B00(v499, v515);
      goto LABEL_239;
    case 0x1Du:
      v492 = v1152;
      sub_1A5B5DE58(v298, v1152, type metadata accessor for VisionResult);
      v493 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF658, &qword_1A5FF9C90) + 48);
      v565 = v1200;
      if (swift_getEnumCaseMultiPayload() != 29)
      {
        v980 = type metadata accessor for ImageHomographicAlignmentObservation;
        goto LABEL_269;
      }

      v478 = v298;
      v566 = v492 + v493;
      v483 = v1103;
      sub_1A5B5C4C0(v566, v1103, type metadata accessor for ImageHomographicAlignmentObservation);
      v567 = v565 + v493;
      v485 = v1104;
      sub_1A5B5C4C0(v567, v1104, type metadata accessor for ImageHomographicAlignmentObservation);

      v568 = sub_1A5FD4B5C();

      if (v568)
      {
        v348 = static ImageHomographicAlignmentObservation.== infix(_:_:)(v483, v485);
      }

      else
      {
        v348 = 0;
      }

      v626 = type metadata accessor for ImageHomographicAlignmentObservation;
      goto LABEL_338;
    case 0x1Eu:
      v305 = v1153;
      sub_1A5B5DE58(v298, v1153, type metadata accessor for VisionResult);
      v306 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF698, &unk_1A5FFD180) + 48);
      v689 = v1200;
      if (swift_getEnumCaseMultiPayload() != 30)
      {
        v976 = &qword_1EB1EF7E8;
        v977 = &qword_1A5FF9CF0;
        goto LABEL_292;
      }

      *&v1199 = v298;
      v454 = v1107;
      sub_1A5B60994(v305 + v306, v1107, &qword_1EB1EF7E8, &qword_1A5FF9CF0);
      v570 = v1129;
      sub_1A5B60994(v689 + v306, v1129, &qword_1EB1EF7E8, &qword_1A5FF9CF0);

      v690 = sub_1A5FD4B5C();

      if ((v690 & 1) == 0)
      {

        v981 = &qword_1EB1EF7E8;
        v982 = &qword_1A5FF9CF0;
        goto LABEL_345;
      }

      v691 = *(v1059 + 48);
      v311 = v1066;
      sub_1A5B31A34(v454, v1066, &qword_1EB1EF7E8, &qword_1A5FF9CF0);
      sub_1A5B31A34(v570, v311 + v691, &qword_1EB1EF7E8, &qword_1A5FF9CF0);
      v692 = v1063;
      v693 = *(v1062 + 48);
      if (v693(v311, 1, v1063) == 1)
      {

        sub_1A5B10168(v570, &qword_1EB1EF7E8, &qword_1A5FF9CF0);
        sub_1A5B10168(v454, &qword_1EB1EF7E8, &qword_1A5FF9CF0);
        if (v693(v311 + v691, 1, v692) == 1)
        {
          v315 = &qword_1EB1EF7E8;
          v316 = &qword_1A5FF9CF0;
          goto LABEL_208;
        }

        goto LABEL_376;
      }

      v1004 = v1044;
      sub_1A5B31A34(v311, v1044, &qword_1EB1EF7E8, &qword_1A5FF9CF0);
      if (v693(v311 + v691, 1, v692) == 1)
      {

        sub_1A5B10168(v1129, &qword_1EB1EF7E8, &qword_1A5FF9CF0);
        sub_1A5B10168(v454, &qword_1EB1EF7E8, &qword_1A5FF9CF0);
        sub_1A5B5DF14(v1004, type metadata accessor for DetectedObjectObservation);
LABEL_376:
        v999 = &qword_1EB1EFDB8;
        v1000 = &qword_1A5FF9FC8;
        v991 = v311;
        goto LABEL_348;
      }

      v1026 = v311 + v691;
      v1027 = v1036;
      sub_1A5B5C4C0(v1026, v1036, type metadata accessor for DetectedObjectObservation);
      sub_1A5B5E6AC(&qword_1EB1EFE18, type metadata accessor for DetectedObjectObservation, &protocol conformance descriptor for DetectedObjectObservation);
      v1023 = v454;
      v348 = sub_1A5FD3D0C();

      v1008 = type metadata accessor for DetectedObjectObservation;
      sub_1A5B5DF14(v1027, type metadata accessor for DetectedObjectObservation);
      v1009 = &qword_1EB1EF7E8;
      v1010 = &qword_1A5FF9CF0;
      v1024 = v1129;
      goto LABEL_397;
    case 0x1Fu:
      v305 = v1154;
      sub_1A5B5DE58(v298, v1154, type metadata accessor for VisionResult);
      v306 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF690, &qword_1A5FFE500) + 48);
      v569 = v1200;
      if (swift_getEnumCaseMultiPayload() != 31)
      {
        v976 = &qword_1EB1EF7D8;
        v977 = &qword_1A5FFE4E0;
        goto LABEL_292;
      }

      *&v1199 = v298;
      v454 = v1108;
      sub_1A5B60994(v305 + v306, v1108, &qword_1EB1EF7D8, &qword_1A5FFE4E0);
      v570 = v1130;
      sub_1A5B60994(v569 + v306, v1130, &qword_1EB1EF7D8, &qword_1A5FFE4E0);

      v571 = sub_1A5FD4B5C();

      if ((v571 & 1) == 0)
      {

        v981 = &qword_1EB1EF7D8;
        v982 = &qword_1A5FFE4E0;
        goto LABEL_345;
      }

      v572 = *(v1061 + 48);
      v311 = v1069;
      sub_1A5B31A34(v454, v1069, &qword_1EB1EF7D8, &qword_1A5FFE4E0);
      sub_1A5B31A34(v570, v311 + v572, &qword_1EB1EF7D8, &qword_1A5FFE4E0);
      v573 = *(v1065 + 48);
      v574 = v1067;
      if (v573(v311, 1, v1067) == 1)
      {

        sub_1A5B10168(v570, &qword_1EB1EF7D8, &qword_1A5FFE4E0);
        sub_1A5B10168(v454, &qword_1EB1EF7D8, &qword_1A5FFE4E0);
        if (v573(v311 + v572, 1, v574) == 1)
        {
          v315 = &qword_1EB1EF7D8;
          v316 = &qword_1A5FFE4E0;
          goto LABEL_208;
        }

        goto LABEL_373;
      }

      v1004 = v1045;
      sub_1A5B31A34(v311, v1045, &qword_1EB1EF7D8, &qword_1A5FFE4E0);
      if (v573(v311 + v572, 1, v574) == 1)
      {

        sub_1A5B10168(v1130, &qword_1EB1EF7D8, &qword_1A5FFE4E0);
        sub_1A5B10168(v454, &qword_1EB1EF7D8, &qword_1A5FFE4E0);
        sub_1A5B5DF14(v1004, type metadata accessor for OpticalFlowObservation);
LABEL_373:
        v999 = &qword_1EB1EFDB0;
        v1000 = &qword_1A5FF9FC0;
        v991 = v311;
        goto LABEL_348;
      }

      v1021 = v311 + v572;
      v1022 = v1037;
      sub_1A5B5C4C0(v1021, v1037, type metadata accessor for OpticalFlowObservation);
      sub_1A5B5E6AC(&qword_1EB1EFE10, type metadata accessor for OpticalFlowObservation, &protocol conformance descriptor for OpticalFlowObservation);
      v1023 = v454;
      v348 = sub_1A5FD3D0C();

      v1008 = type metadata accessor for OpticalFlowObservation;
      sub_1A5B5DF14(v1022, type metadata accessor for OpticalFlowObservation);
      v1009 = &qword_1EB1EF7D8;
      v1010 = &qword_1A5FFE4E0;
      v1024 = v1130;
      goto LABEL_397;
    case 0x20u:
      v305 = v1156;
      sub_1A5B5DE58(v298, v1156, type metadata accessor for VisionResult);
      v306 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF650, &unk_1A6005CC0) + 48);
      v909 = v1200;
      if (swift_getEnumCaseMultiPayload() != 32)
      {
        v976 = &qword_1EB1EF7C8;
        v977 = &qword_1A600FCB0;
        goto LABEL_292;
      }

      *&v1199 = v298;
      v454 = v1115;
      sub_1A5B60994(v305 + v306, v1115, &qword_1EB1EF7C8, &qword_1A600FCB0);
      v570 = v1131;
      sub_1A5B60994(v909 + v306, v1131, &qword_1EB1EF7C8, &qword_1A600FCB0);

      v910 = sub_1A5FD4B5C();

      if ((v910 & 1) == 0)
      {

        v981 = &qword_1EB1EF7C8;
        v982 = &qword_1A600FCB0;
LABEL_345:
        v983 = v570;
LABEL_346:
        sub_1A5B10168(v983, v981, v982);
        v991 = v454;
LABEL_347:
        v999 = v981;
        v1000 = v982;
LABEL_348:
        sub_1A5B10168(v991, v999, v1000);
        v348 = 0;
LABEL_349:
        v939 = v1199;
LABEL_355:
        sub_1A5B5DF14(v939, type metadata accessor for VisionResult);
        return v348 & 1;
      }

      v911 = *(v1064 + 48);
      v311 = v1071;
      sub_1A5B31A34(v454, v1071, &qword_1EB1EF7C8, &qword_1A600FCB0);
      sub_1A5B31A34(v570, v311 + v911, &qword_1EB1EF7C8, &qword_1A600FCB0);
      v912 = *(v1068 + 48);
      v913 = v1070;
      if (v912(v311, 1, v1070) == 1)
      {

        sub_1A5B10168(v570, &qword_1EB1EF7C8, &qword_1A600FCB0);
        sub_1A5B10168(v454, &qword_1EB1EF7C8, &qword_1A600FCB0);
        if (v912(v311 + v911, 1, v913) == 1)
        {
          v315 = &qword_1EB1EF7C8;
          v316 = &qword_1A600FCB0;
          goto LABEL_208;
        }

        goto LABEL_382;
      }

      v1004 = v1046;
      sub_1A5B31A34(v311, v1046, &qword_1EB1EF7C8, &qword_1A600FCB0);
      if (v912(v311 + v911, 1, v913) == 1)
      {

        sub_1A5B10168(v1131, &qword_1EB1EF7C8, &qword_1A600FCB0);
        sub_1A5B10168(v454, &qword_1EB1EF7C8, &qword_1A600FCB0);
        sub_1A5B5DF14(v1004, type metadata accessor for RectangleObservation);
LABEL_382:
        v999 = &qword_1EB1EFDA8;
        v1000 = &qword_1A601F6E0;
        v991 = v311;
        goto LABEL_348;
      }

      v1029 = v311 + v911;
      v1030 = v1038;
      sub_1A5B5C4C0(v1029, v1038, type metadata accessor for RectangleObservation);
      sub_1A5B5E6AC(&qword_1EB1EED68, type metadata accessor for RectangleObservation, &protocol conformance descriptor for RectangleObservation);
      v1023 = v454;
      v348 = sub_1A5FD3D0C();

      v1008 = type metadata accessor for RectangleObservation;
      sub_1A5B5DF14(v1030, type metadata accessor for RectangleObservation);
      v1009 = &qword_1EB1EF7C8;
      v1010 = &qword_1A600FCB0;
      v1024 = v1131;
LABEL_397:
      sub_1A5B10168(v1024, v1009, v1010);
      sub_1A5B10168(v1023, v1009, v1010);
      v1011 = v1004;
      goto LABEL_398;
    case 0x21u:
      v492 = v1159;
      sub_1A5B5DE58(v298, v1159, type metadata accessor for VisionResult);
      v493 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F48B0, &qword_1A5FF9C88) + 48);
      v494 = v1200;
      if (swift_getEnumCaseMultiPayload() == 33)
      {
        v478 = v298;
        v495 = v492 + v493;
        v483 = v1109;
        sub_1A5B5C4C0(v495, v1109, type metadata accessor for ImageTranslationAlignmentObservation);
        v496 = v494 + v493;
        v485 = v1110;
        sub_1A5B5C4C0(v496, v1110, type metadata accessor for ImageTranslationAlignmentObservation);

        v497 = sub_1A5FD4B5C();

        if (v497)
        {
          v348 = static ImageTranslationAlignmentObservation.== infix(_:_:)(v483, v485);
        }

        else
        {
          v348 = 0;
        }

        v626 = type metadata accessor for ImageTranslationAlignmentObservation;
        goto LABEL_338;
      }

      v980 = type metadata accessor for ImageTranslationAlignmentObservation;
LABEL_269:
      sub_1A5B5DF14(v492 + v493, v980);

      goto LABEL_298;
    case 0x22u:
      v317 = v298;
      v782 = v1155;
      sub_1A5B5DE58(v298, v1155, type metadata accessor for VisionResult);
      v783 = *v782;
      v378 = v782[1];
      v784 = v1200;
      if (swift_getEnumCaseMultiPayload() != 34)
      {
        goto LABEL_201;
      }

      v785 = *v784;
      v381 = v784[1];
      v382 = type metadata accessor for DetectScreenGazeRequest(0);
      *v1222 = v783;
      *&v1217[0] = v785;
      v383 = &qword_1EB1EF580;
      v384 = type metadata accessor for DetectScreenGazeRequest;
      v385 = &protocol conformance descriptor for DetectScreenGazeRequest;
      goto LABEL_199;
    case 0x23u:
      v317 = v298;
      v905 = v1157;
      sub_1A5B5DE58(v298, v1157, type metadata accessor for VisionResult);
      v906 = *v905;
      v378 = v905[1];
      v907 = v1200;
      if (swift_getEnumCaseMultiPayload() != 35)
      {
        goto LABEL_201;
      }

      v908 = *v907;
      v381 = v907[1];
      v382 = type metadata accessor for DetectDeviceGazeRequest(0);
      *v1222 = v906;
      *&v1217[0] = v908;
      v383 = &unk_1EB1EFDF8;
      v384 = type metadata accessor for DetectDeviceGazeRequest;
      v385 = &protocol conformance descriptor for DetectDeviceGazeRequest;
      goto LABEL_199;
    case 0x24u:
      v317 = v298;
      v398 = v1160;
      sub_1A5B5DE58(v298, v1160, type metadata accessor for VisionResult);
      v399 = *v398;
      v378 = v398[1];
      v400 = v1200;
      if (swift_getEnumCaseMultiPayload() != 36)
      {
        goto LABEL_201;
      }

      v401 = *v400;
      v381 = v400[1];
      v382 = type metadata accessor for DetectCameraGazeRequest(0);
      *v1222 = v399;
      *&v1217[0] = v401;
      v383 = &unk_1EB1EFDF0;
      v384 = type metadata accessor for DetectCameraGazeRequest;
      v385 = &protocol conformance descriptor for DetectCameraGazeRequest;
      goto LABEL_199;
    case 0x25u:
      v726 = v1163;
      sub_1A5B5DE58(v298, v1163, type metadata accessor for VisionResult);
      v727 = *v726;
      v728 = *(v726 + 48);
      v330 = *(v726 + 56);
      v729 = v1200;
      if (swift_getEnumCaseMultiPayload() != 37)
      {
        goto LABEL_253;
      }

      v333 = v298;
      v730 = *(v726 + 40);
      v731 = *v729;
      v732 = *(v729 + 40);
      v733 = v729[6];
      v335 = v729[7];
      *v1222 = v727;
      *&v1222[8] = *(v726 + 8);
      *&v1222[24] = *(v726 + 24);
      v1222[40] = v730;
      *&v1223 = v728;
      *&v1217[0] = v731;
      *(v1217 + 8) = *(v729 + 1);
      *(&v1217[1] + 8) = *(v729 + 3);
      BYTE8(v1217[2]) = v732;
      *&v1218 = v733;
      v337 = static GenerateFacePrintRequest.== infix(_:_:)(v1222, v1217);
      goto LABEL_231;
    case 0x26u:
      v386 = v1165;
      sub_1A5B5DE58(v298, v1165, type metadata accessor for VisionResult);
      v387 = *v386;
      v388 = v386[5];
      v389 = v386[6];
      v390 = v386[7];
      v391 = v1200;
      if (swift_getEnumCaseMultiPayload() == 38)
      {
        *&v1199 = v298;
        v392 = v386;
        v393 = *v391;
        v394 = v391[5];
        v395 = v391[6];
        v396 = v391[7];
        *&v1222[8] = *(v392 + 1);
        *&v1222[24] = *(v392 + 3);
        *v1222 = v387;
        *&v1222[40] = v388;
        *&v1223 = v389;
        *(v1217 + 8) = *(v391 + 1);
        *(&v1217[1] + 8) = *(v391 + 3);
        *&v1217[0] = v393;
        *(&v1217[2] + 1) = v394;
        *&v1218 = v395;
        v397 = static GenerateTorsoPrintRequest.== infix(_:_:)(v1222, v1217);

        if (v397)
        {
          v348 = sub_1A5B674A8(v390, v396);
        }

        else
        {
          v348 = 0;
        }

        goto LABEL_354;
      }

LABEL_253:

      goto LABEL_297;
    case 0x27u:
      v317 = v298;
      v376 = v1162;
      sub_1A5B5DE58(v298, v1162, type metadata accessor for VisionResult);
      v377 = *v376;
      v378 = v376[1];
      v379 = v1200;
      if (swift_getEnumCaseMultiPayload() != 39)
      {
LABEL_201:

        goto LABEL_224;
      }

      v380 = *v379;
      v381 = v379[1];
      v382 = type metadata accessor for CalculateFaceLivelinessScoreRequest(0);
      *v1222 = v377;
      *&v1217[0] = v380;
      v383 = &unk_1EB1EFDE8;
      v384 = type metadata accessor for CalculateFaceLivelinessScoreRequest;
      v385 = &protocol conformance descriptor for CalculateFaceLivelinessScoreRequest;
LABEL_199:
      sub_1A5B5E6AC(v383, v384, v385);
      if (static StatefulRequest.== infix(_:_:)(v1222, v1217, v382))
      {
        v348 = sub_1A5B0E074(v378, v381);
      }

      else
      {
        v348 = 0;
      }

LABEL_266:

LABEL_267:
      v939 = v317;
      goto LABEL_355;
    case 0x28u:
      v517 = v1166;
      sub_1A5B5DE58(v298, v1166, type metadata accessor for VisionResult);
      v518 = *(v517 + 32);
      v519 = *(v517 + 40);
      v330 = *(v517 + 48);
      v520 = v1200;
      if (swift_getEnumCaseMultiPayload() != 40)
      {
        goto LABEL_253;
      }

      v333 = v298;
      v521 = v520[4];
      v522 = v520[5];
      v335 = v520[6];
      v523 = *(v517 + 16);
      *v1222 = *v517;
      *&v1222[16] = v523;
      *&v1222[32] = v518;
      *&v1222[40] = v519;
      v524 = *(v520 + 1);
      v1217[0] = *v520;
      v1217[1] = v524;
      *&v1217[2] = v521;
      *(&v1217[2] + 1) = v522;
      v337 = static AlignFaceRectanglesRequest.== infix(_:_:)(v1222, v1217);
      goto LABEL_231;
    case 0x29u:
      v474 = v1169;
      sub_1A5B5DE58(v298, v1169, type metadata accessor for VisionResult);
      v616 = *(v474 + 32);
      v476 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF640, &qword_1A5FF9C78) + 48);
      v617 = v1200;
      if (swift_getEnumCaseMultiPayload() != 41)
      {
        v829 = type metadata accessor for ImageExposureObservation;
        goto LABEL_289;
      }

      v478 = v298;
      v618 = v617[4];
      v619 = *(v474 + 16);
      v1198 = *v474;
      v1196 = v619;
      v620 = *(v617 + 1);
      v1199 = *v617;
      v1197 = v620;
      v621 = v474 + v476;
      v483 = v1113;
      sub_1A5B5C4C0(v621, v1113, type metadata accessor for ImageExposureObservation);
      v622 = v617 + v476;
      v485 = v1114;
      sub_1A5B5C4C0(v622, v1114, type metadata accessor for ImageExposureObservation);
      *v1222 = v1198;
      *&v1222[16] = v1196;
      *&v1222[32] = v616;
      v1217[1] = v1197;
      v1217[0] = v1199;
      *&v1217[2] = v618;
      static CalculateExposureScoreRequest.== infix(_:_:)(v1222, v1217);
      v624 = v623;

      if (v624)
      {
        v348 = static ImageExposureObservation.== infix(_:_:)(v483, v485, v625);
      }

      else
      {
        v348 = 0;
      }

      v626 = type metadata accessor for ImageExposureObservation;
      goto LABEL_338;
    case 0x2Au:
      v474 = v1168;
      sub_1A5B5DE58(v298, v1168, type metadata accessor for VisionResult);
      v807 = *(v474 + 48);
      v476 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF648, &qword_1A5FF9C80) + 48);
      v808 = v1200;
      if (swift_getEnumCaseMultiPayload() != 42)
      {
        v829 = type metadata accessor for ImageBlurObservation;
        goto LABEL_289;
      }

      *&v1199 = v298;
      v809 = *(v474 + 8);
      v810 = *v474;
      LODWORD(v1198) = *v808;
      v811 = *(v808 + 1);
      v812 = *(v808 + 6);
      v813 = *(v474 + 32);
      v1195 = *(v474 + 16);
      v1194 = v813;
      v814 = *(v808 + 2);
      v1197 = *(v808 + 1);
      v1196 = v814;
      v815 = v474 + v476;
      v794 = v1111;
      sub_1A5B5C4C0(v815, v1111, type metadata accessor for ImageBlurObservation);
      v816 = &v808[v476];
      v817 = v1112;
      sub_1A5B5C4C0(v816, v1112, type metadata accessor for ImageBlurObservation);
      v1222[0] = v810;
      *&v1222[8] = v809;
      *&v1222[16] = v1195;
      *&v1222[32] = v1194;
      *&v1223 = v807;
      LOBYTE(v1217[0]) = v1198;
      *(&v1217[0] + 1) = v811;
      v1217[2] = v1196;
      v1217[1] = v1197;
      *&v1218 = v812;
      v818 = static CalculateBlurScoreRequest.== infix(_:_:)(v1222, v1217);

      if (v818)
      {
        v348 = static ImageBlurObservation.== infix(_:_:)(v794, v817, v819);
      }

      else
      {
        v348 = 0;
      }

      v996 = type metadata accessor for ImageBlurObservation;
      v992 = type metadata accessor for ImageBlurObservation;
      v997 = v817;
      goto LABEL_343;
    case 0x2Bu:
      v317 = v298;
      v318 = v1167;
      sub_1A5B5DE58(v298, v1167, type metadata accessor for VisionResult);
      v320 = *(v318 + 48);
      v319 = *(v318 + 56);
      v321 = v1200;
      if (swift_getEnumCaseMultiPayload() != 43)
      {
        goto LABEL_223;
      }

      v322 = *(v318 + 40);
      v323 = *v321;
      v324 = *(v321 + 40);
      v326 = v321[6];
      v325 = v321[7];
      v1222[0] = *v318;
      *&v1222[8] = *(v318 + 8);
      *&v1222[24] = *(v318 + 24);
      v1222[40] = v322;
      *&v1223 = v320;
      LOBYTE(v1217[0]) = v323;
      *(v1217 + 8) = *(v321 + 1);
      *(&v1217[1] + 8) = *(v321 + 3);
      BYTE8(v1217[2]) = v324;
      *&v1218 = v326;
      v327 = static ClassifyCityNatureImageRequest.== infix(_:_:)(v1222, v1217);
      goto LABEL_220;
    case 0x2Cu:
      v402 = v1170;
      sub_1A5B5DE58(v298, v1170, type metadata accessor for VisionResult);
      v403 = *v402;
      v404 = *(v402 + 48);
      v330 = *(v402 + 56);
      v405 = v1200;
      if (swift_getEnumCaseMultiPayload() != 44)
      {
        goto LABEL_253;
      }

      v333 = v298;
      v406 = *(v402 + 40);
      v407 = *v405;
      v408 = *(v405 + 40);
      v409 = v405[6];
      v335 = v405[7];
      *v1222 = v403;
      *&v1222[8] = *(v402 + 8);
      *&v1222[24] = *(v402 + 24);
      v1222[40] = v406;
      *&v1223 = v404;
      *&v1217[0] = v407;
      *(v1217 + 8) = *(v405 + 1);
      *(&v1217[1] + 8) = *(v405 + 3);
      BYTE8(v1217[2]) = v408;
      *&v1218 = v409;
      v337 = static ClassifyFaceAttributesRequest.== infix(_:_:)();
      goto LABEL_231;
    case 0x2Du:
      v317 = v298;
      v660 = v1171;
      sub_1A5B5DE58(v298, v1171, type metadata accessor for VisionResult);
      v662 = *(v660 + 48);
      v661 = *(v660 + 56);
      v663 = v1200;
      if (swift_getEnumCaseMultiPayload() != 45)
      {
        goto LABEL_223;
      }

      v664 = *(v660 + 40);
      v665 = *v663;
      v666 = *(v663 + 40);
      v668 = v663[6];
      v667 = v663[7];
      v1222[0] = *v660;
      *&v1222[8] = *(v660 + 8);
      *&v1222[24] = *(v660 + 24);
      v1222[40] = v664;
      *&v1223 = v662;
      LOBYTE(v1217[0]) = v665;
      *(v1217 + 8) = *(v663 + 1);
      *(&v1217[1] + 8) = *(v663 + 3);
      BYTE8(v1217[2]) = v666;
      *&v1218 = v668;
      v669 = static ClassifyImageAestheticsRequest.== infix(_:_:)();

      if ((v669 & 1) == 0)
      {
        goto LABEL_225;
      }

      v446 = sub_1A5B69118(v661, v667);
      goto LABEL_222;
    case 0x2Eu:
      v317 = v298;
      v705 = v1173;
      sub_1A5B5DE58(v298, v1173, type metadata accessor for VisionResult);
      v706 = *(v705 + 48);
      v319 = *(v705 + 56);
      v707 = v1200;
      if (swift_getEnumCaseMultiPayload() != 46)
      {
        goto LABEL_223;
      }

      v708 = *(v705 + 40);
      v709 = *v707;
      v710 = *(v707 + 40);
      v711 = v707[6];
      v325 = v707[7];
      v1222[0] = *v705;
      *&v1222[8] = *(v705 + 8);
      *&v1222[24] = *(v705 + 24);
      v1222[40] = v708;
      *&v1223 = v706;
      LOBYTE(v1217[0]) = v709;
      *(v1217 + 8) = *(v707 + 1);
      *(&v1217[1] + 8) = *(v707 + 3);
      BYTE8(v1217[2]) = v710;
      *&v1218 = v711;
      v327 = static ClassifyJunkImageRequest.== infix(_:_:)(v1222, v1217);
      goto LABEL_220;
    case 0x2Fu:
      v317 = v298;
      v914 = v1174;
      sub_1A5B5DE58(v298, v1174, type metadata accessor for VisionResult);
      v915 = *(v914 + 40);
      v319 = *(v914 + 48);
      v916 = v1200;
      if (swift_getEnumCaseMultiPayload() != 47)
      {
        goto LABEL_223;
      }

      v917 = *v916;
      v918 = v916[5];
      v325 = v916[6];
      v1222[0] = *v914;
      *&v1222[8] = *(v914 + 8);
      *&v1222[24] = *(v914 + 24);
      *&v1222[40] = v915;
      LOBYTE(v1217[0]) = v917;
      *(v1217 + 8) = *(v916 + 1);
      *(&v1217[1] + 8) = *(v916 + 3);
      *(&v1217[2] + 1) = v918;
      v327 = static ClassifyMemeImageRequest.== infix(_:_:)(v1222, v1217);
      goto LABEL_220;
    case 0x30u:
      v317 = v298;
      v684 = v1175;
      sub_1A5B5DE58(v298, v1175, type metadata accessor for VisionResult);
      v685 = *(v684 + 40);
      v319 = *(v684 + 48);
      v686 = v1200;
      if (swift_getEnumCaseMultiPayload() != 48)
      {
        goto LABEL_223;
      }

      v687 = *v686;
      v688 = v686[5];
      v325 = v686[6];
      v1222[0] = *v684;
      *&v1222[8] = *(v684 + 8);
      *&v1222[24] = *(v684 + 24);
      *&v1222[40] = v685;
      LOBYTE(v1217[0]) = v687;
      *(v1217 + 8) = *(v686 + 1);
      *(&v1217[1] + 8) = *(v686 + 3);
      *(&v1217[2] + 1) = v688;
      v327 = static ClassifyPotentialLandmarkRequest.== infix(_:_:)(v1222, v1217);
      goto LABEL_220;
    case 0x31u:
      v360 = v1179;
      sub_1A5B5DE58(v298, v1179, type metadata accessor for VisionResult);
      v361 = *(v360 + 16);
      *v1222 = *v360;
      *&v1222[16] = v361;
      v362 = *(v360 + 48);
      *&v1222[32] = *(v360 + 32);
      v1223 = v362;
      v363 = *(v360 + 64);
      v364 = v1200;
      if (swift_getEnumCaseMultiPayload() != 49)
      {

        sub_1A5B66784(v1222);
        goto LABEL_298;
      }

      v365 = v298;
      v366 = *(v364 + 1);
      v1217[0] = *v364;
      v1217[1] = v366;
      v367 = *(v364 + 3);
      v369 = *v364;
      v368 = *(v364 + 1);
      v1217[2] = *(v364 + 2);
      v1218 = v367;
      v370 = *(v360 + 16);
      v1210 = *v360;
      v1211 = v370;
      v371 = *(v360 + 48);
      v1212 = *(v360 + 32);
      v1213 = v371;
      v372 = v364[8];
      v1203 = v369;
      v1204 = v368;
      v373 = *(v364 + 3);
      v1205 = *(v364 + 2);
      v1206 = v373;
      v374 = static DetectFaceGazeRequest.== infix(_:_:)(&v1210, &v1203);
      sub_1A5B66784(v1217);
      sub_1A5B66784(v1222);
      if ((v374 & 1) == 0)
      {
        goto LABEL_240;
      }

      v375 = sub_1A5B0E074(v363, v372);
      goto LABEL_239;
    case 0x33u:
      v328 = v1176;
      sub_1A5B5DE58(v298, v1176, type metadata accessor for VisionResult);
      v329 = *v328;
      v331 = *(v328 + 40);
      v330 = *(v328 + 48);
      v332 = v1200;
      if (swift_getEnumCaseMultiPayload() != 51)
      {
        goto LABEL_253;
      }

      v333 = v298;
      v334 = *v332;
      v336 = v332[5];
      v335 = v332[6];
      *&v1222[8] = *(v328 + 8);
      *&v1222[24] = *(v328 + 24);
      *v1222 = v329;
      *&v1222[40] = v331;
      *(v1217 + 8) = *(v332 + 1);
      *(&v1217[1] + 8) = *(v332 + 3);
      *&v1217[0] = v334;
      *(&v1217[2] + 1) = v336;
      v337 = static DetectFaceExpressionsRequest.== infix(_:_:)(v1222, v1217);
      goto LABEL_231;
    case 0x35u:
      v940 = v1178;
      sub_1A5B5DE58(v298, v1178, type metadata accessor for VisionResult);
      v941 = *v940;
      v942 = *(v940 + 48);
      v330 = *(v940 + 56);
      v943 = v1200;
      if (swift_getEnumCaseMultiPayload() != 53)
      {
        goto LABEL_253;
      }

      v333 = v298;
      v944 = *(v940 + 8);
      v945 = *v943;
      v946 = *(v943 + 2);
      v947 = v943[6];
      v335 = v943[7];
      *v1222 = v941;
      *&v1222[8] = v944;
      v948 = *(v940 + 32);
      *&v1222[16] = *(v940 + 16);
      *&v1222[32] = v948;
      *&v1223 = v942;
      *&v1217[0] = v945;
      DWORD2(v1217[0]) = v946;
      v949 = *(v943 + 2);
      v1217[1] = *(v943 + 1);
      v1217[2] = v949;
      *&v1218 = v947;
      v337 = static GenerateFaceSegmentsRequest.== infix(_:_:)(v1222, v1217);
LABEL_231:
      v950 = v337;

      if ((v950 & 1) == 0)
      {
        goto LABEL_234;
      }

LABEL_232:
      v904 = sub_1A5B0E074(v330, v335);
      goto LABEL_233;
    case 0x36u:
      v895 = v1177;
      sub_1A5B5DE58(v298, v1177, type metadata accessor for VisionResult);
      v896 = *v895;
      v898 = *(v895 + 40);
      v897 = *(v895 + 48);
      v899 = v1200;
      if (swift_getEnumCaseMultiPayload() != 54)
      {
        goto LABEL_253;
      }

      v333 = v298;
      v900 = *v899;
      v902 = v899[5];
      v901 = v899[6];
      *&v1222[8] = *(v895 + 8);
      *&v1222[24] = *(v895 + 24);
      *v1222 = v896;
      *&v1222[40] = v898;
      *(v1217 + 8) = *(v899 + 1);
      *(&v1217[1] + 8) = *(v899 + 3);
      *&v1217[0] = v900;
      *(&v1217[2] + 1) = v902;
      v903 = static GenerateAnimalPrintRequest.== infix(_:_:)(v1222, v1217);

      if (v903)
      {
        v904 = sub_1A5B688F8(v897, v901);
LABEL_233:
        v348 = v904;
      }

      else
      {
LABEL_234:
        v348 = 0;
      }

      v939 = v333;
      goto LABEL_355;
    case 0x37u:
      v349 = v1180;
      sub_1A5B5DE58(v298, v1180, type metadata accessor for VisionResult);
      v350 = v349[1];
      *v1222 = *v349;
      *&v1222[16] = v350;
      *&v1222[32] = v349[2];
      v351 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF638, &qword_1A6022DB0) + 48);
      v352 = v1200;
      if (swift_getEnumCaseMultiPayload() != 55)
      {
        sub_1A5B5DF14(v349 + v351, type metadata accessor for PixelBufferObservation);
        sub_1A5B66688(v1222);
        goto LABEL_298;
      }

      v353 = v352[1];
      v1217[0] = *v352;
      v1217[1] = v353;
      v1217[2] = v352[2];
      v354 = v349 + v351;
      v344 = v1095;
      sub_1A5B5C4C0(v354, v1095, type metadata accessor for PixelBufferObservation);
      v355 = v352 + v351;
      v346 = v1096;
      sub_1A5B5C4C0(v355, v1096, type metadata accessor for PixelBufferObservation);
      v1210 = *v1222;
      v1211 = *&v1222[16];
      v1212 = *&v1222[32];
      v1203 = v1217[0];
      v1204 = v1217[1];
      v1205 = v1217[2];
      v356 = static GenerateAnimalSegmentationRequest.== infix(_:_:)(&v1210, &v1203);
      sub_1A5B66688(v1217);
      sub_1A5B66688(v1222);
      if (v356)
      {
        goto LABEL_15;
      }

      goto LABEL_18;
    case 0x38u:
      v746 = v1181;
      sub_1A5B5DE58(v298, v1181, type metadata accessor for VisionResult);
      v747 = *(v746 + 48);
      v748 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF630, &qword_1A5FF9C70) + 48);
      v749 = v1200;
      if (swift_getEnumCaseMultiPayload() != 56)
      {
        v984 = type metadata accessor for DetectionPrintObservation;
        goto LABEL_295;
      }

      *&v1199 = v298;
      LODWORD(v1197) = *(v746 + 40);
      v750 = *v746;
      v751 = *v749;
      LODWORD(v1198) = *(v749 + 40);
      v752 = v749[6];
      v1194 = *(v746 + 8);
      v1193 = *(v746 + 24);
      v1196 = *(v749 + 1);
      v1195 = *(v749 + 3);
      v753 = v746 + v748;
      v754 = v1116;
      sub_1A5B5C4C0(v753, v1116, type metadata accessor for DetectionPrintObservation);
      v755 = v749 + v748;
      v756 = v1117;
      sub_1A5B5C4C0(v755, v1117, type metadata accessor for DetectionPrintObservation);
      v1222[0] = v750;
      *&v1222[24] = v1193;
      *&v1222[8] = v1194;
      v1222[40] = v1197;
      *&v1223 = v747;
      LOBYTE(v1217[0]) = v751;
      *(&v1217[1] + 8) = v1195;
      *(v1217 + 8) = v1196;
      BYTE8(v1217[2]) = v1198;
      *&v1218 = v752;
      v757 = static GenerateDetectionPrintRequest.== infix(_:_:)();

      if (v757)
      {
        v348 = static DetectionPrintObservation.== infix(_:_:)();
      }

      else
      {
        v348 = 0;
      }

      v995 = type metadata accessor for DetectionPrintObservation;
      goto LABEL_352;
    case 0x39u:
      v799 = v1182;
      sub_1A5B5DE58(v298, v1182, type metadata accessor for VisionResult);
      v800 = v799[1];
      *v1222 = *v799;
      *&v1222[16] = v800;
      *&v1222[32] = v799[2];
      v801 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF628, &qword_1A5FF9C68) + 48);
      v802 = v1200;
      if (swift_getEnumCaseMultiPayload() != 57)
      {
        sub_1A5B5DF14(v799 + v801, type metadata accessor for PixelBufferObservation);
        sub_1A5B6658C(v1222);
        goto LABEL_298;
      }

      v803 = v802[1];
      v1217[0] = *v802;
      v1217[1] = v803;
      v1217[2] = v802[2];
      v804 = v799 + v801;
      v344 = v1097;
      sub_1A5B5C4C0(v804, v1097, type metadata accessor for PixelBufferObservation);
      v805 = v802 + v801;
      v346 = v1098;
      sub_1A5B5C4C0(v805, v1098, type metadata accessor for PixelBufferObservation);
      v1210 = *v1222;
      v1211 = *&v1222[16];
      v1212 = *&v1222[32];
      v1203 = v1217[0];
      v1204 = v1217[1];
      v1205 = v1217[2];
      v806 = static GenerateGlassesSegmentationRequest.== infix(_:_:)();
      sub_1A5B6658C(v1217);
      sub_1A5B6658C(v1222);
      if ((v806 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_15;
    case 0x3Au:
      v338 = v1183;
      sub_1A5B5DE58(v298, v1183, type metadata accessor for VisionResult);
      v339 = v338[1];
      *v1222 = *v338;
      *&v1222[16] = v339;
      *&v1222[32] = v338[2];
      v340 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF620, &qword_1A5FF9C60) + 48);
      v341 = v1200;
      if (swift_getEnumCaseMultiPayload() != 58)
      {
        sub_1A5B5DF14(v338 + v340, type metadata accessor for PixelBufferObservation);
        sub_1A5B66538(v1222);
        goto LABEL_298;
      }

      v342 = v341[1];
      v1217[0] = *v341;
      v1217[1] = v342;
      v1217[2] = v341[2];
      v343 = v338 + v340;
      v344 = v1099;
      sub_1A5B5C4C0(v343, v1099, type metadata accessor for PixelBufferObservation);
      v345 = v341 + v340;
      v346 = v1100;
      sub_1A5B5C4C0(v345, v1100, type metadata accessor for PixelBufferObservation);
      v1210 = *v1222;
      v1211 = *&v1222[16];
      v1212 = *&v1222[32];
      v1203 = v1217[0];
      v1204 = v1217[1];
      v1205 = v1217[2];
      v347 = static GenerateHumanAttributesSegmentationRequest.== infix(_:_:)(&v1210, &v1203);
      sub_1A5B66538(v1217);
      sub_1A5B66538(v1222);
      if ((v347 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_15;
    case 0x3Bu:
      v474 = v1184;
      sub_1A5B5DE58(v298, v1184, type metadata accessor for VisionResult);
      v858 = *(v474 + 40);
      v476 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF618, &qword_1A5FF9C58) + 48);
      v859 = v1200;
      if (swift_getEnumCaseMultiPayload() != 59)
      {
        v829 = type metadata accessor for ImageFingerprintsObservation;
        goto LABEL_289;
      }

      *&v1199 = v298;
      v860 = *v474;
      v861 = *v859;
      v862 = v859[5];
      v1197 = *(v474 + 8);
      v1195 = *(v474 + 24);
      v1198 = *(v859 + 1);
      v1196 = *(v859 + 3);
      v863 = v474 + v476;
      v794 = v1118;
      sub_1A5B5C4C0(v863, v1118, type metadata accessor for ImageFingerprintsObservation);
      v864 = v859 + v476;
      v796 = v1119;
      sub_1A5B5C4C0(v864, v1119, type metadata accessor for ImageFingerprintsObservation);
      v1222[0] = v860;
      *&v1222[24] = v1195;
      *&v1222[8] = v1197;
      *&v1222[40] = v858;
      LOBYTE(v1217[0]) = v861;
      *(&v1217[1] + 8) = v1196;
      *(v1217 + 8) = v1198;
      *(&v1217[2] + 1) = v862;
      v865 = static GenerateImageFingerprintsRequest.== infix(_:_:)(v1222, v1217);

      if (v865)
      {
        v348 = static ImageFingerprintsObservation.== infix(_:_:)(v794, v796, v866);
      }

      else
      {
        v348 = 0;
      }

      v996 = type metadata accessor for ImageFingerprintsObservation;
LABEL_342:
      v992 = v996;
      v997 = v796;
LABEL_343:
      sub_1A5B5DF14(v997, v996);
      v993 = v794;
      goto LABEL_353;
    case 0x3Cu:
      v474 = v1186;
      sub_1A5B5DE58(v298, v1186, type metadata accessor for VisionResult);
      v830 = *(v474 + 32);
      v476 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF610, &qword_1A5FF9C50) + 48);
      v831 = v1200;
      if (swift_getEnumCaseMultiPayload() == 60)
      {
        v478 = v298;
        v832 = v831[4];
        v833 = *(v474 + 16);
        v1198 = *v474;
        v1196 = v833;
        v834 = *(v831 + 1);
        v1199 = *v831;
        v1197 = v834;
        v835 = v474 + v476;
        v483 = v1090;
        sub_1A5B5C4C0(v835, v1090, type metadata accessor for FeaturePrintObservation);
        v836 = v831 + v476;
        v485 = v1091;
        sub_1A5B5C4C0(v836, v1091, type metadata accessor for FeaturePrintObservation);
        *v1222 = v1198;
        *&v1222[16] = v1196;
        *&v1222[32] = v830;
        v1217[1] = v1197;
        v1217[0] = v1199;
        *&v1217[2] = v832;
        static GenerateImagePrintRequest.== infix(_:_:)(v1222, v1217);
        v838 = v837;

        if (v838)
        {
          v348 = static FeaturePrintObservation.== infix(_:_:)();
        }

        else
        {
          v348 = 0;
        }

        v626 = type metadata accessor for FeaturePrintObservation;
LABEL_338:
        v998 = v626;
        sub_1A5B5DF14(v485, v626);
        sub_1A5B5DF14(v483, v998);
LABEL_339:
        v939 = v478;
        goto LABEL_355;
      }

      v829 = type metadata accessor for FeaturePrintObservation;
LABEL_289:
      v978 = v829;
      v979 = v474 + v476;
      goto LABEL_296;
    case 0x3Du:
      v968 = v1188;
      sub_1A5B5DE58(v298, v1188, type metadata accessor for VisionResult);
      v969 = v968[1];
      *v1222 = *v968;
      *&v1222[16] = v969;
      *&v1222[32] = v968[2];
      v970 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF608, &unk_1A6022DA0) + 48);
      v971 = v1200;
      if (swift_getEnumCaseMultiPayload() != 61)
      {
        sub_1A5B5DF14(v968 + v970, type metadata accessor for PixelBufferObservation);
        sub_1A5B663E8(v1222);
        goto LABEL_298;
      }

      v972 = v971[1];
      v1217[0] = *v971;
      v1217[1] = v972;
      v1217[2] = v971[2];
      v973 = v968 + v970;
      v344 = v1101;
      sub_1A5B5C4C0(v973, v1101, type metadata accessor for PixelBufferObservation);
      v974 = v971 + v970;
      v346 = v1102;
      sub_1A5B5C4C0(v974, v1102, type metadata accessor for PixelBufferObservation);
      v1210 = *v1222;
      v1211 = *&v1222[16];
      v1212 = *&v1222[32];
      v1203 = v1217[0];
      v1204 = v1217[1];
      v1205 = v1217[2];
      v975 = static GenerateSkySegmentationRequest.== infix(_:_:)(&v1210, &v1203);
      sub_1A5B663E8(v1217);
      sub_1A5B663E8(v1222);
      if (v975)
      {
LABEL_15:
        v348 = static PixelBufferObservation.== infix(_:_:)(v344, v346);
      }

      else
      {
LABEL_18:
        v348 = 0;
      }

      v357 = type metadata accessor for PixelBufferObservation;
LABEL_20:
      v358 = v357;
      sub_1A5B5DF14(v346, v357);
      v359 = v344;
LABEL_21:
      sub_1A5B5DF14(v359, v358);
      goto LABEL_228;
    case 0x3Eu:
      v317 = v298;
      v924 = v1185;
      sub_1A5B5DE58(v298, v1185, type metadata accessor for VisionResult);
      v925 = *(v924 + 32);
      v466 = *(v924 + 40);
      v926 = v1200;
      if (swift_getEnumCaseMultiPayload() != 62)
      {
        goto LABEL_223;
      }

      v927 = v926[4];
      v469 = v926[5];
      v928 = *(v924 + 16);
      *v1222 = *v924;
      *&v1222[16] = v928;
      *&v1222[32] = v925;
      v929 = *(v926 + 1);
      v1217[0] = *v926;
      v1217[1] = v929;
      *&v1217[2] = v927;
      static RecognizeAnimalFacesRequest.== infix(_:_:)(v1222, v1217);
      goto LABEL_216;
    case 0x3Fu:
      v951 = v1191;
      sub_1A5B5DE58(v298, v1191, type metadata accessor for VisionResult);
      v952 = *(v951 + 16);
      *v1222 = *v951;
      *&v1222[16] = v952;
      *&v1222[32] = *(v951 + 32);
      v847 = *(v951 + 56);
      *&v1223 = *(v951 + 48);
      v953 = v1200;
      if (swift_getEnumCaseMultiPayload() != 63)
      {

        sub_1A5B662EC(v1222);
        goto LABEL_298;
      }

      v365 = v298;
      v954 = *(v953 + 1);
      v1217[0] = *v953;
      v1217[1] = v954;
      v956 = *v953;
      v955 = *(v953 + 1);
      v1217[2] = *(v953 + 2);
      v957 = *(v951 + 16);
      v1210 = *v951;
      v1211 = v957;
      v1212 = *(v951 + 32);
      *&v1218 = v953[6];
      *&v1213 = *(v951 + 48);
      v1203 = v956;
      v1204 = v955;
      v1205 = *(v953 + 2);
      v856 = v953[7];
      *&v1206 = v953[6];
      v958 = static RecognizeDocumentElementsRequest.== infix(_:_:)(&v1210, &v1203);
      sub_1A5B662EC(v1217);
      sub_1A5B662EC(v1222);
      if ((v958 & 1) == 0)
      {
        goto LABEL_240;
      }

      goto LABEL_238;
    case 0x40u:
      v317 = v298;
      v839 = v1187;
      sub_1A5B5DE58(v298, v1187, type metadata accessor for VisionResult);
      v840 = *(v839 + 32);
      v466 = *(v839 + 40);
      v841 = v1200;
      if (swift_getEnumCaseMultiPayload() != 64)
      {
        goto LABEL_223;
      }

      v842 = v841[4];
      v469 = v841[5];
      v843 = *(v839 + 16);
      *v1222 = *v839;
      *&v1222[16] = v843;
      *&v1222[32] = v840;
      v844 = *(v841 + 1);
      v1217[0] = *v841;
      v1217[1] = v844;
      *&v1217[2] = v842;
      static RecognizeFoodAndDrinkRequest.== infix(_:_:)(v1222, v1217);
      goto LABEL_216;
    case 0x41u:
      v845 = v1197;
      sub_1A5B5DE58(v298, v1197, type metadata accessor for VisionResult);
      v846 = v845[3];
      *&v1222[32] = v845[2];
      v1223 = v846;
      v1224 = v845[4];
      v847 = *(v845 + 11);
      *&v1225 = *(v845 + 10);
      v848 = v845[1];
      *v1222 = *v845;
      *&v1222[16] = v848;
      v849 = v1200;
      if (swift_getEnumCaseMultiPayload() != 65)
      {

        sub_1A5B661F0(v1222);
        goto LABEL_298;
      }

      v365 = v298;
      v850 = *(v849 + 3);
      v851 = *(v849 + 1);
      v1217[2] = *(v849 + 2);
      v1218 = v850;
      v852 = *(v849 + 3);
      v1219 = *(v849 + 4);
      v853 = *(v849 + 1);
      v1217[0] = *v849;
      v1217[1] = v853;
      v854 = v845[3];
      v1212 = v845[2];
      v1213 = v854;
      v1214 = v845[4];
      v855 = v845[1];
      v1210 = *v845;
      v1211 = v855;
      v1205 = v1217[2];
      v1206 = v852;
      v1207 = *(v849 + 4);
      *&v1220 = v849[10];
      *&v1215 = *(v845 + 10);
      v856 = v849[11];
      *&v1208 = v849[10];
      v1203 = v1217[0];
      v1204 = v851;
      v857 = static RecognizeObjectsRequest.== infix(_:_:)(&v1210, &v1203);
      sub_1A5B661F0(v1217);
      sub_1A5B661F0(v1222);
      if (v857)
      {
LABEL_238:
        v375 = sub_1A5B688F8(v847, v856);
LABEL_239:
        v348 = v375;
      }

      else
      {
LABEL_240:
        v348 = 0;
      }

LABEL_241:

      v939 = v365;
      goto LABEL_355;
    case 0x42u:
      v317 = v298;
      v465 = v1189;
      sub_1A5B5DE58(v298, v1189, type metadata accessor for VisionResult);
      v467 = *(v465 + 32);
      v466 = *(v465 + 40);
      v468 = v1200;
      if (swift_getEnumCaseMultiPayload() != 66)
      {
        goto LABEL_223;
      }

      v470 = v468[4];
      v469 = v468[5];
      v471 = *(v465 + 16);
      *v1222 = *v465;
      *&v1222[16] = v471;
      *&v1222[32] = v467;
      v472 = *(v468 + 1);
      v1217[0] = *v468;
      v1217[1] = v472;
      *&v1217[2] = v470;
      static RecognizePosteriorAnimalHeadsRequest.== infix(_:_:)(v1222, v1217);
      goto LABEL_216;
    case 0x43u:
      v317 = v298;
      v889 = v1190;
      sub_1A5B5DE58(v298, v1190, type metadata accessor for VisionResult);
      v890 = *(v889 + 32);
      v466 = *(v889 + 40);
      v891 = v1200;
      if (swift_getEnumCaseMultiPayload() != 67)
      {
        goto LABEL_223;
      }

      v892 = v891[4];
      v469 = v891[5];
      v893 = *(v889 + 16);
      *v1222 = *v889;
      *&v1222[16] = v893;
      *&v1222[32] = v890;
      v894 = *(v891 + 1);
      v1217[0] = *v891;
      v1217[1] = v894;
      *&v1217[2] = v892;
      static RecognizeSportBallsRequest.== infix(_:_:)(v1222, v1217);
LABEL_216:
      v930 = v473;

      if ((v930 & 1) == 0)
      {
        goto LABEL_225;
      }

      v446 = sub_1A5B688F8(v466, v469);
      goto LABEL_222;
    case 0x44u:
      v305 = v1193;
      sub_1A5B5DE58(v298, v1193, type metadata accessor for VisionResult);
      v306 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F4CD0, &unk_1A60260B0) + 48);
      v307 = v1200;
      if (swift_getEnumCaseMultiPayload() == 68)
      {
        *&v1199 = v298;
        v308 = v1122;
        sub_1A5B60994(v305 + v306, v1122, &qword_1EB1EF6F8, qword_1A60211B0);
        v309 = v1132;
        sub_1A5B60994(v307 + v306, v1132, &qword_1EB1EF6F8, qword_1A60211B0);

        v310 = sub_1A5FD4B5C();

        if ((v310 & 1) == 0)
        {

          v981 = &qword_1EB1EF6F8;
          v982 = qword_1A60211B0;
          sub_1A5B10168(v309, &qword_1EB1EF6F8, qword_1A60211B0);
          v991 = v308;
          goto LABEL_347;
        }

        v311 = v1073;
        v312 = *(v1072 + 48);
        sub_1A5B31A34(v308, v1073, &qword_1EB1EF6F8, qword_1A60211B0);
        sub_1A5B31A34(v309, v311 + v312, &qword_1EB1EF6F8, qword_1A60211B0);
        v313 = *(v1058 + 48);
        v314 = v1060;
        if (v313(v311, 1, v1060) == 1)
        {

          sub_1A5B10168(v309, &qword_1EB1EF6F8, qword_1A60211B0);
          sub_1A5B10168(v308, &qword_1EB1EF6F8, qword_1A60211B0);
          if (v313(v311 + v312, 1, v314) == 1)
          {
            v315 = &qword_1EB1EF6F8;
            v316 = qword_1A60211B0;
LABEL_208:
            v533 = v311;
            goto LABEL_209;
          }
        }

        else
        {
          v1002 = v1047;
          sub_1A5B31A34(v311, v1047, &qword_1EB1EF6F8, qword_1A60211B0);
          if (v313(v311 + v312, 1, v314) != 1)
          {
            v1005 = v311 + v312;
            v1006 = v1035;
            sub_1A5B5C4C0(v1005, v1035, type metadata accessor for PixelBufferObservation);
            sub_1A5B5E6AC(&qword_1EB1EFDE0, type metadata accessor for PixelBufferObservation, &protocol conformance descriptor for PixelBufferObservation);
            v1007 = v1002;
            v348 = sub_1A5FD3D0C();

            v1008 = type metadata accessor for PixelBufferObservation;
            sub_1A5B5DF14(v1006, type metadata accessor for PixelBufferObservation);
            v1009 = &qword_1EB1EF6F8;
            v1010 = qword_1A60211B0;
            sub_1A5B10168(v1132, &qword_1EB1EF6F8, qword_1A60211B0);
            sub_1A5B10168(v308, &qword_1EB1EF6F8, qword_1A60211B0);
            v1011 = v1007;
LABEL_398:
            sub_1A5B5DF14(v1011, v1008);
            v1016 = v311;
            goto LABEL_399;
          }

          sub_1A5B10168(v1132, &qword_1EB1EF6F8, qword_1A60211B0);
          sub_1A5B10168(v308, &qword_1EB1EF6F8, qword_1A60211B0);
          sub_1A5B5DF14(v1002, type metadata accessor for PixelBufferObservation);
        }

        v999 = &qword_1EB1EFDA0;
        v1000 = &qword_1A5FF9FB8;
        v991 = v311;
        goto LABEL_348;
      }

      v976 = &qword_1EB1EF6F8;
      v977 = qword_1A60211B0;
LABEL_292:
      sub_1A5B10168(v305 + v306, v976, v977);

LABEL_298:
      sub_1A5B10168(v298, &qword_1EB1EFDD8, &qword_1A5FF9FE8);
LABEL_299:
      v348 = 0;
      return v348 & 1;
    case 0x45u:
      v317 = v298;
      v919 = v1192;
      sub_1A5B5DE58(v298, v1192, type metadata accessor for VisionResult);
      v920 = *(v919 + 40);
      v319 = *(v919 + 48);
      v921 = v1200;
      if (swift_getEnumCaseMultiPayload() != 69)
      {
        goto LABEL_223;
      }

      v922 = *v921;
      v923 = v921[5];
      v325 = v921[6];
      v1222[0] = *v919;
      *&v1222[8] = *(v919 + 8);
      *&v1222[24] = *(v919 + 24);
      *&v1222[40] = v920;
      LOBYTE(v1217[0]) = v922;
      *(v1217 + 8) = *(v921 + 1);
      *(&v1217[1] + 8) = *(v921 + 3);
      *(&v1217[2] + 1) = v923;
      v327 = static SVYvzEtX1JlUdu8xx5qhDIRequest.== infix(_:_:)(v1222, v1217);
      goto LABEL_220;
    case 0x46u:
      v317 = v298;
      v931 = v1194;
      sub_1A5B5DE58(v298, v1194, type metadata accessor for VisionResult);
      v932 = *(v931 + 48);
      v319 = *(v931 + 56);
      v933 = v1200;
      if (swift_getEnumCaseMultiPayload() != 70)
      {
        goto LABEL_223;
      }

      v934 = *(v931 + 40);
      v935 = *v933;
      v936 = *(v933 + 40);
      v937 = v933[6];
      v325 = v933[7];
      v1222[0] = *v931;
      *&v1222[8] = *(v931 + 8);
      *&v1222[24] = *(v931 + 24);
      v1222[40] = v934;
      *&v1223 = v932;
      LOBYTE(v1217[0]) = v935;
      *(v1217 + 8) = *(v933 + 1);
      *(&v1217[1] + 8) = *(v933 + 3);
      BYTE8(v1217[2]) = v936;
      *&v1218 = v937;
      v327 = static S5kJNH3eYuyaLxNpZr5Z7ziRequest.== infix(_:_:)(v1222, v1217);
      goto LABEL_220;
    case 0x47u:
      v317 = v298;
      v605 = v1195;
      sub_1A5B5DE58(v298, v1195, type metadata accessor for VisionResult);
      v606 = *(v605 + 48);
      v319 = *(v605 + 56);
      v607 = v1200;
      if (swift_getEnumCaseMultiPayload() != 71)
      {
LABEL_223:

LABEL_224:

        v298 = v317;
        goto LABEL_298;
      }

      v608 = *(v605 + 40);
      v609 = *v607;
      v610 = *(v607 + 40);
      v611 = v607[6];
      v325 = v607[7];
      v1222[0] = *v605;
      *&v1222[8] = *(v605 + 8);
      *&v1222[24] = *(v605 + 24);
      v1222[40] = v608;
      *&v1223 = v606;
      LOBYTE(v1217[0]) = v609;
      *(v1217 + 8) = *(v607 + 1);
      *(&v1217[1] + 8) = *(v607 + 3);
      BYTE8(v1217[2]) = v610;
      *&v1218 = v611;
      v327 = static S6Mb1ME89lyW3HpahkEygIGRequest.== infix(_:_:)(v1222, v1217);
LABEL_220:
      v938 = v327;

      if (v938)
      {
        v446 = sub_1A5B676B0(v319, v325);
LABEL_222:
        v348 = v446;
      }

      else
      {
LABEL_225:
        v348 = 0;
      }

      v298 = v317;
LABEL_227:

LABEL_228:
      v939 = v298;
      goto LABEL_355;
    case 0x48u:
      v746 = v1196;
      sub_1A5B5DE58(v298, v1196, type metadata accessor for VisionResult);
      v959 = *(v746 + 48);
      v748 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF600, &qword_1A5FF9C48) + 48);
      v960 = v1200;
      if (swift_getEnumCaseMultiPayload() == 72)
      {
        *&v1199 = v298;
        LODWORD(v1197) = *(v746 + 40);
        v961 = *v746;
        v962 = *v960;
        LODWORD(v1198) = *(v960 + 40);
        v963 = v960[6];
        v1193 = *(v746 + 8);
        v1192 = *(v746 + 24);
        v1195 = *(v960 + 1);
        v1194 = *(v960 + 3);
        v964 = v746 + v748;
        v754 = v1120;
        sub_1A5B5C4C0(v964, v1120, type metadata accessor for S1vLyVSh30UQ26TGBoV8MHvObservation);
        v965 = v960 + v748;
        v756 = v1121;
        sub_1A5B5C4C0(v965, v1121, type metadata accessor for S1vLyVSh30UQ26TGBoV8MHvObservation);
        v1222[0] = v961;
        *&v1222[24] = v1192;
        *&v1222[8] = v1193;
        v1222[40] = v1197;
        *&v1223 = v959;
        LOBYTE(v1217[0]) = v962;
        *(&v1217[1] + 8) = v1194;
        *(v1217 + 8) = v1195;
        BYTE8(v1217[2]) = v1198;
        *&v1218 = v963;
        v966 = static S1JC7R3k4455fKQz0dY1VhQRequest.== infix(_:_:)(v1222, v1217);

        if (v966)
        {
          v348 = static S1vLyVSh30UQ26TGBoV8MHvObservation.== infix(_:_:)(v754, v756, v967);
        }

        else
        {
          v348 = 0;
        }

        v995 = type metadata accessor for S1vLyVSh30UQ26TGBoV8MHvObservation;
LABEL_352:
        v992 = v995;
        sub_1A5B5DF14(v756, v995);
        v993 = v754;
LABEL_353:
        sub_1A5B5DF14(v993, v992);
LABEL_354:
        v939 = v1199;
        goto LABEL_355;
      }

      v984 = type metadata accessor for S1vLyVSh30UQ26TGBoV8MHvObservation;
LABEL_295:
      v978 = v984;
      v979 = v746 + v748;
LABEL_296:
      sub_1A5B5DF14(v979, v978);
      goto LABEL_297;
    default:
      goto LABEL_298;
  }
}