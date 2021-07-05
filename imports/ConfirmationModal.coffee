import React, {useState} from 'react'
import Modal from 'react-modal'

export default ConfirmationModal =({text, onConfirm, isOpen, setIsOpen}) ->

  handleOkClick = ->
    setIsOpen false
    onConfirm()

  handleCancelClick = ->
    setIsOpen false

  <Modal
    isOpen={isOpen}
    onRequestClose={-> setIsOpen false}
    className="modal"
    overlayClassName="overlay"
  >
    <div>{text}</div>
    <div>
      <button onClick={handleCancelClick} className="bg-red-500 text-white">Abbrechen</button>
      <button onClick={handleOkClick} className="bg-green-500 text-white">OK</button>
    </div>
  </Modal>