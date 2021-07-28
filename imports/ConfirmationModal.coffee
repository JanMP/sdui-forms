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
    <div className="flex justify-end mt-2">
      <button onClick={handleCancelClick} className="cancel">Abbrechen</button>
      <button onClick={handleOkClick} className="ok">OK</button>
    </div>
  </Modal>