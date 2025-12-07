void physx::Scb::Scene::syncWriteThroughProperties(uint64_t this)
{
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    pthread_mutex_lock(*(this + 7696));
  }

  v2 = *(this + 7948);
  if (v2)
  {
    v3 = *(this + 7904);
    do
    {
      v4 = *v3++;
      physx::Scb::Body::syncCollisionWriteThroughState(v4);
      --v2;
    }

    while (v2);
  }

  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    v5 = *(this + 7696);

    pthread_mutex_unlock(v5);
  }
}

void physx::Scb::Body::syncCollisionWriteThroughState(physx::Scb::Body *this)
{
  v2 = *(this + 71);
  if ((v2 & 0x400000) != 0)
  {
    physx::Sc::BodyCore::setLinearVelocity(this + 4, this + 252);
    v2 &= ~0x400000u;
    if ((v2 & 0x800000) != 0)
    {
LABEL_3:
      physx::Sc::BodyCore::setAngularVelocity(this + 4, this + 264);
      v2 &= 0xFF3FFFFF;
      if ((v2 & 0x8000) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_7;
    }
  }

  else
  {
    *(this + 252) = *(this + 14);
    *(this + 65) = *(this + 30);
    if ((v2 & 0x800000) != 0)
    {
      goto LABEL_3;
    }
  }

  *(this + 33) = *(this + 16);
  *(this + 68) = *(this + 34);
  if ((v2 & 0x8000) == 0)
  {
    goto LABEL_11;
  }

LABEL_7:
  if (*(this + 76))
  {
    Stream = *(this + 2);
    if (!Stream)
    {
      Stream = physx::Scb::Scene::getStream(*this, *(this + 11) & 0xF);
      *(this + 2) = Stream;
    }

    physx::Sc::BodyCore::setKinematicTarget((this + 32), *(*this + 4384), Stream + 272, *(this + 69));
    v2 &= 0xFF7F7FFF;
  }

LABEL_11:
  if ((v2 & 0x18000000) != 0)
  {
    physx::Sc::BodyCore::clearSpatialAcceleration(this + 4, (v2 >> 27) & 1, (v2 >> 28) & 1);
    v2 &= 0xE7FFFFFF;
  }

  if ((v2 & 0x30000) != 0)
  {
    v4 = *(this + 2);
    if (!v4)
    {
      v4 = physx::Scb::Scene::getStream(*this, *(this + 11) & 0xF);
      *(this + 2) = v4;
    }

    physx::Sc::BodyCore::addSpatialAcceleration(this + 4, *(*this + 4384), (v4 + 300), (v4 + 312));
    *(v4 + 308) = 0;
    v2 &= 0xFFFCFFFF;
    *(v4 + 300) = 0;
    *(v4 + 316) = 0;
  }

  if ((v2 & 0x60000000) != 0)
  {
    physx::Sc::BodyCore::clearSpatialVelocity(this + 4, (v2 >> 29) & 1, (v2 >> 30) & 1);
    v2 &= 0x9FFFFFFF;
  }

  if ((v2 & 0xC0000) != 0)
  {
    v5 = *(this + 2);
    if (!v5)
    {
      v5 = physx::Scb::Scene::getStream(*this, *(this + 11) & 0xF);
      *(this + 2) = v5;
    }

    physx::Sc::BodyCore::addSpatialVelocity(this + 4, *(*this + 4384), (v5 + 324), (v5 + 336));
    *(v5 + 332) = 0;
    v2 &= 0xFFF3FFFF;
    *(v5 + 324) = 0;
    *(v5 + 340) = 0;
  }

  if ((v2 & 0x1000000) == 0)
  {
    *(this + 69) = *(this + 47);
    goto LABEL_34;
  }

  if ((v2 & 0x6000000) == 0)
  {
    physx::Sc::BodyCore::setWakeCounter(this + 32, *(this + 69), 0);
    v2 &= 0xF8FFFFFF;
    goto LABEL_34;
  }

  if ((v2 & 0x4000000) != 0)
  {
    v6 = *(this + 2);
    if (v6)
    {
      if ((v2 & 0x4000) == 0)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v6 = physx::Scb::Scene::getStream(*this, *(this + 11) & 0xF);
      *(this + 2) = v6;
      if ((v2 & 0x4000) == 0)
      {
        goto LABEL_33;
      }
    }

    if ((*(this + 76) ^ *(v6 + 348)))
    {
      goto LABEL_34;
    }

LABEL_33:
    physx::Sc::BodyCore::setWakeCounter(this + 32, *(this + 69), 1);
    v2 &= 0xFAFFFFFF;
  }

LABEL_34:
  *(this + 71) = v2;
}

uint64_t physx::Scb::Scene::syncEntireScene(physx::Scb::Scene *this)
{
  v126 = *MEMORY[0x1E69E9840];
  v2 = this + 4676;
  *(this + 7689) = 0;
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    pthread_mutex_lock(*(this + 962));
  }

  if (*(this + 2151))
  {
    do
    {
      physx::Sc::Scene::createClient((this + 16));
      v3 = *(this + 2151) - 1;
      *(this + 2151) = v3;
    }

    while (v3);
  }

  v4 = *(this + 2152);
  if (v4)
  {
    if (v4)
    {
      *(this + 246) = *(this + 1072);
      *(this + 494) = *(this + 2146);
      *(this + 495) = 1;
      if ((v4 & 2) == 0)
      {
LABEL_9:
        if ((v4 & 4) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_239;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_9;
    }

    *(*(this + 238) + 120) = -*(this + 2147);
    if ((v4 & 4) == 0)
    {
LABEL_10:
      if ((v4 & 8) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_240;
    }

LABEL_239:
    *(this + 1071) = *(this + 2148);
    if ((v4 & 8) == 0)
    {
LABEL_11:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_254;
    }

LABEL_240:
    v112 = 0;
    v113 = (this + 8324);
    do
    {
      if (*(v113 + v112))
      {
        v114 = v112;
        do
        {
          v115 = v114 + 1;
          if (v112 >= v114 + 1)
          {
            v116 = v114 + 1;
          }

          else
          {
            v116 = v112;
          }

          if (v112 <= v114 + 1)
          {
            v117 = v114 + 1;
          }

          else
          {
            v117 = v112;
          }

          if ((*(v113 + v116) >> v117))
          {
            LOBYTE(v122[0]) = (*(this + v112 + 2112) >> v115) & 1;
            BYTE1(v122[0]) = (*(this + v114 + 2113) >> v112) & 1;
            physx::Sc::Scene::setDominanceGroupPair(this + 16, v112, (v114 + 1), v122);
          }

          v114 = v115;
        }

        while (v115 != 31);
      }

      ++v112;
    }

    while (v112 != 31);
    *(this + 527) = 0u;
    *(this + 8404) = 0u;
    *(this + 8420) = 0u;
    *(this + 8372) = 0u;
    *(this + 8388) = 0u;
    *(this + 8340) = 0u;
    *(this + 8356) = 0u;
    *v113 = 0u;
    v4 = *(this + 2152);
    if ((v4 & 0x10) == 0)
    {
LABEL_12:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_255;
    }

LABEL_254:
    *(*(this + 238) + 140) = *(this + 2149);
    if ((v4 & 0x80) == 0)
    {
LABEL_13:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_256;
    }

LABEL_255:
    *(*(this + 238) + 144) = *(this + 2150);
    if ((v4 & 0x20) == 0)
    {
LABEL_14:
      if ((v4 & 0x40) == 0)
      {
LABEL_16:
        *(this + 2152) = 0;
        goto LABEL_17;
      }

LABEL_15:
      v5 = *(this + 232);
      v5[236] = *(v2 + 453);
      v5[237] = *(v2 + 454);
      v5[238] = *(v2 + 455);
      goto LABEL_16;
    }

LABEL_256:
    v118 = 0;
    v119 = (this + 8276);
    do
    {
      if (*(v119 + v118))
      {
        v120 = *(v119 + v118 - 24);
        *v2 = 1;
        *(*(this + 232) + 4 * v118 + 1792) = v120;
        if (!v118)
        {
          *(this + 1168) = v120;
        }
      }

      ++v118;
    }

    while (v118 != 24);
    *v119 = 0;
    *(this + 8284) = 0;
    *(this + 8292) = 0;
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_17:
  v6 = *(this + 2043);
  if (v6)
  {
    v7 = 0;
    while (1)
    {
      v8 = *(*(this + 1016) + 8 * v7);
      v9 = *(v8 + 8);
      if (v9 >> 30 == 1)
      {
        break;
      }

      if ((v9 & 0x10000000) != 0)
      {
        goto LABEL_22;
      }

LABEL_23:
      if (++v7 >= v6)
      {
        goto LABEL_24;
      }
    }

    *(v8 + 32) = physx::Sc::Scene::createAggregate((this + 16), *(v8 + 24), *(v8 + 40));
LABEL_22:
    physx::Scb::Aggregate::syncState(v8, this);
    v6 = *(this + 2043);
    goto LABEL_23;
  }

LABEL_24:
  physx::Scb::ObjectTracker::clear(this + 8120);
  *(this + 1958) = 0;
  if (*(this + 1973))
  {
    v10 = 0;
    v11 = *(this + 981);
    while (1)
    {
      v12 = *(v11 + 8 * v10);
      v13 = *(v12 + 8);
      if (v13 >> 30 != 1)
      {
        if ((v13 & 0x10000000) != 0)
        {
          if (v13)
          {
            Stream = *(v12 + 16);
            if (!Stream)
            {
              Stream = physx::Scb::Scene::getStream(*v12, BYTE3(v13) & 0xF);
              *(v12 + 16) = Stream;
            }

            if ((*(v12 + 44) & 8) == 0 || (*Stream & 8) != 0)
            {
              if ((*(v12 + 44) & 8) == 0 && (*Stream & 8) != 0)
              {
                physx::Scb::Scene::switchRigidToNoSim(*v12, v12, 0);
              }
            }

            else
            {
              physx::Scb::Scene::switchRigidFromNoSim(*v12, v12, 0);
            }
          }

          physx::Scb::RigidObject::syncState(v12);
          if ((v13 & 0x40) != 0)
          {
            v33 = *(v12 + 16);
            if (!v33)
            {
              v33 = physx::Scb::Scene::getStream(*v12, *(v12 + 11) & 0xF);
              *(v12 + 16) = v33;
            }

            if ((*(v12 + 8) & 0x40) != 0)
            {
              physx::Sc::StaticCore::setActor2World(v12 + 32, v33 + 176);
            }
          }

          *(v12 + 16) = 0;
          *(v12 + 8) = *(v12 + 11) << 24;
        }

        goto LABEL_73;
      }

      v14 = (v13 & 1) != 0 ? *(v12 + 16) : (*(&physx::Scb::Actor::sLazyInitOffsets + ((v13 >> 24) & 0xF) + 3) + v12 + 12);
      if ((*v14 & 8) == 0)
      {
        break;
      }

      v125 = 0x4000000000;
      v123 = 1;
      v124 = v122;
      v20 = *(&physx::Scb::Actor::sLazyInitOffsets + (*(v12 + 11) & 0xF) + 3) + v12;
      v21 = v20 + *(&physx::Sc::gOffsetTable + *(v20 + 13) + 10);
      v22 = (v21 + 40);
      v23 = *(v21 + 48);
      if (v23 == 1)
      {
        v23 = 1;
        goto LABEL_59;
      }

      if (v23)
      {
        v22 = *v22;
LABEL_59:
        v30 = *v12;
        do
        {
          v31 = *v22;
          v32 = *(*v22 + 56);
          if ((v32 & 0xF000000) == 0x1000000)
          {
            *(v31 + 14) = v32 & 0x31FFFFFF | 0x80000000;
            v31[6] = v30;
          }

          ++v22;
          --v23;
        }

        while (v23);
      }

LABEL_73:
      if (++v10 >= *(this + 1973))
      {
        goto LABEL_74;
      }
    }

    v125 = 0x4000000000;
    v123 = 1;
    v124 = v122;
    v16 = *(&physx::Scb::Actor::sLazyInitOffsets + (*(v12 + 11) & 0xF) + 3) + v12;
    v17 = v16 + *(&physx::Sc::gOffsetTable + *(v16 + 13) + 10);
    v18 = (v17 + 40);
    v19 = *(v17 + 48);
    if (v19 == 1)
    {
      physx::Sc::Scene::addStatic(this + 16, (v12 + 32), (v17 + 40), 1u, 80, 0);
    }

    else
    {
      v18 = *v18;
      physx::Sc::Scene::addStatic(this + 16, (v12 + 32), v18, *(v17 + 48), 80, 0);
      if (!v19)
      {
LABEL_47:
        if ((v125 & 0x8000000000000000) == 0)
        {
          v28 = (v125 & 0x7FFFFFFF00000000) == 0 || v124 == v122;
          if (!v28 && v124 != 0)
          {
            (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
          }
        }

        goto LABEL_73;
      }
    }

    v24 = *v12;
    v25 = v19;
    do
    {
      v26 = *v18;
      v27 = *(*v18 + 56);
      if ((v27 & 0xF000000) == 0x1000000)
      {
        *(v26 + 14) = v27 & 0x31FFFFFF | 0x80000000;
        v26[6] = v24;
      }

      atomic_fetch_add(v26 + 8, 1u);
      ++v18;
      --v25;
    }

    while (v25);
    goto LABEL_47;
  }

LABEL_74:
  physx::Scb::ObjectTracker::clear(this + 7840);
  v34 = *(this + 14);
  if (v34)
  {
    v35 = *(this + 6);
    do
    {
      v36 = *v35++;
      v37 = (v36 - *(&physx::Scb::Actor::sLazyInitOffsets + *(v36 + 13)));
      if ((*(v37 + 11) & 0x10) == 0)
      {
        physx::Scb::Body::syncState(v37);
      }

      --v34;
    }

    while (v34);
  }

  v38 = *(this + 1027);
  if (v38)
  {
    v39 = *(this + 508);
    do
    {
      v40 = (*v39 - *(&physx::Scb::Actor::sLazyInitOffsets + *(*v39 + 13)));
      if ((*(v40 + 11) & 0x10) == 0)
      {
        physx::Scb::Body::syncState(v40);
      }

      v39 += 8;
      --v38;
    }

    while (v38);
  }

  if (*(this + 1987))
  {
    v41 = 0;
    v42 = *(this + 988);
    while (1)
    {
      v43 = *(v42 + 8 * v41);
      v44 = *(v43 + 2);
      if (v44 >> 30 != 1)
      {
        if ((v44 & 0x10000000) != 0)
        {
          physx::Scb::Body::syncState(*(v42 + 8 * v41));
        }

        goto LABEL_118;
      }

      v45 = (v44 & 1) != 0 ? v43[2] : v43 + *(&physx::Scb::Actor::sLazyInitOffsets + ((v44 >> 24) & 0xF) + 3) + 12;
      if ((*v45 & 8) == 0)
      {
        break;
      }

      v125 = 0x4000000000;
      v123 = 1;
      v124 = v122;
      v50 = v43 + *(&physx::Sc::gOffsetTable + *(v43 + 45) + 10);
      v51 = (v50 + 72);
      v52 = *(v50 + 80);
      if (v52 == 1)
      {
        v52 = 1;
        goto LABEL_114;
      }

      if (v52)
      {
        v51 = *v51;
LABEL_114:
        v59 = *v43;
        do
        {
          v60 = *v51;
          v61 = *(*v51 + 56);
          if ((v61 & 0xF000000) == 0x1000000)
          {
            *(v60 + 14) = v61 & 0x31FFFFFF | 0x80000000;
            v60[6] = v59;
          }

          ++v51;
          --v52;
        }

        while (v52);
      }

LABEL_118:
      if (++v41 >= *(this + 1987))
      {
        goto LABEL_119;
      }
    }

    v46 = (v43 + 4);
    v125 = 0x4000000000;
    v123 = 1;
    v124 = v122;
    v47 = v43 + *(&physx::Sc::gOffsetTable + *(v43 + 45) + 10) + 32;
    v48 = (v47 + 40);
    v49 = *(v47 + 48);
    if (v49 == 1)
    {
      physx::Sc::Scene::addBody((this + 16), v46, (v47 + 40), 1u, 80, 0, 0);
    }

    else
    {
      v48 = *v48;
      physx::Sc::Scene::addBody((this + 16), v46, v48, *(v47 + 48), 80, 0, 0);
      if (!v49)
      {
LABEL_102:
        if ((v125 & 0x8000000000000000) == 0)
        {
          v57 = (v125 & 0x7FFFFFFF00000000) == 0 || v124 == v122;
          if (!v57 && v124 != 0)
          {
            (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
          }
        }

        goto LABEL_118;
      }
    }

    v53 = *v43;
    v54 = v49;
    do
    {
      v55 = *v48;
      v56 = *(*v48 + 56);
      if ((v56 & 0xF000000) == 0x1000000)
      {
        *(v55 + 14) = v56 & 0x31FFFFFF | 0x80000000;
        v55[6] = v53;
      }

      atomic_fetch_add(v55 + 8, 1u);
      ++v48;
      --v54;
    }

    while (v54);
    goto LABEL_102;
  }

LABEL_119:
  physx::Scb::ObjectTracker::clear(this + 7896);
  *(this + 1954) = 0;
  v62 = *(this + 1947);
  if (v62)
  {
    for (i = 0; i < v62; ++i)
    {
      v64 = *(*(this + 968) + 8 * i);
      if ((*(v64 + 11) & 0x10) != 0)
      {
        physx::Scb::Shape::syncState(v64);
        v62 = *(this + 1947);
      }
    }
  }

  physx::Scb::ObjectTracker::clear(this + 7736);
  *(this + 1950) = 0;
  v65 = *(this + 517);
  if (v65)
  {
    v66 = *(this + 253);
    do
    {
      if ((*(*v66 - 13) & 0x10) == 0)
      {
        physx::Scb::Constraint::syncState((*v66 - 24));
      }

      ++v66;
      --v65;
    }

    while (v65);
  }

  if (*(this + 2001))
  {
    v67 = 0;
    v68 = *(this + 995);
    do
    {
      v69 = *(v68 + 8 * v67);
      v70 = *(v69 + 8);
      if (v70 >> 30 == 1)
      {
        v121 = 0;
        v122[0] = 0;
        v72 = *(v69 - 32);
        v71 = v69 - 32;
        (*(v72 + 56))(v71, v122, &v121);
        if (v122[0])
        {
          v73 = v122[0] + *(&physx::Scb::Actor::sLazyInitOffsets + (*(v122[0] + 107) & 0xF) + 3) + 96;
        }

        else
        {
          v73 = 0;
        }

        if (v121)
        {
          v74 = *(&physx::Scb::Actor::sLazyInitOffsets + (*(v121 + 107) & 0xF) + 3) + v121 + 96;
        }

        else
        {
          v74 = 0;
        }

        physx::Sc::Scene::addConstraint(this + 2, v71 + 56, v73, v74);
      }

      else if ((v70 & 0x10000000) != 0)
      {
        physx::Scb::Constraint::syncState(*(v68 + 8 * v67));
      }

      ++v67;
    }

    while (v67 < *(this + 2001));
  }

  physx::Scb::ObjectTracker::clear(this + 7952);
  v75 = *(this + 557);
  if (v75)
  {
    v76 = *(this + 273);
    do
    {
      if ((*(*v76 - 13) & 0x10) == 0)
      {
        physx::Scb::Articulation::syncState(*v76 - 24);
      }

      ++v76;
      --v75;
    }

    while (v75);
  }

  if (*(this + 2015))
  {
    v77 = 0;
    v78 = *(this + 1002);
    do
    {
      v79 = *(v78 + 8 * v77);
      v80 = *(v79 + 8);
      if (v80 >> 30 == 1)
      {
        v81 = **(v79 + 120);
        if (v81)
        {
          v82 = v81 + 96;
        }

        else
        {
          v82 = 0;
        }

        physx::Sc::Scene::addArticulation(this + 2, (v79 + 24), (v82 + 32));
      }

      else if ((v80 & 0x10000000) != 0)
      {
        physx::Scb::Articulation::syncState(*(v78 + 8 * v77));
      }

      ++v77;
    }

    while (v77 < *(this + 2015));
  }

  physx::Scb::ObjectTracker::clear(this + 8008);
  if (*(this + 2029))
  {
    v83 = 0;
    v84 = *(this + 1009);
    do
    {
      v85 = *(v84 + 8 * v83);
      v86 = *(v85 + 8);
      if (v86 >> 30 == 1)
      {
        physx::Sc::Scene::addArticulationJoint(this + 16, v85 + 24, (*(v85 + 408) + 128), (*(v85 + 416) + 128));
      }

      else if ((v86 & 0x10000000) != 0)
      {
        if ((v86 & 0xFFFFFF) == 0)
        {
          goto LABEL_230;
        }

        v87 = *(v85 + 16);
        if (v87)
        {
          if ((v86 & 1) == 0)
          {
            goto LABEL_165;
          }

LABEL_189:
          physx::Sc::ArticulationJointCore::setParentPose(v85 + 24, v87);
          v86 = *(v85 + 8);
          if ((v86 & 2) != 0)
          {
            goto LABEL_190;
          }

LABEL_166:
          if ((v86 & 4) == 0)
          {
            goto LABEL_167;
          }

LABEL_191:
          *(v85 + 304) = *(v87 + 56);
          if ((v86 & 8) != 0)
          {
            goto LABEL_192;
          }

LABEL_168:
          if ((v86 & 0x10) == 0)
          {
            goto LABEL_169;
          }

LABEL_193:
          *(v85 + 332) = *(v87 + 84);
          if ((v86 & 0x20) != 0)
          {
            goto LABEL_194;
          }

LABEL_170:
          if ((v86 & 0x40) == 0)
          {
            goto LABEL_171;
          }

LABEL_195:
          *(v85 + 280) = *(v87 + 92);
          if ((v86 & 0x100) != 0)
          {
            goto LABEL_196;
          }

LABEL_172:
          if ((v86 & 0x200) == 0)
          {
            goto LABEL_173;
          }

LABEL_197:
          *(v85 + 344) = *(v87 + 104);
          if ((v86 & 0x400) != 0)
          {
            goto LABEL_198;
          }

LABEL_174:
          if ((v86 & 0x800) == 0)
          {
            goto LABEL_175;
          }

LABEL_199:
          *(v85 + 360) = *(v87 + 112);
          if ((v86 & 0x4000) != 0)
          {
            goto LABEL_200;
          }

LABEL_176:
          if ((v86 & 0x8000) == 0)
          {
            goto LABEL_177;
          }

LABEL_201:
          *(v85 + 361) = *(v87 + 128);
          if ((v86 & 0x1000) != 0)
          {
            goto LABEL_202;
          }

LABEL_178:
          if ((v86 & 0x2000) == 0)
          {
            goto LABEL_179;
          }

LABEL_203:
          *(v85 + 356) = *(v87 + 120);
          if ((v86 & 0x80000) != 0)
          {
            goto LABEL_204;
          }

LABEL_180:
          if ((v86 & 0x10000) == 0)
          {
            goto LABEL_181;
          }

LABEL_205:
          *(v85 + 362) = *(v87 + 132);
          if ((v86 & 0x20000) != 0)
          {
            goto LABEL_206;
          }

LABEL_182:
          if ((v86 & 0x40000) == 0)
          {
            goto LABEL_183;
          }

LABEL_207:
          v93 = *(v87 + 148);
          v92 = *(v87 + 152);
          *(v85 + 88) = v93;
          *(v85 + 92) = v92;
          *(v85 + 380) = tanf(v92 * 0.25);
          *(v85 + 384) = tanf(v93 * 0.25);
          if ((v86 & 0x800000) != 0)
          {
            goto LABEL_208;
          }

LABEL_184:
          if ((v86 & 0x100000) == 0)
          {
            goto LABEL_185;
          }

LABEL_213:
          for (j = 0; j != 48; j += 8)
          {
            *(v85 + 88 + j) = *(v87 + 156 + j);
            *(v85 + 301) |= 0x10u;
            v97 = *(v85 + 24);
            if (v97)
            {
              physx::Sc::ArticulationJointSim::setDirty(v97);
            }
          }

          v86 = *(v85 + 8);
          if ((v86 & 0x200000) != 0)
          {
            goto LABEL_218;
          }

LABEL_186:
          if ((v86 & 0x400000) == 0)
          {
            goto LABEL_230;
          }
        }

        else
        {
          v87 = physx::Scb::Scene::getStream(*v85, HIBYTE(v86) & 0xF);
          *(v85 + 16) = v87;
          v86 = *(v85 + 8);
          if (v86)
          {
            goto LABEL_189;
          }

LABEL_165:
          if ((v86 & 2) == 0)
          {
            goto LABEL_166;
          }

LABEL_190:
          physx::Sc::ArticulationJointCore::setChildPose(v85 + 24, v87 + 28);
          v86 = *(v85 + 8);
          if ((v86 & 4) != 0)
          {
            goto LABEL_191;
          }

LABEL_167:
          if ((v86 & 8) == 0)
          {
            goto LABEL_168;
          }

LABEL_192:
          *(v85 + 320) = *(v87 + 72);
          *(v85 + 328) = *(v87 + 80);
          if ((v86 & 0x10) != 0)
          {
            goto LABEL_193;
          }

LABEL_169:
          if ((v86 & 0x20) == 0)
          {
            goto LABEL_170;
          }

LABEL_194:
          *(v85 + 336) = *(v87 + 88);
          if ((v86 & 0x40) != 0)
          {
            goto LABEL_195;
          }

LABEL_171:
          if ((v86 & 0x100) == 0)
          {
            goto LABEL_172;
          }

LABEL_196:
          *(v85 + 340) = *(v87 + 100);
          if ((v86 & 0x200) != 0)
          {
            goto LABEL_197;
          }

LABEL_173:
          if ((v86 & 0x400) == 0)
          {
            goto LABEL_174;
          }

LABEL_198:
          v88 = *(v87 + 108);
          *(v85 + 348) = v88;
          *(v85 + 376) = tanf(v88 * 0.25);
          if ((v86 & 0x800) != 0)
          {
            goto LABEL_199;
          }

LABEL_175:
          if ((v86 & 0x4000) == 0)
          {
            goto LABEL_176;
          }

LABEL_200:
          v89 = *(v87 + 124);
          *(v85 + 364) = v89;
          *(v85 + 388) = tanf(v89 * 0.25);
          if ((v86 & 0x8000) != 0)
          {
            goto LABEL_201;
          }

LABEL_177:
          if ((v86 & 0x1000) == 0)
          {
            goto LABEL_178;
          }

LABEL_202:
          *(v85 + 352) = *(v87 + 116);
          if ((v86 & 0x2000) != 0)
          {
            goto LABEL_203;
          }

LABEL_179:
          if ((v86 & 0x80000) == 0)
          {
            goto LABEL_180;
          }

LABEL_204:
          physx::Sc::ArticulationJointCore::setJointType(v85 + 24, *(v87 + 136));
          v86 = *(v85 + 8);
          if ((v86 & 0x10000) != 0)
          {
            goto LABEL_205;
          }

LABEL_181:
          if ((v86 & 0x20000) == 0)
          {
            goto LABEL_182;
          }

LABEL_206:
          v90 = *(v87 + 140);
          v91 = *(v87 + 144);
          *(v85 + 96) = v90;
          *(v85 + 104) = v91;
          *(v85 + 368) = tanf(v90 * 0.25);
          *(v85 + 372) = tanf(v91 * 0.25);
          if ((v86 & 0x40000) != 0)
          {
            goto LABEL_207;
          }

LABEL_183:
          if ((v86 & 0x800000) == 0)
          {
            goto LABEL_184;
          }

LABEL_208:
          for (k = 0; k != 6; ++k)
          {
            *(v85 + 290 + k) = *(v87 + 348 + 4 * k);
            *(v85 + 301) |= 1u;
            v95 = *(v85 + 24);
            if (v95)
            {
              physx::Sc::ArticulationJointSim::setDirty(v95);
            }
          }

          v86 = *(v85 + 8);
          if ((v86 & 0x100000) != 0)
          {
            goto LABEL_213;
          }

LABEL_185:
          if ((v86 & 0x200000) == 0)
          {
            goto LABEL_186;
          }

LABEL_218:
          for (m = 0; m != 96; m += 16)
          {
            v99 = *(v87 + m + 212);
            v100 = *(v87 + m + 216);
            v101 = v85 + m;
            *(v101 + 136) = *(v87 + m + 204);
            *(v101 + 144) = v99;
            *(v101 + 148) = v100;
            *(v85 + 301) |= 0x20u;
            v102 = *(v85 + 24);
            if (v102)
            {
              physx::Sc::ArticulationJointSim::setDirty(v102);
            }
          }

          v86 = *(v85 + 8);
          if ((v86 & 0x400000) == 0)
          {
LABEL_230:
            *(v85 + 16) = 0;
            *(v85 + 8) = v86 & 0xFF000000;
            goto LABEL_231;
          }
        }

        v103 = (v87 + 324);
        v104 = (v85 + 256);
        v105 = 6;
        do
        {
          *(v104 - 6) = *(v103 - 6);
          v106 = *(v85 + 301);
          *(v85 + 301) = v106 | 4;
          v107 = *(v85 + 24);
          if (v107)
          {
            physx::Sc::ArticulationJointSim::setDirty(v107);
            v108 = *(v85 + 301);
            v109 = *(v85 + 24);
            *v104 = *v103;
            *(v85 + 301) = v108 | 8;
            if (v109)
            {
              physx::Sc::ArticulationJointSim::setDirty(v109);
            }
          }

          else
          {
            *v104 = *v103;
            *(v85 + 301) = v106 | 0xC;
          }

          ++v104;
          ++v103;
          --v105;
        }

        while (v105);
        v86 = *(v85 + 8);
        goto LABEL_230;
      }

LABEL_231:
      ++v83;
    }

    while (v83 < *(this + 2029));
  }

  physx::Scb::ObjectTracker::clear(this + 8064);
  result = physx::Cm::FlushPool::clearNotThreadSafe(this + 7696);
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    v111 = *(this + 962);

    return pthread_mutex_unlock(v111);
  }

  return result;
}

unsigned int *physx::Scb::Aggregate::syncState(unsigned int *this, physx::Scb::Scene *a2)
{
  v2 = this;
  v3 = this[2];
  if ((v3 & 0xFFFFFF) == 0)
  {
    goto LABEL_18;
  }

  v5 = *(this + 2);
  if (v5)
  {
    if ((v3 & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_6:
    v6 = v5[1];
    if (v6)
    {
      v7 = (*(a2 + 978) + 8 * *v5);
      v8 = v2[8] & 0xFFFFFF;
      do
      {
        v9 = *v7++;
        v10 = *(&physx::Scb::Actor::sLazyInitOffsets + (*(v9 + 11) & 0xF) + 3) + v9;
        *(v10 + 8) = v8 | (*(v10 + 11) << 24);
        --v6;
      }

      while (v6);
    }

    goto LABEL_9;
  }

  this = physx::Scb::Scene::getStream(*this, HIBYTE(v3) & 0xF);
  v5 = this;
  *(v2 + 2) = this;
  if (v3)
  {
    goto LABEL_6;
  }

LABEL_9:
  if ((v3 & 2) != 0)
  {
    v11 = v5[3];
    if (v11)
    {
      v12 = 0;
      v13 = *(a2 + 978) + 8 * v5[2];
      do
      {
        v14 = *(v13 + 8 * v12);
        v15 = *(v14 + 8);
        v16 = (*(&physx::Scb::Actor::sLazyInitOffsets + ((v15 >> 24) & 0xF) + 3) + v14);
        *(v16 + 2) |= 0xFFFFFFu;
        if ((v15 >> 30) - 1 <= 1)
        {
          v17 = *v16;
          if (v17)
          {
            v18 = *(v17 + 56);
            if (v18)
            {
              do
              {
                this = physx::Sc::ShapeSim::reinsertBroadPhase(v18);
                v18 = *v18;
              }

              while (v18);
              v11 = v5[3];
            }
          }
        }

        ++v12;
      }

      while (v12 < v11);
    }
  }

LABEL_18:
  *(v2 + 2) = 0;
  v2[2] = *(v2 + 11) << 24;
  return this;
}

void physx::Scb::Body::syncState(physx::Scb::Body *this)
{
  v2 = *(this + 71);
  v3 = *(this + 2);
  if ((v2 & 0x100000) == 0)
  {
    *(this + 14) = *(this + 3);
    *(this + 30) = *(this + 8);
    *(this + 62) = *(this + 18);
    if ((v3 & 1) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_10;
  }

  if ((v2 & 0x200000) != 0)
  {
    Stream = *(this + 2);
    if (!Stream)
    {
      Stream = physx::Scb::Scene::getStream(*this, HIBYTE(v3) & 0xF);
      *(this + 2) = Stream;
    }

    v7 = *(this + 20);
    v8 = *(this + 21);
    v9 = *(this + 22);
    v10 = *(this + 23);
    v11 = Stream[60] - *(this + 24);
    v12 = Stream[61] - *(this + 25);
    v13 = Stream[62] - *(this + 26);
    v14 = v11 + v11;
    v15 = v12 + v12;
    v16 = v13 + v13;
    v17 = (v10 * v10) + -0.5;
    v18 = (-(v8 * v15) - (v7 * v14)) - (v9 * v16);
    v19 = ((v10 * ((v9 * v15) - (v8 * v16))) + (v14 * v17)) - (v7 * v18);
    v20 = ((v10 * ((v7 * v16) - (v9 * v14))) + (v15 * v17)) - (v8 * v18);
    v21 = ((v10 * ((v8 * v14) - (v7 * v15))) + (v16 * v17)) - (v9 * v18);
    v23 = Stream[58];
    v22 = Stream[59];
    v24 = Stream[56];
    v25 = Stream[57];
    v26 = (((v10 * v24) - (v7 * v22)) - (v8 * v23)) + (v25 * v9);
    v27 = (((v10 * v25) - (v8 * v22)) - (v9 * v24)) + (v23 * v7);
    v28 = (((v10 * v23) - (v9 * v22)) - (v7 * v25)) + (v24 * v8);
    v29 = (((v7 * v24) + (v10 * v22)) + (v8 * v25)) + (v9 * v23);
    v30 = *(this + 12);
    v31 = *(this + 13);
    v32 = *(this + 14);
    v33 = *(this + 15);
    v34 = *(this + 16);
    v35 = *(this + 17);
    v36 = *(this + 18);
    v37 = v19 + v19;
    v38 = v20 + v20;
    v39 = v21 + v21;
    v40 = (v33 * v33) + -0.5;
    v41 = ((v31 * v38) + (v30 * v37)) + (v32 * v39);
    v42 = ((v33 * ((v31 * v39) - (v32 * v38))) + (v37 * v40)) + (v30 * v41);
    v43 = ((((v32 * v37) - (v30 * v39)) * v33) + (v38 * v40)) + (v31 * v41);
    v44 = (((v30 * v38) - (v31 * v37)) * v33) + (v39 * v40);
    v45 = (((v29 * v30) + (v33 * v26)) + (v31 * v28)) - (v27 * v32);
    v46 = (((v29 * v31) + (v33 * v27)) + (v32 * v26)) - (v28 * v30);
    v47 = (((v29 * v32) + (v33 * v28)) + (v30 * v27)) - (v26 * v31);
    v48 = (((v33 * v29) - (v30 * v26)) - (v31 * v27)) - (v32 * v28);
    *v57 = v45;
    *&v57[1] = v46;
    *&v57[2] = v47;
    *&v57[3] = v48;
    *&v57[4] = v34 + v42;
    *&v57[5] = v35 + v43;
    *&v57[6] = (v44 + (v32 * v41)) + v36;
    *(this + 56) = v45;
    *(this + 57) = v46;
    *(this + 58) = v47;
    *(this + 59) = v48;
    *(this + 60) = v34 + v42;
    *(this + 61) = v35 + v43;
    *(this + 62) = (v44 + (v32 * v41)) + v36;
    v4 = this + 32;
    v5 = v57;
  }

  else
  {
    v4 = this + 32;
    v5 = this + 224;
  }

  physx::Sc::BodyCore::setBody2World(v4, v5);
  if (v3)
  {
LABEL_10:
    v49 = *(this + 2);
    if (!v49)
    {
      v49 = physx::Scb::Scene::getStream(*this, *(this + 11) & 0xF);
      *(this + 2) = v49;
    }

    if ((*(this + 44) & 8) == 0 || (*v49 & 8) != 0)
    {
      if ((*(this + 44) & 8) == 0 && (*v49 & 8) != 0)
      {
        physx::Scb::Scene::switchRigidToNoSim(*this, this, 1);
      }
    }

    else
    {
      physx::Scb::Scene::switchRigidFromNoSim(*this, this, 1);
    }
  }

LABEL_18:
  if ((v2 & 0xF82FFFFF) == 0)
  {
    goto LABEL_47;
  }

  v50 = *(this + 2);
  if (!v50)
  {
    v50 = physx::Scb::Scene::getStream(*this, *(this + 11) & 0xF);
    *(this + 2) = v50;
  }

  v51 = *(this + 71);
  if (v51)
  {
    physx::Sc::BodyCore::setInverseMass(this + 8, *(v50 + 164));
    v51 = *(this + 71);
    if ((v51 & 2) == 0)
    {
LABEL_23:
      if ((v51 & 4) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_32;
    }
  }

  else if ((v51 & 2) == 0)
  {
    goto LABEL_23;
  }

  physx::Sc::BodyCore::setInverseInertia(this + 4, v50 + 168);
  v51 = *(this + 71);
  if ((v51 & 4) == 0)
  {
LABEL_24:
    if ((v51 & 8) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_33;
  }

LABEL_32:
  physx::Sc::BodyCore::setLinearDamping(this + 8, *(v50 + 180));
  v51 = *(this + 71);
  if ((v51 & 8) == 0)
  {
LABEL_25:
    if ((v51 & 0x10) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_34;
  }

LABEL_33:
  physx::Sc::BodyCore::setAngularDamping(this + 8, *(v50 + 184));
  v51 = *(this + 71);
  if ((v51 & 0x10) == 0)
  {
LABEL_26:
    if ((v51 & 0x20) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_35;
  }

LABEL_34:
  physx::Sc::BodyCore::setMaxAngVelSq(this + 8, *(v50 + 188));
  v51 = *(this + 71);
  if ((v51 & 0x20) == 0)
  {
LABEL_27:
    if ((v51 & 0x40) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_36;
  }

LABEL_35:
  physx::Sc::BodyCore::setMaxLinVelSq(this + 8, *(v50 + 192));
  v51 = *(this + 71);
  if ((v51 & 0x40) == 0)
  {
LABEL_28:
    if ((v51 & 0x200) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_37;
  }

LABEL_36:
  physx::Sc::BodyCore::setSleepThreshold(this + 8, *(v50 + 196));
  v51 = *(this + 71);
  if ((v51 & 0x200) == 0)
  {
    goto LABEL_39;
  }

LABEL_37:
  v52 = *(v50 + 208);
  *(this + 39) = v52;
  v53 = *(this + 4);
  if (v53)
  {
    *(v53 + 126) = v52;
  }

LABEL_39:
  if ((v51 & 0x100) != 0)
  {
    *(this + 35) = *(v50 + 204);
    if ((v51 & 0x400) == 0)
    {
LABEL_41:
      if ((v51 & 0x1000) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_54;
    }
  }

  else if ((v51 & 0x400) == 0)
  {
    goto LABEL_41;
  }

  physx::Sc::BodyCore::setBody2Actor(this + 32, (v50 + 224));
  v51 = *(this + 71);
  if ((v51 & 0x1000) == 0)
  {
LABEL_42:
    if ((v51 & 0x800) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_55;
  }

LABEL_54:
  physx::Sc::BodyCore::setFreezeThreshold(this + 8, *(v50 + 256));
  v51 = *(this + 71);
  if ((v51 & 0x800) == 0)
  {
LABEL_43:
    if ((v51 & 0x2000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_56;
  }

LABEL_55:
  *(this + 31) = *(v50 + 252);
  if ((v51 & 0x2000) == 0)
  {
LABEL_44:
    if ((v51 & 0x80) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_57;
  }

LABEL_56:
  physx::Sc::BodyCore::setMaxContactImpulse(this + 8, *(v50 + 260));
  if ((*(this + 71) & 0x80) == 0)
  {
LABEL_45:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_46;
  }

LABEL_57:
  *(this + 27) = *(v50 + 200);
  if ((v2 & 0x4000) != 0)
  {
LABEL_46:
    v54 = *(*this + 4384);
    LOBYTE(v57[0]) = *(v50 + 348);
    physx::Sc::BodyCore::setFlags((this + 32), v54, v57);
  }

LABEL_47:
  physx::Scb::Body::syncCollisionWriteThroughState(this);
  if ((v2 & 0x2000000) != 0)
  {
    physx::Sc::BodyCore::putToSleep((this + 32));
  }

  else if (*(this + 2) >> 30 != 3)
  {
    v55 = *(this + 4);
    if (v55)
    {
      v56 = *(v55 + 184) > 0xFFFFFFFD;
    }

    else
    {
      v56 = 1;
    }

    *(this + 70) = v56;
  }

  physx::Scb::RigidObject::syncState(this);
  *(this + 2) = 0;
  *(this + 2) = *(this + 11) << 24;
  *(this + 71) = 0;
}

void physx::Scb::Shape::syncState(void *this)
{
  v2 = *(this + 2);
  v3 = v2 & 0xFFFFFF;
  if ((v2 & 0xFFFFFF) == 0)
  {
    goto LABEL_23;
  }

  v4 = *(this + 96);
  Stream = this[2];
  if (!Stream)
  {
    Stream = physx::Scb::Scene::getStream(*this, HIBYTE(v2) & 0xF);
    this[2] = Stream;
  }

  v6 = *this;
  if (v2)
  {
    if (!v6)
    {
      physx::Sc::ShapeCore::setGeometry((this + 4), (Stream + 64));
      goto LABEL_13;
    }

    (*(**(*(v6 + 1856) + 1776) + 96))(*(*(v6 + 1856) + 1776), this + 8);
    physx::Sc::ShapeCore::setGeometry((this + 4), (Stream + 64));
    (*(**(*(v6 + 1856) + 1776) + 88))(*(*(v6 + 1856) + 1776), this + 8);
  }

  if ((v2 & 2) != 0 && v6)
  {
    v7 = *(Stream + 148);
    v8 = (Stream + 144);
    if (v7 != 1)
    {
      v8 = (*(v6 + 7792) + 2 * *v8);
    }

    physx::Sc::ShapeCore::setMaterialIndices(this + 32, v8, v7);
    (*(**(*(v6 + 1856) + 1776) + 128))(*(*(v6 + 1856) + 1776), this + 8);
  }

LABEL_13:
  v2 = *(this + 2);
  if ((v2 & 4) != 0)
  {
    *(this + 4) = *Stream;
    this[10] = *(Stream + 16);
    *(this + 22) = *(Stream + 24);
    if ((v2 & 8) == 0)
    {
LABEL_15:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_26;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_15;
  }

  *(this + 3) = *(Stream + 28);
  if ((v2 & 0x10) == 0)
  {
LABEL_16:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(this + 23) = *(Stream + 44);
  if ((v2 & 0x20) == 0)
  {
LABEL_17:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(this + 48) = *(Stream + 48);
  if ((v2 & 0x40) == 0)
  {
LABEL_18:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(this + 96) = *(Stream + 52);
  if ((v2 & 0x80) == 0)
  {
LABEL_19:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_29:
  *(this + 49) = *(Stream + 56);
  if ((v2 & 0x100) != 0)
  {
LABEL_20:
    *(this + 50) = *(Stream + 60);
  }

LABEL_21:
  v9 = *(this - 1);
  if (v9)
  {
    v11 = v3;
    v10 = v4;
    physx::Sc::RigidCore::onShapeChange((v9 + 128), (this + 4), &v11, &v10, 1);
    v2 = *(this + 2);
  }

LABEL_23:
  this[2] = 0;
  *(this + 2) = v2 & 0xFF000000;
}

void physx::Scb::Scene::processPendingRemove(int32x2_t *this)
{
  if (this[986].i32[1])
  {
    v2 = 0;
    do
    {
      physx::Scb::RigidObject::processShapeRemoves(*(*&this[981] + 8 * v2++));
    }

    while (v2 < this[986].u32[1]);
  }

  if (this[993].i32[1])
  {
    v3 = 0;
    do
    {
      physx::Scb::RigidObject::processShapeRemoves(*(*&this[988] + 8 * v3++));
    }

    while (v3 < this[993].u32[1]);
  }

  physx::Scb::Scene::processRemoves<physx::Scb::Constraint,true,false>(this, &this[994]);
  v4 = this[1000].u32[1];
  if (v4)
  {
    v5 = 0;
    v6 = this[995];
    do
    {
      v7 = *(*&v6 + 8 * v5);
      if ((~*(v7 + 8) & 0x10000001) == 0)
      {
        v8 = *(v7 + 104);
        if (v8)
        {
          physx::Sc::ConstraintSim::preBodiesChange(v8);
          v4 = this[1000].u32[1];
        }
      }

      ++v5;
    }

    while (v5 < v4);
  }

  physx::Scb::Scene::processRemoves<physx::Scb::ArticulationJoint,false,false>(this, &this[1008]);
  physx::Scb::Scene::processRemoves<physx::Scb::RigidStatic,false,true>(this, &this[980]);
  physx::Scb::Scene::processRemoves<physx::Scb::Body,true,true>(this, &this[987]);
  physx::Scb::Scene::processRemoves<physx::Scb::Articulation,true,false>(this, &this[1001]);
  v9 = this[1021].u32[1];
  if (v9)
  {
    for (i = 0; i < v9; ++i)
    {
      v11 = *(*&this[1016] + 8 * i);
      if (*(v11 + 8) >> 30 == 3)
      {
        physx::Scb::Aggregate::syncState(*(*&this[1016] + 8 * i), this);
        physx::Sc::Scene::deleteAggregate(&this[2], *(v11 + 32));
        v9 = this[1021].u32[1];
      }
    }
  }
}

void physx::Scb::Scene::processRemoves<physx::Scb::Constraint,true,false>(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 52))
  {
    v4 = 0;
    do
    {
      v5 = *(*(a2 + 8) + 8 * v4);
      if (*(v5 + 8) >> 30 == 3)
      {
        physx::Sc::Scene::removeConstraint(a1 + 16, v5 + 24);
        if ((*(v5 + 11) & 0x10) == 0)
        {
          physx::Scb::Constraint::syncState(v5);
        }
      }

      ++v4;
    }

    while (v4 < *(a2 + 52));
  }
}

uint64_t physx::Scb::Scene::processRemoves<physx::Scb::ArticulationJoint,false,false>(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 52);
  if (v2)
  {
    v4 = result;
    for (i = 0; i < v2; ++i)
    {
      v6 = *(*(a2 + 8) + 8 * i);
      if (*(v6 + 8) >> 30 == 3)
      {
        result = physx::Sc::Scene::removeArticulationJoint(v4 + 16, (v6 + 24));
        v2 = *(a2 + 52);
      }
    }
  }

  return result;
}

void physx::Scb::Scene::processRemoves<physx::Scb::RigidStatic,false,true>(void *result, uint64_t a2)
{
  v32[1] = *MEMORY[0x1E69E9840];
  if (*(a2 + 52))
  {
    v2 = a2;
    for (i = 0; i < *(v2 + 52); ++i)
    {
      v4 = *(*(v2 + 8) + 8 * i);
      v5 = *(v4 + 8);
      if (v5 >> 30 == 3)
      {
        if ((*(*(&physx::Scb::Actor::sLazyInitOffsets + ((v5 >> 24) & 0xF) + 3) + v4 + 12) & 8) != 0)
        {
          v32[0] = 0x4000000000;
          v30 = 1;
          v31 = v29;
          v18 = *(&physx::Scb::Actor::sLazyInitOffsets + (*(v4 + 11) & 0xF) + 3) + v4;
          v19 = v18 + *(&physx::Sc::gOffsetTable + *(v18 + 13) + 10);
          v20 = (v19 + 40);
          v21 = *(v19 + 48);
          if (v21 == 1)
          {
            v21 = 1;
            goto LABEL_35;
          }

          if (*(v19 + 48))
          {
            v20 = *v20;
LABEL_35:
            v22 = *v4;
            do
            {
              v23 = *v20;
              v24 = *(*v20 + 56);
              if ((v24 & 0x10000000) != 0)
              {
                physx::Scb::Shape::syncState(v23 + 6);
                physx::shdfnd::internal::HashSetBase<physx::Sc::BodySim const*,physx::shdfnd::Hash<physx::Sc::BodySim const*>,physx::shdfnd::NonTrackingAllocator,true>::erase(v22 + 967, (v23 + 6));
                v24 = v23[7] & 0xEFFFFFFF;
                *(v23 + 14) = v24;
              }

              if ((v24 & 0xF000000) == 0x1000000)
              {
                *(v23 + 14) = v24 & 0x31FFFFFF;
                v23[6] = 0;
              }

              ++v20;
              --v21;
            }

            while (v21);
            v25 = v31;
            v26 = HIDWORD(v32[0]);
            if ((v32[0] & 0x8000000000000000) != 0)
            {
              continue;
            }
          }

          else
          {
            v25 = v29;
            v26 = 64;
          }

          if ((v26 & 0x7FFFFFFF) != 0 && v25 != v29 && v25)
          {
            (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
          }

          continue;
        }

        v6 = (v5 >> 4) & 1;
        v32[0] = 0x4000000000;
        v30 = 1;
        v31 = v29;
        v7 = result[549];
        v8 = v7 == 0;
        if (v7)
        {
          v9 = (v7 + 536);
        }

        else
        {
          v9 = v29;
        }

        if (v7)
        {
          v10 = (v7 + 1056);
        }

        else
        {
          v10 = &v31;
        }

        v11 = (v7 + 1064);
        if (v8)
        {
          v12 = v32;
        }

        else
        {
          v12 = v11;
        }

        physx::Sc::Scene::removeStatic((result + 2), (v4 + 32), v9, v6);
        v13 = *v12;
        if (v13)
        {
          v14 = *v10;
          v15 = *v4;
          do
          {
            v16 = *v14;
            v17 = *(*v14 - 24);
            if ((v17 & 0x10000000) != 0)
            {
              physx::Scb::Shape::syncState((v16 - 32));
              physx::shdfnd::internal::HashSetBase<physx::Sc::BodySim const*,physx::shdfnd::Hash<physx::Sc::BodySim const*>,physx::shdfnd::NonTrackingAllocator,true>::erase(v15 + 967, v16 - 32);
              v17 = *(v16 - 24) & 0xEFFFFFFF;
              *(v16 - 24) = v17;
            }

            if ((v17 & 0xF000000) == 0x1000000)
            {
              *(v16 - 24) = v17 & 0x31FFFFFF;
              *(v16 - 32) = 0;
            }

            if (atomic_fetch_add((v16 - 48), 0xFFFFFFFF) == 1)
            {
              (*(*(v16 - 56) + 16))(v16 - 56);
            }

            ++v14;
            --v13;
          }

          while (v13);
        }

        if ((v32[0] & 0x8000000000000000) == 0 && (v32[0] & 0x7FFFFFFF00000000) != 0 && v31 != v29)
        {
          if (v31)
          {
            (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
          }
        }

        v2 = a2;
      }
    }
  }
}

void physx::Scb::Scene::processRemoves<physx::Scb::Body,true,true>(int32x2_t *result, uint64_t a2)
{
  v31[1] = *MEMORY[0x1E69E9840];
  if (*(a2 + 52))
  {
    v2 = a2;
    v3 = 0;
    while (1)
    {
      v4 = *(*(v2 + 8) + 8 * v3);
      v5 = *(v4 + 8);
      if (v5 >> 30 == 3)
      {
        break;
      }

LABEL_31:
      if (++v3 >= *(v2 + 52))
      {
        return;
      }
    }

    *(v4 + 284) &= 0xF9FFFFFF;
    if ((*(*(&physx::Scb::Actor::sLazyInitOffsets + ((v5 >> 24) & 0xF) + 3) + v4 + 12) & 8) == 0)
    {
      v6 = (v5 >> 4) & 1;
      v31[0] = 0x4000000000;
      v29 = 1;
      v30 = v28;
      v7 = result[549];
      v8 = *&v7 == 0;
      if (v7)
      {
        v9 = (*&v7 + 536);
      }

      else
      {
        v9 = v28;
      }

      if (v7)
      {
        v10 = (*&v7 + 1056);
      }

      else
      {
        v10 = &v30;
      }

      v11 = (*&v7 + 1064);
      if (v8)
      {
        v12 = v31;
      }

      else
      {
        v12 = v11;
      }

      physx::Sc::Scene::removeBody(&result[2], (v4 + 32), v9, v6);
      v13 = *v12;
      if (v13)
      {
        v14 = *v10;
        v15 = *v4;
        do
        {
          v16 = *v14;
          v17 = *(*v14 - 24);
          if ((v17 & 0x10000000) != 0)
          {
            physx::Scb::Shape::syncState((v16 - 32));
            physx::shdfnd::internal::HashSetBase<physx::Sc::BodySim const*,physx::shdfnd::Hash<physx::Sc::BodySim const*>,physx::shdfnd::NonTrackingAllocator,true>::erase(v15 + 967, v16 - 32);
            v17 = *(v16 - 24) & 0xEFFFFFFF;
            *(v16 - 24) = v17;
          }

          if ((v17 & 0xF000000) == 0x1000000)
          {
            *(v16 - 24) = v17 & 0x31FFFFFF;
            *(v16 - 32) = 0;
          }

          if (atomic_fetch_add((v16 - 48), 0xFFFFFFFF) == 1)
          {
            (*(*(v16 - 56) + 16))(v16 - 56);
          }

          ++v14;
          --v13;
        }

        while (v13);
      }

      if ((v31[0] & 0x8000000000000000) == 0 && (v31[0] & 0x7FFFFFFF00000000) != 0 && v30 != v28 && v30)
      {
        (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
      }

      v2 = a2;
LABEL_29:
      if ((*(v4 + 11) & 0x10) == 0)
      {
        physx::Scb::Body::syncState(v4);
      }

      goto LABEL_31;
    }

    v31[0] = 0x4000000000;
    v29 = 1;
    v30 = v28;
    v18 = v4 + *(&physx::Sc::gOffsetTable + *(v4 + 45) + 10);
    v19 = (v18 + 72);
    v20 = *(v18 + 80);
    if (v20 == 1)
    {
      v20 = 1;
    }

    else
    {
      if (!*(v18 + 80))
      {
        v24 = v28;
        v25 = 64;
LABEL_44:
        if ((v25 & 0x7FFFFFFF) != 0 && v24 != v28 && v24)
        {
          (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
        }

        goto LABEL_29;
      }

      v19 = *v19;
    }

    v21 = *v4;
    do
    {
      v22 = *v19;
      v23 = *(*v19 + 56);
      if ((v23 & 0x10000000) != 0)
      {
        physx::Scb::Shape::syncState(v22 + 6);
        physx::shdfnd::internal::HashSetBase<physx::Sc::BodySim const*,physx::shdfnd::Hash<physx::Sc::BodySim const*>,physx::shdfnd::NonTrackingAllocator,true>::erase(v21 + 967, (v22 + 6));
        v23 = v22[7] & 0xEFFFFFFF;
        *(v22 + 14) = v23;
      }

      if ((v23 & 0xF000000) == 0x1000000)
      {
        *(v22 + 14) = v23 & 0x31FFFFFF;
        v22[6] = 0;
      }

      ++v19;
      --v20;
    }

    while (v20);
    v24 = v30;
    v25 = HIDWORD(v31[0]);
    if ((v31[0] & 0x8000000000000000) != 0)
    {
      goto LABEL_29;
    }

    goto LABEL_44;
  }
}

int32x2_t *physx::Scb::Scene::processRemoves<physx::Scb::Articulation,true,false>(int32x2_t *result, uint64_t a2)
{
  if (*(a2 + 52))
  {
    v3 = result;
    v4 = 0;
    do
    {
      v5 = *(*(a2 + 8) + 8 * v4);
      v6 = *(v5 + 8);
      if (v6 >> 30 == 3)
      {
        *(v5 + 8) = v6 & 0xFFFFFCFF;
        result = physx::Sc::Scene::removeArticulation(v3 + 2, (v5 + 24));
        if ((*(v5 + 11) & 0x10) == 0)
        {
          result = physx::Scb::Articulation::syncState(v5);
        }
      }

      ++v4;
    }

    while (v4 < *(a2 + 52));
  }

  return result;
}

int32x2_t *physx::Scb::Scene::scheduleForUpdate(int32x2_t *result, uint64_t a2)
{
  v2 = (*(a2 + 11) & 0xF) - 1;
  if (v2 <= 8)
  {
    return physx::Scb::ObjectTracker::scheduleForUpdate((result + qword_1E31186D0[v2]), a2);
  }

  return result;
}

uint64_t physx::Scb::Scene::getStream(uint64_t a1, int a2)
{
  result = 0;
  if (a2 > 5)
  {
    if (a2 > 7)
    {
      if (a2 != 8)
      {
        if (a2 == 9)
        {
          result = physx::Cm::FlushPool::allocateNotThreadSafe((a1 + 7696), 16, 0x10u);
          *&v6 = 0xFFFFFFFFLL;
          *(&v6 + 1) = 0xFFFFFFFFLL;
          *result = v6;
        }

        return result;
      }

      v4 = (a1 + 7696);
      v5 = 376;
    }

    else
    {
      if (a2 == 6)
      {
        result = physx::Cm::FlushPool::allocateNotThreadSafe((a1 + 7696), 32, 0x10u);
        *(result + 24) = 0;
        return result;
      }

      v4 = (a1 + 7696);
      v5 = 28;
    }

    return physx::Cm::FlushPool::allocateNotThreadSafe(v4, v5, 0x10u);
  }

  if (a2 > 3)
  {
    if (a2 != 4)
    {
      result = physx::Cm::FlushPool::allocateNotThreadSafe((a1 + 7696), 208, 0x10u);
      *result = 0;
      *(result + 40) = 1;
      *(result + 48) = result + 8;
      *(result + 56) = 0x400000000;
      *(result + 128) = 1;
      *(result + 136) = result + 64;
      *(result + 144) = 0x400000000;
      *(result + 152) = 0;
      *(result + 160) = 0;
      return result;
    }

    goto LABEL_14;
  }

  if ((a2 - 1) < 2)
  {
    result = physx::Cm::FlushPool::allocateNotThreadSafe((a1 + 7696), 160, 0x10u);
    *(result + 36) = 0;
    *(result + 28) = 0;
    *(result + 52) = 0;
    *(result + 64) = -1;
    *(result + 144) = 0;
    *(result + 148) = 0;
    return result;
  }

  if (a2 == 3)
  {
LABEL_14:
    result = physx::Cm::FlushPool::allocateNotThreadSafe((a1 + 7696), 352, 0x10u);
    *result = 0;
    *(result + 40) = 1;
    *(result + 48) = result + 8;
    *(result + 56) = 0x400000000;
    *(result + 128) = 1;
    *(result + 136) = result + 64;
    *(result + 144) = 0x400000000;
    *(result + 152) = 0;
    *(result + 160) = 0;
    *(result + 264) = 0;
    *(result + 348) = 0;
    *(result + 300) = 0u;
    *(result + 316) = 0u;
    *(result + 332) = 0u;
  }

  return result;
}

uint64_t physx::Scb::Scene::addBroadPhaseRegion(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 7689))
  {
    physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/buffering/ScbScene.cpp", 1184, "PxScene::addBroadPhaseRegion() not allowed while simulation is running. Call will be ignored.", a6, a7, a8);
    return 0xFFFFFFFFLL;
  }

  else
  {
    v10 = *(**(*(a1 + 1864) + 392) + 40);

    return v10();
  }
}

uint64_t physx::Scb::Scene::removeBroadPhaseRegion(physx::Scb::Scene *this, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(this + 7689))
  {
    physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/buffering/ScbScene.cpp", 1193, "PxScene::removeBroadPhaseRegion() not allowed while simulation is running. Call will be ignored.", a6, a7, a8);
    return 0;
  }

  else
  {
    v10 = *(**(*(this + 233) + 392) + 48);

    return v10();
  }
}

uint64_t physx::Scb::Shape::setMaterialsHelper(physx::Scb::Shape *this, physx::PxMaterial *const *a2, unsigned int a3)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a3 != 1)
  {
    v7 = a3;
    if (a3 < 0x201)
    {
      MEMORY[0x1EEE9AC00](this);
      v11 = &v17[-v13];
      bzero(&v17[-v13], v14);
      if (!v7)
      {
        v5 = this + 32;
        v6 = v11;
        a3 = 0;
        goto LABEL_3;
      }
    }

    else
    {
      v11 = physx::shdfnd::TempAllocator::allocate(&v18, 2 * a3, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/buffering/ScbShape.cpp", 48);
      if (!v11)
      {
        physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 16, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physx/src/buffering/ScbShape.cpp", 57, "PxShape::setMaterials() failed. Out of memory. Call will be ignored.", v8, v9, v10);
        return 0;
      }
    }

    v15 = 0;
    do
    {
      v11[v15] = *(a2[v15] + 36);
      ++v15;
    }

    while (v7 != v15);
    physx::Sc::ShapeCore::setMaterialIndices(this + 32, v11, v7);
    if (v7 >= 0x201)
    {
      physx::shdfnd::TempAllocator::deallocate(__src, v11);
    }

    goto LABEL_12;
  }

  __src[0] = *(*a2 + 36);
  v5 = this + 32;
  v6 = __src;
LABEL_3:
  physx::Sc::ShapeCore::setMaterialIndices(v5, v6, a3);
LABEL_12:
  if (*this)
  {
    v16 = *(*(*this + 1856) + 1776);
    (*(*v16 + 128))(v16, this + 64);
  }

  return 1;
}

uint64_t physx::PxsMaterialManager::resize(uint64_t this, unsigned int a2)
{
  v2 = *(this + 8);
  if (v2 < a2)
  {
    v3 = this;
    *(this + 8) = (a2 + 31) & 0xFFFFFFE0;
    this = physx::shdfnd::AlignedAllocator<16u,physx::shdfnd::NonTrackingAllocator>::allocate(&v20, 32 * ((a2 + 31) & 0xFFFFFFE0), "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowlevel/api/include/PxsMaterialManager.h", 100);
    v4 = this;
    if (v2)
    {
      v5 = this + 16;
      v6 = 16;
      v7 = v2;
      do
      {
        v8 = *v3 + v6;
        v9 = *(v8 - 16);
        *(v5 - 8) = *(v8 - 8);
        *(v5 - 16) = v9;
        *(v5 - 4) = *(v8 - 4);
        *(v5 - 2) = *(v8 - 2);
        v10 = *v8;
        *(v5 + 8) = *(v8 + 8);
        *v5 = v10;
        v5 += 32;
        v6 += 32;
        --v7;
      }

      while (v7);
    }

    v11 = *(v3 + 8);
    if (v2 < v11)
    {
      v12 = 0;
      v13 = v11 - v2;
      v14 = vdupq_n_s64(v13 - 1);
      v15 = (v13 + 7) & 0xFFFFFFFFFFFFFFF8;
      v16 = (this + 32 * v2 + 152);
      do
      {
        v17 = vdupq_n_s64(v12);
        v18 = vmovn_s64(vcgeq_u64(v14, vorrq_s8(v17, xmmword_1E3049620)));
        if (vuzp1_s8(vuzp1_s16(v18, *v14.i8), *v14.i8).u8[0])
        {
          *(v16 - 64) = -1;
        }

        if (vuzp1_s8(vuzp1_s16(v18, *&v14), *&v14).i8[1])
        {
          *(v16 - 48) = -1;
        }

        if (vuzp1_s8(vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v14, vorrq_s8(v17, xmmword_1E3049640)))), *&v14).i8[2])
        {
          *(v16 - 32) = -1;
          *(v16 - 16) = -1;
        }

        v19 = vmovn_s64(vcgeq_u64(v14, vorrq_s8(v17, xmmword_1E3049660)));
        if (vuzp1_s8(*&v14, vuzp1_s16(v19, *&v14)).i32[1])
        {
          *v16 = -1;
        }

        if (vuzp1_s8(*&v14, vuzp1_s16(v19, *&v14)).i8[5])
        {
          v16[16] = -1;
        }

        if (vuzp1_s8(*&v14, vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v14, vorrq_s8(v17, xmmword_1E305F210))))).i8[6])
        {
          v16[32] = -1;
          v16[48] = -1;
        }

        v12 += 8;
        v16 += 128;
      }

      while (v15 != v12);
    }

    if (*v3)
    {
      this = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, *v3 - *(*v3 - 8));
    }

    *v3 = v4;
  }

  return this;
}

void physx::Scb::RigidObject::syncState(unsigned __int8 *this)
{
  v2 = *(this + 2);
  if ((v2 & 0x20) != 0)
  {
    v3 = *this;
    v4 = (v2 >> 24) & 0xF;
    v5 = *(&physx::Scb::Actor::sLazyInitOffsets + v4 + 3);
    Stream = *(this + 2);
    if (!Stream)
    {
      Stream = physx::Scb::Scene::getStream(*this, v4);
      *(this + 2) = Stream;
    }

    v7 = *(Stream + 160);
    v8 = (Stream + 152);
    if (v7 != 1)
    {
      if (!*(Stream + 160))
      {
        goto LABEL_14;
      }

      v8 = (*(v3 + 7808) + 8 * *v8);
    }

    v9 = 0;
    do
    {
      v10 = *&v8[2 * v9];
      if ((*(v10 + 8) & 0x40) != 0)
      {
        v11 = (*(v10 + 16) + 52);
      }

      else
      {
        v11 = (v10 + 96);
      }

      if ((*v11 & 5) != 0)
      {
        v31 = 128;
        v30 = 0;
        physx::Sc::RigidCore::onShapeChange(&this[v5], v10 + 32, &v31, &v30, 0);
        v7 = *(Stream + 160);
      }

      ++v9;
    }

    while (v9 < v7);
  }

LABEL_14:
  if ((v2 & 8) != 0)
  {
    v12 = *(this + 2);
    if (!v12)
    {
      v12 = physx::Scb::Scene::getStream(*this, this[11] & 0xF);
      *(this + 2) = v12;
    }

    v13 = *(v12 + 56);
    if (v13)
    {
      v14 = 0;
      v15 = *(this + 2) >> 30;
      do
      {
        v16 = *(*(v12 + 48) + 8 * v14);
        v17 = *(v16 + 8);
        v18 = v17 & 0xF000000;
        if (v15 <= 2)
        {
          if (v18 == 0x1000000)
          {
            v20 = *this;
            *(v16 + 8) = v17 & 0x31FFFFFF | 0x80000000;
            *v16 = v20;
          }

          v21 = *(this + 2);
          if (v21)
          {
            v22 = *(this + 2);
          }

          else
          {
            v22 = &this[*(&physx::Scb::Actor::sLazyInitOffsets + ((v21 >> 24) & 0xF) + 3) + 12];
          }

          if ((*v22 & 8) == 0)
          {
            v23 = *&this[*(&physx::Scb::Actor::sLazyInitOffsets + (BYTE3(v21) & 0xF) + 3)];
            if (v23)
            {
              physx::Sc::Scene::addShape(v23[9], v23, (v16 + 32), 0);
            }

            atomic_fetch_add((v16 - 16), 1u);
            v13 = *(v12 + 56);
          }
        }

        else if (v18 == 0x1000000)
        {
          v19 = *this;
          *(v16 + 8) = v17 & 0x31FFFFFF;
          *v16 = v19;
        }

        ++v14;
      }

      while (v14 < v13);
    }

    physx::shdfnd::Array<physx::Scb::Shape *,physx::shdfnd::InlineAllocator<32u,physx::shdfnd::ReflectionAllocator<physx::Scb::Shape *>>>::resize(v12 + 8);
    physx::shdfnd::Array<physx::Scb::Shape *,physx::shdfnd::InlineAllocator<32u,physx::shdfnd::ReflectionAllocator<physx::Scb::Shape *>>>::recreate(v12 + 8, *(v12 + 56));
  }

  v24 = *(this + 2);
  if ((v24 & 3) != 0)
  {
    v25 = (v24 >> 24) & 0xF;
    v26 = &this[*(&physx::Scb::Actor::sLazyInitOffsets + v25 + 3)];
    v27 = *(this + 2);
    if (v27)
    {
      if ((v24 & 1) == 0)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v27 = physx::Scb::Scene::getStream(*this, v25);
      *(this + 2) = v27;
      LODWORD(v24) = *(this + 2);
      if ((v24 & 1) == 0)
      {
LABEL_36:
        if ((v24 & 2) == 0)
        {
          return;
        }

        goto LABEL_43;
      }
    }

    v28 = *v27;
    if (v28 != v26[12])
    {
      v26[12] = v28;
      if (*v26)
      {
        (*(**v26 + 16))(*v26);
      }
    }

    if ((*(this + 2) & 2) != 0)
    {
LABEL_43:
      v26[14] = v27[1];
      v29 = *v26;
      if (*v26)
      {

        physx::Sc::ActorSim::setActorsInteractionsDirty(v29, 8, 0, 1);
      }
    }
  }
}

uint64_t physx::shdfnd::Array<physx::Scb::Shape *,physx::shdfnd::InlineAllocator<32u,physx::shdfnd::ReflectionAllocator<physx::Scb::Shape *>>>::recreate(uint64_t result, int a2)
{
  v3 = result;
  if (a2)
  {
    v4 = (8 * a2);
    if (v4 > 0x20 || (*(result + 32) & 1) != 0)
    {
      result = physx::shdfnd::ReflectionAllocator<physx::Scb::Shape *>::allocate(result, v4, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
      v5 = result;
    }

    else
    {
      *(result + 32) = 1;
      v5 = result;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = *(v3 + 48);
  v7 = *(v3 + 40);
  if (v6)
  {
    v8 = v5 + 8 * v6;
    v9 = v5;
    do
    {
      v10 = *v7++;
      *v9++ = v10;
    }

    while (v9 < v8);
    v7 = *(v3 + 40);
  }

  if ((*(v3 + 52) & 0x80000000) == 0)
  {
    if (v7 == v3)
    {
      *(v3 + 32) = 0;
    }

    else if (v7)
    {
      result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    }
  }

  *(v3 + 40) = v5;
  *(v3 + 52) = a2;
  return result;
}

int32x2_t *physx::Scb::Scene::add<physx::Scb::RigidStatic>(int32x2_t *result, uint64_t *a2, int32x2_t *a3, uint64_t a4)
{
  v28 = *MEMORY[0x1E69E9840];
  *a2 = result;
  if (result[961].i8[1])
  {

    return physx::Scb::ObjectTracker::scheduleForInsert(a3, a2);
  }

  v5 = *(a2 + 2);
  *(a2 + 2) = v5 & 0xFFFFFFF | 0x80000000;
  if (v5)
  {
    v6 = a2[2];
  }

  else
  {
    v6 = a2 + *(&physx::Scb::Actor::sLazyInitOffsets + ((v5 >> 24) & 0xF) + 3) + 12;
  }

  if ((*v6 & 8) == 0)
  {
    v27 = 0x4000000000;
    v25 = 1;
    v26 = v24;
    v7 = a2 + *(&physx::Scb::Actor::sLazyInitOffsets + (BYTE3(v5) & 0xF) + 3);
    v8 = v7 + *(&physx::Sc::gOffsetTable + *(v7 + 13) + 10);
    v9 = (v8 + 40);
    v10 = *(v8 + 48);
    if (v10 == 1)
    {
      result = physx::Sc::Scene::addStatic(&result[2], a2 + 4, (v8 + 40), 1u, 80, a4);
    }

    else
    {
      v9 = *v9;
      result = physx::Sc::Scene::addStatic(&result[2], a2 + 4, v9, *(v8 + 48), 80, a4);
      if (!v10)
      {
LABEL_23:
        if ((v27 & 0x8000000000000000) == 0)
        {
          v22 = (v27 & 0x7FFFFFFF00000000) == 0 || v26 == v24;
          if (!v22 && v26 != 0)
          {
            return (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
          }
        }

        return result;
      }
    }

    v18 = *a2;
    v19 = v10;
    do
    {
      v20 = *v9;
      v21 = *(*v9 + 56);
      if ((v21 & 0xF000000) == 0x1000000)
      {
        *(v20 + 14) = v21 & 0x31FFFFFF | 0x80000000;
        v20[6] = v18;
      }

      atomic_fetch_add(v20 + 8, 1u);
      ++v9;
      --v19;
    }

    while (v19);
    goto LABEL_23;
  }

  v27 = 0x4000000000;
  v11 = 1;
  v25 = 1;
  v26 = v24;
  v12 = a2 + *(&physx::Scb::Actor::sLazyInitOffsets + ((v5 >> 24) & 0xF) + 3);
  v13 = v12 + *(&physx::Sc::gOffsetTable + *(v12 + 13) + 10);
  v14 = (v13 + 40);
  v15 = *(v13 + 48);
  if (v15 != 1)
  {
    if (!v15)
    {
      return result;
    }

    v14 = *v14;
    v11 = v15;
  }

  do
  {
    v16 = *v14;
    v17 = *(*v14 + 56);
    if ((v17 & 0xF000000) == 0x1000000)
    {
      *(v16 + 14) = v17 & 0x31FFFFFF | 0x80000000;
      v16[6] = result;
    }

    ++v14;
    --v11;
  }

  while (v11);
  return result;
}

int32x2_t *physx::Scb::Scene::addRigidNoSim<false,physx::Scb::RigidStatic>(int32x2_t *result, uint64_t *a2, int32x2_t *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  *a2 = result;
  if (result[961].i8[1])
  {
    result = physx::Scb::ObjectTracker::scheduleForInsert(a3, a2);
    v25 = 0x4000000000;
    v4 = 1;
    v23 = 1;
    v24 = v22;
    v5 = *(a2 + 2);
    v6 = a2 + *(&physx::Scb::Actor::sLazyInitOffsets + ((v5 >> 24) & 0xF) + 3);
    v7 = v6 + *(&physx::Sc::gOffsetTable + *(v6 + 13) + 10);
    v8 = (v7 + 40);
    v9 = *(v7 + 48);
    if (v9 != 1)
    {
      if (!v9)
      {
        return result;
      }

      v8 = *v8;
      v4 = v9;
    }

    v10 = *a2;
    v11 = v5 & 0xC0000000;
    do
    {
      v12 = *v8;
      v13 = *(*v8 + 56);
      if ((v13 & 0xF000000) == 0x1000000)
      {
        *(v12 + 14) = v13 & 0x31FFFFFF | v11;
        v12[6] = v10;
      }

      ++v8;
      --v4;
    }

    while (v4);
  }

  else
  {
    v14 = *(a2 + 2);
    *(a2 + 2) = v14 & 0xFFFFFFF | 0x80000000;
    v25 = 0x4000000000;
    v15 = 1;
    v23 = 1;
    v24 = v22;
    v16 = a2 + *(&physx::Scb::Actor::sLazyInitOffsets + ((v14 >> 24) & 0xF) + 3);
    v17 = v16 + *(&physx::Sc::gOffsetTable + *(v16 + 13) + 10);
    v18 = (v17 + 40);
    v19 = *(v17 + 48);
    if (v19 != 1)
    {
      if (!v19)
      {
        return result;
      }

      v18 = *v18;
      v15 = v19;
    }

    do
    {
      v20 = *v18;
      v21 = *(*v18 + 56);
      if ((v21 & 0xF000000) == 0x1000000)
      {
        *(v20 + 14) = v21 & 0x31FFFFFF | 0x80000000;
        v20[6] = result;
      }

      ++v18;
      --v15;
    }

    while (v15);
  }

  return result;
}

uint64_t physx::shdfnd::Array<physx::Scb::MaterialEvent,physx::shdfnd::ReflectionAllocator<physx::Scb::MaterialEvent>>::growAndPushBack(uint64_t a1, void *a2)
{
  v4 = *(a1 + 12);
  if ((v4 & 0x7FFFFFFF) != 0)
  {
    v5 = 2 * v4;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v7 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Scb::MaterialEvent>::getName() [T = physx::Scb::MaterialEvent]";
    }

    else
    {
      v7 = "<allocation names disabled>";
    }

    v8 = (*(*(v6 + 24) + 16))(v6 + 24, 8 * v5, v7, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
  }

  else
  {
    v8 = 0;
  }

  v9 = *(a1 + 8);
  if (v9)
  {
    v10 = v8 + 8 * v9;
    v11 = *a1;
    v12 = v8;
    do
    {
      v13 = *v11++;
      *v12++ = v13;
    }

    while (v12 < v10);
    v14 = *(a1 + 8);
  }

  else
  {
    v14 = 0;
  }

  *(v8 + 8 * v14) = *a2;
  if ((*(a1 + 12) & 0x80000000) == 0 && *a1)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *a1 = v8;
  v15 = *(a1 + 8);
  *(a1 + 8) = v15 + 1;
  *(a1 + 12) = v5;
  return v8 + 8 * v15;
}

void *physx::shdfnd::Array<physx::Scb::MaterialEvent,physx::shdfnd::ReflectionAllocator<physx::Scb::MaterialEvent>>::recreate(uint64_t a1, unsigned int a2)
{
  v4 = 8 * a2;
  v5 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v6 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Scb::MaterialEvent>::getName() [T = physx::Scb::MaterialEvent]";
  }

  else
  {
    v6 = "<allocation names disabled>";
  }

  result = (*(*(v5 + 24) + 16))(v5 + 24, v4, v6, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
  v8 = result;
  v9 = *(a1 + 8);
  v10 = *a1;
  if (v9)
  {
    v11 = &result[v9];
    v12 = result;
    do
    {
      v13 = *v10++;
      *v12++ = v13;
    }

    while (v12 < v11);
    v10 = *a1;
  }

  if ((*(a1 + 12) & 0x80000000) == 0 && v10)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *a1 = v8;
  *(a1 + 12) = a2;
  return result;
}

physx::Sc::ConstraintSim *physx::Scb::Constraint::syncState(physx::Scb::Constraint *this)
{
  result = physx::Sc::ConstraintCore::getForce(this + 24, this + 14, (this + 124));
  *(this + 68) = *(this + 12) & 1;
  v3 = *(this + 2);
  if ((v3 & 0xFFFFFF) == 0)
  {
    goto LABEL_16;
  }

  v4 = *(this + 2);
  if (!v4)
  {
    result = physx::Scb::Scene::getStream(*this, HIBYTE(v3) & 0xF);
    v4 = result;
    *(this + 2) = result;
    if ((v3 & 1) == 0)
    {
      goto LABEL_8;
    }

LABEL_6:
    result = *(this + 13);
    if (result)
    {
      result = physx::Sc::ConstraintSim::postBodiesChange(result, *v4, *(v4 + 1));
    }

    goto LABEL_8;
  }

  if (v3)
  {
    goto LABEL_6;
  }

LABEL_8:
  if ((v3 & 2) != 0)
  {
    v5 = *(v4 + 4);
    v6 = *(v4 + 5);
    *(this + 23) = v5;
    *(this + 24) = v6;
    result = *(this + 13);
    if (result)
    {
      result = physx::Sc::ConstraintSim::setBreakForceLL(result, v5, v6);
    }
  }

  if ((v3 & 8) != 0)
  {
    v7 = *(v4 + 7);
    *(this + 25) = v7;
    v8 = *(this + 13);
    if (v8)
    {
      *(v8 + 76) = v7;
    }
  }

  if ((v3 & 4) != 0)
  {
    v9 = *(this + 68) | *(v4 + 12);
    result = physx::Sc::ConstraintCore::setFlags(this + 3, &v9);
  }

LABEL_16:
  *(this + 2) = 0;
  *(this + 2) = *(this + 11) << 24;
  return result;
}

uint64_t physx::Scb::Articulation::syncState(uint64_t this)
{
  v1 = this;
  v2 = *(this + 8);
  if ((v2 & 0x80) != 0)
  {
    if ((v2 & 0x300) == 0)
    {
      v3 = *(this + 72);
      *(this + 60) = v3;
      goto LABEL_9;
    }

LABEL_5:
    if ((v2 & 0x100) != 0)
    {
      *(this + 60) = 0;
    }

    else
    {
      *(this + 60) = *(this + 72);
    }

    goto LABEL_19;
  }

  v3 = *(this + 60);
  *(this + 72) = v3;
  if ((v2 & 0x300) != 0)
  {
    goto LABEL_5;
  }

LABEL_9:
  if (v2 >> 30 != 3)
  {
    v4 = *(this + 24);
    if (v4)
    {
      if (*(v4 + 48))
      {
        v5 = *(**(v4 + 40) + 184) > 0xFFFFFFFD;
      }

      else
      {
        v5 = 1;
      }

      v6 = v5;
    }

    else
    {
      v6 = v3 == 0.0;
    }

    *(this + 76) = v6;
  }

LABEL_19:
  v7 = v2;
  if ((v2 & 0xFFFC7F) == 0)
  {
    goto LABEL_29;
  }

  this = *(this + 16);
  v7 = v2;
  if (this)
  {
    if ((v2 & 2) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    this = physx::Scb::Scene::getStream(*v1, HIBYTE(v2) & 0xF);
    *(v1 + 16) = this;
    v7 = *(v1 + 8);
    if ((v7 & 2) == 0)
    {
LABEL_22:
      if ((v7 & 1) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_34;
    }
  }

  *(v1 + 36) = *(this + 4);
  if ((v7 & 1) == 0)
  {
LABEL_23:
    if ((v7 & 4) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_35;
  }

LABEL_34:
  *(v1 + 32) = *this;
  if ((v7 & 4) == 0)
  {
LABEL_24:
    if ((v7 & 8) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_36;
  }

LABEL_35:
  *(v1 + 40) = *(this + 8);
  if ((v7 & 8) == 0)
  {
LABEL_25:
    if ((v7 & 0x10) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_37;
  }

LABEL_36:
  *(v1 + 48) = *(this + 12);
  if ((v7 & 0x10) == 0)
  {
LABEL_26:
    if ((v7 & 0x20) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_38;
  }

LABEL_37:
  *(v1 + 52) = *(this + 16);
  if ((v7 & 0x20) == 0)
  {
LABEL_27:
    if ((v7 & 0x40) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

LABEL_38:
  *(v1 + 44) = *(this + 20);
  if ((v7 & 0x40) != 0)
  {
LABEL_28:
    *(v1 + 56) = *(this + 24);
  }

LABEL_29:
  if ((v2 & 0x800) != 0)
  {
    this = physx::Sc::ArticulationCore::setGlobalPose((v1 + 24));
    v7 = *(v1 + 8);
  }

  *(v1 + 16) = 0;
  *(v1 + 8) = v7 & 0xFF000000;
  return this;
}

uint64_t physx::Scb::RigidObject::processShapeRemoves(uint64_t this)
{
  v2 = *(this + 8);
  if ((v2 & 8) != 0)
  {
    v3 = this;
    Stream = *(this + 16);
    if (!Stream)
    {
      Stream = physx::Scb::Scene::getStream(*this, HIBYTE(v2) & 0xF);
      *(v3 + 16) = Stream;
      v2 = *(v3 + 8);
    }

    if (v2 >> 30 == 2)
    {
      v5 = *(Stream + 144);
      if (v5)
      {
        v6 = 0;
        for (i = 0; i < v5; ++i)
        {
          v8 = *(Stream + 136);
          v9 = *(v8 + v6);
          v10 = *(v9 + 8);
          if ((v10 & 0xF000000) == 0x1000000)
          {
            *(v9 + 8) = v10 & 0x31FFFFFF;
            *v9 = 0;
          }

          v11 = *(&physx::Scb::Actor::sLazyInitOffsets + (*(v3 + 11) & 0xF) + 3) + v3;
          if ((*(v11 + 12) & 8) == 0)
          {
            v12 = *v3;
            physx::Sc::RigidCore::removeShapeFromScene(v11, (v9 + 32), *(v8 + v6 + 8) != 0);
            if ((*(v9 + 11) & 0x10) != 0)
            {
              physx::Scb::Shape::syncState(v9);
              physx::shdfnd::internal::HashSetBase<physx::Sc::BodySim const*,physx::shdfnd::Hash<physx::Sc::BodySim const*>,physx::shdfnd::NonTrackingAllocator,true>::erase(v12 + 967, v9);
              *(v9 + 8) &= ~0x10000000u;
            }

            if (atomic_fetch_add((v9 - 16), 0xFFFFFFFF) == 1)
            {
              (*(*(v9 - 24) + 16))(v9 - 24);
            }

            v5 = *(Stream + 144);
          }

          v6 += 16;
        }
      }
    }

    physx::shdfnd::Array<physx::Scb::RemovedShape,physx::shdfnd::InlineAllocator<64u,physx::shdfnd::ReflectionAllocator<physx::Scb::RemovedShape>>>::resize(Stream + 64);
    v13 = *(Stream + 144);

    return physx::shdfnd::Array<physx::Scb::RemovedShape,physx::shdfnd::InlineAllocator<64u,physx::shdfnd::ReflectionAllocator<physx::Scb::RemovedShape>>>::recreate(Stream + 64, v13);
  }

  return this;
}

uint64_t physx::shdfnd::Array<physx::Scb::RemovedShape,physx::shdfnd::InlineAllocator<64u,physx::shdfnd::ReflectionAllocator<physx::Scb::RemovedShape>>>::recreate(uint64_t result, int a2)
{
  v3 = result;
  if (a2)
  {
    v4 = (16 * a2);
    if (v4 > 0x40 || (*(result + 64) & 1) != 0)
    {
      result = physx::shdfnd::ReflectionAllocator<physx::Scb::RemovedShape>::allocate(result, v4, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
      v5 = result;
    }

    else
    {
      *(result + 64) = 1;
      v5 = result;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = *(v3 + 80);
  v7 = *(v3 + 72);
  if (v6)
  {
    v8 = v5 + 16 * v6;
    v9 = v5;
    do
    {
      v10 = *v7++;
      *v9++ = v10;
    }

    while (v9 < v8);
    v7 = *(v3 + 72);
  }

  if ((*(v3 + 84) & 0x80000000) == 0)
  {
    if (v7 == v3)
    {
      *(v3 + 64) = 0;
    }

    else if (v7)
    {
      result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    }
  }

  *(v3 + 72) = v5;
  *(v3 + 84) = a2;
  return result;
}

uint64_t physx::Cct::Controller::Controller(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = &unk_1F5D27810;
  *(a1 + 12) = 0u;
  *(a1 + 28) = 1065353216;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 63) = 0;
  *(a1 + 71) = 1;
  v5 = *(a2 + 112);
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 272) = 0;
  *(a1 + 152) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 280) = v5;
  *(a1 + 288) = 0u;
  *(a1 + 304) = v5;
  *(a1 + 312) = 0;
  *(a1 + 400) = 1065353216;
  *(a1 + 435) = 0;
  *(a1 + 404) = 0u;
  *(a1 + 420) = 0u;
  *(a1 + 443) = 1;
  *(a1 + 456) = -1;
  *(a1 + 468) = 0;
  *(a1 + 460) = 0;
  *(a1 + 472) = v5;
  *(a1 + 480) = 0;
  *(a1 + 168) = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  *(a1 + 184) = xmmword_1E30A0CA0;
  *(a1 + 200) = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
  *(a1 + 232) = 0;
  *(a1 + 216) = 0u;
  *(a1 + 320) = -1;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 340) = 0u;
  *(a1 + 356) = 0u;
  *(a1 + 324) = 0u;
  *(a1 + 448) = 1069547520;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 544) = a3;
  *(a1 + 552) = -1;
  *(a1 + 584) = 0;
  *(a1 + 576) = 0;
  *(a1 + 560) = 0u;
  v6 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v7 = "static const char *physx::shdfnd::ReflectionAllocator<physx::shdfnd::MutexImpl>::getName() [T = physx::shdfnd::MutexImpl]";
  }

  else
  {
    v7 = "<allocation names disabled>";
  }

  v8 = (*(*(v6 + 24) + 16))(v6 + 24, 72, v7, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsMutex.h", 138);
  *(a1 + 592) = v8;
  physx::shdfnd::MutexImpl::MutexImpl(v8);
  *(a1 + 600) = 0;
  v9 = *(a2 + 96);
  *(a1 + 8) = 0x7FFFFFFF;
  *(a1 + 12) = v9;
  v10 = *(a2 + 44);
  *(a1 + 44) = v10;
  *(a1 + 48) = vextq_s8(*(a2 + 48), *(a2 + 48), 8uLL);
  *(a1 + 69) = v10 != 0.0;
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = *(a2 + 120);
  *(a1 + 488) = 0;
  v11 = *(a2 + 24);
  *(a1 + 496) = *(a2 + 8);
  *(a1 + 512) = v11;
  *(a1 + 576) = *(a2 + 64);
  *(a1 + 448) = *(a2 + 72);
  *(a1 + 586) = *(a2 + 112);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 528) = 0;
  *(a1 + 536) = 0;
  *(a1 + 520) = 0;
  physx::Cct::Controller::setUpDirectionInternal(a1, a2 + 32);
  return a1;
}

uint64_t physx::Cct::Controller::createProxyActor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 512);
  v15 = vcvt_f32_f64(*(a1 + 496));
  v16 = v8;
  v14 = *(a1 + 16);
  result = (*(*a2 + 176))(a2, &v14);
  *(a1 + 488) = result;
  if (result)
  {
    v18 = a4;
    v17 = 11;
    v10 = (*(*a2 + 192))(a2, a3, &v18, 1, 1, &v17);
    (*(**(a1 + 488) + 168))(*(a1 + 488), v10);
    (**v10)(v10);
    (*(**(a1 + 488) + 416))();
    v11 = *(a1 + 488);
    LODWORD(v18) = *(a1 + 576);
    updateMassAndInertia(0, v11, &v18, 1u, 0, 0, v12, v13);
    return (*(**(a1 + 544) + 88))(*(a1 + 544), *(a1 + 488), 0);
  }

  return result;
}

void physx::Cct::Controller::~Controller(physx::Cct::Controller *this)
{
  *this = &unk_1F5D27810;
  if (*(this + 68))
  {
    v2 = *(this + 61);
    if (v2)
    {
      (**v2)(v2);
    }
  }

  physx::shdfnd::MutexT<physx::shdfnd::ReflectionAllocator<physx::shdfnd::MutexImpl>>::~MutexT(this + 74);
  if (*(this + 280) == 1)
  {
    v3 = *(this + 34);
    if (v3)
    {
      physx::Cct::CharacterControllerManager::unregisterObservedObject(*(this + 36), v3);
    }
  }

  *(this + 34) = 0;
  if (*(this + 304) == 1)
  {
    v4 = *(this + 37);
    if (v4)
    {
      physx::Cct::CharacterControllerManager::unregisterObservedObject(*(this + 39), v4);
    }
  }

  *(this + 37) = 0;
  v5 = *(this + 41);
  if ((v5 & 0x80000000) == 0 && (v5 & 0x7FFFFFFF) != 0 && *(this + 19))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  v6 = *(this + 37);
  if ((v6 & 0x80000000) == 0 && (v6 & 0x7FFFFFFF) != 0 && *(this + 17))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  v7 = *(this + 33);
  if ((v7 & 0x80000000) == 0 && (v7 & 0x7FFFFFFF) != 0)
  {
    if (*(this + 15))
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    }
  }
}

void physx::Cct::BoxController::~BoxController(physx::Cct::BoxController *this)
{
  physx::Cct::Controller::~Controller((this + 8));
}

{
  physx::Cct::Controller::~Controller((this + 8));
  if (this)
  {
    v2 = *(*(physx::shdfnd::Foundation::mInstance + 24) + 24);

    v2();
  }
}

void non-virtual thunk tophysx::Cct::BoxController::~BoxController(physx::Cct::BoxController *this)
{
  physx::Cct::Controller::~Controller(this);
  v1 = *(*(physx::shdfnd::Foundation::mInstance + 24) + 24);

  v1();
}

void physx::Cct::BoxController::invalidateCache(pthread_mutex_t **this)
{
  if (this[76][3].__opaque[0] == 1 && ((physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled & 1) != 0))
  {
    pthread_mutex_lock(this[75]);
  }

  physx::Cct::SweepTest::voidTestCache((this + 14));
  if (this[76][3].__opaque[0] == 1 && ((physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled & 1) != 0))
  {
    v2 = this[75];

    pthread_mutex_unlock(v2);
  }
}

int64x2_t physx::Cct::SweepTest::voidTestCache(physx::Cct::SweepTest *this)
{
  if (*(this + 176) == 1)
  {
    v2 = *(this + 21);
    if (v2)
    {
      physx::Cct::CharacterControllerManager::unregisterObservedObject(*(this + 23), v2);
    }
  }

  *(this + 21) = 0;
  if (*(this + 200) == 1)
  {
    v3 = *(this + 24);
    if (v3)
    {
      physx::Cct::CharacterControllerManager::unregisterObservedObject(*(this + 26), v3);
    }
  }

  *(this + 24) = 0;
  *(this + 4) = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  *(this + 5) = xmmword_1E30A0CA0;
  result = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
  *(this + 6) = result;
  *(this + 54) = -1;
  return result;
}

uint64_t physx::Cct::BoxController::getWorldBox(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 624);
  v3 = *(a1 + 616);
  v4 = *(a1 + 520);
  *a2 = *(a1 + 504);
  *(a2 + 16) = v4;
  v5 = vcvtq_f64_f32(v3);
  *a2 = vsubq_f64(*a2, v5);
  v6 = v2;
  *(a2 + 16) = *(a2 + 16) - v6;
  v7 = *(a1 + 520);
  *(a2 + 24) = *(a1 + 504);
  *(a2 + 40) = v7;
  *(a2 + 24) = vaddq_f64(*(a2 + 24), v5);
  *(a2 + 40) = *(a2 + 40) + v6;
  return 1;
}

uint64_t physx::Cct::BoxController::updateKinematicProxy(float32x2_t *this)
{
  result = this[62];
  if (result)
  {
    *&v6 = 0;
    (*(*result + 192))(result, &v6, 1, 0);
    v3 = v6;
    v6 = 3uLL;
    (*(*v3 + 88))(v3, &v6);
    v4 = this[73].f32[1];
    v5 = this[78].f32[0] * v4;
    *(&v6 + 4) = vmul_n_f32(this[77], v4);
    *(&v6 + 3) = v5;
    return (*(*v3 + 72))(v3, &v6);
  }

  return result;
}

BOOL physx::Cct::BoxController::setHalfHeight(float32x2_t *this, float32_t a2)
{
  if (a2 > 0.0)
  {
    this[77].f32[0] = a2;
    physx::Cct::BoxController::updateKinematicProxy(this);
  }

  return a2 > 0.0;
}

BOOL physx::Cct::BoxController::setHalfSideExtent(float32x2_t *this, float32_t a2)
{
  if (a2 > 0.0)
  {
    this[77].f32[1] = a2;
    physx::Cct::BoxController::updateKinematicProxy(this);
  }

  return a2 > 0.0;
}

BOOL physx::Cct::BoxController::setHalfForwardExtent(float32x2_t *this, float32_t a2)
{
  if (a2 > 0.0)
  {
    this[78].f32[0] = a2;
    physx::Cct::BoxController::updateKinematicProxy(this);
  }

  return a2 > 0.0;
}

uint64_t physx::Cct::BoxController::setFootPosition(float32x2_t *a1, float64x2_t *a2)
{
  v5 = *a2;
  v6 = a2[1].f64[0];
  v2 = a1[77].f32[0] + a1[7].f32[0];
  v3 = v2 * a1[6].f32[0];
  v5 = vaddq_f64(v5, vcvtq_f64_f32(vmul_n_f32(a1[5], v2)));
  v6 = v6 + v3;
  return (*(*a1 + 24))(a1, &v5);
}

__n128 physx::Cct::BoxController::getOBB(uint64_t a1, uint64_t a2)
{
  (*(*a1 + 272))(a1, &v14);
  v4 = (v15 + v17) * 0.5;
  v5 = v14;
  v6 = v16;
  __asm { FMOV            V5.2D, #0.5 }

  v12 = v17 - v15;
  *a2 = vmulq_f64(vaddq_f64(v14, v16), _Q5);
  *(a2 + 16) = v4;
  *(a2 + 24) = vmul_f32(vcvt_f32_f64(vsubq_f64(v6, v5)), 0x3F0000003F000000);
  *(a2 + 32) = v12 * 0.5;
  result = *(a1 + 24);
  *(a2 + 36) = result;
  return result;
}

uint64_t physx::Cct::BoxController::resize(float32x2_t *this, float a2)
{
  v4 = (*(*this + 216))(this);
  (*(*this + 240))(this, a2);
  v5 = (*(*this + 32))(this);
  v6 = v5[1].f64[0];
  v9 = *v5;
  v10 = v6;
  v7 = (a2 - v4) * this[6].f32[0];
  v9 = vaddq_f64(v9, vcvtq_f64_f32(vmul_n_f32(this[5], a2 - v4)));
  v10 = v6 + v7;
  return (*(*this + 24))(this, &v9);
}

void physx::Cct::CapsuleController::~CapsuleController(physx::Cct::CapsuleController *this)
{
  physx::Cct::Controller::~Controller((this + 8));
}

{
  physx::Cct::Controller::~Controller((this + 8));
  if (this)
  {
    v2 = *(*(physx::shdfnd::Foundation::mInstance + 24) + 24);

    v2();
  }
}

void non-virtual thunk tophysx::Cct::CapsuleController::~CapsuleController(physx::Cct::CapsuleController *this)
{
  physx::Cct::Controller::~Controller(this);
  v1 = *(*(physx::shdfnd::Foundation::mInstance + 24) + 24);

  v1();
}

void physx::Cct::CapsuleController::invalidateCache(pthread_mutex_t **this)
{
  if (this[76][3].__opaque[0] == 1 && ((physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled & 1) != 0))
  {
    pthread_mutex_lock(this[75]);
  }

  physx::Cct::SweepTest::voidTestCache((this + 14));
  if (this[76][3].__opaque[0] == 1 && ((physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled & 1) != 0))
  {
    v2 = this[75];

    pthread_mutex_unlock(v2);
  }
}

uint64_t physx::Cct::CapsuleController::getWorldBox(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 616);
  v3 = v2 + (*(a1 + 620) * 0.5);
  v4 = *(a1 + 520);
  *a2 = *(a1 + 504);
  *(a2 + 16) = v4;
  v5 = v2;
  v6 = v3;
  v7 = *(a2 + 8) - v6;
  *a2 = *a2 - v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = *(a2 + 16) - v5;
  v8 = *(a1 + 520);
  *(a2 + 24) = *(a1 + 504);
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  *(a2 + 40) = v8;
  *(a2 + 24) = v9 + v5;
  *(a2 + 32) = v10 + v6;
  *(a2 + 40) = *(a2 + 40) + v5;
  return 1;
}

uint64_t physx::Cct::CapsuleController::setRadius(physx::Cct::CapsuleController *this, float a2)
{
  *(this + 154) = a2;
  v3 = *(this + 62);
  if (v3)
  {
    v7 = 0;
    (*(*v3 + 192))(v3, &v7, 1, 0);
    v5 = v7;
    v8 = 0;
    v7 = 2;
    (*(*v5 + 104))(v5, &v7);
    *(&v7 + 1) = *(this + 147) * a2;
    (*(*v5 + 72))(v5, &v7);
  }

  return 1;
}

uint64_t physx::Cct::CapsuleController::setHeight(physx::Cct::CapsuleController *this, float a2)
{
  *(this + 155) = a2;
  v3 = *(this + 62);
  if (v3)
  {
    v7 = 0;
    (*(*v3 + 192))(v3, &v7, 1, 0);
    v5 = v7;
    v8 = 0.0;
    v7 = 2;
    (*(*v5 + 104))(v5, &v7);
    v8 = (a2 * 0.5) * *(this + 147);
    (*(*v5 + 72))(v5, &v7);
  }

  return 1;
}

BOOL physx::Cct::CapsuleController::setClimbingMode(uint64_t a1, int a2)
{
  if (a2 <= 1)
  {
    *(a1 + 624) = a2;
  }

  return a2 < 2;
}

uint64_t physx::Cct::CapsuleController::setFootPosition(float32x2_t *a1, float64x2_t *a2)
{
  v5 = *a2;
  v6 = a2[1].f64[0];
  v2 = (a1[7].f32[0] + a1[77].f32[0]) + (a1[77].f32[1] * 0.5);
  v3 = v2 * a1[6].f32[0];
  v5 = vaddq_f64(v5, vcvtq_f64_f32(vmul_n_f32(a1[5], v2)));
  v6 = v6 + v3;
  return (*(*a1 + 24))(a1, &v5);
}

float physx::Cct::CapsuleController::getCapsule(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 504);
  v3 = *(a1 + 512);
  v4 = *(a1 + 520);
  v5 = *(a1 + 620);
  v6 = ((v5 * *(a1 + 40)) * 0.5);
  v7 = ((v5 * *(a1 + 44)) * 0.5);
  v8 = ((v5 * *(a1 + 48)) * 0.5);
  *a2 = v2 - v6;
  *(a2 + 8) = v3 - v7;
  *(a2 + 16) = v4 - v8;
  *(a2 + 24) = v2 + v6;
  *(a2 + 32) = v3 + v7;
  *(a2 + 40) = v4 + v8;
  result = *(a1 + 616);
  *(a2 + 48) = result;
  return result;
}

uint64_t physx::Cct::CapsuleController::resize(float32x2_t *this, float a2)
{
  v4 = (*(*this + 232))(this);
  (*(*this + 240))(this, a2);
  v5 = (*(*this + 32))(this);
  v6 = v5[1].f64[0];
  v9 = *v5;
  v10 = v6;
  v7 = ((a2 - v4) * this[6].f32[0]) * 0.5;
  v9 = vaddq_f64(v9, vcvtq_f64_f32(vmul_f32(vmul_n_f32(this[5], a2 - v4), 0x3F0000003F000000)));
  v10 = v6 + v7;
  return (*(*this + 24))(this, &v9);
}

uint64_t physx::Cct::SweepTest::updateCachedShapesRegistration(uint64_t this, unsigned int a2, int a3)
{
  if (*(this + 368) == 1)
  {
    v3 = this;
    v4 = *(this + 56);
    if (v4 && v4 != a2)
    {
      v7 = *(this + 48);
      v8 = (v7 + 4 * v4);
      v9 = (v7 + 4 * a2);
      do
      {
        if (!*(v9 + 3))
        {
          break;
        }

        v10 = *(v3 + 376);
        v11 = *(v9 + 1);
        this = a3 ? physx::Cct::CharacterControllerManager::unregisterObservedObject(v10, v11) : physx::Cct::CharacterControllerManager::registerObservedObject(v10, v11);
        v9 = (v9 + GeomSizes[*v9]);
      }

      while (v9 != v8);
    }
  }

  return this;
}

uint64_t physx::Cct::CharacterControllerManager::unregisterObservedObject(physx::Cct::CharacterControllerManager *this, const physx::PxBase *a2)
{
  v27 = a2;
  if (*(this + 200) == 1 && ((physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled & 1) != 0))
  {
    pthread_mutex_lock(*(this + 33));
  }

  v28 = 0;
  result = physx::shdfnd::internal::HashBase<physx::shdfnd::Pair<physx::PxBase const* const,physx::Cct::ObservedRefCounter>,physx::PxBase const*,physx::shdfnd::Hash<physx::PxBase const*>,physx::shdfnd::internal::HashMapBase<physx::PxBase const*,physx::Cct::ObservedRefCounter,physx::shdfnd::Hash<physx::PxBase const*>,physx::shdfnd::NonTrackingAllocator>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::create(this + 26, &v27, &v28);
  if (v28)
  {
    v5 = *(result + 8) - 1;
    *(result + 8) = v5;
    if (!v5)
    {
      if (*(this + 65))
      {
        v6 = (a2 + ~(a2 << 32)) ^ ((a2 + ~(a2 << 32)) >> 22);
        v7 = 9 * ((v6 + ~(v6 << 13)) ^ ((v6 + ~(v6 << 13)) >> 8));
        v8 = (v7 ^ (v7 >> 15)) + ~((v7 ^ (v7 >> 15)) << 27);
        v9 = *(this + 29);
        v10 = (v9 + 4 * ((*(this + 61) - 1) & ((v8 >> 31) ^ v8)));
        v11 = *v10;
        if (v11 != -1)
        {
          v13 = *(this + 27);
          v12 = *(this + 28);
          if (*(v13 + 16 * v11) == a2)
          {
LABEL_13:
            *v10 = *(v12 + 4 * v11);
            v15 = vadd_s32(*(this + 256), 0xFFFFFFFF00000001);
            *(this + 32) = v15;
            if (v11 != v15.i32[1])
            {
              v16 = v13 + 16 * v11;
              v17 = (v13 + 16 * v15.u32[1]);
              v18 = *v17;
              *v16 = *v17;
              *(v16 + 8) = *(v17 + 2);
              *(v12 + 4 * v11) = *(v12 + 4 * *(this + 65));
              v19 = (~(v18 << 32) + v18) ^ ((~(v18 << 32) + v18) >> 22);
              v20 = 9 * ((v19 + ~(v19 << 13)) ^ ((v19 + ~(v19 << 13)) >> 8));
              v21 = (v20 ^ (v20 >> 15)) + ~((v20 ^ (v20 >> 15)) << 27);
              v22 = (v9 + 4 * ((*(this + 61) - 1) & ((v21 >> 31) ^ v21)));
              v23 = *(this + 65);
              v24 = *v22;
              if (v24 != v23)
              {
                do
                {
                  v25 = v24;
                  v24 = *(v12 + 4 * v24);
                }

                while (v24 != v23);
                v22 = (v12 + 4 * v25);
              }

              *v22 = v11;
            }

            --*(this + 63);
          }

          else
          {
            while (1)
            {
              v14 = v11;
              v11 = *(v12 + 4 * v11);
              if (v11 == -1)
              {
                break;
              }

              if (*(v13 + 16 * v11) == a2)
              {
                v10 = (v12 + 4 * v14);
                goto LABEL_13;
              }
            }
          }
        }
      }
    }
  }

  else
  {
    *result = a2;
    *(result + 8) = -1;
  }

  if (*(this + 200) == 1 && ((physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled & 1) != 0))
  {
    v26 = *(this + 33);

    return pthread_mutex_unlock(v26);
  }

  return result;
}

uint64_t physx::Cct::CharacterControllerManager::registerObservedObject(pthread_mutex_t **this, const physx::PxBase *a2)
{
  v7 = a2;
  if (*(this + 200) == 1 && ((physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled & 1) != 0))
  {
    pthread_mutex_lock(this[33]);
  }

  v8 = 0;
  result = physx::shdfnd::internal::HashBase<physx::shdfnd::Pair<physx::PxBase const* const,physx::Cct::ObservedRefCounter>,physx::PxBase const*,physx::shdfnd::Hash<physx::PxBase const*>,physx::shdfnd::internal::HashMapBase<physx::PxBase const*,physx::Cct::ObservedRefCounter,physx::shdfnd::Hash<physx::PxBase const*>,physx::shdfnd::NonTrackingAllocator>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::create(this + 26, &v7, &v8);
  if (v8 == 1)
  {
    v5 = *(result + 8) + 1;
  }

  else
  {
    *result = a2;
    v5 = 1;
  }

  *(result + 8) = v5;
  if (*(this + 200) == 1 && ((physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled & 1) != 0))
  {
    v6 = this[33];

    return pthread_mutex_unlock(v6);
  }

  return result;
}

float physx::Cct::SweepTest::onObstacleAdded(uint64_t a1, int a2, uint64_t a3, double a4, float32x2_t *a5, float32x2_t *a6)
{
  v24 = a2;
  if (*(a1 + 216) != -1)
  {
    v16[0] = 0;
    v16[1] = 0;
    v17 = -1;
    v18 = 0;
    v20 = 0;
    v21 = 0;
    v19 = 0.0;
    v22 = 2139095039;
    v23 = 0;
    v8 = physx::Cct::ObstacleContext::raycastSingle(a3, v16, &v24, a5, a6, *&a4);
    if (v8)
    {
      a4 = v19;
      v10 = *&v20;
      if (((vmuls_lane_f32(a6->f32[1], *&v19, 1) + (*&v19 * a6->f32[0])) + (*&v20 * a6[1].f32[0])) < (((a6->f32[1] * *(a1 + 272)) + (*(a1 + 268) * a6->f32[0])) + (*(a1 + 276) * a6[1].f32[0])))
      {
        LODWORD(v9) = HIDWORD(v19);
        *(a1 + 216) = v24;
        *(a1 + 268) = a4;
        *(a1 + 276) = v10;
        v12 = vcvtq_f64_f32(*&a4);
        v13 = v10;
        worldToLocal(&v14, v8, &v12, v12.f64[0], v10, v9);
        *(a1 + 256) = v14;
        LODWORD(a4) = v15;
        *(a1 + 264) = v15;
      }
    }
  }

  return *&a4;
}

float32_t worldToLocal(float32x2_t *a1, uint64_t a2, float64x2_t *a3, double a4, double a5, double a6)
{
  v6 = *(a2 + 40);
  v7 = *(a2 + 32);
  LODWORD(a6) = *(a2 + 48);
  v8 = *(a2 + 52);
  v9 = a3[1].f64[0];
  v10 = (v9 - v7) + (v9 - v7);
  v11 = (v8 * v8) + -0.5;
  v12 = vsub_f32(vcvt_f32_f64(*a3), vcvt_f32_f64(*(a2 + 16)));
  v13 = vadd_f32(v12, v12);
  v14 = (vmuls_lane_f32(*&v6.i32[1], v13, 1) + (*v6.i32 * *v13.i32)) + (*&a6 * v10);
  v15.i32[0] = vdup_lane_s32(v13, 1).u32[0];
  v15.f32[1] = v10;
  result = ((v10 * v11) - (((-*&v6.i32[1] * *v13.i32) + (*v6.i32 * *&v13.i32[1])) * v8)) + (*&a6 * v14);
  *a1 = vmla_n_f32(vmla_n_f32(vmul_n_f32(vneg_f32(vmla_f32(vmul_f32(v15, vneg_f32(vzip1_s32(*&a6, v6))), vext_s8(v15, v13, 4uLL), *(a2 + 44))), v8), v13, v11), v6, v14);
  a1[1].f32[0] = result;
  return result;
}

float physx::Cct::SweepTest::onObstacleUpdated(uint64_t a1, int a2, uint64_t a3, float32x2_t *a4, float32x2_t *a5, __n128 a6)
{
  if (*(a1 + 216) == a2)
  {
    v27 = v6;
    v28 = v7;
    v19[0] = 0;
    v19[1] = 0;
    v20 = -1;
    v21 = 0;
    v23 = 0;
    v24 = 0;
    v22 = 0;
    v25 = 2139095039;
    v26 = 0;
    v18 = -1;
    v9 = physx::Cct::ObstacleContext::raycastSingle(a3, v19, a4, a5, &v18, a6);
    if (*(a1 + 216) != v18)
    {
      if (v9)
      {
        *(a1 + 216) = v18;
        v11 = *&v23;
        *(a1 + 276) = v23;
        v12 = v22;
        *(a1 + 268) = v22;
        v14 = vcvtq_f64_f32(v12);
        v15 = v11;
        worldToLocal(&v16, v9, &v14, v11, v14.f64[0], v10);
        *(a1 + 256) = v16;
        a6.n128_u32[0] = v17;
        *(a1 + 264) = v17;
      }
    }
  }

  return a6.n128_f32[0];
}

uint64_t physx::Cct::SweepTest::findTouchedObstacles(uint64_t result, unsigned int *a2, uint64_t a3, double a4, double a5, __n128 a6)
{
  v8 = result;
  v9 = *a3;
  v10 = *(a3 + 24);
  v11 = *(a3 + 16);
  v12 = *(a3 + 40);
  __asm { FMOV            V7.2D, #0.5 }

  v80 = vmulq_f64(vaddq_f64(*a3, v10), _Q7);
  v18 = (v11 + v12) * 0.5;
  v19 = *a2;
  if (v19)
  {
    v79 = _Q7;
    v20 = *(a2 + 2);
    v21 = v12;
    v22 = v11;
    v23 = vcvt_f32_f64(v10);
    v24 = vcvt_f32_f64(v9);
    v25 = vmul_f32(vadd_f32(v24, v23), 0x3F0000003F000000);
    v26 = (v22 + v21) * 0.5;
    v27 = vmul_f32(vsub_f32(v23, v24), 0x3F0000003F000000);
    v28 = (v21 - v22) * 0.5;
    v29 = (*(a2 + 1) + 48);
    do
    {
      v30 = *(v29 - 12);
      v31 = *(v29 - 4);
      v32 = *(v29 - 3);
      v33 = *(v29 - 2);
      v34 = *(v29 - 1);
      v35 = v33 + v33;
      v36 = v34 + v34;
      v37 = v33 * (v33 + v33);
      v38 = v34 * (v34 + v34);
      v39 = (v32 + v32) * v33;
      v40 = (v32 + v32) * v34;
      v41 = (v32 + v32) * *v29;
      v42 = v35 * v34;
      v43 = v35 * *v29;
      v44 = v36 * *v29;
      v45 = 1.0 - (v32 * (v32 + v32));
      *&v84 = (1.0 - v37) - v38;
      *(&v84 + 1) = v39 + v44;
      *(&v84 + 2) = v40 - v43;
      *(&v84 + 3) = v39 - v44;
      *&v85 = v45 - v38;
      *(&v85 + 1) = v42 + v41;
      *(&v85 + 2) = v40 + v43;
      *(&v85 + 3) = v42 - v41;
      v86 = v45 - v37;
      v87 = vcvt_f32_f64(v30);
      v88 = v31;
      v89 = *(v29 - 3);
      v90 = *(v29 - 4);
      v95 = v25;
      v96 = v26;
      v93 = v27;
      v94 = LODWORD(v28);
      v91[0] = xmmword_1E3047670;
      v91[1] = xmmword_1E3047670;
      v92 = 1065353216;
      result = physx::Gu::intersectOBBOBB(&v89, &v87, &v84, &v93, &v95, v91, 1);
      if (result)
      {
        v46 = *(v8 + 56);
        v47 = *(v8 + 60) & 0x7FFFFFFF;
        v48 = v46 + 25;
        if (v46 + 25 > v47)
        {
          v49 = 2 * *(v8 + 60);
          if (!v47)
          {
            v49 = 2;
          }

          if (v48 <= v49)
          {
            v50 = v49;
          }

          else
          {
            v50 = v48;
          }

          result = physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::recreate(v8 + 48, v50);
          v46 = *(v8 + 56);
        }

        v51 = *(v8 + 48) + 4 * v46;
        *(v8 + 56) = v48;
        *v51 = 0;
        *(v51 + 4) = *v20;
        *(v51 + 12) = 0;
        *(v51 + 20) = v80;
        *(v51 + 36) = v18;
        v52 = *(v29 - 3);
        *(v51 + 60) = *(v29 - 4);
        *(v51 + 44) = v52;
        *(v51 + 68) = *(v29 - 6);
        *(v51 + 84) = *(v29 - 1);
        *(v51 + 92) = *v29;
      }

      ++v20;
      v29 += 14;
      --v19;
    }

    while (v19);
    v9 = *a3;
    v10 = *(a3 + 24);
    v11 = *(a3 + 16);
    v12 = *(a3 + 40);
    _Q7 = v79;
  }

  v53 = a2[6];
  v55 = *(a2 + 4);
  v54 = *(a2 + 5);
  v56 = v12 - v11;
  *&v91[0] = vmul_f32(vcvt_f32_f64(vsubq_f64(v10, v9)), 0x3F0000003F000000);
  *(v91 + 2) = v56 * 0.5;
  if (v53)
  {
    v57 = vcvt_f32_f64(vmulq_f64(vaddq_f64(v10, v9), _Q7));
    v58 = (v12 + v11) * 0.5;
    v9.n128_u64[1] = *&v80.f64[1];
    v59 = xmmword_1E3047670;
    do
    {
      v60 = v55[3].n128_f32[0];
      v10.n128_u64[0] = v55->n128_u64[0];
      v9.n128_u64[0] = v55[1].n128_u64[1];
      if (v55->n128_f64[0] >= v9.n128_f64[0])
      {
        v61 = v55[1].n128_f64[1];
      }

      else
      {
        v61 = v55->n128_f64[0];
      }

      v62 = v60;
      if (v61 - v60 <= *(a3 + 24))
      {
        v63 = v10.n128_f64[0] >= v9.n128_f64[0] ? v55->n128_f64[0] : v55[1].n128_f64[1];
        if (*a3 <= v63 + v62)
        {
          v64 = v55->n128_f64[1];
          v65 = v55[2].n128_f64[0];
          v66 = v64 >= v65 ? v55[2].n128_f64[0] : v55->n128_f64[1];
          if (v66 - v62 <= *(a3 + 32))
          {
            v67 = v64 >= v65 ? v55->n128_f64[1] : v55[2].n128_f64[0];
            if (*(a3 + 8) <= v67 + v62)
            {
              v68 = v55[1].n128_f64[0];
              v69 = v55[2].n128_f64[1];
              v70 = v68 >= v69 ? v55[2].n128_f64[1] : v55[1].n128_f64[0];
              if (v70 - v62 <= *(a3 + 40))
              {
                v71 = v68 >= v69 ? v55[1].n128_f64[0] : v55[2].n128_f64[1];
                a6.n128_f64[0] = v71 + v62;
                if (*(a3 + 16) <= a6.n128_f64[0])
                {
                  v10.n128_f32[0] = v10.n128_f64[0];
                  a6.n128_f32[0] = v64;
                  v72 = v68;
                  v95 = __PAIR64__(a6.n128_u32[0], v10.n128_u32[0]);
                  v96 = v72;
                  v9.n128_f32[0] = v9.n128_f64[0];
                  v10.n128_f32[0] = v65;
                  a6.n128_f32[0] = v69;
                  v93 = __PAIR64__(v10.n128_u32[0], v9.n128_u32[0]);
                  v94 = a6.n128_u32[0];
                  v82 = v57;
                  v83 = v58;
                  v84 = v59;
                  v85 = v59;
                  v86 = 1.0;
                  v81 = v59;
                  result = physx::Gu::distanceSegmentBoxSquared(&v95, &v93, &v82, v91, &v84, 0, 0, v9, v10, a6);
                  v59 = v81;
                  if (v9.n128_f32[0] <= (v60 * v60))
                  {
                    v73 = *(v8 + 56);
                    v74 = *(v8 + 60) & 0x7FFFFFFF;
                    v75 = v73 + 25;
                    if (v73 + 25 > v74)
                    {
                      v76 = 2 * *(v8 + 60);
                      if (!v74)
                      {
                        v76 = 2;
                      }

                      if (v75 <= v76)
                      {
                        v77 = v76;
                      }

                      else
                      {
                        v77 = v75;
                      }

                      result = physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::recreate(v8 + 48, v77);
                      v59 = v81;
                      v73 = *(v8 + 56);
                    }

                    v78 = *(v8 + 48) + 4 * v73;
                    *(v8 + 56) = v75;
                    *v78 = 1;
                    *(v78 + 4) = *v54;
                    *(v78 + 12) = 0;
                    *(v78 + 20) = v80;
                    *(v78 + 36) = v18;
                    v9 = *v55;
                    v10 = v55[1];
                    a6 = v55[2];
                    *(v78 + 92) = v55[3].n128_u32[0];
                    *(v78 + 76) = a6;
                    *(v78 + 60) = v10;
                    *(v78 + 44) = v9;
                  }
                }
              }
            }
          }
        }
      }

      ++v54;
      v55 = (v55 + 56);
      --v53;
    }

    while (v53);
  }

  return result;
}

uint64_t physx::Cct::SweepTest::updateTouchedGeoms(uint64_t *a1, void *a2, unsigned int *a3, float64x2_t *a4, __int128 *a5, float32x2_t *a6)
{
  v87 = 0;
  v86 = 0;
  v85 = *a5;
  v12 = *(a5 + 16);
  HIWORD(v86) = (v12 & 4) != 0;
  HIBYTE(v86) = (v12 & 8) != 0;
  result = (*(**a2 + 720))(*a2);
  if (result == *(a1 + 88))
  {
    if (*(a1 + 8) <= a4->f64[0] && *(a1 + 9) <= a4->f64[1] && *(a1 + 10) <= a4[1].f64[0] && *(a1 + 11) >= a4[1].f64[1] && *(a1 + 12) >= a4[2].f64[0] && *(a1 + 13) >= a4[2].f64[1])
    {
      v14 = *(a1 + 91);
      if ((v14 & 0x80) != 0)
      {
        *(a1 + 91) = v14 & 0xFFFFFF7F;
        physx::Cct::SweepTest::updateCachedShapesRegistration(a1, *(a1 + 32), 1);
        v15 = *(a1 + 33);
        *(a1 + 14) = *(a1 + 32);
        *(a1 + 6) = v15;
        *(a1 + 10) = v15;
        LOBYTE(v86) = 0;
        if ((a5[1] & 2) != 0)
        {
          BYTE1(v86) = 1;
        }

        physx::Cct::findTouchedGeometry(a2);
        physx::Cct::SweepTest::updateCachedShapesRegistration(a1, *(a1 + 32), 0);
        result = physx::Cct::SweepTest::findTouchedObstacles(a1, a3, (a1 + 8), v16, v17, v18);
        ++*(a1 + 179);
      }

      v19 = -16711936;
      goto LABEL_37;
    }
  }

  else
  {
    *(a1 + 88) = result;
  }

  v20 = a4[2];
  v21 = *a4;
  *(a1 + 5) = a4[1];
  *(a1 + 6) = v20;
  *(a1 + 4) = v21;
  v22 = *(a1 + 86);
  *&v20.f64[0] = a1[10];
  *&v21.f64[0] = a1[13];
  v23 = (v20.f64[0] + v21.f64[0]) * 0.5;
  *v20.f64 = v21.f64[0] - v20.f64[0];
  v20.f64[0] = (v22 * (*v20.f64 * 0.5));
  v24 = v23 - v20.f64[0];
  *(a1 + 10) = v23 - v20.f64[0];
  v25 = v23 + v20.f64[0];
  *(a1 + 13) = v25;
  v26 = *(a1 + 4);
  v27 = *(a1 + 11);
  __asm { FMOV            V6.2D, #0.5 }

  v33 = vmulq_f64(vaddq_f64(v26, v27), _Q6);
  v34 = vcvtq_f64_f32(vmul_n_f32(vmul_f32(vcvt_f32_f64(vsubq_f64(v27, v26)), 0x3F0000003F000000), v22));
  v35 = vsubq_f64(v33, v34);
  *(a1 + 4) = v35;
  v36 = vaddq_f64(v33, v34);
  *(a1 + 11) = v36;
  v37 = *a6;
  LODWORD(v38) = HIDWORD(*a6);
  v39 = a6[1].f32[0];
  if (COERCE_FLOAT(*a6) != 0.0 || v38 != 0.0 || v39 != 0.0)
  {
    v40 = ((v38 * v38) + (v37.f32[0] * v37.f32[0])) + (v39 * v39);
    if (v40 <= 0.0)
    {
      v42 = 0;
      v43 = 0.0;
    }

    else
    {
      v41 = 1.0 / sqrtf(v40);
      v42 = vmul_n_f32(v37, v41);
      v43 = v39 * v41;
    }

    v44 = a4[1].f64[1] - a4->f64[0];
    v45 = a4[2].f64[0] - a4->f64[1];
    v46 = a4[2].f64[1] - a4[1].f64[0];
    v47 = fabsf((vmuls_lane_f32(v45, v42, 1) + (v44 * v42.f32[0])) + (v46 * v43));
    v48 = vsubq_f64(v36, v35);
    v49 = v48.f64[0];
    *v48.f64 = v48.f64[1];
    v50 = v25 - v24;
    v51 = (fabsf((vmuls_lane_f32(*v48.f64, v42, 1) + (v49 * v42.f32[0])) + (v50 * v43)) - v47) * 0.45;
    v52 = v43 * v51;
    v53 = vcvtq_f64_f32(vmul_n_f32(v42, v51));
    v54 = vaddq_f64(v35, v53);
    *(a1 + 4) = v54;
    v55 = v52;
    v56 = v24 + v55;
    *(a1 + 10) = v24 + v55;
    v57 = vaddq_f64(v36, v53);
    *(a1 + 11) = v57;
    v58 = v25 + v55;
    *(a1 + 13) = v58;
    if (v54.f64[0] > a4->f64[0])
    {
      a1[8] = *&a4->f64[0];
    }

    v59 = a4->f64[1];
    if (v54.f64[1] > v59)
    {
      *(a1 + 9) = v59;
    }

    v60 = a4[1].f64[0];
    if (v56 > v60)
    {
      *(a1 + 10) = v60;
    }

    v61 = a4[1].f64[1];
    if (v57.f64[0] < v61)
    {
      *(a1 + 11) = v61;
    }

    v62 = a4[2].f64[0];
    if (v57.f64[1] < v62)
    {
      *(a1 + 12) = v62;
    }

    v63 = a4[2].f64[1];
    if (v58 < v63)
    {
      *(a1 + 13) = v63;
    }
  }

  physx::Cct::SweepTest::updateCachedShapesRegistration(a1, 0, 1);
  *(a1 + 6) = 0;
  *(a1 + 10) = 0;
  *(a1 + 14) = 0;
  a1[14] = 0;
  a1[15] = 0;
  ++*(a1 + 178);
  if (a5[1])
  {
    LOBYTE(v86) = 1;
  }

  BYTE1(v86) = 0;
  physx::Cct::findTouchedGeometry(a2);
  v64 = *(a1 + 6);
  *(a1 + 32) = *(a1 + 14);
  *(a1 + 33) = v64;
  LOBYTE(v86) = 0;
  if ((a5[1] & 2) != 0)
  {
    BYTE1(v86) = 1;
  }

  physx::Cct::findTouchedGeometry(a2);
  physx::Cct::SweepTest::updateCachedShapesRegistration(a1, 0, 0);
  result = physx::Cct::SweepTest::findTouchedObstacles(a1, a3, (a1 + 8), v65, v66, v67);
  *(a1 + 91) &= ~0x80u;
  v19 = -65536;
LABEL_37:
  v68 = *a1;
  if (*a1)
  {
    memset(v73, 0, sizeof(v73));
    v75 = 0;
    v76 = 0;
    v74 = 0x3F80000000000000;
    v77 = 1065353216;
    v79 = 0;
    v78 = 0;
    v80 = 1065353216;
    v81 = 0;
    v82 = 0;
    v83 = 1065353216;
    v84 = v68;
    v69 = *(a1 + 2);
    if (v69)
    {
      DWORD1(v73[0]) = -65281;
      v70 = vcvt_hight_f32_f64(vcvt_f32_f64(*a4), a4[1]);
      v71 = vcvt_f32_f64(a4[2]);
      v72 = 1;
      result = physx::Cm::operator<<(v73, &v70);
      v69 = *(a1 + 2);
    }

    if ((v69 & 2) != 0)
    {
      DWORD1(v73[0]) = v19;
      v70 = vcvt_hight_f32_f64(vcvt_f32_f64(*(a1 + 4)), *(a1 + 5));
      v71 = vcvt_f32_f64(*(a1 + 6));
      v72 = 1;
      return physx::Cm::operator<<(v73, &v70);
    }
  }

  return result;
}

void physx::Cct::findTouchedGeometry(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v54 = *MEMORY[0x1E69E9840];
  v3 = *v2;
  v5 = *(v4 + 16);
  v6 = *(v4 + 40);
  v7 = *v4;
  v8 = *(v4 + 24);
  __asm { FMOV            V6.2D, #0.5 }

  v44 = vmulq_f64(vaddq_f64(*v4, v8), _Q6);
  v45 = (v5 + v6) * 0.5;
  v14 = *(v1 + 16);
  if (*(v1 + 17))
  {
    v14 |= 2u;
  }

  if (v1[1])
  {
    if (*(v1 + 18))
    {
      v14 |= 4u;
    }

    if (*(v1 + 19))
    {
      v14 |= 8u;
    }
  }

  v15 = 0;
  v16 = v7.f64[0];
  v17 = v7.f64[1];
  v18 = v5;
  v19 = v8.f64[0];
  v20 = v8.f64[1];
  v21 = v6;
  v38 = v16;
  v39 = v17;
  v40 = v18;
  v41 = v19;
  v42 = v20;
  v43 = v21;
  v22 = (v18 + v21) * 0.5;
  v23 = v21 - v18;
  do
  {
    v24 = &v49[v15];
    *v24 = 0;
    *(v24 + 1) = 0;
    *(v24 + 4) = -1;
    v15 += 24;
  }

  while (v15 != 2400);
  v25 = (v16 + v19) * 0.5;
  v26.f32[0] = v20 - v17;
  v27 = (v17 + v20) * 0.5;
  v28 = (v19 - v16) * 0.5;
  v26.f32[1] = v23;
  v29 = vmul_f32(v26, 0x3F0000003F000000);
  if (*v1)
  {
    v36 = **v1;
  }

  else
  {
    v36 = 0uLL;
  }

  v31 = 0u;
  v32 = -1;
  v33 = 0;
  v34 = v49;
  v35 = 100;
  v30 = &unk_1F5CCE3B8;
  v37 = v14 | 0x20;
  v46 = 3;
  v47 = v28;
  v48 = v29;
  v50 = xmmword_1E30474D0;
  v51 = v25;
  v52 = v27;
  *&v53 = v22;
  (*(*v3 + 712))();
}

uint64_t physx::Cct::SweepTest::doSweepTest(uint64_t a1, void *a2, void *a3, unsigned int *a4, uint64_t a5, float *a6, float32x2_t *a7, int a8, float a9, _DWORD *a10, __int128 *a11, int a12, void *a13, void *a14)
{
  v240 = *MEMORY[0x1E69E9840];
  v17 = *a6;
  v18 = a6[1];
  v19 = a6[2];
  if (*a6 == 0.0 && v18 == 0.0 && v19 == 0.0)
  {
    v20 = 0;
    return v20 & 1;
  }

  v20 = 0;
  v21 = 0;
  v207 = a1 + 268;
  *(a1 + 364) &= 0xFFFFFFCB;
  *a14 = 0;
  *a13 = 0;
  *(a1 + 216) = -1;
  v216 = *(a5 + 8);
  v217 = *(a5 + 24);
  v22 = *(a5 + 24) + v19;
  v197 = (a5 + 8);
  v23 = *(a5 + 16) + v18;
  v24 = v216.f64[0] + v17;
  v25 = v216.f64[1];
  v26 = v216.f64[0];
  v27 = v217;
  while (2)
  {
    ++*(a1 + 362);
    *&v28 = v24 - v26;
    *&v29 = v23 - v25;
    v30 = v22 - v27;
    v214 = __PAIR64__(v29, v28);
    v215 = v30;
    (*(*a5 + 16))(a5, a1, v232, &v216, &v214);
    physx::Cct::SweepTest::updateTouchedGeoms(a1, a2, a4, v232, a11, a7);
    v33 = sqrtf(((v214.f32[1] * v214.f32[1]) + (v214.f32[0] * v214.f32[0])) + (v215 * v215));
    if (v33 <= a9)
    {
      goto LABEL_104;
    }

    v214.f32[0] = v214.f32[0] * (1.0 / v33);
    v214.f32[1] = v214.f32[1] * (1.0 / v33);
    v215 = v215 * (1.0 / v33);
    *&v32 = a6[2];
    if ((((v214.f32[1] * a6[1]) + (v214.f32[0] * *a6)) + (v215 * *&v32)) <= 0.0)
    {
      goto LABEL_104;
    }

    v203 = v21;
    *v212 = v33 + *(a1 + 316);
    v34 = *(a1 + 338);
    *&v212[4] = -1;
    v35 = *(a1 + 56);
    if (!v35)
    {
      goto LABEL_103;
    }

    v36 = 0;
    v37 = *(a1 + 48);
    v38 = &v37[v35];
    v39 = *(&v210 + 1);
    LODWORD(v40) = v210;
    v41 = v211;
    while (1)
    {
      v42 = *v37;
      v43 = *(&gSweepMap[6 * *(a5 + 36)] + v42);
      if (v43)
      {
        break;
      }

LABEL_21:
      v37 = (v37 + GeomSizes[v42]);
      if (v37 == v38)
      {
        v210 = __PAIR64__(LODWORD(v39), LODWORD(v40));
        v211 = v41;
        v37 = v36;
        v213 = v36;
        if (v36)
        {
          goto LABEL_23;
        }

LABEL_103:
        v216.f64[0] = v24;
        v216.f64[1] = v23;
        v20 = 1;
        v217 = v22;
        v21 = v203;
LABEL_104:
        if (a10)
        {
          *a10 = v21;
        }

        *v197 = v216;
        v197[1].f64[0] = v217;
        return v20 & 1;
      }
    }

    v44 = *v212;
    LODWORD(v235) = *v212;
    *(&v235 + 4) = -1;
    if (!v43(a1, a5, v37, &v216, &v214, v232))
    {
      goto LABEL_20;
    }

    if (*&v235 == 0.0)
    {
      if (v34 && *v37 >= 2 && shouldApplyRecoveryModule(*(v37 + 3)))
      {
        v208 = *v232;
        v209 = *&v232[16];
        v39 = *(&v233 + 1);
        v40 = *&v233;
        v210 = *&v233;
        v41 = v234;
        v211 = v234;
        *v212 = v235;
        *&v212[8] = DWORD2(v235);
        goto LABEL_78;
      }

      goto LABEL_20;
    }

    if (*&v235 >= v44)
    {
LABEL_20:
      v42 = *v37;
      goto LABEL_21;
    }

    v31.i32[1] = *&v232[4];
    v208 = *v232;
    v209 = *&v232[16];
    v39 = *(&v233 + 1);
    v40 = *&v233;
    v41 = v234;
    *v212 = v235;
    *&v212[8] = DWORD2(v235);
    if (*&v235 > 0.0)
    {
      v36 = v37;
      goto LABEL_20;
    }

    v210 = *&v233;
    v211 = v234;
LABEL_78:
    v213 = v37;
LABEL_23:
    v45 = *v212;
    if (*(a1 + 338) != 1 || *v212 != 0.0)
    {
      if (*v37 <= 1)
      {
        if (a12 == 3)
        {
          v46 = 0;
          goto LABEL_63;
        }

        a3[2] = 0;
        *(a3 + 6) = -1;
        v98 = *a3;
        v99 = HIWORD(v37[1]);
        v100 = v37[1];
        if (v100 == 2)
        {
          *v232 = (*(*v98 + 32))(v98);
          v233 = v209;
          *&v232[8] = v208;
          v234 = v40;
          *&v235 = __PAIR64__(LODWORD(v41), LODWORD(v39));
          *(&v235 + 1) = v214;
          v236 = v215;
          v237 = v33;
          v126 = a3;
          v127 = *(a3[1] + 24);
          v128 = 72;
        }

        else
        {
          if (v100 != 1)
          {
            if (v37[1])
            {
              goto LABEL_69;
            }

            v101 = *(*(v98[75] + 104) + 8 * v99);
            *v232 = (*(*v98 + 32))(v98);
            *&v232[8] = v208;
            v233 = v209;
            v234 = v40;
            *&v235 = __PAIR64__(LODWORD(v41), LODWORD(v39));
            *(&v235 + 1) = v214;
            v236 = v215;
            v237 = v33;
            *&v238 = (*(*v101 + 32))(v101);
            v102 = v98[10];
            if (v102)
            {
              (*(*v102 + 8))(v102, v232);
            }

            v103 = v98[11];
            if (!v103)
            {
LABEL_69:
              v104 = 0;
            }

            else
            {
              (*(*v103 + 8))(&v229);
              v104 = v229;
            }

            v121 = v203;
            v125 = a3;
            goto LABEL_81;
          }

          *v232 = (*(*v98 + 32))(v98);
          *&v232[8] = v208;
          v233 = v209;
          v234 = v40;
          *&v235 = __PAIR64__(LODWORD(v41), LODWORD(v39));
          *(&v235 + 1) = v214;
          v236 = v215;
          v237 = v33;
          v126 = a3;
          v127 = *(a3[1] + 8);
          v128 = 80;
        }

        v129 = v127 + v99 * v128;
        v125 = v126;
        *&v238 = *(v129 + 16);
        v126[2] = v129 + 8;
        *(v126 + 6) = *v129;
        v130 = v98[10];
        if (v130)
        {
          (*(*v130 + 16))(v130, v232);
        }

        v131 = v98[11];
        if (v131)
        {
          (*(*v131 + 16))(&v229);
          v104 = v229;
        }

        else
        {
          v104 = 0;
        }

        v121 = v203;
LABEL_81:
        v120 = (v104 & 2) == 0;
        if (a12 == 2)
        {
          v132 = v125[2];
          v133 = *(a1 + 364);
          if (v132)
          {
            v134 = *(v125 + 6);
            *(a1 + 364) = v133 | 0x20;
            *(a1 + 216) = v134;
            HIDWORD(v135) = HIDWORD(v209);
            *&v135 = v209;
            v136 = COERCE_DOUBLE(vcvt_f32_f64(v208));
            *v207 = v136;
            *(a1 + 276) = LODWORD(v135);
            worldToLocal(v232, v132, &v208, v135, v136, v32);
            v46 = 0;
            *(a1 + 256) = *v232;
            *(a1 + 264) = *&v232[8];
          }

          else
          {
            v46 = 0;
            *(a1 + 364) = v133 | 0x10;
          }
        }

        else
        {
          v46 = 0;
        }

LABEL_86:
        if (a12 != 2 || v120 || v121 != 0)
        {
          v137 = -1;
        }

        else
        {
          v137 = 8;
        }

        v138 = v208.f64[0];
        v139 = v208.f64[1];
        v140 = v209;
        v141 = *(a1 + 300);
        v142 = *(a1 + 304);
        v143 = (v142 * v139) + (v138 * v141);
        v144 = *(a1 + 308);
        *(a1 + 348) = v143 + (v140 * v144);
        v145 = *(a1 + 316);
        if (v45 > v145)
        {
          v146 = v45 - v145;
          v216 = vaddq_f64(v216, vcvtq_f64_f32(vmul_n_f32(v214, v146)));
          v217 = v217 + (v146 * v215);
        }

        if ((v46 & 1) != 0 || (*(a1 + 364) & 2) != 0 && *(a1 + 280) != 1)
        {
          v147 = ((v142 * v39) + (v40 * v141)) + (v41 * v144);
          v40 = v40 - (v141 * v147);
          v39 = v39 - (v142 * v147);
          v41 = v41 - (v144 * v147);
          v148 = sqrtf(((v39 * v39) + (v40 * v40)) + (v41 * v41));
          if (v148 > 0.0)
          {
            v149 = 1.0 / v148;
            v40 = v40 * v149;
            v39 = v39 * v149;
            v41 = v41 * v149;
          }
        }

        v150 = ((v39 * v214.f32[1]) + (v214.f32[0] * v40)) + (v215 * v41);
        v151 = v214.f32[0] - ((v40 + v40) * v150);
        v152 = v214.f32[1] - ((v39 + v39) * v150);
        v153 = v215 - ((v41 + v41) * v150);
        v154 = sqrtf(((v152 * v152) + (v151 * v151)) + (v153 * v153));
        if (v154 > 0.0)
        {
          v155 = 1.0 / v154;
          v151 = v151 * v155;
          v152 = v152 * v155;
          v153 = v153 * v155;
        }

        v156 = ((v39 * v152) + (v151 * v40)) + (v153 * v41);
        v157 = v39 * v156;
        v158 = v41 * v156;
        v159 = v151 - (v40 * v156);
        v160 = v152 - v157;
        v161 = v153 - v158;
        v25 = v216.f64[1];
        v26 = v216.f64[0];
        v27 = v217;
        if ((*(a1 + 364) & 0x40) != 0)
        {
          v162 = sqrtf(((v160 * v160) + (v159 * v159)) + (v161 * v161));
          if (v162 > 0.0)
          {
            v163 = 1.0 / v162;
            v159 = v159 * v163;
            v160 = v160 * v163;
            v161 = v161 * v163;
          }
        }

        v21 = v121 + 1;
        v164 = v22 - v217;
        v165 = v24 - v216.f64[0];
        v166 = v23 - v216.f64[1];
        v167 = sqrtf(((v166 * v166) + (v165 * v165)) + (v164 * v164));
        v24 = v216.f64[0] + (v167 * v159);
        v23 = v216.f64[1] + (v167 * v160);
        v22 = v217 + (v167 * v161);
        v20 = 1;
        a8 += v137;
        if (!a8)
        {
          goto LABEL_104;
        }

        continue;
      }

      v47 = *(v37 + 3);
      if (a12 == 2)
      {
        v48 = *(v37 + 1);
        v49 = *(a1 + 364) & 0xFFFFFFCF;
        *(a1 + 364) = v49;
        v50 = *&v212[4];
        if (v47[4] == 6 && *&v212[4] != -1)
        {
          *(a1 + 364) = v49 | 4;
          v52 = (*(a1 + 16) + 36 * v50);
          v53 = *(a1 + 300);
          v54 = *v52;
          v55 = v52[1];
          v56 = *(a1 + 304);
          v57 = *(a1 + 308);
          v58 = v52[2];
          v59 = v52[3];
          v60 = ((v55 * v56) + (*v52 * v53)) + (v58 * v57);
          v61 = v52[4];
          v62 = v52[5];
          v63 = ((v56 * v61) + (v59 * v53)) + (v62 * v57);
          v64 = v52[6];
          v65 = v52[7];
          v66 = v52[8];
          v67 = ((v56 * v65) + (v64 * v53)) + (v66 * v57);
          if (v60 >= v63)
          {
            v68 = ((v56 * v61) + (v59 * v53)) + (v62 * v57);
          }

          else
          {
            v68 = ((v55 * v56) + (*v52 * v53)) + (v58 * v57);
          }

          if (v60 <= v63)
          {
            v60 = ((v56 * v61) + (v59 * v53)) + (v62 * v57);
          }

          if (v68 >= v67)
          {
            v69 = ((v56 * v65) + (v64 * v53)) + (v66 * v57);
          }

          else
          {
            v69 = v68;
          }

          if (v60 <= v67)
          {
            v60 = ((v56 * v65) + (v64 * v53)) + (v66 * v57);
          }

          v70 = (*(a1 + 64) + *(a1 + 88)) * 0.5;
          v71 = (*(a1 + 72) + *(a1 + 96)) * 0.5;
          v72 = (*(a1 + 80) + *(a1 + 104)) * 0.5;
          v73 = ((v56 * v71) + (v53 * v70)) + (v57 * v72);
          *(a1 + 160) = v69 + v73;
          *(a1 + 164) = v60 + v73;
          v74 = v59 - v54;
          v75 = v61 - v55;
          v76 = v64 - v54;
          v77 = v65 - v55;
          v78 = ((v61 - v55) * (v66 - v58)) - ((v62 - v58) * (v65 - v55));
          v79 = ((v62 - v58) * v76) - (v74 * (v66 - v58));
          v80 = (v74 * v77) - (v75 * v76);
          *(a1 + 136) = v78;
          *(a1 + 140) = v79;
          *(a1 + 144) = v80;
          v81 = sqrtf(((v79 * v79) + (v78 * v78)) + (v80 * v80));
          if (v81 > 0.0)
          {
            v82 = 1.0 / v81;
            *(a1 + 136) = v78 * v82;
            *(a1 + 140) = v79 * v82;
            *(a1 + 144) = v80 * v82;
          }
        }

        *a14 = v48;
        *a13 = v47;
        (*(*v47 + 152))(v232);
        (*(*v48 + 160))(&v229, v48);
        v46 = 0;
        v83 = (*&v232[12] * *&v232[12]) + -0.5;
        v84 = (((v230.f32[1] + v230.f32[1]) * *&v232[4]) + (*v232 * (v230.f32[0] + v230.f32[0]))) + (*&v232[8] * (v231 + v231));
        v85 = *&v232[16] + (((*&v232[12] * ((*&v232[4] * (v231 + v231)) - (*&v232[8] * (v230.f32[1] + v230.f32[1])))) + ((v230.f32[0] + v230.f32[0]) * v83)) + (*v232 * v84));
        v86 = *&v232[20] + (((*&v232[12] * ((*&v232[8] * (v230.f32[0] + v230.f32[0])) - (*v232 * (v231 + v231)))) + ((v230.f32[1] + v230.f32[1]) * v83)) + (*&v232[4] * v84));
        v87 = *&v233 + (((*&v232[12] * ((*v232 * (v230.f32[1] + v230.f32[1])) - (*&v232[4] * (v230.f32[0] + v230.f32[0])))) + ((v231 + v231) * v83)) + (*&v232[8] * v84));
        v88 = (((*v232 * *(&v229 + 3)) + (*&v232[12] * *&v229)) + (*&v232[4] * *(&v229 + 2))) - (*(&v229 + 1) * *&v232[8]);
        v89 = (((*&v232[4] * *(&v229 + 3)) + (*&v232[12] * *(&v229 + 1))) + (*&v232[8] * *&v229)) - (*(&v229 + 2) * *v232);
        v90 = (((*&v232[8] * *(&v229 + 3)) + (*&v232[12] * *(&v229 + 2))) + (*v232 * *(&v229 + 1))) - (*&v229 * *&v232[4]);
        v91 = (((*&v232[12] * *(&v229 + 3)) - (*v232 * *&v229)) - (*&v232[4] * *(&v229 + 1))) - (*&v232[8] * *(&v229 + 2));
        v92 = v209;
        v93 = vcvt_f32_f64(v208);
        *(a1 + 244) = v93;
        *(a1 + 252) = v92;
        v94 = (v93.f32[0] - v85) + (v93.f32[0] - v85);
        v95 = (v93.f32[1] - v86) + (v93.f32[1] - v86);
        v96 = (v92 - v87) + (v92 - v87);
        v97 = (v91 * v91) + -0.5;
        v93.f32[0] = ((v89 * v95) + (v88 * v94)) + (v90 * v96);
        *(a1 + 232) = ((v94 * v97) - (((v89 * v96) - (v90 * v95)) * v91)) + (v88 * v93.f32[0]);
        *(a1 + 236) = ((v95 * v97) - (((v90 * v94) - (v88 * v96)) * v91)) + (v89 * v93.f32[0]);
        *(a1 + 240) = ((v96 * v97) - (((v88 * v95) - (v89 * v94)) * v91)) + (v90 * v93.f32[0]);
        v39 = *(&v210 + 1);
        LODWORD(v40) = v210;
        v41 = v211;
        v37 = v213;
LABEL_64:
        v122 = *a3;
        *v232 = (*(**a3 + 32))(*a3);
        *&v232[8] = v208;
        v233 = v209;
        v234 = v40;
        *&v235 = __PAIR64__(LODWORD(v41), LODWORD(v39));
        *(&v235 + 1) = v214;
        v236 = v215;
        v237 = v33;
        v238 = *(v37 + 1);
        v239 = *&v212[8];
        v123 = *(v122 + 80);
        if (v123)
        {
          (**v123)(v123, v232);
        }

        v124 = *(v122 + 88);
        v121 = v203;
        if (v124)
        {
          (**v124)(&v229);
          v120 = (v229 & 2) == 0;
        }

        else
        {
          v120 = 1;
        }

        goto LABEL_86;
      }

      if ((a12 & 0xFFFFFFFD) != 1)
      {
        goto LABEL_61;
      }

      v46 = 0;
      if (v47[4] == 6)
      {
        v105 = *&v212[4];
        if (*&v212[4] != -1)
        {
          *(a1 + 364) |= 8u;
          v106 = (*(a1 + 16) + 36 * v105);
          v107 = v106[1];
          v108 = v106[2];
          v109 = v106[3] - *v106;
          v110 = v106[6] - *v106;
          v111 = v106[4] - v107;
          v112 = v106[5] - v108;
          v113 = v106[7] - v107;
          v114 = v106[8] - v108;
          v115 = (v111 * v114) - (v112 * v113);
          v116 = (v112 * v110) - (v109 * v114);
          v117 = (v109 * v113) - (v111 * v110);
          *(a1 + 148) = v115;
          *(a1 + 152) = v116;
          *(a1 + 156) = v117;
          v118 = sqrtf(((v116 * v116) + (v115 * v115)) + (v117 * v117));
          if (v118 > 0.0)
          {
            v119 = 1.0 / v118;
            v115 = v115 * v119;
            v116 = v116 * v119;
            *(a1 + 148) = v115;
            *(a1 + 152) = v116;
            v117 = v117 * v119;
            *(a1 + 156) = v117;
          }

          if (*(a1 + 340) == 1 && (((v116 * *(a1 + 304)) + (v115 * *(a1 + 300))) + (v117 * *(a1 + 308))) < 0.0)
          {
            v46 = 1;
            goto LABEL_62;
          }

LABEL_61:
          v46 = 0;
        }
      }

LABEL_62:
      if (a12 == 3)
      {
LABEL_63:
        v120 = 1;
        v121 = v203;
        goto LABEL_86;
      }

      goto LABEL_64;
    }

    break;
  }

  v169 = 0;
  v31.i32[0] = *(a1 + 316);
  v170 = vcvt_f32_f64(v216);
  v171 = v217;
  v172 = vdup_lane_s32(v31, 0);
  v205 = v31.u32[0] | 0x3F00000000000000;
  v206 = *v31.i32;
  while (2)
  {
    v173 = *(a1 + 56);
    if (!v173)
    {
      goto LABEL_120;
    }

    v174 = *(a1 + 48);
    v175 = &v174[v173];
    v176 = 1;
    while (2)
    {
      if (*v174 >= 2)
      {
        v177 = *(v174 + 3);
        if (shouldApplyRecoveryModule(v177))
        {
          v178 = *(v174 + 1);
          (*(*v178 + 80))(v232, v178);
          (*(*v177 + 152))(&v229, v177);
          (*(*v178 + 160))(&v225, v178);
          _S2 = v226 + v226;
          _S3 = v228 + v228;
          v181.i32[0] = v229;
          v182 = (*(&v229 + 3) * *(&v229 + 3)) + -0.5;
          _Q0.i64[0] = *(&v229 + 4);
          __asm
          {
            FMLA            S7, S3, V0.S[1]
            FMLA            S17, S2, V0.S[1]
            FMLA            S19, S7, V0.S[1]
          }

          v190 = v225;
          v190.i32[3] = DWORD2(v229);
          v191 = vextq_s8(vextq_s8(v181, v181, 4uLL), _Q0, 0xCuLL);
          v191.f32[3] = -*&v229;
          v192 = vmlaq_n_f32(vmulq_f32(vextq_s8(vdupq_laneq_s32(v225, 3), v225, 4uLL), v191), v225, *(&v229 + 3));
          v191.f32[3] = -*(&v229 + 1);
          _Q0.i64[1] = __PAIR64__(v225.u32[2], v229);
          v193 = vmlsq_f32(vmlaq_f32(vuzp2q_s32(vextq_s8(v192, v192, 4uLL), v192), vextq_s8(vextq_s8(v225, v225, 0xCuLL), v225, 8uLL), v191), _Q0, v190);
          v221 = vzip2q_s32(vzip1q_s32(v193, vextq_s8(v193, v193, 0xCuLL)), v193);
          v222 = v230.f32[0] + (((*(&v229 + 3) * (vmuls_lane_f32(v227 + v227, vnegq_f32(v190), 3) + (*(&v229 + 1) * (v228 + v228)))) + ((v226 + v226) * v182)) + (*&v229 * _S7));
          v223 = v230.f32[1] + (((*(&v229 + 3) * _S17) + ((v227 + v227) * v182)) + (*(&v229 + 1) * _S7));
          v224 = v231 + _S19;
          v218 = 0.0;
          v229 = *(v207 + 16);
          v230 = v170;
          v231 = v171;
          if (*(a5 + 36) == 1)
          {
            v225.i32[0] = 2;
            v194 = *(a5 + 40);
            LODWORD(v195) = vadd_f32(v205, v194).u32[0];
            HIDWORD(v195) = vmul_f32(v205, v194).i32[1];
            *(v225.i64 + 4) = v195;
            v219 = v232;
            if ((physx::PxGeometryQuery::computePenetration(&v219, &v218, v225.i32, &v229, v232, &v221) & 1) == 0)
            {
              goto LABEL_115;
            }

LABEL_117:
            ++v169;
            v170 = vadd_f32(v170, vmul_n_f32(v219, v218));
            v171 = v171 + (v218 * v220);
            v176 = 1;
          }

          else
          {
            *&v196 = v206 + *(a5 + 48);
            v225.i32[0] = 3;
            *(v225.i64 + 4) = vadd_f32(v172, *(a5 + 40));
            v225.i32[3] = v196;
            v219 = v232;
            if (physx::PxGeometryQuery::computePenetration(&v219, &v218, v225.i32, &v229, v232, &v221))
            {
              goto LABEL_117;
            }

LABEL_115:
            v176 = 0;
          }
        }
      }

      v174 = (v174 + GeomSizes[*v174]);
      if (v174 != v175)
      {
        continue;
      }

      break;
    }

    if ((v176 & 1) == 0)
    {
      break;
    }

LABEL_120:
    if (v169 <= 3)
    {
      continue;
    }

    break;
  }

  if (a10)
  {
    *a10 = v203 + 1;
  }

  *(a5 + 8) = vcvtq_f64_f32(v170);
  *(a5 + 24) = v171;
  v20 = 1;
  return v20 & 1;
}

uint64_t physx::Cct::SweepTest::moveCharacter(char *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, float32x2_t *a6, unsigned int *a7, __int128 *a8, float a9, char a10, unsigned __int8 a11, void *a12, void *a13)
{
  v20 = a11;
  v21 = *(a2 + 364);
  v22 = v21 & 0xFFFFFEFE;
  *a1 = 0;
  if ((v21 & 2) != 0)
  {
    if (*(a2 + 280) == 1)
    {
      v23 = 10;
    }

    else
    {
      v23 = 1;
    }
  }

  else
  {
    v23 = 1;
  }

  v89 = v23;
  v24 = *(a2 + 320);
  v25 = (a2 + 300);
  v27 = *(a5 + 8);
  v28 = *(a5 + 16);
  v26 = (a5 + 8);
  v29 = *(a5 + 24);
  v30 = *(a2 + 308);
  v88 = *(a5 + 32);
  v31 = *a6;
  v32 = a6[1].f32[0];
  if (a11)
  {
    v33 = *(a2 + 320);
  }

  else
  {
    v33 = 0.0;
  }

  v34 = 0;
  v103 = 0;
  v104 = 0.0;
  v101 = 0;
  v102 = 0.0;
  v86 = (a2 + 300);
  v35 = *v25;
  v36 = COERCE_FLOAT(*v25);
  v37 = v28 * COERCE_FLOAT(HIDWORD(*v25));
  v38 = (COERCE_FLOAT(vmul_f32(*v25, v31).i32[1]) + (v31.f32[0] * COERCE_FLOAT(*v25))) + (v32 * v30);
  v39 = v38 <= 0.0;
  if (v38 > 0.0)
  {
    v22 |= 0x100u;
    v24 = v33;
  }

  v91 = v24;
  *(a2 + 364) = v22;
  v40 = vmul_n_f32(v35, v38);
  v87 = v38;
  v41 = v30 * v38;
  v42 = vsub_f32(v31, v40);
  v43 = v32 - v41;
  if (v39)
  {
    v85 = 0.0;
    v44 = &v104;
    v45 = &v103 + 4;
    v103.i32[0] = v40.i32[0];
    v47 = v41;
    v46 = v40;
  }

  else
  {
    v44 = &v102;
    v45 = &v101 + 4;
    v101.i32[0] = v40.i32[0];
    v46 = 0;
    v47 = 0.0;
    v85 = v41;
    v34 = v40;
  }

  v48 = v37 + v27 * v36;
  *v45 = v40.i32[1];
  *v44 = v41;
  v99 = v42;
  v100 = v32 - v41;
  v49 = fabsf(v42.f32[0]);
  if (v49 > 0.000001)
  {
    v20 = 1;
  }

  v84 = v42;
  v83 = v42.f32[1];
  v50 = fabsf(v42.f32[1]);
  if (v50 > 0.000001)
  {
    v20 = 1;
  }

  v51 = fabsf(v43);
  if (v51 > 0.000001)
  {
    v52 = 1;
  }

  else
  {
    v52 = v20;
  }

  if (v52 == 1)
  {
    v103 = vadd_f32(vmul_n_f32(v35, v91), v46);
    v104 = (v30 * v91) + v47;
  }

  v53 = v48 + v29 * v30;
  (*(*a5 + 16))(a5, a2, &v97, a5 + 8, a6);
  physx::Cct::SweepTest::updateTouchedGeoms(a2, a3, a7, &v97, a8, &v99);
  *(a2 + 112) = 0;
  v96 = 0;
  v92 = a8;
  if ((*(a2 + 364) & 2) != 0)
  {
    v55 = a7;
LABEL_35:
    v57 = 0;
    goto LABEL_36;
  }

  if (*(a2 + 340) & 1 | (v49 > 0.000001) | (v50 > 0.000001) | (v51 > 0.000001))
  {
    v54 = 1;
  }

  else
  {
    v54 = 10;
  }

  v82 = a8;
  v55 = a7;
  if (physx::Cct::SweepTest::doSweepTest(a2, a3, a4, a7, a5, &v103, &v99, v54, a9, &v96, v82, 0, a12, a13))
  {
    v56 = v96 == 0;
  }

  else
  {
    v56 = 1;
  }

  if (v56)
  {
    goto LABEL_35;
  }

  v57 = 2;
  *a1 = 2;
  v58 = *(a5 + 16) * *(a2 + 304) + *(a5 + 8) * *(a2 + 300) + *(a5 + 24) * *(a2 + 308) - v53;
  v59 = v91;
  if (v91 > v58)
  {
    v59 = *(a5 + 16) * *(a2 + 304) + *(a5 + 8) * *(a2 + 300) + *(a5 + 24) * *(a2 + 308) - v53;
  }

  v91 = v59;
LABEL_36:
  *(a2 + 112) = 1;
  *(a2 + 364) &= ~8u;
  v96 = 0;
  if (physx::Cct::SweepTest::doSweepTest(a2, a3, a4, v55, a5, &v99, &v99, 10, a9, &v96, v92, 1, a12, a13) && v96)
  {
    v57 |= 1u;
    *a1 = v57;
  }

  if (a10)
  {
    if (*(a5 + 36) == 1 && (*(a2 + 364) & 8) == 0)
    {
      v60 = *(a5 + 40);
      v61 = ((v83 * v83) + (v84.f32[0] * v84.f32[0])) + (v43 * v43);
      v62 = sqrtf(v61);
      if (v62 < v60)
      {
        if (v61 <= 0.0)
        {
          v64 = 0;
          v65 = 0.0;
        }

        else
        {
          v63 = 1.0 / v62;
          v64 = vmul_n_f32(v84, 1.0 / v62);
          v65 = v43 * v63;
        }

        v94 = vmul_n_f32(v64, v60);
        v95 = v60 * v65;
        v96 = 0;
        v97 = *v26;
        v98 = *(a5 + 24);
        physx::Cct::SweepTest::doSweepTest(a2, a3, a4, v55, a5, &v94, &v99, 1, a9, &v96, v92, 3, a12, a13);
        *v26 = v97;
        *(a5 + 24) = v98;
      }
    }
  }

  *(a2 + 112) = 2;
  v96 = 0;
  if (v52)
  {
    v66 = v91 * *(a2 + 308);
    v101 = vsub_f32(v34, vmul_n_f32(*v86, v91));
    v102 = v85 - v66;
  }

  v67 = v53 - v88;
  *(a2 + 364) &= ~4u;
  *a13 = 0;
  *a12 = 0;
  *(a2 + 216) = -1;
  result = physx::Cct::SweepTest::doSweepTest(a2, a3, a4, v55, a5, &v101, &v99, v89, a9, &v96, v92, 2, a12, a13);
  if (!result || !v96)
  {
    if ((*(a2 + 337) & 1) == 0)
    {
      return result;
    }

    v71 = *(a2 + 364);
LABEL_64:
    if ((v71 & 0x30) == 0 && v87 <= 0.0 && (v71 & 4) != 0)
    {
      v73 = *(a2 + 164) - v67;
      if (*(a2 + 320) < v73)
      {
        v74 = *v86;
        v75 = *(a2 + 308);
        v76 = (vmuls_lane_f32(*(a2 + 140), *v86, 1) + (*(a2 + 136) * COERCE_FLOAT(*v86))) + (*(a2 + 144) * v75);
        if (v76 >= 0.0 && v76 < *(a2 + 312))
        {
          *(a2 + 364) = v71 | 1;
          if ((v71 & 2) != 0)
          {
            *(a2 + 364) = v71 | 0x41;
            v77 = *(a5 + 16) * v74.f32[1] + *(a5 + 8) * v74.f32[0] + *(a5 + 24) * v75;
            v78 = v77 - v53;
            v39 = v77 <= v53;
            v79 = 0.0;
            if (!v39)
            {
              v79 = v78;
            }

            v80 = v79 + fabsf(((v74.f32[1] * a6->f32[1]) + (a6->f32[0] * v74.f32[0])) + (a6[1].f32[0] * v75));
            v96 = 0;
            v81 = v80 / 10.0;
            if (v80 >= a9)
            {
              v81 = a9;
            }

            *&v97.f64[0] = vmul_n_f32(vneg_f32(v74), v80);
            *&v97.f64[1] = -(v75 * v80);
            result = physx::Cct::SweepTest::doSweepTest(a2, a3, a4, v55, a5, &v97, &v99, 10, v81, &v96, v92, 0, a12, a13);
            *(a2 + 364) &= ~0x40u;
          }
        }
      }
    }

    return result;
  }

  if (v87 <= 0.0)
  {
    *a1 = v57 | 4;
  }

  if (*(a2 + 337) == 1)
  {
    v69 = *(a2 + 364);
    if ((v69 & 0x38) == 8 && (v70 = ((*(a2 + 152) * *(a2 + 304)) + (*(a2 + 148) * *(a2 + 300))) + (*(a2 + 156) * *(a2 + 308)), v70 >= 0.0) && v70 < *(a2 + 312) && a10 && v67 + v91 < *(a2 + 348))
    {
      v71 = v69 | 1;
      *(a2 + 364) = v69 | 1;
      if ((v69 & 2) == 0)
      {
        return result;
      }
    }

    else
    {
      v71 = *(a2 + 364);
    }

    goto LABEL_64;
  }

  return result;
}

uint64_t physx::Cct::Controller::move(_BYTE *a1, unint64_t a2, uint64_t a3, float32x2_t *a4, uint64_t a5, uint64_t a6, char a7, float a8, __n128 a9, __n128 a10)
{
  v11 = a9.n128_f32[0];
  v17 = a2 + 348;
  v18 = *(a2 + 600);
  v223 = *(v18 + 200);
  if (v223 == 1 && ((physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled & 1) != 0))
  {
    pthread_mutex_lock(*(a2 + 592));
    v18 = *(a2 + 600);
  }

  v225 = *(v18 + 24);
  *(a2 + 104) = v225;
  *(a2 + 560) = *(a2 + 560) + v11;
  v216 = *(v18 + 32);
  *(a2 + 112) = v216;
  *(a2 + 384) = *(a2 + 12);
  *(v17 + 40) = *(a2 + 16);
  *(v17 + 56) = *(a2 + 32);
  *(a2 + 412) = *(a2 + 40);
  *(a2 + 416) = *(a2 + 44);
  v19 = *(a2 + 57);
  *(a2 + 429) = v19;
  *(a2 + 468) |= 0x80u;
  *(a2 + 436) = *(v18 + 192) * *(v18 + 192);
  *(a2 + 440) = *(v18 + 196);
  *(a2 + 442) = *(v18 + 197);
  *(a2 + 443) = *(v18 + 198);
  *(a2 + 444) = *(v18 + 199);
  *(v17 + 112) = 0;
  v19.n128_f32[0] = a4[1].f32[0] + *(a2 + 540);
  a10.n128_u64[0] = *(v17 + 184);
  a9.n128_u64[0] = vadd_f32(*a4, a10.n128_u64[0]);
  *v239 = a9.n128_u64[0];
  *&v239[8] = v19.n128_u32[0];
  *(v17 + 184) = 0;
  *(a2 + 540) = 0;
  v20 = (a2 + 296);
  v21 = *(a2 + 296);
  if (v21 && *(a2 + 272))
  {
    v22 = (a2 + 272);
    v23 = (*(*v21 + 184))(v21);
    if (!v23)
    {
LABEL_11:
      if (*(a2 + 304) == 1 && *v20)
      {
        physx::Cct::CharacterControllerManager::unregisterObservedObject(*(a2 + 312), *v20);
      }

      *(a2 + 296) = 0;
      if (*(a2 + 280) != 1)
      {
        goto LABEL_26;
      }

      v26 = *v22;
      if (!*v22)
      {
        goto LABEL_26;
      }

      v27 = 288;
LABEL_25:
      physx::Cct::CharacterControllerManager::unregisterObservedObject(*(a2 + v27), v26);
LABEL_26:
      *v22 = 0;
      goto LABEL_27;
    }

    v24 = v23;
    v25 = 0;
    while (1)
    {
      *v230 = 0;
      (*(**v20 + 192))(*v20, v230, 1, v25);
      if (*v22 == *v230)
      {
        break;
      }

      v25 = (v25 + 1);
      if (v24 == v25)
      {
        goto LABEL_11;
      }
    }

    if ((*(**(a2 + 296) + 56))(*(a2 + 296)) != *(a2 + 544) || ((*(**v22 + 312))(v230), (v230[0] & 2) == 0) || ((v214 = *(a5 + 8), !*a5) ? (v19 = 0uLL) : (v19 = **a5), (*v230 = v19, *&v230[16] = 6, LOWORD(v243) = 0, v214) && !(**v214)(v214, v230, *v22, *v20, &v243)))
    {
      if (*(a2 + 280) == 1 && *v22)
      {
        physx::Cct::CharacterControllerManager::unregisterObservedObject(*(a2 + 288), *v22);
      }

      *(a2 + 272) = 0;
      v22 = (a2 + 296);
      if (*(a2 + 304) != 1)
      {
        goto LABEL_26;
      }

      v26 = *v20;
      v22 = (a2 + 296);
      if (!*v20)
      {
        goto LABEL_26;
      }

      v27 = 312;
      v22 = (a2 + 296);
      goto LABEL_25;
    }
  }

LABEL_27:
  v215 = (a2 + 296);
  v222 = a3;
  v218 = a2 + 104;
  if (*(a2 + 272))
  {
    goto LABEL_28;
  }

  if (*(a2 + 320) != -1)
  {
LABEL_82:
    v94 = *(a2 + 560);
    v95 = *(a2 + 568);
    *(a2 + 568) = v94;
    v96 = (*(*a6 + 72))(a6);
    v97 = *(a2 + 88);
    if (v97)
    {
      (*(*v97 + 16))(v230);
      v29 = v230[0];
    }

    else
    {
      v29 = 1;
    }

    v40 = v94 - v95;
    a10.n128_u64[0] = *(v96 + 16);
    a10.n128_f32[0] = a10.n128_f64[0];
    v98 = *(v96 + 24);
    v99 = *(v96 + 32);
    v100 = *(v96 + 40);
    v101 = *(v96 + 44);
    v102 = *(v96 + 48);
    v103 = *(v96 + 52);
    v104 = *(a2 + 360) + *(a2 + 360);
    v105 = *(a2 + 364) + *(a2 + 364);
    v106 = *(a2 + 368) + *(a2 + 368);
    v107 = (v103 * v103) + -0.5;
    v108 = ((v101 * v105) + (v100 * v104)) + (v102 * v106);
    a10.n128_f32[0] = ((((v103 * ((v101 * v106) - (v102 * v105))) + (v104 * v107)) + (v100 * v108)) + a10.n128_f32[0]) - *(a2 + 372);
    a9.n128_f32[0] = ((((v103 * ((v102 * v104) - (v100 * v106))) + (v105 * v107)) + (v101 * v108)) + v98) - *(a2 + 376);
    v19.n128_f32[0] = ((((v103 * ((v100 * v105) - (v101 * v104))) + (v106 * v107)) + (v102 * v108)) + v99) - *(a2 + 380);
    if ((v29 & 4) != 0)
    {
      goto LABEL_39;
    }

LABEL_86:
    v109 = v40;
    v30 = 1.0 / v109;
LABEL_87:
    v110 = fmaxf(fmaxf(fabsf(a10.n128_f32[0]), fabsf(a9.n128_f32[0])), fabsf(v19.n128_f32[0]));
    v111 = v110 > 0.000001;
    if (v110 <= 0.000001)
    {
      *(a2 + 585) = 0;
    }

    else
    {
      *(a2 + 585) = 1;
      v112 = *(a2 + 40);
      v113 = *(a2 + 32);
      v114 = (vmuls_lane_f32(a9.n128_f32[0], v113, 1) + (a10.n128_f32[0] * v113.f32[0])) + (v19.n128_f32[0] * v112);
      v115 = vmul_n_f32(v113, v114);
      v116 = v112 * v114;
      if (v114 > 0.0)
      {
        *(a3 + 8) = vaddq_f64(*(a3 + 8), vcvtq_f64_f32(v115));
        *(a3 + 24) = *(a3 + 24) + v116;
        if ((v29 & 1) == 0)
        {
          goto LABEL_94;
        }

        goto LABEL_93;
      }

      *v239 = vadd_f32(v115, *v239);
      *&v239[8] = v116 + *&v239[8];
      if (v29)
      {
LABEL_93:
        *v239 = (a10.n128_f32[0] - v115.f32[0]) + *v239;
        *&v239[4] = (a9.n128_f32[0] - v115.f32[1]) + *&v239[4];
        *&v239[8] = (v19.n128_f32[0] - v116) + *&v239[8];
      }
    }

LABEL_94:
    v217 = v111;
    a10.n128_f32[0] = v30 * a10.n128_f32[0];
    a9.n128_f32[0] = v30 * a9.n128_f32[0];
    *(a2 + 520) = a10.n128_u32[0];
    v19.n128_f32[0] = v30 * v19.n128_f32[0];
    *(a2 + 524) = a9.n128_u32[0];
    *(a2 + 528) = v19.n128_u32[0];
    goto LABEL_95;
  }

  v31 = *(a5 + 16);
  if ((v31 & 2) == 0)
  {
    goto LABEL_81;
  }

  v32 = *(a2 + 600) + 120;
  *v227 = &unk_1F5D27C08;
  *&v227[8] = v32;
  v33 = *a5;
  *&v227[16] = *(a5 + 8);
  *&v227[24] = v31;
  v34 = v31 & 8 | 6;
  if (v33)
  {
    v35 = *v33;
  }

  else
  {
    v35 = 0uLL;
  }

  v251 = v35;
  v252 = v34;
  v55 = (*(*a2 + 16))(a2);
  v56 = *(a2 + 512);
  v249 = vcvt_f32_f64(*(a2 + 496));
  v250 = v56;
  *&v230[8] = 0;
  *&v230[16] = 0;
  *&v230[24] = -1;
  *&v230[28] = 0;
  v231 = 0;
  *&v230[32] = 0uLL;
  *&v232[8] = 0;
  BYTE4(v233) = 0;
  v235 = 0;
  v236 = 0;
  *v230 = &unk_1F5D27388;
  *v232 = 2139095039;
  v57 = *(a2 + 544);
  v58 = -*(a2 + 40);
  *&v243 = vneg_f32(*(a2 + 32));
  *(&v243 + 2) = v58;
  LOWORD(v253.f64[0]) = 0;
  if ((*(*v57 + 696))(v55 + 0.0))
  {
    if (HIDWORD(v236))
    {
      v59 = v235;
    }

    else
    {
      v59 = &v230[8];
    }

    v60 = *v59;
    *&v230[24] = *(v59 + 4);
    *&v230[8] = v60;
    v61 = (v235 + 20);
    if (!HIDWORD(v236))
    {
      v61 = &v230[28];
    }

    *&v230[28] = *v61;
    v62 = (v235 + 24);
    if (!HIDWORD(v236))
    {
      v62 = &v230[32];
    }

    *&v230[32] = *v62;
    v63 = &v230[36];
    if (HIDWORD(v236))
    {
      v63 = (v235 + 28);
    }

    *&v230[36] = *v63;
    v64 = &v230[40];
    if (HIDWORD(v236))
    {
      v64 = (v235 + 32);
    }

    *&v230[40] = *v64;
    v65 = &v230[44];
    if (HIDWORD(v236))
    {
      v65 = (v235 + 36);
    }

    *&v230[44] = *v65;
    v66 = &v231;
    if (HIDWORD(v236))
    {
      v66 = (v235 + 40);
    }

    LODWORD(v231) = *v66;
    v67 = &v231 + 1;
    if (HIDWORD(v236))
    {
      v67 = (v235 + 44);
    }

    HIDWORD(v231) = *v67;
    v68 = (v235 + 48);
    if (!HIDWORD(v236))
    {
      v68 = v232;
    }

    *v232 = *v68;
    v69 = (v235 + 52);
    if (!HIDWORD(v236))
    {
      v69 = &v232[4];
    }

    *&v232[4] = *v69;
    v70 = *&v230[16];
    if (*(a2 + 280) == 1)
    {
      v71 = *(a2 + 272);
      if (v71 != *&v230[16])
      {
        if (v71)
        {
          physx::Cct::CharacterControllerManager::unregisterObservedObject(*(a2 + 288), v71);
        }

        if (v70)
        {
          physx::Cct::CharacterControllerManager::registerObservedObject(*(a2 + 288), v70);
        }
      }
    }

    *(a2 + 272) = v70;
    v72 = *&v230[8];
    if (*(a2 + 304) == 1)
    {
      v73 = *v215;
      if (*v215 != *&v230[8])
      {
        if (v73)
        {
          physx::Cct::CharacterControllerManager::unregisterObservedObject(*(a2 + 312), v73);
        }

        if (v72)
        {
          physx::Cct::CharacterControllerManager::registerObservedObject(*(a2 + 312), v72);
        }
      }
    }

    *(a2 + 296) = v72;
    v74 = *&v230[16];
    (*(**&v230[8] + 152))(&v243);
    (*(*v74 + 160))(&v253, v74);
    v75 = (*(&v243 + 3) * *(&v243 + 3)) + -0.5;
    v76 = (((*(&v254 + 1) + *(&v254 + 1)) * *(&v243 + 1)) + (*&v243 * (*&v254 + *&v254))) + (*(&v243 + 2) * (v255 + v255));
    v77 = *&v244 + (((*(&v243 + 3) * ((*(&v243 + 1) * (v255 + v255)) - (*(&v243 + 2) * (*(&v254 + 1) + *(&v254 + 1))))) + ((*&v254 + *&v254) * v75)) + (*&v243 * v76));
    v78 = *(&v244 + 1) + (((*(&v243 + 3) * ((*(&v243 + 2) * (*&v254 + *&v254)) - (*&v243 * (v255 + v255)))) + ((*(&v254 + 1) + *(&v254 + 1)) * v75)) + (*(&v243 + 1) * v76));
    v79 = *&v245 + (((*(&v243 + 3) * ((*&v243 * (*(&v254 + 1) + *(&v254 + 1))) - (*(&v243 + 1) * (*&v254 + *&v254)))) + ((v255 + v255) * v75)) + (*(&v243 + 2) * v76));
    v80 = (((*&v243 * *(&v253.f64[1] + 1)) + (*(&v243 + 3) * *v253.f64)) + (*(&v243 + 1) * *&v253.f64[1])) - (*(v253.f64 + 1) * *(&v243 + 2));
    v81 = (((*(&v243 + 1) * *(&v253.f64[1] + 1)) + (*(&v243 + 3) * *(v253.f64 + 1))) + (*(&v243 + 2) * *v253.f64)) - (*&v253.f64[1] * *&v243);
    v82 = (((*(&v243 + 2) * *(&v253.f64[1] + 1)) + (*(&v243 + 3) * *&v253.f64[1])) + (*&v243 * *(v253.f64 + 1))) - (*v253.f64 * *(&v243 + 1));
    v83 = (((*(&v243 + 3) * *(&v253.f64[1] + 1)) - (*&v243 * *v253.f64)) - (*(&v243 + 1) * *(v253.f64 + 1))) - (*(&v243 + 2) * *&v253.f64[1]);
    v84 = 0.0 - ((v55 - *v232) * *(a2 + 40));
    *v17 = vsub_f32(0, vmul_n_f32(*(a2 + 32), v55 - *v232));
    *(a2 + 356) = v84;
    v85 = (0.0 - v77) + (0.0 - v77);
    v86 = (0.0 - v78) + (0.0 - v78);
    v87 = (0.0 - v79) + (0.0 - v79);
    v88 = (v83 * v83) + -0.5;
    v89 = ((v86 * v81) + (v80 * v85)) + (v82 * v87);
    *(a2 + 336) = ((v85 * v88) - (((v81 * v87) - (v82 * v86)) * v83)) + (v80 * v89);
    *(a2 + 340) = ((v86 * v88) - (((v82 * v85) - (v80 * v87)) * v83)) + (v81 * v89);
    *(a2 + 344) = ((v87 * v88) - (((v80 * v86) - (v81 * v85)) * v83)) + (v82 * v89);
    *(a2 + 552) = (*(**(a2 + 544) + 64))(*(a2 + 544)) - 1;
  }

  v20 = (a2 + 296);
  if (a6)
  {
    v243 = 0uLL;
    LODWORD(v244) = -1;
    WORD2(v244) = 0;
    v246 = 0uLL;
    v245 = 0;
    v247 = 2139095039;
    v248 = 0;
    v242 = 0;
    v19.n128_f32[0] = -*(a2 + 40);
    *&v253.f64[0] = vneg_f32(*(a2 + 32));
    LODWORD(v253.f64[1]) = v19.n128_u32[0];
    v19.n128_f32[0] = v55 + 0.0;
    v90 = physx::Cct::ObstacleContext::raycastSingle(a6, &v243, &v249, &v253, &v242, v19);
    if (v90)
    {
      v91 = *&v247;
      a9.n128_u32[0] = *v232;
      if (*&v247 < *v232)
      {
        *(a2 + 320) = v242;
        v92 = v55 - v91;
        a9.n128_f32[0] = 0.0 - (v92 * *(a2 + 40));
        v93 = COERCE_DOUBLE(vsub_f32(0, vmul_n_f32(*(a2 + 32), v92)));
        *(v17 + 24) = v93;
        *(a2 + 380) = a9.n128_u32[0];
        v253 = 0uLL;
        v254 = 0;
        worldToLocal(&v240, v90, &v253, v93, a9.n128_f64[0], 0.0);
        *(a2 + 360) = v240;
        *(a2 + 368) = v241;
      }
    }
  }

  if (!*(a2 + 272))
  {
LABEL_81:
    if (*(a2 + 320) == -1)
    {
      v217 = 0;
      *(a2 + 585) = 0;
      v19.n128_u64[0] = 0;
      *(a2 + 520) = 0;
      *(a2 + 528) = 0;
      goto LABEL_95;
    }

    goto LABEL_82;
  }

LABEL_28:
  v28 = *v20;
  if (*(*v20 + 4) == 6)
  {
    v29 = 0;
    v19.n128_u64[0] = 0;
    v30 = 1.0;
    a9.n128_u64[0] = 0;
    a10.n128_u64[0] = 0;
    goto LABEL_87;
  }

  v36 = (*(**(a2 + 544) + 64))(*(a2 + 544));
  if (v36 != *(a2 + 552))
  {
    *(a2 + 552) = v36;
    v37 = *(a2 + 560);
    v38 = *(a2 + 568);
    *(a2 + 568) = v37;
    v39 = *(a2 + 88);
    if (v39)
    {
      (**v39)(v230);
      v29 = v230[0];
    }

    else
    {
      v29 = 0;
    }

    v40 = v37 - v38;
    v41 = *(a2 + 272);
    (*(*v28 + 152))(v230, v28);
    (*(*v41 + 160))(&v243, v41);
    v42 = (*&v230[12] * *&v230[12]) + -0.5;
    v43 = (((*(&v244 + 1) + *(&v244 + 1)) * *&v230[4]) + (*v230 * (*&v244 + *&v244))) + (*&v230[8] * (*&v245 + *&v245));
    a10.n128_f32[0] = *&v230[16] + (((*&v230[12] * ((*&v230[4] * (*&v245 + *&v245)) - (*&v230[8] * (*(&v244 + 1) + *(&v244 + 1))))) + ((*&v244 + *&v244) * v42)) + (*v230 * v43));
    v44 = *&v230[20] + (((*&v230[12] * ((*&v230[8] * (*&v244 + *&v244)) - (*v230 * (*&v245 + *&v245)))) + ((*(&v244 + 1) + *(&v244 + 1)) * v42)) + (*&v230[4] * v43));
    a9.n128_f32[0] = *&v230[24] + (((*&v230[12] * ((*v230 * (*(&v244 + 1) + *(&v244 + 1))) - (*&v230[4] * (*&v244 + *&v244)))) + ((*&v245 + *&v245) * v42)) + (*&v230[8] * v43));
    v45 = (((*v230 * *(&v243 + 3)) + (*&v230[12] * *&v243)) + (*&v230[4] * *(&v243 + 2))) - (*(&v243 + 1) * *&v230[8]);
    v46 = (((*&v230[4] * *(&v243 + 3)) + (*&v230[12] * *(&v243 + 1))) + (*&v230[8] * *&v243)) - (*(&v243 + 2) * *v230);
    v47 = (((*&v230[8] * *(&v243 + 3)) + (*&v230[12] * *(&v243 + 2))) + (*v230 * *(&v243 + 1))) - (*&v243 * *&v230[4]);
    v48 = (((*&v230[12] * *(&v243 + 3)) - (*v230 * *&v243)) - (*&v230[4] * *(&v243 + 1))) - (*&v230[8] * *(&v243 + 2));
    v49 = *(a2 + 336) + *(a2 + 336);
    v50 = *(a2 + 340) + *(a2 + 340);
    v51 = *(a2 + 344) + *(a2 + 344);
    v19.n128_f32[0] = (v48 * v48) + -0.5;
    v52 = ((v46 * v50) + (v45 * v49)) + (v47 * v51);
    v53 = ((v48 * ((v46 * v51) - (v47 * v50))) + (v49 * v19.n128_f32[0])) + (v45 * v52);
    v54 = ((v48 * ((v47 * v49) - (v45 * v51))) + (v50 * v19.n128_f32[0])) + (v46 * v52);
    v19.n128_f32[0] = a9.n128_f32[0] + (((v48 * ((v45 * v50) - (v46 * v49))) + (v51 * v19.n128_f32[0])) + (v47 * v52));
    a10.n128_f32[0] = (a10.n128_f32[0] + v53) - *(a2 + 348);
    a9.n128_f32[0] = (v44 + v54) - *(a2 + 352);
    v19.n128_f32[0] = v19.n128_f32[0] - *(a2 + 356);
    if ((v29 & 4) == 0)
    {
      goto LABEL_86;
    }
  }

LABEL_39:
  v217 = *(a2 + 585);
LABEL_95:
  v220 = a1;
  v117 = *(a2 + 600);
  v224 = (v117 + 88);
  v118 = (*(*v117 + 16))(v117, v19, a9, a10);
  if (v118)
  {
    v119 = 0;
    v120 = *(*(a2 + 600) + 104);
    v121 = v118 << 16;
    do
    {
      v122 = *v120;
      if (*v120 == a2)
      {
        goto LABEL_115;
      }

      v123 = *(a5 + 24);
      if (v123)
      {
        v124 = (*(*a2 + 32))(a2);
        v125 = (*(*v122 + 32))(v122);
        if (!(*(*v123 + 16))(v123, v124, v125))
        {
          goto LABEL_115;
        }
      }

      v126 = v122[2];
      if (v126 == 1)
      {
        physx::Cct::CapsuleController::getCapsule((v122 - 2), v230);
        v129 = *(v117 + 96);
        if ((*(v117 + 100) & 0x7FFFFFFFu) <= v129)
        {
          physx::shdfnd::Array<physx::PxExtendedCapsule,physx::shdfnd::ReflectionAllocator<physx::PxExtendedCapsule>>::growAndPushBack(v224, v230);
        }

        else
        {
          v130 = *(v117 + 88) + 56 * v129;
          *v130 = *v230;
          *(v130 + 16) = *&v230[16];
          *(v130 + 32) = *&v230[32];
          *(v130 + 48) = v231;
          ++*(v117 + 96);
        }

        *&v243 = v119 & 0xFFFF0000;
        v133 = *(v117 + 80);
        if ((*(v117 + 84) & 0x7FFFFFFFu) <= v133)
        {
          v132 = v117 + 72;
          goto LABEL_114;
        }

        *(*(v117 + 72) + 8 * v133) = v119 & 0xFFFF0000;
        *(v117 + 80) = v133 + 1;
      }

      else if (!v126)
      {
        physx::Cct::BoxController::getOBB((v122 - 2), v230);
        v127 = *(v117 + 64);
        if ((*(v117 + 68) & 0x7FFFFFFFu) <= v127)
        {
          physx::shdfnd::Array<physx::PxExtendedBox,physx::shdfnd::ReflectionAllocator<physx::PxExtendedBox>>::growAndPushBack(v117 + 56, v230);
        }

        else
        {
          v128 = *(v117 + 56) + 56 * v127;
          *v128 = *v230;
          *(v128 + 16) = *&v230[16];
          *(v128 + 24) = *&v230[24];
          *(v128 + 40) = *&v230[40];
          *(v128 + 48) = v231;
          ++*(v117 + 64);
        }

        *&v243 = v119 & 0xFFFF0000;
        v131 = *(v117 + 48);
        if ((*(v117 + 52) & 0x7FFFFFFFu) <= v131)
        {
          v132 = v117 + 40;
LABEL_114:
          physx::shdfnd::Array<void const*,physx::shdfnd::ReflectionAllocator<void const*>>::growAndPushBack(v132, &v243);
          goto LABEL_115;
        }

        *(*(v117 + 40) + 8 * v131) = v119 & 0xFFFF0000;
        *(v117 + 48) = v131 + 1;
      }

LABEL_115:
      v119 += 0x10000;
      ++v120;
    }

    while (v121 != v119);
  }

  v221 = a5;
  if (a6)
  {
    v134 = *(a6 + 16);
    if (v134)
    {
      v135 = 0;
      v136 = 0;
      v138 = (v216 & 4) == 0 || *&v225 == 0;
      v139 = 80 * v134;
      while (1)
      {
        v140 = *(a6 + 8);
        v141 = v140 + v136;
        v243 = *(v140 + v136 + 24);
        v244 = *(v140 + v136 + 40);
        *&v142 = *(v140 + v136 + 64);
        v245 = v142;
        v143 = *(v140 + v136 + 72);
        v144 = *(v140 + v136 + 48);
        v145 = *(v140 + v136 + 52);
        *&v146 = __PAIR64__(v144, v143);
        *(&v146 + 1) = v145;
        v246 = v146;
        v147 = *(v140 + v136 + 60);
        LODWORD(v247) = v147;
        v148 = *(v117 + 64);
        if ((*(v117 + 68) & 0x7FFFFFFFu) <= v148)
        {
          physx::shdfnd::Array<physx::PxExtendedBox,physx::shdfnd::ReflectionAllocator<physx::PxExtendedBox>>::growAndPushBack(v117 + 56, &v243);
        }

        else
        {
          v149 = *(v117 + 56) + 56 * v148;
          v150 = *(v141 + 24);
          *(v149 + 16) = *(v141 + 40);
          *v149 = v150;
          *(&v142 + 1) = __PAIR64__(v144, v143);
          *(v149 + 24) = v142;
          *(v149 + 40) = v145;
          *(v149 + 48) = v147;
          ++*(v117 + 64);
        }

        *v230 = v135 & 0xFFFF0000 | 1;
        v151 = *(v117 + 48);
        if ((*(v117 + 52) & 0x7FFFFFFFu) > v151)
        {
          break;
        }

        physx::shdfnd::Array<void const*,physx::shdfnd::ReflectionAllocator<void const*>>::growAndPushBack(v117 + 40, v230);
        if (!v138)
        {
          goto LABEL_132;
        }

LABEL_133:
        v136 += 80;
        v135 += 0x10000;
        if (v139 == v136)
        {
          goto LABEL_134;
        }
      }

      *(*(v117 + 40) + 8 * v151) = v135 & 0xFFFF0000 | 1;
      *(v117 + 48) = v151 + 1;
      if (v138)
      {
        goto LABEL_133;
      }

LABEL_132:
      memset(v230, 0, 32);
      *&v230[32] = 0x3F80000000000000uLL;
      v231 = 0;
      v233 = 0;
      *&v232[4] = 0;
      *v232 = 1065353216;
      v234 = 1065353216;
      v235 = 0;
      v236 = 0;
      v237 = 1065353216;
      v238 = v225;
      *&v230[4] = -16711681;
      v152 = *(v140 + v136 + 40);
      *v227 = *(v141 + 48);
      *&v227[16] = vcvt_f32_f64(*(v141 + 24));
      *&v227[24] = v152;
      physx::Cm::RenderOutput::operator<<(v230, v227);
      v153 = -*(v141 + 72);
      *v227 = vneg_f32(*(v141 + 64));
      *&v227[8] = v153;
      *&v227[12] = *(v141 + 64);
      *&v227[20] = *(v141 + 72);
      v227[24] = 1;
      physx::Cm::operator<<(v230, v227);
      goto LABEL_133;
    }

LABEL_134:
    v154 = *(a6 + 32);
    if (v154)
    {
      v155 = 0;
      v156 = 0;
      v158 = (v216 & 4) == 0 || *&v225 == 0;
      v159 = 72 * v154;
      while (1)
      {
        v160 = *(a6 + 24) + v156;
        v161 = *(v160 + 48);
        v162 = *(v160 + 52);
        v163 = v161 + v161;
        v165 = *(v160 + 56);
        v164 = *(v160 + 60);
        v166 = v164 + v164;
        v167 = ((v164 * (v164 + v164)) + -1.0) + (v161 * (v161 + v161));
        v168 = (v163 * v162) + (v165 * (v164 + v164));
        v169 = (v163 * v165) - (v162 * v166);
        v170 = *(v160 + 64);
        v171 = v170 * v168;
        v172 = v169 * v170;
        v173 = (v167 * v170);
        v174 = *(v160 + 24);
        v175 = *(v160 + 32);
        v176 = v171;
        v177 = *(v160 + 40);
        v178 = v172;
        *v227 = v174 - v173;
        *&v227[8] = v175 - v176;
        *&v227[16] = v177 - v178;
        *&v227[24] = v174 + v173;
        *&v228 = v175 + v176;
        *(&v228 + 1) = v177 + v178;
        LODWORD(v229) = *(v160 + 68);
        v179 = *(v117 + 96);
        if ((*(v117 + 100) & 0x7FFFFFFFu) <= v179)
        {
          physx::shdfnd::Array<physx::PxExtendedCapsule,physx::shdfnd::ReflectionAllocator<physx::PxExtendedCapsule>>::growAndPushBack(v224, v227);
        }

        else
        {
          v180 = *(v117 + 88) + 56 * v179;
          *v180 = *v227;
          *(v180 + 16) = *&v227[16];
          *(v180 + 32) = v228;
          *(v180 + 48) = v229;
          ++*(v117 + 96);
        }

        *v230 = v155 & 0xFFFF0000 | 2;
        v181 = *(v117 + 80);
        if ((*(v117 + 84) & 0x7FFFFFFFu) > v181)
        {
          break;
        }

        physx::shdfnd::Array<void const*,physx::shdfnd::ReflectionAllocator<void const*>>::growAndPushBack(v117 + 72, v230);
        if (!v158)
        {
          goto LABEL_149;
        }

LABEL_150:
        v156 += 72;
        v155 += 0x10000;
        if (v159 == v156)
        {
          goto LABEL_151;
        }
      }

      *(*(v117 + 72) + 8 * v181) = v155 & 0xFFFF0000 | 2;
      *(v117 + 80) = v181 + 1;
      if (v158)
      {
        goto LABEL_150;
      }

LABEL_149:
      *&v230[32] = 0x3F80000000000000uLL;
      memset(v230, 0, 32);
      v231 = 0;
      v233 = 0;
      *&v232[4] = 0;
      *v232 = 1065353216;
      v234 = 1065353216;
      v235 = 0;
      v236 = 0;
      v237 = 1065353216;
      v238 = v225;
      *&v230[4] = -16711681;
      v183 = *(v160 + 64);
      v182 = *(v160 + 68);
      v184 = *(v160 + 40);
      v253 = *(v160 + 48);
      v254 = vcvt_f32_f64(*(v160 + 24));
      v255 = v184;
      physx::PxMat44::PxMat44(&v243, &v253);
      physx::Cm::RenderOutput::outputCapsule(v230, &v243, v182, v183);
      goto LABEL_150;
    }
  }

LABEL_151:
  *v230 = *(v117 + 64);
  if (*v230)
  {
    v185 = *(v117 + 56);
    v186 = *(v117 + 40);
  }

  else
  {
    v185 = 0;
    v186 = 0;
  }

  *&v230[8] = v185;
  *&v230[16] = v186;
  *&v230[24] = *(v117 + 96);
  if (*&v230[24])
  {
    v187 = *v224;
    v188 = *(v117 + 72);
  }

  else
  {
    v187 = 0;
    v188 = 0;
  }

  *&v230[32] = v187;
  *&v230[40] = v188;
  *&v243 = a2;
  *(&v243 + 1) = a6;
  v253.f64[0] = *(a2 + 544);
  v253.f64[1] = v225;
  v254 = *(a2 + 600) + 120;
  *(a2 + 468) &= ~2u;
  v251.n128_u64[0] = 0;
  v249 = 0;
  v189 = v222[1];
  v191 = v222[2];
  v190 = v222[3];
  physx::Cct::SweepTest::moveCharacter(v227, v218, &v253, &v243, v222, v239, v230, v221, a8, a7, v217 & 1, &v251, &v249);
  v192 = v227[0];
  *v220 = v227[0];
  v193 = *(a2 + 468);
  if (v193)
  {
    *(a2 + 468) = v193 | 2;
    v222[1] = v189;
    v222[2] = v191;
    v222[3] = v190;
    v194 = *v239;
    if (*(a2 + 12) == 1)
    {
      _S3 = *&v239[8];
      _D4 = *(a2 + 36);
      __asm { FMLA            S2, S3, V4.S[1] }

      v194 = *(a2 + 32) * _S2;
      v201 = vmul_n_f32(_D4, _S2);
    }

    else
    {
      v201 = *&v239[4];
    }

    *v227 = v194;
    *&v227[4] = v201;
    physx::Cct::SweepTest::moveCharacter(&v240, v218, &v253, &v243, v222, v227, v230, v221, a8, a7, v217 & 1, &v251, &v249);
    v192 = v240.i8[0];
    *v220 = v240.i8[0];
    *(a2 + 468) &= ~2u;
  }

  v202 = v251.n128_u64[0];
  if (*(a2 + 304) == 1)
  {
    v203 = *v215;
    if (*v215 != v251.n128_u64[0])
    {
      if (v203)
      {
        physx::Cct::CharacterControllerManager::unregisterObservedObject(*(a2 + 312), v203);
      }

      if (v202)
      {
        physx::Cct::CharacterControllerManager::registerObservedObject(*(a2 + 312), v202);
      }
    }
  }

  *(a2 + 296) = v202;
  v204 = v249;
  if (*(a2 + 280) == 1)
  {
    v205 = *(a2 + 272);
    if (v205 != v249)
    {
      if (v205)
      {
        physx::Cct::CharacterControllerManager::unregisterObservedObject(*(a2 + 288), v205);
      }

      if (v204)
      {
        physx::Cct::CharacterControllerManager::registerObservedObject(*(a2 + 288), v204);
      }
    }
  }

  *(a2 + 272) = v204;
  *(a2 + 584) = v192;
  v206 = *(v222 + 1);
  *(a2 + 512) = v222[3];
  *(a2 + 496) = v206;
  v207 = *(a2 + 488);
  if (v207)
  {
    v208 = v189 - v222[1];
    v209 = v191 - v222[2];
    v210 = v190 - v222[3];
    if ((((v209 * v209) + (v208 * v208)) + (v210 * v210)) != 0.0)
    {
      (*(*v207 + 152))(v227);
      v211 = *(a2 + 512);
      *&v227[16] = vcvt_f32_f64(*(a2 + 496));
      *&v227[24] = v211;
      *v227 = *(a2 + 16);
      (*(**(a2 + 488) + 496))();
    }
  }

  v212 = *(a2 + 600);
  resetOrClear<physx::shdfnd::Array<void const*,physx::shdfnd::ReflectionAllocator<void const*>>>((v212 + 10));
  if ((v212[17] & 0x7FFFFFFF) != 0)
  {
    if (v212[16] <= (v212[17] & 0x7FFFFFFF) >> 1)
    {
      physx::shdfnd::Array<physx::IG::EdgeInstance *,physx::shdfnd::ReflectionAllocator<physx::IG::EdgeInstance *>>::resize((v212 + 14));
      physx::shdfnd::Array<physx::PxExtendedBox,physx::shdfnd::ReflectionAllocator<physx::PxExtendedBox>>::recreate((v212 + 14), v212[16]);
    }

    else
    {
      v212[16] = 0;
    }
  }

  result = resetOrClear<physx::shdfnd::Array<void const*,physx::shdfnd::ReflectionAllocator<void const*>>>((v212 + 18));
  if ((v212[25] & 0x7FFFFFFF) != 0)
  {
    if (v212[24] <= (v212[25] & 0x7FFFFFFF) >> 1)
    {
      physx::shdfnd::Array<physx::IG::EdgeInstance *,physx::shdfnd::ReflectionAllocator<physx::IG::EdgeInstance *>>::resize((v212 + 22));
      result = physx::shdfnd::Array<physx::PxExtendedCapsule,physx::shdfnd::ReflectionAllocator<physx::PxExtendedCapsule>>::recreate((v212 + 22), v212[24]);
    }

    else
    {
      v212[24] = 0;
    }
  }

  if (v223 && ((physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled & 1) != 0))
  {
    return pthread_mutex_unlock(*(a2 + 592));
  }

  return result;
}

uint64_t physx::Cct::BoxController::move@<X0>(uint64_t a1@<X0>, float32x2_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>, float a6@<S0>, __n128 a7@<Q1>)
{
  v9 = &unk_1F5D27CB0;
  v13 = 0;
  v11 = *(a1 + 520);
  v10 = *(a1 + 504);
  v7 = v10;
  v7.n128_u32[0] = *(a1 + 624);
  v14 = *(a1 + 616);
  v15 = v7.n128_u32[0];
  v12 = v14;
  return physx::Cct::Controller::move(a5, a1 + 8, &v9, a2, a3, a4, 0, a6, a7, v7);
}

uint64_t physx::Cct::CapsuleController::move@<X0>(uint64_t a1@<X0>, float32x2_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>, float a6@<S0>, __n128 a7@<Q1>)
{
  v10 = &unk_1F5D27CD8;
  v14 = 1;
  v12 = *(a1 + 520);
  v11 = *(a1 + 504);
  v7 = v11;
  v8 = *(a1 + 620);
  v15 = *(a1 + 616);
  v16 = v8;
  v7.n128_f32[0] = v15 + (v8 * 0.5);
  v13 = v7.n128_f32[0];
  return physx::Cct::Controller::move(a5, a1 + 8, &v10, a2, a3, a4, *(a1 + 624) == 1, a6, a7, v7);
}

uint64_t outputConvexToStream(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, float64x2_t *a7, uint64_t a8, uint64_t a9, _WORD *a10)
{
  v167 = a8;
  *&v168.f64[0] = a3;
  v170 = a2;
  v190 = *MEMORY[0x1E69E9840];
  v183 = 4;
  *v184 = xmmword_1E304F3C0;
  *&v184[16] = 0;
  *&v184[24] = 1065353216;
  v185 = 0;
  v186 = 1;
  v187 = 0;
  v188 = 0;
  v14 = *(*a1 + 120);
  v169 = a1;
  v14(a1, &v183);
  v15 = v185;
  v16 = (*(*v185 + 72))(v185);
  v17 = (*(*v15 + 64))(v15);
  v171 = a9;
  if (v16)
  {
    v19 = v17;
    v166 = *&a7;
    v20 = 0;
    v21 = 0;
    do
    {
      v22 = (*(*v15 + 80))(v15, v21, &v173);
      v20 = v20 + v175.u16[2] - 2;
      v21 = (v21 + 1);
    }

    while (v16 != v21);
    MEMORY[0x1EEE9AC00](v22);
    v24 = &v159 - v23;
    bzero(&v159 - v23, v25);
    v26 = 0;
    v27 = v24;
    do
    {
      (*(*v15 + 80))(v15, v26, &v173);
      v28 = v175.u16[2];
      if (v175.u16[2] == 2)
      {
        v33 = v27;
      }

      else
      {
        v29 = *v19;
        v30 = 2;
        do
        {
          v31 = v19[(v30 - 1) % v28];
          v32 = v19[v30 % v28];
          *v27 = v29;
          v27[1] = v31;
          v33 = v27 + 3;
          v27[2] = v32;
          ++v30;
          v27 += 3;
        }

        while (v28 != v30);
      }

      v19 += v28;
      v26 = (v26 + 1);
      v27 = v33;
    }

    while (v26 != v16);
    *&a7 = v166;
  }

  else
  {
    v20 = 0;
    v24 = &v189;
  }

  v34 = vadd_f32(*&v184[12], *&v184[12]);
  v35 = vrev64_s32(vmul_f32(*&v184[12], v34));
  v36 = vmul_lane_f32(v34, *&v184[12], 1);
  v37 = *(*&v168.f64[0] + 24);
  v38 = *(*&v168.f64[0] + 8);
  v39 = vadd_f32(**&v168.f64[0], **&v168.f64[0]);
  v40.i32[0] = **&v168.f64[0];
  v40.i32[1] = v39.i32[1];
  v41 = vmul_f32(**&v168.f64[0], v40);
  v42 = vadd_f32(**&v168.f64[0], v40);
  v43 = vmul_f32(**&v168.f64[0], v42).f32[0];
  v42.i32[1] = v41.i32[1];
  v44 = vrev64_s32(vmul_n_f32(v38, v42.f32[0]));
  v45 = vmul_lane_f32(v38, v39, 1);
  v46 = vmul_n_f32(vrev64_s32(v38), vadd_f32(v38, v38).f32[0]);
  __asm { FMOV            V23.2S, #1.0 }

  v52 = vzip2_s32(**&v168.f64[0], _D23);
  v53 = vsub_f32(v52, v42);
  v54 = vmul_f32(v52, v42);
  v38.i32[0] = vadd_f32(v54, v46).u32[0];
  v38.i32[1] = vsub_f32(v53, v46).i32[1];
  v55 = 1.0 - v43;
  v54.f32[1] = 1.0 - v43;
  v56 = vsub_f32(v44, v45);
  v57 = vsub_f32(v54, v46);
  v58 = vadd_f32(v45, v44);
  v54.i32[0] = vsub_f32(v45, v44).u32[0];
  v54.i32[1] = v58.i32[1];
  v59 = vrev64_s32(v57);
  v45.f32[0] = v55 - v41.f32[1];
  v60 = vadd_f32(*&v184[20], *&v184[20]);
  v61 = vmul_n_f32(*&v184[20], v34.f32[0]);
  v62 = vrev64_s32(vmul_lane_f32(*&v184[20], v34, 1));
  v63 = vmul_lane_f32(v60, *&v184[20], 1);
  v64 = vdup_lane_s32(vsub_f32(v36, v63), 0);
  v64.i32[0] = vadd_f32(v36, v63).u32[0];
  v65 = vsub_f32(_D23, v35);
  v66 = vsub_f32(v65, vdup_lane_s32(vmul_f32(*&v184[20], v60), 0));
  v67 = vadd_f32(v61, v62);
  v63.i32[0] = vsub_f32(v61, v62).u32[0];
  v63.i32[1] = v67.i32[1];
  v68 = vsub_f32(v62, v61);
  v69 = vmul_f32(vzip1_s32(v66, v64), *v184);
  v70 = vmul_f32(vzip2_s32(v64, v66), *v184);
  v67.i32[1] = v68.i32[1];
  v35.f32[0] = vsub_f32(vdup_lane_s32(v65, 1), v35).f32[0];
  v71 = vmul_f32(v67, *v184);
  v72 = vmul_n_f32(v63, *&v184[8]);
  v73 = vrev64_s32(v64);
  v74 = vmul_f32(v66, v70);
  v75 = vadd_f32(vmul_f32(v66, v71), vmul_f32(v64, vrev64_s32(v71)));
  v76 = vadd_f32(vadd_f32(vmul_f32(v66, v69), vrev64_s32(vmul_f32(v73, v69))), vmul_n_f32(v63, v72.f32[0]));
  v77 = vadd_f32(vadd_f32(v74, vrev64_s32(vmul_f32(v73, v70))), vmul_lane_f32(v63, v72, 1));
  v78 = vadd_f32(v75, vmul_n_f32(v63, *&v184[8] * v35.f32[0]));
  v79 = (*&v184[8] * v35.f32[0]) * v35.f32[0];
  v80 = vadd_f32(vadd_f32(vmul_n_f32(vzip1_s32(v69, v70), v67.f32[0]), vmul_lane_f32(vzip2_s32(v69, v70), v68, 1)), vmul_n_f32(v72, v35.f32[0]));
  v81 = vaddv_f32(vmul_f32(v67, v71)) + v79;
  v82 = vmuls_lane_f32(*v76.i32, v56, 1) + vmul_f32(v58, v77).f32[0];
  v83 = v45.f32[0] * *v78.i32;
  v84 = vadd_f32(vmul_f32(v38, vrev64_s32(v76)), vrev64_s32(vmul_f32(v57, v77)));
  v85 = vmul_f32(v54, vrev64_s32(v78));
  v86 = vadd_f32(vmul_f32(v38, v76), vmul_f32(v59, v77));
  v87 = vmul_f32(v54, v78);
  *&v18 = vadd_f32(vdup_lane_s32(vmul_f32(v56, v76), 1), vmul_lane_f32(v58, v77, 1));
  v88 = vmuls_lane_f32(v45.f32[0], v78, 1);
  v89 = vzip2_s32(v57, v38);
  v38.i32[1] = v59.i32[1];
  v90 = vadd_f32(vmul_f32(v38, v80), vmul_f32(v89, vrev64_s32(v80)));
  v91 = vmuls_lane_f32(*v80.i32, v56, 1) + vmul_lane_f32(v58, v80, 1).f32[0];
  v92 = vmul_n_f32(v54, v81);
  v93 = v45.f32[0] * v81;
  v94 = vcvtq_f64_f32(*(*&v168.f64[0] + 16));
  v168 = *a7;
  v95 = vcvt_f32_f64(vsubq_f64(v94, v168));
  v166 = a7[1].f64[0];
  v96 = v37 - v166;
  v97 = *(a4 + 8);
  v98 = *(a4 + 12) & 0x7FFFFFFF;
  v99 = v97 + 13;
  if (v97 + 13 > v98)
  {
    v100 = 2 * *(a4 + 12);
    if (!v98)
    {
      v100 = 2;
    }

    if (v99 <= v100)
    {
      v101 = v100;
    }

    else
    {
      v101 = v99;
    }

    v164 = v82;
    v162 = v84;
    v160 = v86;
    v165 = v18;
    v102 = v91;
    v163 = v92;
    v103 = v93;
    v161 = v95;
    v104 = v96;
    physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::recreate(a4, v101);
    v96 = v104;
    v95 = v161;
    v93 = v103;
    v92 = v163;
    v91 = v102;
    LODWORD(v18) = v165;
    v86 = v160;
    v84 = v162;
    v82 = v164;
    v97 = *(a4 + 8);
  }

  v105 = v83 + v82;
  v106 = vadd_f32(v87, v86);
  v107 = vadd_f32(v85, v84);
  v108 = v88 + *&v18;
  v109 = vadd_f32(v92, v90);
  v110 = v93 + v91;
  v111 = vrev64_s32(v95);
  v112 = v96;
  v113 = *a4 + 4 * v97;
  *(a4 + 8) = v99;
  *v113 = 2;
  *(v113 + 4) = v169;
  *(v113 + 12) = v170;
  v114 = *a7;
  *(v113 + 36) = a7[1].f64[0];
  *(v113 + 20) = v114;
  *(v113 + 48) = *(a5 + 2);
  result = (*(*v15 + 56))(v15);
  v116 = result;
  v117 = v171;
  if (*(v171 + 56))
  {
    v118 = v166;
    v119 = *(v167 + 20);
    v120 = *(v167 + 8);
    v121 = (v119 - v120) * 0.5;
    v122 = ((v119 + v120) * 0.5) - v118;
    v123 = *(v167 + 12);
    v124 = vmul_f32(vsub_f32(v123, *v167), 0x3F0000003F000000);
    v125 = vsub_f32(vmul_f32(vadd_f32(v123, *v167), 0x3F0000003F000000), vcvt_f32_f64(v168));
    v179 = vsub_f32(v125, v124);
    v180 = v122 - v121;
    v181 = vadd_f32(v124, v125);
    v182 = v121 + v122;
    for (i = 0; v20; v24 += 12)
    {
      v127 = *(v24 + 1);
      v128 = (v116 + 12 * *v24);
      v129 = v128[1].f32[0];
      v130 = vadd_f32(vmul_f32(v106, *v128), vmul_f32(v107, vrev64_s32(*v128)));
      v131 = (v105 * COERCE_FLOAT(*v128)) + vmuls_lane_f32(v108, *v128, 1);
      LODWORD(v128) = *(v24 + 2);
      v173 = vrev64_s32(vadd_f32(vadd_f32(v130, vmul_n_f32(v109, v129)), v111));
      v174 = (v131 + (v110 * v129)) + v112;
      v132 = (v116 + 12 * v127);
      v133 = v132[1].f32[0];
      v134 = (((v105 * COERCE_FLOAT(*v132)) + vmuls_lane_f32(v108, *v132, 1)) + (v110 * v133)) + v112;
      v175 = vrev64_s32(vadd_f32(vadd_f32(vadd_f32(vmul_f32(v106, *v132), vmul_f32(v107, vrev64_s32(*v132))), vmul_n_f32(v109, v133)), v111));
      v176 = v134;
      v135 = (v116 + 12 * v128);
      v136 = v135[1].f32[0];
      --v20;
      v137 = vrev64_s32(vadd_f32(vadd_f32(vadd_f32(vmul_f32(v106, *v135), vmul_f32(v107, vrev64_s32(*v135))), vmul_n_f32(v109, v136)), v111));
      v178 = (((v105 * COERCE_FLOAT(*v135)) + vmuls_lane_f32(v108, *v135, 1)) + (v110 * v136)) + v112;
      v172 = 0;
      v138 = *(v117 + 52);
      v177 = v137;
      result = tessellateTriangle(&v172, &v173, -1, a5, a6, &v179, a10, v138);
      i += v172;
    }

    *(v113 + 44) = i;
  }

  else
  {
    v139 = *(a5 + 2);
    v140 = *(a5 + 3) & 0x7FFFFFFF;
    v141 = v139 + v20;
    v142 = v139 + v20 + 1;
    if (v142 > v140)
    {
      v143 = 2 * *(a5 + 3);
      if (!v140)
      {
        v143 = 2;
      }

      if (v142 <= v143)
      {
        v144 = v143;
      }

      else
      {
        v144 = v142;
      }

      result = physx::shdfnd::Array<physx::PxTriangle,physx::shdfnd::ReflectionAllocator<physx::PxTriangle>>::recreate(a5, v144);
      v139 = *(a5 + 2);
    }

    v145 = *a5;
    *(a5 + 2) = v141;
    *(v113 + 44) = v20;
    if (v20)
    {
      v146 = v145 + 36 * v139;
      do
      {
        v147 = *(v24 + 1);
        v148 = *(v24 + 2);
        v149 = (v116 + 12 * *v24);
        v150 = v149[1].f32[0];
        v151 = (((v105 * COERCE_FLOAT(*v149)) + vmuls_lane_f32(v108, *v149, 1)) + (v110 * v150)) + v112;
        *v146 = vrev64_s32(vadd_f32(vadd_f32(vadd_f32(vmul_f32(v106, *v149), vmul_f32(v107, vrev64_s32(*v149))), vmul_n_f32(v109, v150)), v111));
        *(v146 + 8) = v151;
        v152 = (v116 + 12 * v147);
        v153 = v152[1].f32[0];
        v154 = (((v105 * COERCE_FLOAT(*v152)) + vmuls_lane_f32(v108, *v152, 1)) + (v110 * v153)) + v112;
        *(v146 + 12) = vrev64_s32(vadd_f32(vadd_f32(vadd_f32(vmul_f32(v106, *v152), vmul_f32(v107, vrev64_s32(*v152))), vmul_n_f32(v109, v153)), v111));
        *(v146 + 20) = v154;
        v155 = (v116 + 12 * v148);
        v156 = v155[1].f32[0];
        v157 = (((v105 * COERCE_FLOAT(*v155)) + vmuls_lane_f32(v108, *v155, 1)) + (v110 * v156)) + v112;
        *(v146 + 24) = vrev64_s32(vadd_f32(vadd_f32(vadd_f32(vmul_f32(v106, *v155), vmul_f32(v107, vrev64_s32(*v155))), vmul_n_f32(v109, v156)), v111));
        *(v146 + 32) = v157;
        v173.i32[0] = -1;
        v158 = *(a6 + 8);
        if ((*(a6 + 12) & 0x7FFFFFFFu) <= v158)
        {
          result = physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::growAndPushBack(a6, &v173);
        }

        else
        {
          *(*a6 + 4 * v158) = -1;
          ++*(a6 + 8);
        }

        v24 += 12;
        v146 += 36;
        --v20;
      }

      while (v20);
    }
  }

  return result;
}

uint64_t physx::Cct::CharacterControllerManager::CharacterControllerManager(uint64_t a1, uint64_t a2, char a3)
{
  *a1 = &unk_1F5D27738;
  *(a1 + 8) = &unk_1F5D277E8;
  *(a1 + 16) = a2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 152) = 0;
  *(a1 + 160) = 1061158912;
  *(a1 + 164) = 0xFFFFFFFFLL;
  *(a1 + 172) = 0;
  physx::shdfnd::internal::HashBase<physx::PxBase const*,physx::PxBase const*,physx::shdfnd::Hash<physx::PxBase const*>,physx::shdfnd::internal::HashSetBase<physx::PxBase const*,physx::shdfnd::Hash<physx::PxBase const*>,physx::shdfnd::NonTrackingAllocator,false>::GetKey,physx::shdfnd::NonTrackingAllocator,false>::reserveInternal(a1 + 120, 0x40u);
  *(a1 + 176) = 0u;
  *(a1 + 192) = 1065353216;
  *(a1 + 196) = 65792;
  *(a1 + 200) = a3;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0;
  *(a1 + 208) = 0u;
  *(a1 + 248) = 1061158912;
  *(a1 + 252) = 0xFFFFFFFFLL;
  *(a1 + 260) = 0;
  physx::shdfnd::internal::HashBase<physx::shdfnd::Pair<physx::PxBase const* const,physx::Cct::ObservedRefCounter>,physx::PxBase const*,physx::shdfnd::Hash<physx::PxBase const*>,physx::shdfnd::internal::HashMapBase<physx::PxBase const*,physx::Cct::ObservedRefCounter,physx::shdfnd::Hash<physx::PxBase const*>,physx::shdfnd::NonTrackingAllocator>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::reserveInternal(a1 + 208, 0x40u);
  v6 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v7 = "static const char *physx::shdfnd::ReflectionAllocator<physx::shdfnd::MutexImpl>::getName() [T = physx::shdfnd::MutexImpl]";
  }

  else
  {
    v7 = "<allocation names disabled>";
  }

  v8 = (*(*(v6 + 24) + 16))(v6 + 24, 72, v7, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsMutex.h", 138);
  *(a1 + 264) = v8;
  physx::shdfnd::MutexImpl::MutexImpl(v8);
  v9 = (*(*a2 + 56))(a2);
  (*(*v9 + 264))();
  return a1;
}

void physx::Cct::CharacterControllerManager::~CharacterControllerManager(physx::Cct::CharacterControllerManager *this)
{
  *this = &unk_1F5D27738;
  *(this + 1) = &unk_1F5D277E8;
  v2 = *(this + 3);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 3) = 0;
  physx::shdfnd::MutexT<physx::shdfnd::ReflectionAllocator<physx::shdfnd::MutexImpl>>::~MutexT(this + 33);
  if (*(this + 26))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v3 = *(this + 47);
  if ((v3 & 0x80000000) == 0 && (v3 & 0x7FFFFFFF) != 0 && *(this + 22))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  if (*(this + 15))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v4 = *(this + 29);
  if ((v4 & 0x80000000) == 0 && (v4 & 0x7FFFFFFF) != 0 && *(this + 13))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v5 = *(this + 25);
  if ((v5 & 0x80000000) == 0 && (v5 & 0x7FFFFFFF) != 0 && *(this + 11))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v6 = *(this + 21);
  if ((v6 & 0x80000000) == 0 && (v6 & 0x7FFFFFFF) != 0 && *(this + 9))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v7 = *(this + 17);
  if ((v7 & 0x80000000) == 0 && (v7 & 0x7FFFFFFF) != 0 && *(this + 7))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v8 = *(this + 13);
  if ((v8 & 0x80000000) == 0 && (v8 & 0x7FFFFFFF) != 0)
  {
    if (*(this + 5))
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }
  }
}

{
  physx::Cct::CharacterControllerManager::~CharacterControllerManager(this);
  if (v1)
  {
    v2 = *(*(physx::shdfnd::Foundation::mInstance + 24) + 24);

    v2();
  }
}

void non-virtual thunk tophysx::Cct::CharacterControllerManager::~CharacterControllerManager(physx::Cct::CharacterControllerManager *this)
{
  physx::Cct::CharacterControllerManager::~CharacterControllerManager((this - 8));
}

{
  physx::Cct::CharacterControllerManager::~CharacterControllerManager((this - 8));
  v1 = *(*(physx::shdfnd::Foundation::mInstance + 24) + 24);

  v1();
}

uint64_t physx::Cct::CharacterControllerManager::release(int32x2_t *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  for (i = *(*this + 16); i(); i = *(*this + 16))
  {
    v11 = (*(*this + 24))(this, 0);
    physx::Cct::CharacterControllerManager::releaseController(this, v11);
  }

  while ((*(*this + 64))(this))
  {
    (*(***&this[22] + 16))(**&this[22]);
  }

  v12 = *(*(**&this[2] + 56))(*&this[2]);
  (*(v12 + 272))();
  v13 = (*(*this + 144))(this);

  return physx::shdfnd::Foundation::decRefCount(v13, v14, v15, v16, v17, v18, v19, v20, a9);
}

uint64_t physx::Cct::CharacterControllerManager::releaseController(int32x2_t *a1, uint64_t *a2)
{
  if (a1[14].i32[0])
  {
    v4 = 0;
    while (1)
    {
      v5 = *(*&a1[13] + 8 * v4);
      v6 = (*(*v5 + 32))(v5);
      v7 = a1[14].u32[0];
      if (v6 == a2)
      {
        break;
      }

      if (++v4 >= v7)
      {
        goto LABEL_7;
      }
    }

    v8 = a1[13];
    v9 = v7 - 1;
    a1[14].i32[0] = v9;
    *(*&v8 + 8 * v4) = *(*&v8 + 8 * v9);
  }

LABEL_7:
  v22 = 0;
  v10 = (*(*a2 + 56))(a2);
  (*(*v10 + 192))(v10, &v22, 1, 0);
  if (a1[21].i32[1])
  {
    v11 = (~(v22 << 32) + v22) ^ ((~(v22 << 32) + v22) >> 22);
    v12 = 9 * ((v11 + ~(v11 << 13)) ^ ((v11 + ~(v11 << 13)) >> 8));
    v13 = (v12 ^ (v12 >> 15)) + ~((v12 ^ (v12 >> 15)) << 27);
    v14 = (*&a1[18] + 4 * ((a1[19].i32[1] - 1) & ((v13 >> 31) ^ v13)));
    v15 = *v14;
    if (v15 != -1)
    {
      v17 = a1[16];
      v16 = a1[17];
      if (*(*&v17 + 8 * v15) == v22)
      {
LABEL_13:
        *v14 = *(*&v16 + 4 * v15);
        a1[21] = vadd_s32(a1[21], 0xFFFFFFFF00000001);
        *(*&v16 + 4 * v15) = a1[20].i32[1];
        a1[20].i32[1] = v15;
      }

      else
      {
        while (1)
        {
          v18 = v15;
          v15 = *(*&v16 + 4 * v15);
          if (v15 == -1)
          {
            break;
          }

          if (*(*&v17 + 8 * v15) == v22)
          {
            v14 = (*&v16 + 4 * v18);
            goto LABEL_13;
          }
        }
      }
    }
  }

  v19 = (**a2)(a2);
  v20 = *a2;
  if (v19 != 1)
  {
    result = (**a2)(a2);
    if (result)
    {
      return result;
    }

    v20 = *a2;
  }

  return (*(v20 + 208))(a2);
}

double physx::Cct::CharacterControllerManager::getRenderBuffer(physx::Cct::CharacterControllerManager *this)
{
  if (!*(this + 3))
  {
    v2 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v3 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Cm::RenderBuffer>::getName() [T = physx::Cm::RenderBuffer]";
    }

    else
    {
      v3 = "<allocation names disabled>";
    }

    v4 = (*(*(v2 + 24) + 16))(v2 + 24, 88, v3, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcharacterkinematic/src/CctCharacterControllerManager.cpp", 97);
    *v4 = &unk_1F5D1BEB0;
    result = 0.0;
    *(v4 + 8) = 0u;
    *(v4 + 24) = 0u;
    *(v4 + 40) = 0u;
    *(v4 + 56) = 0u;
    *(v4 + 72) = 0u;
    *(this + 3) = v4;
  }

  return result;
}

uint64_t physx::Cct::CharacterControllerManager::setDebugRenderingFlags(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 32) = *a2;
  if (!v2)
  {
    v3 = result;
    result = *(result + 24);
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    *(v3 + 24) = 0;
  }

  return result;
}

uint64_t physx::Cct::CharacterControllerManager::getController(physx::Cct::CharacterControllerManager *this, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(this + 28) <= a2)
  {
    physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 4, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcharacterkinematic/src/CctCharacterControllerManager.cpp", 126, "PxControllerManager::getController(): out-of-range index", a6, a7, a8, v8, v9);
    return 0;
  }

  else
  {
    v10 = *(**(*(this + 13) + 8 * a2) + 32);

    return v10();
  }
}

uint64_t physx::Cct::CharacterControllerManager::createController(uint64_t a1, uint64_t a2)
{
  if (((**a2)(a2) & 1) == 0)
  {
    physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 4, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcharacterkinematic/src/CctCharacterControllerManager.cpp", 138, "PxControllerManager::createController(): desc.isValid() fails.", v4, v5, v6);
    return 0;
  }

  v7 = *(a2 + 128);
  if (v7 != 1)
  {
    if (!v7)
    {
      v8 = physx::shdfnd::Foundation::mInstance;
      if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
      {
        v9 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Cct::BoxController>::getName() [T = physx::Cct::BoxController]";
      }

      else
      {
        v9 = "<allocation names disabled>";
      }

      v10 = (*(*(v8 + 24) + 16))(v8 + 24, 632, v9, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcharacterkinematic/src/CctCharacterControllerManager.cpp", 147);
      v11 = (*(**(a1 + 16) + 56))(*(a1 + 16));
      v12 = *(a1 + 16);
      *v10 = &unk_1F5D27978;
      v13 = (v10 + 8);
      v14 = physx::Cct::Controller::Controller(v10 + 8, a2, v12);
      *v10 = &unk_1F5D27468;
      *(v10 + 8) = &unk_1F5D27598;
      *(v10 + 16) = 0;
      v15 = *(a2 + 140);
      *(v10 + 624) = v15;
      *v42 = 3;
      v16 = *(v10 + 588);
      v17 = *(a2 + 132);
      *(v10 + 616) = v17;
      *&v42[4] = vmul_n_f32(v17, v16);
      v43 = v15 * v16;
      goto LABEL_14;
    }

    return 0;
  }

  v18 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v19 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Cct::CapsuleController>::getName() [T = physx::Cct::CapsuleController]";
  }

  else
  {
    v19 = "<allocation names disabled>";
  }

  v10 = (*(*(v18 + 24) + 16))(v18 + 24, 632, v19, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcharacterkinematic/src/CctCharacterControllerManager.cpp", 153);
  v11 = (*(**(a1 + 16) + 56))(*(a1 + 16));
  v20 = *(a1 + 16);
  *v10 = &unk_1F5D27A90;
  v13 = (v10 + 8);
  v14 = physx::Cct::Controller::Controller(v10 + 8, a2, v20);
  *v10 = &unk_1F5D275D0;
  *(v10 + 8) = &unk_1F5D27700;
  *(v10 + 16) = 1;
  v21 = *(a2 + 132);
  *(v10 + 616) = v21;
  v22 = *(a2 + 136);
  *(v10 + 620) = v22;
  *(v10 + 624) = *(a2 + 140);
  *v42 = 2;
  v23 = *(v10 + 588);
  *&v42[4] = v21 * v23;
  *&v42[8] = (v22 * 0.5) * v23;
LABEL_14:
  physx::Cct::Controller::createProxyActor(v14, v11, v42, *(a2 + 104));
  *v42 = v13;
  v24 = *(a1 + 112);
  if ((*(a1 + 116) & 0x7FFFFFFFu) <= v24)
  {
    physx::shdfnd::Array<physx::Cct::Controller *,physx::shdfnd::ReflectionAllocator<physx::Cct::Controller *>>::growAndPushBack(a1 + 104, v42);
  }

  else
  {
    *(*(a1 + 104) + 8 * v24) = v13;
    *(a1 + 112) = v24 + 1;
  }

  v13[75] = a1;
  v13[60] = a1;
  v13[39] = a1;
  v13[36] = a1;
  v41 = 0;
  v25 = (*(*v10 + 56))(v10);
  (*(*v25 + 192))(v25, &v41, 1, 0);
  v26 = *(a1 + 156);
  if (!v26)
  {
    v30 = 0;
    goto LABEL_23;
  }

  v27 = (~(v41 << 32) + v41) ^ ((~(v41 << 32) + v41) >> 22);
  v28 = 9 * ((v27 + ~(v27 << 13)) ^ ((v27 + ~(v27 << 13)) >> 8));
  v29 = (v28 ^ (v28 >> 15)) + ~((v28 ^ (v28 >> 15)) << 27);
  v30 = (v26 - 1) & ((v29 >> 31) ^ v29);
  v31 = *(*(a1 + 144) + 4 * v30);
  if (v31 == -1)
  {
LABEL_23:
    v32 = *(a1 + 164);
    if (v32 == -1)
    {
      if (v26)
      {
        v34 = 2 * v26;
      }

      else
      {
        v34 = 16;
      }

      if (v26 >= v34)
      {
        v32 = -1;
      }

      else
      {
        physx::shdfnd::internal::HashBase<physx::PxBase const*,physx::PxBase const*,physx::shdfnd::Hash<physx::PxBase const*>,physx::shdfnd::internal::HashSetBase<physx::PxBase const*,physx::shdfnd::Hash<physx::PxBase const*>,physx::shdfnd::NonTrackingAllocator,false>::GetKey,physx::shdfnd::NonTrackingAllocator,false>::reserveInternal(a1 + 120, v34);
        v26 = *(a1 + 156);
        v32 = *(a1 + 164);
      }

      v33 = v41;
      v35 = (~(v41 << 32) + v41) ^ ((~(v41 << 32) + v41) >> 22);
      v36 = 9 * ((v35 + ~(v35 << 13)) ^ ((v35 + ~(v35 << 13)) >> 8));
      v37 = (v36 ^ (v36 >> 15)) + ~((v36 ^ (v36 >> 15)) << 27);
      v30 = (v26 - 1) & ((v37 >> 31) ^ v37);
    }

    else
    {
      v33 = v41;
    }

    v38 = *(a1 + 136);
    v39 = *(a1 + 144);
    *(a1 + 164) = *(v38 + 4 * v32);
    *(v38 + 4 * v32) = *(v39 + 4 * v30);
    *(v39 + 4 * v30) = v32;
    *(a1 + 168) = vadd_s32(*(a1 + 168), 0x100000001);
    *(*(a1 + 128) + 8 * v32) = v33;
    return v10;
  }

  while (*(*(a1 + 128) + 8 * v31) != v41)
  {
    v31 = *(*(a1 + 136) + 4 * v31);
    if (v31 == -1)
    {
      goto LABEL_23;
    }
  }

  return v10;
}

uint64_t physx::Cct::CharacterControllerManager::purgeControllers(uint64_t this)
{
  if (*(this + 112))
  {
    v1 = this;
    do
    {
      v2 = (*(***(v1 + 104) + 32))(**(v1 + 104));
      this = physx::Cct::CharacterControllerManager::releaseController(v1, v2);
    }

    while (*(v1 + 112));
  }

  return this;
}

uint64_t physx::Cct::CharacterControllerManager::onRelease(uint64_t result, unsigned __int16 *a2)
{
  if (a2[4] - 5 <= 2)
  {
    v3 = result;
    if (*(result + 200) == 1 && ((physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled & 1) != 0))
    {
      result = pthread_mutex_lock(*(result + 264));
    }

    if (*(v3 + 260) && (v4 = (a2 + ~(a2 << 32)) ^ ((a2 + ~(a2 << 32)) >> 22), v5 = 9 * ((v4 + ~(v4 << 13)) ^ ((v4 + ~(v4 << 13)) >> 8)), v6 = (v5 ^ (v5 >> 15)) + ~((v5 ^ (v5 >> 15)) << 27), v7 = *(*(v3 + 232) + 4 * ((*(v3 + 244) - 1) & ((v6 >> 31) ^ v6))), v7 != -1))
    {
      do
      {
        v18 = *(*(v3 + 216) + 16 * v7);
        v8 = v18 != a2;
        if (v18 == a2)
        {
          break;
        }

        v7 = *(*(v3 + 224) + 4 * v7);
      }

      while (v7 != -1);
    }

    else
    {
      v8 = 1;
    }

    if (*(v3 + 200) == 1 && ((physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled & 1) != 0))
    {
      result = pthread_mutex_unlock(*(v3 + 264));
    }

    if (!v8 && *(v3 + 112))
    {
      v9 = 0;
      v20 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
      v19 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
      while (1)
      {
        v10 = *(*(v3 + 104) + 8 * v9);
        if (*(v3 + 200) == 1 && ((physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled & 1) != 0))
        {
          result = pthread_mutex_lock(*(v10 + 592));
        }

        if (*(v10 + 296) == a2)
        {
          break;
        }

        v11 = *(v10 + 160);
        if (v11)
        {
          v12 = *(v10 + 152);
          v13 = &v12[v11];
          while (*(v12 + 1) != a2)
          {
            v12 = (v12 + GeomSizes[*v12]);
            if (v12 == v13)
            {
              goto LABEL_33;
            }
          }

          *(v10 + 168) = v20;
          *(v10 + 184) = xmmword_1E30A0CA0;
          *(v10 + 200) = v19;
        }

LABEL_33:
        v16 = *(v10 + 272);
        if (v16 != a2)
        {
          goto LABEL_38;
        }

        v15 = (v10 + 272);
        if (*(v10 + 280) == 1)
        {
          v17 = 184;
LABEL_36:
          result = physx::Cct::CharacterControllerManager::unregisterObservedObject(*(v10 + 104 + v17), v16);
        }

LABEL_37:
        *v15 = 0;
LABEL_38:
        if (*(v3 + 200) == 1 && ((physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled & 1) != 0))
        {
          result = pthread_mutex_unlock(*(v10 + 592));
        }

        if (++v9 >= *(v3 + 112))
        {
          return result;
        }
      }

      if (*(v10 + 280) == 1)
      {
        v14 = *(v10 + 272);
        if (v14)
        {
          result = physx::Cct::CharacterControllerManager::unregisterObservedObject(*(v10 + 288), v14);
        }
      }

      v15 = (v10 + 296);
      *(v10 + 272) = 0;
      if (*(v10 + 304) != 1)
      {
        goto LABEL_37;
      }

      v16 = *v15;
      if (!*v15)
      {
        goto LABEL_37;
      }

      v17 = 208;
      goto LABEL_36;
    }
  }

  return result;
}

uint64_t physx::Cct::CharacterControllerManager::getObstacleContext(physx::Cct::CharacterControllerManager *this, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(this + 46) > a2)
  {
    return *(*(this + 22) + 8 * a2);
  }

  physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 4, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcharacterkinematic/src/CctCharacterControllerManager.cpp", 278, "PxControllerManager::getObstacleContext(): out-of-range index", a6, a7, a8, v8, v9);
  return 0;
}

uint64_t physx::Cct::CharacterControllerManager::createObstacleContext(physx::Cct::CharacterControllerManager *this)
{
  v2 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v3 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Cct::ObstacleContext>::getName() [T = physx::Cct::ObstacleContext]";
  }

  else
  {
    v3 = "<allocation names disabled>";
  }

  v4 = (*(*(v2 + 24) + 16))(v2 + 24, 96, v3, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcharacterkinematic/src/CctCharacterControllerManager.cpp", 288);
  *v4 = &unk_1F5D27C50;
  *(v4 + 8) = 0u;
  *(v4 + 24) = 0u;
  physx::Cct::HandleManager::HandleManager((v4 + 40));
  *(v4 + 88) = this;
  v7 = v4;
  v5 = *(this + 46);
  if ((*(this + 47) & 0x7FFFFFFFu) <= v5)
  {
    physx::shdfnd::Array<physx::Cct::ObstacleContext *,physx::shdfnd::ReflectionAllocator<physx::Cct::ObstacleContext *>>::growAndPushBack(this + 176, &v7);
  }

  else
  {
    *(*(this + 22) + 8 * v5) = v4;
    *(this + 46) = v5 + 1;
  }

  return v4;
}

uint64_t physx::Cct::CharacterControllerManager::releaseObstacleContext(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 184);
  if (v2)
  {
    v3 = 0;
    while (*(*(a1 + 176) + 8 * v3) != a2)
    {
      if (v2 == ++v3)
      {
        return (*(*a2 + 8))(a2);
      }
    }
  }

  else
  {
    LODWORD(v3) = 0;
  }

  if (v3 != v2)
  {
    v4 = *(a1 + 176);
    v5 = v2 - 1;
    *(a1 + 184) = v5;
    *(v4 + 8 * v3) = *(v4 + 8 * v5);
  }

  return (*(*a2 + 8))(a2);
}

void physx::Cct::CharacterControllerManager::onObstacleUpdated(uint64_t a1, int a2, uint64_t a3)
{
  if (*(a1 + 112))
  {
    v6 = 0;
    do
    {
      v7 = *(*(a1 + 104) + 8 * v6);
      v8 = *(v7 + 512);
      v13 = vcvt_f32_f64(*(v7 + 496));
      v14 = v8;
      v9 = -*(v7 + 40);
      v11 = vneg_f32(*(v7 + 32));
      v12 = v9;
      v10.n128_f64[0] = (*(*v7 + 16))(v7);
      physx::Cct::SweepTest::onObstacleUpdated(v7 + 104, a2, a3, &v13, &v11, v10);
      ++v6;
    }

    while (v6 < *(a1 + 112));
  }
}

void physx::Cct::CharacterControllerManager::onObstacleAdded(uint64_t a1, int a2, uint64_t a3)
{
  if (*(a1 + 112))
  {
    v6 = 0;
    do
    {
      v7 = *(*(a1 + 104) + 8 * v6);
      v8 = *(v7 + 512);
      v13 = vcvt_f32_f64(*(v7 + 496));
      v14 = v8;
      v9 = -*(v7 + 40);
      v11 = vneg_f32(*(v7 + 32));
      v12 = v9;
      v10 = (*(*v7 + 16))(v7);
      physx::Cct::SweepTest::onObstacleAdded(v7 + 104, a2, a3, v10, &v13, &v11);
      ++v6;
    }

    while (v6 < *(a1 + 112));
  }
}

uint64_t resetOrClear<physx::shdfnd::Array<void const*,physx::shdfnd::ReflectionAllocator<void const*>>>(uint64_t result)
{
  if ((*(result + 12) & 0x7FFFFFFF) != 0)
  {
    v1 = result;
    if (*(result + 8) <= (*(result + 12) & 0x7FFFFFFFu) >> 1)
    {
      physx::shdfnd::Array<physx::IG::EdgeInstance *,physx::shdfnd::ReflectionAllocator<physx::IG::EdgeInstance *>>::resize(result);
      v2 = *(v1 + 8);

      return physx::shdfnd::Array<void const*,physx::shdfnd::ReflectionAllocator<void const*>>::recreate(v1, v2);
    }

    else
    {
      *(result + 8) = 0;
    }
  }

  return result;
}

uint64_t physx::Cct::CharacterControllerManager::setTessellation(uint64_t this, char a2, float a3)
{
  *(this + 196) = a2;
  *(this + 192) = a3;
  return this;
}

float physx::Cct::CharacterControllerManager::shiftOrigin(uint64_t a1, float32x2_t *a2, float64x2_t a3)
{
  if (*(a1 + 112))
  {
    for (i = 0; i < *(a1 + 112); ++i)
    {
      v6 = *(*(a1 + 104) + 8 * i);
      a3.f64[0] = *a2;
      v7 = vcvtq_f64_f32(*a2);
      *(v6 + 496) = vsubq_f64(*(v6 + 496), v7);
      v8 = a2[1].f32[0];
      v9 = v8;
      *(v6 + 512) = *(v6 + 512) - v8;
      v10 = *(v6 + 600);
      v11 = v7.f64[1];
      v12 = *(a3.f64 + 1);
      if (v10 && *(v10 + 200) == 1 && ((physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled & 1) != 0))
      {
        pthread_mutex_lock(*(v6 + 592));
        LODWORD(a3.f64[0]) = a2->i32[0];
        v12 = a2->f32[1];
        v8 = a2[1].f32[0];
        v7.f64[0] = a2->f32[0];
        v11 = v12;
        v9 = v8;
      }

      v13.f64[0] = v9;
      v13.f64[1] = v7.f64[0];
      v7.f64[1] = v11;
      v14 = vsubq_f64(*(v6 + 184), v13);
      *(v6 + 168) = vsubq_f64(*(v6 + 168), v7);
      *(v6 + 184) = v14;
      v15 = *(v6 + 208) - v9;
      *(v6 + 200) = *(v6 + 200) - v11;
      *(v6 + 208) = v15;
      if (*(v6 + 272))
      {
        if (*(*(v6 + 296) + 8) != 6)
        {
          v16 = 244;
          v17 = 248;
          v18 = 252;
LABEL_13:
          v19 = v6 + 104;
          *(v19 + v16) = *(v6 + 104 + v16) - *a3.f64;
          *(v19 + v17) = *(v6 + 104 + v17) - v12;
          *a3.f64 = *(v6 + 104 + v18) - v8;
          *(v19 + v18) = LODWORD(a3.f64[0]);
        }
      }

      else if (*(v6 + 320) != -1)
      {
        v16 = 268;
        v17 = 272;
        v18 = 276;
        goto LABEL_13;
      }

      v20 = *(v6 + 160);
      if (v20)
      {
        v21 = *(v6 + 152);
        v22 = &v21[v20];
        a3 = vcvtq_f64_f32(*a2);
        v23 = a2[1].f32[0];
        do
        {
          *(v21 + 5) = vsubq_f64(*(v21 + 5), a3);
          *(v21 + 9) = *(v21 + 9) - v23;
          v21 = (v21 + GeomSizes[*v21]);
        }

        while (v21 != v22);
      }

      v24 = *(v6 + 600);
      if (v24 && *(v24 + 200) == 1 && ((physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled & 1) != 0))
      {
        pthread_mutex_unlock(*(v6 + 592));
      }
    }
  }

  if (*(a1 + 184))
  {
    v25 = 0;
    do
    {
      physx::Cct::ObstacleContext::onOriginShift(*(*(a1 + 176) + 8 * v25++), a2);
    }

    while (v25 < *(a1 + 184));
  }

  v26 = *(a1 + 24);
  if (v26)
  {
    v27 = -a2[1].f32[0];
    v29 = vneg_f32(*a2);
    v30 = v27;
    *a3.f64 = physx::Cm::RenderBuffer::shift(v26, &v29);
  }

  return *a3.f64;
}

void physx::Cct::CharacterControllerManager::computeInteractions(uint64_t a1, uint64_t a2, float a3)
{
  v186 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 112);
  if (v4)
  {
    v5 = *(a1 + 104);
    v6 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 24 * v4, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcharacterkinematic/src/CctCharacterControllerManager.cpp", 651);
    v7 = v6 + 24 * (v4 - 1) + 24;
    v8 = v6;
    do
    {
      LODWORD(v4) = v4 - 1;
      v9 = *v5++;
      (*(*v9 + 24))(v9, v178);
      *v8 = vcvt_hight_f32_f64(vcvt_f32_f64(v178[0]), v178[1]);
      *(v8 + 16) = vcvt_f32_f64(v178[2]);
      v8 += 24;
    }

    while (v4);
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v10 = -1431655765 * ((v7 - v6) >> 3);
  v144 = 0;
  v145 = 0;
  if (v10)
  {
    v11 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 4 * v10, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcharacterkinematic/src/CctCharacterControllerManager.cpp", 611);
    v12 = v11;
    v13 = 0;
    v14 = v6;
    do
    {
      v15 = *v14;
      v14 += 6;
      v11[v13++] = v15;
    }

    while (v10 != v13);
    v179 = 0;
    memset(&v178[1], 0, 32);
    v180 = 1;
    LODWORD(v178[0].f64[1]) = 0x80000000;
    *&v178[0].f64[0] = &unk_1F5D21400;
    physx::Cm::RadixSortBuffered::Sort(v178, v11);
    v16 = v178[1].f64[0];
    v17 = *&v178[1].f64[0] + 4 * v10;
    v154.i32[0] = 0;
    v18 = v178[1].f64[0];
    while (1)
    {
      v20 = **&v18;
      *&v18 += 4;
      v19 = v20;
      LODWORD(v169.f64[0]) = v20;
      do
      {
        if (*&v16 >= v17)
        {
          break;
        }

        v21 = **&v16;
        *&v16 += 4;
      }

      while (v12[v21] < v12[v19]);
      if (*&v16 >= v17)
      {
        break;
      }

      v22 = *&v16;
      do
      {
        v24 = *v22++;
        v23 = v24;
        v154.i32[0] = v24;
        v25 = (v6 + 24 * LODWORD(v169.f64[0]));
        v26 = v25[3];
        if (v12[v24] > v26)
        {
          break;
        }

        if (LODWORD(v169.f64[0]) != v23)
        {
          v27 = (v6 + 24 * v23);
          if (*v27 <= v26 && *v25 <= v27[3] && v27[1] <= v25[4] && v25[1] <= v27[4] && v27[2] <= v25[5] && v25[2] <= v27[5])
          {
            if ((HIDWORD(v145) & 0x7FFFFFFFu) <= v145)
            {
              physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::growAndPushBack(&v144, &v169);
              v28 = v145;
            }

            else
            {
              v144[v145] = LODWORD(v169.f64[0]);
              v28 = v145 + 1;
              LODWORD(v145) = v145 + 1;
            }

            if ((HIDWORD(v145) & 0x7FFFFFFFu) <= v28)
            {
              physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::growAndPushBack(&v144, &v154);
            }

            else
            {
              v144[v28] = v154.i32[0];
              LODWORD(v145) = v145 + 1;
            }
          }
        }
      }

      while (v22 < v17);
      if (*&v18 >= v17)
      {
        goto LABEL_33;
      }
    }

    if (!v12)
    {
      goto LABEL_34;
    }

LABEL_33:
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v12);
LABEL_34:
    *&v178[0].f64[0] = &unk_1F5D21400;
    physx::Cm::RadixSortBuffered::reset(v178);
    if (v145 >= 2)
    {
      v29 = v145 >> 1;
      v30 = v144;
      v31 = a3 * 4.0;
      v32 = 1.0;
      while (1)
      {
        v33 = *(a1 + 104);
        v34 = *(v33 + 8 * *v30);
        v35 = *(v33 + 8 * v30[1]);
        if (!a2)
        {
          break;
        }

        v36 = (*(*v34 + 32))(*(v33 + 8 * *v30));
        v37 = (*(*v35 + 32))(v35);
        if ((*(*a2 + 16))(a2, v36, v37))
        {
          break;
        }

LABEL_93:
        v30 += 2;
        if (!--v29)
        {
          goto LABEL_94;
        }
      }

      v142 = v29;
      v174 = 0;
      v175 = 0.0;
      v38 = v34[2];
      v39 = v35[2];
      if (v38 <= v39)
      {
        v40 = v35;
      }

      else
      {
        v40 = v34;
      }

      if (v38 <= v39)
      {
        v35 = v34;
      }

      v41 = (v35 + 101);
      v42 = v35[2];
      if (v42)
      {
        if (v42 == 1 && v40[2] == 1)
        {
          v43 = v31;
          physx::Cct::CapsuleController::getCapsule((v35 - 2), v178);
          physx::Cct::CapsuleController::getCapsule((v40 - 2), &v169);
          v44 = *&v179 + v173;
          v45 = v178[1].f64[0];
          v154 = vcvt_f32_f64(v178[0]);
          *&v155 = v45;
          v46 = v178[2].f64[1];
          v47 = v170;
          v183 = vcvt_f32_f64(v169);
          v184 = v47;
          v48 = vcvt_f32_f64(*(&v178[1] + 8));
          v49 = vcvt_f32_f64(v171);
          v50 = v172;
          v176.i32[0] = 0;
          v166.i32[0] = 0;
          v181 = vsub_f32(v48, v154);
          v182[0] = v46 - v45;
          v150 = vsub_f32(v49, v183);
          v151[0] = v50 - v47;
          v51 = sqrtf(physx::Gu::distanceSegmentSegmentSquared(&v154, &v181, &v183, &v150, &v176, &v166));
          v52 = 0.0;
          if (v51 < v44)
          {
            v181 = *v41;
            v182[0] = *(v35 + 103);
            v146 = vsub_f32(vadd_f32(vmul_n_f32(v48, 1.0 - v176.f32[0]), vmul_n_f32(v154, v176.f32[0])), vadd_f32(vmul_n_f32(v49, 1.0 - v166.f32[0]), vmul_n_f32(v183, v166.f32[0])));
            v147[0] = (((1.0 - v176.f32[0]) * v46) + (v176.f32[0] * *&v155)) - (((1.0 - v166.f32[0]) * v50) + (v166.f32[0] * v184));
            fixDir(&v150, &v146, &v181);
            v174 = v150;
            v175 = v151[0];
            v52 = v44 - v51;
          }

          v31 = v43;
          v32 = 1.0;
LABEL_87:
          if (v52 != 0.0)
          {
            if (v52 <= v31)
            {
              v138 = v52;
            }

            else
            {
              v138 = v31;
            }

            v139 = (v138 * v175) * 0.5;
            v140 = vmul_f32(vmul_n_f32(v174, v138), 0x3F0000003F000000);
            *(v35 + 133) = vadd_f32(v140, *(v35 + 133));
            *(v35 + 135) = v139 + *(v35 + 135);
            *(v40 + 133) = vsub_f32(*(v40 + 133), v140);
            *(v40 + 135) = *(v40 + 135) - v139;
          }

          v29 = v142;
          goto LABEL_93;
        }
      }

      else if (v40[2] == 1)
      {
        physx::Cct::BoxController::getOBB((v35 - 2), v178);
        physx::Cct::CapsuleController::getCapsule((v40 - 2), &v169);
        v53 = v170;
        v54.n128_u64[1] = *&v169.f64[1];
        v54.n128_u64[0] = vcvt_f32_f64(v169);
        v183 = v54.n128_u64[0];
        v184 = v53;
        v55 = v172;
        v181 = vcvt_f32_f64(v171);
        v182[0] = v55;
        v168 = 0;
        v56 = *(v178[2].f64 + 4);
        v57 = *&v178[2].f64[1] * (*&v178[2].f64[1] + *&v178[2].f64[1]);
        v58 = *(&v178[2].f64[1] + 1) * (*(&v178[2].f64[1] + 1) + *(&v178[2].f64[1] + 1));
        v59 = (*&v56 + *&v56) * *&v178[2].f64[1];
        v60 = (*&v56 + *&v56) * *(&v178[2].f64[1] + 1);
        v61 = (*&v56 + *&v56) * *&v179;
        v54.n128_f32[0] = (*&v178[2].f64[1] + *&v178[2].f64[1]) * *(&v178[2].f64[1] + 1);
        v62 = (*&v178[2].f64[1] + *&v178[2].f64[1]) * *&v179;
        v154.f32[0] = (v32 - v57) - v58;
        v154.f32[1] = v59 + ((*(&v178[2].f64[1] + 1) + *(&v178[2].f64[1] + 1)) * *&v179);
        v63 = v32 - (*&v56 * (*&v56 + *&v56));
        *&v155 = v60 - v62;
        *(&v155 + 1) = v59 - ((*(&v178[2].f64[1] + 1) + *(&v178[2].f64[1] + 1)) * *&v179);
        *&v156 = v63 - v58;
        *(&v156 + 1) = v54.n128_f32[0] + v61;
        v54.n128_f32[0] = v54.n128_f32[0] - v61;
        v157 = v60 + v62;
        v158 = v54.n128_u32[0];
        v159 = v63 - v57;
        v64.n128_u32[1] = HIDWORD(v178[1].f64[0]);
        v64.n128_f32[0] = v178[1].f64[0];
        v65.n128_u64[1] = *&v178[0].f64[1];
        v65.n128_u64[0] = vcvt_f32_f64(v178[0]);
        v146 = v65.n128_u64[0];
        v147[0] = v64.n128_f32[0];
        physx::Gu::distanceSegmentBoxSquared(&v183, &v181, &v146, &v178[1].f64[1], &v154, &v168, &v150, v64, v65, v54);
        v67 = sqrtf(v66);
        v68 = v173;
        v52 = 0.0;
        if (v67 < v173)
        {
          v176 = *v41;
          v177 = *(v35 + 103);
          v164 = vadd_f32(v146, vmul_f32(vadd_f32(v183, v181), 0xBF000000BF000000));
          v165 = v147[0] + ((v184 + v182[0]) * -0.5);
          fixDir(&v166, &v164, &v176);
          v174 = v166;
          v175 = v167;
          v52 = v68 - v67;
        }

        goto LABEL_87;
      }

      physx::Cct::BoxController::getOBB((v35 - 2), &v169);
      physx::Cct::BoxController::getOBB((v40 - 2), &v154);
      v69 = 0;
      v70 = 0;
      v71 = v169.f64[0];
      v72 = v169.f64[1];
      v73 = v170;
      v74 = *(&v171.f64[1] + 1);
      v75 = *&v172;
      v76 = v74 * (v74 + v74);
      v77 = v75 * (v75 + v75);
      v78 = *(&v172 + 1) * (*(&v172 + 1) + *(&v172 + 1));
      v79 = (v74 + v74) * *&v172;
      v80 = (v74 + v74) * *(&v172 + 1);
      v81 = (v74 + v74) * v173;
      v82 = (v75 + v75) * *(&v172 + 1);
      v83 = (v75 + v75) * v173;
      v84 = (v32 - v77) - v78;
      v85 = v79 + ((*(&v172 + 1) + *(&v172 + 1)) * v173);
      v150 = __PAIR64__(LODWORD(v85), LODWORD(v84));
      v86 = v79 - ((*(&v172 + 1) + *(&v172 + 1)) * v173);
      v87 = v32 - v76;
      v88 = (v32 - v76) - v78;
      v151[0] = v80 - v83;
      v151[1] = v86;
      v151[2] = v88;
      v152[0] = v82 + v81;
      v89 = v80 + v83;
      v90 = v82 - v81;
      v152[1] = v89;
      v152[2] = v90;
      v153 = v87 - v77;
      v91 = *&v154;
      v92 = v155;
      v93 = v156;
      v94 = v160;
      v95 = v161;
      v96 = v162;
      v97 = v95 * (v95 + v95);
      v98 = v96 * (v96 + v96);
      v99 = (v94 + v94) * v162;
      v100 = (v94 + v94) * v163;
      v101 = (v95 + v95) * v162;
      v102 = (v95 + v95) * v163;
      v103 = (v96 + v96) * v163;
      v104 = (v32 - v97) - v98;
      v105 = ((v94 + v94) * v161) + v103;
      v146.f32[0] = v104;
      v146.f32[1] = v105;
      v106 = ((v94 + v94) * v161) - v103;
      v107 = v32 - (v94 * (v94 + v94));
      v108 = v107 - v98;
      v147[0] = v99 - v102;
      v147[1] = v106;
      v147[2] = v107 - v98;
      v148[0] = v101 + v100;
      v109 = v99 + v102;
      v148[1] = v99 + v102;
      v148[2] = v101 - v100;
      v149 = v107 - v97;
      v110 = ((v85 * (v92 - v72)) + ((v91 - v71) * v84)) + ((v93 - v73) * v151[0]);
      v111 = ((v88 * (v92 - v72)) + ((v91 - v71) * v86)) + ((v93 - v73) * v152[0]);
      v112 = ((v90 * (v92 - v72)) + ((v91 - v71) * v89)) + ((v93 - v73) * v153);
      v176.f32[0] = v110;
      v176.f32[1] = v111;
      v177 = v112;
      do
      {
        v113 = 0;
        v114 = &v151[3 * v70 - 2];
        v115 = *v114;
        v116 = v114[1];
        v117 = v114[2];
        v118 = v69;
        do
        {
          v119 = ((v116 * v146.f32[v113 + 1]) + (v115 * v146.f32[v113])) + (v117 * *(&v146 + v113 * 4 + 8));
          *(v183.f32 + v118) = v119;
          *(v181.f32 + v118) = fabsf(v119) + 0.000001;
          v113 += 3;
          v118 += 4;
        }

        while (v113 != 9);
        ++v70;
        v69 += 12;
      }

      while (v70 != 3);
      v120 = 0;
      v121 = v157;
      v122 = *&v158;
      v123 = v182;
      v124 = v159;
      while (1)
      {
        v125 = (*(v171.f64 + v120 * 4) + (((v122 * *(v123 - 1)) + (v121 * *(v123 - 2))) + (v124 * *v123))) - fabsf(v176.f32[v120]);
        if (v125 < 0.0)
        {
          break;
        }

        *(v178[0].f64 + v120 * 4) = v125;
        ++v120;
        v123 += 3;
        if (v120 == 3)
        {
          v126 = 0;
          v127 = v171.f64[0];
          v128 = *&v171.f64[1];
          do
          {
            v129 = (*(&v157 + v126 * 4) + (((*(&v127 + 1) * v182[v126 + 1]) + (*&v127 * v181.f32[v126])) + (v128 * v182[v126 + 4]))) - fabsf(((v111 * *&v185[v126 * 4]) + (v110 * v183.f32[v126])) + (v112 * *&v185[v126 * 4 + 12]));
            if (v129 < 0.0)
            {
              goto LABEL_71;
            }

            *(&v178[0].f64[1] + v126 * 4 + 4) = v129;
            ++v126;
          }

          while (v126 != 3);
          v130 = 0;
          v52 = *v178[0].f64;
          for (i = 1; i != 6; ++i)
          {
            if (*(v178[0].f64 + i) < v52)
            {
              v130 = i;
              v52 = *(v178[0].f64 + i);
            }
          }

          if (v130 > 2)
          {
            v84 = v104;
            v85 = v105;
            v132 = v147;
            if (v130 != 3)
            {
              v84 = v106;
              v85 = v108;
              v132 = v148;
              if (v130 != 4)
              {
                if (v130 != 5)
                {
                  goto LABEL_77;
                }

                v84 = v109;
                v85 = v101 - v100;
                v132 = &v149;
              }
            }
          }

          else
          {
            v132 = v151;
            if (v130)
            {
              v84 = v86;
              v85 = v88;
              v132 = v152;
              if (v130 != 1)
              {
                v84 = v89;
                v85 = v90;
                v132 = &v153;
                if (v130 != 2)
                {
LABEL_77:
                  v133 = (((v72 - v92) * v85) + (v84 * (v71 - v91))) + (v86 * (v73 - v93));
                  v134 = v133 < 0.0;
                  if (v133 >= 0.0)
                  {
                    v135 = v84;
                  }

                  else
                  {
                    v135 = -v84;
                  }

                  if (v134)
                  {
                    v136 = -v85;
                  }

                  else
                  {
                    v136 = v85;
                  }

                  if (v134)
                  {
                    v137 = -v86;
                  }

                  else
                  {
                    v137 = v86;
                  }

                  v174 = __PAIR64__(LODWORD(v136), LODWORD(v135));
                  v175 = v137;
                  v178[0].f64[0] = *v41;
                  LODWORD(v178[0].f64[1]) = v35[103];
                  fixDir(&v183, &v174, v178);
                  v174 = v183;
                  v175 = v184;
                  goto LABEL_87;
                }
              }
            }
          }

          v86 = *v132;
          goto LABEL_77;
        }
      }

LABEL_71:
      v52 = 0.0;
      goto LABEL_87;
    }
  }

LABEL_94:
  if (v6)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v6);
  }

  if ((v145 & 0x8000000000000000) == 0 && (v145 & 0x7FFFFFFF00000000) != 0)
  {
    if (v144)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }
  }
}

uint64_t PxCreateControllerManager(physx::shdfnd::Foundation *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  physx::shdfnd::Foundation::incRefCount(a1, a2, a3, a4, a5, a6, a7, a8, v14);
  v10 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v11 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Cct::CharacterControllerManager>::getName() [T = physx::Cct::CharacterControllerManager]";
  }

  else
  {
    v11 = "<allocation names disabled>";
  }

  v12 = (*(*(v10 + 24) + 16))(v10 + 24, 272, v11, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcharacterkinematic/src/CctCharacterControllerManager.cpp", 697);

  return physx::Cct::CharacterControllerManager::CharacterControllerManager(v12, a1, v8);
}

void physx::Cct::Controller::setUpDirectionInternal(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  if (*(a1 + 32) != *a2)
  {
    v5 = *(a2 + 4);
LABEL_6:
    v6 = 1065353216;
    v7 = 0;
    physx::PxShortestRotation(&v6, a2, &v8);
    *(a1 + 16) = v8;
    *(a1 + 32) = v4;
    *(a1 + 36) = v5;
    *(a1 + 40) = *(a2 + 8);
    return;
  }

  v5 = *(a2 + 4);
  if (*(a1 + 36) != v5 || *(a1 + 40) != *(a2 + 8))
  {
    goto LABEL_6;
  }
}

uint64_t physx::Cct::Controller::getInternalState(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(*(result + 600) + 200);
  if (v4 == 1)
  {
    if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
    {
      result = pthread_mutex_lock(*(result + 592));
      LOBYTE(v4) = *(*(v3 + 600) + 200);
    }

    else
    {
      LOBYTE(v4) = 1;
    }
  }

  *a2 = *(v3 + 520);
  *(a2 + 8) = *(v3 + 528);
  v5 = *(v3 + 296);
  *(a2 + 16) = *(v3 + 272);
  *(a2 + 24) = v5;
  v6 = *(v3 + 468);
  *(a2 + 40) = (v6 & 0x10) != 0;
  *(a2 + 41) = (v6 & 0x20) != 0;
  LODWORD(v5) = *(v3 + 320);
  *(a2 + 42) = BYTE1(v6) & 1;
  v7 = *(v3 + 584);
  *(a2 + 32) = v5;
  *(a2 + 36) = v7;
  if (v4 & 1) != 0 && ((physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled))
  {
    v8 = *(v3 + 592);

    return pthread_mutex_unlock(v8);
  }

  return result;
}

uint64_t physx::Cct::Controller::setPos(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  *(a1 + 512) = *(a2 + 2);
  *(a1 + 496) = v3;
  result = *(a1 + 488);
  if (result)
  {
    (*(*result + 152))(&v8);
    v5 = *(a1 + 512);
    v9 = vcvt_f32_f64(*(a1 + 496));
    v10 = v5;
    v8 = *(a1 + 16);
    return (*(**(a1 + 488) + 496))(*(a1 + 488), &v8, v6, v7);
  }

  return result;
}

uint64_t physx::Cct::BoxController::release(physx::Cct::BoxController *this)
{
  v1 = *(this + 76);
  v2 = (*(*(this + 1) + 32))();

  return physx::Cct::CharacterControllerManager::releaseController(v1, v2);
}

uint64_t physx::Cct::BoxController::setStepOffset(uint64_t this, float a2)
{
  if (a2 >= 0.0)
  {
    *(this + 60) = a2;
  }

  return this;
}

uint64_t physx::Cct::BoxController::setContactOffset(uint64_t this, float a2)
{
  if (a2 > 0.0)
  {
    *(this + 56) = a2;
  }

  return this;
}

float physx::Cct::BoxController::getUpDirection@<S0>(physx::Cct::BoxController *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = *(this + 5);
  result = *(this + 12);
  *(a2 + 8) = result;
  return result;
}

uint64_t physx::Cct::BoxController::setSlopeLimit(uint64_t this, float a2)
{
  if (a2 > 0.0)
  {
    *(this + 52) = a2;
  }

  return this;
}

int8x8_t physx::Cct::BoxController::getStats(uint64_t a1, int8x8_t *a2)
{
  result = vext_s8(*(a1 + 468), *(a1 + 468), 6uLL);
  *a2 = result;
  return result;
}

uint64_t physx::Cct::CapsuleController::release(physx::Cct::CapsuleController *this)
{
  v1 = *(this + 76);
  v2 = (*(*(this + 1) + 32))();

  return physx::Cct::CharacterControllerManager::releaseController(v1, v2);
}

uint64_t physx::Cct::CapsuleController::setStepOffset(uint64_t this, float a2)
{
  if (a2 >= 0.0)
  {
    *(this + 60) = a2;
  }

  return this;
}

uint64_t physx::Cct::CapsuleController::setContactOffset(uint64_t this, float a2)
{
  if (a2 > 0.0)
  {
    *(this + 56) = a2;
  }

  return this;
}

float physx::Cct::CapsuleController::getUpDirection@<S0>(physx::Cct::CapsuleController *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = *(this + 5);
  result = *(this + 12);
  *(a2 + 8) = result;
  return result;
}

uint64_t physx::Cct::CapsuleController::setSlopeLimit(uint64_t this, float a2)
{
  if (a2 > 0.0)
  {
    *(this + 52) = a2;
  }

  return this;
}

int8x8_t physx::Cct::CapsuleController::getStats(uint64_t a1, int8x8_t *a2)
{
  result = vext_s8(*(a1 + 468), *(a1 + 468), 6uLL);
  *a2 = result;
  return result;
}

BOOL shouldApplyRecoveryModule(unsigned __int16 *a1)
{
  v3 = a1[4];
  if (v3 != 5)
  {
    return v3 == 6;
  }

  v6 = v1;
  v7 = v2;
  (*(*a1 + 432))(&v5);
  return v5 & 1;
}

uint64_t SweepBoxUserBox(uint64_t a1, uint64_t a2, uint64_t a3, float64x2_t *a4, uint64_t a5, uint64_t a6)
{
  v32 = 3;
  v33 = *(a2 + 40);
  v34 = *(a2 + 48);
  v8 = *(a3 + 20);
  v30 = vcvt_f32_f64(vsubq_f64(*a4, v8));
  v9 = *(a3 + 36);
  v10 = a4[1].f64[0] - v9;
  v31 = v10;
  v29 = *(a1 + 284);
  v26 = 3;
  v27 = *(a3 + 68);
  v28 = *(a3 + 76);
  v24 = vcvt_f32_f64(vsubq_f64(*(a3 + 44), v8));
  v11 = *(a3 + 60) - v9;
  v25 = v11;
  v23 = *(a3 + 80);
  v17[0] = 0;
  v17[1] = 0;
  v18 = -1;
  v19 = 0;
  v21 = 0uLL;
  v20 = 0;
  v22 = 3.4028e38;
  if (*(a1 + 339))
  {
    v12 = 1283;
  }

  else
  {
    v12 = 1027;
  }

  v16 = v12;
  result = physx::PxGeometryQuery::sweep(a5, &v32, &v29, &v26, &v23, v17, &v16);
  if (result)
  {
    v14 = v22;
    if (v22 >= *(a6 + 36))
    {
      return 0;
    }

    else
    {
      *(a6 + 32) = HIDWORD(v21);
      *(a6 + 36) = v14;
      *(a6 + 40) = -1;
      *a6 = vaddq_f64(*(a3 + 20), vcvtq_f64_f32(v20));
      v15 = *(&v21 + 4);
      *(a6 + 16) = *(a3 + 36) + *&v21;
      *(a6 + 24) = v15;
      return 1;
    }
  }

  return result;
}

uint64_t SweepBoxUserCapsule(uint64_t a1, uint64_t a2, uint64_t a3, float64x2_t *a4, uint64_t a5, uint64_t a6)
{
  v31 = 3;
  v32 = *(a2 + 40);
  v33 = *(a2 + 48);
  v10 = *(a3 + 20);
  v29 = vcvt_f32_f64(vsubq_f64(*a4, v10));
  v11 = *(a3 + 36);
  v12 = a4[1].f64[0] - v11;
  v30 = v12;
  v28 = *(a1 + 284);
  v26[0] = 2;
  v27 = 0.0;
  v36 = vcvt_f32_f64(vsubq_f64(*(a3 + 44), v10));
  v13 = *(a3 + 60) - v11;
  v37 = v13;
  v34 = vcvt_f32_f64(vsubq_f64(*(a3 + 68), v10));
  v14 = *(a3 + 84) - v11;
  v35 = v14;
  v26[1] = *(a3 + 92);
  physx::PxTransformFromSegment(&v36, &v34, &v27, &v18);
  v23 = v18;
  v24 = v19;
  v25 = v20.i32[0];
  if (v27 == 0.0)
  {
    v27 = 0.00000011921;
  }

  v18 = 0uLL;
  LODWORD(v19) = -1;
  WORD2(v19) = 0;
  v21 = 0uLL;
  v20 = 0;
  v22 = 3.4028e38;
  if (*(a1 + 339))
  {
    v15 = 1283;
  }

  else
  {
    v15 = 1027;
  }

  v36.i16[0] = v15;
  result = physx::PxGeometryQuery::sweep(a5, &v31, &v28, v26, &v23, &v18, &v36);
  if (result)
  {
    v17 = v22;
    if (v22 >= *(a6 + 36))
    {
      return 0;
    }

    else
    {
      *(a6 + 24) = *(&v21 + 4);
      *(a6 + 32) = HIDWORD(v21);
      *(a6 + 36) = v17;
      *(a6 + 40) = -1;
      *a6 = vaddq_f64(*(a3 + 20), vcvtq_f64_f32(v20));
      *(a6 + 16) = *(a3 + 36) + *&v21;
      return 1;
    }
  }

  return result;
}

uint64_t SweepBoxMesh(uint64_t a1, uint64_t a2, uint64_t a3, float64x2_t *a4, float32x2_t *a5, uint64_t a6, double a7, double a8, double a9, double a10, double a11, double a12, float32x4_t a13, __n128 a14)
{
  v14 = *(a3 + 44);
  if (!v14)
  {
    return 0;
  }

  v15 = *(a1 + 16) + 36 * *(a3 + 48);
  v16 = *(a1 + 4 * *(a1 + 112) + 116);
  if (v16 >= v14)
  {
    v16 = 0;
  }

  v23 = 3;
  v24 = *(a2 + 40);
  v25 = *(a2 + 48);
  v17 = a4[1].f64[0] - *(a3 + 36);
  *&v17 = v17;
  v20 = *(a1 + 284);
  v18 = *(a3 + 20);
  v21 = COERCE_DOUBLE(vcvt_f32_f64(vsubq_f64(*a4, v18)));
  v22 = LODWORD(v17);
  return sweepVolumeVsMesh(a1, a3, a6, a5, &v23, &v20, v14, v15, v17, v21, v18.f64[0], a10, a11, a12, a13, a14, v16);
}

uint64_t SweepBoxBox(uint64_t a1, uint64_t a2, uint64_t a3, float64x2_t *a4, uint64_t a5, uint64_t a6)
{
  v29 = 3;
  v30 = *(a2 + 40);
  v31 = *(a2 + 48);
  v27 = vcvt_f32_f64(vsubq_f64(*a4, *(a3 + 20)));
  v8 = a4[1].f64[0] - *(a3 + 36);
  v28 = v8;
  v26 = *(a1 + 284);
  v23 = 3;
  v24 = *(a3 + 56);
  v25 = *(a3 + 64);
  v21 = *(a3 + 44);
  v22 = *(a3 + 52);
  v20 = *(a3 + 68);
  v14[0] = 0;
  v14[1] = 0;
  v15 = -1;
  v16 = 0;
  v18 = 0uLL;
  v17 = 0;
  v19 = 3.4028e38;
  if (*(a1 + 339))
  {
    v9 = 1283;
  }

  else
  {
    v9 = 1027;
  }

  v13 = v9;
  result = physx::PxGeometryQuery::sweep(a5, &v29, &v26, &v23, &v20, v14, &v13);
  if (result)
  {
    v11 = v19;
    if (v19 >= *(a6 + 36))
    {
      return 0;
    }

    else
    {
      *(a6 + 32) = HIDWORD(v18);
      *(a6 + 36) = v11;
      *(a6 + 40) = -1;
      *a6 = vaddq_f64(*(a3 + 20), vcvtq_f64_f32(v17));
      v12 = *(&v18 + 4);
      *(a6 + 16) = *(a3 + 36) + *&v18;
      *(a6 + 24) = v12;
      return 1;
    }
  }

  return result;
}

double SweepBoxSphere(uint64_t a1, uint64_t a2, uint64_t a3, float64x2_t *a4, uint64_t a5, uint64_t a6)
{
  v25 = 3;
  v26 = *(a2 + 40);
  v27 = *(a2 + 48);
  v23 = vcvt_f32_f64(vsubq_f64(*a4, *(a3 + 20)));
  v8 = a4[1].f64[0] - *(a3 + 36);
  v24 = v8;
  v22 = *(a1 + 284);
  v21[0] = 0;
  v9 = *(a3 + 52);
  v21[1] = *(a3 + 56);
  v19 = *(a3 + 44);
  v20 = v9;
  v18 = xmmword_1E30474D0;
  v13[0] = 0;
  v13[1] = 0;
  v14 = -1;
  v15 = 0;
  *v17 = 0uLL;
  v16 = 0;
  *&v17[16] = 2139095039;
  if (*(a1 + 339))
  {
    v10 = 1283;
  }

  else
  {
    v10 = 1027;
  }

  v12 = v10;
  if (physx::PxGeometryQuery::sweep(a5, &v25, &v22, v21, &v18, v13, &v12))
  {
    *(a6 + 24) = *&v17[4];
    *(a6 + 40) = -1;
    *a6 = vaddq_f64(*(a3 + 20), vcvtq_f64_f32(v16));
    result = *(a3 + 36) + *v17;
    *(a6 + 16) = result;
  }

  return result;
}

uint64_t SweepBoxCapsule(uint64_t a1, uint64_t a2, uint64_t a3, float64x2_t *a4, uint64_t a5, uint64_t a6)
{
  v28 = 3;
  v29 = *(a2 + 40);
  v30 = *(a2 + 48);
  v26 = vcvt_f32_f64(vsubq_f64(*a4, *(a3 + 20)));
  v10 = a4[1].f64[0] - *(a3 + 36);
  v27 = v10;
  v25 = *(a1 + 284);
  v23[0] = 2;
  v24 = 0.0;
  v23[1] = *(a3 + 68);
  physx::PxTransformFromSegment((a3 + 44), (a3 + 56), &v24, &v15);
  v20 = v15;
  v21 = v16;
  v22 = v17.i32[0];
  if (v24 == 0.0)
  {
    v24 = 0.00000011921;
  }

  v15 = 0uLL;
  LODWORD(v16) = -1;
  WORD2(v16) = 0;
  v18 = 0uLL;
  v17 = 0;
  v19 = 3.4028e38;
  if (*(a1 + 339))
  {
    v11 = 1283;
  }

  else
  {
    v11 = 1027;
  }

  v14 = v11;
  result = physx::PxGeometryQuery::sweep(a5, &v28, &v25, v23, &v20, &v15, &v14);
  if (result)
  {
    v13 = v19;
    if (v19 >= *(a6 + 36))
    {
      return 0;
    }

    else
    {
      *(a6 + 24) = *(&v18 + 4);
      *(a6 + 32) = HIDWORD(v18);
      *(a6 + 36) = v13;
      *(a6 + 40) = -1;
      *a6 = vaddq_f64(*(a3 + 20), vcvtq_f64_f32(v17));
      *(a6 + 16) = *(a3 + 36) + *&v18;
      return 1;
    }
  }

  return result;
}

uint64_t SweepCapsuleUserBox(uint64_t a1, uint64_t a2, uint64_t a3, float64x2_t *a4, uint64_t a5, uint64_t a6)
{
  LODWORD(v33[0]) = 2;
  v8 = *(a2 + 44) * 0.5;
  v33[1] = *(a2 + 40);
  v33[2] = v8;
  v9 = *(a3 + 20);
  v31 = vcvt_f32_f64(vsubq_f64(*a4, v9));
  v10 = *(a3 + 36);
  v11 = a4[1].f64[0] - v10;
  v32 = v11;
  v30 = *(a1 + 284);
  v27 = 3;
  v28 = *(a3 + 68);
  v29 = *(a3 + 76);
  v25 = vcvt_f32_f64(vsubq_f64(*(a3 + 44), v9));
  v12 = *(a3 + 60) - v10;
  v26 = v12;
  v24 = *(a3 + 80);
  v18[0] = 0;
  v18[1] = 0;
  v19 = -1;
  v20 = 0;
  v22 = 0uLL;
  v21 = 0;
  v23 = 3.4028e38;
  if (*(a1 + 339))
  {
    v13 = 1283;
  }

  else
  {
    v13 = 1027;
  }

  v17 = v13;
  result = physx::PxGeometryQuery::sweep(a5, v33, &v30, &v27, &v24, v18, &v17);
  if (result)
  {
    v15 = v23;
    if (v23 >= *(a6 + 36))
    {
      return 0;
    }

    else
    {
      *(a6 + 32) = HIDWORD(v22);
      *(a6 + 36) = v15;
      *(a6 + 40) = -1;
      *a6 = vaddq_f64(*(a3 + 20), vcvtq_f64_f32(v21));
      v16 = *(&v22 + 4);
      *(a6 + 16) = *(a3 + 36) + *&v22;
      *(a6 + 24) = v16;
      return 1;
    }
  }

  return result;
}

uint64_t SweepCapsuleUserCapsule(uint64_t a1, uint64_t a2, uint64_t a3, float64x2_t *a4, uint64_t a5, uint64_t a6)
{
  v32[0] = 2;
  v10 = *(a2 + 44) * 0.5;
  v32[1] = *(a2 + 40);
  *&v32[2] = v10;
  v11 = *(a3 + 20);
  v30 = vcvt_f32_f64(vsubq_f64(*a4, v11));
  v12 = *(a3 + 36);
  v13 = a4[1].f64[0] - v12;
  v31 = v13;
  v29 = *(a1 + 284);
  v27[0] = 2;
  v28 = 0.0;
  v35 = vcvt_f32_f64(vsubq_f64(*(a3 + 44), v11));
  v14 = *(a3 + 60) - v12;
  v36 = v14;
  v33 = vcvt_f32_f64(vsubq_f64(*(a3 + 68), v11));
  v15 = *(a3 + 84) - v12;
  v34 = v15;
  v27[1] = *(a3 + 92);
  physx::PxTransformFromSegment(&v35, &v33, &v28, &v19);
  v24 = v19;
  v25 = v20;
  v26 = v21.i32[0];
  if (v28 == 0.0)
  {
    v28 = 0.00000011921;
  }

  v19 = 0uLL;
  LODWORD(v20) = -1;
  WORD2(v20) = 0;
  v22 = 0uLL;
  v21 = 0;
  v23 = 3.4028e38;
  if (*(a1 + 339))
  {
    v16 = 1283;
  }

  else
  {
    v16 = 1027;
  }

  v35.i16[0] = v16;
  result = physx::PxGeometryQuery::sweep(a5, v32, &v29, v27, &v24, &v19, &v35);
  if (result)
  {
    v18 = v23;
    if (v23 >= *(a6 + 36))
    {
      return 0;
    }

    else
    {
      *(a6 + 24) = *(&v22 + 4);
      *(a6 + 32) = HIDWORD(v22);
      *(a6 + 36) = v18;
      *(a6 + 40) = -1;
      *a6 = vaddq_f64(*(a3 + 20), vcvtq_f64_f32(v21));
      *(a6 + 16) = *(a3 + 36) + *&v22;
      return 1;
    }
  }

  return result;
}

uint64_t SweepCapsuleMesh(uint64_t a1, uint64_t a2, uint64_t a3, float64x2_t *a4, float32x2_t *a5, uint64_t a6, double a7, double a8, double a9, double a10, double a11, double a12, float32x4_t a13, __n128 a14)
{
  v14 = *(a3 + 44);
  if (!v14)
  {
    return 0;
  }

  v15 = *(a2 + 40);
  LODWORD(a9) = 0.5;
  v16 = *(a2 + 44) * 0.5;
  v17 = *(a1 + 16) + 36 * *(a3 + 48);
  v18 = *(a1 + 4 * *(a1 + 112) + 116);
  if (v18 >= v14)
  {
    v18 = 0;
  }

  v25[0] = 2;
  v25[1] = v15;
  *&v25[2] = v16;
  v23 = vcvt_f32_f64(vsubq_f64(*a4, *(a3 + 20)));
  v19 = *(a3 + 36);
  v20 = a4[1].f64[0] - v19;
  v24 = v20;
  return sweepVolumeVsMesh(a1, a3, a6, a5, v25, &v22, v14, v17, *(a1 + 284), v19, a9, a10, a11, a12, a13, a14, v18);
}

uint64_t SweepCapsuleBox(uint64_t a1, uint64_t a2, uint64_t a3, float64x2_t *a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a2 + 40);
  v9 = *(a2 + 44) * 0.5;
  LODWORD(v31[0]) = 2;
  v31[1] = v8;
  v31[2] = v9;
  v29 = vcvt_f32_f64(vsubq_f64(*a4, *(a3 + 20)));
  v10 = a4[1].f64[0] - *(a3 + 36);
  v30 = v10;
  v28 = *(a1 + 284);
  v25 = 3;
  v26 = *(a3 + 56);
  v27 = *(a3 + 64);
  v23 = *(a3 + 44);
  v24 = *(a3 + 52);
  v22 = *(a3 + 68);
  v16[0] = 0;
  v16[1] = 0;
  v17 = -1;
  v18 = 0;
  v20 = 0uLL;
  v19 = 0;
  v21 = 3.4028e38;
  if (*(a1 + 339))
  {
    v11 = 1283;
  }

  else
  {
    v11 = 1027;
  }

  v15 = v11;
  result = physx::PxGeometryQuery::sweep(a5, v31, &v28, &v25, &v22, v16, &v15);
  if (result)
  {
    v13 = v21;
    if (v21 >= *(a6 + 36))
    {
      return 0;
    }

    else
    {
      *(a6 + 32) = HIDWORD(v20);
      *(a6 + 36) = v13;
      *(a6 + 40) = -1;
      *a6 = vaddq_f64(*(a3 + 20), vcvtq_f64_f32(v19));
      v14 = *(&v20 + 4);
      *(a6 + 16) = *(a3 + 36) + *&v20;
      *(a6 + 24) = v14;
      return 1;
    }
  }

  return result;
}

uint64_t SweepCapsuleSphere(uint64_t a1, uint64_t a2, uint64_t a3, float64x2_t *a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a2 + 40);
  v9 = *(a2 + 44) * 0.5;
  LODWORD(v30[0]) = 2;
  v30[1] = v8;
  v30[2] = v9;
  v28 = vcvt_f32_f64(vsubq_f64(*a4, *(a3 + 20)));
  v10 = a4[1].f64[0] - *(a3 + 36);
  v29 = v10;
  v27 = *(a1 + 284);
  v26[0] = 0;
  v11 = *(a3 + 52);
  v26[1] = *(a3 + 56);
  v24 = *(a3 + 44);
  v25 = v11;
  v23 = xmmword_1E30474D0;
  v17[0] = 0;
  v17[1] = 0;
  v18 = -1;
  v19 = 0;
  v21 = 0uLL;
  v20 = 0;
  v22 = 3.4028e38;
  if (*(a1 + 339))
  {
    v12 = 1283;
  }

  else
  {
    v12 = 1027;
  }

  v16 = v12;
  result = physx::PxGeometryQuery::sweep(a5, v30, &v27, v26, &v23, v17, &v16);
  if (result)
  {
    v14 = v22;
    if (v22 >= *(a6 + 36))
    {
      return 0;
    }

    else
    {
      *(a6 + 32) = HIDWORD(v21);
      *(a6 + 36) = v14;
      *(a6 + 40) = -1;
      *a6 = vaddq_f64(*(a3 + 20), vcvtq_f64_f32(v20));
      v15 = *(&v21 + 4);
      *(a6 + 16) = *(a3 + 36) + *&v21;
      *(a6 + 24) = v15;
      return 1;
    }
  }

  return result;
}

uint64_t SweepCapsuleCapsule(uint64_t a1, uint64_t a2, uint64_t a3, float64x2_t *a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a2 + 40);
  v11 = *(a2 + 44) * 0.5;
  LODWORD(v30[0]) = 2;
  v30[1] = v10;
  v30[2] = v11;
  v28 = vcvt_f32_f64(vsubq_f64(*a4, *(a3 + 20)));
  v12 = a4[1].f64[0] - *(a3 + 36);
  v29 = v12;
  v27 = *(a1 + 284);
  v25[0] = 2;
  v26 = 0.0;
  v25[1] = *(a3 + 68);
  physx::PxTransformFromSegment((a3 + 44), (a3 + 56), &v26, &v17);
  v22 = v17;
  v23 = v18;
  v24 = v19.i32[0];
  if (v26 == 0.0)
  {
    v26 = 0.00000011921;
  }

  v17 = 0uLL;
  LODWORD(v18) = -1;
  WORD2(v18) = 0;
  v20 = 0uLL;
  v19 = 0;
  v21 = 3.4028e38;
  if (*(a1 + 339))
  {
    v13 = 1283;
  }

  else
  {
    v13 = 1027;
  }

  v16 = v13;
  result = physx::PxGeometryQuery::sweep(a5, v30, &v27, v25, &v22, &v17, &v16);
  if (result)
  {
    v15 = v21;
    if (v21 >= *(a6 + 36))
    {
      return 0;
    }

    else
    {
      *(a6 + 24) = *(&v20 + 4);
      *(a6 + 32) = HIDWORD(v20);
      *(a6 + 36) = v15;
      *(a6 + 40) = -1;
      *a6 = vaddq_f64(*(a3 + 20), vcvtq_f64_f32(v19));
      *(a6 + 16) = *(a3 + 36) + *&v20;
      return 1;
    }
  }

  return result;
}

uint64_t sweepVolumeVsMesh(uint64_t a1, uint64_t a2, uint64_t a3, float32x2_t *a4, int *a5, int32x2_t *a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14, float32x4_t a15, __n128 q7_0, unsigned int a16)
{
  v26[0] = 0;
  v26[1] = 0;
  v27 = -1;
  v28 = 0;
  v30 = 0uLL;
  v29 = 0;
  v31 = 3.4028e38;
  LODWORD(a9) = *(a3 + 36);
  result = physx::PxMeshQuery::sweep(a4, a5, a6, a7, a8, v26, &v25, &a16, a9, 0.0, a11, a12, a13, a14, a15, q7_0, 0);
  if (result)
  {
    v21 = v31;
    if (v31 >= *(a3 + 36))
    {
      return 0;
    }

    else
    {
      *(a3 + 32) = HIDWORD(v30);
      *(a3 + 36) = v21;
      *a3 = vaddq_f64(*(a2 + 20), vcvtq_f64_f32(v29));
      v22 = *(&v30 + 4);
      *(a3 + 16) = *(a2 + 36) + *&v30;
      *(a3 + 24) = v22;
      v23 = v27;
      *(a1 + 4 * *(a1 + 112) + 116) = v27;
      v24 = *(a2 + 48);
      *(a3 + 40) = v24 + v23;
      *(a3 + 44) = *(*(a1 + 32) + 4 * v24 + 4 * v23);
      return 1;
    }
  }

  return result;
}

uint64_t ControllerFilter::preFilter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  (*(*a3 + 312))(&v17, a3);
  if ((v17 & 4) != 0)
  {
    return 0;
  }

  v10 = *(a1 + 8);
  if (*(v10 + 52))
  {
    v11 = (~(a3 << 32) + a3) ^ ((~(a3 << 32) + a3) >> 22);
    v12 = 9 * ((v11 + ~(v11 << 13)) ^ ((v11 + ~(v11 << 13)) >> 8));
    v13 = (v12 ^ (v12 >> 15)) + ~((v12 ^ (v12 >> 15)) << 27);
    v14 = *(*(v10 + 24) + 4 * ((*(v10 + 36) - 1) & ((v13 >> 31) ^ v13)));
    if (v14 != -1)
    {
      while (*(*(v10 + 8) + 8 * v14) != a3)
      {
        v14 = *(*(v10 + 16) + 4 * v14);
        if (v14 == -1)
        {
          goto LABEL_6;
        }
      }

      return 0;
    }
  }

LABEL_6:
  v15 = *(a1 + 16);
  if (v15)
  {
    return (**v15)(v15, a2, a3, a4, a5);
  }

  else
  {
    return 2;
  }
}

uint64_t ControllerFilter::postFilter(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t tessellateTriangle(_DWORD *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, _WORD *a7, float a8)
{
  v16[0] = 0;
  v16[1] = a3;
  v17 = a4;
  v18 = a5;
  v10 = vextq_s8(*a6, *a6, 8uLL);
  v11 = vextq_s8(*a6, v10, 0xCuLL);
  v12 = vsubq_f32(*a6, v11);
  *(v11.i64 + 4) = *(a6 + 16);
  v13 = vaddq_f32(*a6, v11);
  v13.i32[3] = v12.i32[3];
  v14 = vsub_f32(*(a6 + 16), vext_s8(*a6, *v10.i8, 4uLL));
  v10.i64[0] = 0x3F0000003F000000;
  v10.i64[1] = 0x3F0000003F000000;
  v19 = vmulq_f32(v13, v10);
  v20 = vmul_f32(v14, 0x3F0000003F000000);
  v21 = a8;
  v22 = 0;
  result = tessellateTriangleRecursive(v16, a2, (a2 + 12), (a2 + 24));
  *a1 += v16[0];
  *a7 += v22;
  return result;
}