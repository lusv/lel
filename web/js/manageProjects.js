/* 
 * The MIT License
 *
 * Copyright 2012 Luis Salazar <bp.lusv@gmail.com>.
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */

(function() {
    'use strict';
    $(function() {
        $(window).on('submit', '#mpCreateForm', function(e) {
            e.preventDefault();
            controller.manageProjects.createProject();
        });
        
        $(window).on('submit', '#mpProjectsList form', function(e) {
            e.preventDefault();
        });
        
        $(window).on('click', '#mpProjectsList .cancelSave', function(e) {
            controller.manageProjects.setNonEditableView(this);
        });
        
        $(window).on('click', '#mpProjectsList .clear.leave', function(e) {
            controller.manageProjects.confirmLeaveProject(this);
        });
        
        $(window).on('click', '#mpProjectsList .clear.remove', function(e) {
            controller.manageProjects.confirmRemoveProject(this);
        });
        
        $(window).on('click', '#mpProjectsList .edit', function(e) {
            controller.manageProjects.setEditableView(this);
        });
        
        $(window).on('click', '#mpProjectsList .load', function(e) {
            controller.manageProjects.loadProject(this);
        });
        
        $(window).on('click', '#mpProjectsList .save', function(e) {
            controller.manageProjects.updateProjectDescriptors(this);
        });
    });
})();