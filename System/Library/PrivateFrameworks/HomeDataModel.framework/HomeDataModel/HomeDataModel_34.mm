unint64_t sub_1D19B60F8(double a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643388, &unk_1D1E71FF0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1D1E739C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648318, &unk_1D1E8D030);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1E73A90;
  *(inited + 32) = sub_1D1E6781C();
  *(inited + 72) = MEMORY[0x1E69E6530];
  *(inited + 40) = v3;
  *(inited + 48) = 0;
  *(inited + 80) = sub_1D1E6781C();
  *(inited + 88) = v4;
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_1D1E73A90;
  *(v5 + 32) = sub_1D1E6781C();
  *(v5 + 40) = v6;
  v7 = sub_1D1E6781C();
  v8 = MEMORY[0x1E69E6158];
  *(v5 + 72) = MEMORY[0x1E69E6158];
  *(v5 + 48) = v7;
  *(v5 + 56) = v9;
  *(v5 + 80) = sub_1D1E6781C();
  *(v5 + 88) = v10;
  v11 = sub_1D1E680EC();
  *(v5 + 120) = sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
  *(v5 + 96) = v11;
  v12 = sub_1D18D6538(v5);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646238, &qword_1D1E7E8D0);
  swift_arrayDestroy();
  *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
  *(inited + 96) = v12;
  v13 = sub_1D18D6538(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  *(v1 + 32) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647FA0, &qword_1D1E8DEE0);
  v14 = swift_initStackObject();
  *(v14 + 16) = xmmword_1D1E73A90;
  *(v14 + 32) = sub_1D1E6781C();
  *(v14 + 40) = v15;
  v16 = sub_1D1E6781C();
  *(v14 + 72) = v8;
  *(v14 + 48) = v16;
  *(v14 + 56) = v17;
  *(v14 + 80) = sub_1D1E6781C();
  *(v14 + 88) = v18;
  *(v14 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648308, &unk_1D1E8DD70);
  *(v14 + 96) = v1;
  v19 = sub_1D18D6E78(v14);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646228, &qword_1D1E8A0C0);
  swift_arrayDestroy();
  return v19;
}

unint64_t sub_1D19B63BC(uint64_t *a1)
{
  v1 = a1[1];
  v47 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642BA8, &unk_1D1E6E8F0);
  v2 = 0;
  v3 = MEMORY[0x1E69E7CC0];
  v46 = v1;
  v48 = v1 >> 60;
  while (1)
  {
    v4 = byte_1F4D656D8[v2 + 32];
    v5 = sub_1D1E6821C();
    v53[0] = sub_1D1E6781C();
    v53[1] = v6;
    v7 = sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
    v53[5] = v7;
    v53[2] = v5;
    v8 = sub_1D1E68BCC();
    sub_1D1741C08(v53, &v51, &qword_1EC646238, &qword_1D1E7E8D0);
    v9 = v51;
    v10 = v5;

    result = sub_1D171D2F0(v9, *(&v9 + 1));
    if (v12)
    {
      break;
    }

    v8[(result >> 6) + 8] |= 1 << result;
    *(v8[6] + 16 * result) = v9;
    result = sub_1D1742194(&v52, (v8[7] + 32 * result));
    v13 = v8[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      goto LABEL_20;
    }

    v8[2] = v15;

    sub_1D1741A30(v53, &qword_1EC646238, &qword_1D1E7E8D0);
    if (v4)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648318, &unk_1D1E8D030);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D1E73A90;
      *(inited + 32) = sub_1D1E6781C();
      *(inited + 40) = v17;
      v18 = sub_1D1E6781C();
      *(inited + 72) = MEMORY[0x1E69E6158];
      *(inited + 48) = v18;
      *(inited + 56) = v19;
      *(inited + 80) = sub_1D1E6781C();
      *(inited + 88) = v20;
      if (v4 == 1)
      {
        v21 = sub_1D1E691BC();
      }

      else
      {
        v21 = sub_1D1E67D2C();
      }

      *(inited + 120) = v7;
      *(inited + 96) = v21;
      v38 = sub_1D18D6538(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646238, &qword_1D1E7E8D0);
      swift_arrayDestroy();
      v39 = sub_1D1E6781C();
      v41 = v40;
      *(&v52 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
      *&v51 = v38;
      sub_1D1742194(&v51, v50);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v49 = v8;
      sub_1D1753F18(v50, v39, v41, isUniquelyReferenced_nonNull_native);
      goto LABEL_13;
    }

    if (v48 <= 0xE)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648320, &qword_1D1E8BEF8);
      v22 = swift_initStackObject();
      *(v22 + 16) = xmmword_1D1E739C0;
      *(v22 + 32) = sub_1D1E6781C();
      *(v22 + 40) = v23;
      v24 = sub_1D1E6781C();
      *(v22 + 72) = MEMORY[0x1E69E6158];
      *(v22 + 48) = v24;
      *(v22 + 56) = v25;
      sub_1D1741854(v47, v46);
      v26 = sub_1D18DA288(v22);
      swift_setDeallocating();
      sub_1D1741A30(v22 + 32, &qword_1EC646220, &qword_1D1E7E8A8);
      v27 = sub_1D1E6781C();
      v29 = v28;
      v30 = sub_1D1E6688C();
      v31 = sub_1D1741B10(0, &qword_1EC647ED0, 0x1E695DEF0);
      *&v51 = v30;
      *(&v52 + 1) = v31;
      v32 = swift_isUniquelyReferenced_nonNull_native();
      *&v50[0] = v26;
      sub_1D17556A8(&v51, v27, v29, v32);

      v33 = *&v50[0];
      v34 = sub_1D1E6781C();
      v36 = v35;
      *(&v52 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648328, &qword_1D1E8BF00);
      *&v51 = v33;
      sub_1D1742194(&v51, v50);
      v37 = swift_isUniquelyReferenced_nonNull_native();
      v49 = v8;
      sub_1D1753F18(v50, v34, v36, v37);
      sub_1D1716AA4(v47, v46);
LABEL_13:

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_1D177D2F8(0, v3[2] + 1, 1, v3);
      }

      v44 = v3[2];
      v43 = v3[3];
      if (v44 >= v43 >> 1)
      {
        v3 = sub_1D177D2F8((v43 > 1), v44 + 1, 1, v3);
      }

      v3[2] = v44 + 1;
      v3[v44 + 4] = v49;
      goto LABEL_3;
    }

LABEL_3:
    if (++v2 == 3)
    {
      v45 = sub_1D18F95CC(v3);

      return v45;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

unint64_t sub_1D19B6988(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1 + 16);
  v4 = *(a1 + 17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647FA0, &qword_1D1E8DEE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1E73A90;
  *(inited + 32) = sub_1D1E6781C();
  *(inited + 40) = v6;
  v7 = sub_1D1E6781C();
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v7;
  *(inited + 56) = v8;
  *(inited + 80) = sub_1D1E6781C();
  *(inited + 88) = v9;
  v13[0] = v1;
  v13[1] = v2;
  v14 = v3;
  v15 = v4;
  v10 = sub_1D19B63BC(v13);
  *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647FA8, &unk_1D1E8DD90);
  *(inited + 96) = v10;
  v11 = sub_1D18D6E78(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646228, &qword_1D1E8A0C0);
  swift_arrayDestroy();
  return v11;
}

uint64_t sub_1D19B6AB4(unsigned __int8 *a1)
{
  v69 = a1[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642BA8, &unk_1D1E6E8F0);
  v1 = 0;
  v2 = 0;
  v3 = MEMORY[0x1E69E7CC0];
  v4 = &qword_1D1E7E8D0;
  while (1)
  {
    v70 = v1;
    v5 = *(&unk_1F4D65728 + v2 + 32);
    v6 = sub_1D1E6821C();
    v74[0] = sub_1D1E6781C();
    v74[1] = v7;
    v8 = sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
    v74[5] = v8;
    v74[2] = v6;
    v9 = sub_1D1E68BCC();
    v10 = v4;
    sub_1D1741C08(v74, &v72, &qword_1EC646238, v4);
    v11 = v72;
    v12 = v6;

    v13 = sub_1D171D2F0(v11, *(&v11 + 1));
    if (v14)
    {
      break;
    }

    v9[(v13 >> 6) + 8] |= 1 << v13;
    *(v9[6] + 16 * v13) = v11;
    sub_1D1742194(&v73, (v9[7] + 32 * v13));
    v15 = v9[2];
    v16 = __OFADD__(v15, 1);
    v17 = v15 + 1;
    if (v16)
    {
      goto LABEL_38;
    }

    v9[2] = v17;

    sub_1D1741A30(v74, &qword_1EC646238, v4);
    if (v5)
    {
      if ((v69 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648318, &unk_1D1E8D030);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1D1E73A90;
        *(inited + 32) = sub_1D1E6781C();
        *(inited + 40) = v19;
        v20 = sub_1D1E6781C();
        *(inited + 72) = MEMORY[0x1E69E6158];
        *(inited + 48) = v20;
        *(inited + 56) = v21;
        *(inited + 80) = sub_1D1E6781C();
        *(inited + 88) = v22;
        v23 = sub_1D1E692AC();
        *(inited + 120) = v8;
        *(inited + 96) = v23;
        v24 = sub_1D18D6538(inited);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646238, v4);
        swift_arrayDestroy();
        v25 = sub_1D1E6781C();
        v27 = v26;
        *(&v73 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
        *&v72 = v24;
        sub_1D1742194(&v72, v71);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v29 = sub_1D171D2F0(v25, v27);
        v31 = v9[2];
        v32 = (v30 & 1) == 0;
        v16 = __OFADD__(v31, v32);
        v33 = v31 + v32;
        if (v16)
        {
          goto LABEL_40;
        }

        v34 = v30;
        if (v9[3] >= v33)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v4 = v10;
            if (v30)
            {
              goto LABEL_23;
            }
          }

          else
          {
            v61 = v29;
            sub_1D1738144();
            v29 = v61;
            v4 = v10;
            if (v34)
            {
              goto LABEL_23;
            }
          }
        }

        else
        {
          sub_1D1726F00(v33, isUniquelyReferenced_nonNull_native);
          v29 = sub_1D171D2F0(v25, v27);
          if ((v34 & 1) != (v35 & 1))
          {
            goto LABEL_43;
          }

          v4 = v10;
          if (v34)
          {
LABEL_23:
            v56 = v29;

            v57 = (v9[7] + 32 * v56);
            __swift_destroy_boxed_opaque_existential_1(v57);
            sub_1D1742194(v71, v57);
            goto LABEL_30;
          }
        }

        v9[(v29 >> 6) + 8] |= 1 << v29;
        v62 = (v9[6] + 16 * v29);
        *v62 = v25;
        v62[1] = v27;
        sub_1D1742194(v71, (v9[7] + 32 * v29));
        v63 = v9[2];
        v16 = __OFADD__(v63, 1);
        v64 = v63 + 1;
        if (v16)
        {
          goto LABEL_42;
        }

        v9[2] = v64;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648318, &unk_1D1E8D030);
      v36 = swift_initStackObject();
      *(v36 + 16) = xmmword_1D1E73A90;
      *(v36 + 32) = sub_1D1E6781C();
      *(v36 + 40) = v37;
      v38 = sub_1D1E6781C();
      *(v36 + 72) = MEMORY[0x1E69E6158];
      *(v36 + 48) = v38;
      *(v36 + 56) = v39;
      *(v36 + 80) = sub_1D1E6781C();
      *(v36 + 88) = v40;
      v41 = sub_1D1E67D2C();
      *(v36 + 120) = v8;
      *(v36 + 96) = v41;
      v42 = sub_1D18D6538(v36);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646238, v4);
      swift_arrayDestroy();
      v43 = sub_1D1E6781C();
      v45 = v44;
      *(&v73 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
      *&v72 = v42;
      sub_1D1742194(&v72, v71);
      v46 = swift_isUniquelyReferenced_nonNull_native();
      v48 = sub_1D171D2F0(v43, v45);
      v49 = v9[2];
      v50 = (v47 & 1) == 0;
      v51 = v49 + v50;
      if (__OFADD__(v49, v50))
      {
        goto LABEL_39;
      }

      v52 = v47;
      if (v9[3] >= v51)
      {
        if (v46)
        {
          v4 = v10;
          if (v47)
          {
            goto LABEL_20;
          }
        }

        else
        {
          sub_1D1738144();
          v4 = v10;
          if (v52)
          {
            goto LABEL_20;
          }
        }
      }

      else
      {
        sub_1D1726F00(v51, v46);
        v53 = sub_1D171D2F0(v43, v45);
        if ((v52 & 1) != (v54 & 1))
        {
          goto LABEL_43;
        }

        v48 = v53;
        v4 = v10;
        if (v52)
        {
LABEL_20:

          v55 = (v9[7] + 32 * v48);
          __swift_destroy_boxed_opaque_existential_1(v55);
          sub_1D1742194(v71, v55);
          goto LABEL_30;
        }
      }

      v9[(v48 >> 6) + 8] |= 1 << v48;
      v58 = (v9[6] + 16 * v48);
      *v58 = v43;
      v58[1] = v45;
      sub_1D1742194(v71, (v9[7] + 32 * v48));
      v59 = v9[2];
      v16 = __OFADD__(v59, 1);
      v60 = v59 + 1;
      if (v16)
      {
        goto LABEL_41;
      }

      v9[2] = v60;
    }

LABEL_30:
    if (v9[2] < 2uLL)
    {
    }

    else
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_1D177D2F8(0, v3[2] + 1, 1, v3);
      }

      v66 = v3[2];
      v65 = v3[3];
      if (v66 >= v65 >> 1)
      {
        v3 = sub_1D177D2F8((v65 > 1), v66 + 1, 1, v3);
      }

      v3[2] = v66 + 1;
      v3[v66 + 4] = v9;
      v4 = v10;
    }

    v1 = 1;
    v2 = 1u;
    if (v70)
    {
      v67 = sub_1D18F95CC(v3);

      return v67;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  result = sub_1D1E690FC();
  __break(1u);
  return result;
}

double ThermostatPreset.init(for:name:)@<D0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a1;
  if (v4 <= 4 && ((0x17u >> v4) & 1) != 0)
  {
    v5 = a3;
    v6 = a2;
    v7 = a4;
    v8 = sub_1D19B8F94(*(&off_1E83EF778 + v4));
    a4 = v7;
    a3 = v5;
    v10 = v9;
    a2 = v6;
  }

  else
  {
    v8 = 0;
    v10 = 0xC000000000000000;
  }

  *&result = 2600;
  *a4 = xmmword_1D1E8BF30;
  *(a4 + 16) = v4;
  *(a4 + 24) = v8;
  *(a4 + 32) = v10;
  *(a4 + 40) = 0;
  *(a4 + 48) = a2;
  *(a4 + 56) = a3;
  return result;
}

double ThermostatPreset.heatingSetpointCelsius.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C68, &unk_1D1E8A7F0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_1D1E66ADC();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = *(v0 + 8);
  sub_1D18311BC();
  sub_1D1E66ABC();
  sub_1D1E666FC();
  v4 = sub_1D1E6838C();
  v5 = objc_opt_self();
  v6 = [v5 fahrenheit];
  v7 = sub_1D1E684FC();

  if (v7)
  {
    v8 = 0.555555556;
  }

  else
  {
    v9 = [v5 celsius];
    sub_1D1E684FC();

    v8 = 0.5;
    v4 = v9;
  }

  return v8 * round(v3 / 100.0 / v8);
}

double ThermostatPreset.coolingSetpointCelsius.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C68, &unk_1D1E8A7F0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_1D1E66ADC();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = *v0;
  sub_1D18311BC();
  sub_1D1E66ABC();
  sub_1D1E666FC();
  v4 = sub_1D1E6838C();
  v5 = objc_opt_self();
  v6 = [v5 fahrenheit];
  v7 = sub_1D1E684FC();

  if (v7)
  {
    v8 = 0.555555556;
  }

  else
  {
    v9 = [v5 celsius];
    sub_1D1E684FC();

    v8 = 0.5;
    v4 = v9;
  }

  return v8 * round(v3 / 100.0 / v8);
}

uint64_t ThermostatPreset.presetHandle.getter()
{
  v1 = *(v0 + 24);
  sub_1D1771B38(v1, *(v0 + 32));
  return v1;
}

uint64_t ThermostatPreset.name.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_1D19B76C8()
{
  v1 = *v0;
  v2 = 0x53676E696C6F6F63;
  v3 = 0x6148746573657270;
  v4 = 0x6E49746C697562;
  if (v1 != 4)
  {
    v4 = 1701667182;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x53676E6974616568;
  if (v1 != 1)
  {
    v5 = 0x6353746573657270;
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

uint64_t sub_1D19B7798@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D19B93BC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D19B77C0(uint64_t a1)
{
  v2 = sub_1D19B9044();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D19B77FC(uint64_t a1)
{
  v2 = sub_1D19B9044();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ThermostatPreset.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648330, &qword_1D1E8BF58);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v15 - v5;
  v7 = *(v1 + 8);
  v23 = *(v1 + 16);
  v8 = *(v1 + 32);
  v18 = *(v1 + 24);
  v19 = v7;
  v15[1] = *(v1 + 40);
  v9 = *(v1 + 56);
  v16 = *(v1 + 48);
  v17 = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D19B9044();
  sub_1D1E6930C();
  LOBYTE(v21) = 0;
  v10 = v20;
  sub_1D1E68F6C();
  if (!v10)
  {
    v11 = v23;
    v12 = v17;
    v13 = v18;
    v20 = v9;
    LOBYTE(v21) = 1;
    sub_1D1E68F6C();
    LOBYTE(v21) = v11;
    v24 = 2;
    sub_1D19B9098();
    sub_1D1E68F1C();
    v21 = v13;
    v22 = v12;
    v24 = 3;
    sub_1D1771B38(v13, v12);
    sub_1D18CAD0C();
    sub_1D1E68E5C();
    sub_1D1716AA4(v21, v22);
    LOBYTE(v21) = 4;
    sub_1D1E68EDC();
    LOBYTE(v21) = 5;
    sub_1D1E68E0C();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t ThermostatPreset.hash(into:)(uint64_t a1)
{
  v2 = v1[1];
  v3 = v1[4];
  v4 = v1[7];
  MEMORY[0x1D3892890](*v1);
  MEMORY[0x1D3892890](v2);
  sub_1D1E6922C();
  sub_1D1E6922C();
  if (v3 >> 60 != 15)
  {
    sub_1D1E668CC();
  }

  sub_1D1E6922C();
  if (!v4)
  {
    return sub_1D1E6922C();
  }

  sub_1D1E6922C();

  return sub_1D1E678EC();
}

uint64_t ThermostatPreset.hashValue.getter()
{
  sub_1D1E6920C();
  ThermostatPreset.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t ThermostatPreset.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648348, &qword_1D1E8BF60);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D19B9044();
  sub_1D1E692FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v27) = 0;
  v9 = sub_1D1E68DCC();
  LOBYTE(v27) = 1;
  v22 = sub_1D1E68DCC();
  LOBYTE(v23) = 2;
  sub_1D19B90EC();
  sub_1D1E68D7C();
  v10 = v27;
  LOBYTE(v23) = 3;
  sub_1D18CB0FC();
  sub_1D1E68CBC();
  v35 = v10;
  v20 = v28;
  v21 = v27;
  LOBYTE(v27) = 4;
  LOBYTE(v10) = sub_1D1E68D3C();
  v36 = 5;
  v11 = sub_1D1E68C6C();
  LOBYTE(v10) = v10 & 1;
  v12 = v8;
  v14 = v13;
  (*(v6 + 8))(v12, v5);
  *&v23 = v9;
  *(&v23 + 1) = v22;
  v15 = v35;
  LOBYTE(v24) = v35;
  v16 = v20;
  *(&v24 + 1) = v21;
  *&v25 = v20;
  BYTE8(v25) = v10;
  *&v26 = v11;
  *(&v26 + 1) = v14;
  v17 = v24;
  *a2 = v23;
  a2[1] = v17;
  v18 = v26;
  a2[2] = v25;
  a2[3] = v18;
  sub_1D17806DC(&v23, &v27);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v27 = v9;
  v28 = v22;
  v29 = v15;
  v30 = v21;
  v31 = v16;
  v32 = v10;
  v33 = v11;
  v34 = v14;
  return sub_1D1780738(&v27);
}

uint64_t sub_1D19B7F2C()
{
  sub_1D1E6920C();
  ThermostatPreset.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D19B7F70(uint64_t a1)
{
  sub_1D1E6920C();
  ThermostatPreset.hash(into:)(v2);
  return sub_1D1E6926C();
}

uint64_t sub_1D19B7FB0@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  *a1 = v2;
  a1[1] = v3;
  return sub_1D1771B38(v2, v3);
}

uint64_t sub_1D19B7FF0(uint64_t a1, unint64_t a2)
{
  v45 = *MEMORY[0x1E69E9840];
  v39[0] = a1;
  v39[1] = a2;
  *&v42 = a1;
  *(&v42 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648378, &qword_1D1E8C268);
  if (swift_dynamicCast())
  {
    sub_1D16EEE20(__src, &v43);
    __swift_project_boxed_opaque_existential_1(&v43, v44);
    sub_1D1E6631C();
    __src[0] = v42;
    __swift_destroy_boxed_opaque_existential_1(&v43);
    goto LABEL_63;
  }

  v41 = 0;
  memset(__src, 0, sizeof(__src));
  sub_1D19B95D4(__src);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_1D1E6893C();
  }

  sub_1D19B8500(&v43, v4, v5);
  v6 = *(&v43 + 1);
  v7 = v43;
  if (*(&v43 + 1) >> 60 != 15)
  {
    __src[0] = v43;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_1D19B963C(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x1EEE9AC00](*&__src[0]);
  v34[2] = v39;
  v10 = sub_1D19B85C8(sub_1D19B96DC, v34);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_1D1E6686C();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v42 + 7) = 0;
  *&v42 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_1D19B8B20(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_1D1E6795C();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_1D1E6798C();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v43 = v14;
      *(&v43 + 1) = v38;
      v31 = *(&v43 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_1D1E6893C();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_1D19B8B20(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_1D1E6796C();
LABEL_52:
    *(&v42 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v43 = v42;
      *(&v43 + 6) = *(&v42 + 6);
      sub_1D1E6687C();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v43 = v42;
    *(&v43 + 6) = *(&v42 + 6);
    sub_1D1E6687C();
    sub_1D1716AA4(v36, v6);
    goto LABEL_62;
  }

LABEL_57:

  sub_1D1716AA4(v36, v6);
LABEL_63:
  v32 = __src[0];
  sub_1D1741854(*&__src[0], *(&__src[0] + 1));

  sub_1D174E7C4(v32, *(&v32 + 1));
  return v32;
}

uint64_t *sub_1D19B8500@<X0>(uint64_t *__return_ptr a1@<X8>, _BYTE *__src@<X0>, unint64_t a3@<X1>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a3)
  {
    if (a3 <= 14)
    {
      result = sub_1D19B8DDC(__src, &__src[a3]);
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      sub_1D1E661AC();
      swift_allocObject();
      v8 = sub_1D1E6615C();
      if (a3 >= 0x7FFFFFFF)
      {
        sub_1D1E6685C();
        result = swift_allocObject();
        result[2] = 0;
        result[3] = a3;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = (a3 << 32);
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a1 = result;
  a1[1] = v6;
  return result;
}

char *sub_1D19B85C8(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v4 = v2;
  v19[2] = *MEMORY[0x1E69E9840];
  v7 = *v2;
  v6 = v2[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (!v8)
    {
      sub_1D174E7C4(v7, v6);
      v19[0] = v7;
      LOWORD(v19[1]) = v6;
      BYTE2(v19[1]) = BYTE2(v6);
      BYTE3(v19[1]) = BYTE3(v6);
      BYTE4(v19[1]) = BYTE4(v6);
      BYTE5(v19[1]) = BYTE5(v6);
      BYTE6(v19[1]) = BYTE6(v6);
      result = a1(&v17, v19, v19 + BYTE6(v6));
      if (!v3)
      {
        result = v17;
      }

      v10 = LODWORD(v19[1]) | ((WORD2(v19[1]) | (BYTE6(v19[1]) << 16)) << 32);
      *v4 = v19[0];
      v4[1] = v10;
      return result;
    }

    v12 = v6 & 0x3FFFFFFFFFFFFFFFLL;

    sub_1D174E7C4(v7, v6);
    *v4 = xmmword_1D1E8BF40;
    sub_1D174E7C4(0, 0xC000000000000000);
    v13 = v7 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v13 < v7)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_1D1E6616C() && __OFSUB__(v7, sub_1D1E6619C()))
      {
LABEL_26:
        __break(1u);
      }

      sub_1D1E661AC();
      swift_allocObject();
      v14 = sub_1D1E6614C();

      v12 = v14;
    }

    if (v13 >= v7)
    {

      v15 = sub_1D19B8A6C(v7, v7 >> 32, a1);

      v11 = v12 | 0x4000000000000000;
      if (!v3)
      {
        *v4 = v7;
        v4[1] = v11;
        return v15;
      }

      *v4 = v7;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v8 == 2)
  {

    sub_1D174E7C4(v7, v6);
    v17 = v7;
    v18 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    *v4 = xmmword_1D1E8BF40;
    sub_1D174E7C4(0, 0xC000000000000000);
    sub_1D1E6681C();
    result = sub_1D19B8A6C(*(v17 + 2), *(v17 + 3), a1);
    v11 = v18 | 0x8000000000000000;
    if (!v3)
    {
      *v4 = v17;
      v4[1] = v11;
      return result;
    }

    *v4 = v17;
LABEL_21:
    v4[1] = v11;
    return result;
  }

  memset(v19, 0, 15);
  result = a1(&v17, v19, v19);
  if (!v3)
  {
    return v17;
  }

  return result;
}

_BYTE *sub_1D19B896C@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_1D19B8DDC(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_1D19B8E94(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_1D19B8F10(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_1D19B8A00(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
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

char *sub_1D19B8A6C(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_1D1E6616C();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_1D1E6619C();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_1D1E6618C();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

unint64_t sub_1D19B8B20(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1D1E6799C();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1D3890FB0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_1D19B8B9C@<X0>(uint64_t result@<X0>, void *a4@<X8>)
{
  if (result)
  {
    result = sub_1D1E6885C();
    if ((v5 & 1) == 0)
    {
      *a4 = 0;
      a4[1] = 0xE000000000000000;
      a4[2] = 15;
      a4[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t _s13HomeDataModel16ThermostatPresetV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    if ((0xFE060504030201uLL >> (8 * *(a1 + 16))) != (0xFE060504030201uLL >> (8 * *(a2 + 16))))
    {
      return 0;
    }

    v5 = *(a1 + 24);
    v4 = *(a1 + 32);
    v6 = *(a1 + 40);
    v8 = *(a1 + 48);
    v7 = *(a1 + 56);
    v10 = *(a2 + 24);
    v9 = *(a2 + 32);
    v11 = *(a2 + 40);
    v13 = *(a2 + 48);
    v12 = *(a2 + 56);
    if (v4 >> 60 == 15)
    {
      if (v9 >> 60 == 15)
      {
        sub_1D1771B38(v5, v4);
        sub_1D1771B38(v10, v9);
        sub_1D1716AA4(v5, v4);
        if (v6 == v11)
        {
          goto LABEL_16;
        }

        return 0;
      }

LABEL_11:
      sub_1D1771B38(v5, v4);
      sub_1D1771B38(v10, v9);
      sub_1D1716AA4(v5, v4);
      sub_1D1716AA4(v10, v9);
      return 0;
    }

    if (v9 >> 60 == 15)
    {
      goto LABEL_11;
    }

    v15 = *(a1 + 48);
    sub_1D1771B38(v5, v4);
    sub_1D1771B38(v10, v9);
    v14 = sub_1D199F344(v5, v4, v10, v9);
    sub_1D1716AA4(v10, v9);
    sub_1D1716AA4(v5, v4);
    result = 0;
    if (v14)
    {
      v8 = v15;
      if (((v6 ^ v11) & 1) == 0)
      {
LABEL_16:
        if (v7)
        {
          if (v12 && (v8 == v13 && v7 == v12 || (sub_1D1E6904C() & 1) != 0))
          {
            return 1;
          }
        }

        else if (!v12)
        {
          return 1;
        }

        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1D19B8DDC(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_1D19B8E94(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_1D1E661AC();
  swift_allocObject();
  result = sub_1D1E6615C();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1D1E6685C();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_1D19B8F10(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_1D1E661AC();
  swift_allocObject();
  result = sub_1D1E6615C();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1D19B8F94(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648388, &qword_1D1E8C278);
  v10 = sub_1D19B9764();
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_1D19B896C(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v5;
}

unint64_t sub_1D19B9044()
{
  result = qword_1EC648338;
  if (!qword_1EC648338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648338);
  }

  return result;
}

unint64_t sub_1D19B9098()
{
  result = qword_1EC648340;
  if (!qword_1EC648340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648340);
  }

  return result;
}

unint64_t sub_1D19B90EC()
{
  result = qword_1EC648350;
  if (!qword_1EC648350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648350);
  }

  return result;
}

unint64_t sub_1D19B9144()
{
  result = qword_1EC648358;
  if (!qword_1EC648358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648358);
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D19B91AC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 56);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1D19B9208(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 56) = a2;
    }
  }

  return result;
}

unint64_t sub_1D19B92B8()
{
  result = qword_1EC648360;
  if (!qword_1EC648360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648360);
  }

  return result;
}

unint64_t sub_1D19B9310()
{
  result = qword_1EC648368;
  if (!qword_1EC648368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648368);
  }

  return result;
}

unint64_t sub_1D19B9368()
{
  result = qword_1EC648370;
  if (!qword_1EC648370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648370);
  }

  return result;
}

uint64_t sub_1D19B93BC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x53676E696C6F6F63 && a2 == 0xEF746E696F707465;
  if (v4 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x53676E6974616568 && a2 == 0xEF746E696F707465 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6353746573657270 && a2 == 0xEE006F6972616E65 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6148746573657270 && a2 == 0xEC000000656C646ELL || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E49746C697562 && a2 == 0xE700000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_1D1E6904C();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1D19B95D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648380, &qword_1D1E8C270);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D19B963C(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_1D1E661AC();
      swift_allocObject();
      sub_1D1E6617C();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_1D1E6685C();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

void *sub_1D19B96DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_1D19B8A00(sub_1D19B9744, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

unint64_t sub_1D19B9764()
{
  result = qword_1EC648390;
  if (!qword_1EC648390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC648388, &qword_1D1E8C278);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648390);
  }

  return result;
}

uint64_t ThermostatPresetScenario.label.getter()
{
  v1 = *v0;
  v2 = "HFThermostatPreset_Away";
  v3 = "XCTestConfigurationFilePath";
  v4 = 0xD00000000000001FLL;
  if (v1 != 5)
  {
    v3 = "enablePresets(presets:)";
    v4 = 0xD00000000000001ELL;
  }

  v5 = "HFThermostatPreset_Vacation";
  if (v1 == 3)
  {
    v6 = 0xD000000000000017;
  }

  else
  {
    v5 = "HFThermostatPreset_GoingToSleep";
    v6 = 0xD00000000000001BLL;
  }

  if (*v0 <= 4u)
  {
    v3 = v5;
    v4 = v6;
  }

  v7 = "HFThermostatPreset_Sleep";
  if (v1 == 1)
  {
    v8 = 0xD000000000000017;
  }

  else
  {
    v7 = "HFThermostatPreset_Wake";
    v8 = 0xD000000000000018;
  }

  if (*v0)
  {
    v2 = v7;
    v9 = v8;
  }

  else
  {
    v9 = 0xD000000000000017;
  }

  if (*v0 <= 2u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v3;
  }

  if (*v0 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v4;
  }

  return static String.hfLocalized(_:)(v11, v10 | 0x8000000000000000);
}

HomeDataModel::ThermostatPresetScenario_optional __swiftcall ThermostatPresetScenario.init(value:)(Swift::UInt8_optional value)
{
  if ((*&value & 0x100) != 0 || (value.value + 2) > 8u)
  {
    *v1 = 7;
  }

  else
  {
    *v1 = byte_1D1E8C45A[(value.value + 2)];
  }

  return value.value;
}

uint64_t ThermostatPresetScenario.shortPresetLabel.getter()
{
  v1 = 0xD000000000000017;
  v2 = *v0;
  v3 = 0xD000000000000019;
  v4 = "HFThermostatPreset_Night";
  v5 = "XCTestConfigurationFilePath";
  v6 = 0xD00000000000001FLL;
  if (v2 != 5)
  {
    v5 = "enablePresets(presets:)";
    v6 = 0xD00000000000001ELL;
  }

  v7 = "HFThermostatPreset_Vacation";
  if (v2 == 3)
  {
    v8 = 0xD000000000000017;
  }

  else
  {
    v7 = "esetSuggestionChange";
    v8 = 0xD00000000000001BLL;
  }

  if (*v0 <= 4u)
  {
    v5 = v7;
    v6 = v8;
  }

  v9 = "HFThermostatPreset_Sleep";
  if (v2 != 1)
  {
    v9 = "HFThermostatPreset_Extended";
    v1 = 0xD000000000000018;
  }

  if (*v0)
  {
    v4 = v9;
    v3 = v1;
  }

  if (*v0 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v5;
  }

  if (*v0 <= 2u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v6;
  }

  return static String.hfLocalized(_:)(v11, v10 | 0x8000000000000000);
}

uint64_t ThermostatPresetScenario.longPresetLabel.getter()
{
  v1 = 0xD000000000000017;
  v2 = *v0;
  v3 = 0xD000000000000019;
  v4 = "HFThermostatPreset_Night";
  v5 = "XCTestConfigurationFilePath";
  v6 = 0xD00000000000001FLL;
  if (v2 == 5)
  {
    v7 = 0xD00000000000001FLL;
  }

  else
  {
    v5 = "enablePresets(presets:)";
    v7 = 0xD00000000000001ELL;
  }

  v8 = "HFThermostatPreset_Vacation";
  if (v2 == 3)
  {
    v6 = 0xD000000000000017;
  }

  else
  {
    v8 = "HFThermostatPreset_AtHome";
  }

  if (*v0 > 4u)
  {
    v6 = v7;
  }

  else
  {
    v5 = v8;
  }

  v9 = "HFThermostatPreset_Sleep";
  if (v2 != 1)
  {
    v9 = "HFThermostatPreset_AwayExtended";
    v1 = 0xD00000000000001CLL;
  }

  if (*v0)
  {
    v4 = v9;
    v3 = v1;
  }

  if (*v0 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v5;
  }

  if (*v0 <= 2u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v6;
  }

  return static String.hfLocalized(_:)(v11, v10 | 0x8000000000000000);
}

HomeDataModel::ThermostatPresetScenario_optional __swiftcall ThermostatPresetScenario.init(rawValue:)(HomeDataModel::ThermostatPresetScenario_optional rawValue)
{
  if ((rawValue.value + 2) > 8u)
  {
    *v1 = 7;
  }

  else
  {
    *v1 = byte_1D1E8C45A[(rawValue.value + 2)];
  }

  return rawValue;
}

uint64_t ThermostatPresetScenario.symbol.getter()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    if (!*v0)
    {
      return 0x69662E6573756F68;
    }

    if (v1 == 1)
    {
      return 0xD000000000000015;
    }

    return 0x6174732E6E6F6F6DLL;
  }

  if (*v0 > 4u)
  {
    if (v1 != 5)
    {
      return 0;
    }

    return 0x6174732E6E6F6F6DLL;
  }

  if (v1 == 3)
  {
    return 0;
  }

  else
  {
    return 0x69662E6B636F6C63;
  }
}

uint64_t ThermostatPresetScenario.order.getter()
{
  v1 = *v0;
  if (v1 > 4)
  {
    return 4;
  }

  else
  {
    return qword_1D1E8C468[v1];
  }
}

unint64_t sub_1D19B9CA0()
{
  result = qword_1EC648398;
  if (!qword_1EC648398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648398);
  }

  return result;
}

uint64_t sub_1D19B9CF4()
{
  sub_1D1E6920C();
  sub_1D1E6922C();
  return sub_1D1E6926C();
}

uint64_t sub_1D19B9D94(uint64_t a1)
{
  sub_1D1E6920C();
  sub_1D1E6922C();
  return sub_1D1E6926C();
}

unint64_t sub_1D19B9E5C()
{
  result = qword_1EC6483A0;
  if (!qword_1EC6483A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6483A8, &qword_1D1E8C3D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6483A0);
  }

  return result;
}

unint64_t sub_1D19B9EE0()
{
  result = qword_1EC6483B0;
  if (!qword_1EC6483B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6483B0);
  }

  return result;
}

_BYTE *ThermostatPresetType.init(preset:numberOfPresets:supportsNames:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = *result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t ThermostatPresetType.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_1D171DB60(32), (v5 & 1) != 0))
  {
    sub_1D1741970(*(a1 + 56) + 32 * v4, v14);
    v6 = swift_dynamicCast();
    if (v6)
    {
      LOWORD(v6) = v13;
    }
  }

  else
  {
    LOWORD(v6) = 0;
  }

  ThermostatPresetScenario.init(value:)(v6);
  v7 = v14[0];
  if (*(a1 + 16) && (v8 = sub_1D171DB60(33), (v9 & 1) != 0))
  {
    sub_1D1741970(*(a1 + 56) + 32 * v8, v14);

    result = swift_dynamicCast();
    if (result)
    {
      v11 = v13;
      goto LABEL_12;
    }
  }

  else
  {
  }

  v11 = 0;
LABEL_12:
  if (v7 == 7)
  {
    v12 = 0;
  }

  else
  {
    v12 = v7;
  }

  *a2 = v12;
  *(a2 + 8) = v11;
  *(a2 + 16) = 0;
  return result;
}

uint64_t sub_1D19BA0F8()
{
  v1 = 0x664F7265626D756ELL;
  if (*v0 != 1)
  {
    v1 = 0x7374726F70707573;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6353746573657270;
  }
}

uint64_t sub_1D19BA178@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D19BAB80(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D19BA1A0(uint64_t a1)
{
  v2 = sub_1D19BA914();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D19BA1DC(uint64_t a1)
{
  v2 = sub_1D19BA914();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ThermostatPresetType.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6483B8, &qword_1D1E8C490);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v10 - v6;
  v8 = *v1;
  v10[1] = *(v1 + 1);
  v11 = v1[16];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D19BA914();
  sub_1D1E6930C();
  v15 = v8;
  v14 = 0;
  sub_1D19B9098();
  sub_1D1E68F1C();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v13 = 1;
  sub_1D1E68F6C();
  v12 = 2;
  sub_1D1E68EDC();
  return (*(v5 + 8))(v7, v4);
}

uint64_t ThermostatPresetType.hash(into:)()
{
  v1 = *(v0 + 8);
  sub_1D1E6922C();
  MEMORY[0x1D3892890](v1);
  return sub_1D1E6922C();
}

uint64_t ThermostatPresetType.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_1D1E6920C();
  sub_1D1E6922C();
  MEMORY[0x1D3892890](v1);
  sub_1D1E6922C();
  return sub_1D1E6926C();
}

uint64_t ThermostatPresetType.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6483C8, &qword_1D1E8C498);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D19BA914();
  sub_1D1E692FC();
  if (!v2)
  {
    v16 = 0;
    sub_1D19B90EC();
    sub_1D1E68D7C();
    v9 = v17;
    v15 = 1;
    v11 = sub_1D1E68DCC();
    v14 = 2;
    v12 = sub_1D1E68D3C();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    *(a2 + 8) = v11;
    *(a2 + 16) = v12 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D19BA6EC()
{
  v1 = *(v0 + 8);
  sub_1D1E6920C();
  sub_1D1E6922C();
  MEMORY[0x1D3892890](v1);
  sub_1D1E6922C();
  return sub_1D1E6926C();
}

uint64_t sub_1D19BA770()
{
  v1 = *(v0 + 8);
  sub_1D1E6922C();
  MEMORY[0x1D3892890](v1);
  return sub_1D1E6922C();
}

uint64_t sub_1D19BA7D4(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_1D1E6920C();
  sub_1D1E6922C();
  MEMORY[0x1D3892890](v2);
  sub_1D1E6922C();
  return sub_1D1E6926C();
}

unint64_t sub_1D19BA914()
{
  result = qword_1EC6483C0;
  if (!qword_1EC6483C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6483C0);
  }

  return result;
}

unint64_t sub_1D19BA96C()
{
  result = qword_1EC6483D0;
  if (!qword_1EC6483D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6483D0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ThermostatPresetType(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ThermostatPresetType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1D19BAA7C()
{
  result = qword_1EC6483D8;
  if (!qword_1EC6483D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6483D8);
  }

  return result;
}

unint64_t sub_1D19BAAD4()
{
  result = qword_1EC6483E0;
  if (!qword_1EC6483E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6483E0);
  }

  return result;
}

unint64_t sub_1D19BAB2C()
{
  result = qword_1EC6483E8;
  if (!qword_1EC6483E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6483E8);
  }

  return result;
}

uint64_t sub_1D19BAB80(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6353746573657270 && a2 == 0xEE006F6972616E65;
  if (v4 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x664F7265626D756ELL && a2 == 0xEF73746573657250 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7374726F70707573 && a2 == 0xED000073656D614ELL)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D1E6904C();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t static StaticBasicInfoCluster.ProductAppearance.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a2[2];
  if (a1[2])
  {
    if ((a2[2] & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (a1[1] != a2[1])
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1D19BAF38()
{
  if (*v0)
  {
    return 0x437972616D697270;
  }

  else
  {
    return 0x6873696E6966;
  }
}

uint64_t sub_1D19BAF78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6873696E6966 && a2 == 0xE600000000000000;
  if (v6 || (sub_1D1E6904C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x437972616D697270 && a2 == 0xEC000000726F6C6FLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D1E6904C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1D19BB054(uint64_t a1)
{
  v2 = sub_1D19BE17C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D19BB090(uint64_t a1)
{
  v2 = sub_1D19BE17C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticBasicInfoCluster.ProductAppearance.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6483F0, &qword_1D1E8C6F0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = v1[1];
  v12 = v1[2];
  v13 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D19BE17C();
  sub_1D1E6930C();
  v18 = v8;
  v17 = 0;
  type metadata accessor for MTRBasicInformationProductFinish(0);
  sub_1D19BFFB8(&qword_1EC648400, type metadata accessor for MTRBasicInformationProductFinish, &protocol conformance descriptor for MTRBasicInformationProductFinish);
  sub_1D1E68F1C();
  if (!v2)
  {
    v15 = v13;
    v16 = v12;
    v14 = 1;
    type metadata accessor for MTRBasicInformationColor(0);
    sub_1D19BFFB8(&qword_1EC648408, type metadata accessor for MTRBasicInformationColor, &protocol conformance descriptor for MTRBasicInformationColor);
    sub_1D1E68E5C();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t StaticBasicInfoCluster.ProductAppearance.hash(into:)()
{
  v1 = *(v0 + 2);
  sub_1D1E6922C();
  if ((v1 & 1) == 0)
  {
    sub_1D1E6922C();
  }

  return sub_1D1E6922C();
}

uint64_t StaticBasicInfoCluster.ProductAppearance.hashValue.getter()
{
  v1 = *(v0 + 2);
  sub_1D1E6920C();
  sub_1D1E6922C();
  if ((v1 & 1) == 0)
  {
    sub_1D1E6922C();
  }

  sub_1D1E6922C();
  return sub_1D1E6926C();
}

uint64_t StaticBasicInfoCluster.ProductAppearance.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648410, &qword_1D1E8C6F8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D19BE17C();
  sub_1D1E692FC();
  if (!v2)
  {
    type metadata accessor for MTRBasicInformationProductFinish(0);
    v17 = 0;
    sub_1D19BFFB8(&qword_1EC648418, type metadata accessor for MTRBasicInformationProductFinish, &protocol conformance descriptor for MTRBasicInformationProductFinish);
    sub_1D1E68D7C();
    v9 = v18;
    type metadata accessor for MTRBasicInformationColor(0);
    v14 = 1;
    sub_1D19BFFB8(&qword_1EC648420, type metadata accessor for MTRBasicInformationColor, &protocol conformance descriptor for MTRBasicInformationColor);
    sub_1D1E68CBC();
    (*(v6 + 8))(v8, v5);
    v10 = v15;
    v11 = v16;
    *a2 = v9;
    a2[1] = v10;
    a2[2] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D19BB604(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    v2 = a2[2];
    if (a1[2])
    {
      if (a2[2])
      {
        return 1;
      }
    }

    else
    {
      if (a1[1] != a2[1])
      {
        v2 = 1;
      }

      if ((v2 & 1) == 0)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1D19BB64C()
{
  v1 = *(v0 + 2);
  sub_1D1E6920C();
  sub_1D1E6922C();
  if ((v1 & 1) == 0)
  {
    sub_1D1E6922C();
  }

  sub_1D1E6922C();
  return sub_1D1E6926C();
}

uint64_t sub_1D19BB6C8()
{
  v1 = *(v0 + 2);
  sub_1D1E6922C();
  if ((v1 & 1) == 0)
  {
    sub_1D1E6922C();
  }

  return sub_1D1E6922C();
}

uint64_t sub_1D19BB720(uint64_t a1)
{
  v2 = *(v1 + 2);
  sub_1D1E6920C();
  sub_1D1E6922C();
  if ((v2 & 1) == 0)
  {
    sub_1D1E6922C();
  }

  sub_1D1E6922C();
  return sub_1D1E6926C();
}

uint64_t StaticBasicInfoCluster.vendorName.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticBasicInfoCluster(0) + 20));

  return v1;
}

uint64_t StaticBasicInfoCluster.productName.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticBasicInfoCluster(0) + 28));

  return v1;
}

uint64_t StaticBasicInfoCluster.nodeLabel.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticBasicInfoCluster(0) + 36));

  return v1;
}

uint64_t StaticBasicInfoCluster.location.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticBasicInfoCluster(0) + 40));

  return v1;
}

uint64_t StaticBasicInfoCluster.hardwareVersionString.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticBasicInfoCluster(0) + 48));

  return v1;
}

uint64_t StaticBasicInfoCluster.softwareVersionString.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticBasicInfoCluster(0) + 56));

  return v1;
}

uint64_t StaticBasicInfoCluster.manufacturingDate.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticBasicInfoCluster(0) + 60));

  return v1;
}

uint64_t StaticBasicInfoCluster.partNumber.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticBasicInfoCluster(0) + 64));

  return v1;
}

uint64_t StaticBasicInfoCluster.productURL.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticBasicInfoCluster(0) + 68));

  return v1;
}

uint64_t StaticBasicInfoCluster.productLabel.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticBasicInfoCluster(0) + 72));

  return v1;
}

uint64_t StaticBasicInfoCluster.serialNumber.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticBasicInfoCluster(0) + 76));

  return v1;
}

uint64_t StaticBasicInfoCluster.uniqueID.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticBasicInfoCluster(0) + 88));

  return v1;
}

uint64_t StaticBasicInfoCluster.productAppearance.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for StaticBasicInfoCluster(0);
  v4 = (v1 + *(result + 92));
  v5 = *v4;
  v6 = *(v4 + 2);
  LOBYTE(v4) = *(v4 + 3);
  *(a1 + 2) = v6;
  *a1 = v5;
  *(a1 + 3) = v4;
  return result;
}

int *StaticBasicInfoCluster.init(id:vendorName:vendorID:productName:productID:nodeLabel:location:hardwareVersion:hardwareVersionString:softwareVersion:softwareVersionString:manufacturingDate:partNumber:productURL:productLabel:serialNumber:localConfigDisabled:reachable:uniqueID:productAppearance:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, __int16 a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, __int16 a13, uint64_t a14, uint64_t a15, int a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, char a30, uint64_t a31, uint64_t a32, __int16 *a33)
{
  v55 = *(a33 + 2);
  v56 = *(a33 + 3);
  v57 = *a33;
  sub_1D190D804(a1, a9);
  result = type metadata accessor for StaticBasicInfoCluster(0);
  v38 = (a9 + result[5]);
  *v38 = a2;
  v38[1] = a3;
  *(a9 + result[6]) = a4;
  v39 = (a9 + result[7]);
  *v39 = a5;
  v39[1] = a6;
  *(a9 + result[8]) = a7;
  v40 = (a9 + result[9]);
  *v40 = a8;
  v40[1] = a10;
  v41 = (a9 + result[10]);
  *v41 = a11;
  v41[1] = a12;
  *(a9 + result[11]) = a13;
  v42 = (a9 + result[12]);
  *v42 = a14;
  v42[1] = a15;
  *(a9 + result[13]) = a16;
  v43 = (a9 + result[14]);
  *v43 = a17;
  v43[1] = a18;
  v44 = (a9 + result[15]);
  *v44 = a19;
  v44[1] = a20;
  v45 = (a9 + result[16]);
  *v45 = a21;
  v45[1] = a22;
  v46 = (a9 + result[17]);
  *v46 = a23;
  v46[1] = a24;
  v47 = (a9 + result[18]);
  *v47 = a25;
  v47[1] = a26;
  v48 = (a9 + result[19]);
  *v48 = a27;
  v48[1] = a28;
  *(a9 + result[20]) = a29;
  *(a9 + result[21]) = a30;
  v49 = (a9 + result[22]);
  *v49 = a31;
  v49[1] = a32;
  v50 = a9 + result[23];
  *(v50 + 2) = v55;
  *v50 = v57;
  *(v50 + 3) = v56;
  return result;
}

uint64_t sub_1D19BBE44(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x614E726F646E6576;
      break;
    case 2:
      result = 0x4449726F646E6576;
      break;
    case 3:
      result = 0x4E746375646F7270;
      break;
    case 4:
      result = 0x49746375646F7270;
      break;
    case 5:
      result = 0x6562614C65646F6ELL;
      break;
    case 6:
      result = 0x6E6F697461636F6CLL;
      break;
    case 7:
      v3 = 1685217640;
      goto LABEL_13;
    case 8:
    case 10:
      result = 0xD000000000000015;
      break;
    case 9:
      v3 = 1952870259;
LABEL_13:
      result = v3 | 0x6572617700000000;
      break;
    case 11:
      result = 0xD000000000000011;
      break;
    case 12:
      result = 0x626D754E74726170;
      break;
    case 13:
      result = 0x55746375646F7270;
      break;
    case 14:
      result = 0x4C746375646F7270;
      break;
    case 15:
      result = 0x754E6C6169726573;
      break;
    case 16:
      result = 0xD000000000000013;
      break;
    case 17:
      result = 0x6C62616863616572;
      break;
    case 18:
      result = 0x4449657571696E75;
      break;
    case 19:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D19BC08C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D19BF94C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D19BC0C0(uint64_t a1)
{
  v2 = sub_1D19BEE60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D19BC0FC(uint64_t a1)
{
  v2 = sub_1D19BEE60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticBasicInfoCluster.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648428, &qword_1D1E8C700);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D19BEE60();
  sub_1D1E6930C();
  LOBYTE(v15) = 0;
  type metadata accessor for ClusterPath(0);
  sub_1D19BFFB8(&qword_1EC646D88, type metadata accessor for ClusterPath, &protocol conformance descriptor for ClusterPath);
  sub_1D1E68F1C();
  if (!v2)
  {
    v9 = type metadata accessor for StaticBasicInfoCluster(0);
    LOBYTE(v15) = 1;
    sub_1D1E68ECC();
    LOBYTE(v15) = 2;
    sub_1D1E68EFC();
    LOBYTE(v15) = 3;
    sub_1D1E68ECC();
    LOBYTE(v15) = 4;
    sub_1D1E68F4C();
    LOBYTE(v15) = 5;
    sub_1D1E68ECC();
    LOBYTE(v15) = 6;
    sub_1D1E68ECC();
    LOBYTE(v15) = 7;
    sub_1D1E68F4C();
    LOBYTE(v15) = 8;
    sub_1D1E68ECC();
    LOBYTE(v15) = 9;
    sub_1D1E68F5C();
    LOBYTE(v15) = 10;
    sub_1D1E68ECC();
    LOBYTE(v15) = 11;
    sub_1D1E68E0C();
    LOBYTE(v15) = 12;
    sub_1D1E68E0C();
    LOBYTE(v15) = 13;
    sub_1D1E68E0C();
    LOBYTE(v15) = 14;
    sub_1D1E68E0C();
    LOBYTE(v15) = 15;
    sub_1D1E68E0C();
    LOBYTE(v15) = 16;
    sub_1D1E68E1C();
    LOBYTE(v15) = 17;
    sub_1D1E68E1C();
    LOBYTE(v15) = 18;
    sub_1D1E68E0C();
    v10 = (v3 + *(v9 + 92));
    v11 = *v10;
    v12 = *(v10 + 2);
    LOBYTE(v10) = *(v10 + 3);
    v16 = v12;
    v15 = v11;
    v17 = v10;
    v14[11] = 19;
    sub_1D19BEEB4();
    sub_1D1E68E5C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t StaticBasicInfoCluster.hash(into:)(uint64_t a1)
{
  sub_1D1E66A7C();
  sub_1D19BFFB8(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  v2 = type metadata accessor for EndpointPath(0);
  MEMORY[0x1D3892890](*(v1 + *(v2 + 20)));
  sub_1D1E6923C();
  type metadata accessor for ClusterPath(0);
  sub_1D1E6924C();
  v3 = type metadata accessor for StaticBasicInfoCluster(0);
  sub_1D1E678EC();
  MEMORY[0x1D3892850](*(v1 + v3[6]));
  sub_1D1E678EC();
  sub_1D1E6923C();
  sub_1D1E678EC();
  sub_1D1E678EC();
  sub_1D1E6923C();
  sub_1D1E678EC();
  sub_1D1E6924C();
  sub_1D1E678EC();
  if (*(v1 + v3[15] + 8))
  {
    sub_1D1E6922C();
    sub_1D1E678EC();
  }

  else
  {
    sub_1D1E6922C();
  }

  if (*(v1 + v3[16] + 8))
  {
    sub_1D1E6922C();
    sub_1D1E678EC();
  }

  else
  {
    sub_1D1E6922C();
  }

  if (*(v1 + v3[17] + 8))
  {
    sub_1D1E6922C();
    sub_1D1E678EC();
  }

  else
  {
    sub_1D1E6922C();
  }

  if (*(v1 + v3[18] + 8))
  {
    sub_1D1E6922C();
    sub_1D1E678EC();
  }

  else
  {
    sub_1D1E6922C();
  }

  if (*(v1 + v3[19] + 8))
  {
    sub_1D1E6922C();
    sub_1D1E678EC();
  }

  else
  {
    sub_1D1E6922C();
  }

  if (*(v1 + v3[20]) != 2)
  {
    sub_1D1E6922C();
  }

  sub_1D1E6922C();
  if (*(v1 + v3[21]) != 2)
  {
    sub_1D1E6922C();
  }

  sub_1D1E6922C();
  if (*(v1 + v3[22] + 8))
  {
    sub_1D1E6922C();
    sub_1D1E678EC();
  }

  else
  {
    sub_1D1E6922C();
  }

  v4 = (v1 + v3[23]);
  if ((*(v4 + 3) & 1) == 0)
  {
    v5 = *v4 | (*(v4 + 2) << 16);
    sub_1D1E6922C();
    sub_1D1E6922C();
    if ((v5 & 0x10000) == 0)
    {
      sub_1D1E6922C();
    }
  }

  return sub_1D1E6922C();
}

uint64_t StaticBasicInfoCluster.hashValue.getter()
{
  sub_1D1E6920C();
  StaticBasicInfoCluster.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t StaticBasicInfoCluster.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v4 = type metadata accessor for ClusterPath(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648440, &qword_1D1E8C708);
  v61 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v8 = &v57 - v7;
  v9 = type metadata accessor for StaticBasicInfoCluster(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v64 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_1D19BEE60();
  v62 = v8;
  sub_1D1E692FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v64);
  }

  v13 = v60;
  v58 = v9;
  v59 = v11;
  LOBYTE(v66) = 0;
  sub_1D19BFFB8(&qword_1EC646DC0, type metadata accessor for ClusterPath, &protocol conformance descriptor for ClusterPath);
  sub_1D1E68D7C();
  v14 = v59;
  sub_1D190D804(v6, v59);
  LOBYTE(v66) = 1;
  v15 = sub_1D1E68D2C();
  v16 = v58;
  v17 = (v14 + v58[5]);
  *v17 = v15;
  v17[1] = v18;
  LOBYTE(v66) = 2;
  *(v14 + v16[6]) = sub_1D1E68D5C();
  LOBYTE(v66) = 3;
  v19 = sub_1D1E68D2C();
  v20 = (v14 + v16[7]);
  *v20 = v19;
  v20[1] = v21;
  LOBYTE(v66) = 4;
  *(v14 + v16[8]) = sub_1D1E68DAC();
  LOBYTE(v66) = 5;
  v22 = sub_1D1E68D2C();
  v23 = (v14 + v16[9]);
  *v23 = v22;
  v23[1] = v24;
  LOBYTE(v66) = 6;
  v25 = sub_1D1E68D2C();
  v26 = (v14 + v16[10]);
  *v26 = v25;
  v26[1] = v27;
  LOBYTE(v66) = 7;
  *&v59[v58[11]] = sub_1D1E68DAC();
  LOBYTE(v66) = 8;
  v28 = sub_1D1E68D2C();
  v29 = &v59[v58[12]];
  *v29 = v28;
  v29[1] = v30;
  LOBYTE(v66) = 9;
  *&v59[v58[13]] = sub_1D1E68DBC();
  LOBYTE(v66) = 10;
  v31 = sub_1D1E68D2C();
  v32 = &v59[v58[14]];
  *v32 = v31;
  v32[1] = v33;
  LOBYTE(v66) = 11;
  v34 = sub_1D1E68C6C();
  v35 = &v59[v58[15]];
  *v35 = v34;
  v35[1] = v36;
  LOBYTE(v66) = 12;
  v37 = sub_1D1E68C6C();
  v38 = &v59[v58[16]];
  *v38 = v37;
  v38[1] = v39;
  LOBYTE(v66) = 13;
  v40 = sub_1D1E68C6C();
  v41 = &v59[v58[17]];
  *v41 = v40;
  v41[1] = v42;
  LOBYTE(v66) = 14;
  v43 = sub_1D1E68C6C();
  v44 = &v59[v58[18]];
  *v44 = v43;
  v44[1] = v45;
  LOBYTE(v66) = 15;
  v46 = sub_1D1E68C6C();
  v47 = &v59[v58[19]];
  *v47 = v46;
  v47[1] = v48;
  LOBYTE(v66) = 16;
  v59[v58[20]] = sub_1D1E68C7C();
  LOBYTE(v66) = 17;
  v59[v58[21]] = sub_1D1E68C7C();
  LOBYTE(v66) = 18;
  v49 = sub_1D1E68C6C();
  v50 = &v59[v58[22]];
  *v50 = v49;
  v50[1] = v51;
  v65 = 19;
  sub_1D19BEF08();
  sub_1D1E68CBC();
  (*(v61 + 8))(v62, v63);
  v52 = v66;
  v53 = v68;
  v54 = v59;
  v55 = &v59[v58[23]];
  v55[2] = v67;
  *v55 = v52;
  v55[3] = v53;
  sub_1D19BEF5C(v54, v13, type metadata accessor for StaticBasicInfoCluster);
  __swift_destroy_boxed_opaque_existential_1(v64);
  return sub_1D19BEFC4(v54, type metadata accessor for StaticBasicInfoCluster);
}

uint64_t sub_1D19BD608()
{
  sub_1D1E6920C();
  StaticBasicInfoCluster.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D19BD64C(uint64_t a1)
{
  sub_1D1E6920C();
  StaticBasicInfoCluster.hash(into:)(v2);
  return sub_1D1E6926C();
}

uint64_t StaticBasicInfoCluster.init(path:valueSource:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v87 = a3;
  v5 = type metadata accessor for ClusterPath(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for StaticBasicInfoCluster(0);
  v86 = *(v8 - 1);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a2;
  v11 = *(a2 + 8);
  sub_1D19BEF5C(a1, v10, type metadata accessor for ClusterPath);
  sub_1D19BEF5C(a1, v7, type metadata accessor for ClusterPath);
  v13 = sub_1D1912A98(1, v7, v12, v11);
  v15 = v14;
  sub_1D19BEFC4(v7, type metadata accessor for ClusterPath);
  if (!v15 || (v85 = v5, v16 = &v10[v8[5]], *v16 = v13, v16[1] = v15, sub_1D19BEF5C(a1, v7, type metadata accessor for ClusterPath), v17 = sub_1D19BE21C(2, v7, v12, v11), v19 = v18, sub_1D19BEFC4(v7, type metadata accessor for ClusterPath), (v19 & 1) != 0) || (*&v10[v8[6]] = v17, sub_1D19BEF5C(a1, v7, type metadata accessor for ClusterPath), v20 = sub_1D1912A98(3, v7, v12, v11), v22 = v21, sub_1D19BEFC4(v7, type metadata accessor for ClusterPath), !v22))
  {
    v71 = 0;
    v72 = 0;
    v73 = 0;
    v74 = 0;
    goto LABEL_17;
  }

  v23 = &v10[v8[7]];
  *v23 = v20;
  v23[1] = v22;
  sub_1D19BEF5C(a1, v7, type metadata accessor for ClusterPath);
  v24 = sub_1D18F5A60(4, v7, v12, v11);
  sub_1D19BEFC4(v7, type metadata accessor for ClusterPath);
  if ((v24 & 0x10000) != 0 || (*&v10[v8[8]] = v24, sub_1D19BEF5C(a1, v7, type metadata accessor for ClusterPath), v25 = sub_1D1912A98(5, v7, v12, v11), v27 = v26, sub_1D19BEFC4(v7, type metadata accessor for ClusterPath), !v27))
  {
    v72 = 0;
    v73 = 0;
    v74 = 0;
    v71 = 1;
    goto LABEL_17;
  }

  v28 = &v10[v8[9]];
  *v28 = v25;
  v28[1] = v27;
  sub_1D19BEF5C(a1, v7, type metadata accessor for ClusterPath);
  v29 = sub_1D1912A98(6, v7, v12, v11);
  v31 = v30;
  sub_1D19BEFC4(v7, type metadata accessor for ClusterPath);
  if (!v31)
  {
    v73 = 0;
    v74 = 0;
    v71 = 1;
    v72 = 1;
    goto LABEL_17;
  }

  v32 = &v10[v8[10]];
  *v32 = v29;
  v32[1] = v31;
  sub_1D19BEF5C(a1, v7, type metadata accessor for ClusterPath);
  v33 = sub_1D18F5A60(7, v7, v12, v11);
  sub_1D19BEFC4(v7, type metadata accessor for ClusterPath);
  if ((v33 & 0x10000) != 0 || (*&v10[v8[11]] = v33, sub_1D19BEF5C(a1, v7, type metadata accessor for ClusterPath), v34 = sub_1D1912A98(8, v7, v12, v11), v36 = v35, sub_1D19BEFC4(v7, type metadata accessor for ClusterPath), !v36))
  {
    v74 = 0;
    v71 = 1;
    v72 = 1;
    v73 = 1;
    goto LABEL_17;
  }

  v37 = &v10[v8[12]];
  *v37 = v34;
  v37[1] = v36;
  sub_1D19BEF5C(a1, v7, type metadata accessor for ClusterPath);
  v38 = sub_1D192B170(9, v7, v12, v11);
  sub_1D19BEFC4(v7, type metadata accessor for ClusterPath);
  if ((v38 & 0x100000000) != 0 || (*&v10[v8[13]] = v38, sub_1D19BEF5C(a1, v7, type metadata accessor for ClusterPath), v39 = sub_1D1912A98(10, v7, v12, v11), v41 = v40, sub_1D19BEFC4(v7, type metadata accessor for ClusterPath), !v41))
  {
    v71 = 1;
    v72 = 1;
    v73 = 1;
    v74 = 1;
LABEL_17:
    sub_1D19BEFC4(a1, type metadata accessor for ClusterPath);

    sub_1D19BEFC4(v10, type metadata accessor for ClusterPath);
    if (v15)
    {
    }

    if (v71)
    {

      if (!v72)
      {
LABEL_21:
        if (!v73)
        {
          goto LABEL_22;
        }

        goto LABEL_27;
      }
    }

    else if (!v72)
    {
      goto LABEL_21;
    }

    if (!v73)
    {
LABEL_22:
      if (!v74)
      {
        return (*(v86 + 56))(v87, 1, 1, v8);
      }

LABEL_23:

      return (*(v86 + 56))(v87, 1, 1, v8);
    }

LABEL_27:

    if (!v74)
    {
      return (*(v86 + 56))(v87, 1, 1, v8);
    }

    goto LABEL_23;
  }

  v42 = &v10[v8[14]];
  *v42 = v39;
  v42[1] = v41;
  sub_1D19BEF5C(a1, v7, type metadata accessor for ClusterPath);
  v43 = sub_1D1912A98(11, v7, v12, v11);
  v45 = v44;
  sub_1D19BEFC4(v7, type metadata accessor for ClusterPath);
  v46 = &v10[v8[15]];
  *v46 = v43;
  v46[1] = v45;
  sub_1D19BEF5C(a1, v7, type metadata accessor for ClusterPath);
  v47 = sub_1D1912A98(12, v7, v12, v11);
  v49 = v48;
  sub_1D19BEFC4(v7, type metadata accessor for ClusterPath);
  v50 = &v10[v8[16]];
  *v50 = v47;
  v50[1] = v49;
  sub_1D19BEF5C(a1, v7, type metadata accessor for ClusterPath);
  v51 = sub_1D1912A98(13, v7, v12, v11);
  v53 = v52;
  sub_1D19BEFC4(v7, type metadata accessor for ClusterPath);
  v54 = &v10[v8[17]];
  *v54 = v51;
  v54[1] = v53;
  sub_1D19BEF5C(a1, v7, type metadata accessor for ClusterPath);
  v55 = sub_1D1912A98(14, v7, v12, v11);
  v57 = v56;
  sub_1D19BEFC4(v7, type metadata accessor for ClusterPath);
  v58 = &v10[v8[18]];
  *v58 = v55;
  v58[1] = v57;
  sub_1D19BEF5C(a1, v7, type metadata accessor for ClusterPath);
  v59 = sub_1D1912A98(15, v7, v12, v11);
  v61 = v60;
  sub_1D19BEFC4(v7, type metadata accessor for ClusterPath);
  v62 = &v10[v8[19]];
  *v62 = v59;
  v62[1] = v61;
  sub_1D19BEF5C(a1, v7, type metadata accessor for ClusterPath);
  LOBYTE(v59) = sub_1D19BE5F8(16, v7, v12, v11);
  sub_1D19BEFC4(v7, type metadata accessor for ClusterPath);
  v10[v8[20]] = v59;
  sub_1D19BEF5C(a1, v7, type metadata accessor for ClusterPath);
  LOBYTE(v59) = sub_1D19BE5F8(17, v7, v12, v11);
  sub_1D19BEFC4(v7, type metadata accessor for ClusterPath);
  v10[v8[21]] = v59;
  sub_1D19BEF5C(a1, v7, type metadata accessor for ClusterPath);
  v63 = sub_1D1912A98(18, v7, v12, v11);
  v65 = v64;
  sub_1D19BEFC4(v7, type metadata accessor for ClusterPath);
  v66 = &v10[v8[22]];
  *v66 = v63;
  v66[1] = v65;
  v91 = v85;
  v92 = sub_1D19BFFB8(&qword_1EC646A70, type metadata accessor for ClusterPath, &protocol conformance descriptor for ClusterPath);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v90);
  sub_1D19BEF5C(a1, boxed_opaque_existential_1, type metadata accessor for ClusterPath);
  v88 = v12;
  v89 = v11;
  AttributeValueSet.value(for:in:)(20, v90, v93);

  __swift_destroy_boxed_opaque_existential_1(v90);
  sub_1D18C20AC(v93, v90);
  if (v91)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
    sub_1D19BF024();
    if (swift_dynamicCast())
    {
      v68 = v88;
      v69 = [v88 finish];
      *v90 = 256;
      sub_1D1E691CC();

      if (v90[1] != 1)
      {
        v80 = v90[0];
        v81 = [v68 primaryColor];
        if (v81)
        {
          *v90 = 256;
          v82 = v81;
          sub_1D1E691CC();

          sub_1D19BEFC4(a1, type metadata accessor for ClusterPath);
          sub_1D18F49A8(v93);
          if (v90[1])
          {
            v83 = 0;
          }

          else
          {
            v83 = v90[0];
          }

          if (v90[1])
          {
            v84 = 0x10000;
          }

          else
          {
            v84 = 0;
          }
        }

        else
        {

          sub_1D19BEFC4(a1, type metadata accessor for ClusterPath);
          sub_1D18F49A8(v93);
          v83 = 0;
          v84 = 0x10000;
        }

        v77 = 0;
        v76 = v80 & 0xFFFF00FF | (v83 << 8) | v84;
        goto LABEL_35;
      }
    }

    sub_1D19BEFC4(a1, type metadata accessor for ClusterPath);
    v70 = v93;
  }

  else
  {
    sub_1D19BEFC4(a1, type metadata accessor for ClusterPath);
    sub_1D18F49A8(v93);
    v70 = v90;
  }

  sub_1D18F49A8(v70);
  v76 = 0;
  v77 = 1;
LABEL_35:
  v78 = &v10[v8[23]];
  v78[2] = BYTE2(v76);
  *v78 = v76;
  v78[3] = v77;
  v79 = v87;
  sub_1D19BEF5C(v10, v87, type metadata accessor for StaticBasicInfoCluster);
  (*(v86 + 56))(v79, 0, 1, v8);
  return sub_1D19BEFC4(v10, type metadata accessor for StaticBasicInfoCluster);
}

unint64_t sub_1D19BE17C()
{
  result = qword_1EC6483F8;
  if (!qword_1EC6483F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6483F8);
  }

  return result;
}

uint64_t type metadata accessor for StaticBasicInfoCluster(uint64_t a1)
{
  result = qword_1EE07C308;
  if (!qword_1EE07C308)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D19BE21C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for ClusterPath(0);
  v40[3] = v8;
  v40[4] = sub_1D19BFFB8(&qword_1EC646A70, type metadata accessor for ClusterPath, &protocol conformance descriptor for ClusterPath);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v40);
  sub_1D19BEF5C(a2, boxed_opaque_existential_1, type metadata accessor for ClusterPath);
  *&v33 = a3;
  *(&v33 + 1) = a4;
  AttributeValueSet.value(for:in:)(a1, v40, v39);
  sub_1D18C20AC(v39, &v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645D58, &unk_1D1E7E530);
  v10 = swift_dynamicCast();
  if ((v10 & 1) == 0)
  {
    v37 = 0;
  }

  v38 = v10 ^ 1;
  sub_1D18C20AC(v39, &v33);
  if (v34)
  {
    sub_1D1742194(&v33, v36);
    if (v38)
    {
      LOBYTE(v33) = *(boxed_opaque_existential_1 + *(v8 + 20));
      v11 = sub_1D1A38104(a1, &v33);
      v13 = v12;
      if (qword_1EE07A0A8 != -1)
      {
        swift_once();
      }

      v14 = sub_1D1E6709C();
      __swift_project_value_buffer(v14, qword_1EE07A0B0);
      sub_1D1741970(v36, v35);
      sub_1D17419CC(v40, &v33);

      v15 = sub_1D1E6707C();
      v16 = sub_1D1E6833C();

      if (!os_log_type_enabled(v15, v16))
      {

        __swift_destroy_boxed_opaque_existential_1(v35);
        __swift_destroy_boxed_opaque_existential_1(v36);
        sub_1D18F49A8(v39);
        __swift_destroy_boxed_opaque_existential_1(&v33);
        goto LABEL_12;
      }

      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v32 = v18;
      *v17 = 136446978;
      v19 = sub_1D1B1312C(v11, v13, &v32);

      *(v17 + 4) = v19;
      *(v17 + 12) = 2082;
      *(v17 + 14) = sub_1D1B1312C(7630409, 0xE300000000000000, &v32);
      *(v17 + 22) = 2082;
      sub_1D1741970(v35, v31);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
      v20 = sub_1D1E678BC();
      v22 = v21;
      __swift_destroy_boxed_opaque_existential_1(v35);
      v23 = sub_1D1B1312C(v20, v22, &v32);

      *(v17 + 24) = v23;
      *(v17 + 32) = 2082;
      __swift_project_boxed_opaque_existential_1(&v33, v34);
      v24 = ClusterPath.description.getter();
      v26 = v25;
      __swift_destroy_boxed_opaque_existential_1(&v33);
      v27 = sub_1D1B1312C(v24, v26, &v32);

      *(v17 + 34) = v27;
      _os_log_impl(&dword_1D16EC000, v15, v16, "Retrieved value for (%{public}s) but could not decoded it to %{public}s. result:(%{public}s) path:'%{public}s'", v17, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v18, -1, -1);
      MEMORY[0x1D3893640](v17, -1, -1);
    }

    __swift_destroy_boxed_opaque_existential_1(v36);
    v28 = v39;
  }

  else
  {
    sub_1D18F49A8(v39);
    v28 = &v33;
  }

  sub_1D18F49A8(v28);
LABEL_12:
  v29 = v37;
  __swift_destroy_boxed_opaque_existential_1(v40);
  return v29;
}

uint64_t sub_1D19BE5F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for ClusterPath(0);
  v38[3] = v8;
  v38[4] = sub_1D19BFFB8(&qword_1EC646A70, type metadata accessor for ClusterPath, &protocol conformance descriptor for ClusterPath);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v38);
  sub_1D19BEF5C(a2, boxed_opaque_existential_1, type metadata accessor for ClusterPath);
  *&v32 = a3;
  *(&v32 + 1) = a4;
  AttributeValueSet.value(for:in:)(a1, v38, v37);
  sub_1D18C20AC(v37, &v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645D58, &unk_1D1E7E530);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v36 = 2;
  }

  sub_1D18C20AC(v37, &v32);
  if (v33)
  {
    sub_1D1742194(&v32, v35);
    if (v36 == 2)
    {
      LOBYTE(v32) = *(boxed_opaque_existential_1 + *(v8 + 20));
      v10 = sub_1D1A38104(a1, &v32);
      v12 = v11;
      if (qword_1EE07A0A8 != -1)
      {
        swift_once();
      }

      v13 = sub_1D1E6709C();
      __swift_project_value_buffer(v13, qword_1EE07A0B0);
      sub_1D1741970(v35, v34);
      sub_1D17419CC(v38, &v32);

      v14 = sub_1D1E6707C();
      v15 = sub_1D1E6833C();

      if (!os_log_type_enabled(v14, v15))
      {

        __swift_destroy_boxed_opaque_existential_1(v34);
        __swift_destroy_boxed_opaque_existential_1(v35);
        sub_1D18F49A8(v37);
        __swift_destroy_boxed_opaque_existential_1(&v32);
        goto LABEL_12;
      }

      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v31 = v17;
      *v16 = 136446978;
      v18 = sub_1D1B1312C(v10, v12, &v31);

      *(v16 + 4) = v18;
      *(v16 + 12) = 2082;
      *(v16 + 14) = sub_1D1B1312C(1819242306, 0xE400000000000000, &v31);
      *(v16 + 22) = 2082;
      sub_1D1741970(v34, &v30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
      v19 = sub_1D1E678BC();
      v21 = v20;
      __swift_destroy_boxed_opaque_existential_1(v34);
      v22 = sub_1D1B1312C(v19, v21, &v31);

      *(v16 + 24) = v22;
      *(v16 + 32) = 2082;
      __swift_project_boxed_opaque_existential_1(&v32, v33);
      v23 = ClusterPath.description.getter();
      v25 = v24;
      __swift_destroy_boxed_opaque_existential_1(&v32);
      v26 = sub_1D1B1312C(v23, v25, &v31);

      *(v16 + 34) = v26;
      _os_log_impl(&dword_1D16EC000, v14, v15, "Retrieved value for (%{public}s) but could not decoded it to %{public}s. result:(%{public}s) path:'%{public}s'", v16, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v17, -1, -1);
      MEMORY[0x1D3893640](v16, -1, -1);
    }

    __swift_destroy_boxed_opaque_existential_1(v35);
    v27 = v37;
  }

  else
  {
    sub_1D18F49A8(v37);
    v27 = &v32;
  }

  sub_1D18F49A8(v27);
LABEL_12:
  v28 = v36;
  __swift_destroy_boxed_opaque_existential_1(v38);
  return v28;
}

BOOL _s13HomeDataModel22StaticBasicInfoClusterV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for EndpointPath(0);
  if (*(a1 + *(v4 + 20)) != *(a2 + *(v4 + 20)))
  {
    return 0;
  }

  if (*(a1 + *(v4 + 24)) != *(a2 + *(v4 + 24)))
  {
    return 0;
  }

  v5 = type metadata accessor for ClusterPath(0);
  if (dword_1D1E8CC84[*(a1 + *(v5 + 20))] != dword_1D1E8CC84[*(a2 + *(v5 + 20))])
  {
    return 0;
  }

  v6 = type metadata accessor for StaticBasicInfoCluster(0);
  v7 = v6[5];
  v8 = *(a1 + v7);
  v9 = *(a1 + v7 + 8);
  v10 = (a2 + v7);
  v11 = v8 == *v10 && v9 == v10[1];
  if (!v11 && (sub_1D1E6904C() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + v6[6]) != *(a2 + v6[6]))
  {
    return 0;
  }

  v12 = v6[7];
  v13 = *(a1 + v12);
  v14 = *(a1 + v12 + 8);
  v15 = (a2 + v12);
  if ((v13 != *v15 || v14 != v15[1]) && (sub_1D1E6904C() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + v6[8]) != *(a2 + v6[8]))
  {
    return 0;
  }

  v16 = v6[9];
  v17 = *(a1 + v16);
  v18 = *(a1 + v16 + 8);
  v19 = (a2 + v16);
  if ((v17 != *v19 || v18 != v19[1]) && (sub_1D1E6904C() & 1) == 0)
  {
    return 0;
  }

  v20 = v6[10];
  v21 = *(a1 + v20);
  v22 = *(a1 + v20 + 8);
  v23 = (a2 + v20);
  if ((v21 != *v23 || v22 != v23[1]) && (sub_1D1E6904C() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + v6[11]) != *(a2 + v6[11]))
  {
    return 0;
  }

  v24 = v6[12];
  v25 = *(a1 + v24);
  v26 = *(a1 + v24 + 8);
  v27 = (a2 + v24);
  if ((v25 != *v27 || v26 != v27[1]) && (sub_1D1E6904C() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + v6[13]) != *(a2 + v6[13]))
  {
    return 0;
  }

  v28 = v6[14];
  v29 = *(a1 + v28);
  v30 = *(a1 + v28 + 8);
  v31 = (a2 + v28);
  if ((v29 != *v31 || v30 != v31[1]) && (sub_1D1E6904C() & 1) == 0)
  {
    return 0;
  }

  v32 = v6[15];
  v33 = (a1 + v32);
  v34 = *(a1 + v32 + 8);
  v35 = (a2 + v32);
  v36 = v35[1];
  if (v34)
  {
    if (!v36 || (*v33 != *v35 || v34 != v36) && (sub_1D1E6904C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v36)
  {
    return 0;
  }

  v37 = v6[16];
  v38 = (a1 + v37);
  v39 = *(a1 + v37 + 8);
  v40 = (a2 + v37);
  v41 = v40[1];
  if (v39)
  {
    if (!v41 || (*v38 != *v40 || v39 != v41) && (sub_1D1E6904C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v41)
  {
    return 0;
  }

  v42 = v6[17];
  v43 = (a1 + v42);
  v44 = *(a1 + v42 + 8);
  v45 = (a2 + v42);
  v46 = v45[1];
  if (v44)
  {
    if (!v46 || (*v43 != *v45 || v44 != v46) && (sub_1D1E6904C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v46)
  {
    return 0;
  }

  v47 = v6[18];
  v48 = (a1 + v47);
  v49 = *(a1 + v47 + 8);
  v50 = (a2 + v47);
  v51 = v50[1];
  if (v49)
  {
    if (!v51 || (*v48 != *v50 || v49 != v51) && (sub_1D1E6904C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v51)
  {
    return 0;
  }

  v52 = v6[19];
  v53 = (a1 + v52);
  v54 = *(a1 + v52 + 8);
  v55 = (a2 + v52);
  v56 = v55[1];
  if (v54)
  {
    if (!v56 || (*v53 != *v55 || v54 != v56) && (sub_1D1E6904C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v56)
  {
    return 0;
  }

  v57 = v6[20];
  v58 = *(a1 + v57);
  v59 = *(a2 + v57);
  if (v58 == 2)
  {
    if (v59 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v59 == 2 || ((v59 ^ v58) & 1) != 0)
    {
      return result;
    }
  }

  v61 = v6[21];
  v62 = *(a1 + v61);
  v63 = *(a2 + v61);
  if (v62 == 2)
  {
    if (v63 != 2)
    {
      return 0;
    }

    goto LABEL_74;
  }

  result = 0;
  if (v63 != 2 && ((v63 ^ v62) & 1) == 0)
  {
LABEL_74:
    v64 = v6[22];
    v65 = (a1 + v64);
    v66 = *(a1 + v64 + 8);
    v67 = (a2 + v64);
    v68 = v67[1];
    if (v66)
    {
      if (!v68 || (*v65 != *v67 || v66 != v68) && (sub_1D1E6904C() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v68)
    {
      return 0;
    }

    v69 = v6[23];
    v70 = (a1 + v69);
    v71 = *(a1 + v69 + 3);
    v72 = (a2 + v69);
    if (v71)
    {
      if (*(v72 + 3))
      {
        return 1;
      }
    }

    else
    {
      if (*(v72 + 3))
      {
        return 0;
      }

      v73 = *v70 | (*(v70 + 2) << 16);
      v74 = *v72 | (*(v72 + 2) << 16);
      if (v73 != v74)
      {
        return 0;
      }

      if ((v73 & 0x10000) == 0)
      {
        return (v74 & 0x10000) == 0 && BYTE1(v73) == BYTE1(v74);
      }

      if ((v74 & 0x10000) != 0)
      {
        return 1;
      }
    }

    return 0;
  }

  return result;
}

unint64_t sub_1D19BEE60()
{
  result = qword_1EC648430;
  if (!qword_1EC648430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648430);
  }

  return result;
}

unint64_t sub_1D19BEEB4()
{
  result = qword_1EC648438;
  if (!qword_1EC648438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648438);
  }

  return result;
}

unint64_t sub_1D19BEF08()
{
  result = qword_1EC648448;
  if (!qword_1EC648448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648448);
  }

  return result;
}

uint64_t sub_1D19BEF5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D19BEFC4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D19BF024()
{
  result = qword_1EC648450;
  if (!qword_1EC648450)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC648450);
  }

  return result;
}

unint64_t sub_1D19BF074()
{
  result = qword_1EC648458;
  if (!qword_1EC648458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648458);
  }

  return result;
}

void sub_1D19BF180(uint64_t a1)
{
  type metadata accessor for ClusterPath(319);
  if (v1 <= 0x3F)
  {
    sub_1D17BDF80(319, qword_1EE07D1F8, MEMORY[0x1E69E6158]);
    if (v2 <= 0x3F)
    {
      sub_1D17BDF80(319, &qword_1EE07D1F0, MEMORY[0x1E69E6370]);
      if (v3 <= 0x3F)
      {
        sub_1D17BDF80(319, qword_1EE07C318, &type metadata for StaticBasicInfoCluster.ProductAppearance);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for StaticBasicInfoCluster.ProductAppearance(unsigned __int16 *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 0x1FFFFFF) >> 24)
  {
    v2 = *(a1 + 3);
    if (!*(a1 + 3))
    {
      return 0;
    }
  }

  else
  {
    v2 = *(a1 + 3);
    if (!*(a1 + 3))
    {
      return 0;
    }
  }

  return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 0xFFFFFF;
}

uint64_t storeEnumTagSinglePayload for StaticBasicInfoCluster.ProductAppearance(uint64_t result, int a2, int a3)
{
  if ((a3 + 0x1FFFFFF) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (!a3)
  {
    v3 = 0;
  }

  if (a2)
  {
    *result = a2 - 1;
    *(result + 2) = (a2 - 1) >> 16;
    if (v3)
    {
      v4 = ((a2 - 1) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else if (v3)
  {
    if (v3 == 2)
    {
      *(result + 3) = 0;
    }

    else
    {
      *(result + 3) = 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StaticBasicInfoCluster.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xED)
  {
    goto LABEL_17;
  }

  if (a2 + 19 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 19) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 19;
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

      return (*a1 | (v4 << 8)) - 19;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 19;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v8 = v6 - 20;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for StaticBasicInfoCluster.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xED)
  {
    v4 = 0;
  }

  if (a2 > 0xEC)
  {
    v5 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
    *result = a2 + 19;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D19BF4F8()
{
  result = qword_1EC648468;
  if (!qword_1EC648468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648468);
  }

  return result;
}

unint64_t sub_1D19BF550()
{
  result = qword_1EC648470;
  if (!qword_1EC648470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648470);
  }

  return result;
}

unint64_t sub_1D19BF5A8()
{
  result = qword_1EC648478;
  if (!qword_1EC648478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648478);
  }

  return result;
}

unint64_t sub_1D19BF600()
{
  result = qword_1EC648480;
  if (!qword_1EC648480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648480);
  }

  return result;
}

unint64_t sub_1D19BF658()
{
  result = qword_1EC648488;
  if (!qword_1EC648488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648488);
  }

  return result;
}

unint64_t sub_1D19BF6B0()
{
  result = qword_1EC648490;
  if (!qword_1EC648490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648490);
  }

  return result;
}

uint64_t sub_1D19BF704(int a1)
{
  result = 0;
  switch(a1)
  {
    case 1:
      result = 0x614E726F646E6576;
      break;
    case 2:
      result = 0x4449726F646E6576;
      break;
    case 3:
      result = 0x4E746375646F7270;
      break;
    case 4:
      result = 0x49746375646F7270;
      break;
    case 5:
      result = 0x6562614C65646F6ELL;
      break;
    case 6:
      result = 0x6E6F697461636F6CLL;
      break;
    case 7:
      v3 = 1685217640;
      goto LABEL_19;
    case 8:
    case 10:
      result = 0xD000000000000015;
      break;
    case 9:
      v3 = 1952870259;
LABEL_19:
      result = v3 | 0x6572617700000000;
      break;
    case 11:
      result = 0xD000000000000011;
      break;
    case 12:
      result = 0x626D754E74726170;
      break;
    case 13:
      result = 0x55746375646F7270;
      break;
    case 14:
      result = 0x4C746375646F7270;
      break;
    case 15:
      result = 0x754E6C6169726573;
      break;
    case 16:
      result = 0xD000000000000013;
      break;
    case 17:
      result = 0x6C62616863616572;
      break;
    case 18:
      result = 0x4449657571696E75;
      break;
    case 20:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D19BF94C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x614E726F646E6576 && a2 == 0xEA0000000000656DLL || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4449726F646E6576 && a2 == 0xE800000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4E746375646F7270 && a2 == 0xEB00000000656D61 || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x49746375646F7270 && a2 == 0xE900000000000044 || (sub_1D1E6904C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6562614C65646F6ELL && a2 == 0xE90000000000006CLL || (sub_1D1E6904C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6572617764726168 && a2 == 0xEF6E6F6973726556 || (sub_1D1E6904C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D1EC1B20 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6572617774666F73 && a2 == 0xEF6E6F6973726556 || (sub_1D1E6904C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D1EC1B40 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D1EC1B60 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x626D754E74726170 && a2 == 0xEA00000000007265 || (sub_1D1E6904C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x55746375646F7270 && a2 == 0xEA00000000004C52 || (sub_1D1E6904C() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x4C746375646F7270 && a2 == 0xEC0000006C656261 || (sub_1D1E6904C() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x754E6C6169726573 && a2 == 0xEC0000007265626DLL || (sub_1D1E6904C() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D1EC1B80 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x6C62616863616572 && a2 == 0xE900000000000065 || (sub_1D1E6904C() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x4449657571696E75 && a2 == 0xE800000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D1EC1BA0 == a2)
  {

    return 19;
  }

  else
  {
    v6 = sub_1D1E6904C();

    if (v6)
    {
      return 19;
    }

    else
    {
      return 20;
    }
  }
}

uint64_t sub_1D19BFFB8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for StaticClusterPowerSource(uint64_t a1)
{
  result = qword_1EE07C010;
  if (!qword_1EE07C010)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

int *StaticClusterPowerSource.init(id:status:order:supportedFeatures:wiredConnected:batteryRemaining:batteryTimeRemaining:batteryChargeLevel:batteryChargeState:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, int a4@<W3>, char a5@<W4>, __int16 a6@<W5>, uint64_t a7@<X6>, __int16 a8@<W7>, uint64_t a9@<X8>, char a10, char a11)
{
  sub_1D190D804(a1, a9);
  result = type metadata accessor for StaticClusterPowerSource(0);
  *(a9 + result[5]) = a2;
  *(a9 + result[6]) = a3;
  *(a9 + result[7]) = a4;
  *(a9 + result[8]) = a5;
  v20 = (a9 + result[9]);
  *v20 = a6;
  v20[1] = HIBYTE(a6) & 1;
  v21 = a9 + result[10];
  *v21 = a7;
  *(v21 + 4) = BYTE4(a7) & 1;
  v22 = (a9 + result[11]);
  *v22 = a8;
  v22[1] = HIBYTE(a8) & 1;
  v23 = (a9 + result[12]);
  *v23 = a10;
  v23[1] = a11 & 1;
  return result;
}

uint64_t sub_1D19C0320(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v4 = 25705;
    v5 = 0x726564726FLL;
    if (a1 != 2)
    {
      v5 = 0xD000000000000011;
    }

    if (a1)
    {
      v4 = 0x737574617473;
    }

    if (a1 <= 1u)
    {
      return v4;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0xD000000000000014;
    if (a1 != 6)
    {
      v1 = 0xD000000000000012;
    }

    v2 = 0x6E6F436465726977;
    if (a1 != 4)
    {
      v2 = 0xD000000000000010;
    }

    if (a1 <= 5u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1D19C0454@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D19C2794(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D19C047C(uint64_t a1)
{
  v2 = sub_1D19C2288();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D19C04B8(uint64_t a1)
{
  v2 = sub_1D19C2288();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticClusterPowerSource.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6484A8, &qword_1D1E8CD00);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D19C2288();
  sub_1D1E6930C();
  LOBYTE(v17) = 0;
  type metadata accessor for ClusterPath(0);
  sub_1D19C2434(&qword_1EC646D88, type metadata accessor for ClusterPath, &protocol conformance descriptor for ClusterPath);
  sub_1D1E68F1C();
  if (!v2)
  {
    v9 = type metadata accessor for StaticClusterPowerSource(0);
    LOBYTE(v17) = *(v3 + v9[5]);
    v18 = 1;
    type metadata accessor for MTRPowerSourceStatus(0);
    sub_1D19C2434(&qword_1EC6484B8, type metadata accessor for MTRPowerSourceStatus, &protocol conformance descriptor for MTRPowerSourceStatus);
    sub_1D1E68F1C();
    LOBYTE(v17) = 2;
    sub_1D1E68F3C();
    v17 = *(v3 + v9[7]);
    v18 = 3;
    type metadata accessor for MTRPowerSourceFeature(0);
    sub_1D19C2434(&qword_1EC6484C0, type metadata accessor for MTRPowerSourceFeature, &protocol conformance descriptor for MTRPowerSourceFeature);
    sub_1D1E68F1C();
    LOBYTE(v17) = 4;
    sub_1D1E68E1C();
    LOBYTE(v17) = 5;
    sub_1D1E68E8C();
    v10 = *(v3 + v9[10] + 4);
    LOBYTE(v17) = 6;
    v18 = v10;
    sub_1D1E68EAC();
    v11 = (v3 + v9[11]);
    v12 = *v11;
    LOBYTE(v11) = v11[1];
    LOBYTE(v17) = v12;
    BYTE1(v17) = v11;
    v18 = 7;
    type metadata accessor for MTRPowerSourceBatChargeLevel(0);
    sub_1D19C2434(&qword_1EC6484C8, type metadata accessor for MTRPowerSourceBatChargeLevel, &protocol conformance descriptor for MTRPowerSourceBatChargeLevel);
    sub_1D1E68E5C();
    v13 = (v3 + v9[12]);
    v14 = *v13;
    LOBYTE(v13) = v13[1];
    LOBYTE(v17) = v14;
    BYTE1(v17) = v13;
    v18 = 8;
    type metadata accessor for MTRPowerSourceBatChargeState(0);
    sub_1D19C2434(&qword_1EC6484D0, type metadata accessor for MTRPowerSourceBatChargeState, &protocol conformance descriptor for MTRPowerSourceBatChargeState);
    sub_1D1E68E5C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t StaticClusterPowerSource.hash(into:)(uint64_t a1)
{
  sub_1D1E66A7C();
  sub_1D19C2434(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  v2 = type metadata accessor for EndpointPath(0);
  MEMORY[0x1D3892890](*(v1 + *(v2 + 20)));
  sub_1D1E6923C();
  type metadata accessor for ClusterPath(0);
  sub_1D1E6924C();
  v3 = type metadata accessor for StaticClusterPowerSource(0);
  sub_1D1E6922C();
  sub_1D1E6922C();
  sub_1D1E6924C();
  if (*(v1 + v3[8]) != 2)
  {
    sub_1D1E6922C();
  }

  sub_1D1E6922C();
  if ((*(v1 + v3[9] + 1) & 1) == 0)
  {
    sub_1D1E6922C();
  }

  sub_1D1E6922C();
  if (*(v1 + v3[10] + 4) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    sub_1D1E6922C();
    sub_1D1E6924C();
  }

  if ((*(v1 + v3[11] + 1) & 1) == 0)
  {
    sub_1D1E6922C();
  }

  sub_1D1E6922C();
  if ((*(v1 + v3[12] + 1) & 1) == 0)
  {
    sub_1D1E6922C();
  }

  return sub_1D1E6922C();
}

uint64_t StaticClusterPowerSource.hashValue.getter()
{
  sub_1D1E6920C();
  StaticClusterPowerSource.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t StaticClusterPowerSource.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = type metadata accessor for ClusterPath(0);
  MEMORY[0x1EEE9AC00](v4);
  v29 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6484D8, &qword_1D1E8CD08);
  v28 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v7 = &v26 - v6;
  v8 = type metadata accessor for StaticClusterPowerSource(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[3];
  v31 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_1D19C2288();
  v12 = v7;
  sub_1D1E692FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v31);
  }

  v13 = v28;
  v14 = v10;
  LOBYTE(v32) = 0;
  sub_1D19C2434(&qword_1EC646DC0, type metadata accessor for ClusterPath, &protocol conformance descriptor for ClusterPath);
  v15 = v29;
  v16 = v30;
  sub_1D1E68D7C();
  sub_1D190D804(v15, v14);
  type metadata accessor for MTRPowerSourceStatus(0);
  v33 = 1;
  sub_1D19C2434(&qword_1EC6484E0, type metadata accessor for MTRPowerSourceStatus, &protocol conformance descriptor for MTRPowerSourceStatus);
  sub_1D1E68D7C();
  *(v14 + v8[5]) = v32;
  LOBYTE(v32) = 2;
  *(v14 + v8[6]) = sub_1D1E68D9C();
  type metadata accessor for MTRPowerSourceFeature(0);
  v33 = 3;
  sub_1D19C2434(&qword_1EC6484E8, type metadata accessor for MTRPowerSourceFeature, &protocol conformance descriptor for MTRPowerSourceFeature);
  sub_1D1E68D7C();
  *(v14 + v8[7]) = v32;
  LOBYTE(v32) = 4;
  *(v14 + v8[8]) = sub_1D1E68C7C();
  LOBYTE(v32) = 5;
  v17 = sub_1D1E68CEC();
  v18 = (v14 + v8[9]);
  *v18 = v17;
  v18[1] = HIBYTE(v17) & 1;
  LOBYTE(v32) = 6;
  v19 = sub_1D1E68D0C();
  v20 = v14 + v8[10];
  *v20 = v19;
  *(v20 + 4) = BYTE4(v19) & 1;
  type metadata accessor for MTRPowerSourceBatChargeLevel(0);
  v33 = 7;
  sub_1D19C2434(&qword_1EC6484F0, type metadata accessor for MTRPowerSourceBatChargeLevel, &protocol conformance descriptor for MTRPowerSourceBatChargeLevel);
  sub_1D1E68CBC();
  v22 = BYTE1(v32);
  v23 = (v14 + v8[11]);
  *v23 = v32;
  v23[1] = v22;
  type metadata accessor for MTRPowerSourceBatChargeState(0);
  v33 = 8;
  sub_1D19C2434(&qword_1EC6484F8, type metadata accessor for MTRPowerSourceBatChargeState, &protocol conformance descriptor for MTRPowerSourceBatChargeState);
  sub_1D1E68CBC();
  (*(v13 + 8))(v12, v16);
  v24 = BYTE1(v32);
  v25 = (v14 + v8[12]);
  *v25 = v32;
  v25[1] = v24;
  sub_1D19C22DC(v14, v27, type metadata accessor for StaticClusterPowerSource);
  __swift_destroy_boxed_opaque_existential_1(v31);
  return sub_1D19C2344(v14, type metadata accessor for StaticClusterPowerSource);
}

uint64_t sub_1D19C1150()
{
  sub_1D1E6920C();
  StaticClusterPowerSource.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D19C1194(uint64_t a1)
{
  sub_1D1E6920C();
  StaticClusterPowerSource.hash(into:)(v2);
  return sub_1D1E6926C();
}

uint64_t StaticClusterPowerSource.init(path:valueSource:)@<X0>(char *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v94 = a3;
  v90 = type metadata accessor for ClusterPath(0);
  v5 = MEMORY[0x1EEE9AC00](v90);
  v89 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v88 - v8;
  v10 = MEMORY[0x1EEE9AC00](v7);
  v91 = &v88 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v88 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v88 - v15;
  v17 = type metadata accessor for StaticClusterPowerSource(0);
  v93 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v88 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *a2;
  v20 = a2[1];
  sub_1D19C22DC(a1, v19, type metadata accessor for ClusterPath);
  sub_1D19C22DC(a1, v16, type metadata accessor for ClusterPath);
  v22 = sub_1D1912E6C(0, v16, v21, v20);
  sub_1D19C2344(v16, type metadata accessor for ClusterPath);
  if ((v22 & 0x100) != 0)
  {
    v92 = v19;

    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v28 = sub_1D1E6709C();
    __swift_project_value_buffer(v28, qword_1EE07A0B0);
    sub_1D19C22DC(a1, v14, type metadata accessor for ClusterPath);
    v29 = sub_1D1E6707C();
    v30 = sub_1D1E6833C();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v97 = v32;
      *v31 = 136446210;
      v33 = ClusterPath.description.getter();
      v35 = v34;
      sub_1D19C2344(v14, type metadata accessor for ClusterPath);
      v36 = sub_1D1B1312C(v33, v35, &v97);

      *(v31 + 4) = v36;
      _os_log_impl(&dword_1D16EC000, v29, v30, "Couldn't get value for status attribute '%{public}s'", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v32);
      MEMORY[0x1D3893640](v32, -1, -1);
      MEMORY[0x1D3893640](v31, -1, -1);

      v37 = a1;
    }

    else
    {

      sub_1D19C2344(a1, type metadata accessor for ClusterPath);
      v37 = v14;
    }

    sub_1D19C2344(v37, type metadata accessor for ClusterPath);
    v24 = v17;
    goto LABEL_22;
  }

  v19[*(v17 + 20)] = v22;
  sub_1D19C22DC(a1, v16, type metadata accessor for ClusterPath);
  v23 = sub_1D1912E6C(1, v16, v21, v20);
  sub_1D19C2344(v16, type metadata accessor for ClusterPath);
  v24 = v17;
  if ((v23 & 0x100) != 0)
  {
    v92 = v19;

    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v38 = sub_1D1E6709C();
    __swift_project_value_buffer(v38, qword_1EE07A0B0);
    v39 = v91;
    sub_1D19C22DC(a1, v91, type metadata accessor for ClusterPath);
    v40 = sub_1D1E6707C();
    v41 = sub_1D1E6833C();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v97 = v43;
      *v42 = 136446210;
      v44 = ClusterPath.description.getter();
      v46 = v45;
      sub_1D19C2344(v39, type metadata accessor for ClusterPath);
      v47 = sub_1D1B1312C(v44, v46, &v97);

      *(v42 + 4) = v47;
      _os_log_impl(&dword_1D16EC000, v40, v41, "Couldn't get value for order attribute '%{public}s'", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v43);
      MEMORY[0x1D3893640](v43, -1, -1);
      MEMORY[0x1D3893640](v42, -1, -1);

      v48 = a1;
      v24 = v17;
    }

    else
    {

      sub_1D19C2344(a1, type metadata accessor for ClusterPath);
      v48 = v39;
    }

    sub_1D19C2344(v48, type metadata accessor for ClusterPath);
LABEL_22:
    v60 = v92;
LABEL_23:
    sub_1D19C2344(v60, type metadata accessor for ClusterPath);
    return (*(v93 + 56))(v94, 1, 1, v24);
  }

  v19[*(v17 + 24)] = v23;
  sub_1D19C22DC(a1, v16, type metadata accessor for ClusterPath);
  sub_1D19C22DC(v16, v9, type metadata accessor for ClusterPath);
  v25 = sub_1D192B170(65532, v9, v21, v20);
  sub_1D19C2344(v9, type metadata accessor for ClusterPath);
  sub_1D19C2344(v16, type metadata accessor for ClusterPath);
  if ((v25 & 0x100000000) != 0)
  {

    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v49 = sub_1D1E6709C();
    __swift_project_value_buffer(v49, qword_1EE07A0B0);
    v50 = v89;
    sub_1D19C22DC(a1, v89, type metadata accessor for ClusterPath);
    v51 = sub_1D1E6707C();
    v52 = sub_1D1E6833C();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = v19;
      v55 = swift_slowAlloc();
      v97 = v55;
      *v53 = 136446210;
      v56 = ClusterPath.description.getter();
      v58 = v57;
      sub_1D19C2344(v50, type metadata accessor for ClusterPath);
      v59 = sub_1D1B1312C(v56, v58, &v97);

      *(v53 + 4) = v59;
      _os_log_impl(&dword_1D16EC000, v51, v52, "Couldn't get value for feature map attribute '%{public}s'", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v55);
      MEMORY[0x1D3893640](v55, -1, -1);
      MEMORY[0x1D3893640](v53, -1, -1);

      sub_1D19C2344(a1, type metadata accessor for ClusterPath);
      v60 = v54;
    }

    else
    {

      sub_1D19C2344(a1, type metadata accessor for ClusterPath);
      sub_1D19C2344(v50, type metadata accessor for ClusterPath);
      v60 = v19;
    }

    goto LABEL_23;
  }

  v26 = v21;
  *&v19[*(v24 + 28)] = v25;
  if (v25)
  {
    v27 = v90;
    v99 = v90;
    v100 = sub_1D19C2434(&qword_1EC646A70, type metadata accessor for ClusterPath, &protocol conformance descriptor for ClusterPath);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v97);
    sub_1D19C22DC(a1, boxed_opaque_existential_1, type metadata accessor for ClusterPath);
    v95 = v26;
    v96 = v20;
    AttributeValueSet.value(for:in:)(9, &v97, &v101);
    __swift_destroy_boxed_opaque_existential_1(&v97);
    if (v102)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
      v63 = swift_dynamicCast();
      v64 = v97;
      if (!v63)
      {
        v64 = 2;
      }
    }

    else
    {
      sub_1D18F49A8(&v101);
      v64 = 2;
    }

    LODWORD(v91) = v64;
  }

  else
  {
    LODWORD(v91) = 2;
    v27 = v90;
  }

  v92 = v19;
  v88 = v24;
  if ((v25 & 2) != 0)
  {
    v99 = v27;
    v73 = sub_1D19C2434(&qword_1EC646A70, type metadata accessor for ClusterPath, &protocol conformance descriptor for ClusterPath);
    v100 = v73;
    v74 = __swift_allocate_boxed_opaque_existential_1(&v97);
    sub_1D19C22DC(a1, v74, type metadata accessor for ClusterPath);
    v95 = v26;
    v96 = v20;
    AttributeValueSet.value(for:in:)(12, &v97, &v101);
    __swift_destroy_boxed_opaque_existential_1(&v97);
    if (v102)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
      v75 = swift_dynamicCast();
      v76 = v97;
      if (!v75)
      {
        v76 = 0;
      }

      LODWORD(v90) = v76;
      v77 = v75 ^ 1;
    }

    else
    {
      sub_1D18F49A8(&v101);
      LODWORD(v90) = 0;
      v77 = 1;
    }

    LODWORD(v89) = v77;
    v99 = v27;
    v100 = v73;
    v78 = __swift_allocate_boxed_opaque_existential_1(&v97);
    sub_1D19C22DC(a1, v78, type metadata accessor for ClusterPath);
    v95 = v26;
    v96 = v20;
    AttributeValueSet.value(for:in:)(13, &v97, &v101);
    __swift_destroy_boxed_opaque_existential_1(&v97);
    if (v102)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
      v79 = swift_dynamicCast();
      if (v79)
      {
        v68 = v97;
      }

      else
      {
        v68 = 0;
      }

      v69 = v79 ^ 1;
    }

    else
    {
      sub_1D18F49A8(&v101);
      v68 = 0;
      v69 = 1;
    }

    v65 = v26;
    v97 = v26;
    v98 = v20;
    v66 = a1;
    v80 = sub_1D19C1E6C(a1, 14, "Failed to fetch batteryChargeLevel: %{public}s", v88);
    v67 = v80;
    LODWORD(a1) = (v80 >> 8) & 1;
    if ((v25 & 4) != 0)
    {
      goto LABEL_32;
    }

LABEL_45:
    sub_1D19C2344(v66, type metadata accessor for ClusterPath);

    v71 = 0;
    LOBYTE(v72) = 1;
    goto LABEL_46;
  }

  v65 = v26;
  v66 = a1;
  v67 = 0;
  v68 = 0;
  LODWORD(v90) = 0;
  LOBYTE(a1) = 1;
  v69 = 1;
  LODWORD(v89) = 1;
  if ((v25 & 4) == 0)
  {
    goto LABEL_45;
  }

LABEL_32:
  v97 = v65;
  v98 = v20;
  v70 = sub_1D19C1E6C(v66, 26, "Failed to fetch batteryChargeState: %{public}s", v88);
  v71 = v70;
  v72 = (v70 >> 8) & 1;
  sub_1D19C2344(v66, type metadata accessor for ClusterPath);

LABEL_46:
  v81 = v88;
  v82 = v92;
  v92[v88[8]] = v91;
  v83 = (v82 + v81[9]);
  *v83 = v90;
  v83[1] = v89;
  v84 = v82 + v81[10];
  *v84 = v68;
  *(v84 + 4) = v69;
  v85 = (v82 + v81[11]);
  *v85 = v67;
  v85[1] = a1;
  v86 = (v82 + v81[12]);
  *v86 = v71;
  v86[1] = v72;
  v87 = v94;
  sub_1D19C22DC(v82, v94, type metadata accessor for StaticClusterPowerSource);
  (*(v93 + 56))(v87, 0, 1, v81);
  return sub_1D19C2344(v82, type metadata accessor for StaticClusterPowerSource);
}

uint64_t sub_1D19C1E6C(uint64_t a1, uint64_t a2, const char *a3, ...)
{
  v7 = type metadata accessor for ClusterPath(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D1912E6C(a2, a1, *v3, v3[1]);
  v11 = v10;
  if ((v10 & 0x100) != 0)
  {
    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v12 = sub_1D1E6709C();
    __swift_project_value_buffer(v12, qword_1EE07A0B0);
    sub_1D19C22DC(a1, v9, type metadata accessor for ClusterPath);
    v13 = sub_1D1E6707C();
    v14 = sub_1D1E6833C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v23[0] = v16;
      *v15 = 136446210;
      v17 = ClusterPath.description.getter();
      v19 = v18;
      sub_1D19C2344(v9, type metadata accessor for ClusterPath);
      v20 = sub_1D1B1312C(v17, v19, v23);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_1D16EC000, v13, v14, a3, v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x1D3893640](v16, -1, -1);
      MEMORY[0x1D3893640](v15, -1, -1);
    }

    else
    {

      sub_1D19C2344(v9, type metadata accessor for ClusterPath);
    }

    v21 = 0;
  }

  else
  {
    v21 = v10;
  }

  return v11 & 0x100 | v21;
}

uint64_t _s13HomeDataModel24StaticClusterPowerSourceV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for EndpointPath(0);
  if (*(a1 + *(v4 + 20)) != *(a2 + *(v4 + 20)))
  {
    return 0;
  }

  if (*(a1 + *(v4 + 24)) != *(a2 + *(v4 + 24)))
  {
    return 0;
  }

  v5 = type metadata accessor for ClusterPath(0);
  if (dword_1D1E8CF80[*(a1 + *(v5 + 20))] != dword_1D1E8CF80[*(a2 + *(v5 + 20))])
  {
    return 0;
  }

  v6 = type metadata accessor for StaticClusterPowerSource(0);
  if (*(a1 + v6[5]) != *(a2 + v6[5]) || *(a1 + v6[6]) != *(a2 + v6[6]) || *(a1 + v6[7]) != *(a2 + v6[7]))
  {
    return 0;
  }

  v7 = v6[8];
  v8 = *(a1 + v7);
  v9 = *(a2 + v7);
  if (v8 == 2)
  {
    if (v9 != 2)
    {
      return 0;
    }
  }

  else
  {
    v10 = 0;
    if (v9 == 2 || ((v9 ^ v8) & 1) != 0)
    {
      return v10;
    }
  }

  v11 = v6[9];
  v12 = (a1 + v11);
  v13 = *(a1 + v11 + 1);
  v14 = (a2 + v11);
  v10 = *(a2 + v11 + 1);
  if (v13)
  {
    if (!v10)
    {
      return v10;
    }
  }

  else
  {
    if (*v12 != *v14)
    {
      LOBYTE(v10) = 1;
    }

    if (v10)
    {
      return 0;
    }
  }

  v15 = v6[10];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 4);
  v18 = (a2 + v15);
  v10 = *(a2 + v15 + 4);
  if (v17)
  {
    if (!v10)
    {
      return v10;
    }
  }

  else
  {
    if (*v16 != *v18)
    {
      LOBYTE(v10) = 1;
    }

    if (v10)
    {
      return 0;
    }
  }

  v19 = v6[11];
  v20 = (a1 + v19);
  v21 = *(a1 + v19 + 1);
  v22 = (a2 + v19);
  v10 = *(a2 + v19 + 1);
  if (v21)
  {
    if (!v10)
    {
      return v10;
    }
  }

  else
  {
    if (*v20 != *v22)
    {
      LOBYTE(v10) = 1;
    }

    if (v10)
    {
      return 0;
    }
  }

  v23 = v6[12];
  v24 = (a1 + v23);
  v25 = *(a1 + v23 + 1);
  v26 = (a2 + v23);
  v27 = *(a2 + v23 + 1);
  if (v25)
  {
    if ((v27 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*v24 != *v26)
    {
      v27 = 1;
    }

    if (v27)
    {
      return 0;
    }
  }

  return 1;
}

unint64_t sub_1D19C2288()
{
  result = qword_1EC6484B0;
  if (!qword_1EC6484B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6484B0);
  }

  return result;
}

uint64_t sub_1D19C22DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D19C2344(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D19C2434(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1D19C24A4(uint64_t a1)
{
  type metadata accessor for ClusterPath(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for MTRPowerSourceStatus(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for MTRPowerSourceFeature(319);
      if (v3 <= 0x3F)
      {
        sub_1D17BDF80(319, &qword_1EE07D1F0, MEMORY[0x1E69E6370]);
        if (v4 <= 0x3F)
        {
          sub_1D17BDF80(319, &qword_1EE07B608, MEMORY[0x1E69E7508]);
          if (v5 <= 0x3F)
          {
            sub_1D17BDF80(319, &qword_1EE07B600, MEMORY[0x1E69E7668]);
            if (v6 <= 0x3F)
            {
              sub_1D19C2628(319, &qword_1EE07B640, type metadata accessor for MTRPowerSourceBatChargeLevel);
              if (v7 <= 0x3F)
              {
                sub_1D19C2628(319, &qword_1EE07B630, type metadata accessor for MTRPowerSourceBatChargeState);
                if (v8 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1D19C2628(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D1E685AC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1D19C2690()
{
  result = qword_1EC648508;
  if (!qword_1EC648508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648508);
  }

  return result;
}

unint64_t sub_1D19C26E8()
{
  result = qword_1EC648510;
  if (!qword_1EC648510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648510);
  }

  return result;
}

unint64_t sub_1D19C2740()
{
  result = qword_1EC648518;
  if (!qword_1EC648518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648518);
  }

  return result;
}

uint64_t sub_1D19C2794(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726564726FLL && a2 == 0xE500000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D1EC1BC0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6F436465726977 && a2 == 0xEE0064657463656ELL || (sub_1D1E6904C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D1EC1BE0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D1EC1C00 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D1EC1C20 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D1EC1C40 == a2)
  {

    return 8;
  }

  else
  {
    v6 = sub_1D1E6904C();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t StaticDoorLockCluster.WalletKeyUWBApproachAngle.description.getter()
{
  v1 = *v0;
  v2 = off_1EC648520;
  v3 = *(off_1EC648520 + 2);

  v5 = 0;
  v6 = MEMORY[0x1E69E7CC0];
  v7 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v8 = 3 * v5;
  while (v3 != v5)
  {
    if (v5 >= v2[2])
    {
      __break(1u);
      return result;
    }

    ++v5;
    v9 = v8 * 8 + 24;
    v10 = LOBYTE(v2[v8 + 4]);
    v8 += 3;
    if ((v10 & ~v1) == 0)
    {
      v12 = *(v2 + v9 + 16);
      v11 = *(v2 + v9 + 24);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1D178CD44(0, v7[2] + 1, 1);
      }

      v14 = v7[2];
      v13 = v7[3];
      if (v14 >= v13 >> 1)
      {
        result = sub_1D178CD44((v13 > 1), v14 + 1, 1);
      }

      v7[2] = v14 + 1;
      v15 = &v7[3 * v14];
      *(v15 + 32) = v10;
      v15[5] = v12;
      v15[6] = v11;
      goto LABEL_2;
    }
  }

  v16 = v7[2];
  if (v16)
  {
    sub_1D178CD24(0, v16, 0);
    v17 = v6;
    v18 = v7 + 6;
    do
    {
      v20 = *(v18 - 1);
      v19 = *v18;
      v22 = *(v17 + 16);
      v21 = *(v17 + 24);

      if (v22 >= v21 >> 1)
      {
        sub_1D178CD24((v21 > 1), v22 + 1, 1);
      }

      *(v17 + 16) = v22 + 1;
      v23 = v17 + 16 * v22;
      *(v23 + 32) = v20;
      *(v23 + 40) = v19;
      v18 += 3;
      --v16;
    }

    while (v16);
  }

  else
  {

    v17 = MEMORY[0x1E69E7CC0];
  }

  sub_1D1E6884C();

  v24 = sub_1D1E68FAC();
  MEMORY[0x1D3890F70](v24);

  MEMORY[0x1D3890F70](8233, 0xE200000000000000);
  v25 = MEMORY[0x1D3891260](v17, MEMORY[0x1E69E6158]);
  v27 = v26;

  MEMORY[0x1D3890F70](v25, v27);

  return 0xD000000000000024;
}

BOOL sub_1D19C2E64(_BYTE *a1, unsigned __int8 *a2)
{
  v3 = *a2;
  v4 = *v2;
  if ((v4 & v3) != v3)
  {
    *v2 = v4 | v3;
  }

  *a1 = v3;
  return (v4 & v3) != v3;
}

unsigned __int8 *sub_1D19C2E94@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  v5 = v4 & v3;
  if ((v4 & v3) != 0)
  {
    *v2 = v4 & ~v3;
  }

  *a2 = v5;
  a2[1] = v5 == 0;
  return result;
}

unsigned __int8 *sub_1D19C2EC0@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 = v4 | v3;
  v5 = v4 & v3;
  *a2 = v5;
  a2[1] = v5 == 0;
  return result;
}

uint64_t StaticDoorLockCluster.walletKeyUWBApproachAngle.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for StaticDoorLockCluster(0);
  v4 = (v1 + *(result + 28));
  v5 = *v4;
  LOBYTE(v4) = v4[1];
  *a1 = v5;
  a1[1] = v4;
  return result;
}

int *StaticDoorLockCluster.init(id:autoRelockTime:autoRelockTimeSupported:walletKeyUWBApproachAngle:walletKeyUWBApproachAngleSupported:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char *a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v10 = *a4;
  v11 = a4[1];
  sub_1D19C6210(a1, a6, type metadata accessor for ClusterPath);
  result = type metadata accessor for StaticDoorLockCluster(0);
  v13 = a6 + result[5];
  *v13 = a2;
  *(v13 + 4) = BYTE4(a2) & 1;
  *(a6 + result[6]) = a3;
  v14 = (a6 + result[7]);
  *v14 = v10;
  v14[1] = v11;
  *(a6 + result[8]) = a5;
  return result;
}

uint64_t StaticDoorLockCluster.description.getter()
{
  sub_1D1E6884C();
  MEMORY[0x1D3890F70](0xD00000000000001DLL, 0x80000001D1EC1C90);
  v1 = ClusterPath.description.getter();
  MEMORY[0x1D3890F70](v1);

  MEMORY[0x1D3890F70](0xD000000000000014, 0x80000001D1EC1CB0);
  v2 = type metadata accessor for StaticDoorLockCluster(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648528, &qword_1D1E8D000);
  v3 = sub_1D1E6789C();
  MEMORY[0x1D3890F70](v3);

  MEMORY[0x1D3890F70](0xD00000000000001DLL, 0x80000001D1EC1CD0);
  v4 = *(v0 + *(v2 + 24));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648530, &unk_1D1E8D008);
  v5 = sub_1D1E6789C();
  MEMORY[0x1D3890F70](v5);

  MEMORY[0x1D3890F70](0xD000000000000026, 0x80000001D1EC1CF0);
  if (v4 == 2 || (v4 & 1) == 0)
  {
    v6 = 0xE500000000000000;
    v7 = 0x65736C6166;
  }

  else
  {
    v6 = 0xE400000000000000;
    v7 = 1702195828;
  }

  MEMORY[0x1D3890F70](v7, v6);

  MEMORY[0x1D3890F70](0xD00000000000001FLL, 0x80000001D1EC1D20);
  if ((*(v0 + *(v2 + 28) + 1) & 1) == 0)
  {
    StaticDoorLockCluster.WalletKeyUWBApproachAngle.description.getter();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6434D0, &qword_1D1E71C60);
  v8 = sub_1D1E6789C();
  MEMORY[0x1D3890F70](v8);

  MEMORY[0x1D3890F70](0xD000000000000028, 0x80000001D1EC1D40);
  v9 = sub_1D1E6789C();
  MEMORY[0x1D3890F70](v9);

  MEMORY[0x1D3890F70](62, 0xE100000000000000);
  return 0;
}

unint64_t sub_1D19C3420()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0xD000000000000017;
  v4 = 0xD000000000000019;
  if (v1 != 3)
  {
    v4 = 0xD000000000000022;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6F6C65526F747561;
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

uint64_t sub_1D19C34C0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D19C67A0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D19C34E8(uint64_t a1)
{
  v2 = sub_1D19C5FF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D19C3524(uint64_t a1)
{
  v2 = sub_1D19C5FF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticDoorLockCluster.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648538, &qword_1D1E8D018);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D19C5FF8();
  sub_1D1E6930C();
  v14[15] = 0;
  type metadata accessor for ClusterPath(0);
  sub_1D19C6958(&qword_1EC646D88, type metadata accessor for ClusterPath, &protocol conformance descriptor for ClusterPath);
  sub_1D1E68F1C();
  if (!v2)
  {
    v9 = type metadata accessor for StaticDoorLockCluster(0);
    v10 = *(v3 + *(v9 + 20) + 4);
    v14[14] = 1;
    v14[12] = v10;
    sub_1D1E68EAC();
    v14[11] = 2;
    sub_1D1E68E1C();
    v11 = (v3 + *(v9 + 28));
    v12 = *v11;
    LOBYTE(v11) = v11[1];
    v14[9] = v12;
    v14[10] = v11;
    v14[8] = 3;
    sub_1D19C604C();
    sub_1D1E68E5C();
    v14[7] = 4;
    sub_1D1E68E1C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t StaticDoorLockCluster.hash(into:)(uint64_t a1)
{
  sub_1D1E66A7C();
  sub_1D19C6958(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  v2 = type metadata accessor for EndpointPath(0);
  MEMORY[0x1D3892890](*(v1 + *(v2 + 20)));
  sub_1D1E6923C();
  type metadata accessor for ClusterPath(0);
  sub_1D1E6924C();
  v3 = type metadata accessor for StaticDoorLockCluster(0);
  if (*(v1 + v3[5] + 4) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    sub_1D1E6922C();
    sub_1D1E6924C();
  }

  if (*(v1 + v3[6]) != 2)
  {
    sub_1D1E6922C();
  }

  sub_1D1E6922C();
  if ((*(v1 + v3[7] + 1) & 1) == 0)
  {
    sub_1D1E6922C();
  }

  sub_1D1E6922C();
  if (*(v1 + v3[8]) != 2)
  {
    sub_1D1E6922C();
  }

  return sub_1D1E6922C();
}

uint64_t StaticDoorLockCluster.hashValue.getter()
{
  sub_1D1E6920C();
  StaticDoorLockCluster.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t StaticDoorLockCluster.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = type metadata accessor for ClusterPath(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648550, &qword_1D1E8D020);
  v24 = *(v7 - 8);
  v25 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v23 - v8;
  v10 = type metadata accessor for StaticDoorLockCluster(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v26 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1D19C5FF8();
  sub_1D1E692FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v26);
  }

  v14 = v24;
  v15 = v12;
  v33 = 0;
  sub_1D19C6958(&qword_1EC646DC0, type metadata accessor for ClusterPath, &protocol conformance descriptor for ClusterPath);
  v16 = v25;
  sub_1D1E68D7C();
  sub_1D19C6210(v6, v15, type metadata accessor for ClusterPath);
  v32 = 1;
  v17 = sub_1D1E68D0C();
  v18 = v15 + v10[5];
  *v18 = v17;
  *(v18 + 4) = BYTE4(v17) & 1;
  v31 = 2;
  *(v15 + v10[6]) = sub_1D1E68C7C();
  v28 = 3;
  sub_1D19C60A0();
  sub_1D1E68CBC();
  v20 = v30;
  v21 = (v15 + v10[7]);
  *v21 = v29;
  v21[1] = v20;
  v27 = 4;
  v22 = sub_1D1E68C7C();
  (*(v14 + 8))(v9, v16);
  *(v15 + v10[8]) = v22;
  sub_1D19C61A8(v15, v23, type metadata accessor for StaticDoorLockCluster);
  __swift_destroy_boxed_opaque_existential_1(v26);
  return sub_1D19C60F4(v15, type metadata accessor for StaticDoorLockCluster);
}

uint64_t sub_1D19C3DA4()
{
  sub_1D1E6920C();
  StaticDoorLockCluster.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D19C3DE8(uint64_t a1)
{
  sub_1D1E6920C();
  StaticDoorLockCluster.hash(into:)(v2);
  return sub_1D1E6926C();
}

uint64_t StaticDoorLockCluster.init(path:valueSource:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ClusterPath(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v39[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for StaticDoorLockCluster(0);
  v10 = *(v9 - 1);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v39[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a2;
  v13 = a2[1];
  sub_1D19C61A8(a1, v12, type metadata accessor for ClusterPath);
  v15 = sub_1D192B170(35, a1, v14, v13);
  v16 = &v12[v9[5]];
  *v16 = v15;
  v16[4] = BYTE4(v15) & 1;
  v17 = sub_1D19C52F0(a1, v14, v13);
  v18 = *(v17 + 16);
  v19 = 32;
  do
  {
    v20 = v18;
    v30 = v18-- != 0;
    if (!v30)
    {
      break;
    }

    v21 = *(v17 + v19);
    v19 += 4;
  }

  while (v21 != 35);
  v22 = v20 != 0;

  v12[v9[6]] = v22;
  v42 = &type metadata for HomeAppFeatures;
  v43 = sub_1D19C6154();
  LOBYTE(v39[0]) = 1;
  v23 = sub_1D1E66D5C();
  __swift_destroy_boxed_opaque_existential_1(v39);
  if (v23)
  {
    v38 = a3;
    v24 = *(a1 + *(type metadata accessor for EndpointPath(0) + 24));
    v39[0] = v14;
    v39[1] = v13;
    v40 = v24;
    v41 = 0;
    v42 = 0;
    v43 = 0;

    v25 = DescriptorClusterDecoder.availableClusterKinds.getter();
    v26 = sub_1D17198DC(28, v25);

    if (v26)
    {
      sub_1D19C61A8(a1, v8, type metadata accessor for EndpointPath);
      v8[*(v6 + 20)] = 28;
      v27 = sub_1D19C52F0(v8, v14, v13);
      v28 = *(v27 + 16);
      v29 = 32;
      do
      {
        v30 = v28-- != 0;
        v31 = v30;
        if (!v30)
        {
          break;
        }

        v32 = *(v27 + v29);
        v29 += 4;
      }

      while (v32);

      v33 = sub_1D1912E6C(0, v8, v14, v13);
      swift_bridgeObjectRelease_n();
      sub_1D19C60F4(a1, type metadata accessor for ClusterPath);
      sub_1D19C60F4(v8, type metadata accessor for ClusterPath);
      v34 = (v33 & 0x100) >> 8;
      if ((v33 & 0x100) != 0)
      {
        v35 = 0;
      }

      else
      {
        v35 = v33;
      }
    }

    else
    {
      sub_1D19C60F4(a1, type metadata accessor for ClusterPath);
      swift_bridgeObjectRelease_n();
      v31 = 0;
      v35 = 0;
      LOBYTE(v34) = 1;
    }

    a3 = v38;
  }

  else
  {
    sub_1D19C60F4(a1, type metadata accessor for ClusterPath);

    v31 = 0;
    v35 = 0;
    LOBYTE(v34) = 1;
  }

  v12[v9[8]] = v31;
  v36 = &v12[v9[7]];
  *v36 = v35;
  v36[1] = v34 & 1;
  sub_1D19C6210(v12, a3, type metadata accessor for StaticDoorLockCluster);
  return (*(v10 + 56))(a3, 0, 1, v9);
}

uint64_t StaticDoorLockCluster.setAutoRelockTime(_:)(int a1)
{
  *(v2 + 144) = v1;
  *(v2 + 184) = a1;
  type metadata accessor for StaticDoorLockCluster(0);
  *(v2 + 152) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D19C42D4, 0, 0);
}

uint64_t sub_1D19C42D4()
{
  v11 = v0;
  if (qword_1EE07A0A8 != -1)
  {
    swift_once();
  }

  v1 = sub_1D1E6709C();
  *(v0 + 160) = __swift_project_value_buffer(v1, qword_1EE07A0B0);
  v2 = sub_1D1E6707C();
  v3 = sub_1D1E6835C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 184);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v5 = 136315650;
    *(v5 + 4) = sub_1D1B1312C(0xD000000000000029, 0x80000001D1EC1D70, &v10);
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_1D1B1312C(0xD000000000000015, 0x80000001D1EC1DA0, &v10);
    *(v5 + 22) = 1026;
    *(v5 + 24) = v4;
    _os_log_impl(&dword_1D16EC000, v2, v3, "%s - %s: Starting to update autoRelockTime to %{public}u.", v5, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v6, -1, -1);
    MEMORY[0x1D3893640](v5, -1, -1);
  }

  sub_1D1741B10(0, &qword_1EC648560, 0x1E696F598);
  v7 = swift_task_alloc();
  *(v0 + 168) = v7;
  *v7 = v0;
  v7[1] = sub_1D19C44F4;
  v8 = *(v0 + 144);

  return sub_1D1A092C4(v8);
}

uint64_t sub_1D19C44F4(uint64_t a1)
{
  *(*v1 + 176) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D19C45F4, 0, 0);
}

uint64_t sub_1D19C45F4()
{
  v26 = v0;
  v1 = *(v0 + 176);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648318, &unk_1D1E8D030);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D1E73A90;
    *(inited + 32) = sub_1D1E6781C();
    *(inited + 40) = v3;
    v4 = sub_1D1E6781C();
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 48) = v4;
    *(inited + 56) = v5;
    *(inited + 80) = sub_1D1E6781C();
    *(inited + 88) = v6;
    v7 = sub_1D1E692CC();
    *(inited + 120) = sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
    *(inited + 96) = v7;
    sub_1D18D6538(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646238, &qword_1D1E7E8D0);
    swift_arrayDestroy();
    v8 = sub_1D1E675DC();

    if (qword_1EC6422E8 != -1)
    {
      swift_once();
    }

    v9 = qword_1EC649398;
    if (qword_1EC649398)
    {
      v10 = qword_1EC649398;
    }

    else
    {
      v10 = sub_1D1E684DC();
      v9 = 0;
    }

    v22 = v9;
    [v1 writeAttributeAutoRelockTimeWithValue:v8 expectedValueInterval:v10];
  }

  else
  {
    sub_1D19C61A8(*(v0 + 144), *(v0 + 152), type metadata accessor for StaticDoorLockCluster);
    v11 = sub_1D1E6707C();
    v12 = sub_1D1E6835C();
    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 152);
    if (v13)
    {
      v15 = *(v0 + 184);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v25 = v17;
      *v16 = 136315906;
      *(v16 + 4) = sub_1D1B1312C(0xD000000000000029, 0x80000001D1EC1D70, &v25);
      *(v16 + 12) = 2080;
      *(v16 + 14) = sub_1D1B1312C(0xD000000000000015, 0x80000001D1EC1DA0, &v25);
      *(v16 + 22) = 1026;
      *(v16 + 24) = v15;
      *(v16 + 28) = 2082;
      v18 = ClusterPath.description.getter();
      v20 = v19;
      sub_1D19C60F4(v14, type metadata accessor for StaticDoorLockCluster);
      v21 = sub_1D1B1312C(v18, v20, &v25);

      *(v16 + 30) = v21;
      _os_log_impl(&dword_1D16EC000, v11, v12, "%s - %s: Unable to update to autoRelockTime to %{public}u because could not create door lock cluster with %{public}s", v16, 0x26u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v17, -1, -1);
      MEMORY[0x1D3893640](v16, -1, -1);
    }

    else
    {

      sub_1D19C60F4(v14, type metadata accessor for StaticDoorLockCluster);
    }
  }

  v23 = *(v0 + 8);

  return v23();
}

uint64_t StaticDoorLockCluster.setWalletKeyUWBApproachAngle(_:)(_BYTE *a1)
{
  *(v2 + 200) = v1;
  type metadata accessor for StaticDoorLockCluster(0);
  *(v2 + 208) = swift_task_alloc();
  *(v2 + 216) = type metadata accessor for ClusterPath(0);
  *(v2 + 224) = swift_task_alloc();
  *(v2 + 232) = swift_task_alloc();
  *(v2 + 240) = type metadata accessor for EndpointPath(0);
  *(v2 + 248) = swift_task_alloc();
  v4 = sub_1D1E66A7C();
  *(v2 + 256) = v4;
  *(v2 + 264) = *(v4 - 8);
  *(v2 + 272) = swift_task_alloc();
  *(v2 + 304) = *a1;

  return MEMORY[0x1EEE6DFA0](sub_1D19C4B18, 0, 0);
}

uint64_t sub_1D19C4B18()
{
  v21 = v0;
  if (qword_1EE07A0A8 != -1)
  {
    swift_once();
  }

  v1 = sub_1D1E6709C();
  *(v0 + 280) = __swift_project_value_buffer(v1, qword_1EE07A0B0);
  v2 = sub_1D1E6707C();
  v3 = sub_1D1E6835C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 304);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v19 = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_1D1B1312C(0xD000000000000020, 0x80000001D1EC1DC0, &v19);
    *(v5 + 12) = 2082;
    v20 = v4;
    v7 = StaticDoorLockCluster.WalletKeyUWBApproachAngle.description.getter();
    v9 = sub_1D1B1312C(v7, v8, &v19);

    *(v5 + 14) = v9;
    _os_log_impl(&dword_1D16EC000, v2, v3, "%s %{public}s.", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v6, -1, -1);
    MEMORY[0x1D3893640](v5, -1, -1);
  }

  v11 = *(v0 + 264);
  v10 = *(v0 + 272);
  v13 = *(v0 + 248);
  v12 = *(v0 + 256);
  v14 = *(v0 + 200);
  v15 = *(v14 + *(*(v0 + 240) + 20));
  sub_1D19C61A8(v14, v13, type metadata accessor for EndpointPath);
  (*(v11 + 32))(v10, v13, v12);
  v16 = swift_task_alloc();
  *(v0 + 288) = v16;
  *v16 = v0;
  v16[1] = sub_1D19C4D68;
  v17 = *(v0 + 272);

  return sub_1D1A0A508(v15, v17);
}

uint64_t sub_1D19C4D68(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[22] = v2;
  v4[23] = a1;
  v4[24] = a2;
  v5 = v3[34];
  v6 = v3[33];
  v7 = v3[32];
  v4[37] = a1;

  (*(v6 + 8))(v5, v7);

  return MEMORY[0x1EEE6DFA0](sub_1D19C4ED0, 0, 0);
}

uint64_t sub_1D19C4ED0()
{
  v27 = v0;
  if (v0[37])
  {
    v2 = v0[28];
    v1 = v0[29];
    v3 = v0[27];
    v4 = v0[24];
    sub_1D19C61A8(v0[25], v2, type metadata accessor for ClusterPath);
    sub_1D19C6210(v2, v1, type metadata accessor for EndpointPath);
    *(v1 + *(v3 + 20)) = 28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648318, &unk_1D1E8D030);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D1E73A90;
    *(inited + 32) = sub_1D1E6781C();
    *(inited + 40) = v6;
    v7 = sub_1D1E6781C();
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 48) = v7;
    *(inited + 56) = v8;
    *(inited + 80) = sub_1D1E6781C();
    *(inited + 88) = v9;
    v10 = sub_1D1E691BC();
    *(inited + 120) = sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
    *(inited + 96) = v10;
    v11 = sub_1D18D6538(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646238, &qword_1D1E7E8D0);
    swift_arrayDestroy();
    ObjectType = swift_getObjectType();
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
    v0[18] = v11;
    v0[21] = v13;
    (*(v4 + 56))(v1, 0, v0 + 18, ObjectType, v4);
    swift_unknownObjectRelease();
    sub_1D19C60F4(v1, type metadata accessor for ClusterPath);
    __swift_destroy_boxed_opaque_existential_1(v0 + 18);
  }

  else
  {
    sub_1D19C61A8(v0[25], v0[26], type metadata accessor for StaticDoorLockCluster);
    v14 = sub_1D1E6707C();
    v15 = sub_1D1E6833C();
    v16 = os_log_type_enabled(v14, v15);
    v17 = v0[26];
    if (v16)
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v26 = v19;
      *v18 = 136315394;
      *(v18 + 4) = sub_1D1B1312C(0xD000000000000020, 0x80000001D1EC1DC0, &v26);
      *(v18 + 12) = 2082;
      v20 = ClusterPath.description.getter();
      v22 = v21;
      sub_1D19C60F4(v17, type metadata accessor for StaticDoorLockCluster);
      v23 = sub_1D1B1312C(v20, v22, &v26);

      *(v18 + 14) = v23;
      _os_log_impl(&dword_1D16EC000, v14, v15, "%s: Unable to update wallet key uwb approach angle because device in current home with path %{public}s could not be found.", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v19, -1, -1);
      MEMORY[0x1D3893640](v18, -1, -1);
    }

    else
    {

      sub_1D19C60F4(v17, type metadata accessor for StaticDoorLockCluster);
    }
  }

  v24 = v0[1];

  return v24();
}

uint64_t type metadata accessor for StaticDoorLockCluster(uint64_t a1)
{
  result = qword_1EE07C498;
  if (!qword_1EE07C498)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D19C52F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21[3] = type metadata accessor for ClusterPath(0);
  v21[4] = sub_1D19C6958(&qword_1EC646A70, type metadata accessor for ClusterPath, &protocol conformance descriptor for ClusterPath);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21);
  sub_1D19C61A8(a1, boxed_opaque_existential_1, type metadata accessor for ClusterPath);
  v7 = sub_1D19C56F8(65531, boxed_opaque_existential_1, a2, a3);
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v9 = sub_1D1E6709C();
    __swift_project_value_buffer(v9, qword_1EE07A0B0);
    sub_1D17419CC(v21, v20);
    v10 = sub_1D1E6707C();
    v11 = sub_1D1E6833C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v19 = v13;
      *v12 = 136315138;
      __swift_project_boxed_opaque_existential_1(v20, v20[3]);
      v14 = ClusterPath.description.getter();
      v16 = v15;
      __swift_destroy_boxed_opaque_existential_1(v20);
      v17 = sub_1D1B1312C(v14, v16, &v19);

      *(v12 + 4) = v17;
      _os_log_impl(&dword_1D16EC000, v10, v11, "Failed to get attribute list for cluster %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x1D3893640](v13, -1, -1);
      MEMORY[0x1D3893640](v12, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v20);
    }

    v8 = MEMORY[0x1E69E7CC0];
  }

  __swift_destroy_boxed_opaque_existential_1(v21);
  return v8;
}

uint64_t sub_1D19C551C(unsigned int a1, uint64_t a2, uint64_t a3)
{
  v6 = HIWORD(a1);
  v21[3] = &type metadata for BasicClusterPath;
  v21[4] = sub_1D18F6128();
  LOWORD(v21[0]) = a1;
  BYTE2(v21[0]) = v6;
  v7 = sub_1D19C5AEC(65531, a1 & 0xFFFFFF, a2, a3);
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v9 = sub_1D1E6709C();
    __swift_project_value_buffer(v9, qword_1EE07A0B0);
    sub_1D17419CC(v21, v20);
    v10 = sub_1D1E6707C();
    v11 = sub_1D1E6833C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v19 = v13;
      *v12 = 136315138;
      __swift_project_boxed_opaque_existential_1(v20, v20[3]);
      v14 = BasicClusterPath.description.getter();
      v16 = v15;
      __swift_destroy_boxed_opaque_existential_1(v20);
      v17 = sub_1D1B1312C(v14, v16, &v19);

      *(v12 + 4) = v17;
      _os_log_impl(&dword_1D16EC000, v10, v11, "Failed to get attribute list for cluster %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x1D3893640](v13, -1, -1);
      MEMORY[0x1D3893640](v12, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v20);
    }

    v8 = MEMORY[0x1E69E7CC0];
  }

  __swift_destroy_boxed_opaque_existential_1(v21);
  return v8;
}

uint64_t sub_1D19C56F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for ClusterPath(0);
  v38[3] = v8;
  v38[4] = sub_1D19C6958(&qword_1EC646A70, type metadata accessor for ClusterPath, &protocol conformance descriptor for ClusterPath);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v38);
  sub_1D19C61A8(a2, boxed_opaque_existential_1, type metadata accessor for ClusterPath);
  *&v32 = a3;
  *(&v32 + 1) = a4;
  AttributeValueSet.value(for:in:)(a1, v38, v37);
  sub_1D18C20AC(v37, &v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645D58, &unk_1D1E7E530);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646A50, &unk_1D1E910D0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v36 = 0;
  }

  sub_1D18C20AC(v37, &v32);
  if (v33)
  {
    sub_1D1742194(&v32, v35);
    if (!v36)
    {
      LOBYTE(v32) = *(boxed_opaque_existential_1 + *(v8 + 20));
      v10 = sub_1D1A38104(a1, &v32);
      v12 = v11;
      if (qword_1EE07A0A8 != -1)
      {
        swift_once();
      }

      v13 = sub_1D1E6709C();
      __swift_project_value_buffer(v13, qword_1EE07A0B0);
      sub_1D1741970(v35, v34);
      sub_1D17419CC(v38, &v32);

      v14 = sub_1D1E6707C();
      v15 = sub_1D1E6833C();

      if (!os_log_type_enabled(v14, v15))
      {

        __swift_destroy_boxed_opaque_existential_1(v34);
        __swift_destroy_boxed_opaque_existential_1(v35);
        sub_1D18F49A8(v37);
        __swift_destroy_boxed_opaque_existential_1(&v32);
        goto LABEL_12;
      }

      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v31 = v17;
      *v16 = 136446978;
      v18 = sub_1D1B1312C(v10, v12, &v31);

      *(v16 + 4) = v18;
      *(v16 + 12) = 2082;
      *(v16 + 14) = sub_1D1B1312C(0x49553C7961727241, 0xED00003E3233746ELL, &v31);
      *(v16 + 22) = 2082;
      sub_1D1741970(v34, &v30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
      v19 = sub_1D1E678BC();
      v21 = v20;
      __swift_destroy_boxed_opaque_existential_1(v34);
      v22 = sub_1D1B1312C(v19, v21, &v31);

      *(v16 + 24) = v22;
      *(v16 + 32) = 2082;
      __swift_project_boxed_opaque_existential_1(&v32, v33);
      v23 = ClusterPath.description.getter();
      v25 = v24;
      __swift_destroy_boxed_opaque_existential_1(&v32);
      v26 = sub_1D1B1312C(v23, v25, &v31);

      *(v16 + 34) = v26;
      _os_log_impl(&dword_1D16EC000, v14, v15, "Retrieved value for (%{public}s) but could not decoded it to %{public}s. result:(%{public}s) path:'%{public}s'", v16, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v17, -1, -1);
      MEMORY[0x1D3893640](v16, -1, -1);
    }

    __swift_destroy_boxed_opaque_existential_1(v35);
    v27 = v37;
  }

  else
  {
    sub_1D18F49A8(v37);
    v27 = &v32;
  }

  sub_1D18F49A8(v27);
LABEL_12:
  v28 = v36;
  __swift_destroy_boxed_opaque_existential_1(v38);
  return v28;
}

uint64_t sub_1D19C5AEC(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v8 = HIWORD(a2);
  v37[3] = &type metadata for BasicClusterPath;
  v37[4] = sub_1D18F6128();
  LOWORD(v37[0]) = v6;
  BYTE2(v37[0]) = v8;
  *&v31 = a3;
  *(&v31 + 1) = a4;
  AttributeValueSet.value(for:in:)(a1, v37, v36);
  sub_1D18C20AC(v36, &v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645D58, &unk_1D1E7E530);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646A50, &unk_1D1E910D0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v35 = 0;
  }

  sub_1D18C20AC(v36, &v31);
  if (v32)
  {
    sub_1D1742194(&v31, v34);
    if (!v35)
    {
      LOBYTE(v31) = BYTE2(v37[0]);
      v9 = sub_1D1A38104(a1, &v31);
      v11 = v10;
      if (qword_1EE07A0A8 != -1)
      {
        swift_once();
      }

      v12 = sub_1D1E6709C();
      __swift_project_value_buffer(v12, qword_1EE07A0B0);
      sub_1D1741970(v34, v33);
      sub_1D17419CC(v37, &v31);

      v13 = sub_1D1E6707C();
      v14 = sub_1D1E6833C();

      if (!os_log_type_enabled(v13, v14))
      {

        __swift_destroy_boxed_opaque_existential_1(v33);
        __swift_destroy_boxed_opaque_existential_1(v34);
        sub_1D18F49A8(v36);
        __swift_destroy_boxed_opaque_existential_1(&v31);
        goto LABEL_12;
      }

      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v30 = v16;
      *v15 = 136446978;
      v17 = sub_1D1B1312C(v9, v11, &v30);

      *(v15 + 4) = v17;
      *(v15 + 12) = 2082;
      *(v15 + 14) = sub_1D1B1312C(0x49553C7961727241, 0xED00003E3233746ELL, &v30);
      *(v15 + 22) = 2082;
      sub_1D1741970(v33, &v29);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
      v18 = sub_1D1E678BC();
      v20 = v19;
      __swift_destroy_boxed_opaque_existential_1(v33);
      v21 = sub_1D1B1312C(v18, v20, &v30);

      *(v15 + 24) = v21;
      *(v15 + 32) = 2082;
      __swift_project_boxed_opaque_existential_1(&v31, v32);
      v22 = BasicClusterPath.description.getter();
      v24 = v23;
      __swift_destroy_boxed_opaque_existential_1(&v31);
      v25 = sub_1D1B1312C(v22, v24, &v30);

      *(v15 + 34) = v25;
      _os_log_impl(&dword_1D16EC000, v13, v14, "Retrieved value for (%{public}s) but could not decoded it to %{public}s. result:(%{public}s) path:'%{public}s'", v15, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v16, -1, -1);
      MEMORY[0x1D3893640](v15, -1, -1);
    }

    __swift_destroy_boxed_opaque_existential_1(v34);
    v26 = v36;
  }

  else
  {
    sub_1D18F49A8(v36);
    v26 = &v31;
  }

  sub_1D18F49A8(v26);
LABEL_12:
  v27 = v35;
  __swift_destroy_boxed_opaque_existential_1(v37);
  return v27;
}

uint64_t _s13HomeDataModel21StaticDoorLockClusterV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for EndpointPath(0);
  if (*(a1 + *(v4 + 20)) != *(a2 + *(v4 + 20)))
  {
    return 0;
  }

  if (*(a1 + *(v4 + 24)) != *(a2 + *(v4 + 24)))
  {
    return 0;
  }

  v5 = type metadata accessor for ClusterPath(0);
  if (dword_1D1E8D52C[*(a1 + *(v5 + 20))] != dword_1D1E8D52C[*(a2 + *(v5 + 20))])
  {
    return 0;
  }

  v6 = type metadata accessor for StaticDoorLockCluster(0);
  v7 = v6[5];
  v8 = (a1 + v7);
  v9 = *(a1 + v7 + 4);
  v10 = (a2 + v7);
  v11 = *(a2 + v7 + 4);
  if (v9)
  {
    if (!v11)
    {
      return v11;
    }
  }

  else
  {
    if (*v8 != *v10)
    {
      LOBYTE(v11) = 1;
    }

    if (v11)
    {
      return 0;
    }
  }

  v12 = v6[6];
  v13 = *(a1 + v12);
  v14 = *(a2 + v12);
  if (v13 == 2)
  {
    if (v14 != 2)
    {
      return 0;
    }
  }

  else
  {
    v11 = 0;
    if (v14 == 2 || ((v14 ^ v13) & 1) != 0)
    {
      return v11;
    }
  }

  v15 = v6[7];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 1);
  v18 = (a2 + v15);
  v11 = *(a2 + v15 + 1);
  if (v17)
  {
    if (!v11)
    {
      return v11;
    }
  }

  else
  {
    if (*v16 != *v18)
    {
      LOBYTE(v11) = 1;
    }

    if (v11)
    {
      return 0;
    }
  }

  v19 = v6[8];
  v20 = *(a1 + v19);
  v21 = *(a2 + v19);
  if (v20 == 2)
  {
    if (v21 != 2)
    {
      return 0;
    }
  }

  else if (v21 == 2 || ((v21 ^ v20) & 1) != 0)
  {
    return 0;
  }

  return 1;
}

unint64_t sub_1D19C5FF8()
{
  result = qword_1EC648540;
  if (!qword_1EC648540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648540);
  }

  return result;
}

unint64_t sub_1D19C604C()
{
  result = qword_1EC648548;
  if (!qword_1EC648548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648548);
  }

  return result;
}

unint64_t sub_1D19C60A0()
{
  result = qword_1EC648558;
  if (!qword_1EC648558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648558);
  }

  return result;
}

uint64_t sub_1D19C60F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D19C6154()
{
  result = qword_1EE07D0F8[0];
  if (!qword_1EE07D0F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE07D0F8);
  }

  return result;
}

uint64_t sub_1D19C61A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D19C6210(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D19C627C()
{
  result = qword_1EC648568;
  if (!qword_1EC648568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648568);
  }

  return result;
}

unint64_t sub_1D19C62D4()
{
  result = qword_1EC648570;
  if (!qword_1EC648570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648570);
  }

  return result;
}

unint64_t sub_1D19C6328()
{
  result = qword_1EC648578;
  if (!qword_1EC648578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648578);
  }

  return result;
}

unint64_t sub_1D19C6380()
{
  result = qword_1EC648580;
  if (!qword_1EC648580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648580);
  }

  return result;
}

void sub_1D19C648C(uint64_t a1)
{
  type metadata accessor for ClusterPath(319);
  if (v1 <= 0x3F)
  {
    sub_1D17BDF80(319, &qword_1EE07B600, MEMORY[0x1E69E7668]);
    if (v2 <= 0x3F)
    {
      sub_1D17BDF80(319, &qword_1EE07D1F0, MEMORY[0x1E69E6370]);
      if (v3 <= 0x3F)
      {
        sub_1D17BDF80(319, qword_1EE07C4A8, &type metadata for StaticDoorLockCluster.WalletKeyUWBApproachAngle);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for StaticDoorLockCluster.WalletKeyUWBApproachAngle(unsigned __int8 *a1, int a2)
{
  if (a2)
  {
    if ((a2 + 255) >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 255) >> 8 < 0xFF)
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
        return (*a1 | (v4 << 8)) - 255;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (*(a1 + 1))
      {
        return (*a1 | (v4 << 8)) - 255;
      }
    }

    else
    {
      v4 = a1[1];
      if (a1[1])
      {
        return (*a1 | (v4 << 8)) - 255;
      }
    }
  }

  return 0;
}

uint64_t storeEnumTagSinglePayload for StaticDoorLockCluster.WalletKeyUWBApproachAngle(uint64_t result, int a2, int a3)
{
  if ((a3 + 255) >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 255) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    v5 = ((a2 - 1) >> 8) + 1;
    *result = a2 - 1;
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
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *(result + 1) = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v4)
  {
    *(result + 1) = 0;
  }

  return result;
}

unint64_t sub_1D19C669C()
{
  result = qword_1EC648590;
  if (!qword_1EC648590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648590);
  }

  return result;
}

unint64_t sub_1D19C66F4()
{
  result = qword_1EC648598;
  if (!qword_1EC648598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648598);
  }

  return result;
}

unint64_t sub_1D19C674C()
{
  result = qword_1EC6485A0;
  if (!qword_1EC6485A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6485A0);
  }

  return result;
}

uint64_t sub_1D19C67A0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F6C65526F747561 && a2 == 0xEE00656D69546B63 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001D1EC1DF0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001D1EC1E10 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000022 && 0x80000001D1EC1E30 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D1E6904C();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1D19C6958(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_1D19C69AC(uint64_t a1, int a2)
{
  v59 = a1;
  v2 = a2;
  v3 = a2;
  v4 = type metadata accessor for ClusterPath(0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v57 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v3 == 30)
  {
    v2 = *(v58 + *(v5 + 20));
  }

  v7 = v59 + 64;
  v8 = 1 << *(v59 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v59 + 64);
  v11 = (v8 + 63) >> 6;
  HIDWORD(v54) = v2;
  v60 = v2 << 32;

  v12 = 0;
  v13 = MEMORY[0x1E69E7CC8];
  v55 = v11;
  v56 = v7;
  while (v10)
  {
LABEL_13:
    v18 = __clz(__rbit64(v10)) | (v12 << 6);
    v19 = *(v59 + 56);
    v61 = *(*(v59 + 48) + 4 * v18);
    v20 = v19 + 16 * v18;
    v21 = *v20;
    v22 = *(v20 + 8);
    v23 = v57;
    sub_1D19CBFE8(v58, v57, type metadata accessor for ClusterPath);
    v24 = *(v23 + *(type metadata accessor for EndpointPath(0) + 24));
    sub_1D1741AF8(v21, v22);
    sub_1D19CBE58(v23, type metadata accessor for ClusterPath);
    sub_1D1741AF8(v21, v22);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v63 = v13;
    v27 = sub_1D171D15C(v24);
    v28 = v13[2];
    v29 = (v26 & 1) == 0;
    v30 = v28 + v29;
    if (__OFADD__(v28, v29))
    {
      goto LABEL_34;
    }

    v31 = v26;
    if (v13[3] >= v30)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D1737DF0();
        v13 = v63;
      }
    }

    else
    {
      sub_1D172684C(v30, isUniquelyReferenced_nonNull_native);
      v13 = v63;
      v32 = sub_1D171D15C(v24);
      if ((v31 & 1) != (v33 & 1))
      {
        goto LABEL_39;
      }

      v27 = v32;
    }

    if ((v31 & 1) == 0)
    {
      v13[(v27 >> 6) + 8] |= 1 << v27;
      *(v13[6] + 2 * v27) = v24;
      *(v13[7] + 8 * v27) = MEMORY[0x1E69E7CC8];
      v34 = v13[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_36;
      }

      v13[2] = v36;
    }

    v37 = v13[7];
    v38 = swift_isUniquelyReferenced_nonNull_native();
    v63 = *(v37 + 8 * v27);
    v39 = v63;
    *(v37 + 8 * v27) = 0x8000000000000000;
    v40 = sub_1D171D1A4(v60 | v61);
    v42 = *(v39 + 16);
    v43 = (v41 & 1) == 0;
    v35 = __OFADD__(v42, v43);
    v44 = v42 + v43;
    if (v35)
    {
      goto LABEL_35;
    }

    v45 = v41;
    if (*(v39 + 24) < v44)
    {
      sub_1D1726570(v44, v38);
      v40 = sub_1D171D1A4(v60 | v61);
      if ((v45 & 1) != (v46 & 1))
      {
        goto LABEL_38;
      }

LABEL_27:
      v47 = v63;
      if (v45)
      {
        goto LABEL_6;
      }

      goto LABEL_28;
    }

    if (v38)
    {
      goto LABEL_27;
    }

    v52 = v40;
    sub_1D1737C6C();
    v40 = v52;
    v47 = v63;
    if (v45)
    {
LABEL_6:
      v14 = v47[7] + 16 * v40;
      v15 = *v14;
      *v14 = v21;
      v16 = *(v14 + 8);
      *(v14 + 8) = v22;
      sub_1D1757AE8(v15, v16);
      goto LABEL_7;
    }

LABEL_28:
    v47[(v40 >> 6) + 8] |= 1 << v40;
    v48 = v47[6] + 8 * v40;
    *v48 = v61;
    *(v48 + 4) = BYTE4(v54);
    v49 = v47[7] + 16 * v40;
    *v49 = v21;
    *(v49 + 8) = v22;
    v50 = v47[2];
    v35 = __OFADD__(v50, 1);
    v51 = v50 + 1;
    if (v35)
    {
      goto LABEL_37;
    }

    v47[2] = v51;
LABEL_7:
    v10 &= v10 - 1;
    *(v37 + 8 * v27) = v47;

    sub_1D1757AE8(v21, v22);
    v11 = v55;
    v7 = v56;
  }

  while (1)
  {
    v17 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v17 >= v11)
    {

      v62 = v13;
      v63 = MEMORY[0x1E69E7CC0];
      sub_1D1A1456C(&v62, &v63);

      return v63;
    }

    v10 = *(v7 + 8 * v17);
    ++v12;
    if (v10)
    {
      v12 = v17;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  sub_1D1E690FC();
  __break(1u);
LABEL_39:
  result = sub_1D1E690FC();
  __break(1u);
  return result;
}

uint64_t type metadata accessor for StaticLevelControlCluster(uint64_t a1)
{
  result = qword_1EE07BE60;
  if (!qword_1EE07BE60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

int *StaticLevelControlCluster.init(id:currentLevel:minLevel:maxLevel:onOffTransitionTime:onLevel:onTransitionTime:offTransitionTime:defaultMoveRate:startUpCurrentLevel:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, __int16 a3@<W2>, __int16 a4@<W3>, int a5@<W4>, __int16 a6@<W5>, int a7@<W6>, int a8@<W7>, uint64_t a9@<X8>, char a10, char a11, char a12, char a13)
{
  sub_1D190D804(a1, a9);
  result = type metadata accessor for StaticLevelControlCluster(0);
  *(a9 + result[5]) = a2;
  v22 = (a9 + result[6]);
  *v22 = a3;
  v22[1] = HIBYTE(a3) & 1;
  v23 = (a9 + result[7]);
  *v23 = a4;
  v23[1] = HIBYTE(a4) & 1;
  v24 = a9 + result[8];
  *v24 = a5;
  *(v24 + 2) = BYTE2(a5) & 1;
  v25 = (a9 + result[9]);
  *v25 = a6;
  v25[1] = HIBYTE(a6) & 1;
  v26 = a9 + result[10];
  *v26 = a7;
  *(v26 + 2) = BYTE2(a7) & 1;
  v27 = a9 + result[11];
  *v27 = a8;
  *(v27 + 2) = BYTE2(a8) & 1;
  v28 = (a9 + result[12]);
  *v28 = a10;
  v28[1] = a11 & 1;
  v29 = (a9 + result[13]);
  *v29 = a12;
  v29[1] = a13 & 1;
  return result;
}

unint64_t sub_1D19C716C(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD000000000000011;
    v6 = 0x4D746C7561666564;
    if (a1 != 8)
    {
      v6 = 0xD000000000000013;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x6C6576654C6E6FLL;
    if (a1 != 5)
    {
      v7 = 0xD000000000000010;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 25705;
    v2 = 0x6C6576654C6E696DLL;
    v3 = 0x6C6576654C78616DLL;
    if (a1 != 3)
    {
      v3 = 0xD000000000000013;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x4C746E6572727563;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1D19C72C8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D19CC58C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D19C72FC(uint64_t a1)
{
  v2 = sub_1D19CBE04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D19C7338(uint64_t a1)
{
  v2 = sub_1D19CBE04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticLevelControlCluster.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6485A8, &qword_1D1E8D5B0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D19CBE04();
  sub_1D1E6930C();
  v9 = 0;
  type metadata accessor for ClusterPath(0);
  sub_1D19CC338(&qword_1EC646D88, type metadata accessor for ClusterPath, &protocol conformance descriptor for ClusterPath);
  sub_1D1E68F1C();
  if (!v1)
  {
    type metadata accessor for StaticLevelControlCluster(0);
    v9 = 1;
    sub_1D1E68F3C();
    v9 = 2;
    sub_1D1E68E8C();
    v9 = 3;
    sub_1D1E68E8C();
    v9 = 4;
    sub_1D1E68E9C();
    v9 = 5;
    sub_1D1E68E8C();
    v9 = 6;
    sub_1D1E68E9C();
    v9 = 7;
    sub_1D1E68E9C();
    v9 = 8;
    sub_1D1E68E8C();
    v9 = 9;
    sub_1D1E68E8C();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t StaticLevelControlCluster.hash(into:)(uint64_t a1)
{
  sub_1D1E66A7C();
  sub_1D19CC338(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  v2 = type metadata accessor for EndpointPath(0);
  MEMORY[0x1D3892890](*(v1 + *(v2 + 20)));
  sub_1D1E6923C();
  type metadata accessor for ClusterPath(0);
  sub_1D1E6924C();
  v3 = type metadata accessor for StaticLevelControlCluster(0);
  sub_1D1E6922C();
  if ((*(v1 + v3[6] + 1) & 1) == 0)
  {
    sub_1D1E6922C();
  }

  sub_1D1E6922C();
  if ((*(v1 + v3[7] + 1) & 1) == 0)
  {
    sub_1D1E6922C();
  }

  sub_1D1E6922C();
  if (*(v1 + v3[8] + 2) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    sub_1D1E6922C();
    sub_1D1E6923C();
  }

  if ((*(v1 + v3[9] + 1) & 1) == 0)
  {
    sub_1D1E6922C();
  }

  sub_1D1E6922C();
  if (*(v1 + v3[10] + 2) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    sub_1D1E6922C();
    sub_1D1E6923C();
  }

  if (*(v1 + v3[11] + 2) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    sub_1D1E6922C();
    sub_1D1E6923C();
  }

  if ((*(v1 + v3[12] + 1) & 1) == 0)
  {
    sub_1D1E6922C();
  }

  sub_1D1E6922C();
  if ((*(v1 + v3[13] + 1) & 1) == 0)
  {
    sub_1D1E6922C();
  }

  return sub_1D1E6922C();
}

uint64_t StaticLevelControlCluster.hashValue.getter()
{
  sub_1D1E6920C();
  StaticLevelControlCluster.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t StaticLevelControlCluster.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v4 = type metadata accessor for ClusterPath(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6485B8, &qword_1D1E8D5B8);
  v32 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v8 = &v31 - v7;
  v9 = type metadata accessor for StaticLevelControlCluster(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v35 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_1D19CBE04();
  v33 = v8;
  sub_1D1E692FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v35);
  }

  v13 = v32;
  v45 = 0;
  sub_1D19CC338(&qword_1EC646DC0, type metadata accessor for ClusterPath, &protocol conformance descriptor for ClusterPath);
  sub_1D1E68D7C();
  sub_1D190D804(v6, v11);
  v44 = 1;
  v11[v9[5]] = sub_1D1E68D9C();
  v43 = 2;
  v14 = sub_1D1E68CEC();
  v15 = &v11[v9[6]];
  *v15 = v14;
  v15[1] = HIBYTE(v14) & 1;
  v42 = 3;
  v16 = sub_1D1E68CEC();
  v17 = &v11[v9[7]];
  *v17 = v16;
  v17[1] = HIBYTE(v16) & 1;
  v41 = 4;
  v18 = sub_1D1E68CFC();
  v19 = &v11[v9[8]];
  *v19 = v18;
  v19[2] = BYTE2(v18) & 1;
  v40 = 5;
  v20 = sub_1D1E68CEC();
  v21 = &v11[v9[9]];
  *v21 = v20;
  v21[1] = HIBYTE(v20) & 1;
  v39 = 6;
  v22 = sub_1D1E68CFC();
  v23 = &v11[v9[10]];
  *v23 = v22;
  v23[2] = BYTE2(v22) & 1;
  v38 = 7;
  v24 = sub_1D1E68CFC();
  v25 = &v11[v9[11]];
  *v25 = v24;
  v25[2] = BYTE2(v24) & 1;
  v37 = 8;
  v26 = sub_1D1E68CEC();
  v28 = &v11[v9[12]];
  *v28 = v26;
  v28[1] = HIBYTE(v26) & 1;
  v36 = 9;
  v29 = sub_1D1E68CEC();
  (*(v13 + 8))(v33, v34);
  v30 = &v11[v9[13]];
  *v30 = v29;
  v30[1] = HIBYTE(v29) & 1;
  sub_1D19CBFE8(v11, v31, type metadata accessor for StaticLevelControlCluster);
  __swift_destroy_boxed_opaque_existential_1(v35);
  return sub_1D19CBE58(v11, type metadata accessor for StaticLevelControlCluster);
}

uint64_t sub_1D19C7EB0()
{
  sub_1D1E6920C();
  StaticLevelControlCluster.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D19C7EF4(uint64_t a1)
{
  sub_1D1E6920C();
  StaticLevelControlCluster.hash(into:)(v2);
  return sub_1D1E6926C();
}

uint64_t sub_1D19C7F98()
{
  v1 = type metadata accessor for StaticLevelControlCluster(0);
  if (*(v0 + *(v1 + 20)))
  {
    return sub_1D19CB618(1, 0.0, 100.0, *(v0 + *(v1 + 20)) / 254.0 * 100.0);
  }

  else
  {
    return static String.hfLocalized(_:)(0xD000000000000022, 0x80000001D1EC1E60);
  }
}

uint64_t sub_1D19C801C@<X0>(char *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ClusterPath(0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v48 - v10;
  v12 = type metadata accessor for StaticLevelControlCluster(0);
  v13 = *(v12 - 1);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a2;
  v16 = a2[1];
  sub_1D19CBFE8(a1, v15, type metadata accessor for ClusterPath);
  sub_1D19CBFE8(a1, v11, type metadata accessor for ClusterPath);
  v18 = sub_1D1912E6C(0, v11, v17, v16);
  sub_1D19CBE58(v11, type metadata accessor for ClusterPath);
  v50 = a3;
  if ((v18 & 0x100) != 0)
  {

    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v36 = sub_1D1E6709C();
    __swift_project_value_buffer(v36, qword_1EE07A0B0);
    sub_1D19CBFE8(a1, v9, type metadata accessor for ClusterPath);
    v37 = sub_1D1E6707C();
    v38 = sub_1D1E6833C();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v49 = v13;
      v41 = v40;
      v51 = v40;
      *v39 = 136446210;
      v42 = ClusterPath.description.getter();
      v44 = v43;
      sub_1D19CBE58(v9, type metadata accessor for ClusterPath);
      v45 = sub_1D1B1312C(v42, v44, &v51);

      *(v39 + 4) = v45;
      _os_log_impl(&dword_1D16EC000, v37, v38, "Couldn't get value for current level attribute '%{public}s'", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v41);
      v46 = v41;
      v13 = v49;
      MEMORY[0x1D3893640](v46, -1, -1);
      MEMORY[0x1D3893640](v39, -1, -1);

      v47 = a1;
    }

    else
    {

      sub_1D19CBE58(a1, type metadata accessor for ClusterPath);
      v47 = v9;
    }

    sub_1D19CBE58(v47, type metadata accessor for ClusterPath);
    sub_1D19CBE58(v15, type metadata accessor for ClusterPath);
    return (*(v13 + 56))(v50, 1, 1, v12);
  }

  else
  {
    v15[v12[5]] = v18;
    sub_1D19CBFE8(a1, v11, type metadata accessor for ClusterPath);
    v19 = v13;
    v20 = sub_1D1912E6C(2, v11, v17, v16);
    sub_1D19CBE58(v11, type metadata accessor for ClusterPath);
    v21 = &v15[v12[6]];
    *v21 = v20;
    v21[1] = HIBYTE(v20) & 1;
    sub_1D19CBFE8(a1, v11, type metadata accessor for ClusterPath);
    v22 = sub_1D1912E6C(3, v11, v17, v16);
    sub_1D19CBE58(v11, type metadata accessor for ClusterPath);
    v23 = &v15[v12[7]];
    *v23 = v22;
    v23[1] = HIBYTE(v22) & 1;
    sub_1D19CBFE8(a1, v11, type metadata accessor for ClusterPath);
    v24 = sub_1D18F5A60(16, v11, v17, v16);
    sub_1D19CBE58(v11, type metadata accessor for ClusterPath);
    v25 = &v15[v12[8]];
    *v25 = v24;
    v25[2] = BYTE2(v24) & 1;
    sub_1D19CBFE8(a1, v11, type metadata accessor for ClusterPath);
    LOWORD(v24) = sub_1D1912E6C(17, v11, v17, v16);
    sub_1D19CBE58(v11, type metadata accessor for ClusterPath);
    v26 = &v15[v12[9]];
    *v26 = v24;
    v26[1] = BYTE1(v24) & 1;
    sub_1D19CBFE8(a1, v11, type metadata accessor for ClusterPath);
    v27 = sub_1D18F5A60(18, v11, v17, v16);
    sub_1D19CBE58(v11, type metadata accessor for ClusterPath);
    v28 = &v15[v12[10]];
    *v28 = v27;
    v28[2] = BYTE2(v27) & 1;
    sub_1D19CBFE8(a1, v11, type metadata accessor for ClusterPath);
    v29 = sub_1D18F5A60(19, v11, v17, v16);
    sub_1D19CBE58(v11, type metadata accessor for ClusterPath);
    v30 = &v15[v12[11]];
    *v30 = v29;
    v30[2] = BYTE2(v29) & 1;
    sub_1D19CBFE8(a1, v11, type metadata accessor for ClusterPath);
    LOWORD(v29) = sub_1D1912E6C(20, v11, v17, v16);
    sub_1D19CBE58(v11, type metadata accessor for ClusterPath);
    v31 = &v15[v12[12]];
    *v31 = v29;
    v31[1] = BYTE1(v29) & 1;
    sub_1D19CBFE8(a1, v11, type metadata accessor for ClusterPath);
    v32 = sub_1D1912E6C(0x4000, v11, v17, v16);

    sub_1D19CBE58(a1, type metadata accessor for ClusterPath);
    sub_1D19CBE58(v11, type metadata accessor for ClusterPath);
    v33 = &v15[v12[13]];
    *v33 = v32;
    v33[1] = HIBYTE(v32) & 1;
    v34 = v50;
    sub_1D19CBFE8(v15, v50, type metadata accessor for StaticLevelControlCluster);
    (*(v19 + 56))(v34, 0, 1, v12);
    return sub_1D19CBE58(v15, type metadata accessor for StaticLevelControlCluster);
  }
}

uint64_t StaticLevelControlCluster.setOnLevel(_:)(char a1)
{
  *(v2 + 160) = a1;
  sub_1D1741B10(0, &qword_1EC6485C0, 0x1E696F5A8);
  v3 = swift_task_alloc();
  *(v2 + 144) = v3;
  *v3 = v2;
  v3[1] = sub_1D19C873C;

  return sub_1D1A092C4(v1);
}

uint64_t sub_1D19C873C(uint64_t a1)
{
  *(*v1 + 152) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D19C883C, 0, 0);
}

uint64_t sub_1D19C883C()
{
  v1 = *(v0 + 152);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648318, &unk_1D1E8D030);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D1E73A90;
    *(inited + 32) = sub_1D1E6781C();
    *(inited + 40) = v3;
    v4 = sub_1D1E6781C();
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 48) = v4;
    *(inited + 56) = v5;
    *(inited + 80) = sub_1D1E6781C();
    *(inited + 88) = v6;
    v7 = sub_1D1E691BC();
    *(inited + 120) = sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
    *(inited + 96) = v7;
    sub_1D18D6538(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646238, &qword_1D1E7E8D0);
    swift_arrayDestroy();
    v8 = sub_1D1E675DC();

    if (qword_1EC6422E8 != -1)
    {
      swift_once();
    }

    v9 = qword_1EC649398;
    if (qword_1EC649398)
    {
      v10 = qword_1EC649398;
    }

    else
    {
      v10 = sub_1D1E684DC();
      v9 = 0;
    }

    v11 = v9;
    [v1 writeAttributeOnLevelWithValue:v8 expectedValueInterval:v10];
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t StaticLevelControlCluster.setOnOffTransitionTime(_:)(__int16 a1)
{
  *(v2 + 160) = a1;
  sub_1D1741B10(0, &qword_1EC6485C0, 0x1E696F5A8);
  v3 = swift_task_alloc();
  *(v2 + 144) = v3;
  *v3 = v2;
  v3[1] = sub_1D19C8AF0;

  return sub_1D1A092C4(v1);
}

uint64_t sub_1D19C8AF0(uint64_t a1)
{
  *(*v1 + 152) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D19C8BF0, 0, 0);
}

uint64_t sub_1D19C8BF0()
{
  v1 = *(v0 + 152);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648318, &unk_1D1E8D030);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D1E73A90;
    *(inited + 32) = sub_1D1E6781C();
    *(inited + 40) = v3;
    v4 = sub_1D1E6781C();
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 48) = v4;
    *(inited + 56) = v5;
    *(inited + 80) = sub_1D1E6781C();
    *(inited + 88) = v6;
    v7 = sub_1D1E692AC();
    *(inited + 120) = sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
    *(inited + 96) = v7;
    sub_1D18D6538(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646238, &qword_1D1E7E8D0);
    swift_arrayDestroy();
    v8 = sub_1D1E675DC();

    if (qword_1EC6422E8 != -1)
    {
      swift_once();
    }

    v9 = qword_1EC649398;
    if (qword_1EC649398)
    {
      v10 = qword_1EC649398;
    }

    else
    {
      v10 = sub_1D1E684DC();
      v9 = 0;
    }

    v11 = v9;
    [v1 writeAttributeOnOffTransitionTimeWithValue:v8 expectedValueInterval:v10];
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t StaticLevelControlCluster.cluster.getter()
{
  sub_1D1741B10(0, &qword_1EC6485C0, 0x1E696F5A8);
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1D19C8EA0;

  return sub_1D1A092C4(v0);
}

uint64_t sub_1D19C8EA0(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t StaticLevelControlCluster.moveToLevel(level:)(char a1)
{
  *(v2 + 88) = v1;
  *(v2 + 184) = a1;
  *(v2 + 96) = type metadata accessor for ClusterPath(0);
  *(v2 + 104) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D19C9034, 0, 0);
}

uint64_t sub_1D19C9034()
{
  v1 = *(v0 + 184);
  v2 = [objc_allocWithZone(MEMORY[0x1E696F640]) init];
  *(v0 + 112) = v2;
  v3 = sub_1D1E691BC();
  [v2 setLevel_];

  sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
  v4 = sub_1D1E684DC();
  [v2 setTransitionTime_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6474E0, &unk_1D1E8D5E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1E739C0;
  *(inited + 32) = 0;
  v6 = inited + 32;
  *(inited + 40) = v1;
  *(inited + 48) = 1;
  v7 = sub_1D18D6FA8(inited);
  swift_setDeallocating();
  sub_1D19CBEB8(v6);
  v8 = sub_1D19C69AC(v7, 30);

  *(v0 + 120) = sub_1D18F9814(v8);

  sub_1D1741B10(0, &qword_1EC6485C0, 0x1E696F5A8);
  v9 = swift_task_alloc();
  *(v0 + 128) = v9;
  *v9 = v0;
  v9[1] = sub_1D19C9200;
  v10 = *(v0 + 88);

  return sub_1D1A092C4(v10);
}

uint64_t sub_1D19C9200(uint64_t a1)
{
  *(*v1 + 136) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D19C9300, 0, 0);
}

uint64_t sub_1D19C9300()
{
  v1 = v0[14];
  v2 = sub_1D18F95CC(v0[15]);
  v0[18] = v2;

  v3 = swift_allocObject();
  v0[19] = v3;
  *(v3 + 16) = v1;
  v4 = v1;
  v5 = ClusterPath.description.getter();
  MEMORY[0x1D3890F70](v5);

  v0[20] = 0x80000001D1EC1EB0;
  v6 = swift_task_alloc();
  v0[21] = v6;
  *v6 = v0;
  v6[1] = sub_1D19C9474;
  v7 = v0[17];

  return sub_1D1916C78(0xD000000000000014, 0x80000001D1EC1E90, v7, v2, 0xD00000000000001ALL, 0x80000001D1EC1EB0, &unk_1D1E8D5F8, v3);
}

uint64_t sub_1D19C9474()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {

    v3 = sub_1D19C9640;
  }

  else
  {
    v4 = *(v2 + 136);

    v3 = sub_1D19C95D4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D19C95D4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D19C9640()
{
  v1 = *(v0 + 176);
  *(v0 + 72) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
  type metadata accessor for MTRError(0);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 96);
    v3 = *(v0 + 104);
    v5 = *(v0 + 88);

    v6 = *(v0 + 80);
    sub_1D19CBFE8(v5, v3, type metadata accessor for ClusterPath);
    v7 = type metadata accessor for MatterCommandError.MatterError(0);
    sub_1D19CC338(&qword_1EC646F00, type metadata accessor for MatterCommandError.MatterError, &protocol conformance descriptor for MatterCommandError.MatterError);
    swift_allocError();
    v9 = v8;
    v10 = v7[7];
    v11 = type metadata accessor for StaticEndpoint(0);
    (*(*(v11 - 8) + 56))(&v9[v10], 1, 1, v11);
    *v9 = v6;
    sub_1D19CBFE8(v3, &v9[v7[5]], type metadata accessor for EndpointPath);
    LOBYTE(v10) = *(v3 + *(v4 + 20));
    v12 = v6;
    sub_1D19CBE58(v3, type metadata accessor for ClusterPath);
    v9[v7[6]] = v10;
    swift_willThrow();
  }

  v13 = *(v0 + 136);
  v14 = *(v0 + 112);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1D19C9864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[21] = a4;
  v5[22] = a5;
  v5[19] = a2;
  v5[20] = a3;
  v5[18] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D19C988C, 0, 0);
}

uint64_t sub_1D19C988C()
{
  v1 = v0[20];
  if (v1)
  {
    sub_1D18F9814(v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
    v2 = sub_1D1E67BFC();
  }

  else
  {
    v2 = 0;
  }

  v0[23] = v2;
  v4 = v0[21];
  v3 = v0[22];
  v5 = v0[19];
  v0[2] = v0;
  v0[3] = sub_1D191CA34;
  v6 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D17B04C8;
  v0[13] = &block_descriptor_45;
  v0[14] = v6;
  [v5 moveToLevelWithOnOffWithParams:v3 expectedValues:v2 expectedValueInterval:v4 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t StaticLevelControlCluster.move(direction:)(char a1)
{
  *(v2 + 32) = v1;
  *(v2 + 112) = a1;
  *(v2 + 40) = type metadata accessor for ClusterPath(0);
  *(v2 + 48) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D19C9A9C, 0, 0);
}

uint64_t sub_1D19C9A9C()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E696F648]) init];
  v0[7] = v1;
  v2 = sub_1D1E691BC();
  [v1 setMoveMode_];

  sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
  v3 = sub_1D1E684DC();
  [v1 setRate_];

  v4 = sub_1D18D6FA8(MEMORY[0x1E69E7CC0]);
  v5 = sub_1D19C69AC(v4, 30);

  sub_1D18F9814(v5);

  sub_1D1741B10(0, &qword_1EC6485C0, 0x1E696F5A8);
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_1D19C9C1C;
  v7 = v0[4];

  return sub_1D1A092C4(v7);
}

uint64_t sub_1D19C9C1C(uint64_t a1)
{
  *(*v1 + 72) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D19C9D1C, 0, 0);
}

uint64_t sub_1D19C9D1C()
{
  v1 = v0[7];
  v2 = swift_allocObject();
  v0[10] = v2;
  *(v2 + 16) = v1;
  v3 = v1;
  v4 = ClusterPath.description.getter();
  MEMORY[0x1D3890F70](v4);

  v0[11] = 0x80000001D1EC1EB0;
  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = sub_1D19C9E78;
  v6 = v0[9];

  return sub_1D1916C78(0x6874695765766F6DLL, 0xED000066664F6E4FLL, v6, 0, 0xD00000000000001ALL, 0x80000001D1EC1EB0, &unk_1D1E8D618, v2);
}

uint64_t sub_1D19C9E78()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {

    v3 = sub_1D19CA02C;
  }

  else
  {
    v4 = *(v2 + 72);

    v3 = sub_1D19C9FC0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D19C9FC0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D19CA02C()
{
  v1 = *(v0 + 104);
  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
  type metadata accessor for MTRError(0);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 40);
    v3 = *(v0 + 48);
    v5 = *(v0 + 32);

    v6 = *(v0 + 24);
    sub_1D19CBFE8(v5, v3, type metadata accessor for ClusterPath);
    v7 = type metadata accessor for MatterCommandError.MatterError(0);
    sub_1D19CC338(&qword_1EC646F00, type metadata accessor for MatterCommandError.MatterError, &protocol conformance descriptor for MatterCommandError.MatterError);
    swift_allocError();
    v9 = v8;
    v10 = v7[7];
    v11 = type metadata accessor for StaticEndpoint(0);
    (*(*(v11 - 8) + 56))(&v9[v10], 1, 1, v11);
    *v9 = v6;
    sub_1D19CBFE8(v3, &v9[v7[5]], type metadata accessor for EndpointPath);
    LOBYTE(v10) = *(v3 + *(v4 + 20));
    v12 = v6;
    sub_1D19CBE58(v3, type metadata accessor for ClusterPath);
    v9[v7[6]] = v10;
    swift_willThrow();
  }

  v13 = *(v0 + 72);
  v14 = *(v0 + 56);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1D19CA24C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[19] = a2;
  v5[20] = a5;
  v5[18] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D19CA270, 0, 0);
}

uint64_t sub_1D19CA270()
{
  v2 = v0[19];
  v1 = v0[20];
  v0[2] = v0;
  v0[3] = sub_1D19CA398;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D17B04C8;
  v0[13] = &block_descriptor_41;
  v0[14] = v3;
  [v2 moveWithOnOffWithParams:v1 expectedValues:0 expectedValueInterval:0 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D19CA398()
{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = sub_1D19CA4D4;
  }

  else
  {
    v2 = sub_1D19CA4A8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D19CA4D4(uint64_t a1)
{
  swift_willThrow();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t StaticLevelControlCluster.step(mode:)(char a1)
{
  *(v2 + 88) = v1;
  *(v2 + 168) = a1;
  *(v2 + 96) = type metadata accessor for ClusterPath(0);
  *(v2 + 104) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D19CA5D8, 0, 0);
}

uint64_t sub_1D19CA5D8()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 168);
  v3 = [objc_allocWithZone(MEMORY[0x1E696F650]) init];
  *(v0 + 112) = v3;
  v4 = sub_1D1E691BC();
  [v3 setStepMode_];

  v5 = sub_1D1E6821C();
  [v3 setStepSize_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6474E0, &unk_1D1E8D5E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1E739C0;
  *(inited + 32) = 0;
  v7 = type metadata accessor for StaticLevelControlCluster(0);
  v8 = -5;
  if (v2 != 1)
  {
    v8 = 5;
  }

  *(inited + 40) = v8 + *(v1 + *(v7 + 20));
  *(inited + 48) = 1;
  v9 = sub_1D18D6FA8(inited);
  swift_setDeallocating();
  sub_1D19CBEB8(inited + 32);
  v10 = sub_1D19C69AC(v9, 30);

  sub_1D18F9814(v10);

  sub_1D1741B10(0, &qword_1EC6485C0, 0x1E696F5A8);
  v11 = swift_task_alloc();
  *(v0 + 120) = v11;
  *v11 = v0;
  v11[1] = sub_1D19CA7A8;
  v12 = *(v0 + 88);

  return sub_1D1A092C4(v12);
}

uint64_t sub_1D19CA7A8(uint64_t a1)
{
  *(*v1 + 128) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D19CA8A8, 0, 0);
}

uint64_t sub_1D19CA8A8()
{
  v1 = v0[14];
  v2 = swift_allocObject();
  v0[17] = v2;
  *(v2 + 16) = v1;
  v3 = v1;
  v4 = ClusterPath.description.getter();
  MEMORY[0x1D3890F70](v4);

  v0[18] = 0x80000001D1EC1EB0;
  v5 = swift_task_alloc();
  v0[19] = v5;
  *v5 = v0;
  v5[1] = sub_1D19CAA04;
  v6 = v0[16];

  return sub_1D1916C78(0x6874695770657473, 0xED000066664F6E4FLL, v6, 0, 0xD00000000000001ALL, 0x80000001D1EC1EB0, &unk_1D1E8D630, v2);
}

uint64_t sub_1D19CAA04()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {

    v3 = sub_1D19CAB4C;
  }

  else
  {
    v4 = *(v2 + 128);

    v3 = sub_1D19CC8FC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D19CAB4C()
{
  v1 = *(v0 + 160);
  *(v0 + 72) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
  type metadata accessor for MTRError(0);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 96);
    v3 = *(v0 + 104);
    v5 = *(v0 + 88);

    v6 = *(v0 + 80);
    sub_1D19CBFE8(v5, v3, type metadata accessor for ClusterPath);
    v7 = type metadata accessor for MatterCommandError.MatterError(0);
    sub_1D19CC338(&qword_1EC646F00, type metadata accessor for MatterCommandError.MatterError, &protocol conformance descriptor for MatterCommandError.MatterError);
    swift_allocError();
    v9 = v8;
    v10 = v7[7];
    v11 = type metadata accessor for StaticEndpoint(0);
    (*(*(v11 - 8) + 56))(&v9[v10], 1, 1, v11);
    *v9 = v6;
    sub_1D19CBFE8(v3, &v9[v7[5]], type metadata accessor for EndpointPath);
    LOBYTE(v10) = *(v3 + *(v4 + 20));
    v12 = v6;
    sub_1D19CBE58(v3, type metadata accessor for ClusterPath);
    v9[v7[6]] = v10;
    swift_willThrow();
  }

  v13 = *(v0 + 128);
  v14 = *(v0 + 112);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1D19CAD6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[19] = a2;
  v5[20] = a5;
  v5[18] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D19CAD90, 0, 0);
}

uint64_t sub_1D19CAD90()
{
  v2 = v0[19];
  v1 = v0[20];
  v0[2] = v0;
  v0[3] = sub_1D19CAEB8;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D17B04C8;
  v0[13] = &block_descriptor_37;
  v0[14] = v3;
  [v2 stepWithOnOffWithParams:v1 expectedValues:0 expectedValueInterval:0 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D19CAEB8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = sub_1D19CC918;
  }

  else
  {
    v2 = sub_1D19CC920;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t StaticLevelControlCluster.stop()()
{
  v1[4] = v0;
  v1[5] = type metadata accessor for ClusterPath(0);
  v1[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D19CB05C, 0, 0);
}

uint64_t sub_1D19CB05C()
{
  v0[7] = [objc_allocWithZone(MEMORY[0x1E696F658]) init];
  sub_1D1741B10(0, &qword_1EC6485C0, 0x1E696F5A8);
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_1D19CB128;
  v2 = v0[4];

  return sub_1D1A092C4(v2);
}

uint64_t sub_1D19CB128(uint64_t a1)
{
  *(*v1 + 72) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D19CB228, 0, 0);
}

uint64_t sub_1D19CB228()
{
  v1 = v0[7];
  v2 = swift_allocObject();
  v0[10] = v2;
  *(v2 + 16) = v1;
  v3 = v1;
  v4 = ClusterPath.description.getter();
  MEMORY[0x1D3890F70](v4);

  v0[11] = 0x80000001D1EC1EB0;
  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = sub_1D19CB384;
  v6 = v0[9];

  return sub_1D1916C78(0x68746957706F7473, 0xED000066664F6E4FLL, v6, 0, 0xD00000000000001ALL, 0x80000001D1EC1EB0, &unk_1D1E8D648, v2);
}

uint64_t sub_1D19CB384()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {

    v3 = sub_1D19CC914;
  }

  else
  {
    v4 = *(v2 + 72);

    v3 = sub_1D19CC900;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D19CB4CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[19] = a2;
  v5[20] = a5;
  v5[18] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D19CB4F0, 0, 0);
}

uint64_t sub_1D19CB4F0()
{
  v2 = v0[19];
  v1 = v0[20];
  v0[2] = v0;
  v0[3] = sub_1D19CAEB8;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D17B04C8;
  v0[13] = &block_descriptor_26;
  v0[14] = v3;
  [v2 stopWithOnOffWithParams:v1 expectedValues:0 expectedValueInterval:0 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D19CB618(int a1, double a2, double a3, double a4)
{
  v42 = a1;
  v7 = sub_1D1E68FFC();
  v38 = *(v7 - 8);
  v39 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v37 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C60, &unk_1D1E77540);
  v41 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v37 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v40 = &v37 - v16;
  v43 = sub_1D1E6673C();
  v17 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1D1E66ADC();
  MEMORY[0x1EEE9AC00](v20 - 8);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6485E8, &qword_1D1EA1860);
  v22 = *(v21 - 8);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v37 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v37 - v26;
  if (a2 > a4)
  {
    v28 = a2;
  }

  else
  {
    v28 = a4;
  }

  if (v28 > a3)
  {
    v28 = a3;
  }

  v29 = (v28 - a2) / (a3 - a2);
  if (v42)
  {
    v44 = v29;
    sub_1D1E66ABC();
    sub_1D173FC5C();
    sub_1D1E6665C();
    sub_1D1E6672C();
    MEMORY[0x1D388FCA0](v19, v21);
    (*(v17 + 8))(v19, v43);
    v30 = *(v22 + 8);
    v30(v25, v21);
    sub_1D17D8EA8(&qword_1EC6485F0, &qword_1EC6485E8, &qword_1D1EA1860, MEMORY[0x1E6968E60]);
    sub_1D1E675AC();
    v30(v27, v21);
  }

  else
  {
    v44 = v29 * 100.0;
    sub_1D1E66ABC();
    sub_1D173FC5C();
    sub_1D1E6662C();
    v32 = v37;
    v31 = v38;
    v33 = v39;
    (*(v38 + 104))(v37, *MEMORY[0x1E69E7030], v39);
    MEMORY[0x1D388FCB0](v32, 0, 1, v9);
    (*(v31 + 8))(v32, v33);
    v34 = *(v41 + 8);
    v34(v12, v9);
    sub_1D1E6672C();
    v35 = v40;
    MEMORY[0x1D388FCE0](v19, v9);
    (*(v17 + 8))(v19, v43);
    v34(v15, v9);
    sub_1D17D8EA8(&qword_1EC644C80, &qword_1EC644C60, &unk_1D1E77540, MEMORY[0x1E6968E80]);
    sub_1D1E675AC();
    v34(v35, v9);
  }

  return v45;
}

BOOL _s13HomeDataModel25StaticLevelControlClusterV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for EndpointPath(0);
  if (*(a1 + *(v4 + 20)) != *(a2 + *(v4 + 20)))
  {
    return 0;
  }

  if (*(a1 + *(v4 + 24)) != *(a2 + *(v4 + 24)))
  {
    return 0;
  }

  v5 = type metadata accessor for ClusterPath(0);
  if (dword_1D1E8D8F4[*(a1 + *(v5 + 20))] != dword_1D1E8D8F4[*(a2 + *(v5 + 20))])
  {
    return 0;
  }

  v6 = type metadata accessor for StaticLevelControlCluster(0);
  if (*(a1 + v6[5]) != *(a2 + v6[5]))
  {
    return 0;
  }

  v7 = v6[6];
  v8 = (a1 + v7);
  v9 = *(a1 + v7 + 1);
  v10 = (a2 + v7);
  v11 = *(a2 + v7 + 1);
  if (v9)
  {
    if (!v11)
    {
      return 0;
    }
  }

  else
  {
    if (*v8 != *v10)
    {
      LOBYTE(v11) = 1;
    }

    if (v11)
    {
      return 0;
    }
  }

  v12 = v6[7];
  v13 = (a1 + v12);
  v14 = *(a1 + v12 + 1);
  v15 = (a2 + v12);
  v16 = *(a2 + v12 + 1);
  if (v14)
  {
    if (!v16)
    {
      return 0;
    }
  }

  else
  {
    if (*v13 != *v15)
    {
      LOBYTE(v16) = 1;
    }

    if (v16)
    {
      return 0;
    }
  }

  v17 = v6[8];
  v18 = (a1 + v17);
  v19 = *(a1 + v17 + 2);
  v20 = (a2 + v17);
  v21 = *(a2 + v17 + 2);
  if (v19)
  {
    if (!v21)
    {
      return 0;
    }
  }

  else
  {
    if (*v18 != *v20)
    {
      LOBYTE(v21) = 1;
    }

    if (v21)
    {
      return 0;
    }
  }

  v22 = v6[9];
  v23 = (a1 + v22);
  v24 = *(a1 + v22 + 1);
  v25 = (a2 + v22);
  v26 = *(a2 + v22 + 1);
  if (v24)
  {
    if (!v26)
    {
      return 0;
    }
  }

  else
  {
    if (*v23 != *v25)
    {
      LOBYTE(v26) = 1;
    }

    if (v26)
    {
      return 0;
    }
  }

  v27 = v6[10];
  v28 = (a1 + v27);
  v29 = *(a1 + v27 + 2);
  v30 = (a2 + v27);
  v31 = *(a2 + v27 + 2);
  if (v29)
  {
    if (!v31)
    {
      return 0;
    }
  }

  else
  {
    if (*v28 != *v30)
    {
      LOBYTE(v31) = 1;
    }

    if (v31)
    {
      return 0;
    }
  }

  v32 = v6[11];
  v33 = (a1 + v32);
  v34 = *(a1 + v32 + 2);
  v35 = (a2 + v32);
  v36 = *(a2 + v32 + 2);
  if (v34)
  {
    if (!v36)
    {
      return 0;
    }
  }

  else
  {
    if (*v33 != *v35)
    {
      LOBYTE(v36) = 1;
    }

    if (v36)
    {
      return 0;
    }
  }

  v37 = v6[12];
  v38 = (a1 + v37);
  v39 = *(a1 + v37 + 1);
  v40 = (a2 + v37);
  v41 = *(a2 + v37 + 1);
  if (v39)
  {
    if (!v41)
    {
      return 0;
    }
  }

  else
  {
    if (*v38 != *v40)
    {
      LOBYTE(v41) = 1;
    }

    if (v41)
    {
      return 0;
    }
  }

  v42 = v6[13];
  v43 = (a1 + v42);
  v44 = *(a1 + v42 + 1);
  v45 = (a2 + v42);
  v46 = *(a2 + v42 + 1);
  if ((v44 & 1) == 0)
  {
    if (*v43 != *v45)
    {
      v46 = 1;
    }

    return (v46 & 1) == 0;
  }

  return (v46 & 1) != 0;
}

unint64_t sub_1D19CBE04()
{
  result = qword_1EC6485B0;
  if (!qword_1EC6485B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6485B0);
  }

  return result;
}

uint64_t sub_1D19CBE58(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D19CBEB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6474E8, &unk_1D1E86820);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D19CBF20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(v4 + 16);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1D17C4BFC;

  return sub_1D19C9864(a1, a2, a3, a4, v10);
}

uint64_t sub_1D19CBFE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D19CC050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(v4 + 16);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1D17C4CF0;

  return sub_1D19CA24C(a1, a2, a3, a4, v10);
}

uint64_t sub_1D19CC118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(v4 + 16);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1D17C4CF0;

  return sub_1D19CAD6C(a1, a2, a3, a4, v10);
}

uint64_t sub_1D19CC1E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(v4 + 16);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1D17C4CF0;

  return sub_1D19CB4CC(a1, a2, a3, a4, v10);
}

uint64_t sub_1D19CC338(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1D19CC3A8(uint64_t a1)
{
  type metadata accessor for ClusterPath(319);
  if (v1 <= 0x3F)
  {
    sub_1D17BDF80(319, &qword_1EE07B608, MEMORY[0x1E69E7508]);
    if (v2 <= 0x3F)
    {
      sub_1D17BDF80(319, &qword_1EE07D1D0, MEMORY[0x1E69E75F8]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1D19CC488()
{
  result = qword_1EC6485D0;
  if (!qword_1EC6485D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6485D0);
  }

  return result;
}

unint64_t sub_1D19CC4E0()
{
  result = qword_1EC6485D8;
  if (!qword_1EC6485D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6485D8);
  }

  return result;
}

unint64_t sub_1D19CC538()
{
  result = qword_1EC6485E0;
  if (!qword_1EC6485E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6485E0);
  }

  return result;
}

uint64_t sub_1D19CC58C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4C746E6572727563 && a2 == 0xEC0000006C657665 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C6576654C6E696DLL && a2 == 0xE800000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C6576654C78616DLL && a2 == 0xE800000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D1EC1ED0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6C6576654C6E6FLL && a2 == 0xE700000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D1EC1EF0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D1EC1F10 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x4D746C7561666564 && a2 == 0xEF6574615265766FLL || (sub_1D1E6904C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D1EC1F30 == a2)
  {

    return 9;
  }

  else
  {
    v6 = sub_1D1E6904C();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t type metadata accessor for StaticOnOffCluster(uint64_t a1)
{
  result = qword_1EE07C7A8;
  if (!qword_1EE07C7A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t StaticOnOffCluster.init(id:value:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  sub_1D190D804(a1, a3);
  result = type metadata accessor for StaticOnOffCluster(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t static StaticOnOffCluster.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) != 0 && (v4 = type metadata accessor for EndpointPath(0), *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20))) && *(a1 + *(v4 + 24)) == *(a2 + *(v4 + 24)) && (v5 = type metadata accessor for ClusterPath(0), dword_1D1E8DC2C[*(a1 + *(v5 + 20))] == dword_1D1E8DC2C[*(a2 + *(v5 + 20))]))
  {
    v6 = type metadata accessor for StaticOnOffCluster(0);
    v7 = *(a1 + *(v6 + 20)) ^ *(a2 + *(v6 + 20)) ^ 1;
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_1D19CCAB4()
{
  if (*v0)
  {
    return 0x65756C6176;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_1D19CCAE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_1D1E6904C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D1E6904C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1D19CCBB0(uint64_t a1)
{
  v2 = sub_1D19CFB78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}