uint64_t sub_1AFA49560(uint64_t a1)
{
  sub_1AFA495BC();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1AFA495BC()
{
  if (!qword_1EB642488)
  {
    v4[4] = v0;
    v4[5] = v1;
    v4[0] = &type metadata for Position;
    v4[1] = &type metadata for Color;
    v4[2] = &off_1F252EE70;
    v4[3] = &off_1F252CA88;
    v2 = type metadata accessor for Query2(0, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_1EB642488);
    }
  }
}

uint64_t getEnumTagSinglePayload for ProjectorParameters(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 36))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 12);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ProjectorParameters(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 36) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 36) = 0;
    }

    if (a2)
    {
      *(result + 12) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1AFA496E4()
{
  result = qword_1EB642498;
  if (!qword_1EB642498)
  {
    result = swift_getWitnessTable("1<", &type metadata for ProjectorParameters.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB642498);
  }

  return result;
}

unint64_t sub_1AFA49738()
{
  result = qword_1EB6424A0;
  if (!qword_1EB6424A0)
  {
    result = swift_getWitnessTable(aIu, &type metadata for AngleF, v0, v1);
    atomic_store(result, &qword_1EB6424A0);
  }

  return result;
}

void sub_1AFA4978C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1AFA496E4();
    v7 = a3(a1, &type metadata for ProjectorParameters.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1AFA497F0()
{
  result = qword_1EB6424B0;
  if (!qword_1EB6424B0)
  {
    result = swift_getWitnessTable(aAq_0, &type metadata for AngleF, v0, v1);
    atomic_store(result, &qword_1EB6424B0);
  }

  return result;
}

unint64_t sub_1AFA49858()
{
  result = qword_1EB6424B8;
  if (!qword_1EB6424B8)
  {
    result = swift_getWitnessTable(byte_1AFE96560, &type metadata for ProjectorParameters.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB6424B8);
  }

  return result;
}

unint64_t sub_1AFA498B0()
{
  result = qword_1EB6424C0;
  if (!qword_1EB6424C0)
  {
    result = swift_getWitnessTable("!6", &type metadata for ProjectorParameters.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB6424C0);
  }

  return result;
}

unint64_t sub_1AFA49908()
{
  result = qword_1EB6424C8;
  if (!qword_1EB6424C8)
  {
    result = swift_getWitnessTable("92", &type metadata for ProjectorParameters.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB6424C8);
  }

  return result;
}

double sub_1AFA4997C@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  result = 524288.124;
  *(a1 + 16) = 0x412000003F800000;
  *(a1 + 24) = 0;
  *(a1 + 28) = 0;
  *(a1 + 36) = 1;
  return result;
}

uint64_t sub_1AFA499CC(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x7366664F7466656CLL;
    v6 = 0x657366664F706F74;
    if (a1 != 2)
    {
      v6 = 0x664F6D6F74746F62;
    }

    if (a1)
    {
      v5 = 0x66664F7468676972;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x7073726550657375;
    v2 = 0x756C6F56776F6873;
    if (a1 != 7)
    {
      v2 = 0x6172656D6163;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 1918985582;
    if (a1 != 4)
    {
      v3 = 7496038;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1AFA49B1C()
{
  v1 = *v0;
  sub_1AFDFF288();
  sub_1AF3D4DA8(v3, v1);
  return sub_1AFDFF2F8();
}

uint64_t sub_1AFA49B6C(uint64_t a1)
{
  v2 = *v1;
  sub_1AFDFF288();
  sub_1AF3D4DA8(v4, v2);
  return sub_1AFDFF2F8();
}

unint64_t sub_1AFA49BB0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AFA4A42C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1AFA49BE0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1AFA499CC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1AFA49C28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AFA4A42C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AFA49C50(uint64_t a1)
{
  v2 = sub_1AFA4BC84();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFA49C8C(uint64_t a1)
{
  v2 = sub_1AFA4BC84();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AFA49CC8(void *a1)
{
  v3 = v1;
  sub_1AFA4BD28(0, &qword_1EB6424E8, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v11[-v8];
  sub_1AF441150(a1, a1[3]);
  sub_1AFA4BC84();
  sub_1AFDFF3F8();
  LOBYTE(v12) = 0;
  sub_1AFDFE8E8();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    sub_1AFDFE8E8();
    LOBYTE(v12) = 2;
    sub_1AFDFE8E8();
    LOBYTE(v12) = 3;
    sub_1AFDFE8E8();
    LOBYTE(v12) = 4;
    sub_1AFDFE8E8();
    LOBYTE(v12) = 5;
    sub_1AFDFE8E8();
    LOBYTE(v12) = 6;
    sub_1AFDFE8C8();
    LOBYTE(v12) = 7;
    sub_1AFDFE8C8();
    v12 = *(v3 + 28);
    v13 = *(v3 + 36);
    v11[15] = 8;
    sub_1AFA4BCD8(0, qword_1ED723F40, &type metadata for Entity, MEMORY[0x1E69E6720]);
    sub_1AFA4BD8C(&qword_1EB6424F0, sub_1AF480018, MEMORY[0x1E69E7C70]);
    sub_1AFDFE918();
  }

  return (*(v7 + 8))(v9, v6);
}

double sub_1AFA49F9C@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1AFA4A478(a2, &v6);
  if (!v2)
  {
    result = *&v6;
    v5 = *v7;
    *a1 = v6;
    *(a1 + 16) = v5;
    *(a1 + 29) = *&v7[13];
  }

  return result;
}

uint64_t sub_1AFA49FFC(void *a1)
{
  v2 = *(a1 + 11);
  v60 = *(a1 + 9);
  v61 = v2;
  v3 = *(a1 + 15);
  v62 = *(a1 + 13);
  v63 = v3;
  v4 = *(a1 + 3);
  v57[0] = *(a1 + 1);
  v57[1] = v4;
  v5 = *(a1 + 7);
  v58 = *(a1 + 5);
  v59 = v5;
  sub_1AFA4A828(v57, a1[17], a1[18], *(a1 + 152), v46);
  result = sub_1AFA4BC2C(v46);
  if (result != 1)
  {
    v7.columns[0] = v47;
    v7.columns[1] = v48;
    v7.columns[2] = v49;
    v7.columns[3] = v50;
    if (v46[0] == 1)
    {
      v34 = v56;
      v35 = v55;
      v8 = v55.f32[2];
      v9 = vmuls_lane_f32(v35.f32[2], v35, 2);
      v10 = vmuls_lane_f32(v9, v55, 2);
      v11 = v56.f32[2];
      v12 = vmuls_lane_f32(vmuls_lane_f32(v34.f32[2], v34, 2), v34, 2) - v10;
      v36.columns[0] = v47;
      v36.columns[1] = v48;
      v36.columns[2] = v49;
      v36.columns[3] = v50;
      v37 = __invert_f4(v7);
      v38 = v35;
      v39 = v34;
      v40 = 1.0 / (v11 - v8);
      v41 = -v8 / (v11 - v8);
      v42 = 1.0 / v12;
      v43 = -(v8 * v9) / v12;
      v44 = v10;
      v45 = v12;
      if (*a1)
      {
        ObjectType = swift_getObjectType();
        type metadata accessor for particle_wrap_around_camera_perspective_uniforms(0);
        sub_1AF6F4524(&v36, 1, ObjectType, v14, v15, v16, v17, v18);
      }

      v19 = v58;
      v20 = *(*&v57[0] + OBJC_IVAR____TtC3VFX13EntityManager_shaderArchive);

      v21 = v20;

      MEMORY[0x1EEE9AC00](v22);
      v23 = sub_1AFA09F2C;
      v24 = v19;
    }

    else
    {
      v64.columns[1] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v51, v48.f32[0]), v52, *v48.f32, 1), v53, v48, 2), v54, v48, 3);
      v64.columns[2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v51, v49.f32[0]), v52, *v49.f32, 1), v53, v49, 2), v54, v49, 3);
      v64.columns[0] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v51, v47.f32[0]), v52, *v47.f32, 1), v53, v47, 2), v54, v47, 3);
      v64.columns[3] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v51, v50.f32[0]), v52, *v50.f32, 1), v53, v50, 2), v54, v50, 3);
      v36 = v64;
      v37 = __invert_f4(v64);
      if (*a1)
      {
        v25 = swift_getObjectType();
        type metadata accessor for particle_wrap_around_camera_orthographic_uniforms(0);
        sub_1AF6F4524(&v36, 1, v25, v26, v27, v28, v29, v30);
      }

      v31 = v58;
      v32 = *(*&v57[0] + OBJC_IVAR____TtC3VFX13EntityManager_shaderArchive);

      v21 = v32;

      MEMORY[0x1EEE9AC00](v33);
      v23 = sub_1AFA09E00;
      v24 = v31;
    }

    sub_1AFCBF008(v24, v23);
  }

  return result;
}

unint64_t sub_1AFA4A42C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1AFDFE638();

  if (v2 >= 9)
  {
    return 9;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1AFA4A478@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AFA4BD28(0, &qword_1EB6424D0, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v30 - v8;
  v33 = 1;
  sub_1AF441150(a1, a1[3]);
  sub_1AFA4BC84();
  sub_1AFDFF3B8();
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  LOBYTE(v30) = 0;
  sub_1AFDFE738();
  v11 = v10;
  LOBYTE(v30) = 1;
  sub_1AFDFE738();
  v13 = v12;
  LOBYTE(v30) = 2;
  sub_1AFDFE738();
  v15 = v14;
  LOBYTE(v30) = 3;
  sub_1AFDFE738();
  v17 = v16;
  LOBYTE(v30) = 4;
  sub_1AFDFE738();
  v19 = v18;
  LOBYTE(v30) = 5;
  sub_1AFDFE738();
  v21 = v20;
  LOBYTE(v30) = 6;
  v23 = sub_1AFDFE718();
  LOBYTE(v30) = 7;
  v24 = sub_1AFDFE718();
  v32 = v24;
  v25 = a1[3];
  v26 = a1[4];
  sub_1AF441150(a1, v25);
  if (sub_1AF694FF8(1084, v25, v26))
  {
    sub_1AFA4BCD8(0, qword_1ED723F40, &type metadata for Entity, MEMORY[0x1E69E6720]);
    v34 = 8;
    sub_1AFA4BD8C(&qword_1EB6424E0, sub_1AF47FEB4, MEMORY[0x1E69E7C88]);
    sub_1AFDFE768();
    (*(v7 + 8))(v9, v6);
    v27 = v30;
    v33 = v31;
  }

  else
  {
    (*(v7 + 8))(v9, v6);
    v27 = 0;
  }

  v28 = v32 & 1;
  v29 = v33;
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  *a2 = v11;
  *(a2 + 4) = v13;
  *(a2 + 8) = v15;
  *(a2 + 12) = v17;
  *(a2 + 16) = v19;
  *(a2 + 20) = v21;
  *(a2 + 24) = v23 & 1;
  *(a2 + 25) = v28;
  *(a2 + 28) = v27;
  *(a2 + 36) = v29;
  return result;
}

__n128 sub_1AFA4A828@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = a1[1];

  sub_1AF3CF050(v8, v115);

  v9 = v116;
  if (v116 == 2)
  {
    v9 = 0;
    v10 = 0.0;
    v91 = 1.0;
    v11 = 10.0;
    v12 = 0.0;
    v13 = 0.0;
    v14 = 0.0;
LABEL_6:
    v17 = sub_1AFB195A8(a2, a3);
    if ((v18 & 1) == 0)
    {
      v15 = v17;
      if (a3)
      {
        goto LABEL_8;
      }
    }

LABEL_18:
    sub_1AFA4BC48(&v104);
    goto LABEL_49;
  }

  v14 = *v115;
  v13 = *&v115[1];
  v12 = *&v115[2];
  v10 = *&v115[3];
  v11 = *&v115[5];
  v91 = *&v115[4];
  if (((v117 | (v118 << 32)) & 0x100000000) != 0)
  {
    goto LABEL_6;
  }

  *(&v16 + 1) = v117;
  *&v16 = v116;
  v15 = v16 >> 32;
  if (!a3)
  {
    goto LABEL_18;
  }

LABEL_8:
  v19 = *(a3 + 104);
  if (*(v19 + 16))
  {
    v20 = *(v19 + 40);
    ObjectType = swift_getObjectType();

    swift_unknownObjectRetain();
    sub_1AF707EC4(ObjectType, v20);
    v23 = v22;
    swift_unknownObjectRelease();
  }

  else
  {

    v23 = 1.0;
  }

  sub_1AF3CEE78(v15, &v93);
  __asm { FMOV            V0.4S, #-1.0 }

  v86 = _Q0;
  if (v95.u8[0] != 2)
  {
    v32 = tanf(*&v93 * 0.5);
    if (v9)
    {
      v33 = v32;
    }

    else
    {
      v33 = v11 * v32;
    }

    v34 = -(v23 * v33) - v14;
    v35 = v13 + (v23 * v33);
    v36 = -v33 - v10;
    if (v9)
    {
      v37 = v12 + v32;
      v38 = v91;
      if (v91 >= 0.0001)
      {
        v39 = v91 + 0.0001;
        if (v11 <= (v91 + 0.0001))
        {
LABEL_34:
          *&v47 = 2.0 / (v35 - v34);
          *&v48 = (v34 + v35) / (v35 - v34);
          v49.i64[0] = 0;
          v49.i64[1] = v48;
          v50.i32[0] = 0;
          *&v50.i32[1] = 2.0 / (v37 - v36);
          v51 = vzip2q_s32(v49, v86);
          v50.i64[1] = COERCE_UNSIGNED_INT((v37 + v36) / (v37 - v36));
          v52 = vzip2q_s32(v50, xmmword_1AFE206C0);
          v90 = vzip2q_s32(v47, vzip1q_s32(v50.u64[0], 0));
          v92 = v47;
          v53 = vzip1q_s32(v51, v52);
          v54 = vzip2q_s32(v51, v52);
          if (fabsf(v39) == INFINITY)
          {
            v53.i32[2] = -1.0;
            v89 = v53;
            v55 = -v38;
          }

          else
          {
            *&v53.i32[2] = v39 / (v38 - v39);
            v89 = v53;
            v55 = (v39 * v38) / (v38 - v39);
          }

          *&v54.i32[2] = v55;
          v88 = v54;
          goto LABEL_45;
        }
      }

      else
      {
        v39 = 0.0002;
        v38 = 0.0001;
        if (v11 <= 0.0002)
        {
          goto LABEL_34;
        }
      }

      v39 = v11;
      goto LABEL_34;
    }

    v46 = v12 + (v11 * v32);
    v44 = v91;
    if (v91 >= -100000.0)
    {
      v45 = v91 + 0.0001;
      if (v11 <= (v91 + 0.0001))
      {
LABEL_41:
        v56 = 2.0 / (v35 - v34);
        v57 = (v34 + v35) / (v34 - v35);
        v58 = 2.0 / (v46 - v36);
        v59 = v46 + v36;
        v60 = v36 - v46;
        goto LABEL_42;
      }
    }

    else
    {
      v44 = -100000.0;
      v45 = -100000.0;
      if (v11 <= -100000.0)
      {
        goto LABEL_41;
      }
    }

    v45 = v11;
    goto LABEL_41;
  }

  v29 = sub_1AF3CEF50(v15);
  if ((v29 & 0xFF00000000) == 0x200000000)
  {
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    v31 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v79 = v31;
      swift_once();
      v31 = v79;
    }

    *&v93 = 0;
    sub_1AF0D4F18(v31, &v93, 0xD00000000000001DLL, 0x80000001AFF44CE0);

    goto LABEL_18;
  }

  v40 = -*&v29 - v14;
  v41 = v13 + *&v29;
  v42 = -(*&v29 / v23) - v10;
  v43 = v12 + (*&v29 / v23);
  v44 = v91;
  if (v91 < -100000.0)
  {
    v44 = -100000.0;
    v45 = -100000.0;
    if (v11 <= -100000.0)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  v45 = v91 + 0.0001;
  if (v11 > (v91 + 0.0001))
  {
LABEL_37:
    v45 = v11;
  }

LABEL_38:
  v56 = 2.0 / (v41 - v40);
  v57 = (v40 + v41) / (v40 - v41);
  v58 = 2.0 / (v43 - v42);
  v59 = v43 + v42;
  v60 = v42 - v43;
LABEL_42:
  *v30.i32 = v44 - v45;
  __asm { FMOV            V4.2S, #1.0 }

  _D4.f32[1] = v44;
  *v62.i8 = vdiv_f32(_D4, vdup_lane_s32(v30, 0));
  v63.i64[0] = 0;
  v63.i32[2] = 0;
  *&v63.i32[3] = v57;
  v64.i32[0] = 0;
  v64.i32[2] = 0;
  *&v64.i32[1] = v58;
  v62.i64[1] = v62.i64[0];
  v65 = vzip2q_s32(v63, v62);
  *&v64.i32[3] = v59 / v60;
  v66 = vzip2q_s32(v64, xmmword_1AFE201A0);
  v90 = vzip2q_s32(LODWORD(v56), vzip1q_s32(v64.u64[0], 0));
  v92 = LODWORD(v56);
  v88 = vzip2q_s32(v65, v66);
  v89 = vzip1q_s32(v65, v66);
LABEL_45:
  sub_1AF3C9244(v15, &v119);
  if (v120)
  {
    *&v85[48] = xmmword_1AFE201A0;
    *&v85[32] = xmmword_1AFE20180;
    *&v85[16] = xmmword_1AFE20160;
    *v85 = xmmword_1AFE20150;
  }

  else
  {
    *v85 = __invert_f4(v119);
  }

  v121.columns[1] = v90;
  v121.columns[0] = v92;
  v121.columns[3] = v88;
  v121.columns[2] = v89;
  v122 = __invert_f4(v121);
  v67 = vaddq_f32(v122.columns[2], v122.columns[3]);
  v122.columns[3] = vmlaq_f32(vmlaq_f32(vmlaq_f32(v122.columns[3], 0, v122.columns[2]), v86, v122.columns[1]), v86, v122.columns[0]);
  v122.columns[2] = vdupq_laneq_s32(v122.columns[3], 3);
  v68 = vdupq_n_s32(0x322BCC77u);
  v84 = vdivq_f32(v122.columns[3], vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(v122.columns[2], 0)), 0), v122.columns[2], v68));
  v69 = vmlaq_f32(vmlaq_f32(v67, v86, v122.columns[1]), v86, v122.columns[0]);
  v122.columns[0] = vdupq_laneq_s32(v69, 3);
  v87 = vdivq_f32(v69, vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(v122.columns[0], 0)), 0), v122.columns[0], v68));
  sub_1AFB948D8();
  v80 = v70;
  v81 = v71;
  v82 = v72;
  v83 = v73;

  LOBYTE(v93) = v9 & 1;
  v94 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*v85, v80.f32[0]), *&v85[16], *v80.f32, 1), *&v85[32], v80, 2), *&v85[48], v80, 3);
  v95 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*v85, v81.f32[0]), *&v85[16], *v81.f32, 1), *&v85[32], v81, 2), *&v85[48], v81, 3);
  v96 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*v85, v82.f32[0]), *&v85[16], *v82.f32, 1), *&v85[32], v82, 2), *&v85[48], v82, 3);
  v97 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*v85, v83.f32[0]), *&v85[16], *v83.f32, 1), *&v85[32], v83, 2), *&v85[48], v83, 3);
  v98 = v92;
  v99 = v90;
  v100 = v89;
  v101 = v88;
  v102 = v84;
  v103 = v87;
  nullsub_106();
  v112 = v101;
  v113 = v102;
  v114 = v103;
  v108 = v97;
  v109 = v98;
  v110 = v99;
  v111 = v100;
  v104 = v93;
  v105 = v94;
  v106 = v95;
  v107 = v96;
LABEL_49:
  v74 = v113;
  *(a5 + 128) = v112;
  *(a5 + 144) = v74;
  *(a5 + 160) = v114;
  v75 = v109;
  *(a5 + 64) = v108;
  *(a5 + 80) = v75;
  v76 = v111;
  *(a5 + 96) = v110;
  *(a5 + 112) = v76;
  v77 = v105;
  *a5 = v104;
  *(a5 + 16) = v77;
  result = v107;
  *(a5 + 32) = v106;
  *(a5 + 48) = result;
  return result;
}

uint64_t sub_1AFA4AF14(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *a1;

  sub_1AFA4A828(a1, a2, a3, a4, v166);
  if (sub_1AFA4BC2C(v166) == 1)
  {
  }

  v9.columns[0] = v167;
  v9.columns[1] = v168;
  v9.columns[2] = v169;
  v9.columns[3] = v170;
  if (v166[0] != 1)
  {
    v140 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v171, v168.f32[0]), v172, *v168.f32, 1), v173, v168, 2), v174, v168, 3);
    v142 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v171, v167.f32[0]), v172, *v167.f32, 1), v173, v167, 2), v174, v167, 3);
    v187.columns[0] = v142;
    v187.columns[1] = v140;
    v136 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v171, v170.f32[0]), v172, *v170.f32, 1), v173, v170, 2), v174, v170, 3);
    v138 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v171, v169.f32[0]), v172, *v169.f32, 1), v173, v169, 2), v174, v169, 3);
    v187.columns[2] = v138;
    v187.columns[3] = v136;
    v188 = __invert_f4(v187);
    v132 = v188.columns[1];
    v134 = v188.columns[0];
    v128 = v188.columns[3];
    v130 = v188.columns[2];
    v183 = *(a1 + 11);
    v184 = *(a1 + 13);
    v185 = a1[15];
    sub_1AF705094(2, &v159);
    v180 = v159;
    v181 = v160;
    v182 = v161;
    sub_1AF6B06C0(v8, &v180, 0x200000000, v162);
    if (*v162)
    {
      if (v165 > 0)
      {
        v126 = *(&v163 + 1);
        if (*(&v163 + 1))
        {
          v124 = *&v162[40];
          v73 = *(&v164 + 1);
          v149 = *(v164 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
          v145 = *(*(&v164 + 1) + 32);
          v177 = *v162;
          v178 = *&v162[8];
          v179 = *&v162[24];
          v155 = *&v162[32];
          v156 = v163;
          v157 = v164;
          v158 = v165;
          v153 = *v162;
          v154 = *&v162[16];
          sub_1AF5DD298(&v153, &v150);
          v74 = 0;
          do
          {
            v75 = (v124 + 48 * v74);
            v77 = *v75;
            v76 = v75[1];
            v79 = *(v75 + 2);
            v78 = *(v75 + 3);
            v81 = *(v75 + 4);
            v80 = *(v75 + 5);
            if (v149)
            {
              v82 = *(v80 + 376);

              os_unfair_lock_lock(v82);
              os_unfair_lock_lock(*(v80 + 344));
            }

            else
            {
            }

            ecs_stack_allocator_push_snapshot(v145);
            v83 = *(v73 + 64);
            v150 = *(v73 + 48);
            v151 = v83;
            v152 = *(v73 + 80);
            v84 = *(*(*(*(v80 + 40) + 16) + 32) + 16) + 1;
            *(v73 + 48) = ecs_stack_allocator_allocate(*(v73 + 32), 48 * v84, 8);
            *(v73 + 56) = v84;
            *(v73 + 72) = 0;
            *(v73 + 80) = 0;
            *(v73 + 64) = 0;
            v85 = sub_1AF64B110(&type metadata for Position, &off_1F252EE70, v79, v78, v81, v73);
            if (v79)
            {
              v86.i64[0] = 0x3F0000003F000000;
              for (v86.i64[1] = 0x3F0000003F000000; v81; --v81)
              {
                v87 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v142, COERCE_FLOAT(*v85->f32)), v140, *v85, 1), v138, *v85->f32, 2), v136, *v85->f32, 3);
                v88 = vaddq_f32(vmulq_f32(v87, v86), v86);
                v88.i32[2] = v87.i32[2];
                v89 = v88;
                v89.i32[3] = 0;
                v90 = vsubq_f32(v88, vrndmq_f32(v89));
                v90.i32[3] = 0;
                v91 = vminnmq_f32(v90, xmmword_1AFE47E30);
                v92 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_n_f32(v134, (v91.f32[0] + v91.f32[0]) + -1.0), v132, (v91.f32[1] + v91.f32[1]) + -1.0), v130, v91, 2), v128, v87, 3);
                v92.i32[3] = 1.0;
                *v85->f32 = v92;
                v85 += 2;
              }
            }

            else
            {
              v93.i64[0] = 0x3F0000003F000000;
              v93.i64[1] = 0x3F0000003F000000;
              if (v77 != v76)
              {
                v94 = v76 - v77;
                v95 = &v85[2 * v77];
                do
                {
                  v96 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v142, COERCE_FLOAT(*v95->f32)), v140, *v95, 1), v138, *v95->f32, 2), v136, *v95->f32, 3);
                  v97 = vaddq_f32(vmulq_f32(v96, v93), v93);
                  v97.i32[2] = v96.i32[2];
                  v98 = v97;
                  v98.i32[3] = 0;
                  v99 = vsubq_f32(v97, vrndmq_f32(v98));
                  v99.i32[3] = 0;
                  v100 = vminnmq_f32(v99, xmmword_1AFE47E30);
                  v101 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_n_f32(v134, (v100.f32[0] + v100.f32[0]) + -1.0), v132, (v100.f32[1] + v100.f32[1]) + -1.0), v130, v100, 2), v128, v96, 3);
                  v101.i32[3] = 1.0;
                  *v95->f32 = v101;
                  v95 += 2;
                  --v94;
                }

                while (v94);
              }
            }

            sub_1AF630994(v73, &v177, &v150);
            if (*(*(v73 + 104) + 16))
            {

              sub_1AF62F348(v102, v80);

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v104 = *(v73 + 104);
              if (isUniquelyReferenced_nonNull_native)
              {
                v105 = v104[2];
                v106 = swift_isUniquelyReferenced_nonNull_native();
                *(v73 + 104) = v104;
                if ((v106 & 1) == 0)
                {
                  v104 = sub_1AF420EA0(0, v105, 1, v104);
                  *(v73 + 104) = v104;
                }

                sub_1AF43A540(0);
                swift_arrayDestroy();
                if (v105)
                {
                  v107 = v104[2] - v105;
                  memmove(v104 + 4, &v104[9 * v105 + 4], 72 * v107);
                  v104[2] = v107;
                }

                *(v73 + 104) = v104;
              }

              else
              {
                v108 = MEMORY[0x1E69E7CC0];
                if (v104[3] >= 2uLL)
                {
                  sub_1AF9FA280(0);
                  v108 = swift_allocObject();
                  v109 = j__malloc_size_0(v108);
                  v108[2] = 0;
                  v108[3] = 2 * ((v109 - 32) / 72);
                }

                *(v73 + 104) = v108;
              }

              if (*(*(v73 + 16) + OBJC_IVAR____TtC3VFX13EntityManager_currentState) - 1 >= 2)
              {
                v110 = *(v80 + 232);
                v111 = *(v80 + 256);
                if (v110 == v111)
                {
                  v112 = *(v80 + 240);
                }

                else
                {
                  sub_1AF6497A0(v111, v110);
                  v111 = *(v80 + 232);
                  v112 = *(v80 + 240);
                  if (v112 == v111)
                  {
                    v112 = 0;
                    v111 = 0;
                    *(v80 + 232) = 0;
                    *(v80 + 240) = 0;
                  }
                }

                *(v80 + 248) = v112;
                *(v80 + 256) = v111;
              }
            }

            ecs_stack_allocator_pop_snapshot(v145);
            if (v149)
            {
              os_unfair_lock_unlock(*(v80 + 344));
              os_unfair_lock_unlock(*(v80 + 376));
            }

            ++v74;
          }

          while (v74 != v126);
          sub_1AFA3B5D4(&v159);
          goto LABEL_81;
        }
      }

LABEL_78:
      v155 = *&v162[32];
      v156 = v163;
      v157 = v164;
      v158 = v165;
      v153 = *v162;
      v154 = *&v162[16];
      sub_1AF5DD298(&v153, &v150);
      sub_1AFA3B5D4(&v159);
LABEL_81:

      sub_1AF5D1564(v162);
      return sub_1AF5D1564(v162);
    }

    goto LABEL_76;
  }

  v143 = v176;
  v148 = v175;
  v135 = v167;
  v137 = v168;
  v139 = v169;
  v141 = v170;
  v186 = __invert_f4(v9);
  v131 = v186.columns[1];
  v133 = v186.columns[0];
  v127 = v186.columns[3];
  v129 = v186.columns[2];
  v183 = *(a1 + 11);
  v184 = *(a1 + 13);
  v185 = a1[15];
  sub_1AF705094(2, &v159);
  v180 = v159;
  v181 = v160;
  v182 = v161;
  sub_1AF6B06C0(v8, &v180, 0x200000000, v162);
  if (!*v162)
  {
LABEL_76:
    sub_1AFA3B5D4(&v159);
  }

  if (v165 <= 0)
  {
    goto LABEL_78;
  }

  v118 = *(&v163 + 1);
  if (!*(&v163 + 1))
  {
    goto LABEL_82;
  }

  v10 = 1.0 / (v143.f32[2] - v148.f32[2]);
  v11 = -v148.f32[2] / (v143.f32[2] - v148.f32[2]);
  v12 = vmuls_lane_f32(v148.f32[2], v148, 2);
  v13 = vmuls_lane_f32(v12, v148, 2);
  v14 = vmuls_lane_f32(vmuls_lane_f32(v143.f32[2], v143, 2), v143, 2) - v13;
  v117 = *&v162[40];
  v15 = *(&v164 + 1);
  v121 = *(*(&v164 + 1) + 32);
  v16 = 1.0 / v14;
  v120 = *(v164 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
  v177 = *v162;
  v178 = *&v162[8];
  v179 = *&v162[24];
  v155 = *&v162[32];
  v156 = v163;
  v157 = v164;
  v158 = v165;
  v153 = *v162;
  v154 = *&v162[16];
  v115 = v14;
  v17 = -(v148.f32[2] * v12) / v14;
  sub_1AF5DD298(&v153, &v150);
  v18 = 0;
  v19 = vsub_f32(*v143.f32, *v148.f32);
  v125 = v13;
  v123 = vdup_n_s32(0x3F7FFFFFu);
  v122 = v17;
  do
  {
    v119 = v18;
    v20 = (v117 + 48 * v18);
    v21 = *v20;
    v144 = v20[1];
    v23 = *(v20 + 2);
    v22 = *(v20 + 3);
    v25 = *(v20 + 4);
    v24 = *(v20 + 5);
    if (v120)
    {
      v26 = *(v24 + 376);

      os_unfair_lock_lock(v26);
      os_unfair_lock_lock(*(v24 + 344));
    }

    else
    {
    }

    ecs_stack_allocator_push_snapshot(v121);
    v27 = *(v15 + 64);
    v150 = *(v15 + 48);
    v151 = v27;
    v152 = *(v15 + 80);
    v28 = *(*(*(*(v24 + 40) + 16) + 32) + 16) + 1;
    *(v15 + 48) = ecs_stack_allocator_allocate(*(v15 + 32), 48 * v28, 8);
    *(v15 + 56) = v28;
    *(v15 + 72) = 0;
    *(v15 + 80) = 0;
    *(v15 + 64) = 0;
    v29 = sub_1AF64B110(&type metadata for Position, &off_1F252EE70, v23, v22, v25, v15);
    v31 = v29;
    if (v23)
    {
      v30.i32[0] = 1.0;
      if (!v25)
      {
        goto LABEL_19;
      }

      v32 = v17;
      v33 = v119;
      v34.i32[3] = v116;
      do
      {
        v146 = v34.i32[3];
        v39 = *v31;
        v35 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v141, v139, *v31, 2), v137, *v31->f32, 1), v135, COERCE_FLOAT(*v31));
        v36 = vmla_n_f32(*v148.f32, v19, v11 + vmuls_lane_f32(v10, v35, 2));
        v37 = vdiv_f32(vsub_f32(*v35.f32, v36), vmul_f32(v36, 0xC0000000C0000000));
        v38 = vminnm_f32(vsub_f32(v37, vrndm_f32(v37)), v123);
        *v39.i32 = v32 + (v16 * vmuls_lane_f32(vmuls_lane_f32(v35.f32[2], v35, 2), v35, 2));
        *v39.i32 = v13 + (fminf(*v39.i32 - floorf(*v39.i32), 1.0) * v115);
        v35.i64[0] = 0x8000000080000000;
        v35.i64[1] = 0x8000000080000000;
        LODWORD(v40) = vbslq_s8(v35, v30, v39).u32[0];
        if (*v39.i32 == 0.0)
        {
          v40 = 0.0;
        }

        v41 = v40;
        v42 = powf(fabsf(*v39.i32), 0.33333);
        v30.i32[0] = 1.0;
        v43 = v42 * v41;
        v13 = v125;
        v44 = vmla_n_f32(*v148.f32, v19, v11 + (v10 * v43));
        v45 = vmla_f32(v44, v38, vsub_f32(vsub_f32(0, v44), v44));
        v34 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_n_f32(v127, v129, v43), v131, v45, 1), v133, v45.f32[0]);
        v34.i32[3] = v146;
        v46 = v34;
        v46.i32[3] = 1.0;
        *v31++ = v46;
        --v25;
      }

      while (v25);
      v116 = v146;
      v17 = v32;
    }

    else
    {
      v30.i32[0] = 1.0;
      if (v21 == v144)
      {
LABEL_19:
        v33 = v119;
        goto LABEL_25;
      }

      v47 = v144 - v21;
      v48 = &v29[16 * v21];
      v49.i32[3] = v114;
      do
      {
        v147 = v49.i32[3];
        v54 = *v48;
        v50 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v141, v139, *v48, 2), v137, *v48->f32, 1), v135, COERCE_FLOAT(*v48));
        v51 = vmla_n_f32(*v148.f32, v19, v11 + vmuls_lane_f32(v10, v50, 2));
        v52 = vdiv_f32(vsub_f32(*v50.f32, v51), vmul_f32(v51, 0xC0000000C0000000));
        v53 = vminnm_f32(vsub_f32(v52, vrndm_f32(v52)), v123);
        *v54.i32 = v122 + (v16 * vmuls_lane_f32(vmuls_lane_f32(v50.f32[2], v50, 2), v50, 2));
        *v54.i32 = v13 + (fminf(*v54.i32 - floorf(*v54.i32), 1.0) * v115);
        v50.i64[0] = 0x8000000080000000;
        v50.i64[1] = 0x8000000080000000;
        LODWORD(v55) = vbslq_s8(v50, v30, v54).u32[0];
        if (*v54.i32 == 0.0)
        {
          v55 = 0.0;
        }

        v56 = v55;
        v57 = powf(fabsf(*v54.i32), 0.33333);
        v30.i32[0] = 1.0;
        v58 = v57 * v56;
        v13 = v125;
        v59 = vmla_n_f32(*v148.f32, v19, v11 + (v10 * v58));
        v60 = vmla_f32(v59, v53, vsub_f32(vsub_f32(0, v59), v59));
        v49 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_n_f32(v127, v129, v58), v131, v60, 1), v133, v60.f32[0]);
        v49.i32[3] = v147;
        v61 = v49;
        v61.i32[3] = 1.0;
        *v48++ = v61;
        --v47;
      }

      while (v47);
      v114 = v147;
      v17 = v122;
      v33 = v119;
    }

LABEL_25:
    sub_1AF630994(v15, &v177, &v150);
    if (*(*(v15 + 104) + 16))
    {

      sub_1AF62F348(v62, v24);

      v63 = swift_isUniquelyReferenced_nonNull_native();
      v64 = *(v15 + 104);
      if (v63)
      {
        v65 = v64[2];
        v66 = swift_isUniquelyReferenced_nonNull_native();
        *(v15 + 104) = v64;
        if ((v66 & 1) == 0)
        {
          v64 = sub_1AF420EA0(0, v65, 1, v64);
          *(v15 + 104) = v64;
        }

        sub_1AF43A540(0);
        swift_arrayDestroy();
        if (v65)
        {
          v67 = v64[2] - v65;
          memmove(v64 + 4, &v64[9 * v65 + 4], 72 * v67);
          v64[2] = v67;
        }

        *(v15 + 104) = v64;
      }

      else
      {
        v68 = MEMORY[0x1E69E7CC0];
        if (v64[3] >= 2uLL)
        {
          sub_1AF9FA280(0);
          v68 = swift_allocObject();
          v69 = j__malloc_size_0(v68);
          v68[2] = 0;
          v68[3] = 2 * ((v69 - 32) / 72);
        }

        *(v15 + 104) = v68;
      }

      if (*(*(v15 + 16) + OBJC_IVAR____TtC3VFX13EntityManager_currentState) - 1 >= 2)
      {
        v70 = *(v24 + 232);
        v71 = *(v24 + 256);
        if (v70 == v71)
        {
          v72 = *(v24 + 240);
        }

        else
        {
          sub_1AF6497A0(v71, v70);
          v71 = *(v24 + 232);
          v72 = *(v24 + 240);
          if (v72 == v71)
          {
            v72 = 0;
            v71 = 0;
            *(v24 + 232) = 0;
            *(v24 + 240) = 0;
          }
        }

        *(v24 + 248) = v72;
        *(v24 + 256) = v71;
      }
    }

    ecs_stack_allocator_pop_snapshot(v121);
    if (v120)
    {
      os_unfair_lock_unlock(*(v24 + 344));
      os_unfair_lock_unlock(*(v24 + 376));
    }

    v18 = v33 + 1;
  }

  while (v18 != v118);
  sub_1AF5D1564(v162);
LABEL_82:

  sub_1AFA3B5D4(&v159);
  return sub_1AF5D1564(v162);
}

uint64_t sub_1AFA4BC2C(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

double sub_1AFA4BC48(uint64_t a1)
{
  *a1 = 2;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0;
  return result;
}

unint64_t sub_1AFA4BC84()
{
  result = qword_1EB6424D8;
  if (!qword_1EB6424D8)
  {
    result = swift_getWitnessTable(byte_1AFE967E0, &type metadata for WrapAroundCamera.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB6424D8);
  }

  return result;
}

void sub_1AFA4BCD8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1AFA4BD28(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1AFA4BC84();
    v7 = a3(a1, &type metadata for WrapAroundCamera.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1AFA4BD8C(unint64_t *a1, uint64_t (*a2)(void), const char *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1AFA4BCD8(255, qword_1ED723F40, &type metadata for Entity, MEMORY[0x1E69E6720]);
    v8 = v7;
    v9 = a2();
    result = swift_getWitnessTable(a3, v8, &v9);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WrapAroundCamera(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 37))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for WrapAroundCamera(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 36) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 37) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 37) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1AFA4BEE0()
{
  result = qword_1EB6424F8;
  if (!qword_1EB6424F8)
  {
    result = swift_getWitnessTable(byte_1AFE967B8, &type metadata for WrapAroundCamera.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB6424F8);
  }

  return result;
}

unint64_t sub_1AFA4BF38()
{
  result = qword_1EB642500;
  if (!qword_1EB642500)
  {
    result = swift_getWitnessTable(byte_1AFE966F0, &type metadata for WrapAroundCamera.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB642500);
  }

  return result;
}

unint64_t sub_1AFA4BF90()
{
  result = qword_1EB642508;
  if (!qword_1EB642508)
  {
    result = swift_getWitnessTable(byte_1AFE96718, &type metadata for WrapAroundCamera.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB642508);
  }

  return result;
}

uint64_t sub_1AFA4C00C()
{
  v0 = swift_allocObject();
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v6 = qword_1ED73B840;
  v7 = 0;
  v8 = 2;
  v9 = 0;
  v10 = 2;
  v11 = 0;
  sub_1AF5C52A8(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = &type metadata for ProjectionMatrix;
  *(inited + 40) = &off_1F2511D20;
  sub_1AF5F58E4(inited, 1, v4);
  swift_setDeallocating();
  v2 = v4[1];
  *(v0 + 16) = v4[0];
  *(v0 + 32) = v2;
  *(v0 + 48) = v5;
  return v0;
}

void sub_1AFA4C11C(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3;
  v374 = *MEMORY[0x1E69E9840];
  v5 = *(v3 + 184);

  os_unfair_recursive_lock_lock_with_options();
  v6 = sub_1AF6D2A6C(&type metadata for FrameConstantsStorage);
  if (v7 != 2 && (v7 & 1) != 0)
  {
    v9 = *(v5 + 16);
    v10 = 32 * v8;
    v11 = v6;
    os_unfair_lock_lock(*(*(v5 + 32) + 32 * v8 + 24));
    os_unfair_recursive_lock_unlock();
    v12 = *(v9 + v11);
    os_unfair_lock_unlock(*(*(v5 + 32) + v10 + 24));

    sub_1AF3CA934(v12, &v330);
    v13 = BYTE8(v333);
    if (BYTE8(v333) == 2)
    {
      return;
    }

    v14 = v330;
    if (*&v330 <= 0.0 || !v2)
    {
      return;
    }

    v15 = *(&v330 + 1);
    v16 = v331;
    v132 = v332;
    v17 = v333;

    CFXTextureDescriptorMakeDefault(v196);
    v18 = v2[41];
    v245[6] = v2[40];
    v245[7] = v18;
    v246[0] = v2[42];
    *(v246 + 9) = *(v2 + 681);
    v19 = v2[37];
    v245[2] = v2[36];
    v245[3] = v19;
    v20 = v2[39];
    v245[4] = v2[38];
    v245[5] = v20;
    v21 = v2[35];
    v134 = v2;
    v245[0] = v2[34];
    v245[1] = v21;
    if (sub_1AF448314(v245) != 1)
    {
      v22 = *(&v245[0] + 1);
      ObjectType = swift_getObjectType();
      v24 = *(v22 + 80);
      swift_unknownObjectRetain();
      v25 = v24(ObjectType, v22);
      swift_unknownObjectRelease();
      sub_1AF46749C(v25, v196);
      v26 = v2[41];
      v243[6] = v2[40];
      v243[7] = v26;
      v244[0] = v2[42];
      *(v244 + 9) = *(v2 + 681);
      v27 = v2[37];
      v243[2] = v2[36];
      v243[3] = v27;
      v28 = v2[39];
      v243[4] = v2[38];
      v243[5] = v28;
      v29 = v2[35];
      v243[0] = v2[34];
      v243[1] = v29;
      if (sub_1AF448314(v243) != 1)
      {
        v30 = *(&v243[0] + 1);
        v31 = swift_getObjectType();
        v32 = *(v30 + 80);
        swift_unknownObjectRetain();
        v32(v31, v30);
        v34 = v33;
        swift_unknownObjectRelease();
        sub_1AF4674A4(v34, v196);
        v35 = v134;
        sub_1AF46748C(*(v134 + 36), v196);
        sub_1AFA4DCA8(v196);
        sub_1AF48F3EC(v196);
        sub_1AF4674D0(v196);
        if (sub_1AF8DB86C(v196[0], v196[1], v197 | (v198 << 16)) <= 1)
        {

          return;
        }

        v135 = *(v4 + OBJC_IVAR____TtC3VFX13EntityManager_isInPrepare);
        v36 = *(v4 + OBJC_IVAR____TtC3VFX13EntityManager_shaderArchive);
        v37 = *(v134 + 25);
        sub_1AF0D879C(v247, 9);
        v39 = *(&v247[0] + 1);
        v38 = *&v247[0];

        v129 = v36;
        v40 = sub_1AF750DEC(v38, v39, 0, 0, 0, 1, 1);
        sub_1AF0D8F38(v247);

        v124 = v13;
        if (v40)
        {
          v127 = 0;
        }

        else
        {

          v40 = sub_1AFBE4EC4();

          v127 = *(v134 + 456);
        }

        sub_1AF0D879C(&v248, 10);
        v41 = v248;

        v42 = sub_1AF750DEC(v41, *(&v41 + 1), 0, 0, 0, 1, 1);

        v130 = v40;
        if (v42)
        {
          sub_1AF0D8F38(&v248);
        }

        else
        {
          v43 = v253;
          v44 = 32;
          if (!v253)
          {
            v44 = 1;
          }

          if (v254)
          {
            v43 = v44;
          }

          v366 = v252;
          v365 = v251;
          v367 = v251;
          v368 = v252;
          v369 = v249;
          v370 = v43;
          v371 = v250;
          v372 = 0u;
          v373 = 0u;
          v45 = *(v37 + 16);
          v46 = v45[38];
          v335 = v45[39];
          v334 = v46;
          v47 = v45[36];
          v333 = v45[37];
          v332 = v47;
          v48 = v45[41];
          *v338 = v45[42];
          v49 = v45[40];
          v337 = v48;
          v336 = v49;
          v50 = v45[34];
          v331 = v45[35];
          v330 = v50;
          *&v338[9] = *(v45 + 681);

          if (sub_1AF448314(&v330) == 1)
          {
            goto LABEL_69;
          }

          v51 = *(&v330 + 1);
          v52 = swift_getObjectType();
          v53 = *(v51 + 80);
          swift_unknownObjectRetain();
          v54 = v53(v52, v51);
          v56 = v55;

          swift_unknownObjectRelease();
          v57 = sub_1AFBE973C(0, 2, v54, v56);
          v59 = v58;
          v61 = v60;

          v42 = sub_1AF750DEC(v41, *(&v41 + 1), v57, v59, v61, 0, 1);
          sub_1AF0D8F38(&v248);

          if (!v42)
          {

            swift_unknownObjectRelease();
            return;
          }

          v35 = v134;
        }

        swift_getObjectType();
        v62 = sub_1AF473274() - 3;
        if (v15 < v62)
        {
          v62 = v15;
        }

        if (v62 <= 2)
        {
          v63 = 2;
        }

        else
        {
          v63 = v62;
        }

        v64 = *(v35 + 24);

        CFXTextureDescriptorFromMTLTexture(v42, &v330, v65, v66);
        v67 = sub_1AF750DEC(0x4D545F4D4F4F4C42, 0xE900000000000050, v330, *(&v330 + 1), v331, 0, 0);

        if (!v67)
        {
          swift_unknownObjectRelease();

          swift_unknownObjectRelease();
          return;
        }

        v122 = v64;
        v123 = v42;
        v68 = [v67 pixelFormat];
        v240[0] = v14;
        v241 = v132;
        v242 = v17;
        sub_1AF88DCAC();
        v69 = swift_allocObject();
        *(v69 + 16) = xmmword_1AFE431C0;
        *(v69 + 32) = xmmword_1AFE96850;
        *(v69 + 48) = 0;
        *(v69 + 64) = v127;
        *(v69 + 128) = 13;
        sub_1AF8989FC(0xD000000000000010, 0x80000001AFF39ED0, 0x68745F6D6F6F6C62, 0xEF646C6F68736572, v69, v255);

        v237 = v255[8];
        v238 = v255[9];
        v239 = v255[10];
        v233 = v255[4];
        v234 = v255[5];
        v236 = v255[7];
        v235 = v255[6];
        v229 = v255[0];
        v230 = v255[1];
        v232 = v255[3];
        v231 = v255[2];
        sub_1AF5FF2F0(&v154);
        v156 = xmmword_1AFE68E40;
        v157 = xmmword_1AFE68E40;
        v154 = xmmword_1AFE68E40;
        v155 = xmmword_1AFE68E40;
        v158 = xmmword_1AFE68E40;
        v159 = xmmword_1AFE68E40;
        v160 = xmmword_1AFE68E40;
        v161 = xmmword_1AFE68E40;
        sub_1AFDFF308();
        sub_1AF6021F8(v255, &v330);
        sub_1AF89747C(&v294);
        sub_1AF602254(v255);
        MEMORY[0x1B271ACB0](v68);
        MEMORY[0x1B271ACB0](0);
        MEMORY[0x1B271ACB0](0);
        MEMORY[0x1B271ACB0](0);
        MEMORY[0x1B271ACB0](0);
        MEMORY[0x1B271ACB0](0);
        MEMORY[0x1B271ACB0](0);
        MEMORY[0x1B271ACB0](0);
        MEMORY[0x1B271ACB0](0);
        MEMORY[0x1B271ACB0](0);
        sub_1AFDFF2A8();
        v185 = v154;
        v186 = v155;
        v187 = v156;
        v188 = v157;
        sub_1AF5FF304();
        sub_1AFDFF2A8();
        sub_1AFDFF2A8();
        MEMORY[0x1B271ACB0](3);
        sub_1AFDFF2A8();
        sub_1AFDFF2A8();
        v182 = v296;
        v183 = v297;
        v184 = v298;
        v180 = v294;
        v181 = v295;
        v70 = sub_1AFDFF2E8();
        *v338 = v237;
        *&v338[16] = v238;
        v339 = v239;
        v334 = v233;
        v335 = v234;
        v337 = v236;
        v336 = v235;
        v330 = v229;
        v331 = v230;
        v333 = v232;
        v332 = v231;
        v341 = 0u;
        v342 = 0u;
        v343 = 0u;
        v344 = 0u;
        v340 = v68;
        v345 = 0;
        v346 = 1;
        *v347 = *v194;
        *&v347[3] = *&v194[3];
        v348 = v158;
        v349 = v159;
        v350 = v160;
        v351 = v161;
        v353 = 0;
        v352 = 0;
        v354 = 3;
        v355 = 0;
        v356 = 0;
        v357 = 2;
        v360 = 0;
        v358 = 0;
        v359 = 0;
        v361 = 257;
        v362 = v192[2];
        v363 = v193;
        v364 = v70;

        v71 = sub_1AF730058(&v330);
        v73 = v72;
        v75 = v74;
        v76 = v74;

        v133 = v67;
        if (v76)
        {
          v126 = 0;
        }

        else
        {
          swift_unknownObjectRetain();
          v75 = 0;
          v126 = v71;
        }

        sub_1AF6022A8(v71, v73, v75);
        v77 = swift_allocObject();
        v78 = v124 & 1;
        *(v77 + 16) = xmmword_1AFE431C0;
        *(v77 + 32) = xmmword_1AFE96860;
        *(v77 + 48) = 0;
        *(v77 + 64) = v124 & 1;
        *(v77 + 128) = 13;
        sub_1AF8989FC(0xD000000000000010, 0x80000001AFF39ED0, 0xD000000000000011, 0x80000001AFF44DD0, v77, v256);

        v222 = v256[8];
        v223 = v256[9];
        v224 = v256[10];
        v218 = v256[4];
        v219 = v256[5];
        v221 = v256[7];
        v220 = v256[6];
        v214 = v256[0];
        v215 = v256[1];
        v217 = v256[3];
        v216 = v256[2];
        v192[0] = *v195;
        *(v192 + 3) = *&v195[3];
        sub_1AF5FF2F0(&v146);
        v148 = xmmword_1AFE68E40;
        v149 = xmmword_1AFE68E40;
        v146 = xmmword_1AFE68E40;
        v147 = xmmword_1AFE68E40;
        v150 = xmmword_1AFE68E40;
        v151 = xmmword_1AFE68E40;
        v152 = xmmword_1AFE68E40;
        v153 = xmmword_1AFE68E40;
        sub_1AFDFF308();
        sub_1AF6021F8(v256, &v294);
        sub_1AF89747C(&v258);
        sub_1AF602254(v256);
        MEMORY[0x1B271ACB0](v68);
        MEMORY[0x1B271ACB0](0);
        MEMORY[0x1B271ACB0](0);
        MEMORY[0x1B271ACB0](0);
        MEMORY[0x1B271ACB0](0);
        MEMORY[0x1B271ACB0](0);
        MEMORY[0x1B271ACB0](0);
        MEMORY[0x1B271ACB0](0);
        MEMORY[0x1B271ACB0](0);
        MEMORY[0x1B271ACB0](0);
        sub_1AFDFF2A8();
        v176 = v146;
        v177 = v147;
        v178 = v148;
        v179 = v149;
        sub_1AF5FF304();
        sub_1AFDFF2A8();
        sub_1AFDFF2A8();
        MEMORY[0x1B271ACB0](3);
        sub_1AFDFF2A8();
        sub_1AFDFF2A8();
        v173 = v260;
        v174 = v261;
        v175 = v262;
        v171 = v258;
        v172 = v259;
        v79 = sub_1AFDFF2E8();
        v302 = v222;
        v303 = v223;
        v304 = v224;
        v298 = v218;
        v299 = v219;
        v301 = v221;
        v300 = v220;
        v294 = v214;
        v295 = v215;
        v297 = v217;
        v296 = v216;
        v306 = 0u;
        v307 = 0u;
        v308 = 0u;
        v309 = 0u;
        v305 = v68;
        v310 = 0;
        v311 = 1;
        *v312 = v192[0];
        *&v312[3] = *(v192 + 3);
        v313 = v150;
        v314 = v151;
        v315 = v152;
        v316 = v153;
        v318 = 0;
        v317 = 0;
        v319 = 3;
        v320 = 0;
        v321 = 0;
        v322 = 2;
        v325 = 0;
        v323 = 0;
        v324 = 0;
        v326 = 257;
        v327 = *&v191[5];
        v328 = v191[7];
        v329 = v79;

        v80 = sub_1AF730058(&v294);
        v82 = v81;
        v84 = v83;
        v85 = v83;

        if (v85)
        {
          v125 = 0;
        }

        else
        {
          swift_unknownObjectRetain();
          v84 = 0;
          v125 = v80;
        }

        sub_1AF6022A8(v80, v82, v84);
        v86 = swift_allocObject();
        *(v86 + 16) = xmmword_1AFE4C620;
        *(v86 + 32) = xmmword_1AFE96860;
        *(v86 + 48) = 0;
        *(v86 + 49) = *v228;
        *(v86 + 56) = *&v228[7];
        *(v86 + 64) = v78;
        v87 = v226;
        *(v86 + 65) = v225;
        *(v86 + 81) = v87;
        *(v86 + 97) = *v227;
        *(v86 + 112) = *&v227[15];
        *(v86 + 128) = 13;
        *(v86 + 144) = xmmword_1AFE96870;
        *(v86 + 160) = 0;
        *(v86 + 176) = 1;
        *(v86 + 240) = 13;
        sub_1AF8989FC(0xD000000000000010, 0x80000001AFF39ED0, 0xD00000000000001DLL, 0x80000001AFF44DF0, v86, v257);

        v211 = v257[8];
        v212 = v257[9];
        v213 = v257[10];
        v207 = v257[4];
        v208 = v257[5];
        v210 = v257[7];
        v209 = v257[6];
        v203 = v257[0];
        v204 = v257[1];
        v206 = v257[3];
        v205 = v257[2];
        *v191 = *v195;
        *(&v191[1] + 1) = *&v195[3];
        sub_1AF5FF2F0(&v138);
        v140 = xmmword_1AFE68E40;
        v141 = xmmword_1AFE68E40;
        v138 = xmmword_1AFE68E40;
        v139 = xmmword_1AFE68E40;
        v142 = xmmword_1AFE68E40;
        v143 = xmmword_1AFE68E40;
        v144 = xmmword_1AFE68E40;
        v145 = xmmword_1AFE68E40;
        sub_1AFDFF308();
        sub_1AF6021F8(v257, &v258);
        sub_1AF89747C(v201);
        sub_1AF602254(v257);
        MEMORY[0x1B271ACB0](v68);
        MEMORY[0x1B271ACB0](0);
        MEMORY[0x1B271ACB0](0);
        MEMORY[0x1B271ACB0](0);
        MEMORY[0x1B271ACB0](0);
        MEMORY[0x1B271ACB0](0);
        MEMORY[0x1B271ACB0](0);
        MEMORY[0x1B271ACB0](0);
        MEMORY[0x1B271ACB0](0);
        MEMORY[0x1B271ACB0](0);
        sub_1AFDFF2A8();
        v167 = v138;
        v168 = v139;
        v169 = v140;
        v170 = v141;
        sub_1AF5FF304();
        sub_1AFDFF2A8();
        sub_1AFDFF2A8();
        MEMORY[0x1B271ACB0](3);
        sub_1AFDFF2A8();
        sub_1AFDFF2A8();
        v164 = v201[2];
        v165 = v201[3];
        v166 = v202;
        v162 = v201[0];
        v163 = v201[1];
        v88 = sub_1AFDFF2E8();
        v266 = v211;
        v267 = v212;
        v268 = v213;
        v262 = v207;
        v263 = v208;
        v265 = v210;
        v264 = v209;
        v258 = v203;
        v259 = v204;
        v261 = v206;
        v260 = v205;
        v270 = 0u;
        v271 = 0u;
        v272 = 0u;
        v273 = 0u;
        v269 = v68;
        v274 = 0;
        v275 = 1;
        *v276 = *v191;
        *&v276[3] = *(&v191[1] + 1);
        v277 = v142;
        v278 = v143;
        v279 = v144;
        v280 = v145;
        v282 = 0;
        v281 = 0;
        v283 = 3;
        v284 = 0;
        v285 = 0;
        v286 = 2;
        v289 = 0;
        v287 = 0;
        v288 = 0;
        v290 = 257;
        v291 = v189;
        v292 = v190;
        v293 = v88;

        v89 = sub_1AF730058(&v258);
        v91 = v90;
        v93 = v92;
        v94 = v92;

        if (v94)
        {
          v131 = 0;
        }

        else
        {
          swift_unknownObjectRetain();
          v93 = 0;
          v131 = v89;
        }

        sub_1AF6022A8(v89, v91, v93);
        if (v135)
        {
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          sub_1AF602304(&v258);
          sub_1AF602304(&v294);
          sub_1AF602304(&v330);
          v95 = v122;
LABEL_61:

          v119 = sub_1AF8509C8(0x4D545F4D4F4F4C42, 0xE900000000000050);
          if (v119)
          {
            CFXTextureAllocatorPerFrameFree(*(v95 + 16), v119);
            swift_unknownObjectRelease();

            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
          }

          else
          {
            if (qword_1ED730EA0 != -1)
            {
              swift_once();
            }

            v120 = sub_1AFDFDA08();
            if (qword_1ED731058 != -1)
            {
              v121 = v120;
              swift_once();
              v120 = v121;
            }

            v137[0] = 0;
            sub_1AF0D4F18(v120, v137, 0xD00000000000001ELL, 0x80000001AFF44E90);
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
          }

          swift_unknownObjectRelease();
          return;
        }

        if (v126 && v125 && v131)
        {
          v128 = *(v35 + 35);
          v96 = *(v128 + 16);
          if (v96)
          {
            *&v201[0] = 0x6D6F6F6C42;
            *(&v201[0] + 1) = 0xE500000000000000;
            swift_unknownObjectRetain();
            sub_1AFDFD1E8();
            v97 = sub_1AFDFCEC8();

            [v96 pushDebugGroup_];

            swift_unknownObjectRelease();
          }

          v98 = objc_allocWithZone(MEMORY[0x1E6974128]);
          swift_unknownObjectRetain();
          v99 = [v98 init];
          v100 = [v99 colorAttachments];
          v101 = [v100 objectAtIndexedSubscript_];

          [v101 setTexture_];
          [v101 setLoadAction_];
          [v101 setStoreAction_];
          [v101 setClearColor_];
          [v101 setLevel_];

          sub_1AF7180FC();

          v102 = sub_1AF6F3D60(v99, 0, 0);
          sub_1AF474680(v199);
          swift_getObjectType();
          [v102 setRenderPipelineState_];
          [v102 setFragmentTexture:v130 atIndex:0];
          *&v201[0] = v16;
          [v102 setFragmentBytes:v201 length:8 atIndex:0];
          v103 = 1;
          sub_1AF6F5B7C(1);

          swift_unknownObjectRelease();

          do
          {
            v104 = objc_allocWithZone(MEMORY[0x1E6974128]);
            swift_unknownObjectRetain();
            v105 = [v104 init];
            v106 = [v105 colorAttachments];
            v107 = [v106 objectAtIndexedSubscript_];

            [v107 setTexture_];
            [v107 setLoadAction_];
            [v107 setStoreAction_];
            [v107 setClearColor_];
            [v107 setLevel_];
            swift_unknownObjectRelease();

            sub_1AF7180FC();

            v108 = sub_1AF6F3D60(v105, 0, 0);
            sub_1AF474680(v200);
            swift_getObjectType();
            [v108 setRenderPipelineState_];
            [v108 setFragmentTexture:v133 atIndex:0];
            *v201 = (v103 - 1);
            [v108 setFragmentBytes:v201 length:4 atIndex:0];
            sub_1AF6F5B7C(1);

            swift_unknownObjectRelease();

            ++v103;
          }

          while (v103 != v63);
          swift_unknownObjectRelease();
          v109 = 0;
          v110 = v63 - 1;
          do
          {
            v136 = v110;
            v111 = v110 - 1;
            v112 = objc_allocWithZone(MEMORY[0x1E6974128]);
            swift_unknownObjectRetain_n();
            v113 = [v112 init];
            v114 = [v113 colorAttachments];
            v115 = [v114 objectAtIndexedSubscript_];

            [v115 setTexture_];
            [v115 setLoadAction_];
            [v115 setStoreAction_];
            [v115 setClearColor_];
            [v115 setLevel_];
            swift_unknownObjectRelease_n();

            sub_1AF7180FC();

            v116 = sub_1AF6F3D60(v113, 0, 0);
            sub_1AF474680(v201);
            swift_getObjectType();
            [v116 setRenderPipelineState_];
            if (v109)
            {
              v117 = v123;
            }

            else
            {
              v117 = v133;
            }

            [v116 setFragmentTexture:v117 atIndex:0];
            [v116 setFragmentTexture:v133 atIndex:1];
            *&v118 = v136;
            *(&v118 + 1) = v111;
            v137[0] = v118;
            [v116 setFragmentBytes:v137 length:8 atIndex:0];
            [v116 setFragmentBytes:v240 length:48 atIndex:1];
            sub_1AF6F5B7C(1);

            swift_unknownObjectRelease();

            ++v109;
            v110 = v111;
          }

          while (v111);
          if (*(v128 + 16))
          {
            [swift_unknownObjectRetain() popDebugGroup];
            sub_1AF602304(&v258);
            sub_1AF602304(&v294);
            sub_1AF602304(&v330);
            swift_unknownObjectRelease();
          }

          else
          {
            sub_1AF602304(&v258);
            sub_1AF602304(&v294);
            sub_1AF602304(&v330);
          }

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          v95 = v122;
          goto LABEL_61;
        }
      }
    }

    while (1)
    {
LABEL_69:
      sub_1AFDFE518();
      __break(1u);
    }
  }

  os_unfair_recursive_lock_unlock();
}

void sub_1AFA4DCF0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = *(a2 + 200);
    v4 = *(v3 + 24);
    if (v4 != 2)
    {
      if ((v4 & 0x100000000) == 0)
      {
        return;
      }

      v6 = *(v3 + 40);
      v5 = *(v3 + 44);
      sub_1AF0D879C(&v181, 6);
      v7 = v181;

      v8 = sub_1AF750DEC(v7, *(&v7 + 1), 0, 0, 0, 1, 1);

      if (v8)
      {
        sub_1AF0D8F38(&v181);
      }

      else
      {
        v157 = v2;
        v9 = v186;
        v10 = 32;
        if (!v186)
        {
          v10 = 1;
        }

        if (v187)
        {
          v9 = v10;
        }

        v279 = v184;
        v280 = v185;
        v281 = v184;
        v282 = v185;
        v283 = v182;
        v284 = v9;
        v285 = v183;
        v286 = 0u;
        v287 = 0u;
        v11 = *(v3 + 16);
        v12 = v11[38];
        *&__dst[80] = v11[39];
        *&__dst[64] = v12;
        v13 = v11[36];
        *&__dst[48] = v11[37];
        *&__dst[32] = v13;
        v14 = v11[41];
        *&__dst[128] = v11[42];
        v15 = v11[40];
        *&__dst[112] = v14;
        *&__dst[96] = v15;
        v16 = v11[34];
        *&__dst[16] = v11[35];
        *__dst = v16;
        *&__dst[137] = *(v11 + 681);

        if (sub_1AF448314(__dst) == 1)
        {
          goto LABEL_71;
        }

        v17 = v3;
        v18 = *&__dst[8];
        ObjectType = swift_getObjectType();
        v20 = *(v18 + 80);
        swift_unknownObjectRetain();
        v21 = v20(ObjectType, v18);
        v23 = v22;

        swift_unknownObjectRelease();
        v24 = sub_1AFBE973C(0, 2, v21, v23);
        v26 = v25;
        LODWORD(ObjectType) = v27;

        v8 = sub_1AF750DEC(v7, *(&v7 + 1), v24, v26, ObjectType, 0, 1);
        sub_1AF0D8F38(&v181);

        v3 = v17;
        v2 = v157;
      }

      v28 = [objc_allocWithZone(MEMORY[0x1E6974128]) init];
      v29 = [v28 colorAttachments];
      v30 = [v29 objectAtIndexedSubscript_];

      [v30 setTexture_];
      [v30 setLoadAction_];
      [v30 setStoreAction_];
      [v30 setClearColor_];
      [v30 setLevel_];

      sub_1AFDFE238();

      sub_1AF7180FC();

      v154 = sub_1AF6F3D60(v28, 0, 0);
      sub_1AF709E8C(v154);

      sub_1AF0D879C(v188, 0);
      v31 = v188[0];

      v156 = sub_1AF750DEC(v31, *(&v31 + 1), 0, 0, 0, 1, 1);
      sub_1AF0D8F38(v188);

      sub_1AF0D879C(v189, 4);
      v153 = v3;
      v32 = v189[0];

      v155 = sub_1AF750DEC(v32, *(&v32 + 1), 0, 0, 0, 1, 1);
      sub_1AF0D8F38(v189);

      v33 = log2f(v6);
      v34 = log2f(v5);
      v35 = *(v2 + 392);
      v36 = *(v2 + 656);
      v179[6] = *(v2 + 640);
      v179[7] = v36;
      v180[0] = *(v2 + 672);
      *(v180 + 9) = *(v2 + 681);
      v37 = *(v2 + 592);
      v179[2] = *(v2 + 576);
      v179[3] = v37;
      v38 = *(v2 + 624);
      v179[4] = *(v2 + 608);
      v179[5] = v38;
      v39 = *(v2 + 560);
      v179[0] = *(v2 + 544);
      v179[1] = v39;
      v158 = v28;
      if (sub_1AF448314(v179) != 1)
      {
        v40 = v4 & 0x10000;
        v41 = v4 & 0x1000000;
        v151 = v34;
        v42 = (1 - v34);
        v149 = v33;
        v43 = (1 - v33);
        v44 = *(&v179[0] + 1);
        v45 = swift_getObjectType();
        v148 = v35;
        v46 = *(v44 + 112);
        swift_unknownObjectRetain();
        v47 = v46(v45, v44);
        swift_unknownObjectRelease();
        v126 = v47 == 1;
        v48 = v47 != 1;
        if (v126)
        {
          v49 = 0;
        }

        else
        {
          v49 = 5;
        }

        sub_1AF88DCAC();
        v50 = swift_allocObject();
        v152 = v41;
        v175 = 0;
        *(v50 + 16) = xmmword_1AFE4C6A0;
        *(v50 + 32) = xmmword_1AFE968C0;
        *(v50 + 48) = 0;
        *(v50 + 64) = BYTE3(v41);
        *(v50 + 128) = 13;
        v176 = 0;
        *(v50 + 144) = xmmword_1AFE968D0;
        *(v50 + 160) = 0;
        *(v50 + 176) = v43;
        *(v50 + 240) = 0;
        v150 = v40;
        v177 = 0;
        *(v50 + 256) = xmmword_1AFE968E0;
        *(v50 + 272) = 0;
        *(v50 + 288) = BYTE2(v40);
        *(v50 + 352) = 13;
        v178 = 0;
        *(v50 + 368) = xmmword_1AFE968F0;
        *(v50 + 384) = 0;
        *(v50 + 400) = v42;
        *(v50 + 464) = 0;
        v174 = 0;
        *(v50 + 480) = xmmword_1AFE96900;
        *(v50 + 496) = 0;
        *(v50 + 512) = (v41 != 0) & (v35 ^ 1);
        *(v50 + 576) = 13;
        sub_1AF8989FC(0xD000000000000010, 0x80000001AFF39ED0, 0x7469736F706D6F63, 0xE900000000000065, v50, v190);

        sub_1AF474680(&v191);
        __src[8] = v190[8];
        __src[9] = v190[9];
        __src[4] = v190[4];
        __src[5] = v190[5];
        __src[6] = v190[6];
        __src[7] = v190[7];
        __src[0] = v190[0];
        __src[1] = v190[1];
        __src[2] = v190[2];
        __src[3] = v190[3];
        __src[14] = v194;
        __src[15] = v195;
        *&__src[16] = v196;
        __src[10] = v190[10];
        __src[11] = v191;
        __src[12] = v192;
        __src[13] = v193;
        sub_1AF5FF2F0(v170);
        *&v170[23] = xmmword_1AFE96910;
        *&v170[39] = xmmword_1AFE96910;
        *&v170[55] = 0x10000010F0000;
        v170[63] = 0;
        *&v170[1] = 271;
        v170[3] = v49;
        *&v170[4] = 256;
        v170[6] = v49;
        *&v170[7] = xmmword_1AFE96910;
        v170[0] = v48;
        *(&__src[16] + 8) = *v170;
        *(&__src[17] + 8) = *&v170[16];
        *(&__src[18] + 8) = *&v170[32];
        *(&__src[19] + 8) = *&v170[48];
        sub_1AFDFF308();
        sub_1AF6021F8(v190, __dst);
        sub_1AF89747C(v169);
        sub_1AF602254(v190);
        v51 = *(&v191 + 1);
        v52 = v192;
        v53 = v193;
        v54 = v194;
        MEMORY[0x1B271ACB0](v191);
        MEMORY[0x1B271ACB0](v51);
        MEMORY[0x1B271ACB0](v52);
        MEMORY[0x1B271ACB0](*(&v52 + 1));
        MEMORY[0x1B271ACB0](v53);
        MEMORY[0x1B271ACB0](*(&v53 + 1));
        MEMORY[0x1B271ACB0](v54);
        MEMORY[0x1B271ACB0](*(&v54 + 1));
        MEMORY[0x1B271ACB0](v195);
        MEMORY[0x1B271ACB0](*(&v195 + 1));
        sub_1AFDFF2A8();
        v275 = *v170;
        v276 = *&v170[16];
        v277 = *&v170[32];
        v278 = *&v170[48];
        sub_1AF5FF304();
        sub_1AFDFF2A8();
        sub_1AFDFF2A8();
        MEMORY[0x1B271ACB0](3);
        sub_1AFDFF2A8();
        sub_1AFDFF2A8();
        v55 = sub_1AFDFF2E8();
        memcpy(__dst, __src, sizeof(__dst));
        v263 = 0;
        v262 = 0;
        v264 = 3;
        v265 = 0;
        v266 = 0;
        v267 = 2;
        v270 = 0;
        v268 = 0;
        v269 = 0;
        v271 = 257;
        v272 = v171;
        v273 = v172;
        v274 = v55;
        v56 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_shaderArchive);

        v57 = sub_1AF730058(__dst);
        v59 = v58;
        v61 = v60;
        v62 = v60;

        if (v62)
        {
          sub_1AF6022A8(v57, v59, v61);
          sub_1AF602304(__dst);

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          return;
        }

        v63 = swift_unknownObjectRetain();
        sub_1AF6022A8(v63, v59, 0);
        v64 = v154;
        swift_getObjectType();
        [v154 setRenderPipelineState_];
        [v154 setFragmentTexture:v156 atIndex:0];
        [v154 setFragmentTexture:v155 atIndex:1];
        v65 = v41;
        if (v41)
        {
          sub_1AF0D879C(&v197, 7);
          v66 = v197;

          v67 = sub_1AF750DEC(v66, *(&v66 + 1), 0, 0, 0, 1, 1);

          if (v67)
          {
            sub_1AF0D8F38(&v197);
          }

          else
          {
            v68 = v202;
            v69 = 32;
            if (!v202)
            {
              v69 = 1;
            }

            if (v203)
            {
              v68 = v69;
            }

            v252 = v200;
            v253 = v201;
            v254 = v200;
            v255 = v201;
            v256 = v198;
            v257 = v68;
            v258 = v199;
            v259 = 0u;
            v260 = 0u;
            v70 = *(v153 + 16);
            v71 = v70[39];
            v164 = v70[38];
            v165 = v71;
            v72 = v70[37];
            v162 = v70[36];
            v163 = v72;
            v73 = v70[42];
            v167 = v70[41];
            v168[0] = v73;
            v166 = v70[40];
            v74 = v70[35];
            v160 = v70[34];
            v161 = v74;
            *(v168 + 9) = *(v70 + 681);

            if (sub_1AF448314(&v160) == 1)
            {
              goto LABEL_71;
            }

            v75 = *(&v160 + 1);
            v76 = swift_getObjectType();
            v77 = *(v75 + 80);
            swift_unknownObjectRetain();
            v78 = v77(v76, v75);
            v80 = v79;

            swift_unknownObjectRelease();
            v81 = sub_1AFBE973C(0, 2, v78, v80);
            v83 = v82;
            LODWORD(v77) = v84;

            v67 = sub_1AF750DEC(v66, *(&v66 + 1), v81, v83, v77, 0, 1);
            sub_1AF0D8F38(&v197);

            v64 = v154;
            v65 = v152;
          }

          [v64 setFragmentTexture:v67 atIndex:2];
          if ((v148 & 1) == 0)
          {
            sub_1AF0D879C(&v204, 14);
            v85 = v204;

            v86 = sub_1AF750DEC(v85, *(&v85 + 1), 0, 0, 0, 1, 1);

            if (v86)
            {
              sub_1AF0D8F38(&v204);
            }

            else
            {
              v87 = v209;
              v88 = 32;
              if (!v209)
              {
                v88 = 1;
              }

              if (v210)
              {
                v87 = v88;
              }

              v243 = v207;
              v244 = v208;
              v245 = v207;
              v246 = v208;
              v247 = v205;
              v248 = v87;
              v249 = v206;
              v250 = 0u;
              v251 = 0u;
              v89 = *(v153 + 16);
              v90 = v89[39];
              v164 = v89[38];
              v165 = v90;
              v91 = v89[37];
              v162 = v89[36];
              v163 = v91;
              v92 = v89[42];
              v167 = v89[41];
              v168[0] = v92;
              v166 = v89[40];
              v93 = v89[35];
              v160 = v89[34];
              v161 = v93;
              *(v168 + 9) = *(v89 + 681);

              if (sub_1AF448314(&v160) == 1)
              {
                goto LABEL_71;
              }

              v94 = *(&v160 + 1);
              v95 = swift_getObjectType();
              v96 = *(v94 + 80);
              swift_unknownObjectRetain();
              v97 = v96(v95, v94);
              v99 = v98;

              swift_unknownObjectRelease();
              v100 = sub_1AFBE973C(0, 2, v97, v99);
              v102 = v101;
              LODWORD(v95) = v103;

              v86 = sub_1AF750DEC(v85, *(&v85 + 1), v100, v102, v95, 0, 1);
              sub_1AF0D8F38(&v204);

              v64 = v154;
              v65 = v152;
            }

            [v64 setFragmentTexture:v86 atIndex:5];
            swift_unknownObjectRelease();
          }

          swift_unknownObjectRelease();
        }

        v105 = v149;
        v104 = v150;
        v106 = v151;
        if (v150)
        {
          sub_1AF0D879C(&v211, 8);
          v107 = v211;

          v108 = sub_1AF750DEC(v107, *(&v107 + 1), 0, 0, 0, 1, 1);

          if (v108)
          {
            sub_1AF0D8F38(&v211);
          }

          else
          {
            v109 = v216;
            v110 = 32;
            if (!v216)
            {
              v110 = 1;
            }

            if (v217)
            {
              v109 = v110;
            }

            v234 = v214;
            v235 = v215;
            v236 = v214;
            v237 = v215;
            v238 = v212;
            v239 = v109;
            v240 = v213;
            v241 = 0u;
            v242 = 0u;
            v111 = *(v153 + 16);
            v112 = v111[39];
            v164 = v111[38];
            v165 = v112;
            v113 = v111[37];
            v162 = v111[36];
            v163 = v113;
            v114 = v111[42];
            v167 = v111[41];
            v168[0] = v114;
            v166 = v111[40];
            v115 = v111[35];
            v160 = v111[34];
            v161 = v115;
            *(v168 + 9) = *(v111 + 681);

            if (sub_1AF448314(&v160) == 1)
            {
              goto LABEL_71;
            }

            v116 = *(&v160 + 1);
            v117 = swift_getObjectType();
            v118 = *(v116 + 80);
            swift_unknownObjectRetain();
            v119 = v118(v117, v116);
            v121 = v120;

            swift_unknownObjectRelease();
            v122 = sub_1AFBE973C(0, 2, v119, v121);
            v124 = v123;
            LODWORD(v118) = v125;

            v108 = sub_1AF750DEC(v107, *(&v107 + 1), v122, v124, v118, 0, 1);
            sub_1AF0D8F38(&v211);

            v64 = v154;
            v105 = v149;
            v104 = v150;
          }

          [v64 setFragmentTexture:v108 atIndex:3];
          swift_unknownObjectRelease();
          v106 = v151;
          v65 = v152;
        }

        if (v104)
        {
          v126 = v106 == 1;
        }

        else
        {
          v126 = 1;
        }

        v127 = v126;
        v128 = v105 == 1 || v65 == 0;
        if (v128 && (v127 & 1) != 0)
        {
          goto LABEL_69;
        }

        sub_1AF0D879C(&v218, 5);
        v129 = v218;

        v130 = sub_1AF750DEC(v129, *(&v129 + 1), 0, 0, 0, 1, 1);

        if (v130)
        {
          sub_1AF0D8F38(&v218);
LABEL_68:
          [v64 setFragmentTexture:v130 atIndex:4];
          swift_unknownObjectRelease();
LABEL_69:
          sub_1AF6F5B7C(1);
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          swift_unknownObjectRelease();

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          sub_1AF602304(__dst);
          return;
        }

        v131 = v223;
        v132 = 32;
        if (!v223)
        {
          v132 = 1;
        }

        if (v224)
        {
          v131 = v132;
        }

        v225 = v221;
        v226 = v222;
        v227 = v221;
        v228 = v222;
        v229 = v219;
        v230 = v131;
        v231 = v220;
        v232 = 0u;
        v233 = 0u;
        v133 = *(v153 + 16);
        v134 = v133[39];
        v164 = v133[38];
        v165 = v134;
        v135 = v133[37];
        v162 = v133[36];
        v163 = v135;
        v136 = v133[42];
        v167 = v133[41];
        v168[0] = v136;
        v166 = v133[40];
        v137 = v133[35];
        v160 = v133[34];
        v161 = v137;
        *(v168 + 9) = *(v133 + 681);

        if (sub_1AF448314(&v160) != 1)
        {
          v138 = *(&v160 + 1);
          v139 = swift_getObjectType();
          v140 = *(v138 + 80);
          swift_unknownObjectRetain();
          v141 = v140(v139, v138);
          v143 = v142;

          swift_unknownObjectRelease();
          v144 = sub_1AFBE973C(0, 2, v141, v143);
          v146 = v145;
          LODWORD(v140) = v147;

          v130 = sub_1AF750DEC(v129, *(&v129 + 1), v144, v146, v140, 0, 1);
          sub_1AF0D8F38(&v218);

          v64 = v154;
          goto LABEL_68;
        }
      }
    }

LABEL_71:
    sub_1AFDFE518();
    __break(1u);
  }
}

double sub_1AFA4F054(void *a1, __int128 *a2, uint64_t a3, uint64_t a4, id *a5)
{
  if (a4)
  {
    v6 = 0xD000000000000010;
  }

  else
  {
    v6 = 0x7065645F79706F63;
  }

  if (a4)
  {
    v7 = 0x80000001AFF44F80;
  }

  else
  {
    v7 = 0xEA00000000006874;
  }

  sub_1AF8989FC(0xD000000000000010, 0x80000001AFF39ED0, v6, v7, MEMORY[0x1E69E7CC0], v42);

  __src[8] = v42[8];
  __src[9] = v42[9];
  __src[4] = v42[4];
  __src[5] = v42[5];
  __src[6] = v42[6];
  __src[7] = v42[7];
  __src[0] = v42[0];
  __src[1] = v42[1];
  __src[2] = v42[2];
  __src[3] = v42[3];
  v8 = a2[2];
  v9 = a2[4];
  __src[14] = a2[3];
  __src[15] = v9;
  v10 = *a2;
  v11 = a2[1];
  __src[10] = v42[10];
  __src[11] = v10;
  *&__src[16] = *(a2 + 10);
  __src[12] = v11;
  __src[13] = v8;
  sub_1AF5FF2F0(&v35);
  v37 = xmmword_1AFE68E40;
  v38 = xmmword_1AFE68E40;
  v35 = xmmword_1AFE68E40;
  v36 = xmmword_1AFE68E40;
  *(&__src[16] + 8) = xmmword_1AFE68E40;
  *(&__src[17] + 8) = xmmword_1AFE68E40;
  *(&__src[18] + 8) = xmmword_1AFE68E40;
  *(&__src[19] + 8) = xmmword_1AFE68E40;
  sub_1AFDFF308();
  sub_1AF6021F8(v42, __dst);
  sub_1AF89747C(v34);
  sub_1AF602254(v42);
  v12 = *(a2 + 1);
  v13 = *(a2 + 2);
  v14 = *(a2 + 3);
  v16 = *(a2 + 4);
  v15 = *(a2 + 5);
  v18 = *(a2 + 6);
  v17 = *(a2 + 7);
  MEMORY[0x1B271ACB0](*a2);
  MEMORY[0x1B271ACB0](v12);
  MEMORY[0x1B271ACB0](v13);
  MEMORY[0x1B271ACB0](v14);
  MEMORY[0x1B271ACB0](v16);
  MEMORY[0x1B271ACB0](v15);
  MEMORY[0x1B271ACB0](v18);
  MEMORY[0x1B271ACB0](v17);
  MEMORY[0x1B271ACB0](*(a2 + 8));
  MEMORY[0x1B271ACB0](*(a2 + 9));
  sub_1AFDFF2A8();
  v57 = v35;
  v58 = v36;
  v59 = v37;
  v60 = v38;
  sub_1AF5FF304();
  sub_1AFDFF2A8();
  sub_1AFDFF2A8();
  MEMORY[0x1B271ACB0](3);
  sub_1AFDFF2A8();
  sub_1AFDFF2A8();
  v19 = sub_1AFDFF2E8();
  memcpy(__dst, __src, sizeof(__dst));
  v45 = 0;
  v44 = 0;
  v46 = 3;
  v47 = 0;
  v48 = 0;
  v49 = 2;
  v52 = 0;
  v50 = 0;
  v51 = 0;
  v53 = 257;
  v54 = v39;
  v55 = v40;
  v56 = v19;
  v20 = sub_1AF730058(__dst);
  v22 = v21;
  v24 = v23;
  LODWORD(v19) = v23;

  sub_1AF602304(__dst);
  if (v19)
  {
    v25 = 0;
  }

  else
  {
    swift_unknownObjectRetain();
    v24 = 0;
    v25 = v20;
  }

  sub_1AF6022A8(v20, v22, v24);
  swift_getObjectType();
  [a1 setRenderPipelineState_];
  [a1 setDepthStencilState_];
  if (!*a5)
  {
    v28 = 0;
LABEL_17:
    [a1 setFragmentTexture:v28 atIndex:0];
    goto LABEL_18;
  }

  if ([*a5 storageMode] != 3)
  {
    v28 = *a5;
    goto LABEL_17;
  }

  if (qword_1ED730EA0 != -1)
  {
    swift_once();
  }

  v26 = sub_1AFDFDA08();
  v33 = 1;
  sub_1AF75A4B4(v26, 0xD000000000000037, 0x80000001AFF44FA0, &v33, v27);
LABEL_18:
  sub_1AF6F5B7C(1);
  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_1AFA4F4BC(uint64_t result, uint64_t a2, unsigned int a3)
{
  if (a2)
  {
    v4 = *(a2 + 200);
    v5 = *(v4 + 24);
    if (v5 == 2)
    {
      goto LABEL_79;
    }

    if (v5)
    {
      v6 = *(v4 + 32);
      if (((v5 & 0x100000100) != 0) | v6 & 1)
      {
        v115 = result;
        v8 = *(v4 + 36);
        v7 = *(v4 + 40);
        v9 = *(v4 + 44);

        v10 = sub_1AFDFE238();
        v12 = *(a2 + 280);
        v13 = *(v12 + 16);
        if (v13)
        {
          *__dst = v10;
          *&__dst[8] = v11;
          swift_unknownObjectRetain();
          sub_1AFDFD1E8();
          v14 = sub_1AFDFCEC8();

          [v13 pushDebugGroup_];

          swift_unknownObjectRelease();
        }

        else
        {
        }

        sub_1AF0D879C(v137, 1);
        v15 = v137[0];

        v16 = sub_1AF750DEC(v15, *(&v15 + 1), 0, 0, 0, 1, 1);
        sub_1AF0D8F38(v137);

        if (v16)
        {
          v112 = v12;
          sub_1AF0D879C(&v138, 5);
          v17 = v138;

          v18 = sub_1AF750DEC(v17, *(&v17 + 1), 0, 0, 0, 1, 1);

          v119 = v18;
          v114 = v4;
          v113 = v16;
          v111 = v6;
          if (v18)
          {
            sub_1AF0D8F38(&v138);
LABEL_21:
            v38 = 1.0;
            if ((v5 & 0x100) != 0 && v8 < 1.0)
            {
              if (v7 >= v8)
              {
                v39 = v8;
              }

              else
              {
                v39 = v7;
              }

              if ((v5 & 0x1000000) != 0)
              {
                v7 = v39;
              }

              else
              {
                v7 = v8;
              }
            }

            else if ((v5 & 0x1000000) == 0 || v7 >= 1.0)
            {
              v40 = fminf(v9, 1.0);
              if ((v5 & 0x10000) != 0)
              {
                v38 = v40;
              }

LABEL_39:
              v118 = a2;
              v41 = 1 - log2f(v38);
              swift_getObjectType();
              v42 = [v119 mipmapLevelCount];
              if (v42 < v41)
              {
                v41 = v42;
              }

              [v119 pixelFormat];
              [v119 textureType];
              v136 = v16;
              v116 = v41;
              if (v41)
              {
                swift_unknownObjectRetain();
                v43 = 0;
                do
                {
                  v44 = v43 + 1;
                  v45 = sub_1AFDFD9B8();
                  if (v43)
                  {
                    *__dst = 0;
                    *&__dst[8] = 0xE000000000000000;
                    sub_1AFDFE218();

                    *__dst = 0x776F446874706544;
                    *&__dst[8] = 0xEF656C706D61736ELL;
                    *&__src[0] = v43;
                    v46 = sub_1AFDFEA08();
                    MEMORY[0x1B2718AE0](v46);
                  }

                  v47 = objc_allocWithZone(MEMORY[0x1E6974128]);
                  swift_unknownObjectRetain();
                  v48 = [v47 init];
                  v49 = [v48 colorAttachments];
                  v50 = [v49 objectAtIndexedSubscript_];

                  [v50 setTexture_];
                  [v50 setLoadAction_];
                  [v50 setStoreAction_];
                  [v50 setClearColor_];
                  [v50 setLevel_];

                  if (v45)
                  {
                    v51 = [v48 depthAttachment];
                    swift_unknownObjectRetain();
                    [v51 setTexture_];
                    [v51 setLoadAction_];
                    [v51 setStoreAction_];
                    [v51 setClearDepth_];
                    [v51 &selRef:0 setGainColor:?];

                    swift_unknownObjectRelease();
                    sub_1AF474EC4();
                    swift_unknownObjectRelease();
                  }

                  v52 = v45;
                  sub_1AF7180FC();

                  v53 = sub_1AF6F3D60(v48, 0, 0);
                  sub_1AF474680(v145);
                  sub_1AFA4F054(v53, v145, a2, v43, &v136);

                  swift_unknownObjectRelease();

                  swift_unknownObjectRelease();
                  v136 = v52;
                  ++v43;
                }

                while (v116 != v44);
              }

              else
              {
                swift_unknownObjectRetain();
              }

              sub_1AF0D879C(&v146, 2);
              v54 = v146;

              v55 = sub_1AF750DEC(v54, *(&v54 + 1), 0, 0, 0, 1, 1);

              if (v55)
              {
                sub_1AF0D8F38(&v146);
              }

              else
              {
                if ((v111 & 1) == 0)
                {
                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();
                  sub_1AF0D8F38(&v146);
LABEL_72:
                  swift_unknownObjectRelease();
LABEL_73:
                  if (*(v112 + 16))
                  {
                    [swift_unknownObjectRetain() popDebugGroup];
                    swift_unknownObjectRelease();
                  }

                  goto LABEL_75;
                }

                v72 = v151;
                v73 = 32;
                if (!v151)
                {
                  v73 = 1;
                }

                if (v152)
                {
                  v72 = v73;
                }

                v178 = v149;
                v179 = v150;
                v180 = v149;
                v181 = v150;
                v182 = v147;
                v183 = v72;
                v184 = v148;
                v185 = 0u;
                v186 = 0u;
                v74 = *(v114 + 16);
                v75 = v74[38];
                *&__dst[80] = v74[39];
                *&__dst[64] = v75;
                v76 = v74[36];
                *&__dst[48] = v74[37];
                *&__dst[32] = v76;
                v77 = v74[41];
                *&__dst[128] = v74[42];
                v78 = v74[40];
                *&__dst[112] = v77;
                *&__dst[96] = v78;
                v79 = v74[34];
                *&__dst[16] = v74[35];
                *__dst = v79;
                *&__dst[137] = *(v74 + 681);

                if (sub_1AF448314(__dst) == 1)
                {
LABEL_79:
                  result = sub_1AFDFE518();
                  __break(1u);
                  return result;
                }

                v80 = *&__dst[8];
                ObjectType = swift_getObjectType();
                v82 = *(v80 + 80);
                swift_unknownObjectRetain();
                v83 = v82(ObjectType, v80);
                v85 = v84;

                swift_unknownObjectRelease();
                v86 = sub_1AFBE973C(0, 2, v83, v85);
                v88 = v87;
                v90 = v89;

                v55 = sub_1AF750DEC(v54, *(&v54 + 1), v86, v88, v90, 0, 1);
                sub_1AF0D8F38(&v146);

                if (!v55)
                {
                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();
                  goto LABEL_73;
                }
              }

              v56 = objc_allocWithZone(MEMORY[0x1E6974128]);
              swift_unknownObjectRetain();
              v57 = [v56 init];
              v58 = [v57 colorAttachments];
              v59 = [v58 objectAtIndexedSubscript_];

              [v59 setTexture_];
              [v59 setLoadAction_];
              [v59 setStoreAction_];
              [v59 setClearColor_];
              [v59 setLevel_];
              swift_unknownObjectRelease();

              sub_1AF7180FC();

              v120 = sub_1AF6F3D60(v57, 0, 0);
              v117 = v57;
              sub_1AF474680(&v153);

              sub_1AF8989FC(0xD000000000000010, 0x80000001AFF39ED0, 0x7A697261656E696CLL, 0xEE00687470654465, MEMORY[0x1E69E7CC0], v159);
              __src[8] = v159[8];
              __src[9] = v159[9];
              __src[4] = v159[4];
              __src[5] = v159[5];
              __src[6] = v159[6];
              __src[7] = v159[7];
              __src[0] = v159[0];
              __src[1] = v159[1];
              __src[2] = v159[2];
              __src[3] = v159[3];
              __src[14] = v156;
              __src[15] = v157;
              __src[10] = v159[10];
              __src[11] = v153;
              *&__src[16] = v158;
              __src[12] = v154;
              __src[13] = v155;
              sub_1AF5FF2F0(&v129);
              v131 = xmmword_1AFE68E40;
              v132 = xmmword_1AFE68E40;
              v129 = xmmword_1AFE68E40;
              v130 = xmmword_1AFE68E40;
              *(&__src[16] + 8) = xmmword_1AFE68E40;
              *(&__src[17] + 8) = xmmword_1AFE68E40;
              *(&__src[18] + 8) = xmmword_1AFE68E40;
              *(&__src[19] + 8) = xmmword_1AFE68E40;
              sub_1AFDFF308();
              sub_1AF6021F8(v159, __dst);
              sub_1AF89747C(v128);
              sub_1AF602254(v159);
              v60 = *(&v153 + 1);
              v62 = *(&v154 + 1);
              v61 = v154;
              v63 = v155;
              v64 = v156;
              MEMORY[0x1B271ACB0](v153);
              MEMORY[0x1B271ACB0](v60);
              MEMORY[0x1B271ACB0](v61);
              MEMORY[0x1B271ACB0](v62);
              MEMORY[0x1B271ACB0](v63);
              MEMORY[0x1B271ACB0](*(&v63 + 1));
              MEMORY[0x1B271ACB0](v64);
              MEMORY[0x1B271ACB0](*(&v64 + 1));
              MEMORY[0x1B271ACB0](v157);
              MEMORY[0x1B271ACB0](*(&v157 + 1));
              sub_1AFDFF2A8();
              v174 = v129;
              v175 = v130;
              v176 = v131;
              v177 = v132;
              sub_1AF5FF304();
              sub_1AFDFF2A8();
              sub_1AFDFF2A8();
              MEMORY[0x1B271ACB0](3);
              sub_1AFDFF2A8();
              sub_1AFDFF2A8();
              v65 = sub_1AFDFF2E8();
              memcpy(__dst, __src, sizeof(__dst));
              v162 = 0;
              v161 = 0;
              v163 = 3;
              v164 = 0;
              v165 = 0;
              v166 = 2;
              v169 = 0;
              v167 = 0;
              v168 = 0;
              v170 = 257;
              v171 = v133;
              v172 = v134;
              v173 = v65;
              v66 = sub_1AF730058(__dst);
              v68 = v67;
              v70 = v69;
              LODWORD(v57) = v69;

              sub_1AF602304(__dst);
              if (v57)
              {
                v71 = 0;
              }

              else
              {
                swift_unknownObjectRetain();
                v70 = 0;
                v71 = v66;
              }

              sub_1AF6022A8(v66, v68, v70);
              swift_getObjectType();
              [v120 setRenderPipelineState_];
              CFXTextureDescriptorMakeDefault(v123);
              v91 = *(v118 + 656);
              v126[6] = *(v118 + 640);
              v126[7] = v91;
              v127[0] = *(v118 + 672);
              *(v127 + 9) = *(v118 + 681);
              v92 = *(v118 + 592);
              v126[2] = *(v118 + 576);
              v126[3] = v92;
              v93 = *(v118 + 624);
              v126[4] = *(v118 + 608);
              v126[5] = v93;
              v94 = *(v118 + 560);
              v126[0] = *(v118 + 544);
              v126[1] = v94;
              if (sub_1AF448314(v126) != 1)
              {
                v95 = *(&v126[0] + 1);
                v96 = swift_getObjectType();
                v97 = *(v95 + 80);
                swift_unknownObjectRetain();
                v98 = v97(v96, v95);
                swift_unknownObjectRelease();
                sub_1AF46749C(v98, v123);
                v99 = *(v118 + 656);
                v121[6] = *(v118 + 640);
                v121[7] = v99;
                v122[0] = *(v118 + 672);
                *(v122 + 9) = *(v118 + 681);
                v100 = *(v118 + 592);
                v121[2] = *(v118 + 576);
                v121[3] = v100;
                v101 = *(v118 + 624);
                v121[4] = *(v118 + 608);
                v121[5] = v101;
                v102 = *(v118 + 560);
                v121[0] = *(v118 + 544);
                v121[1] = v102;
                if (sub_1AF448314(v121) != 1)
                {
                  v103 = *(&v121[0] + 1);
                  v104 = swift_getObjectType();
                  v105 = *(v103 + 80);
                  swift_unknownObjectRetain();
                  v105(v104, v103);
                  v107 = v106;
                  swift_unknownObjectRelease();
                  sub_1AF4674A4(v107, v123);
                  sub_1AF46748C(*(v118 + 288), v123);
                  sub_1AFA4DCA8(v123);
                  sub_1AF48F3EC(v123);
                  sub_1AF4674D0(v123);
                  sub_1AF8DB86C(v123[0], v123[1], v124 | (v125 << 16));
                  v108 = 1.0;
                  v109 = 0;
                  if (v9 >= 1.0)
                  {
                    v110 = &selRef_numberWithBool_;
                  }

                  else
                  {
                    v110 = &selRef_numberWithBool_;
                    do
                    {
                      ++v109;
                      v108 = v108 * 0.5;
                    }

                    while (v108 > v9);
                  }

                  [v119 v110[98]];
                  [v119 textureType];
                  [v120 setFragmentTexture:sub_1AFDFD9B8() atIndex:0];
                  sub_1AFB19490(v115, v118);
                  sub_1AF6F5B7C(1);

                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();

                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();
                  goto LABEL_72;
                }
              }

              goto LABEL_79;
            }

            if (v7 <= v9)
            {
              v38 = v7;
            }

            else
            {
              v38 = v9;
            }

            if ((v5 & 0x10000) == 0)
            {
              v38 = v7;
            }

            goto LABEL_39;
          }

          v19 = v143;
          v20 = 32;
          if (!v143)
          {
            v20 = 1;
          }

          if (v144)
          {
            v19 = v20;
          }

          v187 = v141;
          v188 = v142;
          v189 = v141;
          v190 = v142;
          v191 = v139;
          v192 = v19;
          v193 = v140;
          v194 = 0u;
          v195 = 0u;
          v21 = *(v4 + 16);
          v22 = v21[38];
          *&__dst[80] = v21[39];
          *&__dst[64] = v22;
          v23 = v21[36];
          *&__dst[48] = v21[37];
          *&__dst[32] = v23;
          v24 = v21[41];
          *&__dst[128] = v21[42];
          v25 = v21[40];
          *&__dst[112] = v24;
          *&__dst[96] = v25;
          v26 = v21[34];
          *&__dst[16] = v21[35];
          *__dst = v26;
          *&__dst[137] = *(v21 + 681);

          if (sub_1AF448314(__dst) == 1)
          {
            goto LABEL_79;
          }

          v27 = *&__dst[8];
          v28 = swift_getObjectType();
          v29 = *(v27 + 80);
          swift_unknownObjectRetain();
          v30 = v29(v28, v27);
          v32 = v31;

          swift_unknownObjectRelease();
          v33 = sub_1AFBE973C(0, 2, v30, v32);
          v35 = v34;
          LODWORD(v28) = v36;

          v37 = sub_1AF750DEC(v17, *(&v17 + 1), v33, v35, v28, 0, 1);
          sub_1AF0D8F38(&v138);

          v119 = v37;
          if (v37)
          {
            v16 = v113;
            goto LABEL_21;
          }

          swift_unknownObjectRelease();
          if (!*(v12 + 16))
          {
LABEL_75:
          }
        }

        else if (!*(v12 + 16))
        {
          goto LABEL_75;
        }

        [swift_unknownObjectRetain() popDebugGroup];
        swift_unknownObjectRelease();
        goto LABEL_75;
      }
    }
  }

  return result;
}

uint64_t sub_1AFA50650()
{
  v0 = swift_allocObject();
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v6 = qword_1ED73B840;
  v7 = 0;
  v8 = 2;
  v9 = 0;
  v10 = 2;
  v11 = 0;
  sub_1AFA52084(0, &qword_1ED7269A0, sub_1AF5C5300);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = &type metadata for ProjectionMatrix;
  *(inited + 40) = &off_1F2511D20;
  sub_1AF5F58E4(inited, 1, v4);
  swift_setDeallocating();
  v2 = v4[1];
  *(v0 + 16) = v4[0];
  *(v0 + 32) = v2;
  *(v0 + 48) = v5;
  return v0;
}

_OWORD *sub_1AFA50774(void *a1, uint64_t a2, uint64_t a3, float a4)
{
  v6 = a2;
  v8 = [swift_unknownObjectRetain() storageMode];
  swift_unknownObjectRelease();
  if (v8 == 2)
  {
    v9 = 0;
    if (a3 != 3)
    {
      goto LABEL_3;
    }

LABEL_7:
    sub_1AFA52084(0, &qword_1ED726930, sub_1AF6AF6D4);
    v10 = swift_allocObject();
    v10[1] = xmmword_1AFE4C680;
    v10[2] = xmmword_1AFE969A0;
    v10[3] = xmmword_1AFE969B0;
    v10[4] = xmmword_1AFE969C0;
    goto LABEL_9;
  }

  v11 = [swift_unknownObjectRetain() contents];
  v12 = a1;
  v9 = &v11[v6];
  if (a3 == 3)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (a3 == 2)
  {
    sub_1AFA52084(0, &qword_1ED726930, sub_1AF6AF6D4);
    v10 = swift_allocObject();
    v10[1] = xmmword_1AFE4C620;
    v10[2] = xmmword_1AFE969D0;
    v10[3] = xmmword_1AFE969E0;
  }

  else
  {
    if (a3 != 1)
    {
      return MEMORY[0x1E69E7CC0];
    }

    sub_1AFA52084(0, &qword_1ED726930, sub_1AF6AF6D4);
    v10 = swift_allocObject();
    v10[1] = xmmword_1AFE431C0;
    v10[2] = xmmword_1AFE969F0;
  }

LABEL_9:
  v13 = 0;
  v14 = vcvtps_s32_f32(a4);
  v45 = v10;
  v15 = v10 + 2;
  v16 = v9;
  do
  {
    v17 = v15;
    v46 = v15[v13];
    LODWORD(v18) = HIDWORD(*&v15[v13]);
    v19 = (2 * v14) | 1;
    v20 = v16;
    v21 = -v14;
    do
    {
      v22 = ((v21 * 1.1) / a4) * ((v21 * 1.1) / a4);
      v47 = expf(v18 * v22);
      v23 = __sincosf_stret(*&v46 * v22);
      *v20++ = vmul_n_f32(__PAIR64__(LODWORD(v23.__sinval), LODWORD(v23.__cosval)), v47);
      ++v21;
      --v19;
    }

    while (v19);
    ++v13;
    v16 += 128;
    v15 = v17;
  }

  while (v13 != a3);
  v24 = 0;
  v25 = 0.0;
  v26 = v9;
  result = v45;
  do
  {
    v28 = &v17[v24];
    v29 = v24 << 7;
    v30 = v9[128 * v24 + v14];
    v31 = v28[2];
    v32 = v28[3];
    v33 = vmuls_lane_f32(v30.f32[0], v30, 1);
    v25 = (v32 * (v33 + v33)) + (v25 + (v31 * (vmul_f32(v30, v30).f32[0] - vmuls_lane_f32(v30.f32[1], v30, 1))));
    if (v14)
    {
      v34 = 0;
      v35 = v31 + v31;
      v36 = v32 + v32;
      do
      {
        v25 = (v36 * (vmuls_lane_f32(v30.f32[0], v26[v34], 1) + (v30.f32[1] * COERCE_FLOAT(*&v26[v34])))) + (v25 + (v35 * (vmul_f32(v30, v26[v34]).f32[0] - vmuls_lane_f32(v30.f32[1], v26[v34], 1))));
        ++v34;
      }

      while (v14 != v34);
      v37 = 0;
      v38 = v31 * 4.0;
      v39 = v32 * 4.0;
      do
      {
        v40 = 0;
        v41 = v9[v37 + v29];
        v25 = (v36 * ((v30.f32[1] * v41.f32[0]) + vmuls_lane_f32(v30.f32[0], v41, 1))) + (v25 + (v35 * (vmul_f32(v30, v41).f32[0] - vmuls_lane_f32(v30.f32[1], v41, 1))));
        do
        {
          LODWORD(v42) = HIDWORD(*&v9[v37 + v29]);
          v25 = (v39 * (vmuls_lane_f32(v41.f32[0], v26[v40], 1) + (v42 * COERCE_FLOAT(*&v26[v40])))) + (v25 + (v38 * (vmul_f32(v41, v26[v40]).f32[0] - vmuls_lane_f32(v42, v26[v40], 1))));
          ++v40;
        }

        while (v14 != v40);
        ++v37;
      }

      while (v37 != v14);
    }

    ++v24;
    v26 += 128;
  }

  while (v24 != a3);
  v43 = a3 << 7;
  if (a3 << 7)
  {
    v44 = 1.0 / sqrtf(v25);
    do
    {
      *v9 = vmul_n_f32(*v9, v44);
      ++v9;
      --v43;
    }

    while (v43);
  }

  return result;
}

unint64_t sub_1AFA50B4C(uint64_t a1, uint64_t a2)
{
  v221 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 184);

  os_unfair_recursive_lock_lock_with_options();
  v5 = sub_1AF6D2A6C(&type metadata for FrameConstantsStorage);
  if (v6 == 2 || (v6 & 1) == 0)
  {
    os_unfair_recursive_lock_unlock();
  }

  else
  {
    v8 = *(v4 + 16);
    v9 = 32 * v7;
    v10 = v5;
    os_unfair_lock_lock(*(*(v4 + 32) + 32 * v7 + 24));
    os_unfair_recursive_lock_unlock();
    v11 = *(v8 + v10);
    os_unfair_lock_unlock(*(*(v4 + 32) + v9 + 24));

    result = sub_1AF3CAC48(v11);
    if ((result & 0xFF00000000) != 0x300000000)
    {
      v13 = *&result;
      if (*&result > 0.0 && a2 != 0)
      {
        v15 = *(a2 + 200);
        v16 = BYTE4(result);

        v17 = sub_1AFBE4EC4();

        v144 = *(a2 + 456);
        v153 = v16 + 1;
        v18 = v13 * 0.01;
        v163 = 0;
        v162 = 0;
        v165 = 0;
        v164 = 0;
        v161 = v13 * 0.01;
        v19 = (v13 * 0.01) * [v17 height];
        v158 = 1056964608;
        if (v19 <= 128.0)
        {
          if (v19 <= 32.0)
          {
            v22 = v16 + 1;
            if (v19 < 4.0)
            {
              v22 = 1;
            }

            v153 = v22;
            v21 = "_TtC3VFX18LensBlurPassSystem";
            v20 = 1056964608;
          }

          else
          {
            v20 = 1048576000;
            v158 = 1048576000;
            v21 = "compute_lens_blur_horizontal";
          }
        }

        else
        {
          v20 = 1040187392;
          v158 = 1040187392;
          v21 = "compute_downsample4";
        }

        v23 = v21 | 0x8000000000000000;

        v25 = sub_1AF0D9730(&v171, 9);
        if (*(v24 + 8))
        {
          *(v24 + 32) = v20;
          *(v24 + 40) = 1;
        }

        (v25)(&v171, 0);

        sub_1AF0D879C(&v180, 9);
        v26 = v180;

        v27 = sub_1AF750DEC(v26, *(&v26 + 1), 0, 0, 0, 1, 1);

        if (v27)
        {
          sub_1AF0D8F38(&v180);
        }

        else
        {
          v151 = v23;
          v146 = v17;
          v148 = a2;
          v28 = v185;
          v29 = 32;
          if (!v185)
          {
            v29 = 1;
          }

          if (v186)
          {
            v28 = v29;
          }

          v212 = v183;
          v213 = v184;
          v214 = v183;
          v215 = v184;
          v216 = v181;
          v217 = v28;
          v218 = v182;
          v219 = 0u;
          v220 = 0u;
          v30 = *(v15 + 16);
          v31 = v30[39];
          v175 = v30[38];
          v176 = v31;
          v32 = v30[37];
          v173 = v30[36];
          v174 = v32;
          v33 = v30[42];
          v178 = v30[41];
          v179[0] = v33;
          v177 = v30[40];
          v34 = v30[35];
          v171 = v30[34];
          v172 = v34;
          *(v179 + 9) = *(v30 + 681);

          if (sub_1AF448314(&v171) == 1)
          {
            sub_1AFDFE518();
            __break(1u);
            result = swift_unexpectedError();
            __break(1u);
            return result;
          }

          v35 = *(&v171 + 1);
          ObjectType = swift_getObjectType();
          v37 = *(v35 + 80);
          swift_unknownObjectRetain();
          v38 = v37(ObjectType, v35);
          v40 = v39;

          swift_unknownObjectRelease();
          v41 = sub_1AFBE973C(1, 2, v38, v40);
          v43 = v42;
          v45 = v44;

          v27 = sub_1AF750DEC(v26, *(&v26 + 1), v41, v43, v45, 0, 1);
          sub_1AF0D8F38(&v180);

          if (!v27)
          {

LABEL_100:
            swift_unknownObjectRelease();
          }

          v17 = v146;
          a2 = v148;
          v23 = v151;
        }

        v46 = [v27 height];
        if ((v18 * v46) <= 63.0)
        {
          v47 = v18 * v46;
        }

        else
        {
          v47 = 63.0;
        }

        v136 = vcvtps_s32_f32(v47);
        v165 = v136;
        CFXBufferAllocatorPerFrameAllocateWithLength(*(a2 + 232), v153 << 10);
        v137 = v48;
        v138 = v49;
        v50 = sub_1AFA50774(v48, v49, v153, v47);
        v162 = vextq_s8(v50[2], v50[2], 8uLL).u64[0];
        CFXTextureDescriptorFromMTLTexture(v27, v159, v51, v52);
        sub_1AFA52060(v159);
        sub_1AF4674C8(v153, v159);
        if (v153 < 2 || (v163 = vextq_s8(v50[3], v50[3], 8uLL).u64[0], v153 == 2))
        {
        }

        else
        {
          *v149 = v50[4];

          v164 = vextq_s8(*v149, *v149, 8uLL).u64[0];
        }

        v53 = *(a2 + 192);
        v54 = v159[0];
        v55 = v159[1];
        v56 = v160;

        v57 = sub_1AF750DEC(0xD000000000000014, 0x80000001AFF45020, v54, v55, v56, 0, 0);

        v145 = v57;
        if (v57)
        {

          v58 = sub_1AF750DEC(0xD000000000000012, 0x80000001AFF45040, v54, v55, v56, 0, 0);

          v143 = v58;
          if (v58)
          {
            v135 = v53;
            v142 = v27;
            v147 = v17;
            v140 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_isInPrepare);
            v139 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_shaderArchive);
            v134 = v139;
            sub_1AF7180FC();

            v59 = sub_1AF6F4158();
            swift_getObjectType();
            swift_unknownObjectRetain();
            v60 = sub_1AFDFCEC8();
            v150 = v59;
            [v59 pushDebugGroup_];

            sub_1AF6F3BD8(v61, v62);
            swift_unknownObjectRelease();
            sub_1AF88DCAC();
            v63 = swift_allocObject();
            *(v63 + 16) = xmmword_1AFE431C0;
            *(v63 + 32) = xmmword_1AFE96A00;
            *(v63 + 48) = 0;
            *(v63 + 64) = v144;
            *(v63 + 128) = 13;
            sub_1AFDFF308();

            v152 = v23;
            sub_1AFDFD038();
            v64 = *(v63 + 16);
            MEMORY[0x1B271ACB0](v64);
            if (v64)
            {
              v65 = v63 + 64;
              do
              {
                v66 = *(v65 - 32);
                v67 = *(v65 - 24);
                v68 = *(v65 - 16);
                v69 = *(v65 + 48);
                v209 = *(v65 + 32);
                v210 = v69;
                v211 = *(v65 + 64);
                v70 = *v65;
                v208 = *(v65 + 16);
                v207 = v70;
                if (v68 == 1)
                {
                  MEMORY[0x1B271ACB0](1);

                  sub_1AFDFD038();
                }

                else
                {
                  MEMORY[0x1B271ACB0](0);
                  MEMORY[0x1B271ACB0](v66);
                }

                sub_1AF87A0E4();
                sub_1AF4456D0(v66, v67, v68);
                v65 += 112;
                --v64;
              }

              while (v64);
            }

            MEMORY[0x1B271ACB0](0);
            v173 = v168;
            v174 = v169;
            *&v175 = v170;
            v171 = v166;
            v172 = v167;
            v71 = sub_1AFDFF2E8();
            *&v202 = 0xD000000000000013;
            *(&v202 + 1) = v152;
            v204 = 0;
            v203 = 0;
            v205 = v63;
            v206 = v71;
            v72 = sub_1AF73BD84(&v202, 0, v140, v139);
            v74 = v73;

            v75 = v145;
            v76 = v59;
            if (!v72)
            {
              goto LABEL_85;
            }

            [v59 setTexture:v147 atIndex:0];
            [v59 setTexture:v27 atIndex:1];
            [v59 setBytes:&v158 length:4 atIndex:0];
            sub_1AF6F448C(v72, v27, 0);
            v77 = [CFXGPUDeviceGetMTLDevice(*(a2 + 16)) supportsWritableArrayOfTextures];
            swift_unknownObjectRelease();
            v78 = &byte_1AFE95FF8[8];
            if (v77)
            {
              v79 = swift_allocObject();
              LOBYTE(v192) = 0;
              *(v79 + 16) = xmmword_1AFE431C0;
              *(v79 + 32) = xmmword_1AFE96A10;
              *(v79 + 48) = 0;
              *(v79 + 64) = v153;
              *(v79 + 128) = 14;
              sub_1AFDFF308();

              sub_1AFDFD038();
              MEMORY[0x1B271ACB0](1);
              v80 = *(v79 + 32);
              v81 = *(v79 + 40);
              v82 = *(v79 + 48);
              v83 = *(v79 + 112);
              v168 = *(v79 + 96);
              v169 = v83;
              LOBYTE(v170) = *(v79 + 128);
              v84 = *(v79 + 80);
              v166 = *(v79 + 64);
              v167 = v84;
              if (v82 == 1)
              {
                MEMORY[0x1B271ACB0](1);

                sub_1AFDFD038();
              }

              else
              {
                MEMORY[0x1B271ACB0](0);
                MEMORY[0x1B271ACB0](v80);
              }

              sub_1AF87A0E4();
              sub_1AF4456D0(v80, v81, v82);
              MEMORY[0x1B271ACB0](0);
              v105 = sub_1AFDFF2E8();
              *&v197 = 0xD00000000000001CLL;
              *(&v197 + 1) = 0x80000001AFF45110;
              v199 = 0;
              v198 = 0;
              v200 = v79;
              v201 = v105;
              v106 = sub_1AF73BD84(&v197, 0, v140, v139);
              v108 = v107;

              if (v106)
              {
                [v150 setTexture:v142 atIndex:0];
                [v150 setTexture:v145 atIndex:1];
                [v150 setTexture:v143 atIndex:2];
                [v150 setBytes:&v161 length:40 atIndex:0];
                sub_1AF6F458C(v137, v138, 0, 1);
                sub_1AF6F448C(v106, v142, 0);
                swift_unknownObjectRelease();
LABEL_74:
                v109 = swift_allocObject();
                v110 = *(v78 + 161);
                *(v109 + 16) = xmmword_1AFE431C0;
                *(v109 + 32) = v110;
                *(v109 + 48) = 0;
                *(v109 + 64) = v153;
                *(v109 + 128) = 14;
                sub_1AFDFF308();

                sub_1AFDFD038();
                MEMORY[0x1B271ACB0](1);
                v111 = *(v109 + 32);
                v112 = *(v109 + 40);
                v113 = *(v109 + 48);
                v114 = *(v109 + 112);
                v194 = *(v109 + 96);
                v195 = v114;
                v196 = *(v109 + 128);
                v115 = *(v109 + 80);
                v192 = *(v109 + 64);
                v193 = v115;
                if (v113 == 1)
                {
                  MEMORY[0x1B271ACB0](1);

                  sub_1AFDFD038();
                }

                else
                {
                  MEMORY[0x1B271ACB0](0);
                  MEMORY[0x1B271ACB0](v111);
                }

                sub_1AF87A0E4();
                sub_1AF4456D0(v111, v112, v113);
                MEMORY[0x1B271ACB0](0);
                v116 = sub_1AFDFF2E8();
                *&v187 = 0xD00000000000001ALL;
                *(&v187 + 1) = 0x80000001AFF450F0;
                v189 = 0;
                v188 = 0;
                v190 = v109;
                v191 = v116;
                v117 = sub_1AF73BD84(&v187, 0, v140, v139);
                v119 = v118;

                if (v117)
                {
                  v76 = v150;
                  [v150 setTexture:v75 atIndex:0];
                  [v150 setTexture:v143 atIndex:1];
                  [v150 setTexture:v142 atIndex:2];
                  v120 = [v117 threadExecutionWidth];
                  sub_1AFA52074(1, (v120 + 126) / v120 * v120, &v156);
                  v121 = v156;
                  v122 = v157;
                  sub_1AFA52074([v142 width], (objc_msgSend(v142, sel_height) + *(&v156 + 1) - 1) / *(&v156 + 1), &v156);
                  v141 = v156;
                  v123 = v157;
                  v124 = 15;
                  v125 = (16 * v153 * (*(&v121 + 1) + 2 * v136)) | 0xF;
                  if (v125 <= 0)
                  {
                    v124 = -(-v125 & 0xF);
                  }

                  [v150 setThreadgroupMemoryLength:v125 - v124 atIndex:0];
                  [v150 setComputePipelineState_];
                  v156 = v141;
                  v157 = v123;
                  v154 = v121;
                  v155 = v122;
                  [v150 dispatchThreadgroups:&v156 threadsPerThreadgroup:&v154];
LABEL_84:
                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();
                  goto LABEL_85;
                }
              }
            }

            else
            {
              v86 = swift_allocObject();
              LOBYTE(v192) = 0;
              *(v86 + 16) = xmmword_1AFE431C0;
              *(v86 + 32) = xmmword_1AFE96A10;
              *(v86 + 48) = 0;
              *(v86 + 64) = v153;
              *(v86 + 128) = 14;
              sub_1AFDFF308();

              sub_1AFDFD038();
              v87 = *(v86 + 16);
              MEMORY[0x1B271ACB0](v87);
              if (v87)
              {
                v88 = v86 + 64;
                do
                {
                  v89 = *(v88 - 32);
                  v90 = *(v88 - 24);
                  v91 = *(v88 - 16);
                  v92 = *(v88 + 48);
                  v168 = *(v88 + 32);
                  v169 = v92;
                  LOBYTE(v170) = *(v88 + 64);
                  v93 = *(v88 + 16);
                  v166 = *v88;
                  v167 = v93;
                  if (v91 == 1)
                  {
                    MEMORY[0x1B271ACB0](1);

                    sub_1AFDFD038();
                  }

                  else
                  {
                    MEMORY[0x1B271ACB0](0);
                    MEMORY[0x1B271ACB0](v89);
                  }

                  sub_1AF87A0E4();
                  sub_1AF4456D0(v89, v90, v91);
                  v88 += 112;
                  --v87;
                }

                while (v87);
              }

              MEMORY[0x1B271ACB0](0);
              v94 = sub_1AFDFF2E8();
              *&v197 = 0xD00000000000002BLL;
              *(&v197 + 1) = 0x80000001AFF450C0;
              v199 = 0;
              v198 = 0;
              v200 = v86;
              v201 = v94;
              v95 = sub_1AF73BD84(&v197, 0, v140, v139);
              v97 = v96;

              if (v95)
              {
                v133 = v95;
                [v150 setTexture:v27 atIndex:0];
                v98 = 0;
                v75 = v145;
                while (1)
                {
                  v99 = swift_getObjectType();
                  v100 = sub_1AF4736A0(v98, v99);
                  if (!v100)
                  {
                    swift_unknownObjectRelease();
                    swift_unknownObjectRelease();
                    v76 = v150;
                    goto LABEL_85;
                  }

                  v101 = v98 + 1;
                  v76 = v150;
                  [v150 setTexture:v100 atIndex:v98 + 1];
                  v102 = swift_getObjectType();
                  v103 = sub_1AF4736A0(v98, v102);
                  if (!v103)
                  {
                    break;
                  }

                  [v150 setTexture:v103 atIndex:v98 + 4];
                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();
                  ++v98;
                  if (v101 == v153)
                  {
                    [v150 setBytes:&v161 length:40 atIndex:0];
                    sub_1AF6F458C(v137, v138, 0, 1);
                    sub_1AF6F448C(v133, v27, 0);
                    swift_unknownObjectRelease();
                    v78 = byte_1AFE95FF8 + 8;
                    goto LABEL_74;
                  }
                }

                swift_unknownObjectRelease();
                goto LABEL_84;
              }
            }

            swift_unknownObjectRelease();
            v76 = v150;
LABEL_85:
            [v76 popDebugGroup];

            swift_unknownObjectRelease();
            v126 = sub_1AF8509C8(0xD000000000000012, 0x80000001AFF45040);
            if (v126)
            {
              CFXTextureAllocatorPerFrameFree(*(v135 + 16), v126);
              swift_unknownObjectRelease();
            }

            else
            {
              if (qword_1ED730EA0 != -1)
              {
                swift_once();
              }

              v127 = sub_1AFDFDA08();
              if (qword_1ED731058 != -1)
              {
                v130 = v127;
                swift_once();
                v127 = v130;
              }

              *&v156 = 0;
              sub_1AF0D4F18(v127, &v156, 0xD000000000000027, 0x80000001AFF45090);
            }

            swift_unknownObjectRelease();
            v128 = sub_1AF8509C8(0xD000000000000014, 0x80000001AFF45020);
            if (v128)
            {
              CFXTextureAllocatorPerFrameFree(*(v135 + 16), v128);

              swift_unknownObjectRelease();
            }

            else
            {
              if (qword_1ED730EA0 != -1)
              {
                swift_once();
              }

              v129 = sub_1AFDFDA08();
              if (qword_1ED731058 != -1)
              {
                v131 = v129;
                swift_once();
                v129 = v131;
              }

              *&v156 = 0;
              sub_1AF0D4F18(v129, &v156, 0xD000000000000029, 0x80000001AFF45060);
            }

            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            goto LABEL_100;
          }

          v85 = sub_1AF8509C8(0xD000000000000014, 0x80000001AFF45020);
          if (v85)
          {
            CFXTextureAllocatorPerFrameFree(*(v53 + 16), v85);

            swift_unknownObjectRelease();
          }

          else
          {
            if (qword_1ED730EA0 != -1)
            {
              swift_once();
            }

            v104 = sub_1AFDFDA08();
            if (qword_1ED731058 != -1)
            {
              v132 = v104;
              swift_once();
              v104 = v132;
            }

            *&v171 = 0;
            sub_1AF0D4F18(v104, &v171, 0xD000000000000029, 0x80000001AFF45060);
          }

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
        }

        swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

uint64_t sub_1AFA52074@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  a3[2] = 1;
  return result;
}

void sub_1AFA52084(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1AFDFEA18();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

double sub_1AFA520D8()
{

  swift_deallocClassInstance();
  return result;
}

uint64_t sub_1AFA52150()
{
  type metadata accessor for PostProcessSystem();
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v6 = qword_1ED73B840;
  v7 = 0;
  v8 = 2;
  v9 = 0;
  v10 = 2;
  v11 = 0;
  sub_1AF5C52A8(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = &type metadata for ProjectionMatrix;
  *(inited + 40) = &off_1F2511D20;
  sub_1AF5F58E4(inited, 1, v4);
  swift_setDeallocating();
  v2 = v4[1];
  *(v0 + 24) = v4[0];
  *(v0 + 40) = v2;
  *(v0 + 56) = v5;
  return v0;
}

void sub_1AFA5224C(uint64_t a1, uint64_t a2)
{
  v380 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 184);

  os_unfair_recursive_lock_lock_with_options();
  v5 = sub_1AF6D2A6C(&type metadata for FrameConstantsStorage);
  if (v6 == 2 || (v6 & 1) == 0)
  {
    os_unfair_recursive_lock_unlock();
  }

  else
  {
    v8 = (*(v4 + 16) + v5);
    v9 = 32 * v7;
    os_unfair_lock_lock(*(*(v4 + 32) + 32 * v7 + 24));
    os_unfair_recursive_lock_unlock();
    v10 = *v8;
    v11 = v8[1];
    os_unfair_lock_unlock(*(*(v4 + 32) + v9 + 24));

    if (!a2)
    {
      return;
    }

    v12 = *(a2 + 200);
    v13 = *(v12 + 24);
    if (v13 == 2)
    {
      return;
    }

    v14 = sub_1AFBE45A8(a1);
    if (v14)
    {
      v15 = v14;
      sub_1AFDFE238();

      sub_1AF7180FC();

      v207 = v13;
      v211 = sub_1AF6F3D60(v15, 0, 0);
      sub_1AF709E8C(v211);

      v253 = 0u;
      v252 = 0u;
      v251 = 0u;
      v250 = 0u;
      v249 = 0u;
      v248 = 0u;
      v247 = 0u;
      v16 = v10 | (v11 << 32);
      v246 = 0u;
      v204 = sub_1AF3CAB74(v16);
      v198 = v17;
      sub_1AF3CA934(v16, &v340);
      v18 = v340.f32[0];
      v196 = v343.u8[8];
      v19 = sub_1AF3CAC48(v16);
      v178 = sub_1AF3CAD28(v16);
      v179 = v20;
      v209 = v21;
      v22 = sub_1AF3CAE14(v16, &v340);
      v23 = v340.f32[1];
      v24 = v340.i32[0];
      v25 = v340.f32[2];
      v22.n128_u32[0] = v342.i32[0];
      v180 = v22.n128_u64[0];
      v181 = v341;
      v182 = v343;
      v183 = v345;
      v26 = v344.f32[0];
      v27 = v346.f32[0];
      v28 = *(v346.i64 + 4);
      v210 = v346.i8[12];
      v29 = sub_1AF3CAF2C(v16);
      v193 = v29;
      v30 = *(*(a2 + 280) + 80);
      if (v30)
      {
        v31 = v30;
        sub_1AF474680(v254);
        v224 = v254[0];
        v32 = v254[1];
        v217 = v254[3];
        v218 = v254[2];
        v213 = v254[5];
        v216 = v254[4];
        v195 = v254[6];
        v201 = v254[8];
        v202 = v254[7];
        v200 = v254[9];
        v33 = v254[10];

        v34 = 0;
      }

      else
      {
        v33 = 0;
        v224 = 0;
        v32 = 0;
        v217 = 0;
        v218 = 0;
        v213 = 0;
        v216 = 0;
        v195 = 0;
        v201 = 0;
        v202 = 0;
        v200 = 0;
        v34 = 1;
      }

      v206 = v15;
      v35 = *(a2 + 656);
      v287[6] = *(a2 + 640);
      v287[7] = v35;
      v288[0] = *(a2 + 672);
      v185 = (a2 + 544);
      *(v288 + 9) = *(a2 + 681);
      v36 = *(a2 + 592);
      v287[2] = *(a2 + 576);
      v287[3] = v36;
      v37 = *(a2 + 624);
      v287[4] = *(a2 + 608);
      v287[5] = v37;
      v38 = *(a2 + 560);
      v287[0] = *(a2 + 544);
      v203 = v33;
      *v289 = v33;
      v289[8] = v34;
      v199 = *&v289[1];
      v287[1] = v38;
      if (sub_1AF448314(v287) == 1)
      {
        goto LABEL_88;
      }

      v39 = *(&v287[0] + 1);
      ObjectType = swift_getObjectType();
      v41 = *(v39 + 112);
      swift_unknownObjectRetain();
      v42 = v41(ObjectType, v39);
      swift_unknownObjectRelease();
      v212 = v12;
      if (v42 == 1)
      {
        v55 = 5;
        v54 = 1;
      }

      else
      {
        v43 = *(a2 + 656);
        v346 = *(a2 + 640);
        v347 = v43;
        v348[0] = *(a2 + 672);
        *(v348 + 9) = *(a2 + 681);
        v44 = *(a2 + 592);
        v342 = *(a2 + 576);
        v343 = v44;
        v45 = *(a2 + 624);
        v344 = *(a2 + 608);
        v345 = v45;
        v46 = *(a2 + 560);
        v340 = *v185;
        v341 = v46;
        if (sub_1AF448314(&v340) == 1)
        {
          goto LABEL_88;
        }

        v47 = v340.i64[1];
        v48 = swift_getObjectType();
        v49 = *(v47 + 120);
        swift_unknownObjectRetain();
        v50 = v49(v48, v47);
        v189 = v51;
        v191 = v50;
        v186 = v53;
        v187 = v52;
        swift_unknownObjectRelease();
        v54 = 0;
        v55 = 0;
        v56.f64[0] = v187;
        v56.f64[1] = v186;
        v57.f64[0] = v191;
        v57.f64[1] = v189;
        v253 = vcvt_hight_f32_f64(vcvt_f32_f64(v57), v56);
      }

      v58 = 0;
      v208 = v207 & 0x10000000000;
      v59 = *&v19;
      v61 = *&v19 > 0.0 && (v19 & 0xFF00000000) != 0x300000000;
      v63 = v18 > 0.0 && v196 != 2;
      v192 = v54;
      v190 = v55;
      if ((v224 - 71) <= 0x2C && ((1 << (v224 - 71)) & 0x100000000401) != 0 || v224 == 553)
      {
        v64 = v193;
      }

      else
      {
        v64 = v193;
        if (v224 != 555)
        {
          v58 = 1;
        }
      }

      v194 = v42 != 1;
      v197 = *(a2 + 456);
      if (v64 == 4)
      {
        v65 = -1;
      }

      else
      {
        v65 = v64;
      }

      v66 = v58;
      sub_1AF88DCAC();
      v67 = swift_allocObject();
      *(v67 + 16) = xmmword_1AFE4C690;
      *(v67 + 32) = xmmword_1AFE96A70;
      *(v67 + 48) = 0;
      *(v67 + 64) = v65;
      *(v67 + 128) = 14;
      *(v67 + 144) = xmmword_1AFE96A80;
      *(v67 + 160) = 0;
      *(v67 + 176) = (*(&v204 + 1) > 0.0) & ~v198;
      *(v67 + 240) = 13;
      *(v67 + 256) = xmmword_1AFE96A90;
      *(v67 + 272) = 0;
      v184 = v61;
      *(v67 + 288) = v61;
      *(v67 + 352) = 13;
      *(v67 + 368) = xmmword_1AFE96AA0;
      *(v67 + 384) = 0;
      *(v67 + 400) = (v209 ^ 1) & 1;
      *(v67 + 464) = 13;
      *(v67 + 480) = xmmword_1AFE96AB0;
      *(v67 + 496) = 0;
      *(v67 + 512) = (v210 ^ 1) & 1;
      *(v67 + 576) = 13;
      *(v67 + 592) = xmmword_1AFE96AC0;
      *(v67 + 608) = 0;
      v188 = v63;
      *(v67 + 624) = v63;
      *(v67 + 688) = 13;
      *(v67 + 704) = xmmword_1AFE96AD0;
      *(v67 + 720) = 0;
      *(v67 + 736) = BYTE5(v208);
      *(v67 + 800) = 13;
      *(v67 + 816) = xmmword_1AFE96AE0;
      *(v67 + 832) = 0;
      *(v67 + 848) = 0;
      *(v67 + 912) = 13;
      *(v67 + 928) = xmmword_1AFE96AF0;
      *(v67 + 944) = 0;
      *(v67 + 960) = v66;
      *(v67 + 1024) = 13;
      *(v67 + 1040) = xmmword_1AFE96B00;
      *(v67 + 1056) = 0;
      *(v67 + 1072) = v194;
      *(v67 + 1136) = 13;
      *(v67 + 1152) = xmmword_1AFE96B10;
      *(v67 + 1168) = 0;
      *(v67 + 1176) = *&v286[7];
      *(v67 + 1169) = *v286;
      *(v67 + 1184) = v197;
      *(v67 + 1248) = 13;
      sub_1AF8989FC(0xD000000000000010, 0x80000001AFF39ED0, 0x6F72705F74736F70, 0xEC00000073736563, v67, v290);

      v283 = v290[8];
      v284 = v290[9];
      v285 = v290[10];
      v279 = v290[4];
      v280 = v290[5];
      v281 = v290[6];
      v282 = v290[7];
      v275 = v290[0];
      v276 = v290[1];
      v277 = v290[2];
      v278 = v290[3];
      sub_1AF5FF2F0(v226);
      *&v226[23] = xmmword_1AFE96910;
      *&v226[39] = xmmword_1AFE96910;
      *&v226[55] = 0x10000010F0000;
      v226[63] = 0;
      *&v226[1] = 271;
      v226[3] = v190;
      *&v226[4] = 256;
      v226[6] = v190;
      *&v226[7] = xmmword_1AFE96910;
      v226[0] = v192;
      v227 = *v226;
      v228 = *&v226[16];
      v229 = *&v226[32];
      v230 = *&v226[48];
      sub_1AFDFF308();
      sub_1AF6021F8(v290, &v340);
      sub_1AF89747C(&v266);
      sub_1AF602254(v290);
      MEMORY[0x1B271ACB0](v224);
      MEMORY[0x1B271ACB0](v32);
      MEMORY[0x1B271ACB0](v218);
      MEMORY[0x1B271ACB0](v217);
      MEMORY[0x1B271ACB0](v216);
      MEMORY[0x1B271ACB0](v213);
      MEMORY[0x1B271ACB0](v195);
      MEMORY[0x1B271ACB0](v202);
      MEMORY[0x1B271ACB0](v201);
      MEMORY[0x1B271ACB0](v200);
      sub_1AFDFF2A8();
      v236 = *v226;
      v237 = *&v226[16];
      v238 = *&v226[32];
      v239 = *&v226[48];
      sub_1AF5FF304();
      sub_1AFDFF2A8();
      sub_1AFDFF2A8();
      MEMORY[0x1B271ACB0](3);
      sub_1AFDFF2A8();
      sub_1AFDFF2A8();
      v233 = v268;
      v234 = v269;
      v235 = v270;
      v231 = v266;
      v232 = v267;
      v68 = sub_1AFDFF2E8();
      v348[0] = v283;
      v348[1] = v284;
      v348[2] = v285;
      v344 = v279;
      v345 = v280;
      v346 = v281;
      v347 = v282;
      v340 = v275;
      v341 = v276;
      v342 = v277;
      v343 = v278;
      v349 = v224;
      v350 = v32;
      v351 = v218;
      v352 = v217;
      v353 = v216;
      v354 = v213;
      v355 = v195;
      v356 = v202;
      v357 = v201;
      v358 = v200;
      v359 = v203;
      v361 = WORD2(v199);
      v360 = v199;
      v362 = BYTE6(v199);
      v363 = v227;
      v364 = v228;
      v365 = v229;
      v366 = v230;
      v368 = 0;
      v367 = 0;
      v369 = 3;
      v370 = 0;
      v371 = 0;
      v372 = 2;
      v375 = 0;
      v373 = 0;
      v374 = 0;
      v376 = 257;
      v377 = v244;
      v378 = v245;
      v379 = v68;
      v69 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_shaderArchive);

      v70 = sub_1AF730058(&v340);
      v72 = v71;
      v74 = v73;
      v75 = v73;

      if (v75)
      {
        sub_1AF6022A8(v70, v72, v74);
        sub_1AF602304(&v340);

        swift_unknownObjectRelease();

        return;
      }

      v76 = swift_unknownObjectRetain();
      sub_1AF6022A8(v76, v72, 0);
      swift_getObjectType();
      [v211 setRenderPipelineState_];
      v225 = sub_1AFBE4EC4();
      CFXTextureDescriptorMakeDefault(&v242);
      v77 = *(a2 + 656);
      v272 = *(a2 + 640);
      v273 = v77;
      v274[0] = *(a2 + 672);
      *(v274 + 9) = *(a2 + 681);
      v78 = *(a2 + 592);
      v268 = *(a2 + 576);
      v269 = v78;
      v79 = *(a2 + 624);
      v270 = *(a2 + 608);
      v271 = v79;
      v80 = *(a2 + 560);
      v266 = *v185;
      v267 = v80;
      if (sub_1AF448314(&v266) == 1)
      {
        goto LABEL_88;
      }

      v81 = v266.i64[1];
      v82 = swift_getObjectType();
      v83 = *(v81 + 80);
      swift_unknownObjectRetain();
      v84 = v83(v82, v81);
      swift_unknownObjectRelease();
      sub_1AF46749C(v84, &v242);
      v85 = *(a2 + 656);
      v264[6] = *(a2 + 640);
      v264[7] = v85;
      v265[0] = *(a2 + 672);
      *(v265 + 9) = *(a2 + 681);
      v86 = *(a2 + 592);
      v264[2] = *(a2 + 576);
      v264[3] = v86;
      v87 = *(a2 + 624);
      v264[4] = *(a2 + 608);
      v264[5] = v87;
      v88 = *(a2 + 560);
      v264[0] = *v185;
      v264[1] = v88;
      if (sub_1AF448314(v264) == 1)
      {
        goto LABEL_88;
      }

      v89 = *(&v264[0] + 1);
      v90 = swift_getObjectType();
      v91 = *(v89 + 80);
      swift_unknownObjectRetain();
      v91(v90, v89);
      v93 = v92;
      swift_unknownObjectRelease();
      sub_1AF4674A4(v93, &v242);
      sub_1AF46748C(*(a2 + 288), &v242);
      sub_1AFA4DCA8(&v242);
      sub_1AF48F3EC(&v242);
      sub_1AF4674D0(&v242);
      v94.i32[1] = DWORD1(v242);
      v240 = v242;
      v241 = v243;
      if (((*(&v204 + 1) > 0.0) & ~v198) != 0)
      {
        sub_1AF0D879C(v291, 2);
        v96 = *(&v291[0] + 1);
        v95 = *&v291[0];

        v97 = sub_1AF750DEC(v95, v96, 0, 0, 0, 1, 1);
        sub_1AF0D8F38(v291);

        *&v246 = v204;
      }

      else
      {
        v97 = 0;
      }

      v98 = v206;
      if (v188)
      {
        sub_1AF0D879C(&v292, 10);
        v100 = *(&v292 + 1);
        v99 = v292;

        v101 = sub_1AF750DEC(v99, v100, 0, 0, 0, 1, 1);

        v222 = v101;
        if (v101)
        {
          sub_1AF0D8F38(&v292);
          v98 = v206;
        }

        else
        {
          v223 = v99;
          v214 = v97;
          v219 = v27;
          v102 = v28;
          v338 = 0u;
          v339 = 0u;
          v103 = *(v212 + 16);
          v104 = v103[34];
          v256 = v103[35];
          v105 = v103[39];
          v259 = v103[38];
          v260 = v105;
          v106 = v103[37];
          v257 = v103[36];
          v258 = v106;
          v107 = v103[42];
          v262 = v103[41];
          v263[0] = v107;
          v261 = v103[40];
          v108 = v297;
          v109 = 32;
          if (!v297)
          {
            v109 = 1;
          }

          if (v298)
          {
            v108 = v109;
          }

          v331 = v295;
          v332 = v296;
          v333 = v295;
          v334 = v296;
          v335 = v293;
          v336 = v108;
          v337 = v294;
          v255 = v104;
          *(v263 + 9) = *(v103 + 681);

          if (sub_1AF448314(&v255) == 1)
          {
            goto LABEL_88;
          }

          v110 = *(&v255 + 1);
          v111 = swift_getObjectType();
          v112 = *(v110 + 80);
          swift_unknownObjectRetain();
          v113 = v112(v111, v110);
          v115 = v114;

          swift_unknownObjectRelease();
          v116 = sub_1AFBE973C(0, 2, v113, v115);
          v118 = v117;
          LODWORD(v110) = v119;

          v222 = sub_1AF750DEC(v223, v100, v116, v118, v110, 0, 1);
          sub_1AF0D8F38(&v292);

          v98 = v206;
          v28 = v102;
          v27 = v219;
          v97 = v214;
        }
      }

      else
      {
        v222 = 0;
      }

      if (v184)
      {
        sub_1AF0D879C(&v299, 9);
        v120 = *(&v299 + 1);
        v121 = v299;

        v122 = sub_1AF750DEC(v121, v120, 0, 0, 0, 1, 1);

        v220 = v122;
        if (v122)
        {
          sub_1AF0D8F38(&v299);
        }

        else
        {
          v221 = v120;
          v215 = v97;
          v205 = v24;
          v123 = v23;
          v124 = v25;
          v125 = v26;
          v126 = v27;
          v127 = v28;
          v128 = v304;
          v129 = 32;
          if (!v304)
          {
            v129 = 1;
          }

          if (v305)
          {
            v128 = v129;
          }

          v322 = v302;
          v323 = v303;
          v324 = v302;
          v325 = v303;
          v326 = v300;
          v327 = v128;
          v328 = v301;
          v329 = 0u;
          v330 = 0u;
          v130 = *(v212 + 16);
          v131 = v130[39];
          v259 = v130[38];
          v260 = v131;
          v132 = v130[37];
          v257 = v130[36];
          v258 = v132;
          v133 = v130[42];
          v262 = v130[41];
          v263[0] = v133;
          v261 = v130[40];
          v134 = v130[35];
          v255 = v130[34];
          v256 = v134;
          *(v263 + 9) = *(v130 + 681);

          if (sub_1AF448314(&v255) == 1)
          {
            goto LABEL_88;
          }

          v135 = *(&v255 + 1);
          v136 = swift_getObjectType();
          v137 = *(v135 + 80);
          swift_unknownObjectRetain();
          v138 = v137(v136, v135);
          v140 = v139;

          swift_unknownObjectRelease();
          v141 = sub_1AFBE973C(0, 2, v138, v140);
          v143 = v142;
          v145 = v144;

          v220 = sub_1AF750DEC(v121, v221, v141, v143, v145, 0, 1);
          sub_1AF0D8F38(&v299);

          v98 = v206;
          v28 = v127;
          v27 = v126;
          v26 = v125;
          v25 = v124;
          v23 = v123;
          v24 = v205;
          v97 = v215;
        }

        *(&v252 + 2) = (v59 * 0.01) * [v225 height];
      }

      else
      {
        v220 = 0;
      }

      if (v209)
      {
        if (v210)
        {
          goto LABEL_72;
        }
      }

      else
      {
        v255 = v240;
        *&v256 = v241;
        v147 = sub_1AF445CB0(&v255);
        v255 = v240;
        *&v256 = v241;
        *v94.i32 = v147 / sub_1AF445CA8(&v255);
        *(&v246 + 3) = *v94.i32 + ((1.0 - *v94.i32) * fminf(fmaxf(*(&v178 + 1), 0.0), 1.0));
        DWORD2(v246) = fminf(fmaxf(*&v178, 0.0), 1.0);
        LODWORD(v247) = fminf(fmaxf(1.0 - *&v179, 0.0), 1.0);
        *(&v247 + 1) = *&v247 + *(&v179 + 1);
        if (v210)
        {
LABEL_72:
          if (!v208)
          {
LABEL_73:
            v146 = 0;
LABEL_84:
            if (*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_isVFX2) == 1 && [v225 sampleCount] >= 2)
            {
              swift_unknownObjectRelease();
              sub_1AF602304(&v340);
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();

              swift_unknownObjectRelease();
              swift_unknownObjectRelease();

              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
            }

            else
            {
              [v211 setFragmentTexture:v225 atIndex:0];
              [v211 setFragmentTexture:v97 atIndex:1];
              [v211 setFragmentTexture:v222 atIndex:2];
              [v211 setFragmentTexture:v220 atIndex:3];
              [v211 setFragmentTexture:v146 atIndex:4];
              [v211 setFragmentBytes:&v246 length:128 atIndex:0];
              sub_1AF6F5B7C(1);
              swift_unknownObjectRelease();
              sub_1AF602304(&v340);
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();

              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
            }

            return;
          }

          goto LABEL_76;
        }
      }

      DWORD2(v247) = v24;
      v148 = 0.31271 - (v23 * 0.1);
      v149 = (v25 * 0.1) + (((v148 * 2.87) + (v148 * (v148 * -3.0))) + -0.275);
      v150.i32[1] = 1002955394;
      v151 = vmlaq_n_f32(vaddq_f32(vmulq_n_f32(xmmword_1AFE42EE0, v148 / v149), xmmword_1AFE42EF0), xmmword_1AFE42F00, ((1.0 - v148) - v149) / v149);
      *&v152 = vdiv_f32(0x3F8487FD3F730553, *v151.f32);
      *(&v152 + 2) = 1.0872 / v151.f32[2];
      HIDWORD(v152) = 0;
      v248 = v152;
      v153 = vmul_f32(*&vextq_s8(v181, v181, 4uLL), 0x3D93DD983F371759);
      *v150.i32 = v153.f32[1] + ((0.2126 * v181.f32[0]) + v153.f32[0]);
      v154 = vdupq_lane_s32(v150, 0);
      *&v155 = vsubq_f32(vaddq_f32(vdupq_lane_s32(v180, 0), v181), v154).u64[0];
      *(&v155 + 2) = (*v180.i32 + v181.f32[2]) - *v150.i32;
      HIDWORD(v155) = 0;
      *&v152 = v26 + 1.0;
      v156 = vmul_f32(*&vextq_s8(v182, v182, 4uLL), 0x3D93DD983F371759);
      v154.f32[0] = v156.f32[1] + ((0.2126 * v182.f32[0]) + v156.f32[0]);
      *&v152 = vsubq_f32(vaddq_f32(v182, vdupq_lane_s32(*&v152, 0)), vdupq_lane_s32(*v154.f32, 0)).u64[0];
      *(&v152 + 2) = (v182.f32[2] + (v26 + 1.0)) - v154.f32[0];
      HIDWORD(v152) = 0;
      v249 = v155;
      v250 = v152;
      *v94.i32 = v27 + 1.0;
      v157 = vmul_f32(*&vextq_s8(v183, v183, 4uLL), 0x3D93DD983F371759);
      v151.f32[0] = v157.f32[1] + ((0.2126 * v183.f32[0]) + v157.f32[0]);
      *&v158 = vsubq_f32(vaddq_f32(v183, vdupq_lane_s32(v94, 0)), vdupq_lane_s32(*v151.f32, 0)).u64[0];
      *(&v158 + 2) = (v183.f32[2] + (v27 + 1.0)) - v151.f32[0];
      HIDWORD(v158) = 0;
      v251 = v158;
      *&v252 = v28;
      if (!v208)
      {
        goto LABEL_73;
      }

LABEL_76:
      sub_1AF0D879C(&v306, 12);
      v159 = v306;

      v146 = sub_1AF750DEC(v159, *(&v159 + 1), 0, 0, 0, 1, 1);

      if (v146)
      {
        sub_1AF0D8F38(&v306);
        goto LABEL_84;
      }

      v160 = v311;
      v161 = 32;
      if (!v311)
      {
        v161 = 1;
      }

      if (v312)
      {
        v160 = v161;
      }

      v313 = v309;
      v314 = v310;
      v315 = v309;
      v316 = v310;
      v317 = v307;
      v318 = v160;
      v319 = v308;
      v320 = 0u;
      v321 = 0u;
      v162 = *(v212 + 16);
      v163 = v162[39];
      v259 = v162[38];
      v260 = v163;
      v164 = v162[37];
      v257 = v162[36];
      v258 = v164;
      v165 = v162[42];
      v262 = v162[41];
      v263[0] = v165;
      v261 = v162[40];
      v166 = v162[35];
      v255 = v162[34];
      v256 = v166;
      *(v263 + 9) = *(v162 + 681);

      if (sub_1AF448314(&v255) != 1)
      {
        v167 = *(&v255 + 1);
        v168 = swift_getObjectType();
        v169 = *(v167 + 80);
        swift_unknownObjectRetain();
        v170 = v169(v168, v167);
        v172 = v171;

        swift_unknownObjectRelease();
        v173 = sub_1AFBE973C(0, 2, v170, v172);
        v175 = v174;
        v177 = v176;

        v146 = sub_1AF750DEC(v159, *(&v159 + 1), v173, v175, v177, 0, 1);
        sub_1AF0D8F38(&v306);

        v98 = v206;
        goto LABEL_84;
      }

LABEL_88:
      sub_1AFDFE518();
      __break(1u);
      return;
    }
  }
}

uint64_t sub_1AFA53AE8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a8 == 3)
  {
    v27 = 0x6E6F6974636E7566;
    v29 = 0xE900000000000020;
  }

  else
  {
    v12 = a1;
    v13 = a2;
    v14 = *(a7 + 16);
    if (v14)
    {
      v15 = (a7 + 40);
      do
      {
        v28 = *(v15 - 1);
        v30 = *v15;

        MEMORY[0x1B2718AE0](32, 0xE100000000000000);
        MEMORY[0x1B2718AE0](v28, v30);

        v15 += 2;
        --v14;
      }

      while (v14);
    }

    if (a6)
    {

      MEMORY[0x1B2718AE0](32, 0xE100000000000000);
      MEMORY[0x1B2718AE0](a5, a6);
    }

    v27 = a3;
    v29 = a4;

    MEMORY[0x1B2718AE0](32, 0xE100000000000000);
    a1 = v12;
    a2 = v13;
  }

  MEMORY[0x1B2718AE0](a1, a2, a3, a4, a5, a6, a7);
  MEMORY[0x1B2718AE0](40, 0xE100000000000000);
  MEMORY[0x1B2718AE0](v27, v29);

  v16 = sub_1AFA53DDC(&unk_1F2500D58);
  sub_1AF974118(&unk_1F2500D78);
  v17 = *(v16 + 2);
  if (v17)
  {
    MEMORY[0x1B2718AE0](10, 0xE100000000000000);
    v18 = 0;
    v19 = (v16 + 56);
    do
    {
      v24 = *(v19 - 1);
      v23 = *v19;
      v25 = *(v16 + 2) - 1;

      swift_bridgeObjectRetain_n();
      if (v18 != v25)
      {
        MEMORY[0x1B2718AE0](44, 0xE100000000000000);
      }

      if (v23)
      {
        MEMORY[0x1B2718AE0](v24, v23);

        MEMORY[0x1B2718AE0](539963168, 0xE400000000000000);
      }

      ++v18;
      v19 += 4;
      MEMORY[0x1B2718AE0](10, 0xE100000000000000);
      v20 = sub_1AFAF888C(4);
      v22 = v21;

      MEMORY[0x1B2718AE0](v20, v22);
    }

    while (v17 != v18);
  }

  MEMORY[0x1B2718AE0](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_1AFA53D98(uint64_t a1, uint64_t a2)
{
  v2 = sub_1AFA562B8(a1, a2);

  return v2;
}

char *sub_1AFA53DDC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 32);
    v3 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v4 = *v2;
      v5 = *(*v2 + 16);
      v6 = *(v3 + 2);
      v7 = v6 + v5;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v7 <= *(v3 + 3) >> 1)
      {
        if (*(v4 + 16))
        {
          goto LABEL_13;
        }
      }

      else
      {
        if (v6 <= v7)
        {
          v9 = v6 + v5;
        }

        else
        {
          v9 = v6;
        }

        v3 = sub_1AF426264(isUniquelyReferenced_nonNull_native, v9, 1, v3);
        if (*(v4 + 16))
        {
LABEL_13:
          swift_arrayInitWithCopy();

          if (v5)
          {
            *(v3 + 2) += v5;
          }

          goto LABEL_4;
        }
      }

LABEL_4:
      ++v2;
      if (!--v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CC0];
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_1AFA53EE4(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{

  MEMORY[0x1B2718AE0](40, 0xE100000000000000);
  v6 = sub_1AFB054AC(a4);
  v7 = *(v6 + 16);
  if (v7 && (a3 & 1) == 0)
  {
    MEMORY[0x1B2718AE0](10, 0xE100000000000000);
LABEL_5:
    v8 = 0;
    v9 = (v6 + 40);
    while (1)
    {
      v10 = *(v9 - 1);
      v12 = *v9;
      v22 = v10;
      v23 = *v9;
      swift_bridgeObjectRetain_n();
      v13 = sub_1AFDFD188();

      if (v13)
      {
        sub_1AFDFD048();
        sub_1AFDFD078();
        v14 = sub_1AFDFD1F8();
        v16 = v15;
        v18 = v17;
        v20 = v19;

        v10 = MEMORY[0x1B27189E0](v14, v16, v18, v20);
        v12 = v21;

        v22 = v10;
        v23 = v12;
      }

      if (v8 == *(v6 + 16) - 1)
      {
        if (a3)
        {
          goto LABEL_7;
        }
      }

      else
      {
        MEMORY[0x1B2718AE0](44, 0xE100000000000000);
        if (a3)
        {
          MEMORY[0x1B2718AE0](32, 0xE100000000000000);
          v10 = v22;
          v12 = v23;
          goto LABEL_7;
        }
      }

      MEMORY[0x1B2718AE0](10, 0xE100000000000000);
      v10 = sub_1AFAF888C(4);
      v12 = v11;

LABEL_7:
      MEMORY[0x1B2718AE0](v10, v12);
      ++v8;

      v9 += 4;
      if (v7 == v8)
      {
        goto LABEL_15;
      }
    }
  }

  if (v7)
  {
    goto LABEL_5;
  }

LABEL_15:

  MEMORY[0x1B2718AE0](41, 0xE100000000000000);
}

uint64_t sub_1AFA5413C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = a1 + 56;
  do
  {
    v3 = *(v2 - 24);
    v4 = *(v2 - 16);

    MEMORY[0x1B2718AE0](v3, v4);

    if ((sub_1AFDFD188() & 1) == 0)
    {
      MEMORY[0x1B2718AE0](10, 0xE100000000000000);
    }

    v2 += 32;
    --v1;
  }

  while (v1);
  return 0;
}

uint64_t sub_1AFA54218()
{
  MEMORY[0x1B2718AE0]();
  MEMORY[0x1B2718AE0](31520, 0xE200000000000000);
  v0 = sub_1AFA53DDC(&unk_1F25010C0);
  sub_1AF974118(&unk_1F25010E0);
  v1 = *(v0 + 2);
  if (v1)
  {
    MEMORY[0x1B2718AE0](10, 0xE100000000000000);
    v2 = v0 + 56;
    do
    {
      v4 = *(v2 - 3);
      v5 = *(v2 - 2);

      v6 = sub_1AFDFD178();

      if (v6)
      {
        MEMORY[0x1B2718AE0](10, 0xE100000000000000);
        v3 = v4;
      }

      else
      {
        MEMORY[0x1B2718AE0](2619, 0xE200000000000000);
        v7 = sub_1AFAF888C(4);
        v5 = v8;

        v3 = v7;
      }

      MEMORY[0x1B2718AE0](v3, v5);
      v2 += 32;

      --v1;
    }

    while (v1);
  }

  MEMORY[0x1B2718AE0](670589, 0xE300000000000000);
  return 0x20746375727473;
}

uint64_t sub_1AFA543E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  MEMORY[0x1B2718AE0](a1, a2);
  MEMORY[0x1B2718AE0](31520, 0xE200000000000000);
  v6 = a4(a3);
  v7 = *(v6 + 16);
  if (v7)
  {
    MEMORY[0x1B2718AE0](10, 0xE100000000000000);
    v8 = v6 + 56;
    do
    {
      v10 = *(v8 - 24);
      v11 = *(v8 - 16);

      v12 = sub_1AFDFD178();

      if (v12)
      {
        MEMORY[0x1B2718AE0](10, 0xE100000000000000);
        v9 = v10;
      }

      else
      {
        MEMORY[0x1B2718AE0](2619, 0xE200000000000000);
        v13 = sub_1AFAF888C(4);
        v11 = v14;

        v9 = v13;
      }

      MEMORY[0x1B2718AE0](v9, v11);
      v8 += 32;

      --v7;
    }

    while (v7);
  }

  MEMORY[0x1B2718AE0](670589, 0xE300000000000000);
  return 0x20746375727473;
}

uint64_t sub_1AFA54564(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  sub_1AFA56C3C(0, &qword_1EB638390, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = v2;
  *(inited + 40) = v1;
  sub_1AF441DD8(0);
  *(inited + 48) = 0;
  *(inited + 56) = 0;
  v4 = swift_initStackObject();
  *(v4 + 16) = xmmword_1AFE431C0;
  *(v4 + 32) = inited;

  v5 = sub_1AFA53DDC(v4);
  swift_setDeallocating();
  sub_1AF974118(v4 + 32);
  v6 = *(v5 + 2);
  if (!v6)
  {
LABEL_7:

    return 0;
  }

  v7 = v5 + 40;
  v8 = *(v5 + 2);
  while (1)
  {
    v9 = *(v7 - 1) & 0xFFFFFFFFFFFFLL;
    if ((*v7 & 0x2000000000000000) != 0)
    {
      v9 = HIBYTE(*v7) & 0xFLL;
    }

    if (v9)
    {
      break;
    }

    v7 += 4;
    if (!--v8)
    {
      goto LABEL_7;
    }
  }

  v45 = v5;
  v11 = MEMORY[0x1E69E7CC0];
  v12 = *(MEMORY[0x1E69E7CC0] + 16);
  v13 = v12 + v6;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if ((isUniquelyReferenced_nonNull_native & 1) == 0 || (v15 = v11, v13 > *(v11 + 3) >> 1))
  {
    if (v12 <= v13)
    {
      v16 = v12 + v6;
    }

    else
    {
      v16 = v12;
    }

    v15 = sub_1AF426264(isUniquelyReferenced_nonNull_native, v16, 1, MEMORY[0x1E69E7CC0]);
  }

  if (*(v5 + 2))
  {
    swift_arrayInitWithCopy();

    *(v15 + 2) += v6;
  }

  else
  {
  }

  sub_1AF974118(&v45);
  v44 = v15;
  v17 = *(v15 + 2);
  v18 = *(v11 + 2);
  v19 = v18 + v17;

  v20 = swift_isUniquelyReferenced_nonNull_native();
  if ((v20 & 1) == 0 || (v21 = v11, v19 > *(v11 + 3) >> 1))
  {
    if (v18 <= v19)
    {
      v22 = v18 + v17;
    }

    else
    {
      v22 = v18;
    }

    v21 = sub_1AF426264(v20, v22, 1, MEMORY[0x1E69E7CC0]);
  }

  if (*(v15 + 2))
  {
    swift_arrayInitWithCopy();

    if (v17)
    {
      *(v21 + 2) += v17;
    }
  }

  else
  {
  }

  sub_1AF974118(&v44);
  sub_1AFA5413C(v21);

  v23 = sub_1AFAF888C(4);
  v25 = v24;

  v26 = swift_initStackObject();
  *(v26 + 16) = xmmword_1AFE431C0;
  *(v26 + 32) = v23;
  *(v26 + 40) = v25;
  *(v26 + 48) = 0;
  *(v26 + 56) = 0;
  v43 = v26;
  v27 = qword_1F2504678;
  v28 = *(v11 + 2);
  v29 = v28 + qword_1F2504678;

  v30 = swift_isUniquelyReferenced_nonNull_native();
  if ((v30 & 1) == 0 || v29 > *(v11 + 3) >> 1)
  {
    if (v28 <= v29)
    {
      v31 = v29;
    }

    else
    {
      v31 = v28;
    }

    v11 = sub_1AF426264(v30, v31, 1, MEMORY[0x1E69E7CC0]);
  }

  if (qword_1F2504678)
  {
    swift_arrayInitWithCopy();

    v32 = *(v11 + 2);
    if (v27)
    {
      v32 += v27;
      *(v11 + 2) = v32;
    }
  }

  else
  {

    v32 = *(v11 + 2);
  }

  v33 = *(v43 + 16);
  v34 = v32 + v33;

  v35 = swift_isUniquelyReferenced_nonNull_native();
  if (v35 && v34 <= *(v11 + 3) >> 1)
  {
    if (*(v43 + 16))
    {
      goto LABEL_40;
    }
  }

  else
  {
    if (v32 <= v34)
    {
      v37 = v32 + v33;
    }

    else
    {
      v37 = v32;
    }

    v11 = sub_1AF426264(v35, v37, 1, v11);
    if (*(v43 + 16))
    {
LABEL_40:
      swift_arrayInitWithCopy();

      v36 = *(v11 + 2);
      if (v33)
      {
        v36 += v33;
        *(v11 + 2) = v36;
      }

      goto LABEL_47;
    }
  }

  v36 = *(v11 + 2);
LABEL_47:
  v38 = unk_1F25046B8;
  v39 = v36 + unk_1F25046B8;

  v40 = swift_isUniquelyReferenced_nonNull_native();
  if (!v40 || v39 > *(v11 + 3) >> 1)
  {
    if (v36 <= v39)
    {
      v41 = v36 + v38;
    }

    else
    {
      v41 = v36;
    }

    v11 = sub_1AF426264(v40, v41, 1, v11);
  }

  if (unk_1F25046B8)
  {
    swift_arrayInitWithCopy();

    if (v38)
    {
      *(v11 + 2) += v38;
    }
  }

  else
  {
  }

  sub_1AFA56C3C(0, &unk_1ED723290, MEMORY[0x1E69E62F8]);
  swift_arrayDestroy();
  v42 = sub_1AFA5413C(v11);

  return v42;
}

uint64_t sub_1AFA54A60(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  sub_1AFA56C3C(0, &qword_1EB638390, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = v2;
  *(inited + 40) = v1;
  sub_1AF441DD8(0);
  *(inited + 48) = 0;
  *(inited + 56) = 0;
  v4 = swift_initStackObject();
  *(v4 + 16) = xmmword_1AFE431C0;
  *(v4 + 32) = inited;

  v5 = sub_1AFA53DDC(v4);
  swift_setDeallocating();
  sub_1AF974118(v4 + 32);
  v6 = *(v5 + 2);
  if (!v6)
  {
LABEL_7:

    return 0;
  }

  v7 = v5 + 40;
  v8 = *(v5 + 2);
  while (1)
  {
    v9 = *(v7 - 1) & 0xFFFFFFFFFFFFLL;
    if ((*v7 & 0x2000000000000000) != 0)
    {
      v9 = HIBYTE(*v7) & 0xFLL;
    }

    if (v9)
    {
      break;
    }

    v7 += 4;
    if (!--v8)
    {
      goto LABEL_7;
    }
  }

  v45 = v5;
  v11 = MEMORY[0x1E69E7CC0];
  v12 = *(MEMORY[0x1E69E7CC0] + 16);
  v13 = v12 + v6;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if ((isUniquelyReferenced_nonNull_native & 1) == 0 || (v15 = v11, v13 > *(v11 + 3) >> 1))
  {
    if (v12 <= v13)
    {
      v16 = v12 + v6;
    }

    else
    {
      v16 = v12;
    }

    v15 = sub_1AF426264(isUniquelyReferenced_nonNull_native, v16, 1, MEMORY[0x1E69E7CC0]);
  }

  if (*(v5 + 2))
  {
    swift_arrayInitWithCopy();

    *(v15 + 2) += v6;
  }

  else
  {
  }

  sub_1AF974118(&v45);
  v44 = v15;
  v17 = *(v15 + 2);
  v18 = *(v11 + 2);
  v19 = v18 + v17;

  v20 = swift_isUniquelyReferenced_nonNull_native();
  if ((v20 & 1) == 0 || (v21 = v11, v19 > *(v11 + 3) >> 1))
  {
    if (v18 <= v19)
    {
      v22 = v18 + v17;
    }

    else
    {
      v22 = v18;
    }

    v21 = sub_1AF426264(v20, v22, 1, MEMORY[0x1E69E7CC0]);
  }

  if (*(v15 + 2))
  {
    swift_arrayInitWithCopy();

    if (v17)
    {
      *(v21 + 2) += v17;
    }
  }

  else
  {
  }

  sub_1AF974118(&v44);
  sub_1AFA5413C(v21);

  v23 = sub_1AFAF888C(4);
  v25 = v24;

  v26 = swift_initStackObject();
  *(v26 + 16) = xmmword_1AFE431C0;
  *(v26 + 32) = v23;
  *(v26 + 40) = v25;
  *(v26 + 48) = 0;
  *(v26 + 56) = 0;
  v43 = v26;
  v27 = qword_1F25046F8;
  v28 = *(v11 + 2);
  v29 = v28 + qword_1F25046F8;

  v30 = swift_isUniquelyReferenced_nonNull_native();
  if ((v30 & 1) == 0 || v29 > *(v11 + 3) >> 1)
  {
    if (v28 <= v29)
    {
      v31 = v29;
    }

    else
    {
      v31 = v28;
    }

    v11 = sub_1AF426264(v30, v31, 1, MEMORY[0x1E69E7CC0]);
  }

  if (qword_1F25046F8)
  {
    swift_arrayInitWithCopy();

    v32 = *(v11 + 2);
    if (v27)
    {
      v32 += v27;
      *(v11 + 2) = v32;
    }
  }

  else
  {

    v32 = *(v11 + 2);
  }

  v33 = *(v43 + 16);
  v34 = v32 + v33;

  v35 = swift_isUniquelyReferenced_nonNull_native();
  if (v35 && v34 <= *(v11 + 3) >> 1)
  {
    if (*(v43 + 16))
    {
      goto LABEL_40;
    }
  }

  else
  {
    if (v32 <= v34)
    {
      v37 = v32 + v33;
    }

    else
    {
      v37 = v32;
    }

    v11 = sub_1AF426264(v35, v37, 1, v11);
    if (*(v43 + 16))
    {
LABEL_40:
      swift_arrayInitWithCopy();

      v36 = *(v11 + 2);
      if (v33)
      {
        v36 += v33;
        *(v11 + 2) = v36;
      }

      goto LABEL_47;
    }
  }

  v36 = *(v11 + 2);
LABEL_47:
  v38 = unk_1F2504738;
  v39 = v36 + unk_1F2504738;

  v40 = swift_isUniquelyReferenced_nonNull_native();
  if (!v40 || v39 > *(v11 + 3) >> 1)
  {
    if (v36 <= v39)
    {
      v41 = v36 + v38;
    }

    else
    {
      v41 = v36;
    }

    v11 = sub_1AF426264(v40, v41, 1, v11);
  }

  if (unk_1F2504738)
  {
    swift_arrayInitWithCopy();

    if (v38)
    {
      *(v11 + 2) += v38;
    }
  }

  else
  {
  }

  sub_1AFA56C3C(0, &unk_1ED723290, MEMORY[0x1E69E62F8]);
  swift_arrayDestroy();
  v42 = sub_1AFA5413C(v11);

  return v42;
}

uint64_t sub_1AFA54F5C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v11 = MEMORY[0x1E69E7CC0];
    sub_1AFC0787C(0, v1, 0);
    v2 = v11;
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v7 = *(v11 + 16);
      v8 = *(v11 + 24);

      if (v7 >= v8 >> 1)
      {
        sub_1AFC0787C(v8 > 1, v7 + 1, 1);
      }

      *(v11 + 16) = v7 + 1;
      v9 = (v11 + 32 * v7);
      v9[4] = v6;
      v9[5] = v5;
      v9[6] = 0;
      v9[7] = 0;
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void sub_1AFA55030(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9)
{

  MEMORY[0x1B2718AE0](40, 0xE100000000000000);
  v15 = sub_1AF9193E8(a4, a5, a6, a7, a8, a9);
  v16 = *(v15 + 16);
  if (v16 && (a3 & 1) == 0)
  {
    MEMORY[0x1B2718AE0](10, 0xE100000000000000);
LABEL_5:
    v17 = 0;
    v18 = (v15 + 40);
    while (1)
    {
      v19 = *(v18 - 1);
      v21 = *v18;
      v31 = v19;
      v32 = *v18;
      swift_bridgeObjectRetain_n();
      v22 = sub_1AFDFD188();

      if (v22)
      {
        sub_1AFDFD048();
        sub_1AFDFD078();
        v23 = sub_1AFDFD1F8();
        v25 = v24;
        v27 = v26;
        v29 = v28;

        v19 = MEMORY[0x1B27189E0](v23, v25, v27, v29);
        v21 = v30;

        v31 = v19;
        v32 = v21;
      }

      if (v17 == *(v15 + 16) - 1)
      {
        if (a3)
        {
          goto LABEL_7;
        }
      }

      else
      {
        MEMORY[0x1B2718AE0](44, 0xE100000000000000);
        if (a3)
        {
          MEMORY[0x1B2718AE0](32, 0xE100000000000000);
          v19 = v31;
          v21 = v32;
          goto LABEL_7;
        }
      }

      MEMORY[0x1B2718AE0](10, 0xE100000000000000);
      v19 = sub_1AFAF888C(4);
      v21 = v20;

LABEL_7:
      MEMORY[0x1B2718AE0](v19, v21);
      ++v17;

      v18 += 4;
      if (v16 == v17)
      {
        goto LABEL_15;
      }
    }
  }

  if (v16)
  {
    goto LABEL_5;
  }

LABEL_15:

  MEMORY[0x1B2718AE0](41, 0xE100000000000000);
}

void sub_1AFA552B0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  v14.n128_f64[0] = MEMORY[0x1B2718AE0](40, 0xE100000000000000);
  v15 = sub_1AF932090(a4, a5, a6, a7, a8, v14);
  v16 = *(v15 + 16);
  if (v16 && (a3 & 1) == 0)
  {
    MEMORY[0x1B2718AE0](10, 0xE100000000000000);
LABEL_5:
    v17 = 0;
    v18 = (v15 + 40);
    while (1)
    {
      v19 = *(v18 - 1);
      v21 = *v18;
      v31 = v19;
      v32 = *v18;
      swift_bridgeObjectRetain_n();
      v22 = sub_1AFDFD188();

      if (v22)
      {
        sub_1AFDFD048();
        sub_1AFDFD078();
        v23 = sub_1AFDFD1F8();
        v25 = v24;
        v27 = v26;
        v29 = v28;

        v19 = MEMORY[0x1B27189E0](v23, v25, v27, v29);
        v21 = v30;

        v31 = v19;
        v32 = v21;
      }

      if (v17 == *(v15 + 16) - 1)
      {
        if (a3)
        {
          goto LABEL_7;
        }
      }

      else
      {
        MEMORY[0x1B2718AE0](44, 0xE100000000000000);
        if (a3)
        {
          MEMORY[0x1B2718AE0](32, 0xE100000000000000);
          v19 = v31;
          v21 = v32;
          goto LABEL_7;
        }
      }

      MEMORY[0x1B2718AE0](10, 0xE100000000000000);
      v19 = sub_1AFAF888C(4);
      v21 = v20;

LABEL_7:
      MEMORY[0x1B2718AE0](v19, v21);
      ++v17;

      v18 += 4;
      if (v16 == v17)
      {
        goto LABEL_15;
      }
    }
  }

  if (v16)
  {
    goto LABEL_5;
  }

LABEL_15:

  MEMORY[0x1B2718AE0](41, 0xE100000000000000);
}

uint64_t sub_1AFA55558(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t))
{

  MEMORY[0x1B2718AE0](40, 0xE100000000000000);
  v14 = a8(a4, a5, a6, a7);
  v15 = *(v14 + 16);
  if (v15 && (a3 & 1) == 0)
  {
    MEMORY[0x1B2718AE0](10, 0xE100000000000000);
LABEL_5:
    v16 = 0;
    v17 = (v14 + 40);
    while (1)
    {
      v18 = *(v17 - 1);
      v20 = *v17;
      v31 = v18;
      v32 = *v17;
      swift_bridgeObjectRetain_n();
      v21 = sub_1AFDFD188();

      if (v21)
      {
        sub_1AFDFD048();
        sub_1AFDFD078();
        v22 = sub_1AFDFD1F8();
        v24 = v23;
        v26 = v25;
        v28 = v27;

        v18 = MEMORY[0x1B27189E0](v22, v24, v26, v28);
        v20 = v29;

        v31 = v18;
        v32 = v20;
      }

      if (v16 == *(v14 + 16) - 1)
      {
        if (a3)
        {
          goto LABEL_7;
        }
      }

      else
      {
        MEMORY[0x1B2718AE0](44, 0xE100000000000000);
        if (a3)
        {
          MEMORY[0x1B2718AE0](32, 0xE100000000000000);
          v18 = v31;
          v20 = v32;
          goto LABEL_7;
        }
      }

      MEMORY[0x1B2718AE0](10, 0xE100000000000000);
      v18 = sub_1AFAF888C(4);
      v20 = v19;

LABEL_7:
      MEMORY[0x1B2718AE0](v18, v20);
      ++v16;

      v17 += 4;
      if (v15 == v16)
      {
        goto LABEL_15;
      }
    }
  }

  if (v15)
  {
    goto LABEL_5;
  }

LABEL_15:

  MEMORY[0x1B2718AE0](41, 0xE100000000000000);
  return a1;
}

void sub_1AFA557D0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  MEMORY[0x1B2718AE0](40, 0xE100000000000000);
  v15 = sub_1AF9B6F9C(a4, a5, a6, a7, a8, a9);
  v16 = *(v15 + 16);
  if (v16 && (a3 & 1) == 0)
  {
    MEMORY[0x1B2718AE0](10, 0xE100000000000000);
LABEL_5:
    v17 = 0;
    v18 = (v15 + 40);
    while (1)
    {
      v19 = *(v18 - 1);
      v21 = *v18;
      v31 = v19;
      v32 = *v18;
      swift_bridgeObjectRetain_n();
      v22 = sub_1AFDFD188();

      if (v22)
      {
        sub_1AFDFD048();
        sub_1AFDFD078();
        v23 = sub_1AFDFD1F8();
        v25 = v24;
        v27 = v26;
        v29 = v28;

        v19 = MEMORY[0x1B27189E0](v23, v25, v27, v29);
        v21 = v30;

        v31 = v19;
        v32 = v21;
      }

      if (v17 == *(v15 + 16) - 1)
      {
        if (a3)
        {
          goto LABEL_7;
        }
      }

      else
      {
        MEMORY[0x1B2718AE0](44, 0xE100000000000000);
        if (a3)
        {
          MEMORY[0x1B2718AE0](32, 0xE100000000000000);
          v19 = v31;
          v21 = v32;
          goto LABEL_7;
        }
      }

      MEMORY[0x1B2718AE0](10, 0xE100000000000000);
      v19 = sub_1AFAF888C(4);
      v21 = v20;

LABEL_7:
      MEMORY[0x1B2718AE0](v19, v21);
      ++v17;

      v18 += 4;
      if (v16 == v17)
      {
        goto LABEL_15;
      }
    }
  }

  if (v16)
  {
    goto LABEL_5;
  }

LABEL_15:

  MEMORY[0x1B2718AE0](41, 0xE100000000000000);
}

uint64_t sub_1AFA55A68(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t))
{

  MEMORY[0x1B2718AE0](40, 0xE100000000000000);
  v10 = a6(a4, a5);
  v11 = *(v10 + 16);
  if (v11 && (a3 & 1) == 0)
  {
    MEMORY[0x1B2718AE0](10, 0xE100000000000000);
LABEL_5:
    v12 = 0;
    v13 = (v10 + 40);
    while (1)
    {
      v14 = *(v13 - 1);
      v16 = *v13;
      v27 = v14;
      v28 = *v13;
      swift_bridgeObjectRetain_n();
      v17 = sub_1AFDFD188();

      if (v17)
      {
        sub_1AFDFD048();
        sub_1AFDFD078();
        v18 = sub_1AFDFD1F8();
        v20 = v19;
        v22 = v21;
        v24 = v23;

        v14 = MEMORY[0x1B27189E0](v18, v20, v22, v24);
        v16 = v25;

        v27 = v14;
        v28 = v16;
      }

      if (v12 == *(v10 + 16) - 1)
      {
        if (a3)
        {
          goto LABEL_7;
        }
      }

      else
      {
        MEMORY[0x1B2718AE0](44, 0xE100000000000000);
        if (a3)
        {
          MEMORY[0x1B2718AE0](32, 0xE100000000000000);
          v14 = v27;
          v16 = v28;
          goto LABEL_7;
        }
      }

      MEMORY[0x1B2718AE0](10, 0xE100000000000000);
      v14 = sub_1AFAF888C(4);
      v16 = v15;

LABEL_7:
      MEMORY[0x1B2718AE0](v14, v16);
      ++v12;

      v13 += 4;
      if (v11 == v12)
      {
        goto LABEL_15;
      }
    }
  }

  if (v11)
  {
    goto LABEL_5;
  }

LABEL_15:

  MEMORY[0x1B2718AE0](41, 0xE100000000000000);
  return a1;
}

void sub_1AFA55CD0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  MEMORY[0x1B2718AE0](40, 0xE100000000000000);
  v10 = sub_1AF97D76C(a4, a5, a6);
  v11 = *(v10 + 16);
  if (v11 && (a3 & 1) == 0)
  {
    MEMORY[0x1B2718AE0](10, 0xE100000000000000);
LABEL_5:
    v12 = 0;
    v13 = (v10 + 40);
    while (1)
    {
      v14 = *(v13 - 1);
      v16 = *v13;
      v26 = v14;
      v27 = *v13;
      swift_bridgeObjectRetain_n();
      v17 = sub_1AFDFD188();

      if (v17)
      {
        sub_1AFDFD048();
        sub_1AFDFD078();
        v18 = sub_1AFDFD1F8();
        v20 = v19;
        v22 = v21;
        v24 = v23;

        v14 = MEMORY[0x1B27189E0](v18, v20, v22, v24);
        v16 = v25;

        v26 = v14;
        v27 = v16;
      }

      if (v12 == *(v10 + 16) - 1)
      {
        if (a3)
        {
          goto LABEL_7;
        }
      }

      else
      {
        MEMORY[0x1B2718AE0](44, 0xE100000000000000);
        if (a3)
        {
          MEMORY[0x1B2718AE0](32, 0xE100000000000000);
          v14 = v26;
          v16 = v27;
          goto LABEL_7;
        }
      }

      MEMORY[0x1B2718AE0](10, 0xE100000000000000);
      v14 = sub_1AFAF888C(4);
      v16 = v15;

LABEL_7:
      MEMORY[0x1B2718AE0](v14, v16);
      ++v12;

      v13 += 4;
      if (v11 == v12)
      {
        goto LABEL_15;
      }
    }
  }

  if (v11)
  {
    goto LABEL_5;
  }

LABEL_15:

  MEMORY[0x1B2718AE0](41, 0xE100000000000000);
}

uint64_t sub_1AFA55F38(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(uint64_t))
{

  v6 = MEMORY[0x1B2718AE0](40, 0xE100000000000000);
  v7 = a4(v6);
  v8 = *(v7 + 16);
  if (v8 && (a3 & 1) == 0)
  {
    MEMORY[0x1B2718AE0](10, 0xE100000000000000);
LABEL_5:
    v9 = 0;
    v10 = (v7 + 40);
    while (1)
    {
      v11 = *(v10 - 1);
      v13 = *v10;
      v24 = v11;
      v25 = *v10;
      swift_bridgeObjectRetain_n();
      v14 = sub_1AFDFD188();

      if (v14)
      {
        sub_1AFDFD048();
        sub_1AFDFD078();
        v15 = sub_1AFDFD1F8();
        v17 = v16;
        v19 = v18;
        v21 = v20;

        v11 = MEMORY[0x1B27189E0](v15, v17, v19, v21);
        v13 = v22;

        v24 = v11;
        v25 = v13;
      }

      if (v9 == *(v7 + 16) - 1)
      {
        if (a3)
        {
          goto LABEL_7;
        }
      }

      else
      {
        MEMORY[0x1B2718AE0](44, 0xE100000000000000);
        if (a3)
        {
          MEMORY[0x1B2718AE0](32, 0xE100000000000000);
          v11 = v24;
          v13 = v25;
          goto LABEL_7;
        }
      }

      MEMORY[0x1B2718AE0](10, 0xE100000000000000);
      v11 = sub_1AFAF888C(4);
      v13 = v12;

LABEL_7:
      MEMORY[0x1B2718AE0](v11, v13);
      ++v9;

      v10 += 4;
      if (v8 == v9)
      {
        goto LABEL_15;
      }
    }
  }

  if (v8)
  {
    goto LABEL_5;
  }

LABEL_15:

  MEMORY[0x1B2718AE0](41, 0xE100000000000000);
  return a1;
}

uint64_t sub_1AFA56198(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  MEMORY[0x1B2718AE0](a1, a2);
  MEMORY[0x1B2718AE0](175841321, 0xE400000000000000);
  v6 = sub_1AF97EEC4(a3, a4);
  sub_1AF441DD8(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = v6;
  v8 = inited + 32;
  v9 = sub_1AFA53DDC(inited);
  swift_setDeallocating();
  sub_1AF974118(v8);
  sub_1AFA5413C(v9);

  v10 = sub_1AFAF888C(4);
  v12 = v11;

  MEMORY[0x1B2718AE0](v10, v12);

  MEMORY[0x1B2718AE0](2685, 0xE200000000000000);
  return 0x2820726F66;
}

uint64_t sub_1AFA562B8(uint64_t a1, uint64_t a2)
{
  v2 = sub_1AF97A93C(a1, a2);
  v3 = *(v2 + 16);
  if (!v3)
  {
LABEL_7:

    return 0;
  }

  v4 = (v2 + 40);
  v5 = *(v2 + 16);
  while (1)
  {
    v6 = *(v4 - 1) & 0xFFFFFFFFFFFFLL;
    if ((*v4 & 0x2000000000000000) != 0)
    {
      v6 = HIBYTE(*v4) & 0xFLL;
    }

    if (v6)
    {
      break;
    }

    v4 += 4;
    if (!--v5)
    {
      goto LABEL_7;
    }
  }

  v43 = v2;
  v8 = MEMORY[0x1E69E7CC0];
  v9 = *(MEMORY[0x1E69E7CC0] + 16);
  v10 = v9 + v3;
  v11 = v2;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if ((isUniquelyReferenced_nonNull_native & 1) == 0 || (v13 = v8, v10 > *(v8 + 3) >> 1))
  {
    if (v9 <= v10)
    {
      v14 = v9 + v3;
    }

    else
    {
      v14 = v9;
    }

    v13 = sub_1AF426264(isUniquelyReferenced_nonNull_native, v14, 1, MEMORY[0x1E69E7CC0]);
  }

  if (*(v11 + 16))
  {
    swift_arrayInitWithCopy();

    *(v13 + 2) += v3;
  }

  else
  {
  }

  sub_1AF974118(&v43);
  v42 = v13;
  v15 = *(v13 + 2);
  v16 = *(v8 + 2);
  v17 = v16 + v15;

  v18 = swift_isUniquelyReferenced_nonNull_native();
  if ((v18 & 1) == 0 || (v19 = v8, v17 > *(v8 + 3) >> 1))
  {
    if (v16 <= v17)
    {
      v20 = v16 + v15;
    }

    else
    {
      v20 = v16;
    }

    v19 = sub_1AF426264(v18, v20, 1, MEMORY[0x1E69E7CC0]);
  }

  if (*(v13 + 2))
  {
    swift_arrayInitWithCopy();

    if (v15)
    {
      *(v19 + 2) += v15;
    }
  }

  else
  {
  }

  sub_1AF974118(&v42);
  sub_1AFA5413C(v19);

  v21 = sub_1AFAF888C(4);
  v23 = v22;

  sub_1AFA56C3C(0, &qword_1EB638390, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = v21;
  *(inited + 40) = v23;
  *(inited + 48) = 0;
  *(inited + 56) = 0;
  v41 = inited;
  v25 = qword_1F2505BF0;
  v26 = *(v8 + 2);
  v27 = v26 + qword_1F2505BF0;

  v28 = swift_isUniquelyReferenced_nonNull_native();
  if ((v28 & 1) == 0 || v27 > *(v8 + 3) >> 1)
  {
    if (v26 <= v27)
    {
      v29 = v27;
    }

    else
    {
      v29 = v26;
    }

    v8 = sub_1AF426264(v28, v29, 1, MEMORY[0x1E69E7CC0]);
  }

  if (qword_1F2505BF0)
  {
    swift_arrayInitWithCopy();

    v30 = *(v8 + 2);
    if (v25)
    {
      v30 += v25;
      *(v8 + 2) = v30;
    }
  }

  else
  {

    v30 = *(v8 + 2);
  }

  v31 = *(v41 + 16);
  v32 = v30 + v31;

  v33 = swift_isUniquelyReferenced_nonNull_native();
  if (v33 && v32 <= *(v8 + 3) >> 1)
  {
    if (*(v41 + 16))
    {
      goto LABEL_40;
    }
  }

  else
  {
    if (v30 <= v32)
    {
      v35 = v30 + v31;
    }

    else
    {
      v35 = v30;
    }

    v8 = sub_1AF426264(v33, v35, 1, v8);
    if (*(v41 + 16))
    {
LABEL_40:
      swift_arrayInitWithCopy();

      v34 = *(v8 + 2);
      if (v31)
      {
        v34 += v31;
        *(v8 + 2) = v34;
      }

      goto LABEL_47;
    }
  }

  v34 = *(v8 + 2);
LABEL_47:
  v36 = unk_1F2505C30;
  v37 = v34 + unk_1F2505C30;

  v38 = swift_isUniquelyReferenced_nonNull_native();
  if (!v38 || v37 > *(v8 + 3) >> 1)
  {
    if (v34 <= v37)
    {
      v39 = v34 + v36;
    }

    else
    {
      v39 = v34;
    }

    v8 = sub_1AF426264(v38, v39, 1, v8);
  }

  if (unk_1F2505C30)
  {
    swift_arrayInitWithCopy();

    if (v36)
    {
      *(v8 + 2) += v36;
    }
  }

  else
  {
  }

  sub_1AFA56C3C(0, &unk_1ED723290, MEMORY[0x1E69E62F8]);
  swift_arrayDestroy();
  v40 = sub_1AFA5413C(v8);

  return v40;
}

uint64_t sub_1AFA56740(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  sub_1AFA56C3C(0, &qword_1EB638390, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = v2;
  *(inited + 40) = v1;
  sub_1AF441DD8(0);
  *(inited + 48) = 0;
  *(inited + 56) = 0;
  v4 = swift_initStackObject();
  *(v4 + 16) = xmmword_1AFE431C0;
  *(v4 + 32) = inited;

  v5 = sub_1AFA53DDC(v4);
  swift_setDeallocating();
  sub_1AF974118(v4 + 32);
  v6 = *(v5 + 2);
  if (!v6)
  {
LABEL_7:

    return 0;
  }

  v7 = v5 + 40;
  v8 = *(v5 + 2);
  while (1)
  {
    v9 = *(v7 - 1) & 0xFFFFFFFFFFFFLL;
    if ((*v7 & 0x2000000000000000) != 0)
    {
      v9 = HIBYTE(*v7) & 0xFLL;
    }

    if (v9)
    {
      break;
    }

    v7 += 4;
    if (!--v8)
    {
      goto LABEL_7;
    }
  }

  v45 = v5;
  v11 = MEMORY[0x1E69E7CC0];
  v12 = *(MEMORY[0x1E69E7CC0] + 16);
  v13 = v12 + v6;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if ((isUniquelyReferenced_nonNull_native & 1) == 0 || (v15 = v11, v13 > *(v11 + 3) >> 1))
  {
    if (v12 <= v13)
    {
      v16 = v12 + v6;
    }

    else
    {
      v16 = v12;
    }

    v15 = sub_1AF426264(isUniquelyReferenced_nonNull_native, v16, 1, MEMORY[0x1E69E7CC0]);
  }

  if (*(v5 + 2))
  {
    swift_arrayInitWithCopy();

    *(v15 + 2) += v6;
  }

  else
  {
  }

  sub_1AF974118(&v45);
  v44 = v15;
  v17 = *(v15 + 2);
  v18 = *(v11 + 2);
  v19 = v18 + v17;

  v20 = swift_isUniquelyReferenced_nonNull_native();
  if ((v20 & 1) == 0 || (v21 = v11, v19 > *(v11 + 3) >> 1))
  {
    if (v18 <= v19)
    {
      v22 = v18 + v17;
    }

    else
    {
      v22 = v18;
    }

    v21 = sub_1AF426264(v20, v22, 1, MEMORY[0x1E69E7CC0]);
  }

  if (*(v15 + 2))
  {
    swift_arrayInitWithCopy();

    if (v17)
    {
      *(v21 + 2) += v17;
    }
  }

  else
  {
  }

  sub_1AF974118(&v44);
  sub_1AFA5413C(v21);

  v23 = sub_1AFAF888C(4);
  v25 = v24;

  v26 = swift_initStackObject();
  *(v26 + 16) = xmmword_1AFE431C0;
  *(v26 + 32) = v23;
  *(v26 + 40) = v25;
  *(v26 + 48) = 0;
  *(v26 + 56) = 0;
  v43 = v26;
  v27 = qword_1F25065E0;
  v28 = *(v11 + 2);
  v29 = v28 + qword_1F25065E0;

  v30 = swift_isUniquelyReferenced_nonNull_native();
  if ((v30 & 1) == 0 || v29 > *(v11 + 3) >> 1)
  {
    if (v28 <= v29)
    {
      v31 = v29;
    }

    else
    {
      v31 = v28;
    }

    v11 = sub_1AF426264(v30, v31, 1, MEMORY[0x1E69E7CC0]);
  }

  if (qword_1F25065E0)
  {
    swift_arrayInitWithCopy();

    v32 = *(v11 + 2);
    if (v27)
    {
      v32 += v27;
      *(v11 + 2) = v32;
    }
  }

  else
  {

    v32 = *(v11 + 2);
  }

  v33 = *(v43 + 16);
  v34 = v32 + v33;

  v35 = swift_isUniquelyReferenced_nonNull_native();
  if (v35 && v34 <= *(v11 + 3) >> 1)
  {
    if (*(v43 + 16))
    {
      goto LABEL_40;
    }
  }

  else
  {
    if (v32 <= v34)
    {
      v37 = v32 + v33;
    }

    else
    {
      v37 = v32;
    }

    v11 = sub_1AF426264(v35, v37, 1, v11);
    if (*(v43 + 16))
    {
LABEL_40:
      swift_arrayInitWithCopy();

      v36 = *(v11 + 2);
      if (v33)
      {
        v36 += v33;
        *(v11 + 2) = v36;
      }

      goto LABEL_47;
    }
  }

  v36 = *(v11 + 2);
LABEL_47:
  v38 = unk_1F2506620;
  v39 = v36 + unk_1F2506620;

  v40 = swift_isUniquelyReferenced_nonNull_native();
  if (!v40 || v39 > *(v11 + 3) >> 1)
  {
    if (v36 <= v39)
    {
      v41 = v36 + v38;
    }

    else
    {
      v41 = v36;
    }

    v11 = sub_1AF426264(v40, v41, 1, v11);
  }

  if (unk_1F2506620)
  {
    swift_arrayInitWithCopy();

    if (v38)
    {
      *(v11 + 2) += v38;
    }
  }

  else
  {
  }

  sub_1AFA56C3C(0, &unk_1ED723290, MEMORY[0x1E69E62F8]);
  swift_arrayDestroy();
  v42 = sub_1AFA5413C(v11);

  return v42;
}

void sub_1AFA56C3C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for CodeEmitter.Code);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t *sub_1AFA56CA4(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v8 = *a2;
    *a1 = *a2;
    a1 = (v8 + ((v4 + 16) & ~v4));

    return a1;
  }

  v5 = *(a3 - 8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_1AFDFC318();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v10 = *(v5 + 64);

  return memcpy(a1, a2, v10);
}

uint64_t sub_1AFA56DB4(uint64_t a1, uint64_t a2)
{
  result = swift_getEnumCaseMultiPayload();
  if (result == 1)
  {
    v4 = sub_1AFDFC318();
    v5 = *(*(v4 - 8) + 8);

    return v5(a1, v4);
  }

  return result;
}

void *sub_1AFA56E30(void *a1, const void *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1AFDFC318();
    (*(*(v6 - 8) + 16))(a1, a2, v6);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  else
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }
}

void *sub_1AFA56F00(void *a1, const void *a2, uint64_t a3, double a4)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_1AFA56FE0(a1, a4);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_1AFDFC318();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v9 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v9);
}

uint64_t sub_1AFA56FE0(uint64_t a1, double a2)
{
  v3 = type metadata accessor for ScriptIndex(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for ScriptIndex(uint64_t a1)
{
  result = qword_1ED7306B0;
  if (!qword_1ED7306B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_1AFA57088(void *a1, const void *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1AFDFC318();
    (*(*(v6 - 8) + 32))(a1, a2, v6);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  else
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }
}

void *sub_1AFA57158(void *a1, const void *a2, uint64_t a3, double a4)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_1AFA56FE0(a1, a4);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_1AFDFC318();
    (*(*(v7 - 8) + 32))(a1, a2, v7);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v9 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v9);
}

uint64_t sub_1AFA5729C(uint64_t a1)
{
  result = sub_1AFDFC318();
  if (v2 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t sub_1AFA57330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ScriptCompileAttempt(319, *(a1 + 16), *(a1 + 24), a4);
  if (v5 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    result = sub_1AFDFDD58();
    if (v6 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t *sub_1AFA57454(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 80);
  if (*(v8 + 84))
  {
    v10 = *(v8 + 64);
  }

  else
  {
    v10 = *(v8 + 64) + 1;
  }

  v11 = v9 | *(v6 + 80) & 0xF8;
  v12 = v11 <= 7 && ((*(v6 + 80) | *(v8 + 80)) & 0x100000) == 0;
  if (v12 && (v13 = (((((((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8, ((-10 - v9 - ((((((((v13 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8)) | v9) - v10 >= 0xFFFFFFFFFFFFFFE7))
  {
    v40 = v10;
    v14 = v13 + 8;
    (*(v6 + 16))(a1, a2, v5);
    v42 = a1;
    v15 = (a1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
    v16 = (a2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
    v17 = *v16;
    *(v15 + 8) = *(v16 + 8);
    *v15 = v17;
    *(v15 + 9) = *(v16 + 9);
    v18 = ((v15 + 17) & 0xFFFFFFFFFFFFFFF8);
    v19 = (v16 + 17) & 0xFFFFFFFFFFFFFFF8;
    v20 = *v19;
    v19 += 15;
    v21 = v20;
    *v18 = v20;
    v22 = ((v18 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v22 = *(v19 & 0xFFFFFFFFFFFFFFF8);
    v22[1] = *((v19 & 0xFFFFFFFFFFFFFFF8) + 8);
    *((v22 + 23) & 0xFFFFFFFFFFFFFFF8) = *(((v19 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
    v23 = ((a1 + v14 + 7) & 0xFFFFFFFFFFFFFFF8);
    v24 = ((a2 + v14 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v23 = *v24;
    v25 = ((v23 + 15) & 0xFFFFFFFFFFFFFFF8);
    v26 = ((v24 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v25 = *v26;
    v27 = ((v25 + 15) & 0xFFFFFFFFFFFFFFF8);
    v28 = ((v26 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v27 = *v28;
    v29 = (v27 + 15) & 0xFFFFFFFFFFFFFFF8;
    v30 = (v28 + 15) & 0xFFFFFFFFFFFFFFF8;
    v31 = *v30;
    *v29 = *v30;
    *(v29 + 8) = *(v30 + 8);
    v32 = (v27 + 31) & 0xFFFFFFFFFFFFFFF8;
    v33 = (v28 + 31) & 0xFFFFFFFFFFFFFFF8;
    LOBYTE(v30) = *(v33 + 8);
    *v32 = *v33;
    *(v32 + 8) = v30;
    v41 = v9 + 9 + v32;
    v34 = v9 + 9 + v33;
    v35 = *(v8 + 48);

    v36 = v31;
    if (v35(v34 & ~v9, 1, AssociatedTypeWitness))
    {
      memcpy((v41 & ~v9), (v34 & ~v9), v40);
    }

    else
    {
      (*(v8 + 16))(v41 & ~v9, v34 & ~v9, AssociatedTypeWitness);
      (*(v8 + 56))(v41 & ~v9, 0, 1, AssociatedTypeWitness);
    }

    return v42;
  }

  else
  {
    v37 = *a2;
    *a1 = *a2;
    v38 = v37 + (((v11 | 7) + 16) & ~(v11 | 7));
  }

  return v38;
}

uint64_t sub_1AFA577D0(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  (*v3)(a1, *(a2 + 16));
  v4 = *(v3 + 56) + 7;

  v5 = (((((a1 + (((((((v4 & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 80);
  v9 = ((v5 + 31) & 0xFFFFFFFFFFFFFFF8) + v8 + 9;
  v12 = v7;
  result = (*(v7 + 48))(v9 & ~v8, 1, AssociatedTypeWitness);
  if (!result)
  {
    v11 = *(v12 + 8);

    return v11(v9 & ~v8, AssociatedTypeWitness);
  }

  return result;
}

uint64_t sub_1AFA57994(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)(a1, a2, *(a3 + 16));
  v6 = *(v5 + 48) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v8 + 8);
  *v7 = *v8;
  *(v7 + 8) = v9;
  *(v7 + 9) = *(v8 + 9);
  v10 = ((v7 + 17) & 0xFFFFFFFFFFFFFFF8);
  v11 = (v8 + 17) & 0xFFFFFFFFFFFFFFF8;
  v12 = *v11;
  v11 += 15;
  v13 = v12;
  *v10 = v12;
  v14 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v14 = *(v11 & 0xFFFFFFFFFFFFFFF8);
  v14[1] = *((v11 & 0xFFFFFFFFFFFFFFF8) + 8);
  *((v14 + 23) & 0xFFFFFFFFFFFFFFF8) = *(((v11 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
  v15 = (((((((v6 & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  v16 = a1 + v15 + 7;
  v17 = ((a2 + v15 + 7) & 0xFFFFFFFFFFFFFFF8);
  v16 &= 0xFFFFFFFFFFFFFFF8;
  *v16 = *v17;
  v18 = ((v17 + 15) & 0xFFFFFFFFFFFFFFF8);
  v19 = ((v16 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v19 = *v18;
  v20 = ((v19 + 15) & 0xFFFFFFFFFFFFFFF8);
  v21 = ((v18 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v20 = *v21;
  v22 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v21 + 15) & 0xFFFFFFFFFFFFFFF8;
  v24 = *v23;
  *v22 = *v23;
  *(v22 + 8) = *(v23 + 8);
  v25 = (v20 + 31) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v21 + 31) & 0xFFFFFFFFFFFFFFF8;
  LOBYTE(v21) = *(v26 + 8);
  *v25 = *v26;
  *(v25 + 8) = v21;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v28 = *(AssociatedTypeWitness - 8);
  v29 = *(v28 + 80);
  v35 = v29 + 9 + v25;
  v30 = v29 + 9 + v26;
  v31 = *(v28 + 48);

  v32 = v24;
  if (v31(v30 & ~v29, 1, AssociatedTypeWitness))
  {
    if (*(v28 + 84))
    {
      v33 = *(v28 + 64);
    }

    else
    {
      v33 = *(v28 + 64) + 1;
    }

    memcpy((v35 & ~v29), (v30 & ~v29), v33);
  }

  else
  {
    (*(v28 + 16))(v35 & ~v29, v30 & ~v29, AssociatedTypeWitness);
    (*(v28 + 56))(v35 & ~v29, 0, 1, AssociatedTypeWitness);
  }

  return a1;
}

uint64_t sub_1AFA57C50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)(a1, a2, *(a3 + 16));
  v6 = *(v5 + 40) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v8 + 8);
  *v7 = *v8;
  *(v7 + 8) = v9;
  *(v7 + 9) = *(v8 + 9);
  v10 = ((v7 + 17) & 0xFFFFFFFFFFFFFFF8);
  v11 = ((v8 + 17) & 0xFFFFFFFFFFFFFFF8);
  v12 = *v11;
  v13 = *v11;
  v14 = *v10;
  *v10 = v12;

  v15 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
  v16 = ((v11 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v15 = *v16;
  v15[1] = v16[1];

  *((v15 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v16 + 23) & 0xFFFFFFFFFFFFFFF8);

  v17 = (((((((v6 & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  v18 = a1 + v17 + 7;
  v19 = a2 + v17 + 7;
  v20 = (v19 & 0xFFFFFFFFFFFFFFF8) + 15;
  *(v18 & 0xFFFFFFFFFFFFFFF8) = *(v19 & 0xFFFFFFFFFFFFFFF8);
  v21 = (v18 & 0xFFFFFFFFFFFFFFF8) + 15;

  v21 &= 0xFFFFFFFFFFFFFFF8;
  v20 &= 0xFFFFFFFFFFFFFFF8;
  *v21 = *v20;

  v22 = ((v20 + 15) & 0xFFFFFFFFFFFFFFF8);
  v23 = v22 + 31;
  v24 = ((v21 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v24 = *v22;

  v25 = (v24 + 15) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v22 + 15) & 0xFFFFFFFFFFFFFFF8;
  v27 = *v26;
  v28 = *v25;
  *v25 = *v26;
  v29 = v27;

  *(v25 + 8) = *(v26 + 8);
  v30 = (v24 + 31) & 0xFFFFFFFFFFFFFFF8;
  v23 &= 0xFFFFFFFFFFFFFFF8;
  v31 = *v23;
  *(v30 + 8) = *(v23 + 8);
  *v30 = v31;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v33 = *(AssociatedTypeWitness - 8);
  v34 = *(v33 + 80);
  v35 = v34 + 9 + v30;
  v36 = (v34 + 9 + v23);
  v37 = *(v33 + 48);
  v38 = v37(v35 & ~v34, 1, AssociatedTypeWitness);
  v39 = v37(v36 & ~v34, 1, AssociatedTypeWitness);
  if (v38)
  {
    if (!v39)
    {
      (*(v33 + 16))(v35 & ~v34, v36 & ~v34, AssociatedTypeWitness);
      (*(v33 + 56))(v35 & ~v34, 0, 1, AssociatedTypeWitness);
      return a1;
    }

    v40 = *(v33 + 84);
    v41 = *(v33 + 64);
  }

  else
  {
    if (!v39)
    {
      (*(v33 + 24))(v35 & ~v34, v36 & ~v34, AssociatedTypeWitness);
      return a1;
    }

    v43 = *(v33 + 8);
    v42 = v33 + 8;
    v43(v35 & ~v34, AssociatedTypeWitness);
    v40 = *(v42 + 76);
    v41 = *(v42 + 56);
  }

  if (v40)
  {
    v44 = v41;
  }

  else
  {
    v44 = v41 + 1;
  }

  memcpy((v35 & ~v34), (v36 & ~v34), v44);
  return a1;
}

uint64_t sub_1AFA57F94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)(a1, a2, *(a3 + 16));
  v6 = *(v5 + 32) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v8 + 8);
  *v7 = *v8;
  *(v7 + 8) = v9;
  *(v7 + 9) = *(v8 + 9);
  v10 = ((v7 + 17) & 0xFFFFFFFFFFFFFFF8);
  v11 = ((v8 + 17) & 0xFFFFFFFFFFFFFFF8);
  *v10 = *v11;
  v12 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v11 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;
  *((v12 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v13 + 23) & 0xFFFFFFFFFFFFFFF8);
  v14 = (((((((v6 & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  v15 = a1 + v14 + 7;
  v16 = ((a2 + v14 + 7) & 0xFFFFFFFFFFFFFFF8);
  v15 &= 0xFFFFFFFFFFFFFFF8;
  *v15 = *v16;
  v17 = ((v16 + 15) & 0xFFFFFFFFFFFFFFF8);
  v18 = ((v15 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v18 = *v17;
  v19 = ((v18 + 15) & 0xFFFFFFFFFFFFFFF8);
  v20 = ((v17 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v19 = *v20;
  v21 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
  *v21 = *v22;
  *(v21 + 8) = *(v22 + 8);
  v23 = (v19 + 31) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v20 + 31) & 0xFFFFFFFFFFFFFFF8;
  LOBYTE(v20) = *(v24 + 8);
  *v23 = *v24;
  *(v23 + 8) = v20;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v26 = *(AssociatedTypeWitness - 8);
  v27 = *(v26 + 80);
  v28 = v27 + 9 + v23;
  v29 = v27 + 9 + v24;
  if ((*(v26 + 48))(v29 & ~v27, 1, AssociatedTypeWitness))
  {
    if (*(v26 + 84))
    {
      v30 = *(v26 + 64);
    }

    else
    {
      v30 = *(v26 + 64) + 1;
    }

    memcpy((v28 & ~v27), (v29 & ~v27), v30);
  }

  else
  {
    (*(v26 + 32))(v28 & ~v27, v29 & ~v27, AssociatedTypeWitness);
    (*(v26 + 56))(v28 & ~v27, 0, 1, AssociatedTypeWitness);
  }

  return a1;
}

uint64_t sub_1AFA581E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)(a1, a2, *(a3 + 16));
  v6 = *(v5 + 24) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v8 + 8);
  *v7 = *v8;
  *(v7 + 8) = v9;
  *(v7 + 9) = *(v8 + 9);
  v10 = ((v7 + 17) & 0xFFFFFFFFFFFFFFF8);
  v11 = ((v8 + 17) & 0xFFFFFFFFFFFFFFF8);
  v12 = *v10;
  *v10 = *v11;

  v13 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
  v14 = ((v11 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v13 = *v14;
  v13[1] = v14[1];

  *((v13 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v14 + 23) & 0xFFFFFFFFFFFFFFF8);

  v15 = (((((((v6 & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  v16 = a1 + v15 + 7;
  v17 = ((a2 + v15 + 7) & 0xFFFFFFFFFFFFFFF8);
  *(v16 & 0xFFFFFFFFFFFFFFF8) = *v17;
  v18 = (v16 & 0xFFFFFFFFFFFFFFF8) + 15;

  v18 &= 0xFFFFFFFFFFFFFFF8;
  v19 = ((v17 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v18 = *v19;

  v20 = ((v19 + 15) & 0xFFFFFFFFFFFFFFF8);
  v21 = v20 + 31;
  v22 = ((v18 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v22 = *v20;

  v23 = (v22 + 15) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
  v25 = *v23;
  *v23 = *v24;

  *(v23 + 8) = *(v24 + 8);
  v26 = (v22 + 31) & 0xFFFFFFFFFFFFFFF8;
  v27 = v21 & 0xFFFFFFFFFFFFFFF8;
  v28 = *(v21 & 0xFFFFFFFFFFFFFFF8);
  *(v26 + 8) = *((v21 & 0xFFFFFFFFFFFFFFF8) + 8);
  *v26 = v28;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v30 = *(AssociatedTypeWitness - 8);
  v31 = *(v30 + 80);
  v32 = v31 + 9 + v26;
  v33 = v31 + 9 + v27;
  v34 = *(v30 + 48);
  v35 = v34(v32 & ~v31, 1, AssociatedTypeWitness);
  v36 = v34(v33 & ~v31, 1, AssociatedTypeWitness);
  if (v35)
  {
    if (!v36)
    {
      (*(v30 + 32))(v32 & ~v31, v33 & ~v31, AssociatedTypeWitness);
      (*(v30 + 56))(v32 & ~v31, 0, 1, AssociatedTypeWitness);
      return a1;
    }

    v37 = *(v30 + 84);
    v38 = *(v30 + 64);
  }

  else
  {
    if (!v36)
    {
      (*(v30 + 40))(v32 & ~v31, v33 & ~v31, AssociatedTypeWitness);
      return a1;
    }

    v40 = *(v30 + 8);
    v39 = v30 + 8;
    v40(v32 & ~v31, AssociatedTypeWitness);
    v37 = *(v39 + 76);
    v38 = *(v39 + 56);
  }

  if (v37)
  {
    v41 = v38;
  }

  else
  {
    v41 = v38 + 1;
  }

  memcpy((v32 & ~v31), (v33 & ~v31), v41);
  return a1;
}

uint64_t sub_1AFA584F0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 84);
  if (v11)
  {
    v12 = v11 - 1;
  }

  else
  {
    v12 = 0;
  }

  if (v12 <= v8)
  {
    v13 = v8;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(v6 + 64);
  v15 = *(v10 + 80);
  if (v11)
  {
    v16 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  else
  {
    v16 = *(*(AssociatedTypeWitness - 8) + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v17 = (((((((v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  if (a2 <= v13)
  {
    goto LABEL_37;
  }

  v18 = v16 + ((v15 + ((((((((v17 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v15);
  v19 = 8 * v18;
  if (v18 <= 3)
  {
    v22 = ((a2 - v13 + ~(-1 << v19)) >> v19) + 1;
    if (HIWORD(v22))
    {
      v20 = *(a1 + v18);
      if (!v20)
      {
        goto LABEL_37;
      }

      goto LABEL_24;
    }

    if (v22 > 0xFF)
    {
      v20 = *(a1 + v18);
      if (!*(a1 + v18))
      {
        goto LABEL_37;
      }

      goto LABEL_24;
    }

    if (v22 < 2)
    {
LABEL_37:
      if (v8 >= v12)
      {
        if (v7 < 0x7FFFFFFF)
        {
          v28 = *(((((((a1 + v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
          if (v28 >= 0xFFFFFFFF)
          {
            LODWORD(v28) = -1;
          }

          return (v28 + 1);
        }

        else
        {
          v27 = *(v6 + 48);

          return v27(a1, v7, v5);
        }
      }

      else
      {
        v26 = (*(v10 + 48))((v15 + ((((((((a1 + v17 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 25) & ~v15);
        if (v26 >= 2)
        {
          return v26 - 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v20 = *(a1 + v18);
  if (!*(a1 + v18))
  {
    goto LABEL_37;
  }

LABEL_24:
  v23 = (v20 - 1) << v19;
  if (v18 > 3)
  {
    v23 = 0;
  }

  if (v18)
  {
    if (v18 <= 3)
    {
      v24 = v18;
    }

    else
    {
      v24 = 4;
    }

    if (v24 > 2)
    {
      if (v24 == 3)
      {
        v25 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v25 = *a1;
      }
    }

    else if (v24 == 1)
    {
      v25 = *a1;
    }

    else
    {
      v25 = *a1;
    }
  }

  else
  {
    v25 = 0;
  }

  return v13 + (v25 | v23) + 1;
}

void sub_1AFA58824(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v35 = v8;
  v9 = *(v8 + 84);
  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = 0;
  v12 = *(swift_getAssociatedTypeWitness() - 8);
  v13 = *(v12 + 84);
  v14 = *(v8 + 64);
  if (v13)
  {
    v15 = v13 - 1;
  }

  else
  {
    v15 = 0;
  }

  if (v15 <= v10)
  {
    v16 = v10;
  }

  else
  {
    v16 = v15;
  }

  v17 = (((((((v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v18 = *(v12 + 80);
  if (v13)
  {
    v19 = *(v12 + 64);
  }

  else
  {
    v19 = *(v12 + 64) + 1;
  }

  v20 = ((v18 + ((((((((v17 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v18) + v19;
  if (a3 <= v16)
  {
    goto LABEL_24;
  }

  if (v20 <= 3)
  {
    v21 = ((a3 - v16 + ~(-1 << (8 * v20))) >> (8 * v20)) + 1;
    if (HIWORD(v21))
    {
      v11 = 4;
      if (v16 >= a2)
      {
        goto LABEL_34;
      }

      goto LABEL_25;
    }

    if (v21 < 0x100)
    {
      v22 = 1;
    }

    else
    {
      v22 = 2;
    }

    if (v21 >= 2)
    {
      v11 = v22;
    }

    else
    {
      v11 = 0;
    }

LABEL_24:
    if (v16 >= a2)
    {
      goto LABEL_34;
    }

    goto LABEL_25;
  }

  v11 = 1;
  if (v16 >= a2)
  {
LABEL_34:
    if (v11 > 1)
    {
      if (v11 != 2)
      {
        *&a1[v20] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_41;
      }

      *&a1[v20] = 0;
    }

    else if (v11)
    {
      a1[v20] = 0;
      if (!a2)
      {
        return;
      }

LABEL_41:
      v26 = v17 + 8;
      if (v10 >= v15)
      {
        if (v10 >= a2)
        {
          if (v9 < 0x7FFFFFFF)
          {
            v34 = (((((&a1[v14 + 7] & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              *v34 = a2 & 0x7FFFFFFF;
              v34[1] = 0;
            }

            else
            {
              v34[1] = (a2 - 1);
            }
          }

          else
          {
            v33 = *(v35 + 56);

            v33(a1, a2, v9, v7);
          }
        }

        else if (v26)
        {
          bzero(a1, v26);
          *a1 = ~v10 + a2;
        }
      }

      else
      {
        v27 = v18 + (((((((&a1[v26 + 7] & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 25;
        v28 = (v27 & ~v18);
        if (v15 >= a2)
        {
          v32 = *(v12 + 56);

          v32(v27 & ~v18, (a2 + 1));
        }

        else
        {
          if (v19 <= 3)
          {
            v29 = ~(-1 << (8 * v19));
          }

          else
          {
            v29 = -1;
          }

          if (v19)
          {
            v30 = v29 & (~v15 + a2);
            if (v19 <= 3)
            {
              v31 = v19;
            }

            else
            {
              v31 = 4;
            }

            bzero(v28, v19);
            if (v31 > 2)
            {
              if (v31 == 3)
              {
                *v28 = v30;
                v28[2] = BYTE2(v30);
              }

              else
              {
                *v28 = v30;
              }
            }

            else if (v31 == 1)
            {
              *v28 = v30;
            }

            else
            {
              *v28 = v30;
            }
          }
        }
      }

      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_41;
  }

LABEL_25:
  v23 = ~v16 + a2;
  if (v20 >= 4)
  {
    bzero(a1, v20);
    *a1 = v23;
    v24 = 1;
    if (v11 > 1)
    {
      goto LABEL_70;
    }

    goto LABEL_67;
  }

  v24 = (v23 >> (8 * v20)) + 1;
  if (!v20)
  {
LABEL_66:
    if (v11 > 1)
    {
      goto LABEL_70;
    }

    goto LABEL_67;
  }

  v25 = v23 & ~(-1 << (8 * v20));
  bzero(a1, v20);
  if (v20 == 3)
  {
    *a1 = v25;
    a1[2] = BYTE2(v25);
    goto LABEL_66;
  }

  if (v20 == 2)
  {
    *a1 = v25;
    if (v11 > 1)
    {
LABEL_70:
      if (v11 == 2)
      {
        *&a1[v20] = v24;
      }

      else
      {
        *&a1[v20] = v24;
      }

      return;
    }
  }

  else
  {
    *a1 = v23;
    if (v11 > 1)
    {
      goto LABEL_70;
    }
  }

LABEL_67:
  if (v11)
  {
    a1[v20] = v24;
  }
}

unint64_t sub_1AFA58CE8()
{
  result = qword_1EB642510;
  if (!qword_1EB642510)
  {
    sub_1AFA58D40();
    result = swift_getWitnessTable(MEMORY[0x1E69E6340], v3, v0, v1);
    atomic_store(result, &qword_1EB642510);
  }

  return result;
}

void sub_1AFA58D40()
{
  if (!qword_1EB642518)
  {
    v0 = sub_1AFDFD538();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB642518);
    }
  }
}

void sub_1AFA58DB8()
{
  if (*(*v0 + 16))
  {
    v1 = *(v0 + 32);
    if (v1 >= 4)
    {
    }

    else
    {
      v2 = sub_1AFDFEE28();

      if ((v2 & 1) == 0)
      {

        *(v0 + 8) = 0x64656D6D6972743CLL;
        *(v0 + 16) = 0xE90000000000003ELL;
      }
    }
  }
}

uint64_t sub_1AFA58EBC()
{
  v1 = *(v0 + 24);
  if (v1 >= 4)
  {
  }

  else
  {
    v2 = sub_1AFDFEE28();

    if ((v2 & 1) == 0)
    {

      *(v0 + 8) = 0x64656D6D6972743CLL;
      *(v0 + 16) = 0xE90000000000003ELL;
    }
  }

  return result;
}

void sub_1AFA58FB4()
{
  if ((v0[40] & 1) != 0 || *(*(v0 + 4) + 16))
  {
    v1 = *v0;
    if (v1 >= 4)
    {
    }

    else
    {
      v2 = sub_1AFDFEE28();

      if ((v2 & 1) == 0)
      {

        *(v0 + 1) = 0x64656D6D6972743CLL;
        *(v0 + 2) = 0xE90000000000003ELL;
      }
    }
  }
}

uint64_t sub_1AFA590C0()
{
  v1 = *(v0 + 16);
  if (v1 >= 4)
  {
  }

  else
  {
    v2 = sub_1AFDFEE28();

    if ((v2 & 1) == 0)
    {

      *v0 = 0x64656D6D6972743CLL;
      *(v0 + 8) = 0xE90000000000003ELL;
    }
  }

  return result;
}

void sub_1AFA591B8()
{
  if ((*(v0 + 40) & 1) != 0 || *(*(v0 + 32) + 16))
  {
    v1 = *(v0 + 24);
    if (v1 >= 4)
    {
    }

    else
    {
      v2 = sub_1AFDFEE28();

      if ((v2 & 1) == 0)
      {

        *v0 = 0x64656D6D6972743CLL;
        *(v0 + 8) = 0xE90000000000003ELL;
      }
    }
  }
}

uint64_t sub_1AFA592C4(uint64_t a1)
{
  v2 = sub_1AFA5A768();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFA59300(uint64_t a1)
{
  v2 = sub_1AFA5A768();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AFA5933C(void *a1)
{
  sub_1AFA5A864(0, &qword_1EB642528, sub_1AFA5A768, &type metadata for CodableVoid.CodingKeys, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - v5;
  sub_1AF441150(a1, a1[3]);
  sub_1AFA5A768();
  sub_1AFDFF3F8();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1AFA594A0@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AFA5A374(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1AFA594E4()
{
  v1 = *v0;
  sub_1AFDFF288();
  MEMORY[0x1B271ACB0](qword_1AFE97258[v1]);
  return sub_1AFDFF2F8();
}

uint64_t sub_1AFA5956C(uint64_t a1)
{
  v2 = *v1;
  sub_1AFDFF288();
  MEMORY[0x1B271ACB0](qword_1AFE97258[v2]);
  return sub_1AFDFF2F8();
}

unint64_t sub_1AFA5967C()
{
  result = qword_1EB631D10;
  if (!qword_1EB631D10)
  {
    result = swift_getWitnessTable(byte_1AFE96D94, &type metadata for ScriptScheduling, v0, v1);
    atomic_store(result, &qword_1EB631D10);
  }

  return result;
}

uint64_t sub_1AFA596D0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = *(a1 + 16);
  result = sub_1AFAF8B58(*a1, *(a1 + 8), a2, a3, a4, a5, a6, a7);
  *a8 = result;
  *(a8 + 8) = v11;
  *(a8 + 16) = v9;
  return result;
}

uint64_t sub_1AFA59730(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v13 = a4;
  sub_1AFA5A864(0, &qword_1EB642550, sub_1AFA5A7BC, &type metadata for ScriptFunction.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v12 - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AFA5A7BC();
  sub_1AFDFF3F8();
  v16 = 0;
  v10 = v12[1];
  sub_1AFDFE8B8();
  if (!v10)
  {
    v15 = v13;
    v14 = 1;
    sub_1AFA5A8CC();
    sub_1AFDFE918();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1AFA5999C()
{
  v1 = 0x786574726576;
  if (*v0 != 2)
  {
    v1 = 7696483;
  }

  v2 = 0x657475706D6F63;
  if (*v0)
  {
    v2 = 0x746E656D67617266;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1AFA59A0C(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 1684957547;
  }

  else
  {
    v2 = 1701667182;
  }

  if (*a2)
  {
    v3 = 1684957547;
  }

  else
  {
    v3 = 1701667182;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1AFDFEE28();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_1AFA59A84()
{
  if (*v0)
  {
    return 1684957547;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_1AFA59AA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (sub_1AFDFEE28() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1AFDFEE28();

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

uint64_t sub_1AFA59B84(uint64_t a1)
{
  v2 = sub_1AFA5A7BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFA59BC0(uint64_t a1)
{
  v2 = sub_1AFA5A7BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AFA59BFC@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1AFA5A150(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
  }

  return result;
}

void sub_1AFA59CA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(a3 + 16);
  v7 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1AFDFDD58();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v36 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v32 - v14;
  v17 = type metadata accessor for ScriptCompileAttempt(0, v8, v7, v16);
  v34 = a1;
  v35 = a2;
  sub_1AF4579E8(a1, a2, v17);
  v18 = *(a3 + 60);
  v19 = *(v11 + 16);
  v20 = v3;
  v37 = v18;
  v21 = v3 + v18;
  v22 = v10;
  v23 = AssociatedTypeWitness;
  v19(v15, v21, v22);
  v24 = *(AssociatedTypeWitness - 8);
  v25 = *(v24 + 48);
  if (v25(v15, 1, v23) == 1)
  {
    v33 = v24;
    (*(v11 + 8))(v15, v22);
  }

  else
  {
    if (swift_dynamicCast())
    {
      v39 = v38;
      v26 = v22;
      sub_1AFA9F1AC(v34, v35);
      v27 = v37;
      (*(v11 + 8))(v20 + v37, v26);
      v38 = v39;
      swift_dynamicCast();
      (*(v24 + 56))(v20 + v27, 0, 1, v23);
      return;
    }

    v33 = v24;
  }

  v28 = v20;
  v29 = v37;
  v30 = v20 + v37;
  v31 = v36;
  v19(v36, v30, v22);
  if (v25(v31, 1, v23) == 1)
  {
    (*(v11 + 8))(v31, v22);
  }

  else if (swift_dynamicCast())
  {
    v39 = v38;
    sub_1AFA9F2B8(v34, v35);
    (*(v11 + 8))(v28 + v29, v22);
    v38 = v39;
    swift_dynamicCast();
    (*(v33 + 56))(v28 + v29, 0, 1, v23);
  }
}

uint64_t sub_1AFA5A024@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1AF457A00(a1, a2, a3);
  v7 = type metadata accessor for ScriptRuntime(0, a1, a2, v6);
  *(a3 + v7[9]) = 0;
  *(a3 + v7[10]) = 0;
  *(a3 + v7[11]) = 0;
  *(a3 + v7[12]) = 0;
  *(a3 + v7[13]) = 0;
  v8 = a3 + v7[14];
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = v7[15];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(*(AssociatedTypeWitness - 8) + 56);

  return v11(a3 + v9, 1, 1, AssociatedTypeWitness);
}

void sub_1AFA5A11C(void *a1@<X8>)
{
  v1 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v1;
}

void sub_1AFA5A12C(uint64_t a1@<X8>)
{
  *a1 = 0;
  v1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = MEMORY[0x1E69E7CC0];
  *(a1 + 16) = v1;
}

uint64_t sub_1AFA5A150(void *a1)
{
  sub_1AFA5A864(0, &qword_1EB642538, sub_1AFA5A7BC, &type metadata for ScriptFunction.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  sub_1AF441150(a1, a1[3]);
  sub_1AFA5A7BC();
  sub_1AFDFF3B8();
  if (!v1)
  {
    v12 = 0;
    v8 = sub_1AFDFE708();
    v11 = 1;
    sub_1AFA5A810();
    sub_1AFDFE768();
    (*(v5 + 8))(v7, v4);
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v8;
}

uint64_t sub_1AFA5A374(unint64_t a1)
{
  if (a1 > 0x13)
  {
    return 17;
  }

  else
  {
    return byte_1AFE972E0[a1];
  }
}

unint64_t sub_1AFA5A394()
{
  result = qword_1EB633730;
  if (!qword_1EB633730)
  {
    result = swift_getWitnessTable(byte_1AFE96D5C, &type metadata for ScriptScheduling, v0, v1);
    atomic_store(result, &qword_1EB633730);
  }

  return result;
}

uint64_t sub_1AFA5A3E8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v3;

  return a1;
}

uint64_t assignWithCopy for ScriptCompileOptions(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t assignWithTake for ScriptCompileOptions(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t destroy for GeneratedScriptCode(void *a1)
{
}

uint64_t *initializeWithCopy for GeneratedScriptCode(uint64_t *a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;
  a1[4] = a2[4];

  return a1;
}

uint64_t *assignWithCopy for GeneratedScriptCode(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];
  a1[2] = a2[2];

  a1[3] = a2[3];
  a1[4] = a2[4];

  return a1;
}

uint64_t *assignWithTake for GeneratedScriptCode(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  v4 = a2[2];
  a1[1] = a2[1];
  a1[2] = v4;

  v5 = a2[4];
  a1[3] = a2[3];
  a1[4] = v5;

  return a1;
}

unint64_t sub_1AFA5A6C0()
{
  result = qword_1EB632120;
  if (!qword_1EB632120)
  {
    result = swift_getWitnessTable(byte_1AFE96F34, &type metadata for ScriptFunction.Kind, v0, v1);
    atomic_store(result, &qword_1EB632120);
  }

  return result;
}

unint64_t sub_1AFA5A714()
{
  result = qword_1EB642520;
  if (!qword_1EB642520)
  {
    result = swift_getWitnessTable("E ", &type metadata for ScriptFunction.Kind, v0, v1);
    atomic_store(result, &qword_1EB642520);
  }

  return result;
}

unint64_t sub_1AFA5A768()
{
  result = qword_1EB642530;
  if (!qword_1EB642530)
  {
    result = swift_getWitnessTable(byte_1AFE97200, &type metadata for CodableVoid.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB642530);
  }

  return result;
}

unint64_t sub_1AFA5A7BC()
{
  result = qword_1EB642540;
  if (!qword_1EB642540)
  {
    result = swift_getWitnessTable("\t0", &type metadata for ScriptFunction.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB642540);
  }

  return result;
}

unint64_t sub_1AFA5A810()
{
  result = qword_1EB642548;
  if (!qword_1EB642548)
  {
    result = swift_getWitnessTable(byte_1AFE97074, &type metadata for ScriptFunction.Kind, v0, v1);
    atomic_store(result, &qword_1EB642548);
  }

  return result;
}

void sub_1AFA5A864(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1AFA5A8CC()
{
  result = qword_1EB642558;
  if (!qword_1EB642558)
  {
    result = swift_getWitnessTable("\r\x1B", &type metadata for ScriptFunction.Kind, v0, v1);
    atomic_store(result, &qword_1EB642558);
  }

  return result;
}

unint64_t sub_1AFA5A944()
{
  result = qword_1EB642560;
  if (!qword_1EB642560)
  {
    result = swift_getWitnessTable(byte_1AFE97188, &type metadata for ScriptFunction.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB642560);
  }

  return result;
}

unint64_t sub_1AFA5A99C()
{
  result = qword_1EB642568;
  if (!qword_1EB642568)
  {
    result = swift_getWitnessTable(byte_1AFE970F8, &type metadata for ScriptFunction.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB642568);
  }

  return result;
}

unint64_t sub_1AFA5A9F4()
{
  result = qword_1EB642570;
  if (!qword_1EB642570)
  {
    result = swift_getWitnessTable(byte_1AFE97120, &type metadata for ScriptFunction.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB642570);
  }

  return result;
}

unint64_t sub_1AFA5AA4C()
{
  result = qword_1EB642578;
  if (!qword_1EB642578)
  {
    result = swift_getWitnessTable("I*", &type metadata for CodableVoid.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB642578);
  }

  return result;
}

unint64_t sub_1AFA5AAA4()
{
  result = qword_1EB642580;
  if (!qword_1EB642580)
  {
    result = swift_getWitnessTable("a&", &type metadata for CodableVoid.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB642580);
  }

  return result;
}

uint64_t sub_1AFA5AB04(void *a1)
{
  v2 = v1;
  sub_1AF5B21E4(0);
  v5 = v4;
  *(v2 + *(v4 + 40)) = 1;
  v6 = *(v4 + 44);
  v7 = *(v2 + v6);
  v8 = a1;

  *(v2 + v6) = a1;
  v9 = a1;
  sub_1AF5C5358(0, &qword_1ED7268D0, MEMORY[0x1E69E7280]);
  if (swift_dynamicCast())
  {
    v10 = v32;
    v11 = v33;
    if (v36 == 1)
    {
      v12 = (v2 + *(v5 + 48));

      *v12 = v32;
      v12[1] = v33;
      if (v35)
      {
        v13 = sub_1AF458208(v34, v35);
        v15 = v14;

LABEL_10:
        v20 = v13;
        goto LABEL_20;
      }

LABEL_18:
      v20 = 0;
      goto LABEL_19;
    }

    sub_1AF456D9C(v32, v33, v34, v35, v36);
  }

  v16 = a1;
  if (swift_dynamicCast())
  {
    if (v36 == 2)
    {
      swift_getErrorValue();
      v10 = sub_1AFDFF1D8();
      v11 = v17;
      v18 = (v2 + *(v5 + 48));

      *v18 = v10;
      v18[1] = v11;
      if (v34)
      {
        v13 = sub_1AF458208(v33, v34);
        v15 = v19;

        goto LABEL_10;
      }

      goto LABEL_18;
    }

    sub_1AF456D9C(v32, v33, v34, v35, v36);
  }

  v21 = a1;
  if (!swift_dynamicCast())
  {
    goto LABEL_15;
  }

  v10 = v32;
  v11 = v33;
  if (v36 != 3)
  {
    sub_1AF456D9C(v32, v33, v34, v35, v36);
LABEL_15:
    swift_getErrorValue();
    v10 = sub_1AFDFF1D8();
    v11 = v22;
  }

  v23 = (v2 + *(v5 + 48));

  v20 = 0;
  *v23 = v10;
  v23[1] = v11;
LABEL_19:
  v15 = 1;
LABEL_20:
  v24 = sub_1AF458308(v10, v11, v20, v15 & 1);
  v25 = *(v5 + 52);

  *(v2 + v25) = v24;
  v27 = v2[4];
  if (v27)
  {
    v28 = v2[5];
    v30 = v2[1];
    v29 = v2[2];
    sub_1AF0FBD8C(v27, v28);
    v31 = sub_1AF458B0C(v30, v29);
    v27(v24, v31);

    return sub_1AF0FB8EC(v27, v28);
  }

  return result;
}

uint64_t sub_1AFA5AE14(void *a1)
{
  v2 = v1;
  sub_1AF5B22D4(0);
  v5 = v4;
  *(v2 + *(v4 + 40)) = 1;
  v6 = *(v4 + 44);
  v7 = *(v2 + v6);
  v8 = a1;

  *(v2 + v6) = a1;
  v9 = a1;
  sub_1AF5C5358(0, &qword_1ED7268D0, MEMORY[0x1E69E7280]);
  if (swift_dynamicCast())
  {
    v10 = v32;
    v11 = v33;
    if (v36 == 1)
    {
      v12 = (v2 + *(v5 + 48));

      *v12 = v32;
      v12[1] = v33;
      if (v35)
      {
        v13 = sub_1AF458208(v34, v35);
        v15 = v14;

LABEL_10:
        v20 = v13;
        goto LABEL_20;
      }

LABEL_18:
      v20 = 0;
      goto LABEL_19;
    }

    sub_1AF456D9C(v32, v33, v34, v35, v36);
  }

  v16 = a1;
  if (swift_dynamicCast())
  {
    if (v36 == 2)
    {
      swift_getErrorValue();
      v10 = sub_1AFDFF1D8();
      v11 = v17;
      v18 = (v2 + *(v5 + 48));

      *v18 = v10;
      v18[1] = v11;
      if (v34)
      {
        v13 = sub_1AF458208(v33, v34);
        v15 = v19;

        goto LABEL_10;
      }

      goto LABEL_18;
    }

    sub_1AF456D9C(v32, v33, v34, v35, v36);
  }

  v21 = a1;
  if (!swift_dynamicCast())
  {
    goto LABEL_15;
  }

  v10 = v32;
  v11 = v33;
  if (v36 != 3)
  {
    sub_1AF456D9C(v32, v33, v34, v35, v36);
LABEL_15:
    swift_getErrorValue();
    v10 = sub_1AFDFF1D8();
    v11 = v22;
  }

  v23 = (v2 + *(v5 + 48));

  v20 = 0;
  *v23 = v10;
  v23[1] = v11;
LABEL_19:
  v15 = 1;
LABEL_20:
  v24 = sub_1AF458308(v10, v11, v20, v15 & 1);
  v25 = *(v5 + 52);

  *(v2 + v25) = v24;
  v27 = v2[6];
  if (v27)
  {
    v28 = v2[7];
    v30 = *v2;
    v29 = v2[1];
    sub_1AF0FBD8C(v27, v28);
    v31 = sub_1AF458B0C(v30, v29);
    v27(v24, v31);

    return sub_1AF0FB8EC(v27, v28);
  }

  return result;
}

uint64_t sub_1AFA5B124(void *a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v5 = v3;
  v7 = a2(0);
  *(v5 + v7[10]) = 1;
  v8 = v7[11];
  v9 = *(v5 + v8);
  v10 = a1;

  *(v5 + v8) = a1;
  v11 = a1;
  sub_1AF5C5358(0, &qword_1ED7268D0, MEMORY[0x1E69E7280]);
  if (swift_dynamicCast())
  {
    v12 = v35;
    v13 = v36;
    if (v39 == 1)
    {
      v14 = (v5 + v7[12]);

      *v14 = v35;
      v14[1] = v36;
      if (v38)
      {
        v15 = sub_1AF458208(v37, v38);
        v17 = v16;

LABEL_10:
        v22 = v15;
        goto LABEL_20;
      }

LABEL_18:
      v22 = 0;
      goto LABEL_19;
    }

    sub_1AF456D9C(v35, v36, v37, v38, v39);
  }

  v18 = a1;
  if (swift_dynamicCast())
  {
    if (v39 == 2)
    {
      swift_getErrorValue();
      v12 = sub_1AFDFF1D8();
      v13 = v19;
      v20 = (v5 + v7[12]);

      *v20 = v12;
      v20[1] = v13;
      if (v37)
      {
        v15 = sub_1AF458208(v36, v37);
        v17 = v21;

        goto LABEL_10;
      }

      goto LABEL_18;
    }

    sub_1AF456D9C(v35, v36, v37, v38, v39);
  }

  v23 = a1;
  if (!swift_dynamicCast())
  {
    goto LABEL_15;
  }

  v12 = v35;
  v13 = v36;
  if (v39 != 3)
  {
    sub_1AF456D9C(v35, v36, v37, v38, v39);
LABEL_15:
    swift_getErrorValue();
    v12 = sub_1AFDFF1D8();
    v13 = v24;
  }

  v25 = (v5 + v7[12]);

  v22 = 0;
  *v25 = v12;
  v25[1] = v13;
LABEL_19:
  v17 = 1;
LABEL_20:
  v26 = sub_1AF458308(v12, v13, v22, v17 & 1);
  v27 = v7[13];

  *(v5 + v27) = v26;
  result = a3(0);
  v29 = (v5 + *(result + 28));
  v30 = *v29;
  if (*v29)
  {
    v31 = v29[1];
    v33 = *v5;
    v32 = v5[1];
    sub_1AF0FBD8C(*v29, v31);
    v34 = sub_1AF458B0C(v33, v32);
    v30(v26, v34);

    return sub_1AF0FB8EC(v30, v31);
  }

  return result;
}

uint64_t sub_1AFA5B438(void *a1)
{
  v2 = v1;
  sub_1AF5B24B4(0);
  v5 = v4;
  *(v2 + *(v4 + 40)) = 1;
  v6 = *(v4 + 44);
  v7 = *(v2 + v6);
  v8 = a1;

  *(v2 + v6) = a1;
  v9 = a1;
  sub_1AF5C5358(0, &qword_1ED7268D0, MEMORY[0x1E69E7280]);
  if (swift_dynamicCast())
  {
    v10 = v32;
    v11 = v33;
    if (v36 == 1)
    {
      v12 = (v2 + *(v5 + 48));

      *v12 = v32;
      v12[1] = v33;
      if (v35)
      {
        v13 = sub_1AF458208(v34, v35);
        v15 = v14;

LABEL_10:
        v20 = v13;
        goto LABEL_20;
      }

LABEL_18:
      v20 = 0;
      goto LABEL_19;
    }

    sub_1AF456D9C(v32, v33, v34, v35, v36);
  }

  v16 = a1;
  if (swift_dynamicCast())
  {
    if (v36 == 2)
    {
      swift_getErrorValue();
      v10 = sub_1AFDFF1D8();
      v11 = v17;
      v18 = (v2 + *(v5 + 48));

      *v18 = v10;
      v18[1] = v11;
      if (v34)
      {
        v13 = sub_1AF458208(v33, v34);
        v15 = v19;

        goto LABEL_10;
      }

      goto LABEL_18;
    }

    sub_1AF456D9C(v32, v33, v34, v35, v36);
  }

  v21 = a1;
  if (!swift_dynamicCast())
  {
    goto LABEL_15;
  }

  v10 = v32;
  v11 = v33;
  if (v36 != 3)
  {
    sub_1AF456D9C(v32, v33, v34, v35, v36);
LABEL_15:
    swift_getErrorValue();
    v10 = sub_1AFDFF1D8();
    v11 = v22;
  }

  v23 = (v2 + *(v5 + 48));

  v20 = 0;
  *v23 = v10;
  v23[1] = v11;
LABEL_19:
  v15 = 1;
LABEL_20:
  v24 = sub_1AF458308(v10, v11, v20, v15 & 1);
  v25 = *(v5 + 52);

  *(v2 + v25) = v24;
  v27 = v2[5];
  if (v27)
  {
    v28 = v2[6];
    v30 = v2[1];
    v29 = v2[2];
    sub_1AF0FBD8C(v27, v28);
    v31 = sub_1AF458B0C(v30, v29);
    v27(v24, v31);

    return sub_1AF0FB8EC(v27, v28);
  }

  return result;
}