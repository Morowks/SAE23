<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class FolioController extends AbstractController
{
    /**
     * @Route("/", name="folio")
     */
    public function index(): Response
    {
        return $this->render('folio/index.html.twig', [
            'controller_name' => 'FolioController',
        ]);
    }

    /**
    * @Route("/portefolio", name="portefolio")
    */
    public function portefolio(): Response
    {
        return $this->render('folio/portefolio.html.twig', [
        ]);
    }


    /**
     * @Route("/cv", name="cv")
     */
    public function cv (): Response
    {
        return $this->render('folio/cv.html.twig',[]);
    }
    
    /**
     * @Route("/contact", name="contact")
     */
    public function contact (): Response
    {
        return $this->render('folio/contact.html.twig',[]);
    }

   /**
     * @Route("/loisirs", name="loisirs")
     */
    public function loisirs (): Response
    {
        return $this->render('folio/loisirs.html.twig',[]);
    }

    /**
      * @Route("/hiddenpage", name="hiddenpage")
     */
     public function hiddenpage (): Response
    {
       return $this->render('folio/hiddenpage.html.twig',[]);
    }


}
