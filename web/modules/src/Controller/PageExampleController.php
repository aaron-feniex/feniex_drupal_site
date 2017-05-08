<?php
 
/**
 * @file
 * Contains \Drupal\page_example\Controller\PageExampleController.
 */
 
namespace Drupal\page_example\Controller;

use Drupal\Core\Controller\ControllerBase;
 
use Drupal\Core\Url;
use Drupal\Core\Link;
 
/**
 * Controller routines for page example routes.
 */
class PageExampleController extends ControllerBase {
  /**
   * Constructs a page with descriptive content.
   *
   * Our router maps this method to the path 'examples/page_example'.
   */
	public function description() {
		$simple_url = Url::fromRoute('page_example_simple');
		$simple_link = Link::fromTextAndUrl(t('simple page'), $simple_url)->toString();

		$arguments_url = Url::fromRoute('page_example_description', [], ['absolute' => TRUE]);
		$arguments_link = Link::fromTextAndUrl(t('arguments page'), $arguments_url)->toString();

		$build = [
			'#markup' => t('The Page example module provides two pages, "simple" and "arguments".),