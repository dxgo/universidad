import { Request, Response } from 'express';

class IndexController {

    public index(req: Request, res: Response) {
        res.send('hello');
    }

}

export const indexController = new IndexController; 