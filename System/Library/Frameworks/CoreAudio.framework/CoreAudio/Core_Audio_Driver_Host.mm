@interface Core_Audio_Driver_Host
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (Core_Audio_Driver_Host)init;
- (id).cxx_construct;
- (id)init_with_delegate:(id)init_with_delegate;
- (int)abort_device_configuration_change:(unsigned int)abort_device_configuration_change action:(unint64_t)action change:(unint64_t)change;
- (int)add_device_client:(unsigned int)add_device_client client_info:(const AudioServerPlugInClientInfo *)client_info;
- (int)create_device:(id)create_device client_info:(const AudioServerPlugInClientInfo *)client_info out_object_id:(unsigned int *)out_object_id;
- (int)destroy_device:(unsigned int)destroy_device;
- (int)get_property_data:(Driver_Property_Identity *)get_property_data qualifier_data_size:(unsigned int)qualifier_data_size qualifier_data:(const void *)qualifier_data data_size:(unsigned int)data_size out_data_size:(unsigned int *)out_data_size out_data:(void *)out_data;
- (int)get_property_data_size:(Driver_Property_Identity *)get_property_data_size qualifier_data_size:(unsigned int)qualifier_data_size qualifier_data:(const void *)qualifier_data out_size:(unsigned int *)out_size;
- (int)has_property:(Driver_Property_Identity *)has_property out_has_property:(char *)out_has_property;
- (int)initialize_driver:(id)initialize_driver;
- (int)is_property_settable:(Driver_Property_Identity *)is_property_settable out_settable:(char *)out_settable;
- (int)object_was_destroyed:(unsigned int)object_was_destroyed;
- (int)perform_device_configuration_change:(unsigned int)perform_device_configuration_change action:(unint64_t)action change:(unint64_t)change;
- (int)register_buffer:(id)register_buffer;
- (int)remove_device_client:(unsigned int)remove_device_client client_info:(const AudioServerPlugInClientInfo *)client_info;
- (int)set_property_data:(Driver_Property_Identity *)set_property_data qualifier_data_size:(unsigned int)qualifier_data_size qualifier_data:(const void *)qualifier_data data_size:(unsigned int)data_size data:(const void *)data;
- (int)start_io:(unsigned int)start_io client_info:(unsigned int)client_info;
- (int)start_synchronous_messenger:(unsigned int)start_synchronous_messenger client_id:(unsigned int)client_id nominal_sample_rate:(double)nominal_sample_rate io_buffer_frame_size:(unsigned int)io_buffer_frame_size work_group_port:(unsigned int)work_group_port io_messenger:(id)io_messenger;
- (int)stop_io:(unsigned int)stop_io client_info:(unsigned int)client_info;
- (int)stop_synchronous_messenger:(unsigned int)stop_synchronous_messenger client_id:(unsigned int)client_id;
- (int)unregister_buffer:(id)unregister_buffer;
- (shared_ptr<Property_Type_Info>)m_property_type_info;
- (void)copy_storage_settings:(id)copy_storage_settings reply:(id)reply;
- (void)dealloc;
- (void)delete_storage_settings:(id)delete_storage_settings reply:(id)reply;
- (void)object_properties_changed:(unsigned int)object_properties_changed properties_data:(id)properties_data reply:(id)reply;
- (void)request_config_change:(unsigned int)request_config_change change_action:(unint64_t)change_action change_token:(unint64_t)change_token reply:(id)reply;
- (void)retain_reply_for_process_boost;
- (void)setM_property_type_info:(shared_ptr<Property_Type_Info>)m_property_type_info;
- (void)set_invalidation_handler:(function<void)(;
- (void)write_storage_settings:(id)write_storage_settings storage_data:(id)storage_data reply:(id)reply;
@end

@implementation Core_Audio_Driver_Host

- (id).cxx_construct
{
  *(self + 9) = 0;
  *(self + 10) = 0;
  *(self + 14) = 0;
  return self;
}

- (void)setM_property_type_info:(shared_ptr<Property_Type_Info>)m_property_type_info
{
  v4 = *m_property_type_info.__ptr_;
  v3 = *(m_property_type_info.__ptr_ + 1);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  cntrl = self->_m_custom_property_type_cache.__cntrl_;
  self->_m_custom_property_type_cache.__ptr_ = v4;
  self->_m_custom_property_type_cache.__cntrl_ = v3;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
  }
}

- (shared_ptr<Property_Type_Info>)m_property_type_info
{
  cntrl = self->_m_custom_property_type_cache.__cntrl_;
  *v2 = self->_m_custom_property_type_cache.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (int)set_property_data:(Driver_Property_Identity *)set_property_data qualifier_data_size:(unsigned int)qualifier_data_size qualifier_data:(const void *)qualifier_data data_size:(unsigned int)data_size data:(const void *)data
{
  v26 = 2003329396;
  v13 = objc_autoreleasePoolPush();
  connection_to_driver = [(Core_Audio_Driver_Host *)self connection_to_driver];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3321888768;
  v25[2] = __94__Core_Audio_Driver_Host_set_property_data_qualifier_data_size_qualifier_data_data_size_data___block_invoke;
  v25[3] = &__block_descriptor_40_ea8_32c108_ZTSKZ94__Core_Audio_Driver_Host_set_property_data_qualifier_data_size_qualifier_data_data_size_data__E4__42_e17_v16__0__NSError_8l;
  v25[4] = &v26;
  v15 = [connection_to_driver synchronousRemoteObjectProxyWithErrorHandler:v25];

  if (v15)
  {
    objc_msgSend_m_property_type_info(self);
    property_data_and_qualifier_type_code = Property_Type_Info::get_property_data_and_qualifier_type_code(v23[0], set_property_data->var0, set_property_data->var2.mSelector);
    if (v23[1])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v23[1]);
    }

    if (qualifier_data)
    {
      if (((qword_1DE7962A0[HIDWORD(property_data_and_qualifier_type_code)] | qword_1DE796208[HIDWORD(property_data_and_qualifier_type_code)]) & 0x100000000) != 0)
      {
        qualifier_data_sizeCopy = LODWORD(qword_1DE7962A0[HIDWORD(property_data_and_qualifier_type_code)]) | LODWORD(qword_1DE796208[HIDWORD(property_data_and_qualifier_type_code)]);
      }

      else
      {
        qualifier_data_sizeCopy = qualifier_data_size;
      }

      qualifier_data = AMCP::HAL::pack_property_data(SHIDWORD(property_data_and_qualifier_type_code), qualifier_data_sizeCopy, qualifier_data);
    }

    if (property_data_and_qualifier_type_code > 0x12)
    {
      v18 = 0x100000004;
    }

    else
    {
      v18 = qword_1DE7962A0[property_data_and_qualifier_type_code & 0x1F] | qword_1DE796208[property_data_and_qualifier_type_code & 0x1F];
    }

    if ((v18 & 0x100000000) != 0)
    {
      data_sizeCopy = v18;
    }

    else
    {
      data_sizeCopy = data_size;
    }

    v20 = AMCP::HAL::pack_property_data(property_data_and_qualifier_type_code, data_sizeCopy, data);
    *v23 = *&set_property_data->var0;
    mElement = set_property_data->var2.mElement;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3321888768;
    v22[2] = __94__Core_Audio_Driver_Host_set_property_data_qualifier_data_size_qualifier_data_data_size_data___block_invoke_159;
    v22[3] = &__block_descriptor_40_ea8_32c108_ZTSKZ94__Core_Audio_Driver_Host_set_property_data_qualifier_data_size_qualifier_data_data_size_data__E4__43_e8_v12__0i8l;
    v22[4] = &v26;
    [v15 set_property_data:v23 qualifier:qualifier_data data:v20 reply:v22];
  }

  objc_autoreleasePoolPop(v13);
  return v26;
}

- (int)get_property_data:(Driver_Property_Identity *)get_property_data qualifier_data_size:(unsigned int)qualifier_data_size qualifier_data:(const void *)qualifier_data data_size:(unsigned int)data_size out_data_size:(unsigned int *)out_data_size out_data:(void *)out_data
{
  v31[3] = *MEMORY[0x1E69E9840];
  v30 = 2003329396;
  v15 = objc_autoreleasePoolPush();
  connection_to_driver = [(Core_Audio_Driver_Host *)self connection_to_driver];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3321888768;
  v29[2] = __112__Core_Audio_Driver_Host_get_property_data_qualifier_data_size_qualifier_data_data_size_out_data_size_out_data___block_invoke;
  v29[3] = &__block_descriptor_40_ea8_32c127_ZTSKZ112__Core_Audio_Driver_Host_get_property_data_qualifier_data_size_qualifier_data_data_size_out_data_size_out_data__E4__40_e17_v16__0__NSError_8l;
  v29[4] = &v30;
  v17 = [connection_to_driver synchronousRemoteObjectProxyWithErrorHandler:v29];

  if (v17)
  {
    v25 = v15;
    objc_msgSend_m_property_type_info(self);
    property_data_and_qualifier_type_code = Property_Type_Info::get_property_data_and_qualifier_type_code(v27[0], get_property_data->var0, get_property_data->var2.mSelector);
    if (v27[1])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v27[1]);
    }

    if (qualifier_data)
    {
      if (((qword_1DE7962A0[HIDWORD(property_data_and_qualifier_type_code)] | qword_1DE796208[HIDWORD(property_data_and_qualifier_type_code)]) & 0x100000000) != 0)
      {
        qualifier_data_sizeCopy = LODWORD(qword_1DE7962A0[HIDWORD(property_data_and_qualifier_type_code)]) | LODWORD(qword_1DE796208[HIDWORD(property_data_and_qualifier_type_code)]);
      }

      else
      {
        qualifier_data_sizeCopy = qualifier_data_size;
      }

      qualifier_data = AMCP::HAL::pack_property_data(SHIDWORD(property_data_and_qualifier_type_code), qualifier_data_sizeCopy, qualifier_data);
    }

    if (property_data_and_qualifier_type_code > 0x12)
    {
      v20 = 0x100000004;
    }

    else
    {
      v20 = qword_1DE7962A0[property_data_and_qualifier_type_code & 0x1F] | qword_1DE796208[property_data_and_qualifier_type_code & 0x1F];
    }

    if ((v20 & 0x100000000) != 0)
    {
      data_sizeCopy = v20;
    }

    else
    {
      data_sizeCopy = data_size;
    }

    v31[0] = 0;
    *v27 = *&get_property_data->var0;
    mElement = get_property_data->var2.mElement;
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3321888768;
    v26[2] = __112__Core_Audio_Driver_Host_get_property_data_qualifier_data_size_qualifier_data_data_size_out_data_size_out_data___block_invoke_152;
    v26[3] = &__block_descriptor_48_ea8_32c127_ZTSKZ112__Core_Audio_Driver_Host_get_property_data_qualifier_data_size_qualifier_data_data_size_out_data_size_out_data__E4__41_e19_v20__0i8__NSData_12l;
    v26[4] = &v30;
    v26[5] = v31;
    [v17 get_property_data:v27 qualifier:qualifier_data data_size:data_sizeCopy reply:v26];
    if (!v30)
    {
      v22 = v31[0];
      if (v31[0])
      {
        *out_data_size = data_size;
        v30 = AMCP::HAL::unpack_property_data(v22, property_data_and_qualifier_type_code, out_data_size, out_data);
        if (get_property_data->var2.mSelector == 1668641652)
        {
          v23 = *out_data_size;
          objc_msgSend_m_property_type_info(self);
          Property_Type_Info::add_custom_properties(v27[0], get_property_data->var0, v23 / 0xCuLL, out_data);
          v15 = v25;
          if (v27[1])
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v27[1]);
          }
        }
      }
    }
  }

  objc_autoreleasePoolPop(v15);
  return v30;
}

- (int)get_property_data_size:(Driver_Property_Identity *)get_property_data_size qualifier_data_size:(unsigned int)qualifier_data_size qualifier_data:(const void *)qualifier_data out_size:(unsigned int *)out_size
{
  v22 = 2003329396;
  v23 = 0;
  v11 = objc_autoreleasePoolPush();
  connection_to_driver = [(Core_Audio_Driver_Host *)self connection_to_driver];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3321888768;
  v21[2] = __93__Core_Audio_Driver_Host_get_property_data_size_qualifier_data_size_qualifier_data_out_size___block_invoke;
  v21[3] = &__block_descriptor_40_ea8_32c107_ZTSKZ93__Core_Audio_Driver_Host_get_property_data_size_qualifier_data_size_qualifier_data_out_size__E4__38_e17_v16__0__NSError_8l;
  v21[4] = &v22;
  v13 = [connection_to_driver synchronousRemoteObjectProxyWithErrorHandler:v21];

  if (v13)
  {
    objc_msgSend_m_property_type_info(self);
    property_qualifier_type_code = Property_Type_Info::get_property_qualifier_type_code(v19[0], get_property_data_size->var0, get_property_data_size->var2.mSelector);
    if (v19[1])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v19[1]);
    }

    if (qualifier_data)
    {
      if (((qword_1DE7962A0[property_qualifier_type_code] | qword_1DE796208[property_qualifier_type_code]) & 0x100000000) != 0)
      {
        qualifier_data_sizeCopy = LODWORD(qword_1DE7962A0[property_qualifier_type_code]) | LODWORD(qword_1DE796208[property_qualifier_type_code]);
      }

      else
      {
        qualifier_data_sizeCopy = qualifier_data_size;
      }

      qualifier_data = AMCP::HAL::pack_property_data(property_qualifier_type_code, qualifier_data_sizeCopy, qualifier_data);
    }

    *v19 = *&get_property_data_size->var0;
    mElement = get_property_data_size->var2.mElement;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3321888768;
    v18[2] = __93__Core_Audio_Driver_Host_get_property_data_size_qualifier_data_size_qualifier_data_out_size___block_invoke_147;
    v18[3] = &__block_descriptor_48_ea8_32c107_ZTSKZ93__Core_Audio_Driver_Host_get_property_data_size_qualifier_data_size_qualifier_data_out_size__E4__39_e11_v16__0i8I12l;
    v18[4] = &v22;
    v18[5] = &v23;
    [v13 get_property_data_size:v19 qualifier:qualifier_data reply:v18];

    v16 = v23;
  }

  else
  {
    v16 = 0;
  }

  *out_size = v16;

  objc_autoreleasePoolPop(v11);
  return v22;
}

- (int)is_property_settable:(Driver_Property_Identity *)is_property_settable out_settable:(char *)out_settable
{
  v17 = 0;
  v16 = 2003329396;
  v7 = objc_autoreleasePoolPush();
  connection_to_driver = [(Core_Audio_Driver_Host *)self connection_to_driver];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3321888768;
  v15[2] = __60__Core_Audio_Driver_Host_is_property_settable_out_settable___block_invoke;
  v15[3] = &__block_descriptor_40_ea8_32c74_ZTSKZ60__Core_Audio_Driver_Host_is_property_settable_out_settable__E4__36_e17_v16__0__NSError_8l;
  v15[4] = &v16;
  v9 = [connection_to_driver synchronousRemoteObjectProxyWithErrorHandler:v15];

  if (v9)
  {
    v13 = *&is_property_settable->var0;
    mElement = is_property_settable->var2.mElement;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3321888768;
    v12[2] = __60__Core_Audio_Driver_Host_is_property_settable_out_settable___block_invoke_141;
    v12[3] = &__block_descriptor_48_ea8_32c74_ZTSKZ60__Core_Audio_Driver_Host_is_property_settable_out_settable__E4__37_e11_v16__0i8C12l;
    v12[4] = &v16;
    v12[5] = &v17;
    [v9 is_property_settable:&v13 reply:v12];
    v10 = v17;
  }

  else
  {
    v10 = 0;
  }

  *out_settable = v10;

  objc_autoreleasePoolPop(v7);
  return v16;
}

- (int)has_property:(Driver_Property_Identity *)has_property out_has_property:(char *)out_has_property
{
  out_has_propertyCopy = out_has_property;
  v14 = 0;
  v6 = objc_autoreleasePoolPush();
  connection_to_driver = [(Core_Audio_Driver_Host *)self connection_to_driver];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3321888768;
  v13[2] = __56__Core_Audio_Driver_Host_has_property_out_has_property___block_invoke;
  v13[3] = &__block_descriptor_40_ea8_32c70_ZTSKZ56__Core_Audio_Driver_Host_has_property_out_has_property__E4__34_e17_v16__0__NSError_8l;
  v13[4] = &v14;
  v8 = [connection_to_driver synchronousRemoteObjectProxyWithErrorHandler:v13];

  if (v8)
  {
    v11 = *&has_property->var0;
    mElement = has_property->var2.mElement;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3321888768;
    v10[2] = __56__Core_Audio_Driver_Host_has_property_out_has_property___block_invoke_135;
    v10[3] = &__block_descriptor_40_ea8_32c70_ZTSKZ56__Core_Audio_Driver_Host_has_property_out_has_property__E4__35_e8_v12__0C8l;
    v10[4] = &out_has_propertyCopy;
    [v8 has_property:&v11 reply:v10];
  }

  objc_autoreleasePoolPop(v6);
  return v14;
}

- (int)unregister_buffer:(id)unregister_buffer
{
  unregister_bufferCopy = unregister_buffer;
  v13 = 0;
  v5 = objc_autoreleasePoolPush();
  connection_to_driver = [(Core_Audio_Driver_Host *)self connection_to_driver];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3321888768;
  v12[2] = __44__Core_Audio_Driver_Host_unregister_buffer___block_invoke;
  v12[3] = &__block_descriptor_40_ea8_32c58_ZTSKZ44__Core_Audio_Driver_Host_unregister_buffer__E4__32_e17_v16__0__NSError_8l;
  v12[4] = &v13;
  v7 = [connection_to_driver synchronousRemoteObjectProxyWithErrorHandler:v12];

  if (v7)
  {
    v8 = [Core_Audio_XPC_Raw_Transporter object:unregister_bufferCopy];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3321888768;
    v11[2] = __44__Core_Audio_Driver_Host_unregister_buffer___block_invoke_130;
    v11[3] = &__block_descriptor_40_ea8_32c58_ZTSKZ44__Core_Audio_Driver_Host_unregister_buffer__E4__33_e8_v12__0i8l;
    v11[4] = &v13;
    [v7 unregister_io_buffer:v8 reply:v11];
  }

  objc_autoreleasePoolPop(v5);
  v9 = v13;

  return v9;
}

- (int)register_buffer:(id)register_buffer
{
  register_bufferCopy = register_buffer;
  v13 = 0;
  v5 = objc_autoreleasePoolPush();
  connection_to_driver = [(Core_Audio_Driver_Host *)self connection_to_driver];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3321888768;
  v12[2] = __42__Core_Audio_Driver_Host_register_buffer___block_invoke;
  v12[3] = &__block_descriptor_40_ea8_32c56_ZTSKZ42__Core_Audio_Driver_Host_register_buffer__E4__30_e17_v16__0__NSError_8l;
  v12[4] = &v13;
  v7 = [connection_to_driver synchronousRemoteObjectProxyWithErrorHandler:v12];

  if (v7)
  {
    v8 = [Core_Audio_XPC_Raw_Transporter object:register_bufferCopy];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3321888768;
    v11[2] = __42__Core_Audio_Driver_Host_register_buffer___block_invoke_125;
    v11[3] = &__block_descriptor_40_ea8_32c56_ZTSKZ42__Core_Audio_Driver_Host_register_buffer__E4__31_e8_v12__0i8l;
    v11[4] = &v13;
    [v7 register_io_buffer:v8 reply:v11];
  }

  objc_autoreleasePoolPop(v5);
  v9 = v13;

  return v9;
}

- (void)retain_reply_for_process_boost
{
  connection_to_driver = [(Core_Audio_Driver_Host *)self connection_to_driver];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3321888768;
  v5[2] = __56__Core_Audio_Driver_Host_retain_reply_for_process_boost__block_invoke;
  v5[3] = &__block_descriptor_33_ea8_32c70_ZTSKZ56__Core_Audio_Driver_Host_retain_reply_for_process_boost_E4__28_e17_v16__0__NSError_8l;
  v3 = [connection_to_driver remoteObjectProxyWithErrorHandler:v5];

  if (v3)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3321888768;
    v4[2] = __56__Core_Audio_Driver_Host_retain_reply_for_process_boost__block_invoke_121;
    v4[3] = &__block_descriptor_33_ea8_32c70_ZTSKZ56__Core_Audio_Driver_Host_retain_reply_for_process_boost_E4__29_e5_v8__0l;
    [v3 retain_reply_for_process_boost:v4];
  }
}

- (int)stop_synchronous_messenger:(unsigned int)stop_synchronous_messenger client_id:(unsigned int)client_id
{
  v4 = *&client_id;
  v5 = *&stop_synchronous_messenger;
  v12 = 0;
  connection_to_driver = [(Core_Audio_Driver_Host *)self connection_to_driver];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3321888768;
  v11[2] = __63__Core_Audio_Driver_Host_stop_synchronous_messenger_client_id___block_invoke;
  v11[3] = &__block_descriptor_33_ea8_32c77_ZTSKZ63__Core_Audio_Driver_Host_stop_synchronous_messenger_client_id__E4__26_e17_v16__0__NSError_8l;
  v7 = [connection_to_driver synchronousRemoteObjectProxyWithErrorHandler:v11];

  if (v7)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3321888768;
    v10[2] = __63__Core_Audio_Driver_Host_stop_synchronous_messenger_client_id___block_invoke_117;
    v10[3] = &__block_descriptor_40_ea8_32c77_ZTSKZ63__Core_Audio_Driver_Host_stop_synchronous_messenger_client_id__E4__27_e8_v12__0i8l;
    v10[4] = &v12;
    [v7 stop_synchronous_messenger:v5 client_id:v4 reply:v10];
    v8 = v12;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (int)start_synchronous_messenger:(unsigned int)start_synchronous_messenger client_id:(unsigned int)client_id nominal_sample_rate:(double)nominal_sample_rate io_buffer_frame_size:(unsigned int)io_buffer_frame_size work_group_port:(unsigned int)work_group_port io_messenger:(id)io_messenger
{
  v8 = *&io_buffer_frame_size;
  v10 = *&client_id;
  v11 = *&start_synchronous_messenger;
  io_messengerCopy = io_messenger;
  v23 = 0;
  connection_to_driver = [(Core_Audio_Driver_Host *)self connection_to_driver];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3321888768;
  v22[2] = __134__Core_Audio_Driver_Host_start_synchronous_messenger_client_id_nominal_sample_rate_io_buffer_frame_size_work_group_port_io_messenger___block_invoke;
  v22[3] = &__block_descriptor_33_ea8_32c149_ZTSKZ134__Core_Audio_Driver_Host_start_synchronous_messenger_client_id_nominal_sample_rate_io_buffer_frame_size_work_group_port_io_messenger__E4__24_e17_v16__0__NSError_8l;
  v15 = [connection_to_driver synchronousRemoteObjectProxyWithErrorHandler:v22];

  if (v15)
  {
    v16 = xpc_mach_send_create();
    v17 = [Core_Audio_XPC_Raw_Transporter object:v16];
    v18 = [Core_Audio_XPC_Raw_Transporter object:io_messengerCopy];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3321888768;
    v21[2] = __134__Core_Audio_Driver_Host_start_synchronous_messenger_client_id_nominal_sample_rate_io_buffer_frame_size_work_group_port_io_messenger___block_invoke_113;
    v21[3] = &__block_descriptor_40_ea8_32c149_ZTSKZ134__Core_Audio_Driver_Host_start_synchronous_messenger_client_id_nominal_sample_rate_io_buffer_frame_size_work_group_port_io_messenger__E4__25_e8_v12__0i8l;
    v21[4] = &v23;
    [v15 start_synchronous_messenger:v11 client_id:v10 nominal_sample_rate:v8 io_buffer_frame_size:v17 work_group_port:v18 io_messenger:v21 reply:nominal_sample_rate];

    v19 = v23;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (int)stop_io:(unsigned int)stop_io client_info:(unsigned int)client_info
{
  v4 = *&client_info;
  v5 = *&stop_io;
  v12 = 0;
  connection_to_driver = [(Core_Audio_Driver_Host *)self connection_to_driver];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3321888768;
  v11[2] = __46__Core_Audio_Driver_Host_stop_io_client_info___block_invoke;
  v11[3] = &__block_descriptor_33_ea8_32c60_ZTSKZ46__Core_Audio_Driver_Host_stop_io_client_info__E4__22_e17_v16__0__NSError_8l;
  v7 = [connection_to_driver synchronousRemoteObjectProxyWithErrorHandler:v11];

  if (v7)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3321888768;
    v10[2] = __46__Core_Audio_Driver_Host_stop_io_client_info___block_invoke_108;
    v10[3] = &__block_descriptor_40_ea8_32c60_ZTSKZ46__Core_Audio_Driver_Host_stop_io_client_info__E4__23_e8_v12__0i8l;
    v10[4] = &v12;
    [v7 stop_io:v5 client_id:v4 reply:v10];
    v8 = v12;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (int)start_io:(unsigned int)start_io client_info:(unsigned int)client_info
{
  v4 = *&client_info;
  v5 = *&start_io;
  v12 = 0;
  connection_to_driver = [(Core_Audio_Driver_Host *)self connection_to_driver];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3321888768;
  v11[2] = __47__Core_Audio_Driver_Host_start_io_client_info___block_invoke;
  v11[3] = &__block_descriptor_33_ea8_32c61_ZTSKZ47__Core_Audio_Driver_Host_start_io_client_info__E4__20_e17_v16__0__NSError_8l;
  v7 = [connection_to_driver synchronousRemoteObjectProxyWithErrorHandler:v11];

  if (v7)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3321888768;
    v10[2] = __47__Core_Audio_Driver_Host_start_io_client_info___block_invoke_104;
    v10[3] = &__block_descriptor_40_ea8_32c61_ZTSKZ47__Core_Audio_Driver_Host_start_io_client_info__E4__21_e8_v12__0i8l;
    v10[4] = &v12;
    [v7 start_io:v5 client_id:v4 reply:v10];
    v8 = v12;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (int)object_was_destroyed:(unsigned int)object_was_destroyed
{
  v3 = *&object_was_destroyed;
  v13 = 2003329396;
  v5 = objc_autoreleasePoolPush();
  connection_to_driver = [(Core_Audio_Driver_Host *)self connection_to_driver];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3321888768;
  v12[2] = __47__Core_Audio_Driver_Host_object_was_destroyed___block_invoke;
  v12[3] = &__block_descriptor_40_ea8_32c61_ZTSKZ47__Core_Audio_Driver_Host_object_was_destroyed__E4__18_e17_v16__0__NSError_8l;
  v12[4] = &v13;
  v7 = [connection_to_driver synchronousRemoteObjectProxyWithErrorHandler:v12];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3321888768;
  v11[2] = __47__Core_Audio_Driver_Host_object_was_destroyed___block_invoke_100;
  v11[3] = &__block_descriptor_40_ea8_32c61_ZTSKZ47__Core_Audio_Driver_Host_object_was_destroyed__E4__19_e8_v12__0i8l;
  v11[4] = &v13;
  [v7 object_was_destroyed:v3 reply:v11];
  objc_msgSend_m_property_type_info(self);
  Property_Type_Info::remove_custom_properties(v9, v3);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  objc_autoreleasePoolPop(v5);
  return v13;
}

- (int)destroy_device:(unsigned int)destroy_device
{
  v3 = *&destroy_device;
  v11 = 2003329396;
  v5 = objc_autoreleasePoolPush();
  connection_to_driver = [(Core_Audio_Driver_Host *)self connection_to_driver];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3321888768;
  v10[2] = __41__Core_Audio_Driver_Host_destroy_device___block_invoke;
  v10[3] = &__block_descriptor_40_ea8_32c55_ZTSKZ41__Core_Audio_Driver_Host_destroy_device__E4__16_e17_v16__0__NSError_8l;
  v10[4] = &v11;
  v7 = [connection_to_driver synchronousRemoteObjectProxyWithErrorHandler:v10];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3321888768;
  v9[2] = __41__Core_Audio_Driver_Host_destroy_device___block_invoke_95;
  v9[3] = &__block_descriptor_40_ea8_32c55_ZTSKZ41__Core_Audio_Driver_Host_destroy_device__E4__17_e8_v12__0i8l;
  v9[4] = &v11;
  [v7 destroy_device:v3 reply:v9];

  objc_autoreleasePoolPop(v5);
  return v11;
}

- (int)create_device:(id)create_device client_info:(const AudioServerPlugInClientInfo *)client_info out_object_id:(unsigned int *)out_object_id
{
  create_deviceCopy = create_device;
  out_object_idCopy = out_object_id;
  v19 = 2003329396;
  v9 = objc_autoreleasePoolPush();
  connection_to_driver = [(Core_Audio_Driver_Host *)self connection_to_driver];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3321888768;
  v18[2] = __66__Core_Audio_Driver_Host_create_device_client_info_out_object_id___block_invoke;
  v18[3] = &__block_descriptor_40_ea8_32c80_ZTSKZ66__Core_Audio_Driver_Host_create_device_client_info_out_object_id__E4__14_e17_v16__0__NSError_8l;
  v18[4] = &v19;
  v11 = [connection_to_driver synchronousRemoteObjectProxyWithErrorHandler:v18];

  mClientID = client_info->mClientID;
  mProcessID = client_info->mProcessID;
  v14 = client_info->mIsNativeEndian != 0;
  mBundleID = client_info->mBundleID;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3321888768;
  v17[2] = __66__Core_Audio_Driver_Host_create_device_client_info_out_object_id___block_invoke_89;
  v17[3] = &__block_descriptor_48_ea8_32c80_ZTSKZ66__Core_Audio_Driver_Host_create_device_client_info_out_object_id__E4__15_e11_v16__0i8I12l;
  v17[4] = &v19;
  v17[5] = &out_object_idCopy;
  [v11 create_device:create_deviceCopy client_id:mClientID process_id:mProcessID is_native_endianess:v14 bundle_id:mBundleID reply:v17];

  objc_autoreleasePoolPop(v9);
  LODWORD(v9) = v19;

  return v9;
}

- (int)remove_device_client:(unsigned int)remove_device_client client_info:(const AudioServerPlugInClientInfo *)client_info
{
  v5 = *&remove_device_client;
  v17 = 2003329396;
  v7 = objc_autoreleasePoolPush();
  connection_to_driver = [(Core_Audio_Driver_Host *)self connection_to_driver];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3321888768;
  v16[2] = __59__Core_Audio_Driver_Host_remove_device_client_client_info___block_invoke;
  v16[3] = &__block_descriptor_40_ea8_32c73_ZTSKZ59__Core_Audio_Driver_Host_remove_device_client_client_info__E4__12_e17_v16__0__NSError_8l;
  v16[4] = &v17;
  v9 = [connection_to_driver synchronousRemoteObjectProxyWithErrorHandler:v16];

  mClientID = client_info->mClientID;
  mProcessID = client_info->mProcessID;
  v12 = client_info->mIsNativeEndian != 0;
  mBundleID = client_info->mBundleID;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3321888768;
  v15[2] = __59__Core_Audio_Driver_Host_remove_device_client_client_info___block_invoke_84;
  v15[3] = &__block_descriptor_40_ea8_32c73_ZTSKZ59__Core_Audio_Driver_Host_remove_device_client_client_info__E4__13_e8_v12__0i8l;
  v15[4] = &v17;
  [v9 remove_device_client:v5 client_id:mClientID process_id:mProcessID is_native_endianess:v12 bundle_id:mBundleID reply:v15];

  objc_autoreleasePoolPop(v7);
  return v17;
}

- (int)add_device_client:(unsigned int)add_device_client client_info:(const AudioServerPlugInClientInfo *)client_info
{
  v5 = *&add_device_client;
  v17 = 2003329396;
  v7 = objc_autoreleasePoolPush();
  connection_to_driver = [(Core_Audio_Driver_Host *)self connection_to_driver];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3321888768;
  v16[2] = __56__Core_Audio_Driver_Host_add_device_client_client_info___block_invoke;
  v16[3] = &__block_descriptor_40_ea8_32c70_ZTSKZ56__Core_Audio_Driver_Host_add_device_client_client_info__E4__10_e17_v16__0__NSError_8l;
  v16[4] = &v17;
  v9 = [connection_to_driver synchronousRemoteObjectProxyWithErrorHandler:v16];

  mClientID = client_info->mClientID;
  mProcessID = client_info->mProcessID;
  v12 = client_info->mIsNativeEndian != 0;
  mBundleID = client_info->mBundleID;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3321888768;
  v15[2] = __56__Core_Audio_Driver_Host_add_device_client_client_info___block_invoke_79;
  v15[3] = &__block_descriptor_40_ea8_32c70_ZTSKZ56__Core_Audio_Driver_Host_add_device_client_client_info__E4__11_e8_v12__0i8l;
  v15[4] = &v17;
  [v9 add_device_client:v5 client_id:mClientID process_id:mProcessID is_native_endianess:v12 bundle_id:mBundleID reply:v15];

  objc_autoreleasePoolPop(v7);
  return v17;
}

- (int)abort_device_configuration_change:(unsigned int)abort_device_configuration_change action:(unint64_t)action change:(unint64_t)change
{
  v7 = *&abort_device_configuration_change;
  v15 = 2003329396;
  v9 = objc_autoreleasePoolPush();
  connection_to_driver = [(Core_Audio_Driver_Host *)self connection_to_driver];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3321888768;
  v14[2] = __74__Core_Audio_Driver_Host_abort_device_configuration_change_action_change___block_invoke;
  v14[3] = &__block_descriptor_40_ea8_32c87_ZTSKZ74__Core_Audio_Driver_Host_abort_device_configuration_change_action_change__E3__8_e17_v16__0__NSError_8l;
  v14[4] = &v15;
  v11 = [connection_to_driver synchronousRemoteObjectProxyWithErrorHandler:v14];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3321888768;
  v13[2] = __74__Core_Audio_Driver_Host_abort_device_configuration_change_action_change___block_invoke_74;
  v13[3] = &__block_descriptor_40_ea8_32c87_ZTSKZ74__Core_Audio_Driver_Host_abort_device_configuration_change_action_change__E3__9_e8_v12__0i8l;
  v13[4] = &v15;
  [v11 abort_device_configuration_change:v7 action:action change:change reply:v13];

  objc_autoreleasePoolPop(v9);
  return v15;
}

- (int)perform_device_configuration_change:(unsigned int)perform_device_configuration_change action:(unint64_t)action change:(unint64_t)change
{
  v7 = *&perform_device_configuration_change;
  v15 = 2003329396;
  v9 = objc_autoreleasePoolPush();
  connection_to_driver = [(Core_Audio_Driver_Host *)self connection_to_driver];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3321888768;
  v14[2] = __76__Core_Audio_Driver_Host_perform_device_configuration_change_action_change___block_invoke;
  v14[3] = &__block_descriptor_40_ea8_32c89_ZTSKZ76__Core_Audio_Driver_Host_perform_device_configuration_change_action_change__E3__6_e17_v16__0__NSError_8l;
  v14[4] = &v15;
  v11 = [connection_to_driver synchronousRemoteObjectProxyWithErrorHandler:v14];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3321888768;
  v13[2] = __76__Core_Audio_Driver_Host_perform_device_configuration_change_action_change___block_invoke_69;
  v13[3] = &__block_descriptor_40_ea8_32c89_ZTSKZ76__Core_Audio_Driver_Host_perform_device_configuration_change_action_change__E3__7_e8_v12__0i8l;
  v13[4] = &v15;
  [v11 perform_device_configuration_change:v7 action:action change:change reply:v13];

  objc_autoreleasePoolPop(v9);
  return v15;
}

- (void)set_invalidation_handler:(function<void)(
{
  v5 = *MEMORY[0x1E69E9840];
  std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v4, a3);
  [(Core_Audio_Driver_Host *)self setM_invalidation_handler:v4];
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v4);
}

- (int)initialize_driver:(id)initialize_driver
{
  initialize_driverCopy = initialize_driver;
  v29 = 2003329396;
  v5 = objc_autoreleasePoolPush();
  driver_endpoint = [(Core_Audio_Driver_Host *)self driver_endpoint];

  if (!driver_endpoint)
  {
    [(Core_Audio_Driver_Host *)self setDriver_endpoint:initialize_driverCopy];
  }

  connection_to_driver = [(Core_Audio_Driver_Host *)self connection_to_driver];

  if (!connection_to_driver)
  {
    v8 = objc_alloc(MEMORY[0x1E696B0B8]);
    driver_endpoint2 = [(Core_Audio_Driver_Host *)self driver_endpoint];
    v10 = [v8 initWithListenerEndpoint:driver_endpoint2];
    [(Core_Audio_Driver_Host *)self setConnection_to_driver:v10];

    connection_to_driver2 = [(Core_Audio_Driver_Host *)self connection_to_driver];

    if (connection_to_driver2)
    {
      v12 = MEMORY[0x1E696B0D0];
      driver_protocol = [(Core_Audio_Driver_Host *)self driver_protocol];
      v14 = [v12 interfaceWithProtocol:driver_protocol];
      connection_to_driver3 = [(Core_Audio_Driver_Host *)self connection_to_driver];
      [connection_to_driver3 setRemoteObjectInterface:v14];

      selfCopy = self;
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __44__Core_Audio_Driver_Host_initialize_driver___block_invoke;
      v27[3] = &unk_1E8678318;
      v17 = selfCopy;
      v28 = v17;
      connection_to_driver4 = [(Core_Audio_Driver_Host *)v17 connection_to_driver];
      [connection_to_driver4 setInvalidationHandler:v27];

      connection_to_driver5 = [(Core_Audio_Driver_Host *)v17 connection_to_driver];
      [connection_to_driver5 resume];
    }
  }

  connection_to_driver6 = [(Core_Audio_Driver_Host *)self connection_to_driver];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3321888768;
  v26[2] = __44__Core_Audio_Driver_Host_initialize_driver___block_invoke_2;
  v26[3] = &__block_descriptor_33_ea8_32c57_ZTSKZ44__Core_Audio_Driver_Host_initialize_driver__E3__4_e17_v16__0__NSError_8l;
  v21 = [connection_to_driver6 synchronousRemoteObjectProxyWithErrorHandler:v26];

  if (v21)
  {
    endpoint = [(Core_Audio_Driver_Host *)self endpoint];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3321888768;
    v25[2] = __44__Core_Audio_Driver_Host_initialize_driver___block_invoke_63;
    v25[3] = &__block_descriptor_40_ea8_32c57_ZTSKZ44__Core_Audio_Driver_Host_initialize_driver__E3__5_e8_v12__0i8l;
    v25[4] = &v29;
    [v21 initialize:endpoint reply:v25];
  }

  objc_autoreleasePoolPop(v5);
  v23 = v29;

  return v23;
}

- (void)delete_storage_settings:(id)delete_storage_settings reply:(id)reply
{
  delete_storage_settingsCopy = delete_storage_settings;
  replyCopy = reply;
  delegate = [(Core_Audio_Driver_Host *)self delegate];
  v8 = [delegate delete_storage_settings:delete_storage_settingsCopy];

  replyCopy[2](replyCopy, v8);
}

- (void)copy_storage_settings:(id)copy_storage_settings reply:(id)reply
{
  copy_storage_settingsCopy = copy_storage_settings;
  replyCopy = reply;
  delegate = [(Core_Audio_Driver_Host *)self delegate];
  v11 = [delegate copy_storage_settings:copy_storage_settingsCopy];
  cf = v9;

  v10 = AMCP::HAL::pack_property_data(15, 8u, &cf);
  replyCopy[2](replyCopy, v11, v10);
  if (cf)
  {
    CFRelease(cf);
  }
}

- (void)write_storage_settings:(id)write_storage_settings storage_data:(id)storage_data reply:(id)reply
{
  write_storage_settingsCopy = write_storage_settings;
  replyCopy = reply;
  v13 = 8;
  cf = 0;
  AMCP::HAL::unpack_property_data(storage_data, 15, &v13, &cf);
  delegate = [(Core_Audio_Driver_Host *)self delegate];
  v11 = [delegate write_storage_settings:write_storage_settingsCopy storage_data:cf];

  if (cf)
  {
    CFRelease(cf);
  }

  replyCopy[2](replyCopy, v11);
}

- (void)request_config_change:(unsigned int)request_config_change change_action:(unint64_t)change_action change_token:(unint64_t)change_token reply:(id)reply
{
  v8 = *&request_config_change;
  replyCopy = reply;
  delegate = [(Core_Audio_Driver_Host *)self delegate];
  if (delegate)
  {
    delegate2 = [(Core_Audio_Driver_Host *)self delegate];
    [delegate2 request_config_change:v8 change_action:change_action change_token:change_token];
  }

  replyCopy[2](replyCopy, 0);
}

- (void)object_properties_changed:(unsigned int)object_properties_changed properties_data:(id)properties_data reply:(id)reply
{
  v6 = *&object_properties_changed;
  properties_dataCopy = properties_data;
  replyCopy = reply;
  if ([properties_dataCopy length])
  {
    delegate = [(Core_Audio_Driver_Host *)self delegate];
    v10 = delegate;
    if (delegate)
    {
      [delegate object_properties_changed:v6 data:properties_dataCopy];
    }

    v11 = 0;
  }

  else
  {
    v11 = 561211770;
  }

  replyCopy[2](replyCopy, v11);
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = MEMORY[0x1E696B0D0];
  driver_host_protocol = [(Core_Audio_Driver_Host *)self driver_host_protocol];
  v8 = [v6 interfaceWithProtocol:driver_host_protocol];
  [connectionCopy setExportedInterface:v8];

  [connectionCopy setExportedObject:self];
  [connectionCopy setInterruptionHandler:&__block_literal_global_6467];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __61__Core_Audio_Driver_Host_listener_shouldAcceptNewConnection___block_invoke_2;
  v10[3] = &unk_1E8678318;
  v10[4] = self;
  [connectionCopy setInvalidationHandler:v10];
  [connectionCopy resume];
  [(Core_Audio_Driver_Host *)self setConnection_from_driver:connectionCopy];

  return 1;
}

- (void)dealloc
{
  connection_to_driver = self->_connection_to_driver;
  if (connection_to_driver)
  {
    [(NSXPCConnection *)connection_to_driver invalidate];
    v4 = self->_connection_to_driver;
    self->_connection_to_driver = 0;
  }

  connection_from_driver = self->_connection_from_driver;
  if (connection_from_driver)
  {
    [(NSXPCConnection *)connection_from_driver invalidate];
    v6 = self->_connection_from_driver;
    self->_connection_from_driver = 0;
  }

  listener = self->_listener;
  if (listener)
  {
    [(NSXPCListener *)listener invalidate];
    v8 = self->_listener;
    self->_listener = 0;
  }

  delegate = self->_delegate;
  if (delegate)
  {
    self->_delegate = 0;
  }

  endpoint = self->_endpoint;
  if (endpoint)
  {
    self->_endpoint = 0;
  }

  v11.receiver = self;
  v11.super_class = Core_Audio_Driver_Host;
  [(Core_Audio_Driver_Host *)&v11 dealloc];
}

- (id)init_with_delegate:(id)init_with_delegate
{
  init_with_delegateCopy = init_with_delegate;
  v6 = [(Core_Audio_Driver_Host *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_delegate, init_with_delegate);
  }

  return v7;
}

- (Core_Audio_Driver_Host)init
{
  v8.receiver = self;
  v8.super_class = Core_Audio_Driver_Host;
  v2 = [(Core_Audio_Driver_Host *)&v8 init];
  if (v2)
  {
    anonymousListener = [MEMORY[0x1E696B0D8] anonymousListener];
    listener = v2->_listener;
    v2->_listener = anonymousListener;

    [(NSXPCListener *)v2->_listener setDelegate:v2];
    [(NSXPCListener *)v2->_listener resume];
    endpoint = [(NSXPCListener *)v2->_listener endpoint];
    endpoint = v2->_endpoint;
    v2->_endpoint = endpoint;

    objc_storeStrong(&v2->_driver_protocol, &unk_1F599BDF0);
    objc_storeStrong(&v2->_driver_host_protocol, &unk_1F599AAB0);
    operator new();
  }

  return 0;
}

@end