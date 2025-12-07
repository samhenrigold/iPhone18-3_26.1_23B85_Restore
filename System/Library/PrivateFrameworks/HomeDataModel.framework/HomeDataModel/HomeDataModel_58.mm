uint64_t sub_1D1C09FA4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D1C10BB4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D1C09FD8(uint64_t a1)
{
  v2 = sub_1D1C10088();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1C0A014(uint64_t a1)
{
  v2 = sub_1D1C10088();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticMediaSystem.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C920, &qword_1D1EA0D98);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1C10088();
  sub_1D1E6930C();
  LOBYTE(v15) = 0;
  sub_1D1E66A7C();
  sub_1D1C11294(&qword_1EE07B258, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  sub_1D1E68F1C();
  if (!v2)
  {
    v9 = type metadata accessor for StaticMediaSystem(0);
    LOBYTE(v15) = 1;
    sub_1D1E68ECC();
    v10 = v3 + *(v9 + 24);
    v11 = *(v10 + 8);
    v15 = *v10;
    v16 = v11;
    v17 = 2;
    sub_1D18EB144(v15, v11);
    sub_1D18F1630();
    sub_1D1E68E5C();
    sub_1D18EB2D8(v15, v16);
    v14 = v9;
    LOBYTE(v15) = 3;
    sub_1D1E669FC();
    sub_1D1C11294(&qword_1EC642EC8, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    sub_1D1E68E5C();
    LOBYTE(v15) = 4;
    sub_1D1E68ECC();
    LOBYTE(v15) = 5;
    sub_1D1E68EDC();
    LOBYTE(v15) = 6;
    sub_1D1E68EDC();
    LOBYTE(v15) = 7;
    sub_1D1E68EDC();
    LOBYTE(v15) = 8;
    sub_1D1E68EDC();
    LOBYTE(v15) = 9;
    sub_1D1E68EDC();
    LOBYTE(v15) = 10;
    sub_1D1E68EDC();
    LOBYTE(v15) = *(v3 + v14[15]);
    v17 = 11;
    sub_1D1C072B8();
    sub_1D1E68E5C();
    LOBYTE(v15) = 12;
    sub_1D1E68E0C();
    v15 = *(v3 + v14[17]);
    v17 = 13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C340, &qword_1D1E9E550);
    sub_1D1BC93A0(&qword_1EC64C348, sub_1D1BC9140, MEMORY[0x1E69E64F0]);
    sub_1D1E68E5C();
    LOBYTE(v15) = 14;
    type metadata accessor for StaticSoftwareUpdate(0);
    sub_1D1C11294(&qword_1EC64C330, type metadata accessor for StaticSoftwareUpdate, &protocol conformance descriptor for StaticSoftwareUpdate);
    sub_1D1E68E5C();
    LOBYTE(v15) = *(v3 + v14[19]);
    v17 = 15;
    sub_1D1BC90EC();
    sub_1D1E68F1C();
    LOBYTE(v15) = 16;
    sub_1D1E68F1C();
    v15 = *(v3 + v14[21]);
    v17 = 17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6438F0, &qword_1D1E99360);
    sub_1D1C10264(&qword_1EC646B10, &qword_1EE07B258, MEMORY[0x1E69695B0], MEMORY[0x1E69E64F0]);
    sub_1D1E68F1C();
    LOBYTE(v15) = 18;
    sub_1D1E68E0C();
    v15 = *(v3 + v14[23]);
    v17 = 19;
    sub_1D1E68F1C();
    v15 = *(v3 + v14[24]);
    v17 = 20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C930, &qword_1D1EA0DA0);
    sub_1D1C100DC(&qword_1EC64C938, &qword_1EC64C328, &protocol conformance descriptor for StaticAccessory.DeviceIdentifier, MEMORY[0x1E69E64F0]);
    sub_1D1E68F1C();
    v15 = *(v3 + v14[25]);
    v17 = 21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C940, &qword_1D1EA0DA8);
    sub_1D1C10178();
    sub_1D1E68F1C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t StaticMediaSystem.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v4 = type metadata accessor for StaticSoftwareUpdate(0);
  v26 = *(v4 - 8);
  v27 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v24[0] = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644760, &unk_1D1E9E530);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v25 = v24 - v7;
  v8 = sub_1D1E669FC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v24 - v13;
  v15 = sub_1D1E66A7C();
  v24[1] = sub_1D1C11294(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v24[2] = v15;
  sub_1D1E676EC();
  v16 = type metadata accessor for StaticMediaSystem(0);
  sub_1D1E678EC();
  v17 = v1 + v16[6];
  v18 = *(v17 + 8);
  if (v18 == 255)
  {
    sub_1D1E6922C();
  }

  else
  {
    v28 = *v17;
    v19 = v28;
    v29 = v18;
    sub_1D1E6922C();
    sub_1D1771B4C(v19, v18);
    StaticAccessory.SpecialMediaCategory.hash(into:)(a1);
    sub_1D1771B5C(v28, v29);
  }

  sub_1D1741C08(v1 + v16[7], v14, &qword_1EC642570, &qword_1D1E6C6A0);
  if ((*(v9 + 48))(v14, 1, v8) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    (*(v9 + 32))(v11, v14, v8);
    sub_1D1E6922C();
    sub_1D1C11294(&qword_1EC642A50, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
    sub_1D1E676EC();
    (*(v9 + 8))(v11, v8);
  }

  sub_1D1E678EC();
  sub_1D1E6922C();
  sub_1D1E6922C();
  sub_1D1E6922C();
  sub_1D1E6922C();
  sub_1D1E6922C();
  sub_1D1E6922C();
  v20 = *(v1 + v16[15]);
  sub_1D1E6922C();
  if (v20 != 6)
  {
    MEMORY[0x1D3892850](v20);
  }

  if (*(v1 + v16[16] + 8))
  {
    sub_1D1E6922C();
    sub_1D1E678EC();
  }

  else
  {
    sub_1D1E6922C();
  }

  if (*(v1 + v16[17]))
  {
    sub_1D1E6922C();
    sub_1D1771CBC();
  }

  else
  {
    sub_1D1E6922C();
  }

  v21 = v25;
  sub_1D1741C08(v2 + v16[18], v25, &qword_1EC644760, &unk_1D1E9E530);
  if ((*(v26 + 48))(v21, 1, v27) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    v22 = v24[0];
    sub_1D1C11B50(v21, v24[0], type metadata accessor for StaticSoftwareUpdate);
    sub_1D1E6922C();
    sub_1D1E676EC();
    StaticSoftwareUpdate.Kind.hash(into:)(a1);
    sub_1D1C11AF0(v22, type metadata accessor for StaticSoftwareUpdate);
  }

  MEMORY[0x1D3892850](*(v2 + v16[19]));
  sub_1D1E676EC();
  sub_1D176D4E8(a1, *(v2 + v16[21]));
  if (*(v2 + v16[22] + 8))
  {
    sub_1D1E6922C();
    sub_1D1E678EC();
  }

  else
  {
    sub_1D1E6922C();
  }

  sub_1D176D4E8(a1, *(v2 + v16[23]));
  sub_1D176DEFC(a1, *(v2 + v16[24]));
  return sub_1D185B23C(a1, *(v2 + v16[25]));
}

uint64_t StaticMediaSystem.hashValue.getter()
{
  sub_1D1E6920C();
  StaticMediaSystem.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t StaticMediaSystem.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644760, &unk_1D1E9E530);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v74 = &v66 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v76 = &v66 - v6;
  v7 = sub_1D1E66A7C();
  v75 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v80 = &v66 - v11;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C958, &qword_1D1EA0DB0);
  v77 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v13 = &v66 - v12;
  v14 = type metadata accessor for StaticMediaSystem(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1C10088();
  v78 = v13;
  v17 = v81;
  sub_1D1E692FC();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v18 = v76;
  v70 = v10;
  v71 = v14;
  v72 = a1;
  v81 = v16;
  LOBYTE(v82) = 0;
  sub_1D1C11294(&qword_1EC644B20, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
  v19 = v79;
  v20 = v78;
  sub_1D1E68D7C();
  v22 = *(v75 + 32);
  v23 = v81;
  v22(v81, v80, v7);
  LOBYTE(v82) = 1;
  v24 = sub_1D1E68D2C();
  v80 = v7;
  v25 = v71;
  v26 = &v23[v71[5]];
  *v26 = v24;
  v26[1] = v27;
  v84 = 2;
  sub_1D18F18D0();
  v68 = 0;
  sub_1D1E68CBC();
  v69 = 0;
  v67 = v22;
  v28 = v83;
  v29 = &v23[v25[6]];
  *v29 = v82;
  v29[8] = v28;
  sub_1D1E669FC();
  LOBYTE(v82) = 3;
  sub_1D1C11294(&qword_1EC642EB8, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
  v30 = v69;
  sub_1D1E68CBC();
  if (v30)
  {
    v69 = v30;
    (*(v77 + 8))(v20, v19);
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    LODWORD(v73) = 0;
    LODWORD(v74) = 0;
    LODWORD(v76) = 0;
    LODWORD(v77) = 0;
    LODWORD(v78) = 0;
    LODWORD(v79) = 0;
  }

  else
  {
    sub_1D1741A90(v18, &v23[v25[7]], &qword_1EC642570, &qword_1D1E6C6A0);
    LOBYTE(v82) = 4;
    v35 = sub_1D1E68D2C();
    v36 = &v23[v25[8]];
    *v36 = v35;
    v36[1] = v37;
    LOBYTE(v82) = 5;
    v23[v25[9]] = sub_1D1E68D3C() & 1;
    LOBYTE(v82) = 6;
    v23[v25[10]] = sub_1D1E68D3C() & 1;
    LOBYTE(v82) = 7;
    v23[v71[11]] = sub_1D1E68D3C() & 1;
    LOBYTE(v82) = 8;
    v43 = sub_1D1E68D3C();
    v69 = 0;
    v81[v71[12]] = v43 & 1;
    LOBYTE(v82) = 9;
    v44 = v69;
    v45 = sub_1D1E68D3C();
    v69 = v44;
    if (v44 || (v81[v71[13]] = v45 & 1, LOBYTE(v82) = 10, v46 = v69, v47 = sub_1D1E68D3C(), (v69 = v46) != 0) || (v81[v71[14]] = v47 & 1, v84 = 11, sub_1D1C073FC(), v48 = v69, sub_1D1E68CBC(), (v69 = v48) != 0) || (v81[v71[15]] = v82, LOBYTE(v82) = 12, v49 = v69, v50 = sub_1D1E68C6C(), (v69 = v49) != 0))
    {
      (*(v77 + 8))(v78, v79);
      v33 = 0;
      v34 = 0;
      LODWORD(v73) = 0;
      LODWORD(v74) = 0;
      LODWORD(v76) = 0;
      LODWORD(v77) = 0;
      LODWORD(v78) = 0;
      LODWORD(v79) = 0;
      v31 = 1;
      v32 = 1;
    }

    else
    {
      v52 = &v81[v71[16]];
      *v52 = v50;
      v52[1] = v51;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C340, &qword_1D1E9E550);
      v84 = 13;
      sub_1D1BC93A0(&qword_1EC64C380, sub_1D1BC9418, MEMORY[0x1E69E6510]);
      v53 = v69;
      sub_1D1E68CBC();
      v69 = v53;
      if (v53)
      {
        (*(v77 + 8))(v78, v79);
        v34 = 0;
        LODWORD(v73) = 0;
        LODWORD(v74) = 0;
        LODWORD(v76) = 0;
        LODWORD(v77) = 0;
        LODWORD(v78) = 0;
        LODWORD(v79) = 0;
        v31 = 1;
        v32 = 1;
        v33 = 1;
      }

      else
      {
        *&v81[v71[17]] = v82;
        type metadata accessor for StaticSoftwareUpdate(0);
        LOBYTE(v82) = 14;
        sub_1D1C11294(&qword_1EC64C370, type metadata accessor for StaticSoftwareUpdate, &protocol conformance descriptor for StaticSoftwareUpdate);
        v54 = v69;
        sub_1D1E68CBC();
        v69 = v54;
        if (v54)
        {
          (*(v77 + 8))(v78, v79);
          LODWORD(v73) = 0;
          LODWORD(v74) = 0;
          LODWORD(v76) = 0;
          LODWORD(v77) = 0;
          LODWORD(v78) = 0;
          LODWORD(v79) = 0;
          v31 = 1;
          v32 = 1;
          v33 = 1;
          v34 = 1;
        }

        else
        {
          sub_1D1741A90(v74, &v81[v71[18]], &qword_1EC644760, &unk_1D1E9E530);
          v84 = 15;
          sub_1D1BC934C();
          v55 = v69;
          sub_1D1E68D7C();
          v69 = v55;
          if (v55 || (v81[v71[19]] = v82, LOBYTE(v82) = 16, v56 = v69, sub_1D1E68D7C(), (v69 = v56) != 0))
          {
            (*(v77 + 8))(v78, v79);
            LODWORD(v74) = 0;
            LODWORD(v76) = 0;
            LODWORD(v77) = 0;
            LODWORD(v78) = 0;
            LODWORD(v79) = 0;
            v31 = 1;
            v32 = 1;
            v33 = 1;
            v34 = 1;
            LODWORD(v73) = 1;
          }

          else
          {
            v67(&v81[v71[20]], v70, v80);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6438F0, &qword_1D1E99360);
            v84 = 17;
            sub_1D1C10264(&qword_1EC646B78, &qword_1EC644B20, MEMORY[0x1E69695D0], MEMORY[0x1E69E6510]);
            v57 = v69;
            sub_1D1E68D7C();
            v69 = v57;
            if (v57)
            {
              (*(v77 + 8))(v78, v79);
              LODWORD(v76) = 0;
              LODWORD(v77) = 0;
              LODWORD(v78) = 0;
              LODWORD(v79) = 0;
              v31 = 1;
              v32 = 1;
              v33 = 1;
              v34 = 1;
              LODWORD(v73) = 1;
              LODWORD(v74) = 1;
            }

            else
            {
              *&v81[v71[21]] = v82;
              LOBYTE(v82) = 18;
              v58 = v69;
              v59 = sub_1D1E68C6C();
              v69 = v58;
              if (v58)
              {
                (*(v77 + 8))(v78, v79);
                LODWORD(v77) = 0;
                LODWORD(v78) = 0;
                LODWORD(v79) = 0;
                v31 = 1;
                v32 = 1;
                v33 = 1;
                v34 = 1;
                LODWORD(v73) = 1;
                LODWORD(v74) = 1;
                LODWORD(v76) = 1;
              }

              else
              {
                v61 = &v81[v71[22]];
                *v61 = v59;
                v61[1] = v60;
                v84 = 19;
                v62 = v69;
                sub_1D1E68D7C();
                v69 = v62;
                if (v62)
                {
                  (*(v77 + 8))(v78, v79);
                  LODWORD(v78) = 0;
                  LODWORD(v79) = 0;
                  v31 = 1;
                  v32 = 1;
                  v33 = 1;
                  v34 = 1;
                  LODWORD(v73) = 1;
                  LODWORD(v74) = 1;
                  LODWORD(v76) = 1;
                  LODWORD(v77) = 1;
                }

                else
                {
                  *&v81[v71[23]] = v82;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C930, &qword_1D1EA0DA0);
                  v84 = 20;
                  sub_1D1C100DC(&qword_1EC64C960, &qword_1EC64C368, &protocol conformance descriptor for StaticAccessory.DeviceIdentifier, MEMORY[0x1E69E6510]);
                  v63 = v69;
                  sub_1D1E68D7C();
                  v69 = v63;
                  if (v63)
                  {
                    (*(v77 + 8))(v78, v79);
                    LODWORD(v79) = 0;
                    v31 = 1;
                    v32 = 1;
                    v33 = 1;
                    v34 = 1;
                    LODWORD(v73) = 1;
                    LODWORD(v74) = 1;
                    LODWORD(v76) = 1;
                    LODWORD(v77) = 1;
                    LODWORD(v78) = 1;
                  }

                  else
                  {
                    *&v81[v71[24]] = v82;
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C940, &qword_1D1EA0DA8);
                    v84 = 21;
                    sub_1D1C10300();
                    v64 = v69;
                    sub_1D1E68D7C();
                    v69 = v64;
                    if (!v64)
                    {
                      (*(v77 + 8))(v78, v79);
                      v65 = v81;
                      *&v81[v71[25]] = v82;
                      sub_1D1C11A88(v65, v73, type metadata accessor for StaticMediaSystem);
                      __swift_destroy_boxed_opaque_existential_1(v72);
                      return sub_1D1C11AF0(v65, type metadata accessor for StaticMediaSystem);
                    }

                    (*(v77 + 8))(v78, v79);
                    v31 = 1;
                    v32 = 1;
                    v33 = 1;
                    v34 = 1;
                    LODWORD(v73) = 1;
                    LODWORD(v74) = 1;
                    LODWORD(v76) = 1;
                    LODWORD(v77) = 1;
                    LODWORD(v78) = 1;
                    LODWORD(v79) = 1;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v38 = v68;
  __swift_destroy_boxed_opaque_existential_1(v72);
  v39 = *(v75 + 8);
  v39(v81, v80);
  if (!v38)
  {
  }

  v40 = v71;
  v41 = v81;
  result = sub_1D18EB2D8(*&v81[v71[6]], v81[v71[6] + 8]);
  if (v31)
  {
    result = sub_1D1741A30(&v41[v40[7]], &qword_1EC642570, &qword_1D1E6C6A0);
    if (v32)
    {
LABEL_12:

      if ((v33 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_23;
    }
  }

  else if (v32)
  {
    goto LABEL_12;
  }

  if (!v33)
  {
LABEL_13:
    if (v34)
    {
      goto LABEL_14;
    }

    goto LABEL_24;
  }

LABEL_23:

  if (v34)
  {
LABEL_14:

    if ((v73 & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_25;
  }

LABEL_24:
  if (!v73)
  {
LABEL_15:
    v42 = v80;
    if (v74)
    {
      goto LABEL_16;
    }

    goto LABEL_26;
  }

LABEL_25:
  result = sub_1D1741A30(&v41[v40[18]], &qword_1EC644760, &unk_1D1E9E530);
  v42 = v80;
  if (v74)
  {
LABEL_16:
    result = (v39)(&v41[v40[20]], v42);
    if ((v76 & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_27;
  }

LABEL_26:
  if (!v76)
  {
LABEL_17:
    if (v77)
    {
      goto LABEL_18;
    }

    goto LABEL_28;
  }

LABEL_27:

  if (v77)
  {
LABEL_18:

    if ((v78 & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_29;
  }

LABEL_28:
  if (!v78)
  {
LABEL_19:
    if (v79)
    {
    }

    return result;
  }

LABEL_29:

  if (v79)
  {
  }

  return result;
}

uint64_t sub_1D1C0BE88()
{
  sub_1D1E6920C();
  StaticMediaSystem.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D1C0BECC(uint64_t a1)
{
  sub_1D1E6920C();
  StaticMediaSystem.hash(into:)(v2);
  return sub_1D1E6926C();
}

void StaticMediaSystem.tileIcon.getter(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for StaticMediaSystem(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1C11A88(v1, v5, type metadata accessor for StaticMediaSystem);
  Icon.init(staticMediaSystem:)(v5, a1);
}

uint64_t StaticMediaSystem.foregroundColor.getter()
{
  if (StaticMediaSystem.isActivated.getter())
  {
    return sub_1D1E673AC();
  }

  else
  {
    return sub_1D1E673CC();
  }
}

uint64_t StaticMediaSystem.set(showInDashboard:)(char a1)
{
  *(v1 + 32) = a1;
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1D1C0C0C8;

  return StaticMediaSystem.mediaSystem.getter();
}

uint64_t sub_1D1C0C0C8(uint64_t a1)
{
  *(*v1 + 24) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1C0C1C8, 0, 0);
}

uint64_t sub_1D1C0C1C8()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 32);
    v3 = v1;
    HMMediaSystem.shouldShowInDashboard.setter(v2);
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t StaticMediaSystem.mediaSystem.getter()
{
  v1[5] = v0;
  v2 = sub_1D1E66A7C();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1C0C318, 0, 0);
}

uint64_t sub_1D1C0C318()
{
  v1 = _s13HomeDataModel0A5StateV6StreamC17sharedIfAvailableAESgvgZ_0();
  v0[10] = v1;
  if (v1)
  {
    if (qword_1EC642358 != -1)
    {
      swift_once();
    }

    v2 = qword_1EC64ABE8;
    v3 = sub_1D1C0C408;
    v4 = 0;
  }

  else
  {
    v0[12] = sub_1D1E67E1C();
    v0[13] = sub_1D1E67E0C();
    v5 = sub_1D1E67D4C();
    v7 = v6;
    v3 = sub_1D1C0C874;
    v2 = v5;
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v3, v2, v4);
}

uint64_t sub_1D1C0C408()
{
  v43 = v0;
  v2 = v0;
  v3 = v0[10];
  swift_beginAccess();
  v4 = *(v3 + 64);
  if (v4)
  {
    v5 = [v4 homes];
    sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
    sub_1D1E67C1C();

    v42 = sub_1D1749970(v6);
    sub_1D1747DDC(&v42);

    v7 = v42;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v8 = v0[8];
  v9 = v0[6];
  v10 = v0[5];
  v11 = *(v0[7] + 16);
  v11(v0[9], v10, v9);
  v11(v8, v10, v9);
  v40 = v7 >> 62;
  if (v7 >> 62)
  {
LABEL_31:
    v41 = v7 & 0xFFFFFFFFFFFFFF8;
    v12 = sub_1D1E6873C();
  }

  else
  {
    v41 = v7 & 0xFFFFFFFFFFFFFF8;
    v12 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = 0;
  v14 = v7 & 0xC000000000000001;
  v39 = v7 + 32;
  while (v12 != v13)
  {
    if (v14)
    {
      v1 = v7;
      v15 = MEMORY[0x1D3891EF0](v13, v7);
    }

    else
    {
      if (v13 >= *(v41 + 16))
      {
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      v1 = v7;
      v15 = *(v7 + 8 * v13 + 32);
    }

    v16 = v15;
    v17 = v2;
    v18 = v2[8];
    v19 = [v15 mediaSystems];
    sub_1D1741B10(0, qword_1EE079CF8, 0x1E696CBF8);
    v20 = sub_1D1E67C1C();

    v21 = swift_task_alloc();
    *(v21 + 16) = v18;
    v22 = sub_1D174A6C4(sub_1D1749C64, v21, v20);

    if (v22)
    {
      v12 = v13;
      v7 = v1;
      v2 = v17;
      break;
    }

    v23 = __OFADD__(v13++, 1);
    v7 = v1;
    v2 = v17;
    if (v23)
    {
      goto LABEL_30;
    }
  }

  if (!v40)
  {
    if (v12 != *(v41 + 16))
    {
      goto LABEL_19;
    }

LABEL_25:
    v1 = *(v2[7] + 8);
    v1(v2[9], v2[6]);
    v32 = 0;
    goto LABEL_26;
  }

  if (v12 == sub_1D1E6873C())
  {
    goto LABEL_25;
  }

LABEL_19:
  if (v14)
  {
    v24 = MEMORY[0x1D3891EF0](v12, v7);
  }

  else
  {
    if (v12 >= *(v41 + 16))
    {
      __break(1u);
      goto LABEL_34;
    }

    v24 = *(v39 + 8 * v12);
  }

  v25 = v24;
  v26 = v2[9];
  v28 = v2[6];
  v27 = v2[7];
  v29 = [v24 mediaSystems];
  sub_1D1741B10(0, qword_1EE079CF8, 0x1E696CBF8);
  v30 = sub_1D1E67C1C();

  v31 = swift_task_alloc();
  *(v31 + 16) = v26;
  v32 = sub_1D174A6C4(sub_1D1778988, v31, v30);

  v1 = *(v27 + 8);
  v1(v26, v28);

  if (!v32)
  {
LABEL_34:
    v35 = (v1)(v2[8], v2[6]);
    __break(1u);
    return MEMORY[0x1EEE6DFA0](v35, v36, v37);
  }

LABEL_26:
  v2[11] = v32;
  v33 = v2[8];
  v34 = v2[6];

  v1(v33, v34);
  v35 = sub_1D1B9A998;
  v36 = 0;
  v37 = 0;

  return MEMORY[0x1EEE6DFA0](v35, v36, v37);
}

uint64_t sub_1D1C0C874()
{

  if (qword_1EE07DC58 != -1)
  {
    swift_once();
  }

  return MEMORY[0x1EEE6DFA0](sub_1D1C0C90C, 0, 0);
}

uint64_t sub_1D1C0C90C(uint64_t a1)
{
  *(v1 + 112) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1C0C998, v3, v2);
}

uint64_t sub_1D1C0C998()
{

  *(v0 + 120) = qword_1EE07DC60;

  return MEMORY[0x1EEE6DFA0](sub_1D1C0CA0C, 0, 0);
}

uint64_t sub_1D1C0CA0C(uint64_t a1)
{
  *(v1 + 128) = sub_1D1E66A2C();
  *(v1 + 136) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1C0CAA4, v3, v2);
}

uint64_t sub_1D1C0CAA4()
{
  v1 = v0[16];
  v2 = v0[15];

  v3 = [v2 mediaSystemFor_];

  v4 = v0[1];

  return v4(v3);
}

uint64_t StaticMediaSystem.set(includeInStatus:)(char a1)
{
  *(v1 + 32) = a1;
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1D1C0CBD0;

  return StaticMediaSystem.mediaSystem.getter();
}

uint64_t sub_1D1C0CBD0(uint64_t a1)
{
  *(*v1 + 24) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1C0CCD0, 0, 0);
}

uint64_t sub_1D1C0CCD0()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 32);
    v3 = v1;
    HMMediaSystem.contributesToHomeStatus.setter(v2);
  }

  v4 = *(v0 + 8);

  return v4();
}

void sub_1D1C0CD54(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  MEMORY[0x1EEE9AC00](a1 - 8);
  v5 = &v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1C11A88(v2, v5, type metadata accessor for StaticMediaSystem);
  Icon.init(staticMediaSystem:)(v5, a2);
}

uint64_t sub_1D1C0CDE8()
{
  if (StaticMediaSystem.isActivated.getter())
  {
    return sub_1D1E673AC();
  }

  else
  {
    return sub_1D1E673CC();
  }
}

uint64_t sub_1D1C0CE2C(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 88));

  return v2;
}

id StaticMediaSystem.statusString(with:associatedMatterDevice:)(_BYTE *a1)
{
  v2 = v1;
  v4 = type metadata accessor for StaticMediaSystem(0);
  v5 = v4;
  v6 = 0;
  v7 = 0;
  v8 = *(v2 + v4[13]);
  v9 = *(v2 + v4[19]);
  v10 = *(v2 + v4[14]);
  if (*(v2 + v4[15]) != 6)
  {
    LOBYTE(v22[0]) = *(v2 + v4[15]);
    v6 = sub_1D1CF8E54();
    v7 = v11;
  }

  v12 = v5[18];
  v13 = a1[4];
  LOBYTE(v22[0]) = v13;
  v14 = sub_1D1D32844(v2 + v12, v22);
  if (!v15)
  {
    v16 = *(v2 + v5[17]);
    LOBYTE(v22[0]) = v13;
    v14 = _s13HomeDataModel12SymptomErrorO12statusString4with0F7ContextSSSgShyACGSg_AA06StatusI0OtFZ_0(v16, v22);
  }

  LOBYTE(v19) = v8;
  BYTE1(v19) = v9;
  BYTE2(v19) = 2;
  BYTE3(v19) = v10 ^ 1;
  BYTE4(v19) = 2;
  *(&v19 + 1) = v6;
  *&v20 = v7;
  *(&v20 + 1) = v14;
  v21 = v15;
  v17 = StatusStrings.string(for:)(a1);
  v22[0] = v19;
  v22[1] = v20;
  v23 = v21;
  sub_1D1A46590(v22);
  return v17;
}

uint64_t sub_1D1C0CF9C(char a1)
{
  *(v1 + 32) = a1;
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1D1C0C0C8;

  return StaticMediaSystem.mediaSystem.getter();
}

uint64_t sub_1D1C0D02C(char a1)
{
  *(v1 + 32) = a1;
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1D1C0CBD0;

  return StaticMediaSystem.mediaSystem.getter();
}

unint64_t StaticMediaSystem.tileStatusStringIconSymbolSuffix.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644760, &unk_1D1E9E530);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v11[-v2];
  v4 = type metadata accessor for StaticSoftwareUpdate(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for StaticMediaSystem(0);
  result = 0;
  if (*(v0 + v8[13]) == 1)
  {
    v10 = *(v0 + v8[17]);
    sub_1D1741C08(v0 + v8[18], v3, &qword_1EC644760, &unk_1D1E9E530);
    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {
      sub_1D1741A30(v3, &qword_1EC644760, &unk_1D1E9E530);
    }

    else
    {
      sub_1D1C11B50(v3, v7, type metadata accessor for StaticSoftwareUpdate);
      sub_1D1D2F0C0(&v12);
      if (v12 != 8 && (v12 == 3 || v12 == 5))
      {
        sub_1D1C11AF0(v7, type metadata accessor for StaticSoftwareUpdate);
        return 0xD000000000000015;
      }

      sub_1D1C11AF0(v7, type metadata accessor for StaticSoftwareUpdate);
    }

    return _s13HomeDataModel12SymptomErrorO14tileIconSymbol3forSSSgShyACGSg_tFZ_0(v10);
  }

  return result;
}

uint64_t StaticMediaSystem.hasDetailAttentionMessages.getter()
{
  v1 = type metadata accessor for StaticMediaSystem(0);
  v2 = *(v1 + 72);
  v8 = 2;
  sub_1D1D32844(v0 + v2, &v8);
  if (!v3)
  {
    v4 = *(v0 + *(v1 + 68));
    v7 = 2;
    _s13HomeDataModel12SymptomErrorO12statusString4with0F7ContextSSSgShyACGSg_AA06StatusI0OtFZ_0(v4, &v7);
    if (!v5)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1D1C0D384@<X0>(void **a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, void (**a6)(char *, uint64_t, uint64_t)@<X5>, uint64_t a7@<X8>)
{
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  MEMORY[0x1EEE9AC00](updated - 8);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  sub_1D1C11A88(a2, v16, type metadata accessor for StateSnapshot.UpdateType);
  v23 = a4;
  v18 = v17;
  v19 = a3;

  sub_1D1C0D4D4(v18, v16, v19, &v23, a5, a6, a7);
  v20 = type metadata accessor for StaticMediaSystem(0);
  return (*(*(v20 - 8) + 56))(a7, 0, 1, v20);
}

uint64_t sub_1D1C0D4D4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, unsigned __int8 *a4@<X3>, uint64_t a5@<X4>, void (**a6)(char *, uint64_t, uint64_t)@<X5>, uint64_t a7@<X8>)
{
  v360 = a6;
  v357 = a7;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644760, &unk_1D1E9E530);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v349 = &v321 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v348 = &v321 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v347 = &v321 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v343 = &v321 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v330 = &v321 - v21;
  v22 = type metadata accessor for StaticAccessory.DeviceIdentifier(0);
  v23 = MEMORY[0x1EEE9AC00](v22 - 8);
  v341 = &v321 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v340 = &v321 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v339 = &v321 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v338 = &v321 - v29;
  v355 = type metadata accessor for StaticAccessory(0);
  v354 = *(v355 - 1);
  v30 = MEMORY[0x1EEE9AC00](v355);
  v328 = &v321 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v333 = &v321 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v337 = &v321 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v323 = &v321 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v342 = &v321 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v335 = &v321 - v41;
  MEMORY[0x1EEE9AC00](v40);
  v322 = &v321 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v44 = MEMORY[0x1EEE9AC00](v43 - 8);
  v356 = (&v321 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v44);
  v364 = &v321 - v46;
  v366 = sub_1D1E66A7C();
  v47 = *(v366 - 8);
  v48 = MEMORY[0x1EEE9AC00](v366);
  v345 = &v321 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = MEMORY[0x1EEE9AC00](v48);
  v332 = &v321 - v51;
  v52 = MEMORY[0x1EEE9AC00](v50);
  v351 = &v321 - v53;
  v54 = MEMORY[0x1EEE9AC00](v52);
  v353 = &v321 - v55;
  v56 = MEMORY[0x1EEE9AC00](v54);
  v324 = &v321 - v57;
  MEMORY[0x1EEE9AC00](v56);
  v327 = &v321 - v58;
  v363 = type metadata accessor for StaticMediaSystemComponent(0);
  v59 = *(v363 - 1);
  v60 = MEMORY[0x1EEE9AC00](v363);
  v346 = &v321 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = MEMORY[0x1EEE9AC00](v60);
  v350 = &v321 - v63;
  v64 = MEMORY[0x1EEE9AC00](v62);
  v334 = &v321 - v65;
  v66 = MEMORY[0x1EEE9AC00](v64);
  v336 = &v321 - v67;
  MEMORY[0x1EEE9AC00](v66);
  v361 = &v321 - v68;
  v365 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643780, &qword_1D1EA1130);
  v69 = *(v365 - 8);
  MEMORY[0x1EEE9AC00](v365);
  v71 = &v321 - v70;
  v72 = *a4;
  v352 = a1;
  v73 = [a1 components];
  sub_1D1741B10(0, &qword_1EC6453E0, 0x1E696CC00);
  v74 = sub_1D1E67C1C();

  v331 = a2;
  v368 = a2;
  v369 = a5;
  v362 = a5;
  v344 = a3;
  v370 = a3;
  v329 = v72;
  v371 = v72;
  v372 = v360;
  v75 = 0;
  v76 = sub_1D178972C(sub_1D1C112DC, v367, v74);

  v77 = v76[2];
  v358 = v47;
  v359 = v59;
  if (v77)
  {
    v326 = 0;
    v373 = MEMORY[0x1E69E7CC0];
    sub_1D178DC00(0, v77, 0);
    v78 = v373;
    v79 = (v59[80] + 32) & ~v59[80];
    v80 = v47;
    v325 = v76;
    v81 = v76 + v79;
    v82 = *(v59 + 9);
    v83 = (v80 + 16);
    v84 = v366;
    do
    {
      v85 = *(v365 + 48);
      sub_1D1C11A88(v81, &v71[v85], type metadata accessor for StaticMediaSystemComponent);
      (*v83)(v71, &v71[v85], v84);
      v373 = v78;
      v87 = *(v78 + 16);
      v86 = *(v78 + 24);
      if (v87 >= v86 >> 1)
      {
        sub_1D178DC00((v86 > 1), v87 + 1, 1);
        v84 = v366;
        v78 = v373;
      }

      *(v78 + 16) = v87 + 1;
      sub_1D1741A90(v71, v78 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v87, &qword_1EC643780, &qword_1D1EA1130);
      v81 += v82;
      --v77;
    }

    while (v77);

    v75 = v326;
    if (*(v78 + 16))
    {
      goto LABEL_7;
    }
  }

  else
  {

    v78 = MEMORY[0x1E69E7CC0];
    if (*(MEMORY[0x1E69E7CC0] + 16))
    {
LABEL_7:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642B28, &qword_1D1E6E870);
      v88 = sub_1D1E68BCC();
      goto LABEL_10;
    }
  }

  v88 = MEMORY[0x1E69E7CC8];
LABEL_10:
  v373 = v88;
  sub_1D1C11304(v78, 1, &v373);
  v326 = v75;
  if (v75)
  {
    goto LABEL_179;
  }

  v89 = v373 + 64;
  v90 = 1 << *(v373 + 32);
  v91 = -1;
  if (v90 < 64)
  {
    v91 = ~(-1 << v90);
  }

  v92 = v91 & *(v373 + 64);
  v93 = (v90 + 63) >> 6;
  v94 = (v358 + 48);
  v360 = (v358 + 32);
  v365 = v373;
  swift_retain_n();
  v95 = 0;
  v96 = MEMORY[0x1E69E7CC0];
  while (v92)
  {
    v97 = v95;
LABEL_19:
    v98 = __clz(__rbit64(v92));
    v92 &= v92 - 1;
    v99 = v361;
    sub_1D1C11A88(*(v365 + 56) + *(v359 + 9) * (v98 | (v97 << 6)), v361, type metadata accessor for StaticMediaSystemComponent);
    v100 = v364;
    sub_1D1741C08(v99 + v363[8], v364, &qword_1EC642590, qword_1D1E71260);
    sub_1D1C11AF0(v99, type metadata accessor for StaticMediaSystemComponent);
    if ((*v94)(v100, 1, v366) == 1)
    {
      sub_1D1741A30(v100, &qword_1EC642590, qword_1D1E71260);
      v95 = v97;
    }

    else
    {
      v101 = *v360;
      (*v360)(v327, v100, v366);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v96 = sub_1D177D0AC(0, *(v96 + 2) + 1, 1, v96);
      }

      v103 = *(v96 + 2);
      v102 = *(v96 + 3);
      v104 = (v103 + 1);
      if (v103 >= v102 >> 1)
      {
        v325 = (v103 + 1);
        v105 = sub_1D177D0AC((v102 > 1), v103 + 1, 1, v96);
        v104 = v325;
        v96 = v105;
      }

      *(v96 + 2) = v104;
      v101(&v96[((*(v358 + 80) + 32) & ~*(v358 + 80)) + *(v358 + 72) * v103], v327, v366);
      v95 = v97;
    }
  }

  while (1)
  {
    v97 = v95 + 1;
    if (__OFADD__(v95, 1))
    {
      __break(1u);
      goto LABEL_171;
    }

    if (v97 >= v93)
    {
      break;
    }

    v92 = *(v89 + 8 * v97);
    ++v95;
    if (v92)
    {
      goto LABEL_19;
    }
  }

  v106 = sub_1D17841EC(v96);

  v107 = v352;
  v108 = [v352 uniqueIdentifier];
  sub_1D1E66A5C();

  v109 = [v107 configuredName];
  v110 = sub_1D1E6781C();
  v112 = v111;

  v113 = HIBYTE(v112) & 0xF;
  if ((v112 & 0x2000000000000000) == 0)
  {
    v113 = v110 & 0xFFFFFFFFFFFFLL;
  }

  v364 = v106;
  if (v113)
  {
    v114 = [v107 configuredName];
    v115 = sub_1D1E6781C();
    v117 = v116;

    v118 = v358;
    v119 = v335;
    goto LABEL_39;
  }

  v120 = v356;
  sub_1D17721A0(v106, v356);
  v121 = v366;
  v122 = (*v94)(v120, 1, v366);
  v118 = v358;
  v119 = v335;
  if (v122 == 1)
  {
    sub_1D1741A30(v120, &qword_1EC642590, qword_1D1E71260);
  }

  else
  {
    v123 = v324;
    (*v360)(v324, v120, v121);
    v124 = v362;
    if (*(v362 + 16) && (v125 = sub_1D1742188(), (v126 & 1) != 0) && (v127 = *(v124 + 56) + *(v354 + 72) * v125, v128 = v322, sub_1D1C11A88(v127, v322, type metadata accessor for StaticAccessory), v129 = v128 + v355[23], v130 = *v129, v131 = *(v129 + 8), sub_1D18EB144(*v129, *(v129 + 8)), sub_1D1C11AF0(v128, type metadata accessor for StaticAccessory), v131 != 255))
    {
      v373 = v130;
      v374 = v131;
      v115 = sub_1D1C06E10(&v373);
      v117 = v132;
      (*(v118 + 8))(v123, v366);
      sub_1D18EB2D8(v130, v131);
      if (v117)
      {
        goto LABEL_39;
      }
    }

    else
    {
      (*(v118 + 8))(v123, v366);
    }
  }

  v133 = [v352 name];
  v115 = sub_1D1E6781C();
  v117 = v134;

LABEL_39:
  v356 = type metadata accessor for StaticMediaSystem(0);
  v135 = (v357 + v356[5]);
  *v135 = v115;
  v135[1] = v117;
  v136 = (v364 + 56);
  v137 = 1 << *(v364 + 32);
  v138 = -1;
  if (v137 < 64)
  {
    v138 = ~(-1 << v137);
  }

  v139 = v138 & *(v364 + 56);
  v140 = (v137 + 63) >> 6;
  v360 = (v118 + 8);
  v361 = v118 + 16;

  v141 = 0;
  v142 = MEMORY[0x1E69E7CC0];
  while (v139)
  {
    v143 = v366;
    v144 = v353;
LABEL_50:
    v146 = __clz(__rbit64(v139));
    v139 &= v139 - 1;
    (*(v358 + 16))(v144, *(v364 + 48) + *(v358 + 72) * (v146 | (v141 << 6)), v143);
    v147 = v362;
    if (*(v362 + 16) && (v148 = sub_1D1742188(), (v149 & 1) != 0))
    {
      sub_1D1C11A88(*(v147 + 56) + *(v354 + 72) * v148, v119, type metadata accessor for StaticAccessory);
      (*v360)(v144, v366);
      v150 = v119 + v355[23];
      v151 = *v150;
      v152 = *(v150 + 8);
      sub_1D18EB144(*v150, *(v150 + 8));
      sub_1D1C11AF0(v119, type metadata accessor for StaticAccessory);
      if (v152 != 255)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v142 = sub_1D177FA8C(0, *(v142 + 2) + 1, 1, v142);
        }

        v154 = *(v142 + 2);
        v153 = *(v142 + 3);
        if (v154 >= v153 >> 1)
        {
          v142 = sub_1D177FA8C((v153 > 1), v154 + 1, 1, v142);
        }

        *(v142 + 2) = v154 + 1;
        v155 = &v142[16 * v154];
        *(v155 + 4) = v151;
        v155[40] = v152;
        v119 = v335;
      }
    }

    else
    {
      (*v360)(v144, v366);
    }
  }

  v143 = v366;
  v144 = v353;
  while (1)
  {
    v145 = v141 + 1;
    if (__OFADD__(v141, 1))
    {
      break;
    }

    if (v145 >= v140)
    {

      if (*(v142 + 2))
      {
        v156 = *(v142 + 4);
        v157 = v142[40];
        sub_1D1771B4C(v156, v157);
      }

      else
      {
        v156 = 0;
        v157 = -1;
      }

      v158 = v358;
      v159 = v359;

      v160 = v356;
      v161 = v357;
      v162 = v357 + v356[6];
      *v162 = v156;
      *(v162 + 8) = v157;
      HMMediaSystem.dateAdded.getter(v161 + v160[7]);
      v163 = v364;
      sub_1D1C116F4(v364, v362);
      v164 = (v161 + v160[8]);
      *v164 = v165;
      v164[1] = v166;
      *(v161 + v160[9]) = sub_1D1A11850() & 1;
      v167 = 1 << *(v163 + 32);
      v168 = -1;
      if (v167 < 64)
      {
        v168 = ~(-1 << v167);
      }

      v169 = v168 & *(v163 + 56);
      v170 = (v167 + 63) >> 6;

      v171 = 0;
      while (v169)
      {
        v172 = v366;
        v173 = v351;
LABEL_72:
        v175 = __clz(__rbit64(v169));
        v169 &= v169 - 1;
        (*(v158 + 16))(v173, *(v364 + 48) + *(v158 + 72) * (v175 | (v171 << 6)), v172);
        v176 = v362;
        if (*(v362 + 16) && (v177 = sub_1D1742188(), (v178 & 1) != 0))
        {
          v179 = v159;
          v180 = v158;
          v181 = v342;
          sub_1D1C11A88(*(v176 + 56) + *(v354 + 72) * v177, v342, type metadata accessor for StaticAccessory);
          (*v360)(v173, v366);
          v182 = *(v181 + v355[16]);
          v183 = v181;
          v158 = v180;
          v159 = v179;
          sub_1D1C11AF0(v183, type metadata accessor for StaticAccessory);
          if (v182)
          {
            v184 = 1;
LABEL_77:

            v185 = v356;
            v186 = v357;
            *(v357 + v356[10]) = v184;
            v187 = v352;
            *(v186 + v185[11]) = HMMediaSystem.shouldShowInDashboard.getter() & 1;
            *(v186 + v185[12]) = [v187 isCompatible];
            v188 = 1;
            v189 = 1 << *(v365 + 32);
            v190 = -1;
            if (v189 < 64)
            {
              v190 = ~(-1 << v189);
            }

            v191 = v190 & *(v365 + 64);
            v192 = (v189 + 63) >> 6;
            swift_retain_n();
            v193 = 0;
            for (i = v336; v191; v188 &= v202)
            {
LABEL_84:
              while (1)
              {
                v196 = __clz(__rbit64(v191));
                v191 &= v191 - 1;
                sub_1D1C11A88(*(v365 + 56) + *(v159 + 9) * (v196 | (v193 << 6)), i, type metadata accessor for StaticMediaSystemComponent);
                v197 = v362;
                if (*(v362 + 16))
                {
                  type metadata accessor for StaticMediaProfile(0);
                  v159 = v359;
                  v198 = sub_1D1742188();
                  if (v199)
                  {
                    break;
                  }
                }

                sub_1D1C11AF0(i, type metadata accessor for StaticMediaSystemComponent);
                if (!v191)
                {
                  goto LABEL_80;
                }
              }

              v200 = *(v197 + 56) + *(v354 + 72) * v198;
              v201 = v323;
              sub_1D1C11A88(v200, v323, type metadata accessor for StaticAccessory);
              sub_1D1C11AF0(i, type metadata accessor for StaticMediaSystemComponent);
              v202 = *(v201 + v355[31]);
              sub_1D1C11AF0(v201, type metadata accessor for StaticAccessory);
            }

LABEL_80:
            while (1)
            {
              v195 = v193 + 1;
              if (__OFADD__(v193, 1))
              {
                goto LABEL_172;
              }

              if (v195 >= v192)
              {

                v203 = v356;
                *(v357 + v356[13]) = v188 & 1;
                v204 = [v352 settings];
                if (v204 && (v205 = v204, v206 = [v204 rootGroup], v205, v206))
                {

                  v207 = 1;
                }

                else
                {
                  v207 = 0;
                }

                *(v357 + v203[14]) = v207;
                v208 = [v344 uniqueIdentifier];
                sub_1D1E66A5C();

                v373 = MEMORY[0x1E69E7CC0];
                v209 = 1 << *(v365 + 32);
                v210 = -1;
                if (v209 < 64)
                {
                  v210 = ~(-1 << v209);
                }

                v211 = v210 & *(v365 + 64);
                v212 = (v209 + 63) >> 6;
                swift_retain_n();
                v213 = 0;
                v214 = v334;
                while (v211)
                {
                  v215 = v213;
LABEL_102:
                  v216 = __clz(__rbit64(v211));
                  v211 &= v211 - 1;
                  sub_1D1C11A88(*(v365 + 56) + *(v159 + 9) * (v216 | (v215 << 6)), v214, type metadata accessor for StaticMediaSystemComponent);
                  v217 = *(v214 + v363[7]);

                  sub_1D1C11AF0(v214, type metadata accessor for StaticMediaSystemComponent);
                  sub_1D17A5608(v217);
                }

                while (1)
                {
                  v215 = v213 + 1;
                  if (__OFADD__(v213, 1))
                  {
                    goto LABEL_173;
                  }

                  if (v215 >= v212)
                  {
                    v218 = v365;

                    v353 = sub_1D17841EC(v373);

                    v219 = 1 << *(v218 + 32);
                    v220 = -1;
                    if (v219 < 64)
                    {
                      v220 = ~(-1 << v219);
                    }

                    v221 = v220 & *(v218 + 64);
                    v222 = (v219 + 63) >> 6;
                    swift_retain_n();
                    v223 = 0;
                    v224 = MEMORY[0x1E69E7CC0];
                    if (!v221)
                    {
                      goto LABEL_109;
                    }

                    do
                    {
LABEL_107:
                      while (1)
                      {
                        v225 = __clz(__rbit64(v221));
                        v221 &= v221 - 1;
                        v226 = v350;
                        sub_1D1C11A88(*(v365 + 56) + *(v359 + 9) * (v225 | (v223 << 6)), v350, type metadata accessor for StaticMediaSystemComponent);
                        v227 = v226 + v363[5];
                        v228 = (v227 + *(type metadata accessor for StaticMediaProfile(0) + 28));
                        v230 = *v228;
                        v229 = v228[1];

                        sub_1D1C11AF0(v226, type metadata accessor for StaticMediaSystemComponent);
                        if (v229)
                        {
                          break;
                        }

                        if (!v221)
                        {
                          goto LABEL_109;
                        }
                      }

                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v224 = sub_1D177CF00(0, *(v224 + 2) + 1, 1, v224);
                      }

                      v233 = *(v224 + 2);
                      v232 = *(v224 + 3);
                      if (v233 >= v232 >> 1)
                      {
                        v224 = sub_1D177CF00((v232 > 1), v233 + 1, 1, v224);
                      }

                      *(v224 + 2) = v233 + 1;
                      v234 = &v224[16 * v233];
                      *(v234 + 4) = v230;
                      *(v234 + 5) = v229;
                    }

                    while (v221);
LABEL_109:
                    while (1)
                    {
                      v231 = v223 + 1;
                      if (__OFADD__(v223, 1))
                      {
                        goto LABEL_175;
                      }

                      if (v231 >= v222)
                      {

                        v235 = sub_1D1784988(v224);

                        if (*(v235 + 16) == 1)
                        {
                          v236 = sub_1D1772608(v235);
                          v238 = v237;

                          v239 = v356;
                          v240 = v357;
                          v241 = (v357 + v356[22]);
                          *v241 = v236;
                          v241[1] = v238;
                        }

                        else
                        {

                          v239 = v356;
                          v240 = v357;
                          v242 = (v357 + v356[22]);
                          *v242 = 0;
                          v242[1] = 0;
                        }

                        v243 = v362;
                        v244 = v359;
                        v245 = v346;
                        *(v240 + v239[21]) = v353;
                        v246 = v365;
                        *(v240 + v239[23]) = v364;
                        v373 = MEMORY[0x1E69E7CD0];
                        v247 = 1 << *(v246 + 32);
                        v248 = -1;
                        if (v247 < 64)
                        {
                          v248 = ~(-1 << v247);
                        }

                        v249 = v248 & *(v246 + 64);
                        v250 = (v247 + 63) >> 6;
                        swift_retain_n();

                        v251 = 0;
                        while (v249)
                        {
LABEL_131:
                          sub_1D1C11A88(*(v365 + 56) + *(v244 + 9) * (__clz(__rbit64(v249)) | (v251 << 6)), v245, type metadata accessor for StaticMediaSystemComponent);
                          if (*(v243 + 16))
                          {
                            type metadata accessor for StaticMediaProfile(0);
                            v253 = sub_1D1742188();
                            if (v254)
                            {
                              v255 = v337;
                              sub_1D1C11A88(*(v243 + 56) + *(v354 + 72) * v253, v337, type metadata accessor for StaticAccessory);
                              v256 = v339;
                              sub_1D1C11A88(v255 + v355[8], v339, type metadata accessor for StaticAccessory.DeviceIdentifier);
                              sub_1D1C11AF0(v255, type metadata accessor for StaticAccessory);
                              v257 = v338;
                              sub_1D1C11B50(v256, v338, type metadata accessor for StaticAccessory.DeviceIdentifier);
                              v258 = v341;
                              sub_1D1C11A88(v257, v341, type metadata accessor for StaticAccessory.DeviceIdentifier);
                              v259 = v340;
                              sub_1D1768FF0(v340, v258);
                              sub_1D1C11AF0(v259, type metadata accessor for StaticAccessory.DeviceIdentifier);
                              v260 = v257;
                              v245 = v346;
                              v244 = v359;
                              sub_1D1C11AF0(v260, type metadata accessor for StaticAccessory.DeviceIdentifier);
                            }
                          }

                          v249 &= v249 - 1;
                          sub_1D1C11AF0(v245, type metadata accessor for StaticMediaSystemComponent);
                        }

                        while (1)
                        {
                          v252 = v251 + 1;
                          if (__OFADD__(v251, 1))
                          {
                            goto LABEL_176;
                          }

                          if (v252 >= v250)
                          {
                            v261 = v365;

                            v262 = v356;
                            v263 = v357;
                            *(v357 + v356[24]) = v373;
                            *(v263 + v262[25]) = v261;
                            v264 = v352;
                            v265 = [v264 mediaSession];
                            if (v265)
                            {
                              v266 = v265;
                              v267 = [v265 playbackState];

                              v268 = 0x5000403020100uLL >> (8 * v267);
                              if (v267 >= 7)
                              {
                                LOBYTE(v268) = 0;
                              }
                            }

                            else
                            {

                              LOBYTE(v268) = 6;
                            }

                            v269 = v358;
                            v270 = v333;
                            *(v263 + v262[15]) = v268;
                            v351 = v264;
                            v271 = [v264 audioDestinationIdentifier];
                            if (v271)
                            {
                              v272 = v271;
                              v273 = sub_1D1E6781C();
                              v275 = v274;

                              v262 = v356;
                            }

                            else
                            {
                              v273 = 0;
                              v275 = 0;
                            }

                            v276 = (v263 + v262[16]);
                            *v276 = v273;
                            v276[1] = v275;
                            v373 = MEMORY[0x1E69E7CD0];
                            v277 = v364;
                            v278 = 1 << *(v364 + 32);
                            v279 = -1;
                            if (v278 < 64)
                            {
                              v279 = ~(-1 << v278);
                            }

                            v280 = v279 & *(v364 + 56);
                            v281 = (v278 + 63) >> 6;

                            v282 = 0;
                            v283 = v366;
                            v284 = v332;
                            while (v280)
                            {
LABEL_150:
                              (*(v269 + 16))(v284, *(v277 + 48) + *(v269 + 72) * (__clz(__rbit64(v280)) | (v282 << 6)), v283);
                              if (*(v243 + 16))
                              {
                                v286 = sub_1D1742188();
                                v283 = v366;
                                if (v287)
                                {
                                  sub_1D1C11A88(*(v243 + 56) + *(v354 + 72) * v286, v270, type metadata accessor for StaticAccessory);
                                  v288 = *(v270 + v355[33]);

                                  sub_1D1C11AF0(v270, type metadata accessor for StaticAccessory);
                                  if (v288)
                                  {
                                    sub_1D1931080(v288);
                                    v283 = v366;
                                  }
                                }
                              }

                              v280 &= v280 - 1;
                              (*v360)(v284, v283);
                              v277 = v364;
                            }

                            while (1)
                            {
                              v285 = v282 + 1;
                              if (__OFADD__(v282, 1))
                              {
                                goto LABEL_177;
                              }

                              if (v285 >= v281)
                              {

                                *(v357 + v356[17]) = v373;
                                v289 = type metadata accessor for StaticSoftwareUpdate(0);
                                v290 = *(v289 - 8);
                                v291 = *(v290 + 56);
                                v292 = (v290 + 56);
                                v293 = v343;
                                v365 = v289;
                                v353 = v291;
                                (v291)(v343, 1, 1);
                                v294 = v293;
                                v295 = v347;
                                sub_1D1741C08(v294, v347, &qword_1EC644760, &unk_1D1E9E530);
                                v296 = 1 << *(v277 + 32);
                                v297 = v295;
                                v298 = -1;
                                if (v296 < 64)
                                {
                                  v298 = ~(-1 << v296);
                                }

                                v299 = v298 & *(v277 + 56);
                                v300 = (v296 + 63) >> 6;
                                v352 = v292;
                                v359 = v292 - 8;

                                v301 = 0;
                                v302 = v345;
                                v363 = v136;
                                while (v299)
                                {
LABEL_164:
                                  v306 = *(v277 + 48) + *(v358 + 72) * (__clz(__rbit64(v299)) | (v301 << 6));
                                  v307 = v302;
                                  v308 = v302;
                                  v309 = v366;
                                  (*(v358 + 16))(v307, v306, v366);
                                  v310 = v349;
                                  sub_1D1741C08(v297, v349, &qword_1EC644760, &unk_1D1E9E530);
                                  v311 = v365;
                                  if ((*v359)(v310, 1, v365) == 1)
                                  {
                                    sub_1D1741A30(v310, &qword_1EC644760, &unk_1D1E9E530);
                                    v312 = v362;
                                    v302 = v308;
                                    if (*(v362 + 16) && (v313 = sub_1D1742188(), (v314 & 1) != 0))
                                    {
                                      v315 = v328;
                                      sub_1D1C11A88(*(v312 + 56) + *(v354 + 72) * v313, v328, type metadata accessor for StaticAccessory);
                                      (*v360)(v345, v366);
                                      v297 = v347;
                                      sub_1D1741A30(v347, &qword_1EC644760, &unk_1D1E9E530);
                                      v304 = v348;
                                      sub_1D1741C08(v315 + v355[30], v348, &qword_1EC644760, &unk_1D1E9E530);
                                      v316 = v315;
                                      v302 = v345;
                                      sub_1D1C11AF0(v316, type metadata accessor for StaticAccessory);
                                    }

                                    else
                                    {
                                      (*v360)(v308, v366);
                                      v297 = v347;
                                      sub_1D1741A30(v347, &qword_1EC644760, &unk_1D1E9E530);
                                      v304 = v348;
                                      (v353)(v348, 1, 1, v365);
                                    }
                                  }

                                  else
                                  {
                                    (*v360)(v308, v309);
                                    sub_1D1741A30(v297, &qword_1EC644760, &unk_1D1E9E530);
                                    v303 = v310;
                                    v304 = v348;
                                    sub_1D1C11B50(v303, v348, type metadata accessor for StaticSoftwareUpdate);
                                    (v353)(v304, 0, 1, v311);
                                    v302 = v308;
                                  }

                                  v136 = v363;
                                  v277 = v364;
                                  v299 &= v299 - 1;
                                  sub_1D1741A90(v304, v297, &qword_1EC644760, &unk_1D1E9E530);
                                }

                                while (1)
                                {
                                  v305 = v301 + 1;
                                  if (__OFADD__(v301, 1))
                                  {
                                    goto LABEL_178;
                                  }

                                  if (v305 >= v300)
                                  {
                                    sub_1D1741A30(v343, &qword_1EC644760, &unk_1D1E9E530);

                                    v317 = v330;
                                    sub_1D1741A90(v297, v330, &qword_1EC644760, &unk_1D1E9E530);

                                    sub_1D1C11AF0(v331, type metadata accessor for StateSnapshot.UpdateType);
                                    v318 = v356;
                                    v319 = v357;
                                    result = sub_1D1741A90(v317, v357 + v356[18], &qword_1EC644760, &unk_1D1E9E530);
                                    *(v319 + v318[19]) = v329;
                                    return result;
                                  }

                                  v299 = *&v136[2 * v305];
                                  ++v301;
                                  if (v299)
                                  {
                                    v301 = v305;
                                    goto LABEL_164;
                                  }
                                }
                              }

                              v280 = *&v136[2 * v285];
                              ++v282;
                              if (v280)
                              {
                                v282 = v285;
                                goto LABEL_150;
                              }
                            }
                          }

                          v249 = *(v89 + 8 * v252);
                          ++v251;
                          if (v249)
                          {
                            v251 = v252;
                            goto LABEL_131;
                          }
                        }
                      }

                      v221 = *(v89 + 8 * v231);
                      ++v223;
                      if (v221)
                      {
                        v223 = v231;
                        goto LABEL_107;
                      }
                    }
                  }

                  v211 = *(v89 + 8 * v215);
                  ++v213;
                  if (v211)
                  {
                    v213 = v215;
                    goto LABEL_102;
                  }
                }
              }

              v191 = *(v89 + 8 * v195);
              ++v193;
              if (v191)
              {
                v193 = v195;
                goto LABEL_84;
              }
            }
          }
        }

        else
        {
          (*v360)(v173, v366);
        }
      }

      v172 = v366;
      v173 = v351;
      while (1)
      {
        v174 = v171 + 1;
        if (__OFADD__(v171, 1))
        {
          goto LABEL_174;
        }

        if (v174 >= v170)
        {
          v184 = 0;
          goto LABEL_77;
        }

        v169 = *&v136[2 * v174];
        ++v171;
        if (v169)
        {
          v171 = v174;
          goto LABEL_72;
        }
      }
    }

    v139 = *&v136[2 * v145];
    ++v141;
    if (v139)
    {
      v141 = v145;
      goto LABEL_50;
    }
  }

LABEL_171:
  __break(1u);
LABEL_172:
  __break(1u);
LABEL_173:
  __break(1u);
LABEL_174:
  __break(1u);
LABEL_175:
  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
LABEL_178:
  __break(1u);
LABEL_179:

  __break(1u);
  return result;
}

uint64_t _s13HomeDataModel17StaticMediaSystemV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticSoftwareUpdate(0);
  v86 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v84 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644760, &unk_1D1E9E530);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v87 = &v78 - v7;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C608, &qword_1D1E9FA10);
  MEMORY[0x1EEE9AC00](v85);
  v9 = &v78 - v8;
  v10 = sub_1D1E669FC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v78 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AC0, &qword_1D1E6E810);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v78 - v18;
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    goto LABEL_32;
  }

  v20 = type metadata accessor for StaticMediaSystem(0);
  v21 = *(v20 + 20);
  v22 = *(a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  v25 = v24[1];
  v26 = v22 == *v24;
  v83 = v20;
  if (!v26 || v23 != v25)
  {
    v27 = sub_1D1E6904C();
    v20 = v83;
    if ((v27 & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  v79 = v4;
  v80 = v9;
  v28 = *(v20 + 24);
  v81 = a2;
  v82 = a1;
  v29 = a1 + v28;
  v30 = *(a1 + v28);
  v31 = *(v29 + 8);
  v32 = a2 + v28;
  v33 = *v32;
  v34 = *(v32 + 8);
  if (v31 == 255)
  {
    sub_1D18EB144(v30, 255);
    if (v34 == 255)
    {
      sub_1D18EB144(v33, 255);
      sub_1D18EB2D8(v30, 255);
      goto LABEL_15;
    }

    sub_1D18EB144(v33, v34);
LABEL_13:
    sub_1D18EB2D8(v30, v31);
    sub_1D18EB2D8(v33, v34);
    goto LABEL_32;
  }

  v90 = v30;
  v91 = v31;
  if (v34 == 255)
  {
    sub_1D18EB144(v30, v31);
    sub_1D18EB144(v33, 255);
    sub_1D18EB144(v30, v31);
    sub_1D1771B5C(v30, v31);
    goto LABEL_13;
  }

  v88 = v33;
  v89 = v34;
  sub_1D18EB144(v30, v31);
  sub_1D18EB144(v33, v34);
  sub_1D18EB144(v30, v31);
  v35 = static StaticAccessory.SpecialMediaCategory.== infix(_:_:)(&v90, &v88);
  sub_1D1771B5C(v88, v89);
  sub_1D1771B5C(v90, v91);
  sub_1D18EB2D8(v30, v31);
  if ((v35 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_15:
  v36 = v83[7];
  v37 = *(v17 + 48);
  sub_1D1741C08(v82 + v36, v19, &qword_1EC642570, &qword_1D1E6C6A0);
  v38 = v81;
  sub_1D1741C08(v81 + v36, &v19[v37], &qword_1EC642570, &qword_1D1E6C6A0);
  v39 = *(v11 + 48);
  if (v39(v19, 1, v10) == 1)
  {
    if (v39(&v19[v37], 1, v10) == 1)
    {
      sub_1D1741A30(v19, &qword_1EC642570, &qword_1D1E6C6A0);
      goto LABEL_23;
    }

LABEL_20:
    v40 = &qword_1EC642AC0;
    v41 = &qword_1D1E6E810;
    v42 = v19;
LABEL_21:
    sub_1D1741A30(v42, v40, v41);
    goto LABEL_32;
  }

  sub_1D1741C08(v19, v16, &qword_1EC642570, &qword_1D1E6C6A0);
  if (v39(&v19[v37], 1, v10) == 1)
  {
    (*(v11 + 8))(v16, v10);
    goto LABEL_20;
  }

  (*(v11 + 32))(v13, &v19[v37], v10);
  sub_1D1C11294(&qword_1EC642AC8, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
  v43 = sub_1D1E6775C();
  v44 = *(v11 + 8);
  v44(v13, v10);
  v44(v16, v10);
  sub_1D1741A30(v19, &qword_1EC642570, &qword_1D1E6C6A0);
  if ((v43 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_23:
  v46 = v82;
  v45 = v83;
  v47 = v83[8];
  v48 = *(v82 + v47);
  v49 = *(v82 + v47 + 8);
  v50 = (v38 + v47);
  if (v48 != *v50 || v49 != v50[1])
  {
    v51 = sub_1D1E6904C();
    v45 = v83;
    if ((v51 & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  if (*(v46 + v45[9]) != *(v38 + v45[9]) || *(v46 + v45[10]) != *(v38 + v45[10]) || *(v46 + v45[11]) != *(v38 + v45[11]) || *(v46 + v45[12]) != *(v38 + v45[12]) || *(v46 + v45[13]) != *(v38 + v45[13]) || *(v46 + v45[14]) != *(v38 + v45[14]))
  {
    goto LABEL_32;
  }

  v54 = v45[15];
  v55 = *(v46 + v54);
  v56 = *(v38 + v54);
  if (v55 == 6)
  {
    if (v56 != 6)
    {
      goto LABEL_32;
    }
  }

  else if (v55 != v56)
  {
    goto LABEL_32;
  }

  v57 = v45[16];
  v58 = (v46 + v57);
  v59 = *(v46 + v57 + 8);
  v60 = (v38 + v57);
  v61 = v60[1];
  if (v59)
  {
    if (!v61)
    {
      goto LABEL_32;
    }

    if (*v58 != *v60 || v59 != v61)
    {
      v62 = sub_1D1E6904C();
      v45 = v83;
      if ((v62 & 1) == 0)
      {
        goto LABEL_32;
      }
    }
  }

  else if (v61)
  {
    goto LABEL_32;
  }

  v63 = v45[17];
  v64 = *(v38 + v63);
  if (*(v46 + v63))
  {
    if (!v64 || (sub_1D17B30F0() & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  else if (v64)
  {
    goto LABEL_32;
  }

  v65 = v83[18];
  v66 = *(v85 + 48);
  v67 = v80;
  sub_1D1741C08(v82 + v65, v80, &qword_1EC644760, &unk_1D1E9E530);
  sub_1D1741C08(v81 + v65, v67 + v66, &qword_1EC644760, &unk_1D1E9E530);
  v68 = *(v86 + 48);
  if (v68(v67, 1, v79) != 1)
  {
    v74 = v80;
    sub_1D1741C08(v80, v87, &qword_1EC644760, &unk_1D1E9E530);
    if (v68(v74 + v66, 1, v79) != 1)
    {
      sub_1D1C11B50(&v80[v66], v84, type metadata accessor for StaticSoftwareUpdate);
      if (_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0())
      {
        v75 = v87;
        v76 = v84;
        updated = _s13HomeDataModel20StaticSoftwareUpdateV4KindO2eeoiySbAE_AEtFZ_0(v87 + *(v79 + 20), v84 + *(v79 + 20));
        sub_1D1C11AF0(v76, type metadata accessor for StaticSoftwareUpdate);
        sub_1D1C11AF0(v75, type metadata accessor for StaticSoftwareUpdate);
        sub_1D1741A30(v80, &qword_1EC644760, &unk_1D1E9E530);
        if (!updated)
        {
          goto LABEL_32;
        }

        goto LABEL_53;
      }

      sub_1D1C11AF0(v84, type metadata accessor for StaticSoftwareUpdate);
      sub_1D1C11AF0(v87, type metadata accessor for StaticSoftwareUpdate);
      v40 = &qword_1EC644760;
      v41 = &unk_1D1E9E530;
      goto LABEL_65;
    }

    sub_1D1C11AF0(v87, type metadata accessor for StaticSoftwareUpdate);
LABEL_64:
    v40 = &qword_1EC64C608;
    v41 = &qword_1D1E9FA10;
LABEL_65:
    v42 = v80;
    goto LABEL_21;
  }

  if (v68(&v80[v66], 1, v79) != 1)
  {
    goto LABEL_64;
  }

  sub_1D1741A30(v80, &qword_1EC644760, &unk_1D1E9E530);
LABEL_53:
  if (*(v82 + v83[19]) != *(v81 + v83[19]) || (_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0 || (sub_1D17A6E98(*(v82 + v83[21]), *(v81 + v83[21])) & 1) == 0)
  {
    goto LABEL_32;
  }

  v69 = v83[22];
  v70 = (v82 + v69);
  v71 = *(v82 + v69 + 8);
  v72 = (v81 + v69);
  v73 = v72[1];
  if (v71)
  {
    if (!v73 || (*v70 != *v72 || v71 != v73) && (sub_1D1E6904C() & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  else if (v73)
  {
    goto LABEL_32;
  }

  if (sub_1D17A6E98(*(v82 + v83[23]), *(v81 + v83[23])) & 1) != 0 && (sub_1D17A81F0(*(v82 + v83[24]), *(v81 + v83[24])))
  {
    v52 = sub_1D184C628(*(v82 + v83[25]), *(v81 + v83[25]));
    return v52 & 1;
  }

LABEL_32:
  v52 = 0;
  return v52 & 1;
}

unint64_t sub_1D1C10088()
{
  result = qword_1EC64C928;
  if (!qword_1EC64C928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C928);
  }

  return result;
}

uint64_t sub_1D1C100DC(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64C930, &qword_1D1EA0DA0);
    sub_1D1C11294(a2, type metadata accessor for StaticAccessory.DeviceIdentifier, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D1C10178()
{
  result = qword_1EC64C948;
  if (!qword_1EC64C948)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64C940, &qword_1D1EA0DA8);
    sub_1D1C11294(&qword_1EE07B258, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
    sub_1D1C11294(&qword_1EC64C950, type metadata accessor for StaticMediaSystemComponent, &protocol conformance descriptor for StaticMediaSystemComponent);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C948);
  }

  return result;
}

uint64_t sub_1D1C10264(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6438F0, &qword_1D1E99360);
    sub_1D1C11294(a2, MEMORY[0x1E69695A8], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D1C10300()
{
  result = qword_1EC64C968;
  if (!qword_1EC64C968)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64C940, &qword_1D1EA0DA8);
    sub_1D1C11294(&qword_1EC644B20, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
    sub_1D1C11294(&qword_1EC64C970, type metadata accessor for StaticMediaSystemComponent, &protocol conformance descriptor for StaticMediaSystemComponent);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C968);
  }

  return result;
}

uint64_t sub_1D1C1047C(void *a1)
{
  a1[1] = sub_1D1C11294(&qword_1EC64C978, type metadata accessor for StaticMediaSystem, &protocol conformance descriptor for StaticMediaSystem);
  a1[2] = sub_1D1C11294(&qword_1EC64C980, type metadata accessor for StaticMediaSystem, &protocol conformance descriptor for StaticMediaSystem);
  a1[3] = sub_1D1C11294(&qword_1EC64BFD8, type metadata accessor for StaticMediaSystem, &protocol conformance descriptor for StaticMediaSystem);
  a1[4] = sub_1D1C11294(&qword_1EC64C058, type metadata accessor for StaticMediaSystem, &protocol conformance descriptor for StaticMediaSystem);
  a1[5] = sub_1D1C11294(qword_1EE07A8D8, type metadata accessor for StaticMediaSystem, &protocol conformance descriptor for StaticMediaSystem);
  result = sub_1D1C11294(&qword_1EC64C988, type metadata accessor for StaticMediaSystem, &protocol conformance descriptor for StaticMediaSystem);
  a1[6] = result;
  return result;
}

void sub_1D1C105C8(uint64_t a1)
{
  sub_1D1E66A7C();
  if (v1 <= 0x3F)
  {
    sub_1D17BDF80(319, qword_1EE07CA78, &type metadata for StaticAccessory.SpecialMediaCategory);
    if (v2 <= 0x3F)
    {
      sub_1D1C107C8(319, &qword_1EE07E020, MEMORY[0x1E6969530]);
      if (v3 <= 0x3F)
      {
        sub_1D17BDF80(319, qword_1EE07BDB8, &type metadata for StaticMediaSystemComponent.PlaybackState);
        if (v4 <= 0x3F)
        {
          sub_1D17BDF80(319, qword_1EE07D1F8, MEMORY[0x1E69E6158]);
          if (v5 <= 0x3F)
          {
            sub_1D1C07AC4(319);
            if (v6 <= 0x3F)
            {
              sub_1D1C107C8(319, &qword_1EE07DE40, type metadata accessor for StaticSoftwareUpdate);
              if (v7 <= 0x3F)
              {
                sub_1D1791340(319);
                if (v8 <= 0x3F)
                {
                  sub_1D1C1081C(319);
                  if (v9 <= 0x3F)
                  {
                    sub_1D1C108B0(319);
                    if (v10 <= 0x3F)
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
  }
}

void sub_1D1C107C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void sub_1D1C1081C(uint64_t a1)
{
  if (!qword_1EE07B6C0)
  {
    type metadata accessor for StaticAccessory.DeviceIdentifier(255);
    sub_1D1C11294(&qword_1EE07CAB0, type metadata accessor for StaticAccessory.DeviceIdentifier, &protocol conformance descriptor for StaticAccessory.DeviceIdentifier);
    v1 = sub_1D1E681FC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE07B6C0);
    }
  }
}

void sub_1D1C108B0(uint64_t a1)
{
  if (!qword_1EE07B790)
  {
    sub_1D1E66A7C();
    type metadata accessor for StaticMediaSystemComponent(255);
    sub_1D1C11294(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    v1 = sub_1D1E6769C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE07B790);
    }
  }
}

uint64_t getEnumTagSinglePayload for StaticMediaSystem.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEB)
  {
    goto LABEL_17;
  }

  if (a2 + 21 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 21) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 21;
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

      return (*a1 | (v4 << 8)) - 21;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 21;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x16;
  v8 = v6 - 22;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for StaticMediaSystem.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 21 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 21) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEB)
  {
    v4 = 0;
  }

  if (a2 > 0xEA)
  {
    v5 = ((a2 - 235) >> 8) + 1;
    *result = a2 + 21;
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
    *result = a2 + 21;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D1C10AB0()
{
  result = qword_1EC64C990;
  if (!qword_1EC64C990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C990);
  }

  return result;
}

unint64_t sub_1D1C10B08()
{
  result = qword_1EC64C998;
  if (!qword_1EC64C998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C998);
  }

  return result;
}

unint64_t sub_1D1C10B60()
{
  result = qword_1EC64C9A0;
  if (!qword_1EC64C9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C9A0);
  }

  return result;
}

uint64_t sub_1D1C10BB4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D1EBDFE0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6564644165746164 && a2 == 0xE900000000000064 || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x626D79536E6F6369 && a2 == 0xEA00000000006C6FLL || (sub_1D1E6904C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656C62756F447369 && a2 == 0xEC00000068676948 || (sub_1D1E6904C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x69726F7661467369 && a2 == 0xEA00000000006574 || (sub_1D1E6904C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D1EC5DC0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7461706D6F437369 && a2 == 0xEC000000656C6269 || (sub_1D1E6904C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6168636165527369 && a2 == 0xEB00000000656C62 || (sub_1D1E6904C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D1EC67A0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6B63616279616C70 && a2 == 0xED00006574617453 || (sub_1D1E6904C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D1EC67C0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x736D6F74706D7973 && a2 == 0xE800000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x6572617774666F73 && a2 == 0xEE00657461647055 || (sub_1D1E6904C() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D1EC6270 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x6449656D6F68 && a2 == 0xE600000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x7364496D6F6F72 && a2 == 0xE700000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x656D614E6D6F6F72 && a2 == 0xE800000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0x726F737365636361 && a2 == 0xEC00000073644979 || (sub_1D1E6904C() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0x6449656369766564 && a2 == 0xE900000000000073 || (sub_1D1E6904C() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0xD000000000000025 && 0x80000001D1EC6920 == a2)
  {

    return 21;
  }

  else
  {
    v6 = sub_1D1E6904C();

    if (v6)
    {
      return 21;
    }

    else
    {
      return 22;
    }
  }
}

uint64_t sub_1D1C11294(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D1C11304(uint64_t a1, char a2, void *a3)
{
  v45 = a3;
  v5 = type metadata accessor for StaticMediaSystemComponent(0);
  v40 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D1E66A7C();
  v37 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643780, &qword_1D1EA1130);
  result = MEMORY[0x1EEE9AC00](v10);
  v41 = &v35 - v13;
  v14 = *(a1 + 16);
  if (v14)
  {
    v39 = *(result + 48);
    v15 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v38 = *(v12 + 72);
    v42 = (v37 + 32);
    v36 = (v37 + 8);
    while (1)
    {
      v43 = v14;
      v17 = v41;
      sub_1D1741C08(v15, v41, &qword_1EC643780, &qword_1D1EA1130);
      v18 = *v42;
      v19 = v8;
      (*v42)(v44, v17, v8);
      v20 = v7;
      sub_1D1C11B50(v17 + v39, v7, type metadata accessor for StaticMediaSystemComponent);
      v21 = *v45;
      v23 = sub_1D1742188();
      v24 = v21[2];
      v25 = (v22 & 1) == 0;
      v26 = v24 + v25;
      if (__OFADD__(v24, v25))
      {
        break;
      }

      v27 = v22;
      if (v21[3] >= v26)
      {
        if ((a2 & 1) == 0)
        {
          sub_1D173D7C0();
        }
      }

      else
      {
        sub_1D1730B14(v26, a2 & 1);
        v28 = sub_1D1742188();
        if ((v27 & 1) != (v29 & 1))
        {
          goto LABEL_17;
        }

        v23 = v28;
      }

      v30 = *v45;
      if (v27)
      {
        v8 = v19;
        (*v36)(v44, v19);
        v16 = v30[7] + *(v40 + 72) * v23;
        v7 = v20;
        result = sub_1D1C11BB8(v20, v16);
      }

      else
      {
        v30[(v23 >> 6) + 8] |= 1 << v23;
        v8 = v19;
        v18((v30[6] + *(v37 + 72) * v23), v44, v19);
        v31 = v30[7] + *(v40 + 72) * v23;
        v7 = v20;
        result = sub_1D1C11B50(v20, v31, type metadata accessor for StaticMediaSystemComponent);
        v32 = v30[2];
        v33 = __OFADD__(v32, 1);
        v34 = v32 + 1;
        if (v33)
        {
          goto LABEL_16;
        }

        v30[2] = v34;
      }

      v15 += v38;
      a2 = 1;
      v14 = v43 - 1;
      if (v43 == 1)
      {
        return result;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    result = sub_1D1E690FC();
    __break(1u);
  }

  return result;
}

void sub_1D1C116F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticAccessory(0);
  v40 = *(v4 - 8);
  v41 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v39 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v44 = a1;
  v45 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1 + 56;
  v10 = 1 << *(a1 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a1 + 56);
  v13 = (v10 + 63) >> 6;
  v42 = (v7 + 8);
  v43 = v7 + 16;

  v14 = 0;
  v38 = MEMORY[0x1E69E7CC0];
  while (v12)
  {
    v15 = v45;
LABEL_12:
    v17 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    (*(v7 + 16))(v15, *(v44 + 48) + *(v7 + 72) * (v17 | (v14 << 6)), v6);
    if (*(a2 + 16) && (v18 = a2, v19 = sub_1D1742188(), (v20 & 1) != 0))
    {
      v21 = *(a2 + 56) + *(v40 + 72) * v19;
      v22 = v7;
      v23 = v6;
      v24 = v39;
      sub_1D1C11A88(v21, v39, type metadata accessor for StaticAccessory);
      (*v42)(v15, v23);
      v25 = v24 + *(v41 + 92);
      v26 = *v25;
      v27 = *(v25 + 8);
      sub_1D18EB144(*v25, *(v25 + 8));
      v28 = v24;
      v6 = v23;
      v7 = v22;
      a2 = v18;
      sub_1D1C11AF0(v28, type metadata accessor for StaticAccessory);
      if (v27 != 255)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v38 = sub_1D177FA8C(0, *(v38 + 2) + 1, 1, v38);
        }

        v29 = v26;
        v31 = *(v38 + 2);
        v30 = *(v38 + 3);
        v32 = v31 + 1;
        if (v31 >= v30 >> 1)
        {
          v37 = v31 + 1;
          v35 = sub_1D177FA8C((v30 > 1), v31 + 1, 1, v38);
          v32 = v37;
          v38 = v35;
        }

        v33 = v38;
        *(v38 + 2) = v32;
        v34 = &v33[16 * v31];
        *(v34 + 4) = v29;
        v34[40] = v27;
      }
    }

    else
    {
      (*v42)(v15, v6);
    }
  }

  v15 = v45;
  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= v13)
    {

      _s13HomeDataModel18StaticMediaProfileV10iconSymbol3forSSSayAA0D9AccessoryV07SpecialE8CategoryOG_tFZ_0(v38);

      return;
    }

    v12 = *(v9 + 8 * v16);
    ++v14;
    if (v12)
    {
      v14 = v16;
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_1D1C11A88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1C11AF0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D1C11B50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1C11BB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticMediaSystemComponent(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t StaticService.staticCharacteristic(for:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + *(type metadata accessor for StaticService(0) + 128));
  if (*(v5 + 16))
  {
    v6 = *a1;

    v7 = sub_1D171D140(v6);
    if (v8)
    {
      v9 = v7;
      v10 = *(v5 + 56);
      v11 = type metadata accessor for StaticCharacteristic(0);
      v12 = *(v11 - 8);
      sub_1D1C2AEC4(v10 + *(v12 + 72) * v9, a2, type metadata accessor for StaticCharacteristic);
      (*(v12 + 56))(a2, 0, 1, v11);
    }

    else
    {
      v16 = type metadata accessor for StaticCharacteristic(0);
      (*(*(v16 - 8) + 56))(a2, 1, 1, v16);
    }
  }

  else
  {
    v13 = type metadata accessor for StaticCharacteristic(0);
    v14 = *(*(v13 - 8) + 56);

    return v14(a2, 1, 1, v13);
  }
}

uint64_t StaticService.description.getter()
{
  BYTE8(v6) = 0;
  sub_1D1E6884C();
  MEMORY[0x1D3890F70](0x2065636976726553, 0xE900000000000027);
  v1 = type metadata accessor for StaticService(0);
  MEMORY[0x1D3890F70](*(v0 + *(v1 + 20)), *(v0 + *(v1 + 20) + 8));
  MEMORY[0x1D3890F70](0x27206469202C27, 0xE700000000000000);
  sub_1D1E66A7C();
  sub_1D1C2AFE0(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v2 = sub_1D1E68FAC();
  MEMORY[0x1D3890F70](v2);

  MEMORY[0x1D3890F70](0xD000000000000011, 0x80000001D1EC6970);
  *&v6 = *(v0 + *(v1 + 104));
  v3 = ServiceKind.localizedDescription.getter();
  MEMORY[0x1D3890F70](v3);

  MEMORY[0x1D3890F70](0xD00000000000001BLL, 0x80000001D1EC6990);
  v4 = ServiceKind.localizedDescription.getter();
  MEMORY[0x1D3890F70](v4);

  MEMORY[0x1D3890F70](39, 0xE100000000000000);
  return *(&v6 + 1);
}

uint64_t StaticService.set(displayName:)(uint64_t a1, uint64_t a2)
{
  v2[18] = a1;
  v2[19] = a2;
  v3 = swift_task_alloc();
  v2[20] = v3;
  *v3 = v2;
  v3[1] = sub_1D1C12034;

  return StaticService.service.getter();
}

uint64_t sub_1D1C12034(uint64_t a1)
{
  *(*v1 + 168) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1C12134, 0, 0);
}

uint64_t sub_1D1C12134()
{
  v1 = v0[21];
  if (v1)
  {
    v2 = sub_1D1E677EC();
    v0[22] = v2;
    v0[2] = v0;
    v0[3] = sub_1D1C122A0;
    v3 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1D17B04C8;
    v0[13] = &block_descriptor_51;
    v0[14] = v3;
    [v1 updateName:v2 completionHandler:v0 + 10];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1D1C122A0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = sub_1D1C12418;
  }

  else
  {
    v2 = sub_1D1C123B0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D1C123B0()
{
  v1 = *(v0 + 168);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D1C12418(uint64_t a1)
{
  v2 = v1[22];
  v3 = v1[21];
  swift_willThrow();

  v4 = v1[1];

  return v4();
}

uint64_t StaticService.set(staticRoom:)()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1D1C1252C;

  return StaticRoom.room.getter();
}

uint64_t sub_1D1C1252C(uint64_t a1)
{
  *(*v1 + 32) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1C1262C, 0, 0);
}

uint64_t sub_1D1C1262C()
{
  v1 = v0[4];
  if (v1)
  {
    v2 = swift_task_alloc();
    v0[5] = v2;
    *v2 = v0;
    v2[1] = sub_1D1BADE64;

    return StaticService.set(room:)(v1);
  }

  else
  {
    sub_1D1820D0C();
    swift_allocError();
    swift_willThrow();
    v4 = v0[1];

    return v4();
  }
}

uint64_t StaticService.set(room:)(uint64_t a1)
{
  *(v1 + 144) = a1;
  v2 = swift_task_alloc();
  *(v1 + 152) = v2;
  *v2 = v1;
  v2[1] = sub_1D1C127BC;

  return StaticService.service.getter();
}

uint64_t sub_1D1C127BC(uint64_t a1)
{
  *(*v1 + 160) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1C128BC, 0, 0);
}

uint64_t sub_1D1C128BC()
{
  v1 = *(v0 + 160);
  if (v1)
  {
    v2 = [*(v0 + 160) accessory];
    *(v0 + 168) = v2;

    if (v2)
    {
      v3 = [v2 home];
      *(v0 + 176) = v3;
      if (v3)
      {
        v4 = v3;
        v5 = *(v0 + 144);
        *(v0 + 16) = v0;
        *(v0 + 24) = sub_1D1C12AA0;
        v6 = swift_continuation_init();
        *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
        *(v0 + 80) = MEMORY[0x1E69E9820];
        *(v0 + 88) = 1107296256;
        *(v0 + 96) = sub_1D17B04C8;
        *(v0 + 104) = &block_descriptor_9;
        *(v0 + 112) = v6;
        [v4 assignAccessory:v2 toRoom:v5 completionHandler:v0 + 80];

        return MEMORY[0x1EEE6DEC8](v0 + 16);
      }
    }
  }

  sub_1D1820D0C();
  swift_allocError();
  swift_willThrow();
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1D1C12AA0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = sub_1D1BADB48;
  }

  else
  {
    v2 = sub_1D1C12BB0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D1C12BB0()
{
  sub_1D1E67E1C();
  *(v0 + 192) = sub_1D1E67E0C();
  v2 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1C12C44, v2, v1);
}

uint64_t sub_1D1C12C44()
{
  v1 = v0[21];
  v2 = v0[18];

  sub_1D18B4DB8(v1, v2);
  v0[25] = 0;

  return MEMORY[0x1EEE6DFA0](sub_1D1C123B0, 0, 0);
}

uint64_t sub_1D1C12CE4()
{
  v1 = *(v0 + 168);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t StaticService.set(showInDashboard:)(char a1)
{
  *(v1 + 32) = a1;
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1D1C12DDC;

  return StaticService.service.getter();
}

uint64_t sub_1D1C12DDC(uint64_t a1)
{
  *(*v1 + 24) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1C12EDC, 0, 0);
}

uint64_t sub_1D1C12EDC()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 32);
    v3 = v1;
    HMService.shouldShowInDashboard.setter(v2);
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t StaticService.set(favorite:)(char a1)
{
  *(v1 + 32) = a1;
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1D1C12FEC;

  return StaticService.service.getter();
}

uint64_t sub_1D1C12FEC(uint64_t a1)
{
  *(*v1 + 24) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1C130EC, 0, 0);
}

uint64_t sub_1D1C130EC()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 32);
    v3 = v1;
    HMService.isFavorite.setter(v2);
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1D1C131A0@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for StaticService(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1C2AEC4(v2, v7, type metadata accessor for StaticService);
  v10 = a1;
  return sub_1D18F211C(v7, &v10, a2);
}

uint64_t StaticService.set(customIconSymbol:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_1D1C132DC;

  return StaticService.service.getter();
}

uint64_t sub_1D1C132DC(uint64_t a1)
{
  *(*v1 + 40) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1C133DC, 0, 0);
}

uint64_t sub_1D1C133DC()
{
  v1 = v0[5];
  if (v1)
  {
    v2 = v0[2];
    v3 = v0[3];

    v4 = v1;
    HMService.customIconSFSymbol.setter(v2, v3);
  }

  v5 = v0[1];

  return v5();
}

BOOL StaticService.canBeToggled.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643630, &qword_1D1E71D10);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v47 - v6;
  v8 = type metadata accessor for StaticService(0);
  v9 = *(v0 + *(v8 + 104));
  if (v9 - 3) < 0x2E && ((0x32C892066001uLL >> (v9 - 3)))
  {
    return 1;
  }

  if (qword_1EC642230 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v10 = off_1EC646318;

  v11 = sub_1D171951C(v9, v10);

  if (v11)
  {
    return 1;
  }

  v49 = v9;
  if (ServiceKind.rawValue.getter() == 0xD000000000000024 && 0x80000001D1EB3340 == v13)
  {
  }

  else
  {
    v14 = sub_1D1E6904C();

    if ((v14 & 1) == 0)
    {
LABEL_18:
      v49 = v9;
      if (ServiceKind.rawValue.getter() == 0xD000000000000024 && 0x80000001D1EB3550 == v22)
      {
      }

      else
      {
        v23 = sub_1D1E6904C();

        if ((v23 & 1) == 0)
        {
          return 0;
        }
      }

      v24 = *(v1 + *(v8 + 128));
      if (!*(v24 + 16))
      {
        v31 = type metadata accessor for StaticCharacteristic(0);
        (*(*(v31 - 8) + 56))(v5, 1, 1, v31);
LABEL_35:
        sub_1D1741A30(v5, &qword_1EC643630, &qword_1D1E71D10);
        return 0;
      }

      v25 = sub_1D171D140(152);
      if (v26)
      {
        v27 = v25;
        v28 = *(v24 + 56);
        v29 = type metadata accessor for StaticCharacteristic(0);
        v30 = *(v29 - 8);
        sub_1D1C2AEC4(v28 + *(v30 + 72) * v27, v5, type metadata accessor for StaticCharacteristic);
        (*(v30 + 56))(v5, 0, 1, v29);
      }

      else
      {
        v29 = type metadata accessor for StaticCharacteristic(0);
        (*(*(v29 - 8) + 56))(v5, 1, 1, v29);
      }

      type metadata accessor for StaticCharacteristic(0);
      if ((*(*(v29 - 8) + 48))(v5, 1, v29) == 1)
      {
        goto LABEL_35;
      }

      v41 = &v5[*(v29 + 44)];
      v42 = *v41;
      v43 = v41[1];
      v44 = v41[2];
      v45 = v41[3];
      v37 = v41[4];
      sub_1D18F323C(*v41, v43, v44, v45, v37);
      sub_1D1C2AF2C(v5, type metadata accessor for StaticCharacteristic);
      if (v45 >> 8 == 0xFFFFFFFF)
      {
        return 0;
      }

      if (v45 >> 62)
      {
        sub_1D18F3260(v42, v43, v44, v45, v37);
        return 0;
      }

      if (!v37)
      {
        if (v44 <= 1)
        {
          v38 = 1;
        }

        else
        {
          v38 = v44;
        }

        v39 = v43;
        v40 = v42;
LABEL_44:
        v37 = sub_1D1C279CC(v39, v40, v38);
        goto LABEL_45;
      }

      goto LABEL_45;
    }
  }

  v15 = *(v1 + *(v8 + 128));
  if (!*(v15 + 16))
  {
    v21 = type metadata accessor for StaticCharacteristic(0);
    (*(*(v21 - 8) + 56))(v7, 1, 1, v21);
LABEL_17:
    sub_1D1741A30(v7, &qword_1EC643630, &qword_1D1E71D10);
    goto LABEL_18;
  }

  v16 = sub_1D171D140(160);
  if (v17)
  {
    v18 = v16;
    v48 = *(v15 + 56);
    v19 = type metadata accessor for StaticCharacteristic(0);
    v20 = *(v19 - 8);
    sub_1D1C2AEC4(v48 + *(v20 + 72) * v18, v7, type metadata accessor for StaticCharacteristic);
    (*(v20 + 56))(v7, 0, 1, v19);
  }

  else
  {
    v19 = type metadata accessor for StaticCharacteristic(0);
    (*(*(v19 - 8) + 56))(v7, 1, 1, v19);
  }

  type metadata accessor for StaticCharacteristic(0);
  if ((*(*(v19 - 8) + 48))(v7, 1, v19) == 1)
  {
    goto LABEL_17;
  }

  v32 = &v7[*(v19 + 44)];
  v33 = *v32;
  v34 = v32[1];
  v35 = v32[2];
  v36 = v32[3];
  v37 = v32[4];
  sub_1D18F323C(*v32, v34, v35, v36, v37);
  sub_1D1C2AF2C(v7, type metadata accessor for StaticCharacteristic);
  if (v36 >> 8 == 0xFFFFFFFF)
  {
    goto LABEL_18;
  }

  if (v36 >> 62)
  {
    sub_1D18F3260(v33, v34, v35, v36, v37);
    goto LABEL_18;
  }

  if (!v37)
  {
    if (v35 <= 1)
    {
      v38 = 1;
    }

    else
    {
      v38 = v35;
    }

    v39 = v34;
    v40 = v33;
    goto LABEL_44;
  }

LABEL_45:
  v46 = v37[2];

  return v46 == 2;
}

uint64_t sub_1D1C13B78(char a1, uint64_t (*a2)(char *))
{
  v7 = *(v2 + *(type metadata accessor for StaticService(0) + 128));
  v6 = a1;
  return a2(&v6);
}

Swift::Int sub_1D1C13BE0(char a1)
{
  v5 = *(v1 + *(type metadata accessor for StaticService(0) + 128));
  v4 = a1;
  v6 = StaticCharacteristicsBag.int(for:)(&v4);
  if (v6.is_nil)
  {
    v6.value = 0;
  }

  return v6.value;
}

uint64_t StaticService.service.getter()
{
  v1[5] = v0;
  v2 = sub_1D1E66A7C();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1C13D48, 0, 0);
}

uint64_t sub_1D1C13D48()
{
  v1 = _s13HomeDataModel0A5StateV6StreamC17sharedIfAvailableAESgvgZ_0();
  v0[14] = v1;
  if (v1)
  {
    if (qword_1EC642358 != -1)
    {
      swift_once();
    }

    v2 = qword_1EC64ABE8;
    v3 = sub_1D1C13E38;
    v4 = 0;
  }

  else
  {
    v0[16] = sub_1D1E67E1C();
    v0[17] = sub_1D1E67E0C();
    v5 = sub_1D1E67D4C();
    v7 = v6;
    v3 = sub_1D1C14974;
    v2 = v5;
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v3, v2, v4);
}

uint64_t sub_1D1C13E38()
{
  v91 = v1;
  v4 = v1[14];
  swift_beginAccess();
  v5 = *(v4 + 64);
  if (v5)
  {
    v6 = [v5 homes];
    sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
    sub_1D1E67C1C();

    v90 = sub_1D1749970(v7);
    v0 = 0;
    sub_1D1747DDC(&v90);

    v8 = v90;
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  v9 = v1[12];
  v10 = v1[6];
  v11 = v1[7];
  v12 = v1[5];
  v13 = *(v11 + 16);
  (v13)(v1[13], v12, v10);
  v79 = v13;
  v80 = (v11 + 16);
  (v13)(v9, v12, v10);
  v74 = v8 >> 62;
  if (v8 >> 62)
  {
LABEL_76:
    v83 = v8 & 0xFFFFFFFFFFFFFF8;
    v82 = sub_1D1E6873C();
  }

  else
  {
    v83 = v8 & 0xFFFFFFFFFFFFFF8;
    v82 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = 0;
  v81 = v8 & 0xC000000000000001;
  v75 = v8;
  v15 = (v1[7] + 8);
  v87 = v1;
  v77 = v15;
  v78 = v8 + 32;
  while (1)
  {
    if (v14 == v82)
    {
      v35 = v82;
      if (v74)
      {
        goto LABEL_55;
      }

      goto LABEL_34;
    }

    v86 = v14;
    if (v81)
    {
      v16 = MEMORY[0x1D3891EF0]();
    }

    else
    {
      if (v14 >= *(v83 + 16))
      {
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
        goto LABEL_76;
      }

      v16 = *(v78 + 8 * v14);
    }

    v18 = v1[11];
    v17 = v1[12];
    v19 = v1[10];
    v20 = v1[6];
    v84 = v16;
    v21 = [v16 accessories];
    sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
    v22 = sub_1D1E67C1C();

    v3 = v22;
    v1 = v79;
    (v79)(v18, v17, v20);
    (v79)(v19, v17, v20);
    v85 = (v22 >> 62);
    v88 = v22 & 0xFFFFFFFFFFFFFF8;
    v8 = v22 >> 62 ? sub_1D1E6873C() : *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v2 = 0;
    v23 = v22 & 0xC000000000000001;
    v76 = v22 + 32;
    while (v8 != v2)
    {
      if (v23)
      {
        v24 = v3;
        v25 = MEMORY[0x1D3891EF0](v2, v3);
      }

      else
      {
        if (v2 >= *(v88 + 16))
        {
          __break(1u);
LABEL_71:
          __break(1u);
          goto LABEL_72;
        }

        v24 = v3;
        v25 = *(v3 + 8 * v2 + 32);
      }

      v26 = v25;
      v27 = v87[10];
      v28 = [v25 services];
      sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
      v29 = sub_1D1E67C1C();

      v30 = swift_task_alloc();
      *(v30 + 16) = v27;
      v0 = 0;
      v1 = sub_1D174A6C4(sub_1D1749C64, v30, v29);

      if (v1)
      {
        v8 = v2;
        v3 = v24;
        break;
      }

      v31 = __OFADD__(v2++, 1);
      v3 = v24;
      if (v31)
      {
        goto LABEL_71;
      }
    }

    if (!v85)
    {
      break;
    }

    if (v8 != sub_1D1E6873C())
    {
      goto LABEL_50;
    }

LABEL_28:
    v1 = v87;
    v32 = v87[10];
    v33 = v87[6];
    v15 = v77;
    v34 = *v77;
    (*v77)(v87[11], v33);

    v34(v32, v33);

    v14 = v86 + 1;
    if (__OFADD__(v86, 1))
    {
      goto LABEL_73;
    }
  }

  if (v8 == *(v88 + 16))
  {
    goto LABEL_28;
  }

LABEL_50:
  if (v23)
  {
    goto LABEL_82;
  }

  if (v8 < *(v88 + 16))
  {
    for (i = *(v76 + 8 * v8); ; i = MEMORY[0x1D3891EF0](v8, v3))
    {
      v50 = i;
      v1 = v87;
      v51 = v87[11];
      v52 = v87[6];
      v53 = [i services];
      sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
      v54 = sub_1D1E67C1C();

      v55 = swift_task_alloc();
      *(v55 + 16) = v51;
      v2 = sub_1D174A6C4(sub_1D1778988, v55, v54);

      v15 = v77;
      v56 = *v77;
      (*v77)(v51, v52);

      v57 = v87[10];
      v0 = v87[6];
      if (!v2)
      {
        goto LABEL_86;
      }

      v56(v57, v0);

      v35 = v86;
      if (v74)
      {
LABEL_55:
        if (v35 == sub_1D1E6873C())
        {
LABEL_56:
          v58 = *v15;
          (*v15)(v1[13], v1[6]);
          v0 = 0;
          goto LABEL_67;
        }
      }

      else
      {
LABEL_34:
        if (v35 == *(v83 + 16))
        {
          goto LABEL_56;
        }
      }

      if (v81)
      {
        v36 = MEMORY[0x1D3891EF0](v35, v75);
      }

      else
      {
        if (v35 >= *(v83 + 16))
        {
          __break(1u);
LABEL_80:
          v60 = MEMORY[0x1D3891EF0](v35, v3);
LABEL_65:
          v57 = v60;
          v61 = v0[9];
          v2 = v0;
          v62 = v0[6];
          v63 = [v60 services];
          sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
          v56 = sub_1D1E67C1C();

          v64 = swift_task_alloc();
          *(v64 + 16) = v61;
          v0 = sub_1D174A6C4(sub_1D1778988, v64, v56);

          v58 = *v77;
          (*v77)(v61, v62);

          if (!v0)
          {
            goto LABEL_85;
          }

          v65 = *(v2 + 104);
          v66 = *(v2 + 64);
          v67 = *(v2 + 48);

          v58(v66, v67);
          v58(v65, v67);

          v1 = v2;
LABEL_67:

          v1[15] = v0;
          v58(v1[12], v1[6]);
          v68 = sub_1D1C148C4;
          v69 = 0;
          v70 = 0;

          return MEMORY[0x1EEE6DFA0](v68, v69, v70);
        }

        v36 = *(v78 + 8 * v35);
      }

      v37 = v1[13];
      v39 = v1[8];
      v38 = v1[9];
      v40 = v1[6];
      v85 = v36;
      v41 = [v36 accessories];
      sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
      v3 = sub_1D1E67C1C();

      v1 = v80;
      (v79)(v38, v37, v40);
      (v79)(v39, v37, v40);
      v86 = v3 >> 62;
      v89 = v3 & 0xFFFFFFFFFFFFFF8;
      if (v3 >> 62)
      {
        v35 = sub_1D1E6873C();
      }

      else
      {
        v35 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v8 = 0;
      v42 = v3 & 0xC000000000000001;
      v84 = (v3 + 32);
      v0 = v87;
      while (v35 != v8)
      {
        if (v42)
        {
          v2 = v3;
          v43 = MEMORY[0x1D3891EF0](v8, v3);
        }

        else
        {
          if (v8 >= *(v89 + 16))
          {
            goto LABEL_74;
          }

          v2 = v3;
          v43 = *(v3 + 8 * v8 + 32);
        }

        v44 = v43;
        v45 = v0[8];
        v46 = [v43 services];
        sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
        v47 = sub_1D1E67C1C();

        v1 = swift_task_alloc();
        v1[2] = v45;
        v48 = sub_1D174A6C4(sub_1D1778988, v1, v47);

        if (v48)
        {
          v35 = v8;
          v0 = v87;
          v3 = v2;
          break;
        }

        v31 = __OFADD__(v8++, 1);
        v0 = v87;
        v3 = v2;
        if (v31)
        {
          goto LABEL_75;
        }
      }

      if (v86)
      {
        v59 = sub_1D1E6873C();
      }

      else
      {
        v59 = *(v89 + 16);
      }

      if (v35 == v59)
      {
        goto LABEL_84;
      }

      if (v42)
      {
        goto LABEL_80;
      }

      if (v35 < *(v89 + 16))
      {
        v60 = *(v84 + v35);
        goto LABEL_65;
      }

      __break(1u);
LABEL_82:
      ;
    }
  }

  __break(1u);
LABEL_84:
  v71 = v0[12];
  v57 = v0[13];
  v56 = v0[8];
  v72 = v0[9];
  v0 = v0[6];
  v58 = *v77;
  (*v77)(v72, v0);

  v58(v56, v0);
  v58(v57, v0);

  v58(v71, v0);
  __break(1u);
LABEL_85:
  v58(*(v2 + 64), *(v2 + 48));
  __break(1u);
LABEL_86:
  v68 = (v56)(v57, v0);
  __break(1u);
  return MEMORY[0x1EEE6DFA0](v68, v69, v70);
}

uint64_t sub_1D1C148C4()
{

  v1 = *(v0 + 120);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1D1C14974()
{

  if (qword_1EE07DC58 != -1)
  {
    swift_once();
  }

  return MEMORY[0x1EEE6DFA0](sub_1D1C14A0C, 0, 0);
}

uint64_t sub_1D1C14A0C(uint64_t a1)
{
  *(v1 + 144) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1C14A98, v3, v2);
}

uint64_t sub_1D1C14A98()
{

  *(v0 + 152) = qword_1EE07DC60;

  return MEMORY[0x1EEE6DFA0](sub_1D1C14B0C, 0, 0);
}

uint64_t sub_1D1C14B0C(uint64_t a1)
{
  *(v1 + 160) = sub_1D1E66A2C();
  *(v1 + 168) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1C14BA4, v3, v2);
}

uint64_t sub_1D1C14BA4()
{
  v1 = v0[20];
  v2 = v0[19];

  v3 = [v2 serviceFor_];

  v4 = v0[1];

  return v4(v3);
}

uint64_t StaticService.isActivated.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v28[-v3];
  v5 = type metadata accessor for StatusStrings.Options(0);
  v6 = (v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v28[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = v6[13];
  v10 = sub_1D1E669FC();
  (*(*(v10 - 8) + 56))(&v8[v9], 1, 1, v10);
  *v8 = 257;
  *(v8 + 2) = 0;
  v8[6] = 0;
  v8[v6[14]] = 2;
  v11 = &v8[v6[15]];
  v11[4] = 0;
  *v11 = 2;
  v12 = type metadata accessor for StaticMatterDevice(0);
  (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
  StaticService.statusString(with:associatedMatterDevice:)(v8);
  v14 = v13;
  sub_1D1741A30(v4, &qword_1EC643650, &qword_1D1E71D40);
  sub_1D1C2AF2C(v8, type metadata accessor for StatusStrings.Options);
  if (v14)
  {

LABEL_3:
    v15 = 0;
  }

  else
  {
    v17 = type metadata accessor for StaticService(0);
    v15 = 0;
    switch(*(v1 + *(v17 + 104)))
    {
      case 3:
        v30 = *(v1 + *(v17 + 128));
        v29 = 30;
        v33 = StaticCharacteristicsBag.int(for:)(&v29);
        v23 = v33.value == 2;
        goto LABEL_36;
      case 9:
        v30 = *(v1 + *(v17 + 128));
        v22 = 18;
        goto LABEL_35;
      case 0xA:
        v30 = *(v1 + *(v17 + 128));
        v22 = 21;
        goto LABEL_35;
      case 0xB:
        v30 = *(v1 + *(v17 + 128));
        v22 = 28;
        goto LABEL_35;
      case 0xE:
      case 0x33:
      case 0x34:
        v30 = *(v1 + *(v17 + 128));
        v29 = 40;
        v31 = StaticCharacteristicsBag.int(for:)(&v29);
        v15 = (v31.value > 0) & ~v31.is_nil;
        return v15 & 1;
      case 0x10:
      case 0x1C:
      case 0x22:
      case 0x29:
        v30 = *(v1 + *(v17 + 128));
        v18 = 105;
        goto LABEL_13;
      case 0x11:
      case 0x14:
      case 0x15:
      case 0x2A:
      case 0x2C:
      case 0x30:
        v30 = *(v1 + *(v17 + 128));
        v18 = 3;
        goto LABEL_13;
      case 0x13:
        v30 = *(v1 + *(v17 + 128));
        v24 = 31;
        goto LABEL_26;
      case 0x18:
        v30 = *(v1 + *(v17 + 128));
        v18 = 65;
        goto LABEL_13;
      case 0x1A:
        v30 = *(v1 + *(v17 + 128));
        v22 = 74;
        goto LABEL_35;
      case 0x1E:
        v30 = *(v1 + *(v17 + 128));
        v24 = 38;
LABEL_26:
        v29 = v24;
        v32 = StaticCharacteristicsBag.int(for:)(&v29);
        v19 = v32.value == 1;
        goto LABEL_27;
      case 0x1F:
      case 0x26:
        v30 = *(v1 + *(v17 + 128));
        v18 = 84;
        goto LABEL_13;
      case 0x20:
        v30 = *(v1 + *(v17 + 128));
        v18 = 83;
LABEL_13:
        v29 = v18;
        v15 = sub_1D1CE4920(&v29);
        if (v15 != 2)
        {
          return v15 & 1;
        }

        goto LABEL_3;
      case 0x21:
        v30 = *(v1 + *(v17 + 128));
        v22 = 89;
        goto LABEL_35;
      case 0x23:
        v30 = *(v1 + *(v17 + 128));
        v29 = 42;
        v32 = StaticCharacteristicsBag.int(for:)(&v29);
        v19 = v32.value == 3;
LABEL_27:
        v25 = !v19;
        v15 = v25 & ~v32.is_nil;
        return v15 & 1;
      case 0x25:
        v30 = *(v1 + *(v17 + 128));
        v22 = 127;
LABEL_35:
        v29 = v22;
        v33 = StaticCharacteristicsBag.int(for:)(&v29);
        v23 = v33.value == 1;
LABEL_36:
        v27 = v23;
        v15 = v27 & ~v33.is_nil;
        return v15 & 1;
      case 0x2E:
        v26 = *(v17 + 128);
        v30 = *(v1 + v26);
        v29 = 34;
        v34 = StaticCharacteristicsBag.int(for:)(&v29);
        if (!v34.is_nil && v34.value)
        {
          v15 = 1;
          return v15 & 1;
        }

        v30 = *(v1 + v26);
        v29 = -104;
        v35 = StaticCharacteristicsBag.int(for:)(&v29);
        if (v35.is_nil)
        {
          goto LABEL_3;
        }

        v15 = v35.value != 0;
        break;
      case 0x2F:
        v20 = *(v17 + 128);
        v30 = *(v1 + v20);
        v29 = 3;
        v21 = sub_1D1CE4920(&v29);
        if (v21 == 2 || (v21 & 1) == 0)
        {
          goto LABEL_3;
        }

        v30 = *(v1 + v20);
        v29 = 65;
        v15 = sub_1D1CE4920(&v29);
        return v15 & 1;
      default:
        return v15 & 1;
    }
  }

  return v15 & 1;
}

uint64_t _s13HomeDataModel13StaticServiceV07displayE4KindAA0eG0Ovg_0@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for StaticService(0);
  v4 = *(v1 + *(result + 112));
  if (v4 == 53)
  {
    LOBYTE(v4) = *(v1 + *(result + 104));
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1D1C1516C(char a1)
{
  v5 = *(v1 + *(type metadata accessor for StaticService(0) + 128));
  v4 = a1;
  return sub_1D1CE4920(&v4);
}

uint64_t StaticService.isSensor.getter()
{
  if (qword_1EE07AB30 != -1)
  {
    swift_once();
  }

  v1 = off_1EE07AB38;
  v2 = *(v0 + *(type metadata accessor for StaticService(0) + 104));

  return sub_1D171951C(v2, v1);
}

void StaticService.tileIcon.getter(HomeDataModel::Icon *a1@<X8>)
{
  v3 = type metadata accessor for StaticService(0);
  v4 = (v1 + v3[25]);
  v5 = v4[1];
  if (v5)
  {
    v6 = *v4;

    v7 = v6;
    v8 = v5;

    Icon.init(customIconName:)(a1, *&v7);
  }

  else
  {
    v9 = *(v1 + v3[28]);
    if (v9 == 53)
    {
      LOBYTE(v9) = *(v1 + v3[26]);
    }

    v11 = v9;
    v10 = *(v1 + v3[27]);
    Icon.init(serviceKind:serviceSubKind:)(a1, &v11, &v10);
  }
}

uint64_t StaticService.toggle()(uint64_t a1)
{
  *(v1 + 48) = 2;
  *(v1 + 16) = xmmword_1D1E88490;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  v3 = swift_task_alloc();
  *(v1 + 56) = v3;
  *v3 = v1;
  v3[1] = sub_1D186C9D4;

  return StaticService.toggle(options:context:)(a1, (v1 + 48), (v1 + 16));
}

BOOL StaticService.isVisibleService.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v9 - v2;
  if (qword_1EC642398 != -1)
  {
    swift_once();
  }

  v4 = qword_1EC6BE1B0;
  v5 = type metadata accessor for StaticService(0);
  if ((sub_1D171951C(*(v0 + *(v5 + 104)), v4) & 1) == 0)
  {
    return 0;
  }

  sub_1D1741C08(v0 + *(v5 + 116), v3, &qword_1EC642590, qword_1D1E71260);
  v6 = sub_1D1E66A7C();
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) == 1;
  sub_1D1741A30(v3, &qword_1EC642590, qword_1D1E71260);
  return v7;
}

Swift::Int StaticService.isTransitioning.getter()
{
  v1 = type metadata accessor for StaticService(0);
  LOBYTE(v2) = 0;
  v3 = *(v0 + *(v1 + 104));
  if (v3 > 0x2E)
  {
    if (v3 - 51 >= 2)
    {
      if (v3 != 47)
      {
        return v2 & 1;
      }

      v9 = *(v0 + *(v1 + 128));
      v19 = v9;
      v18 = 3;
      v10 = sub_1D1CE4920(&v18);
      if (v10 == 2)
      {
        goto LABEL_25;
      }

      v11 = v10;
      v19 = v9;
      v18 = 65;
      v12 = sub_1D1CE4920(&v18);
      LOBYTE(v2) = v12 ^ v11;
      if (v12 == 2)
      {
        LOBYTE(v2) = 0;
      }

      return v2 & 1;
    }

LABEL_15:
    v7 = *(v0 + *(v1 + 128));
    v19 = v7;
    v18 = -98;
    v22 = StaticCharacteristicsBag.int(for:)(&v18);
    if (v22.is_nil)
    {
      goto LABEL_25;
    }

    value = v22.value;
    v19 = v7;
    v18 = 40;
    v23 = StaticCharacteristicsBag.int(for:)(&v18);
    LOBYTE(v2) = value != v23.value;
    if (v23.is_nil)
    {
      LOBYTE(v2) = 0;
    }

    return v2 & 1;
  }

  switch(v3)
  {
    case 0xEu:
      goto LABEL_15;
    case 0x13u:
      v13 = *(v0 + *(v1 + 128));
      v19 = v13;
      v18 = -107;
      v24 = StaticCharacteristicsBag.int(for:)(&v18);
      if (v24.is_nil)
      {
        goto LABEL_25;
      }

      v15 = v24.value;
      v19 = v13;
      v18 = 31;
      v25 = StaticCharacteristicsBag.int(for:)(&v18);
      v17 = v15 != v25.value && v25.value != 4;
      LOBYTE(v2) = v17 & ~v25.is_nil;
      break;
    case 0x1Eu:
      v19 = *(v0 + *(v1 + 128));
      v4 = v19;
      v18 = -100;
      v20 = StaticCharacteristicsBag.int(for:)(&v18);
      v5 = v20.value;
      is_nil = v20.is_nil;
      v19 = v4;
      v18 = 38;
      v21 = StaticCharacteristicsBag.int(for:)(&v18);
      if (v21.is_nil)
      {
        v2 = 0;
      }

      else
      {
        v2 = v21.value;
      }

      if (is_nil)
      {
        goto LABEL_25;
      }

      if (v5)
      {
        if (v5 == 1 && !v21.is_nil && !v2)
        {
          LOBYTE(v2) = 1;
          return v2 & 1;
        }

LABEL_25:
        LOBYTE(v2) = 0;
        return v2 & 1;
      }

      if (v21.is_nil || v2 != 1)
      {
        goto LABEL_25;
      }

      break;
  }

  return v2 & 1;
}

char StaticService.statusIcon.getter@<W0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for StaticService(0);
  v4 = *(v1 + v3[28]);
  if (v4 == 53)
  {
    v4 = *(v1 + v3[26]);
  }

  v5 = *(v1 + v3[27]);
  v6 = (v1 + v3[25]);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;

    v9._countAndFlagsBits = v8;
    v9._object = v7;
    LOBYTE(v3) = IconSymbol.init(rawValue:)(v9);
    v10 = v12;
  }

  else
  {
    v10 = 92;
  }

  *a1 = v4 | (v5 << 8);
  *(a1 + 8) = 0;
  *(a1 + 9) = v10;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  return v3;
}

BOOL StaticService.isBridgedValveService.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v17 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - v5;
  v7 = type metadata accessor for StaticService(0);
  v18 = *(v0 + v7[26]);
  if (ServiceKind.rawValue.getter() == 0xD000000000000024 && 0x80000001D1EB3580 == v8)
  {
  }

  else
  {
    v9 = sub_1D1E6904C();

    v10 = 0;
    if ((v9 & 1) == 0)
    {
      return v10;
    }
  }

  sub_1D1741C08(v0 + v7[29], v6, &qword_1EC642590, qword_1D1E71260);
  v11 = sub_1D1E66A7C();
  v12 = *(*(v11 - 8) + 48);
  v10 = 1;
  v13 = v12(v6, 1, v11);
  sub_1D1741A30(v6, &qword_1EC642590, qword_1D1E71260);
  if (v13 == 1)
  {
    v14 = v1 + v7[37];
    v15 = v17;
    sub_1D1741C08(v14, v17, &qword_1EC642590, qword_1D1E71260);
    v10 = v12(v15, 1, v11) != 1;
    sub_1D1741A30(v15, &qword_1EC642590, qword_1D1E71260);
  }

  return v10;
}

uint64_t StaticService.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D1E66A7C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t StaticService.name.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticService(0) + 20));

  return v1;
}

uint64_t StaticService.accessoryId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for StaticService(0) + 44);
  v4 = sub_1D1E66A7C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t StaticService.accessoryLastSeenBatteryStatus.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for StaticService(0);
  *a1 = *(v1 + *(result + 64));
  return result;
}

double StaticService.roomIds.getter()
{
  type metadata accessor for StaticService(0);

  return result;
}

uint64_t StaticService.roomName.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticService(0) + 80));

  return v1;
}

uint64_t StaticService.customIconSymbol.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticService(0) + 100));

  return v1;
}

uint64_t StaticService.serviceSubKind.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for StaticService(0);
  *a1 = *(v1 + *(result + 108));
  return result;
}

uint64_t StaticService.associatedServiceKind.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for StaticService(0);
  *a1 = *(v1 + *(result + 112));
  return result;
}

double StaticService.linkedStaticServices.getter()
{
  type metadata accessor for StaticService(0);

  return result;
}

double StaticService.staticCharacteristicsBag.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for StaticService(0) + 128));

  return result;
}

double StaticService.staticProfileBag.getter@<D0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for StaticService(0) + 132));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;

  return result;
}

uint64_t StaticService.homeNonResponsiveType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for StaticService(0);
  *a1 = *(v1 + *(result + 140));
  return result;
}

double StaticService.bridgedValveServices.getter()
{
  type metadata accessor for StaticService(0);

  return result;
}

unint64_t sub_1D1C162F8(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 1701667182;
      break;
    case 2:
      result = 0x72616D6972507369;
      break;
    case 3:
      result = 0x656C62756F447369;
      break;
    case 4:
      result = 0x6168636165527369;
      break;
    case 5:
      result = 0x7262696C61437369;
      break;
    case 6:
      result = 0x746142776F4C7369;
      break;
    case 7:
      result = 0x726F737365636361;
      break;
    case 8:
      result = 0xD000000000000015;
      break;
    case 9:
      result = 0x654D656369766564;
      break;
    case 10:
      result = 0x6564644165746164;
      break;
    case 11:
      result = 0xD000000000000015;
      break;
    case 12:
      result = 0xD00000000000001ELL;
      break;
    case 13:
      result = 0xD000000000000015;
      break;
    case 14:
      result = 0xD00000000000001DLL;
      break;
    case 15:
      result = 0x7364496D6F6F72;
      break;
    case 16:
      result = 0x656D614E6D6F6F72;
      break;
    case 17:
      result = 0xD000000000000015;
      break;
    case 18:
      result = 0xD00000000000001FLL;
      break;
    case 19:
      result = 0x69726F7661467369;
      break;
    case 20:
      result = 0xD000000000000017;
      break;
    case 21:
    case 26:
    case 29:
    case 34:
      result = 0xD000000000000010;
      break;
    case 22:
      result = 0x4B65636976726573;
      break;
    case 23:
      result = 0x5365636976726573;
      break;
    case 24:
      result = 0xD000000000000015;
      break;
    case 25:
      result = 0x6553746E65726170;
      break;
    case 27:
    case 32:
      result = 0xD000000000000014;
      break;
    case 28:
    case 36:
      result = 0xD000000000000018;
      break;
    case 30:
      result = 0x6572617774666F73;
      break;
    case 31:
      result = 0xD000000000000015;
      break;
    case 33:
      result = 0xD000000000000011;
      break;
    case 35:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D1C166FC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D1C2C128(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D1C16730(uint64_t a1)
{
  v2 = sub_1D1C2AF8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1C1676C(uint64_t a1)
{
  v2 = sub_1D1C2AF8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticService.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C9B8, &unk_1D1EA1198);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1C2AF8C();
  sub_1D1E6930C();
  LOBYTE(v19) = 0;
  sub_1D1E66A7C();
  sub_1D1C2AFE0(&qword_1EE07B258, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  sub_1D1E68F1C();
  if (!v2)
  {
    v9 = type metadata accessor for StaticService(0);
    LOBYTE(v19) = 1;
    sub_1D1E68ECC();
    LOBYTE(v19) = 2;
    sub_1D1E68EDC();
    LOBYTE(v19) = 3;
    sub_1D1E68EDC();
    LOBYTE(v19) = 4;
    sub_1D1E68EDC();
    LOBYTE(v19) = 5;
    sub_1D1E68E1C();
    LOBYTE(v19) = 6;
    sub_1D1E68E1C();
    LOBYTE(v19) = 7;
    sub_1D1E68F1C();
    LOBYTE(v19) = 8;
    sub_1D1E68E3C();
    v18 = v9[13];
    LOBYTE(v19) = 9;
    type metadata accessor for StaticDeviceMetadata(0);
    sub_1D1C2AFE0(&qword_1EC644648, type metadata accessor for StaticDeviceMetadata, &protocol conformance descriptor for StaticDeviceMetadata);
    sub_1D1E68E5C();
    v18 = v9[14];
    LOBYTE(v19) = 10;
    v10 = sub_1D1E669FC();
    v17 = sub_1D1C2AFE0(&qword_1EC642EC8, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    v18 = v10;
    sub_1D1E68E5C();
    LOBYTE(v19) = 11;
    sub_1D1E68E5C();
    LOBYTE(v19) = *(v3 + v9[16]);
    v21 = 12;
    sub_1D1BC8FFC();
    sub_1D1E68E5C();
    LOBYTE(v19) = 13;
    sub_1D1E68EDC();
    LOBYTE(v19) = 14;
    sub_1D1E68EDC();
    v19 = *(v3 + v9[19]);
    v21 = 15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6438F0, &qword_1D1E99360);
    sub_1D1C2B1F4(&qword_1EC646B10, &qword_1EE07B258, MEMORY[0x1E69695B0], MEMORY[0x1E69E64F0]);
    sub_1D1E68F1C();
    LOBYTE(v19) = 16;
    sub_1D1E68E0C();
    LOBYTE(v19) = 17;
    sub_1D1E68EDC();
    LOBYTE(v19) = 18;
    sub_1D1E68EDC();
    LOBYTE(v19) = 19;
    sub_1D1E68EDC();
    LOBYTE(v19) = 20;
    sub_1D1E68EDC();
    LOBYTE(v19) = 21;
    sub_1D1E68E0C();
    LOBYTE(v19) = *(v3 + v9[26]);
    v21 = 22;
    v18 = sub_1D18F1780();
    sub_1D1E68F1C();
    LOBYTE(v19) = *(v3 + v9[27]);
    v21 = 23;
    sub_1D18F17D4();
    sub_1D1E68E5C();
    LOBYTE(v19) = *(v3 + v9[28]);
    v21 = 24;
    sub_1D1E68E5C();
    LOBYTE(v19) = 25;
    sub_1D1E68E5C();
    LOBYTE(v19) = 26;
    sub_1D1E68E5C();
    v19 = *(v3 + v9[31]);
    v21 = 27;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C9C8, &qword_1D1EA11A8);
    v17 = sub_1D1C2B028(&qword_1EC64C9D0, &qword_1EC6446F8, &protocol conformance descriptor for StaticService, MEMORY[0x1E69E6300]);
    v18 = v11;
    sub_1D1E68F1C();
    v19 = *(v3 + v9[32]);
    v21 = 28;
    sub_1D1C2B0C4();

    sub_1D1E68F1C();

    v12 = (v3 + v9[33]);
    v13 = *v12;
    v16 = v12[1];
    v19 = v13;
    v20 = v16;
    v21 = 29;
    sub_1D1C2B118();

    sub_1D1E68F1C();

    v16 = v9[34];
    LOBYTE(v19) = 30;
    type metadata accessor for StaticSoftwareUpdate(0);
    sub_1D1C2AFE0(&qword_1EC64C330, type metadata accessor for StaticSoftwareUpdate, &protocol conformance descriptor for StaticSoftwareUpdate);
    sub_1D1E68E5C();
    LOBYTE(v19) = *(v3 + v9[35]);
    v21 = 31;
    sub_1D1BC90EC();
    sub_1D1E68F1C();
    v19 = *(v3 + v9[36]);
    v21 = 32;
    sub_1D1E68F1C();
    LOBYTE(v19) = 33;
    sub_1D1E68E5C();
    LOBYTE(v19) = 34;
    sub_1D1E68E9C();
    LOBYTE(v19) = 35;
    type metadata accessor for EndpointPath(0);
    sub_1D1C2AFE0(&qword_1EC646B18, type metadata accessor for EndpointPath, &protocol conformance descriptor for EndpointPath);
    sub_1D1E68E5C();
    LOBYTE(v19) = 36;
    type metadata accessor for StaticService.AutoClimateControlConfig(0);
    sub_1D1C2AFE0(&qword_1EC64C9E8, type metadata accessor for StaticService.AutoClimateControlConfig, &protocol conformance descriptor for StaticService.AutoClimateControlConfig);
    sub_1D1E68E5C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t StaticService.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v4 = type metadata accessor for EndpointPath(0);
  v96 = *(v4 - 8);
  v97 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v85 = &v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644870, &unk_1D1EABA00);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v95 = &v83 - v7;
  v8 = type metadata accessor for StaticSoftwareUpdate(0);
  v92 = *(v8 - 8);
  v93 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v84 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644760, &unk_1D1E9E530);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v91 = &v83 - v11;
  v12 = type metadata accessor for StaticService(0);
  v98 = *(v12 - 1);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v83 - v16;
  v18 = sub_1D1E66A7C();
  v101 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v100 = &v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v94 = &v83 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v90 = &v83 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v89 = &v83 - v25;
  v26 = sub_1D1E669FC();
  v102 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v99 = &v83 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v29 = MEMORY[0x1EEE9AC00](v28 - 8);
  v88 = &v83 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v87 = &v83 - v31;
  v86 = type metadata accessor for StaticDeviceMetadata(0);
  v32 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v83 = &v83 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644620, &unk_1D1E75A00);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v36 = &v83 - v35;
  v103 = sub_1D1C2AFE0(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v104 = v18;
  sub_1D1E676EC();
  sub_1D1E678EC();
  sub_1D1E6922C();
  sub_1D1E6922C();
  sub_1D1E6922C();
  if (*(v1 + v12[9]) != 2)
  {
    sub_1D1E6922C();
  }

  sub_1D1E6922C();
  if (*(v1 + v12[10]) != 2)
  {
    sub_1D1E6922C();
  }

  sub_1D1E6922C();
  sub_1D1E676EC();
  v37 = (v1 + v12[12]);
  if (*(v37 + 8) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    v38 = *v37;
    sub_1D1E6922C();
    MEMORY[0x1D3892850](v38);
  }

  v39 = v87;
  sub_1D1741C08(v1 + v12[13], v36, &qword_1EC644620, &unk_1D1E75A00);
  if ((*(v32 + 48))(v36, 1, v86) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    v40 = v36;
    v41 = v83;
    sub_1D1C2B18C(v40, v83, type metadata accessor for StaticDeviceMetadata);
    sub_1D1E6922C();
    StaticDeviceMetadata.hash(into:)(a1);
    sub_1D1C2AF2C(v41, type metadata accessor for StaticDeviceMetadata);
  }

  sub_1D1741C08(v1 + v12[14], v39, &qword_1EC642570, &qword_1D1E6C6A0);
  v42 = v102;
  v43 = *(v102 + 6);
  if (v43(v39, 1, v26) == 1)
  {
    sub_1D1E6922C();
    v44 = v102;
  }

  else
  {
    v45 = v39;
    v46 = v99;
    (*(v42 + 4))(v99, v45, v26);
    sub_1D1E6922C();
    sub_1D1C2AFE0(&qword_1EC642A50, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
    sub_1D1E676EC();
    v44 = v102;
    (*(v102 + 1))(v46, v26);
  }

  v47 = v88;
  sub_1D1741C08(v2 + v12[15], v88, &qword_1EC642570, &qword_1D1E6C6A0);
  if (v43(v47, 1, v26) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    v48 = v99;
    (*(v44 + 4))(v99, v47, v26);
    sub_1D1E6922C();
    sub_1D1C2AFE0(&qword_1EC642A50, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
    sub_1D1E676EC();
    (*(v44 + 1))(v48, v26);
  }

  v49 = v101;
  if (*(v2 + v12[16]) == 2)
  {
    sub_1D1E6922C();
  }

  else
  {
    sub_1D1E6922C();
    sub_1D1E678EC();
  }

  sub_1D1E6922C();
  sub_1D1E6922C();
  sub_1D176D4E8(a1, *(v2 + v12[19]));
  if (*(v2 + v12[20] + 8))
  {
    sub_1D1E6922C();
    sub_1D1E678EC();
  }

  else
  {
    sub_1D1E6922C();
  }

  sub_1D1E6922C();
  sub_1D1E6922C();
  sub_1D1E6922C();
  sub_1D1E6922C();
  if (*(v2 + v12[25] + 8))
  {
    sub_1D1E6922C();
    sub_1D1E678EC();
  }

  else
  {
    sub_1D1E6922C();
  }

  v106 = *(v2 + v12[26]);
  ServiceKind.rawValue.getter();
  sub_1D1E678EC();

  v50 = *(v2 + v12[27]);
  sub_1D1E6922C();
  if (v50 != 5)
  {
    sub_1D1E678EC();
  }

  v51 = *(v2 + v12[28]);
  sub_1D1E6922C();
  if (v51 != 53)
  {
    v105 = v51;
    ServiceKind.rawValue.getter();
    sub_1D1E678EC();
  }

  v52 = v89;
  sub_1D1741C08(v2 + v12[29], v89, &qword_1EC642590, qword_1D1E71260);
  v53 = *(v49 + 48);
  v54 = v53(v52, 1, v104);
  v102 = v53;
  v99 = (v49 + 48);
  if (v54 == 1)
  {
    v55 = v49;
    sub_1D1E6922C();
  }

  else
  {
    v56 = v100;
    v57 = v104;
    (*(v49 + 32))(v100, v52, v104);
    sub_1D1E6922C();
    sub_1D1E676EC();
    v55 = v49;
    v58 = v56;
    v53 = v102;
    (*(v49 + 8))(v58, v57);
  }

  v59 = v90;
  sub_1D1741C08(v2 + v12[30], v90, &qword_1EC642590, qword_1D1E71260);
  if (v53(v59, 1, v104) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    v60 = v100;
    v61 = v104;
    (*(v55 + 32))(v100, v59, v104);
    sub_1D1E6922C();
    sub_1D1E676EC();
    (*(v55 + 8))(v60, v61);
  }

  v62 = *(v2 + v12[31]);
  MEMORY[0x1D3892850](*(v62 + 16));
  v63 = *(v62 + 16);
  if (v63)
  {
    v64 = v62 + ((*(v98 + 80) + 32) & ~*(v98 + 80));
    v65 = *(v98 + 72);
    do
    {
      sub_1D1C2AEC4(v64, v17, type metadata accessor for StaticService);
      StaticService.hash(into:)(a1);
      sub_1D1C2AF2C(v17, type metadata accessor for StaticService);
      v64 += v65;
      --v63;
    }

    while (v63);
  }

  sub_1D18563E0(a1, *(v2 + v12[32]));
  v66 = (v2 + v12[33]);
  v67 = v66[1];
  sub_1D18582DC(a1, *v66);
  sub_1D1857C7C(a1, v67);
  v68 = v91;
  sub_1D1741C08(v2 + v12[34], v91, &qword_1EC644760, &unk_1D1E9E530);
  if ((*(v92 + 48))(v68, 1, v93) == 1)
  {
    sub_1D1E6922C();
    v69 = v104;
  }

  else
  {
    v70 = v84;
    sub_1D1C2B18C(v68, v84, type metadata accessor for StaticSoftwareUpdate);
    sub_1D1E6922C();
    v69 = v104;
    sub_1D1E676EC();
    StaticSoftwareUpdate.Kind.hash(into:)(a1);
    sub_1D1C2AF2C(v70, type metadata accessor for StaticSoftwareUpdate);
  }

  MEMORY[0x1D3892850](*(v2 + v12[35]));
  v71 = *(v2 + v12[36]);
  MEMORY[0x1D3892850](*(v71 + 16));
  v72 = *(v71 + 16);
  if (v72)
  {
    v73 = v71 + ((*(v98 + 80) + 32) & ~*(v98 + 80));
    v74 = *(v98 + 72);
    do
    {
      sub_1D1C2AEC4(v73, v15, type metadata accessor for StaticService);
      StaticService.hash(into:)(a1);
      sub_1D1C2AF2C(v15, type metadata accessor for StaticService);
      v73 += v74;
      --v72;
    }

    while (v72);
  }

  v75 = v94;
  sub_1D1741C08(v2 + v12[37], v94, &qword_1EC642590, qword_1D1E71260);
  if (v102(v75, 1, v69) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    v77 = v100;
    v76 = v101;
    (*(v101 + 32))(v100, v75, v69);
    sub_1D1E6922C();
    sub_1D1E676EC();
    (*(v76 + 8))(v77, v69);
  }

  v79 = v95;
  v78 = v96;
  if (*(v2 + v12[38] + 2) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    sub_1D1E6922C();
    sub_1D1E6923C();
  }

  v80 = v97;
  sub_1D1741C08(v2 + v12[39], v79, &qword_1EC644870, &unk_1D1EABA00);
  if ((*(v78 + 48))(v79, 1, v80) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    v81 = v85;
    sub_1D1C2B18C(v79, v85, type metadata accessor for EndpointPath);
    sub_1D1E6922C();
    sub_1D1E676EC();
    MEMORY[0x1D3892890](*(v81 + *(v80 + 20)));
    sub_1D1E6923C();
    sub_1D1C2AF2C(v81, type metadata accessor for EndpointPath);
  }

  return sub_1D1C27FB4(a1);
}

uint64_t StaticService.hashValue.getter()
{
  sub_1D1E6920C();
  StaticService.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t StaticService.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v112 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C9B0, &qword_1D1EA1190);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v111 = v101 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644870, &unk_1D1EABA00);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v110 = v101 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644760, &unk_1D1E9E530);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v108 = v101 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v109 = v101 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v107 = v101 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v106 = v101 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v113 = v101 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v114 = v101 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644620, &unk_1D1E75A00);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = v101 - v20;
  v22 = sub_1D1E66A7C();
  v115 = *(v22 - 8);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = v101 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v116 = v101 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C9F0, &unk_1D1EA11B0);
  v117 = *(v27 - 8);
  v118 = v27;
  MEMORY[0x1EEE9AC00](v27);
  v29 = v101 - v28;
  v30 = type metadata accessor for StaticService(0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = v101 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = a1[3];
  v121 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v33);
  sub_1D1C2AF8C();
  v119 = v29;
  v34 = v120;
  sub_1D1E692FC();
  if (v34)
  {
    return __swift_destroy_boxed_opaque_existential_1(v121);
  }

  v104 = v25;
  v103 = v21;
  v105 = v30;
  v120 = v32;
  LOBYTE(v122) = 0;
  v35 = sub_1D1C2AFE0(&qword_1EC644B20, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
  v36 = v116;
  sub_1D1E68D7C();
  v101[1] = v35;
  v38 = *(v115 + 32);
  v39 = v120;
  v38(v120, v36, v22);
  LOBYTE(v122) = 1;
  v40 = sub_1D1E68D2C();
  v102 = v22;
  v41 = v105;
  v42 = &v39[v105[5]];
  *v42 = v40;
  v42[1] = v43;
  LOBYTE(v122) = 2;
  v101[0] = 0;
  v39[v41[6]] = sub_1D1E68D3C() & 1;
  LOBYTE(v122) = 3;
  v39[v41[7]] = sub_1D1E68D3C() & 1;
  LOBYTE(v122) = 4;
  v39[v41[8]] = sub_1D1E68D3C() & 1;
  LOBYTE(v122) = 5;
  v39[v41[9]] = sub_1D1E68C7C();
  LOBYTE(v122) = 6;
  v39[v41[10]] = sub_1D1E68C7C();
  LOBYTE(v122) = 7;
  v44 = v104;
  sub_1D1E68D7C();
  v49 = v105;
  v38(&v120[v105[11]], v44, v22);
  LOBYTE(v122) = 8;
  v50 = sub_1D1E68C9C();
  v116 = 0;
  v52 = &v120[v49[12]];
  *v52 = v50;
  v52[8] = v51 & 1;
  type metadata accessor for StaticDeviceMetadata(0);
  LOBYTE(v122) = 9;
  sub_1D1C2AFE0(&qword_1EC644670, type metadata accessor for StaticDeviceMetadata, &protocol conformance descriptor for StaticDeviceMetadata);
  v53 = v116;
  sub_1D1E68CBC();
  v116 = v53;
  if (v53)
  {
    (*(v117 + 8))(v119, v118);
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = 0;
    LODWORD(v108) = 0;
    LODWORD(v114) = 0;
    LODWORD(v113) = 0;
    LODWORD(v112) = 0;
    LODWORD(v111) = 0;
    LODWORD(v109) = 0;
    LODWORD(v110) = 0;
    LODWORD(v118) = 0;
    LODWORD(v117) = 0;
    LODWORD(v119) = 0;
    LODWORD(v107) = 1;
  }

  else
  {
    sub_1D1741A90(v103, &v120[v105[13]], &qword_1EC644620, &unk_1D1E75A00);
    sub_1D1E669FC();
    LOBYTE(v122) = 10;
    sub_1D1C2AFE0(&qword_1EC642EB8, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
    v59 = v116;
    sub_1D1E68CBC();
    v116 = v59;
    if (v59)
    {
      (*(v117 + 8))(v119, v118);
      v55 = 0;
      v56 = 0;
      v57 = 0;
      v58 = 0;
      LODWORD(v108) = 0;
      LODWORD(v114) = 0;
      LODWORD(v113) = 0;
      LODWORD(v112) = 0;
      LODWORD(v111) = 0;
      LODWORD(v109) = 0;
      LODWORD(v110) = 0;
      LODWORD(v118) = 0;
      LODWORD(v117) = 0;
      LODWORD(v119) = 0;
      LODWORD(v107) = 1;
      v54 = 1;
    }

    else
    {
      sub_1D1741A90(v114, &v120[v105[14]], &qword_1EC642570, &qword_1D1E6C6A0);
      LOBYTE(v122) = 11;
      v60 = v116;
      sub_1D1E68CBC();
      v116 = v60;
      if (v60)
      {
        (*(v117 + 8))(v119, v118);
        v56 = 0;
        v57 = 0;
        v58 = 0;
        LODWORD(v108) = 0;
        LODWORD(v114) = 0;
        LODWORD(v113) = 0;
        LODWORD(v112) = 0;
        LODWORD(v111) = 0;
        LODWORD(v109) = 0;
        LODWORD(v110) = 0;
        LODWORD(v118) = 0;
        LODWORD(v117) = 0;
        LODWORD(v119) = 0;
        LODWORD(v107) = 1;
        v54 = 1;
        v55 = 1;
      }

      else
      {
        sub_1D1741A90(v113, &v120[v105[15]], &qword_1EC642570, &qword_1D1E6C6A0);
        v123 = 12;
        sub_1D1BC925C();
        v61 = v116;
        sub_1D1E68CBC();
        v116 = v61;
        if (v61 || (v120[v105[16]] = v122, LOBYTE(v122) = 13, v62 = v116, v63 = sub_1D1E68D3C(), (v116 = v62) != 0) || (v120[v105[17]] = v63 & 1, LOBYTE(v122) = 14, v64 = v116, v65 = sub_1D1E68D3C(), (v116 = v64) != 0) || (v120[v105[18]] = v65 & 1, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6438F0, &qword_1D1E99360), v123 = 15, sub_1D1C2B1F4(&qword_1EC646B78, &qword_1EC644B20, MEMORY[0x1E69695D0], MEMORY[0x1E69E6510]), v66 = v116, sub_1D1E68D7C(), (v116 = v66) != 0))
        {
          (*(v117 + 8))(v119, v118);
          v57 = 0;
          v58 = 0;
          LODWORD(v108) = 0;
          LODWORD(v114) = 0;
          LODWORD(v113) = 0;
          LODWORD(v112) = 0;
          LODWORD(v111) = 0;
          LODWORD(v109) = 0;
          LODWORD(v110) = 0;
          LODWORD(v118) = 0;
          LODWORD(v117) = 0;
          LODWORD(v119) = 0;
          LODWORD(v107) = 1;
          v54 = 1;
          v55 = 1;
          v56 = 1;
        }

        else
        {
          *&v120[v105[19]] = v122;
          LOBYTE(v122) = 16;
          v67 = v116;
          v68 = sub_1D1E68C6C();
          v116 = v67;
          if (v67)
          {
            (*(v117 + 8))(v119, v118);
            v58 = 0;
            LODWORD(v108) = 0;
            LODWORD(v114) = 0;
            LODWORD(v113) = 0;
            LODWORD(v112) = 0;
            LODWORD(v111) = 0;
            LODWORD(v109) = 0;
            LODWORD(v110) = 0;
            LODWORD(v118) = 0;
            LODWORD(v117) = 0;
            LODWORD(v119) = 0;
            LODWORD(v107) = 1;
            v54 = 1;
            v55 = 1;
            v56 = 1;
            v57 = 1;
          }

          else
          {
            v70 = &v120[v105[20]];
            *v70 = v68;
            v70[1] = v69;
            LOBYTE(v122) = 17;
            v71 = v116;
            v72 = sub_1D1E68D3C();
            v116 = v71;
            if (v71 || (v120[v105[21]] = v72 & 1, LOBYTE(v122) = 18, v73 = v116, v74 = sub_1D1E68D3C(), (v116 = v73) != 0) || (v120[v105[22]] = v74 & 1, LOBYTE(v122) = 19, v75 = v116, v76 = sub_1D1E68D3C(), (v116 = v75) != 0) || (v120[v105[23]] = v76 & 1, LOBYTE(v122) = 20, v77 = v116, v78 = sub_1D1E68D3C(), (v116 = v77) != 0) || (v120[v105[24]] = v78 & 1, LOBYTE(v122) = 21, v79 = v116, v80 = sub_1D1E68C6C(), (v116 = v79) != 0))
            {
              (*(v117 + 8))(v119, v118);
              LODWORD(v108) = 0;
              LODWORD(v114) = 0;
              LODWORD(v113) = 0;
              LODWORD(v112) = 0;
              LODWORD(v111) = 0;
              LODWORD(v109) = 0;
              LODWORD(v110) = 0;
              LODWORD(v118) = 0;
              LODWORD(v117) = 0;
              LODWORD(v119) = 0;
              LODWORD(v107) = 1;
              v54 = 1;
              v55 = 1;
              v56 = 1;
              v57 = 1;
              v58 = 1;
            }

            else
            {
              v82 = &v120[v105[25]];
              *v82 = v80;
              v82[1] = v81;
              v123 = 22;
              sub_1D18F1978();
              v83 = v116;
              sub_1D1E68D7C();
              v116 = v83;
              if (v83 || (v120[v105[26]] = v122, v123 = 23, sub_1D18F19CC(), v84 = v116, sub_1D1E68CBC(), (v116 = v84) != 0) || (v120[v105[27]] = v122, v123 = 24, v85 = v116, sub_1D1E68CBC(), (v116 = v85) != 0) || (v120[v105[28]] = v122, LOBYTE(v122) = 25, v86 = v116, sub_1D1E68CBC(), (v116 = v86) != 0))
              {
                (*(v117 + 8))(v119, v118);
                LODWORD(v114) = 0;
                LODWORD(v113) = 0;
                LODWORD(v112) = 0;
                LODWORD(v111) = 0;
                LODWORD(v109) = 0;
                LODWORD(v110) = 0;
                LODWORD(v118) = 0;
                LODWORD(v117) = 0;
                LODWORD(v119) = 0;
                LODWORD(v107) = 1;
                v54 = 1;
                v55 = 1;
                v56 = 1;
                v57 = 1;
                v58 = 1;
                LODWORD(v108) = 1;
              }

              else
              {
                sub_1D1741A90(v106, &v120[v105[29]], &qword_1EC642590, qword_1D1E71260);
                LOBYTE(v122) = 26;
                v87 = v116;
                sub_1D1E68CBC();
                v116 = v87;
                if (v87)
                {
                  (*(v117 + 8))(v119, v118);
                  LODWORD(v113) = 0;
                  LODWORD(v112) = 0;
                  LODWORD(v111) = 0;
                  LODWORD(v109) = 0;
                  LODWORD(v110) = 0;
                  LODWORD(v118) = 0;
                  LODWORD(v117) = 0;
                  LODWORD(v119) = 0;
                  LODWORD(v107) = 1;
                  v54 = 1;
                  v55 = 1;
                  v56 = 1;
                  v57 = 1;
                  v58 = 1;
                  LODWORD(v108) = 1;
                  LODWORD(v114) = 1;
                }

                else
                {
                  sub_1D1741A90(v107, &v120[v105[30]], &qword_1EC642590, qword_1D1E71260);
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C9C8, &qword_1D1EA11A8);
                  v123 = 27;
                  sub_1D1C2B028(&qword_1EC64C9F8, &qword_1EC644750, &protocol conformance descriptor for StaticService, MEMORY[0x1E69E6330]);
                  v88 = v116;
                  sub_1D1E68D7C();
                  v116 = v88;
                  if (v88)
                  {
                    (*(v117 + 8))(v119, v118);
                    LODWORD(v112) = 0;
                    LODWORD(v111) = 0;
                    LODWORD(v109) = 0;
                    LODWORD(v110) = 0;
                    LODWORD(v118) = 0;
                    LODWORD(v117) = 0;
                    LODWORD(v119) = 0;
                    LODWORD(v107) = 1;
                    v54 = 1;
                    v55 = 1;
                    v56 = 1;
                    v57 = 1;
                    v58 = 1;
                    LODWORD(v108) = 1;
                    LODWORD(v114) = 1;
                    LODWORD(v113) = 1;
                  }

                  else
                  {
                    *&v120[v105[31]] = v122;
                    v123 = 28;
                    sub_1D1C2B290();
                    v89 = v116;
                    sub_1D1E68D7C();
                    v116 = v89;
                    if (v89)
                    {
                      (*(v117 + 8))(v119, v118);
                      LODWORD(v111) = 0;
                      LODWORD(v109) = 0;
                      LODWORD(v110) = 0;
                      LODWORD(v118) = 0;
                      LODWORD(v117) = 0;
                      LODWORD(v119) = 0;
                      LODWORD(v107) = 1;
                      v54 = 1;
                      v55 = 1;
                      v56 = 1;
                      v57 = 1;
                      v58 = 1;
                      LODWORD(v108) = 1;
                      LODWORD(v114) = 1;
                      LODWORD(v113) = 1;
                      LODWORD(v112) = 1;
                    }

                    else
                    {
                      *&v120[v105[32]] = v122;
                      v123 = 29;
                      sub_1D1C2B2E4();
                      v90 = v116;
                      sub_1D1E68D7C();
                      v116 = v90;
                      if (v90)
                      {
                        (*(v117 + 8))(v119, v118);
                        LODWORD(v109) = 0;
                        LODWORD(v110) = 0;
                        LODWORD(v118) = 0;
                        LODWORD(v117) = 0;
                        LODWORD(v119) = 0;
                        LODWORD(v107) = 1;
                        v54 = 1;
                        v55 = 1;
                        v56 = 1;
                        v57 = 1;
                        v58 = 1;
                        LODWORD(v108) = 1;
                        LODWORD(v114) = 1;
                        LODWORD(v113) = 1;
                        LODWORD(v112) = 1;
                        LODWORD(v111) = 1;
                      }

                      else
                      {
                        *&v120[v105[33]] = v122;
                        type metadata accessor for StaticSoftwareUpdate(0);
                        LOBYTE(v122) = 30;
                        sub_1D1C2AFE0(&qword_1EC64C370, type metadata accessor for StaticSoftwareUpdate, &protocol conformance descriptor for StaticSoftwareUpdate);
                        v91 = v116;
                        sub_1D1E68CBC();
                        v116 = v91;
                        if (v91)
                        {
                          (*(v117 + 8))(v119, v118);
                          LODWORD(v110) = 0;
                          LODWORD(v118) = 0;
                          LODWORD(v117) = 0;
                          LODWORD(v119) = 0;
                          LODWORD(v107) = 1;
                          v54 = 1;
                          v55 = 1;
                          v56 = 1;
                          v57 = 1;
                          v58 = 1;
                          LODWORD(v108) = 1;
                          LODWORD(v114) = 1;
                          LODWORD(v113) = 1;
                          LODWORD(v112) = 1;
                          LODWORD(v111) = 1;
                          LODWORD(v109) = 1;
                        }

                        else
                        {
                          sub_1D1741A90(v108, &v120[v105[34]], &qword_1EC644760, &unk_1D1E9E530);
                          v123 = 31;
                          sub_1D1BC934C();
                          v92 = v116;
                          sub_1D1E68D7C();
                          v116 = v92;
                          if (v92 || (v120[v105[35]] = v122, v123 = 32, v93 = v116, sub_1D1E68D7C(), (v116 = v93) != 0))
                          {
                            (*(v117 + 8))(v119, v118);
                            LODWORD(v118) = 0;
                            LODWORD(v117) = 0;
                            LODWORD(v119) = 0;
                            LODWORD(v107) = 1;
                            v54 = 1;
                            v55 = 1;
                            v56 = 1;
                            v57 = 1;
                            v58 = 1;
                            LODWORD(v108) = 1;
                            LODWORD(v114) = 1;
                            LODWORD(v113) = 1;
                            LODWORD(v112) = 1;
                            LODWORD(v111) = 1;
                            LODWORD(v109) = 1;
                            LODWORD(v110) = 1;
                          }

                          else
                          {
                            *&v120[v105[36]] = v122;
                            LOBYTE(v122) = 33;
                            v94 = v116;
                            sub_1D1E68CBC();
                            v116 = v94;
                            if (v94)
                            {
                              (*(v117 + 8))(v119, v118);
                              LODWORD(v117) = 0;
                              LODWORD(v119) = 0;
                              LODWORD(v107) = 1;
                              v54 = 1;
                              v55 = 1;
                              v56 = 1;
                              v57 = 1;
                              v58 = 1;
                              LODWORD(v108) = 1;
                              LODWORD(v114) = 1;
                              LODWORD(v113) = 1;
                              LODWORD(v112) = 1;
                              LODWORD(v111) = 1;
                              LODWORD(v109) = 1;
                              LODWORD(v110) = 1;
                              LODWORD(v118) = 1;
                            }

                            else
                            {
                              sub_1D1741A90(v109, &v120[v105[37]], &qword_1EC642590, qword_1D1E71260);
                              LOBYTE(v122) = 34;
                              v95 = v116;
                              v96 = sub_1D1E68CFC();
                              v116 = v95;
                              if (v95 || (v97 = &v120[v105[38]], *v97 = v96, v97[2] = BYTE2(v96) & 1, type metadata accessor for EndpointPath(0), LOBYTE(v122) = 35, sub_1D1C2AFE0(&qword_1EC646B80, type metadata accessor for EndpointPath, &protocol conformance descriptor for EndpointPath), v98 = v116, sub_1D1E68CBC(), (v116 = v98) != 0))
                              {
                                (*(v117 + 8))(v119, v118);
                                LODWORD(v119) = 0;
                                LODWORD(v107) = 1;
                                v54 = 1;
                                v55 = 1;
                                v56 = 1;
                                v57 = 1;
                                v58 = 1;
                                LODWORD(v108) = 1;
                                LODWORD(v114) = 1;
                                LODWORD(v113) = 1;
                                LODWORD(v112) = 1;
                                LODWORD(v111) = 1;
                                LODWORD(v109) = 1;
                                LODWORD(v110) = 1;
                                LODWORD(v118) = 1;
                                LODWORD(v117) = 1;
                              }

                              else
                              {
                                sub_1D1741A90(v110, &v120[v105[39]], &qword_1EC644870, &unk_1D1EABA00);
                                type metadata accessor for StaticService.AutoClimateControlConfig(0);
                                LOBYTE(v122) = 36;
                                sub_1D1C2AFE0(&qword_1EC64CA10, type metadata accessor for StaticService.AutoClimateControlConfig, &protocol conformance descriptor for StaticService.AutoClimateControlConfig);
                                v99 = v116;
                                sub_1D1E68CBC();
                                v116 = v99;
                                if (!v99)
                                {
                                  (*(v117 + 8))(v119, v118);
                                  v100 = v120;
                                  sub_1D1741A90(v111, &v120[v105[40]], &qword_1EC64C9B0, &qword_1D1EA1190);
                                  sub_1D1C2AEC4(v100, v112, type metadata accessor for StaticService);
                                  __swift_destroy_boxed_opaque_existential_1(v121);
                                  return sub_1D1C2AF2C(v100, type metadata accessor for StaticService);
                                }

                                (*(v117 + 8))(v119, v118);
                                LODWORD(v107) = 1;
                                v54 = 1;
                                v55 = 1;
                                v56 = 1;
                                v57 = 1;
                                v58 = 1;
                                LODWORD(v108) = 1;
                                LODWORD(v114) = 1;
                                LODWORD(v113) = 1;
                                LODWORD(v112) = 1;
                                LODWORD(v111) = 1;
                                LODWORD(v109) = 1;
                                LODWORD(v110) = 1;
                                LODWORD(v118) = 1;
                                LODWORD(v117) = 1;
                                LODWORD(v119) = 1;
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v45 = v101[0];
  __swift_destroy_boxed_opaque_existential_1(v121);
  v46 = *(v115 + 8);
  result = v46(v120, v102);
  if (v45)
  {
    if (v107)
    {
      goto LABEL_6;
    }
  }

  else
  {

    if (v107)
    {
LABEL_6:
      v47 = v105;
      v48 = v120;
      result = v46(&v120[v105[11]], v102);
      if ((v54 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_24;
    }
  }

  v48 = v120;
  v47 = v105;
  if (!v54)
  {
LABEL_7:
    if (v55)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  result = sub_1D1741A30(&v48[v47[13]], &qword_1EC644620, &unk_1D1E75A00);
  if (v55)
  {
LABEL_8:
    result = sub_1D1741A30(&v48[v47[14]], &qword_1EC642570, &qword_1D1E6C6A0);
    if ((v56 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  if (!v56)
  {
LABEL_9:
    if (v57)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  result = sub_1D1741A30(&v48[v47[15]], &qword_1EC642570, &qword_1D1E6C6A0);
  if (v57)
  {
LABEL_10:

    if ((v58 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  if (!v58)
  {
LABEL_11:
    if (v108)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:

  if (v108)
  {
LABEL_12:

    if ((v114 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  if (!v114)
  {
LABEL_13:
    if (v113)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  result = sub_1D1741A30(&v48[v47[29]], &qword_1EC642590, qword_1D1E71260);
  if (v113)
  {
LABEL_14:
    result = sub_1D1741A30(&v48[v47[30]], &qword_1EC642590, qword_1D1E71260);
    if ((v112 & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_32;
  }

LABEL_31:
  if (!v112)
  {
LABEL_15:
    if (v111)
    {
      goto LABEL_16;
    }

    goto LABEL_33;
  }

LABEL_32:

  if (v111)
  {
LABEL_16:

    if ((v109 & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_34;
  }

LABEL_33:
  if (!v109)
  {
LABEL_17:
    if (v110)
    {
      goto LABEL_18;
    }

    goto LABEL_35;
  }

LABEL_34:

  if (v110)
  {
LABEL_18:
    result = sub_1D1741A30(&v48[v47[34]], &qword_1EC644760, &unk_1D1E9E530);
    if ((v118 & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_36;
  }

LABEL_35:
  if (!v118)
  {
LABEL_19:
    if (v117)
    {
      goto LABEL_20;
    }

LABEL_37:
    if (!v119)
    {
      return result;
    }

    return sub_1D1741A30(&v48[v47[39]], &qword_1EC644870, &unk_1D1EABA00);
  }

LABEL_36:

  if ((v117 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_20:
  result = sub_1D1741A30(&v48[v47[37]], &qword_1EC642590, qword_1D1E71260);
  if ((v119 & 1) == 0)
  {
    return result;
  }

  return sub_1D1741A30(&v48[v47[39]], &qword_1EC644870, &unk_1D1EABA00);
}

uint64_t sub_1D1C19F08()
{
  sub_1D1E6920C();
  StaticService.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D1C19F4C(uint64_t a1)
{
  sub_1D1E6920C();
  StaticService.hash(into:)(v2);
  return sub_1D1E6926C();
}

uint64_t StaticService.foregroundColor.getter()
{
  if (StaticService.isAlarmingSensorDetected.getter())
  {
    return sub_1D1E6733C();
  }

  type metadata accessor for StaticService(0);
  return ServiceKind.foregroundColor.getter();
}

Swift::Int StaticService.isAlarmingSensorDetected.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticService(0) + 128));
  v4 = v1;
  v3 = 74;
  v5 = StaticCharacteristicsBag.int(for:)(&v3);
  if (v5.is_nil || v5.value != 1)
  {
    v4 = v1;
    v3 = 127;
    v5 = StaticCharacteristicsBag.int(for:)(&v3);
    if (v5.is_nil || v5.value != 1)
    {
      v4 = v1;
      v3 = 21;
      v5 = StaticCharacteristicsBag.int(for:)(&v3);
      if (v5.is_nil || v5.value != 1)
      {
        v4 = v1;
        v3 = 18;
        v5 = StaticCharacteristicsBag.int(for:)(&v3);
        v5.value = !v5.is_nil && v5.value == 1;
      }
    }
  }

  return v5.value;
}

uint64_t StaticService.serviceKinds.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436B8, &unk_1D1E71E00);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1D1E739C0;
  *(v1 + 32) = *(v0 + *(type metadata accessor for StaticService(0) + 104));
  return v1;
}

uint64_t StaticService.primaryServiceKind.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for StaticService(0);
  *a1 = *(v1 + *(result + 104));
  return result;
}

uint64_t sub_1D1C1A17C()
{
  if (StaticService.isAlarmingSensorDetected.getter())
  {
    return sub_1D1E6733C();
  }

  else
  {
    return ServiceKind.foregroundColor.getter();
  }
}

double sub_1D1C1A1D8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436B8, &unk_1D1E71E00);
  v3 = swift_allocObject();
  *&result = 1;
  *(v3 + 16) = xmmword_1D1E739C0;
  *(v3 + 32) = *(v1 + *(a1 + 104));
  return result;
}

uint64_t sub_1D1C1A240@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(v2 + *(result + 112));
  if (v3 == 53)
  {
    LOBYTE(v3) = *(v2 + *(result + 104));
  }

  *a2 = v3;
  return result;
}

uint64_t sub_1D1C1A26C(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 80));

  return v2;
}

uint64_t sub_1D1C1A2AC(uint64_t a1)
{
  *(v1 + 48) = 2;
  *(v1 + 16) = xmmword_1D1E88490;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  v3 = swift_task_alloc();
  *(v1 + 56) = v3;
  *v3 = v1;
  v3[1] = sub_1D186E3E4;

  return StaticService.toggle(options:context:)(a1, (v1 + 48), (v1 + 16));
}

uint64_t sub_1D1C1A378(char a1)
{
  *(v1 + 32) = a1;
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1D1C1A408;

  return StaticService.service.getter();
}

uint64_t sub_1D1C1A408(uint64_t a1)
{
  *(*v1 + 24) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1C1A508, 0, 0);
}

uint64_t sub_1D1C1A508()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 32);
    v3 = v1;
    HMService.shouldShowInDashboard.setter(v2);
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1D1C1A58C(char a1)
{
  *(v1 + 32) = a1;
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1D1C1A61C;

  return StaticService.service.getter();
}

uint64_t sub_1D1C1A61C(uint64_t a1)
{
  *(*v1 + 24) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1C1A71C, 0, 0);
}

uint64_t sub_1D1C1A71C()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 32);
    v3 = v1;
    HMService.contributesToHomeStatus.setter(v2);
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t StaticService.set(includeInStatus:)(char a1)
{
  *(v1 + 32) = a1;
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1D1C1A830;

  return StaticService.service.getter();
}

uint64_t sub_1D1C1A830(uint64_t a1)
{
  *(*v1 + 24) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1C1A930, 0, 0);
}

uint64_t sub_1D1C1A930()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 32);
    v3 = v1;
    HMService.contributesToHomeStatus.setter(v2);
  }

  v4 = *(v0 + 8);

  return v4();
}

void *sub_1D1C1AA10()
{
  result = sub_1D179ACDC(&unk_1F4D5ED28);
  off_1EE07AB38 = result;
  return result;
}

uint64_t StaticService.staticCharacteristic(for:)@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for StaticService(0) + 128));

  sub_1D1747C74(sub_1D1C2B338, v3, a1);
}

Swift::Bool_optional __swiftcall StaticService.BOOL(for:)(HomeDataModel::CharacteristicKind a1)
{
  v2 = *a1;
  v5 = *(v1 + *(type metadata accessor for StaticService(0) + 128));
  v4 = v2;
  return sub_1D1CE4920(&v4);
}

Swift::Int_optional __swiftcall StaticService.int(for:)(HomeDataModel::CharacteristicKind a1)
{
  v2 = *a1;
  v8 = *(v1 + *(type metadata accessor for StaticService(0) + 128));
  v7 = v2;

  v9 = StaticCharacteristicsBag.int(for:)(&v7);
  value = v9.value;
  is_nil = v9.is_nil;

  v5 = is_nil;
  v6 = value;
  result.value = v6;
  result.is_nil = v5;
  return result;
}

Swift::Double_optional __swiftcall StaticService.double(for:)(HomeDataModel::CharacteristicKind a1)
{
  v2 = *a1;
  v6 = *(v1 + *(type metadata accessor for StaticService(0) + 128));
  v5 = v2;
  v4 = sub_1D1CE53A4(&v5);
  result.value = v4;
  result.is_nil = v3;
  return result;
}

Swift::String_optional __swiftcall StaticService.string(for:)(HomeDataModel::CharacteristicKind a1)
{
  v1 = sub_1D1C1AC10(a1, StaticCharacteristicsBag.string(for:));
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

uint64_t sub_1D1C1AC10(char *a1, uint64_t (*a2)(char *))
{
  v4 = *a1;
  v8 = *(v2 + *(type metadata accessor for StaticService(0) + 128));
  v7 = v4;

  v5 = a2(&v7);

  return v5;
}

uint64_t sub_1D1C1B098(uint64_t a1)
{
  v3 = type metadata accessor for StaticCharacteristic(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + *(type metadata accessor for StaticService(0) + 128));
  if (!*(v7 + 16))
  {
    return 0;
  }

  v8 = sub_1D171D140(a1);
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  sub_1D1C2AEC4(*(v7 + 56) + *(v4 + 72) * v8, v6, type metadata accessor for StaticCharacteristic);
  v10 = &v6[*(v3 + 24)];
  if (v10[16] == 8)
  {
    v11 = *v10;
  }

  else
  {
    v11 = 0;
  }

  sub_1D1C2AF2C(v6, type metadata accessor for StaticCharacteristic);
  return v11;
}

uint64_t StaticService.roomId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for StaticService(0);
  sub_1D17721A0(*(v1 + *(v6 + 76)), v5);
  v7 = sub_1D1E66A7C();
  v8 = *(v7 - 8);
  result = (*(v8 + 48))(v5, 1, v7);
  if (result != 1)
  {
    return (*(v8 + 32))(a1, v5, v7);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1C1B34C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11 - v6;
  sub_1D17721A0(*(v2 + *(a1 + 76)), &v11 - v6);
  v8 = sub_1D1E66A7C();
  v9 = *(v8 - 8);
  result = (*(v9 + 48))(v7, 1, v8);
  if (result != 1)
  {
    return (*(v9 + 32))(a2, v7, v8);
  }

  __break(1u);
  return result;
}

uint64_t static StaticService.< infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for StaticService(0) + 24);
  if (*(a2 + v4))
  {
    return 0;
  }

  if ((*(a1 + v4) & 1) == 0)
  {

    JUMPOUT(0x1D3890070);
  }

  return 1;
}

uint64_t sub_1D1C1B4CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 24);
  if (*(a2 + v3))
  {
    return 0;
  }

  if (*(a1 + v3) != 1)
  {
    JUMPOUT(0x1D3890070);
  }

  return 1;
}

uint64_t sub_1D1C1B4F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 24);
  if (*(a1 + v3))
  {
    return 1;
  }

  if (*(a2 + v3) == 1)
  {
    return 0;
  }

  return (MEMORY[0x1D3890070](a2, a1) ^ 1) & 1;
}

uint64_t sub_1D1C1B554(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 24);
  if (*(a2 + v3))
  {
    return 1;
  }

  if (*(a1 + v3) == 1)
  {
    return 0;
  }

  return (MEMORY[0x1D3890070](a1, a2) ^ 1) & 1;
}

uint64_t sub_1D1C1B5A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 24);
  if (*(a1 + v3))
  {
    return 0;
  }

  if (*(a2 + v3) != 1)
  {
    JUMPOUT(0x1D3890070);
  }

  return 1;
}

uint64_t Collection<>.staticCharacteristic(for:)@<X0>(uint64_t a4@<X8>)
{
  v5 = type metadata accessor for StaticCharacteristic(0);
  v6 = sub_1D1E67A4C();
  if (*(v6 + 16))
  {
    v7 = *(v5 - 8);
    sub_1D1C2AEC4(v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), a4, type metadata accessor for StaticCharacteristic);

    v8 = 0;
  }

  else
  {

    v7 = *(v5 - 8);
    v8 = 1;
  }

  return (*(v7 + 56))(a4, v8, 1, v5);
}

uint64_t sub_1D1C1B714@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for StaticService(0) + 128));

  sub_1D1747C74(sub_1D1C2D7A0, v3, a2);
}

uint64_t sub_1D1C1B7A4@<X0>(uint64_t *a1@<X0>, void **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v66 = a7;
  v65 = a6;
  v63 = a4;
  v64 = a5;
  v70 = a8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436E8, &unk_1D1E71E40);
  v72 = *(v11 - 8);
  v73 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v63 - v12;
  v74 = sub_1D1E66A7C();
  v68 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v15 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E30, &unk_1D1E91250);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v63 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436C8, &unk_1D1E97C40);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v63 - v20;
  v71 = *a1;
  v22 = *a2;
  sub_1D1741C08(a3, v18, &unk_1EC649E30, &unk_1D1E91250);
  v23 = type metadata accessor for StateSnapshot(0);
  v24 = (*(*(v23 - 8) + 48))(v18, 1, v23);
  v69 = v21;
  if (v24 == 1)
  {
    sub_1D1741A30(v18, &unk_1EC649E30, &unk_1D1E91250);
    v25 = type metadata accessor for StaticAccessory(0);
    (*(*(v25 - 8) + 56))(v21, 1, 1, v25);
LABEL_7:
    v29 = v70;
    goto LABEL_8;
  }

  v26 = *&v18[*(v23 + 32)];

  sub_1D1C2AF2C(v18, type metadata accessor for StateSnapshot);
  v27 = [v22 uniqueIdentifier];
  sub_1D1E66A5C();

  if (!*(v26 + 16))
  {

    (*(v68 + 8))(v15, v74);
    v37 = type metadata accessor for StaticAccessory(0);
    v21 = v69;
    (*(*(v37 - 8) + 56))(v69, 1, 1, v37);
    goto LABEL_7;
  }

  v28 = sub_1D1742188();
  v29 = v70;
  if (v30)
  {
    v31 = v28;
    v32 = v70;
    v33 = *(v26 + 56);
    v34 = type metadata accessor for StaticAccessory(0);
    v35 = *(v34 - 8);
    v36 = v33 + *(v35 + 72) * v31;
    v29 = v32;
    v21 = v69;
    sub_1D1C2AEC4(v36, v69, type metadata accessor for StaticAccessory);
    (*(v68 + 8))(v15, v74);

    (*(v35 + 56))(v21, 0, 1, v34);
  }

  else
  {

    (*(v68 + 8))(v15, v74);
    v62 = type metadata accessor for StaticAccessory(0);
    v21 = v69;
    (*(*(v62 - 8) + 56))(v69, 1, 1, v62);
  }

LABEL_8:
  v39 = v66;
  v38 = v67;

  v40 = [v22 services];
  sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
  v41 = sub_1D1E67C1C();

  MEMORY[0x1EEE9AC00](v42);
  *(&v63 - 64) = 1;
  v44 = v63;
  v43 = v64;
  *(&v63 - 7) = v22;
  *(&v63 - 6) = v44;
  *(&v63 - 5) = v43;
  *(&v63 - 32) = v65;
  *(&v63 - 3) = v21;
  *(&v63 - 2) = v39;
  v45 = sub_1D17893E4(sub_1D1C094F4, (&v63 - 10), v41);

  v46 = v45[2];
  if (v46)
  {
    v67 = v38;
    v75 = MEMORY[0x1E69E7CC0];
    sub_1D178D2D8(0, v46, 0);
    v47 = v75;
    v48 = *(type metadata accessor for StaticService(0) - 8);
    v49 = *(v48 + 80);
    v66 = v45;
    v50 = v45 + ((v49 + 32) & ~v49);
    v51 = *(v48 + 72);
    v52 = (v68 + 16);
    do
    {
      v53 = *(v73 + 48);
      sub_1D1C2AEC4(v50, &v13[v53], type metadata accessor for StaticService);
      (*v52)(v13, &v13[v53], v74);
      v75 = v47;
      v55 = *(v47 + 16);
      v54 = *(v47 + 24);
      if (v55 >= v54 >> 1)
      {
        sub_1D178D2D8((v54 > 1), v55 + 1, 1);
        v47 = v75;
      }

      *(v47 + 16) = v55 + 1;
      sub_1D1741A90(v13, v47 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v55, &qword_1EC6436E8, &unk_1D1E71E40);
      v50 += v51;
      --v46;
    }

    while (v46);

    v21 = v69;
    v29 = v70;
    v38 = v67;
    if (*(v47 + 16))
    {
      goto LABEL_14;
    }
  }

  else
  {

    v47 = MEMORY[0x1E69E7CC0];
    if (*(MEMORY[0x1E69E7CC0] + 16))
    {
LABEL_14:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AB8, &qword_1D1E7E7A0);
      v56 = sub_1D1E68BCC();
      goto LABEL_17;
    }
  }

  v56 = MEMORY[0x1E69E7CC8];
LABEL_17:
  v75 = v56;
  sub_1D1CBFC40(v47, 1, &v75);

  if (v38)
  {

    __break(1u);
  }

  else
  {
    v57 = v75;
    v58 = v71;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v75 = v58;
    sub_1D1C2CC84(v57, sub_1D1CB5348, 0, isUniquelyReferenced_nonNull_native, &v75);

    v60 = v75;
    result = sub_1D1741A30(v21, &qword_1EC6436C8, &unk_1D1E97C40);
    *v29 = v60;
  }

  return result;
}

uint64_t sub_1D1C1BF94@<X0>(id *a1@<X0>, char a2@<W1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, unsigned int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v146 = a5;
  v147 = a8;
  v145 = a7;
  v144 = a6;
  v143 = a4;
  v148 = a3;
  v139 = a9;
  v11 = sub_1D1E66A7C();
  v134 = *(v11 - 8);
  v135 = v11;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v128 = &v125 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v126 = &v125 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436C8, &unk_1D1E97C40);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v138 = &v125 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v125 - v18;
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  v21 = MEMORY[0x1EEE9AC00](updated - 8);
  v142 = &v125 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v137 = &v125 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  v25 = MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = &v125 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v25);
  v141 = &v125 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v127 = &v125 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v136 = &v125 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v36 = &v125 - v35;
  MEMORY[0x1EEE9AC00](v34);
  v140 = &v125 - v37;
  v150 = *a1;
  if ((a2 & 1) == 0)
  {
    goto LABEL_8;
  }

  v38 = v19;
  v39 = v27;
  if (qword_1EE07AB40 != -1)
  {
    swift_once();
  }

  v40 = qword_1EE081448;
  v41 = [v150 serviceType];
  v42 = sub_1D1E6781C();
  v44 = v43;

  v45._countAndFlagsBits = v42;
  v45._object = v44;
  ServiceKind.init(rawValue:)(v45);
  v46 = v154 == 53 ? 0 : v154;
  v27 = v39;
  v19 = v38;
  if ((sub_1D171951C(v46, v40) & 1) == 0)
  {
    v81 = type metadata accessor for StaticService(0);
    return (*(*(v81 - 8) + 56))(v139, 1, 1, v81);
  }

  else
  {
LABEL_8:
    v133 = v36;
    v47 = [v148 services];
    v149 = sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
    v48 = sub_1D1E67C1C();

    v154 = MEMORY[0x1E69E7CC0];
    if (v48 >> 62)
    {
      goto LABEL_56;
    }

    for (i = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D1E6873C())
    {
      v50 = v150;
      v132 = v27;
      if (!i)
      {
        break;
      }

      v51 = 0;
      v151 = v48 & 0xC000000000000001;
      v27 = (v48 & 0xFFFFFFFFFFFFFF8);
      while (1)
      {
        if (v151)
        {
          v52 = MEMORY[0x1D3891EF0](v51, v48);
        }

        else
        {
          if (v51 >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_53;
          }

          v52 = *(v48 + 8 * v51 + 32);
        }

        v53 = v52;
        v54 = v51 + 1;
        if (__OFADD__(v51, 1))
        {
          break;
        }

        v55 = [v50 linkedServices];
        if (v55)
        {
          v56 = v55;
          v57 = sub_1D1E67C1C();

          v153 = v53;
          MEMORY[0x1EEE9AC00](v58);
          v123 = &v153;
          v59 = v152;
          LOBYTE(v56) = sub_1D18B8754(sub_1D1C2D638, (&v125 - 4), v57);
          v152 = v59;

          if (v56)
          {
            sub_1D1E6896C();
            sub_1D1E689AC();
            sub_1D1E689BC();
            sub_1D1E6897C();
          }

          else
          {
          }

          v50 = v150;
        }

        else
        {
        }

        ++v51;
        if (v54 == i)
        {
          v60 = v154;
          goto LABEL_26;
        }
      }

      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      ;
    }

    v60 = MEMORY[0x1E69E7CC0];
LABEL_26:

    MEMORY[0x1EEE9AC00](v61);
    v62 = v143;
    v64 = v145;
    v63 = v146;
    *(&v125 - 6) = v143;
    *(&v125 - 5) = v63;
    v65 = v147;
    v66 = v148;
    *(&v125 - 4) = v148;
    v67 = v144;
    *(&v125 - 24) = v144;
    v123 = v64;
    v124 = v65;
    v68 = v152;
    v130 = sub_1D17893E4(sub_1D1C2D654, (&v125 - 8), v60);
    v131 = v68;

    v48 = sub_1D1C20678(v150, v63, v66, v62, v67, v64, v65);
    v69 = [v66 services];
    v70 = sub_1D1E67C1C();

    v129 = v48;
    if (v70 >> 62)
    {
      v27 = sub_1D1E6873C();
      if (v27)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v27 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v27)
      {
LABEL_28:
        v71 = 0;
        v151 = v70 & 0xFFFFFFFFFFFFFF8;
        v152 = v70 & 0xC000000000000001;
        while (1)
        {
          if (v152)
          {
            v72 = MEMORY[0x1D3891EF0](v71, v70);
          }

          else
          {
            if (v71 >= *(v151 + 16))
            {
              goto LABEL_55;
            }

            v72 = *(v70 + 8 * v71 + 32);
          }

          v73 = v72;
          v48 = v71 + 1;
          if (__OFADD__(v71, 1))
          {
            goto LABEL_54;
          }

          v74 = [v72 serviceType];
          v75 = sub_1D1E6781C();
          v77 = v76;

          if (v75 == sub_1D1E6781C() && v77 == v78)
          {
            break;
          }

          v80 = sub_1D1E6904C();

          if (v80)
          {
            goto LABEL_43;
          }

          ++v71;
          if (v48 == v27)
          {
            goto LABEL_58;
          }
        }

LABEL_43:

        sub_1D1C2AEC4(v143, v137, type metadata accessor for StateSnapshot.UpdateType);
        LOBYTE(v154) = v144;
        v83 = type metadata accessor for StaticService(0);
        v84 = *(v83 - 8);
        v85 = *(v84 + 56);
        v85(v136, 1, 1, v83);
        v86 = v125;
        sub_1D1741C08(v145, v125, &qword_1EC6436C8, &unk_1D1E97C40);
        v87 = type metadata accessor for StaticAccessory(0);
        v88 = (*(*(v87 - 8) + 48))(v86, 1, v87);
        v89 = v126;
        if (v88 == 1)
        {
          sub_1D1741A30(v86, &qword_1EC6436C8, &unk_1D1E97C40);
        }

        else
        {
          v90 = *(v86 + *(v87 + 80));

          sub_1D1C2AF2C(v86, type metadata accessor for StaticAccessory);
          v91 = [v73 uniqueIdentifier];
          sub_1D1E66A5C();

          if (*(v90 + 16))
          {
            v92 = sub_1D1742188();
            v93 = v133;
            if (v94)
            {
              sub_1D1C2AEC4(*(v90 + 56) + *(v84 + 72) * v92, v127, type metadata accessor for StaticService);
              (*(v134 + 8))(v89, v135);

              v95 = 0;
            }

            else
            {

              (*(v134 + 8))(v89, v135);
              v95 = 1;
            }

            goto LABEL_50;
          }

          (*(v134 + 8))(v89, v135);
        }

        v95 = 1;
        v93 = v133;
LABEL_50:
        v96 = v127;
        v85(v127, v95, 1, v83);
        v97 = v147;

        v98 = v148;
        v99 = v146;
        sub_1D1C1D1F4(v137, v99, v73, v98, &v154, MEMORY[0x1E69E7CC0], v136, MEMORY[0x1E69E7CC0], v93, v96, v97);
        goto LABEL_59;
      }
    }

LABEL_58:

    v100 = type metadata accessor for StaticService(0);
    v93 = v133;
    (*(*(v100 - 8) + 56))(v133, 1, 1, v100);
LABEL_59:
    v101 = v140;
    sub_1D1741A90(v93, v140, &qword_1EC6436F0, &qword_1D1E99BC0);
    sub_1D1C2AEC4(v143, v142, type metadata accessor for StateSnapshot.UpdateType);
    LOBYTE(v154) = v144;
    sub_1D1741C08(v101, v141, &qword_1EC6436F0, &qword_1D1E99BC0);
    v102 = v138;
    sub_1D1741C08(v145, v138, &qword_1EC6436C8, &unk_1D1E97C40);
    v103 = type metadata accessor for StaticAccessory(0);
    if ((*(*(v103 - 8) + 48))(v102, 1, v103) == 1)
    {
      v104 = v150;
      v105 = v150;
      sub_1D1741A30(v102, &qword_1EC6436C8, &unk_1D1E97C40);
      v106 = type metadata accessor for StaticService(0);
      v107 = v132;
      (*(*(v106 - 8) + 56))(v132, 1, 1, v106);
    }

    else
    {
      v108 = *(v102 + *(v103 + 80));
      v109 = v150;

      sub_1D1C2AF2C(v102, type metadata accessor for StaticAccessory);
      v110 = [v109 uniqueIdentifier];
      v111 = v128;
      sub_1D1E66A5C();

      if (*(v108 + 16) && (v112 = sub_1D1742188(), (v113 & 1) != 0))
      {
        v114 = v112;
        v115 = *(v108 + 56);
        v116 = type metadata accessor for StaticService(0);
        v117 = *(v116 - 8);
        v118 = v115 + *(v117 + 72) * v114;
        v107 = v132;
        sub_1D1C2AEC4(v118, v132, type metadata accessor for StaticService);
        (*(v134 + 8))(v111, v135);

        (*(v117 + 56))(v107, 0, 1, v116);
      }

      else
      {

        (*(v134 + 8))(v111, v135);
        v119 = type metadata accessor for StaticService(0);
        v107 = v132;
        (*(*(v119 - 8) + 56))(v132, 1, 1, v119);
      }

      v104 = v150;
    }

    v120 = v147;

    v121 = v148;
    v122 = v146;
    sub_1D1C1D1F4(v142, v122, v104, v121, &v154, v130, v141, v129, v139, v107, v120);
    return sub_1D1741A30(v140, &qword_1EC6436F0, &qword_1D1E99BC0);
  }
}

uint64_t sub_1D1C1CDA8@<X0>(void **a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, char a5@<W4>, int *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v51 = a8;
  v49 = a3;
  v50 = a7;
  v46 = a6;
  v48 = a4;
  v11 = sub_1D1E66A7C();
  v44 = *(v11 - 8);
  v45 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v43 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436C8, &unk_1D1E97C40);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v43 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v43 - v20;
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  MEMORY[0x1EEE9AC00](updated - 8);
  v24 = &v43 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *a1;
  sub_1D1C2AEC4(a2, v24, type metadata accessor for StateSnapshot.UpdateType);
  v52 = a5;
  v26 = type metadata accessor for StaticService(0);
  v27 = *(v26 - 8);
  v28 = *(v27 + 56);
  v47 = v21;
  v28(v21, 1, 1, v26);
  sub_1D1741C08(v46, v15, &qword_1EC6436C8, &unk_1D1E97C40);
  v29 = type metadata accessor for StaticAccessory(0);
  if ((*(*(v29 - 8) + 48))(v15, 1, v29) == 1)
  {
    v30 = v25;
    sub_1D1741A30(v15, &qword_1EC6436C8, &unk_1D1E97C40);
    v31 = 1;
    v32 = v25;
  }

  else
  {
    v33 = *&v15[*(v29 + 80)];
    v46 = v25;
    v34 = v25;

    sub_1D1C2AF2C(v15, type metadata accessor for StaticAccessory);
    v35 = [v34 uniqueIdentifier];
    v36 = v43;
    sub_1D1E66A5C();

    if (*(v33 + 16) && (v37 = sub_1D1742188(), (v38 & 1) != 0))
    {
      sub_1D1C2AEC4(*(v33 + 56) + *(v27 + 72) * v37, v19, type metadata accessor for StaticService);
      (*(v44 + 8))(v36, v45);

      v31 = 0;
    }

    else
    {

      (*(v44 + 8))(v36, v45);
      v31 = 1;
    }

    v32 = v46;
  }

  v28(v19, v31, 1, v26);
  v39 = v50;

  v40 = v48;
  v41 = v49;
  return sub_1D1C1D1F4(v24, v41, v32, v40, &v52, MEMORY[0x1E69E7CC0], v47, MEMORY[0x1E69E7CC0], v51, v19, v39);
}

uint64_t sub_1D1C1D1F4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, int *a3@<X2>, unsigned __int8 *a4@<X3>, unsigned __int8 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v430 = a8;
  v431 = a6;
  v483 = a5;
  v484 = a2;
  v485 = a3;
  v481 = a1;
  v432 = a9;
  v479 = a10;
  v421 = type metadata accessor for StaticTelevisionProfile(0);
  MEMORY[0x1EEE9AC00](v421);
  v420 = &v406[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644620, &unk_1D1E75A00);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v471 = &v406[-v15];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v470 = &v406[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = MEMORY[0x1EEE9AC00](v17);
  v469 = &v406[-v20];
  v21 = MEMORY[0x1EEE9AC00](v19);
  v443 = &v406[-v22];
  MEMORY[0x1EEE9AC00](v21);
  v478 = &v406[-v23];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644870, &unk_1D1EABA00);
  v25 = MEMORY[0x1EEE9AC00](v24 - 8);
  v442 = &v406[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v25);
  v472 = &v406[-v27];
  v460 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting(0);
  v474 = *(v460 - 8);
  MEMORY[0x1EEE9AC00](v460);
  v437 = &v406[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CA18, &qword_1D1EABE10);
  v30 = MEMORY[0x1EEE9AC00](v29 - 8);
  v439 = &v406[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v30);
  v477 = &v406[-v32];
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  v34 = MEMORY[0x1EEE9AC00](v33 - 8);
  v449 = &v406[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v36 = MEMORY[0x1EEE9AC00](v34);
  v448 = &v406[-v37];
  v38 = MEMORY[0x1EEE9AC00](v36);
  v447 = &v406[-v39];
  v40 = MEMORY[0x1EEE9AC00](v38);
  v422 = &v406[-v41];
  v42 = MEMORY[0x1EEE9AC00](v40);
  v452 = &v406[-v43];
  MEMORY[0x1EEE9AC00](v42);
  v434 = &v406[-v44];
  v45 = sub_1D1E66A7C();
  v482 = *(v45 - 8);
  v46 = MEMORY[0x1EEE9AC00](v45);
  v419 = &v406[-((v47 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v48 = MEMORY[0x1EEE9AC00](v46);
  v467 = &v406[-v49];
  v50 = MEMORY[0x1EEE9AC00](v48);
  v466 = &v406[-v51];
  MEMORY[0x1EEE9AC00](v50);
  v445 = &v406[-v52];
  v456 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642980, &unk_1D1E6E6E0);
  v53 = MEMORY[0x1EEE9AC00](v456);
  v457 = &v406[-((v54 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v55 = MEMORY[0x1EEE9AC00](v53);
  v435 = &v406[-v56];
  MEMORY[0x1EEE9AC00](v55);
  v415 = &v406[-v57];
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  v59 = MEMORY[0x1EEE9AC00](updated);
  v458 = &v406[-((v60 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v61 = MEMORY[0x1EEE9AC00](v59);
  v446 = &v406[-v62];
  v63 = MEMORY[0x1EEE9AC00](v61);
  v436 = &v406[-v64];
  v65 = MEMORY[0x1EEE9AC00](v63);
  v433 = &v406[-v66];
  MEMORY[0x1EEE9AC00](v65);
  v68 = &v406[-v67];
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C9B0, &qword_1D1EA1190);
  v70 = MEMORY[0x1EEE9AC00](v69 - 8);
  v414 = &v406[-((v71 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v72 = MEMORY[0x1EEE9AC00](v70);
  v413 = &v406[-v73];
  v74 = MEMORY[0x1EEE9AC00](v72);
  v412 = &v406[-v75];
  MEMORY[0x1EEE9AC00](v74);
  v77 = &v406[-v76];
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v79 = MEMORY[0x1EEE9AC00](v78 - 8);
  v462 = &v406[-((v80 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v81 = MEMORY[0x1EEE9AC00](v79);
  v465 = &v406[-v82];
  v83 = MEMORY[0x1EEE9AC00](v81);
  v464 = &v406[-v84];
  v85 = MEMORY[0x1EEE9AC00](v83);
  v444 = &v406[-v86];
  v87 = MEMORY[0x1EEE9AC00](v85);
  v411 = &v406[-v88];
  v89 = MEMORY[0x1EEE9AC00](v87);
  v418 = &v406[-v90];
  v91 = MEMORY[0x1EEE9AC00](v89);
  v451 = &v406[-v92];
  v93 = MEMORY[0x1EEE9AC00](v91);
  v416 = &v406[-v94];
  v95 = MEMORY[0x1EEE9AC00](v93);
  v417 = &v406[-v96];
  v97 = MEMORY[0x1EEE9AC00](v95);
  v459 = &v406[-v98];
  v99 = MEMORY[0x1EEE9AC00](v97);
  v410 = &v406[-v100];
  v101 = MEMORY[0x1EEE9AC00](v99);
  v103 = &v406[-v102];
  v104 = MEMORY[0x1EEE9AC00](v101);
  v106 = &v406[-v105];
  v107 = MEMORY[0x1EEE9AC00](v104);
  v109 = &v406[-v108];
  MEMORY[0x1EEE9AC00](v107);
  v111 = &v406[-v110];
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644760, &unk_1D1E9E530);
  v113 = MEMORY[0x1EEE9AC00](v112 - 8);
  v461 = &v406[-((v114 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v113);
  v429 = *v483;
  v426 = &v406[-v115];
  sub_1D1C21E18(a4, &v406[-v115]);
  v116 = a7;
  v117 = v45;
  v468 = v116;
  v427 = sub_1D1C22058(v116);
  v118 = v485;
  v425 = sub_1D1C22294(v485, a4);
  v424 = v119;
  v463 = v111;
  sub_1D1C22840(a4, v118, v111);
  v428 = v109;
  v120 = v109;
  v121 = v482;
  sub_1D1C22C84(a4, v484, v120);
  v122 = v481;
  v483 = a4;
  v423 = sub_1D1C22FB4(v481, a4);
  v123 = type metadata accessor for StaticService.AutoClimateControlConfig(0);
  v450 = *(v123 - 8);
  v124 = *(v450 + 56);
  v475 = v123;
  v476 = v77;
  v441 = v450 + 56;
  v440 = v124;
  v124(v77, 1, 1);
  sub_1D1C2AEC4(v122, v68, type metadata accessor for StateSnapshot.UpdateType);
  v473 = updated;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v126 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
  v480 = v117;
  if (EnumCaseMultiPayload != 11)
  {
    sub_1D1C2AF2C(v68, type metadata accessor for StateSnapshot.UpdateType);
    v141 = v477;
    v146 = v118;
    v143 = v474;
    v142 = v475;
    v144 = v452;
    v145 = v459;
    goto LABEL_12;
  }

  v127 = *v68;
  v408 = v68[8];
  v407 = v68[9];
  v128 = *(v68 + 3);
  v455 = *(v68 + 2);
  v438 = v128;
  v454 = *(v68 + 4);
  LODWORD(v453) = v68[40];
  v409 = v127;
  v129 = [v127 uniqueIdentifier];
  sub_1D1E66A5C();

  v130 = *(v121 + 56);
  v131 = 1;
  v130(v106, 0, 1, v117);
  v132 = [v118 accessory];
  if (v132)
  {
    v133 = v132;
    v134 = [v132 uniqueIdentifier];

    sub_1D1E66A5C();
    v131 = 0;
  }

  v135 = v415;
  v136 = v480;
  v130(v103, v131, 1, v480);
  v137 = *(v456 + 48);
  sub_1D1741C08(v106, v135, &qword_1EC642590, qword_1D1E71260);
  v138 = v136;
  sub_1D1741C08(v103, v135 + v137, &qword_1EC642590, qword_1D1E71260);
  v139 = *(v482 + 48);
  if (v139(v135, 1, v138) != 1)
  {
    v147 = v410;
    sub_1D1741C08(v135, v410, &qword_1EC642590, qword_1D1E71260);
    if (v139(v135 + v137, 1, v138) != 1)
    {
      v159 = v482;
      v160 = v445;
      (*(v482 + 32))(v445, v135 + v137, v138);
      sub_1D1C2AFE0(&qword_1EE07D170, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v161 = v138;
      v162 = sub_1D1E6775C();

      v163 = *(v159 + 8);
      v163(v160, v161);
      sub_1D1741A30(v103, &qword_1EC642590, qword_1D1E71260);
      sub_1D1741A30(v106, &qword_1EC642590, qword_1D1E71260);
      v163(v147, v161);
      sub_1D1741A30(v135, &qword_1EC642590, qword_1D1E71260);
      v141 = v477;
      v143 = v474;
      v142 = v475;
      v144 = v452;
      v126 = 0x1FA970000uLL;
      v145 = v459;
      if (v162)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    sub_1D1741A30(v103, &qword_1EC642590, qword_1D1E71260);
    sub_1D1741A30(v106, &qword_1EC642590, qword_1D1E71260);
    (*(v482 + 8))(v147, v138);
    v126 = 0x1FA970000;
LABEL_10:
    sub_1D1741A30(v135, &qword_1EC642980, &unk_1D1E6E6E0);
    v141 = v477;
    v143 = v474;
    v142 = v475;
    v144 = v452;
    v145 = v459;
LABEL_11:

    v146 = v485;
LABEL_12:
    v148 = v434;
    sub_1D1741C08(v479, v434, &qword_1EC6436F0, &qword_1D1E99BC0);
    v149 = type metadata accessor for StaticService(0);
    if ((*(*(v149 - 8) + 48))(v148, 1, v149) == 1)
    {
      v150 = &qword_1EC6436F0;
      v151 = &qword_1D1E99BC0;
      v152 = v148;
    }

    else
    {
      v153 = &v148[*(v149 + 160)];
      v154 = v412;
      sub_1D1741C08(v153, v412, &qword_1EC64C9B0, &qword_1D1EA1190);
      sub_1D1C2AF2C(v148, type metadata accessor for StaticService);
      if ((*(v450 + 48))(v154, 1, v142) != 1)
      {
        v156 = *(v154 + 1);
        v155 = *(v154 + 2);
        v157 = *(v154 + 3);
        v158 = v154[32];
        v434 = *v154;
        v455 = v156;
        v454 = v157;
        LODWORD(v453) = v158;
        sub_1D1C2B3B4(v434, v156, v155);
        sub_1D1C2AF2C(v154, type metadata accessor for StaticService.AutoClimateControlConfig);
        goto LABEL_22;
      }

      v150 = &qword_1EC64C9B0;
      v151 = &qword_1D1EA1190;
      v152 = v154;
    }

    sub_1D1741A30(v152, v150, v151);
    v434 = 0;
    v455 = 0;
    v454 = 0;
    LODWORD(v453) = 0;
    v155 = 1;
    goto LABEL_22;
  }

  sub_1D1741A30(v103, &qword_1EC642590, qword_1D1E71260);
  sub_1D1741A30(v106, &qword_1EC642590, qword_1D1E71260);
  v140 = v139(v135 + v137, 1, v138);
  v126 = 0x1FA970000;
  if (v140 != 1)
  {
    goto LABEL_10;
  }

  sub_1D1741A30(v135, &qword_1EC642590, qword_1D1E71260);
  v141 = v477;
  v143 = v474;
  v142 = v475;
  v144 = v452;
  v145 = v459;
LABEL_19:
  v164 = 256;
  if (!v407)
  {
    v164 = 0;
  }

  v434 = (v164 | v408);
  v146 = v485;
  v155 = v438;
LABEL_22:
  v165 = v433;
  v168 = *(v143 + 56);
  v166 = v143 + 56;
  v167 = v168;
  v168(v141, 1, 1, v460);
  sub_1D1C2AEC4(v481, v165, type metadata accessor for StateSnapshot.UpdateType);
  if (swift_getEnumCaseMultiPayload() == 9)
  {
    v438 = v167;
    v474 = v166;
    v169 = *v165;
    v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AD58, &unk_1D1EA1810);
    sub_1D1C2B18C(v165 + *(v170 + 48), v437, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);
    v171 = [v169 uniqueIdentifier];
    sub_1D1E66A5C();

    v172 = v145;
    v173 = v126;
    v174 = *(v482 + 56);
    v175 = 1;
    v174(v172, 0, 1, v480);
    v176 = [v146 (v173 + 3192)];
    v177 = v155;
    if (v176)
    {
      v178 = v176;
      v179 = [v176 uniqueIdentifier];

      v180 = v417;
      sub_1D1E66A5C();

      v175 = 0;
      v181 = v416;
    }

    else
    {
      v181 = v416;
      v180 = v417;
    }

    v182 = v480;
    v174(v180, v175, 1, v480);
    v183 = *(v456 + 48);
    v184 = v459;
    v185 = v435;
    sub_1D1741C08(v459, v435, &qword_1EC642590, qword_1D1E71260);
    v186 = v182;
    v187 = v185;
    sub_1D1741C08(v180, &v185[v183], &qword_1EC642590, qword_1D1E71260);
    v188 = *(v482 + 48);
    if (v188(v185, 1, v186) == 1)
    {

      v189 = v186;
      sub_1D1741A30(v180, &qword_1EC642590, qword_1D1E71260);
      v190 = v435;
      sub_1D1741A30(v184, &qword_1EC642590, qword_1D1E71260);
      v191 = v477;
      sub_1D1741A30(v477, &qword_1EC64CA18, &qword_1D1EABE10);
      v192 = v188(&v190[v183], 1, v189);
      v146 = v485;
      v126 = 0x1FA970000;
      v155 = v177;
      v141 = v191;
      v167 = v438;
      if (v192 == 1)
      {
        sub_1D1741A30(v190, &qword_1EC642590, qword_1D1E71260);
        v142 = v475;
LABEL_41:
        v201 = v439;
        sub_1D1C2B18C(v437, v439, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);
        v202 = v201;
        v203 = 0;
        goto LABEL_42;
      }
    }

    else
    {
      sub_1D1741C08(v185, v181, &qword_1EC642590, qword_1D1E71260);
      v193 = v188(&v185[v183], 1, v186);
      v155 = v177;
      v167 = v438;
      if (v193 != 1)
      {
        v206 = v482;
        v207 = &v187[v183];
        v208 = v445;
        (*(v482 + 32))(v445, v207, v186);
        sub_1D1C2AFE0(&qword_1EE07D170, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
        v209 = v186;
        v210 = sub_1D1E6775C();

        v211 = *(v206 + 8);
        v211(v208, v209);
        sub_1D1741A30(v417, &qword_1EC642590, qword_1D1E71260);
        sub_1D1741A30(v459, &qword_1EC642590, qword_1D1E71260);
        v141 = v477;
        sub_1D1741A30(v477, &qword_1EC64CA18, &qword_1D1EABE10);
        v211(v181, v209);
        sub_1D1741A30(v435, &qword_1EC642590, qword_1D1E71260);
        v146 = v485;
        v142 = v475;
        v126 = 0x1FA970000uLL;
        if (v210)
        {
          goto LABEL_41;
        }

        goto LABEL_33;
      }

      v194 = v186;
      sub_1D1741A30(v417, &qword_1EC642590, qword_1D1E71260);
      v190 = v435;
      sub_1D1741A30(v459, &qword_1EC642590, qword_1D1E71260);
      v141 = v477;
      sub_1D1741A30(v477, &qword_1EC64CA18, &qword_1D1EABE10);
      (*(v482 + 8))(v181, v194);
      v146 = v485;
      v126 = 0x1FA970000;
    }

    sub_1D1741A30(v190, &qword_1EC642980, &unk_1D1E6E6E0);
    v142 = v475;
LABEL_33:
    sub_1D1C2AF2C(v437, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);
    v144 = v452;
    goto LABEL_34;
  }

  sub_1D1741A30(v141, &qword_1EC64CA18, &qword_1D1EABE10);
  sub_1D1C2AF2C(v165, type metadata accessor for StateSnapshot.UpdateType);
LABEL_34:
  sub_1D1741C08(v479, v144, &qword_1EC6436F0, &qword_1D1E99BC0);
  v195 = type metadata accessor for StaticService(0);
  if ((*(*(v195 - 8) + 48))(v144, 1, v195) == 1)
  {
    v196 = &qword_1EC6436F0;
    v197 = &qword_1D1E99BC0;
    v198 = v144;
  }

  else
  {
    v199 = v144 + *(v195 + 160);
    v200 = v413;
    sub_1D1741C08(v199, v413, &qword_1EC64C9B0, &qword_1D1EA1190);
    sub_1D1C2AF2C(v144, type metadata accessor for StaticService);
    if ((*(v450 + 48))(v200, 1, v142) != 1)
    {
      v204 = &v200[v142[5]];
      v205 = v200;
      v201 = v439;
      sub_1D1741C08(v204, v439, &qword_1EC64CA18, &qword_1D1EABE10);
      sub_1D1C2AF2C(v205, type metadata accessor for StaticService.AutoClimateControlConfig);
      goto LABEL_43;
    }

    v196 = &qword_1EC64C9B0;
    v197 = &qword_1D1EA1190;
    v198 = v200;
  }

  sub_1D1741A30(v198, v196, v197);
  v201 = v439;
  v202 = v439;
  v203 = 1;
LABEL_42:
  v167(v202, v203, 1, v460);
LABEL_43:
  sub_1D1741A90(v201, v141, &qword_1EC64CA18, &qword_1D1EABE10);
  v212 = v436;
  sub_1D1C2AEC4(v481, v436, type metadata accessor for StateSnapshot.UpdateType);
  if (swift_getEnumCaseMultiPayload() == 10)
  {
    v438 = v155;
    v213 = *v212;
    v214 = *(v212 + 1);
    v215 = [*v212 uniqueIdentifier];
    v216 = v451;
    sub_1D1E66A5C();

    v217 = v126;
    v218 = *(v482 + 56);
    v219 = 1;
    v218(v216, 0, 1, v480);
    v220 = [v146 (v217 + 3192)];
    if (v220)
    {
      v221 = v220;
      v222 = [v220 uniqueIdentifier];

      v223 = v418;
      sub_1D1E66A5C();

      v219 = 0;
    }

    else
    {
      v223 = v418;
    }

    v225 = v480;
    v218(v223, v219, 1, v480);
    v226 = *(v456 + 48);
    v227 = v451;
    v228 = v457;
    sub_1D1741C08(v451, v457, &qword_1EC642590, qword_1D1E71260);
    v229 = v225;
    sub_1D1741C08(v223, &v228[v226], &qword_1EC642590, qword_1D1E71260);
    v230 = *(v482 + 48);
    if (v230(v228, 1, v229) == 1)
    {

      sub_1D1741A30(v223, &qword_1EC642590, qword_1D1E71260);
      sub_1D1741A30(v227, &qword_1EC642590, qword_1D1E71260);
      sub_1D1741A30(v476, &qword_1EC64C9B0, &qword_1D1EA1190);
      v231 = v230(&v457[v226], 1, v229);
      v155 = v438;
      v141 = v477;
      if (v231 == 1)
      {
        sub_1D1741A30(v457, &qword_1EC642590, qword_1D1E71260);
        v224 = v442;
        v142 = v475;
        goto LABEL_62;
      }
    }

    else
    {
      v232 = v457;
      v233 = v411;
      sub_1D1741C08(v457, v411, &qword_1EC642590, qword_1D1E71260);
      v234 = v230(&v232[v226], 1, v229);
      v141 = v477;
      if (v234 != 1)
      {
        v242 = v482;
        v243 = v457;
        v244 = v445;
        (*(v482 + 32))(v445, &v457[v226], v229);
        sub_1D1C2AFE0(&qword_1EE07D170, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
        v245 = v229;
        v246 = sub_1D1E6775C();

        v247 = *(v242 + 8);
        v247(v244, v245);
        sub_1D1741A30(v418, &qword_1EC642590, qword_1D1E71260);
        sub_1D1741A30(v451, &qword_1EC642590, qword_1D1E71260);
        sub_1D1741A30(v476, &qword_1EC64C9B0, &qword_1D1EA1190);
        v247(v411, v245);
        sub_1D1741A30(v243, &qword_1EC642590, qword_1D1E71260);
        v224 = v442;
        v142 = v475;
        v155 = v438;
        if (v246)
        {
          goto LABEL_62;
        }

        goto LABEL_54;
      }

      sub_1D1741A30(v418, &qword_1EC642590, qword_1D1E71260);
      sub_1D1741A30(v451, &qword_1EC642590, qword_1D1E71260);
      sub_1D1741A30(v476, &qword_1EC64C9B0, &qword_1D1EA1190);
      (*(v482 + 8))(v233, v229);
      v155 = v438;
    }

    sub_1D1741A30(v457, &qword_1EC642980, &unk_1D1E6E6E0);
    v224 = v442;
    v142 = v475;
LABEL_54:

    goto LABEL_55;
  }

  sub_1D1741A30(v476, &qword_1EC64C9B0, &qword_1D1EA1190);
  sub_1D1C2AF2C(v212, type metadata accessor for StateSnapshot.UpdateType);
  v224 = v442;
LABEL_55:
  v235 = v422;
  sub_1D1741C08(v479, v422, &qword_1EC6436F0, &qword_1D1E99BC0);
  v236 = type metadata accessor for StaticService(0);
  if ((*(*(v236 - 8) + 48))(v235, 1, v236) == 1)
  {
    v237 = &qword_1EC6436F0;
    v238 = &qword_1D1E99BC0;
    v239 = v235;
  }

  else
  {
    v240 = &v235[*(v236 + 160)];
    v241 = v414;
    sub_1D1741C08(v240, v414, &qword_1EC64C9B0, &qword_1D1EA1190);
    sub_1D1C2AF2C(v235, type metadata accessor for StaticService);
    if ((*(v450 + 48))(v241, 1, v142) != 1)
    {
      v214 = *&v241[v142[6]];

      sub_1D1C2AF2C(v241, type metadata accessor for StaticService.AutoClimateControlConfig);
      goto LABEL_62;
    }

    v237 = &qword_1EC64C9B0;
    v238 = &qword_1D1EA1190;
    v239 = v241;
  }

  sub_1D1741A30(v239, v237, v238);
  v214 = 0;
LABEL_62:
  v248 = v483;
  v249 = v440;
  v250 = v476;
  sub_1D1741C08(v141, &v476[v142[5]], &qword_1EC64CA18, &qword_1D1EABE10);
  v251 = v455;
  *v250 = v434;
  *(v250 + 8) = v251;
  v252 = v454;
  *(v250 + 16) = v155;
  *(v250 + 24) = v252;
  *(v250 + 32) = v453;
  *(v250 + v142[6]) = v214;
  v249(v250, 0, 1, v142);
  LODWORD(v474) = [v248 isCalibrating];
  v253 = sub_1D1E6854C();
  if (v253 & 0x10000) != 0 || (v254 = v253, v255 = sub_1D1E682DC(), (v256))
  {
    v257 = type metadata accessor for EndpointPath(0);
    (*(*(v257 - 8) + 56))(v224, 1, 1, v257);
    v258 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
  }

  else
  {
    v259 = v255;
    v260 = v484;
    v258 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
    v261 = [v260 uniqueIdentifier];
    sub_1D1E66A5C();

    v262 = type metadata accessor for EndpointPath(0);
    *(v224 + *(v262 + 20)) = v259;
    *(v224 + *(v262 + 24)) = v254;
    (*(*(v262 - 8) + 56))(v224, 0, 1, v262);
  }

  sub_1D1741A90(v224, v472, &qword_1EC644870, &unk_1D1EABA00);
  v263 = sub_1D1E669FC();
  v264 = *(*(v263 - 8) + 56);
  v265 = 1;
  v264(v478, 1, 1, v263);
  v266 = [v248 lastSeenStatus];
  v267 = v443;
  if (v266)
  {
    v268 = v266;
    v269 = [v266 lastSeenDate];

    sub_1D1E669BC();
    v265 = 0;
  }

  v270 = v478;
  sub_1D1741A30(v478, &qword_1EC642570, &qword_1D1E6C6A0);
  v264(v267, v265, 1, v263);
  sub_1D1741A90(v267, v270, &qword_1EC642570, &qword_1D1E6C6A0);
  v271 = v483;
  v272 = [v483 lastSeenStatus];
  if (v272)
  {
    v273 = v272;
    v274 = [v272 lowBatteryStatus];

    v275 = 2 * (v274 != 1);
    if (v274 == 2)
    {
      v275 = 1;
    }
  }

  else
  {
    v275 = 2;
  }

  LODWORD(v473) = v275;
  v276 = v485;
  LODWORD(v460) = [v271 supportsCHIP];
  LODWORD(v459) = [v271 requiresThreadRouter];
  v277 = [v276 v258[61]];
  sub_1D1E66A5C();

  LODWORD(v457) = [v276 isPrimaryService];
  v278 = sub_1D1A1185C();
  if (v278 == 2)
  {
    v279 = [v276 serviceType];
    v280 = sub_1D1E6781C();
    v282 = v281;

    v283._countAndFlagsBits = v280;
    v283._object = v282;
    ServiceKind.init(rawValue:)(v283);
    if (v487 == 53)
    {
      v284 = 0;
    }

    else
    {
      v284 = v487;
    }

    v278 = sub_1D17C4E00(v284, &unk_1F4D65120);
  }

  LODWORD(v456) = v278;
  v285 = v482;
  v286 = [v271 v258[61]];
  sub_1D1E66A5C();

  v287 = [v276 mediaSourceIdentifier];
  v454 = v287;
  if (v287)
  {
    v288 = v287;
    v455 = [v287 integerValue];
  }

  else
  {
    v455 = 0;
  }

  v289 = v271;
  v290 = v471;
  sub_1D1CE96D0(v289, v471);
  v291 = type metadata accessor for StaticDeviceMetadata(0);
  (*(*(v291 - 8) + 56))(v290, 0, 1, v291);
  HMService.dateAdded.getter(v469);
  sub_1D1741C08(v478, v470, &qword_1EC642570, &qword_1D1E6C6A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643350, &qword_1D1E72040);
  v292 = (*(v285 + 80) + 32) & ~*(v285 + 80);
  v293 = swift_allocObject();
  *(v293 + 16) = xmmword_1D1E739C0;
  v294 = [v289 room];
  if (v294)
  {
    v295 = v294;
    v296 = [v294 v258[61]];

    v297 = v445;
    sub_1D1E66A5C();

    v298 = *(v482 + 32);
    v299 = v444;
    v300 = v480;
    v298(v444, v297, v480);
    v301 = *(v482 + 56);
    v301(v299, 0, 1, v300);
    v298(v293 + v292, v299, v300);
    v302 = v482;
  }

  else
  {
    v301 = *(v285 + 56);
    v303 = v444;
    v300 = v480;
    v301(v444, 1, 1, v480);
    v304 = [v484 roomForEntireHome];
    v305 = v258[61];
    v306 = v303;
    v307 = [v304 v305];

    sub_1D1E66A5C();
    v302 = v482;
    if ((*(v482 + 48))(v306, 1, v300) != 1)
    {
      sub_1D1741A30(v306, &qword_1EC642590, qword_1D1E71260);
    }
  }

  v308 = v447;
  v453 = sub_1D179BE14(v293);
  swift_setDeallocating();
  v309 = *(v302 + 8);
  v437 = (v302 + 8);
  v436 = v309;
  (v309)(v293 + v292, v300);
  swift_deallocClassInstance();
  v310 = [v289 room];
  if (v310)
  {
    v311 = v310;
    v312 = [v310 name];
  }

  else
  {
    v311 = [v484 roomForEntireHome];
    v312 = [v311 name];
  }

  v313 = v485;
  v314 = v312;

  v452 = sub_1D1E6781C();
  v451 = v315;

  LODWORD(v450) = HMService.shouldShowInDashboard.getter();
  LODWORD(v447) = HMAccessory.showAsIndividualTiles.getter();
  LODWORD(v445) = HMService.isFavorite.getter();
  if (HMService.contributesToHomeStatus.getter())
  {
    LODWORD(v444) = HMAccessory.contributesToHomeStatus.getter();
  }

  else
  {
    LODWORD(v444) = 0;
  }

  v443 = HMService.customIconSFSymbol.getter();
  v442 = v316;
  v317 = [v313 serviceType];
  v318 = sub_1D1E6781C();
  v320 = v319;

  v321._countAndFlagsBits = v318;
  v321._object = v320;
  ServiceKind.init(rawValue:)(v321);
  LODWORD(v438) = v487;
  v322 = [v313 serviceSubtype];
  if (v322)
  {
    v323 = v322;
    v324 = sub_1D1E6781C();
    v326 = v325;

    v327._countAndFlagsBits = v324;
    v327._object = v326;
    ServiceSubKind.init(rawValue:)(v327);
    v328 = v487;
    if (v487 == 5)
    {
      v328 = 0;
    }

    LODWORD(v441) = v328;
  }

  else
  {
    LODWORD(v441) = 0;
  }

  v329 = [v313 associatedServiceType];
  if (v329)
  {
    v330 = v329;
    v331 = sub_1D1E6781C();
    v333 = v332;

    v334._countAndFlagsBits = v331;
    v334._object = v333;
    ServiceKind.init(rawValue:)(v334);
    v335 = v487;
    if (v487 == 53)
    {
      v335 = 0;
    }
  }

  else
  {
    v335 = 53;
  }

  LODWORD(v439) = v335;
  v336 = v480;
  v337 = v482;
  sub_1D1741C08(v463, v464, &qword_1EC642590, qword_1D1E71260);
  sub_1D1741C08(v468, v308, &qword_1EC6436F0, &qword_1D1E99BC0);
  v338 = type metadata accessor for StaticService(0);
  v440 = *(v338 - 1);
  v339 = *(v440 + 6);
  if (v339(v308, 1, v338) == 1)
  {
    sub_1D1741A30(v308, &qword_1EC6436F0, &qword_1D1E99BC0);
    v340 = 1;
    v341 = v465;
  }

  else
  {
    v341 = v465;
    (*(v337 + 16))(v465, v308, v336);
    sub_1D1C2AF2C(v308, type metadata accessor for StaticService);
    v340 = 0;
  }

  v301(v341, v340, 1, v336);
  v342 = v446;
  sub_1D1C2AEC4(v481, v446, type metadata accessor for StateSnapshot.UpdateType);
  v343 = v448;
  sub_1D1741C08(v479, v448, &qword_1EC6436F0, &qword_1D1E99BC0);
  if (v339(v343, 1, v338) == 1)
  {
    sub_1D1741A30(v343, &qword_1EC6436F0, &qword_1D1E99BC0);
    v344 = 0;
  }

  else
  {
    v344 = *&v343[v338[32]];

    sub_1D1C2AF2C(v343, type metadata accessor for StaticService);
  }

  v345 = v449;
  v486 = v344;
  v346 = v485;
  StaticCharacteristicsBag.init(updateType:from:previousStaticCharacteristicsBag:coverages:)(v342, v346, &v486, a11, &v487);
  v449 = v487;
  v347 = v458;
  sub_1D1C2AEC4(v481, v458, type metadata accessor for StateSnapshot.UpdateType);
  sub_1D1741C08(v479, v345, &qword_1EC6436F0, &qword_1D1E99BC0);
  if (v339(v345, 1, v338) == 1)
  {
    sub_1D1741A30(v345, &qword_1EC6436F0, &qword_1D1E99BC0);
    v348 = 0;
    v349 = 0;
  }

  else
  {
    v350 = (v345 + v338[33]);
    v348 = *v350;
    v349 = v350[1];

    sub_1D1C2AF2C(v345, type metadata accessor for StaticService);
  }

  v351 = v484;
  v352 = v289;
  v353 = v346;
  v354 = [v352 lightProfiles];
  sub_1D1741B10(0, &qword_1EE079CF0, 0x1E696CBB8);
  sub_1D1791558();
  v355 = sub_1D1E6816C();

  v356 = sub_1D18DB57C(MEMORY[0x1E69E7CC0]);
  v357 = MEMORY[0x1EEE9AC00](v356);
  *&v406[-48] = v353;
  *&v406[-40] = v348;
  *&v406[-32] = v349;
  *&v406[-24] = v347;
  *&v406[-16] = v352;
  *&v406[-8] = v351;
  sub_1D18FC33C(v357, sub_1D1C2D680, &v406[-64], v355);
  v448 = v358;

  sub_1D1791518(v348, v349);
  v359 = [v352 televisionProfiles];
  if (v359)
  {
    v360 = v359;
    v485 = v353;
    v435 = v351;
    sub_1D1741B10(0, &qword_1EE079CB8, 0x1E696CC88);
    v361 = sub_1D1E67C1C();

    v362 = sub_1D18DB798(MEMORY[0x1E69E7CC0]);
    if (v361 >> 62)
    {
LABEL_138:
      v405 = v362;
      v484 = (v361 & 0xFFFFFFFFFFFFFF8);
      v363 = sub_1D1E6873C();
      v362 = v405;
    }

    else
    {
      v484 = (v361 & 0xFFFFFFFFFFFFFF8);
      v363 = *((v361 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v446 = v352;
    v475 = v362;
    if (!v363)
    {
      goto LABEL_129;
    }

    v352 = 0;
    v483 = (v361 & 0xC000000000000001);
    while (2)
    {
      v364 = v352;
      while (1)
      {
        if (v483)
        {
          v362 = MEMORY[0x1D3891EF0](v364, v361);
        }

        else
        {
          if (v364 >= *(v484 + 2))
          {
            goto LABEL_137;
          }

          v362 = *(v361 + 8 * v364 + 32);
        }

        v365 = v362;
        v352 = (v364 + 1);
        if (__OFADD__(v364, 1))
        {
          __break(1u);
LABEL_137:
          __break(1u);
          goto LABEL_138;
        }

        v366 = [v362 services];
        sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
        v367 = sub_1D1E67C1C();

        v486 = v485;
        MEMORY[0x1EEE9AC00](v368);
        *&v406[-16] = &v486;
        LOBYTE(v366) = sub_1D18B8754(sub_1D1C2D7D0, &v406[-32], v367);

        if (v366)
        {
          break;
        }

        ++v364;
        if (v352 == v363)
        {
          goto LABEL_129;
        }
      }

      v369 = [v365 uniqueIdentifier];
      sub_1D1E66A5C();

      v370 = v446;
      v371 = v365;
      v372 = [v371 uniqueIdentifier];
      sub_1D1E66A5C();

      v373 = [v370 uniqueIdentifier];
      sub_1D1E66A5C();

      v374 = [v371 mediaSourceDisplayOrder];
      if (v374)
      {
        v375 = v374;
        sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
        v376 = sub_1D1E67C1C();

        v377 = sub_1D1A058B4(v376);

        if (v377)
        {
          goto LABEL_128;
        }
      }

      else
      {
      }

      v377 = MEMORY[0x1E69E7CC0];
LABEL_128:
      v378 = v420;
      *&v420[*(v421 + 20)] = v377;
      v379 = v475;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v486 = v379;
      v381 = v378;
      v382 = v419;
      sub_1D17566F0(v381, v419, isUniquelyReferenced_nonNull_native);

      v362 = (v436)(v382, v480);
      v475 = v486;
      if (v352 != v363)
      {
        continue;
      }

      break;
    }

LABEL_129:
    v383 = v485;

    v384 = v446;
    v385 = v435;

    v347 = v458;
    goto LABEL_131;
  }

  v475 = sub_1D18DB798(MEMORY[0x1E69E7CC0]);

  v385 = v351;
  v383 = v353;
  v384 = v352;
LABEL_131:
  LODWORD(v458) = v454 == 0;
  v386 = v438;
  if (v438 == 53)
  {
    v386 = 0;
  }

  LODWORD(v483) = v386;
  sub_1D1C2AF2C(v347, type metadata accessor for StateSnapshot.UpdateType);
  v387 = v426;
  sub_1D1741C08(v426, v461, &qword_1EC644760, &unk_1D1E9E530);
  v388 = v430;
  if (!v430)
  {
    v388 = MEMORY[0x1E69E7CC0];
  }

  v485 = v388;
  v389 = v428;
  sub_1D1741C08(v428, v462, &qword_1EC642590, qword_1D1E71260);
  LODWORD(v484) = sub_1D1E6854C();

  sub_1D1741A30(v479, &qword_1EC6436F0, &qword_1D1E99BC0);
  sub_1D1741A30(v468, &qword_1EC6436F0, &qword_1D1E99BC0);
  sub_1D1C2AF2C(v481, type metadata accessor for StateSnapshot.UpdateType);
  sub_1D1741A30(v478, &qword_1EC642570, &qword_1D1E6C6A0);
  sub_1D1741A30(v477, &qword_1EC64CA18, &qword_1D1EABE10);
  sub_1D1741A30(v389, &qword_1EC642590, qword_1D1E71260);
  sub_1D1741A30(v463, &qword_1EC642590, qword_1D1E71260);
  sub_1D1741A30(v387, &qword_1EC644760, &unk_1D1E9E530);
  v390 = *(v482 + 32);
  v391 = v432;
  v392 = v480;
  v390(v432, v466, v480);
  v393 = (v391 + v338[5]);
  v394 = v424;
  *v393 = v425;
  v393[1] = v394;
  *(v391 + v338[6]) = v457;
  *(v391 + v338[7]) = v456 & 1;
  *(v391 + v338[8]) = v423 & 1;
  *(v391 + v338[9]) = v474;
  *(v391 + v338[10]) = v427;
  v390(v391 + v338[11], v467, v392);
  v395 = v391 + v338[12];
  *v395 = v455;
  *(v395 + 8) = v458;
  sub_1D1741A90(v471, v391 + v338[13], &qword_1EC644620, &unk_1D1E75A00);
  sub_1D1741A90(v469, v391 + v338[14], &qword_1EC642570, &qword_1D1E6C6A0);
  sub_1D1741A90(v470, v391 + v338[15], &qword_1EC642570, &qword_1D1E6C6A0);
  *(v391 + v338[16]) = v473;
  *(v391 + v338[17]) = v460;
  *(v391 + v338[18]) = v459;
  *(v391 + v338[19]) = v453;
  v396 = (v391 + v338[20]);
  v397 = v451;
  *v396 = v452;
  v396[1] = v397;
  *(v391 + v338[21]) = v450 & 1;
  *(v391 + v338[22]) = v447 & 1;
  *(v391 + v338[23]) = v445 & 1;
  *(v391 + v338[24]) = v444 & 1;
  v398 = (v391 + v338[25]);
  v399 = v442;
  *v398 = v443;
  v398[1] = v399;
  *(v391 + v338[26]) = v483;
  *(v391 + v338[27]) = v441;
  *(v391 + v338[28]) = v439;
  sub_1D1741A90(v464, v391 + v338[29], &qword_1EC642590, qword_1D1E71260);
  sub_1D1741A90(v465, v391 + v338[30], &qword_1EC642590, qword_1D1E71260);
  *(v391 + v338[31]) = v431;
  *(v391 + v338[32]) = v449;
  v400 = (v391 + v338[33]);
  v401 = v475;
  *v400 = v448;
  v400[1] = v401;
  sub_1D1741A90(v461, v391 + v338[34], &qword_1EC644760, &unk_1D1E9E530);
  *(v391 + v338[35]) = v429;
  *(v391 + v338[36]) = v485;
  sub_1D1741A90(v462, v391 + v338[37], &qword_1EC642590, qword_1D1E71260);
  v402 = v391 + v338[38];
  v403 = BYTE2(v484);
  *v402 = v484;
  *(v402 + 2) = v403 & 1;
  sub_1D1741A90(v472, v391 + v338[39], &qword_1EC644870, &unk_1D1EABA00);
  sub_1D1741A90(v476, v391 + v338[40], &qword_1EC64C9B0, &qword_1D1EA1190);
  return (*(v440 + 7))(v391, 0, 1, v338);
}

void *sub_1D1C20678(void *a1, void *a2, void *a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v74 = a6;
  v75 = a7;
  v73 = a5;
  v72 = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643700, &qword_1D1E71E58);
  v84 = *(v10 - 8);
  v85 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v86 = &v71 - v11;
  v78 = a1;
  v12 = [a1 serviceType];
  v13 = sub_1D1E6781C();
  v15 = v14;

  v16._countAndFlagsBits = v13;
  v16._object = v15;
  ServiceKind.init(rawValue:)(v16);
  v17 = v90;
  if (v90 == 53)
  {
    v17 = 0;
  }

  LOBYTE(v90) = v17;
  if (ServiceKind.rawValue.getter() != 0xD000000000000024 || 0x80000001D1EB3130 != v18)
  {
    v13 = sub_1D1E6904C();

    if (v13)
    {
      goto LABEL_7;
    }

    v51 = [v78 serviceType];
    v13 = sub_1D1E6781C();
    v53 = v52;

    v54._countAndFlagsBits = v13;
    v54._object = v53;
    ServiceKind.init(rawValue:)(v54);
    v55 = v90;
    if (v90 == 53)
    {
      v55 = 0;
    }

    LOBYTE(v90) = v55;
    if (ServiceKind.rawValue.getter() != 0xD000000000000024 || 0x80000001D1EB2FE0 != v56)
    {
      v13 = sub_1D1E6904C();

      if ((v13 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_7;
    }
  }

LABEL_7:
  v19 = [a2 accessories];
  sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
  v20 = sub_1D1E67C1C();

  v90 = MEMORY[0x1E69E7CC0];
  v79 = v20;
  if (v20 >> 62)
  {
    goto LABEL_60;
  }

  for (i = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D1E6873C())
  {
    v22 = MEMORY[0x1E69E7CC0];
    v76 = a3;
    v77 = a2;
    if (!i)
    {
      break;
    }

    v23 = 0;
    v82 = v79 & 0xFFFFFFFFFFFFFF8;
    v83 = v79 & 0xC000000000000001;
    v80 = i;
    v81 = v79 + 32;
    a3 = 0x80000001D1EB3580;
    while (2)
    {
      if (v83)
      {
        v24 = MEMORY[0x1D3891EF0](v23, v79);
      }

      else
      {
        if (v23 >= *(v82 + 16))
        {
          goto LABEL_59;
        }

        v24 = *(v81 + 8 * v23);
      }

      v13 = v24;
      v25 = __OFADD__(v23, 1);
      v26 = v23 + 1;
      if (!v25)
      {
        v27 = [v24 services];
        sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
        v28 = sub_1D1E67C1C();

        v87 = v13;
        v88 = v26;
        if (v28 >> 62)
        {
          v29 = sub_1D1E6873C();
        }

        else
        {
          v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v13 = 0;
        a2 = (v28 & 0xC000000000000001);
        do
        {
          if (v29 == v13)
          {

            goto LABEL_12;
          }

          if (a2)
          {
            v31 = MEMORY[0x1D3891EF0](v13, v28);
          }

          else
          {
            if (v13 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_57;
            }

            v31 = *(v28 + 8 * v13 + 32);
          }

          v32 = v31;
          if (__OFADD__(v13, 1))
          {
            __break(1u);
LABEL_57:
            __break(1u);
            goto LABEL_58;
          }

          v33 = [v31 serviceType];
          v34 = sub_1D1E6781C();
          v36 = v35;

          v37._countAndFlagsBits = v34;
          v37._object = v36;
          ServiceKind.init(rawValue:)(v37);
          v38 = v89;
          if (v89 == 53)
          {
            v38 = 0;
          }

          v89 = v38;
          if (ServiceKind.rawValue.getter() == 0xD000000000000024 && 0x80000001D1EB3580 == v39)
          {

            goto LABEL_33;
          }

          v30 = sub_1D1E6904C();

          ++v13;
        }

        while ((v30 & 1) == 0);

LABEL_33:
        sub_1D1E6896C();
        sub_1D1E689AC();
        sub_1D1E689BC();
        sub_1D1E6897C();
LABEL_12:
        v23 = v88;
        if (v88 != v80)
        {
          continue;
        }

        v22 = v90;
        a3 = v76;
        a2 = v77;
        goto LABEL_37;
      }

      break;
    }

LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    ;
  }

LABEL_37:

  if ((v22 & 0x8000000000000000) != 0 || (v22 & 0x4000000000000000) != 0)
  {
    v40 = sub_1D1E6873C();
    if (!v40)
    {
      goto LABEL_62;
    }

LABEL_40:
    v90 = MEMORY[0x1E69E7CC0];
    sub_1D178DC40(0, v40 & ~(v40 >> 63), 0);
    if (v40 < 0)
    {
      __break(1u);

      __break(1u);
      return result;
    }

    v41 = 0;
    v42 = v90;
    do
    {
      if ((v22 & 0xC000000000000001) != 0)
      {
        v43 = MEMORY[0x1D3891EF0](v41, v22);
      }

      else
      {
        v43 = *(v22 + 8 * v41 + 32);
      }

      v44 = v43;
      v45 = *(v85 + 48);
      v46 = [v43 uniqueIdentifier];
      v47 = v86;
      sub_1D1E66A5C();

      *(v47 + v45) = v44;
      v90 = v42;
      v49 = *(v42 + 2);
      v48 = *(v42 + 3);
      if (v49 >= v48 >> 1)
      {
        sub_1D178DC40((v48 > 1), v49 + 1, 1);
        v47 = v86;
        v42 = v90;
      }

      ++v41;
      *(v42 + 2) = v49 + 1;
      sub_1D1741A90(v47, v42 + ((*(v84 + 80) + 32) & ~*(v84 + 80)) + *(v84 + 72) * v49, &qword_1EC643700, &qword_1D1E71E58);
    }

    while (v40 != v41);

    a3 = v76;
    a2 = v77;
    if (!*(v42 + 2))
    {
      goto LABEL_63;
    }

LABEL_49:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AE8, &unk_1D1E6E830);
    v50 = sub_1D1E68BCC();
    goto LABEL_64;
  }

  v40 = *(v22 + 16);
  if (v40)
  {
    goto LABEL_40;
  }

LABEL_62:

  v42 = MEMORY[0x1E69E7CC0];
  if (*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_49;
  }

LABEL_63:
  v50 = MEMORY[0x1E69E7CC8];
LABEL_64:
  v90 = v50;
  sub_1D1C2D090(v42, 1, &v90);

  v57 = v90;
  v58 = [a3 uniqueIdentifiersForBridgedAccessories];
  if (v58)
  {
    v59 = v58;
    sub_1D1E66A7C();
    v60 = sub_1D1E67C1C();

    MEMORY[0x1EEE9AC00](v61);
    v62 = v72;
    *(&v71 - 8) = v57;
    *(&v71 - 7) = v62;
    *(&v71 - 6) = a2;
    *(&v71 - 40) = v73;
    v63 = v78;
    *(&v71 - 4) = v74;
    *(&v71 - 3) = v63;
    *(&v71 - 2) = v75;
    v64 = sub_1D17868B8(sub_1D1C2D768, (&v71 - 10), v60);

    return v64;
  }

  v65 = [v78 linkedServices];
  if (v65)
  {
    v66 = v65;
    sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
    v67 = sub_1D1E67C1C();

    MEMORY[0x1EEE9AC00](v68);
    *(&v71 - 6) = v72;
    *(&v71 - 5) = a2;
    *(&v71 - 4) = a3;
    *(&v71 - 24) = v73;
    v69 = v75;
    *(&v71 - 2) = v74;
    *(&v71 - 1) = v69;
    v64 = sub_1D17893E4(sub_1D1C2D70C, (&v71 - 8), v67);

    return v64;
  }

  return 0;
}

uint64_t sub_1D1C20EE0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char *a3@<X3>, int a4@<W4>, uint64_t a5@<X5>, void *a6@<X6>, char *a7@<X7>, char *a8@<X8>)
{
  v9 = v8;
  v75 = a6;
  v81 = a5;
  v80 = a4;
  v79 = a2;
  v85 = sub_1D1E66A7C();
  v76 = *(v85 - 8);
  v14 = MEMORY[0x1EEE9AC00](v85);
  v82 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v77 = &v66 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436C8, &unk_1D1E97C40);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v86 = &v66 - v18;
  v19 = type metadata accessor for StaticService(0);
  v87 = *(v19 - 8);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v73 = &v66 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v74 = &v66 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  v24 = MEMORY[0x1EEE9AC00](v23 - 8);
  v78 = &v66 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v84 = &v66 - v26;
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  MEMORY[0x1EEE9AC00](updated - 8);
  v83 = &v66 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + 16))
  {
    return (*(v87 + 56))(a8, 1, 1, v19);
  }

  v29 = sub_1D1742188();
  if ((v30 & 1) == 0)
  {
    return (*(v87 + 56))(a8, 1, 1, v19);
  }

  v72 = v19;
  v31 = *(*(a1 + 56) + 8 * v29);
  v32 = [v31 services];
  sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
  v33 = sub_1D1E67C1C();

  v92 = MEMORY[0x1E69E7CC0];
  if (v33 >> 62)
  {
    goto LABEL_47;
  }

  v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
  v35 = v86;
  v71 = v31;
  if (v34)
  {
    v68 = a3;
    v69 = a7;
    v70 = a8;
    v67 = v9;
    v36 = 0;
    v88 = (v33 & 0xFFFFFFFFFFFFFF8);
    v89 = (v33 & 0xC000000000000001);
    a8 = 0x80000001D1EB3580;
    v9 = v34;
    while (1)
    {
      if (v89)
      {
        v37 = MEMORY[0x1D3891EF0](v36, v33);
      }

      else
      {
        if (v36 >= v88[2])
        {
          goto LABEL_46;
        }

        v37 = *(v33 + 8 * v36 + 32);
      }

      v38 = v37;
      v39 = (v36 + 1);
      if (__OFADD__(v36, 1))
      {
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        v34 = sub_1D1E6873C();
        goto LABEL_5;
      }

      a3 = v33;
      v40 = [v37 serviceType];
      a7 = sub_1D1E6781C();
      v42 = v41;

      v43._countAndFlagsBits = a7;
      v43._object = v42;
      ServiceKind.init(rawValue:)(v43);
      v44 = v91;
      if (v91 == 53)
      {
        v44 = 0;
      }

      v90[1] = v44;
      if (ServiceKind.rawValue.getter() == 0xD000000000000024 && 0x80000001D1EB3580 == v45)
      {
      }

      else
      {
        v31 = v45;
        v46 = sub_1D1E6904C();

        if ((v46 & 1) == 0)
        {

          goto LABEL_9;
        }
      }

      v31 = &v92;
      sub_1D1E6896C();
      sub_1D1E689AC();
      sub_1D1E689BC();
      sub_1D1E6897C();
LABEL_9:
      v33 = a3;
      ++v36;
      if (v39 == v9)
      {
        v47 = v92;
        v9 = v67;
        a8 = v70;
        v31 = v71;
        a7 = v69;
        a3 = v68;
        v35 = v86;
        goto LABEL_23;
      }
    }
  }

  v47 = MEMORY[0x1E69E7CC0];
LABEL_23:

  if ((v47 & 0x8000000000000000) == 0 && (v47 & 0x4000000000000000) == 0)
  {
    if (*(v47 + 16))
    {
      goto LABEL_26;
    }

    goto LABEL_49;
  }

  result = sub_1D1E6873C();
  if (!result)
  {
LABEL_49:

    v19 = v72;
    return (*(v87 + 56))(a8, 1, 1, v19);
  }

LABEL_26:
  if ((v47 & 0xC000000000000001) != 0)
  {
    goto LABEL_52;
  }

  if (*(v47 + 16))
  {
    for (i = *(v47 + 32); ; i = MEMORY[0x1D3891EF0](0, v47))
    {
      v50 = i;

      sub_1D1C2AEC4(v79, v83, type metadata accessor for StateSnapshot.UpdateType);
      v90[0] = v80;
      v51 = v87 + 56;
      v89 = *(v87 + 56);
      v89(v84, 1, 1, v72);
      sub_1D1741C08(v81, v35, &qword_1EC6436C8, &unk_1D1E97C40);
      v52 = type metadata accessor for StaticAccessory(0);
      if ((*(*(v52 - 8) + 48))(v35, 1, v52) == 1)
      {
        sub_1D1741A30(v35, &qword_1EC6436C8, &unk_1D1E97C40);
        v53 = 1;
        v54 = v72;
        v55 = v78;
        goto LABEL_43;
      }

      v56 = *&v35[*(v52 + 80)];

      sub_1D1C2AF2C(v35, type metadata accessor for StaticAccessory);
      v57 = [v75 uniqueIdentifier];
      v58 = v77;
      sub_1D1E66A5C();

      if (!*(v56 + 16) || (v59 = sub_1D1742188(), (v60 & 1) == 0))
      {

        (*(v76 + 8))(v58, v85);
        v53 = 1;
        v54 = v72;
        goto LABEL_42;
      }

      v68 = a3;
      v69 = a7;
      v70 = a8;
      v61 = *(v56 + 56);
      v86 = *(v87 + 72);
      v35 = v74;
      sub_1D1C2AEC4(v61 + v86 * v59, v74, type metadata accessor for StaticService);

      v47 = v72;
      v31 = *&v35[*(v72 + 144)];

      sub_1D1C2AF2C(v35, type metadata accessor for StaticService);
      a3 = v31[2];
      if (!a3)
      {
        break;
      }

      v81 = v51;
      v88 = v50;
      v67 = v9;
      v62 = 0;
      v9 = (v76 + 8);
      v76 = (v76 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v63 = v31;
      a8 = v73;
      while (v62 < v63[2])
      {
        sub_1D1C2AEC4(v31 + ((*(v87 + 80) + 32) & ~*(v87 + 80)), a8, type metadata accessor for StaticService);
        v64 = [v88 uniqueIdentifier];
        a7 = v82;
        sub_1D1E66A5C();

        v47 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
        v35 = *v9;
        (*v9)(a7, v85);
        if (v47)
        {
          (v35)(v77, v85);

          v55 = v78;
          sub_1D1C2B18C(a8, v78, type metadata accessor for StaticService);
          v53 = 0;
          a8 = v70;
          v31 = v71;
          a7 = v69;
          a3 = v68;
          v54 = v72;
          v50 = v88;
          goto LABEL_43;
        }

        ++v62;
        sub_1D1C2AF2C(a8, type metadata accessor for StaticService);
        v31 = &v86[v31];
        if (a3 == v62)
        {
          a7 = v69;
          a3 = v68;
          v47 = v72;
          v50 = v88;
          goto LABEL_41;
        }
      }

      __break(1u);
LABEL_52:
      ;
    }

    v35 = *(v76 + 8);
    a7 = v69;
    a3 = v68;
LABEL_41:
    (v35)(v77, v85);

    v53 = 1;
    a8 = v70;
    v54 = v47;
LABEL_42:
    v55 = v78;
    v31 = v71;
LABEL_43:
    v89(v55, v53, 1, v54);

    v65 = a3;
    return sub_1D1C1D1F4(v83, v65, v50, v31, v90, MEMORY[0x1E69E7CC0], v84, MEMORY[0x1E69E7CC0], a8, v55, a7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D1C218AC@<X0>(id *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v58 = a3;
  v59 = a7;
  v54 = a2;
  v55 = a6;
  v61 = a5;
  v57 = a4;
  v10 = sub_1D1E66A7C();
  v51 = *(v10 - 8);
  v52 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v50 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436C8, &unk_1D1E97C40);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v50 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v56 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v60 = &v50 - v18;
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  MEMORY[0x1EEE9AC00](updated - 8);
  v21 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *a1;
  v23 = [*a1 serviceType];
  v24 = sub_1D1E6781C();
  v26 = v25;

  v27._countAndFlagsBits = v24;
  v27._object = v26;
  ServiceKind.init(rawValue:)(v27);
  v28 = v63;
  if (v63 == 53)
  {
    v28 = 0;
  }

  v62[1] = v28;
  if (ServiceKind.rawValue.getter() == 0xD000000000000024 && 0x80000001D1EB3580 == v29)
  {
  }

  else
  {
    v30 = sub_1D1E6904C();

    if ((v30 & 1) == 0)
    {
      v45 = type metadata accessor for StaticService(0);
      return (*(*(v45 - 8) + 56))(a8, 1, 1, v45);
    }
  }

  v53 = a8;
  sub_1D1C2AEC4(v54, v21, type metadata accessor for StateSnapshot.UpdateType);
  v62[0] = v61;
  v31 = type metadata accessor for StaticService(0);
  v32 = *(v31 - 8);
  v33 = *(v32 + 56);
  v33(v60, 1, 1, v31);
  sub_1D1741C08(v55, v14, &qword_1EC6436C8, &unk_1D1E97C40);
  v34 = type metadata accessor for StaticAccessory(0);
  if ((*(*(v34 - 8) + 48))(v14, 1, v34) == 1)
  {
    v35 = v22;
    sub_1D1741A30(v14, &qword_1EC6436C8, &unk_1D1E97C40);
  }

  else
  {
    v36 = *&v14[*(v34 + 80)];
    v37 = v22;

    sub_1D1C2AF2C(v14, type metadata accessor for StaticAccessory);
    v38 = [v37 uniqueIdentifier];
    v39 = v50;
    sub_1D1E66A5C();

    if (*(v36 + 16))
    {
      v40 = sub_1D1742188();
      v41 = v39;
      v42 = v56;
      if (v43)
      {
        sub_1D1C2AEC4(*(v36 + 56) + *(v32 + 72) * v40, v56, type metadata accessor for StaticService);
        (*(v51 + 8))(v41, v52);

        v44 = 0;
      }

      else
      {

        (*(v51 + 8))(v41, v52);
        v44 = 1;
      }

      goto LABEL_15;
    }

    (*(v51 + 8))(v39, v52);
  }

  v44 = 1;
  v42 = v56;
LABEL_15:
  v33(v42, v44, 1, v31);
  v47 = v59;

  v48 = v57;
  v49 = v58;
  return sub_1D1C1D1F4(v21, v49, v22, v48, v62, MEMORY[0x1E69E7CC0], v60, MEMORY[0x1E69E7CC0], v53, v42, v47);
}

uint64_t sub_1D1C21E18@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [objc_opt_self() processInfo];
  v5 = [v4 processName];

  v6 = sub_1D1E6781C();
  v8 = v7;

  if (v6 == 0x6F42676E69727053 && v8 == 0xEB00000000647261)
  {
  }

  else
  {
    v10 = sub_1D1E6904C();

    if ((v10 & 1) == 0)
    {
      v11 = [a1 softwareUpdateController];
      if (v11)
      {
        v12 = v11;
        v13 = [v11 availableUpdate];

        if (v13)
        {
          v14 = a1;

          return sub_1D1D263B0(v13, v14, a2);
        }
      }

      if ([a1 isFirmwareUpdateAvailable])
      {
        v21 = [a1 uniqueIdentifier];
        sub_1D1E66A5C();

        v22 = type metadata accessor for StaticSoftwareUpdate(0);
        type metadata accessor for StaticSoftwareUpdate.Kind(0);
        swift_storeEnumTagMultiPayload();
        v17 = *(*(v22 - 8) + 56);
        v19 = a2;
        v20 = 0;
        v18 = v22;
        goto LABEL_13;
      }
    }
  }

  v16 = type metadata accessor for StaticSoftwareUpdate(0);
  v17 = *(*(v16 - 8) + 56);
  v18 = v16;
  v19 = a2;
  v20 = 1;
LABEL_13:

  return v17(v19, v20, 1, v18);
}

uint64_t sub_1D1C22058(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v12[-v3];
  v5 = type metadata accessor for StaticService(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D1741C08(a1, v4, &qword_1EC6436F0, &qword_1D1E99BC0);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1D1741A30(v4, &qword_1EC6436F0, &qword_1D1E99BC0);
    return 2;
  }

  sub_1D1C2B18C(v4, v8, type metadata accessor for StaticService);
  v10 = *(v5 + 128);
  v14 = *&v8[v10];
  v13 = 11;
  v15 = StaticCharacteristicsBag.int(for:)(&v13);
  if (!v15.is_nil && v15.value <= 9)
  {
    sub_1D1C2AF2C(v8, type metadata accessor for StaticService);
    return 1;
  }

  v14 = *&v8[v10];
  v13 = -124;
  v16 = StaticCharacteristicsBag.int(for:)(&v13);
  if (v16.is_nil)
  {
    sub_1D1C2AF2C(v8, type metadata accessor for StaticService);
  }

  else
  {
    value = v16.value;
    sub_1D1C2AF2C(v8, type metadata accessor for StaticService);
    if (value == 1)
    {
      return 1;
    }
  }

  return 0;
}