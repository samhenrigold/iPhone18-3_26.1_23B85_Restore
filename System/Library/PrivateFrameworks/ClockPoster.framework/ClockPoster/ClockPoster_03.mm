void sub_1E48FC5F4(uint64_t *a1, unsigned int *a2)
{
  if (!a1)
  {
    return;
  }

  v3 = *a2;
  v4 = *(a2 + 1);
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      goto LABEL_30;
    }

    if (v3 != 4)
    {
LABEL_29:
      v3 = v3 == 1;
      goto LABEL_30;
    }

    v5 = *a1;
    if (!*(*a1 + 16))
    {
      return;
    }

    v6 = 0x7368746170627573;
    v7 = sub_1E494812C(0x7368746170627573, 0xE800000000000000);
    if ((v8 & 1) == 0)
    {
      return;
    }

    sub_1E48C12D0(*(v5 + 56) + 32 * v7, &v76, &unk_1ECF81660, &qword_1E49A3AE0);
    v78 = v76;
    v79 = v77;
    if (!*(&v77 + 1))
    {
      goto LABEL_64;
    }

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FC40, &qword_1E499E5A8);
    v10 = MEMORY[0x1E69E7CA0];
    if ((swift_dynamicCast() & 1) == 0)
    {
      return;
    }

    x = v75.x;
    v12 = *(*&v75.x + 16);
    if (!v12)
    {
      goto LABEL_86;
    }

    v13 = *(*&v75.x + 8 * v12 + 24);
    if (*(v13 + 16))
    {
      v14 = *(v13 + 32);
      if (*(v14 + 2))
      {
        v15 = *a1;
        if (*(*a1 + 16))
        {
          v16 = v14[4];
          v17 = v14[5];
          v18 = sub_1E494812C(0x50746E6572727563, 0xEC000000746E696FLL);
          if (v19)
          {
            sub_1E48C12D0(*(v15 + 56) + 32 * v18, &v76, &unk_1ECF81660, &qword_1E49A3AE0);
            v78 = v76;
            v79 = v77;
            if (*(&v77 + 1))
            {
              type metadata accessor for CGPoint(0);
              if (swift_dynamicCast())
              {
                v80.x = v16;
                v80.y = v17;
                if (!CGPointEqualToPoint(v75, v80))
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FC50, &qword_1E499E5C0);
                  v5 = swift_allocObject();
                  *(v5 + 16) = xmmword_1E499A180;
                  *(v5 + 32) = v75;
                  *(v5 + 48) = v16;
                  *(v5 + 56) = v17;
                  if (!*(*&v75.x + 16))
                  {

                    return;
                  }

                  if (swift_isUniquelyReferenced_nonNull_native())
                  {
                    v20 = *(*&v75.x + 16);
                    if (v20)
                    {
                      goto LABEL_23;
                    }

                    goto LABEL_94;
                  }

LABEL_93:
                  x = COERCE_DOUBLE(sub_1E48EA4D0(*&x));
                  v20 = *(*&x + 16);
                  if (v20)
                  {
LABEL_23:
                    v21 = v20 - 1;
                    v10 = *(*&x + 8 * v21 + 32);
                    *(*&x + 16) = v21;
                    if (swift_isUniquelyReferenced_nonNull_native())
                    {
LABEL_24:
                      v23 = v10[2];
                      v22 = v10[3];
                      if (v23 >= v22 >> 1)
                      {
                        v10 = sub_1E4906620((v22 > 1), v23 + 1, 1, v10);
                      }

                      v10[2] = v23 + 1;
                      v10[v23 + 4] = v5;
                      v25 = *(*&x + 16);
                      v24 = *(*&x + 24);
                      if (v25 >= v24 >> 1)
                      {
                        x = COERCE_DOUBLE(sub_1E4906644((v24 > 1), v25 + 1, 1, *&x));
                      }

                      *(*&x + 16) = v25 + 1;
                      *(*&x + 8 * v25 + 32) = v10;
                      goto LABEL_84;
                    }

LABEL_95:
                    v10 = sub_1E4906620(0, v10[2] + 1, 1, v10);
                    goto LABEL_24;
                  }

LABEL_94:
                  __break(1u);
                  goto LABEL_95;
                }
              }
            }

            else
            {
              sub_1E48C1338(&v78, &unk_1ECF81660, &qword_1E49A3AE0);
            }
          }
        }
      }

LABEL_86:

      return;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v64 = *(*&v75.x + 16);
      if (v64)
      {
LABEL_83:
        *(*&x + 16) = v64 - 1;

LABEL_84:
        *(&v79 + 1) = v9;
        *&v78 = x;
LABEL_45:
        v42 = v6;
        v43 = 0xE800000000000000;
LABEL_79:
        sub_1E4970CBC(&v78, v42, v43);
        return;
      }
    }

    else
    {
      x = COERCE_DOUBLE(sub_1E48EA4D0(*&v75.x));
      v64 = *(*&x + 16);
      if (v64)
      {
        goto LABEL_83;
      }
    }

    __break(1u);
    goto LABEL_93;
  }

  if (v3)
  {
    if (v3 == 2)
    {
      v3 = 2;
LABEL_30:
      v6 = 0xEC000000746E696FLL;
      v26 = 0x50746E6572727563;
      v27 = *a1;
      if (*(*a1 + 16))
      {
        v28 = sub_1E494812C(0x50746E6572727563, 0xEC000000746E696FLL);
        if (v29)
        {
          sub_1E48C12D0(*(v27 + 56) + 32 * v28, &v76, &unk_1ECF81660, &qword_1E49A3AE0);
          v78 = v76;
          v79 = v77;
          if (*(&v77 + 1))
          {
            type metadata accessor for CGPoint(0);
            if (swift_dynamicCast())
            {
              v30 = sub_1E490640C(0, 1, 1, MEMORY[0x1E69E7CC0]);
              v32 = *(v30 + 2);
              v31 = *(v30 + 3);
              if (v32 >= v31 >> 1)
              {
                v30 = sub_1E490640C((v31 > 1), v32 + 1, 1, v30);
              }

              *(v30 + 2) = v32 + 1;
              *&v30[16 * v32 + 32] = v75;
LABEL_48:
              if (v3)
              {
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v30 = sub_1E490640C(0, *(v30 + 2) + 1, 1, v30);
                }

                v44 = *(v30 + 2);
                do
                {
                  v45 = *v4;
                  v46 = *(v30 + 3);
                  if (v44 >= v46 >> 1)
                  {
                    v71 = *v4;
                    v47 = sub_1E490640C((v46 > 1), v44 + 1, 1, v30);
                    v45 = v71;
                    v30 = v47;
                  }

                  *(v30 + 2) = v44 + 1;
                  *&v30[16 * v44 + 32] = v45;
                  ++v4;
                  ++v44;
                  --v3;
                }

                while (v3);
              }

              v48 = *a1;
              if (!*(*a1 + 16))
              {
                goto LABEL_75;
              }

              v49 = sub_1E494812C(0x7368746170627573, 0xE800000000000000);
              if ((v50 & 1) == 0)
              {
                goto LABEL_75;
              }

              sub_1E48C12D0(*(v48 + 56) + 32 * v49, &v76, &unk_1ECF81660, &qword_1E49A3AE0);
              v78 = v76;
              v79 = v77;
              if (*(&v77 + 1))
              {
                v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FC40, &qword_1E499E5A8);
                if (swift_dynamicCast())
                {
                  v51 = v75.x;
                  if (!*(*&v75.x + 16))
                  {
                    v54 = MEMORY[0x1E69E7CC0];
                    goto LABEL_66;
                  }

                  if (swift_isUniquelyReferenced_nonNull_native())
                  {
                    v52 = *(*&v75.x + 16);
                    if (v52)
                    {
LABEL_62:
                      v53 = v52 - 1;
                      v54 = *(*&v51 + 8 * v53 + 32);
                      *(*&v51 + 16) = v53;
LABEL_66:

                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v54 = sub_1E4906620(0, v54[2] + 1, 1, v54);
                      }

                      v55 = v54[2];
                      v56 = v54[3];
                      v57 = v55 + 1;
                      if (v55 >= v56 >> 1)
                      {
                        v73 = v55 + 1;
                        v65 = v54;
                        v66 = v54[2];
                        v67 = sub_1E4906620((v56 > 1), v55 + 1, 1, v65);
                        v55 = v66;
                        v57 = v73;
                        v54 = v67;
                      }

                      v54[2] = v57;
                      v54[v55 + 4] = v30;
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v51 = COERCE_DOUBLE(sub_1E4906644(0, *(*&v51 + 16) + 1, 1, *&v51));
                      }

                      v58 = *(*&v51 + 16);
                      v59 = *(*&v51 + 24);
                      v60 = v58 + 1;
                      if (v58 >= v59 >> 1)
                      {
                        v74 = v58 + 1;
                        v68 = v51;
                        v69 = *(*&v51 + 16);
                        v70 = COERCE_DOUBLE(sub_1E4906644((v59 > 1), v58 + 1, 1, *&v68));
                        v58 = v69;
                        v60 = v74;
                        v51 = v70;
                      }

                      *(*&v51 + 16) = v60;
                      *(*&v51 + 8 * v58 + 32) = v54;
                      *(&v79 + 1) = v39;
                      *&v78 = v51;
                      sub_1E4970CBC(&v78, 0x7368746170627573, 0xE800000000000000);
                      goto LABEL_75;
                    }
                  }

                  else
                  {
                    v51 = COERCE_DOUBLE(sub_1E48EA4D0(*&v75.x));
                    v52 = *(*&v51 + 16);
                    if (v52)
                    {
                      goto LABEL_62;
                    }
                  }

                  __break(1u);
LABEL_90:
                  v26 = sub_1E4906644(0, *(v26 + 16) + 1, 1, v26);
LABEL_42:
                  v41 = *(v26 + 16);
                  v40 = *(v26 + 24);
                  if (v41 >= v40 >> 1)
                  {
                    v26 = sub_1E4906644((v40 > 1), v41 + 1, 1, v26);
                  }

                  *(v26 + 16) = v41 + 1;
                  *(v26 + 8 * v41 + 32) = MEMORY[0x1E69E7CC0];
                  *(&v79 + 1) = v39;
                  *&v78 = v26;
                  goto LABEL_45;
                }
              }

              else
              {
                sub_1E48C1338(&v78, &unk_1ECF81660, &qword_1E49A3AE0);
              }

LABEL_75:
              v61 = *(v30 + 2);
              if (v61)
              {
                v72 = *&v30[16 * v61 + 16];

                type metadata accessor for CGPoint(0);
                v63 = v72;
              }

              else
              {

                *&v79 = 0;
                v63 = 0uLL;
                v62 = 1;
              }

              v78 = v63;
              *(&v79 + 1) = v62;
              v42 = 0x50746E6572727563;
              v43 = 0xEC000000746E696FLL;
              goto LABEL_79;
            }
          }

          else
          {
            sub_1E48C1338(&v78, &unk_1ECF81660, &qword_1E49A3AE0);
          }
        }
      }

      v30 = MEMORY[0x1E69E7CC0];
      goto LABEL_48;
    }

    goto LABEL_29;
  }

  v33 = *v4;
  v34 = *(v4 + 1);
  type metadata accessor for CGPoint(0);
  *(&v79 + 1) = v35;
  *&v78 = v33;
  *(&v78 + 1) = v34;
  sub_1E4970CBC(&v78, 0x50746E6572727563, 0xEC000000746E696FLL);
  v36 = *a1;
  if (*(*a1 + 16))
  {
    v6 = 0x7368746170627573;
    v37 = sub_1E494812C(0x7368746170627573, 0xE800000000000000);
    if (v38)
    {
      sub_1E48C12D0(*(v36 + 56) + 32 * v37, &v76, &unk_1ECF81660, &qword_1E49A3AE0);
      v78 = v76;
      v79 = v77;
      if (*(&v77 + 1))
      {
        v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FC40, &qword_1E499E5A8);
        if ((swift_dynamicCast() & 1) == 0)
        {
          return;
        }

        v26 = *&v75.x;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_42;
        }

        goto LABEL_90;
      }

LABEL_64:
      sub_1E48C1338(&v78, &unk_1ECF81660, &qword_1E49A3AE0);
    }
  }
}

void sub_1E48FCF34(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v61 = a2;
  v62 = a5;
  v63 = a3;
  type metadata accessor for CGPoint(0);
  v72 = v7;
  v73 = &off_1F5E84E08;
  v71 = 0uLL;
  v8 = *(a1 + 16);
  if (v8)
  {
    *&v64 = 1.0 - a4;
    v9 = (a1 + 32);
    v10 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v11 = *v9;
      v12 = *(*v9 + 16);
      if (!v12)
      {
        break;
      }

      sub_1E48CD210(v11 + 32, &v68);
      if (v12 == 1)
      {
        goto LABEL_24;
      }

      sub_1E48CD210(v11 + 72, v65);
      v13 = v69;
      v14 = v70;
      __swift_project_boxed_opaque_existential_1(&v68, v69);
      v15 = (v14[1])(v13, v14);
      v16 = v66;
      v17 = v67;
      __swift_project_boxed_opaque_existential_1(v65, v66);
      v18 = (*(v17 + 8))(v16, v17);
      v19 = v69;
      v20 = v70;
      __swift_project_boxed_opaque_existential_1(&v68, v69);
      v21 = (v20[4])(v19, v20);
      v22 = v66;
      v23 = v67;
      __swift_project_boxed_opaque_existential_1(v65, v66);
      v24 = (*(v23 + 32))(v22, v23);
      v25 = v66;
      v26 = v67;
      __swift_project_boxed_opaque_existential_1(v65, v66);
      v27 = (*(v26 + 8))(v25, v26);
      v28 = v69;
      v29 = v70;
      __swift_project_boxed_opaque_existential_1(&v68, v69);
      v30 = v27 - (v29[1])(v28, v29);
      v31 = v66;
      v32 = v67;
      __swift_project_boxed_opaque_existential_1(v65, v66);
      v33 = (*(v32 + 32))(v31, v32);
      v34 = v69;
      v35 = v70;
      __swift_project_boxed_opaque_existential_1(&v68, v69);
      v36 = v33 - (v35[4])(v34, v35);
      v37 = sqrt(v30 * v30 + v36 * v36);
      v38 = 0.0;
      v39 = 0.0;
      if (v37 > 0.0)
      {
        v38 = v30 / v37;
        v39 = v36 / v37;
      }

      v40 = *&v64 * v15 + v18 * a4;
      v41 = *&v64 * v21 + v24 * a4;
      __swift_destroy_boxed_opaque_existential_0Tm(v65);
      __swift_destroy_boxed_opaque_existential_0Tm(&v68);
      v69 = &type metadata for SamplePoint;
      v70 = &off_1F5E84FA8;
      v42 = swift_allocObject();
      *&v68 = v42;
      *(v42 + 16) = v40;
      *(v42 + 24) = v41;
      *(v42 + 32) = v38;
      *(v42 + 40) = v39;
      *(v42 + 48) = 0;
      __swift_destroy_boxed_opaque_existential_0Tm(&v71);
      sub_1E48B7448(&v68, &v71);
      sub_1E48CD210(&v71, &v68);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v74 = v10;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v10 = sub_1E49063D4(0, v10[2] + 1, 1, v10);
        v74 = v10;
      }

      v45 = v10[2];
      v44 = v10[3];
      if (v45 >= v44 >> 1)
      {
        v10 = sub_1E49063D4((v44 > 1), v45 + 1, 1, v10);
        v74 = v10;
      }

      v46 = v69;
      v47 = v70;
      v48 = __swift_mutable_project_boxed_opaque_existential_1(&v68, v69);
      v49 = MEMORY[0x1EEE9AC00](v48);
      v51 = &v60 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v52 + 16))(v51, v49);
      sub_1E48FD504(v45, v51, &v74, v46, v47);
      __swift_destroy_boxed_opaque_existential_0Tm(&v68);
      ++v9;
      if (!--v8)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
LABEL_14:
    v53 = v10[2];
    if (v53 >= 2)
    {
      v54 = v53 - 1;
      v55 = (v10 + 9);
      v56 = MEMORY[0x1E69E7CC0];
      v64 = xmmword_1E499A180;
      do
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FC20, &unk_1E49A02B0);
        v57 = swift_allocObject();
        *(v57 + 16) = v64;
        sub_1E48CD210(v55 - 40, v57 + 32);
        sub_1E48CD210(v55, v57 + 72);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v56 = sub_1E49063B0(0, v56[2] + 1, 1, v56);
        }

        v59 = v56[2];
        v58 = v56[3];
        if (v59 >= v58 >> 1)
        {
          v56 = sub_1E49063B0((v58 > 1), v59 + 1, 1, v56);
        }

        v56[2] = v59 + 1;
        v56[v59 + 4] = v57;
        v55 += 40;
        --v54;
      }

      while (v54);
      sub_1E48FCF34(v56, v61 & 1, &v68, a4, v62);

      __swift_destroy_boxed_opaque_existential_0Tm(&v71);
      sub_1E48B7448(&v68, &v71);
    }

    sub_1E48B7448(&v71, v63);
  }
}

uint64_t sub_1E48FD504(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_0, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_1E48B7448(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_1E48FD59C(const CGPath *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FC38, &qword_1E499E5A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E499A180;
  strcpy((inited + 32), "currentPoint");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  *(inited + 48) = 0u;
  *(inited + 64) = 0u;
  *(inited + 80) = 0x7368746170627573;
  *(inited + 88) = 0xE800000000000000;
  *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FC40, &qword_1E499E5A8);
  *(inited + 96) = MEMORY[0x1E69E7CC0];
  v3 = sub_1E494962C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FC48, &unk_1E499E5B0);
  swift_arrayDestroy();
  info = v3;
  CGPathApply(a1, &info, sub_1E48FCF30);
  v4 = info;
  if (!*(info + 16))
  {
    goto LABEL_7;
  }

  v5 = sub_1E494812C(0x7368746170627573, 0xE800000000000000);
  if ((v6 & 1) == 0)
  {
    goto LABEL_7;
  }

  sub_1E48C12D0(*(v4 + 56) + 32 * v5, &v11, &unk_1ECF81660, &qword_1E49A3AE0);
  v13[0] = v11;
  v13[1] = v12;
  if (!*(&v12 + 1))
  {
    sub_1E48C1338(v13, &unk_1ECF81660, &qword_1E49A3AE0);
    goto LABEL_7;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v7 = MEMORY[0x1E69E7CC0];
    goto LABEL_8;
  }

  v7 = v9;
LABEL_8:

  return v7;
}

uint64_t sub_1E48FD7A0(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v1 == 1)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v1 < 3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v1 == 3)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

char *sub_1E48FD854(char *result, uint64_t a2, double a3)
{
  v3 = *(result + 2);
  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  if (v3 <= *(a2 + 16))
  {
    v5 = (result + 32);
    v6 = (a2 + 32);
    v7 = MEMORY[0x1E69E7CC0];
    v8 = 0.0;
    do
    {
      v9 = *v5;
      v10 = *v6;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1E49062AC(0, *(v7 + 2) + 1, 1, v7);
      }

      v12 = *(v7 + 2);
      v11 = *(v7 + 3);
      if (v12 >= v11 >> 1)
      {
        v7 = sub_1E49062AC((v11 > 1), v12 + 1, 1, v7);
      }

      *(v7 + 2) = v12 + 1;
      *&v7[8 * v12 + 32] = v9 + a3 + v10 * 0.5 - v8;
      ++v6;
      v5 += 2;
      v8 = v9 + a3 + v10 * 0.5;
      --v3;
    }

    while (v3);
    return v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E48FD970(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 == 1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v1 < 3)
  {
LABEL_7:
    __break(1u);
  }

  return result;
}

double sub_1E48FD9F4(uint64_t result)
{
  v1 = *(result + 16);
  switch(v1)
  {
    case 2:
      v3 = vsubq_f64(*(result + 48), *(result + 32));
      return sqrt(vaddvq_f64(vmulq_f64(v3, v3)));
    case 3:
      sub_1E48FD970(result);
      break;
    case 4:
      sub_1E48FD7A0(result);
      break;
    default:
      return 0.0;
  }

  return v2;
}

double sub_1E48FDA38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 - 8);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v19, v17);
  (*(v11 + 16))(v13, a2, a4);
  v20 = (*(a6 + 8))(a4, a6);
  v21 = v20 - (*(a5 + 8))(a3, a5);
  v22 = (*(a6 + 32))(a4, a6);
  v23 = (*(a5 + 32))(a3, a5);
  v24 = sqrt(v21 * v21 + (v22 - v23) * (v22 - v23));
  (*(v15 + 8))(v19, a3);
  (*(v11 + 8))(v13, a4);
  return v24;
}

CGFloat sub_1E48FDC7C@<D0>(void *a1@<X0>, _OWORD *a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  v10 = *(v9 + 56);
  v11 = v10(v8, v9) * a3 * 0.5;
  v12 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  v14 = (*(v13 + 80))(v12, v13) * a3 * 0.5;
  v15 = a1[3];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v15);
  v17 = (*(v16 + 80))(v15, v16) * a4 * 0.5;
  v18 = v10(v8, v9) * a4 * 0.5;
  v19 = v10(v8, v9);
  v20 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v20);
  v22 = (*(v21 + 80))(v20, v21);
  v23 = a1[3];
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v23);
  v25 = -(*(v24 + 80))(v23, v24);
  v26 = v10(v8, v9);
  v27 = a1[3];
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v27);
  v29 = (*(v28 + 8))(v27, v28) + v17 - v11;
  v30 = a1[3];
  v31 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v30);
  v32 = (*(v31 + 32))(v30, v31);
  CGAffineTransformMake(&v36, v19, v22, v25, v26, v29, v32 - v18 - v14);
  result = v36.a;
  v34 = *&v36.c;
  v35 = *&v36.tx;
  *a2 = *&v36.a;
  a2[1] = v34;
  a2[2] = v35;
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

__n128 __swift_memcpy28_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 12) = *(a2 + 12);
  *a1 = result;
  return result;
}

uint64_t sub_1E48FDFB8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 28))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E48FDFD8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 28) = v3;
  return result;
}

uint64_t sub_1E48FE018()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FB58, &unk_1E499E500);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1E499B670;
  v2 = *v0;
  v3 = MEMORY[0x1E69E6438];
  *(v1 + 56) = MEMORY[0x1E69E63B0];
  *(v1 + 64) = v3;
  *(v1 + 32) = v2;
  v4 = sub_1E4997EFC();
  MEMORY[0x1E691B7A0](v4);

  MEMORY[0x1E691B7A0](32, 0xE100000000000000);
  MEMORY[0x1E691B7A0](0x3D656D6974, 0xE500000000000000);

  noise2();
  v6 = v0[5];
  v7 = -v6;
  if (v6 < fabsf(v5))
  {
    if (v5 < v7)
    {
      v5 = -v6;
    }

    if (v5 >= v6)
    {
      v5 = v0[5];
    }
  }

  v8 = v0[3];
  v9 = v0[4] - v8;
  v10 = v0[6];
  v11 = fmodf(v8 + ((1.0 - ((v6 - v5) / (v6 + v6))) * v9), v10);
  if (v11 >= 0.0)
  {
    v12 = 43;
  }

  else
  {
    v12 = 0;
  }

  if (v11 >= 0.0)
  {
    v13 = 0xE100000000000000;
  }

  else
  {
    v13 = 0xE000000000000000;
  }

  MEMORY[0x1E691B7A0](v12, v13);

  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1E499B670;
  noise2();
  if (v6 < fabsf(v15))
  {
    if (v15 < v7)
    {
      v15 = -v6;
    }

    if (v15 >= v6)
    {
      v15 = v6;
    }
  }

  v16 = fmodf(v8 + (v9 * (1.0 - ((v6 - v15) / (v6 + v6)))), v10);
  v17 = MEMORY[0x1E69E64A8];
  *(v14 + 56) = MEMORY[0x1E69E6448];
  *(v14 + 64) = v17;
  *(v14 + 32) = v16;
  v18 = sub_1E4997EFC();
  MEMORY[0x1E691B7A0](v18);

  MEMORY[0x1E691B7A0](2107689, 0xE300000000000000);

  MEMORY[0x1E691B7A0](0x3D6573696F6ELL, 0xE600000000000000);

  return 0x28326573696F6E70;
}

unint64_t sub_1E48FE338(uint64_t a1)
{
  *(a1 + 8) = sub_1E48FE368();
  result = sub_1E48FE3BC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1E48FE368()
{
  result = qword_1ECF7FC58;
  if (!qword_1ECF7FC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7FC58);
  }

  return result;
}

unint64_t sub_1E48FE3BC()
{
  result = qword_1ECF7FC60;
  if (!qword_1ECF7FC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7FC60);
  }

  return result;
}

CTFontRef sub_1E48FE410()
{
  result = sub_1E48C4014(3u, 0x4055400000000000, 0, 400.0);
  qword_1ECF81920 = result;
  return result;
}

id sub_1E48FE448()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69793D0]);
  LODWORD(v1) = 1051260355;
  LODWORD(v2) = 1059816735;
  LODWORD(v3) = 1.0;
  result = [v0 initWithControlPoints__:v1 :{0.0, v2, v3}];
  qword_1ECF81928 = result;
  return result;
}

void sub_1E48FE49C()
{
  v0 = [objc_opt_self() systemFontOfSize:22.0 weight:*MEMORY[0x1E69DB980]];
  v1 = [v0 fontDescriptor];

  v2 = [v1 fontDescriptorWithDesign_];
  if (!v2)
  {
    v2 = v1;
  }

  v3 = v2;
  v4 = CTFontCreateWithFontDescriptor(v2, 0.0, 0);

  qword_1ECF81930 = v4;
}

uint64_t sub_1E48FE560()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FC78, &qword_1E499FCF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E499B670;
  v1 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v2 = qword_1ECF7EB00;
  v3 = v1;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = qword_1ECF81930;
  *(inited + 40) = qword_1ECF81930;
  v5 = v4;
  v6 = sub_1E4949534(inited);
  swift_setDeallocating();
  result = sub_1E49018D4(inited + 32);
  qword_1ECF81938 = v6;
  return result;
}

uint64_t sub_1E48FE634()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FC68, &qword_1E499FCE0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1E499E6E0;
  *(v0 + 32) = 48;
  *(v0 + 40) = 0xE100000000000000;
  sub_1E48FEFF4(48, 0xE100000000000000);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_1E48FF1C4(48, 0xE100000000000000);
  *(v0 + 48) = v2;
  *(v0 + 56) = v4;
  *(v0 + 64) = v6;
  *(v0 + 72) = v8;
  *(v0 + 80) = v9;
  *(v0 + 88) = 49;
  *(v0 + 96) = 0xE100000000000000;
  sub_1E48FEFF4(49, 0xE100000000000000);
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = sub_1E48FF1C4(49, 0xE100000000000000);
  *(v0 + 104) = v11;
  *(v0 + 112) = v13;
  *(v0 + 120) = v15;
  *(v0 + 128) = v17;
  *(v0 + 136) = v18;
  *(v0 + 144) = 50;
  *(v0 + 152) = 0xE100000000000000;
  sub_1E48FEFF4(50, 0xE100000000000000);
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = sub_1E48FF1C4(50, 0xE100000000000000);
  *(v0 + 160) = v20;
  *(v0 + 168) = v22;
  *(v0 + 176) = v24;
  *(v0 + 184) = v26;
  *(v0 + 192) = v27;
  *(v0 + 200) = 51;
  *(v0 + 208) = 0xE100000000000000;
  sub_1E48FEFF4(51, 0xE100000000000000);
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = sub_1E48FF1C4(51, 0xE100000000000000);
  *(v0 + 216) = v29;
  *(v0 + 224) = v31;
  *(v0 + 232) = v33;
  *(v0 + 240) = v35;
  *(v0 + 248) = v36;
  *(v0 + 256) = 52;
  *(v0 + 264) = 0xE100000000000000;
  sub_1E48FEFF4(52, 0xE100000000000000);
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v45 = sub_1E48FF1C4(52, 0xE100000000000000);
  *(v0 + 272) = v38;
  *(v0 + 280) = v40;
  *(v0 + 288) = v42;
  *(v0 + 296) = v44;
  *(v0 + 304) = v45;
  *(v0 + 312) = 53;
  *(v0 + 320) = 0xE100000000000000;
  sub_1E48FEFF4(53, 0xE100000000000000);
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v54 = sub_1E48FF1C4(53, 0xE100000000000000);
  *(v0 + 328) = v47;
  *(v0 + 336) = v49;
  *(v0 + 344) = v51;
  *(v0 + 352) = v53;
  *(v0 + 360) = v54;
  *(v0 + 368) = 54;
  *(v0 + 376) = 0xE100000000000000;
  sub_1E48FEFF4(54, 0xE100000000000000);
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v62 = v61;
  v63 = sub_1E48FF1C4(54, 0xE100000000000000);
  *(v0 + 384) = v56;
  *(v0 + 392) = v58;
  *(v0 + 400) = v60;
  *(v0 + 408) = v62;
  *(v0 + 416) = v63;
  *(v0 + 424) = 55;
  *(v0 + 432) = 0xE100000000000000;
  sub_1E48FEFF4(55, 0xE100000000000000);
  v65 = v64;
  v67 = v66;
  v69 = v68;
  v71 = v70;
  v72 = sub_1E48FF1C4(55, 0xE100000000000000);
  *(v0 + 440) = v65;
  *(v0 + 448) = v67;
  *(v0 + 456) = v69;
  *(v0 + 464) = v71;
  *(v0 + 472) = v72;
  *(v0 + 480) = 56;
  *(v0 + 488) = 0xE100000000000000;
  sub_1E48FEFF4(56, 0xE100000000000000);
  v74 = v73;
  v76 = v75;
  v78 = v77;
  v80 = v79;
  v81 = sub_1E48FF1C4(56, 0xE100000000000000);
  *(v0 + 496) = v74;
  *(v0 + 504) = v76;
  *(v0 + 512) = v78;
  *(v0 + 520) = v80;
  *(v0 + 528) = v81;
  *(v0 + 536) = 57;
  *(v0 + 544) = 0xE100000000000000;
  sub_1E48FEFF4(57, 0xE100000000000000);
  v83 = v82;
  v85 = v84;
  v87 = v86;
  v89 = v88;
  v90 = sub_1E48FF1C4(57, 0xE100000000000000);
  *(v0 + 552) = v83;
  *(v0 + 560) = v85;
  *(v0 + 568) = v87;
  *(v0 + 576) = v89;
  *(v0 + 584) = v90;
  *(v0 + 592) = 41177;
  *(v0 + 600) = 0xA200000000000000;
  sub_1E48FEFF4(41177, 0xA200000000000000);
  v92 = v91;
  v94 = v93;
  v96 = v95;
  v98 = v97;
  v99 = sub_1E48FF1C4(41177, 0xA200000000000000);
  *(v0 + 608) = v92;
  *(v0 + 616) = v94;
  *(v0 + 624) = v96;
  *(v0 + 632) = v98;
  *(v0 + 640) = v99;
  *(v0 + 648) = 41433;
  *(v0 + 656) = 0xA200000000000000;
  sub_1E48FEFF4(41433, 0xA200000000000000);
  v101 = v100;
  v103 = v102;
  v105 = v104;
  v107 = v106;
  v108 = sub_1E48FF1C4(41433, 0xA200000000000000);
  *(v0 + 664) = v101;
  *(v0 + 672) = v103;
  *(v0 + 680) = v105;
  *(v0 + 688) = v107;
  *(v0 + 696) = v108;
  *(v0 + 704) = 41689;
  *(v0 + 712) = 0xA200000000000000;
  sub_1E48FEFF4(41689, 0xA200000000000000);
  v110 = v109;
  v112 = v111;
  v114 = v113;
  v116 = v115;
  v117 = sub_1E48FF1C4(41689, 0xA200000000000000);
  *(v0 + 720) = v110;
  *(v0 + 728) = v112;
  *(v0 + 736) = v114;
  *(v0 + 744) = v116;
  *(v0 + 752) = v117;
  *(v0 + 760) = 41945;
  *(v0 + 768) = 0xA200000000000000;
  sub_1E48FEFF4(41945, 0xA200000000000000);
  v119 = v118;
  v121 = v120;
  v123 = v122;
  v125 = v124;
  v126 = sub_1E48FF1C4(41945, 0xA200000000000000);
  *(v0 + 776) = v119;
  *(v0 + 784) = v121;
  *(v0 + 792) = v123;
  *(v0 + 800) = v125;
  *(v0 + 808) = v126;
  *(v0 + 816) = 42201;
  *(v0 + 824) = 0xA200000000000000;
  sub_1E48FEFF4(42201, 0xA200000000000000);
  v128 = v127;
  v130 = v129;
  v132 = v131;
  v134 = v133;
  v135 = sub_1E48FF1C4(42201, 0xA200000000000000);
  *(v0 + 832) = v128;
  *(v0 + 840) = v130;
  *(v0 + 848) = v132;
  *(v0 + 856) = v134;
  *(v0 + 864) = v135;
  *(v0 + 872) = 42457;
  *(v0 + 880) = 0xA200000000000000;
  sub_1E48FEFF4(42457, 0xA200000000000000);
  v137 = v136;
  v139 = v138;
  v141 = v140;
  v143 = v142;
  v144 = sub_1E48FF1C4(42457, 0xA200000000000000);
  *(v0 + 888) = v137;
  *(v0 + 896) = v139;
  *(v0 + 904) = v141;
  *(v0 + 912) = v143;
  *(v0 + 920) = v144;
  *(v0 + 928) = 42713;
  *(v0 + 936) = 0xA200000000000000;
  sub_1E48FEFF4(42713, 0xA200000000000000);
  v146 = v145;
  v148 = v147;
  v150 = v149;
  v152 = v151;
  v153 = sub_1E48FF1C4(42713, 0xA200000000000000);
  *(v0 + 944) = v146;
  *(v0 + 952) = v148;
  *(v0 + 960) = v150;
  *(v0 + 968) = v152;
  *(v0 + 976) = v153;
  *(v0 + 984) = 42969;
  *(v0 + 992) = 0xA200000000000000;
  sub_1E48FEFF4(42969, 0xA200000000000000);
  v155 = v154;
  v157 = v156;
  v159 = v158;
  v161 = v160;
  v162 = sub_1E48FF1C4(42969, 0xA200000000000000);
  *(v0 + 1000) = v155;
  *(v0 + 1008) = v157;
  *(v0 + 1016) = v159;
  *(v0 + 1024) = v161;
  *(v0 + 1032) = v162;
  *(v0 + 1040) = 43225;
  *(v0 + 1048) = 0xA200000000000000;
  sub_1E48FEFF4(43225, 0xA200000000000000);
  v164 = v163;
  v166 = v165;
  v168 = v167;
  v170 = v169;
  v171 = sub_1E48FF1C4(43225, 0xA200000000000000);
  *(v0 + 1056) = v164;
  *(v0 + 1064) = v166;
  *(v0 + 1072) = v168;
  *(v0 + 1080) = v170;
  *(v0 + 1088) = v171;
  *(v0 + 1096) = 43481;
  *(v0 + 1104) = 0xA200000000000000;
  sub_1E48FEFF4(43481, 0xA200000000000000);
  v173 = v172;
  v175 = v174;
  v177 = v176;
  v179 = v178;
  v180 = sub_1E48FF1C4(43481, 0xA200000000000000);
  *(v0 + 1112) = v173;
  *(v0 + 1120) = v175;
  *(v0 + 1128) = v177;
  *(v0 + 1136) = v179;
  *(v0 + 1144) = v180;
  *(v0 + 1152) = 46299;
  *(v0 + 1160) = 0xA200000000000000;
  sub_1E48FEFF4(46299, 0xA200000000000000);
  v182 = v181;
  v184 = v183;
  v186 = v185;
  v188 = v187;
  v189 = sub_1E48FF1C4(46299, 0xA200000000000000);
  *(v0 + 1168) = v182;
  *(v0 + 1176) = v184;
  *(v0 + 1184) = v186;
  *(v0 + 1192) = v188;
  *(v0 + 1200) = v189;
  *(v0 + 1208) = 46555;
  *(v0 + 1216) = 0xA200000000000000;
  sub_1E48FEFF4(46555, 0xA200000000000000);
  v191 = v190;
  v193 = v192;
  v195 = v194;
  v197 = v196;
  v198 = sub_1E48FF1C4(46555, 0xA200000000000000);
  *(v0 + 1224) = v191;
  *(v0 + 1232) = v193;
  *(v0 + 1240) = v195;
  *(v0 + 1248) = v197;
  *(v0 + 1256) = v198;
  *(v0 + 1264) = 46811;
  *(v0 + 1272) = 0xA200000000000000;
  sub_1E48FEFF4(46811, 0xA200000000000000);
  v200 = v199;
  v202 = v201;
  v204 = v203;
  v206 = v205;
  v207 = sub_1E48FF1C4(46811, 0xA200000000000000);
  *(v0 + 1280) = v200;
  *(v0 + 1288) = v202;
  *(v0 + 1296) = v204;
  *(v0 + 1304) = v206;
  *(v0 + 1312) = v207;
  *(v0 + 1320) = 10921440;
  *(v0 + 1328) = 0xA300000000000000;
  sub_1E48FEFF4(10921440, 0xA300000000000000);
  v209 = v208;
  v211 = v210;
  v213 = v212;
  v215 = v214;
  v216 = sub_1E48FF1C4(10921440, 0xA300000000000000);
  *(v0 + 1336) = v209;
  *(v0 + 1344) = v211;
  *(v0 + 1352) = v213;
  *(v0 + 1360) = v215;
  *(v0 + 1368) = v216;
  *(v0 + 1376) = 10986976;
  *(v0 + 1384) = 0xA300000000000000;
  sub_1E48FEFF4(10986976, 0xA300000000000000);
  v218 = v217;
  v220 = v219;
  v222 = v221;
  v224 = v223;
  v225 = sub_1E48FF1C4(10986976, 0xA300000000000000);
  *(v0 + 1392) = v218;
  *(v0 + 1400) = v220;
  *(v0 + 1408) = v222;
  *(v0 + 1416) = v224;
  *(v0 + 1424) = v225;
  *(v0 + 1432) = 11052512;
  *(v0 + 1440) = 0xA300000000000000;
  sub_1E48FEFF4(11052512, 0xA300000000000000);
  v227 = v226;
  v229 = v228;
  v231 = v230;
  v233 = v232;
  v234 = sub_1E48FF1C4(11052512, 0xA300000000000000);
  *(v0 + 1448) = v227;
  *(v0 + 1456) = v229;
  *(v0 + 1464) = v231;
  *(v0 + 1472) = v233;
  *(v0 + 1480) = v234;
  *(v0 + 1488) = 11118048;
  *(v0 + 1496) = 0xA300000000000000;
  sub_1E48FEFF4(11118048, 0xA300000000000000);
  v236 = v235;
  v238 = v237;
  v240 = v239;
  v242 = v241;
  v243 = sub_1E48FF1C4(11118048, 0xA300000000000000);
  *(v0 + 1504) = v236;
  *(v0 + 1512) = v238;
  *(v0 + 1520) = v240;
  *(v0 + 1528) = v242;
  *(v0 + 1536) = v243;
  *(v0 + 1544) = 11183584;
  *(v0 + 1552) = 0xA300000000000000;
  sub_1E48FEFF4(11183584, 0xA300000000000000);
  v245 = v244;
  v247 = v246;
  v249 = v248;
  v251 = v250;
  v252 = sub_1E48FF1C4(11183584, 0xA300000000000000);
  *(v0 + 1560) = v245;
  *(v0 + 1568) = v247;
  *(v0 + 1576) = v249;
  *(v0 + 1584) = v251;
  *(v0 + 1592) = v252;
  *(v0 + 1600) = 11249120;
  *(v0 + 1608) = 0xA300000000000000;
  sub_1E48FEFF4(11249120, 0xA300000000000000);
  v254 = v253;
  v256 = v255;
  v258 = v257;
  v260 = v259;
  v261 = sub_1E48FF1C4(11249120, 0xA300000000000000);
  *(v0 + 1616) = v254;
  *(v0 + 1624) = v256;
  *(v0 + 1632) = v258;
  *(v0 + 1640) = v260;
  *(v0 + 1648) = v261;
  *(v0 + 1656) = 11314656;
  *(v0 + 1664) = 0xA300000000000000;
  sub_1E48FEFF4(11314656, 0xA300000000000000);
  v263 = v262;
  v265 = v264;
  v267 = v266;
  v269 = v268;
  v270 = sub_1E48FF1C4(11314656, 0xA300000000000000);
  *(v0 + 1672) = v263;
  *(v0 + 1680) = v265;
  *(v0 + 1688) = v267;
  *(v0 + 1696) = v269;
  *(v0 + 1704) = v270;
  *(v0 + 1712) = 11380192;
  *(v0 + 1720) = 0xA300000000000000;
  sub_1E48FEFF4(11380192, 0xA300000000000000);
  v272 = v271;
  v274 = v273;
  v276 = v275;
  v278 = v277;
  v279 = sub_1E48FF1C4(11380192, 0xA300000000000000);
  *(v0 + 1728) = v272;
  *(v0 + 1736) = v274;
  *(v0 + 1744) = v276;
  *(v0 + 1752) = v278;
  *(v0 + 1760) = v279;
  *(v0 + 1768) = 11445728;
  *(v0 + 1776) = 0xA300000000000000;
  sub_1E48FEFF4(11445728, 0xA300000000000000);
  v281 = v280;
  v283 = v282;
  v285 = v284;
  v287 = v286;
  v288 = sub_1E48FF1C4(11445728, 0xA300000000000000);
  *(v0 + 1784) = v281;
  *(v0 + 1792) = v283;
  *(v0 + 1800) = v285;
  *(v0 + 1808) = v287;
  *(v0 + 1816) = v288;
  *(v0 + 1824) = 11511264;
  *(v0 + 1832) = 0xA300000000000000;
  sub_1E48FEFF4(11511264, 0xA300000000000000);
  v290 = v289;
  v292 = v291;
  v294 = v293;
  v296 = v295;
  v297 = sub_1E48FF1C4(11511264, 0xA300000000000000);
  *(v0 + 1840) = v290;
  *(v0 + 1848) = v292;
  *(v0 + 1856) = v294;
  *(v0 + 1864) = v296;
  *(v0 + 1872) = v297;
  v298 = sub_1E4949988(v0);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FC70, &qword_1E499FCE8);
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_1ECF81940 = v298;
  return result;
}

void sub_1E48FEFF4(uint64_t a1, unint64_t a2)
{
  if (qword_1ECF7EAF0 != -1)
  {
    swift_once();
  }

  v4 = qword_1ECF81920;

  v5 = MEMORY[0x1E691B810](a1, a2);
  if (v5)
  {
    v6 = v5;
    v7 = sub_1E4918244(v5, 0);

    v8 = sub_1E4917F70(v14, (v7 + 16), v6, a1, a2);

    if (v8 != v6)
    {
      __break(1u);
      goto LABEL_15;
    }

    v9 = *(v7 + 2);
    if (v9)
    {
      goto LABEL_6;
    }

LABEL_8:
    v10 = MEMORY[0x1E69E7CC0];
    goto LABEL_9;
  }

  v7 = MEMORY[0x1E69E7CC0];
  v9 = *(MEMORY[0x1E69E7CC0] + 16);
  if (!v9)
  {
    goto LABEL_8;
  }

LABEL_6:
  v10 = sub_1E49980EC();
  *(v10 + 16) = v9;
  bzero((v10 + 32), 2 * v9);
LABEL_9:
  GlyphsForCharacters = CTFontGetGlyphsForCharacters(v4, v7 + 16, (v10 + 32), v9);

  if (!GlyphsForCharacters)
  {
LABEL_13:

    return;
  }

  if (*(v10 + 16))
  {
    PathForGlyph = CTFontCreatePathForGlyph(v4, *(v10 + 32), 0);
    if (PathForGlyph)
    {
      v13 = PathForGlyph;
      CGPathGetBoundingBox(PathForGlyph);

      return;
    }

    goto LABEL_13;
  }

LABEL_15:
  __break(1u);
}

CGMutablePathRef sub_1E48FF1C4(uint64_t a1, uint64_t a2)
{
  if (a1 == 48 && a2 == 0xE100000000000000 || (sub_1E499884C() & 1) != 0)
  {
    goto LABEL_4;
  }

  if (a1 == 49 && a2 == 0xE100000000000000 || (sub_1E499884C() & 1) != 0)
  {
LABEL_134:
    Mutable = CGPathCreateMutable();
    sub_1E499833C();
    sub_1E499835C();
    sub_1E499835C();
    sub_1E499835C();
    goto LABEL_5;
  }

  if (a1 == 50 && a2 == 0xE100000000000000 || (sub_1E499884C() & 1) != 0)
  {
    Mutable = CGPathCreateMutable();
    sub_1E499833C();
    sub_1E499834C();
    goto LABEL_5;
  }

  if ((a1 != 51 || a2 != 0xE100000000000000) && (sub_1E499884C() & 1) == 0)
  {
    if (a1 == 52 && a2 == 0xE100000000000000 || (sub_1E499884C() & 1) != 0)
    {
      goto LABEL_134;
    }

    if (a1 == 53 && a2 == 0xE100000000000000 || (sub_1E499884C() & 1) != 0 || a1 == 54 && a2 == 0xE100000000000000 || (sub_1E499884C() & 1) != 0)
    {
      goto LABEL_4;
    }

    if (a1 == 55 && a2 == 0xE100000000000000 || (sub_1E499884C() & 1) != 0)
    {
      Mutable = CGPathCreateMutable();
      sub_1E499833C();
      sub_1E499835C();
      sub_1E499835C();
      sub_1E499835C();
      sub_1E499835C();
      sub_1E499834C();
      return Mutable;
    }

    if (a1 == 56 && a2 == 0xE100000000000000 || (sub_1E499884C() & 1) != 0 || a1 == 57 && a2 == 0xE100000000000000 || (sub_1E499884C() & 1) != 0)
    {
      goto LABEL_4;
    }

    if (a1 == 41177 && a2 == 0xA200000000000000 || (sub_1E499884C() & 1) != 0)
    {
      goto LABEL_94;
    }

    if (a1 == 41433 && a2 == 0xA200000000000000 || (sub_1E499884C() & 1) != 0 || a1 == 41689 && a2 == 0xA200000000000000 || (sub_1E499884C() & 1) != 0)
    {
      goto LABEL_134;
    }

    if (a1 == 41945 && a2 == 0xA200000000000000 || (sub_1E499884C() & 1) != 0)
    {
      goto LABEL_4;
    }

    if (a1 == 42201 && a2 == 0xA200000000000000 || (sub_1E499884C() & 1) != 0)
    {
      goto LABEL_134;
    }

    if (a1 == 42457 && a2 == 0xA200000000000000 || (sub_1E499884C() & 1) != 0)
    {
      Mutable = CGPathCreateMutable();
      sub_1E499833C();
      sub_1E499835C();
      goto LABEL_5;
    }

    if (a1 == 42713 && a2 == 0xA200000000000000 || (sub_1E499884C() & 1) != 0 || a1 == 42969 && a2 == 0xA200000000000000 || (sub_1E499884C() & 1) != 0 || a1 == 43225 && a2 == 0xA200000000000000 || (sub_1E499884C() & 1) != 0 || a1 == 43481 && a2 == 0xA200000000000000 || (sub_1E499884C() & 1) != 0)
    {
      goto LABEL_134;
    }

    if (a1 == 46299 && a2 == 0xA200000000000000 || (sub_1E499884C() & 1) != 0)
    {
      goto LABEL_94;
    }

    if (a1 == 46555 && a2 == 0xA200000000000000 || (sub_1E499884C() & 1) != 0)
    {
      goto LABEL_134;
    }

    if (a1 == 46811 && a2 == 0xA200000000000000 || (sub_1E499884C() & 1) != 0)
    {
LABEL_94:
      Mutable = CGPathCreateMutable();
      sub_1E499833C();
      sub_1E499835C();
      sub_1E499835C();
      sub_1E499835C();
      sub_1E499835C();
      goto LABEL_5;
    }

    if ((a1 != 10921440 || a2 != 0xA300000000000000) && (sub_1E499884C() & 1) == 0)
    {
      if (a1 == 10986976 && a2 == 0xA300000000000000 || (sub_1E499884C() & 1) != 0)
      {
        Mutable = CGPathCreateMutable();
        sub_1E499833C();
        sub_1E499834C();
        sub_1E499835C();
        sub_1E499835C();
        sub_1E499835C();
        goto LABEL_5;
      }

      if (a1 == 11052512 && a2 == 0xA300000000000000 || (sub_1E499884C() & 1) != 0 || a1 == 11118048 && a2 == 0xA300000000000000 || (sub_1E499884C() & 1) != 0)
      {
        goto LABEL_134;
      }

      if ((a1 != 11183584 || a2 != 0xA300000000000000) && (sub_1E499884C() & 1) == 0 && (a1 != 11249120 || a2 != 0xA300000000000000) && (sub_1E499884C() & 1) == 0 && (a1 != 11314656 || a2 != 0xA300000000000000) && (sub_1E499884C() & 1) == 0 && (a1 != 11380192 || a2 != 0xA300000000000000) && (sub_1E499884C() & 1) == 0 && (a1 != 11445728 || a2 != 0xA300000000000000) && (sub_1E499884C() & 1) == 0)
      {
        if (a1 != 11511264 || a2 != 0xA300000000000000)
        {
          sub_1E499884C();
        }

        goto LABEL_134;
      }
    }
  }

LABEL_4:
  Mutable = CGPathCreateMutable();
  sub_1E499833C();
  sub_1E499835C();
  sub_1E499835C();
LABEL_5:
  sub_1E499835C();
  return Mutable;
}

uint64_t sub_1E49018D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FC80, qword_1E499FCF8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E490195C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E49019A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E4901A64(uint64_t a1)
{
  result = type metadata accessor for SolarEvent(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1E4901B04(uint64_t a1)
{
  result = sub_1E4996D8C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1E4901B98()
{
  v1 = v0;
  v2 = type metadata accessor for SolarEvent(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E4996D8C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ECF7EB40 != -1)
  {
    swift_once();
  }

  sub_1E493BA48(v8);
  v9 = type metadata accessor for SolarCycle(0);
  sub_1E4902EB4(v1 + v9[7], v4);
  v10 = sub_1E4996CFC();
  v11 = *(v6 + 8);
  v11(v4, v5);
  if (v10)
  {
    v11(v8, v5);
    return 0;
  }

  else
  {
    sub_1E4902EB4(v1 + v9[6], v4);
    v13 = sub_1E4996CFC();
    v11(v4, v5);
    if (v13)
    {
      v11(v8, v5);
      return 3;
    }

    else
    {
      sub_1E4902EB4(v1 + v9[5], v4);
      v14 = sub_1E4996CFC();
      v11(v8, v5);
      v11(v4, v5);
      if (v14)
      {
        return 2;
      }

      else
      {
        return 1;
      }
    }
  }
}

uint64_t sub_1E4901DDC()
{
  v1 = v0;
  v2 = type metadata accessor for SolarEvent(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E4996D8C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E4901B98();
  if (qword_1ECF7EB40 != -1)
  {
    swift_once();
  }

  sub_1E493BA48(v8);
  v10 = type metadata accessor for SolarCycle(0);
  sub_1E4902EB4(v1 + *(v10 + 24), v4);
  sub_1E4996D0C();
  v11 = *(v6 + 8);
  v11(v8, v5);
  result = (v11)(v4, v5);
  if (v9 > 1u)
  {
    v13 = 0.25;
    v14 = 180.0;
    if (v9 != 2)
    {
      v13 = 0.5;
      v14 = 270.0;
    }
  }

  else
  {
    if (v9)
    {
      return result;
    }

    v13 = 0.75;
    v14 = 360.0;
  }

  if (v13 > (v14 / 360.0))
  {
    __break(1u);
  }

  return result;
}

void sub_1E490203C(uint64_t a1, double a2, double a3)
{
  v6 = sub_1E4996D8C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F008, &qword_1E499B170);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v41 - v11;
  v13 = sub_1E499708C();
  v44 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  GEOLocationCoordinate2DMake();
  v17 = v16;
  v19 = v18;
  v20 = objc_allocWithZone(MEMORY[0x1E69A1DF0]);
  v21 = sub_1E4996CEC();
  v22 = [v20 initWithLocation:v21 date:0 body:{v17, v19}];

  if (v22)
  {
    [v22 altitude];
  }

  else
  {
    v43 = v13;
    if (qword_1EE2BB450 != -1)
    {
      swift_once();
    }

    v23 = qword_1EE2BB458;
    v24 = OBJC_IVAR____TtC11ClockPoster11ClockLogger_data_private;
    swift_beginAccess();
    sub_1E48CC978(v23 + v24, v12);
    v25 = v43;
    v26 = *(v44 + 48);
    if (v26(v12, 1, v43) == 1)
    {
      sub_1E4904BF4(v15);
      if (v26(v12, 1, v25) != 1)
      {
        sub_1E48EF578(v12);
      }
    }

    else
    {
      (*(v44 + 32))(v15, v12, v25);
    }

    v27 = v6;
    (*(v7 + 16))(v9, a1, v6);
    v28 = sub_1E499706C();
    v29 = sub_1E499830C();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v47 = v42;
      *v30 = 141558531;
      *(v30 + 4) = 1752392040;
      *(v30 + 12) = 2081;
      v45 = a2;
      v46 = a3;
      type metadata accessor for CLLocationCoordinate2D(0);
      v31 = sub_1E4997F0C();
      v33 = sub_1E48CA094(v31, v32, &v47);
      v34 = v44;
      v35 = v33;

      *(v30 + 14) = v35;
      *(v30 + 22) = 2082;
      sub_1E4902B58(&qword_1ECF7F8F0, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
      v36 = sub_1E49987FC();
      v38 = v37;
      (*(v7 + 8))(v9, v27);
      v39 = sub_1E48CA094(v36, v38, &v47);

      *(v30 + 24) = v39;
      _os_log_impl(&dword_1E48B0000, v28, v29, "Failed to get elevationDegrees for location:%{private,mask.hash}s, date: %{public}s", v30, 0x20u);
      v40 = v42;
      swift_arrayDestroy();
      MEMORY[0x1E691CED0](v40, -1, -1);
      MEMORY[0x1E691CED0](v30, -1, -1);

      (*(v34 + 8))(v15, v43);
    }

    else
    {

      (*(v7 + 8))(v9, v6);
      (*(v44 + 8))(v15, v43);
    }
  }
}

uint64_t sub_1E4902540@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  sub_1E4996BAC();
  v7 = v6;
  v8 = objc_opt_self();
  GEOLocationCoordinate2DMake();
  v10 = v9;
  v12 = v11;
  [v8 nextEventOfType:8 after:v7 forLocation:v9 altitudeInDegrees:v11 accuracy:{0.0, 60.0}];
  v13 = type metadata accessor for SolarCycle(0);
  v14 = a1 + v13[8];
  sub_1E4996B9C();
  v15 = *MEMORY[0x1E69A15F8];
  [v8 prevEventOfType:8 before:v7 forLocation:v10 altitudeInDegrees:v12 accuracy:{*MEMORY[0x1E69A15F8], 60.0}];
  sub_1E4996B9C();
  sub_1E4996BAC();
  v17 = [objc_allocWithZone(MEMORY[0x1E69A2598]) initWithLocation:v10 time:v12 altitudeInDegrees:v16 accuracy:{v15, 60.0}];
  [v17 nextEventOfType_];
  v18 = a1 + v13[5];
  sub_1E4996B9C();
  [v17 nextEventOfType_];
  v19 = a1 + v13[6];
  sub_1E4996B9C();
  sub_1E4996BAC();
  [v8 prevEventOfType:512 before:? forLocation:? altitudeInDegrees:? accuracy:?];
  v20 = a1 + v13[7];
  sub_1E4996B9C();

  sub_1E490203C(v18, a2, a3);
  LODWORD(v10) = v21;
  sub_1E490203C(v20, a2, a3);
  LODWORD(a3) = v22;
  result = type metadata accessor for SolarEvent(0);
  *(a1 + *(result + 20)) = 0;
  *(a1 + *(result + 24)) = 0;
  *(v18 + *(result + 20)) = 2;
  *(v18 + *(result + 24)) = LODWORD(v10);
  *(v19 + *(result + 20)) = 1;
  *(v19 + *(result + 24)) = 0;
  *(v20 + *(result + 20)) = 3;
  *(v20 + *(result + 24)) = LODWORD(a3);
  *(v14 + *(result + 20)) = 0;
  *(v14 + *(result + 24)) = 0;
  return result;
}

unint64_t sub_1E49027AC()
{
  result = qword_1ECF7FCA8;
  if (!qword_1ECF7FCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7FCA8);
  }

  return result;
}

uint64_t sub_1E4902800()
{
  sub_1E499892C();
  sub_1E4996D8C();
  sub_1E4902B58(&qword_1ECF7FCD0, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1E4997E5C();
  v1 = type metadata accessor for SolarEvent(0);
  MEMORY[0x1E691C150](*(v0 + *(v1 + 20)));
  sub_1E499894C();
  return sub_1E499896C();
}

uint64_t sub_1E490293C(uint64_t a1, uint64_t a2)
{
  sub_1E4996D8C();
  sub_1E4902B58(&qword_1ECF7FCD0, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1E4997E5C();
  MEMORY[0x1E691C150](*(v2 + *(a2 + 20)));
  return sub_1E499894C();
}

uint64_t sub_1E49029F0(uint64_t a1, uint64_t a2)
{
  sub_1E499892C();
  sub_1E4996D8C();
  sub_1E4902B58(&qword_1ECF7FCD0, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1E4997E5C();
  MEMORY[0x1E691C150](*(v2 + *(a2 + 20)));
  sub_1E499894C();
  return sub_1E499896C();
}

uint64_t sub_1E4902AB8(uint64_t a1, __n128 a2)
{
  result = sub_1E4902B58(&qword_1ECF7FCB0, type metadata accessor for SolarEvent, &unk_1E499FDF0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1E4902B58(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E4902BA0(uint64_t a1)
{
  sub_1E4996D8C();
  sub_1E4902B58(&qword_1ECF7FCD0, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1E4997E5C();
  v2 = type metadata accessor for SolarEvent(0);
  MEMORY[0x1E691C150](*(v1 + *(v2 + 20)));
  sub_1E499894C();
  v3 = type metadata accessor for SolarCycle(0);
  v4 = v1 + v3[5];
  sub_1E4997E5C();
  MEMORY[0x1E691C150](*(v4 + *(v2 + 20)));
  sub_1E499894C();
  v5 = v1 + v3[6];
  sub_1E4997E5C();
  MEMORY[0x1E691C150](*(v5 + *(v2 + 20)));
  sub_1E499894C();
  v6 = v1 + v3[7];
  sub_1E4997E5C();
  MEMORY[0x1E691C150](*(v6 + *(v2 + 20)));
  sub_1E499894C();
  v7 = v1 + v3[8];
  sub_1E4997E5C();
  MEMORY[0x1E691C150](*(v7 + *(v2 + 20)));
  return sub_1E499894C();
}

uint64_t sub_1E4902D90()
{
  sub_1E499892C();
  sub_1E4902BA0(v1);
  return sub_1E499896C();
}

uint64_t sub_1E4902DD4(uint64_t a1)
{
  sub_1E499892C();
  sub_1E4902BA0(v2);
  return sub_1E499896C();
}

uint64_t sub_1E4902E14(uint64_t a1)
{
  result = sub_1E4902B58(&qword_1ECF7FCC0, type metadata accessor for SolarCycle, &unk_1E499FE9C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1E4902EB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SolarEvent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

BOOL sub_1E4902F18(uint64_t a1, uint64_t a2)
{
  if (sub_1E4996D2C() & 1) != 0 && (v4 = type metadata accessor for SolarEvent(0), *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20))) && *(a1 + *(v4 + 24)) == *(a2 + *(v4 + 24)) && (v5 = v4, v6 = type metadata accessor for SolarCycle(0), v7 = v6[5], v8 = a1 + v7, v9 = a2 + v7, (sub_1E4996D2C()) && *(v8 + *(v5 + 20)) == *(v9 + *(v5 + 20)) && *(v8 + *(v5 + 24)) == *(v9 + *(v5 + 24)) && (v10 = v6[6], v11 = a1 + v10, v12 = a2 + v10, (sub_1E4996D2C()) && *(v11 + *(v5 + 20)) == *(v12 + *(v5 + 20)) && *(v11 + *(v5 + 24)) == *(v12 + *(v5 + 24)) && (v13 = v6[8], v14 = a1 + v13, v15 = a2 + v13, (sub_1E4996D2C()) && *(v14 + *(v5 + 20)) == *(v15 + *(v5 + 20)))
  {
    return *(v14 + *(v5 + 24)) == *(v15 + *(v5 + 24));
  }

  else
  {
    return 0;
  }
}

uint64_t getEnumTagSinglePayload for SolarContext.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SolarContext.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1E49031BC()
{
  result = qword_1ECF7FCD8;
  if (!qword_1ECF7FCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7FCD8);
  }

  return result;
}

uint64_t CustomStringConvertibleViaMirror.description.getter(uint64_t a1)
{
  v3 = sub_1E499899C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[3] = a1;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v15);
  (*(*(a1 - 8) + 16))(boxed_opaque_existential_0, v1, a1);
  sub_1E499897C();
  sub_1E499898C();
  (*(v4 + 8))(v6, v3);
  v8 = sub_1E499868C();

  v15[0] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F270, &qword_1E499B8A0);
  sub_1E48C1B44(&qword_1ECF7F278, &qword_1ECF7F270, &qword_1E499B8A0, MEMORY[0x1E69E6310]);
  v9 = sub_1E4997E8C();
  v11 = v10;

  v15[0] = 60;
  v15[1] = 0xE100000000000000;
  swift_getDynamicType();
  v12 = sub_1E4998A4C();
  MEMORY[0x1E691B7A0](v12);

  MEMORY[0x1E691B7A0](0x20200A5B20, 0xE500000000000000);
  MEMORY[0x1E691B7A0](v9, v11);

  MEMORY[0x1E691B7A0](4087050, 0xE300000000000000);
  return v15[0];
}

ClockPoster::ClockLogger::Host_optional __swiftcall ClockLogger.Host.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1E499873C();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t ClockLogger.Host.rawValue.getter()
{
  if (*v0)
  {
    return 0x746E6569626D61;
  }

  else
  {
    return 7368801;
  }
}

uint64_t sub_1E490356C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x746E6569626D61;
  }

  else
  {
    v3 = 7368801;
  }

  if (v2)
  {
    v4 = 0xE300000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x746E6569626D61;
  }

  else
  {
    v5 = 7368801;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E499884C();
  }

  return v8 & 1;
}

uint64_t sub_1E490360C()
{
  sub_1E499892C();
  sub_1E4997F5C();

  return sub_1E499896C();
}

double sub_1E4903688(uint64_t a1)
{
  sub_1E4997F5C();

  return result;
}

uint64_t sub_1E49036F0(uint64_t a1)
{
  sub_1E499892C();
  sub_1E4997F5C();

  return sub_1E499896C();
}

void sub_1E4903768(char *a2@<X8>)
{
  v3 = sub_1E499873C();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_1E49037C8(uint64_t *a1@<X8>)
{
  v2 = 7368801;
  if (*v1)
  {
    v2 = 0x746E6569626D61;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

ClockPoster::ClockLogger::Role_optional __swiftcall ClockLogger.Role.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1E499873C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ClockLogger.Role.rawValue.getter()
{
  v1 = 0x7265646E6572;
  if (*v0 != 1)
  {
    v1 = 0x657461647075;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1953064037;
  }
}

uint64_t sub_1E49038C4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x7265646E6572;
  if (v2 != 1)
  {
    v3 = 0x657461647075;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 1953064037;
  }

  if (v2)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  v6 = 0x7265646E6572;
  if (*a2 != 1)
  {
    v6 = 0x657461647075;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 1953064037;
  }

  if (*a2)
  {
    v8 = 0xE600000000000000;
  }

  else
  {
    v8 = 0xE400000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1E499884C();
  }

  return v9 & 1;
}

uint64_t sub_1E49039B0()
{
  sub_1E499892C();
  sub_1E4997F5C();

  return sub_1E499896C();
}

double sub_1E4903A44(uint64_t a1)
{
  sub_1E4997F5C();

  return result;
}

uint64_t sub_1E4903AC4(uint64_t a1)
{
  sub_1E499892C();
  sub_1E4997F5C();

  return sub_1E499896C();
}

void sub_1E4903B60(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0x7265646E6572;
  if (v2 != 1)
  {
    v4 = 0x657461647075;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 1953064037;
  }

  if (!v5)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_1E4903BC0()
{
  type metadata accessor for ClockLogger(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtC11ClockPoster11ClockLogger____lazy_storage___fallbackLogger;
  v2 = sub_1E499708C();
  v3 = *(*(v2 - 8) + 56);
  v3(v0 + v1, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtC11ClockPoster11ClockLogger_configuration_private, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtC11ClockPoster11ClockLogger_rendering_private, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtC11ClockPoster11ClockLogger_data_private, 1, 1, v2);
  result = (v3)(v0 + OBJC_IVAR____TtC11ClockPoster11ClockLogger_location_private, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC11ClockPoster11ClockLogger_roles) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC11ClockPoster11ClockLogger_specificFaceKind) = 5;
  *(v0 + OBJC_IVAR____TtC11ClockPoster11ClockLogger_host) = 2;
  qword_1EE2BB458 = v0;
  return result;
}

uint64_t static ClockLogger.sharedInstance.getter()
{
  if (qword_1EE2BB450 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1E4903D90@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F008, &qword_1E499B170);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  if (qword_1EE2BB450 != -1)
  {
    swift_once();
  }

  v7 = qword_1EE2BB458;
  v8 = *a1;
  swift_beginAccess();
  sub_1E48CC978(v7 + v8, v6);
  v9 = sub_1E499708C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v6, 1, v9) != 1)
  {
    return (*(v10 + 32))(a2, v6, v9);
  }

  sub_1E4904BF4(a2);
  result = (v11)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1E48EF578(v6);
  }

  return result;
}

unint64_t static ClockLogger.processDescription.getter()
{
  if (qword_1EE2BB450 != -1)
  {
    swift_once();
  }

  v2 = sub_1E49054F0();
  MEMORY[0x1E691B7A0](32, 0xE100000000000000);
  v0 = sub_1E4905BE4();
  MEMORY[0x1E691B7A0](v0);

  return v2;
}

void sub_1E4903FC0(unsigned __int8 *a1, char *a2, _BYTE *a3)
{
  v4 = v3;
  v8 = sub_1E499708C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v64[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F008, &qword_1E499B170);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v64[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v64[-v16];
  v18 = *a2;
  v19 = *a1;
  v20 = *(v4 + OBJC_IVAR____TtC11ClockPoster11ClockLogger_specificFaceKind);
  *(v4 + OBJC_IVAR____TtC11ClockPoster11ClockLogger_specificFaceKind) = *a3;
  v74[0] = v20;
  sub_1E4904F4C(v74);
  v21 = *(v4 + OBJC_IVAR____TtC11ClockPoster11ClockLogger_host);
  *(v4 + OBJC_IVAR____TtC11ClockPoster11ClockLogger_host) = v18;
  v74[0] = v21;
  sub_1E4905638(v74);
  v22 = OBJC_IVAR____TtC11ClockPoster11ClockLogger_configuration_private;
  swift_beginAccess();
  sub_1E48CC978(v4 + v22, v17);
  v69 = v9;
  v23 = (*(v9 + 48))(v17, 1, v8);
  sub_1E48EF578(v17);
  if (v19 == 3)
  {
    if (v23 != 1)
    {
      return;
    }

LABEL_11:
    v67 = v23;
    v65 = v19;
    v31 = sub_1E4905BE4();
    v66 = v31;
    v32 = v8;
    v34 = v33;
    sub_1E49054F0();
    v68 = v11;
    v73[0] = 0;
    v73[1] = 0xE000000000000000;
    sub_1E49985BC();

    v73[0] = v31;
    v73[1] = v34;
    MEMORY[0x1E691B7A0](0x6769666E6F43203ALL, 0xEF6E6F6974617275);
    sub_1E499707C();
    v35 = v69;
    (*(v69 + 16))(v14, v68, v32);
    v36 = *(v35 + 56);
    v36(v14, 0, 1, v32);
    swift_beginAccess();
    sub_1E4907080(v14, v4 + v22);
    swift_endAccess();
    sub_1E49054F0();
    v37 = v66;
    v73[0] = v66;
    v73[1] = v34;

    MEMORY[0x1E691B7A0](0x7265646E6552203ALL, 0xEB00000000676E69);
    sub_1E499707C();
    v36(v14, 0, 1, v32);
    v38 = OBJC_IVAR____TtC11ClockPoster11ClockLogger_rendering_private;
    swift_beginAccess();
    sub_1E4907080(v14, v4 + v38);
    swift_endAccess();
    sub_1E49054F0();
    v73[0] = v37;
    v73[1] = v34;

    MEMORY[0x1E691B7A0](0x61746144203ALL, 0xE600000000000000);
    sub_1E499707C();
    v36(v14, 0, 1, v32);
    v39 = OBJC_IVAR____TtC11ClockPoster11ClockLogger_data_private;
    swift_beginAccess();
    sub_1E4907080(v14, v4 + v39);
    swift_endAccess();
    sub_1E49054F0();
    v73[0] = v37;
    v73[1] = v34;
    v40 = v32;
    MEMORY[0x1E691B7A0](0x697461636F4C203ALL, 0xEA00000000006E6FLL);
    v41 = v68;
    sub_1E499707C();
    v36(v14, 0, 1, v32);
    v42 = OBJC_IVAR____TtC11ClockPoster11ClockLogger_location_private;
    swift_beginAccess();
    sub_1E4907080(v14, v4 + v42);
    swift_endAccess();

    v43 = sub_1E499706C();
    v44 = sub_1E49982EC();

    v45 = os_log_type_enabled(v43, v44);
    if (v67 == 1)
    {
      if (v45)
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v72 = v54;
        v73[0] = 0;
        *v53 = 136446210;
        v73[1] = 0xE000000000000000;
        sub_1E49985BC();

        strcpy(v73, "[ClockLogger: ");
        HIBYTE(v73[1]) = -18;
        if (qword_1EE2BB450 != -1)
        {
          swift_once();
        }

        v70 = sub_1E49054F0();
        v71 = v55;
        MEMORY[0x1E691B7A0](32, 0xE100000000000000);
        v56 = sub_1E4905BE4();
        MEMORY[0x1E691B7A0](v56);

        MEMORY[0x1E691B7A0](v70, v71);

        MEMORY[0x1E691B7A0](93, 0xE100000000000000);
        v57 = sub_1E48CA094(v73[0], v73[1], &v72);

        *(v53 + 4) = v57;
        _os_log_impl(&dword_1E48B0000, v43, v44, "%{public}s: Starting up logging", v53, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v54);
        MEMORY[0x1E691CED0](v54, -1, -1);
        v58 = v53;
        goto LABEL_28;
      }
    }

    else if (v45)
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v72 = v47;
      v73[0] = 0;
      *v46 = 136446466;
      v73[1] = 0xE000000000000000;
      sub_1E49985BC();

      strcpy(v73, "[ClockLogger: ");
      HIBYTE(v73[1]) = -18;
      if (qword_1EE2BB450 != -1)
      {
        swift_once();
      }

      v70 = sub_1E49054F0();
      v71 = v48;
      MEMORY[0x1E691B7A0](32, 0xE100000000000000);
      v49 = sub_1E4905BE4();
      MEMORY[0x1E691B7A0](v49);

      MEMORY[0x1E691B7A0](v70, v71);

      MEMORY[0x1E691B7A0](93, 0xE100000000000000);
      v50 = sub_1E48CA094(v73[0], v73[1], &v72);

      *(v46 + 4) = v50;
      *(v46 + 12) = 2082;
      if (v65 == 3)
      {
        v51 = 0xE600000000000000;
        v52 = 0x3E4C4C554E3CLL;
      }

      else
      {
        if (v65)
        {
          v59 = 0xE600000000000000;
          if (v65 == 1)
          {
            v60 = 0x7265646E6572;
          }

          else
          {
            v60 = 0x657461647075;
          }
        }

        else
        {
          v59 = 0xE400000000000000;
          v60 = 1953064037;
        }

        v73[0] = v60;
        v73[1] = v59;
        sub_1E48D2EE4();
        v61 = sub_1E49984EC();
        v51 = v62;

        v52 = v61;
      }

      v63 = sub_1E48CA094(v52, v51, &v72);

      *(v46 + 14) = v63;
      _os_log_impl(&dword_1E48B0000, v43, v44, "%{public}s: Adding role to logging: '%{public}s'", v46, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E691CED0](v47, -1, -1);
      v58 = v46;
LABEL_28:
      MEMORY[0x1E691CED0](v58, -1, -1);
    }

    (*(v69 + 8))(v41, v40);
    return;
  }

  v24 = OBJC_IVAR____TtC11ClockPoster11ClockLogger_roles;
  swift_beginAccess();
  v25 = *(v4 + v24);

  v26 = sub_1E490496C(v19, v25);

  if (v23 == 1 || !v26)
  {
    swift_beginAccess();
    v27 = *(v4 + v24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v4 + v24) = v27;
    v67 = v23;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v27 = sub_1E490679C(0, *(v27 + 2) + 1, 1, v27);
      *(v4 + v24) = v27;
    }

    v30 = *(v27 + 2);
    v29 = *(v27 + 3);
    if (v30 >= v29 >> 1)
    {
      v27 = sub_1E490679C((v29 > 1), v30 + 1, 1, v27);
    }

    *(v27 + 2) = v30 + 1;
    v27[v30 + 32] = v19;
    *(v4 + v24) = v27;
    swift_endAccess();
    v23 = v67;
    goto LABEL_11;
  }
}

BOOL sub_1E490496C(char a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = (a2 + 32);
  do
  {
    v6 = v3;
    if (v3-- == 0)
    {
      break;
    }

    if (*v4 == 1)
    {
      v8 = 0x7265646E6572;
    }

    else
    {
      v8 = 0x657461647075;
    }

    if (*v4)
    {
      v9 = v8;
    }

    else
    {
      v9 = 1953064037;
    }

    if (*v4)
    {
      v10 = 0xE600000000000000;
    }

    else
    {
      v10 = 0xE400000000000000;
    }

    if (a1)
    {
      if (a1 == 1)
      {
        v11 = 0x7265646E6572;
      }

      else
      {
        v11 = 0x657461647075;
      }

      v12 = 0xE600000000000000;
      if (v9 != v11)
      {
        goto LABEL_2;
      }
    }

    else
    {
      v12 = 0xE400000000000000;
      if (v9 != 1953064037)
      {
        goto LABEL_2;
      }
    }

    if (v10 == v12)
    {

      return v6 != 0;
    }

LABEL_2:
    v5 = sub_1E499884C();

    ++v4;
  }

  while ((v5 & 1) == 0);
  return v6 != 0;
}

void sub_1E4904A88(unsigned __int8 *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11ClockPoster11ClockLogger_roles;
  swift_beginAccess();
  v13 = v4;
  v5 = *(v2 + v4);
  v6 = *(v5 + 16);

  if (v6)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    v14 = v3;
    while (v7 < *(v5 + 16))
    {
      v15 = *(v5 + 32 + v7);
      if (sub_1E49071F0(&v15, v3, v2))
      {
        v11 = v15;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v16 = v8;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1E4906F58(0, *(v8 + 16) + 1, 1);
          v8 = v16;
        }

        v10 = *(v8 + 16);
        v9 = *(v8 + 24);
        if (v10 >= v9 >> 1)
        {
          sub_1E4906F58((v9 > 1), v10 + 1, 1);
          v8 = v16;
        }

        *(v8 + 16) = v10 + 1;
        *(v8 + v10 + 32) = v11;
        v3 = v14;
      }

      if (v6 == ++v7)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_12:

    *(v2 + v13) = v8;
  }
}

uint64_t sub_1E4904BF4@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F008, &qword_1E499B170);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtC11ClockPoster11ClockLogger____lazy_storage___fallbackLogger;
  swift_beginAccess();
  sub_1E48CC978(v1 + v9, v8);
  v10 = sub_1E499708C();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_1E48EF578(v8);
  sub_1E4904DF0(v1);
  (*(v11 + 16))(v5, a1, v10);
  (*(v11 + 56))(v5, 0, 1, v10);
  swift_beginAccess();
  sub_1E4907080(v5, v1 + v9);
  return swift_endAccess();
}

void sub_1E4904DF0(uint64_t a1)
{
  sub_1E499707C();

  oslog = sub_1E499706C();
  v1 = sub_1E499830C();

  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v9 = v3;
    v4.n128_u64[0] = 136446210;
    *v2 = 136446210;
    v5 = sub_1E49070F0(v4);
    v7 = sub_1E48CA094(v5, v6, &v9);

    *(v2 + 4) = v7;
    _os_log_impl(&dword_1E48B0000, oslog, v1, "%{public}s: ***** MUST SETUP ClockLogger before using its loggers. Call ClockLogger.add(...) to do this *****", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v3);
    MEMORY[0x1E691CED0](v3, -1, -1);
    MEMORY[0x1E691CED0](v2, -1, -1);
  }
}

void sub_1E4904F4C(unsigned __int8 *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F008, &qword_1E499B170);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v40 - v5;
  v7 = sub_1E499708C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  if (v11 != 5)
  {
    v12 = OBJC_IVAR____TtC11ClockPoster11ClockLogger_specificFaceKind;
    v13 = *(v2 + OBJC_IVAR____TtC11ClockPoster11ClockLogger_specificFaceKind);
    if (v13 == 5 || (sub_1E4945D04(v11, v13) & 1) == 0)
    {
      v43 = v12;
      if (qword_1EE2BB450 != -1)
      {
        swift_once();
      }

      v14 = qword_1EE2BB458;
      v15 = OBJC_IVAR____TtC11ClockPoster11ClockLogger_configuration_private;
      swift_beginAccess();
      sub_1E48CC978(v14 + v15, v6);
      v16 = *(v8 + 48);
      if (v16(v6, 1, v7) == 1)
      {
        sub_1E4904BF4(v10);
        if (v16(v6, 1, v7) != 1)
        {
          sub_1E48EF578(v6);
        }
      }

      else
      {
        (*(v8 + 32))(v10, v6, v7);
      }

      v17 = sub_1E499706C();
      v18 = sub_1E499830C();

      if (!os_log_type_enabled(v17, v18))
      {
        goto LABEL_32;
      }

      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v41 = v20;
      *v19 = 136446722;
      v46[0] = 0;
      v46[1] = 0xE000000000000000;
      v47 = v20;
      sub_1E49985BC();

      strcpy(v46, "[ClockLogger: ");
      HIBYTE(v46[1]) = -18;
      v44 = sub_1E49054F0();
      v45 = v21;
      MEMORY[0x1E691B7A0](32, 0xE100000000000000);
      v22 = sub_1E4905BE4();
      MEMORY[0x1E691B7A0](v22);

      MEMORY[0x1E691B7A0](v44, v45);

      MEMORY[0x1E691B7A0](93, 0xE100000000000000);
      v23 = sub_1E48CA094(v46[0], v46[1], &v47);

      *(v19 + 4) = v23;
      *(v19 + 12) = 2082;
      v42 = v17;
      v24 = v18;
      if (v11 <= 1)
      {
        v26 = 0x6C617469676964;
        if (v11)
        {
          v26 = 0x676F6C616E61;
          v25 = 0xE600000000000000;
        }

        else
        {
          v25 = 0xE700000000000000;
        }
      }

      else if (v11 == 2)
      {
        v25 = 0xE500000000000000;
        v26 = 0x646C726F77;
      }

      else if (v11 == 3)
      {
        v25 = 0xE500000000000000;
        v26 = 0x72616C6F73;
      }

      else
      {
        v25 = 0xE400000000000000;
        v26 = 2036427888;
      }

      v46[0] = v26;
      v46[1] = v25;
      sub_1E48D2EE4();
      v27 = sub_1E49984EC();
      v29 = v28;

      v30 = sub_1E48CA094(v27, v29, &v47);

      *(v19 + 14) = v30;
      *(v19 + 22) = 2082;
      v31 = *(v2 + v43);
      if (v31 > 2)
      {
        v32 = v24;
        if (v31 == 3)
        {
          v33 = 0xE500000000000000;
          v34 = 0x72616C6F73;
          v17 = v42;
        }

        else
        {
          v17 = v42;
          if (v31 != 4)
          {
            v37 = 0xE600000000000000;
            v35 = 0x3E656E6F4E3CLL;
            goto LABEL_31;
          }

          v33 = 0xE400000000000000;
          v34 = 2036427888;
        }
      }

      else
      {
        v32 = v24;
        if (*(v2 + v43))
        {
          v17 = v42;
          if (v31 == 1)
          {
            v33 = 0xE600000000000000;
            v34 = 0x676F6C616E61;
          }

          else
          {
            v33 = 0xE500000000000000;
            v34 = 0x646C726F77;
          }
        }

        else
        {
          v33 = 0xE700000000000000;
          v34 = 0x6C617469676964;
          v17 = v42;
        }
      }

      v46[0] = v34;
      v46[1] = v33;
      v35 = sub_1E49984EC();
      v37 = v36;

LABEL_31:
      v38 = sub_1E48CA094(v35, v37, &v47);

      *(v19 + 24) = v38;
      _os_log_impl(&dword_1E48B0000, v17, v32, "%{public}s: Specific clock face changed from '%{public}s' to '%{public}s'\nThe face this process is serving should never change.", v19, 0x20u);
      v39 = v41;
      swift_arrayDestroy();
      MEMORY[0x1E691CED0](v39, -1, -1);
      MEMORY[0x1E691CED0](v19, -1, -1);
LABEL_32:

      (*(v8 + 8))(v10, v7);
    }
  }
}

unint64_t sub_1E49054F0()
{
  result = 0xD000000000000015;
  v2 = *(v0 + OBJC_IVAR____TtC11ClockPoster11ClockLogger_specificFaceKind);
  if (v2 != 5)
  {
    MEMORY[0x1E691B7A0](46, 0xE100000000000000);
    sub_1E48D2EE4();
    v3 = sub_1E49984EC();
    v5 = v4;

    MEMORY[0x1E691B7A0](v3, v5);

    MEMORY[0x1E691B7A0](1701011782, 0xE400000000000000);
    return 0xD000000000000015;
  }

  return result;
}

void sub_1E4905638(unsigned __int8 *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F008, &qword_1E499B170);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v47 - v5;
  v7 = sub_1E499708C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  if (v11 == 2)
  {
    return;
  }

  v12 = OBJC_IVAR____TtC11ClockPoster11ClockLogger_host;
  v13 = *(v2 + OBJC_IVAR____TtC11ClockPoster11ClockLogger_host);
  if (v13 == 2)
  {
    goto LABEL_3;
  }

  if (v11)
  {
    v17 = 0x746E6569626D61;
  }

  else
  {
    v17 = 7368801;
  }

  if (v11)
  {
    v18 = 0xE700000000000000;
  }

  else
  {
    v18 = 0xE300000000000000;
  }

  if (v13)
  {
    v19 = 0x746E6569626D61;
  }

  else
  {
    v19 = 7368801;
  }

  if (v13)
  {
    v20 = 0xE700000000000000;
  }

  else
  {
    v20 = 0xE300000000000000;
  }

  if (v17 != v19 || v18 != v20)
  {
    v22 = sub_1E499884C();

    if (v22)
    {
      return;
    }

LABEL_3:
    v50 = v12;
    if (qword_1EE2BB450 != -1)
    {
      swift_once();
    }

    v14 = qword_1EE2BB458;
    v15 = OBJC_IVAR____TtC11ClockPoster11ClockLogger_configuration_private;
    swift_beginAccess();
    sub_1E48CC978(v14 + v15, v6);
    v16 = *(v8 + 48);
    if (v16(v6, 1, v7) == 1)
    {
      sub_1E4904BF4(v10);
      if (v16(v6, 1, v7) != 1)
      {
        sub_1E48EF578(v6);
      }
    }

    else
    {
      (*(v8 + 32))(v10, v6, v7);
    }

    v23 = sub_1E499706C();
    v24 = sub_1E499830C();

    if (os_log_type_enabled(v23, v24))
    {
      v48 = v24;
      v49 = v8;
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v47 = v26;
      *v25 = 136446722;
      v53[0] = 0;
      v53[1] = 0xE000000000000000;
      v54 = v26;
      sub_1E49985BC();

      strcpy(v53, "[ClockLogger: ");
      HIBYTE(v53[1]) = -18;
      v51 = sub_1E49054F0();
      v52 = v27;
      MEMORY[0x1E691B7A0](32, 0xE100000000000000);
      v28 = sub_1E4905BE4();
      MEMORY[0x1E691B7A0](v28);

      MEMORY[0x1E691B7A0](v51, v52);

      MEMORY[0x1E691B7A0](93, 0xE100000000000000);
      v29 = sub_1E48CA094(v53[0], v53[1], &v54);

      *(v25 + 4) = v29;
      *(v25 + 12) = 2082;
      v30 = 7368801;
      if (v11)
      {
        v30 = 0x746E6569626D61;
        v31 = 0xE700000000000000;
      }

      else
      {
        v31 = 0xE300000000000000;
      }

      v53[0] = v30;
      v53[1] = v31;
      sub_1E48D2EE4();
      v32 = sub_1E49984EC();
      v34 = v33;

      v35 = sub_1E48CA094(v32, v34, &v54);

      *(v25 + 14) = v35;
      *(v25 + 22) = 2082;
      v36 = *(v2 + v50);
      if (v36 == 2)
      {
        v37 = 0xE600000000000000;
        v38 = 0x3E656E6F4E3CLL;
      }

      else
      {
        v39 = (v36 & 1) == 0;
        v40 = 0x746E6569626D61;
        if (v39)
        {
          v40 = 7368801;
        }

        if (v39)
        {
          v41 = 0xE300000000000000;
        }

        else
        {
          v41 = 0xE700000000000000;
        }

        v53[0] = v40;
        v53[1] = v41;
        v42 = sub_1E49984EC();
        v37 = v43;

        v38 = v42;
      }

      v44 = v49;
      v45 = sub_1E48CA094(v38, v37, &v54);

      *(v25 + 24) = v45;
      _os_log_impl(&dword_1E48B0000, v23, v48, "%{public}s: Host cannot change for life of process - trying to change '%{public}s' to '%{public}s'", v25, 0x20u);
      v46 = v47;
      swift_arrayDestroy();
      MEMORY[0x1E691CED0](v46, -1, -1);
      MEMORY[0x1E691CED0](v25, -1, -1);

      (*(v44 + 8))(v10, v7);
    }

    else
    {

      (*(v8 + 8))(v10, v7);
    }

    return;
  }
}

uint64_t sub_1E4905BE4()
{
  if (*(v0 + OBJC_IVAR____TtC11ClockPoster11ClockLogger_host) == 2)
  {
    v1 = 0xEB0000000074736FLL;
    v2 = 0x486E776F6E6B6E55;
  }

  else
  {
    sub_1E48D2EE4();
    v3 = sub_1E49984EC();
    v1 = v4;

    v2 = v3;
  }

  MEMORY[0x1E691B7A0](v2, v1);

  MEMORY[0x1E691B7A0](40, 0xE100000000000000);
  v5 = OBJC_IVAR____TtC11ClockPoster11ClockLogger_roles;
  swift_beginAccess();
  v6 = *(*(v20 + v5) + 16);
  if (v6)
  {

    v7 = 0;
    do
    {
      v8 = *(*(v20 + v5) + 16);
      v9 = v8 > 1;
      v10 = v8 - 1;
      v11 = 124;
      if (!v9)
      {
        v11 = 0;
      }

      v12 = 0xE100000000000000;
      if (!v9)
      {
        v12 = 0xE000000000000000;
      }

      v13 = v7++ == v10;
      if (v13)
      {
        v14 = 0;
      }

      else
      {
        v14 = v11;
      }

      if (v13)
      {
        v15 = 0xE000000000000000;
      }

      else
      {
        v15 = v12;
      }

      sub_1E48D2EE4();
      v16 = sub_1E49984EC();
      v18 = v17;

      MEMORY[0x1E691B7A0](v16, v18);

      MEMORY[0x1E691B7A0](v14, v15);
    }

    while (v6 != v7);
  }

  MEMORY[0x1E691B7A0](41, 0xE100000000000000);
  return 0;
}

uint64_t ClockLogger.deinit()
{
  sub_1E48EF578(v0 + OBJC_IVAR____TtC11ClockPoster11ClockLogger____lazy_storage___fallbackLogger);
  sub_1E48EF578(v0 + OBJC_IVAR____TtC11ClockPoster11ClockLogger_configuration_private);
  sub_1E48EF578(v0 + OBJC_IVAR____TtC11ClockPoster11ClockLogger_rendering_private);
  sub_1E48EF578(v0 + OBJC_IVAR____TtC11ClockPoster11ClockLogger_data_private);
  sub_1E48EF578(v0 + OBJC_IVAR____TtC11ClockPoster11ClockLogger_location_private);

  return v0;
}

uint64_t ClockLogger.__deallocating_deinit()
{
  sub_1E48EF578(v0 + OBJC_IVAR____TtC11ClockPoster11ClockLogger____lazy_storage___fallbackLogger);
  sub_1E48EF578(v0 + OBJC_IVAR____TtC11ClockPoster11ClockLogger_configuration_private);
  sub_1E48EF578(v0 + OBJC_IVAR____TtC11ClockPoster11ClockLogger_rendering_private);
  sub_1E48EF578(v0 + OBJC_IVAR____TtC11ClockPoster11ClockLogger_data_private);
  sub_1E48EF578(v0 + OBJC_IVAR____TtC11ClockPoster11ClockLogger_location_private);

  return swift_deallocClassInstance();
}

char *sub_1E4905F5C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FD30, &unk_1E49A0DB0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1E4906060(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FD38, &qword_1E49A0280);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

char *sub_1E490615C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FD40, &qword_1E49A0288);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 152);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[152 * v8])
    {
      memmove(v12, v13, 152 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1E49062AC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FC10, &qword_1E499E578);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1E4906420(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 16 * v10);
  }

  return v12;
}

char *sub_1E490651C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FD88, &qword_1E49A02F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_1E4906668(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_1E490679C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FD80, &qword_1E49A02F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void *sub_1E49068B4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_1E4906A4C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

void *sub_1E4906C28(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FD20, &qword_1E49A0268);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FD28, &unk_1E49A0270);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1E4906D5C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FD10, &unk_1E49A49F0);
  v4 = *(type metadata accessor for WorldViewModel.Pin(0) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_1E4906E58(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E4951E00(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1E4906E78(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E4951F0C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1E4906E98(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E4951F30(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1E4906EB8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E4952050(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1E4906ED8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E495215C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1E4906EF8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E4952438(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1E4906F18(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E49525A4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1E4906F38(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E49526A8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1E4906F58(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E49527AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1E4906F78(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E49528A0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1E4906F98(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E49529AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1E4906FB8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  if (v3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1280070990;
  }

  if (v3)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  MEMORY[0x1E691B7A0](v5, v6);

  MEMORY[0x1E691B7A0](538976314, 0xE400000000000000);
  result = sub_1E49986CC();
  *a2 = 0;
  a2[1] = v8;
  return result;
}

uint64_t sub_1E4907080(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F008, &qword_1E499B170);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E49070F0(__n128 a1)
{
  sub_1E49985BC();

  strcpy(v6, "[ClockLogger: ");
  HIBYTE(v6[1]) = -18;
  if (qword_1EE2BB450 != -1)
  {
    swift_once();
  }

  v4 = sub_1E49054F0();
  v5 = v1;
  MEMORY[0x1E691B7A0](32, 0xE100000000000000);
  v2 = sub_1E4905BE4();
  MEMORY[0x1E691B7A0](v2);

  MEMORY[0x1E691B7A0](v4, v5);

  MEMORY[0x1E691B7A0](93, 0xE100000000000000);
  return v6[0];
}

uint64_t sub_1E49071F0(_BYTE *a1, int a2, uint64_t a3)
{
  v48[1] = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F008, &qword_1E499B170);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v48 - v7;
  v9 = sub_1E499708C();
  v10 = *(v9 - 8);
  v49 = v9;
  v50 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  if (v13 == 1)
  {
    v14 = 0x7265646E6572;
  }

  else
  {
    v14 = 0x657461647075;
  }

  if (*a1)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1953064037;
  }

  if (*a1)
  {
    v16 = 0xE600000000000000;
  }

  else
  {
    v16 = 0xE400000000000000;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v17 = 0x7265646E6572;
    }

    else
    {
      v17 = 0x657461647075;
    }

    v18 = 0xE600000000000000;
  }

  else
  {
    v18 = 0xE400000000000000;
    v17 = 1953064037;
  }

  v51 = a2;
  if (v15 == v17 && v16 == v18)
  {

    v19 = v50;
  }

  else
  {
    v20 = sub_1E499884C();

    v19 = v50;
    if ((v20 & 1) == 0)
    {
      goto LABEL_35;
    }
  }

  if (qword_1EE2BB450 != -1)
  {
    swift_once();
  }

  v21 = qword_1EE2BB458;
  v22 = OBJC_IVAR____TtC11ClockPoster11ClockLogger_configuration_private;
  swift_beginAccess();
  sub_1E48CC978(v21 + v22, v8);
  v23 = *(v19 + 48);
  v24 = v49;
  v25 = v23(v8, 1, v49);
  v48[0] = v3;
  if (v25 == 1)
  {
    sub_1E4904BF4(v12);
    if (v23(v8, 1, v24) != 1)
    {
      sub_1E48EF578(v8);
    }
  }

  else
  {
    (*(v19 + 32))(v12, v8, v24);
  }

  v26 = sub_1E499706C();
  v27 = sub_1E49982EC();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v54 = v29;
    v30.n128_u64[0] = 136446466;
    *v28 = 136446466;
    v31 = sub_1E49070F0(v30);
    v33 = sub_1E48CA094(v31, v32, &v54);

    *(v28 + 4) = v33;
    *(v28 + 12) = 2082;
    if (v51)
    {
      v34 = 0x7265646E6572;
      if (v51 != 1)
      {
        v34 = 0x657461647075;
      }

      v35 = 0xE600000000000000;
    }

    else
    {
      v35 = 0xE400000000000000;
      v34 = 1953064037;
    }

    v52 = v34;
    v53 = v35;
    sub_1E48D2EE4();
    v36 = sub_1E49984EC();
    v38 = v37;

    v39 = sub_1E48CA094(v36, v38, &v54);

    *(v28 + 14) = v39;
    _os_log_impl(&dword_1E48B0000, v26, v27, "%{public}s: Removing role from logging: '%{public}s'", v28, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E691CED0](v29, -1, -1);
    MEMORY[0x1E691CED0](v28, -1, -1);

    (*(v50 + 8))(v12, v49);
  }

  else
  {

    (*(v19 + 8))(v12, v24);
  }

LABEL_35:
  v40 = 0x7265646E6572;
  if (!v13)
  {
    v41 = 0xE400000000000000;
    v42 = 1953064037;
    v43 = v51;
    if (!v51)
    {
      goto LABEL_45;
    }

    goto LABEL_40;
  }

  v41 = 0xE600000000000000;
  if (v13 != 1)
  {
    v42 = 0x657461647075;
    v43 = v51;
    if (!v51)
    {
      goto LABEL_45;
    }

LABEL_40:
    v44 = 0xE600000000000000;
    if (v43 != 1)
    {
      v40 = 0x657461647075;
    }

    if (v42 != v40)
    {
      goto LABEL_48;
    }

    goto LABEL_46;
  }

  v42 = 0x7265646E6572;
  v43 = v51;
  if (v51)
  {
    goto LABEL_40;
  }

LABEL_45:
  v44 = 0xE400000000000000;
  if (v42 != 1953064037)
  {
LABEL_48:
    v46 = sub_1E499884C();

    v45 = v46 ^ 1;
    return v45 & 1;
  }

LABEL_46:
  if (v41 != v44)
  {
    goto LABEL_48;
  }

  v45 = 0;
  return v45 & 1;
}

unint64_t sub_1E4907754()
{
  result = qword_1ECF7FCE0;
  if (!qword_1ECF7FCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7FCE0);
  }

  return result;
}

unint64_t sub_1E49077F0()
{
  result = qword_1ECF7FCF8;
  if (!qword_1ECF7FCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7FCF8);
  }

  return result;
}

uint64_t type metadata accessor for ClockLogger(uint64_t a1)
{
  result = qword_1EE2BB410;
  if (!qword_1EE2BB410)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E49078DC(uint64_t a1)
{
  sub_1E4907A18(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1E4907A18(uint64_t a1)
{
  if (!qword_1EE2BB150)
  {
    sub_1E499708C();
    v1 = sub_1E49984BC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE2BB150);
    }
  }
}

uint64_t getEnumTagSinglePayload for ClockLogger.Host(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ClockLogger.Host(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

id sub_1E4907D74(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for RollingClockView(0);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t type metadata accessor for RollingClockView(uint64_t a1)
{
  result = qword_1EE2BB470;
  if (!qword_1EE2BB470)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E4907E8C(uint64_t a1)
{
  result = sub_1E4996F4C();
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

void sub_1E4907F80(uint64_t a1)
{
  sub_1E490803C(319, &qword_1ECF7FDB0, type metadata accessor for WorldViewModel);
  if (v1 <= 0x3F)
  {
    sub_1E490803C(319, &qword_1ECF7FDB8, MEMORY[0x1E697E7E0]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1E490803C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1E49971DC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1E49080AC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1E490C1B8(&qword_1ECF7F308, type metadata accessor for WorldViewModel, &unk_1E499D450);
  sub_1E4996FCC();

  *a2 = *(v3 + 120);
}

uint64_t sub_1E4908184@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1E490C1B8(&qword_1ECF7F308, type metadata accessor for WorldViewModel, &unk_1E499D450);
  sub_1E4996FCC();

  v4 = OBJC_IVAR____TtC11ClockPoster14WorldViewModel__alarmTime;
  swift_beginAccess();
  return sub_1E48C12D0(v3 + v4, a2, &qword_1ECF809D0, &qword_1E499D6C0);
}

uint64_t sub_1E490825C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF809D0, &qword_1E499D6C0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_1E48C12D0(a1, &v6 - v3, &qword_1ECF809D0, &qword_1E499D6C0);
  return sub_1E48E4114(v4);
}

uint64_t sub_1E4908308@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FDD8, &qword_1E49A0478);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v44 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v42 = (&v39 - v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FDE0, &qword_1E49A0480);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v43 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v39 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FDE8, &qword_1E49A0488);
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12);
  v46 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v39 - v16;
  KeyPath = swift_getKeyPath();
  type metadata accessor for WorldViewModel(0);
  sub_1E490C1B8(&qword_1ECF7F308, type metadata accessor for WorldViewModel, &unk_1E499D450);
  v19 = sub_1E49971EC();
  v47 = KeyPath;
  v48 = 0;
  v49 = v19;
  v50 = v20 & 1;
  sub_1E4961CE4(*a1, *(a1 + 8), v21);
  sub_1E49110B4();
  sub_1E499793C();

  v22 = swift_getKeyPath();
  v23 = &v17[*(v13 + 44)];
  v41 = v17;
  v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FDF8, &qword_1E49A04C0) + 28);
  v25 = *MEMORY[0x1E697E7D0];
  v26 = sub_1E499732C();
  (*(*(v26 - 8) + 104))(v23 + v24, v25, v26);
  *v23 = v22;
  *v11 = sub_1E499762C();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v27 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FE00, &qword_1E49A04C8) + 44)];
  v40 = v11;
  v28 = a1;
  sub_1E49087B8(a1, v27);
  v29 = sub_1E499762C();
  v30 = v42;
  *v42 = v29;
  *(v30 + 8) = 0;
  *(v30 + 16) = 1;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FE08, &qword_1E49A04D0);
  sub_1E4908E04(v28, v30 + *(v31 + 44));
  v32 = v46;
  sub_1E48C12D0(v17, v46, &qword_1ECF7FDE8, &qword_1E49A0488);
  v33 = v43;
  sub_1E48C12D0(v11, v43, &qword_1ECF7FDE0, &qword_1E49A0480);
  v34 = v44;
  sub_1E48C12D0(v30, v44, &qword_1ECF7FDD8, &qword_1E49A0478);
  v35 = v32;
  v36 = v45;
  sub_1E48C12D0(v35, v45, &qword_1ECF7FDE8, &qword_1E49A0488);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FE10, &qword_1E49A04D8);
  sub_1E48C12D0(v33, v36 + *(v37 + 48), &qword_1ECF7FDE0, &qword_1E49A0480);
  sub_1E48C12D0(v34, v36 + *(v37 + 64), &qword_1ECF7FDD8, &qword_1E49A0478);
  sub_1E48C1338(v30, &qword_1ECF7FDD8, &qword_1E49A0478);
  sub_1E48C1338(v40, &qword_1ECF7FDE0, &qword_1E49A0480);
  sub_1E48C1338(v41, &qword_1ECF7FDE8, &qword_1E49A0488);
  sub_1E48C1338(v34, &qword_1ECF7FDD8, &qword_1E49A0478);
  sub_1E48C1338(v33, &qword_1ECF7FDE0, &qword_1E49A0480);
  return sub_1E48C1338(v46, &qword_1ECF7FDE8, &qword_1E49A0488);
}

uint64_t sub_1E49087B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for WorldClockFace(0);
  v30 = *(v4 - 8);
  v5 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v32 = sub_1E499732C();
  v6 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v8 = (&v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FEC8, &qword_1E49A0670);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v31 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v27 - v12;
  sub_1E4997CEC();
  sub_1E499736C();
  *&v36[55] = v41;
  *&v36[71] = v42;
  *&v36[87] = v43;
  *&v36[103] = v44;
  *&v36[7] = v38;
  *&v36[23] = v39;
  v37 = 1;
  *&v36[39] = v40;
  sub_1E4961D08(v8);
  sub_1E4911B70(a1, &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WorldClockFace);
  v14 = (*(v30 + 80) + 16) & ~*(v30 + 80);
  v15 = swift_allocObject();
  sub_1E4911190(&v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for WorldClockFace);
  *v13 = sub_1E49975AC();
  *(v13 + 1) = 0;
  v13[16] = 1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FED0, &qword_1E49A0678);
  sub_1E490AC5C(v8, sub_1E491148C, v15, &v13[*(v16 + 44)]);

  (*(v6 + 8))(v8, v32);
  sub_1E4997CEC();
  sub_1E499722C();
  v32 = v45;
  v29 = v49;
  v30 = v47;
  v28 = v50;
  v35 = 1;
  v34 = v46;
  v33 = v48;
  v17 = v31;
  sub_1E48C12D0(v13, v31, &qword_1ECF7FEC8, &qword_1E49A0670);
  v18 = *&v36[80];
  *(a2 + 73) = *&v36[64];
  *(a2 + 89) = v18;
  *(a2 + 105) = *&v36[96];
  v19 = *&v36[16];
  *(a2 + 9) = *v36;
  *(a2 + 25) = v19;
  v20 = *&v36[48];
  *(a2 + 41) = *&v36[32];
  LOBYTE(v14) = v35;
  LOBYTE(v8) = v34;
  v21 = v33;
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 120) = *&v36[111];
  *(a2 + 57) = v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FED8, &qword_1E49A0680);
  sub_1E48C12D0(v17, a2 + *(v22 + 48), &qword_1ECF7FEC8, &qword_1E49A0670);
  v23 = a2 + *(v22 + 64);
  *v23 = 0;
  *(v23 + 8) = v14;
  *(v23 + 16) = v32;
  *(v23 + 24) = v8;
  v24 = v29;
  *(v23 + 32) = v30;
  *(v23 + 40) = v21;
  v25 = v28;
  *(v23 + 48) = v24;
  *(v23 + 56) = v25;
  sub_1E48C1338(v13, &qword_1ECF7FEC8, &qword_1E49A0670);
  return sub_1E48C1338(v17, &qword_1ECF7FEC8, &qword_1E49A0670);
}

uint64_t sub_1E4908C44(uint64_t a1)
{
  v2 = type metadata accessor for Dashboard(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for WorldViewModel(0);
  sub_1E490C1B8(&qword_1ECF7F308, type metadata accessor for WorldViewModel, &unk_1E499D450);
  *v4 = sub_1E49971EC();
  v4[8] = v5 & 1;
  v6 = *(v2 + 20);
  *&v4[v6] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FDC0, &qword_1E49A0460);
  swift_storeEnumTagMultiPayload();
  *&v4[*(v2 + 24)] = 0x3FD51EB851EB851FLL;
  sub_1E4961CE4(*a1, *(a1 + 8), v7);
  sub_1E490C1B8(&qword_1ECF7FEF0, type metadata accessor for Dashboard, &unk_1E49A0778);
  sub_1E499793C();

  return sub_1E4911548(v4, type metadata accessor for Dashboard);
}

uint64_t sub_1E4908E04@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for WorldClockFace(0);
  v39 = *(v4 - 8);
  v5 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v40 = sub_1E499732C();
  v6 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v8 = (&v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FE18, &qword_1E49A04E0) - 8;
  MEMORY[0x1EEE9AC00](v41);
  v46 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v39 - v11;
  sub_1E4997CEC();
  sub_1E499722C();
  v44 = v51;
  v45 = v49;
  v42 = v54;
  v43 = v53;
  v64 = 1;
  v63 = v50;
  v62 = v52;
  sub_1E4961D08(v8);
  sub_1E4911B70(a1, &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WorldClockFace);
  v13 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v14 = swift_allocObject();
  sub_1E4911190(&v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for WorldClockFace);
  *v12 = sub_1E49975AC();
  *(v12 + 1) = 0;
  v12[16] = 1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FE20, &qword_1E49A04E8);
  sub_1E490B654(v8, sub_1E4911108, v14, &v12[*(v15 + 44)]);

  (*(v6 + 8))(v8, v40);
  v16 = sub_1E4997D2C();
  v17 = *a1;
  v18 = *(a1 + 8);
  v20 = sub_1E4961CE4(*a1, v18, v19);
  swift_getKeyPath();
  *&v55 = v20;
  sub_1E490C1B8(&qword_1ECF7F308, type metadata accessor for WorldViewModel, &unk_1E499D450);
  sub_1E4996FCC();

  v21 = OBJC_IVAR____TtC11ClockPoster14WorldViewModel__alarmTime;
  swift_beginAccess();
  v22 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FE28, &qword_1E49A0518) + 36)];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F478, &unk_1E499BE60);
  sub_1E48C12D0(v20 + v21, v22 + *(v23 + 36), &qword_1ECF809D0, &qword_1E499D6C0);

  *v22 = v16;
  v24 = sub_1E4997D2C();
  v26 = sub_1E4961CE4(v17, v18, v25);
  swift_getKeyPath();
  *&v55 = v26;
  sub_1E4996FCC();

  v27 = OBJC_IVAR____TtC11ClockPoster14WorldViewModel__highlighted;
  swift_beginAccess();
  v28 = &v12[*(v41 + 44)];
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FE30, &qword_1E49A0548);
  sub_1E48C12D0(v26 + v27, v28 + *(v29 + 36), &qword_1ECF7F848, &qword_1E499D520);

  *v28 = v24;
  sub_1E4997CEC();
  sub_1E499736C();
  *&v47[55] = v58;
  *&v47[71] = v59;
  *&v47[87] = v60;
  *&v47[103] = v61;
  *&v47[7] = v55;
  *&v47[23] = v56;
  v48 = 1;
  *&v47[39] = v57;
  LOBYTE(v27) = v64;
  LOBYTE(v26) = v63;
  LOBYTE(v28) = v62;
  v30 = v46;
  sub_1E48C12D0(v12, v46, &qword_1ECF7FE18, &qword_1E49A04E0);
  *a2 = 0;
  *(a2 + 8) = v27;
  v31 = v44;
  *(a2 + 16) = v45;
  *(a2 + 24) = v26;
  *(a2 + 32) = v31;
  *(a2 + 40) = v28;
  v32 = v42;
  *(a2 + 48) = v43;
  *(a2 + 56) = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FE38, &qword_1E49A0550);
  sub_1E48C12D0(v30, a2 + *(v33 + 48), &qword_1ECF7FE18, &qword_1E49A04E0);
  v34 = a2 + *(v33 + 64);
  v35 = *&v47[80];
  *(v34 + 73) = *&v47[64];
  *(v34 + 89) = v35;
  *(v34 + 105) = *&v47[96];
  v36 = *&v47[16];
  *(v34 + 9) = *v47;
  *(v34 + 25) = v36;
  v37 = *&v47[48];
  *(v34 + 41) = *&v47[32];
  *v34 = 0;
  *(v34 + 8) = 1;
  *(v34 + 120) = *&v47[111];
  *(v34 + 57) = v37;
  sub_1E48C1338(v12, &qword_1ECF7FE18, &qword_1E49A04E0);
  return sub_1E48C1338(v30, &qword_1ECF7FE18, &qword_1E49A04E0);
}

uint64_t sub_1E490943C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FE70, &qword_1E49A0578);
  MEMORY[0x1EEE9AC00](v51);
  v46 = (&v44 - v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF809D0, &qword_1E499D6C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v52 = &v44 - v5;
  v6 = sub_1E4996D8C();
  v53 = *(v6 - 8);
  v54 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v45 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FE78, &qword_1E49A0580);
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v44 - v8;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FE80, &qword_1E49A0588);
  MEMORY[0x1EEE9AC00](v48);
  v44 = (&v44 - v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F848, &qword_1E499D520);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v44 - v11;
  v13 = type metadata accessor for WorldViewModel.Pin(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  v50 = a1;
  v19 = *(a1 + 8);
  v20 = sub_1E4961CE4(v18, v19, v15);
  swift_getKeyPath();
  v57 = v20;
  sub_1E490C1B8(&qword_1ECF7F308, type metadata accessor for WorldViewModel, &unk_1E499D450);
  sub_1E4996FCC();

  v21 = OBJC_IVAR____TtC11ClockPoster14WorldViewModel__highlighted;
  swift_beginAccess();
  sub_1E48C12D0(v20 + v21, v12, &qword_1ECF7F848, &qword_1E499D520);

  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1E48C1338(v12, &qword_1ECF7F848, &qword_1E499D520);
  }

  else
  {
    sub_1E4911190(v12, v17, type metadata accessor for WorldViewModel.Pin);
    if ((v17[16] & 1) == 0)
    {
      v38 = sub_1E49975AC();
      v39 = v44;
      *v44 = v38;
      *(v39 + 8) = 0;
      *(v39 + 16) = 0;
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FEA8, &qword_1E49A05A0);
      sub_1E4909C4C(v50, v39 + *(v40 + 44));
      sub_1E48C12D0(v39, v49, &qword_1ECF7FE80, &qword_1E49A0588);
      swift_storeEnumTagMultiPayload();
      v41 = MEMORY[0x1E69817F8];
      sub_1E48C1B44(&qword_1ECF7FE98, &qword_1ECF7FE80, &qword_1E49A0588, MEMORY[0x1E69817F8]);
      sub_1E48C1B44(&qword_1ECF7FEA0, &qword_1ECF7FE70, &qword_1E49A0578, v41);
      v42 = v55;
      sub_1E499772C();
      sub_1E48C1338(v39, &qword_1ECF7FE80, &qword_1E49A0588);
      sub_1E4911548(v17, type metadata accessor for WorldViewModel.Pin);
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FE88, &qword_1E49A0590);
      return (*(*(v43 - 8) + 56))(v42, 0, 1, v43);
    }

    sub_1E4911548(v17, type metadata accessor for WorldViewModel.Pin);
  }

  v23 = sub_1E4961CE4(v18, v19, v22);
  swift_getKeyPath();
  v56 = v23;
  sub_1E4996FCC();

  v24 = OBJC_IVAR____TtC11ClockPoster14WorldViewModel__alarmTime;
  swift_beginAccess();
  v25 = v23 + v24;
  v26 = v52;
  sub_1E48C12D0(v25, v52, &qword_1ECF809D0, &qword_1E499D6C0);

  v28 = v53;
  v27 = v54;
  if ((*(v53 + 48))(v26, 1, v54) == 1)
  {
    sub_1E48C1338(v26, &qword_1ECF809D0, &qword_1E499D6C0);
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FE88, &qword_1E49A0590);
    return (*(*(v29 - 8) + 56))(v55, 1, 1, v29);
  }

  else
  {
    v31 = v45;
    (*(v28 + 32))(v45, v26, v27);
    v32 = sub_1E49975AC();
    v33 = v46;
    *v46 = v32;
    *(v33 + 8) = 0;
    *(v33 + 16) = 0;
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FE90, &qword_1E49A0598);
    sub_1E490A558(v50, v31, v33 + *(v34 + 44));
    sub_1E48C12D0(v33, v49, &qword_1ECF7FE70, &qword_1E49A0578);
    swift_storeEnumTagMultiPayload();
    v35 = MEMORY[0x1E69817F8];
    sub_1E48C1B44(&qword_1ECF7FE98, &qword_1ECF7FE80, &qword_1E49A0588, MEMORY[0x1E69817F8]);
    sub_1E48C1B44(&qword_1ECF7FEA0, &qword_1ECF7FE70, &qword_1E49A0578, v35);
    v36 = v55;
    sub_1E499772C();
    sub_1E48C1338(v33, &qword_1ECF7FE70, &qword_1E49A0578);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FE88, &qword_1E49A0590);
    (*(*(v37 - 8) + 56))(v36, 0, 1, v37);
    return (*(v28 + 8))(v31, v27);
  }
}

uint64_t sub_1E4909C4C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a2;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F448, &qword_1E499BDE0);
  v74 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v73 = v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v78 = v63 - v5;
  v68 = sub_1E49979EC();
  v6 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v8 = v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FEB0, &qword_1E49A05A8);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v77 = v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (v63 - v13);
  MEMORY[0x1EEE9AC00](v15);
  v79 = v63 - v16;
  v72 = sub_1E4997ADC();
  v17 = sub_1E4997A6C();
  v67 = *MEMORY[0x1E69814D8];
  v66 = *(v6 + 104);
  v66(v8);
  v18 = sub_1E4997AAC();
  v65 = *a1;
  v19 = *(a1 + 8);
  v64 = *(a1 + 8);
  v21 = sub_1E4961CE4(v65, v19, v20);
  swift_getKeyPath();
  *&v84[0] = v21;
  v63[1] = sub_1E490C1B8(&qword_1ECF7F308, type metadata accessor for WorldViewModel, &unk_1E499D450);
  sub_1E4996FCC();

  LODWORD(a1) = *(v21 + 176);

  if (a1)
  {
    v22 = v18;
  }

  else
  {
    v22 = v17;
  }

  v23 = objc_opt_self();
  v24 = *MEMORY[0x1E69DB980];
  v25 = [v23 systemFontOfSize:26.0 weight:*MEMORY[0x1E69DB980]];
  v26 = sub_1E499782C();
  KeyPath = swift_getKeyPath();
  v28 = (v14 + *(v10 + 44));
  v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F590, &qword_1E499C058) + 28);
  v30 = *MEMORY[0x1E69816C8];
  v31 = sub_1E4997B1C();
  (*(*(v31 - 8) + 104))(v28 + v29, v30, v31);
  *v28 = swift_getKeyPath();
  *v14 = v72;
  v14[1] = v22;
  v14[2] = KeyPath;
  v14[3] = v26;
  sub_1E48C15C8(v14, v79, &qword_1ECF7FEB0, &qword_1E49A05A8);
  sub_1E4997CEC();
  sub_1E499722C();
  v72 = v89;
  v71 = v91;
  v70 = v93;
  v69 = v94;
  v88 = 1;
  v87 = v90;
  v86 = v92;
  v32 = [v23 systemFontOfSize:26.0 weight:v24];
  v33 = sub_1E4997A6C();
  (v66)(v8, v67, v68);
  v34 = sub_1E4997AAC();
  v35 = v65;
  v36 = v64;
  v38 = sub_1E4961CE4(v65, v64, v37);
  swift_getKeyPath();
  *&v84[0] = v38;
  sub_1E4996FCC();

  LODWORD(v23) = *(v38 + 176);

  if (v23)
  {
    v39 = v34;
  }

  else
  {
    v39 = v33;
  }

  v40 = sub_1E4997EAC();
  v41 = CTFontCreateWithNameAndOptions(v40, 92.0, 0, 0x400uLL);

  type metadata accessor for RollingClockViewModel(0);
  sub_1E490C1B8(&qword_1ECF7EC58, type metadata accessor for RollingClockViewModel, &unk_1E499A2B8);
  v42 = sub_1E49971EC();
  LOBYTE(v84[0]) = v43 & 1;
  v44 = v32;
  v45 = sub_1E48C36F4();

  *&v80 = v42;
  BYTE8(v80) = v84[0];
  *&v81 = v45;
  *(&v81 + 1) = v39;
  v82 = 0uLL;
  LOBYTE(v83[0]) = 0;
  *(&v83[0] + 1) = v44;
  *&v83[1] = v41;
  WORD4(v83[1]) = 896;
  v47 = sub_1E4961CE4(v35, v36, v46);
  swift_getKeyPath();
  *&v84[0] = v47;
  sub_1E4996FCC();

  sub_1E48D2BC4();
  v48 = v78;
  sub_1E499793C();

  v84[2] = v82;
  *v85 = v83[0];
  *&v85[10] = *(v83 + 10);
  v84[0] = v80;
  v84[1] = v81;
  sub_1E48C1180(v84);
  v49 = v77;
  sub_1E48C12D0(v79, v77, &qword_1ECF7FEB0, &qword_1E49A05A8);
  LOBYTE(v47) = v88;
  v50 = v87;
  LODWORD(v68) = v86;
  v51 = v74;
  v52 = *(v74 + 16);
  v53 = v73;
  v54 = v48;
  v55 = v75;
  v52(v73, v54, v75);
  v56 = v49;
  v57 = v76;
  sub_1E48C12D0(v56, v76, &qword_1ECF7FEB0, &qword_1E49A05A8);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FEB8, &qword_1E49A0660);
  v59 = v57 + *(v58 + 48);
  *v59 = 0;
  *(v59 + 8) = v47;
  *(v59 + 16) = v72;
  *(v59 + 24) = v50;
  *(v59 + 32) = v71;
  *(v59 + 40) = v68;
  v60 = v69;
  *(v59 + 48) = v70;
  *(v59 + 56) = v60;
  v52((v57 + *(v58 + 64)), v53, v55);
  v61 = *(v51 + 8);
  v61(v78, v55);
  sub_1E48C1338(v79, &qword_1ECF7FEB0, &qword_1E49A05A8);
  v61(v53, v55);
  return sub_1E48C1338(v77, &qword_1ECF7FEB0, &qword_1E49A05A8);
}

uint64_t sub_1E490A558@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v78 = a2;
  v79 = a3;
  v4 = sub_1E4996A4C();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v77 = v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_1E49979EC();
  v6 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v8 = v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FEB0, &qword_1E49A05A8);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v80 = v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (v65 - v13);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v65 - v16;
  v66 = v65 - v16;
  v70 = sub_1E4997ADC();
  v18 = sub_1E4997A6C();
  v74 = *MEMORY[0x1E69814D8];
  v73 = *(v6 + 104);
  v73(v8);
  v19 = sub_1E4997AAC();
  v72 = *a1;
  v20 = *(a1 + 8);
  v71 = *(a1 + 8);
  v22 = sub_1E4961CE4(v72, v20, v21);
  swift_getKeyPath();
  v85 = v22;
  v65[1] = sub_1E490C1B8(&qword_1ECF7F308, type metadata accessor for WorldViewModel, &unk_1E499D450);
  sub_1E4996FCC();

  v23 = *(v22 + 176);

  if (!v23)
  {
    v19 = v18;
  }

  v76 = objc_opt_self();
  v24 = *MEMORY[0x1E69DB980];
  v25 = [v76 systemFontOfSize:26.0 weight:*MEMORY[0x1E69DB980]];
  v26 = sub_1E499782C();
  KeyPath = swift_getKeyPath();
  v28 = (v14 + *(v10 + 44));
  v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F590, &qword_1E499C058) + 28);
  v30 = *MEMORY[0x1E69816C8];
  v31 = sub_1E4997B1C();
  (*(*(v31 - 8) + 104))(v28 + v29, v30, v31);
  *v28 = swift_getKeyPath();
  *v14 = v70;
  v14[1] = v19;
  v14[2] = KeyPath;
  v14[3] = v26;
  sub_1E48C15C8(v14, v17, &qword_1ECF7FEB0, &qword_1E49A05A8);
  sub_1E4997CEC();
  sub_1E499722C();
  v70 = v85;
  v69 = v87;
  v68 = v89;
  v67 = v90;
  v84 = 1;
  v83 = v86;
  v82 = v88;
  sub_1E48F2DA8(v77);
  v32 = sub_1E49978CC();
  v34 = v33;
  v36 = v35;
  v37 = sub_1E4997A6C();
  (v73)(v8, v74, v75);
  v38 = sub_1E4997AAC();
  v40 = sub_1E4961CE4(v72, v71, v39);
  swift_getKeyPath();
  v81 = v40;
  sub_1E4996FCC();

  LODWORD(KeyPath) = *(v40 + 176);

  if (KeyPath)
  {
    v37 = v38;
  }

  v81 = v37;
  v41 = sub_1E499786C();
  v43 = v42;
  v45 = v44;
  sub_1E48C1564(v32, v34, v36 & 1);

  v46 = [v76 systemFontOfSize:26.0 weight:v24];
  sub_1E499782C();
  v47 = sub_1E499788C();
  v49 = v48;
  LODWORD(v78) = v50;
  v52 = v51;

  sub_1E48C1564(v41, v43, v45 & 1);

  v53 = v66;
  v54 = v80;
  sub_1E48C12D0(v66, v80, &qword_1ECF7FEB0, &qword_1E49A05A8);
  v55 = v84;
  LOBYTE(v41) = v83;
  v56 = v82;
  v57 = v54;
  v58 = v79;
  sub_1E48C12D0(v57, v79, &qword_1ECF7FEB0, &qword_1E49A05A8);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FEC0, &qword_1E49A0668);
  v60 = v58 + *(v59 + 48);
  *v60 = 0;
  *(v60 + 8) = v55;
  *(v60 + 16) = v70;
  *(v60 + 24) = v41;
  *(v60 + 32) = v69;
  *(v60 + 40) = v56;
  v61 = v67;
  *(v60 + 48) = v68;
  *(v60 + 56) = v61;
  v62 = v58 + *(v59 + 64);
  *v62 = v47;
  *(v62 + 8) = v49;
  LOBYTE(v61) = v78;
  v63 = v78 & 1;
  *(v62 + 16) = v78 & 1;
  *(v62 + 24) = v52;
  sub_1E48C14F4(v47, v49, v61 & 1);

  sub_1E48C1338(v53, &qword_1ECF7FEB0, &qword_1E49A05A8);
  sub_1E48C1564(v47, v49, v63);

  return sub_1E48C1338(v80, &qword_1ECF7FEB0, &qword_1E49A05A8);
}

uint64_t sub_1E490AC5C@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v47 = a3;
  v48 = a2;
  v50 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FEE0, &qword_1E49A0688);
  v52 = *(v7 - 8);
  v53 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v51 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v54 = &v40 - v10;
  v11 = sub_1E499732C();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v12 + 104);
  v44 = *MEMORY[0x1E697E7D0];
  v42 = v16;
  v43 = v12 + 104;
  v16(v15, v13);
  v49 = a1;
  LOBYTE(a1) = sub_1E499731C();
  v17 = *(v12 + 8);
  v45 = v12 + 8;
  v46 = v11;
  v41 = v17;
  v17(v15, v11);
  sub_1E4997CEC();
  if (a1)
  {
    sub_1E499722C();
    LOBYTE(v56) = 1;
    LOBYTE(v80) = BYTE8(v73);
    v67 = BYTE8(v74);
    *&v70[0] = 0;
    BYTE8(v70[0]) = 1;
    *&v70[1] = v73;
    BYTE8(v70[1]) = BYTE8(v73);
    *&v70[2] = v74;
    BYTE8(v70[2]) = BYTE8(v74);
    v70[3] = v75;
    sub_1E48B3E7C(v70);
  }

  else
  {
    sub_1E499736C();
    LOBYTE(v56) = 1;
    *&v72[55] = v76;
    *&v72[71] = v77;
    *&v72[87] = v78;
    *&v72[103] = v79;
    *&v72[7] = v73;
    *&v72[23] = v74;
    *&v72[39] = v75;
    *&v70[0] = 0;
    BYTE8(v70[0]) = 1;
    *(&v70[3] + 9) = *&v72[48];
    *(&v70[2] + 9) = *&v72[32];
    *(&v70[1] + 9) = *&v72[16];
    *(v70 + 9) = *v72;
    *(&v70[7] + 1) = *(&v79 + 1);
    *(&v70[6] + 9) = *&v72[96];
    *(&v70[5] + 9) = *&v72[80];
    *(&v70[4] + 9) = *&v72[64];
    sub_1E48B3E70(v70);
  }

  v68[6] = v70[6];
  v68[7] = v70[7];
  v69 = v71;
  v68[2] = v70[2];
  v68[3] = v70[3];
  v68[4] = v70[4];
  v68[5] = v70[5];
  v68[0] = v70[0];
  v68[1] = v70[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FE48, &qword_1E49A0560);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FE50, &qword_1E49A0568);
  sub_1E4911120(&qword_1ECF7FE58, &qword_1ECF7FE48, &qword_1E49A0560);
  sub_1E4911120(&qword_1ECF7FE60, &qword_1ECF7FE50, &qword_1E49A0568);
  v18 = sub_1E499772C();
  v48(v18);
  v19 = v46;
  v42(v15, v44, v46);
  v20 = sub_1E499731C();
  v41(v15, v19);
  sub_1E4997CEC();
  if (v20)
  {
    sub_1E499736C();
    v67 = 1;
    *&v55[55] = v83;
    *&v55[71] = v84;
    *&v55[87] = v85;
    *&v55[103] = v86;
    *&v55[7] = v80;
    *&v55[23] = v81;
    *&v55[39] = v82;
    *&v68[0] = 0;
    BYTE8(v68[0]) = 1;
    *(&v68[3] + 9) = *&v55[48];
    *(&v68[2] + 9) = *&v55[32];
    *(&v68[1] + 9) = *&v55[16];
    *(v68 + 9) = *v55;
    *(&v68[7] + 1) = *(&v86 + 1);
    *(&v68[6] + 9) = *&v55[96];
    *(&v68[5] + 9) = *&v55[80];
    *(&v68[4] + 9) = *&v55[64];
    sub_1E48B3E7C(v68);
  }

  else
  {
    sub_1E499722C();
    v67 = 1;
    v66 = BYTE8(v80);
    v65 = BYTE8(v81);
    *&v68[0] = 0;
    BYTE8(v68[0]) = 1;
    *&v68[1] = v80;
    BYTE8(v68[1]) = BYTE8(v80);
    *&v68[2] = v81;
    BYTE8(v68[2]) = BYTE8(v81);
    v68[3] = v82;
    sub_1E48B3E70(v68);
  }

  v61 = v68[5];
  v62 = v68[6];
  v63 = v68[7];
  v57 = v68[1];
  v58 = v68[2];
  v59 = v68[3];
  v60 = v68[4];
  v64 = v69;
  v56 = v68[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FE50, &qword_1E49A0568);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FE48, &qword_1E49A0560);
  sub_1E4911120(&qword_1ECF7FE60, &qword_1ECF7FE50, &qword_1E49A0568);
  sub_1E4911120(&qword_1ECF7FE58, &qword_1ECF7FE48, &qword_1E49A0560);
  sub_1E499772C();
  v61 = v92;
  v62 = v93;
  v63 = v94;
  v57 = v88;
  v58 = v89;
  v59 = v90;
  v60 = v91;
  v64 = v95;
  v56 = v87;
  v22 = v51;
  v21 = v52;
  v23 = *(v52 + 16);
  v25 = v53;
  v24 = v54;
  v23(v51, v54, v53);
  v68[6] = v70[6];
  v68[7] = v70[7];
  v68[2] = v70[2];
  v68[3] = v70[3];
  v68[4] = v70[4];
  v68[5] = v70[5];
  v68[0] = v70[0];
  v68[1] = v70[1];
  v26 = v61;
  v27 = v63;
  v28 = v50;
  *(v50 + 96) = v62;
  *(v28 + 112) = v27;
  v29 = v57;
  v30 = v59;
  v31 = v60;
  *(v28 + 32) = v58;
  *(v28 + 48) = v30;
  v69 = v71;
  *(v28 + 128) = v64;
  *(v28 + 64) = v31;
  *(v28 + 80) = v26;
  *v28 = v56;
  *(v28 + 16) = v29;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FEE8, &qword_1E49A0690);
  v23((v28 + *(v32 + 48)), v22, v25);
  v33 = v28 + *(v32 + 64);
  v34 = v68[7];
  *(v33 + 96) = v68[6];
  *(v33 + 112) = v34;
  *(v33 + 128) = v69;
  v35 = v68[3];
  *(v33 + 32) = v68[2];
  *(v33 + 48) = v35;
  v36 = v68[5];
  *(v33 + 64) = v68[4];
  *(v33 + 80) = v36;
  v37 = v68[1];
  *v33 = v68[0];
  *(v33 + 16) = v37;
  v38 = *(v21 + 8);
  v38(v24, v25);
  return (v38)(v22, v25);
}

uint64_t sub_1E490B654@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v41 = a3;
  v42 = a2;
  v45 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FE40, &qword_1E49A0558);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v46 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v44 = &v36 - v10;
  v11 = sub_1E499732C();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v12 + 104);
  v39 = *MEMORY[0x1E697E7D0];
  v37 = v16;
  v38 = v12 + 104;
  v16(v15, v13);
  v43 = a1;
  LOBYTE(a1) = sub_1E499731C();
  v17 = *(v12 + 8);
  v40 = v11;
  v36 = v17;
  v17(v15, v11);
  sub_1E4997CEC();
  if (a1)
  {
    sub_1E499722C();
    LOBYTE(v48) = 1;
    LOBYTE(v72) = BYTE8(v65);
    v59 = BYTE8(v66);
    *&v62[0] = 0;
    BYTE8(v62[0]) = 1;
    *&v62[1] = v65;
    BYTE8(v62[1]) = BYTE8(v65);
    *&v62[2] = v66;
    BYTE8(v62[2]) = BYTE8(v66);
    v62[3] = v67;
    sub_1E48B3E7C(v62);
  }

  else
  {
    sub_1E499736C();
    LOBYTE(v48) = 1;
    *&v64[55] = v68;
    *&v64[71] = v69;
    *&v64[87] = v70;
    *&v64[103] = v71;
    *&v64[7] = v65;
    *&v64[23] = v66;
    *&v64[39] = v67;
    *&v62[0] = 0;
    BYTE8(v62[0]) = 1;
    *(&v62[3] + 9) = *&v64[48];
    *(&v62[2] + 9) = *&v64[32];
    *(&v62[1] + 9) = *&v64[16];
    *(v62 + 9) = *v64;
    *(&v62[7] + 1) = *(&v71 + 1);
    *(&v62[6] + 9) = *&v64[96];
    *(&v62[5] + 9) = *&v64[80];
    *(&v62[4] + 9) = *&v64[64];
    sub_1E48B3E70(v62);
  }

  v60[6] = v62[6];
  v60[7] = v62[7];
  v61 = v63;
  v60[2] = v62[2];
  v60[3] = v62[3];
  v60[4] = v62[4];
  v60[5] = v62[5];
  v60[0] = v62[0];
  v60[1] = v62[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FE48, &qword_1E49A0560);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FE50, &qword_1E49A0568);
  sub_1E4911120(&qword_1ECF7FE58, &qword_1ECF7FE48, &qword_1E49A0560);
  sub_1E4911120(&qword_1ECF7FE60, &qword_1ECF7FE50, &qword_1E49A0568);
  v18 = sub_1E499772C();
  v19 = v44;
  v42(v18);
  v20 = v40;
  v37(v15, v39, v40);
  v21 = sub_1E499731C();
  v36(v15, v20);
  sub_1E4997CEC();
  if (v21)
  {
    sub_1E499736C();
    v59 = 1;
    *&v47[55] = v75;
    *&v47[71] = v76;
    *&v47[87] = v77;
    *&v47[103] = v78;
    *&v47[7] = v72;
    *&v47[23] = v73;
    *&v47[39] = v74;
    *&v60[0] = 0;
    BYTE8(v60[0]) = 1;
    *(&v60[3] + 9) = *&v47[48];
    *(&v60[2] + 9) = *&v47[32];
    *(&v60[1] + 9) = *&v47[16];
    *(v60 + 9) = *v47;
    *(&v60[7] + 1) = *(&v78 + 1);
    *(&v60[6] + 9) = *&v47[96];
    *(&v60[5] + 9) = *&v47[80];
    *(&v60[4] + 9) = *&v47[64];
    sub_1E48B3E7C(v60);
  }

  else
  {
    sub_1E499722C();
    v59 = 1;
    v58 = BYTE8(v72);
    v57 = BYTE8(v73);
    *&v60[0] = 0;
    BYTE8(v60[0]) = 1;
    *&v60[1] = v72;
    BYTE8(v60[1]) = BYTE8(v72);
    *&v60[2] = v73;
    BYTE8(v60[2]) = BYTE8(v73);
    v60[3] = v74;
    sub_1E48B3E70(v60);
  }

  v53 = v60[5];
  v54 = v60[6];
  v55 = v60[7];
  v49 = v60[1];
  v50 = v60[2];
  v51 = v60[3];
  v52 = v60[4];
  v56 = v61;
  v48 = v60[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FE50, &qword_1E49A0568);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FE48, &qword_1E49A0560);
  sub_1E4911120(&qword_1ECF7FE60, &qword_1ECF7FE50, &qword_1E49A0568);
  sub_1E4911120(&qword_1ECF7FE58, &qword_1ECF7FE48, &qword_1E49A0560);
  sub_1E499772C();
  v53 = v84;
  v54 = v85;
  v55 = v86;
  v49 = v80;
  v50 = v81;
  v51 = v82;
  v52 = v83;
  v56 = v87;
  v48 = v79;
  v22 = v46;
  sub_1E48C12D0(v19, v46, &qword_1ECF7FE40, &qword_1E49A0558);
  v60[6] = v62[6];
  v60[7] = v62[7];
  v60[2] = v62[2];
  v60[3] = v62[3];
  v60[4] = v62[4];
  v60[5] = v62[5];
  v60[0] = v62[0];
  v60[1] = v62[1];
  v23 = v53;
  v24 = v55;
  v25 = v45;
  *(v45 + 96) = v54;
  *(v25 + 112) = v24;
  v26 = v49;
  v27 = v51;
  v28 = v52;
  *(v25 + 32) = v50;
  *(v25 + 48) = v27;
  v61 = v63;
  *(v25 + 128) = v56;
  *(v25 + 64) = v28;
  *(v25 + 80) = v23;
  *v25 = v48;
  *(v25 + 16) = v26;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FE68, &qword_1E49A0570);
  sub_1E48C12D0(v22, v25 + *(v29 + 48), &qword_1ECF7FE40, &qword_1E49A0558);
  v30 = v25 + *(v29 + 64);
  v31 = v60[7];
  *(v30 + 96) = v60[6];
  *(v30 + 112) = v31;
  *(v30 + 128) = v61;
  v32 = v60[3];
  *(v30 + 32) = v60[2];
  *(v30 + 48) = v32;
  v33 = v60[5];
  *(v30 + 64) = v60[4];
  *(v30 + 80) = v33;
  v34 = v60[1];
  *v30 = v60[0];
  *(v30 + 16) = v34;
  sub_1E48C1338(v19, &qword_1ECF7FE40, &qword_1E49A0558);
  return sub_1E48C1338(v22, &qword_1ECF7FE40, &qword_1E49A0558);
}

uint64_t sub_1E490C00C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for WorldViewModel(0);
  sub_1E490C1B8(&qword_1ECF7F308, type metadata accessor for WorldViewModel, &unk_1E499D450);
  *a2 = sub_1E49971EC();
  *(a2 + 8) = v4 & 1;
  v5 = *(a1 + 20);
  *(a2 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FDC0, &qword_1E49A0460);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1E490C0D8@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1E4997CEC();
  a1[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FDC8, &qword_1E49A0468);
  sub_1E4908308(v2, a1 + *(v5 + 44));
  v6 = sub_1E499734C();
  v7 = sub_1E49977CC();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FDD0, &qword_1E49A0470);
  v9 = a1 + *(result + 36);
  *v9 = v6;
  v9[8] = v7;
  return result;
}

uint64_t sub_1E490C160(uint64_t a1)
{
  result = sub_1E490C1B8(&qword_1ECF7F300, type metadata accessor for WorldClockFace, &unk_1E49A03C4);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1E490C1B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E490C200@<X0>(uint64_t a2@<X3>, char a3@<W4>, uint64_t *a4@<X8>)
{
  *a4 = sub_1E4997CEC();
  a4[1] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FF20, &qword_1E49A0818);
  v10 = a3 & 1;
  sub_1E490C488(a2, a3 & 1, a4 + *(v9 + 44));
  sub_1E4961CE4(a2, v10, v11);
  swift_getKeyPath();
  sub_1E490C1B8(&qword_1ECF7F308, type metadata accessor for WorldViewModel, &unk_1E499D450);
  sub_1E4996FCC();

  v13 = sub_1E4961CE4(a2, v10, v12);
  swift_getKeyPath();
  *&v22 = v13;
  sub_1E4996FCC();

  sub_1E4997CEC();
  sub_1E499722C();
  v14 = (a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FF28, &qword_1E49A0848) + 36));
  *v14 = v22;
  v14[1] = v23;
  v14[2] = v24;
  v15 = sub_1E4961CE4(a2, v10, v24);
  swift_getKeyPath();
  sub_1E4996FCC();

  v16 = v15[18];

  v18 = sub_1E4961CE4(a2, v10, v17);
  swift_getKeyPath();
  sub_1E4996FCC();

  v19 = v18[19];

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FF30, &qword_1E49A0850);
  v21 = (a4 + *(result + 36));
  *v21 = v16;
  v21[1] = v19;
  return result;
}

void sub_1E490C488(uint64_t a1@<X2>, int a2@<W3>, uint64_t a3@<X8>)
{
  v154 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FF38, &qword_1E49A0858);
  v163 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v155 = &v136 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v162 = &v136 - v8;
  v159 = sub_1E49979EC();
  v164 = *(v159 - 8);
  MEMORY[0x1EEE9AC00](v159);
  v158 = &v136 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = sub_1E4997AEC();
  v153 = *(v157 - 8);
  MEMORY[0x1EEE9AC00](v157);
  v152 = &v136 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FF40, &qword_1E49A0860);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v136 - v13;
  v15 = sub_1E4961CE4(a1, a2 & 1, v12);
  swift_getKeyPath();
  v208.n128_u64[0] = v15;
  v16 = sub_1E490C1B8(&qword_1ECF7F308, type metadata accessor for WorldViewModel, &unk_1E499D450);
  sub_1E4996FCC();

  v17 = *(v15 + 136);

  v160 = a2;
  v161 = a1;
  v19 = sub_1E4961CE4(a1, a2 & 1, v18);
  swift_getKeyPath();
  v165 = v16;
  v156 = v5;
  if (v17 == 1)
  {
    v208.n128_u64[0] = v19;
    sub_1E4996FCC();

    if (qword_1ECF7EB48 != -1)
    {
      swift_once();
    }

    v20 = qword_1ECF819A8;
    sub_1E4997B3C();
    v21 = *MEMORY[0x1E6981698];
    v22 = sub_1E4997B0C();
    v23 = *(v22 - 8);
    (*(v23 + 104))(v14, v21, v22);
    (*(v23 + 56))(v14, 0, 1, v22);
    sub_1E4997AFC();

    sub_1E48C1338(v14, &qword_1ECF7FF40, &qword_1E49A0860);
    v25 = v152;
    v24 = v153;
    v26 = v157;
    (*(v153 + 104))(v152, *MEMORY[0x1E6981630], v157);
    v27 = sub_1E4997B2C();

    (*(v24 + 8))(v25, v26);
    v197 = v27;
    LOWORD(v198) = 1;
    BYTE2(v198) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FF48, &qword_1E49A08B8);
    sub_1E49119BC();
    sub_1E499772C();
    v152 = v208.n128_u64[1];
    v153 = v208.n128_u64[0];
    v150 = BYTE2(v209);
    v151 = v209;
  }

  else
  {
    v208.n128_u64[0] = v19;
    sub_1E4996FCC();

    if (qword_1ECF7EB48 != -1)
    {
      swift_once();
    }

    v28 = qword_1ECF819A8;
    sub_1E4997B3C();
    v29 = *MEMORY[0x1E6981698];
    v30 = sub_1E4997B0C();
    v31 = *(v30 - 8);
    (*(v31 + 104))(v14, v29, v30);
    (*(v31 + 56))(v14, 0, 1, v30);
    v32 = sub_1E4997AFC();

    sub_1E48C1338(v14, &qword_1ECF7FF40, &qword_1E49A0860);
    v197 = v32;
    LOWORD(v198) = 0;
    BYTE2(v198) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FF48, &qword_1E49A08B8);
    sub_1E49119BC();
    sub_1E499772C();
    v152 = v208.n128_u64[1];
    v153 = v208.n128_u64[0];
    v150 = BYTE2(v209);
    v151 = v209;
  }

  v33 = v164;
  v34 = v158;
  sub_1E4997A6C();
  v35 = sub_1E4997A8C();

  v36 = *MEMORY[0x1E69814D8];
  v37 = *(v33 + 104);
  v164 = v33 + 104;
  v146 = v36;
  v145 = v37;
  v37(v34);
  v38 = sub_1E4997AAC();
  v39 = v160;
  v40 = v161;
  v42 = sub_1E4961CE4(v161, v160 & 1, v41);
  swift_getKeyPath();
  v208.n128_u64[0] = v42;
  sub_1E4996FCC();

  v43 = *(v42 + 176);

  v147 = v43;
  v148 = v38;
  v149 = v35;

  v45 = sub_1E4961CE4(v40, v39 & 1, v44);
  swift_getKeyPath();
  v208.n128_u64[0] = v45;
  sub_1E4996FCC();

  v47 = *(v45 + OBJC_IVAR____TtC11ClockPoster14WorldViewModel__solarTerminatorPath);
  v46 = *(v45 + OBJC_IVAR____TtC11ClockPoster14WorldViewModel__solarTerminatorPath + 8);
  v157 = *(v45 + OBJC_IVAR____TtC11ClockPoster14WorldViewModel__solarTerminatorPath + 16);
  v48 = *(v45 + OBJC_IVAR____TtC11ClockPoster14WorldViewModel__solarTerminatorPath + 24);

  if (v46)
  {
    v50 = sub_1E4961CE4(v40, v39 & 1, v49);
    swift_getKeyPath();
    v208.n128_u64[0] = v50;
    v138 = v48;
    sub_1E4996FCC();

    v51 = *(v50 + 37);
    v52 = *(v50 + 39);
    v53 = *(v50 + 33);
    v229[6] = *(v50 + 35);
    v229[7] = v51;
    v229[8] = v52;
    v230 = v50[41];
    v54 = *(v50 + 29);
    v229[2] = *(v50 + 27);
    v229[3] = v54;
    v229[4] = *(v50 + 31);
    v229[5] = v53;
    v55 = *(v50 + 25);
    v229[0] = *(v50 + 23);
    v229[1] = v55;
    sub_1E48CCDD4(v229, &v208);

    v57 = sub_1E4961CE4(v40, v39 & 1, v56);
    swift_getKeyPath();
    v208.n128_u64[0] = v57;
    sub_1E4996FCC();

    v58 = v57[20];
    v59 = v57[21];

    v137 = v47;
    v60 = v46;
    sub_1E48DAA8C(v47 & 1, v46, v157, v48 & 1, v229, 1, v58, v59);
    v62 = v61;
    sub_1E48EB6DC(v229);
    v63 = [v62 CGPath];

    sub_1E499783C();
    v143 = v220;
    v144 = v219;
    v141 = v222;
    v142 = v221;
    v140 = v223;
    sub_1E4997A3C();
    v64 = sub_1E4997A8C();

    sub_1E4997A3C();
    v65 = sub_1E4997A8C();

    v66 = v40;
    v68 = sub_1E4961CE4(v40, v39 & 1, v67);
    swift_getKeyPath();
    v208.n128_u64[0] = v68;
    sub_1E4996FCC();

    LODWORD(v62) = *(v68 + 176);

    if (v62)
    {
      v69 = v65;
    }

    else
    {
      v69 = v64;
    }

    v139 = v69;

    v71 = sub_1E4961CE4(v40, v39 & 1, v70);
    swift_getKeyPath();
    v208.n128_u64[0] = v71;
    sub_1E4996FCC();

    v72 = *(v71 + 37);
    v73 = *(v71 + 39);
    v74 = *(v71 + 33);
    v227[6] = *(v71 + 35);
    v227[7] = v72;
    v227[8] = v73;
    v228 = v71[41];
    v75 = *(v71 + 29);
    v227[2] = *(v71 + 27);
    v227[3] = v75;
    v227[4] = *(v71 + 31);
    v227[5] = v74;
    v76 = *(v71 + 25);
    v227[0] = *(v71 + 23);
    v227[1] = v76;
    sub_1E48CCDD4(v227, &v208);

    v78 = sub_1E4961CE4(v40, v39 & 1, v77);
    swift_getKeyPath();
    v208.n128_u64[0] = v78;
    sub_1E4996FCC();

    v79 = v78[20];
    v80 = v78[21];

    sub_1E48DAA8C(v137 & 1, v60, v157, v138 & 1, v227, 0, v79, v80);
    v82 = v81;

    sub_1E48EB6DC(v227);
    v83 = [v82 CGPath];

    sub_1E499783C();
    v84 = MEMORY[0x1E69E7CC0];
    sub_1E49971FC();
    v85 = v158;
    v86 = v159;
    v87 = v146;
    v88 = v145;
    v145(v158, v146, v159);
    v89 = sub_1E4997AAC();
    v88(v85, v87, v86);
    v90 = sub_1E4997AAC();
    v92 = sub_1E4961CE4(v66, v39 & 1, v91);
    swift_getKeyPath();
    v208.n128_u64[0] = v92;
    sub_1E4996FCC();

    LODWORD(v87) = *(v92 + 176);

    if (v87)
    {
      v93 = v90;
    }

    else
    {
      v93 = v89;
    }

    v94 = sub_1E48C4318();
    v95 = *(v94 + 16);
    if (v95)
    {
      v208.n128_u64[0] = v84;
      sub_1E4906F78(0, v95, 0);
      v96 = v208.n128_u64[0];
      v97 = v94 + 40;
      do
      {

        v98 = sub_1E4997CAC();
        v208.n128_u64[0] = v96;
        v101 = *(v96 + 16);
        v100 = *(v96 + 24);
        if (v101 >= v100 >> 1)
        {
          v164 = v98;
          v103 = v99;
          sub_1E4906F78((v100 > 1), v101 + 1, 1);
          v99 = v103;
          v98 = v164;
          v96 = v208.n128_u64[0];
        }

        *(v96 + 16) = v101 + 1;
        v102 = v96 + 16 * v101;
        *(v102 + 32) = v98;
        *(v102 + 40) = v99;
        v97 += 16;
        --v95;
      }

      while (v95);
    }

    sub_1E4997D8C();
    sub_1E4997D9C();
    sub_1E4997CBC();
    sub_1E49972FC();
    v166[2] = v172;
    v166[3] = v173;
    v166[4] = v174;
    v166[0] = v170;
    v166[1] = v171;
    *&v167 = v93;
    *(&v167 + 1) = v224;
    v168 = v225;
    v169 = v226;
    v177 = v172;
    v178 = v173;
    v175 = v170;
    v176 = v171;
    v179 = v174;
    v180 = v167;
    v181 = v225;
    v182 = v226;
    v189 = v173;
    v190 = v174;
    v187 = v171;
    v188 = v172;
    v186 = v170;
    *&v191 = v93;
    *(&v191 + 1) = v224;
    v192 = v225;
    v193 = v226;
    v107 = v143;
    v106 = v144;
    v109 = v141;
    v108 = v142;
    v110 = v140;
    sub_1E4911ABC(v144, v143, v142, v141, v140);
    v111 = v139;

    sub_1E48C12D0(v166, &v208, &qword_1ECF7FF70, &qword_1E49A08F8);
    sub_1E48C1338(&v186, &qword_1ECF7FF70, &qword_1E49A08F8);
    sub_1E4911AD4(v106, v107, v108, v109, v110);

    v197.n128_u64[0] = v106;
    v197.n128_u64[1] = v107;
    *&v198 = v108;
    *(&v198 + 1) = v109;
    LOBYTE(v199) = v110;
    *(&v199 + 1) = v111;
    v204 = v179;
    v205 = v180;
    v206 = v181;
    v207 = v182;
    v200 = v175;
    v201 = v176;
    v202 = v177;
    v203 = v178;
    GEOLocationCoordinate2DMake();
    v216 = v205;
    v217 = v206;
    v218 = v207;
    v213 = v202;
    v215 = v204;
    v214 = v203;
    v208 = v197;
    v209 = v198;
    v104 = v200;
    v211 = v200;
    v212 = v201;
    v210 = v199;
    v40 = v161;
    v105 = v156;
    v39 = v160;
  }

  else
  {
    v104.n128_f64[0] = sub_1E4911A40(&v208);
    v105 = v156;
  }

  v112 = v149;
  if (v147)
  {
    v112 = v148;
  }

  v164 = v112;
  v113 = sub_1E4961CE4(v40, v39 & 1, v104);
  swift_getKeyPath();
  v197.n128_u64[0] = v113;
  sub_1E4996FCC();

  v114 = v113[20];
  v115 = v113[21];

  type metadata accessor for WorldViewModel(0);
  v197.n128_u64[0] = sub_1E49971EC();
  v197.n128_u8[8] = v116 & 1;
  *&v198 = v114;
  *(&v198 + 1) = v115;
  sub_1E4961CE4(v40, v39 & 1, v117);
  sub_1E4911A60();
  v118 = v162;
  sub_1E499793C();

  v183 = v216;
  v184 = v217;
  v185 = v218;
  v179 = v212;
  v180 = v213;
  v181 = v214;
  v182 = v215;
  v175 = v208;
  v176 = v209;
  v177 = v210;
  v178 = v211;
  v165 = *(v163 + 16);
  v119 = v155;
  v165(v155, v118, v105);
  v120 = v184;
  v194 = v183;
  v195 = v184;
  v121 = v185;
  v196 = v185;
  v122 = v179;
  v123 = v180;
  v190 = v179;
  v191 = v180;
  v125 = v181;
  v124 = v182;
  v192 = v181;
  v193 = v182;
  v126 = v175;
  v127 = v176;
  v186 = v175;
  v187 = v176;
  v129 = v177;
  v128 = v178;
  v188 = v177;
  v189 = v178;
  v131 = v153;
  v130 = v154;
  *(v154 + 160) = v183;
  *(v130 + 176) = v120;
  *(v130 + 192) = v121;
  *(v130 + 96) = v122;
  *(v130 + 112) = v123;
  *(v130 + 128) = v125;
  *(v130 + 144) = v124;
  *(v130 + 32) = v126;
  *(v130 + 48) = v127;
  v132 = v152;
  *v130 = v131;
  *(v130 + 8) = v132;
  v133 = v150;
  *(v130 + 16) = v151;
  *(v130 + 18) = v133;
  *(v130 + 24) = v164;
  *(v130 + 64) = v129;
  *(v130 + 80) = v128;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FF60, &qword_1E49A08E8);
  v165((v130 + *(v134 + 64)), v119, v105);
  j__swift_retain(v131);

  sub_1E48C12D0(&v186, &v197, &qword_1ECF7FF68, &qword_1E49A08F0);
  v135 = *(v163 + 8);
  v135(v162, v105);
  v135(v119, v105);
  v205 = v183;
  v206 = v184;
  v207 = v185;
  v201 = v179;
  v202 = v180;
  v203 = v181;
  v204 = v182;
  v197 = v175;
  v198 = v176;
  v199 = v177;
  v200 = v178;
  sub_1E48C1338(&v197, &qword_1ECF7FF68, &qword_1E49A08F0);
  j__swift_release(v131);
}

uint64_t sub_1E490D6D0@<X0>(uint64_t (**a1)@<X0>(uint64_t *a1@<X8>)@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = v4;
  *(v7 + 32) = v5;
  *(v7 + 40) = v6;
  *a1 = sub_1E4911990;
  a1[1] = v7;
  sub_1E49119B0(v3, v4);
}

__n128 sub_1E490D768@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v24 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80038, &qword_1E49A0AB8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = (&v23 - v10);
  *v11 = sub_1E4997CEC();
  v11[1] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80040, &qword_1E49A0AC0);
  v13 = a2 & 1;
  v15 = sub_1E4961CE4(a1, a2 & 1, v14);
  swift_getKeyPath();
  *&v25 = v15;
  sub_1E490C1B8(&qword_1ECF7F308, type metadata accessor for WorldViewModel, &unk_1E499D450);
  sub_1E4996FCC();

  swift_beginAccess();
  v16 = v15[42];

  *&v25 = v16;
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = v13;
  *(v17 + 32) = a4;
  *(v17 + 40) = a5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80048, &qword_1E49A0AF0);
  type metadata accessor for CLLocationCoordinate2D(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80050, &qword_1E49A0AF8);
  sub_1E48C1B44(&qword_1ECF80058, &qword_1ECF80048, &qword_1E49A0AF0, MEMORY[0x1E69E6338]);
  sub_1E4911AEC(&qword_1ECF80060, &qword_1ECF80050, &qword_1E49A0AF8, sub_1E4911D00);
  sub_1E490C1B8(&qword_1ECF80070, type metadata accessor for WorldViewModel.Pin, &unk_1E499D358);
  sub_1E4997C9C();
  sub_1E4997CEC();
  sub_1E499736C();
  v18 = v24;
  sub_1E48C15C8(v11, v24, &qword_1ECF80038, &qword_1E49A0AB8);
  v19 = v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80078, &qword_1E49A0B00) + 36);
  v20 = v30;
  *(v19 + 64) = v29;
  *(v19 + 80) = v20;
  *(v19 + 96) = v31;
  v21 = v26;
  *v19 = v25;
  *(v19 + 16) = v21;
  result = v28;
  *(v19 + 32) = v27;
  *(v19 + 48) = result;
  return result;
}

uint64_t sub_1E490DADC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v8 = (a1 + *(type metadata accessor for WorldViewModel.Pin(0) + 32));
  if (*(a1 + 17))
  {
    v9 = *(a1 + 16);
  }

  else
  {
    v9 = *(a1 + 16) | 0x80;
  }

  v10 = v8[1] - a4 * 0.5;
  v11 = *v8 - a3 * 0.5;
  type metadata accessor for WorldViewModel(0);
  sub_1E490C1B8(&qword_1ECF7F308, type metadata accessor for WorldViewModel, &unk_1E499D450);
  result = sub_1E49971EC();
  *a2 = result;
  *(a2 + 8) = v13 & 1;
  *(a2 + 9) = v9;
  *(a2 + 16) = v11;
  *(a2 + 24) = v10;
  return result;
}

void *sub_1E490DBD0@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = a2;
  v7 = a2 >> 8;
  v8 = sub_1E4997CEC();
  v10 = v9;
  sub_1E490DCDC(a1, v4 & 0xFF01, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v15, __src, sizeof(v15));
  sub_1E48C12D0(__dst, v13, &qword_1ECF80090, &qword_1E49A0BD0);
  sub_1E48C1338(v15, &qword_1ECF80090, &qword_1E49A0BD0);
  memcpy(__src, __dst, sizeof(__src));
  v11 = sub_1E4997CFC();
  *a3 = v8;
  *(a3 + 8) = v10;
  result = memcpy((a3 + 16), __src, 0x118uLL);
  *(a3 + 296) = v11;
  *(a3 + 304) = v7;
  return result;
}

uint64_t sub_1E490DCDC@<X0>(uint64_t a1@<X0>, __int16 a2@<W1>, void *a3@<X8>)
{
  v32 = a3;
  v5 = sub_1E49979EC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1E4997A6C();
  sub_1E4997CEC();
  sub_1E499722C();
  *&v79[6] = v83;
  *&v79[22] = v84;
  *&v79[38] = v85;
  v31 = sub_1E4997CEC();
  v38 = v9;
  sub_1E490E3C0(a1, a2 & 1, &v59);
  v37 = v59;
  v35 = HIBYTE(v60);
  v36 = v60;
  v59 = sub_1E4997A3C();
  sub_1E4911ED8();
  v34 = sub_1E4997ACC();
  v10 = sub_1E4997A6C();
  (*(v6 + 104))(v8, *MEMORY[0x1E69814D8], v5);
  v11 = sub_1E4997AAC();
  v13 = sub_1E4961CE4(a1, a2 & 1, v12);
  v28[3] = a2 & 0x100;
  v14 = v13;
  swift_getKeyPath();
  *&v29 = a1;
  v59 = v14;
  sub_1E490C1B8(&qword_1ECF7F308, type metadata accessor for WorldViewModel, &unk_1E499D450);
  sub_1E4996FCC();

  LODWORD(v5) = *(v14 + 176);

  if (v5)
  {
    v15 = v11;
  }

  else
  {
    v15 = v10;
  }

  v30 = v15;

  sub_1E4997CEC();
  sub_1E499722C();
  *&v78[6] = v86;
  *&v78[22] = v87;
  *&v78[38] = v88;
  v16 = [objc_opt_self() systemOrangeColor];
  v17 = sub_1E49979DC();
  v18 = sub_1E48D973C(v17);
  v20 = v19;
  v22 = sub_1E4961CE4(v29, a2 & 1, v21);
  swift_getKeyPath();
  v59 = v22;
  sub_1E4996FCC();

  v23 = *(v22 + 176);

  if (v23)
  {
    v24 = v20;
  }

  else
  {
    v24 = v18;
  }

  sub_1E4997CEC();
  sub_1E499722C();
  *&v77[6] = v89;
  *&v77[22] = v90;
  *&v77[38] = v91;
  *&v40[0] = v33;
  WORD4(v40[0]) = 256;
  *(v40 + 10) = *v79;
  *(&v40[1] + 10) = *&v79[16];
  *(&v40[2] + 10) = *&v79[32];
  *(&v40[3] + 1) = *&v79[46];
  v29 = xmmword_1E49A0370;
  v40[4] = xmmword_1E49A0370;
  LOBYTE(v41) = 1;
  DWORD1(v41) = *&v82[3];
  *(&v41 + 1) = *v82;
  *(&v41 + 1) = v37;
  LOBYTE(v42) = v36;
  BYTE1(v42) = v35;
  *(&v42 + 2) = v80;
  WORD3(v42) = v81;
  v25 = v31;
  *(&v42 + 1) = v31;
  *&v43 = v38;
  *(&v43 + 1) = v34;
  v44 = 0x4022000000000000;
  v46 = 0;
  v45 = 0;
  *&v39[144] = 0;
  *&v39[32] = v40[2];
  *&v39[48] = v40[3];
  *v39 = v40[0];
  *&v39[16] = v40[1];
  *&v39[112] = v43;
  *&v39[128] = 0x4022000000000000uLL;
  *&v39[64] = xmmword_1E49A0370;
  *&v39[80] = v41;
  *&v39[96] = v42;
  v26 = v30;
  *&v47[0] = v30;
  WORD4(v47[0]) = 256;
  *(v47 + 10) = *v78;
  *(&v47[1] + 10) = *&v78[16];
  *(&v47[2] + 10) = *&v78[32];
  *(&v47[3] + 1) = *&v78[46];
  *&v39[152] = v47[0];
  *&v39[168] = v47[1];
  *&v39[184] = v47[2];
  *&v39[200] = v47[3];
  *&v48[0] = v24;
  WORD4(v48[0]) = 256;
  *(v48 + 10) = *v77;
  *(&v48[3] + 1) = *(&v91 + 1);
  *(&v48[2] + 10) = *&v77[32];
  *(&v48[1] + 10) = *&v77[16];
  *&v39[264] = v48[3];
  *&v39[248] = v48[2];
  *&v39[232] = v48[1];
  *&v39[216] = v48[0];
  memcpy(v32, v39, 0x118uLL);
  v49 = v24;
  v50 = 256;
  v51 = *v77;
  v52 = *&v77[16];
  *v53 = *&v77[32];
  *&v53[14] = *&v77[46];
  sub_1E48C12D0(v40, &v59, &qword_1ECF800A0, &qword_1E49A0BD8);
  sub_1E48C12D0(v47, &v59, &qword_1ECF800A8, &qword_1E49A0BE0);
  sub_1E48C12D0(v48, &v59, &qword_1ECF800A8, &qword_1E49A0BE0);
  sub_1E48C1338(&v49, &qword_1ECF800A8, &qword_1E49A0BE0);
  v54 = v26;
  v55 = 256;
  v56 = *v78;
  v57 = *&v78[16];
  *v58 = *&v78[32];
  *&v58[14] = *&v78[46];
  sub_1E48C1338(&v54, &qword_1ECF800A8, &qword_1E49A0BE0);
  v59 = v33;
  v60 = 256;
  v61 = *v79;
  v62 = *&v79[16];
  *v63 = *&v79[32];
  *&v63[7] = *&v79[46];
  *&v63[11] = v29;
  v64 = 1;
  *v65 = *v82;
  *&v65[3] = *&v82[3];
  v66 = v37;
  v67 = v36;
  v68 = v35;
  v70 = v81;
  v69 = v80;
  v71 = v25;
  v72 = v38;
  v73 = v34;
  v74 = 0x4022000000000000;
  v76 = 0;
  v75 = 0;
  return sub_1E48C1338(&v59, &qword_1ECF800A0, &qword_1E49A0BD8);
}

void sub_1E490E3C0(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = [objc_opt_self() systemOrangeColor];
  sub_1E49979DC();
  v7 = sub_1E4997A8C();

  v8 = sub_1E48D973C(v7);
  v10 = v9;
  v12 = sub_1E4961CE4(a1, a2 & 1, v11);
  swift_getKeyPath();
  sub_1E490C1B8(&qword_1ECF7F308, type metadata accessor for WorldViewModel, &unk_1E499D450);
  sub_1E4996FCC();

  v13 = *(v12 + 176);

  if (v13)
  {
    v14 = v10;
  }

  else
  {
    v14 = v8;
  }

  *a3 = v14;
  *(a3 + 8) = 256;
}

uint64_t sub_1E490E528@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v54 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F848, &qword_1E499D520);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v53 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v56 = &v53 - v6;
  v7 = sub_1E499732C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v53 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FF78, &qword_1E49A0900);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v53 - v15;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FF80, &qword_1E49A0908);
  MEMORY[0x1EEE9AC00](v55);
  v57 = &v53 - v17;
  type metadata accessor for Dashboard(0);
  sub_1E4961D08(v13);
  (*(v8 + 104))(v10, *MEMORY[0x1E697E7D0], v7);
  v18 = sub_1E499731C();
  v19 = *(v8 + 8);
  v19(v10, v7);
  v19(v13, v7);
  if (v18)
  {
    v20 = sub_1E499763C();
  }

  else
  {
    v20 = sub_1E499764C();
  }

  *v16 = v20;
  *(v16 + 1) = 0;
  v16[16] = 1;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FF88, &qword_1E49A0910);
  sub_1E490EBB0(v2, &v16[*(v21 + 44)]);
  v22 = sub_1E4997D2C();
  v23 = *v2;
  v24 = *(v2 + 8);
  v26 = sub_1E4961CE4(*v2, v24, v25);
  swift_getKeyPath();
  v60 = v26;
  sub_1E490C1B8(&qword_1ECF7F308, type metadata accessor for WorldViewModel, &unk_1E499D450);
  sub_1E4996FCC();

  v27 = OBJC_IVAR____TtC11ClockPoster14WorldViewModel__highlighted;
  swift_beginAccess();
  v28 = v57;
  v29 = (v57 + *(v55 + 36));
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FE30, &qword_1E49A0548);
  sub_1E48C12D0(v26 + v27, v29 + *(v30 + 36), &qword_1ECF7F848, &qword_1E499D520);

  *v29 = v22;
  sub_1E48B3FEC(v16, v28);
  v32 = sub_1E4961CE4(v23, v24, v31);
  swift_getKeyPath();
  v59 = v32;
  sub_1E4996FCC();

  v33 = OBJC_IVAR____TtC11ClockPoster14WorldViewModel__highlighted;
  swift_beginAccess();
  v34 = v32 + v33;
  v35 = v56;
  sub_1E48C12D0(v34, v56, &qword_1ECF7F848, &qword_1E499D520);

  v36 = type metadata accessor for WorldViewModel.Pin(0);
  v37 = *(*(v36 - 8) + 48);
  if (v37(v35, 1, v36) == 1)
  {
    sub_1E48C1338(v35, &qword_1ECF7F848, &qword_1E499D520);
LABEL_13:
    v48 = 46.0;
    goto LABEL_14;
  }

  sub_1E48E3380();
  v39 = v38;
  sub_1E4911548(v35, type metadata accessor for WorldViewModel.Pin);
  if (!v39)
  {
    goto LABEL_13;
  }

  v41 = sub_1E4961CE4(v23, v24, v40);
  swift_getKeyPath();
  v58 = v41;
  sub_1E4996FCC();

  v42 = OBJC_IVAR____TtC11ClockPoster14WorldViewModel__highlighted;
  swift_beginAccess();
  v43 = v53;
  sub_1E48C12D0(v41 + v42, v53, &qword_1ECF7F848, &qword_1E499D520);

  result = (v37)(v43, 1, v36);
  if (result != 1)
  {
    v45 = sub_1E48E3380();
    v47 = v46;
    sub_1E4911548(v43, type metadata accessor for WorldViewModel.Pin);
    v48 = 28.0;
    if (v47)
    {
      if (!v45 && v47 == 0xE000000000000000)
      {

        goto LABEL_13;
      }

      v49 = sub_1E499884C();

      if (v49)
      {
        goto LABEL_13;
      }
    }

LABEL_14:
    v50 = v57;
    v51 = v54;
    sub_1E48C12D0(v57, v54, &qword_1ECF7FF80, &qword_1E49A0908);
    v52 = (v51 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FF90, &qword_1E49A0918) + 36));
    *v52 = 0.0;
    v52[1] = v48;
    return sub_1E48C1338(v50, &qword_1ECF7FF80, &qword_1E49A0908);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E490EBB0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v144 = a2;
  v142 = sub_1E499777C();
  MEMORY[0x1EEE9AC00](v142);
  v143 = &v115 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E49973BC();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v128 = &v115 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E499741C();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v125 = &v115 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = sub_1E499745C();
  v133 = *(v136 - 8);
  MEMORY[0x1EEE9AC00](v136);
  v131 = &v115 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F848, &qword_1E499D520);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v120 = &v115 - v10;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EE50, &qword_1E499B000);
  MEMORY[0x1EEE9AC00](v126);
  v134 = &v115 - v11;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EE40, &qword_1E499AFF8);
  MEMORY[0x1EEE9AC00](v127);
  v132 = &v115 - v12;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FF98, &qword_1E49A0920);
  MEMORY[0x1EEE9AC00](v130);
  v141 = &v115 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v129 = &v115 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v140 = &v115 - v17;
  v18 = sub_1E49979EC();
  v146 = v18;
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v115 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FFA0, &qword_1E49A0928);
  v137 = *(v138 - 8);
  MEMORY[0x1EEE9AC00](v138);
  v135 = &v115 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v148 = &v115 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FFA8, &qword_1E49A0930);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v149 = &v115 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v115 - v28;
  *v29 = sub_1E49975AC();
  *(v29 + 1) = 0;
  v29[16] = 0;
  v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FFB0, &qword_1E49A0938) + 44);
  v147 = v29;
  sub_1E490FD6C(a1, &v29[v30]);
  v117 = "xtraExpandedMedium";
  v31 = sub_1E4997EAC();
  v121 = CTFontCreateWithNameAndOptions(v31, 92.0, 0, 0x400uLL);

  v32 = sub_1E4997EAC();
  v33 = CTFontCreateWithNameAndOptions(v32, 92.0, 0, 0x400uLL);

  v118 = sub_1E48C36F4();
  v34 = sub_1E4997A6C();
  v35 = *MEMORY[0x1E69814D8];
  v38 = *(v19 + 104);
  v37 = v19 + 104;
  v36 = v38;
  v38(v21, v35, v18);
  v39 = sub_1E4997AAC();
  v145 = *a1;
  v139 = a1;
  v40 = *(a1 + 8);
  v150 = *(a1 + 8);
  v42 = sub_1E4961CE4(v145, v40, v41);
  swift_getKeyPath();
  *&v159[0] = v42;
  v43 = sub_1E490C1B8(&qword_1ECF7F308, type metadata accessor for WorldViewModel, &unk_1E499D450);
  sub_1E4996FCC();

  LODWORD(v33) = *(v42 + 176);

  if (v33)
  {
    v44 = v39;
  }

  else
  {
    v44 = v34;
  }

  v116 = v44;

  v45 = sub_1E4997A6C();
  v123 = v35;
  v124 = v37;
  v122 = v36;
  v36(v21, v35, v146);
  v119 = v21;
  v46 = sub_1E4997AAC();
  v47 = v145;
  v48 = v150;
  v50 = sub_1E4961CE4(v145, v150, v49);
  swift_getKeyPath();
  *&v159[0] = v50;
  sub_1E4996FCC();

  v51 = *(v50 + 176);

  if (!v51)
  {
    v46 = v45;
  }

  v52 = v120;
  v53 = sub_1E4997EAC();
  v54 = CTFontCreateWithNameAndOptions(v53, 92.0, 0, 0x400uLL);

  type metadata accessor for RollingClockViewModel(0);
  sub_1E490C1B8(&qword_1ECF7EC58, type metadata accessor for RollingClockViewModel, &unk_1E499A2B8);
  v55 = sub_1E49971EC();
  LOBYTE(v159[0]) = v56 & 1;
  *&v153 = v55;
  BYTE8(v153) = v56 & 1;
  *&v154 = v118;
  *(&v154 + 1) = v116;
  v155 = v46;
  LOBYTE(v156) = 0;
  *(&v156 + 1) = v121;
  *&v157 = v54;
  WORD4(v157) = 768;
  v158 = xmmword_1E49A0380;
  v57 = sub_1E4961CE4(v47, v48, xmmword_1E49A0380);
  swift_getKeyPath();
  *&v159[0] = v57;
  sub_1E4996FCC();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FFB8, &qword_1E49A0968);
  sub_1E4911AEC(&qword_1ECF7FFC0, &qword_1ECF7FFB8, &qword_1E49A0968, sub_1E48D2BC4);
  sub_1E499793C();

  v159[2] = v155;
  v159[3] = v156;
  v159[4] = v157;
  v159[5] = v158;
  v159[0] = v153;
  v159[1] = v154;
  sub_1E48C1338(v159, &qword_1ECF7FFB8, &qword_1E49A0968);
  v59 = sub_1E4961CE4(v47, v150, v58);
  swift_getKeyPath();
  *&v153 = v59;
  v121 = v43;
  sub_1E4996FCC();

  v60 = OBJC_IVAR____TtC11ClockPoster14WorldViewModel__highlighted;
  swift_beginAccess();
  sub_1E48C12D0(v59 + v60, v52, &qword_1ECF7F848, &qword_1E499D520);

  v61 = type metadata accessor for WorldViewModel.Pin(0);
  if ((*(*(v61 - 8) + 48))(v52, 1, v61) == 1)
  {
    sub_1E48C1338(v52, &qword_1ECF7F848, &qword_1E499D520);
  }

  else
  {
    v62 = sub_1E48E3380();
    v64 = v63;
    sub_1E4911548(v52, type metadata accessor for WorldViewModel.Pin);
    if (v64)
    {
      goto LABEL_10;
    }
  }

  v62 = 0;
  v64 = 0xE000000000000000;
LABEL_10:
  v151 = v62;
  v152 = v64;
  sub_1E48D2EE4();
  v65 = sub_1E49978DC();
  v67 = v66;
  v69 = v68;
  v70 = [objc_opt_self() systemFontOfSize:26.0 weight:*MEMORY[0x1E69DB980]];
  sub_1E499782C();
  v71 = sub_1E499788C();
  v73 = v72;
  v75 = v74;

  sub_1E48C1564(v65, v67, v69 & 1);

  v76 = v119;
  v77 = v123;
  v78 = v146;
  v79 = v122;
  v122(v119, v123, v146);
  v80 = sub_1E4997AAC();
  v79(v76, v77, v78);
  v81 = sub_1E4997AAC();
  v83 = sub_1E4961CE4(v145, v150, v82);
  swift_getKeyPath();
  v151 = v83;
  sub_1E4996FCC();

  LODWORD(v78) = *(v83 + 176);

  if (v78)
  {
    v84 = v81;
  }

  else
  {
    v84 = v80;
  }

  v151 = v84;
  v85 = sub_1E499786C();
  v87 = v86;
  v89 = v88;
  v91 = v90;
  sub_1E48C1564(v71, v73, v75 & 1);

  sub_1E499740C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F788, &qword_1E499CF60);
  sub_1E49973EC();
  *(swift_allocObject() + 16) = xmmword_1E499A180;
  sub_1E499737C();
  sub_1E49973FC();
  sub_1E49973AC();
  sub_1E49973FC();
  v92 = v131;
  sub_1E499742C();
  type metadata accessor for Dashboard(0);
  v93 = sub_1E4997D2C();
  v94 = sub_1E499743C();
  v95 = sub_1E499744C();
  if (v94)
  {
    if ((v95 & ~v94) == 0)
    {
      goto LABEL_19;
    }
  }

  else if (!v95)
  {
    v94 = 0;
    goto LABEL_19;
  }

  v94 |= v95;
LABEL_19:
  v96 = v143;
  (*(v133 + 32))(v143, v92, v136);
  v97 = v142;
  *(v96 + *(v142 + 20)) = v93;
  *(v96 + *(v97 + 24)) = v94;
  v98 = v134;
  sub_1E4911B70(v96, &v134[*(v126 + 36)], MEMORY[0x1E6980738]);
  *v98 = v85;
  *(v98 + 8) = v87;
  *(v98 + 16) = v89 & 1;
  *(v98 + 24) = v91;
  sub_1E4911548(v96, MEMORY[0x1E6980738]);
  KeyPath = swift_getKeyPath();
  v100 = v132;
  v101 = &v132[*(v127 + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EE70, &qword_1E499B010);
  sub_1E49973CC();
  *v101 = KeyPath;
  sub_1E48C15C8(v98, v100, &qword_1ECF7EE50, &qword_1E499B000);
  v102 = v129;
  sub_1E48C15C8(v100, v129, &qword_1ECF7EE40, &qword_1E499AFF8);
  *(v102 + *(v130 + 36)) = xmmword_1E49A0390;
  v103 = v140;
  sub_1E48C15C8(v102, v140, &qword_1ECF7FF98, &qword_1E49A0920);
  v104 = v149;
  sub_1E48C12D0(v147, v149, &qword_1ECF7FFA8, &qword_1E49A0930);
  v105 = v137;
  v106 = *(v137 + 16);
  v107 = v135;
  v108 = v148;
  v109 = v138;
  v106(v135, v148, v138);
  v110 = v141;
  sub_1E48C12D0(v103, v141, &qword_1ECF7FF98, &qword_1E49A0920);
  v111 = v144;
  sub_1E48C12D0(v104, v144, &qword_1ECF7FFA8, &qword_1E49A0930);
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FFC8, &qword_1E49A09A0);
  v106((v111 + *(v112 + 48)), v107, v109);
  sub_1E48C12D0(v110, v111 + *(v112 + 64), &qword_1ECF7FF98, &qword_1E49A0920);
  sub_1E48C1338(v103, &qword_1ECF7FF98, &qword_1E49A0920);
  v113 = *(v105 + 8);
  v113(v108, v109);
  sub_1E48C1338(v147, &qword_1ECF7FFA8, &qword_1E49A0930);
  sub_1E48C1338(v110, &qword_1ECF7FF98, &qword_1E49A0920);
  v113(v107, v109);
  return sub_1E48C1338(v149, &qword_1ECF7FFA8, &qword_1E49A0930);
}

uint64_t sub_1E490FD6C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v169 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FFD0, &qword_1E49A09A8);
  v167 = *(v3 - 8);
  v168 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v153 = &v130 - v4;
  v165 = sub_1E499777C();
  MEMORY[0x1EEE9AC00](v165);
  v144 = &v130 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EE50, &qword_1E499B000);
  MEMORY[0x1EEE9AC00](v141);
  v145 = &v130 - v6;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EE40, &qword_1E499AFF8);
  v149 = *(v151 - 8);
  MEMORY[0x1EEE9AC00](v151);
  v143 = &v130 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v142 = &v130 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FFD8, &qword_1E49A09B0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v152 = &v130 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v150 = &v130 - v13;
  v14 = sub_1E49973BC();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v161 = &v130 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1E499741C();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v160 = &v130 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1E499745C();
  v162 = *(v18 - 8);
  v163 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v140 = &v130 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v138 = &v130 - v21;
  v22 = sub_1E49979EC();
  v158 = *(v22 - 8);
  v159 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v157 = &v130 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FEB0, &qword_1E49A05A8);
  MEMORY[0x1EEE9AC00](v132);
  v25 = (&v130 - v24);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FFE0, &qword_1E49A09B8);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v136 = &v130 - v27;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FFE8, &qword_1E49A09C0);
  MEMORY[0x1EEE9AC00](v133);
  v137 = &v130 - v28;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FFF0, &qword_1E49A09C8);
  v146 = *(v147 - 8);
  MEMORY[0x1EEE9AC00](v147);
  v135 = &v130 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v134 = &v130 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FFF8, &qword_1E49A09D0);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v148 = &v130 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v166 = &v130 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F848, &qword_1E499D520);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v38 = &v130 - v37;
  v39 = type metadata accessor for WorldViewModel.Pin(0);
  v40 = *(v39 - 8);
  v41 = MEMORY[0x1EEE9AC00](v39);
  v43 = &v130 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = *a1;
  v164 = a1;
  v45 = *(a1 + 8);
  v156 = v44;
  v155 = v45;
  v46 = sub_1E4961CE4(v44, v45, v41);
  swift_getKeyPath();
  v172 = v46;
  v154 = sub_1E490C1B8(&qword_1ECF7F308, type metadata accessor for WorldViewModel, &unk_1E499D450);
  sub_1E4996FCC();

  v47 = OBJC_IVAR____TtC11ClockPoster14WorldViewModel__highlighted;
  swift_beginAccess();
  sub_1E48C12D0(v46 + v47, v38, &qword_1ECF7F848, &qword_1E499D520);

  if ((*(v40 + 48))(v38, 1, v39) != 1)
  {
    sub_1E4911190(v38, v43, type metadata accessor for WorldViewModel.Pin);
    v50 = MEMORY[0x1E69814D8];
    v51 = MEMORY[0x1E69DB980];
    v52 = v43[16] == 1;
    v139 = v43;
    if (!v52)
    {
      v73 = 1;
      v74 = v166;
      v75 = v147;
      goto LABEL_15;
    }

    v131 = sub_1E4997ADC();
    v53 = [objc_opt_self() systemOrangeColor];
    v54 = sub_1E49979DC();
    (*(v158 + 104))(v157, *v50, v159);
    v55 = sub_1E4997AAC();
    v57 = sub_1E4961CE4(v156, v155, v56);
    swift_getKeyPath();
    v170 = v57;
    sub_1E4996FCC();

    v58 = *(v57 + 176);

    v52 = v58 == 0;
    v59 = v51;
    if (v52)
    {
      v60 = v54;
    }

    else
    {
      v60 = v55;
    }

    v61 = [objc_opt_self() 0x1FBBAE6A9];
    v62 = sub_1E499782C();
    KeyPath = swift_getKeyPath();
    v64 = (v25 + *(v132 + 36));
    v65 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F590, &qword_1E499C058) + 28);
    v66 = *MEMORY[0x1E69816C8];
    v67 = sub_1E4997B1C();
    (*(*(v67 - 8) + 104))(v64 + v65, v66, v67);
    *v64 = swift_getKeyPath();
    *v25 = v131;
    v25[1] = v60;
    v25[2] = KeyPath;
    v25[3] = v62;
    v68 = v136;
    sub_1E48C15C8(v25, v136, &qword_1ECF7FEB0, &qword_1E49A05A8);
    sub_1E499740C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F788, &qword_1E499CF60);
    sub_1E49973EC();
    *(swift_allocObject() + 16) = xmmword_1E499B670;
    sub_1E49973AC();
    sub_1E49973FC();
    v69 = v138;
    sub_1E499742C();
    type metadata accessor for Dashboard(0);
    v70 = sub_1E4997D2C();
    v71 = sub_1E499743C();
    v72 = sub_1E499744C();
    if (v71)
    {
      v74 = v166;
      if ((v72 & ~v71) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v74 = v166;
      if (!v72)
      {
        v71 = 0;
        goto LABEL_14;
      }
    }

    v71 |= v72;
LABEL_14:
    v76 = v137;
    v77 = &v137[*(v133 + 36)];
    (*(v162 + 32))(v77, v69, v163);
    v78 = v165;
    *&v77[*(v165 + 20)] = v70;
    *&v77[*(v78 + 24)] = v71;
    sub_1E48C15C8(v68, v76, &qword_1ECF7FFE0, &qword_1E49A09B8);
    v79 = swift_getKeyPath();
    v75 = v147;
    v80 = v135;
    v81 = &v135[*(v147 + 36)];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EE70, &qword_1E499B010);
    sub_1E49973CC();
    *v81 = v79;
    sub_1E48C15C8(v76, v80, &qword_1ECF7FFE8, &qword_1E49A09C0);
    v82 = v134;
    sub_1E48C15C8(v80, v134, &qword_1ECF7FFF0, &qword_1E49A09C8);
    sub_1E48C15C8(v82, v74, &qword_1ECF7FFF0, &qword_1E49A09C8);
    v73 = 0;
    v43 = v139;
LABEL_15:
    v83 = 1;
    (*(v146 + 56))(v74, v73, 1, v75);
    v84 = &v43[*(v39 + 40)];
    v85 = *(v84 + 1);
    if (!v85)
    {
      v116 = v151;
      v115 = v150;
LABEL_27:
      (*(v149 + 56))(v115, v83, 1, v116);
      v125 = v148;
      sub_1E48C12D0(v74, v148, &qword_1ECF7FFF8, &qword_1E49A09D0);
      v126 = v152;
      sub_1E48C12D0(v115, v152, &qword_1ECF7FFD8, &qword_1E49A09B0);
      v127 = v153;
      sub_1E48C12D0(v125, v153, &qword_1ECF7FFF8, &qword_1E49A09D0);
      v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80000, &qword_1E49A09D8);
      sub_1E48C12D0(v126, v127 + *(v128 + 48), &qword_1ECF7FFD8, &qword_1E49A09B0);
      sub_1E48C1338(v115, &qword_1ECF7FFD8, &qword_1E49A09B0);
      sub_1E48C1338(v74, &qword_1ECF7FFF8, &qword_1E49A09D0);
      sub_1E4911548(v139, type metadata accessor for WorldViewModel.Pin);
      sub_1E48C1338(v126, &qword_1ECF7FFD8, &qword_1E49A09B0);
      sub_1E48C1338(v125, &qword_1ECF7FFF8, &qword_1E49A09D0);
      v49 = v169;
      sub_1E48C15C8(v127, v169, &qword_1ECF7FFD0, &qword_1E49A09A8);
      v48 = 0;
      return (*(v167 + 56))(v49, v48, 1, v168);
    }

    v170 = *v84;
    v171 = v85;
    sub_1E48D2EE4();

    v86 = sub_1E49978DC();
    v88 = v87;
    v90 = v89;
    v91 = [objc_opt_self() systemOrangeColor];
    v92 = sub_1E49979DC();
    (*(v158 + 104))(v157, *MEMORY[0x1E69814D8], v159);
    v93 = sub_1E4997AAC();
    v95 = sub_1E4961CE4(v156, v155, v94);
    swift_getKeyPath();
    v170 = v95;
    sub_1E4996FCC();

    v96 = *(v95 + 176);

    if (v96)
    {
      v97 = v93;
    }

    else
    {
      v97 = v92;
    }

    v170 = v97;
    v98 = sub_1E499786C();
    v100 = v99;
    v102 = v101;
    sub_1E48C1564(v86, v88, v90 & 1);

    v103 = [objc_opt_self() systemFontOfSize:26.0 weight:*MEMORY[0x1E69DB980]];
    sub_1E499782C();
    v104 = sub_1E499788C();
    v106 = v105;
    v108 = v107;
    v110 = v109;

    sub_1E48C1564(v98, v100, v102 & 1);

    sub_1E499740C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F788, &qword_1E499CF60);
    sub_1E49973EC();
    *(swift_allocObject() + 16) = xmmword_1E499B670;
    sub_1E499738C();
    sub_1E49973FC();
    v111 = v140;
    sub_1E499742C();
    type metadata accessor for Dashboard(0);
    v112 = sub_1E4997D2C();
    v113 = sub_1E499743C();
    v114 = sub_1E499744C();
    if (v113)
    {
      v115 = v150;
      if ((v114 & ~v113) == 0)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v115 = v150;
      if (!v114)
      {
        v113 = 0;
        goto LABEL_26;
      }
    }

    v113 |= v114;
LABEL_26:
    v117 = v144;
    (*(v162 + 32))(v144, v111, v163);
    v118 = v165;
    *(v117 + *(v165 + 20)) = v112;
    *(v117 + *(v118 + 24)) = v113;
    v119 = v145;
    sub_1E4911B70(v117, &v145[*(v141 + 36)], MEMORY[0x1E6980738]);
    *v119 = v104;
    *(v119 + 8) = v106;
    *(v119 + 16) = v108 & 1;
    *(v119 + 24) = v110;
    sub_1E4911548(v117, MEMORY[0x1E6980738]);
    v120 = swift_getKeyPath();
    v116 = v151;
    v121 = v143;
    v122 = &v143[*(v151 + 36)];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EE70, &qword_1E499B010);
    sub_1E49973CC();
    *v122 = v120;
    sub_1E48C15C8(v119, v121, &qword_1ECF7EE50, &qword_1E499B000);
    v123 = v121;
    v124 = v142;
    sub_1E48C15C8(v123, v142, &qword_1ECF7EE40, &qword_1E499AFF8);
    sub_1E48C15C8(v124, v115, &qword_1ECF7EE40, &qword_1E499AFF8);
    v83 = 0;
    v74 = v166;
    goto LABEL_27;
  }

  sub_1E48C1338(v38, &qword_1ECF7F848, &qword_1E499D520);
  v48 = 1;
  v49 = v169;
  return (*(v167 + 56))(v49, v48, 1, v168);
}

unint64_t sub_1E49110B4()
{
  result = qword_1ECF7FDF0;
  if (!qword_1ECF7FDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7FDF0);
  }

  return result;
}

uint64_t sub_1E4911120(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_1E4911190(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E4911248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1, v9);
  return a6(v11);
}

uint64_t sub_1E4911318@<X0>(uint64_t *a2@<X8>)
{
  result = sub_1E499751C();
  *a2 = result;
  return result;
}

uint64_t objectdestroyTm()
{
  v1 = (type metadata accessor for WorldClockFace(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FDC0, &qword_1E49A0460);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1E499732C();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1E49114A4(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for WorldClockFace(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1E4911548(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FD98, &unk_1E49A03A0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FD98, &unk_1E49A03A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1E4911730(uint64_t a1)
{
  sub_1E490803C(319, &qword_1ECF7FDB0, type metadata accessor for WorldViewModel);
  if (v1 <= 0x3F)
  {
    sub_1E490803C(319, &qword_1ECF7FDB8, MEMORY[0x1E697E7E0]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1E49117F4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1E491183C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t sub_1E4911894()
{
  result = qword_1ECF7FF08;
  if (!qword_1ECF7FF08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7FDD0, &qword_1E49A0470);
    sub_1E48C1B44(&qword_1ECF7FF10, &qword_1ECF7FF18, &qword_1E49A0770, MEMORY[0x1E6981880]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7FF08);
  }

  return result;
}

double sub_1E4911984(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1E49119B0(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

unint64_t sub_1E49119BC()
{
  result = qword_1ECF7FF50;
  if (!qword_1ECF7FF50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7FF48, &qword_1E49A08B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7FF50);
  }

  return result;
}

double sub_1E4911A40(_OWORD *a1)
{
  result = 0.0;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

unint64_t sub_1E4911A60()
{
  result = qword_1ECF7FF58;
  if (!qword_1ECF7FF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7FF58);
  }

  return result;
}

uint64_t sub_1E4911ABC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 - 2 <= 3)
  {
  }

  return v5;
}

double sub_1E4911AD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 - 2 <= 3)
  {
  }

  return result;
}

uint64_t sub_1E4911AEC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

uint64_t sub_1E4911B70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1E4911BE8()
{
  result = qword_1ECF80020;
  if (!qword_1ECF80020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7FF80, &qword_1E49A0908);
    sub_1E48C1B44(&qword_1ECF80028, &qword_1ECF7FF78, &qword_1E49A0900, MEMORY[0x1E6981870]);
    sub_1E48C1B44(&qword_1ECF80030, &qword_1ECF7FE30, &qword_1E49A0548, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80020);
  }

  return result;
}

unint64_t sub_1E4911D00()
{
  result = qword_1ECF80068;
  if (!qword_1ECF80068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80068);
  }

  return result;
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_1E4911D68(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 10))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1E4911DB0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t sub_1E4911E04()
{
  result = qword_1ECF80080;
  if (!qword_1ECF80080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF80078, &qword_1E49A0B00);
    sub_1E48C1B44(&qword_1ECF80088, &qword_1ECF80038, &qword_1E49A0AB8, MEMORY[0x1E6981880]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80080);
  }

  return result;
}

unint64_t sub_1E4911ED8()
{
  result = qword_1ECF80098;
  if (!qword_1ECF80098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80098);
  }

  return result;
}

unint64_t sub_1E4911F2C()
{
  result = qword_1ECF800B0;
  if (!qword_1ECF800B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF800B8, &qword_1E49A0BE8);
    sub_1E48C1B44(&qword_1ECF800C0, &qword_1ECF800C8, &qword_1E49A0BF0, MEMORY[0x1E6981880]);
    sub_1E48C1B44(&qword_1ECF800D0, &qword_1ECF800D8, &qword_1E49A0BF8, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF800B0);
  }

  return result;
}

id sub_1E4912020()
{
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.658823529 green:0.658823529 blue:0.658823529 alpha:1.0];
  qword_1ECF81948 = result;
  return result;
}

id sub_1E4912068()
{
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.419607843 green:0.419607843 blue:0.419607843 alpha:1.0];
  qword_1ECF81950 = result;
  return result;
}

id sub_1E49120B0()
{
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.176470588 green:0.176470588 blue:0.176470588 alpha:1.0];
  qword_1ECF81958 = result;
  return result;
}

id sub_1E49120F8(void *a1)
{
  v1[OBJC_IVAR____TtC11ClockPoster17ClockFaceHostView_wasUnsupportedPortraitInterface] = 0;
  *&v1[OBJC_IVAR____TtC11ClockPoster17ClockFaceHostView_hostedClockFace] = a1;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for ClockFaceHostView();
  v3 = a1;
  v4 = objc_msgSendSuper2(&v7, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  v5 = [objc_opt_self() blackColor];
  [v4 setBackgroundColor_];

  [v4 setClipsToBounds_];
  return v4;
}

id sub_1E49122FC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F008, &qword_1E499B170);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v64 = &v63 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v63 - v8;
  v10 = sub_1E499708C();
  v68 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v66 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v65 = &v63 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v63 - v15;
  v17 = type metadata accessor for ClockFaceHostView();
  v69.receiver = v0;
  v69.super_class = v17;
  objc_msgSendSuper2(&v69, sel_layoutSubviews);
  v18 = *&v0[OBJC_IVAR____TtC11ClockPoster17ClockFaceHostView_hostedClockFace];
  v19 = [v18 superview];
  v67 = v10;
  if (v19)
  {
  }

  else
  {
    [v0 frame];
    if (v20 <= 0.0 || ([v0 frame], v21 <= 0.0))
    {
      if (qword_1EE2BB450 != -1)
      {
        swift_once();
      }

      v22 = qword_1EE2BB458;
      v23 = OBJC_IVAR____TtC11ClockPoster11ClockLogger_rendering_private;
      swift_beginAccess();
      sub_1E48CC978(v22 + v23, v9);
      v10 = v67;
      v24 = v68;
      v25 = *(v68 + 48);
      if (v25(v9, 1, v67) == 1)
      {
        sub_1E4904BF4(v16);
        if (v25(v9, 1, v10) != 1)
        {
          sub_1E48EF578(v9);
        }
      }

      else
      {
        (*(v24 + 32))(v16, v9, v10);
      }

      v26 = v1;
      v27 = sub_1E499706C();
      v28 = sub_1E499830C();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 134349312;
        [v26 frame];
        *(v29 + 4) = CGRectGetWidth(v70);
        *(v29 + 12) = 2050;
        [v26 frame];
        *(v29 + 14) = CGRectGetHeight(v71);
        _os_log_impl(&dword_1E48B0000, v27, v28, "Frame is invalid at layoutSubviews; unable add ClockFace. Frame: %{public}f x %{public}f.", v29, 0x16u);
        MEMORY[0x1E691CED0](v29, -1, -1);
      }

      (*(v68 + 8))(v16, v10);
    }

    else
    {
      [v0 addSubview_];
    }
  }

  [v18 setTranslatesAutoresizingMaskIntoConstraints_];
  [v1 frame];
  Height = CGRectGetHeight(v72);
  [v1 frame];
  Width = CGRectGetWidth(v73);
  v32 = v66;
  if (Width >= Height || (v33 = [objc_opt_self() currentDevice], v34 = objc_msgSend(v33, sel_userInterfaceIdiom), v33, v34 == 1))
  {
    [v1 setHidden_];
    v35 = v68;
    if (*(v1 + OBJC_IVAR____TtC11ClockPoster17ClockFaceHostView_wasUnsupportedPortraitInterface) == 1)
    {
      *(v1 + OBJC_IVAR____TtC11ClockPoster17ClockFaceHostView_wasUnsupportedPortraitInterface) = 0;
      if (qword_1EE2BB450 != -1)
      {
        swift_once();
      }

      v36 = qword_1EE2BB458;
      v37 = OBJC_IVAR____TtC11ClockPoster11ClockLogger_rendering_private;
      swift_beginAccess();
      sub_1E48CC978(v36 + v37, v4);
      v38 = *(v35 + 48);
      v39 = v67;
      if (v38(v4, 1, v67) == 1)
      {
        sub_1E4904BF4(v32);
        if (v38(v4, 1, v39) != 1)
        {
          sub_1E48EF578(v4);
        }
      }

      else
      {
        (*(v35 + 32))(v32, v4, v39);
      }

      v54 = v1;
      v55 = sub_1E499706C();
      v56 = sub_1E499830C();

      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        *v57 = 134349312;
        [v54 &selRef_dateFromString_];
        *(v57 + 4) = CGRectGetWidth(v74);
        *(v57 + 12) = 2050;
        [v54 &selRef_dateFromString_];
        *(v57 + 14) = CGRectGetHeight(v75);
        _os_log_impl(&dword_1E48B0000, v55, v56, "Recovering from last layout pass where frame was an unsupported portrait size. Frame: (%{public}f, %{public}f).", v57, 0x16u);
        MEMORY[0x1E691CED0](v57, -1, -1);
      }

      (*(v35 + 8))(v32, v67);
    }

    [v1 bounds];
    return [v18 setFrame_];
  }

  else
  {
    [v1 setHidden_];
    [v1 frame];
    v41 = v40;
    [v1 frame];
    v43 = v42;
    [v1 frame];
    v45 = v44;
    [v1 frame];
    [v18 setFrame_];
    *(v1 + OBJC_IVAR____TtC11ClockPoster17ClockFaceHostView_wasUnsupportedPortraitInterface) = 1;
    v47 = v68;
    if (qword_1EE2BB450 != -1)
    {
      swift_once();
    }

    v48 = qword_1EE2BB458;
    v49 = OBJC_IVAR____TtC11ClockPoster11ClockLogger_rendering_private;
    swift_beginAccess();
    v50 = v64;
    sub_1E48CC978(v48 + v49, v64);
    v51 = *(v47 + 48);
    v52 = v51(v50, 1, v10);
    v53 = v65;
    if (v52 == 1)
    {
      sub_1E4904BF4(v65);
      if (v51(v50, 1, v10) != 1)
      {
        sub_1E48EF578(v50);
      }
    }

    else
    {
      (*(v47 + 32))(v65, v50, v10);
    }

    v59 = v1;
    v60 = sub_1E499706C();
    v61 = sub_1E499830C();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 134349312;
      [v59 frame];
      *(v62 + 4) = CGRectGetWidth(v76);
      *(v62 + 12) = 2050;
      [v59 frame];
      *(v62 + 14) = CGRectGetHeight(v77);
      _os_log_impl(&dword_1E48B0000, v60, v61, "Frame is portrait, unsupported on iOS. Frame: (%{public}f, %{public}f). This is likely on the first layout pass of an Ambient extension coming up over a portrait SpringBoard interface.", v62, 0x16u);
      MEMORY[0x1E691CED0](v62, -1, -1);
    }

    return (*(v47 + 8))(v53, v10);
  }
}

id sub_1E4912D28(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ClockFaceHostView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

char *sub_1E4912D90(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  v5 = *(a1 + 16);
  if (v5 < 4)
  {
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FC50, &qword_1E499E5C0);
    v7 = swift_allocObject();
    v8 = &qword_1E499B000;
    _Q0 = xmmword_1E499B670;
    v11 = *(v4 + 32);
    v10 = v4 + 32;
    *(v7 + 16) = xmmword_1E499B670;
    *(v7 + 32) = v11;
    if (a2 < 1)
    {
LABEL_23:
      __break(1u);
LABEL_24:
      v45 = _Q0;
      v33 = sub_1E490640C((v8 > 1), v10, 1, v2);
      _Q0 = v45;
      v2 = v33;
    }

    else
    {
      v2 = v7;
      v12 = v5 - 2;
      v8 = 1;
      __asm
      {
        FMOV            V1.2D, #-5.0
        FMOV            V0.2D, #4.0
      }

      v36 = _Q0;
      v37 = _Q1;
      __asm { FMOV            V0.2D, #3.0 }

      v35 = _Q0;
      __asm { FMOV            V0.2D, #0.5 }

      v39 = _Q0;
      do
      {
        if (v8 == v12)
        {
          __break(1u);
LABEL_22:
          __break(1u);
          goto LABEL_23;
        }

        if (v8 == v5 + 1)
        {
          goto LABEL_22;
        }

        v20 = v8 + 1;
        v21 = *(v10 + 16 * (v8 + 1));
        v38 = v21;
        if (a2 == 1)
        {
          v22 = *(v2 + 2);
        }

        else
        {
          v24 = (v10 + 16 * v8);
          v25 = v24[-1];
          v26 = v24[2];
          v42 = vsubq_f64(v21, v25);
          v43 = vaddq_f64(*v24, *v24);
          v40 = vaddq_f64(vsubq_f64(vsubq_f64(vmulq_f64(*v24, v35), v25), vmulq_f64(v21, v35)), v26);
          v41 = vsubq_f64(vaddq_f64(vaddq_f64(vaddq_f64(v25, v25), vmulq_f64(*v24, v37)), vmulq_f64(v21, v36)), v26);
          v27 = *(v2 + 2);
          v28 = 1;
          do
          {
            v44 = 1.0 / a2 * v28;
            v29 = pow(v44, 3.0);
            v30 = *(v2 + 3);
            v22 = v27 + 1;
            if (v27 >= v30 >> 1)
            {
              v34 = v29;
              v31 = sub_1E490640C((v30 > 1), v27 + 1, 1, v2);
              v29 = v34;
              v2 = v31;
            }

            ++v28;
            *(v2 + 2) = v22;
            *&v2[16 * v27++ + 32] = vmulq_f64(vaddq_f64(vmulq_n_f64(v40, v29), vaddq_f64(vaddq_f64(v43, vmulq_n_f64(v42, v44)), vmulq_n_f64(v41, v44 * v44))), v39);
          }

          while (a2 != v28);
        }

        v23 = *(v2 + 3);
        v3 = v22 + 1;
        if (v22 >= v23 >> 1)
        {
          v2 = sub_1E490640C((v23 > 1), v22 + 1, 1, v2);
        }

        *(v2 + 2) = v3;
        _Q0 = v38;
        *&v2[16 * v22 + 32] = v38;
        v8 = v20;
      }

      while (v20 != v12);
      _Q0 = *(v10 + 16 * v5 - 16);
      v8 = *(v2 + 3);
      v10 = v22 + 2;
      if (v3 >= v8 >> 1)
      {
        goto LABEL_24;
      }
    }

    *(v2 + 2) = v10;
    *&v2[16 * v3 + 32] = _Q0;
    return v2;
  }

  return v4;
}

double sub_1E4913064(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);

  return result;
}

uint64_t sub_1E49130A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v13 = MEMORY[0x1E69E7CC0];
    sub_1E4906EF8(0, v1, 0);
    v2 = v13;
    v4 = (a1 + 32);
    do
    {
      v9 = *v4;
      v13 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1E4906EF8((v5 > 1), v6 + 1, 1);
        v2 = v13;
      }

      type metadata accessor for CGPoint(0);
      v11 = v7;
      v12 = &off_1F5E84E08;
      v10 = v9;
      *(v2 + 16) = v6 + 1;
      sub_1E48B7448(&v10, v2 + 40 * v6 + 32);
      ++v4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

char *sub_1E491319C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1E49986EC();
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

  v13 = MEMORY[0x1E69E7CC0];
  result = sub_1E4906F98(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x1E691BDE0](i, a1);
        sub_1E48D9CFC(0, &qword_1ECF80110, 0x1E6979378);
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_1E4906F98((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        sub_1E48C42DC(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_1E48D9CFC(0, &qword_1ECF80110, 0x1E6979378);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_1E4906F98((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        sub_1E48C42DC(v12, (v3 + 32 * v11 + 32));
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

char *sub_1E4913398(double a1, double a2, double a3, double a4)
{
  v44 = type metadata accessor for TextClockDescriptor(0);
  MEMORY[0x1EEE9AC00](v44);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E4996F4C();
  v45 = *(v11 - 8);
  v46 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TimeString(0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v43 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E4996F3C();
  *&v4[OBJC_IVAR____TtC11ClockPoster15RollingTimeView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC11ClockPoster15RollingTimeView_overlap] = 0;
  v4[OBJC_IVAR____TtC11ClockPoster15RollingTimeView_blurColon] = 0;
  *&v4[OBJC_IVAR____TtC11ClockPoster15RollingTimeView_compositingFilter] = 0;
  v4[OBJC_IVAR____TtC11ClockPoster15RollingTimeView_transformModifier] = 0;
  v17 = OBJC_IVAR____TtC11ClockPoster15RollingTimeView_timeLabel;
  type metadata accessor for RollingTimeLabel(0);
  v18 = swift_allocObject();
  v19 = sub_1E48DB2FC();
  *(v18 + 3) = 0;
  *(v18 + 4) = 0;
  *(v18 + 2) = v19;
  v20 = *(v15 + 56);
  v20(&v18[OBJC_IVAR____TtC11ClockPoster16RollingTimeLabel_timeString], 1, 1, v14);
  *&v4[v17] = v18;
  v21 = OBJC_IVAR____TtC11ClockPoster15RollingTimeView_offScreenTimeLabel;
  v22 = swift_allocObject();
  v23 = sub_1E48DB2FC();
  *(v22 + 3) = 0;
  *(v22 + 4) = 0;
  *(v22 + 2) = v23;
  v20(&v22[OBJC_IVAR____TtC11ClockPoster16RollingTimeLabel_timeString], 1, 1, v14);
  *&v4[v21] = v22;
  v24 = OBJC_IVAR____TtC11ClockPoster15RollingTimeView_maxScale;
  v25 = objc_opt_self();
  v26 = [v25 mainScreen];
  [v26 scale];
  v28 = v27;

  v29 = [v25 mainScreen];
  [v29 nativeScale];
  v31 = v30;

  *&v4[v24] = v28 / v31;
  *&v4[OBJC_IVAR____TtC11ClockPoster15RollingTimeView____lazy_storage___redModeColonLayers] = 0;
  *&v4[OBJC_IVAR____TtC11ClockPoster15RollingTimeView____lazy_storage___colonBlurViews] = 0;
  v4[OBJC_IVAR____TtC11ClockPoster15RollingTimeView_isAnimating] = 0;
  *&v4[OBJC_IVAR____TtC11ClockPoster15RollingTimeView_timeTextListenerTask] = 0;
  if (qword_1ECF7EB40 != -1)
  {
    swift_once();
  }

  sub_1E4996F3C();
  v32 = v45;
  v33 = *(v45 + 16);
  v34 = v46;
  v35 = v33(&v10[*(v44 + 20)], v13, v46);
  *v10 = 0;
  MEMORY[0x1EEE9AC00](v35);
  *(&v43 - 2) = v10;
  *(&v43 - 1) = v36;
  v37 = v43;
  sub_1E4939498(sub_1E48BF0E4, (&v43 - 4), v43);
  v38 = *(v32 + 8);
  v38(v13, v34);
  sub_1E4918D74(v10, type metadata accessor for TextClockDescriptor);
  sub_1E48BF0EC(v37, &v4[OBJC_IVAR____TtC11ClockPoster15RollingTimeView_timeString]);
  v39 = type metadata accessor for RollingTimeView(0);
  v47.receiver = v4;
  v47.super_class = v39;
  v40 = objc_msgSendSuper2(&v47, sel_initWithFrame_, a1, a2, a3, a4);
  v33(v13, &v40[OBJC_IVAR____TtC11ClockPoster15RollingTimeView_timeZone], v34);
  v41 = v40;
  sub_1E49149C8();

  v38(v13, v34);
  return v41;
}

void sub_1E49138C0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF815D0, &unk_1E499A370);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v38 - v6;
  v8 = type metadata accessor for RollingTimeView(0);
  v39.receiver = v0;
  v39.super_class = v8;
  objc_msgSendSuper2(&v39, sel_layoutSubviews);
  v9 = *&v0[OBJC_IVAR____TtC11ClockPoster15RollingTimeView_timeLabel];
  v10 = OBJC_IVAR____TtC11ClockPoster16RollingTimeLabel_timeString;
  swift_beginAccess();
  sub_1E48C12D0(v9 + v10, v7, &qword_1ECF815D0, &unk_1E499A370);
  v11 = type metadata accessor for TimeString(0);
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v7, 1, v11);
  sub_1E48C1338(v7, &qword_1ECF815D0, &unk_1E499A370);
  if (v13 == 1)
  {
    v14 = OBJC_IVAR____TtC11ClockPoster15RollingTimeView_timeString;
    swift_beginAccess();
    sub_1E49184D8(&v1[v14], v4);
    (*(v12 + 56))(v4, 0, 1, v11);
    swift_beginAccess();
    sub_1E491853C(v4, v9 + v10);
    swift_endAccess();
    sub_1E48DB6AC();
    sub_1E48C1338(v4, &qword_1ECF815D0, &unk_1E499A370);
  }

  v15 = *(v9 + 16);
  if (v15 >> 62)
  {
    if (!sub_1E49986EC())
    {
      goto LABEL_11;
    }
  }

  else if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_11;
  }

  if ((v15 & 0xC000000000000001) != 0)
  {
    goto LABEL_58;
  }

  if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_60;
  }

  v16 = *(v15 + 32);
  while (1)
  {
    v17 = [v16 superview];

    if (v17)
    {

      goto LABEL_34;
    }

LABEL_11:
    v15 = *(v9 + 16);
    if (v15 >> 62)
    {
LABEL_60:
      v18 = sub_1E49986EC();
    }

    else
    {
      v18 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v18)
    {
      v19 = 0;
      while (1)
      {
        if ((v15 & 0xC000000000000001) != 0)
        {
          v20 = MEMORY[0x1E691BDE0](v19, v15);
        }

        else
        {
          if (v19 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_55;
          }

          v20 = *(v15 + 8 * v19 + 32);
        }

        v21 = v20;
        v22 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        [v1 addSubview_];

        ++v19;
        if (v22 == v18)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

LABEL_22:

    v15 = *(*&v1[OBJC_IVAR____TtC11ClockPoster15RollingTimeView_offScreenTimeLabel] + 16);
    v23 = v15 >> 62 ? sub_1E49986EC() : *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v23)
    {
      break;
    }

    v24 = 0;
    while (1)
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v25 = MEMORY[0x1E691BDE0](v24, v15);
      }

      else
      {
        if (v24 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_57;
        }

        v25 = *(v15 + 8 * v24 + 32);
      }

      v26 = v25;
      v27 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      [v1 addSubview_];

      ++v24;
      if (v27 == v23)
      {
        goto LABEL_33;
      }
    }

LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:

    v16 = MEMORY[0x1E691BDE0](0, v15);
  }

LABEL_33:

LABEL_34:
  if (v1[OBJC_IVAR____TtC11ClockPoster15RollingTimeView_isAnimating])
  {
    return;
  }

  sub_1E4915660(v28, 0, 1);

  v29 = *&v1[OBJC_IVAR____TtC11ClockPoster15RollingTimeView_offScreenTimeLabel];
  v30 = *(v29 + 16);

  [v1 bounds];
  *&v31 = CGRectGetHeight(v40);
  sub_1E4915660(v30, v31, 0);

  sub_1E4915DA4(v32);
  v33 = *(v9 + 16);
  if (v33 >> 62)
  {
    v34 = sub_1E49986EC();
    if (!v34)
    {
      return;
    }

LABEL_37:
    v35 = v34 - 1;
    if (__OFSUB__(v34, 1))
    {
      __break(1u);
    }

    else if ((v33 & 0xC000000000000001) == 0)
    {
      if ((v35 & 0x8000000000000000) != 0)
      {
        __break(1u);
        goto LABEL_67;
      }

      if (v35 >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_70;
      }

      v35 = *(v33 + 8 * v35 + 32);
LABEL_42:
      v33 = *(v29 + 16);
      if (!(v33 >> 62))
      {
        v36 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v36)
        {
          goto LABEL_44;
        }

        goto LABEL_52;
      }

LABEL_67:
      v36 = sub_1E49986EC();
      if (v36)
      {
LABEL_44:
        v30 = v36 - 1;
        if (!__OFSUB__(v36, 1))
        {
          if ((v33 & 0xC000000000000001) == 0)
          {
            if ((v30 & 0x8000000000000000) != 0)
            {
              __break(1u);
            }

            else if (v30 < *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v37 = *(v33 + 8 * v30 + 32);
              goto LABEL_49;
            }

            __break(1u);
            return;
          }

LABEL_71:

          v37 = MEMORY[0x1E691BDE0](v30, v33);

LABEL_49:
          if (swift_unknownObjectWeakLoadStrong())
          {
            sub_1E4995E98(v35, v37);

            swift_unknownObjectRelease();
          }

          else
          {
          }

          goto LABEL_52;
        }

LABEL_70:
        __break(1u);
        goto LABEL_71;
      }

LABEL_52:

      return;
    }

    v35 = MEMORY[0x1E691BDE0](v35, v33);

    goto LABEL_42;
  }

  v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v34)
  {
    goto LABEL_37;
  }
}

double sub_1E4913F14(char a1, double result)
{
  if (*(v2 + OBJC_IVAR____TtC11ClockPoster15RollingTimeView_blurColon) == 1)
  {
    if (a1)
    {
      v3 = 1.0;
    }

    else
    {
      v3 = 0.0;
    }

    v4 = sub_1E491411C();
    v5 = v4;
    if (v4 >> 62)
    {
      goto LABEL_18;
    }

    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1E49986EC())
    {
      v7 = 0;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x1E691BDE0](v7, v5);
        }

        else
        {
          if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_17;
          }

          v9 = *(v5 + 8 * v7 + 32);
        }

        v11 = v9;
        v12 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        v8 = v3;
        *&v10 = v8;
        [v9 setOpacity_];

        ++v7;
        if (v12 == i)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      ;
    }

LABEL_19:

    v13 = sub_1E49143E8();
    v14 = v13;
    if (v13 >> 62)
    {
      goto LABEL_31;
    }

    for (j = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_1E49986EC())
    {
      v16 = 0;
      while (1)
      {
        if ((v14 & 0xC000000000000001) != 0)
        {
          v17 = MEMORY[0x1E691BDE0](v16, v14);
        }

        else
        {
          if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_30;
          }

          v17 = *(v14 + 8 * v16 + 32);
        }

        v18 = v17;
        v19 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        [v17 setAlpha_];

        ++v16;
        if (v19 == j)
        {
          goto LABEL_32;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      ;
    }

LABEL_32:
  }

  return result;
}

unint64_t sub_1E491413C()
{
  sub_1E4914848();
  v1 = v0;
  v21 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80130, &qword_1E49A3E20);
  for (i = 0; ; i = 1)
  {
    v3 = i;
    v4 = [objc_allocWithZone(MEMORY[0x1E6979310]) init];
    v18 = 0x7974696361706FLL;
    v19 = 0xE700000000000000;
    v5 = objc_allocWithZone(MEMORY[0x1E695DFB0]);
    v6 = v4;
    v20 = [v5 init];
    v7 = sub_1E499871C();

    v8 = v18;
    v9 = v19;
    v10 = v20;

    swift_unknownObjectRetain();
    result = sub_1E494812C(v8, v9);
    if (v12)
    {
      break;
    }

    v7[(result >> 6) + 8] |= 1 << result;
    v13 = (v7[6] + 16 * result);
    *v13 = v8;
    v13[1] = v9;
    *(v7[7] + 8 * result) = v10;
    v14 = v7[2];
    v15 = __OFADD__(v14, 1);
    v16 = v14 + 1;
    if (v15)
    {
      goto LABEL_9;
    }

    v7[2] = v16;

    sub_1E48C1338(&v18, &qword_1ECF7F388, &qword_1E499B950);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F390, &qword_1E499B958);
    v17 = sub_1E4997E2C();

    [v6 setActions_];

    [v6 setOpacity_];
    [v6 frame];
    [v6 setFrame_];
    MEMORY[0x1E691B8A0]([v6 setCornerRadius_]);
    if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1E49980DC();
    }

    sub_1E49980FC();

    if (v3)
    {
      return v21;
    }
  }

  __break(1u);
LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1E4914408(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = a2(v2);
    *(v2 + v3) = v5;
  }

  return v5;
}

uint64_t sub_1E4914470()
{
  sub_1E4914848();
  v1 = v0;
  v21 = MEMORY[0x1E69E7CC0];
  v2 = objc_opt_self();
  if (qword_1ECF7EB48 != -1)
  {
    swift_once();
  }

  v3 = qword_1ECF819A8;
  v4 = sub_1E4997EAC();
  v5 = [v2 materialViewWithRecipeNamed:v4 inBundle:v3 options:0 initialWeighting:0 scaleAdjustment:1.0];

  if (v5)
  {
    v6 = v5;
    [v6 frame];
    [v6 setFrame_];
    v7 = [v6 layer];
    [v7 setCornerRadius_];

    v8 = [objc_opt_self() whiteColor];
    v9 = [v8 colorWithAlphaComponent_];

    [v6 setBackgroundColor_];
    v10 = v6;
    MEMORY[0x1E691B8A0]();
    if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1E49980DC();
    }

    sub_1E49980FC();

    v11 = v21;
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v12 = qword_1ECF819A8;
  v13 = sub_1E4997EAC();
  v14 = [v2 materialViewWithRecipeNamed:v13 inBundle:v12 options:0 initialWeighting:0 scaleAdjustment:1.0];

  if (v14)
  {
    v15 = v14;
    [v15 frame];
    [v15 setFrame_];
    v16 = [v15 layer];
    [v16 &selRef:v1 * 0.5 bringSubviewToFront:?];

    v17 = [objc_opt_self() &selRef_defaultMinuteConfigurationForDevice_];
    v18 = [v17 &off_1E8761178];

    [v15 &off_1E8761078];
    v19 = v15;
    MEMORY[0x1E691B8A0]();
    if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1E49980DC();
    }

    sub_1E49980FC();

    return v21;
  }

  return v11;
}

void sub_1E4914848()
{
  v1 = sub_1E4997FEC();
  if (v1)
  {
    v2 = v1;
    v3 = sub_1E4918244(v1, 0);
    v4 = sub_1E4917F70(v14, (v3 + 16), v2, 46, 0xE100000000000000);

    if (v4 != v2)
    {
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v5 = *(v3 + 2);
    if (v5)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
    v5 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v5)
    {
LABEL_4:
      v6 = sub_1E49980EC();
      *(v6 + 16) = v5;
      bzero((v6 + 32), 2 * v5);
      goto LABEL_7;
    }
  }

  v6 = MEMORY[0x1E69E7CC0];
LABEL_7:
  v7 = *(v0 + OBJC_IVAR____TtC11ClockPoster15RollingTimeView_timeLabel);
  v8 = *(v7 + 24);
  if (!v8)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = v8;
  GlyphsForCharacters = CTFontGetGlyphsForCharacters(v9, v3 + 16, (v6 + 32), v5);

  if (!GlyphsForCharacters)
  {
LABEL_13:

    return;
  }

  v11 = *(v7 + 24);
  if (v11)
  {
    if (*(v6 + 16))
    {
      PathForGlyph = CTFontCreatePathForGlyph(v11, *(v6 + 32), 0);
      if (PathForGlyph)
      {
        v13 = PathForGlyph;
        CGPathGetBoundingBox(PathForGlyph);

        return;
      }

      goto LABEL_13;
    }

    goto LABEL_15;
  }

LABEL_17:
  __break(1u);
}