BOOL CMMsl::Item::operator==(uint64_t a1, uint64_t a2, __n128 a3)
{
  if (*(a1 + 3928))
  {
    if ((*(a2 + 3928) & 1) == 0)
    {
      return 0;
    }

    a3.n128_u64[0] = *(a1 + 696);
    if (a3.n128_f64[0] != *(a2 + 696))
    {
      return 0;
    }
  }

  else if (*(a2 + 3928))
  {
    return 0;
  }

  v5 = *(a1 + 1360);
  v6 = *(a2 + 1360);
  if (v5)
  {
    if (!v6 || !CMMsl::GyroBiasCorrection::operator==(v5, v6))
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v7 = *(a1 + 1352);
  v8 = *(a2 + 1352);
  if (v7)
  {
    if (!v8 || !CMMsl::GyroBiasConstraints::operator==(v7, v8))
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  v9 = *(a1 + 1328);
  v10 = *(a2 + 1328);
  if (v9)
  {
    if (!v10 || !CMMsl::GravityCorrection::operator==(v9, v10))
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  v11 = *(a1 + 1320);
  v12 = *(a2 + 1320);
  if (v11)
  {
    if (!v12 || !CMMsl::GravityConstraints::operator==(v11, v12))
    {
      return 0;
    }
  }

  else if (v12)
  {
    return 0;
  }

  v13 = *(a1 + 768);
  v14 = *(a2 + 768);
  if (v13)
  {
    if (!v14)
    {
      return 0;
    }

    v15 = *(v13 + 8);
    v16 = *(v14 + 8);
    if (v15)
    {
      if (!v16 || !CMMsl::DeviceMotionCorrection::operator==(v15, v16))
      {
        return 0;
      }
    }

    else if (v16)
    {
      return 0;
    }
  }

  else if (v14)
  {
    return 0;
  }

  v17 = *(a1 + 760);
  v18 = *(a2 + 760);
  if (v17)
  {
    if (!v18 || !CMMsl::CompassConstraints::operator==(v17, v18))
    {
      return 0;
    }
  }

  else if (v18)
  {
    return 0;
  }

  v19 = *(a1 + 816);
  v20 = *(a2 + 816);
  if (v19)
  {
    if (!v20)
    {
      return 0;
    }

    v21 = *(v19 + 8);
    v22 = *(v20 + 8);
    if (v21)
    {
      if (!v22 || !CMMsl::DeviceMotionCorrection::operator==(v21, v22))
      {
        return 0;
      }
    }

    else if (v22)
    {
      return 0;
    }
  }

  else if (v20)
  {
    return 0;
  }

  v23 = *(a1 + 808);
  v24 = *(a2 + 808);
  if (v23)
  {
    if (!v24 || !CMMsl::CourseConstraints::operator==(v23, v24))
    {
      return 0;
    }
  }

  else if (v24)
  {
    return 0;
  }

  v25 = *(a1 + 1672);
  v26 = *(a2 + 1672);
  if (v25)
  {
    if (!v26 || !CMMsl::IntersiloNSCodingData::operator==(v25, v26) && *(a1 + 1672) | *(a2 + 1672))
    {
      return 0;
    }
  }

  else if (v26)
  {
    return 0;
  }

  v27 = *(a1 + 856);
  v28 = *(a2 + 856);
  if (v27)
  {
    if (!v28 || !CMMsl::DeviceMotionCovariance::operator==(v27, v28))
    {
      return 0;
    }
  }

  else if (v28)
  {
    return 0;
  }

  v29 = *(a1 + 112);
  v30 = *(a2 + 112);
  if (v29)
  {
    if (!v30 || !CMMsl::AccessoryAccel::operator==(v29, v30))
    {
      return 0;
    }
  }

  else if (v30)
  {
    return 0;
  }

  v31 = *(a1 + 176);
  v32 = *(a2 + 176);
  if (v31)
  {
    if (!v32 || !CMMsl::AccessoryGyro::operator==(v31, v32))
    {
      return 0;
    }
  }

  else if (v32)
  {
    return 0;
  }

  v33 = *(a1 + 256);
  v34 = *(a2 + 256);
  if (v33)
  {
    if (!v34 || !CMMsl::AccessoryProx::operator==(v33, v34))
    {
      return 0;
    }
  }

  else if (v34)
  {
    return 0;
  }

  v35 = *(a1 + 3720);
  v36 = *(a2 + 3720);
  if (v35)
  {
    if (!v36)
    {
      return 0;
    }

    v37 = *(v35 + 8);
    v38 = *(v36 + 8);
    if (v37)
    {
      if (!v38 || !CMMsl::Accel::operator==(v37, v38))
      {
        return 0;
      }
    }

    else if (v38)
    {
      return 0;
    }
  }

  else if (v36)
  {
    return 0;
  }

  v39 = *(a1 + 3760);
  v40 = *(a2 + 3760);
  if (v39)
  {
    if (!v40)
    {
      return 0;
    }

    v41 = *(v39 + 8);
    v42 = *(v40 + 8);
    if (v41)
    {
      if (!v42 || !CMMsl::BodyMetrics::operator==(v41, v42))
      {
        return 0;
      }
    }

    else if (v42)
    {
      return 0;
    }
  }

  else if (v40)
  {
    return 0;
  }

  v43 = *(a1 + 3776);
  v44 = *(a2 + 3776);
  if (v43)
  {
    if (!v44)
    {
      return 0;
    }

    v45 = *(v43 + 8);
    v46 = *(v44 + 8);
    if (v45)
    {
      if (!v46 || !CMMsl::ElevationChange::operator==(v45, v46))
      {
        return 0;
      }
    }

    else if (v46)
    {
      return 0;
    }
  }

  else if (v44)
  {
    return 0;
  }

  v47 = *(a1 + 3808);
  v48 = *(a2 + 3808);
  if (v47)
  {
    if (!v48)
    {
      return 0;
    }

    v49 = *(v47 + 8);
    v50 = *(v48 + 8);
    if (v49)
    {
      if (!v50 || !CMMsl::OnsetHeartRateData::operator==(v49, v50))
      {
        return 0;
      }
    }

    else if (v50)
    {
      return 0;
    }
  }

  else if (v48)
  {
    return 0;
  }

  v51 = *(a1 + 3864);
  v52 = *(a2 + 3864);
  if (v51)
  {
    if (!v52)
    {
      return 0;
    }

    v53 = *(v51 + 8);
    v54 = *(v52 + 8);
    if (v53)
    {
      if (!v54 || !CMMsl::RotationRate::operator==(v53, v54))
      {
        return 0;
      }
    }

    else if (v54)
    {
      return 0;
    }
  }

  else if (v52)
  {
    return 0;
  }

  v55 = *(a1 + 3848);
  v56 = *(a2 + 3848);
  if (v55)
  {
    if (!v56)
    {
      return 0;
    }

    v57 = *(v55 + 8);
    v58 = *(v56 + 8);
    if (v57)
    {
      if (!v58 || !CMMsl::OdometerWithAltitude::operator==(v57, v58))
      {
        return 0;
      }
    }

    else if (v58)
    {
      return 0;
    }
  }

  else if (v56)
  {
    return 0;
  }

  v59 = *(a1 + 3896);
  v60 = *(a2 + 3896);
  if (v59)
  {
    if (!v60)
    {
      return 0;
    }

    v61 = *(v59 + 8);
    v62 = *(v60 + 8);
    if (v61)
    {
      if (!v62 || !CMMsl::WorkoutEvent::operator==(v61, v62))
      {
        return 0;
      }
    }

    else if (v62)
    {
      return 0;
    }
  }

  else if (v60)
  {
    return 0;
  }

  v63 = *(a1 + 3592);
  v64 = *(a2 + 3592);
  if (v63)
  {
    if (!v64 || !CMMsl::VO2MaxInput::operator==(v63, v64))
    {
      return 0;
    }
  }

  else if (v64)
  {
    return 0;
  }

  v65 = *(a1 + 600);
  v66 = *(a2 + 600);
  if (v65)
  {
    if (!v66 || !sub_25AB27E54(*(v65 + 8), *(v65 + 16), *(v66 + 8), *(v66 + 16)))
    {
      return 0;
    }
  }

  else if (v66)
  {
    return 0;
  }

  v67 = *(a1 + 608);
  v68 = *(a2 + 608);
  if (v67)
  {
    if (!v68 || !CMMsl::BraveHeartNatalieData::operator==(v67, v68))
    {
      return 0;
    }
  }

  else if (v68)
  {
    return 0;
  }

  v69 = *(a1 + 616);
  v70 = *(a2 + 616);
  if (v69)
  {
    if (!v70 || !sub_25AB29308(*(v69 + 8), *(v69 + 16), *(v70 + 8), *(v70 + 16)))
    {
      return 0;
    }
  }

  else if (v70)
  {
    return 0;
  }

  v71 = *(a1 + 592);
  v72 = *(a2 + 592);
  if (v71)
  {
    if (!v72 || !sub_25AB27374(*(v71 + 8), *(v71 + 16), *(v72 + 8), *(v72 + 16)))
    {
      return 0;
    }
  }

  else if (v72)
  {
    return 0;
  }

  v73 = *(a1 + 624);
  v74 = *(a2 + 624);
  if (v73)
  {
    if (!v74 || !CMMsl::BraveHeartWorkoutEvent::operator==(v73, v74))
    {
      return 0;
    }
  }

  else if (v74)
  {
    return 0;
  }

  v75 = *(a1 + 3800);
  v76 = *(a2 + 3800);
  if (v75)
  {
    if (!v76 || !CMMsl::WorkoutRecorderHealthKitInfo::operator==(v75, v76))
    {
      return 0;
    }
  }

  else if (v76)
  {
    return 0;
  }

  v77 = *(a1 + 2544);
  v78 = *(a2 + 2544);
  if (v77)
  {
    if (!v78 || !CMMsl::PearlAttitude::operator==(v77, v78))
    {
      return 0;
    }
  }

  else if (v78)
  {
    return 0;
  }

  v79 = *(a1 + 2968);
  v80 = *(a2 + 2968);
  if (v79)
  {
    if (!v80 || !CMMsl::RotationRate::operator==(v79, v80))
    {
      return 0;
    }
  }

  else if (v80)
  {
    return 0;
  }

  v81 = *(a1 + 3880);
  v82 = *(a2 + 3880);
  if (v81)
  {
    if (!v82)
    {
      return 0;
    }

    v83 = *(v81 + 8);
    v84 = *(v82 + 8);
    if (v83)
    {
      if (!v84 || !CMMsl::WatchOrientationSettings::operator==(v83, v84))
      {
        return 0;
      }
    }

    else if (v84)
    {
      return 0;
    }
  }

  else if (v82)
  {
    return 0;
  }

  v86 = *(a1 + 3672);
  v87 = *(a2 + 3672);
  if (v86)
  {
    if (!v87 || !CMMsl::WatchOnWristState::operator==(v86, v87))
    {
      return 0;
    }
  }

  else if (v87)
  {
    return 0;
  }

  v88 = *(a1 + 688);
  v89 = *(a2 + 688);
  if (v88)
  {
    if (!v89 || !CMMsl::CatherineHealthKitData::operator==(v88, v89))
    {
      return 0;
    }
  }

  else if (v89)
  {
    return 0;
  }

  v90 = *(a1 + 3688);
  v91 = *(a2 + 3688);
  if (v90)
  {
    if (!v91 || !sub_25AD1A4B0(*(v90 + 8), *(v90 + 16), *(v91 + 8), *(v91 + 16)))
    {
      return 0;
    }
  }

  else if (v91)
  {
    return 0;
  }

  v92 = *(a1 + 1640);
  v93 = *(a2 + 1640);
  if (v92)
  {
    if (!v93 || !CMMsl::InEarTransitionEntry::operator==(v92, v93))
    {
      return 0;
    }
  }

  else if (v93)
  {
    return 0;
  }

  v94 = *(a1 + 1624);
  v95 = *(a2 + 1624);
  if (v94)
  {
    if (!v95 || !CMMsl::InEarSession::operator==(v94, v95))
    {
      return 0;
    }
  }

  else if (v95)
  {
    return 0;
  }

  v96 = *(a1 + 1584);
  v97 = *(a2 + 1584);
  if (v96)
  {
    if (!v97 || !CMMsl::InEarBaseline::operator==(v96, v97))
    {
      return 0;
    }
  }

  else if (v97)
  {
    return 0;
  }

  v98 = *(a1 + 264);
  v99 = *(a2 + 264);
  if (v98)
  {
    if (!v99 || !CMMsl::AccessoryProxSensorDrop::operator==(v98, v99))
    {
      return 0;
    }
  }

  else if (v99)
  {
    return 0;
  }

  v100 = *(a1 + 272);
  v101 = *(a2 + 272);
  if (v100)
  {
    if (!v101 || !CMMsl::AccessoryProxTempComp::operator==(v100, v101))
    {
      return 0;
    }
  }

  else if (v101)
  {
    return 0;
  }

  v102 = *(a1 + 312);
  v103 = *(a2 + 312);
  if (v102)
  {
    if (!v103 || !CMMsl::AccessoryWake::operator==(v102, v103))
    {
      return 0;
    }
  }

  else if (v103)
  {
    return 0;
  }

  v104 = *(a1 + 1024);
  v105 = *(a2 + 1024);
  if (v104)
  {
    if (!v105 || !CMMsl::FacePose::operator==(v104, v105))
    {
      return 0;
    }
  }

  else if (v105)
  {
    return 0;
  }

  v106 = *(a1 + 3888);
  v107 = *(a2 + 3888);
  if (v106)
  {
    if (!v107 || !CMMsl::WorkoutRecorderWifiScanResults::operator==(v106, v107))
    {
      return 0;
    }
  }

  else if (v107)
  {
    return 0;
  }

  v108 = *(a1 + 3856);
  v109 = *(a2 + 3856);
  if (v108)
  {
    if (!v109)
    {
      return 0;
    }

    v110 = *(v108 + 8);
    v111 = *(v109 + 8);
    if (v110)
    {
      if (!v111 || !CMMsl::Pressure::operator==(v110, v111))
      {
        return 0;
      }
    }

    else if (v111)
    {
      return 0;
    }
  }

  else if (v109)
  {
    return 0;
  }

  v112 = *(a1 + 1576);
  v113 = *(a2 + 1576);
  if (v112)
  {
    if (!v113 || !CMMsl::InEarAdditionalState::operator==(v112, v113))
    {
      return 0;
    }
  }

  else if (v113)
  {
    return 0;
  }

  v114 = *(a1 + 160);
  v115 = *(a2 + 160);
  if (v114)
  {
    if (!v115 || !CMMsl::AccessoryDeviceMotion::operator==(v114, v115))
    {
      return 0;
    }
  }

  else if (v115)
  {
    return 0;
  }

  v116 = *(a1 + 3552);
  v117 = *(a2 + 3552);
  if (v116)
  {
    if (!v117 || !CMMsl::VisionCompassBias::operator==(v116, v117))
    {
      return 0;
    }
  }

  else if (v117)
  {
    return 0;
  }

  v118 = *(a1 + 392);
  v119 = *(a2 + 392);
  if (v118)
  {
    if (!v119)
    {
      return 0;
    }

    if (*(v118 + 12))
    {
      if ((*(v119 + 12) & 1) == 0 || *(v118 + 8) != *(v119 + 8))
      {
        return 0;
      }
    }

    else if (*(v119 + 12))
    {
      return 0;
    }
  }

  else if (v119)
  {
    return 0;
  }

  v120 = *(a1 + 3528);
  v121 = *(a2 + 3528);
  if (v120)
  {
    if (!v121 || !CMMsl::VIOEstimation::operator==(v120, v121))
    {
      return 0;
    }
  }

  else if (v121)
  {
    return 0;
  }

  v122 = *(a1 + 2088);
  v123 = *(a2 + 2088);
  if (v122)
  {
    if (!v123 || !CMMsl::LSLHeadingEstimation::operator==(v122, v123))
    {
      return 0;
    }
  }

  else if (v123)
  {
    return 0;
  }

  v124 = *(a1 + 1112);
  v125 = *(a2 + 1112);
  if (v124)
  {
    if (!v125 || !CMMsl::FallSnippet::operator==(v124, v125))
    {
      return 0;
    }
  }

  else if (v125)
  {
    return 0;
  }

  v126 = *(a1 + 104);
  v127 = *(a2 + 104);
  if (v126)
  {
    if (!v127 || !CMMsl::AccelerometerPace::operator==(v126, v127))
    {
      return 0;
    }
  }

  else if (v127)
  {
    return 0;
  }

  v128 = *(a1 + 2288);
  v129 = *(a2 + 2288);
  if (v128)
  {
    if (!v129)
    {
      return 0;
    }

    if (*(v128 + 12))
    {
      if ((*(v129 + 12) & 1) == 0)
      {
        return 0;
      }

      a3.n128_u32[0] = *(v128 + 8);
      if (a3.n128_f32[0] != *(v129 + 8))
      {
        return 0;
      }
    }

    else if (*(v129 + 12))
    {
      return 0;
    }
  }

  else if (v129)
  {
    return 0;
  }

  v130 = *(a1 + 3280);
  v131 = *(a2 + 3280);
  if (v130)
  {
    if (!v131 || !CMMsl::StepCountEntry::operator==(v130, v131))
    {
      return 0;
    }
  }

  else if (v131)
  {
    return 0;
  }

  v132 = *(a1 + 2168);
  v133 = *(a2 + 2168);
  if (v132)
  {
    if (!v133 || !CMMsl::MobilityBoutMetrics::operator==(v132, v133))
    {
      return 0;
    }
  }

  else if (v133)
  {
    return 0;
  }

  v134 = *(a1 + 800);
  v135 = *(a2 + 800);
  if (v134)
  {
    if (!v135 || !CMMsl::CoprocessorReplyGaitMetrics::operator==(v134, v135))
    {
      return 0;
    }
  }

  else if (v135)
  {
    return 0;
  }

  v136 = *(a1 + 3536);
  v137 = *(a2 + 3536);
  if (v136)
  {
    if (!v137 || !CMMsl::VIOPose::operator==(v136, v137))
    {
      return 0;
    }
  }

  else if (v137)
  {
    return 0;
  }

  v138 = *(a1 + 3096);
  v139 = *(a2 + 3096);
  if (v138)
  {
    if (!v139)
    {
      return 0;
    }

    if (*(v138 + 12))
    {
      if ((*(v139 + 12) & 1) == 0 || *(v138 + 8) != *(v139 + 8))
      {
        return 0;
      }
    }

    else if (*(v139 + 12))
    {
      return 0;
    }
  }

  else if (v139)
  {
    return 0;
  }

  v140 = *(a1 + 3544);
  v141 = *(a2 + 3544);
  if (v140)
  {
    if (!v141 || !CMMsl::VIOReplayPose::operator==(v140, v141))
    {
      return 0;
    }
  }

  else if (v141)
  {
    return 0;
  }

  v142 = *(a1 + 3584);
  v143 = *(a2 + 3584);
  if (v142)
  {
    if (!v143 || !CMMsl::VisualStateMeasurement::operator==(v142, v143))
    {
      return 0;
    }
  }

  else if (v143)
  {
    return 0;
  }

  v144 = *(a1 + 1960);
  v145 = *(a2 + 1960);
  if (v144)
  {
    if (!v145 || !CMMsl::KappaTriggerDebug::operator==(v144, v145))
    {
      return 0;
    }
  }

  else if (v145)
  {
    return 0;
  }

  v146 = *(a1 + 1760);
  v147 = *(a2 + 1760);
  if (v146)
  {
    if (!v147 || !CMMsl::KappaDirectionOfTravel::operator==(v146, v147))
    {
      return 0;
    }
  }

  else if (v147)
  {
    return 0;
  }

  v148 = *(a1 + 1552);
  v149 = *(a2 + 1552);
  if (v148)
  {
    if (!v149)
    {
      return 0;
    }

    v150 = *(v148 + 8);
    v151 = *(v149 + 8);
    if (v150)
    {
      if (!v151 || !CMMsl::Accel::operator==(v150, v151))
      {
        return 0;
      }
    }

    else if (v151)
    {
      return 0;
    }
  }

  else if (v149)
  {
    return 0;
  }

  v152 = *(a1 + 1928);
  v153 = *(a2 + 1928);
  if (v152)
  {
    if (!v153 || !CMMsl::KappaSteps::operator==(v152, v153))
    {
      return 0;
    }
  }

  else if (v153)
  {
    return 0;
  }

  v154 = *(a1 + 3448);
  v155 = *(a2 + 3448);
  if (v154)
  {
    if (!v155 || !CMMsl::SignificantUserInteraction::operator==(v154, v155))
    {
      return 0;
    }
  }

  else if (v155)
  {
    return 0;
  }

  v156 = *(a1 + 1888);
  v157 = *(a2 + 1888);
  if (v156)
  {
    if (!v157 || !CMMsl::KappaRoads::operator==(v156, v157))
    {
      return 0;
    }
  }

  else if (v157)
  {
    return 0;
  }

  v158 = *(a1 + 3456);
  v159 = *(a2 + 3456);
  if (v158)
  {
    if (!v159 || !CMMsl::UserStudyEvent::operator==(v158, v159))
    {
      return 0;
    }
  }

  else if (v159)
  {
    return 0;
  }

  v160 = *(a1 + 424);
  v161 = *(a2 + 424);
  if (v160)
  {
    if (!v161 || !CMMsl::AuxiliaryDeviceMotion::operator==(v160, v161))
    {
      return 0;
    }
  }

  else if (v161)
  {
    return 0;
  }

  v162 = *(a1 + 3392);
  v163 = *(a2 + 3392);
  if (v162)
  {
    if (!v163 || !CMMsl::TempestPoCAuxiliaryDeviceMotion::operator==(v162, v163))
    {
      return 0;
    }
  }

  else if (v163)
  {
    return 0;
  }

  v164 = *(a1 + 416);
  v165 = *(a2 + 416);
  if (v164)
  {
    if (!v165 || !CMMsl::AudioAccessoryDeviceMotion::operator==(v164, v165))
    {
      return 0;
    }
  }

  else if (v165)
  {
    return 0;
  }

  v166 = *(a1 + 3400);
  v167 = *(a2 + 3400);
  if (v166)
  {
    if (!v167 || !CMMsl::TempestPoCListenerOrientation::operator==(v166, v167))
    {
      return 0;
    }
  }

  else if (v167)
  {
    return 0;
  }

  v168 = *(a1 + 3728);
  v169 = *(a2 + 3728);
  if (v168)
  {
    if (!v169)
    {
      return 0;
    }

    v170 = *(v168 + 8);
    v171 = *(v169 + 8);
    if (v170)
    {
      if (!v171 || !CMMsl::Accel::operator==(v170, v171))
      {
        return 0;
      }
    }

    else if (v171)
    {
      return 0;
    }
  }

  else if (v169)
  {
    return 0;
  }

  v172 = *(a1 + 336);
  v173 = *(a2 + 336);
  if (v172)
  {
    if (!v173)
    {
      return 0;
    }

    if (*(v172 + 12))
    {
      if ((*(v173 + 12) & 1) == 0)
      {
        return 0;
      }

      a3.n128_u32[0] = *(v172 + 8);
      if (a3.n128_f32[0] != *(v173 + 8))
      {
        return 0;
      }
    }

    else if (*(v173 + 12))
    {
      return 0;
    }
  }

  else if (v173)
  {
    return 0;
  }

  v174 = *(a1 + 3712);
  v175 = *(a2 + 3712);
  if (v174)
  {
    if (!v175 || !CMMsl::WorkoutRecorderALSData::operator==(v174, v175))
    {
      return 0;
    }
  }

  else if (v175)
  {
    return 0;
  }

  v176 = *(a1 + 3560);
  v177 = *(a2 + 3560);
  if (v176)
  {
    if (!v177 || !CMMsl::VisualLocalization::operator==(v176, v177))
    {
      return 0;
    }
  }

  else if (v177)
  {
    return 0;
  }

  v178 = *(a1 + 1448);
  v179 = *(a2 + 1448);
  if (v178)
  {
    if (!v179 || !CMMsl::GyroFactoryCalibrationData::operator==(v178, v179))
    {
      return 0;
    }
  }

  else if (v179)
  {
    return 0;
  }

  v180 = *(a1 + 3184);
  v181 = *(a2 + 3184);
  if (v180)
  {
    if (!v181 || !CMMsl::SoundPressureLevel::operator==(v180, v181))
    {
      return 0;
    }
  }

  else if (v181)
  {
    return 0;
  }

  v182 = *(a1 + 1216);
  v183 = *(a2 + 1216);
  if (v182)
  {
    if (!v183 || !CMMsl::FrequencyResponse::operator==(v182, v183))
    {
      return 0;
    }
  }

  else if (v183)
  {
    return 0;
  }

  v184 = *(a1 + 984);
  v185 = *(a2 + 984);
  if (v184)
  {
    if (!v185)
    {
      return 0;
    }

    if (*(v184 + 12))
    {
      if ((*(v185 + 12) & 1) == 0 || *(v184 + 8) != *(v185 + 8))
      {
        return 0;
      }
    }

    else if (*(v185 + 12))
    {
      return 0;
    }
  }

  else if (v185)
  {
    return 0;
  }

  v186 = *(a1 + 48);
  v187 = *(a2 + 48);
  if (v186)
  {
    if (!v187)
    {
      return 0;
    }

    v188 = *(v186 + 8);
    v189 = *(v187 + 8);
    if (v188)
    {
      if (!v189 || !CMMsl::Accel::operator==(v188, v189))
      {
        return 0;
      }
    }

    else if (v189)
    {
      return 0;
    }
  }

  else if (v187)
  {
    return 0;
  }

  v190 = *(a1 + 2240);
  v191 = *(a2 + 2240);
  if (v190)
  {
    if (!v191 || !CMMsl::MotionLocation::operator==(v190, v191))
    {
      return 0;
    }
  }

  else if (v191)
  {
    return 0;
  }

  v192 = *(a1 + 2200);
  v193 = *(a2 + 2200);
  if (v192)
  {
    if (!v193 || !CMMsl::MotionActivity::operator==(v192, v193))
    {
      return 0;
    }
  }

  else if (v193)
  {
    return 0;
  }

  v194 = *(a1 + 552);
  v195 = *(a2 + 552);
  if (v194)
  {
    if (!v195 || !CMMsl::BioMotionPose::operator==(v194, v195))
    {
      return 0;
    }
  }

  else if (v195)
  {
    return 0;
  }

  v196 = *(a1 + 1944);
  v197 = *(a2 + 1944);
  if (v196)
  {
    if (!v197 || !CMMsl::KappaTrigger::operator==(v196, v197))
    {
      return 0;
    }
  }

  else if (v197)
  {
    return 0;
  }

  v198 = *(a1 + 2912);
  v199 = *(a2 + 2912);
  if (v198)
  {
    if (!v199 || !CMMsl::RelDMInSystemConfig::operator==(v198, v199))
    {
      return 0;
    }
  }

  else if (v199)
  {
    return 0;
  }

  v200 = *(a1 + 1696);
  v201 = *(a2 + 1696);
  if (v200)
  {
    if (!v201)
    {
      return 0;
    }

    v202 = *(v200 + 8);
    v203 = *(v201 + 8);
    if (v202)
    {
      if (!v203 || !CMMsl::BioMotionPose::operator==(v202, v203))
      {
        return 0;
      }
    }

    else if (v203)
    {
      return 0;
    }
  }

  else if (v201)
  {
    return 0;
  }

  v204 = *(a1 + 792);
  v205 = *(a2 + 792);
  if (v204)
  {
    if (!v205)
    {
      return 0;
    }

    v206 = *(v204 + 8);
    v207 = *(v205 + 8);
    if (v206)
    {
      if (!v207 || !CMMsl::BioMotionPose::operator==(v206, v207))
      {
        return 0;
      }
    }

    else if (v207)
    {
      return 0;
    }
  }

  else if (v205)
  {
    return 0;
  }

  v208 = *(a1 + 1408);
  v209 = *(a2 + 1408);
  if (v208)
  {
    if (!v209 || !CMMsl::GyroCalibrationSample::operator==(v208, v209))
    {
      return 0;
    }
  }

  else if (v209)
  {
    return 0;
  }

  v210 = *(a1 + 1416);
  v211 = *(a2 + 1416);
  if (v210)
  {
    if (!v211 || !CMMsl::GyroCalibrationSampleNonlinear::operator==(v210, v211))
    {
      return 0;
    }
  }

  else if (v211)
  {
    return 0;
  }

  v212 = *(a1 + 1400);
  v213 = *(a2 + 1400);
  if (v212)
  {
    if (!v213 || !sub_25AB9A3C8(*(v212 + 8), *(v212 + 16), *(v213 + 8), *(v213 + 16)))
    {
      return 0;
    }
  }

  else if (v213)
  {
    return 0;
  }

  v214 = *(a1 + 1392);
  v215 = *(a2 + 1392);
  if (v214)
  {
    if (!v215 || !sub_25AB998E8(*(v214 + 8), *(v214 + 16), *(v215 + 8), *(v215 + 16)))
    {
      return 0;
    }
  }

  else if (v215)
  {
    return 0;
  }

  v216 = *(a1 + 528);
  v217 = *(a2 + 528);
  if (v216)
  {
    if (!v217 || !CMMsl::BioMotionClassification::operator==(v216, v217))
    {
      return 0;
    }
  }

  else if (v217)
  {
    return 0;
  }

  v218 = *(a1 + 1224);
  v219 = *(a2 + 1224);
  if (v218)
  {
    if (!v219)
    {
      return 0;
    }

    v220 = *(v218 + 8);
    v221 = *(v219 + 8);
    if (v220)
    {
      if (!v221 || !CMMsl::BioMotionClassification::operator==(v220, v221))
      {
        return 0;
      }
    }

    else if (v221)
    {
      return 0;
    }
  }

  else if (v219)
  {
    return 0;
  }

  v222 = *(a1 + 2192);
  v223 = *(a2 + 2192);
  if (v222)
  {
    if (!v223)
    {
      return 0;
    }

    v224 = *(v222 + 8);
    v225 = *(v223 + 8);
    if (v224)
    {
      if (!v225 || !CMMsl::BioMotionClassification::operator==(v224, v225))
      {
        return 0;
      }
    }

    else if (v225)
    {
      return 0;
    }
  }

  else if (v223)
  {
    return 0;
  }

  v226 = *(a1 + 2096);
  v227 = *(a2 + 2096);
  if (v226)
  {
    if (!v227)
    {
      return 0;
    }

    v228 = *(v226 + 8);
    v229 = *(v227 + 8);
    if (v228)
    {
      if (!v229 || !CMMsl::BioMotionClassification::operator==(v228, v229))
      {
        return 0;
      }
    }

    else if (v229)
    {
      return 0;
    }
  }

  else if (v227)
  {
    return 0;
  }

  v230 = *(a1 + 2672);
  v231 = *(a2 + 2672);
  if (v230)
  {
    if (!v231 || !CMMsl::Pose::operator==(v230, v231))
    {
      return 0;
    }
  }

  else if (v231)
  {
    return 0;
  }

  v232 = *(a1 + 2680);
  v233 = *(a2 + 2680);
  if (v232)
  {
    if (!v233 || !CMMsl::PoseState::operator==(v232, v233))
    {
      return 0;
    }
  }

  else if (v233)
  {
    return 0;
  }

  v234 = *(a1 + 560);
  v235 = *(a2 + 560);
  if (v234)
  {
    if (!v235 || !CMMsl::BioMotionPredictedPose::operator==(v234, v235))
    {
      return 0;
    }
  }

  else if (v235)
  {
    return 0;
  }

  v236 = *(a1 + 1704);
  v237 = *(a2 + 1704);
  if (v236)
  {
    if (!v237)
    {
      return 0;
    }

    v238 = *(v236 + 8);
    v239 = *(v237 + 8);
    if (v238)
    {
      if (!v239 || !CMMsl::BioMotionPredictedPose::operator==(v238, v239))
      {
        return 0;
      }
    }

    else if (v239)
    {
      return 0;
    }
  }

  else if (v237)
  {
    return 0;
  }

  v240 = *(a1 + 784);
  v241 = *(a2 + 784);
  if (v240)
  {
    if (!v241)
    {
      return 0;
    }

    v242 = *(v240 + 8);
    v243 = *(v241 + 8);
    if (v242)
    {
      if (!v243 || !CMMsl::BioMotionPredictedPose::operator==(v242, v243))
      {
        return 0;
      }
    }

    else if (v243)
    {
      return 0;
    }
  }

  else if (v241)
  {
    return 0;
  }

  v244 = *(a1 + 2784);
  v245 = *(a2 + 2784);
  if (v244)
  {
    if (!v245)
    {
      return 0;
    }

    v246 = *(v244 + 8);
    v247 = *(v245 + 8);
    if (v246)
    {
      if (!v247 || !CMMsl::Pressure::operator==(v246, v247))
      {
        return 0;
      }
    }

    else if (v247)
    {
      return 0;
    }
  }

  else if (v245)
  {
    return 0;
  }

  v248 = *(a1 + 3600);
  v249 = *(a2 + 3600);
  if (v248)
  {
    if (!v249 || !CMMsl::VO2MaxOutput::operator==(v248, v249))
    {
      return 0;
    }
  }

  else if (v249)
  {
    return 0;
  }

  v250 = *(a1 + 2112);
  v251 = *(a2 + 2112);
  if (v250)
  {
    if (!v251 || !CMMsl::MagneticAccessoryType1::operator==(v250, v251))
    {
      return 0;
    }
  }

  else if (v251)
  {
    return 0;
  }

  v252 = *(a1 + 2120);
  v253 = *(a2 + 2120);
  if (v252)
  {
    if (!v253)
    {
      return 0;
    }

    if (*(v252 + 12))
    {
      if ((*(v253 + 12) & 1) == 0 || *(v252 + 8) != *(v253 + 8))
      {
        return 0;
      }
    }

    else if (*(v253 + 12))
    {
      return 0;
    }
  }

  else if (v253)
  {
    return 0;
  }

  v254 = *(a1 + 2776);
  v255 = *(a2 + 2776);
  if (v254)
  {
    if (!v255 || !CMMsl::PressureCalibration::operator==(v254, v255))
    {
      return 0;
    }
  }

  else if (v255)
  {
    return 0;
  }

  v256 = *(a1 + 3840);
  v257 = *(a2 + 3840);
  if (v256)
  {
    if (!v257)
    {
      return 0;
    }

    v258 = *(v256 + 8);
    v259 = *(v257 + 8);
    if (v258)
    {
      if (!v259 || !CMMsl::Magnetometer::operator==(v258, v259))
      {
        return 0;
      }
    }

    else if (v259)
    {
      return 0;
    }
  }

  else if (v257)
  {
    return 0;
  }

  v260 = *(a1 + 3768);
  v261 = *(a2 + 3768);
  if (v260)
  {
    if (!v261)
    {
      return 0;
    }

    v262 = *(v260 + 8);
    v263 = *(v261 + 8);
    if (v262)
    {
      if (!v263 || !CMMsl::CompassCalibration::operator==(v262, v263))
      {
        return 0;
      }
    }

    else if (v263)
    {
      return 0;
    }
  }

  else if (v261)
  {
    return 0;
  }

  v264 = *(a1 + 2904);
  v265 = *(a2 + 2904);
  if (v264)
  {
    if (!v265 || !CMMsl::RawAudio::operator==(v264, v265))
    {
      return 0;
    }
  }

  else if (v265)
  {
    return 0;
  }

  v266 = *(a1 + 656);
  v267 = *(a2 + 656);
  if (v266)
  {
    if (!v267 || !CMMsl::CV3DPredictedPose::operator==(v266, v267))
    {
      return 0;
    }
  }

  else if (v267)
  {
    return 0;
  }

  v268 = *(a1 + 536);
  v269 = *(a2 + 536);
  if (v268)
  {
    if (!v269 || !CMMsl::BioMotionLinkLengthFitParameters::operator==(v268, v269))
    {
      return 0;
    }
  }

  else if (v269)
  {
    return 0;
  }

  v270 = *(a1 + 544);
  v271 = *(a2 + 544);
  if (v270)
  {
    if (!v271 || !CMMsl::BioMotionOnlineLinkLengthUpdate::operator==(v270, v271))
    {
      return 0;
    }
  }

  else if (v271)
  {
    return 0;
  }

  v272 = *(a1 + 2352);
  v273 = *(a2 + 2352);
  if (v272)
  {
    if (!v273 || !CMMsl::ODTPose::operator==(v272, v273))
    {
      return 0;
    }
  }

  else if (v273)
  {
    return 0;
  }

  v274 = *(a1 + 2632);
  v275 = *(a2 + 2632);
  if (v274)
  {
    if (!v275 || !CMMsl::PencilTipForce::operator==(v274, v275))
    {
      return 0;
    }
  }

  else if (v275)
  {
    return 0;
  }

  v276 = *(a1 + 2640);
  v277 = *(a2 + 2640);
  if (v276)
  {
    if (!v277 || !CMMsl::PencilTouch::operator==(v276, v277))
    {
      return 0;
    }
  }

  else if (v277)
  {
    return 0;
  }

  v278 = *(a1 + 432);
  v279 = *(a2 + 432);
  if (v278)
  {
    if (!v279 || !CMMsl::AveragedALSData::operator==(v278, v279))
    {
      return 0;
    }
  }

  else if (v279)
  {
    return 0;
  }

  v280 = *(a1 + 3408);
  v281 = *(a2 + 3408);
  if (v280)
  {
    if (!v281 || !CMMsl::Timestamp::operator==(v280, v281))
    {
      return 0;
    }
  }

  else if (v281)
  {
    return 0;
  }

  v282 = *(a1 + 384);
  v283 = *(a2 + 384);
  if (v282)
  {
    if (!v283)
    {
      return 0;
    }

    v284 = *(v282 + 8);
    v285 = *(v283 + 8);
    if (v284)
    {
      if (!v285 || !CMMsl::CV3DSLAMState::operator==(v284, v285))
      {
        return 0;
      }
    }

    else if (v285)
    {
      return 0;
    }
  }

  else if (v283)
  {
    return 0;
  }

  v286 = *(a1 + 520);
  v287 = *(a2 + 520);
  if (v286)
  {
    if (!v287)
    {
      return 0;
    }

    v288 = *(v286 + 8);
    v289 = *(v287 + 8);
    if (v288)
    {
      if (!v289 || !CMMsl::BioMotionAnchor::operator==(v288, v289))
      {
        return 0;
      }
    }

    else if (v289)
    {
      return 0;
    }
  }

  else if (v287)
  {
    return 0;
  }

  v290 = *(a1 + 568);
  v291 = *(a2 + 568);
  if (v290)
  {
    if (!v291)
    {
      return 0;
    }

    v292 = *(v290 + 8);
    v293 = *(v291 + 8);
    if (v292)
    {
      if (!v293 || !CMMsl::PropagatedAnchor::operator==(v292, v293))
      {
        return 0;
      }
    }

    else if (v293)
    {
      return 0;
    }
  }

  else if (v291)
  {
    return 0;
  }

  v294 = *(a1 + 3632);
  v295 = *(a2 + 3632);
  if (v294)
  {
    if (!v295 || !CMMsl::WalkingSteadinessClassification::operator==(v294, v295))
    {
      return 0;
    }
  }

  else if (v295)
  {
    return 0;
  }

  v296 = *(a1 + 3248);
  v297 = *(a2 + 3248);
  if (v296)
  {
    if (!v297 || !CMMsl::SteadinessModelResult::operator==(v296, v297))
    {
      return 0;
    }
  }

  else if (v297)
  {
    return 0;
  }

  v298 = *(a1 + 3208);
  v299 = *(a2 + 3208);
  if (v298)
  {
    if (!v299 || !CMMsl::SteadinessEvent::operator==(v298, v299))
    {
      return 0;
    }
  }

  else if (v299)
  {
    return 0;
  }

  v300 = *(a1 + 3232);
  v301 = *(a2 + 3232);
  if (v300)
  {
    if (!v301 || !CMMsl::SteadinessModelGaitBaselineFeatures::operator==(v300, v301))
    {
      return 0;
    }
  }

  else if (v301)
  {
    return 0;
  }

  v302 = *(a1 + 3224);
  v303 = *(a2 + 3224);
  if (v302)
  {
    if (!v303 || !CMMsl::SteadinessModelContinuousWalkingFeatures::operator==(v302, v303))
    {
      return 0;
    }
  }

  else if (v303)
  {
    return 0;
  }

  v304 = *(a1 + 3256);
  v305 = *(a2 + 3256);
  if (v304)
  {
    if (!v305 || !CMMsl::SteadinessModelTemporalDispersionFeatures::operator==(v304, v305))
    {
      return 0;
    }
  }

  else if (v305)
  {
    return 0;
  }

  v306 = *(a1 + 3264);
  v307 = *(a2 + 3264);
  if (v306)
  {
    if (!v307 || !CMMsl::SteadinessModelTemporalEntropyFeatures::operator==(v306, v307))
    {
      return 0;
    }
  }

  else if (v307)
  {
    return 0;
  }

  v308 = *(a1 + 3216);
  v309 = *(a2 + 3216);
  if (v308)
  {
    if (!v309 || !CMMsl::SteadinessModelBalanceFeatures::operator==(v308, v309))
    {
      return 0;
    }
  }

  else if (v309)
  {
    return 0;
  }

  v310 = *(a1 + 2144);
  v311 = *(a2 + 2144);
  if (v310)
  {
    if (!v311 || !CMMsl::MagnetometerReset::operator==(v310, v311))
    {
      return 0;
    }
  }

  else if (v311)
  {
    return 0;
  }

  v312 = *(a1 + 3872);
  v313 = *(a2 + 3872);
  if (v312)
  {
    if (!v313)
    {
      return 0;
    }

    v314 = *(v312 + 8);
    v315 = *(v313 + 8);
    if (v314)
    {
      if (!v315 || !CMMsl::WatchOnWristState::operator==(v314, v315))
      {
        return 0;
      }
    }

    else if (v315)
    {
      return 0;
    }
  }

  else if (v313)
  {
    return 0;
  }

  v316 = *(a1 + 2048);
  v317 = *(a2 + 2048);
  if (v316)
  {
    if (!v317 || !CMMsl::LiftToWakeOnHeadStatus::operator==(v316, v317))
    {
      return 0;
    }
  }

  else if (v317)
  {
    return 0;
  }

  v318 = *(a1 + 232);
  v319 = *(a2 + 232);
  if (v318)
  {
    if (!v319 || !CMMsl::AccessoryMagnetometer::operator==(v318, v319))
    {
      return 0;
    }
  }

  else if (v319)
  {
    return 0;
  }

  v320 = *(a1 + 3288);
  v321 = *(a2 + 3288);
  if (v320)
  {
    if (!v321 || !CMMsl::StepCountEntryAddition::operator==(v320, v321))
    {
      return 0;
    }
  }

  else if (v321)
  {
    return 0;
  }

  v322 = *(a1 + 3296);
  v323 = *(a2 + 3296);
  if (v322)
  {
    if (!v323 || !CMMsl::StepDistanceFusionResult::operator==(v322, v323))
    {
      return 0;
    }
  }

  else if (v323)
  {
    return 0;
  }

  v324 = *(a1 + 3152);
  v325 = *(a2 + 3152);
  if (v324)
  {
    if (!v325 || !sub_25ACDFA24(*(v324 + 8), *(v324 + 16), *(v325 + 8), *(v325 + 16)))
    {
      return 0;
    }
  }

  else if (v325)
  {
    return 0;
  }

  v326 = *(a1 + 832);
  v327 = *(a2 + 832);
  if (v326)
  {
    if (!v327 || !CMMsl::CVWatchCalories::operator==(v326, v327))
    {
      return 0;
    }
  }

  else if (v327)
  {
    return 0;
  }

  v328 = *(a1 + 1000);
  v329 = *(a2 + 1000);
  if (v328)
  {
    if (!v329 || !CMMsl::FaceBlendShapeCoefficientsSample::operator==(v328, v329))
    {
      return 0;
    }
  }

  else if (v329)
  {
    return 0;
  }

  v330 = *(a1 + 512);
  v331 = *(a2 + 512);
  if (v330)
  {
    if (!v331 || !CMMsl::BatteryStatus::operator==(v330, v331))
    {
      return 0;
    }
  }

  else if (v331)
  {
    return 0;
  }

  v332 = *(a1 + 2080);
  v333 = *(a2 + 2080);
  if (v332)
  {
    if (!v333)
    {
      return 0;
    }

    if (*(v332 + 12))
    {
      if ((*(v333 + 12) & 1) == 0 || *(v332 + 8) != *(v333 + 8))
      {
        return 0;
      }
    }

    else if (*(v333 + 12))
    {
      return 0;
    }
  }

  else if (v333)
  {
    return 0;
  }

  v334 = *(a1 + 504);
  v335 = *(a2 + 504);
  if (v334)
  {
    if (!v335)
    {
      return 0;
    }

    if (*(v334 + 12))
    {
      if ((*(v335 + 12) & 1) == 0 || *(v334 + 8) != *(v335 + 8))
      {
        return 0;
      }
    }

    else if (*(v335 + 12))
    {
      return 0;
    }
  }

  else if (v335)
  {
    return 0;
  }

  v336 = *(a1 + 2704);
  v337 = *(a2 + 2704);
  if (v336)
  {
    if (!v337)
    {
      return 0;
    }

    if (*(v336 + 16))
    {
      if ((*(v337 + 16) & 1) == 0 || *(v336 + 8) != *(v337 + 8))
      {
        return 0;
      }
    }

    else if (*(v337 + 16))
    {
      return 0;
    }
  }

  else if (v337)
  {
    return 0;
  }

  v338 = *(a1 + 1208);
  v339 = *(a2 + 1208);
  if (v338)
  {
    if (!v339 || !CMMsl::FocusModes::operator==(v338, v339))
    {
      return 0;
    }
  }

  else if (v339)
  {
    return 0;
  }

  v340 = *(a1 + 888);
  v341 = *(a2 + 888);
  if (v340)
  {
    if (!v341)
    {
      return 0;
    }

    if (*(v340 + 12))
    {
      if ((*(v341 + 12) & 1) == 0 || *(v340 + 8) != *(v341 + 8))
      {
        return 0;
      }
    }

    else if (*(v341 + 12))
    {
      return 0;
    }
  }

  else if (v341)
  {
    return 0;
  }

  v342 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (!v342)
    {
      return 0;
    }
  }

  else if (v342)
  {
    return 0;
  }

  v343 = *(a1 + 32);
  v344 = *(a2 + 32);
  if (v343)
  {
    if (!v344 || !CMMsl::APWake::operator==(v343, v344))
    {
      return 0;
    }
  }

  else if (v344)
  {
    return 0;
  }

  v345 = *(a1 + 360);
  v346 = *(a2 + 360);
  if (v345)
  {
    if (!v346 || !CMMsl::AltimeterKF::operator==(v345, v346))
    {
      return 0;
    }
  }

  else if (v346)
  {
    return 0;
  }

  v347 = *(a1 + 2056);
  v348 = *(a2 + 2056);
  if (v347)
  {
    if (!v348 || !CMMsl::LiftToWakeState::operator==(v347, v348))
    {
      return 0;
    }
  }

  else if (v348)
  {
    return 0;
  }

  v349 = *(a1 + 3520);
  v350 = *(a2 + 3520);
  if (v349)
  {
    if (!v350 || !CMMsl::ViewObstructedState::operator==(v349, v350))
    {
      return 0;
    }
  }

  else if (v350)
  {
    return 0;
  }

  v351 = *(a1 + 2992);
  v352 = *(a2 + 2992);
  if (v351)
  {
    if (!v352 || !CMMsl::RunningFormMetrics::operator==(v351, v352))
    {
      return 0;
    }
  }

  else if (v352)
  {
    return 0;
  }

  v353 = *(a1 + 3912);
  v354 = *(a2 + 3912);
  if (v353)
  {
    if (!v354 || !sub_25AD27D50(*(v353 + 8), *(v353 + 16), *(v354 + 8), *(v354 + 16)))
    {
      return 0;
    }
  }

  else if (v354)
  {
    return 0;
  }

  v355 = *(a1 + 3904);
  v356 = *(a2 + 3904);
  if (v355)
  {
    if (!v356 || !CMMsl::WorkoutRecorderWorkoutSessionPriors::operator==(v355, v356))
    {
      return 0;
    }
  }

  else if (v356)
  {
    return 0;
  }

  v357 = *(a1 + 400);
  v358 = *(a2 + 400);
  if (v357)
  {
    if (!v358 || !CMMsl::ARKitWorldPose::operator==(v357, v358))
    {
      return 0;
    }
  }

  else if (v358)
  {
    return 0;
  }

  v359 = *(a1 + 2488);
  v360 = *(a2 + 2488);
  if (v359)
  {
    if (!v360 || !CMMsl::PDRImpulse::operator==(v359, v360))
    {
      return 0;
    }
  }

  else if (v360)
  {
    return 0;
  }

  v361 = *(a1 + 2664);
  v362 = *(a2 + 2664);
  if (v361)
  {
    if (!v362 || !CMMsl::PocketDetectionPacket::operator==(v361, v362))
    {
      return 0;
    }
  }

  else if (v362)
  {
    return 0;
  }

  v363 = *(a1 + 2040);
  v364 = *(a2 + 2040);
  if (v363)
  {
    if (!v364 || !CMMsl::LiftToWakeFeaturesNeo::operator==(v363, v364))
    {
      return 0;
    }
  }

  else if (v364)
  {
    return 0;
  }

  v365 = *(a1 + 2064);
  v366 = *(a2 + 2064);
  if (v365)
  {
    if (!v366 || !CMMsl::LiftToWakeStatusNeo::operator==(v365, v366))
    {
      return 0;
    }
  }

  else if (v366)
  {
    return 0;
  }

  v367 = *(a1 + 3000);
  v368 = *(a2 + 3000);
  if (v367)
  {
    if (!v368 || !CMMsl::RunningPower::operator==(v367, v368))
    {
      return 0;
    }
  }

  else if (v368)
  {
    return 0;
  }

  v369 = *(a1 + 456);
  v370 = *(a2 + 456);
  if (v369)
  {
    if (!v370 || !CMMsl::BasebandCompassCoex::operator==(v369, v370))
    {
      return 0;
    }
  }

  else if (v370)
  {
    return 0;
  }

  v371 = *(a1 + 464);
  v372 = *(a2 + 464);
  if (v371)
  {
    if (!v372 || !CMMsl::BasebandCompassCoexConstraints::operator==(v371, v372))
    {
      return 0;
    }
  }

  else if (v372)
  {
    return 0;
  }

  v373 = *(a1 + 2216);
  v374 = *(a2 + 2216);
  if (v373)
  {
    if (!v374 || !CMMsl::MotionContextActivity::operator==(v373, v374))
    {
      return 0;
    }
  }

  else if (v374)
  {
    return 0;
  }

  v375 = *(a1 + 2376);
  v376 = *(a2 + 2376);
  if (v375)
  {
    if (!v376)
    {
      return 0;
    }

    if (*(v375 + 12))
    {
      if ((*(v376 + 12) & 1) == 0 || *(v375 + 8) != *(v376 + 8))
      {
        return 0;
      }
    }

    else if (*(v376 + 12))
    {
      return 0;
    }
  }

  else if (v376)
  {
    return 0;
  }

  v377 = *(a1 + 96);
  v378 = *(a2 + 96);
  if (v377)
  {
    if (!v378 || !CMMsl::AccelTNBFrame::operator==(v377, v378))
    {
      return 0;
    }
  }

  else if (v378)
  {
    return 0;
  }

  v379 = *(a1 + 936);
  v380 = *(a2 + 936);
  if (v379)
  {
    if (!v380 || !CMMsl::DoTEstimatorWithTNB::operator==(v379, v380))
    {
      return 0;
    }
  }

  else if (v380)
  {
    return 0;
  }

  v381 = *(a1 + 2496);
  v382 = *(a2 + 2496);
  if (v381)
  {
    if (!v382 || !CMMsl::PdrMLModelOutput::operator==(v381, v382))
    {
      return 0;
    }
  }

  else if (v382)
  {
    return 0;
  }

  v383 = *(a1 + 1264);
  v384 = *(a2 + 1264);
  if (v383)
  {
    if (!v384 || !CMMsl::GaitEventsModelOutput::operator==(v383, v384))
    {
      return 0;
    }
  }

  else if (v384)
  {
    return 0;
  }

  v385 = *(a1 + 1272);
  v386 = *(a2 + 1272);
  if (v385)
  {
    if (!v386 || !CMMsl::GaitEventsStrideAggregation::operator==(v385, v386))
    {
      return 0;
    }
  }

  else if (v386)
  {
    return 0;
  }

  v387 = *(a1 + 1256);
  v388 = *(a2 + 1256);
  if (v387)
  {
    if (!v388 || !CMMsl::GaitEventsHKResult::operator==(v387, v388))
    {
      return 0;
    }
  }

  else if (v388)
  {
    return 0;
  }

  v389 = *(a1 + 1008);
  v390 = *(a2 + 1008);
  if (v389)
  {
    if (!v390 || !CMMsl::FaceCovered::operator==(v389, v390))
    {
      return 0;
    }
  }

  else if (v390)
  {
    return 0;
  }

  v391 = *(a1 + 3752);
  v392 = *(a2 + 3752);
  if (v391)
  {
    if (!v392)
    {
      return 0;
    }

    v393 = *(v391 + 8);
    v394 = *(v392 + 8);
    if (v393)
    {
      if (!v394 || !CMMsl::AveragedALSData::operator==(v393, v394))
      {
        return 0;
      }
    }

    else if (v394)
    {
      return 0;
    }
  }

  else if (v392)
  {
    return 0;
  }

  v395 = *(a1 + 3352);
  v396 = *(a2 + 3352);
  if (v395)
  {
    if (!v396 || !CMMsl::StrideCalEntry::operator==(v395, v396))
    {
      return 0;
    }
  }

  else if (v396)
  {
    return 0;
  }

  v397 = *(a1 + 3016);
  v398 = *(a2 + 3016);
  if (v397)
  {
    if (!v398 || !CMMsl::RunningSpeedKFResult::operator==(v397, v398))
    {
      return 0;
    }
  }

  else if (v398)
  {
    return 0;
  }

  v399 = *(a1 + 2856);
  v400 = *(a2 + 2856);
  if (v399)
  {
    if (!v400 || !CMMsl::ProxPDP::operator==(v399, v400))
    {
      return 0;
    }
  }

  else if (v400)
  {
    return 0;
  }

  v401 = *(a1 + 2000);
  v402 = *(a2 + 2000);
  if (v401)
  {
    if (!v402 || !CMMsl::KeyboardMotionFeatures::operator==(v401, v402))
    {
      return 0;
    }
  }

  else if (v402)
  {
    return 0;
  }

  v403 = *(a1 + 2008);
  v404 = *(a2 + 2008);
  if (v403)
  {
    if (!v404 || !CMMsl::KeyboardMotionState::operator==(v403, v404))
    {
      return 0;
    }
  }

  else if (v404)
  {
    return 0;
  }

  v405 = *(a1 + 344);
  v406 = *(a2 + 344);
  if (v405)
  {
    if (!v406 || !CMMsl::ALSPhone::operator==(v405, v406))
    {
      return 0;
    }
  }

  else if (v406)
  {
    return 0;
  }

  v407 = *(a1 + 1992);
  v408 = *(a2 + 1992);
  if (v407)
  {
    if (!v408 || !CMMsl::KeyboardKeyPress::operator==(v407, v408))
    {
      return 0;
    }
  }

  else if (v408)
  {
    return 0;
  }

  v409 = *(a1 + 3608);
  v410 = *(a2 + 3608);
  if (v409)
  {
    if (!v410 || !CMMsl::WakeGestureNotification::operator==(v409, v410))
    {
      return 0;
    }
  }

  else if (v410)
  {
    return 0;
  }

  v411 = *(a1 + 2840);
  v412 = *(a2 + 2840);
  if (v411)
  {
    if (!v412 || !CMMsl::ProxBaselineEstimatorState::operator==(v411, v412))
    {
      return 0;
    }
  }

  else if (v412)
  {
    return 0;
  }

  v413 = *(a1 + 480);
  v414 = *(a2 + 480);
  if (v413)
  {
    if (!v414 || !CMMsl::BaselineResetCheck::operator==(v413, v414))
    {
      return 0;
    }
  }

  else if (v414)
  {
    return 0;
  }

  v415 = *(a1 + 2960);
  v416 = *(a2 + 2960);
  if (v415)
  {
    if (!v416 || !CMMsl::RhythmicGnssOperatorStatus::operator==(v415, v416))
    {
      return 0;
    }
  }

  else if (v416)
  {
    return 0;
  }

  v417 = *(a1 + 2016);
  v418 = *(a2 + 2016);
  if (v417)
  {
    if (!v418 || !CMMsl::KeyboardMotionTrackpad::operator==(v417, v418))
    {
      return 0;
    }
  }

  else if (v418)
  {
    return 0;
  }

  v419 = *(a1 + 1984);
  v420 = *(a2 + 1984);
  if (v419)
  {
    if (!v420 || !CMMsl::KeyboardAttached::operator==(v419, v420))
    {
      return 0;
    }
  }

  else if (v420)
  {
    return 0;
  }

  v421 = *(a1 + 448);
  v422 = *(a2 + 448);
  if (v421)
  {
    if (!v422 || !CMMsl::BacklightState::operator==(v421, v422))
    {
      return 0;
    }
  }

  else if (v422)
  {
    return 0;
  }

  v423 = *(a1 + 488);
  v424 = *(a2 + 488);
  if (v423)
  {
    if (!v424 || !CMMsl::BatchedLocationFromOdometer::operator==(v423, v424))
    {
      return 0;
    }
  }

  else if (v424)
  {
    return 0;
  }

  v425 = *(a1 + 1536);
  v426 = *(a2 + 1536);
  if (v425)
  {
    if (!v426 || !CMMsl::HeartRateReference::operator==(v425, v426))
    {
      return 0;
    }
  }

  else if (v426)
  {
    return 0;
  }

  v427 = *(a1 + 3144);
  v428 = *(a2 + 3144);
  if (v427)
  {
    if (!v428 || !CMMsl::Skeleton2D::operator==(v427, v428))
    {
      return 0;
    }
  }

  else if (v428)
  {
    return 0;
  }

  v429 = *(a1 + 3168);
  v430 = *(a2 + 3168);
  if (v429)
  {
    if (!v430 || !CMMsl::Skeleton3DRetargeted::operator==(v429, v430))
    {
      return 0;
    }
  }

  else if (v430)
  {
    return 0;
  }

  v431 = *(a1 + 3160);
  v432 = *(a2 + 3160);
  if (v431)
  {
    if (!v432 || !CMMsl::Skeleton3DLifted::operator==(v431, v432))
    {
      return 0;
    }
  }

  else if (v432)
  {
    return 0;
  }

  v433 = *(a1 + 1144);
  v434 = *(a2 + 1144);
  if (v433)
  {
    if (!v434 || !CMMsl::FitnessMachineSample::operator==(v433, v434))
    {
      return 0;
    }
  }

  else if (v434)
  {
    return 0;
  }

  v435 = *(a1 + 3664);
  v436 = *(a2 + 3664);
  if (v435)
  {
    if (!v436 || !CMMsl::WatchHeartRateData::operator==(v435, v436))
    {
      return 0;
    }
  }

  else if (v436)
  {
    return 0;
  }

  v437 = *(a1 + 1032);
  v438 = *(a2 + 1032);
  if (v437)
  {
    if (!v438 || !CMMsl::FacePoseSynchronized::operator==(v437, v438))
    {
      return 0;
    }
  }

  else if (v438)
  {
    return 0;
  }

  v439 = *(a1 + 3640);
  v440 = *(a2 + 3640);
  if (v439)
  {
    if (!v440 || !CMMsl::WatchActiveCalories::operator==(v439, v440))
    {
      return 0;
    }
  }

  else if (v440)
  {
    return 0;
  }

  v441 = *(a1 + 3648);
  v442 = *(a2 + 3648);
  if (v441)
  {
    if (!v442 || !CMMsl::WatchBasalCalories::operator==(v441, v442))
    {
      return 0;
    }
  }

  else if (v442)
  {
    return 0;
  }

  v443 = *(a1 + 3432);
  v444 = *(a2 + 3432);
  if (v443)
  {
    if (!v444 || !CMMsl::TrackRunData::operator==(v443, v444))
    {
      return 0;
    }
  }

  else if (v444)
  {
    return 0;
  }

  v445 = *(a1 + 1304);
  v446 = *(a2 + 1304);
  if (v445)
  {
    if (!v446 || !CMMsl::GnssAvailabilityPredictorData::operator==(v445, v446))
    {
      return 0;
    }
  }

  else if (v446)
  {
    return 0;
  }

  v447 = *(a1 + 1312);
  v448 = *(a2 + 1312);
  if (v447)
  {
    if (!v448 || !CMMsl::GnssLeechLocationData::operator==(v447, v448))
    {
      return 0;
    }
  }

  else if (v448)
  {
    return 0;
  }

  v449 = *(a1 + 2152);
  v450 = *(a2 + 2152);
  if (v449)
  {
    if (!v450 || !CMMsl::MapsRouteHintData::operator==(v449, v450))
    {
      return 0;
    }
  }

  else if (v450)
  {
    return 0;
  }

  v451 = *(a1 + 1136);
  v452 = *(a2 + 1136);
  if (v451)
  {
    if (!v452 || !CMMsl::FitnessMachineData::operator==(v451, v452))
    {
      return 0;
    }
  }

  else if (v452)
  {
    return 0;
  }

  v453 = *(a1 + 3792);
  v454 = *(a2 + 3792);
  if (v453)
  {
    if (!v454)
    {
      return 0;
    }

    v455 = *(v453 + 8);
    v456 = *(v454 + 8);
    if (v455)
    {
      if (!v456 || !CMMsl::FitnessMachineData::operator==(v455, v456))
      {
        return 0;
      }
    }

    else if (v456)
    {
      return 0;
    }
  }

  else if (v454)
  {
    return 0;
  }

  v457 = *(a1 + 136);
  v458 = *(a2 + 136);
  if (v457)
  {
    if (!v458 || !CMMsl::AccessoryActivityStateUpdate::operator==(v457, v458))
    {
      return 0;
    }
  }

  else if (v458)
  {
    return 0;
  }

  v459 = *(a1 + 2568);
  v460 = *(a2 + 2568);
  if (v459)
  {
    if (!v460 || !CMMsl::PedestrianFenceExit::operator==(v459, v460))
    {
      return 0;
    }
  }

  else if (v460)
  {
    return 0;
  }

  v461 = *(a1 + 1648);
  v462 = *(a2 + 1648);
  if (v461)
  {
    if (!v462 || !CMMsl::InertialOdometry::operator==(v461, v462))
    {
      return 0;
    }
  }

  else if (v462)
  {
    return 0;
  }

  v463 = *(a1 + 2648);
  v464 = *(a2 + 2648);
  if (v463)
  {
    if (!v464 || !CMMsl::PhysicalEffortInput::operator==(v463, v464))
    {
      return 0;
    }
  }

  else if (v464)
  {
    return 0;
  }

  v465 = *(a1 + 2656);
  v466 = *(a2 + 2656);
  if (v465)
  {
    if (!v466 || !CMMsl::PhysicalEffortSample::operator==(v465, v466))
    {
      return 0;
    }
  }

  else if (v466)
  {
    return 0;
  }

  v467 = *(a1 + 2560);
  v468 = *(a2 + 2560);
  if (v467)
  {
    if (!v468 || !CMMsl::PedestrianCalorieModelDebugging::operator==(v467, v468))
    {
      return 0;
    }
  }

  else if (v468)
  {
    return 0;
  }

  v469 = *(a1 + 976);
  v470 = *(a2 + 976);
  if (v469)
  {
    if (!v470 || !CMMsl::ElevationThreshold::operator==(v469, v470))
    {
      return 0;
    }
  }

  else if (v470)
  {
    return 0;
  }

  v471 = *(a1 + 1656);
  v472 = *(a2 + 1656);
  if (v471)
  {
    if (!v472 || !CMMsl::InitialHistoricalMeanSeaLevelPressure::operator==(v471, v472))
    {
      return 0;
    }
  }

  else if (v472)
  {
    return 0;
  }

  v473 = *(a1 + 3696);
  v474 = *(a2 + 3696);
  if (v473)
  {
    if (!v474 || !CMMsl::WorkoutActivity::operator==(v473, v474))
    {
      return 0;
    }
  }

  else if (v474)
  {
    return 0;
  }

  v475 = *(a1 + 2592);
  v476 = *(a2 + 2592);
  if (v475)
  {
    if (!v476 || !CMMsl::PencilDeviceMotion::operator==(v475, v476))
    {
      return 0;
    }
  }

  else if (v476)
  {
    return 0;
  }

  v477 = *(a1 + 2616);
  v478 = *(a2 + 2616);
  if (v477)
  {
    if (!v478 || !CMMsl::PencilFusionResult::operator==(v477, v478))
    {
      return 0;
    }
  }

  else if (v478)
  {
    return 0;
  }

  v479 = *(a1 + 1488);
  v480 = *(a2 + 1488);
  if (v479)
  {
    if (!v480 || !CMMsl::HapticModuleState::operator==(v479, v480))
    {
      return 0;
    }
  }

  else if (v480)
  {
    return 0;
  }

  v481 = *(a1 + 3240);
  v482 = *(a2 + 3240);
  if (v481)
  {
    if (!v482 || !CMMsl::SteadinessModelHarmonicFeatures::operator==(v481, v482))
    {
      return 0;
    }
  }

  else if (v482)
  {
    return 0;
  }

  v483 = *(a1 + 2608);
  v484 = *(a2 + 2608);
  if (v483)
  {
    if (!v484 || !CMMsl::PencilFusionReplayResult::operator==(v483, v484))
    {
      return 0;
    }
  }

  else if (v484)
  {
    return 0;
  }

  v485 = *(a1 + 2184);
  v486 = *(a2 + 2184);
  if (v485)
  {
    if (!v486 || !CMMsl::MobilitySmoothedGaitMetrics::operator==(v485, v486))
    {
      return 0;
    }
  }

  else if (v486)
  {
    return 0;
  }

  v487 = *(a1 + 3656);
  v488 = *(a2 + 3656);
  if (v487)
  {
    if (!v488 || !CMMsl::WatchEnclosureMaterial::operator==(v487, v488))
    {
      return 0;
    }
  }

  else if (v488)
  {
    return 0;
  }

  v489 = *(a1 + 208);
  v490 = *(a2 + 208);
  if (v489)
  {
    if (!v490 || !CMMsl::AccessoryHeartRate::operator==(v489, v490))
    {
      return 0;
    }
  }

  else if (v490)
  {
    return 0;
  }

  v491 = *(a1 + 248);
  v492 = *(a2 + 248);
  if (v491)
  {
    if (!v492 || !CMMsl::AccessoryPPG::operator==(v491, v492))
    {
      return 0;
    }
  }

  else if (v492)
  {
    return 0;
  }

  v493 = *(a1 + 2248);
  v494 = *(a2 + 2248);
  if (v493)
  {
    if (!v494 || !CMMsl::MotionLoiAltitudeData::operator==(v493, v494))
    {
      return 0;
    }
  }

  else if (v494)
  {
    return 0;
  }

  v495 = *(a1 + 872);
  v496 = *(a2 + 872);
  if (v495)
  {
    if (!v496 || !CMMsl::DisplacingState::operator==(v495, v496))
    {
      return 0;
    }
  }

  else if (v496)
  {
    return 0;
  }

  v497 = *(a1 + 2688);
  v498 = *(a2 + 2688);
  if (v497)
  {
    if (!v498 || !CMMsl::PostureJoint::operator==(v497, v498))
    {
      return 0;
    }
  }

  else if (v498)
  {
    return 0;
  }

  v499 = *(a1 + 2696);
  v500 = *(a2 + 2696);
  if (v499)
  {
    if (!v500 || !sub_25ACAE394(*(v499 + 8), *(v499 + 16), *(v500 + 8), *(v500 + 16)))
    {
      return 0;
    }
  }

  else if (v500)
  {
    return 0;
  }

  v501 = *(a1 + 1560);
  v502 = *(a2 + 1560);
  if (v501)
  {
    if (!v502 || !CMMsl::HIDShower::operator==(v501, v502))
    {
      return 0;
    }
  }

  else if (v502)
  {
    return 0;
  }

  v503 = *(a1 + 3784);
  v504 = *(a2 + 3784);
  if (v503)
  {
    if (!v504)
    {
      return 0;
    }

    v505 = *(v503 + 8);
    v506 = *(v504 + 8);
    if (v505)
    {
      if (!v506 || !CMMsl::FaceCovered::operator==(v505, v506))
      {
        return 0;
      }
    }

    else if (v506)
    {
      return 0;
    }
  }

  else if (v504)
  {
    return 0;
  }

  v507 = *(a1 + 3328);
  v508 = *(a2 + 3328);
  if (v507)
  {
    if (!v508)
    {
      return 0;
    }

    v509 = *(v507 + 8);
    v510 = *(v508 + 8);
    if (v509)
    {
      if (!v510 || !CMMsl::OnsetHeartRateData::operator==(v509, v510))
      {
        return 0;
      }
    }

    else if (v510)
    {
      return 0;
    }
  }

  else if (v508)
  {
    return 0;
  }

  v511 = *(a1 + 2328);
  v512 = *(a2 + 2328);
  if (v511)
  {
    if (!v512 || !CMMsl::NormalGammaCalibrationBin::operator==(v511, v512))
    {
      return 0;
    }
  }

  else if (v512)
  {
    return 0;
  }

  v513 = *(a1 + 2176);
  v514 = *(a2 + 2176);
  if (v513)
  {
    if (!v514 || !CMMsl::MobilityCalibrationMessage::operator==(v513, v514))
    {
      return 0;
    }
  }

  else if (v514)
  {
    return 0;
  }

  v515 = *(a1 + 952);
  v516 = *(a2 + 952);
  if (v515)
  {
    if (!v516 || !CMMsl::ElevationBatchProcessingTimestamps::operator==(v515, v516))
    {
      return 0;
    }
  }

  else if (v516)
  {
    return 0;
  }

  v517 = *(a1 + 720);
  v518 = *(a2 + 720);
  if (v517)
  {
    if (!v518 || !CMMsl::CompanionStepCountElevation::operator==(v517, v518))
    {
      return 0;
    }
  }

  else if (v518)
  {
    return 0;
  }

  v519 = *(a1 + 1232);
  v520 = *(a2 + 1232);
  if (v519)
  {
    if (!v520 || !CMMsl::GPSCalibrationBin::operator==(v519, v520))
    {
      return 0;
    }
  }

  else if (v520)
  {
    return 0;
  }

  v521 = *(a1 + 216);
  v522 = *(a2 + 216);
  if (v521)
  {
    if (!v522 || !CMMsl::AccessoryInEarDetection::operator==(v521, v522))
    {
      return 0;
    }
  }

  else if (v522)
  {
    return 0;
  }

  v523 = *(a1 + 144);
  v524 = *(a2 + 144);
  if (v523)
  {
    if (!v524 || !CMMsl::AccessoryBatchedPPG::operator==(v523, v524))
    {
      return 0;
    }
  }

  else if (v524)
  {
    return 0;
  }

  v525 = *(a1 + 496);
  v526 = *(a2 + 496);
  if (v525)
  {
    if (!v526 || !CMMsl::BatchedPPGData::operator==(v525, v526))
    {
      return 0;
    }
  }

  else if (v526)
  {
    return 0;
  }

  v527 = *(a1 + 3744);
  v528 = *(a2 + 3744);
  if (v527)
  {
    if (!v528)
    {
      return 0;
    }

    v529 = *(v527 + 8);
    v530 = *(v528 + 8);
    if (v529)
    {
      if (!v530 || !CMMsl::AudioAccessoryDeviceMotion::operator==(v529, v530))
      {
        return 0;
      }
    }

    else if (v530)
    {
      return 0;
    }
  }

  else if (v528)
  {
    return 0;
  }

  v531 = *(a1 + 3736);
  v532 = *(a2 + 3736);
  if (v531)
  {
    if (!v532)
    {
      return 0;
    }

    v533 = *(v531 + 8);
    v534 = *(v532 + 8);
    if (v533)
    {
      if (!v534 || !CMMsl::AccessoryDeviceMotionConfig::operator==(v533, v534))
      {
        return 0;
      }
    }

    else if (v534)
    {
      return 0;
    }
  }

  else if (v532)
  {
    return 0;
  }

  v535 = *(a1 + 1544);
  v536 = *(a2 + 1544);
  if (v535)
  {
    if (!v536 || !CMMsl::HeartRateSourceDevice::operator==(v535, v536))
    {
      return 0;
    }
  }

  else if (v536)
  {
    return 0;
  }

  v537 = *(a1 + 16);
  v538 = *(a2 + 16);
  if (v537)
  {
    if (!v538)
    {
      return 0;
    }

    v539 = *(v537 + 8);
    v540 = *(v538 + 8);
    if (v539)
    {
      if (!v540 || !CMMsl::AccessoryHeartRate::operator==(v539, v540))
      {
        return 0;
      }
    }

    else if (v540)
    {
      return 0;
    }
  }

  else if (v538)
  {
    return 0;
  }

  v541 = *(a1 + 3320);
  v542 = *(a2 + 3320);
  if (v541)
  {
    if (!v542)
    {
      return 0;
    }

    v543 = *(v541 + 8);
    v544 = *(v542 + 8);
    if (v543)
    {
      if (!v544 || !CMMsl::OnsetHeartRateData::operator==(v543, v544))
      {
        return 0;
      }
    }

    else if (v544)
    {
      return 0;
    }
  }

  else if (v542)
  {
    return 0;
  }

  v545 = *(a1 + 3336);
  v546 = *(a2 + 3336);
  if (v545)
  {
    if (!v546)
    {
      return 0;
    }

    v547 = *(v545 + 8);
    v548 = *(v546 + 8);
    if (v547)
    {
      if (!v548 || !CMMsl::OnsetHeartRateData::operator==(v547, v548))
      {
        return 0;
      }
    }

    else if (v548)
    {
      return 0;
    }
  }

  else if (v546)
  {
    return 0;
  }

  v549 = *(a1 + 408);
  v550 = *(a2 + 408);
  if (v549)
  {
    if (!v550)
    {
      return 0;
    }

    v551 = *(v549 + 8);
    v552 = *(v550 + 8);
    if (v551)
    {
      if (!v552 || !CMMsl::AudioAccessoryDeviceMotion::operator==(v551, v552))
      {
        return 0;
      }
    }

    else if (v552)
    {
      return 0;
    }
  }

  else if (v550)
  {
    return 0;
  }

  v553 = *(a1 + 8);
  v554 = *(a2 + 8);
  if (v553)
  {
    if (!v554)
    {
      return 0;
    }

    v555 = *(v553 + 8);
    v556 = *(v554 + 8);
    if (v555)
    {
      if (!v556 || !CMMsl::AccessoryDeviceMotionConfig::operator==(v555, v556))
      {
        return 0;
      }
    }

    else if (v556)
    {
      return 0;
    }
  }

  else if (v554)
  {
    return 0;
  }

  v557 = *(a1 + 3824);
  v558 = *(a2 + 3824);
  if (v557)
  {
    if (!v558)
    {
      return 0;
    }

    v559 = *(v557 + 8);
    v560 = *(v558 + 8);
    if (v559 && v560)
    {
      if (!CMMsl::HeartRateSourceDevice::operator==(v559, v560))
      {
        return 0;
      }

      goto LABEL_1400;
    }

    v558 = v559 | v560;
  }

  if (v558)
  {
    return 0;
  }

LABEL_1400:
  v561 = *(a1 + 3832);
  v562 = *(a2 + 3832);
  if (v561)
  {
    if (!v562)
    {
      return 0;
    }

    v563 = *(v561 + 8);
    v564 = *(v562 + 8);
    if (v563)
    {
      if (!v564 || !CMMsl::OnsetHeartRateData::operator==(v563, v564))
      {
        return 0;
      }
    }

    else if (v564)
    {
      return 0;
    }
  }

  else if (v562)
  {
    return 0;
  }

  v565 = *(a1 + 3816);
  v566 = *(a2 + 3816);
  if (v565)
  {
    if (!v566)
    {
      return 0;
    }

    v567 = *(v565 + 8);
    v568 = *(v566 + 8);
    if (v567)
    {
      if (!v568 || !CMMsl::AccessoryHeartRate::operator==(v567, v568))
      {
        return 0;
      }
    }

    else if (v568)
    {
      return 0;
    }
  }

  else if (v566)
  {
    return 0;
  }

  v569 = *(a1 + 3440);
  v570 = *(a2 + 3440);
  if (v569)
  {
    if (!v570 || !CMMsl::UltraFastAccel::operator==(v569, v570))
    {
      return 0;
    }
  }

  else if (v570)
  {
    return 0;
  }

  v571 = *(a1 + 40);
  v572 = *(a2 + 40);
  if (v571)
  {
    if (!v572 || !CMMsl::Accel::operator==(v571, v572))
    {
      return 0;
    }
  }

  else if (v572)
  {
    return 0;
  }

  v573 = *(a1 + 56);
  v574 = *(a2 + 56);
  if (v573)
  {
    if (!v574 || !CMMsl::AccelBatch::operator==(v573, v574))
    {
      return 0;
    }
  }

  else if (v574)
  {
    return 0;
  }

  v575 = *(a1 + 88);
  v576 = *(a2 + 88);
  if (v575)
  {
    if (!v576)
    {
      return 0;
    }

    v577 = *(v575 + 8);
    v578 = *(v576 + 8);
    if (v577)
    {
      if (!v578 || !CMMsl::Accel::operator==(v577, v578))
      {
        return 0;
      }
    }

    else if (v578)
    {
      return 0;
    }
  }

  else if (v576)
  {
    return 0;
  }

  v579 = *(a1 + 72);
  v580 = *(a2 + 72);
  if (v579)
  {
    if (!v580)
    {
      return 0;
    }

    v581 = *(v579 + 8);
    v582 = *(v580 + 8);
    if (v581)
    {
      if (!v582 || !CMMsl::Accel::operator==(v581, v582))
      {
        return 0;
      }
    }

    else if (v582)
    {
      return 0;
    }
  }

  else if (v580)
  {
    return 0;
  }

  v583 = *(a1 + 1336);
  v584 = *(a2 + 1336);
  if (v583)
  {
    if (!v584 || !CMMsl::Gyro::operator==(v583, v584))
    {
      return 0;
    }
  }

  else if (v584)
  {
    return 0;
  }

  v585 = *(a1 + 1464);
  v586 = *(a2 + 1464);
  if (v585)
  {
    if (!v586 || !CMMsl::GyroOscarEmu::operator==(v585, v586))
    {
      return 0;
    }
  }

  else if (v586)
  {
    return 0;
  }

  v587 = *(a1 + 1480);
  v588 = *(a2 + 1480);
  if (v587)
  {
    if (!v588 || !CMMsl::GyroTemperature::operator==(v587, v588))
    {
      return 0;
    }
  }

  else if (v588)
  {
    return 0;
  }

  v589 = *(a1 + 1344);
  v590 = *(a2 + 1344);
  if (v589)
  {
    if (!v590 || !CMMsl::GyroBiasAndVariance::operator==(v589, v590))
    {
      return 0;
    }
  }

  else if (v590)
  {
    return 0;
  }

  v591 = *(a1 + 1384);
  v592 = *(a2 + 1384);
  if (v591)
  {
    if (!v592 || !CMMsl::GyroBiasFit::operator==(v591, v592))
    {
      return 0;
    }
  }

  else if (v592)
  {
    return 0;
  }

  v593 = *(a1 + 1440);
  v594 = *(a2 + 1440);
  if (v593)
  {
    if (!v594)
    {
      return 0;
    }

    if (*(v593 + 12))
    {
      if ((*(v594 + 12) & 1) == 0)
      {
        return 0;
      }

      a3.n128_u32[0] = *(v593 + 8);
      if (a3.n128_f32[0] != *(v594 + 8))
      {
        return 0;
      }
    }

    else if (*(v594 + 12))
    {
      return 0;
    }
  }

  else if (v594)
  {
    return 0;
  }

  v595 = *(a1 + 2128);
  v596 = *(a2 + 2128);
  if (v595)
  {
    if (!v596 || !CMMsl::Magnetometer::operator==(v595, v596))
    {
      return 0;
    }
  }

  else if (v596)
  {
    return 0;
  }

  v597 = *(a1 + 728);
  v598 = *(a2 + 728);
  if (v597)
  {
    if (!v598 || !CMMsl::Compass::operator==(v597, v598))
    {
      return 0;
    }
  }

  else if (v598)
  {
    return 0;
  }

  v599 = *(a1 + 736);
  v600 = *(a2 + 736);
  if (v599)
  {
    if (!v600 || !CMMsl::CompassAlignment::operator==(v599, v600))
    {
      return 0;
    }
  }

  else if (v600)
  {
    return 0;
  }

  v601 = *(a1 + 1424);
  v602 = *(a2 + 1424);
  if (v601)
  {
    if (!v602 || !CMMsl::GyroCompass::operator==(v601, v602))
    {
      return 0;
    }
  }

  else if (v602)
  {
    return 0;
  }

  v603 = *(a1 + 744);
  v604 = *(a2 + 744);
  if (v603)
  {
    if (!v604 || !CMMsl::CompassCalibration::operator==(v603, v604))
    {
      return 0;
    }
  }

  else if (v604)
  {
    return 0;
  }

  v605 = *(a1 + 2768);
  v606 = *(a2 + 2768);
  if (v605)
  {
    if (!v606 || !CMMsl::Pressure::operator==(v605, v606))
    {
      return 0;
    }
  }

  else if (v606)
  {
    return 0;
  }

  v607 = *(a1 + 2824);
  v608 = *(a2 + 2824);
  if (v607)
  {
    if (!v608)
    {
      return 0;
    }

    v609 = *(v607 + 8);
    v610 = *(v608 + 8);
    if (v609)
    {
      if (!v610 || !CMMsl::Pressure::operator==(v609, v610))
      {
        return 0;
      }
    }

    else if (v610)
    {
      return 0;
    }
  }

  else if (v608)
  {
    return 0;
  }

  v611 = *(a1 + 2792);
  v612 = *(a2 + 2792);
  if (v611)
  {
    if (!v612)
    {
      return 0;
    }

    v613 = *(v611 + 8);
    v614 = *(v612 + 8);
    if (v613)
    {
      if (!v614 || !CMMsl::Pressure::operator==(v613, v614))
      {
        return 0;
      }
    }

    else if (v614)
    {
      return 0;
    }
  }

  else if (v612)
  {
    return 0;
  }

  v615 = *(a1 + 2832);
  v616 = *(a2 + 2832);
  if (v615)
  {
    if (!v616 || !CMMsl::Prox::operator==(v615, v616))
    {
      return 0;
    }
  }

  else if (v616)
  {
    return 0;
  }

  v617 = *(a1 + 3424);
  v618 = *(a2 + 3424);
  if (v617)
  {
    if (!v618 || !CMMsl::TouchOscarEmu::operator==(v617, v618))
    {
      return 0;
    }
  }

  else if (v618)
  {
    return 0;
  }

  v619 = *(a1 + 840);
  v620 = *(a2 + 840);
  if (v619)
  {
    if (!v620 || !CMMsl::DeviceMotion::operator==(v619, v620))
    {
      return 0;
    }
  }

  else if (v620)
  {
    return 0;
  }

  v621 = *(a1 + 2264);
  v622 = *(a2 + 2264);
  if (v621)
  {
    if (!v622 || !CMMsl::MotionStateUpdate::operator==(v621, v622))
    {
      return 0;
    }
  }

  else if (v622)
  {
    return 0;
  }

  v623 = *(a1 + 80);
  v624 = *(a2 + 80);
  if (v623)
  {
    if (!v624 || !CMMsl::AccelGps::operator==(v623, v624))
    {
      return 0;
    }
  }

  else if (v624)
  {
    return 0;
  }

  v625 = *(a1 + 1456);
  v626 = *(a2 + 1456);
  if (v625)
  {
    if (!v626 || !CMMsl::GyroGps::operator==(v625, v626))
    {
      return 0;
    }
  }

  else if (v626)
  {
    return 0;
  }

  v627 = *(a1 + 2816);
  v628 = *(a2 + 2816);
  if (v627)
  {
    if (!v628)
    {
      return 0;
    }

    v629 = *(v627 + 8);
    v630 = *(v628 + 8);
    if (v629)
    {
      if (!v630 || !CMMsl::Pressure::operator==(v629, v630))
      {
        return 0;
      }
    }

    else if (v630)
    {
      return 0;
    }
  }

  else if (v628)
  {
    return 0;
  }

  v631 = *(a1 + 440);
  v632 = *(a2 + 440);
  if (v631)
  {
    if (!v632 || !CMMsl::BTConnection::operator==(v631, v632))
    {
      return 0;
    }
  }

  else if (v632)
  {
    return 0;
  }

  v633 = *(a1 + 3088);
  v634 = *(a2 + 3088);
  if (v633)
  {
    if (!v634 || !CMMsl::SessionOverride::operator==(v633, v634))
    {
      return 0;
    }
  }

  else if (v634)
  {
    return 0;
  }

  v635 = *(a1 + 2072);
  v636 = *(a2 + 2072);
  if (v635)
  {
    if (!v636 || !CMMsl::LocationOscarEmu::operator==(v635, v636))
    {
      return 0;
    }
  }

  else if (v636)
  {
    return 0;
  }

  v637 = *(a1 + 2232);
  v638 = *(a2 + 2232);
  if (v637)
  {
    if (!v638 || !CMMsl::MotionHint::operator==(v637, v638))
    {
      return 0;
    }
  }

  else if (v638)
  {
    return 0;
  }

  v639 = *(a1 + 992);
  v640 = *(a2 + 992);
  if (v639)
  {
    if (!v640 || !CMMsl::EnhancedDeviceMotion::operator==(v639, v640))
    {
      return 0;
    }
  }

  else if (v640)
  {
    return 0;
  }

  v641 = *(a1 + 2320);
  v642 = *(a2 + 2320);
  if (v641)
  {
    if (!v642 || !CMMsl::NonlinearBiasFit::operator==(v641, v642))
    {
      return 0;
    }
  }

  else if (v642)
  {
    return 0;
  }

  v643 = *(a1 + 2312);
  v644 = *(a2 + 2312);
  if (v643)
  {
    if (!v644 || !CMMsl::NatalieData::operator==(v643, v644))
    {
      return 0;
    }
  }

  else if (v644)
  {
    return 0;
  }

  v645 = *(a1 + 584);
  v646 = *(a2 + 584);
  if (v645)
  {
    if (!v646 || !CMMsl::BodyMetrics::operator==(v645, v646))
    {
      return 0;
    }
  }

  else if (v646)
  {
    return 0;
  }

  v647 = *(a1 + 3704);
  v648 = *(a2 + 3704);
  if (v647)
  {
    if (!v648 || !CMMsl::WorkoutEvent::operator==(v647, v648))
    {
      return 0;
    }
  }

  else if (v648)
  {
    return 0;
  }

  v649 = *(a1 + 2360);
  v650 = *(a2 + 2360);
  if (v649)
  {
    if (!v650 || !CMMsl::OnsetHeartRateData::operator==(v649, v650))
    {
      return 0;
    }
  }

  else if (v650)
  {
    return 0;
  }

  v651 = *(a1 + 3312);
  v652 = *(a2 + 3312);
  if (v651)
  {
    if (!v652)
    {
      return 0;
    }

    v653 = *(v651 + 8);
    v654 = *(v652 + 8);
    if (v653)
    {
      if (!v654 || !CMMsl::OnsetHeartRateData::operator==(v653, v654))
      {
        return 0;
      }
    }

    else if (v654)
    {
      return 0;
    }
  }

  else if (v652)
  {
    return 0;
  }

  v655 = *(a1 + 960);
  v656 = *(a2 + 960);
  if (v655)
  {
    if (!v656 || !CMMsl::ElevationChange::operator==(v655, v656))
    {
      return 0;
    }
  }

  else if (v656)
  {
    return 0;
  }

  v657 = *(a1 + 712);
  v658 = *(a2 + 712);
  if (v657)
  {
    if (!v658 || !CMMsl::CoarseElevationChange::operator==(v657, v658))
    {
      return 0;
    }
  }

  else if (v658)
  {
    return 0;
  }

  v659 = *(a1 + 2224);
  v660 = *(a2 + 2224);
  if (v659)
  {
    if (!v660 || !CMMsl::MotionGPSLocation::operator==(v659, v660))
    {
      return 0;
    }
  }

  else if (v660)
  {
    return 0;
  }

  v661 = *(a1 + 2280);
  v662 = *(a2 + 2280);
  if (v661)
  {
    if (!v662)
    {
      return 0;
    }

    v663 = *(v661 + 8);
    v664 = *(v662 + 8);
    if (v663)
    {
      if (!v664 || !CMMsl::MotionGPSLocation::operator==(v663, v664))
      {
        return 0;
      }
    }

    else if (v664)
    {
      return 0;
    }
  }

  else if (v662)
  {
    return 0;
  }

  v665 = *(a1 + 3344);
  v666 = *(a2 + 3344);
  if (v665)
  {
    if (!v666 || !CMMsl::StrideCalBin::operator==(v665, v666))
    {
      return 0;
    }
  }

  else if (v666)
  {
    return 0;
  }

  v667 = *(a1 + 680);
  v668 = *(a2 + 680);
  if (v667)
  {
    if (!v668)
    {
      return 0;
    }

    if (*(v667 + 12))
    {
      if ((*(v668 + 12) & 1) == 0 || *(v667 + 8) != *(v668 + 8))
      {
        return 0;
      }
    }

    else if (*(v668 + 12))
    {
      return 0;
    }
  }

  else if (v668)
  {
    return 0;
  }

  v669 = *(a1 + 2336);
  v670 = *(a2 + 2336);
  if (v669)
  {
    if (!v670 || !CMMsl::Odometer::operator==(v669, v670))
    {
      return 0;
    }
  }

  else if (v670)
  {
    return 0;
  }

  v671 = *(a1 + 2160);
  v672 = *(a2 + 2160);
  if (v671)
  {
    if (!v672 || !CMMsl::MetsInfo::operator==(v671, v672))
    {
      return 0;
    }
  }

  else if (v672)
  {
    return 0;
  }

  v673 = *(a1 + 1120);
  v674 = *(a2 + 1120);
  if (v673)
  {
    if (!v674 || !CMMsl::FallStats::operator==(v673, v674))
    {
      return 0;
    }
  }

  else if (v674)
  {
    return 0;
  }

  v675 = *(a1 + 472);
  v676 = *(a2 + 472);
  if (v675)
  {
    if (!v676 || !CMMsl::BasebandSpeed::operator==(v675, v676))
    {
      return 0;
    }
  }

  else if (v676)
  {
    return 0;
  }

  v677 = *(a1 + 3488);
  v678 = *(a2 + 3488);
  if (v677)
  {
    if (!v678)
    {
      return 0;
    }

    if (*(v677 + 12))
    {
      if ((*(v678 + 12) & 1) == 0 || *(v677 + 8) != *(v678 + 8))
      {
        return 0;
      }
    }

    else if (*(v678 + 12))
    {
      return 0;
    }
  }

  else if (v678)
  {
    return 0;
  }

  v679 = *(a1 + 3272);
  v680 = *(a2 + 3272);
  if (v679)
  {
    if (!v680 || !CMMsl::StepCadenceToStrideLengthBin::operator==(v679, v680))
    {
      return 0;
    }
  }

  else if (v680)
  {
    return 0;
  }

  v681 = *(a1 + 3680);
  v682 = *(a2 + 3680);
  if (v681)
  {
    if (!v682 || !CMMsl::WatchOrientationSettings::operator==(v681, v682))
    {
      return 0;
    }
  }

  else if (v682)
  {
    return 0;
  }

  v683 = *(a1 + 2272);
  v684 = *(a2 + 2272);
  if (v683)
  {
    if (!v684)
    {
      return 0;
    }

    if (*(v683 + 12))
    {
      if ((*(v684 + 12) & 1) == 0 || *(v683 + 8) != *(v684 + 8))
      {
        return 0;
      }
    }

    else if (*(v684 + 12))
    {
      return 0;
    }
  }

  else if (v684)
  {
    return 0;
  }

  v685 = *(a1 + 2256);
  v686 = *(a2 + 2256);
  if (v685)
  {
    if (!v686 || !CMMsl::MotionLoiData::operator==(v685, v686))
    {
      return 0;
    }
  }

  else if (v686)
  {
    return 0;
  }

  v687 = *(a1 + 2344);
  v688 = *(a2 + 2344);
  if (v687)
  {
    if (!v688 || !CMMsl::OdometerWithAltitude::operator==(v687, v688))
    {
      return 0;
    }
  }

  else if (v688)
  {
    return 0;
  }

  v689 = *(a1 + 2808);
  v690 = *(a2 + 2808);
  if (v689)
  {
    if (!v690 || !CMMsl::PressureFilteredNoTemperature::operator==(v689, v690))
    {
      return 0;
    }
  }

  else if (v690)
  {
    return 0;
  }

  v691 = *(a1 + 1632);
  v692 = *(a2 + 1632);
  if (v691)
  {
    if (!v692 || !CMMsl::InEarTransition::operator==(v691, v692))
    {
      return 0;
    }
  }

  else if (v692)
  {
    return 0;
  }

  v693 = *(a1 + 704);
  v694 = *(a2 + 704);
  if (v693)
  {
    if (!v694 || !CMMsl::ClefCalibration::operator==(v693, v694))
    {
      return 0;
    }
  }

  else if (v694)
  {
    return 0;
  }

  v695 = *(a1 + 328);
  v696 = *(a2 + 328);
  if (v695)
  {
    if (!v696 || !CMMsl::AirpodEvent::operator==(v695, v696))
    {
      return 0;
    }
  }

  else if (v696)
  {
    return 0;
  }

  v697 = *(a1 + 1616);
  v698 = *(a2 + 1616);
  if (v697)
  {
    if (!v698 || !CMMsl::InEarOptical::operator==(v697, v698))
    {
      return 0;
    }
  }

  else if (v698)
  {
    return 0;
  }

  v699 = *(a1 + 1600);
  v700 = *(a2 + 1600);
  if (v699)
  {
    if (!v700 || !CMMsl::InEarConstraints::operator==(v699, v700))
    {
      return 0;
    }
  }

  else if (v700)
  {
    return 0;
  }

  v701 = *(a1 + 1608);
  v702 = *(a2 + 1608);
  if (v701)
  {
    if (!v702 || !CMMsl::InEarOpenLid::operator==(v701, v702))
    {
      return 0;
    }
  }

  else if (v702)
  {
    return 0;
  }

  v703 = *(a1 + 1592);
  v704 = *(a2 + 1592);
  if (v703)
  {
    if (!v704 || !CMMsl::InEarBaselining::operator==(v703, v704))
    {
      return 0;
    }
  }

  else if (v704)
  {
    return 0;
  }

  v705 = *(a1 + 152);
  v706 = *(a2 + 152);
  if (v705)
  {
    if (!v706 || !CMMsl::AccessoryConfig::operator==(v705, v706))
    {
      return 0;
    }
  }

  else if (v706)
  {
    return 0;
  }

  v707 = *(a1 + 120);
  v708 = *(a2 + 120);
  if (v707)
  {
    if (!v708 || !CMMsl::AccessoryAccelConfig::operator==(v707, v708) && *(a1 + 120) | *(a2 + 120))
    {
      return 0;
    }
  }

  else if (v708)
  {
    return 0;
  }

  v709 = *(a1 + 280);
  v710 = *(a2 + 280);
  if (v709)
  {
    if (!v710 || !CMMsl::AccessoryProximityConfig::operator==(v709, v710) && *(a1 + 280) | *(a2 + 280))
    {
      return 0;
    }
  }

  else if (v710)
  {
    return 0;
  }

  v711 = *(a1 + 3384);
  v712 = *(a2 + 3384);
  if (v711)
  {
    if (!v712 || !CMMsl::TapDetect::operator==(v711, v712))
    {
      return 0;
    }
  }

  else if (v712)
  {
    return 0;
  }

  v713 = *(a1 + 3376);
  v714 = *(a2 + 3376);
  if (v713)
  {
    if (!v714 || !CMMsl::TapAccept::operator==(v713, v714))
    {
      return 0;
    }
  }

  else if (v714)
  {
    return 0;
  }

  v715 = *(a1 + 944);
  v716 = *(a2 + 944);
  if (v715)
  {
    if (!v716 || !CMMsl::DoubleTap::operator==(v715, v716))
    {
      return 0;
    }
  }

  else if (v716)
  {
    return 0;
  }

  v717 = *(a1 + 320);
  v718 = *(a2 + 320);
  if (v717)
  {
    if (!v718 || !CMMsl::AccessoryWakeDebug::operator==(v717, v718))
    {
      return 0;
    }
  }

  else if (v718)
  {
    return 0;
  }

  v719 = *(a1 + 1280);
  v720 = *(a2 + 1280);
  if (v719)
  {
    if (!v720 || !CMMsl::GeomagneticData::operator==(v719, v720))
    {
      return 0;
    }
  }

  else if (v720)
  {
    return 0;
  }

  v721 = *(a1 + 2936);
  v722 = *(a2 + 2936);
  if (v721)
  {
    if (!v722 || !CMMsl::RelativeDeviceMotionInternal::operator==(v721, v722))
    {
      return 0;
    }
  }

  else if (v722)
  {
    return 0;
  }

  v723 = *(a1 + 2952);
  v724 = *(a2 + 2952);
  if (v723)
  {
    if (!v724 || !CMMsl::RelativeGravityCorrection::operator==(v723, v724))
    {
      return 0;
    }
  }

  else if (v724)
  {
    return 0;
  }

  v725 = *(a1 + 2944);
  v726 = *(a2 + 2944);
  if (v725)
  {
    if (!v726 || !CMMsl::RelativeGravityConstraints::operator==(v725, v726))
    {
      return 0;
    }
  }

  else if (v726)
  {
    return 0;
  }

  v727 = *(a1 + 3920);
  v728 = *(a2 + 3920);
  if (v727)
  {
    if (!v728)
    {
      return 0;
    }

    v729 = *(v727 + 8);
    v730 = *(v728 + 8);
    if (v729)
    {
      if (!v730 || !CMMsl::DeviceMotionCorrection::operator==(v729, v730))
      {
        return 0;
      }
    }

    else if (v730)
    {
      return 0;
    }
  }

  else if (v728)
  {
    return 0;
  }

  v731 = *(a1 + 368);
  v732 = *(a2 + 368);
  if (v731)
  {
    if (!v732 || !CMMsl::AnchorCorrection::operator==(v731, v732))
    {
      return 0;
    }
  }

  else if (v732)
  {
    return 0;
  }

  v733 = *(a1 + 2760);
  v734 = *(a2 + 2760);
  if (v733)
  {
    if (!v734 || !CMMsl::PredictedRelativeDeviceMotion::operator==(v733, v734))
    {
      return 0;
    }
  }

  else if (v734)
  {
    return 0;
  }

  v735 = *(a1 + 2304);
  v736 = *(a2 + 2304);
  if (v735)
  {
    if (!v736 || !CMMsl::MovementStatsSignal::operator==(v735, v736))
    {
      return 0;
    }
  }

  else if (v736)
  {
    return 0;
  }

  v737 = *(a1 + 2296);
  v738 = *(a2 + 2296);
  if (v737)
  {
    if (!v738 || !CMMsl::MovementStatsGravityProjection::operator==(v737, v738))
    {
      return 0;
    }
  }

  else if (v738)
  {
    return 0;
  }

  v739 = *(a1 + 576);
  v740 = *(a2 + 576);
  if (v739)
  {
    if (!v740 || !CMMsl::BleedToZeroCorrection::operator==(v739, v740))
    {
      return 0;
    }
  }

  else if (v740)
  {
    return 0;
  }

  v741 = *(a1 + 192);
  v742 = *(a2 + 192);
  if (v741)
  {
    if (!v742)
    {
      return 0;
    }

    v743 = *(v741 + 8);
    v744 = *(v742 + 8);
    if (v743)
    {
      if (!v744 || !CMMsl::AccessoryConfig::operator==(v743, v744))
      {
        return 0;
      }
    }

    else if (v744)
    {
      return 0;
    }
  }

  else if (v742)
  {
    return 0;
  }

  v745 = *(a1 + 200);
  v746 = *(a2 + 200);
  if (v745)
  {
    if (!v746 || !CMMsl::AccessoryGyroGYTT::operator==(v745, v746))
    {
      return 0;
    }
  }

  else if (v746)
  {
    return 0;
  }

  v747 = *(a1 + 184);
  v748 = *(a2 + 184);
  if (v747)
  {
    if (!v748 || !CMMsl::AccessoryGyroCachedBias::operator==(v747, v748))
    {
      return 0;
    }
  }

  else if (v748)
  {
    return 0;
  }

  v749 = *(a1 + 1240);
  v750 = *(a2 + 1240);
  if (v749)
  {
    if (!v750 || !CMMsl::GaitCycleSegment::operator==(v749, v750))
    {
      return 0;
    }
  }

  else if (v750)
  {
    return 0;
  }

  v751 = *(a1 + 1248);
  v752 = *(a2 + 1248);
  if (v751)
  {
    if (!v752 || !CMMsl::GaitCycleSegmentationState::operator==(v751, v752))
    {
      return 0;
    }
  }

  else if (v752)
  {
    return 0;
  }

  v753 = *(a1 + 752);
  v754 = *(a2 + 752);
  if (v753)
  {
    if (!v754 || !CMMsl::CompassCalibrationAttempt::operator==(v753, v754))
    {
      return 0;
    }
  }

  else if (v754)
  {
    return 0;
  }

  v755 = *(a1 + 3576);
  v756 = *(a2 + 3576);
  if (v755)
  {
    if (!v756)
    {
      return 0;
    }

    v757 = *(v755 + 8);
    v758 = *(v756 + 8);
    if (v757)
    {
      if (!v758 || !CMMsl::DeviceMotionCorrection::operator==(v757, v758))
      {
        return 0;
      }
    }

    else if (v758)
    {
      return 0;
    }
  }

  else if (v756)
  {
    return 0;
  }

  v759 = *(a1 + 3568);
  v760 = *(a2 + 3568);
  if (v759)
  {
    if (!v760 || !CMMsl::VisualLocalizationAttitudeConstraints::operator==(v759, v760))
    {
      return 0;
    }
  }

  else if (v760)
  {
    return 0;
  }

  v761 = *(a1 + 240);
  v762 = *(a2 + 240);
  if (v761)
  {
    if (!v762)
    {
      return 0;
    }

    v763 = *(v761 + 8);
    v764 = *(v762 + 8);
    if (v763)
    {
      if (!v764 || !CMMsl::AccessoryConfig::operator==(v763, v764))
      {
        return 0;
      }
    }

    else if (v764)
    {
      return 0;
    }
  }

  else if (v762)
  {
    return 0;
  }

  v765 = *(a1 + 1064);
  v766 = *(a2 + 1064);
  if (v765)
  {
    if (!v766 || !CMMsl::FallDetectionReferee::operator==(v765, v766))
    {
      return 0;
    }
  }

  else if (v766)
  {
    return 0;
  }

  v767 = *(a1 + 1072);
  v768 = *(a2 + 1072);
  if (v767)
  {
    if (!v768 || !CMMsl::FallDetectionReplay::operator==(v767, v768))
    {
      return 0;
    }
  }

  else if (v768)
  {
    return 0;
  }

  v769 = *(a1 + 1080);
  v770 = *(a2 + 1080);
  if (v769)
  {
    if (!v770 || !CMMsl::FallDetectionStateMachine::operator==(v769, v770))
    {
      return 0;
    }
  }

  else if (v770)
  {
    return 0;
  }

  v771 = *(a1 + 1048);
  v772 = *(a2 + 1048);
  if (v771)
  {
    if (!v772 || !CMMsl::FallDetectionDetector::operator==(v771, v772))
    {
      return 0;
    }
  }

  else if (v772)
  {
    return 0;
  }

  v773 = *(a1 + 1104);
  v774 = *(a2 + 1104);
  if (v773)
  {
    if (!v774 || !CMMsl::FallFalsePositiveSuppressionFeatures::operator==(v773, v774))
    {
      return 0;
    }
  }

  else if (v774)
  {
    return 0;
  }

  v775 = *(a1 + 168);
  v776 = *(a2 + 168);
  if (v775)
  {
    if (!v776 || !CMMsl::AccessoryDeviceMotionConfig::operator==(v775, v776))
    {
      return 0;
    }
  }

  else if (v776)
  {
    return 0;
  }

  v777 = *(a1 + 2928);
  v778 = *(a2 + 2928);
  if (v777)
  {
    if (!v778 || !CMMsl::RelativeDeviceMotionCorrelatedMotion::operator==(v777, v778))
    {
      return 0;
    }
  }

  else if (v778)
  {
    return 0;
  }

  v779 = *(a1 + 2920);
  v780 = *(a2 + 2920);
  if (v779)
  {
    if (!v780 || !CMMsl::RelativeDeviceMotionComplexTransition::operator==(v779, v780))
    {
      return 0;
    }
  }

  else if (v780)
  {
    return 0;
  }

  v781 = *(a1 + 848);
  v782 = *(a2 + 848);
  if (v781)
  {
    if (!v782 || !CMMsl::DeviceMotionAlwaysOn::operator==(v781, v782))
    {
      return 0;
    }
  }

  else if (v782)
  {
    return 0;
  }

  v783 = *(a1 + 1056);
  v784 = *(a2 + 1056);
  if (v783)
  {
    if (!v784 || !CMMsl::FallDetectionGyroControllerReplay::operator==(v783, v784))
    {
      return 0;
    }
  }

  else if (v784)
  {
    return 0;
  }

  v785 = *(a1 + 3624);
  v786 = *(a2 + 3624);
  if (v785)
  {
    if (!v786 || !CMMsl::WalkingDetectionResult::operator==(v785, v786))
    {
      return 0;
    }
  }

  else if (v786)
  {
    return 0;
  }

  v787 = *(a1 + 224);
  v788 = *(a2 + 224);
  if (v787)
  {
    if (!v788 || !CMMsl::AccessoryInEarStatus::operator==(v787, v788))
    {
      return 0;
    }
  }

  else if (v788)
  {
    return 0;
  }

  v789 = *(a1 + 1088);
  v790 = *(a2 + 1088);
  if (v789)
  {
    if (!v790 || !CMMsl::FallDetectionWristStateReplay::operator==(v789, v790))
    {
      return 0;
    }
  }

  else if (v790)
  {
    return 0;
  }

  v791 = *(a1 + 1376);
  v792 = *(a2 + 1376);
  if (v791)
  {
    if (!v792 || !CMMsl::GyroBiasEstimateError::operator==(v791, v792))
    {
      return 0;
    }
  }

  else if (v792)
  {
    return 0;
  }

  v793 = *(a1 + 3304);
  v794 = *(a2 + 3304);
  if (v793)
  {
    if (!v794 || !CMMsl::StepLikelihoodFeatures::operator==(v793, v794))
    {
      return 0;
    }
  }

  else if (v794)
  {
    return 0;
  }

  v795 = *(a1 + 1128);
  v796 = *(a2 + 1128);
  if (v795)
  {
    if (!v796 || !CMMsl::FirstStepFeatures::operator==(v795, v796))
    {
      return 0;
    }
  }

  else if (v796)
  {
    return 0;
  }

  v797 = *(a1 + 304);
  v798 = *(a2 + 304);
  if (v797)
  {
    if (!v798 || !CMMsl::AccessoryStepDetectorDebug::operator==(v797, v798))
    {
      return 0;
    }
  }

  else if (v798)
  {
    return 0;
  }

  v799 = *(a1 + 3112);
  v800 = *(a2 + 3112);
  if (v799)
  {
    if (!v800 || !CMMsl::SitStandDetectorFeatures::operator==(v799, v800))
    {
      return 0;
    }
  }

  else if (v800)
  {
    return 0;
  }

  v801 = *(a1 + 3136);
  v802 = *(a2 + 3136);
  if (v801)
  {
    if (!v802 || !CMMsl::SitStandDetectorTransition::operator==(v801, v802))
    {
      return 0;
    }
  }

  else if (v802)
  {
    return 0;
  }

  v803 = *(a1 + 3120);
  v804 = *(a2 + 3120);
  if (v803)
  {
    if (!v804 || !CMMsl::SitStandDetectorPosteriorBufferStatsForSitToStand::operator==(v803, v804))
    {
      return 0;
    }
  }

  else if (v804)
  {
    return 0;
  }

  v805 = *(a1 + 3128);
  v806 = *(a2 + 3128);
  if (v805)
  {
    if (!v806 || !CMMsl::SitStandDetectorPosteriorBufferStatsForStandToSit::operator==(v805, v806))
    {
      return 0;
    }
  }

  else if (v806)
  {
    return 0;
  }

  v807 = *(a1 + 3176);
  v808 = *(a2 + 3176);
  if (v807)
  {
    if (!v808 || !CMMsl::SpatialEvent::operator==(v807, v808))
    {
      return 0;
    }
  }

  else if (v808)
  {
    return 0;
  }

  v809 = *(a1 + 1096);
  v810 = *(a2 + 1096);
  if (v809)
  {
    if (!v810 || !CMMsl::FallDistanceReplay::operator==(v809, v810))
    {
      return 0;
    }
  }

  else if (v810)
  {
    return 0;
  }

  v811 = *(a1 + 1688);
  v812 = *(a2 + 1688);
  if (v811)
  {
    if (!v812 || !CMMsl::JitterBufferLevel::operator==(v811, v812))
    {
      return 0;
    }
  }

  else if (v812)
  {
    return 0;
  }

  v813 = *(a1 + 2800);
  v814 = *(a2 + 2800);
  if (v813)
  {
    if (!v814 || !CMMsl::PressureFiltered1HzLowPass::operator==(v813, v814))
    {
      return 0;
    }
  }

  else if (v814)
  {
    return 0;
  }

  v815 = *(a1 + 2208);
  v816 = *(a2 + 2208);
  if (v815)
  {
    if (!v816 || !CMMsl::MotionActivityReplay::operator==(v815, v816))
    {
      return 0;
    }
  }

  else if (v816)
  {
    return 0;
  }

  v817 = *(a1 + 1040);
  v818 = *(a2 + 1040);
  if (v817)
  {
    if (!v818 || !CMMsl::FallDetectionActivityClassifierReplay::operator==(v817, v818))
    {
      return 0;
    }
  }

  else if (v818)
  {
    return 0;
  }

  v819 = *(a1 + 2032);
  v820 = *(a2 + 2032);
  if (v819)
  {
    if (!v820 || !CMMsl::LegacyALS5CHInput::operator==(v819, v820))
    {
      return 0;
    }
  }

  else if (v820)
  {
    return 0;
  }

  v821 = *(a1 + 920);
  v822 = *(a2 + 920);
  if (v821)
  {
    if (!v822 || !CMMsl::DopplerSample::operator==(v821, v822))
    {
      return 0;
    }
  }

  else if (v822)
  {
    return 0;
  }

  v823 = *(a1 + 904);
  v824 = *(a2 + 904);
  if (v823)
  {
    if (!v824 || !CMMsl::DopplerProximityEvent::operator==(v823, v824))
    {
      return 0;
    }
  }

  else if (v824)
  {
    return 0;
  }

  v825 = *(a1 + 912);
  v826 = *(a2 + 912);
  if (v825)
  {
    if (!v826 || !CMMsl::DopplerRawDataInput::operator==(v825, v826))
    {
      return 0;
    }
  }

  else if (v826)
  {
    return 0;
  }

  v827 = *(a1 + 896);
  v828 = *(a2 + 896);
  if (v827)
  {
    if (!v828 || !CMMsl::DopplerDebugRecord::operator==(v827, v828))
    {
      return 0;
    }
  }

  else if (v828)
  {
    return 0;
  }

  v829 = *(a1 + 2368);
  v830 = *(a2 + 2368);
  if (v829)
  {
    if (!v830 || !CMMsl::Orientation::operator==(v829, v830))
    {
      return 0;
    }
  }

  else if (v830)
  {
    return 0;
  }

  v831 = *(a1 + 1736);
  v832 = *(a2 + 1736);
  if (v831)
  {
    if (!v832 || !CMMsl::KappaAudioResult::operator==(v831, v832))
    {
      return 0;
    }
  }

  else if (v832)
  {
    return 0;
  }

  v833 = *(a1 + 1744);
  v834 = *(a2 + 1744);
  if (v833)
  {
    if (!v834 || !CMMsl::KappaBaroResult::operator==(v833, v834))
    {
      return 0;
    }
  }

  else if (v834)
  {
    return 0;
  }

  v835 = *(a1 + 1768);
  v836 = *(a2 + 1768);
  if (v835)
  {
    if (!v836 || !CMMsl::KappaGpsResult::operator==(v835, v836))
    {
      return 0;
    }
  }

  else if (v836)
  {
    return 0;
  }

  v837 = *(a1 + 1856);
  v838 = *(a2 + 1856);
  if (v837)
  {
    if (!v838 || !CMMsl::KappaPulseResult::operator==(v837, v838))
    {
      return 0;
    }
  }

  else if (v838)
  {
    return 0;
  }

  v839 = *(a1 + 1976);
  v840 = *(a2 + 1976);
  if (v839)
  {
    if (!v840 || !CMMsl::KappaZgResult::operator==(v839, v840))
    {
      return 0;
    }
  }

  else if (v840)
  {
    return 0;
  }

  v841 = *(a1 + 1968);
  v842 = *(a2 + 1968);
  if (v841)
  {
    if (!v842)
    {
      return 0;
    }

    if (*(v841 + 16))
    {
      if ((*(v842 + 16) & 1) == 0 || *(v841 + 8) != *(v842 + 8))
      {
        return 0;
      }
    }

    else if (*(v842 + 16))
    {
      return 0;
    }
  }

  else if (v842)
  {
    return 0;
  }

  v843 = *(a1 + 1840);
  v844 = *(a2 + 1840);
  if (v843)
  {
    if (!v844 || !CMMsl::KappaPulseInertialAccel::operator==(v843, v844))
    {
      return 0;
    }
  }

  else if (v844)
  {
    return 0;
  }

  v845 = *(a1 + 1528);
  v846 = *(a2 + 1528);
  if (v845)
  {
    if (!v846)
    {
      return 0;
    }

    if (*(v845 + 12))
    {
      if ((*(v846 + 12) & 1) == 0 || *(v845 + 8) != *(v846 + 8))
      {
        return 0;
      }
    }

    else if (*(v846 + 12))
    {
      return 0;
    }
  }

  else if (v846)
  {
    return 0;
  }

  v847 = *(a1 + 1520);
  v848 = *(a2 + 1520);
  if (v847)
  {
    if (!v848)
    {
      return 0;
    }

    if (*(v847 + 12))
    {
      if ((*(v848 + 12) & 1) == 0 || *(v847 + 8) != *(v848 + 8))
      {
        return 0;
      }
    }

    else if (*(v848 + 12))
    {
      return 0;
    }
  }

  else if (v848)
  {
    return 0;
  }

  v849 = *(a1 + 1728);
  v850 = *(a2 + 1728);
  if (v849)
  {
    if (!v850 || !CMMsl::KappaAirbagResult::operator==(v849, v850))
    {
      return 0;
    }
  }

  else if (v850)
  {
    return 0;
  }

  v851 = *(a1 + 1752);
  v852 = *(a2 + 1752);
  if (v851)
  {
    if (!v852 || !CMMsl::KappaCrashResult::operator==(v851, v852))
    {
      return 0;
    }
  }

  else if (v852)
  {
    return 0;
  }

  v853 = *(a1 + 1864);
  v854 = *(a2 + 1864);
  if (v853)
  {
    if (!v854 || !CMMsl::KappaQuiescenceResult::operator==(v853, v854))
    {
      return 0;
    }
  }

  else if (v854)
  {
    return 0;
  }

  v855 = *(a1 + 1872);
  v856 = *(a2 + 1872);
  if (v855)
  {
    if (!v856 || !CMMsl::KappaRecoveryResult::operator==(v855, v856))
    {
      return 0;
    }
  }

  else if (v856)
  {
    return 0;
  }

  v857 = *(a1 + 1904);
  v858 = *(a2 + 1904);
  if (v857)
  {
    if (!v858 || !CMMsl::KappaRolloverCrashResult::operator==(v857, v858))
    {
      return 0;
    }
  }

  else if (v858)
  {
    return 0;
  }

  v859 = *(a1 + 1808);
  v860 = *(a2 + 1808);
  if (v859)
  {
    if (!v860 || !CMMsl::KappaMildImpactResult::operator==(v859, v860))
    {
      return 0;
    }
  }

  else if (v860)
  {
    return 0;
  }

  v861 = *(a1 + 1792);
  v862 = *(a2 + 1792);
  if (v861)
  {
    if (!v862 || !CMMsl::KappaLackOfMotionResult::operator==(v861, v862))
    {
      return 0;
    }
  }

  else if (v862)
  {
    return 0;
  }

  v863 = *(a1 + 1912);
  v864 = *(a2 + 1912);
  if (v863)
  {
    if (!v864 || !CMMsl::KappaSevereCrashResult::operator==(v863, v864))
    {
      return 0;
    }
  }

  else if (v864)
  {
    return 0;
  }

  v865 = *(a1 + 1800);
  v866 = *(a2 + 1800);
  if (v865)
  {
    if (!v866 || !CMMsl::KappaLocalAudioResult::operator==(v865, v866))
    {
      return 0;
    }
  }

  else if (v866)
  {
    return 0;
  }

  v867 = *(a1 + 1880);
  v868 = *(a2 + 1880);
  if (v867)
  {
    if (!v868 || !CMMsl::KappaRemoteAudioResult::operator==(v867, v868))
    {
      return 0;
    }
  }

  else if (v868)
  {
    return 0;
  }

  v869 = *(a1 + 864);
  v870 = *(a2 + 864);
  if (v869)
  {
    if (!v870 || !CMMsl::DirectionOfTravelMetrics::operator==(v869, v870))
    {
      return 0;
    }
  }

  else if (v870)
  {
    return 0;
  }

  v871 = *(a1 + 3496);
  v872 = *(a2 + 3496);
  if (v871)
  {
    if (!v872 || !CMMsl::ViewObstructedMachineLearningDecision::operator==(v871, v872))
    {
      return 0;
    }
  }

  else if (v872)
  {
    return 0;
  }

  v873 = *(a1 + 1512);
  v874 = *(a2 + 1512);
  if (v873)
  {
    if (!v874 || !CMMsl::HeadToHeadsetTransformationEstimate::operator==(v873, v874))
    {
      return 0;
    }
  }

  else if (v874)
  {
    return 0;
  }

  v875 = *(a1 + 3504);
  v876 = *(a2 + 3504);
  if (v875)
  {
    if (!v876 || !CMMsl::ViewObstructedMachineLearningFeatures::operator==(v875, v876))
    {
      return 0;
    }
  }

  else if (v876)
  {
    return 0;
  }

  v877 = *(a1 + 3512);
  v878 = *(a2 + 3512);
  if (v877)
  {
    if (!v878 || !CMMsl::ViewObstructedMachineLearningProbabilities::operator==(v877, v878))
    {
      return 0;
    }
  }

  else if (v878)
  {
    return 0;
  }

  v879 = *(a1 + 2976);
  v880 = *(a2 + 2976);
  if (v879)
  {
    if (!v880 || !CMMsl::RunningArmSwingSignals::operator==(v879, v880))
    {
      return 0;
    }
  }

  else if (v880)
  {
    return 0;
  }

  v881 = *(a1 + 2984);
  v882 = *(a2 + 2984);
  if (v881)
  {
    if (!v882 || !CMMsl::RunningCentripetalAccelSignals::operator==(v881, v882))
    {
      return 0;
    }
  }

  else if (v882)
  {
    return 0;
  }

  v883 = *(a1 + 3008);
  v884 = *(a2 + 3008);
  if (v883)
  {
    if (!v884 || !CMMsl::RunningRotationAxis::operator==(v883, v884))
    {
      return 0;
    }
  }

  else if (v884)
  {
    return 0;
  }

  v885 = *(a1 + 3048);
  v886 = *(a2 + 3048);
  if (v885)
  {
    if (!v886 || !CMMsl::RunningVerticalOscillationSignals::operator==(v885, v886))
    {
      return 0;
    }
  }

  else if (v886)
  {
    return 0;
  }

  v887 = *(a1 + 3032);
  v888 = *(a2 + 3032);
  if (v887)
  {
    if (!v888 || !CMMsl::RunningVerticalOscillation::operator==(v887, v888))
    {
      return 0;
    }
  }

  else if (v888)
  {
    return 0;
  }

  v889 = *(a1 + 1920);
  v890 = *(a2 + 1920);
  if (v889)
  {
    if (!v890 || !CMMsl::KappaSpinResult::operator==(v889, v890))
    {
      return 0;
    }
  }

  else if (v890)
  {
    return 0;
  }

  v891 = *(a1 + 1832);
  v892 = *(a2 + 1832);
  if (v891)
  {
    if (!v892 || !CMMsl::KappaPulseDeltaV::operator==(v891, v892))
    {
      return 0;
    }
  }

  else if (v892)
  {
    return 0;
  }

  v893 = *(a1 + 3024);
  v894 = *(a2 + 3024);
  if (v893)
  {
    if (!v894 || !CMMsl::RunningStrideLength::operator==(v893, v894))
    {
      return 0;
    }
  }

  else if (v894)
  {
    return 0;
  }

  v895 = *(a1 + 1680);
  v896 = *(a2 + 1680);
  if (v895)
  {
    if (!v896 || !CMMsl::ISPPacket::operator==(v895, v896))
    {
      return 0;
    }
  }

  else if (v896)
  {
    return 0;
  }

  v897 = *(a1 + 1784);
  v898 = *(a2 + 1784);
  if (v897)
  {
    if (!v898 || !CMMsl::KappaHighSpeedCrashResult::operator==(v897, v898))
    {
      return 0;
    }
  }

  else if (v898)
  {
    return 0;
  }

  v899 = *(a1 + 1848);
  v900 = *(a2 + 1848);
  if (v899)
  {
    if (!v900 || !CMMsl::KappaPulseInertialHgAccel::operator==(v899, v900))
    {
      return 0;
    }
  }

  else if (v900)
  {
    return 0;
  }

  v901 = *(a1 + 1496);
  v902 = *(a2 + 1496);
  if (v901)
  {
    if (!v902 || !CMMsl::HarmonicMetrics::operator==(v901, v902))
    {
      return 0;
    }
  }

  else if (v902)
  {
    return 0;
  }

  v903 = *(a1 + 672);
  v904 = *(a2 + 672);
  if (v903)
  {
    if (!v904 || !CMMsl::CalorieControllerMETsConsumed::operator==(v903, v904))
    {
      return 0;
    }
  }

  else if (v904)
  {
    return 0;
  }

  v905 = *(a1 + 2576);
  v906 = *(a2 + 2576);
  if (v905)
  {
    if (!v906 || !CMMsl::PedometerPathStraightness::operator==(v905, v906))
    {
      return 0;
    }
  }

  else if (v906)
  {
    return 0;
  }

  v907 = *(a1 + 776);
  v908 = *(a2 + 776);
  if (v907)
  {
    if (!v908 || !CMMsl::ComplexHandMotion::operator==(v907, v908))
    {
      return 0;
    }
  }

  else if (v908)
  {
    return 0;
  }

  v909 = *(a1 + 968);
  v910 = *(a2 + 968);
  if (v909)
  {
    if (!v910 || !CMMsl::ElevationGradeEstimator::operator==(v909, v910))
    {
      return 0;
    }
  }

  else if (v910)
  {
    return 0;
  }

  v911 = *(a1 + 3472);
  v912 = *(a2 + 3472);
  if (v911)
  {
    if (!v912 || !CMMsl::VO2MaxModelInput::operator==(v911, v912))
    {
      return 0;
    }
  }

  else if (v912)
  {
    return 0;
  }

  v913 = *(a1 + 2848);
  v914 = *(a2 + 2848);
  if (v913)
  {
    if (!v914 || !CMMsl::ProxCalibration::operator==(v913, v914))
    {
      return 0;
    }
  }

  else if (v914)
  {
    return 0;
  }

  v915 = *(a1 + 1936);
  v916 = *(a2 + 1936);
  if (v915)
  {
    if (!v916 || !CMMsl::KappaStepsResult::operator==(v915, v916))
    {
      return 0;
    }
  }

  else if (v916)
  {
    return 0;
  }

  v917 = *(a1 + 3616);
  v918 = *(a2 + 3616);
  if (v917)
  {
    if (!v918 || !CMMsl::WakeGestureSample::operator==(v917, v918))
    {
      return 0;
    }
  }

  else if (v918)
  {
    return 0;
  }

  v919 = *(a1 + 1776);
  v920 = *(a2 + 1776);
  if (v919)
  {
    if (!v920 || !CMMsl::KappaGravityAutocorrelationResult::operator==(v919, v920))
    {
      return 0;
    }
  }

  else if (v920)
  {
    return 0;
  }

  v921 = *(a1 + 3040);
  v922 = *(a2 + 3040);
  if (v921)
  {
    if (!v922 || !CMMsl::RunningVerticalOscillationGradientBoostedSignals::operator==(v921, v922))
    {
      return 0;
    }
  }

  else if (v922)
  {
    return 0;
  }

  v923 = *(a1 + 3360);
  v924 = *(a2 + 3360);
  if (v923)
  {
    if (!v924 || !CMMsl::SubStats::operator==(v923, v924))
    {
      return 0;
    }
  }

  else if (v924)
  {
    return 0;
  }

  v925 = *(a1 + 2552);
  v926 = *(a2 + 2552);
  if (v925)
  {
    if (!v926 || !CMMsl::PedOdomFusionExtendedModeSegment::operator==(v925, v926))
    {
      return 0;
    }
  }

  else if (v926)
  {
    return 0;
  }

  v927 = *(a1 + 2104);
  v928 = *(a2 + 2104);
  if (v927)
  {
    if (!v928 || !CMMsl::MagicMountState::operator==(v927, v928))
    {
      return 0;
    }
  }

  else if (v928)
  {
    return 0;
  }

  v929 = *(a1 + 2504);
  v930 = *(a2 + 2504);
  if (v929)
  {
    if (!v930 || !CMMsl::PDRPedestrianClassifierState::operator==(v929, v930))
    {
      return 0;
    }
  }

  else if (v930)
  {
    return 0;
  }

  v931 = *(a1 + 2512);
  v932 = *(a2 + 2512);
  if (v931)
  {
    if (!v932 || !CMMsl::PDRPlacementClassifierState::operator==(v931, v932))
    {
      return 0;
    }
  }

  else if (v932)
  {
    return 0;
  }

  v933 = *(a1 + 2520);
  v934 = *(a2 + 2520);
  if (v933)
  {
    if (!v934 || !CMMsl::PDRSpeedEstimatorState::operator==(v933, v934))
    {
      return 0;
    }
  }

  else if (v934)
  {
    return 0;
  }

  v935 = *(a1 + 2384);
  v936 = *(a2 + 2384);
  if (v935)
  {
    if (!v936 || !CMMsl::PDRDOTEstimatorState::operator==(v935, v936))
    {
      return 0;
    }
  }

  else if (v936)
  {
    return 0;
  }

  v937 = *(a1 + 2536);
  v938 = *(a2 + 2536);
  if (v937)
  {
    if (!v938 || !CMMsl::PDRVelocityEstimatorState::operator==(v937, v938))
    {
      return 0;
    }
  }

  else if (v938)
  {
    return 0;
  }

  v939 = *(a1 + 2024);
  v940 = *(a2 + 2024);
  if (v939)
  {
    if (!v940 || !CMMsl::KMVelocityEstimatorState::operator==(v939, v940))
    {
      return 0;
    }
  }

  else if (v940)
  {
    return 0;
  }

  v941 = *(a1 + 3480);
  v942 = *(a2 + 3480);
  if (v941)
  {
    if (!v942 || !CMMsl::VelocityEstimatorFusionState::operator==(v941, v942))
    {
      return 0;
    }
  }

  else if (v942)
  {
    return 0;
  }

  v943 = *(a1 + 2472);
  v944 = *(a2 + 2472);
  if (v943)
  {
    if (!v944 || !CMMsl::PDRFenceReference::operator==(v943, v944))
    {
      return 0;
    }
  }

  else if (v944)
  {
    return 0;
  }

  v945 = *(a1 + 2480);
  v946 = *(a2 + 2480);
  if (v945)
  {
    if (!v946 || !CMMsl::PDRFenceState::operator==(v945, v946))
    {
      return 0;
    }
  }

  else if (v946)
  {
    return 0;
  }

  v947 = *(a1 + 3464);
  v948 = *(a2 + 3464);
  if (v947)
  {
    if (!v948 || !CMMsl::UWBRange::operator==(v947, v948))
    {
      return 0;
    }
  }

  else if (v948)
  {
    return 0;
  }

  v949 = *(a1 + 3368);
  v950 = *(a2 + 3368);
  if (v949)
  {
    if (!v950 || !CMMsl::SwingDoTCandidate::operator==(v949, v950))
    {
      return 0;
    }
  }

  else if (v950)
  {
    return 0;
  }

  v951 = *(a1 + 928);
  v952 = *(a2 + 928);
  if (v951)
  {
    if (!v952 || !CMMsl::DoTEstimatorHandSwing::operator==(v951, v952, a3))
    {
      return 0;
    }
  }

  else if (v952)
  {
    return 0;
  }

  v953 = *(a1 + 1952);
  v954 = *(a2 + 1952);
  if (v953)
  {
    if (!v954 || !CMMsl::KappaTriggerClustersResult::operator==(v953, v954))
    {
      return 0;
    }
  }

  else if (v954)
  {
    return 0;
  }

  v955 = *(a1 + 3104);
  v956 = *(a2 + 3104);
  if (v955)
  {
    if (!v956 || !CMMsl::SimActivityEvent::operator==(v955, v956))
    {
      return 0;
    }
  }

  else if (v956)
  {
    return 0;
  }

  v957 = *(a1 + 2464);
  v958 = *(a2 + 2464);
  if (v957)
  {
    if (!v958 || !CMMsl::PDRFeatures::operator==(v957, v958))
    {
      return 0;
    }
  }

  else if (v958)
  {
    return 0;
  }

  v959 = *(a1 + 2400);
  v960 = *(a2 + 2400);
  if (v959)
  {
    if (!v960 || !CMMsl::PDRDOTEstimatorStateBody::operator==(v959, v960))
    {
      return 0;
    }
  }

  else if (v960)
  {
    return 0;
  }

  v961 = *(a1 + 2392);
  v962 = *(a2 + 2392);
  if (v961)
  {
    if (!v962 || !CMMsl::PDRDOTEstimatorStateArmSwing::operator==(v961, v962))
    {
      return 0;
    }
  }

  else if (v962)
  {
    return 0;
  }

  v963 = *(a1 + 2424);
  v964 = *(a2 + 2424);
  if (v963)
  {
    if (!v964 || !CMMsl::PDRDOTEstimatorStateHeading::operator==(v963, v964))
    {
      return 0;
    }
  }

  else if (v964)
  {
    return 0;
  }

  v965 = *(a1 + 128);
  v966 = *(a2 + 128);
  if (v965)
  {
    if (!v966 || !CMMsl::AccessoryActivityAlseepConfidenceEpoch::operator==(v965, v966))
    {
      return 0;
    }
  }

  else if (v966)
  {
    return 0;
  }

  v967 = *(a1 + 2528);
  v968 = *(a2 + 2528);
  if (v967)
  {
    if (!v968 || !CMMsl::PDRSpeedEstimatorStateDebug::operator==(v967, v968))
    {
      return 0;
    }
  }

  else if (v968)
  {
    return 0;
  }

  v969 = *(a1 + 2712);
  v970 = *(a2 + 2712);
  if (v969)
  {
    if (!v970 || !CMMsl::PrecisionFindingDOTEstimate::operator==(v969, v970))
    {
      return 0;
    }
  }

  else if (v970)
  {
    return 0;
  }

  v971 = *(a1 + 2736);
  v972 = *(a2 + 2736);
  if (v971)
  {
    if (!v972 || !CMMsl::PrecisionFindingState::operator==(v971, v972))
    {
      return 0;
    }
  }

  else if (v972)
  {
    return 0;
  }

  v973 = *(a1 + 1896);
  v974 = *(a2 + 1896);
  if (v973)
  {
    if (!v974 || !CMMsl::KappaRoadsResult::operator==(v973, v974))
    {
      return 0;
    }
  }

  else if (v974)
  {
    return 0;
  }

  v975 = *(a1 + 2744);
  v976 = *(a2 + 2744);
  if (v975)
  {
    if (!v976 || !CMMsl::PrecisionFindingVelocityEstimate::operator==(v975, v976))
    {
      return 0;
    }
  }

  else if (v976)
  {
    return 0;
  }

  v977 = *(a1 + 2720);
  v978 = *(a2 + 2720);
  if (v977)
  {
    if (!v978 || !CMMsl::PrecisionFindingRangeFilter::operator==(v977, v978))
    {
      return 0;
    }
  }

  else if (v978)
  {
    return 0;
  }

  v979 = *(a1 + 2456);
  v980 = *(a2 + 2456);
  if (v979)
  {
    if (!v980 || !CMMsl::PDRDOTMeasurementSelectorState::operator==(v979, v980))
    {
      return 0;
    }
  }

  else if (v980)
  {
    return 0;
  }

  v981 = *(a1 + 632);
  v982 = *(a2 + 632);
  if (v981)
  {
    if (!v982 || !CMMsl::BumpToWakeState::operator==(v981, v982))
    {
      return 0;
    }
  }

  else if (v982)
  {
    return 0;
  }

  v983 = *(a1 + 2448);
  v984 = *(a2 + 2448);
  if (v983)
  {
    if (!v984 || !CMMsl::PDRDOTEstimatorUncertaintyModelOnBody::operator==(v983, v984))
    {
      return 0;
    }
  }

  else if (v984)
  {
    return 0;
  }

  v985 = *(a1 + 2584);
  v986 = *(a2 + 2584);
  if (v985)
  {
    if (!v986 || !CMMsl::PeerState::operator==(v985, v986))
    {
      return 0;
    }
  }

  else if (v986)
  {
    return 0;
  }

  v987 = *(a1 + 2136);
  v988 = *(a2 + 2136);
  if (v987)
  {
    if (!v988 || !CMMsl::MagnetometerCalibratorFilterParameters::operator==(v987, v988))
    {
      return 0;
    }
  }

  else if (v988)
  {
    return 0;
  }

  v989 = *(a1 + 1712);
  v990 = *(a2 + 1712);
  if (v989)
  {
    if (!v990 || !CMMsl::KappaActivityPhone::operator==(v989, v990))
    {
      return 0;
    }
  }

  else if (v990)
  {
    return 0;
  }

  v991 = *(a1 + 1720);
  v992 = *(a2 + 1720);
  if (v991)
  {
    if (!v992 || !CMMsl::KappaActivityWatch::operator==(v991, v992))
    {
      return 0;
    }
  }

  else if (v992)
  {
    return 0;
  }

  v993 = *(a1 + 2728);
  v994 = *(a2 + 2728);
  if (v993)
  {
    if (!v994 || !CMMsl::PrecisionFindingSessionStartStop::operator==(v993, v994))
    {
      return 0;
    }
  }

  else if (v994)
  {
    return 0;
  }

  v995 = *(a1 + 2416);
  v996 = *(a2 + 2416);
  if (v995)
  {
    if (!v996 || !CMMsl::PDRDOTEstimatorStateDebug::operator==(v995, v996))
    {
      return 0;
    }
  }

  else if (v996)
  {
    return 0;
  }

  v997 = *(a1 + 2408);
  v998 = *(a2 + 2408);
  if (v997)
  {
    if (!v998 || !CMMsl::PDRDOTEstimatorStateBodyDebug::operator==(v997, v998))
    {
      return 0;
    }
  }

  else if (v998)
  {
    return 0;
  }

  v999 = *(a1 + 1824);
  v1000 = *(a2 + 1824);
  if (v999)
  {
    if (!v1000 || !CMMsl::KappaPeakDetectorMapResult::operator==(v999, v1000))
    {
      return 0;
    }
  }

  else if (v1000)
  {
    return 0;
  }

  v1001 = *(a1 + 1816);
  v1002 = *(a2 + 1816);
  if (v1001)
  {
    if (!v1002 || !CMMsl::KappaPeakDetectorMapMagTimestamps::operator==(v1001, v1002))
    {
      return 0;
    }
  }

  else if (v1002)
  {
    return 0;
  }

  v1003 = *(a1 + 2752);
  v1004 = *(a2 + 2752);
  if (v1003)
  {
    if (!v1004 || !CMMsl::PrecisionFindingVerticalState::operator==(v1003, v1004))
    {
      return 0;
    }
  }

  else if (v1004)
  {
    return 0;
  }

  v1005 = *(a1 + 352);
  v1006 = *(a2 + 352);
  if (v1005)
  {
    if (!v1006 || !CMMsl::Altimeter::operator==(v1005, v1006))
    {
      return 0;
    }
  }

  else if (v1006)
  {
    return 0;
  }

  v1007 = *(a1 + 1016);
  v1008 = *(a2 + 1016);
  if (v1007)
  {
    if (!v1008 || !CMMsl::FaceDownDetection::operator==(v1007, v1008))
    {
      return 0;
    }
  }

  else if (v1008)
  {
    return 0;
  }

  v1009 = *(a1 + 2600);
  v1010 = *(a2 + 2600);
  if (v1009)
  {
    if (!v1010 || !CMMsl::PencilFusionDMYawAlignmentUpdate::operator==(v1009, v1010))
    {
      return 0;
    }
  }

  else if (v1010)
  {
    return 0;
  }

  v1011 = *(a1 + 2624);
  v1012 = *(a2 + 2624);
  if (v1011)
  {
    if (!v1012 || !CMMsl::PencilFusionRingSensorTrustModelUpdate::operator==(v1011, v1012))
    {
      return 0;
    }
  }

  else if (v1012)
  {
    return 0;
  }

  v1013 = *(a1 + 296);
  v1014 = *(a2 + 296);
  if (v1013)
  {
    if (!v1014 || !CMMsl::AccessorySleepStateUpdate::operator==(v1013, v1014))
    {
      return 0;
    }
  }

  else if (v1014)
  {
    return 0;
  }

  v1015 = *(a1 + 288);
  v1016 = *(a2 + 288);
  if (v1015)
  {
    if (!v1016 || !CMMsl::AccessorySleepStateConfidenceEpoch::operator==(v1015, v1016))
    {
      return 0;
    }
  }

  else if (v1016)
  {
    return 0;
  }

  v1017 = *(a1 + 3064);
  v1018 = *(a2 + 3064);
  if (v1017)
  {
    if (!v1018 || !CMMsl::SafetyHertzSample::operator==(v1017, v1018))
    {
      return 0;
    }
  }

  else if (v1018)
  {
    return 0;
  }

  v1019 = *(a1 + 3056);
  v1020 = *(a2 + 3056);
  if (v1019)
  {
    if (!v1020 || !CMMsl::SafetyCompanionStatus::operator==(v1019, v1020))
    {
      return 0;
    }
  }

  else if (v1020)
  {
    return 0;
  }

  v1021 = *(a1 + 2864);
  v1022 = *(a2 + 2864);
  if (v1021)
  {
    if (!v1022 || !CMMsl::PTSConsumedGNSS::operator==(v1021, v1022))
    {
      return 0;
    }
  }

  else if (v1022)
  {
    return 0;
  }

  v1023 = *(a1 + 2872);
  v1024 = *(a2 + 2872);
  if (v1023)
  {
    if (!v1024 || !CMMsl::PTSForwardPropagation::operator==(v1023, v1024))
    {
      return 0;
    }
  }

  else if (v1024)
  {
    return 0;
  }

  v1025 = *(a1 + 2888);
  v1026 = *(a2 + 2888);
  if (v1025)
  {
    if (!v1026)
    {
      return 0;
    }

    v1027 = *(v1025 + 8);
    v1028 = *(v1026 + 8);
    if (v1027)
    {
      if (!v1028 || !CMMsl::PTSForwardPropagation::operator==(v1027, v1028))
      {
        return 0;
      }
    }

    else if (v1028)
    {
      return 0;
    }
  }

  else if (v1026)
  {
    return 0;
  }

  v1029 = *(a1 + 1504);
  v1030 = *(a2 + 1504);
  if (v1029)
  {
    if (!v1030 || !CMMsl::HeadToHeadsetAttitudeEstimatorMeasurementUpdate::operator==(v1029, v1030))
    {
      return 0;
    }
  }

  else if (v1030)
  {
    return 0;
  }

  v1031 = *(a1 + 2880);
  v1032 = *(a2 + 2880);
  if (v1031)
  {
    if (!v1032)
    {
      return 0;
    }

    v1033 = *(v1031 + 8);
    v1034 = *(v1032 + 8);
    if (v1033)
    {
      if (!v1034 || !CMMsl::PTSForwardPropagation::operator==(v1033, v1034))
      {
        return 0;
      }
    }

    else if (v1034)
    {
      return 0;
    }
  }

  else if (v1032)
  {
    return 0;
  }

  v1035 = *(a1 + 376);
  v1036 = *(a2 + 376);
  if (v1035)
  {
    if (!v1036 || !CMMsl::AnchorMotionCorrespondence::operator==(v1035, v1036))
    {
      return 0;
    }
  }

  else if (v1036)
  {
    return 0;
  }

  v1037 = *(a1 + 1176);
  v1038 = *(a2 + 1176);
  if (v1037)
  {
    if (!v1038 || !CMMsl::FlickGesture::operator==(v1037, v1038))
    {
      return 0;
    }
  }

  else if (v1038)
  {
    return 0;
  }

  v1039 = *(a1 + 1168);
  v1040 = *(a2 + 1168);
  if (v1039)
  {
    if (!v1040 || !CMMsl::FlickFeatures::operator==(v1039, v1040))
    {
      return 0;
    }
  }

  else if (v1040)
  {
    return 0;
  }

  v1041 = *(a1 + 1152);
  v1042 = *(a2 + 1152);
  if (v1041)
  {
    if (!v1042 || !CMMsl::FlickControlParameters::operator==(v1041, v1042))
    {
      return 0;
    }
  }

  else if (v1042)
  {
    return 0;
  }

  v1043 = *(a1 + 3072);
  v1044 = *(a2 + 3072);
  if (v1043)
  {
    if (!v1044 || !CMMsl::SafetyRemoteSample::operator==(v1043, v1044))
    {
      return 0;
    }
  }

  else if (v1044)
  {
    return 0;
  }

  v1045 = *(a1 + 3080);
  v1046 = *(a2 + 3080);
  if (v1045)
  {
    if (!v1046 || !CMMsl::SafetyTrustedAudioResult::operator==(v1045, v1046))
    {
      return 0;
    }
  }

  else if (v1046)
  {
    return 0;
  }

  v1047 = *(a1 + 880);
  v1048 = *(a2 + 880);
  if (v1047)
  {
    if (!v1048 || !CMMsl::DisplayPoseState::operator==(v1047, v1048))
    {
      return 0;
    }
  }

  else if (v1048)
  {
    return 0;
  }

  v1049 = *(a1 + 3416);
  v1050 = *(a2 + 3416);
  if (v1049)
  {
    if (!v1050 || !CMMsl::TNB::operator==(v1049, v1050))
    {
      return 0;
    }
  }

  else if (v1050)
  {
    return 0;
  }

  v1051 = *(a1 + 2440);
  v1052 = *(a2 + 2440);
  if (v1051)
  {
    if (!v1052 || !CMMsl::PDRDOTEstimatorStateTNBDebug::operator==(v1051, v1052))
    {
      return 0;
    }
  }

  else if (v1052)
  {
    return 0;
  }

  v1053 = *(a1 + 664);
  v1054 = *(a2 + 664);
  if (v1053)
  {
    if (!v1054 || !CMMsl::CVIMUMeasurement::operator==(v1053, v1054))
    {
      return 0;
    }
  }

  else if (v1054)
  {
    return 0;
  }

  v1055 = *(a1 + 2432);
  v1056 = *(a2 + 2432);
  if (v1055)
  {
    if (!v1056 || !CMMsl::PDRDOTEstimatorStateSwingDebug::operator==(v1055, v1056))
    {
      return 0;
    }
  }

  else if (v1056)
  {
    return 0;
  }

  v1057 = *(a1 + 1568);
  v1058 = *(a2 + 1568);
  if (v1057)
  {
    if (!v1058 || !CMMsl::IMUComboPacket::operator==(v1057, v1058))
    {
      return 0;
    }
  }

  else if (v1058)
  {
    return 0;
  }

  v1059 = *(a1 + 1472);
  v1060 = *(a2 + 1472);
  if (v1059)
  {
    if (!v1060 || !CMMsl::GyroScaleEstimate::operator==(v1059, v1060))
    {
      return 0;
    }
  }

  else if (v1060)
  {
    return 0;
  }

  v1061 = *(a1 + 1368);
  v1062 = *(a2 + 1368);
  if (v1061)
  {
    if (!v1062 || !CMMsl::GyroBiasEstimate::operator==(v1061, v1062))
    {
      return 0;
    }
  }

  else if (v1062)
  {
    return 0;
  }

  v1063 = *(a1 + 64);
  v1064 = *(a2 + 64);
  if (v1063)
  {
    if (!v1064 || !CMMsl::AccelBiasEstimate::operator==(v1063, v1064))
    {
      return 0;
    }
  }

  else if (v1064)
  {
    return 0;
  }

  v1065 = *(a1 + 1432);
  v1066 = *(a2 + 1432);
  if (v1065)
  {
    if (!v1066 || !CMMsl::GyroController::operator==(v1065, v1066))
    {
      return 0;
    }
  }

  else if (v1066)
  {
    return 0;
  }

  v1067 = *(a1 + 2896);
  v1068 = *(a2 + 2896);
  if (v1067)
  {
    if (!v1068)
    {
      return 0;
    }

    v1069 = *(v1067 + 8);
    v1070 = *(v1068 + 8);
    if (v1069)
    {
      if (!v1070 || !CMMsl::PTSForwardPropagation::operator==(v1069, v1070))
      {
        return 0;
      }
    }

    else if (v1070)
    {
      return 0;
    }
  }

  else if (v1068)
  {
    return 0;
  }

  v1071 = *(a1 + 1200);
  v1072 = *(a2 + 1200);
  if (v1071)
  {
    if (!v1072 || !CMMsl::FlickMaxima::operator==(v1071, v1072))
    {
      return 0;
    }
  }

  else if (v1072)
  {
    return 0;
  }

  v1073 = *(a1 + 1184);
  v1074 = *(a2 + 1184);
  if (v1073)
  {
    if (!v1074 || !CMMsl::FlickGyroMaxima::operator==(v1073, v1074))
    {
      return 0;
    }
  }

  else if (v1074)
  {
    return 0;
  }

  v1075 = *(a1 + 1160);
  v1076 = *(a2 + 1160);
  if (v1075)
  {
    if (!v1076 || !CMMsl::FlickFPDetectorFeatures::operator==(v1075, v1076))
    {
      return 0;
    }
  }

  else if (v1076)
  {
    return 0;
  }

  v1077 = *(a1 + 1192);
  v1078 = *(a2 + 1192);
  if (v1077)
  {
    if (!v1078 || !CMMsl::FlickLPFDM6Data::operator==(v1077, v1078))
    {
      return 0;
    }
  }

  else if (v1078)
  {
    return 0;
  }

  v1079 = *(a1 + 824);
  v1080 = *(a2 + 824);
  if (v1079)
  {
    if (!v1080 || !CMMsl::CourseFusion::operator==(v1079, v1080))
    {
      return 0;
    }
  }

  else if (v1080)
  {
    return 0;
  }

  v1081 = *(a1 + 648);
  v1082 = *(a2 + 648);
  if (v1081)
  {
    if (!v1082 || !CMMsl::CMPedometerStep::operator==(v1081, v1082))
    {
      return 0;
    }
  }

  else if (v1082)
  {
    return 0;
  }

  v1083 = *(a1 + 640);
  v1084 = *(a2 + 640);
  if (v1083)
  {
    if (!v1084 || !CMMsl::CMPedEntry::operator==(v1083, v1084))
    {
      return 0;
    }
  }

  else if (v1084)
  {
    return 0;
  }

  v1085 = *(a1 + 1296);
  v1086 = *(a2 + 1296);
  if (v1085)
  {
    if (!v1086 || !CMMsl::GestureQuaternion::operator==(v1085, v1086))
    {
      return 0;
    }
  }

  else if (v1086)
  {
    return 0;
  }

  v1087 = *(a1 + 1288);
  v1088 = *(a2 + 1288);
  if (v1087)
  {
    if (!v1088)
    {
      return 0;
    }

    if (*(v1087 + 12))
    {
      if ((*(v1088 + 12) & 1) == 0 || *(v1087 + 8) != *(v1088 + 8))
      {
        return 0;
      }
    }

    else if (*(v1088 + 12))
    {
      return 0;
    }
  }

  else if (v1088)
  {
    return 0;
  }

  v1089 = *(a1 + 3192);
  v1090 = *(a2 + 3192);
  if (v1089)
  {
    if (!v1090)
    {
      return 0;
    }

    v1091 = *(v1089 + 8);
    v1092 = *(v1090 + 8);
    if (v1091)
    {
      if (!v1092 || !CMMsl::DeviceMotion::operator==(v1091, v1092))
      {
        return 0;
      }
    }

    else if (v1092)
    {
      return 0;
    }
  }

  else if (v1090)
  {
    return 0;
  }

  v1093 = *(a1 + 3200);
  v1094 = *(a2 + 3200);
  if (v1093)
  {
    if (!v1094)
    {
      return 0;
    }

    v1095 = *(v1093 + 8);
    v1096 = *(v1094 + 8);
    if (v1095)
    {
      if (!v1096 || !CMMsl::MotionStateUpdate::operator==(v1095, v1096))
      {
        return 0;
      }
    }

    else if (v1096)
    {
      return 0;
    }
  }

  else if (v1094)
  {
    return 0;
  }

  v1097 = *(a1 + 1664);
  v1098 = *(a2 + 1664);
  result = v1098 == 0;
  if (v1097)
  {
    if (v1098)
    {
      v1099 = *(v1097 + 8);
      v1100 = *(v1098 + 8);
      if (v1099)
      {
        return v1100 && CMMsl::AccessoryAccel::operator==(v1099, v1100);
      }

      if (!v1100)
      {
        return 1;
      }
    }

    return 0;
  }

  return result;
}

BOOL CMMsl::WorkoutRecorderAccel::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  result = v3 == 0;
  if (v2)
  {
    return v3 && CMMsl::Accel::operator==(v2, v3);
  }

  return result;
}

BOOL CMMsl::WorkoutRecorderBodyMetrics::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  result = v3 == 0;
  if (v2)
  {
    return v3 && CMMsl::BodyMetrics::operator==(v2, v3);
  }

  return result;
}

BOOL CMMsl::WorkoutRecorderElevation::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  result = v3 == 0;
  if (v2)
  {
    return v3 && CMMsl::ElevationChange::operator==(v2, v3);
  }

  return result;
}

BOOL CMMsl::WorkoutRecorderHeartRate::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  result = v3 == 0;
  if (v2)
  {
    return v3 && CMMsl::OnsetHeartRateData::operator==(v2, v3);
  }

  return result;
}

BOOL CMMsl::WorkoutRecorderRotationRate::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  result = v3 == 0;
  if (v2)
  {
    return v3 && CMMsl::RotationRate::operator==(v2, v3);
  }

  return result;
}

BOOL CMMsl::WorkoutRecorderOdometer::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  result = v3 == 0;
  if (v2)
  {
    return v3 && CMMsl::OdometerWithAltitude::operator==(v2, v3);
  }

  return result;
}

BOOL CMMsl::WorkoutRecorderWorkoutEvent::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  result = v3 == 0;
  if (v2)
  {
    return v3 && CMMsl::WorkoutEvent::operator==(v2, v3);
  }

  return result;
}

BOOL CMMsl::VO2MaxInput::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  v3 = *(a2 + 88);
  if ((v2 & 0x80) != 0)
  {
    if ((v3 & 0x80) == 0 || *(a1 + 64) != *(a2 + 64))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80) != 0)
  {
    return 0;
  }

  if ((v2 & 0x20) != 0)
  {
    if ((v3 & 0x20) == 0 || *(a1 + 48) != *(a2 + 48))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20) != 0)
  {
    return 0;
  }

  if ((*(a1 + 88) & 0x200) != 0)
  {
    if ((*(a2 + 88) & 0x200) == 0 || *(a1 + 76) != *(a2 + 76))
    {
      return 0;
    }
  }

  else if ((*(a2 + 88) & 0x200) != 0)
  {
    return 0;
  }

  if ((v2 & 4) != 0)
  {
    if ((v3 & 4) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((v3 & 4) != 0)
  {
    return 0;
  }

  if ((v2 & 8) != 0)
  {
    if ((v3 & 8) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((v3 & 8) != 0)
  {
    return 0;
  }

  if ((v2 & 2) != 0)
  {
    if ((v3 & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((v3 & 2) != 0)
  {
    return 0;
  }

  if ((*(a1 + 88) & 0x100) != 0)
  {
    if ((*(a2 + 88) & 0x100) == 0 || *(a1 + 72) != *(a2 + 72))
    {
      return 0;
    }
  }

  else if ((*(a2 + 88) & 0x100) != 0)
  {
    return 0;
  }

  if (v2)
  {
    if ((v3 & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  if ((v2 & 0x40) != 0)
  {
    if ((v3 & 0x40) == 0 || *(a1 + 56) != *(a2 + 56))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40) != 0)
  {
    return 0;
  }

  if ((*(a1 + 88) & 0x800) != 0)
  {
    if ((*(a2 + 88) & 0x800) == 0 || *(a1 + 84) != *(a2 + 84))
    {
      return 0;
    }
  }

  else if ((*(a2 + 88) & 0x800) != 0)
  {
    return 0;
  }

  if ((*(a1 + 88) & 0x1000) != 0)
  {
    if ((*(a2 + 88) & 0x1000) == 0 || *(a1 + 85) != *(a2 + 85))
    {
      return 0;
    }
  }

  else if ((*(a2 + 88) & 0x1000) != 0)
  {
    return 0;
  }

  if ((*(a1 + 88) & 0x400) != 0)
  {
    if ((*(a2 + 88) & 0x400) == 0 || *(a1 + 80) != *(a2 + 80))
    {
      return 0;
    }
  }

  else if ((*(a2 + 88) & 0x400) != 0)
  {
    return 0;
  }

  if ((*(a1 + 88) & 0x2000) != 0)
  {
    if ((*(a2 + 88) & 0x2000) == 0 || *(a1 + 86) != *(a2 + 86))
    {
      return 0;
    }
  }

  else if ((*(a2 + 88) & 0x2000) != 0)
  {
    return 0;
  }

  v4 = (v3 & 0x10) == 0;
  if ((v2 & 0x10) != 0)
  {
    return (v3 & 0x10) != 0 && *(a1 + 40) == *(a2 + 40);
  }

  return v4;
}

BOOL CMMsl::WorkoutRecorderHealthKitInfo::operator==(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 28) & 4) != 0)
  {
    if ((*(a2 + 28) & 4) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((*(a2 + 28) & 4) != 0)
  {
    return 0;
  }

  if (*(a1 + 28))
  {
    if ((*(a2 + 28) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 28))
  {
    return 0;
  }

  v2 = (*(a2 + 28) & 2) == 0;
  if ((*(a1 + 28) & 2) != 0)
  {
    return (*(a2 + 28) & 2) != 0 && *(a1 + 16) == *(a2 + 16);
  }

  return v2;
}

BOOL CMMsl::PearlAttitude::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 124);
  v3 = *(a2 + 124);
  if (v2)
  {
    if ((v3 & 1) == 0 || *(a1 + 80) != *(a2 + 80))
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  if ((v2 & 0x40) != 0)
  {
    if ((v3 & 0x40) == 0 || *(a1 + 108) != *(a2 + 108))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40) != 0)
  {
    return 0;
  }

  if ((v2 & 0x20) != 0)
  {
    if ((v3 & 0x20) == 0 || *(a1 + 104) != *(a2 + 104))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20) != 0)
  {
    return 0;
  }

  if ((*(a1 + 124) & 0x200) != 0)
  {
    if ((*(a2 + 124) & 0x200) == 0 || *(a1 + 120) != *(a2 + 120))
    {
      return 0;
    }
  }

  else if ((*(a2 + 124) & 0x200) != 0)
  {
    return 0;
  }

  if ((v2 & 2) != 0)
  {
    if ((v3 & 2) == 0 || *(a1 + 88) != *(a2 + 88))
    {
      return 0;
    }
  }

  else if ((v3 & 2) != 0)
  {
    return 0;
  }

  if ((v2 & 0x80) != 0)
  {
    if ((v3 & 0x80) == 0 || *(a1 + 112) != *(a2 + 112))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80) != 0)
  {
    return 0;
  }

  if ((v2 & 0x10) != 0)
  {
    if ((v3 & 0x10) == 0 || *(a1 + 100) != *(a2 + 100))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10) != 0)
  {
    return 0;
  }

  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *(a2 + 8);
  if (v4 - v5 != *(a2 + 16) - v6)
  {
    return 0;
  }

  while (v5 != v4)
  {
    if (*v5 != *v6)
    {
      return 0;
    }

    ++v5;
    ++v6;
  }

  if ((v2 & 8) != 0)
  {
    if ((v3 & 8) == 0 || *(a1 + 96) != *(a2 + 96))
    {
      return 0;
    }
  }

  else if ((v3 & 8) != 0)
  {
    return 0;
  }

  if ((*(a1 + 124) & 0x100) != 0)
  {
    if ((*(a2 + 124) & 0x100) == 0 || *(a1 + 116) != *(a2 + 116))
    {
      return 0;
    }
  }

  else if ((*(a2 + 124) & 0x100) != 0)
  {
    return 0;
  }

  if ((v2 & 4) != 0)
  {
    if ((v3 & 4) == 0 || *(a1 + 92) != *(a2 + 92))
    {
      return 0;
    }
  }

  else if ((v3 & 4) != 0)
  {
    return 0;
  }

  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(a2 + 32);
  if (v7 - v8 != *(a2 + 40) - v9)
  {
    return 0;
  }

  while (v8 != v7)
  {
    if (*v8 != *v9)
    {
      return 0;
    }

    ++v8;
    ++v9;
  }

  v11 = *(a1 + 56);
  v10 = *(a1 + 64);
  v12 = *(a2 + 56);
  if (v10 - v11 != *(a2 + 64) - v12)
  {
    return 0;
  }

  if (v11 == v10)
  {
    return 1;
  }

  v13 = v11 + 4;
  do
  {
    v14 = *v12++;
    result = *(v13 - 4) == v14;
    v16 = *(v13 - 4) != v14 || v13 == v10;
    v13 += 4;
  }

  while (!v16);
  return result;
}

BOOL CMMsl::RotationRate::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 28))
  {
    if ((*(a2 + 28) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 28))
  {
    return 0;
  }

  if ((*(a1 + 28) & 2) != 0)
  {
    if ((*(a2 + 28) & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((*(a2 + 28) & 2) != 0)
  {
    return 0;
  }

  if ((*(a1 + 28) & 4) != 0)
  {
    if ((*(a2 + 28) & 4) == 0 || *(a1 + 20) != *(a2 + 20))
    {
      return 0;
    }
  }

  else if ((*(a2 + 28) & 4) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 28) & 8) == 0;
  if ((*(a1 + 28) & 8) != 0)
  {
    return (*(a2 + 28) & 8) != 0 && *(a1 + 24) == *(a2 + 24);
  }

  return v2;
}

BOOL CMMsl::WorkoutRecorderWatchOrientationSettings::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  result = v3 == 0;
  if (v2)
  {
    return v3 && CMMsl::WatchOrientationSettings::operator==(v2, v3);
  }

  return result;
}

BOOL CMMsl::WifiScanResults::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  if (v3 - v2 != *(a2 + 16) - v4)
  {
    return 0;
  }

  if (v2 == v3)
  {
    return 1;
  }

  v5 = v2 + 8;
  do
  {
    v6 = *v4++;
    result = CMMsl::WifiScanEntry::operator==(*(v5 - 8), v6);
    v8 = !result || v5 == v3;
    v5 += 8;
  }

  while (!v8);
  return result;
}

BOOL CMMsl::WorkoutRecorderWifiScanResults::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  result = (v2 | v3) == 0;
  if (v2)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = *(v2 + 8);
    v7 = *(v2 + 16);
    v8 = *(v3 + 8);
    if (v7 - v6 == *(v3 + 16) - v8)
    {
      if (v6 == v7)
      {
        return 1;
      }

      else
      {
        v9 = v6 + 8;
        do
        {
          v10 = *v8++;
          result = CMMsl::WifiScanEntry::operator==(*(v9 - 8), v10);
          v11 = !result || v9 == v7;
          v9 += 8;
        }

        while (!v11);
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL CMMsl::WorkoutRecorderPressure::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  result = v3 == 0;
  if (v2)
  {
    return v3 && CMMsl::Pressure::operator==(v2, v3);
  }

  return result;
}

BOOL CMMsl::VisionCompassBias::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 76);
  v3 = *(a2 + 76);
  if (v2)
  {
    if ((v3 & 1) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  if ((v2 & 2) != 0)
  {
    if ((v3 & 2) == 0 || *(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if ((v3 & 2) != 0)
  {
    return 0;
  }

  if ((v2 & 4) != 0)
  {
    if ((v3 & 4) == 0 || *(a1 + 48) != *(a2 + 48))
    {
      return 0;
    }
  }

  else if ((v3 & 4) != 0)
  {
    return 0;
  }

  if ((v2 & 0x10) != 0)
  {
    if ((v3 & 0x10) == 0 || *(a1 + 56) != *(a2 + 56))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10) != 0)
  {
    return 0;
  }

  if ((v2 & 8) != 0)
  {
    if ((v3 & 8) == 0 || *(a1 + 52) != *(a2 + 52))
    {
      return 0;
    }
  }

  else if ((v3 & 8) != 0)
  {
    return 0;
  }

  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *(a2 + 8);
  if (v4 - v5 != *(a2 + 16) - v6)
  {
    return 0;
  }

  while (v5 != v4)
  {
    if (*v5 != *v6)
    {
      return 0;
    }

    ++v5;
    ++v6;
  }

  if ((v2 & 0x40) != 0)
  {
    if ((v3 & 0x40) == 0 || *(a1 + 64) != *(a2 + 64))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40) != 0)
  {
    return 0;
  }

  if ((v2 & 0x80) != 0)
  {
    if ((v3 & 0x80) == 0 || *(a1 + 68) != *(a2 + 68))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80) != 0)
  {
    return 0;
  }

  if ((*(a1 + 76) & 0x100) != 0)
  {
    if ((*(a2 + 76) & 0x100) == 0 || *(a1 + 72) != *(a2 + 72))
    {
      return 0;
    }
  }

  else if ((*(a2 + 76) & 0x100) != 0)
  {
    return 0;
  }

  v7 = (v3 & 0x20) == 0;
  if ((v2 & 0x20) != 0)
  {
    return (v3 & 0x20) != 0 && *(a1 + 60) == *(a2 + 60);
  }

  return v7;
}

BOOL CMMsl::VIOEstimation::operator==(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 340) & 0x40) != 0)
  {
    if ((*(a2 + 340) & 0x40) == 0 || *(a1 + 336) != *(a2 + 336))
    {
      return 0;
    }
  }

  else if ((*(a2 + 340) & 0x40) != 0)
  {
    return 0;
  }

  if ((*(a1 + 340) & 4) != 0)
  {
    if ((*(a2 + 340) & 4) == 0 || *(a1 + 312) != *(a2 + 312))
    {
      return 0;
    }
  }

  else if ((*(a2 + 340) & 4) != 0)
  {
    return 0;
  }

  if (*(a1 + 340))
  {
    if ((*(a2 + 340) & 1) == 0 || *(a1 + 296) != *(a2 + 296))
    {
      return 0;
    }
  }

  else if (*(a2 + 340))
  {
    return 0;
  }

  if ((*(a1 + 340) & 8) != 0)
  {
    if ((*(a2 + 340) & 8) == 0 || *(a1 + 320) != *(a2 + 320))
    {
      return 0;
    }
  }

  else if ((*(a2 + 340) & 8) != 0)
  {
    return 0;
  }

  if ((*(a1 + 340) & 2) != 0)
  {
    if ((*(a2 + 340) & 2) == 0 || *(a1 + 304) != *(a2 + 304))
    {
      return 0;
    }
  }

  else if ((*(a2 + 340) & 2) != 0)
  {
    return 0;
  }

  v3 = *(a1 + 176);
  v2 = *(a1 + 184);
  v4 = *(a2 + 176);
  if (v2 - v3 != *(a2 + 184) - v4)
  {
    return 0;
  }

  while (v3 != v2)
  {
    if (*v3 != *v4)
    {
      return 0;
    }

    ++v3;
    ++v4;
  }

  v6 = *(a1 + 104);
  v5 = *(a1 + 112);
  v7 = *(a2 + 104);
  if (v5 - v6 != *(a2 + 112) - v7)
  {
    return 0;
  }

  while (v6 != v5)
  {
    if (*v6 != *v7)
    {
      return 0;
    }

    ++v6;
    ++v7;
  }

  v9 = *(a1 + 272);
  v8 = *(a1 + 280);
  v10 = *(a2 + 272);
  if (v8 - v9 != *(a2 + 280) - v10)
  {
    return 0;
  }

  while (v9 != v8)
  {
    if (*v9 != *v10)
    {
      return 0;
    }

    ++v9;
    ++v10;
  }

  v12 = *(a1 + 8);
  v11 = *(a1 + 16);
  v13 = *(a2 + 8);
  if (v11 - v12 != *(a2 + 16) - v13)
  {
    return 0;
  }

  while (v12 != v11)
  {
    if (*v12 != *v13)
    {
      return 0;
    }

    ++v12;
    ++v13;
  }

  v15 = *(a1 + 224);
  v14 = *(a1 + 232);
  v16 = *(a2 + 224);
  if (v14 - v15 != *(a2 + 232) - v16)
  {
    return 0;
  }

  while (v15 != v14)
  {
    if (*v15 != *v16)
    {
      return 0;
    }

    ++v15;
    ++v16;
  }

  v18 = *(a1 + 152);
  v17 = *(a1 + 160);
  v19 = *(a2 + 152);
  if (v17 - v18 != *(a2 + 160) - v19)
  {
    return 0;
  }

  while (v18 != v17)
  {
    if (*v18 != *v19)
    {
      return 0;
    }

    ++v18;
    ++v19;
  }

  v21 = *(a1 + 128);
  v20 = *(a1 + 136);
  v22 = *(a2 + 128);
  if (v20 - v21 != *(a2 + 136) - v22)
  {
    return 0;
  }

  while (v21 != v20)
  {
    if (*v21 != *v22)
    {
      return 0;
    }

    ++v21;
    ++v22;
  }

  v24 = *(a1 + 248);
  v23 = *(a1 + 256);
  v25 = *(a2 + 248);
  if (v23 - v24 != *(a2 + 256) - v25)
  {
    return 0;
  }

  while (v24 != v23)
  {
    if (*v24 != *v25)
    {
      return 0;
    }

    ++v24;
    ++v25;
  }

  v27 = *(a1 + 32);
  v26 = *(a1 + 40);
  v28 = *(a2 + 32);
  if (v26 - v27 != *(a2 + 40) - v28)
  {
    return 0;
  }

  while (v27 != v26)
  {
    if (*v27 != *v28)
    {
      return 0;
    }

    ++v27;
    ++v28;
  }

  v30 = *(a1 + 200);
  v29 = *(a1 + 208);
  v31 = *(a2 + 200);
  if (v29 - v30 != *(a2 + 208) - v31)
  {
    return 0;
  }

  while (v30 != v29)
  {
    if (*v30 != *v31)
    {
      return 0;
    }

    ++v30;
    ++v31;
  }

  v33 = *(a1 + 80);
  v32 = *(a1 + 88);
  v34 = *(a2 + 80);
  if (v32 - v33 != *(a2 + 88) - v34)
  {
    return 0;
  }

  while (v33 != v32)
  {
    if (*v33 != *v34)
    {
      return 0;
    }

    ++v33;
    ++v34;
  }

  v36 = *(a1 + 56);
  v35 = *(a1 + 64);
  v37 = *(a2 + 56);
  if (v35 - v36 != *(a2 + 64) - v37)
  {
    return 0;
  }

  while (v36 != v35)
  {
    if (*v36 != *v37)
    {
      return 0;
    }

    ++v36;
    ++v37;
  }

  if ((*(a1 + 340) & 0x20) != 0)
  {
    if ((*(a2 + 340) & 0x20) == 0 || *(a1 + 332) != *(a2 + 332))
    {
      return 0;
    }
  }

  else if ((*(a2 + 340) & 0x20) != 0)
  {
    return 0;
  }

  v38 = (*(a2 + 340) & 0x10) == 0;
  if ((*(a1 + 340) & 0x10) != 0)
  {
    return (*(a2 + 340) & 0x10) != 0 && *(a1 + 328) == *(a2 + 328);
  }

  return v38;
}