import React from 'react'

import AutoForm from './uniforms-custom/AutoForm'
import AutoField from './uniforms-custom/AutoField'

import { Modal } from 'react-modal'


export default FormModal = ({schemaBridge, onSubmit, model,
isOpen, onRequestClose, header, children, disabled = false, readOnly}) ->

  <Modal isOpen={isOpen} onRequestClose={onRequestClose} dimmer='blurring'>
    {if header? then <Modal.Header> {header} </Modal.Header>}
    <Modal.Content style={padding: '3rem'}>
      <AutoForm
        schema={schemaBridge}
        onSubmit={onSubmit}
        model={model}
        children={children}
        disabled={disabled}
        validate="onChange"
      />
    </Modal.Content>
  </Modal>
