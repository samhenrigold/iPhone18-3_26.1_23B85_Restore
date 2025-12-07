double sub_1ABDB2A48@<D0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, double *a3@<X8>)
{
  sub_1ABAD219C(a1, a2);
  sub_1ABF218C4();
  v5 = v4;
  sub_1ABF218C4();
  result = v5 / v6;
  *a3 = result;
  return result;
}

void sub_1ABDB2ABC(uint64_t *a1, double *a2, uint64_t a3)
{
  v55 = a1;
  v63 = sub_1ABAD219C(&qword_1EB4D1710, &qword_1ABF338A0);
  v5 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v57 = &v48 - v6;
  v60 = sub_1ABAD219C(&qword_1EB4D3768, &qword_1ABF3D7D8);
  MEMORY[0x1EEE9AC00](v60);
  v53 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v54 = &v48 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v64 = &v48 - v11;
  v12 = a2[1];
  v13 = *a2 + 64;
  v14 = 1 << *(*a2 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(*a2 + 64);
  v17 = (v14 + 63) >> 6;
  v61 = *a2;
  v62 = v5 + 16;
  v58 = (v5 + 8);
  v59 = v5;

  v18 = 0;
  v56 = MEMORY[0x1E69E7CC0];
  while (v16)
  {
LABEL_9:
    v20 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v21 = v20 | (v18 << 6);
    v22 = *(*(v61 + 48) + v21);
    v23 = *(v59 + 72);
    v24 = *(v59 + 16);
    v25 = v64;
    v24(&v64[*(v60 + 48)], *(v61 + 56) + v23 * v21, v63);
    *v25 = v22;
    if (*(a3 + 16) && (v26 = sub_1ABAFF5B8(), (v27 & 1) != 0) && (v28 = v57, v29 = v63, v24(v57, *(a3 + 56) + v26 * v23, v63), sub_1ABF218C4(), v31 = v30, v32 = *v58, (*v58)(v28, v29), v31 != 0.0))
    {
      v52 = a3;
      v33 = v64;
      v34 = v54;
      sub_1ABBD88DC(v64, v54, &qword_1EB4D3768, &qword_1ABF3D7D8);
      v51 = *v34;
      v35 = v60;
      v50 = *(v60 + 48);
      v36 = v53;
      sub_1ABBD88DC(v33, v53, &qword_1EB4D3768, &qword_1ABF3D7D8);
      v49 = *(v35 + 48);
      v37 = v63;
      sub_1ABF218C4();
      v39 = v38;
      sub_1ABAB480C(v33, &qword_1EB4D3768, &qword_1ABF3D7D8);
      v32((v36 + v49), v37);
      v32(&v54[v50], v37);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1ABADBFE0(0, *(v56 + 16) + 1, 1, v56);
        v56 = v44;
      }

      v41 = *(v56 + 16);
      v40 = *(v56 + 24);
      if (v41 >= v40 >> 1)
      {
        sub_1ABADBFE0(v40 > 1, v41 + 1, 1, v56);
        v56 = v45;
      }

      v42 = v56;
      *(v56 + 16) = v41 + 1;
      v43 = v42 + 16 * v41;
      *(v43 + 32) = v51;
      *(v43 + 40) = v12 * v39 / v31;
      a3 = v52;
    }

    else
    {
      sub_1ABAB480C(v64, &qword_1EB4D3768, &qword_1ABF3D7D8);
    }
  }

  while (1)
  {
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v19 >= v17)
    {

      v46 = sub_1ABBFA6B8(v56);
      v47 = v55;
      *v47 = sub_1ABD9E158(v46, *v55, sub_1ABDBF94C, sub_1ABDB9F7C);
      return;
    }

    v16 = *(v13 + 8 * v19);
    ++v18;
    if (v16)
    {
      v18 = v19;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_1ABDB2F3C(uint64_t *a1, double *a2, uint64_t a3)
{
  v55 = a1;
  v63 = sub_1ABAD219C(&qword_1EB4D1710, &qword_1ABF338A0);
  v5 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v57 = &v48 - v6;
  v60 = sub_1ABAD219C(&qword_1EB4D99E8, &qword_1ABF61888);
  MEMORY[0x1EEE9AC00](v60);
  v53 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v54 = &v48 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v64 = &v48 - v11;
  v12 = a2[1];
  v13 = *a2 + 64;
  v14 = 1 << *(*a2 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(*a2 + 64);
  v17 = (v14 + 63) >> 6;
  v61 = *a2;
  v62 = v5 + 16;
  v58 = (v5 + 8);
  v59 = v5;

  v18 = 0;
  v56 = MEMORY[0x1E69E7CC0];
  while (v16)
  {
LABEL_9:
    v20 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v21 = v20 | (v18 << 6);
    v22 = *(*(v61 + 48) + v21);
    v23 = *(v59 + 72);
    v24 = *(v59 + 16);
    v25 = v64;
    v24(&v64[*(v60 + 48)], *(v61 + 56) + v23 * v21, v63);
    *v25 = v22;
    if (*(a3 + 16) && (v26 = sub_1ABAFF5B8(), (v27 & 1) != 0) && (v28 = v57, v29 = v63, v24(v57, *(a3 + 56) + v26 * v23, v63), sub_1ABF218C4(), v31 = v30, v32 = *v58, (*v58)(v28, v29), v31 != 0.0))
    {
      v52 = a3;
      v33 = v64;
      v34 = v54;
      sub_1ABBD88DC(v64, v54, &qword_1EB4D99E8, &qword_1ABF61888);
      v51 = *v34;
      v35 = v60;
      v50 = *(v60 + 48);
      v36 = v53;
      sub_1ABBD88DC(v33, v53, &qword_1EB4D99E8, &qword_1ABF61888);
      v49 = *(v35 + 48);
      v37 = v63;
      sub_1ABF218C4();
      v39 = v38;
      sub_1ABAB480C(v33, &qword_1EB4D99E8, &qword_1ABF61888);
      v32((v36 + v49), v37);
      v32(&v54[v50], v37);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1ABADBFF4(0, *(v56 + 16) + 1, 1, v56);
        v56 = v44;
      }

      v41 = *(v56 + 16);
      v40 = *(v56 + 24);
      if (v41 >= v40 >> 1)
      {
        sub_1ABADBFF4(v40 > 1, v41 + 1, 1, v56);
        v56 = v45;
      }

      v42 = v56;
      *(v56 + 16) = v41 + 1;
      v43 = v42 + 16 * v41;
      *(v43 + 32) = v51;
      *(v43 + 40) = v12 * v39 / v31;
      a3 = v52;
    }

    else
    {
      sub_1ABAB480C(v64, &qword_1EB4D99E8, &qword_1ABF61888);
    }
  }

  while (1)
  {
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v19 >= v17)
    {

      v46 = sub_1ABBFA6E0(v56);
      v47 = v55;
      *v47 = sub_1ABD9E158(v46, *v55, sub_1ABDBF94C, sub_1ABDBA1EC);
      return;
    }

    v16 = *(v13 + 8 * v19);
    ++v18;
    if (v16)
    {
      v18 = v19;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_1ABDB33BC(uint64_t *a1, double *a2, uint64_t a3)
{
  v55 = a1;
  v63 = sub_1ABAD219C(&qword_1EB4D1710, &qword_1ABF338A0);
  v5 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v57 = &v48 - v6;
  v60 = sub_1ABAD219C(&qword_1EB4D99E0, &unk_1ABF61878);
  MEMORY[0x1EEE9AC00](v60);
  v53 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v54 = &v48 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v64 = &v48 - v11;
  v12 = a2[1];
  v13 = *a2 + 64;
  v14 = 1 << *(*a2 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(*a2 + 64);
  v17 = (v14 + 63) >> 6;
  v61 = *a2;
  v62 = v5 + 16;
  v58 = (v5 + 8);
  v59 = v5;

  v18 = 0;
  v56 = MEMORY[0x1E69E7CC0];
  while (v16)
  {
LABEL_9:
    v20 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v21 = v20 | (v18 << 6);
    v22 = *(*(v61 + 48) + v21);
    v23 = *(v59 + 72);
    v24 = *(v59 + 16);
    v25 = v64;
    v24(&v64[*(v60 + 48)], *(v61 + 56) + v23 * v21, v63);
    *v25 = v22;
    if (*(a3 + 16) && (v26 = sub_1ABAFF5B8(), (v27 & 1) != 0) && (v28 = v57, v29 = v63, v24(v57, *(a3 + 56) + v26 * v23, v63), sub_1ABF218C4(), v31 = v30, v32 = *v58, (*v58)(v28, v29), v31 != 0.0))
    {
      v52 = a3;
      v33 = v64;
      v34 = v54;
      sub_1ABBD88DC(v64, v54, &qword_1EB4D99E0, &unk_1ABF61878);
      v51 = *v34;
      v35 = v60;
      v50 = *(v60 + 48);
      v36 = v53;
      sub_1ABBD88DC(v33, v53, &qword_1EB4D99E0, &unk_1ABF61878);
      v49 = *(v35 + 48);
      v37 = v63;
      sub_1ABF218C4();
      v39 = v38;
      sub_1ABAB480C(v33, &qword_1EB4D99E0, &unk_1ABF61878);
      v32((v36 + v49), v37);
      v32(&v54[v50], v37);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1ABADC008(0, *(v56 + 16) + 1, 1, v56);
        v56 = v44;
      }

      v41 = *(v56 + 16);
      v40 = *(v56 + 24);
      if (v41 >= v40 >> 1)
      {
        sub_1ABADC008(v40 > 1, v41 + 1, 1, v56);
        v56 = v45;
      }

      v42 = v56;
      *(v56 + 16) = v41 + 1;
      v43 = v42 + 16 * v41;
      *(v43 + 32) = v51;
      *(v43 + 40) = v12 * v39 / v31;
      a3 = v52;
    }

    else
    {
      sub_1ABAB480C(v64, &qword_1EB4D99E0, &unk_1ABF61878);
    }
  }

  while (1)
  {
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v19 >= v17)
    {

      v46 = sub_1ABBFA708(v56);
      v47 = v55;
      *v47 = sub_1ABD9E158(v46, *v55, sub_1ABDBF94C, sub_1ABDBA45C);
      return;
    }

    v16 = *(v13 + 8 * v19);
    ++v18;
    if (v16)
    {
      v18 = v19;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_1ABDB383C(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = 0;
  v17 = *a1 & 0xC000000000000001;
  v18 = sub_1ABAAB7C8(*a1);
  v4 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    if (v18 == v3)
    {
      *a2 = v4;
      return;
    }

    if (v17)
    {
      v5 = MEMORY[0x1AC5AA170](v3, v2);
    }

    else
    {
      if (v3 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v5 = *(v2 + 8 * v3 + 32);
    }

    v6 = v5;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    swift_isUniquelyReferenced_nonNull_native();
    sub_1ABAF89FC();
    if (__OFADD__(v4[2], (v8 & 1) == 0))
    {
      goto LABEL_20;
    }

    v9 = v7;
    v10 = v8;
    sub_1ABAD219C(&qword_1EB4D99A0, &qword_1ABF617F8);
    if (sub_1ABF24C64())
    {
      sub_1ABAF89FC();
      if ((v10 & 1) != (v12 & 1))
      {
        goto LABEL_22;
      }

      v9 = v11;
    }

    if (v10)
    {
      *(v4[7] + 8 * v9) = 1;
    }

    else
    {
      v4[(v9 >> 6) + 8] |= 1 << v9;
      *(v4[6] + 8 * v9) = v6;
      *(v4[7] + 8 * v9) = 1;
      v13 = v4[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_21;
      }

      v4[2] = v15;
    }

    ++v3;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  sub_1ABAFF390(0, &qword_1EB4D1F98, 0x1E6985C40);
  sub_1ABF25104();
  __break(1u);
}

uint64_t static KTSDataAggregateRepresentation.emptyRepresentation.getter()
{
  v1 = sub_1ABAD219C(&qword_1EB4D15B0, &qword_1ABF33740);
  v2 = sub_1ABA7AB80(v1);
  MEMORY[0x1EEE9AC00](v2);
  sub_1ABA7C068();
  v102 = v3;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA972D4();
  v101 = v5;
  v6 = sub_1ABAD219C(&qword_1EB4D1680, &qword_1ABF33810);
  sub_1ABA7AB80(v6);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA7FBE0();
  v99 = v8;
  sub_1ABAD219C(&qword_1EB4D16F0, &qword_1ABF33880);
  sub_1ABA7BBB0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA7C068();
  v100 = v10;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v11);
  v91 = &v58 - v12;
  sub_1ABAD219C(&qword_1EB4D1710, &qword_1ABF338A0);
  sub_1ABA7BBB0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1ABA7C068();
  v98 = v14;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v15);
  sub_1ABA88E50();
  v97 = v16;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v17);
  sub_1ABA88E50();
  v96 = v18;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v19);
  sub_1ABA88E50();
  v95 = v20;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v21);
  sub_1ABA88D88();
  v93 = v0;
  MEMORY[0x1EEE9AC00](v22);
  v94 = &v58 - v23;
  v24 = objc_opt_self();
  v25 = [v24 meters];
  sub_1ABAFF390(0, &qword_1EB4CE6D8, 0x1E696B058);
  sub_1ABA8AF68();
  sub_1ABF218B4();
  v26 = [v24 &selRef_cadence + 1];
  sub_1ABF218B4();
  sub_1ABDB4878();
  v92 = sub_1ABF239C4();
  v27 = objc_opt_self();
  v28 = [v27 seconds];
  sub_1ABAFF390(0, &qword_1EB4CE6B8, 0x1E696B008);
  sub_1ABAA3928();
  sub_1ABF218B4();
  v29 = [v27 seconds];
  sub_1ABF218B4();
  sub_1ABDB48CC();
  sub_1ABAA030C();
  v90 = sub_1ABF239C4();
  sub_1ABAA030C();
  v89 = sub_1ABF239C4();
  v77 = sub_1ABDB4920();
  sub_1ABAA0F84();
  v88 = sub_1ABF239C4();
  sub_1ABAB5378();
  v87 = sub_1ABF239C4();
  v76 = sub_1ABDB4974();
  sub_1ABAA0F84();
  v86 = sub_1ABF239C4();
  sub_1ABAB5378();
  v85 = sub_1ABF239C4();
  v74 = sub_1ABDB49C8();
  sub_1ABAA0F84();
  v84 = sub_1ABF239C4();
  sub_1ABAB5378();
  v83 = sub_1ABF239C4();
  v72 = sub_1ABDB4A1C();
  sub_1ABAA0F84();
  v82 = sub_1ABF239C4();
  sub_1ABAB5378();
  v81 = sub_1ABF239C4();
  v70 = sub_1ABDB4A70();
  sub_1ABAA0F84();
  v80 = sub_1ABF239C4();
  sub_1ABAB5378();
  v79 = sub_1ABF239C4();
  v30 = [objc_opt_self() metersPerSecond];
  sub_1ABAFF390(0, &qword_1EB4CE6F0, 0x1E696B078);
  sub_1ABF218B4();
  v31 = objc_opt_self();
  v32 = [v31 kilowattHours];
  sub_1ABAFF390(0, &qword_1EB4CE6E0, 0x1E696B030);
  sub_1ABF218B4();
  v33 = [v31 kilowattHours];
  sub_1ABF218B4();
  sub_1ABAA0F84();
  v78 = sub_1ABF239C4();
  sub_1ABAD219C(&qword_1EB4D16C0, &qword_1ABF33850);
  sub_1ABA954F0();
  v75 = sub_1ABF239C4();
  sub_1ABAD219C(&qword_1EB4D16E0, &qword_1ABF33870);
  sub_1ABA954F0();
  v73 = sub_1ABF239C4();
  sub_1ABAB5378();
  v71 = sub_1ABF239C4();
  v34 = sub_1ABDBFC1C();
  sub_1ABF218B4();
  v35 = sub_1ABDBFC1C();
  sub_1ABF218B4();
  v36 = sub_1ABDBFC1C();
  sub_1ABF218B4();
  v37 = sub_1ABDBFC1C();
  sub_1ABF218B4();
  v38 = sub_1ABF239C4();
  sub_1ABAA07B8(v38, &v101);
  sub_1ABDBFB44();
  v39 = sub_1ABF239C4();
  sub_1ABAA07B8(v39, &v100);
  v40 = sub_1ABF239C4();
  sub_1ABAA07B8(v40, &v99);
  sub_1ABDBF9A8();
  v41 = sub_1ABF239C4();
  sub_1ABAA07B8(v41, &v98);
  v42 = sub_1ABF239C4();
  sub_1ABAA07B8(v42, &v97);
  v43 = sub_1ABF239C4();
  sub_1ABAA07B8(v43, &v96);
  v44 = sub_1ABF239C4();
  sub_1ABAA07B8(v44, &v95);
  sub_1ABDBFB44();
  v45 = sub_1ABF239C4();
  sub_1ABAA07B8(v45, &v94);
  v46 = sub_1ABF239C4();
  sub_1ABAA07B8(v46, &v93);
  sub_1ABDBF9A8();
  v47 = sub_1ABF239C4();
  sub_1ABAA07B8(v47, &v92);
  v48 = sub_1ABF239C4();
  sub_1ABAA07B8(v48, &v91);
  v49 = sub_1ABF239C4();
  sub_1ABAA07B8(v49, &v90);
  v50 = sub_1ABF239C4();
  sub_1ABDBFB44();
  v51 = sub_1ABF239C4();
  v52 = sub_1ABF239C4();
  sub_1ABA8C744();
  v53 = sub_1ABF239C4();
  v54 = sub_1ABF239C4();
  v55 = sub_1ABF239C4();
  type metadata accessor for KTSDataAggregateRepresentation(0);
  v56 = swift_allocObject();
  KTSDataAggregateRepresentation.init(startTime:endTime:distanceInMeters:elevationGainInMeters:distanceBuckets:durationInSeconds:expectedDurationInSecondsNoTraffic:distanceSpentInTrafficBuckets:timeSpentInTrafficBuckets:distanceSpentAtSpeedBuckets:timeSpentAtSpeedBuckets:distanceSpentAtRelativeSpeeds:timeSpentAtRelativeSpeeds:distancePerRoadType:timePerRoadType:distancePerWeatherType:timePerWeatherType:distancePerTerrainType:timePerTerrainType:averageSpeedInMetersPerSecond:score:usageKwh:optimalUsageKwh:numBrakingEvents:numAccelEvents:numHighSpeedEvents:roadDistancesInMeters:roadSpeedBuckets:roadRelativeSpeedBuckets:roadTimes:lifeEventIds:ktsSegmentIds:maxTripDistanceInMeters:avgTripDistanceInMeters:maxElevationGainInMeters:avgElevationGainInMeters:percentTimeSpentAtSpeedBuckets:percentTimeSpentAtTrafficBuckets:percentTimeSpentAtRelativeSpeeds:percentTimeSpentAtRoadTypes:percentTimeSpentInWeatherTypes:percentTimeSpentInTerrainTypes:percentDistanceTraveledAtSpeedBuckets:percentDistanceTraveledAtTrafficBuckets:p(v94, v93, v92, v91, v100, v90, v89, v88, v87, v86, v85, v84, v83, v82, v81, v80, v79, v99, v101, v102, 0, 0, 0, v78, v75, v73, v71, 0, 0, v95, v96, v97, v98, v69, v68, v67, v66, v65, v64, v63, v62, v61, v60, v59, v58, v50, v51, v52, v53, v54, v55, 0, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68);
  return v56;
}

uint64_t sub_1ABDB445C(unint64_t a1, uint64_t a2)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (*(a2 + 16) <= a1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_1ABA8D150();
  swift_unknownObjectRetain_n();
  v3 = sub_1ABA7ECFC();
  sub_1ABAD219C(v3, v4);
  if (swift_dynamicCast())
  {

    return v2;
  }

LABEL_7:
  sub_1ABDBFBE4();
  sub_1ABDBF9C0();
  v6 = sub_1ABF253A4();
  MEMORY[0x1AC5A9410](v6);

  sub_1ABA89F68();
  swift_getObjectType();
  v7 = sub_1ABF253A4();
  MEMORY[0x1AC5A9410](v7);

  result = sub_1ABF24CE4();
  __break(1u);
  return result;
}

uint64_t sub_1ABDB4570(unint64_t a1, uint64_t a2)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (*(a2 + 16) <= a1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_1ABA8D150();
  swift_unknownObjectRetain_n();
  v3 = sub_1ABA7ECFC();
  sub_1ABAD219C(v3, v4);
  if (swift_dynamicCast())
  {

    return v2;
  }

LABEL_7:
  sub_1ABDBFBE4();
  sub_1ABDBF9C0();
  v6 = sub_1ABF253A4();
  MEMORY[0x1AC5A9410](v6);

  sub_1ABA89F68();
  swift_getObjectType();
  v7 = sub_1ABF253A4();
  MEMORY[0x1AC5A9410](v7);

  result = sub_1ABF24CE4();
  __break(1u);
  return result;
}

uint64_t sub_1ABDB4684(unint64_t a1, uint64_t a2)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (*(a2 + 16) <= a1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v2 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  swift_unknownObjectRetain_n();
  sub_1ABAD219C(&qword_1EB4D1700, &qword_1ABF33890);
  if (swift_dynamicCast())
  {

    return v2;
  }

LABEL_7:
  sub_1ABF24AB4();
  MEMORY[0x1AC5A9410](0xD000000000000043, 0x80000001ABF90390);
  MEMORY[0x1AC5A9410](0xD00000000000001FLL, 0x80000001ABF903E0);
  MEMORY[0x1AC5A9410](0x756F662074756220, 0xEB0000000020646ELL);
  swift_getObjectType();
  v4 = sub_1ABF253A4();
  MEMORY[0x1AC5A9410](v4);

  result = sub_1ABF24CE4();
  __break(1u);
  return result;
}

uint64_t sub_1ABDB47E8(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!result || a1 > *(v4 + 24) >> 1)
  {

    return a2();
  }

  return result;
}

unint64_t sub_1ABDB4878()
{
  result = qword_1EB4D9628;
  if (!qword_1EB4D9628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9628);
  }

  return result;
}

unint64_t sub_1ABDB48CC()
{
  result = qword_1EB4D9638;
  if (!qword_1EB4D9638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9638);
  }

  return result;
}

unint64_t sub_1ABDB4920()
{
  result = qword_1EB4D9640;
  if (!qword_1EB4D9640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9640);
  }

  return result;
}

unint64_t sub_1ABDB4974()
{
  result = qword_1EB4D9648;
  if (!qword_1EB4D9648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9648);
  }

  return result;
}

unint64_t sub_1ABDB49C8()
{
  result = qword_1EB4D9650;
  if (!qword_1EB4D9650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9650);
  }

  return result;
}

unint64_t sub_1ABDB4A1C()
{
  result = qword_1EB4D9658;
  if (!qword_1EB4D9658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9658);
  }

  return result;
}

unint64_t sub_1ABDB4A70()
{
  result = qword_1EB4D9660;
  if (!qword_1EB4D9660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9660);
  }

  return result;
}

unint64_t sub_1ABDB4AC4()
{
  result = qword_1EB4D9688;
  if (!qword_1EB4D9688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9688);
  }

  return result;
}

unint64_t sub_1ABDB4B18()
{
  result = qword_1EB4D9698;
  if (!qword_1EB4D9698)
  {
    sub_1ABAE2850(&qword_1EB4D1700, &qword_1ABF33890);
    sub_1ABDB4BA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9698);
  }

  return result;
}

unint64_t sub_1ABDB4BA4()
{
  result = qword_1EB4D96A0;
  if (!qword_1EB4D96A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D96A0);
  }

  return result;
}

unint64_t sub_1ABDB4BF8()
{
  result = qword_1EB4D96B0;
  if (!qword_1EB4D96B0)
  {
    sub_1ABAE2850(&qword_1EB4D16A0, &qword_1ABF33830);
    sub_1ABDB4CB0();
    sub_1ABD1044C(&unk_1EB4D9690);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D96B0);
  }

  return result;
}

unint64_t sub_1ABDB4CB0()
{
  result = qword_1EB4D96B8;
  if (!qword_1EB4D96B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D96B8);
  }

  return result;
}

unint64_t sub_1ABDB4D04()
{
  result = qword_1EB4D96C0;
  if (!qword_1EB4D96C0)
  {
    sub_1ABAE2850(&qword_1EB4D1690, &qword_1ABF33820);
    sub_1ABDB4CB0();
    sub_1ABD1044C(&unk_1EB4D96A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D96C0);
  }

  return result;
}

unint64_t sub_1ABDB4DBC()
{
  result = qword_1EB4D96C8;
  if (!qword_1EB4D96C8)
  {
    sub_1ABAE2850(&qword_1EB4D16C0, &qword_1ABF33850);
    sub_1ABDB4E74();
    sub_1ABD1044C(&unk_1EB4D9690);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D96C8);
  }

  return result;
}

unint64_t sub_1ABDB4E74()
{
  result = qword_1EB4D96D0;
  if (!qword_1EB4D96D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D96D0);
  }

  return result;
}

unint64_t sub_1ABDB4EC8()
{
  result = qword_1EB4D96D8;
  if (!qword_1EB4D96D8)
  {
    sub_1ABAE2850(&qword_1EB4D16B0, &qword_1ABF33840);
    sub_1ABDB4E74();
    sub_1ABD1044C(&unk_1EB4D96A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D96D8);
  }

  return result;
}

unint64_t sub_1ABDB4F80()
{
  result = qword_1EB4D96E0;
  if (!qword_1EB4D96E0)
  {
    sub_1ABAE2850(&qword_1EB4D16E0, &qword_1ABF33870);
    sub_1ABDB5038();
    sub_1ABD1044C(&unk_1EB4D9690);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D96E0);
  }

  return result;
}

unint64_t sub_1ABDB5038()
{
  result = qword_1EB4D96E8;
  if (!qword_1EB4D96E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D96E8);
  }

  return result;
}

unint64_t sub_1ABDB508C()
{
  result = qword_1EB4D96F0;
  if (!qword_1EB4D96F0)
  {
    sub_1ABAE2850(&qword_1EB4D16D0, &qword_1ABF33860);
    sub_1ABDB5038();
    sub_1ABD1044C(&unk_1EB4D96A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D96F0);
  }

  return result;
}

unint64_t sub_1ABDB5144()
{
  result = qword_1EB4D9708;
  if (!qword_1EB4D9708)
  {
    sub_1ABAE2850(&qword_1EB4D15A0, &qword_1ABF33730);
    sub_1ABD1044C(&unk_1EB4D9690);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9708);
  }

  return result;
}

unint64_t sub_1ABDB51FC(uint64_t a1)
{
  result = sub_1ABA8C760(a1);
  if (!result)
  {
    sub_1ABA9E454();
    sub_1ABAE2850(&qword_1EB4D1580, &qword_1ABF33710);
    v2();
    sub_1ABAA030C();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1ABDB5270()
{
  result = qword_1EB4D9720;
  if (!qword_1EB4D9720)
  {
    sub_1ABAE2850(&qword_1EB4D1570, &qword_1ABF33700);
    sub_1ABD1044C(&unk_1EB4D96A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9720);
  }

  return result;
}

unint64_t sub_1ABDB5328()
{
  result = qword_1EB4D9728;
  if (!qword_1EB4D9728)
  {
    sub_1ABAE2850(&qword_1EB4D1670, &qword_1ABF33800);
    sub_1ABDB53E0();
    sub_1ABD1044C(&unk_1EB4D9690);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9728);
  }

  return result;
}

unint64_t sub_1ABDB53E0()
{
  result = qword_1EB4D9730;
  if (!qword_1EB4D9730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9730);
  }

  return result;
}

unint64_t sub_1ABDB5434()
{
  result = qword_1EB4D9738;
  if (!qword_1EB4D9738)
  {
    sub_1ABAE2850(&qword_1EB4D1650, &qword_1ABF337E0);
    sub_1ABDB54EC();
    sub_1ABD1044C(&unk_1EB4D9690);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9738);
  }

  return result;
}

unint64_t sub_1ABDB54EC()
{
  result = qword_1EB4D9740;
  if (!qword_1EB4D9740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9740);
  }

  return result;
}

unint64_t sub_1ABDB5540()
{
  result = qword_1EB4D9748;
  if (!qword_1EB4D9748)
  {
    sub_1ABAE2850(&qword_1EB4D1660, &qword_1ABF337F0);
    sub_1ABDB55F8();
    sub_1ABD1044C(&unk_1EB4D9690);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9748);
  }

  return result;
}

unint64_t sub_1ABDB55F8()
{
  result = qword_1EB4D9750;
  if (!qword_1EB4D9750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9750);
  }

  return result;
}

unint64_t sub_1ABDB564C()
{
  result = qword_1EB4D9758;
  if (!qword_1EB4D9758)
  {
    sub_1ABAE2850(&qword_1EB4D1640, &qword_1ABF337D0);
    sub_1ABDB53E0();
    sub_1ABD1044C(&unk_1EB4D96A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9758);
  }

  return result;
}

unint64_t sub_1ABDB5704()
{
  result = qword_1EB4D9760;
  if (!qword_1EB4D9760)
  {
    sub_1ABAE2850(&qword_1EB4D1620, &qword_1ABF337B0);
    sub_1ABDB54EC();
    sub_1ABD1044C(&unk_1EB4D96A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9760);
  }

  return result;
}

unint64_t sub_1ABDB57BC()
{
  result = qword_1EB4D9768;
  if (!qword_1EB4D9768)
  {
    sub_1ABAE2850(&qword_1EB4D1630, &qword_1ABF337C0);
    sub_1ABDB55F8();
    sub_1ABD1044C(&unk_1EB4D96A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9768);
  }

  return result;
}

unint64_t sub_1ABDB5894()
{
  result = qword_1EB4D9798;
  if (!qword_1EB4D9798)
  {
    sub_1ABAE2850(&qword_1EB4D1700, &qword_1ABF33890);
    sub_1ABDB5920();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9798);
  }

  return result;
}

unint64_t sub_1ABDB5920()
{
  result = qword_1EB4D97A0;
  if (!qword_1EB4D97A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D97A0);
  }

  return result;
}

unint64_t sub_1ABDB5974()
{
  result = qword_1EB4D97B0;
  if (!qword_1EB4D97B0)
  {
    sub_1ABAE2850(&qword_1EB4D16A0, &qword_1ABF33830);
    sub_1ABDB5A2C();
    sub_1ABD1044C(&unk_1EB4D9790);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D97B0);
  }

  return result;
}

unint64_t sub_1ABDB5A2C()
{
  result = qword_1EB4D97B8;
  if (!qword_1EB4D97B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D97B8);
  }

  return result;
}

unint64_t sub_1ABDB5A80()
{
  result = qword_1EB4D97C0;
  if (!qword_1EB4D97C0)
  {
    sub_1ABAE2850(&qword_1EB4D1690, &qword_1ABF33820);
    sub_1ABDB5A2C();
    sub_1ABD1044C(&unk_1EB4D97A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D97C0);
  }

  return result;
}

unint64_t sub_1ABDB5B38()
{
  result = qword_1EB4D97C8;
  if (!qword_1EB4D97C8)
  {
    sub_1ABAE2850(&qword_1EB4D16C0, &qword_1ABF33850);
    sub_1ABDB5BF0();
    sub_1ABD1044C(&unk_1EB4D9790);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D97C8);
  }

  return result;
}

unint64_t sub_1ABDB5BF0()
{
  result = qword_1EB4D97D0;
  if (!qword_1EB4D97D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D97D0);
  }

  return result;
}

unint64_t sub_1ABDB5C44()
{
  result = qword_1EB4D97D8;
  if (!qword_1EB4D97D8)
  {
    sub_1ABAE2850(&qword_1EB4D16B0, &qword_1ABF33840);
    sub_1ABDB5BF0();
    sub_1ABD1044C(&unk_1EB4D97A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D97D8);
  }

  return result;
}

unint64_t sub_1ABDB5CFC()
{
  result = qword_1EB4D97E0;
  if (!qword_1EB4D97E0)
  {
    sub_1ABAE2850(&qword_1EB4D16E0, &qword_1ABF33870);
    sub_1ABDB5DB4();
    sub_1ABD1044C(&unk_1EB4D9790);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D97E0);
  }

  return result;
}

unint64_t sub_1ABDB5DB4()
{
  result = qword_1EB4D97E8;
  if (!qword_1EB4D97E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D97E8);
  }

  return result;
}

unint64_t sub_1ABDB5E08()
{
  result = qword_1EB4D97F0;
  if (!qword_1EB4D97F0)
  {
    sub_1ABAE2850(&qword_1EB4D16D0, &qword_1ABF33860);
    sub_1ABDB5DB4();
    sub_1ABD1044C(&unk_1EB4D97A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D97F0);
  }

  return result;
}

unint64_t sub_1ABDB5EC0()
{
  result = qword_1EB4D9808;
  if (!qword_1EB4D9808)
  {
    sub_1ABAE2850(&qword_1EB4D15A0, &qword_1ABF33730);
    sub_1ABD1044C(&unk_1EB4D9790);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9808);
  }

  return result;
}

unint64_t sub_1ABDB5F78(uint64_t a1)
{
  result = sub_1ABA8C760(a1);
  if (!result)
  {
    sub_1ABA9E454();
    sub_1ABAE2850(&qword_1EB4D1590, &qword_1ABF33720);
    v2();
    sub_1ABAA030C();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1ABDB5FEC()
{
  result = qword_1EB4D9820;
  if (!qword_1EB4D9820)
  {
    sub_1ABAE2850(&qword_1EB4D1570, &qword_1ABF33700);
    sub_1ABD1044C(&unk_1EB4D97A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9820);
  }

  return result;
}

unint64_t sub_1ABDB60A4()
{
  result = qword_1EB4D9828;
  if (!qword_1EB4D9828)
  {
    sub_1ABAE2850(&qword_1EB4D1670, &qword_1ABF33800);
    sub_1ABDB615C();
    sub_1ABD1044C(&unk_1EB4D9790);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9828);
  }

  return result;
}

unint64_t sub_1ABDB615C()
{
  result = qword_1EB4D9830;
  if (!qword_1EB4D9830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9830);
  }

  return result;
}

unint64_t sub_1ABDB61B0()
{
  result = qword_1EB4D9838;
  if (!qword_1EB4D9838)
  {
    sub_1ABAE2850(&qword_1EB4D1650, &qword_1ABF337E0);
    sub_1ABDB6268();
    sub_1ABD1044C(&unk_1EB4D9790);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9838);
  }

  return result;
}

unint64_t sub_1ABDB6268()
{
  result = qword_1EB4D9840;
  if (!qword_1EB4D9840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9840);
  }

  return result;
}

unint64_t sub_1ABDB62BC()
{
  result = qword_1EB4D9848;
  if (!qword_1EB4D9848)
  {
    sub_1ABAE2850(&qword_1EB4D1660, &qword_1ABF337F0);
    sub_1ABDB6374();
    sub_1ABD1044C(&unk_1EB4D9790);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9848);
  }

  return result;
}

unint64_t sub_1ABDB6374()
{
  result = qword_1EB4D9850;
  if (!qword_1EB4D9850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9850);
  }

  return result;
}

unint64_t sub_1ABDB63C8()
{
  result = qword_1EB4D9858;
  if (!qword_1EB4D9858)
  {
    sub_1ABAE2850(&qword_1EB4D1640, &qword_1ABF337D0);
    sub_1ABDB615C();
    sub_1ABD1044C(&unk_1EB4D97A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9858);
  }

  return result;
}

unint64_t sub_1ABDB6480()
{
  result = qword_1EB4D9860;
  if (!qword_1EB4D9860)
  {
    sub_1ABAE2850(&qword_1EB4D1620, &qword_1ABF337B0);
    sub_1ABDB6268();
    sub_1ABD1044C(&unk_1EB4D97A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9860);
  }

  return result;
}

unint64_t sub_1ABDB6538()
{
  result = qword_1EB4D9868;
  if (!qword_1EB4D9868)
  {
    sub_1ABAE2850(&qword_1EB4D1630, &qword_1ABF337C0);
    sub_1ABDB6374();
    sub_1ABD1044C(&unk_1EB4D97A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9868);
  }

  return result;
}

unint64_t sub_1ABDB65F0(uint64_t a1)
{
  result = sub_1ABA8C760(a1);
  if (!result)
  {
    sub_1ABA9E454();
    sub_1ABAE2850(&qword_1EB4D9770, &unk_1ABF613D0);
    v3 = sub_1ABA7BE8C();
    sub_1ABDB6664(v3);
    sub_1ABAA030C();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1ABDB6664(uint64_t a1)
{
  result = sub_1ABA8C760(a1);
  if (!result)
  {
    type metadata accessor for CodableLocation(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1ABDB66A4(uint64_t a1)
{
  result = sub_1ABA8C760(a1);
  if (!result)
  {
    v4 = v3;
    sub_1ABAE2850(&qword_1EB4D1720, &qword_1ABF338B0);
    v4();
    sub_1ABA7ABE4();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

void sub_1ABDB6714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1ABA7BCA8();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v56 = v29;
  v55 = sub_1ABAD219C(v30, v31);
  sub_1ABA7BB64();
  v33 = v32;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v34);
  sub_1ABA7FBE0();
  v54 = v35;
  sub_1ABAD219C(v26, v24);
  sub_1ABF24D24();
  v36 = 0;
  v57 = v28;
  v37 = v28 + 64;
  sub_1ABA7D32C();
  v40 = v39 & v38;
  v42 = (v41 + 63) >> 6;
  v52 = v43 + 8;
  v53 = v43;
  if (v40)
  {
    while (1)
    {
      v44 = __clz(__rbit64(v40));
      v58 = (v40 - 1) & v40;
LABEL_8:
      v47 = v44 | (v36 << 6);
      v48 = *(*(v57 + 48) + v47);
      (*(v33 + 16))(v54, *(v57 + 56) + *(v33 + 72) * v47, v55);
      v56(&a10, v54);
      (*(v33 + 8))(v54, v55);
      if (v20)
      {
        break;
      }

      *(v52 + ((v47 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v47;
      *(v53[6] + v47) = v48;
      *(v53[7] + 8 * v47) = a10;
      v49 = v53[2];
      v50 = __OFADD__(v49, 1);
      v51 = v49 + 1;
      if (v50)
      {
        goto LABEL_15;
      }

      v53[2] = v51;
      v40 = v58;
      if (!v58)
      {
        goto LABEL_3;
      }
    }

LABEL_13:
    sub_1ABA7BC90();
  }

  else
  {
LABEL_3:
    v45 = v36;
    while (1)
    {
      v36 = v45 + 1;
      if (__OFADD__(v45, 1))
      {
        break;
      }

      if (v36 >= v42)
      {
        goto LABEL_13;
      }

      v46 = *(v37 + 8 * v36);
      ++v45;
      if (v46)
      {
        v44 = __clz(__rbit64(v46));
        v58 = (v46 - 1) & v46;
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }
}

uint64_t sub_1ABDB695C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v57 = a5;
  v9 = sub_1ABAD219C(&qword_1EB4D16F0, &qword_1ABF33880);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v47 = v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v46 = v45 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v50 = v45 - v15;
  v16 = sub_1ABAD219C(&qword_1EB4D99F8, &qword_1ABF618E8);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = v45 - v17;
  sub_1ABAB4C0C(a1, a2, a3, v55);
  v51 = v55[0];
  v52 = v55[1];
  v53 = v55[2];
  v54 = v56;
  v19 = (v10 + 32);
  v45[6] = v10 + 16;
  v45[5] = v10 + 8;
  v49 = v10;
  v45[4] = v10 + 40;
  v45[2] = a1;

  v45[1] = a3;

  for (i = v18; ; v18 = i)
  {
    sub_1ABD9E1DC(v18);
    v20 = sub_1ABAD219C(&qword_1EB4D13B8, &qword_1ABF33540);
    if (sub_1ABA7E1E0(v18, 1, v20) == 1)
    {
      sub_1ABAB4C48(v51);
    }

    v21 = *v18;
    v22 = *v19;
    (*v19)(v50, &v18[*(v20 + 48)], v9);
    v23 = *v57;
    v25 = sub_1ABAFF5B8();
    v26 = v23[2];
    v27 = (v24 & 1) == 0;
    v28 = v26 + v27;
    if (__OFADD__(v26, v27))
    {
      break;
    }

    v29 = v24;
    if (v23[3] >= v28)
    {
      if ((a4 & 1) == 0)
      {
        sub_1ABAD219C(&qword_1EB4D5560, &unk_1ABF618F0);
        sub_1ABF24C74();
      }
    }

    else
    {
      sub_1ABC056E8(v28, a4 & 1);
      v30 = sub_1ABAFF5B8();
      if ((v29 & 1) != (v31 & 1))
      {
        goto LABEL_17;
      }

      v25 = v30;
    }

    v32 = *v57;
    if (v29)
    {
      v33 = v49;
      v34 = *(v49 + 72) * v25;
      v35 = v47;
      (*(v49 + 16))(v47, v32[7] + v34, v9);
      sub_1ABAFF390(0, &qword_1EB4CE6B8, 0x1E696B008);
      v36 = v46;
      v37 = v19;
      v38 = v50;
      sub_1ABF218D4();
      v39 = *(v33 + 8);
      v39(v35, v9);
      v40 = v38;
      v19 = v37;
      v39(v40, v9);
      (*(v33 + 40))(v32[7] + v34, v36, v9);
    }

    else
    {
      v32[(v25 >> 6) + 8] |= 1 << v25;
      *(v32[6] + v25) = v21;
      v22((v32[7] + *(v49 + 72) * v25), v50, v9);
      v41 = v32[2];
      v42 = __OFADD__(v41, 1);
      v43 = v41 + 1;
      if (v42)
      {
        goto LABEL_16;
      }

      v32[2] = v43;
    }

    a4 = 1;
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  result = sub_1ABF25104();
  __break(1u);
  return result;
}

uint64_t sub_1ABDB6DCC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v57 = a5;
  v9 = sub_1ABAD219C(&qword_1EB4D16F0, &qword_1ABF33880);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v47 = v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v46 = v45 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v50 = v45 - v15;
  v16 = sub_1ABAD219C(&qword_1EB4D9A00, &unk_1ABF61900);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = v45 - v17;
  sub_1ABAB4C0C(a1, a2, a3, v55);
  v51 = v55[0];
  v52 = v55[1];
  v53 = v55[2];
  v54 = v56;
  v19 = (v10 + 32);
  v45[6] = v10 + 16;
  v45[5] = v10 + 8;
  v49 = v10;
  v45[4] = v10 + 40;
  v45[2] = a1;

  v45[1] = a3;

  for (i = v18; ; v18 = i)
  {
    sub_1ABD9E524(v18);
    v20 = sub_1ABAD219C(&qword_1EB4D13D8, &qword_1ABF33560);
    if (sub_1ABA7E1E0(v18, 1, v20) == 1)
    {
      sub_1ABAB4C48(v51);
    }

    v21 = *v18;
    v22 = *v19;
    (*v19)(v50, &v18[*(v20 + 48)], v9);
    v23 = *v57;
    v25 = sub_1ABAFF5B8();
    v26 = v23[2];
    v27 = (v24 & 1) == 0;
    v28 = v26 + v27;
    if (__OFADD__(v26, v27))
    {
      break;
    }

    v29 = v24;
    if (v23[3] >= v28)
    {
      if ((a4 & 1) == 0)
      {
        sub_1ABAD219C(&qword_1EB4D5580, &qword_1ABF4AB58);
        sub_1ABF24C74();
      }
    }

    else
    {
      sub_1ABC0570C(v28, a4 & 1);
      v30 = sub_1ABAFF5B8();
      if ((v29 & 1) != (v31 & 1))
      {
        goto LABEL_17;
      }

      v25 = v30;
    }

    v32 = *v57;
    if (v29)
    {
      v33 = v49;
      v34 = *(v49 + 72) * v25;
      v35 = v47;
      (*(v49 + 16))(v47, v32[7] + v34, v9);
      sub_1ABAFF390(0, &qword_1EB4CE6B8, 0x1E696B008);
      v36 = v46;
      v37 = v19;
      v38 = v50;
      sub_1ABF218D4();
      v39 = *(v33 + 8);
      v39(v35, v9);
      v40 = v38;
      v19 = v37;
      v39(v40, v9);
      (*(v33 + 40))(v32[7] + v34, v36, v9);
    }

    else
    {
      v32[(v25 >> 6) + 8] |= 1 << v25;
      *(v32[6] + v25) = v21;
      v22((v32[7] + *(v49 + 72) * v25), v50, v9);
      v41 = v32[2];
      v42 = __OFADD__(v41, 1);
      v43 = v41 + 1;
      if (v42)
      {
        goto LABEL_16;
      }

      v32[2] = v43;
    }

    a4 = 1;
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  result = sub_1ABF25104();
  __break(1u);
  return result;
}

uint64_t sub_1ABDB723C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v57 = a5;
  v9 = sub_1ABAD219C(&qword_1EB4D1710, &qword_1ABF338A0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v47 = v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v46 = v45 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v50 = v45 - v15;
  v16 = sub_1ABAD219C(&qword_1EB4D9A08, &unk_1ABF61920);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = v45 - v17;
  sub_1ABAB4C0C(a1, a2, a3, v55);
  v51 = v55[0];
  v52 = v55[1];
  v53 = v55[2];
  v54 = v56;
  v19 = (v10 + 32);
  v45[6] = v10 + 16;
  v45[5] = v10 + 8;
  v49 = v10;
  v45[4] = v10 + 40;
  v45[2] = a1;

  v45[1] = a3;

  for (i = v18; ; v18 = i)
  {
    sub_1ABD9E86C(v18);
    v20 = sub_1ABAD219C(&qword_1EB4D13F8, &qword_1ABF33580);
    if (sub_1ABA7E1E0(v18, 1, v20) == 1)
    {
      sub_1ABAB4C48(v51);
    }

    v21 = *v18;
    v22 = *v19;
    (*v19)(v50, &v18[*(v20 + 48)], v9);
    v23 = *v57;
    v25 = sub_1ABAFF5B8();
    v26 = v23[2];
    v27 = (v24 & 1) == 0;
    v28 = v26 + v27;
    if (__OFADD__(v26, v27))
    {
      break;
    }

    v29 = v24;
    if (v23[3] >= v28)
    {
      if ((a4 & 1) == 0)
      {
        sub_1ABAD219C(&qword_1EB4D55A0, &qword_1ABF4AB80);
        sub_1ABF24C74();
      }
    }

    else
    {
      sub_1ABC05730(v28, a4 & 1);
      v30 = sub_1ABAFF5B8();
      if ((v29 & 1) != (v31 & 1))
      {
        goto LABEL_17;
      }

      v25 = v30;
    }

    v32 = *v57;
    if (v29)
    {
      v33 = v49;
      v34 = *(v49 + 72) * v25;
      v35 = v47;
      (*(v49 + 16))(v47, v32[7] + v34, v9);
      sub_1ABAFF390(0, &qword_1EB4CE6D8, 0x1E696B058);
      v36 = v46;
      v37 = v19;
      v38 = v50;
      sub_1ABF218D4();
      v39 = *(v33 + 8);
      v39(v35, v9);
      v40 = v38;
      v19 = v37;
      v39(v40, v9);
      (*(v33 + 40))(v32[7] + v34, v36, v9);
    }

    else
    {
      v32[(v25 >> 6) + 8] |= 1 << v25;
      *(v32[6] + v25) = v21;
      v22((v32[7] + *(v49 + 72) * v25), v50, v9);
      v41 = v32[2];
      v42 = __OFADD__(v41, 1);
      v43 = v41 + 1;
      if (v42)
      {
        goto LABEL_16;
      }

      v32[2] = v43;
    }

    a4 = 1;
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  result = sub_1ABF25104();
  __break(1u);
  return result;
}

uint64_t sub_1ABDB76AC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v57 = a5;
  v9 = sub_1ABAD219C(&qword_1EB4D1710, &qword_1ABF338A0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v47 = v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v46 = v45 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v50 = v45 - v15;
  v16 = sub_1ABAD219C(&qword_1EB4D9A18, &unk_1ABF61940);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = v45 - v17;
  sub_1ABAB4C0C(a1, a2, a3, v55);
  v51 = v55[0];
  v52 = v55[1];
  v53 = v55[2];
  v54 = v56;
  v19 = (v10 + 32);
  v45[6] = v10 + 16;
  v45[5] = v10 + 8;
  v49 = v10;
  v45[4] = v10 + 40;
  v45[2] = a1;

  v45[1] = a3;

  for (i = v18; ; v18 = i)
  {
    sub_1ABD9EBB4(v18);
    v20 = sub_1ABAD219C(&qword_1EB4D13E8, &qword_1ABF33570);
    if (sub_1ABA7E1E0(v18, 1, v20) == 1)
    {
      sub_1ABAB4C48(v51);
    }

    v21 = *v18;
    v22 = *v19;
    (*v19)(v50, &v18[*(v20 + 48)], v9);
    v23 = *v57;
    v25 = sub_1ABAFF5B8();
    v26 = v23[2];
    v27 = (v24 & 1) == 0;
    v28 = v26 + v27;
    if (__OFADD__(v26, v27))
    {
      break;
    }

    v29 = v24;
    if (v23[3] >= v28)
    {
      if ((a4 & 1) == 0)
      {
        sub_1ABAD219C(&qword_1EB4D5590, &qword_1ABF4AB68);
        sub_1ABF24C74();
      }
    }

    else
    {
      sub_1ABC05754(v28, a4 & 1);
      v30 = sub_1ABAFF5B8();
      if ((v29 & 1) != (v31 & 1))
      {
        goto LABEL_17;
      }

      v25 = v30;
    }

    v32 = *v57;
    if (v29)
    {
      v33 = v49;
      v34 = *(v49 + 72) * v25;
      v35 = v47;
      (*(v49 + 16))(v47, v32[7] + v34, v9);
      sub_1ABAFF390(0, &qword_1EB4CE6D8, 0x1E696B058);
      v36 = v46;
      v37 = v19;
      v38 = v50;
      sub_1ABF218D4();
      v39 = *(v33 + 8);
      v39(v35, v9);
      v40 = v38;
      v19 = v37;
      v39(v40, v9);
      (*(v33 + 40))(v32[7] + v34, v36, v9);
    }

    else
    {
      v32[(v25 >> 6) + 8] |= 1 << v25;
      *(v32[6] + v25) = v21;
      v22((v32[7] + *(v49 + 72) * v25), v50, v9);
      v41 = v32[2];
      v42 = __OFADD__(v41, 1);
      v43 = v41 + 1;
      if (v42)
      {
        goto LABEL_16;
      }

      v32[2] = v43;
    }

    a4 = 1;
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  result = sub_1ABF25104();
  __break(1u);
  return result;
}

uint64_t sub_1ABDB7B1C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v57 = a5;
  v9 = sub_1ABAD219C(&qword_1EB4D1710, &qword_1ABF338A0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v47 = v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v46 = v45 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v50 = v45 - v15;
  v16 = sub_1ABAD219C(&qword_1EB4D9A28, &qword_1ABF61960);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = v45 - v17;
  sub_1ABAB4C0C(a1, a2, a3, v55);
  v51 = v55[0];
  v52 = v55[1];
  v53 = v55[2];
  v54 = v56;
  v19 = (v10 + 32);
  v45[6] = v10 + 16;
  v45[5] = v10 + 8;
  v49 = v10;
  v45[4] = v10 + 40;
  v45[2] = a1;

  v45[1] = a3;

  for (i = v18; ; v18 = i)
  {
    sub_1ABD9EEFC(v18);
    v20 = sub_1ABAD219C(&qword_1EB4D1408, &qword_1ABF33590);
    if (sub_1ABA7E1E0(v18, 1, v20) == 1)
    {
      sub_1ABAB4C48(v51);
    }

    v21 = *v18;
    v22 = *v19;
    (*v19)(v50, &v18[*(v20 + 48)], v9);
    v23 = *v57;
    v25 = sub_1ABAFF5B8();
    v26 = v23[2];
    v27 = (v24 & 1) == 0;
    v28 = v26 + v27;
    if (__OFADD__(v26, v27))
    {
      break;
    }

    v29 = v24;
    if (v23[3] >= v28)
    {
      if ((a4 & 1) == 0)
      {
        sub_1ABAD219C(&qword_1EB4D55B0, &qword_1ABF4AB98);
        sub_1ABF24C74();
      }
    }

    else
    {
      sub_1ABC05778(v28, a4 & 1);
      v30 = sub_1ABAFF5B8();
      if ((v29 & 1) != (v31 & 1))
      {
        goto LABEL_17;
      }

      v25 = v30;
    }

    v32 = *v57;
    if (v29)
    {
      v33 = v49;
      v34 = *(v49 + 72) * v25;
      v35 = v47;
      (*(v49 + 16))(v47, v32[7] + v34, v9);
      sub_1ABAFF390(0, &qword_1EB4CE6D8, 0x1E696B058);
      v36 = v46;
      v37 = v19;
      v38 = v50;
      sub_1ABF218D4();
      v39 = *(v33 + 8);
      v39(v35, v9);
      v40 = v38;
      v19 = v37;
      v39(v40, v9);
      (*(v33 + 40))(v32[7] + v34, v36, v9);
    }

    else
    {
      v32[(v25 >> 6) + 8] |= 1 << v25;
      *(v32[6] + v25) = v21;
      v22((v32[7] + *(v49 + 72) * v25), v50, v9);
      v41 = v32[2];
      v42 = __OFADD__(v41, 1);
      v43 = v41 + 1;
      if (v42)
      {
        goto LABEL_16;
      }

      v32[2] = v43;
    }

    a4 = 1;
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  result = sub_1ABF25104();
  __break(1u);
  return result;
}

uint64_t sub_1ABDB7F8C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v57 = a5;
  v9 = sub_1ABAD219C(&qword_1EB4D16F0, &qword_1ABF33880);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v47 = v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v46 = v45 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v50 = v45 - v15;
  v16 = sub_1ABAD219C(&qword_1EB4D9A30, &unk_1ABF61968);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = v45 - v17;
  sub_1ABAB4C0C(a1, a2, a3, v55);
  v51 = v55[0];
  v52 = v55[1];
  v53 = v55[2];
  v54 = v56;
  v19 = (v10 + 32);
  v45[6] = v10 + 16;
  v45[5] = v10 + 8;
  v49 = v10;
  v45[4] = v10 + 40;
  v45[2] = a1;

  v45[1] = a3;

  for (i = v18; ; v18 = i)
  {
    sub_1ABD9F244(v18);
    v20 = sub_1ABAD219C(&qword_1EB4D1458, &qword_1ABF335E0);
    if (sub_1ABA7E1E0(v18, 1, v20) == 1)
    {
      sub_1ABAB4C48(v51);
    }

    v21 = *v18;
    v22 = *v19;
    (*v19)(v50, &v18[*(v20 + 48)], v9);
    v23 = *v57;
    v25 = sub_1ABAFF5B8();
    v26 = v23[2];
    v27 = (v24 & 1) == 0;
    v28 = v26 + v27;
    if (__OFADD__(v26, v27))
    {
      break;
    }

    v29 = v24;
    if (v23[3] >= v28)
    {
      if ((a4 & 1) == 0)
      {
        sub_1ABAD219C(&qword_1EB4D5610, &qword_1ABF4AC10);
        sub_1ABF24C74();
      }
    }

    else
    {
      sub_1ABC0579C(v28, a4 & 1);
      v30 = sub_1ABAFF5B8();
      if ((v29 & 1) != (v31 & 1))
      {
        goto LABEL_17;
      }

      v25 = v30;
    }

    v32 = *v57;
    if (v29)
    {
      v33 = v49;
      v34 = *(v49 + 72) * v25;
      v35 = v47;
      (*(v49 + 16))(v47, v32[7] + v34, v9);
      sub_1ABAFF390(0, &qword_1EB4CE6B8, 0x1E696B008);
      v36 = v46;
      v37 = v19;
      v38 = v50;
      sub_1ABF218D4();
      v39 = *(v33 + 8);
      v39(v35, v9);
      v40 = v38;
      v19 = v37;
      v39(v40, v9);
      (*(v33 + 40))(v32[7] + v34, v36, v9);
    }

    else
    {
      v32[(v25 >> 6) + 8] |= 1 << v25;
      *(v32[6] + v25) = v21;
      v22((v32[7] + *(v49 + 72) * v25), v50, v9);
      v41 = v32[2];
      v42 = __OFADD__(v41, 1);
      v43 = v41 + 1;
      if (v42)
      {
        goto LABEL_16;
      }

      v32[2] = v43;
    }

    a4 = 1;
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  result = sub_1ABF25104();
  __break(1u);
  return result;
}

uint64_t sub_1ABDB83FC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v57 = a5;
  v9 = sub_1ABAD219C(&qword_1EB4D1710, &qword_1ABF338A0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v47 = v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v46 = v45 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v50 = v45 - v15;
  v16 = sub_1ABAD219C(&qword_1EB4D9A38, &qword_1ABF61978);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = v45 - v17;
  sub_1ABAB4C0C(a1, a2, a3, v55);
  v51 = v55[0];
  v52 = v55[1];
  v53 = v55[2];
  v54 = v56;
  v19 = (v10 + 32);
  v45[6] = v10 + 16;
  v45[5] = v10 + 8;
  v49 = v10;
  v45[4] = v10 + 40;
  v45[2] = a1;

  v45[1] = a3;

  for (i = v18; ; v18 = i)
  {
    sub_1ABD9F58C(v18);
    v20 = sub_1ABAD219C(&qword_1EB4D1468, &qword_1ABF335F0);
    if (sub_1ABA7E1E0(v18, 1, v20) == 1)
    {
      sub_1ABAB4C48(v51);
    }

    v21 = *v18;
    v22 = *v19;
    (*v19)(v50, &v18[*(v20 + 48)], v9);
    v23 = *v57;
    v25 = sub_1ABAFF5B8();
    v26 = v23[2];
    v27 = (v24 & 1) == 0;
    v28 = v26 + v27;
    if (__OFADD__(v26, v27))
    {
      break;
    }

    v29 = v24;
    if (v23[3] >= v28)
    {
      if ((a4 & 1) == 0)
      {
        sub_1ABAD219C(&qword_1EB4D5620, &unk_1ABF61980);
        sub_1ABF24C74();
      }
    }

    else
    {
      sub_1ABC057C0(v28, a4 & 1);
      v30 = sub_1ABAFF5B8();
      if ((v29 & 1) != (v31 & 1))
      {
        goto LABEL_17;
      }

      v25 = v30;
    }

    v32 = *v57;
    if (v29)
    {
      v33 = v49;
      v34 = *(v49 + 72) * v25;
      v35 = v47;
      (*(v49 + 16))(v47, v32[7] + v34, v9);
      sub_1ABAFF390(0, &qword_1EB4CE6D8, 0x1E696B058);
      v36 = v46;
      v37 = v19;
      v38 = v50;
      sub_1ABF218D4();
      v39 = *(v33 + 8);
      v39(v35, v9);
      v40 = v38;
      v19 = v37;
      v39(v40, v9);
      (*(v33 + 40))(v32[7] + v34, v36, v9);
    }

    else
    {
      v32[(v25 >> 6) + 8] |= 1 << v25;
      *(v32[6] + v25) = v21;
      v22((v32[7] + *(v49 + 72) * v25), v50, v9);
      v41 = v32[2];
      v42 = __OFADD__(v41, 1);
      v43 = v41 + 1;
      if (v42)
      {
        goto LABEL_16;
      }

      v32[2] = v43;
    }

    a4 = 1;
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  result = sub_1ABF25104();
  __break(1u);
  return result;
}

uint64_t sub_1ABDB886C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v57 = a5;
  v9 = sub_1ABAD219C(&qword_1EB4D16F0, &qword_1ABF33880);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v47 = v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v46 = v45 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v50 = v45 - v15;
  v16 = sub_1ABAD219C(&qword_1EB4D9A40, &qword_1ABF619A0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = v45 - v17;
  sub_1ABAB4C0C(a1, a2, a3, v55);
  v51 = v55[0];
  v52 = v55[1];
  v53 = v55[2];
  v54 = v56;
  v19 = (v10 + 32);
  v45[6] = v10 + 16;
  v45[5] = v10 + 8;
  v49 = v10;
  v45[4] = v10 + 40;
  v45[2] = a1;

  v45[1] = a3;

  for (i = v18; ; v18 = i)
  {
    sub_1ABD9F8D4(v18);
    v20 = sub_1ABAD219C(&qword_1EB4D1438, &qword_1ABF335C0);
    if (sub_1ABA7E1E0(v18, 1, v20) == 1)
    {
      sub_1ABAB4C48(v51);
    }

    v21 = *v18;
    v22 = *v19;
    (*v19)(v50, &v18[*(v20 + 48)], v9);
    v23 = *v57;
    v25 = sub_1ABAFF5B8();
    v26 = v23[2];
    v27 = (v24 & 1) == 0;
    v28 = v26 + v27;
    if (__OFADD__(v26, v27))
    {
      break;
    }

    v29 = v24;
    if (v23[3] >= v28)
    {
      if ((a4 & 1) == 0)
      {
        sub_1ABAD219C(&qword_1EB4D55F0, &qword_1ABF4ABE0);
        sub_1ABF24C74();
      }
    }

    else
    {
      sub_1ABC057E4(v28, a4 & 1);
      v30 = sub_1ABAFF5B8();
      if ((v29 & 1) != (v31 & 1))
      {
        goto LABEL_17;
      }

      v25 = v30;
    }

    v32 = *v57;
    if (v29)
    {
      v33 = v49;
      v34 = *(v49 + 72) * v25;
      v35 = v47;
      (*(v49 + 16))(v47, v32[7] + v34, v9);
      sub_1ABAFF390(0, &qword_1EB4CE6B8, 0x1E696B008);
      v36 = v46;
      v37 = v19;
      v38 = v50;
      sub_1ABF218D4();
      v39 = *(v33 + 8);
      v39(v35, v9);
      v40 = v38;
      v19 = v37;
      v39(v40, v9);
      (*(v33 + 40))(v32[7] + v34, v36, v9);
    }

    else
    {
      v32[(v25 >> 6) + 8] |= 1 << v25;
      *(v32[6] + v25) = v21;
      v22((v32[7] + *(v49 + 72) * v25), v50, v9);
      v41 = v32[2];
      v42 = __OFADD__(v41, 1);
      v43 = v41 + 1;
      if (v42)
      {
        goto LABEL_16;
      }

      v32[2] = v43;
    }

    a4 = 1;
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  result = sub_1ABF25104();
  __break(1u);
  return result;
}

uint64_t sub_1ABDB8CDC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v57 = a5;
  v9 = sub_1ABAD219C(&qword_1EB4D1710, &qword_1ABF338A0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v47 = v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v46 = v45 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v50 = v45 - v15;
  v16 = sub_1ABAD219C(&qword_1EB4D99C0, &qword_1ABF61840);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = v45 - v17;
  sub_1ABAB4C0C(a1, a2, a3, v55);
  v51 = v55[0];
  v52 = v55[1];
  v53 = v55[2];
  v54 = v56;
  v19 = (v10 + 32);
  v45[6] = v10 + 16;
  v45[5] = v10 + 8;
  v49 = v10;
  v45[4] = v10 + 40;
  v45[2] = a1;

  v45[1] = a3;

  for (i = v18; ; v18 = i)
  {
    sub_1ABD9FC1C(v18);
    v20 = sub_1ABAD219C(&qword_1EB4D1448, &qword_1ABF335D0);
    if (sub_1ABA7E1E0(v18, 1, v20) == 1)
    {
      sub_1ABAB4C48(v51);
    }

    v21 = *v18;
    v22 = *v19;
    (*v19)(v50, &v18[*(v20 + 48)], v9);
    v23 = *v57;
    v25 = sub_1ABAFF5B8();
    v26 = v23[2];
    v27 = (v24 & 1) == 0;
    v28 = v26 + v27;
    if (__OFADD__(v26, v27))
    {
      break;
    }

    v29 = v24;
    if (v23[3] >= v28)
    {
      if ((a4 & 1) == 0)
      {
        sub_1ABAD219C(&qword_1EB4D5600, &qword_1ABF4ABF8);
        sub_1ABF24C74();
      }
    }

    else
    {
      sub_1ABC05808(v28, a4 & 1);
      v30 = sub_1ABAFF5B8();
      if ((v29 & 1) != (v31 & 1))
      {
        goto LABEL_17;
      }

      v25 = v30;
    }

    v32 = *v57;
    if (v29)
    {
      v33 = v49;
      v34 = *(v49 + 72) * v25;
      v35 = v47;
      (*(v49 + 16))(v47, v32[7] + v34, v9);
      sub_1ABAFF390(0, &qword_1EB4CE6D8, 0x1E696B058);
      v36 = v46;
      v37 = v19;
      v38 = v50;
      sub_1ABF218D4();
      v39 = *(v33 + 8);
      v39(v35, v9);
      v40 = v38;
      v19 = v37;
      v39(v40, v9);
      (*(v33 + 40))(v32[7] + v34, v36, v9);
    }

    else
    {
      v32[(v25 >> 6) + 8] |= 1 << v25;
      *(v32[6] + v25) = v21;
      v22((v32[7] + *(v49 + 72) * v25), v50, v9);
      v41 = v32[2];
      v42 = __OFADD__(v41, 1);
      v43 = v41 + 1;
      if (v42)
      {
        goto LABEL_16;
      }

      v32[2] = v43;
    }

    a4 = 1;
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  result = sub_1ABF25104();
  __break(1u);
  return result;
}

uint64_t sub_1ABDB914C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v37 = a5;
  sub_1ABAB4C0C(a1, a2, a3, v36);
  v5 = v36[1];
  v6 = v36[3];
  v7 = v36[4];
  v30 = v36[5];
  v31 = v36[0];
  v8 = (v36[2] + 64) >> 6;

  for (i = v6; ; v6 = i)
  {
    v10 = v7;
    if (!v7)
    {
      break;
    }

LABEL_7:
    v12 = __clz(__rbit64(v10)) | (i << 6);
    v13 = *(*(v31 + 48) + v12);
    v14 = *(*(v31 + 56) + 8 * v12);
    v33[0] = v13;
    v34 = v14;
    v30(v35, v33);
    v15 = v35[0];
    if (LOBYTE(v35[0]) == 4)
    {
LABEL_20:
      sub_1ABAB4C48(v31);
    }

    v16 = v35[1];
    v17 = *v37;
    v19 = sub_1ABAFF5B8();
    v20 = v17[2];
    v21 = (v18 & 1) == 0;
    if (__OFADD__(v20, v21))
    {
      goto LABEL_22;
    }

    v22 = v18;
    if (v17[3] >= v20 + v21)
    {
      if ((a4 & 1) == 0)
      {
        sub_1ABAD219C(&qword_1EB4D5630, &qword_1ABF4AC28);
        sub_1ABF24C74();
      }
    }

    else
    {
      sub_1ABC05874();
      v23 = sub_1ABAFF5B8();
      if ((v22 & 1) != (v24 & 1))
      {
        goto LABEL_25;
      }

      v19 = v23;
    }

    v25 = *v37;
    if (v22)
    {
      v26 = (v25[7] + 8 * v19);
      v27 = *v26 + v16;
      if (__OFADD__(*v26, v16))
      {
        goto LABEL_23;
      }
    }

    else
    {
      v25[(v19 >> 6) + 8] |= 1 << v19;
      *(v25[6] + v19) = v15;
      *(v25[7] + 8 * v19) = v16;
      v28 = v25[2];
      v26 = v25 + 2;
      v27 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        goto LABEL_24;
      }
    }

    v7 = (v10 - 1) & v10;
    *v26 = v27;
    a4 = 1;
  }

  v11 = v6;
  while (1)
  {
    i = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (i >= v8)
    {
      goto LABEL_20;
    }

    v10 = *(v5 + 8 * i);
    ++v11;
    if (v10)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  result = sub_1ABF25104();
  __break(1u);
  return result;
}

uint64_t sub_1ABDB93BC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  sub_1ABAB4C0C(a1, a2, a3, v37);
  v5 = v37[1];
  v6 = v37[3];
  v7 = v37[4];
  v30 = v37[5];
  v31 = v37[0];
  v8 = (v37[2] + 64) >> 6;

  while (1)
  {
    v9 = v7;
    v10 = v6;
    if (!v7)
    {
      break;
    }

LABEL_7:
    v12 = __clz(__rbit64(v9)) | (v10 << 6);
    v13 = *(*(v31 + 56) + 8 * v12);
    v34[0] = *(*(v31 + 48) + v12);
    v35 = v13;
    v30(v36, v34);
    v14 = v36[0];
    if (LOBYTE(v36[0]) == 7)
    {
LABEL_19:
      sub_1ABAB4C48(v31);
    }

    v15 = *&v36[1];
    v16 = *a5;
    v18 = sub_1ABAFF5B8();
    v19 = v16[2];
    v20 = (v17 & 1) == 0;
    v21 = v19 + v20;
    if (__OFADD__(v19, v20))
    {
      goto LABEL_21;
    }

    v22 = v17;
    if (v16[3] >= v21)
    {
      if ((a4 & 1) == 0)
      {
        sub_1ABAD219C(&qword_1EB4D5678, &qword_1ABF4AC70);
        sub_1ABF24C74();
      }
    }

    else
    {
      sub_1ABC059F0(v21, a4 & 1);
      v23 = sub_1ABAFF5B8();
      if ((v22 & 1) != (v24 & 1))
      {
        goto LABEL_23;
      }

      v18 = v23;
    }

    v7 = (v9 - 1) & v9;
    v25 = *a5;
    if (v22)
    {
      *(v25[7] + 8 * v18) = v15 + *(v25[7] + 8 * v18);
    }

    else
    {
      v25[(v18 >> 6) + 8] |= 1 << v18;
      *(v25[6] + v18) = v14;
      *(v25[7] + 8 * v18) = v15;
      v26 = v25[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        goto LABEL_22;
      }

      v25[2] = v28;
    }

    a4 = 1;
    v6 = v10;
  }

  v11 = v6;
  while (1)
  {
    v10 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v10 >= v8)
    {
      goto LABEL_19;
    }

    v9 = *(v5 + 8 * v10);
    ++v11;
    if (v9)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = sub_1ABF25104();
  __break(1u);
  return result;
}

uint64_t sub_1ABDB962C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  sub_1ABAB4C0C(a1, a2, a3, v37);
  v5 = v37[1];
  v6 = v37[3];
  v7 = v37[4];
  v30 = v37[5];
  v31 = v37[0];
  v8 = (v37[2] + 64) >> 6;

  while (1)
  {
    v9 = v7;
    v10 = v6;
    if (!v7)
    {
      break;
    }

LABEL_7:
    v12 = __clz(__rbit64(v9)) | (v10 << 6);
    v13 = *(*(v31 + 56) + 8 * v12);
    v34[0] = *(*(v31 + 48) + v12);
    v35 = v13;
    v30(v36, v34);
    v14 = v36[0];
    if (LOBYTE(v36[0]) == 9)
    {
LABEL_19:
      sub_1ABAB4C48(v31);
    }

    v15 = *&v36[1];
    v16 = *a5;
    v18 = sub_1ABAFF5B8();
    v19 = v16[2];
    v20 = (v17 & 1) == 0;
    v21 = v19 + v20;
    if (__OFADD__(v19, v20))
    {
      goto LABEL_21;
    }

    v22 = v17;
    if (v16[3] >= v21)
    {
      if ((a4 & 1) == 0)
      {
        sub_1ABAD219C(&qword_1EB4D5698, &qword_1ABF4AC90);
        sub_1ABF24C74();
      }
    }

    else
    {
      sub_1ABC05A04(v21, a4 & 1);
      v23 = sub_1ABAFF5B8();
      if ((v22 & 1) != (v24 & 1))
      {
        goto LABEL_23;
      }

      v18 = v23;
    }

    v7 = (v9 - 1) & v9;
    v25 = *a5;
    if (v22)
    {
      *(v25[7] + 8 * v18) = v15 + *(v25[7] + 8 * v18);
    }

    else
    {
      v25[(v18 >> 6) + 8] |= 1 << v18;
      *(v25[6] + v18) = v14;
      *(v25[7] + 8 * v18) = v15;
      v26 = v25[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        goto LABEL_22;
      }

      v25[2] = v28;
    }

    a4 = 1;
    v6 = v10;
  }

  v11 = v6;
  while (1)
  {
    v10 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v10 >= v8)
    {
      goto LABEL_19;
    }

    v9 = *(v5 + 8 * v10);
    ++v11;
    if (v9)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = sub_1ABF25104();
  __break(1u);
  return result;
}

uint64_t sub_1ABDB989C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  sub_1ABAB4C0C(a1, a2, a3, v37);
  v5 = v37[1];
  v6 = v37[3];
  v7 = v37[4];
  v30 = v37[5];
  v31 = v37[0];
  v8 = (v37[2] + 64) >> 6;

  while (1)
  {
    v9 = v7;
    v10 = v6;
    if (!v7)
    {
      break;
    }

LABEL_7:
    v12 = __clz(__rbit64(v9)) | (v10 << 6);
    v13 = *(*(v31 + 56) + 8 * v12);
    v34[0] = *(*(v31 + 48) + v12);
    v35 = v13;
    v30(v36, v34);
    v14 = v36[0];
    if (LOBYTE(v36[0]) == 4)
    {
LABEL_19:
      sub_1ABAB4C48(v31);
    }

    v15 = *&v36[1];
    v16 = *a5;
    v18 = sub_1ABAFF5B8();
    v19 = v16[2];
    v20 = (v17 & 1) == 0;
    v21 = v19 + v20;
    if (__OFADD__(v19, v20))
    {
      goto LABEL_21;
    }

    v22 = v17;
    if (v16[3] >= v21)
    {
      if ((a4 & 1) == 0)
      {
        sub_1ABAD219C(&qword_1EB4D5688, &unk_1ABF4AC80);
        sub_1ABF24C74();
      }
    }

    else
    {
      sub_1ABC05A18(v21, a4 & 1);
      v23 = sub_1ABAFF5B8();
      if ((v22 & 1) != (v24 & 1))
      {
        goto LABEL_23;
      }

      v18 = v23;
    }

    v7 = (v9 - 1) & v9;
    v25 = *a5;
    if (v22)
    {
      *(v25[7] + 8 * v18) = v15 + *(v25[7] + 8 * v18);
    }

    else
    {
      v25[(v18 >> 6) + 8] |= 1 << v18;
      *(v25[6] + v18) = v14;
      *(v25[7] + 8 * v18) = v15;
      v26 = v25[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        goto LABEL_22;
      }

      v25[2] = v28;
    }

    a4 = 1;
    v6 = v10;
  }

  v11 = v6;
  while (1)
  {
    v10 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v10 >= v8)
    {
      goto LABEL_19;
    }

    v9 = *(v5 + 8 * v10);
    ++v11;
    if (v9)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = sub_1ABF25104();
  __break(1u);
  return result;
}

uint64_t sub_1ABDB9B0C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v57 = a5;
  v9 = sub_1ABAD219C(&qword_1EB4D16F0, &qword_1ABF33880);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v47 = v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v46 = v45 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v50 = v45 - v15;
  v16 = sub_1ABAD219C(&qword_1EB4D99F0, &unk_1ABF618D0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = v45 - v17;
  sub_1ABAB4C0C(a1, a2, a3, v55);
  v51 = v55[0];
  v52 = v55[1];
  v53 = v55[2];
  v54 = v56;
  v19 = (v10 + 32);
  v45[6] = v10 + 16;
  v45[5] = v10 + 8;
  v49 = v10;
  v45[4] = v10 + 40;
  v45[2] = a1;

  v45[1] = a3;

  for (i = v18; ; v18 = i)
  {
    sub_1ABD9FF64(v18);
    v20 = sub_1ABAD219C(&qword_1EB4D13C8, &qword_1ABF33550);
    if (sub_1ABA7E1E0(v18, 1, v20) == 1)
    {
      sub_1ABAB4C48(v51);
    }

    v21 = *v18;
    v22 = *v19;
    (*v19)(v50, &v18[*(v20 + 48)], v9);
    v23 = *v57;
    v25 = sub_1ABAFF5B8();
    v26 = v23[2];
    v27 = (v24 & 1) == 0;
    v28 = v26 + v27;
    if (__OFADD__(v26, v27))
    {
      break;
    }

    v29 = v24;
    if (v23[3] >= v28)
    {
      if ((a4 & 1) == 0)
      {
        sub_1ABAD219C(&qword_1EB4D5570, &qword_1ABF4AB40);
        sub_1ABF24C74();
      }
    }

    else
    {
      sub_1ABC05A2C(v28, a4 & 1);
      v30 = sub_1ABAFF5B8();
      if ((v29 & 1) != (v31 & 1))
      {
        goto LABEL_17;
      }

      v25 = v30;
    }

    v32 = *v57;
    if (v29)
    {
      v33 = v49;
      v34 = *(v49 + 72) * v25;
      v35 = v47;
      (*(v49 + 16))(v47, v32[7] + v34, v9);
      sub_1ABAFF390(0, &qword_1EB4CE6B8, 0x1E696B008);
      v36 = v46;
      v37 = v19;
      v38 = v50;
      sub_1ABF218D4();
      v39 = *(v33 + 8);
      v39(v35, v9);
      v40 = v38;
      v19 = v37;
      v39(v40, v9);
      (*(v33 + 40))(v32[7] + v34, v36, v9);
    }

    else
    {
      v32[(v25 >> 6) + 8] |= 1 << v25;
      *(v32[6] + v25) = v21;
      v22((v32[7] + *(v49 + 72) * v25), v50, v9);
      v41 = v32[2];
      v42 = __OFADD__(v41, 1);
      v43 = v41 + 1;
      if (v42)
      {
        goto LABEL_16;
      }

      v32[2] = v43;
    }

    a4 = 1;
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  result = sub_1ABF25104();
  __break(1u);
  return result;
}

uint64_t sub_1ABDB9F7C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  sub_1ABAB4C0C(a1, a2, a3, v37);
  v5 = v37[1];
  v6 = v37[3];
  v7 = v37[4];
  v30 = v37[5];
  v31 = v37[0];
  v8 = (v37[2] + 64) >> 6;

  while (1)
  {
    v9 = v7;
    v10 = v6;
    if (!v7)
    {
      break;
    }

LABEL_7:
    v12 = __clz(__rbit64(v9)) | (v10 << 6);
    v13 = *(*(v31 + 56) + 8 * v12);
    v34[0] = *(*(v31 + 48) + v12);
    v35 = v13;
    v30(v36, v34);
    v14 = v36[0];
    if (LOBYTE(v36[0]) == 5)
    {
LABEL_19:
      sub_1ABAB4C48(v31);
    }

    v15 = *&v36[1];
    v16 = *a5;
    v18 = sub_1ABAFF5B8();
    v19 = v16[2];
    v20 = (v17 & 1) == 0;
    v21 = v19 + v20;
    if (__OFADD__(v19, v20))
    {
      goto LABEL_21;
    }

    v22 = v17;
    if (v16[3] >= v21)
    {
      if ((a4 & 1) == 0)
      {
        sub_1ABAD219C(&qword_1EB4D5668, &qword_1ABF4AC60);
        sub_1ABF24C74();
      }
    }

    else
    {
      sub_1ABC05CFC(v21, a4 & 1);
      v23 = sub_1ABAFF5B8();
      if ((v22 & 1) != (v24 & 1))
      {
        goto LABEL_23;
      }

      v18 = v23;
    }

    v7 = (v9 - 1) & v9;
    v25 = *a5;
    if (v22)
    {
      *(v25[7] + 8 * v18) = v15 + *(v25[7] + 8 * v18);
    }

    else
    {
      v25[(v18 >> 6) + 8] |= 1 << v18;
      *(v25[6] + v18) = v14;
      *(v25[7] + 8 * v18) = v15;
      v26 = v25[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        goto LABEL_22;
      }

      v25[2] = v28;
    }

    a4 = 1;
    v6 = v10;
  }

  v11 = v6;
  while (1)
  {
    v10 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v10 >= v8)
    {
      goto LABEL_19;
    }

    v9 = *(v5 + 8 * v10);
    ++v11;
    if (v9)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = sub_1ABF25104();
  __break(1u);
  return result;
}

uint64_t sub_1ABDBA1EC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  sub_1ABAB4C0C(a1, a2, a3, v37);
  v5 = v37[1];
  v6 = v37[3];
  v7 = v37[4];
  v30 = v37[5];
  v31 = v37[0];
  v8 = (v37[2] + 64) >> 6;

  while (1)
  {
    v9 = v7;
    v10 = v6;
    if (!v7)
    {
      break;
    }

LABEL_7:
    v12 = __clz(__rbit64(v9)) | (v10 << 6);
    v13 = *(*(v31 + 56) + 8 * v12);
    v34[0] = *(*(v31 + 48) + v12);
    v35 = v13;
    v30(v36, v34);
    v14 = v36[0];
    if (LOBYTE(v36[0]) == 8)
    {
LABEL_19:
      sub_1ABAB4C48(v31);
    }

    v15 = *&v36[1];
    v16 = *a5;
    v18 = sub_1ABAFF5B8();
    v19 = v16[2];
    v20 = (v17 & 1) == 0;
    v21 = v19 + v20;
    if (__OFADD__(v19, v20))
    {
      goto LABEL_21;
    }

    v22 = v17;
    if (v16[3] >= v21)
    {
      if ((a4 & 1) == 0)
      {
        sub_1ABAD219C(&qword_1EB4D5658, &unk_1ABF4AC50);
        sub_1ABF24C74();
      }
    }

    else
    {
      sub_1ABC05D10(v21, a4 & 1);
      v23 = sub_1ABAFF5B8();
      if ((v22 & 1) != (v24 & 1))
      {
        goto LABEL_23;
      }

      v18 = v23;
    }

    v7 = (v9 - 1) & v9;
    v25 = *a5;
    if (v22)
    {
      *(v25[7] + 8 * v18) = v15 + *(v25[7] + 8 * v18);
    }

    else
    {
      v25[(v18 >> 6) + 8] |= 1 << v18;
      *(v25[6] + v18) = v14;
      *(v25[7] + 8 * v18) = v15;
      v26 = v25[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        goto LABEL_22;
      }

      v25[2] = v28;
    }

    a4 = 1;
    v6 = v10;
  }

  v11 = v6;
  while (1)
  {
    v10 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v10 >= v8)
    {
      goto LABEL_19;
    }

    v9 = *(v5 + 8 * v10);
    ++v11;
    if (v9)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = sub_1ABF25104();
  __break(1u);
  return result;
}

uint64_t sub_1ABDBA45C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  sub_1ABAB4C0C(a1, a2, a3, v37);
  v5 = v37[1];
  v6 = v37[3];
  v7 = v37[4];
  v30 = v37[5];
  v31 = v37[0];
  v8 = (v37[2] + 64) >> 6;

  while (1)
  {
    v9 = v7;
    v10 = v6;
    if (!v7)
    {
      break;
    }

LABEL_7:
    v12 = __clz(__rbit64(v9)) | (v10 << 6);
    v13 = *(*(v31 + 56) + 8 * v12);
    v34[0] = *(*(v31 + 48) + v12);
    v35 = v13;
    v30(v36, v34);
    v14 = v36[0];
    if (LOBYTE(v36[0]) == 4)
    {
LABEL_19:
      sub_1ABAB4C48(v31);
    }

    v15 = *&v36[1];
    v16 = *a5;
    v18 = sub_1ABAFF5B8();
    v19 = v16[2];
    v20 = (v17 & 1) == 0;
    v21 = v19 + v20;
    if (__OFADD__(v19, v20))
    {
      goto LABEL_21;
    }

    v22 = v17;
    if (v16[3] >= v21)
    {
      if ((a4 & 1) == 0)
      {
        sub_1ABAD219C(&qword_1EB4D5648, &qword_1ABF4AC40);
        sub_1ABF24C74();
      }
    }

    else
    {
      sub_1ABC05D24(v21, a4 & 1);
      v23 = sub_1ABAFF5B8();
      if ((v22 & 1) != (v24 & 1))
      {
        goto LABEL_23;
      }

      v18 = v23;
    }

    v7 = (v9 - 1) & v9;
    v25 = *a5;
    if (v22)
    {
      *(v25[7] + 8 * v18) = v15 + *(v25[7] + 8 * v18);
    }

    else
    {
      v25[(v18 >> 6) + 8] |= 1 << v18;
      *(v25[6] + v18) = v14;
      *(v25[7] + 8 * v18) = v15;
      v26 = v25[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        goto LABEL_22;
      }

      v25[2] = v28;
    }

    a4 = 1;
    v6 = v10;
  }

  v11 = v6;
  while (1)
  {
    v10 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v10 >= v8)
    {
      goto LABEL_19;
    }

    v9 = *(v5 + 8 * v10);
    ++v11;
    if (v9)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = sub_1ABF25104();
  __break(1u);
  return result;
}

uint64_t sub_1ABDBA6CC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v79 = a5;
  v71 = sub_1ABAD219C(&qword_1EB4D1710, &qword_1ABF338A0);
  v9 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v67 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v66 = &v59 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v72 = &v59 - v14;
  v15 = sub_1ABAD219C(&qword_1EB4D99D0, &qword_1ABF61860);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = (&v59 - v16);
  sub_1ABAB4C0C(a1, a2, a3, v77);
  v73 = v77[0];
  v74 = v77[1];
  v75 = v77[2];
  v76 = v78;
  v18 = (v9 + 32);
  v65 = v9 + 16;
  v64 = v9 + 8;
  v70 = v9;
  v63 = v9 + 40;
  v61 = a1;

  v60 = a3;

  for (i = v17; ; v17 = i)
  {
    sub_1ABDA02AC(v17);
    v19 = sub_1ABAD219C(&qword_1EB4D1D60, &qword_1ABF34628);
    if (sub_1ABA7E1E0(v17, 1, v19) == 1)
    {
      sub_1ABAB4C48(v73);
    }

    v20 = *v17;
    v21 = v17[1];
    v22 = *v18;
    (*v18)(v72, v17 + *(v19 + 48), v71);
    v23 = *v79;
    v31 = sub_1ABA94FC8(v20, v21, v24, v25, v26, v27, v28, v29, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68);
    v32 = v23[2];
    v33 = (v30 & 1) == 0;
    v34 = v32 + v33;
    if (__OFADD__(v32, v33))
    {
      break;
    }

    v35 = v30;
    if (v23[3] >= v34)
    {
      if ((a4 & 1) == 0)
      {
        sub_1ABAD219C(&qword_1EB4D99D8, &unk_1ABF61868);
        sub_1ABF24C74();
      }
    }

    else
    {
      sub_1ABC05ED0(v34, a4 & 1);
      v42 = sub_1ABA94FC8(v20, v21, v36, v37, v38, v39, v40, v41, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68);
      if ((v35 & 1) != (v43 & 1))
      {
        goto LABEL_17;
      }

      v31 = v42;
    }

    v44 = *v79;
    if (v35)
    {
      v45 = v44[7];
      v47 = v70;
      v46 = v71;
      v68 = *(v70 + 72) * v31;
      v48 = v67;
      (*(v70 + 16))(v67, v45 + v68, v71);
      sub_1ABAFF390(0, &qword_1EB4CE6D8, 0x1E696B058);
      v49 = v66;
      v50 = v18;
      v51 = v72;
      sub_1ABF218D4();
      v52 = *(v47 + 8);
      v52(v48, v46);
      v53 = v51;
      v18 = v50;
      v52(v53, v46);

      (*(v47 + 40))(v44[7] + v68, v49, v46);
    }

    else
    {
      v44[(v31 >> 6) + 8] |= 1 << v31;
      v54 = (v44[6] + 16 * v31);
      *v54 = v20;
      v54[1] = v21;
      v22((v44[7] + *(v70 + 72) * v31), v72, v71);
      v55 = v44[2];
      v56 = __OFADD__(v55, 1);
      v57 = v55 + 1;
      if (v56)
      {
        goto LABEL_16;
      }

      v44[2] = v57;
    }

    a4 = 1;
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  result = sub_1ABF25104();
  __break(1u);
  return result;
}

uint64_t sub_1ABDBAB64(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = sub_1ABAD219C(&qword_1EB4D37E0, &unk_1ABF61830);
  MEMORY[0x1EEE9AC00](v10);
  v141 = &v119 - v11;
  v174 = sub_1ABAD219C(&qword_1EB4D1710, &qword_1ABF338A0);
  v12 = *(v174 - 8);
  MEMORY[0x1EEE9AC00](v174);
  v140 = &v119 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v154 = &v119 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v152 = &v119 - v17;
  v18 = sub_1ABAD219C(&qword_1EB4D37D8, &unk_1ABF3D840);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v151 = &v119 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v145 = &v119 - v21;
  v22 = sub_1ABAD219C(&qword_1EB4D99C0, &qword_1ABF61840);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v150 = &v119 - v23;
  sub_1ABAB4C0C(a1, a2, a3, v162);
  v24 = v162[0];
  v25 = v164;
  v26 = v165;
  v132 = v166;
  v120 = v163;
  v27 = (v163 + 64) >> 6;
  v133 = v167;
  v148 = v12 + 16;
  v157 = (v12 + 32);
  v139 = v12 + 8;
  v153 = v12;
  v138 = v12 + 40;
  v122 = a1;
  v28 = v162[1];

  v121 = a3;
  v29 = a5;

  v30 = v26;
  v149 = v10;
  v131 = v27;
  v126 = a5;
  v125 = v24;
  v124 = v28;
LABEL_2:
  if (v30)
  {
    v31 = v29;
    v32 = v10;
    v33 = v25;
    goto LABEL_9;
  }

  v34 = v25;
  while (1)
  {
    v33 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    if (v33 >= v27)
    {
      break;
    }

    v30 = *(v28 + 8 * v33);
    ++v34;
    if (v30)
    {
      v31 = v29;
      v32 = v10;
LABEL_9:
      v35 = v30;
      v134 = v33;
      v36 = __clz(__rbit64(v30)) | (v33 << 6);
      v37 = (*(v24 + 48) + 16 * v36);
      v38 = v37[1];
      v39 = *(*(v24 + 56) + 8 * v36);
      v161[0] = *v37;
      v161[1] = v38;
      v161[2] = v39;

      v132(&v158, v161);

      v40 = v158;
      v136 = v160;
      v29 = v31;
      v41 = *v31;
      v135 = v159;
      v55 = sub_1ABA94FC8(v158, v159, v42, v43, v44, v45, v46, v47, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128);
      v56 = *(v41 + 16);
      v57 = (v48 & 1) == 0;
      v58 = v56 + v57;
      if (!__OFADD__(v56, v57))
      {
        v59 = v48;
        if (*(v41 + 24) >= v58)
        {
          if ((a4 & 1) == 0)
          {
            v116 = v29;
            v117 = v55;
            sub_1ABAD219C(&qword_1EB4D99C8, &qword_1ABF61848);
            sub_1ABF24C74();
            v55 = v117;
            v29 = v116;
          }
        }

        else
        {
          sub_1ABC05EF4(v58, a4 & 1, v49, v50, v51, v52, v53, v54, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142);
          v66 = sub_1ABA94FC8(v40, v135, v60, v61, v62, v63, v64, v65, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128);
          if ((v59 & 1) != (v67 & 1))
          {
            goto LABEL_48;
          }

          v55 = v66;
        }

        v30 = (v35 - 1) & v35;
        v68 = *v29;
        v10 = v32;
        if (v59)
        {
          v130 = v30;
          v128 = v68;
          v69 = v68[7];
          v129 = v55;
          v70 = *(v69 + 8 * v55);

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v161[0] = v70;
          sub_1ABAB4C0C(v136, sub_1ABDBCED8, 0, v168);
          v143 = v173;
          v144 = v168[0];
          v137 = v168[1];
          v72 = v170;
          v73 = v171;
          v142 = v172;
          v127 = v169;
          v74 = (v169 + 64) >> 6;

          while (1)
          {
            v75 = v73;
            v76 = v72;
            v156 = isUniquelyReferenced_nonNull_native;
            v147 = v72;
            v146 = v73;
            if (v73)
            {
LABEL_22:
              v155 = (v75 - 1) & v75;
              v78 = __clz(__rbit64(v75)) | (v76 << 6);
              v79 = *(*(v144 + 48) + v78);
              v80 = v153;
              v81 = v152;
              v82 = v174;
              (*(v153 + 16))(v152, *(v144 + 56) + *(v153 + 72) * v78, v174);
              v83 = *(v10 + 48);
              v84 = v10;
              v85 = v145;
              *v145 = v79;
              (*(v80 + 32))(v85 + v83, v81, v82);
              v86 = 0;
              v77 = v76;
              goto LABEL_23;
            }

            v77 = v72;
            while (1)
            {
              v76 = v77 + 1;
              if (__OFADD__(v77, 1))
              {
                __break(1u);
LABEL_43:
                __break(1u);
                goto LABEL_44;
              }

              if (v76 >= v74)
              {
                break;
              }

              v75 = *(v137 + 8 * v76);
              ++v77;
              if (v75)
              {
                goto LABEL_22;
              }
            }

            v155 = 0;
            v86 = 1;
            v84 = v10;
            v85 = v145;
LABEL_23:
            v87 = 1;
            sub_1ABA7B9B4(v85, v86, 1, v84);
            v88 = v151;
            sub_1ABBD898C(v85, v151, &qword_1EB4D37D8, &unk_1ABF3D840);
            if (sub_1ABA7E1E0(v88, 1, v84) != 1)
            {
              v89 = v141;
              sub_1ABBD898C(v151, v141, &qword_1EB4D37E0, &unk_1ABF61830);
              v142(v89);
              v84 = v149;
              sub_1ABAB480C(v89, &qword_1EB4D37E0, &unk_1ABF61830);
              v87 = 0;
            }

            v90 = sub_1ABAD219C(&qword_1EB4D1448, &qword_1ABF335D0);
            v91 = v150;
            sub_1ABA7B9B4(v150, v87, 1, v90);
            v92 = sub_1ABAD219C(&qword_1EB4D1448, &qword_1ABF335D0);
            if (sub_1ABA7E1E0(v91, 1, v92) == 1)
            {
              sub_1ABAB4C48(v144);

              *(v128[7] + 8 * v129) = v70;

              a4 = 1;
              v25 = v134;
              v29 = v126;
              v24 = v125;
              v28 = v124;
              v27 = v131;
              v30 = v130;
              v10 = v84;
              goto LABEL_2;
            }

            v93 = *v91;
            v94 = *v157;
            (*v157)(v154, &v91[*(v92 + 48)], v174);
            v96 = sub_1ABAFF5B8();
            v97 = v70[2];
            v98 = (v95 & 1) == 0;
            v99 = v97 + v98;
            if (__OFADD__(v97, v98))
            {
              goto LABEL_43;
            }

            v100 = v95;
            if (v70[3] < v99)
            {
              sub_1ABC05808(v99, v156 & 1);
              v101 = sub_1ABAFF5B8();
              if ((v100 & 1) == (v102 & 1))
              {
                v96 = v101;
                goto LABEL_32;
              }

              while (1)
              {
LABEL_48:
                sub_1ABF25104();
                __break(1u);
              }
            }

            if ((v156 & 1) == 0)
            {
              sub_1ABAD219C(&qword_1EB4D5600, &qword_1ABF4ABF8);
              sub_1ABF24C74();
            }

LABEL_32:
            v70 = v161[0];
            if (v100)
            {
              v103 = v153;
              v104 = *(v153 + 72) * v96;
              v105 = v140;
              v106 = v174;
              (*(v153 + 16))(v140, *(v161[0] + 56) + v104, v174);
              sub_1ABAFF390(0, &qword_1EB4CE6D8, 0x1E696B058);
              v107 = v154;
              sub_1ABF218D4();
              v108 = *(v103 + 8);
              v108(v105, v106);
              v108(v107, v106);
              (*(v103 + 40))(v70[7] + v104, v152, v106);
              goto LABEL_36;
            }

            *(v161[0] + 8 * (v96 >> 6) + 64) |= 1 << v96;
            *(v70[6] + v96) = v93;
            v94((v70[7] + *(v153 + 72) * v96), v154, v174);
            v109 = v70[2];
            v110 = __OFADD__(v109, 1);
            v111 = v109 + 1;
            if (v110)
            {
              goto LABEL_45;
            }

            v70[2] = v111;
LABEL_36:
            isUniquelyReferenced_nonNull_native = 1;
            v72 = v77;
            v73 = v155;
            v10 = v149;
          }
        }

        v68[(v55 >> 6) + 8] |= 1 << v55;
        v112 = (v68[6] + 16 * v55);
        v113 = v135;
        *v112 = v40;
        v112[1] = v113;
        *(v68[7] + 8 * v55) = v136;
        v114 = v68[2];
        v110 = __OFADD__(v114, 1);
        v115 = v114 + 1;
        if (!v110)
        {
          v68[2] = v115;
          a4 = 1;
          v25 = v134;
          v27 = v131;
          goto LABEL_2;
        }

LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

LABEL_46:
      __break(1u);
      goto LABEL_47;
    }
  }

  sub_1ABAB4C48(v24);
}

uint64_t sub_1ABDBB6A4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = sub_1ABAD219C(&qword_1EB4D37D0, &qword_1ABF3D838);
  MEMORY[0x1EEE9AC00](v10);
  v141 = &v119 - v11;
  v174 = sub_1ABAD219C(&qword_1EB4D1710, &qword_1ABF338A0);
  v12 = *(v174 - 8);
  MEMORY[0x1EEE9AC00](v174);
  v140 = &v119 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v154 = &v119 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v152 = &v119 - v17;
  v18 = sub_1ABAD219C(&qword_1EB4D37C8, &qword_1ABF3D830);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v151 = &v119 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v145 = &v119 - v21;
  v22 = sub_1ABAD219C(&qword_1EB4D9988, &qword_1ABF617D8);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v150 = &v119 - v23;
  sub_1ABAB4C0C(a1, a2, a3, v162);
  v24 = v162[0];
  v25 = v164;
  v26 = v165;
  v132 = v166;
  v120 = v163;
  v27 = (v163 + 64) >> 6;
  v133 = v167;
  v148 = v12 + 16;
  v157 = (v12 + 32);
  v139 = v12 + 8;
  v153 = v12;
  v138 = v12 + 40;
  v122 = a1;
  v28 = v162[1];

  v121 = a3;
  v29 = a5;

  v30 = v26;
  v149 = v10;
  v131 = v27;
  v126 = a5;
  v125 = v24;
  v124 = v28;
LABEL_2:
  if (v30)
  {
    v31 = v29;
    v32 = v10;
    v33 = v25;
    goto LABEL_9;
  }

  v34 = v25;
  while (1)
  {
    v33 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    if (v33 >= v27)
    {
      break;
    }

    v30 = *(v28 + 8 * v33);
    ++v34;
    if (v30)
    {
      v31 = v29;
      v32 = v10;
LABEL_9:
      v35 = v30;
      v134 = v33;
      v36 = __clz(__rbit64(v30)) | (v33 << 6);
      v37 = (*(v24 + 48) + 16 * v36);
      v38 = v37[1];
      v39 = *(*(v24 + 56) + 8 * v36);
      v161[0] = *v37;
      v161[1] = v38;
      v161[2] = v39;

      v132(&v158, v161);

      v40 = v158;
      v136 = v160;
      v29 = v31;
      v41 = *v31;
      v135 = v159;
      v55 = sub_1ABA94FC8(v158, v159, v42, v43, v44, v45, v46, v47, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128);
      v56 = *(v41 + 16);
      v57 = (v48 & 1) == 0;
      v58 = v56 + v57;
      if (!__OFADD__(v56, v57))
      {
        v59 = v48;
        if (*(v41 + 24) >= v58)
        {
          if ((a4 & 1) == 0)
          {
            v116 = v29;
            v117 = v55;
            sub_1ABAD219C(&qword_1EB4D99B8, &qword_1ABF61828);
            sub_1ABF24C74();
            v55 = v117;
            v29 = v116;
          }
        }

        else
        {
          sub_1ABC05F08(v58, a4 & 1, v49, v50, v51, v52, v53, v54, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142);
          v66 = sub_1ABA94FC8(v40, v135, v60, v61, v62, v63, v64, v65, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128);
          if ((v59 & 1) != (v67 & 1))
          {
            goto LABEL_48;
          }

          v55 = v66;
        }

        v30 = (v35 - 1) & v35;
        v68 = *v29;
        v10 = v32;
        if (v59)
        {
          v130 = v30;
          v128 = v68;
          v69 = v68[7];
          v129 = v55;
          v70 = *(v69 + 8 * v55);

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v161[0] = v70;
          sub_1ABAB4C0C(v136, sub_1ABDBCFD8, 0, v168);
          v143 = v173;
          v144 = v168[0];
          v137 = v168[1];
          v72 = v170;
          v73 = v171;
          v142 = v172;
          v127 = v169;
          v74 = (v169 + 64) >> 6;

          while (1)
          {
            v75 = v73;
            v76 = v72;
            v156 = isUniquelyReferenced_nonNull_native;
            v147 = v72;
            v146 = v73;
            if (v73)
            {
LABEL_22:
              v155 = (v75 - 1) & v75;
              v78 = __clz(__rbit64(v75)) | (v76 << 6);
              v79 = *(*(v144 + 48) + v78);
              v80 = v153;
              v81 = v152;
              v82 = v174;
              (*(v153 + 16))(v152, *(v144 + 56) + *(v153 + 72) * v78, v174);
              v83 = *(v10 + 48);
              v84 = v10;
              v85 = v145;
              *v145 = v79;
              (*(v80 + 32))(v85 + v83, v81, v82);
              v86 = 0;
              v77 = v76;
              goto LABEL_23;
            }

            v77 = v72;
            while (1)
            {
              v76 = v77 + 1;
              if (__OFADD__(v77, 1))
              {
                __break(1u);
LABEL_43:
                __break(1u);
                goto LABEL_44;
              }

              if (v76 >= v74)
              {
                break;
              }

              v75 = *(v137 + 8 * v76);
              ++v77;
              if (v75)
              {
                goto LABEL_22;
              }
            }

            v155 = 0;
            v86 = 1;
            v84 = v10;
            v85 = v145;
LABEL_23:
            v87 = 1;
            sub_1ABA7B9B4(v85, v86, 1, v84);
            v88 = v151;
            sub_1ABBD898C(v85, v151, &qword_1EB4D37C8, &qword_1ABF3D830);
            if (sub_1ABA7E1E0(v88, 1, v84) != 1)
            {
              v89 = v141;
              sub_1ABBD898C(v151, v141, &qword_1EB4D37D0, &qword_1ABF3D838);
              v142(v89);
              v84 = v149;
              sub_1ABAB480C(v89, &qword_1EB4D37D0, &qword_1ABF3D838);
              v87 = 0;
            }

            v90 = sub_1ABAD219C(&qword_1EB4D1428, &qword_1ABF335B0);
            v91 = v150;
            sub_1ABA7B9B4(v150, v87, 1, v90);
            v92 = sub_1ABAD219C(&qword_1EB4D1428, &qword_1ABF335B0);
            if (sub_1ABA7E1E0(v91, 1, v92) == 1)
            {
              sub_1ABAB4C48(v144);

              *(v128[7] + 8 * v129) = v70;

              a4 = 1;
              v25 = v134;
              v29 = v126;
              v24 = v125;
              v28 = v124;
              v27 = v131;
              v30 = v130;
              v10 = v84;
              goto LABEL_2;
            }

            v93 = *v91;
            v94 = *v157;
            (*v157)(v154, &v91[*(v92 + 48)], v174);
            v96 = sub_1ABAFF5B8();
            v97 = v70[2];
            v98 = (v95 & 1) == 0;
            v99 = v97 + v98;
            if (__OFADD__(v97, v98))
            {
              goto LABEL_43;
            }

            v100 = v95;
            if (v70[3] < v99)
            {
              sub_1ABC05850(v99, v156 & 1);
              v101 = sub_1ABAFF5B8();
              if ((v100 & 1) == (v102 & 1))
              {
                v96 = v101;
                goto LABEL_32;
              }

              while (1)
              {
LABEL_48:
                sub_1ABF25104();
                __break(1u);
              }
            }

            if ((v156 & 1) == 0)
            {
              sub_1ABAD219C(&qword_1EB4D55E0, &qword_1ABF617F0);
              sub_1ABF24C74();
            }

LABEL_32:
            v70 = v161[0];
            if (v100)
            {
              v103 = v153;
              v104 = *(v153 + 72) * v96;
              v105 = v140;
              v106 = v174;
              (*(v153 + 16))(v140, *(v161[0] + 56) + v104, v174);
              sub_1ABAFF390(0, &qword_1EB4CE6D8, 0x1E696B058);
              v107 = v154;
              sub_1ABF218D4();
              v108 = *(v103 + 8);
              v108(v105, v106);
              v108(v107, v106);
              (*(v103 + 40))(v70[7] + v104, v152, v106);
              goto LABEL_36;
            }

            *(v161[0] + 8 * (v96 >> 6) + 64) |= 1 << v96;
            *(v70[6] + v96) = v93;
            v94((v70[7] + *(v153 + 72) * v96), v154, v174);
            v109 = v70[2];
            v110 = __OFADD__(v109, 1);
            v111 = v109 + 1;
            if (v110)
            {
              goto LABEL_45;
            }

            v70[2] = v111;
LABEL_36:
            isUniquelyReferenced_nonNull_native = 1;
            v72 = v77;
            v73 = v155;
            v10 = v149;
          }
        }

        v68[(v55 >> 6) + 8] |= 1 << v55;
        v112 = (v68[6] + 16 * v55);
        v113 = v135;
        *v112 = v40;
        v112[1] = v113;
        *(v68[7] + 8 * v55) = v136;
        v114 = v68[2];
        v110 = __OFADD__(v114, 1);
        v115 = v114 + 1;
        if (!v110)
        {
          v68[2] = v115;
          a4 = 1;
          v25 = v134;
          v27 = v131;
          goto LABEL_2;
        }

LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

LABEL_46:
      __break(1u);
      goto LABEL_47;
    }
  }

  sub_1ABAB4C48(v24);
}

uint64_t sub_1ABDBC1E4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v79 = a5;
  v71 = sub_1ABAD219C(&qword_1EB4D16F0, &qword_1ABF33880);
  v9 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v67 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v66 = &v59 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v72 = &v59 - v14;
  v15 = sub_1ABAD219C(&qword_1EB4D99A8, &qword_1ABF61810);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = (&v59 - v16);
  sub_1ABAB4C0C(a1, a2, a3, v77);
  v73 = v77[0];
  v74 = v77[1];
  v75 = v77[2];
  v76 = v78;
  v18 = (v9 + 32);
  v65 = v9 + 16;
  v64 = v9 + 8;
  v70 = v9;
  v63 = v9 + 40;
  v61 = a1;

  v60 = a3;

  for (i = v17; ; v17 = i)
  {
    sub_1ABDA060C(v17);
    v19 = sub_1ABAD219C(&qword_1EB4D1D58, &qword_1ABF34620);
    if (sub_1ABA7E1E0(v17, 1, v19) == 1)
    {
      sub_1ABAB4C48(v73);
    }

    v20 = *v17;
    v21 = v17[1];
    v22 = *v18;
    (*v18)(v72, v17 + *(v19 + 48), v71);
    v23 = *v79;
    v31 = sub_1ABA94FC8(v20, v21, v24, v25, v26, v27, v28, v29, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68);
    v32 = v23[2];
    v33 = (v30 & 1) == 0;
    v34 = v32 + v33;
    if (__OFADD__(v32, v33))
    {
      break;
    }

    v35 = v30;
    if (v23[3] >= v34)
    {
      if ((a4 & 1) == 0)
      {
        sub_1ABAD219C(&qword_1EB4D99B0, &unk_1ABF61818);
        sub_1ABF24C74();
      }
    }

    else
    {
      sub_1ABC05F1C(v34, a4 & 1);
      v42 = sub_1ABA94FC8(v20, v21, v36, v37, v38, v39, v40, v41, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68);
      if ((v35 & 1) != (v43 & 1))
      {
        goto LABEL_17;
      }

      v31 = v42;
    }

    v44 = *v79;
    if (v35)
    {
      v45 = v44[7];
      v47 = v70;
      v46 = v71;
      v68 = *(v70 + 72) * v31;
      v48 = v67;
      (*(v70 + 16))(v67, v45 + v68, v71);
      sub_1ABAFF390(0, &qword_1EB4CE6B8, 0x1E696B008);
      v49 = v66;
      v50 = v18;
      v51 = v72;
      sub_1ABF218D4();
      v52 = *(v47 + 8);
      v52(v48, v46);
      v53 = v51;
      v18 = v50;
      v52(v53, v46);

      (*(v47 + 40))(v44[7] + v68, v49, v46);
    }

    else
    {
      v44[(v31 >> 6) + 8] |= 1 << v31;
      v54 = (v44[6] + 16 * v31);
      *v54 = v20;
      v54[1] = v21;
      v22((v44[7] + *(v70 + 72) * v31), v72, v71);
      v55 = v44[2];
      v56 = __OFADD__(v55, 1);
      v57 = v55 + 1;
      if (v56)
      {
        goto LABEL_16;
      }

      v44[2] = v57;
    }

    a4 = 1;
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  result = sub_1ABF25104();
  __break(1u);
  return result;
}

uint64_t sub_1ABDBC67C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v39 = a5;
  sub_1ABAB4C0C(a1, a2, a3, v38);
  v6 = v38[1];
  v7 = v38[3];
  v8 = v38[4];
  v33 = v38[5];
  v34 = v38[0];
  v9 = (v38[2] + 64) >> 6;

  if (v8)
  {
    while (1)
    {
      v35 = a4;
      v10 = v7;
LABEL_8:
      v12 = (v10 << 9) | (8 * __clz(__rbit64(v8)));
      v13 = *(*(v34 + 48) + v12);
      v14 = *(*(v34 + 56) + v12);
      v37[0] = v13;
      v37[1] = v14;
      v15 = v13;
      v33(v36, v37);

      v17 = v36[0];
      v16 = v36[1];
      v18 = *v39;
      sub_1ABAF89FC();
      v21 = v20;
      v22 = v18[2];
      v23 = (v19 & 1) == 0;
      if (__OFADD__(v22, v23))
      {
        break;
      }

      v24 = v19;
      if (v18[3] >= v22 + v23)
      {
        if ((v35 & 1) == 0)
        {
          sub_1ABAD219C(&qword_1EB4D99A0, &qword_1ABF617F8);
          sub_1ABF24C74();
        }
      }

      else
      {
        sub_1ABC06200();
        sub_1ABAF89FC();
        if ((v24 & 1) != (v26 & 1))
        {
          goto LABEL_26;
        }

        v21 = v25;
      }

      v8 &= v8 - 1;
      v27 = *v39;
      if (v24)
      {
        v28 = *(v27[7] + 8 * v21);

        if (__OFADD__(v28, v16))
        {
          goto LABEL_24;
        }

        *(v27[7] + 8 * v21) = v28 + v16;
      }

      else
      {
        v27[(v21 >> 6) + 8] |= 1 << v21;
        *(v27[6] + 8 * v21) = v17;
        *(v27[7] + 8 * v21) = v16;
        v29 = v27[2];
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          goto LABEL_25;
        }

        v27[2] = v31;
      }

      a4 = 1;
      v7 = v10;
      if (!v8)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v11 = v7;
    while (1)
    {
      v10 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v10 >= v9)
      {
        sub_1ABAB4C48(v34);
      }

      v8 = *(v6 + 8 * v10);
      ++v11;
      if (v8)
      {
        v35 = a4;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  sub_1ABAFF390(0, &qword_1EB4D1F98, 0x1E6985C40);
  result = sub_1ABF25104();
  __break(1u);
  return result;
}

id sub_1ABDBC910(_OWORD *a1, _OWORD *a2, void *a3)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  a1[2] = a2[2];
  sub_1ABAFF334(a2, v6);

  return a3;
}

uint64_t sub_1ABDBC964(double *a1, uint64_t a2, double a3)
{
  *a1 = a3;

  return a2;
}

uint64_t sub_1ABDBC99C(uint64_t a1, uint64_t a2, double a3, uint64_t a4, uint64_t a5, char a6)
{
  *a1 = a3;
  *(a1 + 8) = a5;
  *(a1 + 16) = a6 & 1;

  return a2;
}

uint64_t sub_1ABDBC9EC(_BYTE *a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  *a1 = a3;
  sub_1ABAD219C(a5, a6);
  sub_1ABA7BBB0();
  v10 = *(v9 + 16);

  return v10(a2, a4, v8);
}

uint64_t sub_1ABDBCA58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  sub_1ABAD219C(a5, a6);
  sub_1ABA7BBB0();
  (*(v8 + 16))(a1, a4);

  return sub_1ABA7ECFC();
}

uint64_t sub_1ABDBCAD8@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(sub_1ABAD219C(&qword_1EB4D3748, &unk_1ABF3D7B0) + 48);
  v5 = sub_1ABAD219C(&qword_1EB4D13B8, &qword_1ABF33540);
  return sub_1ABDBC9EC(a2, &a2[*(v5 + 48)], *a1, &a1[v4], &qword_1EB4D16F0, &qword_1ABF33880);
}

uint64_t sub_1ABDBCB58@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(sub_1ABAD219C(&qword_1EB4D3758, &unk_1ABF3D7C0) + 48);
  v5 = sub_1ABAD219C(&qword_1EB4D13D8, &qword_1ABF33560);
  return sub_1ABDBC9EC(a2, &a2[*(v5 + 48)], *a1, &a1[v4], &qword_1EB4D16F0, &qword_1ABF33880);
}

uint64_t sub_1ABDBCBD8@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(sub_1ABAD219C(&qword_1EB4D99E8, &qword_1ABF61888) + 48);
  v5 = sub_1ABAD219C(&qword_1EB4D13F8, &qword_1ABF33580);
  return sub_1ABDBC9EC(a2, &a2[*(v5 + 48)], *a1, &a1[v4], &qword_1EB4D1710, &qword_1ABF338A0);
}

uint64_t sub_1ABDBCC58@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(sub_1ABAD219C(&qword_1EB4D99E0, &unk_1ABF61878) + 48);
  v5 = sub_1ABAD219C(&qword_1EB4D13E8, &qword_1ABF33570);
  return sub_1ABDBC9EC(a2, &a2[*(v5 + 48)], *a1, &a1[v4], &qword_1EB4D1710, &qword_1ABF338A0);
}

uint64_t sub_1ABDBCCD8@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(sub_1ABAD219C(&qword_1EB4D3768, &qword_1ABF3D7D8) + 48);
  v5 = sub_1ABAD219C(&qword_1EB4D1408, &qword_1ABF33590);
  return sub_1ABDBC9EC(a2, &a2[*(v5 + 48)], *a1, &a1[v4], &qword_1EB4D1710, &qword_1ABF338A0);
}

uint64_t sub_1ABDBCD58@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(sub_1ABAD219C(&qword_1EB4D37B0, &qword_1ABF3D818) + 48);
  v5 = sub_1ABAD219C(&qword_1EB4D1458, &qword_1ABF335E0);
  return sub_1ABDBC9EC(a2, &a2[*(v5 + 48)], *a1, &a1[v4], &qword_1EB4D16F0, &qword_1ABF33880);
}

uint64_t sub_1ABDBCDD8@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(sub_1ABAD219C(&qword_1EB4D37F0, &unk_1ABF61890) + 48);
  v5 = sub_1ABAD219C(&qword_1EB4D1468, &qword_1ABF335F0);
  return sub_1ABDBC9EC(a2, &a2[*(v5 + 48)], *a1, &a1[v4], &qword_1EB4D1710, &qword_1ABF338A0);
}

uint64_t sub_1ABDBCE58@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(sub_1ABAD219C(&qword_1EB4D37C0, &unk_1ABF61990) + 48);
  v5 = sub_1ABAD219C(&qword_1EB4D1438, &qword_1ABF335C0);
  return sub_1ABDBC9EC(a2, &a2[*(v5 + 48)], *a1, &a1[v4], &qword_1EB4D16F0, &qword_1ABF33880);
}

uint64_t sub_1ABDBCED8@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(sub_1ABAD219C(&qword_1EB4D37E0, &unk_1ABF61830) + 48);
  v5 = sub_1ABAD219C(&qword_1EB4D1448, &qword_1ABF335D0);
  return sub_1ABDBC9EC(a2, &a2[*(v5 + 48)], *a1, &a1[v4], &qword_1EB4D1710, &qword_1ABF338A0);
}

uint64_t sub_1ABDBCF58@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(sub_1ABAD219C(&qword_1EB4D37A0, &unk_1ABF617C0) + 48);
  v5 = sub_1ABAD219C(&qword_1EB4D1418, &qword_1ABF335A0);
  return sub_1ABDBC9EC(a2, &a2[*(v5 + 48)], *a1, &a1[v4], &qword_1EB4D16F0, &qword_1ABF33880);
}

uint64_t sub_1ABDBCFD8@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(sub_1ABAD219C(&qword_1EB4D37D0, &qword_1ABF3D838) + 48);
  v5 = sub_1ABAD219C(&qword_1EB4D1428, &qword_1ABF335B0);
  return sub_1ABDBC9EC(a2, &a2[*(v5 + 48)], *a1, &a1[v4], &qword_1EB4D1710, &qword_1ABF338A0);
}

uint64_t sub_1ABDBD058@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(sub_1ABAD219C(&qword_1EB4D3730, &qword_1ABF3D7A0) + 48);
  v5 = sub_1ABAD219C(&qword_1EB4D13C8, &qword_1ABF33550);
  return sub_1ABDBC9EC(a2, &a2[*(v5 + 48)], *a1, &a1[v4], &qword_1EB4D16F0, &qword_1ABF33880);
}

uint64_t sub_1ABDBD0D8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(sub_1ABAD219C(&qword_1EB4D3790, &unk_1ABF61850) + 48);
  v5 = sub_1ABAD219C(&qword_1EB4D1D60, &qword_1ABF34628);
  result = sub_1ABDBCA58(a2 + *(v5 + 48), *a1, a1[1], a1 + v4, &qword_1EB4D1710, &qword_1ABF338A0);
  *a2 = result;
  a2[1] = v7;
  return result;
}

uint64_t sub_1ABDBD158@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(sub_1ABAD219C(&qword_1EB4D3780, &unk_1ABF61800) + 48);
  v5 = sub_1ABAD219C(&qword_1EB4D1D58, &qword_1ABF34620);
  result = sub_1ABDBCA58(a2 + *(v5 + 48), *a1, a1[1], a1 + v4, &qword_1EB4D16F0, &qword_1ABF33880);
  *a2 = result;
  a2[1] = v7;
  return result;
}

unint64_t sub_1ABDBD1D8()
{
  result = qword_1EB4D9888;
  if (!qword_1EB4D9888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9888);
  }

  return result;
}

unint64_t sub_1ABDBD22C()
{
  result = qword_1EB4D9898;
  if (!qword_1EB4D9898)
  {
    sub_1ABAE2850(&qword_1EB4D9890, &qword_1ABF613F8);
    sub_1ABDB4E74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9898);
  }

  return result;
}

unint64_t sub_1ABDBD2B8()
{
  result = qword_1EB4D98A8;
  if (!qword_1EB4D98A8)
  {
    sub_1ABAE2850(&qword_1EB4D98A0, &qword_1ABF61400);
    sub_1ABDB4CB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D98A8);
  }

  return result;
}

unint64_t sub_1ABDBD344()
{
  result = qword_1EB4D98B8;
  if (!qword_1EB4D98B8)
  {
    sub_1ABAE2850(&qword_1EB4D98B0, &qword_1ABF61408);
    sub_1ABDB5038();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D98B8);
  }

  return result;
}

unint64_t sub_1ABDBD3D0()
{
  result = qword_1EB4D98C8;
  if (!qword_1EB4D98C8)
  {
    sub_1ABAE2850(&qword_1EB4D98C0, &qword_1ABF61410);
    sub_1ABDB53E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D98C8);
  }

  return result;
}

unint64_t sub_1ABDBD45C()
{
  result = qword_1EB4D98D8;
  if (!qword_1EB4D98D8)
  {
    sub_1ABAE2850(&qword_1EB4D98D0, &qword_1ABF61418);
    sub_1ABDB54EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D98D8);
  }

  return result;
}

unint64_t sub_1ABDBD4E8()
{
  result = qword_1EB4D98E8;
  if (!qword_1EB4D98E8)
  {
    sub_1ABAE2850(&qword_1EB4D98E0, &qword_1ABF61420);
    sub_1ABDB55F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D98E8);
  }

  return result;
}

unint64_t sub_1ABDBD574()
{
  result = qword_1EB4D98F8;
  if (!qword_1EB4D98F8)
  {
    sub_1ABAE2850(&qword_1EB4D98F0, &qword_1ABF61428);
    sub_1ABDBD5F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D98F8);
  }

  return result;
}

unint64_t sub_1ABDBD5F8()
{
  result = qword_1EB4D9900;
  if (!qword_1EB4D9900)
  {
    sub_1ABAE2850(&qword_1EB4D9908, &qword_1ABF61430);
    sub_1ABDB6664(&unk_1EB4D9780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9900);
  }

  return result;
}

void sub_1ABDBD6C8(uint64_t a1)
{
  sub_1ABDBEB2C(319, &qword_1EB4CF770, &qword_1EB4CE6D8, 0x1E696B058);
  if (v1 <= 0x3F)
  {
    sub_1ABDBEB2C(319, &qword_1EB4CF768, &qword_1EB4CE6B8, 0x1E696B008);
    if (v2 <= 0x3F)
    {
      sub_1ABDBEB2C(319, &qword_1EB4CF780, &qword_1EB4CE6F0, 0x1E696B078);
      if (v3 <= 0x3F)
      {
        sub_1ABDBEB2C(319, &qword_1EB4CF778, &qword_1EB4CE6E0, 0x1E696B030);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1ABDBEB2C(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    sub_1ABAFF390(255, a3, a4);
    v5 = sub_1ABF21904();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1ABDBEB8C(uint64_t a1)
{
  sub_1ABDBEB2C(319, &qword_1EB4CF770, &qword_1EB4CE6D8, 0x1E696B058);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t getEnumTagSinglePayload for KTSDataAggregateRepresentation.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE6)
  {
    if (a2 + 26 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 26) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 27;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1B;
  v5 = v6 - 27;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for KTSDataAggregateRepresentation.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 26 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 26) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE5)
  {
    v6 = ((a2 - 230) >> 8) + 1;
    *result = a2 + 26;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 26;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for KTSDataRepresentation.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE0)
  {
    if (a2 + 32 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 32) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 33;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x21;
  v5 = v6 - 33;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for KTSDataRepresentation.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 32 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 32) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xDF)
  {
    v6 = ((a2 - 224) >> 8) + 1;
    *result = a2 + 32;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 32;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1ABDBF0E8()
{
  result = qword_1EB4D9910;
  if (!qword_1EB4D9910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9910);
  }

  return result;
}

unint64_t sub_1ABDBF140()
{
  result = qword_1EB4D9918;
  if (!qword_1EB4D9918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9918);
  }

  return result;
}

unint64_t sub_1ABDBF198()
{
  result = qword_1EB4D9920;
  if (!qword_1EB4D9920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9920);
  }

  return result;
}

unint64_t sub_1ABDBF1F0()
{
  result = qword_1EB4D9928;
  if (!qword_1EB4D9928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9928);
  }

  return result;
}

unint64_t sub_1ABDBF248()
{
  result = qword_1EB4D9930;
  if (!qword_1EB4D9930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9930);
  }

  return result;
}

unint64_t sub_1ABDBF2A0()
{
  result = qword_1EB4D9938;
  if (!qword_1EB4D9938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9938);
  }

  return result;
}

unint64_t sub_1ABDBF2F4()
{
  result = qword_1EB4D9948;
  if (!qword_1EB4D9948)
  {
    sub_1ABAE2850(&qword_1EB4D9890, &qword_1ABF613F8);
    sub_1ABDB5BF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9948);
  }

  return result;
}

unint64_t sub_1ABDBF380()
{
  result = qword_1EB4D9950;
  if (!qword_1EB4D9950)
  {
    sub_1ABAE2850(&qword_1EB4D98A0, &qword_1ABF61400);
    sub_1ABDB5A2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9950);
  }

  return result;
}

unint64_t sub_1ABDBF40C()
{
  result = qword_1EB4D9958;
  if (!qword_1EB4D9958)
  {
    sub_1ABAE2850(&qword_1EB4D98B0, &qword_1ABF61408);
    sub_1ABDB5DB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9958);
  }

  return result;
}

unint64_t sub_1ABDBF498()
{
  result = qword_1EB4D9960;
  if (!qword_1EB4D9960)
  {
    sub_1ABAE2850(&qword_1EB4D98C0, &qword_1ABF61410);
    sub_1ABDB615C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9960);
  }

  return result;
}

unint64_t sub_1ABDBF524()
{
  result = qword_1EB4D9968;
  if (!qword_1EB4D9968)
  {
    sub_1ABAE2850(&qword_1EB4D98D0, &qword_1ABF61418);
    sub_1ABDB6268();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9968);
  }

  return result;
}

unint64_t sub_1ABDBF5B0()
{
  result = qword_1EB4D9970;
  if (!qword_1EB4D9970)
  {
    sub_1ABAE2850(&qword_1EB4D98E0, &qword_1ABF61420);
    sub_1ABDB6374();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9970);
  }

  return result;
}

unint64_t sub_1ABDBF63C()
{
  result = qword_1EB4D9978;
  if (!qword_1EB4D9978)
  {
    sub_1ABAE2850(&qword_1EB4D9908, &qword_1ABF61430);
    sub_1ABDB6664(&unk_1EB4D9878);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9978);
  }

  return result;
}

uint64_t sub_1ABDBF6E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1ABDBC9E0(a2, *a1, *(a1 + 8));
  *(a2 + 8) = result;
  return result;
}

unint64_t sub_1ABDBF718()
{
  result = qword_1EB4D9BE0;
  if (!qword_1EB4D9BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9BE0);
  }

  return result;
}

uint64_t sub_1ABDBF7DC@<X0>(void *a1@<X0>, uint64_t (*a2)(uint64_t *, void, void, void)@<X1>, uint64_t *a3@<X8>)
{
  result = a2(&v7, *a1, a1[1], a1[2]);
  v5 = v7;
  *a3 = result;
  a3[1] = v6;
  a3[2] = v5;
  return result;
}

unint64_t sub_1ABDBF828()
{
  result = qword_1EB4D9998;
  if (!qword_1EB4D9998)
  {
    sub_1ABAFF390(255, &qword_1EB4D1F98, 0x1E6985C40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9998);
  }

  return result;
}

id sub_1ABDBF890@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_1ABDBCAD0(&v5, *a1, *(a1 + 8));
  v4 = v5;
  *a2 = result;
  a2[1] = v4;
  return result;
}

void sub_1ABDBF9C0()
{

  JUMPOUT(0x1AC5A9410);
}

uint64_t sub_1ABDBF9E4()
{
}

uint64_t sub_1ABDBF9FC()
{
}

uint64_t sub_1ABDBFA18()
{
}

uint64_t sub_1ABDBFA34(uint64_t a1, uint64_t a2)
{

  return sub_1ABF24DF4();
}

uint64_t sub_1ABDBFA58()
{
}

uint64_t sub_1ABDBFA70()
{
}

uint64_t sub_1ABDBFA9C()
{
}

void sub_1ABDBFAB4()
{

  JUMPOUT(0x1AC5A9410);
}

uint64_t sub_1ABDBFBE4()
{

  return sub_1ABF24AB4();
}

uint64_t sub_1ABDBFC04()
{
}

id sub_1ABDBFC1C()
{

  return [v1 (v0 + 489)];
}

void SpeedBucket.description.getter()
{
  switch(*v0)
  {
    case 2:
    case 3:
    case 6:
      sub_1ABA7F0D0();
      break;
    default:
      return;
  }
}

uint64_t static SpeedBucket.fromSpeed(speed:)@<X0>(char *a1@<X8>)
{
  sub_1ABAD219C(&qword_1EB4D1680, &qword_1ABF33810);
  sub_1ABA93788();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA8C2F0();
  MEMORY[0x1EEE9AC00](v5);
  v6 = [objc_opt_self() milesPerHour];
  sub_1ABF218F4();

  v7 = sub_1ABAA6190();
  sub_1ABAFF390(0, &qword_1EB4CE6F0, 0x1E696B078);
  sub_1ABF218B4();
  v8 = sub_1ABA8F840();
  v9 = *(v3 + 8);
  v10 = sub_1ABA7C5A4();
  v9(v10);
  if (v8)
  {
    v11 = sub_1ABA7BE8C();
    result = (v9)(v11);
    v13 = 1;
  }

  else
  {
    v14 = sub_1ABAA6190();
    sub_1ABA842DC(v14);
    v15 = sub_1ABA8F840();
    v16 = sub_1ABA7C5A4();
    v9(v16);
    if (v15)
    {
      v17 = sub_1ABA7BE8C();
      result = (v9)(v17);
      v13 = 2;
    }

    else
    {
      v18 = sub_1ABAA6190();
      sub_1ABA842DC(v18);
      v19 = sub_1ABA8F840();
      v20 = sub_1ABA7C5A4();
      v9(v20);
      if (v19)
      {
        v21 = sub_1ABA7BE8C();
        result = (v9)(v21);
        v13 = 3;
      }

      else
      {
        v22 = sub_1ABAA6190();
        sub_1ABA842DC(v22);
        v23 = sub_1ABA8F840();
        v24 = sub_1ABA7C5A4();
        v9(v24);
        if (v23)
        {
          v25 = sub_1ABA7BE8C();
          result = (v9)(v25);
          v13 = 4;
        }

        else
        {
          v26 = sub_1ABAA6190();
          sub_1ABA842DC(v26);
          v27 = sub_1ABA8F840();
          v28 = sub_1ABA7C5A4();
          v9(v28);
          if (v27)
          {
            v29 = sub_1ABA7BE8C();
            result = (v9)(v29);
            v13 = 5;
          }

          else
          {
            v30 = sub_1ABAA6190();
            sub_1ABA842DC(v30);
            v31 = sub_1ABA8F840();
            v32 = sub_1ABA7C5A4();
            v9(v32);
            if (v31)
            {
              v33 = sub_1ABA7BE8C();
              result = (v9)(v33);
              v13 = 6;
            }

            else
            {
              v34 = sub_1ABAA6190();
              sub_1ABA842DC(v34);
              v35 = sub_1ABA8F840();
              v36 = sub_1ABA7C5A4();
              v9(v36);
              v37 = sub_1ABA7BE8C();
              result = (v9)(v37);
              if (v35)
              {
                v13 = 7;
              }

              else
              {
                v13 = 8;
              }
            }
          }
        }
      }
    }
  }

  *a1 = v13;
  return result;
}

void RelativeFlowSpeedBucket.description.getter()
{
  switch(*v0)
  {
    case 2:
      sub_1ABA94C20();
      break;
    case 4:
      sub_1ABA7F0D0();
      break;
    default:
      return;
  }
}

uint64_t static RelativeFlowSpeedBucket.fromSpeedAndLimit(speed:limit:)@<X0>(uint64_t a1@<X1>, char *a2@<X8>)
{
  v32 = a1;
  v34 = a2;
  sub_1ABAD219C(&qword_1EB4D1680, &qword_1ABF33810);
  sub_1ABA93788();
  v33 = v3;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  MEMORY[0x1EEE9AC00](v8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v31 - v10;
  v12 = objc_opt_self();
  v13 = [v12 milesPerHour];
  sub_1ABF218F4();

  v14 = [v12 milesPerHour];
  sub_1ABF218F4();

  sub_1ABAFF390(0, &qword_1EB4CE6F0, 0x1E696B078);
  sub_1ABA7F6C0();
  v15 = v33;
  sub_1ABA99600([v12 milesPerHour]);
  LOBYTE(v14) = sub_1ABA80F30();
  v16 = *(v15 + 1);
  v16(v6, v2);
  v17 = sub_1ABA83AF0();
  (v16)(v17);
  if (v14)
  {
    v18 = sub_1ABA7C5A4();
    (v16)(v18);
    v19 = sub_1ABA8CD18();
    result = (v16)(v19);
    v21 = 1;
  }

  else
  {
    sub_1ABA7F6C0();
    sub_1ABA99600([v12 milesPerHour]);
    v32 = sub_1ABDC0FBC(&qword_1EB4D9A48, &qword_1EB4D1680, &qword_1ABF33810);
    v33 = v11;
    sub_1ABF23B64();
    v22 = sub_1ABA7DCCC();
    (v16)(v22);
    v23 = sub_1ABA83AF0();
    (v16)(v23);
    sub_1ABA7F6C0();
    sub_1ABA99600([v12 milesPerHour]);
    sub_1ABA81A74();
    v24 = sub_1ABA7DCCC();
    (v16)(v24);
    v25 = sub_1ABA83AF0();
    (v16)(v25);
    sub_1ABA7F6C0();
    sub_1ABA99600([v12 milesPerHour]);
    sub_1ABA81A74();
    v26 = sub_1ABA7DCCC();
    (v16)(v26);
    v27 = sub_1ABA83AF0();
    (v16)(v27);
    sub_1ABA7F6C0();
    sub_1ABA99600([v12 milesPerHour]);
    sub_1ABA81A74();
    v28 = sub_1ABA7DCCC();
    (v16)(v28);
    v29 = sub_1ABA83AF0();
    (v16)(v29);
    v30 = sub_1ABA7C5A4();
    (v16)(v30);
    result = (v16)(v33, v2);
    v21 = 6;
  }

  *v34 = v21;
  return result;
}

uint64_t static TrafficBucket.fromTrafficColor(colorInt:)@<X0>(unsigned int a1@<W0>, char *a2@<X8>)
{
  v4 = sub_1ABF239C4();
  v5 = v4;
  v6 = v4 + 64;
  v7 = 1 << *(v4 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v4 + 64);
  if (v9)
  {
    v10 = 0;
    v11 = __clz(__rbit64(v9));
    v12 = (v9 - 1) & v9;
    v13 = (v7 + 63) >> 6;
LABEL_9:
    v16 = (*(v4 + 48) + 16 * v11);
    v18 = *v16;
    v17 = v16[1];
    v19 = *(*(v4 + 56) + 4 * v11);

LABEL_10:
    v21 = v19 - a1;
    v22 = v19 < a1;
    while (v12)
    {
LABEL_16:
      v24 = __clz(__rbit64(v12)) | (v10 << 6);
      v19 = *(*(v5 + 56) + 4 * v24);
      if (v19 < a1)
      {
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
        return result;
      }

      if (v22)
      {
        goto LABEL_46;
      }

      v12 &= v12 - 1;
      if (v19 - a1 < v21)
      {
        v25 = (*(v5 + 48) + 16 * v24);
        v32 = a2;
        v18 = *v25;
        v26 = v25[1];

        v17 = v26;
        a2 = v32;
        goto LABEL_10;
      }
    }

    while (1)
    {
      v23 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
        goto LABEL_45;
      }

      if (v23 >= v13)
      {
        break;
      }

      v12 = *(v6 + 8 * v23);
      ++v10;
      if (v12)
      {
        v10 = v23;
        goto LABEL_16;
      }
    }

    v27 = v18 == 0x776F6C6C6579 && v17 == 0xE600000000000000;
    if (v27 || (result = sub_1ABA9A600(0x776F6C6C6579, 0xE600000000000000), (result & 1) != 0))
    {

      v28 = 2;
      goto LABEL_35;
    }

    if (v17)
    {
      v29 = v18 == 6579570 && v17 == 0xE300000000000000;
      if (v29 || (sub_1ABA9A600(6579570, 0xE300000000000000) & 1) != 0)
      {

        v28 = 1;
      }

      else if (v18 == 1702194274 && v17 == 0xE400000000000000)
      {

        v28 = 3;
      }

      else
      {
        v31 = sub_1ABA9A600(1702194274, 0xE400000000000000);

        if (v31)
        {
          v28 = 3;
        }

        else
        {
          v28 = 0;
        }
      }

      goto LABEL_35;
    }
  }

  else
  {
    v14 = 0;
    v13 = (v7 + 63) >> 6;
    while (1)
    {
      v10 = v9 + 1;
      if (v9 + 1 >= v13)
      {
        break;
      }

      v15 = *(v4 + 8 * v9 + 72);
      v14 += 64;
      ++v9;
      if (v15)
      {
        v12 = (v15 - 1) & v15;
        v11 = __clz(__rbit64(v15)) + v14;
        goto LABEL_9;
      }
    }
  }

  v28 = 0;
LABEL_35:
  *a2 = v28;
  return result;
}

uint64_t TrafficBucket.description.getter()
{
  result = 0x65747365676E6F63;
  switch(*v0)
  {
    case 1:
      return result;
    case 2:
      result = 2003790963;
      break;
    case 3:
      result = 0x7261656C63;
      break;
    default:
      result = 0x6E776F6E6B6E75;
      break;
  }

  return result;
}

unint64_t DistanceBucket.description.getter()
{
  result = 0x6E6168547373656CLL;
  switch(*v0)
  {
    case 1:
      result = 0x7669466F54656E6FLL;
      break;
    case 2:
      result = sub_1ABA94C20();
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t static DistanceBucket.fromDistance(distance:)@<X0>(char *a1@<X8>)
{
  sub_1ABAD219C(&qword_1EB4D1710, &qword_1ABF338A0);
  sub_1ABA93788();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA8C2F0();
  MEMORY[0x1EEE9AC00](v4);
  v5 = [objc_opt_self() miles];
  sub_1ABF218F4();

  v6 = sub_1ABAA59AC();
  sub_1ABAFF390(0, &qword_1EB4CE6D8, 0x1E696B058);
  sub_1ABF218B4();
  v7 = sub_1ABA8EB94();
  v8 = *(v2 + 8);
  v9 = sub_1ABA7C5A4();
  v8(v9);
  if (v7)
  {
    v10 = sub_1ABA7BE8C();
    result = (v8)(v10);
    v12 = 0;
  }

  else
  {
    v13 = sub_1ABAA59AC();
    sub_1ABAA5484(v13);
    sub_1ABDC0FBC(&qword_1EB4D8170, &qword_1EB4D1710, &qword_1ABF338A0);
    v14 = sub_1ABA8E3AC();
    v15 = sub_1ABA7C5A4();
    v8(v15);
    if ((v14 & 1) == 0 || (v16 = sub_1ABAA59AC(), sub_1ABAA5484(v16), v17 = sub_1ABA8EB94(), v18 = sub_1ABA7C5A4(), v8(v18), (v17 & 1) == 0))
    {
      v20 = sub_1ABAA59AC();
      sub_1ABAA5484(v20);
      v21 = sub_1ABA8E3AC();
      v22 = sub_1ABA7C5A4();
      v8(v22);
      if (v21)
      {
        v23 = sub_1ABAA59AC();
        sub_1ABAA5484(v23);
        v24 = sub_1ABA8EB94();
        v25 = sub_1ABA7C5A4();
        v8(v25);
        v26 = sub_1ABA7BE8C();
        result = (v8)(v26);
        if (v24)
        {
          v12 = 2;
          goto LABEL_11;
        }
      }

      else
      {
        v27 = sub_1ABA7BE8C();
        result = (v8)(v27);
      }

      v12 = 3;
      goto LABEL_11;
    }

    v19 = sub_1ABA7BE8C();
    result = (v8)(v19);
    v12 = 1;
  }

LABEL_11:
  *a1 = v12;
  return result;
}

uint64_t sub_1ABDC0FBC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1ABAE2850(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t RoadType.description.getter()
{
  result = 0x79617765657266;
  switch(*v0)
  {
    case 1:
      result = 0x6C61697265747261;
      break;
    case 2:
      result = 0x6F7463656C6C6F63;
      break;
    case 3:
      result = 0x6C61636F6CLL;
      break;
    case 4:
      result = 0x6E776F6E6B6E75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t TerrainType.description.getter()
{
  result = 1952541798;
  switch(*v0)
  {
    case 1:
      return result;
    case 2:
      result = 0x796C6C6968;
      break;
    case 3:
      result = 0x6E6961746E756F6DLL;
      break;
    default:
      result = 0x6E776F6E6B6E75;
      break;
  }

  return result;
}

unint64_t WeatherType.description.getter()
{
  result = 0x796E6E7573;
  switch(*v0)
  {
    case 1:
      return result;
    case 2:
      return 0x7964756F6C63;
    case 3:
      v2 = 1852399986;
      goto LABEL_9;
    case 4:
      v2 = 1734831974;
      goto LABEL_9;
    case 5:
      v2 = 1684957559;
      goto LABEL_9;
    case 6:
      v2 = 2003791475;
      goto LABEL_9;
    case 7:
      v2 = 1802464627;
LABEL_9:
      result = v2 & 0xFFFF0000FFFFFFFFLL | 0x7900000000;
      break;
    default:
      result = 0x6E776F6E6B6E75;
      break;
  }

  return result;
}

unint64_t sub_1ABDC1418()
{
  result = qword_1EB4D9A50;
  if (!qword_1EB4D9A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9A50);
  }

  return result;
}

unint64_t sub_1ABDC1470()
{
  result = qword_1EB4D9A58;
  if (!qword_1EB4D9A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9A58);
  }

  return result;
}

unint64_t sub_1ABDC14C8()
{
  result = qword_1EB4D9A60;
  if (!qword_1EB4D9A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9A60);
  }

  return result;
}

unint64_t sub_1ABDC1520()
{
  result = qword_1EB4D9A68;
  if (!qword_1EB4D9A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9A68);
  }

  return result;
}

unint64_t sub_1ABDC1578()
{
  result = qword_1EB4D9A70;
  if (!qword_1EB4D9A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9A70);
  }

  return result;
}

unint64_t sub_1ABDC15D0()
{
  result = qword_1EB4D9A78;
  if (!qword_1EB4D9A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9A78);
  }

  return result;
}

unint64_t sub_1ABDC16E0()
{
  result = qword_1EB4D9A80;
  if (!qword_1EB4D9A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9A80);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TrialNamespace(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
    if (a2 + 8 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 8) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SpeedBucket(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RelativeFlowSpeedBucket(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RoadType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1ABDC1A74(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WeatherType(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1ABDC1C2C()
{
  result = qword_1EB4D9A88;
  if (!qword_1EB4D9A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9A88);
  }

  return result;
}

unint64_t sub_1ABDC1C80()
{
  result = qword_1EB4D9A90;
  if (!qword_1EB4D9A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9A90);
  }

  return result;
}

unint64_t sub_1ABDC1CD4()
{
  result = qword_1EB4D9A98;
  if (!qword_1EB4D9A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9A98);
  }

  return result;
}

unint64_t sub_1ABDC1D28()
{
  result = qword_1EB4D9AA0;
  if (!qword_1EB4D9AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9AA0);
  }

  return result;
}

unint64_t sub_1ABDC1D7C()
{
  result = qword_1EB4D9AA8;
  if (!qword_1EB4D9AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9AA8);
  }

  return result;
}

unint64_t sub_1ABDC1DD0()
{
  result = qword_1EB4D9AB0;
  if (!qword_1EB4D9AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9AB0);
  }

  return result;
}

unint64_t sub_1ABDC1E24()
{
  result = qword_1EB4D9AB8;
  if (!qword_1EB4D9AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9AB8);
  }

  return result;
}

void sub_1ABDC1EA8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1ABDD3A24();
    v2 = sub_1ABAB0E08();
    v3 = a1 + 64;
    v25 = a1 + 72;
    v26 = v4;
    while ((v2 & 0x8000000000000000) == 0)
    {
      sub_1ABDD3960();
      if (v8 == v9)
      {
        break;
      }

      v10 = v7 << v2;
      if ((*(v3 + 8 * (v2 >> 6)) & (v7 << v2)) == 0)
      {
        goto LABEL_22;
      }

      if (*(a1 + 36) != v5)
      {
        goto LABEL_23;
      }

      v27 = v6;
      [objc_allocWithZone(GDDistanceBucketValue) initWithBucket:*(*(a1 + 48) + v2) + 1 bucketValue:*(*(a1 + 56) + 8 * v2)];
      v11 = sub_1ABF24B94();
      sub_1ABDD39E4(v11, v12, v13, v14, v15, v16, v17, v18, v23, v24, v25, v26, v27, v28);
      sub_1ABA9EE9C();
      sub_1ABF24BE4();
      sub_1ABF24BA4();
      sub_1ABDD3960();
      if (v8 == v9)
      {
        goto LABEL_24;
      }

      if ((*(v3 + 8 * (v2 >> 6)) & v10) == 0)
      {
        goto LABEL_25;
      }

      if (*(a1 + 36) != v26)
      {
        goto LABEL_26;
      }

      sub_1ABDD3640();
      if (v19)
      {
        sub_1ABA9DFE8();
        while (v21 < v20)
        {
          sub_1ABAAD2BC();
          if (v22)
          {
            sub_1ABAA91F8();
            break;
          }
        }
      }

      else
      {
        sub_1ABDD3928();
      }

      sub_1ABDD3914();
      if (v19)
      {
        return;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }
}

void sub_1ABDC2034(uint64_t a1, uint64_t (*a2)(uint64_t), Class *a3, SEL *a4)
{
  v4 = a1;
  v5 = *(a1 + 16);
  if (v5)
  {
    sub_1ABF24BC4();
    v7 = a2(v4);
    v9 = v8;
    v10 = 0;
    v11 = v4 + 64;
    v21 = v4;
    v12 = 1;
    while ((v7 & 0x8000000000000000) == 0 && v7 < v12 << *(v4 + 32))
    {
      v13 = v7 >> 6;
      v14 = v12 << v7;
      if ((*(v11 + 8 * (v7 >> 6)) & (v12 << v7)) == 0)
      {
        goto LABEL_19;
      }

      if (*(v4 + 36) != v9)
      {
        goto LABEL_20;
      }

      v24 = v10;
      [objc_allocWithZone(*a3) *a4];
      sub_1ABF24B94();
      sub_1ABF24BD4();
      v4 = v21;
      sub_1ABF24BE4();
      sub_1ABF24BA4();
      if (v7 >= 1 << *(v21 + 32))
      {
        goto LABEL_21;
      }

      if ((*(v11 + 8 * v13) & v14) == 0)
      {
        goto LABEL_22;
      }

      if (*(v21 + 36) != v9)
      {
        goto LABEL_23;
      }

      sub_1ABDD3640();
      if (v17)
      {
        v18 = (v15 + 63) >> 6;
        v19 = v13 + 1;
        while (v19 < v18)
        {
          sub_1ABAAD2BC();
          if (v20)
          {
            sub_1ABAA91F8();
            break;
          }
        }
      }

      else
      {
        v15 = __clz(__rbit64(v16)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      v10 = v24 + 1;
      v7 = v15;
      if (v24 + 1 == v5)
      {
        return;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }
}

void *sub_1ABDC2224(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_1ABDD2F08(a1);
  }

  if (a1 >= 0)
  {
    a1 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  return sub_1ABDD2CC0(a1);
}

void sub_1ABDC2260(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *))
{
  v3 = v2;
  v4 = MEMORY[0x1E69E7CC8];
  v33 = MEMORY[0x1E69E7CC8];
  v5 = a1 + 64;
  sub_1ABA7D2A8();
  v8 = v7 & v6;
  v10 = (v9 + 63) >> 6;
  v30 = v11;

  v12 = 0;
  while (v8)
  {
LABEL_7:
    v14 = __clz(__rbit64(v8)) | (v12 << 6);
    v15 = (*(v30 + 48) + 16 * v14);
    v17 = *v15;
    v16 = v15[1];
    v32 = *(*(v30 + 56) + 8 * v14);

    a2(v31, &v32);
    if (v3)
    {

      return;
    }

    v8 &= v8 - 1;

    if (v31[0])
    {
      v18 = *(v4 + 16);
      if (*(v4 + 24) <= v18)
      {
        v19 = sub_1ABDD3854(v18);
        v20(v19);
        v4 = v33;
      }

      sub_1ABF25234();
      sub_1ABF23D34();
      sub_1ABF25294();
      sub_1ABA8AB68();
      if (v21)
      {
        sub_1ABDD3818();
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          if (*(v23 + 8 * v24) != -1)
          {
            sub_1ABDD3804();
            goto LABEL_21;
          }
        }

        goto LABEL_25;
      }

      sub_1ABDD382C();
LABEL_21:
      sub_1ABA9F984(v22);
      *v28 = v17;
      v28[1] = v16;
      sub_1ABDD3674();
      v3 = 0;
    }

    else
    {

      v3 = 0;
    }
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      return;
    }

    v8 = *(v5 + 8 * v13);
    ++v12;
    if (v8)
    {
      v12 = v13;
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

void sub_1ABDC2454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = MEMORY[0x1E69E7CC8];
  v32 = MEMORY[0x1E69E7CC8];
  v7 = a1 + 64;
  sub_1ABA7D2A8();
  v10 = v9 & v8;
  v12 = (v11 + 63) >> 6;
  v30 = v13;

  v14 = 0;
  while (v10)
  {
LABEL_7:
    v16 = (*(v30 + 48) + 16 * (__clz(__rbit64(v10)) | (v14 << 6)));
    v17 = *v16;
    v18 = v16[1];

    sub_1ABDD1024();
    if (v5)
    {

      return;
    }

    v10 &= v10 - 1;

    if (v31)
    {
      v19 = *(v6 + 16);
      if (*(v6 + 24) <= v19)
      {
        v20 = sub_1ABDD3854(v19);
        v21(v20);
        v6 = v32;
      }

      sub_1ABF25234();
      sub_1ABF23D34();
      sub_1ABF25294();
      sub_1ABA8AB68();
      if (v22)
      {
        sub_1ABDD3818();
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          if (*(v24 + 8 * v25) != -1)
          {
            sub_1ABDD3804();
            goto LABEL_21;
          }
        }

        goto LABEL_25;
      }

      sub_1ABDD382C();
LABEL_21:
      sub_1ABA9F984(v23);
      *v29 = v17;
      v29[1] = v18;
      sub_1ABDD3674();
      v5 = 0;
    }

    else
    {

      v5 = 0;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v15 >= v12)
    {

      return;
    }

    v10 = *(v7 + 8 * v15);
    ++v14;
    if (v10)
    {
      v14 = v15;
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

void sub_1ABDC274C(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  v5 = sub_1ABA7AB80(v4);
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7AC18();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v53 - v7;
  MEMORY[0x1EEE9AC00](v9);
  *&v11 = MEMORY[0x1EEE9AC00](v10).n128_u64[0];
  v13 = &v53 - v12;
  v14 = [v2 inclusionType];
  if (v14 >= 8)
  {
    sub_1ABDC2660(&v68);
    v15 = v68;
  }

  else
  {
    v15 = 0x706050402010001uLL >> (8 * v14);
  }

  v67 = v15;
  v16 = [v2 startTime];
  if (v16)
  {
    v17 = v16;
    sub_1ABF21E64();
  }

  v18 = sub_1ABF21EB4();
  sub_1ABA9FAA4();
  sub_1ABA7B9B4(v19, v20, v21, v22);
  sub_1ABA8B14C();
  sub_1ABAE2F1C();
  sub_1ABF21EB4();
  v66 = sub_1ABA7E1E0(v13, 1, v18);
  if (v66 == 1)
  {
    sub_1ABAB480C(v13, &qword_1EB4D9BF0, &qword_1ABF34240);
    v23 = 0;
  }

  else
  {
    sub_1ABF21E14();
    v23 = v24;
    (*(*(v18 - 8) + 8))(v13, v18);
  }

  v25 = [v2 endTime];
  if (v25)
  {
    v13 = v25;
    sub_1ABF21E64();
  }

  sub_1ABA9FAA4();
  sub_1ABA7B9B4(v26, v27, v28, v29);
  sub_1ABAE2F1C();
  v30 = sub_1ABDD38E8();
  v65 = sub_1ABA7E1E0(v30, v31, v18);
  if (v65 == 1)
  {
    sub_1ABAB480C(v8, &qword_1EB4D9BF0, &qword_1ABF34240);
    v32 = 0;
  }

  else
  {
    v13 = v8;
    sub_1ABF21E14();
    v32 = v33;
    v34 = sub_1ABAA015C();
    v35(v34);
  }

  if ([v2 distanceMinInMeters])
  {
    sub_1ABAA0600(1);

    v63 = v68;
    v64 = v69;
  }

  else
  {
    v64 = 1;
    v63 = 0;
  }

  if ([v2 distanceMaxInMeters])
  {
    sub_1ABAA0600(1);

    v61 = v68;
    v62 = v69;
  }

  else
  {
    v62 = 1;
    v61 = 0;
  }

  if ([v2 elevationGainMinInMeters])
  {
    sub_1ABAA0600(1);

    v59 = v68;
    v60 = v69;
  }

  else
  {
    v60 = 1;
    v59 = 0;
  }

  if ([v2 elevationGainMaxInMeters])
  {
    sub_1ABAA0600(1);

    v57 = v68;
    v58 = v69;
  }

  else
  {
    v58 = 1;
    v57 = 0;
  }

  if ([v2 durationMinInSeconds])
  {
    sub_1ABAA0600(1);

    v55 = v68;
    v56 = v69;
  }

  else
  {
    v56 = 1;
    v55 = 0;
  }

  v36 = [v2 durationMaxInSeconds];
  v37 = 1;
  if (v36)
  {
    v38 = v36;
    v68 = 0;
    v69 = 1;
    MEMORY[0x1AC5A9960](v36, &v68);

    v54 = v68;
    v37 = v69;
  }

  else
  {
    v54 = 0;
  }

  sub_1ABB22FFC(v2, &selRef_roadType);
  v39 = objc_opt_self();
  v40 = sub_1ABF23BD4();

  v41 = [v39 roadTypeForString_];

  sub_1ABDC2D9C(&v68, v41);
  v42 = v68;
  v43 = sub_1ABB22FFC(v2, &selRef_roadName);
  v45 = v44;
  v46 = [v2 originId];
  v47 = v46;
  if (v46)
  {
    v48 = [v46 intValue];
  }

  else
  {
    v48 = 0;
  }

  v49 = [v2 destinationId];
  v50 = v49;
  if (v49)
  {
    v51 = [v49 intValue];
  }

  else
  {
    v51 = 0;
  }

  *a1 = v23;
  v52 = v65 == 1;
  *(a1 + 8) = v66 == 1;
  *(a1 + 16) = v32;
  *(a1 + 24) = v52;
  *(a1 + 25) = v67;
  *(a1 + 32) = v63;
  *(a1 + 40) = v64;
  *(a1 + 48) = v61;
  *(a1 + 56) = v62;
  *(a1 + 64) = v59;
  *(a1 + 72) = v60;
  *(a1 + 80) = v57;
  *(a1 + 88) = v58;
  *(a1 + 96) = v55;
  *(a1 + 104) = v56;
  *(a1 + 112) = v54;
  *(a1 + 120) = v37;
  *(a1 + 121) = v42;
  *(a1 + 128) = v43;
  *(a1 + 136) = v45;
  *(a1 + 144) = v48;
  *(a1 + 152) = v47 == 0;
  *(a1 + 160) = v51;
  *(a1 + 168) = v50 == 0;
}

void __swiftcall KTSQueryParams.convertToGDKTSQueryParams()(GDKTSQueryParams *__return_ptr retstr)
{
  sub_1ABA9F710();
  v2 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  v3 = sub_1ABA7AB80(v2);
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA7AC18();
  v6 = v4 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v34 - v8;
  v10 = *(v1 + 8);
  v11 = *(v1 + 24);
  v12 = *(v1 + 25);
  v13 = *(v1 + 40);
  v14 = *(v1 + 56);
  v15 = *(v1 + 72);
  v16 = *(v1 + 88);
  v35 = *(v1 + 104);
  v17 = *(v1 + 120);
  v36 = *(v1 + 121);
  v18 = *(v1 + 128);
  v39 = *(v1 + 136);
  v40 = v18;
  LOBYTE(v18) = *(v1 + 152);
  v41 = qword_1ABF62430[v12];
  if (v18)
  {
    v37 = 0;
    v38 = 0;
    if ((v10 & 1) == 0)
    {
LABEL_3:
      sub_1ABF21E04();
      v19 = sub_1ABF21EB4();
      v20 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    v21 = *(v1 + 144);
    v38 = [objc_allocWithZone(GDEntityIdentifier) initWithValue_];
    v37 = [objc_allocWithZone(GDEntityIdentifier) initWithValue_];
    if ((v10 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  v19 = sub_1ABF21EB4();
  v20 = 1;
LABEL_6:
  v22 = 1;
  sub_1ABA7B9B4(v9, v20, 1, v19);
  if ((v11 & 1) == 0)
  {
    sub_1ABF21E04();
    v22 = 0;
  }

  v23 = sub_1ABF21EB4();
  sub_1ABA7B9B4(v6, v22, 1, v23);
  v24 = 0;
  if ((v13 & 1) == 0)
  {
    v24 = sub_1ABF242F4();
  }

  if (v14)
  {
    v34 = 0;
    if ((v15 & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_15:
    v25 = 0;
    if ((v16 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_16;
  }

  v34 = sub_1ABF242F4();
  if (v15)
  {
    goto LABEL_15;
  }

LABEL_12:
  v25 = sub_1ABF242F4();
  if ((v16 & 1) == 0)
  {
LABEL_13:
    v26 = sub_1ABF242F4();
    goto LABEL_17;
  }

LABEL_16:
  v26 = 0;
LABEL_17:
  if ((v35 & 1) == 0)
  {
    v27 = sub_1ABF242F4();
    if ((v17 & 1) == 0)
    {
      goto LABEL_19;
    }

LABEL_21:
    v28 = 0;
    goto LABEL_22;
  }

  v27 = 0;
  if (v17)
  {
    goto LABEL_21;
  }

LABEL_19:
  v28 = sub_1ABF242F4();
LABEL_22:
  v29 = 0xE700000000000000;
  v30 = 0x79617765657266;
  v31 = 0;
  v32 = 0;
  switch(v36)
  {
    case 1:
      v29 = 0xE800000000000000;
      v30 = 0x6C61697265747261;
      goto LABEL_27;
    case 2:
      v29 = 0xE900000000000072;
      v30 = 0x6F7463656C6C6F63;
      goto LABEL_27;
    case 3:
      v29 = 0xE500000000000000;
      v30 = 0x6C61636F6CLL;
      goto LABEL_27;
    case 4:
      v30 = 0x6E776F6E6B6E75;
      goto LABEL_27;
    case 5:
      goto LABEL_28;
    default:
LABEL_27:
      v31 = v30;
      v32 = v29;
LABEL_28:
      objc_allocWithZone(GDKTSQueryParams);

      sub_1ABDD1334(v9, v6, v41, v24, v34, v25, v26, v27, v28, v31, v32, v40, v33, v38, v37);
      sub_1ABA8A204();
      return;
  }
}

id sub_1ABDC33A0()
{
  memcpy(__dst, v0, 0xA9uLL);
  v1 = v0[169];
  sub_1ABDD3560(__dst, v9);
  KTSQueryParams.convertToGDKTSQueryParams()(v2);
  v4 = v3;
  memcpy(v9, v0, 0xA9uLL);
  sub_1ABDD35BC(v9);
  v5 = objc_allocWithZone(GDKTSDataRequest);
  if (v1 == 3)
  {
    v6 = [v5 initWithParameters_];
  }

  else
  {
    v6 = [v5 initWithParameters:v4 cadence:v1 + 1];
  }

  v7 = v6;

  return v7;
}

uint64_t sub_1ABDC3CC4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1ABF21F04();
  sub_1ABA7BB64();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA7BC58();
  v10 = v9 - v8;
  v11 = [v1 parameters];
  sub_1ABDC274C(v18 + 1);

  v12 = [v2 cadence];
  if (v12 >= 4)
  {
    sub_1ABDC31F8(v18);
    LOBYTE(v13) = v18[0];
  }

  else
  {
    v13 = 0x2010003u >> (8 * v12);
  }

  memcpy(a1, v18 + 1, 0xA9uLL);
  *(a1 + 169) = v13;
  sub_1ABF21EF4();
  v14 = sub_1ABF21EC4();
  v16 = v15;
  result = (*(v6 + 8))(v10, v4);
  *(a1 + 176) = v14;
  *(a1 + 184) = v16;
  return result;
}

void sub_1ABDC3E14()
{
  v2 = v0;
  v3 = sub_1ABAD219C(&qword_1EB4D15B0, &qword_1ABF33740);
  v4 = sub_1ABA7AB80(v3);
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA7C068();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA972D4();
  sub_1ABA8147C(v6);
  v7 = sub_1ABAD219C(&qword_1EB4D1680, &qword_1ABF33810);
  sub_1ABA7AB80(v7);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v9);
  v10 = sub_1ABAD219C(&qword_1EB4D9B10, &qword_1ABF62318);
  sub_1ABAA4684(v10, &v542);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v11);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v12);
  v13 = sub_1ABAD219C(&qword_1EB4D99F8, &qword_1ABF618E8);
  sub_1ABA7AB80(v13);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v14);
  sub_1ABA7FBE0();
  v557 = v15;
  v16 = sub_1ABAD219C(&qword_1EB4D13B8, &qword_1ABF33540);
  sub_1ABA8E5AC(v16, &v541);
  v501 = v17;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v18);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v19);
  v20 = sub_1ABAD219C(&qword_1EB4D9B18, &qword_1ABF62320);
  sub_1ABAA4684(v20, &v547);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v21);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v22);
  v23 = sub_1ABAD219C(&qword_1EB4D99F0, &unk_1ABF618D0);
  sub_1ABA7AB80(v23);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v24);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v25);
  v26 = sub_1ABAD219C(&qword_1EB4D13C8, &qword_1ABF33550);
  sub_1ABA8E5AC(v26, &v544);
  v502 = v27;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v28);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v29);
  v30 = sub_1ABAD219C(&qword_1EB4D13D8, &qword_1ABF33560);
  sub_1ABA8E5AC(v30, v549);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v31);
  sub_1ABA7FBE0();
  v558 = v32;
  v33 = sub_1ABAD219C(&qword_1EB4D9B20, &qword_1ABF62328);
  sub_1ABAA4684(v33, &v553);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v34);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v35);
  v36 = sub_1ABAD219C(&qword_1EB4D9A18, &unk_1ABF61940);
  sub_1ABA7AB80(v36);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v37);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v38);
  v39 = sub_1ABAD219C(&qword_1EB4D13E8, &qword_1ABF33570);
  sub_1ABA8E5AC(v39, &v550);
  v503 = v40;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v41);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v42);
  v43 = sub_1ABAD219C(&qword_1EB4D9B28, &qword_1ABF62330);
  sub_1ABAA4684(v43, &v556);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v44);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v45);
  v46 = sub_1ABAD219C(&qword_1EB4D9A08, &unk_1ABF61920);
  sub_1ABA7AB80(v46);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v47);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v48);
  v49 = sub_1ABAD219C(&qword_1EB4D13F8, &qword_1ABF33580);
  sub_1ABA8E5AC(v49, &v554 + 8);
  v504 = v50;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v51);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v52);
  v53 = sub_1ABAD219C(&qword_1EB4D1408, &qword_1ABF33590);
  sub_1ABA8E5AC(v53, v539);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v54);
  sub_1ABA7FBE0();
  v559 = v55;
  v56 = sub_1ABAD219C(&qword_1EB4D9B30, &qword_1ABF62338);
  sub_1ABAA4684(v56, &v562);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v57);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v58);
  v59 = sub_1ABAD219C(&qword_1EB4D9980, &qword_1ABF617D0);
  sub_1ABA7AB80(v59);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v60);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v61);
  v62 = sub_1ABAD219C(&qword_1EB4D1418, &qword_1ABF335A0);
  sub_1ABA8E5AC(v62, &v559);
  v505 = v63;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v64);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v65);
  v66 = sub_1ABAD219C(&qword_1EB4D9B38, &qword_1ABF62340);
  sub_1ABAA4684(v66, &v566);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v67);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v68);
  v69 = sub_1ABAD219C(&qword_1EB4D9988, &qword_1ABF617D8);
  sub_1ABA7AB80(v69);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v70);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v71);
  v72 = sub_1ABAD219C(&qword_1EB4D1428, &qword_1ABF335B0);
  sub_1ABA8E5AC(v72, &v564);
  v506 = v73;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v74);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v75);
  v76 = sub_1ABAD219C(&qword_1EB4D9B40, &qword_1ABF62348);
  sub_1ABAA4684(v76, v569);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v77);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v78);
  v79 = sub_1ABAD219C(&qword_1EB4D9A40, &qword_1ABF619A0);
  sub_1ABA7AB80(v79);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v80);
  sub_1ABA7FBE0();
  v560 = v81;
  v82 = sub_1ABAD219C(&qword_1EB4D1438, &qword_1ABF335C0);
  sub_1ABA8E5AC(v82, v568);
  v507 = v83;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v84);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v85);
  v86 = sub_1ABAD219C(&qword_1EB4D9B48, &qword_1ABF62350);
  sub_1ABAA4684(v86, &v571);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v87);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v88);
  v89 = sub_1ABAD219C(&qword_1EB4D99C0, &qword_1ABF61840);
  sub_1ABA7AB80(v89);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v90);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v91);
  v92 = sub_1ABAD219C(&qword_1EB4D1448, &qword_1ABF335D0);
  sub_1ABA8E5AC(v92, &v570);
  v508 = v93;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v94);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v95);
  v96 = sub_1ABAD219C(&qword_1EB4D9B50, &qword_1ABF62358);
  sub_1ABAA4684(v96, &v573);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v97);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v98);
  v562 = sub_1ABAD219C(&qword_1EB4D16F0, &qword_1ABF33880);
  sub_1ABA7BB64();
  v512 = v99;
  MEMORY[0x1EEE9AC00](v100);
  sub_1ABA7C068();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v101);
  sub_1ABA88E50();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v102);
  sub_1ABA88E50();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v103);
  sub_1ABA88E50();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v104);
  sub_1ABA88E50();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v105);
  sub_1ABA88E50();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v106);
  sub_1ABA972D4();
  sub_1ABA8147C(v107);
  v108 = sub_1ABAD219C(&qword_1EB4D9A30, &unk_1ABF61968);
  sub_1ABA7AB80(v108);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v109);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v110);
  v111 = sub_1ABAD219C(&qword_1EB4D1458, &qword_1ABF335E0);
  sub_1ABA8E5AC(v111, &v572);
  v510 = v112;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v113);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v114);
  v561 = sub_1ABAD219C(&qword_1EB4D9B58, &qword_1ABF62360);
  sub_1ABA7BBB0();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v115);
  sub_1ABA7FBE0();
  v556 = v116;
  v564 = sub_1ABAD219C(&qword_1EB4D1710, &qword_1ABF338A0);
  sub_1ABA7BB64();
  v513 = v117;
  MEMORY[0x1EEE9AC00](v118);
  sub_1ABA7C068();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v119);
  sub_1ABA88E50();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v120);
  sub_1ABA88E50();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v121);
  sub_1ABA88E50();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v122);
  sub_1ABA88E50();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v123);
  sub_1ABA88E50();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v124);
  sub_1ABA972D4();
  v555 = v125;
  v126 = sub_1ABAD219C(&qword_1EB4D9A38, &qword_1ABF61978);
  sub_1ABA7AB80(v126);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v127);
  sub_1ABA83634();
  v128 = sub_1ABAD219C(&qword_1EB4D1468, &qword_1ABF335F0);
  sub_1ABA8E5AC(v128, &v574);
  v511 = v129;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v130);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v131);
  v132 = sub_1ABF21EB4();
  sub_1ABA7BB64();
  v134 = v133;
  MEMORY[0x1EEE9AC00](v135);
  sub_1ABA7BC58();
  v138 = v137 - v136;
  v139 = [v2 startTime];
  sub_1ABF21E64();

  sub_1ABF21E14();
  v140 = *(v134 + 8);
  v140(v138, v132);
  v141 = [v2 endTime];
  sub_1ABF21E64();

  sub_1ABF21E14();
  v140(v138, v132);
  v521 = v2;
  v142 = [v2 distanceBuckets];
  sub_1ABAFF390(0, &qword_1EB4D9AC8, off_1E795FE88);
  v143 = sub_1ABF240D4();

  v144 = sub_1ABAAB7C8(v143);
  v145 = 0;
  v563 = MEMORY[0x1E69E7CC0];
  while (v144 != v145)
  {
    if ((v143 & 0xC000000000000001) != 0)
    {
      v147 = MEMORY[0x1AC5AA170](v145, v143);
    }

    else
    {
      sub_1ABDD3908();
      if (v146)
      {
        goto LABEL_239;
      }

      v147 = *(v143 + 8 * v145 + 32);
    }

    v148 = v147;
    if (__OFADD__(v145, 1))
    {
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
LABEL_257:
      __break(1u);
LABEL_258:
      __break(1u);
LABEL_259:
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
LABEL_265:
      __break(1u);
LABEL_266:
      __break(1u);
LABEL_267:
      __break(1u);
LABEL_268:
      __break(1u);
LABEL_269:
      __break(1u);
LABEL_270:
      __break(1u);
      return;
    }

    sub_1ABDC3668(&v567, [v147 bucket]);
    v149 = v567;
    [v148 bucketValue];
    v151 = v150;
    v152 = v150;

    if ((*&v152 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_240;
    }

    if (v151 <= -9.22337204e18)
    {
      goto LABEL_241;
    }

    if (v151 >= 9.22337204e18)
    {
      goto LABEL_242;
    }

    LOBYTE(v565) = v149;
    v566 = v151;
    sub_1ABAD219C(&qword_1EB4D9B60, &qword_1ABF62368);
    sub_1ABAD219C(&qword_1EB4D9B68, &qword_1ABF62370);
    if ((swift_dynamicCast() & 1) != 0 && (v153 = v568[0], LOBYTE(v568[0]) != 4))
    {
      v154 = v568[1];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1ABA7C494();
        sub_1ABADC278();
        v563 = v158;
      }

      sub_1ABAA07C4();
      if (v146)
      {
        sub_1ABA95524(v155);
        sub_1ABADC278();
        v563 = v159;
      }

      v156 = v563;
      *(v563 + 16) = v145;
      v157 = v156 + 16 * v149;
      *(v157 + 32) = v153;
      *(v157 + 40) = v154;
      ++v145;
    }

    else
    {
      ++v145;
    }
  }

  v497 = sub_1ABBFA730(v563);
  v160 = sub_1ABAA04CC();
  v162 = [v160 v161];
  v509 = sub_1ABAFF390(0, &qword_1EB4D9AD0, off_1E79603C0);
  v163 = sub_1ABF240D4();

  v164 = sub_1ABAAB7C8(v163);
  v165 = 0;
  v553 = v163 & 0xC000000000000001;
  v552 = v163 & 0xFFFFFFFFFFFFFF8;
  v519 = MEMORY[0x1E69E7CC0];
  sub_1ABDD38B4();
  v563 = v166;
  while (v164 != v165)
  {
    if (v553)
    {
      v167 = MEMORY[0x1AC5AA170](v165, v163);
    }

    else
    {
      if (v165 >= *(v552 + 16))
      {
        goto LABEL_244;
      }

      v167 = *(v163 + 8 * v165 + 32);
    }

    v168 = v167;
    if (__OFADD__(v165, 1))
    {
      goto LABEL_243;
    }

    [v167 bucket];
    sub_1ABA7EA08();
    sub_1ABDC3868(v568);
    v169 = v568[0];
    [v168 bucketValue];
    v170 = [objc_opt_self() meters];
    v171 = sub_1ABA89364();
    sub_1ABAFF390(v171, &qword_1EB4CE6D8, 0x1E696B058);
    v172 = v555;
    sub_1ABF218B4();

    v173 = v561;
    v174 = *(v561 + 48);
    v175 = v556;
    *v556 = v169;
    (*v563)(v175 + v174, v172, v564);
    sub_1ABDD3728(v1, v175, v173);
    sub_1ABA9021C();
    sub_1ABA7B9B4(v176, v177, v178, v179);
    sub_1ABA8A578(v1, 1, v173);
    if (v180)
    {
      sub_1ABAB480C(v1, &qword_1EB4D9A38, &qword_1ABF61978);
      ++v165;
    }

    else
    {
      sub_1ABAE2F1C();
      v181 = v519;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1ABA7BEF0();
        sub_1ABADC254();
        v181 = v185;
      }

      v184 = *(v181 + 16);
      v183 = *(v181 + 24);
      if (v184 >= v183 >> 1)
      {
        sub_1ABA96DE0(v183);
        sub_1ABADC254();
        v181 = v186;
      }

      *(v181 + 16) = v184 + 1;
      sub_1ABA935AC();
      v519 = v181;
      sub_1ABA89A5C();
      sub_1ABAE2F1C();
      ++v165;
    }
  }

  v553 = sub_1ABBFA758(v519);
  v187 = sub_1ABAA04CC();
  v189 = [v187 v188];
  v190 = sub_1ABF240D4();

  sub_1ABAAB7C8(v190);
  sub_1ABDD3954();
  v556 = MEMORY[0x1E69E7CC0];
  sub_1ABDD38B4();
  v561 = v191;
  while (v189 != v165)
  {
    if ((v190 & 0xC000000000000001) != 0)
    {
      v210 = sub_1ABA9EE9C();
      v192 = MEMORY[0x1AC5AA170](v210);
    }

    else
    {
      if (v165 >= *((v190 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_246;
      }

      v192 = sub_1ABDD37BC();
    }

    v193 = v192;
    if (__OFADD__(v165, 1))
    {
      goto LABEL_245;
    }

    [v192 bucket];
    sub_1ABA7EA08();
    sub_1ABDC3868(v568);
    v194 = v568[0];
    [v193 bucketValue];
    v195 = [objc_opt_self() seconds];
    v196 = sub_1ABA89364();
    sub_1ABAFF390(v196, &qword_1EB4CE6B8, 0x1E696B008);
    sub_1ABA8BD58();
    sub_1ABF218B4();

    v197 = v551;
    v198 = *(v551 + 48);
    v1 = v550;
    *v550 = v194;
    v199 = v549[0];
    (*v561)(&v1[v198], 0x1E696B008uLL, v562);
    v200 = sub_1ABDD3978();
    sub_1ABDD3728(v200, v201, v197);
    sub_1ABA9021C();
    sub_1ABA7B9B4(v202, v203, v204, v205);
    sub_1ABA8A578(v199, 1, v197);
    if (v180)
    {
      sub_1ABAB480C(v199, &qword_1EB4D9A30, &unk_1ABF61968);
      ++v165;
    }

    else
    {
      sub_1ABAE2F1C();
      v206 = v556;
      v207 = swift_isUniquelyReferenced_nonNull_native();
      if ((v207 & 1) == 0)
      {
        sub_1ABA7BEF0();
        sub_1ABADC230();
        v206 = v211;
      }

      v209 = *(v206 + 16);
      v208 = *(v206 + 24);
      v1 = (v209 + 1);
      if (v209 >= v208 >> 1)
      {
        sub_1ABA7DD04(v208);
        sub_1ABADC230();
        v206 = v212;
      }

      *(v206 + 16) = v1;
      sub_1ABA935AC();
      v556 = v206;
      sub_1ABA89A5C();
      sub_1ABAE2F1C();
      ++v165;
    }
  }

  v552 = sub_1ABBFA780(v556);
  v213 = sub_1ABAA04CC();
  v215 = [v213 v214];
  *&v554 = sub_1ABAFF390(0, &qword_1EB4D9AD8, off_1E7960398);
  v216 = sub_1ABF240D4();

  v217 = sub_1ABAAB7C8(v216);
  v218 = 0;
  v556 = v216 & 0xC000000000000001;
  v555 = MEMORY[0x1E69E7CC0];
  while (v217 != v218)
  {
    if (v556)
    {
      v219 = MEMORY[0x1AC5AA170](v218, v216);
    }

    else
    {
      if (v218 >= *((v216 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_248;
      }

      v219 = *(v216 + 8 * v218 + 32);
    }

    v220 = v219;
    v221 = v218 + 1;
    if (__OFADD__(v218, 1))
    {
      goto LABEL_247;
    }

    sub_1ABDC3454(v568, [v219 bucket]);
    [v220 bucketValue];
    v222 = [objc_opt_self() meters];
    sub_1ABAFF390(0, &qword_1EB4CE6D8, 0x1E696B058);
    sub_1ABF218B4();

    v1 = v547;
    v223 = sub_1ABA9E590(*(v547 + 48));
    v224(v223);
    v225 = v545;
    v226 = sub_1ABA9F7F0();
    sub_1ABA7B9B4(v225, v226 ^ 1u, 1, v1);
    sub_1ABA8A578(v225, 1, v1);
    if (v180)
    {
      sub_1ABAB480C(v225, &qword_1EB4D99C0, &qword_1ABF61840);
      ++v218;
    }

    else
    {
      sub_1ABDD36C8();
      sub_1ABAE2F1C();
      v227 = swift_isUniquelyReferenced_nonNull_native();
      if ((v227 & 1) == 0)
      {
        sub_1ABA7C494();
        sub_1ABADC20C();
        v555 = v230;
      }

      v229 = *(v555 + 16);
      v228 = *(v555 + 24);
      if (v229 >= v228 >> 1)
      {
        sub_1ABA96DE0(v228);
        sub_1ABADC20C();
        v555 = v231;
      }

      *(v555 + 16) = v229 + 1;
      sub_1ABA935AC();
      sub_1ABA8A2C4();
      sub_1ABAE2F1C();
      v218 = v221;
    }
  }

  v550 = sub_1ABBFA7A8(v555);
  v232 = sub_1ABAA04CC();
  v234 = sub_1ABA88D98([v232 v233]);

  sub_1ABAAB7C8(v234);
  sub_1ABDD3954();
  v556 = v234 & 0xC000000000000001;
  v555 = MEMORY[0x1E69E7CC0];
  while (v216 != v218)
  {
    if (v556)
    {
      v247 = sub_1ABA9EE9C();
      v235 = MEMORY[0x1AC5AA170](v247);
    }

    else
    {
      sub_1ABDD3908();
      if (v146)
      {
        goto LABEL_250;
      }

      v235 = sub_1ABDD37BC();
    }

    v236 = v235;
    v1 = (v218 + 1);
    if (__OFADD__(v218, 1))
    {
      goto LABEL_249;
    }

    sub_1ABDC3454(v568, [v235 bucket]);
    [v236 bucketValue];
    v237 = [objc_opt_self() seconds];
    v238 = sub_1ABDD396C();
    v239 = sub_1ABAFF390(v238, &qword_1EB4CE6B8, 0x1E696B008);
    sub_1ABDD3A04(v239);

    v240 = sub_1ABA9E6D0(*(v542 + 48));
    v241(v240);
    v242 = v560;
    v243 = v541;
    v244 = swift_dynamicCast();
    sub_1ABA7B9B4(v242, v244 ^ 1u, 1, v243);
    sub_1ABA8A578(v242, 1, v243);
    if (v180)
    {
      sub_1ABAB480C(v242, &qword_1EB4D9A40, &qword_1ABF619A0);
      ++v218;
    }

    else
    {
      sub_1ABAE2F1C();
      v245 = swift_isUniquelyReferenced_nonNull_native();
      if ((v245 & 1) == 0)
      {
        sub_1ABA7C494();
        sub_1ABADC1E8();
        v555 = v248;
      }

      sub_1ABAA07C4();
      if (v146)
      {
        sub_1ABA95524(v246);
        sub_1ABADC1E8();
        v555 = v249;
      }

      *(v555 + 16) = v218;
      sub_1ABA935AC();
      sub_1ABA8A2C4();
      sub_1ABAE2F1C();
      ++v218;
    }
  }

  v549[1] = sub_1ABBFA7D0(v555);
  v250 = sub_1ABAA04CC();
  v252 = [v250 v251];
  v555 = sub_1ABAFF390(0, &qword_1EB4D9AE0, off_1E7960348);
  v253 = sub_1ABF240D4();

  v254 = sub_1ABAAB7C8(v253);
  v255 = 0;
  v560 = (v253 & 0xC000000000000001);
  v556 = MEMORY[0x1E69E7CC0];
  while (v254 != v255)
  {
    if (v560)
    {
      sub_1ABA8D01C();
    }

    else
    {
      sub_1ABDD3668();
      if (v146)
      {
        goto LABEL_252;
      }

      v256 = sub_1ABA8D2C0();
    }

    v257 = v256;
    if (__OFADD__(v255, 1))
    {
      goto LABEL_251;
    }

    sub_1ABDC3558(v568, [v256 bucket]);
    [v257 bucketValue];
    v258 = [objc_opt_self() meters];
    v259 = sub_1ABDD3888();
    sub_1ABAFF390(v259, &qword_1EB4CE6D8, 0x1E696B058);
    sub_1ABDD387C();
    v218 = v538;
    sub_1ABF218B4();

    v1 = v540;
    v260 = sub_1ABA9E590(*(v540 + 48));
    v261(v260);
    sub_1ABA7C5D0();
    v262 = sub_1ABA9F7F0();
    sub_1ABA7B9B4(v538, v262 ^ 1u, 1, v1);
    sub_1ABA8A578(v538, 1, v1);
    if (v180)
    {
      sub_1ABAB480C(v538, &qword_1EB4D9988, &qword_1ABF617D8);
      ++v255;
    }

    else
    {
      sub_1ABAE2F1C();
      v263 = v556;
      v264 = swift_isUniquelyReferenced_nonNull_native();
      if ((v264 & 1) == 0)
      {
        sub_1ABA7BEF0();
        sub_1ABADC1C4();
        v263 = v266;
      }

      v218 = *(v263 + 16);
      v265 = *(v263 + 24);
      if (v218 >= v265 >> 1)
      {
        sub_1ABA96DE0(v265);
        sub_1ABADC1C4();
        v263 = v267;
      }

      *(v263 + 16) = v218 + 1;
      sub_1ABA935AC();
      v556 = v263;
      sub_1ABAE2F1C();
      ++v255;
    }
  }

  v549[0] = sub_1ABBFA7F8(v556);
  v268 = sub_1ABAA04CC();
  v270 = [v268 v269];
  v271 = sub_1ABF240D4();

  sub_1ABAAB7C8(v271);
  sub_1ABDD3954();
  v560 = (v271 & 0xC000000000000001);
  v556 = MEMORY[0x1E69E7CC0];
  while (v270 != v218)
  {
    if (v560)
    {
      v284 = sub_1ABA9EE9C();
      v272 = MEMORY[0x1AC5AA170](v284);
    }

    else
    {
      sub_1ABDD3908();
      if (v146)
      {
        goto LABEL_254;
      }

      v272 = sub_1ABDD37BC();
    }

    v273 = v272;
    v1 = (v218 + 1);
    if (__OFADD__(v218, 1))
    {
      goto LABEL_253;
    }

    sub_1ABDC3558(v568, [v272 bucket]);
    [v273 bucketValue];
    v274 = [objc_opt_self() seconds];
    v275 = sub_1ABDD396C();
    v276 = sub_1ABAFF390(v275, &qword_1EB4CE6B8, 0x1E696B008);
    sub_1ABDD3A04(v276);

    v277 = sub_1ABA9E6D0(*(v537 + 48));
    v278(v277);
    sub_1ABAA015C();
    v279 = swift_dynamicCast();
    sub_1ABA7B9B4(v536, v279 ^ 1u, 1, v535);
    v280 = sub_1ABDD38E8();
    sub_1ABA8A578(v280, v281, v535);
    if (v180)
    {
      sub_1ABAB480C(v536, &qword_1EB4D9980, &qword_1ABF617D0);
      ++v218;
    }

    else
    {
      sub_1ABAE2F1C();
      v282 = swift_isUniquelyReferenced_nonNull_native();
      if ((v282 & 1) == 0)
      {
        sub_1ABA7C494();
        sub_1ABADC1A0();
        v556 = v285;
      }

      sub_1ABAA07C4();
      if (v146)
      {
        sub_1ABA95524(v283);
        sub_1ABADC1A0();
        v556 = v286;
      }

      *(v556 + 16) = v218;
      sub_1ABA935AC();
      sub_1ABA8A2C4();
      sub_1ABAE2F1C();
      ++v218;
    }
  }

  v548 = sub_1ABBFA820(v556);
  v287 = sub_1ABA9E464(&v540);
  v289 = [v287 v288];
  v547 = sub_1ABF23974();

  v290 = [v1 roadTimes];
  v546 = sub_1ABF23974();

  v291 = [v1 roadSpeedBuckets];
  sub_1ABAD219C(&qword_1EB4D9B00, &qword_1ABF62308);
  v292 = sub_1ABF23974();

  sub_1ABAA020C();
  sub_1ABDC2260(v292, v293);
  v545 = v294;

  v295 = [v1 roadRelativeSpeedBuckets];
  sub_1ABAD219C(&qword_1EB4D9B08, &qword_1ABF62310);
  sub_1ABA8B14C();
  v296 = sub_1ABF23974();

  sub_1ABA8B754();
  sub_1ABDC2260(v296, v297);
  v544 = v298;

  v299 = [v1 distancePerRoadType];
  sub_1ABAFF390(0, &qword_1EB4D9AE8, off_1E7960358);
  sub_1ABA89740();
  v551 = v300;
  v301 = sub_1ABF240D4();

  v560 = sub_1ABAAB7C8(v301);
  v302 = 0;
  v555 = v301 & 0xFFFFFFFFFFFFFF8;
  v556 = v301 & 0xC000000000000001;
  v303 = MEMORY[0x1E69E7CC0];
  *&v304 = 136315138;
  v554 = v304;
  v305 = v520;
  while (v560 != v302)
  {
    if (v556)
    {
      v306 = MEMORY[0x1AC5AA170](v302, v301);
    }

    else
    {
      if (v302 >= *(v555 + 16))
      {
        goto LABEL_256;
      }

      v306 = *(v301 + 8 * v302 + 32);
    }

    v307 = v306;
    if (__OFADD__(v302, 1))
    {
      goto LABEL_255;
    }

    v308 = [v306 type];
    if (v308 >= 5)
    {
      if (qword_1EB4CE7E8 != -1)
      {
        sub_1ABA8F864();
        swift_once();
      }

      v312 = sub_1ABF237F4();
      v313 = sub_1ABAB68E0(v312, qword_1EB4CE7F0);
      v314 = sub_1ABF24664();
      if (sub_1ABA8918C(v314))
      {
        sub_1ABA8C938();
        v315 = swift_slowAlloc();
        sub_1ABAA4194();
        v316 = swift_slowAlloc();
        v568[0] = v316;
        *v315 = v554;
        v565 = v308;
        type metadata accessor for GDRoadType(0);
        v317 = sub_1ABF23C74();
        v319 = sub_1ABADD6D8(v317, v318, v568);

        *(v315 + 4) = v319;
        _os_log_impl(&dword_1ABA78000, v313, v314, "Unknown road type: %s. Setting type to unknown.", v315, 0xCu);
        sub_1ABA84B54(v316);
        v305 = v520;
        sub_1ABA7BDD8();
        MEMORY[0x1AC5AB8B0]();
        sub_1ABA7BDD8();
        MEMORY[0x1AC5AB8B0]();
      }

      LOBYTE(v311) = 4;
    }

    else
    {
      sub_1ABDD3620();
      v311 = v310 >> v309;
    }

    [v307 typeValue];
    v320 = [objc_opt_self() meters];
    sub_1ABAFF390(0, &qword_1EB4CE6D8, 0x1E696B058);
    v321 = v559;
    sub_1ABF218B4();

    *v321 = v311;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1ABA7BEF0();
      sub_1ABADC17C();
      v303 = v324;
    }

    v323 = *(v303 + 16);
    v322 = *(v303 + 24);
    if (v323 >= v322 >> 1)
    {
      sub_1ABA7BBEC(v322);
      sub_1ABADC17C();
      v303 = v325;
    }

    *(v303 + 16) = v323 + 1;
    sub_1ABA935AC();
    sub_1ABA89A5C();
    sub_1ABAE2F1C();
    ++v302;
  }

  v555 = sub_1ABBFA848(v303);
  v326 = sub_1ABAA04CC();
  v328 = [v326 v327];
  sub_1ABAFF390(0, &qword_1EB4D9AF0, off_1E7960480);
  sub_1ABA89740();
  v559 = v329;
  v330 = sub_1ABF240D4();

  sub_1ABAAB7C8(v330);
  sub_1ABDD3954();
  v560 = MEMORY[0x1E69E7CC0];
  while (v328 != v305)
  {
    if ((v330 & 0xC000000000000001) != 0)
    {
      v345 = sub_1ABA9EE9C();
      v331 = MEMORY[0x1AC5AA170](v345);
    }

    else
    {
      sub_1ABDD3908();
      if (v146)
      {
        goto LABEL_258;
      }

      v331 = sub_1ABDD37BC();
    }

    v332 = v331;
    if (__OFADD__(v305, 1))
    {
      goto LABEL_257;
    }

    sub_1ABDC3AAC(v568, [v331 type]);
    v333 = v568[0];
    [v332 typeValue];
    v334 = [objc_opt_self() meters];
    v335 = sub_1ABDD396C();
    sub_1ABAFF390(v335, &qword_1EB4CE6D8, 0x1E696B058);
    sub_1ABF218B4();

    v336 = *(v534 + 48);
    *v533 = v333;
    (*v563)(&v533[v336], v531, v564);
    sub_1ABA9E10C();
    sub_1ABA88F10();
    sub_1ABA9FAA4();
    sub_1ABA7B9B4(v337, v338, v339, v340);
    v341 = sub_1ABDD38E8();
    sub_1ABA8A578(v341, v342, v534);
    if (v180)
    {
      sub_1ABAB480C(v532, &qword_1EB4D9A08, &unk_1ABF61920);
      ++v305;
    }

    else
    {
      sub_1ABAE2F1C();
      v343 = swift_isUniquelyReferenced_nonNull_native();
      if ((v343 & 1) == 0)
      {
        sub_1ABA7C494();
        sub_1ABADC158();
        v560 = v346;
      }

      sub_1ABAA07C4();
      if (v146)
      {
        sub_1ABA95524(v344);
        sub_1ABADC158();
        v560 = v347;
      }

      v560[2] = v305;
      sub_1ABA935AC();
      sub_1ABA8A2C4();
      sub_1ABAE2F1C();
      ++v305;
    }
  }

  v543 = sub_1ABBFA870(v560);
  v348 = sub_1ABAA04CC();
  v350 = [v348 v349];
  sub_1ABAFF390(0, &qword_1EB4D9AF8, off_1E79603A8);
  sub_1ABA89740();
  v556 = v351;
  v352 = sub_1ABF240D4();

  v353 = sub_1ABAAB7C8(v352);
  v354 = 0;
  v560 = MEMORY[0x1E69E7CC0];
  while (v353 != v354)
  {
    if ((v352 & 0xC000000000000001) != 0)
    {
      sub_1ABDD3650();
    }

    else
    {
      if (v354 >= *((v352 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_260;
      }

      v355 = sub_1ABAA0DBC();
    }

    v356 = v355;
    if (__OFADD__(v354, 1))
    {
      goto LABEL_259;
    }

    [v355 type];
    sub_1ABA937A0();
    sub_1ABDC3868(v568);
    v357 = v568[0];
    [v356 typeValue];
    v358 = [objc_opt_self() meters];
    v359 = sub_1ABDD3888();
    sub_1ABAFF390(v359, &qword_1EB4CE6D8, 0x1E696B058);
    sub_1ABDD387C();
    sub_1ABF218B4();

    v360 = *(v530 + 48);
    *v529 = v357;
    (*v563)(&v529[v360], v526, v564);
    v361 = swift_dynamicCast();
    sub_1ABA7B9B4(v528, v361 ^ 1u, 1, v527);
    sub_1ABA8A578(v528, 1, v527);
    if (v180)
    {
      sub_1ABAB480C(v528, &qword_1EB4D9A18, &unk_1ABF61940);
      ++v354;
    }

    else
    {
      sub_1ABAE2F1C();
      v362 = v560;
      v363 = swift_isUniquelyReferenced_nonNull_native();
      if ((v363 & 1) == 0)
      {
        sub_1ABA7BEF0();
        sub_1ABADC134();
        v362 = v366;
      }

      v365 = v362[2];
      v364 = v362[3];
      if (v365 >= v364 >> 1)
      {
        sub_1ABA96DE0(v364);
        sub_1ABADC134();
        v362 = v367;
      }

      v362[2] = v365 + 1;
      sub_1ABA935AC();
      v560 = v362;
      sub_1ABAE2F1C();
      ++v354;
    }
  }

  v542 = sub_1ABBFA898(v560);
  v368 = sub_1ABAA04CC();
  v370 = sub_1ABDD3768([v368 v369]);

  v371 = sub_1ABAAB7C8(v370);
  v372 = 0;
  v373 = v370 & 0xC000000000000001;
  v564 = v370 & 0xFFFFFFFFFFFFFF8;
  v374 = MEMORY[0x1E69E7CC0];
  v563 = v370 & 0xC000000000000001;
  while (v371 != v372)
  {
    if (v373)
    {
      v375 = MEMORY[0x1AC5AA170](v372, v370);
    }

    else
    {
      if (v372 >= *(v564 + 16))
      {
        goto LABEL_262;
      }

      v375 = *(v370 + 8 * v372 + 32);
    }

    v376 = v375;
    if (__OFADD__(v372, 1))
    {
      goto LABEL_261;
    }

    v377 = [v375 type];
    if (v377 >= 5)
    {
      if (qword_1EB4CE7E8 != -1)
      {
        sub_1ABA8F864();
        swift_once();
      }

      v381 = sub_1ABF237F4();
      v382 = sub_1ABAB68E0(v381, qword_1EB4CE7F0);
      v383 = sub_1ABF24664();
      if (sub_1ABA8918C(v383))
      {
        sub_1ABA8C938();
        v384 = swift_slowAlloc();
        sub_1ABAA4194();
        v560 = swift_slowAlloc();
        v568[0] = v560;
        *v384 = v554;
        v565 = v377;
        type metadata accessor for GDRoadType(0);
        v385 = sub_1ABF23C74();
        v387 = v370;
        v388 = v371;
        v389 = sub_1ABADD6D8(v385, v386, v568);

        *(v384 + 4) = v389;
        v371 = v388;
        v370 = v387;
        _os_log_impl(&dword_1ABA78000, v382, v383, "Unknown road type: %s. Setting type to unknown.", v384, 0xCu);
        sub_1ABA84B54(v560);
        sub_1ABA7BDD8();
        MEMORY[0x1AC5AB8B0]();
        sub_1ABA7BDD8();
        MEMORY[0x1AC5AB8B0]();
      }

      LOBYTE(v380) = 4;
      v373 = v563;
    }

    else
    {
      sub_1ABDD3620();
      v380 = v379 >> v378;
    }

    [v376 typeValue];
    v390 = [objc_opt_self() seconds];
    sub_1ABAFF390(0, &qword_1EB4CE6B8, 0x1E696B008);
    v391 = v558;
    sub_1ABF218B4();

    *v391 = v380;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1ABA7BEF0();
      sub_1ABADC110();
      v374 = v394;
    }

    v393 = *(v374 + 16);
    v392 = *(v374 + 24);
    if (v393 >= v392 >> 1)
    {
      sub_1ABA7BBEC(v392);
      sub_1ABA9021C();
      sub_1ABADC110();
      v374 = v395;
    }

    *(v374 + 16) = v393 + 1;
    sub_1ABA935AC();
    sub_1ABAE2F1C();
    ++v372;
  }

  v563 = sub_1ABBFA8C0(v374);
  v396 = sub_1ABAA04CC();
  v398 = [v396 v397];
  v399 = sub_1ABF240D4();

  v400 = sub_1ABAAB7C8(v399);
  v401 = 0;
  v564 = MEMORY[0x1E69E7CC0];
  while (v400 != v401)
  {
    if ((v399 & 0xC000000000000001) != 0)
    {
      v416 = sub_1ABA9EE9C();
      v402 = MEMORY[0x1AC5AA170](v416);
    }

    else
    {
      if (v401 >= *((v399 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_264;
      }

      v402 = sub_1ABDD37BC();
    }

    v403 = v402;
    if (__OFADD__(v401, 1))
    {
      goto LABEL_263;
    }

    sub_1ABDC3AAC(v568, [v402 type]);
    [v403 typeValue];
    v404 = [objc_opt_self() seconds];
    v405 = sub_1ABDD396C();
    sub_1ABAFF390(v405, &qword_1EB4CE6B8, 0x1E696B008);
    sub_1ABF218B4();

    v406 = sub_1ABDD36D4(*(v525 + 48));
    v407(v406);
    sub_1ABA9E10C();
    sub_1ABA88F10();
    sub_1ABA9FAA4();
    sub_1ABA7B9B4(v408, v409, v410, v411);
    v412 = sub_1ABDD38E8();
    sub_1ABA8A578(v412, v413, v525);
    if (v180)
    {
      sub_1ABAB480C(v524, &qword_1EB4D99F0, &unk_1ABF618D0);
      ++v401;
    }

    else
    {
      sub_1ABAE2F1C();
      v414 = swift_isUniquelyReferenced_nonNull_native();
      if ((v414 & 1) == 0)
      {
        sub_1ABA7C494();
        sub_1ABADC0EC();
        v564 = v417;
      }

      sub_1ABAA07C4();
      if (v146)
      {
        sub_1ABA95524(v415);
        sub_1ABADC0EC();
        v564 = v418;
      }

      *(v564 + 16) = v401;
      sub_1ABA935AC();
      sub_1ABA8A2C4();
      sub_1ABAE2F1C();
      ++v401;
    }
  }

  v560 = sub_1ABBFA8E8(v564);
  v419 = sub_1ABAA04CC();
  v421 = [v419 v420];
  v422 = sub_1ABF240D4();

  v423 = sub_1ABAAB7C8(v422);
  v424 = 0;
  v564 = MEMORY[0x1E69E7CC0];
  while (v423 != v424)
  {
    if ((v422 & 0xC000000000000001) != 0)
    {
      v425 = MEMORY[0x1AC5AA170](v424, v422);
    }

    else
    {
      if (v424 >= *((v422 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_266;
      }

      v425 = *(v422 + 8 * v424 + 32);
    }

    v426 = v425;
    if (__OFADD__(v424, 1))
    {
      goto LABEL_265;
    }

    [v425 type];
    sub_1ABA937A0();
    sub_1ABDC3868(v568);
    [v426 typeValue];
    v427 = [objc_opt_self() seconds];
    sub_1ABAFF390(0, &qword_1EB4CE6B8, 0x1E696B008);
    sub_1ABA8BD58();
    sub_1ABF218B4();

    v428 = sub_1ABDD36D4(*(v523 + 48));
    v429(v428, 0x1E696B008uLL);
    v421 = v557;
    v430 = swift_dynamicCast();
    sub_1ABA7B9B4(v421, v430 ^ 1u, 1, v522);
    sub_1ABA8A578(v421, 1, v522);
    if (v180)
    {
      sub_1ABAB480C(v421, &qword_1EB4D99F8, &qword_1ABF618E8);
      ++v424;
    }

    else
    {
      sub_1ABAE2F1C();
      v431 = swift_isUniquelyReferenced_nonNull_native();
      if ((v431 & 1) == 0)
      {
        sub_1ABA7C494();
        sub_1ABADC0C8();
        v564 = v433;
      }

      v421 = *(v564 + 16);
      v432 = *(v564 + 24);
      if (v421 >= v432 >> 1)
      {
        sub_1ABA7DD04(v432);
        sub_1ABADC0C8();
        v564 = v434;
      }

      *(v564 + 16) = v421 + 1;
      sub_1ABA935AC();
      sub_1ABA8A2C4();
      sub_1ABAE2F1C();
      ++v424;
    }
  }

  v564 = sub_1ABBFA910(v564);
  v435 = sub_1ABAA04CC();
  v439 = sub_1ABDD3070(v435, v436, v437, v438);
  v440 = &selRef_enumerateActivityEventsWithAscending_error_block_;
  if (v439)
  {
    v441 = v439;
    sub_1ABAAB7C8(v439);
    sub_1ABA9FDF0();
    v442 = MEMORY[0x1E69E7CC0];
    while (v421 != v423)
    {
      if ((v441 & 0xC000000000000001) != 0)
      {
        sub_1ABA91014();
      }

      else
      {
        if (v423 >= *((v441 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_268;
        }

        sub_1ABA8D424();
      }

      sub_1ABA89CF0();
      if (v443)
      {
        goto LABEL_267;
      }

      v444 = [v424 intValue];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v447 = sub_1ABA7BEF0();
        sub_1ABAD89C8(v447, v448, v449, v442);
        v442 = v450;
      }

      v446 = *(v442 + 16);
      v445 = *(v442 + 24);
      v424 = v446 + 1;
      if (v446 >= v445 >> 1)
      {
        v451 = sub_1ABA7DD04(v445);
        sub_1ABAD89C8(v451, v452, v453, v442);
        v442 = v454;
      }

      *(v442 + 16) = v424;
      *(v442 + 8 * v446 + 32) = v444;
      ++v423;
    }
  }

  else
  {
    v442 = 0;
  }

  v455 = sub_1ABAA04CC();
  v459 = sub_1ABDD3070(v455, v456, v457, v458);
  if (v459)
  {
    v460 = v459;
    sub_1ABAAB7C8(v459);
    sub_1ABA9FDF0();
    v461 = MEMORY[0x1E69E7CC0];
    while (v421 != v423)
    {
      if ((v460 & 0xC000000000000001) != 0)
      {
        sub_1ABA91014();
      }

      else
      {
        if (v423 >= *((v460 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_270;
        }

        sub_1ABA8D424();
      }

      sub_1ABA89CF0();
      if (v443)
      {
        goto LABEL_269;
      }

      v462 = [v424 v440[256]];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v465 = sub_1ABA7BEF0();
        sub_1ABAD89C8(v465, v466, v467, v461);
        v461 = v468;
      }

      v464 = *(v461 + 16);
      v463 = *(v461 + 24);
      v424 = v464 + 1;
      if (v464 >= v463 >> 1)
      {
        v469 = sub_1ABA7DD04(v463);
        sub_1ABAD89C8(v469, v470, v471, v461);
        v461 = v472;
      }

      *(v461 + 16) = v424;
      *(v461 + 8 * v464 + 32) = v462;
      ++v423;
      v440 = &selRef_enumerateActivityEventsWithAscending_error_block_;
    }
  }

  else
  {
    v461 = 0;
  }

  v473 = [v521 distanceInMeters];
  sub_1ABAFF390(0, &qword_1EB4CE6D8, 0x1E696B058);
  sub_1ABA7D000();
  sub_1ABF218A4();

  v474 = [v521 elevationGainInMeters];
  sub_1ABF218A4();

  v475 = [v521 durationInSeconds];
  sub_1ABAFF390(0, &qword_1EB4CE6B8, 0x1E696B008);
  sub_1ABA7D000();
  sub_1ABF218A4();

  v476 = [v521 expectedDurationInSecondsNoTraffic];
  sub_1ABF218A4();

  v477 = [v521 averageSpeedInMetersPerSecond];
  sub_1ABAFF390(0, &qword_1EB4CE6F0, 0x1E696B078);
  sub_1ABF218A4();

  [v521 score];
  v478 = [v521 usageKwh];
  sub_1ABAFF390(0, &qword_1EB4CE6E0, 0x1E696B030);
  sub_1ABA7D000();
  sub_1ABF218A4();

  v479 = [v521 optimalUsageKwh];
  sub_1ABF218A4();

  v480 = [v521 numBrakingEvents];
  v481 = [v521 numAccelEvents];
  v482 = [v521 numHighSpeedEvents];
  v483 = sub_1ABDD3070(v521, &selRef_route, &qword_1EB4D1F98, 0x1E6985C40);
  type metadata accessor for KTSDataRepresentation(0);
  sub_1ABA90758();
  swift_allocObject();
  v496 = v546;
  v495 = v544;
  v494 = v545;
  v493 = v547;
  v492 = v564;
  v491 = v542;
  v490 = v560;
  v489 = v543;
  v488 = v563;
  v487 = v555;
  v486 = v548;
  v485 = v549[0];
  sub_1ABDD38C0();
  KTSDataRepresentation.init(startTime:endTime:distanceInMeters:elevationGainInMeters:distanceBuckets:durationInSeconds:expectedDurationInSecondsNoTraffic:distanceSpentInTrafficBuckets:timeSpentInTrafficBuckets:distanceSpentAtSpeedBuckets:timeSpentAtSpeedBuckets:distanceSpentAtRelativeSpeeds:timeSpentAtRelativeSpeeds:distancePerRoadType:timePerRoadType:distancePerWeatherType:timePerWeatherType:distancePerTerrainType:timePerTerrainType:averageSpeedInMetersPerSecond:score:usageKwh:optimalUsageKwh:numBrakingEvents:numAccelEvents:numHighSpeedEvents:roadDistancesInMeters:roadSpeedBuckets:roadRelativeSpeedBuckets:roadTimes:lifeEventIds:ktsSegmentIds:route:)(v514, v515, v498, v516, v517, v553, v552, v550, v484, v485, v486, v487, v488, v489, v490, v491, v492, v518, v499, v500, v480, v481, v482, v493, v494, v495, v496, v442, v461, v483, v498, v499, v500, v501, v502, v503, v504, v505, v506, v507, v508, v509, v510, v511, v512, v513, v514, v515, v516, v517);
}

void sub_1ABDC7440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_1ABA9F710();
  a27 = v29;
  a28 = v30;
  v31 = v28;
  v32 = sub_1ABAD219C(&qword_1EB4D15B0, &qword_1ABF33740);
  v33 = sub_1ABA7AB80(v32);
  MEMORY[0x1EEE9AC00](v33);
  sub_1ABA7C068();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v34);
  sub_1ABA972D4();
  sub_1ABA8147C(v35);
  v36 = sub_1ABAD219C(&qword_1EB4D1680, &qword_1ABF33810);
  sub_1ABA7AB80(v36);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v37);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v38);
  v39 = sub_1ABAD219C(&qword_1EB4D9B10, &qword_1ABF62318);
  sub_1ABAA4684(v39, &v918);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v40);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v41);
  v42 = sub_1ABAD219C(&qword_1EB4D99F8, &qword_1ABF618E8);
  sub_1ABA7AB80(v42);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v43);
  sub_1ABA7FBE0();
  v936 = v44;
  v45 = sub_1ABAD219C(&qword_1EB4D13B8, &qword_1ABF33540);
  sub_1ABA8E5AC(v45, &v916);
  v875 = v46;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v47);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v48);
  v49 = sub_1ABAD219C(&qword_1EB4D9B18, &qword_1ABF62320);
  sub_1ABAA4684(v49, &v924);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v50);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v51);
  v52 = sub_1ABAD219C(&qword_1EB4D99F0, &unk_1ABF618D0);
  sub_1ABA7AB80(v52);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v53);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v54);
  v55 = sub_1ABAD219C(&qword_1EB4D13C8, &qword_1ABF33550);
  sub_1ABA8E5AC(v55, &v921);
  v876 = v56;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v57);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v58);
  v59 = sub_1ABAD219C(&qword_1EB4D13D8, &qword_1ABF33560);
  sub_1ABA8E5AC(v59, &v926);
  v899 = v60;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v61);
  sub_1ABA7FBE0();
  v937 = v62;
  v63 = sub_1ABAD219C(&qword_1EB4D9B20, &qword_1ABF62328);
  sub_1ABAA4684(v63, &v930);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v64);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v65);
  v66 = sub_1ABAD219C(&qword_1EB4D9A18, &unk_1ABF61940);
  sub_1ABA7AB80(v66);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v67);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v68);
  v69 = sub_1ABAD219C(&qword_1EB4D13E8, &qword_1ABF33570);
  sub_1ABA8E5AC(v69, v928);
  v877 = v70;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v71);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v72);
  v73 = sub_1ABAD219C(&qword_1EB4D9B28, &qword_1ABF62330);
  sub_1ABAA4684(v73, &v935);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v74);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v75);
  v76 = sub_1ABAD219C(&qword_1EB4D9A08, &unk_1ABF61920);
  sub_1ABA7AB80(v76);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v77);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v78);
  v79 = sub_1ABAD219C(&qword_1EB4D13F8, &qword_1ABF33580);
  sub_1ABA8E5AC(v79, &v932);
  v878 = v80;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v81);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v82);
  v83 = sub_1ABAD219C(&qword_1EB4D1408, &qword_1ABF33590);
  sub_1ABA8E5AC(v83, &v937);
  v905 = v84;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v85);
  sub_1ABA7FBE0();
  v938 = v86;
  v87 = sub_1ABAD219C(&qword_1EB4D9B30, &qword_1ABF62338);
  sub_1ABAA4684(v87, &v942);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v88);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v89);
  v90 = sub_1ABAD219C(&qword_1EB4D9980, &qword_1ABF617D0);
  sub_1ABA7AB80(v90);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v91);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v92);
  v93 = sub_1ABAD219C(&qword_1EB4D1418, &qword_1ABF335A0);
  sub_1ABA8E5AC(v93, &v939);
  v884 = v94;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v95);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v96);
  v97 = sub_1ABAD219C(&qword_1EB4D9B38, &qword_1ABF62340);
  sub_1ABAA4684(v97, &v945[1]);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v98);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v99);
  v100 = sub_1ABAD219C(&qword_1EB4D9988, &qword_1ABF617D8);
  sub_1ABA7AB80(v100);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v101);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v102);
  v103 = sub_1ABAD219C(&qword_1EB4D1428, &qword_1ABF335B0);
  sub_1ABA8E5AC(v103, v943);
  v885 = v104;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v105);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v106);
  v107 = sub_1ABAD219C(&qword_1EB4D9B40, &qword_1ABF62348);
  sub_1ABAA4684(v107, &a11);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v108);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v109);
  v110 = sub_1ABAD219C(&qword_1EB4D9A40, &qword_1ABF619A0);
  sub_1ABA7AB80(v110);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v111);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v112);
  v113 = sub_1ABAD219C(&qword_1EB4D1438, &qword_1ABF335C0);
  sub_1ABA8E5AC(v113, &v946);
  v886 = v114;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v115);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v116);
  v117 = sub_1ABAD219C(&qword_1EB4D9B48, &qword_1ABF62350);
  sub_1ABAA4684(v117, &a16);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v118);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v119);
  v120 = sub_1ABAD219C(&qword_1EB4D99C0, &qword_1ABF61840);
  sub_1ABA7AB80(v120);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v121);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v122);
  v123 = sub_1ABAD219C(&qword_1EB4D1448, &qword_1ABF335D0);
  sub_1ABA8E5AC(v123, &a13);
  v887 = v124;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v125);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v126);
  v127 = sub_1ABAD219C(&qword_1EB4D9B50, &qword_1ABF62358);
  sub_1ABAA4684(v127, &a21);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v128);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v129);
  v940 = sub_1ABAD219C(&qword_1EB4D16F0, &qword_1ABF33880);
  sub_1ABA7BB64();
  v890 = v130;
  MEMORY[0x1EEE9AC00](v131);
  sub_1ABA7C068();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v132);
  sub_1ABA88E50();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v133);
  sub_1ABA88E50();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v134);
  sub_1ABA88E50();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v135);
  sub_1ABA88E50();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v136);
  sub_1ABA88E50();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v137);
  sub_1ABA972D4();
  sub_1ABA8147C(v138);
  v139 = sub_1ABAD219C(&qword_1EB4D9A30, &unk_1ABF61968);
  sub_1ABA7AB80(v139);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v140);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v141);
  v142 = sub_1ABAD219C(&qword_1EB4D1458, &qword_1ABF335E0);
  sub_1ABA8E5AC(v142, &a17);
  v888 = v143;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v144);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v145);
  v939 = sub_1ABAD219C(&qword_1EB4D9B58, &qword_1ABF62360);
  sub_1ABA7BBB0();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v146);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v147);
  v942 = sub_1ABAD219C(&qword_1EB4D1710, &qword_1ABF338A0);
  sub_1ABA7BB64();
  v891 = v148;
  MEMORY[0x1EEE9AC00](v149);
  sub_1ABA7C068();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v150);
  sub_1ABA88E50();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v151);
  sub_1ABA88E50();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v152);
  sub_1ABA88E50();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v153);
  sub_1ABA88E50();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v154);
  sub_1ABA88E50();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v155);
  sub_1ABA88E50();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v156);
  sub_1ABA88E50();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v157);
  sub_1ABA88E50();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v158);
  sub_1ABA88E50();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v159);
  sub_1ABA972D4();
  sub_1ABA8147C(v160);
  v161 = sub_1ABAD219C(&qword_1EB4D9A38, &qword_1ABF61978);
  sub_1ABA7AB80(v161);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v162);
  v164 = &v868 - v163;
  v165 = sub_1ABAD219C(&qword_1EB4D1468, &qword_1ABF335F0);
  sub_1ABA8E5AC(v165, &a24);
  v889 = v166;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v167);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v168);
  v169 = sub_1ABF21EB4();
  sub_1ABA7BB64();
  v171 = v170;
  MEMORY[0x1EEE9AC00](v172);
  sub_1ABA7BC58();
  v175 = v174 - v173;
  v176 = [v31 startTime];
  sub_1ABF21E64();

  sub_1ABF21E14();
  v177 = *(v171 + 8);
  v177(v175, v169);
  v178 = [v31 endTime];
  sub_1ABF21E64();

  sub_1ABF21E14();
  v177(v175, v169);
  v896 = v31;
  v179 = [v31 distanceBuckets];
  sub_1ABAFF390(0, &qword_1EB4D9AC8, off_1E795FE88);
  sub_1ABDD3704();
  v180 = sub_1ABF240D4();

  v181 = sub_1ABAAB7C8(v180);
  v182 = 0;
  v183 = (v180 & 0xC000000000000001);
  v941 = MEMORY[0x1E69E7CC0];
  while (v181 != v182)
  {
    if (v183)
    {
      sub_1ABA8D01C();
    }

    else
    {
      if (v182 >= *((v180 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_495;
      }

      v184 = sub_1ABA8D2C0();
    }

    v185 = v184;
    if (__OFADD__(v182, 1))
    {
      __break(1u);
LABEL_495:
      __break(1u);
LABEL_496:
      __break(1u);
LABEL_497:
      __break(1u);
LABEL_498:
      __break(1u);
LABEL_499:
      __break(1u);
LABEL_500:
      __break(1u);
LABEL_501:
      __break(1u);
LABEL_502:
      __break(1u);
LABEL_503:
      __break(1u);
LABEL_504:
      __break(1u);
LABEL_505:
      __break(1u);
LABEL_506:
      __break(1u);
LABEL_507:
      __break(1u);
LABEL_508:
      __break(1u);
LABEL_509:
      __break(1u);
LABEL_510:
      __break(1u);
LABEL_511:
      __break(1u);
LABEL_512:
      __break(1u);
LABEL_513:
      __break(1u);
LABEL_514:
      __break(1u);
LABEL_515:
      __break(1u);
LABEL_516:
      __break(1u);
LABEL_517:
      __break(1u);
LABEL_518:
      __break(1u);
LABEL_519:
      __break(1u);
LABEL_520:
      __break(1u);
LABEL_521:
      __break(1u);
LABEL_522:
      __break(1u);
LABEL_523:
      __break(1u);
LABEL_524:
      __break(1u);
LABEL_525:
      __break(1u);
LABEL_526:
      __break(1u);
LABEL_527:
      __break(1u);
LABEL_528:
      __break(1u);
LABEL_529:
      __break(1u);
LABEL_530:
      __break(1u);
LABEL_531:
      __break(1u);
LABEL_532:
      __break(1u);
LABEL_533:
      __break(1u);
LABEL_534:
      __break(1u);
LABEL_535:
      __break(1u);
LABEL_536:
      __break(1u);
LABEL_537:
      __break(1u);
LABEL_538:
      __break(1u);
LABEL_539:
      __break(1u);
LABEL_540:
      __break(1u);
LABEL_541:
      __break(1u);
LABEL_542:
      __break(1u);
LABEL_543:
      __break(1u);
LABEL_544:
      __break(1u);
LABEL_545:
      __break(1u);
LABEL_546:
      __break(1u);
LABEL_547:
      __break(1u);
LABEL_548:
      __break(1u);
LABEL_549:
      __break(1u);
LABEL_550:
      __break(1u);
LABEL_551:
      __break(1u);
LABEL_552:
      __break(1u);
LABEL_553:
      __break(1u);
LABEL_554:
      __break(1u);
LABEL_555:
      __break(1u);
LABEL_556:
      __break(1u);
LABEL_557:
      __break(1u);
LABEL_558:
      __break(1u);
LABEL_559:
      __break(1u);
LABEL_560:
      __break(1u);
LABEL_561:
      __break(1u);
LABEL_562:
      __break(1u);
      return;
    }

    sub_1ABDC3668(v945, [v184 bucket]);
    v186 = v945[0];
    [v185 bucketValue];
    v188 = v187;
    v189 = v187;

    if ((*&v189 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_496;
    }

    if (v188 <= -9.22337204e18)
    {
      goto LABEL_497;
    }

    if (v188 >= 9.22337204e18)
    {
      goto LABEL_498;
    }

    v943[0] = v186;
    v944 = v188;
    sub_1ABAD219C(&qword_1EB4D9B60, &qword_1ABF62368);
    sub_1ABAD219C(&qword_1EB4D9B68, &qword_1ABF62370);
    if ((swift_dynamicCast() & 1) != 0 && (v190 = v945[1], v945[1] != 4))
    {
      v191 = *&v945[9];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1ABA7C494();
        sub_1ABADC278();
        v941 = v196;
      }

      v193 = *(v941 + 16);
      v192 = *(v941 + 24);
      if (v193 >= v192 >> 1)
      {
        sub_1ABA7BBEC(v192);
        sub_1ABADC278();
        v941 = v197;
      }

      v194 = v941;
      *(v941 + 16) = v193 + 1;
      v195 = v194 + 16 * v193;
      *(v195 + 32) = v190;
      *(v195 + 40) = v191;
      ++v182;
    }

    else
    {
      ++v182;
    }
  }

  v868 = sub_1ABBFA730(v941);
  v198 = sub_1ABA973BC();
  v200 = [v198 v199];
  sub_1ABAFF390(0, &qword_1EB4D9AD0, off_1E79603C0);
  sub_1ABDD3704();
  v892 = v201;
  v202 = sub_1ABF240D4();

  v203 = sub_1ABAAB7C8(v202);
  v204 = 0;
  v932 = v202 & 0xC000000000000001;
  v931 = v202 & 0xFFFFFFFFFFFFFF8;
  v893 = MEMORY[0x1E69E7CC0];
  sub_1ABDD38B4();
  v941 = v205;
  v206 = v934;
  while (v203 != v204)
  {
    if (v932)
    {
      v207 = MEMORY[0x1AC5AA170](v204, v202);
    }

    else
    {
      if (v204 >= *(v931 + 16))
      {
        goto LABEL_500;
      }

      v207 = *(v202 + 8 * v204 + 32);
    }

    v208 = v207;
    if (__OFADD__(v204, 1))
    {
      goto LABEL_499;
    }

    [v207 bucket];
    sub_1ABA7EA08();
    sub_1ABDC3868(&v945[1]);
    v209 = v945[1];
    [v208 bucketValue];
    v210 = [objc_opt_self() meters];
    v211 = sub_1ABA89364();
    sub_1ABAFF390(v211, &qword_1EB4CE6D8, 0x1E696B058);
    sub_1ABF218B4();

    v183 = v939;
    v212 = *(v939 + 48);
    v213 = v935;
    *v935 = v209;
    (*v941)(&v213[v212], v206, v942);
    sub_1ABDD3728(v164, v213, v183);
    sub_1ABA9021C();
    sub_1ABA7B9B4(v214, v215, v216, v217);
    sub_1ABA8A578(v164, 1, v183);
    if (v218)
    {
      sub_1ABAB480C(v164, &qword_1EB4D9A38, &qword_1ABF61978);
      ++v204;
    }

    else
    {
      sub_1ABAE2F1C();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1ABA7C494();
        sub_1ABADC254();
        v893 = v221;
      }

      v183 = *(v893 + 16);
      v220 = *(v893 + 24);
      if (v183 >= v220 >> 1)
      {
        sub_1ABA7BBEC(v220);
        sub_1ABADC254();
        v893 = v222;
      }

      *(v893 + 16) = v183 + 1;
      sub_1ABA935AC();
      sub_1ABA8A2C4();
      sub_1ABAE2F1C();
      ++v204;
    }
  }

  v893 = sub_1ABBFA758(v893);
  v223 = sub_1ABA973BC();
  v225 = [v223 v224];
  sub_1ABDD36C8();
  v226 = sub_1ABF240D4();

  v227 = sub_1ABAAB7C8(v226);
  v228 = 0;
  v935 = MEMORY[0x1E69E7CC0];
  sub_1ABDD38B4();
  v939 = v229;
  while (v227 != v228)
  {
    if ((v226 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1AC5AA170](v228, v226);
    }

    else
    {
      if (v228 >= *((v226 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_502;
      }

      v230 = *(v226 + 8 * v228 + 32);
    }

    sub_1ABA9ED90();
    if (v231)
    {
      goto LABEL_501;
    }

    [v225 bucket];
    sub_1ABA7EA08();
    sub_1ABDC3868(&v945[1]);
    v232 = v945[1];
    [v225 bucketValue];
    v204 = 0x1E696B008uLL;
    v233 = [objc_opt_self() seconds];
    v234 = sub_1ABA89364();
    sub_1ABAFF390(v234, &qword_1EB4CE6B8, 0x1E696B008);
    sub_1ABA8BD58();
    sub_1ABF218B4();

    sub_1ABA8A22C();
    v183 = v929;
    *v929 = v232;
    v235 = v928[0];
    v237 = sub_1ABAB3C2C(v236);
    v238(v237);
    v225 = v927;
    sub_1ABDD36B0();
    swift_dynamicCast();
    sub_1ABA898F8();
    sub_1ABA7B9B4(v239, v240, v241, v242);
    sub_1ABDD368C();
    sub_1ABA8A578(v243, v244, v245);
    if (v218)
    {
      sub_1ABAB480C(v235, &qword_1EB4D9A30, &unk_1ABF61968);
      ++v228;
    }

    else
    {
      sub_1ABAE2F1C();
      sub_1ABA9E464(&a26);
      v246 = swift_isUniquelyReferenced_nonNull_native();
      if ((v246 & 1) == 0)
      {
        sub_1ABA80DB8();
        sub_1ABADC230();
        v235 = v248;
      }

      v183 = *(v235 + 2);
      v247 = *(v235 + 3);
      v225 = v183 + 1;
      if (v183 >= v247 >> 1)
      {
        sub_1ABAA3A24(v247);
        sub_1ABADC230();
        v235 = v249;
      }

      *(v235 + 2) = v225;
      sub_1ABA935AC();
      v935 = v235;
      sub_1ABA9F3D0();
      sub_1ABAE2F1C();
      v228 = v206;
    }
  }

  v930 = sub_1ABBFA780(v935);
  v250 = sub_1ABA973BC();
  v252 = [v250 v251];
  sub_1ABAFF390(0, &qword_1EB4D9AD8, off_1E7960398);
  sub_1ABA895D4();
  v933 = v253;
  v254 = sub_1ABF240D4();

  sub_1ABAAB7C8(v254);
  sub_1ABAB5388();
  sub_1ABDD36EC(MEMORY[0x1E69E7CC0]);
  while (v183 != v228)
  {
    sub_1ABA9E354();
    if (v255)
    {
      sub_1ABA8D01C();
    }

    else
    {
      sub_1ABDD3668();
      if (v256)
      {
        goto LABEL_504;
      }

      sub_1ABA8D2C0();
    }

    sub_1ABA9ED90();
    if (v231)
    {
      goto LABEL_503;
    }

    sub_1ABDC3454(&v945[1], [v252 bucket]);
    v204 = v945[1];
    [v252 bucketValue];
    v257 = 0x1E696B058uLL;
    v258 = [objc_opt_self() meters];
    v259 = sub_1ABA9E240();
    v260 = sub_1ABAFF390(v259, &qword_1EB4CE6D8, 0x1E696B058);
    sub_1ABA8ADE0(v260, v260);

    sub_1ABA8A22C();
    sub_1ABDD38A8();
    v262 = sub_1ABA8A9E4(v261);
    v263(v262);
    sub_1ABA97058(&a14);
    v264 = sub_1ABA9F7F0();
    sub_1ABAA1838(v264);
    if (v218)
    {
      sub_1ABAB480C(v252, &qword_1EB4D99C0, &qword_1ABF61840);
      ++v228;
    }

    else
    {
      sub_1ABAE2F1C();
      sub_1ABA9E464(&a25);
      v265 = swift_isUniquelyReferenced_nonNull_native();
      if ((v265 & 1) == 0)
      {
        sub_1ABA80DB8();
        sub_1ABADC20C();
        v257 = v267;
      }

      sub_1ABA9F738();
      if (v256)
      {
        sub_1ABAA3A24(v266);
        sub_1ABADC20C();
        v257 = v268;
      }

      *(v257 + 16) = v252;
      sub_1ABA935AC();
      sub_1ABAABD3C();
      sub_1ABAE2F1C();
      v228 = v206;
    }
  }

  v269 = sub_1ABA83A08();
  v929 = sub_1ABBFA7A8(v269);
  v270 = sub_1ABA973BC();
  v272 = [v270 v271];
  v273 = sub_1ABF240D4();

  sub_1ABAAB7C8(v273);
  sub_1ABAB5388();
  sub_1ABDD36EC(MEMORY[0x1E69E7CC0]);
  while (v183 != v228)
  {
    sub_1ABA9E354();
    if (v274)
    {
      sub_1ABA8D01C();
    }

    else
    {
      sub_1ABDD3668();
      if (v256)
      {
        goto LABEL_506;
      }

      sub_1ABA8D2C0();
    }

    sub_1ABA9ED90();
    if (v231)
    {
      goto LABEL_505;
    }

    sub_1ABDC3454(&v945[1], [v272 bucket]);
    v204 = v945[1];
    [v272 bucketValue];
    v275 = 0x1E696B008uLL;
    v276 = [objc_opt_self() seconds];
    v277 = sub_1ABA9E240();
    v278 = sub_1ABAFF390(v277, &qword_1EB4CE6B8, 0x1E696B008);
    sub_1ABA8ADE0(v278, v278);

    sub_1ABA8A22C();
    sub_1ABDD38A8();
    v280 = sub_1ABA8A9E4(v279);
    v281(v280);
    sub_1ABA97058(&a9);
    v282 = sub_1ABA9F7F0();
    sub_1ABAA1838(v282);
    if (v218)
    {
      sub_1ABAB480C(v272, &qword_1EB4D9A40, &qword_1ABF619A0);
      ++v228;
    }

    else
    {
      sub_1ABAE2F1C();
      sub_1ABA9E464(&a25);
      v283 = swift_isUniquelyReferenced_nonNull_native();
      if ((v283 & 1) == 0)
      {
        sub_1ABA80DB8();
        sub_1ABADC1E8();
        v275 = v285;
      }

      sub_1ABA9F738();
      if (v256)
      {
        sub_1ABAA3A24(v284);
        sub_1ABADC1E8();
        v275 = v286;
      }

      *(v275 + 16) = v272;
      sub_1ABA935AC();
      sub_1ABAABD3C();
      sub_1ABAE2F1C();
      v228 = v206;
    }
  }

  v287 = sub_1ABA83A08();
  v928[1] = sub_1ABBFA7D0(v287);
  v288 = sub_1ABA973BC();
  v290 = [v288 v289];
  sub_1ABAFF390(0, &qword_1EB4D9AE0, off_1E7960348);
  sub_1ABA895D4();
  v932 = v291;
  v292 = sub_1ABF240D4();

  sub_1ABAAB7C8(v292);
  sub_1ABAB5388();
  sub_1ABDD36EC(MEMORY[0x1E69E7CC0]);
  while (v183 != v228)
  {
    sub_1ABA9E354();
    if (v293)
    {
      sub_1ABA8D01C();
    }

    else
    {
      sub_1ABDD3668();
      if (v256)
      {
        goto LABEL_508;
      }

      sub_1ABA8D2C0();
    }

    sub_1ABA9ED90();
    if (v231)
    {
      goto LABEL_507;
    }

    sub_1ABDC3558(&v945[1], [v290 bucket]);
    v204 = v945[1];
    [v290 bucketValue];
    v294 = 0x1E696B058uLL;
    v295 = [objc_opt_self() meters];
    v296 = sub_1ABA9E240();
    v297 = sub_1ABAFF390(v296, &qword_1EB4CE6D8, 0x1E696B058);
    sub_1ABA8ADE0(v297, v297);

    sub_1ABA8A22C();
    sub_1ABDD38A8();
    v299 = sub_1ABA8A9E4(v298);
    v300(v299);
    sub_1ABA97058(&v944);
    v301 = sub_1ABA9F7F0();
    sub_1ABAA1838(v301);
    if (v218)
    {
      sub_1ABAB480C(v290, &qword_1EB4D9988, &qword_1ABF617D8);
      ++v228;
    }

    else
    {
      sub_1ABAE2F1C();
      sub_1ABA9E464(&a25);
      v302 = swift_isUniquelyReferenced_nonNull_native();
      if ((v302 & 1) == 0)
      {
        sub_1ABA80DB8();
        sub_1ABADC1C4();
        v294 = v304;
      }

      sub_1ABA9F738();
      if (v256)
      {
        sub_1ABAA3A24(v303);
        sub_1ABADC1C4();
        v294 = v305;
      }

      *(v294 + 16) = v290;
      sub_1ABA935AC();
      sub_1ABAABD3C();
      sub_1ABAE2F1C();
      v228 = v206;
    }
  }

  v306 = sub_1ABA83A08();
  v928[0] = sub_1ABBFA7F8(v306);
  v307 = sub_1ABA973BC();
  v309 = [v307 v308];
  v310 = sub_1ABF240D4();

  sub_1ABAAB7C8(v310);
  sub_1ABAB5388();
  sub_1ABDD36EC(MEMORY[0x1E69E7CC0]);
  while (v183 != v228)
  {
    sub_1ABA9E354();
    if (v311)
    {
      sub_1ABA8D01C();
    }

    else
    {
      sub_1ABDD3668();
      if (v256)
      {
        goto LABEL_510;
      }

      sub_1ABA8D2C0();
    }

    sub_1ABA9ED90();
    if (v231)
    {
      goto LABEL_509;
    }

    sub_1ABDC3558(&v945[1], [v309 bucket]);
    v204 = v945[1];
    [v309 bucketValue];
    v312 = 0x1E696B008uLL;
    v313 = [objc_opt_self() seconds];
    v314 = sub_1ABA9E240();
    v315 = sub_1ABAFF390(v314, &qword_1EB4CE6B8, 0x1E696B008);
    sub_1ABA8ADE0(v315, v315);

    sub_1ABA8A22C();
    sub_1ABDD38A8();
    v317 = sub_1ABA8A9E4(v316);
    v318(v317);
    sub_1ABA97058(&v940);
    v319 = sub_1ABA9F7F0();
    sub_1ABAA1838(v319);
    if (v218)
    {
      sub_1ABAB480C(v309, &qword_1EB4D9980, &qword_1ABF617D0);
      ++v228;
    }

    else
    {
      sub_1ABAE2F1C();
      sub_1ABA9E464(&a25);
      v320 = swift_isUniquelyReferenced_nonNull_native();
      if ((v320 & 1) == 0)
      {
        sub_1ABA80DB8();
        sub_1ABADC1A0();
        v312 = v322;
      }

      sub_1ABA9F738();
      if (v256)
      {
        sub_1ABAA3A24(v321);
        sub_1ABADC1A0();
        v312 = v323;
      }

      *(v312 + 16) = v309;
      sub_1ABA935AC();
      sub_1ABAABD3C();
      sub_1ABAE2F1C();
      v228 = v206;
    }
  }

  v324 = sub_1ABA83A08();
  v927 = sub_1ABBFA820(v324);
  v325 = v896;
  v326 = [v896 roadDistancesInMeters];
  v926 = sub_1ABF23974();

  v327 = [v325 roadTimes];
  v925 = sub_1ABF23974();

  v328 = [v325 roadSpeedBuckets];
  v329 = sub_1ABAD219C(&qword_1EB4D9B00, &qword_1ABF62308);
  v330 = sub_1ABDD39C4(v329);

  sub_1ABAA020C();
  sub_1ABDC2260(v330, v331);
  v924 = v332;

  v333 = [v325 roadRelativeSpeedBuckets];
  v334 = sub_1ABAD219C(&qword_1EB4D9B08, &qword_1ABF62310);
  v335 = sub_1ABDD39C4(v334);

  sub_1ABA8B754();
  sub_1ABDC2260(v335, v336);
  v923 = v337;
  v919 = 0;

  v338 = [v325 distancePerRoadType];
  sub_1ABAFF390(0, &qword_1EB4D9AE8, off_1E7960358);
  sub_1ABA895D4();
  v934 = v339;
  v340 = sub_1ABF240D4();

  v341 = sub_1ABAAB7C8(v340);
  v342 = 0;
  v935 = (v340 & 0xC000000000000001);
  v343 = (v340 & 0xFFFFFFFFFFFFFF8);
  v344 = MEMORY[0x1E69E7CC0];
  while (v341 != v342)
  {
    sub_1ABA9E354();
    if (v345)
    {
      v351 = sub_1ABA8B14C();
      v346 = MEMORY[0x1AC5AA170](v351);
    }

    else
    {
      if (v342 >= *((v340 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_512;
      }

      v346 = *(v340 + 8 * v342 + 32);
    }

    v347 = v346;
    if (__OFADD__(v342, 1))
    {
      goto LABEL_511;
    }

    sub_1ABDC2D9C(&v945[1], [v346 type]);
    v204 = v945[1];
    [v347 typeValue];
    v348 = [objc_opt_self() meters];
    sub_1ABAFF390(0, &qword_1EB4CE6D8, 0x1E696B058);
    v349 = v938;
    sub_1ABDD387C();
    sub_1ABF218B4();

    *v349 = v204;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1ABA80DB8();
      sub_1ABADC17C();
      v344 = v352;
    }

    v206 = *(v344 + 16);
    v350 = *(v344 + 24);
    if (v206 >= v350 >> 1)
    {
      sub_1ABAA3A24(v350);
      sub_1ABADC17C();
      v344 = v353;
    }

    *(v344 + 16) = v206 + 1;
    sub_1ABA935AC();
    sub_1ABA9F3D0();
    sub_1ABAE2F1C();
    ++v342;
  }

  v922 = sub_1ABBFA848(v344);
  v354 = sub_1ABA973BC();
  v356 = [v354 v355];
  sub_1ABAFF390(0, &qword_1EB4D9AF0, off_1E7960480);
  sub_1ABA895D4();
  v935 = v357;
  v358 = sub_1ABF240D4();

  sub_1ABAAB7C8(v358);
  sub_1ABDD3948();
  v938 = MEMORY[0x1E69E7CC0];
  while (v342 != v343)
  {
    if ((v358 & 0xC000000000000001) != 0)
    {
      sub_1ABA8D01C();
    }

    else
    {
      if (v343 >= *((v358 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_514;
      }

      v359 = sub_1ABA8D2C0();
    }

    v360 = v359;
    if (__OFADD__(v343, 1))
    {
      goto LABEL_513;
    }

    sub_1ABDC3AAC(&v945[1], [v359 type]);
    v204 = v945[1];
    [v360 typeValue];
    v361 = [objc_opt_self() meters];
    v362 = sub_1ABA9E240();
    sub_1ABAFF390(v362, &qword_1EB4CE6D8, 0x1E696B058);
    v206 = v903;
    sub_1ABF218B4();

    sub_1ABA8A22C();
    v363 = v904;
    *v904 = v204;
    (*v941)(&v363[v364], v206, v942);
    sub_1ABDD38D4(&v933);
    sub_1ABA88F10();
    sub_1ABA9FAA4();
    sub_1ABA7B9B4(v365, v366, v367, v368);
    sub_1ABA8A578(v360, 1, v204);
    if (v218)
    {
      sub_1ABAB480C(v360, &qword_1EB4D9A08, &unk_1ABF61920);
      ++v343;
    }

    else
    {
      sub_1ABAE2F1C();
      v204 = v938;
      v369 = swift_isUniquelyReferenced_nonNull_native();
      if ((v369 & 1) == 0)
      {
        sub_1ABA7BEF0();
        sub_1ABADC158();
        v204 = v372;
      }

      v371 = *(v204 + 16);
      v370 = *(v204 + 24);
      if (v371 >= v370 >> 1)
      {
        sub_1ABA7DC80(v370);
        sub_1ABADC158();
        v204 = v373;
      }

      *(v204 + 16) = v371 + 1;
      sub_1ABA935AC();
      v938 = v204;
      sub_1ABAE2F1C();
      ++v343;
    }
  }

  v921 = sub_1ABBFA870(v938);
  v374 = sub_1ABA973BC();
  v376 = [v374 v375];
  sub_1ABAFF390(0, &qword_1EB4D9AF8, off_1E79603A8);
  sub_1ABA895D4();
  v931 = v377;
  v378 = sub_1ABF240D4();

  sub_1ABAAB7C8(v378);
  sub_1ABDD3948();
  v938 = MEMORY[0x1E69E7CC0];
  while (v342 != v343)
  {
    if ((v378 & 0xC000000000000001) != 0)
    {
      sub_1ABA8D01C();
    }

    else
    {
      if (v343 >= *((v378 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_516;
      }

      sub_1ABA8D2C0();
    }

    sub_1ABA9ED90();
    if (v231)
    {
      goto LABEL_515;
    }

    [v376 type];
    sub_1ABA937A0();
    sub_1ABDC3868(&v945[1]);
    v379 = v945[1];
    [v376 typeValue];
    v204 = 0x1E696B058uLL;
    v380 = [objc_opt_self() meters];
    v381 = sub_1ABA89364();
    sub_1ABAFF390(v381, &qword_1EB4CE6D8, 0x1E696B058);
    sub_1ABA8BD58();
    sub_1ABF218B4();

    sub_1ABA8A22C();
    *v902 = v379;
    v382 = v901;
    v384 = sub_1ABAB3C2C(v383);
    v385(v384);
    v376 = v900;
    sub_1ABDD36B0();
    swift_dynamicCast();
    sub_1ABA898F8();
    sub_1ABA7B9B4(v386, v387, v388, v389);
    sub_1ABDD368C();
    sub_1ABA8A578(v390, v391, v392);
    if (v218)
    {
      sub_1ABAB480C(v382, &qword_1EB4D9A18, &unk_1ABF61940);
      ++v343;
    }

    else
    {
      sub_1ABAE2F1C();
      v393 = v938;
      v394 = swift_isUniquelyReferenced_nonNull_native();
      if ((v394 & 1) == 0)
      {
        sub_1ABA80DB8();
        sub_1ABADC134();
        v393 = v397;
      }

      v396 = *(v393 + 16);
      v395 = *(v393 + 24);
      v376 = (v396 + 1);
      if (v396 >= v395 >> 1)
      {
        sub_1ABAA3A24(v395);
        sub_1ABADC134();
        v393 = v398;
      }

      *(v393 + 16) = v376;
      sub_1ABA935AC();
      v938 = v393;
      sub_1ABA9F3D0();
      sub_1ABAE2F1C();
      v343 = v206;
    }
  }

  v938 = sub_1ABBFA898(v938);
  v399 = sub_1ABA973BC();
  v401 = [v399 v400];
  v402 = sub_1ABF240D4();

  v403 = sub_1ABAAB7C8(v402);
  v404 = 0;
  v942 = v402 & 0xC000000000000001;
  v405 = MEMORY[0x1E69E7CC0];
  while (v403 != v404)
  {
    if (v942)
    {
      v411 = sub_1ABA8B14C();
      v406 = MEMORY[0x1AC5AA170](v411);
    }

    else
    {
      if (v404 >= *((v402 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_518;
      }

      v406 = *(v402 + 8 * v404 + 32);
    }

    v407 = v406;
    if (__OFADD__(v404, 1))
    {
      goto LABEL_517;
    }

    sub_1ABDC2D9C(&v945[1], [v406 type]);
    v204 = v945[1];
    [v407 typeValue];
    v408 = [objc_opt_self() seconds];
    sub_1ABAFF390(0, &qword_1EB4CE6B8, 0x1E696B008);
    v343 = v937;
    sub_1ABDD387C();
    sub_1ABF218B4();

    *v343 = v204;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1ABA80DB8();
      sub_1ABADC110();
      v405 = v412;
    }

    v410 = *(v405 + 16);
    v409 = *(v405 + 24);
    if (v410 >= v409 >> 1)
    {
      sub_1ABAA3A24(v409);
      sub_1ABADC110();
      v405 = v413;
    }

    *(v405 + 16) = v410 + 1;
    sub_1ABA935AC();
    sub_1ABA9F3D0();
    sub_1ABAE2F1C();
    ++v404;
  }

  v937 = sub_1ABBFA8C0(v405);
  v414 = sub_1ABA973BC();
  v416 = [v414 v415];
  v417 = sub_1ABDD3A44(v416);

  sub_1ABAAB7C8(v417);
  sub_1ABDD3948();
  v418 = v417 & 0xC000000000000001;
  v942 = MEMORY[0x1E69E7CC0];
  while (v404 != v343)
  {
    if (v418)
    {
      sub_1ABA8D01C();
    }

    else
    {
      if (v343 >= *((v417 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_520;
      }

      v419 = sub_1ABA8D2C0();
    }

    v416 = v419;
    if (__OFADD__(v343, 1))
    {
      goto LABEL_519;
    }

    sub_1ABDC3AAC(&v945[1], [v419 type]);
    v204 = v945[1];
    [v416 typeValue];
    v420 = [objc_opt_self() seconds];
    v421 = sub_1ABA9E240();
    sub_1ABAFF390(v421, &qword_1EB4CE6B8, 0x1E696B008);
    v403 = v897;
    sub_1ABF218B4();

    sub_1ABA8A22C();
    v422 = v898;
    *v898 = v204;
    (*v939)(&v422[v423], v403, v940);
    sub_1ABDD38D4(&v922);
    sub_1ABA88F10();
    sub_1ABA9FAA4();
    sub_1ABA7B9B4(v424, v425, v426, v427);
    sub_1ABA8A578(v416, 1, v204);
    if (v218)
    {
      sub_1ABAB480C(v416, &qword_1EB4D99F0, &unk_1ABF618D0);
      ++v343;
    }

    else
    {
      sub_1ABAE2F1C();
      v403 = v942;
      v428 = swift_isUniquelyReferenced_nonNull_native();
      if ((v428 & 1) == 0)
      {
        sub_1ABA7BEF0();
        sub_1ABADC0EC();
        v403 = v431;
      }

      v430 = *(v403 + 16);
      v429 = *(v403 + 24);
      v416 = (v430 + 1);
      if (v430 >= v429 >> 1)
      {
        sub_1ABA7DC80(v429);
        sub_1ABADC0EC();
        v403 = v432;
      }

      *(v403 + 16) = v416;
      sub_1ABA935AC();
      v942 = v403;
      sub_1ABAE2F1C();
      ++v343;
    }
  }

  v920 = sub_1ABBFA8E8(v942);
  v433 = sub_1ABA973BC();
  v435 = sub_1ABDD3768([v433 v434]);

  sub_1ABAAB7C8(v435);
  sub_1ABDD3948();
  v436 = v435 & 0xC000000000000001;
  v942 = MEMORY[0x1E69E7CC0];
  while (v404 != v343)
  {
    if (v436)
    {
      sub_1ABA8D01C();
    }

    else
    {
      if (v343 >= *((v435 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_522;
      }

      sub_1ABA8D2C0();
    }

    sub_1ABA9ED90();
    if (v231)
    {
      goto LABEL_521;
    }

    [v416 type];
    sub_1ABA937A0();
    sub_1ABDC3868(&v945[1]);
    v437 = v945[1];
    [v416 typeValue];
    v204 = 0x1E696B008uLL;
    v438 = [objc_opt_self() seconds];
    v439 = sub_1ABA89364();
    sub_1ABAFF390(v439, &qword_1EB4CE6B8, 0x1E696B008);
    sub_1ABA8BD58();
    sub_1ABF218B4();

    sub_1ABA8A22C();
    *v895 = v437;
    v441 = sub_1ABAB3C2C(v440);
    v442(v441);
    v403 = v936;
    v416 = v894;
    sub_1ABDD36B0();
    swift_dynamicCast();
    sub_1ABA898F8();
    sub_1ABA7B9B4(v443, v444, v445, v446);
    sub_1ABDD368C();
    sub_1ABA8A578(v447, v448, v449);
    if (v218)
    {
      sub_1ABAB480C(v403, &qword_1EB4D99F8, &qword_1ABF618E8);
      ++v343;
    }

    else
    {
      sub_1ABAE2F1C();
      v450 = v942;
      v451 = swift_isUniquelyReferenced_nonNull_native();
      if ((v451 & 1) == 0)
      {
        sub_1ABA7BEF0();
        sub_1ABADC0C8();
        v450 = v453;
      }

      v403 = *(v450 + 16);
      v452 = *(v450 + 24);
      v416 = (v403 + 1);
      if (v403 >= v452 >> 1)
      {
        sub_1ABA7DC80(v452);
        sub_1ABADC0C8();
        v450 = v454;
      }

      *(v450 + 16) = v416;
      sub_1ABA935AC();
      v942 = v450;
      sub_1ABA89A5C();
      sub_1ABAE2F1C();
      v343 = v418;
    }
  }

  v455 = sub_1ABBFA910(v942);
  v456 = sub_1ABA973BC();
  v460 = sub_1ABDD3070(v456, v457, v458, v459);
  if (v460)
  {
    v461 = v460;
    sub_1ABAAB7C8(v460);
    sub_1ABAB6984();
    v942 = MEMORY[0x1E69E7CC0];
    while (v435 != v403)
    {
      if (v204)
      {
        sub_1ABA91014();
      }

      else
      {
        if (v403 >= *((v461 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_554;
        }

        sub_1ABA8D424();
      }

      sub_1ABA89CF0();
      if (v231)
      {
        goto LABEL_553;
      }

      [v436 intValue];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v464 = sub_1ABA7C494();
        sub_1ABAD89C8(v464, v465, v466, v467);
        v942 = v468;
      }

      v463 = *(v942 + 16);
      v462 = *(v942 + 24);
      v436 = v463 + 1;
      if (v463 >= v462 >> 1)
      {
        v469 = sub_1ABA7DD04(v462);
        sub_1ABAD89C8(v469, v470, v471, v942);
        v942 = v472;
      }

      sub_1ABDD3894(v942);
    }
  }

  else
  {
    v942 = 0;
  }

  v473 = sub_1ABA973BC();
  v477 = sub_1ABDD3070(v473, v474, v475, v476);
  v939 = v455;
  if (v477)
  {
    v478 = v477;
    sub_1ABAAB7C8(v477);
    sub_1ABAB6984();
    v941 = MEMORY[0x1E69E7CC0];
    while (v435 != v403)
    {
      if (v204)
      {
        sub_1ABA91014();
      }

      else
      {
        if (v403 >= *((v478 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_556;
        }

        sub_1ABA8D424();
      }

      sub_1ABA89CF0();
      if (v231)
      {
        goto LABEL_555;
      }

      [v436 intValue];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v481 = sub_1ABA7C494();
        sub_1ABAD89C8(v481, v482, v483, v484);
        v941 = v485;
      }

      v480 = *(v941 + 16);
      v479 = *(v941 + 24);
      v436 = v480 + 1;
      if (v480 >= v479 >> 1)
      {
        v486 = sub_1ABA7DD04(v479);
        sub_1ABAD89C8(v486, v487, v488, v941);
        v941 = v489;
      }

      sub_1ABDD3894(v941);
    }
  }

  else
  {
    v941 = 0;
  }

  v490 = sub_1ABA973BC();
  v492 = sub_1ABDD37A0([v490 v491]);

  sub_1ABAAB7C8(v492);
  sub_1ABAA1A80();
  v940 = MEMORY[0x1E69E7CC0];
  while (v435 != v455)
  {
    if (v204)
    {
      sub_1ABDD3650();
    }

    else
    {
      sub_1ABA897D8();
      if (v256)
      {
        goto LABEL_524;
      }

      sub_1ABAA0DBC();
    }

    sub_1ABA8A424();
    if (v231)
    {
      goto LABEL_523;
    }

    sub_1ABDC3454(v945, [v436 bucket]);
    [v436 bucketValue];

    sub_1ABA89E2C();
    sub_1ABAD219C(&qword_1EB4D9B78, &qword_1ABF62378);
    v493 = sub_1ABA8B960();
    if ((sub_1ABA97918(v493) & 1) != 0 && (v436 = v945[1], v945[1] != 9))
    {
      if ((sub_1ABA89328() & 1) == 0)
      {
        v495 = sub_1ABA8C30C();
        sub_1ABADBFB8(v495, v496, v497, v498);
        v940 = v499;
      }

      sub_1ABAA1D30();
      if (v256)
      {
        v500 = sub_1ABAA3618(v494);
        sub_1ABADBFB8(v500, v501, v502, v503);
        v940 = v504;
      }

      sub_1ABAA4AD8();
    }

    else
    {
      ++v455;
    }
  }

  v936 = sub_1ABBFA5D4(v940);
  v505 = sub_1ABA973BC();
  v507 = [v505 v506];
  sub_1ABDD36C8();
  v508 = sub_1ABF240D4();

  sub_1ABAAB7C8(v508);
  sub_1ABAB6984();
  v940 = MEMORY[0x1E69E7CC0];
  v509 = &unk_1ABF62390;
  while (v507 != v403)
  {
    if (v204)
    {
      sub_1ABA91014();
    }

    else
    {
      sub_1ABDD37F8();
      if (v256)
      {
        goto LABEL_526;
      }

      sub_1ABA8D424();
    }

    sub_1ABDD37EC();
    if (v231)
    {
      goto LABEL_525;
    }

    [v436 bucket];
    sub_1ABA7EA08();
    sub_1ABDC3868(v945);
    [v436 bucketValue];

    sub_1ABDD36BC();
    v436 = sub_1ABAD219C(&qword_1EB4D9B88, &qword_1ABF62388);
    v510 = sub_1ABA82ED0();
    v512 = sub_1ABAD219C(v510, v511);
    if ((sub_1ABA97918(v512) & 1) == 0 || (sub_1ABA890CC(), v218))
    {
      ++v403;
    }

    else
    {
      v513 = sub_1ABA89328();
      if ((v513 & 1) == 0)
      {
        v515 = sub_1ABA8C30C();
        sub_1ABADBFCC(v515, v516, v517, v518);
        v940 = v519;
      }

      sub_1ABAB6690();
      if (v256)
      {
        v520 = sub_1ABA96DE0(v514);
        sub_1ABADBFCC(v520, v521, v522, v940);
        v940 = v523;
      }

      sub_1ABAA0F94();
    }
  }

  v918 = sub_1ABBFA5AC(v940);
  v524 = sub_1ABA973BC();
  v526 = sub_1ABDD3784([v524 v525]);

  sub_1ABAAB7C8(v526);
  sub_1ABAA1A80();
  v940 = MEMORY[0x1E69E7CC0];
  while (v507 != v509)
  {
    if (v204)
    {
      sub_1ABDD3650();
    }

    else
    {
      sub_1ABA897D8();
      if (v256)
      {
        goto LABEL_528;
      }

      sub_1ABAA0DBC();
    }

    sub_1ABA8A424();
    if (v231)
    {
      goto LABEL_527;
    }

    sub_1ABDC3558(v945, [v436 bucket]);
    [v436 bucketValue];

    sub_1ABA89E2C();
    sub_1ABAD219C(&qword_1EB4D9B98, &qword_1ABF62398);
    v527 = sub_1ABA8B960();
    if ((sub_1ABA97918(v527) & 1) != 0 && (v436 = v945[1], v945[1] != 7))
    {
      if ((sub_1ABA89328() & 1) == 0)
      {
        v529 = sub_1ABA8C30C();
        sub_1ABADBFA4(v529, v530, v531, v532);
        v940 = v533;
      }

      sub_1ABAA1D30();
      if (v256)
      {
        v534 = sub_1ABAA3618(v528);
        sub_1ABADBFA4(v534, v535, v536, v537);
        v940 = v538;
      }

      sub_1ABAA4AD8();
    }

    else
    {
      ++v509;
    }
  }

  v539 = sub_1ABBFA690(v940);
  v540 = sub_1ABA973BC();
  v542 = sub_1ABA88D98([v540 v541]);

  sub_1ABAAB7C8(v542);
  sub_1ABA9FDF0();
  v543 = v542 & 0xFFFFFFFFFFFFFF8;
  v544 = MEMORY[0x1E69E7CC0];
  while (v507 != v403)
  {
    if ((v542 & 0xC000000000000001) != 0)
    {
      sub_1ABA91014();
    }

    else
    {
      if (v403 >= *((v542 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_530;
      }

      sub_1ABA8D424();
    }

    sub_1ABA89CF0();
    if (v231)
    {
      goto LABEL_529;
    }

    sub_1ABDC2D9C(&v945[1], [v436 type]);
    [v436 typeValue];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v546 = sub_1ABA7BEF0();
      sub_1ABADBFE0(v546, v547, v548, v544);
      v544 = v549;
    }

    sub_1ABDD3610();
    if (v256)
    {
      v550 = sub_1ABA7DD04(v545);
      sub_1ABADBFE0(v550, v551, v552, v544);
      v544 = v553;
    }

    sub_1ABAA0954();
  }

  v917 = v539;

  v916 = sub_1ABBFA6B8(v544);
  v554 = sub_1ABA973BC();
  v556 = [v554 v555];
  v557 = sub_1ABDD3A44(v556);

  sub_1ABAAB7C8(v557);
  sub_1ABAA1A80();
  v940 = MEMORY[0x1E69E7CC0];
  while (v556 != v539)
  {
    if (v543)
    {
      sub_1ABDD3650();
    }

    else
    {
      sub_1ABA897D8();
      if (v256)
      {
        goto LABEL_532;
      }

      sub_1ABAA0DBC();
    }

    sub_1ABA8A424();
    if (v231)
    {
      goto LABEL_531;
    }

    sub_1ABDC3AAC(v945, [v436 type]);
    [v436 typeValue];

    sub_1ABA89E2C();
    sub_1ABAD219C(&qword_1EB4D9BA8, &qword_1ABF623A8);
    v558 = sub_1ABA8B960();
    if ((sub_1ABA97918(v558) & 1) != 0 && (v436 = v945[1], v945[1] != 8))
    {
      if ((sub_1ABA89328() & 1) == 0)
      {
        v560 = sub_1ABA8C30C();
        sub_1ABADBFF4(v560, v561, v562, v563);
        v940 = v564;
      }

      sub_1ABAA1D30();
      if (v256)
      {
        v565 = sub_1ABAA3618(v559);
        sub_1ABADBFF4(v565, v566, v567, v568);
        v940 = v569;
      }

      sub_1ABAA4AD8();
    }

    else
    {
      ++v539;
    }
  }

  v915 = sub_1ABBFA6E0(v940);
  v570 = sub_1ABA973BC();
  v572 = [v570 v571];
  v573 = sub_1ABF240D4();

  sub_1ABAAB7C8(v573);
  sub_1ABAB6984();
  v940 = MEMORY[0x1E69E7CC0];
  v574 = &qword_1ABF623C0;
  while (v572 != v403)
  {
    if (v543)
    {
      sub_1ABA91014();
    }

    else
    {
      sub_1ABDD37F8();
      if (v256)
      {
        goto LABEL_534;
      }

      sub_1ABA8D424();
    }

    sub_1ABDD37EC();
    if (v231)
    {
      goto LABEL_533;
    }

    [v436 type];
    sub_1ABA937A0();
    sub_1ABDC3868(v945);
    [v436 typeValue];

    sub_1ABDD36BC();
    v436 = sub_1ABAD219C(&qword_1EB4D9BB8, &qword_1ABF623B8);
    v575 = sub_1ABA82ED0();
    v577 = sub_1ABAD219C(v575, v576);
    if ((sub_1ABA97918(v577) & 1) == 0 || (sub_1ABA890CC(), v218))
    {
      ++v403;
    }

    else
    {
      v578 = sub_1ABA89328();
      if ((v578 & 1) == 0)
      {
        v580 = sub_1ABA8C30C();
        sub_1ABADC008(v580, v581, v582, v583);
        v940 = v584;
      }

      sub_1ABAB6690();
      if (v256)
      {
        v585 = sub_1ABA96DE0(v579);
        sub_1ABADC008(v585, v586, v587, v940);
        v940 = v588;
      }

      sub_1ABAA0F94();
    }
  }

  v914 = sub_1ABBFA708(v940);
  v589 = sub_1ABA973BC();
  v591 = sub_1ABDD37A0([v589 v590]);

  sub_1ABAAB7C8(v591);
  sub_1ABAA1A80();
  v940 = MEMORY[0x1E69E7CC0];
  while (v572 != v574)
  {
    if (v543)
    {
      sub_1ABDD3650();
    }

    else
    {
      sub_1ABA897D8();
      if (v256)
      {
        goto LABEL_536;
      }

      sub_1ABAA0DBC();
    }

    sub_1ABA8A424();
    if (v231)
    {
      goto LABEL_535;
    }

    sub_1ABDC3454(v945, [v436 bucket]);
    [v436 bucketValue];

    sub_1ABA89E2C();
    sub_1ABAD219C(&qword_1EB4D9B78, &qword_1ABF62378);
    v592 = sub_1ABA8B960();
    if ((sub_1ABA97918(v592) & 1) != 0 && (v436 = v945[1], v945[1] != 9))
    {
      if ((sub_1ABA89328() & 1) == 0)
      {
        v594 = sub_1ABA8C30C();
        sub_1ABADBFB8(v594, v595, v596, v597);
        v940 = v598;
      }

      sub_1ABAA1D30();
      if (v256)
      {
        v599 = sub_1ABAA3618(v593);
        sub_1ABADBFB8(v599, v600, v601, v602);
        v940 = v603;
      }

      sub_1ABAA4AD8();
    }

    else
    {
      v574 = (v574 + 1);
    }
  }

  v913 = sub_1ABBFA5D4(v940);
  v604 = sub_1ABA973BC();
  v606 = [v604 v605];
  sub_1ABDD36C8();
  v607 = sub_1ABF240D4();

  sub_1ABAAB7C8(v607);
  sub_1ABAB6984();
  v940 = MEMORY[0x1E69E7CC0];
  v608 = &unk_1ABF62390;
  while (v606 != v403)
  {
    if (v543)
    {
      sub_1ABA91014();
    }

    else
    {
      sub_1ABDD37F8();
      if (v256)
      {
        goto LABEL_538;
      }

      sub_1ABA8D424();
    }

    sub_1ABDD37EC();
    if (v231)
    {
      goto LABEL_537;
    }

    [v436 bucket];
    sub_1ABA7EA08();
    sub_1ABDC3868(v945);
    [v436 bucketValue];

    sub_1ABDD36BC();
    v436 = sub_1ABAD219C(&qword_1EB4D9B88, &qword_1ABF62388);
    v609 = sub_1ABA82ED0();
    v611 = sub_1ABAD219C(v609, v610);
    if ((sub_1ABA97918(v611) & 1) == 0 || (sub_1ABA890CC(), v218))
    {
      ++v403;
    }

    else
    {
      v612 = sub_1ABA89328();
      if ((v612 & 1) == 0)
      {
        v614 = sub_1ABA8C30C();
        sub_1ABADBFCC(v614, v615, v616, v617);
        v940 = v618;
      }

      sub_1ABAB6690();
      if (v256)
      {
        v619 = sub_1ABA96DE0(v613);
        sub_1ABADBFCC(v619, v620, v621, v940);
        v940 = v622;
      }

      sub_1ABAA0F94();
    }
  }

  v912 = sub_1ABBFA5AC(v940);
  v623 = sub_1ABA973BC();
  v625 = sub_1ABDD3784([v623 v624]);

  sub_1ABAAB7C8(v625);
  sub_1ABAA1A80();
  v940 = MEMORY[0x1E69E7CC0];
  while (v606 != v608)
  {
    if (v543)
    {
      sub_1ABDD3650();
    }

    else
    {
      sub_1ABA897D8();
      if (v256)
      {
        goto LABEL_540;
      }

      sub_1ABAA0DBC();
    }

    sub_1ABA8A424();
    if (v231)
    {
      goto LABEL_539;
    }

    sub_1ABDC3558(v945, [v436 bucket]);
    [v436 bucketValue];

    sub_1ABA89E2C();
    sub_1ABAD219C(&qword_1EB4D9B98, &qword_1ABF62398);
    v626 = sub_1ABA8B960();
    if ((sub_1ABA97918(v626) & 1) != 0 && (v436 = v945[1], v945[1] != 7))
    {
      if ((sub_1ABA89328() & 1) == 0)
      {
        v628 = sub_1ABA8C30C();
        sub_1ABADBFA4(v628, v629, v630, v631);
        v940 = v632;
      }

      sub_1ABAA1D30();
      if (v256)
      {
        v633 = sub_1ABAA3618(v627);
        sub_1ABADBFA4(v633, v634, v635, v636);
        v940 = v637;
      }

      sub_1ABAA4AD8();
    }

    else
    {
      ++v608;
    }
  }

  v638 = sub_1ABBFA690(v940);
  v639 = sub_1ABA973BC();
  v641 = sub_1ABA88D98([v639 v640]);

  sub_1ABAAB7C8(v641);
  sub_1ABA9FDF0();
  v642 = v641 & 0xFFFFFFFFFFFFFF8;
  v643 = MEMORY[0x1E69E7CC0];
  while (v606 != v403)
  {
    if ((v641 & 0xC000000000000001) != 0)
    {
      sub_1ABA91014();
    }

    else
    {
      if (v403 >= *((v641 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_542;
      }

      sub_1ABA8D424();
    }

    sub_1ABA89CF0();
    if (v231)
    {
      goto LABEL_541;
    }

    sub_1ABDC2D9C(&v945[1], [v436 type]);
    [v436 typeValue];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v645 = sub_1ABA7BEF0();
      sub_1ABADBFE0(v645, v646, v647, v643);
      v643 = v648;
    }

    sub_1ABDD3610();
    if (v256)
    {
      v649 = sub_1ABA7DD04(v644);
      sub_1ABADBFE0(v649, v650, v651, v643);
      v643 = v652;
    }

    sub_1ABAA0954();
  }

  v911 = v638;

  v910 = sub_1ABBFA6B8(v643);
  v653 = sub_1ABA973BC();
  v655 = [v653 v654];
  v656 = sub_1ABDD3A44(v655);

  sub_1ABAAB7C8(v656);
  sub_1ABAA1A80();
  v940 = MEMORY[0x1E69E7CC0];
  while (v655 != v638)
  {
    if (v642)
    {
      sub_1ABDD3650();
    }

    else
    {
      sub_1ABA897D8();
      if (v256)
      {
        goto LABEL_544;
      }

      sub_1ABAA0DBC();
    }

    sub_1ABA8A424();
    if (v231)
    {
      goto LABEL_543;
    }

    sub_1ABDC3AAC(v945, [v436 type]);
    [v436 typeValue];

    sub_1ABA89E2C();
    sub_1ABAD219C(&qword_1EB4D9BA8, &qword_1ABF623A8);
    v657 = sub_1ABA8B960();
    if ((sub_1ABA97918(v657) & 1) != 0 && (v436 = v945[1], v945[1] != 8))
    {
      if ((sub_1ABA89328() & 1) == 0)
      {
        v659 = sub_1ABA8C30C();
        sub_1ABADBFF4(v659, v660, v661, v662);
        v940 = v663;
      }

      sub_1ABAA1D30();
      if (v256)
      {
        v664 = sub_1ABAA3618(v658);
        sub_1ABADBFF4(v664, v665, v666, v667);
        v940 = v668;
      }

      sub_1ABAA4AD8();
    }

    else
    {
      ++v638;
    }
  }

  v909 = sub_1ABBFA6E0(v940);
  v669 = sub_1ABA973BC();
  v671 = [v669 v670];
  v672 = sub_1ABF240D4();

  sub_1ABAAB7C8(v672);
  sub_1ABAB6984();
  v940 = MEMORY[0x1E69E7CC0];
  v673 = &qword_1ABF623C0;
  while (v671 != v403)
  {
    if (v642)
    {
      sub_1ABA91014();
    }

    else
    {
      sub_1ABDD37F8();
      if (v256)
      {
        goto LABEL_546;
      }

      sub_1ABA8D424();
    }

    sub_1ABDD37EC();
    if (v231)
    {
      goto LABEL_545;
    }

    [v436 type];
    sub_1ABA937A0();
    sub_1ABDC3868(v945);
    [v436 typeValue];

    sub_1ABDD36BC();
    v436 = sub_1ABAD219C(&qword_1EB4D9BB8, &qword_1ABF623B8);
    v674 = sub_1ABA82ED0();
    v676 = sub_1ABAD219C(v674, v675);
    if ((sub_1ABA97918(v676) & 1) == 0 || (sub_1ABA890CC(), v218))
    {
      ++v403;
    }

    else
    {
      v677 = sub_1ABA89328();
      if ((v677 & 1) == 0)
      {
        v679 = sub_1ABA8C30C();
        sub_1ABADC008(v679, v680, v681, v682);
        v940 = v683;
      }

      sub_1ABAB6690();
      if (v256)
      {
        v684 = sub_1ABA96DE0(v678);
        sub_1ABADC008(v684, v685, v686, v940);
        v940 = v687;
      }

      sub_1ABAA0F94();
    }
  }

  v908 = sub_1ABBFA708(v940);
  v688 = sub_1ABA973BC();
  v690 = sub_1ABDD37A0([v688 v689]);

  sub_1ABAAB7C8(v690);
  sub_1ABAA1A80();
  v940 = MEMORY[0x1E69E7CC0];
  while (v671 != v673)
  {
    if (v642)
    {
      sub_1ABDD3650();
    }

    else
    {
      sub_1ABA897D8();
      if (v256)
      {
        goto LABEL_548;
      }

      sub_1ABAA0DBC();
    }

    sub_1ABA8A424();
    if (v231)
    {
      goto LABEL_547;
    }

    sub_1ABDC3454(v945, [v436 bucket]);
    [v436 bucketValue];

    sub_1ABA89E2C();
    sub_1ABAD219C(&qword_1EB4D9B78, &qword_1ABF62378);
    v691 = sub_1ABA8B960();
    if ((sub_1ABA97918(v691) & 1) != 0 && (v436 = v945[1], v945[1] != 9))
    {
      if ((sub_1ABA89328() & 1) == 0)
      {
        v693 = sub_1ABA8C30C();
        sub_1ABADBFB8(v693, v694, v695, v696);
        v940 = v697;
      }

      sub_1ABAA1D30();
      if (v256)
      {
        v698 = sub_1ABAA3618(v692);
        sub_1ABADBFB8(v698, v699, v700, v701);
        v940 = v702;
      }

      sub_1ABAA4AD8();
    }

    else
    {
      v673 = (v673 + 1);
    }
  }

  v933 = sub_1ABBFA5D4(v940);
  v703 = sub_1ABA973BC();
  v705 = [v703 v704];
  sub_1ABDD36C8();
  v706 = sub_1ABF240D4();

  v707 = sub_1ABAAB7C8(v706);
  v708 = 0;
  v940 = MEMORY[0x1E69E7CC0];
  while (v707 != v708)
  {
    if ((v706 & 0xC000000000000001) != 0)
    {
      v709 = MEMORY[0x1AC5AA170](v708, v706);
    }

    else
    {
      if (v708 >= *((v706 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_550;
      }

      v709 = *(v706 + 8 * v708 + 32);
    }

    v710 = v709;
    v705 = (v708 + 1);
    if (__OFADD__(v708, 1))
    {
      goto LABEL_549;
    }

    [v709 bucket];
    sub_1ABA7EA08();
    sub_1ABDC3868(v945);
    [v710 bucketValue];
    v712 = v711;

    sub_1ABDD36BC();
    v436 = sub_1ABAD219C(&qword_1EB4D9B88, &qword_1ABF62388);
    v713 = sub_1ABA82ED0();
    v715 = sub_1ABAD219C(v713, v714);
    if ((sub_1ABA97918(v715) & 1) == 0 || (sub_1ABA890CC(), v218))
    {
      ++v708;
    }

    else
    {
      if ((sub_1ABA89328() & 1) == 0)
      {
        v720 = sub_1ABA8C30C();
        sub_1ABADBFCC(v720, v721, v722, v723);
        v940 = v724;
      }

      v717 = *(v940 + 16);
      v716 = *(v940 + 24);
      if (v717 >= v716 >> 1)
      {
        v725 = sub_1ABA96DE0(v716);
        sub_1ABADBFCC(v725, v726, v727, v940);
        v940 = v728;
      }

      v718 = v940;
      *(v940 + 16) = v717 + 1;
      v719 = v718 + 16 * v717;
      *(v719 + 32) = v436;
      *(v719 + 40) = v712;
      v708 = v705;
    }
  }

  v907 = sub_1ABBFA5AC(v940);
  v729 = sub_1ABA973BC();
  v731 = sub_1ABDD3784([v729 v730]);

  v732 = sub_1ABAAB7C8(v731);
  v733 = 0;
  v734 = (v731 & 0xFFFFFFFFFFFFFF8);
  v940 = MEMORY[0x1E69E7CC0];
  while (v732 != v733)
  {
    if ((v731 & 0xC000000000000001) != 0)
    {
      sub_1ABDD3650();
    }

    else
    {
      if (v733 >= *((v731 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_552;
      }

      sub_1ABAA0DBC();
    }

    sub_1ABA8A424();
    if (v231)
    {
      goto LABEL_551;
    }

    sub_1ABDC3558(v945, [v436 bucket]);
    [v436 bucketValue];

    sub_1ABA89E2C();
    sub_1ABAD219C(&qword_1EB4D9B98, &qword_1ABF62398);
    v735 = sub_1ABA8B960();
    if ((sub_1ABA97918(v735) & 1) != 0 && (v436 = v945[1], v945[1] != 7))
    {
      if ((sub_1ABA89328() & 1) == 0)
      {
        v737 = sub_1ABA8C30C();
        sub_1ABADBFA4(v737, v738, v739, v740);
        v940 = v741;
      }

      sub_1ABAA1D30();
      if (v256)
      {
        v742 = sub_1ABAA3618(v736);
        sub_1ABADBFA4(v742, v743, v744, v745);
        v940 = v746;
      }

      sub_1ABAA4AD8();
    }

    else
    {
      ++v733;
    }
  }

  v747 = sub_1ABBFA690(v940);
  v748 = sub_1ABA973BC();
  v750 = sub_1ABA88D98([v748 v749]);

  sub_1ABAAB7C8(v750);
  sub_1ABA9FDF0();
  v751 = MEMORY[0x1E69E7CC0];
  while (v734 != v732)
  {
    if ((v750 & 0xC000000000000001) != 0)
    {
      sub_1ABA91014();
    }

    else
    {
      if (v732 >= *((v750 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_558;
      }

      sub_1ABA8D424();
    }

    sub_1ABA89CF0();
    if (v231)
    {
      goto LABEL_557;
    }

    sub_1ABDC2D9C(&v945[1], [v436 type]);
    [v436 typeValue];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v753 = sub_1ABA7BEF0();
      sub_1ABADBFE0(v753, v754, v755, v751);
      v751 = v756;
    }

    sub_1ABDD3610();
    if (v256)
    {
      v757 = sub_1ABA7DD04(v752);
      sub_1ABADBFE0(v757, v758, v759, v751);
      v751 = v760;
    }

    sub_1ABAA0954();
  }

  v934 = v747;

  v932 = sub_1ABBFA6B8(v751);
  v761 = sub_1ABA973BC();
  v763 = [v761 v762];
  v764 = sub_1ABDD3A44(v763);

  v765 = sub_1ABAAB7C8(v764);
  v766 = 0;
  v940 = MEMORY[0x1E69E7CC0];
  while (v765 != v766)
  {
    if ((v764 & 0xC000000000000001) != 0)
    {
      v767 = MEMORY[0x1AC5AA170](v766, v764);
    }

    else
    {
      if (v766 >= *((v764 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_560;
      }

      v767 = *(v764 + 8 * v766 + 32);
    }

    v768 = v767;
    v763 = (v766 + 1);
    if (__OFADD__(v766, 1))
    {
      goto LABEL_559;
    }

    sub_1ABDC3AAC(v945, [v767 type]);
    v751 = v945[0];
    [v768 typeValue];
    v770 = v769;

    v943[0] = v751;
    v944 = v770;
    v436 = sub_1ABAD219C(&qword_1EB4D9BA8, &qword_1ABF623A8);
    v771 = sub_1ABDD36F8();
    v773 = sub_1ABAD219C(v771, v772);
    if ((sub_1ABA97918(v773) & 1) != 0 && (v436 = v945[1], v945[1] != 8))
    {
      if ((sub_1ABA89328() & 1) == 0)
      {
        v778 = sub_1ABA8C30C();
        sub_1ABADBFF4(v778, v779, v780, v781);
        v940 = v782;
      }

      v775 = *(v940 + 16);
      v774 = *(v940 + 24);
      v751 = v775 + 1;
      if (v775 >= v774 >> 1)
      {
        v783 = sub_1ABA7BBEC(v774);
        sub_1ABADBFF4(v783, v775 + 1, 1, v940);
        v940 = v784;
      }

      v776 = v940;
      *(v940 + 16) = v751;
      v777 = v776 + 16 * v775;
      *(v777 + 32) = v436;
      *(v777 + 40) = v770;
      v766 = v763;
    }

    else
    {
      ++v766;
    }
  }

  v935 = sub_1ABBFA6E0(v940);
  v785 = sub_1ABA973BC();
  v787 = sub_1ABDD3768([v785 v786]);

  v788 = sub_1ABAAB7C8(v787);
  v789 = 0;
  v940 = MEMORY[0x1E69E7CC0];
  while (v788 != v789)
  {
    if ((v787 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1AC5AA170](v789, v787);
    }

    else
    {
      if (v789 >= *((v787 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_562;
      }

      v790 = *(v787 + 8 * v789 + 32);
    }

    sub_1ABA8A424();
    if (v231)
    {
      goto LABEL_561;
    }

    [v436 type];
    sub_1ABA937A0();
    sub_1ABDC3868(v945);
    v791 = v945[0];
    [v436 typeValue];
    v793 = v792;

    v943[0] = v791;
    v944 = v793;
    v436 = sub_1ABAD219C(&qword_1EB4D9BB8, &qword_1ABF623B8);
    v794 = sub_1ABAD219C(&qword_1EB4D9BC0, &qword_1ABF623C0);
    if ((sub_1ABA97918(v794) & 1) == 0 || (sub_1ABA890CC(), v218))
    {
      ++v789;
    }

    else
    {
      if ((sub_1ABA89328() & 1) == 0)
      {
        v799 = sub_1ABA8C30C();
        sub_1ABADC008(v799, v800, v801, v802);
        v940 = v803;
      }

      v796 = *(v940 + 16);
      v795 = *(v940 + 24);
      if (v796 >= v795 >> 1)
      {
        v804 = sub_1ABA7DC80(v795);
        sub_1ABADC008(v804, v805, v806, v940);
        v940 = v807;
      }

      v797 = v940;
      *(v940 + 16) = v796 + 1;
      v798 = v797 + 16 * v796;
      *(v798 + 32) = v436;
      *(v798 + 40) = v793;
      v789 = v751;
    }
  }

  v808 = sub_1ABBFA708(v940);
  v809 = sub_1ABA973BC();
  v810 = sub_1ABDD30E0(v809);
  v940 = v808;
  if (v810)
  {
    v931 = sub_1ABDC2224(v810);
  }

  else
  {
    v931 = 0;
  }

  v811 = v874;
  v812 = v896;
  v813 = [v896 distanceInMeters];
  sub_1ABAFF390(0, &qword_1EB4CE6D8, 0x1E696B058);
  sub_1ABF218A4();

  v814 = [v812 elevationGainInMeters];
  sub_1ABF218A4();

  v815 = [v812 durationInSeconds];
  sub_1ABAFF390(0, &qword_1EB4CE6B8, 0x1E696B008);
  sub_1ABA7D000();
  sub_1ABF218A4();

  v816 = [v812 expectedDurationInSecondsNoTraffic];
  sub_1ABF218A4();

  v817 = [v812 averageSpeedInMetersPerSecond];
  sub_1ABAFF390(0, &qword_1EB4CE6F0, 0x1E696B078);
  sub_1ABF218A4();

  [v812 score];
  v818 = [v812 usageKwh];
  sub_1ABAFF390(0, &qword_1EB4CE6E0, 0x1E696B030);
  v819 = v873;
  sub_1ABA7D000();
  sub_1ABF218A4();

  v820 = [v812 optimalUsageKwh];
  sub_1ABF218A4();

  v919 = [v812 numBrakingEvents];
  v906 = [v812 numAccelEvents];
  v905 = [v812 numHighSpeedEvents];
  v821 = [v812 maxTripDistanceInMeters];
  v822 = v869;
  sub_1ABF218A4();

  v823 = [v812 avgTripDistanceInMeters];
  v824 = v870;
  sub_1ABF218A4();

  v825 = [v812 maxElevationGainInMeters];
  v826 = v871;
  sub_1ABF218A4();

  v827 = [v812 avgElevationGainInMeters];
  v828 = v872;
  sub_1ABF218A4();

  [v812 avgNumBrakingEvents];
  [v812 avgNumAccelEvents];
  [v812 avgNumHighSpeedEvents];
  [v812 mostEfficientDriveScore];
  type metadata accessor for KTSDataAggregateRepresentation(0);
  sub_1ABA90758();
  swift_allocObject();
  v867 = v931;
  v866 = v940;
  sub_1ABA9E354();
  v865 = v829;
  v864 = v932;
  v863 = v934;
  v862 = v907;
  v861 = v933;
  v860 = v908;
  v859 = v909;
  v858 = v910;
  v857 = v911;
  v856 = v912;
  v855 = v913;
  v854 = v914;
  v853 = v915;
  v852 = v916;
  v851 = v917;
  v850 = v918;
  v849 = v936;
  v848 = v941;
  v847 = v942;
  v846 = v925;
  v845 = v923;
  v844 = v924;
  v843 = v926;
  v842 = v905;
  v841 = v906;
  v840 = v919;
  v839 = v883;
  v838 = v939;
  v837 = v938;
  v836 = v920;
  v835 = v921;
  v834 = v937;
  v833 = v922;
  v832 = v927;
  v831 = v928[0];
  sub_1ABDD38C0();
  KTSDataAggregateRepresentation.init(startTime:endTime:distanceInMeters:elevationGainInMeters:distanceBuckets:durationInSeconds:expectedDurationInSecondsNoTraffic:distanceSpentInTrafficBuckets:timeSpentInTrafficBuckets:distanceSpentAtSpeedBuckets:timeSpentAtSpeedBuckets:distanceSpentAtRelativeSpeeds:timeSpentAtRelativeSpeeds:distancePerRoadType:timePerRoadType:distancePerWeatherType:timePerWeatherType:distancePerTerrainType:timePerTerrainType:averageSpeedInMetersPerSecond:score:usageKwh:optimalUsageKwh:numBrakingEvents:numAccelEvents:numHighSpeedEvents:roadDistancesInMeters:roadSpeedBuckets:roadRelativeSpeedBuckets:roadTimes:lifeEventIds:ktsSegmentIds:maxTripDistanceInMeters:avgTripDistanceInMeters:maxElevationGainInMeters:avgElevationGainInMeters:percentTimeSpentAtSpeedBuckets:percentTimeSpentAtTrafficBuckets:percentTimeSpentAtRelativeSpeeds:percentTimeSpentAtRoadTypes:percentTimeSpentInWeatherTypes:percentTimeSpentInTerrainTypes:percentDistanceTraveledAtSpeedBuckets:percentDistanceTraveledAtTrafficBuckets:p(v879, v880, v868, v881, v882, v893, v930, v929, v830, v831, v832, v833, v834, v835, v836, v837, v838, v839, v819, v811, v840, v841, v842, v843, v844, v845, v846, v847, v848, v822, v824, v826, v828, v849, v850, v851, v852, v853, v854, v855, v856, v857, v858, v859, v860, v861, v862, v863, v864, v865, v866, v867, v868, v869, v870, v871, v872, v873, v874, v875, v876, v877, v878);
  sub_1ABA8A204();
}