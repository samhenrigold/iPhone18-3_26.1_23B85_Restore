void sub_2717853EC(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_2808791B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2808791B0))
  {
    sub_271612B8C();
  }

  if ((atomic_load_explicit(&qword_280878DF0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_280878DF0))
    {
      sub_2715F0A34();
    }
  }

  v3 = *(a2 + 48);
  sub_27120A854("Attempting to create an ", qword_280879198, " from an ", qword_280878DD8, " but the image is of incompatible format ", &v3);
}

void sub_271785504(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_2808791D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2808791D0))
  {
    sub_2716135E4();
  }

  if ((atomic_load_explicit(&qword_280878DF0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_280878DF0))
    {
      sub_2715F0A34();
    }
  }

  v3 = *(a2 + 48);
  sub_27120A854("Attempting to create an ", qword_2808791B8, " from an ", qword_280878DD8, " but the image is of incompatible format ", &v3);
}

void sub_27178561C(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_280879290, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280879290))
  {
    sub_271616684();
  }

  if ((atomic_load_explicit(&qword_280878DF0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_280878DF0))
    {
      sub_2715F0A34();
    }
  }

  v3 = *(a2 + 48);
  sub_27120A854("Attempting to create an ", qword_280879278, " from an ", qword_280878DD8, " but the image is of incompatible format ", &v3);
}

void sub_271785734(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_2808792B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2808792B0))
  {
    sub_2716170DC();
  }

  if ((atomic_load_explicit(&qword_280878DF0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_280878DF0))
    {
      sub_2715F0A34();
    }
  }

  v3 = *(a2 + 48);
  sub_27120A854("Attempting to create an ", qword_280879298, " from an ", qword_280878DD8, " but the image is of incompatible format ", &v3);
}

void sub_27178584C(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_2808792D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2808792D0))
  {
    sub_271617B34();
  }

  if ((atomic_load_explicit(&qword_280878DF0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_280878DF0))
    {
      sub_2715F0A34();
    }
  }

  v3 = *(a2 + 48);
  sub_27120A854("Attempting to create an ", qword_2808792B8, " from an ", qword_280878DD8, " but the image is of incompatible format ", &v3);
}

void sub_271785964(int a1@<W0>, uint64_t **a2@<X1>, uint64_t a3@<X8>)
{
  switch(a1)
  {
    case 1:
      v4 = **a2;
      v5 = (*a2)[1];
      v486 = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      if (!v4)
      {
        sub_2715E946C(a2[1]);
      }

      v6 = (*(*v4 + 24))(v4);
      (*(*v6 + 24))(&v496);
      v7 = v496;
      v496 = 0;
      v500 = v7;
      if (v7)
      {
        operator new();
      }

      v501 = 0;
      v487 = 0;
      v488 = 0;
      v489 = 0;
      (*(MEMORY[0] + 64))(&v498, 0, 1);
      v399 = *(v498 + 16);
      *v490 = *v498;
      *&v490[16] = v399;
      v498 = 0;
      MEMORY[0x2743BF050]();
      *&v490[24] = *v490;
      *&v490[32] = *&v490[8];
      v400 = (*(MEMORY[0] + 104))(0);
      LOWORD(v491) = v400 & ((v400 >> 1) >> 15);
      v401 = v501;
      if (v501 && !atomic_fetch_add(&v501->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v401->__on_zero_shared)(v401);
        std::__shared_weak_count::__release_weak(v401);
      }

      v402 = v496;
      v496 = 0;
      if (v402)
      {
        (*(*v402 + 8))(v402);
      }

      *a3 = &unk_28810F9B8;
      v403 = v488;
      if (v488)
      {
        atomic_fetch_add_explicit(&v488->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v498 = v487;
      v499 = v488;
      v500 = 0;
      v501 = 0;
      sub_2717F1B04(&v496, &v490[32], 2, &v490[40], 2, 1);
      v404 = v489 | 0x100000000;
      v190 = v491;
      if (!BYTE4(v489))
      {
        v404 = 0;
      }

      *(a3 + 8) = v487;
      *(a3 + 16) = v403;
      v405 = v496;
      *(a3 + 24) = v404;
      *(a3 + 32) = v405;
      *(a3 + 40) = v497;
      v173 = v488;
      *(a3 + 48) = *v490;
      *(a3 + 56) = 1;
      goto LABEL_645;
    case 2:
      v120 = **a2;
      v121 = (*a2)[1];
      v486 = v121;
      if (v121)
      {
        atomic_fetch_add_explicit((v121 + 8), 1uLL, memory_order_relaxed);
      }

      if (!v120)
      {
        sub_2715F17FC(a2[1]);
      }

      v122 = (*(*v120 + 24))(v120);
      (*(*v122 + 24))(&v496);
      v123 = v496;
      v496 = 0;
      v500 = v123;
      if (v123)
      {
        operator new();
      }

      v501 = 0;
      v487 = 0;
      v488 = 0;
      v489 = 0;
      (*(MEMORY[0] + 64))(&v498, 0, 2);
      v393 = *(v498 + 16);
      *v490 = *v498;
      *&v490[16] = v393;
      v498 = 0;
      MEMORY[0x2743BF050]();
      *&v490[24] = *v490;
      *&v490[32] = *&v490[8];
      v394 = (*(MEMORY[0] + 104))(0);
      LOWORD(v491) = v394 & ((v394 >> 1) >> 15);
      v395 = v501;
      if (v501 && !atomic_fetch_add(&v501->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v395->__on_zero_shared)(v395);
        std::__shared_weak_count::__release_weak(v395);
      }

      v396 = v496;
      v496 = 0;
      if (v396)
      {
        (*(*v396 + 8))(v396);
      }

      *a3 = &unk_28810F9B8;
      v302 = v487;
      v301 = v488;
      if (v488)
      {
        atomic_fetch_add_explicit(&v488->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v498 = v487;
      v499 = v488;
      v500 = 0;
      v501 = 0;
      v303 = BYTE4(v489);
      v304 = 2;
      sub_2717F1B04(&v496, &v490[32], 2, &v490[40], 2, 2);
      v170 = v491;
      v305 = (2 * v489);
      goto LABEL_528;
    case 3:
      v116 = **a2;
      v117 = (*a2)[1];
      v486 = v117;
      if (v117)
      {
        atomic_fetch_add_explicit((v117 + 8), 1uLL, memory_order_relaxed);
      }

      if (!v116)
      {
        sub_2717179D4(a2[1]);
      }

      v118 = (*(*v116 + 24))(v116);
      (*(*v118 + 24))(&v496);
      v119 = v496;
      v496 = 0;
      v500 = v119;
      if (v119)
      {
        operator new();
      }

      v501 = 0;
      v487 = 0;
      v488 = 0;
      v489 = 0;
      (*(MEMORY[0] + 64))(&v498, 0, 3);
      v386 = *(v498 + 16);
      *v490 = *v498;
      *&v490[16] = v386;
      v498 = 0;
      MEMORY[0x2743BF050]();
      *&v490[24] = *v490;
      *&v490[32] = *&v490[8];
      v387 = (*(MEMORY[0] + 104))(0);
      LOWORD(v491) = v387 & ((v387 >> 1) >> 15);
      v388 = v501;
      if (v501 && !atomic_fetch_add(&v501->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v388->__on_zero_shared)(v388);
        std::__shared_weak_count::__release_weak(v388);
      }

      v389 = v496;
      v496 = 0;
      if (v389)
      {
        (*(*v389 + 8))(v389);
      }

      *a3 = &unk_28810F9B8;
      v390 = v488;
      if (v488)
      {
        atomic_fetch_add_explicit(&v488->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v498 = v487;
      v499 = v488;
      v500 = 0;
      v501 = 0;
      sub_2717F1B04(&v496, &v490[32], 2, &v490[40], 2, 2);
      v170 = v491;
      v391 = (2 * v489) | 0x100000000;
      if (!BYTE4(v489))
      {
        v391 = 0;
      }

      *(a3 + 8) = v487;
      *(a3 + 16) = v390;
      v392 = v496;
      *(a3 + 24) = v391;
      *(a3 + 32) = v392;
      *(a3 + 40) = v497;
      v173 = v488;
      *(a3 + 48) = *v490;
      v174 = 3;
      goto LABEL_631;
    case 4:
      v72 = **a2;
      v73 = (*a2)[1];
      v486 = v73;
      if (v73)
      {
        atomic_fetch_add_explicit((v73 + 8), 1uLL, memory_order_relaxed);
      }

      if (!v72)
      {
        sub_271717C58(a2[1]);
      }

      v74 = (*(*v72 + 24))(v72);
      (*(*v74 + 24))(&v496);
      v75 = v496;
      v496 = 0;
      v500 = v75;
      if (v75)
      {
        operator new();
      }

      v501 = 0;
      v487 = 0;
      v488 = 0;
      v489 = 0;
      (*(MEMORY[0] + 64))(&v498, 0, 4);
      v297 = *(v498 + 16);
      *v490 = *v498;
      *&v490[16] = v297;
      v498 = 0;
      MEMORY[0x2743BF050]();
      *&v490[24] = *v490;
      *&v490[32] = *&v490[8];
      v298 = (*(MEMORY[0] + 104))(0);
      LOWORD(v491) = v298 & ((v298 >> 1) >> 15);
      v299 = v501;
      if (v501 && !atomic_fetch_add(&v501->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v299->__on_zero_shared)(v299);
        std::__shared_weak_count::__release_weak(v299);
      }

      v300 = v496;
      v496 = 0;
      if (v300)
      {
        (*(*v300 + 8))(v300);
      }

      *a3 = &unk_28810F9B8;
      v302 = v487;
      v301 = v488;
      if (v488)
      {
        atomic_fetch_add_explicit(&v488->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v498 = v487;
      v499 = v488;
      v500 = 0;
      v501 = 0;
      v303 = BYTE4(v489);
      v304 = 4;
      sub_2717F1B04(&v496, &v490[32], 2, &v490[40], 2, 4);
      v170 = v491;
      v305 = (4 * v489);
LABEL_528:
      v397 = v305 | 0x100000000;
      if (!v303)
      {
        v397 = 0;
      }

      *(a3 + 8) = v302;
      *(a3 + 16) = v301;
      v398 = v496;
      *(a3 + 24) = v397;
      *(a3 + 32) = v398;
      *(a3 + 40) = v497;
      v173 = v488;
      *(a3 + 48) = *v490;
      *(a3 + 56) = v304;
      goto LABEL_632;
    case 5:
      v104 = **a2;
      v105 = (*a2)[1];
      v486 = v105;
      if (v105)
      {
        atomic_fetch_add_explicit((v105 + 8), 1uLL, memory_order_relaxed);
      }

      if (!v104)
      {
        sub_27178DF44(&v487, a2[1]);
      }

      v106 = (*(*v104 + 24))(v104);
      (*(*v106 + 24))(&v496);
      v107 = v496;
      v496 = 0;
      v500 = v107;
      if (v107)
      {
        operator new();
      }

      v501 = 0;
      v487 = 0;
      v488 = 0;
      v489 = 0;
      (*(MEMORY[0] + 64))(&v498, 0, 5);
      v363 = *(v498 + 16);
      v362 = *(v498 + 32);
      *v490 = *v498;
      *&v490[16] = v363;
      *&v490[32] = v362;
      v498 = 0;
      MEMORY[0x2743BF050]();
      v491 = *v490;
      v492 = *&v490[8];
      v493 = *&v490[24];
      v494 = *&v490[40];
      v364 = (*(MEMORY[0] + 104))(0);
      v495 = v364 & ((v364 >> 1) >> 15);
      v365 = v501;
      if (v501 && !atomic_fetch_add(&v501->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v365->__on_zero_shared)(v365);
        std::__shared_weak_count::__release_weak(v365);
      }

      v366 = v496;
      v496 = 0;
      if (v366)
      {
        (*(*v366 + 8))(v366);
      }

      *a3 = &unk_28810F9B8;
      v367 = v488;
      if (v488)
      {
        atomic_fetch_add_explicit(&v488->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v498 = v487;
      v499 = v488;
      v500 = 0;
      v501 = 0;
      sub_2717F1B04(&v496, &v492, 3, &v492 + 12, 3, 1);
      v368 = v489 | 0x100000000;
      v190 = v495;
      if (!BYTE4(v489))
      {
        v368 = 0;
      }

      *(a3 + 8) = v487;
      *(a3 + 16) = v367;
      v369 = v496;
      *(a3 + 24) = v368;
      *(a3 + 32) = v369;
      *(a3 + 40) = v497;
      v173 = v488;
      *(a3 + 48) = *v490;
      v192 = 5;
      goto LABEL_644;
    case 6:
      v68 = **a2;
      v69 = (*a2)[1];
      v486 = v69;
      if (v69)
      {
        atomic_fetch_add_explicit((v69 + 8), 1uLL, memory_order_relaxed);
      }

      if (!v68)
      {
        sub_27178E1EC(&v487, a2[1]);
      }

      v70 = (*(*v68 + 24))(v68);
      (*(*v70 + 24))(&v496);
      v71 = v496;
      v496 = 0;
      v500 = v71;
      if (v71)
      {
        operator new();
      }

      v501 = 0;
      v487 = 0;
      v488 = 0;
      v489 = 0;
      (*(MEMORY[0] + 64))(&v498, 0, 6);
      v290 = *(v498 + 16);
      v289 = *(v498 + 32);
      *v490 = *v498;
      *&v490[16] = v290;
      *&v490[32] = v289;
      v498 = 0;
      MEMORY[0x2743BF050]();
      v491 = *v490;
      v492 = *&v490[8];
      v493 = *&v490[24];
      v494 = *&v490[40];
      v291 = (*(MEMORY[0] + 104))(0);
      v495 = v291 & ((v291 >> 1) >> 15);
      v292 = v501;
      if (v501 && !atomic_fetch_add(&v501->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v292->__on_zero_shared)(v292);
        std::__shared_weak_count::__release_weak(v292);
      }

      v293 = v496;
      v496 = 0;
      if (v293)
      {
        (*(*v293 + 8))(v293);
      }

      *a3 = &unk_28810F9B8;
      v294 = v488;
      if (v488)
      {
        atomic_fetch_add_explicit(&v488->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v498 = v487;
      v499 = v488;
      v500 = 0;
      v501 = 0;
      sub_2717F1B04(&v496, &v492, 3, &v492 + 12, 3, 2);
      v170 = v495;
      v295 = (2 * v489) | 0x100000000;
      if (!BYTE4(v489))
      {
        v295 = 0;
      }

      *(a3 + 8) = v487;
      *(a3 + 16) = v294;
      v296 = v496;
      *(a3 + 24) = v295;
      *(a3 + 32) = v296;
      *(a3 + 40) = v497;
      v173 = v488;
      *(a3 + 48) = *v490;
      v174 = 6;
      goto LABEL_631;
    case 7:
      v48 = **a2;
      v49 = (*a2)[1];
      v486 = v49;
      if (v49)
      {
        atomic_fetch_add_explicit((v49 + 8), 1uLL, memory_order_relaxed);
      }

      if (!v48)
      {
        sub_27178E4FC(&v487, a2[1]);
      }

      v50 = (*(*v48 + 24))(v48);
      (*(*v50 + 24))(&v496);
      v51 = v496;
      v496 = 0;
      v500 = v51;
      if (v51)
      {
        operator new();
      }

      v501 = 0;
      v487 = 0;
      v488 = 0;
      v489 = 0;
      (*(MEMORY[0] + 64))(&v498, 0, 7);
      v250 = *(v498 + 16);
      v249 = *(v498 + 32);
      *v490 = *v498;
      *&v490[16] = v250;
      *&v490[32] = v249;
      v498 = 0;
      MEMORY[0x2743BF050]();
      v491 = *v490;
      v492 = *&v490[8];
      v493 = *&v490[24];
      v494 = *&v490[40];
      v251 = (*(MEMORY[0] + 104))(0);
      v495 = v251 & ((v251 >> 1) >> 15);
      v252 = v501;
      if (v501 && !atomic_fetch_add(&v501->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v252->__on_zero_shared)(v252);
        std::__shared_weak_count::__release_weak(v252);
      }

      v253 = v496;
      v496 = 0;
      if (v253)
      {
        (*(*v253 + 8))(v253);
      }

      *a3 = &unk_28810F9B8;
      v254 = v488;
      if (v488)
      {
        atomic_fetch_add_explicit(&v488->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v498 = v487;
      v499 = v488;
      v500 = 0;
      v501 = 0;
      sub_2717F1B04(&v496, &v492, 3, &v492 + 12, 3, 2);
      v170 = v495;
      v255 = (2 * v489) | 0x100000000;
      if (!BYTE4(v489))
      {
        v255 = 0;
      }

      *(a3 + 8) = v487;
      *(a3 + 16) = v254;
      v256 = v496;
      *(a3 + 24) = v255;
      *(a3 + 32) = v256;
      *(a3 + 40) = v497;
      v173 = v488;
      *(a3 + 48) = *v490;
      v174 = 7;
      goto LABEL_631;
    case 8:
      v112 = **a2;
      v113 = (*a2)[1];
      v486 = v113;
      if (v113)
      {
        atomic_fetch_add_explicit((v113 + 8), 1uLL, memory_order_relaxed);
      }

      if (!v112)
      {
        sub_27178E79C(&v487, a2[1]);
      }

      v114 = (*(*v112 + 24))(v112);
      (*(*v114 + 24))(&v496);
      v115 = v496;
      v496 = 0;
      v500 = v115;
      if (v115)
      {
        operator new();
      }

      v501 = 0;
      v487 = 0;
      v488 = 0;
      v489 = 0;
      (*(MEMORY[0] + 64))(&v498, 0, 8);
      v379 = *(v498 + 16);
      v378 = *(v498 + 32);
      *v490 = *v498;
      *&v490[16] = v379;
      *&v490[32] = v378;
      v498 = 0;
      MEMORY[0x2743BF050]();
      v491 = *v490;
      v492 = *&v490[8];
      v493 = *&v490[24];
      v494 = *&v490[40];
      v380 = (*(MEMORY[0] + 104))(0);
      v495 = v380 & ((v380 >> 1) >> 15);
      v381 = v501;
      if (v501 && !atomic_fetch_add(&v501->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v381->__on_zero_shared)(v381);
        std::__shared_weak_count::__release_weak(v381);
      }

      v382 = v496;
      v496 = 0;
      if (v382)
      {
        (*(*v382 + 8))(v382);
      }

      *a3 = &unk_28810F9B8;
      v383 = v488;
      if (v488)
      {
        atomic_fetch_add_explicit(&v488->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v498 = v487;
      v499 = v488;
      v500 = 0;
      v501 = 0;
      sub_2717F1B04(&v496, &v492, 3, &v492 + 12, 3, 4);
      v170 = v495;
      v384 = (4 * v489) | 0x100000000;
      if (!BYTE4(v489))
      {
        v384 = 0;
      }

      *(a3 + 8) = v487;
      *(a3 + 16) = v383;
      v385 = v496;
      *(a3 + 24) = v384;
      *(a3 + 32) = v385;
      *(a3 + 40) = v497;
      v173 = v488;
      *(a3 + 48) = *v490;
      v174 = 8;
      goto LABEL_631;
    case 9:
      v100 = **a2;
      v101 = (*a2)[1];
      v486 = v101;
      if (v101)
      {
        atomic_fetch_add_explicit((v101 + 8), 1uLL, memory_order_relaxed);
      }

      if (!v100)
      {
        sub_27178EAAC(&v487, a2[1]);
      }

      v102 = (*(*v100 + 24))(v100);
      (*(*v102 + 24))(&v496);
      v103 = v496;
      v496 = 0;
      v500 = v103;
      if (v103)
      {
        operator new();
      }

      v501 = 0;
      v487 = 0;
      v488 = 0;
      v489 = 0;
      (*(MEMORY[0] + 64))(&v498, 0, 9);
      v355 = *(v498 + 16);
      v354 = *(v498 + 32);
      *v490 = *v498;
      *&v490[16] = v355;
      *&v490[32] = v354;
      v498 = 0;
      MEMORY[0x2743BF050]();
      v491 = *v490;
      v492 = *&v490[8];
      v493 = *&v490[24];
      v494 = *&v490[40];
      v356 = (*(MEMORY[0] + 104))(0);
      v495 = v356 & ((v356 >> 1) >> 15);
      v357 = v501;
      if (v501 && !atomic_fetch_add(&v501->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v357->__on_zero_shared)(v357);
        std::__shared_weak_count::__release_weak(v357);
      }

      v358 = v496;
      v496 = 0;
      if (v358)
      {
        (*(*v358 + 8))(v358);
      }

      *a3 = &unk_28810F9B8;
      v359 = v488;
      if (v488)
      {
        atomic_fetch_add_explicit(&v488->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v498 = v487;
      v499 = v488;
      v500 = 0;
      v501 = 0;
      sub_2717F1B04(&v496, &v492, 3, &v492 + 12, 3, 1);
      v360 = v489 | 0x100000000;
      v190 = v495;
      if (!BYTE4(v489))
      {
        v360 = 0;
      }

      *(a3 + 8) = v487;
      *(a3 + 16) = v359;
      v361 = v496;
      *(a3 + 24) = v360;
      *(a3 + 32) = v361;
      *(a3 + 40) = v497;
      v173 = v488;
      *(a3 + 48) = *v490;
      v192 = 9;
      goto LABEL_644;
    case 10:
      v132 = **a2;
      v133 = (*a2)[1];
      v486 = v133;
      if (v133)
      {
        atomic_fetch_add_explicit((v133 + 8), 1uLL, memory_order_relaxed);
      }

      if (!v132)
      {
        sub_27178ED54(&v487, a2[1]);
      }

      v134 = (*(*v132 + 24))(v132);
      (*(*v134 + 24))(&v496);
      v135 = v496;
      v496 = 0;
      v500 = v135;
      if (v135)
      {
        operator new();
      }

      v501 = 0;
      v487 = 0;
      v488 = 0;
      v489 = 0;
      (*(MEMORY[0] + 64))(&v498, 0, 10);
      v423 = *(v498 + 16);
      v422 = *(v498 + 32);
      *v490 = *v498;
      *&v490[16] = v423;
      *&v490[32] = v422;
      v498 = 0;
      MEMORY[0x2743BF050]();
      v491 = *v490;
      v492 = *&v490[8];
      v493 = *&v490[24];
      v494 = *&v490[40];
      v424 = (*(MEMORY[0] + 104))(0);
      v495 = v424 & ((v424 >> 1) >> 15);
      v425 = v501;
      if (v501 && !atomic_fetch_add(&v501->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v425->__on_zero_shared)(v425);
        std::__shared_weak_count::__release_weak(v425);
      }

      v426 = v496;
      v496 = 0;
      if (v426)
      {
        (*(*v426 + 8))(v426);
      }

      *a3 = &unk_28810F9B8;
      v427 = v488;
      if (v488)
      {
        atomic_fetch_add_explicit(&v488->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v498 = v487;
      v499 = v488;
      v500 = 0;
      v501 = 0;
      sub_2717F1B04(&v496, &v492, 3, &v492 + 12, 3, 2);
      v170 = v495;
      v428 = (2 * v489) | 0x100000000;
      if (!BYTE4(v489))
      {
        v428 = 0;
      }

      *(a3 + 8) = v487;
      *(a3 + 16) = v427;
      v429 = v496;
      *(a3 + 24) = v428;
      *(a3 + 32) = v429;
      *(a3 + 40) = v497;
      v173 = v488;
      *(a3 + 48) = *v490;
      v174 = 10;
      goto LABEL_631;
    case 11:
      v128 = **a2;
      v129 = (*a2)[1];
      v486 = v129;
      if (v129)
      {
        atomic_fetch_add_explicit((v129 + 8), 1uLL, memory_order_relaxed);
      }

      if (!v128)
      {
        sub_27178F064(&v487, a2[1]);
      }

      v130 = (*(*v128 + 24))(v128);
      (*(*v130 + 24))(&v496);
      v131 = v496;
      v496 = 0;
      v500 = v131;
      if (v131)
      {
        operator new();
      }

      v501 = 0;
      v487 = 0;
      v488 = 0;
      v489 = 0;
      (*(MEMORY[0] + 64))(&v498, 0, 11);
      v415 = *(v498 + 16);
      v414 = *(v498 + 32);
      *v490 = *v498;
      *&v490[16] = v415;
      *&v490[32] = v414;
      v498 = 0;
      MEMORY[0x2743BF050]();
      v491 = *v490;
      v492 = *&v490[8];
      v493 = *&v490[24];
      v494 = *&v490[40];
      v416 = (*(MEMORY[0] + 104))(0);
      v495 = v416 & ((v416 >> 1) >> 15);
      v417 = v501;
      if (v501 && !atomic_fetch_add(&v501->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v417->__on_zero_shared)(v417);
        std::__shared_weak_count::__release_weak(v417);
      }

      v418 = v496;
      v496 = 0;
      if (v418)
      {
        (*(*v418 + 8))(v418);
      }

      *a3 = &unk_28810F9B8;
      v419 = v488;
      if (v488)
      {
        atomic_fetch_add_explicit(&v488->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v498 = v487;
      v499 = v488;
      v500 = 0;
      v501 = 0;
      sub_2717F1B04(&v496, &v492, 3, &v492 + 12, 3, 2);
      v170 = v495;
      v420 = (2 * v489) | 0x100000000;
      if (!BYTE4(v489))
      {
        v420 = 0;
      }

      *(a3 + 8) = v487;
      *(a3 + 16) = v419;
      v421 = v496;
      *(a3 + 24) = v420;
      *(a3 + 32) = v421;
      *(a3 + 40) = v497;
      v173 = v488;
      *(a3 + 48) = *v490;
      v174 = 11;
      goto LABEL_631;
    case 12:
      v20 = **a2;
      v21 = (*a2)[1];
      v486 = v21;
      if (v21)
      {
        atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
      }

      if (!v20)
      {
        sub_27178F304(&v487, a2[1]);
      }

      v22 = (*(*v20 + 24))(v20);
      (*(*v22 + 24))(&v496);
      v23 = v496;
      v496 = 0;
      v500 = v23;
      if (v23)
      {
        operator new();
      }

      v501 = 0;
      v487 = 0;
      v488 = 0;
      v489 = 0;
      (*(MEMORY[0] + 64))(&v498, 0, 12);
      v194 = *(v498 + 16);
      v193 = *(v498 + 32);
      *v490 = *v498;
      *&v490[16] = v194;
      *&v490[32] = v193;
      v498 = 0;
      MEMORY[0x2743BF050]();
      v491 = *v490;
      v492 = *&v490[8];
      v493 = *&v490[24];
      v494 = *&v490[40];
      v195 = (*(MEMORY[0] + 104))(0);
      v495 = v195 & ((v195 >> 1) >> 15);
      v196 = v501;
      if (v501 && !atomic_fetch_add(&v501->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v196->__on_zero_shared)(v196);
        std::__shared_weak_count::__release_weak(v196);
      }

      v197 = v496;
      v496 = 0;
      if (v197)
      {
        (*(*v197 + 8))(v197);
      }

      *a3 = &unk_28810F9B8;
      v198 = v488;
      if (v488)
      {
        atomic_fetch_add_explicit(&v488->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v498 = v487;
      v499 = v488;
      v500 = 0;
      v501 = 0;
      sub_2717F1B04(&v496, &v492, 3, &v492 + 12, 3, 4);
      v170 = v495;
      v199 = (4 * v489) | 0x100000000;
      if (!BYTE4(v489))
      {
        v199 = 0;
      }

      *(a3 + 8) = v487;
      *(a3 + 16) = v198;
      v200 = v496;
      *(a3 + 24) = v199;
      *(a3 + 32) = v200;
      *(a3 + 40) = v497;
      v173 = v488;
      *(a3 + 48) = *v490;
      v174 = 12;
      goto LABEL_631;
    case 13:
      v36 = **a2;
      v37 = (*a2)[1];
      v486 = v37;
      if (v37)
      {
        atomic_fetch_add_explicit((v37 + 8), 1uLL, memory_order_relaxed);
      }

      if (!v36)
      {
        sub_27178F614(&v487, a2[1]);
      }

      v38 = (*(*v36 + 24))(v36);
      (*(*v38 + 24))(&v496);
      v39 = v496;
      v496 = 0;
      v500 = v39;
      if (v39)
      {
        operator new();
      }

      v501 = 0;
      v487 = 0;
      v488 = 0;
      v489 = 0;
      (*(MEMORY[0] + 64))(&v498, 0, 13);
      v226 = *(v498 + 16);
      v225 = *(v498 + 32);
      *v490 = *v498;
      *&v490[16] = v226;
      *&v490[32] = v225;
      v498 = 0;
      MEMORY[0x2743BF050]();
      v491 = *v490;
      v492 = *&v490[8];
      v493 = *&v490[24];
      v494 = *&v490[40];
      v227 = (*(MEMORY[0] + 104))(0);
      v495 = v227 & ((v227 >> 1) >> 15);
      v228 = v501;
      if (v501 && !atomic_fetch_add(&v501->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v228->__on_zero_shared)(v228);
        std::__shared_weak_count::__release_weak(v228);
      }

      v229 = v496;
      v496 = 0;
      if (v229)
      {
        (*(*v229 + 8))(v229);
      }

      *a3 = &unk_28810F9B8;
      v230 = v488;
      if (v488)
      {
        atomic_fetch_add_explicit(&v488->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v498 = v487;
      v499 = v488;
      v500 = 0;
      v501 = 0;
      sub_2717F1B04(&v496, &v492, 3, &v492 + 12, 3, 1);
      v231 = v489 | 0x100000000;
      v190 = v495;
      if (!BYTE4(v489))
      {
        v231 = 0;
      }

      *(a3 + 8) = v487;
      *(a3 + 16) = v230;
      v232 = v496;
      *(a3 + 24) = v231;
      *(a3 + 32) = v232;
      *(a3 + 40) = v497;
      v173 = v488;
      *(a3 + 48) = *v490;
      v192 = 13;
      goto LABEL_644;
    case 14:
      v32 = **a2;
      v33 = (*a2)[1];
      v486 = v33;
      if (v33)
      {
        atomic_fetch_add_explicit((v33 + 8), 1uLL, memory_order_relaxed);
      }

      if (!v32)
      {
        sub_27178F8BC(&v487, a2[1]);
      }

      v34 = (*(*v32 + 24))(v32);
      (*(*v34 + 24))(&v496);
      v35 = v496;
      v496 = 0;
      v500 = v35;
      if (v35)
      {
        operator new();
      }

      v501 = 0;
      v487 = 0;
      v488 = 0;
      v489 = 0;
      (*(MEMORY[0] + 64))(&v498, 0, 14);
      v218 = *(v498 + 16);
      v217 = *(v498 + 32);
      *v490 = *v498;
      *&v490[16] = v218;
      *&v490[32] = v217;
      v498 = 0;
      MEMORY[0x2743BF050]();
      v491 = *v490;
      v492 = *&v490[8];
      v493 = *&v490[24];
      v494 = *&v490[40];
      v219 = (*(MEMORY[0] + 104))(0);
      v495 = v219 & ((v219 >> 1) >> 15);
      v220 = v501;
      if (v501 && !atomic_fetch_add(&v501->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v220->__on_zero_shared)(v220);
        std::__shared_weak_count::__release_weak(v220);
      }

      v221 = v496;
      v496 = 0;
      if (v221)
      {
        (*(*v221 + 8))(v221);
      }

      *a3 = &unk_28810F9B8;
      v222 = v488;
      if (v488)
      {
        atomic_fetch_add_explicit(&v488->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v498 = v487;
      v499 = v488;
      v500 = 0;
      v501 = 0;
      sub_2717F1B04(&v496, &v492, 3, &v492 + 12, 3, 2);
      v170 = v495;
      v223 = (2 * v489) | 0x100000000;
      if (!BYTE4(v489))
      {
        v223 = 0;
      }

      *(a3 + 8) = v487;
      *(a3 + 16) = v222;
      v224 = v496;
      *(a3 + 24) = v223;
      *(a3 + 32) = v224;
      *(a3 + 40) = v497;
      v173 = v488;
      *(a3 + 48) = *v490;
      v174 = 14;
      goto LABEL_631;
    case 15:
      v148 = **a2;
      v149 = (*a2)[1];
      v486 = v149;
      if (v149)
      {
        atomic_fetch_add_explicit((v149 + 8), 1uLL, memory_order_relaxed);
      }

      if (!v148)
      {
        sub_27178FBCC(&v487, a2[1]);
      }

      v150 = (*(*v148 + 24))(v148);
      (*(*v150 + 24))(&v496);
      v151 = v496;
      v496 = 0;
      v500 = v151;
      if (v151)
      {
        operator new();
      }

      v501 = 0;
      v487 = 0;
      v488 = 0;
      v489 = 0;
      (*(MEMORY[0] + 64))(&v498, 0, 15);
      v455 = *(v498 + 16);
      v454 = *(v498 + 32);
      *v490 = *v498;
      *&v490[16] = v455;
      *&v490[32] = v454;
      v498 = 0;
      MEMORY[0x2743BF050]();
      v491 = *v490;
      v492 = *&v490[8];
      v493 = *&v490[24];
      v494 = *&v490[40];
      v456 = (*(MEMORY[0] + 104))(0);
      v495 = v456 & ((v456 >> 1) >> 15);
      v457 = v501;
      if (v501 && !atomic_fetch_add(&v501->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v457->__on_zero_shared)(v457);
        std::__shared_weak_count::__release_weak(v457);
      }

      v458 = v496;
      v496 = 0;
      if (v458)
      {
        (*(*v458 + 8))(v458);
      }

      *a3 = &unk_28810F9B8;
      v459 = v488;
      if (v488)
      {
        atomic_fetch_add_explicit(&v488->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v498 = v487;
      v499 = v488;
      v500 = 0;
      v501 = 0;
      sub_2717F1B04(&v496, &v492, 3, &v492 + 12, 3, 2);
      v170 = v495;
      v460 = (2 * v489) | 0x100000000;
      if (!BYTE4(v489))
      {
        v460 = 0;
      }

      *(a3 + 8) = v487;
      *(a3 + 16) = v459;
      v461 = v496;
      *(a3 + 24) = v460;
      *(a3 + 32) = v461;
      *(a3 + 40) = v497;
      v173 = v488;
      *(a3 + 48) = *v490;
      v174 = 15;
      goto LABEL_631;
    case 16:
      v108 = **a2;
      v109 = (*a2)[1];
      v486 = v109;
      if (v109)
      {
        atomic_fetch_add_explicit((v109 + 8), 1uLL, memory_order_relaxed);
      }

      if (!v108)
      {
        sub_27178FE6C(&v487, a2[1]);
      }

      v110 = (*(*v108 + 24))(v108);
      (*(*v110 + 24))(&v496);
      v111 = v496;
      v496 = 0;
      v500 = v111;
      if (v111)
      {
        operator new();
      }

      v501 = 0;
      v487 = 0;
      v488 = 0;
      v489 = 0;
      (*(MEMORY[0] + 64))(&v498, 0, 16);
      v371 = *(v498 + 16);
      v370 = *(v498 + 32);
      *v490 = *v498;
      *&v490[16] = v371;
      *&v490[32] = v370;
      v498 = 0;
      MEMORY[0x2743BF050]();
      v491 = *v490;
      v492 = *&v490[8];
      v493 = *&v490[24];
      v494 = *&v490[40];
      v372 = (*(MEMORY[0] + 104))(0);
      v495 = v372 & ((v372 >> 1) >> 15);
      v373 = v501;
      if (v501 && !atomic_fetch_add(&v501->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v373->__on_zero_shared)(v373);
        std::__shared_weak_count::__release_weak(v373);
      }

      v374 = v496;
      v496 = 0;
      if (v374)
      {
        (*(*v374 + 8))(v374);
      }

      *a3 = &unk_28810F9B8;
      v375 = v488;
      if (v488)
      {
        atomic_fetch_add_explicit(&v488->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v498 = v487;
      v499 = v488;
      v500 = 0;
      v501 = 0;
      sub_2717F1B04(&v496, &v492, 3, &v492 + 12, 3, 4);
      v170 = v495;
      v376 = (4 * v489) | 0x100000000;
      if (!BYTE4(v489))
      {
        v376 = 0;
      }

      *(a3 + 8) = v487;
      *(a3 + 16) = v375;
      v377 = v496;
      *(a3 + 24) = v376;
      *(a3 + 32) = v377;
      *(a3 + 40) = v497;
      v173 = v488;
      *(a3 + 48) = *v490;
      v174 = 16;
      goto LABEL_631;
    case 17:
      v152 = **a2;
      v153 = (*a2)[1];
      v486 = v153;
      if (v153)
      {
        atomic_fetch_add_explicit((v153 + 8), 1uLL, memory_order_relaxed);
      }

      if (!v152)
      {
        sub_27179017C(&v487, a2[1]);
      }

      v154 = (*(*v152 + 24))(v152);
      (*(*v154 + 24))(&v496);
      v155 = v496;
      v496 = 0;
      v500 = v155;
      if (v155)
      {
        operator new();
      }

      v501 = 0;
      v487 = 0;
      v488 = 0;
      v489 = 0;
      (*(MEMORY[0] + 64))(&v498, 0, 17);
      v463 = *(v498 + 16);
      v462 = *(v498 + 32);
      *v490 = *v498;
      *&v490[16] = v463;
      *&v490[32] = v462;
      v498 = 0;
      MEMORY[0x2743BF050]();
      v491 = *v490;
      v492 = *&v490[8];
      v493 = *&v490[24];
      v494 = *&v490[40];
      v464 = (*(MEMORY[0] + 104))(0);
      v495 = v464 & ((v464 >> 1) >> 15);
      v465 = v501;
      if (v501 && !atomic_fetch_add(&v501->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v465->__on_zero_shared)(v465);
        std::__shared_weak_count::__release_weak(v465);
      }

      v466 = v496;
      v496 = 0;
      if (v466)
      {
        (*(*v466 + 8))(v466);
      }

      *a3 = &unk_28810F9B8;
      v467 = v488;
      if (v488)
      {
        atomic_fetch_add_explicit(&v488->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v498 = v487;
      v499 = v488;
      v500 = 0;
      v501 = 0;
      sub_2717F1B04(&v496, &v492, 3, &v492 + 12, 3, 1);
      v468 = v489 | 0x100000000;
      v190 = v495;
      if (!BYTE4(v489))
      {
        v468 = 0;
      }

      *(a3 + 8) = v487;
      *(a3 + 16) = v467;
      v469 = v496;
      *(a3 + 24) = v468;
      *(a3 + 32) = v469;
      *(a3 + 40) = v497;
      v173 = v488;
      *(a3 + 48) = *v490;
      v192 = 17;
      goto LABEL_644;
    case 18:
      v44 = **a2;
      v45 = (*a2)[1];
      v486 = v45;
      if (v45)
      {
        atomic_fetch_add_explicit((v45 + 8), 1uLL, memory_order_relaxed);
      }

      if (!v44)
      {
        sub_271790424(&v487, a2[1]);
      }

      v46 = (*(*v44 + 24))(v44);
      (*(*v46 + 24))(&v496);
      v47 = v496;
      v496 = 0;
      v500 = v47;
      if (v47)
      {
        operator new();
      }

      v501 = 0;
      v487 = 0;
      v488 = 0;
      v489 = 0;
      (*(MEMORY[0] + 64))(&v498, 0, 18);
      v242 = *(v498 + 16);
      v241 = *(v498 + 32);
      *v490 = *v498;
      *&v490[16] = v242;
      *&v490[32] = v241;
      v498 = 0;
      MEMORY[0x2743BF050]();
      v491 = *v490;
      v492 = *&v490[8];
      v493 = *&v490[24];
      v494 = *&v490[40];
      v243 = (*(MEMORY[0] + 104))(0);
      v495 = v243 & ((v243 >> 1) >> 15);
      v244 = v501;
      if (v501 && !atomic_fetch_add(&v501->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v244->__on_zero_shared)(v244);
        std::__shared_weak_count::__release_weak(v244);
      }

      v245 = v496;
      v496 = 0;
      if (v245)
      {
        (*(*v245 + 8))(v245);
      }

      *a3 = &unk_28810F9B8;
      v246 = v488;
      if (v488)
      {
        atomic_fetch_add_explicit(&v488->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v498 = v487;
      v499 = v488;
      v500 = 0;
      v501 = 0;
      sub_2717F1B04(&v496, &v492, 3, &v492 + 12, 3, 2);
      v170 = v495;
      v247 = (2 * v489) | 0x100000000;
      if (!BYTE4(v489))
      {
        v247 = 0;
      }

      *(a3 + 8) = v487;
      *(a3 + 16) = v246;
      v248 = v496;
      *(a3 + 24) = v247;
      *(a3 + 32) = v248;
      *(a3 + 40) = v497;
      v173 = v488;
      *(a3 + 48) = *v490;
      v174 = 18;
      goto LABEL_631;
    case 19:
      v12 = **a2;
      v13 = (*a2)[1];
      v486 = v13;
      if (v13)
      {
        atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      }

      if (!v12)
      {
        sub_271790734(&v487, a2[1]);
      }

      v14 = (*(*v12 + 24))(v12);
      (*(*v14 + 24))(&v496);
      v15 = v496;
      v496 = 0;
      v500 = v15;
      if (v15)
      {
        operator new();
      }

      v501 = 0;
      v487 = 0;
      v488 = 0;
      v489 = 0;
      (*(MEMORY[0] + 64))(&v498, 0, 19);
      v176 = *(v498 + 16);
      v175 = *(v498 + 32);
      *v490 = *v498;
      *&v490[16] = v176;
      *&v490[32] = v175;
      v498 = 0;
      MEMORY[0x2743BF050]();
      v491 = *v490;
      v492 = *&v490[8];
      v493 = *&v490[24];
      v494 = *&v490[40];
      v177 = (*(MEMORY[0] + 104))(0);
      v495 = v177 & ((v177 >> 1) >> 15);
      v178 = v501;
      if (v501 && !atomic_fetch_add(&v501->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v178->__on_zero_shared)(v178);
        std::__shared_weak_count::__release_weak(v178);
      }

      v179 = v496;
      v496 = 0;
      if (v179)
      {
        (*(*v179 + 8))(v179);
      }

      *a3 = &unk_28810F9B8;
      v180 = v488;
      if (v488)
      {
        atomic_fetch_add_explicit(&v488->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v498 = v487;
      v499 = v488;
      v500 = 0;
      v501 = 0;
      sub_2717F1B04(&v496, &v492, 3, &v492 + 12, 3, 2);
      v170 = v495;
      v181 = (2 * v489) | 0x100000000;
      if (!BYTE4(v489))
      {
        v181 = 0;
      }

      *(a3 + 8) = v487;
      *(a3 + 16) = v180;
      v182 = v496;
      *(a3 + 24) = v181;
      *(a3 + 32) = v182;
      *(a3 + 40) = v497;
      v173 = v488;
      *(a3 + 48) = *v490;
      v174 = 19;
      goto LABEL_631;
    case 20:
      v140 = **a2;
      v141 = (*a2)[1];
      v486 = v141;
      if (v141)
      {
        atomic_fetch_add_explicit((v141 + 8), 1uLL, memory_order_relaxed);
      }

      if (!v140)
      {
        sub_2717909D4(&v487, a2[1]);
      }

      v142 = (*(*v140 + 24))(v140);
      (*(*v142 + 24))(&v496);
      v143 = v496;
      v496 = 0;
      v500 = v143;
      if (v143)
      {
        operator new();
      }

      v501 = 0;
      v487 = 0;
      v488 = 0;
      v489 = 0;
      (*(MEMORY[0] + 64))(&v498, 0, 20);
      v439 = *(v498 + 16);
      v438 = *(v498 + 32);
      *v490 = *v498;
      *&v490[16] = v439;
      *&v490[32] = v438;
      v498 = 0;
      MEMORY[0x2743BF050]();
      v491 = *v490;
      v492 = *&v490[8];
      v493 = *&v490[24];
      v494 = *&v490[40];
      v440 = (*(MEMORY[0] + 104))(0);
      v495 = v440 & ((v440 >> 1) >> 15);
      v441 = v501;
      if (v501 && !atomic_fetch_add(&v501->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v441->__on_zero_shared)(v441);
        std::__shared_weak_count::__release_weak(v441);
      }

      v442 = v496;
      v496 = 0;
      if (v442)
      {
        (*(*v442 + 8))(v442);
      }

      *a3 = &unk_28810F9B8;
      v443 = v488;
      if (v488)
      {
        atomic_fetch_add_explicit(&v488->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v498 = v487;
      v499 = v488;
      v500 = 0;
      v501 = 0;
      sub_2717F1B04(&v496, &v492, 3, &v492 + 12, 3, 4);
      v170 = v495;
      v444 = (4 * v489) | 0x100000000;
      if (!BYTE4(v489))
      {
        v444 = 0;
      }

      *(a3 + 8) = v487;
      *(a3 + 16) = v443;
      v445 = v496;
      *(a3 + 24) = v444;
      *(a3 + 32) = v445;
      *(a3 + 40) = v497;
      v173 = v488;
      *(a3 + 48) = *v490;
      v174 = 20;
      goto LABEL_631;
    case 21:
      v160 = **a2;
      v161 = (*a2)[1];
      v486 = v161;
      if (v161)
      {
        atomic_fetch_add_explicit((v161 + 8), 1uLL, memory_order_relaxed);
      }

      if (!v160)
      {
        sub_2715E96F4(a2[1]);
      }

      v162 = (*(*v160 + 24))(v160);
      (*(*v162 + 24))(&v496);
      v163 = v496;
      v496 = 0;
      v500 = v163;
      if (v163)
      {
        operator new();
      }

      v501 = 0;
      v487 = 0;
      v488 = 0;
      v489 = 0;
      (*(MEMORY[0] + 64))(&v498, 0, 21);
      v479 = *(v498 + 16);
      v478 = *(v498 + 32);
      *v490 = *v498;
      *&v490[16] = v479;
      *&v490[32] = v478;
      v498 = 0;
      MEMORY[0x2743BF050]();
      v491 = *v490;
      v492 = *&v490[8];
      v493 = *&v490[24];
      v494 = *&v490[40];
      v480 = (*(MEMORY[0] + 104))(0);
      v495 = v480 & ((v480 >> 1) >> 15);
      v481 = v501;
      if (v501 && !atomic_fetch_add(&v501->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v481->__on_zero_shared)(v481);
        std::__shared_weak_count::__release_weak(v481);
      }

      v482 = v496;
      v496 = 0;
      if (v482)
      {
        (*(*v482 + 8))(v482);
      }

      *a3 = &unk_28810F9B8;
      v483 = v488;
      if (v488)
      {
        atomic_fetch_add_explicit(&v488->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v498 = v487;
      v499 = v488;
      v500 = 0;
      v501 = 0;
      sub_2717F1B04(&v496, &v492, 3, &v492 + 12, 3, 1);
      v484 = v489 | 0x100000000;
      v190 = v495;
      if (!BYTE4(v489))
      {
        v484 = 0;
      }

      *(a3 + 8) = v487;
      *(a3 + 16) = v483;
      v485 = v496;
      *(a3 + 24) = v484;
      *(a3 + 32) = v485;
      *(a3 + 40) = v497;
      v173 = v488;
      *(a3 + 48) = *v490;
      v192 = 21;
      goto LABEL_644;
    case 22:
      v56 = **a2;
      v57 = (*a2)[1];
      v486 = v57;
      if (v57)
      {
        atomic_fetch_add_explicit((v57 + 8), 1uLL, memory_order_relaxed);
      }

      if (!v56)
      {
        sub_271717EE0(a2[1]);
      }

      v58 = (*(*v56 + 24))(v56);
      (*(*v58 + 24))(&v496);
      v59 = v496;
      v496 = 0;
      v500 = v59;
      if (v59)
      {
        operator new();
      }

      v501 = 0;
      v487 = 0;
      v488 = 0;
      v489 = 0;
      (*(MEMORY[0] + 64))(&v498, 0, 22);
      v266 = *(v498 + 16);
      v265 = *(v498 + 32);
      *v490 = *v498;
      *&v490[16] = v266;
      *&v490[32] = v265;
      v498 = 0;
      MEMORY[0x2743BF050]();
      v491 = *v490;
      v492 = *&v490[8];
      v493 = *&v490[24];
      v494 = *&v490[40];
      v267 = (*(MEMORY[0] + 104))(0);
      v495 = v267 & ((v267 >> 1) >> 15);
      v268 = v501;
      if (v501 && !atomic_fetch_add(&v501->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v268->__on_zero_shared)(v268);
        std::__shared_weak_count::__release_weak(v268);
      }

      v269 = v496;
      v496 = 0;
      if (v269)
      {
        (*(*v269 + 8))(v269);
      }

      *a3 = &unk_28810F9B8;
      v270 = v488;
      if (v488)
      {
        atomic_fetch_add_explicit(&v488->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v498 = v487;
      v499 = v488;
      v500 = 0;
      v501 = 0;
      sub_2717F1B04(&v496, &v492, 3, &v492 + 12, 3, 2);
      v170 = v495;
      v271 = (2 * v489) | 0x100000000;
      if (!BYTE4(v489))
      {
        v271 = 0;
      }

      *(a3 + 8) = v487;
      *(a3 + 16) = v270;
      v272 = v496;
      *(a3 + 24) = v271;
      *(a3 + 32) = v272;
      *(a3 + 40) = v497;
      v173 = v488;
      *(a3 + 48) = *v490;
      v174 = 22;
      goto LABEL_631;
    case 23:
      v156 = **a2;
      v157 = (*a2)[1];
      v486 = v157;
      if (v157)
      {
        atomic_fetch_add_explicit((v157 + 8), 1uLL, memory_order_relaxed);
      }

      if (!v156)
      {
        sub_2717181F4(a2[1]);
      }

      v158 = (*(*v156 + 24))(v156);
      (*(*v158 + 24))(&v496);
      v159 = v496;
      v496 = 0;
      v500 = v159;
      if (v159)
      {
        operator new();
      }

      v501 = 0;
      v487 = 0;
      v488 = 0;
      v489 = 0;
      (*(MEMORY[0] + 64))(&v498, 0, 23);
      v471 = *(v498 + 16);
      v470 = *(v498 + 32);
      *v490 = *v498;
      *&v490[16] = v471;
      *&v490[32] = v470;
      v498 = 0;
      MEMORY[0x2743BF050]();
      v491 = *v490;
      v492 = *&v490[8];
      v493 = *&v490[24];
      v494 = *&v490[40];
      v472 = (*(MEMORY[0] + 104))(0);
      v495 = v472 & ((v472 >> 1) >> 15);
      v473 = v501;
      if (v501 && !atomic_fetch_add(&v501->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v473->__on_zero_shared)(v473);
        std::__shared_weak_count::__release_weak(v473);
      }

      v474 = v496;
      v496 = 0;
      if (v474)
      {
        (*(*v474 + 8))(v474);
      }

      *a3 = &unk_28810F9B8;
      v475 = v488;
      if (v488)
      {
        atomic_fetch_add_explicit(&v488->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v498 = v487;
      v499 = v488;
      v500 = 0;
      v501 = 0;
      sub_2717F1B04(&v496, &v492, 3, &v492 + 12, 3, 2);
      v170 = v495;
      v476 = (2 * v489) | 0x100000000;
      if (!BYTE4(v489))
      {
        v476 = 0;
      }

      *(a3 + 8) = v487;
      *(a3 + 16) = v475;
      v477 = v496;
      *(a3 + 24) = v476;
      *(a3 + 32) = v477;
      *(a3 + 40) = v497;
      v173 = v488;
      *(a3 + 48) = *v490;
      v174 = 23;
      goto LABEL_631;
    case 24:
      v28 = **a2;
      v29 = (*a2)[1];
      v486 = v29;
      if (v29)
      {
        atomic_fetch_add_explicit((v29 + 8), 1uLL, memory_order_relaxed);
      }

      if (!v28)
      {
        sub_271718498(a2[1]);
      }

      v30 = (*(*v28 + 24))(v28);
      (*(*v30 + 24))(&v496);
      v31 = v496;
      v496 = 0;
      v500 = v31;
      if (v31)
      {
        operator new();
      }

      v501 = 0;
      v487 = 0;
      v488 = 0;
      v489 = 0;
      (*(MEMORY[0] + 64))(&v498, 0, 24);
      v210 = *(v498 + 16);
      v209 = *(v498 + 32);
      *v490 = *v498;
      *&v490[16] = v210;
      *&v490[32] = v209;
      v498 = 0;
      MEMORY[0x2743BF050]();
      v491 = *v490;
      v492 = *&v490[8];
      v493 = *&v490[24];
      v494 = *&v490[40];
      v211 = (*(MEMORY[0] + 104))(0);
      v495 = v211 & ((v211 >> 1) >> 15);
      v212 = v501;
      if (v501 && !atomic_fetch_add(&v501->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v212->__on_zero_shared)(v212);
        std::__shared_weak_count::__release_weak(v212);
      }

      v213 = v496;
      v496 = 0;
      if (v213)
      {
        (*(*v213 + 8))(v213);
      }

      *a3 = &unk_28810F9B8;
      v214 = v488;
      if (v488)
      {
        atomic_fetch_add_explicit(&v488->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v498 = v487;
      v499 = v488;
      v500 = 0;
      v501 = 0;
      sub_2717F1B04(&v496, &v492, 3, &v492 + 12, 3, 4);
      v170 = v495;
      v215 = (4 * v489) | 0x100000000;
      if (!BYTE4(v489))
      {
        v215 = 0;
      }

      *(a3 + 8) = v487;
      *(a3 + 16) = v214;
      v216 = v496;
      *(a3 + 24) = v215;
      *(a3 + 32) = v216;
      *(a3 + 40) = v497;
      v173 = v488;
      *(a3 + 48) = *v490;
      v174 = 24;
      goto LABEL_631;
    case 25:
      v16 = **a2;
      v17 = (*a2)[1];
      v486 = v17;
      if (v17)
      {
        atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
      }

      if (!v16)
      {
        sub_2717187AC(a2[1]);
      }

      v18 = (*(*v16 + 24))(v16);
      (*(*v18 + 24))(&v496);
      v19 = v496;
      v496 = 0;
      v500 = v19;
      if (v19)
      {
        operator new();
      }

      v501 = 0;
      v487 = 0;
      v488 = 0;
      v489 = 0;
      (*(MEMORY[0] + 64))(&v498, 0, 25);
      v184 = *(v498 + 16);
      v183 = *(v498 + 32);
      *v490 = *v498;
      *&v490[16] = v184;
      *&v490[32] = v183;
      v498 = 0;
      MEMORY[0x2743BF050]();
      v491 = *v490;
      v492 = *&v490[8];
      v493 = *&v490[24];
      v494 = *&v490[40];
      v185 = (*(MEMORY[0] + 104))(0);
      v495 = v185 & ((v185 >> 1) >> 15);
      v186 = v501;
      if (v501 && !atomic_fetch_add(&v501->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v186->__on_zero_shared)(v186);
        std::__shared_weak_count::__release_weak(v186);
      }

      v187 = v496;
      v496 = 0;
      if (v187)
      {
        (*(*v187 + 8))(v187);
      }

      *a3 = &unk_28810F9B8;
      v188 = v488;
      if (v488)
      {
        atomic_fetch_add_explicit(&v488->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v498 = v487;
      v499 = v488;
      v500 = 0;
      v501 = 0;
      sub_2717F1B04(&v496, &v492, 3, &v492 + 12, 3, 1);
      v189 = v489 | 0x100000000;
      v190 = v495;
      if (!BYTE4(v489))
      {
        v189 = 0;
      }

      *(a3 + 8) = v487;
      *(a3 + 16) = v188;
      v191 = v496;
      *(a3 + 24) = v189;
      *(a3 + 32) = v191;
      *(a3 + 40) = v497;
      v173 = v488;
      *(a3 + 48) = *v490;
      v192 = 25;
      goto LABEL_644;
    case 26:
      v60 = **a2;
      v61 = (*a2)[1];
      v486 = v61;
      if (v61)
      {
        atomic_fetch_add_explicit((v61 + 8), 1uLL, memory_order_relaxed);
      }

      if (!v60)
      {
        sub_271790CE4(&v487, a2[1]);
      }

      v62 = (*(*v60 + 24))(v60);
      (*(*v62 + 24))(&v496);
      v63 = v496;
      v496 = 0;
      v500 = v63;
      if (v63)
      {
        operator new();
      }

      v501 = 0;
      v487 = 0;
      v488 = 0;
      v489 = 0;
      (*(MEMORY[0] + 64))(&v498, 0, 26);
      v274 = *(v498 + 16);
      v273 = *(v498 + 32);
      *v490 = *v498;
      *&v490[16] = v274;
      *&v490[32] = v273;
      v498 = 0;
      MEMORY[0x2743BF050]();
      v491 = *v490;
      v492 = *&v490[8];
      v493 = *&v490[24];
      v494 = *&v490[40];
      v275 = (*(MEMORY[0] + 104))(0);
      v495 = v275 & ((v275 >> 1) >> 15);
      v276 = v501;
      if (v501 && !atomic_fetch_add(&v501->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v276->__on_zero_shared)(v276);
        std::__shared_weak_count::__release_weak(v276);
      }

      v277 = v496;
      v496 = 0;
      if (v277)
      {
        (*(*v277 + 8))(v277);
      }

      *a3 = &unk_28810F9B8;
      v278 = v488;
      if (v488)
      {
        atomic_fetch_add_explicit(&v488->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v498 = v487;
      v499 = v488;
      v500 = 0;
      v501 = 0;
      sub_2717F1B04(&v496, &v492, 3, &v492 + 12, 3, 2);
      v170 = v495;
      v279 = (2 * v489) | 0x100000000;
      if (!BYTE4(v489))
      {
        v279 = 0;
      }

      *(a3 + 8) = v487;
      *(a3 + 16) = v278;
      v280 = v496;
      *(a3 + 24) = v279;
      *(a3 + 32) = v280;
      *(a3 + 40) = v497;
      v173 = v488;
      *(a3 + 48) = *v490;
      v174 = 26;
      goto LABEL_631;
    case 27:
      v8 = **a2;
      v9 = (*a2)[1];
      v486 = v9;
      if (v9)
      {
        atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      }

      if (!v8)
      {
        sub_271790FF4(&v487, a2[1]);
      }

      v10 = (*(*v8 + 24))(v8);
      (*(*v10 + 24))(&v496);
      v11 = v496;
      v496 = 0;
      v500 = v11;
      if (v11)
      {
        operator new();
      }

      v501 = 0;
      v487 = 0;
      v488 = 0;
      v489 = 0;
      (*(MEMORY[0] + 64))(&v498, 0, 27);
      v165 = *(v498 + 16);
      v164 = *(v498 + 32);
      *v490 = *v498;
      *&v490[16] = v165;
      *&v490[32] = v164;
      v498 = 0;
      MEMORY[0x2743BF050]();
      v491 = *v490;
      v492 = *&v490[8];
      v493 = *&v490[24];
      v494 = *&v490[40];
      v166 = (*(MEMORY[0] + 104))(0);
      v495 = v166 & ((v166 >> 1) >> 15);
      v167 = v501;
      if (v501 && !atomic_fetch_add(&v501->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v167->__on_zero_shared)(v167);
        std::__shared_weak_count::__release_weak(v167);
      }

      v168 = v496;
      v496 = 0;
      if (v168)
      {
        (*(*v168 + 8))(v168);
      }

      *a3 = &unk_28810F9B8;
      v169 = v488;
      if (v488)
      {
        atomic_fetch_add_explicit(&v488->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v498 = v487;
      v499 = v488;
      v500 = 0;
      v501 = 0;
      sub_2717F1B04(&v496, &v492, 3, &v492 + 12, 3, 2);
      v170 = v495;
      v171 = (2 * v489) | 0x100000000;
      if (!BYTE4(v489))
      {
        v171 = 0;
      }

      *(a3 + 8) = v487;
      *(a3 + 16) = v169;
      v172 = v496;
      *(a3 + 24) = v171;
      *(a3 + 32) = v172;
      *(a3 + 40) = v497;
      v173 = v488;
      *(a3 + 48) = *v490;
      v174 = 27;
      goto LABEL_631;
    case 28:
      v76 = **a2;
      v77 = (*a2)[1];
      v486 = v77;
      if (v77)
      {
        atomic_fetch_add_explicit((v77 + 8), 1uLL, memory_order_relaxed);
      }

      if (!v76)
      {
        sub_271791294(&v487, a2[1]);
      }

      v78 = (*(*v76 + 24))(v76);
      (*(*v78 + 24))(&v496);
      v79 = v496;
      v496 = 0;
      v500 = v79;
      if (v79)
      {
        operator new();
      }

      v501 = 0;
      v487 = 0;
      v488 = 0;
      v489 = 0;
      (*(MEMORY[0] + 64))(&v498, 0, 28);
      v307 = *(v498 + 16);
      v306 = *(v498 + 32);
      *v490 = *v498;
      *&v490[16] = v307;
      *&v490[32] = v306;
      v498 = 0;
      MEMORY[0x2743BF050]();
      v491 = *v490;
      v492 = *&v490[8];
      v493 = *&v490[24];
      v494 = *&v490[40];
      v308 = (*(MEMORY[0] + 104))(0);
      v495 = v308 & ((v308 >> 1) >> 15);
      v309 = v501;
      if (v501 && !atomic_fetch_add(&v501->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v309->__on_zero_shared)(v309);
        std::__shared_weak_count::__release_weak(v309);
      }

      v310 = v496;
      v496 = 0;
      if (v310)
      {
        (*(*v310 + 8))(v310);
      }

      *a3 = &unk_28810F9B8;
      v311 = v488;
      if (v488)
      {
        atomic_fetch_add_explicit(&v488->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v498 = v487;
      v499 = v488;
      v500 = 0;
      v501 = 0;
      sub_2717F1B04(&v496, &v492, 3, &v492 + 12, 3, 4);
      v170 = v495;
      v312 = (4 * v489) | 0x100000000;
      if (!BYTE4(v489))
      {
        v312 = 0;
      }

      *(a3 + 8) = v487;
      *(a3 + 16) = v311;
      v313 = v496;
      *(a3 + 24) = v312;
      *(a3 + 32) = v313;
      *(a3 + 40) = v497;
      v173 = v488;
      *(a3 + 48) = *v490;
      v174 = 28;
      goto LABEL_631;
    case 29:
      v24 = **a2;
      v25 = (*a2)[1];
      v486 = v25;
      if (v25)
      {
        atomic_fetch_add_explicit((v25 + 8), 1uLL, memory_order_relaxed);
      }

      if (!v24)
      {
        sub_271718A58(a2[1]);
      }

      v26 = (*(*v24 + 24))(v24);
      (*(*v26 + 24))(&v496);
      v27 = v496;
      v496 = 0;
      v500 = v27;
      if (v27)
      {
        operator new();
      }

      v501 = 0;
      v487 = 0;
      v488 = 0;
      v489 = 0;
      (*(MEMORY[0] + 64))(&v498, 0, 29);
      v202 = *(v498 + 16);
      v201 = *(v498 + 32);
      *v490 = *v498;
      *&v490[16] = v202;
      *&v490[32] = v201;
      v498 = 0;
      MEMORY[0x2743BF050]();
      v491 = *v490;
      v492 = *&v490[8];
      v493 = *&v490[24];
      v494 = *&v490[40];
      v203 = (*(MEMORY[0] + 104))(0);
      v495 = v203 & ((v203 >> 1) >> 15);
      v204 = v501;
      if (v501 && !atomic_fetch_add(&v501->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v204->__on_zero_shared)(v204);
        std::__shared_weak_count::__release_weak(v204);
      }

      v205 = v496;
      v496 = 0;
      if (v205)
      {
        (*(*v205 + 8))(v205);
      }

      *a3 = &unk_28810F9B8;
      v206 = v488;
      if (v488)
      {
        atomic_fetch_add_explicit(&v488->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v498 = v487;
      v499 = v488;
      v500 = 0;
      v501 = 0;
      sub_2717F1B04(&v496, &v492, 3, &v492 + 12, 3, 1);
      v207 = v489 | 0x100000000;
      v190 = v495;
      if (!BYTE4(v489))
      {
        v207 = 0;
      }

      *(a3 + 8) = v487;
      *(a3 + 16) = v206;
      v208 = v496;
      *(a3 + 24) = v207;
      *(a3 + 32) = v208;
      *(a3 + 40) = v497;
      v173 = v488;
      *(a3 + 48) = *v490;
      v192 = 29;
      goto LABEL_644;
    case 30:
      v88 = **a2;
      v89 = (*a2)[1];
      v486 = v89;
      if (v89)
      {
        atomic_fetch_add_explicit((v89 + 8), 1uLL, memory_order_relaxed);
      }

      if (!v88)
      {
        sub_271718D04(a2[1]);
      }

      v90 = (*(*v88 + 24))(v88);
      (*(*v90 + 24))(&v496);
      v91 = v496;
      v496 = 0;
      v500 = v91;
      if (v91)
      {
        operator new();
      }

      v501 = 0;
      v487 = 0;
      v488 = 0;
      v489 = 0;
      (*(MEMORY[0] + 64))(&v498, 0, 30);
      v331 = *(v498 + 16);
      v330 = *(v498 + 32);
      *v490 = *v498;
      *&v490[16] = v331;
      *&v490[32] = v330;
      v498 = 0;
      MEMORY[0x2743BF050]();
      v491 = *v490;
      v492 = *&v490[8];
      v493 = *&v490[24];
      v494 = *&v490[40];
      v332 = (*(MEMORY[0] + 104))(0);
      v495 = v332 & ((v332 >> 1) >> 15);
      v333 = v501;
      if (v501 && !atomic_fetch_add(&v501->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v333->__on_zero_shared)(v333);
        std::__shared_weak_count::__release_weak(v333);
      }

      v334 = v496;
      v496 = 0;
      if (v334)
      {
        (*(*v334 + 8))(v334);
      }

      *a3 = &unk_28810F9B8;
      v335 = v488;
      if (v488)
      {
        atomic_fetch_add_explicit(&v488->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v498 = v487;
      v499 = v488;
      v500 = 0;
      v501 = 0;
      sub_2717F1B04(&v496, &v492, 3, &v492 + 12, 3, 2);
      v170 = v495;
      v336 = (2 * v489) | 0x100000000;
      if (!BYTE4(v489))
      {
        v336 = 0;
      }

      *(a3 + 8) = v487;
      *(a3 + 16) = v335;
      v337 = v496;
      *(a3 + 24) = v336;
      *(a3 + 32) = v337;
      *(a3 + 40) = v497;
      v173 = v488;
      *(a3 + 48) = *v490;
      v174 = 30;
      goto LABEL_631;
    case 31:
      v64 = **a2;
      v65 = (*a2)[1];
      v486 = v65;
      if (v65)
      {
        atomic_fetch_add_explicit((v65 + 8), 1uLL, memory_order_relaxed);
      }

      if (!v64)
      {
        sub_271719018(a2[1]);
      }

      v66 = (*(*v64 + 24))(v64);
      (*(*v66 + 24))(&v496);
      v67 = v496;
      v496 = 0;
      v500 = v67;
      if (v67)
      {
        operator new();
      }

      v501 = 0;
      v487 = 0;
      v488 = 0;
      v489 = 0;
      (*(MEMORY[0] + 64))(&v498, 0, 31);
      v282 = *(v498 + 16);
      v281 = *(v498 + 32);
      *v490 = *v498;
      *&v490[16] = v282;
      *&v490[32] = v281;
      v498 = 0;
      MEMORY[0x2743BF050]();
      v491 = *v490;
      v492 = *&v490[8];
      v493 = *&v490[24];
      v494 = *&v490[40];
      v283 = (*(MEMORY[0] + 104))(0);
      v495 = v283 & ((v283 >> 1) >> 15);
      v284 = v501;
      if (v501 && !atomic_fetch_add(&v501->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v284->__on_zero_shared)(v284);
        std::__shared_weak_count::__release_weak(v284);
      }

      v285 = v496;
      v496 = 0;
      if (v285)
      {
        (*(*v285 + 8))(v285);
      }

      *a3 = &unk_28810F9B8;
      v286 = v488;
      if (v488)
      {
        atomic_fetch_add_explicit(&v488->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v498 = v487;
      v499 = v488;
      v500 = 0;
      v501 = 0;
      sub_2717F1B04(&v496, &v492, 3, &v492 + 12, 3, 2);
      v170 = v495;
      v287 = (2 * v489) | 0x100000000;
      if (!BYTE4(v489))
      {
        v287 = 0;
      }

      *(a3 + 8) = v487;
      *(a3 + 16) = v286;
      v288 = v496;
      *(a3 + 24) = v287;
      *(a3 + 32) = v288;
      *(a3 + 40) = v497;
      v173 = v488;
      *(a3 + 48) = *v490;
      v174 = 31;
      goto LABEL_631;
    case 32:
      v96 = **a2;
      v97 = (*a2)[1];
      v486 = v97;
      if (v97)
      {
        atomic_fetch_add_explicit((v97 + 8), 1uLL, memory_order_relaxed);
      }

      if (!v96)
      {
        sub_2717192BC(a2[1]);
      }

      v98 = (*(*v96 + 24))(v96);
      (*(*v98 + 24))(&v496);
      v99 = v496;
      v496 = 0;
      v500 = v99;
      if (v99)
      {
        operator new();
      }

      v501 = 0;
      v487 = 0;
      v488 = 0;
      v489 = 0;
      (*(MEMORY[0] + 64))(&v498, 0, 32);
      v347 = *(v498 + 16);
      v346 = *(v498 + 32);
      *v490 = *v498;
      *&v490[16] = v347;
      *&v490[32] = v346;
      v498 = 0;
      MEMORY[0x2743BF050]();
      v491 = *v490;
      v492 = *&v490[8];
      v493 = *&v490[24];
      v494 = *&v490[40];
      v348 = (*(MEMORY[0] + 104))(0);
      v495 = v348 & ((v348 >> 1) >> 15);
      v349 = v501;
      if (v501 && !atomic_fetch_add(&v501->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v349->__on_zero_shared)(v349);
        std::__shared_weak_count::__release_weak(v349);
      }

      v350 = v496;
      v496 = 0;
      if (v350)
      {
        (*(*v350 + 8))(v350);
      }

      *a3 = &unk_28810F9B8;
      v351 = v488;
      if (v488)
      {
        atomic_fetch_add_explicit(&v488->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v498 = v487;
      v499 = v488;
      v500 = 0;
      v501 = 0;
      sub_2717F1B04(&v496, &v492, 3, &v492 + 12, 3, 4);
      v170 = v495;
      v352 = (4 * v489) | 0x100000000;
      if (!BYTE4(v489))
      {
        v352 = 0;
      }

      *(a3 + 8) = v487;
      *(a3 + 16) = v351;
      v353 = v496;
      *(a3 + 24) = v352;
      *(a3 + 32) = v353;
      *(a3 + 40) = v497;
      v173 = v488;
      *(a3 + 48) = *v490;
      v174 = 32;
      goto LABEL_631;
    case 33:
      v136 = **a2;
      v137 = (*a2)[1];
      v486 = v137;
      if (v137)
      {
        atomic_fetch_add_explicit((v137 + 8), 1uLL, memory_order_relaxed);
      }

      if (!v136)
      {
        sub_2717195D0(a2[1]);
      }

      v138 = (*(*v136 + 24))(v136);
      (*(*v138 + 24))(&v496);
      v139 = v496;
      v496 = 0;
      v500 = v139;
      if (v139)
      {
        operator new();
      }

      v501 = 0;
      v487 = 0;
      v488 = 0;
      v489 = 0;
      (*(MEMORY[0] + 64))(&v498, 0, 33);
      v431 = *(v498 + 16);
      v430 = *(v498 + 32);
      *v490 = *v498;
      *&v490[16] = v431;
      *&v490[32] = v430;
      v498 = 0;
      MEMORY[0x2743BF050]();
      v491 = *v490;
      v492 = *&v490[8];
      v493 = *&v490[24];
      v494 = *&v490[40];
      v432 = (*(MEMORY[0] + 104))(0);
      v495 = v432 & ((v432 >> 1) >> 15);
      v433 = v501;
      if (v501 && !atomic_fetch_add(&v501->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v433->__on_zero_shared)(v433);
        std::__shared_weak_count::__release_weak(v433);
      }

      v434 = v496;
      v496 = 0;
      if (v434)
      {
        (*(*v434 + 8))(v434);
      }

      *a3 = &unk_28810F9B8;
      v435 = v488;
      if (v488)
      {
        atomic_fetch_add_explicit(&v488->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v498 = v487;
      v499 = v488;
      v500 = 0;
      v501 = 0;
      sub_2717F1B04(&v496, &v492, 3, &v492 + 12, 3, 1);
      v436 = v489 | 0x100000000;
      v190 = v495;
      if (!BYTE4(v489))
      {
        v436 = 0;
      }

      *(a3 + 8) = v487;
      *(a3 + 16) = v435;
      v437 = v496;
      *(a3 + 24) = v436;
      *(a3 + 32) = v437;
      *(a3 + 40) = v497;
      v173 = v488;
      *(a3 + 48) = *v490;
      v192 = 33;
      goto LABEL_644;
    case 34:
      v92 = **a2;
      v93 = (*a2)[1];
      v486 = v93;
      if (v93)
      {
        atomic_fetch_add_explicit((v93 + 8), 1uLL, memory_order_relaxed);
      }

      if (!v92)
      {
        sub_2717915A4(&v487, a2[1]);
      }

      v94 = (*(*v92 + 24))(v92);
      (*(*v94 + 24))(&v496);
      v95 = v496;
      v496 = 0;
      v500 = v95;
      if (v95)
      {
        operator new();
      }

      v501 = 0;
      v487 = 0;
      v488 = 0;
      v489 = 0;
      (*(MEMORY[0] + 64))(&v498, 0, 34);
      v339 = *(v498 + 16);
      v338 = *(v498 + 32);
      *v490 = *v498;
      *&v490[16] = v339;
      *&v490[32] = v338;
      v498 = 0;
      MEMORY[0x2743BF050]();
      v491 = *v490;
      v492 = *&v490[8];
      v493 = *&v490[24];
      v494 = *&v490[40];
      v340 = (*(MEMORY[0] + 104))(0);
      v495 = v340 & ((v340 >> 1) >> 15);
      v341 = v501;
      if (v501 && !atomic_fetch_add(&v501->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v341->__on_zero_shared)(v341);
        std::__shared_weak_count::__release_weak(v341);
      }

      v342 = v496;
      v496 = 0;
      if (v342)
      {
        (*(*v342 + 8))(v342);
      }

      *a3 = &unk_28810F9B8;
      v343 = v488;
      if (v488)
      {
        atomic_fetch_add_explicit(&v488->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v498 = v487;
      v499 = v488;
      v500 = 0;
      v501 = 0;
      sub_2717F1B04(&v496, &v492, 3, &v492 + 12, 3, 2);
      v170 = v495;
      v344 = (2 * v489) | 0x100000000;
      if (!BYTE4(v489))
      {
        v344 = 0;
      }

      *(a3 + 8) = v487;
      *(a3 + 16) = v343;
      v345 = v496;
      *(a3 + 24) = v344;
      *(a3 + 32) = v345;
      *(a3 + 40) = v497;
      v173 = v488;
      *(a3 + 48) = *v490;
      v174 = 34;
      goto LABEL_631;
    case 35:
      v84 = **a2;
      v85 = (*a2)[1];
      v486 = v85;
      if (v85)
      {
        atomic_fetch_add_explicit((v85 + 8), 1uLL, memory_order_relaxed);
      }

      if (!v84)
      {
        sub_2717918B4(&v487, a2[1]);
      }

      v86 = (*(*v84 + 24))(v84);
      (*(*v86 + 24))(&v496);
      v87 = v496;
      v496 = 0;
      v500 = v87;
      if (v87)
      {
        operator new();
      }

      v501 = 0;
      v487 = 0;
      v488 = 0;
      v489 = 0;
      (*(MEMORY[0] + 64))(&v498, 0, 35);
      v323 = *(v498 + 16);
      v322 = *(v498 + 32);
      *v490 = *v498;
      *&v490[16] = v323;
      *&v490[32] = v322;
      v498 = 0;
      MEMORY[0x2743BF050]();
      v491 = *v490;
      v492 = *&v490[8];
      v493 = *&v490[24];
      v494 = *&v490[40];
      v324 = (*(MEMORY[0] + 104))(0);
      v495 = v324 & ((v324 >> 1) >> 15);
      v325 = v501;
      if (v501 && !atomic_fetch_add(&v501->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v325->__on_zero_shared)(v325);
        std::__shared_weak_count::__release_weak(v325);
      }

      v326 = v496;
      v496 = 0;
      if (v326)
      {
        (*(*v326 + 8))(v326);
      }

      *a3 = &unk_28810F9B8;
      v327 = v488;
      if (v488)
      {
        atomic_fetch_add_explicit(&v488->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v498 = v487;
      v499 = v488;
      v500 = 0;
      v501 = 0;
      sub_2717F1B04(&v496, &v492, 3, &v492 + 12, 3, 2);
      v170 = v495;
      v328 = (2 * v489) | 0x100000000;
      if (!BYTE4(v489))
      {
        v328 = 0;
      }

      *(a3 + 8) = v487;
      *(a3 + 16) = v327;
      v329 = v496;
      *(a3 + 24) = v328;
      *(a3 + 32) = v329;
      *(a3 + 40) = v497;
      v173 = v488;
      *(a3 + 48) = *v490;
      v174 = 35;
      goto LABEL_631;
    case 36:
      v80 = **a2;
      v81 = (*a2)[1];
      v486 = v81;
      if (v81)
      {
        atomic_fetch_add_explicit((v81 + 8), 1uLL, memory_order_relaxed);
      }

      if (!v80)
      {
        sub_271791B54(&v487, a2[1]);
      }

      v82 = (*(*v80 + 24))(v80);
      (*(*v82 + 24))(&v496);
      v83 = v496;
      v496 = 0;
      v500 = v83;
      if (v83)
      {
        operator new();
      }

      v501 = 0;
      v487 = 0;
      v488 = 0;
      v489 = 0;
      (*(MEMORY[0] + 64))(&v498, 0, 36);
      v315 = *(v498 + 16);
      v314 = *(v498 + 32);
      *v490 = *v498;
      *&v490[16] = v315;
      *&v490[32] = v314;
      v498 = 0;
      MEMORY[0x2743BF050]();
      v491 = *v490;
      v492 = *&v490[8];
      v493 = *&v490[24];
      v494 = *&v490[40];
      v316 = (*(MEMORY[0] + 104))(0);
      v495 = v316 & ((v316 >> 1) >> 15);
      v317 = v501;
      if (v501 && !atomic_fetch_add(&v501->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v317->__on_zero_shared)(v317);
        std::__shared_weak_count::__release_weak(v317);
      }

      v318 = v496;
      v496 = 0;
      if (v318)
      {
        (*(*v318 + 8))(v318);
      }

      *a3 = &unk_28810F9B8;
      v319 = v488;
      if (v488)
      {
        atomic_fetch_add_explicit(&v488->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v498 = v487;
      v499 = v488;
      v500 = 0;
      v501 = 0;
      sub_2717F1B04(&v496, &v492, 3, &v492 + 12, 3, 4);
      v170 = v495;
      v320 = (4 * v489) | 0x100000000;
      if (!BYTE4(v489))
      {
        v320 = 0;
      }

      *(a3 + 8) = v487;
      *(a3 + 16) = v319;
      v321 = v496;
      *(a3 + 24) = v320;
      *(a3 + 32) = v321;
      *(a3 + 40) = v497;
      v173 = v488;
      *(a3 + 48) = *v490;
      v174 = 36;
      goto LABEL_631;
    case 37:
      v124 = **a2;
      v125 = (*a2)[1];
      v486 = v125;
      if (v125)
      {
        atomic_fetch_add_explicit((v125 + 8), 1uLL, memory_order_relaxed);
      }

      if (!v124)
      {
        sub_27171987C(a2[1]);
      }

      v126 = (*(*v124 + 24))(v124);
      (*(*v126 + 24))(&v496);
      v127 = v496;
      v496 = 0;
      v500 = v127;
      if (v127)
      {
        operator new();
      }

      v501 = 0;
      v487 = 0;
      v488 = 0;
      v489 = 0;
      (*(MEMORY[0] + 64))(&v498, 0, 37);
      v407 = *(v498 + 16);
      v406 = *(v498 + 32);
      *v490 = *v498;
      *&v490[16] = v407;
      *&v490[32] = v406;
      v498 = 0;
      MEMORY[0x2743BF050]();
      v491 = *v490;
      v492 = *&v490[8];
      v493 = *&v490[24];
      v494 = *&v490[40];
      v408 = (*(MEMORY[0] + 104))(0);
      v495 = v408 & ((v408 >> 1) >> 15);
      v409 = v501;
      if (v501 && !atomic_fetch_add(&v501->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v409->__on_zero_shared)(v409);
        std::__shared_weak_count::__release_weak(v409);
      }

      v410 = v496;
      v496 = 0;
      if (v410)
      {
        (*(*v410 + 8))(v410);
      }

      *a3 = &unk_28810F9B8;
      v411 = v488;
      if (v488)
      {
        atomic_fetch_add_explicit(&v488->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v498 = v487;
      v499 = v488;
      v500 = 0;
      v501 = 0;
      sub_2717F1B04(&v496, &v492, 3, &v492 + 12, 3, 1);
      v412 = v489 | 0x100000000;
      v190 = v495;
      if (!BYTE4(v489))
      {
        v412 = 0;
      }

      *(a3 + 8) = v487;
      *(a3 + 16) = v411;
      v413 = v496;
      *(a3 + 24) = v412;
      *(a3 + 32) = v413;
      *(a3 + 40) = v497;
      v173 = v488;
      *(a3 + 48) = *v490;
      v192 = 37;
LABEL_644:
      *(a3 + 56) = v192;
LABEL_645:
      *(a3 + 60) = v190;
      if (v173)
      {
        goto LABEL_646;
      }

      goto LABEL_648;
    case 38:
      v144 = **a2;
      v145 = (*a2)[1];
      v486 = v145;
      if (v145)
      {
        atomic_fetch_add_explicit((v145 + 8), 1uLL, memory_order_relaxed);
      }

      if (!v144)
      {
        sub_271719B28(a2[1]);
      }

      v146 = (*(*v144 + 24))(v144);
      (*(*v146 + 24))(&v496);
      v147 = v496;
      v496 = 0;
      v500 = v147;
      if (v147)
      {
        operator new();
      }

      v501 = 0;
      v487 = 0;
      v488 = 0;
      v489 = 0;
      (*(MEMORY[0] + 64))(&v498, 0, 38);
      v447 = *(v498 + 16);
      v446 = *(v498 + 32);
      *v490 = *v498;
      *&v490[16] = v447;
      *&v490[32] = v446;
      v498 = 0;
      MEMORY[0x2743BF050]();
      v491 = *v490;
      v492 = *&v490[8];
      v493 = *&v490[24];
      v494 = *&v490[40];
      v448 = (*(MEMORY[0] + 104))(0);
      v495 = v448 & ((v448 >> 1) >> 15);
      v449 = v501;
      if (v501 && !atomic_fetch_add(&v501->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v449->__on_zero_shared)(v449);
        std::__shared_weak_count::__release_weak(v449);
      }

      v450 = v496;
      v496 = 0;
      if (v450)
      {
        (*(*v450 + 8))(v450);
      }

      *a3 = &unk_28810F9B8;
      v451 = v488;
      if (v488)
      {
        atomic_fetch_add_explicit(&v488->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v498 = v487;
      v499 = v488;
      v500 = 0;
      v501 = 0;
      sub_2717F1B04(&v496, &v492, 3, &v492 + 12, 3, 2);
      v170 = v495;
      v452 = (2 * v489) | 0x100000000;
      if (!BYTE4(v489))
      {
        v452 = 0;
      }

      *(a3 + 8) = v487;
      *(a3 + 16) = v451;
      v453 = v496;
      *(a3 + 24) = v452;
      *(a3 + 32) = v453;
      *(a3 + 40) = v497;
      v173 = v488;
      *(a3 + 48) = *v490;
      v174 = 38;
      goto LABEL_631;
    case 39:
      v52 = **a2;
      v53 = (*a2)[1];
      v486 = v53;
      if (v53)
      {
        atomic_fetch_add_explicit((v53 + 8), 1uLL, memory_order_relaxed);
      }

      if (!v52)
      {
        sub_271719E3C(a2[1]);
      }

      v54 = (*(*v52 + 24))(v52);
      (*(*v54 + 24))(&v496);
      v55 = v496;
      v496 = 0;
      v500 = v55;
      if (v55)
      {
        operator new();
      }

      v501 = 0;
      v487 = 0;
      v488 = 0;
      v489 = 0;
      (*(MEMORY[0] + 64))(&v498, 0, 39);
      v258 = *(v498 + 16);
      v257 = *(v498 + 32);
      *v490 = *v498;
      *&v490[16] = v258;
      *&v490[32] = v257;
      v498 = 0;
      MEMORY[0x2743BF050]();
      v491 = *v490;
      v492 = *&v490[8];
      v493 = *&v490[24];
      v494 = *&v490[40];
      v259 = (*(MEMORY[0] + 104))(0);
      v495 = v259 & ((v259 >> 1) >> 15);
      v260 = v501;
      if (v501 && !atomic_fetch_add(&v501->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v260->__on_zero_shared)(v260);
        std::__shared_weak_count::__release_weak(v260);
      }

      v261 = v496;
      v496 = 0;
      if (v261)
      {
        (*(*v261 + 8))(v261);
      }

      *a3 = &unk_28810F9B8;
      v262 = v488;
      if (v488)
      {
        atomic_fetch_add_explicit(&v488->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v498 = v487;
      v499 = v488;
      v500 = 0;
      v501 = 0;
      sub_2717F1B04(&v496, &v492, 3, &v492 + 12, 3, 2);
      v170 = v495;
      v263 = (2 * v489) | 0x100000000;
      if (!BYTE4(v489))
      {
        v263 = 0;
      }

      *(a3 + 8) = v487;
      *(a3 + 16) = v262;
      v264 = v496;
      *(a3 + 24) = v263;
      *(a3 + 32) = v264;
      *(a3 + 40) = v497;
      v173 = v488;
      *(a3 + 48) = *v490;
      v174 = 39;
      goto LABEL_631;
    case 40:
      v40 = **a2;
      v41 = (*a2)[1];
      v486 = v41;
      if (v41)
      {
        atomic_fetch_add_explicit((v41 + 8), 1uLL, memory_order_relaxed);
      }

      if (!v40)
      {
        sub_27171A0E0(a2[1]);
      }

      v42 = (*(*v40 + 24))(v40);
      (*(*v42 + 24))(&v496);
      v43 = v496;
      v496 = 0;
      v500 = v43;
      if (v43)
      {
        operator new();
      }

      v501 = 0;
      v487 = 0;
      v488 = 0;
      v489 = 0;
      (*(MEMORY[0] + 64))(&v498, 0, 40);
      v234 = *(v498 + 16);
      v233 = *(v498 + 32);
      *v490 = *v498;
      *&v490[16] = v234;
      *&v490[32] = v233;
      v498 = 0;
      MEMORY[0x2743BF050]();
      v491 = *v490;
      v492 = *&v490[8];
      v493 = *&v490[24];
      v494 = *&v490[40];
      v235 = (*(MEMORY[0] + 104))(0);
      v495 = v235 & ((v235 >> 1) >> 15);
      v236 = v501;
      if (v501 && !atomic_fetch_add(&v501->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v236->__on_zero_shared)(v236);
        std::__shared_weak_count::__release_weak(v236);
      }

      v237 = v496;
      v496 = 0;
      if (v237)
      {
        (*(*v237 + 8))(v237);
      }

      *a3 = &unk_28810F9B8;
      v238 = v488;
      if (v488)
      {
        atomic_fetch_add_explicit(&v488->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v498 = v487;
      v499 = v488;
      v500 = 0;
      v501 = 0;
      sub_2717F1B04(&v496, &v492, 3, &v492 + 12, 3, 4);
      v170 = v495;
      v239 = (4 * v489) | 0x100000000;
      if (!BYTE4(v489))
      {
        v239 = 0;
      }

      *(a3 + 8) = v487;
      *(a3 + 16) = v238;
      v240 = v496;
      *(a3 + 24) = v239;
      *(a3 + 32) = v240;
      *(a3 + 40) = v497;
      v173 = v488;
      *(a3 + 48) = *v490;
      v174 = 40;
LABEL_631:
      *(a3 + 56) = v174;
LABEL_632:
      *(a3 + 60) = v170;
      if (v173)
      {
LABEL_646:
        if (!atomic_fetch_add(&v173->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v173->__on_zero_shared)(v173);
          std::__shared_weak_count::__release_weak(v173);
        }
      }

LABEL_648:
      if (v486)
      {
        if (!atomic_fetch_add(&v486->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v486->__on_zero_shared)(v486);
          std::__shared_weak_count::__release_weak(v486);
        }
      }

      return;
    default:
      sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/FormatAlgorithm.h", 523, "", 0, "Runtime format not in given Formats list", 0x28uLL, sub_271852CA8);
      abort();
  }
}

void sub_27178D08C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  (*(*v3 + 8))(v3, a2);
  v6 = *(v4 - 112);
  *(v4 - 112) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27178D544(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(v4 - 96);
  sub_27112F828(v4 - 80);
  sub_27112F828(v3 + 8);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27178D570(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(v4 - 96);
  sub_27112F828(v4 - 80);
  sub_27112F828(v3 + 8);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27178D59C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(v4 - 96);
  sub_27112F828(v4 - 80);
  sub_27112F828(v3 + 8);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27178D5C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(v4 - 96);
  sub_27112F828(v4 - 80);
  sub_27112F828(v3 + 8);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27178D5F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(v4 - 96);
  sub_27112F828(v4 - 80);
  sub_27112F828(v3 + 8);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27178D620(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(v4 - 96);
  sub_27112F828(v4 - 80);
  sub_27112F828(v3 + 8);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27178D64C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(v4 - 96);
  sub_27112F828(v4 - 80);
  sub_27112F828(v3 + 8);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27178D678(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(v4 - 96);
  sub_27112F828(v4 - 80);
  sub_27112F828(v3 + 8);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27178D6A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(v4 - 96);
  sub_27112F828(v4 - 80);
  sub_27112F828(v3 + 8);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27178D6D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(v4 - 96);
  sub_27112F828(v4 - 80);
  sub_27112F828(v3 + 8);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27178D6FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(v4 - 96);
  sub_27112F828(v4 - 80);
  sub_27112F828(v3 + 8);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27178D728(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(v4 - 96);
  sub_27112F828(v4 - 80);
  sub_27112F828(v3 + 8);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27178D754(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(v4 - 96);
  sub_27112F828(v4 - 80);
  sub_27112F828(v3 + 8);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27178D780(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(v4 - 96);
  sub_27112F828(v4 - 80);
  sub_27112F828(v3 + 8);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27178D7AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(v4 - 96);
  sub_27112F828(v4 - 80);
  sub_27112F828(v3 + 8);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27178D7D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(v4 - 96);
  sub_27112F828(v4 - 80);
  sub_27112F828(v3 + 8);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27178D804(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(v4 - 96);
  sub_27112F828(v4 - 80);
  sub_27112F828(v3 + 8);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27178D830(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(v4 - 96);
  sub_27112F828(v4 - 80);
  sub_27112F828(v3 + 8);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27178D85C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(v4 - 96);
  sub_27112F828(v4 - 80);
  sub_27112F828(v3 + 8);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27178D888(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(v4 - 96);
  sub_27112F828(v4 - 80);
  sub_27112F828(v3 + 8);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27178D8B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(v4 - 96);
  sub_27112F828(v4 - 80);
  sub_27112F828(v3 + 8);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27178D8E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(v4 - 96);
  sub_27112F828(v4 - 80);
  sub_27112F828(v3 + 8);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27178D90C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(v4 - 96);
  sub_27112F828(v4 - 80);
  sub_27112F828(v3 + 8);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27178D938(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(v4 - 96);
  sub_27112F828(v4 - 80);
  sub_27112F828(v3 + 8);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27178D964(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(v4 - 96);
  sub_27112F828(v4 - 80);
  sub_27112F828(v3 + 8);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27178D990(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(v4 - 96);
  sub_27112F828(v4 - 80);
  sub_27112F828(v3 + 8);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27178D9BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(v4 - 96);
  sub_27112F828(v4 - 80);
  sub_27112F828(v3 + 8);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27178D9E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(v4 - 96);
  sub_27112F828(v4 - 80);
  sub_27112F828(v3 + 8);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27178DA14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(v4 - 96);
  sub_27112F828(v4 - 80);
  sub_27112F828(v3 + 8);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27178DA40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(v4 - 96);
  sub_27112F828(v4 - 80);
  sub_27112F828(v3 + 8);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27178DA6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(v4 - 96);
  sub_27112F828(v4 - 80);
  sub_27112F828(v3 + 8);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27178DA98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(v4 - 96);
  sub_27112F828(v4 - 80);
  sub_27112F828(v3 + 8);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27178DAC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(v4 - 96);
  sub_27112F828(v4 - 80);
  sub_27112F828(v3 + 8);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27178DAF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(v4 - 96);
  sub_27112F828(v4 - 80);
  sub_27112F828(v3 + 8);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27178DB1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(v4 - 96);
  sub_27112F828(v4 - 80);
  sub_27112F828(v3 + 8);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27178DB48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(v4 - 96);
  sub_27112F828(v4 - 80);
  sub_27112F828(v3 + 8);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27178DB74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(v4 - 96);
  sub_27112F828(v4 - 80);
  sub_27112F828(v3 + 8);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27178DBA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(v4 - 96);
  sub_27112F828(v4 - 80);
  sub_27112F828(v3 + 8);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27178DBCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(v4 - 96);
  sub_27112F828(v4 - 80);
  sub_27112F828(v3 + 8);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27178DBF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(v4 - 96);
  sub_27112F828(v4 - 80);
  sub_27112F828(v3 + 8);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27178DC24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27178DC38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27178DC4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27178DC60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27178DC74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27178DC88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27178DC9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27178DCB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27178DCC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27178DCD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27178DCEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27178DD00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27178DD14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27178DD28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27178DD3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27178DD50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27178DD64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27178DD78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27178DD8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27178DDA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27178DDB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27178DDC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27178DDDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27178DDF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27178DE04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27178DE18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27178DE2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27178DE40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27178DE54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27178DE68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27178DE7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27178DE90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27178DEA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27178DEB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27178DECC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27178DEE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27178DEF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27178DF08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27178DF1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27178DF30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27178DF44(uint64_t a1, _DWORD *a2)
{
  v2[14] = &unk_288110388;
  sub_2717BBC6C(a2, v2);
  operator new();
}

void sub_27178E18C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_27112F828(v9);
  sub_27112F828(va);
  sub_271308D7C(&a9);
  _Unwind_Resume(a1);
}

void sub_27178E1D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a21)
  {
    free(a21);
  }

  _Unwind_Resume(exception_object);
}

void sub_27178E1EC(uint64_t a1, _DWORD *a2)
{
  v11 = &unk_2881102D8;
  sub_2717D6C8C(v12, a2);
  v3 = v12[0];
  v2 = &unk_288112098;
  v4 = v12[1];
  v5 = v12[2];
  v6 = v13;
  v7 = v14;
  v8 = v15;
  v10 = v17;
  v9 = v16;
  operator new();
}

void sub_27178E49C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  sub_27112F828(v3);
  sub_27112F828(va1);
  sub_271308D7C(va);
  _Unwind_Resume(a1);
}

void sub_27178E4D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271308D7C(va);
  _Unwind_Resume(a1);
}

void sub_27178E4E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22)
{
  if (a22)
  {
    free(a22);
  }

  _Unwind_Resume(exception_object);
}

void sub_27178E4FC(uint64_t a1, _DWORD *a2)
{
  v2[14] = &unk_2881101E8;
  sub_2717BC4E0(a2, v2);
  operator new();
}

void sub_27178E740(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_27112F828(v9);
  sub_27112F828(va);
  sub_27130AAF8(&a9);
  _Unwind_Resume(a1);
}

void sub_27178E788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2717A11C0(va);
  _Unwind_Resume(a1);
}

void sub_27178E79C(uint64_t a1, _DWORD *a2)
{
  v11 = &unk_2881100F8;
  sub_2717D6E58(v12, a2);
  v3 = v12[0];
  v2 = &unk_288111F98;
  v4 = v12[1];
  v5 = v12[2];
  v6 = v13;
  v7 = v14;
  v8 = v15;
  v10 = v17;
  v9 = v16;
  operator new();
}

void sub_27178EA4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  sub_27112F828(v3);
  sub_27112F828(va1);
  sub_271308D7C(va);
  _Unwind_Resume(a1);
}

void sub_27178EA80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271308D7C(va);
  _Unwind_Resume(a1);
}

void sub_27178EA94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22)
{
  if (a22)
  {
    free(a22);
  }

  _Unwind_Resume(exception_object);
}

void sub_27178EAAC(uint64_t a1, _DWORD *a2)
{
  v2[14] = &unk_288110048;
  sub_2717BCD4C(a2, v2);
  operator new();
}

void sub_27178ECF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_27112F828(v9);
  sub_27112F828(va);
  sub_271308D7C(&a9);
  _Unwind_Resume(a1);
}

void sub_27178ED3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a21)
  {
    free(a21);
  }

  _Unwind_Resume(exception_object);
}

void sub_27178ED54(uint64_t a1, _DWORD *a2)
{
  v11 = &unk_288111EF8;
  sub_2717D7028(v12, a2);
  v3 = v12[0];
  v2 = &unk_288113298;
  v4 = v12[1];
  v5 = v12[2];
  v6 = v13;
  v7 = v14;
  v8 = v15;
  v10 = v17;
  v9 = v16;
  operator new();
}

void sub_27178F004(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  sub_27112F828(v3);
  sub_27112F828(va1);
  sub_271308D7C(va);
  _Unwind_Resume(a1);
}

void sub_27178F038(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271308D7C(va);
  _Unwind_Resume(a1);
}

void sub_27178F04C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22)
{
  if (a22)
  {
    free(a22);
  }

  _Unwind_Resume(exception_object);
}

void sub_27178F064(uint64_t a1, _DWORD *a2)
{
  v2[14] = &unk_288111E48;
  sub_2717BD5B4(a2, v2);
  operator new();
}

void sub_27178F2A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_27112F828(v9);
  sub_27112F828(va);
  sub_27130E360(&a9);
  _Unwind_Resume(a1);
}

void sub_27178F2F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2717A4248(va);
  _Unwind_Resume(a1);
}

void sub_27178F304(uint64_t a1, _DWORD *a2)
{
  v11 = &unk_288111D98;
  sub_2717D71EC(v12, a2);
  v3 = v12[0];
  v2 = &unk_288113198;
  v4 = v12[1];
  v5 = v12[2];
  v6 = v13;
  v7 = v14;
  v8 = v15;
  v10 = v17;
  v9 = v16;
  operator new();
}

void sub_27178F5B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  sub_27112F828(v3);
  sub_27112F828(va1);
  sub_271308D7C(va);
  _Unwind_Resume(a1);
}

void sub_27178F5E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271308D7C(va);
  _Unwind_Resume(a1);
}

void sub_27178F5FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22)
{
  if (a22)
  {
    free(a22);
  }

  _Unwind_Resume(exception_object);
}

void sub_27178F614(uint64_t a1, _DWORD *a2)
{
  v2[14] = &unk_288111CE8;
  sub_2717BDE18(a2, v2);
  operator new();
}

void sub_27178F85C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_27112F828(v9);
  sub_27112F828(va);
  sub_271308D7C(&a9);
  _Unwind_Resume(a1);
}

void sub_27178F8A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a21)
  {
    free(a21);
  }

  _Unwind_Resume(exception_object);
}

void sub_27178F8BC(uint64_t a1, _DWORD *a2)
{
  v11 = &unk_288111C38;
  sub_2717D73B0(v12, a2);
  v3 = v12[0];
  v2 = &unk_288113098;
  v4 = v12[1];
  v5 = v12[2];
  v6 = v13;
  v7 = v14;
  v8 = v15;
  v10 = v17;
  v9 = v16;
  operator new();
}

void sub_27178FB6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  sub_27112F828(v3);
  sub_27112F828(va1);
  sub_271308D7C(va);
  _Unwind_Resume(a1);
}

void sub_27178FBA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271308D7C(va);
  _Unwind_Resume(a1);
}

void sub_27178FBB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22)
{
  if (a22)
  {
    free(a22);
  }

  _Unwind_Resume(exception_object);
}

void sub_27178FBCC(uint64_t a1, _DWORD *a2)
{
  v2[14] = &unk_288111B88;
  sub_2717BE698(a2, v2);
  operator new();
}

void sub_27178FE10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_27112F828(v9);
  sub_27112F828(va);
  sub_27131196C(&a9);
  _Unwind_Resume(a1);
}

void sub_27178FE58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2717A72D4(va);
  _Unwind_Resume(a1);
}

void sub_27178FE6C(uint64_t a1, _DWORD *a2)
{
  v11 = &unk_288111AD8;
  sub_2717D757C(v12, a2);
  v3 = v12[0];
  v2 = &unk_288112F98;
  v4 = v12[1];
  v5 = v12[2];
  v6 = v13;
  v7 = v14;
  v8 = v15;
  v10 = v17;
  v9 = v16;
  operator new();
}

void sub_27179011C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  sub_27112F828(v3);
  sub_27112F828(va1);
  sub_271308D7C(va);
  _Unwind_Resume(a1);
}

void sub_271790150(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271308D7C(va);
  _Unwind_Resume(a1);
}

void sub_271790164(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22)
{
  if (a22)
  {
    free(a22);
  }

  _Unwind_Resume(exception_object);
}

void sub_27179017C(uint64_t a1, _DWORD *a2)
{
  v2[14] = &unk_288111A08;
  sub_2717BEF04(a2, v2);
  operator new();
}

void sub_2717903C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_27112F828(v9);
  sub_27112F828(va);
  sub_271308D7C(&a9);
  _Unwind_Resume(a1);
}

void sub_27179040C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a21)
  {
    free(a21);
  }

  _Unwind_Resume(exception_object);
}

void sub_271790424(uint64_t a1, _DWORD *a2)
{
  v11 = &unk_288111958;
  sub_2717D7028(v12, a2);
  v3 = v12[0];
  v2 = &unk_288112E98;
  v4 = v12[1];
  v5 = v12[2];
  v6 = v13;
  v7 = v14;
  v8 = v15;
  v10 = v17;
  v9 = v16;
  operator new();
}

void sub_2717906D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  sub_27112F828(v3);
  sub_27112F828(va1);
  sub_271308D7C(va);
  _Unwind_Resume(a1);
}

void sub_271790708(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271308D7C(va);
  _Unwind_Resume(a1);
}

void sub_27179071C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22)
{
  if (a22)
  {
    free(a22);
  }

  _Unwind_Resume(exception_object);
}

void sub_271790734(uint64_t a1, _DWORD *a2)
{
  v2[14] = &unk_2881118A8;
  sub_2717BF76C(a2, v2);
  operator new();
}

void sub_271790978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_27112F828(v9);
  sub_27112F828(va);
  sub_271314F78(&a9);
  _Unwind_Resume(a1);
}

void sub_2717909C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2717AA35C(va);
  _Unwind_Resume(a1);
}

void sub_2717909D4(uint64_t a1, _DWORD *a2)
{
  v11 = &unk_288111708;
  sub_2717D71EC(v12, a2);
  v3 = v12[0];
  v2 = &unk_288112D18;
  v4 = v12[1];
  v5 = v12[2];
  v6 = v13;
  v7 = v14;
  v8 = v15;
  v10 = v17;
  v9 = v16;
  operator new();
}

void sub_271790C84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  sub_27112F828(v3);
  sub_27112F828(va1);
  sub_271308D7C(va);
  _Unwind_Resume(a1);
}

void sub_271790CB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271308D7C(va);
  _Unwind_Resume(a1);
}

void sub_271790CCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22)
{
  if (a22)
  {
    free(a22);
  }

  _Unwind_Resume(exception_object);
}

void sub_271790CE4(uint64_t a1, _DWORD *a2)
{
  v11 = &unk_288111228;
  sub_2717D73B0(v12, a2);
  v3 = v12[0];
  v2 = &unk_288112A18;
  v4 = v12[1];
  v5 = v12[2];
  v6 = v13;
  v7 = v14;
  v8 = v15;
  v10 = v17;
  v9 = v16;
  operator new();
}

void sub_271790F94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  sub_27112F828(v3);
  sub_27112F828(va1);
  sub_271308D7C(va);
  _Unwind_Resume(a1);
}

void sub_271790FC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271308D7C(va);
  _Unwind_Resume(a1);
}

void sub_271790FDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22)
{
  if (a22)
  {
    free(a22);
  }

  _Unwind_Resume(exception_object);
}

void sub_271790FF4(uint64_t a1, _DWORD *a2)
{
  v2[14] = &unk_288111178;
  sub_2717C1914(a2, v2);
  operator new();
}

void sub_271791238(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_27112F828(v9);
  sub_27112F828(va);
  sub_27131C2A4(&a9);
  _Unwind_Resume(a1);
}

void sub_271791280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2717B0474(va);
  _Unwind_Resume(a1);
}

void sub_271791294(uint64_t a1, _DWORD *a2)
{
  v11 = &unk_2881110C8;
  sub_2717D757C(v12, a2);
  v3 = v12[0];
  v2 = &unk_288112918;
  v4 = v12[1];
  v5 = v12[2];
  v6 = v13;
  v7 = v14;
  v8 = v15;
  v10 = v17;
  v9 = v16;
  operator new();
}

void sub_271791544(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  sub_27112F828(v3);
  sub_27112F828(va1);
  sub_271308D7C(va);
  _Unwind_Resume(a1);
}

void sub_271791578(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271308D7C(va);
  _Unwind_Resume(a1);
}

void sub_27179158C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22)
{
  if (a22)
  {
    free(a22);
  }

  _Unwind_Resume(exception_object);
}

void sub_2717915A4(uint64_t a1, _DWORD *a2)
{
  v11 = &unk_288110AF8;
  sub_2717D73B0(v12, a2);
  v3 = v12[0];
  v2 = &unk_288112598;
  v4 = v12[1];
  v5 = v12[2];
  v6 = v13;
  v7 = v14;
  v8 = v15;
  v10 = v17;
  v9 = v16;
  operator new();
}

void sub_271791854(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  sub_27112F828(v3);
  sub_27112F828(va1);
  sub_271308D7C(va);
  _Unwind_Resume(a1);
}

void sub_271791888(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271308D7C(va);
  _Unwind_Resume(a1);
}

void sub_27179189C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22)
{
  if (a22)
  {
    free(a22);
  }

  _Unwind_Resume(exception_object);
}

void sub_2717918B4(uint64_t a1, _DWORD *a2)
{
  v2[14] = &unk_288110A48;
  sub_2717C3AFC(a2, v2);
  operator new();
}

void sub_271791AF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_27112F828(v9);
  sub_27112F828(va);
  sub_271323374(&a9);
  _Unwind_Resume(a1);
}

void sub_271791B40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2717B6584(va);
  _Unwind_Resume(a1);
}

void sub_271791B54(uint64_t a1, _DWORD *a2)
{
  v11 = &unk_288110998;
  sub_2717D757C(v12, a2);
  v3 = v12[0];
  v2 = &unk_288112498;
  v4 = v12[1];
  v5 = v12[2];
  v6 = v13;
  v7 = v14;
  v8 = v15;
  v10 = v17;
  v9 = v16;
  operator new();
}

void sub_271791E04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  sub_27112F828(v3);
  sub_27112F828(va1);
  sub_271308D7C(va);
  _Unwind_Resume(a1);
}

void sub_271791E38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271308D7C(va);
  _Unwind_Resume(a1);
}

void sub_271791E4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22)
{
  if (a22)
  {
    free(a22);
  }

  _Unwind_Resume(exception_object);
}

void sub_271791E64(int a1, _DWORD **a2, double d0_0)
{
  switch(a1)
  {
    case 1:
      v4 = *a2;
      LOBYTE(v59) = 0;
      v66 = &unk_28810F638;
      v60 = &unk_2881117B8;
      if (v4[1])
      {
        v5 = *v4 == 0;
      }

      else
      {
        v5 = 1;
      }

      v6 = *v4;
      if (v5)
      {
        v6 = 0;
      }

      v7 = 0x100000000;
      if (v6 > 0x100000000)
      {
        v7 = v6;
      }

      *v61 = v6;
      *&v61[8] = (v6 != 0) | (v7 << 32);
      v61[16] = 0;
      v61[24] = 0;
      v72 = *&v61[8];
      if (v6)
      {
        v8 = HIDWORD(v6) == 0;
      }

      else
      {
        v8 = 1;
      }

      if (v8)
      {
        v6 = 0;
      }

      v65 = v6;
      if ((v7 & (v7 - 1)) != 0)
      {
        v9 = 1;
      }

      else
      {
        v9 = v7;
      }

      sub_2717CD2D0(&v62, &v65, &v72, 1, &v59, 1, v9);
      v67 = &unk_288112D98;
      v68[0] = *v61;
      *(v68 + 12) = *&v61[12];
      v69 = v62;
      v70 = v63;
      v71 = v64;
      operator new();
    case 2:
      v43 = *a2;
      LOWORD(v59) = 0;
      v66 = &unk_28810F138;
      v60 = &unk_288110F08;
      if (v43[1])
      {
        v44 = *v43 == 0;
      }

      else
      {
        v44 = 1;
      }

      v45 = *v43;
      if (v44)
      {
        v45 = 0;
      }

      v46 = 0;
      if (v45 > 0x100000000)
      {
        v46 = v45;
      }

      *v61 = v45;
      *&v61[8] = (v45 != 0) | (v46 << 32);
      v61[16] = 0;
      v61[24] = 0;
      v72 = *&v61[8];
      if (v45)
      {
        v47 = HIDWORD(v45) == 0;
      }

      else
      {
        v47 = 1;
      }

      if (v47)
      {
        v45 = 0;
      }

      v65 = v45;
      if (((2 * v46) & (2 * v46 - 1)) != 0)
      {
        v48 = 2;
      }

      else
      {
        v48 = 2 * v46;
      }

      sub_2717D4198(&v62, &v65, &v72, 1, &v59, 1, v48);
      v67 = &unk_288112818;
      v68[0] = *v61;
      *(v68 + 12) = *&v61[12];
      v69 = v62;
      v70 = v63;
      v71 = v64;
      operator new();
    case 3:
      v42 = *a2;
      v66 = &unk_28810EBB8;
      *v61 = &unk_288110618;
      sub_2717BB4E4(v42, word_2718B7438, &v67);
      operator new();
    case 4:
      v26 = *a2;
      v59 = 0;
      v66 = &unk_28810EAB8;
      v60 = &unk_288110478;
      if (v26[1])
      {
        v27 = *v26 == 0;
      }

      else
      {
        v27 = 1;
      }

      v28 = *v26;
      if (v27)
      {
        v28 = 0;
      }

      v29 = 0;
      if (v28 > 0x100000000)
      {
        v29 = v28;
      }

      *v61 = v28;
      *&v61[8] = (v28 != 0) | (v29 << 32);
      v61[16] = 0;
      v61[24] = 0;
      v72 = *&v61[8];
      if (v28)
      {
        v30 = HIDWORD(v28) == 0;
      }

      else
      {
        v30 = 1;
      }

      if (v30)
      {
        v28 = 0;
      }

      v65 = v28;
      if (((4 * v29) & (4 * v29 - 1)) != 0)
      {
        v31 = 4;
      }

      else
      {
        v31 = 4 * v29;
      }

      sub_2717D48BC(&v62, &v65, &v72, 1, &v59, 1, v31);
      v67 = &unk_288112198;
      v68[0] = *v61;
      *(v68 + 12) = *&v61[12];
      v69 = v62;
      v70 = v63;
      v71 = v64;
      operator new();
    case 5:
      v39 = *a2;
      LOBYTE(v65) = 0;
      v66 = &unk_28810E9F8;
      *v61 = &unk_288110388;
      sub_2717BBAD0(v39, &v65, &v67);
      operator new();
    case 6:
      v25 = *a2;
      LOWORD(v65) = 0;
      v66 = &unk_28810E9B8;
      *v61 = &unk_2881102D8;
      sub_2717BC018(v25, &v65, &v67);
      operator new();
    case 7:
      v20 = *a2;
      v66 = &unk_28810E8F8;
      *v61 = &unk_2881101E8;
      sub_2717BC340(v20, word_2718B7438, &v67);
      operator new();
    case 8:
      v41 = *a2;
      LODWORD(v65) = 0;
      v66 = &unk_28810E838;
      *v61 = &unk_2881100F8;
      sub_2717BC858(v41, &v65, &v67, d0_0);
      operator new();
    case 9:
      v38 = *a2;
      LOBYTE(v65) = 0;
      v66 = &unk_28810E7F8;
      *v61 = &unk_288110048;
      sub_2717BCBB8(v38, &v65, &v67);
      operator new();
    case 10:
      v51 = *a2;
      LOWORD(v65) = 0;
      v66 = &unk_28810F978;
      *v61 = &unk_288111EF8;
      sub_2717BD0F0(v51, &v65, &v67);
      operator new();
    case 11:
      v50 = *a2;
      v66 = &unk_28810F938;
      *v61 = &unk_288111E48;
      sub_2717BD418(v50, word_2718B7438, &v67);
      operator new();
    case 12:
      v13 = *a2;
      LODWORD(v65) = 0;
      v66 = &unk_28810F8F8;
      *v61 = &unk_288111D98;
      sub_2717BD924(v13, &v65, &v67, d0_0);
      operator new();
    case 13:
      v17 = *a2;
      LOBYTE(v65) = 0;
      v66 = &unk_28810F8B8;
      *v61 = &unk_288111CE8;
      sub_2717BDC7C(v17, &v65, &v67);
      operator new();
    case 14:
      v16 = *a2;
      LOWORD(v65) = 0;
      v66 = &unk_28810F878;
      *v61 = &unk_288111C38;
      sub_2717BE1C4(v16, &v65, &v67);
      operator new();
    case 15:
      v55 = *a2;
      v66 = &unk_28810F838;
      *v61 = &unk_288111B88;
      sub_2717BE4F4(v55, word_2718B7438, &v67);
      operator new();
    case 16:
      v40 = *a2;
      LODWORD(v65) = 0;
      v66 = &unk_28810F7F8;
      *v61 = &unk_288111AD8;
      sub_2717BEA14(v40, &v65, &v67, d0_0);
      operator new();
    case 17:
      v56 = *a2;
      LOBYTE(v65) = 0;
      v66 = &unk_28810F778;
      *v61 = &unk_288111A08;
      sub_2717BED70(v56, &v65, &v67);
      operator new();
    case 18:
      v19 = *a2;
      LOWORD(v65) = 0;
      v66 = &unk_28810F738;
      *v61 = &unk_288111958;
      sub_2717BF2A8(v19, &v65, &v67);
      operator new();
    case 19:
      v11 = *a2;
      v66 = &unk_28810F6F8;
      *v61 = &unk_2881118A8;
      sub_2717BF5D0(v11, word_2718B7438, &v67);
      operator new();
    case 20:
      v53 = *a2;
      LODWORD(v65) = 0;
      v66 = &unk_28810F5F8;
      *v61 = &unk_288111708;
      sub_2717BFADC(v53, &v65, &v67, d0_0);
      operator new();
    case 21:
      v58 = *a2;
      LOBYTE(v65) = 0;
      v66 = &unk_28810F538;
      *v61 = &unk_288111618;
      sub_2717BFE34(v58, &v65, &v67);
      operator new();
    case 22:
      v22 = *a2;
      LOWORD(v65) = 0;
      v66 = &unk_28810F478;
      *v61 = &unk_288111528;
      sub_2717C036C(v22, &v65, &v67);
      operator new();
    case 23:
      v57 = *a2;
      v66 = &unk_28810F438;
      *v61 = &unk_288111478;
      sub_2717C0694(v57, word_2718B7438, &v67);
      operator new();
    case 24:
      v15 = *a2;
      LODWORD(v65) = 0;
      v66 = &unk_28810F3F8;
      *v61 = &unk_2881113C8;
      sub_2717C0BA0(v15, &v65, &v67, d0_0);
      operator new();
    case 25:
      v12 = *a2;
      LOBYTE(v65) = 0;
      v66 = &unk_28810F338;
      *v61 = &unk_2881112D8;
      sub_2717C0EF8(v12, &v65, &v67);
      operator new();
    case 26:
      v23 = *a2;
      LOWORD(v65) = 0;
      v66 = &unk_28810F2F8;
      *v61 = &unk_288111228;
      sub_2717C1440(v23, &v65, &v67);
      operator new();
    case 27:
      v10 = *a2;
      v66 = &unk_28810F2B8;
      *v61 = &unk_288111178;
      sub_2717C1770(v10, word_2718B7438, &v67);
      operator new();
    case 28:
      v32 = *a2;
      LODWORD(v65) = 0;
      v66 = &unk_28810F278;
      *v61 = &unk_2881110C8;
      sub_2717C1C90(v32, &v65, &v67, d0_0);
      operator new();
    case 29:
      v14 = *a2;
      LOBYTE(v65) = 0;
      v66 = &unk_28810F1F8;
      *v61 = &unk_288110FF8;
      sub_2717C1FEC(v14, &v65, &v67);
      operator new();
    case 30:
      v35 = *a2;
      LOWORD(v65) = 0;
      v66 = &unk_28810F0F8;
      *v61 = &unk_288110E58;
      sub_2717C2534(v35, &v65, &v67);
      operator new();
    case 31:
      v24 = *a2;
      v66 = &unk_28810F038;
      *v61 = &unk_288110D68;
      sub_2717C2864(v24, word_2718B7438, &v67);
      operator new();
    case 32:
      v37 = *a2;
      LODWORD(v65) = 0;
      v66 = &unk_28810EF78;
      *v61 = &unk_288110C78;
      sub_2717C2D84(v37, &v65, &v67, d0_0);
      operator new();
    case 33:
      v52 = *a2;
      LOBYTE(v65) = 0;
      v66 = &unk_28810EEF8;
      *v61 = &unk_288110BA8;
      sub_2717C30E0(v52, &v65, &v67);
      operator new();
    case 34:
      v36 = *a2;
      LOWORD(v65) = 0;
      v66 = &unk_28810EEB8;
      *v61 = &unk_288110AF8;
      sub_2717C3628(v36, &v65, &v67);
      operator new();
    case 35:
      v34 = *a2;
      v66 = &unk_28810EE78;
      *v61 = &unk_288110A48;
      sub_2717C3958(v34, word_2718B7438, &v67);
      operator new();
    case 36:
      v33 = *a2;
      LODWORD(v65) = 0;
      v66 = &unk_28810EE38;
      *v61 = &unk_288110998;
      sub_2717C3E78(v33, &v65, &v67, d0_0);
      operator new();
    case 37:
      v49 = *a2;
      LOBYTE(v65) = 0;
      v66 = &unk_28810ED78;
      *v61 = &unk_2881108A8;
      sub_2717C41D4(v49, &v65, &v67);
      operator new();
    case 38:
      v54 = *a2;
      LOWORD(v65) = 0;
      v66 = &unk_28810ECB8;
      *v61 = &unk_2881107B8;
      sub_2717C471C(v54, &v65, &v67);
      operator new();
    case 39:
      v21 = *a2;
      v66 = &unk_28810EC78;
      *v61 = &unk_288110708;
      sub_2717C4A4C(v21, word_2718B7438, &v67);
      operator new();
    case 40:
      v18 = *a2;
      LODWORD(v65) = 0;
      v66 = &unk_28810EB78;
      *v61 = &unk_288110568;
      sub_2717C4F6C(v18, &v65, &v67, d0_0);
      operator new();
    default:
      sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/FormatAlgorithm.h", 523, "", 0, "Runtime format not in given Formats list", 0x28uLL, sub_271852CA8);
      abort();
  }
}

void sub_2717994A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_27112F828(va);
  sub_27112F828(v8 - 208);
  sub_27112F828(v7 + 8);
  _Unwind_Resume(a1);
}

void sub_2717994C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_27112F828(va);
  sub_27112F828(v8 - 208);
  sub_27112F828(v7 + 8);
  _Unwind_Resume(a1);
}

void sub_2717994EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_27112F828(va);
  sub_27112F828(v8 - 208);
  sub_27112F828(v7 + 8);
  _Unwind_Resume(a1);
}

void sub_271799510(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_27112F828(va);
  sub_27112F828(v8 - 208);
  sub_27112F828(v7 + 8);
  _Unwind_Resume(a1);
}

void sub_271799534(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_27112F828(va);
  sub_27112F828(v8 - 208);
  sub_27112F828(v7 + 8);
  _Unwind_Resume(a1);
}

void sub_271799558(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_27112F828(va);
  sub_27112F828(v8 - 208);
  sub_27112F828(v7 + 8);
  _Unwind_Resume(a1);
}

void sub_27179957C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_27112F828(va);
  sub_27112F828(v8 - 208);
  sub_27112F828(v7 + 8);
  _Unwind_Resume(a1);
}

void sub_2717995A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_27112F828(va);
  sub_27112F828(v8 - 208);
  sub_27112F828(v7 + 8);
  _Unwind_Resume(a1);
}

void sub_2717995C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_27112F828(va);
  sub_27112F828(v8 - 208);
  sub_27112F828(v7 + 8);
  _Unwind_Resume(a1);
}

void sub_2717995E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_27112F828(va);
  sub_27112F828(v8 - 208);
  sub_27112F828(v7 + 8);
  _Unwind_Resume(a1);
}

void sub_27179960C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_27112F828(va);
  sub_27112F828(v8 - 208);
  sub_27112F828(v7 + 8);
  _Unwind_Resume(a1);
}

void sub_271799630(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_27112F828(va);
  sub_27112F828(v8 - 208);
  sub_27112F828(v7 + 8);
  _Unwind_Resume(a1);
}

void sub_271799654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_27112F828(va);
  sub_27112F828(v8 - 208);
  sub_27112F828(v7 + 8);
  _Unwind_Resume(a1);
}

void sub_271799678(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_27112F828(va);
  sub_27112F828(v8 - 208);
  sub_27112F828(v7 + 8);
  _Unwind_Resume(a1);
}

void sub_27179969C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_27112F828(va);
  sub_27112F828(v8 - 208);
  sub_27112F828(v7 + 8);
  _Unwind_Resume(a1);
}

void sub_2717996C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_27112F828(va);
  sub_27112F828(v8 - 208);
  sub_27112F828(v7 + 8);
  _Unwind_Resume(a1);
}

void sub_2717996E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_27112F828(va);
  sub_27112F828(v8 - 208);
  sub_27112F828(v7 + 8);
  _Unwind_Resume(a1);
}

void sub_271799708(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_27112F828(va);
  sub_27112F828(v8 - 208);
  sub_27112F828(v7 + 8);
  _Unwind_Resume(a1);
}

void sub_27179972C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_27112F828(va);
  sub_27112F828(v8 - 208);
  sub_27112F828(v7 + 8);
  _Unwind_Resume(a1);
}

void sub_271799750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_27112F828(va);
  sub_27112F828(v8 - 208);
  sub_27112F828(v7 + 8);
  _Unwind_Resume(a1);
}

void sub_271799774(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_27112F828(va);
  sub_27112F828(v8 - 208);
  sub_27112F828(v7 + 8);
  _Unwind_Resume(a1);
}

void sub_271799798(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_27112F828(va);
  sub_27112F828(v8 - 208);
  sub_27112F828(v7 + 8);
  _Unwind_Resume(a1);
}

void sub_2717997BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_27112F828(va);
  sub_27112F828(v8 - 208);
  sub_27112F828(v7 + 8);
  _Unwind_Resume(a1);
}

void sub_2717997E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_27112F828(va);
  sub_27112F828(v8 - 208);
  sub_27112F828(v7 + 8);
  _Unwind_Resume(a1);
}

void sub_271799804(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_27112F828(va);
  sub_27112F828(v8 - 208);
  sub_27112F828(v7 + 8);
  _Unwind_Resume(a1);
}

void sub_271799828(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_27112F828(va);
  sub_27112F828(v8 - 208);
  sub_27112F828(v7 + 8);
  _Unwind_Resume(a1);
}

void sub_27179984C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_27112F828(va);
  sub_27112F828(v8 - 208);
  sub_27112F828(v7 + 8);
  _Unwind_Resume(a1);
}

void sub_271799870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_27112F828(va);
  sub_27112F828(v8 - 208);
  sub_27112F828(v7 + 8);
  _Unwind_Resume(a1);
}

void sub_271799894(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_27112F828(va);
  sub_27112F828(v8 - 208);
  sub_27112F828(v7 + 8);
  _Unwind_Resume(a1);
}

void sub_2717998B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_27112F828(va);
  sub_27112F828(v8 - 208);
  sub_27112F828(v7 + 8);
  _Unwind_Resume(a1);
}

void sub_2717998DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_27112F828(va);
  sub_27112F828(v8 - 208);
  sub_27112F828(v7 + 8);
  _Unwind_Resume(a1);
}

void sub_271799900(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_27112F828(va);
  sub_27112F828(v8 - 208);
  sub_27112F828(v7 + 8);
  _Unwind_Resume(a1);
}

void sub_271799924(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_27112F828(va);
  sub_27112F828(v8 - 208);
  sub_27112F828(v7 + 8);
  _Unwind_Resume(a1);
}

void sub_271799948(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_27112F828(va);
  sub_27112F828(v8 - 208);
  sub_27112F828(v7 + 8);
  _Unwind_Resume(a1);
}

void sub_27179996C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_27112F828(va);
  sub_27112F828(v8 - 208);
  sub_27112F828(v7 + 8);
  _Unwind_Resume(a1);
}

void sub_271799990(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_27112F828(va);
  sub_27112F828(v8 - 208);
  sub_27112F828(v7 + 8);
  _Unwind_Resume(a1);
}

void sub_2717999B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_27112F828(va);
  sub_27112F828(v8 - 208);
  sub_27112F828(v7 + 8);
  _Unwind_Resume(a1);
}

void sub_2717999D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_27112F828(va);
  sub_27112F828(v8 - 208);
  sub_27112F828(v7 + 8);
  _Unwind_Resume(a1);
}

void sub_2717999FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_27112F828(va);
  sub_27112F828(v8 - 208);
  sub_27112F828(v7 + 8);
  _Unwind_Resume(a1);
}

void sub_271799A20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_27112F828(va);
  sub_27112F828(v8 - 208);
  sub_27112F828(v7 + 8);
  _Unwind_Resume(a1);
}

void sub_271799A44(_Unwind_Exception *a1)
{
  sub_27112F828(v1 + 8);
  sub_27112F828(v2 - 208);
  sub_271308D7C((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_271799A68(_Unwind_Exception *a1)
{
  sub_27112F828(v1 + 8);
  sub_27112F828(v2 - 208);
  sub_271318A3C((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_271799A8C(_Unwind_Exception *a1)
{
  sub_27112F828(v1 + 8);
  sub_27112F828(v2 - 208);
  sub_271308D7C((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_271799AB0(_Unwind_Exception *a1)
{
  sub_27112F828(v1 + 8);
  sub_27112F828(v2 - 208);
  sub_27131196C((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_271799AD4(_Unwind_Exception *a1)
{
  sub_27112F828(v1 + 8);
  sub_27112F828(v2 - 208);
  sub_271308D7C((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_271799AF8(_Unwind_Exception *a1)
{
  sub_27112F828(v1 + 8);
  sub_27112F828(v2 - 208);
  sub_271308D7C((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_271799B1C(_Unwind_Exception *a1)
{
  sub_27112F828(v1 + 8);
  sub_27112F828(v2 - 208);
  sub_271308D7C((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_271799B40(_Unwind_Exception *a1)
{
  sub_27112F828(v1 + 8);
  sub_27112F828(v2 - 208);
  sub_271308D7C((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_271799B64(_Unwind_Exception *a1)
{
  sub_27112F828(v1 + 8);
  sub_27112F828(v2 - 208);
  sub_27130E360((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_271799B88(_Unwind_Exception *a1)
{
  sub_27112F828(v1 + 8);
  sub_27112F828(v2 - 208);
  sub_271308D7C((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_271799BAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(v3 + 8);
  sub_27112F828(v4 - 208);
  sub_2713050B8(va);
  _Unwind_Resume(a1);
}

void sub_271799BD0(_Unwind_Exception *a1)
{
  sub_27112F828(v1 + 8);
  sub_27112F828(v2 - 208);
  sub_271306E9C((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_271799BF4(_Unwind_Exception *a1)
{
  sub_27112F828(v1 + 8);
  sub_27112F828(v2 - 208);
  sub_271308D7C((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_271799C18(_Unwind_Exception *a1)
{
  sub_27112F828(v1 + 8);
  sub_27112F828(v2 - 208);
  sub_271308D7C((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_271799C3C(_Unwind_Exception *a1)
{
  sub_27112F828(v1 + 8);
  sub_27112F828(v2 - 208);
  sub_271308D7C((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_271799C60(_Unwind_Exception *a1)
{
  sub_27112F828(v1 + 8);
  sub_27112F828(v2 - 208);
  sub_271308D7C((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_271799C84(_Unwind_Exception *a1)
{
  sub_27112F828(v1 + 8);
  sub_27112F828(v2 - 208);
  sub_271308D7C((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_271799CA8(_Unwind_Exception *a1)
{
  sub_27112F828(v1 + 8);
  sub_27112F828(v2 - 208);
  sub_271308D7C((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_271799CCC(_Unwind_Exception *a1)
{
  sub_27112F828(v1 + 8);
  sub_27112F828(v2 - 208);
  sub_271308D7C((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_271799CF0(_Unwind_Exception *a1)
{
  sub_27112F828(v1 + 8);
  sub_27112F828(v2 - 208);
  sub_271323374((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_271799D14(_Unwind_Exception *a1)
{
  sub_27112F828(v1 + 8);
  sub_27112F828(v2 - 208);
  sub_271308D7C((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_271799D38(_Unwind_Exception *a1)
{
  sub_27112F828(v1 + 8);
  sub_27112F828(v2 - 208);
  sub_271308D7C((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_271799D5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(v3 + 8);
  sub_27112F828(v4 - 208);
  sub_2713050B8(va);
  _Unwind_Resume(a1);
}

void sub_271799D80(_Unwind_Exception *a1)
{
  sub_27112F828(v1 + 8);
  sub_27112F828(v2 - 208);
  sub_271308D7C((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_271799DA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(v3 + 8);
  sub_27112F828(v4 - 208);
  sub_2713050B8(va);
  _Unwind_Resume(a1);
}

void sub_271799DC8(_Unwind_Exception *a1)
{
  sub_27112F828(v1 + 8);
  sub_27112F828(v2 - 208);
  sub_27131FB0C((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_271799DEC(_Unwind_Exception *a1)
{
  sub_27112F828(v1 + 8);
  sub_27112F828(v2 - 208);
  sub_271308D7C((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_271799E10(_Unwind_Exception *a1)
{
  sub_27112F828(v1 + 8);
  sub_27112F828(v2 - 208);
  sub_271308D7C((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_271799E34(_Unwind_Exception *a1)
{
  sub_27112F828(v1 + 8);
  sub_27112F828(v2 - 208);
  sub_271326E38((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_271799E58(_Unwind_Exception *a1)
{
  sub_27112F828(v1 + 8);
  sub_27112F828(v2 - 208);
  sub_27130AAF8((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_271799E7C(_Unwind_Exception *a1)
{
  sub_27112F828(v1 + 8);
  sub_27112F828(v2 - 208);
  sub_271308D7C((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_271799EA0(_Unwind_Exception *a1)
{
  sub_27112F828(v1 + 8);
  sub_27112F828(v2 - 208);
  sub_271308D7C((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_271799EC4(_Unwind_Exception *a1)
{
  sub_27112F828(v1 + 8);
  sub_27112F828(v2 - 208);
  sub_271308D7C((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_271799EE8(_Unwind_Exception *a1)
{
  sub_27112F828(v1 + 8);
  sub_27112F828(v2 - 208);
  sub_271308D7C((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_271799F0C(_Unwind_Exception *a1)
{
  sub_27112F828(v1 + 8);
  sub_27112F828(v2 - 208);
  sub_271308D7C((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_271799F30(_Unwind_Exception *a1)
{
  sub_27112F828(v1 + 8);
  sub_27112F828(v2 - 208);
  sub_271308D7C((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_271799F54(_Unwind_Exception *a1)
{
  sub_27112F828(v1 + 8);
  sub_27112F828(v2 - 208);
  sub_271308D7C((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_271799F78(_Unwind_Exception *a1)
{
  sub_27112F828(v1 + 8);
  sub_27112F828(v2 - 208);
  sub_271308D7C((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_271799F9C(_Unwind_Exception *a1)
{
  sub_27112F828(v1 + 8);
  sub_27112F828(v2 - 208);
  sub_271314F78((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_271799FC0(_Unwind_Exception *a1)
{
  sub_27112F828(v1 + 8);
  sub_27112F828(v2 - 208);
  sub_27131C2A4((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_271799FE4(_Unwind_Exception *a1)
{
  sub_27112F828(v1 + 8);
  sub_27112F828(v2 - 208);
  sub_271308D7C((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_27179A008(_Unwind_Exception *a1)
{
  sub_27112F828(v1 + 8);
  sub_27112F828(v2 - 208);
  sub_271318A3C((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_27179A02C(_Unwind_Exception *a1)
{
  sub_27112F828(v1 + 8);
  sub_27112F828(v2 - 208);
  sub_271308D7C((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_27179A050(_Unwind_Exception *a1)
{
  sub_27112F828(v1 + 8);
  sub_27112F828(v2 - 208);
  sub_27131196C((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_27179A074(_Unwind_Exception *a1)
{
  sub_27112F828(v1 + 8);
  sub_27112F828(v2 - 208);
  sub_271308D7C((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_27179A098(_Unwind_Exception *a1)
{
  sub_27112F828(v1 + 8);
  sub_27112F828(v2 - 208);
  sub_271308D7C((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_27179A0BC(_Unwind_Exception *a1)
{
  sub_27112F828(v1 + 8);
  sub_27112F828(v2 - 208);
  sub_271308D7C((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_27179A0E0(_Unwind_Exception *a1)
{
  sub_27112F828(v1 + 8);
  sub_27112F828(v2 - 208);
  sub_271308D7C((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_27179A104(_Unwind_Exception *a1)
{
  sub_27112F828(v1 + 8);
  sub_27112F828(v2 - 208);
  sub_27130E360((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_27179A128(_Unwind_Exception *a1)
{
  sub_27112F828(v1 + 8);
  sub_27112F828(v2 - 208);
  sub_271308D7C((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_27179A14C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(v3 + 8);
  sub_27112F828(v4 - 208);
  sub_2713050B8(va);
  _Unwind_Resume(a1);
}

void sub_27179A170(_Unwind_Exception *a1)
{
  sub_27112F828(v1 + 8);
  sub_27112F828(v2 - 208);
  sub_271306E9C((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_27179A194(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(v3 + 8);
  sub_27112F828(v4 - 208);
  sub_2713050B8(va);
  _Unwind_Resume(a1);
}

void sub_27179A1B8(_Unwind_Exception *a1)
{
  sub_27112F828(v1 + 8);
  sub_27112F828(v2 - 208);
  sub_271308D7C((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_27179A1DC(_Unwind_Exception *a1)
{
  sub_27112F828(v1 + 8);
  sub_27112F828(v2 - 208);
  sub_271308D7C((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_27179A200(_Unwind_Exception *a1)
{
  sub_27112F828(v1 + 8);
  sub_27112F828(v2 - 208);
  sub_271308D7C((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_27179A224(_Unwind_Exception *a1)
{
  sub_27112F828(v1 + 8);
  sub_27112F828(v2 - 208);
  sub_271308D7C((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_27179A248(_Unwind_Exception *a1)
{
  sub_27112F828(v1 + 8);
  sub_27112F828(v2 - 208);
  sub_271308D7C((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_27179A26C(_Unwind_Exception *a1)
{
  sub_27112F828(v1 + 8);
  sub_27112F828(v2 - 208);
  sub_271308D7C((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_27179A290(_Unwind_Exception *a1)
{
  sub_27112F828(v1 + 8);
  sub_27112F828(v2 - 208);
  sub_271308D7C((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_27179A2B4(_Unwind_Exception *a1)
{
  sub_27112F828(v1 + 8);
  sub_27112F828(v2 - 208);
  sub_271323374((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_27179A2D8(_Unwind_Exception *a1)
{
  sub_27112F828(v1 + 8);
  sub_27112F828(v2 - 208);
  sub_271308D7C((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_27179A2FC(_Unwind_Exception *a1)
{
  sub_27112F828(v1 + 8);
  sub_27112F828(v2 - 208);
  sub_271308D7C((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_27179A320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(v3 + 8);
  sub_27112F828(v4 - 208);
  sub_2713050B8(va);
  _Unwind_Resume(a1);
}

void sub_27179A344(_Unwind_Exception *a1)
{
  sub_27112F828(v1 + 8);
  sub_27112F828(v2 - 208);
  sub_271308D7C((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_27179A368(_Unwind_Exception *a1)
{
  sub_27112F828(v1 + 8);
  sub_27112F828(v2 - 208);
  sub_27131FB0C((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_27179A38C(_Unwind_Exception *a1)
{
  sub_27112F828(v1 + 8);
  sub_27112F828(v2 - 208);
  sub_271308D7C((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_27179A3B0(_Unwind_Exception *a1)
{
  sub_27112F828(v1 + 8);
  sub_27112F828(v2 - 208);
  sub_271308D7C((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_27179A3D4(_Unwind_Exception *a1)
{
  sub_27112F828(v1 + 8);
  sub_27112F828(v2 - 208);
  sub_271326E38((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_27179A3F8(_Unwind_Exception *a1)
{
  sub_27112F828(v1 + 8);
  sub_27112F828(v2 - 208);
  sub_27130AAF8((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_27179A41C(_Unwind_Exception *a1)
{
  sub_27112F828(v1 + 8);
  sub_27112F828(v2 - 208);
  sub_271308D7C((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_27179A440(_Unwind_Exception *a1)
{
  sub_27112F828(v1 + 8);
  sub_27112F828(v2 - 208);
  sub_271308D7C((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_27179A464(_Unwind_Exception *a1)
{
  sub_27112F828(v1 + 8);
  sub_27112F828(v2 - 208);
  sub_271308D7C((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_27179A488(_Unwind_Exception *a1)
{
  sub_27112F828(v1 + 8);
  sub_27112F828(v2 - 208);
  sub_271308D7C((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_27179A4AC(_Unwind_Exception *a1)
{
  sub_27112F828(v1 + 8);
  sub_27112F828(v2 - 208);
  sub_271308D7C((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_27179A4D0(_Unwind_Exception *a1)
{
  sub_27112F828(v1 + 8);
  sub_27112F828(v2 - 208);
  sub_271308D7C((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_27179A4F4(_Unwind_Exception *a1)
{
  sub_27112F828(v1 + 8);
  sub_27112F828(v2 - 208);
  sub_271308D7C((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_27179A518(_Unwind_Exception *a1)
{
  sub_27112F828(v1 + 8);
  sub_27112F828(v2 - 208);
  sub_271308D7C((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_27179A53C(_Unwind_Exception *a1)
{
  sub_27112F828(v1 + 8);
  sub_27112F828(v2 - 208);
  sub_271314F78((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_27179A560(_Unwind_Exception *a1)
{
  sub_27112F828(v1 + 8);
  sub_27112F828(v2 - 208);
  sub_27131C2A4((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_27179A64C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2713050B8(va);
  _Unwind_Resume(a1);
}

void sub_27179A73C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2713050B8(va);
  _Unwind_Resume(a1);
}

void sub_27179A750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2713050B8(va);
  _Unwind_Resume(a1);
}

void sub_27179A8A4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 208);
  if (v3)
  {
    free(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_27179AB1C()
{
  if (!*(v0 + 208))
  {
    JUMPOUT(0x27179AB14);
  }

  JUMPOUT(0x27179AB10);
}

void sub_27179AB54(int a1, uint64_t *a2)
{
  switch(a1)
  {
    case 1:
      sub_2715E946C(*a2);
    case 2:
      sub_2715F17FC(*a2);
    case 3:
      sub_2717179D4(*a2);
    case 4:
      sub_271717C58(*a2);
    case 5:
      sub_27178DF44(&v3, *a2);
    case 6:
      sub_27178E1EC(&v3, *a2);
    case 7:
      sub_27178E4FC(&v3, *a2);
    case 8:
      sub_27178E79C(&v3, *a2);
    case 9:
      sub_27178EAAC(&v3, *a2);
    case 10:
      sub_27178ED54(&v3, *a2);
    case 11:
      sub_27178F064(&v3, *a2);
    case 12:
      sub_27178F304(&v3, *a2);
    case 13:
      sub_27178F614(&v3, *a2);
    case 14:
      sub_27178F8BC(&v3, *a2);
    case 15:
      sub_27178FBCC(&v3, *a2);
    case 16:
      sub_27178FE6C(&v3, *a2);
    case 17:
      sub_27179017C(&v3, *a2);
    case 18:
      sub_271790424(&v3, *a2);
    case 19:
      sub_271790734(&v3, *a2);
    case 20:
      sub_2717909D4(&v3, *a2);
    case 21:
      sub_2715E96F4(*a2);
    case 22:
      sub_271717EE0(*a2);
    case 23:
      sub_2717181F4(*a2);
    case 24:
      sub_271718498(*a2);
    case 25:
      sub_2717187AC(*a2);
    case 26:
      sub_271790CE4(&v3, *a2);
    case 27:
      sub_271790FF4(&v3, *a2);
    case 28:
      sub_271791294(&v3, *a2);
    case 29:
      sub_271718A58(*a2);
    case 30:
      sub_271718D04(*a2);
    case 31:
      sub_271719018(*a2);
    case 32:
      sub_2717192BC(*a2);
    case 33:
      sub_2717195D0(*a2);
    case 34:
      sub_2717915A4(&v3, *a2);
    case 35:
      sub_2717918B4(&v3, *a2);
    case 36:
      sub_271791B54(&v3, *a2);
    case 37:
      sub_27171987C(*a2);
    case 38:
      sub_271719B28(*a2);
    case 39:
      sub_271719E3C(*a2);
    case 40:
      sub_27171A0E0(*a2);
    default:
      sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/FormatAlgorithm.h", 523, "", 0, "Runtime format not in given Formats list", 0x28uLL, sub_271852CA8);
      abort();
  }
}

void sub_27179CAF0(_Unwind_Exception *a1)
{
  sub_27112F828(v2 - 112);
  sub_27112F828(v2 - 96);
  sub_27112F828(v1 + 8);
  _Unwind_Resume(a1);
}

void sub_27179CB14(_Unwind_Exception *a1)
{
  sub_27112F828(v2 - 112);
  sub_27112F828(v2 - 96);
  sub_27112F828(v1 + 8);
  _Unwind_Resume(a1);
}

void sub_27179CB38(_Unwind_Exception *a1)
{
  sub_27112F828(v2 - 112);
  sub_27112F828(v2 - 96);
  sub_27112F828(v1 + 8);
  _Unwind_Resume(a1);
}

void sub_27179CB5C(_Unwind_Exception *a1)
{
  sub_27112F828(v2 - 112);
  sub_27112F828(v2 - 96);
  sub_27112F828(v1 + 8);
  _Unwind_Resume(a1);
}

void sub_27179CB80(_Unwind_Exception *a1)
{
  sub_27112F828(v2 - 112);
  sub_27112F828(v2 - 96);
  sub_27112F828(v1 + 8);
  _Unwind_Resume(a1);
}

void sub_27179CBA4(_Unwind_Exception *a1)
{
  sub_27112F828(v2 - 112);
  sub_27112F828(v2 - 96);
  sub_27112F828(v1 + 8);
  _Unwind_Resume(a1);
}

void sub_27179CBC8(_Unwind_Exception *a1)
{
  sub_27112F828(v2 - 112);
  sub_27112F828(v2 - 96);
  sub_27112F828(v1 + 8);
  _Unwind_Resume(a1);
}

void sub_27179CBEC(_Unwind_Exception *a1)
{
  sub_27112F828(v2 - 112);
  sub_27112F828(v2 - 96);
  sub_27112F828(v1 + 8);
  _Unwind_Resume(a1);
}

void sub_27179CC10(_Unwind_Exception *a1)
{
  sub_27112F828(v2 - 112);
  sub_27112F828(v2 - 96);
  sub_27112F828(v1 + 8);
  _Unwind_Resume(a1);
}

void sub_27179CC34(_Unwind_Exception *a1)
{
  sub_27112F828(v2 - 112);
  sub_27112F828(v2 - 96);
  sub_27112F828(v1 + 8);
  _Unwind_Resume(a1);
}

void sub_27179CC58(_Unwind_Exception *a1)
{
  sub_27112F828(v2 - 112);
  sub_27112F828(v2 - 96);
  sub_27112F828(v1 + 8);
  _Unwind_Resume(a1);
}

void sub_27179CC7C(_Unwind_Exception *a1)
{
  sub_27112F828(v2 - 112);
  sub_27112F828(v2 - 96);
  sub_27112F828(v1 + 8);
  _Unwind_Resume(a1);
}

void sub_27179CCA0(_Unwind_Exception *a1)
{
  sub_27112F828(v2 - 112);
  sub_27112F828(v2 - 96);
  sub_27112F828(v1 + 8);
  _Unwind_Resume(a1);
}

void sub_27179CCC4(_Unwind_Exception *a1)
{
  sub_27112F828(v2 - 112);
  sub_27112F828(v2 - 96);
  sub_27112F828(v1 + 8);
  _Unwind_Resume(a1);
}

void sub_27179CCE8(_Unwind_Exception *a1)
{
  sub_27112F828(v2 - 112);
  sub_27112F828(v2 - 96);
  sub_27112F828(v1 + 8);
  _Unwind_Resume(a1);
}

void sub_27179CD0C(_Unwind_Exception *a1)
{
  sub_27112F828(v2 - 112);
  sub_27112F828(v2 - 96);
  sub_27112F828(v1 + 8);
  _Unwind_Resume(a1);
}

void sub_27179CD30(_Unwind_Exception *a1)
{
  sub_27112F828(v2 - 112);
  sub_27112F828(v2 - 96);
  sub_27112F828(v1 + 8);
  _Unwind_Resume(a1);
}

void sub_27179CD54(_Unwind_Exception *a1)
{
  sub_27112F828(v2 - 112);
  sub_27112F828(v2 - 96);
  sub_27112F828(v1 + 8);
  _Unwind_Resume(a1);
}

void sub_27179CD78(_Unwind_Exception *a1)
{
  sub_27112F828(v2 - 112);
  sub_27112F828(v2 - 96);
  sub_27112F828(v1 + 8);
  _Unwind_Resume(a1);
}

void sub_27179CD9C(_Unwind_Exception *a1)
{
  sub_27112F828(v2 - 112);
  sub_27112F828(v2 - 96);
  sub_27112F828(v1 + 8);
  _Unwind_Resume(a1);
}

void sub_27179CDC0(_Unwind_Exception *a1)
{
  sub_27112F828(v2 - 112);
  sub_27112F828(v2 - 96);
  sub_27112F828(v1 + 8);
  _Unwind_Resume(a1);
}

void sub_27179CDE4(_Unwind_Exception *a1)
{
  sub_27112F828(v2 - 112);
  sub_27112F828(v2 - 96);
  sub_27112F828(v1 + 8);
  _Unwind_Resume(a1);
}

void sub_27179CE08(_Unwind_Exception *a1)
{
  sub_27112F828(v2 - 112);
  sub_27112F828(v2 - 96);
  sub_27112F828(v1 + 8);
  _Unwind_Resume(a1);
}

void sub_27179CE2C(_Unwind_Exception *a1)
{
  sub_27112F828(v2 - 112);
  sub_27112F828(v2 - 96);
  sub_27112F828(v1 + 8);
  _Unwind_Resume(a1);
}

void sub_27179CE50(_Unwind_Exception *a1)
{
  sub_27112F828(v2 - 112);
  sub_27112F828(v2 - 96);
  sub_27112F828(v1 + 8);
  _Unwind_Resume(a1);
}

void sub_27179CE74(_Unwind_Exception *a1)
{
  sub_27112F828(v2 - 112);
  sub_27112F828(v2 - 96);
  sub_27112F828(v1 + 8);
  _Unwind_Resume(a1);
}

void sub_27179CE98(_Unwind_Exception *a1)
{
  sub_27112F828(v2 - 112);
  sub_27112F828(v2 - 96);
  sub_27112F828(v1 + 8);
  _Unwind_Resume(a1);
}

void sub_27179CEBC(_Unwind_Exception *a1)
{
  sub_27112F828(v2 - 112);
  sub_27112F828(v2 - 96);
  sub_27112F828(v1 + 8);
  _Unwind_Resume(a1);
}

void sub_27179CEE0(_Unwind_Exception *a1)
{
  sub_27112F828(v2 - 112);
  sub_27112F828(v2 - 96);
  sub_27112F828(v1 + 8);
  _Unwind_Resume(a1);
}

void sub_27179CF04(_Unwind_Exception *a1)
{
  sub_27112F828(v2 - 112);
  sub_27112F828(v2 - 96);
  sub_27112F828(v1 + 8);
  _Unwind_Resume(a1);
}

void sub_27179CF28(_Unwind_Exception *a1)
{
  sub_27112F828(v2 - 112);
  sub_27112F828(v2 - 96);
  sub_27112F828(v1 + 8);
  _Unwind_Resume(a1);
}

void sub_27179CF4C(_Unwind_Exception *a1)
{
  sub_27112F828(v2 - 112);
  sub_27112F828(v2 - 96);
  sub_27112F828(v1 + 8);
  _Unwind_Resume(a1);
}

void sub_27179CF70(_Unwind_Exception *a1)
{
  sub_27112F828(v2 - 112);
  sub_27112F828(v2 - 96);
  sub_27112F828(v1 + 8);
  _Unwind_Resume(a1);
}

void sub_27179CF94(_Unwind_Exception *a1)
{
  sub_27112F828(v2 - 112);
  sub_27112F828(v2 - 96);
  sub_27112F828(v1 + 8);
  _Unwind_Resume(a1);
}

void sub_27179CFB8(_Unwind_Exception *a1)
{
  sub_27112F828(v2 - 112);
  sub_27112F828(v2 - 96);
  sub_27112F828(v1 + 8);
  _Unwind_Resume(a1);
}

void sub_27179CFDC(_Unwind_Exception *a1)
{
  sub_27112F828(v2 - 112);
  sub_27112F828(v2 - 96);
  sub_27112F828(v1 + 8);
  _Unwind_Resume(a1);
}

void sub_27179D000(_Unwind_Exception *a1)
{
  sub_27112F828(v2 - 112);
  sub_27112F828(v2 - 96);
  sub_27112F828(v1 + 8);
  _Unwind_Resume(a1);
}

void sub_27179D024(_Unwind_Exception *a1)
{
  sub_27112F828(v2 - 112);
  sub_27112F828(v2 - 96);
  sub_27112F828(v1 + 8);
  _Unwind_Resume(a1);
}

void sub_27179D048(_Unwind_Exception *a1)
{
  sub_27112F828(v2 - 112);
  sub_27112F828(v2 - 96);
  sub_27112F828(v1 + 8);
  _Unwind_Resume(a1);
}

void sub_27179D06C(_Unwind_Exception *a1)
{
  sub_27112F828(v2 - 112);
  sub_27112F828(v2 - 96);
  sub_27112F828(v1 + 8);
  _Unwind_Resume(a1);
}

void sub_27179D090(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  if (v2)
  {
    if (!atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v2->__on_zero_shared)(v2);
      std::__shared_weak_count::__release_weak(v2);
    }
  }
}

uint64_t sub_27179D18C(uint64_t result)
{
  if (*(result + 48))
  {
    v1 = result;
    free(*(result + 48));
    result = v1;
  }

  *(result + 48) = 0;
  return result;
}

void sub_27179D1C8(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v2 = a1;
    free(*(a1 + 48));
    a1 = v2;
    v1 = vars8;
  }

  *(a1 + 48) = 0;

  JUMPOUT(0x2743BF050);
}

void sub_27179D2CC(uint64_t a1, uint64_t *lpsrc)
{
  v4 = *lpsrc;
  v5 = __dynamic_cast(lpsrc, &unk_288123908, &unk_2881237F0, 0);
  if (!v5)
  {
    (*(v4 + 72))(v19, lpsrc, 1);
    v10 = *(v19[0] + 2);
    *v20 = *v19[0];
    *&v20[16] = v10;
    v19[0] = 0;
    MEMORY[0x2743BF050]();
    v11 = *(a1 + 48);
    if (*(a1 + 12))
    {
      v12 = *(a1 + 8) == 0;
    }

    else
    {
      v12 = 1;
    }

    v13 = *(a1 + 16);
    if (v12)
    {
      v14 = 0;
    }

    else
    {
      v14 = *(a1 + 8);
    }

    if (HIDWORD(v14) * HIDWORD(v13) != -1)
    {
      goto LABEL_28;
    }

    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v15 = qword_28087C408, v16 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_27:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
LABEL_28:
        v19[0] = v11;
        v19[1] = v14;
        v19[2] = v13;
        sub_271253768(v20, v19);
        return;
      }
    }

    else
    {
      v15 = qword_28087C408;
      v16 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_30;
      }
    }

    do
    {
      v18 = *v15;
      v17 = *(v15 + 8);
      v15 += 16;
      v18(v17, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v15 != v16);
    if (byte_28087C430)
    {
      goto LABEL_27;
    }

LABEL_30:
    abort();
  }

  if (*(a1 + 48) && *(v5 + 2) == *(a1 + 8) && *(v5 + 3) == *(a1 + 12) && *(v5 + 4) == *(a1 + 16) && *(v5 + 5) == *(a1 + 20))
  {
    v6 = (v5 + 8);

    sub_27129E520(v6, a1 + 8);
  }

  else
  {
    v7 = *(v5 + 8);
    *&v20[12] = *(v5 + 20);
    *v20 = v7;
    sub_271253458(v21, (v5 + 40));
    *(a1 + 8) = *v20;
    *(a1 + 20) = *&v20[12];
    *(a1 + 64) = v22;
    *(a1 + 40) = v21[0];
    v8 = *(a1 + 48);
    if (v8)
    {
      free(v8);
    }

    v9 = v21[2];
    *(a1 + 48) = v21[1];
    *(a1 + 56) = v9;
  }
}

void sub_27179D5A8(uint64_t a1, int a2, double d0_0)
{
  if (a2 == 1)
  {
LABEL_10:
    if (*(a1 + 12))
    {
      v9 = *(a1 + 8) == 0;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      HIDWORD(v10) = 0;
    }

    else
    {
      v10 = *(a1 + 8);
    }

    if (HIDWORD(v10) * HIDWORD(*(a1 + 16)) != -1)
    {
LABEL_25:
      operator new();
    }

    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8, d0_0);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v11 = qword_28087C408, v12 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_24:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_25;
      }
    }

    else
    {
      v11 = qword_28087C408;
      v12 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_26;
      }
    }

    do
    {
      v14 = *v11;
      v13 = *(v11 + 8);
      v11 += 16;
      v14(v13, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v11 != v12);
    if (byte_28087C430)
    {
      goto LABEL_24;
    }

LABEL_26:
    abort();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/src/ImageStorage.cpp", 78, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v5 = qword_28087C408, v6 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      d0_0 = qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      goto LABEL_10;
    }
  }

  else
  {
    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_26;
    }
  }

  do
  {
    v8 = *v5;
    v7 = *(v5 + 8);
    v5 += 16;
    v8(v7, "F == format", 11, "", 0);
  }

  while (v5 != v6);
  if ((byte_28087C430 & 1) == 0)
  {
    goto LABEL_26;
  }

  goto LABEL_9;
}

void sub_27179D810(uint64_t a1, int a2, double d0_0)
{
  if (a2 == 1)
  {
LABEL_10:
    if (*(a1 + 12))
    {
      v9 = *(a1 + 8) == 0;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      HIDWORD(v10) = 0;
    }

    else
    {
      v10 = *(a1 + 8);
    }

    if (HIDWORD(v10) * HIDWORD(*(a1 + 16)) != -1)
    {
LABEL_25:
      operator new();
    }

    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8, d0_0);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v11 = qword_28087C408, v12 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_24:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_25;
      }
    }

    else
    {
      v11 = qword_28087C408;
      v12 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_26;
      }
    }

    do
    {
      v14 = *v11;
      v13 = *(v11 + 8);
      v11 += 16;
      v14(v13, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v11 != v12);
    if (byte_28087C430)
    {
      goto LABEL_24;
    }

LABEL_26:
    abort();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/src/ImageStorage.cpp", 84, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v5 = qword_28087C408, v6 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      d0_0 = qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      goto LABEL_10;
    }
  }

  else
  {
    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_26;
    }
  }

  do
  {
    v8 = *v5;
    v7 = *(v5 + 8);
    v5 += 16;
    v8(v7, "F == format", 11, "", 0);
  }

  while (v5 != v6);
  if ((byte_28087C430 & 1) == 0)
  {
    goto LABEL_26;
  }

  goto LABEL_9;
}

uint64_t sub_27179DA78(uint64_t result)
{
  if (*(result + 48))
  {
    v1 = result;
    free(*(result + 48));
    result = v1;
  }

  *(result + 48) = 0;
  return result;
}

void sub_27179DAB4(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v2 = a1;
    free(*(a1 + 48));
    a1 = v2;
    v1 = vars8;
  }

  *(a1 + 48) = 0;

  JUMPOUT(0x2743BF050);
}

void sub_27179DBB8(uint64_t a1, uint64_t *lpsrc)
{
  v4 = *lpsrc;
  v5 = __dynamic_cast(lpsrc, &unk_288123908, &unk_2881236E8, 0);
  if (!v5)
  {
    (*(v4 + 72))(v19, lpsrc, 2);
    v10 = *(v19[0] + 2);
    *v20 = *v19[0];
    *&v20[16] = v10;
    v19[0] = 0;
    MEMORY[0x2743BF050]();
    v11 = *(a1 + 48);
    if (*(a1 + 12))
    {
      v12 = *(a1 + 8) == 0;
    }

    else
    {
      v12 = 1;
    }

    v13 = *(a1 + 16);
    if (v12)
    {
      v14 = 0;
    }

    else
    {
      v14 = *(a1 + 8);
    }

    if (HIDWORD(v14) * HIDWORD(v13) != -1)
    {
      goto LABEL_28;
    }

    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v15 = qword_28087C408, v16 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_27:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
LABEL_28:
        v19[0] = v11;
        v19[1] = v14;
        v19[2] = v13;
        sub_271254000(v20, v19);
        return;
      }
    }

    else
    {
      v15 = qword_28087C408;
      v16 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_30;
      }
    }

    do
    {
      v18 = *v15;
      v17 = *(v15 + 8);
      v15 += 16;
      v18(v17, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v15 != v16);
    if (byte_28087C430)
    {
      goto LABEL_27;
    }

LABEL_30:
    abort();
  }

  if (*(a1 + 48) && *(v5 + 2) == *(a1 + 8) && *(v5 + 3) == *(a1 + 12) && *(v5 + 4) == *(a1 + 16) && *(v5 + 5) == *(a1 + 20))
  {
    v6 = (v5 + 8);

    sub_27129E8F4(v6, a1 + 8);
  }

  else
  {
    v7 = *(v5 + 8);
    *&v20[12] = *(v5 + 20);
    *v20 = v7;
    sub_271253CD8(v21, (v5 + 40));
    *(a1 + 8) = *v20;
    *(a1 + 20) = *&v20[12];
    *(a1 + 64) = v22;
    *(a1 + 40) = v21[0];
    v8 = *(a1 + 48);
    if (v8)
    {
      free(v8);
    }

    v9 = v21[2];
    *(a1 + 48) = v21[1];
    *(a1 + 56) = v9;
  }
}

void sub_27179DE94(uint64_t a1, int a2, double d0_0)
{
  if (a2 == 2)
  {
LABEL_10:
    if (*(a1 + 12))
    {
      v9 = *(a1 + 8) == 0;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      HIDWORD(v10) = 0;
    }

    else
    {
      v10 = *(a1 + 8);
    }

    if (HIDWORD(v10) * HIDWORD(*(a1 + 16)) != -1)
    {
LABEL_25:
      operator new();
    }

    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8, d0_0);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v11 = qword_28087C408, v12 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_24:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_25;
      }
    }

    else
    {
      v11 = qword_28087C408;
      v12 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_26;
      }
    }

    do
    {
      v14 = *v11;
      v13 = *(v11 + 8);
      v11 += 16;
      v14(v13, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v11 != v12);
    if (byte_28087C430)
    {
      goto LABEL_24;
    }

LABEL_26:
    abort();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/src/ImageStorage.cpp", 78, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v5 = qword_28087C408, v6 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      d0_0 = qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      goto LABEL_10;
    }
  }

  else
  {
    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_26;
    }
  }

  do
  {
    v8 = *v5;
    v7 = *(v5 + 8);
    v5 += 16;
    v8(v7, "F == format", 11, "", 0);
  }

  while (v5 != v6);
  if ((byte_28087C430 & 1) == 0)
  {
    goto LABEL_26;
  }

  goto LABEL_9;
}

void sub_27179E0FC(uint64_t a1, int a2, double d0_0)
{
  if (a2 == 2)
  {
LABEL_10:
    if (*(a1 + 12))
    {
      v9 = *(a1 + 8) == 0;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      HIDWORD(v10) = 0;
    }

    else
    {
      v10 = *(a1 + 8);
    }

    if (HIDWORD(v10) * HIDWORD(*(a1 + 16)) != -1)
    {
LABEL_25:
      operator new();
    }

    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8, d0_0);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v11 = qword_28087C408, v12 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_24:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_25;
      }
    }

    else
    {
      v11 = qword_28087C408;
      v12 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_26;
      }
    }

    do
    {
      v14 = *v11;
      v13 = *(v11 + 8);
      v11 += 16;
      v14(v13, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v11 != v12);
    if (byte_28087C430)
    {
      goto LABEL_24;
    }

LABEL_26:
    abort();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/src/ImageStorage.cpp", 84, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v5 = qword_28087C408, v6 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      d0_0 = qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      goto LABEL_10;
    }
  }

  else
  {
    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_26;
    }
  }

  do
  {
    v8 = *v5;
    v7 = *(v5 + 8);
    v5 += 16;
    v8(v7, "F == format", 11, "", 0);
  }

  while (v5 != v6);
  if ((byte_28087C430 & 1) == 0)
  {
    goto LABEL_26;
  }

  goto LABEL_9;
}

uint64_t sub_27179E364(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (!v2)
  {
    goto LABEL_18;
  }

  if (*(a1 + 68))
  {
    v3 = *(a1 + 64) == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(a1 + 68);
  }

  if (v4 * (*(a1 + 72) >> 33) != -1)
  {
    goto LABEL_17;
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1)
    {
      goto LABEL_16;
    }

    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_19;
    }
  }

  do
  {
    (*v5)(*(v5 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    v5 += 16;
  }

  while (v5 != v6);
  if ((byte_28087C430 & 1) == 0)
  {
LABEL_19:
    abort();
  }

LABEL_16:
  qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
  v2 = *(a1 + 48);
  if (v2)
  {
LABEL_17:
    free(v2);
  }

LABEL_18:
  *(a1 + 48) = 0;
  return a1;
}

void sub_27179E4C8(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (!v2)
  {
    goto LABEL_18;
  }

  if (*(a1 + 68))
  {
    v3 = *(a1 + 64) == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(a1 + 68);
  }

  if (v4 * (*(a1 + 72) >> 33) != -1)
  {
LABEL_17:
    free(v2);
LABEL_18:
    *(a1 + 48) = 0;

    JUMPOUT(0x2743BF050);
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1)
    {
      goto LABEL_16;
    }

    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_21;
    }
  }

  do
  {
    (*v5)(*(v5 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    v5 += 16;
  }

  while (v5 != v6);
  if (byte_28087C430)
  {
LABEL_16:
    qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    v2 = *(a1 + 48);
    if (!v2)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_21:
  abort();
}

__int16 sub_27179E6F8@<H0>(uint64_t a1@<X0>, uint64_t *lpsrc@<X1>)
{
  v4 = *lpsrc;
  v5 = __dynamic_cast(lpsrc, &unk_288123908, &unk_2881235E0, 0);
  if (!v5)
  {
    (*(v4 + 72))(&v86, lpsrc, 3);
    v7 = *v86;
    v8 = *(v86 + 8);
    v9 = *(v86 + 12);
    v11 = *(v86 + 16);
    v10 = *(v86 + 20);
    v86 = 0;
    MEMORY[0x2743BF050]();
    v12 = *(a1 + 48);
    if (*(a1 + 12))
    {
      v13 = *(a1 + 8) == 0;
    }

    else
    {
      v13 = 1;
    }

    v14 = *(a1 + 16);
    if (v13)
    {
      v15 = 0;
    }

    else
    {
      v15 = *(a1 + 12);
    }

    v16 = HIDWORD(v14);
    if (v15 * HIDWORD(v14) != -1)
    {
      v17 = v14;
      if (v11 != 1 || v14 != 1)
      {
        goto LABEL_16;
      }

      goto LABEL_39;
    }

    v85 = v10;
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1)
      {
        goto LABEL_34;
      }

      v28 = qword_28087C408;
      v29 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v28 = qword_28087C408;
      v29 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_105;
      }
    }

    do
    {
      v31 = *v28;
      v30 = *(v28 + 8);
      v28 += 16;
      v31(v30, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v28 != v29);
    if (byte_28087C430)
    {
LABEL_34:
      *&v6 = qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v10 = v85;
      v17 = v14;
      if (v11 != 1 || v14 != 1)
      {
LABEL_16:
        if (v8)
        {
          v19 = v9 == 0;
        }

        else
        {
          v19 = 1;
        }

        if (v19)
        {
          return v6;
        }

        v20 = v8 - 1;
        v21 = 2 * v11;
        v22 = 2 * v17;
        v23 = v9 - 1;
        if (v9 != 1)
        {
          if (v8 != 1)
          {
            v24 = 0;
            do
            {
              v25 = v12;
              v26 = v7;
              v27 = v8 - 1;
              do
              {
                *v25 = *v26;
                v26 = (v26 + v21);
                v25 = (v25 + v22);
                --v27;
              }

              while (v27);
              *v25 = *v26;
              v7 += v10;
              v12 += v16;
              ++v24;
            }

            while (v24 != v23);
            goto LABEL_79;
          }

          do
          {
            *v12 = *v7;
            v7 += v10;
            v12 += v16;
            --v23;
          }

          while (v23);
        }

        if (v8 == 1)
        {
LABEL_80:
          LOWORD(v6) = *v7;
          *v12 = *v7;
          return v6;
        }

        do
        {
LABEL_79:
          *v12 = *v7;
          v7 = (v7 + v21);
          v12 = (v12 + v22);
          --v20;
        }

        while (v20);
        goto LABEL_80;
      }

LABEL_39:
      if (v10 != HIDWORD(v14) || v10 != v8)
      {
        if (!v8 || !v9)
        {
          return v6;
        }

        if (v9 == 1)
        {
LABEL_46:
          v34 = (v8 - 1) & 0x7FFFFFFFFFFFFFFFLL;
          if (v34 < 3 || (v12 - v7) < 0x20)
          {
            v42 = v12;
            v43 = v7;
            goto LABEL_103;
          }

          v35 = v34 + 1;
          if (v34 >= 0xF)
          {
            v36 = v35 & 0xFFFFFFFFFFFFFFF0;
            v72 = (v7 + 8);
            v73 = v12 + 8;
            v74 = v35 & 0xFFFFFFFFFFFFFFF0;
            do
            {
              v6 = *(v72 - 1);
              v75 = *v72;
              *(v73 - 1) = v6;
              *v73 = v75;
              v72 += 2;
              v73 += 2;
              v74 -= 16;
            }

            while (v74);
            if (v35 == v36)
            {
              return v6;
            }

            if ((v35 & 0xC) == 0)
            {
              v43 = &v7[v36];
              v42 = &v12[v36];
              goto LABEL_103;
            }
          }

          else
          {
            v36 = 0;
          }

          v76 = v35 & 0xFFFFFFFFFFFFFFFCLL;
          v42 = &v12[v76];
          v43 = &v7[v76];
          v77 = &v7[v36];
          v78 = &v12[v36];
          v79 = v36 - (v35 & 0xFFFFFFFFFFFFFFFCLL);
          do
          {
            v80 = *v77++;
            LOWORD(v6) = v80;
            *v78++ = v80;
            v79 += 4;
          }

          while (v79);
          if (v35 == (v35 & 0xFFFFFFFFFFFFFFFCLL))
          {
            return v6;
          }

          do
          {
LABEL_103:
            v83 = *v43++;
            LOWORD(v6) = v83;
            *v42++ = v83;
          }

          while (v43 != &v7[v8]);
          return v6;
        }

        v44 = 0;
        v45 = (v8 - 1) & 0x7FFFFFFFFFFFFFFFLL;
        v46 = v45 + 1;
        v47 = v12 >= &v7[v8 + v10 * (v9 - 2)] || v7 >= &v12[v8 + HIDWORD(v14) * (v9 - 2)];
        v48 = v46 & 0xFFFFFFFFFFFFFFF0;
        v49 = v46 & 0xFFFFFFFFFFFFFFFCLL;
        v50 = v46 & 0xFFFFFFFFFFFFFFFCLL;
        v51 = !v47;
        while (1)
        {
          v52 = v12;
          v53 = v7;
          if (!((v45 < 3) | v51 & 1))
          {
            if (v45 < 0xF)
            {
              v54 = 0;
LABEL_70:
              v52 = &v12[v50];
              v53 = &v7[v50];
              v59 = v54;
              v60 = v54 - v49;
              do
              {
                *&v12[v59] = *&v7[v59];
                v59 += 4;
                v60 += 4;
              }

              while (v60);
              if (v46 == v49)
              {
                goto LABEL_62;
              }

              goto LABEL_75;
            }

            v55 = 0;
            v56 = v46 & 0xFFFFFFFFFFFFFFF0;
            do
            {
              v57 = &v12[v55];
              v58 = *&v7[v55 + 8];
              *v57 = *&v7[v55];
              v57[1] = v58;
              v55 += 16;
              v56 -= 16;
            }

            while (v56);
            if (v46 == (v46 & 0xFFFFFFFFFFFFFFF0))
            {
              goto LABEL_62;
            }

            v54 = v46 & 0xFFFFFFFFFFFFFFF0;
            if ((v46 & 0xC) != 0)
            {
              goto LABEL_70;
            }

            v53 = &v7[v48];
            v52 = &v12[v48];
          }

          do
          {
LABEL_75:
            v61 = *v53++;
            *v52++ = v61;
          }

          while (v53 != &v7[v8]);
LABEL_62:
          v7 += v10;
          v12 += v16;
          v13 = v44++ == v9 - 2;
          if (v13)
          {
            goto LABEL_46;
          }
        }
      }

      v37 = (v9 * v8);
      if (!v37)
      {
        return v6;
      }

      v38 = (v37 - 1) & 0x7FFFFFFFFFFFFFFFLL;
      if (v38 < 3)
      {
        v39 = v7;
        goto LABEL_99;
      }

      v39 = v7;
      if ((v12 - v7) < 0x20)
      {
        goto LABEL_99;
      }

      v40 = v38 + 1;
      if (v38 >= 0xF)
      {
        v41 = v40 & 0xFFFFFFFFFFFFFFF0;
        v62 = (v7 + 8);
        v63 = v12 + 8;
        v64 = v40 & 0xFFFFFFFFFFFFFFF0;
        do
        {
          v6 = *(v62 - 1);
          v65 = *v62;
          *(v63 - 1) = v6;
          *v63 = v65;
          v62 += 2;
          v63 += 2;
          v64 -= 16;
        }

        while (v64);
        if (v40 == v41)
        {
          return v6;
        }

        if ((v40 & 0xC) == 0)
        {
          v39 = &v7[v41];
          v12 += v41;
          goto LABEL_99;
        }
      }

      else
      {
        v41 = 0;
      }

      v66 = v40 & 0xFFFFFFFFFFFFFFFCLL;
      v67 = &v12[v66];
      v39 = &v7[v66];
      v68 = &v7[v41];
      v69 = &v12[v41];
      v70 = v41 - (v40 & 0xFFFFFFFFFFFFFFFCLL);
      do
      {
        v71 = *v68++;
        LOWORD(v6) = v71;
        *v69++ = v71;
        v70 += 4;
      }

      while (v70);
      v12 = v67;
      if (v40 == (v40 & 0xFFFFFFFFFFFFFFFCLL))
      {
        return v6;
      }

LABEL_99:
      v81 = &v7[v37];
      do
      {
        v82 = *v39++;
        LOWORD(v6) = v82;
        *v12++ = v82;
      }

      while (v39 != v81);
      return v6;
    }

LABEL_105:
    abort();
  }

  sub_27129EC40(a1 + 8, v5 + 2);
  return v6;
}

void sub_27179ECF8(uint64_t a1, int a2, double d0_0)
{
  if (a2 == 3)
  {
LABEL_10:
    if (*(a1 + 12))
    {
      v9 = *(a1 + 8) == 0;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      HIDWORD(v10) = 0;
    }

    else
    {
      v10 = *(a1 + 8);
    }

    if (HIDWORD(v10) * HIDWORD(*(a1 + 16)) != -1)
    {
LABEL_25:
      operator new();
    }

    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8, d0_0);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v11 = qword_28087C408, v12 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_24:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_25;
      }
    }

    else
    {
      v11 = qword_28087C408;
      v12 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_26;
      }
    }

    do
    {
      v14 = *v11;
      v13 = *(v11 + 8);
      v11 += 16;
      v14(v13, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v11 != v12);
    if (byte_28087C430)
    {
      goto LABEL_24;
    }

LABEL_26:
    abort();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/src/ImageStorage.cpp", 78, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v5 = qword_28087C408, v6 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      d0_0 = qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      goto LABEL_10;
    }
  }

  else
  {
    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_26;
    }
  }

  do
  {
    v8 = *v5;
    v7 = *(v5 + 8);
    v5 += 16;
    v8(v7, "F == format", 11, "", 0);
  }

  while (v5 != v6);
  if ((byte_28087C430 & 1) == 0)
  {
    goto LABEL_26;
  }

  goto LABEL_9;
}

void sub_27179EF60(uint64_t a1, int a2, double d0_0)
{
  if (a2 == 3)
  {
LABEL_10:
    if (*(a1 + 12))
    {
      v9 = *(a1 + 8) == 0;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      HIDWORD(v10) = 0;
    }

    else
    {
      v10 = *(a1 + 8);
    }

    if (HIDWORD(v10) * HIDWORD(*(a1 + 16)) != -1)
    {
LABEL_25:
      operator new();
    }

    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8, d0_0);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v11 = qword_28087C408, v12 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_24:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_25;
      }
    }

    else
    {
      v11 = qword_28087C408;
      v12 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_26;
      }
    }

    do
    {
      v14 = *v11;
      v13 = *(v11 + 8);
      v11 += 16;
      v14(v13, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v11 != v12);
    if (byte_28087C430)
    {
      goto LABEL_24;
    }

LABEL_26:
    abort();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/src/ImageStorage.cpp", 84, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v5 = qword_28087C408, v6 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      d0_0 = qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      goto LABEL_10;
    }
  }

  else
  {
    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_26;
    }
  }

  do
  {
    v8 = *v5;
    v7 = *(v5 + 8);
    v5 += 16;
    v8(v7, "F == format", 11, "", 0);
  }

  while (v5 != v6);
  if ((byte_28087C430 & 1) == 0)
  {
    goto LABEL_26;
  }

  goto LABEL_9;
}

uint64_t sub_27179F1C8(uint64_t result)
{
  if (*(result + 48))
  {
    v1 = result;
    free(*(result + 48));
    result = v1;
  }

  *(result + 48) = 0;
  return result;
}

void sub_27179F204(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v2 = a1;
    free(*(a1 + 48));
    a1 = v2;
    v1 = vars8;
  }

  *(a1 + 48) = 0;

  JUMPOUT(0x2743BF050);
}

float sub_27179F308(uint64_t a1, uint64_t *lpsrc)
{
  v4 = *lpsrc;
  v5 = __dynamic_cast(lpsrc, &unk_288123908, &unk_2881235B0, 0);
  if (!v5)
  {
    (*(v4 + 72))(v20, lpsrc, 4);
    v11 = *(v20[0] + 2);
    *v21 = *v20[0];
    *&v21[16] = v11;
    v20[0] = 0;
    MEMORY[0x2743BF050]();
    v12 = *(a1 + 48);
    if (*(a1 + 12))
    {
      v13 = *(a1 + 8) == 0;
    }

    else
    {
      v13 = 1;
    }

    v14 = *(a1 + 16);
    if (v13)
    {
      v15 = 0;
    }

    else
    {
      v15 = *(a1 + 8);
    }

    if (HIDWORD(v15) * HIDWORD(v14) != -1)
    {
      goto LABEL_28;
    }

    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v16 = qword_28087C408, v17 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_27:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
LABEL_28:
        v20[0] = v12;
        v20[1] = v15;
        v20[2] = v14;
        return sub_27125505C(v21, v20);
      }
    }

    else
    {
      v16 = qword_28087C408;
      v17 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_30;
      }
    }

    do
    {
      v19 = *v16;
      v18 = *(v16 + 8);
      v16 += 16;
      v19(v18, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v16 != v17);
    if (byte_28087C430)
    {
      goto LABEL_27;
    }

LABEL_30:
    abort();
  }

  if (*(a1 + 48) && *(v5 + 2) == *(a1 + 8) && *(v5 + 3) == *(a1 + 12) && *(v5 + 4) == *(a1 + 16) && *(v5 + 5) == *(a1 + 20))
  {
    v6 = (v5 + 8);

    return sub_27129F570(v6, a1 + 8);
  }

  else
  {
    v8 = *(v5 + 8);
    *&v21[12] = *(v5 + 20);
    *v21 = v8;
    sub_271254D34(v22, (v5 + 40));
    *(a1 + 8) = *v21;
    *(a1 + 20) = *&v21[12];
    result = v23[0];
    *(a1 + 64) = *v23;
    *(a1 + 40) = v22[0];
    v9 = *(a1 + 48);
    if (v9)
    {
      free(v9);
    }

    v10 = v22[2];
    *(a1 + 48) = v22[1];
    *(a1 + 56) = v10;
  }

  return result;
}

void sub_27179F5E4(uint64_t a1, int a2, double d0_0)
{
  if (a2 == 4)
  {
LABEL_10:
    if (*(a1 + 12))
    {
      v9 = *(a1 + 8) == 0;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      HIDWORD(v10) = 0;
    }

    else
    {
      v10 = *(a1 + 8);
    }

    if (HIDWORD(v10) * HIDWORD(*(a1 + 16)) != -1)
    {
LABEL_25:
      operator new();
    }

    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8, d0_0);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v11 = qword_28087C408, v12 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_24:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_25;
      }
    }

    else
    {
      v11 = qword_28087C408;
      v12 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_26;
      }
    }

    do
    {
      v14 = *v11;
      v13 = *(v11 + 8);
      v11 += 16;
      v14(v13, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v11 != v12);
    if (byte_28087C430)
    {
      goto LABEL_24;
    }

LABEL_26:
    abort();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/src/ImageStorage.cpp", 78, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v5 = qword_28087C408, v6 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      d0_0 = qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      goto LABEL_10;
    }
  }

  else
  {
    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_26;
    }
  }

  do
  {
    v8 = *v5;
    v7 = *(v5 + 8);
    v5 += 16;
    v8(v7, "F == format", 11, "", 0);
  }

  while (v5 != v6);
  if ((byte_28087C430 & 1) == 0)
  {
    goto LABEL_26;
  }

  goto LABEL_9;
}

void sub_27179F84C(uint64_t a1, int a2, double d0_0)
{
  if (a2 == 4)
  {
LABEL_10:
    if (*(a1 + 12))
    {
      v9 = *(a1 + 8) == 0;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      HIDWORD(v10) = 0;
    }

    else
    {
      v10 = *(a1 + 8);
    }

    if (HIDWORD(v10) * HIDWORD(*(a1 + 16)) != -1)
    {
LABEL_25:
      operator new();
    }

    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8, d0_0);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v11 = qword_28087C408, v12 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_24:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_25;
      }
    }

    else
    {
      v11 = qword_28087C408;
      v12 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_26;
      }
    }

    do
    {
      v14 = *v11;
      v13 = *(v11 + 8);
      v11 += 16;
      v14(v13, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v11 != v12);
    if (byte_28087C430)
    {
      goto LABEL_24;
    }

LABEL_26:
    abort();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/src/ImageStorage.cpp", 84, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v5 = qword_28087C408, v6 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      d0_0 = qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      goto LABEL_10;
    }
  }

  else
  {
    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_26;
    }
  }

  do
  {
    v8 = *v5;
    v7 = *(v5 + 8);
    v5 += 16;
    v8(v7, "F == format", 11, "", 0);
  }

  while (v5 != v6);
  if ((byte_28087C430 & 1) == 0)
  {
    goto LABEL_26;
  }

  goto LABEL_9;
}

uint64_t sub_27179FAB4(uint64_t result)
{
  if (*(result + 72))
  {
    v1 = result;
    free(*(result + 72));
    result = v1;
  }

  *(result + 72) = 0;
  return result;
}

void sub_27179FAF0(uint64_t a1)
{
  if (*(a1 + 72))
  {
    v2 = a1;
    free(*(a1 + 72));
    a1 = v2;
    v1 = vars8;
  }

  *(a1 + 72) = 0;

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27179FB48(uint64_t a1, uint64_t a2, char *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  *a1 = &unk_288112118;
  if (*(a2 + 28))
  {
    v4 = *(a2 + 24) == 0;
  }

  else
  {
    v4 = 1;
  }

  v6 = *(a2 + 24);
  v5 = *(a2 + 32);
  if (v4)
  {
    v6 = 0;
  }

  *&v20[4] = v6;
  *v20 = 2;
  v7 = *v20;
  v8 = HIDWORD(v6);
  *v20 = 1;
  *&v20[4] = v5;
  v9 = *v20;
  v10 = HIDWORD(v5);
  *(a1 + 8) = v7;
  *(a1 + 16) = HIDWORD(v6);
  *(a1 + 20) = v9;
  *(a1 + 28) = HIDWORD(v5);
  *(a1 + 32) = v6;
  *(a1 + 40) = v5;
  *(a1 + 48) = 0;
  *(a1 + 60) = 0;
  *v20 = v9;
  *&v20[8] = HIDWORD(v5);
  if (HIDWORD(v7))
  {
    v11 = v7 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11;
  if (v8)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = v7;
  }

  v18 = v14;
  if (v12)
  {
    v15 = 0;
  }

  else
  {
    v15 = v8;
  }

  v19 = v15;
  if ((v10 & (v10 - 1)) != 0)
  {
    v16 = 1;
  }

  else
  {
    v16 = v10;
  }

  sub_2717D4B20(a1 + 64, &v18, v20, 1, a3, 1, v16);
  return a1;
}

size_t *sub_27179FD50(uint64_t a1, uint64_t *lpsrc)
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = __dynamic_cast(lpsrc, &unk_288123908, &unk_288123598, 0);
  if (!v5)
  {
    (*(v4 + 72))(&v21, lpsrc, 5);
    v8 = *(v21 + 16);
    v7 = *(v21 + 32);
    v20[0] = *v21;
    v20[1] = v8;
    v20[2] = v7;
    *&v21 = 0;
    MEMORY[0x2743BF050]();
    v9 = *(a1 + 72);
    if (*(a1 + 36))
    {
      v10 = *(a1 + 32) == 0;
    }

    else
    {
      v10 = 1;
    }

    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    if (v10)
    {
      v11 = 0;
    }

    LODWORD(v21) = 2;
    *(&v21 + 4) = v11;
    v13 = v11;
    v14 = v21;
    v15 = HIDWORD(v11);
    LODWORD(v21) = 1;
    *(&v21 + 4) = v12;
    v16 = v21;
    if (HIDWORD(v12) * HIDWORD(v11) != -1)
    {
      goto LABEL_19;
    }

    v19 = v9;
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v18 = qword_28087C408, v17 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_18:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v9 = v19;
LABEL_19:
        *&v21 = v9;
        *(&v21 + 1) = v14;
        v22 = v15;
        v23 = v16;
        v24 = HIDWORD(v12);
        v25 = v13;
        v26 = v12;
        return sub_27129F754(v20, &v21);
      }
    }

    else
    {
      v18 = qword_28087C408;
      v17 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_20;
      }
    }

    do
    {
      (*v18)(*(v18 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v18 += 16;
    }

    while (v18 != v17);
    if (byte_28087C430)
    {
      goto LABEL_18;
    }

LABEL_20:
    abort();
  }

  return sub_27129FD18(a1 + 8, (v5 + 8));
}

void sub_2717A0038(uint64_t a1, int a2, double d0_0)
{
  if (a2 == 5)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v9 = *(a1 + 32) == 0;
    }

    else
    {
      v9 = 1;
    }

    v10 = *(a1 + 32);
    if (v9)
    {
      HIDWORD(v10) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v10) != -1)
    {
LABEL_24:
      operator new();
    }

    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8, d0_0);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v11 = qword_28087C408, v12 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_23:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v11 = qword_28087C408;
      v12 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_25;
      }
    }

    do
    {
      v14 = *v11;
      v13 = *(v11 + 8);
      v11 += 16;
      v14(v13, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v11 != v12);
    if (byte_28087C430)
    {
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/src/ImageStorage.cpp", 78, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v5 = qword_28087C408, v6 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      d0_0 = qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      goto LABEL_10;
    }
  }

  else
  {
    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_25;
    }
  }

  do
  {
    v8 = *v5;
    v7 = *(v5 + 8);
    v5 += 16;
    v8(v7, "F == format", 11, "", 0);
  }

  while (v5 != v6);
  if ((byte_28087C430 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

void sub_2717A0338(uint64_t a1, int a2, double d0_0)
{
  if (a2 == 5)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v9 = *(a1 + 32) == 0;
    }

    else
    {
      v9 = 1;
    }

    v10 = *(a1 + 32);
    if (v9)
    {
      HIDWORD(v10) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v10) != -1)
    {
LABEL_24:
      operator new();
    }

    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8, d0_0);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v11 = qword_28087C408, v12 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_23:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v11 = qword_28087C408;
      v12 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_25;
      }
    }

    do
    {
      v14 = *v11;
      v13 = *(v11 + 8);
      v11 += 16;
      v14(v13, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v11 != v12);
    if (byte_28087C430)
    {
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/src/ImageStorage.cpp", 84, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v5 = qword_28087C408, v6 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      d0_0 = qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      goto LABEL_10;
    }
  }

  else
  {
    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_25;
    }
  }

  do
  {
    v8 = *v5;
    v7 = *(v5 + 8);
    v5 += 16;
    v8(v7, "F == format", 11, "", 0);
  }

  while (v5 != v6);
  if ((byte_28087C430 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

uint64_t sub_2717A0638(uint64_t result)
{
  if (*(result + 72))
  {
    v1 = result;
    free(*(result + 72));
    result = v1;
  }

  *(result + 72) = 0;
  return result;
}

void sub_2717A0674(uint64_t a1)
{
  if (*(a1 + 72))
  {
    v2 = a1;
    free(*(a1 + 72));
    a1 = v2;
    v1 = vars8;
  }

  *(a1 + 72) = 0;

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2717A06CC(uint64_t a1, uint64_t a2, unsigned __int16 *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  *a1 = &unk_288112098;
  if (*(a2 + 28))
  {
    v4 = *(a2 + 24) == 0;
  }

  else
  {
    v4 = 1;
  }

  v6 = *(a2 + 24);
  v5 = *(a2 + 32);
  if (v4)
  {
    v6 = 0;
  }

  *&v20[4] = v6;
  *v20 = 2;
  v7 = *v20;
  v8 = HIDWORD(v6);
  *v20 = 1;
  *&v20[4] = v5;
  v9 = *v20;
  v10 = HIDWORD(v5);
  *(a1 + 8) = v7;
  *(a1 + 16) = HIDWORD(v6);
  *(a1 + 20) = v9;
  *(a1 + 28) = HIDWORD(v5);
  *(a1 + 32) = v6;
  *(a1 + 40) = v5;
  *(a1 + 48) = 0;
  *(a1 + 60) = 0;
  *v20 = v9;
  *&v20[8] = HIDWORD(v5);
  if (HIDWORD(v7))
  {
    v11 = v7 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11;
  if (v8)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = v7;
  }

  v18 = v14;
  if (v12)
  {
    v15 = 0;
  }

  else
  {
    v15 = v8;
  }

  v19 = v15;
  if (((2 * v10) & (2 * v10 - 1)) != 0)
  {
    v16 = 2;
  }

  else
  {
    v16 = 2 * v10;
  }

  sub_2717D5090(a1 + 64, &v18, v20, 1, a3, 1, v16);
  return a1;
}

uint64_t *sub_2717A08D8(uint64_t a1, uint64_t *lpsrc)
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = __dynamic_cast(lpsrc, &unk_288123908, &unk_288123580, 0);
  if (!v5)
  {
    (*(v4 + 72))(&v21, lpsrc, 6);
    v8 = *(v21 + 16);
    v7 = *(v21 + 32);
    v20[0] = *v21;
    v20[1] = v8;
    v20[2] = v7;
    *&v21 = 0;
    MEMORY[0x2743BF050]();
    v9 = *(a1 + 72);
    if (*(a1 + 36))
    {
      v10 = *(a1 + 32) == 0;
    }

    else
    {
      v10 = 1;
    }

    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    if (v10)
    {
      v11 = 0;
    }

    LODWORD(v21) = 2;
    *(&v21 + 4) = v11;
    v13 = v11;
    v14 = v21;
    v15 = HIDWORD(v11);
    LODWORD(v21) = 1;
    *(&v21 + 4) = v12;
    v16 = v21;
    if (HIDWORD(v12) * HIDWORD(v11) != -1)
    {
      goto LABEL_19;
    }

    v19 = v9;
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v18 = qword_28087C408, v17 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_18:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v9 = v19;
LABEL_19:
        *&v21 = v9;
        *(&v21 + 1) = v14;
        v22 = v15;
        v23 = v16;
        v24 = HIDWORD(v12);
        v25 = v13;
        v26 = v12;
        return sub_2712A023C(v20, &v21);
      }
    }

    else
    {
      v18 = qword_28087C408;
      v17 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_20;
      }
    }

    do
    {
      (*v18)(*(v18 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v18 += 16;
    }

    while (v18 != v17);
    if (byte_28087C430)
    {
      goto LABEL_18;
    }

LABEL_20:
    abort();
  }

  return sub_2712A0628(a1 + 8, (v5 + 8));
}

void sub_2717A0BC0(uint64_t a1, int a2, double d0_0)
{
  if (a2 == 6)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v9 = *(a1 + 32) == 0;
    }

    else
    {
      v9 = 1;
    }

    v10 = *(a1 + 32);
    if (v9)
    {
      HIDWORD(v10) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v10) != -1)
    {
LABEL_24:
      operator new();
    }

    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8, d0_0);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v11 = qword_28087C408, v12 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_23:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v11 = qword_28087C408;
      v12 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_25;
      }
    }

    do
    {
      v14 = *v11;
      v13 = *(v11 + 8);
      v11 += 16;
      v14(v13, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v11 != v12);
    if (byte_28087C430)
    {
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/src/ImageStorage.cpp", 78, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v5 = qword_28087C408, v6 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      d0_0 = qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      goto LABEL_10;
    }
  }

  else
  {
    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_25;
    }
  }

  do
  {
    v8 = *v5;
    v7 = *(v5 + 8);
    v5 += 16;
    v8(v7, "F == format", 11, "", 0);
  }

  while (v5 != v6);
  if ((byte_28087C430 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

void sub_2717A0EC0(uint64_t a1, int a2, double d0_0)
{
  if (a2 == 6)
  {
LABEL_10:
    if (*(a1 + 36))
    {
      v9 = *(a1 + 32) == 0;
    }

    else
    {
      v9 = 1;
    }

    v10 = *(a1 + 32);
    if (v9)
    {
      HIDWORD(v10) = 0;
    }

    if (HIDWORD(*(a1 + 40)) * HIDWORD(v10) != -1)
    {
LABEL_24:
      operator new();
    }

    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8, d0_0);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v11 = qword_28087C408, v12 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_23:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_24;
      }
    }

    else
    {
      v11 = qword_28087C408;
      v12 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_25;
      }
    }

    do
    {
      v14 = *v11;
      v13 = *(v11 + 8);
      v11 += 16;
      v14(v13, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v11 != v12);
    if (byte_28087C430)
    {
      goto LABEL_23;
    }

LABEL_25:
    abort();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/src/ImageStorage.cpp", 84, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v5 = qword_28087C408, v6 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      d0_0 = qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      goto LABEL_10;
    }
  }

  else
  {
    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_25;
    }
  }

  do
  {
    v8 = *v5;
    v7 = *(v5 + 8);
    v5 += 16;
    v8(v7, "F == format", 11, "", 0);
  }

  while (v5 != v6);
  if ((byte_28087C430 & 1) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_9;
}

uint64_t sub_2717A11C0(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (!v2)
  {
    goto LABEL_17;
  }

  if (*(a1 + 92))
  {
    v3 = *(a1 + 88) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(a1 + 96);
  if (v3)
  {
    v4 = 0;
  }

  if (v4 * (*(a1 + 108) >> 1) != -1)
  {
    goto LABEL_16;
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1)
    {
      goto LABEL_15;
    }

    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_18;
    }
  }

  do
  {
    (*v5)(*(v5 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    v5 += 16;
  }

  while (v5 != v6);
  if ((byte_28087C430 & 1) == 0)
  {
LABEL_18:
    abort();
  }

LABEL_15:
  qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
  v2 = *(a1 + 72);
  if (v2)
  {
LABEL_16:
    free(v2);
  }

LABEL_17:
  *(a1 + 72) = 0;
  return a1;
}

void sub_2717A1328(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (!v2)
  {
    goto LABEL_17;
  }

  if (*(a1 + 92))
  {
    v3 = *(a1 + 88) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(a1 + 96);
  if (v3)
  {
    v4 = 0;
  }

  if (v4 * (*(a1 + 108) >> 1) != -1)
  {
LABEL_16:
    free(v2);
LABEL_17:
    *(a1 + 72) = 0;

    JUMPOUT(0x2743BF050);
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1)
    {
      goto LABEL_15;
    }

    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_20;
    }
  }

  do
  {
    (*v5)(*(v5 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    v5 += 16;
  }

  while (v5 != v6);
  if (byte_28087C430)
  {
LABEL_15:
    qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    v2 = *(a1 + 72);
    if (!v2)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_20:
  abort();
}

uint64_t sub_2717A14B0(uint64_t a1, uint64_t a2, __int16 *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  *a1 = &unk_288112018;
  if (*(a2 + 28))
  {
    v4 = *(a2 + 24) == 0;
  }

  else
  {
    v4 = 1;
  }

  v6 = *(a2 + 24);
  v5 = *(a2 + 32);
  if (v4)
  {
    v6 = 0;
  }

  *&v20[4] = v6;
  *v20 = 2;
  v7 = *v20;
  v8 = HIDWORD(v6);
  *v20 = 1;
  *&v20[4] = v5;
  v9 = *v20;
  v10 = HIDWORD(v5);
  *(a1 + 8) = v7;
  *(a1 + 16) = HIDWORD(v6);
  *(a1 + 20) = v9;
  *(a1 + 28) = HIDWORD(v5);
  *(a1 + 32) = v6;
  *(a1 + 40) = v5;
  *(a1 + 48) = 0;
  *(a1 + 60) = 0;
  *v20 = v9;
  *&v20[8] = HIDWORD(v5);
  if (HIDWORD(v7))
  {
    v11 = v7 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11;
  if (v8)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = v7;
  }

  v18 = v14;
  if (v12)
  {
    v15 = 0;
  }

  else
  {
    v15 = v8;
  }

  v19 = v15;
  if (((2 * v10) & (2 * v10 - 1)) != 0)
  {
    v16 = 2;
  }

  else
  {
    v16 = 2 * v10;
  }

  sub_2717D5BBC(a1 + 64, &v18, v20, 1, a3, 1, v16);
  return a1;
}