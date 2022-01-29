/**
 * generated by Xtext 2.25.0
 */
package org.gunnarkleiven.robotgenerator.robotgenerator;

import org.eclipse.emf.common.util.EList;

import org.eclipse.emf.ecore.EObject;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Model</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * </p>
 * <ul>
 *   <li>{@link org.gunnarkleiven.robotgenerator.robotgenerator.Model#getCommands <em>Commands</em>}</li>
 * </ul>
 *
 * @see org.gunnarkleiven.robotgenerator.robotgenerator.RobotgeneratorPackage#getModel()
 * @model
 * @generated
 */
public interface Model extends EObject
{
  /**
   * Returns the value of the '<em><b>Commands</b></em>' containment reference list.
   * The list contents are of type {@link org.gunnarkleiven.robotgenerator.robotgenerator.Command}.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the value of the '<em>Commands</em>' containment reference list.
   * @see org.gunnarkleiven.robotgenerator.robotgenerator.RobotgeneratorPackage#getModel_Commands()
   * @model containment="true"
   * @generated
   */
  EList<Command> getCommands();

} // Model
