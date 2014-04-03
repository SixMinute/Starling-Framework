// =================================================================================================
//
//	Starling Framework
//	Copyright 2011 Gamua OG. All Rights Reserved.
//
//	This program is free software. You can redistribute and/or modify it
//	in accordance with the terms of the accompanying license agreement.
//
// =================================================================================================

package starling.events
{
	/**  The IAnimatable interface describes an EventDispatcher.
	 * 
     *  @see EventDispatcher
	 **/
	
    public interface IEventDispatcher
    {
		/** Registers an event listener at a certain object. */
        function addEventListener(type:String, listener:Function):void;
		
		/** Removes an event listener from the object. */
        function removeEventListener(type:String, listener:Function):void;
		
		/** Removes all event listeners with a certain type, or all of them if type is null. 
		 *  Be careful when removing all event listeners: you never know who else was listening. */
        function removeEventListeners(type:String=null):void;
		
		/** Dispatches an event to all objects that have registered listeners for its type. 
		 *  If an event with enabled 'bubble' property is dispatched to a display object, it will 
		 *  travel up along the line of parents, until it either hits the root object or someone
		 *  stops its propagation manually. */
        function dispatchEvent(event:Event):void;
		
		/** @private
		 *  Invokes an event on the current object. This method does not do any bubbling, nor
		 *  does it back-up and restore the previous target on the event. The 'dispatchEvent' 
		 *  method uses this method internally. */
        function dispatchEventWith(type:String, bubbles:Boolean=false, data:Object=null):void;
		
		/** Returns if there are listeners registered for a certain event type. */
        function hasEventListener(type:String):Boolean;
    }
}