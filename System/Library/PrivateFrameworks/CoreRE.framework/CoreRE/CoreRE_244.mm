uint64_t re::TraceHistory::addDelta(re::TraceDelta **this, const re::TraceDelta *a2)
{
  re::TraceDelta::merge(this[1], a2);
  v3 = *(this + 1);
  v4 = *this + 1;
  *this = v4;
  if (v4 >= v3)
  {
    re::TraceDelta::merge(this[2], this[1]);
    v5 = this[1];
    *(v5 + 1) = 0;
    re::DynamicArray<re::TraceEntry>::clear(v5 + 16);
    *this = 0;
  }

  (*(*this[4] + 40))();
  (*(*this[4] + 88))(this[4]);
  v6 = *(*this[5] + 16);

  return v6();
}

uint64_t re::TraceHistory::addMetadata(re::TraceDelta **this, const re::TraceDelta *a2)
{
  re::TraceDelta::merge(this[3], a2);
  (*(*this[4] + 32))(this[4], this[3]);
  v3 = *(*this[5] + 24);

  return v3();
}

void re::TraceHistory::clear(re::TraceHistory *this)
{
  *this = 0;
  v2 = *(this + 1);
  *(v2 + 8) = 0;
  re::DynamicArray<re::TraceEntry>::clear(v2 + 16);
  v3 = *(this + 2);
  *(v3 + 8) = 0;
  re::DynamicArray<re::TraceEntry>::clear(v3 + 16);
  operator new();
}

uint64_t *re::traceLogObjects(re *this)
{
  {
    re::traceLogObjects(void)::logObjects = os_log_create("com.apple.re", "Trace");
  }

  return &re::traceLogObjects(void)::logObjects;
}

uint64_t re::TraceDeltaWriter::writeDelta(re::zerocopy ***this, const re::TraceDelta *a2)
{
  v4 = *this;
  v16 = -29;
  re::zerocopy::writeAll(*v4, &v16, 1);
  v5 = *this;
  v17 = 8;
  re::zerocopy::writeAll(*v5, &v17, 1);
  re::OPackWriter::writeInteger(*this, *a2, v6, v7);
  v8 = *this;
  v18 = 9;
  re::zerocopy::writeAll(*v8, &v18, 1);
  re::OPackWriter::writeFloat64(*this, *(a2 + 1), v9, v10, v11);
  v12 = *this;
  v19 = 10;
  re::zerocopy::writeAll(*v12, &v19, 1);

  return re::TraceDeltaWriter::writeEntries(this, a2 + 16, v13, v14);
}

uint64_t re::TraceDeltaWriter::writeEntries(re::zerocopy ***a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  result = re::OPackWriter::writeArrayBegin(*a1, *(a2 + 16), a3, a4);
  v7 = *(a2 + 16);
  if (v7)
  {
    v8 = *(a2 + 32);
    v9 = v7 << 6;
    do
    {
      result = re::TraceDeltaWriter::writeEntry(a1, v8);
      v8 += 64;
      v9 -= 64;
    }

    while (v9);
    if (*(a2 + 16) >= 0xFuLL)
    {
      v10 = *a1;
      v11 = 3;
      return re::zerocopy::writeAll(*v10, &v11, 1);
    }
  }

  return result;
}

uint64_t re::TraceDeltaWriter::writeEntry(re::zerocopy ***a1, uint64_t a2)
{
  v4 = *a1;
  v23 = -27;
  re::zerocopy::writeAll(*v4, &v23, 1);
  v5 = *a1;
  v24 = 8;
  re::zerocopy::writeAll(*v5, &v24, 1);
  re::OPackWriter::writeInteger(*a1, *a2, v6, v7);
  v8 = *a1;
  v25 = 9;
  re::zerocopy::writeAll(*v8, &v25, 1);
  re::OPackWriter::writeInteger(*a1, *(a2 + 8), v9, v10);
  v11 = *a1;
  v26 = 10;
  re::zerocopy::writeAll(*v11, &v26, 1);
  re::OPackWriter::writeInteger(*a1, *(a2 + 16), v12, v13);
  v14 = *a1;
  v27 = 11;
  re::zerocopy::writeAll(*v14, &v27, 1);
  re::OPackWriter::writeInteger(*a1, *(a2 + 17), v15, v16);
  v17 = *a1;
  v28 = 12;
  re::zerocopy::writeAll(*v17, &v28, 1);
  v19 = *a1;
  v20 = *(a2 + 56);
  v21 = *(a2 + 40);

  return re::OPackWriter::writeData(v19, v20, v21, v18);
}

uint64_t re::TraceDeltaReader::read(re::OPackReader **this, re::TraceDelta *a2)
{
  v4 = *this;
  result = re::OPackReader::next(*this, a2);
  if (result)
  {
    if (*(v4 + 196) == 13)
    {
      v7 = *this;
      if (re::OPackReader::next(*this, v6))
      {
        while (*(v7 + 196) == 6)
        {
          v9 = *(v7 + 224);
          if (v9 == 2)
          {
            v12 = *this;
            result = re::OPackReader::next(*this, v8);
            if (!result)
            {
              return result;
            }

            if (*(v12 + 196) != 12)
            {
              return 0;
            }

            while (re::OPackReader::next(*this, v13) && *(*this + 184) != 3)
            {
              v21 = 0;
              v18 = 0;
              v19 = 0;
              v17 = 0;
              v20 = 0;
              v15 = 0uLL;
              v16 = 0;
              v14 = re::DynamicArray<re::TraceEntry>::add((a2 + 16), &v15);
              if (v17)
              {
                if (v21)
                {
                  (*(*v17 + 40))(v14);
                }
              }

              *(*this + 2) = 1;
              if ((re::TraceDeltaReader::read(this, *(a2 + 6) + (*(a2 + 4) << 6) - 64) & 1) == 0)
              {
                return 0;
              }
            }
          }

          else if (v9 == 1)
          {
            v11 = *this;
            result = re::OPackReader::next(*this, v8);
            if (!result)
            {
              return result;
            }

            if (*(v11 + 196) != 8)
            {
              return 0;
            }

            *(a2 + 1) = *(v11 + 28);
          }

          else if (!*(v7 + 224))
          {
            v10 = *this;
            result = re::OPackReader::next(*this, v8);
            if (!result)
            {
              return result;
            }

            if (*(v10 + 196) != 6)
            {
              return 0;
            }

            *a2 = *(v10 + 28);
          }

          v7 = *this;
          if ((re::OPackReader::next(*this, v8) & 1) == 0)
          {
            return *(*this + 184) == 5;
          }
        }
      }

      return *(*this + 184) == 5;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t re::TraceDeltaReader::read(re::OPackReader **a1, uint64_t a2)
{
  v4 = *a1;
  result = re::OPackReader::next(*a1, a2);
  if (result)
  {
    if (*(v4 + 196) == 13)
    {
      v7 = *a1;
      if (re::OPackReader::next(*a1, v6))
      {
        while (*(v7 + 196) == 6)
        {
          result = 0;
          v9 = *(v7 + 224);
          if (v9 <= 1)
          {
            if (*(v7 + 224))
            {
              if (v9 != 1)
              {
                return result;
              }

              v12 = *a1;
              result = re::OPackReader::next(*a1, v8);
              if (!result)
              {
                return result;
              }

              if (*(v12 + 196) != 6)
              {
                return 0;
              }

              *(a2 + 8) = *(v12 + 28);
            }

            else
            {
              v14 = *a1;
              result = re::OPackReader::next(*a1, v8);
              if (!result)
              {
                return result;
              }

              if (*(v14 + 196) != 6)
              {
                return 0;
              }

              *a2 = *(v14 + 28);
            }
          }

          else
          {
            switch(v9)
            {
              case 2u:
                v15 = *a1;
                result = re::OPackReader::next(*a1, v8);
                if (!result)
                {
                  return result;
                }

                if (*(v15 + 196) != 6)
                {
                  return 0;
                }

                *(a2 + 16) = *(v15 + 28);
                break;
              case 3u:
                v13 = *a1;
                result = re::OPackReader::next(*a1, v8);
                if (!result)
                {
                  return result;
                }

                if (*(v13 + 196) != 6)
                {
                  return 0;
                }

                *(a2 + 17) = *(v13 + 28);
                break;
              case 4u:
                v10 = *a1;
                result = re::OPackReader::next(*a1, v8);
                if (!result)
                {
                  return result;
                }

                if (*(v10 + 196) != 11)
                {
                  return 0;
                }

                re::DynamicArray<unsigned char>::resizeUninitialized((a2 + 24), *(*a1 + 27));
                memcpy(*(a2 + 56), *(*a1 + 26), *(*a1 + 27));
                break;
              default:
                return result;
            }
          }

          v7 = *a1;
          if ((re::OPackReader::next(*a1, v11) & 1) == 0)
          {
            return *(*a1 + 184) == 5;
          }
        }
      }

      return *(*a1 + 184) == 5;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t re::TraceTargetAppInfoWriter::write(re::zerocopy ***a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  result = re::OPackWriter::writeArrayBegin(*a1, *(a2 + 16), a3, a4);
  v7 = *(a2 + 16);
  if (v7)
  {
    v8 = *(a2 + 32);
    v9 = v8 + 40 * v7;
    v10 = v8 + 17;
    do
    {
      v11 = *a1;
      v23 = -30;
      re::zerocopy::writeAll(*v11, &v23, 1);
      v12 = *a1;
      v24 = 8;
      re::zerocopy::writeAll(*v12, &v24, 1);
      v13 = v10 - 17;
      re::OPackWriter::writeInteger(*a1, *(v10 - 17), v14, v15);
      v16 = *a1;
      v25 = 9;
      re::zerocopy::writeAll(*v16, &v25, 1);
      v18 = *(v10 - 1);
      v19 = v10;
      if (v18)
      {
        v19 = *(v10 + 7);
        v20 = (v18 >> 1);
      }

      else
      {
        v20 = (v18 >> 1);
      }

      result = re::OPackWriter::writeString(*a1, v19, v20, v17);
      v10 += 40;
    }

    while (v13 + 40 != v9);
    if (*(a2 + 16) >= 0xFuLL)
    {
      v21 = *a1;
      v22 = 3;
      return re::zerocopy::writeAll(*v21, &v22, 1);
    }
  }

  return result;
}

BOOL re::TraceTargetAppInfoReader::read(re::OPackReader **a1, _anonymous_namespace_ *a2)
{
  v4 = *a1;
  if (!re::OPackReader::next(*a1, a2) || *(v4 + 196) != 12)
  {
    return 0;
  }

  v6 = re::OPackReader::next(*a1, v5);
  v7 = *a1;
  if (!v6)
  {
    return *(v7 + 184) == 3;
  }

  while (1)
  {
    v8 = *(v7 + 184);
    v9 = v8 == 3;
    if (v8 == 3)
    {
      return v9;
    }

    v24 = 0;
    v22 = 0u;
    v23 = 0u;
    re::DynamicString::setCapacity(&v22 + 1, 0);
    v11 = re::DynamicArray<re::TraceTargetAppInfo>::add(a2, &v22);
    if (*(&v22 + 1) && (v23 & 1) != 0)
    {
      (*(**(&v22 + 1) + 40))(v11);
    }

    v12 = *a1;
    *(v12 + 2) = 1;
    if (!re::OPackReader::next(v12, v10) || *(v12 + 196) != 13)
    {
      return v9;
    }

    v14 = *a1;
    if (re::OPackReader::next(*a1, v13))
    {
      while (*(v14 + 196) == 6)
      {
        if (*(v14 + 224) == 1)
        {
          v20 = *a1;
          if (!re::OPackReader::next(*a1, v15) || *(v20 + 196) != 10)
          {
            return 0;
          }

          re::DynamicString::assign((*(a2 + 4) + 40 * *(a2 + 2) - 32), *(*a1 + 26), *(*a1 + 27));
        }

        else
        {
          if (*(v14 + 224))
          {
            return 0;
          }

          v16 = *a1;
          v17 = *(a2 + 4);
          v18 = *(a2 + 2);
          if (!re::OPackReader::next(*a1, v15) || *(v16 + 196) != 6)
          {
            return 0;
          }

          *(v17 + 40 * v18 - 40) = *(v16 + 28);
        }

        v14 = *a1;
        if ((re::OPackReader::next(*a1, v19) & 1) == 0)
        {
          break;
        }
      }
    }

    v6 = re::OPackReader::next(*a1, v15);
    v7 = *a1;
    if ((v6 & 1) == 0)
    {
      return *(v7 + 184) == 3;
    }
  }
}

double re::DynamicArray<re::TraceTargetAppInfo>::add(_anonymous_namespace_ *this, void *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::TraceTargetAppInfo>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 40 * v4;
  *v5 = *a2;
  result = 0.0;
  *(v5 + 8) = 0u;
  *(v5 + 24) = 0u;
  *(v5 + 32) = a2[4];
  v7 = a2[2];
  *(v5 + 8) = a2[1];
  a2[1] = 0;
  v8 = a2[3];
  a2[4] = 0;
  v10 = *(v5 + 16);
  v9 = *(v5 + 24);
  *(v5 + 16) = v7;
  *(v5 + 24) = v8;
  a2[2] = v10;
  a2[3] = v9;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

uint64_t re::TraceDump::dump(re::zerocopy **this, const re::TraceDelta *a2)
{
  result = re::zerocopy::writeAll(*this, "delta\n", 6);
  v5 = *(a2 + 4);
  if (v5)
  {
    v6 = *(a2 + 6);
    v7 = v5 << 6;
    do
    {
      result = re::TraceDump::dump(this, v6);
      v6 += 8;
      v7 -= 64;
    }

    while (v7);
  }

  return result;
}

uint64_t re::TraceDump::dump(uint64_t a1, uint64_t *a2)
{
  if (a2[1])
  {
    return re::TraceDump::dumpChild(a1, a2);
  }

  else
  {
    return re::TraceDump::dumpParent(a1, a2);
  }
}

uint64_t re::TraceDump::dumpChild(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  if (*a2 != *(a1 + 88))
  {
    *(a1 + 88) = v4;
    re::zerocopy::writeAll(*a1, "  +-- ", 6);
    v5 = (*(**(a1 + 8) + 8))(*(a1 + 8), v4);
    v6 = strlen(v5);
    re::zerocopy::writeAll(*a1, v5, v6);
    re::zerocopy::writeAll(*a1, "\n", 1);
  }

  re::zerocopy::writeAll(*a1, "    +-- ", 8);
  v7 = (***(a1 + 8))(*(a1 + 8), a2[1]);
  v8 = strlen(v7);
  re::zerocopy::writeAll(*a1, v7, v8);
  re::zerocopy::writeAll(*a1, " ", 1);
  v9 = *(a2 + 16);
  if (v9 > 3)
  {
    v10 = "???";
  }

  else
  {
    v10 = *(&off_1E8721F48 + v9);
  }

  v11 = strlen(v10);
  re::zerocopy::writeAll(*a1, v10, v11);
  if (*(a1 + 97) == 1 && a2[5])
  {
    re::zerocopy::writeAll(*a1, " ", 1);
    re::zerocopy::writeAll(*a1, a2[7], a2[5]);
  }

  v12 = *a1;

  return re::zerocopy::writeAll(v12, "\n", 1);
}

uint64_t re::TraceDump::dumpParent(uint64_t a1, uint64_t a2)
{
  *(a1 + 88) = *a2;
  re::zerocopy::writeAll(*a1, "  +-- ", 6);
  v4 = (*(**(a1 + 8) + 8))(*(a1 + 8), *a2);
  v5 = strlen(v4);
  re::zerocopy::writeAll(*a1, v4, v5);
  re::zerocopy::writeAll(*a1, " ", 1);
  v6 = *(a2 + 16);
  if (v6 > 3)
  {
    v7 = "???";
  }

  else
  {
    v7 = *(&off_1E8721F48 + v6);
  }

  v8 = strlen(v7);
  re::zerocopy::writeAll(*a1, v7, v8);
  if (*(a1 + 96) == 1 && *(a2 + 40))
  {
    re::zerocopy::writeAll(*a1, " ", 1);
    re::zerocopy::writeAll(*a1, *(a2 + 56), *(a2 + 40));
  }

  v9 = *a1;

  return re::zerocopy::writeAll(v9, "\n", 1);
}

void *re::allocInfo_TraceService(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_571, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_571))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C4620, "TraceService");
    __cxa_guard_release(&_MergedGlobals_571);
  }

  return &unk_1EE1C4620;
}

void re::initInfo_TraceService(re *this, re::IntrospectionBase *a2)
{
  v6[0] = 0x3DE7F4E91F7F73A0;
  v6[1] = "TraceService";
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  *(this + 2) = v7;
  *(this + 2) = 0x800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 8) = &re::initInfo_TraceService(re::IntrospectionBase *)::structureAttributes;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

id re::TraceFramer::definition(re::TraceFramer *this)
{
  v2 = &re::introspect_BOOL(BOOL)::info;
  {
    v2 = &re::introspect_BOOL(BOOL)::info;
    if (v5)
    {
      re::TraceFramer::definition(void)::definition = re::TraceFramer::create(v5);
      v2 = &re::introspect_BOOL(BOOL)::info;
    }
  }

  v3 = v2[161];

  return v3;
}

nw_protocol_definition_t re::TraceFramer::create(re::TraceFramer *this)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = ___ZN2re11TraceFramer6createEv_block_invoke_9;
  v4[3] = &unk_1E8721FF8;
  v5 = &__block_literal_global_56;
  v6 = &__block_literal_global_7_1;
  v1 = _Block_copy(v4);
  definition = nw_framer_create_definition("re-trace-header", 0, v1);

  return definition;
}

uint64_t ___ZN2re11TraceFramer6createEv_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  while (1)
  {
    *temp_buffer = 0;
    if (!nw_framer_parse_input(v2, 8uLL, 8uLL, temp_buffer, &__block_literal_global_3))
    {
      break;
    }

    v3 = nw_framer_message_create(v2);
    nw_framer_message_set_value(v3, "type", temp_buffer[4], 0);
    v4 = nw_framer_deliver_input_no_copy(v2, bswap32(*temp_buffer), v3, 1);

    if (!v4)
    {
      v5 = 0;
      goto LABEL_6;
    }
  }

  v5 = 8;
LABEL_6:

  return v5;
}

uint64_t ___ZN2re11TraceFramer6createEv_block_invoke_2(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < 8 || a2 == 0)
  {
    return 0;
  }

  else
  {
    return 8;
  }
}

void ___ZN2re11TraceFramer6createEv_block_invoke_3(uint64_t a1, void *a2, NSObject *a3, size_t a4)
{
  v6 = a2;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  access_value[0] = MEMORY[0x1E69E9820];
  access_value[1] = 3221225472;
  access_value[2] = ___ZN2re11TraceFramer6createEv_block_invoke_4;
  access_value[3] = &unk_1E8721FD0;
  access_value[4] = &v12;
  v7 = nw_framer_message_access_value(a3, "type", access_value);
  if (v7)
  {
    v9 = bswap32(a4);
    v10 = *(v13 + 24);
    nw_framer_write_output(v6, &v9, 8uLL);
    nw_framer_write_output_no_copy(v6, a4);
  }

  else
  {
    v8 = *re::traceLogObjects(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v9) = 0;
      _os_log_error_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_ERROR, "TraceFramer: Could not access TraceMessageType of output message.", &v9, 2u);
    }
  }

  _Block_object_dispose(&v12, 8);
}

uint64_t ___ZN2re11TraceFramer6createEv_block_invoke_9(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  nw_framer_set_input_handler(v4, v3);
  nw_framer_set_output_handler(v4, *(a1 + 40));

  return 1;
}

void re::TraceFramer::setMessageType(re::TraceFramer *a1, unsigned int a2)
{
  v4 = re::TraceFramer::definition(a1);
  message = nw_framer_protocol_create_message(v4);

  nw_framer_message_set_value(message, "type", a2, &__block_literal_global_14_4);
  nw_content_context_set_metadata_for_protocol(a1, message);
}

void re::TraceFramer::messageType(uint64_t *__return_ptr a1@<X8>, re::TraceFramer *this@<X0>)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v4 = re::TraceFramer::definition(this);
  v5 = nw_content_context_copy_protocol_metadata(this, v4);

  if (!v5 || !(is_framer_message = nw_protocol_metadata_is_framer_message(v5)))
  {
    v9 = *re::traceLogObjects(is_framer_message);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      v10 = "TraceFramer: Could not get framer message from context.";
      goto LABEL_11;
    }

LABEL_6:
    *a1 = 0;
    goto LABEL_7;
  }

  access_value[0] = MEMORY[0x1E69E9820];
  access_value[1] = 3221225472;
  access_value[2] = ___ZN2re11TraceFramer11messageTypeEPv_block_invoke;
  access_value[3] = &unk_1E8721FD0;
  access_value[4] = &v13;
  v7 = nw_framer_message_access_value(v5, "type", access_value);
  if (!v7)
  {
    v9 = *re::traceLogObjects(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      v10 = "TraceFramer: Could not get TraceMessageType from the framer message.";
LABEL_11:
      _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, v10, v11, 2u);
      goto LABEL_6;
    }

    goto LABEL_6;
  }

  v8 = v14;
  *a1 = 1;
  *(a1 + 1) = *(v8 + 24);
LABEL_7:

  _Block_object_dispose(&v13, 8);
}

NSObject **re::TraceClient::TraceClient(NSObject **a1, dispatch_queue_t target)
{
  v3 = dispatch_queue_create_with_target_V2("trace client", 0, target);
  *a1 = v3;
  a1[1] = 0;
  *(a1 + 4) = 0;
  a1[3] = 0;
  a1[4] = 0;
  *(a1 + 10) = 1;
  a1[7] = 0;
  a1[8] = 0;
  a1[6] = 0;
  *(a1 + 18) = 0;
  a1[10] = 0;
  a1[11] = re::s_nullClientDelegate;
  re::TraceClient::initParameters(a1);
  return a1;
}

void re::TraceClient::initParameters(re::TraceClient *this)
{
  v2 = MEMORY[0x1E69075D0]();
  v3 = *(this + 3);
  *(this + 3) = v2;

  stack = nw_parameters_copy_default_protocol_stack(*(this + 3));
  v4 = MEMORY[0x1E6907640]();
  nw_protocol_stack_set_transport_protocol(stack, v4);

  v6 = re::TraceFramer::definition(v5);
  options = nw_framer_create_options(v6);

  nw_protocol_stack_prepend_application_protocol(stack, options);
}

void re::TraceClient::~TraceClient(re::TraceClient *this)
{
  re::TraceClient::forceCancel(this);
  re::DynamicArray<re::SceneCompatibilityVariant>::deinit(this + 48);
}

void re::TraceClient::forceCancel(re::TraceClient *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    if (*(this + 4) != 5)
    {
      nw_connection_force_cancel(v2);
      v2 = *(this + 1);
    }

    *(this + 1) = 0;
  }
}

void re::TraceClient::addTargetApp(re::TraceClient *this, const char *a2, uint64_t a3)
{
  if (a2 && a3)
  {
    v7 = a3;
    v5 = re::DynamicArray<re::TraceTargetAppInfo>::add((this + 48), &v7);
    if (v8)
    {
      if (v9)
      {
        (*(*v8 + 40))(v5);
      }
    }
  }

  else
  {
    v6 = *re::traceLogObjects(this);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v7) = 0;
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "TraceClient: Invalid app bundleID or peerID", &v7, 2u);
    }
  }
}

void re::TraceClient::connect(nw_parameters_t *this, const char *a2, const char *a3)
{
  re::TraceClient::disconnect(this);
  re::TraceClient::forceCancel(this);
  host = nw_endpoint_create_host(a2, a3);
  v7 = this[4];
  this[4] = host;

  v8 = nw_connection_create(this[4], this[3]);
  v9 = this[1];
  this[1] = v8;

  re::TraceClient::startConnection(this);
}

void re::TraceClient::disconnect(re::TraceClient *this)
{
  v2 = *(this + 1);
  if (v2 && *(this + 4) != 5)
  {
    nw_connection_send(v2, 0, *MEMORY[0x1E6977E98], 1, *MEMORY[0x1E6977E80]);
    nw_connection_cancel(*(this + 1));

    re::DynamicArray<re::SceneCompatibilityVariant>::clear(this + 48);
  }
}

void re::TraceClient::startConnection(id *this)
{
  v2 = *this;
  v3 = this[1];
  nw_connection_set_queue(this[1], *this);
  v4 = this[1];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = ___ZN2re11TraceClient15startConnectionEv_block_invoke;
  v7[3] = &unk_1E8722040;
  v8 = v2;
  v9 = v3;
  v5 = v3;
  v6 = v2;
  nw_connection_set_state_changed_handler(v4, v7);
  nw_connection_start(this[1]);
}

void re::TraceClient::connectWithFileHandle(re::TraceClient *this, uint64_t a2)
{
  re::TraceClient::disconnect(this);
  re::TraceClient::forceCancel(this);
  v3 = nw_connection_create_with_connected_socket_and_parameters();
  v4 = *(this + 1);
  *(this + 1) = v3;

  re::TraceClient::startConnection(this);
}

void ___ZN2re11TraceClient15startConnectionEv_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v30 = *MEMORY[0x1E69E9840];
  if (specific)
  {
    v7 = specific;
    v8 = *(a1 + 40);
    v9 = a3;
    v10 = v9;
    if (v7[1] != v8)
    {
LABEL_3:

      goto LABEL_6;
    }

    v12 = *re::traceLogObjects(v9);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v12;
      *buf = 136315138;
      *&buf[4] = nw_connection_state_to_string();
      _os_log_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_DEFAULT, "TraceClient connection state = %s", buf, 0xCu);
    }

    v14 = *(v7 + 4);
    *(v7 + 4) = v4;
    if (v4 > 3)
    {
      if (v4 != 4)
      {
        if (v4 == 5)
        {
          if (v14 != 4)
          {
            (*(v7[11]->isa + 5))(v7[11]);
          }

          v25 = v7[1];
          v7[1] = 0;
        }

        goto LABEL_3;
      }

      (*(v7[11]->isa + 5))(v7[11]);
    }

    else if (v4 != 1)
    {
      if (v4 != 3)
      {
        goto LABEL_3;
      }

      (*(v7[11]->isa + 2))(v7[11]);
      if (v7[8])
      {
        if (!v7[1] || *(v7 + 4) == 5)
        {
LABEL_20:
          re::TraceClient::scheduleReceive(v7, v15);
          goto LABEL_3;
        }

        *buf = &unk_1F5D0CAE0;
        *&buf[8] = 0u;
        memset(v29, 0, 24);
        re::zerocopy::DispatchWriteStream::clear(buf);
        *(v29 + 8) = vdupq_n_s64(0x1000uLL);
        *&buf[16] = dispatch_data_create_alloc();
        v26 = &v27;
        v27 = buf;
        re::TraceTargetAppInfoWriter::write(&v26, (v7 + 6), v16, v17);
        re::zerocopy::DispatchWriteStream::mergeTail(buf);
        v18 = *&buf[8];
        *&buf[8] = 0;
        re::zerocopy::DispatchWriteStream::clear(buf);
        *buf = &unk_1F5D0CAE0;
        re::zerocopy::DispatchWriteStream::clear(buf);
        v19 = nw_content_context_create("re-trace");
        re::TraceFramer::setMessageType(v19, 4u);
        nw_connection_send(v7[1], v18, v19, 1, &__block_literal_global_5_2);
      }

      if (v7[1])
      {
        if (*(v7 + 4) != 5)
        {
          v20 = *(v7 + 10);
          *buf = &unk_1F5D0CAE0;
          *&buf[8] = 0u;
          memset(v29, 0, 24);
          re::zerocopy::DispatchWriteStream::clear(buf);
          *(v29 + 8) = vdupq_n_s64(0x20uLL);
          *&buf[16] = dispatch_data_create_alloc();
          v27 = buf;
          re::OPackWriter::writeInteger(&v27, v20, v21, v22);
          re::zerocopy::DispatchWriteStream::mergeTail(buf);
          v23 = *&buf[8];
          *&buf[8] = 0;
          re::zerocopy::DispatchWriteStream::clear(buf);
          *buf = &unk_1F5D0CAE0;
          re::zerocopy::DispatchWriteStream::clear(buf);
          v24 = nw_content_context_create("re-trace");
          re::TraceFramer::setMessageType(v24, 1u);
          nw_connection_send(v7[1], v23, v24, 1, &__block_literal_global_57);
        }
      }

      goto LABEL_20;
    }

    re::TraceClient::disconnect(v7);
    goto LABEL_3;
  }

  v11 = *re::traceLogObjects(0);
  if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    return;
  }

  v8 = v11;
  *buf = 136315138;
  *&buf[4] = nw_connection_state_to_string();
  _os_log_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_DEFAULT, "TraceClient: connection state changed (%s) for detached connection", buf, 0xCu);
LABEL_6:
}

void re::TraceClient::scheduleReceive(id *this, re::TraceClient *a2)
{
  v3 = *this;
  v4 = this[1];
  completion[0] = MEMORY[0x1E69E9820];
  completion[1] = 3221225472;
  completion[2] = ___ZN2re11TraceClient15scheduleReceiveEPS0__block_invoke;
  completion[3] = &unk_1E8722068;
  v7 = v3;
  v5 = v3;
  nw_connection_receive_message(v4, completion);
}

void ___ZN2re11TraceClient15scheduleReceiveEPS0__block_invoke(uint64_t a1, void *a2, void *a3, int a4, void *a5)
{
  v32 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a5;
  if (specific)
  {
    v14 = specific;
    if (v9 && v10)
    {
      re::TraceFramer::messageType(v19, v10);
      if (v19[0] == 1)
      {
        v15 = v19[1];
        v16 = v9;
        v17 = v16;
        if (v15 == 3)
        {
          LODWORD(v21[0]) = 0;
          memset(v20, 0, sizeof(v20));
          *(v21 + 4) = 0x7FFFFFFFLL;
          re::zerocopy::DispatchReadStream::DispatchReadStream(v23, v17);
          re::OPackReader::OPackReader(buf, v23);
          v22 = buf;
          if (re::TransferReportReader::read(&v22, v20))
          {
            (*(**(v14 + 11) + 32))(*(v14 + 11), v20);
          }

          if (v27)
          {
            if (v31)
            {
              (*(*v27 + 40))(v27);
            }

            v31 = 0;
            v28 = 0;
            v29 = 0;
            v27 = 0;
            ++v30;
          }

          re::OPackReader::Buffer::~Buffer(v26);
          re::zerocopy::BufferedReadStream::~BufferedReadStream(v25);
          re::zerocopy::DispatchReadStream::~DispatchReadStream(v23);
          re::HashTable<unsigned long,re::SessionTransferReport,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::deinit(&v20[1]);
        }

        else if (v15 == 2)
        {
          LOBYTE(v20[0]) = 0;
          v21[0] = 0;
          memset(v20 + 8, 0, 36);
          re::zerocopy::DispatchReadStream::DispatchReadStream(v23, v16);
          re::OPackReader::OPackReader(buf, v23);
          v22 = buf;
          if (re::TraceDeltaReader::read(&v22, v20))
          {
            (*(**(v14 + 11) + 24))(*(v14 + 11), v20);
          }

          if (v27)
          {
            if (v31)
            {
              (*(*v27 + 40))(v27);
            }

            v31 = 0;
            v28 = 0;
            v29 = 0;
            v27 = 0;
            ++v30;
          }

          re::OPackReader::Buffer::~Buffer(v26);
          re::zerocopy::BufferedReadStream::~BufferedReadStream(v25);
          re::zerocopy::DispatchReadStream::~DispatchReadStream(v23);
          re::DynamicArray<re::TraceEntry>::deinit(&v20[1]);
        }

        else
        {
          v18 = *re::traceLogObjects(v16);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            buf[0] = 67109120;
            buf[1] = v15;
            _os_log_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_DEFAULT, "TraceClient received unexpected TraceMessageType: %hhu", buf, 8u);
          }
        }
      }

      goto LABEL_27;
    }

    if (v9 || !a4)
    {
LABEL_27:
      re::TraceClient::scheduleReceive(v14, v13);
      goto LABEL_28;
    }

    re::TraceClient::disconnect(specific);
  }

LABEL_28:
}

FILE *re::TraceClientDelegateNone::clientLoadedDelta(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v10 = *MEMORY[0x1E69E9840];
  v1 = *MEMORY[0x1E69E9858];
  v7 = &unk_1F5D0C9A0;
  v8 = v1;
  v9 = 0;
  v4[0] = &v7;
  v4[1] = v5;
  v5[0] = &unk_1F5D1A050;
  v5[9] = 0;
  v6 = 257;
  re::TraceDump::dump(v4, v2);
  v7 = &unk_1F5D0C9A0;
  result = v8;
  if (v8)
  {
    if (v9 == 1)
    {
      return fclose(v8);
    }
  }

  return result;
}

uint64_t re::TracePersistenceUtils::copyAll(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v25[0] = 0;
  v27 = 0;
  memset(&v25[8], 0, 32);
  v26 = 0;
  v6 = (*(*a2 + 64))(a2, v25);
  if (v6)
  {
    (*(*a1 + 16))(a1);
    (*(*a1 + 72))(a1);
    (*(*a1 + 32))(a1, v25);
    (*(*a2 + 88))(a2);
    v8 = v7;
    v9 = 0;
    while (1)
    {
      v22[0] = 0;
      v24 = 0;
      memset(&v22[8], 0, 32);
      v23 = 0;
      v10 = (*(*a2 + 48))(a2, v9, v22);
      v19[0] = 0;
      v21 = 0;
      memset(&v19[8], 0, 32);
      v20 = 0;
      v11 = (*(*a2 + 56))(a2, v9, v19);
      v12 = v11;
      if (!v10)
      {
        break;
      }

      v13 = *(a3 + 32);
      if (v13)
      {
        (*(*v13 + 16))(v13, v22);
      }

      if (v12)
      {
        goto LABEL_9;
      }

      v14 = 0;
      v15 = v22;
LABEL_15:
      (*(*a1 + 40))(a1, v15, v14);
LABEL_16:
      re::DynamicArray<re::TraceEntry>::deinit(&v19[16]);
      re::DynamicArray<re::TraceEntry>::deinit(&v22[16]);
      if (++v9 > v8)
      {
        (*(*a1 + 24))(a1);
        goto LABEL_20;
      }
    }

    if (!v11)
    {
      v17 = *re::traceLogObjects(v11);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v29 = v9;
        _os_log_impl(&dword_1E1C61000, v17, OS_LOG_TYPE_DEFAULT, "Frame %zu contains neither snapshot nor delta. Skipping", buf, 0xCu);
      }

      goto LABEL_16;
    }

LABEL_9:
    v16 = *(a3 + 32);
    if (v16)
    {
      (*(*v16 + 16))(v16, v19);
    }

    if (v10)
    {
      v15 = v22;
    }

    else
    {
      v15 = 0;
    }

    v14 = v19;
    goto LABEL_15;
  }

LABEL_20:
  re::DynamicArray<re::TraceEntry>::deinit(&v25[16]);
  return v6;
}

void re::TracePersistenceSqlite::~TracePersistenceSqlite(sqlite3_stmt **this)
{
  *this = &unk_1F5D1A1C0;
  if (this[2])
  {
    sqlite3_finalize(this[3]);
    this[3] = 0;
    sqlite3_finalize(this[4]);
    this[4] = 0;
    sqlite3_finalize(this[5]);
    this[5] = 0;
    sqlite3_finalize(this[6]);
    this[6] = 0;
    sqlite3_close(this[2]);
    this[2] = 0;
  }
}

{
  re::TracePersistenceSqlite::~TracePersistenceSqlite(this);

  JUMPOUT(0x1E6906520);
}

BOOL re::TracePersistenceSqlite::createFile(sqlite3 **this, const char *filename)
{
  if (sqlite3_open_v2(filename, this + 2, 6, 0))
  {
    return 0;
  }

  result = re::TracePersistenceSqlite::createTables(this);
  if (result)
  {
    result = re::TracePersistenceSqlite::createStatements(this);
    if (result)
    {
      (*(*this + 9))(this);
      return 1;
    }
  }

  return result;
}

uint64_t re::TracePersistenceSqlite::add(sqlite3_stmt **this, const re::TraceDelta *a2, const re::TraceDelta *a3, int a4)
{
  v5 = a3;
  if (a2)
  {
    if (v15 && v19)
    {
      (*(*v15 + 40))();
    }

    if (!v5)
    {
      LOBYTE(v15) = 1;
      v20 = 0;
      v17 = 0;
      *v18 = 0;
      v5 = a2;
      v16 = 0;
LABEL_11:
      v9 = *(v5 + 1);
      v8 = v21[0];
      goto LABEL_12;
    }

LABEL_8:
    if (v14[0] && v14[4])
    {
      (*(*v14[0] + 40))();
    }

    goto LABEL_11;
  }

  v8 = 1;
  v21[0] = 1;
  v25 = 0;
  v23 = 0;
  *n = 0;
  v22 = 0;
  if (a3)
  {
    goto LABEL_8;
  }

  LOBYTE(v15) = 1;
  v20 = 0;
  v17 = 0;
  *v18 = 0;
  v9 = 0.0;
  v16 = 0;
LABEL_12:
  sqlite3_bind_int(this[3], 1, a4);
  sqlite3_bind_double(this[3], 2, v9);
  v10 = this[3];
  if (v8)
  {
    sqlite3_bind_blob(v10, 3, v25, n[0], 0);
  }

  else
  {
    sqlite3_bind_null(v10, 3);
  }

  v11 = v15;
  v12 = this[3];
  if (v15 == 1)
  {
    sqlite3_bind_blob(v12, 4, v20, v18[0], 0);
  }

  else
  {
    sqlite3_bind_null(v12, 4);
  }

  sqlite3_step(this[3]);
  sqlite3_reset(this[3]);
  sqlite3_bind_null(this[3], 3);
  sqlite3_bind_null(this[3], 4);
  if (v11 && v16 && v20)
  {
    (*(*v16 + 40))();
  }

  if ((v8 & 1) != 0 && v22 && v25)
  {
    (*(*v22 + 40))();
  }

  return 1;
}

uint64_t re::anonymous namespace::toOpack(re::_anonymous_namespace_ *this, const re::TraceDelta *a2)
{
  *(this + 4) = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = 0;
  *(this + 6) = 0;
  re::DynamicArray<BOOL>::setCapacity(this, 0x1000uLL);
  v7[0] = &unk_1F5D0C9F0;
  v7[1] = this;
  v6 = v7;
  v5 = &v6;
  return re::TraceDeltaWriter::writeDelta(&v5, a2);
}

uint64_t re::TracePersistenceSqlite::saveFrame(re::TracePersistenceSqlite *this, const re::TraceDelta *a2, const re::TraceDelta *a3)
{
  result = re::TracePersistenceSqlite::add(this, a2, a3, *(this + 2));
  ++*(this + 2);
  return result;
}

uint64_t re::TracePersistenceSqlite::loadSnapshotFromRow(sqlite3_stmt **this, int a2, re::TraceDelta *a3)
{
  sqlite3_reset(this[4]);
  sqlite3_bind_int(this[4], 1, a2);
  if (sqlite3_step(this[4]) != 100)
  {
    return 0;
  }

  sqlite3_column_blob(this[4], 1);
  if (sqlite3_column_bytes(this[4], 1) < 1)
  {
    return 0;
  }

  if (v9[0] != 1)
  {
    return 0;
  }

  v6 = v12;
  if (v10 && v6)
  {
    (*(*v10 + 40))();
  }

  return v7;
}

uint64_t re::anonymous namespace::fromOpack(uint64_t a1, uint64_t a2, re::TraceDelta *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v7[0] = &unk_1F5D0CA98;
  v7[1] = a2;
  v7[2] = a2;
  v7[3] = a2 + a1;
  re::OPackReader::OPackReader(v8, v7);
  v6 = v8;
  v4 = re::TraceDeltaReader::read(&v6, a3);
  if (v11)
  {
    if (v15)
    {
      (*(*v11 + 40))();
    }

    v15 = 0;
    v12 = 0;
    v13 = 0;
    v11 = 0;
    ++v14;
  }

  re::OPackReader::Buffer::~Buffer(&v10);
  re::zerocopy::BufferedReadStream::~BufferedReadStream(&v9);
  return v4;
}

uint64_t re::TracePersistenceSqlite::loadDelta(sqlite3_stmt **this, int a2, re::TraceDelta *a3)
{
  sqlite3_reset(this[5]);
  sqlite3_bind_int(this[5], 1, a2);
  if (sqlite3_step(this[5]) != 100)
  {
    return 0;
  }

  sqlite3_column_blob(this[5], 1);
  if (sqlite3_column_bytes(this[5], 1) < 1)
  {
    return 0;
  }

  if (v9[0] != 1)
  {
    return 0;
  }

  v6 = v12;
  if (v10 && v6)
  {
    (*(*v10 + 40))();
  }

  return v7;
}

uint64_t re::TracePersistenceSqlite::truncate(sqlite3 **this)
{
  result = sqlite3_exec(this[2], "DELETE FROM rk_frames", 0, 0, 0);
  *(this + 2) = 0;
  return result;
}

uint64_t re::TracePersistenceSqlite::findSnapshot(sqlite3_stmt **this, int a2)
{
  sqlite3_reset(this[6]);
  sqlite3_bind_int(this[6], 1, a2);
  if (sqlite3_step(this[6]) == 100)
  {
    return sqlite3_column_int(this[6], 0);
  }

  else
  {
    return -1;
  }
}

uint64_t re::anonymous namespace::performCompression(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v33 = *MEMORY[0x1E69E9840];
  v21 = 0;
  v19 = 0uLL;
  v18 = 0;
  v20 = 0;
  re::DynamicArray<BOOL>::setCapacity(&v18, 0x8000uLL);
  memset(&stream, 0, sizeof(stream));
  compression_stream_init(&stream, v2, COMPRESSION_LZFSE);
  stream.src_ptr = v6;
  stream.src_size = v4;
  while (1)
  {
    stream.dst_ptr = __src;
    stream.dst_size = 0x8000;
    v9 = compression_stream_process(&stream, 1);
    if (v9 > COMPRESSION_STATUS_END)
    {
      break;
    }

    v10 = stream.dst_ptr - __src;
    v11 = *(&v19 + 1);
    re::DynamicArray<BOOL>::resize(&v18, stream.dst_ptr - __src + *(&v19 + 1));
    v12 = *(&v19 + 1);
    if (*(&v19 + 1) <= v11)
    {
      v22 = 0;
      memset(v32, 0, sizeof(v32));
      v14 = MEMORY[0x1E69E9C10];
      v15 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v24 = 136315906;
      v25 = "operator[]";
      v26 = 1024;
      if (v15)
      {
        v16 = 3;
      }

      else
      {
        v16 = 2;
      }

      v27 = 789;
      v28 = 2048;
      v29 = v11;
      v30 = 2048;
      v31 = v12;
      _os_log_send_and_compose_impl(v16, &v22, v32, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v24, 38, stream.dst_ptr, stream.dst_size);
      _os_crash_msg();
      __break(1u);
    }

    memcpy((v21 + v11), __src, v10);
    if (v9)
    {
      result = compression_stream_destroy(&stream);
LABEL_7:
      *(v8 + 8) = v18;
      *(v8 + 16) = v19;
      *(v8 + 40) = v21;
      *(v8 + 32) = 1;
      *v8 = 1;
      return result;
    }
  }

  result = compression_stream_destroy(&stream);
  if (v9 != COMPRESSION_STATUS_ERROR)
  {
    goto LABEL_7;
  }

  result = v18;
  *v8 = 0;
  if (result && v21)
  {
    return (*(*result + 40))(result);
  }

  return result;
}

void re::TracePersistenceMemory::TracePersistenceMemory(re::TracePersistenceMemory *this)
{
  *this = &unk_1F5D1A258;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  *(this + 1) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  re::DynamicArray<re::TracePersistenceMemory::Entry>::setCapacity(this + 1, 0x400uLL);
  operator new();
}

void *re::DynamicArray<re::TracePersistenceMemory::Entry>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        result = re::DynamicArray<re::TracePersistenceMemory::Entry>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (a2 >> 57)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 128, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v21, v23);
          __break(1u);
        }

        else
        {
          v2 = a2 << 7;
          result = (*(*result + 32))(result, a2 << 7, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_16;
            }

            goto LABEL_11;
          }
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v22, v24);
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_16:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = v8 + (v9 << 7);
        v11 = v7;
        do
        {
          *v11 = *v8;
          *(v11 + 1) = *(v8 + 8);
          v11[7] = 0;
          v11[4] = 0;
          v11[5] = 0;
          v11[3] = 0;
          *(v11 + 12) = 0;
          v12 = v8 + 24;
          v13 = *(v8 + 32);
          v11[3] = *(v8 + 24);
          *(v8 + 24) = 0;
          v11[4] = v13;
          *(v8 + 32) = 0;
          v14 = v11[5];
          v11[5] = *(v8 + 40);
          *(v8 + 40) = v14;
          v15 = v11[7];
          v11[7] = *(v8 + 56);
          *(v8 + 56) = v15;
          ++*(v8 + 48);
          ++*(v11 + 12);
          *(v11 + 64) = *(v8 + 64);
          *(v11 + 9) = *(v8 + 72);
          v11[15] = 0;
          v11[12] = 0;
          v11[13] = 0;
          v11[11] = 0;
          *(v11 + 28) = 0;
          v16 = *(v8 + 88);
          v17 = *(v8 + 96);
          v18 = v8 + 88;
          v11[11] = v16;
          v11[12] = v17;
          *v18 = 0;
          *(v18 + 8) = 0;
          v19 = v11[13];
          v11[13] = *(v18 + 16);
          *(v18 + 16) = v19;
          v20 = v11[15];
          v11[15] = *(v18 + 32);
          *(v18 + 32) = v20;
          ++*(v18 + 24);
          ++*(v11 + 28);
          re::DynamicArray<re::TraceEntry>::deinit(v18);
          re::DynamicArray<re::TraceEntry>::deinit(v12);
          v11 += 16;
          v8 = v18 + 40;
        }

        while (v8 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

void re::TracePersistenceMemory::~TracePersistenceMemory(re::TracePersistenceMemory *this)
{
  *this = &unk_1F5D1A258;
  v2 = *(this + 6);
  if (v2)
  {
    re::DynamicArray<re::TraceEntry>::deinit(v2 + 16);
    MEMORY[0x1E6906520](v2, 0x1020C4094B8BC74);
  }

  v3 = *(this + 1);
  *(this + 6) = 0;
  if (v3)
  {
    v4 = *(this + 5);
    if (v4)
    {
      v5 = *(this + 3);
      if (v5)
      {
        v6 = v5 << 7;
        v7 = v4 + 88;
        do
        {
          re::DynamicArray<re::TraceEntry>::deinit(v7);
          re::DynamicArray<re::TraceEntry>::deinit(v7 - 64);
          v7 += 128;
          v6 -= 128;
        }

        while (v6);
        v3 = *(this + 1);
        v4 = *(this + 5);
      }

      (*(*v3 + 40))(v3, v4);
    }

    *(this + 5) = 0;
    *(this + 2) = 0;
    *(this + 3) = 0;
    *(this + 1) = 0;
    ++*(this + 8);
  }
}

{
  re::TracePersistenceMemory::~TracePersistenceMemory(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::TracePersistenceMemory::saveMetadata(re::TracePersistenceMemory *this, const re::TraceDelta *a2)
{
  v2 = *(this + 6);
  *v2 = *a2;
  return re::DynamicArray<re::TraceEntry>::operator=((v2 + 1), a2 + 2);
}

uint64_t re::TracePersistenceMemory::saveFrame(re::TracePersistenceMemory *this, const re::TraceDelta *a2, const re::TraceDelta *a3)
{
  v4 = this;
  v20 = a2 != 0;
  if (a2)
  {
    *v21 = *a2;
    this = re::DynamicArray<re::TraceEntry>::DynamicArray(&v21[16], a2 + 2);
  }

  else
  {
    v21[0] = 0;
    v24 = 0;
    *&v21[8] = 0u;
    v22 = 0u;
    v23 = 0;
  }

  v25 = a3 != 0;
  if (a3)
  {
    *v26 = *a3;
    this = re::DynamicArray<re::TraceEntry>::DynamicArray(&v26[16], a3 + 2);
  }

  else
  {
    v26[0] = 0;
    v29 = 0;
    *&v26[8] = 0u;
    v27 = 0u;
    v28 = 0;
  }

  v5 = *(v4 + 2);
  v6 = *(v4 + 3);
  if (v6 >= v5)
  {
    v7 = v6 + 1;
    if (v5 < v6 + 1)
    {
      if (*(v4 + 1))
      {
        v8 = 2 * v5;
        v9 = v5 == 0;
        v10 = 8;
        if (!v9)
        {
          v10 = v8;
        }

        if (v10 <= v7)
        {
          v11 = v7;
        }

        else
        {
          v11 = v10;
        }

        re::DynamicArray<re::TracePersistenceMemory::Entry>::setCapacity(v4 + 1, v11);
      }

      else
      {
        re::DynamicArray<re::TracePersistenceMemory::Entry>::setCapacity(v4 + 1, v7);
        ++*(v4 + 8);
      }
    }

    v6 = *(v4 + 3);
  }

  v12 = *(v4 + 5) + (v6 << 7);
  *v12 = v20;
  *(v12 + 8) = *v21;
  *(v12 + 56) = 0;
  *(v12 + 32) = 0;
  *(v12 + 40) = 0;
  *(v12 + 24) = 0;
  *(v12 + 48) = 0;
  v13 = v22;
  *(v12 + 24) = *&v21[16];
  *(v12 + 32) = v13;
  *&v21[16] = 0;
  *&v22 = 0;
  v14 = *(v12 + 40);
  *(v12 + 40) = *(&v22 + 1);
  *(&v22 + 1) = v14;
  v15 = *(v12 + 56);
  *(v12 + 56) = v24;
  v24 = v15;
  ++v23;
  ++*(v12 + 48);
  *(v12 + 64) = v25;
  *(v12 + 72) = *v26;
  *(v12 + 120) = 0;
  *(v12 + 96) = 0;
  *(v12 + 104) = 0;
  *(v12 + 88) = 0;
  *(v12 + 112) = 0;
  v16 = v27;
  *(v12 + 88) = *&v26[16];
  *(v12 + 96) = v16;
  *&v26[16] = 0;
  *&v27 = 0;
  v17 = *(v12 + 104);
  *(v12 + 104) = *(&v27 + 1);
  *(&v27 + 1) = v17;
  v18 = *(v12 + 120);
  *(v12 + 120) = v29;
  v29 = v18;
  ++v28;
  ++*(v12 + 112);
  ++*(v4 + 3);
  ++*(v4 + 8);
  re::DynamicArray<re::TraceEntry>::deinit(&v26[16]);
  return re::DynamicArray<re::TraceEntry>::deinit(&v21[16]);
}

uint64_t re::TracePersistenceMemory::loadSnapshot(re::TracePersistenceMemory *this, unint64_t a2, re::TraceDelta *a3)
{
  if (*(this + 3) <= a2)
  {
    return 0;
  }

  v3 = *(this + 5) + (a2 << 7);
  if (*v3 != 1)
  {
    return 0;
  }

  *a3 = *(v3 + 8);
  re::DynamicArray<re::TraceEntry>::operator=(a3 + 16, (v3 + 24));
  return 1;
}

uint64_t re::TracePersistenceMemory::loadDelta(re::TracePersistenceMemory *this, unint64_t a2, re::TraceDelta *a3)
{
  if (*(this + 3) <= a2)
  {
    return 0;
  }

  v3 = *(this + 5) + (a2 << 7);
  if (*(v3 + 64) != 1)
  {
    return 0;
  }

  *a3 = *(v3 + 72);
  re::DynamicArray<re::TraceEntry>::operator=(a3 + 16, (v3 + 88));
  return 1;
}

uint64_t re::TracePersistenceMemory::loadMetadata(re::TracePersistenceMemory *this, re::TraceDelta *a2)
{
  v2 = *(this + 6);
  *a2 = *v2;
  re::DynamicArray<re::TraceEntry>::operator=(a2 + 16, (v2 + 16));
  return 1;
}

uint64_t re::TracePersistenceMemory::truncate(uint64_t this)
{
  v1 = this;
  v2 = *(this + 24);
  *(this + 24) = 0;
  if (v2)
  {
    v3 = v2 << 7;
    v4 = *(this + 40) + 88;
    do
    {
      re::DynamicArray<re::TraceEntry>::deinit(v4);
      this = re::DynamicArray<re::TraceEntry>::deinit(v4 - 64);
      v4 += 128;
      v3 -= 128;
    }

    while (v3);
  }

  ++*(v1 + 32);
  return this;
}

uint64_t re::TracePersistenceMemory::findSnapshot(re::TracePersistenceMemory *this, int a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = *(this + 3);
  v3 = v2 - 1;
  if (v2 - 1 >= a2)
  {
    v3 = a2;
  }

  if ((v3 & 0x80000000) != 0)
  {
    return 0;
  }

  while (1)
  {
    v4 = v3;
    if (v2 <= v3)
    {
      v9 = 0;
      memset(v18, 0, sizeof(v18));
      v6 = MEMORY[0x1E69E9C10];
      v10 = 136315906;
      v11 = "operator[]";
      v12 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v7 = 3;
      }

      else
      {
        v7 = 2;
      }

      v13 = 789;
      v14 = 2048;
      v15 = v4;
      v16 = 2048;
      v17 = v2;
      _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
      _os_crash_msg();
      __break(1u);
    }

    if (*(*(this + 5) + (v3 << 7)) == 1)
    {
      break;
    }

    --v3;
    if (v4 < 1)
    {
      return 0;
    }
  }

  return v4;
}

void re::TraceDirectCollector::~TraceDirectCollector(re::TraceDirectCollector *this)
{
  *this = &unk_1F5D1A2E0;
  v2 = *(this + 9);
  if (v2)
  {
    (*(*v2 + 64))(v2, this);
    *(this + 9) = 0;
  }

  re::TraceHistory::~TraceHistory((this + 80));
  re::TracePersistenceSqlite::~TracePersistenceSqlite(this + 2);
}

{
  re::TraceDirectCollector::~TraceDirectCollector(this);

  JUMPOUT(0x1E6906520);
}

void re::TraceDirectCollector::startCollecting(void *a1, uint64_t a2)
{
  if (a2)
  {
    v3 = a1[9];
    if (v3)
    {
      (*(*v3 + 64))(v3, a1);
      a1[9] = 0;
    }

    re::TraceHistory::clear((a1 + 10));
  }

  v4 = *re::traceLogObjects(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *v5 = 0;
    _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "Invalid argument to TraceDirectCollector. traceService is nullptr", v5, 2u);
  }
}

uint64_t re::TraceDirectCollector::saveToFile(re::TraceDirectCollector *this, const char *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v15 = &unk_1F5D1A1C0;
  v16 = 0;
  v17 = 0u;
  v18 = 0u;
  v19 = 0;
  v4 = re::TracePersistenceSqlite::createFile(&v15, a2);
  if (!v4)
  {
    v11 = *re::traceLogObjects(v4);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
LABEL_12:
      v9 = 1;
      goto LABEL_13;
    }

    *buf = 136315138;
    v21 = a2;
    v12 = "Unable to open '%s'\n";
    v13 = v11;
LABEL_15:
    _os_log_error_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_ERROR, v12, buf, 0xCu);
    goto LABEL_12;
  }

  v5 = *(this + 14);
  memset(v24, 0, sizeof(v24));
  v25 = re::globalAllocators(v4)[2];
  v26 = 0;
  v6 = re::TracePersistenceUtils::copyAll(&v15, v5, v24);
  v7 = v26;
  if (v26)
  {
    v7 = (**v26)(v26);
    if (v26 != v24)
    {
      v7 = (*(*v25 + 40))(v25);
    }

    v26 = 0;
  }

  v8 = *re::traceLogObjects(v7);
  if ((v6 & 1) == 0)
  {
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    *buf = 136315138;
    v21 = a2;
    v12 = "Failed to write '%s'\n";
    v13 = v8;
    goto LABEL_15;
  }

  v9 = 0;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    (*(**(this + 14) + 88))(*(this + 14));
    *buf = 134218242;
    v21 = (v10 + 1);
    v22 = 2080;
    v23 = a2;
    _os_log_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_DEFAULT, "Saved %zu frames to '%s'\n", buf, 0x16u);
    v9 = 0;
  }

LABEL_13:
  re::TracePersistenceSqlite::~TracePersistenceSqlite(&v15);
  return v9;
}

re::TraceDelta **re::TraceDirectCollector::clientLoadedDelta(re::TraceDelta **this, const re::TraceDelta *a2)
{
  v2 = a2;
  v3 = this;
  if (*(this + 9) == 1)
  {
    v4 = *a2;
    if ((v4 - 1) < 2)
    {
      v5 = *(this + 6);
      v6 = this + 2;
      a2 = 0;
LABEL_10:
      this = re::TracePersistenceSqlite::add(v6, a2, v2, v5);
      ++*(v3 + 6);
      return this;
    }

    if (v4 != 4)
    {
      if (v4 != 3)
      {
        return this;
      }

      v5 = *(this + 6);
      v6 = this + 2;
      v2 = 0;
      goto LABEL_10;
    }

    v8 = this + 2;

    return re::TracePersistenceSqlite::add(v8, a2, 0, -1);
  }

  else
  {
    v7 = this + 10;

    return re::TraceHistory::addData(v7, a2);
  }
}

void re::xpc::Connection::makeWithListenerEndpoint(void *a1@<X0>, void *a2@<X8>)
{
  v3 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithListenerEndpoint:*a1];
  *a2 = v3;
}

void re::xpc::Connection::setExportedInterface(id *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  [v3 setExportedInterface:v2];
}

void re::xpc::Connection::setExportedObject(id *this, const re::ObjCObject *a2)
{
  v2 = *a2;
  v3 = *this;
  [v3 setExportedObject:v2];
}

void re::xpc::Connection::setRemoteObjectInterface(id *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  [v3 setRemoteObjectInterface:v2];
}

void re::xpc::Connection::remoteObjectProxy(uint64_t *__return_ptr a1@<X8>, id *this@<X0>)
{
  v3 = [*this remoteObjectProxy];
  *a1 = v3;
}

void re::xpc::Connection::remoteObjectProxyWithErrorHandler(id *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = [*a1 remoteObjectProxyWithErrorHandler:a2];
  *a3 = v4;
}

void re::xpc::Connection::syncRemoteObjectProxy(id *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = [*a1 synchronousRemoteObjectProxyWithErrorHandler:a2];
  *a3 = v4;
}

void re::xpc::Connection::setQueue(id *this, const re::dispatch::Queue *a2)
{
  v2 = *a2;
  v3 = *this;
  [v3 _setQueue:v2];
}

void re::xpc::Listener::makeAnonymous(uint64_t *__return_ptr a1@<X8>)
{
  v2 = [MEMORY[0x1E696B0D8] anonymousListener];
  *a1 = v2;
}

void re::xpc::Listener::setDelegate(id *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  [v3 setDelegate:v2];
}

void re::xpc::Listener::endpoint(id *this@<X0>, void *a2@<X8>)
{
  v3 = [*this endpoint];
  *a2 = v3;
}

uint64_t OpenSubdiv::v3_1_1::Far::PatchDescriptor::GetNumControlVertices(OpenSubdiv::v3_1_1::Far::PatchDescriptor *this)
{
  v1 = *this - 1;
  if (v1 > 8)
  {
    return -1;
  }

  else
  {
    return word_1E3109A08[v1];
  }
}

void OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::~FVarLevel(OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel *this)
{
  v2 = *(this + 24);
  if (v2)
  {
    *(this + 25) = v2;
    operator delete(v2);
  }

  v3 = *(this + 21);
  if (v3)
  {
    *(this + 22) = v3;
    operator delete(v3);
  }

  v4 = *(this + 18);
  if (v4)
  {
    *(this + 19) = v4;
    operator delete(v4);
  }

  v5 = *(this + 15);
  if (v5)
  {
    *(this + 16) = v5;
    operator delete(v5);
  }

  v6 = *(this + 12);
  if (v6)
  {
    *(this + 13) = v6;
    operator delete(v6);
  }

  v7 = *(this + 9);
  if (v7)
  {
    *(this + 10) = v7;
    operator delete(v7);
  }

  v8 = *(this + 6);
  if (v8)
  {
    *(this + 7) = v8;
    operator delete(v8);
  }

  v9 = *(this + 3);
  if (v9)
  {
    *(this + 4) = v9;
    operator delete(v9);
  }
}

void OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::resizeComponents(std::vector<int> *this)
{
  std::vector<unsigned int>::resize(this + 1, ((*(this->__begin_ + 7) - *(this->__begin_ + 6)) >> 2));
  begin = this[2].__begin_;
  v8 = 0;
  v3 = this->__begin_;
  v4 = this->__begin_[1];
  v5 = (this[2].__end_ - begin);
  if (v4 <= v5)
  {
    if (v4 < v5)
    {
      this[2].__end_ = (begin + v4);
    }
  }

  else
  {
    std::vector<OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::ETag>::__append(&this[2], v4 - v5, &v8);
    v3 = this->__begin_;
  }

  std::vector<unsigned short>::resize(&this[3].__begin_, v3[2]);
  std::vector<unsigned int>::resize(this + 4, this->__begin_[2]);
  v6 = ((*(this->__begin_ + 37) - *(this->__begin_ + 36)) >> 2);
  v7 = 0;
  std::vector<unsigned short>::resize(&this[5].__begin_, v6, &v7);
}

void std::vector<unsigned short>::resize(void *result, unint64_t a2)
{
  v2 = (result[1] - *result) >> 1;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      result[1] = *result + 2 * a2;
    }
  }

  else
  {
    std::vector<unsigned short>::__append(result, a2 - v2);
  }
}

void std::vector<unsigned short>::resize(void *result, unint64_t a2, __int16 *a3)
{
  v3 = (result[1] - *result) >> 1;
  if (a2 <= v3)
  {
    if (a2 < v3)
    {
      result[1] = *result + 2 * a2;
    }
  }

  else
  {
    std::vector<unsigned short>::__append(result, a2 - v3, a3);
  }
}

void std::vector<OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::CreaseEndPair>::resize(void *result, unint64_t a2)
{
  v2 = (result[1] - *result) >> 2;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      result[1] = *result + 4 * a2;
    }
  }

  else
  {
    std::vector<OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::CreaseEndPair>::__append(result, a2 - v2);
  }
}

void OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::completeTopologyFromFaceValues(OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel *this, int a2)
{
  v180 = *MEMORY[0x1E69E9840];
  v3 = *(this + 4);
  v4 = v3 >> 2;
  v5 = (v3 >> 2) & 7;
  if (v5)
  {
    v6 = (v3 & 3) != 2;
  }

  else
  {
    v6 = 0;
  }

  v151 = v6;
  *(this + 12) = v5 == 5;
  v150 = (v4 & 6) == 4;
  *(this + 13) = v150;
  v155 = v5;
  v152 = v5 - 3;
  v149 = v5 == 3;
  *(this + 14) = (v4 & 6) == 2;
  v7 = *this;
  v8 = *(*this + 8);
  v158 = 0;
  v159 = 0;
  v157 = 0;
  if (v8)
  {
    if ((v8 & 0x80000000) == 0)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned short>>(&v157, v8);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v9 = ((*(v7 + 296) - *(v7 + 288)) >> 2);
  LOWORD(v160) = 0;
  std::vector<unsigned short>::resize(this + 15, v9, &v160);
  v10 = *this;
  v11 = *(*this + 20);
  v175 = &v178;
  v176 = v11;
  v177 = 16;
  v179 = 0;
  if (v11 <= 0x10)
  {
    v12 = v173;
    v169 = 0;
    v170 = v173;
    v171 = v11;
    v172 = 16;
    v174 = 0;
    v13 = v168;
    __p = 0;
    v165 = v168;
    v166 = v11;
    v167 = 16;
    v160 = v163;
    v161 = v11;
    v162 = 16;
  }

  else
  {
    v179 = operator new(4 * v11);
    v175 = v179;
    v177 = v11;
    v170 = v173;
    v171 = v11;
    v172 = 16;
    v174 = 0;
    v174 = operator new(4 * v11);
    v169 = 0;
    v170 = v174;
    v172 = v11;
    v165 = v168;
    v166 = v11;
    v167 = 16;
    v169 = operator new(2 * v11);
    __p = 0;
    v165 = v169;
    v167 = v11;
    v160 = v163;
    v161 = v11;
    v162 = 16;
    __p = operator new(10 * v11);
    v160 = __p;
    v162 = v11;
    v12 = v170;
    v13 = v165;
    v10 = *this;
  }

  if (*(v10 + 8) < 1)
  {
    v15 = 0;
    goto LABEL_84;
  }

  v14 = 0;
  v15 = 0;
  do
  {
    v16 = (2 * (v14 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
    v17 = *(v10 + 264);
    v18 = *(v17 + 8 * v14);
    v19 = v175;
    if (v18 >= 1)
    {
      v20 = *(v17 + 4 * v16);
      v21 = (*(v10 + 288) + 4 * v20);
      v22 = (*(v10 + 312) + 2 * v20);
      v23 = *(v10 + 24);
      v24 = *(this + 3);
      v25 = v175;
      v26 = v18;
      do
      {
        v27 = *v21++;
        v28 = *(v23 + 8 * v27 + 4);
        LODWORD(v27) = *v22++;
        *v25 = *(v24 + 4 * (v28 + v27));
        v25 = (v25 + 4);
        --v26;
      }

      while (v26);
    }

    v29 = *(v10 + 336);
    v30 = *(v29 + 4 * v16);
    v31 = *(v29 + 8 * v14);
    v32 = (*(v10 + 360) + 4 * v30);
    v33 = *(*(v10 + 432) + 2 * v14);
    if (v33)
    {
      if (v18 >= 1 && v31 >= 1)
      {
        v41 = 0;
        v42 = *(v10 + 384) + 2 * v30;
        do
        {
          v43 = v32[v41];
          v44 = *this;
          v45 = *(*this + 144);
          v46 = *(v45 + 8 * v43);
          if (v46 >= 2)
          {
            v47 = 0;
            v48 = 0;
            v49 = *(v45 + 8 * v43 + 4);
            v50 = (v44[15] + 8 * v43);
            while (v46 != v47)
            {
              v51 = *(v44[21] + 4 * v49 + 4 * v47);
              v52 = 2 * v51;
              v53 = v44[3];
              v54 = *(v53 + 8 * v51 + 4);
              v55 = v44[6] + 4 * v54;
              v56 = *(v53 + 4 * v52);
              v57 = *(v44[24] + 2 * v49 + 2 * v47);
              v58 = *(this + 3) + 4 * v54;
              v59 = *v50;
              if (*(v42 + 2 * v41) != (v59 != *(v55 + 4 * v57)))
              {
                LODWORD(v57) = v57 + 1;
              }

              if (v57 == v56)
              {
                LODWORD(v57) = 0;
              }

              v60 = *(v58 + 4 * v57);
              if (v47)
              {
                ++v47;
                if (v60 != v48)
                {
                  v61 = v157;
                  *(v157 + v59) = 1;
                  v61[v50[1]] = 1;
                  v62 = *(this + 6);
                  v63 = *(v62 + v43) & 0xFD | (2 * (v14 == v59));
                  *(v62 + v43) = v63;
                  v64 = v63 & 0xFB | (4 * (v14 == v50[1])) | 1;
                  *(v62 + v43) = v64;
                  *(v62 + v43) = v64 & 0xF7 | (8 * *(this + 13));
                  break;
                }
              }

              else
              {
                v47 = 1;
                v48 = v60;
              }
            }
          }

          ++v41;
        }

        while (v41 != v31);
      }
    }

    else if (v18 > (v33 & 4) >> 2)
    {
      v34 = (v33 >> 2) & 1;
      do
      {
        if (v34)
        {
          v35 = v34;
        }

        else
        {
          v35 = v18;
        }

        if (*(v19 + v34) != *(v19 + v35 - 1))
        {
          v36 = v32[v34];
          v37 = *(*this + 120) + 8 * v36;
          v38 = *v37;
          v39 = v157;
          *(v157 + v38) = 1;
          v39[*(v37 + 4)] = 1;
          v40 = *(this + 6);
          LOBYTE(v38) = *(v40 + v36) & 0xFD | (2 * (v14 == v38));
          *(v40 + v36) = v38;
          LOBYTE(v37) = v38 & 0xFB | (4 * (v14 == *(v37 + 4))) | 1;
          *(v40 + v36) = v37;
          *(v40 + v36) = v37 & 0xF7 | (8 * *(this + 13));
        }

        ++v34;
      }

      while (v18 != v34);
    }

    if ((v33 & 4) != 0 && !*(v157 + v14))
    {
      if (*(this + 13) == 1)
      {
        if (v18 < 1)
        {
          goto LABEL_68;
        }

        *(v157 + v14) = 1;
        if (v33)
        {
          if (v31 >= 1)
          {
            do
            {
              v75 = *v32++;
              v74 = v75;
              if ((*(*(*this + 240) + v75) & 2) != 0)
              {
                *(*(this + 6) + v74) |= 8u;
              }

              --v31;
            }

            while (v31);
          }
        }

        else
        {
          *(*(this + 6) + *v32) |= 8u;
          v70 = v32[v31 - 1];
          *(*(this + 6) + v70) |= 8u;
        }
      }

      else if (v18 == 1 && v151)
      {
        *(v157 + v14) = 1;
LABEL_68:
        *v12 = *v19;
        *v13 = 0;
LABEL_69:
        v66 = 1;
        if (v33)
        {
          goto LABEL_70;
        }

        goto LABEL_72;
      }
    }

    *v12 = *v19;
    *v13 = 0;
    if (v18 <= 1)
    {
      goto LABEL_69;
    }

    v65 = 1;
    v66 = 1;
    do
    {
      v67 = *(v19 + v65);
      if (v67 == *(v19 + v65 - 1))
      {
        v13[v65] = v13[v65 - 1];
        goto LABEL_59;
      }

      v13[v65] = v66;
      if (v66 == 2)
      {
        v68 = v12 + 2;
        if (*v12 != v67)
        {
          v12[2] = v67;
          v66 = 3;
          goto LABEL_59;
        }
      }

      else
      {
        if (v66 == 1)
        {
          v12[1] = v67;
          v66 = 2;
          goto LABEL_59;
        }

        v68 = &v12[v66];
        v69 = v12;
        if (!v66)
        {
          goto LABEL_56;
        }
      }

      v69 = v12;
      while (*v69 != v67)
      {
        if (++v69 == v68)
        {
          goto LABEL_58;
        }
      }

LABEL_56:
      if (v69 == v68)
      {
LABEL_58:
        ++v66;
        *v68 = v67;
      }

      else
      {
        v13[v65] = (v69 - v12) >> 2;
      }

LABEL_59:
      ++v65;
    }

    while (v65 != v18);
    if ((v33 & 1) == 0)
    {
      goto LABEL_72;
    }

LABEL_70:
    if (!*(v157 + v14))
    {
      *(v157 + v14) = v66 > 1;
    }

LABEL_72:
    *(*(this + 9) + 2 * v14) = v66;
    *(*(this + 12) + 4 * v14) = v15;
    v10 = *this;
    if (v66 >= 2 && v18 >= 1)
    {
      v71 = (*(this + 15) + 2 * *(*(v10 + 264) + 4 * v16));
      v72 = v13;
      do
      {
        v73 = *v72++;
        *v71++ = v73;
        --v18;
      }

      while (v18);
    }

    v15 += v66;
    ++v14;
  }

  while (v14 < *(v10 + 8));
LABEL_84:
  v76 = v15;
  std::vector<unsigned int>::resize(this + 6, v15);
  v78 = *(this + 21);
  v77 = *(this + 22);
  if (v76 <= &v77[-v78])
  {
    if (v76 < &v77[-v78])
    {
      *(this + 22) = v78 + v76;
    }
  }

  else
  {
    v79 = *(this + 23);
    if (v79 - v77 < v76 - &v77[-v78])
    {
      if ((v76 & 0x80000000) == 0)
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    v80 = v76 + v78;
    bzero(v77, v76 - &v77[-v78]);
    *(this + 22) = v80;
  }

  if ((*(this + 13) & 1) == 0)
  {
    std::vector<OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::CreaseEndPair>::resize(this + 24, v76);
  }

  v81 = *this;
  if (*(*this + 8) >= 1)
  {
    v82 = 0;
    while (1)
    {
      v83 = (2 * v82) | 1;
      v84 = *(v81 + 264);
      v85 = *(v84 + 4 * v83);
      v86 = *(v81 + 288);
      v87 = *(v84 + 8 * v82);
      v88 = *(v81 + 312);
      v89 = v87 < 1 ? 0 : *(*(this + 3) + 4 * (*(*(v81 + 24) + 8 * *(v86 + 4 * v85) + 4) + *(v88 + 2 * v85)));
      v90 = *(*(this + 9) + 2 * v82);
      v91 = *(this + 12);
      v92 = (*(this + 18) + 4 * *(v91 + 4 * v82));
      *v92 = v89;
      if (*(v157 + v82))
      {
        break;
      }

LABEL_214:
      if (++v82 >= *(v81 + 8))
      {
        goto LABEL_217;
      }
    }

    if (v90 >= 2 && v87 >= 2)
    {
      v93 = *(v84 + 4 * v83);
      v94 = v87 - 1;
      v95 = (v88 + 2 * v85 + 2);
      v96 = (v86 + 4 * v85 + 4);
      v97 = (*(this + 15) + 2 * v93 + 2);
      v98 = 1;
      do
      {
        v99 = *v97++;
        if (v98 == v99)
        {
          v92[v98++] = *(*(this + 3) + 4 * (*(*(v81 + 24) + 8 * *v96 + 4) + *v95));
        }

        ++v95;
        ++v96;
        --v94;
      }

      while (v94);
    }

    v156 = *(v91 + 4 * v82);
    v154 = *(this + 21);
    v100 = *(*(v81 + 432) + 2 * v82);
    v101 = 1;
    if ((*(this + 13) & 1) == 0 && (v100 & 0x11) == 0)
    {
      if (*(this + 14) == 1)
      {
        v101 = v90 > 2;
        if (v90 > 2 || !v149 && !v150)
        {
          goto LABEL_114;
        }

        if (v90 != 1)
        {
          v101 = 0;
          goto LABEL_114;
        }

LABEL_113:
        v101 = (v100 & 4) == 0;
      }

      else
      {
        v101 = 0;
        if (v152 <= 2 && v90 == 1)
        {
          goto LABEL_113;
        }
      }
    }

LABEL_114:
    v102 = v160;
    bzero(v160, 10 * v90);
    v81 = *this;
    v103 = *(*(this + 9) + 2 * v82);
    if (*(*(*this + 432) + 2 * v82))
    {
      if (*(*(this + 9) + 2 * v82))
      {
        v119 = v102 + 2;
        do
        {
          *(v119 - 2) = 0;
          *v119 = 1;
          v119 += 5;
          --v103;
        }

        while (v103);
      }

      goto LABEL_160;
    }

    v104 = *(v81 + 336);
    v105 = (8 * ((2 * v82) >> 1)) | 4;
    v106 = *(v104 + v105);
    v107 = 8 * v82;
    v108 = *(v104 + v107);
    v109 = *(v81 + 264);
    v110 = *(v109 + v105);
    v111 = (*(v81 + 360) + 4 * v106);
    v112 = *(v109 + v107);
    v113 = *(v109 + v107);
    if (v103 == 1 && v108 <= v113)
    {
      *v102 = 0;
      if (v108 <= 0)
      {
        LOWORD(v112) = v113;
        goto LABEL_140;
      }

      v114 = 0;
      v115 = 0;
      v116 = *(this + 6);
      while (1)
      {
        v117 = v111[v115];
        if (*(v116 + v117))
        {
          if (v114)
          {
            v102[2] = 1;
LABEL_140:
            *v102 = v112;
LABEL_160:
            if ((v101 & 1) == 0 && (*(this + 14) == 1 ? (v131 = v90 == 2) : (v131 = 0), v131))
            {
              v101 = v102[4] || v102[9] || v102[2] || v102[7] != 0;
              if (v155 == 3)
              {
                v133 = *v102;
                if (v133 != 1)
                {
                  LOBYTE(v133) = v102[5] == 1;
                }

                v101 |= v133;
              }

              if ((v102[3] != 0) != (v102[8] != 0))
              {
                v132 = 48;
              }

              else
              {
                v132 = 8;
              }
            }

            else
            {
              if (!v90)
              {
                goto LABEL_214;
              }

              v132 = 8;
            }

            v134 = (v154 + v156);
            v135 = 2;
            while (2)
            {
              *v134 = 1;
              if (v102[2])
              {
                *v134 = 5;
                goto LABEL_181;
              }

              if ((v101 & 1) != 0 || v102[4])
              {
                v136 = *v102;
                v137 = v136 == 1;
                if (v136 == a2)
                {
                  v138 = 1;
                }

                else
                {
                  v138 = 3;
                }

                goto LABEL_188;
              }

              v142 = *v102;
              v137 = v142 == 1;
              v143 = v142 == 1 && v155 != 0;
              v140 = 3;
              if (v142 == a2)
              {
                v138 = 1;
              }

              else
              {
                v138 = 3;
              }

              if (v143)
              {
LABEL_188:
                v139 = 1;
                v140 = 1;
              }

              else
              {
                v139 = 0;
              }

              if (v137)
              {
                v138 = v140;
              }

              *v134 = v138;
              v141 = v138 | ((v102[4] != 0) << 6);
              *v134 = v141;
              if (v102[4])
              {
                LOBYTE(v141) = v141 | ((*v102 - v102[4] > 1) << 7);
                *v134 = v141;
                if ((v139 & 1) == 0)
                {
                  goto LABEL_205;
                }
              }

              else if (v139)
              {
                *v134 = v141 | ((*v102 > 1u) << 7);
              }

              else
              {
                v141 = v141 & 0xFFFFFF7F | (((v138 >> 1) & 1) << 7);
                *v134 = v141;
LABEL_205:
                if (v102[3] | v100 & 0x20)
                {
                  v144 = 16;
                }

                else
                {
                  v144 = v132;
                }

                *v134 = v144 | v141;
                if ((*(this + 13) & 1) == 0)
                {
                  v145 = *(this + 24) + 4 * *(*(this + 12) + 4 * v82);
                  v146 = v102[1];
                  *(v145 + v135 - 2) = v146;
                  v147 = *v102 + v146;
                  if (v135 == 2 && v146)
                  {
                    v148 = v147 + ~v87;
                  }

                  else
                  {
                    v148 = v147 - 1;
                  }

                  *(v145 + v135) = v148;
                }
              }

LABEL_181:
              v135 += 4;
              ++v134;
              v102 += 5;
              if (!--v90)
              {
                v81 = *this;
                goto LABEL_214;
              }

              continue;
            }
          }

          *v102 = v112;
          v102[1] = v115;
          v114 = v112;
        }

        else
        {
          v118 = *(*(v81 + 240) + v117);
          if ((v118 & 4) != 0)
          {
            ++v102[4];
          }

          else if ((v118 & 8) != 0)
          {
            ++v102[3];
          }
        }

        if (v108 == ++v115)
        {
          goto LABEL_140;
        }
      }
    }

    v120 = *(this + 15) + 2 * v110;
    *v102 = 1;
    v121 = v120 + 2 * v112;
    if (v108 > v112 || *(v121 - 2))
    {
      goto LABEL_144;
    }

    v122 = *v111;
    if (*(*(this + 6) + v122))
    {
      v124 = 2;
    }

    else
    {
      v123 = *(*(v81 + 240) + v122);
      if ((v123 & 4) == 0)
      {
        if ((v123 & 8) != 0)
        {
          v124 = 3;
          goto LABEL_143;
        }

LABEL_144:
        if (v113 >= 2)
        {
          v125 = (v120 + 2);
          v126 = 1;
          do
          {
            v127 = *v125;
            if (v127 == *(v125 - 1))
            {
              v128 = v111[v126];
              if (*(*(this + 6) + v128))
              {
                ++v102[5 * *v125 + 2];
              }

              else
              {
                v129 = *(*(v81 + 240) + v128);
                if ((v129 & 4) != 0)
                {
                  ++v102[5 * *v125 + 4];
                }

                else if ((v129 & 8) != 0)
                {
                  ++v102[5 * *v125 + 3];
                }
              }
            }

            else
            {
              if (v102[5 * *v125])
              {
                ++v102[5 * *v125 + 2];
                v127 = *v125;
              }

              v102[5 * v127 + 1] = v126;
            }

            v130 = *v125++;
            ++v102[5 * v130];
            ++v126;
          }

          while (v112 != v126);
        }

        if (!*(v121 - 2) && v108 <= v112)
        {
          --v102[2];
        }

        goto LABEL_160;
      }

      v124 = 4;
    }

LABEL_143:
    ++v102[v124];
    goto LABEL_144;
  }

LABEL_217:
  operator delete(__p);
  operator delete(v169);
  operator delete(v174);
  operator delete(v179);
  if (v157)
  {
    v158 = v157;
    operator delete(v157);
  }
}

void *OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::getVertexCreaseEndValues(void *this, int a2, unsigned int a3, int *a4)
{
  v4 = *(*(*this + 264) + 8 * a2 + 4);
  v5 = *(*this + 288) + 4 * v4;
  v6 = *(*this + 312) + 2 * v4;
  v7 = (this[24] + 4 * *(this[12] + 4 * a2) + 4 * a3);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v5 + 4 * v8);
  v11 = *(*this + 24);
  v12 = *(v11 + 8 * v10);
  v13 = this[3];
  v14 = v13 + 4 * *(v11 + 4 * ((2 * v10) | 1));
  v15 = *(v5 + 4 * v9);
  v16 = *(v11 + 8 * v15);
  v17 = *(v11 + 4 * ((2 * v15) | 1));
  v18 = *(v6 + 2 * v8);
  v19 = *(v6 + 2 * v9);
  v20 = v13 + 4 * v17;
  if (!v19)
  {
    v19 = v16;
  }

  if (v12 - 1 == v18)
  {
    v21 = 0;
  }

  else
  {
    v21 = v18 + 1;
  }

  *a4 = *(v14 + 4 * v21);
  a4[1] = *(v20 + 4 * v19 - 4);
  return this;
}

void *OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::initializeFaceValuesFromVertexFaceSiblings(void *this)
{
  v1 = *this;
  v2 = *(*this + 48);
  v3 = *(*this + 56) - v2;
  if ((v3 >> 2) >= 1)
  {
    v4 = this[12];
    v5 = this[3];
    v6 = (v3 >> 2) & 0x7FFFFFFF;
    do
    {
      v7 = *v2++;
      *v5++ = *(v4 + 4 * v7);
      --v6;
    }

    while (v6);
  }

  v8 = *(v1 + 8);
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = this[9];
    do
    {
      if (*(v10 + 2 * v9) >= 2u)
      {
        v11 = (*(v1 + 264) + 8 * v9);
        v12 = *v11;
        if (v12 >= 1)
        {
          v13 = v11[1];
          v14 = (*(v1 + 288) + 4 * v13);
          v15 = (*(v1 + 312) + 2 * v13);
          v16 = (this[15] + 2 * v13);
          do
          {
            v18 = *v16++;
            v17 = v18;
            if (v18)
            {
              v19 = *(*(v1 + 24) + 8 * *v14 + 4) + *v15;
              *(this[3] + 4 * v19) += v17;
            }

            ++v15;
            ++v14;
            --v12;
          }

          while (v12);
          v8 = *(v1 + 8);
        }
      }

      ++v9;
    }

    while (v9 < v8);
  }

  return this;
}

void *OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::getEdgeFaceValues(void *this, int a2, int a3, int *a4)
{
  v4 = *this;
  v5 = (*(*this + 120) + 8 * a2);
  v6 = *v5;
  if (*(this[9] + 2 * v5[1]) + *(this[9] + 2 * v6) < 3)
  {
    if (*(v4 + 12) < 1)
    {
      v18 = this[12];
      v19 = this[18];
      *a4 = *(v19 + 4 * *(v18 + 4 * v6));
      v17 = *(v19 + 4 * *(v18 + 4 * v5[1]));
    }

    else
    {
      v16 = this[12];
      *a4 = *(v16 + 4 * v6);
      v17 = *(v16 + 4 * v5[1]);
    }

    a4[1] = v17;
  }

  else
  {
    v7 = *(*(v4 + 144) + 8 * a2 + 4);
    v8 = *(*(v4 + 168) + 4 * v7 + 4 * a3);
    v9 = *(*(v4 + 192) + 2 * v7 + 2 * a3);
    v10 = *(v4 + 24);
    LODWORD(v7) = *(v10 + 8 * v8);
    v11 = (2 * v8) | 1;
    v12 = this[3] + 4 * *(v10 + 4 * v11);
    v13 = *(v12 + 4 * v9);
    *a4 = v13;
    if (v9 + 1 < v7)
    {
      v14 = v9 + 1;
    }

    else
    {
      v14 = 0;
    }

    v15 = *(v12 + 4 * v14);
    a4[1] = v15;
    if (*v5 != *(*(v4 + 48) + 4 * *(v10 + 4 * v11) + 4 * v9))
    {
      *a4 = v15;
      a4[1] = v13;
    }
  }

  return this;
}

void *OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::getVertexEdgeValues(void *this, int a2, int *a3)
{
  v3 = *this;
  v4 = *(*this + 336);
  v5 = *(v4 + 8 * a2);
  if (v5 >= 1)
  {
    v6 = (8 * ((2 * a2) >> 1)) | 4;
    v7 = *(v4 + v6);
    v8 = (*(v3 + 360) + 4 * v7);
    v9 = (*(v3 + 384) + 2 * v7);
    v10 = *(*(v3 + 264) + v6);
    v11 = *(v3 + 288) + 4 * v10;
    v12 = *(v3 + 312) + 2 * v10;
    v13 = *(*(v3 + 432) + 2 * a2);
    v14 = *(v3 + 12);
    v15 = *(v3 + 120);
    v16 = (v5 - 1);
    v17 = v16 - 1;
    v18 = this[9];
    v19 = v16;
    v20 = v11;
    v21 = v12;
    v22 = a3;
    do
    {
      v24 = *v8++;
      v23 = v24;
      v25 = v15 + 8 * v24;
      LODWORD(v24) = *v9++;
      v26 = *(v25 + 4 * (v24 == 0));
      if (*(v18 + 2 * v26) == 1)
      {
        v27 = (this[12] + 4 * v26);
        if (!v14)
        {
          v27 = (this[18] + 4 * *v27);
        }

        v28 = *v27;
      }

      else if (v13)
      {
        v34 = *(*(v3 + 144) + 4 * ((2 * v23) | 1));
        v35 = *(*(v3 + 168) + 4 * v34);
        v36 = *(*(v3 + 192) + 2 * v34);
        v37 = *(v3 + 24);
        v38 = *(v37 + 8 * v35 + 4);
        v39 = *(v3 + 48) + 4 * v38;
        v40 = this[3] + 4 * v38;
        if (v26 == *(v39 + 4 * v36))
        {
          v28 = *(v40 + 4 * v36);
        }

        else
        {
          if (*(v37 + 8 * v35) - 1 == v36)
          {
            v47 = 0;
          }

          else
          {
            v47 = v36 + 1;
          }

          v28 = *(v40 + 4 * v47);
        }
      }

      else
      {
        if ((v13 & 4) != 0 && !v19)
        {
          v29 = *(v11 + 4 * v17);
          v30 = *(v3 + 24);
          v31 = *(v30 + 8 * v29);
          v32 = this[3] + 4 * *(v30 + 4 * ((2 * v29) | 1));
          v33 = *(v12 + 2 * v17);
          if (!*(v12 + 2 * v17))
          {
            v33 = v31;
          }

          a3[v16] = *(v32 + 4 * v33 - 4);
          goto LABEL_8;
        }

        v41 = *v20;
        v42 = *(v3 + 24);
        v43 = *(v42 + 8 * v41);
        v44 = this[3] + 4 * *(v42 + 4 * ((2 * v41) | 1));
        v45 = *v21;
        if (v43 - 1 == v45)
        {
          v46 = 0;
        }

        else
        {
          v46 = v45 + 1;
        }

        v28 = *(v44 + 4 * v46);
      }

      *v22 = v28;
LABEL_8:
      ++v22;
      ++v21;
      ++v20;
      --v19;
      --v5;
    }

    while (v5);
  }

  return this;
}

void *OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::getFaceValueTags(void *result, int a2, uint64_t a3)
{
  v3 = *(*result + 24);
  v4 = *(v3 + 8 * a2);
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = *(v3 + 8 * a2 + 4);
    v7 = result[3] + 4 * v6;
    v8 = *(*result + 48) + 4 * v6;
    do
    {
      v9 = *(v7 + 4 * v5);
      if (*(*result + 12) <= 0)
      {
        v10 = *(result[12] + 4 * *(v8 + 4 * v5));
        v9 = v10 - 1;
        v11 = (result[18] + 4 * v10);
        do
        {
          v12 = *v11++;
          ++v9;
        }

        while (v12 != *(v7 + 4 * v5));
      }

      *(a3 + v5++) = *(result[21] + v9);
    }

    while (v5 != v4);
  }

  return result;
}

uint64_t OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::getFaceCompositeValueTag(OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel *this, int a2)
{
  v2 = *this;
  v3 = *(*this + 24);
  v4 = *(v3 + 8 * a2);
  if (v4 < 1)
  {
    return 0;
  }

  v5 = 0;
  LODWORD(v6) = 0;
  v7 = *(v3 + 8 * a2 + 4);
  v8 = *(this + 3) + 4 * v7;
  v9 = *(v2 + 48) + 4 * v7;
  v10 = *(v2 + 12);
  do
  {
    v11 = *(v8 + 4 * v5);
    if (v10 <= 0)
    {
      v12 = *(*(this + 12) + 4 * *(v9 + 4 * v5));
      v11 = v12 - 1;
      v13 = (*(this + 18) + 4 * v12);
      do
      {
        v14 = *v13++;
        ++v11;
      }

      while (v14 != *(v8 + 4 * v5));
    }

    v6 = *(*(this + 21) + v11) | v6;
    ++v5;
  }

  while (v5 != v4);
  return v6;
}

void std::vector<unsigned short>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 1)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 2 * a2);
      v5 += 2 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 1);
    if (v8 < 0)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v9 = v4 - v6;
    if (v9 > v8)
    {
      v8 = v9;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned short>>(a1, v10);
    }

    v11 = (2 * (v7 >> 1));
    bzero(v11, 2 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[2 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned short>>(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::vector<OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::ETag>::__append(char **a1, size_t __len, unsigned __int8 *a3)
{
  v6 = a1[1];
  v5 = a1[2];
  if (v5 - v6 >= __len)
  {
    if (__len)
    {
      memset(a1[1], *a3, __len);
      v6 += __len;
    }

    a1[1] = v6;
  }

  else
  {
    v7 = *a1;
    v8 = (v6 - *a1);
    v9 = &v8[__len];
    if (&v8[__len] < 0)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v10 = v5 - v7;
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      operator new();
    }

    v12 = v6 - *a1;
    memset(v8, *a3, __len);
    memcpy(&v8[v7 - v6], v7, v12);
    *a1 = &v8[v7 - v6];
    a1[1] = &v8[__len];
    a1[2] = 0;
    if (v7)
    {

      operator delete(v7);
    }
  }
}

void std::vector<unsigned short>::__append(uint64_t a1, unint64_t a2, __int16 *a3)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2 <= (v5 - v6) >> 1)
  {
    if (a2)
    {
      v12 = 0;
      v13 = (a2 + 0x7FFFFFFFFFFFFFFFLL) & 0x7FFFFFFFFFFFFFFFLL;
      v14 = v13 - ((a2 + 0x7FFFFFFFFFFFFFFFLL) & 7);
      v15 = vdupq_n_s64(v13);
      v16 = v6 + 2 * a2;
      v17 = *a3;
      v18 = v14 + 8;
      v19 = (v6 + 8);
      do
      {
        v20 = vdupq_n_s64(v12);
        v21 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v20, xmmword_1E3049620)));
        if (vuzp1_s8(vuzp1_s16(v21, *v15.i8), *v15.i8).u8[0])
        {
          *(v19 - 4) = v17;
        }

        if (vuzp1_s8(vuzp1_s16(v21, *&v15), *&v15).i8[1])
        {
          *(v19 - 3) = v17;
        }

        if (vuzp1_s8(vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v20, xmmword_1E3049640)))), *&v15).i8[2])
        {
          *(v19 - 2) = v17;
          *(v19 - 1) = v17;
        }

        v22 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v20, xmmword_1E3049660)));
        if (vuzp1_s8(*&v15, vuzp1_s16(v22, *&v15)).i32[1])
        {
          *v19 = v17;
        }

        if (vuzp1_s8(*&v15, vuzp1_s16(v22, *&v15)).i8[5])
        {
          v19[1] = v17;
        }

        if (vuzp1_s8(*&v15, vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v20, xmmword_1E305F210))))).i8[6])
        {
          v19[2] = v17;
          v19[3] = v17;
        }

        v12 += 8;
        v19 += 8;
      }

      while (v18 != v12);
    }

    else
    {
      v16 = *(a1 + 8);
    }

    *(a1 + 8) = v16;
  }

  else
  {
    v7 = v6 - *a1;
    if ((a2 + (v7 >> 1)) < 0)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v8 = v7 >> 1;
    v9 = v5 - *a1;
    if (v9 <= a2 + (v7 >> 1))
    {
      v10 = a2 + (v7 >> 1);
    }

    else
    {
      v10 = v9;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned short>>(a1, v11);
    }

    v23 = 0;
    v24 = 2 * v8;
    v25 = 2 * v8 + 2 * a2;
    v26 = *a3;
    v27 = (a2 + 0x7FFFFFFFFFFFFFFFLL) & 0x7FFFFFFFFFFFFFFFLL;
    v28 = v27 - ((a2 + 0x7FFFFFFFFFFFFFFFLL) & 7) + 8;
    v29 = vdupq_n_s64(v27);
    v30 = (v24 + 8);
    do
    {
      v31 = vdupq_n_s64(v23);
      v32 = vmovn_s64(vcgeq_u64(v29, vorrq_s8(v31, xmmword_1E3049620)));
      if (vuzp1_s8(vuzp1_s16(v32, *v29.i8), *v29.i8).u8[0])
      {
        *(v30 - 4) = v26;
      }

      if (vuzp1_s8(vuzp1_s16(v32, *&v29), *&v29).i8[1])
      {
        *(v30 - 3) = v26;
      }

      if (vuzp1_s8(vuzp1_s16(*&v29, vmovn_s64(vcgeq_u64(v29, vorrq_s8(v31, xmmword_1E3049640)))), *&v29).i8[2])
      {
        *(v30 - 2) = v26;
        *(v30 - 1) = v26;
      }

      v33 = vmovn_s64(vcgeq_u64(v29, vorrq_s8(v31, xmmword_1E3049660)));
      if (vuzp1_s8(*&v29, vuzp1_s16(v33, *&v29)).i32[1])
      {
        *v30 = v26;
      }

      if (vuzp1_s8(*&v29, vuzp1_s16(v33, *&v29)).i8[5])
      {
        v30[1] = v26;
      }

      if (vuzp1_s8(*&v29, vuzp1_s16(*&v29, vmovn_s64(vcgeq_u64(v29, vorrq_s8(v31, xmmword_1E305F210))))).i8[6])
      {
        v30[2] = v26;
        v30[3] = v26;
      }

      v23 += 8;
      v30 += 8;
    }

    while (v28 != v23);
    v34 = *(a1 + 8) - *a1;
    v35 = v24 - v34;
    memcpy((v24 - v34), *a1, v34);
    v36 = *a1;
    *a1 = v35;
    *(a1 + 8) = v25;
    *(a1 + 16) = 0;
    if (v36)
    {

      operator delete(v36);
    }
  }
}

void std::vector<OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::CreaseEndPair>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 2)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 4 * a2);
      v5 += 4 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 2);
    if (v7 >> 62)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v8 = v4 - *a1;
    if (v8 >> 1 > v7)
    {
      v7 = v8 >> 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v9 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(a1, v9);
    }

    v10 = (4 * (v6 >> 2));
    bzero(v10, 4 * a2);
    v11 = &v10[4 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

void OpenSubdiv::v3_1_1::Sdc::staticTraitsTable(OpenSubdiv::v3_1_1::Sdc *this)
{
  {
    OpenSubdiv::v3_1_1::Sdc::staticTraitsTable(void)::staticTraitsTable[0] = "bilinear";
    unk_1ECF1CE60 = xmmword_1E3109A20;
    qword_1ECF1CE70 = "catmark";
    xmmword_1ECF1CE78 = xmmword_1E3109A30;
    qword_1ECF1CE88 = "loop";
    *algn_1ECF1CE90 = xmmword_1E3109A40;
  }
}

uint64_t OpenSubdiv::v3_1_1::Far::StencilTable::StencilTable(uint64_t a1, int a2, uint64_t *a3, void *a4, void *a5, void *a6, int a7, unint64_t a8)
{
  *a1 = &unk_1F5D1A330;
  *(a1 + 8) = a2;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 0u;
  return a1;
}

void OpenSubdiv::v3_1_1::Far::anonymous namespace::copyStencilData(int a1, int a2, unint64_t a3, uint64_t *a4, std::vector<int> *this, void *a6, std::vector<int> *a7, void *a8, std::vector<int> *a9, void *a10, std::vector<int> *a11, void *a12, std::vector<int> *a13, void *a14, std::vector<int> *a15, void *a16, std::vector<int> *a17, void *a18, std::vector<int> *a19, void *a20, std::vector<int> *a21)
{
  v33 = a2;
  if (a2)
  {
    v24 = 0;
  }

  else
  {
    v24 = a3;
  }

  std::vector<unsigned int>::resize(this, (a4[1] - *a4) >> 2);
  v35 = a6;
  v38 = a7;
  std::vector<unsigned int>::resize(a7, (a6[1] - *a6) >> 2);
  std::vector<unsigned int>::resize(a9, (a8[1] - *a8) >> 2);
  std::vector<unsigned int>::resize(a11, (a10[1] - *a10) >> 2);
  if (a13)
  {
    std::vector<unsigned int>::resize(a13, (a12[1] - *a12) >> 2);
  }

  if (a15)
  {
    std::vector<unsigned int>::resize(a15, (a14[1] - *a14) >> 2);
  }

  if (a17)
  {
    std::vector<unsigned int>::resize(a17, (a16[1] - *a16) >> 2);
  }

  if (a19)
  {
    std::vector<unsigned int>::resize(a19, (a18[1] - *a18) >> 2);
  }

  if (a21)
  {
    std::vector<unsigned int>::resize(a21, (a20[1] - *a20) >> 2);
  }

  v25 = *a4;
  if (v24 >= (a4[1] - *a4) >> 2)
  {
    v28 = 0;
    v27 = 0;
  }

  else
  {
    v26 = 0;
    v27 = 0;
    v28 = 0;
    do
    {
      if (((v24 == a1) & v33) != 0)
      {
        v29 = a3;
      }

      else
      {
        v29 = v24;
      }

      v30 = *(*v35 + 4 * v29);
      v31 = *(v25 + 4 * v29);
      this->__begin_[v27] = v26;
      v38->__begin_[v27] = v30;
      memcpy(&a9->__begin_[v26], (*a8 + 4 * v31), 4 * v30);
      memcpy(&a11->__begin_[v26], (*a10 + 4 * v31), 4 * v30);
      if (a13 && a13->__begin_ != a13->__end_)
      {
        memcpy(&a13->__begin_[v26], (*a12 + 4 * v31), 4 * v30);
      }

      if (a15 && a15->__begin_ != a15->__end_)
      {
        memcpy(&a15->__begin_[v26], (*a14 + 4 * v31), 4 * v30);
      }

      if (a17 && a17->__begin_ != a17->__end_)
      {
        memcpy(&a17->__begin_[v26], (*a16 + 4 * v31), 4 * v30);
      }

      if (a19 && a19->__begin_ != a19->__end_)
      {
        memcpy(&a19->__begin_[v26], (*a18 + 4 * v31), 4 * v30);
      }

      if (a21 && a21->__begin_ != a21->__end_)
      {
        memcpy(&a21->__begin_[v26], (*a20 + 4 * v31), 4 * v30);
      }

      v26 += v30;
      ++v27;
      v28 += v30;
      v24 = v29 + 1;
      v25 = *a4;
    }

    while (v29 + 1 < (a4[1] - *a4) >> 2);
  }

  std::vector<unsigned int>::resize(this, v27);
  std::vector<unsigned int>::resize(v38, v27);
  std::vector<unsigned int>::resize(a9, v28);
  if (a13 && a13->__begin_ != a13->__end_)
  {
    std::vector<unsigned int>::resize(a13, v28);
  }

  if (a15 && a15->__begin_ != a15->__end_)
  {
    std::vector<unsigned int>::resize(a15, v28);
  }

  if (a17 && a17->__begin_ != a17->__end_)
  {
    std::vector<unsigned int>::resize(a17, v28);
  }

  if (a19 && a19->__begin_ != a19->__end_)
  {
    std::vector<unsigned int>::resize(a19, v28);
  }

  if (a21 && a21->__begin_ != a21->__end_)
  {

    std::vector<unsigned int>::resize(a21, v28);
  }
}

void OpenSubdiv::v3_1_1::Far::StencilTable::~StencilTable(OpenSubdiv::v3_1_1::Far::StencilTable *this)
{
  OpenSubdiv::v3_1_1::Far::StencilTable::~StencilTable(this);

  JUMPOUT(0x1E6906520);
}

{
  *this = &unk_1F5D1A330;
  v2 = *(this + 11);
  if (v2)
  {
    *(this + 12) = v2;
    operator delete(v2);
  }

  v3 = *(this + 8);
  if (v3)
  {
    *(this + 9) = v3;
    operator delete(v3);
  }

  v4 = *(this + 5);
  if (v4)
  {
    *(this + 6) = v4;
    operator delete(v4);
  }

  v5 = *(this + 2);
  if (v5)
  {
    *(this + 3) = v5;
    operator delete(v5);
  }
}

void OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::~StencilBuilder(OpenSubdiv::v3_1_1::Far::internal::WeightTable **this)
{
  v1 = *this;
  if (v1)
  {
    OpenSubdiv::v3_1_1::Far::internal::WeightTable::~WeightTable(v1);
    MEMORY[0x1E6906520]();
  }
}

void OpenSubdiv::v3_1_1::Far::internal::WeightTable::AddWithWeight<float,OpenSubdiv::v3_1_1::Far::internal::WeightTable::ScalarAccumulator>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, float a5)
{
  v7 = a3;
  if (*(result + 248) <= a2)
  {
    v11 = *(*(result + 216) + 4 * a2);
    if (v11 >= 1)
    {
      v12 = *(*(result + 192) + 4 * a2);
      v13 = v12 + v11;
      do
      {
        OpenSubdiv::v3_1_1::Far::internal::WeightTable::merge<float,OpenSubdiv::v3_1_1::Far::internal::WeightTable::ScalarAccumulator>(result, *(*(result + 24) + 4 * v12), v7, *(result + 244), *(result + 240), a4, *(*(a4 + 48) + 4 * v12), a5);
        ++v12;
      }

      while (v12 < v13);
    }
  }

  else
  {
    v10 = *(result + 240);
    v9 = *(result + 244);

    OpenSubdiv::v3_1_1::Far::internal::WeightTable::merge<float,OpenSubdiv::v3_1_1::Far::internal::WeightTable::ScalarAccumulator>(result, a2, a3, v9, v10, a4, a5, 1.0);
  }
}

void OpenSubdiv::v3_1_1::Far::internal::StencilBuilder::Index::AddWithWeight(uint64_t result, unsigned int **a2, float a3)
{
  if (a3 != 0.0)
  {
    v3 = **a2;
    if (v3 >= 1)
    {
      v6 = a2[1];
      v7 = a2[2];
      do
      {
        if (*v7 != 0.0)
        {
          OpenSubdiv::v3_1_1::Far::internal::WeightTable::AddWithWeight<float,OpenSubdiv::v3_1_1::Far::internal::WeightTable::ScalarAccumulator>(**result, *v6, *(result + 8), **result, *v7 * a3);
        }

        ++v6;
        ++v7;
        --v3;
      }

      while (v3);
    }
  }
}

OpenSubdiv::v3_1_1::Far::internal::WeightTable *OpenSubdiv::v3_1_1::Far::internal::WeightTable::WeightTable(OpenSubdiv::v3_1_1::Far::internal::WeightTable *this, int a2, int a3, char a4)
{
  *(this + 3) = 0u;
  v7 = (this + 48);
  v8 = 2 * a2;
  if (a2 >= 2621440)
  {
    v8 = 5242880;
  }

  *(this + 12) = 0uLL;
  v9 = (this + 192);
  *(this + 30) = 0;
  *(this + 13) = 0uLL;
  *(this + 14) = 0uLL;
  *(this + 10) = 0uLL;
  *(this + 11) = 0uLL;
  *(this + 8) = 0uLL;
  *(this + 9) = 0uLL;
  *(this + 6) = 0uLL;
  *(this + 7) = 0uLL;
  *(this + 4) = 0uLL;
  *(this + 5) = 0uLL;
  *(this + 1) = 0uLL;
  *(this + 2) = 0uLL;
  *this = 0uLL;
  *(this + 62) = a2;
  if (v8 <= a2)
  {
    v8 = a2;
  }

  v10 = v8;
  *(this + 252) = a4;
  std::vector<int>::reserve(this, v8);
  std::vector<int>::reserve(this + 1, v10);
  std::vector<int>::reserve(v7, v10);
  if (a3)
  {
    std::vector<unsigned int>::resize(this + 1, a2);
    std::vector<unsigned int>::resize(v7, a2);
    std::vector<unsigned int>::resize(this, a2);
    std::vector<unsigned int>::resize(v9, a2);
    std::vector<unsigned int>::resize(this + 9, a2);
    v11 = *(this + 3);
    if (a2 >= 1)
    {
      v12 = 0;
      v13 = *(this + 24);
      v14 = *(this + 27);
      v15 = *this;
      v16 = *(this + 6);
      do
      {
        *(v13 + 4 * v12) = v12;
        *(v14 + 4 * v12) = 1;
        *(v15 + 4 * v12) = v12;
        *(v11 + 4 * v12) = v12;
        *(v16 + 4 * v12++) = 1065353216;
      }

      while (a2 != v12);
    }

    v17 = (*(this + 4) - v11) >> 2;
    *(this + 60) = v17;
    *(this + 61) = v17 - 1;
  }

  return this;
}

void std::vector<int>::reserve(std::vector<int> *this, std::vector<int>::size_type __n)
{
  if (__n > this->__end_cap_.__value_ - this->__begin_)
  {
    if (!(__n >> 62))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(this, __n);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }
}

void OpenSubdiv::v3_1_1::Far::internal::WeightTable::~WeightTable(OpenSubdiv::v3_1_1::Far::internal::WeightTable *this)
{
  v2 = *(this + 27);
  if (v2)
  {
    *(this + 28) = v2;
    operator delete(v2);
  }

  v3 = *(this + 24);
  if (v3)
  {
    *(this + 25) = v3;
    operator delete(v3);
  }

  v4 = *(this + 21);
  if (v4)
  {
    *(this + 22) = v4;
    operator delete(v4);
  }

  v5 = *(this + 18);
  if (v5)
  {
    *(this + 19) = v5;
    operator delete(v5);
  }

  v6 = *(this + 15);
  if (v6)
  {
    *(this + 16) = v6;
    operator delete(v6);
  }

  v7 = *(this + 12);
  if (v7)
  {
    *(this + 13) = v7;
    operator delete(v7);
  }

  v8 = *(this + 9);
  if (v8)
  {
    *(this + 10) = v8;
    operator delete(v8);
  }

  v9 = *(this + 6);
  if (v9)
  {
    *(this + 7) = v9;
    operator delete(v9);
  }

  v10 = *(this + 3);
  if (v10)
  {
    *(this + 4) = v10;
    operator delete(v10);
  }

  v11 = *this;
  if (*this)
  {
    *(this + 1) = v11;
    operator delete(v11);
  }
}

float OpenSubdiv::v3_1_1::Far::internal::WeightTable::merge<float,OpenSubdiv::v3_1_1::Far::internal::WeightTable::ScalarAccumulator>(uint64_t a1, int a2, int a3, int a4, int a5, uint64_t a6, float a7, float a8)
{
  if (*(a1 + 252) == 1 && *a1 != *(a1 + 8) && a4 < a5 && *(*a1 + 4 * a4) == a3)
  {
    v8 = a4;
    while (*(*(a1 + 24) + 4 * v8) != a2)
    {
      if (a5 == ++v8)
      {
        goto LABEL_8;
      }
    }

    v10 = *(a6 + 48);
    result = (a7 * a8) + *(v10 + 4 * v8);
    *(v10 + 4 * v8) = result;
  }

  else
  {
LABEL_8:
    OpenSubdiv::v3_1_1::Far::internal::WeightTable::add<float,OpenSubdiv::v3_1_1::Far::internal::WeightTable::ScalarAccumulator>(a1, a2, a3, a6, a7 * a8);
  }

  return result;
}

void OpenSubdiv::v3_1_1::Far::internal::WeightTable::add<float,OpenSubdiv::v3_1_1::Far::internal::WeightTable::ScalarAccumulator>(uint64_t a1, int a2, int a3, uint64_t a4, float a5)
{
  v16 = a3;
  v17 = a2;
  v9 = *(a1 + 8);
  if (*a1 == v9 || *(v9 - 4) != a3)
  {
    v13 = *(a1 + 192);
    v12 = (a1 + 192);
    if (((*(a1 + 200) - v13) >> 2) <= a3)
    {
      v14 = a3 + 1;
      std::vector<unsigned int>::resize(v12, v14);
      std::vector<unsigned int>::resize((a1 + 216), v14);
      v13 = *(a1 + 192);
    }

    v15 = (*(a1 + 32) - *(a1 + 24)) >> 2;
    v11 = a3;
    *(v13 + 4 * a3) = v15;
    v10 = *(a1 + 216);
    *(v10 + 4 * a3) = 0;
    *(a1 + 244) = v15;
  }

  else
  {
    v10 = *(a1 + 216);
    v11 = a3;
  }

  ++*(a1 + 240);
  ++*(v10 + 4 * v11);
  std::vector<int>::push_back[abi:nn200100](a1, &v16);
  std::vector<int>::push_back[abi:nn200100]((a1 + 24), &v17);
  v18 = a5;
  std::vector<float>::push_back[abi:nn200100]((a4 + 48), &v18);
}

void std::vector<int>::push_back[abi:nn200100](const void **a1, int *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 4;
  }

  a1[1] = v6;
}

void std::vector<float>::push_back[abi:nn200100](const void **a1, int *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 4;
  }

  a1[1] = v6;
}

uint64_t OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::BuilderContext(uint64_t a1, const OpenSubdiv::v3_1_1::Far::TopologyRefiner *a2, uint64_t a3, uint64_t a4)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = 0;
  OpenSubdiv::v3_1_1::Far::PtexIndices::initializePtexIndices((a1 + 32), a2);
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 24) = 1;
  if ((*(a1 + 9) & 0x10) != 0)
  {
    v5 = *(a1 + 12);
    if (v5 == -1)
    {
      std::vector<unsigned int>::resize((a1 + 144), ((*(**(*a1 + 40) + 464) - *(**(*a1 + 40) + 456)) >> 3));
      v6 = *(a1 + 144);
      v7 = *(a1 + 152) - v6;
      if ((v7 >> 2) >= 1)
      {
        v8 = 0;
        v9 = vdupq_n_s64(((v7 >> 2) & 0x7FFFFFFF) - 1);
        v10 = xmmword_1E3049640;
        v11 = xmmword_1E3049620;
        v12 = (v6 + 8);
        v13 = vdupq_n_s64(4uLL);
        do
        {
          v14 = vmovn_s64(vcgeq_u64(v9, v11));
          if (vuzp1_s16(v14, *v9.i8).u8[0])
          {
            *(v12 - 2) = v8;
          }

          if (vuzp1_s16(v14, *&v9).i8[2])
          {
            *(v12 - 1) = v8 + 1;
          }

          if (vuzp1_s16(*&v9, vmovn_s64(vcgeq_u64(v9, *&v10))).i32[1])
          {
            *v12 = v8 + 2;
            v12[1] = v8 + 3;
          }

          v8 += 4;
          v10 = vaddq_s64(v10, v13);
          v11 = vaddq_s64(v11, v13);
          v12 += 4;
        }

        while ((((v7 >> 2) + 3) & 0xFFFFFFFC) != v8);
      }
    }

    else
    {
      if (v5)
      {
        if ((v5 & 0x80000000) == 0)
        {
          std::vector<int>::__vallocate[abi:nn200100]((a1 + 144), v5);
        }

        std::string::__throw_length_error[abi:nn200100]();
      }

      *(a1 + 152) = 4 * v5;
    }
  }

  return a1;
}

OpenSubdiv::v3_1_1::Vtr::internal::Level *OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::GatherRegularPatchPoints(void *a1, uint64_t a2, int a3, int a4, int a5, unsigned int a6)
{
  v23 = *MEMORY[0x1E69E9840];
  result = *(*(*a1 + 40) + 8 * a4);
  if ((a6 & 0x80000000) != 0)
  {
    v10 = a1 + 12;
    v11 = -1;
  }

  else
  {
    v10 = (a1[15] + 24 * a6);
    v11 = *(a1[18] + 4 * a6);
  }

  v12 = *(*v10 + 4 * a4);
  if (!a5)
  {
    goto LABEL_8;
  }

  v13 = OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::GatherRegularPatchPoints(int *,OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::PatchTuple const&,int,int)const::boundaryEdgeMaskToType[a5];
  v14 = OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::GatherRegularPatchPoints(int *,OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::PatchTuple const&,int,int)const::boundaryEdgeMaskToFeature[a5];
  switch(v13)
  {
    case 2:
      v15 = &OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::GatherRegularPatchPoints(int *,OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::PatchTuple const&,int,int)const::permuteCorner + 64 * v14;
      result = OpenSubdiv::v3_1_1::Vtr::internal::Level::gatherQuadRegularCornerPatchPoints(result, a3, v22, v14, v11);
LABEL_11:
      v16 = 0;
      v17 = v22[0];
      do
      {
        v18 = *&v15[v16];
        v19 = v17;
        if ((v18 & 0x80000000) == 0)
        {
          v19 = v22[v18];
        }

        *(a2 + v16) = v19 + v12;
        v16 += 4;
      }

      while (v16 != 64);
      return result;
    case 1:
      v15 = &OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::GatherRegularPatchPoints(int *,OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::PatchTuple const&,int,int)const::permuteBoundary + 64 * v14;
      result = OpenSubdiv::v3_1_1::Vtr::internal::Level::gatherQuadRegularBoundaryPatchPoints(result, a3, v22, v14, v11);
      goto LABEL_11;
    case 0:
LABEL_8:
      result = OpenSubdiv::v3_1_1::Vtr::internal::Level::gatherQuadRegularInteriorPatchPoints(result, a3, v22, 0, v11);
      v15 = &OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::GatherRegularPatchPoints(int *,OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::PatchTuple const&,int,int)const::permuteRegular;
      goto LABEL_11;
  }

  if (v12)
  {
    v20 = 0;
    v21 = vdupq_n_s32(v12);
    do
    {
      *(a2 + v20 * 4) = vaddq_s32(*&v22[v20], v21);
      v20 += 4;
    }

    while (v20 != 16);
  }

  return result;
}

BOOL OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::IsPatchRegular(OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext *this, int a2, uint64_t a3, unsigned int a4)
{
  v4 = a3;
  v5 = a2;
  v33[1] = *MEMORY[0x1E69E9840];
  v7 = *(*(*this + 40) + 8 * a2);
  if ((a4 & 0x80000000) != 0)
  {
    v9 = -1;
  }

  else
  {
    v8 = *(*(this + 18) + 4 * a4);
    if (OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::getFaceCompositeValueTag(*(*(v7 + 57) + 8 * v8), a3))
    {
      v9 = v8;
    }

    else
    {
      v9 = -1;
    }
  }

  FaceCompositeVTag = OpenSubdiv::v3_1_1::Vtr::internal::Level::getFaceCompositeVTag(v7, v4, v9);
  v11 = FaceCompositeVTag;
  LOBYTE(v12) = ((FaceCompositeVTag & 2) == 0) | FaceCompositeVTag;
  if ((*(this + 4) & 8) == 0 || (FaceCompositeVTag & 0x1010) == 0)
  {
    goto LABEL_21;
  }

  v12 = (FaceCompositeVTag & 0x4001) != 0x4000;
  if ((FaceCompositeVTag & 0x5001) == 0x5000)
  {
    v30 = v5;
    OpenSubdiv::v3_1_1::Vtr::internal::Level::getFaceVTags(v7, v4, v33, v9);
    v13 = 0;
    v12 = 0;
    v32 = 0;
    v31 = 0;
    do
    {
      v14 = v33[0].i16[v13];
      if ((v14 & 0x4000) != 0)
      {
        v15 = (v14 & 0x2000) != 0 ? 2 : 1;
        if (v15 != v31)
        {
          break;
        }
      }

      v12 = v13++ > 2;
    }

    while (v13 != 4);
    v5 = v30;
  }

  if (v5 <= 1 && (v11 & 2) != 0)
  {
    OpenSubdiv::v3_1_1::Vtr::internal::Level::getFaceVTags(v7, v4, v33, v9);
    v16 = vceq_s16(vand_s8(v33[0], vdup_n_s16(0x782u)), 0x82008200820082);
    v16.i16[0] = vmaxv_u16(v16);
    if (v12 & ~v16.i32[0])
    {
      return 1;
    }
  }

  else
  {
LABEL_21:
    if (v12)
    {
      return 1;
    }
  }

  result = 0;
  if (*(this + 24) != 1 || (v11 & 7) != 6)
  {
    return result;
  }

  v18 = *(*(*this + 40) + 8 * v5);
  if ((v9 & 0x80000000) != 0)
  {
    v20 = -1;
  }

  else
  {
    v19 = *(*(this + 18) + 4 * v9);
    if (OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::getFaceCompositeValueTag(*(v18[57] + 8 * v19), v4))
    {
      v20 = v19;
    }

    else
    {
      v20 = -1;
    }
  }

  if (*(v18[3] + 8 * v4) != 4)
  {
    return 0;
  }

  OpenSubdiv::v3_1_1::Vtr::internal::Level::getFaceVTags(v18, v4, v33, v20);
  v21 = (*(this + 4) & 8) != 0 ? 6016 : 1924;
  v22 = (*(this + 4) & 8) != 0 ? 4608 : 516;
  v23 = vand_s8(vceq_s16(vand_s8(vdup_n_s16(v21), v33[0]), vdup_n_s16(v22)), 0x8000400020001);
  v23.i32[0] = vaddv_s16(v23) & 0xF;
  v24 = vcnt_s8(v23);
  v24.i16[0] = vaddlv_u8(v24);
  v25 = (v33[0].u16[0] >> 1) & 1;
  v26 = (v33[0].u16[1] >> 1) & 1;
  v27 = (v33[0].u16[2] >> 1) & 1;
  if (v24.i32[0] != 3 || v26 + v25 + v27 + ((v33[0].u16[3] >> 1) & 1) != 1)
  {
    return 0;
  }

  if (v5 > 1)
  {
    return 1;
  }

  if (v25)
  {
    v29 = v33[0].i16[2] & 0x780;
  }

  else if (v26)
  {
    v29 = v33[0].i16[3] & 0x780;
  }

  else if (v27)
  {
    v29 = v33[0].i16[0] & 0x780;
  }

  else
  {
    v29 = v33[0].i16[1] & 0x780;
  }

  return v29 == 128;
}

uint64_t OpenSubdiv::v3_1_1::Far::anonymous namespace::identifyManifoldCornerSpan(void *a1, int a2, int a3, int a4, uint64_t a5, unsigned int a6)
{
  if ((a6 & 0x80000000) != 0)
  {
    v6 = 0;
  }

  else
  {
    v6 = *(a1[57] + 8 * a6);
  }

  v7 = 1;
  v8 = *(a1[3] + 4 * ((2 * a2) | 1));
  v9 = *(a1[6] + 4 * v8 + 4 * a3);
  v10 = 2 * v9;
  v11 = a1[42];
  v12 = a1[45] + 4 * *(v11 + 8 * v9 + 4);
  v13 = *(v11 + 4 * v10);
  if (v13 < 1)
  {
LABEL_8:
    LODWORD(v14) = -1;
  }

  else
  {
    v14 = 0;
    v15 = *(a1[9] + 4 * v8 + 4 * a3);
    while (*(v12 + 4 * v14) != v15)
    {
      if (v13 == ++v14)
      {
        goto LABEL_8;
      }
    }
  }

  v16 = (v14 + 1) % v13;
  *(a5 + 2) = 0;
  *a5 = 1;
  v17 = a1[30];
  v18 = v14;
  while (1)
  {
    result = *(v12 + 4 * v18);
    v20 = *(v17 + result);
    if (v6)
    {
      result = *(*(v6 + 48) + result);
      if (result)
      {
        v20 |= 6u;
      }
    }

    if ((v20 & a4) != 0)
    {
      break;
    }

    *a5 = ++v7;
    v18 = (v13 - 1 + v18) % v13;
    if (v18 == v16)
    {
      v18 = (v14 + 1) % v13;
      goto LABEL_16;
    }
  }

  do
  {
LABEL_16:
    v21 = *(v12 + 4 * v16);
    v22 = *(v17 + v21);
    if (v6)
    {
      result = v22 | 6u;
      if (*(*(v6 + 48) + v21))
      {
        v22 |= 6u;
      }
    }

    if ((v22 & a4) != 0)
    {
      break;
    }

    *a5 = ++v7;
    v16 = (v16 + 1) % v13;
  }

  while (v16 != v14);
  *(a5 + 2) = v18;
  return result;
}

uint64_t OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::GetRegularPatchBoundaryMask(OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext *this, int a2, uint64_t a3, unsigned int a4)
{
  v4 = a3;
  v16[1] = *MEMORY[0x1E69E9840];
  v6 = *(*(*this + 40) + 8 * a2);
  if ((a4 & 0x80000000) != 0)
  {
    v8 = -1;
  }

  else
  {
    v7 = *(*(this + 18) + 4 * a4);
    if (OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::getFaceCompositeValueTag(*(v6[57] + 8 * v7), a3))
    {
      v8 = v7;
    }

    else
    {
      v8 = -1;
    }
  }

  OpenSubdiv::v3_1_1::Vtr::internal::Level::getFaceVTags(v6, v4, v16, v8);
  v9 = v16[0].i16[0] | v16[0].i16[2] | ((v16[0].i32[0] | v16[0].i32[1]) >> 16);
  if ((v9 & 0x1000) == 0)
  {
    goto LABEL_7;
  }

  if ((*(this + 4) & 8) != 0)
  {
    v12 = vand_s8(vshl_u16(v16[0], 0xFFF7FFF6FFF5FFF4), 0x8000400020001);
    LOWORD(v10) = v12.i16[0] | v12.i16[2] | ((v12.i32[0] | v12.i32[1]) >> 16);
    goto LABEL_12;
  }

  if ((v9 & 4) != 0)
  {
    v11 = vand_s8(vshl_u32(*&vmovl_u16(v16[0]), -2), 0x200000001);
    v10 = vorr_s8(vdup_lane_s32(v11, 1), v11).u32[0] | v16[0].i8[4] & 4 | (2 * v16[0].u16[3]) & 8;
  }

  else
  {
LABEL_7:
    LOWORD(v10) = 0;
  }

LABEL_12:
  v10 = v10;
  if (v9)
  {
    v13 = vbicq_s8(vbslq_s8(vmovl_s16(vceqz_s16(vand_s8(v16[0], 0x10001000100010))), xmmword_1E3102070, xmmword_1E3109A80), vmovl_s16(vceqz_s16(vand_s8(v16[0], 0x1000100010001))));
    *v13.i8 = vorr_s8(*v13.i8, *&vextq_s8(v13, v13, 8uLL));
    v10 = v13.i32[0] | v10 | v13.i32[1];
    v14 = v10 - 1;
    if (v10 - 1 < 8 && ((0x8Bu >> v14) & 1) != 0)
    {
      v10 = dword_1E3109DA4[v14];
      return OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::GetRegularPatchBoundaryMask(int,int,int)const::vBoundaryMaskToEMask[v10];
    }
  }

  if (v10)
  {
    return OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::GetRegularPatchBoundaryMask(int,int,int)const::vBoundaryMaskToEMask[v10];
  }

  return 0;
}

uint64_t OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::GetIrregularPatchCornerSpans(uint64_t a1, int a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v6 = a3;
  v39 = *MEMORY[0x1E69E9840];
  v8 = *(*(*a1 + 40) + 8 * a2);
  if (a5 & 0x80000000) == 0 && (v9 = *(*(a1 + 144) + 4 * a5), (OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::getFaceCompositeValueTag(*(v8[57] + 8 * v9), a3)))
  {
    result = OpenSubdiv::v3_1_1::Vtr::internal::Level::getFaceVTags(v8, v6, v38, v9);
    if ((v9 & 0x80000000) == 0)
    {
      result = OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::getFaceValueTags(*(v8[57] + 8 * v9), v6, v37);
    }
  }

  else
  {
    LODWORD(v9) = -1;
    result = OpenSubdiv::v3_1_1::Vtr::internal::Level::getFaceVTags(v8, v6, v38, 0xFFFFFFFF);
  }

  v11 = v8[3];
  v12 = *(v11 + 8 * v6);
  if (v12 >= 1)
  {
    v13 = 0;
    v36 = (2 * v6) | 1;
    v14 = v8[6] + 4 * *(v11 + 4 * v36);
    v15 = 7;
    if ((*(a1 + 8) & 8) == 0)
    {
      v15 = 3;
    }

    v34 = v14;
    v35 = v15;
    do
    {
      if ((v9 & 0x80000000) != 0)
      {
        v16 = 0;
      }

      else
      {
        v16 = v37[v13] & 1;
      }

      if ((*(a1 + 8) & 8) != 0)
      {
        v17 = (v38[v13] & 0x1000) != 0 && (v38[v13] & 0x780) != 256;
      }

      else
      {
        v17 = 0;
      }

      if ((v16 | v17))
      {
        v18 = v38[v13];
        v19 = a4 + 6 * v13;
        if (v18)
        {
          v23 = *(v8[6] + 4 * *(v8[3] + 4 * v36) + 4 * v13);
          v24 = v8[36];
          v25 = v8[33];
          v26 = *(v25 + 8 * v23 + 4);
          v27 = *(v25 + 8 * v23);
          v28 = v8[39];
          *(v19 + 4) = 0;
          *v19 = 0;
          if (v27 >= 1)
          {
            v29 = 0;
            v30 = v24 + 4 * v26;
            v31 = v28 + 2 * v26;
            while (*(v30 + 4 * v29) != v6 || v13 != *(v31 + 2 * v29))
            {
              if (v27 == ++v29)
              {
                goto LABEL_22;
              }
            }

            *(v19 + 2) = v29;
            *v19 = 1;
            *(v19 + 4) = 2;
          }
        }

        else
        {
        }
      }

      else
      {
        v20 = a4 + 6 * v13;
        *(v20 + 4) = 0;
        *v20 = 0;
        v18 = v38[v13];
      }

LABEL_22:
      if ((v18 & 8) != 0)
      {
        v22 = a4 + 6 * v13;
        v21 = *(v22 + 4) | 2;
      }

      else
      {
        if ((*(a1 + 8) & 8) == 0)
        {
          v21 = *(a4 + 6 * v13 + 4);
          if ((v21 & 2) == 0)
          {
            goto LABEL_35;
          }

          goto LABEL_40;
        }

        v22 = a4 + 6 * v13;
        v21 = *(v22 + 4) & 0xFD | (v18 >> 13) & (2 * ((v18 & 0x780) == 1024));
      }

      *(v22 + 4) = v21;
      if ((v21 & 2) == 0)
      {
LABEL_35:
        if (v18 & 7) == 6 && (*(a1 + 24))
        {
          v32 = (a4 + 6 * v13);
          v33 = *v32;
          if (!*v32)
          {
            v33 = *(v8[33] + 8 * *(v34 + 4 * v13));
          }

          *(v32 + 4) = v21 | (2 * (v33 == 1));
        }
      }

LABEL_40:
      ++v13;
    }

    while (v13 != v12);
  }

  return result;
}

void OpenSubdiv::v3_1_1::Far::PatchTableFactory::allocateVertexTables(OpenSubdiv::v3_1_1::Far::PatchTableFactory *this, const OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext *a2, OpenSubdiv::v3_1_1::Far::PatchTable *a3)
{
  v3 = *(a2 + 1);
  if ((-858993459 * ((*(a2 + 2) - v3) >> 2)) >= 1)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = *(v3 + v6 + 4);
      v8 += v10;
      v14 = *(v3 + v6);
      v9 += v10 * OpenSubdiv::v3_1_1::Far::PatchDescriptor::GetNumControlVertices(&v14);
      ++v7;
      v3 = *(a2 + 1);
      v6 += 20;
    }

    while (v7 < (-858993459 * ((*(a2 + 2) - v3) >> 2)));
    if (v9 && v8 != 0)
    {
      std::vector<unsigned int>::resize((a2 + 32), v9);
      std::vector<OpenSubdiv::v3_1_1::Far::PatchParam>::resize(a2 + 7, v8);
      if ((*(*this + 8) & 1) == 0)
      {
        v13 = 3;
        *(a2 + 36) = 3;
        NumControlVertices = OpenSubdiv::v3_1_1::Far::PatchDescriptor::GetNumControlVertices(&v13);
        std::vector<unsigned int>::resize((a2 + 152), v8 * NumControlVertices);
      }

      if ((*(this + 4) & 4) != 0)
      {
        std::vector<unsigned int>::resize((a2 + 224), v8, &OpenSubdiv::v3_1_1::Vtr::INDEX_INVALID);
      }
    }
  }
}

void std::vector<OpenSubdiv::v3_1_1::Far::PatchParam>::resize(void *result, unint64_t a2)
{
  v2 = (result[1] - *result) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      result[1] = *result + 8 * a2;
    }
  }

  else
  {
    std::vector<OpenSubdiv::v3_1_1::Far::PatchParam>::__append(result, a2 - v2);
  }
}

void OpenSubdiv::v3_1_1::Far::PatchTableFactory::allocateFVarChannels(OpenSubdiv::v3_1_1::Far::PatchTableFactory *this, const OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext *a2, OpenSubdiv::v3_1_1::Far::PatchTable *a3)
{
  v5 = *this;
  v7 = *(a2 + 7);
  v6 = *(a2 + 8);
  std::vector<OpenSubdiv::v3_1_1::Far::PatchTable::FVarPatchChannel>::resize(a2 + 22, ((*(this + 19) - *(this + 18)) >> 2));
  v8 = *(this + 18);
  if (((*(this + 19) - v8) >> 2) >= 1)
  {
    v9 = 0;
    v10 = 0;
    v11 = (v6 - v7) >> 3;
    do
    {
      v12 = (*(*(*(**(v5 + 40) + 456) + 8 * *(v8 + 4 * v10)) + 8) >> 2) & 7;
      *(*(a2 + 22) + v9) = v12;
      v13 = *(this + 4);
      if (*(v5 + 8))
      {
        if ((v13 & 2) != 0)
        {
          v18 = 4;
        }

        else
        {
          v18 = 3;
        }

        v20 = v18;
        v17 = &v20;
      }

      else
      {
        if (v12 == 5)
        {
          v14 = 1;
        }

        else
        {
          v14 = (v13 >> 13) & 1;
        }

        if ((v13 & 0x700) == 0x300)
        {
          v15 = 9;
        }

        else
        {
          v15 = 6;
        }

        if (v14)
        {
          v16 = 3;
        }

        else
        {
          v16 = v15;
        }

        v19 = v16;
        v17 = &v19;
      }

      OpenSubdiv::v3_1_1::Far::PatchTable::allocateFVarPatchChannelValues(a2, v17, v11, v10++);
      v8 = *(this + 18);
      v9 += 56;
    }

    while (v10 < ((*(this + 19) - v8) >> 2));
  }
}

unint64_t OpenSubdiv::v3_1_1::Far::PatchTableFactory::computePatchParam(void *a1, uint64_t a2, unsigned int a3, uint64_t a4, char a5, unsigned __int8 a6)
{
  v6 = *(*(*(a1[11] + 24 * a3) + 24) + 8 * a4) != 4;
  if (a3 < 1)
  {
    v7 = 0;
    v22 = 0;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = a1[8];
    v11 = a1[5];
    v12 = 1;
    v13 = a3;
    do
    {
      v14 = *(v10 + 8 * (v13 - 1));
      v15 = a4;
      a4 = *(v14[33] + 4 * a4);
      if (*(*(*(v11 + 8 * (v13 - 1)) + 24) + 8 * a4) == 4)
      {
        v7 = (*(v14[42] + v15) >> 3) & 3;
        if (v7 == 2)
        {
          v16 = v12 + v8;
        }

        else
        {
          v16 = v8;
        }

        if (v7)
        {
          v8 += v12;
        }

        if (v7 > 1)
        {
          v9 += v12;
          v8 = v16;
        }

        v12 = 2 * (v12 & 0x7FFF);
      }

      else
      {
        v17 = v14[11];
        v18 = *(v17 + 8 * a4);
        if (v18 < 1)
        {
LABEL_16:
          v6 = 1;
        }

        else
        {
          v19 = 0;
          v20 = v14[15] + 4 * *(v17 + 4 * ((2 * a4) | 1));
          while (*(v20 + 4 * v19) != v15)
          {
            if (v18 == ++v19)
            {
              goto LABEL_16;
            }
          }

          v6 = 1;
          v7 = v19;
        }
      }
    }

    while (v13-- > 1);
    v22 = (v8 << 22) | ((v9 & 0x3FF) << 12);
  }

  if (!v6)
  {
    v7 = 0;
  }

  v23 = (*(a2 + 4 * a4) + v7) & 0xFFFFFFF | (a6 << 28);
  if (v6)
  {
    v24 = 16;
  }

  else
  {
    v24 = 0;
  }

  return v23 | (((a3 & 0xF | ((a5 & 0xF) << 8) | v24) + v22) << 32);
}

void OpenSubdiv::v3_1_1::Far::PatchTableFactory::Create(const OpenSubdiv::v3_1_1::Far::TopologyRefiner *a1, uint64_t a2, uint64_t a3)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    OpenSubdiv::v3_1_1::Far::PatchTableFactory::createAdaptive(a1, a2, a3);
  }

  OpenSubdiv::v3_1_1::Far::PatchTableFactory::createUniform(a1, a2, a3);
}

void OpenSubdiv::v3_1_1::Far::PatchTableFactory::createUniform(const OpenSubdiv::v3_1_1::Far::TopologyRefiner *a1, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x1E69E9840];
  OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::BuilderContext(v12, a1, a2, a3);
  v5 = (a2 & (2 * (*a1 < 2uLL)));
  v11 = a1;
  v6 = (*(a1 + 8) >> 2) & 0xF;
  v8 = a2;
  if (a2)
  {
    v7 = 1;
  }

  else
  {
    v7 = v6;
  }

  v9 = v7;
  v10 = v5;
  operator new();
}

void OpenSubdiv::v3_1_1::Far::PatchTableFactory::createAdaptive(const OpenSubdiv::v3_1_1::Far::TopologyRefiner *a1, uint64_t a2, uint64_t a3)
{
  OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::BuilderContext(v4, a1, a2, a3);
  OpenSubdiv::v3_1_1::Far::PatchTableFactory::identifyAdaptivePatches(v4, v3);
  operator new();
}

void OpenSubdiv::v3_1_1::Far::PatchTableFactory::identifyAdaptivePatches(OpenSubdiv::v3_1_1::Far::PatchTableFactory *this, OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext *a2)
{
  v3 = *this;
  v4 = *(*this + 28);
  v5 = (this + 72);
  if (v4 > (*(this + 11) - *(this + 9)) >> 3)
  {
    if ((v4 & 0x80000000) == 0)
    {
      v38 = this + 72;
      std::__allocate_at_least[abi:nn200100]<std::allocator<OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::PatchTuple>>(v4);
    }

LABEL_41:
    std::string::__throw_length_error[abi:nn200100]();
  }

  LODWORD(__p[0]) = 0;
  std::vector<int>::push_back[abi:nn200100](this + 12, __p);
  std::vector<std::vector<unsigned long>>::resize(this + 15, (*(this + 19) - *(this + 18)) >> 2);
  if (((*(this + 19) - *(this + 18)) >> 2) >= 1)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = *(this + 15);
      LODWORD(__p[0]) = 0;
      std::vector<int>::push_back[abi:nn200100]((v8 + v6), __p);
      ++v7;
      v6 += 24;
    }

    while (v7 < ((*(this + 19) - *(this + 18)) >> 2));
  }

  if ((-1431655765 * ((v3[12] - v3[11]) >> 3)) >= 1)
  {
    v9 = 0;
    while (1)
    {
      v10 = *(v3[5] + 8 * v9);
      LODWORD(__p[0]) = v10[2] + *(*(this + 13) - 4);
      std::vector<int>::push_back[abi:nn200100](this + 12, __p);
      v11 = *(this + 18);
      if (((*(this + 19) - v11) >> 2) >= 1)
      {
        v12 = 0;
        v13 = 0;
        do
        {
          v14 = *(this + 15) + v12;
          LODWORD(__p[0]) = *(*(*(v10 + 57) + 8 * *(v11 + 4 * v13)) + 16) + *(*(v14 + 8) - 4);
          std::vector<int>::push_back[abi:nn200100](v14, __p);
          ++v13;
          v11 = *(this + 18);
          v12 += 24;
        }

        while (v13 < ((*(this + 19) - v11) >> 2));
      }

      if (*v10 >= 1)
      {
        break;
      }

LABEL_39:
      if (++v9 >= (-1431655765 * ((v3[12] - v3[11]) >> 3)))
      {
        return;
      }
    }

    v15 = 0;
    while (1)
    {
      v16 = *this;
      v17 = *(*(*this + 40) + 8 * v9);
      if (*(v17[12] + v15) & 1) != 0 || v9 < ((*(v16 + 8) >> 2) & 0xF) && (*(*(*(*(v16 + 64) + 8 * v9) + 408) + v15))
      {
        goto LABEL_38;
      }

      v18 = (v17[3] + 8 * v15);
      v19 = v17[6];
      v20 = *v18;
      v21 = v18[1];
      v22 = v17[54];
      v23 = *(v22 + 2 * *(v19 + 4 * v21));
      if (v20 >= 2)
      {
        v24 = v20 - 1;
        v25 = (v19 + 4 * v21 + 4);
        do
        {
          v26 = *v25++;
          v23 |= *(v22 + 2 * v26);
          --v24;
        }

        while (v24);
      }

      if ((v23 & 0x800) != 0)
      {
        goto LABEL_38;
      }

      v28 = *(this + 10);
      v27 = *(this + 11);
      if (v28 >= v27)
      {
        v30 = (v28 - *v5) >> 3;
        v31 = v30 + 1;
        if ((v30 + 1) >> 61)
        {
          goto LABEL_41;
        }

        v32 = v27 - *v5;
        if (v32 >> 2 > v31)
        {
          v31 = v32 >> 2;
        }

        if (v32 >= 0x7FFFFFFFFFFFFFF8)
        {
          v33 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v33 = v31;
        }

        v38 = this + 72;
        if (v33)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::PatchTuple>>(v33);
        }

        v34 = (8 * v30);
        __p[0] = 0;
        __p[1] = v34;
        __p[3] = 0;
        *v34 = v15;
        v34[1] = v9;
        __p[2] = (8 * v30 + 8);
        std::vector<OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::PatchTuple>::__swap_out_circular_buffer(this + 9, __p);
        v29 = *(this + 10);
        if (__p[0])
        {
          operator delete(__p[0]);
        }
      }

      else
      {
        *v28 = v15;
        v28[1] = v9;
        v29 = v28 + 2;
      }

      *(this + 10) = v29;
      if (OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::IsPatchRegular(this, v9, v15, 0xFFFFFFFF))
      {
        break;
      }

      ++*(this + 15);
      if ((*(this + 4) & 0x700) == 0x400)
      {
        v35 = (OpenSubdiv::v3_1_1::Vtr::internal::Level::getFaceCompositeVTag(v10, v15, 0xFFFFFFFF) >> 2) & 1;
        v36 = this + 64;
        goto LABEL_37;
      }

LABEL_38:
      if (++v15 >= *v10)
      {
        goto LABEL_39;
      }
    }

    v35 = 1;
    v36 = this + 56;
LABEL_37:
    *v36 += v35;
    goto LABEL_38;
  }
}

void OpenSubdiv::v3_1_1::Far::PatchTableFactory::populateAdaptivePatches(OpenSubdiv::v3_1_1::Far::PatchTableFactory *this, OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext *a2, OpenSubdiv::v3_1_1::Far::PatchTable *a3)
{
  v5 = 0;
  v189 = *MEMORY[0x1E69E9840];
  v157 = *this;
  do
  {
    v6 = &v185 + v5;
    *v6 = 6;
    *(v6 + 4) = 0;
    *(v6 + 7) = 0;
    *(v6 + 12) = 0uLL;
    *(v6 + 4) = &v188[v5];
    *(v6 + 5) = 0x100000000;
    *(v6 + 7) = 0;
    *(v6 + 8) = &v188[v5 + 32];
    *(v6 + 9) = 0x100000000;
    v5 += 96;
    *(v6 + 11) = 0;
  }

  while (v5 != 288);
  v7 = *(this + 14);
  v185 = 6;
  v186 = v7;
  v8 = v7 > 0;
  v9 = *(this + 9) & 7;
  switch(v9)
  {
    case 4:
      v17 = &v185 + 24 * (v7 > 0);
      v18 = *(this + 15);
      v19 = *(this + 16);
      v15 = __OFSUB__(v18, v19);
      v20 = v18 - v19;
      *v17 = 7;
      v17[1] = v20;
      if ((v20 < 0) ^ v15 | (v20 == 0))
      {
        v21 = v8;
      }

      else
      {
        v21 = v8 + 1;
      }

      v22 = &v185 + 24 * v21;
      *v22 = 8;
      v22[1] = v19;
      v162 = v21;
      v164 = v8;
      if (v19 <= 0)
      {
        v11 = v21;
      }

      else
      {
        v11 = v21 + 1;
      }

      break;
    case 3:
      v12 = &v185 + 24 * (v7 > 0);
      v13 = *(this + 15);
      v14 = v12[1];
      v15 = __OFADD__(v14, v13);
      v16 = v14 + v13;
      *v12 = 9;
      v12[1] = v16;
      if ((v16 < 0) ^ v15 | (v16 == 0))
      {
        v11 = v8;
      }

      else
      {
        v11 = v8 + 1;
      }

      v162 = v8;
      v164 = v8;
      break;
    case 2:
      v162 = 0;
      v164 = 0;
      v10 = *(this + 15);
      v186 = v10 + v7;
      if ((v186 < 0) ^ __OFADD__(v10, v7) | (v186 == 0))
      {
        v11 = 0;
      }

      else
      {
        v11 = 1;
      }

      break;
    default:
      v11 = v7 > 0;
      v162 = 2;
      v164 = 1;
      break;
  }

  v23 = v11;
  std::vector<OpenSubdiv::v3_1_1::Far::PatchTable::PatchArray>::reserve(a2 + 1, v11);
  v168 = 0;
  v167 = 0;
  if (v11)
  {
    v25 = &v186;
    v26 = v23;
    do
    {
      v27 = *v25;
      LODWORD(v181) = *(v25 - 1);
      OpenSubdiv::v3_1_1::Far::PatchTable::pushPatchArray(a2, &v181, v27, &v168 + 1, &v168, &v167);
      v25 += 24;
      --v26;
    }

    while (v26);
  }

  v159 = *(this + 4);
  OpenSubdiv::v3_1_1::Far::PatchTableFactory::allocateVertexTables(this, a2, v24);
  if (*(this + 18) != *(this + 19))
  {
    OpenSubdiv::v3_1_1::Far::PatchTableFactory::allocateFVarChannels(this, a2, v28);
  }

  if (v23)
  {
    for (i = 0; i != v23; ++i)
    {
      v30 = &v185 + 24 * i;
      v31 = (*(a2 + 1) + 20 * i);
      LODWORD(v181) = *v31;
      OpenSubdiv::v3_1_1::Far::PatchDescriptor::GetNumControlVertices(&v181);
      *(v30 + 1) = *(a2 + 4) + 4 * v31[2];
      v32 = *(*(a2 + 1) + 20 * i + 12);
      *(v30 + 2) = *(a2 + 7) + 8 * v32;
      if ((v159 & 4) != 0)
      {
        *(v30 + 3) = *(a2 + 28) + 4 * v32;
      }

      v33 = *(this + 18);
      v34 = *(this + 19);
      if (v33 != v34)
      {
        v35 = v34 - v33;
        v36 = (v34 - v33) >> 2;
        if (v36)
        {
          if (v30[11] < v36)
          {
            operator delete(*(v30 + 7));
            *(v30 + 4) = v30 + 12;
            v30[11] = 1;
            v37 = operator new((2 * v35) & 0x7FFFFFFF8);
            *(v30 + 7) = v37;
            *(v30 + 4) = v37;
            v30[11] = v36;
          }
        }

        else
        {
          operator delete(*(v30 + 7));
          *(v30 + 4) = v30 + 12;
          v30[11] = 1;
        }

        v30[10] = v36;
        v38 = *(this + 19) - *(this + 18);
        v39 = v38 >> 2;
        if ((v38 >> 2))
        {
          if (v30[19] < v39)
          {
            operator delete(*(v30 + 11));
            *(v30 + 8) = v30 + 20;
            v30[19] = 1;
            v40 = operator new((2 * v38) & 0x7FFFFFFF8);
            *(v30 + 11) = v40;
            *(v30 + 8) = v40;
            v30[19] = v39;
          }
        }

        else
        {
          operator delete(*(v30 + 11));
          *(v30 + 8) = v30 + 20;
          v30[19] = 1;
        }

        v30[18] = v39;
        if (((*(this + 19) - *(this + 18)) >> 2) >= 1)
        {
          v41 = 0;
          v42 = 0;
          do
          {
            LODWORD(v181) = *(*(a2 + 22) + v41 + 4);
            v43 = *(*(a2 + 1) + 20 * i + 12);
            *(*(v30 + 4) + 8 * v42) = *(*(a2 + 22) + v41 + 8) + 4 * (v43 * OpenSubdiv::v3_1_1::Far::PatchDescriptor::GetNumControlVertices(&v181));
            *(*(v30 + 8) + 8 * v42++) = *(*(a2 + 22) + v41 + 32) + 8 * v43;
            v41 += 56;
          }

          while (v42 < ((*(this + 19) - *(this + 18)) >> 2));
        }
      }
    }
  }

  v44 = &v183;
  v180 = 0;
  v181 = &v183;
  v182 = 0x100000000;
  __p = 0;
  v45 = &v179;
  v176 = 0;
  v177 = &v179;
  v178 = 0x100000000;
  v46 = &v175;
  v173 = &v175;
  v174 = 0x100000000;
  v47 = *(this + 9) & 7;
  switch(v47)
  {
    case 2:
      operator new();
    case 3:
      operator new();
    case 4:
      operator new();
  }

  v49 = *(this + 18);
  v48 = *(this + 19);
  if (v49 != v48)
  {
    v50 = v48 - v49;
    v51 = (v48 - v49) >> 2;
    if (v51)
    {
      if (HIDWORD(v182) >= v51)
      {
        v53 = (v48 - v49) >> 2;
LABEL_55:
        LODWORD(v182) = v51;
        if (v53)
        {
          if (HIDWORD(v178) >= v53)
          {
            LODWORD(v55) = v53;
LABEL_61:
            LODWORD(v178) = v53;
            if (v55)
            {
              LODWORD(v56) = v55;
              if (HIDWORD(v174) >= v55)
              {
                goto LABEL_66;
              }

              operator delete(v176);
              v173 = &v175;
              HIDWORD(v174) = 1;
              v46 = operator new((2 * v50) & 0x7FFFFFFF8);
              v176 = v46;
              v57 = v55;
            }

            else
            {
              operator delete(v176);
              v57 = 1;
            }

            v173 = v46;
            HIDWORD(v174) = v57;
            v49 = *(this + 18);
            v48 = *(this + 19);
            v56 = (v48 - v49) >> 2;
LABEL_66:
            LODWORD(v174) = v55;
            if (v56 >= 1)
            {
              v58 = 0;
              do
              {
                v59 = *(this + 9) & 7;
                if (v59 == 2)
                {
                  operator new();
                }

                if (v59 == 3)
                {
                  operator new();
                }

                ++v58;
              }

              while (v58 < ((v48 - v49) >> 2));
            }

            goto LABEL_73;
          }

          operator delete(v180);
          v177 = &v179;
          HIDWORD(v178) = 1;
          v45 = operator new((2 * v50) & 0x7FFFFFFF8);
          v180 = v45;
          v54 = v53;
        }

        else
        {
          operator delete(v180);
          v54 = 1;
        }

        v177 = v45;
        HIDWORD(v178) = v54;
        v49 = *(this + 18);
        v48 = *(this + 19);
        v50 = v48 - v49;
        v55 = (v48 - v49) >> 2;
        goto LABEL_61;
      }

      operator delete(__p);
      v181 = &v183;
      HIDWORD(v182) = 1;
      v44 = operator new((2 * v50) & 0x7FFFFFFF8);
      __p = v44;
      v52 = v51;
    }

    else
    {
      operator delete(__p);
      v52 = 1;
    }

    v181 = v44;
    HIDWORD(v182) = v52;
    v49 = *(this + 18);
    v48 = *(this + 19);
    v50 = v48 - v49;
    v53 = (v48 - v49) >> 2;
    goto LABEL_55;
  }

LABEL_73:
  v60 = *(this + 9);
  if (((*(this + 10) - v60) >> 3) >= 1)
  {
    v61 = 0;
    v156 = &v185 + 24 * v164;
    v155 = &v185 + 24 * v162;
    while (1)
    {
      v62 = (v60 + 8 * v61);
      v63 = *(*(v157 + 40) + 8 * v62[1]);
      FaceCompositeVTag = OpenSubdiv::v3_1_1::Vtr::internal::Level::getFaceCompositeVTag(v63, *v62, 0xFFFFFFFF);
      memset(v172, 0, sizeof(v172));
      IsPatchRegular = OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::IsPatchRegular(this, v62[1], *v62, 0xFFFFFFFF);
      v67 = *v62;
      v66 = v62[1];
      v163 = IsPatchRegular;
      v158 = v61;
      if (!IsPatchRegular)
      {
        break;
      }

      RegularPatchBoundaryMask = OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::GetRegularPatchBoundaryMask(this, v66, v67, 0xFFFFFFFF);
      v69 = RegularPatchBoundaryMask;
      v160 = 0;
      v70 = 0.0;
      if ((v159 & 4) == 0 || RegularPatchBoundaryMask)
      {
        v72 = RegularPatchBoundaryMask;
      }

      else
      {
        if ((FaceCompositeVTag & 0x1040) == 0)
        {
          goto LABEL_89;
        }

        LODWORD(v169) = 0;
        v166 = 0;
        if (!OpenSubdiv::v3_1_1::Vtr::internal::Level::isSingleCreasePatch(v63, *v62, &v169, &v166))
        {
          goto LABEL_89;
        }

        v71 = ((*(this + 4) >> 4) - v62[1]);
        if (*&v169 <= v71)
        {
          v71 = *&v169;
        }

        if (v71 > 0.0)
        {
          v69 = 0;
          v160 = 1;
          v72 = 1 << v166;
          v70 = v71;
        }

        else
        {
LABEL_89:
          v69 = 0;
          v72 = 0;
          v160 = 0;
        }
      }

      OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::GatherRegularPatchPoints(this, *v187, *v62, v62[1], v69, 0xFFFFFFFF);
      *v187 += 64;
      v76 = v62[1];
      if (v76 == ((*(*this + 8) >> 2) & 0xF))
      {
        LOBYTE(v77) = 0;
      }

      else
      {
        v77 = (*(*(*(*(*this + 64) + 8 * v76) + 408) + *v62) >> 1) & 0xF;
      }

      v74 = &v185;
LABEL_108:
      v92 = OpenSubdiv::v3_1_1::Far::PatchTableFactory::computePatchParam(*this, *(this + 4), v62[1], *v62, v72, v77);
      v93 = *(v74 + 2);
      *(v74 + 2) = v93 + 1;
      v165 = v92;
      *v93 = v92;
      if ((v159 & 4) != 0)
      {
        v94 = *(a2 + 31);
        v95 = *(a2 + 32);
        v96 = v95 - v94;
        v97 = (v95 - v94) >> 2;
        if (v97 < 1)
        {
LABEL_113:
          v99 = *(a2 + 33);
          if (v95 >= v99)
          {
            v101 = v97 + 1;
            if ((v97 + 1) >> 62)
            {
              std::string::__throw_length_error[abi:nn200100]();
            }

            v102 = v99 - v94;
            if (v102 >> 1 > v101)
            {
              v101 = v102 >> 1;
            }

            v103 = v102 >= 0x7FFFFFFFFFFFFFFCLL;
            v104 = 0x3FFFFFFFFFFFFFFFLL;
            if (!v103)
            {
              v104 = v101;
            }

            if (v104)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(a2 + 248, v104);
            }

            *(4 * v97) = v70;
            v100 = 4 * v97 + 4;
            memcpy(0, v94, v96);
            v105 = *(a2 + 31);
            *(a2 + 31) = 0;
            *(a2 + 32) = v100;
            *(a2 + 33) = 0;
            if (v105)
            {
              operator delete(v105);
              v94 = *(a2 + 31);
            }

            else
            {
              v94 = 0;
            }
          }

          else
          {
            *v95 = v70;
            v100 = (v95 + 1);
          }

          *(a2 + 32) = v100;
          LODWORD(v98) = ((v100 - v94) >> 2) - 1;
        }

        else
        {
          v98 = 0;
          while (*&v94[4 * v98] != v70)
          {
            if (((v96 >> 2) & 0x7FFFFFFF) == ++v98)
            {
              goto LABEL_113;
            }
          }
        }

        v106 = *(v74 + 3);
        *v106 = v98;
        *(v74 + 3) = v106 + 1;
      }

      v161 = v72;
      v107 = *(this + 18);
      v108 = *(this + 19);
      if (v107 != v108 && ((v108 - v107) >> 2) >= 1)
      {
        v109 = 0;
        while (1)
        {
          v110 = *v62;
          v111 = v62[1];
          v112 = *(*(a2 + 22) + 56 * v109 + 4);
          v166 = v112;
          if (v112 == 3)
          {
            v113 = *(*(*this + 40) + 8 * v111);
            v114 = *(v107 + 4 * v109);
            if ((v114 & 0x80000000) != 0)
            {
              v122 = v113[3];
              v118 = (v113[6] + 4 * *(v122 + 4 * ((2 * v110) | 1)));
              v117 = (v122 + 8 * v110);
            }

            else
            {
              v115 = *(v113[57] + 8 * v114);
              v116 = *(*v115 + 24);
              v117 = (v116 + 8 * v110);
              v118 = (v115[3] + 4 * *(v116 + 4 * ((2 * v110) | 1)));
            }

            v123 = *(v74 + 4);
            v124 = *(v123 + 8 * v109);
            v125 = *v117;
            if (v125 >= 1)
            {
              v126 = *(*(*(this + 15) + 24 * v109) + 4 * v111);
              v127 = *(v123 + 8 * v109);
              v128 = v125;
              do
              {
                v129 = *v118++;
                *v127++ = v129 + v126;
                --v128;
              }

              while (v128);
            }

            *(v123 + 8 * v109) = v124 + 4 * v125;
            v130 = v165;
            goto LABEL_153;
          }

          v119 = *v62;
          if (OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::getFaceCompositeValueTag(*(*(*(*(*this + 40) + 8 * v111) + 456) + 8 * *(v107 + 4 * v109)), *v62))
          {
            break;
          }

          if (!v163)
          {
            v169 = 0;
            v170 = 0;
            v131 = v172;
            v171 = 0;
LABEL_147:
            if (v112 == 9)
            {
              OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::GatherIrregularPatchPoints<OpenSubdiv::v3_1_1::Far::EndCapGregoryBasisPatchFactory>(this, v177[v109], *(*(v74 + 4) + 8 * v109), v110, v111, v131, v109);
            }

            else if (v112 == 6)
            {
              OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::GatherIrregularPatchPoints<OpenSubdiv::v3_1_1::Far::EndCapBSplineBasisPatchFactory>(this, v181[v109], *(*(v74 + 4) + 8 * v109), v110, v111, v131, v109);
            }

            v121 = 0;
            LOBYTE(v120) = 0;
            goto LABEL_152;
          }

          v120 = v161;
          if (!v160)
          {
            goto LABEL_139;
          }

          OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::GatherRegularPatchPoints(this, *(*(v74 + 4) + 8 * v109), v110, v111, 0, v109);
          v121 = 0x2000000000;
          LOBYTE(v120) = v161;
LABEL_152:
          *(*(v74 + 4) + 8 * v109) += 4 * OpenSubdiv::v3_1_1::Far::PatchDescriptor::GetNumControlVertices(&v166);
          v130 = v121 | v165 & 0xFFFFF01FFFFFFFFFLL | ((v120 & 0xF) << 40);
LABEL_153:
          v132 = *(v74 + 8);
          v133 = *(v132 + 8 * v109);
          *(v132 + 8 * v109) = v133 + 1;
          *v133 = v130;
          ++v109;
          v107 = *(this + 18);
          if (v109 >= ((*(this + 19) - v107) >> 2))
          {
            goto LABEL_154;
          }
        }

        if (!OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::IsPatchRegular(this, v111, v119, v109))
        {
          v169 = 0;
          v170 = 0;
          v171 = 0;
          v131 = &v169;
          OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::GetIrregularPatchCornerSpans(this, v62[1], *v62, &v169, v109);
          v112 = v166;
          goto LABEL_147;
        }

        v120 = OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::GetRegularPatchBoundaryMask(this, v62[1], *v62, v109);
LABEL_139:
        OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::GatherRegularPatchPoints(this, *(*(v74 + 4) + 8 * v109), v110, v111, v120, v109);
        v121 = 0x2000000000;
        goto LABEL_152;
      }

LABEL_154:
      v61 = v158 + 1;
      v60 = *(this + 9);
      if (v158 + 1 >= ((*(this + 10) - v60) >> 3))
      {
        goto LABEL_155;
      }
    }

    OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::GetIrregularPatchCornerSpans(this, v66, v67, v172, 0xFFFFFFFF);
    v73 = *(this + 9) & 7;
    v70 = 0.0;
    switch(v73)
    {
      case 2:
        v74 = v156;
        v75 = OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::GatherIrregularPatchPoints<OpenSubdiv::v3_1_1::Far::EndCapBSplineBasisPatchFactory>(this, 0, *(v156 + 1), *v62, v62[1], v172, 0xFFFFFFFF);
        break;
      case 4:
        v78 = *v62;
        v79 = v62[1];
        v80 = *(*(*this + 40) + 8 * v79);
        v81 = *(*(this + 12) + 4 * v79);
        if ((FaceCompositeVTag & 4) != 0)
        {
          v88 = *(v155 + 1);
          PatchPoints = OpenSubdiv::v3_1_1::Far::EndCapLegacyGregoryPatchFactory::GetPatchPoints(0, v80, v78, v172, v81, 0xFFFFFFFF);
          if (v84 >= 1)
          {
            v90 = v84 & 0x7FFFFFFF;
            do
            {
              v91 = *PatchPoints++;
              *v88++ = v91;
              --v90;
            }

            while (v90);
          }

          v160 = 0;
          v72 = 0;
          LOBYTE(v77) = 0;
          v74 = v155;
        }

        else
        {
          v82 = *(v156 + 1);
          v83 = OpenSubdiv::v3_1_1::Far::EndCapLegacyGregoryPatchFactory::GetPatchPoints(0, v80, v78, v172, v81, 0xFFFFFFFF);
          if (v84 >= 1)
          {
            v85 = v84 & 0x7FFFFFFF;
            do
            {
              v86 = *v83++;
              *v82++ = v86;
              --v85;
            }

            while (v85);
          }

          v160 = 0;
          v72 = 0;
          LOBYTE(v77) = 0;
          v74 = v156;
        }

        v87 = *(v74 + 1) + 4 * v84;
        goto LABEL_107;
      case 3:
        v74 = v156;
        v75 = OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::GatherIrregularPatchPoints<OpenSubdiv::v3_1_1::Far::EndCapGregoryBasisPatchFactory>(this, 0, *(v156 + 1), *v62, v62[1], v172, 0xFFFFFFFF);
        break;
      default:
        v160 = 0;
        v72 = 0;
        LOBYTE(v77) = 0;
        v74 = v156;
        goto LABEL_108;
    }

    v160 = 0;
    v72 = 0;
    LOBYTE(v77) = 0;
    v87 = *(v74 + 1) + 4 * v75;
LABEL_107:
    *(v74 + 1) = v87;
    goto LABEL_108;
  }

LABEL_155:
  OpenSubdiv::v3_1_1::Far::PatchTable::populateVaryingVertices(a2);
  v134 = *(this + 9) & 7;
  switch(v134)
  {
    case 2:
      *(a2 + 16) = 0;
      *(a2 + 17) = 0;
      break;
    case 4:
      OpenSubdiv::v3_1_1::Far::EndCapLegacyGregoryPatchFactory::Finalize(0, *a2, (a2 + 80), (a2 + 104), 0xFFFFFFFFLL);
      break;
    case 3:
      *(a2 + 16) = 0;
      *(a2 + 17) = 0;
      break;
  }

  v135 = *(this + 18);
  v136 = *(this + 19);
  if (v135 != v136)
  {
    std::vector<OpenSubdiv::v3_1_1::Far::StencilTable const*>::resize(a2 + 25, (v136 - v135) >> 2);
    if (((*(this + 19) - *(this + 18)) >> 2) >= 1)
    {
      v137 = 0;
      while (1)
      {
        v138 = v173[v137];
        if (((*(v138 + 24) - *(v138 + 16)) >> 2) < 1)
        {
          (*(*v138 + 8))(v173[v137]);
          v173[v137] = 0;
        }

        else
        {
          OpenSubdiv::v3_1_1::Far::StencilTable::shrinkToFit(v173[v137]);
          std::vector<unsigned int>::resize((v138 + 40), ((*(v138 + 24) - *(v138 + 16)) >> 2));
          v139 = *(v138 + 16);
          v140 = *(v138 + 24) - v139;
          if ((v140 >> 2) >= 1)
          {
            v141 = 0;
            v142 = *(v138 + 40);
            v143 = (v140 >> 2) & 0x7FFFFFFF;
            do
            {
              *v142++ = v141;
              v144 = *v139++;
              v141 += v144;
              --v143;
            }

            while (v143);
          }
        }

        v145 = *(this + 9) & 7;
        if (v145 != 2)
        {
          break;
        }

        v151 = v181[v137];
        if (v151)
        {
          v152 = v151[4];
          if (v152)
          {
            v151[5] = v152;
            operator delete(v152);
          }

          v149 = v151;
          v150 = 1232653951;
LABEL_182:
          MEMORY[0x1E6906520](v149, v150 | 0x1070C4000000000);
        }

LABEL_183:
        *(*(a2 + 25) + 8 * v137) = v173[v137];
        if (++v137 >= ((*(this + 19) - *(this + 18)) >> 2))
        {
          goto LABEL_184;
        }
      }

      if (v145 != 3)
      {
        goto LABEL_183;
      }

      v146 = v177[v137];
      if (!v146)
      {
        goto LABEL_183;
      }

      v147 = v146[8];
      if (v147)
      {
        v146[9] = v147;
        operator delete(v147);
      }

      v148 = v146[5];
      if (v148)
      {
        v146[6] = v148;
        operator delete(v148);
      }

      v149 = v146;
      v150 = 537674454;
      goto LABEL_182;
    }
  }

LABEL_184:
  operator delete(v176);
  operator delete(v180);
  operator delete(__p);
  v153 = 288;
  do
  {
    v154 = &v185 + v153;
    operator delete(*(&__p + v153));
    *(v154 - 4) = v154 - 16;
    *(v154 - 5) = 1;
    operator delete(*(&v180 + v153));
    *(v154 - 8) = v154 - 48;
    *(v154 - 13) = 1;
    v153 -= 96;
  }

  while (v153);
}

uint64_t OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::GatherIrregularPatchPoints<OpenSubdiv::v3_1_1::Far::EndCapGregoryBasisPatchFactory>(void *a1, uint64_t a2, _DWORD *a3, uint64_t a4, int a5, uint64_t a6, unsigned int a7)
{
  PatchPoints = OpenSubdiv::v3_1_1::Far::EndCapGregoryBasisPatchFactory::GetPatchPoints(a2);
  result = v8;
  if (v8 >= 1)
  {
    v11 = v8 & 0x7FFFFFFF;
    do
    {
      v12 = *PatchPoints++;
      *a3++ = v12;
      --v11;
    }

    while (v11);
  }

  return result;
}

uint64_t OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::GatherIrregularPatchPoints<OpenSubdiv::v3_1_1::Far::EndCapBSplineBasisPatchFactory>(void *a1, uint64_t a2, _DWORD *a3, uint64_t a4, int a5, __int16 *a6, unsigned int a7)
{
  if ((a7 & 0x80000000) != 0)
  {
    v9 = a1 + 12;
    v10 = -1;
  }

  else
  {
    v9 = (a1[15] + 24 * a7);
    v10 = *(a1[18] + 4 * a7);
  }

  PatchPoints = OpenSubdiv::v3_1_1::Far::EndCapBSplineBasisPatchFactory::GetPatchPoints(a2, *(*(*a1 + 40) + 8 * a5), a4, a6, *(*v9 + 4 * a5), v10);
  result = v11;
  if (v11 >= 1)
  {
    v14 = v11 & 0x7FFFFFFF;
    do
    {
      v15 = *PatchPoints++;
      *a3++ = v15;
      --v14;
    }

    while (v14);
  }

  return result;
}

void std::vector<OpenSubdiv::v3_1_1::Far::StencilTable const*>::resize(void *result, unint64_t a2)
{
  v2 = (result[1] - *result) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      result[1] = *result + 8 * a2;
    }
  }

  else
  {
    std::vector<OpenSubdiv::v3_1_1::Far::StencilTable const*>::__append(result, a2 - v2);
  }
}

void OpenSubdiv::v3_1_1::Far::StencilTable::shrinkToFit(OpenSubdiv::v3_1_1::Far::StencilTable *this)
{
  std::vector<int>::vector[abi:nn200100](&v11, this + 2);
  v2 = *(this + 2);
  *(this + 1) = v11;
  v3 = v12;
  v4 = *(this + 4);
  *&v11 = v2;
  v12 = v4;
  *(this + 4) = v3;
  if (v2)
  {
    *(&v11 + 1) = v2;
    operator delete(v2);
  }

  std::vector<int>::vector[abi:nn200100](&v11, this + 8);
  v5 = *(this + 8);
  *(this + 4) = v11;
  v6 = v12;
  v7 = *(this + 10);
  *&v11 = v5;
  v12 = v7;
  *(this + 10) = v6;
  if (v5)
  {
    *(&v11 + 1) = v5;
    operator delete(v5);
  }

  std::vector<int>::vector[abi:nn200100](&v11, this + 11);
  v8 = *(this + 11);
  *(this + 88) = v11;
  v9 = v12;
  v10 = *(this + 13);
  *&v11 = v8;
  v12 = v10;
  *(this + 13) = v9;
  if (v8)
  {
    *(&v11 + 1) = v8;
    operator delete(v8);
  }
}

uint64_t *std::vector<int>::vector[abi:nn200100](uint64_t *a1, void *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    std::vector<int>::__vallocate[abi:nn200100](a1, (v2 - *a2) >> 2);
  }

  return a1;
}

void std::vector<int>::__vallocate[abi:nn200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(a1, a2);
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::vector<OpenSubdiv::v3_1_1::Far::PatchParam>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 3);
    if (v7 >> 61)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v8 = v4 - *a1;
    if (v8 >> 2 > v7)
    {
      v7 = v8 >> 2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long long>>(a1, v9);
    }

    v10 = (8 * (v6 >> 3));
    bzero(v10, 8 * a2);
    v11 = &v10[8 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

uint64_t **std::vector<OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::PatchTuple>::__swap_out_circular_buffer(uint64_t **result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = (a2[1] + *result - v3);
  if (v3 != *result)
  {
    v5 = *result;
    v6 = (a2[1] + *result - v3);
    do
    {
      v7 = *v5++;
      *v6++ = v7;
    }

    while (v5 != v3);
  }

  a2[1] = v4;
  v8 = *result;
  *result = v4;
  result[1] = v2;
  a2[1] = v8;
  v9 = result[1];
  result[1] = a2[2];
  a2[2] = v9;
  v10 = result[2];
  result[2] = a2[3];
  a2[3] = v10;
  *a2 = a2[1];
  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::PatchTuple>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::vector<OpenSubdiv::v3_1_1::Far::StencilTable const*>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 3);
    if (v7 >> 61)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v8 = v4 - *a1;
    if (v8 >> 2 > v7)
    {
      v7 = v8 >> 2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<OpenSubdiv::v3_1_1::Far::StencilTable const*>>(a1, v9);
    }

    v10 = (8 * (v6 >> 3));
    bzero(v10, 8 * a2);
    v11 = &v10[8 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<OpenSubdiv::v3_1_1::Far::StencilTable const*>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

OpenSubdiv::v3_1_1::Osd::CpuPatchTable *OpenSubdiv::v3_1_1::Osd::CpuPatchTable::CpuPatchTable(OpenSubdiv::v3_1_1::Osd::CpuPatchTable *this, const OpenSubdiv::v3_1_1::Far::PatchTable *a2)
{
  *(this + 3) = 0u;
  v73 = (this + 48);
  *(this + 6) = 0u;
  v72 = (this + 96);
  *(this + 9) = 0u;
  v4 = (this + 144);
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  v5 = -858993459 * ((*(a2 + 2) - *(a2 + 1)) >> 2);
  if (v5 < 1)
  {
    v11 = 0;
    v7 = 0;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = v5 & 0x7FFFFFFF;
    do
    {
      v10 = *(*(a2 + 1) + v6 + 4);
      LODWORD(v82) = *(*(a2 + 1) + v6);
      v7 += v10;
      v8 += v10 * OpenSubdiv::v3_1_1::Far::PatchDescriptor::GetNumControlVertices(&v82);
      v6 += 20;
      --v9;
    }

    while (v9);
    v11 = v8;
  }

  v12 = v5;
  std::vector<OpenSubdiv::v3_1_1::Osd::PatchArray>::reserve(this, v5);
  std::vector<int>::reserve(this + 1, v11);
  std::vector<OpenSubdiv::v3_1_1::Osd::PatchArray>::reserve(this + 9, v5);
  LODWORD(v82) = *(a2 + 36);
  NumControlVertices = OpenSubdiv::v3_1_1::Far::PatchDescriptor::GetNumControlVertices(&v82);
  std::vector<int>::reserve(v72, v7 * NumControlVertices);
  v14 = (-1227133513 * ((*(a2 + 23) - *(a2 + 22)) >> 3));
  v15 = *(this + 15);
  v16 = *(this + 16);
  v17 = 0xAAAAAAAAAAAAAAABLL * (&v16[-v15] >> 3);
  v18 = v14 - v17;
  v75 = v5;
  if (v14 <= v17)
  {
    if (v14 < v17)
    {
      v21 = (v15 + 24 * v14);
      if (v16 != v21)
      {
        v22 = *(this + 16);
        do
        {
          v24 = *(v22 - 3);
          v22 -= 24;
          v23 = v24;
          if (v24)
          {
            *(v16 - 2) = v23;
            operator delete(v23);
          }

          v16 = v22;
        }

        while (v22 != v21);
      }

      *(this + 16) = v21;
    }
  }

  else
  {
    v19 = *(this + 17);
    if (0xAAAAAAAAAAAAAAABLL * ((v19 - v16) >> 3) < v18)
    {
      if (v14 > 0xAAAAAAAAAAAAAAALL)
      {
        std::string::__throw_length_error[abi:nn200100]();
      }

      v20 = 0xAAAAAAAAAAAAAAABLL * ((v19 - v15) >> 3);
      if (2 * v20 > v14)
      {
        v14 = 2 * v20;
      }

      if (v20 >= 0x555555555555555)
      {
        v14 = 0xAAAAAAAAAAAAAAALL;
      }

      if (v14 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      goto LABEL_59;
    }

    v25 = (24 * v18 - 24) / 0x18;
    v26 = v4;
    v27 = 24 * v25 + 24;
    bzero(v16, v27);
    v28 = &v16[v27];
    v4 = v26;
    *(this + 16) = v28;
  }

  std::vector<std::vector<unsigned long>>::resize(v4, (-1227133513 * ((*(a2 + 23) - *(a2 + 22)) >> 3)));
  v29 = (-1227133513 * ((*(a2 + 23) - *(a2 + 22)) >> 3));
  v30 = *(this + 21);
  v31 = *(this + 22);
  v32 = 0xAAAAAAAAAAAAAAABLL * ((v31 - v30) >> 3);
  v33 = v29 - v32;
  if (v29 <= v32)
  {
    if (v29 < v32)
    {
      v36 = v30 + 24 * v29;
      if (v31 != v36)
      {
        v37 = *(this + 22);
        do
        {
          v39 = *(v37 - 24);
          v37 -= 24;
          v38 = v39;
          if (v39)
          {
            *(v31 - 16) = v38;
            operator delete(v38);
          }

          v31 = v37;
        }

        while (v37 != v36);
      }

      *(this + 22) = v36;
    }
  }

  else
  {
    v34 = *(this + 23);
    if (0xAAAAAAAAAAAAAAABLL * ((v34 - v31) >> 3) < v33)
    {
      if (v29 > 0xAAAAAAAAAAAAAAALL)
      {
        std::string::__throw_length_error[abi:nn200100]();
      }

      v35 = 0xAAAAAAAAAAAAAAABLL * ((v34 - v30) >> 3);
      if (2 * v35 > v29)
      {
        v29 = 2 * v35;
      }

      if (v35 >= 0x555555555555555)
      {
        v29 = 0xAAAAAAAAAAAAAAALL;
      }

      if (v29 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

LABEL_59:
      std::string::__throw_length_error[abi:nn200100]();
    }

    bzero(*(this + 22), 24 * ((24 * v33 - 24) / 0x18) + 24);
    *(this + 22) = v31 + 24 * ((24 * v33 - 24) / 0x18) + 24;
  }

  if ((-1227133513 * ((*(a2 + 23) - *(a2 + 22)) >> 3)) >= 1)
  {
    v40 = 0;
    v41 = 0;
    v42 = 4;
    do
    {
      std::vector<OpenSubdiv::v3_1_1::Osd::PatchArray>::reserve((*(this + 15) + v40), v12);
      v43 = *(this + 18);
      LODWORD(v82) = *(*(a2 + 22) + v42);
      v44 = OpenSubdiv::v3_1_1::Far::PatchDescriptor::GetNumControlVertices(&v82);
      std::vector<int>::reserve((v43 + v40), v7 * v44);
      std::vector<OpenSubdiv::v3_1_1::Osd::PatchParam>::reserve((*(this + 21) + v40), v7);
      ++v41;
      v40 += 24;
      v42 += 56;
    }

    while (v41 < (-1227133513 * ((*(a2 + 23) - *(a2 + 22)) >> 3)));
  }

  std::vector<OpenSubdiv::v3_1_1::Osd::PatchParam>::reserve(v73, v7);
  if (v75 >= 1)
  {
    v45 = 0;
    do
    {
      v46 = 5 * v45;
      v47 = (*(this + 4) - *(this + 3)) >> 2;
      v48 = (*(this + 7) - *(this + 6)) >> 2;
      v82 = *(*(a2 + 1) + 20 * v45);
      v83 = v47;
      v84 = -1431655765 * v48;
      std::vector<OpenSubdiv::v3_1_1::Osd::PatchArray>::push_back[abi:nn200100](this, &v82);
      v49 = (*(a2 + 1) + 20 * v45);
      v80[0] = *v49;
      v50 = OpenSubdiv::v3_1_1::Far::PatchDescriptor::GetNumControlVertices(v80);
      v51 = (*(a2 + 4) + 4 * v49[2]);
      v52 = v49[1] * v50;
      std::vector<int>::__insert_with_size[abi:nn200100]<int const*,int const*>(this + 3, *(this + 4), v51, &v51[4 * v52], v52);
      v80[0] = *(a2 + 36);
      v80[1] = v7;
      v81 = 0;
      std::vector<OpenSubdiv::v3_1_1::Osd::PatchArray>::push_back[abi:nn200100](this + 9, v80);
      v74 = v45;
      PatchArrayVaryingVertices = OpenSubdiv::v3_1_1::Far::PatchTable::GetPatchArrayVaryingVertices(a2, v45);
      std::vector<int>::__insert_with_size[abi:nn200100]<int const*,int const*>(v72, *(this + 13), PatchArrayVaryingVertices, &PatchArrayVaryingVertices[4 * v54], v54);
      v55 = *(a2 + 22);
      if ((-1227133513 * ((*(a2 + 23) - v55) >> 3)) >= 1)
      {
        v56 = 0;
        do
        {
          v57 = 56 * v56;
          LODWORD(v78) = *(v55 + v57 + 4);
          HIDWORD(v78) = v7;
          v79 = 0;
          std::vector<OpenSubdiv::v3_1_1::Osd::PatchArray>::push_back[abi:nn200100]((*(this + 15) + 24 * v56), &v78);
          v58 = *(a2 + 1) + 4 * v46;
          v59 = *(a2 + 22) + v57;
          v60 = OpenSubdiv::v3_1_1::Far::PatchDescriptor::GetNumControlVertices((v59 + 4));
          v61 = *(v58 + 4) * v60;
          v62 = (*(v59 + 8) + 4 * *(v58 + 12) * v60);
          std::vector<int>::__insert_with_size[abi:nn200100]<int const*,int const*>((*(this + 18) + 24 * v56), *(*(this + 18) + 24 * v56 + 8), v62, &v62[4 * v61], v61);
          v55 = *(a2 + 22);
          if (v7 >= 1)
          {
            v63 = (*(v55 + v57 + 32) + 8 * *(*(a2 + 1) + 4 * v46 + 12));
            v64 = v7;
            do
            {
              v65 = *v63++;
              v76 = v65;
              v77 = 0;
              std::vector<OpenSubdiv::v3_1_1::Osd::PatchParam>::push_back[abi:nn200100](*(this + 21) + 24 * v56, &v76);
              --v64;
            }

            while (v64);
            v55 = *(a2 + 22);
          }

          ++v56;
        }

        while (v56 < (-1227133513 * ((*(a2 + 23) - v55) >> 3)));
      }

      v66 = *(*(a2 + 1) + 20 * v74 + 4);
      if (v66 >= 1)
      {
        do
        {
          v67 = *(a2 + 28);
          v68 = 0xAAAAAAAB00000000 * ((*(this + 7) - *(this + 6)) >> 2);
          v69 = 0;
          if ((-1431655765 * ((*(this + 7) - *(this + 6)) >> 2)) < ((*(a2 + 29) - v67) >> 2))
          {
            v70 = *(v67 + (v68 >> 30));
            if ((v70 & 0x80000000) == 0)
            {
              v69 = *(*(a2 + 31) + 4 * v70);
            }
          }

          v78 = *(*(a2 + 7) + (v68 >> 29));
          LODWORD(v79) = v69;
          std::vector<OpenSubdiv::v3_1_1::Osd::PatchParam>::push_back[abi:nn200100](v73, &v78);
          --v66;
        }

        while (v66);
      }

      v45 = v74 + 1;
    }

    while (v74 + 1 != (v75 & 0x7FFFFFFF));
  }

  return this;
}

void std::vector<OpenSubdiv::v3_1_1::Osd::PatchArray>::reserve(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 4)
  {
    if (!(a2 >> 60))
    {
      _ZNSt3__119__allocate_at_leastB8nn200100INS_9allocatorIDv3_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a2);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }
}

void std::vector<OpenSubdiv::v3_1_1::Osd::PatchParam>::reserve(void *a1, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 2) < a2)
  {
    if (a2 < 0x1555555555555556)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<OpenSubdiv::v3_1_1::Osd::PatchParam>>(a2);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }
}

void std::vector<OpenSubdiv::v3_1_1::Osd::PatchArray>::push_back[abi:nn200100](void *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 >= v4)
  {
    v7 = (v3 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    __p[4] = a1;
    if (v10)
    {
      _ZNSt3__119__allocate_at_leastB8nn200100INS_9allocatorIDv3_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(v10);
    }

    v11 = (16 * v7);
    __p[0] = 0;
    __p[1] = v11;
    *v11 = *a2;
    v12 = *(a2 + 4);
    v11[3] = *(a2 + 12);
    *(v11 + 1) = v12;
    __p[2] = (16 * v7 + 16);
    __p[3] = 0;
    std::vector<OpenSubdiv::v3_1_1::Osd::PatchArray>::__swap_out_circular_buffer(a1, __p);
    v6 = a1[1];
    if (__p[0])
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *v3 = *a2;
    v5 = *(a2 + 4);
    *(v3 + 12) = *(a2 + 12);
    *(v3 + 4) = v5;
    v6 = v3 + 16;
  }

  a1[1] = v6;
}

void std::vector<OpenSubdiv::v3_1_1::Osd::PatchParam>::push_back[abi:nn200100](uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 2);
    v8 = v7 + 1;
    if (v7 + 1 > 0x1555555555555555)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 2);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0xAAAAAAAAAAAAAAALL)
    {
      v10 = 0x1555555555555555;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<OpenSubdiv::v3_1_1::Osd::PatchParam>>(v10);
    }

    v11 = 12 * v7;
    v12 = *a2;
    *(v11 + 8) = *(a2 + 2);
    *v11 = v12;
    v6 = 12 * v7 + 12;
    v13 = *(a1 + 8) - *a1;
    v14 = v11 - v13;
    memcpy((v11 - v13), *a1, v13);
    v15 = *a1;
    *a1 = v14;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    v5 = *a2;
    *(v4 + 8) = *(a2 + 2);
    *v4 = v5;
    v6 = v4 + 12;
  }

  *(a1 + 8) = v6;
}

uint64_t *std::vector<OpenSubdiv::v3_1_1::Osd::PatchArray>::__swap_out_circular_buffer(uint64_t *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = a2[1] + *result - v3;
    do
    {
      *v5 = *v2;
      v6 = *(v2 + 4);
      *(v5 + 12) = *(v2 + 12);
      *(v5 + 4) = v6;
      v2 += 16;
      v5 += 16;
    }

    while (v2 != v3);
    v2 = *result;
  }

  a2[1] = v4;
  *result = v4;
  result[1] = v2;
  a2[1] = v2;
  v7 = result[1];
  result[1] = a2[2];
  a2[2] = v7;
  v8 = result[2];
  result[2] = a2[3];
  a2[3] = v8;
  *a2 = a2[1];
  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<OpenSubdiv::v3_1_1::Osd::PatchParam>>(unint64_t a1)
{
  if (a1 < 0x1555555555555556)
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::vector<int>::__insert_with_size[abi:nn200100]<int const*,int const*>(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  if (a5 < 1)
  {
    return;
  }

  v6 = __src;
  v10 = a1[1];
  v9 = a1[2];
  if (a5 > (v9 - v10) >> 2)
  {
    v11 = *a1;
    v12 = a5 + (&v10[-*a1] >> 2);
    if (v12 >> 62)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 1 > v12)
    {
      v12 = v14 >> 1;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v15 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 2;
    if (v15)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(a1, v15);
    }

    v33 = 4 * v16;
    v34 = 4 * a5;
    v35 = (4 * v16);
    do
    {
      v36 = *v6;
      v6 += 4;
      *v35++ = v36;
      v34 -= 4;
    }

    while (v34);
    memcpy((v33 + 4 * a5), __dst, a1[1] - __dst);
    v37 = *a1;
    v38 = v33 + 4 * a5 + a1[1] - __dst;
    a1[1] = __dst;
    v39 = (__dst - v37);
    v40 = (v33 - (__dst - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    a1[1] = v38;
    a1[2] = 0;
    if (v41)
    {

      operator delete(v41);
    }

    return;
  }

  v17 = (v10 - __dst) >> 2;
  if (v17 >= a5)
  {
    v22 = &__dst[4 * a5];
    v23 = &v10[-4 * a5];
    v24 = a1[1];
    while (v23 < v10)
    {
      v25 = *v23;
      v23 += 4;
      *v24++ = v25;
    }

    a1[1] = v24;
    if (v10 != v22)
    {
      memmove(&__dst[4 * a5], __dst, v10 - v22);
    }

    v30 = 4 * a5;
    v31 = __dst;
    v32 = v6;
    goto LABEL_35;
  }

  v18 = &__src[v10 - __dst];
  v19 = a1[1];
  v20 = v19;
  while (v18 != a4)
  {
    v21 = *v18;
    v18 += 4;
    *v20 = v21;
    v20 += 4;
    v19 += 4;
  }

  a1[1] = v19;
  if (v17 >= 1)
  {
    v26 = &__dst[4 * a5];
    v27 = &v19[-4 * a5];
    v28 = v19;
    while (v27 < v10)
    {
      v29 = *v27;
      v27 += 4;
      *v28 = v29;
      v28 += 4;
    }

    a1[1] = v28;
    if (v20 != v26)
    {
      memmove(&__dst[4 * a5], __dst, v19 - v26);
    }

    if (v10 != __dst)
    {
      v31 = __dst;
      v32 = v6;
      v30 = v10 - __dst;
LABEL_35:

      memmove(v31, v32, v30);
    }
  }
}

void OpenSubdiv::v3_1_1::Far::PatchTable::~PatchTable(OpenSubdiv::v3_1_1::Far::PatchTable *this)
{
  v2 = *(this + 16);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 17);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v5 = *(this + 25);
  v4 = *(this + 26);
  if (((v4 - v5) >> 3) >= 1)
  {
    v6 = 0;
    do
    {
      v7 = *(v5 + 8 * v6);
      if (v7)
      {
        (*(*v7 + 8))(v7);
        v5 = *(this + 25);
        v4 = *(this + 26);
      }

      ++v6;
    }

    while (v6 < ((v4 - v5) >> 3));
  }

  v8 = *(this + 31);
  if (v8)
  {
    *(this + 32) = v8;
    operator delete(v8);
  }

  v9 = *(this + 28);
  if (v9)
  {
    *(this + 29) = v9;
    operator delete(v9);
  }

  v10 = *(this + 25);
  if (v10)
  {
    *(this + 26) = v10;
    operator delete(v10);
  }

  v11 = *(this + 22);
  if (v11)
  {
    v12 = *(this + 23);
    v13 = *(this + 22);
    if (v12 != v11)
    {
      do
      {
        v12 -= 7;
        std::allocator<OpenSubdiv::v3_1_1::Far::PatchTable::FVarPatchChannel>::destroy[abi:nn200100](this + 176, v12);
      }

      while (v12 != v11);
      v13 = *(this + 22);
    }

    *(this + 23) = v11;
    operator delete(v13);
  }

  v14 = *(this + 19);
  if (v14)
  {
    *(this + 20) = v14;
    operator delete(v14);
  }

  v15 = *(this + 13);
  if (v15)
  {
    *(this + 14) = v15;
    operator delete(v15);
  }

  v16 = *(this + 10);
  if (v16)
  {
    *(this + 11) = v16;
    operator delete(v16);
  }

  v17 = *(this + 7);
  if (v17)
  {
    *(this + 8) = v17;
    operator delete(v17);
  }

  v18 = *(this + 4);
  if (v18)
  {
    *(this + 5) = v18;
    operator delete(v18);
  }

  v19 = *(this + 1);
  if (v19)
  {
    *(this + 2) = v19;
    operator delete(v19);
  }
}

void std::vector<OpenSubdiv::v3_1_1::Far::PatchTable::PatchArray>::reserve(void *a1, unint64_t a2)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 2) < a2)
  {
    if (a2 < 0xCCCCCCCCCCCCCCDLL)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<OpenSubdiv::v3_1_1::Far::PatchTable::PatchArray>>(a1, a2);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }
}

void std::vector<OpenSubdiv::v3_1_1::Far::PatchTable::FVarPatchChannel>::resize(void *result, unint64_t a2)
{
  v3 = result[1];
  v4 = 0x6DB6DB6DB6DB6DB7 * ((v3 - *result) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    std::vector<OpenSubdiv::v3_1_1::Far::PatchTable::FVarPatchChannel>::__append(result, v6);
  }

  else if (!v5)
  {
    v7 = *result + 56 * a2;
    while (v3 != v7)
    {
      v3 -= 7;
      std::allocator<OpenSubdiv::v3_1_1::Far::PatchTable::FVarPatchChannel>::destroy[abi:nn200100](result, v3);
    }

    result[1] = v7;
  }
}

void OpenSubdiv::v3_1_1::Far::PatchTable::allocateFVarPatchChannelValues(uint64_t a1, OpenSubdiv::v3_1_1::Far::PatchDescriptor *a2, int a3, int a4)
{
  v5 = *(a1 + 176) + 56 * a4;
  *(v5 + 4) = *a2;
  NumControlVertices = OpenSubdiv::v3_1_1::Far::PatchDescriptor::GetNumControlVertices(a2);
  std::vector<unsigned int>::resize((v5 + 8), NumControlVertices * a3);

  std::vector<OpenSubdiv::v3_1_1::Far::PatchParam>::resize((v5 + 32), a3);
}

uint64_t *OpenSubdiv::v3_1_1::Far::PatchTable::pushPatchArray(uint64_t *result, int *a2, int a3, int *a4, int *a5, int *a6)
{
  if (a3 >= 1)
  {
    v11 = result;
    if (a6)
    {
      v12 = *a6;
    }

    else
    {
      v12 = 0;
    }

    v13 = *a2;
    v14 = *a4;
    v15 = *a5;
    v16 = result[2];
    v17 = result[3];
    if (v16 >= v17)
    {
      v19 = result[1];
      v20 = 0xCCCCCCCCCCCCCCCDLL * ((v16 - v19) >> 2);
      v21 = v20 + 1;
      if (v20 + 1 > 0xCCCCCCCCCCCCCCCLL)
      {
        std::string::__throw_length_error[abi:nn200100]();
      }

      v22 = 0xCCCCCCCCCCCCCCCDLL * ((v17 - v19) >> 2);
      if (2 * v22 > v21)
      {
        v21 = 2 * v22;
      }

      if (v22 >= 0x666666666666666)
      {
        v23 = 0xCCCCCCCCCCCCCCCLL;
      }

      else
      {
        v23 = v21;
      }

      v30 = result + 1;
      if (v23)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<OpenSubdiv::v3_1_1::Far::PatchTable::PatchArray>>((result + 1), v23);
      }

      v24 = 20 * v20;
      __p = 0;
      v27 = v24;
      v29 = 0;
      *v24 = v13;
      *(v24 + 4) = a3;
      *(v24 + 8) = v14;
      *(v24 + 12) = v15;
      *(v24 + 16) = v12;
      v28 = 20 * v20 + 20;
      std::vector<OpenSubdiv::v3_1_1::Far::PatchTable::PatchArray>::__swap_out_circular_buffer(result + 1, &__p);
      if (v28 != v27)
      {
        v28 = (v28 - v27 - 20) % 0x14uLL + v27;
      }

      v18 = v11[2];
      if (__p)
      {
        operator delete(__p);
      }
    }

    else
    {
      *v16 = v13;
      v16[1] = a3;
      v16[2] = v14;
      v16[3] = v15;
      v18 = v16 + 5;
      v16[4] = v12;
    }

    v11[2] = v18;
    LODWORD(__p) = *a2;
    result = OpenSubdiv::v3_1_1::Far::PatchDescriptor::GetNumControlVertices(&__p);
    v25 = result * a3;
    *a4 += result * a3;
    *a5 += a3;
    if (a6)
    {
      if (*a2 != 7)
      {
        v25 = 0;
      }

      *a6 += v25;
    }
  }

  return result;
}

uint64_t OpenSubdiv::v3_1_1::Far::PatchTable::GetPatchArrayVaryingVertices(OpenSubdiv::v3_1_1::Far::PatchTable *this, int a2)
{
  if (*(this + 19) == *(this + 20))
  {
    return 0;
  }

  v2 = *(this + 1) + 20 * a2;
  return *(this + 19) + 4 * (*(v2 + 12) * OpenSubdiv::v3_1_1::Far::PatchDescriptor::GetNumControlVertices((this + 144)));
}

uint64_t OpenSubdiv::v3_1_1::Far::PatchTable::populateVaryingVertices(OpenSubdiv::v3_1_1::Far::PatchTable *this)
{
  result = OpenSubdiv::v3_1_1::Far::PatchDescriptor::GetNumControlVertices((this + 144));
  v4 = *(this + 1);
  v3 = *(this + 2);
  if ((-858993459 * ((v3 - v4) >> 2)) < 1)
  {
    return result;
  }

  v5 = result;
  v6 = 0;
  do
  {
    v7 = (v4 + 20 * v6);
    if (v7[1] < 1)
    {
      goto LABEL_17;
    }

    v8 = 0;
    v9 = *v7;
    do
    {
      v10 = (*(this + 1) + 20 * v6);
      v16 = *v10;
      result = OpenSubdiv::v3_1_1::Far::PatchDescriptor::GetNumControlVertices(&v16);
      v11 = (*(this + 4) + 4 * (v10[2] + v8 * result));
      v12 = (v8 + v7[3]) * v5;
      if (v9 > 5)
      {
        if (v9 == 9)
        {
          v14 = (*(this + 19) + 4 * v12);
          *v14 = *v11;
          v14[1] = v11[5];
          v14[2] = v11[10];
          v15 = v11[15];
        }

        else
        {
          if (v9 != 6)
          {
            goto LABEL_15;
          }

          v14 = (*(this + 19) + 4 * v12);
          *v14 = v11[5];
          v14[1] = v11[6];
          v14[2] = v11[10];
          v15 = v11[9];
        }

        goto LABEL_14;
      }

      if (v9 == 3)
      {
        v14 = (*(this + 19) + 4 * v12);
        *v14 = *v11;
        v14[1] = v11[1];
        v14[2] = v11[2];
        v15 = v11[3];
LABEL_14:
        v14[3] = v15;
        goto LABEL_15;
      }

      if (v9 == 4)
      {
        v13 = (*(this + 19) + 4 * v12);
        *v13 = *v11;
        v13[1] = v11[1];
        v13[2] = v11[2];
      }

LABEL_15:
      ++v8;
    }

    while (v8 < v7[1]);
    v4 = *(this + 1);
    v3 = *(this + 2);
LABEL_17:
    ++v6;
  }

  while (v6 < (-858993459 * ((v3 - v4) >> 2)));
  return result;
}

void std::allocator<OpenSubdiv::v3_1_1::Far::PatchTable::FVarPatchChannel>::destroy[abi:nn200100](uint64_t a1, void *a2)
{
  v3 = a2[4];
  if (v3)
  {
    a2[5] = v3;
    operator delete(v3);
  }

  v4 = a2[1];
  if (v4)
  {
    a2[2] = v4;

    operator delete(v4);
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<OpenSubdiv::v3_1_1::Far::PatchTable::PatchArray>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xCCCCCCCCCCCCCCDLL)
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

uint64_t *std::vector<OpenSubdiv::v3_1_1::Far::PatchTable::PatchArray>::__swap_out_circular_buffer(uint64_t *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = a2[1] + *result - v3;
    do
    {
      *v5 = *v2;
      *(v5 + 4) = *(v2 + 4);
      v2 += 20;
      v5 += 20;
    }

    while (v2 != v3);
    v2 = *result;
  }

  a2[1] = v4;
  *result = v4;
  result[1] = v2;
  a2[1] = v2;
  v6 = result[1];
  result[1] = a2[2];
  a2[2] = v6;
  v7 = result[2];
  result[2] = a2[3];
  a2[3] = v7;
  *a2 = a2[1];
  return result;
}

void std::vector<OpenSubdiv::v3_1_1::Far::PatchTable::FVarPatchChannel>::__append(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (0x6DB6DB6DB6DB6DB7 * ((v3 - v4) >> 3) >= a2)
  {
    if (a2)
    {
      v11 = 56 * ((56 * a2 - 56) / 0x38) + 56;
      bzero(*(a1 + 8), v11);
      v4 = (v4 + v11);
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = 0x6DB6DB6DB6DB6DB7 * (v6 >> 3);
    if (v7 + a2 > 0x492492492492492)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v8 = 0x6DB6DB6DB6DB6DB7 * ((v3 - v5) >> 3);
    v9 = 2 * v8;
    if (2 * v8 <= v7 + a2)
    {
      v9 = v7 + a2;
    }

    if (v8 >= 0x249249249249249)
    {
      v10 = 0x492492492492492;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      if (v10 <= 0x492492492492492)
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    v12 = (8 * (v6 >> 3));
    v13 = 56 * ((56 * a2 - 56) / 0x38) + 56;
    bzero(v12, v13);
    v14 = &v12[v13];
    v15 = &v12[-v6];
    if (v5 != v4)
    {
      v16 = v5;
      v17 = v15;
      do
      {
        *v17 = *v16;
        *(v17 + 2) = 0;
        *(v17 + 3) = 0;
        *(v17 + 8) = *(v16 + 1);
        *(v17 + 3) = v16[3];
        v16[1] = 0;
        v16[2] = 0;
        v16[3] = 0;
        *(v17 + 5) = 0;
        *(v17 + 6) = 0;
        *(v17 + 2) = *(v16 + 2);
        *(v17 + 6) = v16[6];
        v16[4] = 0;
        v16[5] = 0;
        v16[6] = 0;
        v16 += 7;
        v17 += 56;
      }

      while (v16 != v4);
      do
      {
        std::allocator<OpenSubdiv::v3_1_1::Far::PatchTable::FVarPatchChannel>::destroy[abi:nn200100](a1, v5);
        v5 += 7;
      }

      while (v5 != v4);
      v5 = *a1;
    }

    *a1 = v15;
    *(a1 + 8) = v14;
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

uint64_t OpenSubdiv::v3_1_1::Far::TopologyRefinerFactoryBase::prepareComponentTopologySizing(OpenSubdiv::v3_1_1::Far::TopologyRefinerFactoryBase *this, OpenSubdiv::v3_1_1::Far::TopologyRefiner *a2)
{
  v2 = *(this + 5);
  v3 = *v2;
  end = (*v2)->__end_;
  if (!end)
  {
    OpenSubdiv::v3_1_1::Far::Error(4, "Failure in TopologyRefinerFactory<>::Create() -- mesh contains no vertices.");
    return 0;
  }

  begin = v3->__begin_;
  if (!LODWORD(v3->__begin_))
  {
    OpenSubdiv::v3_1_1::Far::Error(4, "Failure in TopologyRefinerFactory<>::Create() -- meshes without faces not yet supported.");
    return 0;
  }

  if (SHIDWORD(v3->__end_cap_.__value_) >= 0x10000)
  {
    OpenSubdiv::v3_1_1::Far::Error(4, "Failure in TopologyRefinerFactory<>::Create() -- face with %d vertices > %d max.");
    return 0;
  }

  v6 = &v3[1].__begin_[2 * begin - 2];
  v8 = *v6;
  v7 = v6[1];
  v9 = v7 + v8;
  if (!(v7 + v8))
  {
    OpenSubdiv::v3_1_1::Far::Error(4, "Failure in TopologyRefinerFactory<>::Create() -- mesh contains no face-vertices.");
    return 0;
  }

  if (*this == 2 && v9 != 3 * begin)
  {
    OpenSubdiv::v3_1_1::Far::Error(4, "Failure in TopologyRefinerFactory<>::Create() -- non-triangular faces not supported by Loop scheme.");
    return 0;
  }

  std::vector<unsigned int>::resize(v3 + 2, v9);
  begin_high = HIDWORD(v3->__begin_);
  if (begin_high >= 1)
  {
    std::vector<unsigned int>::resize(v3 + 3, (v3[2].__end_ - v3[2].__begin_));
    std::vector<unsigned int>::resize(v3 + 5, 2 * SHIDWORD(v3->__begin_));
    v12 = &v3[6].__begin_[2 * begin_high - 2];
    v13 = *v12;
    v14 = v12[1];
    std::vector<unsigned int>::resize(v3 + 7, v14 + v13);
    std::vector<unsigned short>::resize(&v3[8].__begin_, v14 + v13);
    v15 = 2 * end - 2;
    v16 = v3[11].__begin_;
    v17 = v16[v15];
    v18 = (8 * (v15 >> 1)) | 4;
    v19 = *(v16 + v18);
    std::vector<unsigned int>::resize(v3 + 12, v19 + v17);
    std::vector<unsigned short>::resize(&v3[13].__begin_, v19 + v17);
    v20 = v3[14].__begin_;
    v21 = v20[v15];
    v22 = *(v20 + v18);
    std::vector<unsigned int>::resize(v3 + 15, v22 + v21);
    std::vector<unsigned short>::resize(&v3[16].__begin_, v22 + v21);
  }

  return 1;
}

uint64_t OpenSubdiv::v3_1_1::Far::TopologyRefinerFactoryBase::prepareComponentTopologyAssignment(OpenSubdiv::v3_1_1::Far::TopologyRefiner *this, int a2, void (*a3)(uint64_t, char *, uint64_t), uint64_t a4)
{
  v8 = *(this + 5);
  v9 = *v8;
  v10 = *(*v8 + 1);
  if (v10)
  {
    if (!*(v9 + 5))
    {
      OpenSubdiv::v3_1_1::Far::Error(4, "Failure in TopologyRefinerFactory<>::Create() -- maximum valence not assigned.");
      return 0;
    }
  }

  else if (!OpenSubdiv::v3_1_1::Vtr::internal::Level::completeTopologyFromFaceVertices(*v8))
  {
    OpenSubdiv::v3_1_1::Far::Error(4, "Failure in TopologyRefinerFactory<>::Create() -- vertex with valence %d > %d max.");
    return 0;
  }

  if (!a2 || (OpenSubdiv::v3_1_1::Vtr::internal::Level::validateTopology(v9, a3, a4) & 1) != 0)
  {
    OpenSubdiv::v3_1_1::Far::TopologyRefiner::initializeInventory(this);
    return 1;
  }

  if (v10)
  {
    OpenSubdiv::v3_1_1::Far::Error(4, "Failure in TopologyRefinerFactory<>::Create() -- invalid topology detected as fully specified.");
  }

  else
  {
    OpenSubdiv::v3_1_1::Far::Error(4, "Failure in TopologyRefinerFactory<>::Create() -- invalid topology detected from partial specification.");
  }

  return 0;
}

uint64_t OpenSubdiv::v3_1_1::Far::TopologyRefinerFactoryBase::prepareComponentTagsAndSharpness(int *a1)
{
  v2 = **(a1 + 5);
  v68 = a1[1] & 3;
  if (v68)
  {
    v3 = 0;
  }

  else
  {
    v4 = *a1;
    OpenSubdiv::v3_1_1::Sdc::staticTraitsTable(a1);
    v3 = SHIDWORD(OpenSubdiv::v3_1_1::Sdc::staticTraitsTable(void)::staticTraitsTable[3 * v4 + 2]) > 0;
  }

  if (*(v2 + 4) >= 1)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = *(v2 + 240);
      v8 = *(v2 + 216);
      v48 = *(*(v2 + 144) + v5) < 2;
      v9 = *(v7 + v6);
      v10 = v9 & 0xFD | (2 * v48);
      *(v7 + v6) = v10;
      if (v48 || (v9 & 1) != 0)
      {
        *(v8 + 4 * v6) = 1092616192;
        v10 = *(v7 + v6);
        v11 = 4;
      }

      else
      {
        v11 = 4 * (*(v8 + 4 * v6) >= 10.0);
      }

      v12 = v10 & 0xFB | v11;
      *(v7 + v6) = v12;
      v13 = *(v8 + 4 * v6);
      v14 = (2 * v11) ^ 8;
      if (v13 <= 0.0)
      {
        v14 = 0;
      }

      *(v7 + v6++) = v14 | v12 & 0xF7;
      v5 += 8;
    }

    while (v6 < *(v2 + 4));
  }

  v15 = *a1;
  OpenSubdiv::v3_1_1::Sdc::staticTraitsTable(a1);
  if (*(v2 + 8) >= 1)
  {
    v16 = 0;
    v17 = OpenSubdiv::v3_1_1::Sdc::staticTraitsTable(void)::staticTraitsTable[3 * v15 + 2];
    do
    {
      v18 = *(v2 + 336);
      v19 = (8 * v16) | 4;
      v20 = (*(v2 + 360) + 4 * *(v18 + v19));
      v21 = *(v18 + 8 * v16);
      if (v21 < 1)
      {
        LOBYTE(v30) = 0;
        v24 = 0;
        v29 = 1;
      }

      else
      {
        v22 = 0;
        v23 = 0;
        v24 = 0;
        v25 = (*(v2 + 360) + 4 * *(v18 + v19));
        v26 = *(v18 + 8 * v16);
        do
        {
          v27 = *v25++;
          v28 = *(*(v2 + 240) + v27);
          v22 += (v28 >> 1) & 1;
          v24 = vadd_s32(v24, (*&vshl_u32(vdup_n_s32(v28), 0xFFFFFFFEFFFFFFFDLL) & 0xFFFFFFC1FFFFFFC1));
          v23 += v28 & 1;
          --v26;
        }

        while (v26);
        v29 = v22 == 0;
        if (v22)
        {
          LOBYTE(v30) = 0;
        }

        else
        {
          v30 = v23 == 2;
        }
      }

      v31 = *(v2 + 432);
      v32 = *(v2 + 408);
      v33 = *(v2 + 288);
      v34 = *(v2 + 264);
      v35 = *(v34 + v19);
      v36 = *(v34 + 8 * v16);
      if (v36 == 1)
      {
        v37 = v21 == 2;
        if (v68 == 2 && v21 == 2)
        {
          v37 = 1;
LABEL_32:
          *(v32 + 4 * v16) = 1092616192;
          v38 = *(v31 + 2 * v16);
          v40 = 1;
LABEL_34:
          v42 = 0;
          v43 = 16;
          goto LABEL_35;
        }
      }

      else
      {
        v37 = 0;
      }

      v38 = *(v31 + 2 * v16);
      v39 = v36 > v21 && v30;
      if ((v38 & 1) != 0 && !v39)
      {
        goto LABEL_32;
      }

      v41 = *(v32 + 4 * v16);
      v40 = v41 >= 10.0;
      if (v41 >= 10.0)
      {
        goto LABEL_34;
      }

      v43 = 0;
      v42 = 1;
LABEL_35:
      v44 = v24.i32[0];
      v45 = v24.i32[1] + v24.i32[0];
      v46 = v38 & 0xFFEF | v43;
      *(v31 + 2 * v16) = v46;
      v47 = *(v32 + 4 * v16);
      v48 = v47 >= 10.0 || v47 <= 0.0;
      if (v48)
      {
        v49 = 0;
      }

      else
      {
        v49 = 32;
      }

      v50 = v49 | ((v44 != 0) << 6) | v46 & 0xFF9F;
      *(v31 + 2 * v16) = v50;
      v51 = *(v32 + 4 * v16) <= 0.0 && v45 <= 2;
      v52 = ((1 << v45) & 0xF) << 7;
      if (!v51)
      {
        LOWORD(v52) = 1024;
      }

      if (v29)
      {
        v53 = 0;
      }

      else
      {
        v53 = 4;
      }

      if (v37 && v40)
      {
        v54 = 8;
      }

      else
      {
        v54 = 2 * (v36 != v17);
        if (!v29)
        {
          v54 = 2 * (v36 != v17 / 2);
        }
      }

      v55 = v52 | v53;
      v56 = v54 | v50 & 0xF871;
      if (((v24.i32[1] == 0) & v42) != 0)
      {
        v57 = 0;
      }

      else
      {
        v57 = 0x4000;
      }

      LOWORD(v58) = v56 & 0x807B | ((v24.i32[1] != 0) << 12) | v55;
      v59 = v57 | v58;
      *(v31 + 2 * v16) = v57 | v58;
      if (!v24.i32[1])
      {
        goto LABEL_83;
      }

      v60 = (*(v32 + 4 * v16) > 0.0) & ~v42;
      if (v24.i32[1] > 2)
      {
        v60 = 1;
      }

      if (v60)
      {
        v61 = 8;
      }

      else
      {
        v61 = 1 << v24.i8[4];
      }

      if (v61 != 8)
      {
        if (v61 != 4)
        {
          goto LABEL_83;
        }

        v59 |= 0x2000u;
        *(v31 + 2 * v16) = v59;
        if ((v56 & 3) != 0)
        {
          goto LABEL_83;
        }

        if (v29)
        {
          if (v17 == 6)
          {
            v63 = *(v2 + 240);
            if (((*(v63 + v20[3]) ^ *(v63 + *v20)) & 4) != 0)
            {
              v64 = 0x4000;
            }

            else
            {
              v64 = ((*(v63 + v20[4]) ^ *(v63 + v20[1])) & 4) << 12;
            }

            LOWORD(v58) = v64 | v59 & 0xB7F8;
          }

          else
          {
            if (v17 != 4)
            {
              goto LABEL_83;
            }

            v58 = v59 & 0xB7F8 | ((((*(*(v2 + 240) + v20[2]) ^ *(*(v2 + 240) + *v20)) >> 2) & 1) << 14);
          }
        }

        else
        {
          LOWORD(v58) = v59 & 0xB7FC;
        }

LABEL_82:
        *(v31 + 2 * v16) = v58;
        LOBYTE(v59) = v58;
        goto LABEL_83;
      }

      if (v21 < 3)
      {
        v62 = v42;
      }

      else
      {
        v62 = 0;
      }

      if (v24.i32[1] == v21 && (v62 & 1) == 0)
      {
        goto LABEL_82;
      }

LABEL_83:
      if (v3 && (v59 & 4) != 0 && v36 >= 1)
      {
        v65 = (v33 + 4 * v35);
        do
        {
          v66 = *v65++;
          *(*(v2 + 96) + v66) |= 1u;
          *(a1 + 8) |= 2u;
          --v36;
        }

        while (v36);
      }

      ++v16;
    }

    while (v16 < *(v2 + 8));
  }

  return 1;
}

uint64_t OpenSubdiv::v3_1_1::Far::TopologyRefinerFactoryBase::prepareFaceVaryingChannels(OpenSubdiv::v3_1_1::Far::TopologyRefinerFactoryBase *this, OpenSubdiv::v3_1_1::Far::TopologyRefiner *a2)
{
  v3 = **(this + 5);
  v4 = *this;
  OpenSubdiv::v3_1_1::Sdc::staticTraitsTable(this);
  if (((*(**(this + 5) + 464) - *(**(this + 5) + 456)) >> 3) < 1)
  {
    return 1;
  }

  v5 = 0;
  v6 = SLODWORD(OpenSubdiv::v3_1_1::Sdc::staticTraitsTable(void)::staticTraitsTable[3 * v4 + 2]) / 2;
  while (1)
  {
    v7 = *(*(v3 + 456) + 8 * v5);
    if (!*(v7 + 4))
    {
      break;
    }

    OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::completeTopologyFromFaceValues(v7, v6);
    if (++v5 >= ((*(**(this + 5) + 464) - *(**(this + 5) + 456)) >> 3))
    {
      return 1;
    }
  }

  OpenSubdiv::v3_1_1::Far::Error(4, "Failure in TopologyRefinerFactory<>::Create() -- face-varying channel %d has no values.", v5);
  return 0;
}

void OpenSubdiv::v3_1_1::Far::PtexIndices::initializePtexIndices(OpenSubdiv::v3_1_1::Sdc *a1, unsigned int *a2)
{
  v4 = *a2;
  OpenSubdiv::v3_1_1::Sdc::staticTraitsTable(a1);
  v5 = HIDWORD(OpenSubdiv::v3_1_1::Sdc::staticTraitsTable(void)::staticTraitsTable[3 * v4 + 1]);
  v6 = *(a2 + 5);
  v7 = *v6;
  v8 = **v6;
  std::vector<unsigned int>::resize(a1, v8 + 1);
  v9 = *a1;
  if (v8 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = 0;
    v11 = *(v7 + 24);
    v12 = *a1;
    v13 = v8;
    do
    {
      *v12++ = v10;
      v15 = *v11;
      v11 += 2;
      v14 = v15;
      if (v15 == v5)
      {
        v14 = 1;
      }

      v10 += v14;
      --v13;
    }

    while (v13);
  }

  *(v9 + 4 * v8) = v10;
}

double OpenSubdiv::v3_1_1::Sdc::Crease::ComputeFractionalWeightAtVertex(OpenSubdiv::v3_1_1::Sdc::Crease *this, float a2, float a3, unsigned int a4, float *a5, const float *a6)
{
  v6 = a2 > 0.0 && a3 <= 0.0;
  if (a2 <= 0.0 || a3 > 0.0)
  {
    a2 = 0.0;
  }

  if (a6 && (*this & 0x60) != 0)
  {
    if (a4 >= 1)
    {
      v7 = a4;
      do
      {
        if (*a5 > 0.0 && *a6 <= 0.0)
        {
          a2 = a2 + *a5;
          ++v6;
        }

        ++a6;
        ++a5;
        --v7;
      }

      while (v7);
    }
  }

  else if (a4 >= 1)
  {
    v8 = a4;
    do
    {
      v9 = *a5++;
      v10 = a2 + v9;
      v6 += v9 > 0.0 && v9 <= 1.0;
      if (v9 > 0.0 && v9 <= 1.0)
      {
        a2 = v10;
      }

      --v8;
    }

    while (v8);
  }

  if (!v6)
  {
    return 0.0;
  }

  *&result = a2 / v6;
  if (*&result > 1.0)
  {
    *&result = 1.0;
  }

  return result;
}

float OpenSubdiv::v3_1_1::Sdc::Crease::SubdivideEdgeSharpnessAtVertex(OpenSubdiv::v3_1_1::Sdc::Crease *this, float a2, unsigned int a3, float *a4)
{
  if (a3 >= 2 && (*this & 0x60) != 0)
  {
    v4 = 0.0;
    if (a2 > 0.0)
    {
      v4 = 10.0;
      if (a2 < 10.0)
      {
        v5 = 0;
        v6 = a3;
        v7 = 0.0;
        do
        {
          v8 = *a4++;
          v9 = v7 + v8;
          v10 = v8 > 0.0 && v8 < 10.0;
          if (v8 > 0.0 && v8 < 10.0)
          {
            v7 = v9;
          }

          v5 += v10;
          --v6;
        }

        while (v6);
        v11 = v5 != 0;
        v12 = v5 - 1;
        if (v12 != 0 && v11)
        {
          a2 = (((v7 - a2) / v12) * 0.25) + (a2 * 0.75);
        }

        return fmaxf(a2 + -1.0, 0.0);
      }
    }
  }

  else
  {
    v4 = 0.0;
    if (a2 > 0.0)
    {
      v4 = 10.0;
      if (a2 < 10.0)
      {
        v4 = 0.0;
        if (a2 > 1.0)
        {
          return a2 + -1.0;
        }
      }
    }
  }

  return v4;
}

_WORD *OpenSubdiv::v3_1_1::Sdc::Crease::SubdivideEdgeSharpnessesAroundVertex(_WORD *this, unsigned int a2, float *a3, float *a4)
{
  if (a2 > 1 && (*this & 0x60) != 0)
  {
    if ((*this & 0x60) == 0x20)
    {
      v4 = 0;
      v5 = a2;
      v6 = 0.0;
      v7 = a3;
      v8 = a2;
      do
      {
        v9 = *v7++;
        v10 = v6 + v9;
        v4 += v9 > 0.0 && v9 < 10.0;
        if (v9 > 0.0 && v9 < 10.0)
        {
          v6 = v10;
        }

        --v8;
      }

      while (v8);
      if (v4)
      {
        while (1)
        {
          v11 = *a3;
          v12 = 0.0;
          if (*a3 <= 0.0)
          {
            goto LABEL_16;
          }

          v12 = 10.0;
          if (v11 >= 10.0)
          {
            goto LABEL_16;
          }

          if (v4 == 1)
          {
            break;
          }

          v13 = ((((v6 - v11) / (v4 - 1)) * 0.25) + (v11 * 0.75)) + -1.0;
          v12 = 0.0;
          if (v13 <= 0.0)
          {
            goto LABEL_16;
          }

LABEL_17:
          *a4++ = v13;
          ++a3;
          if (!--v5)
          {
            return this;
          }
        }

        v12 = v11 + -1.0;
        if (v11 <= 1.0)
        {
          v12 = 0.0;
        }

LABEL_16:
        v13 = v12;
        goto LABEL_17;
      }

      do
      {
        v14 = *a3++;
        *a4++ = v14;
        --v5;
      }

      while (v5);
    }
  }

  else if (a2 >= 1)
  {
    v15 = a2;
    do
    {
      v16 = *a3;
      v17 = 0.0;
      if (*a3 > 0.0)
      {
        v17 = 10.0;
        if (v16 < 10.0)
        {
          v17 = 0.0;
          if (v16 > 1.0)
          {
            v17 = v16 + -1.0;
          }
        }
      }

      *a4++ = v17;
      ++a3;
      --v15;
    }

    while (v15);
  }

  return this;
}

void OpenSubdiv::v3_1_1::Vtr::internal::Level::~Level(OpenSubdiv::v3_1_1::Vtr::internal::Level *this)
{
  v4 = this + 456;
  v2 = *(this + 57);
  v3 = *(v4 + 1);
  if (((v3 - v2) >> 3) >= 1)
  {
    v5 = 0;
    do
    {
      if (v2[v5])
      {
        OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::~FVarLevel(v2[v5]);
        MEMORY[0x1E6906520]();
        v2 = *(this + 57);
        v3 = *(this + 58);
      }

      ++v5;
    }

    while (v5 < ((v3 - v2) >> 3));
  }

  if (v2)
  {
    *(this + 58) = v2;
    operator delete(v2);
  }

  v6 = *(this + 54);
  if (v6)
  {
    *(this + 55) = v6;
    operator delete(v6);
  }

  v7 = *(this + 51);
  if (v7)
  {
    *(this + 52) = v7;
    operator delete(v7);
  }

  v8 = *(this + 48);
  if (v8)
  {
    *(this + 49) = v8;
    operator delete(v8);
  }

  v9 = *(this + 45);
  if (v9)
  {
    *(this + 46) = v9;
    operator delete(v9);
  }

  v10 = *(this + 42);
  if (v10)
  {
    *(this + 43) = v10;
    operator delete(v10);
  }

  v11 = *(this + 39);
  if (v11)
  {
    *(this + 40) = v11;
    operator delete(v11);
  }

  v12 = *(this + 36);
  if (v12)
  {
    *(this + 37) = v12;
    operator delete(v12);
  }

  v13 = *(this + 33);
  if (v13)
  {
    *(this + 34) = v13;
    operator delete(v13);
  }

  v14 = *(this + 30);
  if (v14)
  {
    *(this + 31) = v14;
    operator delete(v14);
  }

  v15 = *(this + 27);
  if (v15)
  {
    *(this + 28) = v15;
    operator delete(v15);
  }

  v16 = *(this + 24);
  if (v16)
  {
    *(this + 25) = v16;
    operator delete(v16);
  }

  v17 = *(this + 21);
  if (v17)
  {
    *(this + 22) = v17;
    operator delete(v17);
  }

  v18 = *(this + 18);
  if (v18)
  {
    *(this + 19) = v18;
    operator delete(v18);
  }

  v19 = *(this + 15);
  if (v19)
  {
    *(this + 16) = v19;
    operator delete(v19);
  }

  v20 = *(this + 12);
  if (v20)
  {
    *(this + 13) = v20;
    operator delete(v20);
  }

  v21 = *(this + 9);
  if (v21)
  {
    *(this + 10) = v21;
    operator delete(v21);
  }

  v22 = *(this + 6);
  if (v22)
  {
    *(this + 7) = v22;
    operator delete(v22);
  }

  v23 = *(this + 3);
  if (v23)
  {
    *(this + 4) = v23;
    operator delete(v23);
  }
}

uint64_t OpenSubdiv::v3_1_1::Vtr::internal::Level::validateTopology(OpenSubdiv::v3_1_1::Vtr::internal::Level *this, void (*a2)(uint64_t, char *, uint64_t), uint64_t a3)
{
  v80 = *MEMORY[0x1E69E9840];
  v6 = *(this + 6);
  if (((*(this + 7) - v6) & 0x3FFFFFFFCLL) == 0)
  {
    if (!a2)
    {
      return 0;
    }

    snprintf(__str, 0x400uLL, "%s - missing face-verts", "MISSING_FACE_VERTS");
    a2(3, __str, a3);
    v8 = *(this + 37) - *(this + 36);
    v63 = 1;
LABEL_65:
    v65 = 0;
    if (v63 && (v8 & 0x3FFFFFFFCLL) == 0)
    {
      snprintf(__str, 0x400uLL, "%s - missing vert-faces", "MISSING_VERT_FACES");
      v64 = 4;
      goto LABEL_68;
    }

    return v65;
  }

  v7 = *(this + 36);
  v8 = *(this + 37) - v7;
  if ((v8 & 0x3FFFFFFFCLL) == 0)
  {
    v63 = a2 != 0;
    goto LABEL_65;
  }

  v9 = *this;
  if (v9 >= 1)
  {
    v10 = 0;
    while (1)
    {
      v11 = (*(this + 3) + 8 * v10);
      v12 = *v11;
      if (v12 >= 1)
      {
        break;
      }

LABEL_14:
      if (++v10 == v9)
      {
        goto LABEL_15;
      }
    }

    v13 = 0;
    v14 = v6 + 4 * v11[1];
    v15 = *(this + 33);
    while (1)
    {
      v16 = *(v14 + 4 * v13);
      v17 = *(v15 + 8 * v16);
      if (v17 < 1)
      {
        break;
      }

      v18 = *(v15 + 8 * v16 + 4);
      v19 = (v7 + 4 * v18);
      v20 = (*(this + 39) + 2 * v18);
      while (1)
      {
        v21 = *v19++;
        if (v10 == v21 && v13 == *v20)
        {
          break;
        }

        ++v20;
        if (!--v17)
        {
          goto LABEL_61;
        }
      }

      if (++v13 == v12)
      {
        goto LABEL_14;
      }
    }

LABEL_61:
    if (!a2)
    {
      return 0;
    }

    snprintf(__str, 0x400uLL, "%s - face %d correlation of vert %d failed");
    goto LABEL_63;
  }

LABEL_15:
  v22 = *(this + 21);
  if (((*(this + 22) - v22) & 0x3FFFFFFFCLL) == 0)
  {
    if (!a2)
    {
      return 0;
    }

    snprintf(__str, 0x400uLL, "%s - missing edge-faces", "MISSING_EDGE_FACES");
    a2(0, __str, a3);
    v24 = *(this + 10) - *(this + 9);
    v67 = 1;
LABEL_76:
    v65 = 0;
    if (v67 && (v24 & 0x3FFFFFFFCLL) == 0)
    {
      snprintf(__str, 0x400uLL, "%s - missing face-edges", "MISSING_FACE_EDGES");
      v64 = 2;
      goto LABEL_68;
    }

    return v65;
  }

  v23 = *(this + 9);
  v24 = *(this + 10) - v23;
  if ((v24 & 0x3FFFFFFFCLL) == 0)
  {
    v67 = a2 != 0;
    goto LABEL_76;
  }

  if (v9 >= 1)
  {
    v25 = 0;
    while (1)
    {
      v26 = (*(this + 3) + 8 * v25);
      v27 = *v26;
      if (v27 >= 1)
      {
        break;
      }

LABEL_28:
      if (++v25 == v9)
      {
        goto LABEL_29;
      }
    }

    v28 = 0;
    v29 = v23 + 4 * v26[1];
    v30 = *(this + 18);
    while (1)
    {
      v31 = *(v29 + 4 * v28);
      v32 = *(v30 + 8 * v31);
      if (v32 < 1)
      {
        break;
      }

      v33 = *(v30 + 8 * v31 + 4);
      v34 = (v22 + 4 * v33);
      v35 = (*(this + 24) + 2 * v33);
      while (1)
      {
        v36 = *v34++;
        if (v25 == v36 && v28 == *v35)
        {
          break;
        }

        ++v35;
        if (!--v32)
        {
          goto LABEL_73;
        }
      }

      if (++v28 == v27)
      {
        goto LABEL_28;
      }
    }

LABEL_73:
    if (!a2)
    {
      return 0;
    }

    snprintf(__str, 0x400uLL, "%s - face %d correlation of edge %d failed", "FAILED_CORRELATION_FACE_EDGE", v25, v28);
    v64 = 8;
    goto LABEL_68;
  }

LABEL_29:
  v37 = *(this + 15);
  if (((*(this + 16) - v37) & 0x3FFFFFFFCLL) == 0)
  {
    if (!a2)
    {
      return 0;
    }

    snprintf(__str, 0x400uLL, "%s - missing edge-verts", "MISSING_EDGE_VERTS");
    v68 = 1;
    a2(1, __str, a3);
    v39 = *(this + 46) - *(this + 45);
LABEL_84:
    v65 = 0;
    if (v68 && (v39 & 0x3FFFFFFFCLL) == 0)
    {
      snprintf(__str, 0x400uLL, "%s - missing vert-edges", "MISSING_VERT_EDGES");
      v64 = 5;
      goto LABEL_68;
    }

    return v65;
  }

  v38 = *(this + 45);
  v39 = *(this + 46) - v38;
  if ((v39 & 0x3FFFFFFFCLL) == 0)
  {
    v68 = a2 != 0;
    goto LABEL_84;
  }

  v40 = *(this + 1);
  if (v40 >= 1)
  {
    v41 = 0;
    v42 = *(this + 42);
LABEL_33:
    v43 = 0;
    v44 = 1;
    while (1)
    {
      v45 = v44;
      v46 = *(v37 + 8 * v41 + 4 * v43);
      v47 = *(v42 + 8 * v46);
      if (v47 < 1)
      {
        break;
      }

      v48 = *(v42 + 8 * v46 + 4);
      v49 = (v38 + 4 * v48);
      v50 = (*(this + 48) + 2 * v48);
      while (1)
      {
        v51 = *v49++;
        if (v41 == v51 && v43 == *v50)
        {
          break;
        }

        ++v50;
        if (!--v47)
        {
          goto LABEL_81;
        }
      }

      v44 = 0;
      v43 = 1;
      if ((v45 & 1) == 0)
      {
        if (++v41 != v40)
        {
          goto LABEL_33;
        }

        goto LABEL_42;
      }
    }

LABEL_81:
    if (!a2)
    {
      return 0;
    }

    snprintf(__str, 0x400uLL, "%s - edge %d correlation of vert %d failed");
LABEL_63:
    v64 = 7;
LABEL_68:
    a2(v64, __str, a3);
    return 0;
  }

LABEL_42:
  v52 = 2 * *(this + 5);
  v76 = &v77;
  __p = 0;
  if (v52 >= 0x21)
  {
    __p = operator new(4 * v52);
    v76 = __p;
  }

  if (*(this + 2) >= 1)
  {
    for (i = 0; i < *(this + 2); ++i)
    {
      if ((*(*(this + 54) + 2 * i) & 0x801) == 0)
      {
        v54 = *(this + 33);
        v55 = (8 * i) | 4;
        v56 = *(v54 + v55);
        v57 = *(this + 36);
        v58 = *(v54 + 8 * i);
        v59 = *(this + 42);
        v74 = *(v59 + v55);
        v75 = *(this + 45);
        v60 = *(v59 + 8 * i);
        if (!OpenSubdiv::v3_1_1::Vtr::internal::Level::orderVertexFacesAndEdges(this, i, v76, &v76[v58]))
        {
          if (!a2)
          {
            goto LABEL_105;
          }

          snprintf(__str, 0x400uLL, "%s - vertex %d cannot orient incident faces and edges", "FAILED_ORIENTATION_INCIDENT_FACES_EDGES", i);
          v73 = 11;
          goto LABEL_104;
        }

        if (v58 >= 1)
        {
          v61 = 0;
          while (*(v57 + 4 * v56 + 4 * v61) == v76[v61])
          {
            if (v58 == ++v61)
            {
              goto LABEL_54;
            }
          }

          if (a2)
          {
            snprintf(__str, 0x400uLL, "%s - vertex %d orientation failure at incident face %d", "FAILED_ORIENTATION_INCIDENT_FACE", i, v61);
            v73 = 10;
            goto LABEL_104;
          }

          goto LABEL_105;
        }

LABEL_54:
        if (v60 >= 1)
        {
          v62 = 0;
          while (*(v75 + 4 * v74 + 4 * v62) == v76[v58 + v62])
          {
            if (v60 == ++v62)
            {
              goto LABEL_47;
            }
          }

          if (a2)
          {
            snprintf(__str, 0x400uLL, "%s - vertex %d orientation failure at incident edge %d", "FAILED_ORIENTATION_INCIDENT_EDGE", i, v62);
            v73 = 9;
            goto LABEL_104;
          }

          goto LABEL_105;
        }
      }

LABEL_47:
      ;
    }
  }

  v69 = *(this + 1);
  if (v69 < 1)
  {
LABEL_93:
    v65 = 1;
  }

  else
  {
    v70 = 0;
    v71 = 0;
    while (1)
    {
      if ((*(*(this + 30) + v71) & 1) == 0)
      {
        if (*(*(this + 15) + v70) == *(*(this + 15) + v70 + 4))
        {
          if (!a2)
          {
            goto LABEL_105;
          }

          snprintf(__str, 0x400uLL, "%s - Error in eIndex = %d:  degenerate edge not tagged marked non-manifold", "DEGENERATE_EDGE", v71);
          v73 = 12;
          goto LABEL_104;
        }

        v72 = *(*(this + 18) + v70);
        if ((v72 - 3) <= 0xFFFFFFFD)
        {
          break;
        }
      }

      ++v71;
      v70 += 8;
      if (v69 == v71)
      {
        goto LABEL_93;
      }
    }

    if (!a2)
    {
      goto LABEL_105;
    }

    snprintf(__str, 0x400uLL, "%s - edge %d with %d incident faces not tagged non-manifold", "NON_MANIFOLD_EDGE", v71, v72);
    v73 = 13;
LABEL_104:
    a2(v73, __str, a3);
LABEL_105:
    v65 = 0;
  }

  operator delete(__p);
  return v65;
}

uint64_t OpenSubdiv::v3_1_1::Vtr::internal::Level::orderVertexFacesAndEdges(OpenSubdiv::v3_1_1::Vtr::internal::Level *this, int a2, int *a3, int *a4)
{
  v4 = *(this + 42);
  v5 = 8 * a2;
  v6 = *(v4 + v5);
  v7 = *(this + 33);
  v8 = *(v7 + v5);
  if (v8)
  {
    v9 = v6 < 2;
  }

  else
  {
    v9 = 1;
  }

  if (!v9 && v6 - v8 <= 1)
  {
    v12 = (8 * ((2 * a2) >> 1)) | 4;
    if (v6 == v8)
    {
      v12 = *(*(this + 36) + 4 * *(v7 + v12));
      v13 = *(this + 3);
      v14 = *(v13 + 4 * ((2 * v12) | 1));
      v15 = *(this + 6) + 4 * v14;
      v16 = *(v13 + 8 * v12);
      if (v16)
      {
        v17 = 4 * v16;
        v18 = (v15 + v17);
        v19 = (*(this + 6) + 4 * v14);
        while (*v19 != a2)
        {
          ++v19;
          v17 -= 4;
          if (!v17)
          {
            v19 = v18;
            break;
          }
        }
      }

      else
      {
        v19 = (*(this + 6) + 4 * v14);
      }

      v21 = (v19 - v15) >> 2;
      v31 = *(this + 9);
      LODWORD(v14) = *(v31 + 4 * v14 + 4 * v21);
    }

    else
    {
      v20 = 0;
      LODWORD(v21) = 0;
      v22 = *(this + 45) + 4 * *(v4 + v12);
      v23 = *(this + 18);
      LODWORD(v12) = -1;
      v24 = -1;
      do
      {
        v14 = *(v22 + 4 * v20);
        if (*(v23 + 8 * v14) == 1)
        {
          v12 = *(*(this + 21) + 4 * *(v23 + 4 * ((2 * v14) | 1)));
          v13 = *(this + 3);
          v25 = *(v13 + 4 * ((2 * v12) | 1));
          v26 = *(this + 6) + 4 * v25;
          v27 = *(v13 + 8 * v12);
          if (v27)
          {
            v28 = 4 * v27;
            v29 = (v26 + v28);
            v30 = (*(this + 6) + 4 * v25);
            while (*v30 != a2)
            {
              ++v30;
              v28 -= 4;
              if (!v28)
              {
                v30 = v29;
                break;
              }
            }
          }

          else
          {
            v30 = (*(this + 6) + 4 * v25);
          }

          v21 = (v30 - v26) >> 2;
          v31 = *(this + 9);
          if (v14 == *(v31 + 4 * v25 + 4 * v21))
          {
            goto LABEL_29;
          }

          v24 = *(v22 + 4 * v20);
        }

        ++v20;
      }

      while (v20 != v6);
      v13 = *(this + 3);
      v31 = *(this + 9);
      LODWORD(v14) = v24;
    }

LABEL_29:
    v32 = 1;
    *a3 = v12;
    *a4 = v14;
    LODWORD(v33) = v12;
    v34 = v14;
    v35 = 1;
    while (1)
    {
      v36 = v34;
      v37 = *(v13 + 8 * v33);
      if (v21)
      {
        v37 = v21;
      }

      v34 = *(v31 + 4 * *(v13 + 8 * v33 + 4) + 4 * v37 - 4);
      if (v34 == v36 || v34 == v14)
      {
        break;
      }

      a4[v32] = v34;
      if (v35 < v8)
      {
        v39 = *(this + 18);
        v40 = (*(this + 21) + 4 * *(v39 + 4 * ((2 * v34) | 1)));
        v41 = *(v39 + 8 * v34);
        if (v41 == 1)
        {
          v42 = *v40;
          if (*v40 == v33)
          {
            return 0;
          }
        }

        else
        {
          if (!v41)
          {
            return 0;
          }

          v42 = *v40;
        }

        v33 = v40[v42 == v33];
        v43 = v31 + 4 * *(v13 + 4 * ((2 * v33) | 1));
        v44 = *(v13 + 8 * v33);
        if (v44)
        {
          v45 = 4 * v44;
          v46 = (v43 + v45);
          v47 = (v31 + 4 * *(v13 + 4 * ((2 * v33) | 1)));
          while (*v47 != v34)
          {
            ++v47;
            v45 -= 4;
            if (!v45)
            {
              v47 = v46;
              break;
            }
          }
        }

        else
        {
          v47 = (v31 + 4 * *(v13 + 4 * ((2 * v33) | 1)));
        }

        v21 = (v47 - v43) >> 2;
        a3[v35++] = v33;
      }

      if (++v32 == v6)
      {
        return 1;
      }
    }
  }

  return 0;
}