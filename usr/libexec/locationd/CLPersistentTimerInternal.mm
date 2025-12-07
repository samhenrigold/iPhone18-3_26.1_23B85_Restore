@interface CLPersistentTimerInternal
- (void)invalidate;
@end

@implementation CLPersistentTimerInternal

- (void)invalidate
{
  [(CLSilo *)self->_silo assertInside];
  pcTimer = self->_pcTimer;
  if (pcTimer)
  {
    v4 = pcTimer;
    self->_pcTimer = 0;
    if (*(&self->_strIdentifier.__rep_.__l + 23) < 0)
    {
      sub_100007244(__dst, self->_strIdentifier.__rep_.__l.__data_, self->_strIdentifier.__rep_.__l.__size_);
    }

    else
    {
      *__dst = *self->_strIdentifier.__rep_.__s.__data_;
      v15 = *(&self->_strIdentifier.__rep_.__l + 2);
    }

    if (qword_1025D4870 != -1)
    {
      sub_10197AD24();
    }

    v5 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
    {
      v6 = __dst;
      if (v15 < 0)
      {
        v6 = __dst[0];
      }

      *buf = 136315394;
      v21 = v6;
      v22 = 2048;
      v23 = v4;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "Scheduling invalidation, %s, %p", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10197B550(buf);
      v8 = __dst;
      if (v15 < 0)
      {
        v8 = __dst[0];
      }

      v16 = 136315394;
      v17 = v8;
      v18 = 2048;
      v19 = v4;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4878, 2, "Scheduling invalidation, %s, %p", &v16, 22);
      v10 = v9;
      sub_100152C7C("Generic", 1, 0, 2, "[CLPersistentTimerInternal invalidate]", "%s\n", v9);
      if (v10 != buf)
      {
        free(v10);
      }
    }

    v7 = +[CLSilo main];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3321888768;
    v11[2] = sub_100073D4C;
    v11[3] = &unk_10247F8D8;
    if (SHIBYTE(v15) < 0)
    {
      sub_100007244(&__p, __dst[0], __dst[1]);
    }

    else
    {
      __p = *__dst;
      v13 = v15;
    }

    v11[4] = v4;
    [v7 async:v11];
    if (SHIBYTE(v13) < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v15) < 0)
    {
      operator delete(__dst[0]);
    }
  }
}

@end