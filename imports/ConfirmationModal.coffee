import React, {useState} from 'react'
import {Modal} from 'react-modal'

export default ConfirmationModal =({text, onConfirm, openState}) ->
  [isOpen, setIsOpen] = openState
  <Modal
    isOpen={isOpen}
  >
    <button className="bg-red-500 text-white">Abbrechen</button>
    <button className="bg-green-500 text-white">OK</button>
  </Modal>