uint64_t sub_1D1930E94(uint64_t a1)
{
  v2 = type metadata accessor for StaticAccessory.DeviceIdentifier(0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v20 - v8;
  result = MEMORY[0x1EEE9AC00](v7);
  v12 = &v20 - v11;
  v13 = 0;
  v14 = 1 << *(a1 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(a1 + 56);
  for (i = (v14 + 63) >> 6; v16; result = sub_1D1951B4C(v9, type metadata accessor for StaticAccessory.DeviceIdentifier))
  {
    v18 = v13;
LABEL_9:
    v19 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    sub_1D1951A7C(*(a1 + 48) + *(v3 + 72) * (v19 | (v18 << 6)), v12, type metadata accessor for StaticAccessory.DeviceIdentifier);
    sub_1D1951AE4(v12, v6, type metadata accessor for StaticAccessory.DeviceIdentifier);
    sub_1D1768FF0(v9, v6);
  }

  while (1)
  {
    v18 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v18 >= i)
    {
    }

    v16 = *(a1 + 56 + 8 * v18);
    ++v13;
    if (v16)
    {
      v13 = v18;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1931098(uint64_t result, uint64_t (*a2)(char *, void))
{
  v3 = result;
  v4 = 0;
  v5 = result + 56;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(result + 56);
  v9 = (v6 + 63) >> 6;
  if (v8)
  {
    while (1)
    {
      v10 = v4;
LABEL_9:
      v11 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      result = a2(&v12, *(*(v3 + 48) + (v11 | (v10 << 6))));
      if (!v8)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v10 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
      return result;
    }

    if (v10 >= v9)
    {
      break;
    }

    v8 = *(v5 + 8 * v10);
    ++v4;
    if (v8)
    {
      v4 = v10;
      goto LABEL_9;
    }
  }
}

double StaticRVCClusterGroup.bestFitSelectingPrimaryTags(vacuum:mop:withSecondaryTags:)@<D0>(char a1@<W0>, char a2@<W1>, void *a3@<X2>, void *a4@<X8>)
{
  v5 = a2;
  v7 = a4;
  if (a1 & 1) != 0 || (a2)
  {
    if (a3)
    {
      v74 = a3;
    }

    else
    {
      v14 = (v4 + *(type metadata accessor for StaticRVCClusterGroup(0) + 28));
      v15 = *(v14 + 2);
      if (v15)
      {
        v16 = *(v14 + 3);
        v75 = *v14;
        v76 = v15;
        v77 = v16;
        v74 = StaticRVCClusterGroup.CleanMode.secondaryTags.getter();
      }

      else
      {
        v74 = MEMORY[0x1E69E7CD0];
      }
    }

    v7 = *(v4 + *(type metadata accessor for StaticRVCClusterGroup(0) + 44));
    if (v7)
    {
      v17 = v7[2];

      if (v17)
      {
        v18 = 0;
        v19 = MEMORY[0x1E69E7CC0];
        v71 = v5;
        v72 = v17;
        while (1)
        {
          if (v18 >= v7[2])
          {
LABEL_89:
            __break(1u);
LABEL_90:
            __break(1u);
            goto LABEL_91;
          }

          v20 = &v7[4 * v18 + 4];
          v21 = *(v20 + 16);
          v22 = *(v20 + 24);
          if ((a1 & 1) == 0)
          {
            break;
          }

          if (v5)
          {
            v73 = *v20;

            if (sub_1D192D6B0(&unk_1F4D62178, v22))
            {
              goto LABEL_43;
            }

            if (*(v22 + 16))
            {
              sub_1D1E6920C();
              sub_1D1E6923C();
              sub_1D1E678EC();
              v23 = sub_1D1E6926C();
              v24 = -1 << *(v22 + 32);
              v25 = v23 & ~v24;
              if ((*(v22 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25))
              {
                v26 = ~v24;
                while ((*(*(v22 + 48) + v25) & 0xBF) != 0x83)
                {
                  v25 = (v25 + 1) & v26;
                  if (((*(v22 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
                  {
                    goto LABEL_15;
                  }
                }

LABEL_43:
                v78 = v19;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  sub_1D178D7F8(0, *(v19 + 16) + 1, 1);
                  v19 = v78;
                }

                v36 = v73;
                v38 = *(v19 + 16);
                v37 = *(v19 + 24);
                if (v38 >= v37 >> 1)
                {
                  sub_1D178D7F8((v37 > 1), v38 + 1, 1);
                  v36 = v73;
                  v19 = v78;
                }

                *(v19 + 16) = v38 + 1;
                v39 = v19 + 32 * v38;
                *(v39 + 32) = v36;
                *(v39 + 48) = v21;
                *(v39 + 56) = v22;
                v5 = v71;
                v17 = v72;
                goto LABEL_16;
              }
            }

            goto LABEL_15;
          }

          if (!*(v22 + 16))
          {
            goto LABEL_16;
          }

          v73 = *v20;
          sub_1D1E6920C();
          sub_1D1E6923C();

          sub_1D1E678EC();
          v31 = sub_1D1E6926C();
          v32 = -1 << *(v22 + 32);
          v33 = v31 & ~v32;
          if ((*(v22 + 56 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33))
          {
            v34 = ~v32;
            while ((*(*(v22 + 48) + v33) & 0xBF) != 0x81)
            {
              v33 = (v33 + 1) & v34;
              if (((*(v22 + 56 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
              {
                goto LABEL_15;
              }
            }

            v35 = &unk_1F4D651C0;
LABEL_42:
            if (sub_1D1929D78(v35, v22))
            {
              goto LABEL_43;
            }
          }

LABEL_15:

LABEL_16:
          if (++v18 == v17)
          {
            v40 = *(v19 + 16);
            if (!v40)
            {

              v41 = 0;
              v42 = v7 + 7;
              v19 = MEMORY[0x1E69E7CC0];
              while (2)
              {
                v43 = &v42[4 * v41];
                v44 = v41;
LABEL_54:
                if (v44 >= v7[2])
                {
                  goto LABEL_90;
                }

                v45 = *(v43 - 3);
                v46 = *(v43 - 2);
                v47 = *(v43 - 1);
                v48 = *v43;
                if ((a1 & 1) == 0)
                {
                  if (v71)
                  {
                    *&v75 = *(v43 - 3);
                    *(&v75 + 1) = v46;
                    v76 = v47;
                    v77 = v48;

                    if (StaticRVCClusterGroup.CleanMode.isMop.getter())
                    {
LABEL_58:
                      v78 = v19;
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        sub_1D178D7F8(0, *(v19 + 16) + 1, 1);
                        v19 = v78;
                      }

                      v50 = *(v19 + 16);
                      v49 = *(v19 + 24);
                      v51 = v50 + 1;
                      if (v50 >= v49 >> 1)
                      {
                        sub_1D178D7F8((v49 > 1), v50 + 1, 1);
                        v51 = v50 + 1;
                        v19 = v78;
                      }

                      v41 = v44 + 1;
                      *(v19 + 16) = v51;
                      v52 = (v19 + 32 * v50);
                      v52[4] = v45;
                      v52[5] = v46;
                      v52[6] = v47;
                      v52[7] = v48;
                      v42 = v7 + 7;
                      if (v72 - 1 != v44)
                      {
                        continue;
                      }

                      goto LABEL_67;
                    }

LABEL_52:
                  }

                  ++v44;
                  v43 += 4;
                  if (v72 == v44)
                  {
                    goto LABEL_67;
                  }

                  goto LABEL_54;
                }

                break;
              }

              *&v75 = *(v43 - 3);
              *(&v75 + 1) = v46;
              v76 = v47;
              v77 = v48;

              if (StaticRVCClusterGroup.CleanMode.isVacuum.getter())
              {
                goto LABEL_58;
              }

              goto LABEL_52;
            }

LABEL_68:
            v53 = 0;
            v54 = v19 + 56;
            v55 = MEMORY[0x1E69E7CC0];
            do
            {
              v56 = (v54 + 32 * v53);
              v57 = v53;
              while (1)
              {
                if (v57 >= *(v19 + 16))
                {
                  __break(1u);
                  goto LABEL_89;
                }

                v58 = *(v56 - 3);
                v7 = *(v56 - 2);
                v53 = v57 + 1;
                v59 = *(v56 - 1);
                v60 = *v56;

                if (sub_1D192A784(v61, v74))
                {
                  break;
                }

                v56 += 4;
                ++v57;
                if (v40 == v53)
                {
                  goto LABEL_81;
                }
              }

              *&v75 = v55;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_1D178D7F8(0, *(v55 + 16) + 1, 1);
                v55 = v75;
              }

              v63 = *(v55 + 16);
              v62 = *(v55 + 24);
              v64 = v63 + 1;
              if (v63 >= v62 >> 1)
              {
                sub_1D178D7F8((v62 > 1), v63 + 1, 1);
                v64 = v63 + 1;
                v55 = v75;
              }

              *(v55 + 16) = v64;
              v65 = (v55 + 32 * v63);
              v65[4] = v58;
              v65[5] = v7;
              v65[6] = v59;
              v65[7] = v60;
              v54 = v19 + 56;
            }

            while (v40 - 1 != v57);
            goto LABEL_81;
          }
        }

        if ((v5 & 1) == 0 || !*(v22 + 16))
        {
          goto LABEL_16;
        }

        v73 = *v20;
        sub_1D1E6920C();
        sub_1D1E6923C();

        sub_1D1E678EC();
        v27 = sub_1D1E6926C();
        v28 = -1 << *(v22 + 32);
        v29 = v27 & ~v28;
        if (((*(v22 + 56 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
        {
          goto LABEL_15;
        }

        v30 = ~v28;
        while ((*(*(v22 + 48) + v29) & 0xBF) != 0x82)
        {
          v29 = (v29 + 1) & v30;
          if (((*(v22 + 56 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
          {
            goto LABEL_15;
          }
        }

        v35 = &unk_1F4D651E8;
        goto LABEL_42;
      }

      v19 = MEMORY[0x1E69E7CC0];
      v40 = *(MEMORY[0x1E69E7CC0] + 16);
      if (v40)
      {
        goto LABEL_68;
      }

LABEL_67:
      v40 = *(v19 + 16);
      if (v40)
      {
        goto LABEL_68;
      }

      v55 = MEMORY[0x1E69E7CC0];
LABEL_81:

      if (*(v55 + 16))
      {

        v19 = v55;
      }

      else
      {
      }

      *&v75 = v19;

      sub_1D1932F38(&v75, sub_1D1E0C080, &type metadata for StaticRVCClusterGroup.CleanMode, sub_1D19338D4, sub_1D19331E8);

      if (*(v75 + 16))
      {
        v66 = *(v75 + 32);
        v67 = *(v75 + 40);
        v68 = *(v75 + 48);
        v69 = *(v75 + 56);

        *a4 = v66;
        a4[1] = v67;
        a4[2] = v68;
        a4[3] = v69;
        return result;
      }
    }

    else
    {
    }

    result = 0.0;
    *a4 = 0u;
    *(a4 + 1) = 0u;
    return result;
  }

  if (qword_1EE07A0A8 != -1)
  {
LABEL_91:
    swift_once();
  }

  v8 = sub_1D1E6709C();
  __swift_project_value_buffer(v8, qword_1EE07A0B0);
  v9 = sub_1D1E6707C();
  v10 = sub_1D1E6833C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *&v75 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_1D1B1312C(0xD00000000000003ALL, 0x80000001D1EBE4E0, &v75);
    _os_log_impl(&dword_1D16EC000, v9, v10, "%s Can't find primary mode tag without vacuum or mop!", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x1D3893640](v12, -1, -1);
    MEMORY[0x1D3893640](v11, -1, -1);
  }

  result = 0.0;
  *v7 = 0u;
  *(v7 + 1) = 0u;
  return result;
}

void StaticRVCClusterGroup.bestFitSelectingSecondaryTag(_:existingTags:)(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = type metadata accessor for StaticRVCClusterGroup(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v143 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = *a1;
  if (v11 < 0 && (v12 & 0x3F) - 1 < 2)
  {
    if (qword_1EE07A0A8 == -1)
    {
LABEL_4:
      v13 = sub_1D1E6709C();
      __swift_project_value_buffer(v13, qword_1EE07A0B0);
      v14 = sub_1D1E6707C();
      v15 = sub_1D1E6833C();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v149 = v17;
        *v16 = 136315138;
        *(v16 + 4) = sub_1D1B1312C(0xD00000000000002DLL, 0x80000001D1EBE520, &v149);
        _os_log_impl(&dword_1D16EC000, v14, v15, "%s Attempting to set a primary tag as a secondary tag.", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v17);
        MEMORY[0x1D3893640](v17, -1, -1);
        MEMORY[0x1D3893640](v16, -1, -1);
      }

      goto LABEL_7;
    }

LABEL_167:
    swift_once();
    goto LABEL_4;
  }

  if (!a2)
  {
    *&v146 = v10;
    v32 = v4 + *(v8 + 28);
    v33 = *(v32 + 16);
    if (v33)
    {
      v145 = a3;
      v34 = *(v32 + 24);
      v35 = *(v32 + 8);
      v149 = *v32;
      v36 = v149;
      v150 = v35;
      v151 = v33;
      v152 = v34;
      v31 = StaticRVCClusterGroup.CleanMode.isMop.getter();
      v149 = v36;
      v150 = v35;
      v151 = v33;
      v152 = v34;
      v37 = StaticRVCClusterGroup.CleanMode.isVacuum.getter();
      v25 = 0;
      v10 = v146;
      goto LABEL_53;
    }

    v38 = *(v4 + *(v8 + 44));
    if (!v38 || (v39 = *(v38 + 16)) == 0)
    {
LABEL_7:
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return;
    }

    v40 = 0;
    v41 = v11 >> 6;
    LODWORD(v144) = v12 & 0x3F | 0x4000;
    while (1)
    {
      if (v40 >= *(v38 + 16))
      {
        __break(1u);
        goto LABEL_166;
      }

      v42 = v38 + 32 + 32 * v40;
      v43 = *(v42 + 24);
      if (*(v43 + 16))
      {
        v44 = a3;
        v146 = *v42;
        v45 = *(v42 + 16);
        sub_1D1E6920C();
        sub_1D1E6923C();

        sub_1D1E678EC();
        v46 = sub_1D1E6926C();
        v47 = -1 << *(v43 + 32);
        v48 = v46 & ~v47;
        if ((*(v43 + 56 + ((v48 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v48))
        {
          v49 = ~v47;
          do
          {
            v50 = *(*(v43 + 48) + v48);
            if (v50 >> 6)
            {
              if (v50 >> 6 == 1)
              {
                if (v41 != 1)
                {
                  goto LABEL_36;
                }
              }

              else if (v41 != 2)
              {
                goto LABEL_36;
              }

              if (((v50 ^ v12) & 0x3F) == 0)
              {
                goto LABEL_89;
              }
            }

            else if (v12 <= 0x3F && v50 == v12)
            {
LABEL_89:
              *v44 = v146;
              *(v44 + 16) = v45;
              *(v44 + 24) = v43;
              return;
            }

LABEL_36:
            v48 = (v48 + 1) & v49;
          }

          while (((*(v43 + 56 + ((v48 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v48) & 1) != 0);
        }

        a3 = v44;
      }

      if (++v40 == v39)
      {
        goto LABEL_7;
      }
    }
  }

  v18 = *(a2 + 16);
  v145 = a3;
  if (!v18)
  {
    v37 = 0;
    v31 = 0;
    v25 = 0;
    goto LABEL_53;
  }

  sub_1D1E6920C();
  sub_1D1E6923C();
  sub_1D1E678EC();
  v19 = sub_1D1E6926C();
  v20 = a2 + 56;
  v21 = -1 << *(a2 + 32);
  v22 = v19 & ~v21;
  if (((*(a2 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
  {
    v25 = 0;
    if (*(a2 + 16))
    {
      goto LABEL_15;
    }

LABEL_25:
    v37 = 0;
    v31 = 0;
    goto LABEL_53;
  }

  v23 = ~v21;
  do
  {
    v24 = *(*(a2 + 48) + v22) & 0xBF;
    v25 = v24 == 131;
    if (v24 == 131)
    {
      break;
    }

    v22 = (v22 + 1) & v23;
  }

  while (((*(v20 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) != 0);
  if (!*(a2 + 16))
  {
    goto LABEL_25;
  }

LABEL_15:
  sub_1D1E6920C();
  sub_1D1E6923C();
  sub_1D1E678EC();
  v26 = sub_1D1E6926C();
  v27 = -1 << *(a2 + 32);
  v28 = v26 & ~v27;
  if ((*(v20 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28))
  {
    v29 = ~v27;
    do
    {
      v30 = *(*(a2 + 48) + v28) & 0xBF;
      v31 = v30 == 130;
      if (v30 == 130)
      {
        break;
      }

      v28 = (v28 + 1) & v29;
    }

    while (((*(v20 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) != 0);
    if (!*(a2 + 16))
    {
      goto LABEL_52;
    }
  }

  else
  {
    v31 = 0;
    if (!*(a2 + 16))
    {
LABEL_52:
      v37 = 0;
      goto LABEL_53;
    }
  }

  sub_1D1E6920C();
  sub_1D1E6923C();
  sub_1D1E678EC();
  v51 = sub_1D1E6926C();
  v52 = -1 << *(a2 + 32);
  v53 = v51 & ~v52;
  if (((*(v20 + ((v53 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v53) & 1) == 0)
  {
    goto LABEL_52;
  }

  v54 = ~v52;
  do
  {
    v55 = *(*(a2 + 48) + v53) & 0xBF;
    v37 = v55 == 129;
    if (v55 == 129)
    {
      break;
    }

    v53 = (v53 + 1) & v54;
  }

  while (((*(v20 + ((v53 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v53) & 1) != 0);
LABEL_53:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6433B0, &qword_1D1E71FD0);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_1D1E739C0;
  *(v56 + 32) = v12;
  v57 = sub_1D17847E8(v56);
  swift_setDeallocating();
  swift_deallocClassInstance();
  v58 = MEMORY[0x1E69E7CD0];
  v148 = MEMORY[0x1E69E7CD0];
  if (v25)
  {
    sub_1D1E6920C();
    sub_1D1E6923C();
    a3 = 0x6E61656C43637672;
    sub_1D1E678EC();
    v59 = sub_1D1E6926C();
    v60 = -1 << *(v57 + 32);
    v61 = v59 & ~v60;
    if ((*(v57 + 56 + ((v61 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v61))
    {
      v62 = ~v60;
      while ((*(*(v57 + 48) + v61) & 0xBF) != 0x83)
      {
        v61 = (v61 + 1) & v62;
        if (((*(v57 + 56 + ((v61 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v61) & 1) == 0)
        {
          goto LABEL_58;
        }
      }

      goto LABEL_137;
    }

LABEL_58:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v147 = v57;
    v64 = *(v57 + 16);
    if (*(v57 + 24) > v64)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D1948290();
        v57 = v147;
      }

LABEL_87:
      *(v57 + ((v61 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v61;
      *(*(v57 + 48) + v61) = -125;
      v79 = *(v57 + 16);
      v80 = __OFADD__(v79, 1);
      v81 = v79 + 1;
      if (!v80)
      {
        *(v57 + 16) = v81;
        goto LABEL_137;
      }

LABEL_166:
      __break(1u);
      goto LABEL_167;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      sub_1D193A134(v64 + 1);
    }

    else
    {
      sub_1D194D96C(v64 + 1);
    }

    v57 = v147;
    sub_1D1E6920C();
    sub_1D1E6923C();
    sub_1D1E678EC();
    v76 = sub_1D1E6926C();
    v77 = -1 << *(v57 + 32);
    v61 = v76 & ~v77;
    if (((*(v57 + 56 + ((v61 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v61) & 1) == 0)
    {
      goto LABEL_87;
    }

    v78 = ~v77;
    while ((*(*(v57 + 48) + v61) & 0xBF) != 0x83)
    {
      v61 = (v61 + 1) & v78;
      if (((*(v57 + 56 + ((v61 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v61) & 1) == 0)
      {
        goto LABEL_87;
      }
    }

LABEL_173:
    sub_1D1E690EC();
    __break(1u);

    __break(1u);
    return;
  }

  if (v31)
  {
    sub_1D1E6920C();
    sub_1D1E6923C();
    sub_1D1E678EC();
    v65 = sub_1D1E6926C();
    v66 = -1 << *(v57 + 32);
    v67 = v65 & ~v66;
    if ((*(v57 + 56 + ((v67 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v67))
    {
      v68 = ~v66;
      while ((*(*(v57 + 48) + v67) & 0xBF) != 0x82)
      {
        v67 = (v67 + 1) & v68;
        if (((*(v57 + 56 + ((v67 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v67) & 1) == 0)
        {
          goto LABEL_66;
        }
      }
    }

    else
    {
LABEL_66:
      v69 = swift_isUniquelyReferenced_nonNull_native();
      v147 = v57;
      v70 = *(v57 + 16);
      if (*(v57 + 24) <= v70)
      {
        if (v69)
        {
          sub_1D193A134(v70 + 1);
        }

        else
        {
          sub_1D194D96C(v70 + 1);
        }

        v57 = v147;
        sub_1D1E6920C();
        sub_1D1E6923C();
        sub_1D1E678EC();
        v82 = sub_1D1E6926C();
        v83 = -1 << *(v57 + 32);
        v67 = v82 & ~v83;
        if ((*(v57 + 56 + ((v67 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v67))
        {
          v84 = ~v83;
          while ((*(*(v57 + 48) + v67) & 0xBF) != 0x82)
          {
            v67 = (v67 + 1) & v84;
            if (((*(v57 + 56 + ((v67 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v67) & 1) == 0)
            {
              goto LABEL_95;
            }
          }

          goto LABEL_173;
        }
      }

      else if ((v69 & 1) == 0)
      {
        sub_1D1948290();
        v57 = v147;
      }

LABEL_95:
      *(v57 + ((v67 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v67;
      *(*(v57 + 48) + v67) = -126;
      v85 = *(v57 + 16);
      v80 = __OFADD__(v85, 1);
      v86 = v85 + 1;
      if (v80)
      {
        __break(1u);
LABEL_169:
        __break(1u);
        goto LABEL_170;
      }

      *(v57 + 16) = v86;
      v58 = MEMORY[0x1E69E7CD0];
    }
  }

  else
  {
    sub_1D1E6920C();
    sub_1D1E6923C();
    sub_1D1E678EC();
    v71 = sub_1D1E6926C();
    v72 = -1 << *(v58 + 32);
    v67 = v71 & ~v72;
    if (((*(v58 + ((v67 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v67) & 1) == 0)
    {
LABEL_73:
      v74 = swift_isUniquelyReferenced_nonNull_native();
      v147 = v58;
      v75 = *(v58 + 16);
      if (*(v58 + 24) > v75)
      {
        if ((v74 & 1) == 0)
        {
          goto LABEL_172;
        }

        v58 = MEMORY[0x1E69E7CD0];
        goto LABEL_112;
      }

      if (v74)
      {
        sub_1D193A134(v75 + 1);
      }

      else
      {
        sub_1D194D96C(v75 + 1);
      }

      v58 = v147;
      sub_1D1E6920C();
      sub_1D1E6923C();
      sub_1D1E678EC();
      v92 = sub_1D1E6926C();
      v93 = -1 << *(v58 + 32);
      v67 = v92 & ~v93;
      if (((*(v58 + 56 + ((v67 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v67) & 1) == 0)
      {
        goto LABEL_112;
      }

      v94 = ~v93;
      while ((*(*(v58 + 48) + v67) & 0xBF) != 0x82)
      {
        v67 = (v67 + 1) & v94;
        if (((*(v58 + 56 + ((v67 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v67) & 1) == 0)
        {
          goto LABEL_112;
        }
      }

      goto LABEL_173;
    }

    v73 = ~v72;
    while ((*(*(v58 + 48) + v67) & 0xBF) != 0x82)
    {
      v67 = (v67 + 1) & v73;
      if (((*(v58 + ((v67 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v67) & 1) == 0)
      {
        goto LABEL_73;
      }
    }
  }

  if (!v37)
  {
    goto LABEL_114;
  }

LABEL_98:
  sub_1D1E6920C();
  sub_1D1E6923C();
  sub_1D1E678EC();
  v87 = sub_1D1E6926C();
  v88 = -1 << *(v57 + 32);
  v67 = v87 & ~v88;
  if ((*(v57 + 56 + ((v67 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v67))
  {
    v89 = ~v88;
    while ((*(*(v57 + 48) + v67) & 0xBF) != 0x81)
    {
      v67 = (v67 + 1) & v89;
      if (((*(v57 + 56 + ((v67 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v67) & 1) == 0)
      {
        goto LABEL_102;
      }
    }

    goto LABEL_137;
  }

LABEL_102:
  v90 = swift_isUniquelyReferenced_nonNull_native();
  v147 = v57;
  v91 = *(v57 + 16);
  if (*(v57 + 24) <= v91)
  {
    if (v90)
    {
      sub_1D193A134(v91 + 1);
    }

    else
    {
      sub_1D194D96C(v91 + 1);
    }

    v57 = v147;
    sub_1D1E6920C();
    sub_1D1E6923C();
    sub_1D1E678EC();
    v102 = sub_1D1E6926C();
    v103 = -1 << *(v57 + 32);
    v67 = v102 & ~v103;
    if ((*(v57 + 56 + ((v67 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v67))
    {
      v104 = ~v103;
      while ((*(*(v57 + 48) + v67) & 0xBF) != 0x81)
      {
        v67 = (v67 + 1) & v104;
        if (((*(v57 + 56 + ((v67 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v67) & 1) == 0)
        {
          goto LABEL_128;
        }
      }

      goto LABEL_173;
    }
  }

  else if ((v90 & 1) == 0)
  {
    sub_1D1948290();
    v57 = v147;
  }

LABEL_128:
  *(v57 + ((v67 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v67;
  *(*(v57 + 48) + v67) = -127;
  v105 = *(v57 + 16);
  v80 = __OFADD__(v105, 1);
  v106 = v105 + 1;
  if (v80)
  {
LABEL_170:
    __break(1u);
    while (1)
    {
      __break(1u);
LABEL_172:
      sub_1D1948290();
      v58 = v147;
LABEL_112:
      *(v58 + ((v67 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v67;
      *(*(v58 + 48) + v67) = -126;
      v95 = *(v58 + 16);
      v80 = __OFADD__(v95, 1);
      v96 = v95 + 1;
      if (v80)
      {
        goto LABEL_169;
      }

      *(v58 + 16) = v96;
      v148 = v58;
      if (v37)
      {
        goto LABEL_98;
      }

LABEL_114:
      sub_1D1E6920C();
      sub_1D1E6923C();
      sub_1D1E678EC();
      v97 = sub_1D1E6926C();
      v98 = -1 << *(v58 + 32);
      v67 = v97 & ~v98;
      if ((*(v58 + 56 + ((v67 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v67))
      {
        break;
      }

LABEL_118:
      v100 = swift_isUniquelyReferenced_nonNull_native();
      v147 = v58;
      v101 = *(v58 + 16);
      if (*(v58 + 24) <= v101)
      {
        if (v100)
        {
          sub_1D193A134(v101 + 1);
        }

        else
        {
          sub_1D194D96C(v101 + 1);
        }

        v58 = v147;
        sub_1D1E6920C();
        sub_1D1E6923C();
        sub_1D1E678EC();
        v107 = sub_1D1E6926C();
        v108 = -1 << *(v58 + 32);
        v67 = v107 & ~v108;
        if ((*(v58 + 56 + ((v67 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v67))
        {
          v109 = ~v108;
          while ((*(*(v58 + 48) + v67) & 0xBF) != 0x81)
          {
            v67 = (v67 + 1) & v109;
            if (((*(v58 + 56 + ((v67 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v67) & 1) == 0)
            {
              goto LABEL_135;
            }
          }

          goto LABEL_173;
        }
      }

      else if ((v100 & 1) == 0)
      {
        sub_1D1948290();
        v58 = v147;
      }

LABEL_135:
      *(v58 + ((v67 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v67;
      *(*(v58 + 48) + v67) = -127;
      v110 = *(v58 + 16);
      v80 = __OFADD__(v110, 1);
      v111 = v110 + 1;
      if (!v80)
      {
        *(v58 + 16) = v111;
        v148 = v58;
        goto LABEL_137;
      }
    }

    v99 = ~v98;
    while ((*(*(v58 + 48) + v67) & 0xBF) != 0x81)
    {
      v67 = (v67 + 1) & v99;
      if (((*(v58 + 56 + ((v67 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v67) & 1) == 0)
      {
        goto LABEL_118;
      }
    }

    goto LABEL_137;
  }

  *(v57 + 16) = v106;
LABEL_137:
  v112 = *(v4 + *(v8 + 44));
  if (v112)
  {
    *&v146 = v57;
    v4 = *(v112 + 16);

    v143[1] = v113;
    if (v4)
    {
      v57 = 0;
      v114 = v113 + 56;
      v115 = MEMORY[0x1E69E7CC0];
      v143[0] = v113 + 56;
      do
      {
        v144 = v115;
        v116 = (v114 + 32 * v57);
        v117 = v57;
        while (1)
        {
          if (v117 >= v4)
          {
            __break(1u);
LABEL_163:
            __break(1u);
            goto LABEL_164;
          }

          v57 = v117 + 1;
          if (__OFADD__(v117, 1))
          {
            goto LABEL_163;
          }

          v12 = *(v116 - 1);
          v118 = *v116;
          v119 = *(v116 - 3);
          v10 = *(v116 - 2);

          v120 = v146;

          v8 = sub_1D192A784(v118, v120);

          if (v8)
          {
            break;
          }

          ++v117;
          v116 += 4;
          if (v57 == v4)
          {
            v115 = v144;
            goto LABEL_156;
          }
        }

        v115 = v144;
        v121 = swift_isUniquelyReferenced_nonNull_native();
        v149 = v115;
        if ((v121 & 1) == 0)
        {
          sub_1D178D7F8(0, *(v115 + 2) + 1, 1);
          v115 = v149;
        }

        v114 = v143[0];
        v123 = *(v115 + 2);
        v122 = *(v115 + 3);
        v8 = v123 + 1;
        if (v123 >= v122 >> 1)
        {
          sub_1D178D7F8((v122 > 1), v123 + 1, 1);
          v115 = v149;
        }

        *(v115 + 2) = v8;
        v124 = &v115[32 * v123];
        *(v124 + 4) = v119;
        *(v124 + 5) = v10;
        *(v124 + 6) = v12;
        *(v124 + 7) = v118;
      }

      while (v57 != v4);
    }

    else
    {
      v115 = MEMORY[0x1E69E7CC0];
    }

LABEL_156:

    v149 = v115;

    sub_1D1932EC4(&v149, &v148);

    v137 = v145;
    if (*(v149 + 2))
    {
      v138 = *(v149 + 4);
      v139 = *(v149 + 5);
      v140 = *(v149 + 6);
      v141 = *(v149 + 7);
    }

    else
    {
      v138 = 0;
      v139 = 0;
      v140 = 0;
      v141 = 0;
    }

    *v137 = v138;
    v137[1] = v139;
    v137[2] = v140;
    v137[3] = v141;
  }

  else
  {
    if (qword_1EE07A0A8 != -1)
    {
LABEL_164:
      swift_once();
    }

    v125 = sub_1D1E6709C();
    __swift_project_value_buffer(v125, qword_1EE07A0B0);
    sub_1D1951A7C(v4, v10, type metadata accessor for StaticRVCClusterGroup);
    v126 = sub_1D1E6707C();
    v127 = sub_1D1E6833C();
    if (os_log_type_enabled(v126, v127))
    {
      v128 = swift_slowAlloc();
      v129 = swift_slowAlloc();
      v149 = v129;
      *v128 = 136315650;
      *(v128 + 4) = sub_1D1B1312C(0xD00000000000002DLL, 0x80000001D1EBE520, &v149);
      *&v146 = v57;
      *(v128 + 12) = 2082;
      LOBYTE(v147) = v12;
      v130 = sub_1D1E678BC();
      v132 = sub_1D1B1312C(v130, v131, &v149);

      *(v128 + 14) = v132;
      *(v128 + 22) = 2082;
      v147 = *&v10[*(v8 + 44)];

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6473A8, &qword_1D1E855B0);
      v133 = sub_1D1E678BC();
      v135 = v134;
      sub_1D1951B4C(v10, type metadata accessor for StaticRVCClusterGroup);
      v136 = sub_1D1B1312C(v133, v135, &v149);

      *(v128 + 24) = v136;
      _os_log_impl(&dword_1D16EC000, v126, v127, "%s Couldn't find a clean mode that contained the specified tag: %{public}s allRunningModes: %{public}s'", v128, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v129, -1, -1);
      MEMORY[0x1D3893640](v128, -1, -1);
    }

    else
    {

      sub_1D1951B4C(v10, type metadata accessor for StaticRVCClusterGroup);
    }

    v142 = v145;
    *v145 = 0u;
    v142[1] = 0u;
  }
}

uint64_t StaticRVCClusterGroup.cleanMode(containing:)@<X0>(_OWORD *a2@<X8>)
{
  result = type metadata accessor for StaticRVCClusterGroup(0);
  v5 = *(v2 + *(result + 44));
  if (v5)
  {
    v15 = a2;
    v6 = *(v5 + 16);
    if (v6)
    {
      v7 = 0;
      v8 = (v5 + 56);
      while (v7 < *(v5 + 16))
      {
        v10 = *(v8 - 3);
        v9 = *(v8 - 2);
        v11 = *(v8 - 1);
        v12 = *v8;

        v14 = sub_1D192D6B0(v13, v12);

        if (v14)
        {
          *v15 = v10;
          v15[1] = v9;
          v15[2] = v11;
          v15[3] = v12;
          return result;
        }

        ++v7;
        v8 += 4;
        if (v6 == v7)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_7:
      *v15 = 0u;
      *(v15 + 1) = 0u;
    }
  }

  else
  {
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_1D1932EC4(char **a1, uint64_t *a2)
{
  v4 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1D1E0C080(v4);
  }

  v5 = *(v4 + 2);
  v7[0] = (v4 + 32);
  v7[1] = v5;
  result = sub_1D1932FD4(v7, a2);
  *a1 = v4;
  return result;
}

uint64_t sub_1D1932F38(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3, void (*a4)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v10 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = a2(v10);
  }

  v11 = *(v10 + 16);
  v13[0] = v10 + 32;
  v13[1] = v11;
  result = sub_1D19330D8(v13, a3, a4, a5);
  *a1 = v10;
  return result;
}

uint64_t sub_1D1932FD4(uint64_t *a1, uint64_t *a2)
{
  v4 = a1[1];
  result = sub_1D1E68F9C();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      if (v4 <= 1)
      {
        v7 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v7 = sub_1D1E67C8C();
        *(v7 + 16) = v4 / 2;
      }

      v9[0] = v7 + 32;
      v9[1] = v4 / 2;
      v8 = v7;
      sub_1D1933E78(v9, v10, a1, v6, a2);
      *(v8 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    return sub_1D193326C(0, v4, 1, a1, a2);
  }

  return result;
}

uint64_t sub_1D19330D8(uint64_t a1, uint64_t a2, void (*a3)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a4)(void, uint64_t, uint64_t, uint64_t))
{
  v7 = *(a1 + 8);
  result = sub_1D1E68F9C();
  if (result < v7)
  {
    if (v7 >= -1)
    {
      v9 = result;
      if (v7 <= 1)
      {
        v10 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v10 = sub_1D1E67C8C();
        *(v10 + 16) = v7 / 2;
      }

      v12[0] = v10 + 32;
      v12[1] = v7 / 2;
      v11 = v10;
      a3(v12, v13, a1, v9);
      *(v11 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v7 < 0)
  {
    goto LABEL_12;
  }

  if (v7)
  {
    return a4(0, v7, 1, a1);
  }

  return result;
}

uint64_t sub_1D19331E8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 32 * a3;
    v6 = result - a3;
LABEL_5:
    v7 = *(v4 + 32 * a3 + 24);
    v8 = v6;
    v9 = v5;
    while (1)
    {
      if (*(v7 + 16) >= *(*(v9 - 8) + 16))
      {
LABEL_4:
        ++a3;
        v5 += 32;
        --v6;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      v10 = *(v9 + 16);
      v11 = *v9;
      v12 = *(v9 - 16);
      *v9 = *(v9 - 32);
      *(v9 + 16) = v12;
      *(v9 - 16) = v10;
      *(v9 - 8) = v7;
      *(v9 - 32) = v11;
      v9 -= 32;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D193326C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5)
{
  if (a3 != a2)
  {
    v23 = *a4;
    v5 = *a4 + 32 * a3;
    v6 = result - a3;
LABEL_6:
    v21 = v5;
    v22 = a3;
    v7 = *(v23 + 32 * a3 + 24);
    v20 = v6;
    while (1)
    {
      v8 = *(v5 - 8);

      v10 = sub_1D1A46BE0(v9, v7);

      v12 = sub_1D1A46BE0(v11, v8);

      if (v10)
      {
        if ((v12 & 1) == 0)
        {

          goto LABEL_12;
        }
      }

      else if (v12)
      {

LABEL_5:
        a3 = v22 + 1;
        v5 = v21 + 32;
        v6 = v20 - 1;
        if (v22 + 1 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v13 = *(v7 + 16);
      v14 = *(v8 + 16);

      if (v13 >= v14)
      {
        goto LABEL_5;
      }

LABEL_12:
      if (!v23)
      {
        __break(1u);
        return result;
      }

      v15 = *(v5 + 16);
      v7 = *(v5 + 24);
      v16 = *v5;
      v17 = *(v5 - 16);
      *v5 = *(v5 - 32);
      *(v5 + 16) = v17;
      *(v5 - 16) = v15;
      *(v5 - 8) = v7;
      *(v5 - 32) = v16;
      v5 -= 32;
      if (__CFADD__(v6++, 1))
      {
        goto LABEL_5;
      }
    }
  }

  return result;
}

uint64_t sub_1D1933420(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = (*a4 + a3);
    v7 = result - a3;
LABEL_6:
    v8 = *(v5 + v4);
    v9 = v7;
    v10 = v6;
    while (1)
    {
      v11 = *(v10 - 1);
      if (v8 >> 6)
      {
        if (v8 >> 6 == 1)
        {
          v12 = 0;
          v13 = 0xE000000000000000;
          v14 = v11 >> 6;
          if (v11 >> 6)
          {
            goto LABEL_58;
          }

          goto LABEL_10;
        }

        v19 = v8 & 0x3F;
        if (v19 <= 1)
        {
          if (v19)
          {
            v17 = 0xD000000000000018;
            v18 = "HFVacuumCleanMode_Mop";
          }

          else
          {
            v17 = 0xD00000000000001BLL;
            v18 = "HFVacuumCleanMode_Vacuum";
          }

          goto LABEL_53;
        }

        if (v19 != 2)
        {
          v17 = 0xD00000000000001FLL;
          v18 = "HFVacuumCleanMode_Auto";
          goto LABEL_53;
        }

        v20 = "HFVacuumCleanMode_VacuumThenMop";
      }

      else
      {
        if (v8 <= 4u)
        {
          if (v8 <= 1u)
          {
            if (v8)
            {
              v17 = 0xD000000000000017;
              v18 = "HFVacuumCleanMode_Quiet";
            }

            else
            {
              v17 = 0xD000000000000016;
              v18 = "HFVacuumCleanMode_Quick";
            }
          }

          else if (v8 == 2)
          {
            v17 = 0xD000000000000017;
            v18 = "HFVacuumCleanMode_LowNoise";
          }

          else if (v8 == 3)
          {
            v17 = 0xD00000000000001ALL;
            v18 = "HFVacuumCleanMode_LowEnergy";
          }

          else
          {
            v17 = 0xD00000000000001BLL;
            v18 = "HFVacuumCleanMode_Vacation";
          }

          goto LABEL_53;
        }

        if (v8 <= 6u)
        {
          if (v8 == 5)
          {
            v17 = 0xD00000000000001ALL;
            v18 = "HFVacuumCleanMode_Min";
            goto LABEL_53;
          }

          v20 = "HFVacuumCleanMode_Max";
        }

        else if (v8 == 7)
        {
          v20 = "HFVacuumCleanMode_Night";
        }

        else
        {
          if (v8 == 8)
          {
            v17 = 0xD000000000000017;
            v18 = "HFVacuumCleanMode_Day";
LABEL_53:
            v22 = v18 | 0x8000000000000000;
            goto LABEL_57;
          }

          v20 = "SecondaryTag(_:existingTags:)";
        }
      }

      v22 = v20 | 0x8000000000000000;
      v17 = 0xD000000000000015;
LABEL_57:
      v12 = static String.hfLocalized(_:)(v17, v22);
      v13 = v23;
      v14 = v11 >> 6;
      if (v11 >> 6)
      {
LABEL_58:
        if (v14 == 1)
        {
          v24 = 0xE000000000000000;
          if (v12)
          {
            goto LABEL_72;
          }

          goto LABEL_71;
        }

        if ((v11 & 0x3Fu) > 1)
        {
          if ((v11 & 0x3F) == 2)
          {
            v21 = "HFVacuumCleanMode_VacuumThenMop";
            goto LABEL_66;
          }

          v15 = 0xD00000000000001FLL;
          v16 = "HFVacuumCleanMode_Auto";
        }

        else if ((v11 & 0x3F) != 0)
        {
          v15 = 0xD000000000000018;
          v16 = "HFVacuumCleanMode_Mop";
        }

        else
        {
          v15 = 0xD00000000000001BLL;
          v16 = "HFVacuumCleanMode_Vacuum";
        }

        goto LABEL_69;
      }

LABEL_10:
      if (v11 > 4)
      {
        if (v11 <= 6)
        {
          if (v11 != 5)
          {
            v21 = "HFVacuumCleanMode_Max";
            goto LABEL_66;
          }

          v15 = 0xD00000000000001ALL;
          v16 = "HFVacuumCleanMode_Min";
        }

        else
        {
          if (v11 == 7)
          {
            v21 = "HFVacuumCleanMode_Night";
LABEL_66:
            v25 = v21 | 0x8000000000000000;
            v15 = 0xD000000000000015;
            goto LABEL_70;
          }

          if (v11 != 8)
          {
            v21 = "SecondaryTag(_:existingTags:)";
            goto LABEL_66;
          }

          v15 = 0xD000000000000017;
          v16 = "HFVacuumCleanMode_Day";
        }
      }

      else if (v11 <= 1)
      {
        if (v11)
        {
          v15 = 0xD000000000000017;
          v16 = "HFVacuumCleanMode_Quiet";
        }

        else
        {
          v15 = 0xD000000000000016;
          v16 = "HFVacuumCleanMode_Quick";
        }
      }

      else if (v11 == 2)
      {
        v15 = 0xD000000000000017;
        v16 = "HFVacuumCleanMode_LowNoise";
      }

      else if (v11 == 3)
      {
        v15 = 0xD00000000000001ALL;
        v16 = "HFVacuumCleanMode_LowEnergy";
      }

      else
      {
        v15 = 0xD00000000000001BLL;
        v16 = "HFVacuumCleanMode_Vacation";
      }

LABEL_69:
      v25 = v16 | 0x8000000000000000;
LABEL_70:
      v26 = static String.hfLocalized(_:)(v15, v25);
      v24 = v27;
      if (v12 != v26)
      {
        goto LABEL_72;
      }

LABEL_71:
      if (v13 == v24)
      {

LABEL_5:
        ++v4;
        ++v6;
        --v7;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

LABEL_72:
      v28 = sub_1D1E6904C();

      if ((v28 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v5)
      {
        __break(1u);
        return result;
      }

      v8 = *v10;
      *v10 = *(v10 - 1);
      *--v10 = v8;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_5;
      }
    }
  }

  return result;
}

uint64_t sub_1D19338D4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v90 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v10 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v90;
    if (!*v90)
    {
      goto LABEL_126;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_120:
      result = sub_1D1E0BE44(v10);
      v10 = result;
    }

    v85 = *(v10 + 2);
    if (v85 >= 2)
    {
      while (*a3)
      {
        v86 = *&v10[16 * v85];
        v87 = *&v10[16 * v85 + 24];
        sub_1D1935960((*a3 + 32 * v86), (*a3 + 32 * *&v10[16 * v85 + 16]), (*a3 + 32 * v87), v5);
        if (v4)
        {
        }

        if (v87 < v86)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1D1E0BE44(v10);
        }

        if (v85 - 2 >= *(v10 + 2))
        {
          goto LABEL_114;
        }

        v88 = &v10[16 * v85];
        *v88 = v86;
        *(v88 + 1) = v87;
        result = sub_1D1E0BDB8(v85 - 1);
        v85 = *(v10 + 2);
        if (v85 <= 1)
        {
        }
      }

      goto LABEL_124;
    }
  }

  v8 = a4;
  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v11 = v9++;
    if (v9 < v7)
    {
      v12 = 32 * v11;
      v13 = *a3 + 32 * v11;
      v14 = *(*(*a3 + 32 * v9 + 24) + 16);
      v15 = *(*(v13 + 24) + 16);
      v16 = v11 + 2;
      v17 = (v13 + 88);
      v18 = v14;
      while (v7 != v16)
      {
        v19 = *v17;
        v17 += 4;
        v20 = (v14 < v15) ^ (*(v19 + 16) >= v18);
        ++v16;
        v18 = *(v19 + 16);
        if ((v20 & 1) == 0)
        {
          v9 = v16 - 1;
          if (v14 >= v15)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v9 = v7;
      if (v14 >= v15)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v9 < v11)
      {
        goto LABEL_117;
      }

      if (v11 < v9)
      {
        v21 = 0;
        v22 = 32 * v9;
        v23 = v11;
        do
        {
          if (v23 != v9 + v21 - 1)
          {
            v29 = *a3;
            if (!*a3)
            {
              goto LABEL_123;
            }

            v24 = (v29 + v12);
            v25 = v29 + v22;
            v26 = *v24;
            v27 = v24[1];
            v28 = *(v25 - 16);
            *v24 = *(v25 - 32);
            v24[1] = v28;
            *(v25 - 32) = v26;
            *(v25 - 16) = v27;
          }

          ++v23;
          --v21;
          v22 -= 32;
          v12 += 32;
        }

        while (v23 < v9 + v21);
        v7 = a3[1];
      }
    }

LABEL_20:
    if (v9 < v7)
    {
      if (__OFSUB__(v9, v11))
      {
        goto LABEL_116;
      }

      if (v9 - v11 < v8)
      {
        if (__OFADD__(v11, v8))
        {
          goto LABEL_118;
        }

        if (v11 + v8 < v7)
        {
          v7 = v11 + v8;
        }

        if (v7 < v11)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v9 != v7)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v9 < v11)
    {
      goto LABEL_115;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D177D070(0, *(v10 + 2) + 1, 1, v10);
      v10 = result;
    }

    v5 = *(v10 + 2);
    v40 = *(v10 + 3);
    v41 = v5 + 1;
    if (v5 >= v40 >> 1)
    {
      result = sub_1D177D070((v40 > 1), v5 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 2) = v41;
    v42 = &v10[16 * v5];
    *(v42 + 4) = v11;
    *(v42 + 5) = v9;
    v43 = *v90;
    if (!*v90)
    {
      goto LABEL_125;
    }

    if (v5)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v10 + 4);
          v46 = *(v10 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_57:
          if (v48)
          {
            goto LABEL_104;
          }

          v61 = &v10[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_107;
          }

          v67 = &v10[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_110;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_111;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v71 = &v10[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_71:
        if (v66)
        {
          goto LABEL_106;
        }

        v74 = &v10[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_109;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_78:
        v82 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
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
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v83 = *&v10[16 * v82 + 32];
        v5 = *&v10[16 * v44 + 40];
        sub_1D1935960((*a3 + 32 * v83), (*a3 + 32 * *&v10[16 * v44 + 32]), (*a3 + 32 * v5), v43);
        if (v4)
        {
        }

        if (v5 < v83)
        {
          goto LABEL_100;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1D1E0BE44(v10);
        }

        if (v82 >= *(v10 + 2))
        {
          goto LABEL_101;
        }

        v84 = &v10[16 * v82];
        *(v84 + 4) = v83;
        *(v84 + 5) = v5;
        result = sub_1D1E0BDB8(v44);
        v41 = *(v10 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v10[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_102;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_103;
      }

      v56 = &v10[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_105;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_108;
      }

      if (v60 >= v52)
      {
        v78 = &v10[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_112;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v7 = a3[1];
    v8 = a4;
    if (v9 >= v7)
    {
      goto LABEL_88;
    }
  }

  v30 = *a3;
  v31 = *a3 + 32 * v9;
  v32 = v11 - v9;
LABEL_30:
  v33 = *(v30 + 32 * v9 + 24);
  v34 = v32;
  v35 = v31;
  while (1)
  {
    if (*(v33 + 16) >= *(*(v35 - 8) + 16))
    {
LABEL_29:
      ++v9;
      v31 += 32;
      --v32;
      if (v9 != v7)
      {
        goto LABEL_30;
      }

      v9 = v7;
      goto LABEL_37;
    }

    if (!v30)
    {
      break;
    }

    v36 = *(v35 + 16);
    v37 = *v35;
    v38 = *(v35 - 16);
    *v35 = *(v35 - 32);
    *(v35 + 16) = v38;
    *(v35 - 16) = v36;
    *(v35 - 8) = v33;
    *(v35 - 32) = v37;
    v35 -= 32;
    if (__CFADD__(v34++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
  return result;
}

uint64_t sub_1D1933E78(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  v144 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_181:
    v9 = *v144;
    if (!*v144)
    {
      goto LABEL_221;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_183:
      v138 = *(v7 + 2);
      if (v138 >= 2)
      {
        while (*a3)
        {
          v139 = *&v7[16 * v138];
          v140 = *&v7[16 * v138 + 24];
          sub_1D1935B74((*a3 + 32 * v139), (*a3 + 32 * *&v7[16 * v138 + 16]), (*a3 + 32 * v140), v9, a5);
          if (v151)
          {
          }

          if (v140 < v139)
          {
            goto LABEL_207;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v7 = sub_1D1E0BE44(v7);
          }

          if (v138 - 2 >= *(v7 + 2))
          {
            goto LABEL_208;
          }

          v141 = &v7[16 * v138];
          *v141 = v139;
          *(v141 + 1) = v140;
          result = sub_1D1E0BDB8(v138 - 1);
          v138 = *(v7 + 2);
          if (v138 <= 1)
          {
          }
        }

        goto LABEL_219;
      }
    }

LABEL_215:
    result = sub_1D1E0BE44(v7);
    v7 = result;
    goto LABEL_183;
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
LABEL_4:
  v8 = v6;
  v9 = v6 + 1;
  v150 = v7;
  v148 = v6;
  if (v6 + 1 >= v5)
  {
    goto LABEL_34;
  }

  v157 = v5;
  v10 = *(*a3 + 32 * v9 + 24);
  v11 = *a3 + 32 * v6;
  v12 = *(v11 + 24);

  v14 = sub_1D1A46BE0(v13, v10);

  v16 = sub_1D1A46BE0(v15, v12);

  if (v14)
  {
    if ((v16 & 1) == 0)
    {

      v17 = 1;
LABEL_11:
      v158 = v17;
      goto LABEL_12;
    }

LABEL_10:
    v18 = *(v10 + 16);
    v19 = *(v12 + 16);

    v17 = v18 < v19;
    goto LABEL_11;
  }

  if ((v16 & 1) == 0)
  {
    goto LABEL_10;
  }

  v158 = 0;
LABEL_12:
  v7 = v150;
  v9 = v8 + 2;
  if (v8 + 2 >= v157)
  {
    goto LABEL_25;
  }

  v20 = (v11 + 88);
  do
  {
    v24 = *v20;
    v25 = *(v20 - 4);

    v27 = sub_1D1A46BE0(v26, v24);

    v29 = sub_1D1A46BE0(v28, v25);

    if (v27)
    {
      if (v29)
      {
        goto LABEL_14;
      }

      v7 = v150;
      if (!v158)
      {
        v8 = v148;
        goto LABEL_34;
      }
    }

    else
    {
      if ((v29 & 1) == 0)
      {
LABEL_14:
        v21 = *(v24 + 16);
        v22 = *(v25 + 16);

        v23 = v21 >= v22;
        v7 = v150;
        if (((v158 ^ v23) & 1) == 0)
        {
          goto LABEL_24;
        }

        goto LABEL_15;
      }

      v7 = v150;
      if (v158)
      {
        v8 = v148;
        goto LABEL_26;
      }
    }

LABEL_15:
    ++v9;
    v20 += 4;
  }

  while (v157 != v9);
  v9 = v157;
LABEL_24:
  v8 = v148;
LABEL_25:
  if (v158)
  {
LABEL_26:
    if (v9 >= v8)
    {
      if (v8 < v9)
      {
        v30 = 0;
        v31 = 32 * v9;
        v32 = 32 * v8;
        v33 = v8;
        do
        {
          if (v33 != v9 + v30 - 1)
          {
            v39 = *a3;
            if (!*a3)
            {
              goto LABEL_218;
            }

            v34 = (v39 + v32);
            v35 = v39 + v31;
            v36 = *v34;
            v37 = v34[1];
            v38 = *(v35 - 16);
            *v34 = *(v35 - 32);
            v34[1] = v38;
            *(v35 - 32) = v36;
            *(v35 - 16) = v37;
          }

          ++v33;
          --v30;
          v31 -= 32;
          v32 += 32;
        }

        while (v33 < v9 + v30);
      }

      goto LABEL_34;
    }

LABEL_212:
    __break(1u);
LABEL_213:
    __break(1u);
    goto LABEL_214;
  }

LABEL_34:
  v40 = a3[1];
  if (v9 >= v40)
  {
    goto LABEL_130;
  }

  if (__OFSUB__(v9, v8))
  {
LABEL_211:
    __break(1u);
    goto LABEL_212;
  }

  if (v9 - v8 >= a4)
  {
    goto LABEL_130;
  }

  if (__OFADD__(v8, a4))
  {
    goto LABEL_213;
  }

  if (v8 + a4 < v40)
  {
    v40 = v8 + a4;
  }

  if (v40 < v8)
  {
LABEL_214:
    __break(1u);
    goto LABEL_215;
  }

  if (v9 == v40)
  {
    goto LABEL_130;
  }

  v143 = v40;
  v41 = *a3;
  v147 = *a3;
LABEL_46:
  v42 = *(v41 + 32 * v9 + 24);
  v43 = v9;
  v145 = v9;
  while (1)
  {
    v154 = v43;
    v44 = v43 - 1;
    v45 = (v41 + 32 * (v43 - 1));
    v46 = *(v45 + 3);
    v153 = v45;
    v47 = *(v42 + 16);
    if (!v47 || (v48 = *(*a5 + 16)) == 0)
    {

      v64 = 1;
      v65 = *(v46 + 16);
      if (v65)
      {
        goto LABEL_85;
      }

      goto LABEL_117;
    }

    if (v47 >= v48)
    {
      v49 = *a5;
    }

    else
    {
      v49 = v42;
    }

    if (v47 >= v48)
    {
      v9 = v42;
    }

    else
    {
      v9 = *a5;
    }

    v50 = 1 << *(v49 + 32);
    if (v50 < 64)
    {
      v51 = ~(-1 << v50);
    }

    else
    {
      v51 = -1;
    }

    v52 = v51 & *(v49 + 56);
    v53 = (v50 + 63) >> 6;
    v7 = (v9 + 56);

    v155 = v42;

    v54 = 0;
    v159 = v46;
    while (1)
    {
LABEL_59:
      if (!v52)
      {
        v42 = v155;
        while (1)
        {
          v56 = v54 + 1;
          if (__OFADD__(v54, 1))
          {
            break;
          }

          if (v56 >= v53)
          {

            v64 = 1;
            v7 = v150;
            v41 = v147;
            v8 = v148;
            v65 = *(v46 + 16);
            if (v65)
            {
              goto LABEL_85;
            }

            goto LABEL_117;
          }

          v55 = *(v49 + 56 + 8 * v56);
          ++v54;
          if (v55)
          {
            v54 = v56;
            goto LABEL_66;
          }
        }

        __break(1u);
LABEL_193:
        __break(1u);
LABEL_194:
        __break(1u);
LABEL_195:
        __break(1u);
LABEL_196:
        __break(1u);
LABEL_197:
        __break(1u);
LABEL_198:
        __break(1u);
LABEL_199:
        __break(1u);
LABEL_200:
        __break(1u);
LABEL_201:
        __break(1u);
LABEL_202:
        __break(1u);
LABEL_203:
        __break(1u);
LABEL_204:
        __break(1u);
LABEL_205:
        __break(1u);
LABEL_206:
        __break(1u);
LABEL_207:
        __break(1u);
LABEL_208:
        __break(1u);
LABEL_209:
        __break(1u);
LABEL_210:
        __break(1u);
        goto LABEL_211;
      }

      v55 = v52;
LABEL_66:
      v52 = (v55 - 1) & v55;
      if (*(v9 + 16))
      {
        v57 = *(*(v49 + 48) + (__clz(__rbit64(v55)) | (v54 << 6)));
        sub_1D1E6920C();
        v58 = v57 >> 6;
        sub_1D1E6923C();
        sub_1D1E678EC();
        v59 = sub_1D1E6926C();
        v60 = -1 << *(v9 + 32);
        v61 = v59 & ~v60;
        v46 = v159;
        if ((*&v7[(v61 >> 3) & 0xFFFFFFFFFFFFFF8] >> v61))
        {
          break;
        }
      }
    }

    v62 = ~v60;
    while (1)
    {
      v63 = *(*(v9 + 48) + v61);
      if (!(v63 >> 6))
      {
        break;
      }

      if (v63 >> 6 == 1)
      {
        if (v58 == 1)
        {
          goto LABEL_69;
        }
      }

      else if (v58 == 2)
      {
LABEL_69:
        if (((v63 ^ v57) & 0x3F) == 0)
        {
          goto LABEL_84;
        }
      }

LABEL_70:
      v61 = (v61 + 1) & v62;
      if (((*&v7[(v61 >> 3) & 0xFFFFFFFFFFFFFF8] >> v61) & 1) == 0)
      {
        goto LABEL_59;
      }
    }

    if (v57 > 0x3F || v63 != v57)
    {
      goto LABEL_70;
    }

LABEL_84:

    v64 = 0;
    v7 = v150;
    v41 = v147;
    v8 = v148;
    v42 = v155;
    v65 = *(v159 + 16);
    if (!v65)
    {
      goto LABEL_117;
    }

LABEL_85:
    v66 = *(*a5 + 16);
    if (!v66)
    {
LABEL_117:
      if (v64)
      {
        v83 = v8;
        goto LABEL_124;
      }

      goto LABEL_44;
    }

    v146 = v64;
    v156 = v42;
    v152 = v44;
    if (v65 >= v66)
    {
      v67 = *a5;
    }

    else
    {
      v67 = v46;
    }

    if (v65 >= v66)
    {
      v68 = v46;
    }

    else
    {
      v68 = *a5;
    }

    v7 = (v67 + 56);
    v69 = 1 << *(v67 + 32);
    if (v69 < 64)
    {
      v70 = ~(-1 << v69);
    }

    else
    {
      v70 = -1;
    }

    v71 = v70 & *(v67 + 56);
    v72 = (v69 + 63) >> 6;
    v9 = v68 + 56;

    v73 = 0;
    v160 = v46;
    while (1)
    {
LABEL_96:
      if (!v71)
      {
        v42 = v156;
        while (1)
        {
          v75 = v73 + 1;
          if (__OFADD__(v73, 1))
          {
            goto LABEL_193;
          }

          if (v75 >= v72)
          {
            break;
          }

          v74 = *&v7[8 * v75];
          ++v73;
          if (v74)
          {
            v73 = v75;
            goto LABEL_103;
          }
        }

        if (v146)
        {
          v7 = v150;
          v41 = v147;
          v83 = v148;
          v44 = v152;
          goto LABEL_124;
        }

        v7 = v150;
        v41 = v147;
        v8 = v148;
LABEL_44:

        goto LABEL_45;
      }

      v74 = v71;
LABEL_103:
      v71 = (v74 - 1) & v74;
      if (*(v68 + 16))
      {
        v76 = *(*(v67 + 48) + (__clz(__rbit64(v74)) | (v73 << 6)));
        sub_1D1E6920C();
        v77 = v76 >> 6;
        sub_1D1E6923C();
        sub_1D1E678EC();
        v78 = sub_1D1E6926C();
        v79 = -1 << *(v68 + 32);
        v80 = v78 & ~v79;
        v46 = v160;
        if ((*(v9 + ((v80 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v80))
        {
          break;
        }
      }
    }

    v81 = ~v79;
    while (2)
    {
      v82 = *(*(v68 + 48) + v80);
      if (v82 >> 6)
      {
        if (v82 >> 6 == 1)
        {
          if (v77 != 1)
          {
            goto LABEL_107;
          }

LABEL_106:
          if (((v82 ^ v76) & 0x3F) == 0)
          {
            goto LABEL_121;
          }
        }

        else if (v77 == 2)
        {
          goto LABEL_106;
        }

LABEL_107:
        v80 = (v80 + 1) & v81;
        if (((*(v9 + ((v80 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v80) & 1) == 0)
        {
          goto LABEL_96;
        }

        continue;
      }

      break;
    }

    if (v76 > 0x3F || v82 != v76)
    {
      goto LABEL_107;
    }

LABEL_121:

    if (v146)
    {

      v7 = v150;
      v41 = v147;
      v8 = v148;
      v44 = v152;
      v84 = v154;
      goto LABEL_125;
    }

    v7 = v150;
    v41 = v147;
    v83 = v148;
    v44 = v152;
    v42 = v156;
LABEL_124:
    v85 = *(v42 + 16);
    v86 = *(v46 + 16);

    v87 = v85 >= v86;
    v84 = v154;
    v8 = v83;
    if (v87)
    {
LABEL_45:
      v9 = v145 + 1;
      if (v145 + 1 == v143)
      {
        v9 = v143;
LABEL_130:
        if (v9 >= v8)
        {
          result = swift_isUniquelyReferenced_nonNull_native();
          v6 = v9;
          if ((result & 1) == 0)
          {
            result = sub_1D177D070(0, *(v7 + 2) + 1, 1, v7);
            v7 = result;
          }

          v93 = *(v7 + 2);
          v92 = *(v7 + 3);
          v94 = v93 + 1;
          if (v93 >= v92 >> 1)
          {
            result = sub_1D177D070((v92 > 1), v93 + 1, 1, v7);
            v7 = result;
          }

          *(v7 + 2) = v94;
          v95 = &v7[16 * v93];
          *(v95 + 4) = v8;
          *(v95 + 5) = v9;
          v9 = *v144;
          if (!*v144)
          {
            goto LABEL_220;
          }

          if (!v93)
          {
LABEL_3:
            v5 = a3[1];
            if (v6 >= v5)
            {
              goto LABEL_181;
            }

            goto LABEL_4;
          }

          while (1)
          {
            v96 = v94 - 1;
            if (v94 >= 4)
            {
              break;
            }

            if (v94 == 3)
            {
              v97 = *(v7 + 4);
              v98 = *(v7 + 5);
              v107 = __OFSUB__(v98, v97);
              v99 = v98 - v97;
              v100 = v107;
LABEL_150:
              if (v100)
              {
                goto LABEL_199;
              }

              v113 = &v7[16 * v94];
              v115 = *v113;
              v114 = *(v113 + 1);
              v116 = __OFSUB__(v114, v115);
              v117 = v114 - v115;
              v118 = v116;
              if (v116)
              {
                goto LABEL_202;
              }

              v119 = &v7[16 * v96 + 32];
              v121 = *v119;
              v120 = *(v119 + 1);
              v107 = __OFSUB__(v120, v121);
              v122 = v120 - v121;
              if (v107)
              {
                goto LABEL_205;
              }

              if (__OFADD__(v117, v122))
              {
                goto LABEL_206;
              }

              if (v117 + v122 >= v99)
              {
                if (v99 < v122)
                {
                  v96 = v94 - 2;
                }

                goto LABEL_171;
              }

              goto LABEL_164;
            }

            v123 = &v7[16 * v94];
            v125 = *v123;
            v124 = *(v123 + 1);
            v107 = __OFSUB__(v124, v125);
            v117 = v124 - v125;
            v118 = v107;
LABEL_164:
            if (v118)
            {
              goto LABEL_201;
            }

            v126 = &v7[16 * v96];
            v128 = *(v126 + 4);
            v127 = *(v126 + 5);
            v107 = __OFSUB__(v127, v128);
            v129 = v127 - v128;
            if (v107)
            {
              goto LABEL_204;
            }

            if (v129 < v117)
            {
              goto LABEL_3;
            }

LABEL_171:
            v134 = v96 - 1;
            if (v96 - 1 >= v94)
            {
              goto LABEL_194;
            }

            if (!*a3)
            {
              goto LABEL_217;
            }

            v135 = *&v7[16 * v134 + 32];
            v136 = *&v7[16 * v96 + 40];
            sub_1D1935B74((*a3 + 32 * v135), (*a3 + 32 * *&v7[16 * v96 + 32]), (*a3 + 32 * v136), v9, a5);
            if (v151)
            {
            }

            if (v136 < v135)
            {
              goto LABEL_195;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v7 = sub_1D1E0BE44(v7);
            }

            if (v134 >= *(v7 + 2))
            {
              goto LABEL_196;
            }

            v137 = &v7[16 * v134];
            *(v137 + 4) = v135;
            *(v137 + 5) = v136;
            result = sub_1D1E0BDB8(v96);
            v94 = *(v7 + 2);
            if (v94 <= 1)
            {
              goto LABEL_3;
            }
          }

          v101 = &v7[16 * v94 + 32];
          v102 = *(v101 - 64);
          v103 = *(v101 - 56);
          v107 = __OFSUB__(v103, v102);
          v104 = v103 - v102;
          if (v107)
          {
            goto LABEL_197;
          }

          v106 = *(v101 - 48);
          v105 = *(v101 - 40);
          v107 = __OFSUB__(v105, v106);
          v99 = v105 - v106;
          v100 = v107;
          if (v107)
          {
            goto LABEL_198;
          }

          v108 = &v7[16 * v94];
          v110 = *v108;
          v109 = *(v108 + 1);
          v107 = __OFSUB__(v109, v110);
          v111 = v109 - v110;
          if (v107)
          {
            goto LABEL_200;
          }

          v107 = __OFADD__(v99, v111);
          v112 = v99 + v111;
          if (v107)
          {
            goto LABEL_203;
          }

          if (v112 >= v104)
          {
            v130 = &v7[16 * v96 + 32];
            v132 = *v130;
            v131 = *(v130 + 1);
            v107 = __OFSUB__(v131, v132);
            v133 = v131 - v132;
            if (v107)
            {
              goto LABEL_209;
            }

            if (v99 < v133)
            {
              v96 = v94 - 2;
            }

            goto LABEL_171;
          }

          goto LABEL_150;
        }

        goto LABEL_210;
      }

      goto LABEL_46;
    }

LABEL_125:
    if (!v41)
    {
      break;
    }

    v88 = (v41 + 32 * v84);
    v89 = *(v88 + 2);
    v42 = *(v88 + 3);
    v90 = *v88;
    v91 = v153[1];
    *v88 = *v153;
    v88[1] = v91;
    *v153 = v90;
    *(v153 + 2) = v89;
    *(v153 + 3) = v42;
    v43 = v44;
    if (v44 == v8)
    {
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_217:
  __break(1u);
LABEL_218:
  __break(1u);
LABEL_219:
  __break(1u);
LABEL_220:
  __break(1u);
LABEL_221:
  __break(1u);
  return result;
}

uint64_t sub_1D1934C4C(uint64_t result, uint64_t a2, uint64_t *a3, int64_t a4)
{
  v4 = a3;
  v120 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_226:
    v6 = *v120;
    if (!*v120)
    {
      goto LABEL_264;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_228:
      v128 = v7;
      v114 = *(v7 + 2);
      if (v114 >= 2)
      {
        while (*v4)
        {
          v115 = *&v7[16 * v114];
          v116 = *&v7[16 * v114 + 24];
          sub_1D1935F8C((*v4 + v115), (*v4 + *&v7[16 * v114 + 16]), (*v4 + v116), v6);
          if (v125)
          {
          }

          if (v116 < v115)
          {
            goto LABEL_251;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v7 = sub_1D1E0BE44(v7);
          }

          if (v114 - 2 >= *(v7 + 2))
          {
            goto LABEL_252;
          }

          v117 = &v7[16 * v114];
          *v117 = v115;
          *(v117 + 1) = v116;
          v128 = v7;
          result = sub_1D1E0BDB8(v114 - 1);
          v7 = v128;
          v114 = *(v128 + 2);
          if (v114 <= 1)
          {
          }
        }

        goto LABEL_262;
      }
    }

LABEL_258:
    result = sub_1D1E0BE44(v7);
    v7 = result;
    goto LABEL_228;
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  while (2)
  {
    v8 = v6++;
    if (v6 >= v5)
    {
      goto LABEL_91;
    }

    v123 = *v4;
    v9 = *(*v4 + v8);
    v127[0] = v6[*v4];
    v10 = _s13HomeDataModel21StaticRVCClusterGroupV16localizedNameFor3tagSSAA22ModeClusterSemanticTagO_tFZ_0(v127);
    v12 = v11;
    v126 = v9;
    if (v10 == _s13HomeDataModel21StaticRVCClusterGroupV16localizedNameFor3tagSSAA22ModeClusterSemanticTagO_tFZ_0(&v126) && v12 == v13)
    {
      v14 = 0;
    }

    else
    {
      v14 = sub_1D1E6904C();
    }

    v6 = (v8 + 2);
    if (v8 + 2 >= v5)
    {
LABEL_81:
      if (v14)
      {
        goto LABEL_82;
      }

      goto LABEL_91;
    }

    while (1)
    {
      v16 = v6[v123];
      v17 = v6[v123 - 1];
      if (v16 >> 6)
      {
        if (v16 >> 6 == 1)
        {
          v18 = 0;
          v19 = 0xE000000000000000;
          v20 = v17 >> 6;
          if (v17 >> 6)
          {
            goto LABEL_64;
          }

          goto LABEL_16;
        }

        v25 = v16 & 0x3F;
        if (v25 <= 1)
        {
          if (v25)
          {
            v23 = 0xD000000000000018;
            v24 = "HFVacuumCleanMode_Mop";
          }

          else
          {
            v23 = 0xD00000000000001BLL;
            v24 = "HFVacuumCleanMode_Vacuum";
          }

          goto LABEL_59;
        }

        if (v25 != 2)
        {
          v23 = 0xD00000000000001FLL;
          v24 = "HFVacuumCleanMode_Auto";
          goto LABEL_59;
        }

        v26 = "HFVacuumCleanMode_VacuumThenMop";
      }

      else
      {
        if (v6[v123] <= 4u)
        {
          if (v6[v123] <= 1u)
          {
            if (v6[v123])
            {
              v23 = 0xD000000000000017;
              v24 = "HFVacuumCleanMode_Quiet";
            }

            else
            {
              v23 = 0xD000000000000016;
              v24 = "HFVacuumCleanMode_Quick";
            }
          }

          else if (v16 == 2)
          {
            v23 = 0xD000000000000017;
            v24 = "HFVacuumCleanMode_LowNoise";
          }

          else if (v16 == 3)
          {
            v23 = 0xD00000000000001ALL;
            v24 = "HFVacuumCleanMode_LowEnergy";
          }

          else
          {
            v23 = 0xD00000000000001BLL;
            v24 = "HFVacuumCleanMode_Vacation";
          }

          goto LABEL_59;
        }

        if (v6[v123] <= 6u)
        {
          if (v16 == 5)
          {
            v23 = 0xD00000000000001ALL;
            v24 = "HFVacuumCleanMode_Min";
            goto LABEL_59;
          }

          v26 = "HFVacuumCleanMode_Max";
        }

        else if (v16 == 7)
        {
          v26 = "HFVacuumCleanMode_Night";
        }

        else
        {
          if (v16 == 8)
          {
            v23 = 0xD000000000000017;
            v24 = "HFVacuumCleanMode_Day";
LABEL_59:
            v28 = v24 | 0x8000000000000000;
            goto LABEL_63;
          }

          v26 = "SecondaryTag(_:existingTags:)";
        }
      }

      v28 = v26 | 0x8000000000000000;
      v23 = 0xD000000000000015;
LABEL_63:
      v18 = static String.hfLocalized(_:)(v23, v28);
      v19 = v29;
      v20 = v17 >> 6;
      if (v17 >> 6)
      {
LABEL_64:
        if (v20 == 1)
        {
          v30 = 0xE000000000000000;
          if (v18)
          {
            goto LABEL_11;
          }

          goto LABEL_77;
        }

        if ((v17 & 0x3Fu) <= 1)
        {
          if ((v17 & 0x3F) != 0)
          {
            v21 = 0xD000000000000018;
            v22 = "HFVacuumCleanMode_Mop";
          }

          else
          {
            v21 = 0xD00000000000001BLL;
            v22 = "HFVacuumCleanMode_Vacuum";
          }

          goto LABEL_75;
        }

        if ((v17 & 0x3F) == 2)
        {
          v27 = "HFVacuumCleanMode_VacuumThenMop";
          goto LABEL_72;
        }

        v21 = 0xD00000000000001FLL;
        v22 = "HFVacuumCleanMode_Auto";
        goto LABEL_75;
      }

LABEL_16:
      if (v17 <= 4)
      {
        if (v17 <= 1)
        {
          if (v17)
          {
            v21 = 0xD000000000000017;
            v22 = "HFVacuumCleanMode_Quiet";
          }

          else
          {
            v21 = 0xD000000000000016;
            v22 = "HFVacuumCleanMode_Quick";
          }
        }

        else if (v17 == 2)
        {
          v21 = 0xD000000000000017;
          v22 = "HFVacuumCleanMode_LowNoise";
        }

        else if (v17 == 3)
        {
          v21 = 0xD00000000000001ALL;
          v22 = "HFVacuumCleanMode_LowEnergy";
        }

        else
        {
          v21 = 0xD00000000000001BLL;
          v22 = "HFVacuumCleanMode_Vacation";
        }

        goto LABEL_75;
      }

      if (v17 <= 6)
      {
        if (v17 == 5)
        {
          v21 = 0xD00000000000001ALL;
          v22 = "HFVacuumCleanMode_Min";
          goto LABEL_75;
        }

        v27 = "HFVacuumCleanMode_Max";
LABEL_72:
        v31 = v27 | 0x8000000000000000;
        v21 = 0xD000000000000015;
        goto LABEL_76;
      }

      if (v17 == 7)
      {
        v27 = "HFVacuumCleanMode_Night";
        goto LABEL_72;
      }

      if (v17 != 8)
      {
        v27 = "SecondaryTag(_:existingTags:)";
        goto LABEL_72;
      }

      v21 = 0xD000000000000017;
      v22 = "HFVacuumCleanMode_Day";
LABEL_75:
      v31 = v22 | 0x8000000000000000;
LABEL_76:
      v32 = static String.hfLocalized(_:)(v21, v31);
      v30 = v33;
      if (v18 != v32)
      {
        goto LABEL_11;
      }

LABEL_77:
      if (v19 == v30)
      {

        if (v14)
        {
          v4 = a3;
          goto LABEL_82;
        }

        goto LABEL_12;
      }

LABEL_11:
      v15 = sub_1D1E6904C();

      if ((v14 ^ v15))
      {
        break;
      }

LABEL_12:
      ++v6;
      v4 = a3;
      if (v5 == v6)
      {
        v6 = v5;
        goto LABEL_81;
      }
    }

    v4 = a3;
    if ((v14 & 1) == 0)
    {
      goto LABEL_91;
    }

LABEL_82:
    if (v6 < v8)
    {
      goto LABEL_255;
    }

    if (v8 < v6)
    {
      v34 = v6 - 1;
      v35 = v8;
      do
      {
        if (v35 != v34)
        {
          v37 = *v4;
          if (!*v4)
          {
            goto LABEL_261;
          }

          v38 = v35[v37];
          v35[v37] = v34[v37];
          v34[v37] = v38;
        }
      }

      while (++v35 < v34--);
    }

LABEL_91:
    v39 = v4[1];
    if (v6 >= v39)
    {
      goto LABEL_174;
    }

    if (__OFSUB__(v6, v8))
    {
      goto LABEL_254;
    }

    if (&v6[-v8] >= a4)
    {
LABEL_174:
      if (v6 < v8)
      {
        goto LABEL_253;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1D177D070(0, *(v7 + 2) + 1, 1, v7);
        v7 = result;
      }

      v68 = *(v7 + 2);
      v67 = *(v7 + 3);
      v69 = v68 + 1;
      if (v68 >= v67 >> 1)
      {
        result = sub_1D177D070((v67 > 1), v68 + 1, 1, v7);
        v7 = result;
      }

      *(v7 + 2) = v69;
      v70 = &v7[16 * v68];
      *(v70 + 4) = v8;
      *(v70 + 5) = v6;
      v71 = *v120;
      if (!*v120)
      {
        goto LABEL_263;
      }

      if (!v68)
      {
LABEL_3:
        v5 = v4[1];
        if (v6 >= v5)
        {
          goto LABEL_226;
        }

        continue;
      }

      while (1)
      {
        v72 = v69 - 1;
        if (v69 >= 4)
        {
          break;
        }

        if (v69 == 3)
        {
          v73 = *(v7 + 4);
          v74 = *(v7 + 5);
          v83 = __OFSUB__(v74, v73);
          v75 = v74 - v73;
          v76 = v83;
LABEL_194:
          if (v76)
          {
            goto LABEL_242;
          }

          v89 = &v7[16 * v69];
          v91 = *v89;
          v90 = *(v89 + 1);
          v92 = __OFSUB__(v90, v91);
          v93 = v90 - v91;
          v94 = v92;
          if (v92)
          {
            goto LABEL_245;
          }

          v95 = &v7[16 * v72 + 32];
          v97 = *v95;
          v96 = *(v95 + 1);
          v83 = __OFSUB__(v96, v97);
          v98 = v96 - v97;
          if (v83)
          {
            goto LABEL_248;
          }

          if (__OFADD__(v93, v98))
          {
            goto LABEL_249;
          }

          if (v93 + v98 >= v75)
          {
            if (v75 < v98)
            {
              v72 = v69 - 2;
            }

            goto LABEL_215;
          }

          goto LABEL_208;
        }

        v99 = &v7[16 * v69];
        v101 = *v99;
        v100 = *(v99 + 1);
        v83 = __OFSUB__(v100, v101);
        v93 = v100 - v101;
        v94 = v83;
LABEL_208:
        if (v94)
        {
          goto LABEL_244;
        }

        v102 = &v7[16 * v72];
        v104 = *(v102 + 4);
        v103 = *(v102 + 5);
        v83 = __OFSUB__(v103, v104);
        v105 = v103 - v104;
        if (v83)
        {
          goto LABEL_247;
        }

        if (v105 < v93)
        {
          goto LABEL_3;
        }

LABEL_215:
        v110 = v72 - 1;
        if (v72 - 1 >= v69)
        {
          __break(1u);
LABEL_238:
          __break(1u);
LABEL_239:
          __break(1u);
LABEL_240:
          __break(1u);
LABEL_241:
          __break(1u);
LABEL_242:
          __break(1u);
LABEL_243:
          __break(1u);
LABEL_244:
          __break(1u);
LABEL_245:
          __break(1u);
LABEL_246:
          __break(1u);
LABEL_247:
          __break(1u);
LABEL_248:
          __break(1u);
LABEL_249:
          __break(1u);
LABEL_250:
          __break(1u);
LABEL_251:
          __break(1u);
LABEL_252:
          __break(1u);
LABEL_253:
          __break(1u);
LABEL_254:
          __break(1u);
LABEL_255:
          __break(1u);
LABEL_256:
          __break(1u);
          goto LABEL_257;
        }

        if (!*v4)
        {
          goto LABEL_260;
        }

        v111 = v6;
        v112 = *&v7[16 * v110 + 32];
        v6 = *&v7[16 * v72 + 40];
        sub_1D1935F8C((*v4 + v112), (*v4 + *&v7[16 * v72 + 32]), &v6[*v4], v71);
        if (v125)
        {
        }

        if (v6 < v112)
        {
          goto LABEL_238;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_1D1E0BE44(v7);
        }

        if (v110 >= *(v7 + 2))
        {
          goto LABEL_239;
        }

        v113 = &v7[16 * v110];
        *(v113 + 4) = v112;
        *(v113 + 5) = v6;
        v128 = v7;
        result = sub_1D1E0BDB8(v72);
        v7 = v128;
        v69 = *(v128 + 2);
        v6 = v111;
        if (v69 <= 1)
        {
          goto LABEL_3;
        }
      }

      v77 = &v7[16 * v69 + 32];
      v78 = *(v77 - 64);
      v79 = *(v77 - 56);
      v83 = __OFSUB__(v79, v78);
      v80 = v79 - v78;
      if (v83)
      {
        goto LABEL_240;
      }

      v82 = *(v77 - 48);
      v81 = *(v77 - 40);
      v83 = __OFSUB__(v81, v82);
      v75 = v81 - v82;
      v76 = v83;
      if (v83)
      {
        goto LABEL_241;
      }

      v84 = &v7[16 * v69];
      v86 = *v84;
      v85 = *(v84 + 1);
      v83 = __OFSUB__(v85, v86);
      v87 = v85 - v86;
      if (v83)
      {
        goto LABEL_243;
      }

      v83 = __OFADD__(v75, v87);
      v88 = v75 + v87;
      if (v83)
      {
        goto LABEL_246;
      }

      if (v88 >= v80)
      {
        v106 = &v7[16 * v72 + 32];
        v108 = *v106;
        v107 = *(v106 + 1);
        v83 = __OFSUB__(v107, v108);
        v109 = v107 - v108;
        if (v83)
        {
          goto LABEL_250;
        }

        if (v75 < v109)
        {
          v72 = v69 - 2;
        }

        goto LABEL_215;
      }

      goto LABEL_194;
    }

    break;
  }

  v40 = (v8 + a4);
  if (__OFADD__(v8, a4))
  {
    goto LABEL_256;
  }

  if (v40 >= v39)
  {
    v40 = v4[1];
  }

  if (v40 < v8)
  {
LABEL_257:
    __break(1u);
    goto LABEL_258;
  }

  if (v6 == v40)
  {
    goto LABEL_174;
  }

  v41 = *v4;
  v42 = v6;
  v43 = &v6[v41];
  v118 = v8;
  v44 = v8 - v42;
  v121 = v40;
  while (2)
  {
    v124 = v42;
    v45 = v42[v41];
    v46 = v44;
    v47 = v43;
LABEL_103:
    v48 = *(v47 - 1);
    if (!(v45 >> 6))
    {
      if (v45 <= 4u)
      {
        if (v45 <= 1u)
        {
          if (v45)
          {
            v54 = 0xD000000000000017;
            v55 = "HFVacuumCleanMode_Quiet";
          }

          else
          {
            v54 = 0xD000000000000016;
            v55 = "HFVacuumCleanMode_Quick";
          }
        }

        else if (v45 == 2)
        {
          v54 = 0xD000000000000017;
          v55 = "HFVacuumCleanMode_LowNoise";
        }

        else if (v45 == 3)
        {
          v54 = 0xD00000000000001ALL;
          v55 = "HFVacuumCleanMode_LowEnergy";
        }

        else
        {
          v54 = 0xD00000000000001BLL;
          v55 = "HFVacuumCleanMode_Vacation";
        }

        goto LABEL_149;
      }

      if (v45 <= 6u)
      {
        if (v45 != 5)
        {
          v57 = "HFVacuumCleanMode_Max";
          goto LABEL_152;
        }

        v54 = 0xD00000000000001ALL;
        v55 = "HFVacuumCleanMode_Min";
      }

      else
      {
        if (v45 == 7)
        {
          v57 = "HFVacuumCleanMode_Night";
          goto LABEL_152;
        }

        if (v45 != 8)
        {
          v57 = "SecondaryTag(_:existingTags:)";
          goto LABEL_152;
        }

        v54 = 0xD000000000000017;
        v55 = "HFVacuumCleanMode_Day";
      }

LABEL_149:
      v59 = v55 | 0x8000000000000000;
LABEL_153:
      v49 = static String.hfLocalized(_:)(v54, v59);
      v50 = v60;
      v51 = v48 >> 6;
      if (v48 >> 6)
      {
        goto LABEL_154;
      }

LABEL_106:
      if (v48 <= 4)
      {
        if (v48 <= 1)
        {
          if (v48)
          {
            v52 = 0xD000000000000017;
            v53 = "HFVacuumCleanMode_Quiet";
          }

          else
          {
            v52 = 0xD000000000000016;
            v53 = "HFVacuumCleanMode_Quick";
          }
        }

        else if (v48 == 2)
        {
          v52 = 0xD000000000000017;
          v53 = "HFVacuumCleanMode_LowNoise";
        }

        else if (v48 == 3)
        {
          v52 = 0xD00000000000001ALL;
          v53 = "HFVacuumCleanMode_LowEnergy";
        }

        else
        {
          v52 = 0xD00000000000001BLL;
          v53 = "HFVacuumCleanMode_Vacation";
        }

        goto LABEL_165;
      }

      if (v48 <= 6)
      {
        if (v48 == 5)
        {
          v52 = 0xD00000000000001ALL;
          v53 = "HFVacuumCleanMode_Min";
          goto LABEL_165;
        }

        v58 = "HFVacuumCleanMode_Max";
      }

      else if (v48 == 7)
      {
        v58 = "HFVacuumCleanMode_Night";
      }

      else
      {
        if (v48 == 8)
        {
          v52 = 0xD000000000000017;
          v53 = "HFVacuumCleanMode_Day";
          goto LABEL_165;
        }

        v58 = "SecondaryTag(_:existingTags:)";
      }

      goto LABEL_162;
    }

    if (v45 >> 6 != 1)
    {
      v56 = v45 & 0x3F;
      if (v56 <= 1)
      {
        if (v56)
        {
          v54 = 0xD000000000000018;
          v55 = "HFVacuumCleanMode_Mop";
        }

        else
        {
          v54 = 0xD00000000000001BLL;
          v55 = "HFVacuumCleanMode_Vacuum";
        }

        goto LABEL_149;
      }

      if (v56 == 2)
      {
        v57 = "HFVacuumCleanMode_VacuumThenMop";
LABEL_152:
        v59 = v57 | 0x8000000000000000;
        v54 = 0xD000000000000015;
        goto LABEL_153;
      }

      v54 = 0xD00000000000001FLL;
      v55 = "HFVacuumCleanMode_Auto";
      goto LABEL_149;
    }

    v49 = 0;
    v50 = 0xE000000000000000;
    v51 = v48 >> 6;
    if (!(v48 >> 6))
    {
      goto LABEL_106;
    }

LABEL_154:
    if (v51 == 1)
    {
      v61 = 0xE000000000000000;
      if (v49)
      {
        break;
      }

      goto LABEL_167;
    }

    if ((v48 & 0x3Fu) > 1)
    {
      if ((v48 & 0x3F) != 2)
      {
        v52 = 0xD00000000000001FLL;
        v53 = "HFVacuumCleanMode_Auto";
        goto LABEL_165;
      }

      v58 = "HFVacuumCleanMode_VacuumThenMop";
LABEL_162:
      v62 = v58 | 0x8000000000000000;
      v52 = 0xD000000000000015;
      goto LABEL_166;
    }

    if ((v48 & 0x3F) != 0)
    {
      v52 = 0xD000000000000018;
      v53 = "HFVacuumCleanMode_Mop";
    }

    else
    {
      v52 = 0xD00000000000001BLL;
      v53 = "HFVacuumCleanMode_Vacuum";
    }

LABEL_165:
    v62 = v53 | 0x8000000000000000;
LABEL_166:
    v63 = static String.hfLocalized(_:)(v52, v62);
    v61 = v64;
    if (v49 != v63)
    {
      break;
    }

LABEL_167:
    if (v50 == v61)
    {

LABEL_101:
      v42 = v124 + 1;
      ++v43;
      --v44;
      if (v124 + 1 == v121)
      {
        v6 = v121;
        v4 = a3;
        v8 = v118;
        goto LABEL_174;
      }

      continue;
    }

    break;
  }

  v65 = sub_1D1E6904C();

  if ((v65 & 1) == 0)
  {
    goto LABEL_101;
  }

  if (v41)
  {
    v45 = *v47;
    *v47 = *(v47 - 1);
    *--v47 = v45;
    if (__CFADD__(v46++, 1))
    {
      goto LABEL_101;
    }

    goto LABEL_103;
  }

  __break(1u);
LABEL_260:
  __break(1u);
LABEL_261:
  __break(1u);
LABEL_262:
  __break(1u);
LABEL_263:
  __break(1u);
LABEL_264:
  __break(1u);
  return result;
}

uint64_t sub_1D1935960(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 31;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 5;
  v11 = a3 - __src;
  v12 = a3 - __src + 31;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 5;
  if (v10 < v12 >> 5)
  {
    if (a4 != __dst || &__dst[32 * v10] <= a4)
    {
      memmove(a4, __dst, 32 * v10);
    }

    v14 = &v4[32 * v10];
    if (v8 < 32)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (*(*(v6 + 3) + 16) < *(*(v4 + 3) + 16))
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 32;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 32;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 32;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    v17 = *(v15 + 1);
    *v7 = *v15;
    *(v7 + 1) = v17;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[32 * v13] <= a4)
  {
    memmove(a4, __src, 32 * v13);
  }

  v14 = &v4[32 * v13];
  if (v11 >= 32 && v6 > v7)
  {
LABEL_24:
    v5 -= 32;
    do
    {
      v18 = v5 + 32;
      if (*(*(v14 - 1) + 16) < *(*(v6 - 1) + 16))
      {
        v21 = v6 - 32;
        if (v18 != v6)
        {
          v22 = *(v6 - 1);
          *v5 = *v21;
          *(v5 + 1) = v22;
        }

        if (v14 <= v4 || (v6 -= 32, v21 <= v7))
        {
          v6 = v21;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v19 = v14 - 32;
      if (v18 != v14)
      {
        v20 = *(v14 - 1);
        *v5 = *v19;
        *(v5 + 1) = v20;
      }

      v5 -= 32;
      v14 -= 32;
    }

    while (v19 > v4);
    v14 = v19;
  }

LABEL_35:
  v23 = v14 - v4 + (v14 - v4 < 0 ? 0x1FuLL : 0);
  if (v6 != v4 || v6 >= &v4[v23 & 0xFFFFFFFFFFFFFFE0])
  {
    memmove(v6, v4, 32 * (v23 >> 5));
  }

  return 1;
}

uint64_t sub_1D1935B74(char *__dst, char *a2, char *a3, char *__src, void *a5)
{
  v5 = __src;
  v6 = a3;
  v7 = __dst;
  v8 = a2 - __dst;
  v9 = a2 - __dst + 31;
  if (a2 - __dst >= 0)
  {
    v9 = a2 - __dst;
  }

  v10 = v9 >> 5;
  v11 = a3 - a2;
  v12 = a3 - a2 + 31;
  if (a3 - a2 >= 0)
  {
    v12 = a3 - a2;
  }

  v13 = v12 >> 5;
  if (v10 < v12 >> 5)
  {
    if (__src != __dst || &__dst[32 * v10] <= __src)
    {
      v14 = a2;
      memmove(__src, __dst, 32 * v10);
      a2 = v14;
    }

    v15 = &v5[32 * v10];
    if (v8 < 32 || a2 >= v6)
    {
LABEL_24:
      a2 = v7;
      goto LABEL_47;
    }

    v42 = &v5[32 * v10];
    while (1)
    {
      v16 = *(a2 + 3);
      v46 = a2;
      v44 = v5;
      v17 = *(v5 + 3);

      v19 = sub_1D1A46BE0(v18, v16);

      v21 = sub_1D1A46BE0(v20, v17);

      if (v19)
      {
        if ((v21 & 1) == 0)
        {

          goto LABEL_18;
        }
      }

      else if (v21)
      {

LABEL_20:
        v24 = v44;
        v5 = v44 + 32;
        a2 = v46;
        if (v7 == v44)
        {
          goto LABEL_22;
        }

LABEL_21:
        v25 = *(v24 + 1);
        *v7 = *v24;
        *(v7 + 1) = v25;
        goto LABEL_22;
      }

      v22 = *(v16 + 16);
      v23 = *(v17 + 16);

      if (v22 >= v23)
      {
        goto LABEL_20;
      }

LABEL_18:
      v24 = v46;
      a2 = v46 + 32;
      v5 = v44;
      if (v7 != v46)
      {
        goto LABEL_21;
      }

LABEL_22:
      v7 += 32;
      v15 = v42;
      if (v5 >= v42 || a2 >= v6)
      {
        goto LABEL_24;
      }
    }
  }

  if (__src != a2 || &a2[32 * v13] <= __src)
  {
    v26 = a2;
    memmove(__src, a2, 32 * v13);
    a2 = v26;
  }

  v15 = &v5[32 * v13];
  if (v11 >= 32 && a2 > v7)
  {
    v45 = v5;
    while (2)
    {
      v6 -= 32;
      v47 = a2;
      while (1)
      {
        v27 = *(v15 - 1);
        v43 = v15;
        v28 = *(a2 - 1);

        v30 = sub_1D1A46BE0(v29, v27);

        v32 = sub_1D1A46BE0(v31, v28);

        if (v30)
        {
          break;
        }

        if ((v32 & 1) == 0)
        {
          goto LABEL_38;
        }

LABEL_39:
        v5 = v45;
        v35 = v43 - 32;
        a2 = v47;
        if (v6 + 32 != v43)
        {
          v36 = *(v43 - 1);
          *v6 = *v35;
          *(v6 + 1) = v36;
        }

        v6 -= 32;
        v15 = v43 - 32;
        if (v35 <= v45)
        {
          v15 = v43 - 32;
          goto LABEL_47;
        }
      }

      if ((v32 & 1) == 0)
      {

LABEL_41:
        v37 = v47 - 32;
        v5 = v45;
        if (v6 + 32 != v47)
        {
          v38 = *(v47 - 1);
          *v6 = *v37;
          *(v6 + 1) = v38;
        }

        v15 = v43;
        if (v43 <= v45 || (a2 = v47 - 32, v37 <= v7))
        {
          a2 = v47 - 32;
          goto LABEL_47;
        }

        continue;
      }

      break;
    }

LABEL_38:
    v33 = *(v27 + 16);
    v34 = *(v28 + 16);

    if (v33 < v34)
    {
      goto LABEL_41;
    }

    goto LABEL_39;
  }

LABEL_47:
  v39 = v15 - v5;
  v40 = v15 - v5 + 31;
  if (v39 < 0)
  {
    v39 = v40;
  }

  if (a2 != v5 || a2 >= &v5[v39 & 0xFFFFFFFFFFFFFFE0])
  {
    memmove(a2, v5, 32 * (v39 >> 5));
  }

  return 1;
}

uint64_t sub_1D1935F8C(_BYTE *__dst, _BYTE *__src, _BYTE *a3, _BYTE *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = a3 - __src;
  if (__src - __dst < a3 - __src)
  {
    if (a4 != __dst || a4 >= __src)
    {
      memmove(a4, __dst, v8);
    }

    v10 = &v4[v8];
    if (v8 >= 1 && v6 < v5)
    {
      while (1)
      {
        v11 = *v4;
        v36 = *v6;
        v12 = _s13HomeDataModel21StaticRVCClusterGroupV16localizedNameFor3tagSSAA22ModeClusterSemanticTagO_tFZ_0(&v36);
        v14 = v13;
        v35 = v11;
        if (v12 == _s13HomeDataModel21StaticRVCClusterGroupV16localizedNameFor3tagSSAA22ModeClusterSemanticTagO_tFZ_0(&v35) && v14 == v15)
        {
        }

        else
        {
          v17 = sub_1D1E6904C();

          if (v17)
          {
            v18 = v6 + 1;
            v19 = v6;
            if (v7 >= v6 && v7 < v18)
            {
              goto LABEL_21;
            }

            goto LABEL_20;
          }
        }

        v20 = v4 + 1;
        v19 = v4;
        v18 = v6;
        if (v7 < v4)
        {
          ++v4;
        }

        else
        {
          ++v4;
          if (v7 < v20)
          {
            goto LABEL_21;
          }
        }

LABEL_20:
        *v7 = *v19;
LABEL_21:
        ++v7;
        if (v4 < v10)
        {
          v6 = v18;
          if (v18 < v5)
          {
            continue;
          }
        }

        break;
      }
    }

    v6 = v7;
    if (v7 != v4)
    {
      goto LABEL_54;
    }

LABEL_53:
    if (v6 >= v10)
    {
      goto LABEL_54;
    }

    return 1;
  }

  if (a4 != __src || a4 >= a3)
  {
    memmove(a4, __src, a3 - __src);
  }

  v10 = &v4[v9];
  if (v9 < 1 || v6 <= v7)
  {
LABEL_52:
    if (v6 != v4)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

  v34 = v4;
  do
  {
    v21 = v6 - 1;
    --v5;
    v22 = v10;
    while (1)
    {
      v23 = *--v22;
      v24 = v21;
      v25 = *v21;
      v38 = v23;
      v26 = _s13HomeDataModel21StaticRVCClusterGroupV16localizedNameFor3tagSSAA22ModeClusterSemanticTagO_tFZ_0(&v38);
      v28 = v27;
      v37 = v25;
      if (v26 != _s13HomeDataModel21StaticRVCClusterGroupV16localizedNameFor3tagSSAA22ModeClusterSemanticTagO_tFZ_0(&v37) || v28 != v29)
      {
        break;
      }

LABEL_41:
      v21 = v24;
      if ((v5 + 1) < v10 || v5 >= v10)
      {
        *v5 = *v22;
      }

      --v5;
      v10 = v22;
      v4 = v34;
      if (v22 <= v34)
      {
        v10 = v22;
        goto LABEL_52;
      }
    }

    v31 = sub_1D1E6904C();

    if ((v31 & 1) == 0)
    {
      goto LABEL_41;
    }

    v32 = v24;
    if (v5 + 1 < v6 || v5 >= v6)
    {
      *v5 = *v24;
    }

    v4 = v34;
    if (v10 <= v34)
    {
      break;
    }

    v6 = v32;
  }

  while (v32 > v7);
  v6 = v32;
  if (v32 == v34)
  {
    goto LABEL_53;
  }

LABEL_54:
  memmove(v6, v4, v10 - v4);
  return 1;
}

uint64_t sub_1D193628C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6439E0, &qword_1D1E72F60);
  result = sub_1D1E6880C();
  v5 = result;
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
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      sub_1D1E6920C();
      sub_1D1E6924C();
      result = sub_1D1E6926C();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
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
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
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

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1D19364E8(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for StaticCameraProfile(0);
  v31 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647448, &qword_1D1E85628);
  result = sub_1D1E6880C();
  v8 = result;
  if (*(v6 + 16))
  {
    v30 = v1;
    v9 = 0;
    v10 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v31 + 72);
      sub_1D1951AE4(*(v6 + 48) + v20 * (v17 | (v9 << 6)), v5, type metadata accessor for StaticCameraProfile);
      sub_1D1E6920C();
      StaticCameraProfile.hash(into:)(v32);
      result = sub_1D1E6926C();
      v21 = -1 << *(v8 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = sub_1D1951AE4(v5, *(v8 + 48) + v16 * v20, type metadata accessor for StaticCameraProfile);
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v6 + 32);
    if (v28 >= 64)
    {
      bzero((v6 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v28;
    }

    v2 = v30;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
  return result;
}

uint64_t sub_1D19367F0(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for StaticMediaProfile(0);
  v31 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647438, &unk_1D1E8EAE0);
  result = sub_1D1E6880C();
  v8 = result;
  if (*(v6 + 16))
  {
    v30 = v1;
    v9 = 0;
    v10 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v31 + 72);
      sub_1D1951AE4(*(v6 + 48) + v20 * (v17 | (v9 << 6)), v5, type metadata accessor for StaticMediaProfile);
      sub_1D1E6920C();
      StaticMediaProfile.hash(into:)(v32);
      result = sub_1D1E6926C();
      v21 = -1 << *(v8 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = sub_1D1951AE4(v5, *(v8 + 48) + v16 * v20, type metadata accessor for StaticMediaProfile);
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v6 + 32);
    if (v28 >= 64)
    {
      bzero((v6 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v28;
    }

    v2 = v30;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
  return result;
}

uint64_t sub_1D1936AF8(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for StaticMediaSystem(0);
  v31 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647440, &qword_1D1E85620);
  result = sub_1D1E6880C();
  v8 = result;
  if (*(v6 + 16))
  {
    v30 = v1;
    v9 = 0;
    v10 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v31 + 72);
      sub_1D1951AE4(*(v6 + 48) + v20 * (v17 | (v9 << 6)), v5, type metadata accessor for StaticMediaSystem);
      sub_1D1E6920C();
      StaticMediaSystem.hash(into:)(v32);
      result = sub_1D1E6926C();
      v21 = -1 << *(v8 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = sub_1D1951AE4(v5, *(v8 + 48) + v16 * v20, type metadata accessor for StaticMediaSystem);
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v6 + 32);
    if (v28 >= 64)
    {
      bzero((v6 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v28;
    }

    v2 = v30;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
  return result;
}

uint64_t sub_1D1936E00(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for StaticAccessory(0);
  v31 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647450, &qword_1D1E85630);
  result = sub_1D1E6880C();
  v8 = result;
  if (*(v6 + 16))
  {
    v30 = v1;
    v9 = 0;
    v10 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v31 + 72);
      sub_1D1951AE4(*(v6 + 48) + v20 * (v17 | (v9 << 6)), v5, type metadata accessor for StaticAccessory);
      sub_1D1E6920C();
      StaticAccessory.hash(into:)(v32);
      result = sub_1D1E6926C();
      v21 = -1 << *(v8 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = sub_1D1951AE4(v5, *(v8 + 48) + v16 * v20, type metadata accessor for StaticAccessory);
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v6 + 32);
    if (v28 >= 64)
    {
      bzero((v6 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v28;
    }

    v2 = v30;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
  return result;
}

uint64_t sub_1D1937108(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for StaticServiceGroup(0);
  v26 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v25 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647430, &unk_1D1E8EAB0);
  result = sub_1D1E6880C();
  v7 = result;
  if (*(v5 + 16))
  {
    v23 = v1;
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
    v24 = result + 56;
    for (i = v25; v12; ++*(v7 + 16))
    {
      v15 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_12:
      v18 = *(v26 + 72);
      sub_1D1951AE4(*(v5 + 48) + v18 * (v15 | (v8 << 6)), i, type metadata accessor for StaticServiceGroup);
      sub_1D1E6920C();
      StaticServiceGroup.hash(into:)(v27);
      sub_1D1E6926C();
      v19 = v24;
      v20 = sub_1D1E686CC();
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      result = sub_1D1951AE4(i, *(v7 + 48) + v20 * v18, type metadata accessor for StaticServiceGroup);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        return result;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    v21 = 1 << *(v5 + 32);
    if (v21 >= 64)
    {
      bzero((v5 + 56), ((v21 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v21;
    }

    v2 = v23;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_1D19373A4(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for StaticServiceGroup(0);
  v31 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647430, &unk_1D1E8EAB0);
  result = sub_1D1E6880C();
  v8 = result;
  if (*(v6 + 16))
  {
    v30 = v1;
    v9 = 0;
    v10 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v31 + 72);
      sub_1D1951AE4(*(v6 + 48) + v20 * (v17 | (v9 << 6)), v5, type metadata accessor for StaticServiceGroup);
      sub_1D1E6920C();
      StaticServiceGroup.hash(into:)(v32);
      result = sub_1D1E6926C();
      v21 = -1 << *(v8 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = sub_1D1951AE4(v5, *(v8 + 48) + v16 * v20, type metadata accessor for StaticServiceGroup);
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v6 + 32);
    if (v28 >= 64)
    {
      bzero((v6 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v28;
    }

    v2 = v30;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
  return result;
}

uint64_t sub_1D19376AC(uint64_t a1)
{
  v2 = v1;
  v36 = sub_1D1E66A7C();
  v3 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6439F8, &qword_1D1E72F70);
  result = sub_1D1E6880C();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
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
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_1D174A5FC(qword_1EE07DD78, MEMORY[0x1E69695B8]);
      result = sub_1D1E676DC();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
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
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
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

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_1D19379F4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647458, &qword_1D1E85638);
  result = sub_1D1E6880C();
  v5 = result;
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
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_1D1E6920C();
      sub_1D1E678EC();
      result = sub_1D1E6926C();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
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
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
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
  return result;
}

uint64_t sub_1D1937C68(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for Action(0);
  v31 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6474B8, &qword_1D1E85690);
  result = sub_1D1E6880C();
  v8 = result;
  if (*(v6 + 16))
  {
    v30 = v1;
    v9 = 0;
    v10 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v31 + 72);
      sub_1D1951AE4(*(v6 + 48) + v20 * (v17 | (v9 << 6)), v5, type metadata accessor for Action);
      sub_1D1E6920C();
      Action.hash(into:)(v32);
      result = sub_1D1E6926C();
      v21 = -1 << *(v8 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = sub_1D1951AE4(v5, *(v8 + 48) + v16 * v20, type metadata accessor for Action);
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v6 + 32);
    if (v28 >= 64)
    {
      bzero((v6 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v28;
    }

    v2 = v30;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
  return result;
}

uint64_t sub_1D1937F70(uint64_t a1)
{
  v2 = v1;
  v64 = type metadata accessor for Event.CharacteristicEvent(0);
  MEMORY[0x1EEE9AC00](v64);
  v66 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Event.TimeEvent(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v63 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Event(0);
  v69 = *(v6 - 8);
  v70 = v6;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = (&v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v59 - v10;
  v12 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6474C0, &qword_1D1E85698);
  result = sub_1D1E6880C();
  v14 = result;
  if (*(v12 + 16))
  {
    v61 = v1;
    v15 = 0;
    v16 = (v12 + 56);
    v17 = 1 << *(v12 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v12 + 56);
    v20 = (v17 + 63) >> 6;
    v21 = result + 56;
    v65 = v12;
    v67 = v11;
    v68 = v9;
    while (1)
    {
      if (!v19)
      {
        v24 = v15;
        while (1)
        {
          v15 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
            __break(1u);
            goto LABEL_59;
          }

          if (v15 >= v20)
          {
            break;
          }

          v25 = v16[v15];
          ++v24;
          if (v25)
          {
            v23 = __clz(__rbit64(v25));
            v19 = (v25 - 1) & v25;
            goto LABEL_15;
          }
        }

        v58 = 1 << *(v12 + 32);
        if (v58 >= 64)
        {
          bzero(v16, ((v58 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v16 = -1 << v58;
        }

        v2 = v61;
        *(v12 + 16) = 0;
        goto LABEL_57;
      }

      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_15:
      v26 = *(v12 + 48);
      v71 = *(v69 + 72);
      sub_1D1951AE4(v26 + v71 * (v23 | (v15 << 6)), v11, type metadata accessor for Event);
      sub_1D1E6920C();
      sub_1D1951A7C(v11, v9, type metadata accessor for Event);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (!EnumCaseMultiPayload)
      {
        break;
      }

      if (EnumCaseMultiPayload != 1)
      {
        v40 = v9;
        v41 = v66;
        sub_1D1951AE4(v40, v66, type metadata accessor for Event.CharacteristicEvent);
        MEMORY[0x1D3892850](2);
        sub_1D1E66A7C();
        sub_1D174A5FC(qword_1EE07DD78, MEMORY[0x1E69695B8]);
        sub_1D1E676EC();
        v42 = v64;
        LOBYTE(v72) = *(v41 + *(v64 + 20));
        CharacteristicKind.rawValue.getter();
        sub_1D1E678EC();

        v43 = v41 + *(v42 + 24);
        v45 = *v43;
        v44 = *(v43 + 8);
        v46 = *(v43 + 16);
        v47 = v46 >> 6;
        if (v46 >> 6)
        {
          LOBYTE(v46) = v46 & 0x3F;
          if (v47 == 1)
          {
            v48 = 1;
          }

          else
          {
            v48 = 2;
          }
        }

        else
        {
          v48 = 0;
        }

        MEMORY[0x1D3892850](v48);
        v72 = v45;
        v73 = v44;
        v74 = v46;
        CharacteristicKind.Value.hash(into:)(v75);
        sub_1D1951B4C(v66, type metadata accessor for Event.CharacteristicEvent);
        v12 = v65;
LABEL_42:
        v9 = v68;
        goto LABEL_43;
      }

      v28 = *(v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643078, &qword_1D1E71148) + 48));
      v29 = v9;
      v30 = v63;
      sub_1D1951AE4(v29, v63, type metadata accessor for Event.TimeEvent);
      MEMORY[0x1D3892850](1);
      Event.TimeEvent.hash(into:)(v75);
      MEMORY[0x1D3892850](v28);
      v31 = v30;
      v9 = v68;
      sub_1D1951B4C(v31, type metadata accessor for Event.TimeEvent);
LABEL_43:
      v11 = v67;
LABEL_44:
      result = sub_1D1E6926C();
      v51 = -1 << *(v14 + 32);
      v52 = result & ~v51;
      v53 = v52 >> 6;
      if (((-1 << v52) & ~*(v21 + 8 * (v52 >> 6))) == 0)
      {
        v54 = 0;
        v55 = (63 - v51) >> 6;
        while (++v53 != v55 || (v54 & 1) == 0)
        {
          v56 = v53 == v55;
          if (v53 == v55)
          {
            v53 = 0;
          }

          v54 |= v56;
          v57 = *(v21 + 8 * v53);
          if (v57 != -1)
          {
            v22 = __clz(__rbit64(~v57)) + (v53 << 6);
            goto LABEL_7;
          }
        }

LABEL_59:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v52) & ~*(v21 + 8 * (v52 >> 6)))) | v52 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = sub_1D1951AE4(v11, *(v14 + 48) + v22 * v71, type metadata accessor for Event);
      ++*(v14 + 16);
    }

    v62 = v19;
    v32 = v9;
    v33 = *v9;
    v34 = v9[1];
    v35 = v32[2];
    v36 = *(v32 + 24);
    MEMORY[0x1D3892850](0);
    if (v36 == 1)
    {
      MEMORY[0x1D3892850](1);
      if ((v33 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v37 = v33;
      }

      else
      {
        v37 = 0;
      }

      MEMORY[0x1D3892890](v37);
      if ((v34 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v38 = v34;
      }

      else
      {
        v38 = 0;
      }

      MEMORY[0x1D3892890](v38);
      if ((v35 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v39 = v35;
      }

      else
      {
        v39 = 0;
      }

      MEMORY[0x1D3892890](v39);
      goto LABEL_39;
    }

    v60 = v35;
    MEMORY[0x1D3892850](0);
    MEMORY[0x1D3892850](v33);
    if (!v34)
    {
      MEMORY[0x1D3892850](0);
      sub_1D1771BD4(v33, 0, v60, 0);
LABEL_39:
      v12 = v65;
      v11 = v67;
      v9 = v68;
      v19 = v62;
      goto LABEL_44;
    }

    v12 = v65;
    v19 = v62;
    if (v34 == 1)
    {
      MEMORY[0x1D3892850](1);
      v49 = v33;
      v50 = 1;
    }

    else
    {
      MEMORY[0x1D3892850](2);
      sub_1D176D4E8(v75, v34);
      v49 = v33;
      v50 = v34;
    }

    sub_1D1771BD4(v49, v50, v60, 0);
    goto LABEL_42;
  }

LABEL_57:

  *v2 = v14;
  return result;
}

uint64_t sub_1D1938654(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for StaticZone(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647420, &qword_1D1E85610);
  result = sub_1D1E6880C();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 56);
    v12 = 1 << *(v7 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v7 + 56);
    for (i = (v12 + 63) >> 6; v14; result = sub_1D176C7A8(v6, v9))
    {
      v16 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_11:
      sub_1D1951AE4(*(v7 + 48) + *(v4 + 72) * (v16 | (v10 << 6)), v6, type metadata accessor for StaticZone);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        return result;
      }

      if (v10 >= i)
      {
        break;
      }

      v18 = v11[v10];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_11;
      }
    }

    v19 = 1 << *(v7 + 32);
    if (v19 >= 64)
    {
      bzero((v7 + 56), ((v19 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v19;
    }

    *(v7 + 16) = 0;
  }

  *v2 = v9;
  return result;
}

uint64_t sub_1D193885C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6439B8, &qword_1D1E72F48);
  result = sub_1D1E6880C();
  v5 = result;
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
    v12 = result + 56;
    while (1)
    {
      if (!v10)
      {
        v15 = v6;
        while (1)
        {
          v6 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            __break(1u);
            goto LABEL_37;
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
        goto LABEL_35;
      }

      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_1D1E6920C();
      if (v17 == 2)
      {
        break;
      }

      if (v17 == 1)
      {
        v18 = 0;
LABEL_19:
        MEMORY[0x1D3892850](v18);
        goto LABEL_22;
      }

      MEMORY[0x1D3892850](1);
      sub_1D1E6922C();
      if (v17)
      {
        sub_1D176D4E8(v27, v17);
      }

LABEL_22:
      result = sub_1D1E6926C();
      v19 = -1 << *(v5 + 32);
      v20 = result & ~v19;
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

LABEL_37:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v18 = 2;
    goto LABEL_19;
  }

LABEL_35:

  *v2 = v5;
  return result;
}

uint64_t sub_1D1938AF8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_1D1E6880C();
  v7 = result;
  if (*(v5 + 16))
  {
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
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + (v16 | (v8 << 6)));
      sub_1D1E6920C();
      MEMORY[0x1D3892850](v19);
      result = sub_1D1E6926C();
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v19;
      ++*(v7 + 16);
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

    v27 = 1 << *(v5 + 32);
    if (v27 >= 64)
    {
      bzero((v5 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v27;
    }

    v4 = v3;
    *(v5 + 16) = 0;
  }

  *v4 = v7;
  return result;
}

uint64_t sub_1D1938D40(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for WriteInProgressStatusViewModel.ID(0);
  v38 = *(v3 - 8);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v37 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v35 - v6;
  v8 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6473D0, &unk_1D1E8EA80);
  result = sub_1D1E6880C();
  v10 = result;
  if (*(v8 + 16))
  {
    v35 = v1;
    v36 = v8;
    v11 = 0;
    v12 = (v8 + 56);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 56);
    v16 = (v13 + 63) >> 6;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v22 = *(v8 + 48);
      v39 = *(v38 + 72);
      sub_1D1951AE4(v22 + v39 * (v19 | (v11 << 6)), v7, type metadata accessor for WriteInProgressStatusViewModel.ID);
      sub_1D1E6920C();
      v23 = v7;
      v24 = v7;
      v25 = v37;
      sub_1D1951A7C(v24, v37, type metadata accessor for WriteInProgressStatusViewModel.ID);
      MEMORY[0x1D3892850](0);
      v26 = sub_1D1E66A7C();
      sub_1D174A5FC(qword_1EE07DD78, MEMORY[0x1E69695B8]);
      sub_1D1E676EC();
      (*(*(v26 - 8) + 8))(v25, v26);
      result = sub_1D1E6926C();
      v27 = -1 << *(v10 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        v7 = v23;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v17 + 8 * v29);
          if (v33 != -1)
          {
            v18 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
      v7 = v23;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = sub_1D1951AE4(v7, *(v10 + 48) + v18 * v39, type metadata accessor for WriteInProgressStatusViewModel.ID);
      ++*(v10 + 16);
      v8 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    v34 = 1 << *(v8 + 32);
    if (v34 >= 64)
    {
      bzero(v12, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v34;
    }

    v2 = v35;
    *(v8 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_1D193912C(uint64_t a1)
{
  v2 = v1;
  v40 = type metadata accessor for StaticResident(0);
  v36 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6474B0, &qword_1D1E85688);
  result = sub_1D1E6880C();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v1;
    v35 = result;
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
    v14 = result + 56;
    while (1)
    {
      if (!v12)
      {
        v17 = v8;
        while (1)
        {
          v8 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            __break(1u);
            goto LABEL_48;
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
            v38 = (v18 - 1) & v18;
            goto LABEL_15;
          }
        }

        v33 = 1 << *(v5 + 32);
        if (v33 >= 64)
        {
          bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v9 = -1 << v33;
        }

        v2 = v34;
        *(v5 + 16) = 0;
        break;
      }

      v16 = __clz(__rbit64(v12));
      v38 = (v12 - 1) & v12;
LABEL_15:
      v19 = *(v5 + 48);
      v37 = *(v36 + 72);
      sub_1D1951AE4(v19 + v37 * (v16 | (v8 << 6)), v4, type metadata accessor for StaticResident);
      sub_1D1E6920C();
      sub_1D1E66A7C();
      v39 = sub_1D174A5FC(qword_1EE07DD78, MEMORY[0x1E69695B8]);
      sub_1D1E676EC();
      v20 = v40;
      sub_1D1E678EC();
      if (*&v4[*(v20 + 24) + 8])
      {
        sub_1D1E6922C();
        sub_1D1E678EC();
      }

      else
      {
        sub_1D1E6922C();
      }

      v21 = v40;
      sub_1D1771CBC();
      sub_1D1771CBC();
      v22 = &v4[*(v21 + 36)];
      v23 = *v22;
      v24 = v22[8];
      if (v24 > 1)
      {
        if (v24 == 2)
        {
          MEMORY[0x1D3892850](5);
          sub_1D1E6922C();
          sub_1D1E6922C();
LABEL_25:
          v7 = v35;
          goto LABEL_33;
        }

        if (v23 > 1)
        {
          if (v23 == 2)
          {
            v25 = 2;
          }

          else
          {
            v25 = 6;
          }
        }

        else
        {
          v25 = v23 != 0;
        }

        MEMORY[0x1D3892850](v25);
        v7 = v35;
      }

      else
      {
        if (v24)
        {
          MEMORY[0x1D3892850](4);
          MEMORY[0x1D3892850](v23);
          goto LABEL_25;
        }

        MEMORY[0x1D3892850](3);
        sub_1D1E6922C();
        if (v23)
        {
          sub_1D176D4E8(v41, v23);
        }

        v7 = v35;
      }

LABEL_33:
      sub_1D1E676EC();
      result = sub_1D1E6926C();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_48:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = sub_1D1951AE4(v4, *(v7 + 48) + v15 * v37, type metadata accessor for StaticResident);
      ++*(v7 + 16);
      v12 = v38;
    }
  }

  *v2 = v7;
  return result;
}

uint64_t sub_1D1939608(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6473C0, &qword_1D1E855D0);
  result = sub_1D1E6880C();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v25 = v2;
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
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 2 * (v14 | (v6 << 6)));
      result = MEMORY[0x1D3892820](*(v5 + 40), v17, 2);
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
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
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
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

    v2 = v25;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1D1939830(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6439D8, &qword_1D1E72F58);
  result = sub_1D1E6880C();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v25 = v2;
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
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 4 * (v14 | (v6 << 6)));
      result = MEMORY[0x1D3892820](*(v5 + 40), v17, 4);
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
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
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 4 * v13) = v17;
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

    v2 = v25;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1D1939A6C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6473C8, &qword_1D1E855D8);
  result = sub_1D1E6880C();
  v5 = result;
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
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 4 * (v14 | (v6 << 6)));
      sub_1D1E6920C();
      sub_1D1E6924C();
      result = sub_1D1E6926C();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
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
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 4 * v13) = v17;
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

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1D1939CBC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6439C8, &qword_1D1E8EB10);
  result = sub_1D1E6880C();
  v5 = result;
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
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      sub_1D1E6920C();
      sub_1D1E6924C();
      result = sub_1D1E6926C();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
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
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
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

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_1D1939F18(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6474A0, &qword_1D1E85678);
  result = sub_1D1E6880C();
  v5 = result;
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
    v22 = result + 56;
    for (i = v3; v10; ++*(v5 + 16))
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_12:
      v15 = (*(v3 + 48) + 32 * (v12 | (v6 << 6)));
      v16 = *v15;
      v17 = v15[1];
      v18 = v15[2];
      v19 = v15[3];
      sub_1D1E6920C();
      MEMORY[0x1D3892850](v16);
      sub_1D1E678EC();
      sub_1D176D34C(v24, v19);
      sub_1D1E6926C();
      result = sub_1D1E686CC();
      *(v22 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v20 = (*(v5 + 48) + 32 * result);
      *v20 = v16;
      v20[1] = v17;
      v3 = i;
      v20[2] = v18;
      v20[3] = v19;
    }

    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        return result;
      }

      if (v6 >= v11)
      {
        break;
      }

      v14 = v7[v6];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    v21 = 1 << *(v3 + 32);
    if (v21 >= 64)
    {
      bzero(v7, ((v21 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v21;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1D193A134(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647488, &qword_1D1E85660);
  result = sub_1D1E6880C();
  v5 = result;
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
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      sub_1D1E6920C();
      sub_1D1E6923C();
      sub_1D1E678EC();
      result = sub_1D1E6926C();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
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
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
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

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1D193A3F0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647498, &qword_1D1E85670);
  result = sub_1D1E6880C();
  v5 = result;
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
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 2 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_1D1E6920C();
      sub_1D1E6922C();
      sub_1D1E678EC();
      result = sub_1D1E6926C();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
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
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 2 * v13);
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
  return result;
}

uint64_t sub_1D193A6B8(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void *))
{
  v5 = v4;
  v6 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_1D1E6880C();
  v8 = result;
  if (*(v6 + 16))
  {
    v9 = 0;
    v10 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(*(v6 + 48) + (v17 | (v9 << 6)));
      v21 = sub_1D1E6920C();
      a4(v21);
      sub_1D1E678EC();

      result = sub_1D1E6926C();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v20;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v6 + 32);
    if (v29 >= 64)
    {
      bzero((v6 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    v5 = v4;
    *(v6 + 16) = 0;
  }

  *v5 = v8;
  return result;
}

uint64_t sub_1D193A92C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_1D1E6880C();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    v27 = v4;
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
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v8 << 6)));
      result = sub_1D1E691FC();
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v19;
      ++*(v7 + 16);
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

    if (v10 >= 64)
    {
      bzero((v5 + 56), 8 * v13);
    }

    else
    {
      *v9 = -1 << v10;
    }

    v4 = v27;
    *(v5 + 16) = 0;
  }

  *v4 = v7;
  return result;
}

uint64_t sub_1D193AB48(uint64_t a1)
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643018, &qword_1D1E9AC00);
  v36 = *(v3 - 8);
  v37 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = (&v34 - v4);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6473F0, &unk_1D1E8EA90);
  result = sub_1D1E6880C();
  v8 = result;
  if (*(v6 + 16))
  {
    v34 = v1;
    v35 = v6;
    v9 = 0;
    v10 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48);
      v38 = *(v36 + 72);
      sub_1D1741A90(v20 + v38 * (v17 | (v9 << 6)), v5, &qword_1EC643018, &qword_1D1E9AC00);
      sub_1D1E6920C();
      v21 = v5[3];
      v22 = v5[4];
      __swift_project_boxed_opaque_existential_1(v5, v21);
      (*(v22 + 8))(v21, v22);
      sub_1D1E678EC();

      v23 = v5[3];
      v24 = v5[4];
      __swift_project_boxed_opaque_existential_1(v5, v23);
      (*(v24 + 16))(v23, v24);
      sub_1D1E678EC();

      v25 = v37;
      sub_1D1E66A7C();
      sub_1D174A5FC(qword_1EE07DD78, MEMORY[0x1E69695B8]);
      sub_1D1E676EC();
      MEMORY[0x1D3892890](*(v5 + *(v25 + 40)));
      result = sub_1D1E6926C();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v6 = v35;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
      v6 = v35;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = sub_1D1741A90(v5, *(v8 + 48) + v16 * v38, &qword_1EC643018, &qword_1D1E9AC00);
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v33 = 1 << *(v6 + 32);
    if (v33 >= 64)
    {
      bzero(v10, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    v2 = v34;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
  return result;
}

uint64_t sub_1D193AF6C(uint64_t a1)
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643010, &qword_1D1E90E20);
  v36 = *(v3 - 8);
  v37 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = (&v33 - v4);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6473E8, &unk_1D1E8EAA0);
  result = sub_1D1E6880C();
  v8 = result;
  if (*(v6 + 16))
  {
    v34 = v2;
    v35 = v6;
    v9 = 0;
    v10 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v39 = (v13 - 1) & v13;
LABEL_15:
      v20 = *(v6 + 48);
      v38 = *(v36 + 72);
      sub_1D1741A90(v20 + v38 * (v17 | (v9 << 6)), v5, &qword_1EC643010, &qword_1D1E90E20);
      sub_1D1E6920C();
      v21 = v5[3];
      v22 = v5[4];
      __swift_project_boxed_opaque_existential_1(v5, v21);
      (*(v22 + 8))(v21, v22);
      sub_1D1E678EC();

      v23 = v5[3];
      v24 = v5[4];
      __swift_project_boxed_opaque_existential_1(v5, v23);
      (*(v24 + 16))(v23, v24);
      sub_1D1E678EC();

      sub_1D1E66A7C();
      sub_1D174A5FC(qword_1EE07DD78, MEMORY[0x1E69695B8]);
      sub_1D1E676EC();
      sub_1D1E676EC();
      result = sub_1D1E6926C();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        v6 = v35;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
      v6 = v35;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = sub_1D1741A90(v5, *(v8 + 48) + v16 * v38, &qword_1EC643010, &qword_1D1E90E20);
      ++*(v8 + 16);
      v13 = v39;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v39 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v32 = 1 << *(v6 + 32);
    if (v32 >= 64)
    {
      bzero(v10, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v32;
    }

    v2 = v34;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
  return result;
}

uint64_t sub_1D193B3C8(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1D1E66A7C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v44 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v39 - v7;
  v9 = _s7MergeIdVMa(0);
  v47 = *(v9 - 8);
  v48 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v50 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6473D8, &qword_1D1E855E0);
  result = sub_1D1E6880C();
  v13 = result;
  if (*(v11 + 16))
  {
    v46 = v3;
    v40 = v1;
    v14 = 0;
    v15 = (v11 + 56);
    v16 = 1 << *(v11 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v11 + 56);
    v19 = (v16 + 63) >> 6;
    v45 = (v4 + 48);
    v41 = (v4 + 8);
    v42 = (v4 + 32);
    v20 = result + 56;
    v43 = v11;
    while (v18)
    {
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v25 = *(v11 + 48);
      v49 = *(v47 + 72);
      v26 = v50;
      sub_1D1951AE4(v25 + v49 * (v22 | (v14 << 6)), v50, _s7MergeIdVMa);
      v27 = v13;
      sub_1D1E6920C();
      sub_1D1741C08(v26, v8, &qword_1EC642590, qword_1D1E71260);
      v28 = v46;
      if ((*v45)(v8, 1, v46) == 1)
      {
        sub_1D1E6922C();
      }

      else
      {
        v29 = v44;
        (*v42)(v44, v8, v28);
        sub_1D1E6922C();
        sub_1D174A5FC(qword_1EE07DD78, MEMORY[0x1E69695B8]);
        sub_1D1E676EC();
        v30 = v29;
        v11 = v43;
        (*v41)(v30, v28);
      }

      sub_1D1E678EC();
      result = sub_1D1E6926C();
      v13 = v27;
      v31 = -1 << *(v27 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v20 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v20 + 8 * v33);
          if (v37 != -1)
          {
            v21 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v32) & ~*(v20 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      result = sub_1D1951AE4(v50, *(v27 + 48) + v21 * v49, _s7MergeIdVMa);
      ++*(v27 + 16);
    }

    v23 = v14;
    while (1)
    {
      v14 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v14 >= v19)
      {
        break;
      }

      v24 = v15[v14];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v18 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    v38 = 1 << *(v11 + 32);
    if (v38 >= 64)
    {
      bzero(v15, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v38;
    }

    v2 = v40;
    *(v11 + 16) = 0;
  }

  *v2 = v13;
  return result;
}

uint64_t sub_1D193B8B4(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for StaticMediaSystemComponent(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6474A8, &qword_1D1E85680);
  result = sub_1D1E6880C();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 56);
    v12 = 1 << *(v7 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v7 + 56);
    for (i = (v12 + 63) >> 6; v14; result = sub_1D176CA00(v6, v9))
    {
      v16 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_11:
      sub_1D1951AE4(*(v7 + 48) + *(v4 + 72) * (v16 | (v10 << 6)), v6, type metadata accessor for StaticMediaSystemComponent);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        return result;
      }

      if (v10 >= i)
      {
        break;
      }

      v18 = v11[v10];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_11;
      }
    }

    v19 = 1 << *(v7 + 32);
    if (v19 >= 64)
    {
      bzero((v7 + 56), ((v19 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v19;
    }

    *(v7 + 16) = 0;
  }

  *v2 = v9;
  return result;
}

uint64_t sub_1D193BABC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6473B8, &qword_1D1E855C8);
  result = sub_1D1E6880C();
  v5 = result;
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
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v20 = *v18;
      v19 = v18[1];
      sub_1D1E6920C();
      sub_1D1E6922C();
      if (v19)
      {
        sub_1D1E678EC();
      }

      result = sub_1D1E6926C();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
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

LABEL_32:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v20;
      v14[1] = v19;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
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
  return result;
}

uint64_t sub_1D193BD38(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for MatterTilePath(0);
  v34 = *(v3 - 8);
  v35 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647480, &unk_1D1E8EB00);
  result = sub_1D1E6880C();
  v8 = result;
  if (*(v6 + 16))
  {
    v32 = v1;
    v33 = v6;
    v9 = 0;
    v10 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48);
      v21 = *(v34 + 72);
      sub_1D1951AE4(v20 + v21 * (v17 | (v9 << 6)), v5, type metadata accessor for MatterTilePath);
      sub_1D1E6920C();
      sub_1D1E66A7C();
      sub_1D174A5FC(qword_1EE07DD78, MEMORY[0x1E69695B8]);
      sub_1D1E676EC();
      v22 = v35;
      MEMORY[0x1D3892890](*&v5[*(v35 + 20)]);
      if (v5[*(v22 + 24) + 2] == 1)
      {
        sub_1D1E6922C();
      }

      else
      {
        sub_1D1E6922C();
        sub_1D1E6923C();
      }

      result = sub_1D1E6926C();
      v23 = -1 << *(v8 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = sub_1D1951AE4(v5, *(v8 + 48) + v16 * v21, type metadata accessor for MatterTilePath);
      ++*(v8 + 16);
      v6 = v33;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v30 = 1 << *(v6 + 32);
    if (v30 >= 64)
    {
      bzero(v10, ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v30;
    }

    v2 = v32;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
  return result;
}

uint64_t sub_1D193C0D4(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for HomeState.Stream.StateSubscription.Reason(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647468, &qword_1D1E85648);
  result = sub_1D1E6880C();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 56);
    v12 = 1 << *(v7 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v7 + 56);
    for (i = (v12 + 63) >> 6; v14; result = sub_1D176CCD4(v6, v9))
    {
      v16 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_11:
      sub_1D1951AE4(*(v7 + 48) + *(v4 + 72) * (v16 | (v10 << 6)), v6, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        return result;
      }

      if (v10 >= i)
      {
        break;
      }

      v18 = v11[v10];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_11;
      }
    }

    v19 = 1 << *(v7 + 32);
    if (v19 >= 64)
    {
      bzero((v7 + 56), ((v19 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v19;
    }

    *(v7 + 16) = 0;
  }

  *v2 = v9;
  return result;
}

uint64_t sub_1D193C2F0(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for StaticAccessory.DeviceIdentifier(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647460, &qword_1D1E85640);
  result = sub_1D1E6880C();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 56);
    v12 = 1 << *(v7 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v7 + 56);
    for (i = (v12 + 63) >> 6; v14; result = sub_1D176CD14(v6, v9))
    {
      v16 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_11:
      sub_1D1951AE4(*(v7 + 48) + *(v4 + 72) * (v16 | (v10 << 6)), v6, type metadata accessor for StaticAccessory.DeviceIdentifier);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        return result;
      }

      if (v10 >= i)
      {
        break;
      }

      v18 = v11[v10];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_11;
      }
    }

    v19 = 1 << *(v7 + 32);
    if (v19 >= 64)
    {
      bzero((v7 + 56), ((v19 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v19;
    }

    *(v7 + 16) = 0;
  }

  *v2 = v9;
  return result;
}

uint64_t sub_1D193C4F8(uint64_t a1)
{
  v2 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647478, &qword_1D1E85658);
  result = sub_1D1E6880C();
  v4 = result;
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
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + (v13 | (v5 << 6)));
      sub_1D1E6920C();
      sub_1D1E678EC();

      result = sub_1D1E6926C();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
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
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1D193C828(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for ActionService(0);
  v31 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647428, &qword_1D1E85618);
  result = sub_1D1E6880C();
  v8 = result;
  if (*(v6 + 16))
  {
    v30 = v1;
    v9 = 0;
    v10 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v31 + 72);
      sub_1D1951AE4(*(v6 + 48) + v20 * (v17 | (v9 << 6)), v5, type metadata accessor for ActionService);
      sub_1D1E6920C();
      ActionService.hash(into:)(v32);
      result = sub_1D1E6926C();
      v21 = -1 << *(v8 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = sub_1D1951AE4(v5, *(v8 + 48) + v16 * v20, type metadata accessor for ActionService);
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v6 + 32);
    if (v28 >= 64)
    {
      bzero((v6 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v28;
    }

    v2 = v30;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
  return result;
}

uint64_t sub_1D193CB30(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1D1E66A7C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for StaticZone(0);
  v49 = *(v7 - 8);
  v50 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647420, &qword_1D1E85610);
  v11 = sub_1D1E6880C();
  v12 = v11;
  if (*(v10 + 16))
  {
    v40 = v2;
    v13 = 0;
    v14 = *(v10 + 56);
    v42 = (v10 + 56);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & v14;
    v41 = (v15 + 63) >> 6;
    v46 = v4 + 16;
    v47 = v9;
    v43 = v4;
    v44 = v10;
    v18 = (v4 + 8);
    v48 = v11;
    v45 = v11 + 56;
    while (v17)
    {
      v52 = (v17 - 1) & v17;
      v53 = v13;
      v20 = __clz(__rbit64(v17)) | (v13 << 6);
LABEL_15:
      v25 = *(v10 + 48);
      v51 = *(v49 + 72);
      sub_1D1951AE4(v25 + v51 * v20, v9, type metadata accessor for StaticZone);
      sub_1D1E6920C();
      sub_1D174A5FC(qword_1EE07DD78, MEMORY[0x1E69695B8]);
      sub_1D1E676EC();
      v26 = v50;
      sub_1D1E678EC();
      v27 = *&v9[*(v26 + 24)];
      MEMORY[0x1D3892850](*(v27 + 16));
      v28 = *(v27 + 16);
      if (v28)
      {
        v29 = v27 + ((*(v43 + 80) + 32) & ~*(v43 + 80));
        v30 = *(v43 + 72);
        v31 = *(v43 + 16);
        do
        {
          v31(v6, v29, v3);
          sub_1D1E676EC();
          (*v18)(v6, v3);
          v29 += v30;
          --v28;
        }

        while (v28);
      }

      result = sub_1D1E6926C();
      v12 = v48;
      v32 = -1 << *(v48 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v45 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        v9 = v47;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v45 + 8 * v34);
          if (v38 != -1)
          {
            v19 = __clz(__rbit64(~v38)) + (v34 << 6);
            v10 = v44;
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v33) & ~*(v45 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
      v10 = v44;
      v9 = v47;
LABEL_7:
      *(v45 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      sub_1D1951AE4(v9, *(v12 + 48) + v19 * v51, type metadata accessor for StaticZone);
      ++*(v12 + 16);
      v17 = v52;
      v13 = v53;
    }

    v21 = v13;
    result = v42;
    while (1)
    {
      v23 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v23 >= v41)
      {
        break;
      }

      v24 = v42[v23];
      ++v21;
      if (v24)
      {
        v52 = (v24 - 1) & v24;
        v53 = v23;
        v20 = __clz(__rbit64(v24)) | (v23 << 6);
        goto LABEL_15;
      }
    }

    v39 = 1 << *(v10 + 32);
    if (v39 >= 64)
    {
      bzero(v42, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v42 = -1 << v39;
    }

    v2 = v40;
    *(v10 + 16) = 0;
  }

  *v2 = v12;
  return result;
}

uint64_t sub_1D193CFE8(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for StaticActionSet(0);
  v31 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647418, &qword_1D1E85608);
  result = sub_1D1E6880C();
  v8 = result;
  if (*(v6 + 16))
  {
    v30 = v1;
    v9 = 0;
    v10 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v31 + 72);
      sub_1D1951AE4(*(v6 + 48) + v20 * (v17 | (v9 << 6)), v5, type metadata accessor for StaticActionSet);
      sub_1D1E6920C();
      StaticActionSet.hash(into:)(v32);
      result = sub_1D1E6926C();
      v21 = -1 << *(v8 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = sub_1D1951AE4(v5, *(v8 + 48) + v16 * v20, type metadata accessor for StaticActionSet);
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v6 + 32);
    if (v28 >= 64)
    {
      bzero((v6 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v28;
    }

    v2 = v30;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
  return result;
}

uint64_t sub_1D193D2F0(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for StaticRoom(0);
  v31 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647410, &unk_1D1E8EAC0);
  result = sub_1D1E6880C();
  v8 = result;
  if (*(v6 + 16))
  {
    v30 = v1;
    v9 = 0;
    v10 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v31 + 72);
      sub_1D1951AE4(*(v6 + 48) + v20 * (v17 | (v9 << 6)), v5, type metadata accessor for StaticRoom);
      sub_1D1E6920C();
      StaticRoom.hash(into:)(v32);
      result = sub_1D1E6926C();
      v21 = -1 << *(v8 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = sub_1D1951AE4(v5, *(v8 + 48) + v16 * v20, type metadata accessor for StaticRoom);
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v6 + 32);
    if (v28 >= 64)
    {
      bzero((v6 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v28;
    }

    v2 = v30;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
  return result;
}