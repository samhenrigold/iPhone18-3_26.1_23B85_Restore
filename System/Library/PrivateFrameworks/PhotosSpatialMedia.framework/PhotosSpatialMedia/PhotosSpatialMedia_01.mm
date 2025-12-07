uint64_t _s10GyroFilterVwst(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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
      *(result + 80) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t SpatialPhoto.GyroCameraAnimator.__allocating_init(queue:motionType:changeHandler:)(void *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  SpatialPhoto.GyroCameraAnimator.init(queue:motionType:changeHandler:)(a1, a2, a3, a4);
  return v8;
}

uint64_t SpatialPhoto.GyroMotionType.hashValue.getter()
{
  v1 = *v0;
  sub_25E6D8414();
  MEMORY[0x25F8BC720](v1);
  return sub_25E6D8434();
}

uint64_t SpatialPhoto.GyroCameraAnimator.init(queue:motionType:changeHandler:)(void *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v8 = *a2;
  *(v4 + 48) = 0;
  *(v4 + 56) = 0x3FF0000000000000;
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  *(v4 + 72) = 0;
  *(v4 + 80) = 0;
  *(v4 + 64) = 0;
  v9 = [objc_allocWithZone(MEMORY[0x277CC1CD8]) init];
  PXSpatialPhotoConfigureMotionManager(v9);
  *(v4 + 96) = v9;
  *(v4 + 104) = 0;
  *(v4 + 112) = 0;
  *(v4 + 120) = 0;
  v10 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto18GyroCameraAnimator_deviceOrientationChangedDate;
  v11 = sub_25E6D7874();
  __swift_storeEnumTagSinglePayload(v4 + v10, 1, 1, v11);
  v12 = v4 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto18GyroCameraAnimator_previousDeviceOrientationRotation;
  *v12 = 0u;
  *(v12 + 16) = 0u;
  *(v12 + 32) = 1;
  *(v4 + 16) = a1;
  *(v4 + 24) = v8;
  v13 = a1;
  v14 = sub_25E6CDC3C(v13);

  *(v4 + 88) = v14;
  swift_beginAccess();
  v15 = *(v4 + 64);
  v16 = *(v4 + 72);
  *(v4 + 64) = a3;
  *(v4 + 72) = a4;
  sub_25E6C6FC8(a3, a4);
  sub_25E6BDF88(v15, v16);
  sub_25E6BDF88(a3, a4);
  return v4;
}

id sub_25E6CDC3C(uint64_t a1)
{
  sub_25E6BB770();
  v2 = sub_25E6D8274();
  v3 = sub_25E6D82D4();

  if (v3)
  {
    v4 = [objc_opt_self() mainQueue];

    return v4;
  }

  else
  {
    v6 = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
    [v6 setUnderlyingQueue_];
    return v6;
  }
}

uint64_t sub_25E6CDD30()
{
  result = swift_beginAccess();
  v2 = v0[4].n128_u64[0];
  if (v2)
  {
    v3 = v0[4].n128_i64[1];
    swift_beginAccess();
    v4 = v0[3];
    v5 = v0[2];

    v2(v0, v5, v4);
    return sub_25E6BDF88(v2, v3);
  }

  return result;
}

uint64_t sub_25E6CDDE8(__n128 a1, __n128 a2)
{
  swift_beginAccess();
  v2[2] = a1;
  v2[3] = a2;
  return sub_25E6CDD30();
}

uint64_t (*sub_25E6CDE28(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_6_1(v1 + 32, a1);
  return sub_25E6CDE74;
}

uint64_t sub_25E6CDE74(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_25E6CDD30();
  }

  return result;
}

uint64_t sub_25E6CDEA8@<X0>(uint64_t (**a1)()@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_25E6CDFA8(a2, a3);
  if (result)
  {
    v6 = result;
    v7 = v5;
    result = swift_allocObject();
    *(result + 16) = v6;
    *(result + 24) = v7;
    v8 = sub_25E6CFDB4;
  }

  else
  {
    v8 = 0;
  }

  *a1 = v8;
  a1[1] = result;
  return result;
}

uint64_t sub_25E6CDF18(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_25E6CFD74;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_25E6C6FC8(v1, v2);
  return sub_25E6CDFEC(v4, v3);
}

uint64_t sub_25E6CDFA8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_1(v2 + 64, a2);
  v3 = *(v2 + 64);
  sub_25E6C6FC8(v3, *(v2 + 72));
  return v3;
}

uint64_t sub_25E6CDFEC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_3_2(v2 + 64, a2);
  v5 = *(v2 + 64);
  v6 = *(v2 + 72);
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return sub_25E6BDF88(v5, v6);
}

void sub_25E6CE07C()
{
  v1 = v0;
  v2 = sub_25E6D7DF4();
  OUTLINED_FUNCTION_1_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4();
  v8 = v7 - v6;
  swift_beginAccess();
  if ((*(v1 + 80) & 1) == 0)
  {
    v9 = *(v1 + 96);
    if ([v9 isDeviceMotionAvailable])
    {
      if (PXSpatialPhotoWantsLightSourceReference())
      {
        v10 = *(v1 + 16);
        LOBYTE(aBlock[0]) = *(v1 + 24);
        _s17LightSubscriptionCMa();
        swift_allocObject();
        *(v1 + 112) = sub_25E6CF220(v10, aBlock);
      }

      [v9 setDeviceMotionUpdateInterval_];
      sub_25E6CE464();
      v11 = *(v1 + 88);
      v12 = swift_allocObject();
      swift_weakInit();
      aBlock[4] = sub_25E6CF5C0;
      aBlock[5] = v12;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_25E6CE350;
      aBlock[3] = &block_descriptor_1;
      v13 = _Block_copy(aBlock);

      [v9 startDeviceMotionUpdatesToQueue:v11 withHandler:v13];
      _Block_release(v13);
    }

    else
    {
      sub_25E6D7D04();
      v14 = sub_25E6D7DE4();
      v15 = sub_25E6D8224();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_25E6B5000, v14, v15, "GyroCameraAnimator device motion is not available", v16, 2u);
        OUTLINED_FUNCTION_4_2();
      }

      (*(v4 + 8))(v8, v2);
    }
  }
}

uint64_t sub_25E6CE2F0(uint64_t a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_25E6CE614(result, a2);
  }

  return result;
}

void sub_25E6CE350(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_25E6CE3DC(uint64_t a1, uint64_t a2)
{
  result = OUTLINED_FUNCTION_3_2(v2 + 80, a2);
  if (*(v2 + 80) == 1)
  {
    if (*(v2 + 112))
    {

      sub_25E6CF38C();
    }

    *(v2 + 112) = 0;

    *(v2 + 80) = 0;
    [*(v2 + 96) stopDeviceMotionUpdates];
    return sub_25E6CE464();
  }

  return result;
}

uint64_t sub_25E6CE464()
{
  v1 = v0[13];
  v0[13] = 0;

  OUTLINED_FUNCTION_3_2((v0 + 4), v2);
  v0[6] = 0;
  v0[7] = 0x3FF0000000000000;
  v0[4] = 0;
  v0[5] = 0;
  return sub_25E6CDD30();
}

uint64_t sub_25E6CE4CC(char a1, uint64_t a2)
{
  result = OUTLINED_FUNCTION_3_2(v2 + 80, a2);
  *(v2 + 80) = a1;
  return result;
}

uint64_t SpatialPhoto.GyroCameraAnimator.deinit()
{
  [*(v0 + 96) stopDeviceMotionUpdates];

  sub_25E6BDF88(*(v0 + 64), *(v0 + 72));

  sub_25E6C9520(v0 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto18GyroCameraAnimator_deviceOrientationChangedDate, &qword_27FD015C0, &qword_25E6DB640);
  return v0;
}

uint64_t SpatialPhoto.GyroCameraAnimator.__deallocating_deinit()
{
  SpatialPhoto.GyroCameraAnimator.deinit();

  return MEMORY[0x2821FE8D8](v0);
}

void sub_25E6CE614(uint64_t a1, void *a2)
{
  v3 = v2;
  v93 = sub_25E6D81D4();
  OUTLINED_FUNCTION_1_0();
  v92 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4();
  v91 = v8 - v7;
  v9 = sub_25E6D7874();
  OUTLINED_FUNCTION_1_0();
  v99 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4();
  v98 = v13 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD015C0, &qword_25E6DB640);
  MEMORY[0x28223BE20](v14 - 8);
  OUTLINED_FUNCTION_5_2();
  *&v97 = v15;
  MEMORY[0x28223BE20](v16);
  *&v96 = &v88 - v17;
  v18 = sub_25E6D7DF4();
  OUTLINED_FUNCTION_1_0();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_5_2();
  *&v94 = v22;
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v88 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v88 - v27;
  if (a2)
  {
    v29 = v9;
    v30 = a2;
    sub_25E6D7D04();
    v31 = a2;
    v32 = sub_25E6D7DE4();
    v33 = sub_25E6D8224();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v101 = v20;
      v35 = v18;
      v36 = v34;
      v37 = swift_slowAlloc();
      *v36 = 138412290;
      v38 = a2;
      v39 = _swift_stdlib_bridgeErrorToNSError();
      *(v36 + 4) = v39;
      *v37 = v39;
      _os_log_impl(&dword_25E6B5000, v32, v33, "PosterSpatialPhotoAnimator error: %@", v36, 0xCu);
      sub_25E6C9520(v37, &unk_27FD010F8, &unk_25E6DB850);
      OUTLINED_FUNCTION_4_2();
      v18 = v35;
      v20 = v101;
      OUTLINED_FUNCTION_4_2();
    }

    else
    {
    }

    (*(v20 + 8))(v28, v18);
    v9 = v29;
  }

  v40 = [*(v3 + 96) deviceMotion];
  if (v40)
  {
    v41 = v40;
    *&v90 = v18;
    sub_25E6CEF3C(v3, v40);
    v46 = MEMORY[0x277D76620];
    v47 = *MEMORY[0x277D76620];
    if (!*MEMORY[0x277D76620])
    {
      __break(1u);
LABEL_31:
      __break(1u);
      JUMPOUT(0x25E6CEF28);
    }

    v95 = v41;
    v48 = v45;
    v49 = v44;
    v100 = v42;
    v101 = v43;
    v50 = [v47 activeInterfaceOrientation];
    v51 = v20;
    v52 = v49;
    switch(v50)
    {
      case 0uLL:
        sub_25E6D7D04();
        v53 = sub_25E6D7DE4();
        v54 = sub_25E6D8224();
        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          *v55 = 0;
          _os_log_impl(&dword_25E6B5000, v53, v54, "SpatialPhoto.GyroCameraAnimator unknown activeInterfaceOrientation", v55, 2u);
          OUTLINED_FUNCTION_4_2();
        }

        (*(v51 + 8))(v26, v90);
        goto LABEL_17;
      case 1uLL:
        goto LABEL_18;
      case 2uLL:
      case 3uLL:
      case 4uLL:
        sub_25E6D81E4();
        v90 = *v105.vector.f64;
        v94 = *&v105.quaternion.vector.f64[2];
        v103[0] = *v105.vector.f64;
        v103[1] = *&v105.quaternion.vector.f64[2];
        SPRotation3DInverse(&v102, v105, v103);
        sub_25E6D81E4();
        sub_25E6D81E4();
        v48 = v56;
        v52 = v57;
        v100 = v58;
        v101 = v59;
        goto LABEL_18;
      default:
        sub_25E6D7D04();
        v60 = sub_25E6D7DE4();
        v61 = sub_25E6D8224();
        if (!os_log_type_enabled(v60, v61))
        {
          goto LABEL_16;
        }

        v89 = v9;
        v62 = swift_slowAlloc();
        *v62 = 134217984;
        if (!*v46)
        {
          goto LABEL_31;
        }

        *(v62 + 4) = [*v46 *(v51 + 3984)];
        _os_log_impl(&dword_25E6B5000, v60, v61, "Unhandled activeInterfaceOrientation:%ld", v62, 0xCu);
        OUTLINED_FUNCTION_4_2();
        v9 = v89;
LABEL_16:

        (*(v49 + 8))(v94, v90);
LABEL_17:
        v52 = v49;
LABEL_18:
        v63 = *(v3 + 120);
        v64 = v97;
        if (v50 != v63)
        {
          if (v63)
          {
            swift_beginAccess();
            v66 = *(v3 + 48);
            v65 = *(v3 + 56);
            v67 = *(v3 + 40);
            v68 = v3 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto18GyroCameraAnimator_previousDeviceOrientationRotation;
            *v68 = *(v3 + 32);
            *(v68 + 8) = v67;
            *(v68 + 16) = v66;
            *(v68 + 24) = v65;
            *(v68 + 32) = 0;
            v69 = v52;
            v70 = v96;
            sub_25E6D7864();
            __swift_storeEnumTagSinglePayload(v70, 0, 1, v9);
            v71 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto18GyroCameraAnimator_deviceOrientationChangedDate;
            OUTLINED_FUNCTION_6_1(v3 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto18GyroCameraAnimator_deviceOrientationChangedDate, &v102);
            v72 = v70;
            v52 = v69;
            sub_25E6CFC20(v72, v3 + v71);
            swift_endAccess();
          }

          *(v3 + 120) = v50;
        }

        v73 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto18GyroCameraAnimator_deviceOrientationChangedDate;
        swift_beginAccess();
        sub_25E6CFC90(v3 + v73, v64);
        if (__swift_getEnumTagSinglePayload(v64, 1, v9) == 1)
        {
          sub_25E6C9520(v64, &qword_27FD015C0, &qword_25E6DB640);
          v75 = v100;
          v74 = v101;
        }

        else
        {
          (*(v99 + 32))(v98, v64, v9);
          sub_25E6D7854();
          v77 = v3 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto18GyroCameraAnimator_previousDeviceOrientationRotation;
          v75 = v100;
          if ((*(v3 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto18GyroCameraAnimator_previousDeviceOrientationRotation + 32) & 1) != 0 || fabs(v76) >= 1.0)
          {
            (*(v99 + 8))(v98, v9);
            *v77 = 0u;
            *(v77 + 16) = 0u;
            *(v77 + 32) = 1;
            v87 = v96;
            __swift_storeEnumTagSinglePayload(v96, 1, 1, v9);
            OUTLINED_FUNCTION_6_1(v3 + v73, v104);
            sub_25E6CFC20(v87, v3 + v73);
            swift_endAccess();
            v74 = v101;
          }

          else
          {
            v78 = *MEMORY[0x277D85448];
            v79 = v92;
            v80 = *(v92 + 104);
            v97 = *v77;
            v96 = *(v77 + 16);
            v81 = v91;
            v82 = v93;
            v80(v91, v78, v93);
            sub_25E6D81C4();
            v48 = v83;
            v52 = v84;
            v74 = v85;
            v75 = v86;
            (*(v79 + 8))(v81, v82);
            (*(v99 + 8))(v98, v9);
          }
        }

        swift_beginAccess();
        *(v3 + 32) = v75;
        *(v3 + 40) = v74;
        *(v3 + 48) = v52;
        *(v3 + 56) = v48;
        sub_25E6CDD30();

        break;
    }
  }
}

void sub_25E6CEF3C(uint64_t a1, void *a2)
{
  v4 = sub_25E6D7DF4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (PXSpatialPhotoWantsLightSourceReference())
  {
    if (*(a1 + 112))
    {

      v8 = CACurrentMediaTime();
      sub_25E6CF3D0(v8);
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;
    }

    else
    {
      sub_25E6D7D04();
      v22 = sub_25E6D7DE4();
      v23 = sub_25E6D8224();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_25E6B5000, v22, v23, "lightSubscription is unexpectedly nil, using identity light orientation", v24, 2u);
        MEMORY[0x25F8BCEB0](v24, -1, -1);
      }

      (*(v5 + 8))(v7, v4);
      v16 = 0.0;
      v14 = 0.0;
      v12 = 0;
      v10 = 0x3FF0000000000000;
    }

    v25 = [a2 attitude];
    sub_25E6CF1CC();
    v29 = v27;
    v30 = v26;

    v33 = v12;
    v34 = v10;
    v32.f64[0] = v16;
    v32.f64[1] = v14;
    SPRotation3DInverse(&v31, v35, &v32);
    sub_25E6D81E4();
  }

  else
  {
    v17 = *(a1 + 104);
    v18 = [a2 attitude];
    v19 = v18;
    if (v17)
    {
      if (*(a1 + 104))
      {
        [v18 multiplyByInverseOfAttitude_];
        sub_25E6CF1CC();
        v29 = v21;
        v30 = v20;
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      v28 = *(a1 + 104);
      *(a1 + 104) = v18;
    }
  }
}

uint64_t sub_25E6CF1CC()
{
  [v0 quaternion];

  return sub_25E6D81F4();
}

void *sub_25E6CF220(void *a1, char *a2)
{
  v4 = *a2;
  v2[4] = 0;
  v2[2] = a1;
  v5 = objc_opt_self();
  v6 = a1;
  v7 = [v5 sharedInstance];
  v8 = [v7 subscribeOnQueue:v6 activityLevelChangeHandler:0];

  v2[3] = v8;
  if ((v4 & 1) == 0)
  {
    v9 = objc_opt_self();
    v10 = sub_25E6D80C4();
    v11 = [v9 acquire:2 reason:v10];

    v6 = v2[4];
    v2[4] = v11;
  }

  return v2;
}

uint64_t sub_25E6CF328(__n128 a1)
{
  sub_25E6CF38C();

  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_25E6CF35C(__n128 a1)
{
  v1 = sub_25E6CF328(a1);

  return MEMORY[0x2821FE8D8](v1);
}

id sub_25E6CF38C()
{
  [*(v0 + 24) invalidate];
  v1 = *(v0 + 32);

  return [v1 invalidate];
}

void sub_25E6CF3D0(double a1)
{
  v3 = sub_25E6D7DF4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*(v1 + 24) lightSourceForTargetTime_];
  if (v7)
  {
    v8 = v7;
    [v7 orientation];
    sub_25E6D81F4();
    v14[0] = v10;
    v14[1] = v9;
  }

  else
  {
    sub_25E6D7D04();
    v11 = sub_25E6D7DE4();
    v12 = sub_25E6D8224();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 134217984;
      *(v13 + 4) = a1;
      _os_log_impl(&dword_25E6B5000, v11, v12, "Unable to get lightSource forTargetTime:%f", v13, 0xCu);
      MEMORY[0x25F8BCEB0](v13, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_25E6CF588()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

double block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_25E6CF608()
{
  result = qword_27FD015C8;
  if (!qword_27FD015C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD015C8);
  }

  return result;
}

unint64_t sub_25E6CF65C(uint64_t a1)
{
  result = sub_25E6CF684();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25E6CF684()
{
  result = qword_27FD015D0;
  if (!qword_27FD015D0)
  {
    type metadata accessor for SpatialPhoto.GyroCameraAnimator(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD015D0);
  }

  return result;
}

uint64_t type metadata accessor for SpatialPhoto.GyroCameraAnimator(uint64_t a1)
{
  result = qword_27FD015E0;
  if (!qword_27FD015E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25E6CF760@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25E6CE4A4(a1, a2);
  *a3 = result & 1;
  return result;
}

_BYTE *_s14GyroMotionTypeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
        JUMPOUT(0x25E6CF884);
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

void sub_25E6CF8C4(uint64_t a1)
{
  sub_25E6CFBC8(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_25E6CFBC8(uint64_t a1)
{
  if (!qword_27FD015F0)
  {
    sub_25E6D7874();
    v1 = sub_25E6D82E4();
    if (!v2)
    {
      atomic_store(v1, &qword_27FD015F0);
    }
  }
}

uint64_t sub_25E6CFC20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD015C0, &qword_25E6DB640);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_25E6CFC90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD015C0, &qword_25E6DB640);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

float64x2_t SPRotation3DInverse@<Q0>(float64x2_t *__return_ptr a1@<X8>, SPRotation3D a2@<0:Q0, 16:Q1>, float64x2_t *a3@<X0>)
{
  v3 = a3[1];
  v4 = 1.0 / vaddvq_f64(vaddq_f64(vmulq_f64(*a3, *a3), vmulq_f64(v3, v3)));
  v5 = vmulq_n_f64(vmulq_f64(v3, xmmword_25E6DB630), v4);
  result = vmulq_n_f64(vnegq_f64(*a3), v4);
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_25E6CFD3C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25E6CFD74(uint64_t a1, __n128 a2, __n128 a3)
{
  v4 = *(v3 + 16);
  v7 = a1;
  v6[0] = a2;
  v6[1] = a3;
  return v4(&v7, v6);
}

void OUTLINED_FUNCTION_4_2()
{

  JUMPOUT(0x25F8BCEB0);
}

uint64_t OUTLINED_FUNCTION_6_1(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

id SpatialPhoto.GenerationEffectUIView.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_4_0();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_3_1();

  return [v2 v3];
}

char *SpatialPhoto.GenerationEffectUIView.init(frame:)()
{
  OUTLINED_FUNCTION_4_0();
  *(v0 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto22GenerationEffectUIView_animator) = 0;
  *(v0 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto22GenerationEffectUIView_displayLink) = 0;
  v1 = MTLCreateSystemDefaultDevice();
  *(v0 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto22GenerationEffectUIView_device) = v1;
  if (v1)
  {
    v1 = [v1 newCommandQueue];
  }

  *(v0 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto22GenerationEffectUIView_commandQueue) = v1;
  v22[4] = v0;
  v23 = type metadata accessor for SpatialPhoto.GenerationEffectUIView();
  v2 = OUTLINED_FUNCTION_3_1();
  v5 = objc_msgSendSuper2(v3, v4, v2);
  v6 = [v5 layer];
  objc_opt_self();
  v7 = OUTLINED_FUNCTION_0_3();
  v8 = *&v5[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto22GenerationEffectUIView_device];
  swift_unknownObjectRetain();
  [v7 setDevice_];
  swift_unknownObjectRelease();

  v9 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_3_4();
  [OUTLINED_FUNCTION_0_3() setPixelFormat_];

  v10 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_3_4();
  [OUTLINED_FUNCTION_0_3() setFramebufferOnly_];

  v11 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_3_4();
  [OUTLINED_FUNCTION_0_3() setOpaque_];

  v12 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_3_4();
  [OUTLINED_FUNCTION_0_3() setCompositingFilter_];

  sub_25E6D0178(0, &qword_27FD010E0, 0x277CD9E48);
  v22[3] = v23;
  v22[0] = v5;
  v13 = v5;
  v14 = sub_25E6BED78(v22, sel_drawFrameWithDisplayLink_);
  v15 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto22GenerationEffectUIView_displayLink;
  v16 = *&v13[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto22GenerationEffectUIView_displayLink];
  *&v13[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto22GenerationEffectUIView_displayLink] = v14;

  v17 = *&v13[v15];
  v18 = v13;
  if (v17)
  {
    v19 = objc_opt_self();
    v20 = v17;
    v18 = [v19 mainRunLoop];
    [v20 addToRunLoop:v18 forMode:*MEMORY[0x277CBE640]];
  }

  return v13;
}

uint64_t sub_25E6D0178(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_25E6D01DC()
{
  *(v0 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto22GenerationEffectUIView_animator) = 0;
  *(v0 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto22GenerationEffectUIView_displayLink) = 0;
  sub_25E6D8354();
  __break(1u);
}

void sub_25E6D0270()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for SpatialPhoto.GenerationEffectUIView();
  objc_msgSendSuper2(&v3, sel_layoutSubviews);
  v1 = [v0 layer];
  objc_opt_self();
  v2 = swift_dynamicCastObjCClassUnconditional();
  [v0 bounds];
  [v2 setFrame_];
}

id SpatialPhoto.GenerationEffectUIView.__deallocating_deinit()
{
  sub_25E6D0600();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SpatialPhoto.GenerationEffectUIView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_25E6D0430()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SpatialPhoto.GenerationEffectUIView();
  objc_msgSendSuper2(&v2, sel_didMoveToWindow);
  v1 = [v0 window];
  if (v1)
  {
  }

  else
  {
    sub_25E6D0600();
  }
}

double sub_25E6D0500()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_25E6D0548(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto22GenerationEffectUIView_animator;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void sub_25E6D0600()
{
  v1 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto22GenerationEffectUIView_displayLink;
  v2 = *(v0 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto22GenerationEffectUIView_displayLink);
  if (v2)
  {
    [v2 invalidate];
    v3 = *(v0 + v1);
    *(v0 + v1) = 0;
  }
}

id sub_25E6D068C(void *a1)
{
  v3 = sub_25E6D7DF4();
  MEMORY[0x28223BE20](v3);
  result = *&v1[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto22GenerationEffectUIView_commandQueue];
  if (result)
  {
    result = [result commandBuffer];
    if (result)
    {
      v5 = result;
      v6 = [v1 layer];
      objc_opt_self();
      v7 = [swift_dynamicCastObjCClassUnconditional() nextDrawable];

      if (v7)
      {
        v8 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto22GenerationEffectUIView_animator;
        swift_beginAccess();
        v9 = *&v1[v8];
        if (v9 && (swift_beginAccess(), (*(v9 + 16) & 1) != 0))
        {

          v10 = [a1 duration];
          sub_25E6B71A8(v11, v10);
          sub_25E6B709C([v7 texture]);
          swift_unknownObjectRelease();
          sub_25E6B71F0();
          [v5 presentDrawable_];
          [v5 commit];
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();
          return swift_unknownObjectRelease();
        }
      }

      else
      {

        return swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

uint64_t sub_25E6D0B48(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD010F8, &unk_25E6DB850);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_0_3()
{

  return swift_dynamicCastObjCClassUnconditional();
}

uint64_t OUTLINED_FUNCTION_3_4()
{

  return objc_opt_self();
}

id OUTLINED_FUNCTION_4_3()
{

  return [v0 (v1 + 2168)];
}

uint64_t SpatialPhoto.CinematicCameraAnimator.__allocating_init(queue:duration:cameraTechniqueProducer:changeHandler:)(void *a1, void (*a2)(uint64_t, double), uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v12 = swift_allocObject();
  SpatialPhoto.CinematicCameraAnimator.init(queue:duration:cameraTechniqueProducer:changeHandler:)(a1, a2, a3, a4, a5, a6);
  return v12;
}

uint64_t sub_25E6D0C84(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v10 = sub_25E6D7A54();
  OUTLINED_FUNCTION_1_0();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_4();
  v16 = v15 - v14;
  *(a4 + 48) = 0;
  *(a4 + 56) = 0;
  sub_25E6D7A34();
  (*(v12 + 32))(a4 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto23CinematicCameraAnimator__cameraTechnique, v16, v10);
  *(a4 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto23CinematicCameraAnimator__isAnimating) = 0;
  sub_25E6D7984();
  *(a4 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto23CinematicCameraAnimator_displayLink) = 0;
  OUTLINED_FUNCTION_6_2(a4 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto23CinematicCameraAnimator_startTime);
  sub_25E6D78D4();
  *(a4 + 16) = a1;
  *(a4 + 24) = a5;
  *(a4 + 32) = sub_25E6C8F48;
  *(a4 + 40) = 0;
  v17 = a1;
  sub_25E6D7A44();
  sub_25E6D0FB4(v16);
  sub_25E6BDF88(a2, a3);

  return a4;
}

uint64_t SpatialPhoto.CinematicCameraAnimator.init(queue:duration:cameraTechniqueProducer:changeHandler:)(void *a1, void (*a2)(uint64_t, double), uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v7 = v6;
  v14 = sub_25E6D7A54();
  OUTLINED_FUNCTION_1_0();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_4();
  v20 = v19 - v18;
  *(v7 + 48) = 0;
  *(v7 + 56) = 0;
  sub_25E6D7A34();
  (*(v16 + 32))(v7 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto23CinematicCameraAnimator__cameraTechnique, v20, v14);
  *(v7 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto23CinematicCameraAnimator__isAnimating) = 0;
  sub_25E6D7984();
  *(v7 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto23CinematicCameraAnimator_displayLink) = 0;
  OUTLINED_FUNCTION_6_2(v7 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto23CinematicCameraAnimator_startTime);
  sub_25E6D78D4();
  *(v7 + 16) = a1;
  *(v7 + 24) = a6;
  *(v7 + 32) = a2;
  *(v7 + 40) = a3;
  v21 = a1;

  a2(v22, 0.0);
  sub_25E6D0FB4(v20);
  sub_25E6BDF88(a4, a5);

  return v7;
}

uint64_t sub_25E6D0FB4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_25E6D7A54();
  OUTLINED_FUNCTION_1_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4();
  v10 = v9 - v8;
  v11 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto23CinematicCameraAnimator__cameraTechnique;
  swift_beginAccess();
  v12 = *(v6 + 16);
  v12(v10, v2 + v11, v4);
  sub_25E6D2E64(&qword_27FD01690, MEMORY[0x277D3CB48], MEMORY[0x277D3CB50]);
  LOBYTE(v11) = sub_25E6D80B4();
  v13 = *(v6 + 8);
  v13(v10, v4);
  if (v11)
  {
    v12(v10, a1, v4);
    sub_25E6D1B3C(v10);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    OUTLINED_FUNCTION_5_3();
    *(v15 - 16) = v2;
    *(v15 - 8) = a1;
    sub_25E6D2554(v16, sub_25E6D2EAC, v17);
  }

  return (v13)(a1, v4);
}

uint64_t sub_25E6D11A4(uint64_t result)
{
  v2 = result & 1;
  if (*(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto23CinematicCameraAnimator__isAnimating) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto23CinematicCameraAnimator__isAnimating) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    OUTLINED_FUNCTION_5_3();
    *(v4 - 16) = v1;
    *(v4 - 8) = v2;
    sub_25E6D2554(v5, sub_25E6D2CA8, v6);
  }

  return result;
}

uint64_t sub_25E6D124C(double a1)
{
  result = swift_beginAccess();
  if (*(v1 + 24) == a1)
  {
    *(v1 + 24) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    OUTLINED_FUNCTION_5_3();
    *(v5 - 16) = v1;
    *(v5 - 8) = a1;
    sub_25E6D2554(v6, sub_25E6D14D8, v7);
  }

  return result;
}

double sub_25E6D13FC()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_4();
  v3 = sub_25E6D2E64(v1, v2, &protocol conformance descriptor for SpatialPhoto.CinematicCameraAnimator);
  OUTLINED_FUNCTION_8_1(v3, v4);

  OUTLINED_FUNCTION_2_1(v0 + 24, v5);
  return *(v0 + 24);
}

uint64_t sub_25E6D1484(uint64_t a1, double a2)
{
  result = swift_beginAccess();
  *(a1 + 24) = a2;
  return result;
}

uint64_t (*sub_25E6D14F8(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v1;
  swift_getKeyPath();
  v3[5] = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto23CinematicCameraAnimator___observationRegistrar;
  *v3 = v1;
  OUTLINED_FUNCTION_0_4();
  v3[6] = sub_25E6D2E64(v4, v5, &protocol conformance descriptor for SpatialPhoto.CinematicCameraAnimator);
  sub_25E6D78A4();

  *v3 = v1;
  swift_getKeyPath();
  sub_25E6D78C4();

  v3[7] = sub_25E6D1310();
  return sub_25E6D160C;
}

void sub_25E6D160C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_25E6D78B4();

  free(v1);
}

uint64_t sub_25E6D16A0@<X0>(uint64_t (**a1)(double *a1)@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  v4 = sub_25E6D1774(a2, a3);
  v6 = v5;
  result = swift_allocObject();
  *(result + 16) = v4;
  *(result + 24) = v6;
  *a1 = sub_25E6D2D94;
  a1[1] = result;
  return result;
}

uint64_t sub_25E6D1704(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;

  return sub_25E6D17B4(sub_25E6D2D5C, v3);
}

uint64_t sub_25E6D1774(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_1(v2 + 32, a2);
  v3 = *(v2 + 32);

  return v3;
}

uint64_t sub_25E6D17B4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t sub_25E6D184C@<X0>(uint64_t (**a1)()@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_25E6D194C(a2, a3);
  if (result)
  {
    v6 = result;
    v7 = v5;
    result = swift_allocObject();
    *(result + 16) = v6;
    *(result + 24) = v7;
    v8 = sub_25E6D2D30;
  }

  else
  {
    v8 = 0;
  }

  *a1 = v8;
  a1[1] = result;
  return result;
}

uint64_t sub_25E6D18BC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_25E6D2CF8;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_25E6C6FC8(v1, v2);
  return sub_25E6D1990(v4, v3);
}

uint64_t sub_25E6D194C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_1(v2 + 48, a2);
  v3 = *(v2 + 48);
  sub_25E6C6FC8(v3, *(v2 + 56));
  return v3;
}

uint64_t sub_25E6D1990(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 48);
  v6 = *(v2 + 56);
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return sub_25E6BDF88(v5, v6);
}

uint64_t sub_25E6D1A28()
{
  v1 = sub_25E6D7A54();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_beginAccess();
  v6 = *(v0 + 48);
  if (v6)
  {
    v7 = *(v0 + 56);

    sub_25E6D1CF8(v4);
    v6(v0, v4);
    sub_25E6BDF88(v6, v7);
    return (*(v2 + 8))(v4, v1);
  }

  return result;
}

uint64_t sub_25E6D1B3C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto23CinematicCameraAnimator__cameraTechnique;
  swift_beginAccess();
  v4 = sub_25E6D7A54();
  v5 = *(v4 - 8);
  (*(v5 + 24))(v1 + v3, a1, v4);
  swift_endAccess();
  sub_25E6D1A28();
  return (*(v5 + 8))(a1, v4);
}

uint64_t sub_25E6D1C2C(uint64_t a1)
{
  v2 = sub_25E6D7A54();
  MEMORY[0x28223BE20](v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, a1);
  return sub_25E6D0FB4(v4);
}

uint64_t sub_25E6D1CF8@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v9 = v1;
  OUTLINED_FUNCTION_0_4();
  sub_25E6D2E64(v3, v4, &protocol conformance descriptor for SpatialPhoto.CinematicCameraAnimator);
  sub_25E6D78A4();

  v5 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto23CinematicCameraAnimator__cameraTechnique;
  OUTLINED_FUNCTION_2_1(v9 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto23CinematicCameraAnimator__cameraTechnique, v6);
  v7 = sub_25E6D7A54();
  return (*(*(v7 - 8) + 16))(a1, v9 + v5, v7);
}

uint64_t sub_25E6D1DD4(uint64_t a1, uint64_t a2)
{
  v3 = sub_25E6D7A54();
  MEMORY[0x28223BE20](v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a2);
  return sub_25E6D1B3C(v5);
}

uint64_t sub_25E6D1EA8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25E6D1F00();
  *a1 = result & 1;
  return result;
}

uint64_t sub_25E6D1F00()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_4();
  v3 = sub_25E6D2E64(v1, v2, &protocol conformance descriptor for SpatialPhoto.CinematicCameraAnimator);
  OUTLINED_FUNCTION_8_1(v3, v4);

  return *(v0 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto23CinematicCameraAnimator__isAnimating);
}

uint64_t sub_25E6D1FB8(uint64_t a1, void (*a2)(uint64_t, uint64_t))
{
  swift_beginAccess();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD01440, &qword_25E6DB1D0);
  a2(a1, v4);
  swift_endAccess();
  return sub_25E6D20E8();
}

uint64_t sub_25E6D2044(void *a1)
{
  [a1 invalidate];
  v2 = *(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto23CinematicCameraAnimator_displayLink) != 0;

  return sub_25E6D11A4(v2);
}

void sub_25E6D2088(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto23CinematicCameraAnimator_displayLink);
  *(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto23CinematicCameraAnimator_displayLink) = a1;
  v2 = a1;
  sub_25E6D2044(v3);
}

uint64_t sub_25E6D20E8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD01440, &qword_25E6DB1D0);
  OUTLINED_FUNCTION_1_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v15[-1] - v6;
  v8 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto23CinematicCameraAnimator_animatingClients;
  swift_beginAccess();
  (*(v4 + 16))(v7, v1 + v8, v2);
  v9 = sub_25E6D7974();
  (*(v4 + 8))(v7, v2);
  v10 = sub_25E6C8F54(v9);

  result = sub_25E6D1F00();
  if (v10 < 1)
  {
    if ((result & 1) == 0)
    {
      return result;
    }

    OUTLINED_FUNCTION_6_2(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto23CinematicCameraAnimator_startTime);
  }

  else
  {
    if (result)
    {
      return result;
    }

    v15[3] = type metadata accessor for SpatialPhoto.CinematicCameraAnimator(0);
    v15[0] = v1;
    v12 = *(v1 + 16);
    objc_allocWithZone(MEMORY[0x277D3CD10]);

    v13 = sub_25E6D2DC0(v15, sel_tick_, 60, 0, v12);
  }

  sub_25E6D2088(v13);
  return sub_25E6D11A4(v10 > 0);
}

id sub_25E6D22A4(void *a1)
{
  v2 = v1;
  v4 = sub_25E6D7A54();
  MEMORY[0x28223BE20](v4 - 8);
  OUTLINED_FUNCTION_4();
  v7 = v6 - v5;
  v8 = sub_25E6D8074();
  OUTLINED_FUNCTION_1_0();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4();
  v14 = v13 - v12;
  v15 = *(v2 + 16);
  *(v13 - v12) = v15;
  (*(v10 + 104))(v13 - v12, *MEMORY[0x277D85200], v8);
  v16 = v15;
  LOBYTE(v15) = sub_25E6D8084();
  result = (*(v10 + 8))(v14, v8);
  if (v15)
  {
    v18 = *(v2 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto23CinematicCameraAnimator_displayLink);
    if (v18 && (sub_25E6D2C64(), v19 = a1, v20 = v18, v21 = sub_25E6D82D4(), v20, v19, (v21 & 1) != 0))
    {
      v22 = v2 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto23CinematicCameraAnimator_startTime;
      if (*(v2 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto23CinematicCameraAnimator_startTime + 8) == 1)
      {
        [v19 targetTimestamp];
        v24 = v23;
        *v22 = v23;
        *(v22 + 8) = 0;
      }

      else
      {
        v24 = *v22;
      }

      [v19 targetTimestamp];
      *v26.i64 = (v25 - v24) / sub_25E6D13FC();
      *v27.i64 = *v26.i64 - trunc(*v26.i64);
      v28.f64[0] = NAN;
      v28.f64[1] = NAN;
      v31 = vbslq_s8(vnegq_f64(v28), v27, v26);
      swift_beginAccess();
      v29 = *(v2 + 32);

      v29(v30, v31);

      sub_25E6D0FB4(v7);
      return sub_25E6D20E8();
    }

    else
    {
      return [a1 invalidate];
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25E6D2554(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_4();
  sub_25E6D2E64(v3, v4, &protocol conformance descriptor for SpatialPhoto.CinematicCameraAnimator);
  return sub_25E6D7894();
}

uint64_t type metadata accessor for SpatialPhoto.CinematicCameraAnimator(uint64_t a1)
{
  result = qword_27FD01670;
  if (!qword_27FD01670)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25E6D2670@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25E6D1F00();
  *a1 = result & 1;
  return result;
}

uint64_t SpatialPhoto.CinematicCameraAnimator.deinit()
{

  sub_25E6BDF88(*(v0 + 48), *(v0 + 56));
  v1 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto23CinematicCameraAnimator__cameraTechnique;
  sub_25E6D7A54();
  OUTLINED_FUNCTION_5_0();
  (*(v2 + 8))(v0 + v1);
  v3 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto23CinematicCameraAnimator_animatingClients;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD01440, &qword_25E6DB1D0);
  OUTLINED_FUNCTION_5_0();
  (*(v4 + 8))(v0 + v3);

  v5 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto23CinematicCameraAnimator___observationRegistrar;
  sub_25E6D78E4();
  OUTLINED_FUNCTION_5_0();
  (*(v6 + 8))(v0 + v5);
  return v0;
}

uint64_t SpatialPhoto.CinematicCameraAnimator.__deallocating_deinit()
{
  SpatialPhoto.CinematicCameraAnimator.deinit();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_25E6D2824(uint64_t a1)
{
  result = sub_25E6D2E64(&qword_27FD01668, type metadata accessor for SpatialPhoto.CinematicCameraAnimator, &protocol conformance descriptor for SpatialPhoto.CinematicCameraAnimator);
  *(a1 + 8) = result;
  return result;
}

void sub_25E6D2894(uint64_t a1)
{
  sub_25E6D7A54();
  if (v1 <= 0x3F)
  {
    sub_25E6D2C10();
    if (v2 <= 0x3F)
    {
      sub_25E6D78E4();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_25E6D2C10()
{
  if (!qword_27FD01680)
  {
    v0 = sub_25E6D7994();
    if (!v1)
    {
      atomic_store(v0, &qword_27FD01680);
    }
  }
}

unint64_t sub_25E6D2C64()
{
  result = qword_27FD01688;
  if (!qword_27FD01688)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FD01688);
  }

  return result;
}

uint64_t sub_25E6D2CC0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25E6D2CF8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_25E6D2D5C(double a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

id sub_25E6D2DC0(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v11 = [v5 initWithWeakTarget:sub_25E6D83A4() selector:a2 preferredFramesPerSecond:a3 screen:a4 queue:a5];
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v11;
}

uint64_t sub_25E6D2E64(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_7_1(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_8_1(uint64_t a1, uint64_t a2, ...)
{

  return sub_25E6D78A4();
}

id sub_25E6D2FDC(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto19SceneDebugHUDUIView_scene;
  result = swift_beginAccess();
  v6 = *&v2[v4];
  if (!a1)
  {
    if (!v6)
    {
      return result;
    }

    goto LABEL_9;
  }

  if (v6)
  {
    v7 = v6 == a1;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    if (!v6)
    {
      v8 = 0;
LABEL_10:
      *&v2[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto19SceneDebugHUDUIView_sceneMetadataObservation] = v8;

      return [v2 setNeedsLayout];
    }

LABEL_9:
    sub_25E6D0178(0, &qword_27FD01600, 0x277D85C78);

    v9 = sub_25E6D8274();
    swift_allocObject();
    swift_unknownObjectWeakInit();

    v8 = sub_25E6D7C44();

    goto LABEL_10;
  }

  return result;
}

uint64_t sub_25E6D3114(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_25E6D8194();
  v4 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v7[2] = v4;
  v7[3] = a1;
  sub_25E6D3280(sub_25E6D5744, v7, "PhotosSpatialMedia/SpatialPhotoSceneDebugHUDUIView.swift", 56, 2u, 23);
}

void sub_25E6D31E0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto19SceneDebugHUDUIView_scene;
    swift_beginAccess();
    v6 = *&v4[v5];
    if (v6)
    {
      v7 = v6 == a2;
    }

    else
    {
      v7 = 0;
    }

    if (v7)
    {
      [v4 setNeedsLayout];
    }
  }
}

uint64_t sub_25E6D3280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  sub_25E6D8184();

  swift_task_getMainExecutor();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  sub_25E6D5770();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    sub_25E6D8314();
    MEMORY[0x25F8BC420](0xD00000000000003FLL, 0x800000025E6DCD60);
    v12 = sub_25E6D8454();
    MEMORY[0x25F8BC420](v12);

    MEMORY[0x25F8BC420](46, 0xE100000000000000);
    result = sub_25E6D8354();
    __break(1u);
  }

  return result;
}

double sub_25E6D340C()
{
  OUTLINED_FUNCTION_6_3(v0 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto19SceneDebugHUDUIView_scene, v2);

  return result;
}

uint64_t sub_25E6D344C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto19SceneDebugHUDUIView_scene;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;

  sub_25E6D2FDC(v4);
}

void (*sub_25E6D34C0(void *a1))(void **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = v1;
  v4 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto19SceneDebugHUDUIView_scene;
  OUTLINED_FUNCTION_6_3(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto19SceneDebugHUDUIView_scene, v3);
  v3[3] = *(v1 + v4);

  return sub_25E6D3540;
}

void sub_25E6D3540(void **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 3);
  if (a2)
  {

    sub_25E6D344C(v4);
  }

  else
  {
    sub_25E6D344C(v3);
  }

  free(v2);
}

uint64_t sub_25E6D35A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SpatialPhoto.SceneDebugHUDUIView();
  objc_msgSendSuper2(&v2, sel_layoutSubviews);
  return sub_25E6D7884();
}

uint64_t (*sub_25E6D3668(void *a1))()
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_25E6D5354;
}

uint64_t sub_25E6D36D4(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD016E8, &qword_25E6DBA50);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v10 - v2;
  v4 = sub_25E6D81B4();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v4);
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_25E6D8194();

  v6 = sub_25E6D8184();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v5;

  sub_25E6D3920(0, 0, v3, &unk_25E6DBA60, v7);
}

uint64_t sub_25E6D3804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  sub_25E6D8194();
  *(v4 + 48) = sub_25E6D8184();
  v6 = sub_25E6D8174();

  return MEMORY[0x2822009F8](sub_25E6D389C, v6, v5);
}

uint64_t sub_25E6D389C()
{
  OUTLINED_FUNCTION_10_0();
  v1 = *(v0 + 40);

  OUTLINED_FUNCTION_6_3(v1 + 16, v0 + 16);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong setNeedsLayout];
  }

  OUTLINED_FUNCTION_7_2();

  return v4();
}

uint64_t sub_25E6D3920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD016E8, &qword_25E6DBA50);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v24 - v10;
  sub_25E6D5564(a3, v24 - v10);
  v12 = sub_25E6D81B4();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_25E6C9520(v11, &qword_27FD016E8, &qword_25E6DBA50);
  }

  else
  {
    sub_25E6D81A4();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_25E6D8174();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_25E6D8104() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_25E6C9520(a3, &qword_27FD016E8, &qword_25E6DBA50);

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_25E6C9520(a3, &qword_27FD016E8, &qword_25E6DBA50);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

id sub_25E6D3C3C()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v0 setNumberOfLines_];
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 blackColor];
  v4 = [v3 colorWithAlphaComponent_];

  [v2 setBackgroundColor_];
  v5 = [objc_opt_self() monospacedSystemFontOfSize:9.0 weight:*MEMORY[0x277D74410]];
  [v2 setFont_];

  v6 = [v1 whiteColor];
  [v2 setTextColor_];

  return v2;
}

id sub_25E6D3D90(SEL *a1)
{
  v1 = [objc_opt_self() *a1];
  v2 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v2 setNumberOfLines_];
  v3 = v2;
  v4 = [v3 layer];
  [v4 setBorderWidth_];

  v5 = [v3 layer];
  v6 = [v1 CGColor];
  [v5 setBorderColor_];

  v7 = [objc_opt_self() monospacedSystemFontOfSize:10.0 weight:*MEMORY[0x277D74410]];
  [v3 setFont_];

  [v3 setTextColor_];
  return v3;
}

id sub_25E6D3EF4(SEL *a1)
{
  v1 = [objc_opt_self() *a1];
  v2 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v3 = [v2 layer];
  [v3 setBorderWidth_];

  v4 = [v2 layer];
  v5 = [v1 CGColor];
  [v4 setBorderColor_];

  return v2;
}

id sub_25E6D3FDC()
{
  v3 = v0;
  v4 = sub_25E6D7CD4();
  OUTLINED_FUNCTION_1_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_14();
  v10 = (v8 - v9);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v70 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v70 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD016D8, &qword_25E6DBA48);
  MEMORY[0x28223BE20](v17 - 8);
  OUTLINED_FUNCTION_14();
  v20 = v18 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v70 - v22;
  v24 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto19SceneDebugHUDUIView_scene;
  OUTLINED_FUNCTION_6_3(&v3[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto19SceneDebugHUDUIView_scene], v73);
  if (!*&v3[v24])
  {
    return [*&v3[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto19SceneDebugHUDUIView_sceneOverlay] removeFromSuperview];
  }

  v70 = v14;
  v71 = v10;
  v72 = v4;
  v25 = *&v3[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto19SceneDebugHUDUIView_sceneOverlay];

  sub_25E6D7C34();
  [v3 bounds];
  v28 = v26 + v27 * 0.5;
  v31 = v29 + v30 * 0.5;
  PFSizeWithAspectRatioFillingSize();
  [v25 setFrame_];
  [v25 bounds];
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v42 = *&v3[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto19SceneDebugHUDUIView_label];
  v43 = sub_25E6D7C54();
  sub_25E6D52B8(v43, v44, v42);
  [v3 bounds];
  [v42 sizeThatFits_];
  v49 = v42;
  v50 = v72;
  [v49 setFrame_];
  sub_25E6D7CE4();
  sub_25E6D7C94();
  v51 = *(v6 + 8);
  v51(v16, v50);
  v52 = sub_25E6D7C74();
  if (__swift_getEnumTagSinglePayload(v23, 1, v52) == 1)
  {
    sub_25E6C9520(v23, &qword_27FD016D8, &qword_25E6DBA48);
  }

  else
  {
    sub_25E6D7C64();
    OUTLINED_FUNCTION_3_5();
    (*(v54 + 8))(v23, v52);
    if (!OUTLINED_FUNCTION_12_0())
    {
      v55 = *&v3[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto19SceneDebugHUDUIView_portraitOcclusionAnalysisLabel];
      v56 = v70;
      sub_25E6D7CE4();
      v57 = sub_25E6D7CB4();
      v59 = v58;
      v51(v56, v72);
      v60 = v59;
      v50 = v72;
      sub_25E6D52B8(v57, v60, v55);
      [v55 setFrame_];
      v61 = *&v3[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto19SceneDebugHUDUIView_portraitSubtitleOcclusionAnalysisLabel];
      [v55 frame];
      sub_25E6D7B04();
      [v61 setFrame_];
    }
  }

  v62 = v71;
  sub_25E6D7CE4();
  sub_25E6D7CA4();
  v51(v62, v50);
  if (__swift_getEnumTagSinglePayload(v20, 1, v52) == 1)
  {
    sub_25E6C9520(v20, &qword_27FD016D8, &qword_25E6DBA48);
  }

  else
  {
    sub_25E6D7C64();
    OUTLINED_FUNCTION_3_5();
    (*(v63 + 8))(v20, v52);
    if (!OUTLINED_FUNCTION_12_0())
    {
      v64 = *&v3[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto19SceneDebugHUDUIView_landscapeOcclusionAnalysisLabel];
      v65 = v70;
      sub_25E6D7CE4();
      v66 = sub_25E6D7CC4();
      v68 = v67;
      v51(v65, v50);
      sub_25E6D52B8(v66, v68, v64);
      [v64 setFrame_];
      v69 = *&v3[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto19SceneDebugHUDUIView_landscapeSubtitleOcclusionAnalysisLabel];
      [v64 frame];
      sub_25E6D7B04();
      [v69 setFrame_];
    }
  }

  sub_25E6D451C();
}

void sub_25E6D451C()
{
  v1 = v0;
  sub_25E6D7CD4();
  OUTLINED_FUNCTION_1_0();
  v41 = v3;
  v42 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_14();
  v6 = v4 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v40 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD016D8, &qword_25E6DBA48);
  MEMORY[0x28223BE20](v10 - 8);
  OUTLINED_FUNCTION_14();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v40 - v15;
  v17 = *&v0[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto19SceneDebugHUDUIView_sceneOverlay];
  v18 = [v17 superview];
  if (!v18 || (v19 = v18, sub_25E6D0178(0, &qword_27FD016E0, 0x277D75D18), v20 = v0, v21 = sub_25E6D82D4(), v19, v20, (v21 & 1) == 0))
  {
    [v1 addSubview_];
  }

  if (qword_27FD00A78 != -1)
  {
    OUTLINED_FUNCTION_1_3(&qword_27FD00A78);
  }

  if (byte_27FD02CB0 == 1)
  {
    v22 = *&v1[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto19SceneDebugHUDUIView_label];
    v23 = [v22 superview];
    if (!v23 || (v24 = v23, sub_25E6D0178(0, &qword_27FD016E0, 0x277D75D18), v25 = v17, v26 = sub_25E6D82D4(), v24, v25, (v26 & 1) == 0))
    {
      [v17 addSubview_];
    }
  }

  v27 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto19SceneDebugHUDUIView_scene;
  OUTLINED_FUNCTION_6_3(&v1[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto19SceneDebugHUDUIView_scene], v43);
  if (!*&v1[v27])
  {
    goto LABEL_13;
  }

  sub_25E6D7CE4();

  sub_25E6D7C94();
  (*(v41 + 8))(v9, v42);
  v28 = sub_25E6D7C74();
  if (__swift_getEnumTagSinglePayload(v16, 1, v28) == 1)
  {
    sub_25E6C9520(v16, &qword_27FD016D8, &qword_25E6DBA48);
LABEL_13:
    OUTLINED_FUNCTION_13_0(OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto19SceneDebugHUDUIView_portraitOcclusionAnalysisLabel);
    OUTLINED_FUNCTION_13_0(OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto19SceneDebugHUDUIView_portraitSubtitleOcclusionAnalysisLabel);
    goto LABEL_17;
  }

  sub_25E6D7C64();
  (*(*(v28 - 8) + 8))(v16, v28);
  v29 = *&v1[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto19SceneDebugHUDUIView_portraitOcclusionAnalysisLabel];
  v30 = [v29 superview];
  if (!v30 || (v31 = v30, sub_25E6D0178(0, &qword_27FD016E0, 0x277D75D18), v32 = v17, v33 = sub_25E6D82D4(), v31, v32, (v33 & 1) == 0))
  {
    [v17 addSubview_];
    [v17 addSubview_];
  }

LABEL_17:
  if (!*&v1[v27])
  {
LABEL_20:
    OUTLINED_FUNCTION_13_0(OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto19SceneDebugHUDUIView_landscapeOcclusionAnalysisLabel);
    OUTLINED_FUNCTION_13_0(OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto19SceneDebugHUDUIView_landscapeSubtitleOcclusionAnalysisLabel);
    return;
  }

  sub_25E6D7CE4();

  sub_25E6D7CA4();
  (*(v41 + 8))(v6, v42);
  v34 = sub_25E6D7C74();
  if (__swift_getEnumTagSinglePayload(v13, 1, v34) == 1)
  {
    sub_25E6C9520(v13, &qword_27FD016D8, &qword_25E6DBA48);
    goto LABEL_20;
  }

  sub_25E6D7C64();
  (*(*(v34 - 8) + 8))(v13, v34);
  v35 = *&v1[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto19SceneDebugHUDUIView_landscapeOcclusionAnalysisLabel];
  v36 = [v35 superview];
  if (!v36 || (v37 = v36, sub_25E6D0178(0, &qword_27FD016E0, 0x277D75D18), v38 = v17, v39 = sub_25E6D82D4(), v37, v38, (v39 & 1) == 0))
  {
    [v17 _swift_FORCE_LOAD___swiftModelIO___PhotosSpatialMedia];
    [v17 _swift_FORCE_LOAD___swiftModelIO___PhotosSpatialMedia];
  }
}

uint64_t sub_25E6D4A74()
{
  if (qword_27FD00A78 != -1)
  {
    OUTLINED_FUNCTION_1_3(&qword_27FD00A78);
  }

  if (byte_27FD02CB0)
  {
    return 1;
  }

  if (qword_27FD00A80 != -1)
  {
    swift_once();
  }

  return byte_27FD02CB1;
}

void sub_25E6D4AF4()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_25E6D80C4();
  v2 = [v0 BOOLForKey_];

  byte_27FD02CB0 = v2;
}

void sub_25E6D4B84()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_25E6D80C4();
  v2 = [v0 BOOLForKey_];

  byte_27FD02CB1 = v2;
}

id SpatialPhoto.SceneDebugHUDUIView.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_4_0();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_3_1();

  return [v2 v3];
}

id SpatialPhoto.SceneDebugHUDUIView.init(frame:)()
{
  OUTLINED_FUNCTION_4_0();
  *(v0 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto19SceneDebugHUDUIView_scene) = 0;
  *(v0 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto19SceneDebugHUDUIView_sceneMetadataObservation) = 0;
  v1 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto19SceneDebugHUDUIView_sceneOverlay;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v2 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto19SceneDebugHUDUIView_label;
  *(v0 + v2) = sub_25E6D3C3C();
  v3 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto19SceneDebugHUDUIView_portraitOcclusionAnalysisLabel;
  *(v0 + v3) = sub_25E6D3D90(&selRef_magentaColor);
  v4 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto19SceneDebugHUDUIView_landscapeOcclusionAnalysisLabel;
  *(v0 + v4) = sub_25E6D3D90(&selRef_purpleColor);
  v5 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto19SceneDebugHUDUIView_portraitSubtitleOcclusionAnalysisLabel;
  *(v0 + v5) = sub_25E6D3EF4(&selRef_magentaColor);
  v6 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto19SceneDebugHUDUIView_landscapeSubtitleOcclusionAnalysisLabel;
  *(v0 + v6) = sub_25E6D3EF4(&selRef_purpleColor);
  v11 = type metadata accessor for SpatialPhoto.SceneDebugHUDUIView();
  v7 = OUTLINED_FUNCTION_3_1();
  return objc_msgSendSuper2(v8, v9, v7, v0, v11);
}

id SpatialPhoto.SceneDebugHUDUIView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SpatialPhoto.SceneDebugHUDUIView.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto19SceneDebugHUDUIView_scene] = 0;
  *&v1[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto19SceneDebugHUDUIView_sceneMetadataObservation] = 0;
  v3 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto19SceneDebugHUDUIView_sceneOverlay;
  *&v1[v3] = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v4 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto19SceneDebugHUDUIView_label;
  *&v1[v4] = sub_25E6D3C3C();
  v5 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto19SceneDebugHUDUIView_portraitOcclusionAnalysisLabel;
  *&v1[v5] = sub_25E6D3D90(&selRef_magentaColor);
  v6 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto19SceneDebugHUDUIView_landscapeOcclusionAnalysisLabel;
  *&v1[v6] = sub_25E6D3D90(&selRef_purpleColor);
  v7 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto19SceneDebugHUDUIView_portraitSubtitleOcclusionAnalysisLabel;
  *&v1[v7] = sub_25E6D3EF4(&selRef_magentaColor);
  v8 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto19SceneDebugHUDUIView_landscapeSubtitleOcclusionAnalysisLabel;
  *&v1[v8] = sub_25E6D3EF4(&selRef_purpleColor);
  v11.receiver = v1;
  v11.super_class = type metadata accessor for SpatialPhoto.SceneDebugHUDUIView();
  v9 = objc_msgSendSuper2(&v11, sel_initWithCoder_, a1);

  if (v9)
  {
  }

  return v9;
}

id SpatialPhoto.SceneDebugHUDUIView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SpatialPhoto.SceneDebugHUDUIView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_25E6D50D8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_25E6D51D0;

  return v6(a1);
}

uint64_t sub_25E6D51D0()
{
  OUTLINED_FUNCTION_10_0();
  v1 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v2 = v1;

  OUTLINED_FUNCTION_7_2();

  return v3();
}

void sub_25E6D52B8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_25E6D80C4();

  [a3 setText_];
}

uint64_t sub_25E6D531C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25E6D535C()
{
  MEMORY[0x25F8BCF80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25E6D5394()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25E6D53D4(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_4_4(v6);
  *v7 = v8;
  v7[1] = sub_25E6D5480;

  return sub_25E6D3804(a1, v3, v4, v5);
}

uint64_t sub_25E6D5480()
{
  OUTLINED_FUNCTION_10_0();
  v1 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v2 = v1;

  OUTLINED_FUNCTION_7_2();

  return v3();
}

uint64_t sub_25E6D5564(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD016E8, &qword_25E6DBA50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25E6D55D4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25E6D560C()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_4_4(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2_3(v1);

  return v4(v3);
}

uint64_t sub_25E6D56A4()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_4_4(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2_3(v1);

  return v4(v3);
}

uint64_t OUTLINED_FUNCTION_1_3(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_6_3(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

BOOL OUTLINED_FUNCTION_12_0()
{
  v5 = v2;
  v6 = v3;
  v7 = v4;
  v8 = v1;

  return CGRectIsNull(*&v5);
}

id OUTLINED_FUNCTION_13_0@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + a1);

  return [v4 (v2 + 120)];
}

id SpatialPhoto.SceneUIView.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_4_0();
  v1 = objc_allocWithZone(v0);
  OUTLINED_FUNCTION_2_4();

  return [v2 v3];
}

char *SpatialPhoto.SceneUIView.init(frame:)()
{
  v1 = v0;
  OUTLINED_FUNCTION_4_0();
  v41 = sub_25E6D7D24();
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_4();
  v7 = v6 - v5;
  v8 = sub_25E6D7A04();
  OUTLINED_FUNCTION_1_0();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4();
  v14 = v13 - v12;
  v15 = sub_25E6D7A84();
  OUTLINED_FUNCTION_1_0();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_4();
  v21 = v20 - v19;
  *(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11SceneUIView_secondaryView) = 0;
  *(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11SceneUIView_debugHUDView) = 0;
  v22 = objc_allocWithZone(type metadata accessor for SpatialPhoto.MetalUIView(0));
  OUTLINED_FUNCTION_2_4();
  v25 = [v23 v24];
  v26 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11SceneUIView_metalView;
  *(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11SceneUIView_metalView) = v25;
  (*(v17 + 104))(v21, *MEMORY[0x277D3CB80], v15);
  sub_25E6D7AB4();
  swift_allocObject();
  *(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11SceneUIView_cameraController) = sub_25E6D7A94();
  v27 = *(v1 + v26);
  sub_25E6D5C78();
  (*(v10 + 104))(v14, *MEMORY[0x277D3CB28], v8);
  (*(v3 + 104))(v7, *MEMORY[0x277D3CBC8], v41);
  sub_25E6D7DC4();
  swift_allocObject();

  v28 = v27;
  *(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11SceneUIView_viewModel) = sub_25E6D7D94();
  type metadata accessor for SpatialPhoto.SceneUIView();
  OUTLINED_FUNCTION_2_4();
  v31 = objc_msgSendSuper2(v29, v30);
  v32 = *&v31[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11SceneUIView_metalView];
  v33 = v31;
  [v33 addSubview_];
  v34 = type metadata accessor for SpatialPhoto.SceneDebugHUDUIView();
  v35 = v33;
  if (sub_25E6D4A74())
  {
    v36 = objc_allocWithZone(v34);
    OUTLINED_FUNCTION_2_4();
    v39 = [v37 v38];
    [v39 setAutoresizingMask_];
    [v33 addSubview_];
    v35 = *&v33[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11SceneUIView_debugHUDView];
    *&v33[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11SceneUIView_debugHUDView] = v39;
  }

  return v33;
}

unint64_t sub_25E6D5C78()
{
  result = qword_27FD010D8;
  if (!qword_27FD010D8)
  {
    type metadata accessor for SpatialPhoto.MetalUIView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD010D8);
  }

  return result;
}

void sub_25E6D5D18()
{
  *(v0 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11SceneUIView_secondaryView) = 0;
  *(v0 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11SceneUIView_debugHUDView) = 0;
  sub_25E6D8354();
  __break(1u);
}

void sub_25E6D5E04(uint64_t a1)
{

  sub_25E6D7DB4();
  v3 = *(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11SceneUIView_debugHUDView);
  if (v3)
  {
    v4 = v3;
    sub_25E6D344C(a1);
  }

  else
  {
  }
}

void (*sub_25E6D5EB0(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_25E6D7DA4();
  return sub_25E6D5F04;
}

void sub_25E6D5F04(uint64_t *a1, char a2)
{
  if (a2)
  {

    sub_25E6D5E04(v2);
  }

  else
  {
    sub_25E6D5E04(*a1);
  }
}

uint64_t (*sub_25E6D6000(uint64_t *a1))()
{
  a1[2] = *(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11SceneUIView_viewModel);
  *a1 = sub_25E6D7D34();
  a1[1] = v3;
  return sub_25E6D6054;
}

uint64_t sub_25E6D6054(void *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_25E6D7D44();
  }

  swift_unknownObjectRetain();
  sub_25E6D7D44();

  return swift_unknownObjectRelease();
}

void (*sub_25E6D6124())(uint64_t a1, uint64_t a2)
{
  v1 = __swift_coroFrameAllocStub(0x28uLL);
  OUTLINED_FUNCTION_5_5(v1);
  v2 = sub_25E6D7A04();
  OUTLINED_FUNCTION_3_6(v2);
  v0[2] = v3;
  v5 = *(v4 + 64);
  v0[3] = __swift_coroFrameAllocStub(v5);
  v0[4] = __swift_coroFrameAllocStub(v5);
  sub_25E6D7D54();
  return sub_25E6D61EC;
}

double sub_25E6D6204@<D0>(uint64_t a1@<X8>)
{
  sub_25E6D6288(v5);
  v2 = v6;
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

void sub_25E6D6248(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 16);
  v3[0] = *a1;
  v3[1] = v2;
  v4 = v1;
  sub_25E6D62B4(v3);
}

__n128 sub_25E6D6288@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11SceneUIView_metalView) + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView__regionOfInterest;
  v3 = *(v2 + 32);
  result = *v2;
  v5 = *(v2 + 16);
  *a1 = *v2;
  *(a1 + 16) = v5;
  *(a1 + 32) = v3;
  return result;
}

void sub_25E6D62B4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 16);
  v3[0] = *a1;
  v3[1] = v2;
  v4 = v1;
  sub_25E6BCAC4(v3);
}

uint64_t (*sub_25E6D62FC(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  v4 = *(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11SceneUIView_metalView) + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView__regionOfInterest;
  v5 = *(v4 + 32);
  v6 = *(v4 + 16);
  *v3 = *v4;
  *(v3 + 1) = v6;
  *(v3 + 32) = v5;
  return sub_25E6D6374;
}

void sub_25E6D6374(void **a1)
{
  v1 = *a1;
  v2 = (*a1)[1];
  v4 = (*a1)[2];
  v3 = (*a1)[3];
  v5 = *(*a1 + 32);
  v6[0] = **a1;
  v6[1] = v2;
  v6[2] = v4;
  v6[3] = v3;
  v7 = v5;
  sub_25E6D62B4(v6);

  free(v1);
}

uint64_t sub_25E6D63D4()
{
  v1 = *(v0 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11SceneUIView_metalView);
  v2 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_allowsDisplayCompositing;
  swift_beginAccess();
  return *(v1 + v2);
}

void (*sub_25E6D6454(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_25E6D63D4() & 1;
  return sub_25E6D64A0;
}

uint64_t sub_25E6D64D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(char *))
{
  (a5)(0, a2, a3, a4);
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_25E6D65FC(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void (*a4)(char *))
{
  v6 = a2(0);
  OUTLINED_FUNCTION_1_0();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v13 - v10;
  (*(v8 + 16))(&v13 - v10, a1, v6);
  a4(v11);
  return (*(v8 + 8))(a1, v6);
}

void (*sub_25E6D66F8())(uint64_t a1, uint64_t a2)
{
  v1 = __swift_coroFrameAllocStub(0x28uLL);
  OUTLINED_FUNCTION_5_5(v1);
  v2 = sub_25E6D7A14();
  OUTLINED_FUNCTION_3_6(v2);
  v0[2] = v3;
  v5 = *(v4 + 64);
  v0[3] = __swift_coroFrameAllocStub(v5);
  v0[4] = __swift_coroFrameAllocStub(v5);
  sub_25E6D7A74();
  return sub_25E6D67C0;
}

void sub_25E6D67D8(uint64_t a1, char a2, void (*a3)(void *))
{
  v4 = *a1;
  v5 = *(*a1 + 24);
  v6 = *(*a1 + 32);
  if (a2)
  {
    v7 = v4[1];
    v8 = v4[2];
    (*(v8 + 16))(*(*a1 + 24), v6, v7);
    a3(v5);
    (*(v8 + 8))(v6, v7);
  }

  else
  {
    a3(*(*a1 + 32));
  }

  free(v6);
  free(v5);

  free(v4);
}

void sub_25E6D68A0(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_25E6D6A9C(v1);
}

void sub_25E6D68D0(char *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11SceneUIView_secondaryView;
  swift_beginAccess();
  v5 = *&v2[v4];
  if (!a1)
  {
    if (!v5)
    {
      return;
    }

LABEL_12:
    v9 = v5;

    sub_25E6CAD40(v10);

    goto LABEL_13;
  }

  if (v5)
  {
    v6 = v5 == a1;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    return;
  }

  v7 = *&a1[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto32SpatialPhotoSceneSecondaryUIView_viewModel];
  if (v7 && *&v2[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11SceneUIView_viewModel] == v7)
  {
    v8 = a1;
    sub_25E6CAD40(0);

    v5 = *&v2[v4];
  }

  if (v5)
  {
    goto LABEL_12;
  }

LABEL_13:
  v11 = *&v2[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11SceneUIView_debugHUDView];
  if (v11)
  {
    v12 = *&v2[v4];
    if (v12)
    {
      v13 = v11;
      v14 = v12;
      [v14 bounds];
      [v13 setFrame_];
      [v14 addSubview_];
    }

    else
    {
      v15 = v11;
      [v15 removeFromSuperview];
      [v2 bounds];
      [v15 setFrame_];
      [v2 addSubview_];
    }
  }
}

void *sub_25E6D6A50()
{
  v1 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11SceneUIView_secondaryView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_25E6D6A9C(void *a1)
{
  v3 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11SceneUIView_secondaryView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;
  sub_25E6D68D0(v4);
}

void (*sub_25E6D6B08(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = v1;
  v4 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11SceneUIView_secondaryView;
  swift_beginAccess();
  v5 = *(v1 + v4);
  v3[3] = v5;
  v6 = v5;
  return sub_25E6D6B90;
}

void sub_25E6D6B90(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 24);
  v3 = *v4;
  if (a2)
  {
    v5 = v3;
    sub_25E6D6A9C(v3);
  }

  else
  {
    sub_25E6D6A9C(*(*a1 + 24));
  }

  free(v2);
}

id sub_25E6D6BFC()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for SpatialPhoto.SceneUIView();
  objc_msgSendSuper2(&v3, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11SceneUIView_metalView];
  [v0 bounds];
  [v1 setFrame_];
  return [v1 layoutIfNeeded];
}

id SpatialPhoto.SceneUIView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SpatialPhoto.SceneUIView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_25E6D6D6C()
{
  OUTLINED_FUNCTION_4_1();
  result = sub_25E6D5DD8();
  *v0 = result;
  return result;
}

uint64_t sub_25E6D6D98()
{
  OUTLINED_FUNCTION_4_1();
  result = sub_25E6D5FA8();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_25E6D6E30()
{
  OUTLINED_FUNCTION_4_1();
  result = sub_25E6D63D4();
  *v0 = result & 1;
  return result;
}

void *sub_25E6D6EE8()
{
  OUTLINED_FUNCTION_4_1();
  result = sub_25E6D6A50();
  *v0 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_5_5(void *a1)
{
  *v1 = a1;
  *a1 = v2;
  return 0;
}

id PXSpatialPhotoGetLog()
{
  if (PXSpatialPhotoGetLog_onceToken != -1)
  {
    dispatch_once(&PXSpatialPhotoGetLog_onceToken, &__block_literal_global);
  }

  v1 = PXSpatialPhotoGetLog_log;

  return v1;
}

uint64_t __PXSpatialPhotoGetLog_block_invoke()
{
  PXSpatialPhotoGetLog_log = os_log_create("com.apple.photos.ui", "SpatialPhoto");

  return MEMORY[0x2821F96F8]();
}

void PXSpatialPhotoConfigureMotionManager(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 BOOLForKey:@"SpatialPhotoDisableMotionPowerConservation"];

  if ((v3 & 1) == 0)
  {
    v4 = PXSpatialPhotoGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6[0] = 67109120;
      v6[1] = 3;
      _os_log_impl(&dword_25E6B5000, v4, OS_LOG_TYPE_DEFAULT, "PXSpatialPhotoConfigureMotionManager setPowerConservationMode: %d", v6, 8u);
    }

    [v1 setPowerConservationMode:3];
  }

  if (PXSpatialPhotoWantsLightSourceReference_onceToken != -1)
  {
    dispatch_once(&PXSpatialPhotoWantsLightSourceReference_onceToken, &__block_literal_global_5);
  }

  if (PXSpatialPhotoWantsLightSourceReference_enabled == 1 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v5 = PXSpatialPhotoGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v6[0]) = 0;
      _os_log_impl(&dword_25E6B5000, v5, OS_LOG_TYPE_DEFAULT, "PXSpatialPhotoConfigureMotionManager setShouldResetStartingReference: NO", v6, 2u);
    }

    [v1 setShouldResetStartingReference:0];
  }
}

void __PXSpatialPhotoWantsLightSourceReference_block_invoke()
{
  v3 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277CC1CD8] instancesRespondToSelector:sel_setShouldResetStartingReference_])
  {
    v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    PXSpatialPhotoWantsLightSourceReference_enabled = [v0 BOOLForKey:@"SpatialPhotoDisableLightSourceReference"] ^ 1;
  }

  else
  {
    PXSpatialPhotoWantsLightSourceReference_enabled = 0;
  }

  v1 = PXSpatialPhotoGetLog();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v2[0] = 67109120;
    v2[1] = PXSpatialPhotoWantsLightSourceReference_enabled;
    _os_log_impl(&dword_25E6B5000, v1, OS_LOG_TYPE_DEFAULT, "PXSpatialPhotoWantsLightSourceReference: %d", v2, 8u);
  }
}

uint64_t PXSpatialPhotoWantsLightSourceReference()
{
  if (PXSpatialPhotoWantsLightSourceReference_onceToken != -1)
  {
    dispatch_once(&PXSpatialPhotoWantsLightSourceReference_onceToken, &__block_literal_global_5);
  }

  return PXSpatialPhotoWantsLightSourceReference_enabled;
}

uint64_t PXSpatialPhotoMetalLayerSetWantsIOSurfaceCompression(void *a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = objc_opt_respondsToSelector();
  if (v4)
  {
    v5 = PXSpatialPhotoGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7[0] = 67109120;
      v7[1] = a2;
      _os_log_impl(&dword_25E6B5000, v5, OS_LOG_TYPE_DEFAULT, "PXSpatialPhotoMetalLayerSetWantsIOSurfaceCompression %d", v7, 8u);
    }

    [v3 setWantsIOSurfaceCompression:a2];
  }

  return v4 & 1;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x2821115D8](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}